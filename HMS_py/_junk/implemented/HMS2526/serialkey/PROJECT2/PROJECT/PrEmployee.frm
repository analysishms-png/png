VERSION 5.00
Begin VB.Form PrEmployee
  Caption = "Employee Master"
  BackColor = &HFFC0C0&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  Icon = "PrEmployee.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
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
  Begin TextBox Text1
    Index = 51
    ForeColor = &HFF0000&
    Left = 1680
    Top = 6720
    Width = 3540
    Height = 285
    TabIndex = 20
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
  Begin TextBox Text1
    Index = 50
    ForeColor = &HFF0000&
    Left = 1680
    Top = 6405
    Width = 3540
    Height = 285
    TabIndex = 19
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
  Begin DataGrid DGDepartment
    Left = 11940
    Top = 5925
    Width = 4185
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 128
  End
  Begin TextBox Text1
    Index = 49
    ForeColor = &HFF0000&
    Left = 1680
    Top = 1995
    Width = 3540
    Height = 285
    TabIndex = 3
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
  Begin CommandButton CmdImgDelete
    Caption = "Delete"
    Left = 11595
    Top = 6660
    Width = 765
    Height = 255
    Visible = 0   'False
    TabIndex = 126
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame Frame_DETAIL
    Caption = "Salary Details"
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 5475
    Top = 1365
    Width = 9570
    Height = 3465
    TabIndex = 90
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Text1
      Index = 45
      ForeColor = &HFF0000&
      Left = 6000
      Top = 2355
      Width = 990
      Height = 285
      TabIndex = 45
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
    Begin TextBox Text1
      Index = 44
      ForeColor = &HFF0000&
      Left = 3750
      Top = 2040
      Width = 990
      Height = 285
      TabIndex = 37
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
    Begin TextBox Text1
      Index = 35
      ForeColor = &HFF0000&
      Left = 1320
      Top = 2985
      Width = 990
      Height = 285
      TabIndex = 31
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
    Begin TextBox Text1
      Index = 33
      Left = 10440
      Top = 1035
      Width = 990
      Height = 270
      Visible = 0   'False
      TabIndex = 92
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin TextBox Text1
      Index = 32
      Left = 10440
      Top = 1320
      Width = 990
      Height = 270
      Visible = 0   'False
      TabIndex = 91
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin TextBox Text1
      Index = 31
      ForeColor = &HFF0000&
      Left = 1320
      Top = 2670
      Width = 990
      Height = 285
      TabIndex = 30
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
    Begin TextBox Text1
      Index = 7
      ForeColor = &HFF0000&
      Left = 6000
      Top = 2040
      Width = 990
      Height = 285
      TabIndex = 44
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
    Begin TextBox Text1
      Index = 8
      ForeColor = &HFF0000&
      Left = 6000
      Top = 1725
      Width = 990
      Height = 285
      TabIndex = 43
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
    Begin TextBox Text1
      Index = 9
      ForeColor = &HFF0000&
      Left = 1320
      Top = 465
      Width = 990
      Height = 285
      TabIndex = 23
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
    Begin TextBox Text1
      Index = 10
      ForeColor = &HFF0000&
      Left = 1320
      Top = 780
      Width = 990
      Height = 285
      TabIndex = 24
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
    Begin TextBox Text1
      Index = 11
      ForeColor = &HFF0000&
      Left = 1320
      Top = 1095
      Width = 990
      Height = 285
      TabIndex = 25
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
    Begin TextBox Text1
      Index = 12
      ForeColor = &HFF0000&
      Left = 3750
      Top = 1725
      Width = 990
      Height = 285
      TabIndex = 36
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
    Begin TextBox Text1
      Index = 13
      ForeColor = &HFF0000&
      Left = 1320
      Top = 1725
      Width = 990
      Height = 285
      TabIndex = 27
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
    Begin TextBox Text1
      Index = 14
      ForeColor = &HFF0000&
      Left = 3750
      Top = 1410
      Width = 990
      Height = 285
      TabIndex = 35
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
    Begin TextBox Text1
      Index = 15
      ForeColor = &HFF0000&
      Left = 1320
      Top = 1410
      Width = 990
      Height = 285
      TabIndex = 26
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
    Begin TextBox Text1
      Index = 16
      ForeColor = &HFF0000&
      Left = 1320
      Top = 2355
      Width = 990
      Height = 285
      TabIndex = 29
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
    Begin TextBox Text1
      Index = 17
      ForeColor = &HFF0000&
      Left = 1320
      Top = 2040
      Width = 990
      Height = 285
      TabIndex = 28
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
    Begin TextBox Text1
      Index = 20
      ForeColor = &HFF0000&
      Left = 3750
      Top = 465
      Width = 990
      Height = 285
      TabIndex = 32
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
    Begin TextBox Text1
      Index = 21
      ForeColor = &HFF0000&
      Left = 3750
      Top = 780
      Width = 990
      Height = 285
      TabIndex = 33
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
    Begin TextBox Text1
      Index = 22
      ForeColor = &HFF0000&
      Left = 3750
      Top = 1095
      Width = 990
      Height = 285
      TabIndex = 34
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
    Begin TextBox Text1
      Index = 23
      Left = 8190
      Top = 780
      Width = 990
      Height = 270
      TabIndex = 47
      BorderStyle = 0 'None
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
    Begin TextBox Text1
      Index = 24
      ForeColor = &HFF0000&
      Left = 8190
      Top = 465
      Width = 990
      Height = 285
      TabIndex = 46
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
    Begin TextBox Text1
      Index = 25
      ForeColor = &HFF0000&
      Left = 8190
      Top = 1080
      Width = 990
      Height = 285
      TabIndex = 48
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
    Begin TextBox Text1
      Index = 26
      ForeColor = &HFF0000&
      Left = 8190
      Top = 1395
      Width = 990
      Height = 285
      TabIndex = 49
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
    Begin TextBox Text1
      Index = 27
      ForeColor = &HFF0000&
      Left = 8190
      Top = 1710
      Width = 990
      Height = 285
      TabIndex = 50
      BorderStyle = 0 'None
      MaxLength = 10
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
      Appearance = 0 'Flat
    End
    Begin TextBox Text1
      Index = 28
      ForeColor = &HFF0000&
      Left = 8190
      Top = 2025
      Width = 990
      Height = 285
      TabIndex = 51
      BorderStyle = 0 'None
      MaxLength = 10
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
      Appearance = 0 'Flat
    End
    Begin TextBox Text1
      Index = 18
      ForeColor = &HFF0000&
      Left = 6000
      Top = 1410
      Width = 990
      Height = 285
      TabIndex = 42
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
    Begin TextBox Text1
      Index = 19
      ForeColor = &HFF0000&
      Left = 6000
      Top = 1095
      Width = 990
      Height = 285
      TabIndex = 41
      BorderStyle = 0 'None
      MaxLength = 6
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
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "P.F.(Y/N)"
      BackColor = &HC0C0C0&
      ForeColor = &HC00000&
      Left = 5055
      Top = 465
      Width = 1140
      Height = 240
      TabIndex = 39
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
    Begin TextBox Text1
      Index = 46
      ForeColor = &HFF0000&
      Left = 3750
      Top = 2355
      Width = 990
      Height = 285
      TabIndex = 38
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
    Begin CheckBox Check2
      Caption = "ESI (Y/N)"
      BackColor = &HC0C0C0&
      ForeColor = &HC00000&
      Left = 5055
      Top = 780
      Width = 1140
      Height = 240
      TabIndex = 40
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
    Begin Label Label1
      Caption = "OT Rate"
      Index = 47
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 5205
      Top = 2355
      Width = 765
      Height = 240
      TabIndex = 123
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Incr Month"
      Index = 45
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 285
      Top = 3000
      Width = 1005
      Height = 240
      TabIndex = 122
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Oth.Dedut."
      Index = 20
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2715
      Top = 1440
      Width = 1005
      Height = 240
      TabIndex = 121
      Alignment = 1 'Right Justify
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
      Caption = "Conveyance"
      Index = 21
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 120
      Top = 1455
      Width = 1170
      Height = 240
      TabIndex = 120
      Alignment = 1 'Right Justify
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
      Caption = "VL Leave"
      Index = 43
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 9555
      Top = 1380
      Width = 825
      Height = 195
      Visible = 0   'False
      TabIndex = 119
      Alignment = 1 'Right Justify
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "DL Leave"
      Index = 42
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 9540
      Top = 1095
      Width = 840
      Height = 195
      Visible = 0   'False
      TabIndex = 118
      Alignment = 1 'Right Justify
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Off day Allow"
      Index = 41
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2430
      Top = 2085
      Width = 1275
      Height = 240
      TabIndex = 117
      Alignment = 1 'Right Justify
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
      Caption = "Increment"
      Index = 38
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 330
      Top = 2700
      Width = 960
      Height = 240
      TabIndex = 116
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Op.P.F.Bal."
      Index = 40
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 4890
      Top = 1095
      Width = 1080
      Height = 240
      TabIndex = 115
      Alignment = 1 'Right Justify
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
      Caption = "Curr.P.F.Bal."
      Index = 39
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 4755
      Top = 1410
      Width = 1215
      Height = 240
      TabIndex = 114
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Curr.CL"
      Index = 34
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 7410
      Top = 2040
      Width = 720
      Height = 240
      TabIndex = 113
      Alignment = 1 'Right Justify
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
      Caption = "Curr.EL"
      Index = 33
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 7425
      Top = 1725
      Width = 705
      Height = 240
      TabIndex = 112
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Op.CL"
      Index = 32
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 7545
      Top = 1410
      Width = 585
      Height = 240
      TabIndex = 111
      Alignment = 1 'Right Justify
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
      Caption = "Op.EL"
      Index = 31
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 7560
      Top = 1095
      Width = 570
      Height = 240
      TabIndex = 110
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Tot.El.Allow."
      Index = 30
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 6930
      Top = 465
      Width = 1200
      Height = 240
      TabIndex = 109
      Alignment = 1 'Right Justify
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
      Caption = "Tot.Cl.Allow."
      Index = 29
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 6915
      Top = 780
      Width = 1215
      Height = 240
      TabIndex = 108
      Alignment = 1 'Right Justify
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
      Caption = "OP Advance"
      Index = 28
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2550
      Top = 1110
      Width = 1170
      Height = 240
      TabIndex = 107
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Op Loan Inst"
      Index = 27
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2520
      Top = 825
      Width = 1200
      Height = 240
      TabIndex = 106
      Alignment = 1 'Right Justify
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
      Caption = "Op.Loan"
      Index = 26
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2910
      Top = 510
      Width = 810
      Height = 240
      TabIndex = 105
      Alignment = 1 'Right Justify
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
      Caption = "L.T.A."
      Index = 23
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 735
      Top = 2085
      Width = 555
      Height = 240
      TabIndex = 104
      Alignment = 1 'Right Justify
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
      Caption = "Medical"
      Index = 22
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 540
      Top = 2400
      Width = 750
      Height = 240
      TabIndex = 103
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Oth.Allow."
      Index = 19
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 300
      Top = 1800
      Width = 990
      Height = 240
      TabIndex = 102
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "TDS Amt"
      Index = 18
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2880
      Top = 1770
      Width = 825
      Height = 240
      TabIndex = 101
      Alignment = 1 'Right Justify
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
      Caption = "H.R.A."
      Index = 17
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 705
      Top = 1140
      Width = 585
      Height = 240
      TabIndex = 100
      Alignment = 1 'Right Justify
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
      Caption = "D.A."
      Index = 16
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 900
      Top = 825
      Width = 390
      Height = 240
      TabIndex = 99
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
      Caption = "Basic"
      Index = 15
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 780
      Top = 510
      Width = 510
      Height = 240
      TabIndex = 98
      Alignment = 1 'Right Justify
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
      Caption = "P.F.Code"
      Index = 14
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 5100
      Top = 1725
      Width = 870
      Height = 240
      TabIndex = 97
      Alignment = 1 'Right Justify
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
      Caption = "ESI Code"
      Index = 13
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 5100
      Top = 2040
      Width = 870
      Height = 240
      TabIndex = 96
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      DataSource = "Data1(0)"
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
    Begin Line Line2
      Index = 0
      X1 = 435
      Y1 = 390
      X2 = 4890
      Y2 = 390
    End
    Begin Label Label1
      Caption = "Earnings"
      Index = 36
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 1350
      Top = 120
      Width = 945
      Height = 270
      TabIndex = 95
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Deductions"
      Index = 37
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 3495
      Top = 135
      Width = 1215
      Height = 270
      TabIndex = 94
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Off Day"
      Index = 46
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2985
      Top = 2400
      Width = 690
      Height = 240
      TabIndex = 93
      Alignment = 1 'Right Justify
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
  Begin DataGrid DBGrid1
    Left = 5370
    Top = 1230
    Width = 10425
    Height = 4530
    Visible = 0   'False
    TabIndex = 52
  End
  Begin DataGrid DGAcName
    Left = 14745
    Top = 6555
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 70
  End
  Begin DataGrid DGLoan
    Left = 15300
    Top = 5610
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 74
  End
  Begin Frame FrmList
    Left = 16740
    Top = 2910
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 75
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
      Left = 105
      Top = 75
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 76
    End
  End
  Begin DataGrid DGCategory
    Left = 14910
    Top = 4740
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 72
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10680
    Height = 450
    TabIndex = 86
  End
  Begin TextBox Text1
    Index = 48
    ForeColor = &HFF0000&
    Left = 3870
    Top = 7035
    Width = 495
    Height = 285
    TabIndex = 22
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
  Begin Frame Frame1
    Caption = "Remove Detail Of Employee:"
    Left = 405
    Top = 7875
    Width = 2955
    Height = 1185
    Visible = 0   'False
    TabIndex = 82
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdRemoveEmpDetail
      Caption = "Remove"
      Left = 435
      Top = 420
      Width = 2130
      Height = 525
      TabIndex = 83
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
  End
  Begin PictureBox Picture5
    Picture = "PrEmployee.frx":1082
    Left = 19905
    Top = 1920
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 81
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture4
    Picture = "PrEmployee.frx":13D0
    Left = 19905
    Top = 1605
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 80
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture2
    Picture = "PrEmployee.frx":171E
    Left = 19905
    Top = 1305
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 79
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "PrEmployee.frx":1A6C
    Left = 19905
    Top = 1020
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 78
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin MSFlexGrid FGPoint
    Left = 18720
    Top = 2895
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 77
  End
  Begin DataGrid DGDesignation
    Left = 15300
    Top = 3840
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 69
  End
  Begin TextBox Text1
    Index = 47
    ForeColor = &HFF0000&
    Left = 1680
    Top = 5145
    Width = 3540
    Height = 285
    TabIndex = 14
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
    Index = 43
    ForeColor = &HFF0000&
    Left = 1680
    Top = 3570
    Width = 3540
    Height = 285
    TabIndex = 8
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
    Index = 42
    ForeColor = &HFF0000&
    Left = 3975
    Top = 5460
    Width = 1245
    Height = 285
    TabIndex = 16
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
  End
  Begin TextBox Text1
    Index = 41
    ForeColor = &HFF0000&
    Left = 1680
    Top = 5460
    Width = 1275
    Height = 285
    TabIndex = 15
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
  End
  Begin TextBox Text1
    Index = 40
    ForeColor = &HFF0000&
    Left = 3960
    Top = 4515
    Width = 1260
    Height = 285
    TabIndex = 12
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
  End
  Begin TextBox Text1
    Index = 39
    ForeColor = &HFF0000&
    Left = 1680
    Top = 7035
    Width = 1365
    Height = 285
    TabIndex = 21
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
  End
  Begin TextBox Text1
    Index = 38
    ForeColor = &HFF0000&
    Left = 1680
    Top = 4830
    Width = 3540
    Height = 285
    TabIndex = 13
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
    Index = 37
    ForeColor = &HFF0000&
    Left = 1680
    Top = 2310
    Width = 3540
    Height = 285
    TabIndex = 4
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
    Index = 36
    ForeColor = &HFF0000&
    Left = 1680
    Top = 4515
    Width = 1275
    Height = 285
    TabIndex = 11
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
  End
  Begin TextBox Text1
    Index = 34
    ForeColor = &HFF0000&
    Left = 1680
    Top = 5775
    Width = 3540
    Height = 285
    TabIndex = 17
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
  Begin TextBox Text1
    Index = 30
    ForeColor = &HFF0000&
    Left = 1680
    Top = 3255
    Width = 3540
    Height = 285
    TabIndex = 7
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
  Begin TextBox Text1
    Index = 29
    ForeColor = &HFF0000&
    Left = 1680
    Top = 6090
    Width = 3540
    Height = 285
    TabIndex = 18
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
  Begin TextBox Text1
    Index = 5
    ForeColor = &HFF0000&
    Left = 1680
    Top = 4200
    Width = 3540
    Height = 285
    TabIndex = 10
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
  Begin TextBox Text1
    Index = 6
    ForeColor = &HFF0000&
    Left = 1680
    Top = 3885
    Width = 3540
    Height = 285
    TabIndex = 9
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
    Index = 1
    ForeColor = &HFF0000&
    Left = 1680
    Top = 1365
    Width = 3540
    Height = 285
    TabIndex = 1
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
  Begin TextBox Text1
    Index = 0
    Left = 525
    Top = 735
    Width = 1005
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin TextBox Text1
    Index = 2
    ForeColor = &HFF0000&
    Left = 1680
    Top = 1680
    Width = 3540
    Height = 285
    TabIndex = 2
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
  Begin TextBox Text1
    Index = 3
    ForeColor = &HFF0000&
    Left = 1680
    Top = 2625
    Width = 3540
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
  Begin TextBox Text1
    Index = 4
    ForeColor = &HFF0000&
    Left = 1680
    Top = 2940
    Width = 3540
    Height = 285
    TabIndex = 6
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
  Begin CommonDialog CDlg
  End
  Begin Label Label1
    Caption = "Id Proof No."
    Index = 53
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 6765
    Width = 1125
    Height = 240
    TabIndex = 130
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
    Caption = "Id Proof"
    Index = 52
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 6450
    Width = 750
    Height = 240
    TabIndex = 129
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
    Caption = "Department"
    Index = 51
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 1995
    Width = 1110
    Height = 240
    TabIndex = 127
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
  Begin Image EmployeeImage
    Left = 5865
    Top = 5880
    Width = 1860
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Employee"
  End
  Begin Image IdProofImage
    Left = 7740
    Top = 5880
    Width = 3450
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Id Proof"
  End
  Begin Label LblEmpImg
    Caption = "Employee Image"
    ForeColor = &HFF0000&
    Left = 6090
    Top = 7770
    Width = 1425
    Height = 240
    TabIndex = 125
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblEmpIdProofImg
    Caption = "Id Proof Image"
    ForeColor = &HFF0000&
    Left = 8880
    Top = 7770
    Width = 1275
    Height = 240
    TabIndex = 124
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 89
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5670
    Top = 8520
    Width = 2790
    Height = 285
    TabIndex = 88
    Alignment = 2 'Center
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
    Left = 3615
    Top = 8550
    Width = 2880
    Height = 255
    TabIndex = 87
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 50
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 4395
    Top = 7080
    Width = 825
    Height = 225
    TabIndex = 85
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Active"
    Index = 49
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 3210
    Top = 7080
    Width = 585
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Loan A/C Name"
    Index = 48
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 5160
    Width = 1485
    Height = 285
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Category"
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 3570
    Width = 855
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Bank A/C No."
    Index = 44
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 5820
    Width = 1245
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Mobile No."
    Index = 25
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 3270
    Width = 1020
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "PAN No."
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 6135
    Width = 780
    Height = 240
    TabIndex = 66
    Alignment = 1 'Right Justify
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
    Caption = "Resign.Dt"
    Index = 24
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 3000
    Top = 5475
    Width = 900
    Height = 240
    TabIndex = 65
    Alignment = 1 'Right Justify
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
    Caption = "Designation"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 2325
    Width = 1125
    Height = 240
    TabIndex = 64
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
    Caption = "Marital Status"
    Index = 9
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 7080
    Width = 1305
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Spouse Name"
    Index = 10
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 4200
    Width = 1320
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Qualification"
    Index = 11
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 3885
    Width = 1215
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Joining Date"
    Index = 12
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 5490
    Width = 1200
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Salary A/C Name"
    Index = 35
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 4815
    Width = 1620
    Height = 285
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Code"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 60
    Top = 795
    Width = 450
    Height = 195
    Visible = 0   'False
    TabIndex = 58
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Employee Name"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 1380
    Width = 1560
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Sex"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 4485
    Width = 375
    Height = 255
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Father's Name"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 1695
    Width = 1365
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Address"
    Index = 6
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 30
    Top = 2670
    Width = 750
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Birth Dt."
    Index = 7
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 3045
    Top = 4515
    Width = 765
    Height = 240
    TabIndex = 53
    Alignment = 1 'Right Justify
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

Attribute VB_Name = "PrEmployee"

Private global_52 As Variant
Private global_78 As Integer
Private global_112 As Recordset15
Private global_80 As Double
Private global_88 As Double

Private Sub CmdImgDelete_Click() 'EFE9E4
  'Data Table: 521E40
  Dim var_88 As CommandButton
  Dim var_98 As Variant
  Dim var_DC As CommandButton
  Dim var_E4 As CommandButton
  Dim var_A8 As String
  loc_EFE91A: Set var_88 = Me.CmdImgDelete
  loc_EFE920: var_88.Visible = False
  loc_EFE946: Me.Global.LoadPicture var_98, var_A8, var_B8, var_C8, var_D8
  loc_EFE95A: Set var_DC = Me.CmdImgDelete
  loc_EFE960: var_E0 = var_DC.Tag
  loc_EFE972: Call 0.Method_arg_218 (var_E4, CVar(var_E0))
  loc_EFE984: ).Picture = CVar(var_88)
  loc_EFE9A5: Set var_88 = vbNullString(var_E0)
  loc_EFE9AB: var_88 = ).CommandButton.Tag
  loc_EFE9BD: Call 0.Method_arg_218 (var_DC)
  loc_EFE9CF: ).Tag = CVar(var_E0)
  loc_EFE9E1: Exit Sub
End Sub

Private Sub IdProofImage_DblClick() '105E680
  'Data Table: 521E40
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105E438: On Error Goto loc_105E621
  loc_105E43F: Set var_88 = Me.TopCtrl1
  loc_105E445: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105E459: Set var_A0 = Me.TopCtrl1
  loc_105E45F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105E485: If ( And (CStr() <> "Edit")) Then
  loc_105E488:   Exit Sub
  loc_105E489: End If
  loc_105E499: Me.CDlg.Filter = "*.*"
  loc_105E4B1: Me.CDlg.Action = 1
  loc_105E4C3: Me.CDlg.FileName = 
  loc_105E4CB: var_9C = CStr()
  loc_105E4D8: Me.IdProofImage.Tag = var_9C
  loc_105E4F4: Me.CDlg.FileName = 
  loc_105E4FC: var_B0 = CVar(CStr()) 'String
  loc_105E502: var_E4 = Trim(var_B0)
  loc_105E50B: Set var_A0 = Me.CDlg
  loc_105E511: var_A0.FileName = 
  loc_105E52F: var_F4 = Right(var_E4, 3)
  loc_105E56A: var_D4 = "AVI"
  loc_105E598: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105E5A9:   var_C4 = "Invalid Format"
  loc_105E5B4:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105E5C7: Else
  loc_105E5DE:   Set var_88 = Me.CDlg
  loc_105E5E4:   var_88.FileName = var_C4
  loc_105E5EC:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105E5F6:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105E60B:   Me.IdProofImage.Picture = var_A0
  loc_105E620: End If
  loc_105E620: Exit Sub
  loc_105E621: ' Referenced from: 105E438
  loc_105E629: Set var_88 = Err()
  loc_105E62F: Call 0.Method_arg_1C (var_1B0)
  loc_105E640: If (var_1B0 <> 0) Then
  loc_105E659:   Set var_88 = Err()
  loc_105E65F:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105E66A:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105E67D: End If
  loc_105E67D: Exit Sub
End Sub

Private Sub IdProofImage_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F1A5D0
  'Data Table: 521E40
  Dim var_88 As Variant
  loc_F1A4DC: Set var_88 = Me.TopCtrl1
  loc_F1A4E2: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F1A4FB: If (CStr() = "Browse") Then
  loc_F1A4FE:   Exit Sub
  loc_F1A4FF: End If
  loc_F1A51F: If (Me.IdProofImage.Tag = vbNullString) Then
  loc_F1A522:   Exit Sub
  loc_F1A523: End If
  loc_F1A529: If (Button = 2) Then
  loc_F1A54B:   Me.CmdImgDelete.Tag = Me.IdProofImage.Name
  loc_F1A57E:   Me.CmdImgDelete.Left = (Me.IdProofImage.Left + X)
  loc_F1A5AE:   Me.CmdImgDelete.Top = (Me.IdProofImage.Top + Y)
  loc_F1A5C6:   Me.CmdImgDelete.Visible = True
  loc_F1A5CE: End If
  loc_F1A5CE: Exit Sub
End Sub

Private Sub Text1_GotFocus(Index As Integer) '14EB098
  'Data Table: 521E40
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim var_B4 As String
  Dim Me As Variant
  Dim var_90 As Fields15
  loc_14EA292: Set var_88 = Me.Text1
  loc_14EA298: Call 0.Method_Text1_GotFocus0 (Index)
  loc_14EA2A6: Proc_6_74_E23240(var_8C)
  loc_14EA2B2: Call Proc_315_53_F95448(var_8C)
  loc_14EA2BA: var_92 = Index
  loc_14EA2C5: If Not (var_92 = CInt(&H1A)) Then
  loc_14EA2D0:   If Not (var_92 = CInt(9)) Then
  loc_14EA2DB:     If Not (var_92 = CInt(&HA)) Then
  loc_14EA2E6:       If Not (var_92 = CInt(&HB)) Then
  loc_14EA2F1:         If Not (var_92 = CInt(&HF)) Then
  loc_14EA2FC:           If Not (var_92 = CInt(&HD)) Then
  loc_14EA307:             If Not (var_92 = CInt(&H11)) Then
  loc_14EA312:               If Not (var_92 = CInt(&H10)) Then
  loc_14EA31D:                 If Not (var_92 = CInt(&H1F)) Then
  loc_14EA328:                   If Not (var_92 = CInt(&H23)) Then
  loc_14EA333:                     If Not (var_92 = CInt(&H14)) Then
  loc_14EA33E:                       If Not (var_92 = CInt(&H15)) Then
  loc_14EA349:                         If Not (var_92 = CInt(&H16)) Then
  loc_14EA354:                           If Not (var_92 = CInt(&HC)) Then
  loc_14EA35F:                             If Not (var_92 = CInt(&HE)) Then
  loc_14EA36A:                               If Not (var_92 = CInt(&H2C)) Then
  loc_14EA375:                                 If Not (var_92 = CInt(&H2E)) Then
  loc_14EA380:                                   If Not (var_92 = CInt(&H13)) Then
  loc_14EA38B:                                     If Not (var_92 = CInt(&H12)) Then
  loc_14EA396:                                       If Not (var_92 = CInt(8)) Then
  loc_14EA3A1:                                         If Not (var_92 = CInt(7)) Then
  loc_14EA3AC:                                           If Not (var_92 = CInt(&H2D)) Then
  loc_14EA3B7:                                             If Not (var_92 = CInt(&H18)) Then
  loc_14EA3C2:                                               If Not (var_92 = CInt(&H17)) Then
  loc_14EA3CD:                                                 If Not (var_92 = CInt(&H21)) Then
  loc_14EA3D8:                                                   If Not (var_92 = CInt(&H20)) Then
  loc_14EA3E3:                                                     If Not (var_92 = CInt(&H19)) Then
  loc_14EA3EE:                                                       If Not (var_92 = CInt(&H1A)) Then
  loc_14EA3F9:                                                         If Not (var_92 = CInt(&H1B)) Then
  loc_14EA404:                                                           If (var_92 = CInt(&H1C)) Then
  loc_14EA407:                                                           End If
  loc_14EA407:                                                         End If
  loc_14EA407:                                                       End If
  loc_14EA407:                                                     End If
  loc_14EA407:                                                   End If
  loc_14EA407:                                                 End If
  loc_14EA407:                                               End If
  loc_14EA407:                                             End If
  loc_14EA407:                                           End If
  loc_14EA407:                                         End If
  loc_14EA407:                                       End If
  loc_14EA407:                                     End If
  loc_14EA407:                                   End If
  loc_14EA407:                                 End If
  loc_14EA407:                               End If
  loc_14EA407:                             End If
  loc_14EA407:                           End If
  loc_14EA407:                         End If
  loc_14EA407:                       End If
  loc_14EA407:                     End If
  loc_14EA407:                   End If
  loc_14EA407:                 End If
  loc_14EA407:               End If
  loc_14EA407:             End If
  loc_14EA407:           End If
  loc_14EA407:         End If
  loc_14EA407:       End If
  loc_14EA407:     End If
  loc_14EA407:   End If
  loc_14EA416:   Set var_88 = Me.Text1
  loc_14EA41C:   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14EA424:   var_8C.SelStart = 0
  loc_14EA43D:   Set var_88 = Me.Text1
  loc_14EA443:   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14EA44B:   var_98 = var_8C.Text
  loc_14EA45E:   Set var_90 = Me.Text1
  loc_14EA464:   Call 0.Method_Text1_GotFocus0 (Index, var_9C)
  loc_14EA46C:   var_9C.SelLength = Len(var_98)
  loc_14EA47F: End If
  loc_14EA482: var_9E = Index
  loc_14EA48D: If (var_9E = CInt(&H24)) Then
  loc_14EA49D:   ReDim var_A4(0 To 1)
  loc_14EA4B4:   var_A4(0) = "Male"
  loc_14EA4C3:   var_A4(1) = "Female"
  loc_14EA51A:   Set global_68 = Proc_6_66_F0048C(Me.ListView, Me.Text1, Index, Array(var_A4))
  loc_14EA52E: Else
  loc_14EA536:   If (var_9E = CInt(&H27)) Then
  loc_14EA546:     ReDim var_A4(0 To 1)
  loc_14EA55D:     var_A4(0) = "Married"
  loc_14EA56C:     var_A4(1) = "Single"
  loc_14EA5C3:     Set global_68 = Proc_6_66_F0048C(Me.ListView, Me.Text1, Index, Array(var_A4), 2)
  loc_14EA5D7:   Else
  loc_14EA5DF:     If (var_9E = CInt(&H2C)) Then
  loc_14EA5EF:       ReDim var_A4(0 To 1)
  loc_14EA606:       var_A4(0) = "Yes"
  loc_14EA615:       var_A4(1) = "No"
  loc_14EA66C:       Set global_68 = Proc_6_66_F0048C(Me.ListView, Me.Text1, Index, Array(var_A4), 2, Array(var_A4))
  loc_14EA680:     Else
  loc_14EA688:       If (var_9E = CInt(&H2E)) Then
  loc_14EA698:         ReDim var_A4(0 To 6)
  loc_14EA6AF:         var_A4(0) = "Sunday"
  loc_14EA6BE:         var_A4(1) = "Monday"
  loc_14EA6CD:         var_A4(2) = "Tuesday"
  loc_14EA6DC:         var_A4(3) = "Wednesday"
  loc_14EA6EB:         var_A4(4) = "Thursday"
  loc_14EA6FA:         var_A4(5) = "Friday"
  loc_14EA709:         var_A4(6) = "Saturday"
  loc_14EA760:         Set global_68 = Proc_6_66_F0048C(Me.ListView, Me.Text1, Index, Array(var_A4), 7, Array(var_A4))
  loc_14EA774:       Else
  loc_14EA77C:         If (var_9E = CInt(&H32)) Then
  loc_14EA78C:           ReDim var_A4(0 To 5)
  loc_14EA7A3:           var_A4(0) = "DRIVING LICENCE"
  loc_14EA7B2:           var_A4(1) = "GREEN CARD"
  loc_14EA7C1:           var_A4(2) = "PASSPORT"
  loc_14EA7D0:           var_A4(3) = "UIDAI/AADHAR CARD"
  loc_14EA7DF:           var_A4(4) = "VOTER ID"
  loc_14EA7EE:           var_A4(5) = "NA"
  loc_14EA805:           global_52 = Array(var_A4)
  loc_14EA845:           Set global_68 = Proc_6_66_F0048C(Me.ListView, Me.Text1, Index, global_52, 6, global_52)
  loc_14EA859:         Else
  loc_14EA861:           If (var_9E = CInt(&H31)) Then
  loc_14EA87B:             If (Me.RecordCount > 0) Then
  loc_14EA889:               Set var_8C = Me.FGPoint
  loc_14EA8A1:               Proc_6_137_1192FDC(Me.DGDepartment, global_120, Index, var_8C, global_52)
  loc_14EA8AF:             End If
  loc_14EA8FD:             Set var_88 = Me.Text1
  loc_14EA903:             Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_14EA90B:             2 = var_8C.Text
  loc_14EA923:             If (global_52 Or (var_98 = vbNullString)) Then
  loc_14EA926:               Exit Sub
  loc_14EA927:             End If
  loc_14EA934:             Set var_88 = Me.Text1
  loc_14EA93A:             Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14EA942:             var_9E = var_8C.Text
  loc_14EA954:             var_B4 = "Name"
  loc_14EA98F:             If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_14EA998:               Me.MoveFirst
  loc_14EA9BB:               Set var_88 = Me.Text1
  loc_14EA9C1:               Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14EA9C9:               0 = var_8C.Text
  loc_14EA9E2:               Me.Find 1 & var_98 & "'", var_B4, var_92
  loc_14EA9F7:             End If
  loc_14EA9FA:           Else
  loc_14EAA02:             If (var_9E = CInt(&H25)) Then
  loc_14EAA1C:               If (Me.RecordCount > 0) Then
  loc_14EAA2A:                 Set var_8C = Me.FGPoint
  loc_14EAA42:                 Proc_6_137_1192FDC(Me.DGDesignation, global_124)
  loc_14EAA50:               End If
  loc_14EAA9E:               Set var_88 = Me.Text1
  loc_14EAAA4:               Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14EAAAC:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14EAAC4:               If (Index Or (var_98 = vbNullString)) Then
  loc_14EAAC7:                 Exit Sub
  loc_14EAAC8:               End If
  loc_14EAAD5:               Set var_88 = Me.Text1
  loc_14EAADB:               Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14EAAE3:               var_98 = var_8C.Text
  loc_14EAAF5:               var_B4 = "Name"
  loc_14EAB30:               If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_14EAB39:                 Me.MoveFirst
  loc_14EAB5C:                 Set var_88 = Me.Text1
  loc_14EAB62:                 Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14EAB6A:                 0 = var_8C.Text
  loc_14EAB83:                 Me.Find 1 & var_98 & "'", var_B4, var_8C
  loc_14EAB98:               End If
  loc_14EAB9B:             Else
  loc_14EABA3:               If (var_9E = CInt(&H26)) Then
  loc_14EABBD:                 If (Me.RecordCount > 0) Then
  loc_14EABCB:                   Set var_8C = Me.FGPoint
  loc_14EABE3:                   Proc_6_137_1192FDC(Me.DGAcName, global_128)
  loc_14EABF1:                 End If
  loc_14EAC3F:                 Set var_88 = Me.Text1
  loc_14EAC45:                 Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14EAC4D:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14EAC65:                 If (Index Or (var_98 = vbNullString)) Then
  loc_14EAC68:                   Exit Sub
  loc_14EAC69:                 End If
  loc_14EAC76:                 Set var_88 = Me.Text1
  loc_14EAC7C:                 Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14EAC84:                 var_98 = var_8C.Text
  loc_14EAC96:                 var_B4 = "Name"
  loc_14EACD1:                 If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_14EACDA:                   Me.MoveFirst
  loc_14EACFD:                   Set var_88 = Me.Text1
  loc_14EAD03:                   Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14EAD0B:                   0 = var_8C.Text
  loc_14EAD24:                   Me.Find 1 & var_98 & "'", var_B4, var_8C
  loc_14EAD39:                 End If
  loc_14EAD3C:               Else
  loc_14EAD44:                 If (var_9E = CInt(&H2F)) Then
  loc_14EAD61:                   If (Me.Recordset15.RecordCount > 0) Then
  loc_14EAD6F:                     Set var_8C = Me.FGPoint
  loc_14EAD8B:                     Proc_6_137_1192FDC(Me.DGLoan, global_116)
  loc_14EAD99:                   End If
  loc_14EADF0:                   Set var_88 = Me.Text1
  loc_14EADF6:                   Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14EADFE:                   ((global_116.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_14EAE16:                   If (Index Or (var_98 = vbNullString)) Then
  loc_14EAE19:                     Exit Sub
  loc_14EAE1A:                   End If
  loc_14EAE27:                   Set var_88 = Me.Text1
  loc_14EAE2D:                   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14EAE35:                   var_98 = var_8C.Text
  loc_14EAE47:                   var_B4 = "Name"
  loc_14EAE85:                   If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_14EAE91:                     Me.Recordset15.MoveFirst
  loc_14EAEB4:                     Set var_88 = Me.Text1
  loc_14EAEBA:                     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14EAEC2:                     0 = var_8C.Text
  loc_14EAEDE:                     Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_8C
  loc_14EAEF3:                   End If
  loc_14EAEF6:                 Else
  loc_14EAEFE:                   If (var_9E = CInt(&H2B)) Then
  loc_14EAF18:                     If (Me.RecordCount > 0) Then
  loc_14EAF26:                       Set var_8C = Me.FGPoint
  loc_14EAF3E:                       Proc_6_137_1192FDC(Me.DGCategory, global_132)
  loc_14EAF4C:                     End If
  loc_14EAF9A:                     Set var_88 = Me.Text1
  loc_14EAFA0:                     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98)
  loc_14EAFA8:                     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14EAFC0:                     If (Index Or (var_98 = vbNullString)) Then
  loc_14EAFC3:                       Exit Sub
  loc_14EAFC4:                     End If
  loc_14EAFD1:                     Set var_88 = Me.Text1
  loc_14EAFD7:                     Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_14EAFDF:                     var_98 = var_8C.Text
  loc_14EAFF1:                     var_B4 = "Name"
  loc_14EB02C:                     If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_14EB035:                       Me.MoveFirst
  loc_14EB058:                       Set var_88 = Me.Text1
  loc_14EB05E:                       Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_14EB066:                       0 = var_8C.Text
  loc_14EB07F:                       Me.Find 1 & var_98 & "'", var_B4, var_8C
  loc_14EB094:                     End If
  loc_14EB094:                   End If
  loc_14EB094:                 End If
  loc_14EB094:               End If
  loc_14EB094:             End If
  loc_14EB094:           End If
  loc_14EB094:         End If
  loc_14EB094:       End If
  loc_14EB094:     End If
  loc_14EB094:   End If
  loc_14EB094: End If
  loc_14EB094: Exit Sub
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer) '14D4BFC
  'Data Table: 521E40
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_AC As Variant
  Dim var_B8 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_94 As Variant
  Dim var_C4 As TextBox
  Dim var_A8 As DataGrid
  loc_14D3E7E: If (CLng(Shift) = &H1B) Then
  loc_14D3E81:   Call Proc_315_53_F95448()
  loc_14D3E86:   Exit Sub
  loc_14D3E87: End If
  loc_14D3E8A: var_88 = KeyCode
  loc_14D3E95: If Not (var_88 = CInt(9)) Then
  loc_14D3EA0:   If Not (var_88 = CInt(&HA)) Then
  loc_14D3EAB:     If Not (var_88 = CInt(&HB)) Then
  loc_14D3EB6:       If Not (var_88 = CInt(&HF)) Then
  loc_14D3EC1:         If Not (var_88 = CInt(&HD)) Then
  loc_14D3ECC:           If Not (var_88 = CInt(&H11)) Then
  loc_14D3ED7:             If Not (var_88 = CInt(&H10)) Then
  loc_14D3EE2:               If Not (var_88 = CInt(&H14)) Then
  loc_14D3EED:                 If Not (var_88 = CInt(&H15)) Then
  loc_14D3EF8:                   If Not (var_88 = CInt(&H16)) Then
  loc_14D3F03:                     If Not (var_88 = CInt(&HE)) Then
  loc_14D3F0E:                       If Not (var_88 = CInt(&HC)) Then
  loc_14D3F19:                         If Not (var_88 = CInt(&H12)) Then
  loc_14D3F24:                           If (var_88 = CInt(&H13)) Then
  loc_14D3F27:                           End If
  loc_14D3F27:                         End If
  loc_14D3F27:                       End If
  loc_14D3F27:                     End If
  loc_14D3F27:                   End If
  loc_14D3F27:                 End If
  loc_14D3F27:               End If
  loc_14D3F27:             End If
  loc_14D3F27:           End If
  loc_14D3F27:         End If
  loc_14D3F27:       End If
  loc_14D3F27:     End If
  loc_14D3F27:   End If
  loc_14D3F31:   Set var_8C = Me.Text1
  loc_14D3F37:   Call 0.Method_Text1_KeyDown0 (KeyCode, var_90)
  loc_14D3F52:   Proc_6_41_FA1734(var_90, Shift, 7)
  loc_14D3F61: Else
  loc_14D3F69:   If Not (var_88 = CInt(&H19)) Then
  loc_14D3F74:     If Not (var_88 = CInt(&H1A)) Then
  loc_14D3F7F:       If Not (var_88 = CInt(&H1C)) Then
  loc_14D3F8A:         If Not (var_88 = CInt(&H1B)) Then
  loc_14D3F95:           If Not (var_88 = CInt(&H17)) Then
  loc_14D3FA0:             If (var_88 = CInt(&H18)) Then
  loc_14D3FA3:             End If
  loc_14D3FA3:           End If
  loc_14D3FA3:         End If
  loc_14D3FA3:       End If
  loc_14D3FA3:     End If
  loc_14D3FAD:     Set var_8C = Me.Text1
  loc_14D3FB3:     Call 0.Method_Text1_KeyDown0 (KeyCode, var_90)
  loc_14D3FCE:     Proc_6_41_FA1734(var_90, Shift, 3)
  loc_14D3FDD:   Else
  loc_14D3FE5:     If (var_88 = CInt(&H24)) Then
  loc_14D400A:       Set var_8C = Me.Text1
  loc_14D4010:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_90, var_9C)
  loc_14D4018:       2 = var_90.Left
  loc_14D402A:       Set var_94 = Me.Text1
  loc_14D4030:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_A0, var_A4)
  loc_14D4038:       2 = var_A0.Top
  loc_14D404A:       Set var_A8 = Me.Text1
  loc_14D4050:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_AC)
  loc_14D4058:       var_B0 = var_AC.Height
  loc_14D406A:       Set var_B4 = Me.Text1
  loc_14D4070:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_B8)
  loc_14D4078:       var_BC = var_B8.Width
  loc_14D40C4:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Text1, KeyCode, Shift, arg_14)
  loc_14D40EB:     Else
  loc_14D40F3:       If (var_88 = CInt(&H32)) Then
  loc_14D4118:         Set var_8C = Me.Text1
  loc_14D411E:         Call 0.Method_Text1_KeyDown0 (KeyCode, var_90, var_9C, CInt(var_9C))
  loc_14D4126:         CInt(((var_A4 + var_B0) + CDbl(&H19))) = var_90.Left
  loc_14D4138:         Set var_94 = Me.Text1
  loc_14D413E:         Call 0.Method_Text1_KeyDown0 (KeyCode, var_A0, var_A4)
  loc_14D4146:         CInt(var_BC) = var_A0.Top
  loc_14D4158:         Set var_A8 = Me.Text1
  loc_14D415E:         Call 0.Method_Text1_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_14D4166:         1200 = var_AC.Height
  loc_14D4178:         Set var_B4 = Me.Text1
  loc_14D417E:         Call 0.Method_Text1_KeyDown0 (KeyCode, var_B8)
  loc_14D4186:         var_BC = var_B8.Width
  loc_14D41CE:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Text1, KeyCode, Shift, arg_14)
  loc_14D41F5:       Else
  loc_14D41FD:         If (var_88 = CInt(&H31)) Then
  loc_14D425A:           Proc_6_69_134A630(Me.DGDepartment, Me.Text1, CInt(&H31), global_120, Shift, 0, 1, Nothing)
  loc_14D42C9:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D42EF:             Proc_6_138_106E830(Me.DGDepartment, global_120, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14D42FD:           End If
  loc_14D4300:         Else
  loc_14D4308:           If (var_88 = CInt(&H25)) Then
  loc_14D4365:             Proc_6_69_134A630(Me.DGDesignation, Me.Text1, CInt(&H25), global_124, Shift, 0, 1, Nothing)
  loc_14D43D4:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D43FA:               Proc_6_138_106E830(Me.DGDesignation, global_124, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14D4408:             End If
  loc_14D440B:           Else
  loc_14D4413:             If (var_88 = CInt(&H26)) Then
  loc_14D4470:               Proc_6_69_134A630(Me.DGAcName, Me.Text1, CInt(&H26), global_128, Shift, 0, 1, Nothing)
  loc_14D44DF:               If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D4505:                 Proc_6_138_106E830(Me.DGAcName, global_128, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14D4513:               End If
  loc_14D4516:             Else
  loc_14D451E:               If (var_88 = CInt(&H2F)) Then
  loc_14D452C:                 Set var_AC = Me.Text1
  loc_14D453E:                 Set var_A0 = Me.FGPoint
  loc_14D457F:                 Proc_6_69_134A630(Me.DGLoan, var_AC, CInt(&H2F), global_116, Shift, 0, 1, Nothing)
  loc_14D45A1:                 var_9C = Me.FGPoint.RecordCount
  loc_14D45F1:                 If ((var_9C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D45FF:                   Set var_90 = Me.FGPoint
  loc_14D461B:                   Proc_6_138_106E830(Me.DGLoan, global_116, KeyCode, var_90, var_A0, 0)
  loc_14D4629:                 End If
  loc_14D462C:               Else
  loc_14D4634:                 If (var_88 = CInt(&H27)) Then
  loc_14D4659:                   Set var_8C = Me.Text1
  loc_14D465F:                   Call 0.Method_Text1_KeyDown0 (KeyCode, var_90, var_9C, CInt(var_9C))
  loc_14D4667:                   CInt((var_A4 + var_B0)) = var_90.Left
  loc_14D4679:                   Set var_94 = Me.Text1
  loc_14D467F:                   Call 0.Method_Text1_KeyDown0 (KeyCode, var_A0, var_A4)
  loc_14D4687:                   CInt(var_BC) = var_A0.Top
  loc_14D4699:                   Set var_A8 = Me.Text1
  loc_14D469F:                   Call 0.Method_Text1_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_14D46A7:                   1560 = var_AC.Height
  loc_14D46B9:                   Set var_B4 = Me.Text1
  loc_14D46BF:                   Call 0.Method_Text1_KeyDown0 (KeyCode, var_B8)
  loc_14D46C7:                   var_BC = var_B8.Width
  loc_14D4704:                   Set var_C4 = Me.ListView
  loc_14D4713:                   Proc_6_65_1194DE4(Me.FrmList, var_C4, Me.Text1, KeyCode, Shift, arg_14)
  loc_14D473A:                 Else
  loc_14D4742:                   If (var_88 = CInt(&H2B)) Then
  loc_14D4750:                     Set var_AC = Me.Text1
  loc_14D479F:                     Proc_6_69_134A630(Me.DGCategory, var_AC, CInt(&H2B), global_132, Shift, 0, 1, Nothing)
  loc_14D480E:                     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14D4815:                       Set var_94 = Me.DGCategory
  loc_14D4834:                       Proc_6_138_106E830(var_94, global_132, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14D4842:                     End If
  loc_14D4845:                   Else
  loc_14D484D:                     If (var_88 = CInt(&H2C)) Then
  loc_14D4885:                       Set var_90 = Me.Text1
  loc_14D488B:                       Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_94, var_A4, CInt(Me.Frame_DETAIL.Left))
  loc_14D4893:                       CInt(((var_A4 + var_B0) + CDbl(&H19))) = var_94.Left
  loc_14D48A5:                       var_B0 = Me.Frame_DETAIL.Top
  loc_14D48B8:                       Set var_A8 = Me.Text1
  loc_14D48BE:                       Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_AC, var_BC)
  loc_14D48C6:                       CInt(var_BC) = var_AC.Top
  loc_14D48D9:                       Set var_B4 = Me.Text1
  loc_14D48DF:                       Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_B8, var_DC)
  loc_14D48E7:                       600 = var_B8.Height
  loc_14D48FA:                       Set var_C0 = Me.Text1
  loc_14D4900:                       Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_C4)
  loc_14D4908:                       var_E0 = var_C4.Width
  loc_14D4960:                       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Text1, CInt(&H2C), Shift, arg_14)
  loc_14D498B:                     Else
  loc_14D4993:                       If (var_88 = CInt(&H2E)) Then
  loc_14D49B8:                         var_9C = Me.Frame_DETAIL.Left
  loc_14D49CB:                         Set var_90 = Me.Text1
  loc_14D49D1:                         Call 0.Method_Text1_KeyDown0 (CInt(&H2E), var_94, var_A4, CInt((var_9C + var_A4)))
  loc_14D49D9:                         CInt((((var_B0 + var_BC) + var_DC) + CDbl(&H19))) = var_94.Left
  loc_14D49EB:                         var_B0 = Me.Frame_DETAIL.Top
  loc_14D49FE:                         Set var_A8 = Me.Text1
  loc_14D4A04:                         Call 0.Method_Text1_KeyDown0 (CInt(&H2E), var_AC, var_BC)
  loc_14D4A0C:                         CInt(var_E0) = var_AC.Top
  loc_14D4A1F:                         Set var_B4 = Me.Text1
  loc_14D4A25:                         Call 0.Method_Text1_KeyDown0 (CInt(&H2E), var_B8, var_DC)
  loc_14D4A2D:                         1200 = var_B8.Height
  loc_14D4A40:                         Set var_C0 = Me.Text1
  loc_14D4A46:                         Call 0.Method_Text1_KeyDown0 (CInt(&H2C), var_C4)
  loc_14D4A4E:                         var_E0 = var_C4.Width
  loc_14D4AA2:                         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Text1, KeyCode, Shift, arg_14)
  loc_14D4ACA:                       End If
  loc_14D4ACA:                     End If
  loc_14D4ACA:                   End If
  loc_14D4ACA:                 End If
  loc_14D4ACA:               End If
  loc_14D4ACA:             End If
  loc_14D4ACA:           End If
  loc_14D4ACA:         End If
  loc_14D4ACA:       End If
  loc_14D4ACA:     End If
  loc_14D4ACA:   End If
  loc_14D4ACA: End If
  loc_14D4B71: If ((((((CBool(Me.DGDepartment.Visible) = 0) And (CBool(Me.DGDesignation.Visible) = 0)) And (CBool(Me.DGLoan.Visible) = 0)) And (CBool(Me.DGAcName.Visible) = 0)) And (CBool(Me.DGCategory.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_14D4B92:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1C))) Then
  loc_14D4B9B:     Call Text1_Validate(KeyCode)
  loc_14D4BA6:     If (var_86 = &HFF) Then
  loc_14D4BA9:       Exit Sub
  loc_14D4BAA:     End If
  loc_14D4BAD:     Call Proc_315_52_E7FBA4(KeyCode, var_86, CInt((var_9C + var_A4)), CInt((((var_B0 + var_BC) + var_DC) + CDbl(&H4B))))
  loc_14D4BB2:     Exit Sub
  loc_14D4BB3:   End If
  loc_14D4BC8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14D4BD1:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_E0))
  loc_14D4BD6:   End If
  loc_14D4BDE:   If (KeyCode <> CInt(1)) Then
  loc_14D4BEB:     If (CLng(Shift) = &H26) Then
  loc_14D4BF4:       Proc_6_76_E533C8(Shift, arg_14)
  loc_14D4BF9:     End If
  loc_14D4BF9:   End If
  loc_14D4BF9: End If
  loc_14D4BF9: Exit Sub
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) '12306B4
  'Data Table: 521E40
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_123018E: Proc_6_133_E7FB08(var_94)
  loc_12301A3: If (CInt(var_94) = &HD) Then
  loc_12301A8:   arg_10 = 0
  loc_12301AB: End If
  loc_12301AE: Proc_6_58_E06050(arg_10, arg_10)
  loc_12301B6: var_96 = KeyAscii
  loc_12301C1: If Not (var_96 = CInt(9)) Then
  loc_12301CC:   If Not (var_96 = CInt(&HA)) Then
  loc_12301D7:     If Not (var_96 = CInt(&HB)) Then
  loc_12301E2:       If Not (var_96 = CInt(&HF)) Then
  loc_12301ED:         If Not (var_96 = CInt(&HD)) Then
  loc_12301F8:           If Not (var_96 = CInt(&H11)) Then
  loc_1230203:             If Not (var_96 = CInt(&H10)) Then
  loc_123020E:               If Not (var_96 = CInt(&H14)) Then
  loc_1230219:                 If Not (var_96 = CInt(&H15)) Then
  loc_1230224:                   If Not (var_96 = CInt(&H16)) Then
  loc_123022F:                     If Not (var_96 = CInt(&HE)) Then
  loc_123023A:                       If Not (var_96 = CInt(&HC)) Then
  loc_1230245:                         If Not (var_96 = CInt(&H12)) Then
  loc_1230250:                           If (var_96 = CInt(&H13)) Then
  loc_1230253:                           End If
  loc_1230253:                         End If
  loc_1230253:                       End If
  loc_1230253:                     End If
  loc_1230253:                   End If
  loc_1230253:                 End If
  loc_1230253:               End If
  loc_1230253:             End If
  loc_1230253:           End If
  loc_1230253:         End If
  loc_1230253:       End If
  loc_1230253:     End If
  loc_1230253:   End If
  loc_123025D:   Set var_9C = Me.Text1
  loc_1230263:   Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_123027E:   Proc_6_42_129B55C(var_A0, arg_10, 7)
  loc_123028D: Else
  loc_1230295:   If Not (var_96 = CInt(&H19)) Then
  loc_12302A0:     If Not (var_96 = CInt(&H1A)) Then
  loc_12302AB:       If Not (var_96 = CInt(&H1C)) Then
  loc_12302B6:         If Not (var_96 = CInt(&H1B)) Then
  loc_12302C1:           If Not (var_96 = CInt(&H17)) Then
  loc_12302CC:             If (var_96 = CInt(&H18)) Then
  loc_12302CF:             End If
  loc_12302CF:           End If
  loc_12302CF:         End If
  loc_12302CF:       End If
  loc_12302CF:     End If
  loc_12302D9:     Set var_9C = Me.Text1
  loc_12302DF:     Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, 2)
  loc_12302FA:     Proc_6_42_129B55C(var_A0, arg_10, 3)
  loc_1230309:   Else
  loc_1230311:     If (var_96 = CInt(&H31)) Then
  loc_1230330:       If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_123035D:         Proc_6_89_1470B00(Me.Text1, KeyAscii, global_120, arg_10, "Name")
  loc_123038F:         Proc_6_138_106E830(Me.DGDepartment, global_120, KeyAscii, Me.FGPoint)
  loc_123039D:       End If
  loc_12303A0:     Else
  loc_12303A8:       If (var_96 = CInt(&H25)) Then
  loc_12303C7:         If (CBool(Me.DGDesignation.Visible) = &HFF) Then
  loc_12303F4:           Proc_6_89_1470B00(Me.Text1, KeyAscii, global_124, arg_10, "Name")
  loc_1230426:           Proc_6_138_106E830(Me.DGDesignation, global_124, KeyAscii, Me.FGPoint, 0)
  loc_1230434:         End If
  loc_1230437:       Else
  loc_123043F:         If (var_96 = CInt(&H26)) Then
  loc_123045E:           If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_123048B:             Proc_6_89_1470B00(Me.Text1, KeyAscii, global_128, arg_10, "Name")
  loc_12304BD:             Proc_6_138_106E830(Me.DGAcName, global_128, KeyAscii, Me.FGPoint, 0)
  loc_12304CB:           End If
  loc_12304CE:         Else
  loc_12304D6:           If (var_96 = CInt(&H2F)) Then
  loc_12304F5:             If (CBool(Me.DGLoan.Visible) = &HFF) Then
  loc_1230526:               Proc_6_89_1470B00(Me.Text1, KeyAscii, global_116, arg_10, "Name")
  loc_123055C:               Proc_6_138_106E830(Me.DGLoan, global_116, KeyAscii, Me.FGPoint, 0)
  loc_123056A:             End If
  loc_123056D:           Else
  loc_1230575:             If (var_96 = CInt(&H2B)) Then
  loc_1230594:               If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_12305C1:                 Proc_6_89_1470B00(Me.Text1, KeyAscii, global_132, arg_10, "Name")
  loc_12305DB:                 Set var_A0 = Me.FGPoint
  loc_12305F3:                 Proc_6_138_106E830(Me.DGCategory, global_132, KeyAscii, var_A0, 0)
  loc_1230601:               End If
  loc_1230604:             Else
  loc_123060C:               If (var_96 = CInt(&H30)) Then
  loc_123062A:                 If ((((arg_10 = &H59) Or (arg_10 = &H79)) Or (arg_10 = &H4E)) Or (arg_10 = &H6E)) Then
  loc_123063A:                   If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_123064A:                     Set var_9C = Me.Text1
  loc_1230650:                     Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, "Yes", 0)
  loc_1230658:                     var_A0.Text = 2
  loc_1230666:                     arg_10 = 0
  loc_123066C:                   Else
  loc_1230679:                     If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_1230689:                       Set var_9C = Me.Text1
  loc_123068F:                       Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, "No")
  loc_1230697:                       var_A0.Text = arg_10
  loc_12306A5:                       arg_10 = 0
  loc_12306A8:                     End If
  loc_12306A8:                   End If
  loc_12306AB:                 Else
  loc_12306AD:                   arg_10 = 0
  loc_12306B0:                 End If
  loc_12306B0:               End If
  loc_12306B0:             End If
  loc_12306B0:           End If
  loc_12306B0:         End If
  loc_12306B0:       End If
  loc_12306B0:     End If
  loc_12306B0:   End If
  loc_12306B0: End If
  loc_12306B0: Exit Sub
  loc_12306B1: VCallR4
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer) '1149BCC
  'Data Table: 521E40
  Dim var_86 As Integer
  loc_114982F: var_86 = KeyCode
  loc_114983A: If (var_86 = CInt(&H24)) Then
  loc_1149858:   If (Me.FrmList.Visible = &HFF) Then
  loc_1149887:     Proc_6_64_F299E8(Me.ListView, Me.Text1, KeyCode)
  loc_1149897:   End If
  loc_114989A: Else
  loc_11498A2:   If Not (var_86 = CInt(&H27)) Then
  loc_11498AD:     If (var_86 = CInt(&H32)) Then
  loc_11498B0:     End If
  loc_11498CB:     If (Me.FrmList.Visible = &HFF) Then
  loc_11498FA:       Proc_6_64_F299E8(Me.ListView, Me.Text1, KeyCode, Shift)
  loc_114990A:     End If
  loc_114990D:   Else
  loc_1149915:     If (var_86 = CInt(&H31)) Then
  loc_1149934:       If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_1149948:         var_B0 = "Name"
  loc_114996C:         Proc_6_68_12A2818(Me.DGDepartment, Me.Text1, KeyCode, global_120, Shift)
  loc_114997F:       End If
  loc_1149982:     Else
  loc_114998A:       If (var_86 = CInt(&H25)) Then
  loc_11499A9:         If (CBool(Me.DGDesignation.Visible) = &HFF) Then
  loc_11499E1:           Proc_6_68_12A2818(Me.DGDesignation, Me.Text1, KeyCode, global_124, Shift, "Name")
  loc_11499F4:         End If
  loc_11499F7:       Else
  loc_11499FF:         If (var_86 = CInt(&H26)) Then
  loc_1149A1E:           If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_1149A56:             Proc_6_68_12A2818(Me.DGAcName, Me.Text1, KeyCode, global_128, Shift, "Name")
  loc_1149A69:           End If
  loc_1149A6C:         Else
  loc_1149A74:           If (var_86 = CInt(&H2F)) Then
  loc_1149A93:             If (CBool(Me.DGLoan.Visible) = &HFF) Then
  loc_1149ACF:               Proc_6_68_12A2818(Me.DGAcName, Me.Text1, KeyCode, global_116, Shift, "Name")
  loc_1149AE2:             End If
  loc_1149AE5:           Else
  loc_1149AED:             If (var_86 = CInt(&H2B)) Then
  loc_1149B0C:               If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_1149B44:                 Proc_6_68_12A2818(Me.DGCategory, Me.Text1, KeyCode, global_132, Shift, "Name")
  loc_1149B57:               End If
  loc_1149B5A:             Else
  loc_1149B62:               If Not (var_86 = CInt(&H2C)) Then
  loc_1149B6D:                 If (var_86 = CInt(&H2E)) Then
  loc_1149B70:                 End If
  loc_1149B8B:                 If (Me.FrmList.Visible = &HFF) Then
  loc_1149BBA:                   Proc_6_64_F299E8(Me.ListView, Me.Text1, KeyCode, Shift, global_68)
  loc_1149BCA:                 End If
  loc_1149BCA:               End If
  loc_1149BCA:             End If
  loc_1149BCA:           End If
  loc_1149BCA:         End If
  loc_1149BCA:       End If
  loc_1149BCA:     End If
  loc_1149BCA:   End If
  loc_1149BCA: End If
  loc_1149BCA: Exit Sub
End Sub

Private Sub Text1_LostFocus(Index As Integer) 'E48B44
  'Data Table: 521E40
  loc_E48B22: Set var_88 = Me.Text1
  loc_E48B28: Call 0.Method_Text1_LostFocus0 (Index)
  loc_E48B36: Proc_6_73_E23294(var_8C)
  loc_E48B42: Exit Sub
End Sub

Private Sub Text1_Validate(Cancel As Boolean) '157F760
  'Data Table: 521E40
  Dim var_86 As Integer
  Dim var_AC As String
  Dim var_A8 As Variant
  Dim var_C0 As TextBox
  Dim var_90 As Variant
  Dim var_A4 As ListView
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_110 As Variant
  Dim arg_10 As Integer
  loc_157E627: var_86 = Cancel
  loc_157E632: If Not (var_86 = CInt(9)) Then
  loc_157E63D:   If Not (var_86 = CInt(&HA)) Then
  loc_157E648:     If Not (var_86 = CInt(&HB)) Then
  loc_157E653:       If Not (var_86 = CInt(&HF)) Then
  loc_157E65E:         If Not (var_86 = CInt(&HD)) Then
  loc_157E669:           If Not (var_86 = CInt(&H11)) Then
  loc_157E674:             If Not (var_86 = CInt(&H10)) Then
  loc_157E67F:               If Not (var_86 = CInt(&H14)) Then
  loc_157E68A:                 If Not (var_86 = CInt(&H15)) Then
  loc_157E695:                   If Not (var_86 = CInt(&H16)) Then
  loc_157E6A0:                     If Not (var_86 = CInt(&HE)) Then
  loc_157E6AB:                       If Not (var_86 = CInt(&HC)) Then
  loc_157E6B6:                         If Not (var_86 = CInt(&H12)) Then
  loc_157E6C1:                           If Not (var_86 = CInt(&H13)) Then
  loc_157E6CC:                             If Not (var_86 = CInt(&H19)) Then
  loc_157E6D7:                               If Not (var_86 = CInt(&H1A)) Then
  loc_157E6E2:                                 If Not (var_86 = CInt(&H1C)) Then
  loc_157E6ED:                                   If Not (var_86 = CInt(&H1B)) Then
  loc_157E6F8:                                     If Not (var_86 = CInt(&H17)) Then
  loc_157E703:                                       If (var_86 = CInt(&H18)) Then
  loc_157E706:                                       End If
  loc_157E706:                                     End If
  loc_157E706:                                   End If
  loc_157E706:                                 End If
  loc_157E706:                               End If
  loc_157E706:                             End If
  loc_157E706:                           End If
  loc_157E706:                         End If
  loc_157E706:                       End If
  loc_157E706:                     End If
  loc_157E706:                   End If
  loc_157E706:                 End If
  loc_157E706:               End If
  loc_157E706:             End If
  loc_157E706:           End If
  loc_157E706:         End If
  loc_157E706:       End If
  loc_157E706:     End If
  loc_157E706:   End If
  loc_157E710:   Set var_8C = Me.Text1
  loc_157E716:   Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E722:   Proc_6_40_EA5C80(CVar(var_90))
  loc_157E736:   Set var_A4 = Me.Text1
  loc_157E73C:   Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E744:   var_A8.Text = CStr(var_86)
  loc_157E75B: Else
  loc_157E763:   If (var_86 = CInt(&H23)) Then
  loc_157E770:     Set var_8C = Me.Text1
  loc_157E776:     Call 0.Method_Text1_Validate0 (Cancel)
  loc_157E7B1:     Set var_A8 = Me.Text1
  loc_157E7B7:     Call 0.Method_Text1_Validate0 (CInt(&H23), var_C0)
  loc_157E7BF:     var_C0.Text = CStr(Left(CVar(Proc_6_120_133AEC8(var_90)), 3))
  loc_157E7E0:   Else
  loc_157E7E8:     If (var_86 = CInt(&H24)) Then
  loc_157E7EE:       Call Text1_GotFocus(Cancel)
  loc_157E800:       Set var_8C = Me.Text1
  loc_157E806:       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E82B:       Set var_A8 = Me.ListView.SelectedItem
  loc_157E831:       var_A8.Text = var_90.Text
  loc_157E854:       Set var_8C = Me.Text1
  loc_157E85A:       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157E879:       If (var_90.Text <> vbNullString) Then
  loc_157E894:         Set var_90 = Me.ListView.SelectedItem
  loc_157E89A:         var_AC = var_90.Text
  loc_157E8AC:         Set var_A4 = Me.Text1
  loc_157E8B2:         Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E8BA:         var_A8.Text = var_AC
  loc_157E8D0:       End If
  loc_157E8D3:     Else
  loc_157E8DB:       If (var_86 = CInt(&H31)) Then
  loc_157E92C:         Set var_8C = Me.Text1
  loc_157E932:         Call 0.Method_Text1_Validate0 (Cancel, var_90, var_AC)
  loc_157E93A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_157E952:         If (var_90 Or (var_AC = vbNullString)) Then
  loc_157E955:           Exit Sub
  loc_157E956:         End If
  loc_157E991:         Set var_A4 = Me.Text1
  loc_157E997:         Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E99F:         var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_157E9D2:         var_90 = Me.Fields.Item("Code")
  loc_157E9F0:         Set var_A4 = Me.Text1
  loc_157E9F6:         Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157E9FE:         var_A8.Tag = CStr(var_90.Value)
  loc_157EA17:       Else
  loc_157EA1F:         If (var_86 = CInt(&H25)) Then
  loc_157EA70:           Set var_8C = Me.Text1
  loc_157EA76:           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157EA96:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_157EA99:             Exit Sub
  loc_157EA9A:           End If
  loc_157EAD5:           Set var_A4 = Me.Text1
  loc_157EADB:           Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157EAE3:           var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_157EB16:           var_90 = Me.Fields.Item("Code")
  loc_157EB34:           Set var_A4 = Me.Text1
  loc_157EB3A:           Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157EB42:           var_A8.Tag = CStr(var_90.Value)
  loc_157EB5B:         Else
  loc_157EB63:           If (var_86 = CInt(&H26)) Then
  loc_157EBB4:             Set var_8C = Me.Text1
  loc_157EBBA:             Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157EBDA:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_157EBDD:               Exit Sub
  loc_157EBDE:             End If
  loc_157EC19:             Set var_A4 = Me.Text1
  loc_157EC1F:             Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157EC27:             var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_157EC5A:             var_90 = Me.Fields.Item("Code")
  loc_157EC78:             Set var_A4 = Me.Text1
  loc_157EC7E:             Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157EC86:             var_A8.Tag = CStr(var_90.Value)
  loc_157EC9F:           Else
  loc_157ECA7:             If (var_86 = CInt(&H2F)) Then
  loc_157ED01:               Set var_8C = Me.Text1
  loc_157ED07:               Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157ED27:               If (((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_157ED2A:                 Exit Sub
  loc_157ED2B:               End If
  loc_157ED69:               Set var_A4 = Me.Text1
  loc_157ED6F:               Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157ED77:               var_A8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_157EDAD:               var_90 = Me.Recordset15.Fields.Item("Code")
  loc_157EDCB:               Set var_A4 = Me.Text1
  loc_157EDD1:               Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157EDD9:               var_A8.Tag = CStr(var_90.Value)
  loc_157EDF2:             Else
  loc_157EDFA:               If (var_86 = CInt(&H2B)) Then
  loc_157EE4B:                 Set var_8C = Me.Text1
  loc_157EE51:                 Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157EE71:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_157EE74:                   Exit Sub
  loc_157EE75:                 End If
  loc_157EEB0:                 Set var_A4 = Me.Text1
  loc_157EEB6:                 Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157EEBE:                 var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_157EEF1:                 var_90 = Me.Fields.Item("Code")
  loc_157EF0F:                 Set var_A4 = Me.Text1
  loc_157EF15:                 Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157EF1D:                 var_A8.Tag = CStr(var_90.Value)
  loc_157EF36:               Else
  loc_157EF3E:                 If (var_86 = CInt(&H27)) Then
  loc_157EF44:                   Call Text1_GotFocus(Cancel)
  loc_157EF56:                   Set var_8C = Me.Text1
  loc_157EF5C:                   Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157EF81:                   Set var_A8 = Me.ListView.SelectedItem
  loc_157EF87:                   var_A8.Text = var_90.Text
  loc_157EFAA:                   Set var_8C = Me.Text1
  loc_157EFB0:                   Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157EFCF:                   If (var_90.Text <> vbNullString) Then
  loc_157EFEA:                     Set var_90 = Me.ListView.SelectedItem
  loc_157F002:                     Set var_A4 = Me.Text1
  loc_157F008:                     Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157F010:                     var_A8.Text = var_90.Text
  loc_157F026:                   End If
  loc_157F029:                 Else
  loc_157F031:                   If (var_86 = CInt(&H2C)) Then
  loc_157F037:                     Call Text1_GotFocus(Cancel)
  loc_157F049:                     Set var_8C = Me.Text1
  loc_157F04F:                     Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157F074:                     Set var_A8 = Me.ListView.SelectedItem
  loc_157F07A:                     var_A8.Text = var_90.Text
  loc_157F09D:                     Set var_8C = Me.Text1
  loc_157F0A3:                     Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157F0C2:                     If (var_90.Text <> vbNullString) Then
  loc_157F0DD:                       Set var_90 = Me.ListView.SelectedItem
  loc_157F0F5:                       Set var_A4 = Me.Text1
  loc_157F0FB:                       Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157F103:                       var_A8.Text = var_90.Text
  loc_157F119:                     End If
  loc_157F126:                     Set var_8C = Me.Text1
  loc_157F12C:                     Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157F14B:                     If (var_90.Text = vbNullString) Then
  loc_157F15B:                       Set var_8C = Me.Text1
  loc_157F161:                       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157F169:                       var_90.Text = "No"
  loc_157F175:                     End If
  loc_157F178:                   Else
  loc_157F180:                     If (var_86 = CInt(&H2E)) Then
  loc_157F186:                       Call Text1_GotFocus(Cancel)
  loc_157F198:                       Set var_8C = Me.Text1
  loc_157F19E:                       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157F1C3:                       Set var_A8 = Me.ListView.SelectedItem
  loc_157F1C9:                       var_A8.Text = var_90.Text
  loc_157F1EC:                       Set var_8C = Me.Text1
  loc_157F1F2:                       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157F211:                       If (var_90.Text <> vbNullString) Then
  loc_157F22C:                         Set var_90 = Me.ListView.SelectedItem
  loc_157F244:                         Set var_A4 = Me.Text1
  loc_157F24A:                         Call 0.Method_Text1_Validate0 (Cancel, var_A8)
  loc_157F252:                         var_A8.Text = var_90.Text
  loc_157F268:                       End If
  loc_157F276:                       Set var_8C = Me.Text1
  loc_157F27C:                       Call 0.Method_Text1_Validate0 (CInt(&H2C), var_90)
  loc_157F29F:                       Set var_A4 = Me.Text1
  loc_157F2A5:                       Call 0.Method_Text1_Validate0 (CInt(&H2C), var_A8)
  loc_157F2AD:                       var_C4 = var_A8.Text
  loc_157F2C9:                       Set var_C0 = Me.Text1
  loc_157F2CF:                       Call 0.Method_Text1_Validate0 (Cancel, var_E0)
  loc_157F2DE:                       var_BC = Trim(CVar(var_E0))
  loc_157F2F0:                       var_110 = ((var_90.Text <> vbNullString) And (var_C4 <> "No")) And (var_BC = vbNullString)
  loc_157F313:                       If CBool(var_110) Then
  loc_157F318:                         arg_10 = &HFF
  loc_157F31B:                       End If
  loc_157F329:                       Set var_8C = Me.Text1
  loc_157F32F:                       Call 0.Method_Text1_Validate0 (CInt(&H2C), var_90)
  loc_157F352:                       Set var_A4 = Me.Text1
  loc_157F358:                       Call 0.Method_Text1_Validate0 (CInt(&H2C), var_A8, var_C4)
  loc_157F360:                       (var_90.Text = vbNullString) = var_A8.Text
  loc_157F380:                       If (arg_10 Or (var_C4 = "No")) Then
  loc_157F391:                         Set var_8C = Me.Text1
  loc_157F397:                         Call 0.Method_Text1_Validate0 (CInt(&H2E), var_90)
  loc_157F39F:                         var_90.Text = vbNullString
  loc_157F3AB:                       End If
  loc_157F3AE:                     Else
  loc_157F3B6:                       If (var_86 = CInt(&H29)) Then
  loc_157F3C6:                         Set var_8C = Me.Text1
  loc_157F3CC:                         Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157F3EB:                         If (var_90.Text <> vbNullString) Then
  loc_157F3F9:                           Set var_8C = Me.Text1
  loc_157F3FF:                           Call 0.Method_Text1_Validate0 (CInt(&H29))
  loc_157F420:                           Set var_A8 = Me.Text1
  loc_157F426:                           Call 0.Method_Text1_Validate0 (CInt(&H29), var_C0)
  loc_157F42E:                           var_C0.Text = Proc_6_33_15125B8(var_90)
  loc_157F441:                         End If
  loc_157F44F:                         Set var_8C = Me.Text1
  loc_157F455:                         Call 0.Method_Text1_Validate0 (CInt(&H28), var_90)
  loc_157F478:                         Set var_A4 = Me.Text1
  loc_157F47E:                         Call 0.Method_Text1_Validate0 (CInt(&H29), var_A8, var_C4)
  loc_157F486:                         (var_90.Text <> vbNullString) = var_A8.Text
  loc_157F4A6:                         If (var_90 And (var_C4 <> vbNullString)) Then
  loc_157F4B7:                           Set var_A4 = Me.Text1
  loc_157F4BD:                           Call 0.Method_Text1_Validate0 (CInt(&H28), var_A8)
  loc_157F4C5:                           var_C4 = var_A8.Text
  loc_157F4D8:                           Set var_8C = Me.Text1
  loc_157F4DE:                           Call 0.Method_Text1_Validate0 (CInt(&H29), var_90)
  loc_157F508:                           If (CDate(var_90.Text) <= CDate(var_C4)) Then
  loc_157F524:                             MsgBox("Joining date should be greater than Birth Date", &H40, var_BC, var_F0, var_110)
  loc_157F536:                             arg_10 = &HFF
  loc_157F539:                             Exit Sub
  loc_157F53A:                           End If
  loc_157F53A:                         End If
  loc_157F53D:                       Else
  loc_157F545:                         If (var_86 = CInt(&H2A)) Then
  loc_157F555:                           Set var_8C = Me.Text1
  loc_157F55B:                           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157F57A:                           If (var_90.Text <> vbNullString) Then
  loc_157F588:                             Set var_8C = Me.Text1
  loc_157F58E:                             Call 0.Method_Text1_Validate0 (CInt(&H2A), var_90)
  loc_157F5AF:                             Set var_A8 = Me.Text1
  loc_157F5B5:                             Call 0.Method_Text1_Validate0 (CInt(&H2A), var_C0)
  loc_157F5BD:                             var_C0.Text = Proc_6_33_15125B8(var_90)
  loc_157F5D0:                           End If
  loc_157F5DE:                           Set var_8C = Me.Text1
  loc_157F5E4:                           Call 0.Method_Text1_Validate0 (CInt(&H29), var_90)
  loc_157F607:                           Set var_A4 = Me.Text1
  loc_157F60D:                           Call 0.Method_Text1_Validate0 (CInt(&H2A), var_A8, var_C4)
  loc_157F615:                           (var_90.Text <> vbNullString) = var_A8.Text
  loc_157F635:                           If (arg_10 And (var_C4 <> vbNullString)) Then
  loc_157F646:                             Set var_A4 = Me.Text1
  loc_157F64C:                             Call 0.Method_Text1_Validate0 (CInt(&H2A), var_A8)
  loc_157F667:                             Set var_8C = Me.Text1
  loc_157F66D:                             Call 0.Method_Text1_Validate0 (CInt(&H29), var_90)
  loc_157F697:                             If (CDate(var_90.Text) >= CDate(var_A8.Text)) Then
  loc_157F6B3:                               MsgBox("Resign date should be greater than Joining Date", &H40, var_BC, var_F0, var_110)
  loc_157F6C5:                               arg_10 = &HFF
  loc_157F6C8:                               Exit Sub
  loc_157F6C9:                             End If
  loc_157F6C9:                           End If
  loc_157F6CC:                         Else
  loc_157F6D4:                           If (var_86 = CInt(&H28)) Then
  loc_157F6E4:                             Set var_8C = Me.Text1
  loc_157F6EA:                             Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_157F709:                             If (var_90.Text <> vbNullString) Then
  loc_157F717:                               Set var_8C = Me.Text1
  loc_157F71D:                               Call 0.Method_Text1_Validate0 (CInt(&H28), var_90)
  loc_157F73E:                               Set var_A8 = Me.Text1
  loc_157F744:                               Call 0.Method_Text1_Validate0 (CInt(&H28), var_C0)
  loc_157F74C:                               var_C0.Text = Proc_6_33_15125B8(var_90)
  loc_157F75F:                             End If
  loc_157F75F:                           End If
  loc_157F75F:                         End If
  loc_157F75F:                       End If
  loc_157F75F:                     End If
  loc_157F75F:                   End If
  loc_157F75F:                 End If
  loc_157F75F:               End If
  loc_157F75F:             End If
  loc_157F75F:           End If
  loc_157F75F:         End If
  loc_157F75F:       End If
  loc_157F75F:     End If
  loc_157F75F:   End If
  loc_157F75F: End If
  loc_157F75F: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8A62C
  'Data Table: 521E40
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F8A4E8: On Error Goto loc_F8A5C6
  loc_F8A4EF: Set var_A4 = Me.ListView
  loc_F8A539: Set var_BC = Me.Text1
  loc_F8A53F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F8A547: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F8A573: Me.FrmList.Visible = False
  loc_F8A58D: var_A0 = CStr(Me.ListView.Tag)
  loc_F8A595: var_C8 = Val(var_A0)
  loc_F8A5A3: Set var_9C = Me.Text1
  loc_F8A5A9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F8A5B1: var_A4.SetFocus
  loc_F8A5C5: Exit Sub
  loc_F8A5C6: ' Referenced from: F8A4E8
  loc_F8A5CE: Set var_88 = Err()
  loc_F8A5D4: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F8A5E5: If (var_CC <> 0) Then
  loc_F8A5F0:   Set var_88 = Err()
  loc_F8A5F6:   Call 0.Method_arg_2C (var_A0)
  loc_F8A617:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F8A62A: End If
  loc_F8A62A: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F50E14
  'Data Table: 521E40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F50D0B: Me.DGCategory.Visible = False
  loc_F50D2A: If (Me.RecordCount > 0) Then
  loc_F50D69:   Set var_B4 = Me.Text1
  loc_F50D6F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(&H2B), var_B8)
  loc_F50D77:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F50DAA:   var_B0 = Me.Fields.Item("Name")
  loc_F50DC9:   Set var_B4 = Me.Text1
  loc_F50DCF:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(&H2B), var_B8)
  loc_F50DD7:   var_B8.Text = CStr(var_B0.Value)
  loc_F50DED: End If
  loc_F50DF8: Set var_A8 = Me.Text1
  loc_F50DFE: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(&H2B))
  loc_F50E06: var_B0.SetFocus
  loc_F50E12: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'E6F450
  'Data Table: 521E40
  loc_E6F40E: Proc_6_153_E91D24(Me.DGCategory, arg_14)
  loc_E6F425: Set var_8C = Me.FGPoint
  loc_E6F441: Proc_6_138_106E830(Me.DGCategory, global_132, CInt(&H2B))
  loc_E6F44F: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_9 'F4E794
  'Data Table: 521E40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E68B: Me.DGAcName.Visible = False
  loc_F4E6AA: If (Me.RecordCount > 0) Then
  loc_F4E6E9:   Set var_B4 = Me.Text1
  loc_F4E6EF:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(&H26), var_B8)
  loc_F4E6F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4E72A:   var_B0 = Me.Fields.Item("Name")
  loc_F4E749:   Set var_B4 = Me.Text1
  loc_F4E74F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(&H26), var_B8)
  loc_F4E757:   var_B8.Text = CStr(var_B0.Value)
  loc_F4E76D: End If
  loc_F4E778: Set var_A8 = Me.Text1
  loc_F4E77E: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(&H26))
  loc_F4E786: var_B0.SetFocus
  loc_F4E792: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E723B8
  'Data Table: 521E40
  loc_E72376: Proc_6_153_E91D24(Me.DGAcName, arg_14)
  loc_E7238D: Set var_8C = Me.FGPoint
  loc_E723A9: Proc_6_138_106E830(Me.DGAcName, global_128, CInt(&H26))
  loc_E723B7: Exit Sub
End Sub

Private Sub Form_Load() '113DE74
  'Data Table: 521E40
  Dim var_8C As Variant
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim var_B4 As String
  Dim unk_521E54 As Connection15
  Dim var_144 As String
  loc_113DAE4: On Error Goto loc_113DE6B
  loc_113DAF6: Me.LblUser.Left = CDbl(13500)
  loc_113DB0D: Me.LblUser.Top = CDbl(7800)
  loc_113DB24: Me.LblLDt.Top = CDbl(8160)
  loc_113DB3B: Me.LblLDt.Left = CDbl(13500)
  loc_113DB4A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_113DB5D: Me.Frame_DETAIL.BackColor = CLng(MemVar_1F951B4)
  loc_113DB84: Me.Recordset15.CursorLocation = 3
  loc_113DBA7: var_90 = "SELECT Employee.code as searchcode,employee.*,EC.Name as CatName,Desig.Name as DesigName,SG.Name as AcName,EC.Code as CatCode,Desig.Code as DesigCode,SG.SubCode as AcCode,SG1.SubCode as LoanCode,SG1.Name as LoanName,D.Code As DepartCode,D.Name As DepartName FROM ((((Employee Left Join EmpCategory EC on EC.Code=Employee.Category) Left Join Desig on Desig.Code=Employee.Designation) Left Join SubGroup SG on SG.SubCode=Employee.AC_Code) left join Subgroup SG1 on SG1.Subcode=Employee.loanAc) Left Join Depart D On D.Code=Employee.Department where (Employee.LOGSITE_CODE='" & MemVar_1F95078
  loc_113DBAE: var_A0 = CVar(var_90 & "' or Employee.LOGSITE_CODE='HO') ORDER BY Employee.NAME") 'String
  loc_113DBBB: Me.Recordset15.Open var_A0, CVar(MemVar_1F95044), 2
  loc_113DBD2: CVarUnk
  loc_113DBD7: VerifyVarObj
  loc_113DBE3: LateIdStAd
  loc_113DC0C: var_B4 = "Select G.Code,G.Name From GodownMast G iNNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078 & "')  Order by G.Name"
  loc_113DC15: unk_521E54.Execute var_B4, var_A0, -1
  loc_113DC26: Set global_120 = Me.DBGrid1
  loc_113DC44: CVarUnk
  loc_113DC49: VerifyVarObj
  loc_113DC55: LateIdStAd
  loc_113DC87: unk_521E54.Execute "SELECT Code, Name FROM Desig where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_A0, -1
  loc_113DCB6: CVarUnk
  loc_113DCBB: VerifyVarObj
  loc_113DCC7: LateIdStAd
  loc_113DCF0: var_B4 = "SELECT SubCode as Code, Name FROM SubGroup where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Nature='Employee' ORDER BY Name"
  loc_113DCF9: unk_521E54.Execute var_B4, var_A0, -1
  loc_113DD28: CVarUnk
  loc_113DD2D: VerifyVarObj
  loc_113DD39: LateIdStAd
  loc_113DD6B: unk_521E54.Execute "SELECT SubCode as Code, Name FROM SubGroup where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_A0, -1
  loc_113DD9D: CVarUnk
  loc_113DDA2: VerifyVarObj
  loc_113DDAE: LateIdStAd
  loc_113DDE0: unk_521E54.Execute "SELECT Code, Name FROM EmpCategory where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_A0, -1
  loc_113DE0F: CVarUnk
  loc_113DE14: VerifyVarObj
  loc_113DE1A: Set var_8C = Me.DGCategory
  loc_113DE20: LateIdStAd
  loc_113DE3E: Set var_8C = Me
  loc_113DE55: Call Proc_315_51_EAFAE4(Proc_5_1_100EC1C("INI", var_8C, New, var_8C, Me.DGLoan, var_8C, var_8C, Me.DGAcName), var_8C, var_8C, Me.DGDesignation, var_8C)
  loc_113DE60: Call Proc_315_54_1124304(var_8C, Me.DGDepartment)
  loc_113DE65: Call Proc_315_50_17C818C(var_8C)
  loc_113DE6A: Exit Sub
  loc_113DE6B: ' Referenced from: 113DAE4
  loc_113DE6B: Proc_6_60_E63754(var_8C)
  loc_113DE70: Exit Sub
  loc_113DE71: var_144 = 
End Sub

Private Sub Form_Resize() 'EDD670
  'Data Table: 521E40
  Dim var_8C As Label
  loc_EDD5C6: Call 0.Method_arg_50 (var_88)
  loc_EDD5D8: Me.LblFormCaption.Caption = var_88
  loc_EDD5F1: Me.LblFormCaption.Left = CDbl(0)
  loc_EDD5FD: Set var_A0 = Me.TopCtrl1
  loc_EDD603: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EDD610: Set var_8C = Me.TopCtrl1
  loc_EDD616: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_EDD630: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_EDD64B: Call 0.Method_arg_100 (var_B8)
  loc_EDD65D: Me.LblFormCaption.Width = var_B8
  loc_EDD66A: Call 0.Method_arg_114 (1)
  loc_EDD66F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6CCF8
  'Data Table: 521E40
  loc_E6CCA7: Set global_112 = Nothing
  loc_E6CCB9: Set global_128 = Nothing
  loc_E6CCCB: Set global_124 = Nothing
  loc_E6CCDD: Set global_120 = Nothing
  loc_E6CCEF: Set global_132 = Nothing
  loc_E6CCF6: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E01450
  'Data Table: 521E40
  loc_E01449: global_78 = &HFF
  loc_E0144C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F29F1C
  'Data Table: 521E40
  Dim var_88 As Frame
  loc_F29E0C: On Error Goto loc_F29F16
  loc_F29E23: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_F29E39: Set var_88 = Me.TopCtrl1
  loc_F29E3F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C((CLng(KeyCode) = &H77))
  loc_F29E59: If (0 And (CStr(Shift) = "Browse")) Then
  loc_F29E77:   If (Me.Frame_DETAIL.Visible = 0) Then
  loc_F29E7F:     Call Proc_315_55_E4A274(&HFF)
  loc_F29E87:   Else
  loc_F29E8C:     Call Proc_315_55_E4A274(0)
  loc_F29E91:   End If
  loc_F29E94: Else
  loc_F29EA9:   Set var_88 = Me.TopCtrl1
  loc_F29EAF:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(((CLng(KeyCode) = &H7A) And (Shift = 3)))
  loc_F29EC9:   If ( And (CStr() = "Browse")) Then
  loc_F29EE7:     If (Me.Frame1.Visible = 0) Then
  loc_F29EF6:       Me.Frame1.Visible = True
  loc_F29F01:     Else
  loc_F29F0D:       Me.Frame1.Visible = False
  loc_F29F15:     End If
  loc_F29F15:   End If
  loc_F29F15: End If
  loc_F29F15: Exit Sub
  loc_F29F16: ' Referenced from: F29E0C
  loc_F29F16: Proc_6_60_E63754()
  loc_F29F1B: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_18 'DFF01C
  'Data Table: 521E40
  loc_DFF014: Call TopCtrl1_UnknownEvent_D()
  loc_DFF019: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_1A 'F76094
  'Data Table: 521E40
  Dim var_BC As String
  Dim unk_521E54 As Connection15
  loc_F75F68: On Error Goto loc_F7604E
  loc_F75F85: If (Me.Recordset15.RecordCount > 0) Then
  loc_F75FA9:   Set var_8C = Me.DBGrid1
  loc_F75FC8:   var_B8 = DBGrid1.DispID_69.Item(CVar(KeyCode)).DataField
  loc_F75FD1:   var_BC = "SELECT Employee.code as searchcode,employee.*,EC.Name as CatName,Desig.Name as DesigName,SG.Name as AcName,EC.Code as CatCode,Desig.Code as DesigCode,SG.SubCode as AcCode FROM (((Employee Left Join EmpCategory EC on EC.Code=Employee.Category) Left Join Desig on Desig.Code=Employee.Designation) Left Join SubGroup SG on SG.SubCode=Employee.AC_Code) ORDER BY Employee." & var_B8
  loc_F75FDA:   unk_521E54.Execute var_BC, var_DC, -1
  loc_F76018:   Me.Recordset15.Requery -1
  loc_F76029:   CVarUnk
  loc_F7602E:   VerifyVarObj
  loc_F7603A:   LateIdStAd
  loc_F76048:   Call Proc_315_50_17C818C(Me.DBGrid1, var_E0)
  loc_F7604D: End If
  loc_F7604D: Exit Sub
  loc_F7604E: ' Referenced from: F75F68
  loc_F76056: Set var_8C = Err()
  loc_F7605C: Call 0.Method_arg_2C (var_B8)
  loc_F7607D: MsgBox(CVar(var_B8), &H10, "Information", var_F4, var_114)
  loc_F76090: Exit Sub
  loc_F76091: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_1D 'E0D750
  'Data Table: 521E40
  loc_E0D745: If ((KeyCode = &H26) Or (KeyCode = &H28)) Then
  loc_E0D748:   Call Proc_315_50_17C818C()
  loc_E0D74D: End If
  loc_E0D74D: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_22 'E92A70
  'Data Table: 521E40
  loc_E92A04: On Error Goto loc_E92A2A
  loc_E92A21: If (Me.Recordset15.RecordCount > 0) Then
  loc_E92A24:   Call Proc_315_50_17C818C()
  loc_E92A29: End If
  loc_E92A29: Exit Sub
  loc_E92A2A: ' Referenced from: E92A04
  loc_E92A32: Set var_8C = Err()
  loc_E92A38: Call 0.Method_arg_2C (var_90)
  loc_E92A59: MsgBox(CVar(var_90), &H10, "Information", var_E0, var_100)
  loc_E92A6C: Exit Sub
  loc_E92A6D: Exit Sub
End Sub

Private Sub CmdRemoveEmpDetail_Click() '12520C0
  'Data Table: 521E40
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_110 As CommandButton
  Dim var_CC As Variant
  Dim unk_521E54 As Connection15
  Dim var_EC As Variant
  Dim var_98 As Variant
  Dim var_10C As Variant
  loc_1251B80: Set var_88 = Me.TopCtrl1
  loc_1251B86: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_1251B9F: If (CStr() <> "Browse") Then
  loc_1251BC3:   MsgBox("Only In Browse Mode!", &H40, " Remove Employee Detail", var_EC, var_10C)
  loc_1251BD3:   Exit Sub
  loc_1251BD4: End If
  loc_1251BE0: Me.CmdRemoveEmpDetail.Enabled = False
  loc_1251BF5: var_9C = Me.Frame1.Tag
  loc_1251C01: Set var_110 = Me.CmdRemoveEmpDetail
  loc_1251C07: var_110.Tag = var_9C
  loc_1251C16: On Error Goto loc_1252066
  loc_1251C2B: If (Proc_183_56_FE8B08(global_112) = &HFF) Then
  loc_1251C2E:   Exit Sub
  loc_1251C2F: End If
  loc_1251C3B: var_134 = global_112.RecordCount
  loc_1251C49: If (var_134 <= 0) Then
  loc_1251C52:   Call 0.Method_arg_50 (var_9C)
  loc_1251C73:   MsgBox("Nothing to Remove", &H10, CVar(var_9C), var_EC, var_10C)
  loc_1251C86: Else
  loc_1251C91:   var_CC = "Remove Detail Not Recovered !"
  loc_1251CBD:   If (MsgBox("Are You Sure To Remove All Detail Of This Employee ? ", &H114, var_CC, var_EC, var_10C) = 6) Then
  loc_1251CC9:     unk_521E54.BeginTrans var_134
  loc_1251CD2:     var_12E = CByte(1) 'Byte
  loc_1251CE2:     var_98 = Me.Recordset15.Bookmark
  loc_1251CEA:     var_120 = var_98 'Variant
  loc_1251D32:     unk_521E54.Execute "Delete From Salary Where Site_code='" & MemVar_1F95070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251D92:     unk_521E54.Execute "Delete From Attend Where Site_code='" & MemVar_1F95070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251DF2:     unk_521E54.Execute "Delete From Attendence Where Site_code='" & MemVar_1F95070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251E52:     unk_521E54.Execute "Delete From Loan Where Site_code='" & MemVar_1F95070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251EB2:     unk_521E54.Execute "Delete From Leave_Ench Where Site_code='" & MemVar_1F95070 & "' And Emp_Code='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251F12:     unk_521E54.Execute "Delete From OverTime Where Site_code='" & MemVar_1F95070 & "' And EmpCode='" & Me.CmdRemoveEmpDetail.Tag & "'", var_98, -1
  loc_1251F42:     var_9C = "DELETE FROM EMPLOYEE WHERE SITE_CODE='" & MemVar_1F95070
  loc_1251F49:     var_EC = CVar(var_9C & "' AND CODE=") 'String
  loc_1251F67:     Proc_6_17_EAAE40(var_CC, CVar(Me.CmdRemoveEmpDetail.Tag), var_EC, var_154, -1, var_110)
  loc_1251F6F:     var_10C = var_110 & var_CC 
  loc_1251F7D:     unk_521E54.Execute CStr(var_10C), var_110, var_110
  loc_1251FA3:     unk_521E54.CommitTrans
  loc_1251FAC:     var_12E = CByte(0) 'Byte
  loc_1251FBE:     Me.Recordset15.Requery -1
  loc_1251FE1:     If (CVar(Me.Recordset15.RecordCount) >= var_120) Then
  loc_1251FF1:       Me.Recordset15.Bookmark = var_120
  loc_1251FF9:     Else
  loc_1252010:       If (global_112.EOF = 0) Then
  loc_125201C:         Me.Recordset15.MoveLast
  loc_1252021:       End If
  loc_1252021:     End If
  loc_1252021:     Call Proc_315_50_17C818C(var_110, var_110)
  loc_1252046:     Proc_5_0_1107AD0(&HFF, Me, global_112)
  loc_1252051:   Else
  loc_125205D:     Me.CmdRemoveEmpDetail.Enabled = True
  loc_1252065:   End If
  loc_1252065: End If
  loc_1252065: Exit Sub
  loc_1252066: ' Referenced from: 1251C16
  loc_125206F: If (CInt(var_12E) = 1) Then
  loc_1252078:   unk_521E54.RollbackTrans
  loc_125207D: End If
  loc_1252085: Set var_88 = Err()
  loc_125208B: Call 0.Method_arg_2C (var_9C, 0)
  loc_12520AC: MsgBox(CVar(var_9C), &H10, " Remove Employee Detail", var_EC, var_10C)
  loc_12520BF: Exit Sub
End Sub

Private Sub DGDesignation_UnknownEvent_9 'F4D5B4
  'Data Table: 521E40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D4AB: Me.DGDesignation.Visible = False
  loc_F4D4CA: If (Me.RecordCount > 0) Then
  loc_F4D509:   Set var_B4 = Me.Text1
  loc_F4D50F:   Call 0.Method_DGDesignation_UnknownEvent_90 (CInt(&H25), var_B8)
  loc_F4D517:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4D54A:   var_B0 = Me.Fields.Item("Name")
  loc_F4D569:   Set var_B4 = Me.Text1
  loc_F4D56F:   Call 0.Method_DGDesignation_UnknownEvent_90 (CInt(&H25), var_B8)
  loc_F4D577:   var_B8.Text = CStr(var_B0.Value)
  loc_F4D58D: End If
  loc_F4D598: Set var_A8 = Me.Text1
  loc_F4D59E: Call 0.Method_DGDesignation_UnknownEvent_90 (CInt(&H25))
  loc_F4D5A6: var_B0.SetFocus
  loc_F4D5B2: Exit Sub
End Sub

Private Sub DGDesignation_UnknownEvent_1F 'E6F294
  'Data Table: 521E40
  loc_E6F252: Proc_6_153_E91D24(Me.DGDesignation, arg_14)
  loc_E6F269: Set var_8C = Me.FGPoint
  loc_E6F285: Proc_6_138_106E830(Me.DGDesignation, global_124, CInt(&H25))
  loc_E6F293: Exit Sub
End Sub

Private Sub EmployeeImage_DblClick() '105E944
  'Data Table: 521E40
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105E6FC: On Error Goto loc_105E8E5
  loc_105E703: Set var_88 = Me.TopCtrl1
  loc_105E709: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105E71D: Set var_A0 = Me.TopCtrl1
  loc_105E723: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105E749: If ( And (CStr() <> "Edit")) Then
  loc_105E74C:   Exit Sub
  loc_105E74D: End If
  loc_105E75D: Me.CDlg.Filter = "*.*"
  loc_105E775: Me.CDlg.Action = 1
  loc_105E787: Me.CDlg.FileName = 
  loc_105E78F: var_9C = CStr()
  loc_105E79C: Me.EmployeeImage.Tag = var_9C
  loc_105E7B8: Me.CDlg.FileName = 
  loc_105E7C0: var_B0 = CVar(CStr()) 'String
  loc_105E7C6: var_E4 = Trim(var_B0)
  loc_105E7CF: Set var_A0 = Me.CDlg
  loc_105E7D5: var_A0.FileName = 
  loc_105E7F3: var_F4 = Right(var_E4, 3)
  loc_105E82E: var_D4 = "AVI"
  loc_105E85C: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105E86D:   var_C4 = "Invalid Format"
  loc_105E878:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105E88B: Else
  loc_105E8A2:   Set var_88 = Me.CDlg
  loc_105E8A8:   var_88.FileName = var_C4
  loc_105E8B0:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105E8BA:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105E8CF:   Me.EmployeeImage.Picture = var_A0
  loc_105E8E4: End If
  loc_105E8E4: Exit Sub
  loc_105E8E5: ' Referenced from: 105E6FC
  loc_105E8ED: Set var_88 = Err()
  loc_105E8F3: Call 0.Method_arg_1C (var_1B0)
  loc_105E904: If (var_1B0 <> 0) Then
  loc_105E91D:   Set var_88 = Err()
  loc_105E923:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105E92E:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105E941: End If
  loc_105E941: Exit Sub
End Sub

Private Sub EmployeeImage_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F19FB8
  'Data Table: 521E40
  Dim var_88 As Variant
  loc_F19EC4: Set var_88 = Me.TopCtrl1
  loc_F19ECA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F19EE3: If (CStr() = "Browse") Then
  loc_F19EE6:   Exit Sub
  loc_F19EE7: End If
  loc_F19F07: If (Me.EmployeeImage.Tag = vbNullString) Then
  loc_F19F0A:   Exit Sub
  loc_F19F0B: End If
  loc_F19F11: If (Button = 2) Then
  loc_F19F33:   Me.CmdImgDelete.Tag = Me.EmployeeImage.Name
  loc_F19F66:   Me.CmdImgDelete.Left = (Me.EmployeeImage.Left + X)
  loc_F19F96:   Me.CmdImgDelete.Top = (Me.EmployeeImage.Top + Y)
  loc_F19FAE:   Me.CmdImgDelete.Visible = True
  loc_F19FB6: End If
  loc_F19FB6: Exit Sub
End Sub

Private Sub DGLoan_UnknownEvent_9 'F57418
  'Data Table: 521E40
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F57301: Set var_A8 = Me.DGLoan
  loc_F57307: var_A8.Visible = False
  loc_F57329: If (Me.var_A8.RecordCount > 0) Then
  loc_F5736B:   Set var_B4 = Me.Text1
  loc_F57371:   Call 0.Method_DGLoan_UnknownEvent_90 (CInt(&H2F), var_B8)
  loc_F57379:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F573AF:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F573CE:   Set var_B4 = Me.Text1
  loc_F573D4:   Call 0.Method_DGLoan_UnknownEvent_90 (CInt(&H2F), var_B8)
  loc_F573DC:   var_B8.Text = CStr(var_B0.Value)
  loc_F573F2: End If
  loc_F573FD: Set var_A8 = Me.Text1
  loc_F57403: Call 0.Method_DGLoan_UnknownEvent_90 (CInt(&H2F))
  loc_F5740B: var_B0.SetFocus
  loc_F57417: Exit Sub
End Sub

Private Sub DGLoan_UnknownEvent_1F 'E7A2F0
  'Data Table: 521E40
  loc_E7A2AA: Proc_6_153_E91D24(Me.DGLoan, X)
  loc_E7A2C1: Set var_8C = Me.FGPoint
  loc_E7A2E1: Proc_6_138_106E830(Me.DGLoan, global_116, CInt(&H2F))
  loc_E7A2EF: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED2188
  'Data Table: 521E40
  loc_ED20EC: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_ED20EF:   Call DGCategory_UnknownEvent_9()
  loc_ED20F4: End If
  loc_ED2110: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_ED2113:   Call DGAcName_UnknownEvent_9()
  loc_ED2118: End If
  loc_ED2134: If (CBool(Me.DGDesignation.Visible) = &HFF) Then
  loc_ED2137:   Call DGDesignation_UnknownEvent_9()
  loc_ED213C: End If
  loc_ED2158: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_ED215B:   Call DGDepartment_UnknownEvent_9()
  loc_ED2160: End If
  loc_ED217C: If (CBool(Me.DGLoan.Visible) = &HFF) Then
  loc_ED217F:   Call DGLoan_UnknownEvent_9()
  loc_ED2184: End If
  loc_ED2184: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_9 'F4F974
  'Data Table: 521E40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F86B: Me.DGDepartment.Visible = False
  loc_F4F88A: If (Me.RecordCount > 0) Then
  loc_F4F8C9:   Set var_B4 = Me.Text1
  loc_F4F8CF:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(&H31), var_B8)
  loc_F4F8D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4F90A:   var_B0 = Me.Fields.Item("Name")
  loc_F4F929:   Set var_B4 = Me.Text1
  loc_F4F92F:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(&H31), var_B8)
  loc_F4F937:   var_B8.Text = CStr(var_B0.Value)
  loc_F4F94D: End If
  loc_F4F958: Set var_A8 = Me.Text1
  loc_F4F95E: Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(&H31))
  loc_F4F966: var_B0.SetFocus
  loc_F4F972: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_1F 'E6F200
  'Data Table: 521E40
  loc_E6F1BE: Proc_6_153_E91D24(Me.DGDepartment, X)
  loc_E6F1D5: Set var_8C = Me.FGPoint
  loc_E6F1F1: Proc_6_138_106E830(Me.DGDepartment, global_120, CInt(&H31))
  loc_E6F1FF: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'EB0874
  'Data Table: 521E40
  Dim var_88 As CheckBox
  Dim var_90 As TextBox
  loc_EB07F7: If (Me.Check1.Value = 0) Then
  loc_EB0807:   Set var_88 = Me.Text1
  loc_EB080D:   Call 0.Method_Check1_Validate0 (CInt(&H13), var_90)
  loc_EB0815:   var_90.Locked = False
  loc_EB082F:   Set var_88 = Me.Text1
  loc_EB0835:   Call 0.Method_Check1_Validate0 (CInt(&H13), var_90)
  loc_EB083D:   var_90.Text = " "
  loc_EB084C: Else
  loc_EB0859:   Set var_88 = Me.Text1
  loc_EB085F:   Call 0.Method_Check1_Validate0 (CInt(&H13), var_90)
  loc_EB0867:   var_90.Locked = False
  loc_EB0873: End If
  loc_EB0873: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F0F5A0
  'Data Table: 521E40
  Dim var_90 As Label
  Dim var_94 As TextBox
  loc_F0F4AC: On Error Goto loc_F0F597
  loc_F0F4B4: Call Proc_315_55_E4A274(&HFF)
  loc_F0F4E0: Call Proc_315_51_EAFAE4(Proc_5_1_100EC1C("ADD", Me))
  loc_F0F4F8: Me.LblUser.Caption = vbNullString
  loc_F0F50D: Me.LblLDt.Caption = vbNullString
  loc_F0F515: Call Proc_315_49_F78584(global_112)
  loc_F0F528: Set var_90 = Me.Text1
  loc_F0F52E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H30), var_94)
  loc_F0F536: var_94.Text = "Yes"
  loc_F0F548: global_80 = CDbl(0)
  loc_F0F551: global_88 = CDbl(0)
  loc_F0F563: global_104 = vbNullString
  loc_F0F56D: global_108 = vbNullString
  loc_F0F57C: Set var_90 = Me.Text1
  loc_F0F582: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94, CDbl(0))
  loc_F0F58A: var_94.SetFocus
  loc_F0F596: Exit Sub
  loc_F0F597: ' Referenced from: F0F4AC
  loc_F0F597: Proc_6_60_E63754(global_88)
  loc_F0F59C: Exit Sub
  loc_F0F59D: var_3794 = global_80 'Variant
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EACFD8
  'Data Table: 521E40
  loc_EACF58: On Error Goto loc_EACFD2
  loc_EACF92: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EACF95:   Call Proc_315_53_F95448()
  loc_EACFC1:   Call Proc_315_51_EAFAE4(Proc_5_1_100EC1C("INI", Me))
  loc_EACFCC:   Call Proc_315_50_17C818C(global_112)
  loc_EACFD1: End If
  loc_EACFD1: Exit Sub
  loc_EACFD2: ' Referenced from: EACF58
  loc_EACFD2: Proc_6_60_E63754()
  loc_EACFD7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1310FB4
  'Data Table: 521E40
  Dim var_DC As Variant
  Dim var_AC As String
  Dim var_124 As TextBox
  Dim var_130 As String
  Dim unk_521E54 As Connection15
  Dim var_CC As Variant
  Dim var_FC As Variant
  loc_1310880: On Error Goto loc_1310F58
  loc_1310895: If (Proc_183_56_FE8B08(global_112) = &HFF) Then
  loc_1310898:   Exit Sub
  loc_1310899: End If
  loc_13108B3: If (global_112.RecordCount <= 0) Then
  loc_13108BC:   Call 0.Method_arg_50 (var_AC)
  loc_13108DD:   MsgBox("Nothing to Delete", &H10, CVar(var_AC), var_FC, var_11C)
  loc_13108F0: Else
  loc_131091C:   Set var_120 = Me.Text1
  loc_1310922:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Salary Where site_code='" & MemVar_1F95070 & "' and Emp_Code='")
  loc_131092A:   var_CC = var_124.Text
  loc_1310933:   var_130 = -1 & var_128
  loc_1310943:   unk_521E54.Execute var_130 & "'", var_138, 
  loc_131097E:   If (var_138.RecordCount > 0) Then
  loc_1310987:     Call 0.Method_arg_50 (var_128)
  loc_13109AE:     MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_13109C1:     Exit Sub
  loc_13109C2:   End If
  loc_13109EE:   Set var_120 = Me.Text1
  loc_13109F4:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Attend Where site_code='" & MemVar_1F95070 & "' and Emp_Code='")
  loc_13109FC:   var_CC = var_124.Text
  loc_1310A05:   var_130 = -1 & var_128
  loc_1310A15:   unk_521E54.Execute var_130 & "'", var_138, 
  loc_1310A50:   If (var_138.RecordCount > 0) Then
  loc_1310A59:     Call 0.Method_arg_50 (var_128)
  loc_1310A80:     MsgBox(CVar("Leave Filled,  " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_1310A93:     Exit Sub
  loc_1310A94:   End If
  loc_1310AC0:   Set var_120 = Me.Text1
  loc_1310AC6:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Attendence Where site_code='" & MemVar_1F95070 & "' and Emp_Code='")
  loc_1310ACE:   var_CC = var_124.Text
  loc_1310AD7:   var_130 = -1 & var_128
  loc_1310AE7:   unk_521E54.Execute var_130 & "'", var_138, 
  loc_1310B22:   If (var_138.RecordCount > 0) Then
  loc_1310B2B:     Call 0.Method_arg_50 (var_128)
  loc_1310B52:     MsgBox(CVar("Attendence Filled, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_1310B65:     Exit Sub
  loc_1310B66:   End If
  loc_1310B92:   Set var_120 = Me.Text1
  loc_1310B98:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Loan Where site_code='" & MemVar_1F95070 & "' and Emp_Code='")
  loc_1310BA0:   var_CC = var_124.Text
  loc_1310BA9:   var_130 = -1 & var_128
  loc_1310BB9:   unk_521E54.Execute var_130 & "'", var_138, 
  loc_1310BF4:   If (var_138.RecordCount > 0) Then
  loc_1310BFD:     Call 0.Method_arg_50 (var_128)
  loc_1310C24:     MsgBox(CVar("Loan Entry Exist, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_1310C37:     Exit Sub
  loc_1310C38:   End If
  loc_1310C64:   Set var_120 = Me.Text1
  loc_1310C6A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From Leave_Ench Where site_code='" & MemVar_1F95070 & "' and Emp_Code='")
  loc_1310C72:   var_CC = var_124.Text
  loc_1310C7B:   var_130 = -1 & var_128
  loc_1310C8B:   unk_521E54.Execute var_130 & "'", var_138, 
  loc_1310CC6:   If (var_138.RecordCount > 0) Then
  loc_1310CCF:     Call 0.Method_arg_50 (var_128)
  loc_1310CF6:     MsgBox(CVar("Leave Encashment Entry Exist, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_1310D09:     Exit Sub
  loc_1310D0A:   End If
  loc_1310D36:   Set var_120 = Me.Text1
  loc_1310D3C:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select * From OverTime Where site_code='" & MemVar_1F95070 & "' and EmpCode='")
  loc_1310D44:   var_CC = var_124.Text
  loc_1310D4D:   var_130 = -1 & var_128
  loc_1310D5D:   unk_521E54.Execute var_130 & "'", var_138, 
  loc_1310D8A:   var_A8 = var_138.RecordCount
  loc_1310D98:   If (var_A8 > 0) Then
  loc_1310DA1:     Call 0.Method_arg_50 (var_128)
  loc_1310DC8:     MsgBox(CVar("Over Time Entry Exist, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_128), var_FC, var_11C)
  loc_1310DDB:     Exit Sub
  loc_1310DDC:   End If
  loc_1310DE7:   var_DC = "Delete Entry !"
  loc_1310E13:   If (MsgBox("Are You Sure To Delete This ? ", &H114, var_DC, var_FC, var_11C) = 6) Then
  loc_1310E1F:     unk_521E54.BeginTrans var_A8
  loc_1310E28:     var_A2 = CByte(1) 'Byte
  loc_1310E40:     var_94 = Me.Recordset15.Bookmark 'Variant
  loc_1310E61:     Set var_120 = Me.Text1
  loc_1310E67:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, "DELETE FROM EMPLOYEE WHERE CODE=")
  loc_1310E76:     Proc_6_17_EAAE40(var_DC, CVar(var_124), var_11C)
  loc_1310E7E:     var_FC = -1 & var_DC 
  loc_1310E82:     var_AC = CStr(var_FC)
  loc_1310E8C:     unk_521E54.Execute var_AC, var_138, 
  loc_1310EAC:     unk_521E54.CommitTrans
  loc_1310EB5:     var_A2 = CByte(0) 'Byte
  loc_1310EC7:     Me.Recordset15.Requery -1
  loc_1310EEA:     If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_1310EFA:       Me.Recordset15.Bookmark = var_94
  loc_1310F02:     Else
  loc_1310F19:       If (global_112.EOF = 0) Then
  loc_1310F25:         Me.Recordset15.MoveLast
  loc_1310F2A:       End If
  loc_1310F2A:     End If
  loc_1310F2A:     Call Proc_315_50_17C818C()
  loc_1310F4F:     Proc_5_0_1107AD0(&HFF, Me)
  loc_1310F57:   End If
  loc_1310F57: End If
  loc_1310F57: Exit Sub
  loc_1310F58: ' Referenced from: 1310880
  loc_1310F61: If (CInt(var_A2) = 1) Then
  loc_1310F6A:   unk_521E54.RollbackTrans
  loc_1310F6F: End If
  loc_1310F77: Set var_120 = Err()
  loc_1310F7D: Call 0.Method_arg_2C (var_AC, global_112)
  loc_1310F9E: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_FC, var_11C)
  loc_1310FB1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FFFAF0
  'Data Table: 521E40
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  loc_FFF8EC: On Error Goto loc_FFFAE9
  loc_FFF901: If (Proc_183_55_FE8490(global_112) = &HFF) Then
  loc_FFF904:   Exit Sub
  loc_FFF905: End If
  loc_FFF90A: Call Proc_315_55_E4A274(&HFF)
  loc_FFF928: var_8C = "EDIT"
  loc_FFF936: Call Proc_315_51_EAFAE4(Proc_5_1_100EC1C(var_8C, Me))
  loc_FFF96D: Proc_6_39_E7D3A0(var_C4, CVar(Me.Recordset15.Fields.Item("OP_Earned")))
  loc_FFF979: global_80 = CSng(var_C4)
  loc_FFF9B2: Proc_6_39_E7D3A0(var_C4, CVar(Me.Recordset15.Fields.Item("OP_Casual")))
  loc_FFF9E8: var_A4 = Me.Recordset15.Fields.Item("Curr_PF_Balance")
  loc_FFF9F7: Proc_6_39_E7D3A0(var_C4, CVar(var_A4), CSng(var_C4))
  loc_FFFA1B: Set var_90 = Me.Text1
  loc_FFFA21: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_A4, 0)
  loc_FFFA29: var_A4.Enabled = CSng(var_C4)
  loc_FFFA3E: Set var_90 = Me.Text1
  loc_FFFA44: Call 0.Method_TopCtrl1_UnknownEvent_D0 (1, var_A4)
  loc_FFFA4C: var_A4.SetFocus
  loc_FFFA64: Set var_90 = Me.Text1
  loc_FFFA6A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (7, var_A4, var_8C)
  loc_FFFA72: global_80 = var_A4.Text
  loc_FFFA7D: global_104 = var_8C
  loc_FFFA97: Set var_90 = Me.Text1
  loc_FFFA9D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (8, var_A4)
  loc_FFFAB0: global_108 = var_A4.Text
  loc_FFFACB: Me.LblUser.Caption = vbNullString
  loc_FFFAE0: Me.LblLDt.Caption = vbNullString
  loc_FFFAE8: Exit Sub
  loc_FFFAE9: ' Referenced from: FFF8EC
  loc_FFFAE9: Proc_6_60_E63754(global_112)
  loc_FFFAEE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1CC0C
  'Data Table: 521E40
  Dim var_3701 As Double
  loc_E1CC01: Me.Global.Unload Me
  loc_E1CC09: Exit Sub
  loc_E1CC0A: var_3701 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB68A4
  'Data Table: 521E40
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EB6814: On Error Goto loc_EB689E
  loc_EB6831: If (Me.Recordset15.RecordCount <= 0) Then
  loc_EB683A:   var_B8 = "Information"
  loc_EB6855:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB6865:   Exit Sub
  loc_EB6866: End If
  loc_EB686D: var_10C = "SELECT Employee.Code as SearchCode, Employee.Name, Employee.Sex, Employee.F_Name, cast(Employee.Birth_Date as varchar(11)) as BirthDate, Employee.Add1, Employee.Add2, Employee.Marital, cast(Employee.Joining_Date as varchar(11)) as JoiningDate, cast(Employee.Resign_Date as varchar(11)) as ResignDate,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active FROM Employee where (LOGSITE_CODE='" & MemVar_1F95078
  loc_EB6874: MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') ORDER BY NAME"
  loc_EB6881: MemVar_1F95120 = Me
  loc_EB6898: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB689D: Exit Sub
  loc_EB689E: ' Referenced from: EB6814
  loc_EB689E: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EB68A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E43860
  'Data Table: 521E40
  loc_E43850: Proc_5_0_1107AD0(&HFF, Me)
  loc_E43858: Call Proc_315_50_17C818C(global_112)
  loc_E4385D: Exit Sub
  loc_E4385E: Set var_3788 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E43798
  'Data Table: 521E40
  loc_E43788: Proc_5_0_1107AD0(&HFF, Me)
  loc_E43790: Call Proc_315_50_17C818C(global_112)
  loc_E43795: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E43540
  'Data Table: 521E40
  loc_E43530: Proc_5_0_1107AD0(&HFF, Me)
  loc_E43538: Call Proc_315_50_17C818C(global_112)
  loc_E4353D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E432E8
  'Data Table: 521E40
  loc_E432D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E432E0: Call Proc_315_50_17C818C(global_112)
  loc_E432E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F96360
  'Data Table: 521E40
  Dim unk_521E54 As Connection15
  Dim var_CC As String
  Dim var_D2 As Integer
  Dim var_B4 As Variant
  loc_F96200: On Error Goto loc_F96358
  loc_F9621D: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F96220:   Exit Sub
  loc_F96221: End If
  loc_F96224: var_88 = "SELECT EMPCATEGORY.Name as Cat_Desc,DESIG.Name as Desg_Desc, Employee.Code, Employee.Name, Employee.Sex, Employee.F_Name, Employee.Birth_Date, Employee.Add1, Employee.Add2, Employee.Marital, Employee.Spouse, Employee.Qualification, Employee.Joining_Date, Employee.ESI_Code, Employee.PF_Code, Employee.Basic, Employee.DA, Employee.HRA ,Employee.Income_Tax, Employee.Other_Allow, Employee.Other_Deduc, Employee.Medical, Employee.Conveyance, Employee.LTA, Employee.PF, Employee.ESI, Employee.IdProof, Employee.IdProofNo FROM (Employee LEFT JOIN Desig ON Employee.Designation = Desig.Code) LEFT JOIN EmpCategory ON Employee.Category = EmpCategory.Code"
  loc_F9622F: If (var_88 = vbNullString) Then
  loc_F96232:   Exit Sub
  loc_F96233: End If
  loc_F96249: unk_521E54.Execute var_88, var_C4, -1
  loc_F96273: Set var_C8 = var_C8 
  loc_F9627F: var_D2 = CreateFieldDefFile(var_C8, MemVar_1F950B4 & "\Empl_Detl.ttx")
  loc_F9628F: var_B4 = CVar(var_D2) 'Integer
  loc_F96292: var_98 = var_B4 'Variant
  loc_F962AE: var_CC = MemVar_1F950B4 & "\Empl_Detl.RPT"
  loc_F962B7: Call 0.Method_arg_1C (var_CC, var_B4, var_C8)
  loc_F962E5: Call 0.Method_arg_64 (var_C8, CVar(var_C8), var_E4, var_F4)
  loc_F962ED: Call 0.Method_arg_2C (var_D2, &HFF)
  loc_F962FB: Call 0.Method_arg_150 (var_C8)
  loc_F96306: Call 0.Method_arg_50 (var_CC)
  loc_F96310: Set var_FC = Nothing
  loc_F9632A: Set var_C8 = var_C8 
  loc_F96336: Proc_6_99_1484404(var_C8, 0, var_CC)
  loc_F96341: MemVar_1F951E8 = var_C8
  loc_F96354: Set var_9C = Nothing
  loc_F96357: Exit Sub
  loc_F96358: ' Referenced from: F96200
  loc_F96358: Proc_6_60_E63754(&HFF)
  loc_F9635D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'EC294C
  'Data Table: 521E40
  Dim Me As Recordset15
  loc_EC28AF: Me.Requery -1
  loc_EC28BF: Me.Requery -1
  loc_EC28CF: Me.Requery -1
  loc_EC28E2: Me.Recordset15.Requery -1
  loc_EC28F3: CVarUnk
  loc_EC28F8: VerifyVarObj
  loc_EC28FE: Set var_A8 = Me.DGLoan
  loc_EC2904: LateIdStAd
  loc_EC291B: CVarUnk
  loc_EC2920: VerifyVarObj
  loc_EC2926: Set var_A8 = Me.DGAcName
  loc_EC292C: LateIdStAd
  loc_EC2945: Me.Requery -1
  loc_EC294A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '19F9E54
  'Data Table: 521E40
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_B0 As Variant
  Dim var_10C As Variant
  Dim var_B8 As Variant
  Dim var_164 As String
  Dim unk_521E54 As Connection15
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_168 As String
  Dim var_110 As Variant
  Dim var_17C As Field20
  Dim var_DC As Variant
  Dim var_8A As Variant
  Dim var_130 As Variant
  Dim var_1B4 As Variant
  Dim var_1FC As Variant
  Dim var_244 As Variant
  Dim var_29C As Variant
  Dim var_2F4 As Variant
  Dim var_34C As Variant
  Dim var_394 As TextBox
  Dim var_1500 As Double
  Dim var_3DC As TextBox
  Dim var_1508 As Double
  Dim var_424 As TextBox
  Dim var_1510 As Double
  Dim var_470 As TextBox
  Dim var_1518 As Double
  Dim var_4BC As TextBox
  Dim var_1520 As Double
  Dim var_508 As TextBox
  Dim var_1528 As Double
  Dim var_554 As TextBox
  Dim var_1530 As Double
  Dim var_5A0 As TextBox
  Dim var_1538 As Double
  Dim var_5EC As TextBox
  Dim var_1540 As Double
  Dim var_638 As TextBox
  Dim var_1548 As Double
  Dim var_684 As TextBox
  Dim var_1550 As Double
  Dim var_6D0 As TextBox
  Dim var_1558 As Double
  Dim var_71C As TextBox
  Dim var_1560 As Double
  Dim var_768 As TextBox
  Dim var_1568 As Double
  Dim var_7B4 As TextBox
  Dim var_1570 As Double
  Dim var_800 As TextBox
  Dim var_1578 As Double
  Dim var_84C As TextBox
  Dim var_1580 As Double
  Dim var_898 As TextBox
  Dim var_1588 As Double
  Dim var_8E4 As TextBox
  Dim var_1590 As Double
  Dim var_930 As TextBox
  Dim var_1598 As Double
  Dim var_97C As TextBox
  Dim var_9C8 As TextBox
  Dim var_A14 As TextBox
  Dim var_A60 As TextBox
  Dim var_C60 As CheckBox
  Dim var_CF4 As CheckBox
  Dim var_EA8 As Variant
  Dim var_EF0 As Variant
  Dim var_F88 As TextBox
  Dim var_15A0 As Double
  Dim var_FD4 As TextBox
  Dim var_15A8 As Double
  Dim var_1078 As TextBox
  Dim var_15B0 As Double
  Dim var_122C As Variant
  Dim var_1364 As Image
  Dim var_136C As Image
  Dim var_1110 As TextBox
  Dim var_1124 As Variant
  Dim var_1138 As String
  Dim var_1130 As TextBox
  Dim var_1174 As Variant
  Dim var_12A0 As Variant
  Dim var_36C As Variant
  Dim var_41C As Variant
  Dim var_4E0 As Variant
  Dim var_500 As Variant
  Dim var_610 As Variant
  Dim var_64C As Variant
  Dim var_65C As Variant
  Dim var_66C As Variant
  Dim var_714 As Variant
  Dim var_7D8 As Variant
  Dim var_7F8 As Variant
  Dim var_8F8 As Variant
  Dim var_908 As Variant
  Dim var_918 As Variant
  Dim var_954 As Variant
  Dim var_A28 As Variant
  Dim var_A74 As Variant
  Dim var_AFC As Variant
  Dim var_BAC As Variant
  Dim var_D68 As Variant
  Dim var_D88 As Variant
  Dim var_DE0 As Variant
  Dim var_E90 As Variant
  Dim var_1018 As Variant
  Dim var_10BC As Variant
  Dim var_14D0 As Variant
  Dim var_E98 As TextBox
  Dim var_EE0 As TextBox
  Dim var_101C As CheckBox
  Dim var_1020 As CheckBox
  Dim var_1164 As Variant
  Dim var_1228 As Image
  Dim var_150 As Variant
  Dim var_1C4 As Variant
  Dim var_20C As Variant
  Dim var_254 As Variant
  Dim var_2AC As Variant
  Dim var_304 As Variant
  Dim var_35C As Variant
  Dim var_DB0 As Variant
  Dim var_E08 As Variant
  Dim var_E60 As Variant
  Dim var_1040 As Variant
  Dim var_14F4 As Variant
  Dim var_1134 As String
  loc_19F705C: On Error Goto loc_19F9E37
  loc_19F706A: Set var_AC = Me.Text1
  loc_19F7070: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_19F7099: If (Proc_6_27_EA61EC(var_B0, "Name") = 0) Then
  loc_19F709C:   Exit Sub
  loc_19F709D: End If
  loc_19F70A8: Set var_AC = Me.Text1
  loc_19F70AE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B0)
  loc_19F70D7: If (Proc_6_27_EA61EC(var_B0, "Address") = 0) Then
  loc_19F70DA:   Exit Sub
  loc_19F70DB: End If
  loc_19F70E6: Set var_AC = Me.Text1
  loc_19F70EC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_B0)
  loc_19F7115: If (Proc_6_27_EA61EC(var_B0, "Sex") = 0) Then
  loc_19F7118:   Exit Sub
  loc_19F7119: End If
  loc_19F7124: Set var_AC = Me.Text1
  loc_19F712A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_B0)
  loc_19F7153: If (Proc_6_27_EA61EC(var_B0, "Department") = 0) Then
  loc_19F7156:   Exit Sub
  loc_19F7157: End If
  loc_19F7162: Set var_AC = Me.Text1
  loc_19F7168: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_B0)
  loc_19F7191: If (Proc_6_27_EA61EC(var_B0, "Designation") = 0) Then
  loc_19F7194:   Exit Sub
  loc_19F7195: End If
  loc_19F71A0: Set var_AC = Me.Text1
  loc_19F71A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_B0)
  loc_19F71CF: If (Proc_6_27_EA61EC(var_B0, "Category") = 0) Then
  loc_19F71D2:   Exit Sub
  loc_19F71D3: End If
  loc_19F71DE: Set var_AC = Me.Text1
  loc_19F71E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_B0)
  loc_19F720D: If (Proc_6_27_EA61EC(var_B0, "A/C Name") = 0) Then
  loc_19F7210:   Exit Sub
  loc_19F7211: End If
  loc_19F721C: Set var_AC = Me.Text1
  loc_19F7222: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_B0)
  loc_19F724B: If (Proc_6_27_EA61EC(var_B0, "Joining Date") = 0) Then
  loc_19F724E:   Exit Sub
  loc_19F724F: End If
  loc_19F725A: Set var_AC = Me.Text1
  loc_19F7260: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_B0)
  loc_19F7289: If (Proc_6_27_EA61EC(var_B0, "Id. Proof") = 0) Then
  loc_19F7293:   Call Text1_GotFocus(CInt(&H32))
  loc_19F7298:   Exit Sub
  loc_19F7299: End If
  loc_19F72A4: Set var_AC = Me.Text1
  loc_19F72AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_B0)
  loc_19F72DA: Set var_B4 = Me.Text1
  loc_19F72E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_110)
  loc_19F72E8: var_120 = CVar(var_110) 'Address
  loc_19F7319: If CBool((Len(Trim(CVar(var_B0))) <> 0) And (Trim(var_120) <> "NA")) Then
  loc_19F7327:   Set var_AC = Me.Text1
  loc_19F732D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_B0)
  loc_19F7356:   If (Proc_6_27_EA61EC(var_B0, "Id. Proof No.") = 0) Then
  loc_19F7360:     Call Text1_GotFocus(CInt(&H33))
  loc_19F7365:     Exit Sub
  loc_19F7366:   End If
  loc_19F7366: End If
  loc_19F7371: Set var_AC = Me.Text1
  loc_19F7377: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_B0)
  loc_19F73A0: If (Proc_6_27_EA61EC(var_B0, "Basic") = 0) Then
  loc_19F73A3:   Exit Sub
  loc_19F73A4: End If
  loc_19F73B2: Set var_AC = Me.Text1
  loc_19F73B8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_B0)
  loc_19F73DC: Set var_B4 = Me.Text1
  loc_19F73E2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_110)
  loc_19F73EA: var_CC = CVar(var_110) 'Address
  loc_19F73F1: var_DC = Trim(var_CC)
  loc_19F741E: If CBool((var_B0.Text = "Yes") And (var_DC = vbNullString)) Then
  loc_19F742F:   Set var_AC = Me.Text1
  loc_19F7435:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_B0)
  loc_19F743D:   var_B0.Text = "Sunday"
  loc_19F7449: End If
  loc_19F7454: Set var_AC = Me.Text1
  loc_19F745A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_B0)
  loc_19F7483: If (Proc_6_27_EA61EC(var_B0, "Active") = 0) Then
  loc_19F7486:   Exit Sub
  loc_19F7487: End If
  loc_19F748B: Set var_AC = Me.TopCtrl1
  loc_19F7491: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_B0)
  loc_19F74AA: If (CStr() = "Add") Then
  loc_19F74B3:   var_140 = 0
  loc_19F74D0:   var_B8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From Employee where Site_Code='" & MemVar_1F95070
  loc_19F74E0:   unk_521E54.Execute CStr() & "'", var_CC, -1
  loc_19F74E8:   var_AC = var_AC.Fields
  loc_19F74F0:   var_140 = var_B0.Item(var_B0)
  loc_19F74F8:   var_B4 = var_B4.Value
  loc_19F7531:   var_EC = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_19F753E:   var_140 = "000000"
  loc_19F7557:   var_DC = Format(CStr(var_DC), var_140)
  loc_19F755F:   var_10C = (1 + var_DC)
  loc_19F756A:   global_72 = CStr((var_B0.Text = "Yes") And (var_DC = vbNullString))
  loc_19F757F: Else
  loc_19F75B0:   var_B8 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_19F75B6:   global_72 = var_B8
  loc_19F75C7: End If
  loc_19F75D3: Call 0.Method_arg_38 (MemVar_1F95218, var_B8, 1)
  loc_19F75F0: var_A0 = var_B8 & "\EMP" & global_72 & ".jpg"
  loc_19F7608: Call 0.Method_arg_38 (MemVar_1F95218, var_B8)
  loc_19F761E: var_168 = var_B8 & "\IdProof\EMPID" & global_72
  loc_19F7625: var_A4 = var_168 & ".jpg"
  loc_19F7653: If (Proc_142_3_E98110(Me.EmployeeImage, var_A0) = &HFF) Then
  loc_19F765D:   Set var_AC = Me.EmployeeImage
  loc_19F7663:   Me.EmployeeImage.Tag = var_A0
  loc_19F766B: End If
  loc_19F766F: Set var_B0 = Me.IdProofImage
  loc_19F768D: If (Proc_142_3_E98110(var_B0, var_A4) = &HFF) Then
  loc_19F769D:   Me.IdProofImage.Tag = var_A4
  loc_19F76A5: End If
  loc_19F76B9: Set var_AC = Me.Text1
  loc_19F76BF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, var_B8)
  loc_19F76C7: global_104 = var_B0.Text
  loc_19F76DB: If (var_EC <> var_B8) Then
  loc_19F770A:   Set var_AC = Me.Text1
  loc_19F7710:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE ESI_Code=", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1, var_B4)
  loc_19F771F:   Proc_6_17_EAAE40(var_DC, CVar(var_B0), var_110, 0)
  loc_19F7727:   var_EC = var_17C & var_DC 
  loc_19F772B:   var_B8 = CStr(var_EC)
  loc_19F7735:   unk_521E54.Execute var_B8, var_120, var_DC
  loc_19F773D:    = var_B4.Fields
  loc_19F7745:    = var_110.Item()
  loc_19F774D:    = var_17C.Value
  loc_19F7778:   If (var_120 > 0) Then
  loc_19F7781:     Call 0.Method_arg_50 (var_B8)
  loc_19F778F:     var_DC = CVar(var_B8) 'String
  loc_19F77A2:     MsgBox("* Duplicate E.S.I.Code *", &H10, var_DC, var_EC, (var_B0.Text = "Yes") And (var_DC = vbNullString))
  loc_19F77BD:     Set var_AC = Me.Text1
  loc_19F77C3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7))
  loc_19F77CB:     var_B0.SetFocus
  loc_19F77D7:     Exit Sub
  loc_19F77D8:   End If
  loc_19F77D8: End If
  loc_19F77EC: Set var_AC = Me.Text1
  loc_19F77F2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, var_B8)
  loc_19F77FA: global_108 = var_B0.Text
  loc_19F780E: If (var_B0 <> var_B8) Then
  loc_19F783D:   Set var_AC = Me.Text1
  loc_19F7843:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE PF_Code=", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1)
  loc_19F7852:   Proc_6_17_EAAE40(var_DC, CVar(var_B0), var_B4, var_110)
  loc_19F785A:   var_EC = 0 & var_DC 
  loc_19F785E:   var_B8 = CStr(var_EC)
  loc_19F7868:   unk_521E54.Execute var_B8, var_17C, var_120
  loc_19F7870:    = var_B4.Fields
  loc_19F7878:    = var_110.Item()
  loc_19F7880:    = var_17C.Value
  loc_19F78AB:   If (var_120 > 0) Then
  loc_19F78B4:     Call 0.Method_arg_50 (var_B8)
  loc_19F78C2:     var_DC = CVar(var_B8) 'String
  loc_19F78D5:     MsgBox("* Duplicate P.F.Code *", &H10, var_DC, var_EC, (var_B0.Text = "Yes") And (var_DC = vbNullString))
  loc_19F78F0:     Set var_AC = Me.Text1
  loc_19F78F6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8))
  loc_19F78FE:     var_B0.SetFocus
  loc_19F790A:     Exit Sub
  loc_19F790B:   End If
  loc_19F790B: End If
  loc_19F790D: var_8A = &HFF
  loc_19F7919: unk_521E54.BeginTrans var_190
  loc_19F7932: Set var_AC = Me.Text1
  loc_19F7938: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, var_B8)
  loc_19F7940: global_104 = var_B0.Text
  loc_19F7954: If (var_8A <> var_B8) Then
  loc_19F7983:   Set var_AC = Me.Text1
  loc_19F7989:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE ESI_Code=", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1, var_B4)
  loc_19F7998:   Proc_6_17_EAAE40(var_DC, CVar(var_B0), var_110, 0)
  loc_19F79A0:   var_EC = var_17C & var_DC 
  loc_19F79A4:   var_B8 = CStr(var_EC)
  loc_19F79AE:   unk_521E54.Execute var_B8, var_120, var_B0
  loc_19F79B6:    = var_B4.Fields
  loc_19F79BE:    = var_110.Item()
  loc_19F79C6:    = var_17C.Value
  loc_19F79F1:   If (var_120 > 0) Then
  loc_19F79FA:     Call 0.Method_arg_50 (var_B8)
  loc_19F7A08:     var_DC = CVar(var_B8) 'String
  loc_19F7A1B:     MsgBox("* Duplicate E.S.I.Code *", &H10, var_DC, var_EC, (var_B0.Text = "Yes") And (var_DC = vbNullString))
  loc_19F7A36:     Set var_AC = Me.Text1
  loc_19F7A3C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7))
  loc_19F7A44:     var_B0.SetFocus
  loc_19F7A50:     Exit Sub
  loc_19F7A51:   End If
  loc_19F7A51: End If
  loc_19F7A65: Set var_AC = Me.Text1
  loc_19F7A6B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, var_B8)
  loc_19F7A73: global_108 = var_B0.Text
  loc_19F7A87: If (var_B0 <> var_B8) Then
  loc_19F7AB6:   Set var_AC = Me.Text1
  loc_19F7ABC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B0, "SELECT COUNT(*) FROM EMPLOYEE WHERE PF_Code=", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1)
  loc_19F7ACB:   Proc_6_17_EAAE40(var_DC, CVar(var_B0), var_B4, var_110)
  loc_19F7AD3:   var_EC = 0 & var_DC 
  loc_19F7AD7:   var_B8 = CStr(var_EC)
  loc_19F7AE1:   unk_521E54.Execute var_B8, var_17C, var_120
  loc_19F7AE9:    = var_B4.Fields
  loc_19F7AF1:    = var_110.Item()
  loc_19F7AF9:    = var_17C.Value
  loc_19F7B24:   If (var_120 > 0) Then
  loc_19F7B2D:     Call 0.Method_arg_50 (var_B8)
  loc_19F7B3B:     var_DC = CVar(var_B8) 'String
  loc_19F7B4E:     MsgBox("* Duplicate P.F.Code *", &H10, var_DC, var_EC, (var_B0.Text = "Yes") And (var_DC = vbNullString))
  loc_19F7B69:     Set var_AC = Me.Text1
  loc_19F7B6F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8))
  loc_19F7B77:     var_B0.SetFocus
  loc_19F7B83:     Exit Sub
  loc_19F7B84:   End If
  loc_19F7B84: End If
  loc_19F7B88: Set var_AC = Me.TopCtrl1
  loc_19F7B8E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_B0)
  loc_19F7BA7: If (CStr() = "Add") Then
  loc_19F7BD6:   Set var_AC = Me.Text1
  loc_19F7BDC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, "SELECT COUNT(*) FROM Employee WHERE code = ", (var_B0.Text = "Yes") And (var_DC = vbNullString), -1)
  loc_19F7BEB:   Proc_6_17_EAAE40(var_DC, CVar(var_B0), var_B4, var_110)
  loc_19F7BF3:   var_EC = 0 & var_DC 
  loc_19F7BF7:   var_B8 = CStr(var_EC)
  loc_19F7C01:   unk_521E54.Execute var_B8, var_17C, var_120
  loc_19F7C09:    = var_B4.Fields
  loc_19F7C11:    = var_110.Item()
  loc_19F7C19:    = var_17C.Value
  loc_19F7C44:   If (var_120 > 0) Then
  loc_19F7C4D:     Call 0.Method_arg_50 (var_B8)
  loc_19F7C5B:     var_DC = CVar(var_B8) 'String
  loc_19F7C6E:     MsgBox("* Duplicate Code *", &H10, var_DC, var_EC, (var_B0.Text = "Yes") And (var_DC = vbNullString))
  loc_19F7C84:     unk_521E54.RollbackTrans
  loc_19F7C94:     Set var_AC = Me.Text1
  loc_19F7C9A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_19F7CA2:     var_B0.SetFocus
  loc_19F7CAE:     Exit Sub
  loc_19F7CAF:   End If
  loc_19F7CBA:   Set var_AC = Me.Text1
  loc_19F7CC0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B0)
  loc_19F7CC8:   var_CC = CVar(var_B0) 'Address
  loc_19F7CCF:   Proc_6_17_EAAE40(var_DC, var_CC)
  loc_19F7CDF:   Set var_B4 = Me.Text1
  loc_19F7CE5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_110)
  loc_19F7CED:   var_130 = CVar(var_110) 'Address
  loc_19F7CF4:   Proc_6_17_EAAE40(var_150, var_130)
  loc_19F7D04:   Set var_17C = Me.Text1
  loc_19F7D0A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A4)
  loc_19F7D12:   var_1B4 = CVar(var_1A4) 'Address
  loc_19F7D19:   Proc_6_17_EAAE40(var_1C4, var_1B4)
  loc_19F7D29:   Set var_1E8 = Me.Text1
  loc_19F7D2F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1EC)
  loc_19F7D37:   var_1FC = CVar(var_1EC) 'Address
  loc_19F7D3E:   Proc_6_17_EAAE40(var_20C, var_1FC)
  loc_19F7D4E:   Set var_230 = Me.Text1
  loc_19F7D54:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_234)
  loc_19F7D5C:   var_244 = CVar(var_234) 'Address
  loc_19F7D63:   Proc_6_17_EAAE40(var_254, var_244)
  loc_19F7D73:   Set var_288 = Me.Text1
  loc_19F7D79:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_28C)
  loc_19F7D81:   var_29C = CVar(var_28C) 'Address
  loc_19F7D88:   Proc_6_17_EAAE40(var_2AC, var_29C)
  loc_19F7D98:   Set var_2E0 = Me.Text1
  loc_19F7D9E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E4)
  loc_19F7DA6:   var_2F4 = CVar(var_2E4) 'Address
  loc_19F7DAD:   Proc_6_17_EAAE40(var_304, var_2F4)
  loc_19F7DBD:   Set var_338 = Me.Text1
  loc_19F7DC3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_33C)
  loc_19F7DCB:   var_34C = CVar(var_33C) 'Address
  loc_19F7DD2:   Proc_6_17_EAAE40(var_35C, var_34C)
  loc_19F7DE5:   Set var_390 = Me.Text1
  loc_19F7DEB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_394)
  loc_19F7DF3:   var_164 = var_394.Text
  loc_19F7E00:   var_1500 = Val(var_164)
  loc_19F7E11:   Set var_3D8 = Me.Text1
  loc_19F7E17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3DC, var_168)
  loc_19F7E2C:   var_1508 = Val(var_168)
  loc_19F7E3D:   Set var_420 = Me.Text1
  loc_19F7E43:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_424, var_428)
  loc_19F7E58:   var_1510 = Val(var_428)
  loc_19F7E69:   Set var_46C = Me.Text1
  loc_19F7E6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_470, var_474)
  loc_19F7E84:   var_1518 = Val(var_474)
  loc_19F7E95:   Set var_4B8 = Me.Text1
  loc_19F7E9B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_4BC, var_4C0)
  loc_19F7EB0:   var_1520 = Val(var_4C0)
  loc_19F7EC1:   Set var_504 = Me.Text1
  loc_19F7EC7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_508, var_50C)
  loc_19F7EDC:   var_1528 = Val(var_50C)
  loc_19F7EED:   Set var_550 = Me.Text1
  loc_19F7EF3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_554, var_558)
  loc_19F7F08:   var_1530 = Val(var_558)
  loc_19F7F19:   Set var_59C = Me.Text1
  loc_19F7F1F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_5A0, var_5A4)
  loc_19F7F34:   var_1538 = Val(var_5A4)
  loc_19F7F45:   Set var_5E8 = Me.Text1
  loc_19F7F4B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_5EC, var_5F0)
  loc_19F7F60:   var_1540 = Val(var_5F0)
  loc_19F7F71:   Set var_634 = Me.Text1
  loc_19F7F77:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_638, var_63C)
  loc_19F7F8C:   var_1548 = Val(var_63C)
  loc_19F7F9D:   Set var_680 = Me.Text1
  loc_19F7FA3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_684, var_688)
  loc_19F7FB8:   var_1550 = Val(var_688)
  loc_19F7FC9:   Set var_6CC = Me.Text1
  loc_19F7FCF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_6D0, var_6D4)
  loc_19F7FE4:   var_1558 = Val(var_6D4)
  loc_19F7FF5:   Set var_718 = Me.Text1
  loc_19F7FFB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_71C, var_720)
  loc_19F8010:   var_1560 = Val(var_720)
  loc_19F8021:   Set var_764 = Me.Text1
  loc_19F8027:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_768, var_76C)
  loc_19F803C:   var_1568 = Val(var_76C)
  loc_19F804D:   Set var_7B0 = Me.Text1
  loc_19F8053:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_7B4, var_7B8)
  loc_19F8068:   var_1570 = Val(var_7B8)
  loc_19F8079:   Set var_7FC = Me.Text1
  loc_19F807F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_800, var_804)
  loc_19F8094:   var_1578 = Val(var_804)
  loc_19F80A5:   Set var_848 = Me.Text1
  loc_19F80AB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_84C, var_850)
  loc_19F80C0:   var_1580 = Val(var_850)
  loc_19F80D1:   Set var_894 = Me.Text1
  loc_19F80D7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_898, var_89C)
  loc_19F80EC:   var_1588 = Val(var_89C)
  loc_19F80FD:   Set var_8E0 = Me.Text1
  loc_19F8103:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_8E4, var_8E8)
  loc_19F8118:   var_1590 = Val(var_8E8)
  loc_19F8129:   Set var_92C = Me.Text1
  loc_19F812F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_930, var_934)
  loc_19F8144:   var_1598 = Val(var_934)
  loc_19F8155:   Set var_978 = Me.Text1
  loc_19F815B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_97C, var_980)
  loc_19F8176:   Set var_9C4 = Me.Text1
  loc_19F817C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_9C8)
  loc_19F8197:   Set var_A10 = Me.Text1
  loc_19F819D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_A14)
  loc_19F81B8:   Set var_A5C = Me.Text1
  loc_19F81BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_A60)
  loc_19F81D6:   Set var_AA8 = Me.Text1
  loc_19F81DC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_AAC)
  loc_19F81EB:   Proc_6_7_F26918(var_ACC, CVar(var_AAC))
  loc_19F81FB:   Set var_B00 = Me.Text1
  loc_19F8201:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_B04)
  loc_19F8210:   Proc_6_7_F26918(var_B24, CVar(var_B04))
  loc_19F8220:   Set var_B58 = Me.Text1
  loc_19F8226:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_B5C)
  loc_19F8235:   Proc_6_7_F26918(var_B7C, CVar(var_B5C))
  loc_19F8245:   Set var_BB0 = Me.Text1
  loc_19F824B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_BB4)
  loc_19F825A:   Proc_6_17_EAAE40(var_BD4, CVar(var_BB4))
  loc_19F826A:   Set var_C08 = Me.Text1
  loc_19F8270:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_C0C)
  loc_19F827F:   Proc_6_17_EAAE40(var_C2C, CVar(var_C0C))
  loc_19F8291:   var_BA = Me.Check1.Value
  loc_19F829B:   var_CB0 = "'N'"
  loc_19F82C5:   Set var_CF4 = Me.Check2
  loc_19F82E0:   var_D28 = "'Y'"
  loc_19F8303:   Set var_D8C = Me.Text1
  loc_19F8309:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_D90)
  loc_19F8318:   Proc_6_17_EAAE40(var_DB0, CVar(var_D90))
  loc_19F8328:   Set var_DE4 = Me.Text1
  loc_19F832E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_DE8)
  loc_19F833D:   Proc_6_17_EAAE40(var_E08, CVar(var_DE8))
  loc_19F834D:   Set var_E3C = Me.Text1
  loc_19F8353:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_E40)
  loc_19F8362:   Proc_6_39_E7D3A0(var_E60, CVar(var_E40))
  loc_19F8372:   Set var_E94 = Me.Text1
  loc_19F8378:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_E98)
  loc_19F8397:   Set var_EDC = Me.Text1
  loc_19F839D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_EE0)
  loc_19F83A5:   var_EF0 = CVar(var_EE0) 'Address
  loc_19F83E1:   Proc_6_17_EAAE40(var_F50, IIf((Trim(CVar(var_E98)) = vbNullString), "No", Trim(var_EF0)))
  loc_19F83F4:   Set var_F84 = Me.Text1
  loc_19F83FA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_F88)
  loc_19F8402:   var_F8C = var_F88.Text
  loc_19F840F:   var_15A0 = Val(var_F8C)
  loc_19F8420:   Set var_FD0 = Me.Text1
  loc_19F8426:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_FD4, var_FD8)
  loc_19F843B:   var_15A8 = Val(var_FD8)
  loc_19F8449:   Set var_101C = Me.Text1
  loc_19F844F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_1020)
  loc_19F845E:   Proc_6_17_EAAE40(var_1040, CVar(var_1020))
  loc_19F8471:   Set var_1074 = Me.Text1
  loc_19F8477:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_1078, var_107C)
  loc_19F8492:   Set var_10C0 = Me.Text1
  loc_19F8498:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_10C4)
  loc_19F84AD:   var_15B0 = Val(var_10C4.Text)
  loc_19F84BE:   Set var_1228 = Me.Text1
  loc_19F84C4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_122C, var_1230)
  loc_19F850E:   Set var_136C = Me.IdProofImage
  loc_19F8527:   Set var_110C = Me.Text1
  loc_19F852D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_1110)
  loc_19F854C:   var_1138 = Proc_6_38_E69628(CVar(var_1110.Text)) & "','"
  loc_19F855D:   Set var_112C = Me.Text1
  loc_19F8563:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_1130, var_1134)
  loc_19F856B:   var_1138 = var_1130.Tag
  loc_19F8589:   var_1174 = CVar(var_B0 & var_1134 & "','" & MemVar_1F95070 & "',") 'String
  loc_19F8597:   Proc_6_8_EB1974(var_1164)
  loc_19F85F3:   var_12A0 = CVar(Proc_6_14_EF402C(var_1174)) & var_1164 & ",'A','" & CVar(MemVar_1F950C8) & "','" & CVar(MemVar_1F95078) & "'," & IIf((var_1230 = "No"), 0, 1) 
  loc_19F8629:   Proc_6_17_EAAE40(var_1330, IIf((Me.EmployeeImage.Visible = &HFF), CVar(Me.EmployeeImage.Tag), vbNullString))
  loc_19F8667:   Proc_6_17_EAAE40(var_13D0, IIf((Me.IdProofImage.Visible = &HFF), CVar(var_136C.Tag), vbNullString))
  loc_19F8687:   Set var_1404 = Me.Text1
  loc_19F868D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_1408)
  loc_19F869C:   Proc_6_17_EAAE40(var_1428, CVar(var_1408))
  loc_19F86BC:   Set var_145C = Me.Text1
  loc_19F86C2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_1460)
  loc_19F86D1:   Proc_6_17_EAAE40(var_1480, CVar(var_1460))
  loc_19F8705:   var_B8 = "INSERT INTO EMPLOYEE (Code,Name,F_Name,Add1,Add2,Spouse,Qualification,ESI_Code, PF_Code,Basic,DA,HRA,Income_Tax,Other_Allow,Other_Deduc,Conveyance,Medical,LTA,Curr_PF_Balance, OP_PF_Balance,OP_Loan,OP_Inst,OP_Advance,Tot_CL_Allow,Tot_EL_Allow,OP_Earned,OP_Casual, Curr_Earned,Curr_Casual,Department,Designation,Category,AC_CODE,Birth_Date,Joining_Date,Resign_Date,Sex,Marital, PF_YN, ESI_YN,Phone,PAN,increment,sunday,TOT_DL_ALLOW,TOT_VL_ALLOW,CURR_VL,CURR_DL,BankAcNo,IncrMth,OTRate,Offday,LOanAc,Site_Code,U_EntDt,U_AE,U_Name,LOGSITE_CODE,ActiveYN,PicPath,IdPicPath,IdProof,IdProofNo) VALUES ('" & global_72
  loc_19F870C:   var_EC = CVar(var_B8 & "',") 'String
  loc_19F8712:   var_10C = var_EC & var_DC 
  loc_19F8716:   var_FC = ","
  loc_19F8726:   var_140 = ","
  loc_19F8782:   var_36C = var_10C & var_FC & var_150 & var_140 & var_1C4 & "," & var_20C & "," & var_254 & "," & var_2AC & "," & var_304 & "," & var_35C 
  loc_19F87E6:   var_4E0 = var_36C & "," & CVar(var_3DC.Text) & "," & CVar(var_424.Text) & "," & CVar(var_470.Text) & "," & CVar(var_4BC.Text) & "," & CVar(var_508.Text) 
  loc_19F884A:   var_65C = var_4E0 & "," & CVar(var_554.Text) & "," & CVar(var_5A0.Text) & "," & CVar(var_5EC.Text) & "," & CVar(var_638.Text) & "," & CVar(var_684.Text) 
  loc_19F88AE:   var_7D8 = var_65C & "," & CVar(var_6D0.Text) & "," & CVar(var_71C.Text) & "," & CVar(var_768.Text) & "," & CVar(var_7B4.Text) & "," & CVar(var_800.Text) 
  loc_19F8912:   var_954 = var_7D8 & "," & CVar(var_84C.Text) & "," & CVar(var_898.Text) & "," & CVar(var_8E4.Text) & "," & CVar(var_930.Text) & "," & CVar(var_97C.Tag) 
  loc_19F895B:   var_A74 = CVar(var_A60.Tag) 'String
  loc_19F8977:   var_AFC = var_954 & ",'" & CVar(var_980) & "','" & CVar(var_9C8.Tag) & "','" & CVar(var_A14.Tag) & "','" & var_A74 & "'," & var_ACC & "," 
  loc_19F89CE:   var_D68 = var_AFC & var_B24 & "," & var_B7C & "," & var_BD4 & "," & var_C2C & "," & IIf((var_BA = 1), "'Y'", var_CB0) & "," & IIf((var_CF4.Value = 1), var_D28, "'N'") 
  loc_19F89D7:   var_D88 = var_D68 & "," 
  loc_19F89E7:   var_DE0 = var_D88 & var_DB0 & "," 
  loc_19F8A07:   var_E90 = var_DE0 & var_E08 & "," & var_E60 & "," 
  loc_19F8A62:   var_10BC = var_E90 & var_F50 & "," & CVar(var_FD4.Text) & "," & CVar(var_1078.Text) & ",0,0," & var_1040 & ",'" & CVar(var_107C) & "','" 
  loc_19F8A7D:   var_14D0 = var_10BC & CVar(var_122C.Text) & "','" & Trim(var_12A0 & "," & var_1330 & "," & var_13D0 & "," & var_1428 & "," & var_1480 & ")") 
  loc_19F8A8B:   unk_521E54.Execute CStr(var_14D0), var_14F4, -1
  loc_19F8D12: Else
  loc_19F8D2D:   If (Me.Check1.Value = 1) Then
  loc_19F8D36:     var_9A = "Y"
  loc_19F8D3C:   Else
  loc_19F8D42:     var_9A = "N"
  loc_19F8D45:   End If
  loc_19F8D50:   Set var_AC = Me.Text1
  loc_19F8D56:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B0)
  loc_19F8D5E:   var_CC = CVar(var_B0) 'Address
  loc_19F8D65:   Proc_6_17_EAAE40(var_DC, var_CC)
  loc_19F8D75:   Set var_B4 = Me.Text1
  loc_19F8D7B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_110)
  loc_19F8D83:   var_120 = CVar(var_110) 'Address
  loc_19F8D8A:   Proc_6_17_EAAE40(var_130, var_120)
  loc_19F8D9A:   Set var_17C = Me.Text1
  loc_19F8DA0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A4)
  loc_19F8DAF:   Proc_6_17_EAAE40(var_1B4, CVar(var_1A4))
  loc_19F8DBF:   Set var_1E8 = Me.Text1
  loc_19F8DC5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1EC)
  loc_19F8DD4:   Proc_6_17_EAAE40(var_1FC, CVar(var_1EC))
  loc_19F8DE4:   Set var_230 = Me.Text1
  loc_19F8DEA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_234)
  loc_19F8DF9:   Proc_6_17_EAAE40(var_244, CVar(var_234))
  loc_19F8E09:   Set var_288 = Me.Text1
  loc_19F8E0F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_28C)
  loc_19F8E1E:   Proc_6_17_EAAE40(var_29C, CVar(var_28C))
  loc_19F8E2E:   Set var_2E0 = Me.Text1
  loc_19F8E34:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E4)
  loc_19F8E43:   Proc_6_17_EAAE40(var_2F4, CVar(var_2E4))
  loc_19F8E53:   Set var_338 = Me.Text1
  loc_19F8E59:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_33C)
  loc_19F8E68:   Proc_6_17_EAAE40(var_34C, CVar(var_33C))
  loc_19F8E7B:   Set var_390 = Me.Text1
  loc_19F8E81:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_394)
  loc_19F8E89:   var_B8 = var_394.Text
  loc_19F8E96:   var_1500 = Val(var_B8)
  loc_19F8EA7:   Set var_3D8 = Me.Text1
  loc_19F8EAD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3DC, var_164)
  loc_19F8EC2:   var_1508 = Val(var_164)
  loc_19F8ED3:   Set var_420 = Me.Text1
  loc_19F8ED9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_424, var_168)
  loc_19F8EEE:   var_1510 = Val(var_168)
  loc_19F8EFF:   Set var_46C = Me.Text1
  loc_19F8F05:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_470, var_428)
  loc_19F8F1A:   var_1518 = Val(var_428)
  loc_19F8F2B:   Set var_4B8 = Me.Text1
  loc_19F8F31:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_4BC, var_474)
  loc_19F8F46:   var_1520 = Val(var_474)
  loc_19F8F57:   Set var_504 = Me.Text1
  loc_19F8F5D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_508, var_4C0)
  loc_19F8F72:   var_1528 = Val(var_4C0)
  loc_19F8F83:   Set var_550 = Me.Text1
  loc_19F8F89:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_554, var_50C)
  loc_19F8F9E:   var_1530 = Val(var_50C)
  loc_19F8FAF:   Set var_59C = Me.Text1
  loc_19F8FB5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_5A0, var_558)
  loc_19F8FCA:   var_1538 = Val(var_558)
  loc_19F8FDB:   Set var_5E8 = Me.Text1
  loc_19F8FE1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_5EC, var_5A4)
  loc_19F8FF6:   var_1540 = Val(var_5A4)
  loc_19F9007:   Set var_634 = Me.Text1
  loc_19F900D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_638, var_5F0)
  loc_19F9022:   var_1548 = Val(var_5F0)
  loc_19F9033:   Set var_680 = Me.Text1
  loc_19F9039:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_684, var_63C)
  loc_19F904E:   var_1550 = Val(var_63C)
  loc_19F905F:   Set var_6CC = Me.Text1
  loc_19F9065:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_6D0, var_688)
  loc_19F907A:   var_1558 = Val(var_688)
  loc_19F908B:   Set var_718 = Me.Text1
  loc_19F9091:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_71C, var_6D4)
  loc_19F90A6:   var_1560 = Val(var_6D4)
  loc_19F90B7:   Set var_764 = Me.Text1
  loc_19F90BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_768, var_720)
  loc_19F90D2:   var_1568 = Val(var_720)
  loc_19F90E3:   Set var_7B0 = Me.Text1
  loc_19F90E9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_7B4, var_76C)
  loc_19F90FE:   var_1570 = Val(var_76C)
  loc_19F910F:   Set var_7FC = Me.Text1
  loc_19F9115:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_800, var_7B8)
  loc_19F912A:   var_1578 = Val(var_7B8)
  loc_19F913B:   Set var_848 = Me.Text1
  loc_19F9141:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_84C, var_804)
  loc_19F9156:   var_1580 = Val(var_804)
  loc_19F9167:   Set var_894 = Me.Text1
  loc_19F916D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_898, var_850)
  loc_19F9182:   var_1588 = Val(var_850)
  loc_19F9193:   Set var_8E0 = Me.Text1
  loc_19F9199:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_8E4, var_89C)
  loc_19F91AE:   var_1590 = Val(var_89C)
  loc_19F91BF:   Set var_92C = Me.Text1
  loc_19F91C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_930, var_8E8)
  loc_19F91DA:   var_1598 = Val(var_8E8)
  loc_19F91EB:   Set var_978 = Me.Text1
  loc_19F91F1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_97C, var_934)
  loc_19F920C:   Set var_9C4 = Me.Text1
  loc_19F9212:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_9C8)
  loc_19F922D:   Set var_A10 = Me.Text1
  loc_19F9233:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_A14)
  loc_19F924E:   Set var_A5C = Me.Text1
  loc_19F9254:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_A60)
  loc_19F926A:   Proc_6_17_EAAE40(var_A74, CVar(var_A60.Tag))
  loc_19F927A:   Set var_AA8 = Me.Text1
  loc_19F9280:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_AAC)
  loc_19F928F:   Proc_6_7_F26918(var_ACC, CVar(var_AAC))
  loc_19F929F:   Set var_B00 = Me.Text1
  loc_19F92A5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_B04)
  loc_19F92B4:   Proc_6_7_F26918(var_B24, CVar(var_B04))
  loc_19F92C4:   Set var_B58 = Me.Text1
  loc_19F92CA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_B5C)
  loc_19F92D9:   Proc_6_7_F26918(var_B7C, CVar(var_B5C))
  loc_19F92E9:   Set var_BB0 = Me.Text1
  loc_19F92EF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_BB4)
  loc_19F92FE:   Proc_6_17_EAAE40(var_BD4, CVar(var_BB4))
  loc_19F930E:   Set var_C08 = Me.Text1
  loc_19F9314:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_C0C)
  loc_19F9323:   Proc_6_17_EAAE40(var_C2C, CVar(var_C0C))
  loc_19F9333:   Set var_C60 = Me.Text1
  loc_19F9339:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_CF4)
  loc_19F9348:   Proc_6_17_EAAE40(var_CB0, CVar(var_CF4))
  loc_19F9358:   Set var_D8C = Me.Text1
  loc_19F935E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_D90)
  loc_19F936D:   Proc_6_17_EAAE40(var_D28, CVar(var_D90))
  loc_19F937D:   Set var_DE4 = Me.Text1
  loc_19F9383:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_DE8)
  loc_19F9392:   Proc_6_39_E7D3A0(var_D88, CVar(var_DE8))
  loc_19F93A2:   Set var_E3C = Me.Text1
  loc_19F93A8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_E40)
  loc_19F93B7:   Proc_6_17_EAAE40(var_DE0, CVar(var_E40))
  loc_19F93CA:   Set var_E94 = Me.Text1
  loc_19F93D0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_E98)
  loc_19F93E5:   var_15A0 = Val(var_E98.Text)
  loc_19F93F6:   Set var_EDC = Me.Text1
  loc_19F93FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_EE0, var_F8C)
  loc_19F9411:   var_15A8 = Val(var_F8C)
  loc_19F941F:   Set var_F84 = Me.Text1
  loc_19F9425:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_F88)
  loc_19F9434:   Proc_6_17_EAAE40(var_E90, CVar(var_F88))
  loc_19F9444:   Set var_FD0 = Me.Text1
  loc_19F944A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_FD4)
  loc_19F9459:   Proc_6_17_EAAE40(var_EF0, CVar(var_FD4))
  loc_19F946B:   var_BA = Me.Check1.Value
  loc_19F94E0:   Set var_1074 = Me.Text1
  loc_19F94E6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_1078, var_FD8)
  loc_19F94FB:   var_15B0 = Val(var_FD8)
  loc_19F950C:   Set var_10C0 = Me.Text1
  loc_19F9512:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_10C4, var_107C)
  loc_19F952A:   Set var_110C = Me.Text1
  loc_19F9530:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_1110)
  loc_19F9551:   var_1164 = CVar(Proc_6_14_EF402C(var_14F8)) 'String
  loc_19F9557:   Proc_6_8_EB1974(var_1174)
  loc_19F956A:   Set var_112C = Me.Text1
  loc_19F9570:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_1130)
  loc_19F95E8:   Proc_6_17_EAAE40(var_1330, IIf((Me.EmployeeImage.Visible = &HFF), CVar(Me.EmployeeImage.Tag), vbNullString))
  loc_19F963A:   Proc_6_17_EAAE40(var_13D0, IIf((Me.IdProofImage.Visible = &HFF), CVar(Me.IdProofImage.Tag), vbNullString))
  loc_19F964A:   Set var_1364 = Me.Text1
  loc_19F9650:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_136C)
  loc_19F965F:   Proc_6_17_EAAE40(var_1428, CVar(var_136C))
  loc_19F966F:   Set var_1404 = Me.Text1
  loc_19F9675:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_1408)
  loc_19F9684:   Proc_6_17_EAAE40(var_1480, CVar(var_1408))
  loc_19F9694:   Set var_145C = Me.Text1
  loc_19F969A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1460)
  loc_19F96A9:   Proc_6_17_EAAE40(var_14D0, CVar(var_1460))
  loc_19F96BB:   var_FC = "UPDATE EMPLOYEE SET Name="
  loc_19F96C7:   var_140 = ",F_Name="
  loc_19F96D3:   var_150 = var_FC & var_DC & var_140 & var_130 
  loc_19F9723:   var_304 = var_150 & ",Add1=" & var_1B4 & ",Add2=" & var_1FC & ",Spouse=" & var_244 & ",Qualification=" & var_29C & ",ESI_Code=" & var_2F4 
  loc_19F976F:   var_41C = var_304 & ",PF_Code=" & var_34C & ",Basic=" & CVar(var_3DC.Text) & ",DA=" & CVar(var_424.Text) & ",HRA=" & CVar(var_470.Text) 
  loc_19F97AB:   var_500 = var_41C & ",Income_Tax=" & CVar(var_4BC.Text) & ",Other_Allow=" & CVar(var_508.Text) & ",Other_Deduc=" & CVar(var_554.Text) 
  loc_19F97EB:   var_64C = ",Curr_PF_Balance=Curr_PF_Balance+"
  loc_19F97F0:   var_610 = var_500 & ",Conveyance=" & CVar(var_5A0.Text) & ",Medical=" & CVar(var_5EC.Text) & ",LTA=" & CVar(var_638.Text) & CVar(var_684.Text) 
  loc_19F97FE:   var_66C = CVar((var_684.Text - global_96)) 'Double
  loc_19F983E:   var_714 = var_610 & "," & ",OP_PF_Balance=" & CVar(var_6D0.Text) & ",OP_Loan=" & CVar(var_71C.Text) & ",OP_Inst=" & CVar(var_768.Text) 
  loc_19F987A:   var_7F8 = var_714 & ",OP_Advance=" & CVar(var_7B4.Text) & ",Tot_CL_Allow=" & CVar(var_800.Text) & ",Tot_EL_Allow=" & CVar(var_84C.Text) 
  loc_19F98A6:   var_8F8 = ",Curr_Earned=Curr_Earned+"
  loc_19F98B9:   var_918 = CVar((var_930.Text - global_80)) 'Double
  loc_19F98C6:   var_908 = var_7F8 & ",OP_Earned=" & CVar(var_898.Text) & ",OP_Casual=" & CVar(var_8E4.Text) & CVar(var_930.Text) & "," & ",Curr_Casual=" 
  loc_19F990A:   var_A28 = var_908 & CVar(var_97C.Tag) & ",Department='" & CVar(var_934) & "',Designation='" & CVar(var_9C8.Tag) & "',Category='" & CVar(var_A14.Tag) 
  loc_19F9953:   var_BAC = var_A28 & "',AC_CODE=" & var_A74 & ",Birth_Date=" & var_ACC & ",Joining_Date=" & var_B24 & ",Resign_Date=" & var_B7C & ",Sex=" 
  loc_19F99A3:   var_DB0 = var_BAC & var_BD4 & ",Marital=" & var_C2C & ",Phone= " & var_CB0 & ",PAN=" & var_D28 & ",INCREMENT=" & var_D88 & ",sunday=" 
  loc_19F99E2:   var_EA8 = var_DB0 & var_DE0 & ",TOT_DL_ALLOW=" & CVar(var_EE0.Text) & ",TOT_VL_ALLOW=" & CVar(var_1078.Text) & ",BankAcNo=" & var_E90 
  loc_19F9A12:   var_1018 = var_EA8 & ",IncrMth=" & var_EF0 & ",PF_YN=" & IIf((var_BA = 1), "'Y'", "'N'") & ",ESI_YN=" & IIf((Me.Check2.Value = 1), "'Y'", "'N'") 
  loc_19F9A49:   var_1124 = var_1018 & ", OTRate='" & CVar(var_10C4.Tag) & "',LoanAc='" & CVar(var_107C) & "',offday='" & Trim(CVar(Proc_6_38_E69628(CVar(var_1110)))) 
  loc_19F9A7F:   var_1204 = var_1124 & "',U_EntDt=" & var_1174 & ",U_AE='E',SITE_CODE='" & CVar(MemVar_1F95070) & "',U_Name='" & CVar(MemVar_1F950C8) 
  loc_19F9AB8:   var_1400 = var_1204 & "',ActiveYN=" & IIf((var_1130.Text = "No"), 0, 1) & ",PicPath=" & var_1330 & ",IdPicPath=" & var_13D0 & ",IdProof=" 
  loc_19F9AED:   unk_521E54.Execute CStr(var_1400 & var_1428 & ",IdProofNo=" & var_1480 & " WHERE CODE=" & var_14D0), var_15D0, -1
  loc_19F9D63: End If
  loc_19F9D69: unk_521E54.CommitTrans
  loc_19F9D79: var_8A = 0
  loc_19F9D8A: Me.Recordset15.Requery -1
  loc_19F9DB7: Me.Recordset15.Find "SearchCode ='" & global_72 & "'", 0, 1
  loc_19F9DC7: Set var_AC = Me.TopCtrl1
  loc_19F9DCD: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_FC)
  loc_19F9DE6: If (CStr(var_8A) = "Add") Then
  loc_19F9DE9:   Call TopCtrl1_UnknownEvent_A()
  loc_19F9DEE:   Exit Sub
  loc_19F9DEF: End If
  loc_19F9E16: Call Proc_315_51_EAFAE4(Proc_5_1_100EC1C("INI", Me, global_112), var_14F8)
  loc_19F9E21: Call Proc_315_50_17C818C(var_1164)
  loc_19F9E2B: Set var_88 = Nothing
  loc_19F9E33: Set var_94 = Nothing
  loc_19F9E36: Exit Sub
  loc_19F9E37: ' Referenced from: 19F705C
  loc_19F9E3D: If (var_8A = &HFF) Then
  loc_19F9E46:   unk_521E54.RollbackTrans
  loc_19F9E4B: End If
  loc_19F9E4B: Proc_6_60_E63754()
  loc_19F9E50: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EA1560
  'Data Table: 521E40
  loc_EA14E6: On Error Goto loc_EA1559
  loc_EA14F2: Me.Recordset15.MoveFirst
  loc_EA151F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_EA154B: Proc_5_0_1107AD0(&HFF, Me, global_112)
  loc_EA1553: Call Proc_315_50_17C818C(0)
  loc_EA1558: Exit Sub
  loc_EA1559: ' Referenced from: EA14E6
  loc_EA1559: Proc_6_60_E63754(var_A0)
  loc_EA155E: Exit Sub
End Sub

Public Sub Proc_315_48_EA3028
  'Data Table: 521E40
  Dim var_B8 As String
  loc_EA2FA4: On Error Goto loc_EA3020
  loc_EA2FC1: If (Me.Recordset15.RecordCount <= 0) Then
  loc_EA2FCA:   var_B8 = "Information"
  loc_EA2FE5:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EA2FF5:   Exit Sub
  loc_EA2FF6: End If
  loc_EA2FF9: MemVar_1F950E4 = "SELECT  code as searchcode, code as Emp_Code, Name As Emp_Name, Sex, Basic, Add1 As Address , Phone AS Phone_No, PAN As PAN_No , str(Joining_Date) as JoiningDate, str(Resign_Date) as ResignDate, cat_desc as Category,desg_desc as Designation FROM  ( Employee  left join category_emp ON EMPLOYEE.CATEGORY=CATEGORY_EMP.CAT_CODE) LEFT JOIN DESIG ON EMPLOYEE.DESIGNATION=DESIG.DESG_CODE ORDER BY  Code, Name"
  loc_EA3003: MemVar_1F95120 = Me
  loc_EA301A: Call 0.Method_arg_2B0 (1)
  loc_EA301F: Exit Sub
  loc_EA3020: ' Referenced from: EA2FA4
  loc_EA3020: Proc_6_60_E63754(var_B8)
  loc_EA3025: Exit Sub
End Sub

Public Sub Proc_315_49_F78584
  'Data Table: 521E40
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_F78440: Set var_8C = Me.Text1
  loc_F78446: Call 0.Method_Proc_315_49_F78584C (var_8E, var_86)
  loc_F78454: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_F78467:   Set var_8C = Me.Text1
  loc_F7846D:   Call 0.Method_Proc_315_49_F785840 (var_86, var_98)
  loc_F78475:   var_98.Text = vbNullString
  loc_F7848E:   Set var_8C = Me.Text1
  loc_F78494:   Call 0.Method_Proc_315_49_F785840 (var_86, var_98)
  loc_F7849C:   var_98.Tag = vbNullString
  loc_F784AB: Next var_92 'Integer
  loc_F784CE: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F784E3: Me.EmployeeImage.Picture = var_8C
  loc_F784FC: Me.EmployeeImage.Tag = vbNullString
  loc_F7850A: Set var_8C = Me.EmployeeImage
  loc_F78510: var_8C.Visible = True
  loc_F78536: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F7854B: Me.IdProofImage.Picture = var_8C
  loc_F78564: Me.IdProofImage.Tag = vbNullString
  loc_F78578: Me.IdProofImage.Visible = True
  loc_F78580: Exit Sub
End Sub

Public Sub Proc_315_50_17C818C
  'Data Table: 521E40
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_E0 As Variant
  Dim var_124 As String
  Dim var_104 As Variant
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_D0 As Variant
  Dim var_1EC As Variant
  loc_17C6150: On Error Goto loc_17C8184
  loc_17C615F: Me.Frame1.Enabled = False
  loc_17C6173: Me.CmdRemoveEmpDetail.Enabled = True
  loc_17C6195: If (Me.Recordset15.RecordCount > 0) Then
  loc_17C6247:   var_184 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_17C6292:   Me.LblUser.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_Name")))))
  loc_17C6318:   var_D0 = Me.Recordset15.Fields.Item("U_AE")
  loc_17C6320:   var_E0 = CVar(var_D0) 'Address
  loc_17C632C:   var_124 = "entdt : "
  loc_17C6379:   var_184 = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(var_E0) = "E"), "Last Update : ", var_124))
  loc_17C63C4:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_EntDt")))))
  loc_17C643B:   Set var_BC = Me.Text1
  loc_17C6441:   Call 0.Method_Proc_315_50_17C818C0 (CInt(0), var_D0)
  loc_17C6449:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_17C649B:   Set var_BC = Me.Text1
  loc_17C64A1:   Call 0.Method_Proc_315_50_17C818C0 (CInt(1), var_D0)
  loc_17C64A9:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")))
  loc_17C64F9:   Set var_BC = Me.Text1
  loc_17C64FF:   Call 0.Method_Proc_315_50_17C818C0 (CInt(2), var_D0)
  loc_17C6507:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("F_Name")))
  loc_17C6557:   Set var_BC = Me.Text1
  loc_17C655D:   Call 0.Method_Proc_315_50_17C818C0 (CInt(3), var_D0)
  loc_17C6565:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Add1")))
  loc_17C65B5:   Set var_BC = Me.Text1
  loc_17C65BB:   Call 0.Method_Proc_315_50_17C818C0 (CInt(4), var_D0)
  loc_17C65C3:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Add2")))
  loc_17C6613:   Set var_BC = Me.Text1
  loc_17C6619:   Call 0.Method_Proc_315_50_17C818C0 (CInt(5), var_D0)
  loc_17C6621:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Spouse")))
  loc_17C6671:   Set var_BC = Me.Text1
  loc_17C6677:   Call 0.Method_Proc_315_50_17C818C0 (CInt(6), var_D0)
  loc_17C667F:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Qualification")))
  loc_17C66CF:   Set var_BC = Me.Text1
  loc_17C66D5:   Call 0.Method_Proc_315_50_17C818C0 (CInt(7), var_D0)
  loc_17C66DD:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ESI_Code")))
  loc_17C672D:   Set var_BC = Me.Text1
  loc_17C6733:   Call 0.Method_Proc_315_50_17C818C0 (CInt(8), var_D0)
  loc_17C673B:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PF_Code")))
  loc_17C6774:   var_B4 = CVar(Me.Recordset15.Fields.Item("Basic")) 'Address
  loc_17C677B:   Proc_6_39_E7D3A0(var_E0)
  loc_17C6792:   Set var_BC = Me.Text1
  loc_17C6798:   Call 0.Method_Proc_315_50_17C818C0 (CInt(9), var_D0)
  loc_17C67A0:   var_D0.Text = CStr(var_E0)
  loc_17C67E4:   Proc_6_39_E7D3A0(var_E0, CVar(Me.Recordset15.Fields.Item("DA")))
  loc_17C67FB:   Set var_BC = Me.Text1
  loc_17C6801:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&HA), var_D0)
  loc_17C6809:   var_D0.Text = CStr(var_E0)
  loc_17C6860:   Set var_BC = Me.Text1
  loc_17C6866:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&HB), var_D0)
  loc_17C686E:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("HRA").Value)
  loc_17C68C3:   Set var_BC = Me.Text1
  loc_17C68C9:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&HC), var_D0)
  loc_17C68D1:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Income_Tax").Value)
  loc_17C6926:   Set var_BC = Me.Text1
  loc_17C692C:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&HD), var_D0)
  loc_17C6934:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Other_Allow").Value)
  loc_17C6989:   Set var_BC = Me.Text1
  loc_17C698F:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&HE), var_D0)
  loc_17C6997:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Other_Deduc").Value)
  loc_17C69EC:   Set var_BC = Me.Text1
  loc_17C69F2:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&HF), var_D0)
  loc_17C69FA:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Conveyance").Value)
  loc_17C6A4F:   Set var_BC = Me.Text1
  loc_17C6A55:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H10), var_D0)
  loc_17C6A5D:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Medical").Value)
  loc_17C6AB2:   Set var_BC = Me.Text1
  loc_17C6AB8:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H11), var_D0)
  loc_17C6AC0:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("LTA").Value)
  loc_17C6B15:   Set var_BC = Me.Text1
  loc_17C6B1B:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H12), var_D0)
  loc_17C6B23:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Curr_PF_Balance").Value)
  loc_17C6B78:   Set var_BC = Me.Text1
  loc_17C6B7E:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H13), var_D0)
  loc_17C6B86:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_PF_Balance").Value)
  loc_17C6BDB:   Set var_BC = Me.Text1
  loc_17C6BE1:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H14), var_D0)
  loc_17C6BE9:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Loan").Value)
  loc_17C6C3E:   Set var_BC = Me.Text1
  loc_17C6C44:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H15), var_D0)
  loc_17C6C4C:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Inst").Value)
  loc_17C6CA1:   Set var_BC = Me.Text1
  loc_17C6CA7:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H16), var_D0)
  loc_17C6CAF:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Advance").Value)
  loc_17C6D04:   Set var_BC = Me.Text1
  loc_17C6D0A:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H17), var_D0)
  loc_17C6D12:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Tot_CL_Allow").Value)
  loc_17C6D67:   Set var_BC = Me.Text1
  loc_17C6D6D:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H18), var_D0)
  loc_17C6D75:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Tot_EL_Allow").Value)
  loc_17C6DCA:   Set var_BC = Me.Text1
  loc_17C6DD0:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H19), var_D0)
  loc_17C6DD8:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Earned").Value)
  loc_17C6E2D:   Set var_BC = Me.Text1
  loc_17C6E33:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H1A), var_D0)
  loc_17C6E3B:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("OP_Casual").Value)
  loc_17C6E90:   Set var_BC = Me.Text1
  loc_17C6E96:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H1B), var_D0)
  loc_17C6E9E:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Curr_Earned").Value)
  loc_17C6EF3:   Set var_BC = Me.Text1
  loc_17C6EF9:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H1C), var_D0)
  loc_17C6F01:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Curr_Casual").Value)
  loc_17C6F53:   Set var_BC = Me.Text1
  loc_17C6F59:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H1D), var_D0)
  loc_17C6F61:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PAN")))
  loc_17C6FB1:   Set var_BC = Me.Text1
  loc_17C6FB7:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H32), var_D0)
  loc_17C6FBF:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("IdProof")))
  loc_17C700F:   Set var_BC = Me.Text1
  loc_17C7015:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H33), var_D0)
  loc_17C701D:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("IdProofNo")))
  loc_17C706D:   Set var_BC = Me.Text1
  loc_17C7073:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H1E), var_D0)
  loc_17C707B:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Phone")))
  loc_17C70BB:   Proc_6_39_E7D3A0(var_E0, CVar(Me.Recordset15.Fields.Item("Increment")))
  loc_17C70D2:   Set var_BC = Me.Text1
  loc_17C70D8:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H1F), var_D0)
  loc_17C70E0:   var_D0.Text = CStr(var_E0)
  loc_17C7124:   Proc_6_39_E7D3A0(var_E0, CVar(Me.Recordset15.Fields.Item("Tot_DL_Allow")))
  loc_17C7139:   Set var_BC = Me.Text1
  loc_17C713F:   Call 0.Method_Proc_315_50_17C818C0 (&H21, var_D0)
  loc_17C7147:   var_D0.Text = CStr(var_E0)
  loc_17C718B:   Proc_6_39_E7D3A0(var_E0, CVar(Me.Recordset15.Fields.Item("Tot_VL_Allow")))
  loc_17C71A0:   Set var_BC = Me.Text1
  loc_17C71A6:   Call 0.Method_Proc_315_50_17C818C0 (&H20, var_D0)
  loc_17C71AE:   var_D0.Text = CStr(var_E0)
  loc_17C7202:   Set var_BC = Me.Text1
  loc_17C7208:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H22), var_D0)
  loc_17C7210:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BankAcNo")))
  loc_17C7260:   Set var_BC = Me.Text1
  loc_17C7266:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H23), var_D0)
  loc_17C726E:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("IncrMth")))
  loc_17C72BE:   Set var_BC = Me.Text1
  loc_17C72C4:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H2C), var_D0)
  loc_17C72CC:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("sunday")))
  loc_17C731C:   Set var_BC = Me.Text1
  loc_17C7322:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H24), var_D0)
  loc_17C732A:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Sex")))
  loc_17C737A:   Set var_BC = Me.Text1
  loc_17C7380:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H31), var_D0)
  loc_17C7388:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("DEPARTNAME")))
  loc_17C73D8:   Set var_BC = Me.Text1
  loc_17C73DE:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H31), var_D0)
  loc_17C73E6:   var_D0.Tag = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("DepartCode")))
  loc_17C7436:   Set var_BC = Me.Text1
  loc_17C743C:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H25), var_D0)
  loc_17C7444:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("DesigName")))
  loc_17C7494:   Set var_BC = Me.Text1
  loc_17C749A:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H2B), var_D0)
  loc_17C74A2:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CatName")))
  loc_17C74F2:   Set var_BC = Me.Text1
  loc_17C74F8:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H26), var_D0)
  loc_17C7500:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AcName")))
  loc_17C7550:   Set var_BC = Me.Text1
  loc_17C7556:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H2F), var_D0)
  loc_17C755E:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("LoanName")))
  loc_17C75AE:   Set var_BC = Me.Text1
  loc_17C75B4:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H25), var_D0)
  loc_17C75BC:   var_D0.Tag = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("DesigCode")))
  loc_17C760C:   Set var_BC = Me.Text1
  loc_17C7612:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H2B), var_D0)
  loc_17C761A:   var_D0.Tag = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CatCode")))
  loc_17C766A:   Set var_BC = Me.Text1
  loc_17C7670:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H26), var_D0)
  loc_17C7678:   var_D0.Tag = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AcCode")))
  loc_17C76C8:   Set var_BC = Me.Text1
  loc_17C76CE:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H2F), var_D0)
  loc_17C76D6:   var_D0.Tag = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("LoanCode")))
  loc_17C7726:   Set var_BC = Me.Text1
  loc_17C772C:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H27), var_D0)
  loc_17C7734:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Marital")))
  loc_17C7784:   Set var_BC = Me.Text1
  loc_17C778A:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H28), var_D0)
  loc_17C7792:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Birth_Date")))
  loc_17C77E2:   Set var_BC = Me.Text1
  loc_17C77E8:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H29), var_D0)
  loc_17C77F0:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Joining_Date")))
  loc_17C7840:   Set var_BC = Me.Text1
  loc_17C7846:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H2A), var_D0)
  loc_17C784E:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Resign_Date")))
  loc_17C789E:   Set var_BC = Me.Text1
  loc_17C78A4:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H2D), var_D0)
  loc_17C78AC:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OTRate")))
  loc_17C78FC:   Set var_BC = Me.Text1
  loc_17C7902:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H2E), var_D0)
  loc_17C790A:   var_D0.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OffDay")))
  loc_17C7960:   If (Me.Recordset15.Fields.Item("PF_YN").Value = "Y") Then
  loc_17C796F:     Me.Check1.Value = 1
  loc_17C797A:   Else
  loc_17C7986:     Me.Check1.Value = 0
  loc_17C798E:   End If
  loc_17C79D0:   If (Me.Recordset15.Fields.Item("ESI_YN").Value = "Y") Then
  loc_17C79DF:     Me.Check2.Value = 1
  loc_17C79EA:   Else
  loc_17C79F6:     Me.Check2.Value = 0
  loc_17C79FE:   End If
  loc_17C7A1E:   var_A4 = Me.Recordset15.Fields.Item("ActiveYN")
  loc_17C7A6F:   Set var_BC = Me.Text1
  loc_17C7A75:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H30), var_D0)
  loc_17C7A7D:   var_D0.Text = CStr(IIf((var_A4.Value = 0), "No", "Yes"))
  loc_17C7AAB:   Set var_8C = Me.Text1
  loc_17C7AB1:   Call 0.Method_Proc_315_50_17C818C0 (CInt(&H30), var_A4)
  loc_17C7AD0:   If (var_A4.Text = "No") Then
  loc_17C7ADF:     Me.Frame1.Enabled = True
  loc_17C7B25:     Me.Frame1.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_17C7B39:   End If
  loc_17C7B4E:   var_8C = Me.Recordset15.Fields
  loc_17C7B67:   var_104 = IsNull(CVar(var_8C.Item("PicPath")))
  loc_17C7B6E:   var_CC = "PicPath"
  loc_17C7B9F:   var_F4 = vbNullString
  loc_17C7BC1:   If CBool(var_104 Or (Trim(CVar(Me.Recordset15.Fields.Item(var_CC))) = var_F4)) Then
  loc_17C7BE2:     Me.Global.LoadPicture var_A0, var_CC, var_F4, var_104, var_124
  loc_17C7BF7:     Me.EmployeeImage.Picture = var_8C
  loc_17C7C10:     Me.EmployeeImage.Tag = vbNullString
  loc_17C7C1B:   Else
  loc_17C7C4F:     var_F4 = "PicPath"
  loc_17C7C9B:     var_CC = "DAT"
  loc_17C7CC3:     var_104 = "AVI"
  loc_17C7CCD:     var_1EC = (Ucase(Right(Trim(CVar(Me.Recordset15.Fields.Item("PicPath"))), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(Me.Recordset15.Fields.Item(var_F4))), 3)) = var_104)
  loc_17C7CED:     If CBool(var_1EC) Then
  loc_17C7CFC:       Me.EmployeeImage.Visible = False
  loc_17C7D07:     Else
  loc_17C7D45:       Me.EmployeeImage.Tag = CStr(Me.Recordset15.Fields.Item("PicPath").Value)
  loc_17C7D62:       var_A0 = "PicPath"
  loc_17C7D7C:       var_A4 = Me.Recordset15.Fields.Item(var_A0)
  loc_17C7D96:       Call 0.Method_Proc_315_50_17C818C4 (CStr(var_A4.Value), var_1EE)
  loc_17C7DAB:       If var_1EE Then
  loc_17C7DC8:         Set var_8C = Me.EmployeeImage
  loc_17C7DE0:         Me.Global.LoadPicture CVar(Me.EmployeeImage.Tag), var_A0, var_CC, var_F4, var_104
  loc_17C7DF5:         Me.EmployeeImage.Picture = var_A4
  loc_17C7E0A:         Set var_8C = Me.EmployeeImage
  loc_17C7E10:         var_8C.Refresh
  loc_17C7E1B:       Else
  loc_17C7E39:         Me.Global.LoadPicture var_A0, var_CC, var_F4, var_104, var_124
  loc_17C7E4E:         Me.EmployeeImage.Picture = var_8C
  loc_17C7E5A:       End If
  loc_17C7E5A:     End If
  loc_17C7E5A:   End If
  loc_17C7E6F:   var_8C = Me.Recordset15.Fields
  loc_17C7E88:   var_104 = IsNull(CVar(var_8C.Item("IdPicPath")))
  loc_17C7E8F:   var_CC = "IdPicPath"
  loc_17C7EC0:   var_F4 = vbNullString
  loc_17C7EE2:   If CBool(var_104 Or (Trim(CVar(Me.Recordset15.Fields.Item(var_CC))) = var_F4)) Then
  loc_17C7F03:     Me.Global.LoadPicture var_A0, var_CC, var_F4, var_104, var_124
  loc_17C7F18:     Me.IdProofImage.Picture = var_8C
  loc_17C7F31:     Me.IdProofImage.Tag = vbNullString
  loc_17C7F3C:   Else
  loc_17C7F70:     var_F4 = "IdPicPath"
  loc_17C7FBC:     var_CC = "DAT"
  loc_17C7FE4:     var_104 = "AVI"
  loc_17C7FEE:     var_1EC = (Ucase(Right(Trim(CVar(Me.Recordset15.Fields.Item("IdPicPath"))), 3)) = var_CC) Or (Ucase(Right(Trim(CVar(Me.Recordset15.Fields.Item(var_F4))), 3)) = var_104)
  loc_17C800E:     If CBool(var_1EC) Then
  loc_17C801D:       Me.IdProofImage.Visible = False
  loc_17C8028:     Else
  loc_17C8066:       Me.IdProofImage.Tag = CStr(Me.Recordset15.Fields.Item("IdPicPath").Value)
  loc_17C8083:       var_A0 = "IdPicPath"
  loc_17C8095:       var_8C = Me.Recordset15.Fields
  loc_17C809D:       var_A4 = var_8C.Item(var_A0)
  loc_17C80B7:       Call 0.Method_Proc_315_50_17C818C4 (CStr(var_A4.Value), var_1EE, var_8C, var_8C)
  loc_17C80CC:       If var_1EE Then
  loc_17C80E9:         Set var_8C = Me.IdProofImage
  loc_17C8101:         Me.Global.LoadPicture CVar(Me.IdProofImage.Tag), var_A0, var_CC, var_F4, var_104
  loc_17C8116:         Me.IdProofImage.Picture = var_A4
  loc_17C812B:         Set var_8C = Me.IdProofImage
  loc_17C8131:         var_8C.Refresh
  loc_17C813C:       Else
  loc_17C815A:         Me.Global.LoadPicture var_A0, var_CC, var_F4, var_104, var_124
  loc_17C816F:         Me.IdProofImage.Picture = var_8C
  loc_17C817B:       End If
  loc_17C817B:     End If
  loc_17C817B:   End If
  loc_17C817E: Else
  loc_17C817E:   Call Proc_315_49_F78584(var_8C, var_A4, var_A4)
  loc_17C8183: End If
  loc_17C8183: Exit Sub
  loc_17C8184: ' Referenced from: 17C6150
  loc_17C8184: Proc_6_60_E63754(var_8C)
  loc_17C8189: Exit Sub
End Sub

Public Sub Proc_315_51_EAFAE4(arg_C) 'EAFAE4
  'Data Table: 521E40
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_EAFA5C: Set var_8C = Me.Text1
  loc_EAFA62: Call 0.Method_Proc_315_51_EAFAE4C (var_8E, var_86)
  loc_EAFA70: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_EAFA83:   Set var_8C = Me.Text1
  loc_EAFA89:   Call 0.Method_Proc_315_51_EAFAE40 (var_86, var_98)
  loc_EAFA91:   var_98.Enabled = arg_C
  loc_EAFAA0: Next var_92 'Integer
  loc_EAFAB2: Me.Check1.Enabled = arg_C
  loc_EAFAC7: Me.Check2.Enabled = arg_C
  loc_EAFADB: Me.Frame1.Visible = False
  loc_EAFAE3: Exit Sub
End Sub

Public Sub Proc_315_52_E7FBA4
  'Data Table: 521E40
  loc_E7FB7F: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E7FB82:   Call TopCtrl1_UnknownEvent_16()
  loc_E7FB8A: Else
  loc_E7FB90:   Call 0.Method_arg_1E8 (var_108)
  loc_E7FB98:   Call var_108.SetFocus
  loc_E7FBA1: End If
  loc_E7FBA1: Exit Sub
  loc_E7FBA2: ArrayRebase1Var
End Sub

Public Sub Proc_315_53_F95448
  'Data Table: 521E40
  loc_F952EC: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_F952FE:   Me.DGDepartment.Visible = False
  loc_F95306: End If
  loc_F95322: If (CBool(Me.DGDesignation.Visible) = &HFF) Then
  loc_F95334:   Me.DGDesignation.Visible = False
  loc_F9533C: End If
  loc_F95358: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F9536A:   Me.DGAcName.Visible = False
  loc_F95372: End If
  loc_F9538E: If (CBool(Me.DGLoan.Visible) = &HFF) Then
  loc_F953A0:   Me.DGLoan.Visible = False
  loc_F953A8: End If
  loc_F953C4: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_F953D6:   Me.DGCategory.Visible = False
  loc_F953DE: End If
  loc_F953F9: If (Me.FrmList.Visible = &HFF) Then
  loc_F95408:   Me.FrmList.Visible = False
  loc_F95410: End If
  loc_F9542C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F9543E:   Me.FGPoint.Visible = False
  loc_F95446: End If
  loc_F95446: Exit Sub
End Sub

Public Sub Proc_315_54_1124304
  'Data Table: 521E40
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_1123FA6: Set var_88 = Me.Text1
  loc_1123FAC: Call 0.Method_Proc_315_54_11243040 (CInt(&H31), var_8C)
  loc_1123FCB: Me.DGDepartment.Left = CVar(var_8C.Left)
  loc_1123FE7: Set var_B4 = Me.Text1
  loc_1123FED: Call 0.Method_Proc_315_54_11243040 (CInt(&H31), var_B8)
  loc_1124008: Set var_88 = Me.Text1
  loc_112400E: Call 0.Method_Proc_315_54_11243040 (CInt(&H31), var_8C)
  loc_1124026: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1124035: Me.DGDepartment.Top = CVar(var_8C.Left)
  loc_1124055: Set var_88 = Me.Text1
  loc_112405B: Call 0.Method_Proc_315_54_11243040 (CInt(&H25), var_8C)
  loc_112407A: Me.DGDesignation.Left = CVar(var_8C.Left)
  loc_1124096: Set var_B4 = Me.Text1
  loc_112409C: Call 0.Method_Proc_315_54_11243040 (CInt(&H25), var_B8)
  loc_11240B7: Set var_88 = Me.Text1
  loc_11240BD: Call 0.Method_Proc_315_54_11243040 (CInt(&H25), var_8C)
  loc_11240D5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11240E4: Me.DGDesignation.Top = CVar(var_8C.Left)
  loc_1124104: Set var_88 = Me.Text1
  loc_112410A: Call 0.Method_Proc_315_54_11243040 (CInt(&H26), var_8C)
  loc_1124129: Me.DGAcName.Left = CVar(var_8C.Left)
  loc_1124145: Set var_B4 = Me.Text1
  loc_112414B: Call 0.Method_Proc_315_54_11243040 (CInt(&H26), var_B8)
  loc_1124166: Set var_88 = Me.Text1
  loc_112416C: Call 0.Method_Proc_315_54_11243040 (CInt(&H26), var_8C)
  loc_1124184: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1124193: Me.DGAcName.Top = CVar(var_8C.Left)
  loc_11241B3: Set var_88 = Me.Text1
  loc_11241B9: Call 0.Method_Proc_315_54_11243040 (CInt(&H2B), var_8C)
  loc_11241D8: Me.DGCategory.Left = CVar(var_8C.Left)
  loc_11241F4: Set var_B4 = Me.Text1
  loc_11241FA: Call 0.Method_Proc_315_54_11243040 (CInt(&H2B), var_B8)
  loc_1124215: Set var_88 = Me.Text1
  loc_112421B: Call 0.Method_Proc_315_54_11243040 (CInt(&H2B), var_8C)
  loc_1124233: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1124242: Me.DGCategory.Top = CVar(var_8C.Left)
  loc_1124262: Set var_88 = Me.Text1
  loc_1124268: Call 0.Method_Proc_315_54_11243040 (CInt(&H2F), var_8C)
  loc_1124287: Me.DGLoan.Left = CVar(var_8C.Left)
  loc_11242A3: Set var_B4 = Me.Text1
  loc_11242A9: Call 0.Method_Proc_315_54_11243040 (CInt(&H2F), var_B8)
  loc_11242C4: Set var_88 = Me.Text1
  loc_11242CA: Call 0.Method_Proc_315_54_11243040 (CInt(&H2F), var_8C)
  loc_11242E2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11242F1: Me.DGLoan.Top = CVar(var_8C.Left)
  loc_1124303: Exit Sub
End Sub

Public Sub Proc_315_55_E4A274(arg_C) 'E4A274
  'Data Table: 521E40
  loc_E4A24D: Me.Frame_DETAIL.Visible = arg_C
  loc_E4A268: Me.DBGrid1.Visible = Not(arg_C)
  loc_E4A273: Exit Sub
End Sub
