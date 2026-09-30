VERSION 5.00
Begin VB.Form HallChefPreCosting
  Caption = "Chef Pre-Costing"
  ForeColor = &H400040&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H808080&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = -360
  ClientTop = -1545
  ClientWidth = 8880
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 88
  End
  Begin Frame Frame1
    ForeColor = &H80000008&
    Left = 7335
    Top = 1350
    Width = 6135
    Height = 2535
    TabIndex = 73
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
      Index = 33
      ForeColor = &HFF0000&
      Left = 1515
      Top = 1590
      Width = 4530
      Height = 870
      TabIndex = 79
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
    Begin TextBox Txt
      Index = 31
      ForeColor = &HFF0000&
      Left = 1515
      Top = 960
      Width = 4530
      Height = 285
      TabIndex = 78
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
      TabIndex = 77
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
      TabIndex = 76
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
      TabIndex = 75
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
      Index = 32
      ForeColor = &HFF0000&
      Left = 1530
      Top = 1290
      Width = 4530
      Height = 285
      TabIndex = 74
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
    Begin BtnEnh BtnEnh1
      Left = 0
      Top = 1590
      Width = 1500
      Height = 885
      TabIndex = 80
    End
    Begin BtnEnh BtnEnh3
      Left = 0
      Top = 15
      Width = 1500
      Height = 285
      TabIndex = 81
    End
    Begin BtnEnh BtnEnh4
      Left = 0
      Top = 330
      Width = 1500
      Height = 285
      TabIndex = 82
    End
    Begin BtnEnh BtnEnh5
      Left = 0
      Top = 645
      Width = 1500
      Height = 285
      TabIndex = 83
    End
    Begin BtnEnh BtnEnh6
      Left = 0
      Top = 960
      Width = 1500
      Height = 285
      TabIndex = 84
    End
  End
End
Begin BtnEnh BtnEnh2
  Left = 0
  Top = 1275
  Width = 1500
  Height = 285
  TabIndex = 85
End
Begin DataGrid DGFPNo
  Left = 17355
  Top = 2940
  Width = 6165
  Height = 2145
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 60
End
Begin DataGrid DGVType
  Left = 17220
  Top = 2310
  Width = 4215
  Height = 3645
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 41
End
Begin DataGrid DGHall
  Left = 17610
  Top = 1620
  Width = 4290
  Height = 3390
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 32
End
Begin DataGrid DGItem
  Left = 17085
  Top = 1020
  Width = 9405
  Height = 2955
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 33
End
Begin TextBox Txt
  Index = 6
  Left = 10590
  Top = 10380
  Width = 1140
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 72
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
  Index = 5
  Left = 9120
  Top = 10305
  Width = 1200
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 71
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
Begin TextBox TxtGrid
  Index = 1
  BackColor = &H80000004&
  ForeColor = &H80000012&
  Left = 1230
  Top = 3090
  Width = 765
  Height = 225
  Visible = 0   'False
  TabIndex = 68
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
  Left = 8880
  Top = 3240
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 8880
  Top = 2925
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 8880
  Top = 2610
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 18900
  Top = 10140
  Width = 1335
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 16035
  Top = 10650
  Width = 1365
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 18900
  Top = 10395
  Width = 1335
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 7815
  Top = 4245
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
  Left = 7320
  Top = 3885
  Width = 6465
  Height = 4965
  TabIndex = 23
End
Begin TextBox Txt
  Index = 46
  ForeColor = &HFF0000&
  Left = 2100
  Top = 1980
  Width = 4200
  Height = 285
  Enabled = 0   'False
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
  Left = 17505
  Top = 465
  Width = 4290
  Height = 3390
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 58
End
Begin TextBox Txt
  Index = 45
  ForeColor = &HFF0000&
  Left = 2100
  Top = 1350
  Width = 4200
  Height = 285
  Enabled = 0   'False
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
  Left = 18405
  Top = 10650
  Width = 1830
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 16035
  Top = 10395
  Width = 1365
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 16020
  Top = 9840
  Width = 4200
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Left = 16020
  Top = 9585
  Width = 4200
  Height = 240
  Enabled = 0   'False
  Visible = 0   'False
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
  Index = 39
  Left = 2085
  Top = 10260
  Width = 2670
  Height = 240
  Visible = 0   'False
  TabIndex = 30
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
  Left = 2085
  Top = 9495
  Width = 1350
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
  Index = 37
  Left = 2085
  Top = 9750
  Width = 1350
  Height = 240
  Visible = 0   'False
  TabIndex = 28
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
  Left = 2085
  Top = 10005
  Width = 2670
  Height = 240
  Visible = 0   'False
  TabIndex = 29
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
  Index = 23
  ForeColor = &HFF0000&
  Left = 8880
  Top = 1050
  Width = 4500
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
  Left = 8880
  Top = 1350
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 8880
  Top = 1665
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 6225
  Top = 10650
  Width = 735
  Height = 240
  Enabled = 0   'False
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
  ForeColor = &HFF0000&
  Left = 4395
  Top = 2295
  Width = 780
  Height = 285
  Enabled = 0   'False
  TabIndex = 13
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
  Index = 20
  ForeColor = &HFF0000&
  Left = 2100
  Top = 2295
  Width = 690
  Height = 285
  Enabled = 0   'False
  TabIndex = 12
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
  Index = 26
  ForeColor = &HFF0000&
  Left = 8880
  Top = 1980
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Index = 12
  Left = 2085
  Top = 9240
  Width = 1350
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
  Index = 27
  ForeColor = &HFF0000&
  Left = 8880
  Top = 2295
  Width = 4515
  Height = 285
  Enabled = 0   'False
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
  Left = 10545
  Top = 10680
  Width = 2595
  Height = 210
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 31
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
  Index = 0
  Left = 7635
  Top = 10710
  Width = 2535
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
  Left = 2100
  Top = 1035
  Width = 1200
  Height = 285
  Enabled = 0   'False
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
  Left = 5160
  Top = 1035
  Width = 1140
  Height = 285
  Enabled = 0   'False
  TabIndex = 25
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
  Left = 2100
  Top = 1665
  Width = 4200
  Height = 285
  Enabled = 0   'False
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
  Left = 3030
  Top = 3330
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 67
End
Begin MSHFlexGrid FGrid1
  Left = 435
  Top = 2880
  Width = 6690
  Height = 1620
  TabIndex = 69
End
Begin BtnEnh CmdMore
  Left = 13515
  Top = 1350
  Width = 1185
  Height = 720
  TabIndex = 87
End
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 270
  Top = 7815
  Width = 2520
  Height = 255
  TabIndex = 90
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
  Left = 255
  Top = 8145
  Width = 2430
  Height = 285
  TabIndex = 89
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 435
  Width = 180
  Height = 540
  TabIndex = 86
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
  Left = 600
  Top = 10635
  Width = 6465
  Height = 285
  Visible = 0   'False
  Shape = 4
  BorderWidth = 2
End
Begin Label Label4
  Caption = "Venue Details"
  ForeColor = &H80&
  Left = 210
  Top = 2610
  Width = 1470
  Height = 270
  TabIndex = 70
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
  Caption = "Special Menu 7"
  Index = 45
  ForeColor = &HFF0000&
  Left = 7320
  Top = 3255
  Width = 1470
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
  Caption = "Special Menu 5"
  Index = 44
  ForeColor = &HFF0000&
  Left = 7320
  Top = 2625
  Width = 1470
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
Begin Label Label1
  Caption = "Special Menu 6"
  Index = 43
  ForeColor = &HFF0000&
  Left = 7320
  Top = 2940
  Width = 1470
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
End
Begin Label Label1
  Caption = "PIN"
  Index = 26
  ForeColor = &H0&
  Left = 18510
  Top = 10140
  Width = 285
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
  Caption = "Mobile No."
  Index = 24
  ForeColor = &H0&
  Left = 14580
  Top = 10650
  Width = 855
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
  Caption = "Phone No.(Off)"
  Index = 0
  ForeColor = &H0&
  Left = 17550
  Top = 10395
  Width = 1275
  Height = 210
  Visible = 0   'False
  TabIndex = 61
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
Begin Label Label3
  Caption = "City Name"
  ForeColor = &HFF0000&
  Left = 645
  Top = 1980
  Width = 975
  Height = 240
  TabIndex = 59
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
Begin Label Label1
  Caption = "Catalog Name"
  Index = 42
  ForeColor = &HFF0000&
  Left = 645
  Top = 1365
  Width = 1350
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
  Caption = "PAN No."
  Index = 41
  ForeColor = &H0&
  Left = 17550
  Top = 10665
  Width = 690
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
  Caption = "Phone No.(Res)"
  Index = 40
  ForeColor = &H0&
  Left = 14580
  Top = 10395
  Width = 1305
  Height = 210
  Visible = 0   'False
  TabIndex = 55
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
  Caption = "Add2"
  Index = 20
  ForeColor = &H0&
  Left = 14565
  Top = 9840
  Width = 435
  Height = 210
  Visible = 0   'False
  TabIndex = 54
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
  Caption = "Add1"
  Index = 13
  ForeColor = &H0&
  Left = 14565
  Top = 9600
  Width = 435
  Height = 210
  Visible = 0   'False
  TabIndex = 53
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
  Left = 765
  Top = 9510
  Width = 720
  Height = 210
  Visible = 0   'False
  TabIndex = 52
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
  Left = 765
  Top = 10275
  Width = 1230
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
  Caption = "Rect.Date"
  Index = 36
  ForeColor = &H4080&
  Left = 765
  Top = 9765
  Width = 825
  Height = 210
  Visible = 0   'False
  TabIndex = 50
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
  Left = 765
  Top = 10020
  Width = 1245
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
  Caption = "Special Menu 3"
  Index = 33
  ForeColor = &HFF0000&
  Left = 7320
  Top = 1995
  Width = 1470
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
Begin Label Label1
  Caption = "Special Menu 2"
  Index = 32
  ForeColor = &HFF0000&
  Left = 7320
  Top = 1680
  Width = 1470
  Height = 240
  TabIndex = 47
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
  ForeColor = &HFF0000&
  Left = 2865
  Top = 2310
  Width = 1440
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
Begin Label Label1
  Caption = "Special Menu 1"
  Index = 30
  ForeColor = &HFF0000&
  Left = 7320
  Top = 1365
  Width = 1470
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
Begin Label Label1
  Caption = "Funcation Name"
  Index = 28
  ForeColor = &HFF0000&
  Left = 7245
  Top = 1065
  Width = 1560
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
Begin Label Label1
  Caption = "Rate Per Pax"
  Index = 27
  ForeColor = &H0&
  Left = 4935
  Top = 10665
  Width = 1050
  Height = 210
  Visible = 0   'False
  TabIndex = 43
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
  Caption = "Ex. Pax"
  Index = 22
  ForeColor = &HFF0000&
  Left = 645
  Top = 2310
  Width = 735
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
Begin Label Label1
  Caption = "Special Menu 4"
  Index = 23
  ForeColor = &HFF0000&
  Left = 7320
  Top = 2310
  Width = 1470
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
Begin Label Label1
  Caption = "F.P. No."
  Index = 3
  ForeColor = &HFF0000&
  Left = 645
  Top = 1050
  Width = 750
  Height = 240
  TabIndex = 39
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
  ForeColor = &HFF0000&
  Left = 4650
  Top = 1035
  Width = 435
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
End
Begin Label LblVPrefix
  Caption = "VPrefix"
  ForeColor = &H0&
  Left = 13785
  Top = 10695
  Width = 645
  Height = 240
  Visible = 0   'False
  TabIndex = 37
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
  Left = 645
  Top = 1680
  Width = 1110
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
End
Begin Label Label1
  Caption = "DocID"
  Index = 12
  BackColor = &H8000000E&
  ForeColor = &HC00000&
  Left = 6795
  Top = 105
  Width = 555
  Height = 210
  TabIndex = 35
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
  Caption = "Advance"
  Index = 6
  ForeColor = &H4080&
  Left = 765
  Top = 9255
  Width = 705
  Height = 210
  Visible = 0   'False
  TabIndex = 34
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

Attribute VB_Name = "HallChefPreCosting"

Private global_142 As Integer
Private global_144 As Integer
Private global_52 As Integer
Private global_128 As Integer

Private Sub FGrid_UnknownEvent_0 'EA1C44
  'Data Table: 518554
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA1BDF: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_100)) Then
  loc_EA1BF5:   Me.FGrid.Col = 1
  loc_EA1BFD: End If
  loc_EA1C10: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA1C23: Set var_88 = Me.TxtGrid
  loc_EA1C29: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA1C31: var_BC.Visible = False
  loc_EA1C3D: Call Proc_129_58_F26D08()
  loc_EA1C42: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66FF0
  'Data Table: 518554
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66FAC: Set var_88 = Me.TxtGrid
  loc_E66FB2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66FCC: If (var_8C.Visible = 0) Then
  loc_E66FE5:   Me.FGrid.BackColorSel = CVar(CLng(global_100))
  loc_E66FED: End If
  loc_E66FED: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF39C
  'Data Table: 518554
  Dim var_238E As Integer
  loc_DFF394: Call Proc_129_52_E466D4()
  loc_DFF399: Exit Sub
  loc_DFF39A: var_238E = 
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '11D09EC
  'Data Table: 518554
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11D0580: Set var_88 = Me.TopCtrl1
  loc_11D0586: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_11D05CB: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_11D05D4:   Call Form_KeyDown(arg_C, arg_10)
  loc_11D05D9: End If
  loc_11D05DD: Set var_88 = Me.TopCtrl1
  loc_11D05E3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_11D05FC: If (CStr() = "Browse") Then
  loc_11D05FF:   Exit Sub
  loc_11D0600: End If
  loc_11D0674: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11D068D:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11D069D:   var_9C = "+{Tab}"
  loc_11D06A3:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11D06AD:   arg_C = 0
  loc_11D06B3: Else
  loc_11D06BD:   var_B0 = Me.FGrid.Rows
  loc_11D070A:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11D0723:     Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11D0739:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_11D0743:     arg_C = 0
  loc_11D0746:   End If
  loc_11D0746: End If
  loc_11D074C: global_142 = arg_C
  loc_11D0772: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11D0796: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_11D07AC:   var_EC = CLng(Me.FGrid.Col)
  loc_11D07BC:   If (var_EC = CLng(1)) Then
  loc_11D07D2:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D07EA:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11D07EF:     var_11C = vbNullString
  loc_11D07F9:     Set var_B4 = Me.FGrid
  loc_11D07FF:     LateIdCallSt
  loc_11D082A:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D0832:     var_FC = CVar(CLng(9)) 'Long
  loc_11D0837:     var_11C = vbNullString
  loc_11D0841:     Set var_A0 = Me.FGrid
  loc_11D0847:     LateIdCallSt
  loc_11D086C:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D0874:     var_FC = CVar(CLng(3)) 'Long
  loc_11D0879:     var_11C = vbNullString
  loc_11D0883:     Set var_A0 = Me.FGrid
  loc_11D0889:     LateIdCallSt
  loc_11D089E:   Else
  loc_11D08A5:     If (var_EC = CLng(3)) Then
  loc_11D08C4:       Set var_A0 = Me.FGrid
  loc_11D08E8:       LateIdCallSt
  loc_11D0900:       Call Proc_129_60_115390C(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11D0908:     Else
  loc_11D090F:       If (var_EC = CLng(4)) Then
  loc_11D092E:         Set var_A0 = Me.FGrid
  loc_11D0952:         LateIdCallSt
  loc_11D096A:         Call Proc_129_60_115390C(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString)
  loc_11D0972:       Else
  loc_11D0979:         If (var_EC = CLng(2)) Then
  loc_11D098F:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D09A7:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11D09AC:           var_11C = vbNullString
  loc_11D09B6:           Set var_B4 = Me.FGrid
  loc_11D09BC:           LateIdCallSt
  loc_11D09D4:         End If
  loc_11D09D4:       End If
  loc_11D09D4:     End If
  loc_11D09D4:   End If
  loc_11D09D4: End If
  loc_11D09DA: If (arg_C = &HD) Then
  loc_11D09E2:   global_144 = 0
  loc_11D09E5: End If
  loc_11D09E7: arg_C = 0
  loc_11D09EA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0FAC0
  'Data Table: 518554
  loc_E0FAB1: Call FGrid_UnknownEvent_C()
  loc_E0FABB: global_144 = 0
  loc_E0FABE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '10671F4
  'Data Table: 518554
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1066F7C: Set var_88 = Me.TopCtrl1
  loc_1066F82: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_1066F9B: If (CStr() = "Browse") Then
  loc_1066F9E:   Exit Sub
  loc_1066F9F: End If
  loc_1066FB2: var_A0 = CLng(Me.FGrid.Col)
  loc_1066FC2: If (var_A0 = CLng(1)) Then
  loc_1066FC9:   Set var_C4 = Me.FGrid
  loc_1066FED:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_106701A:   Set var_B4 = var_C4
  loc_106702C:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1067054:   Set var_88 = Me.TxtGrid
  loc_106705A:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1067062:   0 = var_B4.Text
  loc_106707B:   If (Len(var_9C) <= 1) Then
  loc_106708A:     Set var_88 = Me.TxtGrid
  loc_1067090:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1067098:     var_CA = var_B4.Text
  loc_10670A9:     Set var_B8 = Me.TxtGrid
  loc_10670AF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10670B7:     var_C4.Text = var_9C
  loc_10670CA:   End If
  loc_10670D6:   Set var_88 = Me.TxtGrid
  loc_10670DC:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_10670F6:   Set var_B8 = Me.TxtGrid
  loc_10670FC:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1067104:   var_C4.SelStart = Len(var_B4.Text)
  loc_106711A: Else
  loc_1067121:   If Not (var_A0 = CLng(3)) Then
  loc_106712B:     If (var_A0 = CLng(4)) Then
  loc_106712E:     End If
  loc_106716C:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1067181:   Else
  loc_1067188:     If (var_A0 = CLng(2)) Then
  loc_10671C9:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_10671DB:     End If
  loc_10671DB:   End If
  loc_10671DB: End If
  loc_10671E5: If (CLng(Index) <> &HD) Then
  loc_10671ED:   global_144 = &HFF
  loc_10671F0: End If
  loc_10671F0: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FF0FBC
  'Data Table: 518554
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF0DE0: Set var_90 = Me.TopCtrl1
  loc_FF0DE6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_FF0DFF: If (CStr() = "Browse") Then
  loc_FF0E02:   Exit Sub
  loc_FF0E03: End If
  loc_FF0E20: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF0E23:   Exit Sub
  loc_FF0E24: End If
  loc_FF0E35: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FF0E57:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF0E91:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF0EB3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF0EC9:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF0ED2:         Set var_118 = Me.FGrid
  loc_FF0EED:       Else
  loc_FF0F00:         Me.FGrid.Rows = 1
  loc_FF0F26:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FF0F2E:         Set var_118 = Me.FGrid
  loc_FF0F5B:         Me.FGrid.FixedRows = 1
  loc_FF0F63:       End If
  loc_FF0F63:       Call Proc_129_60_115390C(FGrid.DispID_10000, var_A0)
  loc_FF0F68:     End If
  loc_FF0F6B:   Else
  loc_FF0F8C:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF0F9C:   End If
  loc_FF0FA0:   Set var_90 = Me.FGrid
  loc_FF0FB1: End If
  loc_FF0FB6: Set var_8C = Nothing
  loc_FF0FB9: Exit Sub
  loc_FF0FBA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4641C
  'Data Table: 518554
  Dim var_8C As TextBox
  loc_E463F0: Call Proc_129_58_F26D08()
  loc_E46400: Set var_88 = Me.TxtGrid
  loc_E46406: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4640E: var_8C.Visible = False
  loc_E4641A: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '112A3BC
  'Data Table: 518554
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_112A066: Set var_88 = Me.TxtGrid
  loc_112A06C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_112A07A: Proc_6_74_E23240(var_8C)
  loc_112A086: Call Proc_129_58_F26D08(var_8C)
  loc_112A097: If (Index = 0) Then
  loc_112A0B0:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_112A0CB:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112A10A:   Set var_108 = Me.TxtGrid
  loc_112A110:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_112A118:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_112A140:   var_C4 = Me.FGrid.Col
  loc_112A149:   var_114 = CLng(var_C4)
  loc_112A159:   If (var_114 = CLng(1)) Then
  loc_112A166:     Set global_64 = New 
  loc_112A178:     Me.var_C4.CursorLocation = 3
  loc_112A19E:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IC.CatType,IR.Rate as IRate,IC.RoundOff as Roundoff1,I.Kitchen as DepartCode  From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.ItemCode=I.Code And IR.RestCode=I.RestCode) where IR.RestCode ='" & global_56
  loc_112A1AF:     Me.Open CVar(var_110 & "' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_112A1C3:     CVarUnk
  loc_112A1C8:     VerifyVarObj
  loc_112A1CE:     Set var_88 = Me.DGItem
  loc_112A1D4:     LateIdStAd
  loc_112A223:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_112A226:       Exit Sub
  loc_112A227:     End If
  loc_112A22D:     Me.MoveFirst
  loc_112A245:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112A24D:     var_E4 = CVar(CLng(9)) 'Long
  loc_112A256:     Set var_8C = Me.FGrid
  loc_112A25C:     var_D4 = var_8C.TextMatrix)
  loc_112A291:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_112A2C1:     If (Me.EOF = &HFF) Then
  loc_112A2CA:       Me.MoveFirst
  loc_112A2CF:     End If
  loc_112A2D8:     CVarUnk
  loc_112A2DD:     VerifyVarObj
  loc_112A2E3:     Set var_88 = Me.DGItem
  loc_112A2E9:     LateIdStAd
  loc_112A2FA:   Else
  loc_112A301:     If (var_114 = CLng(2)) Then
  loc_112A319:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, Me.TxtGrid, global_64, var_134, var_D4)
  loc_112A321:       var_8C.MaxLength = var_E4
  loc_112A342:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(480), var_A4, Me.TxtGrid)
  loc_112A34A:       var_8C.Height = global_64
  loc_112A359:     Else
  loc_112A360:       If Not (var_114 = CLng(3)) Then
  loc_112A36A:         If (var_114 = CLng(4)) Then
  loc_112A36D:         End If
  loc_112A37C:         Set var_88 = Me.TxtGrid
  loc_112A382:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_112A38A:         var_8C.MaxLength = 1
  loc_112A39F:         If (global_144 = 0) Then
  loc_112A3AA:           var_110 = "{Home}+{End}"
  loc_112A3B0:           Proc_303_0_FBACC8(CStr(var_D4), 0)
  loc_112A3B8:         End If
  loc_112A3B8:       End If
  loc_112A3B8:     End If
  loc_112A3B8:   End If
  loc_112A3B8: End If
  loc_112A3B8: Exit Sub
  loc_112A3B9: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11AACF8
  'Data Table: 518554
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  loc_11AA8DC: If (KeyCode = 0) Then
  loc_11AA8E9:   If (CLng(Shift) = &H1B) Then
  loc_11AA8F9:     Set var_8C = Me.TxtGrid
  loc_11AA8FF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_11AA919:     Set var_98 = Me.TxtGrid
  loc_11AA91F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_11AA927:     var_9C.Text = var_90.Tag
  loc_11AA943:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11AA948:     Call Proc_129_58_F26D08(arg_14)
  loc_11AA951:     Set var_8C = Me.FGrid
  loc_11AA96E:     Set var_8C = Me.TxtGrid
  loc_11AA974:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11AA97C:     var_90.Visible = FGrid.DispID_8001
  loc_11AA988:     Exit Sub
  loc_11AA989:   End If
  loc_11AA99C:   var_B0 = CLng(Me.FGrid.Col)
  loc_11AA9AC:   If (var_B0 = CLng(1)) Then
  loc_11AA9C7:     Set var_9C = Nothing
  loc_11AAA00:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_11AAA1E:     If (CLng(Shift) = &HD) Then
  loc_11AAA27:       Call Proc_129_53_13CD850(KeyCode, var_B2, 1, Nothing)
  loc_11AAA32:       If (var_B2 = &HFF) Then
  loc_11AAA7F:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, CByte((CInt(5) + 1)), 0)
  loc_11AAA8F:       End If
  loc_11AAA8F:     End If
  loc_11AAA92:   Else
  loc_11AAA99:     If (var_B0 = CLng(2)) Then
  loc_11AAAA6:       If (CLng(Shift) = &HD) Then
  loc_11AAAAF:         Call Proc_129_53_13CD850(KeyCode, var_B2, 0, 0)
  loc_11AAABA:         If (var_B2 = &HFF) Then
  loc_11AAAD0:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11AAAD8:           var_F4 = CVar(CLng(6)) 'Long
  loc_11AAB0B:           If (CStr(Me.FGrid.TextMatrix)) = "Food") Then
  loc_11AAB58:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, CByte((CInt(3) + 1)), 0, 0)
  loc_11AAB6B:           Else
  loc_11AABB5:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, CByte((CInt(3) + 1)), 0, 0)
  loc_11AABC5:           End If
  loc_11AABC5:         End If
  loc_11AABC5:       End If
  loc_11AABC8:     Else
  loc_11AABCF:       If (var_B0 = CLng(4)) Then
  loc_11AABD8:         Call Proc_129_53_13CD850(KeyCode, var_B2, 0, 0, var_F4)
  loc_11AABE3:         If (var_B2 = &HFF) Then
  loc_11AAC30:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, CByte((CInt(4) + 1)), 0)
  loc_11AAC40:         End If
  loc_11AAC43:       Else
  loc_11AAC4A:         If (var_B0 = CLng(3)) Then
  loc_11AAC8D:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_144 = &HFF))) Then
  loc_11AAC96:             Call Proc_129_53_13CD850(KeyCode, var_B2, 0, 0, var_D4)
  loc_11AACA1:             If (var_B2 = &HFF) Then
  loc_11AACE7:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_144, 3, 0)
  loc_11AACF7:             End If
  loc_11AACF7:           End If
  loc_11AACF7:         End If
  loc_11AACF7:       End If
  loc_11AACF7:     End If
  loc_11AACF7:   End If
  loc_11AACF7: End If
  loc_11AACF7: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F81F00
  'Data Table: 518554
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F81DAF: Proc_6_58_E06050(arg_10)
  loc_F81DC0: If (KeyAscii = 0) Then
  loc_F81DD6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F81DE6:   If (var_A0 = CLng(1)) Then
  loc_F81E05:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F81E0C:       Set var_AC = Me.TxtGrid
  loc_F81E17:       var_A4 = "Name"
  loc_F81E32:       Proc_6_89_1470B00(var_AC, KeyAscii, global_64, arg_10)
  loc_F81E41:     End If
  loc_F81E44:   Else
  loc_F81E4B:     If (var_A0 = CLng(3)) Then
  loc_F81E58:       Set var_8C = Me.TxtGrid
  loc_F81E5E:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F81E79:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F81E88:     Else
  loc_F81E8F:       If (var_A0 = CLng(4)) Then
  loc_F81E9C:         Set var_8C = Me.TxtGrid
  loc_F81EA2:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F81EBD:         Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_F81ECC:       Else
  loc_F81ED3:         If (var_A0 = CLng(2)) Then
  loc_F81EE5:           Set var_8C = Me.TxtGrid
  loc_F81EEB:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F81EF3:           var_AC.MaxLength = 3
  loc_F81EFF:         End If
  loc_F81EFF:       End If
  loc_F81EFF:     End If
  loc_F81EFF:   End If
  loc_F81EFF: End If
  loc_F81EFF: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7CE94
  'Data Table: 518554
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  loc_F7CD58: On Error Goto loc_F7CE8E
  loc_F7CD67: If (KeyCode = 0) Then
  loc_F7CD7D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F7CD8D:   If (var_A0 = CLng(1)) Then
  loc_F7CDB3:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F7CDC4:       Call TxtGrid_KeyDown(KeyCode, global_142)
  loc_F7CDCD:       Set var_AC = Me.TxtGrid
  loc_F7CDD8:       var_A8 = "Name"
  loc_F7CDF3:       Proc_6_89_1470B00(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_F7CE02:     End If
  loc_F7CE05:   Else
  loc_F7CE0C:     If (var_A0 = CLng(2)) Then
  loc_F7CE4B:       Set var_8C = Me.TxtGrid
  loc_F7CE51:       Call 0.Method_TxtGrid_KeyUp0 (0, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F7CE59:       &HFF = var_AC.Text
  loc_F7CE61:       var_114 = CVar(var_A8) 'String
  loc_F7CE69:       Set var_128 = Me.FGrid
  loc_F7CE6F:       LateIdCallSt
  loc_F7CE8D:     End If
  loc_F7CE8D:   End If
  loc_F7CE8D: End If
  loc_F7CE8D: Exit Sub
  loc_F7CE8E: ' Referenced from: F7CD58
  loc_F7CE8E: Proc_6_60_E63754(var_128, var_114, 0)
  loc_F7CE93: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2111C
  'Data Table: 518554
  Dim arg_10 As Integer
  loc_E21104: If (Cancel = 0) Then
  loc_E2110D:   Call Proc_129_53_13CD850(Cancel, var_88)
  loc_E21116:   arg_10 = Not(var_88)
  loc_E21119: End If
  loc_E21119: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1270280
  'Data Table: 518554
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_BC As String
  Dim var_94 As Fields15
  loc_126FCF3: Set var_88 = Me.Txt
  loc_126FCF9: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126FD01: var_8C.SelStart = 0
  loc_126FD1A: Set var_88 = Me.Txt
  loc_126FD20: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126FD28: var_90 = var_8C.Text
  loc_126FD3B: Set var_94 = Me.Txt
  loc_126FD41: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_126FD49: var_98.SelLength = Len(var_90)
  loc_126FD66: Set var_88 = Me.Txt
  loc_126FD6C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_126FD7A: Proc_6_74_E23240(var_8C)
  loc_126FD86: Call Proc_129_58_F26D08(var_8C)
  loc_126FD8E: var_9A = Index
  loc_126FD99: If (var_9A = CInt(0)) Then
  loc_126FDAF:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_126FE08:   Set var_88 = Me.Txt
  loc_126FE0E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90)
  loc_126FE16:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_126FE2E:   If (var_9A Or (var_90 = vbNullString)) Then
  loc_126FE31:     Exit Sub
  loc_126FE32:   End If
  loc_126FE3F:   Set var_88 = Me.Txt
  loc_126FE45:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126FE4D:   var_90 = var_8C.Text
  loc_126FE55:   var_D4 = CVar(var_90) 'String
  loc_126FE9A:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_126FEA3:     Me.MoveFirst
  loc_126FEC8:     Set var_88 = Me.Txt
  loc_126FECE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Name =")
  loc_126FED6:     0 = var_8C.Text
  loc_126FEE4:     Proc_6_17_EAAE40(var_D4, CVar(var_90))
  loc_126FEFA:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_126FF12:   End If
  loc_126FF15: Else
  loc_126FF1D:   If (var_9A = CInt(&H2D)) Then
  loc_126FF6E:     Set var_88 = Me.Txt
  loc_126FF74:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126FF94:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_126FF97:       Exit Sub
  loc_126FF98:     End If
  loc_126FFA5:     Set var_88 = Me.Txt
  loc_126FFAB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126FFB3:     var_90 = var_8C.Text
  loc_126FFBB:     var_D4 = CVar(var_90) 'String
  loc_1270000:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1270009:       Me.MoveFirst
  loc_127002E:       Set var_88 = Me.Txt
  loc_1270034:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Name =")
  loc_127003C:       0 = var_8C.Text
  loc_127004A:       Proc_6_17_EAAE40(var_D4, CVar(var_90))
  loc_1270060:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_1270078:     End If
  loc_127007B:   Else
  loc_1270083:     If (var_9A = CInt(1)) Then
  loc_12700D4:       Set var_88 = Me.Txt
  loc_12700DA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12700FA:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_12700FD:         Exit Sub
  loc_12700FE:       End If
  loc_127010B:       Set var_88 = Me.Txt
  loc_1270111:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_127012B:       var_BC = "FPNo"
  loc_1270142:       var_98 = Me.Fields.Item(var_BC)
  loc_1270166:       If CBool(CVar(var_8C.Text) <> var_98.Value) Then
  loc_127016F:         Me.MoveFirst
  loc_1270181:         Set var_88 = Me.Txt
  loc_1270187:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12701C2:         Me.Find "FPNo =" & CStr(Val(var_8C.Text)), 0, 1
  loc_12701D7:       End If
  loc_12701DA:     Else
  loc_12701E2:       If Not (var_9A = CInt(&H14)) Then
  loc_12701ED:         If Not (var_9A = CInt(&H15)) Then
  loc_12701F8:           If Not (var_9A = CInt(&H16)) Then
  loc_1270203:             If (var_9A = CInt(&HC)) Then
  loc_1270206:             End If
  loc_1270206:           End If
  loc_1270206:         End If
  loc_1270215:         Set var_88 = Me.Txt
  loc_127021B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_1270223:         var_8C.SelStart = var_BC
  loc_127023C:         Set var_88 = Me.Txt
  loc_1270242:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_127025D:         Set var_94 = Me.Txt
  loc_1270263:         Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_127026B:         var_98.SelLength = Len(var_8C.Text)
  loc_127027E:       End If
  loc_127027E:     End If
  loc_127027E:   End If
  loc_127027E: End If
  loc_127027E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10C1CC0
  'Data Table: 518554
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_10C19F6: If (CLng(Shift) = &H1B) Then
  loc_10C19F9:   Call Proc_129_58_F26D08()
  loc_10C19FE:   Exit Sub
  loc_10C19FF: End If
  loc_10C1A02: var_86 = KeyCode
  loc_10C1A0D: If (var_86 = CInt(0)) Then
  loc_10C1A28:   Set var_9C = Nothing
  loc_10C1A33:   Set var_98 = Nothing
  loc_10C1A61:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_10C1A78: Else
  loc_10C1A80:   If (var_86 = CInt(1)) Then
  loc_10C1A9B:     Set var_9C = Nothing
  loc_10C1AD4:     Proc_6_69_134A630(Me.DGFPNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_10C1AEB:   Else
  loc_10C1AF3:     If (var_86 = CInt(&H2D)) Then
  loc_10C1B0E:       Set var_9C = Nothing
  loc_10C1B47:       Proc_6_69_134A630(Me.DG_Catalog, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_10C1B5B:     End If
  loc_10C1B5B:   End If
  loc_10C1B5B: End If
  loc_10C1B8C: Set var_98 = Me.DGFPNo
  loc_10C1BA3: Set var_9C = Me.DG_Catalog
  loc_10C1BE7: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_10C1C08:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_10C1C11:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, var_9C)
  loc_10C1C16:   End If
  loc_10C1C1A:   Set var_8C = Me.TopCtrl1
  loc_10C1C20:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(0)
  loc_10C1C42:   If ((CStr(1) = "Add") And (KeyCode <> CInt(0))) Then
  loc_10C1C5A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10C1C63:       Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_10C1C68:     End If
  loc_10C1C6B:   Else
  loc_10C1C6F:     Set var_8C = Me.TopCtrl1
  loc_10C1C75:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9C)
  loc_10C1C97:     If ((CStr(0) = "Edit") And (KeyCode <> CInt(6))) Then
  loc_10C1CAF:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10C1CB8:         Proc_6_76_E533C8(Shift)
  loc_10C1CBD:       End If
  loc_10C1CBD:     End If
  loc_10C1CBD:   End If
  loc_10C1CBD: End If
  loc_10C1CBD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1043F20
  'Data Table: 518554
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_1043CC0: On Error Goto loc_1043F17
  loc_1043CC6: Proc_6_58_E06050(arg_10)
  loc_1043CCE: var_86 = KeyAscii
  loc_1043CD9: If (var_86 = CInt(0)) Then
  loc_1043CF8:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_1043D0E:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_1043D28:     var_B0 = "Name"
  loc_1043D43:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_1043D52:   End If
  loc_1043D55: Else
  loc_1043D5D:   If (var_86 = CInt(1)) Then
  loc_1043D7C:     If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_1043D92:       Me.DGFPNo.Tag = CVar(CStr(KeyAscii))
  loc_1043DA1:       Set var_B8 = Me.Txt
  loc_1043DC7:       Proc_6_89_1470B00(var_B8, KeyAscii, global_76, arg_10, "FPNO")
  loc_1043DD6:     End If
  loc_1043DD9:   Else
  loc_1043DE1:     If (var_86 = CInt(&H26)) Then
  loc_1043DEE:       Set var_8C = Me.Txt
  loc_1043DF4:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_1043E0F:       Proc_6_42_129B55C(var_B8, arg_10, 8, 0)
  loc_1043E1E:     Else
  loc_1043E26:       If (var_86 = CInt(&H2D)) Then
  loc_1043E45:         If (CBool(Me.DG_Catalog.Visible) = &HFF) Then
  loc_1043E4C:           Set var_B8 = Me.Txt
  loc_1043E57:           var_B0 = "Name"
  loc_1043E72:           Proc_6_89_1470B00(var_B8, KeyAscii, global_68, arg_10, var_B0)
  loc_1043E81:         End If
  loc_1043E84:       Else
  loc_1043E8C:         If Not (var_86 = CInt(&H14)) Then
  loc_1043E97:           If (var_86 = CInt(&H15)) Then
  loc_1043E9A:           End If
  loc_1043EA4:           Set var_8C = Me.Txt
  loc_1043EAA:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_1043EC5:           Proc_6_42_129B55C(var_B8, arg_10, 4, 0)
  loc_1043ED4:         Else
  loc_1043EDC:           If (var_86 = CInt(&H16)) Then
  loc_1043EE9:             Set var_8C = Me.Txt
  loc_1043EEF:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_1043F0A:             Proc_6_42_129B55C(var_B8, arg_10, 5)
  loc_1043F16:           End If
  loc_1043F16:         End If
  loc_1043F16:       End If
  loc_1043F16:     End If
  loc_1043F16:   End If
  loc_1043F16: End If
  loc_1043F16: Exit Sub
  loc_1043F17: ' Referenced from: 1043CC0
  loc_1043F17: Proc_6_60_E63754(2, 0)
  loc_1043F1C: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DD54
  'Data Table: 518554
  loc_E4DD32: Set var_88 = Me.Txt
  loc_E4DD38: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DD46: Proc_6_73_E23294(var_8C)
  loc_E4DD52: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1441C10
  'Data Table: 518554
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A0 As String
  Dim var_BC As TextBox
  Dim var_EC As Long
  Dim var_100 As TextBox
  Dim var_9C As TextBox
  Dim var_13C As Double
  Dim var_104 As String
  loc_14410FC: On Error Goto loc_1441C0A
  loc_1441102: var_8E = Cancel
  loc_144110D: If (var_8E = CInt(0)) Then
  loc_144111B:   Set var_94 = Me.Txt
  loc_1441121:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1441129:   var_A0 = "Voucher Type"
  loc_144114A:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_1441158:     Set var_94 = Me.Txt
  loc_144115E:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1441166:     var_98.SetFocus
  loc_1441174:     arg_10 = &HFF
  loc_1441177:     Exit Sub
  loc_1441178:   End If
  loc_14411C6:   Set var_94 = Me.Txt
  loc_14411CC:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_14411D4:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_14411EC:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_14411FC:     Set var_94 = Me.Txt
  loc_1441202:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_144120A:     var_98.Text = vbNullString
  loc_1441223:     Set var_94 = Me.Txt
  loc_1441229:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1441231:     var_98.Tag = vbNullString
  loc_1441243:     global_132 = vbNullString
  loc_144124A:   Else
  loc_1441285:     Set var_9C = Me.Txt
  loc_144128B:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1441293:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14412E4:     Set var_9C = Me.Txt
  loc_14412EA:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14412F2:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1441325:     var_98 = Me.Fields.Item("NCat")
  loc_144133C:     global_132 = CStr(var_98.Value)
  loc_1441351:     Set var_94 = Me.TopCtrl1
  loc_1441357:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_8E)
  loc_1441370:     If (CStr() = "Add") Then
  loc_144137E:       If (global_152 = "Automatic") Then
  loc_144138E:         Set var_94 = Me.Txt
  loc_1441394:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_144139C:         var_98.Enabled = False
  loc_14413AB:       Else
  loc_14413B8:         Set var_94 = Me.Txt
  loc_14413BE:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14413C6:         var_98.Enabled = True
  loc_14413DD:         Set var_94 = Me.Txt
  loc_14413E3:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_14413EB:         var_98.SetFocus
  loc_14413F7:       End If
  loc_14413F7:     End If
  loc_14413F7:   End If
  loc_14413FB:   Set var_94 = Me.TopCtrl1
  loc_1441401:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_98)
  loc_1441409:   var_A0 = CStr()
  loc_144141A:   If (var_A0 = "Add") Then
  loc_1441423:     Call Proc_129_61_10E86D8(MemVar_1F95044)
  loc_1441436:     Set var_94 = Me.Txt
  loc_144143C:     Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_1441444:     var_98.Text = var_A0
  loc_1441453:   End If
  loc_1441456: Else
  loc_144145E:   If (var_8E = CInt(1)) Then
  loc_144146C:     Set var_94 = Me.Txt
  loc_1441472:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_144147A:     var_A0 = "FP No."
  loc_144149B:     If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_14414A9:       Set var_94 = Me.Txt
  loc_14414AF:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14414B7:       var_98.SetFocus
  loc_14414C5:       arg_10 = &HFF
  loc_14414C8:       Exit Sub
  loc_14414C9:     End If
  loc_1441517:     Set var_94 = Me.Txt
  loc_144151D:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1441525:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_144153D:     If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_144154D:       Set var_94 = Me.Txt
  loc_1441553:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_144155B:       var_98.Text = vbNullString
  loc_1441574:       Set var_94 = Me.Txt
  loc_144157A:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1441582:       var_98.Tag = vbNullString
  loc_1441591:     Else
  loc_14415CC:       Set var_9C = Me.Txt
  loc_14415D2:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14415DA:       var_BC.Text = CStr(Me.Fields.Item("FPNo").Value)
  loc_144160D:       var_98 = Me.Fields.Item("Code")
  loc_144161E:       var_A0 = CStr(var_98.Value)
  loc_144162B:       Set var_9C = Me.Txt
  loc_1441631:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1441639:       var_BC.Tag = var_A0
  loc_144164F:       Call Proc_129_51_16B0F40(var_A0)
  loc_1441654:     End If
  loc_1441657:   Else
  loc_144165F:     If (var_8E = CInt(6)) Then
  loc_1441670:       Set var_94 = Me.Txt
  loc_1441676:       Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_1441694:       var_EC = Len(Trim(CVar(var_98.Text)))
  loc_14416AE:       If (var_EC = 0) Then
  loc_14416C4:         Set var_94 = Me.Txt
  loc_14416CA:         Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_14416D2:         var_98.Text = CStr(MemVar_1F950EC)
  loc_14416E4:       Else
  loc_14416EE:         Set var_94 = Me.Txt
  loc_14416F4:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1441714:         Set var_BC = Me.Txt
  loc_144171A:         Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_1441722:         var_100.Text = Proc_6_33_15125B8(var_98)
  loc_1441735:       End If
  loc_1441742:       Set var_94 = Me.Txt
  loc_1441748:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_144176B:       Set var_9C = Me.Txt
  loc_1441771:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_104)
  loc_1441779:       (CDate(var_98.Text) >= MemVar_1F950F4) = var_BC.Text
  loc_144179B:       If Not((var_98 And (CDate(var_104) <= MemVar_1F950FC))) Then
  loc_14417BF:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_EC, var_FC)
  loc_14417D9:         Set var_94 = Me.Txt
  loc_14417DF:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_14417E7:         var_98.SetFocus
  loc_14417F5:         arg_10 = &HFF
  loc_14417F8:         Exit Sub
  loc_14417F9:       End If
  loc_14417FD:       Set var_94 = Me.TopCtrl1
  loc_1441803:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_144180B:       var_A0 = CStr(var_98)
  loc_1441821:       Set var_98 = Me.Txt
  loc_1441827:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_1441850:       If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_1441859:         Call Proc_129_61_10E86D8(MemVar_1F95044)
  loc_144186C:         Set var_94 = Me.Txt
  loc_1441872:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_144187A:         var_98.Text = var_A0
  loc_1441889:       End If
  loc_144188C:     Else
  loc_1441894:       If (var_8E = CInt(&H2D)) Then
  loc_14418E5:         Set var_94 = Me.Txt
  loc_14418EB:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_14418F3:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_144190B:         If (var_A0 Or (var_A0 = vbNullString)) Then
  loc_144191B:           Set var_94 = Me.Txt
  loc_1441921:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1441929:           var_98.Text = vbNullString
  loc_1441942:           Set var_94 = Me.Txt
  loc_1441948:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1441950:           var_98.Tag = vbNullString
  loc_144195F:         Else
  loc_144199A:           Set var_9C = Me.Txt
  loc_14419A0:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14419A8:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14419DB:           var_98 = Me.Fields.Item("Code")
  loc_14419F9:           Set var_9C = Me.Txt
  loc_14419FF:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1441A07:           var_BC.Tag = CStr(var_98.Value)
  loc_1441A1D:           Call Proc_129_50_11C72C8()
  loc_1441A22:         End If
  loc_1441A25:       Else
  loc_1441A2D:         If (var_8E = CInt(&H25)) Then
  loc_1441A3D:           Set var_94 = Me.Txt
  loc_1441A43:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1441A7B:           If (Len(Trim(CVar(var_98.Text))) = 0) Then
  loc_1441A90:             Set var_94 = Me.Txt
  loc_1441A96:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1441A9E:             var_98.Text = CStr(MemVar_1F950EC)
  loc_1441AB0:           Else
  loc_1441ABA:             Set var_94 = Me.Txt
  loc_1441AC0:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_1441AE0:             Set var_BC = Me.Txt
  loc_1441AE6:             Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_1441AEE:             var_100.Text = Proc_6_33_15125B8(var_98)
  loc_1441B01:           End If
  loc_1441B04:         Else
  loc_1441B0C:           If Not (var_8E = CInt(&H14)) Then
  loc_1441B17:             If (var_8E = CInt(&H15)) Then
  loc_1441B1A:             End If
  loc_1441B24:             Set var_94 = Me.Txt
  loc_1441B2A:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1441B42:             If Not(IsNumeric(CVar(var_98))) Then
  loc_1441B56:               Set var_94 = Me.Txt
  loc_1441B5C:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1441B64:               var_98.Text = CStr(0)
  loc_1441B73:             End If
  loc_1441B80:             Set var_94 = Me.Txt
  loc_1441B86:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1441B9B:             var_13C = Val(var_98.Text)
  loc_1441BD3:             Set var_9C = Me.Txt
  loc_1441BD9:             Call 0.Method_Txt_Validate0 (Cancel, var_BC, CStr(Format(CVar(var_13C), "0")), 1)
  loc_1441BE1:             var_BC.Text = 1
  loc_1441C01:           End If
  loc_1441C01:         End If
  loc_1441C01:       End If
  loc_1441C01:     End If
  loc_1441C01:   End If
  loc_1441C01: End If
  loc_1441C06: Set var_88 = Nothing
  loc_1441C09: Exit Sub
  loc_1441C0A: ' Referenced from: 14410FC
  loc_1441C0A: Proc_6_60_E63754(var_13C)
  loc_1441C0F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EF5030
  'Data Table: 518554
  Dim var_8C As String
  Dim var_98 As TextBox
  loc_EF4F60: On Error Goto loc_EF502A
  loc_EF4F86: Call Proc_129_57_E99AA8(Proc_5_1_100EC1C("ADD", Me))
  loc_EF4F91: Call Proc_129_56_100B61C(global_80)
  loc_EF4F9B: var_8C = CStr(MemVar_1F950EC)
  loc_EF4FA9: Set var_90 = Me.Txt
  loc_EF4FAF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_98)
  loc_EF4FB7: var_98.Text = var_8C
  loc_EF4FD1: Set var_90 = Me.Txt
  loc_EF4FD7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EF4FDF: var_98.SetFocus
  loc_EF4FF1: Call Proc_129_61_10E86D8(MemVar_1F95044, var_8C)
  loc_EF5004: Set var_90 = Me.Txt
  loc_EF500A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H22), var_98)
  loc_EF5012: var_98.Text = var_8C
  loc_EF5026: Set var_88 = Nothing
  loc_EF5029: Exit Sub
  loc_EF502A: ' Referenced from: EF4F60
  loc_EF502A: Proc_6_60_E63754(var_98)
  loc_EF502F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA1018
  'Data Table: 518554
  loc_EA0FA0: On Error Goto loc_EA1011
  loc_EA0FDA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA1000:   Call Proc_129_57_E99AA8(Proc_5_1_100EC1C("INI", Me))
  loc_EA100B:   Call Proc_129_54_1721678(global_80)
  loc_EA1010: End If
  loc_EA1010: Exit Sub
  loc_EA1011: ' Referenced from: EA0FA0
  loc_EA1011: Proc_6_60_E63754()
  loc_EA1016: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10CB454
  'Data Table: 518554
  Dim unk_51857C As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10CB18C: On Error Goto loc_10CB406
  loc_10CB19D: If (Proc_183_56_FE8B08(global_80) = &HFF) Then
  loc_10CB1A0:   Exit Sub
  loc_10CB1A1: End If
  loc_10CB1D8: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10CB1E4:   unk_51857C.BeginTrans var_118
  loc_10CB1FA:   var_94 = Me.Bookmark 'Variant
  loc_10CB246:   var_F4 = "Delete From HallPreCosting Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10CB254:   unk_51857C.Execute CStr(var_F4), var_114, -1
  loc_10CB29F:   var_160 = 0
  loc_10CB2B2:   var_158 = 0
  loc_10CB2BD:   var_154 = 0
  loc_10CB2D0:   var_14C = 0
  loc_10CB2DB:   var_148 = 0
  loc_10CB2EE:   var_140 = 0
  loc_10CB32E:   var_124 = "HallPreCosting"
  loc_10CB337:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10CB365:   unk_51857C.CommitTrans
  loc_10CB375:   Me.Requery -1
  loc_10CB385:   Me.Requery -1
  loc_10CB3A5:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10CB3B2:     Me.Bookmark = var_94
  loc_10CB3BA:   Else
  loc_10CB3CE:     If (Me.EOF = 0) Then
  loc_10CB3D7:       Me.MoveLast
  loc_10CB3DC:     End If
  loc_10CB3DC:   End If
  loc_10CB3DC:   Call Proc_129_54_1721678(var_140, 0, var_148, var_14C)
  loc_10CB3FD:   Proc_5_0_1107AD0(&HFF, Me, global_80, 0)
  loc_10CB405: End If
  loc_10CB405: Exit Sub
  loc_10CB406: ' Referenced from: 10CB18C
  loc_10CB40C: unk_51857C.RollbackTrans
  loc_10CB419: Set var_11C = Err()
  loc_10CB41F: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10CB440: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_10CB453: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E8D8D0
  'Data Table: 518554
  Dim var_94 As TextBox
  loc_E8D85C: On Error Goto loc_E8D8C7
  loc_E8D86D: If (Proc_183_55_FE8490(global_80) = &HFF) Then
  loc_E8D870:   Exit Sub
  loc_E8D871: End If
  loc_E8D894: Call Proc_129_57_E99AA8(Proc_5_1_100EC1C("EDIT", Me))
  loc_E8D8AC: Set var_8C = Me.Txt
  loc_E8D8B2: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_E8D8BA: var_94.Enabled = False
  loc_E8D8C6: Exit Sub
  loc_E8D8C7: ' Referenced from: E8D85C
  loc_E8D8C7: Proc_6_60_E63754(global_80)
  loc_E8D8CC: Exit Sub
  loc_E8D8CE: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18DB4
  'Data Table: 518554
  loc_E18DA9: Me.Global.Unload Me
  loc_E18DB1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ED3AC4
  'Data Table: 518554
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_ED3A20: On Error Goto loc_ED3ABB
  loc_ED3A3A: If (Me.RecordCount <= 0) Then
  loc_ED3A43:   var_B8 = "Information"
  loc_ED3A5E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ED3A6E:   Exit Sub
  loc_ED3A6F: End If
  loc_ED3A76: var_10C = "Select Distinct HC.Docid as SearchCode,S.VNo as FPNo ,S.VDate as V_Date,PartyName,S.fRbOOKDATE,S.TOBOOKDATE " & "From ((HallBook S iNNER Join Voucher_Type V On (S.VType= V.V_Type AND S.LogSite_Code=V.LogSite_Code) ) Inner Join HallPreCosting as HC on S.Docid=HC.Contradocid"
  loc_ED3A8B: MemVar_1F950E4 = var_10C & ") Where S.LogSite_Code='" & MemVar_1F95078 & "' Order By S.VNo"
  loc_ED3A9E: MemVar_1F95120 = Me
  loc_ED3AB5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ED3ABA: Exit Sub
  loc_ED3ABB: ' Referenced from: ED3A20
  loc_ED3ABB: Proc_6_60_E63754(MemVar_1F950E4)
  loc_ED3AC0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E384C8
  'Data Table: 518554
  loc_E384B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E384C0: Call Proc_129_54_1721678(global_80)
  loc_E384C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38528
  'Data Table: 518554
  Dim var_2301 As Double
  loc_E38518: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38520: Call Proc_129_54_1721678(global_80)
  loc_E38525: Exit Sub
  loc_E38526: var_2301 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E38A08
  'Data Table: 518554
  Dim var_2301 As Double
  loc_E389F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38A00: Call Proc_129_54_1721678(global_80)
  loc_E38A05: Exit Sub
  loc_E38A06: var_2301 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E38A68
  'Data Table: 518554
  loc_E38A58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38A60: Call Proc_129_54_1721678(global_80)
  loc_E38A65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '14AD968
  'Data Table: 518554
  Dim var_C8 As String
  Dim var_D0 As String
  Dim var_108 As Variant
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim unk_51857C As Connection15
  Dim var_C4 As Recordset15
  Dim var_F8 As Variant
  Dim var_AC As Double
  Dim var_C0 As Recordset15
  Dim var_174 As Variant
  Dim var_9C As Recordset15
  Dim var_162 As Integer
  Dim var_BC As Recordset15
  Dim var_15C As Variant
  Dim var_1AC As Variant
  Dim var_184 As Variant
  Dim var_1B0 As Field20
  loc_14ACCC8: On Error Goto loc_14AD962
  loc_14ACCD2: var_C8 = "Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,HB1.TaxPer AS LineTaxPer,HB1.TaxAmt, " & "HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,HB1.Remarks,HB1.Total As LineTotal,I.name As IName "
  loc_14ACCE0: var_D0 = var_C8 & "From (HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "INNER Join ItemMast I on HB1.Item=I.Code And HB1.RoomNo=I.RestCode "
  loc_14ACD20: var_138 = CVar(var_D0 & "Where HB.DocID='") & Me.Fields.Item("ContraDocId").Value & "'" 
  loc_14ACD25: var_88 = CStr(var_138)
  loc_14ACD82: var_108 = "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & Me.Fields.Item("ContraDocId").Value 
  loc_14ACD99: unk_51857C.Execute CStr(var_108 & "'"), var_138, -1
  loc_14ACDA4: Set var_BC = var_15C
  loc_14ACDFD: var_108 = "Select AmtCr,PayType,VNo,VDate FROM PayChargeH Where VType='AD' AND ContraDocId='" & Me.Fields.Item("ContraDocId").Value 
  loc_14ACE14: unk_51857C.Execute CStr(var_108 & "'"), var_138, -1
  loc_14ACE1F: Set var_C4 = var_15C
  loc_14ACE4D: If (var_C4.RecordCount > 0) Then
  loc_14ACE78:   var_B4 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("VNo")), var_15C)
  loc_14ACEB0:   var_B8 = var_15C & Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")), "& ")
  loc_14ACEE9:   Proc_6_47_EF6560(var_108, CVar(var_C4.Fields.Item("AmtCr")))
  loc_14ACEF1:   var_118 = (CVar(var_AC) + var_108)
  loc_14ACEF6:   var_AC = CSng(var_108 & "'")
  loc_14ACF2D:   var_B0 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("PayType")))
  loc_14ACF39:   var_C4.MoveNext
  loc_14ACF3E:   ' Referenced from: 14AD0AF
  loc_14ACF4D:   If Not(var_C4.EOF) Then
  loc_14ACF7D:     Proc_6_47_EF6560(var_108, CVar(var_C4.Fields.Item("AmtCr")))
  loc_14ACF85:     var_118 = (CVar(var_AC) + var_108)
  loc_14ACF8A:     var_AC = CSng(var_108 & "'")
  loc_14ACFD2:     If (var_AC <> Proc_6_38_E69628(CVar(var_C4.Fields.Item("PayType")), var_B0)) Then
  loc_14AD00B:       var_B0 = var_AC & Proc_6_38_E69628(CVar(var_C4.Fields.Item("PayType")), var_B0 & ", ")
  loc_14AD051:       var_B4 = var_B4 & ", " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("VNo")))
  loc_14AD097:       var_B8 = var_B8 & ", " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")))
  loc_14AD0A7:     End If
  loc_14AD0AA:     var_C4.MoveNext
  loc_14AD0AF:     GoTo loc_14ACF3E
  loc_14AD0B2:   End If
  loc_14AD0B5: Else
  loc_14AD0BE:   var_AC = 0
  loc_14AD0C4:   var_B0 = vbNullString
  loc_14AD0C7: End If
  loc_14AD106: var_108 = "Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & Me.Fields.Item("ContraDocId").Value 
  loc_14AD113: var_C8 = CStr(var_108 & "'")
  loc_14AD11D: unk_51857C.Execute var_C8, var_138, -1
  loc_14AD128: Set var_C0 = var_15C
  loc_14AD156: If (var_C0.RecordCount > 0) Then
  loc_14AD159:   ' Referenced from: 14AD1F4
  loc_14AD168:   If Not(var_C0.EOF) Then
  loc_14AD181:     var_F8 = vbNullString
  loc_14AD196:     var_118 = IIf((var_A4 = vbNullString), var_F8, ",")
  loc_14AD19E:     var_138 = CVar(var_A4) & var_118 
  loc_14AD1B4:     var_D4 = var_C0.Fields
  loc_14AD1BC:     var_E8 = var_D4.Item("VenuName")
  loc_14AD1D1:     var_A4 = CStr(var_138 & var_E8.Value)
  loc_14AD1EF:     var_C0.MoveNext
  loc_14AD1F4:     GoTo loc_14AD159
  loc_14AD1F7:   End If
  loc_14AD1F7: End If
  loc_14AD1FF: If (var_88 = vbNullString) Then
  loc_14AD202:   Exit Sub
  loc_14AD203: End If
  loc_14AD219: unk_51857C.Execute var_88, var_F8, -1
  loc_14AD224: Set var_9C = var_D4
  loc_14AD233: var_160 = var_9C.RecordCount
  loc_14AD241: If (var_160 <= 0) Then
  loc_14AD24A:   Call 0.Method_arg_50 (var_C8, var_D4)
  loc_14AD26B:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C8), var_118, var_138)
  loc_14AD27B:   Exit Sub
  loc_14AD27C: End If
  loc_14AD292: Set var_D4 = var_9C 
  loc_14AD29E: var_162 = CreateFieldDefFile(var_D4, MemVar_1F950B4 & "\FuncProspect.ttx", &HFF)
  loc_14AD2A8: Set var_9C = var_D4
  loc_14AD2AE: var_E4 = CVar(var_162) 'Integer
  loc_14AD2B1: var_98 = var_E4 'Variant
  loc_14AD2CD: var_C8 = MemVar_1F950B4 & "\FuncProspect.RPT"
  loc_14AD2D6: Call 0.Method_arg_1C (var_C8, var_E4, var_D4)
  loc_14AD2E1: MemVar_1F951E8 = var_D4
  loc_14AD2FC: Call 0.Method_arg_90 (var_D4, var_160, var_9E, 1)
  loc_14AD304: Call 0.Method_arg_24 (var_162, var_15C)
  loc_14AD310: For var_198 =  To CInt(var_160): var_AC = var_198 'Integer
  loc_14AD329:   Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AD331:   Call 0.Method_arg_20 (var_E8)
  loc_14AD339:   Call 0.Method_arg_30 (var_C8)
  loc_14AD34F:   var_1A8 = Ucase(CVar(var_C8)) 'Variant
  loc_14AD368:   If (var_1A8 = "FDATE") Then
  loc_14AD3C1:     Call 0.Method_arg_90 (var_15C, CLng(var_9E))
  loc_14AD3C9:     Call 0.Method_arg_20 (var_1AC)
  loc_14AD3D1:     Call 0.Method_arg_38 (CStr("'" & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & "'"))
  loc_14AD3F0:   Else
  loc_14AD3FB:     If (var_1A8 = "FTIME") Then
  loc_14AD415:       var_D4 = var_BC.Fields
  loc_14AD41D:       var_E8 = var_D4.Item("FromTime")
  loc_14AD431:       var_148 = " - "
  loc_14AD44C:       var_15C = var_BC.Fields
  loc_14AD454:       var_1AC = var_15C.Item("ToTime")
  loc_14AD45C:       var_138 = var_1AC.Value
  loc_14AD464:       var_184 = "'" & var_E8.Value & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & var_138 
  loc_14AD485:       Call 0.Method_arg_90 (var_1B0, CLng(var_9E))
  loc_14AD48D:       Call 0.Method_arg_20 (var_1B4)
  loc_14AD495:       Call 0.Method_arg_38 (CStr(var_184 & "'"))
  loc_14AD4BE:     Else
  loc_14AD4C9:       If (var_1A8 = "VENUENAME") Then
  loc_14AD4ED:         Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AD4F5:         Call 0.Method_arg_20 (var_E8)
  loc_14AD4FD:         Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_14AD513:       Else
  loc_14AD51E:         If (var_1A8 = "TITLE") Then
  loc_14AD534:           Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AD53C:           Call 0.Method_arg_20 (var_E8)
  loc_14AD544:           Call 0.Method_arg_38 ("'FUNCTION PROSPECTUS'")
  loc_14AD553:         Else
  loc_14AD55E:           If (var_1A8 = "FDAY") Then
  loc_14AD5C3:             Call 0.Method_arg_90 (var_15C, CLng(var_9E))
  loc_14AD5CB:             Call 0.Method_arg_20 (var_1AC)
  loc_14AD5D3:             Call 0.Method_arg_38 ("'" & WeekdayName(CLng(Weekday(CVar(var_BC.Fields.Item("FromDate")), 1)), 0, 0) & "'")
  loc_14AD5F4:           Else
  loc_14AD616:             If (var_1A8 = Ucase("FunctionName")) Then
  loc_14AD624:               var_174 = 0
  loc_14AD63A:               var_128 = "SELECT Name FROM FunctionType WHERE Code='"
  loc_14AD651:               var_D4 = var_9C.Fields
  loc_14AD659:               var_E8 = var_D4.Item("Func_Name")
  loc_14AD66D:               var_148 = "'"
  loc_14AD680:               unk_51857C.Execute CStr(var_128 & var_E8.Value & var_148), var_138, -1
  loc_14AD688:               var_15C = var_15C.Fields
  loc_14AD690:               var_174 = var_1AC.Item(var_1AC)
  loc_14AD698:               var_1B0 = var_1B0.Value
  loc_14AD6C1:               Call 0.Method_arg_90 (var_1B4, CLng(var_9E), var_1E8)
  loc_14AD6C9:               Call 0.Method_arg_20 (CStr(var_184 & var_184 & "'"))
  loc_14AD6D1:               Call 0.Method_arg_38 ("'")
  loc_14AD702:             Else
  loc_14AD724:               If (var_1A8 = Ucase("Advance")) Then
  loc_14AD74D:                 Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AD755:                 Call 0.Method_arg_20 (var_E8)
  loc_14AD75D:                 Call 0.Method_arg_38 ("'" & CStr(var_AC) & "'")
  loc_14AD775:               Else
  loc_14AD797:                 If (var_1A8 = Ucase("PayType")) Then
  loc_14AD7BB:                   Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AD7C3:                   Call 0.Method_arg_20 (var_E8)
  loc_14AD7CB:                   Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_14AD7E1:                 Else
  loc_14AD803:                   If (var_1A8 = Ucase("aVNo")) Then
  loc_14AD827:                     Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AD82F:                     Call 0.Method_arg_20 (var_E8)
  loc_14AD837:                     Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_14AD84D:                   Else
  loc_14AD86F:                     If (var_1A8 = Ucase("aVDate")) Then
  loc_14AD879:                       var_C8 = "'" & var_B8
  loc_14AD893:                       Call 0.Method_arg_90 (var_D4, CLng(var_9E))
  loc_14AD89B:                       Call 0.Method_arg_20 (var_E8)
  loc_14AD8A3:                       Call 0.Method_arg_38 (var_C8 & "'")
  loc_14AD8B6:                     End If
  loc_14AD8B6:                   End If
  loc_14AD8B6:                 End If
  loc_14AD8B6:               End If
  loc_14AD8B6:             End If
  loc_14AD8B6:           End If
  loc_14AD8B6:         End If
  loc_14AD8B6:       End If
  loc_14AD8B6:     End If
  loc_14AD8B6:   End If
  loc_14AD8B9: Next var_198 'Integer
  loc_14AD8D7: Call 0.Method_arg_64 (var_D4, CVar(var_9C))
  loc_14AD8DF: Call 0.Method_arg_2C (var_128)
  loc_14AD8ED: Call 0.Method_arg_150 (var_148)
  loc_14AD8F8: Call 0.Method_arg_50 (var_C8)
  loc_14AD902: Set var_E8 = Nothing
  loc_14AD91C: Set var_D4 = MemVar_1F951E8 
  loc_14AD928: Proc_6_99_1484404(var_D4, 0, var_C8)
  loc_14AD933: MemVar_1F951E8 = var_D4
  loc_14AD946: Set var_9C = Nothing
  loc_14AD94E: Set var_BC = Nothing
  loc_14AD956: Set var_C0 = Nothing
  loc_14AD95E: Set var_C4 = Nothing
  loc_14AD961: Exit Sub
  loc_14AD962: ' Referenced from: 14ACCC8
  loc_14AD962: Proc_6_60_E63754(&HFF)
  loc_14AD967: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E54BE4
  'Data Table: 518554
  Dim Me As Recordset15
  loc_E54BAF: If Not((global_64 Is Nothing)) Then
  loc_E54BBD:   Me.Requery -1
  loc_E54BC2: End If
  loc_E54BCD: Me.Requery -1
  loc_E54BDD: Me.Requery -1
  loc_E54BE2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '151CF9C
  'Data Table: 518554
  Dim var_AC As String
  Dim var_CC As Variant
  Dim var_A4 As Variant
  Dim var_8A As Variant
  Dim unk_51857C As Connection15
  Dim var_108 As String
  Dim var_10C As String
  Dim var_A0 As Variant
  Dim var_BC As Variant
  Dim var_130 As Variant
  Dim var_DC As Variant
  Dim var_150 As String
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_200 As Variant
  Dim var_A8 As Variant
  Dim var_290 As Variant
  Dim var_2A4 As MSHFlexGrid
  Dim var_2E4 As Variant
  Dim var_338 As Variant
  Dim var_348 As Variant
  Dim var_9A4 As Double
  Dim var_9AC As Double
  Dim var_334 As Variant
  Dim var_444 As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_574 As Variant
  Dim var_594 As Variant
  Dim var_9C4 As Double
  Dim var_650 As Variant
  Dim var_9CC As Double
  Dim var_8B0 As Variant
  Dim var_8D0 As Variant
  Dim var_3AC As String
  Dim var_3B0 As String
  Dim var_3B8 As String
  Dim var_3CC As String
  Dim var_1E0 As Variant
  Dim var_388 As Variant
  Dim var_4AC As Variant
  Dim var_690 As Variant
  Dim var_880 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_88 As Recordset15
  Dim var_3B4 As String
  Dim Me As Recordset15
  loc_151C1C8: On Error Goto loc_151CF82
  loc_151C1D6: Set var_A0 = Me.Txt
  loc_151C1DC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_151C205: If (Proc_6_27_EA61EC(var_A4, "Voucher No") = 0) Then
  loc_151C208:   Exit Sub
  loc_151C209: End If
  loc_151C214: Set var_A0 = Me.Txt
  loc_151C21A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_151C22B: Set var_A8 = var_A4
  loc_151C243: If (Proc_6_27_EA61EC(var_A8, "Party name") = 0) Then
  loc_151C246:   Exit Sub
  loc_151C247: End If
  loc_151C24B: Set var_A0 = Me.TopCtrl1
  loc_151C251: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A4)
  loc_151C26A: If (CStr() = "Add") Then
  loc_151C2A9:   var_AC = CStr(Left(Format(Time, "HH:mm"), 5))
  loc_151C2B2:   global_108 = var_AC
  loc_151C2C3: End If
  loc_151C2CC: If (global_54 = &HFF) Then
  loc_151C2CF:   Exit Sub
  loc_151C2D0: End If
  loc_151C2D3: Call Proc_129_55_10C3324(var_FE, 1)
  loc_151C2DE: If (var_FE = 0) Then
  loc_151C2E1:   Exit Sub
  loc_151C2E2: End If
  loc_151C2ED: Set var_A0 = Me.TxtGrid
  loc_151C2F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4)
  loc_151C2FB: var_A4.Visible = False
  loc_151C307: Call Proc_129_58_F26D08(1)
  loc_151C30E: var_8A = &HFF
  loc_151C31A: unk_51857C.BeginTrans var_104
  loc_151C33D: Set var_A0 = Me.Txt
  loc_151C343: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_AC, "Delete From HallPreCosting Where DocID='")
  loc_151C34B: var_BC = var_A4.Text
  loc_151C354: var_108 = -1 & var_AC
  loc_151C364: unk_51857C.Execute var_108 & "'", var_A8, var_8A
  loc_151C3A3: For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_110 'Integer
  loc_151C3AD:   var_CC = CVar(CLng(var_92)) 'Long
  loc_151C3B5:   var_130 = CVar(CLng(6)) 'Long
  loc_151C3D5:   var_EC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_151C3DD:   var_150 = "Food"
  loc_151C3FC:   Set var_A4 = Me.FGrid
  loc_151C42D:   var_200 = CVar(CLng(var_92)) 'Long
  loc_151C4B7:   Set var_338 = Me.FGrid
  loc_151C4BD:   var_348 = var_338.TextMatrix)
  loc_151C519:   If CBool(CVar(CLng(var_92)) Or CVar(CLng(1)) And (Trim(CVar(CStr(var_348))) <> vbNullString)) Then
  loc_151C52A:     Set var_A0 = Me.Txt
  loc_151C530:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_3B4, (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Food"), CVar(CLng(6)), CVar(CLng(var_92)), CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)))
  loc_151C538:     var_200 = var_A4.Text
  loc_151C541:     var_CC = CVar(CLng(var_92)) 'Long
  loc_151C552:     Set var_A8 = Me.FGrid
  loc_151C56B:     var_9A4 = Val(CStr(var_A8.TextMatrix)))
  loc_151C571:     var_DC = Time
  loc_151C580:     var_150 = "HH:mm"
  loc_151C585:     var_EC = var_150
  loc_151C5A4:     Set var_2A4 = Me.Txt
  loc_151C5AA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_338, var_3D8, 1, 1, var_9A4, CVar(CLng(0)))
  loc_151C5B2:     var_CC = var_338.Text
  loc_151C5BF:     var_9AC = Val(var_3D8)
  loc_151C5CD:     Set var_3DC = Me.Txt
  loc_151C5D3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_3E0, var_9AC, CVar(CLng(1)) And (Trim(CVar(CStr(var_A4.TextMatrix)))) <> vbNullString), CVar(CLng(var_92)))
  loc_151C5E2:     Proc_6_7_F26918(var_348, CVar(var_3E0), (var_EC <> var_150))
  loc_151C5EB:     var_290 = CVar(CLng(var_92)) 'Long
  loc_151C5F3:     var_2E4 = CVar(CLng(9)) 'Long
  loc_151C612:     var_334 = CVar(CLng(var_92)) 'Long
  loc_151C61A:     var_444 = CVar(CLng(3)) 'Long
  loc_151C643:     var_4BC = CVar(CLng(var_92)) 'Long
  loc_151C64B:     var_4DC = CVar(CLng(4)) 'Long
  loc_151C674:     var_574 = CVar(CLng(var_92)) 'Long
  loc_151C67C:     var_594 = CVar(CLng(5)) 'Long
  loc_151C69E:     var_9C4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_151C6BC:     var_650 = Me.FGrid.TextMatrix)
  loc_151C6F6:     var_9CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_151C707:     Proc_6_7_F26918(var_7C8, Date, var_9CC, CVar(CLng(7)), CVar(CLng(var_92)), var_650, CVar(CLng(6)), CVar(CLng(var_92)))
  loc_151C710:     Set var_7FC = Me.TopCtrl1
  loc_151C716:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_9C4)
  loc_151C751:     var_8B0 = CVar(CLng(var_92)) 'Long
  loc_151C759:     var_8D0 = CVar(CLng(&HB)) 'Long
  loc_151C796:     var_10C = "Insert Into HallPreCosting(" & "DocId,SNo,VType,VTIME,VPrefix,Site_Code," & "VNo,VDate,RestCode,Item," & "Qty,Rate,Amount,VoidYN,"
  loc_151C7C5:     var_3CC = var_10C & "ContraDocID,ContraSno,U_Name,U_EntDt,U_AE,DepartCode,LogSite_Code) " & "Values(" & "'" & var_3B4 & "'," & CStr(var_9A4)
  loc_151C7F9:     var_1E0 = CVar(var_3CC & ",'" & global_120 & "','") & Format(var_DC, var_EC) & "','" & CVar(global_124) 
  loc_151C84F:     var_388 = var_1E0 & "','" & CVar(MemVar_1F95070) & "'," & vbNullString & CVar(var_9AC) & "," & var_348 & ",'" & CVar(global_56) 
  loc_151C892:     var_4AC = var_388 & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_151C8D7:     var_690 = var_4AC & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString & CVar(var_9C4) & ",'N','" & CVar(CStr(var_650)) & "'," 
  loc_151C927:     var_880 = var_690 & vbNullString & CVar(var_9CC) & "," & "'" & CVar(MemVar_1F950C8) & "'," & var_7C8 & ",'" & IIf((CStr(var_80C) = "Add"), "A", "E") 
  loc_151C965:     unk_51857C.Execute CStr(var_880 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F95078) & "')"), var_998, -1
  loc_151CA3D:   End If
  loc_151CA40: Next var_110 'Integer
  loc_151CA49: Set var_A0 = Me.TopCtrl1
  loc_151CA4F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_151CA68: If (CStr() = "Add") Then
  loc_151CA7F:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_151CAA5:   var_EC = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_120 & "' And VP.Date_From<=") 'String
  loc_151CAB6:   Set var_A0 = Me.Txt
  loc_151CABC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_A4, var_3B4, var_EC)
  loc_151CAC4:   var_1B0 = var_A4.Text
  loc_151CAD2:   Proc_6_7_F26918(var_DC, CVar(var_3B4))
  loc_151CADA:   var_FC = -1 & var_DC 
  loc_151CAE3:   var_1A0 = Format(var_DC, var_EC) & " Order By VP.Date_From DESC" 
  loc_151CAF1:   unk_51857C.Execute CStr(var_1A0), var_A8, 
  loc_151CAFC:   Set var_88 = var_A8
  loc_151CB3A:   If (var_88.RecordCount > 0) Then
  loc_151CB4B:     Set var_A0 = Me.Txt
  loc_151CB51:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_151CB66:     var_9A4 = Val(var_A4.Text)
  loc_151CB78:     var_A8 = var_88.Fields
  loc_151CB88:     var_BC = CVar(var_A8.Item("Date_From")) 'Address
  loc_151CB8F:     Proc_6_7_F26918(var_DC, var_BC)
  loc_151CBB4:     var_3AC = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_9A4) & " Where (SITE_CODE='"
  loc_151CBE1:     var_EC = CVar(var_3AC & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='" & global_120 & "' and Date_From=") 'String
  loc_151CBF5:     unk_51857C.Execute CStr(var_EC & var_DC), var_1A0, -1
  loc_151CC29:   End If
  loc_151CC29: End If
  loc_151CC2D: Set var_A0 = Me.TopCtrl1
  loc_151CC33: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_338)
  loc_151CC4C: If (CStr(var_9A4) = "Add") Then
  loc_151CC72:   var_AC = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078
  loc_151CC90:   Call 0.Method_arg_50 (var_3AC, var_AC & "' and UNAME='" & MemVar_1F950C8 & "' AND ENAME='", var_BC, -1, var_A0)
  loc_151CCA0:   var_3B8 = var_A4 & var_3AC & "' "
  loc_151CCA9:   unk_51857C.Execute var_3B8, 0, var_A8
  loc_151CCB1:   var_DC = var_A0.Fields
  loc_151CCB9:    = var_A4.Item()
  loc_151CCC1:    = var_A8.Value
  loc_151CCF2:   If (var_DC > 0) Then
  loc_151CD13:     Set var_A0 = Me.Txt
  loc_151CD19:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_AC, "UPDATE LASTVOU  SET DOCID='")
  loc_151CD21:     var_BC = var_A4.Text
  loc_151CD2A:     var_108 = -1 & var_AC
  loc_151CD3F:     var_3B0 = var_AC & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "' and UNAME='"
  loc_151CD56:     Call 0.Method_arg_50 (var_3B8, var_3B0 & MemVar_1F950C8 & "' AND ENAME='")
  loc_151CD6F:     unk_51857C.Execute var_A8 & var_3B8 & "'  ", , 
  loc_151CD9A:   Else
  loc_151CDBE:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_1E0)
  loc_151CDC7:     var_3AC = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='"
  loc_151CDCE:     var_3B4 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "','"
  loc_151CDDF:     Set var_A0 = Me.Txt
  loc_151CDE5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_3B0)
  loc_151CDED:     var_3B4 = var_A4.Text
  loc_151CE1C:     Proc_6_7_F26918(var_DC, Date)
  loc_151CE28:     var_CC = ",'A','"
  loc_151CE4E:     unk_51857C.Execute CStr(CVar(var_A8 & var_3B0 & "','" & MemVar_1F95070 & "',") & var_DC & var_CC & CVar(MemVar_1F95078) & "')"), , 
  loc_151CE86:   End If
  loc_151CE86: End If
  loc_151CE8C: unk_51857C.CommitTrans
  loc_151CE93: var_8A = 0
  loc_151CEA4: Set var_A0 = Me.Txt
  loc_151CEAA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4)
  loc_151CEC6: var_8A = 0
  loc_151CED4: Me.Requery -1
  loc_151CEE4: Me.Requery -1
  loc_151CF0E: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_151CF1E: Set var_A0 = Me.TopCtrl1
  loc_151CF24: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_CC)
  loc_151CF3D: If (CStr(var_8A) = "Add") Then
  loc_151CF40:   Call TopCtrl1_UnknownEvent_A()
  loc_151CF45:   Exit Sub
  loc_151CF46: End If
  loc_151CF69: Call Proc_129_57_E99AA8(Proc_5_1_100EC1C("INI", Me), global_80)
  loc_151CF74: Call Proc_129_54_1721678(var_8A)
  loc_151CF7E: Set var_88 = Nothing
  loc_151CF81: Exit Sub
  loc_151CF82: ' Referenced from: 151C1C8
  loc_151CF88: If (var_8A = &HFF) Then
  loc_151CF91:   unk_51857C.RollbackTrans
  loc_151CF96: End If
  loc_151CF96: Proc_6_60_E63754()
  loc_151CF9B: Exit Sub
End Sub

Private Sub Form_Load() '12AD604
  'Data Table: 518554
  Dim var_8C As String
  Dim var_90 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim unk_51857C As Connection15
  Dim var_88 As Variant
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_12ACFF4: On Error Goto loc_12AD5FD
  loc_12AD001: Set global_60 = New 
  loc_12AD013: Me.Recordset15.CursorLocation = 3
  loc_12AD03D: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_12AD055: Me.Open CVar(var_90 & MemVar_1F95070 & "' and Category in('HALBOOK') Order by Description"), CVar(MemVar_1F95044), 3
  loc_12AD06F: CVarUnk
  loc_12AD074: VerifyVarObj
  loc_12AD07A: Set var_88 = Me.DGVType
  loc_12AD080: LateIdStAd
  loc_12AD098: Set global_76 = New 
  loc_12AD0AA: Me.DGVType.CursorLocation = 3
  loc_12AD0C4: If (global_56 = MemVar_1F95078 & "BANQ") Then
  loc_12AD0CD:   global_120 = "IKOT"
  loc_12AD0D4: Else
  loc_12AD0E9:   If (global_56 = MemVar_1F95078 & "ODC") Then
  loc_12AD0F2:     global_120 = "OKOT"
  loc_12AD0F6:   End If
  loc_12AD0F6: End If
  loc_12AD101: If (global_120 = "IKOT") Then
  loc_12AD122:   var_8C = "Select DISTINCT DocId As Code,Convert(Varchar(10),VNO) As FPNo,VNO,PartyName FROM HALLBOOK1 Where LogSite_Code='" & MemVar_1F95078
  loc_12AD129:   var_A4 = CVar(var_8C & "' and VType='IBOOK' AND DocId NOT IN (SELECT DISTINCT CONTRADOCID FROM HallPreCosting)  Order by VNO") 'String
  loc_12AD133:   Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_12AD141: Else
  loc_12AD15F:   var_8C = "Select DISTINCT DocId As Code,Convert(Varchar(10),VNO) As FPNo,VNO,PartyName,City FROM HALLBOOK Where LogSite_Code='" & MemVar_1F95078
  loc_12AD166:   var_A4 = CVar(var_8C & "' and VType='OBOOK' AND DocId NOT IN (SELECT DISTINCT CONTRADOCID FROM HallPreCosting)  Order by VNO") 'String
  loc_12AD170:   Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_12AD17B: End If
  loc_12AD184: CVarUnk
  loc_12AD189: VerifyVarObj
  loc_12AD18F: Set var_88 = Me.DGFPNo
  loc_12AD195: LateIdStAd
  loc_12AD1AD: Set global_72 = New 
  loc_12AD1BF: Me.DGFPNo.CursorLocation = 3
  loc_12AD1E9: var_A4 = CVar("Select H.Code As Code,H.Name As Name From Depart H WHERE H.LogSite_Code='" & MemVar_1F95078 & "' and H.RestType IN ('Banquet') Order by H.Name") 'String
  loc_12AD1F3: Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_12AD207: CVarUnk
  loc_12AD20C: VerifyVarObj
  loc_12AD212: Set var_88 = Me.DGHall
  loc_12AD218: LateIdStAd
  loc_12AD242: Me.DGHall.CursorLocation = 3
  loc_12AD26C: var_A4 = CVar("Select DIstinct H.Code As Code,H.Name As Name From CATALOGMAST H  Where LogSite_Code='" & MemVar_1F95078 & "' Order by H.Name") 'String
  loc_12AD28A: CVarUnk
  loc_12AD28F: VerifyVarObj
  loc_12AD29B: LateIdStAd
  loc_12AD2B3: Set global_80 = New 
  loc_12AD2C5: Me.DG_Catalog.CursorLocation = 3
  loc_12AD2E8: var_8C = "Select Distinct S.DocId as SearchCode,S.DocID,S.ContraDocid,S.LogSite_Code,S.Site_Code From HallPreCosting S WHERE S.LogSite_Code='" & MemVar_1F95078
  loc_12AD2EF: var_90 = var_8C & "' and S.VTYPE IN(select V_Type From Voucher_Type where LogSite_Code='"
  loc_12AD31C: var_A4 = CVar(var_90 & MemVar_1F95078 & "' and Site_Code='" & MemVar_1F95070 & "' and NCAt='BKOT' and RestCode='" & global_56 & "') Order by Docid") 'String
  loc_12AD326: r_A4, CVar(MemVar_1F95044), 3 var_A4, CVar(MemVar_1F95044), 3
  loc_12AD372: Call 0.Method_arg_50 (var_90, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_A4, -1, Me.DG_Catalog, var_C8, 0, var_DC)
  loc_12AD399: unk_51857C.Execute var_EC & var_90 & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_12AD3A1: var_88 = var_88.Fields
  loc_12AD3A9: 1 = var_C8.Item(New)
  loc_12AD3B1: -1 = var_DC.Value
  loc_12AD3E2: If (var_EC > 0) Then
  loc_12AD42B:   Call 0.Method_arg_50 (var_90, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_A4, -1, var_88, var_C8, 0)
  loc_12AD452:   unk_51857C.Execute var_DC & var_90 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_EC, "SearchCode='"
  loc_12AD45A:   0 = var_88.Fields
  loc_12AD462:   var_140 = var_C8.Item(1)
  loc_12AD46A:    = var_DC.Value
  loc_12AD489:   Me.Find CStr(var_EC & "'"), , 
  loc_12AD4B5: End If
  loc_12AD4CC: If (Me.RecordCount > 0) Then
  loc_12AD4E3:   If (Me.EOF = &HFF) Then
  loc_12AD4EC:     Me.MoveLast
  loc_12AD4F1:   End If
  loc_12AD4F1: End If
  loc_12AD514: Call Proc_129_57_E99AA8(Proc_5_1_100EC1C("INI", Me))
  loc_12AD526: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12AD53E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12AD559: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12AD56F: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_12AD586: Me.LblUser.Left = CDbl(14000)
  loc_12AD59D: Me.LblUser.Top = CDbl(7800)
  loc_12AD5B4: Me.LblLDt.Top = CDbl(8160)
  loc_12AD5C5: Set var_88 = Me.LblLDt
  loc_12AD5CB: var_88.Left = CDbl(14000)
  loc_12AD5DC: Call 0.Method_arg_160 (var_88)
  loc_12AD5EA: Call 0.Method_arg_164 (var_88)
  loc_12AD5F2: Call Proc_129_49_141A000(global_80)
  loc_12AD5F7: Call Proc_129_54_1721678()
  loc_12AD5FC: Exit Sub
  loc_12AD5FD: ' Referenced from: 12ACFF4
  loc_12AD5FD: Proc_6_60_E63754()
  loc_12AD602: Exit Sub
End Sub

Private Sub Form_Resize() 'ED38E8
  'Data Table: 518554
  Dim var_8C As Label
  loc_ED3846: Call 0.Method_arg_50 (var_88)
  loc_ED3858: Me.LblFormCaption.Caption = var_88
  loc_ED3871: Me.LblFormCaption.Left = CDbl(0)
  loc_ED387D: Set var_A0 = Me.TopCtrl1
  loc_ED3883: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_ED3890: Set var_8C = Me.TopCtrl1
  loc_ED3896: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_ED38B0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED38CB: Call 0.Method_arg_100 (var_B8)
  loc_ED38DD: Me.LblFormCaption.Width = var_B8
  loc_ED38E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E89CD8
  'Data Table: 518554
  loc_E89C6B: Set global_72 = Nothing
  loc_E89C7D: Set global_76 = Nothing
  loc_E89C8F: Set global_64 = Nothing
  loc_E89CA1: Set global_84 = Nothing
  loc_E89CB3: Set global_88 = Nothing
  loc_E89CC5: Set global_92 = Nothing
  loc_E89CD1: global_52 = 0
  loc_E89CD4: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E261DC
  'Data Table: 518554
  loc_E261C1: If (global_52 = &HFF) Then
  loc_E261D1:   Me.Global.Unload Me
  loc_E261D9: End If
  loc_E261D9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E38468
  'Data Table: 518554
  Dim var_2301 As Double
  loc_E3843C: On Error Goto loc_E38460
  loc_E38457: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3845F: Exit Sub
  loc_E38460: ' Referenced from: E3843C
  loc_E38460: Proc_6_60_E63754(Shift)
  loc_E38465: Exit Sub
  loc_E38466: var_2301 = global_52
End Sub

Private Sub DGVType_UnknownEvent_9 'FD62A8
  'Data Table: 518554
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD60EC: On Error Goto loc_FD62A0
  loc_FD60FE: Me.DGVType.Visible = False
  loc_FD611D: If (Me.RecordCount > 0) Then
  loc_FD616F:   Set var_CC = Me.Txt
  loc_FD6175:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD617D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD61D5:   Set var_B4 = Me.DGVType
  loc_FD61EC:   Set var_CC = Me.Txt
  loc_FD61F2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD61FA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD624E:   global_132 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD625F: End If
  loc_FD627D: Set var_B0 = Me.Txt
  loc_FD6283: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD628B: var_B4.SetFocus
  loc_FD629F: Exit Sub
  loc_FD62A0: ' Referenced from: FD60EC
  loc_FD62A0: Proc_6_60_E63754(var_B4)
  loc_FD62A5: Exit Sub
  loc_FD62A6: Exit Sub
End Sub

Private Sub CmdMore_UnknownEvent_9 'E62448
  'Data Table: 518554
  loc_E62417: If (Me.Frame1.Visible = 0) Then
  loc_E62426:   Me.Frame1.Visible = True
  loc_E62431: Else
  loc_E6243D:   Me.Frame1.Visible = False
  loc_E62445: End If
  loc_E62445: Exit Sub
End Sub

Private Sub DG_Catalog_UnknownEvent_9 'F5EA38
  'Data Table: 518554
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5E918: On Error Goto loc_F5EA32
  loc_F5E92A: Me.DG_Catalog.Visible = False
  loc_F5E949: If (Me.RecordCount > 0) Then
  loc_F5E988:   Set var_B4 = Me.Txt
  loc_F5E98E:   Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D), var_B8)
  loc_F5E996:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5E9C9:   var_B0 = Me.Fields.Item("Name")
  loc_F5E9E8:   Set var_B4 = Me.Txt
  loc_F5E9EE:   Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D), var_B8)
  loc_F5E9F6:   var_B8.Text = CStr(var_B0.Value)
  loc_F5EA0C: End If
  loc_F5EA17: Set var_A8 = Me.Txt
  loc_F5EA1D: Call 0.Method_DG_Catalog_UnknownEvent_90 (CInt(&H2D))
  loc_F5EA25: var_B0.SetFocus
  loc_F5EA31: Exit Sub
  loc_F5EA32: ' Referenced from: F5E918
  loc_F5EA32: Proc_6_60_E63754(var_B0)
  loc_F5EA37: Exit Sub
End Sub

Private Sub DGFPNo_UnknownEvent_9 'F5E768
  'Data Table: 518554
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5E648: On Error Goto loc_F5E762
  loc_F5E65A: Me.DGFPNo.Visible = False
  loc_F5E679: If (Me.RecordCount > 0) Then
  loc_F5E6B8:   Set var_B4 = Me.Txt
  loc_F5E6BE:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1), var_B8)
  loc_F5E6C6:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5E6F9:   var_B0 = Me.Fields.Item("Name")
  loc_F5E718:   Set var_B4 = Me.Txt
  loc_F5E71E:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1), var_B8)
  loc_F5E726:   var_B8.Text = CStr(var_B0.Value)
  loc_F5E73C: End If
  loc_F5E747: Set var_A8 = Me.Txt
  loc_F5E74D: Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(1))
  loc_F5E755: var_B0.SetFocus
  loc_F5E761: Exit Sub
  loc_F5E762: ' Referenced from: F5E648
  loc_F5E762: Proc_6_60_E63754(var_B0)
  loc_F5E767: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '11699AC
  'Data Table: 518554
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  loc_1169603: Me.DGItem.Visible = False
  loc_1169622: If (Me.RecordCount > 0) Then
  loc_1169653:   var_CC = CStr(Me.Fields.Item("Name").Value)
  loc_116965F:   Set var_B4 = Me.TxtGrid
  loc_1169665:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_116966D:   var_B8.Text = var_CC
  loc_1169696:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116969E:   var_EC = CVar(CLng(1)) 'Long
  loc_11696D1:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_11696D9:   Set var_B8 = Me.FGrid
  loc_11696DF:   LateIdCallSt
  loc_116970E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1169716:   var_EC = CVar(CLng(9)) 'Long
  loc_1169749:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1169751:   Set var_B8 = Me.FGrid
  loc_1169757:   LateIdCallSt
  loc_11697A5:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11697AD:   var_FC = CVar(CLng(4)) 'Long
  loc_11697E8:   LateIdCallSt
  loc_1169840:   var_B0 = Me.Fields.Item("Unit")
  loc_1169851:   var_11C = CVar(Proc_6_38_E69628(CVar(var_B0), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), "0.00"))), 1, 1)) 'String
  loc_116985F:   LateIdCallSt
  loc_11698A7:   Set var_A8 = Me.Txt
  loc_11698AD:   Call 0.Method_DGItem_UnknownEvent_90 (CInt(1), var_B0, var_CC, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C)
  loc_11698B5:   var_FC = var_B0.Tag
  loc_11698BD:   var_10C = CVar(var_CC) 'String
  loc_11698CB:   LateIdCallSt
  loc_11698EF:   var_10C = Me.FGrid.Row
  loc_116991F:   var_B0 = Me.Fields.Item("DepartCode")
  loc_1169930:   var_11C = CVar(Proc_6_38_E69628(CVar(var_B0), CVar(CLng(&HB)), CVar(CLng(var_10C)), Me.FGrid, var_10C)) 'String
  loc_1169938:   Set var_B8 = Me.FGrid
  loc_116993E:   LateIdCallSt
  loc_1169958: End If
  loc_1169964: Set var_A8 = Me.TxtGrid
  loc_116996A: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_11C)
  loc_1169972: var_DC = var_B0.Visible
  loc_1169984: If (var_15E = &HFF) Then
  loc_1169990:   Set var_A8 = Me.TxtGrid
  loc_1169996:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_116999E:   var_B0.SetFocus
  loc_11699AA: End If
  loc_11699AA: Exit Sub
End Sub

Public Function global_52Get() '519E70
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '519E7F
  global_52 = Value
End Sub

Public Function global_54Get() '519E8E
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '519E9D
  global_54 = Value
End Sub

Public Function global_56Get() '519EAC
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '519EBB
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E7622C
  'Data Table: 518554
  Dim Me As Recordset15
  loc_E761D6: Me.MoveFirst
  loc_E76200: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E76220: If (Me.EOF = 0) Then
  loc_E76223:   Call Proc_129_54_1721678(var_9C)
  loc_E76228: End If
  loc_E76228: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95DD8
  'Data Table: 518554
  Dim Me As Recordset15
  loc_E95D66: On Error Goto loc_E95DCF
  loc_E95D6F: Me.MoveFirst
  loc_E95D99: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95DC1: Proc_5_0_1107AD0(&HFF, Me, global_80)
  loc_E95DC9: Call Proc_129_54_1721678(0)
  loc_E95DCE: Exit Sub
  loc_E95DCF: ' Referenced from: E95D66
  loc_E95DCF: Proc_6_60_E63754(var_A0)
  loc_E95DD4: Exit Sub
End Sub

Public Sub Proc_129_49_141A000
  'Data Table: 518554
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_141957F: Me.FGrid.Left = CVar(CDbl(7320))
  loc_141959A: Me.FGrid.Top = CVar(CDbl(3885))
  loc_14195B5: Me.FGrid.Width = CVar(CDbl(6600))
  loc_14195CC: Me.Frame1.Left = CDbl(7300)
  loc_14195E3: Me.Frame1.Top = CDbl(1350)
  loc_14195FE: Me.DGItem.Left = CVar(CDbl(7320))
  loc_1419619: Me.DGItem.Top = CVar(CDbl(900))
  loc_141962F: Set var_A8 = Me.Txt
  loc_1419635: Call 0.Method_Proc_129_49_141A0000 (CInt(&H2D), var_AC)
  loc_1419654: Me.DG_Catalog.Left = CVar(var_AC.Left)
  loc_1419670: Set var_B4 = Me.Txt
  loc_1419676: Call 0.Method_Proc_129_49_141A0000 (CInt(&H2D), var_B8)
  loc_1419691: Set var_A8 = Me.Txt
  loc_1419697: Call 0.Method_Proc_129_49_141A0000 (CInt(&H2D), var_AC)
  loc_14196AF: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_14196BE: Me.DG_Catalog.Top = CVar(var_AC.Left)
  loc_14196DE: Set var_A8 = Me.Txt
  loc_14196E4: Call 0.Method_Proc_129_49_141A0000 (CInt(1), var_AC)
  loc_1419703: Me.DGFPNo.Left = CVar(var_AC.Left)
  loc_141971F: Set var_B4 = Me.Txt
  loc_1419725: Call 0.Method_Proc_129_49_141A0000 (CInt(1), var_B8)
  loc_1419740: Set var_A8 = Me.Txt
  loc_1419746: Call 0.Method_Proc_129_49_141A0000 (CInt(1), var_AC)
  loc_141975E: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_141976D: Me.DGFPNo.Top = CVar(var_AC.Left)
  loc_141978D: Set var_A8 = Me.Txt
  loc_1419793: Call 0.Method_Proc_129_49_141A0000 (CInt(0), var_AC)
  loc_14197B2: Me.DGVType.Left = CVar(var_AC.Left)
  loc_14197CE: Set var_B4 = Me.Txt
  loc_14197D4: Call 0.Method_Proc_129_49_141A0000 (CInt(0), var_B8)
  loc_14197EF: Set var_A8 = Me.Txt
  loc_14197F5: Call 0.Method_Proc_129_49_141A0000 (CInt(0), var_AC)
  loc_141980D: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_141981C: Me.DGVType.Top = CVar(var_AC.Left)
  loc_1419832: Set var_C4 = Me.FGrid
  loc_1419849: global_100 = CStr(CLng(var_C4.BackColor))
  loc_141985F: var_C4.Cols = &HC
  loc_1419864: var_94 = 0
  loc_141986D: var_E8 = 0
  loc_1419876: var_108 = "SNo"
  loc_141987F: LateIdCallSt
  loc_1419887: var_94 = 0
  loc_1419896: var_E8 = CVar(CInt(1)) 'Integer
  loc_141989D: LateIdCallSt
  loc_14198A5: var_94 = 0
  loc_14198B4: var_E8 = CVar(CInt(1)) 'Integer
  loc_14198BB: LateIdCallSt
  loc_14198C6: var_94 = CVar(CLng(0)) 'Long
  loc_14198CB: var_E8 = &H1C2
  loc_14198D7: LateIdCallSt
  loc_14198DF: var_94 = 0
  loc_14198EB: var_E8 = CVar(CLng(1)) 'Long
  loc_14198F0: var_108 = "Item Name"
  loc_14198F9: LateIdCallSt
  loc_1419904: var_94 = CVar(CLng(1)) 'Long
  loc_141990F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419916: LateIdCallSt
  loc_1419921: var_94 = CVar(CLng(1)) 'Long
  loc_1419926: var_E8 = &H1194
  loc_1419932: LateIdCallSt
  loc_141993A: var_94 = 0
  loc_1419946: var_E8 = CVar(CLng(2)) 'Long
  loc_141994B: var_108 = "Remarks"
  loc_1419954: LateIdCallSt
  loc_141995F: var_94 = CVar(CLng(2)) 'Long
  loc_141996A: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419971: LateIdCallSt
  loc_141997C: var_94 = CVar(CLng(2)) 'Long
  loc_1419981: var_E8 = 0
  loc_141998D: LateIdCallSt
  loc_1419995: var_94 = 0
  loc_14199A1: var_E8 = CVar(CLng(3)) 'Long
  loc_14199A6: var_108 = "Qty"
  loc_14199AF: LateIdCallSt
  loc_14199BA: var_94 = CVar(CLng(3)) 'Long
  loc_14199C5: var_E8 = CVar(CInt(7)) 'Integer
  loc_14199CC: LateIdCallSt
  loc_14199D7: var_94 = CVar(CLng(3)) 'Long
  loc_14199E2: var_E8 = CVar(CInt(7)) 'Integer
  loc_14199E9: LateIdCallSt
  loc_14199F4: var_94 = CVar(CLng(3)) 'Long
  loc_14199F9: var_E8 = &H5DC
  loc_1419A05: LateIdCallSt
  loc_1419A0D: var_94 = 0
  loc_1419A19: var_E8 = CVar(CLng(4)) 'Long
  loc_1419A1E: var_108 = "Rate"
  loc_1419A27: LateIdCallSt
  loc_1419A32: var_94 = CVar(CLng(4)) 'Long
  loc_1419A3D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1419A44: LateIdCallSt
  loc_1419A4F: var_94 = CVar(CLng(4)) 'Long
  loc_1419A5A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1419A61: LateIdCallSt
  loc_1419A6C: var_94 = CVar(CLng(4)) 'Long
  loc_1419A71: var_E8 = 0
  loc_1419A7D: LateIdCallSt
  loc_1419A85: var_94 = 0
  loc_1419A91: var_E8 = CVar(CLng(6)) 'Long
  loc_1419A96: var_108 = "Category"
  loc_1419A9F: LateIdCallSt
  loc_1419AAA: var_94 = CVar(CLng(6)) 'Long
  loc_1419AB5: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419ABC: LateIdCallSt
  loc_1419AC7: var_94 = CVar(CLng(6)) 'Long
  loc_1419AD2: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419AD9: LateIdCallSt
  loc_1419AE4: var_94 = CVar(CLng(6)) 'Long
  loc_1419AE9: var_E8 = 0
  loc_1419AF5: LateIdCallSt
  loc_1419AFD: var_94 = 0
  loc_1419B09: var_E8 = CVar(CLng(7)) 'Long
  loc_1419B0E: var_108 = "Tax"
  loc_1419B17: LateIdCallSt
  loc_1419B22: var_94 = CVar(CLng(7)) 'Long
  loc_1419B2D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1419B34: LateIdCallSt
  loc_1419B3F: var_94 = CVar(CLng(7)) 'Long
  loc_1419B4A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1419B51: LateIdCallSt
  loc_1419B5C: var_94 = CVar(CLng(7)) 'Long
  loc_1419B61: var_E8 = 0
  loc_1419B6D: LateIdCallSt
  loc_1419B75: var_94 = 0
  loc_1419B81: var_E8 = CVar(CLng(5)) 'Long
  loc_1419B86: var_108 = "Amount"
  loc_1419B8F: LateIdCallSt
  loc_1419B9A: var_94 = CVar(CLng(5)) 'Long
  loc_1419BA5: var_E8 = CVar(CInt(7)) 'Integer
  loc_1419BAC: LateIdCallSt
  loc_1419BB7: var_94 = CVar(CLng(5)) 'Long
  loc_1419BC2: var_E8 = CVar(CInt(7)) 'Integer
  loc_1419BC9: LateIdCallSt
  loc_1419BD4: var_94 = CVar(CLng(5)) 'Long
  loc_1419BD9: var_E8 = 0
  loc_1419BE5: LateIdCallSt
  loc_1419BED: var_94 = 0
  loc_1419BF9: var_E8 = CVar(CLng(8)) 'Long
  loc_1419BFE: var_108 = "Total"
  loc_1419C07: LateIdCallSt
  loc_1419C12: var_94 = CVar(CLng(8)) 'Long
  loc_1419C1D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1419C24: LateIdCallSt
  loc_1419C2F: var_94 = CVar(CLng(8)) 'Long
  loc_1419C3A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1419C41: LateIdCallSt
  loc_1419C4C: var_94 = CVar(CLng(8)) 'Long
  loc_1419C51: var_E8 = 0
  loc_1419C5D: LateIdCallSt
  loc_1419C68: var_94 = CVar(CLng(9)) 'Long
  loc_1419C6D: var_E8 = 0
  loc_1419C79: LateIdCallSt
  loc_1419C84: var_94 = CVar(CLng(&HA)) 'Long
  loc_1419C89: var_E8 = 0
  loc_1419C95: LateIdCallSt
  loc_1419CA0: var_94 = CVar(CLng(&HB)) 'Long
  loc_1419CA5: var_E8 = 0
  loc_1419CB1: LateIdCallSt
  loc_1419CBB: Set var_C4 = Nothing 
  loc_1419CD2: Me.FGrid1.Cols = 8
  loc_1419CD7: var_94 = 0
  loc_1419CE0: var_E8 = 0
  loc_1419CE9: var_108 = "SNo"
  loc_1419CF2: LateIdCallSt
  loc_1419CFA: var_94 = 0
  loc_1419D09: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419D10: LateIdCallSt
  loc_1419D18: var_94 = 0
  loc_1419D27: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419D2E: LateIdCallSt
  loc_1419D36: var_94 = 0
  loc_1419D3F: var_E8 = &H1C2
  loc_1419D4B: LateIdCallSt
  loc_1419D53: var_94 = 0
  loc_1419D5C: var_E8 = 1
  loc_1419D65: var_108 = "Venue Name"
  loc_1419D6E: LateIdCallSt
  loc_1419D76: var_94 = 1
  loc_1419D85: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419D8C: LateIdCallSt
  loc_1419D94: var_94 = 1
  loc_1419DA3: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419DAA: LateIdCallSt
  loc_1419DB2: var_94 = 1
  loc_1419DBB: var_E8 = &H76C
  loc_1419DC7: LateIdCallSt
  loc_1419DCF: var_94 = 0
  loc_1419DD8: var_E8 = 2
  loc_1419DE1: var_108 = "Date From"
  loc_1419DEA: LateIdCallSt
  loc_1419DF2: var_94 = 2
  loc_1419E01: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419E08: LateIdCallSt
  loc_1419E10: var_94 = 2
  loc_1419E1F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419E26: LateIdCallSt
  loc_1419E2E: var_94 = 2
  loc_1419E37: var_E8 = &H47E
  loc_1419E43: LateIdCallSt
  loc_1419E4B: var_94 = 0
  loc_1419E54: var_E8 = 3
  loc_1419E5D: var_108 = "FromTime"
  loc_1419E66: LateIdCallSt
  loc_1419E6E: var_94 = 3
  loc_1419E7D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419E84: LateIdCallSt
  loc_1419E8C: var_94 = 3
  loc_1419E9B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419EA2: LateIdCallSt
  loc_1419EAA: var_94 = 3
  loc_1419EB3: var_E8 = &H3E8
  loc_1419EBF: LateIdCallSt
  loc_1419EC7: var_94 = 0
  loc_1419ED0: var_E8 = 4
  loc_1419ED9: var_108 = "Date To"
  loc_1419EE2: LateIdCallSt
  loc_1419EEA: var_94 = 4
  loc_1419EF9: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419F00: LateIdCallSt
  loc_1419F08: var_94 = 4
  loc_1419F17: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419F1E: LateIdCallSt
  loc_1419F26: var_94 = 4
  loc_1419F2F: var_E8 = &H47E
  loc_1419F3B: LateIdCallSt
  loc_1419F43: var_94 = 0
  loc_1419F4C: var_E8 = 5
  loc_1419F55: var_108 = "To Time"
  loc_1419F5E: LateIdCallSt
  loc_1419F66: var_94 = 5
  loc_1419F75: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419F7C: LateIdCallSt
  loc_1419F84: var_94 = 5
  loc_1419F93: var_E8 = CVar(CInt(1)) 'Integer
  loc_1419F9A: LateIdCallSt
  loc_1419FA2: var_94 = 5
  loc_1419FAB: var_E8 = &H384
  loc_1419FB7: LateIdCallSt
  loc_1419FBF: var_94 = 6
  loc_1419FC8: var_E8 = 0
  loc_1419FD4: LateIdCallSt
  loc_1419FDC: var_94 = 7
  loc_1419FE5: var_E8 = 0
  loc_1419FF1: LateIdCallSt
  loc_1419FFB: Set var_11C = Nothing 
  loc_1419FFF: Exit Sub
End Sub

Public Sub Proc_129_50_11C72C8
  'Data Table: 518554
  Dim var_90 As Variant
  Dim var_98 As String
  Dim unk_51857C As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Variant
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_E8 As Variant
  Dim var_D8 As MSHFlexGrid
  Dim var_94 As String
  Dim var_168 As Variant
  Dim var_C0 As MSHFlexGrid
  loc_11C6E96: Set var_8C = Me.Txt
  loc_11C6E9C: Call 0.Method_Proc_129_50_11C72C80 (CInt(&H2D), var_90, var_94, "SELECT ItemMast.Name AS ItemName, ItemGrp.Name AS ItemGrpName, ItemGrp.Type AS ItemGrpType, ItemMast.Unit AS UnitName, CatalogMast.*, ItemCatMast.CatType FROM ((CatalogMast LEFT JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code And CatalogMast.RestCode=ItemMast.RestCode) LEFT JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) LEFT JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code WHERE CatalogMast.Code='")
  loc_11C6EA4: var_BC = var_90.Tag
  loc_11C6EAD: var_98 = -1 & var_94
  loc_11C6EBD: unk_51857C.Execute var_98 & "'", var_C0, 
  loc_11C6EC8: Set var_88 = var_C0
  loc_11C6EE0: ' Referenced from: 11C72BB
  loc_11C6EEF: If Not(var_88.EOF) Then
  loc_11C6F0B:   var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11C6F1A:   Me.FGrid.Row = var_AC
  loc_11C6F2D:   Set var_D8 = Me.FGrid
  loc_11C6F43:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C6F4B:   var_148 = CVar(CLng(0)) 'Long
  loc_11C6F69:   var_AC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_11C6F71:   var_E8 = CVar(CLng(0)) 'Long
  loc_11C6F92:   var_168 = CVar(CStr((Val(CStr(var_D8.TextMatrix))) + CDbl(1)))) 'String
  loc_11C6F99:   LateIdCallSt
  loc_11C6FFE:   var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_D8, var_168)) 'String
  loc_11C7005:   LateIdCallSt
  loc_11C7030:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C7038:   var_E8 = CVar(CLng(2)) 'Long
  loc_11C703D:   var_128 = vbNullString
  loc_11C7046:   LateIdCallSt
  loc_11C7067:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C706F:   var_E8 = CVar(CLng(3)) 'Long
  loc_11C7074:   var_128 = "0.00"
  loc_11C707D:   LateIdCallSt
  loc_11C709E:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C70B4:   LateIdCallSt
  loc_11C70E5:   var_AC = "CatType"
  loc_11C710A:   var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_AC)), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_D8, "0.00", CVar(CLng(4)), var_AC)) 'String
  loc_11C7111:   LateIdCallSt
  loc_11C713C:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C7144:   var_E8 = CVar(CLng(7)) 'Long
  loc_11C7149:   var_128 = "0.00"
  loc_11C7152:   LateIdCallSt
  loc_11C7173:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C717B:   var_E8 = CVar(CLng(5)) 'Long
  loc_11C7180:   var_128 = "0.00"
  loc_11C7189:   LateIdCallSt
  loc_11C71AA:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C71C0:   LateIdCallSt
  loc_11C71F1:   var_AC = "ItemCode"
  loc_11C7216:   var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_AC)), CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_D8, "0.00", CVar(CLng(8)), var_AC)) 'String
  loc_11C721D:   LateIdCallSt
  loc_11C727D:   var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("UnitName")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_D8, var_118, var_D8)) 'String
  loc_11C7284:   LateIdCallSt
  loc_11C729C:   var_AC = vbNullString
  loc_11C72AF:   Set var_D8 = Nothing 
  loc_11C72B6:   var_88.MoveNext
  loc_11C72BB:   GoTo loc_11C6EE0
  loc_11C72BE: End If
  loc_11C72C3: Set var_88 = Nothing
  loc_11C72C6: Exit Sub
End Sub

Public Sub Proc_129_51_16B0F40
  'Data Table: 518554
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim unk_51857C As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim var_8C As Recordset15
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_C8 As Variant
  Dim var_168 As Long
  Dim var_18C As Fields15
  loc_16AF5FA: Set var_94 = Me.Txt
  loc_16AF600: Call 0.Method_Proc_129_51_16B0F400 (CInt(1), var_98, var_9C, "SELECT HallBook.*,CatalogMast.Name as CatName FROM HALLBOOK inner Join CatalogMast on HallBook.MenuCatalog=CatalogMast.Code WHERE DOCID='")
  loc_16AF608: var_C4 = var_98.Tag
  loc_16AF611: var_A0 = -1 & var_9C
  loc_16AF621: unk_51857C.Execute var_A0 & "'", var_C8, 
  loc_16AF62C: Set var_88 = var_C8
  loc_16AF658: If (var_88.RecordCount > 0) Then
  loc_16AF691:   Set var_C8 = Me.Txt
  loc_16AF697:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H2D), var_D0)
  loc_16AF69F:   var_D0.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuCatalog")))
  loc_16AF6E9:   Set var_C8 = Me.Txt
  loc_16AF6EF:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H2D), var_D0)
  loc_16AF6F7:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CatName")))
  loc_16AF744:   Set var_C8 = Me.Txt
  loc_16AF74A:   Call 0.Method_Proc_129_51_16B0F400 (CInt(2), var_D0)
  loc_16AF752:   var_D0.Text = CStr(var_88.Fields.Item("VDate").Value)
  loc_16AF79E:   Set var_C8 = Me.Txt
  loc_16AF7A4:   Call 0.Method_Proc_129_51_16B0F400 (CInt(3), var_D0)
  loc_16AF7AC:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PartyName")))
  loc_16AF7F6:   Set var_C8 = Me.Txt
  loc_16AF7FC:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H29), var_D0)
  loc_16AF804:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_16AF84E:   Set var_C8 = Me.Txt
  loc_16AF854:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H2A), var_D0)
  loc_16AF85C:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")))
  loc_16AF8A6:   Set var_C8 = Me.Txt
  loc_16AF8AC:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H2E), var_D0)
  loc_16AF8B4:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("City")))
  loc_16AF8FE:   Set var_C8 = Me.Txt
  loc_16AF904:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H23), var_D0)
  loc_16AF90C:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PinCode")))
  loc_16AF956:   Set var_C8 = Me.Txt
  loc_16AF95C:   Call 0.Method_Proc_129_51_16B0F400 (CInt(4), var_D0)
  loc_16AF964:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ContactNo_Off")))
  loc_16AF9AE:   Set var_C8 = Me.Txt
  loc_16AF9B4:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H2B), var_D0)
  loc_16AF9BC:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ContactNo_Res")))
  loc_16AFA06:   Set var_C8 = Me.Txt
  loc_16AFA0C:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H10), var_D0)
  loc_16AFA14:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MobileNo")))
  loc_16AFA5E:   Set var_C8 = Me.Txt
  loc_16AFA64:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H2C), var_D0)
  loc_16AFA6C:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PanNo")))
  loc_16AFAB6:   Set var_C8 = Me.Txt
  loc_16AFABC:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H14), var_D0)
  loc_16AFAC4:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ExpAtt")))
  loc_16AFB0E:   Set var_C8 = Me.Txt
  loc_16AFB14:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H15), var_D0)
  loc_16AFB1C:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GuarAtt")))
  loc_16AFB66:   Set var_C8 = Me.Txt
  loc_16AFB6C:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H16), var_D0)
  loc_16AFB74:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CoverRate")))
  loc_16AFB9F:   var_98 = var_88.Fields.Item("Func_Name")
  loc_16AFBBE:   Set var_C8 = Me.Txt
  loc_16AFBC4:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H17), var_D0)
  loc_16AFBCC:   var_D0.Tag = Proc_6_38_E69628(CVar(var_98))
  loc_16AFBEE:   Set var_94 = Me.Txt
  loc_16AFBF4:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H17), var_98)
  loc_16AFBFC:   var_9C = var_98.Tag
  loc_16AFC13:   If (var_9C <> vbNullString) Then
  loc_16AFC34:     Set var_94 = Me.Txt
  loc_16AFC3A:     Call 0.Method_Proc_129_51_16B0F400 (CInt(&H17), var_98, var_9C, "Select * from FunctionType where Code='")
  loc_16AFC42:     var_C4 = var_98.Tag
  loc_16AFC4B:     var_A0 = -1 & var_9C
  loc_16AFC5B:     unk_51857C.Execute var_A0 & "'", var_C8, 
  loc_16AFC66:     Set var_8C = var_C8
  loc_16AFC92:     If (var_8C.RecordCount > 0) Then
  loc_16AFCCB:       Set var_C8 = Me.Txt
  loc_16AFCD1:       Call 0.Method_Proc_129_51_16B0F400 (CInt(&H17), var_D0)
  loc_16AFCD9:       var_D0.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")))
  loc_16AFCED:     End If
  loc_16AFCED:   End If
  loc_16AFD23:   Set var_C8 = Me.Txt
  loc_16AFD29:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H18), var_D0)
  loc_16AFD31:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl1")))
  loc_16AFD7B:   Set var_C8 = Me.Txt
  loc_16AFD81:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H19), var_D0)
  loc_16AFD89:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl2")))
  loc_16AFDD3:   Set var_C8 = Me.Txt
  loc_16AFDD9:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H1A), var_D0)
  loc_16AFDE1:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl3")))
  loc_16AFE2B:   Set var_C8 = Me.Txt
  loc_16AFE31:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H1B), var_D0)
  loc_16AFE39:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl4")))
  loc_16AFE83:   Set var_C8 = Me.Txt
  loc_16AFE89:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H2F), var_D0)
  loc_16AFE91:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl5")))
  loc_16AFEDB:   Set var_C8 = Me.Txt
  loc_16AFEE1:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H30), var_D0)
  loc_16AFEE9:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl6")))
  loc_16AFF33:   Set var_C8 = Me.Txt
  loc_16AFF39:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H31), var_D0)
  loc_16AFF41:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MenuSpl7")))
  loc_16AFF8B:   Set var_C8 = Me.Txt
  loc_16AFF91:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H1C), var_D0)
  loc_16AFF99:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("HouseKeep")))
  loc_16AFFE3:   Set var_C8 = Me.Txt
  loc_16AFFE9:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H1D), var_D0)
  loc_16AFFF1:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FrontOff")))
  loc_16B003B:   Set var_C8 = Me.Txt
  loc_16B0041:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H1E), var_D0)
  loc_16B0049:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Engg")))
  loc_16B0093:   Set var_C8 = Me.Txt
  loc_16B0099:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H1F), var_D0)
  loc_16B00A1:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Security")))
  loc_16B00EB:   Set var_C8 = Me.Txt
  loc_16B00F1:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H20), var_D0)
  loc_16B00F9:   var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Chef")))
  loc_16B0124:   var_98 = var_88.Fields.Item("Board")
  loc_16B0135:   var_9C = Proc_6_38_E69628(CVar(var_98))
  loc_16B0143:   Set var_C8 = Me.Txt
  loc_16B0149:   Call 0.Method_Proc_129_51_16B0F400 (CInt(&H21), var_D0)
  loc_16B0151:   var_D0.Text = var_9C
  loc_16B0165: End If
  loc_16B0174: Me.FGrid.Redraw = False
  loc_16B018F: Me.FGrid.Rows = 1
  loc_16B019B: var_8E = CByte(1) 'Byte
  loc_16B01BD: Set var_94 = Me.Txt
  loc_16B01C3: Call 0.Method_Proc_129_51_16B0F400 (CInt(1), var_98, var_9C, "SELECT S.*, I.Name AS ItemName, I.Type,I.Kitchen ,ItemCatMast.CatType FROM (HallBook1 AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RoomNo = I.RestCode) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='")
  loc_16B01CB: var_C4 = var_98.Tag
  loc_16B01D4: var_A0 = -1 & var_9C
  loc_16B01E4: unk_51857C.Execute var_A0 & "'", var_C8, 
  loc_16B01EF: Set var_88 = var_C8
  loc_16B021B: If (var_88.RecordCount > 0) Then
  loc_16B021E:   ' Referenced from: 16B0936
  loc_16B022D:   If Not(var_88.EOF) Then
  loc_16B0230:     var_B4 = vbNullString
  loc_16B023A:     Set var_94 = Me.FGrid
  loc_16B024F:     Set var_E8 = Me.FGrid
  loc_16B0257:     var_E0 = CVar(CLng(var_8E)) 'Long
  loc_16B025F:     var_108 = CVar(CLng(0)) 'Long
  loc_16B028F:     var_128 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16B0296:     LateIdCallSt
  loc_16B02B1:     var_E0 = CVar(CLng(var_8E)) 'Long
  loc_16B02B9:     var_108 = CVar(CLng(9)) 'Long
  loc_16B02E9:     var_128 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_16B02F0:     LateIdCallSt
  loc_16B0337:     If (IsNull(CVar(var_88.Fields.Item("ItemName"))) = &HFF) Then
  loc_16B0374:       var_128 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(1)), CVar(CLng(var_8E)), var_E8, var_128, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_16B037B:       LateIdCallSt
  loc_16B0390:     Else
  loc_16B03CA:       var_128 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_E8, var_128, var_E8)) 'String
  loc_16B03D1:       LateIdCallSt
  loc_16B03E3:     End If
  loc_16B0404:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16B0420:     var_128 = "0.000"
  loc_16B0440:     LateIdCallSt
  loc_16B047C:     Proc_6_39_E7D3A0(var_128, CVar(var_88.Fields.Item("Rate")), var_E8, CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), var_128))), 1, 1, CVar(CLng(3)))
  loc_16B0496:     If (var_128 > 0) Then
  loc_16B04BA:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16B04C2:       var_118 = CVar(CLng(4)) 'Long
  loc_16B04EF:       var_158 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_16B04F6:       LateIdCallSt
  loc_16B050F:     Else
  loc_16B054F:       var_F8 = "' And RestCode='"
  loc_16B057A:       var_158 = var_88.Fields.Item("RestCode").Value
  loc_16B0586:       var_118 = "' And AppDate<="
  loc_16B059A:       Set var_18C = Me.Txt
  loc_16B05A0:       Call 0.Method_Proc_129_51_16B0F400 (CInt(2), var_190, "Select Rate from ItemRate where ItemCode='" & var_88.Fields.Item("Item").Value & var_F8 & var_158 & var_118, var_1D0, -1, var_1D4, var_E8)
  loc_16B05AF:       Proc_6_7_F26918(var_1B0, CVar(var_190), var_158, 1)
  loc_16B05BB:       var_9C = CStr(1 & var_1B0)
  loc_16B05C5:       unk_51857C.Execute var_9C, var_118, var_F8
  loc_16B05D0:       Set var_8C = var_1D4
  loc_16B0610:       If (var_8C.RecordCount > 0) Then
  loc_16B0634:         var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16B063C:         var_118 = CVar(CLng(4)) 'Long
  loc_16B0669:         var_158 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Rate")), "0.00"))) 'String
  loc_16B0670:         LateIdCallSt
  loc_16B0686:       End If
  loc_16B0686:     End If
  loc_16B068B:     var_E0 = CVar(CLng(var_8E)) 'Long
  loc_16B0693:     var_108 = CVar(CLng(6)) 'Long
  loc_16B06C3:     var_128 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_16B06CA:     LateIdCallSt
  loc_16B06E5:     var_E0 = CVar(CLng(var_8E)) 'Long
  loc_16B06ED:     var_108 = CVar(CLng(7)) 'Long
  loc_16B071D:     var_128 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16B0724:     LateIdCallSt
  loc_16B075B:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16B0797:     LateIdCallSt
  loc_16B07E7:     var_128 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(var_8E)), var_E8, CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))), 1, 1)) 'String
  loc_16B07EE:     LateIdCallSt
  loc_16B083A:     var_128 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_E8, var_128, CVar(CLng(5)))) 'String
  loc_16B0841:     LateIdCallSt
  loc_16B0874:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_16B087C:     var_118 = CVar(CLng(8)) 'Long
  loc_16B08B0:     LateIdCallSt
  loc_16B0900:     var_128 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_E8, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_16B0907:     LateIdCallSt
  loc_16B091B:     Set var_E8 = Nothing 
  loc_16B092A:     var_8E = CByte((CInt(var_8E) + 1)) 'Byte
  loc_16B0931:     var_88.MoveNext
  loc_16B0936:     GoTo loc_16B021E
  loc_16B0939:   End If
  loc_16B094C:   Me.FGrid.FixedRows = 1
  loc_16B0954: End If
  loc_16B0962: Me.FGrid.Redraw = True
  loc_16B0973: If (CInt(var_8E) = 1) Then
  loc_16B0989:   Me.FGrid.Rows = 1
  loc_16B0995:   Set var_C8 = Me.FGrid
  loc_16B09AF:   var_C4 = CVar(CStr(Proc_6_127_F25B10(var_C8, CInt(0), var_E8, var_128, var_118))) 'String
  loc_16B09B7:   Set var_98 = Me.FGrid
  loc_16B09E4:   Me.FGrid.FixedRows = 1
  loc_16B09EC: End If
  loc_16B0A0A: Set var_94 = Me.Txt
  loc_16B0A10: Call 0.Method_Proc_129_51_16B0F400 (CInt(1), var_98, var_9C, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_C4, -1, var_C8)
  loc_16B0A18: FGrid.DispID_10000 = var_98.Tag
  loc_16B0A31: unk_51857C.Execute var_C4 & var_9C & "'", var_F8, var_E8
  loc_16B0A3C: Set var_88 = var_C8
  loc_16B0A54: ' Referenced from: 16B0F34
  loc_16B0A63: If Not(var_88.EOF) Then
  loc_16B0A7F:   var_B4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_16B0A8E:   Me.FGrid1.Row = 1
  loc_16B0AC5:   For var_1D8 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8E = var_1D8 'Byte
  loc_16B0AD0:     var_B4 = CVar(CLng(var_8E)) 'Long
  loc_16B0B04:     Set var_98 = Me.Txt
  loc_16B0B0A:     Call 0.Method_Proc_129_51_16B0F400 (CInt(1), var_C8, var_9C, CStr(Me.FGrid1.TextMatrix)), 7)
  loc_16B0B12:     var_B4 = var_C8.Tag
  loc_16B0B39:     var_128 = Me.FGrid1.TextMatrix)
  loc_16B0B96:     If (var_128 And ((CByte(1) = var_9C) = Proc_6_38_E69628(CVar(var_88.Fields.Item("VenueName")), CStr(var_128), 1, CVar(CLng(var_8E))))) Then
  loc_16B0B99:       GoTo loc_16B0F2C
  loc_16B0B9C:     End If
  loc_16B0B9F:   Next var_1D8 'Byte
  loc_16B0BA9:   Set var_200 = Me.FGrid1
  loc_16B0BBF:   var_118 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16B0BC4:   var_168 = 0
  loc_16B0BE6:   var_B4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_16B0BEB:   var_F8 = 0
  loc_16B0C17:   var_158 = CVar(CStr((Val(CStr(Me.FGrid1.TextMatrix))) + CDbl(1)))) 'String
  loc_16B0C1E:   LateIdCallSt
  loc_16B0C86:   var_148 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_200, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))))) 'String
  loc_16B0C8D:   LateIdCallSt
  loc_16B0CEE:   var_148 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B0CF5:   LateIdCallSt
  loc_16B0D56:   var_148 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B0D5D:   LateIdCallSt
  loc_16B0DBE:   var_148 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B0DC5:   LateIdCallSt
  loc_16B0E26:   var_148 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B0E2D:   LateIdCallSt
  loc_16B0E8E:   var_148 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VenuCode")), 6, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B0E95:   LateIdCallSt
  loc_16B0EF6:   var_148 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FPDocId")), 7, CVar(CLng(Me.FGrid1.Row)), var_200, var_148)) 'String
  loc_16B0EFD:   LateIdCallSt
  loc_16B0F15:   var_B4 = vbNullString
  loc_16B0F28:   Set var_200 = Nothing 
  loc_16B0F2C:   ' Referenced from: 16B0B99
  loc_16B0F2F:   var_88.MoveNext
  loc_16B0F34:   GoTo loc_16B0A54
  loc_16B0F37: End If
  loc_16B0F3C: Set var_88 = Nothing
  loc_16B0F3F: Exit Sub
End Sub

Public Sub Proc_129_52_E466D4
  'Data Table: 518554
  loc_E466B0: Set var_88 = Me.TopCtrl1
  loc_E466B6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_E466CF: If (CStr() = "Browse") Then
  loc_E466D2:   Exit Sub
  loc_E466D3: End If
  loc_E466D3: Exit Sub
End Sub

Public Sub Proc_129_53_13CD850(arg_C) '13CD850
  'Data Table: 518554
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_BC As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_178 As String
  Dim var_92 As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_13CCEDC: If (arg_C = 0) Then
  loc_13CCEF2:   var_AC = CLng(Me.FGrid.Col)
  loc_13CCF02:   If (var_AC = CLng(1)) Then
  loc_13CCF25:     var_B2 = Me.EOF
  loc_13CCF53:     Set var_98 = Me.TxtGrid
  loc_13CCF59:     Call 0.Method_Proc_129_53_13CD8500 (arg_C, var_B8, var_BC)
  loc_13CCF61:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_13CCF79:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_13CCF8F:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCF97:       var_EC = CVar(CLng(1)) 'Long
  loc_13CCF9C:       var_10C = vbNullString
  loc_13CCFA6:       Set var_B8 = Me.FGrid
  loc_13CCFAC:       LateIdCallSt
  loc_13CCFD1:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCFD9:       var_EC = CVar(CLng(9)) 'Long
  loc_13CCFDE:       var_10C = vbNullString
  loc_13CCFE8:       Set var_B8 = Me.FGrid
  loc_13CCFEE:       LateIdCallSt
  loc_13CD013:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD01B:       var_EC = CVar(CLng(4)) 'Long
  loc_13CD020:       var_10C = vbNullString
  loc_13CD02A:       Set var_B8 = Me.FGrid
  loc_13CD030:       LateIdCallSt
  loc_13CD055:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD05D:       var_EC = CVar(CLng(&HA)) 'Long
  loc_13CD062:       var_10C = vbNullString
  loc_13CD06C:       Set var_B8 = Me.FGrid
  loc_13CD072:       LateIdCallSt
  loc_13CD097:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD09F:       var_EC = CVar(CLng(6)) 'Long
  loc_13CD0A4:       var_10C = vbNullString
  loc_13CD0AE:       Set var_B8 = Me.FGrid
  loc_13CD0B4:       LateIdCallSt
  loc_13CD0D9:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD0E1:       var_EC = CVar(CLng(&HB)) 'Long
  loc_13CD0E6:       var_10C = vbNullString
  loc_13CD0F0:       Set var_B8 = Me.FGrid
  loc_13CD0F6:       LateIdCallSt
  loc_13CD10B:     Else
  loc_13CD10E:       Call Proc_129_63_FBDBA4(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_13CD119:       If (var_B2 = 0) Then
  loc_13CD121:         Proc_129_53_13CD850 = 0
  loc_13CD127:       End If
  loc_13CD140:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD148:       var_EC = CVar(CLng(9)) 'Long
  loc_13CD162:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_13CD180:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD188:       var_150 = CVar(CLng(9)) 'Long
  loc_13CD1A2:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_13CD20D:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_13CD224:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_13CD240:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD248:         var_FC = CVar(CLng(1)) 'Long
  loc_13CD27B:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13CD283:         Set var_164 = Me.FGrid
  loc_13CD289:         LateIdCallSt
  loc_13CD2B8:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD2C0:         var_FC = CVar(CLng(9)) 'Long
  loc_13CD2F3:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_13CD2FB:         Set var_164 = Me.FGrid
  loc_13CD301:         LateIdCallSt
  loc_13CD35C:         If CBool(Me.Fields.Item("CatType").Value <> "Food") Then
  loc_13CD372:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD37A:           var_FC = CVar(CLng(4)) 'Long
  loc_13CD3AD:           var_140 = CVar(CStr(Me.Fields.Item("IRate").Value)) 'String
  loc_13CD3B5:           Set var_164 = Me.FGrid
  loc_13CD3BB:           LateIdCallSt
  loc_13CD3DA:         Else
  loc_13CD3ED:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD3F5:           var_EC = CVar(CLng(4)) 'Long
  loc_13CD3FA:           var_10C = "0.00"
  loc_13CD404:           Set var_B8 = Me.FGrid
  loc_13CD40A:           LateIdCallSt
  loc_13CD41C:         End If
  loc_13CD420:         var_CC = CVar(CLng(var_92)) 'Long
  loc_13CD432:         var_A8 = CVar(CStr(var_92)) 'String
  loc_13CD43A:         Set var_98 = Me.FGrid
  loc_13CD440:         LateIdCallSt
  loc_13CD471:         var_CC = "Unit"
  loc_13CD480:         var_98 = Me.Fields
  loc_13CD488:         var_B8 = var_98.Item(var_CC)
  loc_13CD499:         var_140 = CVar(Proc_6_38_E69628(CVar(var_B8), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_98, CVar(var_B8), CVar(CLng(0)), var_CC)) 'String
  loc_13CD4A7:         LateIdCallSt
  loc_13CD4DC:         var_EC = CVar(CLng(6)) 'Long
  loc_13CD4EF:         Set var_98 = Me.Txt
  loc_13CD4F5:         Call 0.Method_Proc_129_53_13CD8500 (CInt(1), var_B8, var_BC, var_EC, CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_140)
  loc_13CD4FD:         var_B8 = var_B8.Tag
  loc_13CD505:         var_12C = CVar(var_BC) 'String
  loc_13CD513:         LateIdCallSt
  loc_13CD537:         var_12C = Me.FGrid.Row
  loc_13CD567:         var_B8 = Me.Fields.Item("DepartCode")
  loc_13CD578:         var_140 = CVar(Proc_6_38_E69628(CVar(var_B8), CVar(CLng(&HB)), CVar(CLng(var_12C)), Me.FGrid, var_12C)) 'String
  loc_13CD580:         Set var_164 = Me.FGrid
  loc_13CD586:         LateIdCallSt
  loc_13CD5A0:       End If
  loc_13CD5A0:     End If
  loc_13CD5A0:     Call Proc_129_60_115390C(var_164, var_140, var_10C, var_EC)
  loc_13CD5A8:   Else
  loc_13CD5AF:     If (var_AC = CLng(2)) Then
  loc_13CD5C5:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD5DE:       Set var_98 = Me.TxtGrid
  loc_13CD5E4:       Call 0.Method_Proc_129_53_13CD8500 (0, var_B8, var_BC, CVar(CLng(2)))
  loc_13CD5EC:       var_CC = var_B8.Text
  loc_13CD5F4:       var_12C = CVar(var_BC) 'String
  loc_13CD5FC:       Set var_164 = Me.FGrid
  loc_13CD602:       LateIdCallSt
  loc_13CD61F:     Else
  loc_13CD626:       If (var_AC = CLng(3)) Then
  loc_13CD633:         Set var_98 = Me.TxtGrid
  loc_13CD639:         Call 0.Method_Proc_129_53_13CD8500 (arg_C, var_B8, var_164, var_12C)
  loc_13CD651:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_13CD658:           var_BC = CStr(0)
  loc_13CD665:           Set var_98 = Me.TxtGrid
  loc_13CD66B:           Call 0.Method_Proc_129_53_13CD8500 (arg_C, var_B8, var_BC)
  loc_13CD673:           var_B8.Text = var_CC
  loc_13CD682:         End If
  loc_13CD68F:         Set var_98 = Me.TxtGrid
  loc_13CD695:         Call 0.Method_Proc_129_53_13CD8500 (arg_C, var_B8, var_BC)
  loc_13CD69D:         var_164 = var_B8.Text
  loc_13CD6B5:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD6CD:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13CD707:         LateIdCallSt
  loc_13CD72B:         Call Proc_129_60_115390C(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_13CD733:       Else
  loc_13CD73A:         If (var_AC = CLng(4)) Then
  loc_13CD747:           Set var_98 = Me.TxtGrid
  loc_13CD74D:           Call 0.Method_Proc_129_53_13CD8500 (arg_C, var_B8, var_FC)
  loc_13CD765:           If Not(IsNumeric(CVar(var_B8))) Then
  loc_13CD779:             Set var_98 = Me.TxtGrid
  loc_13CD77F:             Call 0.Method_Proc_129_53_13CD8500 (arg_C, var_B8, CStr(0))
  loc_13CD787:             var_B8.Text = var_DC
  loc_13CD796:           End If
  loc_13CD7A3:           Set var_98 = Me.TxtGrid
  loc_13CD7A9:           Call 0.Method_Proc_129_53_13CD8500 (arg_C, var_B8)
  loc_13CD7C9:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CD7E1:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13CD81B:           LateIdCallSt
  loc_13CD83F:           Call Proc_129_60_115390C(Me.FGrid, CVar(CStr(Format(CVar(var_B8.Text), "0.00"))), 1, 1)
  loc_13CD844:         End If
  loc_13CD844:       End If
  loc_13CD844:     End If
  loc_13CD844:   End If
  loc_13CD844: End If
  loc_13CD849: Proc_129_53_13CD850 = &HFF
End Sub

Public Sub Proc_129_54_1721678
  'Data Table: 518554
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_51857C As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_12C As String
  Dim var_190 As Variant
  Dim var_1D8 As String
  Dim var_1DC As Variant
  Dim var_128 As Variant
  Dim var_1E8 As Recordset15
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_120 As Variant
  loc_171FA88: On Error Goto loc_1721670
  loc_171FAA2: If (Me.RecordCount > 0) Then
  loc_171FAA5:   Call Proc_129_56_100B61C()
  loc_171FB00:   unk_51857C.Execute CStr("Select S.* From HallBook S Where S.Docid='" & Me.Fields.Item("ContraDocId").Value & "'"), var_120, -1
  loc_171FB0B:   Set var_88 = var_124
  loc_171FB5F:   var_124 = var_88.Fields
  loc_171FBC8:   var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_171FC0D:   Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_171FC87:   var_128 = var_88.Fields.Item("U_AE")
  loc_171FCA0:   var_120 = "entdt : "
  loc_171FCE8:   var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128)) = "E"), "Last Update : ", var_120))
  loc_171FCFF:   var_190 = var_88.Fields
  loc_171FD27:   Set var_1DC = Me.LblLDt
  loc_171FD2D:   var_1DC.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(CVar(var_190.Item("U_EntDt")))))
  loc_171FD68:   Set var_1E8 = var_88 
  loc_171FDA8:   Set var_124 = Me.Txt
  loc_171FDAE:   Call 0.Method_Proc_129_54_17216780 (CInt(&H22), var_128)
  loc_171FDB6:   var_128.Text = CStr(Me.Fields.Item("SearchCode").Value)
  loc_171FDE6:   var_AC = var_1E8.Fields.Item("vType")
  loc_171FDEE:   var_BC = var_AC.Value
  loc_171FDF7:   var_100 = CStr(var_BC)
  loc_171FE05:   Set var_124 = Me.Txt
  loc_171FE0B:   Call 0.Method_Proc_129_54_17216780 (CInt(0), var_128)
  loc_171FE13:   var_128.Tag = var_100
  loc_171FE56:   Set var_98 = Me.Txt
  loc_171FE5C:   Call 0.Method_Proc_129_54_17216780 (CInt(0), var_AC, var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1)
  loc_171FE7D:   unk_51857C.Execute var_128 & var_100 & "'", 0, var_190
  loc_171FE8D:    = var_128.Item()
  loc_171FE95:    = var_190.Value
  loc_171FEA4:   global_132 = CStr(var_AC.Tag.Fields)
  loc_171FEF4:   Set var_98 = Me.Txt
  loc_171FEFA:   Call 0.Method_Proc_129_54_17216780 (CInt(0), var_AC, var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1)
  loc_171FF1B:   unk_51857C.Execute var_128 & var_100 & "'", 0, var_190
  loc_171FF2B:    = var_128.Item()
  loc_171FF33:    = var_190.Value
  loc_171FF4A:   Set var_1A4 = Me.Txt
  loc_171FF50:   Call 0.Method_Proc_129_54_17216780 (CInt(0), var_1DC)
  loc_171FF58:   var_1DC.Text = CStr(var_AC.Tag.Fields)
  loc_171FFB9:   Set var_124 = Me.Txt
  loc_171FFBF:   Call 0.Method_Proc_129_54_17216780 (CInt(1), var_128)
  loc_171FFC7:   var_128.Text = CStr(var_1E8.Fields.Item("VNo").Value)
  loc_1720019:   Set var_124 = Me.Txt
  loc_172001F:   Call 0.Method_Proc_129_54_17216780 (CInt(1), var_128)
  loc_1720027:   var_128.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_172008F:   Set var_124 = Me.Txt
  loc_1720095:   Call 0.Method_Proc_129_54_17216780 (CInt(2), var_128, CStr(Format(CVar(var_1E8.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_172009D:   var_128.Text = 1
  loc_17200EF:   Me.LblVPrefix.Caption = CStr(var_1E8.Fields.Item("vPrefix").Value)
  loc_1720137:   global_108 = CStr(var_1E8.Fields.Item("VTIME").Value)
  loc_172017D:   Set var_124 = Me.Txt
  loc_1720183:   Call 0.Method_Proc_129_54_17216780 (CInt(3), var_128)
  loc_172018B:   var_128.Tag = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("PartyName")))
  loc_17201D5:   Set var_124 = Me.Txt
  loc_17201DB:   Call 0.Method_Proc_129_54_17216780 (CInt(&H18), var_128)
  loc_17201E3:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("MenuSpl1")))
  loc_172022D:   Set var_124 = Me.Txt
  loc_1720233:   Call 0.Method_Proc_129_54_17216780 (CInt(&H19), var_128)
  loc_172023B:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("MenuSpl2")))
  loc_1720285:   Set var_124 = Me.Txt
  loc_172028B:   Call 0.Method_Proc_129_54_17216780 (CInt(&H1A), var_128)
  loc_1720293:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("MenuSpl3")))
  loc_17202DD:   Set var_124 = Me.Txt
  loc_17202E3:   Call 0.Method_Proc_129_54_17216780 (CInt(&H1B), var_128)
  loc_17202EB:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("MenuSpl4")))
  loc_1720335:   Set var_124 = Me.Txt
  loc_172033B:   Call 0.Method_Proc_129_54_17216780 (CInt(&H2F), var_128)
  loc_1720343:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("MenuSpl5")))
  loc_172038D:   Set var_124 = Me.Txt
  loc_1720393:   Call 0.Method_Proc_129_54_17216780 (CInt(&H30), var_128)
  loc_172039B:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("MenuSpl6")))
  loc_17203E5:   Set var_124 = Me.Txt
  loc_17203EB:   Call 0.Method_Proc_129_54_17216780 (CInt(&H31), var_128)
  loc_17203F3:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("MenuSpl7")))
  loc_172043D:   Set var_124 = Me.Txt
  loc_1720443:   Call 0.Method_Proc_129_54_17216780 (CInt(3), var_128)
  loc_172044B:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("PartyName")))
  loc_1720495:   Set var_124 = Me.Txt
  loc_172049B:   Call 0.Method_Proc_129_54_17216780 (CInt(&H29), var_128)
  loc_17204A3:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Add1")))
  loc_17204ED:   Set var_124 = Me.Txt
  loc_17204F3:   Call 0.Method_Proc_129_54_17216780 (CInt(&H2A), var_128)
  loc_17204FB:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Add2")))
  loc_1720545:   Set var_124 = Me.Txt
  loc_172054B:   Call 0.Method_Proc_129_54_17216780 (CInt(&H2E), var_128)
  loc_1720553:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("City")))
  loc_172059D:   Set var_124 = Me.Txt
  loc_17205A3:   Call 0.Method_Proc_129_54_17216780 (CInt(&H23), var_128)
  loc_17205AB:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("PinCode")))
  loc_17205F5:   Set var_124 = Me.Txt
  loc_17205FB:   Call 0.Method_Proc_129_54_17216780 (CInt(&H2C), var_128)
  loc_1720603:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("PanNo")))
  loc_172064D:   Set var_124 = Me.Txt
  loc_1720653:   Call 0.Method_Proc_129_54_17216780 (CInt(&H2D), var_128)
  loc_172065B:   var_128.Tag = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("MenuCatalog")))
  loc_1720686:   var_AC = var_1E8.Fields.Item("MenuCatalog")
  loc_172068E:   var_BC = CVar(var_AC) 'Address
  loc_1720697:   var_100 = Proc_6_38_E69628(var_BC)
  loc_17206A8:   If (var_100 <> vbNullString) Then
  loc_17206D8:     Set var_98 = Me.Txt
  loc_17206DE:     Call 0.Method_Proc_129_54_17216780 (CInt(&H2D), var_AC, var_100, "Select Distinct Name  from CatalogMast Where Code='", var_BC, -1)
  loc_17206FF:     unk_51857C.Execute var_128 & var_100 & "'", 0, var_190
  loc_1720707:     var_DC = var_AC.Tag.Fields
  loc_172070F:      = var_128.Item(1)
  loc_1720717:      = var_190.Value
  loc_172072E:     Set var_1A4 = Me.Txt
  loc_1720734:     Call 0.Method_Proc_129_54_17216780 (CInt(&H2D), var_1DC)
  loc_172073C:     var_1DC.Text = CStr(var_DC)
  loc_1720764:   End If
  loc_172079A:   Set var_124 = Me.Txt
  loc_17207A0:   Call 0.Method_Proc_129_54_17216780 (CInt(&H2B), var_128)
  loc_17207A8:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("ContactNo_Res")))
  loc_17207F2:   Set var_124 = Me.Txt
  loc_17207F8:   Call 0.Method_Proc_129_54_17216780 (CInt(4), var_128)
  loc_1720800:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("ContactNo_Res")))
  loc_172084A:   Set var_124 = Me.Txt
  loc_1720850:   Call 0.Method_Proc_129_54_17216780 (CInt(&H10), var_128)
  loc_1720858:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("MobileNo")))
  loc_17208A2:   Set var_124 = Me.Txt
  loc_17208A8:   Call 0.Method_Proc_129_54_17216780 (CInt(&H1C), var_128)
  loc_17208B0:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("HouseKeep")))
  loc_17208FA:   Set var_124 = Me.Txt
  loc_1720900:   Call 0.Method_Proc_129_54_17216780 (CInt(&H1D), var_128)
  loc_1720908:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("FrontOff")))
  loc_1720952:   Set var_124 = Me.Txt
  loc_1720958:   Call 0.Method_Proc_129_54_17216780 (CInt(&H1E), var_128)
  loc_1720960:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Engg")))
  loc_17209AA:   Set var_124 = Me.Txt
  loc_17209B0:   Call 0.Method_Proc_129_54_17216780 (CInt(&H17), var_128)
  loc_17209B8:   var_128.Tag = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Func_Name")))
  loc_1720A08:   var_12C = -1 & Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Func_Name")), "Select * from Functiontype Where Code='", var_DC)
  loc_1720A0F:   var_1D8 = var_128 & Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Func_Name")), "Select * from Functiontype Where Code='", var_DC) & "'"
  loc_1720A18:   unk_51857C.Execute var_1D8, var_124, 
  loc_1720A23:   Set var_8C = var_124
  loc_1720A51:   If (var_8C.RecordCount > 0) Then
  loc_1720A8A:     Set var_124 = Me.Txt
  loc_1720A90:     Call 0.Method_Proc_129_54_17216780 (CInt(&H17), var_128)
  loc_1720A98:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")))
  loc_1720AAC:   End If
  loc_1720AE2:   Set var_124 = Me.Txt
  loc_1720AE8:   Call 0.Method_Proc_129_54_17216780 (CInt(&H1F), var_128)
  loc_1720AF0:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Security")))
  loc_1720B3A:   Set var_124 = Me.Txt
  loc_1720B40:   Call 0.Method_Proc_129_54_17216780 (CInt(&H20), var_128)
  loc_1720B48:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Chef")))
  loc_1720B92:   Set var_124 = Me.Txt
  loc_1720B98:   Call 0.Method_Proc_129_54_17216780 (CInt(&H21), var_128)
  loc_1720BA0:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Board")))
  loc_1720C06:   Set var_124 = Me.Txt
  loc_1720C0C:   Call 0.Method_Proc_129_54_17216780 (CInt(&H14), var_128, CStr(Format(CVar(var_1E8.Fields.Item("ExpAtt")), "0")))
  loc_1720C14:   var_128.Text = 1
  loc_1720C80:   Set var_124 = Me.Txt
  loc_1720C86:   Call 0.Method_Proc_129_54_17216780 (CInt(&H15), var_128, CStr(Format(CVar(var_1E8.Fields.Item("GuarAtt")), "0")))
  loc_1720C8E:   var_128.Text = 1
  loc_1720D00:   Call 0.Method_Proc_129_54_17216780 (CInt(&H16), var_128, CStr(Format(CVar(var_1E8.Fields.Item("CoverRate")), "0.00")), 1)
  loc_1720D08:   var_128.Text = 1
  loc_1720D24:   Set var_1E8 = Nothing 
  loc_1720D2A:   var_8E = 1
  loc_1720D3A:   var_CC = "Select S.*,I.Name as ItemName From HallPreCosting S Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode Where S.DocId='"
  loc_1720D83:   unk_51857C.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_1720D8E:   Set var_88 = Me.Txt
  loc_1720DBC:   If (var_88.RecordCount > 0) Then
  loc_1720DBF:     ' Referenced from: 1721168
  loc_1720DCE:     If Not(var_88.EOF) Then
  loc_1720DD1:       var_A8 = vbNullString
  loc_1720DDB:       Set var_98 = Me.FGrid
  loc_1720DF0:       Set var_1F0 = Me.FGrid
  loc_1720DF7:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1720DFF:       var_110 = CVar(CLng(0)) 'Long
  loc_1720E2F:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1720E36:       LateIdCallSt
  loc_1720E50:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1720E58:       var_110 = CVar(CLng(9)) 'Long
  loc_1720E88:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1720E8F:       LateIdCallSt
  loc_1720EDE:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_1F0, var_DC, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_1720EE5:       LateIdCallSt
  loc_1720F17:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1720F1F:       var_13C = CVar(CLng(3)) 'Long
  loc_1720F4C:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_1720F53:       LateIdCallSt
  loc_1720F89:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1720F91:       var_13C = CVar(CLng(4)) 'Long
  loc_1720FBE:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_1720FC5:       LateIdCallSt
  loc_1720FFB:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_1721003:       var_13C = CVar(CLng(5)) 'Long
  loc_1721030:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1721037:       LateIdCallSt
  loc_1721086:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(6)), CVar(CLng(var_8E)), var_1F0, var_120, 1, 1)) 'String
  loc_172108D:       LateIdCallSt
  loc_17210A3:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_17210AB:       var_110 = CVar(CLng(7)) 'Long
  loc_17210DB:       var_DC = CVar(CStr(var_88.Fields.Item("ContraSNo").Value)) 'String
  loc_17210E2:       LateIdCallSt
  loc_17210FC:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1721104:       var_110 = CVar(CLng(&HB)) 'Long
  loc_1721134:       var_DC = CVar(CStr(var_88.Fields.Item("DepartCode").Value)) 'String
  loc_172113B:       LateIdCallSt
  loc_1721153:       Set var_1F0 = Nothing 
  loc_172115D:       var_8E = (var_8E + 1)
  loc_1721163:       var_88.MoveNext
  loc_1721168:       GoTo loc_1720DBF
  loc_172116B:     End If
  loc_172117E:     Me.FGrid.FixedRows = 1
  loc_1721186:   End If
  loc_1721194:   Me.FGrid.Redraw = True
  loc_17211A2:   If (var_8E = 1) Then
  loc_17211B8:     Me.FGrid.Rows = 1
  loc_17211C4:     Set var_124 = Me.FGrid
  loc_17211DE:     var_BC = CVar(CStr(Proc_6_127_F25B10(var_124, CInt(0), var_8E, var_1F0, var_DC, var_110, var_CC, var_1F0))) 'String
  loc_17211E6:     Set var_AC = Me.FGrid
  loc_1721213:     Me.FGrid.FixedRows = 1
  loc_172121B:   End If
  loc_172122A:   Me.FGrid1.Redraw = False
  loc_1721245:   Me.FGrid1.Rows = 1
  loc_172124F:   var_8E = 1
  loc_1721291:   var_DC = "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & Me.Fields.Item("ContraDocId").Value 
  loc_17212A8:   unk_51857C.Execute CStr(var_DC & "'"), var_120, -1
  loc_17212B3:   Set var_88 = var_124
  loc_17212E1:   If (var_88.RecordCount > 0) Then
  loc_17212E4:     ' Referenced from: 172159F
  loc_17212F3:     If Not(var_88.EOF) Then
  loc_17212F6:       var_A8 = vbNullString
  loc_1721300:       Set var_98 = Me.FGrid1
  loc_172131C:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1721321:       var_EC = 0
  loc_172132F:       var_BC = CVar(CStr(var_8E)) 'String
  loc_1721336:       LateIdCallSt
  loc_1721345:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_172134A:       var_110 = 6
  loc_172137E:       var_DC = CVar(CStr(var_88.Fields.Item("VenuCode").Value)) 'String
  loc_1721385:       LateIdCallSt
  loc_17213D5:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VenuName")), 1, CVar(CLng(var_8E)), Me.FGrid1, var_DC, 1, CVar(CLng(var_8E)))) 'String
  loc_17213DC:       LateIdCallSt
  loc_17213F2:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_17213F7:       var_110 = 2
  loc_172142B:       var_DC = CVar(CStr(var_88.Fields.Item("FromDate").Value)) 'String
  loc_1721432:       LateIdCallSt
  loc_172144C:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1721451:       var_110 = 4
  loc_1721485:       var_DC = CVar(CStr(var_88.Fields.Item("ToDate").Value)) 'String
  loc_172148C:       LateIdCallSt
  loc_17214C2:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_17214C7:       var_13C = 3
  loc_17214F8:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("FromTime")), "HH:MM"))) 'String
  loc_17214FF:       LateIdCallSt
  loc_1721535:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_172153A:       var_13C = 5
  loc_172156B:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("ToTime")), "HH:MM"))) 'String
  loc_1721572:       LateIdCallSt
  loc_172158A:       Set var_1F4 = Nothing 
  loc_1721594:       var_8E = (var_8E + 1)
  loc_172159A:       var_88.MoveNext
  loc_172159F:       GoTo loc_17212E4
  loc_17215A2:     End If
  loc_17215B5:     Me.FGrid1.FixedRows = 1
  loc_17215BD:   End If
  loc_17215CB:   Me.FGrid1.Redraw = True
  loc_17215D9:   If (var_8E = 1) Then
  loc_17215EF:     Me.FGrid1.Rows = 1
  loc_1721615:     var_BC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, CInt(0), var_8E, var_1F4, var_120, 1, 1, var_13C))) 'String
  loc_172161D:     Set var_AC = Me.FGrid1
  loc_172164A:     Me.FGrid1.FixedRows = 1
  loc_1721652:   End If
  loc_1721655: Else
  loc_1721655:   Call Proc_129_56_100B61C(FGrid1.DispID_10000, var_BC, var_EC, var_1F4, var_120)
  loc_172165A: End If
  loc_172165A: Call Proc_129_58_F26D08(1, 1)
  loc_1721664: Set var_88 = Nothing
  loc_172166C: Set var_8C = Nothing
  loc_172166F: Exit Sub
  loc_1721670: ' Referenced from: 171FA88
  loc_1721670: Proc_6_60_E63754(var_13C)
  loc_1721675: Exit Sub
End Sub

Public Sub Proc_129_55_10C3324
  'Data Table: 518554
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim unk_51857C As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_14C As Variant
  loc_10C3061: Set var_9C = Me.TopCtrl1
  loc_10C3067: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(&HFF)
  loc_10C306F: var_B0 = CStr()
  loc_10C3080: If (var_B0 = "Add") Then
  loc_10C30B0:   Set var_9C = Me.Txt
  loc_10C30B6:   Call 0.Method_Proc_129_55_10C33240 (CInt(&H22), var_B4, var_B0, "Select Count(*) From HallBook1 Where DocID='", var_AC, -1)
  loc_10C30D7:   unk_51857C.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_10C30E7:    = var_D4.Item()
  loc_10C30EF:    = var_E8.Value
  loc_10C311C:   If (var_B4.Text.Fields > 0) Then
  loc_10C3125:     Call 0.Method_arg_50 (var_B0)
  loc_10C3146:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_10C315C:     Call Proc_129_61_10E86D8(MemVar_1F95044)
  loc_10C316F:     Set var_9C = Me.Txt
  loc_10C3175:     Call 0.Method_Proc_129_55_10C33240 (CInt(&H22), var_B4)
  loc_10C317D:     var_B4.Text = var_B0
  loc_10C3191:     Proc_129_55_10C3324 = 0
  loc_10C3197:   End If
  loc_10C3197: End If
  loc_10C31BC: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_10C31C6:   var_CC = CVar(CLng(var_88)) 'Long
  loc_10C31CE:   var_108 = CVar(CLng(1)) 'Long
  loc_10C31EE:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_10C320A:   If CBool(var_118 <> vbNullString) Then
  loc_10C3211:     var_CC = CVar(CLng(var_88)) 'Long
  loc_10C3219:     var_108 = CVar(CLng(3)) 'Long
  loc_10C3233:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_10C3244:     var_14C = CVar(CLng(var_88)) 'Long
  loc_10C3284:     If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> "Food")) Then
  loc_10C32AC:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_10C32D2:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_10C32DE:       Set var_9C = Me.FGrid
  loc_10C3302:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_10C330F:       Proc_129_55_10C3324 = 0
  loc_10C3315:     End If
  loc_10C3315:   End If
  loc_10C3318: Next var_12C 'Integer
  loc_10C331D: Proc_129_55_10C3324 = 
End Sub

Public Sub Proc_129_56_100B61C
  'Data Table: 518554
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_100B411: Me.LblVPrefix.Caption = vbNullString
  loc_100B427: Set var_8C = Me.Txt
  loc_100B42D: Call 0.Method_Proc_129_56_100B61CC (var_8E, var_86)
  loc_100B43D: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_100B4CE:   If ((((((((((((((CInt(var_86) <> 5) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &HF)) And (CInt(var_86) <> &H11)) And (CInt(var_86) <> &H12)) And (CInt(var_86) <> &H13)) And (CInt(var_86) <> &H28)) Then
  loc_100B4E1:     Set var_8C = Me.Txt
  loc_100B4E7:     Call 0.Method_Proc_129_56_100B61C0 (CInt(var_86), var_98)
  loc_100B4EF:     var_98.Text = vbNullString
  loc_100B50B:     Set var_8C = Me.Txt
  loc_100B511:     Call 0.Method_Proc_129_56_100B61C0 (CInt(var_86), var_98)
  loc_100B519:     var_98.Tag = vbNullString
  loc_100B525:   End If
  loc_100B528: Next var_92 'Byte
  loc_100B541: Me.FGrid.Rows = 1
  loc_100B567: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_100B56F: Set var_98 = Me.FGrid
  loc_100B59C: Me.FGrid.FixedRows = 1
  loc_100B5B7: Me.FGrid1.Rows = 1
  loc_100B5DB: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_100B5E3: Set var_98 = Me.FGrid1
  loc_100B610: Me.FGrid1.FixedRows = 1
  loc_100B618: Exit Sub
  loc_100B619: DOC
End Sub

Public Sub Proc_129_57_E99AA8(arg_C) 'E99AA8
  'Data Table: 518554
  Dim var_90 As TextBox
  Dim var_8C As Frame
  loc_E99A32: Set var_8C = Me.Txt
  loc_E99A38: Call 0.Method_Proc_129_57_E99AA80 (CInt(1), var_90)
  loc_E99A40: var_90.Enabled = arg_C
  loc_E99A59: Set var_8C = Me.Txt
  loc_E99A5F: Call 0.Method_Proc_129_57_E99AA80 (CInt(&H22), var_90)
  loc_E99A67: var_90.Enabled = False
  loc_E99A8E: If (Me.Frame1.Visible = &HFF) Then
  loc_E99A9D:   Me.Frame1.Visible = False
  loc_E99AA5: End If
  loc_E99AA5: Exit Sub
End Sub

Public Sub Proc_129_58_F26D08
  'Data Table: 518554
  loc_F26C14: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F26C26:   Me.DGVType.Visible = False
  loc_F26C2E: End If
  loc_F26C4A: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F26C5C:   Me.DGHall.Visible = False
  loc_F26C64: End If
  loc_F26C80: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F26C92:   Me.DGItem.Visible = False
  loc_F26C9A: End If
  loc_F26CB6: If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_F26CC8:   Me.DGFPNo.Visible = False
  loc_F26CD0: End If
  loc_F26CEC: If (CBool(Me.DG_Catalog.Visible) = &HFF) Then
  loc_F26CFE:   Me.DG_Catalog.Visible = False
  loc_F26D06: End If
  loc_F26D06: Exit Sub
End Sub

Public Sub Proc_129_59_F0D4A8
  'Data Table: 518554
  loc_F0D3CC: Call Proc_129_58_F26D08()
  loc_F0D3DC: Set var_88 = Me.Txt
  loc_F0D3E2: Call 0.Method_Proc_129_59_F0D4A80 (CInt(2))
  loc_F0D40B: If (Proc_6_27_EA61EC(var_8C, "FP Date") = 0) Then
  loc_F0D40E:   Exit Sub
  loc_F0D40F: End If
  loc_F0D41A: Set var_88 = Me.Txt
  loc_F0D420: Call 0.Method_Proc_129_59_F0D4A80 (CInt(1), var_8C)
  loc_F0D449: If (Proc_6_27_EA61EC(var_8C, "FP No") = 0) Then
  loc_F0D44C:   Exit Sub
  loc_F0D44D: End If
  loc_F0D484: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0D487:   Call TopCtrl1_UnknownEvent_16()
  loc_F0D48F: Else
  loc_F0D495:   Call 0.Method_arg_1E8 (var_88)
  loc_F0D49D:   Call var_88.SetFocus
  loc_F0D4A6: End If
  loc_F0D4A6: Exit Sub
End Sub

Public Sub Proc_129_60_115390C
  'Data Table: 518554
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_115359B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11535A3: var_C8 = CVar(CLng(4)) 'Long
  loc_11535DB: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11535E3: var_134 = CVar(CLng(3)) 'Long
  loc_115361B: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153623: var_1F0 = CVar(CLng(5)) 'Long
  loc_1153654: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_115365C: Set var_224 = Me.FGrid
  loc_1153662: LateIdCallSt
  loc_11536A8: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11536B0: var_C8 = CVar(CLng(6)) 'Long
  loc_11536E8: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_11536FE:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153706:   var_C8 = CVar(CLng(5)) 'Long
  loc_115373E:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153746:   var_134 = CVar(CLng(6)) 'Long
  loc_115377E:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153786:   var_1F0 = CVar(CLng(7)) 'Long
  loc_11537BB:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_11537C3:   Set var_224 = Me.FGrid
  loc_11537C9:   LateIdCallSt
  loc_11537FC: End If
  loc_115380F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153817: var_C8 = CVar(CLng(5)) 'Long
  loc_115384F: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153857: var_134 = CVar(CLng(7)) 'Long
  loc_115388F: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153897: var_1F0 = CVar(CLng(8)) 'Long
  loc_11538B8: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_11538C8: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_11538D0: Set var_224 = Me.FGrid
  loc_11538D6: LateIdCallSt
  loc_1153909: Exit Sub
End Sub

Public Sub Proc_129_61_10E86D8
  'Data Table: 518554
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
  loc_10E8400: var_90 = global_120
  loc_10E8417: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10E8448: Set var_A8 = Me.Txt
  loc_10E844E: Call 0.Method_Proc_129_61_10E86D80 (CInt(6), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E845D: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10E8465: var_EC = -1 & var_CC 
  loc_10E8479: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E8484: Set var_8C = var_134
  loc_10E84C0: If (var_8C.RecordCount > 0) Then
  loc_10E84FF:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E8533:     global_124 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E855E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E8573:     var_CC = (var_AC.Value + 1)
  loc_10E857B:     global_128 = CInt(var_CC)
  loc_10E858C:   End If
  loc_10E858C: End If
  loc_10E85B7: var_BC = Space((5 - Len(var_90)))
  loc_10E85BF: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10E85D3: var_EC = Space((5 - Len(global_124)))
  loc_10E85DB: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E85E8: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_124))
  loc_10E8601: var_14C = Space((8 - Len(CStr(global_128))))
  loc_10E8609: var_15C = (var_130 + var_14C)
  loc_10E8618: var_17C = (var_15C + CVar(CStr(global_128)))
  loc_10E8623: global_104 = CStr(var_17C)
  loc_10E8659: Me.LblVPrefix.Caption = global_124
  loc_10E8672: Set var_A8 = Me.Txt
  loc_10E8678: Call 0.Method_Proc_129_61_10E86D80 (CInt(&H22), var_AC)
  loc_10E8680: var_AC.Text = global_104
  loc_10E86A2: Set var_A8 = Me.Txt
  loc_10E86A8: Call 0.Method_Proc_129_61_10E86D80 (CInt(5), var_AC)
  loc_10E86B0: var_AC.Text = CStr(global_128)
  loc_10E86C5: var_88 = global_104
  loc_10E86CD: Set var_8C = Nothing
  loc_10E86D0: Proc_129_61_10E86D8 = global_128
End Sub

Public Sub Proc_129_62_10BB3B8(arg_C, arg_10, arg_14) '10BB3B8
  'Data Table: 518554
  Dim unk_51857C As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10BB126: If (arg_C = "HSBK") Then
  loc_10BB14D:   unk_51857C.Execute "Select Distinct DocId,V_Type,V_No From HallBook Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10BB158:   Set var_8C = var_C4
  loc_10BB16B:   var_94 = "Hall Booking"
  loc_10BB171: Else
  loc_10BB176:   Proc_129_62_10BB3B8 = &HFF
  loc_10BB17C: End If
  loc_10BB190: If (var_8C.RecordCount > 0) Then
  loc_10BB193:   ' Referenced from: 10BB30C
  loc_10BB1A2:   If Not(var_8C.EOF) Then
  loc_10BB1AD:     If (var_90 = vbNullString) Then
  loc_10BB1F0:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10BB1F7:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10BB229:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10BB24E:     Else
  loc_10BB28A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10BB2AA:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10BB2D7:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10BB2DC:       var_90 = CStr(var_11C)
  loc_10BB304:     End If
  loc_10BB307:     var_8C.MoveNext
  loc_10BB30C:     GoTo loc_10BB193
  loc_10BB30F:   End If
  loc_10BB315:   Call 0.Method_arg_50 (var_138)
  loc_10BB371:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10BB374:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10BB3A3:   Set var_8C = Nothing
  loc_10BB3A6:   Proc_129_62_10BB3B8 = 0
  loc_10BB3AC: End If
  loc_10BB3B1: Proc_129_62_10BB3B8 = &HFF
End Sub

Public Sub Proc_129_63_FBDBA4
  'Data Table: 518554
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBDA27: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBDA2C:   var_92 = 1 'Byte
  loc_FBDA30: End If
  loc_FBDA39: Set var_98 = Me.TxtGrid
  loc_FBDA3F: Call 0.Method_Proc_129_63_FBDBA40 (0, var_B0)
  loc_FBDA62: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBDA96: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBDABA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBDABD:     GoTo loc_FBDB8F
  loc_FBDAC0:   End If
  loc_FBDAC4:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBDAEE:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBDAF8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBDB2D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBDB51:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBDB6A:     Set var_98 = Me.TxtGrid
  loc_FBDB70:     Call 0.Method_Proc_129_63_FBDBA40 (0, var_B0, CVar(CLng(var_92)))
  loc_FBDB78:     var_B0.SetFocus
  loc_FBDB89:     Proc_129_63_FBDBA4 = 0
  loc_FBDB8F:     ' Referenced from: FBDABD
  loc_FBDB8F:   End If
  loc_FBDB92: Next var_D4 'Integer
  loc_FBDB9C: Proc_129_63_FBDBA4 = &HFF
End Sub
