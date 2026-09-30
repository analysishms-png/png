VERSION 5.00
Begin VB.Form RsSaleBillSplit
  Caption = "Split Sale Bill"
  BackColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 12150
  ClientHeight = 8520
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12150
    Height = 450
    TabIndex = 57
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 9765
    Top = 465
    Width = 375
    Height = 285
    TabIndex = 26
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 4245
    Top = 450
    Width = 1200
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFF8080&
    Left = 8130
    Top = 780
    Width = 8610
    Height = 2610
    TabIndex = 39
    BorderStyle = 0 'None
    Begin TextBox TxtTable3
      Left = 7260
      Top = 2325
      Width = 750
      Height = 240
      Visible = 0   'False
      TabIndex = 54
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
    Begin TextBox TxtTable2
      Left = 4410
      Top = 2310
      Width = 720
      Height = 240
      Visible = 0   'False
      TabIndex = 52
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
    Begin TextBox TxtTable1
      Left = 1470
      Top = 2325
      Width = 750
      Height = 240
      Visible = 0   'False
      TabIndex = 50
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
    Begin TextBox TxtGt3
      Index = 1
      Left = 7380
      Top = 420
      Width = 1170
      Height = 240
      Enabled = 0   'False
      TabIndex = 42
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
    Begin TextBox TxtGt2
      Index = 1
      Left = 4515
      Top = 420
      Width = 1185
      Height = 240
      Enabled = 0   'False
      TabIndex = 41
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
    Begin TextBox TxtGt1
      Index = 1
      Left = 1605
      Top = 420
      Width = 1185
      Height = 240
      Enabled = 0   'False
      TabIndex = 40
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
    Begin Shape Shape3
      BorderColor = &HC00000&
      Left = 2850
      Top = 0
      Width = 2925
      Height = 2610
    End
    Begin Label Label1
      Caption = "Table No."
      Index = 9
      ForeColor = &HFFFF&
      Left = 5895
      Top = 2325
      Width = 840
      Height = 210
      Visible = 0   'False
      TabIndex = 55
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
    Begin Label Label1
      Caption = "Table No."
      Index = 8
      ForeColor = &HFFFF&
      Left = 2970
      Top = 2340
      Width = 840
      Height = 210
      Visible = 0   'False
      TabIndex = 53
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
    Begin Label Label1
      Caption = "Table No."
      Index = 7
      ForeColor = &HFFFF&
      Left = 90
      Top = 2325
      Width = 840
      Height = 210
      Visible = 0   'False
      TabIndex = 51
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
    Begin Line Line2
      X1 = 30
      Y1 = 270
      X2 = 8610
      Y2 = 270
    End
    Begin Shape Shape2
      BorderColor = &HC00000&
      Left = 0
      Top = 0
      Width = 8610
      Height = 2610
    End
    Begin Label Label2
      Caption = "                   Bill 1                                         Bill 2                                       BIll 3         "
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 0
      Top = 15
      Width = 8610
      Height = 270
      TabIndex = 49
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
    Begin Label LblCap3
      Caption = "Total"
      Index = 1
      ForeColor = &HC00000&
      Left = 5835
      Top = 420
      Width = 480
      Height = 240
      TabIndex = 48
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
    Begin Label LblDummy3
      Caption = "Label2"
      Index = 1
      ForeColor = &HC00000&
      Left = 5775
      Top = 735
      Width = 180
      Height = 210
      Visible = 0   'False
      TabIndex = 47
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
    Begin Label LblCap2
      Caption = "Total"
      Index = 1
      ForeColor = &HC00000&
      Left = 2925
      Top = 420
      Width = 480
      Height = 240
      TabIndex = 46
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
    Begin Label LblDummy2
      Caption = "Label2"
      Index = 1
      ForeColor = &HC00000&
      Left = 2835
      Top = 720
      Width = 180
      Height = 210
      Visible = 0   'False
      TabIndex = 45
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
    Begin Label LblCap1
      Caption = "Total"
      Index = 1
      ForeColor = &HC00000&
      Left = 75
      Top = 420
      Width = 480
      Height = 240
      TabIndex = 44
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
    Begin Label LblDummy1
      Caption = "Label2"
      Index = 1
      ForeColor = &HC00000&
      Left = -30
      Top = 735
      Width = 180
      Height = 210
      Visible = 0   'False
      TabIndex = 43
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
  End
  Begin CommandButton CmdSave
    Caption = "&Save"
    Left = 9105
    Top = 10350
    Width = 1530
    Height = 420
    Visible = 0   'False
    TabIndex = 11
  End
  Begin CommandButton Command2
    Caption = "&Print"
    Left = 10635
    Top = 10350
    Width = 1560
    Height = 420
    Visible = 0   'False
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 10
    ForeColor = &HC00000&
    Left = 9405
    Top = 8385
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 37
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRest
    Left = 15960
    Top = 8265
    Width = 5910
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGItem
    Left = 14595
    Top = 8625
    Width = 4095
    Height = 5400
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 32
  End
  Begin TextBox Txt
    Index = 9
    Left = 7605
    Top = 45
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 35
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
  Begin MSHFlexGrid FGCat
    Left = -45
    Top = 7575
    Width = 8655
    Height = 1230
    Visible = 0   'False
    TabIndex = 31
  End
  Begin TextBox Txt
    Index = 8
    Left = 10560
    Top = 10020
    Width = 1425
    Height = 240
    Visible = 0   'False
    TabIndex = 10
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
  Begin TextBox Txt
    Index = 7
    Left = 10560
    Top = 9720
    Width = 1425
    Height = 240
    Visible = 0   'False
    TabIndex = 9
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
  Begin TextBox Txt
    Index = 6
    Left = 10560
    Top = 9420
    Width = 1425
    Height = 240
    Visible = 0   'False
    TabIndex = 8
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
  Begin DataGrid DGTable
    Left = 11325
    Top = 6450
    Width = 4290
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin CommandButton Command1
    Caption = "Set&tlement"
    Left = 9105
    Top = 10770
    Width = 3090
    Height = 420
    Visible = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 6630
    Top = 450
    Width = 480
    Height = 285
    TabIndex = 24
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
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HC00000&
    Left = 9915
    Top = 3630
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HC00000&
    Left = 9375
    Top = 3630
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 6
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 8145
    Top = 450
    Width = 870
    Height = 285
    TabIndex = 3
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
  Begin Frame FrmList
    Left = 12285
    Top = 9495
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 90
      Width = 2415
      Height = 1800
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &H80000000&
    Left = 8580
    Top = 8925
    Width = 2325
    Height = 210
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 40
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
    ForeColor = &HC00000&
    Left = 5475
    Top = 450
    Width = 1125
    Height = 285
    TabIndex = 0
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 255
    Top = 2205
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
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
  Begin MSHFlexGrid FGrid
    Left = -30
    Top = 780
    Width = 7785
    Height = 7470
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 15765
    Top = 6255
    Width = 1965
    Height = 1440
    Visible = 0   'False
    TabIndex = 34
  End
  Begin Label Label1
    Caption = "Covers"
    Index = 0
    ForeColor = &HC00000&
    Left = 9060
    Top = 495
    Width = 645
    Height = 240
    TabIndex = 23
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
  Begin Label Label1
    Caption = "Table No."
    Index = 2
    ForeColor = &HC00000&
    Left = 7200
    Top = 465
    Width = 915
    Height = 240
    TabIndex = 19
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 255
    Top = 465
    Width = 2940
    Height = 285
    TabIndex = 25
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Bill No."
    Index = 3
    ForeColor = &HC00000&
    Left = 3525
    Top = 480
    Width = 690
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
  End
  Begin Label Label3
    BackColor = &HFFFFFF&
    Left = 75
    Top = 450
    Width = 13980
    Height = 300
    TabIndex = 56
  End
  Begin Label lblTable
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 8700
    Top = 5640
    Width = 8325
    Height = 465
    Visible = 0   'False
    TabIndex = 38
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblSession
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HC00000&
    Left = 7500
    Top = 9675
    Width = 1665
    Height = 330
    Visible = 0   'False
    TabIndex = 36
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 12
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
    ForeColor = &HC00000&
    Left = 8055
    Top = 3930
    Width = 825
    Height = 210
    Visible = 0   'False
    TabIndex = 30
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
  Begin Label Label1
    Caption = "  To Refund    "
    Index = 6
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 9255
    Top = 10005
    Width = 2790
    Height = 270
    Visible = 0   'False
    TabIndex = 29
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "  Tip Amount  "
    Index = 5
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 9255
    Top = 9705
    Width = 2790
    Height = 270
    Visible = 0   'False
    TabIndex = 28
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "  Cash Recd.             "
    Index = 4
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 9255
    Top = 9405
    Width = 2790
    Height = 270
    Visible = 0   'False
    TabIndex = 27
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 9750
    Top = 3630
    Width = 150
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HC00000&
    Left = 8100
    Top = 3630
    Width = 480
    Height = 240
    TabIndex = 21
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 10380
    Top = 7860
    Width = 435
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    ForeColor = &H0&
    Left = 10620
    Top = 9000
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 14
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
  Begin Shape Shape1
    BorderColor = &HC0C0FF&
    Left = 9120
    Top = 9330
    Width = 3060
    Height = 1035
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HC0E0FF&
    FillStyle = 0
  End
End

Attribute VB_Name = "RsSaleBillSplit"

Private global_56 As Integer
Private global_156 As Integer
Private global_158 As Integer
Private global_128 As Integer
Private global_108 As Integer

Private Sub DGItem_UnknownEvent_9 '11505BC
  'Data Table: 586158
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_1150227: Me.DGItem.Visible = False
  loc_1150246: If (Me.RecordCount > 0) Then
  loc_1150283:   Set var_B4 = Me.TxtGrid
  loc_1150289:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_1150291:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11502BA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11502C2:   var_EC = CVar(CLng(4)) 'Long
  loc_11502F5:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_11502FD:   Set var_B8 = Me.FGrid
  loc_1150303:   LateIdCallSt
  loc_1150332:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115033A:   var_EC = CVar(CLng(&HB)) 'Long
  loc_115036D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_115037B:   LateIdCallSt
  loc_11503E2:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(6)))) 'String
  loc_11503EA:   Set var_B8 = Me.FGrid
  loc_11503F0:   LateIdCallSt
  loc_115041D:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1150425:   var_EC = CVar(CLng(3)) 'Long
  loc_1150458:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1150466:   LateIdCallSt
  loc_11504CD:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_11504DB:   LateIdCallSt
  loc_1150508:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115052F:   var_B0 = Me.Fields.Item("RateIncTax")
  loc_1150540:   var_11C = CVar(Proc_6_38_E69628(CVar(var_B0), CVar(CLng(&H1C)), var_A4, Me.FGrid, var_11C, Me.FGrid)) 'String
  loc_1150548:   Set var_B8 = Me.FGrid
  loc_115054E:   LateIdCallSt
  loc_1150568: End If
  loc_1150574: Set var_A8 = Me.TxtGrid
  loc_115057A: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C)
  loc_1150582: var_11C = var_B0.Visible
  loc_1150594: If (var_12E = &HFF) Then
  loc_11505A0:   Set var_A8 = Me.TxtGrid
  loc_11505A6:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_A4)
  loc_11505AE:   var_B0.SetFocus
  loc_11505BA: End If
  loc_11505BA: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'EA0A20
  'Data Table: 586158
  Dim var_A8 As Variant
  loc_EA09A4: Set var_88 = Me.DGItem
  loc_EA09CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA09D6: Set var_BC = Me.DGItem
  loc_EA0A10: Proc_6_138_106E830(Me.DGItem, global_80, 0, Me.FGPoint)
  loc_EA0A1E: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F557F8
  'Data Table: 586158
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F556D8: On Error Goto loc_F557F2
  loc_F556EA: Me.DGTable.Visible = False
  loc_F55709: If (Me.RecordCount > 0) Then
  loc_F55748:   Set var_B4 = Me.Txt
  loc_F5574E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F55756:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F55789:   var_B0 = Me.Fields.Item("Code")
  loc_F557A8:   Set var_B4 = Me.Txt
  loc_F557AE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F557B6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F557CC: End If
  loc_F557D7: Set var_A8 = Me.Txt
  loc_F557DD: Call 0.Method_DGTable_UnknownEvent_90 (CInt(3))
  loc_F557E5: var_B0.SetFocus
  loc_F557F1: Exit Sub
  loc_F557F2: ' Referenced from: F556D8
  loc_F557F2: Proc_6_60_E63754(var_B0)
  loc_F557F7: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA26F8
  'Data Table: 586158
  Dim var_A8 As Variant
  loc_EA2678: Set var_88 = Me.DGTable
  loc_EA26A2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA26AA: Set var_BC = Me.DGTable
  loc_EA26E6: Proc_6_138_106E830(Me.DGTable, global_96, CInt(3), Me.FGPoint)
  loc_EA26F4: Exit Sub
End Sub

Private Sub TxtGt3_GotFocus(Index As Integer) 'ECA854
  'Data Table: 586158
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECA7BA: Set var_88 = Me.TxtGt3
  loc_ECA7C0: Call 0.Method_TxtGt3_GotFocus0 (Index)
  loc_ECA7CE: Proc_6_74_E23240(var_8C)
  loc_ECA7E9: Set var_88 = Me.TxtGt3
  loc_ECA7EF: Call 0.Method_TxtGt3_GotFocus0 (Index, var_8C)
  loc_ECA7F7: var_8C.SelStart = 0
  loc_ECA810: Set var_88 = Me.TxtGt3
  loc_ECA816: Call 0.Method_TxtGt3_GotFocus0 (Index, var_8C)
  loc_ECA831: Set var_90 = Me.TxtGt3
  loc_ECA837: Call 0.Method_TxtGt3_GotFocus0 (Index, var_98)
  loc_ECA83F: var_98.SelLength = Len(var_8C.Text)
  loc_ECA852: Exit Sub
End Sub

Private Sub TxtGt3_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A2E8
  'Data Table: 586158
  loc_E5A2B5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A2BE:   Proc_6_75_E5335C(Shift)
  loc_E5A2C3: End If
  loc_E5A2D8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A2E1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5A2E6: End If
  loc_E5A2E6: Exit Sub
End Sub

Private Sub TxtGt3_KeyPress(KeyAscii As Integer) 'E57C18
  'Data Table: 586158
  loc_E57BEA: Set var_88 = Me.TxtGt3
  loc_E57BF0: Call 0.Method_TxtGt3_KeyPress0 (KeyAscii)
  loc_E57C0B: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E57C17: Exit Sub
End Sub

Private Sub TxtGt3_LostFocus(Index As Integer) 'ED19F0
  'Data Table: 586158
  Dim var_D4 As TextBox
  loc_ED195A: Set var_88 = Me.TxtGt3
  loc_ED1960: Call 0.Method_TxtGt3_LostFocus0 (Index)
  loc_ED199A: Set var_D0 = Me.TxtGt3
  loc_ED19A0: Call 0.Method_TxtGt3_LostFocus0 (Index, var_D4, CStr(Format(CVar(var_8C), "0.00")))
  loc_ED19A8: var_D4.Text = 1
  loc_ED19CC: Set var_88 = Me.TxtGt3
  loc_ED19D2: Call 0.Method_TxtGt3_LostFocus0 (Index, var_8C)
  loc_ED19E0: Proc_6_73_E23294(var_8C, 1)
  loc_ED19EC: Exit Sub
End Sub

Private Sub TxtGt3_Validate(Cancel As Boolean) 'E06090
  'Data Table: 586158
  loc_E06087: Call Proc_162_111_129A2A4(CInt(&H1F))
  loc_E0608C: Exit Sub
End Sub

Private Sub Command1_Click() 'F9ED00
  'Data Table: 586158
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  Dim var_F0 As Double
  loc_F9EBCE: Set var_88 = Me.Txt
  loc_F9EBD4: Call 0.Method_Command1_Click0 (CInt(3), var_8C)
  loc_F9EBEF: Set var_94 = Me.Txt
  loc_F9EBF5: Call 0.Method_Command1_Click0 (CInt(2), var_98)
  loc_F9EC10: Set var_9C = Me.Txt
  loc_F9EC16: Call 0.Method_Command1_Click0 (CInt(3), var_A0)
  loc_F9EC2A: Set var_A4 = Me.TxtGt
  loc_F9EC30: Call 0.Method_Command1_Click8 (var_A6)
  loc_F9EC42: Set var_AC = Me.TxtGt
  loc_F9EC48: Call 0.Method_Command1_Click0 (var_A6, var_B0)
  loc_F9EC5D: var_F0 = Val(var_B0.Text)
  loc_F9EC65: var_E8 = 0
  loc_F9EC70: var_E4 = 0
  loc_F9EC7B: var_E0 = 0
  loc_F9ECD0: Proc_6_131_FADE30(1, 5, global_144, var_8C.Tag, var_98.Text, 0, var_A0.Text, global_148)
  loc_F9ECFD: Exit Sub
End Sub

Private Sub TxtGt2_GotFocus(Index As Integer) 'ECA114
  'Data Table: 586158
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECA07A: Set var_88 = Me.TxtGt2
  loc_ECA080: Call 0.Method_TxtGt2_GotFocus0 (Index)
  loc_ECA08E: Proc_6_74_E23240(var_8C)
  loc_ECA0A9: Set var_88 = Me.TxtGt2
  loc_ECA0AF: Call 0.Method_TxtGt2_GotFocus0 (Index, var_8C)
  loc_ECA0B7: var_8C.SelStart = 0
  loc_ECA0D0: Set var_88 = Me.TxtGt2
  loc_ECA0D6: Call 0.Method_TxtGt2_GotFocus0 (Index, var_8C)
  loc_ECA0F1: Set var_90 = Me.TxtGt2
  loc_ECA0F7: Call 0.Method_TxtGt2_GotFocus0 (Index, var_98)
  loc_ECA0FF: var_98.SelLength = Len(var_8C.Text)
  loc_ECA112: Exit Sub
End Sub

Private Sub TxtGt2_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A450
  'Data Table: 586158
  loc_E5A41D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A426:   Proc_6_75_E5335C(Shift)
  loc_E5A42B: End If
  loc_E5A440: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A449:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5A44E: End If
  loc_E5A44E: Exit Sub
End Sub

Private Sub TxtGt2_KeyPress(KeyAscii As Integer) 'E57F44
  'Data Table: 586158
  loc_E57F16: Set var_88 = Me.TxtGt2
  loc_E57F1C: Call 0.Method_TxtGt2_KeyPress0 (KeyAscii)
  loc_E57F37: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E57F43: Exit Sub
End Sub

Private Sub TxtGt2_LostFocus(Index As Integer) 'ED1AE0
  'Data Table: 586158
  Dim var_D4 As TextBox
  loc_ED1A4A: Set var_88 = Me.TxtGt2
  loc_ED1A50: Call 0.Method_TxtGt2_LostFocus0 (Index)
  loc_ED1A8A: Set var_D0 = Me.TxtGt2
  loc_ED1A90: Call 0.Method_TxtGt2_LostFocus0 (Index, var_D4, CStr(Format(CVar(var_8C), "0.00")))
  loc_ED1A98: var_D4.Text = 1
  loc_ED1ABC: Set var_88 = Me.TxtGt2
  loc_ED1AC2: Call 0.Method_TxtGt2_LostFocus0 (Index, var_8C)
  loc_ED1AD0: Proc_6_73_E23294(var_8C, 1)
  loc_ED1ADC: Exit Sub
End Sub

Private Sub TxtGt2_Validate(Cancel As Boolean) 'E05D10
  'Data Table: 586158
  loc_E05D07: Call Proc_162_111_129A2A4(CInt(&H1E))
  loc_E05D0C: Exit Sub
  loc_E05D0D: Set var_A8 = 
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECD208
  'Data Table: 586158
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECD16A: Set var_88 = Me.TxtGt
  loc_ECD170: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECD17E: Proc_6_74_E23240(var_8C)
  loc_ECD18A: Call Proc_162_93_EF84A4(var_8C)
  loc_ECD19E: Set var_88 = Me.TxtGt
  loc_ECD1A4: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECD1AC: var_8C.SelStart = 0
  loc_ECD1C5: Set var_88 = Me.TxtGt
  loc_ECD1CB: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECD1E6: Set var_90 = Me.TxtGt
  loc_ECD1EC: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECD1F4: var_98.SelLength = Len(var_8C.Text)
  loc_ECD207: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A5B8
  'Data Table: 586158
  loc_E5A585: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A58E:   Proc_6_75_E5335C(Shift)
  loc_E5A593: End If
  loc_E5A5A8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A5B1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5A5B6: End If
  loc_E5A5B6: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E580A0
  'Data Table: 586158
  loc_E58072: Set var_88 = Me.TxtGt
  loc_E58078: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E58093: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E5809F: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E478FC
  'Data Table: 586158
  loc_E478DA: Set var_88 = Me.TxtGt
  loc_E478E0: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E478EE: Proc_6_73_E23294(var_8C)
  loc_E478FA: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E021AC
  'Data Table: 586158
  loc_E021A6: Call Proc_162_101_16A73F8(Cancel)
  loc_E021AB: Exit Sub
End Sub

Private Sub TxtGt1_GotFocus(Index As Integer) 'ECA02C
  'Data Table: 586158
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_EC9F92: Set var_88 = Me.TxtGt1
  loc_EC9F98: Call 0.Method_TxtGt1_GotFocus0 (Index)
  loc_EC9FA6: Proc_6_74_E23240(var_8C)
  loc_EC9FC1: Set var_88 = Me.TxtGt1
  loc_EC9FC7: Call 0.Method_TxtGt1_GotFocus0 (Index, var_8C)
  loc_EC9FCF: var_8C.SelStart = 0
  loc_EC9FE8: Set var_88 = Me.TxtGt1
  loc_EC9FEE: Call 0.Method_TxtGt1_GotFocus0 (Index, var_8C)
  loc_ECA009: Set var_90 = Me.TxtGt1
  loc_ECA00F: Call 0.Method_TxtGt1_GotFocus0 (Index, var_98)
  loc_ECA017: var_98.SelLength = Len(var_8C.Text)
  loc_ECA02A: Exit Sub
End Sub

Private Sub TxtGt1_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B5A8
  'Data Table: 586158
  loc_E5B575: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B57E:   Proc_6_75_E5335C(Shift)
  loc_E5B583: End If
  loc_E5B598: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B5A1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5B5A6: End If
  loc_E5B5A6: Exit Sub
End Sub

Private Sub TxtGt1_KeyPress(KeyAscii As Integer) 'E5859C
  'Data Table: 586158
  loc_E5856E: Set var_88 = Me.TxtGt1
  loc_E58574: Call 0.Method_TxtGt1_KeyPress0 (KeyAscii)
  loc_E5858F: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E5859B: Exit Sub
End Sub

Private Sub TxtGt1_LostFocus(Index As Integer) 'ED1DB0
  'Data Table: 586158
  Dim var_D4 As TextBox
  loc_ED1D1A: Set var_88 = Me.TxtGt1
  loc_ED1D20: Call 0.Method_TxtGt1_LostFocus0 (Index)
  loc_ED1D5A: Set var_D0 = Me.TxtGt1
  loc_ED1D60: Call 0.Method_TxtGt1_LostFocus0 (Index, var_D4, CStr(Format(CVar(var_8C), "0.00")))
  loc_ED1D68: var_D4.Text = 1
  loc_ED1D8C: Set var_88 = Me.TxtGt1
  loc_ED1D92: Call 0.Method_TxtGt1_LostFocus0 (Index, var_8C)
  loc_ED1DA0: Proc_6_73_E23294(var_8C, 1)
  loc_ED1DAC: Exit Sub
End Sub

Private Sub TxtGt1_Validate(Cancel As Boolean) 'E05B50
  'Data Table: 586158
  loc_E05B47: Call Proc_162_111_129A2A4(CInt(&H1D))
  loc_E05B4C: Exit Sub
  loc_E05B4D: Set var_A8 = 
End Sub

Private Sub FGPoint_UnknownEvent_9 'E874C8
  'Data Table: 586158
  loc_E87474: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E87477:   Call DGTable_UnknownEvent_9()
  loc_E8747C: End If
  loc_E87498: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E8749B:   Call DGItem_UnknownEvent_9()
  loc_E874A0: End If
  loc_E874BC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E874BF:   Call DGRest_UnknownEvent_9()
  loc_E874C4: End If
  loc_E874C4: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F11468
  'Data Table: 586158
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F11390: Set var_A4 = Me.ListView
  loc_F113DA: Set var_BC = Me.Txt
  loc_F113E0: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F113E8: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F11414: Me.FrmList.Visible = False
  loc_F11444: Set var_9C = Me.Txt
  loc_F1144A: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F11452: var_A4.SetFocus
  loc_F11466: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'FE59BC
  'Data Table: 586158
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE57F7: Me.DGRest.Visible = False
  loc_FE5816: If (Me.RecordCount > 0) Then
  loc_FE5853:   Set var_B4 = Me.TxtGrid
  loc_FE5859:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE5861:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE588A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE5892:   var_EC = CVar(CLng(2)) 'Long
  loc_FE58C5:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE58CD:   Set var_B8 = Me.FGrid
  loc_FE58D3:   LateIdCallSt
  loc_FE5902:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE590A:   var_EC = CVar(CLng(1)) 'Long
  loc_FE592C:   var_B0 = Me.Fields.Item("Code")
  loc_FE593D:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE5945:   Set var_B8 = Me.FGrid
  loc_FE594B:   LateIdCallSt
  loc_FE5967: End If
  loc_FE5973: Set var_A8 = Me.TxtGrid
  loc_FE5979: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE5981: var_A4 = var_B0.Visible
  loc_FE5993: If (var_12E = &HFF) Then
  loc_FE599F:   Set var_A8 = Me.TxtGrid
  loc_FE59A5:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE59AD:   var_B0.SetFocus
  loc_FE59B9: End If
  loc_FE59B9: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'EA0AE0
  'Data Table: 586158
  Dim var_A8 As Variant
  loc_EA0A64: Set var_88 = Me.DGRest
  loc_EA0A8E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA0A96: Set var_BC = Me.DGRest
  loc_EA0AD0: Proc_6_138_106E830(Me.DGRest, global_84, 0, Me.FGPoint)
  loc_EA0ADE: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '100E2B4
  'Data Table: 586158
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_100E0B6: Set var_88 = Me.TxtGrid
  loc_100E0BC: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_100E0CA: Proc_6_74_E23240(var_8C)
  loc_100E0D6: Call Proc_162_93_EF84A4(var_8C)
  loc_100E0E9: Set var_88 = Me.TxtGrid
  loc_100E0EF: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_100E0F7: var_8C.MaxLength = 0
  loc_100E10F: If (Index = 0) Then
  loc_100E125:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_100E12E:   Set var_8C = Me.FGrid
  loc_100E164:   Set var_108 = Me.TxtGrid
  loc_100E16A:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_100E172:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_100E1A3:   var_114 = CLng(Me.FGrid.Col)
  loc_100E1B3:   If (var_114 = CLng(&H1D)) Then
  loc_100E1C5:     Set var_88 = Me.TxtGrid
  loc_100E1CB:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_100E1D3:     var_8C.MaxLength = var_114
  loc_100E1E8:     If (global_158 = 0) Then
  loc_100E1F3:       var_110 = "{Home}+{End}"
  loc_100E1F9:       Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_100E201:     End If
  loc_100E204:   Else
  loc_100E20B:     If (var_114 = CLng(&H1E)) Then
  loc_100E21D:       Set var_88 = Me.TxtGrid
  loc_100E223:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_100E22B:       var_8C.MaxLength = var_C4
  loc_100E240:       If (global_158 = 0) Then
  loc_100E24B:         var_110 = "{Home}+{End}"
  loc_100E251:         Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_100E259:       End If
  loc_100E25C:     Else
  loc_100E263:       If (var_114 = CLng(&H1F)) Then
  loc_100E275:         Set var_88 = Me.TxtGrid
  loc_100E27B:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_100E283:         var_8C.MaxLength = 0
  loc_100E298:         If (global_158 = 0) Then
  loc_100E2A3:           var_110 = "{Home}+{End}"
  loc_100E2A9:           Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_100E2B1:         End If
  loc_100E2B1:       End If
  loc_100E2B1:     End If
  loc_100E2B1:   End If
  loc_100E2B1: End If
  loc_100E2B1: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1124E1C
  'Data Table: 586158
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_1124AC2: If (KeyCode = 0) Then
  loc_1124ACF:   If (CLng(Shift) = &H1B) Then
  loc_1124ADF:     Set var_8C = Me.TxtGrid
  loc_1124AE5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1124AED:     var_88 = var_90.Tag
  loc_1124AFF:     Set var_98 = Me.TxtGrid
  loc_1124B05:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1124B0D:     var_9C.Text = var_94
  loc_1124B20:     Call Proc_162_93_EF84A4(Shift)
  loc_1124B29:     Set var_8C = Me.FGrid
  loc_1124B46:     Set var_8C = Me.TxtGrid
  loc_1124B4C:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1124B54:     var_90.Visible = False
  loc_1124B60:     Exit Sub
  loc_1124B61:   End If
  loc_1124B74:   var_B0 = CLng(Me.FGrid.Col)
  loc_1124B84:   If (var_B0 = CLng(&H1D)) Then
  loc_1124B8D:     Call Proc_162_88_111C610(KeyCode, var_B2)
  loc_1124B98:     If (var_B2 = &HFF) Then
  loc_1124BA2:       Call Proc_162_102_19DD7D0(CInt(&H1D), var_B0)
  loc_1124BE7:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_1124BF6:         Call Proc_162_112_12CD5E8(KeyCode, &H1D)
  loc_1124C01:         If (var_B4 = &HFF) Then
  loc_1124C04:           Exit Sub
  loc_1124C05:         End If
  loc_1124C05:       End If
  loc_1124C48:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_158, &H1F)
  loc_1124C58:     End If
  loc_1124C5B:   Else
  loc_1124C62:     If (var_B0 = CLng(&H1E)) Then
  loc_1124C6B:       Call Proc_162_88_111C610(KeyCode, var_B2, 0, 0)
  loc_1124C76:       If (var_B2 = &HFF) Then
  loc_1124C80:         Call Proc_162_102_19DD7D0(CInt(&H1E), 0)
  loc_1124CC5:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_1124CD4:           Call Proc_162_112_12CD5E8(KeyCode, &H1E, var_B4)
  loc_1124CDF:           If (var_B4 = &HFF) Then
  loc_1124CE2:             Exit Sub
  loc_1124CE3:           End If
  loc_1124CE3:         End If
  loc_1124D2D:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_158, CByte((CInt(&H1F) + 1)))
  loc_1124D3D:       End If
  loc_1124D40:     Else
  loc_1124D47:       If (var_B0 = CLng(&H1F)) Then
  loc_1124D50:         Call Proc_162_88_111C610(KeyCode, var_B2, 0, 0)
  loc_1124D5B:         If (var_B2 = &HFF) Then
  loc_1124D65:           Call Proc_162_102_19DD7D0(CInt(&H1F), 0)
  loc_1124DAA:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_1124DB9:             Call Proc_162_112_12CD5E8(KeyCode, &H1F, var_B4)
  loc_1124DC4:             If (var_B4 = &HFF) Then
  loc_1124DC7:               Exit Sub
  loc_1124DC8:             End If
  loc_1124DC8:           End If
  loc_1124E0B:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_158, &H1F)
  loc_1124E1B:         End If
  loc_1124E1B:       End If
  loc_1124E1B:     End If
  loc_1124E1B:   End If
  loc_1124E1B: End If
  loc_1124E1B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F1DD8C
  'Data Table: 586158
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_F1DC8F: Proc_6_58_E06050(arg_10)
  loc_F1DCA0: If (KeyAscii = 0) Then
  loc_F1DCB6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F1DCC6:   If (var_A0 = CLng(&H1D)) Then
  loc_F1DCD3:     Set var_8C = Me.TxtGrid
  loc_F1DCD9:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_F1DCF4:     Proc_6_42_129B55C(var_A4, arg_10, 8)
  loc_F1DD03:   Else
  loc_F1DD0A:     If (var_A0 = CLng(&H1E)) Then
  loc_F1DD17:       Set var_8C = Me.TxtGrid
  loc_F1DD1D:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 3)
  loc_F1DD38:       Proc_6_42_129B55C(var_A4, arg_10, 8)
  loc_F1DD47:     Else
  loc_F1DD4E:       If (var_A0 = CLng(&H1F)) Then
  loc_F1DD5B:         Set var_8C = Me.TxtGrid
  loc_F1DD61:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 3)
  loc_F1DD7C:         Proc_6_42_129B55C(var_A4, arg_10, 8)
  loc_F1DD88:       End If
  loc_F1DD88:     End If
  loc_F1DD88:   End If
  loc_F1DD88: End If
  loc_F1DD88: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24200
  'Data Table: 586158
  Dim arg_10 As Integer
  loc_E241E8: If (Cancel = 0) Then
  loc_E241F1:   Call Proc_162_88_111C610(Cancel, var_88)
  loc_E241FA:   arg_10 = Not(var_88)
  loc_E241FD: End If
  loc_E241FD: Exit Sub
End Sub

Private Sub Form_Load() '1454A34
  'Data Table: 586158
  Dim var_A8 As String
  Dim var_B8 As Variant
  Dim var_94 As Variant
  Dim var_C8 As Variant
  Dim var_E4 As String
  Dim unk_58621F As Connection15
  Dim var_CC As Variant
  Dim unk_586184 As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Variant
  Dim var_E0 As Variant
  Dim var_EC As Variant
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_144 As Variant
  Dim var_104 As Variant
  Dim var_174 As String
  loc_1453EF0: On Error Goto loc_1454A2B
  loc_1453EF7: Set var_94 = Me.TopCtrl1
  loc_1453EFD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B()
  loc_1453F27: var_B8 = CVar(Replace(CStr(var_A4), "E", "*", 1, -1, 0)) 'String
  loc_1453F2F: Set var_CC = Me.TopCtrl1
  loc_1453F35: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_B8)
  loc_1453F80: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), Proc_96_17_FDCB2C(global_60, global_212, 0))
  loc_1453F9B: Proc_6_23_DFC5B8(Me, 0, 0)
  loc_1453FB1: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_1453FB9: Call Proc_162_79_143F9C0(global_216)
  loc_1453FCB: Set var_94 = Me.FGrid
  loc_1453FD1: var_94.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1454000: unk_58621F.Execute "Select * from PrinterSetup where RestCode='" & global_60 & "'", var_A4, -1
  loc_1454011: Set global_192 = var_94
  loc_1454031: If (global_212 = "Room Service") Then
  loc_1454040:   Me.Command1.Visible = False
  loc_1454059:   Call 0.Method_Form_Load0 (4, var_CC, 0)
  loc_1454061:   var_CC.Visible = Me.Label1
  loc_1454078:   Set var_94 = Me.Label1
  loc_145407E:   Call 0.Method_Form_Load0 (5, var_CC)
  loc_1454086:   var_CC.Visible = False
  loc_145409D:   Set var_94 = Me.Label1
  loc_14540A3:   Call 0.Method_Form_Load0 (6, var_CC)
  loc_14540AB:   var_CC.Visible = False
  loc_14540C2:   Set var_94 = Me.Txt
  loc_14540C8:   Call 0.Method_Form_Load0 (6, var_CC)
  loc_14540D0:   var_CC.Visible = False
  loc_14540E7:   Set var_94 = Me.Txt
  loc_14540ED:   Call 0.Method_Form_Load0 (7, var_CC)
  loc_14540F5:   var_CC.Visible = False
  loc_145410C:   Set var_94 = Me.Txt
  loc_1454112:   Call 0.Method_Form_Load0 (8, var_CC)
  loc_145411A:   var_CC.Visible = False
  loc_1454132:   Me.Shape1.Visible = False
  loc_145413A: End If
  loc_1454140: If (MemVar_1F950B8 <> 1) Then
  loc_1454147:   Set var_94 = Me.TopCtrl1
  loc_145414D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(global_224)
  loc_1454177:   var_B8 = CVar(Replace(CStr(var_A4), "D", "*", 1, -1, 0)) 'String
  loc_145417F:   Set var_CC = Me.TopCtrl1
  loc_1454185:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_B8)
  loc_145419B: End If
  loc_14541C2: unk_586184.Execute "Select RateInclTax from depart where code='" & global_60 & "'", var_A4, -1
  loc_14541CD: Set var_8C = var_94
  loc_14541F1: If (var_8C.RecordCount > 0) Then
  loc_145420B:   var_CC = var_8C.Fields.Item("RateInclTax")
  loc_1454213:   var_A4 = CVar(var_CC) 'Address
  loc_1454225:   global_136 = Proc_6_38_E69628(var_A4)
  loc_1454231: End If
  loc_1454236: Set var_8C = Nothing
  loc_145423F: var_E0 = 0
  loc_145426F: unk_586184.Execute "Select KOtYn from depart where Code='" & global_60 & "'", var_A4, -1
  loc_1454277: var_94 = var_94.Fields
  loc_145427F: var_E0 = var_CC.Item(var_CC)
  loc_1454287: var_EC = var_EC.Value
  loc_1454296: global_200 = CStr(var_B8)
  loc_14542B9: var_E0 = 0
  loc_14542E9: unk_586184.Execute "Select AutoSplit from depart where Code='" & global_60 & "'", var_A4, -1
  loc_14542F9: var_E0 = var_CC.Item(var_CC)
  loc_1454301: var_EC = var_EC.Value
  loc_1454314: global_196 = Proc_6_38_E69628(var_B8, var_B8)
  loc_1454358: unk_586184.Execute "Select ShortName,Code from Depart Where Code='" & global_60 & "'", var_A4, -1
  loc_1454363: Set var_88 = var_94.Fields
  loc_1454387: If (var_88.RecordCount > 0) Then
  loc_14543BB:   global_216 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_14543E6:   var_CC = var_88.Fields.Item("Code")
  loc_14543EE:   var_A4 = var_CC.Value
  loc_14543FD:   global_220 = CStr(var_A4)
  loc_145440E: End If
  loc_145442A: Me.CursorLocation = 3
  loc_1454452: Me.Open "SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where OutletYN='Y' ORDER BY NAME", CVar(MemVar_1F95044), 3
  loc_1454460: CVarUnk
  loc_1454465: VerifyVarObj
  loc_1454471: LateIdStAd
  loc_145447F: Call Proc_162_99_114CEA4(Me.DGRest, New, 1, -1)
  loc_145448A: var_E0 = 0
  loc_14544BA: unk_586184.Execute "Select Name From Depart Where Code ='" & global_60 & "'", var_A4, -1
  loc_14544C2: var_94 = var_94.Fields
  loc_14544CA: var_E0 = var_CC.Item(var_CC)
  loc_14544D2: var_EC = var_EC.Value
  loc_14544E8: Me.LblRest.Caption = CStr(var_B8)
  loc_1454512: Set global_92 = New 
  loc_1454524: Me.Recordset15.CursorLocation = 3
  loc_1454534: Proc_6_7_F26918(var_A4, MemVar_1F950EC, var_B8)
  loc_145453F: var_144 = 0
  loc_145455F: var_E4 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_145456F: unk_586184.Execute "Select Name From Depart Where Code ='" & global_60 & "'" & "'", var_134, -1
  loc_1454577: var_94 = var_94.Fields
  loc_145457F: var_144 = var_CC.Item(var_CC)
  loc_1454587: var_EC = var_EC.Value
  loc_14545AA: var_A8 = "Select S.DocId as SearchCode,S.DocID From Sale1 S INNER JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE WHERE S.LOGSITE_CODE='" & MemVar_1F95078
  loc_14545B1: var_B8 = CVar(var_A8 & "' AND S.VDate=") 'String
  loc_1454621: Me.Recordset15.CursorLocation = 3
  loc_1454644: var_A8 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax From ((ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code) INNER Join Depart D On D.Code=I.RestCode) INNER join ItemCatMast IC on IC.Code=I.ItemCatCode Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_145464B: var_A4 = CVar(var_A8 & "' or I.LOGSITE_CODE='HO') AND I.Type='Finish' And I.DispCode <>9999 Order by I.Name") 'String
  loc_1454655: r_B8 & var_A4 & " And S.DELFLAG='N' AND S.VTYPE='" & var_154 & "' ORDER BY S.DOCID", CVar(MemVar_1F95044), 3 var_A4, CVar(MemVar_1F95044), 3
  loc_1454669: CVarUnk
  loc_145466E: VerifyVarObj
  loc_1454674: Set var_94 = Me.DGItem
  loc_145467A: LateIdStAd
  loc_14546BB: Call 0.Method_arg_50 ("Select Name From Depart Where Code ='" & global_60 & "'", "SELECT COUNT(*) FROM LASTVOU WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' AND ENAME='", var_A4, -1, var_94, var_CC, 0, var_EC)
  loc_14546E2: unk_586184.Execute var_B8 & "Select Name From Depart Where Code ='" & global_60 & "'" & "' AND UNAME='" & MemVar_1F950C8 & "'", var_94, New
  loc_14546EA: 1 = var_94.Fields
  loc_14546F2: 1 = var_CC.Item(-1)
  loc_14546FA: -1 = var_EC.Value
  loc_145472B: If (var_B8 > 0) Then
  loc_1454774:   Call 0.Method_arg_50 ("Select Name From Depart Where Code ='" & global_60 & "'", "SELECT DOCID FROM LASTVOU WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' AND ENAME='", var_A4, -1, var_94, var_CC, 0)
  loc_145479B:   unk_586184.Execute var_EC & "Select Name From Depart Where Code ='" & global_60 & "'" & "' AND UNAME='" & MemVar_1F950C8 & "'", var_B8, "SearchCode='"
  loc_14547A3:   0 = var_94.Fields
  loc_14547AB:   var_174 = var_CC.Item(1)
  loc_14547B3:    = var_EC.Value
  loc_14547D2:   Me.Find CStr(var_B8 & "'"), , 
  loc_14547FE: End If
  loc_1454815: If (Me.RecordCount > 0) Then
  loc_145482C:   If (Me.EOF = &HFF) Then
  loc_1454835:     Me.MoveLast
  loc_145483A:   End If
  loc_145483A: End If
  loc_1454843: Call 0.Method_arg_160 (var_94)
  loc_1454851: Call 0.Method_arg_164 (var_94)
  loc_145487C: Call Proc_162_92_1005DCC(Proc_5_1_100EC1C("INI", Me))
  loc_14548A9: Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_14548FD: var_C8 = CVar((CDbl(Me.FGrid.Left) + (CDbl(Me.FGrid.Width) - CDbl(Me.DGItem.Width)))) 'Single
  loc_145490C: Me.DGItem.Left = CVar(CDbl(Me.FGrid.Top))
  loc_1454947: Me.DGItem.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1454978: Me.DGRest.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1454991: var_B8 = Me.FGrid.Width
  loc_14549A4: var_104 = Me.DGRest.Width
  loc_14549CC: var_C8 = CVar((CDbl(Me.FGrid.Left) + (CDbl(var_B8) - CDbl(var_104)))) 'Single
  loc_14549DB: Me.DGRest.Left = CVar(CDbl(Me.FGrid.Top))
  loc_1454A16: Me.DGRest.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1454A25: Call Proc_162_89_1B43764(var_104, var_B8, var_104)
  loc_1454A2A: Exit Sub
  loc_1454A2B: ' Referenced from: 1453EF0
  loc_1454A2B: Proc_6_60_E63754(var_B8)
  loc_1454A30: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E888B0
  'Data Table: 586158
  loc_E88843: Set global_84 = Nothing
  loc_E88855: Set global_80 = Nothing
  loc_E88867: Set global_96 = Nothing
  loc_E88873: global_56 = 0
  loc_E88881: Set global_84 = Nothing
  loc_E88893: Set global_192 = Nothing
  loc_E888A5: Set global_52 = Nothing
  loc_E888AC: Exit Sub
End Sub

Private Sub Form_Activate() '1068B20
  'Data Table: 586158
  Dim var_A4 As Integer
  Dim var_B0 As String
  Dim unk_586184 As Connection15
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_AC As Recordset15
  loc_10688BF: Set var_A8 = Me.TopCtrl1
  loc_10688C5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(False)
  loc_10688D7: Set var_A8 = Me.TopCtrl1
  loc_10688DD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(True)
  loc_10688F0: Set var_A8 = Me.TopCtrl1
  loc_10688F6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_1068908: Set var_A8 = Me.TopCtrl1
  loc_106890E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000F(True)
  loc_106892E: var_A4 = 0
  loc_106894E: var_B0 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_106895E: unk_586184.Execute var_B0 & "'", var_C4, -1
  loc_1068966: var_A8 = var_A8.Fields
  loc_106896E: var_A4 = var_C8.Item(var_C8)
  loc_1068976: var_CC = var_CC.Value
  loc_106897E: var_FC = var_DC & var_DC 
  loc_1068987: var_11C = var_FC & "' Order by Description" 
  loc_1068995: unk_586184.Execute CStr(var_11C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_140
  loc_10689A0: Set var_AC = var_144
  loc_10689D8: If (var_AC.RecordCount > 0) Then
  loc_10689F5:   var_C8 = var_AC.Fields.Item(0)
  loc_1068A0C:   global_144 = CStr(var_C8.Value)
  loc_1068A20: Else
  loc_1068A33:   var_C4 = "Point of Sale Not Configured for selected Restaurant"
  loc_1068A39:   MsgBox(var_C4, 0, var_DC, var_FC, var_11C)
  loc_1068A56:   Me.Global.Unload Me
  loc_1068A5E:   Exit Sub
  loc_1068A5F: End If
  loc_1068A65: var_A4 = 0
  loc_1068A95: unk_586184.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_144 & "'", var_C4, -1
  loc_1068A9D: var_A8 = var_A8.Fields
  loc_1068AA5: var_A4 = var_C8.Item(var_C8)
  loc_1068AAD: var_CC = var_CC.Value
  loc_1068AD4: If (var_DC <= 0) Then
  loc_1068AF0:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_1068B0D:   Me.Global.Unload Me
  loc_1068B15:   Exit Sub
  loc_1068B16: End If
  loc_1068B1B: Set var_AC = Nothing
  loc_1068B1E: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E27204
  'Data Table: 586158
  loc_E271E9: If (global_56 = &HFF) Then
  loc_E271F9:   Me.Global.Unload Me
  loc_E27201: End If
  loc_E27201: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3B708
  'Data Table: 586158
  loc_E3B6DC: On Error Goto loc_E3B700
  loc_E3B6F7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3B6FF: Exit Sub
  loc_E3B700: ' Referenced from: E3B6DC
  loc_E3B700: Proc_6_60_E63754(Shift)
  loc_E3B705: Exit Sub
  loc_E3B706: Set var_2000 = global_56
End Sub

Private Sub CmdSave_Click() 'DFFA9C
  'Data Table: 586158
  loc_DFFA94: Call TopCtrl1_UnknownEvent_16()
  loc_DFFA99: Exit Sub
End Sub

Private Sub Command2_Click() 'E1F4A0
  'Data Table: 586158
  loc_E1F484: Call TopCtrl1_UnknownEvent_14()
  loc_E1F48D: Set var_88 = Me.FGrid
  loc_E1F49E: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECD87C
  'Data Table: 586158
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECD7DE: Set var_88 = Me.TxtPer
  loc_ECD7E4: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECD7F2: Proc_6_74_E23240(var_8C)
  loc_ECD7FE: Call Proc_162_93_EF84A4(var_8C)
  loc_ECD812: Set var_88 = Me.TxtPer
  loc_ECD818: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECD820: var_8C.SelStart = 0
  loc_ECD839: Set var_88 = Me.TxtPer
  loc_ECD83F: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECD85A: Set var_90 = Me.TxtPer
  loc_ECD860: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECD868: var_98.SelLength = Len(var_8C.Text)
  loc_ECD87B: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E59CD0
  'Data Table: 586158
  loc_E59C9D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E59CA6:   Proc_6_75_E5335C(Shift)
  loc_E59CAB: End If
  loc_E59CC0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E59CC9:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E59CCE: End If
  loc_E59CCE: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E56570
  'Data Table: 586158
  loc_E56542: Set var_88 = Me.TxtPer
  loc_E56548: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E56563: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E5656F: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E0148C
  'Data Table: 586158
  loc_E01486: Call Proc_162_101_16A73F8(KeyCode)
  loc_E0148B: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E46B2C
  'Data Table: 586158
  loc_E46B0A: Set var_88 = Me.TxtPer
  loc_E46B10: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E46B1E: Proc_6_73_E23294(var_8C)
  loc_E46B2A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10DEF1C
  'Data Table: 586158
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_10DEC1E: Set var_88 = Me.Txt
  loc_10DEC24: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10DEC32: Proc_6_74_E23240(var_8C)
  loc_10DEC3E: Call Proc_162_93_EF84A4(var_8C)
  loc_10DEC46: var_92 = Index
  loc_10DEC51: If (var_92 = CInt(3)) Then
  loc_10DEC6B:   If (Me.RecordCount > 0) Then
  loc_10DEC79:     Set var_8C = Me.FGPoint
  loc_10DEC91:     Proc_6_137_1192FDC(Me.DGTable, global_96, Index)
  loc_10DEC9F:   End If
  loc_10DECED:   Set var_88 = Me.Txt
  loc_10DECF3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10DECFB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10DED13:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_10DED16:     Exit Sub
  loc_10DED17:   End If
  loc_10DED24:   Set var_88 = Me.Txt
  loc_10DED2A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DED32:   var_A0 = var_8C.Text
  loc_10DED3A:   var_D4 = CVar(var_A0) 'String
  loc_10DED5B:   var_B4 = Me.Fields.Item("Name")
  loc_10DED7F:   If CBool(var_D4 <> var_B4.Value) Then
  loc_10DED88:     Me.MoveFirst
  loc_10DEDAD:     Set var_88 = Me.Txt
  loc_10DEDB3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_10DEDBB:     0 = var_8C.Text
  loc_10DEDC9:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_10DEDDF:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_10DEDF7:   End If
  loc_10DEDFA: Else
  loc_10DEE02:   If Not (var_92 = CInt(4)) Then
  loc_10DEE0D:     If Not (var_92 = CInt(7)) Then
  loc_10DEE18:       If (var_92 = CInt(8)) Then
  loc_10DEE1B:       End If
  loc_10DEE1B:     End If
  loc_10DEE2A:     Set var_88 = Me.Txt
  loc_10DEE30:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DEE38:     var_8C.SelStart = 0
  loc_10DEE51:     Set var_88 = Me.Txt
  loc_10DEE57:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DEE72:     Set var_90 = Me.Txt
  loc_10DEE78:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_10DEE80:     var_B4.SelLength = Len(var_8C.Text)
  loc_10DEE96:   Else
  loc_10DEE9E:     If (var_92 = CInt(6)) Then
  loc_10DEEB0:       Set var_88 = Me.Txt
  loc_10DEEB6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DEEBE:       var_8C.SelStart = 0
  loc_10DEED7:       Set var_88 = Me.Txt
  loc_10DEEDD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DEEF8:       Set var_90 = Me.Txt
  loc_10DEEFE:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_10DEF06:       var_B4.SelLength = Len(var_8C.Text)
  loc_10DEF19:     End If
  loc_10DEF19:   End If
  loc_10DEF19: End If
  loc_10DEF19: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1005910
  'Data Table: 586158
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_9C As Frame
  loc_1005717: var_86 = Shift
  loc_1005724: If (CLng(Shift) = &H1B) Then
  loc_1005727:   Call Proc_162_93_EF84A4(var_86)
  loc_100572C:   Exit Sub
  loc_100572D: End If
  loc_100573B: If (KeyCode = CInt(3)) Then
  loc_100575B:   Set var_A0 = Me.FGPoint
  loc_1005766:   Set var_9C = Nothing
  loc_1005798:   Proc_6_69_134A630(Me.DGTable, Me.Txt, CInt(3), global_96, Shift, 0)
  loc_1005807:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_100582D:     Proc_6_138_106E830(Me.DGTable, global_96, KeyCode, Me.FGPoint, 1)
  loc_100583B:   End If
  loc_100583B: End If
  loc_100586F: Set var_9C = Me.FrmList
  loc_1005891: If (((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGTable.Visible) = 0)) And (var_9C.Visible = 0)) Then
  loc_10058B2:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_10058B8:     Call Proc_162_94_F0C698(KeyCode, var_9C, var_A0)
  loc_10058BD:     Exit Sub
  loc_10058BE:   End If
  loc_10058D3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10058DC:     Proc_6_75_E5335C(Shift, arg_14)
  loc_10058E1:   End If
  loc_10058E9:   If (KeyCode <> CInt(3)) Then
  loc_1005901:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_100590A:       Proc_6_76_E533C8(Shift, arg_14)
  loc_100590F:     End If
  loc_100590F:   End If
  loc_100590F: End If
  loc_100590F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F7A794
  'Data Table: 586158
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F7A648: On Error Goto loc_F7A78E
  loc_F7A64E: Proc_6_58_E06050(arg_10)
  loc_F7A656: var_86 = KeyAscii
  loc_F7A661: If Not (var_86 = CInt(0)) Then
  loc_F7A66C:   If (var_86 = CInt(4)) Then
  loc_F7A66F:   End If
  loc_F7A679:   Set var_8C = Me.Txt
  loc_F7A67F:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F7A69A:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_F7A6A9: Else
  loc_F7A6B1:   If Not (var_86 = CInt(6)) Then
  loc_F7A6BC:     If (var_86 = CInt(7)) Then
  loc_F7A6BF:     End If
  loc_F7A6C9:     Set var_8C = Me.Txt
  loc_F7A6CF:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F7A6EA:     Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_F7A6F9:   Else
  loc_F7A701:     If (var_86 = CInt(3)) Then
  loc_F7A720:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F7A74D:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_F7A77F:         Proc_6_138_106E830(Me.DGTable, global_96, KeyAscii, Me.FGPoint)
  loc_F7A78D:       End If
  loc_F7A78D:     End If
  loc_F7A78D:   End If
  loc_F7A78D: End If
  loc_F7A78D: Exit Sub
  loc_F7A78E: ' Referenced from: F7A648
  loc_F7A78E: Proc_6_60_E63754(0, 2)
  loc_F7A793: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F876F8
  'Data Table: 586158
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_118 As Double
  Dim var_A4 As TextBox
  Dim var_120 As Double
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_10C As TextBox
  loc_F875CF: var_86 = KeyCode
  loc_F875DA: If Not (var_86 = CInt(6)) Then
  loc_F875E5:   If (var_86 = CInt(7)) Then
  loc_F875E8:   End If
  loc_F875F6:   Set var_8C = Me.Txt
  loc_F875FC:   Call 0.Method_Txt_KeyUp0 (CInt(6), var_90)
  loc_F87611:   var_118 = Val(var_90.Text)
  loc_F8761B:   Set var_98 = Me.TxtGt
  loc_F87621:   Call 0.Method_Txt_KeyUp8 (var_9A, var_118)
  loc_F87633:   Set var_A0 = Me.TxtGt
  loc_F87639:   Call 0.Method_Txt_KeyUp0 (var_9A, var_A4)
  loc_F8764E:   var_120 = Val(var_A4.Text)
  loc_F8765F:   Set var_AC = Me.Txt
  loc_F87665:   Call 0.Method_Txt_KeyUp0 (CInt(7), var_B0, var_B4)
  loc_F8769D:   var_D4 = CVar(((var_118 - var_B0.Text) - Val(var_B4))) 'Double
  loc_F876BB:   Set var_108 = Me.Txt
  loc_F876C1:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_10C, CStr(Format(var_D4, "0.00")), 1)
  loc_F876C9:   var_10C.Text = 1
  loc_F876F7: End If
  loc_F876F7: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4734C
  'Data Table: 586158
  loc_E4732A: Set var_88 = Me.Txt
  loc_E47330: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4733E: Proc_6_73_E23294(var_8C)
  loc_E4734A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1706CFC
  'Data Table: 586158
  Dim var_9A As Integer
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_12C As Double
  Dim var_F8 As Variant
  Dim var_E8 As Variant
  Dim var_124 As String
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_154 As Double
  Dim var_13C As TextBox
  Dim var_15C As Double
  Dim var_D8 As Variant
  Dim var_148 As TextBox
  Dim arg_10 As Integer
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_108 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_A0 As Variant
  Dim var_140 As String
  Dim unk_586184 As Connection15
  Dim var_11C As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_118 As Variant
  Dim var_1EC As Variant
  Dim var_19C As Variant
  Dim var_1FC As Variant
  Dim var_8E As Integer
  Dim var_138 As Field20
  Dim var_94 As Recordset15
  loc_1705170: On Error Goto loc_1706CF5
  loc_1705176: var_9A = Cancel
  loc_1705181: If Not (var_9A = CInt(6)) Then
  loc_170518C:   If (var_9A = CInt(7)) Then
  loc_170518F:   End If
  loc_170519C:   Set var_A0 = Me.Txt
  loc_17051A2:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17051AA:   var_A8 = var_A4.Text
  loc_17051BB:   Proc_6_40_EA5C80(CVar(Val(var_A8)))
  loc_17051E2:   var_118 = Format(CVar(var_9A), "0.00")
  loc_17051F8:   Set var_11C = Me.Txt
  loc_17051FE:   Call 0.Method_Txt_Validate0 (Cancel, var_120, CStr(var_118))
  loc_1705206:   var_120.Text = 1
  loc_1705236:   Set var_A0 = Me.Txt
  loc_170523C:   Call 0.Method_Txt_Validate0 (CInt(6), var_A4, var_A8)
  loc_1705244:   1 = var_A4.Text
  loc_1705251:   var_12C = Val(var_A8)
  loc_170525B:   Set var_11C = Me.TxtGt
  loc_1705261:   Call 0.Method_Txt_Validate8 (var_12E, var_12C)
  loc_1705273:   Set var_120 = Me.TxtGt
  loc_1705279:   Call 0.Method_Txt_Validate0 (var_12E, var_134)
  loc_170528E:   var_154 = Val(var_134.Text)
  loc_170529F:   Set var_138 = Me.Txt
  loc_17052A5:   Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_140)
  loc_17052BA:   var_15C = Val(var_140)
  loc_17052CC:   var_E8 = "0.00"
  loc_17052DD:   var_C8 = CVar(((var_12C - var_13C.Text) - var_15C)) 'Double
  loc_17052E4:   var_108 = Format(CVar(Val(var_A8)), var_E8)
  loc_17052FB:   Set var_144 = Me.Txt
  loc_1705301:   Call 0.Method_Txt_Validate0 (CInt(8), var_148, CStr(var_108), 1)
  loc_1705309:   var_148.Text = 1
  loc_170533A: Else
  loc_1705342:   If (var_9A = CInt(0)) Then
  loc_1705350:     Set var_A0 = Me.Txt
  loc_1705356:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_170535E:     var_A8 = "Vr. No"
  loc_170537F:     If (Proc_6_27_EA61EC(var_A4, var_A8) = 0) Then
  loc_170538D:       Set var_A0 = Me.Txt
  loc_1705393:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_170539B:       var_A4.SetFocus
  loc_17053A9:       arg_10 = &HFF
  loc_17053AC:       Exit Sub
  loc_17053AD:     End If
  loc_17053BB:     Set var_A0 = Me.Txt
  loc_17053C1:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4, var_A8)
  loc_17053C9:     arg_10 = var_A4.Text
  loc_17053E1:     If (CDbl(var_A8) = CDbl(0)) Then
  loc_17053FD:       MsgBox("Vr. No Can Not Be 0", 0, var_E8, var_108, var_118)
  loc_1705417:       Set var_A0 = Me.Txt
  loc_170541D:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1705425:       var_A4.SetFocus
  loc_1705433:       arg_10 = &HFF
  loc_1705436:       Exit Sub
  loc_1705437:     End If
  loc_170543B:     Set var_A0 = Me.TopCtrl1
  loc_1705441:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_170545A:     If (CStr(var_15C) = "Add") Then
  loc_170548E:       var_C8 = Space((5 - Len(global_144)))
  loc_1705496:       var_108 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & global_144) + "Vr. No Can Not Be 0")
  loc_17054AA:       var_118 = Space((5 - Len(global_124)))
  loc_17054B2:       var_17C = (var_108 + var_118)
  loc_17054BF:       var_18C = (var_17C + CVar(global_124))
  loc_17054D6:       Set var_A0 = Me.Txt
  loc_17054DC:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4, var_140)
  loc_17054E4:       8 = var_A4.Text
  loc_17054F1:       var_19C = Space((var_18C - Len(var_140)))
  loc_17054F9:       var_1AC = (var_12C + var_19C)
  loc_170550B:       Set var_11C = Me.Txt
  loc_1705511:       Call 0.Method_Txt_Validate0 (CInt(0), var_120)
  loc_1705524:       var_1CC = (var_1AC + CVar(var_120.Text))
  loc_1705571:       Set var_A0 = Me.Txt
  loc_1705577:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_170557F:       var_A4.Text = CStr(var_1CC)
  loc_170559B:       Me.LblVPrefix.Caption = global_124
  loc_17055A3:     End If
  loc_17055A7:     Set var_A0 = Me.TopCtrl1
  loc_17055AD:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_17055B5:     var_A8 = CStr()
  loc_17055C6:     If (var_A8 = "Add") Then
  loc_17055F6:       Set var_A0 = Me.Txt
  loc_17055FC:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_A8, "Select Count(*) From Sale1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_170560D:       var_124 = var_120 & var_A8
  loc_170561D:       unk_586184.Execute var_124 & "'", 0, var_134
  loc_170562D:        = var_120.Item()
  loc_1705635:        = var_134.Value
  loc_1705662:       If (var_A4.Text.Fields > 0) Then
  loc_170566B:         Call 0.Method_arg_50 (var_A8)
  loc_170568C:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A8), var_108, var_118)
  loc_17056A2:         Call Proc_162_95_10EAFB8(MemVar_1F95044)
  loc_17056B2:         If (var_A8 = vbNullString) Then
  loc_17056BF:           Set var_A0 = Me.Txt
  loc_17056C5:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17056CD:           var_A4.SetFocus
  loc_17056DB:           arg_10 = &HFF
  loc_17056DE:           Exit Sub
  loc_17056DF:         End If
  loc_17056E5:         Call Proc_162_95_10EAFB8(MemVar_1F95044, var_A8)
  loc_17056F8:         Set var_A0 = Me.Txt
  loc_17056FE:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_A8)
  loc_1705706:         var_A4.Text = arg_10
  loc_1705717:         arg_10 = &HFF
  loc_170571A:         Exit Sub
  loc_170571B:       End If
  loc_170571B:     End If
  loc_170571E:   Else
  loc_1705726:     If (var_9A = CInt(1)) Then
  loc_1705737:       Set var_A0 = Me.Txt
  loc_170573D:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_A8)
  loc_1705745:       arg_10 = var_A4.Text
  loc_170575B:       var_108 = Len(Trim(CVar(var_A8)))
  loc_1705775:       If (var_108 = 0) Then
  loc_170578B:         Set var_A0 = Me.Txt
  loc_1705791:         Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1705799:         var_A4.Text = CStr(MemVar_1F950EC)
  loc_17057AB:       Else
  loc_17057B5:         Set var_A0 = Me.Txt
  loc_17057BB:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17057DB:         Set var_120 = Me.Txt
  loc_17057E1:         Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_17057E9:         var_134.Text = Proc_6_33_15125B8(var_A4)
  loc_17057FC:       End If
  loc_1705809:       Set var_A0 = Me.Txt
  loc_170580F:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1705817:       var_A8 = var_A4.Text
  loc_1705832:       Set var_11C = Me.Txt
  loc_1705838:       Call 0.Method_Txt_Validate0 (Cancel, var_120, var_124)
  loc_1705840:       (CDate(var_A8) >= MemVar_1F950F4) = var_120.Text
  loc_1705862:       If Not((var_A8 And (CDate(var_124) <= MemVar_1F950FC))) Then
  loc_1705886:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_108, var_118)
  loc_17058A0:         Set var_A0 = Me.Txt
  loc_17058A6:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_17058AE:         var_A4.SetFocus
  loc_17058BC:         arg_10 = &HFF
  loc_17058BF:         Exit Sub
  loc_17058C0:       End If
  loc_17058C4:       Set var_A0 = Me.TopCtrl1
  loc_17058CA:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_17058D2:       var_A8 = CStr(var_A4)
  loc_17058E8:       Set var_A4 = Me.Txt
  loc_17058EE:       Call 0.Method_Txt_Validate0 (CInt(0), var_11C)
  loc_1705917:       If ((var_A8 = "Add") And (var_11C.Text = vbNullString)) Then
  loc_1705920:         Call Proc_162_95_10EAFB8(MemVar_1F95044)
  loc_1705933:         Set var_A0 = Me.Txt
  loc_1705939:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_1705941:         var_A4.Text = var_A8
  loc_1705950:       End If
  loc_1705953:     Else
  loc_170595B:       If (var_9A = CInt(3)) Then
  loc_170599F:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_17059AF:           Set var_A0 = Me.Txt
  loc_17059B5:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17059D4:           If (var_A4.Text = vbNullString) Then
  loc_17059E4:             Set var_A0 = Me.Txt
  loc_17059EA:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17059F2:             var_A4.Text = vbNullString
  loc_1705A0B:             Set var_A0 = Me.Txt
  loc_1705A11:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1705A19:             var_A4.Tag = vbNullString
  loc_1705A30:             If (global_152 = "RO") Then
  loc_1705A39:               global_148 = vbNullString
  loc_1705A3D:             End If
  loc_1705A3D:           End If
  loc_1705A40:         Else
  loc_1705A7B:           Set var_11C = Me.Txt
  loc_1705A81:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1705A89:           var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1705ADA:           Set var_11C = Me.Txt
  loc_1705AE0:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1705AE8:           var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1705B09:           If (global_212 = "Room Service") Then
  loc_1705B48:             Set var_11C = Me.Txt
  loc_1705B4E:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_120)
  loc_1705B56:             var_120.Text = CStr(Me.Fields.Item("Code").Value)
  loc_1705B6C:           End If
  loc_1705B77:           If (global_152 = "RO") Then
  loc_1705B97:             var_A4 = Me.Fields.Item("RoomCat")
  loc_1705BAE:             global_148 = CStr(var_A4.Value)
  loc_1705BBF:           End If
  loc_1705BBF:         End If
  loc_1705BCA:         If (global_200 = "Y") Then
  loc_1705BD7:           Set global_88 = New 
  loc_1705BE9:           Me.Recordset15.CursorLocation = 3
  loc_1705BFF:           If (global_212 = "Hall") Then
  loc_1705C10:             Set var_A0 = Me.Txt
  loc_1705C16:             Call 0.Method_Txt_Validate0 (CInt(3), var_A4)
  loc_1705C44:             var_A8 = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_60
  loc_1705C59:             var_C8 = CVar(var_A8 & "'AND K.RoomNo ='" & var_A4.Tag & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_1705C63:             Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1705C80:           Else
  loc_1705C8B:             Proc_6_7_F26918(var_C8, MemVar_1F950EC, 1)
  loc_1705C9E:             Set var_A0 = Me.Txt
  loc_1705CA4:             Call 0.Method_Txt_Validate0 (CInt(3), var_A4, var_A8)
  loc_1705CAC:             -1 = var_A4.Text
  loc_1705CC8:             var_D8 = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_1705CD0:             var_E8 = var_D8 & var_C8 
  loc_1705CD9:             var_108 = var_E8 & " And K.RestCode='" 
  loc_1705CE6:             var_118 = var_108 & CVar(global_60) 
  loc_1705CFD:             var_1FC = "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y' Order by K.DOCID,K.SNo"
  loc_1705D0D:             Me.Open var_118 & "' aND K.RoomNo ='" & CVar(var_A8) & var_1FC, CVar(MemVar_1F95044), 3
  loc_1705D2C:           End If
  loc_1705D43:           If (Me.RecordCount > 0) Then
  loc_1705D55:             Me.FGrid.Redraw = False
  loc_1705D77:             var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1705D92:             If ((global_212 = "Room Service") And (var_8E <> 1)) Then
  loc_1705DA3:               Me.FGrid.Redraw = True
  loc_1705DE3:               If (MsgBox(CVar("This is not valid Room No." & vbCrLf & "Are you sure to continue..."), &H14, var_E8, var_108, var_118) = 7) Then
  loc_1705DE6:                 ' Referenced from:       1706B14
  loc_1705DE6:               End If
  loc_1705DE6:             End If
  loc_1705DF8:             If Not(Me.EOF) Then
  loc_1705E20:               For var_210 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):       var_98 = var_210 'Integer
  loc_1705E2A:                 var_B8 = CVar(CLng(var_98)) 'Long
  loc_1705E32:                 var_F8 = CVar(CLng(&HD)) 'Long
  loc_1705E4C:                 var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1705E75:                 var_E8 = Me.Fields.Item("DocID").Value
  loc_1705E85:                 var_1FC = CVar(CLng(var_98)) 'Long
  loc_1705F00:                 If CBool(CVar(CLng(&HC)) And (CVar(CStr(Me.FGrid.TextMatrix))) = Me.Fields.Item("SNo").Value)) Then
  loc_1705F07:                   var_96 = CByte(1) 'Byte
  loc_1705F0B:                   GoTo loc_17068D5
  loc_1705F0E:                 End If
  loc_1705F11:               Next var_210 'Integer
  loc_1705F16:               var_B8 = vbNullString
  loc_1705F20:               Set var_A0 = Me.FGrid
  loc_1705F35:               Set var_244 = Me.FGrid
  loc_1705F3C:               var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1705F44:               var_F8 = CVar(CLng(0)) 'Long
  loc_1705F4E:               var_C8 = CVar(CStr(var_8E)) 'String
  loc_1705F55:               LateIdCallSt
  loc_1705F64:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1705F6C:               var_16C = CVar(CLng(&HB)) 'Long
  loc_1705F9F:               var_E8 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_1705FA6:               LateIdCallSt
  loc_1705FC0:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1705FC8:               var_16C = CVar(CLng(3)) 'Long
  loc_1705FFB:               var_E8 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1706002:               LateIdCallSt
  loc_170601C:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1706024:               var_16C = CVar(CLng(4)) 'Long
  loc_1706057:               var_E8 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_170605E:               LateIdCallSt
  loc_1706078:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1706080:               var_16C = CVar(CLng(6)) 'Long
  loc_17060B3:               var_E8 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_17060BA:               LateIdCallSt
  loc_17060F3:               var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17060FB:               var_1EC = CVar(CLng(7)) 'Long
  loc_1706128:               var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.00"))) 'String
  loc_170612F:               LateIdCallSt
  loc_1706168:               var_F8 = CVar(CLng(var_8E)) 'Long
  loc_1706170:               var_1EC = CVar(CLng(8)) 'Long
  loc_170619D:               var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_17061A4:               LateIdCallSt
  loc_17061DD:               var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17061E5:               var_1EC = CVar(CLng(9)) 'Long
  loc_1706212:               var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1706219:               LateIdCallSt
  loc_170626E:               var_11C = Me.Fields
  loc_1706276:               var_120 = var_11C.Item("Rate")
  loc_1706287:               var_16C = CVar(CLng(var_8E)) 'Long
  loc_170628F:               var_1FC = CVar(CLng(&HA)) 'Long
  loc_17062C6:               var_19C = CVar(CStr(Format((Me.Fields.Item("qty").Value * var_120.Value), "0.00"))) 'String
  loc_17062CD:               LateIdCallSt
  loc_1706312:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_170631A:               var_16C = CVar(CLng(5)) 'Long
  loc_1706341:               var_108 = CVar(CStr(Val(CStr(Right(CVar(Me.Fields.Item("DocID")), 8))))) 'String
  loc_1706348:               LateIdCallSt
  loc_1706363:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_170636B:               var_16C = CVar(CLng(&HD)) 'Long
  loc_170639E:               var_E8 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_17063A5:               LateIdCallSt
  loc_17063BF:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_17063C7:               var_16C = CVar(CLng(&HC)) 'Long
  loc_17063FA:               var_E8 = CVar(CStr(Me.Fields.Item("SNo").Value)) 'String
  loc_1706401:               LateIdCallSt
  loc_1706453:               var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_244, var_E8, CVar(CLng(&H19)), CVar(CLng(var_8E)))) 'String
  loc_170645A:               LateIdCallSt
  loc_17064A8:               var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_244, var_E8, var_244)) 'String
  loc_17064AF:               LateIdCallSt
  loc_17064FD:               var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1706504:               LateIdCallSt
  loc_1706552:               var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1706559:               LateIdCallSt
  loc_17065A7:               var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_17065AE:               LateIdCallSt
  loc_17065CC:               var_16C = CVar(CLng(&H1A)) 'Long
  loc_17065FC:               var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), var_16C, CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1706603:               LateIdCallSt
  loc_1706650:               var_A8 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_E8, -1, var_11C, var_244)
  loc_1706664:               unk_586184.Execute var_E8 & CStr(Right(CVar(Me.Fields.Item("DocID")), 8)) & "'", var_E8, var_16C
  loc_170666F:               Set var_94 = var_11C
  loc_170669D:               If (var_94.RecordCount > 0) Then
  loc_17066D7:                 Proc_6_39_E7D3A0(var_E8, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H10)), CVar(CLng(var_8E)))
  loc_17066E0:                 var_108 = CVar(CStr(var_E8)) 'String
  loc_17066E8:                 Set var_11C = Me.FGrid
  loc_17066EE:                 LateIdCallSt
  loc_1706706:               End If
  loc_1706727:               var_C8 = CVar(Proc_6_38_E69628(global_152, CVar(CLng(&H16)), CVar(CLng(var_8E)), var_11C)) 'String
  loc_170672E:               LateIdCallSt
  loc_170673D:               var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1706775:               var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), CVar(CLng(&H17)), var_D8, var_244, CVar(Me.Fields.Item("RoomNo")))) 'String
  loc_170677C:               LateIdCallSt
  loc_17067C7:               Set var_11C = Me.Txt
  loc_17067CD:               Call 0.Method_Txt_Validate0 (CInt(3), var_120, Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), var_244, var_E8, var_108))
  loc_17067D5:               var_120.Tag = var_D8
  loc_1706825:               var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_170682C:               LateIdCallSt
  loc_170687A:               var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_244)) 'String
  loc_1706881:               LateIdCallSt
  loc_17068B4:               var_C8 = CVar(Proc_6_38_E69628(global_148, CVar(CLng(&H15)), CVar(CLng(var_8E)), var_244)) 'String
  loc_17068BB:               LateIdCallSt
  loc_17068C8:               Set var_244 = Nothing 
  loc_17068D2:               var_8E = (var_8E + 1)
  loc_17068D5:               ' Referenced from:       1705F0B
  loc_17068DB:               Me.MoveNext
  loc_17068FE:               If ((Me.EOF = &HFF) And (CInt(var_96) = 0)) Then
  loc_170690C:                 If (global_212 = "Room Service") Then
  loc_170692F:                   If (Me.lblTable.Caption = vbNullString) Then
  loc_1706976:                     Me.lblTable.Caption = CStr("Room # " & Me.Fields.Item("Name").Value)
  loc_1706991:                   Else
  loc_17069EC:                     Me.lblTable.Caption = CStr(CVar(Me.lblTable.Caption & ",") & Me.Fields.Item("Name").Value)
  loc_1706A0C:                   End If
  loc_1706A0F:                 Else
  loc_1706A2F:                   If (Me.lblTable.Caption = vbNullString) Then
  loc_1706A76:                     Me.lblTable.Caption = CStr("Table # " & Me.Fields.Item("Code").Value)
  loc_1706A91:                   Else
  loc_1706A9E:                     var_A8 = Me.lblTable.Caption
  loc_1706AAA:                     var_E8 = CVar(var_A8 & ",") 'String
  loc_1706ADA:                     var_108 = var_E8 & Me.Fields.Item("Code").Value 
  loc_1706AEC:                     Me.lblTable.Caption = CStr(var_108)
  loc_1706B0C:                   End If
  loc_1706B0C:                 End If
  loc_1706B0C:               End If
  loc_1706B10:               var_96 = CByte(0) 'Byte
  loc_1706B14:               GoTo loc_1705DE6
  loc_1706B17:             End If
  loc_1706B2A:             Me.FGrid.FixedRows = 1
  loc_1706B35:           Else
  loc_1706B43:             Me.FGrid.Redraw = True
  loc_1706B51:             If (var_8E = 1) Then
  loc_1706B67:               Me.FGrid.Rows = 1
  loc_1706B8D:               var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8E, var_244, var_C8))) 'String
  loc_1706B95:               Set var_A4 = Me.FGrid
  loc_1706BC2:               Me.FGrid.FixedRows = 1
  loc_1706BCA:             End If
  loc_1706BCA:           End If
  loc_1706BCA:         End If
  loc_1706BD8:         Me.FGrid.Redraw = True
  loc_1706BE6:         If (var_8E = 1) Then
  loc_1706BFC:           Me.FGrid.Rows = 1
  loc_1706C22:           var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C8))) 'String
  loc_1706C2A:           Set var_A4 = Me.FGrid
  loc_1706C57:           Me.FGrid.FixedRows = 1
  loc_1706C5F:         End If
  loc_1706C65:         Call Proc_162_101_16A73F8(Cancel, FGrid.DispID_10000, var_C8, var_E8)
  loc_1706C77:         Set var_A0 = Me.Txt
  loc_1706C7D:         Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A8)
  loc_1706C85:         var_E8 = var_A4.Text
  loc_1706CA8:         If ((var_A8 <> vbNullString) And (global_200 = "Y")) Then
  loc_1706CB8:           Set var_A0 = Me.Txt
  loc_1706CBE:           Call 0.Method_Txt_Validate0 (Cancel, var_A4, vbNullString)
  loc_1706CC6:           var_A4.Text = var_244
  loc_1706CD2:         End If
  loc_1706CD2:       End If
  loc_1706CD2:     End If
  loc_1706CD2:   End If
  loc_1706CD2: End If
  loc_1706CD7: Set var_94 = Nothing
  loc_1706CDF: Set var_88 = Nothing
  loc_1706CED: Set global_88 = Nothing
  loc_1706CF4: Exit Sub
  loc_1706CF5: ' Referenced from: 1705170
  loc_1706CF5: Proc_6_60_E63754(var_108)
  loc_1706CFA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60044
  'Data Table: 586158
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6000F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60022: Set var_A8 = Me.TxtGrid
  loc_E60028: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60030: var_AC.Visible = False
  loc_E6003C: Call Proc_162_93_EF84A4()
  loc_E60041: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A378
  'Data Table: 586158
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A334: Set var_88 = Me.TxtGrid
  loc_E6A33A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A354: If (var_8C.Visible = 0) Then
  loc_E6A36D:   Me.FGrid.BackColorSel = CVar(CLng(global_112))
  loc_E6A375: End If
  loc_E6A375: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFEE24
  'Data Table: 586158
  loc_DFEE1C: Call Proc_162_87_EFAED4()
  loc_DFEE21: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '114CAC4
  'Data Table: 586158
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_114C728: Set var_88 = Me.TopCtrl1
  loc_114C72E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_114C773: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_114C77C:   Call Form_KeyDown(Cancel, arg_10)
  loc_114C781: End If
  loc_114C785: Set var_88 = Me.TopCtrl1
  loc_114C78B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_114C7A4: If (CStr() = "Browse") Then
  loc_114C7A7:   Exit Sub
  loc_114C7A8: End If
  loc_114C81C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_114C835:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_114C845:   var_9C = "+{Tab}"
  loc_114C84B:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_114C855:   Cancel = 0
  loc_114C85B: Else
  loc_114C865:   var_B0 = Me.FGrid.Rows
  loc_114C8B2:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_114C8CB:     Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_114C8E1:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_114C8EB:     Cancel = 0
  loc_114C8EE:   End If
  loc_114C8EE: End If
  loc_114C8F4: global_156 = Cancel
  loc_114C91A: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_114C93E: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_114C954:   var_EC = CLng(Me.FGrid.Col)
  loc_114C964:   If (var_EC = CLng(&H1D)) Then
  loc_114C9A7:     LateIdCallSt
  loc_114C9C6:     Call Proc_162_102_19DD7D0(CInt(&H1D), Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_114C9CE:   Else
  loc_114C9D5:     If (var_EC = CLng(&H1E)) Then
  loc_114CA18:       LateIdCallSt
  loc_114CA37:       Call Proc_162_102_19DD7D0(CInt(&H1E), Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_114CA3F:     Else
  loc_114CA46:       If (var_EC = CLng(&H1F)) Then
  loc_114CA89:         LateIdCallSt
  loc_114CAA8:         Call Proc_162_102_19DD7D0(CInt(&H1F), Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_114CAAD:       End If
  loc_114CAAD:     End If
  loc_114CAAD:   End If
  loc_114CAAD: End If
  loc_114CAB3: If (Cancel = &HD) Then
  loc_114CABB:   global_158 = 0
  loc_114CABE: End If
  loc_114CAC0: Cancel = 0
  loc_114CAC3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E104E0
  'Data Table: 586158
  loc_E104D1: Call FGrid_UnknownEvent_C()
  loc_E104DB: global_158 = 0
  loc_E104DE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FC3778
  'Data Table: 586158
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_FC35D4: Set var_88 = Me.TopCtrl1
  loc_FC35DA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FC35F3: If (CStr() = "Browse") Then
  loc_FC35F6:   Exit Sub
  loc_FC35F7: End If
  loc_FC360A: var_A0 = CLng(Me.FGrid.Col)
  loc_FC361A: If (var_A0 = CLng(&H1D)) Then
  loc_FC365B:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_FC3670: Else
  loc_FC3677:   If (var_A0 = CLng(&H1E)) Then
  loc_FC36B8:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_FC36CD:   Else
  loc_FC36D4:     If (var_A0 = CLng(&H1F)) Then
  loc_FC36F2:       If (((Cancel >= &H41) And (Cancel <= &H5A)) Or ((Cancel >= &H61) And (Cancel <= &H7A))) Then
  loc_FC3707:         Me.FGrid.Col = CVar(CLng(&H1D))
  loc_FC370F:       End If
  loc_FC374D:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_FC375F:     End If
  loc_FC375F:   End If
  loc_FC375F: End If
  loc_FC3769: If (CLng(Cancel) <> &HD) Then
  loc_FC3771:   global_158 = &HFF
  loc_FC3774: End If
  loc_FC3774: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F784
  'Data Table: 586158
  Dim var_8C As TextBox
  loc_E3F758: Call Proc_162_93_EF84A4()
  loc_E3F768: Set var_88 = Me.TxtGrid
  loc_E3F76E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F776: var_8C.Visible = False
  loc_E3F782: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F08318
  'Data Table: 586158
  loc_F0823C: On Error Goto loc_F0830F
  loc_F08276: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F0829C:   Call Proc_162_92_1005DCC(Proc_5_1_100EC1C("INI", Me))
  loc_F082B2:   Set var_10C = Me.TopCtrl1
  loc_F082B8:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(False)
  loc_F082CA:   Set var_10C = Me.TopCtrl1
  loc_F082D0:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(True)
  loc_F082E3:   Set var_10C = Me.TopCtrl1
  loc_F082E9:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_F082FB:   Set var_10C = Me.TopCtrl1
  loc_F08301:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000F(True)
  loc_F08309:   Call Proc_162_89_1B43764(global_92)
  loc_F0830E: End If
  loc_F0830E: Exit Sub
  loc_F0830F: ' Referenced from: F0823C
  loc_F0830F: Proc_6_60_E63754()
  loc_F08314: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12B51B8
  'Data Table: 586158
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim unk_586184 As Connection15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_128 As String
  Dim var_11C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_12B4BC8: On Error Goto loc_12B5169
  loc_12B4C02: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_12B4C16:   var_94 = Me.Bookmark 'Variant
  loc_12B4C25:   If (global_212 = "Outlet") Then
  loc_12B4C5A:     var_138 = "Settlement"
  loc_12B4CA2:     If (Proc_6_108_101061C(MemVar_1F95044, "PayCharge", "DocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_12B4CA5:       Exit Sub
  loc_12B4CA6:     End If
  loc_12B4CA6:   End If
  loc_12B4CBA:   var_DC = "Void Reason"
  loc_12B4CD0:   var_9C = InputBox("Reason for Deletion :", var_DC, var_FC, var_11C, var_15C, var_17C, var_19C)
  loc_12B4D02:   If (Trim(var_9C) = vbNullString) Then
  loc_12B4D1E:     MsgBox("You Should Enter a Valid Reason for Deletion", 0, var_DC, var_FC, var_11C)
  loc_12B4D2E:     Exit Sub
  loc_12B4D2F:   End If
  loc_12B4D38:   unk_586184.BeginTrans var_134
  loc_12B4D48:   If (global_212 = "Room Service") Then
  loc_12B4DA1:     unk_586184.Execute CStr("DELETE FROM PAYCHARGE WHERE dOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12B4DEC:     var_1CC = 0
  loc_12B4DFF:     var_1C4 = 0
  loc_12B4E0A:     var_1C0 = 0
  loc_12B4E1D:     var_1B8 = 0
  loc_12B4E28:     var_1B4 = 0
  loc_12B4E3B:     var_1AC = 0
  loc_12B4E84:     Proc_154_5_10E3BD4(MemVar_1F95044, "PayCharge", "Docid", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12B4EAC:   End If
  loc_12B4F02:   unk_586184.Execute CStr("Update Stock set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12B4F96:   var_11C = "Update Sale1 set delflag='D',Remark='" & Left(Trim(var_9C), &H19) & "',U_name='" 
  loc_12B4FC4:   unk_586184.Execute CStr(var_11C & Trim(MemVar_1F950C8) & "',U_AE='E' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_21C, -1
  loc_12B5044:   unk_586184.Execute CStr("Update Sale2 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12B50A8:   var_FC = "Update SunTran set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12B50AC:   var_128 = CStr(var_FC)
  loc_12B50B6:   unk_586184.Execute var_128, var_11C, -1
  loc_12B50D8:   unk_586184.CommitTrans
  loc_12B50E8:   Me.Requery -1
  loc_12B5108:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12B5115:     Me.Bookmark = var_94
  loc_12B511D:   Else
  loc_12B5131:     If (Me.EOF = 0) Then
  loc_12B513A:       Me.MoveLast
  loc_12B513F:     End If
  loc_12B513F:   End If
  loc_12B513F:   Call Proc_162_89_1B43764(var_1A0, var_1A0, var_1A0, var_1A0)
  loc_12B5160:   Proc_5_0_1107AD0(&HFF, Me, global_92, 0)
  loc_12B5168: End If
  loc_12B5168: Exit Sub
  loc_12B5169: ' Referenced from: 12B4BC8
  loc_12B516F: unk_586184.RollbackTrans
  loc_12B517C: Set var_120 = Err()
  loc_12B5182: Call 0.Method_arg_2C (var_128, var_1AC, 0)
  loc_12B51A3: MsgBox(CVar(var_128), &H10, " Deletion Message", var_FC, var_11C)
  loc_12B51B6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FF18A0
  'Data Table: 586158
  Dim var_98 As Variant
  Dim var_90 As MSHFlexGrid
  loc_FF16AC: On Error Goto loc_FF1898
  loc_FF16D2: Call Proc_162_92_1005DCC(Proc_5_1_100EC1C("EDIT", Me))
  loc_FF16EA: Set var_90 = Me.Txt
  loc_FF16F0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FF16F8: var_98.Enabled = False
  loc_FF1711: Set var_90 = Me.Txt
  loc_FF1717: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FF171F: var_98.Enabled = False
  loc_FF1738: Set var_90 = Me.Txt
  loc_FF173E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_FF1746: var_98.Enabled = False
  loc_FF1760: Set var_90 = Me.Txt
  loc_FF1766: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FF177C: Call Proc_162_100_17EDFF0(CDate(var_98.Text))
  loc_FF179D: Me.FGrid.Col = CVar(CLng(&H1D))
  loc_FF17A9: Set var_90 = Me.FGrid
  loc_FF17C6: Set var_90 = Me.TxtGt
  loc_FF17CC: Call 0.Method_TopCtrl1_UnknownEvent_DC (var_92, var_86, 1)
  loc_FF17D7: For var_C4 = global_92 To var_92: FGrid.DispID_8001 = var_C4 'Integer
  loc_FF17EA:   Set var_90 = Me.LblCap1
  loc_FF17F0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_98)
  loc_FF181A:   If (var_98.Tag = MemVar_1F95078 & "ADD") Then
  loc_FF1829:     Set var_90 = Me.TxtGt1
  loc_FF182F:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_98)
  loc_FF1837:     var_98.Enabled = True
  loc_FF184F:     Set var_90 = Me.TxtGt2
  loc_FF1855:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_98)
  loc_FF185D:     var_98.Enabled = True
  loc_FF1875:     Set var_90 = Me.TxtGt3
  loc_FF187B:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_98)
  loc_FF1883:     var_98.Enabled = True
  loc_FF188F:   End If
  loc_FF1892: Next var_C4 'Integer
  loc_FF1897: Exit Sub
  loc_FF1898: ' Referenced from: FF16AC
  loc_FF1898: Proc_6_60_E63754()
  loc_FF189D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B6AC
  'Data Table: 586158
  loc_E1B6A1: Me.Global.Unload Me
  loc_E1B6A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FB450C
  'Data Table: 586158
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_11C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_F8 As Integer
  Dim var_120 As String
  Dim unk_586184 As Connection15
  Dim var_138 As Recordset15
  Dim var_13C As Fields15
  Dim var_140 As Field20
  loc_FB43A0: On Error Goto loc_FB4505
  loc_FB43BA: If (Me.RecordCount <= 0) Then
  loc_FB43D8:   var_A8 = "No Records To Search."
  loc_FB43DE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_FB43EE:   Exit Sub
  loc_FB43EF: End If
  loc_FB43F6: var_10C = "Select  S.Docid as SearchCode,Cast(S.VNo as Varchar(11)) as VNo ,Cast(S.VDate as VarChar(11)) as VDate,s.RoomNo as TableNo " & "From (Sale1 S INNER JOIN  Voucher_Type V On S.VType= V.V_Type) "
  loc_FB4412: var_11C = var_10C & " INNER  Join Depart H on S.RestCode = H.Code Where (V.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  V.SITE_CODE='" & MemVar_1F95070
  loc_FB4427: Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_FB4433: var_B8 = " And V_Type='"
  loc_FB4438: var_108 = CVar(var_11C & "') AND S.VDate=") & var_A8 & var_B8 
  loc_FB4442: var_F8 = 0
  loc_FB4462: var_120 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_FB4472: unk_586184.Execute var_120 & "'", var_134, -1
  loc_FB447A: var_138 = var_138.Fields
  loc_FB4482: var_F8 = var_13C.Item(var_13C)
  loc_FB448A: var_140 = var_140.Value
  loc_FB44DA: Proc_6_126_F1C850("1000,1000,1000", CStr(var_150 & var_150 & "' Order By S.docid"))
  loc_FB44E8: MemVar_1F95120 = Me
  loc_FB44FF: Call 0.Method_arg_2B0 (1, var_B8)
  loc_FB4504: Exit Sub
  loc_FB4505: ' Referenced from: FB43A0
  loc_FB4505: Proc_6_60_E63754(var_108)
  loc_FB450A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3C128
  'Data Table: 586158
  loc_E3C118: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C120: Call Proc_162_89_1B43764(global_92)
  loc_E3C125: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3DFE8
  'Data Table: 586158
  loc_E3DFD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DFE0: Call Proc_162_89_1B43764(global_92)
  loc_E3DFE5: Exit Sub
  loc_E3DFE6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E305A8
  'Data Table: 586158
  loc_E30598: Proc_5_0_1107AD0(&HFF, Me)
  loc_E305A0: Call Proc_162_89_1B43764(global_92)
  loc_E305A5: Exit Sub
  loc_E305A6: Result 3 End Sub 'Long
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C548
  'Data Table: 586158
  loc_E3C538: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C540: Call Proc_162_89_1B43764(global_92)
  loc_E3C545: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '112BDF8
  'Data Table: 586158
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_9C As TextBox
  Dim var_E4 As TextBox
  loc_112BAA6: var_9C = Me.Fields.Item("ModDescription")
  loc_112BACF: If (Trim(CVar(var_9C)) = "BILL DOS PLAIN PAPER RAVE3") Then
  loc_112BAE0:   Set var_88 = Me.Txt
  loc_112BAE6:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C)
  loc_112BAEE:   var_E8 = var_9C.Text
  loc_112BB01:   Set var_E0 = Me.Txt
  loc_112BB07:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4)
  loc_112BB2C:   Proc_96_32_1948FDC(var_E8, var_E4.Text, MemVar_1F95070)
  loc_112BB46: Else
  loc_112BB60:   var_9C = Me.Fields.Item("ModDescription")
  loc_112BB89:   If (Trim(CVar(var_9C)) = "BILL DOS PLAIN (3) PAPER RUNNING (WeP TX 40)") Then
  loc_112BB9A:     Set var_88 = Me.Txt
  loc_112BBA0:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C, var_E8)
  loc_112BBA8:     global_192 = var_9C.Text
  loc_112BBBB:     Set var_E0 = Me.Txt
  loc_112BBC1:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4)
  loc_112BBC9:     var_EC = var_E4.Text
  loc_112BBEC:     Proc_96_31_176D2B8(var_E8, var_EC, MemVar_1F95070, global_192)
  loc_112BC06:   Else
  loc_112BC20:     var_9C = Me.Fields.Item("ModDescription")
  loc_112BC49:     If (Trim(CVar(var_9C)) = "BILL DOS PLAIN (3) PAPER RUNNING (TVSRP3200)") Then
  loc_112BC5A:       Set var_88 = Me.Txt
  loc_112BC60:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C, var_E8)
  loc_112BC68:       0 = var_9C.Text
  loc_112BC7B:       Set var_E0 = Me.Txt
  loc_112BC81:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4, var_EC)
  loc_112BC89:       global_196 = var_E4.Text
  loc_112BCAC:       Proc_96_31_176D2B8(var_E8, var_EC, MemVar_1F95070, global_192)
  loc_112BCC6:     Else
  loc_112BCE0:       var_9C = Me.Fields.Item("ModDescription")
  loc_112BD09:       If (Trim(CVar(var_9C)) = "BILL WINDOWS PLAIN PAPER RUNNING") Then
  loc_112BD1A:         Set var_88 = Me.Txt
  loc_112BD20:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C, var_E8)
  loc_112BD28:         0 = var_9C.Text
  loc_112BD3B:         Set var_E0 = Me.Txt
  loc_112BD41:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4, var_EC)
  loc_112BD49:         global_196 = var_E4.Text
  loc_112BD6C:         Proc_96_31_176D2B8(var_E8, var_EC, MemVar_1F95070, global_192)
  loc_112BD86:       Else
  loc_112BD94:         Set var_88 = Me.Txt
  loc_112BD9A:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_9C, var_E8)
  loc_112BDA2:         0 = var_9C.Text
  loc_112BDB5:         Set var_E0 = Me.Txt
  loc_112BDBB:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_E4, var_EC)
  loc_112BDC3:         global_196 = var_E4.Text
  loc_112BDE0:         Proc_96_37_17CC2BC(var_E8, var_EC, MemVar_1F95070)
  loc_112BDF7:       End If
  loc_112BDF7:     End If
  loc_112BDF7:   End If
  loc_112BDF7: End If
  loc_112BDF7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E5F4CC
  'Data Table: 586158
  Dim Me As Recordset15
  loc_E5F487: If (global_148 <> "FAST") Then
  loc_E5F495:   Me.Requery -1
  loc_E5F49A: End If
  loc_E5F4A5: If (global_148 <> "FAST") Then
  loc_E5F4B3:   Me.Requery -1
  loc_E5F4B8: End If
  loc_E5F4C3: Me.Requery -1
  loc_E5F4C8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '17CE38C
  'Data Table: 586158
  Dim unk_586184 As Connection15
  Dim var_8A As Integer
  Dim var_98 As TextBox
  Dim var_A0 As String
  Dim var_A8 As String
  Dim var_B4 As String
  Dim var_94 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_E0 As TextBox
  Dim var_130 As Variant
  Dim var_1B8 As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_2C0 As MSHFlexGrid
  Dim var_330 As Variant
  Dim var_350 As Variant
  Dim var_364 As Variant
  Dim var_374 As Variant
  Dim var_6D0 As Double
  Dim var_3FC As MSHFlexGrid
  Dim var_40C As Variant
  Dim var_6D8 As Double
  Dim var_6E0 As Double
  Dim var_C4 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1DC As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_450 As Variant
  Dim var_548 As Variant
  Dim var_598 As Variant
  Dim var_5B8 As Variant
  Dim var_88 As Integer
  Dim var_9C As String
  Dim var_578 As Variant
  Dim var_588 As Variant
  Dim var_5CC As Variant
  Dim var_6C4 As Variant
  Dim var_E8 As TextBox
  Dim var_2F0 As Variant
  loc_17CC3F9: unk_586184.BeginTrans var_90
  loc_17CC421: Set var_94 = Me.Txt
  loc_17CC427: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, "DELETE FROM SplitBillDetail WHERE DocId='")
  loc_17CC42F: var_D4 = var_98.Text
  loc_17CC438: var_A0 = -1 & var_9C
  loc_17CC467: unk_586184.Execute var_A0 & "' AND Site_Code='" & MemVar_1F95070 & "' AND RestCode='" & global_60 & "'", var_D8, &HFF
  loc_17CC4AE: For var_DC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_DC 'Integer
  loc_17CC4C2:   Set var_94 = Me.Txt
  loc_17CC4C8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CC4E3:   Set var_D8 = Me.Txt
  loc_17CC4E9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0)
  loc_17CC4F1:   var_A8 = var_E0.Text
  loc_17CC501:   Set var_E4 = Me.Txt
  loc_17CC507:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8)
  loc_17CC516:   Proc_6_7_F26918(var_F8, CVar(var_E8))
  loc_17CC529:   Set var_12C = Me.Txt
  loc_17CC52F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_130)
  loc_17CC537:   var_B4 = var_130.Text
  loc_17CC54A:   Set var_1B4 = Me.Txt
  loc_17CC550:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_17CC561:   var_28C = CVar(CLng(var_86)) 'Long
  loc_17CC569:   var_2AC = CVar(CLng(4)) 'Long
  loc_17CC592:   var_330 = CVar(CLng(var_86)) 'Long
  loc_17CC59A:   var_350 = CVar(CLng(7)) 'Long
  loc_17CC5ED:   var_6D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CC61E:   var_6E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CC62F:   Proc_6_7_F26918(var_588, Date, var_6E0, CVar(CLng(7)), CVar(CLng(var_86)), var_6D8, CVar(CLng(8)))
  loc_17CC638:   Set var_5BC = Me.TopCtrl1
  loc_17CC63E:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(var_86)))
  loc_17CC64C:   var_620 = "E"
  loc_17CC689:   var_A0 = "Insert Into SplitBillDetail (DocId,VNo,VDate,VTime,RestCode,TableNo,Sno,SNo1,ItemName,OQty,Rate,BillQty,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CC6E7:   var_1DC = CVar(var_A0 & var_98.Text & "'," & var_A8 & ",") & var_F8 & ",'" & CVar(var_B4) & "','" & CVar(global_60) & "','" & CVar(var_1B8.Text) 
  loc_17CC731:   var_398 = var_1DC & "'," & CVar(var_86) & "," & CVar(var_86) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_17CC78F:   var_598 = var_398 & "," & CVar(var_6D8) & "," & CVar(var_6E0) & ",0,'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_588 
  loc_17CC798:   var_5B8 = var_598 & ",'" 
  loc_17CC7C9:   unk_586184.Execute CStr(var_5B8 & IIf((CStr(var_5CC) = "Add"), "A", var_620) & "','N','" & CVar(MemVar_1F95078) & "')"), var_6C4, -1
  loc_17CC870: Next var_DC 'Integer
  loc_17CC877: var_88 = 0
  loc_17CC89F: For var_6E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_6E4 'Integer
  loc_17CC8A9:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_17CC8B1:   var_180 = CVar(CLng(&H1D)) 'Long
  loc_17CC8CB:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_17CC8E1:   If (CDbl(Val(var_9C)) > CDbl(0)) Then
  loc_17CC8EA:     var_88 = (var_88 + 1)
  loc_17CC8FB:     Set var_94 = Me.Txt
  loc_17CC901:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, var_88)
  loc_17CC909:     var_180 = var_98.Text
  loc_17CC91C:     Set var_D8 = Me.Txt
  loc_17CC922:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0, var_A8)
  loc_17CC92A:     var_C4 = var_E0.Text
  loc_17CC93A:     Set var_E4 = Me.Txt
  loc_17CC940:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8)
  loc_17CC94F:     Proc_6_7_F26918(var_F8, CVar(var_E8))
  loc_17CC962:     Set var_12C = Me.Txt
  loc_17CC968:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_130, var_B4)
  loc_17CC970:     1 = var_130.Text
  loc_17CC983:     Set var_1B4 = Me.Txt
  loc_17CC989:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_17CC99A:     var_28C = CVar(CLng(var_86)) 'Long
  loc_17CC9A2:     var_2AC = CVar(CLng(4)) 'Long
  loc_17CC9CB:     var_330 = CVar(CLng(var_86)) 'Long
  loc_17CC9D3:     var_350 = CVar(CLng(7)) 'Long
  loc_17CCA26:     var_6D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CCA57:     var_6E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CCA68:     Proc_6_7_F26918(var_5B8, Date, var_6E0, CVar(CLng(&H1D)), CVar(CLng(var_86)), var_6D8, CVar(CLng(8)))
  loc_17CCA71:     Set var_5BC = Me.TopCtrl1
  loc_17CCA77:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(var_86)))
  loc_17CCAC2:     var_A0 = "Insert Into SplitBillDetail (DocId,VNo,VDate,VTime,RestCode,TableNo,Sno,SNo1,ItemName,OQty,Rate,BillQty,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CCB20:     var_1DC = CVar(var_A0 & var_9C & "'," & var_A8 & ",") & var_F8 & ",'" & CVar(var_B4) & "','" & CVar(global_60) & "','" & CVar(var_1B8.Text) 
  loc_17CCB6A:     var_398 = var_1DC & "'," & CVar(var_86) & "," & CVar(var_88) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_17CCBCB:     var_578 = var_398 & "," & CVar(var_6D8) & "," & CVar(var_6E0) & "," & &H1D & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_17CCC15:     unk_586184.Execute CStr(var_578 & "'," & var_5B8 & ",'" & IIf((CStr(var_620) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F95078) & "')"), var_724, -1
  loc_17CCCBD:   End If
  loc_17CCCC0: Next var_6E4 'Integer
  loc_17CCCC7: var_88 = 0
  loc_17CCCEF: For var_728 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_728 'Integer
  loc_17CCCF9:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_17CCD01:   var_180 = CVar(CLng(&H1E)) 'Long
  loc_17CCD1B:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_17CCD31:   If (CDbl(Val(var_9C)) > CDbl(0)) Then
  loc_17CCD3A:     var_88 = (var_88 + 1)
  loc_17CCD4B:     Set var_94 = Me.Txt
  loc_17CCD51:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, var_88)
  loc_17CCD59:     var_180 = var_98.Text
  loc_17CCD6C:     Set var_D8 = Me.Txt
  loc_17CCD72:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0, var_A8)
  loc_17CCD7A:     var_C4 = var_E0.Text
  loc_17CCD8A:     Set var_E4 = Me.Txt
  loc_17CCD90:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8)
  loc_17CCD9F:     Proc_6_7_F26918(var_F8, CVar(var_E8))
  loc_17CCDB2:     Set var_12C = Me.Txt
  loc_17CCDB8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_130, var_B4)
  loc_17CCDC0:     1 = var_130.Text
  loc_17CCDD3:     Set var_1B4 = Me.Txt
  loc_17CCDD9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_17CCDEA:     var_28C = CVar(CLng(var_86)) 'Long
  loc_17CCDF2:     var_2AC = CVar(CLng(4)) 'Long
  loc_17CCE1B:     var_330 = CVar(CLng(var_86)) 'Long
  loc_17CCE23:     var_350 = CVar(CLng(7)) 'Long
  loc_17CCE76:     var_6D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CCEA7:     var_6E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CCEB8:     Proc_6_7_F26918(var_5B8, Date, var_6E0, CVar(CLng(&H1E)), CVar(CLng(var_86)), var_6D8, CVar(CLng(8)))
  loc_17CCEC1:     Set var_5BC = Me.TopCtrl1
  loc_17CCEC7:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(var_86)))
  loc_17CCF12:     var_A0 = "Insert Into SplitBillDetail (DocId,VNo,VDate,VTime,RestCode,TableNo,Sno,SNo1,ItemName,OQty,Rate,BillQty,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CCF70:     var_1DC = CVar(var_A0 & var_9C & "'," & var_A8 & ",") & var_F8 & ",'" & CVar(var_B4) & "','" & CVar(global_60) & "','" & CVar(var_1B8.Text) 
  loc_17CCFBA:     var_398 = var_1DC & "'," & CVar(var_86) & "," & CVar(var_88) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_17CD01B:     var_578 = var_398 & "," & CVar(var_6D8) & "," & CVar(var_6E0) & "," & &H1E & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_17CD065:     unk_586184.Execute CStr(var_578 & "'," & var_5B8 & ",'" & IIf((CStr(var_620) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F95078) & "')"), var_724, -1
  loc_17CD10D:   End If
  loc_17CD110: Next var_728 'Integer
  loc_17CD117: var_88 = 0
  loc_17CD13F: For var_72C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_72C 'Integer
  loc_17CD149:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_17CD151:   var_180 = CVar(CLng(&H1F)) 'Long
  loc_17CD16B:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_17CD181:   If (CDbl(Val(var_9C)) > CDbl(0)) Then
  loc_17CD18A:     var_88 = (var_88 + 1)
  loc_17CD19B:     Set var_94 = Me.Txt
  loc_17CD1A1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, var_88)
  loc_17CD1A9:     var_180 = var_98.Text
  loc_17CD1BC:     Set var_D8 = Me.Txt
  loc_17CD1C2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0, var_A8)
  loc_17CD1CA:     var_C4 = var_E0.Text
  loc_17CD1DA:     Set var_E4 = Me.Txt
  loc_17CD1E0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8)
  loc_17CD1EF:     Proc_6_7_F26918(var_F8, CVar(var_E8))
  loc_17CD202:     Set var_12C = Me.Txt
  loc_17CD208:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_130, var_B4)
  loc_17CD210:     1 = var_130.Text
  loc_17CD223:     Set var_1B4 = Me.Txt
  loc_17CD229:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B8)
  loc_17CD23A:     var_28C = CVar(CLng(var_86)) 'Long
  loc_17CD242:     var_2AC = CVar(CLng(4)) 'Long
  loc_17CD26B:     var_330 = CVar(CLng(var_86)) 'Long
  loc_17CD273:     var_350 = CVar(CLng(7)) 'Long
  loc_17CD27C:     Set var_364 = Me.FGrid
  loc_17CD282:     var_374 = var_364.TextMatrix)
  loc_17CD2B3:     var_40C = Me.FGrid.TextMatrix)
  loc_17CD2C6:     var_6D8 = Val(CStr(var_40C))
  loc_17CD2F7:     var_6E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17CD308:     Proc_6_7_F26918(var_5B8, Date, var_6E0, CVar(CLng(&H1F)), CVar(CLng(var_86)), var_6D8, CVar(CLng(8)))
  loc_17CD311:     Set var_5BC = Me.TopCtrl1
  loc_17CD317:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(var_86)))
  loc_17CD362:     var_A0 = "Insert Into SplitBillDetail (DocId,VNo,VDate,VTime,RestCode,TableNo,Sno,SNo1,ItemName,OQty,Rate,BillQty,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CD3C0:     var_1DC = CVar(var_A0 & var_9C & "'," & var_A8 & ",") & var_F8 & ",'" & CVar(var_B4) & "','" & CVar(global_60) & "','" & CVar(var_1B8.Text) 
  loc_17CD40A:     var_398 = var_1DC & "'," & CVar(var_86) & "," & CVar(var_88) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(Val(CStr(var_374))) 
  loc_17CD458:     var_548 = var_398 & "," & CVar(var_6D8) & "," & CVar(var_6E0) & "," & &H1F & ",'" & CVar(MemVar_1F95070) 
  loc_17CD46B:     var_578 = var_548 & "','" & CVar(MemVar_1F950C8) 
  loc_17CD4B5:     unk_586184.Execute CStr(var_578 & "'," & var_5B8 & ",'" & IIf((CStr(var_620) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F95078) & "')"), var_724, -1
  loc_17CD55D:   End If
  loc_17CD560: Next var_72C 'Integer
  loc_17CD56B: unk_586184.CommitTrans
  loc_17CD579: unk_586184.BeginTrans var_90
  loc_17CD59C: Set var_94 = Me.Txt
  loc_17CD5A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_9C, "DELETE FROM SplitSunTran WHERE DocId='")
  loc_17CD5AA: var_D4 = var_98.Text
  loc_17CD5B3: var_A0 = -1 & var_9C
  loc_17CD5D9: var_B4 = var_A0 & "' AND Site_Code='" & MemVar_1F95070 & "' AND RestCode='" & global_60 & "'"
  loc_17CD5E2: unk_586184.Execute var_B4, var_D8, 
  loc_17CD610: Set var_94 = Me.TxtGt
  loc_17CD616: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_72E, var_86)
  loc_17CD621: For var_732 =  To var_72E: 1 = var_732 'Integer
  loc_17CD634:   Set var_94 = Me.TxtGt
  loc_17CD63A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_98)
  loc_17CD642:   var_72E = var_98.Visible
  loc_17CD654:   If (var_72E = &HFF) Then
  loc_17CD665:     Set var_94 = Me.Txt
  loc_17CD66B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CD683:     Set var_D8 = Me.Txt
  loc_17CD689:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_17CD698:     Proc_6_7_F26918(var_F8, CVar(var_E0))
  loc_17CD6AA:     Set var_E4 = Me.TxtGt
  loc_17CD6B0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_E8)
  loc_17CD6C5:     var_6D0 = Val(var_E8.Text)
  loc_17CD6D5:     Set var_12C = Me.LblCap
  loc_17CD6DB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_130, var_B4)
  loc_17CD6F5:     Set var_1B4 = Me.LblCap
  loc_17CD6FB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_1B8)
  loc_17CD715:     Set var_2C0 = Me.LblDummy
  loc_17CD71B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_364)
  loc_17CD730:     var_6D8 = Val(var_364.Caption)
  loc_17CD741:     Proc_6_7_F26918(var_374, Date)
  loc_17CD74A:     Set var_3FC = Me.TopCtrl1
  loc_17CD750:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_6D8)
  loc_17CD75E:     var_450 = "E"
  loc_17CD79B:     var_A0 = "Insert Into SplitSunTran (DocId,RestCode,VDate,Sno,Amount,SunCode,DispName,BaseAmount,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CD7F0:     var_190 = CVar(var_A0 & var_98.Text & "','" & global_60 & "',") & var_F8 & "," & CVar(var_86) & "," & CVar(var_130.Tag) & ",'" 
  loc_17CD847:     var_2F0 = var_190 & CVar(var_B4) & "','" & CVar(var_1B8.Caption) & "'," & CVar(var_6D8) & ",0,'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_17CD860:     var_3B8 = var_2F0 & "'," & var_374 & ",'" 
  loc_17CD891:     unk_586184.Execute CStr(var_3B8 & IIf((CStr(var_40C) = "Add"), "A", var_450) & "','N','" & CVar(MemVar_1F95078) & "')"), var_548, -1
  loc_17CD911:   End If
  loc_17CD914: Next var_732 'Integer
  loc_17CD925: Set var_94 = Me.TxtGt1
  loc_17CD92B: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_72E, var_86)
  loc_17CD936: For var_736 =  To var_72E: 1 = var_736 'Integer
  loc_17CD949:   Set var_94 = Me.TxtGt1
  loc_17CD94F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_98)
  loc_17CD957:   var_72E = var_98.Visible
  loc_17CD969:   If (var_72E = &HFF) Then
  loc_17CD97A:     Set var_94 = Me.Txt
  loc_17CD980:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CD998:     Set var_D8 = Me.Txt
  loc_17CD99E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_17CD9AD:     Proc_6_7_F26918(var_F8, CVar(var_E0))
  loc_17CD9BF:     Set var_E4 = Me.TxtGt1
  loc_17CD9C5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_E8)
  loc_17CD9DA:     var_6D0 = Val(var_E8.Text)
  loc_17CD9EA:     Set var_12C = Me.LblCap1
  loc_17CD9F0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_130, var_B4)
  loc_17CDA0A:     Set var_1B4 = Me.LblCap1
  loc_17CDA10:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_1B8)
  loc_17CDA2A:     Set var_2C0 = Me.LblDummy1
  loc_17CDA30:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_364)
  loc_17CDA45:     var_6D8 = Val(var_364.Caption)
  loc_17CDA56:     Proc_6_7_F26918(var_3B8, Date)
  loc_17CDA5F:     Set var_3FC = Me.TopCtrl1
  loc_17CDA65:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_6D8)
  loc_17CDAB0:     var_A0 = "Insert Into SplitSunTran (DocId,RestCode,VDate,Sno,Amount,SunCode,DispName,BaseAmount,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CDB05:     var_190 = CVar(var_A0 & var_98.Text & "','" & global_60 & "',") & var_F8 & "," & CVar(var_86) & "," & CVar(var_130.Tag) & ",'" 
  loc_17CDB5C:     var_2F0 = var_190 & CVar(var_B4) & "','" & CVar(var_1B8.Caption) & "'," & CVar(var_6D8) & "," & &H1D & ",'" & CVar(MemVar_1F95070) 
  loc_17CDBA2:     var_548 = var_2F0 & "','" & CVar(MemVar_1F950C8) & "'," & var_3B8 & ",'" & IIf((CStr(var_450) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F95078) 
  loc_17CDBB9:     unk_586184.Execute CStr(var_548 & "')"), var_578, -1
  loc_17CDC3D:   End If
  loc_17CDC40: Next var_736 'Integer
  loc_17CDC51: Set var_94 = Me.TxtGt2
  loc_17CDC57: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_72E, var_86)
  loc_17CDC62: For var_73A =  To var_72E: 1 = var_73A 'Integer
  loc_17CDC75:   Set var_94 = Me.TxtGt2
  loc_17CDC7B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_98)
  loc_17CDC83:   var_72E = var_98.Visible
  loc_17CDC95:   If (var_72E = &HFF) Then
  loc_17CDCA6:     Set var_94 = Me.Txt
  loc_17CDCAC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CDCC4:     Set var_D8 = Me.Txt
  loc_17CDCCA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_17CDCD9:     Proc_6_7_F26918(var_F8, CVar(var_E0))
  loc_17CDCEB:     Set var_E4 = Me.TxtGt2
  loc_17CDCF1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_E8)
  loc_17CDD06:     var_6D0 = Val(var_E8.Text)
  loc_17CDD16:     Set var_12C = Me.LblCap2
  loc_17CDD1C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_130, var_B4)
  loc_17CDD36:     Set var_1B4 = Me.LblCap2
  loc_17CDD3C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_1B8)
  loc_17CDD56:     Set var_2C0 = Me.LblDummy2
  loc_17CDD5C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_364)
  loc_17CDD71:     var_6D8 = Val(var_364.Caption)
  loc_17CDD82:     Proc_6_7_F26918(var_3B8, Date)
  loc_17CDD8B:     Set var_3FC = Me.TopCtrl1
  loc_17CDD91:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_6D8)
  loc_17CDDDC:     var_A0 = "Insert Into SplitSunTran (DocId,RestCode,VDate,Sno,Amount,SunCode,DispName,BaseAmount,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CDE31:     var_190 = CVar(var_A0 & var_98.Text & "','" & global_60 & "',") & var_F8 & "," & CVar(var_86) & "," & CVar(var_130.Tag) & ",'" 
  loc_17CDE88:     var_2F0 = var_190 & CVar(var_B4) & "','" & CVar(var_1B8.Caption) & "'," & CVar(var_6D8) & "," & &H1E & ",'" & CVar(MemVar_1F95070) 
  loc_17CDECE:     var_548 = var_2F0 & "','" & CVar(MemVar_1F950C8) & "'," & var_3B8 & ",'" & IIf((CStr(var_450) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F95078) 
  loc_17CDEE5:     unk_586184.Execute CStr(var_548 & "')"), var_578, -1
  loc_17CDF69:   End If
  loc_17CDF6C: Next var_73A 'Integer
  loc_17CDF7D: Set var_94 = Me.TxtGt3
  loc_17CDF83: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_72E, var_86)
  loc_17CDF8E: For var_73E =  To var_72E: 1 = var_73E 'Integer
  loc_17CDFA1:   Set var_94 = Me.TxtGt3
  loc_17CDFA7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_98)
  loc_17CDFC1:   If (var_98.Visible = &HFF) Then
  loc_17CDFD2:     Set var_94 = Me.Txt
  loc_17CDFD8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_17CDFF0:     Set var_D8 = Me.Txt
  loc_17CDFF6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_17CE005:     Proc_6_7_F26918(var_F8, CVar(var_E0))
  loc_17CE017:     Set var_E4 = Me.TxtGt3
  loc_17CE01D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_E8)
  loc_17CE032:     var_6D0 = Val(var_E8.Text)
  loc_17CE042:     Set var_12C = Me.LblCap3
  loc_17CE048:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_130, var_B4)
  loc_17CE062:     Set var_1B4 = Me.LblCap3
  loc_17CE068:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_1B8)
  loc_17CE082:     Set var_2C0 = Me.LblDummy3
  loc_17CE088:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_86, var_364)
  loc_17CE09D:     var_6D8 = Val(var_364.Caption)
  loc_17CE0AE:     Proc_6_7_F26918(var_3B8, Date)
  loc_17CE0B7:     Set var_3FC = Me.TopCtrl1
  loc_17CE0BD:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_6D8)
  loc_17CE108:     var_A0 = "Insert Into SplitSunTran (DocId,RestCode,VDate,Sno,Amount,SunCode,DispName,BaseAmount,BillCat,Site_Code,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values " & "('"
  loc_17CE15D:     var_190 = CVar(var_A0 & var_98.Text & "','" & global_60 & "',") & var_F8 & "," & CVar(var_86) & "," & CVar(var_130.Tag) & ",'" 
  loc_17CE1B4:     var_2F0 = var_190 & CVar(var_B4) & "','" & CVar(var_1B8.Caption) & "'," & CVar(var_6D8) & "," & &H1F & ",'" & CVar(MemVar_1F95070) 
  loc_17CE1FA:     var_548 = var_2F0 & "','" & CVar(MemVar_1F950C8) & "'," & var_3B8 & ",'" & IIf((CStr(var_450) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F95078) 
  loc_17CE211:     unk_586184.Execute CStr(var_548 & "')"), var_578, -1
  loc_17CE295:   End If
  loc_17CE298: Next var_73E 'Integer
  loc_17CE2A3: unk_586184.CommitTrans
  loc_17CE2AA: var_8A = 0
  loc_17CE2D0: Call Proc_162_92_1005DCC(Proc_5_1_100EC1C("INI", Me), global_92)
  loc_17CE2E6: Set var_94 = Me.TopCtrl1
  loc_17CE2EC: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030019(False)
  loc_17CE2FE: Set var_94 = Me.TopCtrl1
  loc_17CE304: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(True)
  loc_17CE317: Set var_94 = Me.TopCtrl1
  loc_17CE31D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_17CE32F: Set var_94 = Me.TopCtrl1
  loc_17CE335: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000F(True)
  loc_17CE360: Call Proc_162_92_1005DCC(Proc_5_1_100EC1C("INI", Me), global_92)
  loc_17CE36B: Call Proc_162_89_1B43764(var_8A)
  loc_17CE370: Exit Sub
  loc_17CE377: If (var_8A = &HFF) Then
  loc_17CE380:   unk_586184.RollbackTrans
  loc_17CE385: End If
  loc_17CE385: Proc_6_60_E63754()
  loc_17CE38A: Exit Sub
End Sub

Public Function global_5792088Get() '58872C
  BVM60.DLL.GetMemNewObj
End Function

Public Function global_5792088Get() '588746
  BVM60.DLL.PutMemNewObj
End Function

Public Function global_5792088Get() '588760
  BVM60.DLL.SetMemNewObj
End Function

Public Function global_56Get() '58877A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '588789
  global_56 = Value
End Sub

Public Function global_60Get() '588798
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '5887A7
  global_60 = Value
End Sub

Public Sub FindMove(mDocId) 'E7138C
  'Data Table: 586158
  Dim Me As Recordset15
  loc_E71336: Me.MoveFirst
  loc_E71360: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E71380: If (Me.EOF = 0) Then
  loc_E71383:   Call Proc_162_89_1B43764(var_9C)
  loc_E71388: End If
  loc_E71388: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E97140
  'Data Table: 586158
  Dim Me As Recordset15
  loc_E970CE: On Error Goto loc_E97137
  loc_E970D7: Me.MoveFirst
  loc_E97101: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97129: Proc_5_0_1107AD0(&HFF, Me, global_92)
  loc_E97131: Call Proc_162_89_1B43764(0)
  loc_E97136: Exit Sub
  loc_E97137: ' Referenced from: E970CE
  loc_E97137: Proc_6_60_E63754(var_A0)
  loc_E9713C: Exit Sub
End Sub

Public Sub Proc_162_79_143F9C0
  'Data Table: 586158
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_143EEBA: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_143EED5: Me.FGrid.Top = CVar(CDbl(700))
  loc_143EEF0: Me.DGItem.Left = CVar(CDbl(3000))
  loc_143EF0B: Me.DGItem.Top = CVar(CDbl(1000))
  loc_143EF21: Set var_A8 = Me.Txt
  loc_143EF27: Call 0.Method_Proc_162_79_143F9C00 (CInt(3), var_AC)
  loc_143EF46: Me.DGTable.Left = CVar(var_AC.Left)
  loc_143EF62: Set var_B4 = Me.Txt
  loc_143EF68: Call 0.Method_Proc_162_79_143F9C00 (CInt(3), var_B8)
  loc_143EF83: Set var_A8 = Me.Txt
  loc_143EF89: Call 0.Method_Proc_162_79_143F9C00 (CInt(3), var_AC)
  loc_143EFA1: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_143EFB0: Me.DGTable.Top = CVar(var_AC.Left)
  loc_143EFD5: Me.DGRest.Left = CVar(CDbl(3000))
  loc_143EFF0: Me.DGRest.Top = CVar(CDbl(1000))
  loc_143EFFC: Set var_C4 = Me.FGrid
  loc_143F013: global_112 = CStr(CLng(var_C4.BackColor))
  loc_143F029: var_C4.Cols = &H20
  loc_143F031: var_94 = CVar(CLng(0)) 'Long
  loc_143F036: var_E8 = &HFA
  loc_143F042: LateIdCallSt
  loc_143F04A: var_94 = 0
  loc_143F056: var_E8 = CVar(CLng(&HC)) 'Long
  loc_143F05B: var_108 = "KSNo"
  loc_143F064: LateIdCallSt
  loc_143F06F: var_94 = CVar(CLng(&HC)) 'Long
  loc_143F074: var_E8 = 0
  loc_143F080: LateIdCallSt
  loc_143F088: var_94 = 0
  loc_143F094: var_E8 = CVar(CLng(1)) 'Long
  loc_143F099: var_108 = "Rest"
  loc_143F0A2: LateIdCallSt
  loc_143F0AD: var_94 = CVar(CLng(1)) 'Long
  loc_143F0B8: var_E8 = CVar(CInt(1)) 'Integer
  loc_143F0BF: LateIdCallSt
  loc_143F0CA: var_94 = CVar(CLng(1)) 'Long
  loc_143F0CF: var_E8 = 0
  loc_143F0DB: LateIdCallSt
  loc_143F0E3: var_94 = 0
  loc_143F0EF: var_E8 = CVar(CLng(2)) 'Long
  loc_143F0F4: var_108 = "Rest."
  loc_143F0FD: LateIdCallSt
  loc_143F108: var_94 = CVar(CLng(2)) 'Long
  loc_143F113: var_E8 = CVar(CInt(1)) 'Integer
  loc_143F11A: LateIdCallSt
  loc_143F125: var_94 = CVar(CLng(2)) 'Long
  loc_143F12A: var_E8 = 0
  loc_143F136: LateIdCallSt
  loc_143F13E: var_94 = 0
  loc_143F14A: var_E8 = CVar(CLng(3)) 'Long
  loc_143F14F: var_108 = "Item Code"
  loc_143F158: LateIdCallSt
  loc_143F163: var_94 = CVar(CLng(3)) 'Long
  loc_143F16E: var_E8 = CVar(CInt(1)) 'Integer
  loc_143F175: LateIdCallSt
  loc_143F180: var_94 = CVar(CLng(3)) 'Long
  loc_143F185: var_E8 = 0
  loc_143F191: LateIdCallSt
  loc_143F199: var_94 = 0
  loc_143F1A5: var_E8 = CVar(CLng(4)) 'Long
  loc_143F1AA: var_108 = "Item Name"
  loc_143F1B3: LateIdCallSt
  loc_143F1BE: var_94 = CVar(CLng(4)) 'Long
  loc_143F1C9: var_E8 = CVar(CInt(1)) 'Integer
  loc_143F1D0: LateIdCallSt
  loc_143F1DB: var_94 = CVar(CLng(4)) 'Long
  loc_143F1E0: var_E8 = &H76C
  loc_143F1EC: LateIdCallSt
  loc_143F1F4: var_94 = 0
  loc_143F200: var_E8 = CVar(CLng(5)) 'Long
  loc_143F205: var_108 = "KOT No."
  loc_143F20E: LateIdCallSt
  loc_143F219: var_94 = CVar(CLng(5)) 'Long
  loc_143F224: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F22B: LateIdCallSt
  loc_143F236: var_94 = CVar(CLng(5)) 'Long
  loc_143F241: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F248: LateIdCallSt
  loc_143F25B: If (global_200 = "Y") Then
  loc_143F261:   var_94 = CVar(CLng(5)) 'Long
  loc_143F266:   var_E8 = &H258
  loc_143F272:   LateIdCallSt
  loc_143F27D: Else
  loc_143F280:   var_94 = CVar(CLng(5)) 'Long
  loc_143F285:   var_E8 = 0
  loc_143F291:   LateIdCallSt
  loc_143F299: End If
  loc_143F299: var_94 = 0
  loc_143F2A5: var_E8 = CVar(CLng(6)) 'Long
  loc_143F2AA: var_108 = "Unit"
  loc_143F2B3: LateIdCallSt
  loc_143F2BE: var_94 = CVar(CLng(6)) 'Long
  loc_143F2C9: var_E8 = CVar(CInt(1)) 'Integer
  loc_143F2D0: LateIdCallSt
  loc_143F2DB: var_94 = CVar(CLng(6)) 'Long
  loc_143F2E0: var_E8 = &H258
  loc_143F2EC: LateIdCallSt
  loc_143F2F4: var_94 = 0
  loc_143F300: var_E8 = CVar(CLng(7)) 'Long
  loc_143F305: var_108 = "Qty"
  loc_143F30E: LateIdCallSt
  loc_143F319: var_94 = CVar(CLng(7)) 'Long
  loc_143F324: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F32B: LateIdCallSt
  loc_143F336: var_94 = CVar(CLng(7)) 'Long
  loc_143F341: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F348: LateIdCallSt
  loc_143F353: var_94 = CVar(CLng(7)) 'Long
  loc_143F358: var_E8 = &H258
  loc_143F364: LateIdCallSt
  loc_143F36C: var_94 = 0
  loc_143F378: var_E8 = CVar(CLng(8)) 'Long
  loc_143F37D: var_108 = "Rate"
  loc_143F386: LateIdCallSt
  loc_143F391: var_94 = CVar(CLng(8)) 'Long
  loc_143F39C: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F3A3: LateIdCallSt
  loc_143F3AE: var_94 = CVar(CLng(8)) 'Long
  loc_143F3B9: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F3C0: LateIdCallSt
  loc_143F3CB: var_94 = CVar(CLng(8)) 'Long
  loc_143F3D0: var_E8 = &H320
  loc_143F3DC: LateIdCallSt
  loc_143F3E4: var_94 = 0
  loc_143F3F0: var_E8 = CVar(CLng(9)) 'Long
  loc_143F3F5: var_108 = "Rate1"
  loc_143F3FE: LateIdCallSt
  loc_143F409: var_94 = CVar(CLng(9)) 'Long
  loc_143F414: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F41B: LateIdCallSt
  loc_143F426: var_94 = CVar(CLng(9)) 'Long
  loc_143F431: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F438: LateIdCallSt
  loc_143F443: var_94 = CVar(CLng(9)) 'Long
  loc_143F448: var_E8 = 0
  loc_143F454: LateIdCallSt
  loc_143F45C: var_94 = 0
  loc_143F468: var_E8 = CVar(CLng(&HA)) 'Long
  loc_143F46D: var_108 = "Amount"
  loc_143F476: LateIdCallSt
  loc_143F481: var_94 = CVar(CLng(&HA)) 'Long
  loc_143F48C: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F493: LateIdCallSt
  loc_143F49E: var_94 = CVar(CLng(&HA)) 'Long
  loc_143F4A9: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F4B0: LateIdCallSt
  loc_143F4BB: var_94 = CVar(CLng(&HA)) 'Long
  loc_143F4C0: var_E8 = &H384
  loc_143F4CC: LateIdCallSt
  loc_143F4D7: var_94 = CVar(CLng(&HD)) 'Long
  loc_143F4DC: var_E8 = 0
  loc_143F4E8: LateIdCallSt
  loc_143F4F3: var_94 = CVar(CLng(&HB)) 'Long
  loc_143F4F8: var_E8 = 0
  loc_143F504: LateIdCallSt
  loc_143F50F: var_94 = CVar(CLng(&HE)) 'Long
  loc_143F514: var_E8 = 0
  loc_143F520: LateIdCallSt
  loc_143F52B: var_94 = CVar(CLng(&HF)) 'Long
  loc_143F530: var_E8 = 0
  loc_143F53C: LateIdCallSt
  loc_143F547: var_94 = CVar(CLng(&H10)) 'Long
  loc_143F54C: var_E8 = 0
  loc_143F558: LateIdCallSt
  loc_143F563: var_94 = CVar(CLng(&H11)) 'Long
  loc_143F568: var_E8 = 0
  loc_143F574: LateIdCallSt
  loc_143F57F: var_94 = CVar(CLng(&H12)) 'Long
  loc_143F584: var_E8 = 0
  loc_143F590: LateIdCallSt
  loc_143F59B: var_94 = CVar(CLng(&H14)) 'Long
  loc_143F5A0: var_E8 = 0
  loc_143F5AC: LateIdCallSt
  loc_143F5B7: var_94 = CVar(CLng(&H13)) 'Long
  loc_143F5BC: var_E8 = 0
  loc_143F5C8: LateIdCallSt
  loc_143F5D3: var_94 = CVar(CLng(&H18)) 'Long
  loc_143F5D8: var_E8 = 0
  loc_143F5E4: LateIdCallSt
  loc_143F5EF: var_94 = CVar(CLng(&H19)) 'Long
  loc_143F5F4: var_E8 = 0
  loc_143F600: LateIdCallSt
  loc_143F60B: var_94 = CVar(CLng(&H1A)) 'Long
  loc_143F610: var_E8 = 0
  loc_143F61C: LateIdCallSt
  loc_143F624: var_94 = 0
  loc_143F630: var_E8 = CVar(CLng(&HB)) 'Long
  loc_143F635: var_108 = "Item Code"
  loc_143F63E: LateIdCallSt
  loc_143F646: var_94 = 0
  loc_143F652: var_E8 = CVar(CLng(&HE)) 'Long
  loc_143F657: var_108 = "Disc %"
  loc_143F660: LateIdCallSt
  loc_143F668: var_94 = 0
  loc_143F674: var_E8 = CVar(CLng(&HF)) 'Long
  loc_143F679: var_108 = "Disc Amt."
  loc_143F682: LateIdCallSt
  loc_143F68A: var_94 = 0
  loc_143F696: var_E8 = CVar(CLng(&H10)) 'Long
  loc_143F69B: var_108 = "Tax %"
  loc_143F6A4: LateIdCallSt
  loc_143F6AC: var_94 = 0
  loc_143F6B8: var_E8 = CVar(CLng(&H11)) 'Long
  loc_143F6BD: var_108 = "Tax Amt"
  loc_143F6C6: LateIdCallSt
  loc_143F6CE: var_94 = 0
  loc_143F6DA: var_E8 = CVar(CLng(&H12)) 'Long
  loc_143F6DF: var_108 = "Total"
  loc_143F6E8: LateIdCallSt
  loc_143F6F0: var_94 = 0
  loc_143F6FC: var_E8 = CVar(CLng(&H14)) 'Long
  loc_143F701: var_108 = "R Off"
  loc_143F70A: LateIdCallSt
  loc_143F712: var_94 = 0
  loc_143F71E: var_E8 = CVar(CLng(&H13)) 'Long
  loc_143F723: var_108 = "Disc Y/N"
  loc_143F72C: LateIdCallSt
  loc_143F734: var_94 = 0
  loc_143F740: var_E8 = CVar(CLng(&H18)) 'Long
  loc_143F745: var_108 = "Tax Cat Code"
  loc_143F74E: LateIdCallSt
  loc_143F759: var_94 = CVar(CLng(&H15)) 'Long
  loc_143F75E: var_E8 = 0
  loc_143F76A: LateIdCallSt
  loc_143F775: var_94 = CVar(CLng(&H16)) 'Long
  loc_143F77A: var_E8 = 0
  loc_143F786: LateIdCallSt
  loc_143F791: var_94 = CVar(CLng(&H17)) 'Long
  loc_143F796: var_E8 = 0
  loc_143F7A2: LateIdCallSt
  loc_143F7AD: var_94 = CVar(CLng(&H1B)) 'Long
  loc_143F7B2: var_E8 = 0
  loc_143F7BE: LateIdCallSt
  loc_143F7C9: var_94 = CVar(CLng(&H1C)) 'Long
  loc_143F7CE: var_E8 = 0
  loc_143F7DA: LateIdCallSt
  loc_143F7E2: var_94 = 0
  loc_143F7EE: var_E8 = CVar(CLng(&H1D)) 'Long
  loc_143F7F3: var_108 = "Bill 1"
  loc_143F7FC: LateIdCallSt
  loc_143F807: var_94 = CVar(CLng(&H1D)) 'Long
  loc_143F812: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F819: LateIdCallSt
  loc_143F824: var_94 = CVar(CLng(&H1D)) 'Long
  loc_143F82F: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F836: LateIdCallSt
  loc_143F841: var_94 = CVar(CLng(&H1D)) 'Long
  loc_143F846: var_E8 = &H258
  loc_143F852: LateIdCallSt
  loc_143F85A: var_94 = 0
  loc_143F866: var_E8 = CVar(CLng(&H1E)) 'Long
  loc_143F86B: var_108 = "Bill 2"
  loc_143F874: LateIdCallSt
  loc_143F87F: var_94 = CVar(CLng(&H1E)) 'Long
  loc_143F88A: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F891: LateIdCallSt
  loc_143F89C: var_94 = CVar(CLng(&H1E)) 'Long
  loc_143F8A7: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F8AE: LateIdCallSt
  loc_143F8B9: var_94 = CVar(CLng(&H1E)) 'Long
  loc_143F8BE: var_E8 = &H258
  loc_143F8CA: LateIdCallSt
  loc_143F8D2: var_94 = 0
  loc_143F8DE: var_E8 = CVar(CLng(&H1F)) 'Long
  loc_143F8E3: var_108 = "Bill 3"
  loc_143F8EC: LateIdCallSt
  loc_143F8F7: var_94 = CVar(CLng(&H1F)) 'Long
  loc_143F902: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F909: LateIdCallSt
  loc_143F914: var_94 = CVar(CLng(&H1F)) 'Long
  loc_143F91F: var_E8 = CVar(CInt(7)) 'Integer
  loc_143F926: LateIdCallSt
  loc_143F931: var_94 = CVar(CLng(&H1F)) 'Long
  loc_143F936: var_E8 = &H258
  loc_143F942: LateIdCallSt
  loc_143F959: var_C4.BackColorBkg = CVar(CLng(global_224))
  loc_143F960: Set var_C4 = Nothing 
  loc_143F968: Set var_11C = Me.FGCat
  loc_143F97F: global_112 = CStr(CLng(var_11C.BackColor))
  loc_143F98C: var_94 = CVar(CLng(3)) 'Long
  loc_143F991: var_E8 = &H7D0
  loc_143F99D: LateIdCallSt
  loc_143F9B1: var_11C.Cols = 8
  loc_143F9B8: Set var_11C = Nothing 
  loc_143F9BC: Exit Sub
End Sub

Public Sub Proc_162_80_1B6FEA8
  'Data Table: 586158
  Dim var_170 As Variant
  Dim var_1B0 As Variant
  Dim var_14C As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1F0 As Variant
  Dim var_190 As Variant
  Dim var_158 As String
  Dim unk_586184 As Connection15
  Dim var_88 As Variant
  Dim var_150 As Variant
  Dim var_1FC As Variant
  Dim var_208 As Double
  Dim var_A4 As Double
  Dim var_AC As Variant
  Dim var_200 As String
  Dim var_214 As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_154 As Variant
  Dim var_1F8 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Double
  Dim MemVar_1F950EC As Double
  Dim Me As Recordset15
  Dim var_240 As Variant
  Dim var_254 As String
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_278 As Variant
  Dim var_298 As Variant
  Dim var_118 As Recordset15
  Dim var_8A As Variant
  Dim var_2A8 As Variant
  Dim var_2F0 As Variant
  Dim var_3DC As Variant
  Dim var_3F8 As Variant
  Dim var_418 As Variant
  Dim var_42C As Variant
  Dim var_46C As Variant
  Dim var_44C As Variant
  Dim var_4B4 As Variant
  Dim var_A0C As Double
  Dim var_504 As Variant
  Dim var_A14 As Double
  Dim var_794 As Variant
  Dim var_A1C As Double
  Dim var_8E0 As Variant
  Dim var_8C0 As String
  Dim var_958 As Variant
  Dim var_29C As String
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_2BC As Variant
  Dim var_2CC As Variant
  Dim var_2DC As Variant
  Dim var_1D0 As Variant
  Dim var_2EC As Variant
  Dim var_304 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_334 As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_264 As Variant
  Dim var_364 As Variant
  Dim var_374 As Variant
  Dim var_384 As Variant
  Dim var_394 As Variant
  Dim var_3A4 As Variant
  Dim var_3D4 As Variant
  Dim var_48C As Variant
  Dim var_49C As Variant
  Dim var_4AC As Variant
  Dim var_4C8 As Variant
  Dim var_4F8 As Variant
  Dim var_528 As Variant
  Dim var_558 As Variant
  Dim var_568 As Variant
  Dim var_598 As Variant
  Dim var_5C8 As Variant
  Dim var_5F8 As Variant
  Dim var_608 As Variant
  Dim var_628 As Variant
  Dim var_638 As Variant
  Dim var_648 As Variant
  Dim var_688 As Variant
  Dim var_698 As Variant
  Dim var_6C8 As Variant
  Dim var_6D8 As Variant
  Dim var_708 As Variant
  Dim var_728 As Variant
  Dim var_738 As Variant
  Dim var_768 As Variant
  Dim var_778 As Variant
  Dim var_788 As Variant
  Dim var_7B8 As Variant
  Dim var_7D8 As Variant
  Dim var_7E8 As Variant
  Dim var_828 As Variant
  Dim var_838 As Variant
  Dim var_940 As Variant
  Dim var_96C As Variant
  Dim var_99C As Variant
  Dim var_9BC As Variant
  Dim var_2A4 As Variant
  Dim var_408 As Variant
  Dim var_3D8 As Variant
  Dim var_3E8 As Variant
  Dim var_508 As String
  Dim var_428 As Variant
  Dim var_47C As Variant
  Dim var_2A0 As TextBox
  Dim var_3E4 As Variant
  Dim var_4B0 As MSHFlexGrid
  Dim var_4FC As MSHFlexGrid
  Dim var_500 As Variant
  Dim var_78C As Variant
  Dim var_A30 As String
  Dim var_790 As MSHFlexGrid
  Dim var_A34 As String
  Dim var_9F0 As Variant
  Dim var_A54 As Variant
  Dim var_A68 As String
  Dim var_A98 As Variant
  Dim var_AB8 As Variant
  Dim var_AFC As Variant
  Dim var_B1C As Variant
  Dim var_954 As Variant
  Dim var_B60 As Variant
  Dim var_B80 As Variant
  Dim var_B94 As String
  Dim var_105C As Double
  Dim var_BE4 As Variant
  Dim var_A04 As Variant
  Dim var_878 As Variant
  Dim var_BF8 As String
  Dim var_1064 As Double
  Dim var_C5C As Variant
  Dim var_8BC As Variant
  Dim var_C60 As String
  Dim var_106C As Double
  Dim var_1074 As Double
  Dim var_DD0 As Variant
  Dim var_DF0 As Variant
  Dim var_E04 As MSHFlexGrid
  Dim var_E64 As Variant
  Dim var_E84 As Variant
  Dim var_EF8 As Variant
  Dim var_F18 As Variant
  Dim var_F3C As Variant
  Dim var_107C As Double
  Dim var_2F4 As String
  Dim var_4B8 As String
  Dim var_A24 As String
  Dim var_A28 As String
  Dim var_A00 As Variant
  Dim var_DA0 As Variant
  Dim var_F5C As Variant
  Dim var_3E0 As String
  Dim var_95C As String
  Dim var_146 As Integer
  Dim var_128 As Recordset15
  Dim var_12C As Recordset15
  Dim var_D1C As Field20
  Dim var_A2C As String
  loc_1B6B038: On Error Goto loc_1B6FE8E
  loc_1B6B046: Set var_14C = Me.Txt
  loc_1B6B04C: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1))
  loc_1B6B075: If (Proc_6_27_EA61EC(var_150, "Voucher Date") = 0) Then
  loc_1B6B078:   Exit Sub
  loc_1B6B079: End If
  loc_1B6B080: Set var_14C = Me.TxtGt
  loc_1B6B086: Call 0.Method_Proc_162_80_1B6FEA88 (var_15A)
  loc_1B6B099: Call TxtGt_Validate((var_15A + 1))
  loc_1B6B0AC: Set var_14C = Me.Txt
  loc_1B6B0B2: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_150)
  loc_1B6B0DB: If (Proc_6_27_EA61EC(var_150, "Voucher No") = 0) Then
  loc_1B6B0DE:   Exit Sub
  loc_1B6B0DF: End If
  loc_1B6B0EA: Set var_14C = Me.Txt
  loc_1B6B0F0: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(5), var_150)
  loc_1B6B119: If (Proc_6_27_EA61EC(var_150, "CashRegData Time") = 0) Then
  loc_1B6B11C:   Exit Sub
  loc_1B6B11D: End If
  loc_1B6B128: If (global_60 = vbNullString) Then
  loc_1B6B144:   MsgBox("Open RestaurantChange Form ", 0, var_1A0, var_1C0, var_1E0)
  loc_1B6B154:   Exit Sub
  loc_1B6B155: End If
  loc_1B6B155: var_170 = 1
  loc_1B6B161: var_1B0 = CVar(CLng(4)) 'Long
  loc_1B6B17B: var_1A0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B6B181: var_1C0 = Trim(var_1A0)
  loc_1B6B19D: If (var_1C0 = vbNullString) Then
  loc_1B6B1B3:   var_180 = "No Item On First Row.."
  loc_1B6B1B9:   MsgBox(var_180, 0, var_1A0, var_1C0, var_1E0)
  loc_1B6B1DC:   Me.FGrid.Row = 1
  loc_1B6B1E8:   Set var_14C = Me.FGrid
  loc_1B6B1F9:   Exit Sub
  loc_1B6B1FA: End If
  loc_1B6B205: If (global_212 = "Room Service") Then
  loc_1B6B21D:   var_170 = MemVar_1F95078
  loc_1B6B225:   Proc_6_17_EAAE40(var_180, var_170, "Select RoomPayType From enviro WHERE LOGSITE_CODE=", var_1C0, -1, var_14C)
  loc_1B6B23B:   unk_586184.Execute CStr(FGrid.DispID_8001 & var_180), var_1B0, var_170
  loc_1B6B246:   Set var_88 = var_14C
  loc_1B6B26C:   If (var_88.RecordCount > 0) Then
  loc_1B6B281:     var_14C = var_88.Fields
  loc_1B6B289:     var_150 = var_14C.Item(0)
  loc_1B6B2B3:     If (Proc_6_38_E69628(var_150.Value, 0) = vbNullString) Then
  loc_1B6B2D1:       var_180 = "Please define Room Payment Type From Enviro"
  loc_1B6B2D7:       MsgBox(var_180, &H40, "HMS", var_1C0, var_1E0)
  loc_1B6B2E7:       Exit Sub
  loc_1B6B2E8:     End If
  loc_1B6B2E8:   End If
  loc_1B6B2EB: Else
  loc_1B6B308:   Proc_6_17_EAAE40(var_180, MemVar_1F95078, "Select CashPayType From enviro WHERE LOGSITE_CODE=", var_1C0)
  loc_1B6B310:   var_1A0 = -1 & var_180 
  loc_1B6B31E:   unk_586184.Execute CStr("HMS"), var_14C, var_150
  loc_1B6B329:   Set var_88 = var_14C
  loc_1B6B34F:   If (var_88.RecordCount > 0) Then
  loc_1B6B36C:     var_150 = var_88.Fields.Item(0)
  loc_1B6B381:     var_124 = Proc_6_38_E69628(var_150.Value)
  loc_1B6B396:     If (var_124 = vbNullString) Then
  loc_1B6B3BA:       MsgBox("Please define Cash Payment Type From Enviro", &H40, "HMS", var_1C0, var_1E0)
  loc_1B6B3CA:       Exit Sub
  loc_1B6B3CB:     End If
  loc_1B6B3CB:   End If
  loc_1B6B3CB: End If
  loc_1B6B3D9: Set var_14C = Me.Txt
  loc_1B6B3DF: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(6), var_150)
  loc_1B6B403: If (CDbl(Val(var_150.Text)) <> CDbl(0)) Then
  loc_1B6B40D:   Set var_154 = Me.TxtGt
  loc_1B6B413:   Call 0.Method_Proc_162_80_1B6FEA88 (var_15A)
  loc_1B6B425:   Set var_1F8 = Me.TxtGt
  loc_1B6B42B:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15A, var_1FC)
  loc_1B6B451:   Set var_14C = Me.Txt
  loc_1B6B457:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(6), var_150)
  loc_1B6B486:   If (CDbl(Val(var_150.Text)) < CDbl(Val(var_1FC.Text))) Then
  loc_1B6B4AA:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_1C0, var_1E0)
  loc_1B6B4C5:     Set var_14C = Me.Txt
  loc_1B6B4CB:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(6), var_150)
  loc_1B6B4D3:     var_150.SetFocus
  loc_1B6B4DF:     Exit Sub
  loc_1B6B4E0:   End If
  loc_1B6B4E0: End If
  loc_1B6B505: For var_20C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_20C 'Integer
  loc_1B6B50F:   var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6B517:   var_1B0 = CVar(CLng(&H11)) 'Long
  loc_1B6B547:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1B6B54E:     var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6B556:     var_1B0 = CVar(CLng(&HA)) 'Long
  loc_1B6B582:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1B6B591:   Else
  loc_1B6B595:     var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6B59D:     var_1B0 = CVar(CLng(&HA)) 'Long
  loc_1B6B5AC:     var_180 = Me.FGrid.TextMatrix)
  loc_1B6B5B7:     var_158 = CStr(var_180)
  loc_1B6B5C9:     var_AC = (var_AC + Val(var_158))
  loc_1B6B5D5:   End If
  loc_1B6B5D8: Next var_20C 'Integer
  loc_1B6B5E9: Set var_14C = Me.TxtGt
  loc_1B6B5EF: Call 0.Method_Proc_162_80_1B6FEA88 (var_15A, var_92)
  loc_1B6B5FA: For var_210 =  To var_15A: 1 = var_210 'Integer
  loc_1B6B62C:   Set var_14C = Me.LblCap
  loc_1B6B632:   Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_180, -1)
  loc_1B6B664:   unk_586184.Execute var_1F8 & var_158 & "' And V_Type='" & global_144 & "'", 0, var_1FC
  loc_1B6B66C:   var_1A0 = var_150.Tag.Fields
  loc_1B6B674:    = var_1F8.Item()
  loc_1B6B67C:    = var_1FC.Value
  loc_1B6B6B0:   var_220 = Proc_6_38_E69628(var_1A0)
  loc_1B6B6BB:   If (var_220 = "Addition") Then
  loc_1B6B6CB:     Set var_14C = Me.TxtGt
  loc_1B6B6D1:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150)
  loc_1B6B6D9:     var_158 = var_150.Text
  loc_1B6B6F0:     var_B4 = (var_B4 + Val(var_158))
  loc_1B6B70A:     Set var_14C = Me.TxtPer
  loc_1B6B710:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158)
  loc_1B6B718:     var_B4 = var_150.Text
  loc_1B6B72F:     var_CC = (var_CC + Val(var_158))
  loc_1B6B73F:   Else
  loc_1B6B747:     If (var_220 = "Deduction") Then
  loc_1B6B757:       Set var_14C = Me.TxtGt
  loc_1B6B75D:       Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158)
  loc_1B6B765:       var_CC = var_150.Text
  loc_1B6B77C:       var_BC = (var_BC + Val(var_158))
  loc_1B6B796:       Set var_14C = Me.TxtPer
  loc_1B6B79C:       Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_BC)
  loc_1B6B7A4:       var_208 = var_150.Text
  loc_1B6B7BB:       var_C4 = (var_C4 + Val(var_158))
  loc_1B6B7CB:     Else
  loc_1B6B7D3:       If (var_220 = "Discount") Then
  loc_1B6B7E3:         Set var_14C = Me.TxtGt
  loc_1B6B7E9:         Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_C4)
  loc_1B6B7F1:         var_208 = var_150.Text
  loc_1B6B808:         var_DC = (var_DC + Val(var_158))
  loc_1B6B822:         Set var_14C = Me.TxtPer
  loc_1B6B828:         Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_DC)
  loc_1B6B830:         var_208 = var_150.Text
  loc_1B6B847:         var_E4 = (var_E4 + Val(var_158))
  loc_1B6B857:       Else
  loc_1B6B85F:         If (var_220 = "Luxury Tax") Then
  loc_1B6B86F:           Set var_14C = Me.TxtGt
  loc_1B6B875:           Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_E4)
  loc_1B6B87D:           var_208 = var_150.Text
  loc_1B6B894:           var_FC = (var_FC + Val(var_158))
  loc_1B6B8AE:           Set var_14C = Me.TxtPer
  loc_1B6B8B4:           Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_FC)
  loc_1B6B8BC:           var_208 = var_150.Text
  loc_1B6B8D3:           var_D4 = (var_D4 + Val(var_158))
  loc_1B6B8E3:         Else
  loc_1B6B8EB:           If (var_220 = "Round Off") Then
  loc_1B6B8FB:             Set var_14C = Me.TxtGt
  loc_1B6B901:             Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_D4)
  loc_1B6B909:             var_208 = var_150.Text
  loc_1B6B920:             var_EC = (var_EC + Val(var_158))
  loc_1B6B93A:             Set var_14C = Me.TxtPer
  loc_1B6B940:             Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_EC)
  loc_1B6B948:             var_208 = var_150.Text
  loc_1B6B95F:             var_F4 = (var_F4 + Val(var_158))
  loc_1B6B96F:           Else
  loc_1B6B977:             If (var_220 = "Sale Tax") Then
  loc_1B6B987:               Set var_14C = Me.TxtGt
  loc_1B6B98D:               Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_F4)
  loc_1B6B995:               var_208 = var_150.Text
  loc_1B6B9AC:               var_FC = (var_FC + Val(var_158))
  loc_1B6B9C6:               Set var_14C = Me.TxtPer
  loc_1B6B9CC:               Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_FC)
  loc_1B6B9D4:               var_208 = var_150.Text
  loc_1B6B9EB:               var_D4 = (var_D4 + Val(var_158))
  loc_1B6B9FB:             Else
  loc_1B6BA03:               If (var_220 = "Service Charge") Then
  loc_1B6BA13:                 Set var_14C = Me.TxtGt
  loc_1B6BA19:                 Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_D4)
  loc_1B6BA21:                 var_208 = var_150.Text
  loc_1B6BA38:                 var_104 = (var_104 + Val(var_158))
  loc_1B6BA52:                 Set var_14C = Me.TxtPer
  loc_1B6BA58:                 Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_104)
  loc_1B6BA60:                 var_208 = var_150.Text
  loc_1B6BA77:                 var_10C = (var_10C + Val(var_158))
  loc_1B6BA87:               Else
  loc_1B6BA8F:                 If (var_220 = "Service Tax") Then
  loc_1B6BA9F:                   Set var_14C = Me.TxtGt
  loc_1B6BAA5:                   Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_10C)
  loc_1B6BAAD:                   var_208 = var_150.Text
  loc_1B6BAC4:                   var_FC = (var_FC + Val(var_158))
  loc_1B6BADE:                   Set var_14C = Me.TxtPer
  loc_1B6BAE4:                   Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150, var_158, var_FC)
  loc_1B6BAEC:                   var_208 = var_150.Text
  loc_1B6BB03:                   var_D4 = (var_D4 + Val(var_158))
  loc_1B6BB10:                 End If
  loc_1B6BB10:               End If
  loc_1B6BB10:             End If
  loc_1B6BB10:           End If
  loc_1B6BB10:         End If
  loc_1B6BB10:       End If
  loc_1B6BB10:     End If
  loc_1B6BB10:   End If
  loc_1B6BB13: Next var_210 'Integer
  loc_1B6BB1B: var_9C = vbNullString
  loc_1B6BB21: Call Proc_162_90_110BAA0(var_15A)
  loc_1B6BB2C: If (var_15A = 0) Then
  loc_1B6BB2F:   Exit Sub
  loc_1B6BB30: End If
  loc_1B6BB3B: Set var_14C = Me.TxtGrid
  loc_1B6BB41: Call 0.Method_Proc_162_80_1B6FEA80 (0, var_150)
  loc_1B6BB49: var_150.Visible = False
  loc_1B6BB55: Call Proc_162_93_EF84A4()
  loc_1B6BB68: Set var_14C = Me.Txt
  loc_1B6BB6E: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_150)
  loc_1B6BB96: If (Proc_6_91_EF38D0(CDate(var_150.Text)) = 0) Then
  loc_1B6BBA4:   Set var_14C = Me.Txt
  loc_1B6BBAA:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1))
  loc_1B6BBB2:   var_150.SetFocus
  loc_1B6BBBE:   Exit Sub
  loc_1B6BBBF: End If
  loc_1B6BBC3: Set var_14C = Me.TopCtrl1
  loc_1B6BBC9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_150)
  loc_1B6BBE2: If (CStr() = "Add") Then
  loc_1B6BBEB:   var_190 = 0
  loc_1B6BC08:   var_158 = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F95078
  loc_1B6BC18:   unk_586184.Execute var_158 & "'", var_180, -1
  loc_1B6BC20:   var_14C = var_14C.Fields
  loc_1B6BC28:   var_190 = var_150.Item(var_150)
  loc_1B6BC30:   var_154 = var_154.Value
  loc_1B6BC3A:   MemVar_1F950EC = CDate(var_1A0)
  loc_1B6BC5A:   var_190 = 0
  loc_1B6BC81:   Set var_14C = Me.Txt
  loc_1B6BC87:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158, "Select Count(*) From Sale1 Where DocID='", var_180, -1, var_154)
  loc_1B6BC8F:   var_1F8 = var_150.Text
  loc_1B6BCA8:   unk_586184.Execute var_190 & var_158 & "'", var_1FC, var_1A0
  loc_1B6BCB0:   MemVar_1F950EC = var_154.Fields
  loc_1B6BCB8:    = var_1F8.Item(var_1A0)
  loc_1B6BCC0:    = var_1FC.Value
  loc_1B6BCED:   If (var_1A0 > 0) Then
  loc_1B6BCF6:     Call Proc_162_95_10EAFB8(MemVar_1F95044)
  loc_1B6BD09:     Set var_14C = Me.Txt
  loc_1B6BD0F:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150)
  loc_1B6BD17:     var_150.Text = var_158
  loc_1B6BD26:     Exit Sub
  loc_1B6BD27:   End If
  loc_1B6BD2A: Else
  loc_1B6BD5E:   global_116 = CStr(Me.Fields.Item("DocID").Value)
  loc_1B6BD6F: End If
  loc_1B6BD6F: var_170 = 1
  loc_1B6BD7B: var_1B0 = CVar(CLng(&HD)) 'Long
  loc_1B6BD96: var_1F0 = 1
  loc_1B6BDA2: var_240 = CVar(CLng(&HC)) 'Long
  loc_1B6BDC4: var_208 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B6BDFB: unk_586184.Execute "Select Waiter From CashRegData where DocID='" & CStr(Me.FGrid.TextMatrix)) & "' And SNO =" & CStr(var_208), var_1C0, -1
  loc_1B6BE06: Set var_88 = var_154
  loc_1B6BE3E: If (var_88.RecordCount > 0) Then
  loc_1B6BE53:   var_14C = var_88.Fields
  loc_1B6BE72:   global_204 = CStr(var_14C.Item(0).Value)
  loc_1B6BE83: End If
  loc_1B6BE89: global_140 = vbNullString
  loc_1B6BE93: Call Proc_162_98_EAC1D4(var_118, var_14C, var_154, var_208, var_240)
  loc_1B6BE9B: Set var_118 = var_14C
  loc_1B6BEC3: For var_268 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_268 'Integer
  loc_1B6BECD:   var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6BED5:   var_1B0 = CVar(CLng(4)) 'Long
  loc_1B6BEF5:   var_1C0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B6BEFD:   var_1F0 = vbNullString
  loc_1B6BF0B:   var_230 = CVar(CLng(var_92)) 'Long
  loc_1B6BF5B:   If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_1B6BF72:     If (var_118.RecordCount > 0) Then
  loc_1B6BF78:       var_118.MoveFirst
  loc_1B6BF89:       var_1B0 = CVar(CLng(&HD)) 'Long
  loc_1B6BFF2:       var_118.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))), 0, 1
  loc_1B6C01C:       If var_118.EOF Then
  loc_1B6C02A:         var_118.AddNew CVar(CLng(var_92)), var_190
  loc_1B6C033:         var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6C03B:         var_1B0 = CVar(CLng(&HD)) 'Long
  loc_1B6C081:         var_230 = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1B6C08F:         var_118.Collect = "V_NO"
  loc_1B6C0B0:         var_118.Update var_170, var_190
  loc_1B6C0B5:       End If
  loc_1B6C0B8:     Else
  loc_1B6C0C3:       var_118.AddNew var_170, var_190
  loc_1B6C0D4:       var_1B0 = CVar(CLng(&HD)) 'Long
  loc_1B6C11A:       var_230 = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1B6C128:       var_118.Collect = "V_NO"
  loc_1B6C149:       var_118.Update CVar(CLng(var_92)), var_190
  loc_1B6C14E:     End If
  loc_1B6C14E:   End If
  loc_1B6C151: Next var_268 'Integer
  loc_1B6C15C: var_1F4 = var_118.RecordCount
  loc_1B6C16A: If (var_1F4 > 0) Then
  loc_1B6C173:   var_118.Sort = "V_NO"
  loc_1B6C17B:   var_118.MoveFirst
  loc_1B6C180:   ' Referenced from: 1B6C272
  loc_1B6C186:   var_15A = var_118.EOF
  loc_1B6C18F:   If Not(var_15A) Then
  loc_1B6C19D:     If (global_140 <> vbNullString) Then
  loc_1B6C1F2:       global_140 = CStr(Trim(CVar(global_140 & "," & CStr(var_118.Fields.Item("V_NO").Value))))
  loc_1B6C212:     Else
  loc_1B6C22C:       var_150 = var_118.Fields.Item("V_NO")
  loc_1B6C23E:       var_1A0 = CVar(CStr(var_150.Value)) 'String
  loc_1B6C24D:       var_158 = CStr(Trim(var_1A0))
  loc_1B6C253:       global_140 = var_158
  loc_1B6C26A:     End If
  loc_1B6C26D:     var_118.MoveNext
  loc_1B6C272:     GoTo loc_1B6C180
  loc_1B6C275:   End If
  loc_1B6C27E:   global_140 = global_140
  loc_1B6C282: End If
  loc_1B6C284: var_8A = &HFF
  loc_1B6C290: unk_586184.BeginTrans var_1F4
  loc_1B6C2B3: Set var_14C = Me.Txt
  loc_1B6C2B9: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158, "Delete From Stock Where DocID='")
  loc_1B6C2C1: var_180 = var_150.Text
  loc_1B6C2CA: var_200 = -1 & var_158
  loc_1B6C2DA: unk_586184.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, var_8A
  loc_1B6C312: Set var_14C = Me.Txt
  loc_1B6C318: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158, "Delete From Sale1 Where DocID='")
  loc_1B6C320: var_180 = var_150.Text
  loc_1B6C329: var_200 = -1 & var_158
  loc_1B6C339: unk_586184.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B6C371: Set var_14C = Me.Txt
  loc_1B6C377: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158, "Delete From Sale2 Where DocID='")
  loc_1B6C37F: var_180 = var_150.Text
  loc_1B6C388: var_200 = -1 & var_158
  loc_1B6C398: unk_586184.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B6C3D0: Set var_14C = Me.Txt
  loc_1B6C3D6: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158, "Delete From SunTran Where DocID='")
  loc_1B6C3DE: var_180 = var_150.Text
  loc_1B6C3E7: var_200 = -1 & var_158
  loc_1B6C3F7: unk_586184.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B6C41C: If (global_212 = "Room Service") Then
  loc_1B6C42D:   Set var_14C = Me.Txt
  loc_1B6C433:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150)
  loc_1B6C43B:   var_158 = var_150.Text
  loc_1B6C44E:   Set var_154 = Me.Txt
  loc_1B6C454:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_1F8)
  loc_1B6C477:   Set var_1FC = Me.Txt
  loc_1B6C47D:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_2A0)
  loc_1B6C48C:   Proc_6_7_F26918(var_1A0, CVar(var_2A0))
  loc_1B6C49F:   Set var_2A4 = Me.Txt
  loc_1B6C4A5:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(5), var_2A8)
  loc_1B6C4BF:   var_2F4 = Me.LblVPrefix.Caption
  loc_1B6C4D2:   Set var_3D8 = Me.Txt
  loc_1B6C4D8:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_3DC)
  loc_1B6C4E0:   var_3E0 = var_3DC.Text
  loc_1B6C4F0:   Set var_3E4 = Me.Txt
  loc_1B6C4F6:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_3E8)
  loc_1B6C4FB:   var_3F8 = 1
  loc_1B6C507:   var_418 = CVar(CLng(&H17)) 'Long
  loc_1B6C54D:   Set var_4B0 = Me.Txt
  loc_1B6C553:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(4), var_4B4, var_4B8)
  loc_1B6C55B:   var_418 = var_4B4.Text
  loc_1B6C568:   var_A0C = Val(var_4B8)
  loc_1B6C572:   Set var_4FC = Me.TxtGt
  loc_1B6C578:   Call 0.Method_Proc_162_80_1B6FEA84 (var_15A, var_A0C)
  loc_1B6C58A:   Set var_500 = Me.TxtGt
  loc_1B6C590:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15A, var_504, var_508)
  loc_1B6C598:   var_3F8 = var_504.Text
  loc_1B6C5A5:   var_A14 = Val(var_508)
  loc_1B6C5AF:   Set var_78C = Me.TxtGt
  loc_1B6C5B5:   Call 0.Method_Proc_162_80_1B6FEA88 (var_15C, var_A14)
  loc_1B6C5C7:   Set var_790 = Me.TxtGt
  loc_1B6C5CD:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15C, var_794)
  loc_1B6C5E2:   var_A1C = Val(var_794.Text)
  loc_1B6C5F3:   Proc_6_7_F26918(var_878, Date)
  loc_1B6C5FC:   Set var_8AC = Me.TopCtrl1
  loc_1B6C602:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_A1C)
  loc_1B6C647:   Set var_954 = Me.Txt
  loc_1B6C64D:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(5), var_958)
  loc_1B6C655:   var_95C = var_958.Text
  loc_1B6C66E:   var_200 = "Insert Into Sale1(Docid,VNo,VDate,VTime,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B6C6BE:   var_2DC = CVar(var_200 & var_158 & "'," & CStr(Val(var_1F8.Text)) & ",") & var_1A0 & ",'" & CVar(var_2A8.Text) & "','" & CVar(global_144) 
  loc_1B6C710:   var_374 = var_2DC & "','" & CVar(var_2F4) & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_60) & "','" & CVar(global_148) 
  loc_1B6C736:   var_48C = var_374 & "','" & CVar(global_152) & "','" & IIf((var_3E0 <> vbNullString), CVar(var_3E8), CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B6C7AE:   var_628 = var_48C & "'," & CVar(var_A0C) & "," & CVar(var_A14) & "," & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) 
  loc_1B6C826:   var_7B8 = var_628 & "," & CVar(var_FC) & ", " & CVar(var_104) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_A1C) 
  loc_1B6C84F:   var_838 = var_7B8 & ",'" & CVar(global_140) & "', '" & CVar(MemVar_1F950C8) 
  loc_1B6C88B:   var_99C = var_838 & "'," & var_878 & ",'" & IIf((CStr(var_8BC) = "Add"), "A", "E") & "','" & CVar(var_95C) & "','" 
  loc_1B6C898:   var_9BC = var_99C & CVar(global_204) 
  loc_1B6C8AF:   unk_586184.Execute CStr(var_9BC & "','N')"), var_A00, -1
  loc_1B6C99C: Else
  loc_1B6C9AA:   Set var_14C = Me.Txt
  loc_1B6C9B0:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158)
  loc_1B6C9B8:   var_A04 = var_150.Text
  loc_1B6C9CB:   Set var_154 = Me.Txt
  loc_1B6C9D1:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_1F8)
  loc_1B6C9E6:   var_208 = Val(var_1F8.Text)
  loc_1B6C9F4:   Set var_1FC = Me.Txt
  loc_1B6C9FA:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_2A0)
  loc_1B6CA09:   Proc_6_7_F26918(var_1A0, CVar(var_2A0))
  loc_1B6CA2C:   var_408 = CVar(CLng(&H17)) 'Long
  loc_1B6CA35:   Set var_2A8 = Me.FGrid
  loc_1B6CA3B:   var_394 = var_2A8.TextMatrix)
  loc_1B6CA55:   Set var_2F0 = Me.Txt
  loc_1B6CA5B:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(4), var_3D8, var_2F4, var_394)
  loc_1B6CA63:   var_408 = var_3D8.Text
  loc_1B6CA70:   var_A0C = Val(var_2F4)
  loc_1B6CA7A:   Set var_3DC = Me.TxtGt
  loc_1B6CA80:   Call 0.Method_Proc_162_80_1B6FEA84 (var_15A, var_A0C, 1)
  loc_1B6CA92:   Set var_3E4 = Me.TxtGt
  loc_1B6CA98:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15A, var_3E8, var_3E0)
  loc_1B6CAAD:   var_A14 = Val(var_3E0)
  loc_1B6CAB7:   Set var_42C = Me.TxtGt
  loc_1B6CABD:   Call 0.Method_Proc_162_80_1B6FEA88 (var_15C, var_A14)
  loc_1B6CACF:   Set var_4B0 = Me.TxtGt
  loc_1B6CAD5:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15C, var_4B4)
  loc_1B6CAEA:   var_A1C = Val(var_4B4.Text)
  loc_1B6CB1E:   Proc_6_7_F26918(var_838, Date)
  loc_1B6CB27:   Set var_4FC = Me.TopCtrl1
  loc_1B6CB2D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_A1C)
  loc_1B6CB72:   Set var_500 = Me.Txt
  loc_1B6CB78:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(5), var_504)
  loc_1B6CB99:   var_200 = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B6CBE9:   var_2DC = CVar(var_200 & var_158 & "'," & CStr(var_3E8.Text) & ",") & var_1A0 & ",'" & CVar(global_144) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1B6CC3E:   var_364 = var_2DC & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_60) & "','" & CVar(global_148) & "','" & CVar(global_152) 
  loc_1B6CCA2:   var_4F8 = var_364 & "','" & CVar(CStr(var_394)) & "'," & CVar(var_A0C) & "," & CVar(var_A14) & "," & CVar(var_E4) & "," & CVar(var_DC) 
  loc_1B6CD1A:   var_688 = var_4F8 & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) & "," & CVar(var_B4) & "," & CVar(var_BC) 
  loc_1B6CD65:   var_7D8 = var_688 & "," & CVar(var_EC) & "," & CVar(var_A1C) & ",'" & Trim(Left(global_140, &HFF)) & "', '" & CVar(MemVar_1F950C8) 
  loc_1B6CDAE:   var_96C = var_7D8 & "'," & var_838 & ",'" & IIf((CStr(var_878) = "Add"), "A", "E") & "','" & CVar(var_504.Text) & "','" & CVar(global_204) 
  loc_1B6CDC5:   unk_586184.Execute CStr(var_96C & "','N')"), var_99C, -1
  loc_1B6CE9B: End If
  loc_1B6CEC0: For var_A20 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A20 'Integer
  loc_1B6CECA:   var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6CED2:   var_1B0 = CVar(CLng(4)) 'Long
  loc_1B6CEF2:   var_1C0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B6CF19:   Set var_150 = Me.FGrid
  loc_1B6CF2A:   var_158 = CStr(var_150.TextMatrix))
  loc_1B6CF58:   If CBool(CVar(CLng(7)) And (CDbl(Val(var_158)) <> CDbl(0))) Then
  loc_1B6CF69:     Set var_14C = Me.Txt
  loc_1B6CF6F:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158, CVar(CLng(var_92)), (var_1C0 <> vbNullString))
  loc_1B6CF77:     var_1B0 = var_150.Text
  loc_1B6CF80:     var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6CFAA:     var_208 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B6CFCD:     Set var_1FC = Me.Txt
  loc_1B6CFD3:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_2A0, var_95C, var_208, CVar(CLng(0)))
  loc_1B6CFE8:     var_A0C = Val(var_95C)
  loc_1B6CFF6:     Set var_2A4 = Me.Txt
  loc_1B6CFFC:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_2A8, var_A0C, var_2A0.Text)
  loc_1B6D00B:     Proc_6_7_F26918(var_1C0, CVar(var_2A8), 1)
  loc_1B6D014:     var_250 = CVar(CLng(var_92)) 'Long
  loc_1B6D025:     Set var_2F0 = Me.FGrid
  loc_1B6D02B:     var_2DC = var_2F0.TextMatrix)
  loc_1B6D052:     var_324 = Me.FGrid.TextMatrix)
  loc_1B6D06C:     Set var_3DC = Me.Txt
  loc_1B6D072:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_3E4, var_A2C, var_324, CVar(CLng(&H16)), CVar(CLng(var_92)))
  loc_1B6D08A:     Set var_3E8 = Me.Txt
  loc_1B6D090:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_42C, CVar(CLng(&H15)))
  loc_1B6D095:     var_44C = 1
  loc_1B6D0A1:     var_4C8 = CVar(CLng(&H17)) 'Long
  loc_1B6D0DD:     var_558 = CVar(CLng(var_92)) 'Long
  loc_1B6D0E5:     var_598 = CVar(CLng(&HB)) 'Long
  loc_1B6D0EE:     Set var_4B4 = Me.FGrid
  loc_1B6D104:     var_5F8 = CVar(CLng(var_92)) 'Long
  loc_1B6D10C:     var_638 = CVar(CLng(&H13)) 'Long
  loc_1B6D12B:     var_698 = CVar(CLng(var_92)) 'Long
  loc_1B6D133:     var_6D8 = CVar(CLng(&H14)) 'Long
  loc_1B6D13C:     Set var_500 = Me.FGrid
  loc_1B6D152:     var_738 = CVar(CLng(var_92)) 'Long
  loc_1B6D15A:     var_778 = CVar(CLng(6)) 'Long
  loc_1B6D169:     var_5C8 = Me.FGrid.TextMatrix)
  loc_1B6D179:     var_7E8 = CVar(CLng(var_92)) 'Long
  loc_1B6D181:     var_828 = CVar(CLng(7)) 'Long
  loc_1B6D18A:     Set var_78C = Me.FGrid
  loc_1B6D190:     var_648 = var_78C.TextMatrix)
  loc_1B6D1AA:     var_8E0 = CVar(CLng(var_92)) 'Long
  loc_1B6D1B2:     var_940 = CVar(CLng(9)) 'Long
  loc_1B6D1DB:     var_9F0 = CVar(CLng(var_92)) 'Long
  loc_1B6D1E3:     var_A54 = CVar(CLng(8)) 'Long
  loc_1B6D1EC:     Set var_794 = Me.FGrid
  loc_1B6D20C:     var_A98 = CVar(CLng(var_92)) 'Long
  loc_1B6D214:     var_AB8 = CVar(CLng(&HA)) 'Long
  loc_1B6D23D:     var_AFC = CVar(CLng(var_92)) 'Long
  loc_1B6D245:     var_B1C = CVar(CLng(&H10)) 'Long
  loc_1B6D26E:     var_B60 = CVar(CLng(var_92)) 'Long
  loc_1B6D276:     var_B80 = CVar(CLng(&H11)) 'Long
  loc_1B6D27F:     Set var_958 = Me.FGrid
  loc_1B6D29F:     var_BC4 = CVar(CLng(var_92)) 'Long
  loc_1B6D2A7:     var_BE4 = CVar(CLng(&HE)) 'Long
  loc_1B6D2C9:     var_1064 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B6D2E1:     Set var_C5C = Me.FGrid
  loc_1B6D2FA:     var_106C = Val(CStr(var_C5C.TextMatrix)))
  loc_1B6D32B:     var_1074 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B6D33C:     Proc_6_7_F26918(var_9BC, Date, var_1074, CVar(CLng(&H12)), CVar(CLng(var_92)), var_106C, CVar(CLng(&HF)), CVar(CLng(var_92)))
  loc_1B6D345:     Set var_D1C = Me.TopCtrl1
  loc_1B6D34B:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_1064)
  loc_1B6D386:     var_DD0 = CVar(CLng(var_92)) 'Long
  loc_1B6D38E:     var_DF0 = CVar(CLng(&H1A)) 'Long
  loc_1B6D397:     Set var_E04 = Me.FGrid
  loc_1B6D3AD:     var_E64 = CVar(CLng(var_92)) 'Long
  loc_1B6D3B5:     var_E84 = CVar(CLng(&H1A)) 'Long
  loc_1B6D3D4:     var_EF8 = CVar(CLng(var_92)) 'Long
  loc_1B6D3DC:     var_F18 = CVar(CLng(&HD)) 'Long
  loc_1B6D425:     var_107C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B6D43C:     var_200 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag) Values (" & "'"
  loc_1B6D483:     var_8C0 = var_200 & var_158 & "'," & CStr(var_208) & ",'" & global_144 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070
  loc_1B6D49D:     var_1E0 = CVar(var_8C0 & "'," & CStr(var_A0C) & ",") 'String
  loc_1B6D4EA:     var_354 = var_1E0 & var_1C0 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_3E4.Text)) & "','" & CVar(CStr(var_324)) & "','" 
  loc_1B6D505:     var_47C = var_354 & IIf((var_A2C <> vbNullString), CVar(var_42C), CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(CStr(var_4B4.TextMatrix))) 
  loc_1B6D50E:     var_48C = var_47C & "','" 
  loc_1B6D519:     var_4F8 = var_48C & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B6D569:     var_6C8 = var_4F8 & "','" & CVar(CStr(var_500.TextMatrix))) & "','" & CVar(CStr(var_5C8)) & "'," & CVar(Val(CStr(var_648))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B6D591:     var_788 = var_6C8 & "," & CVar(Val(CStr(var_794.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B6D5CD:     var_888 = var_788 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_958.TextMatrix)))) & "," & CVar(var_1064) 
  loc_1B6D5D6:     var_8A8 = var_888 & "," 
  loc_1B6D628:     var_DA0 = var_8A8 & CVar(var_106C) & "," & CVar(var_1074) & ",'" & CVar(MemVar_1F950C8) & "'," & var_9BC & ",'" & IIf((CStr(var_D2C) = "Add"), "A", "E") 
  loc_1B6D664:     var_F5C = var_DA0 & "','" & CVar(CStr(var_E04.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B6D68F:     unk_586184.Execute CStr(var_F5C & "'," & CVar(var_107C) & ",'N')"), var_1038, -1
  loc_1B6D7E4:     If (global_200 = "Y") Then
  loc_1B6D7F5:       Set var_14C = Me.Txt
  loc_1B6D7FB:       Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158, var_103C, var_107C, CVar(CLng(&HC)), CVar(CLng(var_92)))
  loc_1B6D803:       var_F3C = var_150.Text
  loc_1B6D80C:       var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6D814:       var_1B0 = CVar(CLng(0)) 'Long
  loc_1B6D83D:       var_1F0 = CVar(CLng(var_92)) 'Long
  loc_1B6D845:       var_240 = CVar(CLng(&HD)) 'Long
  loc_1B6D864:       var_264 = CVar(CLng(var_92)) 'Long
  loc_1B6D86C:       var_384 = CVar(CLng(&HC)) 'Long
  loc_1B6D8BF:       var_29C = "Update CashRegData Set ContraDocId='" & var_158 & "',ContraSno=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & " where docid='"
  loc_1B6D8E6:       unk_586184.Execute var_29C & CStr(Me.FGrid.TextMatrix)) & "' And SNo=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_1E0, -1
  loc_1B6D922:     End If
  loc_1B6D922:   End If
  loc_1B6D925: Next var_A20 'Integer
  loc_1B6D94F: For var_1080 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_92 = var_1080 'Integer
  loc_1B6D959:   var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6D961:   var_1B0 = CVar(CLng(2)) 'Long
  loc_1B6D9A8:   Set var_150 = Me.FGCat
  loc_1B6D9B9:   var_158 = CStr(var_150.TextMatrix))
  loc_1B6D9E7:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_158)) <> CDbl(0))) Then
  loc_1B6D9F8:     Set var_14C = Me.Txt
  loc_1B6D9FE:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158, CVar(CLng(var_92)))
  loc_1B6DA06:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_150.Text
  loc_1B6DA39:     var_208 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B6DA51:     Set var_1F8 = Me.FGCat
  loc_1B6DA57:     var_1A0 = var_1F8.TextMatrix)
  loc_1B6DA6A:     var_A0C = Val(CStr(var_1A0))
  loc_1B6DA7A:     var_8C0 = Me.LblVPrefix.Caption
  loc_1B6DA8D:     Set var_2A0 = Me.Txt
  loc_1B6DA93:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_2A4, var_A2C, var_A0C, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B6DAA8:     var_A14 = Val(var_A2C)
  loc_1B6DAB6:     Set var_2A8 = Me.Txt
  loc_1B6DABC:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_2F0, var_A14, CVar(CLng(1)))
  loc_1B6DACB:     Proc_6_7_F26918(var_1E0, CVar(var_2F0), CVar(CLng(var_92)))
  loc_1B6DAD4:     var_3A4 = CVar(CLng(var_92)) 'Long
  loc_1B6DADC:     var_3F8 = CVar(CLng(2)) 'Long
  loc_1B6DAE5:     Set var_3D8 = Me.FGCat
  loc_1B6DAFB:     var_428 = CVar(CLng(var_92)) 'Long
  loc_1B6DB03:     var_49C = CVar(CLng(4)) 'Long
  loc_1B6DB25:     var_A1C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B6DB3D:     Set var_3E4 = Me.FGCat
  loc_1B6DB56:     var_1044 = Val(CStr(var_3E4.TextMatrix)))
  loc_1B6DB87:     var_104C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B6DB98:     Proc_6_7_F26918(var_48C, Date, var_104C, CVar(CLng(6)), CVar(CLng(var_92)), var_1044, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1B6DBA1:     Set var_42C = Me.TopCtrl1
  loc_1B6DBA7:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_A1C)
  loc_1B6DBD9:     var_568 = IIf((CStr(var_4F8) = "Add"), "A", "E")
  loc_1B6DBF2:     var_200 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag) Values (" & "'"
  loc_1B6DC4C:     var_A28 = var_200 & var_158 & "'," & CStr(var_2A4.Text) & "," & CStr(var_A0C) & ",'" & global_144 & "','" & var_8C0 & "','" & MemVar_1F95070
  loc_1B6DC96:     var_314 = CVar(var_A28 & "'," & CStr(var_A14) & ",") & var_1E0 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_3D8.TextMatrix))) 
  loc_1B6DCF5:     var_4AC = var_314 & "'," & CVar(var_A1C) & "," & CVar(var_1044) & "," & CVar(var_104C) & ",'" & CVar(MemVar_1F950C8) & "'," & var_48C 
  loc_1B6DD1C:     unk_586184.Execute CStr(var_4AC & ",'" & var_568 & "','N')"), var_5C8, -1
  loc_1B6DDC4:   End If
  loc_1B6DDC7: Next var_1080 'Integer
  loc_1B6DDD8: Set var_14C = Me.TxtGt
  loc_1B6DDDE: Call 0.Method_Proc_162_80_1B6FEA88 (var_15A, var_92)
  loc_1B6DDE9: For var_1084 =  To var_15A: 1 = var_1084 'Integer
  loc_1B6DDFC:   Set var_14C = Me.TxtGt
  loc_1B6DE02:   Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_150)
  loc_1B6DE0A:   var_15A = var_150.Visible
  loc_1B6DE1C:   If (var_15A = &HFF) Then
  loc_1B6DE2D:     Set var_14C = Me.Txt
  loc_1B6DE33:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150)
  loc_1B6DE4E:     Set var_154 = Me.Txt
  loc_1B6DE54:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_1F8)
  loc_1B6DE77:     Set var_1FC = Me.Txt
  loc_1B6DE7D:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_2A0)
  loc_1B6DE8C:     Proc_6_7_F26918(var_1A0, CVar(var_2A0))
  loc_1B6DE9E:     Set var_2A4 = Me.LblCap
  loc_1B6DEA4:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_2A8)
  loc_1B6DEBE:     Set var_2F0 = Me.TxtPer
  loc_1B6DEC4:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_3D8)
  loc_1B6DED9:     var_A0C = Val(var_3D8.Tag)
  loc_1B6DEE9:     Set var_3DC = Me.LblCap
  loc_1B6DEEF:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_3E4, var_8C0)
  loc_1B6DF09:     Set var_3E8 = Me.LblAt
  loc_1B6DF0F:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_42C)
  loc_1B6DF29:     Set var_4B0 = Me.TxtGt
  loc_1B6DF2F:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_4B4)
  loc_1B6DF49:     Set var_4FC = Me.TxtPer
  loc_1B6DF4F:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_500)
  loc_1B6DF64:     var_A14 = Val(var_500.Text)
  loc_1B6DF74:     Set var_504 = Me.TxtGt
  loc_1B6DF7A:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_78C, var_A28)
  loc_1B6DF8F:     var_A1C = Val(var_A28)
  loc_1B6DF9F:     Set var_790 = Me.LblDummy
  loc_1B6DFA5:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_794, var_A2C)
  loc_1B6DFBA:     var_1044 = Val(var_A2C)
  loc_1B6DFCB:     Proc_6_7_F26918(var_4F8, Date)
  loc_1B6DFD4:     Set var_8AC = Me.TopCtrl1
  loc_1B6DFDA:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_1044)
  loc_1B6DFFD:     var_A30 = CStr(var_568)
  loc_1B6E00C:     var_5C8 = IIf((var_A30 = "Add"), "A", "E")
  loc_1B6E01C:     Set var_954 = Me.Txt
  loc_1B6E022:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(9), var_958)
  loc_1B6E02A:     var_628 = CVar(var_958) 'Address
  loc_1B6E031:     Proc_6_7_F26918(var_648, var_628)
  loc_1B6E043:     Set var_A04 = Me.LblDummy
  loc_1B6E049:     Call 0.Method_Proc_162_80_1B6FEA80 (var_92, var_C5C)
  loc_1B6E051:     var_A34 = var_C5C.Tag
  loc_1B6E06A:     var_200 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode) Values ('" & var_150.Text
  loc_1B6E071:     var_214 = var_200 & "',"
  loc_1B6E0C1:     var_2BC = CVar(var_214 & CStr(var_92) & ",'" & global_144 & "'," & CStr(Val(var_1F8.Text)) & ",") & var_1A0 & ",'" & CVar(var_2A8.Tag) 
  loc_1B6E0D5:     var_2DC = var_2BC & "'," & CVar(var_3E4.Caption) 
  loc_1B6E12B:     var_3D4 = var_2DC & ",'" & CVar(var_8C0) & "','" & CVar(var_42C.Tag) & "','" & CVar(var_4B4.Tag) & "'," & CVar(var_78C.Text) & "," 
  loc_1B6E186:     var_608 = var_3D4 & CVar(var_794.Caption) & "," & CVar(var_1044) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4F8 & ",'" & var_5C8 & "'," 
  loc_1B6E1BF:     var_728 = var_608 & var_648 & ",'" & CVar(var_A34) & "','" & CVar(global_60) & "','N','" 
  loc_1B6E1D2:     var_768 = var_728 & CVar(MemVar_1F95070) & "')" 
  loc_1B6E1E0:     unk_586184.Execute CStr(var_768), var_788, -1
  loc_1B6E2A8:   End If
  loc_1B6E2AB: Next var_1084 'Integer
  loc_1B6E2BB: If (global_200 = "Y") Then
  loc_1B6E2E3:   For var_1088 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_1088 'Integer
  loc_1B6E2ED:     var_170 = CVar(CLng(var_92)) 'Long
  loc_1B6E2F5:     var_1B0 = CVar(CLng(4)) 'Long
  loc_1B6E304:     var_180 = Me.FGrid.TextMatrix)
  loc_1B6E33C:     Set var_150 = Me.FGrid
  loc_1B6E37B:     If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(var_150.TextMatrix)))) <> CDbl(0))) Then
  loc_1B6E381:       Proc_6_104_ED68A8(var_180, CVar(CLng(var_92)), (Trim(CVar(CStr(var_180))) <> vbNullString))
  loc_1B6E38A:       var_190 = CVar(CLng(var_92)) 'Long
  loc_1B6E392:       var_1D0 = CVar(CLng(&HD)) 'Long
  loc_1B6E3D7:       var_1E0 = CVar("Update CashRegData Set Pending='N',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") & var_180 & ",U_AE1='E' where docid='" 
  loc_1B6E3F9:       unk_586184.Execute CStr(var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))) & "'"), var_2DC, -1
  loc_1B6E421:     End If
  loc_1B6E424:   Next var_1088 'Integer
  loc_1B6E429: End If
  loc_1B6E434: If (global_212 = "Room Service") Then
  loc_1B6E43A:   var_190 = 0
  loc_1B6E46A:   unk_586184.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_60 & "'", var_180, -1
  loc_1B6E472:   var_14C = var_14C.Fields
  loc_1B6E47A:   var_190 = var_150.Item(var_150)
  loc_1B6E491:   var_1B0 = " BILL NO.-"
  loc_1B6E496:   var_1E0 = (Trim(CVar(var_154)) + var_1B0)
  loc_1B6E49F:   var_278 = (var_1E0 + " ")
  loc_1B6E4B1:   Set var_1F8 = Me.Txt
  loc_1B6E4B7:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_1FC, var_214)
  loc_1B6E4BF:   var_278 = var_1FC.Text
  loc_1B6E4CA:   var_2BC = (var_154 + CVar(var_214))
  loc_1B6E4CF:   var_120 = CStr(var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B6E4FB:   var_146 = (var_146 + 1)
  loc_1B6E512:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150)
  loc_1B6E533:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_1F8)
  loc_1B6E548:   var_208 = Val(var_1F8.Text)
  loc_1B6E54F:   var_180 = CVar(Me.LblVPrefix) 'Address
  loc_1B6E566:   Set var_1FC = Me.Txt
  loc_1B6E56C:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_2A0)
  loc_1B6E57B:   Proc_6_7_F26918(var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))), CVar(var_2A0))
  loc_1B6E58B:   Set var_2A4 = Me.Txt
  loc_1B6E591:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(5), var_2A8)
  loc_1B6E5AC:   Set var_2F0 = Me.TxtGt
  loc_1B6E5B2:   Call 0.Method_Proc_162_80_1B6FEA88 (var_15A, var_208)
  loc_1B6E5C4:   Set var_3D8 = Me.TxtGt
  loc_1B6E5CA:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15A, var_3DC)
  loc_1B6E5DF:   var_A0C = Val(var_3DC.Text)
  loc_1B6E5E9:   Set var_3E4 = Me.TxtGt
  loc_1B6E5EF:   Call 0.Method_Proc_162_80_1B6FEA88 (var_15C, var_A0C)
  loc_1B6E601:   Set var_3E8 = Me.TxtGt
  loc_1B6E607:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15C, var_42C)
  loc_1B6E61C:   var_A14 = Val(var_42C.Text)
  loc_1B6E62D:   Set var_4B0 = Me.Txt
  loc_1B6E633:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(7), var_4B4, var_A30)
  loc_1B6E648:   var_A1C = Val(var_A30)
  loc_1B6E659:   Set var_4FC = Me.Txt
  loc_1B6E65F:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_500, var_A34)
  loc_1B6E677:   Set var_504 = Me.Txt
  loc_1B6E67D:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_78C)
  loc_1B6E690:   Set var_790 = Me.Txt
  loc_1B6E696:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_794)
  loc_1B6E6D2:   Proc_6_7_F26918(var_5C8, Date)
  loc_1B6E6DB:   Set var_8AC = Me.TopCtrl1
  loc_1B6E6E1:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_146)
  loc_1B6E72C:   var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B6E748:   var_254 = var_158 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'" & var_150.Text
  loc_1B6E794:   var_1C0 = CVar(var_254 & "'," & CStr(var_146) & ",'" & global_144 & "'," & CStr(var_208) & ",'" & MemVar_1F95070 & "','") 'String
  loc_1B6E79A:   var_1E0 = var_1C0 & Trim(var_180) 
  loc_1B6E7D6:   var_344 = var_1E0 & "'," & var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))) & ",'" & Trim(CVar(var_2A8)) & "'" & ",'','','" & CVar(var_120) 
  loc_1B6E82E:   var_46C = var_344 & "','" & CVar(var_124) & "','Room'," & CVar(var_A0C) & "," & CVar(var_4B4.Text) & "," & CVar(var_500.Text) & ",'REST'," 
  loc_1B6E85A:   var_568 = var_46C & "'RO','" & IIf((var_A34 <> vbNullString), CVar(var_78C), CVar(var_794.Tag)) & "','','','',Null," & "Null,'" & CVar(MemVar_1F950C8) 
  loc_1B6E899:   var_708 = var_568 & "'," & var_5C8 & ",'" & IIf((CStr(var_628) = "Add"), "A", "E") & "','" & CVar(global_60) & "')" 
  loc_1B6E8A7:   unk_586184.Execute CStr(var_708), var_728, -1
  loc_1B6E998:   unk_586184.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_180, -1
  loc_1B6E9A3:   Set var_128 = Me.Txt
  loc_1B6E9C9:   If (var_128.RecordCount > 0) Then
  loc_1B6E9F8:     var_150 = var_128.Fields.Item("TaxStru")
  loc_1B6EA08:     var_1A0 = "Select * from taxstru where Code='" & var_150.Value 
  loc_1B6EA11:     var_1C0 = var_1A0 & "' Order by Sno" 
  loc_1B6EA15:     var_158 = CStr(var_1C0)
  loc_1B6EA1F:     unk_586184.Execute var_158, var_1E0, -1
  loc_1B6EA2A:     Set var_118 = Me.Txt
  loc_1B6EA47:   Else
  loc_1B6EA5A:     var_180 = "System Defined Revenue is not defined"
  loc_1B6EA60:     MsgBox(var_180, 0, var_1A0, var_1C0, var_1E0)
  loc_1B6EA76:     unk_586184.RollbackTrans
  loc_1B6EA7B:     Exit Sub
  loc_1B6EA7C:   End If
  loc_1B6EA82:   var_146 = (var_146 + 1)
  loc_1B6EAA9:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(&HA), var_150, var_158, "Select GuestProf,Docid from GuestFolio where FolioNo=", var_180, -1)
  loc_1B6EAB1:   var_154 = var_150.Text
  loc_1B6EAC3:   unk_586184.Execute var_146 & var_158, var_154, Me.Txt
  loc_1B6EACE:   Set var_12C = var_154
  loc_1B6EAF8:   If (var_12C.RecordCount > 0) Then
  loc_1B6EB15:     var_150 = var_12C.Fields.Item("GuestProf")
  loc_1B6EB26:     var_11C = CStr(var_150.Value)
  loc_1B6EB33:   End If
  loc_1B6EB41:   Set var_14C = Me.Txt
  loc_1B6EB47:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150)
  loc_1B6EB4F:   var_218 = var_150.Text
  loc_1B6EB62:   Set var_154 = Me.Txt
  loc_1B6EB68:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_1F8)
  loc_1B6EB70:   var_508 = var_1F8.Text
  loc_1B6EB7D:   var_208 = Val(var_508)
  loc_1B6EB9B:   Set var_1FC = Me.Txt
  loc_1B6EBA1:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_2A0)
  loc_1B6EBB0:   Proc_6_7_F26918(var_1E0 & CVar(CStr(Me.FGrid.TextMatrix))), CVar(var_2A0))
  loc_1B6EBC0:   Set var_2A4 = Me.Txt
  loc_1B6EBC6:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(5), var_2A8)
  loc_1B6EBD5:   var_304 = Trim(CVar(var_2A8))
  loc_1B6EC08:   Set var_3DC = Me.TxtGt
  loc_1B6EC0E:   Call 0.Method_Proc_162_80_1B6FEA88 (var_15A, var_208)
  loc_1B6EC20:   Set var_3E4 = Me.TxtGt
  loc_1B6EC26:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15A, var_3E8)
  loc_1B6EC2E:   var_A28 = var_3E8.Text
  loc_1B6EC3B:   var_A0C = Val(var_A28)
  loc_1B6EC45:   Set var_42C = Me.TxtGt
  loc_1B6EC4B:   Call 0.Method_Proc_162_80_1B6FEA88 (var_15C, var_A0C)
  loc_1B6EC5D:   Set var_4B0 = Me.TxtGt
  loc_1B6EC63:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15C, var_4B4)
  loc_1B6EC78:   var_A14 = Val(var_4B4.Text)
  loc_1B6EC89:   Set var_4FC = Me.Txt
  loc_1B6EC8F:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(7), var_500, var_A30)
  loc_1B6ECA4:   var_A1C = Val(var_A30)
  loc_1B6ECB5:   Set var_504 = Me.Txt
  loc_1B6ECBB:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_78C, var_A34)
  loc_1B6ECD3:   Set var_790 = Me.Txt
  loc_1B6ECD9:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_794)
  loc_1B6ECEC:   Set var_8AC = Me.Txt
  loc_1B6ECF2:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_954)
  loc_1B6ED1B:   var_5C8 = IIf((var_A34 <> vbNullString), CVar(var_794), CVar(var_954.Tag))
  loc_1B6ED2E:   Set var_958 = Me.Txt
  loc_1B6ED34:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(&HA), var_A04)
  loc_1B6ED4F:   Proc_6_7_F26918(var_708, Date)
  loc_1B6ED58:   Set var_C5C = Me.TopCtrl1
  loc_1B6ED5E:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_954)
  loc_1B6EDD0:   var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1B6EDDE:   var_214 = var_158 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid) Values ("
  loc_1B6EDE5:   var_21C = var_214 & "'"
  loc_1B6EE38:   var_1C0 = CVar(var_21C & var_218 & "'," & CStr(var_146) & ",'" & global_144 & "'," & CStr(var_208) & ",'" & MemVar_1F95070 & "','") 'String
  loc_1B6EE57:   var_2DC = var_1C0 & Trim(CVar(Me.LblVPrefix)) & "'," & var_1C0 & Trim(CVar(Me.LblVPrefix)) & CVar(CStr(Me.FGrid.TextMatrix))) & ",'" 
  loc_1B6EEA6:   var_3D4 = var_2DC & var_304 & "'" & ",'" & CVar(var_11C) & "','','" & CVar(var_120) & "','" & var_128.Fields.Item("Code").Value & "','Room'," 
  loc_1B6EF01:   var_528 = var_3D4 & CVar(var_A0C) & "," & CVar(var_500.Text) & "," & CVar(var_78C.Text) & ",'" & CVar(global_148) & "'," & "'" 
  loc_1B6EF17:   var_568 = var_528 & CVar(global_152) & "','" 
  loc_1B6EF56:   var_6C8 = var_568 & var_5C8 & "'," & CVar(var_A04.Text) & ",'','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," 
  loc_1B6EF93:   var_878 = var_6C8 & var_708 & ",'" & IIf((CStr(var_768) = "Add"), "A", "E") & "','" & CVar(global_60) & "','" & var_12C.Fields.Item("DocID").Value 
  loc_1B6EFAA:   unk_586184.Execute CStr(var_878 & "')"), var_8A8, -1
  loc_1B6F0A4:   Set var_14C = Me.Txt
  loc_1B6F0AA:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150)
  loc_1B6F0C5:   Set var_154 = Me.Txt
  loc_1B6F0CB:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_1F8)
  loc_1B6F0D3:   var_158 = var_1F8.Text
  loc_1B6F0E0:   var_105C = Val(var_158)
  loc_1B6F101:   Set var_1FC = Me.Txt
  loc_1B6F107:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_2A0, var_508)
  loc_1B6F11F:   Set var_2A4 = Me.Txt
  loc_1B6F125:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(5), var_2A8)
  loc_1B6F134:   var_1E0 = Trim(CVar(var_2A8))
  loc_1B6F14B:   var_2F0 = var_128.Fields
  loc_1B6F15B:   var_344 = var_2F0.Item("Code").Value
  loc_1B6F167:   Set var_3DC = Me.TxtGt
  loc_1B6F16D:   Call 0.Method_Proc_162_80_1B6FEA88 (var_15A)
  loc_1B6F17F:   Set var_3E4 = Me.TxtGt
  loc_1B6F185:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15A, var_3E8)
  loc_1B6F19A:   var_1064 = Val(var_3E8.Text)
  loc_1B6F1A4:   Set var_42C = Me.TxtGt
  loc_1B6F1AA:   Call 0.Method_Proc_162_80_1B6FEA88 (var_15C, var_1064)
  loc_1B6F1BC:   Set var_4B0 = Me.TxtGt
  loc_1B6F1C2:   Call 0.Method_Proc_162_80_1B6FEA80 (var_15C, var_4B4)
  loc_1B6F1D7:   var_106C = Val(var_4B4.Text)
  loc_1B6F1E8:   Set var_4FC = Me.Txt
  loc_1B6F1EE:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(7), var_500, var_218)
  loc_1B6F1F6:   var_106C = var_500.Text
  loc_1B6F203:   var_1074 = Val(var_218)
  loc_1B6F214:   Set var_504 = Me.Txt
  loc_1B6F21A:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_78C, var_21C)
  loc_1B6F222:   var_1074 = var_78C.Text
  loc_1B6F232:   Set var_790 = Me.Txt
  loc_1B6F238:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_794)
  loc_1B6F24B:   Set var_8AC = Me.Txt
  loc_1B6F251:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_954)
  loc_1B6F27A:   var_2BC = IIf((var_21C <> vbNullString), CVar(var_794), CVar(var_954.Tag))
  loc_1B6F28D:   Set var_958 = Me.Txt
  loc_1B6F293:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(&HA), var_A04)
  loc_1B6F29B:   var_A2C = var_A04.Text
  loc_1B6F2A3:   var_2CC = Date
  loc_1B6F2AB:   var_2DC = Date
  loc_1B6F2B3:   var_2EC = Date
  loc_1B6F2BC:   Set var_C5C = Me.TopCtrl1
  loc_1B6F2C2:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_E04)
  loc_1B6F2F4:   var_334 = IIf((CStr(var_304) = "Add"), "A", "E")
  loc_1B6F31B:   var_354 = var_12C.Fields.Item("DocID").Value
  loc_1B6F325:   var_CC8 = 0
  loc_1B6F330:   var_C60 = 0
  loc_1B6F343:   var_BF8 = 0
  loc_1B6F34E:   var_B94 = 0
  loc_1B6F38B:   var_A68 = vbNullString
  loc_1B6F394:   var_A34 = vbNullString
  loc_1B6F39D:   var_A30 = vbNullString
  loc_1B6F3D6:   var_A24 = "Room"
  loc_1B6F3EA:   var_95C = vbNullString
  loc_1B6F3F3:   var_8C0 = vbNullString
  loc_1B6F437:   Proc_96_8_1CC4F08(MemVar_1F95078 & "TOUT", var_150.Text, var_146, global_144, CLng(var_2A0.Text), MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_508))
  loc_1B6F4D6: Else
  loc_1B6F4E4:   Set var_14C = Me.Txt
  loc_1B6F4EA:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(6), var_150, var_158, CStr(var_1E0), var_8C0)
  loc_1B6F4F2:   var_95C = var_150.Text
  loc_1B6F50E:   If (CDbl(Val(var_158)) > CDbl(0)) Then
  loc_1B6F538:     var_218 = "CASH RECD. " & Me.LblRest.Caption & " " & "BILL NO.-"
  loc_1B6F550:     Set var_150 = Me.Txt
  loc_1B6F556:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_154, var_21C, var_218 & " ")
  loc_1B6F55E:     var_120 = var_154.Text
  loc_1B6F590:     Set var_14C = Me.Txt
  loc_1B6F596:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_218)
  loc_1B6F59E:     var_A24 = var_150.Text
  loc_1B6F5B1:     Set var_154 = Me.Txt
  loc_1B6F5B7:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_1F8)
  loc_1B6F5CC:     var_208 = Val(var_1F8.Text)
  loc_1B6F5DA:     var_1A0 = Trim(CVar(Me.LblVPrefix))
  loc_1B6F5EA:     Set var_1FC = Me.Txt
  loc_1B6F5F0:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_2A0)
  loc_1B6F5FF:     Proc_6_7_F26918(var_2BC, CVar(var_2A0))
  loc_1B6F60B:     Set var_2A4 = Me.TxtGt
  loc_1B6F611:     Call 0.Method_Proc_162_80_1B6FEA88 (var_15A, var_208)
  loc_1B6F623:     Set var_2A8 = Me.TxtGt
  loc_1B6F629:     Call 0.Method_Proc_162_80_1B6FEA80 (var_15A, var_2F0)
  loc_1B6F63E:     var_A0C = Val(var_2F0.Text)
  loc_1B6F648:     Set var_3D8 = Me.TxtGt
  loc_1B6F64E:     Call 0.Method_Proc_162_80_1B6FEA88 (var_15C, var_A0C)
  loc_1B6F660:     Set var_3DC = Me.TxtGt
  loc_1B6F666:     Call 0.Method_Proc_162_80_1B6FEA80 (var_15C, var_3E4)
  loc_1B6F67B:     var_A14 = Val(var_3E4.Text)
  loc_1B6F68C:     Set var_3E8 = Me.Txt
  loc_1B6F692:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(7), var_42C, var_A24)
  loc_1B6F6A7:     var_A1C = Val(var_A24)
  loc_1B6F6B8:     Set var_4B0 = Me.Txt
  loc_1B6F6BE:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(3), var_4B4, var_A28)
  loc_1B6F6D9:     Proc_6_7_F26918(var_568, Date)
  loc_1B6F6E2:     Set var_4FC = Me.TopCtrl1
  loc_1B6F6E8:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_1064)
  loc_1B6F733:     var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B6F748:     var_21C = var_158 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'"
  loc_1B6F74F:     var_254 = var_21C & var_218
  loc_1B6F79E:     var_2CC = CVar(var_254 & "',1,'" & global_144 & "'," & CStr(var_208) & ",'" & MemVar_1F95070 & "','") & var_1A0 & "'," & var_2BC 
  loc_1B6F7EC:     var_354 = var_2CC & ",'','','" & CVar(CStr(var_344) & var_21C) & "','" & CVar(var_124) & "','Cash'," & CVar(var_A0C) & "," & CVar(var_42C.Text) 
  loc_1B6F848:     var_48C = var_354 & "," & CVar(var_4B4.Tag) & ",'" & CVar(global_148) & "'," & "'" & CVar(global_152) & "','" & CVar(var_A28) 
  loc_1B6F884:     var_648 = var_48C & "',0,'','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," & var_568 & ",'" & IIf((CStr(var_5C8) = "Add"), "A", "E") 
  loc_1B6F8B1:     unk_586184.Execute CStr(var_648 & "','" & CVar(global_60) & "')"), var_6C8, -1
  loc_1B6F95F:   End If
  loc_1B6F95F: End If
  loc_1B6F963: Set var_14C = Me.TopCtrl1
  loc_1B6F969: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_500)
  loc_1B6F982: If (CStr() = "Add") Then
  loc_1B6F999:   var_158 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1B6F9BF:   var_1C0 = CVar(var_158 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_144 & "' And VP.Date_From<=") 'String
  loc_1B6F9D0:   Set var_14C = Me.Txt
  loc_1B6F9D6:   Call 0.Method_Proc_162_80_1B6FEA80 (CInt(1), var_150, var_254, var_1C0)
  loc_1B6F9DE:   var_298 = var_150.Text
  loc_1B6F9EC:   Proc_6_7_F26918(var_1A0, CVar(var_254))
  loc_1B6F9F4:   var_1E0 = -1 & var_1A0 
  loc_1B6F9FD:   var_278 = CVar(var_254 & "',1,'" & global_144 & "'," & CStr(var_208) & ",'" & MemVar_1F95070 & "','") & var_1A0 & " Order By VP.Date_From DESC" 
  loc_1B6FA0B:   unk_586184.Execute CStr(var_278), var_154, 
  loc_1B6FA16:   Set var_88 = var_154
  loc_1B6FA54:   If (var_88.RecordCount > 0) Then
  loc_1B6FA65:     Set var_14C = Me.Txt
  loc_1B6FA6B:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(0), var_150)
  loc_1B6FA80:     var_208 = Val(var_150.Text)
  loc_1B6FA95:     var_154 = var_88.Fields
  loc_1B6FAA5:     var_180 = var_154.Item("V_Type").Value
  loc_1B6FAD0:     Proc_6_7_F26918(var_298, CVar(var_88.Fields.Item("Date_From")))
  loc_1B6FAEA:     var_200 = CStr(var_208)
  loc_1B6FB0A:     var_29C = "Update Voucher_Prefix Set Start_Srl_No=" & var_200 & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1B6FB35:     unk_586184.Execute CStr(CVar(var_29C & "') and V_Type='") & var_180 & "' and Date_From=" & var_298), var_2CC, -1
  loc_1B6FB6F:   End If
  loc_1B6FB6F: End If
  loc_1B6FB73: Set var_14C = Me.TopCtrl1
  loc_1B6FB79: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_2A4)
  loc_1B6FB92: If (CStr(var_208) = "Add") Then
  loc_1B6FBB8:   var_158 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F950C8
  loc_1B6FBC8:   Call 0.Method_arg_50 (var_200, var_158 & "' AND ENAME='", var_180, -1, var_14C)
  loc_1B6FBD8:   var_21C = var_150 & var_200 & "' "
  loc_1B6FBE1:   unk_586184.Execute var_21C, 0, var_154
  loc_1B6FBE9:   var_1A0 = var_14C.Fields
  loc_1B6FBF1:    = var_150.Item()
  loc_1B6FBF9:    = var_154.Value
  loc_1B6FC26:   If (var_1A0 > 0) Then
  loc_1B6FC47:     Set var_14C = Me.Txt
  loc_1B6FC4D:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_158, "UPDATE LASTVOU  SET DOCID='")
  loc_1B6FC55:     var_180 = var_150.Text
  loc_1B6FC5E:     var_200 = -1 & var_158
  loc_1B6FC7C:     Call 0.Method_arg_50 (var_21C, var_200 & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_1B6FC95:     unk_586184.Execute var_154 & var_21C & "'  ", , 
  loc_1B6FCBC:   Else
  loc_1B6FCE0:     Call 0.Method_arg_50 (var_200, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_2CC)
  loc_1B6FCE9:     var_218 = -1 & var_200
  loc_1B6FCF0:     var_254 = var_200 & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_1B6FD01:     Set var_14C = Me.Txt
  loc_1B6FD07:     Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150, var_21C)
  loc_1B6FD0F:     var_254 = var_150.Text
  loc_1B6FD3E:     Proc_6_7_F26918(var_1A0, Date)
  loc_1B6FD4A:     var_170 = ",'A','"
  loc_1B6FD70:     unk_586184.Execute CStr(CVar(var_154 & var_21C & "','" & MemVar_1F95070 & "',") & var_1A0 & var_170 & CVar(MemVar_1F95078) & "')"), , 
  loc_1B6FDA8:   End If
  loc_1B6FDA8: End If
  loc_1B6FDAE: unk_586184.CommitTrans
  loc_1B6FDB5: var_8A = 0
  loc_1B6FDC6: Set var_14C = Me.Txt
  loc_1B6FDCC: Call 0.Method_Proc_162_80_1B6FEA80 (CInt(2), var_150)
  loc_1B6FDE8: var_8A = 0
  loc_1B6FDF6: Me.Requery -1
  loc_1B6FE20: Me.Find "SearchCode ='" & var_150.Text & "'", 0, 1
  loc_1B6FE37: If (global_148 <> "FAST") Then
  loc_1B6FE45:   Me.Requery -1
  loc_1B6FE4A: End If
  loc_1B6FE6D: Call Proc_162_92_1005DCC(Proc_5_1_100EC1C("INI", Me, global_92), var_170)
  loc_1B6FE78: Call Proc_162_89_1B43764(var_8A)
  loc_1B6FE82: Set var_88 = Nothing
  loc_1B6FE8A: Set var_12C = Nothing
  loc_1B6FE8D: Exit Sub
  loc_1B6FE8E: ' Referenced from: 1B6B038
  loc_1B6FE94: If (var_8A = &HFF) Then
  loc_1B6FE9D:   unk_586184.RollbackTrans
  loc_1B6FEA2: End If
  loc_1B6FEA2: Proc_6_60_E63754(var_8A)
  loc_1B6FEA7: Exit Sub
End Sub

Public Sub Proc_162_81_15ED7B8
  'Data Table: 586158
  Dim Me As Recordset15
  Dim var_F4 As Fields15
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim unk_586184 As Connection15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_170 As Variant
  Dim var_2D8 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_290 As Variant
  Dim var_2B0 As Variant
  Dim var_300 As Variant
  Dim var_310 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2E8 As Variant
  Dim var_1E0 As Variant
  Dim var_2A0 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_434 As Variant
  Dim var_108 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_15EC4C8: On Error Goto loc_15ED7B1
  loc_15EC4D7: Me.Filter = "ModType='POS'"
  loc_15EC4F3: If (Me.RecordCount > 0) Then
  loc_15EC4F9:   MemVar_1F953C4 = "N"
  loc_15EC500:   MemVar_1F953C8 = "N"
  loc_15EC507:   MemVar_1F953CC = "K"
  loc_15EC53D:   var_128 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_15EC54B:   var_8C = CStr(var_128 & "'")
  loc_15EC565:   var_128 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_15EC5D8:   var_1A0 = var_128 & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) " 
  loc_15EC5DD:   var_90 = CStr(var_1A0)
  loc_15EC61B:   var_F4 = Me.Fields
  loc_15EC62B:   var_108 = var_F4.Item("SearchCode").Value
  loc_15EC633:   var_148 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_108 
  loc_15EC641:   var_94 = CStr(var_148 & "' order by sno ")
  loc_15EC65E:   If (var_8C = vbNullString) Then
  loc_15EC661:     Exit Sub
  loc_15EC662:   End If
  loc_15EC66A:   If (var_90 = vbNullString) Then
  loc_15EC66D:     Exit Sub
  loc_15EC66E:   End If
  loc_15EC676:   If (var_94 = vbNullString) Then
  loc_15EC679:     Exit Sub
  loc_15EC67A:   End If
  loc_15EC690:   unk_586184.Execute var_8C, var_108, -1
  loc_15EC69B:   Set var_BC = var_F4
  loc_15EC6BA:   unk_586184.Execute var_90, var_108, -1
  loc_15EC6C5:   Set var_C0 = var_F4
  loc_15EC6E4:   unk_586184.Execute var_94, var_108, -1
  loc_15EC6EF:   Set var_C4 = var_F4
  loc_15EC6FA:   var_AE = 7
  loc_15EC6FF:   Close 1
  loc_15EC708:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_15EC70C:   ' Referenced from: 15ED643
  loc_15EC71B:   If Not(var_BC.EOF) Then
  loc_15EC720:     var_9A = 0
  loc_15EC725:     var_9C = 1
  loc_15EC73F:     If ((global_212 = "Restaurant") Or (global_212 = "Hall")) Then
  loc_15EC750:       var_98 = "** " & "BILL" & " **"
  loc_15EC759:     Else
  loc_15EC76A:       var_98 = "** " & global_212 & " **"
  loc_15EC770:     End If
  loc_15EC776:     If (var_9A = 0) Then
  loc_15EC7A7:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_15EC7DE:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_15EC81A:       Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("VNo")), var_9C, var_9A)
  loc_15EC83D:       var_170 = (Space(8) + CVar(Proc_6_45_EADFB8(CStr(var_148), &HA, var_AE)))
  loc_15EC843:       Print 1, Me.Fields.Item("SearchCode").Value
  loc_15EC862:       Print 1
  loc_15EC884:       var_F4 = var_BC.Fields
  loc_15EC9CB:       Proc_6_39_E7D3A0(var_2E8, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_15EC9EC:       var_148 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_F4.Item("VDate")), var_F4), &H12)) 'String
  loc_15EC9EF:       var_158 = (Space(6) + var_148)
  loc_15EC9F6:       var_180 = (CVar(Proc_6_45_EADFB8(CStr(var_148), &HA, var_AE)) + Space(4))
  loc_15ECA00:       var_1D0 = (CVar(var_F4.Item("VDate")) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME")), var_F4), &HA)))
  loc_15ECA07:       var_1F0 = (var_1D0 + Space(6))
  loc_15ECA11:       var_230 = (var_1F0 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_15ECA18:       var_250 = (var_230 + Space(4))
  loc_15ECA22:       var_290 = (var_250 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_15ECA29:       var_2B0 = (var_290 + Space(6))
  loc_15ECA33:       var_310 = (var_2B0 + CVar(Proc_6_45_EADFB8(CStr(var_2E8), 7)))
  loc_15ECA39:       Print 1, var_310
  loc_15ECAA7:       Print 1, vbNullString
  loc_15ECAB2:       Print 1, vbNullString
  loc_15ECABA:       var_9A = 5
  loc_15ECABD:     End If
  loc_15ECABF:     var_B6 = 1
  loc_15ECAD6:     If (var_C0.RecordCount > 0) Then
  loc_15ECADC:       var_C0.MoveFirst
  loc_15ECAE1:       ' Referenced from: 15ED241
  loc_15ECAE1:     End If
  loc_15ECAF0:     If Not(var_C0.EOF) Then
  loc_15ECAF9:       If (var_9A = 0) Then
  loc_15ECB2A:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_15ECB61:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_15ECB9D:         Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_15ECBC0:         var_170 = (Space(8) + CVar(Proc_6_45_EADFB8(CStr(var_148), &HA)))
  loc_15ECBC6:         Print 1, Space(4)
  loc_15ECBE5:         Print 1
  loc_15ECD4E:         Proc_6_39_E7D3A0(var_2E8, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_15ECD72:         var_158 = (Space(6) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_15ECD79:         var_180 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12))), &HA)) + Space(4))
  loc_15ECD83:         var_1D0 = (CVar(var_BC.Fields.Item("VDate")) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_15ECD8A:         var_1F0 = (var_1D0 + Space(6))
  loc_15ECD94:         var_230 = (var_1F0 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_15ECD9B:         var_250 = (var_230 + Space(4))
  loc_15ECDA5:         var_290 = (var_250 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_15ECDAC:         var_2B0 = (var_290 + Space(6))
  loc_15ECDB3:         var_300 = CVar(Proc_6_45_EADFB8(CStr(var_2E8), 7)) 'String
  loc_15ECDB6:         var_310 = (var_2B0 + var_300)
  loc_15ECDBC:         Print 1, var_310
  loc_15ECE2A:         Print 1, vbNullString
  loc_15ECE35:         Print 1, vbNullString
  loc_15ECE3D:         var_9A = 5
  loc_15ECE40:       End If
  loc_15ECEDF:       Proc_6_39_E7D3A0(var_250, CVar(var_C0.Fields.Item("qty")))
  loc_15ECF2A:       Proc_6_39_E7D3A0(var_300, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_15ECF75:       Proc_6_39_E7D3A0(var_3E0, CVar(var_C0.Fields.Item("Amt")), 1)
  loc_15ECFC0:       var_148 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) + Space(4))
  loc_15ECFD6:       var_170 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("KOTNo").Value), 5, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_15ECFD9:       var_180 = (1 + var_170)
  loc_15ECFED:       var_1C0 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + Space(2))
  loc_15ED002:       var_1E0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("ICODE")), var_9A), 7, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_15ED005:       var_1F0 = (1 + var_1E0)
  loc_15ED01E:       var_230 = (var_1F0 + CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ItemName").Value), &H1E)))
  loc_15ED037:       var_2A0 = (var_230 + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0")), 4)))
  loc_15ED04B:       var_2D8 = (Space(6) + Space(3))
  loc_15ED064:       var_388 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAE084(CStr(Format(var_300, "0.00")), 7)))
  loc_15ED078:       var_3A8 = (var_388 + Space(1))
  loc_15ED091:       var_434 = (var_3A8 + CVar(Proc_6_52_EAE084(CStr(Format(var_3E0, "0.00")), &HB)))
  loc_15ED10F:       Print 1, CStr(var_434)
  loc_15ED11B:       var_9A = (var_9A + 1)
  loc_15ED128:       If (var_9A = (&H1A - var_AE)) Then
  loc_15ED13F:         If (var_C0.RecordCount = &HE) Then
  loc_15ED147:           Print 1, vbNullString
  loc_15ED153:           var_9A = (var_9A + 1)
  loc_15ED159:         Else
  loc_15ED15F:           var_9C = (var_9C + 1)
  loc_15ED167:           Print 1, vbNullString
  loc_15ED173:           var_9A = (var_9A + 1)
  loc_15ED18B:           var_128 = (Space(&H3E) + "Contd. Page ")
  loc_15ED1A6:           Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) & CVar(CStr(var_9C)) & "..."
  loc_15ED1BF:           var_9A = (var_9A + 1)
  loc_15ED1C2:           ' Referenced from:   15ED1DF
  loc_15ED1C8:           If (var_9A <> &H24) Then
  loc_15ED1D0:             Print 1, vbNullString
  loc_15ED1DC:             var_9A = (var_9A + 1)
  loc_15ED1DF:             GoTo loc_15ED1C2
  loc_15ED1E2:           End If
  loc_15ED1E4:           var_9A = 0
  loc_15ED1E7:         End If
  loc_15ED214:         Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A, var_9A, var_9A)
  loc_15ED21C:         var_148 = (var_9A + CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)))
  loc_15ED221:         var_CC = CSng(CVar(CStr(var_9C)))
  loc_15ED236:         var_B6 = (var_B6 + 1)
  loc_15ED23C:         var_C0.MoveNext
  loc_15ED241:         GoTo loc_15ECAE1
  loc_15ED244:       End If
  loc_15ED244:     End If
  loc_15ED24E:     If (var_9A < (&H1A - var_AE)) Then
  loc_15ED251:       ' Referenced from: 15ED275
  loc_15ED25E:       If (var_9A <> ((&H1A - var_AE) + 1)) Then
  loc_15ED266:         Print 1, vbNullString
  loc_15ED272:         var_9A = (var_9A + 1)
  loc_15ED275:         GoTo loc_15ED251
  loc_15ED278:       End If
  loc_15ED278:     End If
  loc_15ED27B:     var_C4.MoveFirst
  loc_15ED280:     ' Referenced from: 15ED638
  loc_15ED28F:     If Not(var_C4.EOF) Then
  loc_15ED2BC:       var_444 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_15ED2DA:       If (var_444 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_15ED2DD:         GoTo loc_15ED630
  loc_15ED2E0:       End If
  loc_15ED2F3:       If (var_444 = CVar(MemVar_1F95078 & "NET")) Then
  loc_15ED2FB:         Print 1, vbNullString
  loc_15ED327:         Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)), CVar(var_C4.Fields.Item("Amount")), var_9A, var_B6, var_CC)
  loc_15ED341:         If (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) > 0) Then
  loc_15ED377:           Proc_6_39_E7D3A0(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")), var_9C)
  loc_15ED3BA:           var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1, 1)))
  loc_15ED3C0:           Print 1, Space(2)
  loc_15ED3E1:         End If
  loc_15ED3E4:       Else
  loc_15ED3F7:         If (var_444 = CVar(MemVar_1F95078 & "SCH")) Then
  loc_15ED42D:           Proc_6_39_E7D3A0(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")), var_9A)
  loc_15ED470:           var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1)))
  loc_15ED476:           Print 1, Space(2)
  loc_15ED49A:         Else
  loc_15ED4AD:           If (var_444 = CVar(MemVar_1F95078 & "ST")) Then
  loc_15ED4DC:             var_128 = CVar(var_C4.Fields.Item("Amount")) 'Address
  loc_15ED4E3:             Proc_6_39_E7D3A0(CVar(CStr(var_9C)), var_128, 1)
  loc_15ED526:             var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1)))
  loc_15ED52C:             Print 1, Space(2)
  loc_15ED550:           Else
  loc_15ED576:             Proc_6_39_E7D3A0(var_128, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_15ED590:             If (var_128 > 0) Then
  loc_15ED5C6:               Proc_6_39_E7D3A0(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")))
  loc_15ED5DA:               var_158 = "0.00"
  loc_15ED609:               var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(var_9C)), var_158)), &H12, 1)))
  loc_15ED60F:               Print 1, Space(2)
  loc_15ED630:             End If
  loc_15ED630:           End If
  loc_15ED630:         End If
  loc_15ED630:         ' Referenced from: 15ED2DD
  loc_15ED630:       End If
  loc_15ED633:       var_C4.MoveNext
  loc_15ED638:       GoTo loc_15ED280
  loc_15ED63B:     End If
  loc_15ED63E:     var_BC.MoveNext
  loc_15ED643:     GoTo loc_15EC70C
  loc_15ED646:   End If
  loc_15ED64B:   Print 1, vbNullString
  loc_15ED656:   Print 1, vbNullString
  loc_15ED661:   Print 1, vbNullString
  loc_15ED66C:   Print 1, vbNullString
  loc_15ED677:   Print 1, vbNullString
  loc_15ED682:   Print 1, vbNullString
  loc_15ED68D:   Print 1, vbNullString
  loc_15ED698:   Print 1, vbNullString
  loc_15ED6A3:   Print 1, vbNullString
  loc_15ED6AE:   Print 1, vbNullString
  loc_15ED6B9:   Print 1, vbNullString
  loc_15ED6C1:   Close 1
  loc_15ED6CA:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_15ED700:   var_128 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_15ED706:   Print 1, var_128
  loc_15ED71C:   Close 1
  loc_15ED726:   If (MemVar_1F953BC = "Y") Then
  loc_15ED742:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_15ED74C:   Else
  loc_15ED765:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_15ED76C:   End If
  loc_15ED771:   Set var_BC = Nothing
  loc_15ED779:   Set var_C0 = Nothing
  loc_15ED781:   Set var_C4 = Nothing
  loc_15ED787: Else
  loc_15ED7A0:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_128, CVar(CStr(var_9C)), var_158)
  loc_15ED7B0: End If
  loc_15ED7B0: Exit Sub
  loc_15ED7B1: ' Referenced from: 15EC4C8
  loc_15ED7B1: Proc_6_60_E63754(1, var_9A)
  loc_15ED7B6: Exit Sub
End Sub

Public Sub Proc_162_82_16BC564
  'Data Table: 586158
  Dim Me As Recordset15
  Dim var_FC As String
  Dim unk_586184 As Connection15
  Dim var_110 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_E0 As Recordset15
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_188 As Variant
  Dim var_1E8 As Variant
  Dim var_270 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_218 As Variant
  Dim var_2BC As Variant
  Dim var_2E0 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2F0 As Variant
  Dim var_310 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_430 As Variant
  Dim var_10C As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_16BAC80: On Error Goto loc_16BC55B
  loc_16BAC8F: Me.Filter = "ModType='POS'"
  loc_16BACAB: If (Me.RecordCount > 0) Then
  loc_16BACB1:   MemVar_1F953C4 = "N"
  loc_16BACB8:   MemVar_1F953C8 = "N"
  loc_16BACBF:   MemVar_1F953CC = "K"
  loc_16BACEA:   unk_586184.Execute "Select * from Depart Where Code='" & global_60 & "'", var_10C, -1
  loc_16BACF5:   Set var_E0 = var_110
  loc_16BAD37:   var_134 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_16BAD45:   var_8C = CStr(var_134 & "'")
  loc_16BAD5F:   var_134 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_16BAD9D:   var_90 = CStr(var_134 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_16BADD1:   var_110 = Me.Fields
  loc_16BADE1:   var_10C = var_110.Item("SearchCode").Value
  loc_16BADF2:   var_164 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_10C & "' order by sno " 
  loc_16BADF7:   var_94 = CStr(var_164)
  loc_16BAE14:   If (var_8C = vbNullString) Then
  loc_16BAE17:     Exit Sub
  loc_16BAE18:   End If
  loc_16BAE20:   If (var_90 = vbNullString) Then
  loc_16BAE23:     Exit Sub
  loc_16BAE24:   End If
  loc_16BAE2C:   If (var_94 = vbNullString) Then
  loc_16BAE2F:     Exit Sub
  loc_16BAE30:   End If
  loc_16BAE46:   unk_586184.Execute var_8C, var_10C, -1
  loc_16BAE51:   Set var_BC = var_110
  loc_16BAE70:   unk_586184.Execute var_90, var_10C, -1
  loc_16BAE7B:   Set var_C0 = var_110
  loc_16BAE9A:   unk_586184.Execute var_94, var_10C, -1
  loc_16BAEA5:   Set var_C4 = var_110
  loc_16BAEB0:   Close 1
  loc_16BAEB9:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16BAEBD:   ' Referenced from: 16BC45E
  loc_16BAECC:   If Not(var_BC.EOF) Then
  loc_16BAED1:     var_9A = 0
  loc_16BAED6:     var_9C = 1
  loc_16BAEF0:     If ((global_212 = "Restaurant") Or (global_212 = "Hall")) Then
  loc_16BAF01:       var_98 = "** " & "BILL" & " **"
  loc_16BAF0A:     Else
  loc_16BAF2A:       var_98 = "** " & Me.LblRest.Caption & " **"
  loc_16BAF37:     End If
  loc_16BAF3D:     If (var_9A = 0) Then
  loc_16BAF64:       var_110 = var_E0.Fields
  loc_16BAF85:       var_FC = Proc_6_38_E69628("UPTT No: " & var_110.Item("LstNo").Value, var_9C, var_9A, var_110)
  loc_16BAFB2:       var_178 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H1E, var_110)))
  loc_16BAFB9:       var_198 = (var_178 + Chr(&H12))
  loc_16BAFBF:       Print 1, var_198
  loc_16BAFEC:       var_9A = (var_9A + 1)
  loc_16BB003:       Call Proc_162_105_10ACE60(var_98, "D", &H3C, var_FC)
  loc_16BB00D:       Print 1, var_FC
  loc_16BB01F:       Print 1, vbNullString
  loc_16BB02B:       var_9A = (var_9A + 1)
  loc_16BB05C:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_16BB093:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_16BB0AA:       Call Proc_162_106_128D454(var_9C, var_9A, &H3C, var_19E)
  loc_16BB0B2:       var_9A = var_19E
  loc_16BB0F9:       var_154 = (Chr(&H11) + Space(&H14))
  loc_16BB102:       var_164 = ("UPTT No: " & var_110.Item("LstNo").Value + "PHONE NO.")
  loc_16BB10C:       var_188 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_9A, var_9A), &H1E, var_110)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_9A, var_9A), &H1E, var_9A)))
  loc_16BB112:       Print 1, Chr(&H12)
  loc_16BB136:       var_9A = (var_9A + 1)
  loc_16BB13E:       Print 1, vbNullString
  loc_16BB14A:       var_9A = (var_9A + 1)
  loc_16BB152:       Print 1, vbNullString
  loc_16BB15E:       var_9A = (var_9A + 1)
  loc_16BB17D:       var_110 = var_BC.Fields
  loc_16BB194:       Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_9A, var_9A), &H1E, var_110)), CVar(var_110.Item("VNo")), var_9A, var_9A)
  loc_16BB1AB:       var_298 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_9A, var_9A), &H1E, var_110))), &HA, var_9A)
  loc_16BB24E:       var_134 = (Chr(&HF) + "Bill No.   : ")
  loc_16BB258:       var_188 = (Space(&H14) + CVar(var_298))
  loc_16BB25F:       var_1B0 = (Chr(&H12) + Space(4))
  loc_16BB268:       var_1C0 = (var_1B0 + "Dt : ")
  loc_16BB272:       var_208 = (var_1C0 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_110), &HF)))
  loc_16BB279:       var_228 = (var_208 + Space(4))
  loc_16BB282:       var_248 = (var_228 + "Time : ")
  loc_16BB28C:       var_294 = (var_248 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_16BB292:       Print 1, var_294
  loc_16BB2E1:       var_9A = (var_9A + 1)
  loc_16BB2EF:       If (global_212 = "Outlet") Then
  loc_16BB346:         var_134 = (Chr(&HF) + "Table No.  : ")
  loc_16BB350:         var_178 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo")), var_9A), 5)))
  loc_16BB356:         Print 1, CVar(var_298)
  loc_16BB37B:         var_9A = (var_9A + 1)
  loc_16BB37E:       End If
  loc_16BB389:       If (global_212 = "Room Service") Then
  loc_16BB3E0:         var_134 = (Chr(&HF) + "Room No.   : ")
  loc_16BB3EA:         var_178 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo")), var_9A), 5)))
  loc_16BB3F0:         Print 1, CVar(var_298)
  loc_16BB415:         var_9A = (var_9A + 1)
  loc_16BB418:       End If
  loc_16BB423:       If (global_212 = "Hall") Then
  loc_16BB47A:         var_134 = (Chr(&HF) + "Hall  No.  : ")
  loc_16BB484:         var_178 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo")), var_9A), 5)))
  loc_16BB48A:         Print 1, CVar(var_298)
  loc_16BB4AF:         var_9A = (var_9A + 1)
  loc_16BB4B2:       End If
  loc_16BB532:       If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_16BB589:         var_134 = (Chr(&HF) + "KOT No.    : ")
  loc_16BB593:         var_178 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("KOTNo")), var_9A), &H34)))
  loc_16BB599:         Print 1, (var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)
  loc_16BB5BE:         var_9A = (var_9A + 1)
  loc_16BB5C1:       End If
  loc_16BB5D7:       var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BB5DD:       Print 1, Space(&H14)
  loc_16BB5F0:       var_9A = (var_9A + 1)
  loc_16BB5F3:     End If
  loc_16BB619:     var_154 = (CVar(Proc_6_45_EADFB8("SNo", 3, var_9A)) + Space(1))
  loc_16BB625:     var_FC = "ITEM NAME"
  loc_16BB633:     var_178 = (var_9A + CVar(Proc_6_45_EADFB8(var_FC, &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_16BB647:     var_198 = ((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_16BB661:     var_1C0 = (Space(4) + CVar(Proc_6_52_EAE084("Tax, 6)) 'String)
  loc_16BB66D:     var_1E8 = Space(1)
  loc_16BB675:     var_1F8 = (var_1C0 + var_1E8)
  loc_16BB68F:     var_218 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_BC.Fields), &HF)) + CVar(Proc_6_52_EAE084("Rate", &HA)))
  loc_16BB6A3:     var_248 = (Space(4) + Space(1))
  loc_16BB6BD:     var_284 = (var_248 + CVar(Proc_6_52_EAE084("Qty", &HA)))
  loc_16BB6C9:     var_294 = Space(1)
  loc_16BB6D1:     var_2BC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), 8)) + var_294)
  loc_16BB6EB:     var_2E0 = (var_2BC + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_16BB6F0:     var_B4 = CStr(var_2E0)
  loc_16BB745:     var_134 = (Chr(&HF) + CVar(var_B4))
  loc_16BB74B:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, var_9A))
  loc_16BB76E:     var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BB774:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, var_9A))
  loc_16BB787:     var_9A = (var_9A + 1)
  loc_16BB78C:     var_B6 = 1
  loc_16BB792:     var_C0.MoveFirst
  loc_16BB797:     ' Referenced from: 16BBC46
  loc_16BB7A6:     If Not(var_C0.EOF) Then
  loc_16BB7F6:       Proc_6_39_E7D3A0(var_1E8, CVar(var_C0.Fields.Item("TaxPer")), var_B6)
  loc_16BB841:       Proc_6_39_E7D3A0(var_294, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_16BB88C:       Proc_6_39_E7D3A0(var_338, CVar(var_C0.Fields.Item("qty")), 1, 1)
  loc_16BB8D7:       Proc_6_39_E7D3A0(var_3E0, CVar(var_C0.Fields.Item("Amt")), 1, 1)
  loc_16BB922:       var_154 = (CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1)) + Space(1))
  loc_16BB93B:       var_188 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ItemName").Value), &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_16BB94F:       var_1B0 = (Space(1) + Space(1))
  loc_16BB968:       var_228 = (var_9A + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0.00")), 6, CVar(Proc_6_52_EAE084("Tax, 6)) 'String)) 'String)
  loc_16BB97C:       var_270 = (Space(1) + Space(1))
  loc_16BB995:       var_2F0 = (CVar(Proc_6_52_EAE084("Qty", &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(var_294, "0.00")), &HA)))
  loc_16BB9A9:       var_310 = (var_2F0 + Space(1))
  loc_16BB9C2:       var_388 = (var_310 + CVar(Proc_6_52_EAE084(CStr(Format(var_338, "0.00")), &HA)))
  loc_16BB9D6:       var_3A8 = (var_388 + Space(1))
  loc_16BB9EF:       var_430 = (var_3A8 + CVar(Proc_6_52_EAE084(CStr(Format(var_3E0, "0.00")), &HA)))
  loc_16BBA7A:       var_134 = (Chr(&HF) + CVar(CStr(var_430)))
  loc_16BBA80:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_16BBA97:       If (var_9A = (&H45 - var_AE)) Then
  loc_16BBAB0:         var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BBAB6:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_16BBAC9:         var_9A = (var_9A + 1)
  loc_16BBAD1:         Print 1, "Contd."
  loc_16BBADD:         var_9A = (var_9A + 1)
  loc_16BBAF2:         Print 1, Chr(&HC)
  loc_16BBB01:         var_9A = (var_9A + 1)
  loc_16BBB0A:         var_9C = (var_9C + 1)
  loc_16BBB20:         Call Proc_162_106_128D454(var_9C, 0, &H3C, var_19E, 0)
  loc_16BBB3F:         Call Proc_162_105_10ACE60(var_98, "B", &H3C, var_FC, var_19E)
  loc_16BBB49:         Print 1, var_FC
  loc_16BBB5C:         var_9A = (var_9A + 1)
  loc_16BBB75:         var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BBB7B:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_16BBB8E:         var_9A = (var_9A + 1)
  loc_16BBBA7:         var_134 = (Chr(&HF) + CVar(var_B4))
  loc_16BBBAD:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_16BBBD0:         var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BBBD6:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_16BBBE9:         var_9A = (var_9A + 1)
  loc_16BBBEC:       End If
  loc_16BBC19:       Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_19E, var_19E, var_19E)
  loc_16BBC21:       var_154 = (var_9C + CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1)))
  loc_16BBC26:       var_CC = CSng(CVar(var_BC.Fields.Item("KOTNo")))
  loc_16BBC3B:       var_B6 = (var_B6 + 1)
  loc_16BBC41:       var_C0.MoveNext
  loc_16BBC46:       GoTo loc_16BB797
  loc_16BBC49:     End If
  loc_16BBC69:     var_154 = (Chr(&HF) + Space(&H35))
  loc_16BBC73:     var_164 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_16BBC79:     Print 1, var_C0.Fields.Item("ItemName").Value
  loc_16BBC90:     var_9A = (var_9A + 1)
  loc_16BBC96:     var_C4.MoveFirst
  loc_16BBC9B:     ' Referenced from: 16BC1B8
  loc_16BBCAA:     If Not(var_C4.EOF) Then
  loc_16BBCD7:       var_440 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_16BBCF5:       If (var_440 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_16BBD81:         Proc_6_39_E7D3A0(var_1E8, CVar(var_C4.Fields.Item("Amount")), var_19E)
  loc_16BBDCE:         var_154 = (Chr(&HF) + Space(&H23))
  loc_16BBDD8:         var_188 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_19E, var_B6, var_CC)))
  loc_16BBDDF:         var_1B0 = (Space(1) + Space(4))
  loc_16BBDE9:         var_228 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0.00")), &HA, 1, 1)))
  loc_16BBDF0:         var_270 = (Space(1) + Chr(&H12))
  loc_16BBDF6:         Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_16BBE39:         var_9A = (var_9A + 1)
  loc_16BBE3F:       Else
  loc_16BBE52:         If (var_440 = CVar(MemVar_1F95078 & "NET")) Then
  loc_16BBE6A:           var_134 = Space(&H35)
  loc_16BBE75:           var_154 = (Chr(&HF) + var_134)
  loc_16BBE7F:           var_164 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_16BBE85:           Print 1, var_C4.Fields.Item("DispName").Value
  loc_16BBE9C:           var_9A = (var_9A + 1)
  loc_16BBEC5:           Proc_6_39_E7D3A0(var_134, CVar(var_C4.Fields.Item("Amount")), var_19E, var_19E)
  loc_16BBEDF:           If (var_134 > 0) Then
  loc_16BBEF7:             var_134 = Space(&H23)
  loc_16BBF6B:             Proc_6_39_E7D3A0(var_1E8, CVar(var_C4.Fields.Item("Amount")))
  loc_16BBFB8:             var_154 = (Chr(&HF) + var_134)
  loc_16BBFC2:             var_188 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_19E)))
  loc_16BBFC9:             var_1B0 = (Space(1) + Space(4))
  loc_16BBFD3:             var_228 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_16BBFDA:             var_270 = (Space(1) + Chr(&H12))
  loc_16BBFE0:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_16BC023:             var_9A = (var_9A + 1)
  loc_16BC026:           End If
  loc_16BC029:         Else
  loc_16BC04F:           Proc_6_39_E7D3A0(var_134, CVar(var_C4.Fields.Item("Amount")), var_19E)
  loc_16BC069:           If (var_134 > 0) Then
  loc_16BC0F5:             Proc_6_39_E7D3A0(var_1E8, CVar(var_C4.Fields.Item("Amount")))
  loc_16BC142:             var_154 = (Chr(&HF) + Space(&H23))
  loc_16BC14C:             var_188 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1)))
  loc_16BC153:             var_1B0 = (Space(1) + Space(4))
  loc_16BC15D:             var_228 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0.00")), &HA, 1)))
  loc_16BC164:             var_270 = (Space(1) + Chr(&H12))
  loc_16BC16A:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_16BC1AD:             var_9A = (var_9A + 1)
  loc_16BC1B0:           End If
  loc_16BC1B0:         End If
  loc_16BC1B0:       End If
  loc_16BC1B3:       var_C4.MoveNext
  loc_16BC1B8:       GoTo loc_16BBC9B
  loc_16BC1BB:     End If
  loc_16BC1D1:     var_134 = (Chr(&HF) + CVar(var_D0))
  loc_16BC1D7:     Print 1, Space(&H23)
  loc_16BC1EA:     var_9A = (var_9A + 1)
  loc_16BC229:     If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_16BC280:       var_134 = (Chr(&HF) + "Steward Name  : ")
  loc_16BC28A:       var_178 = (Space(&H23) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName")), var_19E, var_19E), &H14, 1)))
  loc_16BC290:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1))
  loc_16BC2B5:       var_9A = (var_9A + 1)
  loc_16BC2B8:     End If
  loc_16BC30C:     var_134 = (Chr(&HF) + "User Name     : ")
  loc_16BC316:     var_178 = (Space(&H23) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("U_Name")), var_19E), &HA)))
  loc_16BC31C:     Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, 1))
  loc_16BC341:     var_9A = (var_9A + 1)
  loc_16BC349:     Print 1, vbNullString
  loc_16BC355:     var_9A = (var_9A + 1)
  loc_16BC36D:     var_134 = (Chr(&HF) + "HAVE A NICE DAY ")
  loc_16BC373:     Print 1, Space(&H23)
  loc_16BC386:     var_9A = (var_9A + 1)
  loc_16BC3A9:     var_154 = (Chr(&HF) + Space(&H32))
  loc_16BC3B2:     var_164 = (CVar(var_BC.Fields.Item("U_Name")) + "Guest Signature")
  loc_16BC3B8:     Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("U_Name")), var_19E), &HA))
  loc_16BC3CF:     var_9A = (var_9A + 1)
  loc_16BC3D7:     Print 1, vbNullString
  loc_16BC3E3:     var_9A = (var_9A + 1)
  loc_16BC3FB:     var_134 = (Chr(&HF) + "# ")
  loc_16BC405:     var_154 = Space(&H32) & CVar(MemVar_1F95220) 
  loc_16BC40E:     var_164 = var_154 & " # " 
  loc_16BC414:     Print 1, var_164
  loc_16BC42B:     var_9A = (var_9A + 1)
  loc_16BC431:     var_BC.MoveNext
  loc_16BC43B:     Print 1, vbNullString
  loc_16BC447:     var_9A = (var_9A + 1)
  loc_16BC44F:     Print 1, vbNullString
  loc_16BC45B:     var_9A = (var_9A + 1)
  loc_16BC45E:     GoTo loc_16BAEBD
  loc_16BC461:   End If
  loc_16BC463:   Close 1
  loc_16BC46C:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16BC4A2:   var_134 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_16BC4A8:   Print 1, var_134
  loc_16BC4BE:   Close 1
  loc_16BC4C8:   If (MemVar_1F953BC = "Y") Then
  loc_16BC4E4:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16BC4EE:   Else
  loc_16BC507:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16BC50E:   End If
  loc_16BC513:   Set var_BC = Nothing
  loc_16BC51B:   Set var_C0 = Nothing
  loc_16BC523:   Set var_C4 = Nothing
  loc_16BC52B:   Set var_E0 = Nothing
  loc_16BC531: Else
  loc_16BC54A:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_134, var_154, var_164)
  loc_16BC55A: End If
  loc_16BC55A: Exit Sub
  loc_16BC55B: ' Referenced from: 16BAC80
  loc_16BC55B: Proc_6_60_E63754(var_19E, var_19E, var_19E, var_19E, var_19E)
  loc_16BC560: Exit Sub
End Sub

Public Sub Proc_162_83_18110C4
  'Data Table: 586158
  Dim Me As Recordset15
  Dim var_10C As String
  Dim unk_586184 As Connection15
  Dim var_134 As Variant
  Dim var_120 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_1CC As Fields15
  Dim var_1F0 As Variant
  Dim var_258 As Fields15
  Dim var_27C As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_1A8 As Variant
  Dim var_224 As Variant
  Dim var_2CC As Variant
  Dim var_2F0 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_440 As Variant
  Dim var_11C As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  Dim var_280 As String
  Dim var_C4 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_310 As Variant
  Dim var_EC As Recordset15
  loc_180EE3C: On Error Goto loc_18110BD
  loc_180EE4B: Me.Filter = "ModType='POS'"
  loc_180EE67: If (Me.RecordCount > 0) Then
  loc_180EE6D:   MemVar_1F953C4 = "N"
  loc_180EE74:   MemVar_1F953C8 = "N"
  loc_180EE7B:   MemVar_1F953CC = "K"
  loc_180EEA6:   unk_586184.Execute "Select * from Depart Where Code='" & global_60 & "'", var_11C, -1
  loc_180EEB1:   Set var_EC = var_120
  loc_180EEF3:   var_144 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_180EF01:   var_8C = CStr(var_144 & "'")
  loc_180EF1B:   var_144 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_180EF59:   var_90 = CStr(var_144 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_180EFA5:   var_164 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Me.Fields.Item("SearchCode").Value 
  loc_180EFB3:   var_94 = CStr(var_164 & "' order by sno")
  loc_180EFCF:   var_144 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And I.RestCode=S.ItemRestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_180EFE7:   var_120 = Me.Fields
  loc_180EFF7:   var_11C = var_120.Item("SearchCode").Value
  loc_180F008:   var_174 = var_144 & var_11C & "' ORDER BY I.Kitchen" 
  loc_180F00D:   var_98 = CStr(var_174)
  loc_180F02A:   If (var_8C = vbNullString) Then
  loc_180F02D:     Exit Sub
  loc_180F02E:   End If
  loc_180F036:   If (var_90 = vbNullString) Then
  loc_180F039:     Exit Sub
  loc_180F03A:   End If
  loc_180F042:   If (var_94 = vbNullString) Then
  loc_180F045:     Exit Sub
  loc_180F046:   End If
  loc_180F05C:   unk_586184.Execute var_8C, var_11C, -1
  loc_180F067:   Set var_C0 = var_120
  loc_180F086:   unk_586184.Execute var_90, var_11C, -1
  loc_180F091:   Set var_CC = var_120
  loc_180F0B0:   unk_586184.Execute var_94, var_11C, -1
  loc_180F0BB:   Set var_D0 = var_120
  loc_180F0DA:   unk_586184.Execute var_98, var_11C, -1
  loc_180F0E5:   Set var_C4 = var_120
  loc_180F0F0:   Close 1
  loc_180F0F9:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_180F0FD:   ' Referenced from: 1810FB0
  loc_180F10C:   If Not(var_C0.EOF) Then
  loc_180F13D:     var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_180F148:     var_9E = 0
  loc_180F14D:     var_A0 = 1
  loc_180F167:     If ((global_212 = "Restaurant") Or (global_212 = "Hall")) Then
  loc_180F178:       var_9C = "** " & "BILL" & " **"
  loc_180F181:     Else
  loc_180F196:       var_9C = Me.LblRest.Caption
  loc_180F19C:     End If
  loc_180F1A2:     If (var_9E = 0) Then
  loc_180F1D3:       var_DC = Replace(CStr(Space(&H32)), " ", "-", 1, -1, 0)
  loc_180F20A:       var_E0 = Replace(CStr(Space(9)), " ", "-", 1, -1, 0)
  loc_180F22F:       var_120 = var_C0.Fields
  loc_180F246:       Proc_6_39_E7D3A0(var_174, CVar(var_120.Item("VNo")), var_A0, var_9E, var_120)
  loc_180F300:       var_144 = (Chr(&HF) + "Bill No.  : ")
  loc_180F30A:       var_198 = (var_144 + CVar(Proc_6_45_EADFB8(CStr(var_174), 5, var_120)))
  loc_180F311:       var_1B8 = (var_198 + Space(2))
  loc_180F31A:       var_1C8 = (var_1B8 + "Dt : ")
  loc_180F324:       var_214 = (var_1C8 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_120), &HB)))
  loc_180F32B:       var_234 = (var_214 + Space(3))
  loc_180F334:       var_254 = (var_234 + "Time : ")
  loc_180F33E:       var_2A4 = (var_254 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME")), var_120), 5)))
  loc_180F344:       Print 1, var_2A4
  loc_180F393:       var_9E = (var_9E + 1)
  loc_180F3A1:       If (global_212 = "Outlet") Then
  loc_180F3F8:         var_144 = (Chr(&HF) + "Table No. : ")
  loc_180F402:         var_188 = (var_144 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5)))
  loc_180F408:         Print 1, CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5))), 5, var_C0.Fields))
  loc_180F42D:         var_9E = (var_9E + 1)
  loc_180F430:       End If
  loc_180F43B:       If (global_212 = "Room Service") Then
  loc_180F492:         var_144 = (Chr(&HF) + "Room No.  : ")
  loc_180F49C:         var_188 = (var_144 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5)))
  loc_180F4A2:         Print 1, CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5))), 5, var_C0.Fields))
  loc_180F4C7:         var_9E = (var_9E + 1)
  loc_180F4CA:       End If
  loc_180F4D5:       If (global_212 = "Hall") Then
  loc_180F52C:         var_144 = (Chr(&HF) + "Hall  No. : ")
  loc_180F536:         var_188 = (var_144 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5)))
  loc_180F53C:         Print 1, CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_9E), 5))), 5, var_C0.Fields))
  loc_180F561:         var_9E = (var_9E + 1)
  loc_180F564:       End If
  loc_180F5E4:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_180F63B:         var_144 = (Chr(&HF) + "KOT No.   : ")
  loc_180F645:         var_188 = (var_144 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_9E), &H34)))
  loc_180F64B:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_180F670:         var_9E = (var_9E + 1)
  loc_180F673:       End If
  loc_180F689:       var_144 = (Chr(&HF) + CVar(var_DC))
  loc_180F68F:       Print 1, var_144
  loc_180F6A2:       var_9E = (var_9E + 1)
  loc_180F6CB:       var_164 = (CVar(Proc_6_45_EADFB8("SNo", 3, var_9E)) + Space(1))
  loc_180F6D7:       var_10C = "Particulars"
  loc_180F6E5:       var_188 = (var_9E + CVar(Proc_6_45_EADFB8(var_10C, &H12, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_180F6F9:       var_1A8 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_180F713:       var_1C8 = (Space(2) + CVar(Proc_6_52_EAE084("T, 2)) 'String)
  loc_180F71F:       var_1F0 = Space(1)
  loc_180F727:       var_204 = (var_1C8 + var_1F0)
  loc_180F741:       var_224 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_C0.Fields), &HB)) + CVar(Proc_6_52_EAE084("Rate", 7)))
  loc_180F755:       var_254 = (Space(3) + Space(1))
  loc_180F76F:       var_294 = (var_254 + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_180F77B:       var_2A4 = Space(1)
  loc_180F783:       var_2CC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME")), var_C0.Fields), 5)) + var_2A4)
  loc_180F79D:       var_2F0 = (var_2CC + CVar(Proc_6_52_EAE084("Amount", 9)))
  loc_180F7A2:       var_B8 = CStr(var_2F0)
  loc_180F7F7:       var_144 = (Chr(&HF) + CVar(var_B8))
  loc_180F7FD:       Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, var_9E))
  loc_180F820:       var_144 = (Chr(&HF) + CVar(var_DC))
  loc_180F826:       Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, var_9E))
  loc_180F839:       var_9E = (var_9E + 1)
  loc_180F83E:       var_BA = 1
  loc_180F844:       var_CC.MoveFirst
  loc_180F849:       ' Referenced from: 180FCF8
  loc_180F858:       If Not(var_CC.EOF) Then
  loc_180F8A8:         Proc_6_39_E7D3A0(var_1F0, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_180F8DC:         var_258 = var_CC.Fields
  loc_180F8F3:         Proc_6_39_E7D3A0(var_2A4, CVar(var_258.Item("Rate")), 1)
  loc_180F93E:         Proc_6_39_E7D3A0(var_348, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_180F989:         Proc_6_39_E7D3A0(var_3F0, CVar(var_CC.Fields.Item("Amt")), 1, 1)
  loc_180F9D4:         var_164 = (CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1)) + Space(1))
  loc_180F9ED:         var_198 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H12, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_180FA01:         var_1B8 = (Space(1) + Space(2))
  loc_180FA1A:         var_234 = (var_9E + CVar(Proc_6_52_EAE084(CStr(Format(var_1F0, "0")), 1, CVar(Proc_6_52_EAE084("T, 2)) 'String)) 'String)
  loc_180FA2E:         var_27C = (Space(1) + Space(1))
  loc_180FA47:         var_300 = (CVar(Proc_6_52_EAE084("Qty", 6)) + CVar(Proc_6_52_EAE084(CStr(Format(var_2A4, "0.00")), 7)))
  loc_180FA5B:         var_320 = (var_300 + Space(1))
  loc_180FA74:         var_398 = (var_320 + CVar(Proc_6_52_EAE084(CStr(Format(var_348, "0.00")), 6)))
  loc_180FA88:         var_3B8 = (var_398 + Space(1))
  loc_180FAA1:         var_440 = (var_3B8 + CVar(Proc_6_52_EAE084(CStr(Format(var_3F0, "0.00")), 9)))
  loc_180FB2C:         var_144 = (Chr(&HF) + CVar(CStr(var_440)))
  loc_180FB32:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_180FB49:         If (var_9E = (&H45 - var_B2)) Then
  loc_180FB62:           var_144 = (Chr(&HF) + CVar(var_DC))
  loc_180FB68:           Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_180FB7B:           var_9E = (var_9E + 1)
  loc_180FB83:           Print 1, "Contd."
  loc_180FB8F:           var_9E = (var_9E + 1)
  loc_180FBA4:           Print 1, Chr(&HC)
  loc_180FBB3:           var_9E = (var_9E + 1)
  loc_180FBBC:           var_A0 = (var_A0 + 1)
  loc_180FBD2:           Call Proc_162_106_128D454(var_A0, 0, &H32, var_1F2, 0)
  loc_180FBF1:           Call Proc_162_105_10ACE60(var_9C, "B", &H32, var_10C, var_1F2)
  loc_180FBFB:           Print 1, var_10C
  loc_180FC0E:           var_9E = (var_9E + 1)
  loc_180FC27:           var_144 = (Chr(&HF) + CVar(var_DC))
  loc_180FC2D:           Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_180FC40:           var_9E = (var_9E + 1)
  loc_180FC59:           var_144 = (Chr(&HF) + CVar(var_B8))
  loc_180FC5F:           Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_180FC82:           var_144 = (Chr(&HF) + CVar(var_DC))
  loc_180FC88:           Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_180FC9B:           var_9E = (var_9E + 1)
  loc_180FC9E:         End If
  loc_180FCCB:         Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), var_1F2, var_1F2, var_1F2)
  loc_180FCD3:         var_164 = (var_A0 + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1)))
  loc_180FCD8:         var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_180FCED:         var_BA = (var_BA + 1)
  loc_180FCF3:         var_CC.MoveNext
  loc_180FCF8:         GoTo loc_180F849
  loc_180FCFB:       End If
  loc_180FD1B:       var_164 = (Chr(&HF) + Space(&H29))
  loc_180FD25:       var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_180FD2B:       Print 1, var_CC.Fields.Item("ItemName").Value
  loc_180FD42:       var_9E = (var_9E + 1)
  loc_180FD48:       var_D0.MoveFirst
  loc_180FD4D:       ' Referenced from: 181026A
  loc_180FD5C:       If Not(var_D0.EOF) Then
  loc_180FD89:         var_450 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_180FDA7:         If (var_450 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_180FE33:           Proc_6_39_E7D3A0(var_1F0, CVar(var_D0.Fields.Item("Amount")), var_1F2)
  loc_180FE80:           var_164 = (Chr(&HF) + Space(&H1C))
  loc_180FE8A:           var_198 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, var_1F2, var_BA, var_D8)))
  loc_180FE91:           var_1B8 = (Space(1) + Space(1))
  loc_180FE9B:           var_234 = (CVar(Proc_6_52_EAE084("T, 2)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1F0, "0.00")), 9, 1, 1)))
  loc_180FEA2:           var_27C = (Space(1) + Chr(&H12))
  loc_180FEA8:           Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_180FEEB:           var_9E = (var_9E + 1)
  loc_180FEF1:         Else
  loc_180FF04:           If (var_450 = CVar(MemVar_1F95078 & "NET")) Then
  loc_180FF1C:             var_144 = Space(&H29)
  loc_180FF27:             var_164 = (Chr(&HF) + var_144)
  loc_180FF31:             var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_180FF37:             Print 1, var_D0.Fields.Item("DispName").Value
  loc_180FF4E:             var_9E = (var_9E + 1)
  loc_180FF77:             Proc_6_39_E7D3A0(var_144, CVar(var_D0.Fields.Item("Amount")), var_1F2, var_1F2)
  loc_180FF91:             If (var_144 > 0) Then
  loc_180FFA9:               var_144 = Space(&H1C)
  loc_181001D:               Proc_6_39_E7D3A0(var_1F0, CVar(var_D0.Fields.Item("Amount")))
  loc_181006A:               var_164 = (Chr(&HF) + var_144)
  loc_1810074:               var_198 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, var_1F2)))
  loc_181007B:               var_1B8 = (Space(1) + Space(1))
  loc_1810085:               var_234 = (CVar(Proc_6_52_EAE084("T, 2)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1F0, "0.00")), 9, 1)))
  loc_181008C:               var_27C = (Space(1) + Chr(&H12))
  loc_1810092:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_18100D5:               var_9E = (var_9E + 1)
  loc_18100D8:             End If
  loc_18100DB:           Else
  loc_1810101:             Proc_6_39_E7D3A0(var_144, CVar(var_D0.Fields.Item("Amount")), var_1F2)
  loc_181011B:             If (var_144 > 0) Then
  loc_1810190:               var_1CC = var_D0.Fields
  loc_18101A7:               Proc_6_39_E7D3A0(var_1F0, CVar(var_1CC.Item("Amount")))
  loc_18101F4:               var_164 = (Chr(&HF) + Space(&H1C))
  loc_18101FE:               var_198 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1)))
  loc_1810205:               var_1B8 = (Space(1) + Space(1))
  loc_181020F:               var_234 = (CVar(Proc_6_52_EAE084("T, 2)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1F0, "0.00")), 9, 1)))
  loc_1810216:               var_27C = (Space(1) + Chr(&H12))
  loc_181021C:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_181025F:               var_9E = (var_9E + 1)
  loc_1810262:             End If
  loc_1810262:           End If
  loc_1810262:         End If
  loc_1810265:         var_D0.MoveNext
  loc_181026A:         GoTo loc_180FD4D
  loc_181026D:       End If
  loc_1810283:       var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1810289:       Print 1, Space(&H1C)
  loc_181029C:       var_9E = (var_9E + 1)
  loc_18102DB:       If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_1810332:         var_144 = (Chr(&HF) + "Steward Name  : ")
  loc_181033C:         var_188 = (Space(&H1C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("WaiterName")), var_1F2, var_1F2), &H14, 1)))
  loc_1810342:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1))
  loc_1810367:         var_9E = (var_9E + 1)
  loc_181036A:       End If
  loc_1810372:       var_11C = Chr(&HF)
  loc_1810386:       var_120 = var_C0.Fields
  loc_18103BE:       var_144 = (var_11C + "User Name     : ")
  loc_18103C8:       var_188 = (Space(&H1C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("U_Name")), var_1F2), &HA)))
  loc_18103CE:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HC, 1))
  loc_18103F3:       var_9E = (var_9E + 1)
  loc_18103FB:       Print 1, vbNullString
  loc_1810407:       var_9E = (var_9E + 1)
  loc_1810431:       unk_586184.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_181043C:       Set var_F0 = var_120
  loc_1810460:       If (var_F0.RecordCount > 0) Then
  loc_18104A3:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_18104AE:           var_11C = Chr(&HF)
  loc_18104C2:           var_120 = var_F0.Fields
  loc_18104E4:           var_174 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_18104EA:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("U_Name")), var_1F2), &HA))
  loc_1810504:           var_9E = (var_9E + 1)
  loc_1810507:         End If
  loc_1810507:       End If
  loc_181052E:       unk_586184.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_1810539:       Set var_F0 = var_120
  loc_181055D:       If (var_F0.RecordCount > 0) Then
  loc_18105A0:         If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_18105C7:           var_124 = var_F0.Fields.Item("Slogan2")
  loc_18105E1:           var_174 = (Chr(&HF) + Trim(CVar(var_124)))
  loc_18105E7:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_F0.Fields.Item("U_Name")), var_1F2), &HA))
  loc_1810601:           var_9E = (var_9E + 1)
  loc_1810604:         End If
  loc_1810604:       End If
  loc_1810609:       Set var_F0 = Nothing
  loc_1810611:       Print 1, vbNullString
  loc_181061D:       var_9E = (var_9E + 1)
  loc_1810628:       var_11C = Chr(&HF)
  loc_1810635:       var_144 = (var_11C + "# ")
  loc_181064E:       Print 1, CVar(var_124) & CVar(MemVar_1F95220) & " # "
  loc_1810665:       var_9E = (var_9E + 1)
  loc_181066B:       var_134 = 0
  loc_181069B:       unk_586184.Execute "SELECT TOKENPrint FROM Depart where Code ='" & global_60 & "'", var_11C, -1
  loc_18106A3:       var_120 = var_120.Fields
  loc_18106AB:       var_134 = var_124.Item(var_124)
  loc_18106BC:       var_280 = Proc_6_38_E69628(CVar(var_1CC), var_1CC, var_1F2, var_1F2, var_1F2)
  loc_18106DB:       If (var_280 = "Yes") Then
  loc_18106F2:         If (var_C4.RecordCount > 0) Then
  loc_18106FA:           Print 1, vbNullString
  loc_181073B:           var_10C = Replace(CStr(Space(&H32)), " ", "=", 1, -1, 0)
  loc_1810747:           var_174 = (Chr(&HF) + CVar("SELECT TOKENPrint FROM Depart where Code ='" & global_60 & "'"))
  loc_181074D:           Print 1, CVar(var_124) & CVar(MemVar_1F95220) & " # "
  loc_181076A:           Print 1, vbNullString
  loc_1810776:           var_9E = (var_9E + 1)
  loc_1810779:           ' Referenced from: 1810D8E
  loc_1810788:           If Not(var_C4.EOF) Then
  loc_181078D:             var_BA = 1
  loc_18107A4:             var_144 = CVar("Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_18107DD:             var_174 = var_144 & Me.Fields.Item("SearchCode").Value & "' AND I.Kitchen='" 
  loc_1810822:             unk_586184.Execute CStr(var_174 & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)"), CVar(Proc_6_52_EAE084("T, 2)) 'String, -1
  loc_181082D:             Set var_C8 = var_258
  loc_1810867:             If (var_C8.RecordCount > 0) Then
  loc_18108AA:               Call Proc_162_105_10ACE60(CStr(var_C4.Fields.Item("Department").Value), "D", &H2D, var_280, var_258, var_BA)
  loc_18108B4:               Print 1, var_280
  loc_18108E9:               var_120 = var_C0.Fields
  loc_1810900:               Proc_6_39_E7D3A0(var_174, CVar(var_120.Item("VNo")), var_1F2, var_120)
  loc_18109BA:               var_144 = (Chr(&HF) + "Bill No.  : ")
  loc_18109C4:               var_198 = (var_144 + CVar(Proc_6_45_EADFB8(CStr(var_174), 5, var_1F2)))
  loc_18109CB:               var_1B8 = (var_174 & var_C4.Fields.Item("Kitchen").Value + Space(2))
  loc_18109D4:               var_1C8 = (CVar(Proc_6_52_EAE084("T, 2)) 'String + "Dt : ")
  loc_18109DE:               var_214 = (CVar(var_C0.Fields.Item("Amount")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_120), &HB)))
  loc_18109E5:               var_234 = (Format(CVar(var_C0.Fields.Item("VDate")), "0.00") + Space(3))
  loc_18109EE:               var_254 = (Space(1) + "Time : ")
  loc_18109F8:               var_2A4 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME")), var_1F2), 5)))
  loc_18109FE:               Print 1, var_2A4
  loc_1810A4D:               var_9E = (var_9E + 1)
  loc_1810AC1:               var_214 = Space(1)
  loc_1810B2B:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("SNo", 3)))
  loc_1810B32:               var_188 = (CVar(var_120.Item("VNo")) + Space(1))
  loc_1810B3C:               var_1A8 = (CVar(Proc_6_45_EADFB8(CStr(Space(1)), 5, var_1F2)) + CVar(Proc_6_45_EADFB8("Particulars", &HF)))
  loc_1810B43:               var_1C8 = (Space(2) + Space(1))
  loc_1810B4D:               var_204 = (CVar(var_C0.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084("Tax, 5)) 'String)
  loc_1810B54:               var_224 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_120), &HB)) + var_214)
  loc_1810B5E:               var_254 = (Space(3) + CVar(Proc_6_52_EAE084("Rate", 7)))
  loc_1810B65:               var_294 = (Chr(&H12) + Space(1))
  loc_1810B6F:               var_2CC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME")), var_1F2), 5)) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1810B76:               var_2F0 = ("0.00" + Space(1))
  loc_1810B80:               var_310 = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Qty", 6)), "0.00")), 7)) + CVar(Proc_6_52_EAE084("Amount", 9)))
  loc_1810B86:               Print 1, Space(1)
  loc_1810BEE:               var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1810BF4:               Print 1, CVar(Proc_6_45_EADFB8("SNo", 3))
  loc_1810C01:               ' Referenced from: 1810D78
  loc_1810C10:               If Not(var_C8.EOF) Then
  loc_1810CB2:                 Proc_6_39_E7D3A0(var_214, CVar(var_C8.Fields.Item("qty")))
  loc_1810CF5:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3)))
  loc_1810CFC:                 var_188 = (CVar(var_C8.Fields.Item("VNo")) + Space(1))
  loc_1810D06:                 var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(Space(1)), 5, var_1F2)) + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H1E)))
  loc_1810D0D:                 var_1F0 = (Space(1) + Space(1))
  loc_1810D17:                 var_27C = (CVar(Proc_6_52_EAE084("Tax, 5)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_214, "0.00")), &HD, 1)))
  loc_1810D1D:                 Print 1, Space(1)
  loc_1810D61:                 var_C8.MoveNext
  loc_1810D6C:                 var_9E = (var_9E + 1)
  loc_1810D75:                 var_BA = (var_BA + 1)
  loc_1810D78:                 GoTo loc_1810C01
  loc_1810D7B:               End If
  loc_1810D7B:             End If
  loc_1810D7E:             var_C4.MoveNext
  loc_1810D88:             Print 1, vbNullString
  loc_1810D8E:             GoTo loc_1810779
  loc_1810D91:           End If
  loc_1810D91:         End If
  loc_1810D91:       End If
  loc_1810D91:     End If
  loc_1810D96:     Print 1, vbNullString
  loc_1810DA2:     var_9E = (var_9E + 1)
  loc_1810DAA:     Print 1, vbNullString
  loc_1810DB6:     var_9E = (var_9E + 1)
  loc_1810DBE:     Print 1, vbNullString
  loc_1810DCA:     var_9E = (var_9E + 1)
  loc_1810DD2:     Print 1, vbNullString
  loc_1810DDE:     var_9E = (var_9E + 1)
  loc_1810DE6:     Print 1, vbNullString
  loc_1810DF2:     var_9E = (var_9E + 1)
  loc_1810DFA:     Print 1, vbNullString
  loc_1810E06:     var_9E = (var_9E + 1)
  loc_1810E0E:     Print 1, vbNullString
  loc_1810E1A:     var_9E = (var_9E + 1)
  loc_1810E62:     var_10C = Proc_6_38_E69628("UPTT No: " & var_EC.Fields.Item("LstNo").Value, var_1F2, var_1F2, var_1F2, var_1F2, var_1F2)
  loc_1810E8F:     var_188 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_10C, &H1E, var_1F2, var_1F2)))
  loc_1810E96:     var_1A8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(var_10C, &H1E, var_1F2, var_1F2))), 5, var_1F2)) + Chr(&H12))
  loc_1810E9C:     Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H1E))
  loc_1810EC9:     var_9E = (var_9E + 1)
  loc_1810EE0:     Call Proc_162_105_10ACE60(var_9C, "D", &H2D, var_10C)
  loc_1810EEA:     Print 1, var_10C
  loc_1810F05:     Call Proc_162_106_128D454(var_A0, var_1F2, &H32, var_1F2)
  loc_1810F54:     var_164 = (Chr(&H11) + Space(&HE))
  loc_1810F5D:     var_174 = ("UPTT No: " & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_1810F67:     var_198 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_1F2, var_1F2), &H1E, var_1F2, var_1F2)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_1F2, var_1F2), &H1E, var_BA)))
  loc_1810F6D:     Print 1, Chr(&H12)
  loc_1810F91:     var_9E = (var_9E + 1)
  loc_1810F97:     var_C0.MoveNext
  loc_1810FA1:     Print 1, vbNullString
  loc_1810FAD:     var_9E = (var_9E + 1)
  loc_1810FB0:     GoTo loc_180F0FD
  loc_1810FB3:   End If
  loc_1810FB5:   Close 1
  loc_1810FBE:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1810FF4:   var_144 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_1810FFA:   Print 1, var_144
  loc_1811010:   Close 1
  loc_181101A:   If (MemVar_1F953BC = "Y") Then
  loc_1811036:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1811040:   Else
  loc_1811059:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1811060:   End If
  loc_1811065:   Set var_C0 = Nothing
  loc_181106D:   Set var_CC = Nothing
  loc_1811075:   Set var_D0 = Nothing
  loc_181107D:   Set var_EC = Nothing
  loc_1811085:   Set var_C4 = Nothing
  loc_181108D:   Set var_C8 = Nothing
  loc_1811093: Else
  loc_18110AC:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_144, "UPTT No: " & var_EC.Fields.Item("LstNo").Value, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_1F2, var_1F2), &H1E, var_1F2, var_1F2)))
  loc_18110BC: End If
  loc_18110BC: Exit Sub
  loc_18110BD: ' Referenced from: 180EE3C
  loc_18110BD: Proc_6_60_E63754(var_1F2, var_1F2)
  loc_18110C2: Exit Sub
End Sub

Public Sub Proc_162_84_15E86C4
  'Data Table: 586158
  Dim Me As Recordset15
  Dim var_10C As String
  Dim unk_586184 As Connection15
  Dim var_120 As Fields15
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_C0 As Recordset15
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_208 As Variant
  Dim var_288 As Variant
  Dim var_198 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_220 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Variant
  Dim var_360 As Variant
  Dim var_BA As Integer
  Dim var_CC As Recordset15
  Dim var_188 As Variant
  Dim var_3B4 As Variant
  Dim var_11C As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  loc_15E73FC: On Error Goto loc_15E86BD
  loc_15E740B: Me.Filter = "ModType='POS'"
  loc_15E7427: If (Me.RecordCount > 0) Then
  loc_15E742D:   MemVar_1F953C4 = "N"
  loc_15E7434:   MemVar_1F953C8 = "N"
  loc_15E743B:   MemVar_1F953CC = "K"
  loc_15E745D:   var_10C = "Select * from Depart Where Code='" & global_60 & "'"
  loc_15E7466:   unk_586184.Execute var_10C, var_11C, -1
  loc_15E7471:   Set var_EC = var_120
  loc_15E74B3:   var_144 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_15E74C1:   var_8C = CStr(var_144 & "'")
  loc_15E74DB:   var_144 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_15E7519:   var_90 = CStr(var_144 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_15E7565:   var_164 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Me.Fields.Item("SearchCode").Value 
  loc_15E7573:   var_94 = CStr(var_164 & "' order by sno")
  loc_15E758F:   var_144 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And I.RestCode=S.ItemRestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_15E75A7:   var_120 = Me.Fields
  loc_15E75B7:   var_11C = var_120.Item("SearchCode").Value
  loc_15E75CD:   var_98 = CStr(var_144 & var_11C & "' ORDER BY I.Kitchen")
  loc_15E75EA:   If (var_8C = vbNullString) Then
  loc_15E75ED:     Exit Sub
  loc_15E75EE:   End If
  loc_15E75F6:   If (var_90 = vbNullString) Then
  loc_15E75F9:     Exit Sub
  loc_15E75FA:   End If
  loc_15E7602:   If (var_94 = vbNullString) Then
  loc_15E7605:     Exit Sub
  loc_15E7606:   End If
  loc_15E761C:   unk_586184.Execute var_8C, var_11C, -1
  loc_15E7627:   Set var_C0 = var_120
  loc_15E7646:   unk_586184.Execute var_90, var_11C, -1
  loc_15E7651:   Set var_CC = var_120
  loc_15E7670:   unk_586184.Execute var_94, var_11C, -1
  loc_15E767B:   Set var_D0 = var_120
  loc_15E769A:   unk_586184.Execute var_98, var_11C, -1
  loc_15E76A5:   Set var_C4 = var_120
  loc_15E76B0:   Close 1
  loc_15E76B9:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_15E76BD:   ' Referenced from: 15E85B0
  loc_15E76CC:   If Not(var_C0.EOF) Then
  loc_15E76D1:     var_9E = 0
  loc_15E76DF:     If (var_9E = 0) Then
  loc_15E76E7:       Print 1, vbNullString
  loc_15E76F2:       Print 1, vbNullString
  loc_15E76FD:       Print 1, vbNullString
  loc_15E7708:       Print 1, vbNullString
  loc_15E7713:       Print 1, vbNullString
  loc_15E771E:       Print 1, vbNullString
  loc_15E7752:       var_DC = Replace(CStr(Space(&H37)), " ", "-", 1, -1, 0)
  loc_15E7789:       var_E0 = Replace(CStr(Space(&HA)), " ", "-", 1, -1, 0)
  loc_15E77A0:       Call Proc_162_106_128D454(1, var_9E, &H3C, var_178, 1, var_9E)
  loc_15E77A8:       var_9E = var_178
  loc_15E77B0:       Print 1, vbNullString
  loc_15E77BC:       var_9E = (var_9E + 1)
  loc_15E77C4:       Print 1, vbNullString
  loc_15E77D0:       var_9E = (var_9E + 1)
  loc_15E77EF:       var_120 = var_C0.Fields
  loc_15E7873:       var_1E0 = Space(2)
  loc_15E7907:       var_288 = CVar(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")))) 'String
  loc_15E795A:       Proc_6_39_E7D3A0(var_338, CVar(var_C0.Fields.Item("VNo")))
  loc_15E797A:       var_164 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("WaiterName")), var_9E, var_9E, var_9E, var_120), &HF, var_120)) 'String
  loc_15E797D:       var_174 = (Space(1) + var_164)
  loc_15E7984:       var_198 = (CVar(var_120.Item("WaiterName")) & Space(1) & "' ORDER BY I.Kitchen" + Space(2))
  loc_15E798E:       var_1D0 = (var_198 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_120), &HA)))
  loc_15E7995:       var_1F0 = (var_1D0 + var_1E0)
  loc_15E799F:       var_230 = (var_1F0 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME")), var_120), 5)))
  loc_15E79A6:       var_250 = (var_230 + Space(2))
  loc_15E79B0:       var_2E0 = (var_250 + CVar(Proc_6_45_EADFB8(CStr(Format(var_288, "dd/MM/yy")), &HB, 1)))
  loc_15E79B7:       var_300 = (var_2E0 + Space(2))
  loc_15E79C1:       var_360 = (var_300 + CVar(Proc_6_45_EADFB8(CStr(var_338), &HA)))
  loc_15E79C7:       Print 1, var_360
  loc_15E7A3A:       var_9E = (var_9E + 1)
  loc_15E7A42:       Print 1, vbNullString
  loc_15E7A4D:       Print 1, vbNullString
  loc_15E7A58:       Print 1, vbNullString
  loc_15E7A5E:     End If
  loc_15E7A60:     var_BA = 1
  loc_15E7A66:     var_CC.MoveFirst
  loc_15E7A6B:     ' Referenced from: 15E7E01
  loc_15E7A7A:     If Not(var_CC.EOF) Then
  loc_15E7ACA:       Proc_6_39_E7D3A0(var_1E0, CVar(var_CC.Fields.Item("qty")), var_BA)
  loc_15E7B15:       Proc_6_39_E7D3A0(var_288, CVar(var_CC.Fields.Item("Rate")), 1, 1)
  loc_15E7B60:       Proc_6_39_E7D3A0(var_338, CVar(var_CC.Fields.Item("Amt")), 1, 1)
  loc_15E7B9F:       var_144 = CVar(Proc_6_45_EADFB8(CStr(var_BA) & ".", 3, 1, 1)) 'String
  loc_15E7BB2:       var_164 = (var_144 + Space(1))
  loc_15E7BCB:       var_198 = (var_9E + CVar(Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H14, var_164)))
  loc_15E7BDF:       var_1C0 = (var_198 + Space(1))
  loc_15E7BF5:       var_220 = CVar(Proc_6_52_EAE084(CStr(Format(var_1E0, "0.00")), 9, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_CC.Fields), &HA)))) 'String
  loc_15E7BF8:       var_230 = (1 + var_220)
  loc_15E7C0C:       var_250 = (var_230 + Space(1))
  loc_15E7C25:       var_2E0 = (var_250 + CVar(Proc_6_52_EAE084(CStr(Format(var_288, "0.00")), 9)))
  loc_15E7C39:       var_300 = (var_2E0 + Space(1))
  loc_15E7C52:       var_3B4 = (var_300 + CVar(Proc_6_52_EAE084(CStr(Format(var_338, "0.00")), &HA)))
  loc_15E7CBA:       Print 1, CStr(var_3B4)
  loc_15E7CCA:       If (var_9E = (&H45 - var_B2)) Then
  loc_15E7CD2:         Print 1, var_DC
  loc_15E7CDE:         var_9E = (var_9E + 1)
  loc_15E7CE6:         Print 1, "Contd."
  loc_15E7CF2:         var_9E = (var_9E + 1)
  loc_15E7D07:         Print 1, Chr(&HC)
  loc_15E7D16:         var_9E = (var_9E + 1)
  loc_15E7D1F:         var_A0 = (var_A0 + 1)
  loc_15E7D35:         Call Proc_162_106_128D454(1, 0, &H3C, var_178, 0)
  loc_15E7D54:         Call Proc_162_105_10ACE60(var_9C, "B", &H3C, var_10C, var_178)
  loc_15E7D5E:         Print 1, var_10C
  loc_15E7D71:         var_9E = (var_9E + 1)
  loc_15E7D79:         Print 1, var_DC
  loc_15E7D85:         var_9E = (var_9E + 1)
  loc_15E7D8D:         Print 1, var_B8
  loc_15E7D98:         Print 1, var_DC
  loc_15E7DA4:         var_9E = (var_9E + 1)
  loc_15E7DA7:       End If
  loc_15E7DD4:       Proc_6_39_E7D3A0(var_144, CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), var_178, var_178, var_178)
  loc_15E7DDC:       var_164 = (1 + var_144)
  loc_15E7DE1:       var_D8 = CSng(var_164)
  loc_15E7DF6:       var_BA = (var_BA + 1)
  loc_15E7DFC:       var_CC.MoveNext
  loc_15E7E01:       GoTo loc_15E7A6B
  loc_15E7E04:     End If
  loc_15E7E1A:     var_144 = (Space(&H2D) + CVar(var_E0))
  loc_15E7E20:     Print 1, var_144
  loc_15E7E33:     var_9E = (var_9E + 1)
  loc_15E7E39:     var_D0.MoveFirst
  loc_15E7E3E:     ' Referenced from: 15E82B3
  loc_15E7E4D:     If Not(var_D0.EOF) Then
  loc_15E7E7A:       var_3C4 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_15E7E98:       If (var_3C4 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_15E7F17:         Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), CVar(var_D0.Fields.Item("Amount")), var_178)
  loc_15E7F4E:         var_2BC = Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00")), &HA, 1, 1)
  loc_15E7F5A:         var_174 = (Space(&H1E) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HE, var_178, var_BA, var_D8)))
  loc_15E7F61:         var_198 = (var_CC.Fields.Item("ItemName").Value + Space(1))
  loc_15E7F6B:         var_208 = (var_198 + CVar(var_2BC))
  loc_15E7F71:         Print 1, Format(Format(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00"), "0.00")
  loc_15E7FAC:         var_9E = (var_9E + 1)
  loc_15E7FB2:       Else
  loc_15E7FC5:         If (var_3C4 = CVar(MemVar_1F95078 & "NET")) Then
  loc_15E7FDE:           var_144 = (Space(&H2D) + CVar(var_E0))
  loc_15E7FE4:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_15E7FF7:           var_9E = (var_9E + 1)
  loc_15E8020:           Proc_6_39_E7D3A0(var_D0.Fields.Item("DispName").Value, CVar(var_D0.Fields.Item("Amount")), var_178, var_178)
  loc_15E803A:           If (var_D0.Fields.Item("DispName").Value > 0) Then
  loc_15E806C:             var_144 = var_D0.Fields.Item("DispName").Value
  loc_15E80B9:             Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), CVar(var_D0.Fields.Item("Amount")))
  loc_15E80F0:             var_2BC = Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00")), &HA, 1)
  loc_15E80FC:             var_174 = (Space(&H1E) + CVar(Proc_6_45_EADFB8(CStr(var_144), &HE, var_178)))
  loc_15E8103:             var_198 = (var_CC.Fields.Item("ItemName").Value + Space(1))
  loc_15E810D:             var_208 = (var_198 + CVar(var_2BC))
  loc_15E8113:             Print 1, Format(Format(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00"), "0.00")
  loc_15E814E:             var_9E = (var_9E + 1)
  loc_15E8151:           End If
  loc_15E8154:         Else
  loc_15E817A:           Proc_6_39_E7D3A0(var_144, CVar(var_D0.Fields.Item("Amount")), var_178)
  loc_15E8194:           If (var_144 > 0) Then
  loc_15E8213:             Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), CVar(var_D0.Fields.Item("Amount")))
  loc_15E824A:             var_2BC = Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00")), &HA, 1)
  loc_15E8256:             var_174 = (Space(&H1E) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HE, 1)))
  loc_15E825D:             var_198 = (var_CC.Fields.Item("ItemName").Value + Space(1))
  loc_15E8267:             var_208 = (var_198 + CVar(var_2BC))
  loc_15E826D:             Print 1, Format(Format(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_D0.Fields), &HA)), "0.00"), "0.00")
  loc_15E82A8:             var_9E = (var_9E + 1)
  loc_15E82AB:           End If
  loc_15E82AB:         End If
  loc_15E82AB:       End If
  loc_15E82AE:       var_D0.MoveNext
  loc_15E82B3:       GoTo loc_15E7E3E
  loc_15E82B6:     End If
  loc_15E82BB:     Print 1, var_DC
  loc_15E82C7:     var_9E = (var_9E + 1)
  loc_15E82D9:     var_120 = var_C0.Fields
  loc_15E82E9:     var_11C = CVar(var_120.Item("U_Name")) 'Address
  loc_15E8318:     Print 1, "User Name     : " & Proc_6_45_EADFB8(Proc_6_38_E69628(var_11C, var_178, var_178), &HA, 1)
  loc_15E8337:     var_9E = (var_9E + 1)
  loc_15E833F:     Print 1, vbNullString
  loc_15E834B:     var_9E = (var_9E + 1)
  loc_15E8375:     unk_586184.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_15E8380:     Set var_F0 = var_120
  loc_15E83A4:     If (var_F0.RecordCount > 0) Then
  loc_15E83E7:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_15E83F9:         var_120 = var_F0.Fields
  loc_15E8409:         var_11C = CVar(var_120.Item("Slogan1")) 'Address
  loc_15E841A:         Print 1, Trim(var_11C)
  loc_15E8430:         var_9E = (var_9E + 1)
  loc_15E8433:       End If
  loc_15E8433:     End If
  loc_15E845A:     unk_586184.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_15E8465:     Set var_F0 = var_120
  loc_15E8489:     If (var_F0.RecordCount > 0) Then
  loc_15E84CC:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_15E84FF:         Print 1, Trim(CVar(var_F0.Fields.Item("Slogan2")))
  loc_15E8515:         var_9E = (var_9E + 1)
  loc_15E8518:       End If
  loc_15E8518:     End If
  loc_15E851D:     Set var_F0 = Nothing
  loc_15E8535:     var_174 = Chr(&H12)
  loc_15E8542:     var_144 = (Chr(&HF) + "# ")
  loc_15E854C:     var_164 = Trim(CVar(var_F0.Fields.Item("Slogan2"))) & CVar(MemVar_1F95220) 
  loc_15E8558:     var_188 = (" # " + var_174)
  loc_15E8562:     Print 1, var_164 & Space(1)
  loc_15E857D:     var_9E = (var_9E + 1)
  loc_15E8583:     var_C0.MoveNext
  loc_15E858D:     Print 1, vbNullString
  loc_15E8599:     var_9E = (var_9E + 1)
  loc_15E85A1:     Print 1, vbNullString
  loc_15E85AD:     var_9E = (var_9E + 1)
  loc_15E85B0:     GoTo loc_15E76BD
  loc_15E85B3:   End If
  loc_15E85B5:   Close 1
  loc_15E85BE:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_15E85D7:   var_120 = Me.Fields
  loc_15E85F4:   var_144 = "TYPE C:\reptmp\TEXTFILE.TXT>" & var_120.Item("Printer").Value 
  loc_15E85FA:   Print 1, var_144
  loc_15E8610:   Close 1
  loc_15E861A:   If (MemVar_1F953BC = "Y") Then
  loc_15E8636:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_15E8640:   Else
  loc_15E8659:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_15E8660:   End If
  loc_15E8665:   Set var_C0 = Nothing
  loc_15E866D:   Set var_CC = Nothing
  loc_15E8675:   Set var_D0 = Nothing
  loc_15E867D:   Set var_EC = Nothing
  loc_15E8685:   Set var_C4 = Nothing
  loc_15E868D:   Set var_C8 = Nothing
  loc_15E8693: Else
  loc_15E86AC:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_144, var_164, var_174)
  loc_15E86BC: End If
  loc_15E86BC: Exit Sub
  loc_15E86BD: ' Referenced from: 15E73FC
  loc_15E86BD: Proc_6_60_E63754(var_178, var_178, var_178, var_178, var_120, var_178)
  loc_15E86C2: Exit Sub
End Sub

Public Sub Proc_162_85_1803AB8
  'Data Table: 586158
  Dim Me As Recordset15
  Dim var_10C As String
  Dim unk_586184 As Connection15
  Dim var_134 As Variant
  Dim var_120 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_C0 As Recordset15
  Dim var_180 As String
  Dim var_C4 As Recordset15
  Dim var_BA As Integer
  Dim var_17C As Fields15
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_C8 As Recordset15
  Dim var_208 As Variant
  Dim var_1E8 As Fields15
  Dim var_280 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim var_1F8 As Variant
  Dim var_21C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_25C As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_9E As Integer
  Dim var_A0 As Integer
  Dim var_EC As Recordset15
  Dim var_23C As Variant
  Dim var_2CC As Variant
  Dim var_2F0 As Variant
  Dim var_CC As Recordset15
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_440 As Variant
  Dim var_11C As Variant
  Dim var_D8 As Double
  Dim var_D0 As Recordset15
  Dim var_F0 As Recordset15
  loc_18018E4: On Error Goto loc_1803AB0
  loc_18018F3: Me.Filter = "ModType='POS'"
  loc_180190F: If (Me.RecordCount > 0) Then
  loc_1801915:   MemVar_1F953C4 = "N"
  loc_180191C:   MemVar_1F953C8 = "N"
  loc_1801923:   MemVar_1F953CC = "K"
  loc_180194E:   unk_586184.Execute "Select * from Depart Where Code='" & global_60 & "'", var_11C, -1
  loc_1801959:   Set var_EC = var_120
  loc_180199B:   var_144 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_18019A9:   var_8C = CStr(var_144 & "'")
  loc_18019C3:   var_144 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_1801A01:   var_90 = CStr(var_144 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_1801A4D:   var_164 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Me.Fields.Item("SearchCode").Value 
  loc_1801A5B:   var_94 = CStr(var_164 & "' order by sno")
  loc_1801A77:   var_144 = CVar("SELECT Distinct(I.Kitchen) AS Kitchen,D.Name AS Department FROM (ItemMast I INNER JOIN Stock S ON I.Code=S.Item And I.RestCode=S.ItemRestCode) " & " INNER JOIN Depart D ON I.Kitchen=D.Code WHERE S.DocID='") 'String
  loc_1801A8F:   var_120 = Me.Fields
  loc_1801A97:   var_124 = var_120.Item("SearchCode")
  loc_1801A9F:   var_11C = var_124.Value
  loc_1801AB5:   var_98 = CStr(var_144 & var_11C & "' ORDER BY I.Kitchen")
  loc_1801AD2:   If (var_8C = vbNullString) Then
  loc_1801AD5:     Exit Sub
  loc_1801AD6:   End If
  loc_1801ADE:   If (var_90 = vbNullString) Then
  loc_1801AE1:     Exit Sub
  loc_1801AE2:   End If
  loc_1801AEA:   If (var_94 = vbNullString) Then
  loc_1801AED:     Exit Sub
  loc_1801AEE:   End If
  loc_1801B04:   unk_586184.Execute var_8C, var_11C, -1
  loc_1801B0F:   Set var_C0 = var_120
  loc_1801B2E:   unk_586184.Execute var_90, var_11C, -1
  loc_1801B39:   Set var_CC = var_120
  loc_1801B58:   unk_586184.Execute var_94, var_11C, -1
  loc_1801B63:   Set var_D0 = var_120
  loc_1801B82:   unk_586184.Execute var_98, var_11C, -1
  loc_1801B8D:   Set var_C4 = var_120
  loc_1801B98:   Close 1
  loc_1801BA1:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1801BA5:   ' Referenced from: 18039A3
  loc_1801BB4:   If Not(var_C0.EOF) Then
  loc_1801BBF:     var_11C = Space(&H41)
  loc_1801BE5:     var_DC = Replace(CStr(var_11C), " ", "-", 1, -1, 0)
  loc_1801BF1:     var_134 = 0
  loc_1801C21:     unk_586184.Execute "SELECT TOKENPrint FROM Depart where Code='" & global_60 & "'", var_11C, -1
  loc_1801C31:     var_134 = var_124.Item(var_124)
  loc_1801C42:     var_180 = Proc_6_38_E69628(CVar(var_17C), var_17C, var_120.Fields, var_120.Fields)
  loc_1801C61:     If (var_180 = "Yes") Then
  loc_1801C78:       If (var_C4.RecordCount > 0) Then
  loc_1801C7B:         ' Referenced from: 1802240
  loc_1801C8A:         If Not(var_C4.EOF) Then
  loc_1801C8F:           var_BA = 1
  loc_1801CA6:           var_144 = CVar("Select MAX(S.Rate) AS Rate,SUM(S.QtyIss) AS QTY,SUM(S.Amount) AS AMT,MAX(I.Name) AS ItemName From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_1801CDF:           var_174 = var_144 & Me.Fields.Item("SearchCode").Value & "' AND I.Kitchen='" 
  loc_1801D24:           unk_586184.Execute CStr(var_174 & var_C4.Fields.Item("Kitchen").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME)"), var_1E4, -1
  loc_1801D2F:           Set var_C8 = var_1E8
  loc_1801D69:           If (var_C8.RecordCount > 0) Then
  loc_1801DAC:             Call Proc_162_105_10ACE60(CStr(var_C4.Fields.Item("Department").Value), "D", &H3C, var_180, var_1E8)
  loc_1801DB6:             Print 1, var_180
  loc_1801DEB:             var_120 = var_C0.Fields
  loc_1801E02:             Proc_6_39_E7D3A0(var_174, CVar(var_120.Item("VNo")), var_BA)
  loc_1801EBC:             var_144 = (Chr(&HF) + "Bill No.   : ")
  loc_1801EC6:             var_1A4 = (var_144 + CVar(Proc_6_45_EADFB8(CStr(var_174), &HA, var_120)))
  loc_1801ECD:             var_1E4 = (var_174 & var_C4.Fields.Item("Kitchen").Value + Space(4))
  loc_1801ED6:             var_1F8 = (var_1E4 + "Dt : ")
  loc_1801EE0:             var_22C = (var_1F8 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_120), &HF)))
  loc_1801EE7:             var_24C = (var_22C + Space(4))
  loc_1801EF0:             var_25C = (var_24C + "Time : ")
  loc_1801EFA:             var_2A4 = (var_25C + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_1801F00:             Print 1, var_2A4
  loc_1801F4F:             var_9E = (var_9E + 1)
  loc_1801FC4:             var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("SNo", 3)))
  loc_1801FCB:             var_194 = (CVar(var_120.Item("VNo")) + Space(1))
  loc_1801FD5:             var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(Space(1)), &HA, var_120)) + CVar(Proc_6_45_EADFB8("PARTICULARS", &H28)))
  loc_1801FDC:             var_1F8 = (Space(4) + Space(1))
  loc_1801FE6:             var_21C = (var_1F8 + CVar(Proc_6_52_EAE084("Qty", &H12)))
  loc_1801FEC:             Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_120), &HF))
  loc_1802030:             var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1802036:             Print 1, CVar(Proc_6_45_EADFB8("SNo", 3))
  loc_1802043:             ' Referenced from: 18021BA
  loc_1802052:             If Not(var_C8.EOF) Then
  loc_18020F4:               Proc_6_39_E7D3A0(var_22C, CVar(var_C8.Fields.Item("qty")))
  loc_1802137:               var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3)))
  loc_180213E:               var_194 = (CVar(var_C8.Fields.Item("VNo")) + Space(1))
  loc_1802148:               var_1E4 = (CVar(Proc_6_45_EADFB8(CStr(Space(1)), &HA, var_C8.Fields)) + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H28)))
  loc_180214F:               var_208 = (Space(1) + Space(1))
  loc_1802159:               var_280 = (CVar(Proc_6_52_EAE084("Qty", &H12)) + CVar(Proc_6_52_EAE084(CStr(Format(var_22C, "0.00")), &H12, 1)))
  loc_180215F:               Print 1, CVar(var_C0.Fields.Item("VTIME"))
  loc_18021A3:               var_C8.MoveNext
  loc_18021AE:               var_9E = (var_9E + 1)
  loc_18021B7:               var_BA = (var_BA + 1)
  loc_18021BA:               GoTo loc_1802043
  loc_18021BD:             End If
  loc_18021BD:           End If
  loc_18021C0:           var_C4.MoveNext
  loc_18021CA:           Print 1, vbNullString
  loc_180220B:           var_10C = Replace(CStr(Space(&H41)), " ", "=", 1, -1, 0)
  loc_1802217:           var_174 = (Chr(&HF) + CVar("PARTICULARS"))
  loc_180221D:           Print 1, Space(1)
  loc_180223A:           Print 1, vbNullString
  loc_1802240:           GoTo loc_1801C7B
  loc_1802243:         End If
  loc_1802243:       End If
  loc_1802243:     End If
  loc_1802245:     var_9E = 0
  loc_180224A:     var_A0 = 1
  loc_1802264:     If ((global_212 = "Restaurant") Or (global_212 = "Hall")) Then
  loc_1802275:       var_9C = "** " & "BILL" & " **"
  loc_180227E:     Else
  loc_180229E:       var_9C = "** " & Me.LblRest.Caption & " **"
  loc_18022AB:     End If
  loc_18022B1:     If (var_9E = 0) Then
  loc_18022F9:       var_10C = Proc_6_38_E69628("UPTT No: " & var_EC.Fields.Item("LstNo").Value, var_A0, var_9E, var_BA)
  loc_1802326:       var_194 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_10C, &H1E, var_9E)))
  loc_180232D:       var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(var_10C, &H1E, var_9E))), &HA, var_EC.Fields)) + Chr(&H12))
  loc_1802333:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("ItemName").Value), &H28))
  loc_1802360:       var_9E = (var_9E + 1)
  loc_1802377:       Call Proc_162_105_10ACE60(var_9C, "D", &H3C, var_10C)
  loc_1802381:       Print 1, var_10C
  loc_1802393:       Print 1, vbNullString
  loc_180239F:       var_9E = (var_9E + 1)
  loc_18023D0:       var_DC = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_1802407:       var_E0 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_180241E:       Call Proc_162_106_128D454(var_A0, var_9E, &H3C, var_20A, var_9E)
  loc_180246D:       var_164 = (Chr(&H11) + Space(&H14))
  loc_1802476:       var_174 = ("UPTT No: " & var_EC.Fields.Item("LstNo").Value + "PHONE NO.")
  loc_1802480:       var_1A4 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_20A, var_20A), &H1E, var_20A)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_20A, var_20A), &H1E, 1)))
  loc_1802486:       Print 1, Chr(&H12)
  loc_18024AA:       var_9E = (var_9E + 1)
  loc_18024B2:       Print 1, vbNullString
  loc_18024BE:       var_9E = (var_9E + 1)
  loc_18024C6:       Print 1, vbNullString
  loc_18024D2:       var_9E = (var_9E + 1)
  loc_1802508:       Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_20A, var_20A), &H1E, var_20A)), CVar(var_C0.Fields.Item("VNo")), var_20A, var_20A)
  loc_180251F:       var_2A8 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95140, var_20A, var_20A), &H1E, var_20A))), &HA, var_20A)
  loc_18025C2:       var_144 = (Chr(&HF) + "Bill No.   : ")
  loc_18025CC:       var_1A4 = (Space(&H14) + CVar(var_2A8))
  loc_18025D3:       var_1E4 = (Chr(&H12) + Space(4))
  loc_18025DC:       var_1F8 = (Space(1) + "Dt : ")
  loc_18025E6:       var_22C = (Space(1) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_20A), &HF)))
  loc_18025ED:       var_24C = (var_22C + Space(4))
  loc_18025F6:       var_25C = (Format(var_22C, "0.00") + "Time : ")
  loc_1802600:       var_2A4 = (CVar(Proc_6_52_EAE084(CStr(Format(var_22C, "0.00")), &H12, 1)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 8)))
  loc_1802606:       Print 1, var_2A4
  loc_1802655:       var_9E = (var_9E + 1)
  loc_1802663:       If (global_212 = "Outlet") Then
  loc_18026BA:         var_144 = (Chr(&HF) + "Table No.  : ")
  loc_18026C4:         var_194 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_20A), 5)))
  loc_18026CA:         Print 1, CVar(var_2A8)
  loc_18026EF:         var_9E = (var_9E + 1)
  loc_18026F2:       End If
  loc_18026FD:       If (global_212 = "Room Service") Then
  loc_1802754:         var_144 = (Chr(&HF) + "Room No.   : ")
  loc_180275E:         var_194 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_20A), 5)))
  loc_1802764:         Print 1, CVar(var_2A8)
  loc_1802789:         var_9E = (var_9E + 1)
  loc_180278C:       End If
  loc_1802797:       If (global_212 = "Hall") Then
  loc_18027EE:         var_144 = (Chr(&HF) + "Hall  No.  : ")
  loc_18027F8:         var_194 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("RoomNo")), var_20A), 5)))
  loc_18027FE:         Print 1, CVar(var_2A8)
  loc_1802823:         var_9E = (var_9E + 1)
  loc_1802826:       End If
  loc_18028A6:       If CBool((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)) Then
  loc_18028FD:         var_144 = (Chr(&HF) + "KOT No.    : ")
  loc_1802907:         var_194 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_20A), &H34)))
  loc_180290D:         Print 1, (var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0)
  loc_1802932:         var_9E = (var_9E + 1)
  loc_1802935:       End If
  loc_180294B:       var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1802951:       Print 1, Space(&H14)
  loc_1802964:       var_9E = (var_9E + 1)
  loc_1802967:     End If
  loc_180298D:     var_164 = (CVar(Proc_6_45_EADFB8("SNo", 3, var_20A)) + Space(1))
  loc_1802999:     var_10C = "ITEM NAME"
  loc_18029A7:     var_194 = (var_20A + CVar(Proc_6_45_EADFB8(var_10C, &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_18029BB:     var_1C4 = ((var_C0.Fields.Item("KOTNo").Value <> vbNullString) And (var_C0.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_18029D5:     var_1F8 = (Space(4) + CVar(Proc_6_52_EAE084("Tax, 6)) 'String)
  loc_18029E1:     var_208 = Space(1)
  loc_18029E9:     var_21C = (Space(1) + var_208)
  loc_1802A03:     var_23C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VDate")), var_20A), &HF)) + CVar(Proc_6_52_EAE084("Rate", &HA)))
  loc_1802A17:     var_25C = (Space(4) + Space(1))
  loc_1802A31:     var_294 = (CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Rate", &HA)), "0.00")), &H12, 1)) + CVar(Proc_6_52_EAE084("Qty", &HA)))
  loc_1802A3D:     var_2A4 = Space(1)
  loc_1802A45:     var_2CC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("VTIME"))), 8)) + var_2A4)
  loc_1802A5F:     var_2F0 = (var_2CC + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_1802A64:     var_B8 = CStr(var_2F0)
  loc_1802AB9:     var_144 = (Chr(&HF) + CVar(var_B8))
  loc_1802ABF:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, var_20A))
  loc_1802AE2:     var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1802AE8:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, var_20A))
  loc_1802AFB:     var_9E = (var_9E + 1)
  loc_1802B00:     var_BA = 1
  loc_1802B06:     var_CC.MoveFirst
  loc_1802B0B:     ' Referenced from: 1802FBA
  loc_1802B1A:     If Not(var_CC.EOF) Then
  loc_1802B6A:       Proc_6_39_E7D3A0(var_208, CVar(var_CC.Fields.Item("TaxPer")), var_BA)
  loc_1802BB5:       Proc_6_39_E7D3A0(var_2A4, CVar(var_CC.Fields.Item("Rate")), 1)
  loc_1802C00:       Proc_6_39_E7D3A0(var_348, CVar(var_CC.Fields.Item("qty")), 1, 1)
  loc_1802C4B:       Proc_6_39_E7D3A0(var_3F0, CVar(var_CC.Fields.Item("Amt")), 1, 1)
  loc_1802C96:       var_164 = (CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1)) + Space(1))
  loc_1802CAF:       var_1A4 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_CC.Fields.Item("ItemName").Value), &H14, CVar(var_C0.Fields.Item("KOTNo")))))
  loc_1802CC3:       var_1E4 = (Space(1) + Space(1))
  loc_1802CDC:       var_24C = (var_20A + CVar(Proc_6_52_EAE084(CStr(Format(var_208, "0.00")), 6, CVar(Proc_6_52_EAE084("Tax, 6)) 'String)) 'String)
  loc_1802CF0:       var_280 = (Space(1) + Space(1))
  loc_1802D09:       var_300 = (CVar(Proc_6_52_EAE084("Qty", &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(var_2A4, "0.00")), &HA)))
  loc_1802D1D:       var_320 = (var_300 + Space(1))
  loc_1802D36:       var_398 = (var_320 + CVar(Proc_6_52_EAE084(CStr(Format(var_348, "0.00")), &HA)))
  loc_1802D4A:       var_3B8 = (var_398 + Space(1))
  loc_1802D63:       var_440 = (var_3B8 + CVar(Proc_6_52_EAE084(CStr(Format(var_3F0, "0.00")), &HA)))
  loc_1802DEE:       var_144 = (Chr(&HF) + CVar(CStr(var_440)))
  loc_1802DF4:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_1802E0B:       If (var_20A = (&H45 - var_B2)) Then
  loc_1802E24:         var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1802E2A:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_1802E3D:         var_9E = (var_9E + 1)
  loc_1802E45:         Print 1, "Contd."
  loc_1802E51:         var_9E = (var_9E + 1)
  loc_1802E66:         Print 1, Chr(&HC)
  loc_1802E75:         var_9E = (var_9E + 1)
  loc_1802E7E:         var_A0 = (var_A0 + 1)
  loc_1802E94:         Call Proc_162_106_128D454(var_A0, 0, &H3C, var_20A, 0)
  loc_1802EB3:         Call Proc_162_105_10ACE60(var_9C, "B", &H3C, var_10C, var_20A)
  loc_1802EBD:         Print 1, var_10C
  loc_1802ED0:         var_9E = (var_9E + 1)
  loc_1802EE9:         var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1802EEF:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_1802F02:         var_9E = (var_9E + 1)
  loc_1802F1B:         var_144 = (Chr(&HF) + CVar(var_B8))
  loc_1802F21:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_1802F44:         var_144 = (Chr(&HF) + CVar(var_DC))
  loc_1802F4A:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1))
  loc_1802F5D:         var_9E = (var_9E + 1)
  loc_1802F60:       End If
  loc_1802F8D:       Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1)), CVar(var_CC.Fields.Item("Amt")), CVar(var_D8), var_20A, var_20A, var_20A)
  loc_1802F95:       var_164 = (var_A0 + CVar(Proc_6_45_EADFB8(CStr(var_BA), 3, 1, 1)))
  loc_1802F9A:       var_D8 = CSng(CVar(var_C0.Fields.Item("KOTNo")))
  loc_1802FAF:       var_BA = (var_BA + 1)
  loc_1802FB5:       var_CC.MoveNext
  loc_1802FBA:       GoTo loc_1802B0B
  loc_1802FBD:     End If
  loc_1802FDD:     var_164 = (Chr(&HF) + Space(&H35))
  loc_1802FE7:     var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_1802FED:     Print 1, var_CC.Fields.Item("ItemName").Value
  loc_1803004:     var_9E = (var_9E + 1)
  loc_180300A:     var_D0.MoveFirst
  loc_180300F:     ' Referenced from: 180352C
  loc_180301E:     If Not(var_D0.EOF) Then
  loc_180304B:       var_450 = var_D0.Fields.Item("SunCode").Value 'Variant
  loc_1803069:       If (var_450 = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_18030F5:         Proc_6_39_E7D3A0(var_208, CVar(var_D0.Fields.Item("Amount")), var_20A)
  loc_1803142:         var_164 = (Chr(&HF) + Space(&H23))
  loc_180314C:         var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, var_20A, var_BA, var_D8)))
  loc_1803153:         var_1E4 = (Space(1) + Space(4))
  loc_180315D:         var_24C = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_208, "0.00")), &HA, 1, 1)))
  loc_1803164:         var_280 = (Space(1) + Chr(&H12))
  loc_180316A:         Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_18031AD:         var_9E = (var_9E + 1)
  loc_18031B3:       Else
  loc_18031C6:         If (var_450 = CVar(MemVar_1F95078 & "NET")) Then
  loc_18031DE:           var_144 = Space(&H35)
  loc_18031E9:           var_164 = (Chr(&HF) + var_144)
  loc_18031F3:           var_174 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(var_E0))
  loc_18031F9:           Print 1, var_D0.Fields.Item("DispName").Value
  loc_1803210:           var_9E = (var_9E + 1)
  loc_1803239:           Proc_6_39_E7D3A0(var_144, CVar(var_D0.Fields.Item("Amount")), var_20A, var_20A)
  loc_1803253:           If (var_144 > 0) Then
  loc_180326B:             var_144 = Space(&H23)
  loc_18032DF:             Proc_6_39_E7D3A0(var_208, CVar(var_D0.Fields.Item("Amount")))
  loc_180332C:             var_164 = (Chr(&HF) + var_144)
  loc_1803336:             var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, var_20A)))
  loc_180333D:             var_1E4 = (Space(1) + Space(4))
  loc_1803347:             var_24C = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_208, "0.00")), &HA, 1)))
  loc_180334E:             var_280 = (Space(1) + Chr(&H12))
  loc_1803354:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_1803397:             var_9E = (var_9E + 1)
  loc_180339A:           End If
  loc_180339D:         Else
  loc_18033C3:           Proc_6_39_E7D3A0(var_144, CVar(var_D0.Fields.Item("Amount")), var_20A)
  loc_18033DD:           If (var_144 > 0) Then
  loc_1803469:             Proc_6_39_E7D3A0(var_208, CVar(var_D0.Fields.Item("Amount")))
  loc_18034B6:             var_164 = (Chr(&HF) + Space(&H23))
  loc_18034C0:             var_1A4 = (CVar(var_C0.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1)))
  loc_18034C7:             var_1E4 = (Space(1) + Space(4))
  loc_18034D1:             var_24C = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_208, "0.00")), &HA, 1)))
  loc_18034D8:             var_280 = (Space(1) + Chr(&H12))
  loc_18034DE:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_1803521:             var_9E = (var_9E + 1)
  loc_1803524:           End If
  loc_1803524:         End If
  loc_1803524:       End If
  loc_1803527:       var_D0.MoveNext
  loc_180352C:       GoTo loc_180300F
  loc_180352F:     End If
  loc_1803545:     var_144 = (Chr(&HF) + CVar(var_DC))
  loc_180354B:     Print 1, Space(&H23)
  loc_180355E:     var_9E = (var_9E + 1)
  loc_180359D:     If CBool(var_C0.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_18035F4:       var_144 = (Chr(&HF) + "Steward Name  : ")
  loc_18035FE:       var_194 = (Space(&H23) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("WaiterName")), var_20A, var_20A), &H14, 1)))
  loc_1803604:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_1803629:       var_9E = (var_9E + 1)
  loc_180362C:     End If
  loc_1803634:     var_11C = Chr(&HF)
  loc_1803648:     var_120 = var_C0.Fields
  loc_1803680:     var_144 = (var_11C + "User Name     : ")
  loc_180368A:     var_194 = (Space(&H23) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("U_Name")), var_20A), &HA)))
  loc_1803690:     Print 1, CVar(Proc_6_45_EADFB8(CStr(var_D0.Fields.Item("DispName").Value), &HF, 1))
  loc_18036B5:     var_9E = (var_9E + 1)
  loc_18036BD:     Print 1, vbNullString
  loc_18036C9:     var_9E = (var_9E + 1)
  loc_18036F3:     unk_586184.Execute "SELECT Slogan1 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_18036FE:     Set var_F0 = var_120
  loc_1803722:     If (var_F0.RecordCount > 0) Then
  loc_1803765:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan1"))) <> vbNullString) Then
  loc_1803770:         var_11C = Chr(&HF)
  loc_1803784:         var_120 = var_F0.Fields
  loc_18037A6:         var_174 = (var_11C + Trim(CVar(var_120.Item("Slogan1"))))
  loc_18037AC:         Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_120.Item("U_Name")), var_20A), &HA))
  loc_18037C6:         var_9E = (var_9E + 1)
  loc_18037C9:       End If
  loc_18037C9:     End If
  loc_18037F0:     unk_586184.Execute "SELECT Slogan2 FROM Depart WHERE Code='" & global_60 & "'", var_11C, -1
  loc_18037FB:     Set var_F0 = var_120
  loc_180381F:     If (var_F0.RecordCount > 0) Then
  loc_1803862:       If CBool(Trim(CVar(var_F0.Fields.Item("Slogan2"))) <> vbNullString) Then
  loc_18038A3:         var_174 = (Chr(&HF) + Trim(CVar(var_F0.Fields.Item("Slogan2"))))
  loc_18038A9:         Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_F0.Fields.Item("U_Name")), var_20A), &HA))
  loc_18038C3:         var_9E = (var_9E + 1)
  loc_18038C6:       End If
  loc_18038C6:     End If
  loc_18038CB:     Set var_F0 = Nothing
  loc_18038EE:     var_164 = (Chr(&HF) + Space(&H32))
  loc_18038F7:     var_174 = (Trim(CVar(var_F0.Fields.Item("Slogan2"))) + "Guest Signature")
  loc_18038FD:     Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_F0.Fields.Item("U_Name")), var_20A), &HA))
  loc_1803914:     var_9E = (var_9E + 1)
  loc_180391C:     Print 1, vbNullString
  loc_1803928:     var_9E = (var_9E + 1)
  loc_1803940:     var_144 = (Chr(&HF) + "# ")
  loc_180394A:     var_164 = Space(&H32) & CVar(MemVar_1F95220) 
  loc_1803953:     var_174 = var_164 & " # " 
  loc_1803959:     Print 1, var_174
  loc_1803970:     var_9E = (var_9E + 1)
  loc_1803976:     var_C0.MoveNext
  loc_1803980:     Print 1, vbNullString
  loc_180398C:     var_9E = (var_9E + 1)
  loc_1803994:     Print 1, vbNullString
  loc_18039A0:     var_9E = (var_9E + 1)
  loc_18039A3:     GoTo loc_1801BA5
  loc_18039A6:   End If
  loc_18039A8:   Close 1
  loc_18039B1:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_18039E7:   var_144 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_18039ED:   Print 1, var_144
  loc_1803A03:   Close 1
  loc_1803A0D:   If (MemVar_1F953BC = "Y") Then
  loc_1803A29:     var_B0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1803A33:   Else
  loc_1803A4C:     var_B0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1803A53:   End If
  loc_1803A58:   Set var_C0 = Nothing
  loc_1803A60:   Set var_CC = Nothing
  loc_1803A68:   Set var_D0 = Nothing
  loc_1803A70:   Set var_EC = Nothing
  loc_1803A78:   Set var_C4 = Nothing
  loc_1803A80:   Set var_C8 = Nothing
  loc_1803A86: Else
  loc_1803A9F:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_144, var_164, var_174)
  loc_1803AAF: End If
  loc_1803AAF: Exit Sub
  loc_1803AB0: ' Referenced from: 18018E4
  loc_1803AB0: Proc_6_60_E63754(var_20A, var_20A, var_20A, var_20A, var_20A, var_20A)
  loc_1803AB5: Exit Sub
End Sub

Public Sub Proc_162_86_172C29C
  'Data Table: 586158
  Dim Me As Recordset15
  Dim unk_586184 As Connection15
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_E4 As Recordset15
  Dim var_168 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_180 As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_E0 As Recordset15
  Dim var_110 As Variant
  Dim var_250 As Variant
  Dim var_2DC As Variant
  Dim var_378 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_2F0 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_350 As Variant
  Dim var_38C As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_3DC As Variant
  Dim var_3FC As Variant
  Dim var_458 As Variant
  Dim var_230 As Variant
  Dim var_284 As Variant
  Dim var_2B4 As Variant
  Dim var_310 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_172A724: On Error Goto loc_172C295
  loc_172A733: Me.Filter = "ModType='POS'"
  loc_172A74F: If (Me.RecordCount > 0) Then
  loc_172A755:   MemVar_1F953C4 = "N"
  loc_172A75C:   MemVar_1F953C8 = "N"
  loc_172A763:   MemVar_1F953CC = "K"
  loc_172A78E:   unk_586184.Execute "Select * from Depart where code='" & global_60 & "'", var_110, -1
  loc_172A799:   Set var_E4 = var_114
  loc_172A7DB:   var_138 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_172A7E9:   var_8C = CStr(var_138 & "'")
  loc_172A810:   If (var_E4.RecordCount > 0) Then
  loc_172A84F:     If (var_E4.Fields.Item("KotYN").Value = "Y") Then
  loc_172A859:       var_138 = CVar("Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_172A8CC:       var_1B0 = var_138 & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) " 
  loc_172A8D1:       var_90 = CStr(var_1B0)
  loc_172A8F3:     Else
  loc_172A8FA:       var_138 = CVar("Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCode=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_172A938:       var_90 = CStr(var_138 & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) ")
  loc_172A94D:     End If
  loc_172A94D:     GoTo loc_172A950
  loc_172A950:     ' Referenced from: 172A94D
  loc_172A950:   End If
  loc_172A96F:   var_114 = Me.Fields
  loc_172A97F:   var_110 = var_114.Item("SearchCode").Value
  loc_172A990:   var_168 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_110 & "' order by sno " 
  loc_172A995:   var_94 = CStr(var_168)
  loc_172A9B2:   If (var_8C = vbNullString) Then
  loc_172A9B5:     Exit Sub
  loc_172A9B6:   End If
  loc_172A9BE:   If (var_90 = vbNullString) Then
  loc_172A9C1:     Exit Sub
  loc_172A9C2:   End If
  loc_172A9CA:   If (var_94 = vbNullString) Then
  loc_172A9CD:     Exit Sub
  loc_172A9CE:   End If
  loc_172A9E4:   unk_586184.Execute var_8C, var_110, -1
  loc_172A9EF:   Set var_BC = var_114
  loc_172AA0E:   unk_586184.Execute var_90, var_110, -1
  loc_172AA19:   Set var_C0 = var_114
  loc_172AA38:   unk_586184.Execute var_94, var_110, -1
  loc_172AA43:   Set var_C4 = var_114
  loc_172AA4E:   var_AE = &HA
  loc_172AA53:   Close 1
  loc_172AA5C:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_172AA84:   unk_586184.Execute "Select * from enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_110, -1
  loc_172AA8F:   Set var_E0 = var_114
  loc_172AA9F:   ' Referenced from: 172C112
  loc_172AAAE:   If Not(var_BC.EOF) Then
  loc_172AAB3:     var_9A = 0
  loc_172AAC1:     If (var_9A = 0) Then
  loc_172AB02:       var_158 = CVar(Replace(CStr(Space(&H88)), " ", "-", 1, -1, 0)) 'String
  loc_172AB05:       var_168 = (Chr(&HF) + CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&HF))
  loc_172AB19:       var_190 = (var_168 + Chr(&H12))
  loc_172AB1E:       var_D0 = CStr(Space(&H88) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value)
  loc_172AB61:       var_D4 = Replace(CStr(Space(&HC)), " ", "=", 1, -1, 0)
  loc_172AB71:       Set var_114 = Me.LblRest
  loc_172AB87:       var_1B8 = "A"
  loc_172AB94:       Call Proc_162_105_10ACE60(var_114.Caption, var_1B8, &H4E, var_1BC, 1, var_9A)
  loc_172AB9E:       Print 1, var_1BC
  loc_172ABDB:       var_190 = Trim(MemVar_1F9513C)
  loc_172ABF9:       var_138 = (Trim(MemVar_1F95134) + ", ")
  loc_172AC00:       var_168 = (Space(&H88) + Trim(MemVar_1F95138))
  loc_172AC09:       var_180 = (var_168 + " ")
  loc_172AC10:       var_1B0 = (Chr(&H12) + var_190)
  loc_172AC19:       var_1EC = (var_1B0 + " ")
  loc_172AC23:       var_20C = (var_1EC + CVar(MemVar_1F9515C))
  loc_172AC2C:       Call Proc_162_105_10ACE60(CStr(var_20C), "B", &H4E, var_1B8, var_114)
  loc_172AC36:       Print 1, var_1B8
  loc_172AC85:       Call Proc_162_105_10ACE60("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "E", 137, var_210, var_AE)
  loc_172AC8F:       Print 1, var_210
  loc_172ACB6:       If (var_E0.RecordCount > 0) Then
  loc_172ACC8:         var_114 = var_E0.Fields
  loc_172AD03:         If (Trim(CVar(Proc_6_38_E69628(CVar(var_114.Item("Bill_Header")), var_114, var_114))) = vbNullString) Then
  loc_172AD0B:           Print 1, vbNullString
  loc_172AD14:         Else
  loc_172AD23:           var_114 = var_E0.Fields
  loc_172AD58:           Call Proc_162_105_10ACE60(Proc_6_38_E69628(CVar(var_114.Item("Bill_Header")), var_114), "E", 137)
  loc_172AD62:           Print 1, var_1B8
  loc_172AD79:         End If
  loc_172AD7C:       Else
  loc_172AD81:         Print 1, vbNullString
  loc_172AD87:       End If
  loc_172AD99:       Print 1, Chr(&H12)
  loc_172ADE2:       Proc_6_39_E7D3A0(var_190, CVar(var_BC.Fields.Item("VNo")))
  loc_172AE04:       var_138 = (Chr(&HF) + "Bill No. ")
  loc_172AE0B:       var_168 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields, var_BC.Fields)) + Chr(&H12))
  loc_172AE15:       var_1EC = (var_168 + CVar(Proc_6_45_EADFB8(CStr(var_190), &HA)))
  loc_172AE1B:       Print 1, var_1EC
  loc_172AFE2:       Proc_6_39_E7D3A0(var_434, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_172B005:       var_138 = (Chr(&HF) + "Date : ")
  loc_172B00C:       var_168 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields, var_BC.Fields)) + Chr(&H12))
  loc_172B016:       var_1B0 = (var_168 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)))
  loc_172B01D:       var_20C = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12))), &HA)) + Chr(&HF))
  loc_172B026:       var_220 = (var_20C + "Time : ")
  loc_172B02D:       var_240 = (var_220 + Chr(&H12))
  loc_172B037:       var_274 = (var_240 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_172B03E:       var_294 = (var_274 + Chr(&HF))
  loc_172B047:       var_2A4 = (var_294 + "Steward :")
  loc_172B04E:       var_2C4 = (var_2A4 + Chr(&H12))
  loc_172B058:       var_300 = (var_2C4 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_172B05F:       var_320 = (var_300 + Chr(&HF))
  loc_172B068:       var_330 = (var_320 + "Table : ")
  loc_172B06F:       var_350 = (var_330 + Chr(&H12))
  loc_172B079:       var_39C = (var_350 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_172B080:       var_3BC = (var_39C + Chr(&HF))
  loc_172B089:       var_3DC = (var_3BC + "Covers: ")
  loc_172B090:       var_3FC = (var_3DC + Chr(&H12))
  loc_172B09A:       var_458 = (var_3FC + CVar(Proc_6_45_EADFB8(CStr(var_434), 7)))
  loc_172B0A0:       Print 1, var_458
  loc_172B12C:       Print 1, var_D0
  loc_172B1E3:       var_3AC = Space(&HA)
  loc_172B1FB:       var_158 = (Chr(&HF) + Space(3))
  loc_172B204:       var_168 = (Chr(&H12) + "S.No")
  loc_172B20B:       var_190 = (var_168 + Space(3))
  loc_172B212:       var_1EC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + Space(4))
  loc_172B21B:       var_20C = (Chr(&HF) + "KOT#")
  loc_172B222:       var_230 = (var_20C + Space(4))
  loc_172B229:       var_250 = (Chr(&H12) + Space(5))
  loc_172B232:       var_264 = (CVar(var_BC.Fields.Item("VTIME")) + "CODE")
  loc_172B239:       var_284 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(5))
  loc_172B240:       var_2A4 = (Chr(&HF) + Space(&H15))
  loc_172B249:       var_2B4 = (var_2A4 + "ITEM NAME")
  loc_172B250:       var_2DC = (Chr(&H12) + Space(&H15))
  loc_172B257:       var_300 = (CVar(var_BC.Fields.Item("WaiterName")) + Space(8))
  loc_172B260:       var_310 = (var_300 + "QTY")
  loc_172B267:       var_330 = (Chr(&HF) + Space(5))
  loc_172B26E:       var_350 = (var_330 + Space(5))
  loc_172B277:       var_378 = (var_350 + "RATE")
  loc_172B27E:       var_39C = (CVar(var_BC.Fields.Item("RoomNo")) + Space(5))
  loc_172B285:       var_3BC = (var_39C + var_3AC)
  loc_172B28E:       var_3DC = (var_3BC + "AMOUNT")
  loc_172B295:       var_3FC = (var_3DC + Chr(&H12))
  loc_172B29B:       Print 1, var_3FC
  loc_172B2F1:       Print 1, var_D0
  loc_172B2F9:       var_9A = &HA
  loc_172B2FC:     End If
  loc_172B2FE:     var_B6 = 1
  loc_172B304:     var_C0.MoveFirst
  loc_172B309:     ' Referenced from: 172BA25
  loc_172B318:     If Not(var_C0.EOF) Then
  loc_172B321:       If (var_9A = 0) Then
  loc_172B352:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_172B389:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_172B3C5:         Proc_6_39_E7D3A0(Chr(&H12), CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_172B3E8:         var_180 = (Space(8) + CVar(Proc_6_45_EADFB8(CStr(Chr(&H12)), &HA)))
  loc_172B3EE:         Print 1, Space(3)
  loc_172B40D:         Print 1
  loc_172B576:         Proc_6_39_E7D3A0(var_300, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_172B59A:         var_168 = (Space(6) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_172B5A1:         var_190 = (CVar(Proc_6_45_EADFB8(CStr(Chr(&H12)), &HA)) + Space(4))
  loc_172B5AB:         var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_172B5B2:         var_230 = (var_20C + Space(6))
  loc_172B5BC:         var_264 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_172B5C3:         var_284 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_172B5CD:         var_2B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_172B5D4:         var_2DC = (Chr(&H12) + Space(6))
  loc_172B5DB:         var_310 = CVar(Proc_6_45_EADFB8(CStr(var_300), 7)) 'String
  loc_172B5DE:         var_320 = (CVar(var_BC.Fields.Item("WaiterName")) + var_310)
  loc_172B5E4:         Print 1, Space(5)
  loc_172B652:         Print 1, vbNullString
  loc_172B65D:         Print 1, vbNullString
  loc_172B665:         var_9A = 5
  loc_172B668:       End If
  loc_172B6E0:       var_240 = var_C0.Fields.Item("ItemName").Value
  loc_172B70B:       Proc_6_39_E7D3A0(Chr(&HF), CVar(var_C0.Fields.Item("qty")))
  loc_172B756:       Proc_6_39_E7D3A0(var_310, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_172B7A1:       Proc_6_39_E7D3A0(var_3AC, CVar(var_C0.Fields.Item("Amt")), 1)
  loc_172B7EC:       var_158 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) + Space(4))
  loc_172B801:       var_180 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_9A), 5, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_172B804:       var_190 = (1 + var_180)
  loc_172B818:       var_1EC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + Space(2))
  loc_172B82D:       var_220 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("ICODE"))), 7, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_172B830:       var_230 = (1 + var_220)
  loc_172B849:       var_264 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(CStr(var_240), &H1E)))
  loc_172B862:       var_2C4 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&HF), "0.00")), 6)))
  loc_172B876:       var_2F0 = (Space(6) + Space(1))
  loc_172B88F:       var_350 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAE084(CStr(Format(var_310, "0.00")), 7)))
  loc_172B8A3:       var_38C = (var_350 + Space(1))
  loc_172B8BC:       var_3FC = (Space(5) + CVar(Proc_6_52_EAE084(CStr(Format(var_3AC, "0.00")), &HB)))
  loc_172B93A:       Print 1, CStr(var_3FC)
  loc_172B946:       var_9A = (var_9A + 1)
  loc_172B953:       If (var_9A = (&H36 - var_AE)) Then
  loc_172B95C:         var_9C = (var_9C + 1)
  loc_172B974:         var_138 = (Space(&H32) + "Contd. Page ")
  loc_172B98F:         Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..."
  loc_172B9A8:         var_9A = (var_9A + 1)
  loc_172B9BD:         Print 1, Chr(&HC)
  loc_172B9C8:         var_9A = 0
  loc_172B9CB:       End If
  loc_172B9F8:       Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A)
  loc_172BA00:       var_158 = (var_9A + CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)))
  loc_172BA05:       var_CC = CSng(CVar(CStr(1)))
  loc_172BA1A:       var_B6 = (var_B6 + 1)
  loc_172BA20:       var_C0.MoveNext
  loc_172BA25:       GoTo loc_172B309
  loc_172BA28:     End If
  loc_172BA32:     If (var_9A < (&H36 - var_AE)) Then
  loc_172BA35:       ' Referenced from: 172BA59
  loc_172BA42:       If (var_9A <> ((&H36 - var_AE) + 1)) Then
  loc_172BA4A:         Print 1, vbNullString
  loc_172BA56:         var_9A = (var_9A + 1)
  loc_172BA59:         GoTo loc_172BA35
  loc_172BA5C:       End If
  loc_172BA5C:     End If
  loc_172BA5F:     var_C4.MoveFirst
  loc_172BA69:     Print 1, var_D0
  loc_172BA6F:     ' Referenced from: 172C107
  loc_172BA7E:     If Not(var_C4.EOF) Then
  loc_172BAAB:       var_49C = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_172BAC9:       If (var_49C = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_172BB6D:         Proc_6_39_E7D3A0(var_240, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_172BB81:         var_250 = "0.00"
  loc_172BBB0:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Trade Tax No. : " & MemVar_1F95148, &H54, var_9A, var_B6)))
  loc_172BBB7:         var_180 = (CVar(CStr(1)) + Chr(&H12))
  loc_172BBC1:         var_1EC = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_CC)))
  loc_172BBC8:         var_220 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_172BBD2:         var_284 = (var_220 + CVar(Proc_6_52_EAE084(CStr(Format(var_240, var_250)), &HA, 1)))
  loc_172BBD8:         Print 1, Chr(&HF)
  loc_172BC1C:       Else
  loc_172BC2F:         If (var_49C = CVar(MemVar_1F95078 & "NET")) Then
  loc_172BC48:           var_138 = (Space(&H43) + CVar(var_D4))
  loc_172BC4E:           Print 1, CVar(Proc_6_45_EADFB8("Trade Tax No. : " & MemVar_1F95148, &H54, var_9A, var_B6))
  loc_172BC6F:           If (var_E0.RecordCount > 0) Then
  loc_172BCBC:             If (Trim(CVar(Proc_6_38_E69628(CVar(var_E0.Fields.Item("Bill_Footer")), 1))) = vbNullString) Then
  loc_172BD6A:               Proc_6_39_E7D3A0(var_250, CVar(var_C4.Fields.Item("Amount")))
  loc_172BDAD:               var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Space(1)), &H54)))
  loc_172BDB4:               var_190 = (Chr(&H12) + Chr(&H12))
  loc_172BDBE:               var_20C = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_172BDC5:               var_230 = (Space(4) + Space(4))
  loc_172BDCF:               var_294 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0.00")), &HA, 1)))
  loc_172BDD5:               Print 1, "0.00"
  loc_172BE1B:             Else
  loc_172BE47:               var_138 = CVar(var_E0.Fields.Item("Bill_Footer")) 'Address
  loc_172BEE3:               Proc_6_39_E7D3A0(var_250, CVar(var_C4.Fields.Item("Amount")))
  loc_172BF26:               var_168 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(var_138, 1), &H54)))
  loc_172BF2D:               var_190 = (Chr(&H12) + Chr(&H12))
  loc_172BF34:               var_1EC = CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)) 'String
  loc_172BF37:               var_20C = (var_C4.Fields.Item("DispName").Value + var_1EC)
  loc_172BF3E:               var_230 = (Space(4) + Space(4))
  loc_172BF48:               var_294 = (CVar(var_C4.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0.00")), &HA, 1)))
  loc_172BF4E:               Print 1, "0.00"
  loc_172BF95:             End If
  loc_172BF98:           Else
  loc_172BF9D:             Print 1, vbNullString
  loc_172BFA3:           End If
  loc_172BFA8:           Print 1, var_D0
  loc_172BFB1:         Else
  loc_172BFD7:           Proc_6_39_E7D3A0(var_138, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_172BFF1:           If (var_138 > 0) Then
  loc_172C03A:             var_1B8 = Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)
  loc_172C070:             Proc_6_39_E7D3A0(var_1EC, CVar(var_C4.Fields.Item("Amount")))
  loc_172C0B0:             var_158 = CVar(var_1B8) 'String
  loc_172C0B3:             var_168 = (Space(&H31) + var_158)
  loc_172C0BA:             var_190 = (Chr(&H12) + Space(4))
  loc_172C0C4:             var_240 = (var_C4.Fields.Item("DispName").Value + CVar(Proc_6_52_EAE084(CStr(Format(var_1EC, "0.00")), &HA, 1)))
  loc_172C0CA:             Print 1, CVar(var_C4.Fields.Item("Amount"))
  loc_172C0FF:           End If
  loc_172C0FF:         End If
  loc_172C0FF:       End If
  loc_172C102:       var_C4.MoveNext
  loc_172C107:       GoTo loc_172BA6F
  loc_172C10A:     End If
  loc_172C10D:     var_BC.MoveNext
  loc_172C112:     GoTo loc_172AA9F
  loc_172C115:   End If
  loc_172C12F:   Call Proc_162_105_10ACE60("* THANKS FOR YOUR VISIT *", "A", &H4E, var_1B8)
  loc_172C139:   Print 1, var_1B8
  loc_172C14A:   Print 1
  loc_172C152:   Print 1
  loc_172C15A:   Print 1
  loc_172C175:   var_138 = (Space(&H48) + "CASHIER")
  loc_172C17B:   Print 1, var_C4.Fields.Item("DispName").Value
  loc_172C19A:   Print 1, Chr(&HC)
  loc_172C1A5:   Close 1
  loc_172C1AE:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_172C1E4:   var_138 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_172C1EA:   Print 1, var_138
  loc_172C200:   Close 1
  loc_172C20A:   If (MemVar_1F953BC = "Y") Then
  loc_172C226:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_172C230:   Else
  loc_172C249:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_172C250:   End If
  loc_172C255:   Set var_BC = Nothing
  loc_172C25D:   Set var_C0 = Nothing
  loc_172C265:   Set var_C4 = Nothing
  loc_172C26B: Else
  loc_172C284:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_138, var_158, Chr(&H12))
  loc_172C294: End If
  loc_172C294: Exit Sub
  loc_172C295: ' Referenced from: 172A724
  loc_172C295: Proc_6_60_E63754(1, var_9A)
  loc_172C29A: Exit Sub
End Sub

Public Sub Proc_162_87_EFAED4
  'Data Table: 586158
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_1FD4 As Variant
  loc_EFAE04: Set var_88 = Me.TopCtrl1
  loc_EFAE0A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_EFAE23: If (CStr() = "Browse") Then
  loc_EFAE26:   Exit Sub
  loc_EFAE27: End If
  loc_EFAE66: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(8))) Then
  loc_EFAE7C:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EFAE84:   var_E0 = CVar(CLng(&H19)) 'Long
  loc_EFAEB7:   If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_EFAEC3:     Call FGrid_UnknownEvent_C()
  loc_EFAECD:     global_158 = 0
  loc_EFAED0:   End If
  loc_EFAED0: End If
  loc_EFAED0: Exit Sub
  loc_EFAED1: var_1FD4 = CVar(global_158) 'Double
End Sub

Public Sub Proc_162_88_111C610(arg_C) '111C610
  'Data Table: 586158
  Dim var_98 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_B4 As String
  Dim var_B0 As TextBox
  Dim var_108 As Variant
  Dim var_128 As Variant
  loc_111C2D4: If (arg_C = 0) Then
  loc_111C2EA:   var_AC = CLng(Me.FGrid.Col)
  loc_111C2FA:   If (var_AC = CLng(&H1D)) Then
  loc_111C307:     Set var_98 = Me.TxtGrid
  loc_111C30D:     Call 0.Method_Proc_162_88_111C6100 (arg_C, var_B0)
  loc_111C325:     If Not(IsNumeric(CVar(var_B0))) Then
  loc_111C339:       Set var_98 = Me.TxtGrid
  loc_111C33F:       Call 0.Method_Proc_162_88_111C6100 (arg_C, var_B0, CStr(0))
  loc_111C347:       var_B0.Text = var_AC
  loc_111C356:     End If
  loc_111C363:     Set var_98 = Me.TxtGrid
  loc_111C369:     Call 0.Method_Proc_162_88_111C6100 (arg_C, var_B0)
  loc_111C389:     var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111C391:     var_128 = CVar(CLng(&H1D)) 'Long
  loc_111C3CB:     LateIdCallSt
  loc_111C3F2:     Call Proc_162_102_19DD7D0(CInt(&H1D), Me.FGrid, CVar(CStr(Format(CVar(var_B0.Text), "0.00"))), 1)
  loc_111C3FA:   Else
  loc_111C401:     If (var_AC = CLng(&H1E)) Then
  loc_111C40E:       Set var_98 = Me.TxtGrid
  loc_111C414:       Call 0.Method_Proc_162_88_111C6100 (arg_C, var_B0, 1)
  loc_111C42C:       If Not(IsNumeric(CVar(var_B0))) Then
  loc_111C433:         var_B4 = CStr(0)
  loc_111C440:         Set var_98 = Me.TxtGrid
  loc_111C446:         Call 0.Method_Proc_162_88_111C6100 (arg_C, var_B0, var_B4)
  loc_111C44E:         var_B0.Text = var_128
  loc_111C45D:       End If
  loc_111C46A:       Set var_98 = Me.TxtGrid
  loc_111C470:       Call 0.Method_Proc_162_88_111C6100 (arg_C, var_B0, var_B4)
  loc_111C478:       var_108 = var_B0.Text
  loc_111C490:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111C498:       var_128 = CVar(CLng(&H1E)) 'Long
  loc_111C4D2:       LateIdCallSt
  loc_111C4F9:       Call Proc_162_102_19DD7D0(CInt(&H1E), Me.FGrid, CVar(CStr(Format(CVar(var_B4), "0.00"))), 1)
  loc_111C501:     Else
  loc_111C508:       If (var_AC = CLng(&H1F)) Then
  loc_111C515:         Set var_98 = Me.TxtGrid
  loc_111C51B:         Call 0.Method_Proc_162_88_111C6100 (arg_C, var_B0, 1)
  loc_111C533:         If Not(IsNumeric(CVar(var_B0))) Then
  loc_111C53A:           var_B4 = CStr(0)
  loc_111C547:           Set var_98 = Me.TxtGrid
  loc_111C54D:           Call 0.Method_Proc_162_88_111C6100 (arg_C, var_B0, var_B4)
  loc_111C555:           var_B0.Text = var_128
  loc_111C564:         End If
  loc_111C571:         Set var_98 = Me.TxtGrid
  loc_111C577:         Call 0.Method_Proc_162_88_111C6100 (arg_C, var_B0, var_B4)
  loc_111C57F:         var_108 = var_B0.Text
  loc_111C597:         var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111C59F:         var_128 = CVar(CLng(&H1F)) 'Long
  loc_111C5D9:         LateIdCallSt
  loc_111C600:         Call Proc_162_102_19DD7D0(CInt(&H1F), Me.FGrid, CVar(CStr(Format(CVar(var_B4), "0.00"))), 1)
  loc_111C605:       End If
  loc_111C605:     End If
  loc_111C605:   End If
  loc_111C605: End If
  loc_111C60A: Proc_162_88_111C610 = &HFF
End Sub

Public Sub Proc_162_89_1B43764
  'Data Table: 586158
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_B8 As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim unk_586184 As Connection15
  Dim var_138 As Recordset15
  Dim var_13C As Variant
  Dim var_140 As String
  Dim var_134 As Variant
  Dim var_CC As Variant
  Dim var_8C As Recordset15
  Dim var_14C As Double
  Dim var_88 As Recordset15
  Dim var_164 As Variant
  Dim var_8E As Integer
  Dim var_9E As Integer
  Dim var_9A As Integer
  Dim var_120 As Variant
  Dim var_17C As Variant
  Dim var_130 As Variant
  Dim var_1A8 As String
  Dim var_160 As Variant
  Dim var_18C As Variant
  Dim var_1B8 As Variant
  Dim var_1F8 As Variant
  Dim var_204 As Field20
  Dim var_20C As Variant
  Dim var_210 As String
  Dim var_1F4 As Field20
  Dim var_208 As Variant
  loc_1B3EC48: On Error Goto loc_1B4370F
  loc_1B3EC58: Me.lblTable.Caption = vbNullString
  loc_1B3EC77: If (Me.RecordCount > 0) Then
  loc_1B3ECB9:   var_EC = "Select S.* From Sale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_1B3ECD0:   unk_586184.Execute CStr(var_EC & "'"), var_130, -1
  loc_1B3ECF8:   Set var_138 = var_134 
  loc_1B3ED35:   Set var_134 = Me.Txt
  loc_1B3ED3B:   Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_13C)
  loc_1B3ED43:   var_13C.Text = CStr(var_138.Fields.Item("DocID").Value)
  loc_1B3ED73:   var_BC = var_138.Fields.Item("vType")
  loc_1B3ED7B:   var_CC = var_BC.Value
  loc_1B3EDA1:   var_DC = 0
  loc_1B3EDD1:   unk_586184.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_CC) & "'", var_CC, -1
  loc_1B3EDD9:   var_A4 = var_A4.Fields
  loc_1B3EDE1:   var_DC = var_BC.Item(var_BC)
  loc_1B3EDE9:   var_134 = var_134.Value
  loc_1B3EDF8:   global_132 = CStr(var_EC)
  loc_1B3EE4E:   Set var_134 = Me.Txt
  loc_1B3EE54:   Call 0.Method_Proc_162_89_1B437640 (CInt(0), var_13C, CStr(var_138.Fields.Item("VNo").Value))
  loc_1B3EE5C:   var_13C.Text = var_EC
  loc_1B3EE89:   var_BC = var_138.Fields.Item("VDate")
  loc_1B3EEC4:   Set var_134 = Me.Txt
  loc_1B3EECA:   Call 0.Method_Proc_162_89_1B437640 (CInt(1), var_13C, CStr(Format(CVar(var_BC), "DD/MMM/YYYY")))
  loc_1B3EED2:   var_13C.Text = 1
  loc_1B3EEF7:   Set var_A4 = Me.Txt
  loc_1B3EEFD:   Call 0.Method_Proc_162_89_1B437640 (CInt(1), var_BC)
  loc_1B3EF2F:   Call Proc_162_100_17EDFF0(CDate(Format(CVar(var_BC), "DD/MMM/YYYY")), 1, 1)
  loc_1B3EF72:   Set var_134 = Me.LblVPrefix
  loc_1B3EF78:   var_134.Caption = CStr(var_138.Fields.Item("vPrefix").Value)
  loc_1B3EFBD:   global_140 = CStr(var_138.Fields.Item("KOTNo").Value)
  loc_1B3EFDF:   If (global_212 = "Hall") Then
  loc_1B3F01E:     var_EC = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_138.Fields.Item("RoomNo").Value 
  loc_1B3F035:     unk_586184.Execute CStr(var_EC & "'"), var_130, -1
  loc_1B3F040:     Set var_8C = var_134
  loc_1B3F06E:     If (var_8C.RecordCount > 0) Then
  loc_1B3F0B0:       Call 0.Method_Proc_162_89_1B437640 (CInt(3), var_13C, CStr(var_8C.Fields.Item(0).Value))
  loc_1B3F0B8:       var_13C.Text = Me.Txt
  loc_1B3F0CE:     End If
  loc_1B3F0D1:   Else
  loc_1B3F107:     Set var_134 = Me.Txt
  loc_1B3F10D:     Call 0.Method_Proc_162_89_1B437640 (CInt(3), var_13C)
  loc_1B3F115:     var_13C.Text = Proc_6_38_E69628(CVar(var_138.Fields.Item("RoomNo")), 1)
  loc_1B3F129:   End If
  loc_1B3F15F:   Set var_134 = Me.Txt
  loc_1B3F165:   Call 0.Method_Proc_162_89_1B437640 (CInt(3), var_13C)
  loc_1B3F16D:   var_13C.Tag = Proc_6_38_E69628(CVar(var_138.Fields.Item("RoomNo")))
  loc_1B3F1A7:   Proc_6_39_E7D3A0(var_EC, CVar(var_138.Fields.Item("GuarAtt")))
  loc_1B3F1BE:   Set var_134 = Me.Txt
  loc_1B3F1C4:   Call 0.Method_Proc_162_89_1B437640 (CInt(4), var_13C)
  loc_1B3F1CC:   var_13C.Text = CStr(var_EC)
  loc_1B3F20F:   var_EC = "hh:nn"
  loc_1B3F236:   Set var_134 = Me.Txt
  loc_1B3F23C:   Call 0.Method_Proc_162_89_1B437640 (CInt(5), var_13C, CStr(Format(CVar(var_138.Fields.Item("VTIME")), var_EC)))
  loc_1B3F244:   var_13C.Text = 1
  loc_1B3F2A6:   var_140 = Replace(CStr(var_138.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_1B3F2AE:   var_14C = Val("Select NCAT From Voucher_Type Where V_Type='" & CStr(var_138.Fields.Item("VTIME").Value) & "'")
  loc_1B3F2DA:   unk_586184.Execute "Select Name From SessionMast WHERE " & CStr(var_14C) & " BETWEEN FromTime AND ToTime", var_EC, -1
  loc_1B3F2E5:   Set var_94 = var_134
  loc_1B3F31C:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1B3F351:     Set var_134 = Me.lblSession
  loc_1B3F357:     var_134.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")), var_134, var_14C)
  loc_1B3F369:   End If
  loc_1B3F36B:   Set var_138 = Nothing 
  loc_1B3F3C5:   unk_586184.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_130, -1
  loc_1B3F3D0:   Set var_88 = var_134
  loc_1B3F3FE:   If (var_88.RecordCount > 0) Then
  loc_1B3F431:     Call Proc_162_100_17EDFF0(CDate(var_88.Fields.Item("SunAppDate").Value), var_134)
  loc_1B3F440:     ' Referenced from: 1B3F8D4
  loc_1B3F44F:     If Not(var_88.EOF) Then
  loc_1B3F4B2:       Set var_160 = Me.LblCap
  loc_1B3F4B8:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164, CStr(var_88.Fields.Item("SunCode").Value))
  loc_1B3F4C0:       var_164.Tag = 1
  loc_1B3F53E:       Set var_160 = Me.TxtPer
  loc_1B3F544:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3F54C:       var_164.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1B3F5CA:       Set var_160 = Me.LblCap
  loc_1B3F5D0:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3F5D8:       var_164.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1B3F656:       Set var_160 = Me.LblAt
  loc_1B3F65C:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3F664:       var_164.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_1B3F6DF:       Set var_160 = Me.TxtGt
  loc_1B3F6E5:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3F6ED:       var_164.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B3F769:       Set var_160 = Me.TxtPer
  loc_1B3F76F:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B3F777:       var_164.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_1B3F7D3:       var_130 = var_88.Fields.Item("SNo").Value
  loc_1B3F7E7:       var_EC = "0.00"
  loc_1B3F80E:       Set var_160 = Me.TxtGt
  loc_1B3F814:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_130), var_164, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_EC)))
  loc_1B3F81C:       var_164.Text = 1
  loc_1B3F853:       var_BC = var_88.Fields.Item("BaseAmount")
  loc_1B3F862:       Proc_6_39_E7D3A0(var_EC, CVar(var_BC))
  loc_1B3F86A:       var_110 = CStr(var_EC)
  loc_1B3F883:       var_134 = var_88.Fields
  loc_1B3F88B:       var_13C = var_134.Item("SNo")
  loc_1B3F8A0:       Set var_160 = Me.LblDummy
  loc_1B3F8A6:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_13C.Value), var_164, var_110)
  loc_1B3F8AE:       var_164.Caption = 1
  loc_1B3F8CF:       var_88.MoveNext
  loc_1B3F8D4:       GoTo loc_1B3F440
  loc_1B3F8D7:     End If
  loc_1B3F8D7:   End If
  loc_1B3F8F5:   Set var_A4 = Me.Txt
  loc_1B3F8FB:   Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='")
  loc_1B3F903:   var_CC = var_BC.Text
  loc_1B3F90C:   var_140 = -1 & var_110
  loc_1B3F91C:   unk_586184.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_CC) & "'" & "' And PayType='Cash'", var_134, var_134
  loc_1B3F927:   Set var_8C = var_134
  loc_1B3F94D:   Set var_A4 = Me.Txt
  loc_1B3F953:   Call 0.Method_Proc_162_89_1B437640 (CInt(6), var_BC)
  loc_1B3F95B:   var_BC.Text = vbNullString
  loc_1B3F975:   Set var_A4 = Me.Txt
  loc_1B3F97B:   Call 0.Method_Proc_162_89_1B437640 (CInt(7), var_BC)
  loc_1B3F983:   var_BC.Text = vbNullString
  loc_1B3F99D:   Set var_A4 = Me.Txt
  loc_1B3F9A3:   Call 0.Method_Proc_162_89_1B437640 (CInt(8), var_BC)
  loc_1B3F9AB:   var_BC.Text = vbNullString
  loc_1B3F9CB:   If (var_8C.RecordCount > 0) Then
  loc_1B3FA20:     Set var_134 = Me.Txt
  loc_1B3FA26:     Call 0.Method_Proc_162_89_1B437640 (CInt(6), var_13C, CStr(Format(CVar(var_8C.Fields.Item("Amount")), "0.00")))
  loc_1B3FA2E:     var_13C.Text = 1
  loc_1B3FA9A:     Set var_134 = Me.Txt
  loc_1B3FAA0:     Call 0.Method_Proc_162_89_1B437640 (CInt(7), var_13C, CStr(Format(CVar(var_8C.Fields.Item("TipAmt")), "0.00")))
  loc_1B3FAA8:     var_13C.Text = 1
  loc_1B3FAC2:   End If
  loc_1B3FAD1:   Me.FGrid.Redraw = False
  loc_1B3FAEC:   Me.FGrid.Rows = 1
  loc_1B3FAF6:   var_8E = 1
  loc_1B3FB06:   var_DC = "Select S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,IC.TAxStru as TaxCode,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And I.RestCode=S.ItemRestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_1B3FB4F:   unk_586184.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_130, -1
  loc_1B3FB5A:   Set var_88 = var_134
  loc_1B3FB88:   If (var_88.RecordCount > 0) Then
  loc_1B3FB98:     ReDim Preserve var_98(0 To 0)
  loc_1B3FBA2:     ' Referenced from: 1B40C6C
  loc_1B3FBB1:     If Not(var_88.EOF) Then
  loc_1B3FBB4:       var_B8 = vbNullString
  loc_1B3FBBE:       Set var_A4 = Me.FGrid
  loc_1B3FBDC:       For var_168 = 0 To CInt(UBound(var_98, 1)): var_9C = var_168 'Integer
  loc_1B3FBED:         var_B8 = "RoomNo"
  loc_1B3FC20:         If (var_134 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_B8)), var_98(CLng(var_9C)), 0, FGrid.DispID_10000, var_B8)) Then
  loc_1B3FC25:           var_9E = &HFF
  loc_1B3FC28:         End If
  loc_1B3FC2B:       Next var_168 'Integer
  loc_1B3FC36:       If (var_9E = 0) Then
  loc_1B3FC45:         ReDim Preserve var_98(0 To CLng(var_9A))
  loc_1B3FC81:         var_98(CLng(var_9A)) = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")))
  loc_1B3FC91:         var_9A = (var_9A + 1)
  loc_1B3FC94:       End If
  loc_1B3FC96:       var_9E = 0
  loc_1B3FC9D:       Set var_16C = Me.FGrid
  loc_1B3FCA4:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_1B3FCAC:       var_120 = CVar(CLng(0)) 'Long
  loc_1B3FCDC:       var_EC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1B3FCE3:       LateIdCallSt
  loc_1B3FD32:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3FD39:       LateIdCallSt
  loc_1B3FD84:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3FD8B:       LateIdCallSt
  loc_1B3FDD6:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3FDDD:       LateIdCallSt
  loc_1B3FE28:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3FE2F:       LateIdCallSt
  loc_1B3FE7A:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B3FE81:       LateIdCallSt
  loc_1B3FEB3:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3FEBB:       var_17C = CVar(CLng(7)) 'Long
  loc_1B3FEE8:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_1B3FEEF:       LateIdCallSt
  loc_1B3FF25:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3FF2D:       var_17C = CVar(CLng(8)) 'Long
  loc_1B3FF5A:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_1B3FF61:       LateIdCallSt
  loc_1B3FF97:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B3FF9F:       var_17C = CVar(CLng(9)) 'Long
  loc_1B3FFCC:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1B3FFD3:       LateIdCallSt
  loc_1B40009:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B40011:       var_17C = CVar(CLng(&HA)) 'Long
  loc_1B4003E:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1B40045:       LateIdCallSt
  loc_1B4005F:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_1B40067:       var_120 = CVar(CLng(&HB)) 'Long
  loc_1B40097:       var_EC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1B4009E:       LateIdCallSt
  loc_1B400D4:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B400DC:       var_17C = CVar(CLng(&HE)) 'Long
  loc_1B40109:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1B40110:       LateIdCallSt
  loc_1B40146:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B4014E:       var_17C = CVar(CLng(&HF)) 'Long
  loc_1B4017B:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_1B40182:       LateIdCallSt
  loc_1B401B8:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B401C0:       var_17C = CVar(CLng(&H10)) 'Long
  loc_1B401ED:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_1B401F4:       LateIdCallSt
  loc_1B4022A:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_1B40232:       var_17C = CVar(CLng(&H11)) 'Long
  loc_1B4025F:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1B40266:       LateIdCallSt
  loc_1B402D8:       LateIdCallSt
  loc_1B40327:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_16C, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1B4032E:       LateIdCallSt
  loc_1B40379:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_16C, var_EC, CVar(CLng(&H12)))) 'String
  loc_1B40380:       LateIdCallSt
  loc_1B403CB:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B403D2:       LateIdCallSt
  loc_1B4041D:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B40424:       LateIdCallSt
  loc_1B40465:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_1B4046D:       var_120 = CVar(CLng(5)) 'Long
  loc_1B40488:       var_110 = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_16C, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_16C, var_EC, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_1B4049A:       LateIdCallSt
  loc_1B404F0:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_16C, CVar(CStr(Val(var_110))), CVar(CLng(&HD)))) 'String
  loc_1B404F7:       LateIdCallSt
  loc_1B40540:       Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_16C, var_EC)
  loc_1B40550:       LateIdCallSt
  loc_1B4059D:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_16C, CVar(CStr(var_EC)))) 'String
  loc_1B405A4:       LateIdCallSt
  loc_1B405EF:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_16C, var_EC)) 'String
  loc_1B405F6:       LateIdCallSt
  loc_1B4063F:       Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_16C, var_EC)
  loc_1B4064F:       LateIdCallSt
  loc_1B4068B:       var_BC = var_88.Fields.Item("Godowncode")
  loc_1B40693:       var_CC = CVar(var_BC) 'Address
  loc_1B4069C:       var_EC = CVar(Proc_6_38_E69628(var_CC, CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_16C, CVar(CStr(var_EC)))) 'String
  loc_1B406A3:       LateIdCallSt
  loc_1B406E2:       Set var_A4 = Me.Txt
  loc_1B406E8:       Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110, "SELECT Count(*) FROM SplitBillDetail WHERE DocId='", var_CC, -1, var_134)
  loc_1B406F0:       var_13C = var_BC.Text
  loc_1B40727:       unk_586184.Execute 0 & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1D), var_160, var_EC
  loc_1B4072F:       var_16C = var_134.Fields
  loc_1B40737:       var_DC = var_13C.Item(var_EC)
  loc_1B4073F:        = var_160.Value
  loc_1B40776:       If (var_EC = 0) Then
  loc_1B4077D:         var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1B40785:         var_FC = CVar(CLng(&H1D)) 'Long
  loc_1B4078A:         var_17C = "0.00"
  loc_1B40793:         LateIdCallSt
  loc_1B4079E:       Else
  loc_1B407AC:         Set var_A4 = Me.Txt
  loc_1B407B2:         Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110, var_16C)
  loc_1B407BA:         var_17C = var_BC.Text
  loc_1B407C2:         var_DC = 0
  loc_1B40804:         var_1A8 = "SELECT BillQty FROM SplitBillDetail WHERE DocId='" & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1D)
  loc_1B4080D:         unk_586184.Execute var_1A8, var_CC, -1
  loc_1B40815:         var_134 = var_134.Fields
  loc_1B4081D:         var_DC = var_13C.Item(var_13C)
  loc_1B40826:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_1B4082E:         var_18C = CVar(CLng(&H1D)) 'Long
  loc_1B4084B:         var_EC = CVar(var_160) 'Address
  loc_1B4085B:         var_1B8 = CVar(CStr(Format(var_EC, "0.00"))) 'String
  loc_1B40862:         LateIdCallSt
  loc_1B40895:       End If
  loc_1B408C2:       Set var_A4 = Me.Txt
  loc_1B408C8:       Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110, "SELECT Count(*) FROM SplitBillDetail WHERE DocId='", var_CC, -1, var_134)
  loc_1B408D0:       var_13C = var_BC.Text
  loc_1B40907:       unk_586184.Execute 0 & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1E), var_160, var_EC
  loc_1B4090F:       var_16C = var_134.Fields
  loc_1B40917:       1 = var_13C.Item(var_1B8)
  loc_1B4091F:        = var_160.Value
  loc_1B40956:       If (var_EC = 0) Then
  loc_1B4095D:         var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1B40965:         var_FC = CVar(CLng(&H1E)) 'Long
  loc_1B4096A:         var_17C = "0.00"
  loc_1B40973:         LateIdCallSt
  loc_1B4097E:       Else
  loc_1B4098C:         Set var_A4 = Me.Txt
  loc_1B40992:         Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110, var_16C)
  loc_1B4099A:         var_17C = var_BC.Text
  loc_1B409A2:         var_DC = 0
  loc_1B409E4:         var_1A8 = "SELECT BillQty FROM SplitBillDetail WHERE DocId='" & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1E)
  loc_1B409ED:         unk_586184.Execute var_1A8, var_CC, -1
  loc_1B409F5:         var_134 = var_134.Fields
  loc_1B409FD:         var_DC = var_13C.Item(var_13C)
  loc_1B40A06:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_1B40A0E:         var_18C = CVar(CLng(&H1E)) 'Long
  loc_1B40A2B:         var_EC = CVar(var_160) 'Address
  loc_1B40A3B:         var_1B8 = CVar(CStr(Format(var_EC, "0.00"))) 'String
  loc_1B40A42:         LateIdCallSt
  loc_1B40A75:       End If
  loc_1B40AA2:       Set var_A4 = Me.Txt
  loc_1B40AA8:       Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110, "SELECT Count(*) FROM SplitBillDetail WHERE DocId='", var_CC, -1, var_134)
  loc_1B40AB0:       var_13C = var_BC.Text
  loc_1B40AE7:       unk_586184.Execute 0 & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1F), var_160, var_EC
  loc_1B40AEF:       var_16C = var_134.Fields
  loc_1B40AF7:       1 = var_13C.Item(var_1B8)
  loc_1B40AFF:        = var_160.Value
  loc_1B40B36:       If (var_EC = 0) Then
  loc_1B40B3D:         var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1B40B45:         var_FC = CVar(CLng(&H1F)) 'Long
  loc_1B40B4A:         var_17C = "0.00"
  loc_1B40B53:         LateIdCallSt
  loc_1B40B5E:       Else
  loc_1B40B6C:         Set var_A4 = Me.Txt
  loc_1B40B72:         Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110, var_16C)
  loc_1B40B7A:         var_17C = var_BC.Text
  loc_1B40B82:         var_DC = 0
  loc_1B40BC4:         var_1A8 = "SELECT BillQty FROM SplitBillDetail WHERE DocId='" & var_110 & "' AND Sno=" & CStr(var_8E) & " AND BillCat=" & CStr(&H1F)
  loc_1B40BCD:         unk_586184.Execute var_1A8, var_CC, -1
  loc_1B40BD5:         var_134 = var_134.Fields
  loc_1B40BDD:         var_DC = var_13C.Item(var_13C)
  loc_1B40BE6:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_1B40BEE:         var_18C = CVar(CLng(&H1F)) 'Long
  loc_1B40C1B:         var_1B8 = CVar(CStr(Format(CVar(var_160), "0.00"))) 'String
  loc_1B40C22:         LateIdCallSt
  loc_1B40C55:       End If
  loc_1B40C57:       Set var_16C = Nothing 
  loc_1B40C61:       var_8E = (var_8E + 1)
  loc_1B40C67:       var_88.MoveNext
  loc_1B40C6C:       GoTo loc_1B3FBA2
  loc_1B40C6F:     End If
  loc_1B40C82:     Me.FGrid.FixedRows = 1
  loc_1B40C98:     Set var_A4 = Me.Txt
  loc_1B40C9E:     Call 0.Method_Proc_162_89_1B437640 (CInt(3), var_BC, vbNullString, var_8E, var_16C, var_1B8, 1)
  loc_1B40CA6:     var_BC.Text = 1
  loc_1B40CBF:     For var_1CC = 0 To CInt(UBound(var_98, 1)): var_9A = var_1CC 'Integer
  loc_1B40CD3:       Set var_A4 = Me.Txt
  loc_1B40CD9:       Call 0.Method_Proc_162_89_1B437640 (CInt(3), var_BC, var_110, 0, var_18C)
  loc_1B40CE1:       var_120 = var_BC.Text
  loc_1B40D07:       Set var_134 = Me.Txt
  loc_1B40D0D:       Call 0.Method_Proc_162_89_1B437640 (CInt(3), var_13C, var_110 & var_98(CLng(var_9A)) & ",")
  loc_1B40D15:       var_13C.Text = var_160
  loc_1B40D31:     Next var_1CC 'Integer
  loc_1B40D41:     Set var_A4 = Me.Txt
  loc_1B40D47:     Call 0.Method_Proc_162_89_1B437640 (CInt(3))
  loc_1B40D57:     Set var_134 = Me.Txt
  loc_1B40D5D:     Call 0.Method_Proc_162_89_1B437640 (CInt(3), var_13C)
  loc_1B40D7D:     var_130 = (Len(Trim(CVar(var_13C))) - 1)
  loc_1B40D90:     var_1B8 = CVar(var_BC) 'Address
  loc_1B40DAE:     Set var_160 = Me.Txt
  loc_1B40DB4:     Call 0.Method_Proc_162_89_1B437640 (CInt(3), var_164)
  loc_1B40DBC:     var_164.Text = CStr(Mid(var_1B8, 1, Format(CVar(var_160), "0.00")))
  loc_1B40DDC:   End If
  loc_1B40DEA:   Me.FGrid.Redraw = True
  loc_1B40E06:   var_EC = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1B40E3F:   var_130 = var_EC & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1B40E4D:   unk_586184.Execute CStr(var_130), var_1B8, -1
  loc_1B40E58:   Set var_88 = var_134
  loc_1B40E87:   Me.FGCat.Rows = 1
  loc_1B40EA3:   If (var_88.RecordCount > 0) Then
  loc_1B40EA6:     ' Referenced from: 1B4126E
  loc_1B40EB5:     If Not(var_88.EOF) Then
  loc_1B40EBC:       Set var_1F0 = Me.FGCat
  loc_1B40EBF:       var_B8 = vbNullString
  loc_1B40EE9:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B40EF1:       var_120 = CVar(CLng(0)) 'Long
  loc_1B40F21:       var_10C = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_1B40F28:       LateIdCallSt
  loc_1B40F5B:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B40F63:       var_120 = CVar(CLng(1)) 'Long
  loc_1B40F93:       var_10C = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1B40F9A:       LateIdCallSt
  loc_1B40FCD:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B40FD5:       var_120 = CVar(CLng(2)) 'Long
  loc_1B41005:       var_10C = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1B4100C:       LateIdCallSt
  loc_1B4103F:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B41047:       var_120 = CVar(CLng(3)) 'Long
  loc_1B41077:       var_10C = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1B4107E:       LateIdCallSt
  loc_1B410B1:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B410B9:       var_120 = CVar(CLng(4)) 'Long
  loc_1B410E9:       var_10C = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_1B410F0:       LateIdCallSt
  loc_1B41123:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B4112B:       var_120 = CVar(CLng(5)) 'Long
  loc_1B4115B:       var_10C = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_1B41162:       LateIdCallSt
  loc_1B41195:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B4119D:       var_120 = CVar(CLng(6)) 'Long
  loc_1B411CD:       var_10C = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_1B411D4:       LateIdCallSt
  loc_1B41207:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1B4120F:       var_120 = CVar(CLng(7)) 'Long
  loc_1B4123F:       var_10C = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_1B41246:       LateIdCallSt
  loc_1B41262:       Set var_1F0 = Nothing 
  loc_1B41269:       var_88.MoveNext
  loc_1B4126E:       GoTo loc_1B40EA6
  loc_1B41271:     End If
  loc_1B41271:   End If
  loc_1B41277:   If (var_8E = 1) Then
  loc_1B4128D:     Me.FGrid.Rows = 1
  loc_1B41299:     Set var_134 = Me.FGrid
  loc_1B412B3:     var_CC = CVar(CStr(Proc_6_127_F25B10(var_134, CInt(0), var_1F0, var_10C, var_120, "'", var_1F0, var_10C))) 'String
  loc_1B412BB:     Set var_BC = Me.FGrid
  loc_1B412E8:     Me.FGrid.FixedRows = 1
  loc_1B412F0:   End If
  loc_1B412F3: Else
  loc_1B412F3:   Call Proc_162_91_10AC218(FGrid.DispID_10000, var_CC, var_120, "'", var_1F0)
  loc_1B412F8: End If
  loc_1B412F8: Call Proc_162_93_EF84A4(var_10C, var_120)
  loc_1B41314: If (Me.RecordCount > 0) Then
  loc_1B4136D:   unk_586184.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_130, -1
  loc_1B41378:   Set var_88 = var_134
  loc_1B413A6:   If (var_88.RecordCount > 0) Then
  loc_1B413A9:     ' Referenced from: 1B434BD
  loc_1B413AF:     var_15A = var_88.EOF
  loc_1B413B8:     If Not(var_15A) Then
  loc_1B413F2:       Call 0.Method_Proc_162_89_1B437648 (var_15A, var_88.Fields.Item("SNo").Value, Me.LblDummy1)
  loc_1B4140C:       If (CVar(var_15A) > CVar(var_15A)) Then
  loc_1B41441:         Set var_134 = Me.LblDummy1
  loc_1B41447:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B41458:         Me.LblDummy1.Load var_13C
  loc_1B4149F:         Set var_134 = Me.LblDummy1
  loc_1B414A5:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B414AD:         var_13C.Visible = False
  loc_1B414C0:       End If
  loc_1B414F1:       Set var_134 = Me.LblCap1
  loc_1B414F7:       Call 0.Method_Proc_162_89_1B437648 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B41511:       If (var_1F0 > CVar(var_15A)) Then
  loc_1B41546:         Set var_134 = Me.LblCap1
  loc_1B4154C:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B4155D:         Me.LblCap1.Load var_13C
  loc_1B415CC:         Set var_1F4 = Me.LblCap1
  loc_1B415D2:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B41614:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B4161D:         Set var_134 = Me.LblCap1
  loc_1B41623:         Call 0.Method_Proc_162_89_1B437640 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B41647:         Set var_208 = Me.LblCap1
  loc_1B4164D:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B41655:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B4167E:       End If
  loc_1B416AF:       Set var_134 = Me.TxtGt1
  loc_1B416B5:       Call 0.Method_Proc_162_89_1B437648 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B416CF:       If (var_13C > CVar(var_15A)) Then
  loc_1B41704:         Set var_134 = Me.TxtGt1
  loc_1B4170A:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B4171B:         Me.TxtGt1.Load var_13C
  loc_1B4178A:         Set var_1F4 = Me.TxtGt1
  loc_1B41790:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B417D2:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B417DB:         Set var_134 = Me.TxtGt1
  loc_1B417E1:         Call 0.Method_Proc_162_89_1B437640 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B41805:         Set var_208 = Me.TxtGt1
  loc_1B4180B:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B41813:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B4183C:       End If
  loc_1B4186D:       Set var_134 = Me.LblDummy2
  loc_1B41873:       Call 0.Method_Proc_162_89_1B437648 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B4188D:       If (var_13C > CVar(var_15A)) Then
  loc_1B418C2:         Set var_134 = Me.LblDummy2
  loc_1B418C8:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B418D9:         Me.LblDummy2.Load var_13C
  loc_1B41920:         Set var_134 = Me.LblDummy2
  loc_1B41926:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B4192E:         var_13C.Visible = False
  loc_1B41941:       End If
  loc_1B41972:       Set var_134 = Me.LblCap2
  loc_1B41978:       Call 0.Method_Proc_162_89_1B437648 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B41992:       If (var_13C > CVar(var_15A)) Then
  loc_1B419C7:         Set var_134 = Me.LblCap2
  loc_1B419CD:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B419DE:         Me.LblCap2.Load var_13C
  loc_1B41A4D:         Set var_1F4 = Me.LblCap2
  loc_1B41A53:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B41A95:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B41A9E:         Set var_134 = Me.LblCap2
  loc_1B41AA4:         Call 0.Method_Proc_162_89_1B437640 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B41AC8:         Set var_208 = Me.LblCap2
  loc_1B41ACE:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B41AD6:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B41AFF:       End If
  loc_1B41B30:       Set var_134 = Me.TxtGt2
  loc_1B41B36:       Call 0.Method_Proc_162_89_1B437648 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B41B50:       If (var_13C > CVar(var_15A)) Then
  loc_1B41B85:         Set var_134 = Me.TxtGt2
  loc_1B41B8B:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B41B9C:         Me.TxtGt2.Load var_13C
  loc_1B41C0B:         Set var_1F4 = Me.TxtGt2
  loc_1B41C11:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B41C53:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B41C5C:         Set var_134 = Me.TxtGt2
  loc_1B41C62:         Call 0.Method_Proc_162_89_1B437640 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B41C86:         Set var_208 = Me.TxtGt2
  loc_1B41C8C:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B41C94:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B41CBD:       End If
  loc_1B41CEE:       Set var_134 = Me.LblDummy3
  loc_1B41CF4:       Call 0.Method_Proc_162_89_1B437648 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B41D0E:       If (var_13C > CVar(var_15A)) Then
  loc_1B41D43:         Set var_134 = Me.LblDummy3
  loc_1B41D49:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B41D5A:         Me.LblDummy3.Load var_13C
  loc_1B41DA1:         Set var_134 = Me.LblDummy3
  loc_1B41DA7:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B41DAF:         var_13C.Visible = False
  loc_1B41DC2:       End If
  loc_1B41DF3:       Set var_134 = Me.LblCap3
  loc_1B41DF9:       Call 0.Method_Proc_162_89_1B437648 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B41E13:       If (var_13C > CVar(var_15A)) Then
  loc_1B41E48:         Set var_134 = Me.LblCap3
  loc_1B41E4E:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B41E5F:         Me.LblCap3.Load var_13C
  loc_1B41ECE:         Set var_1F4 = Me.LblCap3
  loc_1B41ED4:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_1F8)
  loc_1B41F16:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B41F1F:         Set var_134 = Me.LblCap3
  loc_1B41F25:         Call 0.Method_Proc_162_89_1B437640 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B41F49:         Set var_208 = Me.LblCap3
  loc_1B41F4F:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B41F57:         var_20C.Top = ((var_13C.Top + var_1F8.Height) + CDbl(&HF))
  loc_1B41F80:       End If
  loc_1B41FB1:       Set var_134 = Me.TxtGt3
  loc_1B41FB7:       Call 0.Method_Proc_162_89_1B437648 (var_15A, var_88.Fields.Item("SNo").Value)
  loc_1B41FD1:       If (var_13C > CVar(var_15A)) Then
  loc_1B42006:         Set var_134 = Me.TxtGt3
  loc_1B4200C:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B4201D:         Me.TxtGt3.Load var_13C
  loc_1B42071:         var_164 = var_88.Fields.Item("SNo")
  loc_1B4208C:         Set var_1F4 = Me.TxtGt3
  loc_1B42092:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_164.Value), var_1F8)
  loc_1B420D4:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B420DD:         Set var_134 = Me.TxtGt3
  loc_1B420E3:         Call 0.Method_Proc_162_89_1B437640 (CInt("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value), var_13C)
  loc_1B420EB:         var_A8 = var_13C.Top
  loc_1B42107:         Set var_208 = Me.TxtGt3
  loc_1B4210D:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_20C)
  loc_1B42115:         var_20C.Top = ((var_A8 + var_1F8.Height) + CDbl(&HF))
  loc_1B4213E:       End If
  loc_1B42172:       Set var_134 = Me.LblCap1
  loc_1B42178:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B42180:       var_13C.Visible = True
  loc_1B421C7:       Set var_134 = Me.LblCap2
  loc_1B421CD:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B421D5:       var_13C.Visible = True
  loc_1B4221C:       Set var_134 = Me.LblCap3
  loc_1B42222:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B4222A:       var_13C.Visible = True
  loc_1B42271:       Set var_134 = Me.LblDummy1
  loc_1B42277:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B4227F:       var_13C.Visible = False
  loc_1B422C6:       Set var_134 = Me.LblDummy2
  loc_1B422CC:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B422D4:       var_13C.Visible = False
  loc_1B4231B:       Set var_134 = Me.LblDummy3
  loc_1B42321:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B42329:       var_13C.Visible = False
  loc_1B42370:       Set var_134 = Me.TxtGt1
  loc_1B42376:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B4237E:       var_13C.Visible = True
  loc_1B423C5:       Set var_134 = Me.TxtGt2
  loc_1B423CB:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B423D3:       var_13C.Visible = True
  loc_1B4241A:       Set var_134 = Me.TxtGt3
  loc_1B42420:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B42428:       var_13C.Visible = True
  loc_1B4249B:       Set var_160 = Me.LblCap1
  loc_1B424A1:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B424A9:       var_164.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_1B42535:       Set var_160 = Me.LblCap1
  loc_1B4253B:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B42543:       var_164.Caption = CStr(StrConv(CVar(var_88.Fields.Item("DispName")), 3, 0))
  loc_1B425BE:       Set var_160 = Me.TxtGt1
  loc_1B425C4:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B425CC:       var_164.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B42648:       Set var_160 = Me.LblCap2
  loc_1B4264E:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B42656:       var_164.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_1B426E2:       Set var_160 = Me.LblCap2
  loc_1B426E8:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B426F0:       var_164.Caption = CStr(StrConv(CVar(var_88.Fields.Item("DispName")), 3, 0))
  loc_1B4276B:       Set var_160 = Me.TxtGt2
  loc_1B42771:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B42779:       var_164.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B427F5:       Set var_160 = Me.LblCap3
  loc_1B427FB:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_1B42803:       var_164.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_1B4285F:       var_10C = var_88.Fields.Item("SNo").Value
  loc_1B4288F:       Set var_160 = Me.LblCap3
  loc_1B42895:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_10C), var_164)
  loc_1B4289D:       var_164.Caption = CStr(StrConv(CVar(var_88.Fields.Item("DispName")), 3, 0))
  loc_1B428D2:       var_BC = var_88.Fields.Item("CalcFormula")
  loc_1B4290B:       var_EC = var_88.Fields.Item("SNo").Value
  loc_1B42918:       Set var_160 = Me.TxtGt3
  loc_1B4291E:       Call 0.Method_Proc_162_89_1B437640 (CInt(var_EC), var_164)
  loc_1B42926:       var_164.Tag = Proc_6_38_E69628(CVar(var_BC))
  loc_1B42950:       Set var_A4 = Me.Txt
  loc_1B42956:       Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC)
  loc_1B4297D:       var_13C = var_88.Fields.Item("SNo")
  loc_1B42996:       var_14C = Val(CStr(var_13C.Value))
  loc_1B4299F:       var_FC = 0
  loc_1B429E1:       var_210 = "SELECT Count(*) FROM SplitSunTran WHERE DocId='" & var_BC.Text & "' AND BillCat=" & CStr(&H1D) & " AND SNo=" & CStr(var_14C)
  loc_1B429EA:       unk_586184.Execute var_210, var_EC, -1
  loc_1B429F2:       var_160 = var_160.Fields
  loc_1B429FA:       var_FC = var_164.Item(var_164)
  loc_1B42A02:       var_1F4 = var_1F4.Value
  loc_1B42A41:       If (var_10C = 0) Then
  loc_1B42A79:         Set var_134 = Me.TxtGt1
  loc_1B42A7F:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C, "0.00")
  loc_1B42A87:         var_13C.Text = var_10C
  loc_1B42ACF:         Set var_134 = Me.LblDummy1
  loc_1B42AD5:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C, vbNullString)
  loc_1B42ADD:         var_13C.Caption = var_14C
  loc_1B42B25:         Set var_134 = Me.TxtGt2
  loc_1B42B2B:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B42B33:         var_13C.Text = "0.00"
  loc_1B42B7B:         Set var_134 = Me.LblDummy2
  loc_1B42B81:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B42B89:         var_13C.Caption = vbNullString
  loc_1B42BD1:         Set var_134 = Me.TxtGt3
  loc_1B42BD7:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_13C)
  loc_1B42BDF:         var_13C.Text = "0.00"
  loc_1B42C12:         var_BC = var_88.Fields.Item("SNo")
  loc_1B42C27:         Set var_134 = Me.LblDummy3
  loc_1B42C2D:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_BC.Value), var_13C)
  loc_1B42C35:         var_13C.Caption = vbNullString
  loc_1B42C4B:       Else
  loc_1B42C59:         Set var_A4 = Me.Txt
  loc_1B42C5F:         Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC)
  loc_1B42C67:         var_110 = var_BC.Text
  loc_1B42CA5:         var_FC = 0
  loc_1B42CE7:         var_210 = "SELECT Amount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1D) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B42CF0:         unk_586184.Execute var_210, var_EC, -1
  loc_1B42CF8:         var_160 = var_160.Fields
  loc_1B42D00:         var_FC = var_164.Item(var_164)
  loc_1B42D62:         Set var_204 = Me.TxtGt1
  loc_1B42D68:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1)
  loc_1B42D70:         var_208.Text = 1
  loc_1B42DC0:         Set var_A4 = Me.Txt
  loc_1B42DC6:         Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110)
  loc_1B42DCE:         var_1F4 = var_BC.Text
  loc_1B42E0C:         var_FC = 0
  loc_1B42E4E:         var_210 = "SELECT BaseAmount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1D) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B42E57:         unk_586184.Execute var_210, var_EC, -1
  loc_1B42E5F:         var_160 = var_160.Fields
  loc_1B42E67:         var_FC = var_164.Item(var_164)
  loc_1B42EC9:         Set var_204 = Me.LblDummy1
  loc_1B42ECF:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1, 1)
  loc_1B42ED7:         var_208.Caption = var_1F4
  loc_1B42F27:         Set var_A4 = Me.Txt
  loc_1B42F2D:         Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110)
  loc_1B42F35:         var_14C = var_BC.Text
  loc_1B42F73:         var_FC = 0
  loc_1B42FB5:         var_210 = "SELECT Amount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1E) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B42FBE:         unk_586184.Execute var_210, var_EC, -1
  loc_1B42FC6:         var_160 = var_160.Fields
  loc_1B42FCE:         var_FC = var_164.Item(var_164)
  loc_1B43030:         Set var_204 = Me.TxtGt2
  loc_1B43036:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1, 1)
  loc_1B4303E:         var_208.Text = var_1F4
  loc_1B4308E:         Set var_A4 = Me.Txt
  loc_1B43094:         Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110)
  loc_1B4309C:         var_14C = var_BC.Text
  loc_1B430DA:         var_FC = 0
  loc_1B4311C:         var_210 = "SELECT BaseAmount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1E) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B43125:         unk_586184.Execute var_210, var_EC, -1
  loc_1B4312D:         var_160 = var_160.Fields
  loc_1B43135:         var_FC = var_164.Item(var_164)
  loc_1B43197:         Set var_204 = Me.LblDummy2
  loc_1B4319D:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1, 1)
  loc_1B431A5:         var_208.Caption = var_1F4
  loc_1B431F5:         Set var_A4 = Me.Txt
  loc_1B431FB:         Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110)
  loc_1B43203:         var_14C = var_BC.Text
  loc_1B43241:         var_FC = 0
  loc_1B43283:         var_210 = "SELECT Amount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1F) & " AND SNo=" & CStr(Val(CStr(var_88.Fields.Item("SNo").Value)))
  loc_1B4328C:         unk_586184.Execute var_210, var_EC, -1
  loc_1B43294:         var_160 = var_160.Fields
  loc_1B4329C:         var_FC = var_164.Item(var_164)
  loc_1B432FE:         Set var_204 = Me.TxtGt3
  loc_1B43304:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(CVar(var_1F4), "0.00")), 1, 1)
  loc_1B4330C:         var_208.Text = var_1F4
  loc_1B4335C:         Set var_A4 = Me.Txt
  loc_1B43362:         Call 0.Method_Proc_162_89_1B437640 (CInt(2), var_BC, var_110)
  loc_1B4336A:         var_14C = var_BC.Text
  loc_1B43381:         var_134 = var_88.Fields
  loc_1B43389:         var_13C = var_134.Item("SNo")
  loc_1B433A2:         var_14C = Val(CStr(var_13C.Value))
  loc_1B433A8:         var_FC = 0
  loc_1B433EA:         var_210 = "SELECT BaseAmount FROM SplitSunTran WHERE DocId='" & var_110 & "' AND BillCat=" & CStr(&H1F) & " AND SNo=" & CStr(var_14C)
  loc_1B433F3:         unk_586184.Execute var_210, var_EC, -1
  loc_1B433FB:         var_160 = var_160.Fields
  loc_1B43403:         var_FC = var_164.Item(var_164)
  loc_1B4343E:         var_130 = "0.00"
  loc_1B43447:         var_10C = CVar(var_1F4) 'Address
  loc_1B43465:         Set var_204 = Me.LblDummy3
  loc_1B4346B:         Call 0.Method_Proc_162_89_1B437640 (CInt(var_88.Fields.Item("SNo").Value), var_208, CStr(Format(var_10C, var_130)), 1, 1)
  loc_1B43473:         var_208.Caption = var_1F4
  loc_1B434B5:       End If
  loc_1B434B8:       var_88.MoveNext
  loc_1B434BD:       GoTo loc_1B413A9
  loc_1B434C0:     End If
  loc_1B434CB:     Set var_A4 = Me.LblCap1
  loc_1B434D1:     Call 0.Method_Proc_162_89_1B437640 (1, var_BC, &HFF)
  loc_1B434D9:     var_BC.FontBold = var_14C
  loc_1B434F1:     Set var_A4 = Me.LblCap1
  loc_1B434F7:     Call 0.Method_Proc_162_89_1B43764C (var_15A, var_134, &HFF)
  loc_1B43503:     Set var_BC = Me.LblCap1
  loc_1B43509:     Call 0.Method_Proc_162_89_1B437640 (var_15A, var_14C)
  loc_1B43511:     var_134.FontBold = var_13C
  loc_1B4352A:     Set var_A4 = Me.TxtGt1
  loc_1B43530:     Call 0.Method_Proc_162_89_1B437640 (1, var_BC)
  loc_1B43538:     var_BC.FontBold = True
  loc_1B43550:     Set var_A4 = Me.TxtGt1
  loc_1B43556:     Call 0.Method_Proc_162_89_1B43764C (var_15A, var_134)
  loc_1B43562:     Set var_BC = Me.TxtGt1
  loc_1B43568:     Call 0.Method_Proc_162_89_1B437640 (var_15A)
  loc_1B43570:     var_134.FontBold = True
  loc_1B43589:     Set var_A4 = Me.LblCap2
  loc_1B4358F:     Call 0.Method_Proc_162_89_1B437640 (1, var_BC)
  loc_1B43597:     var_BC.FontBold = True
  loc_1B435AF:     Set var_A4 = Me.LblCap2
  loc_1B435B5:     Call 0.Method_Proc_162_89_1B43764C (var_15A, var_134)
  loc_1B435C1:     Set var_BC = Me.LblCap2
  loc_1B435C7:     Call 0.Method_Proc_162_89_1B437640 (var_15A)
  loc_1B435CF:     var_134.FontBold = True
  loc_1B435E8:     Set var_A4 = Me.TxtGt2
  loc_1B435EE:     Call 0.Method_Proc_162_89_1B437640 (1, var_BC)
  loc_1B435F6:     var_BC.FontBold = True
  loc_1B4360E:     Set var_A4 = Me.TxtGt2
  loc_1B43614:     Call 0.Method_Proc_162_89_1B43764C (var_15A, var_134)
  loc_1B43620:     Set var_BC = Me.TxtGt2
  loc_1B43626:     Call 0.Method_Proc_162_89_1B437640 (var_15A)
  loc_1B4362E:     var_134.FontBold = True
  loc_1B43647:     Set var_A4 = Me.LblCap3
  loc_1B4364D:     Call 0.Method_Proc_162_89_1B437640 (1, var_BC)
  loc_1B43655:     var_BC.FontBold = True
  loc_1B4366D:     Set var_A4 = Me.LblCap3
  loc_1B43673:     Call 0.Method_Proc_162_89_1B43764C (var_15A, var_134)
  loc_1B4367F:     Set var_BC = Me.LblCap3
  loc_1B43685:     Call 0.Method_Proc_162_89_1B437640 (var_15A)
  loc_1B4368D:     var_134.FontBold = True
  loc_1B436A6:     Set var_A4 = Me.TxtGt3
  loc_1B436AC:     Call 0.Method_Proc_162_89_1B437640 (1, var_BC)
  loc_1B436B4:     var_BC.FontBold = True
  loc_1B436CC:     Set var_A4 = Me.TxtGt3
  loc_1B436D2:     Call 0.Method_Proc_162_89_1B43764C (var_15A, var_134)
  loc_1B436DE:     Set var_BC = Me.TxtGt3
  loc_1B436E4:     Call 0.Method_Proc_162_89_1B437640 (var_15A)
  loc_1B436EC:     var_134.FontBold = True
  loc_1B436FA:   End If
  loc_1B436FA: End If
  loc_1B436FF: Set var_88 = Nothing
  loc_1B43707: Set var_94 = Nothing
  loc_1B4370E: Exit Sub
  loc_1B4370F: ' Referenced from: 1B3EC48
  loc_1B43717: Set var_A4 = Err()
  loc_1B4371D: Call 0.Method_arg_1C (var_A8)
  loc_1B4372E: If (var_A8 = &HBCD) Then
  loc_1B4374A:   MsgBox("Record is Deleted by somebody", &H40, var_EC, var_10C, var_130)
  loc_1B4375A:   Exit Sub
  loc_1B4375B: End If
  loc_1B4375B: Proc_6_60_E63754()
  loc_1B43760: Exit Sub
End Sub

Public Sub Proc_162_90_110BAA0
  'Data Table: 586158
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_586184 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_110B781: Set var_9C = Me.TopCtrl1
  loc_110B787: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_110B78F: var_B0 = CStr()
  loc_110B7A0: If (var_B0 = "Add") Then
  loc_110B7D0:   Set var_9C = Me.Txt
  loc_110B7D6:   Call 0.Method_Proc_162_90_110BAA00 (CInt(2), var_B4, var_B0, "Select Count(*) From Sale1 Where DocID='", var_AC, -1)
  loc_110B7F7:   unk_586184.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_110B807:    = var_D4.Item()
  loc_110B80F:    = var_E8.Value
  loc_110B83C:   If (var_B4.Text.Fields > 0) Then
  loc_110B845:     Call 0.Method_arg_50 (var_B0)
  loc_110B866:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_110B87C:     Call Proc_162_95_10EAFB8(MemVar_1F95044)
  loc_110B88F:     Set var_9C = Me.Txt
  loc_110B895:     Call 0.Method_Proc_162_90_110BAA00 (CInt(2), var_B4)
  loc_110B89D:     var_B4.Text = var_B0
  loc_110B8B1:     Proc_162_90_110BAA0 = 0
  loc_110B8B7:   End If
  loc_110B8B7: End If
  loc_110B8DC: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_110B8E6:   var_CC = CVar(CLng(var_88)) 'Long
  loc_110B8EE:   var_108 = CVar(CLng(4)) 'Long
  loc_110B90E:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_110B92A:   If CBool(var_118 <> vbNullString) Then
  loc_110B931:     var_CC = CVar(CLng(var_88)) 'Long
  loc_110B939:     var_108 = CVar(CLng(7)) 'Long
  loc_110B969:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_110B991:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_110B9B7:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_110B9C3:       Set var_9C = Me.FGrid
  loc_110B9D9:       Proc_162_90_110BAA0 = 0
  loc_110B9DF:     End If
  loc_110B9E3:     var_CC = CVar(CLng(var_88)) 'Long
  loc_110B9EB:     var_108 = CVar(CLng(8)) 'Long
  loc_110BA1B:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_110BA43:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_110BA69:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_110BA75:       Set var_9C = Me.FGrid
  loc_110BA8B:       Proc_162_90_110BAA0 = 0
  loc_110BA91:     End If
  loc_110BA91:   End If
  loc_110BA94: Next var_12C 'Integer
  loc_110BA99: Proc_162_90_110BAA0 = 
End Sub

Public Sub Proc_162_91_10AC218
  'Data Table: 586158
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_10ABF4D: Me.LblVPrefix.Caption = vbNullString
  loc_10ABF63: Set var_8C = Me.Txt
  loc_10ABF69: Call 0.Method_Proc_162_91_10AC218C (var_8E, var_86)
  loc_10ABF79: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10ABF8F:   Set var_8C = Me.Txt
  loc_10ABF95:   Call 0.Method_Proc_162_91_10AC2180 (CInt(var_86), var_98)
  loc_10ABF9D:   var_98.Text = vbNullString
  loc_10ABFB9:   Set var_8C = Me.Txt
  loc_10ABFBF:   Call 0.Method_Proc_162_91_10AC2180 (CInt(var_86), var_98)
  loc_10ABFC7:   var_98.Tag = vbNullString
  loc_10ABFD6: Next var_92 'Byte
  loc_10ABFEF: Me.FGrid.Rows = 1
  loc_10AC004: Me.lblTable.Caption = vbNullString
  loc_10AC02A: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_10AC032: Set var_98 = Me.FGrid
  loc_10AC04C: var_A8 = 1
  loc_10AC058: var_DC = CVar(CLng(1)) 'Long
  loc_10AC06B: Set var_8C = Me.FGrid
  loc_10AC071: LateIdCallSt
  loc_10AC07C: var_A8 = 1
  loc_10AC088: var_DC = CVar(CLng(2)) 'Long
  loc_10AC09B: Set var_8C = Me.FGrid
  loc_10AC0A1: LateIdCallSt
  loc_10AC0AC: var_A8 = 1
  loc_10AC0BF: Me.FGrid.FixedRows = var_A8
  loc_10AC0DB: Call 0.Method_Proc_162_91_10AC218C (var_8E, var_86, CByte(1), Me.TxtPer, global_216, var_DC, var_A8)
  loc_10AC0E8: For var_100 = global_220 To CByte(var_8E): var_8C = var_100 'Byte
  loc_10AC0FE:   Set var_8C = Me.TxtPer
  loc_10AC104:   Call 0.Method_Proc_162_91_10AC2180 (CInt(var_86), var_98, vbNullString, global_220, var_DC)
  loc_10AC10C:   var_98.Text = var_A8
  loc_10AC11B: Next var_100 'Byte
  loc_10AC12F: Set var_8C = Me.TxtGt
  loc_10AC135: Call 0.Method_Proc_162_91_10AC218C (var_8E, var_86)
  loc_10AC142: For var_104 =  To CByte(var_8E): CByte(1) = var_104 'Byte
  loc_10AC158:   Set var_8C = Me.TxtGt
  loc_10AC15E:   Call 0.Method_Proc_162_91_10AC2180 (CInt(var_86), var_98)
  loc_10AC166:   var_98.Text = vbNullString
  loc_10AC175: Next var_104 'Byte
  loc_10AC189: Set var_8C = Me.Txt
  loc_10AC18F: Call 0.Method_Proc_162_91_10AC2180 (CInt(5), var_98)
  loc_10AC197: var_98.Text = "00:00"
  loc_10AC1B1: Set var_8C = Me.Txt
  loc_10AC1B7: Call 0.Method_Proc_162_91_10AC2180 (CInt(5), var_98)
  loc_10AC1BF: var_98.Tag = vbNullString
  loc_10AC1DD: Set var_8C = Me.Txt
  loc_10AC1E3: Call 0.Method_Proc_162_91_10AC2180 (CInt(4), var_98)
  loc_10AC1EB: var_98.Text = CStr(1)
  loc_10AC20D: Me.FGCat.Rows = 0
  loc_10AC215: Exit Sub
  loc_10AC216: Loop Until  'do at: 10AA03E
End Sub

Public Sub Proc_162_92_1005DCC(arg_C) '1005DCC
  'Data Table: 586158
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_1005BC2: Set var_8C = Me.Txt
  loc_1005BC8: Call 0.Method_Proc_162_92_1005DCCC (var_8E, var_86)
  loc_1005BD8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1005BEE:   Set var_8C = Me.Txt
  loc_1005BF4:   Call 0.Method_Proc_162_92_1005DCC0 (CInt(var_86), var_98)
  loc_1005BFC:   var_98.Enabled = arg_C
  loc_1005C0B: Next var_92 'Byte
  loc_1005C1F: Set var_8C = Me.TxtPer
  loc_1005C25: Call 0.Method_Proc_162_92_1005DCCC (var_8E, var_86)
  loc_1005C32: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_1005C48:   Set var_8C = Me.TxtPer
  loc_1005C4E:   Call 0.Method_Proc_162_92_1005DCC0 (CInt(var_86), var_98)
  loc_1005C56:   var_98.Enabled = arg_C
  loc_1005C65: Next var_9C 'Byte
  loc_1005C79: Set var_8C = Me.TxtGt
  loc_1005C7F: Call 0.Method_Proc_162_92_1005DCCC (var_8E, var_86)
  loc_1005C8C: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_1005CA2:   Set var_8C = Me.TxtGt
  loc_1005CA8:   Call 0.Method_Proc_162_92_1005DCC0 (CInt(var_86), var_98)
  loc_1005CB0:   var_98.Enabled = arg_C
  loc_1005CBF: Next var_A0 'Byte
  loc_1005CD2: Set var_8C = Me.Txt
  loc_1005CD8: Call 0.Method_Proc_162_92_1005DCC0 (CInt(2), var_98)
  loc_1005CE0: var_98.Enabled = False
  loc_1005CF9: Set var_8C = Me.Txt
  loc_1005CFF: Call 0.Method_Proc_162_92_1005DCC0 (CInt(5), var_98)
  loc_1005D07: var_98.Enabled = False
  loc_1005D20: Set var_8C = Me.Txt
  loc_1005D26: Call 0.Method_Proc_162_92_1005DCC0 (CInt(1), var_98)
  loc_1005D2E: var_98.Enabled = False
  loc_1005D47: Set var_8C = Me.Txt
  loc_1005D4D: Call 0.Method_Proc_162_92_1005DCC0 (CInt(0), var_98)
  loc_1005D55: var_98.Enabled = False
  loc_1005D6E: Set var_8C = Me.Txt
  loc_1005D74: Call 0.Method_Proc_162_92_1005DCC0 (CInt(8), var_98)
  loc_1005D7C: var_98.Enabled = False
  loc_1005D96: Me.Command1.Enabled = Not(arg_C)
  loc_1005DAC: Me.Command2.Enabled = Not(arg_C)
  loc_1005DC1: Me.CmdSave.Enabled = arg_C
  loc_1005DC9: Exit Sub
End Sub

Public Sub Proc_162_93_EF84A4
  'Data Table: 586158
  loc_EF83E4: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF83F6:   Me.DGItem.Visible = False
  loc_EF83FE: End If
  loc_EF841A: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF842C:   Me.DGTable.Visible = False
  loc_EF8434: End If
  loc_EF8450: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF8462:   Me.DGRest.Visible = False
  loc_EF846A: End If
  loc_EF8486: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF8498:   Me.FGPoint.Visible = False
  loc_EF84A0: End If
  loc_EF84A0: Exit Sub
  loc_EF84A1: If  Then Exit Sub
  loc_EF84A1: End If
End Sub

Public Sub Proc_162_94_F0C698
  'Data Table: 586158
  loc_F0C5BC: Call Proc_162_93_EF84A4()
  loc_F0C5CC: Set var_88 = Me.Txt
  loc_F0C5D2: Call 0.Method_Proc_162_94_F0C6980 (CInt(1))
  loc_F0C5FB: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0C5FE:   Exit Sub
  loc_F0C5FF: End If
  loc_F0C60A: Set var_88 = Me.Txt
  loc_F0C610: Call 0.Method_Proc_162_94_F0C6980 (CInt(0), var_8C)
  loc_F0C639: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0C63C:   Exit Sub
  loc_F0C63D: End If
  loc_F0C674: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C677:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C67F: Else
  loc_F0C683:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C68B:   Call var_88.SetFocus
  loc_F0C694: End If
  loc_F0C694: Exit Sub
  loc_F0C695: If var_8C Then Exit Sub
  loc_F0C695: End If
End Sub

Public Sub Proc_162_95_10EAFB8
  'Data Table: 586158
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
  Dim var_2000 As Integer
  loc_10EACE0: var_90 = global_144
  loc_10EACF7: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10EAD28: Set var_A8 = Me.Txt
  loc_10EAD2E: Call 0.Method_Proc_162_95_10EAFB80 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10EAD3D: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10EAD45: var_EC = -1 & var_CC 
  loc_10EAD59: S.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10EAD64: Set var_8C = var_134
  loc_10EADA0: If (var_8C.RecordCount > 0) Then
  loc_10EADDF:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10EAE13:     global_124 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10EAE3E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10EAE53:     var_CC = (var_AC.Value + 1)
  loc_10EAE5B:     global_128 = CInt(var_CC)
  loc_10EAE6C:   End If
  loc_10EAE6C: End If
  loc_10EAE97: var_BC = Space((5 - Len(var_90)))
  loc_10EAE9F: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10EAEB3: var_EC = Space((5 - Len(global_124)))
  loc_10EAEBB: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10EAEC8: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_124))
  loc_10EAEE1: var_14C = Space((8 - Len(CStr(global_128))))
  loc_10EAEE9: var_15C = (var_130 + var_14C)
  loc_10EAEF8: var_17C = (var_15C + CVar(CStr(global_128)))
  loc_10EAF03: global_116 = CStr(var_17C)
  loc_10EAF39: Me.LblVPrefix.Caption = global_124
  loc_10EAF52: Set var_A8 = Me.Txt
  loc_10EAF58: Call 0.Method_Proc_162_95_10EAFB80 (CInt(2), var_AC)
  loc_10EAF60: var_AC.Text = global_116
  loc_10EAF82: Set var_A8 = Me.Txt
  loc_10EAF88: Call 0.Method_Proc_162_95_10EAFB80 (CInt(0), var_AC)
  loc_10EAF90: var_AC.Text = CStr(global_128)
  loc_10EAFA5: var_88 = global_116
  loc_10EAFAD: Set var_8C = Nothing
  loc_10EAFB0: Proc_162_95_10EAFB8 = global_128
  loc_10EAFB6: var_2000 = 
End Sub

Public Sub Proc_162_96_10B61A8(arg_C, arg_10, arg_14) '10B61A8
  'Data Table: 586158
  Dim unk_586184 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B5F16: If (arg_C = "RSBIL") Then
  loc_10B5F3D:   unk_586184.Execute "Select Distinct DocId,V_Type,V_No From Sale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B5F48:   Set var_8C = var_C4
  loc_10B5F5B:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10B5F61: Else
  loc_10B5F66:   Proc_162_96_10B61A8 = &HFF
  loc_10B5F6C: End If
  loc_10B5F80: If (var_8C.RecordCount > 0) Then
  loc_10B5F83:   ' Referenced from: 10B60FC
  loc_10B5F92:   If Not(var_8C.EOF) Then
  loc_10B5F9D:     If (var_90 = vbNullString) Then
  loc_10B5FE0:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B5FE7:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B6019:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B603E:     Else
  loc_10B607A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B609A:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B60C7:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B60CC:       var_90 = CStr(var_11C)
  loc_10B60F4:     End If
  loc_10B60F7:     var_8C.MoveNext
  loc_10B60FC:     GoTo loc_10B5F83
  loc_10B60FF:   End If
  loc_10B6105:   Call 0.Method_arg_50 (var_138)
  loc_10B6161:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B6164:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B6193:   Set var_8C = Nothing
  loc_10B6196:   Proc_162_96_10B61A8 = 0
  loc_10B619C: End If
  loc_10B61A1: Proc_162_96_10B61A8 = &HFF
End Sub

Public Sub Proc_162_97_FBEB44
  'Data Table: 586158
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBE9C7: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FBE9CC:   var_92 = 4 'Byte
  loc_FBE9D0: End If
  loc_FBE9D9: Set var_98 = Me.TxtGrid
  loc_FBE9DF: Call 0.Method_Proc_162_97_FBEB440 (0, var_B0)
  loc_FBEA02: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBEA36: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBEA5A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBEA5D:     GoTo loc_FBEB2F
  loc_FBEA60:   End If
  loc_FBEA64:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBEA8E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBEA98:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBEACD:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBEAF1:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBEB0A:     Set var_98 = Me.TxtGrid
  loc_FBEB10:     Call 0.Method_Proc_162_97_FBEB440 (0, var_B0, CVar(CLng(var_92)))
  loc_FBEB18:     var_B0.SetFocus
  loc_FBEB29:     Proc_162_97_FBEB44 = 0
  loc_FBEB2F:     ' Referenced from: FBEA5D
  loc_FBEB2F:   End If
  loc_FBEB32: Next var_D4 'Integer
  loc_FBEB3C: Proc_162_97_FBEB44 = &HFF
  loc_FBEB42: Result  End Sub 'Long
End Sub

Public Sub Proc_162_98_EAC1D4(arg_C) 'EAC1D4
  'Data Table: 586158
  Dim var_8C As Recordset15
  loc_EAC14E: IStAdFunc
  loc_EAC155: Set var_8C = arg_C 
  loc_EAC17D: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EAC18D: var_8C.CursorType = 3
  loc_EAC19A: var_8C.LockType = 3
  loc_EAC1B9: var_8C.Open var_A0, var_B0, -1
  loc_EAC1C0: Set var_8C = Nothing 
  loc_EAC1C7: Set var_88 = arg_C 
  loc_EAC1CB: Proc_162_98_EAC1D4 = -1
End Sub

Public Sub Proc_162_99_114CEA4
  'Data Table: 586158
  Dim var_B4 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As String
  Dim var_D8 As String
  loc_114CB1A: Set global_96 = New 
  loc_114CB2C: Me.Recordset15.CursorLocation = 3
  loc_114CB37: var_90 = global_212
  loc_114CB42: If (var_90 = "Hall") Then
  loc_114CB50:   If (global_200 = "Y") Then
  loc_114CB74:     var_94 = "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') And Code In (Select RoomNo From KOT Where RestCode='" & global_60
  loc_114CB85:     Me.Open CVar(var_94 & "' ANd RoomCat='HALL' and RoomType='HL' And Pending='Y') Order by T.Code"), CVar(MemVar_1F95044), 3
  loc_114CB93:   Else
  loc_114CBB6:     Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F95044), 3
  loc_114CBBB:   End If
  loc_114CBC7:   Set var_8C = Me.Label1
  loc_114CBCD:   Call 0.Method_Proc_162_99_114CEA40 (2, var_C8, "Hall", 1)
  loc_114CBD5:   var_C8.Caption = -1
  loc_114CBF1:   Set var_8C = Me.DGTable
  loc_114CC02:   Set var_C8 = DGTable.DispID_69
  loc_114CC10:   var_C8.Item(1).Caption = "Hall"
  loc_114CC27:   global_148 = "HALL"
  loc_114CC31:   global_152 = "HL"
  loc_114CC38: Else
  loc_114CC40:   If Not (var_90 = "Fast Food") Then
  loc_114CC4B:     If (var_90 = "Outlet") Then
  loc_114CC4E:     End If
  loc_114CC5A:     Set var_8C = Me.Label1
  loc_114CC60:     Call 0.Method_Proc_162_99_114CEA40 (2, var_C8, "Table #")
  loc_114CC68:     var_C8.Caption = 1
  loc_114CC84:     Set var_8C = Me.DGTable
  loc_114CC95:     Set var_C8 = DGTable.DispID_69
  loc_114CCA3:     var_C8.Item(1).Caption = "Table #"
  loc_114CCB7:     var_88 = " Order by Code"
  loc_114CCC5:     If (global_200 = "Y") Then
  loc_114CCF0:       var_D0 = "Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_60 & "' And Code In (Select RoomNo From KOT Where RestCode='"
  loc_114CD01:       var_D8 = var_D0 & global_60 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND DELFLAG='N' AND NCKOT<>'Y') "
  loc_114CD12:       Me.Open CVar(var_D8 & var_88), CVar(MemVar_1F95044), 3
  loc_114CD28:     Else
  loc_114CD57:       var_A4 = CVar("Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_60 & "' " & var_88) 'String
  loc_114CD61:       Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_114CD70:     End If
  loc_114CD76:     global_148 = "REST"
  loc_114CD80:     global_152 = "TB"
  loc_114CD87:   Else
  loc_114CD8F:     If (var_90 = "Room Service") Then
  loc_114CD9E:       Set var_8C = Me.Label1
  loc_114CDA4:       Call 0.Method_Proc_162_99_114CEA40 (2, var_C8, "Room #", 1)
  loc_114CDAC:       var_C8.Caption = -1
  loc_114CDC8:       Set var_8C = Me.DGTable
  loc_114CDE7:       DGTable.DispID_69.Item(1).Caption = "Room #"
  loc_114CE03:       If (global_200 = "Y") Then
  loc_114CE27:         var_94 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RestCode='" & global_60
  loc_114CE2E:         var_A4 = CVar(var_94 & "' and RoomType='RO' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG is NULL) AND NCKOT<>'Y') Order by RC.roomno") 'String
  loc_114CE38:         Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_114CE46:       Else
  loc_114CE5D:         var_B4 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO"
  loc_114CE69:         Me.Open var_B4, CVar(MemVar_1F95044), 3
  loc_114CE6E:       End If
  loc_114CE74:       global_152 = "RO"
  loc_114CE78:     End If
  loc_114CE78:   End If
  loc_114CE78: End If
  loc_114CE81: CVarUnk
  loc_114CE86: VerifyVarObj
  loc_114CE8C: Set var_8C = Me.DGTable
  loc_114CE92: LateIdStAd
  loc_114CEA0: Exit Sub
  loc_114CEA1: StAryRecMove
End Sub

Public Sub Proc_162_100_17EDFF0(arg_C) '17EDFF0
  'Data Table: 586158
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_AC As String
  Dim var_DC As Variant
  Dim unk_586184 As Connection15
  Dim var_90 As Variant
  Dim var_E0 As Variant
  Dim var_130 As Variant
  Dim var_170 As Integer
  Dim var_134 As String
  Dim var_15C As Variant
  Dim var_160 As Fields15
  Dim var_174 As Variant
  Dim var_88 As Recordset15
  Dim var_158 As Boolean
  Dim var_23C As Variant
  Dim var_F0 As Variant
  Dim var_24C As TextBox
  Dim var_A8 As Variant
  loc_17EBE54: Set var_90 = Me.TxtGt
  loc_17EBE5A: Call 0.Method_Proc_162_100_17EDFF00 (1, var_94)
  loc_17EBE62: var_96 = var_94.TabIndex
  loc_17EBE6A: var_8A = var_96
  loc_17EBE78: Set var_90 = Me.TopCtrl1
  loc_17EBE7E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_8A)
  loc_17EBE97: If (CStr() = "Add") Then
  loc_17EBEA6:   Set var_90 = Me.TxtPer
  loc_17EBEAC:   Call 0.Method_Proc_162_100_17EDFF0C (var_96, var_8C)
  loc_17EBEB7:   For var_B0 =  To var_96: 1 = var_B0 'Integer
  loc_17EBEC9:     Set var_90 = Me.TxtPer
  loc_17EBECF:     Call 0.Method_Proc_162_100_17EDFF00 (var_8C, var_94)
  loc_17EBED7:     var_94.Visible = False
  loc_17EBEE6:   Next var_B0 'Integer
  loc_17EBEF7:   Set var_90 = Me.TxtGt
  loc_17EBEFD:   Call 0.Method_Proc_162_100_17EDFF0C (var_96, var_8C)
  loc_17EBF08:   For var_B4 =  To var_96: 1 = var_B4 'Integer
  loc_17EBF1A:     Set var_90 = Me.TxtGt
  loc_17EBF20:     Call 0.Method_Proc_162_100_17EDFF00 (var_8C, var_94)
  loc_17EBF28:     var_94.Visible = False
  loc_17EBF37:   Next var_B4 'Integer
  loc_17EBF48:   Set var_90 = Me.LblCap
  loc_17EBF4E:   Call 0.Method_Proc_162_100_17EDFF0C (var_96, var_8C)
  loc_17EBF59:   For var_B8 =  To var_96: 1 = var_B8 'Integer
  loc_17EBF6B:     Set var_90 = Me.LblCap
  loc_17EBF71:     Call 0.Method_Proc_162_100_17EDFF00 (var_8C, var_94)
  loc_17EBF79:     var_94.Visible = False
  loc_17EBF88:   Next var_B8 'Integer
  loc_17EBF8D: End If
  loc_17EBF91: Set var_90 = Me.TopCtrl1
  loc_17EBF97: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_17EBFB0: If (CStr() <> "Browse") Then
  loc_17EBFCB:   var_DC = 0
  loc_17EBFEB:   var_AC = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17EBFFB:   unk_586184.Execute CStr() & "'", var_A8, -1
  loc_17EC003:   var_90 = var_90.Fields
  loc_17EC00B:   var_DC = var_94.Item(var_94)
  loc_17EC013:   var_E0 = var_E0.Value
  loc_17EC02E:   var_170 = 0
  loc_17EC04E:   var_134 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17EC05E:   unk_586184.Execute var_134 & "'", var_158, -1
  loc_17EC066:   var_15C = var_15C.Fields
  loc_17EC06E:   var_170 = var_160.Item(var_160)
  loc_17EC076:   var_174 = var_174.Value
  loc_17EC096:   Proc_6_7_F26918(var_1D4, arg_C, var_184 & var_184 & "' aND AppDate<=", var_F0 & var_F0 & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='")
  loc_17EC0B5:   unk_586184.Execute CStr("Select * From SundryType WHERE V_Type='" & var_1D4 & "  Order by AppDate Desc) Order by SNO"), var_228, -1
  loc_17EC0C0:   Set var_88 = var_22C
  loc_17EC0FF: Else
  loc_17EC103:   Set var_90 = Me.TopCtrl1
  loc_17EC109:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_22C)
  loc_17EC122:   If (CStr() = "Browse") Then
  loc_17EC13D:     var_DC = 0
  loc_17EC15D:     var_AC = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17EC16D:     unk_586184.Execute CStr() & "'", var_A8, -1
  loc_17EC175:     var_90 = var_90.Fields
  loc_17EC17D:     var_DC = var_94.Item(var_94)
  loc_17EC185:     var_E0 = var_E0.Value
  loc_17EC1A0:     var_170 = 0
  loc_17EC1C0:     var_134 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17EC1D0:     unk_586184.Execute var_134 & "'", var_158, -1
  loc_17EC1D8:     var_15C = var_15C.Fields
  loc_17EC1E0:     var_170 = var_160.Item(var_160)
  loc_17EC1E8:     var_174 = var_174.Value
  loc_17EC208:     Proc_6_7_F26918(var_1D4, arg_C, var_184 & var_184 & "' aND AppDate=", var_F0 & var_F0 & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='")
  loc_17EC227:     unk_586184.Execute CStr("Select * From SundryType WHERE V_Type='" & var_1D4 & "  Order by AppDate Desc) Order by SNO"), var_228, -1
  loc_17EC232:     Set var_88 = var_22C
  loc_17EC26E:   End If
  loc_17EC26E: End If
  loc_17EC275: Set var_90 = Me.LblCap
  loc_17EC27B: Call 0.Method_Proc_162_100_17EDFF08 (var_96)
  loc_17EC2AB: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_17EC2CD:   Set var_90 = Me.LblCap
  loc_17EC2D3:   Call 0.Method_Proc_162_100_17EDFF08 (var_96, var_8C)
  loc_17EC2DE:   For var_238 = var_22C To var_96: CInt((var_88.RecordCount + 1)) = var_238 'Integer
  loc_17EC2EE:     Set var_90 = Me.LblCap
  loc_17EC2F4:     Call 0.Method_Proc_162_100_17EDFF00 (var_8C, var_94)
  loc_17EC305:     Me.LblCap.Unload var_94
  loc_17EC31B:     Set var_90 = Me.LblDummy
  loc_17EC321:     Call 0.Method_Proc_162_100_17EDFF00 (var_8C, var_94)
  loc_17EC332:     Me.LblDummy.Unload var_94
  loc_17EC348:     Set var_90 = Me.LblAt
  loc_17EC34E:     Call 0.Method_Proc_162_100_17EDFF00 (var_8C, var_94)
  loc_17EC35F:     Me.LblAt.Unload var_94
  loc_17EC375:     Set var_90 = Me.TxtPer
  loc_17EC37B:     Call 0.Method_Proc_162_100_17EDFF00 (var_8C, var_94)
  loc_17EC38C:     Me.TxtPer.Unload var_94
  loc_17EC3A2:     Set var_90 = Me.TxtGt
  loc_17EC3A8:     Call 0.Method_Proc_162_100_17EDFF00 (var_8C, var_94)
  loc_17EC3B9:     Me.TxtGt.Unload var_94
  loc_17EC3C8:   Next var_238 'Integer
  loc_17EC3CD: End If
  loc_17EC3E1: If (var_88.RecordCount > 0) Then
  loc_17EC41D:   Set var_E0 = Me.Txt
  loc_17EC423:   Call 0.Method_Proc_162_100_17EDFF00 (CInt(9), var_15C)
  loc_17EC42B:   var_15C.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17EC441:   ' Referenced from: 17EDF53
  loc_17EC447:   var_96 = var_88.EOF
  loc_17EC450:   If Not(var_96) Then
  loc_17EC48F:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17EC4C3:       Set var_E0 = Me.LblDummy
  loc_17EC4C9:       Call 0.Method_Proc_162_100_17EDFF08 (var_96)
  loc_17EC4E3:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17EC518:         Set var_E0 = Me.LblDummy
  loc_17EC51E:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17EC52F:         Me.LblDummy.Load var_15C
  loc_17EC542:       End If
  loc_17EC58D:       var_15C = var_88.Fields.Item("SNo")
  loc_17EC5A2:       Set var_160 = Me.LblDummy
  loc_17EC5A8:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_15C.Value), var_174)
  loc_17EC5B0:       var_174.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17EC5FF:       Set var_E0 = Me.TxtPer
  loc_17EC605:       Call 0.Method_Proc_162_100_17EDFF08 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17EC61F:       If (var_15C > CVar(var_96)) Then
  loc_17EC654:         Set var_E0 = Me.TxtPer
  loc_17EC65A:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17EC66B:         Me.TxtPer.Load var_15C
  loc_17EC67E:       End If
  loc_17EC6B6:       Set var_E0 = Me.TxtPer
  loc_17EC6BC:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EC6C4:       var_15C.TabIndex = (var_8A + 1)
  loc_17EC6DD:       var_8A = (var_8A + 1)
  loc_17EC721:       var_15C = var_88.Fields.Item("SNo")
  loc_17EC761:       Set var_160 = Me.TxtPer
  loc_17EC767:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_15C.Value), var_174, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17EC76F:       var_174.Visible = var_8A
  loc_17EC7CE:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17EC82D:         var_130 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17EC836:         Set var_22C = Me.TxtPer
  loc_17EC83C:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(True), var_23C)
  loc_17EC87E:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17EC887:         Set var_E0 = Me.TxtPer
  loc_17EC88D:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("RevCode").Value), var_15C)
  loc_17EC8B1:         Set var_248 = Me.TxtPer
  loc_17EC8B7:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_24C)
  loc_17EC8BF:         var_24C.Top = ((var_15C.Top + var_23C.Height) + CDbl(&HF))
  loc_17EC8E8:       End If
  loc_17EC924:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17EC983:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17EC98C:         Set var_E0 = Me.TxtPer
  loc_17EC992:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("RevCode").Value), var_15C)
  loc_17EC9AD:         Set var_22C = Me.TxtPer
  loc_17EC9B3:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17EC9BB:         var_23C.Left = var_15C.Left
  loc_17EC9DA:       End If
  loc_17EC9DE:       Set var_90 = Me.TopCtrl1
  loc_17EC9E4:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_15C)
  loc_17EC9FD:       If (CStr() = "Add") Then
  loc_17ECA5D:         var_174 = var_88.Fields.Item("SNo")
  loc_17ECAAA:         Set var_22C = Me.TxtPer
  loc_17ECAB0:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_174.Value), var_23C)
  loc_17ECAB8:         var_23C.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17ECAE0:       End If
  loc_17ECB2B:       var_15C = var_88.Fields.Item("SNo")
  loc_17ECB40:       Set var_160 = Me.TxtPer
  loc_17ECB46:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_15C.Value), var_174)
  loc_17ECB4E:       var_174.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17ECBA5:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17ECBDC:         Set var_E0 = Me.TxtPer
  loc_17ECBE2:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ECBEA:         var_15C.FontBold = True
  loc_17ECC00:       Else
  loc_17ECC34:         Set var_E0 = Me.TxtPer
  loc_17ECC3A:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ECC42:         var_15C.FontBold = False
  loc_17ECC55:       End If
  loc_17ECC8E:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17ECCC5:         Set var_E0 = Me.TxtPer
  loc_17ECCCB:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ECCD3:         var_15C.Enabled = False
  loc_17ECCE9:       Else
  loc_17ECD1D:         Set var_E0 = Me.TxtPer
  loc_17ECD23:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ECD2B:         var_15C.Enabled = True
  loc_17ECD3E:       End If
  loc_17ECD72:       Set var_E0 = Me.TxtPer
  loc_17ECD78:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ECD80:       var_15C.Enabled = False
  loc_17ECDCF:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17ECE06:         Set var_E0 = Me.TxtPer
  loc_17ECE0C:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ECE14:         var_15C.Enabled = False
  loc_17ECE27:       End If
  loc_17ECE58:       Set var_E0 = Me.LblCap
  loc_17ECE5E:       Call 0.Method_Proc_162_100_17EDFF08 (var_96)
  loc_17ECE78:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17ECEAD:         Set var_E0 = Me.LblCap
  loc_17ECEB3:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17ECEC4:         Me.LblCap.Load var_15C
  loc_17ECED7:       End If
  loc_17ECF0B:       Set var_E0 = Me.LblCap
  loc_17ECF11:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ECF19:       var_15C.Visible = True
  loc_17ECF88:       Set var_E0 = Me.TxtPer
  loc_17ECF8E:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ECFA9:       Set var_22C = Me.LblCap
  loc_17ECFAF:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17ECFB7:       var_23C.Top = var_15C.Top
  loc_17ED012:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17ED056:         var_174 = var_88.Fields.Item("SNo")
  loc_17ED071:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17ED07A:         Set var_E0 = Me.LblCap
  loc_17ED080:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ED09B:         Set var_22C = Me.LblCap
  loc_17ED0A1:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_174.Value), var_23C)
  loc_17ED0A9:         var_23C.Left = var_15C.Left
  loc_17ED0C8:       End If
  loc_17ED128:       Set var_160 = Me.LblCap
  loc_17ED12E:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_174)
  loc_17ED136:       var_174.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17ED19F:       var_15C = var_88.Fields.Item("SNo")
  loc_17ED1B4:       Set var_160 = Me.LblCap
  loc_17ED1BA:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_15C.Value), var_174)
  loc_17ED1C2:       var_174.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17ED219:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17ED250:         Set var_E0 = Me.LblCap
  loc_17ED256:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ED25E:         var_15C.FontBold = True
  loc_17ED274:       Else
  loc_17ED2A8:         Set var_E0 = Me.LblCap
  loc_17ED2AE:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ED2B6:         var_15C.FontBold = False
  loc_17ED2C9:       End If
  loc_17ED2FA:       Set var_E0 = Me.LblAt
  loc_17ED300:       Call 0.Method_Proc_162_100_17EDFF08 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17ED31A:       If (var_15C > CVar(var_96)) Then
  loc_17ED34F:         Set var_E0 = Me.LblAt
  loc_17ED355:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17ED366:         Me.LblAt.Load var_15C
  loc_17ED379:       End If
  loc_17ED3BA:       var_15C = var_88.Fields.Item("SNo")
  loc_17ED3FA:       Set var_160 = Me.LblAt
  loc_17ED400:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_15C.Value), var_174)
  loc_17ED408:       var_174.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17ED46C:       var_174 = var_88.Fields.Item("SNo")
  loc_17ED487:       Set var_E0 = Me.TxtPer
  loc_17ED48D:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ED4A8:       Set var_22C = Me.LblAt
  loc_17ED4AE:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_174.Value), var_23C)
  loc_17ED4B6:       var_23C.Top = var_15C.Top
  loc_17ED50E:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17ED545:         Set var_E0 = Me.LblAt
  loc_17ED54B:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ED553:         var_15C.FontBold = True
  loc_17ED569:       Else
  loc_17ED59D:         Set var_E0 = Me.LblAt
  loc_17ED5A3:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ED5AB:         var_15C.FontBold = False
  loc_17ED5BE:       End If
  loc_17ED609:       var_15C = var_88.Fields.Item("SNo")
  loc_17ED61E:       Set var_160 = Me.LblAt
  loc_17ED624:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_15C.Value), var_174)
  loc_17ED62C:       var_174.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_17ED686:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17ED6E5:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17ED6EE:         Set var_E0 = Me.LblAt
  loc_17ED6F4:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("RoundOff").Value), var_15C)
  loc_17ED70F:         Set var_22C = Me.LblAt
  loc_17ED715:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17ED71D:         var_23C.Left = var_15C.Left
  loc_17ED73C:       End If
  loc_17ED76D:       Set var_E0 = Me.TxtGt
  loc_17ED773:       Call 0.Method_Proc_162_100_17EDFF08 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17ED78D:       If (var_15C > CVar(var_96)) Then
  loc_17ED7C2:         Set var_E0 = Me.TxtGt
  loc_17ED7C8:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17ED7D9:         Me.TxtGt.Load var_15C
  loc_17ED7EC:       End If
  loc_17ED824:       Set var_E0 = Me.TxtGt
  loc_17ED82A:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ED832:       var_15C.TabIndex = (var_8A + 1)
  loc_17ED84B:       var_8A = (var_8A + 1)
  loc_17ED882:       Set var_E0 = Me.TxtGt
  loc_17ED888:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C, &HFF)
  loc_17ED890:       var_15C.Visible = var_8A
  loc_17ED8FF:       Set var_E0 = Me.TxtPer
  loc_17ED905:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17ED920:       Set var_22C = Me.TxtGt
  loc_17ED926:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17ED92E:       var_23C.Top = var_15C.Top
  loc_17ED989:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17ED9E8:         var_F0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17ED9F1:         Set var_E0 = Me.TxtGt
  loc_17ED9F7:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDA12:         Set var_22C = Me.TxtGt
  loc_17EDA18:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_23C)
  loc_17EDA20:         var_23C.Left = var_15C.Left
  loc_17EDA3F:       End If
  loc_17EDA43:       Set var_90 = Me.TopCtrl1
  loc_17EDA49:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_15C)
  loc_17EDA62:       If (CStr() = "Add") Then
  loc_17EDAC2:         var_174 = var_88.Fields.Item("SNo")
  loc_17EDB0F:         Set var_22C = Me.TxtGt
  loc_17EDB15:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_174.Value), var_23C)
  loc_17EDB1D:         var_23C.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17EDB45:       End If
  loc_17EDB8D:       var_15C = var_88.Fields.Item("SNo")
  loc_17EDBA2:       Set var_160 = Me.TxtGt
  loc_17EDBA8:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_15C.Value), var_174)
  loc_17EDBB0:       var_174.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17EDC05:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17EDC3C:         Set var_E0 = Me.TxtGt
  loc_17EDC42:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDC4A:         var_15C.FontBold = True
  loc_17EDC60:       Else
  loc_17EDC94:         Set var_E0 = Me.TxtGt
  loc_17EDC9A:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDCA2:         var_15C.FontBold = False
  loc_17EDCB5:       End If
  loc_17EDCEE:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17EDD25:         Set var_E0 = Me.TxtGt
  loc_17EDD2B:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDD33:         var_15C.Enabled = False
  loc_17EDD49:       Else
  loc_17EDD7D:         Set var_E0 = Me.TxtGt
  loc_17EDD83:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDD8B:         var_15C.Enabled = True
  loc_17EDD9E:       End If
  loc_17EDDD3:       Set var_E0 = Me.LblCap
  loc_17EDDD9:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDE0A:       If (var_15C.Tag = MemVar_1F95078 & "ROFF") Then
  loc_17EDE41:         Set var_E0 = Me.TxtGt
  loc_17EDE47:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDE4F:         var_15C.Enabled = False
  loc_17EDE62:       End If
  loc_17EDE96:       Set var_E0 = Me.TxtGt
  loc_17EDE9C:       Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17EDEA4:       var_15C.Enabled = False
  loc_17EDEF3:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17EDF15:         var_94 = var_88.Fields.Item("SNo")
  loc_17EDF2A:         Set var_E0 = Me.TxtGt
  loc_17EDF30:         Call 0.Method_Proc_162_100_17EDFF00 (CInt(var_94.Value), var_15C)
  loc_17EDF38:         var_15C.Enabled = False
  loc_17EDF4B:       End If
  loc_17EDF4B:     End If
  loc_17EDF4E:     var_88.MoveNext
  loc_17EDF53:     GoTo loc_17EC441
  loc_17EDF56:   End If
  loc_17EDF56: End If
  loc_17EDF67: Set var_90 = Me.Txt
  loc_17EDF6D: Call 0.Method_Proc_162_100_17EDFF00 (CInt(6), var_94)
  loc_17EDF75: var_94.TabIndex = (var_8A + 1)
  loc_17EDF92: Set var_90 = Me.Txt
  loc_17EDF98: Call 0.Method_Proc_162_100_17EDFF00 (CInt(7), var_94)
  loc_17EDFA0: var_94.TabIndex = (var_8A + 2)
  loc_17EDFBD: Set var_90 = Me.Txt
  loc_17EDFC3: Call 0.Method_Proc_162_100_17EDFF00 (CInt(8), var_94)
  loc_17EDFCB: var_94.TabIndex = (var_8A + 3)
  loc_17EDFE7: Me.Command1.TabIndex = (var_8A + 3)
  loc_17EDFEF: Exit Sub
End Sub

Public Sub Proc_162_101_16A73F8(arg_C) '16A73F8
  'Data Table: 586158
  Dim var_BC As Variant
  Dim var_C8 As Variant
  Dim var_D4 As Variant
  Dim var_90 As Double
  Dim var_D8 As String
  Dim unk_586184 As Connection15
  Dim var_C4 As Variant
  Dim var_D0 As Variant
  Dim var_144 As Variant
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_E8 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As String
  Dim var_F8 As Variant
  Dim var_120 As Variant
  Dim Me As Variant
  Dim var_130 As Variant
  Dim var_158 As Variant
  Dim var_AC As Recordset15
  Dim var_29C As Double
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_2A4 As Double
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_2AC As Double
  Dim var_244 As Variant
  Dim var_264 As Variant
  Dim var_168 As Variant
  Dim var_284 As Variant
  Dim var_214 As Variant
  Dim var_9C As Double
  Dim var_2C0 As Double
  Dim var_178 As Variant
  Dim var_88 As Recordset15
  loc_16A5AC4: Set var_B0 = Me.TxtGt
  loc_16A5ACA: Call 0.Method_Proc_162_101_16A73F88 (var_B2, var_92)
  loc_16A5AD5: For var_B6 =  To var_B2: 1 = var_B6 'Integer
  loc_16A5AE8:   Set var_B0 = Me.LblCap
  loc_16A5AEE:   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A5B10:   Set var_C4 = Me.TxtGt
  loc_16A5B16:   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_C8)
  loc_16A5B3E:   Set var_D0 = Me.TxtPer
  loc_16A5B44:   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_D4)
  loc_16A5B77:   If (((var_BC.Tag = "KADD") And (CDbl(Val(var_C8.Text)) > CDbl(0))) And (CDbl(Val(var_D4.Text)) <= CDbl(0))) Then
  loc_16A5B87:     Set var_B0 = Me.TxtGt
  loc_16A5B8D:     Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A5BA2:     var_90 = Val(var_BC.Text)
  loc_16A5BAF:   End If
  loc_16A5BBC:   Set var_B0 = Me.TxtGt
  loc_16A5BC2:   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A5BCA:   var_BC.Text = vbNullString
  loc_16A5BE3:   Set var_B0 = Me.LblCap
  loc_16A5BE9:   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A5BF1:   var_C0 = var_BC.Tag
  loc_16A5C13:   If (var_C0 = MemVar_1F95078 & "DIS") Then
  loc_16A5C1B:     var_9E = CByte(var_92) 'Byte
  loc_16A5C1F:   End If
  loc_16A5C4B:   Set var_B0 = Me.LblCap
  loc_16A5C51:   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0, "Select IsNull(Max(Nature),'') from SundryMast where Code='", var_F8, -1)
  loc_16A5C59:   var_C4 = var_BC.Tag
  loc_16A5C72:   unk_586184.Execute var_C8 & var_C0 & "'", 0, var_D0
  loc_16A5C7A:   var_168 = var_C4.Fields
  loc_16A5C82:    = var_C8.Item(var_90)
  loc_16A5C8A:    = var_D0.Value
  loc_16A5C98:   var_144 = 0
  loc_16A5CC5:   unk_586184.Execute "Select IsNull(Max(Nature),'') from SundryMast where Code='" & MemVar_1F95078 & "ST'", var_130, -1
  loc_16A5CCD:   var_D4 = var_D4.Fields
  loc_16A5CD5:   var_144 = var_134.Item(var_134)
  loc_16A5CDD:   var_148 = var_148.Value
  loc_16A5D12:   If (var_158 = var_158) Then
  loc_16A5D1A:     var_A0 = CByte(var_92) 'Byte
  loc_16A5D24:     global_108 = var_92
  loc_16A5D27:   End If
  loc_16A5D2A: Next var_B6 'Integer
  loc_16A5D42: Me.FGCat.Rows = 1
  loc_16A5D4E: Set var_B0 = Me.TopCtrl1
  loc_16A5D54: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_16A5D6D: If (CStr() = "Add") Then
  loc_16A5D70:   Call Proc_162_109_1315C48()
  loc_16A5D75: End If
  loc_16A5D81: Set var_B0 = Me.TxtGt
  loc_16A5D87: Call 0.Method_Proc_162_101_16A73F88 (var_B2, var_92)
  loc_16A5D92: For var_17C =  To var_B2: 2 = var_17C 'Integer
  loc_16A5DA5:   Set var_B0 = Me.LblCap
  loc_16A5DAB:   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A5DD5:   If (var_BC.Tag = MemVar_1F95078 & "DIS") Then
  loc_16A5DE5:     Set var_B0 = Me.TxtGt
  loc_16A5DEB:     Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A5DF3:     var_BC.Text = vbNullString
  loc_16A5E09:     If (var_A0 > var_9E) Then
  loc_16A5E31:       For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_180 'Integer
  loc_16A5E44:         Set var_B0 = Me.LblCap
  loc_16A5E4A:         Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A5E74:         If (var_BC.Tag = MemVar_1F95078 & "DIS") Then
  loc_16A5E7B:           var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A5E83:           var_120 = CVar(CLng(&H13)) 'Long
  loc_16A5EAE:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_16A5EBC:             If (global_152 = "RO") Then
  loc_16A5EFE:               var_130 = "Select * from guestfolio where foliono=" & Me.Fields.Item("Code").Value 
  loc_16A5F02:               var_120 = vbNullString
  loc_16A5F15:               unk_586184.Execute CStr(var_130 & var_120), var_168, -1
  loc_16A5F20:               Set var_AC = var_C4
  loc_16A5F4E:               If (var_AC.RecordCount > 0) Then
  loc_16A5F77:                 Proc_6_39_E7D3A0(var_130, CVar(var_AC.Fields.Item("RSDisc")), var_C4)
  loc_16A5F91:                 If (var_130 > 0) Then
  loc_16A5FCB:                   Proc_6_39_E7D3A0(var_130, CVar(var_AC.Fields.Item("RSDisc")), CVar(CLng(&HE)), CVar(CLng(var_94)))
  loc_16A5FE2:                   LateIdCallSt
  loc_16A6011:                   var_BC = var_AC.Fields.Item("RSDisc")
  loc_16A6020:                   Proc_6_39_E7D3A0(var_130, CVar(var_BC), Me.FGrid, CVar(CStr(var_130)))
  loc_16A6028:                   var_C0 = CStr(var_130)
  loc_16A6036:                   Set var_C4 = Me.TxtPer
  loc_16A603C:                   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_C8, var_C0)
  loc_16A6044:                   var_C8.Text = var_120
  loc_16A605F:                 Else
  loc_16A6063:                   var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A607D:                   Set var_B0 = Me.TxtPer
  loc_16A6083:                   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0, CVar(CLng(&HE)))
  loc_16A608B:                   var_E8 = var_BC.Text
  loc_16A609A:                   var_F8 = CVar(CStr(Val(var_C0))) 'String
  loc_16A60A2:                   Set var_C4 = Me.FGrid
  loc_16A60A8:                   LateIdCallSt
  loc_16A60BF:                 End If
  loc_16A60BF:               End If
  loc_16A60C2:             Else
  loc_16A60E0:               Set var_B0 = Me.TxtPer
  loc_16A60E6:               Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0, CVar(CLng(&HE)), CVar(CLng(var_94)))
  loc_16A60EE:               var_C4 = var_BC.Text
  loc_16A60FD:               var_F8 = CVar(CStr(Val(var_C0))) 'String
  loc_16A6105:               Set var_C4 = Me.FGrid
  loc_16A610B:               LateIdCallSt
  loc_16A6122:             End If
  loc_16A6122:           End If
  loc_16A6122:         End If
  loc_16A6126:         var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A612E:         var_120 = CVar(CLng(7)) 'Long
  loc_16A6157:         var_194 = CVar(CLng(var_94)) 'Long
  loc_16A615F:         var_1B4 = CVar(CLng(9)) 'Long
  loc_16A6188:         var_1D4 = CVar(CLng(var_94)) 'Long
  loc_16A6190:         var_1F4 = CVar(CLng(&HE)) 'Long
  loc_16A61B9:         var_244 = CVar(CLng(var_94)) 'Long
  loc_16A61C1:         var_264 = CVar(CLng(&HF)) 'Long
  loc_16A61EA:         var_168 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_16A61FA:         var_284 = CVar(CStr(Format(var_168, "0.00"))) 'String
  loc_16A6202:         Set var_C8 = Me.FGrid
  loc_16A6208:         LateIdCallSt
  loc_16A6239:         var_194 = CVar(CLng(var_94)) 'Long
  loc_16A6241:         var_1B4 = CVar(CLng(7)) 'Long
  loc_16A626A:         var_1D4 = CVar(CLng(var_94)) 'Long
  loc_16A627B:         var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A6283:         var_120 = CVar(CLng(9)) 'Long
  loc_16A62B3:         Set var_C4 = Me.FGrid
  loc_16A62B9:         LateIdCallSt
  loc_16A62DE:         var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A62E6:         var_120 = CVar(CLng(&HA)) 'Long
  loc_16A6300:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_16A6317:         Set var_BC = Me.LblDummy
  loc_16A631D:         Call 0.Method_Proc_162_101_16A73F80 (var_92, var_C4, CStr(Val(var_C0)), var_120, var_E8, var_C4, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_16A6325:         var_C4.Caption = var_120
  loc_16A634A:         Set var_B0 = Me.LblCap
  loc_16A6350:         Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0, var_E8, CVar(CLng(&HA)))
  loc_16A6358:         var_1D4 = var_BC.Tag
  loc_16A637A:         If (var_C0 = MemVar_1F95078 & "DIS") Then
  loc_16A638A:           Set var_B0 = Me.TxtGt
  loc_16A6390:           Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0)
  loc_16A6398:           var_29C = var_BC.Text
  loc_16A63AC:           var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A63D6:           var_2A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16A63F5:           var_130 = CVar((Val(var_C0) + var_2A4)) 'Double
  loc_16A6412:           Set var_C8 = Me.TxtGt
  loc_16A6418:           Call 0.Method_Proc_162_101_16A73F80 (var_92, var_D0, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1, 1, var_2A4)
  loc_16A6420:           var_D0.Text = CVar(CLng(&HF))
  loc_16A6446:         End If
  loc_16A6449:       Next var_180 'Integer
  loc_16A6451:     Else
  loc_16A6476:       For var_2B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_94 = var_2B0 'Integer
  loc_16A6489:         Set var_B0 = Me.LblCap
  loc_16A648F:         Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A64B9:         If (var_BC.Tag = MemVar_1F95078 & "DIS") Then
  loc_16A64C0:           var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A64C8:           var_120 = CVar(CLng(&H13)) 'Long
  loc_16A64E2:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_16A64F3:           If (var_C0 = "Y") Then
  loc_16A64FA:             var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A6514:             Set var_B0 = Me.TxtPer
  loc_16A651A:             Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0, CVar(CLng(&HE)))
  loc_16A6522:             var_E8 = var_BC.Text
  loc_16A6531:             var_F8 = CVar(CStr(Val(var_C0))) 'String
  loc_16A6539:             Set var_C4 = Me.FGrid
  loc_16A653F:             LateIdCallSt
  loc_16A6556:           End If
  loc_16A6556:         End If
  loc_16A6593:         Set var_BC = Me.LblDummy
  loc_16A6599:         Call 0.Method_Proc_162_101_16A73F80 (var_92, var_C4, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HA)), CVar(CLng(var_94)))
  loc_16A65A1:         var_C4.Caption = var_C4
  loc_16A65BD:         var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A65C5:         var_120 = CVar(CLng(&HA)) 'Long
  loc_16A65DF:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_16A65EE:         var_194 = CVar(CLng(var_94)) 'Long
  loc_16A65F6:         var_1B4 = CVar(CLng(&HE)) 'Long
  loc_16A65FF:         Set var_BC = Me.FGrid
  loc_16A6618:         var_2A4 = Val(CStr(var_BC.TextMatrix)))
  loc_16A6627:         var_214 = CVar(CLng(&HF)) 'Long
  loc_16A666A:         LateIdCallSt
  loc_16A669E:         Set var_B0 = Me.LblCap
  loc_16A66A4:         Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_C0) * var_2A4) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_16A66AC:         var_214 = var_BC.Tag
  loc_16A66CE:         If (var_C0 = MemVar_1F95078 & "DIS") Then
  loc_16A66DE:           Set var_B0 = Me.TxtGt
  loc_16A66E4:           Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0, CVar(CLng(var_94)), var_2A4)
  loc_16A66EC:           var_1B4 = var_BC.Text
  loc_16A66F9:           var_29C = Val(var_C0)
  loc_16A6700:           var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A672A:           var_2A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16A6749:           var_130 = CVar((var_29C + var_2A4)) 'Double
  loc_16A6766:           Set var_C8 = Me.TxtGt
  loc_16A676C:           Call 0.Method_Proc_162_101_16A73F80 (var_92, var_D0, CStr(Format(var_BC.TextMatrix), "0.00")), 1, 1, var_2A4)
  loc_16A6774:           var_D0.Text = CVar(CLng(&HF))
  loc_16A679A:         End If
  loc_16A679D:       Next var_2B0 'Integer
  loc_16A67A2:     End If
  loc_16A67A5:   Else
  loc_16A67B2:     Set var_B0 = Me.TxtPer
  loc_16A67B8:     Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A67C0:     var_B2 = var_BC.Visible
  loc_16A67D2:     If (var_B2 = &HFF) Then
  loc_16A67DB:       Call Proc_162_104_11FBEC0(var_92)
  loc_16A67E3:       var_9C = var_29C
  loc_16A67F3:       Set var_B0 = Me.TxtPer
  loc_16A67F9:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0)
  loc_16A6801:       var_9C = var_BC.Text
  loc_16A684E:       Set var_C4 = Me.TxtGt
  loc_16A6854:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_C8, CStr(Format(CVar(((var_9C * Val(var_C0)) / CDbl(&H64))), "0.00")), 1)
  loc_16A685C:       var_C8.Text = 1
  loc_16A6889:       Set var_B0 = Me.LblCap
  loc_16A688F:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0)
  loc_16A6897:       var_29C = var_BC.Tag
  loc_16A68B6:       If ((var_C0 = "KADD") And (var_90 > CDbl(0))) Then
  loc_16A68EF:         Set var_B0 = Me.TxtGt
  loc_16A68F5:         Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, CStr(Format(var_90, "0.00")))
  loc_16A68FD:         var_BC.Text = 1
  loc_16A6913:       End If
  loc_16A6925:       Set var_B0 = Me.LblDummy
  loc_16A692B:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, CStr(var_9C))
  loc_16A6933:       var_BC.Caption = 1
  loc_16A6942:     End If
  loc_16A6942:   End If
  loc_16A6945: Next var_17C 'Integer
  loc_16A696F: For var_2B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_2B4 'Integer
  loc_16A6979:   var_E8 = CVar(CLng(var_92)) 'Long
  loc_16A6981:   var_120 = CVar(CLng(7)) 'Long
  loc_16A699B:   var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_16A69AA:   var_194 = CVar(CLng(var_92)) 'Long
  loc_16A69B2:   var_1B4 = CVar(CLng(9)) 'Long
  loc_16A69BB:   Set var_BC = Me.FGrid
  loc_16A69DB:   var_1F4 = CVar(CLng(var_92)) 'Long
  loc_16A69E3:   var_214 = CVar(CLng(&HA)) 'Long
  loc_16A6A22:   LateIdCallSt
  loc_16A6A55:   Set var_B0 = Me.TxtGt
  loc_16A6A5B:   Call 0.Method_Proc_162_101_16A73F80 (1, var_BC, var_C0, Me.FGrid, CVar(CStr(Format(CVar((Val(var_C0) * Val(CStr(var_BC.TextMatrix))))), "0.00"))), 1, 1)
  loc_16A6A63:   var_214 = var_BC.Text
  loc_16A6A70:   var_29C = Val(var_C0)
  loc_16A6AA1:   var_2A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16A6AC0:   var_130 = CVar((var_29C + var_2A4)) 'Double
  loc_16A6ADC:   Set var_C8 = Me.TxtGt
  loc_16A6AE2:   Call 0.Method_Proc_162_101_16A73F80 (1, var_D0, CStr(Format(var_BC.TextMatrix), "0.00")), 1, 1, var_2A4, CVar(CLng(&HA)))
  loc_16A6AEA:   var_D0.Text = CVar(CLng(var_92))
  loc_16A6B13: Next var_2B4 'Integer
  loc_16A6B2B: Me.FGCat.Rows = 1
  loc_16A6B58: For var_2B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_2B8 'Integer
  loc_16A6B68:   If (var_A0 > var_9E) Then
  loc_16A6B6F:     var_E8 = CVar(CLng(var_92)) 'Long
  loc_16A6B77:     var_120 = CVar(CLng(&H18)) 'Long
  loc_16A6B96:     var_194 = CVar(CLng(var_92)) 'Long
  loc_16A6B9E:     var_1B4 = CVar(CLng(9)) 'Long
  loc_16A6BC7:     var_1D4 = CVar(CLng(var_92)) 'Long
  loc_16A6BCF:     var_1F4 = CVar(CLng(7)) 'Long
  loc_16A6C09:     Set var_C8 = Me.FGrid
  loc_16A6C22:     var_2C0 = Val(CStr(var_C8.TextMatrix)))
  loc_16A6C45:     var_178 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_2C0)) 'Double
  loc_16A6C64:     Call Proc_162_107_183CAF4(CStr(Me.FGrid.TextMatrix)), var_92, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(&HF)), CVar(CLng(var_92)))
  loc_16A6C93:   Else
  loc_16A6C97:     var_E8 = CVar(CLng(var_92)) 'Long
  loc_16A6C9F:     var_120 = CVar(CLng(&H18)) 'Long
  loc_16A6CBE:     var_194 = CVar(CLng(var_92)) 'Long
  loc_16A6CC6:     var_1B4 = CVar(CLng(9)) 'Long
  loc_16A6CCF:     Set var_BC = Me.FGrid
  loc_16A6D19:     var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16A6D57:     Call Proc_162_107_183CAF4(CStr(Me.FGrid.TextMatrix)), var_92, CSng(Format(CVar((Val(CStr(var_BC.TextMatrix))) * var_2AC)), "0.00")), 1, 1, var_2AC, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_16A6D7D:   End If
  loc_16A6D80: Next var_2B8 'Integer
  loc_16A6D89: Set var_B0 = Me.TopCtrl1
  loc_16A6D8F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_16A6DA8: If (CStr() = "Add") Then
  loc_16A6DB7:   Set var_B0 = Me.TxtGt
  loc_16A6DBD:   Call 0.Method_Proc_162_101_16A73F88 (var_B2, var_92)
  loc_16A6DC8:   For var_2C4 =  To var_B2: 2 = var_2C4 'Integer
  loc_16A6DDB:     Set var_B0 = Me.TxtPer
  loc_16A6DE1:     Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A6DE9:     var_B2 = var_BC.Visible
  loc_16A6E01:     Set var_C4 = Me.LblCap
  loc_16A6E07:     Call 0.Method_Proc_162_101_16A73F80 (var_92, var_C8)
  loc_16A6E0F:     var_C0 = var_C8.Tag
  loc_16A6E36:     If ((var_B2 = &HFF) And (var_C0 = MemVar_1F95078 & "SCH")) Then
  loc_16A6E3F:       Call Proc_162_104_11FBEC0(var_92)
  loc_16A6E47:       var_9C = var_29C
  loc_16A6E57:       Set var_B0 = Me.TxtPer
  loc_16A6E5D:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0)
  loc_16A6E65:       var_9C = var_BC.Text
  loc_16A6E72:       var_29C = Val(var_C0)
  loc_16A6EB2:       Set var_C4 = Me.TxtGt
  loc_16A6EB8:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_C8, CStr(Format(CVar(((var_9C * var_29C) / CDbl(&H64))), "0.00")), 1)
  loc_16A6EC0:       var_C8.Text = 1
  loc_16A6EF2:       Set var_B0 = Me.LblDummy
  loc_16A6EF8:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, CStr(var_9C))
  loc_16A6F00:       var_BC.Caption = var_29C
  loc_16A6F0F:     End If
  loc_16A6F12:   Next var_2C4 'Integer
  loc_16A6F17: End If
  loc_16A6F36: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_16A6F4C:   Me.FGCat.FixedRows = 1
  loc_16A6F54: End If
  loc_16A6F82: For var_2C8 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_94 = var_2C8 'Integer
  loc_16A6F94:   Set var_B0 = Me.TxtGt
  loc_16A6F9A:   Call 0.Method_Proc_162_101_16A73F88 (var_B2, var_92, 1)
  loc_16A6FA5:   For var_2CC = CDbl(0) To var_B2: 0 = var_2CC 'Integer
  loc_16A6FB8:     Set var_B0 = Me.LblCap
  loc_16A6FBE:     Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A6FC6:     var_C0 = var_BC.Tag
  loc_16A6FD2:     var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A700C:     If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_16A701C:       Set var_B0 = Me.TxtGt
  loc_16A7022:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0)
  loc_16A702A:       var_E8 = var_BC.Text
  loc_16A7037:       var_29C = Val(var_C0)
  loc_16A703E:       var_E8 = CVar(CLng(var_94)) 'Long
  loc_16A7055:       var_F8 = Me.FGCat.TextMatrix)
  loc_16A7068:       var_2A4 = Val(CStr(var_F8))
  loc_16A7087:       var_130 = CVar((var_29C + var_2A4)) 'Double
  loc_16A7096:       var_D8 = CStr(Format("0.00", "0.00"))
  loc_16A70A4:       Set var_C8 = Me.TxtGt
  loc_16A70AA:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_D0, var_D8, 1, 1, var_2A4)
  loc_16A70B2:       var_D0.Text = CVar(CLng(6))
  loc_16A70D8:     End If
  loc_16A70DB:   Next var_2CC 'Integer
  loc_16A70E3: Next var_2C8 'Integer
  loc_16A70F4: Set var_B0 = Me.TxtGt
  loc_16A70FA: Call 0.Method_Proc_162_101_16A73F88 (var_B2, var_92)
  loc_16A7105: For var_2D0 =  To var_B2: 2 = var_2D0 'Integer
  loc_16A7118:   Set var_B0 = Me.LblCap
  loc_16A711E:   Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC)
  loc_16A7148:   If (var_BC.Tag = MemVar_1F95078 & "ROFF") Then
  loc_16A7151:     Call Proc_162_104_11FBEC0(var_92)
  loc_16A7159:     var_9C = var_29C
  loc_16A7174:     Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, CStr(var_9C))
  loc_16A717C:     var_BC.Caption = var_9C
  loc_16A71A1:     unk_586184.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_F8, -1
  loc_16A71AC:     Set var_88 = Me.LblDummy
  loc_16A71C9:     If (var_88.RecordCount > 0) Then
  loc_16A71DB:       var_B0 = var_88.Fields
  loc_16A71E3:       var_BC = var_B0.Item("RoundOffType")
  loc_16A720F:       Proc_6_85_12628F0(var_9C, CByte(2), CStr(Left(CVar(var_BC), 1)))
  loc_16A724C:       Set var_C4 = Me.TxtGt
  loc_16A7252:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_C8, CStr(Format(CVar(var_B0), "0.00")), 1)
  loc_16A725A:       var_C8.Text = 1
  loc_16A727F:     Else
  loc_16A7282:       var_C0 = "S"
  loc_16A7293:       Proc_6_85_12628F0(var_9C, CByte(2), var_C0)
  loc_16A72D0:       Set var_B0 = Me.TxtGt
  loc_16A72D6:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, CStr(Format(CVar(var_29C), "0.00")), 1)
  loc_16A72DE:       var_BC.Text = 1
  loc_16A72FA:     End If
  loc_16A72FD:   Else
  loc_16A7304:     If (var_92 <> arg_C) Then
  loc_16A7314:       Set var_B0 = Me.LblCap
  loc_16A731A:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, var_C0)
  loc_16A7322:       var_29C = var_BC.Tag
  loc_16A7343:       Set var_C4 = Me.LblCap
  loc_16A7349:       Call 0.Method_Proc_162_101_16A73F80 (var_92, var_C8, var_D8)
  loc_16A7351:       (var_C0 = MemVar_1F95078 & "TOT") = var_C8.Tag
  loc_16A737C:       If (var_29C Or (var_D8 = MemVar_1F95078 & "NET")) Then
  loc_16A7385:         Call Proc_162_104_11FBEC0(var_92)
  loc_16A73BF:         Set var_B0 = Me.TxtGt
  loc_16A73C5:         Call 0.Method_Proc_162_101_16A73F80 (var_92, var_BC, CStr(Format(CVar(var_29C), "0.00")))
  loc_16A73CD:         var_BC.Text = 1
  loc_16A73E5:       End If
  loc_16A73E5:     End If
  loc_16A73E5:   End If
  loc_16A73E8: Next var_2D0 'Integer
  loc_16A73F2: Set var_88 = Nothing
  loc_16A73F5: Exit Sub
End Sub

Public Sub Proc_162_102_19DD7D0(arg_C) '19DD7D0
  'Data Table: 586158
  Dim Me As Variant
  Dim var_BC As Integer
  Dim var_C0 As Variant
  Dim var_C8 As String
  Dim var_D0 As Variant
  Dim var_90 As Double
  Dim var_164 As Variant
  Dim var_C4 As String
  Dim var_104 As Variant
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_D4 As String
  Dim unk_586184 As Connection15
  Dim var_CC As Variant
  Dim var_1D0 As Variant
  Dim var_198 As String
  Dim var_1BC As Variant
  Dim var_1C0 As Variant
  Dim var_20A As Integer
  Dim var_B4 As Variant
  Dim var_2A8 As Double
  Dim var_2B0 As Double
  Dim var_230 As Variant
  Dim var_F4 As Variant
  Dim var_2B8 As Double
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_168 As Variant
  Dim var_2C0 As Double
  Dim var_9C As Double
  Dim var_2DC As Double
  Dim var_2E4 As Double
  Dim var_2EC As Double
  Dim var_2F4 As Double
  Dim var_312 As Integer
  Dim var_290 As Variant
  Dim var_328 As Variant
  Dim var_154 As Variant
  Dim var_39C As TextBox
  Dim var_3AA As Integer
  Dim var_88 As Recordset15
  loc_19DA637: If (Me.RecordCount <= 0) Then
  loc_19DA63A:   Exit Sub
  loc_19DA63B: End If
  loc_19DA647: Set var_B4 = Me.TxtGt
  loc_19DA64D: Call 0.Method_Proc_162_102_19DD7D08 (var_B6, var_92)
  loc_19DA658: For var_BA =  To var_B6: 1 = var_BA 'Integer
  loc_19DA661:   var_BC = arg_C
  loc_19DA66C:   If (var_BC = CInt(&H1D)) Then
  loc_19DA67C:     Set var_B4 = Me.LblCap1
  loc_19DA682:     Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DA6AB:     Set var_CC = Me.TxtGt1
  loc_19DA6B1:     Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, var_D4)
  loc_19DA6B9:     (var_C0.Tag = MemVar_1F95078 & "ADD") = var_D0.Text
  loc_19DA6E0:     If (var_BC And (CDbl(Val(var_D4)) > CDbl(0))) Then
  loc_19DA6F0:       Set var_B4 = Me.TxtGt1
  loc_19DA6F6:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DA70B:       var_90 = Val(var_C0.Text)
  loc_19DA718:     End If
  loc_19DA725:     Set var_B4 = Me.TxtGt1
  loc_19DA72B:     Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DA733:     var_C0.Text = vbNullString
  loc_19DA74C:     Set var_B4 = Me.LblCap1
  loc_19DA752:     Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DA769:     var_C8 = MemVar_1F95078 & "DIS"
  loc_19DA77C:     If (var_C0.Tag = var_C8) Then
  loc_19DA784:       var_9E = CByte(var_92) 'Byte
  loc_19DA788:     End If
  loc_19DA7A8:     var_C4 = "Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F95078
  loc_19DA7BF:     Set var_B4 = Me.LblCap
  loc_19DA7C5:     Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C8, CVar(var_C4 & "' and Code='"), var_154, -1)
  loc_19DA7F0:     var_D4 = CStr(var_D0 & Trim(CVar(var_C8)) & "'")
  loc_19DA7FA:     unk_586184.Execute var_D4, 0, var_168
  loc_19DA802:     var_90 = var_C0.Tag.Fields
  loc_19DA80A:      = var_D0.Item()
  loc_19DA819:     var_188 = Trim(CVar(var_168))
  loc_19DA824:     var_1D0 = 0
  loc_19DA856:     var_198 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Code='" & MemVar_1F95078 & "ST'"
  loc_19DA85F:     unk_586184.Execute var_198, var_1B8, -1
  loc_19DA867:     var_1BC = var_1BC.Fields
  loc_19DA86F:     var_1D0 = var_1C0.Item(var_1C0)
  loc_19DA8BF:     If (var_1D4 = Trim(CVar(var_1D4))) Then
  loc_19DA8C7:       var_A0 = CByte(var_92) 'Byte
  loc_19DA8D1:       global_108 = var_92
  loc_19DA8D4:     End If
  loc_19DA8D7:   Else
  loc_19DA8DF:     If (var_BC = CInt(&H1E)) Then
  loc_19DA8EF:       Set var_B4 = Me.LblCap2
  loc_19DA8F5:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DA8FD:       global_108 = var_C0.Tag
  loc_19DA91E:       Set var_CC = Me.TxtGt2
  loc_19DA924:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, var_D4)
  loc_19DA92C:       (var_C4 = MemVar_1F95078 & "ADD") = var_D0.Text
  loc_19DA953:       If (var_188 And (CDbl(Val(var_D4)) > CDbl(0))) Then
  loc_19DA963:         Set var_B4 = Me.TxtGt2
  loc_19DA969:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DA97E:         var_90 = Val(var_C0.Text)
  loc_19DA98B:       End If
  loc_19DA998:       Set var_B4 = Me.TxtGt2
  loc_19DA99E:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DA9A6:       var_C0.Text = vbNullString
  loc_19DA9BF:       Set var_B4 = Me.LblCap2
  loc_19DA9C5:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DA9DC:       var_C8 = MemVar_1F95078 & "DIS"
  loc_19DA9EF:       If (var_C0.Tag = var_C8) Then
  loc_19DA9F7:         var_9E = CByte(var_92) 'Byte
  loc_19DA9FB:       End If
  loc_19DAA1B:       var_C4 = "Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F95078
  loc_19DAA32:       Set var_B4 = Me.LblCap
  loc_19DAA38:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C8, CVar(var_C4 & "' and Code='"), var_154, -1)
  loc_19DAA63:       var_D4 = CStr(var_D0 & Trim(CVar(var_C8)) & "'")
  loc_19DAA6D:       unk_586184.Execute var_D4, 0, var_168
  loc_19DAA75:       var_90 = var_C0.Tag.Fields
  loc_19DAA7D:        = var_D0.Item()
  loc_19DAA8C:       var_188 = Trim(CVar(var_168))
  loc_19DAA97:       var_1D0 = 0
  loc_19DAAC9:       var_198 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Code='" & MemVar_1F95078 & "ST'"
  loc_19DAAD2:       unk_586184.Execute var_198, var_1B8, -1
  loc_19DAADA:       var_1BC = var_1BC.Fields
  loc_19DAAE2:       var_1D0 = var_1C0.Item(var_1C0)
  loc_19DAB32:       If (var_1D4 = Trim(CVar(var_1D4))) Then
  loc_19DAB3A:         var_A0 = CByte(var_92) 'Byte
  loc_19DAB44:         global_108 = var_92
  loc_19DAB47:       End If
  loc_19DAB4A:     Else
  loc_19DAB52:       If (var_BC = CInt(&H1F)) Then
  loc_19DAB62:         Set var_B4 = Me.LblCap3
  loc_19DAB68:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DAB70:         global_108 = var_C0.Tag
  loc_19DAB91:         Set var_CC = Me.TxtGt3
  loc_19DAB97:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, var_D4)
  loc_19DAB9F:         (var_C4 = MemVar_1F95078 & "ADD") = var_D0.Text
  loc_19DABC6:         If (var_188 And (CDbl(Val(var_D4)) > CDbl(0))) Then
  loc_19DABD6:           Set var_B4 = Me.TxtGt3
  loc_19DABDC:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DABF1:           var_90 = Val(var_C0.Text)
  loc_19DABFE:         End If
  loc_19DAC0B:         Set var_B4 = Me.TxtGt3
  loc_19DAC11:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DAC19:         var_C0.Text = vbNullString
  loc_19DAC32:         Set var_B4 = Me.LblCap3
  loc_19DAC38:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DAC4F:         var_C8 = MemVar_1F95078 & "DIS"
  loc_19DAC62:         If (var_C0.Tag = var_C8) Then
  loc_19DAC6A:           var_9E = CByte(var_92) 'Byte
  loc_19DAC6E:         End If
  loc_19DACA5:         Set var_B4 = Me.LblCap
  loc_19DACAB:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C8, CVar("Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F95078 & "' and Code='"), var_154, -1)
  loc_19DACE0:         unk_586184.Execute CStr(var_D0 & Trim(CVar(var_C8)) & "'"), 0, var_168
  loc_19DACE8:         var_90 = var_C0.Tag.Fields
  loc_19DACF0:          = var_D0.Item()
  loc_19DACFF:         var_188 = Trim(CVar(var_168))
  loc_19DAD0A:         var_1D0 = 0
  loc_19DAD3C:         var_198 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Code='" & MemVar_1F95078 & "ST'"
  loc_19DAD45:         unk_586184.Execute var_198, var_1B8, -1
  loc_19DAD4D:         var_1BC = var_1BC.Fields
  loc_19DAD55:         var_1D0 = var_1C0.Item(var_1C0)
  loc_19DADA5:         If (var_1D4 = Trim(CVar(var_1D4))) Then
  loc_19DADAD:           var_A0 = CByte(var_92) 'Byte
  loc_19DADB7:           global_108 = var_92
  loc_19DADBA:         End If
  loc_19DADBA:       End If
  loc_19DADBA:     End If
  loc_19DADBA:   End If
  loc_19DADBD: Next var_BA 'Integer
  loc_19DADCE: Set var_B4 = Me.TxtGt
  loc_19DADD4: Call 0.Method_Proc_162_102_19DD7D08 (var_B6, var_92)
  loc_19DADDF: For var_208 =  To var_B6: 2 = var_208 'Integer
  loc_19DADE8:   var_20A = arg_C
  loc_19DADF3:   If (var_20A = CInt(&H1D)) Then
  loc_19DAE03:     Set var_B4 = Me.LblCap1
  loc_19DAE09:     Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DAE33:     If (var_C0.Tag = MemVar_1F95078 & "DIS") Then
  loc_19DAE43:       Set var_B4 = Me.TxtGt1
  loc_19DAE49:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DAE51:       var_C0.Text = "0.00"
  loc_19DAE67:       If (var_A0 > var_9E) Then
  loc_19DAE8F:         For var_20E = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_20E 'Integer
  loc_19DAE99:           var_124 = CVar(CLng(var_94)) 'Long
  loc_19DAEBB:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DAED1:           If (CDbl(Val(var_C4)) > CDbl(0)) Then
  loc_19DAEE1:             Set var_B4 = Me.LblCap1
  loc_19DAEE7:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4, CVar(CLng(&H1D)))
  loc_19DAEEF:             var_124 = var_C0.Tag
  loc_19DAF11:             If (var_C4 = MemVar_1F95078 & "DIS") Then
  loc_19DAF21:               Set var_B4 = Me.TxtGt1
  loc_19DAF27:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DAF2F:               1 = var_C0.Text
  loc_19DAF43:               var_124 = CVar(CLng(var_94)) 'Long
  loc_19DAF4B:               var_164 = CVar(CLng(&HF)) 'Long
  loc_19DAF74:               var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DAF7C:               var_230 = CVar(CLng(7)) 'Long
  loc_19DAF85:               Set var_D0 = Me.FGrid
  loc_19DAFB6:               Set var_168 = Me.FGrid
  loc_19DAFCF:               var_2C0 = Val(CStr(var_168.TextMatrix)))
  loc_19DAFF6:               var_114 = CVar((Val(var_C4) + ((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(var_D0.TextMatrix)))) * var_2C0))) 'Double
  loc_19DB013:               Set var_1BC = Me.TxtGt1
  loc_19DB019:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_1C0, CStr(Format(var_D0 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), "0.00")), 1, 1, var_2C0, CVar(CLng(&H1D)))
  loc_19DB021:               var_1C0.Text = CVar(CLng(var_94))
  loc_19DB053:             End If
  loc_19DB053:           End If
  loc_19DB056:         Next var_20E 'Integer
  loc_19DB05E:       Else
  loc_19DB083:         For var_2C4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_94 = var_2C4 'Integer
  loc_19DB08D:           var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DB096:           var_230 = CVar(CLng(arg_C)) 'Long
  loc_19DB09F:           Set var_C0 = Me.FGrid
  loc_19DB0B8:           var_2A8 = Val(CStr(var_C0.TextMatrix)))
  loc_19DB0E1:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DB0FC:           Set var_CC = Me.LblDummy1
  loc_19DB102:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, CStr((Val(var_C4) * var_2A8)), CVar(CLng(8)), CVar(CLng(var_94)))
  loc_19DB10A:           var_D0.Caption = var_2A8
  loc_19DB137:           Set var_B4 = Me.LblCap1
  loc_19DB13D:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DB145:           var_230 = var_C0.Tag
  loc_19DB167:           If (var_C4 = MemVar_1F95078 & "DIS") Then
  loc_19DB177:             Set var_B4 = Me.TxtGt1
  loc_19DB17D:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DB185:             var_1D0 = var_C0.Text
  loc_19DB192:             var_2A8 = Val(var_C4)
  loc_19DB199:             var_124 = CVar(CLng(var_94)) 'Long
  loc_19DB1A1:             var_164 = CVar(CLng(&HF)) 'Long
  loc_19DB1C3:             var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DB1E2:             var_F4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_19DB1FF:             Set var_D0 = Me.TxtGt1
  loc_19DB205:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_168, CStr(Format(var_C0.TextMatrix), "0.00")), 1, 1)
  loc_19DB20D:             var_168.Text = var_2B0
  loc_19DB233:           End If
  loc_19DB236:         Next var_2C4 'Integer
  loc_19DB23B:       End If
  loc_19DB23E:     Else
  loc_19DB24E:       Set var_B4 = Me.TxtGt
  loc_19DB254:       Call 0.Method_Proc_162_102_19DD7D0C (var_B6, var_92)
  loc_19DB264:       If ( And ((var_92 > 1) < (var_B6 - 2))) Then
  loc_19DB274:         Call Proc_162_103_151E0A0(var_92, CInt(&H1D))
  loc_19DB27C:         var_9C = var_2A8
  loc_19DB28C:         Set var_B4 = Me.LblCap
  loc_19DB292:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DB29A:         var_9C = var_C0.Tag
  loc_19DB2B9:         If ((var_C4 = "KADD") And (var_90 > CDbl(0))) Then
  loc_19DB2F2:           Set var_B4 = Me.TxtGt
  loc_19DB2F8:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(Format(var_90, "0.00")))
  loc_19DB300:           var_C0.Text = 1
  loc_19DB316:         End If
  loc_19DB328:         Set var_B4 = Me.LblDummy1
  loc_19DB32E:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(var_9C))
  loc_19DB336:         var_C0.Caption = 1
  loc_19DB345:       End If
  loc_19DB345:     End If
  loc_19DB348:   Else
  loc_19DB350:     If (var_20A = CInt(&H1E)) Then
  loc_19DB360:       Set var_B4 = Me.LblCap2
  loc_19DB366:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DB390:       If (var_C0.Tag = MemVar_1F95078 & "DIS") Then
  loc_19DB3A0:         Set var_B4 = Me.TxtGt2
  loc_19DB3A6:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DB3AE:         var_C0.Text = "0.00"
  loc_19DB3C4:         If (var_A0 > var_9E) Then
  loc_19DB3EC:           For var_2C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_94 = var_2C8 'Integer
  loc_19DB3F6:             var_124 = CVar(CLng(var_94)) 'Long
  loc_19DB418:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DB42E:             If (CDbl(Val(var_C4)) > CDbl(0)) Then
  loc_19DB43E:               Set var_B4 = Me.LblCap2
  loc_19DB444:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4, CVar(CLng(&H1E)))
  loc_19DB44C:               var_124 = var_C0.Tag
  loc_19DB46E:               If (var_C4 = MemVar_1F95078 & "DIS") Then
  loc_19DB47E:                 Set var_B4 = Me.TxtGt2
  loc_19DB484:                 Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DB48C:                 1 = var_C0.Text
  loc_19DB4A0:                 var_124 = CVar(CLng(var_94)) 'Long
  loc_19DB4A8:                 var_164 = CVar(CLng(&HF)) 'Long
  loc_19DB4D1:                 var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DB4D9:                 var_230 = CVar(CLng(7)) 'Long
  loc_19DB4E2:                 Set var_D0 = Me.FGrid
  loc_19DB513:                 Set var_168 = Me.FGrid
  loc_19DB52C:                 var_2C0 = Val(CStr(var_168.TextMatrix)))
  loc_19DB553:                 var_114 = CVar((Val(var_C4) + ((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(var_D0.TextMatrix)))) * var_2C0))) 'Double
  loc_19DB570:                 Set var_1BC = Me.TxtGt2
  loc_19DB576:                 Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_1C0, CStr(Format(Format(var_C0.TextMatrix), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(&H1E)))
  loc_19DB57E:                 var_1C0.Text = CVar(CLng(var_94))
  loc_19DB5B0:               End If
  loc_19DB5B0:             End If
  loc_19DB5B3:           Next var_2C8 'Integer
  loc_19DB5BB:         Else
  loc_19DB5E0:           For var_2CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_94 = var_2CC 'Integer
  loc_19DB5EA:             var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DB5F3:             var_230 = CVar(CLng(arg_C)) 'Long
  loc_19DB5FC:             Set var_C0 = Me.FGrid
  loc_19DB615:             var_2A8 = Val(CStr(var_C0.TextMatrix)))
  loc_19DB63E:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DB659:             Set var_CC = Me.LblDummy2
  loc_19DB65F:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, CStr((Val(var_C4) * var_2A8)), CVar(CLng(8)), CVar(CLng(var_94)))
  loc_19DB667:             var_D0.Caption = var_2A8
  loc_19DB694:             Set var_B4 = Me.LblCap2
  loc_19DB69A:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DB6A2:             var_230 = var_C0.Tag
  loc_19DB6C4:             If (var_C4 = MemVar_1F95078 & "DIS") Then
  loc_19DB6D4:               Set var_B4 = Me.TxtGt2
  loc_19DB6DA:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DB6E2:               var_1D0 = var_C0.Text
  loc_19DB6EF:               var_2A8 = Val(var_C4)
  loc_19DB6F6:               var_124 = CVar(CLng(var_94)) 'Long
  loc_19DB6FE:               var_164 = CVar(CLng(&HF)) 'Long
  loc_19DB720:               var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DB73F:               var_F4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_19DB75C:               Set var_D0 = Me.TxtGt2
  loc_19DB762:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_168, CStr(Format(var_C0.TextMatrix), "0.00")), 1, 1)
  loc_19DB76A:               var_168.Text = var_2B0
  loc_19DB790:             End If
  loc_19DB793:           Next var_2CC 'Integer
  loc_19DB798:         End If
  loc_19DB79B:       Else
  loc_19DB7AB:         Set var_B4 = Me.TxtGt
  loc_19DB7B1:         Call 0.Method_Proc_162_102_19DD7D0C (var_B6, var_92)
  loc_19DB7C1:         If ( And ((var_92 > 1) < (var_B6 - 2))) Then
  loc_19DB7D1:           Call Proc_162_103_151E0A0(var_92, CInt(&H1E))
  loc_19DB7D9:           var_9C = var_2A8
  loc_19DB7EE:           Set var_B4 = Me.LblDummy2
  loc_19DB7F4:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(var_9C))
  loc_19DB7FC:           var_C0.Caption = var_9C
  loc_19DB80B:         End If
  loc_19DB80B:       End If
  loc_19DB80E:     Else
  loc_19DB816:       If (var_20A = CInt(&H1F)) Then
  loc_19DB826:         Set var_B4 = Me.LblCap3
  loc_19DB82C:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DB856:         If (var_C0.Tag = MemVar_1F95078 & "DIS") Then
  loc_19DB866:           Set var_B4 = Me.TxtGt3
  loc_19DB86C:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DB874:           var_C0.Text = "0.00"
  loc_19DB88A:           If (var_A0 > var_9E) Then
  loc_19DB8B2:             For var_2D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_94 = var_2D0 'Integer
  loc_19DB8BC:               var_124 = CVar(CLng(var_94)) 'Long
  loc_19DB8DE:               var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DB8F4:               If (CDbl(Val(var_C4)) > CDbl(0)) Then
  loc_19DB904:                 Set var_B4 = Me.LblCap3
  loc_19DB90A:                 Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4, CVar(CLng(&H1F)))
  loc_19DB912:                 var_124 = var_C0.Tag
  loc_19DB934:                 If (var_C4 = MemVar_1F95078 & "DIS") Then
  loc_19DB944:                   Set var_B4 = Me.TxtGt3
  loc_19DB94A:                   Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DB952:                   1 = var_C0.Text
  loc_19DB966:                   var_124 = CVar(CLng(var_94)) 'Long
  loc_19DB96E:                   var_164 = CVar(CLng(&HF)) 'Long
  loc_19DB997:                   var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DB99F:                   var_230 = CVar(CLng(7)) 'Long
  loc_19DB9A8:                   Set var_D0 = Me.FGrid
  loc_19DB9D9:                   Set var_168 = Me.FGrid
  loc_19DB9F2:                   var_2C0 = Val(CStr(var_168.TextMatrix)))
  loc_19DBA19:                   var_114 = CVar((Val(var_C4) + ((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(var_D0.TextMatrix)))) * var_2C0))) 'Double
  loc_19DBA36:                   Set var_1BC = Me.TxtGt3
  loc_19DBA3C:                   Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_1C0, CStr(Format(Format(var_C0.TextMatrix), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(&H1F)))
  loc_19DBA44:                   var_1C0.Text = CVar(CLng(var_94))
  loc_19DBA76:                 End If
  loc_19DBA76:               End If
  loc_19DBA79:             Next var_2D0 'Integer
  loc_19DBA81:           Else
  loc_19DBAA6:             For var_2D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):       var_94 = var_2D4 'Integer
  loc_19DBAB0:               var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DBAB9:               var_230 = CVar(CLng(arg_C)) 'Long
  loc_19DBAC2:               Set var_C0 = Me.FGrid
  loc_19DBADB:               var_2A8 = Val(CStr(var_C0.TextMatrix)))
  loc_19DBB04:               var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DBB1F:               Set var_CC = Me.LblDummy3
  loc_19DBB25:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, CStr((Val(var_C4) * var_2A8)), CVar(CLng(8)), CVar(CLng(var_94)))
  loc_19DBB2D:               var_D0.Caption = var_2A8
  loc_19DBB5A:               Set var_B4 = Me.LblCap3
  loc_19DBB60:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DBB68:               var_230 = var_C0.Tag
  loc_19DBB8A:               If (var_C4 = MemVar_1F95078 & "DIS") Then
  loc_19DBB9A:                 Set var_B4 = Me.TxtGt3
  loc_19DBBA0:                 Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DBBA8:                 var_1D0 = var_C0.Text
  loc_19DBBB5:                 var_2A8 = Val(var_C4)
  loc_19DBBBC:                 var_124 = CVar(CLng(var_94)) 'Long
  loc_19DBBC4:                 var_164 = CVar(CLng(&HF)) 'Long
  loc_19DBBE6:                 var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DBC05:                 var_F4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_19DBC22:                 Set var_D0 = Me.TxtGt3
  loc_19DBC28:                 Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_168, CStr(Format(var_C0.TextMatrix), "0.00")), 1, 1)
  loc_19DBC30:                 var_168.Text = var_2B0
  loc_19DBC56:               End If
  loc_19DBC59:             Next var_2D4 'Integer
  loc_19DBC5E:           End If
  loc_19DBC61:         Else
  loc_19DBC71:           Set var_B4 = Me.TxtGt
  loc_19DBC77:           Call 0.Method_Proc_162_102_19DD7D0C (var_B6, var_92)
  loc_19DBC87:           If ( And ((var_92 > 1) < (var_B6 - 2))) Then
  loc_19DBC97:             Call Proc_162_103_151E0A0(var_92, CInt(&H1F))
  loc_19DBC9F:             var_9C = var_2A8
  loc_19DBCB4:             Set var_B4 = Me.LblDummy3
  loc_19DBCBA:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(var_9C))
  loc_19DBCC2:             var_C0.Caption = var_9C
  loc_19DBCD1:           End If
  loc_19DBCD1:         End If
  loc_19DBCD1:       End If
  loc_19DBCD1:     End If
  loc_19DBCD1:   End If
  loc_19DBCD4: Next var_208 'Integer
  loc_19DBCDC: var_2DC = CDbl(0)
  loc_19DBCE2: var_2E4 = CDbl(0)
  loc_19DBCE8: var_2EC = CDbl(0)
  loc_19DBCEE: var_2F4 = CDbl(0)
  loc_19DBCF4: var_2DC = CDbl(0)
  loc_19DBCFA: var_2E4 = CDbl(0)
  loc_19DBD00: var_2EC = CDbl(0)
  loc_19DBD06: var_2F4 = CDbl(0)
  loc_19DBD2E: For var_2F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_2F8 'Integer
  loc_19DBD38:   var_124 = CVar(CLng(var_94)) 'Long
  loc_19DBD40:   var_164 = CVar(CLng(&HB)) 'Long
  loc_19DBD7C:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_19DBD83:     var_124 = CVar(CLng(var_94)) 'Long
  loc_19DBD8B:     var_164 = CVar(CLng(7)) 'Long
  loc_19DBDB7:     var_2DC = (var_2DC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19DBDC7:     var_124 = CVar(CLng(var_94)) 'Long
  loc_19DBDCF:     var_164 = CVar(CLng(&H1D)) 'Long
  loc_19DBDFB:     var_2E4 = (var_2E4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19DBE0B:     var_124 = CVar(CLng(var_94)) 'Long
  loc_19DBE13:     var_164 = CVar(CLng(&H1E)) 'Long
  loc_19DBE3F:     var_2EC = (var_2EC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19DBE4F:     var_124 = CVar(CLng(var_94)) 'Long
  loc_19DBE57:     var_164 = CVar(CLng(&H1F)) 'Long
  loc_19DBE71:     var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_19DBE79:     var_2A8 = Val(var_C4)
  loc_19DBE83:     var_2F4 = (var_2F4 + var_2A8)
  loc_19DBE8F:   End If
  loc_19DBE92: Next var_2F8 'Integer
  loc_19DBEBC: For var_2FC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_2FC 'Integer
  loc_19DBECE:   var_164 = CVar(CLng(&HB)) 'Long
  loc_19DBF0A:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_19DBF19:     Set var_B4 = Me.TxtGt
  loc_19DBF1F:     Call 0.Method_Proc_162_102_19DD7D08 (var_B6, var_92, 2)
  loc_19DBF2A:     For var_300 = CVar(CLng(var_94)) To var_B6: var_164 = var_300 'Integer
  loc_19DBF3D:       Set var_B4 = Me.LblCap
  loc_19DBF43:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DBF4B:       var_124 = var_C0.Tag
  loc_19DBF6D:       If (var_C4 = MemVar_1F95078 & "SCH") Then
  loc_19DBF7D:         Call Proc_162_103_151E0A0(var_92, CInt(&H1D))
  loc_19DBF85:         var_9C = var_2A8
  loc_19DBF95:         Set var_B4 = Me.TxtGt1
  loc_19DBF9B:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, "0.00")
  loc_19DBFBC:         Set var_B4 = Me.TxtGt
  loc_19DBFC2:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DBFCA:         var_2A8 = var_9C
  loc_19DBFD7:         var_2A8 = Val(var_C4)
  loc_19DC017:         Set var_CC = Me.TxtGt1
  loc_19DC01D:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, CStr(Format(CVar(((var_2A8 / var_2DC) * var_2E4)), "0.00")), 1)
  loc_19DC025:         var_D0.Text = 1
  loc_19DC04A:         var_C4 = CStr(var_9C)
  loc_19DC057:         Set var_B4 = Me.LblDummy1
  loc_19DC05D:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DC065:         var_C0.Caption = var_2A8
  loc_19DC081:         Call Proc_162_103_151E0A0(var_92, CInt(&H1E))
  loc_19DC089:         var_9C = var_2A8
  loc_19DC099:         Set var_B4 = Me.TxtGt2
  loc_19DC09F:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, "0.00")
  loc_19DC0C0:         Set var_B4 = Me.TxtGt
  loc_19DC0C6:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DC0CE:         var_2A8 = var_9C
  loc_19DC0DB:         var_2A8 = Val(var_C4)
  loc_19DC11B:         Set var_CC = Me.TxtGt2
  loc_19DC121:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, CStr(Format(CVar(((var_2A8 / var_2DC) * var_2EC)), "0.00")), 1)
  loc_19DC129:         var_D0.Text = 1
  loc_19DC14E:         var_C4 = CStr(var_9C)
  loc_19DC15B:         Set var_B4 = Me.LblDummy2
  loc_19DC161:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DC169:         var_C0.Caption = var_2A8
  loc_19DC185:         Call Proc_162_103_151E0A0(var_92, CInt(&H1F))
  loc_19DC18D:         var_9C = var_2A8
  loc_19DC19D:         Set var_B4 = Me.TxtGt3
  loc_19DC1A3:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, "0.00")
  loc_19DC1C4:         Set var_B4 = Me.TxtGt
  loc_19DC1CA:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DC1D2:         var_2A8 = var_9C
  loc_19DC1DF:         var_2A8 = Val(var_C4)
  loc_19DC21F:         Set var_CC = Me.TxtGt3
  loc_19DC225:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, CStr(Format(CVar(((var_2A8 / var_2DC) * var_2F4)), "0.00")), 1)
  loc_19DC22D:         var_D0.Text = 1
  loc_19DC25F:         Set var_B4 = Me.LblDummy3
  loc_19DC265:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(var_9C))
  loc_19DC26D:         var_C0.Caption = var_2A8
  loc_19DC27C:       End If
  loc_19DC27F:     Next var_300 'Integer
  loc_19DC284:   End If
  loc_19DC287: Next var_2FC 'Integer
  loc_19DC298: Set var_B4 = Me.TxtGt1
  loc_19DC29E: Call 0.Method_Proc_162_102_19DD7D00 (1, var_C0)
  loc_19DC2A6: var_C0.Text = "0.00"
  loc_19DC2BE: Set var_B4 = Me.TxtGt2
  loc_19DC2C4: Call 0.Method_Proc_162_102_19DD7D00 (1, var_C0)
  loc_19DC2CC: var_C0.Text = "0.00"
  loc_19DC2E4: Set var_B4 = Me.TxtGt3
  loc_19DC2EA: Call 0.Method_Proc_162_102_19DD7D00 (1, var_C0)
  loc_19DC2F2: var_C0.Text = "0.00"
  loc_19DC323: For var_304 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_304 'Integer
  loc_19DC335:   Set var_B4 = Me.TxtGt1
  loc_19DC33B:   Call 0.Method_Proc_162_102_19DD7D00 (1, var_C0)
  loc_19DC343:   var_C4 = var_C0.Text
  loc_19DC357:   var_124 = CVar(CLng(var_92)) 'Long
  loc_19DC35F:   var_164 = CVar(CLng(&H1D)) 'Long
  loc_19DC381:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DC3B2:   var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DC3D5:   var_104 = CVar((Val(var_C4) + (var_2B0 * var_2B8))) 'Double
  loc_19DC3F1:   Set var_168 = Me.TxtGt1
  loc_19DC3F7:   Call 0.Method_Proc_162_102_19DD7D00 (1, var_1BC, CStr(Format(Format(CVar(((Val(var_C4) / var_2DC) * var_2F4)), "0.00"), "0.00")), 1, 1, var_2B8, CVar(CLng(9)))
  loc_19DC3FF:   var_1BC.Text = CVar(CLng(var_92))
  loc_19DC437:   Set var_B4 = Me.TxtGt2
  loc_19DC43D:   Call 0.Method_Proc_162_102_19DD7D00 (1, var_C0, var_C4, var_2B0)
  loc_19DC445:   var_164 = var_C0.Text
  loc_19DC459:   var_124 = CVar(CLng(var_92)) 'Long
  loc_19DC483:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DC4B4:   var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DC4D7:   var_104 = CVar((Val(var_C4) + (var_2B0 * var_2B8))) 'Double
  loc_19DC4F3:   Set var_168 = Me.TxtGt2
  loc_19DC4F9:   Call 0.Method_Proc_162_102_19DD7D00 (1, var_1BC, CStr(Format(Format(CVar(((Val(var_C4) / var_2DC) * var_2F4)), "0.00"), "0.00")), 1, 1, var_2B8, CVar(CLng(9)))
  loc_19DC501:   var_1BC.Text = CVar(CLng(var_92))
  loc_19DC539:   Set var_B4 = Me.TxtGt3
  loc_19DC53F:   Call 0.Method_Proc_162_102_19DD7D00 (1, var_C0, var_C4, var_2B0, CVar(CLng(&H1E)))
  loc_19DC547:   var_124 = var_C0.Text
  loc_19DC55B:   var_124 = CVar(CLng(var_92)) 'Long
  loc_19DC563:   var_164 = CVar(CLng(&H1F)) 'Long
  loc_19DC5B6:   var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DC5D9:   var_104 = CVar((Val(var_C4) + (Val(CStr(Me.FGrid.TextMatrix))) * var_2B8))) 'Double
  loc_19DC5F5:   Set var_168 = Me.TxtGt3
  loc_19DC5FB:   Call 0.Method_Proc_162_102_19DD7D00 (1, var_1BC, CStr(Format(Format(CVar(((Val(var_C4) / var_2DC) * var_2F4)), "0.00"), "0.00")), 1, 1, var_2B8, CVar(CLng(9)))
  loc_19DC603:   var_1BC.Text = CVar(CLng(var_92))
  loc_19DC632: Next var_304 'Integer
  loc_19DC656: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_19DC66C:   Me.FGCat.FixedRows = 1
  loc_19DC674: End If
  loc_19DC67A: global_100 = CDbl(0)
  loc_19DC6A2: For var_308 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_94 = var_308 'Integer
  loc_19DC6B6:   If (arg_C = CInt(&H1D)) Then
  loc_19DC6C5:     Set var_B4 = Me.TxtGt1
  loc_19DC6CB:     Call 0.Method_Proc_162_102_19DD7D08 (var_B6, var_92, 1)
  loc_19DC6D6:     For var_316 = 0 To var_B6: var_312 = var_316 'Integer
  loc_19DC6E9:       Set var_B4 = Me.LblCap1
  loc_19DC6EF:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DC6F7:       0 = var_C0.Tag
  loc_19DC703:       var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC73D:       If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_19DC744:         var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC74C:         var_164 = CVar(CLng(1)) 'Long
  loc_19DC766:         var_C4 = CStr(Me.FGCat.TextMatrix))
  loc_19DC77C:         Set var_C0 = Me.FGrid
  loc_19DC7AF:         If (CDbl(Val(CStr(var_C0.TextMatrix)))) > CDbl(0)) Then
  loc_19DC7BF:           Set var_B4 = Me.TxtGt1
  loc_19DC7C5:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4, CVar(CLng(arg_C)), CVar(CLng(var_C4)))
  loc_19DC7CD:           var_164 = var_C0.Text
  loc_19DC7E1:           var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC7E9:           var_164 = CVar(CLng(6)) 'Long
  loc_19DC812:           var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DC81A:           var_230 = CVar(CLng(1)) 'Long
  loc_19DC838:           var_250 = CVar(CLng(CStr(Me.FGCat.TextMatrix)))) 'Long
  loc_19DC840:           var_270 = CVar(CLng(7)) 'Long
  loc_19DC869:           var_290 = CVar(CLng(var_94)) 'Long
  loc_19DC871:           var_328 = CVar(CLng(1)) 'Long
  loc_19DC8BA:           var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DC8E1:           var_154 = CVar((Val(var_C4) + ((Val(CStr(Me.FGCat.TextMatrix))) / Val(CStr(Me.FGrid.TextMatrix)))) * var_2C0))) 'Double
  loc_19DC8FE:           Set var_1D4 = Me.TxtGt1
  loc_19DC904:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_39C, CStr(Format(Format(Format(var_C0.TextMatrix), "0.00"), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(arg_C)))
  loc_19DC90C:           var_39C.Text = CVar(CLng(CStr(Me.FGCat.TextMatrix))))
  loc_19DC94A:         End If
  loc_19DC94A:       End If
  loc_19DC94D:     Next var_316 'Integer
  loc_19DC955:   Else
  loc_19DC95D:     If (arg_C = CInt(&H1E)) Then
  loc_19DC96C:       Set var_B4 = Me.TxtGt2
  loc_19DC972:       Call 0.Method_Proc_162_102_19DD7D08 (var_B6, var_92)
  loc_19DC97D:       For var_3A0 =  To var_B6:   1 = var_3A0 'Integer
  loc_19DC990:         Set var_B4 = Me.LblCap2
  loc_19DC996:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DC99E:         var_C4 = var_C0.Tag
  loc_19DC9AA:         var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC9E4:         If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_19DC9EB:           var_124 = CVar(CLng(var_94)) 'Long
  loc_19DC9F3:           var_164 = CVar(CLng(1)) 'Long
  loc_19DCA0D:           var_C4 = CStr(Me.FGCat.TextMatrix))
  loc_19DCA23:           Set var_C0 = Me.FGrid
  loc_19DCA56:           If (CDbl(Val(CStr(var_C0.TextMatrix)))) > CDbl(0)) Then
  loc_19DCA66:             Set var_B4 = Me.TxtGt2
  loc_19DCA6C:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4, CVar(CLng(arg_C)), CVar(CLng(var_C4)))
  loc_19DCA74:             var_164 = var_C0.Text
  loc_19DCA88:             var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCA90:             var_164 = CVar(CLng(6)) 'Long
  loc_19DCAB9:             var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DCAC1:             var_230 = CVar(CLng(1)) 'Long
  loc_19DCADF:             var_250 = CVar(CLng(CStr(Me.FGCat.TextMatrix)))) 'Long
  loc_19DCAE7:             var_270 = CVar(CLng(7)) 'Long
  loc_19DCB10:             var_290 = CVar(CLng(var_94)) 'Long
  loc_19DCB18:             var_328 = CVar(CLng(1)) 'Long
  loc_19DCB61:             var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DCB88:             var_154 = CVar((Val(var_C4) + ((Val(CStr(Me.FGCat.TextMatrix))) / Val(CStr(Me.FGrid.TextMatrix)))) * var_2C0))) 'Double
  loc_19DCBA5:             Set var_1D4 = Me.TxtGt2
  loc_19DCBAB:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_39C, CStr(Format(Format(Format(var_C0.TextMatrix), "0.00"), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(arg_C)))
  loc_19DCBB3:             var_39C.Text = CVar(CLng(CStr(Me.FGCat.TextMatrix))))
  loc_19DCBF1:           End If
  loc_19DCBF1:         End If
  loc_19DCBF4:       Next var_3A0 'Integer
  loc_19DCBFC:     Else
  loc_19DCC04:       If (arg_C = CInt(&H1F)) Then
  loc_19DCC13:         Set var_B4 = Me.TxtGt3
  loc_19DCC19:         Call 0.Method_Proc_162_102_19DD7D08 (var_B6, var_92)
  loc_19DCC24:         For var_3A4 =  To var_B6:     1 = var_3A4 'Integer
  loc_19DCC37:           Set var_B4 = Me.LblCap3
  loc_19DCC3D:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DCC45:           var_C4 = var_C0.Tag
  loc_19DCC51:           var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCC8B:           If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_19DCC92:             var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCC9A:             var_164 = CVar(CLng(1)) 'Long
  loc_19DCCB4:             var_C4 = CStr(Me.FGCat.TextMatrix))
  loc_19DCCCA:             Set var_C0 = Me.FGrid
  loc_19DCCFD:             If (CDbl(Val(CStr(var_C0.TextMatrix)))) > CDbl(0)) Then
  loc_19DCD0D:               Set var_B4 = Me.TxtGt3
  loc_19DCD13:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4, CVar(CLng(arg_C)), CVar(CLng(var_C4)))
  loc_19DCD1B:               var_164 = var_C0.Text
  loc_19DCD28:               var_2A8 = Val(var_C4)
  loc_19DCD2F:               var_124 = CVar(CLng(var_94)) 'Long
  loc_19DCD37:               var_164 = CVar(CLng(6)) 'Long
  loc_19DCD46:               var_E4 = Me.FGCat.TextMatrix)
  loc_19DCD60:               var_1D0 = CVar(CLng(var_94)) 'Long
  loc_19DCD68:               var_230 = CVar(CLng(1)) 'Long
  loc_19DCD71:               Set var_D0 = Me.FGCat
  loc_19DCD82:               var_D4 = CStr(var_D0.TextMatrix))
  loc_19DCD86:               var_250 = CVar(CLng(var_D4)) 'Long
  loc_19DCD8E:               var_270 = CVar(CLng(7)) 'Long
  loc_19DCDB7:               var_290 = CVar(CLng(var_94)) 'Long
  loc_19DCDBF:               var_328 = CVar(CLng(1)) 'Long
  loc_19DCE08:               var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19DCE2F:               var_154 = CVar((var_2A8 + ((Val(CStr(var_E4)) / Val(CStr(Me.FGrid.TextMatrix)))) * var_2C0))) 'Double
  loc_19DCE4C:               Set var_1D4 = Me.TxtGt3
  loc_19DCE52:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_39C, CStr(Format(Format(Format(var_C0.TextMatrix), "0.00"), "0.00"), "0.00")), 1, 1, var_2C0, CVar(CLng(arg_C)))
  loc_19DCE5A:               var_39C.Text = CVar(CLng(CStr(Me.FGCat.TextMatrix))))
  loc_19DCE98:             End If
  loc_19DCE98:           End If
  loc_19DCE9B:         Next var_3A4 'Integer
  loc_19DCEA0:       End If
  loc_19DCEA0:     End If
  loc_19DCEA0:   End If
  loc_19DCEA3: Next var_308 'Integer
  loc_19DCEB4: Set var_B4 = Me.TxtGt
  loc_19DCEBA: Call 0.Method_Proc_162_102_19DD7D08 (var_B6, var_92)
  loc_19DCEC5: For var_3A8 =  To var_B6: 2 = var_3A8 'Integer
  loc_19DCECE:   var_3AA = arg_C
  loc_19DCED9:   If (var_3AA = CInt(&H1D)) Then
  loc_19DCEE9:     Set var_B4 = Me.LblCap1
  loc_19DCEEF:     Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0)
  loc_19DCF19:     If (var_C0.Tag = MemVar_1F95078 & "ROFF") Then
  loc_19DCF25:       Call Proc_162_103_151E0A0(var_92, arg_C)
  loc_19DCF2D:       var_9C = var_2A8
  loc_19DCF48:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(var_9C))
  loc_19DCF50:       var_C0.Caption = var_9C
  loc_19DCF75:       unk_586184.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_E4, -1
  loc_19DCF80:       Set var_88 = Me.LblDummy1
  loc_19DCF9D:       If (var_88.RecordCount > 0) Then
  loc_19DCFAF:         var_B4 = var_88.Fields
  loc_19DCFB7:         var_C0 = var_B4.Item("RoundOffType")
  loc_19DCFE3:         Proc_6_85_12628F0(var_9C, CByte(2), CStr(Left(CVar(var_C0), 1)))
  loc_19DD020:         Set var_CC = Me.TxtGt1
  loc_19DD026:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_19DD02E:         var_D0.Text = 1
  loc_19DD053:       Else
  loc_19DD056:         var_C4 = "S"
  loc_19DD067:         Proc_6_85_12628F0(var_9C, CByte(2), var_C4)
  loc_19DD0A4:         Set var_B4 = Me.TxtGt1
  loc_19DD0AA:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_19DD0B2:         var_C0.Text = 1
  loc_19DD0CE:       End If
  loc_19DD0D1:     Else
  loc_19DD0D8:       If (var_92 <> arg_C) Then
  loc_19DD0E8:         Set var_B4 = Me.LblCap1
  loc_19DD0EE:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DD0F6:         var_2A8 = var_C0.Tag
  loc_19DD117:         Set var_CC = Me.LblCap1
  loc_19DD11D:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, var_D4)
  loc_19DD125:         (var_C4 = MemVar_1F95078 & "TOT") = var_D0.Tag
  loc_19DD150:         If (var_2A8 Or (var_D4 = MemVar_1F95078 & "NET")) Then
  loc_19DD15C:           Call Proc_162_103_151E0A0(var_92, arg_C)
  loc_19DD179:           var_E4 = CVar(var_2A8) 'Double
  loc_19DD188:           var_C4 = CStr(Format(var_E4, "0.00"))
  loc_19DD196:           Set var_B4 = Me.TxtGt1
  loc_19DD19C:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4, 1)
  loc_19DD1A4:           var_C0.Text = 1
  loc_19DD1BC:         End If
  loc_19DD1BC:       End If
  loc_19DD1BC:     End If
  loc_19DD1BF:   Else
  loc_19DD1C7:     If (var_3AA = CInt(&H1E)) Then
  loc_19DD1D7:       Set var_B4 = Me.LblCap2
  loc_19DD1DD:       Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DD207:       If (var_C4 = MemVar_1F95078 & "ROFF") Then
  loc_19DD213:         Call Proc_162_103_151E0A0(var_92, arg_C)
  loc_19DD21B:         var_9C = var_C0.Tag
  loc_19DD236:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(var_9C))
  loc_19DD23E:         var_C0.Caption = var_9C
  loc_19DD263:         unk_586184.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_E4, -1
  loc_19DD26E:         Set var_88 = Me.LblDummy2
  loc_19DD28B:         If (var_88.RecordCount > 0) Then
  loc_19DD29D:           var_B4 = var_88.Fields
  loc_19DD2A5:           var_C0 = var_B4.Item("RoundOffType")
  loc_19DD2D1:           Proc_6_85_12628F0(var_9C, CByte(2), CStr(Left(CVar(var_C0), 1)))
  loc_19DD30E:           Set var_CC = Me.TxtGt2
  loc_19DD314:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_19DD31C:           var_D0.Text = 1
  loc_19DD341:         Else
  loc_19DD344:           var_C4 = "S"
  loc_19DD355:           Proc_6_85_12628F0(var_9C, CByte(2), var_C4)
  loc_19DD392:           Set var_B4 = Me.TxtGt2
  loc_19DD398:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_19DD3A0:           var_C0.Text = 1
  loc_19DD3BC:         End If
  loc_19DD3BF:       Else
  loc_19DD3C6:         If (var_92 <> arg_C) Then
  loc_19DD3D6:           Set var_B4 = Me.LblCap2
  loc_19DD3DC:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DD3E4:           var_2A8 = var_C0.Tag
  loc_19DD405:           Set var_CC = Me.LblCap2
  loc_19DD40B:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, var_D4)
  loc_19DD413:           (var_C4 = MemVar_1F95078 & "TOT") = var_D0.Tag
  loc_19DD43E:           If (var_2A8 Or (var_D4 = MemVar_1F95078 & "NET")) Then
  loc_19DD44A:             Call Proc_162_103_151E0A0(var_92, arg_C)
  loc_19DD467:             var_E4 = CVar(var_2A8) 'Double
  loc_19DD476:             var_C4 = CStr(Format(var_E4, "0.00"))
  loc_19DD484:             Set var_B4 = Me.TxtGt2
  loc_19DD48A:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4, 1)
  loc_19DD492:             var_C0.Text = 1
  loc_19DD4AA:           End If
  loc_19DD4AA:         End If
  loc_19DD4AA:       End If
  loc_19DD4AD:     Else
  loc_19DD4B5:       If (var_3AA = CInt(&H1F)) Then
  loc_19DD4C5:         Set var_B4 = Me.LblCap3
  loc_19DD4CB:         Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DD4F5:         If (var_C4 = MemVar_1F95078 & "ROFF") Then
  loc_19DD501:           Call Proc_162_103_151E0A0(var_92, arg_C)
  loc_19DD509:           var_9C = var_C0.Tag
  loc_19DD524:           Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(var_9C))
  loc_19DD52C:           var_C0.Caption = var_9C
  loc_19DD551:           unk_586184.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_E4, -1
  loc_19DD55C:           Set var_88 = Me.LblDummy3
  loc_19DD579:           If (var_88.RecordCount > 0) Then
  loc_19DD58B:             var_B4 = var_88.Fields
  loc_19DD593:             var_C0 = var_B4.Item("RoundOffType")
  loc_19DD5BF:             Proc_6_85_12628F0(var_9C, CByte(2), CStr(Left(CVar(var_C0), 1)))
  loc_19DD5FC:             Set var_CC = Me.TxtGt3
  loc_19DD602:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_19DD60A:             var_D0.Text = 1
  loc_19DD62F:           Else
  loc_19DD632:             var_C4 = "S"
  loc_19DD643:             Proc_6_85_12628F0(var_9C, CByte(2), var_C4)
  loc_19DD680:             Set var_B4 = Me.TxtGt3
  loc_19DD686:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_19DD68E:             var_C0.Text = 1
  loc_19DD6AA:           End If
  loc_19DD6AD:         Else
  loc_19DD6B4:           If (var_92 <> arg_C) Then
  loc_19DD6C4:             Set var_B4 = Me.LblCap3
  loc_19DD6CA:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, var_C4)
  loc_19DD6D2:             var_2A8 = var_C0.Tag
  loc_19DD6F3:             Set var_CC = Me.LblCap3
  loc_19DD6F9:             Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_D0, var_D4)
  loc_19DD701:             (var_C4 = MemVar_1F95078 & "TOT") = var_D0.Tag
  loc_19DD72C:             If (var_2A8 Or (var_D4 = MemVar_1F95078 & "NET")) Then
  loc_19DD738:               Call Proc_162_103_151E0A0(var_92, arg_C)
  loc_19DD772:               Set var_B4 = Me.TxtGt3
  loc_19DD778:               Call 0.Method_Proc_162_102_19DD7D00 (var_92, var_C0, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_19DD780:               var_C0.Text = 1
  loc_19DD798:             End If
  loc_19DD798:           End If
  loc_19DD798:         End If
  loc_19DD798:       End If
  loc_19DD798:     End If
  loc_19DD798:   End If
  loc_19DD79B: Next var_3A8 'Integer
  loc_19DD7A7: Call Proc_162_111_129A2A4(CInt(&H1D))
  loc_19DD7B3: Call Proc_162_111_129A2A4(CInt(&H1E))
  loc_19DD7BF: Call Proc_162_111_129A2A4(CInt(&H1F))
  loc_19DD7C9: Set var_88 = Nothing
  loc_19DD7CC: Exit Sub
End Sub

Public Sub Proc_162_103_151E0A0(arg_C, arg_10) '151E0A0
  'Data Table: 586158
  Dim var_A4 As Integer
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_160 As Double
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_D0 As Variant
  Dim var_A0 As Double
  Dim var_174 As Variant
  Dim var_184 As Label
  Dim var_8C As Double
  Dim var_1AC As Variant
  loc_151D173: var_A4 = arg_10
  loc_151D17E: If (var_A4 = CInt(&H1D)) Then
  loc_151D18E:   Set var_A8 = Me.TxtGt1
  loc_151D194:   Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_AC)
  loc_151D1B3:   var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_151D1D1:   Set var_A8 = Me.LblCap1
  loc_151D1D7:   Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_AC)
  loc_151D201:   If (var_AC.Tag = MemVar_1F95078 & "SCH") Then
  loc_151D229:     For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_151D233:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151D23B:       var_108 = CVar(CLng(&H1B)) 'Long
  loc_151D266:       If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_151D26D:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151D275:         var_108 = CVar(CLng(8)) 'Long
  loc_151D29E:         var_128 = CVar(CLng(var_A2)) 'Long
  loc_151D2A7:         var_148 = CVar(CLng(arg_10)) 'Long
  loc_151D2D7:         var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_151D2EF:       End If
  loc_151D2F2:     Next var_D8 'Integer
  loc_151D2FA:   Else
  loc_151D31F:     For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_16C 'Integer
  loc_151D329:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151D331:       var_108 = CVar(CLng(8)) 'Long
  loc_151D35A:       var_128 = CVar(CLng(var_A2)) 'Long
  loc_151D363:       var_148 = CVar(CLng(arg_10)) 'Long
  loc_151D36C:       Set var_AC = Me.FGrid
  loc_151D393:       var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_AC.TextMatrix)))))
  loc_151D3AE:     Next var_16C 'Integer
  loc_151D3B3:   End If
  loc_151D3BD:   If (Len(var_90) > 0) Then
  loc_151D3EF:     Set var_A8 = Me.LblCap1
  loc_151D3F5:     Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_AC)
  loc_151D40C:     var_D4 = MemVar_1F95078 & "SCH"
  loc_151D41E:     Set var_170 = Me.LblCap1
  loc_151D424:     Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_174, var_178)
  loc_151D42C:     (var_AC.Tag = var_D4) = var_174.Tag
  loc_151D44E:     Set var_180 = Me.LblCap1
  loc_151D454:     Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_184)
  loc_151D4A0:     If CBool( And (((Left(var_90, 1) = "1") Or (var_178 = MemVar_1F95078 & "ADD")) Or (var_184.Tag = MemVar_1F95078 & "DED"))) Then
  loc_151D4A6:       var_8C = var_A0
  loc_151D4AC:     Else
  loc_151D4C4:       var_B0 = CStr(Left(var_90, 1))
  loc_151D4DE:       Set var_A8 = Me.TxtGt1
  loc_151D4E4:       Call 0.Method_Proc_162_103_151E0A00 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_151D4EC:       var_160 = var_AC.Text
  loc_151D4F9:       var_8C = Val(var_D4)
  loc_151D50D:     End If
  loc_151D52E:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151D538:     ' Referenced from: 151D67D
  loc_151D542:     If (Len(var_90) > 0) Then
  loc_151D585:       var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151D5CF:       var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151D5E6:       Set var_A8 = Me.TxtGt1
  loc_151D5EC:       Call 0.Method_Proc_162_103_151E0A00 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_151D601:       var_160 = Val(var_B0)
  loc_151D618:       Set var_170 = Me.TxtGt1
  loc_151D61E:       Call 0.Method_Proc_162_103_151E0A00 (var_AC.Text, var_174, var_D4, CVar(var_8C))
  loc_151D634:       var_D0 = CVar(-Val(var_D4)) 'Double
  loc_151D647:       var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_151D656:       var_1AC = (var_8C + IIf(var_90, CVar(var_174.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_151D65B:       var_8C = CSng(var_1AC)
  loc_151D67D:       GoTo loc_151D538
  loc_151D680:     End If
  loc_151D680:   End If
  loc_151D683: Else
  loc_151D68B:   If (var_A4 = CInt(&H1E)) Then
  loc_151D69B:     Set var_A8 = Me.TxtGt
  loc_151D6A1:     Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_AC, var_B0)
  loc_151D6A9:     var_8C = var_AC.Tag
  loc_151D6C0:     var_90 = CStr(Trim(CVar(var_B0)))
  loc_151D6DE:     Set var_A8 = Me.LblCap2
  loc_151D6E4:     Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_AC)
  loc_151D70E:     If (var_AC.Tag = MemVar_1F95078 & "SCH") Then
  loc_151D736:       For var_1B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_1B0 'Integer
  loc_151D740:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151D748:         var_108 = CVar(CLng(&H1B)) 'Long
  loc_151D773:         If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_151D77A:           var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151D782:           var_108 = CVar(CLng(8)) 'Long
  loc_151D7AB:           var_128 = CVar(CLng(var_A2)) 'Long
  loc_151D7B4:           var_148 = CVar(CLng(arg_10)) 'Long
  loc_151D7E4:           var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_151D7FC:         End If
  loc_151D7FF:       Next var_1B0 'Integer
  loc_151D807:     Else
  loc_151D82C:       For var_1B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_A2 = var_1B4 'Integer
  loc_151D836:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151D83E:         var_108 = CVar(CLng(8)) 'Long
  loc_151D867:         var_128 = CVar(CLng(var_A2)) 'Long
  loc_151D870:         var_148 = CVar(CLng(arg_10)) 'Long
  loc_151D879:         Set var_AC = Me.FGrid
  loc_151D8A0:         var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_AC.TextMatrix)))))
  loc_151D8BB:       Next var_1B4 'Integer
  loc_151D8C0:     End If
  loc_151D8CA:     If (Len(var_90) > 0) Then
  loc_151D8FC:       Set var_A8 = Me.LblCap2
  loc_151D902:       Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_AC)
  loc_151D919:       var_D4 = MemVar_1F95078 & "SCH"
  loc_151D92B:       Set var_170 = Me.LblCap2
  loc_151D931:       Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_174, var_178)
  loc_151D939:       (var_AC.Tag = var_D4) = var_174.Tag
  loc_151D95B:       Set var_180 = Me.LblCap2
  loc_151D961:       Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_184)
  loc_151D9AD:       If CBool( And (((Left(var_90, 1) = "1") Or (var_178 = MemVar_1F95078 & "ADD")) Or (var_184.Tag = MemVar_1F95078 & "DED"))) Then
  loc_151D9B3:         var_8C = var_A0
  loc_151D9B9:       Else
  loc_151D9D1:         var_B0 = CStr(Left(var_90, 1))
  loc_151D9EB:         Set var_A8 = Me.TxtGt2
  loc_151D9F1:         Call 0.Method_Proc_162_103_151E0A00 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_151D9F9:         var_160 = var_AC.Text
  loc_151DA06:         var_8C = Val(var_D4)
  loc_151DA1A:       End If
  loc_151DA3B:       var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151DA45:       ' Referenced from:   151DB8A
  loc_151DA4F:       If (Len(var_90) > 0) Then
  loc_151DA92:         var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151DADC:         var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151DAF3:         Set var_A8 = Me.TxtGt2
  loc_151DAF9:         Call 0.Method_Proc_162_103_151E0A00 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_151DB0E:         var_160 = Val(var_B0)
  loc_151DB25:         Set var_170 = Me.TxtGt2
  loc_151DB2B:         Call 0.Method_Proc_162_103_151E0A00 (var_AC.Text, var_174, var_D4, CVar(var_8C))
  loc_151DB41:         var_D0 = CVar(-Val(var_D4)) 'Double
  loc_151DB54:         var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_151DB63:         var_1AC = (var_8C + IIf(var_90, CVar(var_174.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_151DB68:         var_8C = CSng(var_1AC)
  loc_151DB8A:         GoTo loc_151DA45
  loc_151DB8D:       End If
  loc_151DB8D:     End If
  loc_151DB90:   Else
  loc_151DB98:     If (var_A4 = CInt(&H1F)) Then
  loc_151DBA8:       Set var_A8 = Me.TxtGt3
  loc_151DBAE:       Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_AC, var_B0)
  loc_151DBB6:       var_8C = var_AC.Tag
  loc_151DBCD:       var_90 = CStr(Trim(CVar(var_B0)))
  loc_151DBEB:       Set var_A8 = Me.LblCap3
  loc_151DBF1:       Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_AC)
  loc_151DC1B:       If (var_AC.Tag = MemVar_1F95078 & "SCH") Then
  loc_151DC43:         For var_1B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_A2 = var_1B8 'Integer
  loc_151DC4D:           var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151DC55:           var_108 = CVar(CLng(&H1B)) 'Long
  loc_151DC80:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_151DC87:             var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151DC8F:             var_108 = CVar(CLng(8)) 'Long
  loc_151DCB8:             var_128 = CVar(CLng(var_A2)) 'Long
  loc_151DCC1:             var_148 = CVar(CLng(arg_10)) 'Long
  loc_151DCF1:             var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_151DD09:           End If
  loc_151DD0C:         Next var_1B8 'Integer
  loc_151DD14:       Else
  loc_151DD39:         For var_1BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):       var_A2 = var_1BC 'Integer
  loc_151DD43:           var_E8 = CVar(CLng(var_A2)) 'Long
  loc_151DD4B:           var_108 = CVar(CLng(8)) 'Long
  loc_151DD74:           var_128 = CVar(CLng(var_A2)) 'Long
  loc_151DD7D:           var_148 = CVar(CLng(arg_10)) 'Long
  loc_151DD86:           Set var_AC = Me.FGrid
  loc_151DDAD:           var_A0 = (var_A0 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_AC.TextMatrix)))))
  loc_151DDC8:         Next var_1BC 'Integer
  loc_151DDCD:       End If
  loc_151DDD7:       If (Len(var_90) > 0) Then
  loc_151DE09:         Set var_A8 = Me.LblCap3
  loc_151DE0F:         Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_AC)
  loc_151DE26:         var_D4 = MemVar_1F95078 & "SCH"
  loc_151DE38:         Set var_170 = Me.LblCap3
  loc_151DE3E:         Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_174, var_178)
  loc_151DE46:         (var_AC.Tag = var_D4) = var_174.Tag
  loc_151DE68:         Set var_180 = Me.LblCap3
  loc_151DE6E:         Call 0.Method_Proc_162_103_151E0A00 (arg_C, var_184)
  loc_151DEBA:         If CBool( And (((Left(var_90, 1) = "1") Or (var_178 = MemVar_1F95078 & "ADD")) Or (var_184.Tag = MemVar_1F95078 & "DED"))) Then
  loc_151DEC0:           var_8C = var_A0
  loc_151DEC6:         Else
  loc_151DEDE:           var_B0 = CStr(Left(var_90, 1))
  loc_151DEF8:           Set var_A8 = Me.TxtGt3
  loc_151DEFE:           Call 0.Method_Proc_162_103_151E0A00 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_151DF06:           var_160 = var_AC.Text
  loc_151DF13:           var_8C = Val(var_D4)
  loc_151DF27:         End If
  loc_151DF48:         var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151DF52:         ' Referenced from:     151E097
  loc_151DF5C:         If (Len(var_90) > 0) Then
  loc_151DF9F:           var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151DFE9:           var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_151E000:           Set var_A8 = Me.TxtGt3
  loc_151E006:           Call 0.Method_Proc_162_103_151E0A00 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_151E01B:           var_160 = Val(var_B0)
  loc_151E032:           Set var_170 = Me.TxtGt3
  loc_151E038:           Call 0.Method_Proc_162_103_151E0A00 (var_AC.Text, var_174, var_D4, CVar(var_8C))
  loc_151E04E:           var_D0 = CVar(-Val(var_D4)) 'Double
  loc_151E061:           var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_151E070:           var_1AC = (var_8C + IIf(var_90, CVar(var_174.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_151E075:           var_8C = CSng(var_1AC)
  loc_151E097:           GoTo loc_151DF52
  loc_151E09A:         End If
  loc_151E09A:       End If
  loc_151E09A:     End If
  loc_151E09A:   End If
  loc_151E09A: End If
  loc_151E09A: Proc_162_103_151E0A0 = var_8C
End Sub

Public Sub Proc_162_104_11FBEC0(arg_C) '11FBEC0
  'Data Table: 586158
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_12C As Variant
  Dim var_13C As Label
  Dim var_8C As Double
  Dim var_D0 As Variant
  Dim var_164 As Variant
  loc_11FBA49: Set var_A8 = Me.TxtGt
  loc_11FBA4F: Call 0.Method_Proc_162_104_11FBEC00 (arg_C, var_AC)
  loc_11FBA6E: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_11FBA8C: Set var_A8 = Me.LblCap
  loc_11FBA92: Call 0.Method_Proc_162_104_11FBEC00 (arg_C, var_AC)
  loc_11FBABC: If (var_AC.Tag = MemVar_1F95078 & "SCH") Then
  loc_11FBAE4:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_11FBAEE:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FBAF6:     var_108 = CVar(CLng(&H1B)) 'Long
  loc_11FBB21:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_11FBB28:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FBB30:       var_108 = CVar(CLng(&HA)) 'Long
  loc_11FBB5C:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11FBB68:     End If
  loc_11FBB6B:   Next var_D8 'Integer
  loc_11FBB73: Else
  loc_11FBB98:   For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_124 'Integer
  loc_11FBBA2:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FBBAA:     var_108 = CVar(CLng(&HA)) 'Long
  loc_11FBBD6:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11FBBE5:   Next var_124 'Integer
  loc_11FBBEA: End If
  loc_11FBBF4: If (Len(var_90) > 0) Then
  loc_11FBC26:   Set var_A8 = Me.LblCap
  loc_11FBC2C:   Call 0.Method_Proc_162_104_11FBEC00 (arg_C, var_AC)
  loc_11FBC43:   var_D4 = MemVar_1F95078 & "SCH"
  loc_11FBC55:   Set var_128 = Me.LblCap
  loc_11FBC5B:   Call 0.Method_Proc_162_104_11FBEC00 (arg_C, var_12C, var_130)
  loc_11FBC63:   (var_AC.Tag = var_D4) = var_12C.Tag
  loc_11FBC85:   Set var_138 = Me.LblCap
  loc_11FBC8B:   Call 0.Method_Proc_162_104_11FBEC00 (arg_C, var_13C)
  loc_11FBCD7:   If CBool( And (((Left(var_90, 1) = "1") Or (var_130 = MemVar_1F95078 & "ADD")) Or (var_13C.Tag = MemVar_1F95078 & "DED"))) Then
  loc_11FBCDD:     var_8C = var_A0
  loc_11FBCE3:   Else
  loc_11FBCFB:     var_B0 = CStr(Left(var_90, 1))
  loc_11FBD15:     Set var_A8 = Me.TxtGt
  loc_11FBD1B:     Call 0.Method_Proc_162_104_11FBEC00 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_11FBD23:     var_120 = var_AC.Text
  loc_11FBD30:     var_8C = Val(var_D4)
  loc_11FBD44:   End If
  loc_11FBD65:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FBD6F:   ' Referenced from: 11FBEB4
  loc_11FBD79:   If (Len(var_90) > 0) Then
  loc_11FBDBC:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FBE06:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FBE1D:     Set var_A8 = Me.TxtGt
  loc_11FBE23:     Call 0.Method_Proc_162_104_11FBEC00 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_11FBE38:     var_120 = Val(var_B0)
  loc_11FBE4F:     Set var_128 = Me.TxtGt
  loc_11FBE55:     Call 0.Method_Proc_162_104_11FBEC00 (var_AC.Text, var_12C, var_D4, CVar(var_8C))
  loc_11FBE6B:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_11FBE7E:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_11FBE8D:     var_164 = (var_8C + IIf(var_90, CVar(var_12C.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_11FBE92:     var_8C = CSng(var_164)
  loc_11FBEB4:     GoTo loc_11FBD6F
  loc_11FBEB7:   End If
  loc_11FBEB7: End If
  loc_11FBEB7: Proc_162_104_11FBEC0 = var_8C
End Sub

Public Sub Proc_162_105_10ACE60(arg_C, arg_10, arg_14) '10ACE60
  'Data Table: 586158
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
  loc_10ACBB5: var_88 = vbNullString
  loc_10ACBCC: arg_C = CStr(Trim(arg_C))
  loc_10ACBD8: var_8A = CInt(Len(arg_C))
  loc_10ACBDE: var_C0 = arg_10
  loc_10ACBE9: If (var_C0 = "A") Then
  loc_10ACC08:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10ACC0C:   var_9C = arg_C 'Variant
  loc_10ACC62:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10ACC76:   var_110 = (0 + Chr(&H1B))
  loc_10ACC7F:   var_120 = (var_110 + "G")
  loc_10ACC93:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10ACC9D:   var_150 = (var_140 + CVar(arg_C))
  loc_10ACCB1:   var_170 = (var_150 + Chr(&H1B))
  loc_10ACCBA:   var_190 = (var_170 + "H")
  loc_10ACCBF:   var_88 = CStr(var_190)
  loc_10ACCE0: Else
  loc_10ACCE8:   If (var_C0 = "D") Then
  loc_10ACCF6:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10ACD07:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10ACD0B:     var_9C = "G" 'Variant
  loc_10ACD61:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10ACD75:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10ACD7F:     var_120 = (var_110 + CVar(arg_C))
  loc_10ACD84:     var_88 = CStr(var_120)
  loc_10ACD99:   Else
  loc_10ACDA1:     If (var_C0 = "E") Then
  loc_10ACDB2:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10ACDB6:       var_9C = CVar(arg_C) 'Variant
  loc_10ACE0C:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10ACE20:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10ACE2A:       var_120 = (var_110 + CVar(arg_C))
  loc_10ACE3E:       var_140 = (var_120 + Chr(&H12))
  loc_10ACE43:       var_88 = CStr(var_140)
  loc_10ACE59:     End If
  loc_10ACE59:   End If
  loc_10ACE59: End If
  loc_10ACE59: Proc_162_105_10ACE60 = arg_14
End Sub

Public Sub Proc_162_106_128D454(arg_C, arg_10, arg_14) '128D454
  'Data Table: 586158
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_586184 As Connection15
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_D4 As Variant
  Dim var_290 As Double
  Dim arg_10 As Integer
  loc_128CED9: var_90 = vbNullString
  loc_128CEDF: var_94 = vbNullString
  loc_128CEE5: var_98 = vbNullString
  loc_128CEEB: var_9C = vbNullString
  loc_128CEF6: If (MemVar_1F953C4 = "Y") Then
  loc_128CF00:   var_E8 = vbNullString & "DATE "
  loc_128CF31:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_128CF44: End If
  loc_128CF4C: If (MemVar_1F953C8 = "Y") Then
  loc_128CF5E:   var_D4 = "dd/MM/yy"
  loc_128CFB0:   var_16C = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_D4)))), 0))
  loc_128CFD7:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_128CFDF:   var_1DC = (var_16C - Len(var_1BC))
  loc_128CFF0:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_128CFF9:   var_22C = (var_20C + " PAGE NO ")
  loc_128D01B:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_128D020:   var_8C = CStr(var_26C)
  loc_128D04D: End If
  loc_128D07A: unk_586184.Execute "Select R.HEADER1,R.HEADER2,R.COMPANYTITLE From DEPART R  Where R.CODE='" & global_60 & "'", var_D4, -1
  loc_128D085: Set var_A0 = var_270
  loc_128D09C: If (MemVar_1F953CC = "K") Then
  loc_128D0DB:   If (var_A0.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_128D0E8:     If (Len(MemVar_1F95130) <= &H28) Then
  loc_128D101:       var_E4 = (CVar(var_90) + Chr(&HF))
  loc_128D115:       var_13C = (Format(MemVar_1F950EC, Chr(&HF)) + Chr(&HE))
  loc_128D129:       var_16C = (0 + Chr(&H1B))
  loc_128D13D:       var_19C = (var_16C + Chr(&H45))
  loc_128D147:       var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F95130))
  loc_128D15B:       var_1DC = (var_1BC + Chr(&H1B))
  loc_128D16F:       var_20C = (var_1DC + Chr(&H46))
  loc_128D183:       var_24C = (var_20C + Chr(&HE))
  loc_128D188:       var_90 = CStr(Str(arg_C))
  loc_128D1AF:     Else
  loc_128D1C5:       var_E4 = (CVar(var_90) + Chr(&H12))
  loc_128D1D9:       var_13C = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_128D1ED:       var_16C = (0 + Chr(&HF))
  loc_128D1F7:       var_18C = (var_16C + CVar(MemVar_1F95130))
  loc_128D20B:       var_1BC = (Chr(&H45) + Chr(&H12))
  loc_128D210:       var_90 = CStr(var_1BC)
  loc_128D228:     End If
  loc_128D228:   End If
  loc_128D23C:   If (var_A0.RecordCount > 0) Then
  loc_128D24E:     var_270 = var_A0.Fields
  loc_128D278:     If (Proc_6_38_E69628(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_128D2AF:       var_290 = Val(CStr(arg_14))
  loc_128D2D0:       Call Proc_162_105_10ACE60(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_128D2D9:       var_94 = var_288 & var_288
  loc_128D2F1:     End If
  loc_128D32A:     If (Proc_6_38_E69628(CVar(var_A0.Fields.Item("Header2")), var_94, var_290) <> vbNullString) Then
  loc_128D382:       Call Proc_162_105_10ACE60(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_128D38B:       var_98 = var_288 & var_288
  loc_128D3A3:     End If
  loc_128D3A3:   End If
  loc_128D3A3: End If
  loc_128D3AD: If (Len(var_8C) > 0) Then
  loc_128D3B5:   Print 1, var_8C
  loc_128D3C1:   arg_10 = (arg_10 + 1)
  loc_128D3C4: End If
  loc_128D3CE: If (Len(var_90) > 0) Then
  loc_128D3D6:   Print 1, var_90
  loc_128D3E2:   arg_10 = (arg_10 + 1)
  loc_128D3E5: End If
  loc_128D3EF: If (Len(var_94) > 0) Then
  loc_128D3F7:   Print 1, var_94
  loc_128D403:   arg_10 = (arg_10 + 1)
  loc_128D406: End If
  loc_128D410: If (Len(var_98) > 0) Then
  loc_128D418:   Print 1, var_98
  loc_128D424:   arg_10 = (arg_10 + 1)
  loc_128D427: End If
  loc_128D431: If (Len(var_9C) > 0) Then
  loc_128D439:   Print 1, var_9C
  loc_128D445:   arg_10 = (arg_10 + 1)
  loc_128D448: End If
  loc_128D44E: Proc_162_106_128D454 = arg_10
End Sub

Public Sub Proc_162_107_183CAF4(arg_C, arg_10, arg_14) '183CAF4
  'Data Table: 586158
  Dim var_E4 As String
  Dim unk_586184 As Connection15
  Dim var_D8 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_124 As Variant
  Dim var_C0 As Recordset15
  Dim var_1B8 As Variant
  Dim var_1FC As Variant
  Dim var_114 As Field20
  Dim var_D0 As Double
  Dim var_210 As Double
  Dim var_E0 As Recordset15
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_1C0 As MSHFlexGrid
  Dim var_204 As Double
  Dim var_9C As Double
  Dim var_1B4 As Variant
  loc_183A670: unk_586184.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_183A67B: Set var_D8 = var_10C
  loc_183A69F: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_183A6AF: unk_586184.Execute var_E4 & "'", var_108, -1
  loc_183A6BA: Set var_8C = var_10C
  loc_183A6DE: If (var_D8.RecordCount > 0) Then
  loc_183A6F6:   var_10C = var_D8.Fields
  loc_183A6FE:   var_114 = var_10C.Item("RestCode")
  loc_183A71D:   If (var_10C <> Proc_6_38_E69628(CVar(var_114), global_60)) Then
  loc_183A722:     var_DA = &HFF
  loc_183A728:   Else
  loc_183A72A:     var_DA = 0
  loc_183A72D:   End If
  loc_183A730: Else
  loc_183A732:   var_DA = 0
  loc_183A735: End If
  loc_183A738: var_94 = arg_14
  loc_183A73D: var_86 = 1
  loc_183A74B: If (global_212 = "Room Service") Then
  loc_183A76B:   Set var_10C = Me.Txt
  loc_183A771:   Call 0.Method_Proc_162_107_183CAF40 (CInt(&HA), var_114, "Select * from RoomOcc where chkoutdate is NULL and foliono=", var_1B4, -1, var_1B8)
  loc_183A780:   Proc_6_39_E7D3A0(var_124, CVar(var_114), var_86, var_94)
  loc_183A791:   var_154 = var_DA & var_124 & " and Site_Code='" 
  loc_183A7B2:   unk_586184.Execute CStr(var_154 & CVar(MemVar_1F95070) & "'"), var_DA, var_DA
  loc_183A7BD:   Set var_C0 = var_1B8
  loc_183A7DB: End If
  loc_183A7DE: var_A8 = var_94
  loc_183A7E4: var_B0 = var_94
  loc_183A7EA: var_B8 = CDbl(0)
  loc_183A801: If (var_8C.RecordCount > 0) Then
  loc_183A804:   ' Referenced from: 183CAC6
  loc_183A813:   If Not(var_8C.EOF) Then
  loc_183A81A:     Set var_1C0 = Me.FGCat
  loc_183A81D:     var_F8 = vbNullString
  loc_183A842:     If (var_8C.RecordCount > 0) Then
  loc_183A84B:       var_D2 = (var_D2 + 1)
  loc_183A851:       var_F8 = "Nature"
  loc_183A884:       var_1D0 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8))) 'Variant
  loc_183A89D:       If (var_1D0 = "On Base Amt") Then
  loc_183A8C8:         var_124 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_B8, var_B0)) 'String
  loc_183A8EA:         If (Trim(var_124) = "Room Rate") Then
  loc_183A8F8:           If (global_212 = "Room Service") Then
  loc_183A921:             Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Limit")))
  loc_183A94F:             Proc_6_39_E7D3A0(var_154, CVar(var_C0.Fields.Item("RoomRate")), var_124)
  loc_183A957:             var_174 = (var_A8 <= var_154)
  loc_183A981:             Proc_6_39_E7D3A0(var_1B4, CVar(var_8C.Fields.Item("Rate")))
  loc_183A9B1:             If CBool(var_174 And (var_1B4 > 0)) Then
  loc_183A9F0:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183AA2E:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_183AA41:               Else
  loc_183AA74:                 var_210 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_183AA9D:                 Proc_6_142_14A62A0(((var_210 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_183AAA2:                 var_D0 = var_210
  loc_183AAB6:               End If
  loc_183AABD:               If (var_D0 > CDbl(0)) Then
  loc_183AAD9:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183AAE1:                 var_164 = CVar(CLng(0)) 'Long
  loc_183AAEB:                 var_124 = CVar(CStr(var_86)) 'String
  loc_183AAF2:                 LateIdCallSt
  loc_183AB1D:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183AB25:                 var_164 = CVar(CLng(1)) 'Long
  loc_183AB2F:                 var_124 = CVar(CStr(arg_10)) 'String
  loc_183AB36:                 LateIdCallSt
  loc_183AB4E:                 If (var_DA = 0) Then
  loc_183AB55:                   Set var_1B8 = Me.FGCat
  loc_183AB6A:                   var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183AB72:                   var_184 = CVar(CLng(2)) 'Long
  loc_183ABA2:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183ABA9:                   LateIdCallSt
  loc_183ABC6:                 Else
  loc_183ABDD:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183AC11:                   var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183AC28:                   unk_586184.Execute CStr(var_134 & "')"), var_174, -1
  loc_183AC33:                   Set var_E0 = var_1B8
  loc_183AC67:                   If (var_E0.RecordCount > 0) Then
  loc_183AC83:                     var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183AC8B:                     var_184 = CVar(CLng(2)) 'Long
  loc_183ACBB:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183ACC2:                     LateIdCallSt
  loc_183ACDC:                   End If
  loc_183ACDC:                 End If
  loc_183ACF5:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183ACFD:                 var_184 = CVar(CLng(3)) 'Long
  loc_183AD2D:                 var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183AD34:                 LateIdCallSt
  loc_183AD67:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183AD6F:                 var_164 = CVar(CLng(4)) 'Long
  loc_183AD79:                 var_124 = CVar(CStr(var_A8)) 'String
  loc_183AD80:                 LateIdCallSt
  loc_183ADAB:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183ADB3:                 var_184 = CVar(CLng(5)) 'Long
  loc_183ADE3:                 var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183ADEA:                 LateIdCallSt
  loc_183AE44:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183AE4C:                 var_240 = CVar(CLng(6)) 'Long
  loc_183AE51:                 var_174 = 2
  loc_183AE90:                 var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_183AE97:                 LateIdCallSt
  loc_183AED4:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183AEDC:                 var_184 = CVar(CLng(7)) 'Long
  loc_183AF0C:                 var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_183AF13:                 LateIdCallSt
  loc_183AF30:               Else
  loc_183AF36:                 var_86 = (var_86 - 1)
  loc_183AF4C:                 var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_183AF62:               End If
  loc_183AF7B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183AF83:               var_164 = CVar(CLng(6)) 'Long
  loc_183AFA8:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183AFD1:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183AFD9:               var_164 = CVar(CLng(6)) 'Long
  loc_183AFE1:               var_124 = var_1C0.TextMatrix)
  loc_183AFF4:               var_204 = Val(CStr(var_124))
  loc_183AFFE:               var_94 = (var_94 + var_204)
  loc_183B015:               var_B0 = (var_B0 + var_D0)
  loc_183B01B:               var_B8 = var_D0
  loc_183B025:               var_B0 = (var_B0 + var_D0)
  loc_183B02B:               var_B8 = var_D0
  loc_183B02E:             End If
  loc_183B02E:           End If
  loc_183B031:         Else
  loc_183B06D:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183B0AB:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_183B0BE:           Else
  loc_183B11A:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183B11F:             var_D0 = var_B8
  loc_183B133:           End If
  loc_183B159:           Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0, var_94)
  loc_183B170:           var_164 = "Rate"
  loc_183B193:           Proc_6_39_E7D3A0(var_174, CVar(var_8C.Fields.Item(var_164)), (var_124 <= CVar(var_94)), var_204)
  loc_183B1BD:           If CBool(var_164 And (var_174 > 0)) Then
  loc_183B1C7:             If (var_D0 > CDbl(0)) Then
  loc_183B1E3:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B1EB:               var_164 = CVar(CLng(0)) 'Long
  loc_183B1F5:               var_124 = CVar(CStr(var_86)) 'String
  loc_183B1FC:               LateIdCallSt
  loc_183B227:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B22F:               var_164 = CVar(CLng(1)) 'Long
  loc_183B239:               var_124 = CVar(CStr(arg_10)) 'String
  loc_183B240:               LateIdCallSt
  loc_183B258:               If (var_DA = 0) Then
  loc_183B25F:                 Set var_1B8 = Me.FGCat
  loc_183B274:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183B27C:                 var_184 = CVar(CLng(2)) 'Long
  loc_183B2AC:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183B2B3:                 LateIdCallSt
  loc_183B2D0:               Else
  loc_183B2E7:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183B31B:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183B332:                 unk_586184.Execute CStr(var_134 & "')"), var_174, -1
  loc_183B33D:                 Set var_E0 = var_1B8
  loc_183B371:                 If (var_E0.RecordCount > 0) Then
  loc_183B38D:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B395:                   var_184 = CVar(CLng(2)) 'Long
  loc_183B3C5:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183B3CC:                   LateIdCallSt
  loc_183B3E6:                 End If
  loc_183B3E6:               End If
  loc_183B3FF:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B407:               var_184 = CVar(CLng(3)) 'Long
  loc_183B437:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183B43E:               LateIdCallSt
  loc_183B471:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B479:               var_164 = CVar(CLng(4)) 'Long
  loc_183B483:               var_124 = CVar(CStr(var_A8)) 'String
  loc_183B48A:               LateIdCallSt
  loc_183B4B5:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B4BD:               var_184 = CVar(CLng(5)) 'Long
  loc_183B4ED:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183B4F4:               LateIdCallSt
  loc_183B54E:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B55B:               var_174 = 2
  loc_183B5A1:               LateIdCallSt
  loc_183B5DE:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B613:               var_134 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))), CVar(CLng(6)), var_220)) 'String
  loc_183B61A:               LateIdCallSt
  loc_183B632:             End If
  loc_183B64B:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B653:             var_164 = CVar(CLng(6)) 'Long
  loc_183B678:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183B6A1:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B6A9:             var_164 = CVar(CLng(6)) 'Long
  loc_183B6B1:             var_124 = var_1C0.TextMatrix)
  loc_183B6C4:             var_204 = Val(CStr(var_124))
  loc_183B6CE:             var_94 = (var_94 + var_204)
  loc_183B6E5:             var_B0 = (var_B0 + var_D0)
  loc_183B6EB:             var_B8 = var_D0
  loc_183B6EE:           End If
  loc_183B6EE:         End If
  loc_183B6F1:       Else
  loc_183B6FC:         If (var_1D0 = "On Running Total") Then
  loc_183B73B:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183B779:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_183B78C:           Else
  loc_183B7E8:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183B7ED:             var_D0 = var_94
  loc_183B801:           End If
  loc_183B827:           Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Rate")), var_D0, var_204, var_164)
  loc_183B841:           If (var_124 > 0) Then
  loc_183B84B:             If (var_D0 > CDbl(0)) Then
  loc_183B867:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B86F:               var_164 = CVar(CLng(0)) 'Long
  loc_183B879:               var_124 = CVar(CStr(var_86)) 'String
  loc_183B880:               LateIdCallSt
  loc_183B8AB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183B8B3:               var_164 = CVar(CLng(1)) 'Long
  loc_183B8BD:               var_124 = CVar(CStr(arg_10)) 'String
  loc_183B8C4:               LateIdCallSt
  loc_183B8DC:               If (var_DA = 0) Then
  loc_183B8E3:                 Set var_1B8 = Me.FGCat
  loc_183B8F8:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183B900:                 var_184 = CVar(CLng(2)) 'Long
  loc_183B930:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183B937:                 LateIdCallSt
  loc_183B954:               Else
  loc_183B96B:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183B99F:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183B9B6:                 unk_586184.Execute CStr(var_134 & "')"), var_174, -1
  loc_183B9C1:                 Set var_E0 = var_1B8
  loc_183B9F5:                 If (var_E0.RecordCount > 0) Then
  loc_183BA11:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BA19:                   var_184 = CVar(CLng(2)) 'Long
  loc_183BA49:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183BA50:                   LateIdCallSt
  loc_183BA6A:                 End If
  loc_183BA6A:               End If
  loc_183BA83:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BA8B:               var_184 = CVar(CLng(3)) 'Long
  loc_183BABB:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183BAC2:               LateIdCallSt
  loc_183BAF5:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BAFD:               var_164 = CVar(CLng(4)) 'Long
  loc_183BB07:               var_124 = CVar(CStr(var_B0)) 'String
  loc_183BB0E:               LateIdCallSt
  loc_183BB39:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BB41:               var_184 = CVar(CLng(5)) 'Long
  loc_183BB71:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183BB78:               LateIdCallSt
  loc_183BBD2:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BBDA:               var_240 = CVar(CLng(6)) 'Long
  loc_183BBDF:               var_174 = 2
  loc_183BC1E:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_183BC25:               LateIdCallSt
  loc_183BC62:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BC6A:               var_184 = CVar(CLng(7)) 'Long
  loc_183BC9A:               var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_183BCA1:               LateIdCallSt
  loc_183BCBB:             End If
  loc_183BCD4:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BCDC:             var_164 = CVar(CLng(6)) 'Long
  loc_183BD01:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183BD2A:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BD32:             var_164 = CVar(CLng(6)) 'Long
  loc_183BD57:             var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_183BD6E:             var_B0 = (var_B0 + var_D0)
  loc_183BD74:             var_B8 = var_D0
  loc_183BD77:           End If
  loc_183BD7A:         Else
  loc_183BD85:           If (var_1D0 = "On Prev. Tax Amt") Then
  loc_183BDC4:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183BE02:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_183BE15:             Else
  loc_183BE71:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183BE76:               var_D0 = var_94
  loc_183BE8A:             End If
  loc_183BE91:             If (var_D0 > CDbl(0)) Then
  loc_183BEAD:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BEB5:               var_164 = CVar(CLng(0)) 'Long
  loc_183BEBF:               var_124 = CVar(CStr(var_86)) 'String
  loc_183BEC6:               LateIdCallSt
  loc_183BEF1:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183BEF9:               var_164 = CVar(CLng(1)) 'Long
  loc_183BF03:               var_124 = CVar(CStr(arg_10)) 'String
  loc_183BF0A:               LateIdCallSt
  loc_183BF22:               If (var_DA = 0) Then
  loc_183BF29:                 Set var_1B8 = Me.FGCat
  loc_183BF3E:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183BF46:                 var_184 = CVar(CLng(2)) 'Long
  loc_183BF76:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183BF7D:                 LateIdCallSt
  loc_183BF9A:               Else
  loc_183BFB1:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183BFE5:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183BFFC:                 unk_586184.Execute CStr(var_134 & "')"), var_174, -1
  loc_183C007:                 Set var_E0 = var_1B8
  loc_183C03B:                 If (var_E0.RecordCount > 0) Then
  loc_183C057:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C05F:                   var_184 = CVar(CLng(2)) 'Long
  loc_183C08F:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183C096:                   LateIdCallSt
  loc_183C0B0:                 End If
  loc_183C0B0:               End If
  loc_183C0C9:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C0D1:               var_184 = CVar(CLng(3)) 'Long
  loc_183C101:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183C108:               LateIdCallSt
  loc_183C13B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C143:               var_164 = CVar(CLng(4)) 'Long
  loc_183C14D:               var_124 = CVar(CStr(var_B8)) 'String
  loc_183C154:               LateIdCallSt
  loc_183C17F:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C187:               var_184 = CVar(CLng(5)) 'Long
  loc_183C1B7:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183C1BE:               LateIdCallSt
  loc_183C218:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C220:               var_240 = CVar(CLng(6)) 'Long
  loc_183C225:               var_174 = 2
  loc_183C264:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_183C26B:               LateIdCallSt
  loc_183C2A8:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C2B0:               var_184 = CVar(CLng(7)) 'Long
  loc_183C2E0:               var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_183C2E7:               LateIdCallSt
  loc_183C301:             End If
  loc_183C31A:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C322:             var_164 = CVar(CLng(6)) 'Long
  loc_183C347:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183C370:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C378:             var_164 = CVar(CLng(6)) 'Long
  loc_183C380:             var_124 = var_1C0.TextMatrix)
  loc_183C393:             var_204 = Val(CStr(var_124))
  loc_183C39D:             var_94 = (var_94 + var_204)
  loc_183C3B4:             var_B0 = (var_B0 + var_D0)
  loc_183C3BA:             var_B8 = var_D0
  loc_183C3C0:           Else
  loc_183C3FC:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183C43A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_183C44D:             Else
  loc_183C4A9:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183C4AE:               var_D0 = var_94
  loc_183C4C2:             End If
  loc_183C4C5:             var_F8 = "Limit"
  loc_183C4E8:             Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_204, var_164)
  loc_183C522:             Proc_6_39_E7D3A0(var_174, CVar(var_8C.Fields.Item("Rate")), (var_124 <= CVar(var_94)), var_F8)
  loc_183C54C:             If CBool(var_9C And (var_174 > 0)) Then
  loc_183C556:               If (var_D0 > CDbl(0)) Then
  loc_183C572:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C57A:                 var_164 = CVar(CLng(0)) 'Long
  loc_183C584:                 var_124 = CVar(CStr(var_86)) 'String
  loc_183C58B:                 LateIdCallSt
  loc_183C5B6:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C5BE:                 var_164 = CVar(CLng(1)) 'Long
  loc_183C5C8:                 var_124 = CVar(CStr(arg_10)) 'String
  loc_183C5CF:                 LateIdCallSt
  loc_183C5E7:                 If (var_DA = 0) Then
  loc_183C5EE:                   Set var_1B8 = Me.FGCat
  loc_183C603:                   var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183C60B:                   var_184 = CVar(CLng(2)) 'Long
  loc_183C63B:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183C642:                   LateIdCallSt
  loc_183C65F:                 Else
  loc_183C676:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_183C6AA:                   var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183C6C1:                   unk_586184.Execute CStr(var_134 & "')"), var_174, -1
  loc_183C6CC:                   Set var_E0 = var_1B8
  loc_183C700:                   If (var_E0.RecordCount > 0) Then
  loc_183C71C:                     var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C724:                     var_184 = CVar(CLng(2)) 'Long
  loc_183C754:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183C75B:                     LateIdCallSt
  loc_183C775:                   End If
  loc_183C775:                 End If
  loc_183C78E:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C796:                 var_184 = CVar(CLng(3)) 'Long
  loc_183C7C6:                 var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183C7CD:                 LateIdCallSt
  loc_183C800:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C808:                 var_164 = CVar(CLng(4)) 'Long
  loc_183C812:                 var_124 = CVar(CStr(var_A8)) 'String
  loc_183C819:                 LateIdCallSt
  loc_183C844:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C84C:                 var_184 = CVar(CLng(5)) 'Long
  loc_183C87C:                 var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183C883:                 LateIdCallSt
  loc_183C8DD:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C930:                 LateIdCallSt
  loc_183C96D:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C9A2:                 var_134 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))), CVar(CLng(6)), var_220)) 'String
  loc_183C9A9:                 LateIdCallSt
  loc_183C9C1:               End If
  loc_183C9DA:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183C9E2:               var_164 = CVar(CLng(6)) 'Long
  loc_183CA07:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183CA30:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183CA38:               var_164 = CVar(CLng(6)) 'Long
  loc_183CA5D:               var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_183CA74:               var_B0 = (var_B0 + var_D0)
  loc_183CA7A:               var_B8 = var_D0
  loc_183CA7D:             End If
  loc_183CA7D:           End If
  loc_183CA7D:         End If
  loc_183CA7D:       End If
  loc_183CA7D:     End If
  loc_183CA83:     var_86 = (var_86 + 1)
  loc_183CA88:     Set var_1C0 = Nothing 
  loc_183CA90:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_183CA98:     var_164 = CVar(CLng(&H11)) 'Long
  loc_183CAA2:     var_108 = CVar(CStr(var_9C)) 'String
  loc_183CAAA:     Set var_10C = Me.FGrid
  loc_183CAB0:     LateIdCallSt
  loc_183CAC1:     var_8C.MoveNext
  loc_183CAC6:     GoTo loc_183A804
  loc_183CAC9:   End If
  loc_183CACE:   Set var_8C = Nothing
  loc_183CAD6:   Set var_C4 = Nothing
  loc_183CADE:   Set var_C0 = Nothing
  loc_183CAE6:   Set var_D8 = Nothing
  loc_183CAEE:   Set var_E0 = Nothing
  loc_183CAF1: End If
  loc_183CAF1: Exit Sub
End Sub

Public Sub Proc_162_108_F279B0(arg_C, arg_10) 'F279B0
  'Data Table: 586158
  Dim unk_586184 As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F278F1: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F27926: unk_586184.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(global_220) & "' Order by Appdate Desc"), -1, var_15C
  loc_F27931: Set var_90 = var_15C
  loc_F27963: If (var_90.RecordCount > 0) Then
  loc_F27991:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F279A1: Else
  loc_F279A4:   var_8C = CDbl(0)
  loc_F279A7: End If
  loc_F279A7: Proc_162_108_F279B0 = var_8C
  loc_F279AD: StAryRecMove
End Sub

Public Sub Proc_162_109_1315C48
  'Data Table: 586158
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_9C As Double
  Dim var_118 As String
  Dim unk_586184 As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_140 As Variant
  Dim var_12C As Variant
  Dim var_154 As Field20
  Dim var_1C8 As Variant
  Dim var_184 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_21C As Variant
  Dim var_94 As Double
  loc_1315541: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_131554B:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315553:   var_100 = CVar(CLng(8)) 'Long
  loc_1315575:   var_9C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1315585:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_131558D:   var_100 = CVar(CLng(&H18)) 'Long
  loc_13155C0:   var_118 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_13155D0:   unk_586184.Execute var_118 & "' ORDER BY SNO DESC", var_13C, -1
  loc_13155DB:   Set var_8C = var_140
  loc_1315609:   If (var_8C.RecordCount > 0) Then
  loc_131560F:     var_A4 = CDbl(0)
  loc_1315612:     ' Referenced from: 13157AA
  loc_1315621:     If Not(var_8C.EOF) Then
  loc_1315673:       var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + Val(CStr(var_8C.Fields.Item("Rate").Value)))) * CDbl(&H64))
  loc_131568B:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315693:       var_100 = CVar(CLng(7)) 'Long
  loc_131575D:       var_27C = Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2)))
  loc_1315766:       var_AC = CSng(var_27C)
  loc_1315795:       var_A4 = (var_AC + var_A4)
  loc_131579F:       var_B4 = (var_B4 + var_AC)
  loc_13157A5:       var_8C.MoveNext
  loc_13157AA:       GoTo loc_1315612
  loc_13157AD:     End If
  loc_13157B1:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_13157B9:     var_100 = CVar(CLng(&H1C)) 'Long
  loc_13157E4:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_13157EB:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_13157F3:       var_110 = CVar(CLng(9)) 'Long
  loc_1315811:       var_13C = CVar(CStr(Round(var_9C, 2))) 'String
  loc_1315819:       Set var_BC = Me.FGrid
  loc_131581F:       LateIdCallSt
  loc_1315835:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131583D:       var_100 = CVar(CLng(9)) 'Long
  loc_131585C:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1315864:       var_1A4 = CVar(CLng(9)) 'Long
  loc_1315891:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_1315899:       Set var_140 = Me.FGrid
  loc_131589F:       LateIdCallSt
  loc_13158BF:       var_12C = CVar(CLng(var_86)) 'Long
  loc_13158C7:       var_184 = CVar(CLng(7)) 'Long
  loc_13158F0:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_13158F8:       var_21C = CVar(CLng(&HA)) 'Long
  loc_1315901:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315909:       var_100 = CVar(CLng(9)) 'Long
  loc_1315931:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1315939:       Set var_154 = Me.FGrid
  loc_131593F:       LateIdCallSt
  loc_1315964:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131596C:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1315998:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13159A7:     Else
  loc_13159AB:       var_12C = CVar(CLng(var_86)) 'Long
  loc_13159B3:       var_184 = CVar(CLng(9)) 'Long
  loc_13159BC:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_13159C4:       var_100 = CVar(CLng(8)) 'Long
  loc_13159E8:       var_13C = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_13159F0:       Set var_140 = Me.FGrid
  loc_13159F6:       LateIdCallSt
  loc_1315A13:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315A1B:       var_100 = CVar(CLng(9)) 'Long
  loc_1315A3A:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1315A42:       var_1A4 = CVar(CLng(9)) 'Long
  loc_1315A6F:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_1315A77:       Set var_140 = Me.FGrid
  loc_1315A7D:       LateIdCallSt
  loc_1315A9D:       var_12C = CVar(CLng(var_86)) 'Long
  loc_1315AA5:       var_184 = CVar(CLng(7)) 'Long
  loc_1315ACE:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_1315AD6:       var_21C = CVar(CLng(&HA)) 'Long
  loc_1315ADF:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315AE7:       var_100 = CVar(CLng(9)) 'Long
  loc_1315B0F:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1315B17:       Set var_154 = Me.FGrid
  loc_1315B1D:       LateIdCallSt
  loc_1315B42:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315B4A:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1315B69:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1315B71:       var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1315B9E:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_1315BA6:       Set var_140 = Me.FGrid
  loc_1315BAC:       LateIdCallSt
  loc_1315BCC:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315BD4:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1315C00:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1315C0C:     End If
  loc_1315C10:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315C18:     var_100 = CVar(CLng(&H11)) 'Long
  loc_1315C22:     var_CC = CVar(CStr(var_A4)) 'String
  loc_1315C2A:     Set var_BC = Me.FGrid
  loc_1315C30:     LateIdCallSt
  loc_1315C3E:   End If
  loc_1315C41: Next var_D0 'Integer
  loc_1315C46: Exit Sub
End Sub

Public Sub Proc_162_110_112989C
  'Data Table: 586158
  Dim Me As Recordset15
  loc_112953F: If (Me.RecordCount > 0) Then
  loc_1129548:   Me.MoveFirst
  loc_112954D:   ' Referenced from: 1129896
  loc_112954D: End If
  loc_112955F: If Not(Me.EOF) Then
  loc_11295A1:   If (Me.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER RUNNING") Then
  loc_11295E3:     If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_11295E6:       Call Proc_162_85_1803AB8()
  loc_11295EE:     Else
  loc_112961D:       If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_1129620:         Call Proc_162_85_1803AB8()
  loc_1129628:       Else
  loc_1129628:         Exit Sub
  loc_1129629:       End If
  loc_1129629:     End If
  loc_112962C:   Else
  loc_1129655:     var_D4 = Trim(CVar(Me.Fields.Item("ModDescription")))
  loc_112966F:     If (var_D4 = "BILL DOS PLAIN (3) PAPER RUNNING") Then
  loc_11296B1:       If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_11296B4:         Call Proc_162_83_18110C4()
  loc_11296BC:       Else
  loc_11296EB:         If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_11296EE:           Call Proc_162_83_18110C4()
  loc_11296F6:         Else
  loc_11296F6:           Exit Sub
  loc_11296F7:         End If
  loc_11296F7:       End If
  loc_11296FA:     Else
  loc_1129739:       If (Me.Fields.Item("ModDescription").Value = "BILL DOS PRE PRINTED") Then
  loc_112977B:         If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_112977E:           Call Proc_162_81_15ED7B8()
  loc_1129786:         Else
  loc_11297B5:           If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_11297B8:             Call Proc_162_81_15ED7B8()
  loc_11297C0:           Else
  loc_11297C0:             Exit Sub
  loc_11297C1:           End If
  loc_11297C1:         End If
  loc_11297C4:       Else
  loc_1129803:         If (Me.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER") Then
  loc_1129845:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1129848:             Call Proc_162_86_172C29C()
  loc_1129850:           Else
  loc_112987F:             If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_1129882:               Call Proc_162_86_172C29C()
  loc_112988A:             Else
  loc_112988A:               Exit Sub
  loc_112988B:             End If
  loc_112988B:           End If
  loc_112988B:         End If
  loc_112988B:       End If
  loc_112988B:     End If
  loc_112988B:   End If
  loc_1129891:   Me.MoveNext
  loc_1129896:   GoTo loc_112954D
  loc_1129899: End If
  loc_1129899: Exit Sub
End Sub

Public Sub Proc_162_111_129A2A4(arg_C) '129A2A4
  'Data Table: 586158
  Dim var_90 As Double
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_10C As Double
  Dim var_100 As TextBox
  Dim var_A8 As String
  Dim var_FC As TextBox
  loc_1299CC0: If (arg_C = CInt(&H1D)) Then
  loc_1299CCF:   Set var_98 = Me.TxtGt
  loc_1299CD5:   Call 0.Method_Proc_162_111_129A2A48 (var_9A, var_86, 1)
  loc_1299CE3:   For var_9E = CDbl(0) To (var_9A - 1): var_92 = var_9E 'Integer
  loc_1299CF6:     Set var_98 = Me.TxtGt1
  loc_1299CFC:     Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4)
  loc_1299D04:     var_A8 = var_A4.Text
  loc_1299D49:     Set var_FC = Me.TxtGt1
  loc_1299D4F:     Call 0.Method_Proc_162_111_129A2A40 (var_86, var_100, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_1299D57:     var_100.Text = 1
  loc_1299D84:     Set var_98 = Me.LblCap
  loc_1299D8A:     Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4, var_A8)
  loc_1299D92:     var_10C = var_A4.Tag
  loc_1299DB4:     If (var_A8 = MemVar_1F95078 & "DIS") Then
  loc_1299DC4:       Set var_98 = Me.TxtGt1
  loc_1299DCA:       Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4)
  loc_1299DD2:       var_A8 = var_A4.Text
  loc_1299DE9:       var_90 = (var_90 - Val(var_A8))
  loc_1299DF9:     Else
  loc_1299E06:       Set var_98 = Me.TxtGt1
  loc_1299E0C:       Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4, var_A8)
  loc_1299E14:       var_90 = var_A4.Text
  loc_1299E2B:       var_90 = (var_90 + Val(var_A8))
  loc_1299E38:     End If
  loc_1299E3B:   Next var_9E 'Integer
  loc_1299E47:   Set var_98 = Me.TxtGt
  loc_1299E4D:   Call 0.Method_Proc_162_111_129A2A48 (var_9A)
  loc_1299E88:   Set var_A4 = Me.TxtGt1
  loc_1299E8E:   Call 0.Method_Proc_162_111_129A2A40 (var_9A, var_FC, CStr(Format(var_90, "0.00")))
  loc_1299E96:   var_FC.Text = 1
  loc_1299EB1: Else
  loc_1299EB9:   If (arg_C = CInt(&H1E)) Then
  loc_1299EC8:     Set var_98 = Me.TxtGt
  loc_1299ECE:     Call 0.Method_Proc_162_111_129A2A48 (var_9A, var_86)
  loc_1299EDC:     For var_110 = 1 To (var_9A - 1):   1 = var_110 'Integer
  loc_1299EEF:       Set var_98 = Me.TxtGt2
  loc_1299EF5:       Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4)
  loc_1299EFD:       var_A8 = var_A4.Text
  loc_1299F42:       Set var_FC = Me.TxtGt2
  loc_1299F48:       Call 0.Method_Proc_162_111_129A2A40 (var_86, var_100, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_1299F50:       var_100.Text = 1
  loc_1299F7D:       Set var_98 = Me.LblCap
  loc_1299F83:       Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4, var_A8)
  loc_1299F8B:       var_10C = var_A4.Tag
  loc_1299FAD:       If (var_A8 = MemVar_1F95078 & "DIS") Then
  loc_1299FBD:         Set var_98 = Me.TxtGt2
  loc_1299FC3:         Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4)
  loc_1299FCB:         var_A8 = var_A4.Text
  loc_1299FE2:         var_90 = (var_90 - Val(var_A8))
  loc_1299FF2:       Else
  loc_1299FFF:         Set var_98 = Me.TxtGt2
  loc_129A005:         Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4, var_A8)
  loc_129A00D:         var_90 = var_A4.Text
  loc_129A024:         var_90 = (var_90 + Val(var_A8))
  loc_129A031:       End If
  loc_129A034:     Next var_110 'Integer
  loc_129A040:     Set var_98 = Me.TxtGt
  loc_129A046:     Call 0.Method_Proc_162_111_129A2A48 (var_9A)
  loc_129A081:     Set var_A4 = Me.TxtGt2
  loc_129A087:     Call 0.Method_Proc_162_111_129A2A40 (var_9A, var_FC, CStr(Format(var_90, "0.00")))
  loc_129A08F:     var_FC.Text = 1
  loc_129A0AA:   Else
  loc_129A0B2:     If (arg_C = CInt(&H1F)) Then
  loc_129A0C1:       Set var_98 = Me.TxtGt
  loc_129A0C7:       Call 0.Method_Proc_162_111_129A2A48 (var_9A, var_86)
  loc_129A0D5:       For var_114 = 1 To (var_9A - 1):     1 = var_114 'Integer
  loc_129A0E8:         Set var_98 = Me.TxtGt3
  loc_129A0EE:         Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4)
  loc_129A0F6:         var_A8 = var_A4.Text
  loc_129A13B:         Set var_FC = Me.TxtGt3
  loc_129A141:         Call 0.Method_Proc_162_111_129A2A40 (var_86, var_100, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_129A149:         var_100.Text = 1
  loc_129A176:         Set var_98 = Me.LblCap
  loc_129A17C:         Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4, var_A8)
  loc_129A184:         var_10C = var_A4.Tag
  loc_129A1A6:         If (var_A8 = MemVar_1F95078 & "DIS") Then
  loc_129A1B6:           Set var_98 = Me.TxtGt3
  loc_129A1BC:           Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4)
  loc_129A1C4:           var_A8 = var_A4.Text
  loc_129A1DB:           var_90 = (var_90 - Val(var_A8))
  loc_129A1EB:         Else
  loc_129A1F8:           Set var_98 = Me.TxtGt3
  loc_129A1FE:           Call 0.Method_Proc_162_111_129A2A40 (var_86, var_A4, var_A8)
  loc_129A206:           var_90 = var_A4.Text
  loc_129A21D:           var_90 = (var_90 + Val(var_A8))
  loc_129A22A:         End If
  loc_129A22D:       Next var_114 'Integer
  loc_129A239:       Set var_98 = Me.TxtGt
  loc_129A23F:       Call 0.Method_Proc_162_111_129A2A48 (var_9A)
  loc_129A27A:       Set var_A4 = Me.TxtGt3
  loc_129A280:       Call 0.Method_Proc_162_111_129A2A40 (var_9A, var_FC, CStr(Format(var_90, "0.00")))
  loc_129A288:       var_FC.Text = 1
  loc_129A2A0:     End If
  loc_129A2A0:   End If
  loc_129A2A0: End If
  loc_129A2A0: Exit Sub
End Sub

Public Sub Proc_162_112_12CD5E8(arg_C, arg_10) '12CD5E8
  'Data Table: 586158
  Dim var_90 As MSHFlexGrid
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_86 As Integer
  Dim var_240 As MSHFlexGrid
  Dim var_244 As MSHFlexGrid
  Dim var_248 As MSHFlexGrid
  loc_12CCF90: If (arg_C = 0) Then
  loc_12CCF97:   var_8A = arg_10 'Byte
  loc_12CCFA2:   If (var_8A = &H1D) Then
  loc_12CCFA9:     Set var_90 = Me.FGrid
  loc_12CCFAF:     var_104 = var_90.Row
  loc_12CCFB8:     var_114 = CVar(CLng(var_104)) 'Long
  loc_12CCFC0:     var_134 = CVar(CLng(&H1E)) 'Long
  loc_12CCFC8:     var_154 = var_90.TextMatrix)
  loc_12CCFEA:     var_178 = CVar(CLng(var_90.Row)) 'Long
  loc_12CCFF2:     var_198 = CVar(CLng(&H1F)) 'Long
  loc_12CD01C:     var_1DC = CVar(CLng(var_90.Row)) 'Long
  loc_12CD024:     var_1FC = CVar(CLng(7)) 'Long
  loc_12CD04E:     var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_12CD056:     var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD09D:     If (CDbl(((Val(CStr(var_90.TextMatrix))) + Val(CStr(var_154))) + Val(CStr(var_90.TextMatrix))))) > CDbl(Val(CStr(var_90.TextMatrix))))) Then
  loc_12CD0C1:       MsgBox("Please Check Quantity!", &H40, "Split Bill...", var_104, var_154)
  loc_12CD0DD:       var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_12CD0E5:       var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD0EA:       var_114 = vbNullString
  loc_12CD0F3:       LateIdCallSt
  loc_12CD10B:       var_90.Col = CVar(CLng(arg_10))
  loc_12CD120:       Proc_162_112_12CD5E8 = &HFF
  loc_12CD126:     End If
  loc_12CD128:     Set var_90 = Nothing 
  loc_12CD133:     Call Proc_162_102_19DD7D0(CInt(&H1D))
  loc_12CD13B:   Else
  loc_12CD142:     If (var_8A = &H1E) Then
  loc_12CD149:       Set var_240 = Me.FGrid
  loc_12CD14F:       var_104 = var_240.Row
  loc_12CD158:       var_114 = CVar(CLng(var_104)) 'Long
  loc_12CD160:       var_134 = CVar(CLng(&H1E)) 'Long
  loc_12CD168:       var_154 = var_240.TextMatrix)
  loc_12CD18A:       var_178 = CVar(CLng(var_240.Row)) 'Long
  loc_12CD192:       var_198 = CVar(CLng(&H1F)) 'Long
  loc_12CD1BC:       var_1DC = CVar(CLng(var_240.Row)) 'Long
  loc_12CD1C4:       var_1FC = CVar(CLng(7)) 'Long
  loc_12CD1EE:       var_B0 = CVar(CLng(var_240.Row)) 'Long
  loc_12CD1F6:       var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD23D:       If (CDbl(((Val(CStr(var_240.TextMatrix))) + Val(CStr(var_154))) + Val(CStr(var_240.TextMatrix))))) > CDbl(Val(CStr(var_240.TextMatrix))))) Then
  loc_12CD261:         MsgBox("Please Check Quantity!", &H40, "Split Bill...", var_104, var_154)
  loc_12CD27D:         var_B0 = CVar(CLng(var_240.Row)) 'Long
  loc_12CD285:         var_D0 = CVar(CLng(&H1E)) 'Long
  loc_12CD28A:         var_114 = vbNullString
  loc_12CD293:         LateIdCallSt
  loc_12CD2AB:         var_240.Col = CVar(CLng(arg_10))
  loc_12CD2C0:         Proc_162_112_12CD5E8 = &HFF
  loc_12CD2C6:       End If
  loc_12CD2C8:       Set var_240 = Nothing 
  loc_12CD2D3:       Call Proc_162_102_19DD7D0(CInt(&H1E))
  loc_12CD2DB:     Else
  loc_12CD2E2:       If (var_8A = &H1F) Then
  loc_12CD2E9:         Set var_244 = Me.FGrid
  loc_12CD2EF:         var_104 = var_244.Row
  loc_12CD2F8:         var_114 = CVar(CLng(var_104)) 'Long
  loc_12CD300:         var_134 = CVar(CLng(&H1E)) 'Long
  loc_12CD308:         var_154 = var_244.TextMatrix)
  loc_12CD32A:         var_178 = CVar(CLng(var_244.Row)) 'Long
  loc_12CD332:         var_198 = CVar(CLng(&H1F)) 'Long
  loc_12CD35C:         var_1DC = CVar(CLng(var_244.Row)) 'Long
  loc_12CD364:         var_1FC = CVar(CLng(7)) 'Long
  loc_12CD38E:         var_B0 = CVar(CLng(var_244.Row)) 'Long
  loc_12CD396:         var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD3DD:         If (CDbl(((Val(CStr(var_244.TextMatrix))) + Val(CStr(var_154))) + Val(CStr(var_244.TextMatrix))))) > CDbl(Val(CStr(var_244.TextMatrix))))) Then
  loc_12CD401:           MsgBox("Please Check Quantity!", &H40, "Split Bill...", var_104, var_154)
  loc_12CD41D:           var_B0 = CVar(CLng(var_244.Row)) 'Long
  loc_12CD425:           var_D0 = CVar(CLng(&H1F)) 'Long
  loc_12CD42A:           var_114 = vbNullString
  loc_12CD433:           LateIdCallSt
  loc_12CD44B:           var_244.Col = CVar(CLng(arg_10))
  loc_12CD460:           Proc_162_112_12CD5E8 = &HFF
  loc_12CD466:         End If
  loc_12CD468:         Set var_244 = Nothing 
  loc_12CD470:         Set var_248 = Me.FGrid
  loc_12CD476:         var_104 = var_248.Row
  loc_12CD47F:         var_114 = CVar(CLng(var_104)) 'Long
  loc_12CD487:         var_134 = CVar(CLng(&H1E)) 'Long
  loc_12CD48F:         var_154 = var_248.TextMatrix)
  loc_12CD4B1:         var_178 = CVar(CLng(var_248.Row)) 'Long
  loc_12CD4B9:         var_198 = CVar(CLng(&H1F)) 'Long
  loc_12CD4E3:         var_1DC = CVar(CLng(var_248.Row)) 'Long
  loc_12CD4EB:         var_1FC = CVar(CLng(7)) 'Long
  loc_12CD515:         var_B0 = CVar(CLng(var_248.Row)) 'Long
  loc_12CD51D:         var_D0 = CVar(CLng(&H1D)) 'Long
  loc_12CD564:         If (CDbl(((Val(CStr(var_248.TextMatrix))) + Val(CStr(var_154))) + Val(CStr(var_248.TextMatrix))))) <> CDbl(Val(CStr(var_248.TextMatrix))))) Then
  loc_12CD58E:           MsgBox(CVar("Please verify item Quantity!" & vbCrLf & "Quantity not matched."), &H10, "Split Bill...", var_104, var_154)
  loc_12CD5AE:           var_248.Col = CVar(CLng(arg_10))
  loc_12CD5C3:           Proc_162_112_12CD5E8 = &HFF
  loc_12CD5C9:         End If
  loc_12CD5CB:         Set var_248 = Nothing 
  loc_12CD5D6:         Call Proc_162_102_19DD7D0(CInt(&H1F))
  loc_12CD5DB:       End If
  loc_12CD5DB:     End If
  loc_12CD5DB:   End If
  loc_12CD5DD:   var_86 = 0
  loc_12CD5E0: End If
  loc_12CD5E0: Proc_162_112_12CD5E8 = var_86
End Sub

Public Sub Proc_162_113_13810D0(arg_C, arg_10, arg_14, arg_18) '13810D0
  'Data Table: 586158
  Dim var_F0 As String
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_274 As Variant
  Dim unk_586184 As Connection15
  Dim var_A8 As Recordset15
  Dim var_278 As Fields15
  Dim var_290 As Double
  Dim var_EC As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_DC As Variant
  Dim arg_10 As Integer
  loc_1380885: var_90 = vbNullString
  loc_138088B: var_94 = vbNullString
  loc_1380891: var_98 = vbNullString
  loc_1380897: var_9C = vbNullString
  loc_138089D: var_A0 = vbNullString
  loc_13808A3: var_A4 = vbNullString
  loc_13808AE: If (MemVar_1F953C4 = "Y") Then
  loc_13808B8:   var_F0 = vbNullString & "DATE "
  loc_13808E9:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_13808FC: End If
  loc_1380904: If (MemVar_1F953C8 = "Y") Then
  loc_1380916:   var_DC = "dd/MM/yy"
  loc_1380968:   var_174 = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_DC)))), 0))
  loc_138098F:   var_1C4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_1380997:   var_1E4 = (var_174 - Len(var_1C4))
  loc_13809A8:   var_214 = (CVar(var_8C) + Space(CLng(var_1E4)))
  loc_13809B1:   var_234 = (var_214 + " PAGE NO ")
  loc_13809D3:   var_274 = (var_234 + Trim(Str(arg_C)))
  loc_13809D8:   var_8C = CStr(var_274)
  loc_1380A05: End If
  loc_1380A13: var_AC = "Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R  Where R.CODE='" & arg_18 & "'"
  loc_1380A2F: unk_586184.Execute var_AC, var_DC, -1
  loc_1380A3A: Set var_A8 = var_278
  loc_1380A51: If (MemVar_1F953CC = "K") Then
  loc_1380A90:   If (var_A8.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_1380A9D:     If (Len(MemVar_1F95130) <= &H23) Then
  loc_1380AC9:       Call Proc_162_105_10ACE60(MemVar_1F95130, "D", CInt(Val(CStr(arg_14))))
  loc_1380AD2:       var_90 = var_288 & var_288
  loc_1380AE1:     Else
  loc_1380AF7:       var_EC = (CVar(var_90) + Chr(&H12))
  loc_1380B0B:       var_144 = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_1380B1F:       var_174 = (0 + Chr(&HF))
  loc_1380B29:       var_194 = (var_174 + CVar(MemVar_1F95130))
  loc_1380B3D:       var_1C4 = (Str(arg_C) + Chr(&H12))
  loc_1380B42:       var_90 = CStr(var_1C4)
  loc_1380B5A:     End If
  loc_1380B5A:   End If
  loc_1380B96:   If (var_A8.Fields.Item("OutletTitle").Value = "Y") Then
  loc_1380BD9:     If (Len(var_A8.Fields.Item("Name").Value) <= 35) Then
  loc_1380C10:       var_290 = Val(CStr(arg_14))
  loc_1380C31:       Call Proc_162_105_10ACE60(CStr(var_A8.Fields.Item("Name").Value), "D", CInt(var_290))
  loc_1380C3A:       var_94 = var_294 & var_294
  loc_1380C55:     Else
  loc_1380C6B:       var_EC = (CVar(var_94) + Chr(&H12))
  loc_1380C7F:       var_144 = (Len(var_A8.Fields.Item("Name").Value) + Chr(&HE))
  loc_1380C93:       var_174 = (0 + Chr(&HF))
  loc_1380CC1:       var_1A4 = (var_174 + var_A8.Fields.Item("Name").Value)
  loc_1380CD5:       var_1D4 = (Chr(&H12) + Chr(&H12))
  loc_1380CDA:       var_94 = CStr(Len(Chr(&H12)))
  loc_1380CFB:     End If
  loc_1380CFB:   End If
  loc_1380D0F:   If (var_A8.RecordCount > 0) Then
  loc_1380D4B:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header1")), var_94, var_290, var_90, var_290) <> vbNullString) Then
  loc_1380D82:       var_290 = Val(CStr(arg_14))
  loc_1380DA3:       Call Proc_162_105_10ACE60(CStr(var_A8.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_1380DAC:       var_98 = var_294 & var_294
  loc_1380DC4:     End If
  loc_1380DD3:     var_278 = var_A8.Fields
  loc_1380DFD:     If (Proc_6_38_E69628(CVar(var_278.Item("Header2")), var_98, var_290, var_278) <> vbNullString) Then
  loc_1380E34:       var_290 = Val(CStr(arg_14))
  loc_1380E55:       Call Proc_162_105_10ACE60(CStr(var_A8.Fields.Item("Header2").Value), "D", CInt(var_290))
  loc_1380E5E:       var_9C = var_294 & var_294
  loc_1380E76:     End If
  loc_1380EAF:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header3")), var_9C, var_290, 1) <> vbNullString) Then
  loc_1380EE6:       var_290 = Val(CStr(arg_14))
  loc_1380F07:       Call Proc_162_105_10ACE60(CStr(var_A8.Fields.Item("Header3").Value), "D", CInt(var_290))
  loc_1380F10:       var_A0 = var_294 & var_294
  loc_1380F28:     End If
  loc_1380F61:     If (Proc_6_38_E69628(CVar(var_A8.Fields.Item("Header4")), var_A0, var_290) <> vbNullString) Then
  loc_1380FB9:       Call Proc_162_105_10ACE60(CStr(var_A8.Fields.Item("Header4").Value), "D", CInt(Val(CStr(arg_14))))
  loc_1380FC2:       var_A4 = var_294 & var_294
  loc_1380FDA:     End If
  loc_1380FDA:   End If
  loc_1380FDA: End If
  loc_1380FE4: If (Len(var_8C) > 0) Then
  loc_1380FEC:   Print 1, var_8C
  loc_1380FF8:   arg_10 = (arg_10 + 1)
  loc_1380FFB: End If
  loc_1381005: If (Len(var_90) > 0) Then
  loc_138100D:   Print 1, var_90
  loc_1381019:   arg_10 = (arg_10 + 1)
  loc_138101C: End If
  loc_1381026: If (Len(var_94) > 0) Then
  loc_138102E:   Print 1, var_94
  loc_138103A:   arg_10 = (arg_10 + 1)
  loc_138103D: End If
  loc_1381047: If (Len(var_98) > 0) Then
  loc_138104F:   Print 1, var_98
  loc_138105B:   arg_10 = (arg_10 + 1)
  loc_138105E: End If
  loc_1381068: If (Len(var_9C) > 0) Then
  loc_1381070:   Print 1, var_9C
  loc_138107C:   arg_10 = (arg_10 + 1)
  loc_138107F: End If
  loc_1381089: If (Len(var_A0) > 0) Then
  loc_1381091:   Print 1, var_A0
  loc_138109D:   arg_10 = (arg_10 + 1)
  loc_13810A0: End If
  loc_13810AA: If (Len(var_A4) > 0) Then
  loc_13810B2:   Print 1, var_A4
  loc_13810BE:   arg_10 = (arg_10 + 1)
  loc_13810C1: End If
  loc_13810C7: Proc_162_113_13810D0 = arg_10
End Sub
