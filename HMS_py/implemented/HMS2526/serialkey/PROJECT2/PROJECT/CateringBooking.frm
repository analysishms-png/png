VERSION 5.00
Begin VB.Form CateringBooking
  Caption = "Catalog Selection"
  ForeColor = &H400040&
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
  ClientLeft = -360
  ClientTop = -1545
  ClientWidth = 11880
  ClientHeight = 8595
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
  WhatsThisHelp = -1  'True
  Begin BtnEnh CmdMore
    Left = 13080
    Top = 1365
    Width = 1185
    Height = 720
    TabIndex = 118
  End
  Begin Frame Frame1
    ForeColor = &H80000008&
    Left = 6990
    Top = 1365
    Width = 6090
    Height = 2535
    TabIndex = 105
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 32
      ForeColor = &HFF0000&
      Left = 1530
      Top = 1290
      Width = 4530
      Height = 285
      TabIndex = 114
      BorderStyle = 0 'None
      MaxLength = 25
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
    Begin TextBox Txt
      Index = 28
      ForeColor = &HFF0000&
      Left = 1515
      Top = 15
      Width = 4530
      Height = 285
      TabIndex = 107
      BorderStyle = 0 'None
      MaxLength = 25
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
    Begin TextBox Txt
      Index = 29
      ForeColor = &HFF0000&
      Left = 1515
      Top = 330
      Width = 4530
      Height = 285
      TabIndex = 108
      BorderStyle = 0 'None
      MaxLength = 25
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
    Begin TextBox Txt
      Index = 30
      ForeColor = &HFF0000&
      Left = 1515
      Top = 645
      Width = 4530
      Height = 285
      TabIndex = 110
      BorderStyle = 0 'None
      MaxLength = 25
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
    Begin TextBox Txt
      Index = 31
      ForeColor = &HFF0000&
      Left = 1515
      Top = 960
      Width = 4530
      Height = 285
      TabIndex = 112
      BorderStyle = 0 'None
      MaxLength = 25
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
    Begin TextBox Txt
      Index = 33
      ForeColor = &HFF0000&
      Left = 1515
      Top = 1590
      Width = 4530
      Height = 870
      TabIndex = 116
      BorderStyle = 0 'None
      MultiLine = -1  'True
      Alignment = 2 'Center
      DataSource = "Txt1"
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
    Begin BtnEnh BtnEnh1
      Left = 0
      Top = 1590
      Width = 1500
      Height = 885
      TabIndex = 106
    End
    Begin BtnEnh BtnEnh3
      Left = 0
      Top = 15
      Width = 1500
      Height = 285
      TabIndex = 109
    End
    Begin BtnEnh BtnEnh4
      Left = 0
      Top = 330
      Width = 1500
      Height = 285
      TabIndex = 111
    End
    Begin BtnEnh BtnEnh5
      Left = 0
      Top = 645
      Width = 1500
      Height = 285
      TabIndex = 113
    End
    Begin BtnEnh BtnEnh6
      Left = 0
      Top = 960
      Width = 1500
      Height = 285
      TabIndex = 115
    End
  End
End
Begin BtnEnh BtnEnh2
  Left = 0
  Top = 1275
  Width = 1500
  Height = 285
  TabIndex = 117
End
Begin MainCtrl TopCtrl1
  Left = 0
  Top = 0
  Width = 11880
  Height = 450
  TabIndex = 103
End
Begin DataGrid DGVType
  Left = 16725
  Top = 4650
  Width = 4215
  Height = 3645
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 61
End
Begin DataGrid DGHall
  Left = 16455
  Top = 3750
  Width = 4290
  Height = 3390
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 46
End
Begin DataGrid DGFPNo
  Left = 14775
  Top = 3375
  Width = 6840
  Height = 2145
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 102
End
Begin DataGrid DGItem
  Left = 15150
  Top = 2550
  Width = 9405
  Height = 2415
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 47
End
Begin Frame Frame2
  Caption = "Catalog Category"
  Index = 0
  ForeColor = &H80000008&
  Left = 18165
  Top = 8565
  Width = 2310
  Height = 555
  Visible = 0   'False
  TabIndex = 98
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
  Begin SSOption OptCat
    Index = 0
    Left = 165
    Top = 240
    Width = 630
    Height = 210
    TabIndex = 99
  End
  Begin SSOption OptCat
    Index = 1
    Left = 1605
    Top = 225
    Width = 570
    Height = 240
    TabIndex = 100
  End
End
Begin TextBox TxtGrid
  Index = 1
  BackColor = &H80000004&
  ForeColor = &H80000012&
  Left = 885
  Top = 2820
  Width = 765
  Height = 225
  Visible = 0   'False
  TabIndex = 95
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 150
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
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
  ForeColor = &HFF0000&
  Left = 8505
  Top = 3285
  Width = 3840
  Height = 285
  TabIndex = 22
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
  Index = 48
  ForeColor = &HFF0000&
  Left = 8505
  Top = 2970
  Width = 3840
  Height = 285
  TabIndex = 21
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
  Index = 47
  ForeColor = &HFF0000&
  Left = 8505
  Top = 2655
  Width = 3840
  Height = 285
  TabIndex = 20
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
  Index = 35
  Left = 13155
  Top = 9990
  Width = 1335
  Height = 285
  TabIndex = 7
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
  Index = 16
  Left = 10290
  Top = 10500
  Width = 1365
  Height = 285
  TabIndex = 10
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
Begin TextBox Txt
  Index = 4
  Left = 13155
  Top = 10245
  Width = 1335
  Height = 285
  TabIndex = 9
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
Begin TextBox TxtGrid
  Index = 0
  BackColor = &H80000004&
  ForeColor = &H80000012&
  Left = 6765
  Top = 4215
  Width = 945
  Height = 225
  Visible = 0   'False
  TabIndex = 24
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
  Left = 5040
  Top = 3885
  Width = 8490
  Height = 5115
  TabIndex = 23
End
Begin TextBox Txt
  Index = 46
  ForeColor = &HFF0000&
  Left = 1830
  Top = 2025
  Width = 2310
  Height = 285
  TabIndex = 6
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
Begin DataGrid DG_Catalog
  Left = 16275
  Top = 1815
  Width = 4290
  Height = 3390
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 85
End
Begin TextBox Txt
  Index = 45
  ForeColor = &HFF0000&
  Left = 1830
  Top = 1395
  Width = 4200
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
  Index = 44
  Left = 12660
  Top = 10500
  Width = 1830
  Height = 285
  TabIndex = 11
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
Begin TextBox Txt
  Index = 43
  Left = 10290
  Top = 10245
  Width = 1365
  Height = 285
  TabIndex = 8
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
Begin TextBox Txt
  Index = 42
  Left = 10290
  Top = 9735
  Width = 4200
  Height = 285
  TabIndex = 5
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
Begin TextBox Txt
  Index = 41
  Left = 10290
  Top = 9480
  Width = 4200
  Height = 285
  TabIndex = 4
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
Begin TextBox Txt
  Index = 9
  Left = 15045
  Top = 7410
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 34
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
Begin TextBox Txt
  Index = 40
  Left = 15045
  Top = 7665
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 35
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
Begin TextBox Txt
  Index = 39
  Left = 16050
  Top = 1650
  Width = 2670
  Height = 240
  Visible = 0   'False
  TabIndex = 43
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
Begin TextBox Txt
  Index = 38
  Left = 16050
  Top = 885
  Width = 1350
  Height = 240
  Visible = 0   'False
  TabIndex = 40
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
Begin TextBox Txt
  Index = 37
  Left = 16050
  Top = 1140
  Width = 1350
  Height = 240
  Visible = 0   'False
  TabIndex = 41
  BorderStyle = 0 'None
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
  Index = 36
  Left = 16050
  Top = 1395
  Width = 2670
  Height = 240
  Visible = 0   'False
  TabIndex = 42
  BorderStyle = 0 'None
  MaxLength = 20
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
  Left = 15045
  Top = 6390
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 28
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
Begin TextBox Txt
  Index = 14
  Left = 15045
  Top = 6135
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 27
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
Begin TextBox Txt
  Index = 13
  Left = 15045
  Top = 5880
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 26
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
Begin TextBox Txt
  Index = 23
  ForeColor = &HFF0000&
  Left = 8505
  Top = 1080
  Width = 3825
  Height = 285
  Enabled = 0   'False
  TabIndex = 15
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
  Index = 24
  ForeColor = &HFF0000&
  Left = 8505
  Top = 1395
  Width = 3840
  Height = 285
  TabIndex = 16
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
  Index = 25
  ForeColor = &HFF0000&
  Left = 8505
  Top = 1710
  Width = 3840
  Height = 285
  TabIndex = 17
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
  Index = 22
  Left = 5760
  Top = 10320
  Width = 780
  Height = 240
  TabIndex = 14
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
Begin TextBox Txt
  Index = 21
  Left = 3825
  Top = 10320
  Width = 765
  Height = 240
  TabIndex = 13
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
Begin TextBox Txt
  Index = 20
  Left = 1740
  Top = 10320
  Width = 750
  Height = 240
  TabIndex = 12
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
Begin TextBox Txt
  Index = 26
  ForeColor = &HFF0000&
  Left = 8505
  Top = 2025
  Width = 3840
  Height = 285
  TabIndex = 18
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
  Index = 19
  Left = 14790
  Top = 8760
  Width = 450
  Height = 240
  Visible = 0   'False
  TabIndex = 44
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
Begin TextBox Txt
  Index = 18
  Left = 14370
  Top = 6900
  Width = 450
  Height = 240
  Visible = 0   'False
  TabIndex = 31
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
Begin TextBox Txt
  Index = 17
  Left = 14370
  Top = 6645
  Width = 450
  Height = 240
  Visible = 0   'False
  TabIndex = 29
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
Begin TextBox Txt
  Index = 12
  Left = 16050
  Top = 630
  Width = 1350
  Height = 240
  Visible = 0   'False
  TabIndex = 39
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
Begin TextBox Txt
  Index = 11
  Left = 15045
  Top = 8175
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 37
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
Begin TextBox Txt
  Index = 27
  ForeColor = &HFF0000&
  Left = 8505
  Top = 2340
  Width = 3840
  Height = 285
  TabIndex = 19
  BorderStyle = 0 'None
  MultiLine = -1  'True
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
  Index = 34
  BackColor = &H80000004&
  ForeColor = &HC00000&
  Left = 15270
  Top = 8745
  Width = 2595
  Height = 210
  Visible = 0   'False
  TabIndex = 45
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
  Index = 8
  Left = 15045
  Top = 7155
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 33
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
Begin TextBox Txt
  Index = 10
  Left = 15045
  Top = 7920
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 36
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
Begin TextBox Txt
  Index = 7
  Left = 15045
  Top = 6900
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 32
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
Begin TextBox Txt
  Index = 6
  Left = 15045
  Top = 6645
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 30
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
Begin TextBox Txt
  Index = 5
  Left = 15045
  Top = 5625
  Width = 1260
  Height = 240
  Visible = 0   'False
  TabIndex = 25
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
Begin TextBox Txt
  Index = 0
  Left = 5040
  Top = 9930
  Width = 1845
  Height = 240
  Visible = 0   'False
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
  Index = 1
  ForeColor = &HFF0000&
  Left = 1830
  Top = 1080
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
Begin TextBox Txt
  Index = 2
  ForeColor = &HFF0000&
  Left = 4815
  Top = 1080
  Width = 1185
  Height = 285
  TabIndex = 38
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
  Index = 3
  ForeColor = &HFF0000&
  Left = 1830
  Top = 1710
  Width = 4200
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
Begin MaskEdBox txtMEd
  Index = 0
  Left = 2190
  Top = 3105
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 94
End
Begin MSHFlexGrid FGrid1
  Left = 315
  Top = 2580
  Width = 6615
  Height = 1125
  TabIndex = 96
End
Begin MSHFlexGrid FGrid2
  Left = 330
  Top = 3735
  Width = 4710
  Height = 2865
  TabIndex = 101
End
Begin BtnEnh PrintInst
  Left = 13080
  Top = 2085
  Width = 1185
  Height = 720
  TabIndex = 119
End
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 645
  Top = 8325
  Width = 2430
  Height = 285
  TabIndex = 121
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
  Left = 660
  Top = 7995
  Width = 2520
  Height = 255
  TabIndex = 120
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 435
  Width = 180
  Height = 540
  TabIndex = 104
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
Begin Shape Shape6
  BorderColor = &H404040&
  Left = 225
  Top = 10305
  Width = 6390
  Height = 285
  Shape = 4
  BorderWidth = 2
End
Begin Shape Shape1
  Left = 7965
  Top = 9855
  Width = 405
  Height = 270
  Visible = 0   'False
End
Begin Label Label4
  Caption = "Venue Details"
  Index = 0
  ForeColor = &H80&
  Left = 195
  Top = 2310
  Width = 1470
  Height = 270
  TabIndex = 97
  Alignment = 1 'Right Justify
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
Begin Label Label1
  Caption = "Spl.Menu Ins7"
  Index = 45
  ForeColor = &HFF0000&
  Left = 7095
  Top = 3300
  Width = 1335
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
Begin Label Label1
  Caption = "Spl.Menu Ins5"
  Index = 44
  ForeColor = &HFF0000&
  Left = 7095
  Top = 2670
  Width = 1335
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
Begin Label Label1
  Caption = "Spl.Menu Ins6"
  Index = 43
  ForeColor = &HFF0000&
  Left = 7095
  Top = 2985
  Width = 1335
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
Begin Label Label1
  Caption = "PIN"
  Index = 26
  ForeColor = &HFF0000&
  Left = 12765
  Top = 9990
  Width = 330
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
Begin Label Label1
  Caption = "Mobile No."
  Index = 24
  ForeColor = &HFF0000&
  Left = 8835
  Top = 10500
  Width = 1020
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
Begin Label Label1
  Caption = "Phone No.(Off)"
  Index = 0
  ForeColor = &HFF0000&
  Left = 11805
  Top = 10245
  Width = 1380
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
Begin Label Label3
  Caption = "City Name"
  ForeColor = &HFF0000&
  Left = 375
  Top = 2025
  Width = 975
  Height = 240
  TabIndex = 87
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
End
Begin Label Label2
  Caption = "%"
  ForeColor = &H0&
  Left = 14850
  Top = 6915
  Width = 180
  Height = 210
  Visible = 0   'False
  TabIndex = 86
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
  Caption = "Catalog Name"
  Index = 42
  ForeColor = &HFF0000&
  Left = 375
  Top = 1410
  Width = 1350
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
Begin Label Label1
  Caption = "PAN No."
  Index = 41
  ForeColor = &HFF0000&
  Left = 11805
  Top = 10515
  Width = 780
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
Begin Label Label1
  Caption = "Phone No.(Res)"
  Index = 40
  ForeColor = &HFF0000&
  Left = 8835
  Top = 10245
  Width = 1455
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
Begin Label Label1
  Caption = "Add2"
  Index = 20
  ForeColor = &HFF0000&
  Left = 8835
  Top = 9735
  Width = 480
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
Begin Label Label1
  Caption = "Add1"
  Index = 13
  ForeColor = &HFF0000&
  Left = 8835
  Top = 9495
  Width = 480
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
Begin Label Label1
  Caption = "Deduction"
  Index = 39
  ForeColor = &H0&
  Left = 13605
  Top = 7695
  Width = 840
  Height = 210
  Visible = 0   'False
  TabIndex = 79
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
  Caption = "Addition"
  Index = 9
  ForeColor = &H0&
  Left = 13605
  Top = 7440
  Width = 675
  Height = 210
  Visible = 0   'False
  TabIndex = 78
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
  Caption = "Rect.No."
  Index = 38
  ForeColor = &H4080&
  Left = 14730
  Top = 900
  Width = 720
  Height = 210
  Visible = 0   'False
  TabIndex = 77
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
  Caption = "Cr. Card Holder"
  Index = 37
  ForeColor = &H4080&
  Left = 14730
  Top = 1665
  Width = 1230
  Height = 210
  Visible = 0   'False
  TabIndex = 76
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
  Caption = "Rect.Date"
  Index = 36
  ForeColor = &H4080&
  Left = 14730
  Top = 1155
  Width = 825
  Height = 210
  Visible = 0   'False
  TabIndex = 75
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
  Caption = "Credit Card No."
  Index = 35
  ForeColor = &H4080&
  Left = 14730
  Top = 1410
  Width = 1245
  Height = 210
  Visible = 0   'False
  TabIndex = 74
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
Begin Shape Shape2
  BorderColor = &H400040&
  Left = 13515
  Top = 5580
  Width = 2835
  Height = 2910
  Visible = 0   'False
End
Begin Label Label1
  Caption = "Hall Rent"
  Index = 21
  ForeColor = &H0&
  Left = 13605
  Top = 5895
  Width = 720
  Height = 210
  Visible = 0   'False
  TabIndex = 73
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
  Caption = "Total Per Cover"
  Index = 15
  ForeColor = &H0&
  Left = 13620
  Top = 6150
  Width = 1275
  Height = 210
  Visible = 0   'False
  TabIndex = 72
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
  Caption = "Amount"
  Index = 10
  ForeColor = &H0&
  Left = 13605
  Top = 6405
  Width = 660
  Height = 210
  Visible = 0   'False
  TabIndex = 71
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
  Caption = "Spl.Menu Ins3"
  Index = 33
  ForeColor = &HFF0000&
  Left = 7095
  Top = 2040
  Width = 1335
  Height = 240
  TabIndex = 70
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
  Caption = "Spl.Menu Ins2"
  Index = 32
  ForeColor = &HFF0000&
  Left = 7095
  Top = 1725
  Width = 1335
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
Begin Label Label1
  Caption = "Gauranted Pax"
  Index = 31
  ForeColor = &H0&
  Left = 2580
  Top = 10335
  Width = 1200
  Height = 210
  TabIndex = 68
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
  Caption = "Spl.Menu Ins1"
  Index = 30
  ForeColor = &HFF0000&
  Left = 7095
  Top = 1410
  Width = 1335
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
Begin Label Label1
  Caption = "Function Name"
  Index = 28
  ForeColor = &HFF0000&
  Left = 6780
  Top = 1050
  Width = 1440
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
Begin Label Label1
  Caption = "Rate Per Pax"
  Index = 27
  ForeColor = &H0&
  Left = 4665
  Top = 10335
  Width = 1050
  Height = 210
  TabIndex = 65
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
  Caption = "Ex. Attendance"
  Index = 22
  ForeColor = &H0&
  Left = 300
  Top = 10335
  Width = 1290
  Height = 210
  TabIndex = 64
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
Begin Label Label5
  Caption = "%"
  ForeColor = &H0&
  Left = 14850
  Top = 6675
  Width = 180
  Height = 210
  Visible = 0   'False
  TabIndex = 63
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
  Caption = "Round Off"
  Index = 8
  ForeColor = &H0&
  Left = 13605
  Top = 7950
  Width = 840
  Height = 210
  Visible = 0   'False
  TabIndex = 62
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
  Caption = "Spl.Menu Ins4"
  Index = 23
  ForeColor = &HFF0000&
  Left = 7095
  Top = 2355
  Width = 1335
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
Begin Label Label1
  Caption = "Discount"
  Index = 16
  ForeColor = &H0&
  Left = 13605
  Top = 6660
  Width = 705
  Height = 210
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
Begin Label Label1
  Caption = "Total(Items)"
  Index = 14
  ForeColor = &H0&
  Left = 13620
  Top = 5640
  Width = 1035
  Height = 210
  Visible = 0   'False
  TabIndex = 58
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
  Caption = "F.P. No."
  Index = 3
  ForeColor = &HFF0000&
  Left = 375
  Top = 1095
  Width = 750
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
Begin Label Label1
  Caption = "V.Type "
  Index = 4
  ForeColor = &H0&
  Left = 4410
  Top = 9960
  Width = 675
  Height = 210
  Visible = 0   'False
  TabIndex = 56
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
  Caption = "Date"
  Index = 1
  ForeColor = &HFF0000&
  Left = 4245
  Top = 1080
  Width = 435
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
Begin Label LblVPrefix
  Caption = "VPrefix"
  ForeColor = &H0&
  Left = 7080
  Top = 9885
  Width = 645
  Height = 210
  Visible = 0   'False
  TabIndex = 54
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
Begin Label Label1
  Caption = "Party Name"
  Index = 5
  ForeColor = &HFF0000&
  Left = 375
  Top = 1725
  Width = 1110
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
Begin Label Label1
  Caption = "DocID"
  Index = 12
  BackColor = &H8000000E&
  ForeColor = &HC00000&
  Left = 6810
  Top = 90
  Width = 555
  Height = 210
  TabIndex = 52
  AutoSize = -1  'True
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
  Caption = "Tax"
  Index = 19
  ForeColor = &H0&
  Left = 13605
  Top = 6900
  Width = 300
  Height = 210
  Visible = 0   'False
  TabIndex = 51
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
  Caption = "Net Amount"
  Index = 25
  ForeColor = &H0&
  Left = 13620
  Top = 8205
  Width = 1125
  Height = 210
  Visible = 0   'False
  TabIndex = 50
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
  Caption = "Service Tax"
  Index = 29
  ForeColor = &H0&
  Left = 13605
  Top = 7170
  Width = 945
  Height = 210
  Visible = 0   'False
  TabIndex = 49
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
  Caption = "Advance"
  Index = 6
  ForeColor = &H4080&
  Left = 14730
  Top = 645
  Width = 705
  Height = 210
  Visible = 0   'False
  TabIndex = 48
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
End

Attribute VB_Name = "CateringBooking"

Private global_52 As Integer
Private global_150 As Integer
Private global_152 As Integer
Private global_136 As Integer

Private Sub FGrid2_UnknownEvent_9 '12192A8
  'Data Table: 54B9E4
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As String
  Dim var_B8 As Integer
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_B6 As Integer
  Dim var_BC As Integer
  Dim var_104 As MSHFlexGrid
  Dim var_118 As Variant
  loc_1218DE1: Set var_9C = Me.TopCtrl1
  loc_1218DE7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((CLng(Me.FGrid.Rows) < 2))
  loc_1218E09: If ( Or (CStr() = "Browse")) Then
  loc_1218E0C:   Exit Sub
  loc_1218E0D: End If
  loc_1218E0F: var_B8 = 0
  loc_1218E25: var_CC = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_1218E2A: var_EC = 0
  loc_1218E51: var_B6 = CInt(Val(CStr(Me.FGrid2.TextMatrix))))
  loc_1218E8A: For var_100 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_B2 = var_100 'Integer
  loc_1218E94:   Set var_104 = Me.FGrid
  loc_1218E9B:   var_CC = CVar(CLng(var_B2)) 'Long
  loc_1218EA3:   var_EC = CVar(CLng(0)) 'Long
  loc_1218ED4:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(var_B6)) Then
  loc_1218EDA:     var_BC = var_B2
  loc_1218EF8:     For var_108 = 1 To CInt((CLng(var_104.Cols) - 1)): var_B4 = var_108 'Integer
  loc_1218F0A:       var_104.Row = CVar(CLng(var_B2))
  loc_1218F1B:       var_104.Col = CVar(CLng(var_B4))
  loc_1218F2C:       var_104.CellBackColor = &H808080
  loc_1218F3D:       var_104.CellForeColor = &HFFFFFF
  loc_1218F45:     Next var_108 'Integer
  loc_1218F4D:   Else
  loc_1218F51:     var_CC = CVar(CLng(var_B2)) 'Long
  loc_1218F56:     var_EC = &HB
  loc_1218F6D:     var_B0 = CStr(var_104.TextMatrix))
  loc_1218F7F:     var_118 = CVar(CLng(var_B2)) 'Long
  loc_1218FB1:     If (CVar(CLng(0)) And (CStr(var_104.TextMatrix)) = "ü")) Then
  loc_1218FCF:       For var_150 = 1 To CInt((CLng(var_104.Cols) - 1)):   var_B4 = var_150 'Integer
  loc_1218FE1:         var_104.Row = CVar(CLng(var_B2))
  loc_1218FF2:         var_104.Col = CVar(CLng(var_B4))
  loc_1219003:         var_104.CellBackColor = &HC0FFC0
  loc_1219014:         var_104.CellForeColor = 2
  loc_121901C:       Next var_150 'Integer
  loc_1219024:     Else
  loc_1219028:       var_CC = CVar(CLng(var_B2)) 'Long
  loc_121902D:       var_EC = &HB
  loc_1219058:       If (CDbl(Val(CStr(var_104.TextMatrix)))) = CDbl(var_B6)) Then
  loc_1219080:         For var_154 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):     var_B4 = var_154 'Integer
  loc_121908D:           var_104.ScrollTrack = True
  loc_121909E:           var_104.Row = CVar(CLng(var_B2))
  loc_12190AF:           var_104.Col = CVar(CLng(var_B4))
  loc_12190C0:           var_104.CellBackColor = &HC0FFFF
  loc_12190D1:           var_104.CellForeColor = &HFF0000
  loc_12190D9:         Next var_154 'Integer
  loc_12190E1:       Else
  loc_12190FC:         For var_158 = 1 To CInt((CLng(var_104.Cols) - 1)):       var_B4 = var_158 'Integer
  loc_121910E:           var_104.Row = CVar(CLng(var_B2))
  loc_121911F:           var_104.Col = CVar(CLng(var_B4))
  loc_1219130:           var_104.CellBackColor = &HFFFFFF
  loc_1219141:           var_104.CellForeColor = 0
  loc_1219149:         Next var_158 'Integer
  loc_121914E:       End If
  loc_121914E:     End If
  loc_121914E:   End If
  loc_1219150:   Set var_104 = Nothing 
  loc_1219157: Next var_100 'Integer
  loc_1219186: For var_15C = 1 To CInt((&H52 - (CLng(Me.FGrid.Rows) - CLng(var_BC)))): var_B2 = var_15C 'Integer
  loc_12191A5:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12191B4:   Me.FGrid.Row = 0
  loc_12191D5:   Me.FGrid.Col = CVar(CLng(0))
  loc_12191ED:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_1219207:   Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_121920F:   var_CC = vbNullString
  loc_1219219:   Set var_88 = Me.FGrid
  loc_121922D: Next var_15C 'Integer
  loc_1219238: If (var_BC <= 0) Then
  loc_121923D:   var_BC = 1
  loc_1219240: End If
  loc_1219253: Me.FGrid.TopRow = CVar(CLng(var_BC))
  loc_1219262: var_CC = CVar(CLng((var_BC + 1))) 'Long
  loc_1219271: Me.FGrid.Row = CVar(CLng(var_BC))
  loc_1219287: Me.FGrid.Redraw = True
  loc_1219293: Set var_88 = Me.FGrid
  loc_12192A4: Exit Sub
  loc_12192A5: DOC
End Sub

Private Sub DGFPNo_UnknownEvent_9 'F5A550
  'Data Table: 54B9E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5A430: On Error Goto loc_F5A54A
  loc_F5A442: Me.DGFPNo.Visible = False
  loc_F5A461: If (Me.RecordCount > 0) Then
  loc_F5A4A0:   Set var_B4 = Me.Txt
  loc_F5A4A6:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1), var_B8)
  loc_F5A4AE:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5A4E1:   var_B0 = Me.Fields.Item("Name")
  loc_F5A500:   Set var_B4 = Me.Txt
  loc_F5A506:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1), var_B8)
  loc_F5A50E:   var_B8.Text = CStr(var_B0.Value)
  loc_F5A524: End If
  loc_F5A52F: Set var_A8 = Me.Txt
  loc_F5A535: Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1))
  loc_F5A53D: var_B0.SetFocus
  loc_F5A549: Exit Sub
  loc_F5A54A: ' Referenced from: F5A430
  loc_F5A54A: Proc_6_60_E63754(var_B0)
  loc_F5A54F: Exit Sub
End Sub

Private Sub DG_Catalog_UnknownEvent_9 'F62D60
  'Data Table: 54B9E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F62C38: On Error Goto loc_F62D57
  loc_F62C4A: Me.DG_Catalog.Visible = False
  loc_F62C69: If (Me.RecordCount > 0) Then
  loc_F62CA8:   Set var_B4 = Me.Txt
  loc_F62CAE:   Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D), var_B8)
  loc_F62CB6:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F62CE9:   var_B0 = Me.Fields.Item("Name")
  loc_F62D08:   Set var_B4 = Me.Txt
  loc_F62D0E:   Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D), var_B8)
  loc_F62D16:   var_B8.Text = CStr(var_B0.Value)
  loc_F62D2C:   Call Proc_113_56_11D93C8()
  loc_F62D31: End If
  loc_F62D3C: Set var_A8 = Me.Txt
  loc_F62D42: Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D))
  loc_F62D4A: var_B0.SetFocus
  loc_F62D56: Exit Sub
  loc_F62D57: ' Referenced from: F62C38
  loc_F62D57: Proc_6_60_E63754(var_B0)
  loc_F62D5C: Exit Sub
End Sub

Private Sub OptCat_UnknownEvent_9 'E85BDC
  'Data Table: 54B9E4
  Dim var_86 As Variant
  loc_E85B6B: var_86 = KeyCode
  loc_E85B74: If (var_86 = 0) Then
  loc_E85B85:   Me.FGrid2.Visible = True
  loc_E85B99:   Me.Shape1.Visible = True
  loc_E85BA4: Else
  loc_E85BAA:   If (var_86 = 1) Then
  loc_E85BBC:     Me.FGrid2.Visible = False
  loc_E85BD0:     Me.Shape1.Visible = False
  loc_E85BD8:   End If
  loc_E85BD8: End If
  loc_E85BD8: Exit Sub
  loc_E85BD9: var_86.global_52 = 
End Sub

Private Sub Form_Load() '1356FD8
  'Data Table: 54B9E4
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_C8 As Variant
  Dim unk_54BA05 As Connection15
  Dim var_D0 As Variant
  Dim var_F4 As Field20
  loc_13567C8: On Error Goto loc_1356FD1
  loc_13567D2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13567EA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1356805: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1356820: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1356836: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_135684D: Me.LblUser.Left = CDbl(13500)
  loc_1356864: Me.LblUser.Top = CDbl(7800)
  loc_135687B: Me.LblLDt.Top = CDbl(8160)
  loc_1356892: Me.LblLDt.Left = CDbl(13500)
  loc_13568AC: Me.DGItem.Left = CVar(CDbl(&H5A))
  loc_13568C6: Me.DGItem.Top = CVar(CDbl(0))
  loc_13568E1: Me.DGItem.Width = CVar(CDbl(9405))
  loc_13568FE: If (global_56 = MemVar_1F95070 & "BANQ") Then
  loc_1356907:   global_128 = "IBOOK"
  loc_135690E: Else
  loc_1356923:   If (global_56 = MemVar_1F95070 & "ODC") Then
  loc_135692C:     global_128 = "OBOOK"
  loc_1356930:   End If
  loc_1356930: End If
  loc_135693A: Set global_64 = New 
  loc_135694C: Me.CursorLocation = 3
  loc_1356976: var_B4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_135698E: Me.Open CVar(var_B4 & MemVar_1F95070 & "' and Category in('HALBOOK') Order by Description"), CVar(MemVar_1F95044), 3
  loc_13569A8: CVarUnk
  loc_13569AD: VerifyVarObj
  loc_13569B3: Set var_AC = Me.DGVType
  loc_13569B9: LateIdStAd
  loc_13569D1: Set global_84 = New 
  loc_13569E3: Me.DGVType.CursorLocation = 3
  loc_13569F3: If (global_128 = "IBOOK") Then
  loc_1356A14:   var_B0 = "Select DISTINCT H.DocId As Code,convert(varchar(10),H.VNO) As FPNo,H.VNo,H.PartyName,F.Name AS Func_Name,H.City as Cityname FROM HALLBOOK H INNER JOIN FunctionType F ON H.Func_Name=F.Code WHERE H.LogSite_Code='" & MemVar_1F95078
  loc_1356A25:   Me.Open CVar(var_B0 & "' And H.VType='IBOOK' AND H.DOCID NOT IN (SELECT DISTINCT DOCID FROM HALLBOOK1) Order by H.VNO"), CVar(MemVar_1F95044), 3
  loc_1356A33: Else
  loc_1356A51:   var_B0 = "Select DISTINCT H.DocId As Code,convert(varchar(10),H.VNO) As FPNo,H.VNo,H.PartyName,F.Name AS Func_Name,H.City as Cityname FROM HALLBOOK H INNER JOIN FunctionType F ON H.Func_Name=F.Code WHERE H.LogSite_Code='" & MemVar_1F95078
  loc_1356A62:   Me.Open CVar(var_B0 & "' And H.VType='OBOOK' AND H.DOCID NOT IN (SELECT DISTINCT DOCID FROM HALLBOOK1) Order by H.VNO"), CVar(MemVar_1F95044), 3
  loc_1356A6D: End If
  loc_1356A76: CVarUnk
  loc_1356A7B: VerifyVarObj
  loc_1356A81: Set var_AC = Me.DGFPNo
  loc_1356A87: LateIdStAd
  loc_1356A9F: Set global_80 = New 
  loc_1356AB1: Me.DGFPNo.CursorLocation = 3
  loc_1356ADB: var_C8 = CVar("Select H.Code As Code,H.Name As Name From Depart H WHERE H.LogSite_Code='" & MemVar_1F95078 & "' And H.RestType IN ('Banquet') Order by H.Name") 'String
  loc_1356AE5: Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1356AF9: CVarUnk
  loc_1356AFE: VerifyVarObj
  loc_1356B0A: LateIdStAd
  loc_1356B22: Set global_76 = New 
  loc_1356B34: Me.DGHall.CursorLocation = 3
  loc_1356B5D: unk_54BA05.Execute "Select * from Enviro where lOGSite_Code='" & MemVar_1F95078 & "'", var_C8, -1
  loc_1356B68: Set var_88 = Me.DGHall
  loc_1356B8F: If (Me.Recordset15.RecordCount > 0) Then
  loc_1356BAF:   var_D0 = Me.Recordset15.Fields.Item("CatalogLimit")
  loc_1356BD1:   If (var_D0.Value = "Yes") Then
  loc_1356BF9:     var_C8 = CVar("Select DIstinct H.Code As Code,H.Name As Name From CATALOGMAST H WHERE H.LogSite_Code='" & MemVar_1F95078 & "' And H.Category ='Y' Order by H.Name") 'String
  loc_1356C03:     Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1356C1C:     Me.FGrid2.Visible = True
  loc_1356C30:     Me.Shape1.Visible = True
  loc_1356C3B:   Else
  loc_1356C60:     var_C8 = CVar("Select DIstinct H.Code As Code,H.Name As Name From CATALOGMAST H  WHERE H.LogSite_Code='" & MemVar_1F95078 & "' And H.Category <>'Y' OR IsNull(H.Category,'')='' Order by H.Name") 'String
  loc_1356C6A:     Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1356C84:     Me.FGrid2.Visible = False
  loc_1356C98:     Me.Shape1.Visible = False
  loc_1356CA0:   End If
  loc_1356CA0: End If
  loc_1356CA5: Set var_88 = Nothing
  loc_1356CB1: CVarUnk
  loc_1356CB6: VerifyVarObj
  loc_1356CC2: LateIdStAd
  loc_1356CDA: Set global_88 = New 
  loc_1356CEC: Me.DG_Catalog.CursorLocation = 3
  loc_1356D0F: var_B0 = "Select DIstinct S.DocId as SearchCode,S.DocID,LogSite_Code,Site_Code From HAllBook1 S WHERE S.LogSite_Code='" & MemVar_1F95078
  loc_1356D16: var_B4 = var_B0 & "' and S.VTYPE IN(select V_Type From Voucher_Type where NCAt='BBOOK' and RestCode='"
  loc_1356D38: var_C8 = CVar(var_B4 & global_56 & "') AND VType='" & global_128 & "'") 'String
  loc_1356D42: Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1356D8A: Call 0.Method_arg_50 (var_B4, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' And ENAME='", var_C8, -1, Me.DG_Catalog, var_D0, 0, var_F4)
  loc_1356DB1: unk_54BA05.Execute var_E0 & var_B4 & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_1356DB9: var_AC = var_AC.Fields
  loc_1356DC1: 1 = var_D0.Item(global_76)
  loc_1356DC9: -1 = var_F4.Value
  loc_1356DFA: If (var_E0 > 0) Then
  loc_1356E43:   Call 0.Method_arg_50 (var_B4, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_C8, -1, var_AC, var_D0, 0)
  loc_1356E6A:   unk_54BA05.Execute var_F4 & var_B4 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_E0, "SearchCode='"
  loc_1356E72:   0 = var_AC.Fields
  loc_1356E7A:   var_148 = var_D0.Item(1)
  loc_1356E82:    = var_F4.Value
  loc_1356EA1:   Me.Find CStr(var_E0 & "'"), , 
  loc_1356ECD: End If
  loc_1356EDB: Set var_AC = Me.OptCat
  loc_1356EE1: Call 0.Method_Form_Load0 (0, var_D0)
  loc_1356EE9: var_D0.Enabled = False
  loc_1356F03: Set var_AC = Me.OptCat
  loc_1356F09: Call 0.Method_Form_Load0 (1, var_D0)
  loc_1356F11: var_D0.Enabled = False
  loc_1356F34: If (Me.RecordCount > 0) Then
  loc_1356F4B:   If (Me.EOF = &HFF) Then
  loc_1356F54:     Me.MoveLast
  loc_1356F59:   End If
  loc_1356F59: End If
  loc_1356F7C: Call Proc_113_65_FAF664(Proc_5_1_100EC1C("INI", Me))
  loc_1356F99: Set var_AC = Me
  loc_1356F9F: Proc_6_23_DFC5B8(var_AC, 7590)
  loc_1356FB0: Call 0.Method_arg_160 (var_AC, 11940)
  loc_1356FBE: Call 0.Method_arg_164 (var_AC)
  loc_1356FC6: Call Proc_113_55_1446CB4(global_88)
  loc_1356FCB: Call Proc_113_62_19F0900()
  loc_1356FD0: Exit Sub
  loc_1356FD1: ' Referenced from: 13567C8
  loc_1356FD1: Proc_6_60_E63754()
  loc_1356FD6: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3258
  'Data Table: 54B9E4
  Dim var_8C As Label
  loc_ED31B6: Call 0.Method_arg_50 (var_88)
  loc_ED31C8: Me.LblFormCaption.Caption = var_88
  loc_ED31E1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED31ED: Set var_A0 = Me.TopCtrl1
  loc_ED31F3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_ED3200: Set var_8C = Me.TopCtrl1
  loc_ED3206: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_ED3220: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED323B: Call 0.Method_arg_100 (var_B8)
  loc_ED324D: Me.LblFormCaption.Width = var_B8
  loc_ED3255: Exit Sub
  loc_ED3256:  = Record Of arg_6CEB 'Copy battery of vars to single variable
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E882A4
  'Data Table: 54B9E4
  loc_E88237: Set global_80 = Nothing
  loc_E88249: Set global_84 = Nothing
  loc_E8825B: Set global_72 = Nothing
  loc_E8826D: Set global_92 = Nothing
  loc_E8827F: Set global_96 = Nothing
  loc_E88291: Set global_100 = Nothing
  loc_E8829D: global_52 = 0
  loc_E882A0: Exit Sub
End Sub

Private Sub Form_Activate() '1020080
  'Data Table: 54B9E4
  Dim var_9C As String
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  Dim var_AC As Variant
  Dim var_88 As String
  Dim var_110 As String
  loc_101FE82: Call 0.Method_arg_1C0 (var_88)
  loc_101FE98: If (IsNumeric(CVar(var_88)) = &HFF) Then
  loc_101FEB2:   Call 0.Method_arg_1C0 (var_88, "FPNo =", 0)
  loc_101FEBB:   var_9C = 1 & var_88
  loc_101FEC4:   Me.Find var_9C, var_AC, 
  loc_101FED6:   Call 0.Method_arg_1C0 (var_88)
  loc_101FEE9:   Set var_B0 = Me.Txt
  loc_101FEEF:   Call 0.Method_Form_Activate0 (CInt(1), var_B4)
  loc_101FEF7:   var_B4.Text = var_88
  loc_101FF12:   Call Txt_Validate(CInt(1))
  loc_101FF1D:   Call 0.Method_arg_1C4 (vbNullString)
  loc_101FF25: Else
  loc_101FF2B:   Call 0.Method_arg_1C0 (var_88)
  loc_101FF48:   Call 0.Method_arg_1C0 (var_9C, (IsNumeric(CVar(var_88)) = 0))
  loc_101FF79:   If CBool(0 And (Trim(CVar(var_9C)) <> vbNullString)) Then
  loc_101FF82:     Me.Close
  loc_101FF8D:     Call 0.Method_arg_1C0 (var_118)
  loc_101FFA4:     var_AC = CVar(MemVar_1F95044) 'Address
  loc_101FFB0:     var_88 = "Select DIstinct S.DocId as SearchCode,S.DocID,LogSite_Code,Site_Code From HAllBook1 S WHERE S.LogSite_Code='" & MemVar_1F95078
  loc_101FFC8:     var_110 = var_88 & "' and S.VTYPE IN(select V_Type From Voucher_Type where NCAt='BBOOK' and RestCode='" & global_56 & "') AND VType='"
  loc_101FFF1:     Me.Open CVar(var_110 & global_128 & "' AND S.DocId='" & var_118 & "'"), var_AC, 3
  loc_1020023:     Call 0.Method_arg_1C0 (var_88, "SearchCode='", 0, 1)
  loc_102003C:     Me.Find var_AC & var_88 & "'", 1, -1
  loc_1020066:     Proc_5_0_1107AD0(&HFF, Me)
  loc_102006E:     Call Proc_113_62_19F0900(global_88)
  loc_1020079:     Call 0.Method_arg_1C4 (vbNullString)
  loc_102007E:   End If
  loc_102007E: End If
  loc_102007E: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25CB4
  'Data Table: 54B9E4
  loc_E25C99: If (global_52 = &HFF) Then
  loc_E25CA9:   Me.Global.Unload Me
  loc_E25CB1: End If
  loc_E25CB1: Exit Sub
  loc_E25CB2: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E37F28
  'Data Table: 54B9E4
  loc_E37EFC: On Error Goto loc_E37F20
  loc_E37F17: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E37F1F: Exit Sub
  loc_E37F20: ' Referenced from: E37EFC
  loc_E37F20: Proc_6_60_E63754(Shift)
  loc_E37F25: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA17AC
  'Data Table: 54B9E4
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA1747: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_108)) Then
  loc_EA175D:   Me.FGrid.Col = 1
  loc_EA1765: End If
  loc_EA1778: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA178B: Set var_88 = Me.TxtGrid
  loc_EA1791: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA1799: var_BC.Visible = False
  loc_EA17A5: Call Proc_113_66_F29230()
  loc_EA17AA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E687D8
  'Data Table: 54B9E4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68794: Set var_88 = Me.TxtGrid
  loc_E6879A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E687B4: If (var_8C.Visible = 0) Then
  loc_E687CD:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E687D5: End If
  loc_E687D5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE794
  'Data Table: 54B9E4
  loc_DFE78C: Call Proc_113_60_FE1128()
  loc_DFE791: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '12963DC
  'Data Table: 54B9E4
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_F8 As Variant
  Dim var_178 As Variant
  Dim var_198 As Long
  Dim var_128 As Variant
  Dim var_1B8 As Variant
  Dim var_1D0 As Long
  loc_1295DFC: Set var_88 = Me.TopCtrl1
  loc_1295E02: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1295E47: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_1295E50:   Call Form_KeyDown(KeyCode, Shift)
  loc_1295E55: End If
  loc_1295E59: Set var_88 = Me.TopCtrl1
  loc_1295E5F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1295E78: If (CStr() = "Browse") Then
  loc_1295E7B:   Exit Sub
  loc_1295E7C: End If
  loc_1295EF0: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1295F09:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_1295F19:   var_9C = "+{Tab}"
  loc_1295F1F:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1295F29:   KeyCode = 0
  loc_1295F2F: Else
  loc_1295F39:   var_B0 = Me.FGrid.Rows
  loc_1295F86:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1295F9F:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_1295FB5:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_1295FBF:     KeyCode = 0
  loc_1295FC5:   Else
  loc_1295FD9:     var_98 = Me.FGrid.Col
  loc_1295FFC:     var_D4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_129603F:     If (0 And (IsNumeric(CVar(CStr(Me.FGrid.TextMatrix)))) = 0)) Then
  loc_1296052:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_129606C:       Me.FGrid.CellFontSize = CVar(CDbl(&HC))
  loc_1296087:       var_D4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_129608C:       var_F8 = 0
  loc_12960BE:       var_178 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_12960C3:       var_198 = 0
  loc_12960FE:       var_1B8 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1296106:       Set var_1CC = Me.FGrid
  loc_129610C:       LateIdCallSt
  loc_1296135:     End If
  loc_1296135:   End If
  loc_1296135: End If
  loc_129613B: global_150 = KeyCode
  loc_1296161: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1296185: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_129619B:   var_1D0 = CLng(Me.FGrid.Col)
  loc_12961AB:   If (var_1D0 = CLng(1)) Then
  loc_12961C1:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12961D9:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12961DE:     var_128 = vbNullString
  loc_12961E8:     Set var_B4 = Me.FGrid
  loc_12961EE:     LateIdCallSt
  loc_1296219:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1296221:     var_F8 = CVar(CLng(9)) 'Long
  loc_1296226:     var_128 = vbNullString
  loc_1296230:     Set var_A0 = Me.FGrid
  loc_1296236:     LateIdCallSt
  loc_129625B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1296263:     var_F8 = CVar(CLng(3)) 'Long
  loc_1296268:     var_128 = vbNullString
  loc_1296272:     Set var_A0 = Me.FGrid
  loc_1296278:     LateIdCallSt
  loc_129628D:   Else
  loc_1296294:     If (var_1D0 = CLng(3)) Then
  loc_12962B3:       Set var_A0 = Me.FGrid
  loc_12962D7:       LateIdCallSt
  loc_12962EF:       Call Proc_113_70_11548EC(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_12962F7:     Else
  loc_12962FE:       If (var_1D0 = CLng(4)) Then
  loc_129631D:         Set var_A0 = Me.FGrid
  loc_1296341:         LateIdCallSt
  loc_1296359:         Call Proc_113_70_11548EC(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString)
  loc_1296361:       Else
  loc_1296368:         If (var_1D0 = CLng(2)) Then
  loc_129637E:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1296396:           var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_129639B:           var_128 = vbNullString
  loc_12963A5:           Set var_B4 = Me.FGrid
  loc_12963AB:           LateIdCallSt
  loc_12963C3:         End If
  loc_12963C3:       End If
  loc_12963C3:     End If
  loc_12963C3:   End If
  loc_12963C3: End If
  loc_12963C9: If (KeyCode = &HD) Then
  loc_12963D1:   global_152 = 0
  loc_12963D4: End If
  loc_12963D6: KeyCode = 0
  loc_12963D9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10330
  'Data Table: 54B9E4
  loc_E10321: Call FGrid_UnknownEvent_C()
  loc_E1032B: global_152 = 0
  loc_E1032E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '12FFA48
  'Data Table: 54B9E4
  Dim var_A0 As String
  Dim var_A4 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_144 As Variant
  Dim var_1C4 As Long
  Dim var_1D0 As Long
  Dim var_1D4 As Integer
  Dim arg_6CFF As Variant
  loc_12FF34C: Set var_8C = Me.TopCtrl1
  loc_12FF352: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_12FF36B: If (CStr() = "Browse") Then
  loc_12FF36E:   Exit Sub
  loc_12FF36F: End If
  loc_12FF379: If (CLng(KeyCode) <> &HD) Then
  loc_12FF381:   global_152 = &HFF
  loc_12FF384: End If
  loc_12FF38F: Set var_8C = Me.OptCat
  loc_12FF395: Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A4)
  loc_12FF39D: var_A4.Value
  loc_12FF3BC: var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_12FF41E: If ((CVar(CLng(0)) And (IsNumeric(CVar(CStr(Me.FGrid.TextMatrix)))) = &HFF)) Or (CLng(Me.FGrid.ColSel) = &HC)) Then
  loc_12FF421:   Exit Sub
  loc_12FF422: End If
  loc_12FF42D: Set var_8C = Me.OptCat
  loc_12FF433: Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A4)
  loc_12FF43B: var_A4.Value
  loc_12FF451: If (CBool(var_C8) = &HFF) Then
  loc_12FF479:   For var_134 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_134 'Integer
  loc_12FF498:     var_184 = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_12FF4A0:     var_1A4 = CVar(CLng(0)) 'Long
  loc_12FF4C9:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_12FF4D1:     var_E8 = CVar(CLng(0)) 'Long
  loc_12FF4EB:     var_B8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_12FF4FA:     var_144 = CVar(CLng(var_86)) 'Long
  loc_12FF54A:     If (CVar(CLng(0)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(Val(CStr(Me.FGrid2.TextMatrix)))))) Then
  loc_12FF54D:       GoTo loc_12FF558
  loc_12FF550:     End If
  loc_12FF553:   Next var_134 'Integer
  loc_12FF558:   ' Referenced from: 12FF54D
  loc_12FF56D:   var_A0 = CStr(CLng(Me.FGrid.Row))
  loc_12FF584:   If (CDbl(Val(var_A0)) >= CDbl(var_86)) Then
  loc_12FF59A:     var_1C4 = CLng(Me.FGrid.Col)
  loc_12FF5AA:     If (var_1C4 = CLng(1)) Then
  loc_12FF5B1:       Set var_FC = Me.FGrid
  loc_12FF5D9:       Set var_A4 = var_FC
  loc_12FF5EB:       Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0)
  loc_12FF609:       Set var_8C = Me.TxtGrid
  loc_12FF60F:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_A0, 0)
  loc_12FF617:       KeyCode = var_A4.Text
  loc_12FF630:       If (Len(var_A0) <= 1) Then
  loc_12FF63F:         Set var_8C = Me.TxtGrid
  loc_12FF645:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_A0)
  loc_12FF64D:         0 = var_A4.Text
  loc_12FF65E:         Set var_A8 = Me.TxtGrid
  loc_12FF664:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_FC)
  loc_12FF66C:         var_FC.Text = var_A0
  loc_12FF67F:       End If
  loc_12FF68B:       Set var_8C = Me.TxtGrid
  loc_12FF691:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12FF6AB:       Set var_A8 = Me.TxtGrid
  loc_12FF6B1:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_FC)
  loc_12FF6B9:       var_FC.SelStart = Len(var_A4.Text)
  loc_12FF6CF:     Else
  loc_12FF6D6:       If Not (var_1C4 = CLng(3)) Then
  loc_12FF6E0:         If (var_1C4 = CLng(4)) Then
  loc_12FF6E3:         End If
  loc_12FF721:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_12FF736:       Else
  loc_12FF73D:         If (var_1C4 = CLng(2)) Then
  loc_12FF77E:           Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode)
  loc_12FF790:         End If
  loc_12FF790:       End If
  loc_12FF790:     End If
  loc_12FF790:   End If
  loc_12FF793: Else
  loc_12FF7A6:   var_1D0 = CLng(Me.FGrid.Col)
  loc_12FF7B6:   If (var_1D0 = CLng(1)) Then
  loc_12FF7BD:     Set var_FC = Me.FGrid
  loc_12FF7E1:     var_A0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_12FF7EA:     var_1D4 = Asc(var_A0)
  loc_12FF80E:     Set var_A4 = var_FC
  loc_12FF820:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0, var_1D4, 0)
  loc_12FF848:     Set var_8C = Me.TxtGrid
  loc_12FF84E:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_A0, var_1D4, var_1D0)
  loc_12FF856:     0 = var_A4.Text
  loc_12FF86F:     If (Len(var_A0) <= 1) Then
  loc_12FF87E:       Set var_8C = Me.TxtGrid
  loc_12FF884:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_A0, &HFF)
  loc_12FF88C:       KeyCode = var_A4.Text
  loc_12FF89D:       Set var_A8 = Me.TxtGrid
  loc_12FF8A3:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_FC, var_A0)
  loc_12FF8AB:       var_FC.Text = 0
  loc_12FF8BE:     End If
  loc_12FF8CA:     Set var_8C = Me.TxtGrid
  loc_12FF8D0:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12FF8EA:     Set var_A8 = Me.TxtGrid
  loc_12FF8F0:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_FC)
  loc_12FF8F8:     var_FC.SelStart = Len(var_A4.Text)
  loc_12FF90E:   Else
  loc_12FF915:     If Not (var_1D0 = CLng(3)) Then
  loc_12FF91F:       If (var_1D0 = CLng(4)) Then
  loc_12FF922:       End If
  loc_12FF935:       var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_12FF93D:       var_E8 = CVar(CLng(1)) 'Long
  loc_12FF97F:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_12FF982:         Exit Sub
  loc_12FF983:       End If
  loc_12FF9C1:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_12FF9D6:     Else
  loc_12FF9DD:       If (var_1D0 = CLng(2)) Then
  loc_12FFA1E:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode)
  loc_12FFA30:       End If
  loc_12FFA30:     End If
  loc_12FFA30:   End If
  loc_12FFA30: End If
  loc_12FFA3A: If (CLng(KeyCode) <> &HD) Then
  loc_12FFA42:   global_152 = &HFF
  loc_12FFA45: End If
  loc_12FFA45: Exit Sub
  loc_12FFA46: arg_6CFF = CVar(global_152) 'Integer
End Sub

Private Sub FGrid_UnknownEvent_D 'FF30D0
  'Data Table: 54B9E4
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF2EF0: Set var_90 = Me.TopCtrl1
  loc_FF2EF6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_FF2F0F: If (CStr() = "Browse") Then
  loc_FF2F12:   Exit Sub
  loc_FF2F13: End If
  loc_FF2F30: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF2F33:   Exit Sub
  loc_FF2F34: End If
  loc_FF2F45: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FF2F67:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF2FA1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF2FC3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF2FD9:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF2FE2:         Set var_118 = Me.FGrid
  loc_FF2FFD:       Else
  loc_FF3010:         Me.FGrid.Rows = 1
  loc_FF3036:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FF303E:         Set var_118 = Me.FGrid
  loc_FF306B:         Me.FGrid.FixedRows = 1
  loc_FF3073:       End If
  loc_FF3073:       Call Proc_113_70_11548EC(FGrid.DispID_10000, var_A0)
  loc_FF3078:       Call Proc_113_68_1178BD0(FGrid.DispID_10000)
  loc_FF307D:     End If
  loc_FF3080:   Else
  loc_FF30A1:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF30B1:   End If
  loc_FF30B5:   Set var_90 = Me.FGrid
  loc_FF30C6: End If
  loc_FF30CB: Set var_8C = Nothing
  loc_FF30CE: Exit Sub
  loc_FF30CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'DFF63C
  'Data Table: 54B9E4
  Dim .global_27756 As Long
  loc_DFF634: Call Proc_113_57_11EA19C()
  loc_DFF639: Exit Sub
  loc_DFF63A: .global_27756 = 
End Sub

Private Sub FGrid_UnknownEvent_15 'E46548
  'Data Table: 54B9E4
  Dim var_8C As TextBox
  loc_E4651C: Call Proc_113_66_F29230()
  loc_E4652C: Set var_88 = Me.TxtGrid
  loc_E46532: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4653A: var_8C.Visible = False
  loc_E46546: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FF8318
  'Data Table: 54B9E4
  Dim var_90 As Variant
  Dim var_8C As String
  Dim var_98 As Variant
  Dim var_DC As String
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_118 As TextBox
  loc_FF8140: On Error Goto loc_FF8310
  loc_FF8166: Call Proc_113_65_FAF664(Proc_5_1_100EC1C("ADD", Me))
  loc_FF8171: Call Proc_113_64_FF6F20(global_88)
  loc_FF8183: Me.LblUser.Caption = vbNullString
  loc_FF8198: Me.LblLDt.Caption = vbNullString
  loc_FF81A5: var_8C = CStr(MemVar_1F950EC)
  loc_FF81B3: Set var_90 = Me.Txt
  loc_FF81B9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_FF81C1: var_98.Text = var_8C
  loc_FF81DB: Set var_90 = Me.Txt
  loc_FF81E1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_FF81E9: var_98.SetFocus
  loc_FF81FB: Call 0.Method_arg_1C0 (var_8C)
  loc_FF8218: Call 0.Method_arg_1C0 (var_AC, (IsNumeric(CVar(var_8C)) = 0))
  loc_FF822E: var_DC = vbNullString
  loc_FF8249: If CBool(var_98 And (Trim(CVar(var_AC)) <> var_DC)) Then
  loc_FF8263:   Call 0.Method_arg_1C0 (var_8C, "CODE ='", 0)
  loc_FF827C:   Me.Find 1 & var_8C & "'", var_DC, 
  loc_FF82C7:   Set var_114 = Me.Txt
  loc_FF82CD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_118)
  loc_FF82D5:   var_118.Text = CStr(Me.Fields.Item("FPNo").Value)
  loc_FF82F7:   Call Txt_Validate(CInt(1))
  loc_FF8302:   Call 0.Method_arg_1C4 (vbNullString)
  loc_FF8307: End If
  loc_FF830C: Set var_88 = Nothing
  loc_FF830F: Exit Sub
  loc_FF8310: ' Referenced from: FF8140
  loc_FF8310: Proc_6_60_E63754(0)
  loc_FF8315: Exit Sub
  loc_FF8316: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA16DC
  'Data Table: 54B9E4
  loc_EA1660: On Error Goto loc_EA16D6
  loc_EA169A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA169D:   Call Proc_113_64_FF6F20()
  loc_EA16C5:   Call Proc_113_65_FAF664(Proc_5_1_100EC1C("INI", Me))
  loc_EA16D0:   Call Proc_113_62_19F0900(global_88)
  loc_EA16D5: End If
  loc_EA16D5: Exit Sub
  loc_EA16D6: ' Referenced from: EA1660
  loc_EA16D6: Proc_6_60_E63754()
  loc_EA16DB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1205A1C
  'Data Table: 54B9E4
  Dim var_128 As Integer
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_9C As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim unk_54BA05 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  loc_12055A6: var_128 = 0
  loc_12055F7: var_EC = "SELECT Count(*) FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1205605: unk_54BA05.Execute CStr(var_EC), var_110, -1
  loc_120560D: var_114 = var_114.Fields
  loc_1205615: var_128 = var_118.Item(var_118)
  loc_120561D: var_12C = var_12C.Value
  loc_120564A: If (var_13C > 0) Then
  loc_1205674:   MsgBox(CVar("Can not delete this booking." & vbCrLf & "Bill Generated!"), &H10, "Booking...", var_EC, var_110)
  loc_1205687:   Exit Sub
  loc_1205688: End If
  loc_1205688: On Error Goto loc_12059CB
  loc_12056C2: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_EC, var_110) = 6) Then
  loc_12056CB:   var_128 = 0
  loc_120571C:   var_EC = "SELECT Count(*) From PayChargeH Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_120572A:   unk_54BA05.Execute CStr(var_EC), var_110, -1
  loc_1205732:   var_114 = var_114.Fields
  loc_120573A:   var_128 = var_118.Item(var_118)
  loc_1205742:   var_12C = var_12C.Value
  loc_120576F:   If (var_13C > 0) Then
  loc_1205799:     MsgBox(CVar("Record not deleted." & vbCrLf & "Please check Paycharge detail."), &H10, "Deleation Error...", var_EC, var_110)
  loc_12057AC:     Exit Sub
  loc_12057AD:   End If
  loc_12057B6:   unk_54BA05.BeginTrans var_170
  loc_12057CC:   var_16C = Me.Bookmark 'Variant
  loc_12057FF:   var_9C = Me.Fields.Item("SearchCode")
  loc_1205818:   var_EC = "Delete From HallBook1 Where Docid='" & var_9C.Value & "'" 
  loc_1205826:   unk_54BA05.Execute CStr(var_EC), var_110, -1
  loc_1205850:   Set var_88 = Me.Txt
  loc_1205856:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H22), var_9C, var_178)
  loc_120585E:   var_114 = var_9C.Text
  loc_1205868:   var_1AC = 0
  loc_120587B:   var_1A4 = 0
  loc_1205886:   var_1A0 = 0
  loc_1205899:   var_198 = 0
  loc_12058A4:   var_194 = 0
  loc_12058B7:   var_18C = 0
  loc_12058F6:   var_F0 = "HallBook1"
  loc_12058FF:   Proc_154_5_10E3BD4(MemVar_1F95044, var_F0, "DocId", &HC8, var_178, 0, 0, 0)
  loc_120592A:   unk_54BA05.CommitTrans
  loc_120593A:   Me.Requery -1
  loc_120594A:   Me.Requery -1
  loc_120596A:   If (CVar(Me.RecordCount) >= var_16C) Then
  loc_1205977:     Me.Bookmark = var_16C
  loc_120597F:   Else
  loc_1205993:     If (Me.EOF = 0) Then
  loc_120599C:       Me.MoveLast
  loc_12059A1:     End If
  loc_12059A1:   End If
  loc_12059A1:   Call Proc_113_62_19F0900(var_18C, 0, var_194, var_198)
  loc_12059C2:   Proc_5_0_1107AD0(&HFF, Me, global_88, 0)
  loc_12059CA: End If
  loc_12059CA: Exit Sub
  loc_12059CB: ' Referenced from: 1205688
  loc_12059D1: unk_54BA05.RollbackTrans
  loc_12059DE: Set var_88 = Err()
  loc_12059E4: Call 0.Method_arg_2C (var_F0, 0, var_1A0)
  loc_1205A05: MsgBox(CVar(var_F0), &H10, " Deletion Message", var_EC, var_110)
  loc_1205A18: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '106D184
  'Data Table: 54B9E4
  Dim var_128 As Integer
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_EC As Variant
  Dim unk_54BA05 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  loc_106CF10: On Error Goto loc_106D17E
  loc_106CF19: var_128 = 0
  loc_106CF51: var_9C = Me.Fields.Item("SearchCode")
  loc_106CF6A: var_EC = "SELECT Count(*) FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='" & var_9C.Value & "'" 
  loc_106CF78: unk_54BA05.Execute CStr(var_EC), var_110, -1
  loc_106CF80: var_114 = var_114.Fields
  loc_106CF88: var_128 = var_118.Item(var_118)
  loc_106CF90: var_12C = var_12C.Value
  loc_106CFBD: If (var_13C > 0) Then
  loc_106CFE7:   MsgBox(CVar("Can not modify this booking." & vbCrLf & "Bill Generated!"), &H10, "Booking...", var_EC, var_110)
  loc_106CFFA:   Exit Sub
  loc_106CFFB: End If
  loc_106D01E: Call Proc_113_65_FAF664(Proc_5_1_100EC1C("EDIT", Me), global_88)
  loc_106D034: Set var_88 = Me.OptCat
  loc_106D03A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_106D042: var_9C.Value
  loc_106D058: If (CBool(var_13C) = &HFF) Then
  loc_106D05B:   Call Proc_113_62_19F0900()
  loc_106D060: End If
  loc_106D06D: Set var_88 = Me.Txt
  loc_106D073: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_106D07B: var_9C.Enabled = False
  loc_106D094: Set var_88 = Me.Txt
  loc_106D09A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_9C)
  loc_106D0A2: var_9C.Enabled = False
  loc_106D0BB: Set var_88 = Me.Txt
  loc_106D0C1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_9C)
  loc_106D0C9: var_9C.Enabled = False
  loc_106D0E0: Set var_88 = Me.Txt
  loc_106D0E6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_106D0EE: var_9C.SetFocus
  loc_106D105: Set var_88 = Me.OptCat
  loc_106D10B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_106D113: var_9C.Value
  loc_106D129: If (CBool(var_9C) = &HFF) Then
  loc_106D139:   Set var_88 = Me.Txt
  loc_106D13F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H2D), var_9C)
  loc_106D147:   var_9C.Enabled = False
  loc_106D153: End If
  loc_106D160: Me.LblUser.Caption = vbNullString
  loc_106D175: Me.LblLDt.Caption = vbNullString
  loc_106D17D: Exit Sub
  loc_106D17E: ' Referenced from: 106CF10
  loc_106D17E: Proc_6_60_E63754()
  loc_106D183: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19734
  'Data Table: 54B9E4
  loc_E19729: Me.Global.Unload Me
  loc_E19731: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE4A44
  'Data Table: 54B9E4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EE4994: On Error Goto loc_EE4A3B
  loc_EE49AE: If (Me.RecordCount <= 0) Then
  loc_EE49B7:   var_B8 = "Information"
  loc_EE49D2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE49E2:   Exit Sub
  loc_EE49E3: End If
  loc_EE49EA: var_10C = "SELECT HallBook.dOCID,HallBook.VNo, HallBook.Vdate, HallBook.VTime, HallBook.PartyName, HallBook.Add1, HallBook.Add2, HallBook.City, HallBook.ContactNo_Res, HallBook.ContactNo_Off, FunctionType.Name, MarketSeg.Name, BussSource.Name" & " FROM ((HallBook LEFT JOIN FunctionType ON HallBook.Func_Name = FunctionType.Code) LEFT JOIN MarketSeg ON HallBook.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON HallBook.BussSource = BussSource.Code WHERE HALLBOOK.LOGSITE_CODE='"
  loc_EE4A09: MemVar_1F950E4 = var_10C & MemVar_1F95078 & "' AND HallBook.VType='" & global_128 & "'"
  loc_EE4A1E: MemVar_1F95120 = Me
  loc_EE4A35: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE4A3A: Exit Sub
  loc_EE4A3B: ' Referenced from: EE4994
  loc_EE4A3B: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EE4A40: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E38288
  'Data Table: 54B9E4
  loc_E38278: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38280: Call Proc_113_62_19F0900(global_88)
  loc_E38285: Exit Sub
  loc_E38286: Set arg_6C00 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38348
  'Data Table: 54B9E4
  Dim arg_6CFF As Double
  loc_E38338: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38340: Call Proc_113_62_19F0900(global_88)
  loc_E38345: Exit Sub
  loc_E38346: arg_6CFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E383A8
  'Data Table: 54B9E4
  loc_E38398: Proc_5_0_1107AD0(&HFF, Me)
  loc_E383A0: Call Proc_113_62_19F0900(global_88)
  loc_E383A5: Exit Sub
  loc_E383A6: Set arg_6C00 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E38408
  'Data Table: 54B9E4
  loc_E383F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38400: Call Proc_113_62_19F0900(global_88)
  loc_E38405: Exit Sub
  loc_E38406: Set arg_6C00 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '14A4834
  'Data Table: 54B9E4
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_EC As String
  Dim var_F4 As Variant
  Dim unk_54BA05 As Connection15
  Dim var_D0 As Recordset15
  Dim var_110 As Variant
  Dim var_F0 As Fields15
  Dim var_120 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_B8 As Double
  Dim var_CC As Recordset15
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_A8 As Recordset15
  Dim var_138 As Variant
  Dim var_15A As Integer
  Dim var_C8 As Recordset15
  Dim var_124 As Variant
  Dim var_1D4 As Variant
  Dim var_1AC As Variant
  Dim var_1D8 As Field20
  loc_14A3BE0: On Error Goto loc_14A482D
  loc_14A3BEA: var_E4 = "Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,HB1.TaxPer AS LineTaxPer,HB1.TaxAmt, " & "HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,HB1.Remarks,HB1.Total As LineTotal,I.name As IName,ItemGrp.Name As ItemGrpName "
  loc_14A3BF8: var_EC = var_E4 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "INNER Join ItemMast I on HB1.Item=I.Code) Inner Join ItemGrp On ItemGrp.Code=I.ItemGroup "
  loc_14A3C10: Set var_F0 = Me.Txt
  loc_14A3C16: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_F4)
  loc_14A3C2E: var_94 = var_EC & "Where HB.DocID='" & var_F4.Text & "'"
  loc_14A3C65: Set var_F0 = Me.Txt
  loc_14A3C6B: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_F4, var_E4, "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_14A3C73: var_120 = var_F4.Text
  loc_14A3C7C: var_E8 = -1 & var_E4
  loc_14A3C8C: unk_54BA05.Execute var_E4 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "'", var_124, 
  loc_14A3C97: Set var_C8 = var_124
  loc_14A3CCD: Set var_F0 = Me.Txt
  loc_14A3CD3: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_F4, var_E4, "Select AmtCr,PayType,VNo,VDate FROM PayChargeH Where VType='AD' AND ContraDocId='")
  loc_14A3CDB: var_120 = var_F4.Text
  loc_14A3CE4: var_E8 = -1 & var_E4
  loc_14A3CF4: unk_54BA05.Execute var_E4 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "'", var_124, 
  loc_14A3CFF: Set var_D0 = var_124
  loc_14A3D2B: If (var_D0.RecordCount > 0) Then
  loc_14A3D56:   var_C0 = Proc_6_38_E69628(CVar(var_D0.Fields.Item("VNo")))
  loc_14A3D8E:   var_C4 = "& " & Proc_6_38_E69628(CVar(var_D0.Fields.Item("VDate")))
  loc_14A3DC7:   Proc_6_47_EF6560(var_138, CVar(var_D0.Fields.Item("AmtCr")))
  loc_14A3DCF:   var_158 = (CVar(var_B8) + var_138)
  loc_14A3DD4:   var_B8 = CSng(var_158)
  loc_14A3E0B:   var_BC = Proc_6_38_E69628(CVar(var_D0.Fields.Item("PayType")))
  loc_14A3E17:   var_D0.MoveNext
  loc_14A3E1C:   ' Referenced from: 14A3F8D
  loc_14A3E2B:   If Not(var_D0.EOF) Then
  loc_14A3E5B:     Proc_6_47_EF6560(var_138, CVar(var_D0.Fields.Item("AmtCr")))
  loc_14A3E63:     var_158 = (CVar(var_B8) + var_138)
  loc_14A3E68:     var_B8 = CSng(var_158)
  loc_14A3EB0:     If (var_B8 <> Proc_6_38_E69628(CVar(var_D0.Fields.Item("PayType")), var_BC)) Then
  loc_14A3EE9:       var_BC = var_B8 & Proc_6_38_E69628(CVar(var_D0.Fields.Item("PayType")), var_BC & ", ")
  loc_14A3F2F:       var_C0 = var_C0 & ", " & Proc_6_38_E69628(CVar(var_D0.Fields.Item("VNo")))
  loc_14A3F46:       var_E4 = var_C4 & ", "
  loc_14A3F60:       var_F4 = var_D0.Fields.Item("VDate")
  loc_14A3F75:       var_C4 = var_E4 & Proc_6_38_E69628(CVar(var_F4))
  loc_14A3F85:     End If
  loc_14A3F88:     var_D0.MoveNext
  loc_14A3F8D:     GoTo loc_14A3E1C
  loc_14A3F90:   End If
  loc_14A3F93: Else
  loc_14A3F9C:   var_B8 = 0
  loc_14A3FA2:   var_BC = vbNullString
  loc_14A3FA5: End If
  loc_14A3FC3: Set var_F0 = Me.Txt
  loc_14A3FC9: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_F4, var_E4, "Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_14A3FD1: var_120 = var_F4.Text
  loc_14A3FDA: var_E8 = -1 & var_E4
  loc_14A3FEA: unk_54BA05.Execute Proc_6_38_E69628(CVar(var_F4)) & "'", var_124, var_B8
  loc_14A3FF5: Set var_CC = var_124
  loc_14A4021: If (var_CC.RecordCount > 0) Then
  loc_14A4024:   ' Referenced from: 14A40BF
  loc_14A4033:   If Not(var_CC.EOF) Then
  loc_14A404C:     var_120 = vbNullString
  loc_14A4061:     var_158 = IIf((var_B0 = vbNullString), var_120, ",")
  loc_14A4069:     var_18C = CVar(var_B0) & var_158 
  loc_14A407F:     var_F0 = var_CC.Fields
  loc_14A4087:     var_F4 = var_F0.Item("VenuName")
  loc_14A409C:     var_B0 = CStr(var_18C & var_F4.Value)
  loc_14A40BA:     var_CC.MoveNext
  loc_14A40BF:     GoTo loc_14A4024
  loc_14A40C2:   End If
  loc_14A40C2: End If
  loc_14A40CA: If (var_94 = vbNullString) Then
  loc_14A40CD:   Exit Sub
  loc_14A40CE: End If
  loc_14A40E4: unk_54BA05.Execute var_94, var_120, -1
  loc_14A40EF: Set var_A8 = var_F0
  loc_14A40FE: var_128 = var_A8.RecordCount
  loc_14A410C: If (var_128 <= 0) Then
  loc_14A4115:   Call 0.Method_arg_50 (var_E4)
  loc_14A4136:   MsgBox("** No Records Found to Print **", &H40, CVar(var_E4), var_158, var_18C)
  loc_14A4146:   Exit Sub
  loc_14A4147: End If
  loc_14A415D: Set var_F0 = var_A8 
  loc_14A4169: var_15A = CreateFieldDefFile(var_F0, MemVar_1F950B4 & "\FuncProspect.ttx")
  loc_14A4173: Set var_A8 = var_F0
  loc_14A4179: var_110 = CVar(var_15A) 'Integer
  loc_14A417C: var_A4 = var_110 'Variant
  loc_14A4198: var_E4 = MemVar_1F950B4 & "\FuncProspect.RPT"
  loc_14A41A1: Call 0.Method_arg_1C (var_E4, var_110, var_F0)
  loc_14A41AC: MemVar_1F951E8 = var_F0
  loc_14A41C7: Call 0.Method_arg_90 (var_F0, var_128, var_AA, 1)
  loc_14A41CF: Call 0.Method_arg_24 (var_15A, &HFF)
  loc_14A41DB: For var_1C0 =  To CInt(var_128): var_F0 = var_1C0 'Integer
  loc_14A41F4:   Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A41FC:   Call 0.Method_arg_20 (var_F4)
  loc_14A4204:   Call 0.Method_arg_30 (var_E4)
  loc_14A421A:   var_1D0 = Ucase(CVar(var_E4)) 'Variant
  loc_14A4233:   If (var_1D0 = "FDATE") Then
  loc_14A428C:     Call 0.Method_arg_90 (var_124, CLng(var_AA))
  loc_14A4294:     Call 0.Method_arg_20 (var_1D4)
  loc_14A429C:     Call 0.Method_arg_38 (CStr("'" & CDate(CDate(var_C8.Fields.Item("FromDate").Value)) & "'"))
  loc_14A42BB:   Else
  loc_14A42C6:     If (var_1D0 = "FTIME") Then
  loc_14A42E0:       var_F0 = var_C8.Fields
  loc_14A42E8:       var_F4 = var_F0.Item("FromTime")
  loc_14A42FC:       var_16C = " - "
  loc_14A4317:       var_124 = var_C8.Fields
  loc_14A431F:       var_1D4 = var_124.Item("ToTime")
  loc_14A4327:       var_18C = var_1D4.Value
  loc_14A432F:       var_1AC = "'" & var_F4.Value & CDate(CDate(var_C8.Fields.Item("FromDate").Value)) & var_18C 
  loc_14A4350:       Call 0.Method_arg_90 (var_1D8, CLng(var_AA))
  loc_14A4358:       Call 0.Method_arg_20 (var_1DC)
  loc_14A4360:       Call 0.Method_arg_38 (CStr(var_1AC & "'"))
  loc_14A4389:     Else
  loc_14A4394:       If (var_1D0 = "VENUENAME") Then
  loc_14A43B8:         Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A43C0:         Call 0.Method_arg_20 (var_F4)
  loc_14A43C8:         Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_14A43DE:       Else
  loc_14A43E9:         If (var_1D0 = "TITLE") Then
  loc_14A43FF:           Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A4407:           Call 0.Method_arg_20 (var_F4)
  loc_14A440F:           Call 0.Method_arg_38 ("'FUNCTION PROSPECTUS'")
  loc_14A441E:         Else
  loc_14A4429:           If (var_1D0 = "FDAY") Then
  loc_14A448E:             Call 0.Method_arg_90 (var_124, CLng(var_AA))
  loc_14A4496:             Call 0.Method_arg_20 (var_1D4)
  loc_14A449E:             Call 0.Method_arg_38 ("'" & WeekdayName(CLng(Weekday(CVar(var_C8.Fields.Item("FromDate")), 1)), 0, 0) & "'")
  loc_14A44BF:           Else
  loc_14A44E1:             If (var_1D0 = Ucase("FunctionName")) Then
  loc_14A44EF:               var_19C = 0
  loc_14A4505:               var_148 = "SELECT Name FROM FunctionType WHERE Code='"
  loc_14A451C:               var_F0 = var_A8.Fields
  loc_14A4524:               var_F4 = var_F0.Item("Func_Name")
  loc_14A4538:               var_16C = "'"
  loc_14A454B:               unk_54BA05.Execute CStr(var_148 & var_F4.Value & var_16C), var_18C, -1
  loc_14A4553:               var_124 = var_124.Fields
  loc_14A455B:               var_19C = var_1D4.Item(var_1D4)
  loc_14A4563:               var_1D8 = var_1D8.Value
  loc_14A458C:               Call 0.Method_arg_90 (var_1DC, CLng(var_AA), var_210)
  loc_14A4594:               Call 0.Method_arg_20 (CStr(var_1AC & var_1AC & "'"))
  loc_14A459C:               Call 0.Method_arg_38 ("'")
  loc_14A45CD:             Else
  loc_14A45EF:               If (var_1D0 = Ucase("Advance")) Then
  loc_14A4618:                 Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A4620:                 Call 0.Method_arg_20 (var_F4)
  loc_14A4628:                 Call 0.Method_arg_38 ("'" & CStr(var_B8) & "'")
  loc_14A4640:               Else
  loc_14A4662:                 If (var_1D0 = Ucase("PayType")) Then
  loc_14A4686:                   Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A468E:                   Call 0.Method_arg_20 (var_F4)
  loc_14A4696:                   Call 0.Method_arg_38 ("'" & var_BC & "'")
  loc_14A46AC:                 Else
  loc_14A46CE:                   If (var_1D0 = Ucase("aVNo")) Then
  loc_14A46F2:                     Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A46FA:                     Call 0.Method_arg_20 (var_F4)
  loc_14A4702:                     Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_14A4718:                   Else
  loc_14A473A:                     If (var_1D0 = Ucase("aVDate")) Then
  loc_14A4744:                       var_E4 = "'" & var_C4
  loc_14A475E:                       Call 0.Method_arg_90 (var_F0, CLng(var_AA))
  loc_14A4766:                       Call 0.Method_arg_20 (var_F4)
  loc_14A476E:                       Call 0.Method_arg_38 (var_E4 & "'")
  loc_14A4781:                     End If
  loc_14A4781:                   End If
  loc_14A4781:                 End If
  loc_14A4781:               End If
  loc_14A4781:             End If
  loc_14A4781:           End If
  loc_14A4781:         End If
  loc_14A4781:       End If
  loc_14A4781:     End If
  loc_14A4781:   End If
  loc_14A4784: Next var_1C0 'Integer
  loc_14A47A2: Call 0.Method_arg_64 (var_F0, CVar(var_A8))
  loc_14A47AA: Call 0.Method_arg_2C (var_148)
  loc_14A47B8: Call 0.Method_arg_150 (var_16C)
  loc_14A47C3: Call 0.Method_arg_50 (var_E4)
  loc_14A47CD: Set var_F4 = Nothing
  loc_14A47E7: Set var_F0 = MemVar_1F951E8 
  loc_14A47F3: Proc_6_99_1484404(var_F0, 0, var_E4)
  loc_14A47FE: MemVar_1F951E8 = var_F0
  loc_14A4811: Set var_A8 = Nothing
  loc_14A4819: Set var_C8 = Nothing
  loc_14A4821: Set var_CC = Nothing
  loc_14A4829: Set var_D0 = Nothing
  loc_14A482C: Exit Sub
  loc_14A482D: ' Referenced from: 14A3BE0
  loc_14A482D: Proc_6_60_E63754(&HFF)
  loc_14A4832: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E54554
  'Data Table: 54B9E4
  Dim Me As Recordset15
  loc_E5451F: If Not((global_72 Is Nothing)) Then
  loc_E5452D:   Me.Requery -1
  loc_E54532: End If
  loc_E5453D: Me.Requery -1
  loc_E5454D: Me.Requery -1
  loc_E54552: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '18697E4
  'Data Table: 54B9E4
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_A4 As Variant
  Dim var_11C As Variant
  Dim var_A0 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_8A As Variant
  Dim unk_54BA05 As Connection15
  Dim var_150 As String
  Dim var_200 As Variant
  Dim var_210 As Variant
  Dim var_220 As Variant
  Dim var_254 As Variant
  Dim var_148 As Double
  Dim var_294 As Variant
  Dim var_EC As Variant
  Dim var_A8 As Variant
  Dim var_1FC As Variant
  Dim var_284 As Variant
  Dim var_156 As Integer
  Dim var_2FC As TextBox
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_314 As MSHFlexGrid
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_358 As Variant
  Dim var_250 As Variant
  Dim var_3BC As MSHFlexGrid
  Dim var_9A4 As Double
  Dim var_420 As Variant
  Dim var_440 As Variant
  Dim var_454 As Variant
  Dim var_464 As Variant
  Dim var_9AC As Double
  Dim var_4D8 As Variant
  Dim var_4F8 As Variant
  Dim var_50C As MSHFlexGrid
  Dim var_520 As String
  Dim var_9B4 As Double
  Dim var_570 As Variant
  Dim var_590 As Variant
  Dim var_5A4 As Variant
  Dim var_9BC As Double
  Dim var_628 As Variant
  Dim var_648 As Variant
  Dim var_65C As MSHFlexGrid
  Dim var_9C4 As Double
  Dim var_6F4 As Variant
  Dim var_704 As Variant
  Dim var_788 As MSHFlexGrid
  Dim var_9CC As Double
  Dim var_2A8 As String
  Dim var_2AC As String
  Dim var_2B4 As String
  Dim var_2BC As String
  Dim var_2CC As String
  Dim var_2E0 As String
  Dim var_2EC As String
  Dim var_2F0 As String
  Dim var_FC As Variant
  Dim var_1AC As Variant
  Dim var_334 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_4A8 As Variant
  Dim var_540 As Variant
  Dim var_618 As Variant
  Dim var_690 As Variant
  Dim var_724 As Variant
  Dim var_88C As Variant
  Dim var_914 As Variant
  Dim var_2F4 As TextBox
  Dim var_C28 As Double
  Dim var_890 As TextBox
  Dim var_C30 As Double
  Dim var_9EC As TextBox
  Dim var_C38 As Double
  Dim var_C40 As Double
  Dim var_A1C As TextBox
  Dim var_C48 As Double
  Dim var_A34 As TextBox
  Dim var_A5C As TextBox
  Dim var_A70 As TextBox
  Dim var_A98 As TextBox
  Dim var_AAC As TextBox
  Dim var_AD8 As TextBox
  Dim var_AEC As TextBox
  Dim var_B00 As TextBox
  Dim var_B14 As TextBox
  Dim var_B28 As TextBox
  Dim var_B3C As TextBox
  Dim var_B50 As TextBox
  Dim var_C50 As Double
  Dim var_B68 As TextBox
  Dim var_C58 As Double
  Dim var_B80 As TextBox
  Dim var_C60 As Double
  Dim var_B98 As TextBox
  Dim var_C68 As Double
  Dim var_BD0 As TextBox
  Dim var_BDC As TextBox
  Dim var_BE8 As TextBox
  Dim var_BF4 As TextBox
  Dim var_C00 As TextBox
  Dim var_C0C As TextBox
  Dim var_2B0 As String
  Dim var_2E4 As String
  Dim var_300 As String
  Dim var_9E0 As String
  Dim var_A2C As String
  Dim var_A7C As String
  Dim var_B20 As String
  Dim var_B78 As String
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  loc_1867554: On Error Goto loc_18697CA
  loc_1867562: Set var_A0 = Me.Txt
  loc_1867568: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1867591: If (Proc_6_27_EA61EC(var_A4, "Voucher Date") = 0) Then
  loc_1867594:   Exit Sub
  loc_1867595: End If
  loc_18675A0: Set var_A0 = Me.Txt
  loc_18675A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_18675CF: If (Proc_6_27_EA61EC(var_A4, "Voucher No") = 0) Then
  loc_18675D2:   Exit Sub
  loc_18675D3: End If
  loc_18675DE: Set var_A0 = Me.Txt
  loc_18675E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_18675F5: Set var_A8 = var_A4
  loc_186760D: If (Proc_6_27_EA61EC(var_A8, "Party name") = 0) Then
  loc_1867610:   Exit Sub
  loc_1867611: End If
  loc_1867615: Set var_A0 = Me.TopCtrl1
  loc_186761B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A4)
  loc_1867634: If (CStr() = "Add") Then
  loc_186766A:   var_FC = Left(Format(Time, "HH:mm"), 5)
  loc_186767C:   global_116 = CStr(var_FC)
  loc_186768D: End If
  loc_186768D: Call Proc_113_69_1391924(1)
  loc_186769B: If (global_54 = &HFF) Then
  loc_186769E:   Exit Sub
  loc_186769F: End If
  loc_18676AD: Set var_A0 = Me.Txt
  loc_18676B3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_A4)
  loc_18676D7: If (CDbl(Val(var_A4.Text)) = CDbl(0)) Then
  loc_18676DA:   var_CC = 1
  loc_18676E3:   var_11C = 1
  loc_1867701:   var_DC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1867707:   var_EC = Trim(var_DC)
  loc_1867723:   If (var_EC = vbNullString) Then
  loc_186773F:     MsgBox("Fill Item Name ", 0, var_DC, var_EC, var_FC)
  loc_1867762:     Me.FGrid.Row = 1
  loc_186776E:     Set var_A0 = Me.FGrid
  loc_1867792:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_186779A:     Exit Sub
  loc_186779B:   End If
  loc_186779B:   var_CC = 1
  loc_18677A4:   var_11C = 3
  loc_18677C2:   var_DC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_18677C8:   var_EC = Trim(var_DC)
  loc_18677E4:   If (var_EC = vbNullString) Then
  loc_18677FA:     var_BC = "Item Detail Required "
  loc_1867800:     MsgBox(var_BC, 0, var_DC, var_EC, var_FC)
  loc_1867823:     Me.FGrid.Row = 1
  loc_186782F:     Set var_A0 = Me.FGrid
  loc_1867844:     var_CC = CVar(CLng("14737632")) 'Long
  loc_1867853:     Me.FGrid.CellBackColor = var_CC
  loc_186785B:     Exit Sub
  loc_186785C:   End If
  loc_186785C: End If
  loc_186785F: Call Proc_113_63_11A4F44(var_13E, FGrid.DispID_8001, var_11C, var_CC)
  loc_186786A: If (var_13E = 0) Then
  loc_186786D:   Exit Sub
  loc_186786E: End If
  loc_1867879: Set var_A0 = Me.TxtGrid
  loc_186787F: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, 0, FGrid.DispID_8001)
  loc_1867887: var_A4.Visible = var_11C
  loc_1867893: Call Proc_113_66_F29230(var_CC)
  loc_18678A6: Set var_A0 = Me.Txt
  loc_18678AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_18678B4: var_AC = var_A4.Text
  loc_18678D4: If (Proc_6_91_EF38D0(CDate(var_AC)) = 0) Then
  loc_18678E2:   Set var_A0 = Me.Txt
  loc_18678E8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_18678F0:   var_A4.SetFocus
  loc_18678FC:   Exit Sub
  loc_18678FD: End If
  loc_18678FF: var_8A = &HFF
  loc_186790B: unk_54BA05.BeginTrans var_14C
  loc_186792E: Set var_A0 = Me.Txt
  loc_1867934: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_AC, "Delete From HallBook1 Where DocID='", var_BC)
  loc_186793C: -1 = var_A4.Text
  loc_1867955: unk_54BA05.Execute var_A8 & var_AC & "'", var_8A, 1
  loc_186797A: Set var_A0 = Me.OptCat
  loc_1867980: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1867988: var_A4.Value
  loc_186799E: If (CBool(var_A4) = &HFF) Then
  loc_18679C6:   For var_15A = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_15A 'Integer
  loc_18679D0:     Set var_200 = Me.FGrid2
  loc_18679E5:     var_220 = CVar((CLng(var_200.Rows) - 1)) 'Long
  loc_1867A40:     var_294 = (CStr(Me.FGrid.TextMatrix)) = "ü")
  loc_1867A59:     Set var_A4 = Me.FGrid
  loc_1867A5F:     var_DC = var_A4.TextMatrix)
  loc_1867AF0:     If CBool(CVar(CLng(var_92)) Or &HB And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(Val(CStr(Me.FGrid2.TextMatrix)))))) Then
  loc_1867AF9:       var_156 = (var_156 + 1)
  loc_1867B0A:       Set var_A0 = Me.Txt
  loc_1867B10:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_2B0, var_156, (Trim(CVar(CStr(var_DC))) <> vbNullString), CVar(CLng(9)), CVar(CLng(var_92)))
  loc_1867B18:       var_294 = var_A4.Text
  loc_1867B2B:       Set var_A8 = Me.Txt
  loc_1867B31:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_200, var_2E4, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1867B39:       var_148 = var_200.Text
  loc_1867B46:       var_148 = Val(var_2E4)
  loc_1867B54:       Set var_254 = Me.Txt
  loc_1867B5A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_148)
  loc_1867B69:       Proc_6_7_F26918(var_DC, CVar(var_2F4), CVar(CLng(0)))
  loc_1867B7C:       Set var_2F8 = Me.Txt
  loc_1867B82:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2FC, var_300)
  loc_1867B8A:       var_220 = var_2FC.Text
  loc_1867B93:       var_16C = CVar(CLng(var_92)) 'Long
  loc_1867B9B:       var_18C = CVar(CLng(9)) 'Long
  loc_1867BBA:       var_1CC = CVar(CLng(var_92)) 'Long
  loc_1867BC2:       var_1EC = CVar(CLng(&HA)) 'Long
  loc_1867BE1:       var_250 = CVar(CLng(var_92)) 'Long
  loc_1867BE9:       var_294 = CVar(CLng(3)) 'Long
  loc_1867C12:       var_420 = CVar(CLng(var_92)) 'Long
  loc_1867C1A:       var_440 = CVar(CLng(4)) 'Long
  loc_1867C43:       var_4D8 = CVar(CLng(var_92)) 'Long
  loc_1867C4B:       var_4F8 = CVar(CLng(5)) 'Long
  loc_1867C74:       var_570 = CVar(CLng(var_92)) 'Long
  loc_1867C7C:       var_590 = CVar(CLng(6)) 'Long
  loc_1867CA5:       var_628 = CVar(CLng(var_92)) 'Long
  loc_1867CAD:       var_648 = CVar(CLng(7)) 'Long
  loc_1867CCF:       var_9C4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1867CED:       var_704 = Me.FGrid.TextMatrix)
  loc_1867D27:       var_9CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1867D35:       Proc_6_7_F26918(var_85C, MemVar_1F950EC, var_9CC, CVar(CLng(8)), CVar(CLng(var_92)), var_704, CVar(CLng(2)), CVar(CLng(var_92)))
  loc_1867D3E:       Set var_890 = Me.TopCtrl1
  loc_1867D44:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9C4)
  loc_1867D96:       var_150 = "Insert Into HallBook1(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,PartyName,Item,"
  loc_1867DB2:       var_2B4 = var_150 & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,Remarks,Total," & "U_Name,U_EntDt,U_AE,LogSite_Code) " & "Values(" & "'"
  loc_1867E03:       var_2E0 = var_2B4 & var_2B0 & "'," & CStr(var_156) & ",'" & global_128 & "','" & global_132 & "','" & MemVar_1F95070 & "',"
  loc_1867E4C:       var_284 = CVar(var_2E0 & vbNullString & CStr(var_148) & ",") & var_DC & ",'HALL','HALL','HS','" & CVar(global_56) & "','" & CVar(var_300) 
  loc_1867E8F:       var_3A8 = var_284 & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString 
  loc_1867ECB:       var_540 = var_3A8 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1867F10:       var_724 = var_540 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString & CVar(var_9C4) & ",'" & CVar(CStr(var_704)) 
  loc_1867F60:       var_914 = var_724 & "'," & CVar(var_9CC) & "," & "'" & CVar(MemVar_1F950C8) & "'," & var_85C & ",'" & IIf((CStr(var_8A0) = "Add"), "A", "E") 
  loc_1867F8A:       unk_54BA05.Execute CStr(var_914 & "','" & CVar(MemVar_1F95078) & "')"), var_998, -1
  loc_1868070:     End If
  loc_1868073:   Next var_15A 'Integer
  loc_186807B: Else
  loc_18680A0:   For var_9D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_9D0 'Integer
  loc_18680AC:     var_156 = (var_156 + 1)
  loc_18680B3:     var_CC = CVar(CLng(var_92)) 'Long
  loc_18680D5:     var_DC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1868102:     Set var_A4 = Me.FGrid
  loc_1868133:     var_1CC = CVar(CLng(var_92)) 'Long
  loc_186817F:     Set var_200 = Me.FGrid
  loc_186821F:     If CBool(CVar(CLng(var_92)) Or CVar(CLng(1)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString)) Then
  loc_1868230:       Set var_A0 = Me.Txt
  loc_1868236:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_2B0, (Trim(CVar(CStr(var_200.TextMatrix)))) = "Food"), CVar(CLng(6)), CVar(CLng(var_92)), CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)))
  loc_186823E:       var_1CC = var_A4.Text
  loc_1868251:       Set var_A8 = Me.Txt
  loc_1868257:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_200, var_2E4, CVar(CLng(1)) And (Trim(CVar(CStr(var_A4.TextMatrix)))) <> vbNullString), CVar(CLng(var_92)))
  loc_186825F:       (Trim(var_DC) <> "Food") = var_200.Text
  loc_186826C:       var_148 = Val(var_2E4)
  loc_186827A:       Set var_254 = Me.Txt
  loc_1868280:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_148)
  loc_1868288:       var_BC = CVar(var_2F4) 'Address
  loc_186828F:       Proc_6_7_F26918(var_DC, var_BC, CVar(CLng(6)))
  loc_18682A2:       Set var_2F8 = Me.Txt
  loc_18682A8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2FC, var_300)
  loc_18682B0:       var_CC = var_2FC.Text
  loc_18682B9:       var_16C = CVar(CLng(var_92)) 'Long
  loc_18682C1:       var_18C = CVar(CLng(9)) 'Long
  loc_18682E0:       var_1CC = CVar(CLng(var_92)) 'Long
  loc_18682E8:       var_1EC = CVar(CLng(&HA)) 'Long
  loc_18682F1:       Set var_358 = Me.FGrid
  loc_1868307:       var_250 = CVar(CLng(var_92)) 'Long
  loc_186830F:       var_294 = CVar(CLng(3)) 'Long
  loc_1868338:       var_420 = CVar(CLng(var_92)) 'Long
  loc_1868340:       var_440 = CVar(CLng(4)) 'Long
  loc_1868349:       Set var_454 = Me.FGrid
  loc_1868369:       var_4D8 = CVar(CLng(var_92)) 'Long
  loc_1868371:       var_4F8 = CVar(CLng(5)) 'Long
  loc_186838B:       var_520 = CStr(Me.FGrid.TextMatrix))
  loc_186839A:       var_570 = CVar(CLng(var_92)) 'Long
  loc_18683A2:       var_590 = CVar(CLng(6)) 'Long
  loc_18683AB:       Set var_5A4 = Me.FGrid
  loc_18683CB:       var_628 = CVar(CLng(var_92)) 'Long
  loc_18683D3:       var_648 = CVar(CLng(7)) 'Long
  loc_18683F5:       var_9C4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_186840D:       Set var_6F4 = Me.FGrid
  loc_1868413:       var_704 = var_6F4.TextMatrix)
  loc_186844D:       var_9CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_186845B:       Proc_6_7_F26918(var_85C, MemVar_1F950EC, var_9CC, CVar(CLng(8)), CVar(CLng(var_92)), var_704, CVar(CLng(2)), CVar(CLng(var_92)))
  loc_1868464:       Set var_890 = Me.TopCtrl1
  loc_186846A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9C4)
  loc_186848D:       var_8A4 = CStr(var_8A0)
  loc_18684BC:       var_150 = "Insert Into HallBook1(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,PartyName,Item,"
  loc_18684D8:       var_2B4 = var_150 & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,Remarks,Total," & "U_Name,U_EntDt,U_AE,LogSite_Code) " & "Values(" & "'"
  loc_18684E6:       var_2BC = var_2B4 & var_2B0 & "',"
  loc_1868503:       var_2CC = var_2BC & CStr(var_156) & ",'" & global_128
  loc_1868529:       var_2E0 = var_2CC & "','" & global_132 & "','" & MemVar_1F95070 & "',"
  loc_186853C:       var_2F0 = var_2E0 & vbNullString & CStr(var_148)
  loc_1868552:       var_1AC = CVar(var_2F0 & ",") & var_DC & ",'HALL','HALL','HS','" 
  loc_18685A3:       var_388 = var_1AC & CVar(global_56) & "','" & CVar(var_300) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_358.TextMatrix))) 
  loc_18685DD:       var_4A8 = var_388 & "'," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_454.TextMatrix)))) & "," 
  loc_1868622:       var_690 = var_4A8 & vbNullString & CVar(Val(var_520)) & "," & CVar(Val(CStr(var_5A4.TextMatrix)))) & "," & vbNullString & CVar(var_9C4) 
  loc_186867F:       var_88C = var_690 & ",'" & CVar(CStr(var_704)) & "'," & CVar(var_9CC) & "," & "'" & CVar(MemVar_1F950C8) & "'," & var_85C & ",'" 
  loc_18686B0:       unk_54BA05.Execute CStr(var_88C & IIf((var_8A4 = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_998, -1
  loc_1868796:     End If
  loc_1868799:   Next var_9D0 'Integer
  loc_186879E: End If
  loc_18687AC: Set var_A0 = Me.Txt
  loc_18687B2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_18687BA: var_AC = var_A4.Text
  loc_18687C7: var_148 = Val(var_AC)
  loc_18687D8: Set var_A8 = Me.Txt
  loc_18687DE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_200)
  loc_18687F3: var_9A4 = Val(var_200.Text)
  loc_1868804: Set var_254 = Me.Txt
  loc_186880A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_2F4, var_2BC)
  loc_186881F: var_9AC = Val(var_2BC)
  loc_1868830: Set var_2F8 = Me.Txt
  loc_1868836: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_2FC, var_2CC)
  loc_186884B: var_9B4 = Val(var_2CC)
  loc_186885C: Set var_314 = Me.Txt
  loc_1868862: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_358, var_2E0)
  loc_1868877: var_9BC = Val(var_2E0)
  loc_1868888: Set var_3BC = Me.Txt
  loc_186888E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_454, var_2F0)
  loc_18688A3: var_9C4 = Val(var_2F0)
  loc_18688B4: Set var_50C = Me.Txt
  loc_18688BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5A4, var_520)
  loc_18688CF: var_9CC = Val(var_520)
  loc_18688E0: Set var_65C = Me.Txt
  loc_18688E6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_6F4, var_8A4)
  loc_18688FB: var_C28 = Val(var_8A4)
  loc_186890C: Set var_788 = Me.Txt
  loc_1868912: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_890, var_9DC)
  loc_1868927: var_C30 = Val(var_9DC)
  loc_1868938: Set var_99C = Me.Txt
  loc_186893E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_9EC, var_9F0)
  loc_1868953: var_C38 = Val(var_9F0)
  loc_1868964: Set var_A00 = Me.Txt
  loc_186896A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_A04, var_A08)
  loc_186897F: var_C40 = Val(var_A08)
  loc_1868990: Set var_A18 = Me.Txt
  loc_1868996: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A1C, var_A20)
  loc_18689AB: var_C48 = Val(var_A20)
  loc_18689BC: Set var_A30 = Me.Txt
  loc_18689C2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_A34, var_A38)
  loc_18689DD: Set var_A44 = Me.Txt
  loc_18689E3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_A48)
  loc_18689FE: Set var_A58 = Me.Txt
  loc_1868A04: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_A5C)
  loc_1868A1F: Set var_A6C = Me.Txt
  loc_1868A25: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_A70)
  loc_1868A40: Set var_A80 = Me.Txt
  loc_1868A46: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_A84)
  loc_1868A61: Set var_A94 = Me.Txt
  loc_1868A67: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_A98)
  loc_1868A82: Set var_AA8 = Me.Txt
  loc_1868A88: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_AAC)
  loc_1868AA3: Set var_ABC = Me.Txt
  loc_1868AA9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_AC0)
  loc_1868AC4: Set var_AD4 = Me.Txt
  loc_1868ACA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_AD8)
  loc_1868AE5: Set var_AE8 = Me.Txt
  loc_1868AEB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_AEC)
  loc_1868B06: Set var_AFC = Me.Txt
  loc_1868B0C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_B00)
  loc_1868B27: Set var_B10 = Me.Txt
  loc_1868B2D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_B14)
  loc_1868B48: Set var_B24 = Me.Txt
  loc_1868B4E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_B28)
  loc_1868B69: Set var_B38 = Me.Txt
  loc_1868B6F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B3C)
  loc_1868B8A: Set var_B4C = Me.Txt
  loc_1868B90: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_B50)
  loc_1868BA5: var_C50 = Val(var_B50.Text)
  loc_1868BB6: Set var_B64 = Me.Txt
  loc_1868BBC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_B68, var_B6C)
  loc_1868BD1: var_C58 = Val(var_B6C)
  loc_1868BE2: Set var_B7C = Me.Txt
  loc_1868BE8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_B80, var_B84)
  loc_1868BFD: var_C60 = Val(var_B84)
  loc_1868C0E: Set var_B94 = Me.Txt
  loc_1868C14: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_B98, var_B9C)
  loc_1868C29: var_C68 = Val(var_B9C)
  loc_1868C37: Proc_6_7_F26918(var_BC, MemVar_1F950EC)
  loc_1868C40: Set var_BB8 = Me.TopCtrl1
  loc_1868C46: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_C68)
  loc_1868C54: var_210 = "E"
  loc_1868C8B: Set var_BC0 = Me.Txt
  loc_1868C91: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC4)
  loc_1868CAC: Set var_BCC = Me.Txt
  loc_1868CB2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_BD0)
  loc_1868CCD: Set var_BD8 = Me.Txt
  loc_1868CD3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_BDC)
  loc_1868CEE: Set var_BE4 = Me.Txt
  loc_1868CF4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_BE8)
  loc_1868D0F: Set var_BF0 = Me.Txt
  loc_1868D15: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_BF4)
  loc_1868D30: Set var_BFC = Me.Txt
  loc_1868D36: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_C00)
  loc_1868D51: Set var_C08 = Me.Txt
  loc_1868D57: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_C0C)
  loc_1868D6F: Set var_C14 = Me.Txt
  loc_1868D75: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_C18)
  loc_1868DA9: var_2A8 = "Update HallBook Set " & "Total=" & CStr(var_148)
  loc_1868DB8: var_2B4 = CStr(var_2F4.Text)
  loc_1868DFC: var_2EC = var_2A8 & ",Hallrent=" & var_2B4 & ",NetAmount=" & CStr(var_2FC.Text) & ",Amount=" & CStr(var_358.Text) & "," & "DiscPer=" & CStr(var_454.Text)
  loc_1868E3C: var_9E0 = var_2EC & ",DiscAmt=" & CStr(var_5A4.Text) & ",Tax=" & CStr(var_6F4.Text) & ",ServiceCharge=" & CStr(var_890.Text) & ",AddAmt="
  loc_1868E81: var_A2C = var_9E0 & CStr(var_9EC.Text) & ",dedAmt=" & CStr(var_A04.Text) & ",RoundOff=" & CStr(var_A1C.Text) & ",Advance=" & CStr(var_A34.Text)
  loc_1868EB9: var_A7C = var_A2C & ",MenuSpl1='" & var_A38 & "',MenuSpl2='" & var_A48.Text & "',MenuSpl3='" & var_A5C.Text & "',MenuSpl4='" & var_A70.Text
  loc_1868EF1: var_ACC = var_A7C & "',MenuSpl5='" & var_A84.Text & "',MenuSpl6='" & var_A98.Text & "',MenuSpl7='" & var_AAC.Text & "',Func_Name='" & var_AC0.Tag
  loc_1868F30: var_B20 = var_ACC & "'," & "HouseKeep='" & var_AD8.Text & "',FrontOff='" & var_AEC.Text & "',Engg='" & var_B00.Text & "',Security='" & var_B14.Text
  loc_1868F72: var_B78 = var_B20 & "',Chef='" & var_B28.Text & "',Board='" & var_B3C.Text & "',ExpAtt=" & CStr(var_B68.Text) & ",GuarAtt=" & CStr(var_B80.Text)
  loc_1868FB4: var_DC = CVar(var_B78 & ",CoverRate=" & CStr(var_B98.Text) & ",TotalCoverRate=" & CStr(var_C68) & "," & "U_Name='" & MemVar_1F950C8 & "', U_EntDt=") 'String
  loc_1868FE6: var_334 = var_DC & var_BC & ", U_AE='" & IIf((CStr(var_1AC) = "Add"), "A", var_210) & "',PartyName='" & CVar(var_BC4.Text) & "',Add1='" 
  loc_1869029: var_464 = var_334 & CVar(var_BD0.Text) & "',Add2='" & CVar(var_BDC.Text) & "',PanNo='" & CVar(var_BE8.Text) & "',ContactNo_Res='" & CVar(var_BF4.Text) 
  loc_186905F: var_618 = var_464 & "',ContactNo_Off='" & CVar(var_C00.Text) & "',MenuCatalog='" & CVar(var_C0C.Tag) & "' WHere Docid='" & Trim(CVar(var_C18)) 
  loc_1869076: unk_54BA05.Execute CStr(var_618 & "'"), var_690, -1
  loc_186924E: Set var_A0 = Me.TopCtrl1
  loc_1869254: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_C20)
  loc_186926D: If (CStr(var_148) = "Add") Then
  loc_1869284:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_18692AA:   Set var_A0 = Me.Txt
  loc_18692B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_2A8, var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_18692B8:   var_1FC = var_A4.Tag
  loc_18692C1:   var_2B0 = -1 & var_2A8
  loc_18692C8:   var_EC = CVar(var_2A8 & ",Hallrent=" & "' And VP.Date_From<=") 'String
  loc_18692D9:   Set var_A8 = Me.Txt
  loc_18692DF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200, var_2B4)
  loc_18692E7:   var_EC = var_200.Text
  loc_18692F5:   Proc_6_7_F26918(var_DC, CVar(var_2B4))
  loc_1869306:   var_1AC = var_254 & var_DC & " Order By VP.Date_From DESC" 
  loc_1869314:   unk_54BA05.Execute CStr(var_1AC), , 
  loc_186931F:   Set var_88 = var_254
  loc_1869363:   If (var_88.RecordCount > 0) Then
  loc_1869374:     Set var_A0 = Me.Txt
  loc_186937A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_186938F:     var_148 = Val(var_A4.Text)
  loc_18693A0:     Set var_A8 = Me.Txt
  loc_18693A6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_18693D2:     var_BC = CVar(var_88.Fields.Item("Date_From")) 'Address
  loc_18693D9:     Proc_6_7_F26918(var_DC, var_BC)
  loc_18693FE:     var_2A8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_148) & " Where (SITE_CODE='"
  loc_1869428:     var_EC = CVar(var_2A8 & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='" & var_200.Tag & "' and Date_From=") 'String
  loc_186943C:     unk_54BA05.Execute CStr(var_EC & var_DC), var_1AC, -1
  loc_1869476:   End If
  loc_1869476: End If
  loc_186947A: Set var_A0 = Me.TopCtrl1
  loc_1869480: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_2F8)
  loc_1869499: If (CStr(var_148) = "Add") Then
  loc_18694BF:   var_AC = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078
  loc_18694DD:   Call 0.Method_arg_50 (var_2A8, var_AC & "' and UNAME='" & MemVar_1F950C8 & "' AND ENAME='", var_BC, -1, var_A0)
  loc_18694ED:   var_2B4 = var_A4 & var_2A8 & "' "
  loc_18694F6:   unk_54BA05.Execute var_2B4, 0, var_A8
  loc_1869506:    = var_A4.Item()
  loc_186950E:    = var_A8.Value
  loc_186953F:   If (var_A0.Fields > 0) Then
  loc_1869560:     Set var_A0 = Me.Txt
  loc_1869566:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_AC, "UPDATE LASTVOU  SET DOCID='")
  loc_186956E:     var_BC = var_A4.Text
  loc_1869577:     var_150 = -1 & var_AC
  loc_186958C:     var_2AC = var_AC & "' and UNAME='" & "' WHERE Logsite_Code='" & MemVar_1F95078 & "' And UNAME='"
  loc_18695A3:     Call 0.Method_arg_50 (var_2B4, var_2AC & MemVar_1F950C8 & "' AND ENAME='")
  loc_18695BC:     unk_54BA05.Execute var_A8 & var_2B4 & "'  ", , 
  loc_18695E7:   Else
  loc_186960B:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_210)
  loc_1869614:     var_2A8 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='"
  loc_186961B:     var_2B0 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='" & "' WHERE Logsite_Code='" & MemVar_1F95078 & "','"
  loc_186962C:     Set var_A0 = Me.Txt
  loc_1869632:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_2AC)
  loc_186963A:     var_2B0 = var_A4.Text
  loc_186965E:     var_CC = MemVar_1F950EC
  loc_1869666:     Proc_6_7_F26918(var_BC, var_CC)
  loc_1869698:     unk_54BA05.Execute CStr(CVar(var_A8 & var_2AC & "','" & MemVar_1F95070 & "',") & var_BC & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_18696CE:   End If
  loc_18696CE: End If
  loc_18696D4: unk_54BA05.CommitTrans
  loc_18696DB: var_8A = 0
  loc_18696EC: Set var_A0 = Me.Txt
  loc_18696F2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4)
  loc_186970E: var_8A = 0
  loc_186971C: Me.Requery -1
  loc_186972C: Me.Requery -1
  loc_1869756: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_1869766: Set var_A0 = Me.TopCtrl1
  loc_186976C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_CC)
  loc_1869785: If (CStr(var_8A) = "Add") Then
  loc_1869788:   Call TopCtrl1_UnknownEvent_A()
  loc_186978D:   Exit Sub
  loc_186978E: End If
  loc_18697B1: Call Proc_113_65_FAF664(Proc_5_1_100EC1C("INI", Me), global_88)
  loc_18697BC: Call Proc_113_62_19F0900(var_8A)
  loc_18697C6: Set var_88 = Nothing
  loc_18697C9: Exit Sub
  loc_18697CA: ' Referenced from: 1867554
  loc_18697D0: If (var_8A = &HFF) Then
  loc_18697D9:   unk_54BA05.RollbackTrans
  loc_18697DE: End If
  loc_18697DE: Proc_6_60_E63754()
  loc_18697E3: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD49E8
  'Data Table: 54B9E4
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD482C: On Error Goto loc_FD49E0
  loc_FD483E: Me.DGVType.Visible = False
  loc_FD485D: If (Me.RecordCount > 0) Then
  loc_FD48AF:   Set var_CC = Me.Txt
  loc_FD48B5:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD48BD:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD4915:   Set var_B4 = Me.DGVType
  loc_FD492C:   Set var_CC = Me.Txt
  loc_FD4932:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD493A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD498E:   global_140 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD499F: End If
  loc_FD49BD: Set var_B0 = Me.Txt
  loc_FD49C3: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD49CB: var_B4.SetFocus
  loc_FD49DF: Exit Sub
  loc_FD49E0: ' Referenced from: FD482C
  loc_FD49E0: Proc_6_60_E63754(var_B4)
  loc_FD49E5: Exit Sub
End Sub

Private Sub PrintInst_UnknownEvent_9 '149B8A0
  'Data Table: 54B9E4
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D8 As Variant
  Dim unk_54BA05 As Connection15
  Dim var_C4 As Recordset15
  Dim var_F4 As Variant
  Dim var_D4 As Fields15
  Dim var_104 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_AC As Double
  Dim var_C0 As Recordset15
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_9C As Recordset15
  Dim var_11C As Variant
  Dim var_13E As Integer
  Dim var_BC As Recordset15
  Dim var_108 As Variant
  Dim var_1B8 As Variant
  Dim var_190 As Variant
  Dim var_1BC As Field20
  loc_149AC4C: On Error Goto loc_149B899
  loc_149AC56: var_C8 = "Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,HB1.TaxPer AS LineTaxPer,HB1.TaxAmt, " & "HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,HB1.Remarks,HB1.Total As LineTotal,I.name As IName,ItemGrp.Name As ItemGrpName "
  loc_149AC64: var_D0 = var_C8 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "INNER Join ItemMast I on HB1.Item=I.Code) Inner Join ItemGrp On ItemGrp.Code=I.ItemGroup "
  loc_149AC7C: Set var_D4 = Me.Txt
  loc_149AC82: Call 0.Method_PrintInst_UnknownEvent_90 (CInt(&H22), var_D8)
  loc_149AC9A: var_88 = var_D0 & "Where HB.DocID='" & var_D8.Text & "'"
  loc_149ACD1: Set var_D4 = Me.Txt
  loc_149ACD7: Call 0.Method_PrintInst_UnknownEvent_90 (CInt(&H22), var_D8, var_C8, "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_149ACDF: var_104 = var_D8.Text
  loc_149ACE8: var_CC = -1 & var_C8
  loc_149ACF8: unk_54BA05.Execute var_C8 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "'", var_108, 
  loc_149AD03: Set var_BC = var_108
  loc_149AD39: Set var_D4 = Me.Txt
  loc_149AD3F: Call 0.Method_PrintInst_UnknownEvent_90 (CInt(&H22), var_D8, var_C8, "Select AmtCr,PayType,VNo,VDate FROM PayChargeH Where VType='AD' AND ContraDocId='")
  loc_149AD47: var_104 = var_D8.Text
  loc_149AD50: var_CC = -1 & var_C8
  loc_149AD60: unk_54BA05.Execute var_C8 & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "'", var_108, 
  loc_149AD6B: Set var_C4 = var_108
  loc_149AD97: If (var_C4.RecordCount > 0) Then
  loc_149ADC2:   var_B4 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("VNo")))
  loc_149ADFA:   var_B8 = "& " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")))
  loc_149AE33:   Proc_6_47_EF6560(var_11C, CVar(var_C4.Fields.Item("AmtCr")))
  loc_149AE3B:   var_13C = (CVar(var_AC) + var_11C)
  loc_149AE40:   var_AC = CSng(var_13C)
  loc_149AE77:   var_B0 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("PayType")))
  loc_149AE83:   var_C4.MoveNext
  loc_149AE88:   ' Referenced from: 149AFF9
  loc_149AE97:   If Not(var_C4.EOF) Then
  loc_149AEC7:     Proc_6_47_EF6560(var_11C, CVar(var_C4.Fields.Item("AmtCr")))
  loc_149AECF:     var_13C = (CVar(var_AC) + var_11C)
  loc_149AED4:     var_AC = CSng(var_13C)
  loc_149AF1C:     If (var_AC <> Proc_6_38_E69628(CVar(var_C4.Fields.Item("PayType")), var_B0)) Then
  loc_149AF55:       var_B0 = var_AC & Proc_6_38_E69628(CVar(var_C4.Fields.Item("PayType")), var_B0 & ", ")
  loc_149AF9B:       var_B4 = var_B4 & ", " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("VNo")))
  loc_149AFB2:       var_C8 = var_B8 & ", "
  loc_149AFCC:       var_D8 = var_C4.Fields.Item("VDate")
  loc_149AFE1:       var_B8 = var_C8 & Proc_6_38_E69628(CVar(var_D8))
  loc_149AFF1:     End If
  loc_149AFF4:     var_C4.MoveNext
  loc_149AFF9:     GoTo loc_149AE88
  loc_149AFFC:   End If
  loc_149AFFF: Else
  loc_149B008:   var_AC = 0
  loc_149B00E:   var_B0 = vbNullString
  loc_149B011: End If
  loc_149B02F: Set var_D4 = Me.Txt
  loc_149B035: Call 0.Method_PrintInst_UnknownEvent_90 (CInt(&H22), var_D8, var_C8, "Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_149B03D: var_104 = var_D8.Text
  loc_149B046: var_CC = -1 & var_C8
  loc_149B056: unk_54BA05.Execute Proc_6_38_E69628(CVar(var_D8)) & "'", var_108, var_AC
  loc_149B061: Set var_C0 = var_108
  loc_149B08D: If (var_C0.RecordCount > 0) Then
  loc_149B090:   ' Referenced from: 149B12B
  loc_149B09F:   If Not(var_C0.EOF) Then
  loc_149B0B8:     var_104 = vbNullString
  loc_149B0CD:     var_13C = IIf((var_A4 = vbNullString), var_104, ",")
  loc_149B0D5:     var_170 = CVar(var_A4) & var_13C 
  loc_149B0EB:     var_D4 = var_C0.Fields
  loc_149B0F3:     var_D8 = var_D4.Item("VenuName")
  loc_149B108:     var_A4 = CStr(var_170 & var_D8.Value)
  loc_149B126:     var_C0.MoveNext
  loc_149B12B:     GoTo loc_149B090
  loc_149B12E:   End If
  loc_149B12E: End If
  loc_149B136: If (var_88 = vbNullString) Then
  loc_149B139:   Exit Sub
  loc_149B13A: End If
  loc_149B150: unk_54BA05.Execute var_88, var_104, -1
  loc_149B15B: Set var_9C = var_D4
  loc_149B16A: var_10C = var_9C.RecordCount
  loc_149B178: If (var_10C <= 0) Then
  loc_149B181:   Call 0.Method_arg_50 (var_C8)
  loc_149B1A2:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C8), var_13C, var_170)
  loc_149B1B2:   Exit Sub
  loc_149B1B3: End If
  loc_149B1C9: Set var_D4 = var_9C 
  loc_149B1D5: var_13E = CreateFieldDefFile(var_D4, MemVar_1F950B4 & "\FuncProspectInstructions.ttx")
  loc_149B1DF: Set var_9C = var_D4
  loc_149B1E5: var_F4 = CVar(var_13E) 'Integer
  loc_149B1E8: var_98 = var_F4 'Variant
  loc_149B204: var_C8 = MemVar_1F950B4 & "\FuncProspectInstructions.RPT"
  loc_149B20D: Call 0.Method_arg_1C (var_C8, var_F4, var_D4)
  loc_149B218: MemVar_1F951E8 = var_D4
  loc_149B233: Call 0.Method_arg_90 (var_D4, var_10C, var_9E, 1)
  loc_149B23B: Call 0.Method_arg_24 (var_13E, &HFF)
  loc_149B247: For var_1A4 =  To CInt(var_10C): var_D4 = var_1A4 'Integer
  loc_149B260:   Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149B268:   Call 0.Method_arg_20 (var_D8)
  loc_149B270:   Call 0.Method_arg_30 (var_C8)
  loc_149B286:   var_1B4 = Ucase(CVar(var_C8)) 'Variant
  loc_149B29F:   If (var_1B4 = "FDATE") Then
  loc_149B2F8:     Call 0.Method_arg_90 (var_108, CLng(var_9E))
  loc_149B300:     Call 0.Method_arg_20 (var_1B8)
  loc_149B308:     Call 0.Method_arg_38 (CStr("'" & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & "'"))
  loc_149B327:   Else
  loc_149B332:     If (var_1B4 = "FTIME") Then
  loc_149B34C:       var_D4 = var_BC.Fields
  loc_149B354:       var_D8 = var_D4.Item("FromTime")
  loc_149B368:       var_150 = " - "
  loc_149B383:       var_108 = var_BC.Fields
  loc_149B38B:       var_1B8 = var_108.Item("ToTime")
  loc_149B393:       var_170 = var_1B8.Value
  loc_149B39B:       var_190 = "'" & var_D8.Value & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & var_170 
  loc_149B3BC:       Call 0.Method_arg_90 (var_1BC, CLng(var_9E))
  loc_149B3C4:       Call 0.Method_arg_20 (var_1C0)
  loc_149B3CC:       Call 0.Method_arg_38 (CStr(var_190 & "'"))
  loc_149B3F5:     Else
  loc_149B400:       If (var_1B4 = "VENUENAME") Then
  loc_149B424:         Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149B42C:         Call 0.Method_arg_20 (var_D8)
  loc_149B434:         Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_149B44A:       Else
  loc_149B455:         If (var_1B4 = "TITLE") Then
  loc_149B46B:           Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149B473:           Call 0.Method_arg_20 (var_D8)
  loc_149B47B:           Call 0.Method_arg_38 ("'FUNCTION PROSPECTUS'")
  loc_149B48A:         Else
  loc_149B495:           If (var_1B4 = "FDAY") Then
  loc_149B4FA:             Call 0.Method_arg_90 (var_108, CLng(var_9E))
  loc_149B502:             Call 0.Method_arg_20 (var_1B8)
  loc_149B50A:             Call 0.Method_arg_38 ("'" & WeekdayName(CLng(Weekday(CVar(var_BC.Fields.Item("FromDate")), 1)), 0, 0) & "'")
  loc_149B52B:           Else
  loc_149B54D:             If (var_1B4 = Ucase("FunctionName")) Then
  loc_149B55B:               var_180 = 0
  loc_149B571:               var_12C = "SELECT Name FROM FunctionType WHERE Code='"
  loc_149B588:               var_D4 = var_9C.Fields
  loc_149B590:               var_D8 = var_D4.Item("Func_Name")
  loc_149B5A4:               var_150 = "'"
  loc_149B5B7:               unk_54BA05.Execute CStr(var_12C & var_D8.Value & var_150), var_170, -1
  loc_149B5BF:               var_108 = var_108.Fields
  loc_149B5C7:               var_180 = var_1B8.Item(var_1B8)
  loc_149B5CF:               var_1BC = var_1BC.Value
  loc_149B5F8:               Call 0.Method_arg_90 (var_1C0, CLng(var_9E), var_1F4)
  loc_149B600:               Call 0.Method_arg_20 (CStr(var_190 & var_190 & "'"))
  loc_149B608:               Call 0.Method_arg_38 ("'")
  loc_149B639:             Else
  loc_149B65B:               If (var_1B4 = Ucase("Advance")) Then
  loc_149B684:                 Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149B68C:                 Call 0.Method_arg_20 (var_D8)
  loc_149B694:                 Call 0.Method_arg_38 ("'" & CStr(var_AC) & "'")
  loc_149B6AC:               Else
  loc_149B6CE:                 If (var_1B4 = Ucase("PayType")) Then
  loc_149B6F2:                   Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149B6FA:                   Call 0.Method_arg_20 (var_D8)
  loc_149B702:                   Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_149B718:                 Else
  loc_149B73A:                   If (var_1B4 = Ucase("aVNo")) Then
  loc_149B75E:                     Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149B766:                     Call 0.Method_arg_20 (var_D8)
  loc_149B76E:                     Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_149B784:                   Else
  loc_149B7A6:                     If (var_1B4 = Ucase("aVDate")) Then
  loc_149B7B0:                       var_C8 = "'" & var_B8
  loc_149B7CA:                       Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_149B7D2:                       Call 0.Method_arg_20 (var_D8)
  loc_149B7DA:                       Call 0.Method_arg_38 (var_C8 & "'")
  loc_149B7ED:                     End If
  loc_149B7ED:                   End If
  loc_149B7ED:                 End If
  loc_149B7ED:               End If
  loc_149B7ED:             End If
  loc_149B7ED:           End If
  loc_149B7ED:         End If
  loc_149B7ED:       End If
  loc_149B7ED:     End If
  loc_149B7ED:   End If
  loc_149B7F0: Next var_1A4 'Integer
  loc_149B80E: Call 0.Method_arg_64 (var_D4, CVar(var_9C))
  loc_149B816: Call 0.Method_arg_2C (var_12C)
  loc_149B824: Call 0.Method_arg_150 (var_150)
  loc_149B82F: Call 0.Method_arg_50 (var_C8)
  loc_149B839: Set var_D8 = Nothing
  loc_149B853: Set var_D4 = MemVar_1F951E8 
  loc_149B85F: Proc_6_99_1484404(var_D4, 0, var_C8)
  loc_149B86A: MemVar_1F951E8 = var_D4
  loc_149B87D: Set var_9C = Nothing
  loc_149B885: Set var_BC = Nothing
  loc_149B88D: Set var_C0 = Nothing
  loc_149B895: Set var_C4 = Nothing
  loc_149B898: Exit Sub
  loc_149B899: ' Referenced from: 149AC4C
  loc_149B899: Proc_6_60_E63754(&HFF)
  loc_149B89E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '119634C
  'Data Table: 54B9E4
  Dim var_A4 As Variant
  Dim var_88 As Variant
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_1195F66: Set var_88 = Me.TxtGrid
  loc_1195F6C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_1195F7A: Proc_6_74_E23240(var_8C)
  loc_1195F86: Call Proc_113_66_F29230(var_8C)
  loc_1195F97: If (Index = 0) Then
  loc_1195FB0:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_1195FCB:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119600A:   Set var_108 = Me.TxtGrid
  loc_1196010:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1196018:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1196049:   var_114 = CLng(Me.FGrid.Col)
  loc_1196059:   If (var_114 = CLng(1)) Then
  loc_1196065:     If (global_152 = 0) Then
  loc_1196070:       var_110 = "{Home}+{End}"
  loc_1196076:       Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0, var_114)
  loc_119607E:     End If
  loc_1196088:     Set global_72 = New 
  loc_119609A:     Me.CursorLocation = 3
  loc_11960C0:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IC.CatType,IR.Rate as IRate,IC.RoundOff as Roundoff1  From (((ItemMast I Inner join ItemGrp IG on I.ItemGroup=IG.Code) Inner join ItemCatMast IC on IC.Code=I.ItemCatCode) Inner Join ItemRate IR on IR.ItemCode=I.Code And IR.RestCode=I.RestCode) Where I.RestCode='" & global_56
  loc_11960DF:     Me.Open CVar(var_110 & "' and  I.LogSite_Code in ('HO','" & MemVar_1F95078 & "') Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_11960F9:     CVarUnk
  loc_11960FE:     VerifyVarObj
  loc_1196104:     Set var_88 = Me.DGItem
  loc_119610A:     LateIdStAd
  loc_1196159:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_119615C:       Exit Sub
  loc_119615D:     End If
  loc_1196163:     Me.MoveFirst
  loc_119617B:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1196183:     var_E4 = CVar(CLng(9)) 'Long
  loc_119618C:     Set var_8C = Me.FGrid
  loc_1196192:     var_D4 = var_8C.TextMatrix)
  loc_11961C7:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_11961F7:     If (Me.EOF = &HFF) Then
  loc_1196200:       Me.MoveFirst
  loc_1196205:     End If
  loc_119620E:     CVarUnk
  loc_1196213:     VerifyVarObj
  loc_1196219:     Set var_88 = Me.DGItem
  loc_119621F:     LateIdStAd
  loc_119623F:     Me.DGItem.Left = CVar(CDbl(&H5A))
  loc_119624A:     var_A4 = CVar(CDbl(0)) 'Single
  loc_1196259:     Me.DGItem.Top = var_A4
  loc_1196276:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H19, Me.TxtGrid, global_72, var_138, var_D4)
  loc_119627E:     var_8C.MaxLength = var_E4
  loc_119628D:   Else
  loc_1196294:     If (var_114 = CLng(2)) Then
  loc_11962AC:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, var_A4, Me.TxtGrid)
  loc_11962B4:       var_8C.MaxLength = global_72
  loc_11962CF:       Set var_88 = Me.TxtGrid
  loc_11962D5:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(480))
  loc_11962DD:       var_8C.Height = 1.40129846432482E-45
  loc_11962EC:     Else
  loc_11962F3:       If Not (var_114 = CLng(3)) Then
  loc_11962FD:         If (var_114 = CLng(4)) Then
  loc_1196300:         End If
  loc_119630F:         Set var_88 = Me.TxtGrid
  loc_1196315:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_119631D:         var_8C.MaxLength = -1
  loc_1196332:         If (global_152 = 0) Then
  loc_119633D:           var_110 = "{Home}+{End}"
  loc_1196343:           Proc_303_0_FBACC8(CStr(var_D4), 0)
  loc_119634B:         End If
  loc_119634B:       End If
  loc_119634B:     End If
  loc_119634B:   End If
  loc_119634B: End If
  loc_119634B: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11AC7E0
  'Data Table: 54B9E4
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  loc_11AC3C4: If (KeyCode = 0) Then
  loc_11AC3D1:   If (CLng(Shift) = &H1B) Then
  loc_11AC3E1:     Set var_8C = Me.TxtGrid
  loc_11AC3E7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_11AC401:     Set var_98 = Me.TxtGrid
  loc_11AC407:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_11AC40F:     var_9C.Text = var_90.Tag
  loc_11AC42B:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11AC430:     Call Proc_113_66_F29230(arg_14)
  loc_11AC439:     Set var_8C = Me.FGrid
  loc_11AC456:     Set var_8C = Me.TxtGrid
  loc_11AC45C:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11AC464:     var_90.Visible = FGrid.DispID_8001
  loc_11AC470:     Exit Sub
  loc_11AC471:   End If
  loc_11AC484:   var_B0 = CLng(Me.FGrid.Col)
  loc_11AC494:   If (var_B0 = CLng(1)) Then
  loc_11AC4AF:     Set var_9C = Nothing
  loc_11AC4E8:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_11AC506:     If (CLng(Shift) = &HD) Then
  loc_11AC50F:       Call Proc_113_61_117DA90(KeyCode, var_B2, 1, Nothing)
  loc_11AC51A:       If (var_B2 = &HFF) Then
  loc_11AC567:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, CByte((CInt(5) + 1)), 0)
  loc_11AC577:       End If
  loc_11AC577:     End If
  loc_11AC57A:   Else
  loc_11AC581:     If (var_B0 = CLng(2)) Then
  loc_11AC58E:       If (CLng(Shift) = &HD) Then
  loc_11AC597:         Call Proc_113_61_117DA90(KeyCode, var_B2, 0, 0)
  loc_11AC5A2:         If (var_B2 = &HFF) Then
  loc_11AC5B8:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11AC5C0:           var_F4 = CVar(CLng(6)) 'Long
  loc_11AC5F3:           If (CStr(Me.FGrid.TextMatrix)) = "Food") Then
  loc_11AC640:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, CByte((CInt(3) + 1)), 0, 0)
  loc_11AC653:           Else
  loc_11AC69D:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, CByte((CInt(3) + 1)), 0, 0)
  loc_11AC6AD:           End If
  loc_11AC6AD:         End If
  loc_11AC6AD:       End If
  loc_11AC6B0:     Else
  loc_11AC6B7:       If (var_B0 = CLng(4)) Then
  loc_11AC6C0:         Call Proc_113_61_117DA90(KeyCode, var_B2, 0, 0, var_F4)
  loc_11AC6CB:         If (var_B2 = &HFF) Then
  loc_11AC711:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, 1, 0)
  loc_11AC721:         End If
  loc_11AC724:       Else
  loc_11AC72B:         If (var_B0 = CLng(3)) Then
  loc_11AC76E:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_152 = &HFF))) Then
  loc_11AC777:             Call Proc_113_61_117DA90(KeyCode, var_B2, 0, 0, var_D4)
  loc_11AC782:             If (var_B2 = &HFF) Then
  loc_11AC7CF:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_152, CByte((CInt(4) + 1)), 0)
  loc_11AC7DF:             End If
  loc_11AC7DF:           End If
  loc_11AC7DF:         End If
  loc_11AC7DF:       End If
  loc_11AC7DF:     End If
  loc_11AC7DF:   End If
  loc_11AC7DF: End If
  loc_11AC7DF: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F83D48
  'Data Table: 54B9E4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F83BF7: Proc_6_58_E06050(arg_10)
  loc_F83C08: If (KeyAscii = 0) Then
  loc_F83C1E:   var_A0 = CLng(Me.FGrid.Col)
  loc_F83C2E:   If (var_A0 = CLng(1)) Then
  loc_F83C4D:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F83C54:       Set var_AC = Me.TxtGrid
  loc_F83C5F:       var_A4 = "Name"
  loc_F83C7A:       Proc_6_89_1470B00(var_AC, KeyAscii, global_72, arg_10)
  loc_F83C89:     End If
  loc_F83C8C:   Else
  loc_F83C93:     If (var_A0 = CLng(3)) Then
  loc_F83CA0:       Set var_8C = Me.TxtGrid
  loc_F83CA6:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F83CC1:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F83CD0:     Else
  loc_F83CD7:       If (var_A0 = CLng(4)) Then
  loc_F83CE4:         Set var_8C = Me.TxtGrid
  loc_F83CEA:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F83D05:         Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_F83D14:       Else
  loc_F83D1B:         If (var_A0 = CLng(2)) Then
  loc_F83D2D:           Set var_8C = Me.TxtGrid
  loc_F83D33:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F83D3B:           var_AC.MaxLength = 3
  loc_F83D47:         End If
  loc_F83D47:       End If
  loc_F83D47:     End If
  loc_F83D47:   End If
  loc_F83D47: End If
  loc_F83D47: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10F99F0
  'Data Table: 54B9E4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As Variant
  Dim var_FC As Variant
  Dim var_120 As Variant
  Dim var_10C As Variant
  Dim var_140 As Long
  Dim var_A8 As String
  Dim var_160 As Variant
  Dim var_110 As MSHFlexGrid
  loc_10F96D0: On Error Goto loc_10F99E9
  loc_10F96DF: If (KeyCode = 0) Then
  loc_10F96F5:   var_A0 = CLng(Me.FGrid.Col)
  loc_10F9705:   If (var_A0 = CLng(1)) Then
  loc_10F971B:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F9734:     Set var_8C = Me.TxtGrid
  loc_10F973A:     Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8, CVar(CLng(1)))
  loc_10F9742:     var_BC = var_A4.Text
  loc_10F974A:     var_FC = CVar(var_A8) 'String
  loc_10F9752:     Set var_110 = Me.FGrid
  loc_10F9758:     LateIdCallSt
  loc_10F9772:     var_BC = 3
  loc_10F977C:     Set var_8C = Me.DGItem
  loc_10F979D:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F97AE:     Set var_8C = Me.DGItem
  loc_10F97B4:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFF64
  loc_10F97BC:     var_120 = CVar(CStr(CVar(CLng(4)))) 'String
  loc_10F97C4:     Set var_AC = Me.FGrid
  loc_10F97CA:     LateIdCallSt
  loc_10F97E4:     var_BC = 0
  loc_10F97EE:     Set var_8C = Me.DGItem
  loc_10F980F:     var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F9814:     var_140 = &HB
  loc_10F9836:     var_BC = CVar((CLng(Me.FGrid2.Rows) - 1)) 'Long
  loc_10F983E:     var_DC = CVar(CLng(0)) 'Long
  loc_10F9862:     var_160 = CVar(CStr(Val(CStr(Me.FGrid2.TextMatrix))))) 'String
  loc_10F986A:     Set var_110 = Me.FGrid
  loc_10F9870:     LateIdCallSt
  loc_10F98A4:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F98B5:     Set var_8C = Me.DGItem
  loc_10F98BB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFF64
  loc_10F98C3:     var_120 = CVar(CStr(CVar(CLng(9)))) 'String
  loc_10F98D1:     LateIdCallSt
  loc_10F990E:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10F991F:       Call TxtGrid_KeyDown(KeyCode, global_150)
  loc_10F9928:       Set var_A4 = Me.TxtGrid
  loc_10F9933:       var_A8 = "Name"
  loc_10F994E:       Proc_6_89_1470B00(var_A4, KeyCode, global_72, Shift, var_A8, &HFF, 0, Me.FGrid)
  loc_10F995D:     End If
  loc_10F9960:   Else
  loc_10F9967:     If (var_A0 = CLng(2)) Then
  loc_10F9995:       var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F99A6:       Set var_8C = Me.TxtGrid
  loc_10F99AC:       Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8, var_DC, CVar(CLng(Me.FGrid.Row)), var_120, CVar(CLng(Me.FGrid.Row)))
  loc_10F99B4:       var_110 = var_A4.Text
  loc_10F99BC:       var_120 = CVar(var_A8) 'String
  loc_10F99C4:       Set var_178 = Me.FGrid
  loc_10F99CA:       LateIdCallSt
  loc_10F99E8:     End If
  loc_10F99E8:   End If
  loc_10F99E8: End If
  loc_10F99E8: Exit Sub
  loc_10F99E9: ' Referenced from: 10F96D0
  loc_10F99E9: Proc_6_60_E63754(var_178, var_120, var_160, var_DC)
  loc_10F99EE: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20FCC
  'Data Table: 54B9E4
  Dim arg_10 As Integer
  loc_E20FB4: If (Cancel = 0) Then
  loc_E20FBD:   Call Proc_113_61_117DA90(Cancel, var_88)
  loc_E20FC6:   arg_10 = Not(var_88)
  loc_E20FC9: End If
  loc_E20FC9: Exit Sub
End Sub

Private Sub CmdMore_UnknownEvent_9 'F044A0
  'Data Table: 54B9E4
  Dim var_88 As Frame
  Dim var_A4 As TextBox
  loc_F043DB: If (Me.Frame1.Visible = 0) Then
  loc_F043EA:   Me.Frame1.Visible = True
  loc_F043F6:   Set var_88 = Me.TopCtrl1
  loc_F043FC:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_F04415:   If (CStr() <> "Browse") Then
  loc_F04423:     Set var_88 = Me.Txt
  loc_F04429:     Call 0.Method_CmdMore_UnknownEvent_90 (CInt(&H1C))
  loc_F04431:     var_A4.SetFocus
  loc_F0443D:   End If
  loc_F04440: Else
  loc_F0444C:   Me.Frame1.Visible = False
  loc_F04458:   Set var_88 = Me.TopCtrl1
  loc_F0445E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A4)
  loc_F04477:   If (CStr() <> "Browse") Then
  loc_F04485:     Set var_88 = Me.Txt
  loc_F0448B:     Call 0.Method_CmdMore_UnknownEvent_90 (CInt(&H17))
  loc_F04493:     var_A4.SetFocus
  loc_F0449F:   End If
  loc_F0449F: End If
  loc_F0449F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1293E60
  'Data Table: 54B9E4
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_BC As String
  Dim var_94 As Fields15
  loc_1293887: Set var_88 = Me.Txt
  loc_129388D: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1293895: var_8C.SelStart = 0
  loc_12938AE: Set var_88 = Me.Txt
  loc_12938B4: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12938BC: var_90 = var_8C.Text
  loc_12938CF: Set var_94 = Me.Txt
  loc_12938D5: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_12938DD: var_98.SelLength = Len(var_90)
  loc_12938FA: Set var_88 = Me.Txt
  loc_1293900: Call 0.Method_Txt_GotFocus0 (Index)
  loc_129390E: Proc_6_74_E23240(var_8C)
  loc_129391A: Call Proc_113_66_F29230(var_8C)
  loc_1293922: var_9A = Index
  loc_129392D: If (var_9A = CInt(0)) Then
  loc_1293943:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_129399C:   Set var_88 = Me.Txt
  loc_12939A2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90)
  loc_12939AA:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12939C2:   If (var_9A Or (var_90 = vbNullString)) Then
  loc_12939C5:     Exit Sub
  loc_12939C6:   End If
  loc_12939D3:   Set var_88 = Me.Txt
  loc_12939D9:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12939E1:   var_90 = var_8C.Text
  loc_12939E9:   var_D4 = CVar(var_90) 'String
  loc_1293A2E:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1293A37:     Me.MoveFirst
  loc_1293A5C:     Set var_88 = Me.Txt
  loc_1293A62:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Name =")
  loc_1293A6A:     0 = var_8C.Text
  loc_1293A78:     Proc_6_17_EAAE40(var_D4, CVar(var_90))
  loc_1293A8E:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_1293AA6:   End If
  loc_1293AA9: Else
  loc_1293AB1:   If (var_9A = CInt(&H2D)) Then
  loc_1293B02:     Set var_88 = Me.Txt
  loc_1293B08:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1293B28:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1293B2B:       Exit Sub
  loc_1293B2C:     End If
  loc_1293B39:     Set var_88 = Me.Txt
  loc_1293B3F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1293B47:     var_90 = var_8C.Text
  loc_1293B4F:     var_D4 = CVar(var_90) 'String
  loc_1293B94:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1293B9D:       Me.MoveFirst
  loc_1293BC2:       Set var_88 = Me.Txt
  loc_1293BC8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Name =")
  loc_1293BD0:       0 = var_8C.Text
  loc_1293BDE:       Proc_6_17_EAAE40(var_D4, CVar(var_90))
  loc_1293BF4:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_1293C0C:     End If
  loc_1293C0F:   Else
  loc_1293C17:     If (var_9A = CInt(1)) Then
  loc_1293C68:       Set var_88 = Me.Txt
  loc_1293C6E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1293C8E:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1293C91:         Exit Sub
  loc_1293C92:       End If
  loc_1293C9F:       Set var_88 = Me.Txt
  loc_1293CA5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1293CBF:       var_BC = "FPNo"
  loc_1293CD6:       var_98 = Me.Fields.Item(var_BC)
  loc_1293CFA:       If CBool(CVar(var_8C.Text) <> var_98.Value) Then
  loc_1293D03:         Me.MoveFirst
  loc_1293D15:         Set var_88 = Me.Txt
  loc_1293D1B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1293D56:         Me.Find "FPNo =" & CStr(Val(var_8C.Text)), 0, 1
  loc_1293D6B:       End If
  loc_1293D6E:     Else
  loc_1293D76:       If Not (var_9A = CInt(&H11)) Then
  loc_1293D81:         If Not (var_9A = CInt(6)) Then
  loc_1293D8C:           If Not (var_9A = CInt(&H12)) Then
  loc_1293D97:             If Not (var_9A = CInt(7)) Then
  loc_1293DA2:               If Not (var_9A = CInt(9)) Then
  loc_1293DAD:                 If Not (var_9A = CInt(&H28)) Then
  loc_1293DB8:                   If Not (var_9A = CInt(&H14)) Then
  loc_1293DC3:                     If Not (var_9A = CInt(&H15)) Then
  loc_1293DCE:                       If Not (var_9A = CInt(&H16)) Then
  loc_1293DD9:                         If Not (var_9A = CInt(&HC)) Then
  loc_1293DE4:                           If (var_9A = CInt(8)) Then
  loc_1293DE7:                           End If
  loc_1293DE7:                         End If
  loc_1293DE7:                       End If
  loc_1293DE7:                     End If
  loc_1293DE7:                   End If
  loc_1293DE7:                 End If
  loc_1293DE7:               End If
  loc_1293DE7:             End If
  loc_1293DE7:           End If
  loc_1293DE7:         End If
  loc_1293DF6:         Set var_88 = Me.Txt
  loc_1293DFC:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_1293E04:         var_8C.SelStart = var_BC
  loc_1293E1D:         Set var_88 = Me.Txt
  loc_1293E23:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1293E3E:         Set var_94 = Me.Txt
  loc_1293E44:         Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1293E4C:         var_98.SelLength = Len(var_8C.Text)
  loc_1293E5F:       End If
  loc_1293E5F:     End If
  loc_1293E5F:   End If
  loc_1293E5F: End If
  loc_1293E5F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DF5C8
  'Data Table: 54B9E4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_10DF2D6: If (CLng(Shift) = &H1B) Then
  loc_10DF2D9:   Call Proc_113_66_F29230()
  loc_10DF2DE:   Exit Sub
  loc_10DF2DF: End If
  loc_10DF2E2: var_86 = KeyCode
  loc_10DF2ED: If (var_86 = CInt(0)) Then
  loc_10DF308:   Set var_9C = Nothing
  loc_10DF313:   Set var_98 = Nothing
  loc_10DF341:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_10DF358: Else
  loc_10DF360:   If (var_86 = CInt(1)) Then
  loc_10DF37B:     Set var_9C = Nothing
  loc_10DF3B4:     Proc_6_69_134A630(Me.DGFPNo, Me.Txt, KeyCode, global_84, Shift, 0, 1, Nothing)
  loc_10DF3CB:   Else
  loc_10DF3D3:     If (var_86 = CInt(&H2D)) Then
  loc_10DF3EE:       Set var_9C = Nothing
  loc_10DF427:       Proc_6_69_134A630(Me.DG_Catalog, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_10DF43B:     End If
  loc_10DF43B:   End If
  loc_10DF43B: End If
  loc_10DF46C: Set var_98 = Me.DGFPNo
  loc_10DF483: Set var_9C = Me.DG_Catalog
  loc_10DF4C7: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_10DF4E8:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&H28))) Then
  loc_10DF4F1:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, var_9C)
  loc_10DF4F6:   End If
  loc_10DF4FA:   Set var_8C = Me.TopCtrl1
  loc_10DF500:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(0)
  loc_10DF522:   If ((CStr(1) = "Add") And (KeyCode <> CInt(0))) Then
  loc_10DF53A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10DF543:       Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_10DF548:     End If
  loc_10DF54B:   Else
  loc_10DF54F:     Set var_8C = Me.TopCtrl1
  loc_10DF555:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9C)
  loc_10DF577:     If ((CStr(0) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_10DF58F:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10DF598:         Proc_6_76_E533C8(Shift)
  loc_10DF59D:       End If
  loc_10DF59D:     End If
  loc_10DF59D:   End If
  loc_10DF5BB:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H28))) Then
  loc_10DF5C1:     Call Proc_113_67_F0CDA0(KeyCode)
  loc_10DF5C6:   End If
  loc_10DF5C6: End If
  loc_10DF5C6: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11A0D24
  'Data Table: 54B9E4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_B8 As TextBox
  loc_11A0904: On Error Goto loc_11A0D1C
  loc_11A090A: Proc_6_58_E06050(arg_10)
  loc_11A0912: var_86 = KeyAscii
  loc_11A091D: If (var_86 = CInt(0)) Then
  loc_11A093C:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_11A0952:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_11A096C:     var_B0 = "Name"
  loc_11A0987:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10)
  loc_11A0996:   End If
  loc_11A0999: Else
  loc_11A09A1:   If (var_86 = CInt(1)) Then
  loc_11A09C0:     If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_11A09D6:       Me.DGFPNo.Tag = CVar(CStr(KeyAscii))
  loc_11A09E5:       Set var_B8 = Me.Txt
  loc_11A0A0B:       Proc_6_89_1470B00(var_B8, KeyAscii, global_84, arg_10, "FPNO")
  loc_11A0A1A:     End If
  loc_11A0A1D:   Else
  loc_11A0A25:     If (var_86 = CInt(&H26)) Then
  loc_11A0A32:       Set var_8C = Me.Txt
  loc_11A0A38:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_11A0A53:       Proc_6_42_129B55C(var_B8, arg_10, 8, 0)
  loc_11A0A62:     Else
  loc_11A0A6A:       If (var_86 = CInt(&H2D)) Then
  loc_11A0A89:         If (CBool(Me.DG_Catalog.Visible) = &HFF) Then
  loc_11A0A90:           Set var_B8 = Me.Txt
  loc_11A0A9B:           var_B0 = "Name"
  loc_11A0AB6:           Proc_6_89_1470B00(var_B8, KeyAscii, global_76, arg_10, var_B0)
  loc_11A0AC5:         End If
  loc_11A0AC8:       Else
  loc_11A0AD0:         If (var_86 = CInt(&HB)) Then
  loc_11A0ADD:           Set var_8C = Me.Txt
  loc_11A0AE3:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_11A0AFE:           Proc_6_42_129B55C(var_B8, arg_10, 6, 2)
  loc_11A0B0D:         Else
  loc_11A0B15:           If Not (var_86 = CInt(&H12)) Then
  loc_11A0B20:             If (var_86 = CInt(&H11)) Then
  loc_11A0B23:             End If
  loc_11A0B31:             Set var_8C = Me.Txt
  loc_11A0B37:             Call 0.Method_Txt_KeyPress0 (CInt(6), var_B8, var_B0)
  loc_11A0B3F:             var_B0 = var_B8.Text
  loc_11A0B5B:             If (CDbl(Val(var_B0)) = CDbl(0)) Then
  loc_11A0B68:               Set var_8C = Me.Txt
  loc_11A0B6E:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8)
  loc_11A0B89:               Proc_6_42_129B55C(var_B8, arg_10, 2)
  loc_11A0B95:             End If
  loc_11A0B98:           Else
  loc_11A0BA0:             If (var_86 = CInt(6)) Then
  loc_11A0BB1:               Set var_8C = Me.Txt
  loc_11A0BB7:               Call 0.Method_Txt_KeyPress0 (CInt(&H11), var_B8, var_B0)
  loc_11A0BBF:               2 = var_B8.Text
  loc_11A0BDB:               If (CDbl(Val(var_B0)) = CDbl(0)) Then
  loc_11A0BE8:                 Set var_8C = Me.Txt
  loc_11A0BEE:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8)
  loc_11A0C09:                 Proc_6_42_129B55C(var_B8, arg_10, 7)
  loc_11A0C15:               End If
  loc_11A0C18:             Else
  loc_11A0C20:               If Not (var_86 = CInt(7)) Then
  loc_11A0C2B:                 If Not (var_86 = CInt(9)) Then
  loc_11A0C36:                   If Not (var_86 = CInt(&H28)) Then
  loc_11A0C41:                     If Not (var_86 = CInt(&HC)) Then
  loc_11A0C4C:                       If (var_86 = CInt(8)) Then
  loc_11A0C4F:                       End If
  loc_11A0C4F:                     End If
  loc_11A0C4F:                   End If
  loc_11A0C4F:                 End If
  loc_11A0C59:                 Set var_8C = Me.Txt
  loc_11A0C5F:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_11A0C7A:                 Proc_6_42_129B55C(var_B8, arg_10, 7)
  loc_11A0C89:               Else
  loc_11A0C91:                 If Not (var_86 = CInt(&H14)) Then
  loc_11A0C9C:                   If (var_86 = CInt(&H15)) Then
  loc_11A0C9F:                   End If
  loc_11A0CA9:                   Set var_8C = Me.Txt
  loc_11A0CAF:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_11A0CCA:                   Proc_6_42_129B55C(var_B8, arg_10, 4)
  loc_11A0CD9:                 Else
  loc_11A0CE1:                   If (var_86 = CInt(&H16)) Then
  loc_11A0CEE:                     Set var_8C = Me.Txt
  loc_11A0CF4:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_11A0D0F:                     Proc_6_42_129B55C(var_B8, arg_10, 5)
  loc_11A0D1B:                   End If
  loc_11A0D1B:                 End If
  loc_11A0D1B:               End If
  loc_11A0D1B:             End If
  loc_11A0D1B:           End If
  loc_11A0D1B:         End If
  loc_11A0D1B:       End If
  loc_11A0D1B:     End If
  loc_11A0D1B:   End If
  loc_11A0D1B: End If
  loc_11A0D1B: Exit Sub
  loc_11A0D1C: ' Referenced from: 11A0904
  loc_11A0D1C: Proc_6_60_E63754(2, 0)
  loc_11A0D21: Exit Sub
  loc_11A0D22: Put , ,  'put var_86 bytes
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1033DB4
  'Data Table: 54B9E4
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_104 As Double
  Dim var_9C As TextBox
  Dim var_10C As Double
  Dim var_C0 As Variant
  Dim var_FC As String
  Dim var_F8 As TextBox
  Dim var_114 As TextBox
  loc_1033B97: var_86 = KeyCode
  loc_1033BA2: If Not (var_86 = CInt(&H11)) Then
  loc_1033BAD:   If Not (var_86 = CInt(6)) Then
  loc_1033BB8:     If Not (var_86 = CInt(&H12)) Then
  loc_1033BC3:       If Not (var_86 = CInt(7)) Then
  loc_1033BCE:         If (var_86 = CInt(&HC)) Then
  loc_1033BD1:         End If
  loc_1033BD1:       End If
  loc_1033BD1:     End If
  loc_1033BD1:   End If
  loc_1033BD1:   Call Proc_113_69_1391924(var_86)
  loc_1033BD9: Else
  loc_1033BE1:   If Not (var_86 = CInt(&H15)) Then
  loc_1033BEC:     If (var_86 = CInt(&H16)) Then
  loc_1033BEF:     End If
  loc_1033BFD:     Set var_8C = Me.Txt
  loc_1033C03:     Call 0.Method_Txt_KeyUp0 (CInt(&H15), var_90)
  loc_1033C0B:     var_94 = var_90.Text
  loc_1033C29:     Set var_98 = Me.Txt
  loc_1033C2F:     Call 0.Method_Txt_KeyUp0 (CInt(&H16), var_9C)
  loc_1033C37:     var_A0 = var_9C.Text
  loc_1033C72:     var_FC = CStr(Format(CVar((Val(var_94) * Val(var_A0))), "0.00"))
  loc_1033C81:     Set var_F4 = Me.Txt
  loc_1033C87:     Call 0.Method_Txt_KeyUp0 (CInt(&HE), var_F8, var_FC, 1)
  loc_1033CC3:     Set var_8C = Me.Txt
  loc_1033CC9:     Call 0.Method_Txt_KeyUp0 (CInt(5), var_90, var_94)
  loc_1033CD1:     var_10C = var_90.Text
  loc_1033CDE:     var_104 = Val(var_94)
  loc_1033CEF:     Set var_98 = Me.Txt
  loc_1033CF5:     Call 0.Method_Txt_KeyUp0 (CInt(&HD), var_9C, var_A0)
  loc_1033D0A:     var_10C = Val(var_A0)
  loc_1033D1B:     Set var_F4 = Me.Txt
  loc_1033D21:     Call 0.Method_Txt_KeyUp0 (CInt(&HE), var_F8, var_FC)
  loc_1033D59:     var_C0 = CVar(((var_9C.Text + 1) + Val(var_FC))) 'Double
  loc_1033D77:     Set var_110 = Me.Txt
  loc_1033D7D:     Call 0.Method_Txt_KeyUp0 (CInt(&HF), var_114, CStr(Format(CVar((Val(var_94) * Val(var_A0))), "0.00")), 1)
  loc_1033D85:     var_114.Text = 1
  loc_1033DB1:   End If
  loc_1033DB1: End If
  loc_1033DB1: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50BA4
  'Data Table: 54B9E4
  loc_E50B82: Set var_88 = Me.Txt
  loc_E50B88: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50B96: Proc_6_73_E23294(var_8C)
  loc_E50BA2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '154A548
  'Data Table: 54B9E4
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A0 As String
  Dim var_BC As TextBox
  Dim var_CC As Variant
  Dim var_FC As Long
  Dim var_110 As TextBox
  Dim var_9C As TextBox
  Dim var_13C As Double
  Dim var_114 As String
  Dim var_14C As Double
  Dim var_144 As String
  Dim var_140 As TextBox
  Dim var_160 As Double
  Dim var_154 As TextBox
  loc_1549540: On Error Goto loc_154A541
  loc_1549546: var_8E = Cancel
  loc_1549551: If (var_8E = CInt(0)) Then
  loc_154955F:   Set var_94 = Me.Txt
  loc_1549565:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_154956D:   var_A0 = "Voucher Type"
  loc_154958E:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_154959C:     Set var_94 = Me.Txt
  loc_15495A2:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15495AA:     var_98.SetFocus
  loc_15495B8:     arg_10 = &HFF
  loc_15495BB:     Exit Sub
  loc_15495BC:   End If
  loc_154960A:   Set var_94 = Me.Txt
  loc_1549610:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1549618:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1549630:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1549640:     Set var_94 = Me.Txt
  loc_1549646:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154964E:     var_98.Text = vbNullString
  loc_1549667:     Set var_94 = Me.Txt
  loc_154966D:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1549675:     var_98.Tag = vbNullString
  loc_1549687:     global_140 = vbNullString
  loc_154968E:   Else
  loc_15496C9:     Set var_9C = Me.Txt
  loc_15496CF:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_15496D7:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1549728:     Set var_9C = Me.Txt
  loc_154972E:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1549736:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1549769:     var_98 = Me.Fields.Item("NCat")
  loc_1549780:     global_140 = CStr(var_98.Value)
  loc_1549795:     Set var_94 = Me.TopCtrl1
  loc_154979B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_8E)
  loc_15497B4:     If (CStr() = "Add") Then
  loc_15497C2:       If (global_160 = "Automatic") Then
  loc_15497D2:         Set var_94 = Me.Txt
  loc_15497D8:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_15497E0:         var_98.Enabled = False
  loc_15497EF:       Else
  loc_15497FC:         Set var_94 = Me.Txt
  loc_1549802:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_154980A:         var_98.Enabled = True
  loc_1549821:         Set var_94 = Me.Txt
  loc_1549827:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_154982F:         var_98.SetFocus
  loc_154983B:       End If
  loc_154983B:     End If
  loc_154983B:   End If
  loc_154983F:   Set var_94 = Me.TopCtrl1
  loc_1549845:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_98)
  loc_154984D:   var_A0 = CStr()
  loc_154985E:   If (var_A0 = "Add") Then
  loc_1549867:     Call Proc_113_71_11096F8(MemVar_1F95044)
  loc_154987A:     Set var_94 = Me.Txt
  loc_1549880:     Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_1549888:     var_98.Text = var_A0
  loc_1549897:   End If
  loc_154989A: Else
  loc_15498A2:   If (var_8E = CInt(1)) Then
  loc_15498B0:     Set var_94 = Me.Txt
  loc_15498B6:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_15498BE:     var_A0 = "FP No."
  loc_15498DF:     If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_15498ED:       Set var_94 = Me.Txt
  loc_15498F3:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_15498FB:       var_98.SetFocus
  loc_1549909:       arg_10 = &HFF
  loc_154990C:       Exit Sub
  loc_154990D:     End If
  loc_154995B:     Set var_94 = Me.Txt
  loc_1549961:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1549969:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1549981:     If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1549991:       Set var_94 = Me.Txt
  loc_1549997:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154999F:       var_98.Text = vbNullString
  loc_15499B8:       Set var_94 = Me.Txt
  loc_15499BE:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15499C6:       var_98.Tag = vbNullString
  loc_15499D5:     Else
  loc_1549A10:       Set var_9C = Me.Txt
  loc_1549A16:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1549A1E:       var_BC.Text = CStr(Me.Fields.Item("FPNo").Value)
  loc_1549A6F:       Set var_9C = Me.Txt
  loc_1549A75:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1549A7D:       var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1549ACF:       Set var_9C = Me.Txt
  loc_1549AD5:       Call 0.Method_Txt_Validate0 (CInt(&H22), var_BC)
  loc_1549ADD:       var_BC.Text = CStr(Me.Fields.Item("Code").Value)
  loc_1549B48:       Set var_9C = Me.Txt
  loc_1549B4E:       Call 0.Method_Txt_Validate0 (CInt(0), var_BC)
  loc_1549B56:       var_BC.Text = CStr(Trim(Mid(CVar(Me.Fields.Item("Code")), 4, 5)))
  loc_1549B8C:       var_98 = Me.Fields.Item("Code")
  loc_1549BB0:       var_10C = Trim(Mid(CVar(var_98), 9, 5))
  loc_1549BB9:       var_A0 = CStr(var_10C)
  loc_1549BBF:       global_132 = var_A0
  loc_1549BD4:       Call Proc_113_59_1555B84(var_A0)
  loc_1549BD9:       Call Proc_113_69_1391924()
  loc_1549BDE:     End If
  loc_1549BE1:   Else
  loc_1549BE9:     If (var_8E = CInt(2)) Then
  loc_1549BFA:       Set var_94 = Me.Txt
  loc_1549C00:       Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1549C1E:       var_FC = Len(Trim(CVar(var_98.Text)))
  loc_1549C38:       If (var_FC = 0) Then
  loc_1549C4E:         Set var_94 = Me.Txt
  loc_1549C54:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1549C5C:         var_98.Text = CStr(MemVar_1F950EC)
  loc_1549C6E:       Else
  loc_1549C78:         Set var_94 = Me.Txt
  loc_1549C7E:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1549C9E:         Set var_BC = Me.Txt
  loc_1549CA4:         Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_1549CAC:         var_110.Text = Proc_6_33_15125B8(var_98)
  loc_1549CBF:       End If
  loc_1549CCC:       Set var_94 = Me.Txt
  loc_1549CD2:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1549CF5:       Set var_9C = Me.Txt
  loc_1549CFB:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_114)
  loc_1549D03:       (CDate(var_98.Text) >= MemVar_1F950F4) = var_BC.Text
  loc_1549D25:       If Not((var_98 And (CDate(var_114) <= MemVar_1F950FC))) Then
  loc_1549D49:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_FC, var_10C)
  loc_1549D63:         Set var_94 = Me.Txt
  loc_1549D69:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1549D71:         var_98.SetFocus
  loc_1549D7F:         arg_10 = &HFF
  loc_1549D82:         Exit Sub
  loc_1549D83:       End If
  loc_1549D87:       Set var_94 = Me.TopCtrl1
  loc_1549D8D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_1549D95:       var_A0 = CStr(var_98)
  loc_1549DAB:       Set var_98 = Me.Txt
  loc_1549DB1:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_1549DDA:       If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_1549DE3:         Call Proc_113_71_11096F8(MemVar_1F95044)
  loc_1549DF6:         Set var_94 = Me.Txt
  loc_1549DFC:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_1549E04:         var_98.Text = var_A0
  loc_1549E13:       End If
  loc_1549E16:     Else
  loc_1549E1E:       If (var_8E = CInt(&H2D)) Then
  loc_1549E2C:         Set var_94 = Me.Txt
  loc_1549E32:         Call 0.Method_Txt_Validate0 (CInt(&H2D), var_98)
  loc_1549E3A:         var_A0 = "CatalogName Name"
  loc_1549E5B:         If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_1549E69:           Set var_94 = Me.Txt
  loc_1549E6F:           Call 0.Method_Txt_Validate0 (CInt(&H2D), var_98)
  loc_1549E77:           var_98.SetFocus
  loc_1549E85:           arg_10 = &HFF
  loc_1549E88:           Exit Sub
  loc_1549E89:         End If
  loc_1549ED7:         Set var_94 = Me.Txt
  loc_1549EDD:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1549EE5:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1549EFD:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1549F0D:           Set var_94 = Me.Txt
  loc_1549F13:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1549F1B:           var_98.Text = vbNullString
  loc_1549F34:           Set var_94 = Me.Txt
  loc_1549F3A:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1549F42:           var_98.Tag = vbNullString
  loc_1549F51:         Else
  loc_1549F8C:           Set var_9C = Me.Txt
  loc_1549F92:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1549F9A:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1549FCD:           var_98 = Me.Fields.Item("Code")
  loc_1549FDE:           var_A0 = CStr(var_98.Value)
  loc_1549FEB:           Set var_9C = Me.Txt
  loc_1549FF1:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1549FF9:           var_BC.Tag = var_A0
  loc_154A00F:           Call Proc_113_56_11D93C8(var_A0)
  loc_154A014:           Call Proc_113_58_16A8DC8()
  loc_154A019:         End If
  loc_154A01C:       Else
  loc_154A024:         If (var_8E = CInt(&H25)) Then
  loc_154A034:           Set var_94 = Me.Txt
  loc_154A03A:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154A072:           If (Len(Trim(CVar(var_98.Text))) = 0) Then
  loc_154A087:             Set var_94 = Me.Txt
  loc_154A08D:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154A095:             var_98.Text = CStr(MemVar_1F950EC)
  loc_154A0A7:           Else
  loc_154A0B1:             Set var_94 = Me.Txt
  loc_154A0B7:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_154A0D7:             Set var_BC = Me.Txt
  loc_154A0DD:             Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_154A0E5:             var_110.Text = Proc_6_33_15125B8(var_98)
  loc_154A0F8:           End If
  loc_154A0FB:         Else
  loc_154A103:           If Not (var_8E = CInt(&H11)) Then
  loc_154A10E:             If Not (var_8E = CInt(6)) Then
  loc_154A119:               If Not (var_8E = CInt(&H12)) Then
  loc_154A124:                 If Not (var_8E = CInt(7)) Then
  loc_154A12F:                   If Not (var_8E = CInt(5)) Then
  loc_154A13A:                     If Not (var_8E = CInt(&HF)) Then
  loc_154A145:                       If Not (var_8E = CInt(9)) Then
  loc_154A150:                         If Not (var_8E = CInt(&H28)) Then
  loc_154A15B:                           If Not (var_8E = CInt(&HB)) Then
  loc_154A166:                             If Not (var_8E = CInt(&H16)) Then
  loc_154A171:                               If Not (var_8E = CInt(&HD)) Then
  loc_154A17C:                                 If Not (var_8E = CInt(&HC)) Then
  loc_154A187:                                   If (var_8E = CInt(8)) Then
  loc_154A18A:                                   End If
  loc_154A18A:                                 End If
  loc_154A18A:                               End If
  loc_154A18A:                             End If
  loc_154A18A:                           End If
  loc_154A18A:                         End If
  loc_154A18A:                       End If
  loc_154A18A:                     End If
  loc_154A18A:                   End If
  loc_154A18A:                 End If
  loc_154A18A:               End If
  loc_154A18A:             End If
  loc_154A194:             Set var_94 = Me.Txt
  loc_154A19A:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154A1B2:             If Not(IsNumeric(CVar(var_98))) Then
  loc_154A1C6:               Set var_94 = Me.Txt
  loc_154A1CC:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154A1D4:               var_98.Text = CStr(0)
  loc_154A1E3:             End If
  loc_154A1F0:             Set var_94 = Me.Txt
  loc_154A1F6:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154A20B:             var_13C = Val(var_98.Text)
  loc_154A243:             Set var_9C = Me.Txt
  loc_154A249:             Call 0.Method_Txt_Validate0 (Cancel, var_BC, CStr(Format(CVar(var_13C), "0.00")), 1)
  loc_154A251:             var_BC.Text = 1
  loc_154A271:             Call Proc_113_69_1391924(var_13C)
  loc_154A279:           Else
  loc_154A281:             If Not (var_8E = CInt(&H14)) Then
  loc_154A28C:               If (var_8E = CInt(&H15)) Then
  loc_154A28F:               End If
  loc_154A299:               Set var_94 = Me.Txt
  loc_154A29F:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154A2B7:               If Not(IsNumeric(CVar(var_98))) Then
  loc_154A2CB:                 Set var_94 = Me.Txt
  loc_154A2D1:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154A2D9:                 var_98.Text = CStr(0)
  loc_154A2E8:               End If
  loc_154A2F5:               Set var_94 = Me.Txt
  loc_154A2FB:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_154A303:               var_A0 = var_98.Text
  loc_154A33A:               var_114 = CStr(Format(CVar(Val(var_A0)), "0"))
  loc_154A348:               Set var_9C = Me.Txt
  loc_154A34E:               Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_114, 1)
  loc_154A356:               var_BC.Text = 1
  loc_154A384:               Set var_94 = Me.Txt
  loc_154A38A:               Call 0.Method_Txt_Validate0 (CInt(&H15), var_98, var_A0)
  loc_154A392:               var_13C = var_98.Text
  loc_154A39F:               var_13C = Val(var_A0)
  loc_154A3B0:               Set var_9C = Me.Txt
  loc_154A3B6:               Call 0.Method_Txt_Validate0 (CInt(&H16), var_BC, var_114)
  loc_154A3F9:               var_144 = CStr(Format(CVar((var_BC.Text * Val(var_114))), "0.00"))
  loc_154A408:               Set var_110 = Me.Txt
  loc_154A40E:               Call 0.Method_Txt_Validate0 (CInt(&HE), var_140, var_144, 1)
  loc_154A44A:               Set var_94 = Me.Txt
  loc_154A450:               Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_A0)
  loc_154A458:               var_14C = var_98.Text
  loc_154A465:               var_13C = Val(var_A0)
  loc_154A476:               Set var_9C = Me.Txt
  loc_154A47C:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_BC, var_114)
  loc_154A491:               var_14C = Val(var_114)
  loc_154A4A2:               Set var_110 = Me.Txt
  loc_154A4A8:               Call 0.Method_Txt_Validate0 (CInt(&HE), var_140, var_144)
  loc_154A4BD:               var_160 = Val(var_144)
  loc_154A4E0:               var_CC = CVar(((var_BC.Text + 1) + var_160)) 'Double
  loc_154A4FE:               Set var_150 = Me.Txt
  loc_154A504:               Call 0.Method_Txt_Validate0 (CInt(&HF), var_154, CStr(Format(CVar((var_BC.Text * Val(var_114))), "0.00")), 1)
  loc_154A50C:               var_154.Text = 1
  loc_154A538:             End If
  loc_154A538:           End If
  loc_154A538:         End If
  loc_154A538:       End If
  loc_154A538:     End If
  loc_154A538:   End If
  loc_154A538: End If
  loc_154A53D: Set var_88 = Nothing
  loc_154A540: Exit Sub
  loc_154A541: ' Referenced from: 1549540
  loc_154A541: Proc_6_60_E63754(var_160)
  loc_154A546: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10BF9AC
  'Data Table: 54B9E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_10BF6E3: Me.DGItem.Visible = False
  loc_10BF702: If (Me.RecordCount > 0) Then
  loc_10BF73F:   Set var_B4 = Me.TxtGrid
  loc_10BF745:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10BF74D:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10BF776:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BF77E:   var_EC = CVar(CLng(1)) 'Long
  loc_10BF7B1:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10BF7B9:   Set var_B8 = Me.FGrid
  loc_10BF7BF:   LateIdCallSt
  loc_10BF7EE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BF7F6:   var_EC = CVar(CLng(9)) 'Long
  loc_10BF829:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10BF831:   Set var_B8 = Me.FGrid
  loc_10BF837:   LateIdCallSt
  loc_10BF885:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BF88D:   var_FC = CVar(CLng(4)) 'Long
  loc_10BF8C8:   LateIdCallSt
  loc_10BF920:   var_B0 = Me.Fields.Item("Unit")
  loc_10BF931:   var_11C = CVar(Proc_6_38_E69628(CVar(var_B0), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), "0.00"))), 1, 1)) 'String
  loc_10BF939:   Set var_B8 = Me.FGrid
  loc_10BF93F:   LateIdCallSt
  loc_10BF959: End If
  loc_10BF965: Set var_A8 = Me.TxtGrid
  loc_10BF96B: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_11C, var_FC)
  loc_10BF973: var_DC = var_B0.Visible
  loc_10BF985: If (var_15E = &HFF) Then
  loc_10BF991:   Set var_A8 = Me.TxtGrid
  loc_10BF997:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_10BF99F:   var_B0.SetFocus
  loc_10BF9AB: End If
  loc_10BF9AB: Exit Sub
End Sub

Public Function global_52Get() '54D828
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '54D837
  global_52 = Value
End Sub

Public Function global_54Get() '54D846
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '54D855
  global_54 = Value
End Sub

Public Function global_56Get() '54D864
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '54D873
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E748BC
  'Data Table: 54B9E4
  Dim Me As Recordset15
  loc_E74866: Me.MoveFirst
  loc_E74890: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E748B0: If (Me.EOF = 0) Then
  loc_E748B3:   Call Proc_113_62_19F0900(var_9C)
  loc_E748B8: End If
  loc_E748B8: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E96958
  'Data Table: 54B9E4
  Dim Me As Recordset15
  Dim MemVar_0 As String
  loc_E968E6: On Error Goto loc_E9694F
  loc_E968EF: Me.MoveFirst
  loc_E96919: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96941: Proc_5_0_1107AD0(&HFF, Me, global_88)
  loc_E96949: Call Proc_113_62_19F0900(0)
  loc_E9694E: Exit Sub
  loc_E9694F: ' Referenced from: E968E6
  loc_E9694F: Proc_6_60_E63754(var_A0)
  loc_E96954: Exit Sub
  loc_E96955: MemVar_0 = 
End Sub

Public Sub Proc_113_55_1446CB4
  'Data Table: 54B9E4
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_1446197: Me.FGrid.Left = CVar(CDbl(5040))
  loc_14461B2: Me.FGrid.Top = CVar(CDbl(3885))
  loc_14461CD: Me.FGrid.Width = CVar(CDbl(6900))
  loc_14461E3: Set var_A8 = Me.Txt
  loc_14461E9: Call 0.Method_Proc_113_55_1446CB40 (CInt(&H2D), var_AC)
  loc_1446208: Me.DG_Catalog.Left = CVar(var_AC.Left)
  loc_1446224: Set var_B4 = Me.Txt
  loc_144622A: Call 0.Method_Proc_113_55_1446CB40 (CInt(&H2D), var_B8)
  loc_1446245: Set var_A8 = Me.Txt
  loc_144624B: Call 0.Method_Proc_113_55_1446CB40 (CInt(&H2D), var_AC)
  loc_1446263: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1446272: Me.DG_Catalog.Top = CVar(var_AC.Left)
  loc_1446292: Set var_A8 = Me.Txt
  loc_1446298: Call 0.Method_Proc_113_55_1446CB40 (CInt(1), var_AC)
  loc_14462B7: Me.DGFPNo.Left = CVar(var_AC.Left)
  loc_14462D3: Set var_B4 = Me.Txt
  loc_14462D9: Call 0.Method_Proc_113_55_1446CB40 (CInt(1), var_B8)
  loc_14462F4: Set var_A8 = Me.Txt
  loc_14462FA: Call 0.Method_Proc_113_55_1446CB40 (CInt(1), var_AC)
  loc_1446312: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1446321: Me.DGFPNo.Top = CVar(var_AC.Left)
  loc_1446341: Set var_A8 = Me.Txt
  loc_1446347: Call 0.Method_Proc_113_55_1446CB40 (CInt(0), var_AC)
  loc_1446366: Me.DGVType.Left = CVar(var_AC.Left)
  loc_1446382: Set var_B4 = Me.Txt
  loc_1446388: Call 0.Method_Proc_113_55_1446CB40 (CInt(0), var_B8)
  loc_14463A3: Set var_A8 = Me.Txt
  loc_14463A9: Call 0.Method_Proc_113_55_1446CB40 (CInt(0), var_AC)
  loc_14463C1: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_14463D0: Me.DGVType.Top = CVar(var_AC.Left)
  loc_14463E6: Set var_C4 = Me.FGrid
  loc_14463FD: global_108 = CStr(CLng(var_C4.BackColor))
  loc_1446413: var_C4.Cols = &HB
  loc_144641B: var_94 = CVar(CLng(0)) 'Long
  loc_1446420: var_E8 = &HFA
  loc_144642C: LateIdCallSt
  loc_1446434: var_94 = 0
  loc_1446440: var_E8 = CVar(CLng(1)) 'Long
  loc_1446445: var_108 = "Item Name"
  loc_144644E: LateIdCallSt
  loc_1446459: var_94 = CVar(CLng(1)) 'Long
  loc_1446464: var_E8 = CVar(CInt(1)) 'Integer
  loc_144646B: LateIdCallSt
  loc_1446476: var_94 = CVar(CLng(1)) 'Long
  loc_144647B: var_E8 = &H924
  loc_1446487: LateIdCallSt
  loc_144648F: var_94 = 0
  loc_144649B: var_E8 = CVar(CLng(2)) 'Long
  loc_14464A0: var_108 = "Remarks"
  loc_14464A9: LateIdCallSt
  loc_14464B4: var_94 = CVar(CLng(2)) 'Long
  loc_14464BF: var_E8 = CVar(CInt(1)) 'Integer
  loc_14464C6: LateIdCallSt
  loc_14464D1: var_94 = CVar(CLng(2)) 'Long
  loc_14464D6: var_E8 = 0
  loc_14464E2: LateIdCallSt
  loc_14464EA: var_94 = 0
  loc_14464F6: var_E8 = CVar(CLng(3)) 'Long
  loc_14464FB: var_108 = "Qty"
  loc_1446504: LateIdCallSt
  loc_144650F: var_94 = CVar(CLng(3)) 'Long
  loc_144651A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1446521: LateIdCallSt
  loc_144652C: var_94 = CVar(CLng(3)) 'Long
  loc_1446537: var_E8 = CVar(CInt(7)) 'Integer
  loc_144653E: LateIdCallSt
  loc_1446549: var_94 = CVar(CLng(3)) 'Long
  loc_144654E: var_E8 = &H2BC
  loc_144655A: LateIdCallSt
  loc_1446562: var_94 = 0
  loc_144656E: var_E8 = CVar(CLng(4)) 'Long
  loc_1446573: var_108 = "Rate"
  loc_144657C: LateIdCallSt
  loc_1446587: var_94 = CVar(CLng(4)) 'Long
  loc_1446592: var_E8 = CVar(CInt(7)) 'Integer
  loc_1446599: LateIdCallSt
  loc_14465A4: var_94 = CVar(CLng(4)) 'Long
  loc_14465AF: var_E8 = CVar(CInt(7)) 'Integer
  loc_14465B6: LateIdCallSt
  loc_14465C1: var_94 = CVar(CLng(4)) 'Long
  loc_14465C6: var_E8 = &H320
  loc_14465D2: LateIdCallSt
  loc_14465DA: var_94 = 0
  loc_14465E6: var_E8 = CVar(CLng(6)) 'Long
  loc_14465EB: var_108 = "Category"
  loc_14465F4: LateIdCallSt
  loc_14465FF: var_94 = CVar(CLng(6)) 'Long
  loc_144660A: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446611: LateIdCallSt
  loc_144661C: var_94 = CVar(CLng(6)) 'Long
  loc_1446627: var_E8 = CVar(CInt(1)) 'Integer
  loc_144662E: LateIdCallSt
  loc_1446639: var_94 = CVar(CLng(6)) 'Long
  loc_144663E: var_E8 = 0
  loc_144664A: LateIdCallSt
  loc_1446652: var_94 = 0
  loc_144665E: var_E8 = CVar(CLng(7)) 'Long
  loc_1446663: var_108 = "Tax"
  loc_144666C: LateIdCallSt
  loc_1446677: var_94 = CVar(CLng(7)) 'Long
  loc_1446682: var_E8 = CVar(CInt(7)) 'Integer
  loc_1446689: LateIdCallSt
  loc_1446694: var_94 = CVar(CLng(7)) 'Long
  loc_144669F: var_E8 = CVar(CInt(7)) 'Integer
  loc_14466A6: LateIdCallSt
  loc_14466B1: var_94 = CVar(CLng(7)) 'Long
  loc_14466B6: var_E8 = 0
  loc_14466C2: LateIdCallSt
  loc_14466CA: var_94 = 0
  loc_14466D6: var_E8 = CVar(CLng(5)) 'Long
  loc_14466DB: var_108 = "Amount"
  loc_14466E4: LateIdCallSt
  loc_14466EF: var_94 = CVar(CLng(5)) 'Long
  loc_14466FA: var_E8 = CVar(CInt(7)) 'Integer
  loc_1446701: LateIdCallSt
  loc_144670C: var_94 = CVar(CLng(5)) 'Long
  loc_1446717: var_E8 = CVar(CInt(7)) 'Integer
  loc_144671E: LateIdCallSt
  loc_1446729: var_94 = CVar(CLng(5)) 'Long
  loc_144672E: var_E8 = 0
  loc_144673A: LateIdCallSt
  loc_1446742: var_94 = 0
  loc_144674E: var_E8 = CVar(CLng(8)) 'Long
  loc_1446753: var_108 = "Total"
  loc_144675C: LateIdCallSt
  loc_1446767: var_94 = CVar(CLng(8)) 'Long
  loc_1446772: var_E8 = CVar(CInt(7)) 'Integer
  loc_1446779: LateIdCallSt
  loc_1446784: var_94 = CVar(CLng(8)) 'Long
  loc_144678F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1446796: LateIdCallSt
  loc_14467A1: var_94 = CVar(CLng(8)) 'Long
  loc_14467A6: var_E8 = 0
  loc_14467B2: LateIdCallSt
  loc_14467BD: var_94 = CVar(CLng(9)) 'Long
  loc_14467C2: var_E8 = 0
  loc_14467CE: LateIdCallSt
  loc_14467D9: var_94 = CVar(CLng(&HA)) 'Long
  loc_14467DE: var_E8 = 0
  loc_14467EA: LateIdCallSt
  loc_14467F4: Set var_C4 = Nothing 
  loc_144680B: Me.FGrid1.Cols = 8
  loc_1446810: var_94 = 0
  loc_1446819: var_E8 = 0
  loc_1446822: var_108 = "SNo"
  loc_144682B: LateIdCallSt
  loc_1446833: var_94 = 0
  loc_1446842: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446849: LateIdCallSt
  loc_1446851: var_94 = 0
  loc_1446860: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446867: LateIdCallSt
  loc_144686F: var_94 = 0
  loc_1446878: var_E8 = &H1C2
  loc_1446884: LateIdCallSt
  loc_144688C: var_94 = 0
  loc_1446895: var_E8 = 1
  loc_144689E: var_108 = "Venue Name"
  loc_14468A7: LateIdCallSt
  loc_14468AF: var_94 = 1
  loc_14468BE: var_E8 = CVar(CInt(1)) 'Integer
  loc_14468C5: LateIdCallSt
  loc_14468CD: var_94 = 1
  loc_14468DC: var_E8 = CVar(CInt(1)) 'Integer
  loc_14468E3: LateIdCallSt
  loc_14468EB: var_94 = 1
  loc_14468F4: var_E8 = &H76C
  loc_1446900: LateIdCallSt
  loc_1446908: var_94 = 0
  loc_1446911: var_E8 = 2
  loc_144691A: var_108 = "Date From"
  loc_1446923: LateIdCallSt
  loc_144692B: var_94 = 2
  loc_144693A: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446941: LateIdCallSt
  loc_1446949: var_94 = 2
  loc_1446958: var_E8 = CVar(CInt(1)) 'Integer
  loc_144695F: LateIdCallSt
  loc_1446967: var_94 = 2
  loc_1446970: var_E8 = &H47E
  loc_144697C: LateIdCallSt
  loc_1446984: var_94 = 0
  loc_144698D: var_E8 = 3
  loc_1446996: var_108 = "FromTime"
  loc_144699F: LateIdCallSt
  loc_14469A7: var_94 = 3
  loc_14469B6: var_E8 = CVar(CInt(1)) 'Integer
  loc_14469BD: LateIdCallSt
  loc_14469C5: var_94 = 3
  loc_14469D4: var_E8 = CVar(CInt(1)) 'Integer
  loc_14469DB: LateIdCallSt
  loc_14469E3: var_94 = 3
  loc_14469EC: var_E8 = &H3E8
  loc_14469F8: LateIdCallSt
  loc_1446A00: var_94 = 0
  loc_1446A09: var_E8 = 4
  loc_1446A12: var_108 = "Date To"
  loc_1446A1B: LateIdCallSt
  loc_1446A23: var_94 = 4
  loc_1446A32: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446A39: LateIdCallSt
  loc_1446A41: var_94 = 4
  loc_1446A50: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446A57: LateIdCallSt
  loc_1446A5F: var_94 = 4
  loc_1446A68: var_E8 = &H47E
  loc_1446A74: LateIdCallSt
  loc_1446A7C: var_94 = 0
  loc_1446A85: var_E8 = 5
  loc_1446A8E: var_108 = "To Time"
  loc_1446A97: LateIdCallSt
  loc_1446A9F: var_94 = 5
  loc_1446AAE: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446AB5: LateIdCallSt
  loc_1446ABD: var_94 = 5
  loc_1446ACC: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446AD3: LateIdCallSt
  loc_1446ADB: var_94 = 5
  loc_1446AE4: var_E8 = &H384
  loc_1446AF0: LateIdCallSt
  loc_1446AF8: var_94 = 6
  loc_1446B01: var_E8 = 0
  loc_1446B0D: LateIdCallSt
  loc_1446B15: var_94 = 7
  loc_1446B1E: var_E8 = 0
  loc_1446B2A: LateIdCallSt
  loc_1446B34: Set var_11C = Nothing 
  loc_1446B3C: Set var_120 = Me.FGrid2
  loc_1446B53: global_108 = CStr(CLng(var_120.BackColor))
  loc_1446B69: var_120.Cols = 4
  loc_1446B6E: var_94 = 0
  loc_1446B77: var_E8 = &HFA
  loc_1446B83: LateIdCallSt
  loc_1446B8B: var_94 = 0
  loc_1446B97: var_E8 = CVar(CLng(2)) 'Long
  loc_1446B9C: var_108 = "Item Group Name"
  loc_1446BA5: LateIdCallSt
  loc_1446BB0: var_94 = CVar(CLng(2)) 'Long
  loc_1446BBB: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446BC2: LateIdCallSt
  loc_1446BCD: var_94 = CVar(CLng(2)) 'Long
  loc_1446BD2: var_E8 = &HAF0
  loc_1446BDE: LateIdCallSt
  loc_1446BE6: var_94 = 0
  loc_1446BF2: var_E8 = CVar(CLng(1)) 'Long
  loc_1446BF7: var_108 = "Group Code"
  loc_1446C00: LateIdCallSt
  loc_1446C0B: var_94 = CVar(CLng(1)) 'Long
  loc_1446C16: var_E8 = CVar(CInt(1)) 'Integer
  loc_1446C1D: LateIdCallSt
  loc_1446C28: var_94 = CVar(CLng(1)) 'Long
  loc_1446C2D: var_E8 = 0
  loc_1446C39: LateIdCallSt
  loc_1446C41: var_94 = 0
  loc_1446C4D: var_E8 = CVar(CLng(3)) 'Long
  loc_1446C52: var_108 = "Limit"
  loc_1446C5B: LateIdCallSt
  loc_1446C66: var_94 = CVar(CLng(3)) 'Long
  loc_1446C71: var_E8 = CVar(CInt(4)) 'Integer
  loc_1446C78: LateIdCallSt
  loc_1446C83: var_94 = CVar(CLng(3)) 'Long
  loc_1446C88: var_E8 = &H2BC
  loc_1446C94: LateIdCallSt
  loc_1446CA8: var_120.Rows = 1
  loc_1446CAF: Set var_120 = Nothing 
  loc_1446CB3: Exit Sub
End Sub

Public Sub Proc_113_56_11D93C8
  'Data Table: 54B9E4
  Dim var_8C As TextBox
  Dim var_94 As String
  Dim unk_54BA05 As Connection15
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_88 As Variant
  Dim var_EC As Variant
  Dim var_10C As String
  Dim var_DC As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_D4 As Variant
  Dim var_14C As Variant
  loc_11D8F7E: Set var_88 = Me.Txt
  loc_11D8F84: Call 0.Method_Proc_113_56_11D93C80 (CInt(&H2D), var_8C, var_90, "SELECT IG.Code AS Code, IG.Name AS GroupName, GC.Limit AS Limit FROM ItemGrp IG INNER JOIN GroupCatalog GC ON IG.Code = GC.ItemCatCode WHERE GC.CatCode='")
  loc_11D8F8C: var_B8 = var_8C.Tag
  loc_11D8F95: var_94 = -1 & var_90
  loc_11D8FA5: unk_54BA05.Execute var_94 & "' ORDER By IG.Name", var_BC, 
  loc_11D8FB6: Set global_68 = var_BC
  loc_11D8FDC: Me.Requery -1
  loc_11D8FF8: If (Me.RecordCount > 0) Then
  loc_11D8FFB:   var_A8 = True
  loc_11D9008:   Set var_88 = Me.OptCat
  loc_11D900E:   Call 0.Method_Proc_113_56_11D93C80 (0, var_8C)
  loc_11D902C:   Call OptCat_UnknownEvent_9()
  loc_11D9044:   Me.FGrid2.Rows = 1
  loc_11D9050:   Set var_DC = Me.FGrid2
  loc_11D9053:   var_A8 = 0
  loc_11D905F:   var_EC = CVar(CLng(2)) 'Long
  loc_11D9064:   var_10C = "Item Group Name"
  loc_11D906D:   LateIdCallSt
  loc_11D9075:   var_A8 = 0
  loc_11D9081:   var_EC = CVar(CLng(1)) 'Long
  loc_11D9086:   var_10C = "Group Code"
  loc_11D908F:   LateIdCallSt
  loc_11D909A:   var_A8 = CVar(CLng(3)) 'Long
  loc_11D90A5:   var_EC = CVar(CInt(4)) 'Integer
  loc_11D90AC:   LateIdCallSt
  loc_11D90B4:   var_A8 = 0
  loc_11D90C0:   var_EC = CVar(CLng(3)) 'Long
  loc_11D90C5:   var_10C = "Limit"
  loc_11D90CE:   LateIdCallSt
  loc_11D90D6:   ' Referenced from: 11D929B
  loc_11D90E8:   If Not(Me.EOF) Then
  loc_11D90FD:     var_A8 = CVar((CLng(var_DC.Rows) + 1)) 'Long
  loc_11D9105:     var_DC.Rows = var_A8
  loc_11D911F:     var_A8 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11D9140:     var_13C = CVar(CStr((CLng(var_DC.Rows) - 1))) 'String
  loc_11D9147:     LateIdCallSt
  loc_11D916A:     var_D4 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11D917A:     var_A8 = "GroupName"
  loc_11D91A2:     var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_A8)), CVar(CLng(2)), var_D4, var_DC, var_13C, CVar(CLng(0)), var_A8)) 'String
  loc_11D91A9:     LateIdCallSt
  loc_11D91C0:     var_12C = var_DC.Rows
  loc_11D91CF:     var_D4 = CVar((CLng(var_12C) - 1)) 'Long
  loc_11D9207:     var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Code")), CVar(CLng(1)), var_D4, var_DC, var_13C, var_DC)) 'String
  loc_11D920E:     LateIdCallSt
  loc_11D9225:     var_13C = var_DC.Rows
  loc_11D9234:     var_D4 = CVar((CLng(var_13C) - 1)) 'Long
  loc_11D925B:     var_8C = Me.Fields.Item("Limit")
  loc_11D926A:     Proc_6_48_EF4E00(var_12C, CVar(var_8C), CVar(CLng(3)), var_D4, var_DC, var_13C)
  loc_11D9273:     var_14C = CVar(CStr(var_12C)) 'String
  loc_11D927A:     LateIdCallSt
  loc_11D9296:     Me.MoveNext
  loc_11D929B:     GoTo loc_11D90D6
  loc_11D929E:   End If
  loc_11D92B0:   var_A8 = CVar((CLng(var_DC.Rows) + 1)) 'Long
  loc_11D92B8:   var_DC.Rows = "Limit"
  loc_11D92D2:   var_A8 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11D92DA:   var_EC = CVar(CLng(0)) 'Long
  loc_11D92F3:   var_13C = CVar(CStr((CLng(var_DC.Rows) - 1))) 'String
  loc_11D92FA:   LateIdCallSt
  loc_11D931D:   var_A8 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11D9325:   var_EC = CVar(CLng(2)) 'Long
  loc_11D932A:   var_10C = "EXTRA"
  loc_11D9333:   LateIdCallSt
  loc_11D9350:   var_A8 = CVar((CLng(var_DC.Rows) - 1)) 'Long
  loc_11D9358:   var_EC = CVar(CLng(3)) 'Long
  loc_11D9361:   var_12C = CVar(CStr(0)) 'String
  loc_11D9368:   LateIdCallSt
  loc_11D9383:   var_DC.FixedRows = 1
  loc_11D938A:   Set var_DC = Nothing 
  loc_11D9391: Else
  loc_11D939E:   Set var_88 = Me.OptCat
  loc_11D93A4:   Call 0.Method_Proc_113_56_11D93C80 (1, var_8C, True, var_DC, var_12C, var_EC, True)
  loc_11D93C2:   Call OptCat_UnknownEvent_9()
  loc_11D93C7: End If
  loc_11D93C7: Exit Sub
End Sub

Public Sub Proc_113_57_11EA19C
  'Data Table: 54B9E4
  Dim var_8A As Integer
  Dim var_A4 As String
  Dim var_15C As Boolean
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_88 As Integer
  Dim var_8C As Integer
  Dim var_188 As Variant
  loc_11E9D31: Set var_90 = Me.TopCtrl1
  loc_11E9D37: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(0)
  loc_11E9D47: var_15C = (CStr() = "Browse")
  loc_11E9D4F: Set var_A8 = Me.FGrid
  loc_11E9D5E: var_C8 = CVar(CLng(var_A8.RowSel)) 'Long
  loc_11E9DB9: If CBool(CVar(CLng(1)) Or (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString)) Then
  loc_11E9DBC:   Exit Sub
  loc_11E9DBD: End If
  loc_11E9DC8: Set var_90 = Me.OptCat
  loc_11E9DCE: Call 0.Method_Proc_113_57_11EA19C0 (CInt(0), var_A8)
  loc_11E9DD6: var_A8.Value
  loc_11E9DF5: var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11E9E57: If ((CVar(CLng(0)) And (IsNumeric(CVar(CStr(Me.FGrid.TextMatrix)))) = 0)) And (CLng(Me.FGrid.ColSel) = &HC)) Then
  loc_11E9E6C:   Me.FGrid.Col = CVar(CLng(0))
  loc_11E9E87:   Me.FGrid.CellForeColor = &HFF
  loc_11E9EA2:   var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11E9EA7:   var_E8 = &HB
  loc_11E9ECE:   var_88 = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_11E9EF5:   var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11E9EFA:   var_E8 = &HC
  loc_11E9F21:   var_8C = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_11E9F5A:   For var_178 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_178 'Integer
  loc_11E9F64:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_11E9F69:     var_E8 = &HB
  loc_11E9F87:     var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_11E9F99:     var_13C = CVar(CLng(var_86)) 'Long
  loc_11E9FD9:     If (CVar(CLng(0)) And (CStr(Me.FGrid.TextMatrix)) = "ü")) Then
  loc_11E9FE2:       var_8A = (var_8A + 1)
  loc_11E9FE5:     End If
  loc_11E9FE8:   Next var_178 'Integer
  loc_11E9FF7:   var_10C = Me.FGrid1.Rows
  loc_11EA006:   var_13C = CVar((CLng(var_10C) - 1)) 'Long
  loc_11EA00E:   var_188 = CVar(CLng(0)) 'Long
  loc_11EA01D:   var_11C = Me.FGrid1.TextMatrix)
  loc_11EA04D:   var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11EA09F:   If ((CVar(CLng(0)) And (CStr(Me.FGrid.TextMatrix)) <> "ü")) And (CDbl(var_88) <> CDbl(Val(CStr(var_11C))))) Then
  loc_11EA0D9:     If (MsgBox("Are you sure to extend item!", &H14, "Catalog...", var_10C, var_11C) = 6) Then
  loc_11EA0FE:       Me.FGrid.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_11EA11F:       Me.FGrid.Col = CVar(CLng(0))
  loc_11EA137:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_11EA151:       Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_11EA16C:       var_C8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11EA174:       var_E8 = CVar(CLng(0)) 'Long
  loc_11EA179:       var_13C = "ü"
  loc_11EA183:       Set var_A8 = Me.FGrid
  loc_11EA189:       LateIdCallSt
  loc_11EA19B:     End If
  loc_11EA19B:   End If
  loc_11EA19B: End If
  loc_11EA19B: Exit Sub
End Sub

Public Sub Proc_113_58_16A8DC8
  'Data Table: 54B9E4
  Dim var_98 As Variant
  Dim var_B0 As String
  Dim unk_54BA05 As Connection15
  Dim var_94 As Variant
  Dim Proc_113_58_16A8DC84 As Variant
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_10C As Variant
  Dim var_88 As Recordset15
  Dim var_D8 As Variant
  Dim var_8E As Integer
  Dim var_124 As MSHFlexGrid
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_C8 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim Me As Recordset15
  Dim var_178 As TextBox
  Dim var_188 As Variant
  Dim var_170 As Recordset15
  Dim var_164 As Variant
  Dim var_1B0 As MSHFlexGrid
  loc_16A748B: Set var_94 = Me.OptCat
  loc_16A7491: Call 0.Method_Proc_113_58_16A8DC80 (CInt(0))
  loc_16A7499: var_98.Value
  loc_16A74AF: If (CBool(var_98) = &HFF) Then
  loc_16A74D0:   Set var_94 = Me.Txt
  loc_16A74D6:   Call 0.Method_Proc_113_58_16A8DC80 (CInt(&H2D), var_98, var_AC, "SELECT ItemMast.Name AS ItemName, ItemGrp.Name AS ItemGrpName, ItemGrp.Type AS ItemGrpType, ItemMast.Unit AS UnitName, CatalogMast.*, ItemCatMast.CatType ,GroupCatalog.Limit AS Limit FROM (((CatalogMast INNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code) INNER JOIN GroupCatalog ON CatalogMast.ItemCatCode =GroupCatalog.ItemCatCode AND GroupCatalog.CatCode=CatalogMast.Code) INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) INNER JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code WHERE CatalogMast.Code='")
  loc_16A74DE:   var_A8 = var_98.Tag
  loc_16A74E7:   var_B0 = -1 & var_AC
  loc_16A74F7:   unk_54BA05.Execute var_B0 & "' Order By Itemgrp.Name,ItemMast.Name", var_C8, 
  loc_16A7502:   Set var_88 = var_C8
  loc_16A751D:   var_8C = vbNullString
  loc_16A752A:   Proc_113_58_16A8DC84 = Me.FGrid.Text
  loc_16A7548:   Me.FGrid.Rows = 2
  loc_16A7553:   var_C4 = CVar(CLng(0)) 'Long
  loc_16A7558:   var_E8 = &H15E
  loc_16A7565:   Set var_94 = Me.FGrid
  loc_16A756B:   LateIdCallSt
  loc_16A7579:   var_C4 = CVar(CLng(0)) 'Long
  loc_16A7584:   var_E8 = CVar(CInt(4)) 'Integer
  loc_16A758C:   Set var_94 = Me.FGrid
  loc_16A7592:   LateIdCallSt
  loc_16A75B0:   Me.FGrid.Cols = &HD
  loc_16A75BC:   Set var_FC = Me.FGrid
  loc_16A75CB:   var_FC.Row = 0
  loc_16A75E4:   global_108 = CStr(CLng(var_FC.BackColor))
  loc_16A75EE:   var_C4 = 0
  loc_16A75FA:   var_E8 = CVar(CLng(1)) 'Long
  loc_16A75FF:   var_10C = "Item Name"
  loc_16A7608:   LateIdCallSt
  loc_16A7613:   var_C4 = CVar(CLng(1)) 'Long
  loc_16A761E:   var_E8 = CVar(CInt(1)) 'Integer
  loc_16A7625:   LateIdCallSt
  loc_16A7630:   var_C4 = CVar(CLng(1)) 'Long
  loc_16A7635:   var_E8 = &H924
  loc_16A7641:   LateIdCallSt
  loc_16A7649:   var_C4 = 0
  loc_16A7655:   var_E8 = CVar(CLng(2)) 'Long
  loc_16A765A:   var_10C = "Remarks"
  loc_16A7663:   LateIdCallSt
  loc_16A766E:   var_C4 = CVar(CLng(2)) 'Long
  loc_16A7679:   var_E8 = CVar(CInt(1)) 'Integer
  loc_16A7680:   LateIdCallSt
  loc_16A768B:   var_C4 = CVar(CLng(2)) 'Long
  loc_16A7690:   var_E8 = 0
  loc_16A769C:   LateIdCallSt
  loc_16A76A4:   var_C4 = 0
  loc_16A76B0:   var_E8 = CVar(CLng(3)) 'Long
  loc_16A76B5:   var_10C = "Qty"
  loc_16A76BE:   LateIdCallSt
  loc_16A76C9:   var_C4 = CVar(CLng(3)) 'Long
  loc_16A76D4:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A76DB:   LateIdCallSt
  loc_16A76E6:   var_C4 = CVar(CLng(3)) 'Long
  loc_16A76F1:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A76F8:   LateIdCallSt
  loc_16A7703:   var_C4 = CVar(CLng(3)) 'Long
  loc_16A7708:   var_E8 = &H320
  loc_16A7714:   LateIdCallSt
  loc_16A771C:   var_C4 = 0
  loc_16A7728:   var_E8 = CVar(CLng(4)) 'Long
  loc_16A772D:   var_10C = "Rate"
  loc_16A7736:   LateIdCallSt
  loc_16A7741:   var_C4 = CVar(CLng(4)) 'Long
  loc_16A774C:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A7753:   LateIdCallSt
  loc_16A775E:   var_C4 = CVar(CLng(4)) 'Long
  loc_16A7769:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A7770:   LateIdCallSt
  loc_16A777B:   var_C4 = CVar(CLng(4)) 'Long
  loc_16A7780:   var_E8 = &H320
  loc_16A778C:   LateIdCallSt
  loc_16A7794:   var_C4 = 0
  loc_16A77A0:   var_E8 = CVar(CLng(6)) 'Long
  loc_16A77A5:   var_10C = "Category"
  loc_16A77AE:   LateIdCallSt
  loc_16A77B9:   var_C4 = CVar(CLng(6)) 'Long
  loc_16A77C4:   var_E8 = CVar(CInt(1)) 'Integer
  loc_16A77CB:   LateIdCallSt
  loc_16A77D6:   var_C4 = CVar(CLng(6)) 'Long
  loc_16A77E1:   var_E8 = CVar(CInt(1)) 'Integer
  loc_16A77E8:   LateIdCallSt
  loc_16A77F3:   var_C4 = CVar(CLng(6)) 'Long
  loc_16A77F8:   var_E8 = 0
  loc_16A7804:   LateIdCallSt
  loc_16A780C:   var_C4 = 0
  loc_16A7818:   var_E8 = CVar(CLng(7)) 'Long
  loc_16A781D:   var_10C = "Tax"
  loc_16A7826:   LateIdCallSt
  loc_16A7831:   var_C4 = CVar(CLng(7)) 'Long
  loc_16A783C:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A7843:   LateIdCallSt
  loc_16A784E:   var_C4 = CVar(CLng(7)) 'Long
  loc_16A7859:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A7860:   LateIdCallSt
  loc_16A786B:   var_C4 = CVar(CLng(7)) 'Long
  loc_16A7870:   var_E8 = 0
  loc_16A787C:   LateIdCallSt
  loc_16A7884:   var_C4 = 0
  loc_16A7890:   var_E8 = CVar(CLng(5)) 'Long
  loc_16A7895:   var_10C = "Amount"
  loc_16A789E:   LateIdCallSt
  loc_16A78A9:   var_C4 = CVar(CLng(5)) 'Long
  loc_16A78B4:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A78BB:   LateIdCallSt
  loc_16A78C6:   var_C4 = CVar(CLng(5)) 'Long
  loc_16A78D1:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A78D8:   LateIdCallSt
  loc_16A78E3:   var_C4 = CVar(CLng(5)) 'Long
  loc_16A78E8:   var_E8 = 0
  loc_16A78F4:   LateIdCallSt
  loc_16A78FC:   var_C4 = 0
  loc_16A7908:   var_E8 = CVar(CLng(8)) 'Long
  loc_16A790D:   var_10C = "Total"
  loc_16A7916:   LateIdCallSt
  loc_16A7921:   var_C4 = CVar(CLng(8)) 'Long
  loc_16A792C:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A7933:   LateIdCallSt
  loc_16A793E:   var_C4 = CVar(CLng(8)) 'Long
  loc_16A7949:   var_E8 = CVar(CInt(7)) 'Integer
  loc_16A7950:   LateIdCallSt
  loc_16A795B:   var_C4 = CVar(CLng(8)) 'Long
  loc_16A7960:   var_E8 = 0
  loc_16A796C:   LateIdCallSt
  loc_16A7977:   var_C4 = CVar(CLng(9)) 'Long
  loc_16A797C:   var_E8 = 0
  loc_16A7988:   LateIdCallSt
  loc_16A7993:   var_C4 = CVar(CLng(&HA)) 'Long
  loc_16A7998:   var_E8 = 0
  loc_16A79A4:   LateIdCallSt
  loc_16A79AE:   Set var_FC = Nothing 
  loc_16A79B2:   ' Referenced from: 16A8035
  loc_16A79C1:   If Not(var_88.EOF) Then
  loc_16A79DD:     var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A79EC:     Me.FGrid.Row = var_C4
  loc_16A79FF:     Set var_124 = Me.FGrid
  loc_16A7A3F:     If CBool(CVar(var_8C) <> var_88.Fields.Item("ItemCatCode").Value) Then
  loc_16A7A48:       var_8E = (var_8E + 1)
  loc_16A7A56:       var_124.Col = CVar(CLng(0))
  loc_16A7A6E:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7A76:       var_E8 = CVar(CLng(0)) 'Long
  loc_16A7A80:       var_134 = CVar(CStr(var_8E)) 'String
  loc_16A7A87:       LateIdCallSt
  loc_16A7AA0:       var_124.CellFontBold = True
  loc_16A7AC0:       var_124.CellFontSize = CVar(CDbl(8))
  loc_16A7AD1:       var_124.CellForeColor = &HFFFFFF
  loc_16A7ADD:       var_124.CellFontBold = True
  loc_16A7AEE:       var_E8 = CVar(CLng(var_124.Row)) 'Long
  loc_16A7AF6:       var_10C = CVar(CLng(1)) 'Long
  loc_16A7B2F:       var_154 = CVar(CStr(var_88.Fields.Item("ItemGrpName").Value & " :")) 'String
  loc_16A7B36:       LateIdCallSt
  loc_16A7B6B:       For var_168 = 1 To CInt((CLng(var_124.Cols) - 1)): var_90 = var_168 'Integer
  loc_16A7B7D:         var_124.Col = CVar(CLng(var_90))
  loc_16A7B8E:         var_124.CellBackColor = &H808080
  loc_16A7B96:       Next var_168 'Integer
  loc_16A7B9B:       var_C4 = vbNullString
  loc_16A7BC5:       var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A7BD4:       Me.FGrid.Row = var_C4
  loc_16A7BE3:     End If
  loc_16A7BEE:     var_124.Col = CVar(CLng(0))
  loc_16A7BFC:     var_124.CellFontName = "WINGDINGS"
  loc_16A7C0C:     var_124.CellFontSize = CVar(CDbl(&HA))
  loc_16A7C24:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7C2C:     var_E8 = CVar(CLng(0)) 'Long
  loc_16A7C3A:     LateIdCallSt
  loc_16A7C90:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_124, vbNullString)) 'String
  loc_16A7C97:     LateIdCallSt
  loc_16A7CC2:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7CCA:     var_E8 = CVar(CLng(2)) 'Long
  loc_16A7CCF:     var_10C = vbNullString
  loc_16A7CD8:     LateIdCallSt
  loc_16A7CF9:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7D01:     var_E8 = CVar(CLng(3)) 'Long
  loc_16A7D06:     var_10C = vbNullString
  loc_16A7D0F:     LateIdCallSt
  loc_16A7D30:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7D46:     LateIdCallSt
  loc_16A7D77:     var_C4 = "CatType"
  loc_16A7D9C:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_C4)), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_124, vbNullString, CVar(CLng(4)), var_C4)) 'String
  loc_16A7DA3:     LateIdCallSt
  loc_16A7DCE:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7DD6:     var_E8 = CVar(CLng(7)) 'Long
  loc_16A7DDB:     var_10C = "0.00"
  loc_16A7DE4:     LateIdCallSt
  loc_16A7E05:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7E0D:     var_E8 = CVar(CLng(5)) 'Long
  loc_16A7E12:     var_10C = "0.00"
  loc_16A7E1B:     LateIdCallSt
  loc_16A7E3C:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7E52:     LateIdCallSt
  loc_16A7E83:     var_C4 = "ItemCode"
  loc_16A7EA8:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_C4)), CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_124, "0.00", CVar(CLng(8)), var_C4)) 'String
  loc_16A7EAF:     LateIdCallSt
  loc_16A7F0F:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("UnitName")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_124, var_144, var_124)) 'String
  loc_16A7F16:     LateIdCallSt
  loc_16A7F41:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7F46:     var_E8 = &HB
  loc_16A7F54:     var_134 = CVar(CStr(var_8E)) 'String
  loc_16A7F5B:     LateIdCallSt
  loc_16A7F80:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A7F85:     var_F8 = &HC
  loc_16A7FBD:     var_154 = CVar(CStr(Int(var_88.Fields.Item("Limit").Value))) 'String
  loc_16A7FC4:     LateIdCallSt
  loc_16A7FDE:     var_C4 = vbNullString
  loc_16A7FF1:     Set var_124 = Nothing 
  loc_16A8020:     var_8C = CStr(var_88.Fields.Item("ItemCatCode").Value)
  loc_16A8030:     var_88.MoveNext
  loc_16A8035:     GoTo loc_16A79B2
  loc_16A8038:   End If
  loc_16A8051:   var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A8060:   Me.FGrid.Row = "ItemCatCode"
  loc_16A8081:   Me.FGrid.Col = CVar(CLng(1))
  loc_16A8097:   Me.FGrid.CellFontBold = True
  loc_16A80B1:   Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_16A80CC:   Me.FGrid.CellForeColor = &HFFFFFF
  loc_16A80E2:   Me.FGrid.CellFontBold = True
  loc_16A80FC:   Me.FGrid.Col = CVar(CLng(0))
  loc_16A8112:   Me.FGrid.CellFontBold = True
  loc_16A812D:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8135:   var_E8 = CVar(CLng(0)) 'Long
  loc_16A8142:   var_134 = CVar(CStr((var_8E + 1))) 'String
  loc_16A814A:   Set var_98 = Me.FGrid
  loc_16A8150:   LateIdCallSt
  loc_16A817F:   var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A8187:   var_E8 = CVar(CLng(1)) 'Long
  loc_16A818C:   var_10C = "EXTRA :"
  loc_16A8196:   Set var_98 = Me.FGrid
  loc_16A819C:   LateIdCallSt
  loc_16A81D3:   For var_16C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_90 = var_16C 'Integer
  loc_16A81EC:     Me.FGrid.Col = CVar(CLng(var_90))
  loc_16A8207:     Me.FGrid.CellBackColor = &H808080
  loc_16A8212:   Next var_16C 'Integer
  loc_16A821B:   Set var_94 = Me.TopCtrl1
  loc_16A8221:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_16A8229:   var_AC = CStr()
  loc_16A8252:   If ((var_AC <> "Add") And (Me.RecordCount <> 0)) Then
  loc_16A8262:     var_D8 = "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallBook1 AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='"
  loc_16A829D:     var_144 = var_D8 & Me.Fields.Item("SearchCode").Value & "' AND I.Code Not In (Select Distinct ItemCode from catalogmast where code='" 
  loc_16A82AF:     Set var_C8 = Me.Txt
  loc_16A82B5:     Call 0.Method_Proc_113_58_16A8DC80 (CInt(&H2D), var_178, var_AC, var_144)
  loc_16A82BD:     var_1A8 = var_178.Tag
  loc_16A82C8:     var_188 = -1 & CVar(var_AC) 
  loc_16A82DF:     unk_54BA05.Execute CStr(var_188 & "') Order By I.Name"), var_1AC, 
  loc_16A82EA:     Set var_170 = var_1AC
  loc_16A8323:     If Not((var_170.RecordCount < 0)) Then
  loc_16A8326:       ' Referenced from: 16A88A1
  loc_16A8335:       If Not(var_170.EOF) Then
  loc_16A8338:         var_C4 = vbNullString
  loc_16A8342:         Set var_94 = Me.FGrid
  loc_16A836C:         var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A837B:         Me.FGrid.Row = var_C4
  loc_16A839C:         Me.FGrid.Col = CVar(CLng(0))
  loc_16A83B4:         Me.FGrid.CellFontName = "WINGDINGS"
  loc_16A83CE:         Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_16A83E9:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A83F1:         var_E8 = CVar(CLng(0)) 'Long
  loc_16A8400:         Set var_98 = Me.FGrid
  loc_16A8406:         LateIdCallSt
  loc_16A844F:         var_98 = var_170.Fields.Item("Remarks")
  loc_16A8460:         var_144 = CVar(Proc_6_38_E69628(CVar(var_98), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_98, vbNullString)) 'String
  loc_16A8468:         Set var_178 = Me.FGrid
  loc_16A846E:         LateIdCallSt
  loc_16A84B7:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A84BF:         var_10C = CVar(CLng(3)) 'Long
  loc_16A84EC:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_16A84F4:         Set var_178 = Me.FGrid
  loc_16A84FA:         LateIdCallSt
  loc_16A8547:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A854F:         var_10C = CVar(CLng(4)) 'Long
  loc_16A857C:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("Rate")), "0.00"))) 'String
  loc_16A8584:         Set var_178 = Me.FGrid
  loc_16A858A:         LateIdCallSt
  loc_16A85D7:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A85DF:         var_10C = CVar(CLng(6)) 'Long
  loc_16A860C:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_16A8614:         Set var_178 = Me.FGrid
  loc_16A861A:         LateIdCallSt
  loc_16A864B:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8653:         var_E8 = CVar(CLng(7)) 'Long
  loc_16A8658:         var_10C = "0.00"
  loc_16A8662:         Set var_98 = Me.FGrid
  loc_16A8668:         LateIdCallSt
  loc_16A86A9:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A86B1:         var_10C = CVar(CLng(5)) 'Long
  loc_16A86DE:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("Amount")), "0.00"))) 'String
  loc_16A86E6:         Set var_178 = Me.FGrid
  loc_16A86EC:         LateIdCallSt
  loc_16A8739:         var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8741:         var_10C = CVar(CLng(8)) 'Long
  loc_16A876E:         var_188 = CVar(CStr(Format(CVar(var_170.Fields.Item("Total")), "0.00"))) 'String
  loc_16A8776:         Set var_178 = Me.FGrid
  loc_16A877C:         LateIdCallSt
  loc_16A87AD:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A87C4:         Set var_98 = Me.FGrid
  loc_16A87CA:         LateIdCallSt
  loc_16A87E0:         Set var_C8 = Me.FGrid
  loc_16A87FF:         var_C4 = "Unit"
  loc_16A8813:         var_98 = var_170.Fields.Item(var_C4)
  loc_16A8824:         var_144 = CVar(Proc_6_38_E69628(CVar(var_98), CVar(CLng(&HA)), CVar(CLng(var_C8.Row)), var_98, vbNullString, CVar(CLng(9)), var_C4)) 'String
  loc_16A882C:         Set var_178 = Me.FGrid
  loc_16A8832:         LateIdCallSt
  loc_16A885F:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8864:         var_E8 = &HB
  loc_16A8875:         var_134 = CVar(CStr((var_8E + 1))) 'String
  loc_16A887D:         Set var_98 = Me.FGrid
  loc_16A8883:         LateIdCallSt
  loc_16A889C:         var_170.MoveNext
  loc_16A88A1:         GoTo loc_16A8326
  loc_16A88A4:       End If
  loc_16A88A4:     End If
  loc_16A88A4:   End If
  loc_16A88A4:   var_C4 = vbNullString
  loc_16A88AE:   Set var_94 = Me.FGrid
  loc_16A88C9:   var_A8 = Me.FGrid.Rows
  loc_16A88D8:   var_C4 = CVar((CLng(var_A8) - 1)) 'Long
  loc_16A88E1:   Set var_98 = Me.FGrid
  loc_16A88E7:   var_98.Row = var_C4
  loc_16A8908:   Me.FGrid.Col = CVar(CLng(0))
  loc_16A8920:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_16A893A:   Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_16A8946:   Set var_94 = Me.FGrid
  loc_16A8957:   var_C4 = True
  loc_16A8965:   Me.FGrid.Redraw = var_C4
  loc_16A8970: Else
  loc_16A898E:   Set var_94 = Me.Txt
  loc_16A8994:   Call 0.Method_Proc_113_58_16A8DC80 (CInt(&H2D), var_98, var_AC, "SELECT ItemMast.Name AS ItemName, ItemGrp.Name AS ItemGrpName, ItemGrp.Type AS ItemGrpType, ItemMast.Unit AS UnitName, CatalogMast.*, ItemCatMast.CatType FROM ((CatalogMast LEFT JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code) LEFT JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) LEFT JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code WHERE CatalogMast.Code='", var_A8, -1, var_C8)
  loc_16A899C:   FGrid.DispID_FFFF = var_98.Tag
  loc_16A89B5:   unk_54BA05.Execute FGrid.DispID_10000 & var_AC & "' Order By ItemMast.ItemCatCode", var_C4, var_98
  loc_16A89C0:   Set var_88 = var_C8
  loc_16A89D8:   ' Referenced from:   16A8DB3
  loc_16A89E7:   If Not(var_88.EOF) Then
  loc_16A8A03:     var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16A8A12:     Me.FGrid.Row = var_C4
  loc_16A8A25:     Set var_1B0 = Me.FGrid
  loc_16A8A3B:     var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8A43:     var_164 = CVar(CLng(0)) 'Long
  loc_16A8A61:     var_C4 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_16A8A8A:     var_154 = CVar(CStr((Val(CStr(var_1B0.TextMatrix))) + CDbl(1)))) 'String
  loc_16A8A91:     LateIdCallSt
  loc_16A8AF6:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_1B0, Me.FGrid.Row, CVar(CLng(0)))) 'String
  loc_16A8AFD:     LateIdCallSt
  loc_16A8B28:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8B30:     var_E8 = CVar(CLng(2)) 'Long
  loc_16A8B35:     var_10C = vbNullString
  loc_16A8B3E:     LateIdCallSt
  loc_16A8B5F:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8B67:     var_E8 = CVar(CLng(3)) 'Long
  loc_16A8B6C:     var_10C = "0.00"
  loc_16A8B75:     LateIdCallSt
  loc_16A8B96:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8BAC:     LateIdCallSt
  loc_16A8BDD:     var_C4 = "CatType"
  loc_16A8C02:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_C4)), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_1B0, "0.00", CVar(CLng(4)), var_C4)) 'String
  loc_16A8C09:     LateIdCallSt
  loc_16A8C34:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8C3C:     var_E8 = CVar(CLng(7)) 'Long
  loc_16A8C41:     var_10C = "0.00"
  loc_16A8C4A:     LateIdCallSt
  loc_16A8C6B:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8C73:     var_E8 = CVar(CLng(5)) 'Long
  loc_16A8C78:     var_10C = "0.00"
  loc_16A8C81:     LateIdCallSt
  loc_16A8CA2:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16A8CB8:     LateIdCallSt
  loc_16A8CE9:     var_C4 = "ItemCode"
  loc_16A8D0E:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_C4)), CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_1B0, "0.00", CVar(CLng(8)), var_C4)) 'String
  loc_16A8D15:     LateIdCallSt
  loc_16A8D75:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("UnitName")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_1B0, var_144, var_1B0)) 'String
  loc_16A8D7C:     LateIdCallSt
  loc_16A8D94:     var_C4 = vbNullString
  loc_16A8DA7:     Set var_1B0 = Nothing 
  loc_16A8DAE:     var_88.MoveNext
  loc_16A8DB3:     GoTo loc_16A89D8
  loc_16A8DB6:   End If
  loc_16A8DB6: End If
  loc_16A8DBB: Set var_88 = Nothing
  loc_16A8DC3: Set var_170 = Nothing
  loc_16A8DC6: Exit Sub
End Sub

Public Sub Proc_113_59_1555B84
  'Data Table: 54B9E4
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim unk_54BA05 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim var_C4 As Variant
  Dim var_8C As Recordset15
  Dim var_F8 As Long
  Dim var_C8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Long
  Dim var_180 As Variant
  Dim var_198 As Variant
  loc_1554B72: Set var_94 = Me.Txt
  loc_1554B78: Call 0.Method_Proc_113_59_1555B840 (CInt(1), var_98, var_9C, "SELECT * FROM HALLBOOK WHERE DOCID='")
  loc_1554B80: var_C4 = var_98.Tag
  loc_1554B89: var_A0 = -1 & var_9C
  loc_1554B99: unk_54BA05.Execute var_A0 & "'", var_C8, 
  loc_1554BA4: Set var_88 = var_C8
  loc_1554BD0: If (var_88.RecordCount > 0) Then
  loc_1554C0C:   Set var_C8 = Me.Txt
  loc_1554C12:   Call 0.Method_Proc_113_59_1555B840 (CInt(2), var_D0)
  loc_1554C1A:   var_D0.Text = CStr(var_88.Fields.Item("VDate").Value)
  loc_1554C66:   Set var_C8 = Me.Txt
  loc_1554C6C:   Call 0.Method_Proc_113_59_1555B840 (CInt(3), var_D0)
  loc_1554C74:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PartyName")))
  loc_1554CBE:   Set var_C8 = Me.Txt
  loc_1554CC4:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H29), var_D0)
  loc_1554CCC:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_1554D16:   Set var_C8 = Me.Txt
  loc_1554D1C:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H2A), var_D0)
  loc_1554D24:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")))
  loc_1554D6E:   Set var_C8 = Me.Txt
  loc_1554D74:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H2E), var_D0)
  loc_1554D7C:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("City")))
  loc_1554DC6:   Set var_C8 = Me.Txt
  loc_1554DCC:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H23), var_D0)
  loc_1554DD4:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PinCode")))
  loc_1554E1E:   Set var_C8 = Me.Txt
  loc_1554E24:   Call 0.Method_Proc_113_59_1555B840 (CInt(4), var_D0)
  loc_1554E2C:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ContactNo_Off")))
  loc_1554E76:   Set var_C8 = Me.Txt
  loc_1554E7C:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H2B), var_D0)
  loc_1554E84:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ContactNo_Res")))
  loc_1554ECE:   Set var_C8 = Me.Txt
  loc_1554ED4:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H10), var_D0)
  loc_1554EDC:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")))
  loc_1554F26:   Set var_C8 = Me.Txt
  loc_1554F2C:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H2C), var_D0)
  loc_1554F34:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PanNo")))
  loc_1554F7E:   Set var_C8 = Me.Txt
  loc_1554F84:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H14), var_D0)
  loc_1554F8C:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ExpAtt")))
  loc_1554FD6:   Set var_C8 = Me.Txt
  loc_1554FDC:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H15), var_D0)
  loc_1554FE4:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GuarAtt")))
  loc_155502E:   Set var_C8 = Me.Txt
  loc_1555034:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H16), var_D0)
  loc_155503C:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CoverRate")))
  loc_1555067:   var_98 = var_88.Fields.Item("Func_Name")
  loc_1555086:   Set var_C8 = Me.Txt
  loc_155508C:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H17), var_D0)
  loc_1555094:   var_D0.Tag = Proc_6_38_E69628(CVar(var_98))
  loc_15550B6:   Set var_94 = Me.Txt
  loc_15550BC:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H17), var_98)
  loc_15550C4:   var_9C = var_98.Tag
  loc_15550DB:   If (var_9C <> vbNullString) Then
  loc_15550FC:     Set var_94 = Me.Txt
  loc_1555102:     Call 0.Method_Proc_113_59_1555B840 (CInt(&H17), var_98, var_9C, "Select * from FunctionType where Code='")
  loc_155510A:     var_C4 = var_98.Tag
  loc_1555113:     var_A0 = -1 & var_9C
  loc_1555123:     unk_54BA05.Execute var_A0 & "'", var_C8, 
  loc_155512E:     Set var_8C = var_C8
  loc_155515A:     If (var_8C.RecordCount > 0) Then
  loc_1555193:       Set var_C8 = Me.Txt
  loc_1555199:       Call 0.Method_Proc_113_59_1555B840 (CInt(&H17), var_D0)
  loc_15551A1:       var_D0.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")))
  loc_15551B5:     End If
  loc_15551B5:   End If
  loc_15551EB:   Set var_C8 = Me.Txt
  loc_15551F1:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H18), var_D0)
  loc_15551F9:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl1")))
  loc_1555243:   Set var_C8 = Me.Txt
  loc_1555249:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H19), var_D0)
  loc_1555251:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl2")))
  loc_155529B:   Set var_C8 = Me.Txt
  loc_15552A1:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H1A), var_D0)
  loc_15552A9:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl3")))
  loc_15552F3:   Set var_C8 = Me.Txt
  loc_15552F9:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H1B), var_D0)
  loc_1555301:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl4")))
  loc_155534B:   Set var_C8 = Me.Txt
  loc_1555351:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H2F), var_D0)
  loc_1555359:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl5")))
  loc_15553A3:   Set var_C8 = Me.Txt
  loc_15553A9:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H30), var_D0)
  loc_15553B1:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl6")))
  loc_15553FB:   Set var_C8 = Me.Txt
  loc_1555401:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H31), var_D0)
  loc_1555409:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl7")))
  loc_1555453:   Set var_C8 = Me.Txt
  loc_1555459:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H1C), var_D0)
  loc_1555461:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("HouseKeep")))
  loc_15554AB:   Set var_C8 = Me.Txt
  loc_15554B1:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H1D), var_D0)
  loc_15554B9:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FrontOff")))
  loc_1555503:   Set var_C8 = Me.Txt
  loc_1555509:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H1E), var_D0)
  loc_1555511:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Engg")))
  loc_155555B:   Set var_C8 = Me.Txt
  loc_1555561:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H1F), var_D0)
  loc_1555569:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Security")))
  loc_15555B3:   Set var_C8 = Me.Txt
  loc_15555B9:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H20), var_D0)
  loc_15555C1:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Chef")))
  loc_15555EC:   var_98 = var_88.Fields.Item("Board")
  loc_15555FD:   var_9C = Proc_6_38_E69628(CVar(var_98))
  loc_155560B:   Set var_C8 = Me.Txt
  loc_1555611:   Call 0.Method_Proc_113_59_1555B840 (CInt(&H21), var_D0)
  loc_1555619:   var_D0.Text = var_9C
  loc_155562D: End If
  loc_155564B: Set var_94 = Me.Txt
  loc_1555651: Call 0.Method_Proc_113_59_1555B840 (CInt(1), var_98, var_9C, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='")
  loc_1555659: var_C4 = var_98.Tag
  loc_1555662: var_A0 = -1 & var_9C
  loc_1555672: unk_54BA05.Execute var_A0 & "'", var_C8, 
  loc_155567D: Set var_88 = var_C8
  loc_1555695: ' Referenced from: 1555B75
  loc_15556A4: If Not(var_88.EOF) Then
  loc_15556C0:   var_B4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_15556CF:   Me.FGrid1.Row = "Board"
  loc_1555706:   For var_E8 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8E = var_E8 'Byte
  loc_1555716:     var_F8 = 7
  loc_1555745:     Set var_98 = Me.Txt
  loc_155574B:     Call 0.Method_Proc_113_59_1555B840 (CInt(1), var_C8, var_9C, CStr(Me.FGrid1.TextMatrix)))
  loc_1555753:     var_F8 = var_C8.Tag
  loc_15557D7:     If ((CVar(CLng(var_8E)) = var_9C) And (CVar(CLng(var_8E)) = Proc_6_38_E69628(CVar(var_88.Fields.Item("VenueName")), CStr(Me.FGrid1.TextMatrix)), 1))) Then
  loc_15557DA:       GoTo loc_1555B6D
  loc_15557DD:     End If
  loc_15557E0:   Next var_E8 'Byte
  loc_15557EA:   Set var_188 = Me.FGrid1
  loc_1555800:   var_118 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1555805:   var_138 = 0
  loc_1555827:   var_B4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_155582C:   var_F8 = 0
  loc_1555858:   var_198 = CVar(CStr((Val(CStr(Me.FGrid1.TextMatrix))) + CDbl(1)))) 'String
  loc_155585F:   LateIdCallSt
  loc_15558C7:   var_180 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_188, var_198)) 'String
  loc_15558CE:   LateIdCallSt
  loc_155592F:   var_180 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1555936:   LateIdCallSt
  loc_1555997:   var_180 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_155599E:   LateIdCallSt
  loc_15559FF:   var_180 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1555A06:   LateIdCallSt
  loc_1555A67:   var_180 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1555A6E:   LateIdCallSt
  loc_1555ACF:   var_180 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VenuCode")), 6, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1555AD6:   LateIdCallSt
  loc_1555B37:   var_180 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FPDocId")), 7, CVar(CLng(Me.FGrid1.Row)), var_188, var_180)) 'String
  loc_1555B3E:   LateIdCallSt
  loc_1555B56:   var_B4 = vbNullString
  loc_1555B69:   Set var_188 = Nothing 
  loc_1555B6D:   ' Referenced from: 15557DA
  loc_1555B70:   var_88.MoveNext
  loc_1555B75:   GoTo loc_1555695
  loc_1555B78: End If
  loc_1555B7D: Set var_88 = Nothing
  loc_1555B80: Exit Sub
End Sub

Public Sub Proc_113_60_FE1128
  'Data Table: 54B9E4
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  loc_FE0F70: Set var_88 = Me.TopCtrl1
  loc_FE0F76: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_FE0F8F: If (CStr() = "Browse") Then
  loc_FE0F92:   Exit Sub
  loc_FE0F93: End If
  loc_FE0F9E: Set var_88 = Me.OptCat
  loc_FE0FA4: Call 0.Method_Proc_113_60_FE11280 (CInt(0))
  loc_FE0FAC: var_A0.Value
  loc_FE0FCB: var_C4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_FE102D: If ((CVar(CLng(0)) And (IsNumeric(CVar(CStr(Me.FGrid.TextMatrix)))) = 0)) And (CLng(Me.FGrid.Col) = 0)) Then
  loc_FE1043:   var_C4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_FE104B:   var_E4 = CVar(CLng(0)) 'Long
  loc_FE1079:   var_17C = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_FE1081:   var_19C = CVar(CLng(0)) 'Long
  loc_FE10B8:   var_1BC = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FE10C0:   Set var_F8 = Me.FGrid
  loc_FE10C6:   LateIdCallSt
  loc_FE1101:   Me.FGrid.Col = CVar(CLng(0))
  loc_FE111C:   Me.FGrid.CellForeColor = &HFF
  loc_FE1124: End If
  loc_FE1124: Exit Sub
End Sub

Public Sub Proc_113_61_117DA90(arg_C) '117DA90
  'Data Table: 54B9E4
  Dim var_98 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C4 As Variant
  Dim var_B0 As TextBox
  Dim var_108 As Variant
  Dim var_F8 As String
  Dim var_11C As MSHFlexGrid
  loc_117D6DC: If (arg_C = 0) Then
  loc_117D6F2:   var_AC = CLng(Me.FGrid.Col)
  loc_117D702:   If (var_AC = CLng(1)) Then
  loc_117D718:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117D731:     Set var_98 = Me.TxtGrid
  loc_117D737:     Call 0.Method_Proc_113_61_117DA900 (0, var_B0, var_F8, CVar(CLng(2)))
  loc_117D73F:     var_C4 = var_B0.Text
  loc_117D747:     var_108 = CVar(var_F8) 'String
  loc_117D74F:     Set var_11C = Me.FGrid
  loc_117D755:     LateIdCallSt
  loc_117D79B:     Set var_98 = Me.TxtGrid
  loc_117D7A1:     Call 0.Method_Proc_113_61_117DA900 (0, var_B0, var_F8, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_117D7A9:     var_11C = var_B0.Text
  loc_117D7B1:     var_108 = CVar(var_F8) 'String
  loc_117D7B9:     Set var_11C = Me.FGrid
  loc_117D7BF:     LateIdCallSt
  loc_117D7DC:   Else
  loc_117D7E3:     If (var_AC = CLng(2)) Then
  loc_117D812:       Set var_98 = Me.TxtGrid
  loc_117D818:       Call 0.Method_Proc_113_61_117DA900 (0, var_B0, var_F8, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_117D820:       var_11C = var_B0.Text
  loc_117D828:       var_108 = CVar(var_F8) 'String
  loc_117D830:       Set var_11C = Me.FGrid
  loc_117D836:       LateIdCallSt
  loc_117D853:     Else
  loc_117D85A:       If (var_AC = CLng(3)) Then
  loc_117D867:         Set var_98 = Me.TxtGrid
  loc_117D86D:         Call 0.Method_Proc_113_61_117DA900 (arg_C, var_B0, var_11C, var_108)
  loc_117D885:         If Not(IsNumeric(CVar(var_B0))) Then
  loc_117D88C:           var_F8 = CStr(0)
  loc_117D899:           Set var_98 = Me.TxtGrid
  loc_117D89F:           Call 0.Method_Proc_113_61_117DA900 (arg_C, var_B0, var_F8, var_108)
  loc_117D8A7:           var_B0.Text = var_108
  loc_117D8B6:         End If
  loc_117D8C3:         Set var_98 = Me.TxtGrid
  loc_117D8C9:         Call 0.Method_Proc_113_61_117DA900 (arg_C, var_B0, var_F8)
  loc_117D8D1:         var_AC = var_B0.Text
  loc_117D93B:         LateIdCallSt
  loc_117D95F:         Call Proc_113_70_11548EC(Me.FGrid, CVar(CStr(Format(CVar(var_F8), "0.00"))), 1, 1)
  loc_117D964:         Call Proc_113_68_1178BD0(CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_117D96C:       Else
  loc_117D973:         If (var_AC = CLng(4)) Then
  loc_117D980:           Set var_98 = Me.TxtGrid
  loc_117D986:           Call 0.Method_Proc_113_61_117DA900 (arg_C, var_B0)
  loc_117D99E:           If Not(IsNumeric(CVar(var_B0))) Then
  loc_117D9B2:             Set var_98 = Me.TxtGrid
  loc_117D9B8:             Call 0.Method_Proc_113_61_117DA900 (arg_C, var_B0)
  loc_117D9C0:             var_B0.Text = CStr(0)
  loc_117D9CF:           End If
  loc_117D9DC:           Set var_98 = Me.TxtGrid
  loc_117D9E2:           Call 0.Method_Proc_113_61_117DA900 (arg_C, var_B0)
  loc_117DA54:           LateIdCallSt
  loc_117DA78:           Call Proc_113_70_11548EC(Me.FGrid, CVar(CStr(Format(CVar(var_B0.Text), "0.00"))), 1, 1)
  loc_117DA7D:           Call Proc_113_68_1178BD0(CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_117DA82:         End If
  loc_117DA82:       End If
  loc_117DA82:     End If
  loc_117DA82:   End If
  loc_117DA82: End If
  loc_117DA87: Proc_113_61_117DA90 = &HFF
End Sub

Public Sub Proc_113_62_19F0900
  'Data Table: 54B9E4
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_54BA05 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_140 As Variant
  Dim var_114 As Variant
  Dim var_130 As String
  Dim var_160 As Variant
  Dim var_1A4 As Variant
  Dim var_194 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1DC As String
  Dim var_1E0 As Variant
  Dim var_1EC As Recordset15
  Dim var_12C As Variant
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_1F4 As MSHFlexGrid
  Dim var_124 As Variant
  Dim var_8E As Integer
  Dim var_1FC As MSHFlexGrid
  Dim var_230 As Variant
  Dim var_190 As Variant
  loc_19ED6AB: If (Me.RecordCount > 0) Then
  loc_19ED704:   unk_54BA05.Execute CStr("Select S.* From HallBook S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_19ED70F:   Set var_88 = var_128
  loc_19ED763:   var_128 = var_88.Fields
  loc_19ED7CC:   var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_19ED811:   Me.LblUser.Caption = CStr(var_128 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_19ED88B:   var_12C = var_88.Fields.Item("U_AE")
  loc_19ED8EC:   var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C)) = "E"), "Last Update : ", "entdt : "))
  loc_19ED903:   var_194 = var_88.Fields
  loc_19ED92B:   Set var_1E0 = Me.LblLDt
  loc_19ED931:   var_1E0.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_194.Item("U_EntDt")))))
  loc_19ED97D:   If (var_88.RecordCount > 0) Then
  loc_19ED983:     Set var_1EC = var_88 
  loc_19ED9C0:     Set var_128 = Me.Txt
  loc_19ED9C6:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H22), var_12C)
  loc_19ED9CE:     var_12C.Text = CStr(var_1EC.Fields.Item("DocID").Value)
  loc_19ED9FE:     var_B0 = var_1EC.Fields.Item("vType")
  loc_19EDA06:     var_C0 = var_B0.Value
  loc_19EDA0F:     var_104 = CStr(var_C0)
  loc_19EDA1D:     Set var_128 = Me.Txt
  loc_19EDA23:     Call 0.Method_Proc_113_62_19F09000 (CInt(0), var_12C)
  loc_19EDA2B:     var_12C.Tag = var_104
  loc_19EDA6E:     Set var_9C = Me.Txt
  loc_19EDA74:     Call 0.Method_Proc_113_62_19F09000 (CInt(0), var_B0, var_104, "Select NCAT From Voucher_Type Where V_Type='", var_C0, -1)
  loc_19EDA95:     unk_54BA05.Execute var_12C & var_104 & "'", 0, var_194
  loc_19EDAA5:      = var_12C.Item()
  loc_19EDAAD:      = var_194.Value
  loc_19EDABC:     global_140 = CStr(var_B0.Tag.Fields)
  loc_19EDB0C:     Set var_9C = Me.Txt
  loc_19EDB12:     Call 0.Method_Proc_113_62_19F09000 (CInt(0), var_B0, var_104, "Select Description From Voucher_type Where V_Type='", var_C0, -1)
  loc_19EDB33:     unk_54BA05.Execute var_12C & var_104 & "'", 0, var_194
  loc_19EDB43:      = var_12C.Item()
  loc_19EDB4B:      = var_194.Value
  loc_19EDB62:     Set var_1A8 = Me.Txt
  loc_19EDB68:     Call 0.Method_Proc_113_62_19F09000 (CInt(0), var_1E0)
  loc_19EDB70:     var_1E0.Text = CStr(var_B0.Tag.Fields)
  loc_19EDBD1:     Set var_128 = Me.Txt
  loc_19EDBD7:     Call 0.Method_Proc_113_62_19F09000 (CInt(1), var_12C)
  loc_19EDBDF:     var_12C.Text = CStr(var_1EC.Fields.Item("VNo").Value)
  loc_19EDC47:     Set var_128 = Me.Txt
  loc_19EDC4D:     Call 0.Method_Proc_113_62_19F09000 (CInt(2), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_19EDC55:     var_12C.Text = 1
  loc_19EDCA7:     Me.LblVPrefix.Caption = CStr(var_1EC.Fields.Item("vPrefix").Value)
  loc_19EDCEF:     global_116 = CStr(var_1EC.Fields.Item("VTIME").Value)
  loc_19EDD35:     Set var_128 = Me.Txt
  loc_19EDD3B:     Call 0.Method_Proc_113_62_19F09000 (CInt(3), var_12C)
  loc_19EDD43:     var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("PartyName")))
  loc_19EDDA9:     Set var_128 = Me.Txt
  loc_19EDDAF:     Call 0.Method_Proc_113_62_19F09000 (CInt(5), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Total")), "0.00")))
  loc_19EDDB7:     var_12C.Text = 1
  loc_19EDE23:     Set var_128 = Me.Txt
  loc_19EDE29:     Call 0.Method_Proc_113_62_19F09000 (CInt(&HB), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("NetAmount")), "0.00")), 1)
  loc_19EDE31:     var_12C.Text = 1
  loc_19EDE9D:     Set var_128 = Me.Txt
  loc_19EDEA3:     Call 0.Method_Proc_113_62_19F09000 (CInt(&HF), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Amount")), "0.00")), 1)
  loc_19EDEAB:     var_12C.Text = 1
  loc_19EDEFB:     Set var_128 = Me.Txt
  loc_19EDF01:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H18), var_12C)
  loc_19EDF09:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl1")), 1)
  loc_19EDF53:     Set var_128 = Me.Txt
  loc_19EDF59:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H19), var_12C)
  loc_19EDF61:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl2")))
  loc_19EDFAB:     Set var_128 = Me.Txt
  loc_19EDFB1:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H1A), var_12C)
  loc_19EDFB9:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl3")))
  loc_19EE003:     Set var_128 = Me.Txt
  loc_19EE009:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H1B), var_12C)
  loc_19EE011:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl4")))
  loc_19EE05B:     Set var_128 = Me.Txt
  loc_19EE061:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H2F), var_12C)
  loc_19EE069:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl5")))
  loc_19EE0B3:     Set var_128 = Me.Txt
  loc_19EE0B9:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H30), var_12C)
  loc_19EE0C1:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl6")))
  loc_19EE10B:     Set var_128 = Me.Txt
  loc_19EE111:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H31), var_12C)
  loc_19EE119:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl7")))
  loc_19EE163:     Set var_128 = Me.Txt
  loc_19EE169:     Call 0.Method_Proc_113_62_19F09000 (CInt(3), var_12C)
  loc_19EE171:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("PartyName")))
  loc_19EE1BB:     Set var_128 = Me.Txt
  loc_19EE1C1:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H29), var_12C)
  loc_19EE1C9:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Add1")))
  loc_19EE213:     Set var_128 = Me.Txt
  loc_19EE219:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H2A), var_12C)
  loc_19EE221:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Add2")))
  loc_19EE26B:     Set var_128 = Me.Txt
  loc_19EE271:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H2E), var_12C)
  loc_19EE279:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("City")))
  loc_19EE2C3:     Set var_128 = Me.Txt
  loc_19EE2C9:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H23), var_12C)
  loc_19EE2D1:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("PinCode")))
  loc_19EE31B:     Set var_128 = Me.Txt
  loc_19EE321:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H2C), var_12C)
  loc_19EE329:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("PanNo")))
  loc_19EE354:     var_B0 = var_1EC.Fields.Item("MenuCatalog")
  loc_19EE365:     var_104 = Proc_6_38_E69628(CVar(var_B0))
  loc_19EE373:     Set var_128 = Me.Txt
  loc_19EE379:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H2D), var_12C)
  loc_19EE381:     var_12C.Tag = var_104
  loc_19EE3B3:     Set var_9C = Me.Txt
  loc_19EE3B9:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H2D), var_B0, var_104, "Select Distinct Name  from CatalogMast Where Code='")
  loc_19EE3C1:     var_C0 = var_B0.Tag
  loc_19EE3CA:     var_130 = -1 & var_104
  loc_19EE3DA:     unk_54BA05.Execute var_12C & var_104 & "'", var_128, 1
  loc_19EE3E5:     Set var_94 = var_128
  loc_19EE411:     If (var_94.RecordCount > 0) Then
  loc_19EE42E:       var_B0 = var_94.Fields.Item(0)
  loc_19EE44D:       Set var_128 = Me.Txt
  loc_19EE453:       Call 0.Method_Proc_113_62_19F09000 (CInt(&H2D), var_12C)
  loc_19EE45B:       var_12C.Text = CStr(var_B0.Value)
  loc_19EE474:     Else
  loc_19EE482:       Set var_9C = Me.Txt
  loc_19EE488:       Call 0.Method_Proc_113_62_19F09000 (CInt(&H2D), var_B0)
  loc_19EE490:       var_B0.Text = vbNullString
  loc_19EE49C:     End If
  loc_19EE4A1:     Set var_94 = Nothing
  loc_19EE4DA:     Set var_128 = Me.Txt
  loc_19EE4E0:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H2B), var_12C)
  loc_19EE4E8:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("ContactNo_Res")))
  loc_19EE532:     Set var_128 = Me.Txt
  loc_19EE538:     Call 0.Method_Proc_113_62_19F09000 (CInt(4), var_12C)
  loc_19EE540:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("ContactNo_Res")))
  loc_19EE58A:     Set var_128 = Me.Txt
  loc_19EE590:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H10), var_12C)
  loc_19EE598:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MobileNo")))
  loc_19EE5FE:     Set var_128 = Me.Txt
  loc_19EE604:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H11), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("DiscPer")), "0.00")))
  loc_19EE60C:     var_12C.Text = 1
  loc_19EE678:     Set var_128 = Me.Txt
  loc_19EE67E:     Call 0.Method_Proc_113_62_19F09000 (CInt(6), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("DiscAmt")), "0.00")))
  loc_19EE686:     var_12C.Text = 1
  loc_19EE6F2:     Set var_128 = Me.Txt
  loc_19EE6F8:     Call 0.Method_Proc_113_62_19F09000 (CInt(7), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Tax")), "0.00")), 1)
  loc_19EE700:     var_12C.Text = 1
  loc_19EE76C:     Set var_128 = Me.Txt
  loc_19EE772:     Call 0.Method_Proc_113_62_19F09000 (CInt(8), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Servicecharge")), "0.00")), 1)
  loc_19EE77A:     var_12C.Text = 1
  loc_19EE7E6:     Set var_128 = Me.Txt
  loc_19EE7EC:     Call 0.Method_Proc_113_62_19F09000 (CInt(9), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("AddAmt")), "0.00")), 1)
  loc_19EE7F4:     var_12C.Text = 1
  loc_19EE860:     Set var_128 = Me.Txt
  loc_19EE866:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H28), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("DedAmt")), "0.00")), 1)
  loc_19EE86E:     var_12C.Text = 1
  loc_19EE8BE:     Set var_128 = Me.Txt
  loc_19EE8C4:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H1C), var_12C)
  loc_19EE8CC:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("HouseKeep")), 1)
  loc_19EE916:     Set var_128 = Me.Txt
  loc_19EE91C:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H1D), var_12C)
  loc_19EE924:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("FrontOff")))
  loc_19EE96E:     Set var_128 = Me.Txt
  loc_19EE974:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H1E), var_12C)
  loc_19EE97C:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Engg")))
  loc_19EE9BB:     var_E0 = "0.00"
  loc_19EE9E2:     Set var_128 = Me.Txt
  loc_19EE9E8:     Call 0.Method_Proc_113_62_19F09000 (CInt(&HA), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("RoundOff")), var_E0)))
  loc_19EE9F0:     var_12C.Text = 1
  loc_19EEA40:     Set var_128 = Me.Txt
  loc_19EEA46:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H17), var_12C)
  loc_19EEA4E:     var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Func_Name")), 1)
  loc_19EEA9E:     var_130 = -1 & Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Func_Name")), "Select * from Functiontype Where Code='", var_E0)
  loc_19EEAA5:     var_1DC = var_12C & Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Func_Name")), "Select * from Functiontype Where Code='", var_E0) & "'"
  loc_19EEAAE:     unk_54BA05.Execute var_1DC, var_128, 1
  loc_19EEAB9:     Set var_8C = var_128
  loc_19EEAE7:     If (var_8C.RecordCount > 0) Then
  loc_19EEB20:       Set var_128 = Me.Txt
  loc_19EEB26:       Call 0.Method_Proc_113_62_19F09000 (CInt(&H17), var_12C)
  loc_19EEB2E:       var_12C.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")))
  loc_19EEB42:     End If
  loc_19EEB78:     Set var_128 = Me.Txt
  loc_19EEB7E:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H1F), var_12C)
  loc_19EEB86:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Security")))
  loc_19EEBD0:     Set var_128 = Me.Txt
  loc_19EEBD6:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H20), var_12C)
  loc_19EEBDE:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Chef")))
  loc_19EEC28:     Set var_128 = Me.Txt
  loc_19EEC2E:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H21), var_12C)
  loc_19EEC36:     var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Board")))
  loc_19EEC9C:     Set var_128 = Me.Txt
  loc_19EECA2:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H14), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("ExpAtt")), "0")))
  loc_19EECAA:     var_12C.Text = 1
  loc_19EED16:     Set var_128 = Me.Txt
  loc_19EED1C:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H15), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("GuarAtt")), "0")))
  loc_19EED24:     var_12C.Text = 1
  loc_19EED90:     Set var_128 = Me.Txt
  loc_19EED96:     Call 0.Method_Proc_113_62_19F09000 (CInt(&H16), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("CoverRate")), "0.00")), 1)
  loc_19EED9E:     var_12C.Text = 1
  loc_19EEE0A:     Set var_128 = Me.Txt
  loc_19EEE10:     Call 0.Method_Proc_113_62_19F09000 (CInt(&HE), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("TotalCoverRate")), "0.00")), 1)
  loc_19EEE18:     var_12C.Text = 1
  loc_19EEE49:     var_B0 = var_1EC.Fields.Item("HallRent")
  loc_19EEE66:     var_C0 = CVar(var_B0) 'Address
  loc_19EEE75:     var_104 = CStr(Format(var_C0, "0.00"))
  loc_19EEE84:     Set var_128 = Me.Txt
  loc_19EEE8A:     Call 0.Method_Proc_113_62_19F09000 (CInt(&HD), var_12C, var_104, 1)
  loc_19EEE92:     var_12C.Text = 1
  loc_19EEEAE:     Set var_1EC = Nothing 
  loc_19EEEB2:   End If
  loc_19EEED0:   Set var_9C = Me.Txt
  loc_19EEED6:   Call 0.Method_Proc_113_62_19F09000 (CInt(&H2D), var_B0, var_104, "SELECT IG.Code AS Code, IG.Name AS GroupName, GC.Limit AS Limit FROM ItemGrp IG INNER JOIN GroupCatalog  GC ON IG.Code = GC.ItemCatCode WHERE GC.CatCode='", var_C0)
  loc_19EEEDE:   -1 = var_B0.Tag
  loc_19EEEF7:   unk_54BA05.Execute var_128 & var_104 & "' ORDER BY IG.Name", 1, 1
  loc_19EEF08:   Set global_68 = var_128
  loc_19EEF2E:   Me.Requery -1
  loc_19EEF4A:   If (Me.RecordCount > 0) Then
  loc_19EEF4D:     var_AC = True
  loc_19EEF5A:     Set var_9C = Me.OptCat
  loc_19EEF60:     Call 0.Method_Proc_113_62_19F09000 (0, var_B0)
  loc_19EEF7E:     Call OptCat_UnknownEvent_9()
  loc_19EEF96:     Me.FGrid2.Rows = 1
  loc_19EEFA2:     Set var_1F4 = Me.FGrid2
  loc_19EEFA5:     ' Referenced from: 19EF16A
  loc_19EEFB7:     If Not(Me.EOF) Then
  loc_19EEFCC:       var_AC = CVar((CLng(var_1F4.Rows) + 1)) 'Long
  loc_19EEFD4:       var_1F4.Rows = 1
  loc_19EEFEE:       var_AC = CVar((CLng(var_1F4.Rows) - 1)) 'Long
  loc_19EF00F:       var_100 = CVar(CStr((CLng(var_1F4.Rows) - 1))) 'String
  loc_19EF016:       LateIdCallSt
  loc_19EF039:       var_D0 = CVar((CLng(var_1F4.Rows) - 1)) 'Long
  loc_19EF071:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("GroupName")), CVar(CLng(2)), "0.00", var_1F4, var_100, CVar(CLng(0)))) 'String
  loc_19EF078:       LateIdCallSt
  loc_19EF08F:       var_E0 = var_1F4.Rows
  loc_19EF09E:       var_D0 = CVar((CLng(var_E0) - 1)) 'Long
  loc_19EF0D6:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Code")), CVar(CLng(1)), "0.00", var_1F4, var_100)) 'String
  loc_19EF0DD:       LateIdCallSt
  loc_19EF0F4:       var_100 = var_1F4.Rows
  loc_19EF103:       var_D0 = CVar((CLng(var_100) - 1)) 'Long
  loc_19EF12A:       var_B0 = Me.Fields.Item("Limit")
  loc_19EF139:       Proc_6_48_EF4E00(var_E0, CVar(var_B0), CVar(CLng(3)), "0.00", var_1F4, var_100)
  loc_19EF142:       var_124 = CVar(CStr(var_E0)) 'String
  loc_19EF149:       LateIdCallSt
  loc_19EF165:       Me.MoveNext
  loc_19EF16A:       GoTo loc_19EEFA5
  loc_19EF16D:     End If
  loc_19EF17F:     var_AC = CVar((CLng(var_1F4.Rows) + 1)) 'Long
  loc_19EF187:     var_1F4.Rows = "Limit"
  loc_19EF1A1:     var_AC = CVar((CLng(var_1F4.Rows) - 1)) 'Long
  loc_19EF1A9:     var_F0 = CVar(CLng(0)) 'Long
  loc_19EF1C2:     var_100 = CVar(CStr((CLng(var_1F4.Rows) - 1))) 'String
  loc_19EF1C9:     LateIdCallSt
  loc_19EF1EC:     var_AC = CVar((CLng(var_1F4.Rows) - 1)) 'Long
  loc_19EF1F4:     var_F0 = CVar(CLng(2)) 'Long
  loc_19EF1F9:     var_140 = "EXTRA"
  loc_19EF202:     LateIdCallSt
  loc_19EF210:     var_C0 = var_1F4.Rows
  loc_19EF21F:     var_AC = CVar((CLng(var_C0) - 1)) 'Long
  loc_19EF227:     var_F0 = CVar(CLng(3)) 'Long
  loc_19EF230:     var_E0 = CVar(CStr(0)) 'String
  loc_19EF237:     LateIdCallSt
  loc_19EF252:     var_1F4.FixedRows = 1
  loc_19EF259:     Set var_1F4 = Nothing 
  loc_19EF260:   Else
  loc_19EF26D:     Set var_9C = Me.OptCat
  loc_19EF273:     Call 0.Method_Proc_113_62_19F09000 (1, var_B0, True, var_1F4, var_E0, var_F0, True)
  loc_19EF291:     Call OptCat_UnknownEvent_9()
  loc_19EF296:   End If
  loc_19EF2A5:   Me.FGrid1.Redraw = False
  loc_19EF2C0:   Me.FGrid1.Rows = 1
  loc_19EF2CA:   var_8E = 1
  loc_19EF2EB:   Set var_9C = Me.Txt
  loc_19EF2F1:   Call 0.Method_Proc_113_62_19F09000 (CInt(&H22), var_B0, var_104, "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='", var_C0, -1, var_128)
  loc_19EF2F9:   var_8E = var_B0.Text
  loc_19EF312:   unk_54BA05.Execute 1 & var_104 & "'", 1, OptCat.DispID_B
  loc_19EF31D:   Set var_88 = var_128
  loc_19EF349:   If (var_88.RecordCount > 0) Then
  loc_19EF34C:     ' Referenced from: 19EF607
  loc_19EF35B:     If Not(var_88.EOF) Then
  loc_19EF35E:       var_AC = vbNullString
  loc_19EF368:       Set var_9C = Me.FGrid1
  loc_19EF384:       var_AC = CVar(CLng(var_8E)) 'Long
  loc_19EF389:       var_F0 = 0
  loc_19EF397:       var_C0 = CVar(CStr(var_8E)) 'String
  loc_19EF39E:       LateIdCallSt
  loc_19EF3AD:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_19EF3B2:       var_114 = 6
  loc_19EF3E6:       var_E0 = CVar(CStr(var_88.Fields.Item("VenuCode").Value)) 'String
  loc_19EF3ED:       LateIdCallSt
  loc_19EF43D:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VenuName")), 1, CVar(CLng(var_8E)), Me.FGrid1, var_E0, 1, CVar(CLng(var_8E)))) 'String
  loc_19EF444:       LateIdCallSt
  loc_19EF45A:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_19EF45F:       var_114 = 2
  loc_19EF493:       var_E0 = CVar(CStr(var_88.Fields.Item("FromDate").Value)) 'String
  loc_19EF49A:       LateIdCallSt
  loc_19EF4B4:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_19EF4B9:       var_114 = 4
  loc_19EF4ED:       var_E0 = CVar(CStr(var_88.Fields.Item("ToDate").Value)) 'String
  loc_19EF4F4:       LateIdCallSt
  loc_19EF52A:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_19EF52F:       var_140 = 3
  loc_19EF560:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("FromTime")), "HH:MM"))) 'String
  loc_19EF567:       LateIdCallSt
  loc_19EF59D:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_19EF5A2:       var_140 = 5
  loc_19EF5D3:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("ToTime")), "HH:MM"))) 'String
  loc_19EF5DA:       LateIdCallSt
  loc_19EF5F2:       Set var_1F8 = Nothing 
  loc_19EF5FC:       var_8E = (var_8E + 1)
  loc_19EF602:       var_88.MoveNext
  loc_19EF607:       GoTo loc_19EF34C
  loc_19EF60A:     End If
  loc_19EF61D:     Me.FGrid1.FixedRows = 1
  loc_19EF625:   End If
  loc_19EF633:   Me.FGrid1.Redraw = True
  loc_19EF641:   If (var_8E = 1) Then
  loc_19EF657:     Me.FGrid1.Rows = 1
  loc_19EF67D:     var_C0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, CInt(0), var_8E, var_1F8, var_124, 1, 1, var_140))) 'String
  loc_19EF685:     Set var_B0 = Me.FGrid1
  loc_19EF6B2:     Me.FGrid1.FixedRows = 1
  loc_19EF6BA:   End If
  loc_19EF6C9:   Me.FGrid.Redraw = False
  loc_19EF6E4:   Me.FGrid.Rows = 1
  loc_19EF6FC:   Set var_9C = Me.OptCat
  loc_19EF702:   Call 0.Method_Proc_113_62_19F09000 (CInt(0), var_B0, 1, FGrid1.DispID_10000, var_C0, var_F0)
  loc_19EF70A:   var_B0.Value
  loc_19EF71A:   Set var_128 = Me.TopCtrl1
  loc_19EF720:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005((CBool(var_1F8) = &HFF))
  loc_19EF744:   If (1 And (CStr(var_124) <> "Browse")) Then
  loc_19EF747:     Call Proc_113_58_16A8DC8(1, var_140)
  loc_19EF763:     If (Me.RecordCount <= 0) Then
  loc_19EF766:       Exit Sub
  loc_19EF767:     End If
  loc_19EF774:     var_D0 = "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallBook1 AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='"
  loc_19EF7BD:     unk_54BA05.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By S.Sno"), var_124, -1
  loc_19EF7C8:     Set var_88 = var_128
  loc_19EF7F6:     If (var_88.RecordCount > 0) Then
  loc_19EF7F9:       ' Referenced from: 19F0259
  loc_19EF808:       If Not(var_88.EOF) Then
  loc_19EF80B:         var_AC = vbNullString
  loc_19EF815:         Set var_9C = Me.FGrid
  loc_19EF82A:         Set var_1FC = Me.FGrid
  loc_19EF852:         For var_200 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_200 'Integer
  loc_19EF85C:           var_AC = CVar(CLng(1)) 'Long
  loc_19EF864:           var_F0 = CVar(CLng(1)) 'Long
  loc_19EF896:           If (Trim(CVar(CStr(var_1FC.TextMatrix)))) = vbNullString) Then
  loc_19EF899:             GoTo loc_19F0242
  loc_19EF89C:           End If
  loc_19EF8A0:           var_AC = CVar(CLng(1)) 'Long
  loc_19EF8A8:           var_F0 = CVar(CLng(1)) 'Long
  loc_19EF8BB:           var_100 = CVar(CStr(var_1FC.TextMatrix))) 'String
  loc_19EF8E1:           var_E0 = var_88.Fields.Item("Remarks").Value
  loc_19EF8F1:           var_160 = CVar(CLng(1)) 'Long
  loc_19EF924:           var_1C8 = CVar(CLng(1)) And (Trim(CVar(CStr(var_1FC.TextMatrix)))) <> vbNullString)
  loc_19EF92C:           var_230 = CVar(CLng(1)) 'Long
  loc_19EF978:           If CBool(CVar(CLng(0)) And (IsNumeric(CVar(CStr(var_1FC.TextMatrix)))) = 0)) Then
  loc_19EF97F:             var_AC = CVar(CLng(1)) 'Long
  loc_19EF987:             var_F0 = CVar(CLng(0)) 'Long
  loc_19EF98C:             var_140 = "ü"
  loc_19EF995:             LateIdCallSt
  loc_19EF9D9:             var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_19EF9E0:             LateIdCallSt
  loc_19EFA1C:             Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("QtyIss")), var_1FC, var_E0, CVar(CLng(9)), CVar(CLng(1)), var_1FC)
  loc_19EFAA7:             LateIdCallSt
  loc_19EFAF1:             Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("Rate")), var_1FC, CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"), vbNullString))), CVar(CLng(3)), CVar(CLng(1)), 1)
  loc_19EFB3A:             var_160 = CVar(CLng(1)) 'Long
  loc_19EFB42:             var_1A4 = CVar(CLng(4)) 'Long
  loc_19EFB75:             var_1D8 = CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("Rate")), "0.00"), vbNullString))) 'String
  loc_19EFB7C:             LateIdCallSt
  loc_19EFBC0:             var_F0 = CVar(CLng(1)) 'Long
  loc_19EFBFC:             LateIdCallSt
  loc_19EFC4B:             var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(1)), var_1FC, CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))), 1, 1)) 'String
  loc_19EFC52:             LateIdCallSt
  loc_19EFC9D:             var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(1)), var_1FC, var_E0, CVar(CLng(5)))) 'String
  loc_19EFCA4:             LateIdCallSt
  loc_19EFCD6:             var_F0 = CVar(CLng(1)) 'Long
  loc_19EFCDE:             var_140 = CVar(CLng(8)) 'Long
  loc_19EFD0B:             var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))) 'String
  loc_19EFD12:             LateIdCallSt
  loc_19EFD2B:           Else
  loc_19EFD2F:             var_AC = CVar(CLng(1)) 'Long
  loc_19EFD37:             var_F0 = CVar(CLng(9)) 'Long
  loc_19EFD4A:             var_100 = CVar(CStr(var_1FC.TextMatrix))) 'String
  loc_19EFD70:             var_E0 = var_88.Fields.Item("Item").Value
  loc_19EFD80:             var_160 = CVar(CLng(1)) 'Long
  loc_19EFDC6:             If CBool(CVar(CLng(0)) And (IsNumeric(CVar(CStr(var_1FC.TextMatrix)))) = 0)) Then
  loc_19EFDCD:               var_AC = CVar(CLng(1)) 'Long
  loc_19EFDD5:               var_F0 = CVar(CLng(0)) 'Long
  loc_19EFDDA:               var_140 = "ü"
  loc_19EFDE3:               LateIdCallSt
  loc_19EFE27:               var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_19EFE2E:               LateIdCallSt
  loc_19EFE6A:               Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("QtyIss")), var_1FC, var_E0, CVar(CLng(9)), CVar(CLng(1)), var_1FC)
  loc_19EFEF5:               LateIdCallSt
  loc_19EFF3F:               Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("Rate")), var_1FC, CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"), vbNullString))), CVar(CLng(3)), CVar(CLng(1)), 1)
  loc_19EFF53:               var_128 = var_88.Fields
  loc_19EFF88:               var_160 = CVar(CLng(1)) 'Long
  loc_19EFF90:               var_1A4 = CVar(CLng(4)) 'Long
  loc_19EFFC3:               var_1D8 = CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_128.Item("Rate")), "0.00"), vbNullString))) 'String
  loc_19EFFCA:               LateIdCallSt
  loc_19F000E:               var_F0 = CVar(CLng(1)) 'Long
  loc_19F0016:               var_140 = CVar(CLng(5)) 'Long
  loc_19F0043:               var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_19F004A:               LateIdCallSt
  loc_19F0080:               var_F0 = CVar(CLng(1)) 'Long
  loc_19F00BC:               LateIdCallSt
  loc_19F010B:               var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CatType")), CVar(CLng(6)), CVar(CLng(1)), var_1FC, CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))), 1, 1)) 'String
  loc_19F0112:               LateIdCallSt
  loc_19F015D:               var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(1)), var_1FC, var_E0, CVar(CLng(7)))) 'String
  loc_19F0164:               LateIdCallSt
  loc_19F01AF:               var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(1)), var_1FC, var_E0)) 'String
  loc_19F01B6:               LateIdCallSt
  loc_19F01E8:               var_F0 = CVar(CLng(1)) 'Long
  loc_19F01F0:               var_140 = CVar(CLng(8)) 'Long
  loc_19F021D:               var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))) 'String
  loc_19F0224:               LateIdCallSt
  loc_19F023A:             End If
  loc_19F023A:           End If
  loc_19F023D:         Next var_200 'Integer
  loc_19F0242:         ' Referenced from: 19EF899
  loc_19F0244:         Set var_1FC = Nothing 
  loc_19F024E:         var_8E = (var_8E + 1)
  loc_19F0254:         var_88.MoveNext
  loc_19F0259:         GoTo loc_19EF7F9
  loc_19F025C:       End If
  loc_19F026F:       Me.FGrid.FixedRows = 1
  loc_19F0277:     End If
  loc_19F027A:   Else
  loc_19F0287:     var_D0 = "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallBook1 AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='"
  loc_19F02D0:     unk_54BA05.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By S.Sno"), var_124, -1
  loc_19F02DB:     Set var_88 = var_128
  loc_19F0309:     If (var_88.RecordCount > 0) Then
  loc_19F030C:       ' Referenced from:   19F0818
  loc_19F031B:       If Not(var_88.EOF) Then
  loc_19F031E:         var_AC = vbNullString
  loc_19F0328:         Set var_9C = Me.FGrid
  loc_19F033D:         Set var_294 = Me.FGrid
  loc_19F0344:         var_D0 = CVar(CLng(1)) 'Long
  loc_19F034C:         var_114 = CVar(CLng(9)) 'Long
  loc_19F037C:         var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_19F0383:         LateIdCallSt
  loc_19F039D:         var_D0 = CVar(CLng(1)) 'Long
  loc_19F03D2:         var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), var_D0, var_294, var_E0, CVar(CLng(1)))) 'String
  loc_19F03D9:         LateIdCallSt
  loc_19F0411:         Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("QtyIss")), var_294, var_E0, var_D0)
  loc_19F049C:         LateIdCallSt
  loc_19F04E6:         Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("Rate")), var_294, CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"), vbNullString))), CVar(CLng(3)), CVar(CLng(1)))
  loc_19F052F:         var_160 = CVar(CLng(1)) 'Long
  loc_19F0537:         var_1A4 = CVar(CLng(4)) 'Long
  loc_19F056A:         var_1D8 = CVar(CStr(IIf((var_E0 <> 0), Format(CVar(var_88.Fields.Item("Rate")), "0.00"), vbNullString))) 'String
  loc_19F0571:         LateIdCallSt
  loc_19F05B5:         var_F0 = CVar(CLng(1)) 'Long
  loc_19F05BD:         var_140 = CVar(CLng(5)) 'Long
  loc_19F05EA:         var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_19F05F1:         LateIdCallSt
  loc_19F0627:         var_F0 = CVar(CLng(1)) 'Long
  loc_19F062F:         var_140 = CVar(CLng(7)) 'Long
  loc_19F065C:         var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_19F0663:         LateIdCallSt
  loc_19F0699:         var_F0 = CVar(CLng(1)) 'Long
  loc_19F06D5:         LateIdCallSt
  loc_19F0724:         var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(1)), var_294, CVar(CStr(Format(CVar(var_88.Fields.Item("CatType")), "0.00"))), 1, 1)) 'String
  loc_19F072B:         LateIdCallSt
  loc_19F0776:         var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(1)), var_294, var_E0, CVar(CLng(6)))) 'String
  loc_19F077D:         LateIdCallSt
  loc_19F07AF:         var_F0 = CVar(CLng(1)) 'Long
  loc_19F07B7:         var_140 = CVar(CLng(8)) 'Long
  loc_19F07CB:         var_E0 = "0.00"
  loc_19F07E4:         var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), var_E0))) 'String
  loc_19F07EB:         LateIdCallSt
  loc_19F0803:         Set var_294 = Nothing 
  loc_19F080D:         var_8E = (var_8E + 1)
  loc_19F0813:         var_88.MoveNext
  loc_19F0818:         GoTo loc_19F030C
  loc_19F081B:       End If
  loc_19F082E:       Me.FGrid.FixedRows = 1
  loc_19F0836:     End If
  loc_19F0836:   End If
  loc_19F083C:   If (1 = 1) Then
  loc_19F0852:     Me.FGrid.Rows = 1
  loc_19F0878:     var_C0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), 1, var_294, var_124, 1, 1, var_140))) 'String
  loc_19F0880:     Set var_B0 = Me.FGrid
  loc_19F08AD:     Me.FGrid.FixedRows = 1
  loc_19F08B5:   End If
  loc_19F08B8: Else
  loc_19F08B8:   Call Proc_113_64_FF6F20(FGrid.DispID_10000, var_C0, var_F0, var_294, var_E0)
  loc_19F08BD: End If
  loc_19F08BD: Call Proc_113_66_F29230(var_F0, var_294)
  loc_19F08D5: Me.FGrid.FixedRows = 1
  loc_19F08EB: Me.FGrid.Redraw = True
  loc_19F08F8: Set var_88 = Nothing
  loc_19F08FB: Exit Sub
  loc_19F08FC: Exit Sub
End Sub

Public Sub Proc_113_63_11A4F44
  'Data Table: 54B9E4
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim unk_54BA05 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_14C As Variant
  loc_11A4B45: Set var_9C = Me.TopCtrl1
  loc_11A4B4B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(&HFF)
  loc_11A4B53: var_B0 = CStr()
  loc_11A4B64: If (var_B0 = "Add") Then
  loc_11A4B94:   Set var_9C = Me.Txt
  loc_11A4B9A:   Call 0.Method_Proc_113_63_11A4F440 (CInt(&H22), var_B4, var_B0, "Select Count(*) From HallBook1 Where DocID='", var_AC, -1)
  loc_11A4BBB:   unk_54BA05.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_11A4BCB:    = var_D4.Item()
  loc_11A4BD3:    = var_E8.Value
  loc_11A4C00:   If (var_B4.Text.Fields > 0) Then
  loc_11A4C09:     Call 0.Method_arg_50 (var_B0)
  loc_11A4C2A:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_11A4C40:     Call Proc_113_71_11096F8(MemVar_1F95044)
  loc_11A4C53:     Set var_9C = Me.Txt
  loc_11A4C59:     Call 0.Method_Proc_113_63_11A4F440 (CInt(&H22), var_B4)
  loc_11A4C61:     var_B4.Text = var_B0
  loc_11A4C75:     Proc_113_63_11A4F44 = 0
  loc_11A4C7B:   End If
  loc_11A4C7B: End If
  loc_11A4C86: Set var_9C = Me.OptCat
  loc_11A4C8C: Call 0.Method_Proc_113_63_11A4F440 (CInt(0), var_B4)
  loc_11A4C94: var_B4.Value
  loc_11A4CAA: If (CBool(var_B0) = &HFF) Then
  loc_11A4CAD:   GoTo loc_11A4F3E
  loc_11A4CB0: End If
  loc_11A4CD5: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_11A4CDF:   var_CC = CVar(CLng(var_88)) 'Long
  loc_11A4CE7:   var_108 = CVar(CLng(1)) 'Long
  loc_11A4D07:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_11A4D23:   If CBool(var_118 <> vbNullString) Then
  loc_11A4D2A:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11A4D32:     var_108 = CVar(CLng(3)) 'Long
  loc_11A4D4C:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_11A4D5D:     var_14C = CVar(CLng(var_88)) 'Long
  loc_11A4D9D:     If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> "Food")) Then
  loc_11A4DC5:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11A4DEB:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11A4DF7:       Set var_9C = Me.FGrid
  loc_11A4E1B:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11A4E28:       Proc_113_63_11A4F44 = 0
  loc_11A4E2E:     End If
  loc_11A4E32:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11A4E3A:     var_108 = CVar(CLng(4)) 'Long
  loc_11A4E54:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_11A4E65:     var_14C = CVar(CLng(var_88)) 'Long
  loc_11A4EA5:     If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> "Food")) Then
  loc_11A4ECD:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11A4EF3:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11A4EFF:       Set var_9C = Me.FGrid
  loc_11A4F23:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11A4F30:       Proc_113_63_11A4F44 = 0
  loc_11A4F36:     End If
  loc_11A4F36:   End If
  loc_11A4F39: Next var_12C 'Integer
  loc_11A4F3E: ' Referenced from: 11A4CAD
  loc_11A4F3E: Proc_113_63_11A4F44 = 
End Sub

Public Sub Proc_113_64_FF6F20
  'Data Table: 54B9E4
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_FF6D31: Me.LblVPrefix.Caption = vbNullString
  loc_FF6D47: Set var_8C = Me.Txt
  loc_FF6D4D: Call 0.Method_Proc_113_64_FF6F20C (var_8E, var_86)
  loc_FF6D5D: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FF6D73:   Set var_8C = Me.Txt
  loc_FF6D79:   Call 0.Method_Proc_113_64_FF6F200 (CInt(var_86), var_98)
  loc_FF6D81:   var_98.Text = vbNullString
  loc_FF6D9D:   Set var_8C = Me.Txt
  loc_FF6DA3:   Call 0.Method_Proc_113_64_FF6F200 (CInt(var_86), var_98)
  loc_FF6DAB:   var_98.Tag = vbNullString
  loc_FF6DBA: Next var_92 'Byte
  loc_FF6DD3: Me.FGrid.Rows = 1
  loc_FF6DF9: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_FF6E01: Set var_98 = Me.FGrid
  loc_FF6E2E: Me.FGrid.FixedRows = 1
  loc_FF6E49: Me.FGrid1.Rows = 1
  loc_FF6E6D: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_FF6E75: Set var_98 = Me.FGrid1
  loc_FF6EA2: Me.FGrid1.FixedRows = 1
  loc_FF6EBD: Me.FGrid2.Rows = 1
  loc_FF6EE1: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid2, 0, FGrid1.DispID_10000))) 'String
  loc_FF6EE9: Set var_98 = Me.FGrid2
  loc_FF6F16: Me.FGrid2.FixedRows = 1
  loc_FF6F1E: Exit Sub
End Sub

Public Sub Proc_113_65_FAF664(arg_C) 'FAF664
  'Data Table: 54B9E4
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_FAF4CE: Set var_8C = Me.Txt
  loc_FAF4D4: Call 0.Method_Proc_113_65_FAF664C (var_8E, var_86)
  loc_FAF4E4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FAF4FA:   Set var_8C = Me.Txt
  loc_FAF500:   Call 0.Method_Proc_113_65_FAF6640 (CInt(var_86), var_98)
  loc_FAF508:   var_98.Enabled = arg_C
  loc_FAF517: Next var_92 'Byte
  loc_FAF52A: Set var_8C = Me.Txt
  loc_FAF530: Call 0.Method_Proc_113_65_FAF6640 (CInt(&H22), var_98)
  loc_FAF538: var_98.Enabled = False
  loc_FAF551: Set var_8C = Me.Txt
  loc_FAF557: Call 0.Method_Proc_113_65_FAF6640 (CInt(5), var_98)
  loc_FAF55F: var_98.Enabled = False
  loc_FAF578: Set var_8C = Me.Txt
  loc_FAF57E: Call 0.Method_Proc_113_65_FAF6640 (CInt(&HB), var_98)
  loc_FAF586: var_98.Enabled = False
  loc_FAF59F: Set var_8C = Me.Txt
  loc_FAF5A5: Call 0.Method_Proc_113_65_FAF6640 (CInt(&HE), var_98)
  loc_FAF5AD: var_98.Enabled = False
  loc_FAF5C6: Set var_8C = Me.Txt
  loc_FAF5CC: Call 0.Method_Proc_113_65_FAF6640 (CInt(&HF), var_98)
  loc_FAF5D4: var_98.Enabled = False
  loc_FAF5ED: Set var_8C = Me.Txt
  loc_FAF5F3: Call 0.Method_Proc_113_65_FAF6640 (CInt(&HA), var_98)
  loc_FAF5FB: var_98.Enabled = False
  loc_FAF614: Set var_8C = Me.Txt
  loc_FAF61A: Call 0.Method_Proc_113_65_FAF6640 (CInt(7), var_98)
  loc_FAF622: var_98.Enabled = False
  loc_FAF649: If (Me.Frame1.Visible = &HFF) Then
  loc_FAF658:   Me.Frame1.Visible = False
  loc_FAF660: End If
  loc_FAF660: Exit Sub
End Sub

Public Sub Proc_113_66_F29230
  'Data Table: 54B9E4
  loc_F2913C: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F2914E:   Me.DGVType.Visible = False
  loc_F29156: End If
  loc_F29172: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F29184:   Me.DGHall.Visible = False
  loc_F2918C: End If
  loc_F291A8: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F291BA:   Me.DGItem.Visible = False
  loc_F291C2: End If
  loc_F291DE: If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_F291F0:   Me.DGFPNo.Visible = False
  loc_F291F8: End If
  loc_F29214: If (CBool(Me.DG_Catalog.Visible) = &HFF) Then
  loc_F29226:   Me.DG_Catalog.Visible = False
  loc_F2922E: End If
  loc_F2922E: Exit Sub
End Sub

Public Sub Proc_113_67_F0CDA0
  'Data Table: 54B9E4
  loc_F0CCC4: Call Proc_113_66_F29230()
  loc_F0CCD4: Set var_88 = Me.Txt
  loc_F0CCDA: Call 0.Method_Proc_113_67_F0CDA00 (CInt(2))
  loc_F0CD03: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0CD06:   Exit Sub
  loc_F0CD07: End If
  loc_F0CD12: Set var_88 = Me.Txt
  loc_F0CD18: Call 0.Method_Proc_113_67_F0CDA00 (CInt(1), var_8C)
  loc_F0CD41: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0CD44:   Exit Sub
  loc_F0CD45: End If
  loc_F0CD7C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0CD7F:   Call TopCtrl1_UnknownEvent_16()
  loc_F0CD87: Else
  loc_F0CD8D:   Call 0.Method_arg_1E8 (var_88)
  loc_F0CD95:   Call var_88.SetFocus
  loc_F0CD9E: End If
  loc_F0CD9E: Exit Sub
End Sub

Public Sub Proc_113_68_1178BD0
  'Data Table: 54B9E4
  Dim var_90 As Double
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_FC As Double
  Dim var_98 As Double
  Dim var_110 As TextBox
  Dim var_118 As TextBox
  Dim var_14C As Double
  Dim var_124 As TextBox
  Dim var_154 As Double
  Dim var_144 As String
  Dim var_140 As TextBox
  Dim var_15C As TextBox
  loc_117882B: var_90 = CDbl(0)
  loc_1178853: For var_B0 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B0 'Integer
  loc_117885D:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_1178865:   var_E0 = CVar(CLng(5)) 'Long
  loc_1178891:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11788A1:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_11788A9:   var_E0 = CVar(CLng(7)) 'Long
  loc_11788D5:   var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11788E4: Next var_B0 'Integer
  loc_1178920: Set var_9C = Me.Txt
  loc_1178926: Call 0.Method_Proc_113_68_1178BD00 (CInt(5), var_110, CStr(Format(var_90, "0.00")))
  loc_117892E: var_110.Text = 1
  loc_117896C: var_F4 = CStr(Format(var_98, "0.00"))
  loc_117897B: Set var_9C = Me.Txt
  loc_1178981: Call 0.Method_Proc_113_68_1178BD00 (CInt(7), var_110, var_F4)
  loc_1178989: var_110.Text = 1
  loc_11789AD: Set var_9C = Me.Txt
  loc_11789B3: Call 0.Method_Proc_113_68_1178BD00 (CInt(5), var_110, var_F4)
  loc_11789BB: 1 = var_110.Text
  loc_11789C8: var_FC = Val(var_F4)
  loc_11789D9: Set var_114 = Me.Txt
  loc_11789DF: Call 0.Method_Proc_113_68_1178BD00 (CInt(&HD), var_118, var_11C)
  loc_11789F4: var_14C = Val(var_11C)
  loc_1178A05: Set var_120 = Me.Txt
  loc_1178A0B: Call 0.Method_Proc_113_68_1178BD00 (CInt(&HE), var_124, var_128)
  loc_1178A43: var_AC = CVar(((var_118.Text + var_124.Text) + Val(var_128))) 'Double
  loc_1178A52: var_144 = CStr(Format("0.00", "0.00"))
  loc_1178A61: Set var_13C = Me.Txt
  loc_1178A67: Call 0.Method_Proc_113_68_1178BD00 (CInt(&HF), var_140, var_144, 1)
  loc_1178AA9: Set var_9C = Me.Txt
  loc_1178AAF: Call 0.Method_Proc_113_68_1178BD00 (CInt(&HF), var_110, var_F4)
  loc_1178AB7: var_154 = var_110.Text
  loc_1178AC4: var_FC = Val(var_F4)
  loc_1178AD5: Set var_114 = Me.Txt
  loc_1178ADB: Call 0.Method_Proc_113_68_1178BD00 (CInt(6), var_118, var_11C)
  loc_1178AF0: var_14C = Val(var_11C)
  loc_1178B01: Set var_120 = Me.Txt
  loc_1178B07: Call 0.Method_Proc_113_68_1178BD00 (CInt(7), var_124, var_128)
  loc_1178B1C: var_154 = Val(var_128)
  loc_1178B2D: Set var_13C = Me.Txt
  loc_1178B33: Call 0.Method_Proc_113_68_1178BD00 (CInt(8), var_140, var_144)
  loc_1178B6F: var_AC = CVar((var_118.Text - ((var_124.Text + 1) + Val(var_144)))) 'Double
  loc_1178B8D: Set var_158 = Me.Txt
  loc_1178B93: Call 0.Method_Proc_113_68_1178BD00 (CInt(&HB), var_15C, CStr(Format("0.00", "0.00")), 1)
  loc_1178B9B: var_15C.Text = 1
  loc_1178BCD: Exit Sub
End Sub

Public Sub Proc_113_69_1391924
  'Data Table: 54B9E4
  Dim var_AC As Variant
  Dim var_120 As Double
  Dim var_B8 As TextBox
  Dim var_128 As Double
  Dim var_DC As Variant
  Dim var_118 As String
  Dim var_114 As TextBox
  Dim var_13C As Double
  Dim var_134 As String
  Dim var_130 As TextBox
  Dim var_144 As TextBox
  Dim var_15C As Double
  Dim var_150 As TextBox
  Dim var_164 As Double
  Dim var_8C As Double
  Dim var_B0 As String
  Dim var_FC As Variant
  Dim unk_54BA05 As Connection15
  Dim var_A4 As Recordset15
  Dim var_A8 As Fields15
  loc_1391080: On Error Goto loc_139191E
  loc_1391091: Set var_A8 = Me.Txt
  loc_1391097: Call 0.Method_Proc_113_69_13919240 (CInt(&H11), var_AC)
  loc_13910BB: If (CDbl(Val(var_AC.Text)) <> CDbl(0)) Then
  loc_13910CC:   Set var_A8 = Me.Txt
  loc_13910D2:   Call 0.Method_Proc_113_69_13919240 (CInt(&HF), var_AC)
  loc_13910DA:   var_B0 = var_AC.Text
  loc_13910F8:   Set var_B4 = Me.Txt
  loc_13910FE:   Call 0.Method_Proc_113_69_13919240 (CInt(&H11), var_B8)
  loc_1391106:   var_BC = var_B8.Text
  loc_1391145:   var_118 = CStr(Format(CVar(((Val(var_B0) * Val(var_BC)) / CDbl(&H64))), "0.00"))
  loc_1391154:   Set var_110 = Me.Txt
  loc_139115A:   Call 0.Method_Proc_113_69_13919240 (CInt(6), var_114, var_118, 1)
  loc_1391162:   var_114.Text = 1
  loc_1391188: End If
  loc_1391196: Set var_A8 = Me.Txt
  loc_139119C: Call 0.Method_Proc_113_69_13919240 (CInt(&H12), var_AC, var_B0)
  loc_13911A4: var_128 = var_AC.Text
  loc_13911C0: If (CDbl(Val(var_B0)) <> CDbl(0)) Then
  loc_13911D1:   Set var_A8 = Me.Txt
  loc_13911D7:   Call 0.Method_Proc_113_69_13919240 (CInt(&HF), var_AC)
  loc_13911DF:   var_B0 = var_AC.Text
  loc_13911EC:   var_120 = Val(var_B0)
  loc_13911FD:   Set var_B4 = Me.Txt
  loc_1391203:   Call 0.Method_Proc_113_69_13919240 (CInt(6), var_B8, var_BC)
  loc_1391218:   var_128 = Val(var_BC)
  loc_1391229:   Set var_110 = Me.Txt
  loc_139122F:   Call 0.Method_Proc_113_69_13919240 (CInt(&H12), var_114, var_118)
  loc_139126B:   var_DC = CVar((((var_B8.Text - var_114.Text) * Val(var_118)) / CDbl(&H64))) 'Double
  loc_1391289:   Set var_12C = Me.Txt
  loc_139128F:   Call 0.Method_Proc_113_69_13919240 (CInt(7), var_130, CStr(Format(CVar(((Val(var_B0) * Val(var_BC)) / CDbl(&H64))), "0.00")), 1)
  loc_1391297:   var_130.Text = 1
  loc_13912C3: End If
  loc_13912D1: Set var_A8 = Me.Txt
  loc_13912D7: Call 0.Method_Proc_113_69_13919240 (CInt(&H13), var_AC, var_B0)
  loc_13912DF: var_13C = var_AC.Text
  loc_13912FB: If (CDbl(Val(var_B0)) <> CDbl(0)) Then
  loc_139130C:   Set var_A8 = Me.Txt
  loc_1391312:   Call 0.Method_Proc_113_69_13919240 (CInt(7), var_AC)
  loc_139131A:   var_B0 = var_AC.Text
  loc_1391327:   var_120 = Val(var_B0)
  loc_1391338:   Set var_B4 = Me.Txt
  loc_139133E:   Call 0.Method_Proc_113_69_13919240 (CInt(&H13), var_B8, var_BC)
  loc_1391394:   Set var_110 = Me.Txt
  loc_139139A:   Call 0.Method_Proc_113_69_13919240 (CInt(8), var_114, CStr(Format(CVar(((var_B8.Text * Val(var_BC)) / CDbl(&H64))), "0.00")), 1)
  loc_13913A2:   var_114.Text = 1
  loc_13913C8: End If
  loc_13913D6: Set var_A8 = Me.Txt
  loc_13913DC: Call 0.Method_Proc_113_69_13919240 (CInt(&H15), var_AC, var_B0)
  loc_13913E4: var_128 = var_AC.Text
  loc_13913F1: var_120 = Val(var_B0)
  loc_1391402: Set var_B4 = Me.Txt
  loc_1391408: Call 0.Method_Proc_113_69_13919240 (CInt(&H16), var_B8, var_BC)
  loc_139144B: var_118 = CStr(Format(CVar((var_B8.Text * Val(var_BC))), "0.00"))
  loc_139145A: Set var_110 = Me.Txt
  loc_1391460: Call 0.Method_Proc_113_69_13919240 (CInt(&HE), var_114, var_118, 1)
  loc_1391468: var_114.Text = 1
  loc_139149C: Set var_A8 = Me.Txt
  loc_13914A2: Call 0.Method_Proc_113_69_13919240 (CInt(5), var_AC, var_B0)
  loc_13914AA: var_128 = var_AC.Text
  loc_13914B7: var_120 = Val(var_B0)
  loc_13914C8: Set var_B4 = Me.Txt
  loc_13914CE: Call 0.Method_Proc_113_69_13919240 (CInt(&HD), var_B8, var_BC)
  loc_13914E3: var_128 = Val(var_BC)
  loc_13914F4: Set var_110 = Me.Txt
  loc_13914FA: Call 0.Method_Proc_113_69_13919240 (CInt(&HE), var_114, var_118)
  loc_1391532: var_DC = CVar(((var_B8.Text + var_114.Text) + Val(var_118))) 'Double
  loc_1391539: var_10C = Format(CVar((var_B8.Text * Val(var_BC))), "0.00")
  loc_1391541: var_134 = CStr(var_10C)
  loc_1391550: Set var_12C = Me.Txt
  loc_1391556: Call 0.Method_Proc_113_69_13919240 (CInt(&HF), var_130, var_134, 1)
  loc_1391598: Set var_B4 = Me.Txt
  loc_139159E: Call 0.Method_Proc_113_69_13919240 (CInt(6), var_B8, var_BC)
  loc_13915A6: var_13C = var_B8.Text
  loc_13915B3: var_120 = Val(var_BC)
  loc_13915C4: Set var_110 = Me.Txt
  loc_13915CA: Call 0.Method_Proc_113_69_13919240 (CInt(7), var_114, var_118)
  loc_13915DF: var_128 = Val(var_118)
  loc_13915F0: Set var_12C = Me.Txt
  loc_13915F6: Call 0.Method_Proc_113_69_13919240 (CInt(9), var_130, var_134)
  loc_139160B: var_13C = Val(var_134)
  loc_139161C: Set var_140 = Me.Txt
  loc_1391622: Call 0.Method_Proc_113_69_13919240 (CInt(&H28), var_144, var_148)
  loc_1391637: var_15C = Val(var_148)
  loc_1391648: Set var_14C = Me.Txt
  loc_139164E: Call 0.Method_Proc_113_69_13919240 (CInt(8), var_150, var_154)
  loc_1391663: var_164 = Val(var_154)
  loc_1391674: Set var_A8 = Me.Txt
  loc_139167A: Call 0.Method_Proc_113_69_13919240 (CInt(&HF), var_AC, var_B0)
  loc_13916A3: var_8C = (((((Val(var_B0) - var_114.Text) + 1) + var_144.Text) - var_150.Text) + var_AC.Text)
  loc_13916DF: var_DC = "0.00"
  loc_1391707: Set var_A8 = Me.Txt
  loc_139170D: Call 0.Method_Proc_113_69_13919240 (CInt(&HB), var_AC, CStr(Format(var_8C, var_DC)), 1)
  loc_1391715: var_AC.Text = 1
  loc_1391748: Proc_6_17_EAAE40(var_DC, MemVar_1F95078, "Select RoundOff From Enviro WHERE LOGSITE_CODE=", var_10C)
  loc_1391750: var_FC = -1 & var_DC 
  loc_139175E: unk_54BA05.Execute CStr(Format(var_8C, var_DC)), var_A8, var_8C
  loc_1391769: Set var_A4 = var_A8
  loc_139178F: If (var_A4.RecordCount > 0) Then
  loc_13917AC:   var_AC = var_A4.Fields.Item("RoundOff")
  loc_13917CE:   If (var_AC.Value = "Yes") Then
  loc_13917DF:     Set var_A8 = Me.Txt
  loc_13917E5:     Call 0.Method_Proc_113_69_13919240 (CInt(&HB), var_AC)
  loc_13917FA:     var_128 = Val(var_AC.Text)
  loc_1391806:     var_BC = "L"
  loc_139181B:     Proc_6_142_14A62A0(var_128, CByte(5), var_BC)
  loc_1391830:     Set var_B4 = Me.Txt
  loc_1391836:     Call 0.Method_Proc_113_69_13919240 (CInt(&HA), var_B8, CStr(2))
  loc_1391865:     Set var_A8 = Me.Txt
  loc_139186B:     Call 0.Method_Proc_113_69_13919240 (CInt(&HB), var_AC)
  loc_1391880:     var_120 = Val(var_AC.Text)
  loc_1391891:     Set var_B4 = Me.Txt
  loc_1391897:     Call 0.Method_Proc_113_69_13919240 (CInt(&HA), var_B8, var_BC)
  loc_13918AC:     var_128 = Val(var_BC)
  loc_13918CB:     var_DC = CVar((var_128 + var_128)) 'Double
  loc_13918E9:     Set var_110 = Me.Txt
  loc_13918EF:     Call 0.Method_Proc_113_69_13919240 (CInt(&HB), var_114, CStr(Format(var_AC.Value, "0.00")), 1)
  loc_13918F7:     var_114.Text = 1
  loc_139191D:   End If
  loc_139191D: End If
  loc_139191D: Exit Sub
  loc_139191E: ' Referenced from: 1391080
  loc_139191E: Proc_6_60_E63754(var_128)
  loc_1391923: Exit Sub
End Sub

Public Sub Proc_113_70_11548EC
  'Data Table: 54B9E4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_115457B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154583: var_C8 = CVar(CLng(4)) 'Long
  loc_11545BB: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11545C3: var_134 = CVar(CLng(3)) 'Long
  loc_11545FB: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154603: var_1F0 = CVar(CLng(5)) 'Long
  loc_1154634: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_115463C: Set var_224 = Me.FGrid
  loc_1154642: LateIdCallSt
  loc_1154688: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154690: var_C8 = CVar(CLng(6)) 'Long
  loc_11546C8: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_11546DE:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11546E6:   var_C8 = CVar(CLng(5)) 'Long
  loc_115471E:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154726:   var_134 = CVar(CLng(6)) 'Long
  loc_115475E:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154766:   var_1F0 = CVar(CLng(7)) 'Long
  loc_115479B:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_11547A3:   Set var_224 = Me.FGrid
  loc_11547A9:   LateIdCallSt
  loc_11547DC: End If
  loc_11547EF: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11547F7: var_C8 = CVar(CLng(5)) 'Long
  loc_115482F: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154837: var_134 = CVar(CLng(7)) 'Long
  loc_115486F: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1154877: var_1F0 = CVar(CLng(8)) 'Long
  loc_1154898: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_11548A8: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_11548B6: LateIdCallSt
  loc_11548E9: Exit Sub
  loc_11548EA: Set arg_6C4C = Me.FGrid
End Sub

Public Sub Proc_113_71_11096F8
  'Data Table: 54B9E4
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_1109404: Set var_94 = Me.Txt
  loc_110940A: Call 0.Method_Proc_113_71_11096F80 (CInt(0), var_98)
  loc_110941A: var_90 = var_98.Tag
  loc_1109438: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1109469: Set var_94 = Me.Txt
  loc_110946F: Call 0.Method_Proc_113_71_11096F80 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_110947E: Proc_6_7_F26918(var_CC, CVar(var_98), var_130)
  loc_1109486: var_EC = -1 & var_CC 
  loc_110949A: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_11094A5: Set var_8C = var_134
  loc_11094E1: If (var_8C.RecordCount > 0) Then
  loc_1109520:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1109554:     global_132 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_110957F:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_1109594:     var_CC = (var_98.Value + 1)
  loc_110959C:     global_136 = CInt(var_CC)
  loc_11095AD:   End If
  loc_11095AD: End If
  loc_11095D8: var_BC = Space((5 - Len(var_90)))
  loc_11095E0: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_98.Value)
  loc_11095F4: var_EC = Space((5 - Len(global_132)))
  loc_11095FC: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_1109609: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_132))
  loc_1109622: var_14C = Space((8 - Len(CStr(global_136))))
  loc_110962A: var_15C = (var_130 + var_14C)
  loc_1109639: var_17C = (var_15C + CVar(CStr(global_136)))
  loc_1109644: global_112 = CStr(var_17C)
  loc_110967A: Me.LblVPrefix.Caption = global_132
  loc_1109693: Set var_94 = Me.Txt
  loc_1109699: Call 0.Method_Proc_113_71_11096F80 (CInt(&H22), var_98)
  loc_11096A1: var_98.Text = global_112
  loc_11096C3: Set var_94 = Me.Txt
  loc_11096C9: Call 0.Method_Proc_113_71_11096F80 (CInt(1), var_98)
  loc_11096D1: var_98.Text = CStr(global_136)
  loc_11096E6: var_88 = global_112
  loc_11096EE: Set var_8C = Nothing
  loc_11096F1: Proc_113_71_11096F8 = global_136
End Sub

Public Sub Proc_113_72_10BC058(arg_C, arg_10, arg_14) '10BC058
  'Data Table: 54B9E4
  Dim unk_54BA05 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10BBDC6: If (arg_C = "HSBK") Then
  loc_10BBDED:   unk_54BA05.Execute "Select Distinct DocId,V_Type,V_No From HallBook Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10BBDF8:   Set var_8C = var_C4
  loc_10BBE0B:   var_94 = "Hall Booking"
  loc_10BBE11: Else
  loc_10BBE16:   Proc_113_72_10BC058 = &HFF
  loc_10BBE1C: End If
  loc_10BBE30: If (var_8C.RecordCount > 0) Then
  loc_10BBE33:   ' Referenced from: 10BBFAC
  loc_10BBE42:   If Not(var_8C.EOF) Then
  loc_10BBE4D:     If (var_90 = vbNullString) Then
  loc_10BBE90:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10BBE97:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10BBEC9:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10BBEEE:     Else
  loc_10BBF2A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10BBF4A:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10BBF77:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10BBF7C:       var_90 = CStr(var_11C)
  loc_10BBFA4:     End If
  loc_10BBFA7:     var_8C.MoveNext
  loc_10BBFAC:     GoTo loc_10BBE33
  loc_10BBFAF:   End If
  loc_10BBFB5:   Call 0.Method_arg_50 (var_138)
  loc_10BC011:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10BC014:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10BC043:   Set var_8C = Nothing
  loc_10BC046:   Proc_113_72_10BC058 = 0
  loc_10BC04C: End If
  loc_10BC051: Proc_113_72_10BC058 = &HFF
End Sub

Public Sub Proc_113_73_FC0A84
  'Data Table: 54B9E4
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC0907: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC090C:   var_92 = 1 'Byte
  loc_FC0910: End If
  loc_FC0919: Set var_98 = Me.TxtGrid
  loc_FC091F: Call 0.Method_Proc_113_73_FC0A840 (0, var_B0)
  loc_FC0942: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC0976: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC099A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC099D:     GoTo loc_FC0A6F
  loc_FC09A0:   End If
  loc_FC09A4:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC09CE:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC09D8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC0A0D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC0A31:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC0A4A:     Set var_98 = Me.TxtGrid
  loc_FC0A50:     Call 0.Method_Proc_113_73_FC0A840 (0, var_B0, CVar(CLng(var_92)))
  loc_FC0A58:     var_B0.SetFocus
  loc_FC0A69:     Proc_113_73_FC0A84 = 0
  loc_FC0A6F:     ' Referenced from: FC099D
  loc_FC0A6F:   End If
  loc_FC0A72: Next var_D4 'Integer
  loc_FC0A7C: Proc_113_73_FC0A84 = &HFF
End Sub
