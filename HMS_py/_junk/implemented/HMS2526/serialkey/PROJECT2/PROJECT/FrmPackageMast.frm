VERSION 5.00
Begin VB.Form FrmPackageMast
  Caption = "Package Defination Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = False
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 8595
  ClientHeight = 9705
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 17
    ForeColor = &HC00000&
    Left = 4530
    Top = 1590
    Width = 4380
    Height = 285
    TabIndex = 56
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
    Index = 16
    ForeColor = &HC00000&
    Left = 9960
    Top = 1275
    Width = 1920
    Height = 285
    TabIndex = 3
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8595
    Height = 450
    TabIndex = 54
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HFFC0C0&
    ForeColor = &HFF0000&
    Left = 1830
    Top = 7380
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 48
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
  Begin TextBox Txt
    Index = 15
    ForeColor = &HC00000&
    Left = 9960
    Top = 960
    Width = 1425
    Height = 285
    TabIndex = 1
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
  Begin DataGrid DGRoomCat
    Left = 12510
    Top = 9135
    Width = 3495
    Height = 1980
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
  Begin PictureBox Picture1
    Picture = "FrmPackageMast.frx":0
    ForeColor = &HC00000&
    Left = 13020
    Top = 4155
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 44
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture3
    Picture = "FrmPackageMast.frx":34E
    ForeColor = &HC00000&
    Left = 12615
    Top = 4140
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 43
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin TextBox Txt
    Index = 14
    ForeColor = &HC00000&
    Left = 4530
    Top = 1275
    Width = 4380
    Height = 285
    TabIndex = 2
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 11535
    Top = 1410
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 2415
      Height = 1800
      TabIndex = 41
    End
  End
  Begin TextBox Txt
    Index = 12
    Left = 11130
    Top = 6900
    Width = 1425
    Height = 285
    TabIndex = 38
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 13
    ForeColor = &HC00000&
    Left = 4530
    Top = 3480
    Width = 660
    Height = 285
    Text = "Yes"
    TabIndex = 11
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
    Index = 8
    ForeColor = &HC00000&
    Left = 4530
    Top = 3795
    Width = 1425
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 7
    ForeColor = &HC00000&
    Left = 4530
    Top = 3165
    Width = 3870
    Height = 285
    TabIndex = 10
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
    Index = 6
    ForeColor = &HC00000&
    Left = 4530
    Top = 2850
    Width = 660
    Height = 285
    TabIndex = 9
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
    Index = 11
    ForeColor = &HC00000&
    Left = 8295
    Top = 1905
    Width = 615
    Height = 285
    TabIndex = 6
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
    Index = 10
    ForeColor = &HC00000&
    Left = 6990
    Top = 1905
    Width = 660
    Height = 285
    TabIndex = 5
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
    Index = 9
    ForeColor = &HC00000&
    Left = 4530
    Top = 2220
    Width = 660
    Height = 285
    TabIndex = 7
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
    Index = 5
    ForeColor = &HC00000&
    Left = 4530
    Top = 1905
    Width = 1425
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 4
    ForeColor = &HC00000&
    Left = 7740
    Top = 3795
    Width = 1170
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 3
    ForeColor = &HC00000&
    Left = 4530
    Top = 4110
    Width = 660
    Height = 285
    Text = "Yes"
    TabIndex = 14
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
  Begin CheckBox Check1
    Caption = "Percentage Basis"
    BackColor = &HC0FFFF&
    ForeColor = &HC00000&
    Left = 8925
    Top = 1890
    Width = 2025
    Height = 270
    Visible = 0   'False
    TabIndex = 24
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
    Index = 2
    ForeColor = &HC00000&
    Left = 4530
    Top = 2535
    Width = 1425
    Height = 285
    TabIndex = 8
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
  Begin MSFlexGrid FGPoint
    Left = 16305
    Top = 5070
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGHelp
    Left = 13560
    Top = 7935
    Width = 3495
    Height = 1980
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin DataGrid DGRev
    Left = 14670
    Top = 7680
    Width = 3855
    Height = 1200
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin TextBox Txt
    Index = 1
    Left = 11130
    Top = 7215
    Width = 1425
    Height = 285
    TabIndex = 18
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 2040
    Top = 4500
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 4530
    Top = 960
    Width = 4380
    Height = 285
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid
    Left = 990
    Top = 4500
    Width = 12915
    Height = 2340
    TabIndex = 15
  End
  Begin MSHFlexGrid FGrid1
    Left = 975
    Top = 7140
    Width = 6975
    Height = 1560
    TabIndex = 47
  End
  Begin DataGrid DGTokenRev
    Left = 11400
    Top = 8850
    Width = 3855
    Height = 1575
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGTaxStru
    Left = 9555
    Top = 8175
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 58
  End
  Begin Label Label1
    Caption = "Room Tax Structure"
    Index = 21
    ForeColor = &HC00000&
    Left = 1260
    Top = 1605
    Width = 1905
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
    Caption = "MapCode"
    Index = 20
    ForeColor = &HC00000&
    Left = 9000
    Top = 1290
    Width = 900
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 53
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 14250
    Top = 4560
    Width = 2700
    Height = 255
    TabIndex = 52
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
    Left = 14310
    Top = 5700
    Width = 2970
    Height = 285
    TabIndex = 51
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
  Begin Label Label1
    Caption = "Token Information :"
    Index = 19
    ForeColor = &HC00000&
    Left = 1065
    Top = 6825
    Width = 1860
    Height = 240
    TabIndex = 50
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
    Caption = "Tariff"
    Index = 18
    ForeColor = &HC00000&
    Left = 9360
    Top = 960
    Width = 495
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
    Caption = "Room Category"
    Index = 17
    ForeColor = &HC00000&
    Left = 1260
    Top = 1290
    Width = 1470
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
    Caption = "Net Room Rate"
    Index = 16
    ForeColor = &HC00000&
    Left = 9630
    Top = 6915
    Width = 1425
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
    Caption = "Yes/No"
    Index = 15
    ForeColor = &H80&
    Left = 5205
    Top = 2865
    Width = 645
    Height = 240
    TabIndex = 37
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
    Caption = "Room Tax Inc in Package Amount"
    Index = 14
    ForeColor = &HC00000&
    Left = 1260
    Top = 3495
    Width = 3240
    Height = 285
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
    Caption = "Yes/No"
    Index = 13
    ForeColor = &H80&
    Left = 5190
    Top = 3495
    Width = 645
    Height = 240
    TabIndex = 35
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
    Caption = "Room Rate"
    Index = 12
    ForeColor = &HC00000&
    Left = 1260
    Top = 3810
    Width = 1050
    Height = 240
    TabIndex = 34
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
    Caption = "Discount Applicable On"
    Index = 11
    ForeColor = &HC00000&
    Left = 1260
    Top = 3180
    Width = 2220
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
  End
  Begin Label Label1
    Caption = "Discount Applicable"
    Index = 10
    ForeColor = &HC00000&
    Left = 1260
    Top = 2880
    Width = 1890
    Height = 240
    TabIndex = 32
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
    Caption = "Child"
    Index = 9
    ForeColor = &HC00000&
    Left = 7725
    Top = 1920
    Width = 495
    Height = 240
    TabIndex = 31
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
    Caption = "Adult"
    Index = 8
    ForeColor = &HC00000&
    Left = 6435
    Top = 1920
    Width = 495
    Height = 240
    TabIndex = 30
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
    Caption = "No of Nights"
    Index = 7
    ForeColor = &HC00000&
    Left = 1260
    Top = 2235
    Width = 1140
    Height = 240
    TabIndex = 29
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
    Caption = "PackageAmt"
    Index = 6
    ForeColor = &HC00000&
    Left = 1260
    Top = 1920
    Width = 1200
    Height = 240
    TabIndex = 28
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
    Caption = "Room Percent"
    Index = 5
    ForeColor = &HC00000&
    Left = 6345
    Top = 3810
    Width = 1350
    Height = 240
    TabIndex = 27
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
    Caption = "Yes/No"
    Index = 4
    ForeColor = &H80&
    Left = 5190
    Top = 4125
    Width = 645
    Height = 240
    TabIndex = 26
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
    Caption = "Active"
    Index = 3
    ForeColor = &HC00000&
    Left = 1260
    Top = 4140
    Width = 585
    Height = 240
    TabIndex = 25
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
    Caption = "Applicable Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1260
    Top = 2550
    Width = 1515
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
    Caption = "Total"
    Index = 0
    ForeColor = &HC00000&
    Left = 9645
    Top = 7230
    Width = 480
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
  Begin Label Label1
    Caption = "Package Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1260
    Top = 975
    Width = 1440
    Height = 240
    TabIndex = 17
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

Attribute VB_Name = "FrmPackageMast"

Private MasterFormExit As Integer
Private global_92 As Integer
Private global_94 As Integer

Private Sub DGTokenRev_UnknownEvent_9 'F51EB8
  'Data Table: 506780
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F51DB3: If (Me.RecordCount > 0) Then
  loc_F51DD9:   If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_F51DF9:     var_B4 = Me.Fields.Item("Name")
  loc_F51E16:     Set var_B8 = Me.TxtGrid
  loc_F51E1C:     Call 0.Method_DGTokenRev_UnknownEvent_90 (1, var_BC)
  loc_F51E24:     var_BC.Text = CStr(var_B4.Value)
  loc_F51E3A:   End If
  loc_F51E3A: End If
  loc_F51E47: Call Proc_150_68_195468C(1, 0)
  loc_F51E58: Set var_8C = Me.TxtGrid
  loc_F51E5E: Call 0.Method_DGTokenRev_UnknownEvent_90 (1, var_B4, var_C2)
  loc_F51E66: var_C6 = var_B4.Visible
  loc_F51E78: If (var_C2 = &HFF) Then
  loc_F51E84:   Set var_8C = Me.TxtGrid
  loc_F51E8A:   Call 0.Method_DGTokenRev_UnknownEvent_90 (1, var_B4)
  loc_F51E92:   var_B4.SetFocus
  loc_F51E9E: End If
  loc_F51EAD: Me.DGTokenRev.Visible = False
  loc_F51EB5: Exit Sub
End Sub

Private Sub DGTokenRev_UnknownEvent_1F 'E598A4
  'Data Table: 506780
  loc_E59877: Set var_90 = Me.FGPoint
  loc_E59893: Proc_6_138_106E830(Me.DGTokenRev, global_64)
  loc_E598A1: Exit Sub
End Sub

Private Sub DGRoomCat_UnknownEvent_9 'F464F4
  'Data Table: 506780
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F463EB: Me.DGRoomCat.Visible = False
  loc_F4640A: If (Me.RecordCount > 0) Then
  loc_F46449:   Set var_B4 = Me.Txt
  loc_F4644F:   Call 0.Method_DGRoomCat_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F46457:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4648A:   var_B0 = Me.Fields.Item("Name")
  loc_F464A9:   Set var_B4 = Me.Txt
  loc_F464AF:   Call 0.Method_DGRoomCat_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F464B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F464CD: End If
  loc_F464D8: Set var_A8 = Me.Txt
  loc_F464DE: Call 0.Method_DGRoomCat_UnknownEvent_90 (CInt(&HE))
  loc_F464E6: var_B0.SetFocus
  loc_F464F2: Exit Sub
  loc_F464F3: Result var_B0 End Sub 'Currency
End Sub

Private Sub Form_Load() '13236DC
  'Data Table: 506780
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_AC As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  Dim var_194 As String
  Dim var_D0 As Variant
  Dim unk_5067A8 As Connection15
  loc_1322F60: On Error Goto loc_13236D5
  loc_1322F6D: Set var_A8 = Me.TopCtrl1
  loc_1322F73: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1322F82: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1322F9A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1322FB5: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1322FCC: Me.LblUser.Left = CDbl(13500)
  loc_1322FE3: Me.LblUser.Top = CDbl(7800)
  loc_1322FFA: Me.LblLDt.Top = CDbl(8160)
  loc_132300B: Set var_A8 = Me.LblLDt
  loc_1323011: var_A8.Left = CDbl(13500)
  loc_1323022: Call 0.Method_arg_160 (var_A8)
  loc_1323030: Call 0.Method_arg_164 (var_A8)
  loc_1323046: Set var_A8 = Me.PictShortCuts
  loc_132304C: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_132306B: Me.DGHelp.Left = CVar(MDIForm1.PictShortCuts.Left)
  loc_1323087: Set var_B4 = Me.Txt
  loc_132308D: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_13230A8: Set var_A8 = Me.Txt
  loc_13230AE: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_13230C6: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13230D5: Me.DGHelp.Top = CVar(MDIForm1.PictShortCuts.Left)
  loc_13230F5: Set var_A8 = Me.Txt
  loc_13230FB: Call 0.Method_Form_Load0 (CInt(&HE), var_AC)
  loc_132311A: Me.DGRoomCat.Left = CVar(var_AC.Left)
  loc_1323136: Set var_B4 = Me.Txt
  loc_132313C: Call 0.Method_Form_Load0 (CInt(&HE), var_B8)
  loc_1323157: Set var_A8 = Me.Txt
  loc_132315D: Call 0.Method_Form_Load0 (CInt(&HE), var_AC)
  loc_1323175: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1323184: Me.DGRoomCat.Top = CVar(var_AC.Left)
  loc_13231A4: Set var_A8 = Me.Txt
  loc_13231AA: Call 0.Method_Form_Load0 (CInt(&H11), var_AC)
  loc_13231C9: Me.DGTaxStru.Left = CVar(var_AC.Left)
  loc_13231E5: Set var_B4 = Me.Txt
  loc_13231EB: Call 0.Method_Form_Load0 (CInt(&H11), var_B8)
  loc_1323206: Set var_A8 = Me.Txt
  loc_132320C: Call 0.Method_Form_Load0 (CInt(&H11), var_AC)
  loc_1323224: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1323233: Me.DGTaxStru.Top = CVar(var_AC.Left)
  loc_1323258: Me.DGRev.Left = CVar(CDbl(3720))
  loc_132326D: Set var_A8 = Me.DGRev
  loc_1323273: var_A8.Top = CVar(CDbl(1185))
  loc_132327B: Call Proc_150_65_13922A4()
  loc_1323280: Call Proc_150_66_102C454()
  loc_132328F: Set global_72 = New 
  loc_13232A1: Me.var_A8.CursorLocation = 3
  loc_13232FB: var_140 = "Select *,Code as SearchCode From PlanMast where Plan_Package = '" & IIf((global_56 = "Plan"), "Plan", "Package") & "' AND (LOGSITE_CODE='" 
  loc_1323319: Me.Open var_140 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') Order by Name", CVar(MemVar_1F95044), 3
  loc_132333B: Set global_64 = New 
  loc_132334D: Me.Recordset15.CursorLocation = 3
  loc_1323370: var_194 = "Select Code,Name,Sname,Revcode,TaxInc,Taxstru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild From FixedCharge WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_1323381: Me.Open CVar(var_194 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F95044), 3
  loc_1323395: CVarUnk
  loc_132339A: VerifyVarObj
  loc_13233A0: Set var_A8 = Me.DGRev
  loc_13233A6: LateIdStAd
  loc_13233BE: Set global_68 = New 
  loc_13233D0: Me.DGRev.CursorLocation = 3
  loc_13233F3: var_194 = "Select Code,Name,Sname,Revcode,TaxInc,Taxstru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild From FixedCharge WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_1323404: Me.Open CVar(var_194 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F95044), 3
  loc_1323418: CVarUnk
  loc_132341D: VerifyVarObj
  loc_1323423: Set var_A8 = Me.DGTokenRev
  loc_1323429: LateIdStAd
  loc_1323453: Me.DGTokenRev.CursorLocation = 3
  loc_132347D: var_D0 = CVar("Select Code,Name From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_132349B: CVarUnk
  loc_13234A0: VerifyVarObj
  loc_13234AC: LateIdStAd
  loc_13234D5: Set global_80 = New 
  loc_13234E7: Me.DGRoomCat.CursorLocation = 3
  loc_1323510: unk_5067A8.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D0, -1
  loc_132353F: CVarUnk
  loc_1323544: VerifyVarObj
  loc_132354A: Set var_A8 = Me.DGTaxStru
  loc_1323550: LateIdStAd
  loc_1323569: Me.CursorLocation = 3
  loc_13235C3: var_140 = "Select Code,Name From PlanMast where Plan_Package='" & IIf((global_56 = "Plan"), "Plan", "Package") & " ' AND (LOGSITE_CODE='" 
  loc_13235E1: r_D0, CVar(MemVar_1F95044), 3 var_140 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') Order by Name", CVar(MemVar_1F95044), 3
  loc_1323602: CVarUnk
  loc_1323607: VerifyVarObj
  loc_132360D: Set var_A8 = Me.DGHelp
  loc_1323613: LateIdStAd
  loc_132362C: If (global_56 = "Plan") Then
  loc_132363B:   Set var_A8 = Me.Label1
  loc_1323641:   Call 0.Method_Form_Load0 (1, var_AC, "Plan Name", var_A8, New, 1, -1)
  loc_1323649:   var_AC.Caption = var_A8
  loc_1323661:   Set var_A8 = Me.Label1
  loc_1323667:   Call 0.Method_Form_Load0 (6, var_AC, "Plan Amount", Me.DGRoomCat, var_A8)
  loc_132366F:   var_AC.Caption = var_A8
  loc_1323687:   Set var_A8 = Me.Label1
  loc_132368D:   Call 0.Method_Form_Load0 (&HE, var_AC, "Room Tax Inc in Plan Amount")
  loc_1323695:   var_AC.Caption = New
  loc_13236A1: End If
  loc_13236C4: Call Proc_150_63_EB2D10(Proc_5_1_100EC1C("INI", Me, global_72), 1)
  loc_13236CF: Call Proc_150_67_16C6390(-1)
  loc_13236D4: Exit Sub
  loc_13236D5: ' Referenced from: 1322F60
  loc_13236D5: Proc_6_60_E63754()
  loc_13236DA: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8C58
  'Data Table: 506780
  Dim var_8C As Label
  loc_ED8BB6: Call 0.Method_arg_50 (var_88)
  loc_ED8BC8: Me.LblFormCaption.Caption = var_88
  loc_ED8BE1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED8BED: Set var_A0 = Me.TopCtrl1
  loc_ED8BF3: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8C00: Set var_8C = Me.TopCtrl1
  loc_ED8C06: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8C20: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED8C3B: Call 0.Method_arg_100 (var_B8)
  loc_ED8C4D: Me.LblFormCaption.Width = var_B8
  loc_ED8C55: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E68534
  'Data Table: 506780
  loc_E684EB: Set global_72 = Nothing
  loc_E684FD: Set global_60 = Nothing
  loc_E6850F: Set global_64 = Nothing
  loc_E68521: Set global_68 = Nothing
  loc_E6852D: MasterFormExit = 0
  loc_E68530: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5B524
  'Data Table: 506780
  loc_E5B4EC: Set var_88 = Me.TopCtrl1
  loc_E5B4F2: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5B515: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5B51D:   Call Form_Unload(&HFF)
  loc_E5B522: End If
  loc_E5B522: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2FCA8
  'Data Table: 506780
  loc_E2FC7C: On Error Goto loc_E2FCA0
  loc_E2FC97: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2FC9F: Exit Sub
  loc_E2FCA0: ' Referenced from: E2FC7C
  loc_E2FCA0: Proc_6_60_E63754(Shift)
  loc_E2FCA5: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F443F4
  'Data Table: 506780
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F442EB: Me.DGHelp.Visible = False
  loc_F4430A: If (Me.RecordCount > 0) Then
  loc_F44349:   Set var_B4 = Me.Txt
  loc_F4434F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44357:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4438A:   var_B0 = Me.Fields.Item("Name")
  loc_F443A9:   Set var_B4 = Me.Txt
  loc_F443AF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F443B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F443CD: End If
  loc_F443D8: Set var_A8 = Me.Txt
  loc_F443DE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F443E6: var_B0.SetFocus
  loc_F443F2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E59A74
  'Data Table: 506780
  loc_E59A47: Set var_90 = Me.FGPoint
  loc_E59A63: Proc_6_138_106E830(Me.DGHelp, global_60)
  loc_E59A71: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA7FCC
  'Data Table: 506780
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA7F67: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_104)) Then
  loc_EA7F7D:   Me.FGrid.Col = 1
  loc_EA7F85: End If
  loc_EA7F98: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA7FAB: Set var_88 = Me.TxtGrid
  loc_EA7FB1: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA7FB9: var_BC.Visible = False
  loc_EA7FC5: Call Proc_150_61_F205D4()
  loc_EA7FCA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F770
  'Data Table: 506780
  loc_E1F767: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F76F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6CF2C
  'Data Table: 506780
  Dim var_8C As TextBox
  loc_E6CEE7: Set var_88 = Me.TxtGrid
  loc_E6CEED: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E6CEF5: var_8C.Visible = False
  loc_E6CF05: Set var_88 = Me.TopCtrl1
  loc_E6CF0B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E6CF24: If (CStr() = "Browse") Then
  loc_E6CF27:   Exit Sub
  loc_E6CF28: End If
  loc_E6CF28: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '12E412C
  'Data Table: 506780
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_12E3A64: On Error Goto loc_12E4124
  loc_12E3A6B: Set var_88 = Me.TopCtrl1
  loc_12E3A71: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12E3A8A: If (CStr() = "Browse") Then
  loc_12E3A8D:   Exit Sub
  loc_12E3A8E: End If
  loc_12E3B02: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_12E3B18:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12E3B28:   var_9C = "+{Tab}"
  loc_12E3B2E:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_12E3B38:   KeyCode = 0
  loc_12E3B3E: Else
  loc_12E3B48:   var_B0 = Me.FGrid.Rows
  loc_12E3B95:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12E3BAB:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12E3BB8:     Call Proc_150_64_ED6E50(0, var_B0, KeyCode)
  loc_12E3BBD:   End If
  loc_12E3BBD: End If
  loc_12E3BC3: global_92 = KeyCode
  loc_12E3BE9: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12E3C0D: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_12E3C23:   var_EC = CLng(Me.FGrid.Col)
  loc_12E3C33:   If (var_EC = CLng(1)) Then
  loc_12E3C49:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3C51:     var_FC = CVar(CLng(1)) 'Long
  loc_12E3C56:     var_11C = vbNullString
  loc_12E3C60:     Set var_A0 = Me.FGrid
  loc_12E3C66:     LateIdCallSt
  loc_12E3C8B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3C93:     var_FC = CVar(CLng(2)) 'Long
  loc_12E3C98:     var_11C = vbNullString
  loc_12E3CA2:     Set var_A0 = Me.FGrid
  loc_12E3CA8:     LateIdCallSt
  loc_12E3CCD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3CD5:     var_FC = CVar(CLng(3)) 'Long
  loc_12E3CDA:     var_11C = vbNullString
  loc_12E3CE4:     Set var_A0 = Me.FGrid
  loc_12E3CEA:     LateIdCallSt
  loc_12E3D0F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3D17:     var_FC = CVar(CLng(7)) 'Long
  loc_12E3D1C:     var_11C = vbNullString
  loc_12E3D26:     Set var_A0 = Me.FGrid
  loc_12E3D2C:     LateIdCallSt
  loc_12E3D51:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3D59:     var_FC = CVar(CLng(8)) 'Long
  loc_12E3D5E:     var_11C = vbNullString
  loc_12E3D68:     Set var_A0 = Me.FGrid
  loc_12E3D6E:     LateIdCallSt
  loc_12E3D93:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3D9B:     var_FC = CVar(CLng(9)) 'Long
  loc_12E3DA0:     var_11C = vbNullString
  loc_12E3DAA:     Set var_A0 = Me.FGrid
  loc_12E3DB0:     LateIdCallSt
  loc_12E3DD5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3DDD:     var_FC = CVar(CLng(&HA)) 'Long
  loc_12E3DE2:     var_11C = vbNullString
  loc_12E3DEC:     Set var_A0 = Me.FGrid
  loc_12E3DF2:     LateIdCallSt
  loc_12E3E17:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3E1F:     var_FC = CVar(CLng(&HF)) 'Long
  loc_12E3E24:     var_11C = vbNullString
  loc_12E3E2E:     Set var_A0 = Me.FGrid
  loc_12E3E34:     LateIdCallSt
  loc_12E3E59:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3E61:     var_FC = CVar(CLng(4)) 'Long
  loc_12E3E66:     var_11C = vbNullString
  loc_12E3E70:     Set var_A0 = Me.FGrid
  loc_12E3E76:     LateIdCallSt
  loc_12E3E9B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3EA3:     var_FC = CVar(CLng(&HC)) 'Long
  loc_12E3EA8:     var_11C = vbNullString
  loc_12E3EB2:     Set var_A0 = Me.FGrid
  loc_12E3EB8:     LateIdCallSt
  loc_12E3EDD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3EE5:     var_FC = CVar(CLng(&HD)) 'Long
  loc_12E3EEA:     var_11C = vbNullString
  loc_12E3EF4:     Set var_A0 = Me.FGrid
  loc_12E3EFA:     LateIdCallSt
  loc_12E3F1F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3F27:     var_FC = CVar(CLng(&HE)) 'Long
  loc_12E3F2C:     var_11C = vbNullString
  loc_12E3F36:     Set var_A0 = Me.FGrid
  loc_12E3F3C:     LateIdCallSt
  loc_12E3F61:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3F69:     var_FC = CVar(CLng(5)) 'Long
  loc_12E3F6E:     var_11C = vbNullString
  loc_12E3F78:     Set var_A0 = Me.FGrid
  loc_12E3F7E:     LateIdCallSt
  loc_12E3FA3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3FAB:     var_FC = CVar(CLng(6)) 'Long
  loc_12E3FB0:     var_11C = vbNullString
  loc_12E3FBA:     Set var_A0 = Me.FGrid
  loc_12E3FC0:     LateIdCallSt
  loc_12E3FE5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E3FED:     var_FC = CVar(CLng(&H12)) 'Long
  loc_12E3FF2:     var_11C = vbNullString
  loc_12E3FFC:     Set var_A0 = Me.FGrid
  loc_12E4002:     LateIdCallSt
  loc_12E4017:   Else
  loc_12E401E:     If (var_EC = CLng(7)) Then
  loc_12E402B:       var_98 = Me.FGrid.Row
  loc_12E403D:       Set var_A0 = Me.FGrid
  loc_12E4061:       LateIdCallSt
  loc_12E407C:       Call Proc_150_70_101F6D4(var_98, Me.FGrid, "0.00", CVar(CLng(var_A0.Col)), CVar(CLng(var_98)), var_A0, "0.00", CVar(CLng(var_A0.Col)))
  loc_12E4087:     Else
  loc_12E408E:       If Not (var_EC = CLng(5)) Then
  loc_12E4098:         If (var_EC = CLng(6)) Then
  loc_12E409B:         End If
  loc_12E409E:       Else
  loc_12E40A5:         If (var_EC = CLng(&H10)) Then
  loc_12E40A8:           GoTo loc_12E410D
  loc_12E40AB:         End If
  loc_12E40B2:         If (var_EC = CLng(&HB)) Then
  loc_12E40C8:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E40E0:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12E40E5:           var_11C = "0"
  loc_12E40EF:           Set var_B4 = Me.FGrid
  loc_12E40F5:           LateIdCallSt
  loc_12E410D:           ' Referenced from:       12E40A8
  loc_12E410D:         End If
  loc_12E410D:       End If
  loc_12E410D:     End If
  loc_12E410D:   End If
  loc_12E410D: End If
  loc_12E4113: If (KeyCode = &HD) Then
  loc_12E411B:   global_94 = 0
  loc_12E411E: End If
  loc_12E4120: KeyCode = 0
  loc_12E4123: Exit Sub
  loc_12E4124: ' Referenced from: 12E3A64
  loc_12E4124: Proc_6_60_E63754(KeyCode, global_94, var_B4, var_11C, var_FC, var_D4, var_D4)
  loc_12E4129: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F0C318
  'Data Table: 506780
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F0C238: On Error Goto loc_F0C30F
  loc_F0C23F: Set var_88 = Me.TopCtrl1
  loc_F0C245: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F0C25E: If (CStr() = "Browse") Then
  loc_F0C261:   Exit Sub
  loc_F0C262: End If
  loc_F0C275: var_A0 = CLng(Me.FGrid.Col)
  loc_F0C285: If Not (var_A0 = CLng(1)) Then
  loc_F0C28F:   If Not (var_A0 = CLng(7)) Then
  loc_F0C299:     If Not (var_A0 = CLng(&HF)) Then
  loc_F0C2A3:       If Not (var_A0 = CLng(&H12)) Then
  loc_F0C2AD:         If (var_A0 = CLng(&H13)) Then
  loc_F0C2B0:         End If
  loc_F0C2B0:       End If
  loc_F0C2B0:     End If
  loc_F0C2B0:   End If
  loc_F0C2C8:   var_9C = 0
  loc_F0C2F1:   Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0C306: End If
  loc_F0C30B: global_94 = 0
  loc_F0C30E: Exit Sub
  loc_F0C30F: ' Referenced from: F0C238
  loc_F0C30F: Proc_6_60_E63754(global_94, var_9C)
  loc_F0C314: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '109B108
  'Data Table: 506780
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_109AE50: On Error Goto loc_109B0FF
  loc_109AE57: Set var_88 = Me.TopCtrl1
  loc_109AE5D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_109AE76: If (CStr() = "Browse") Then
  loc_109AE79:   Exit Sub
  loc_109AE7A: End If
  loc_109AE8D: var_A0 = CLng(Me.FGrid.Col)
  loc_109AE9D: If (var_A0 = CLng(1)) Then
  loc_109AEDE:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_109AEF3: Else
  loc_109AEFA:   If (var_A0 = CLng(7)) Then
  loc_109AF3B:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode)
  loc_109AF50:   Else
  loc_109AF57:     If (var_A0 = CLng(5)) Then
  loc_109AF98:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode)
  loc_109AFAD:     Else
  loc_109AFB4:       If Not (var_A0 = CLng(6)) Then
  loc_109AFBE:         If (var_A0 = CLng(7)) Then
  loc_109AFC1:         End If
  loc_109AFFF:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode, 0)
  loc_109B014:       Else
  loc_109B01B:         If Not (var_A0 = CLng(&H10)) Then
  loc_109B025:           If Not (var_A0 = CLng(&H12)) Then
  loc_109B02F:             If Not (var_A0 = CLng(8)) Then
  loc_109B039:               If (var_A0 = CLng(&HF)) Then
  loc_109B03C:               End If
  loc_109B03C:             End If
  loc_109B03C:           End If
  loc_109B07A:           Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_109B08F:         Else
  loc_109B096:           If (var_A0 = CLng(&HB)) Then
  loc_109B0D7:             Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode, 0)
  loc_109B0E9:           End If
  loc_109B0E9:         End If
  loc_109B0E9:       End If
  loc_109B0E9:     End If
  loc_109B0E9:   End If
  loc_109B0E9: End If
  loc_109B0F3: If (CLng(KeyCode) <> &HD) Then
  loc_109B0FB:   global_94 = &HFF
  loc_109B0FE: End If
  loc_109B0FE: Exit Sub
  loc_109B0FF: ' Referenced from: 109AE50
  loc_109B0FF: Proc_6_60_E63754(global_94, 0, 0, 0)
  loc_109B104: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FEBF04
  'Data Table: 506780
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FEBD24: On Error Goto loc_FEBEFC
  loc_FEBD2B: Set var_8C = Me.TopCtrl1
  loc_FEBD31: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FEBD4A: If (CStr() = "Browse") Then
  loc_FEBD4D:   Exit Sub
  loc_FEBD4E: End If
  loc_FEBD6B: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FEBD6E:   Exit Sub
  loc_FEBD6F: End If
  loc_FEBD80: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FEBDA2:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FEBDDC:     If (MsgBox("Delete for Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FEBDFE:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FEBE14:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEBE1D:         Set var_114 = Me.FGrid
  loc_FEBE38:       Else
  loc_FEBE4B:         Me.FGrid.Rows = 1
  loc_FEBE68:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FEBE70:         Set var_114 = Me.FGrid
  loc_FEBE9F:         Me.FGrid.FixedRows = 1
  loc_FEBEA7:       End If
  loc_FEBEA7:     End If
  loc_FEBEAA:   Else
  loc_FEBEB5:     var_D0 = "Delete Module"
  loc_FEBEC5:     var_9C = "No Entries To Delete"
  loc_FEBECB:     MsgBox(var_9C, &H10, var_D0, var_F0, var_110)
  loc_FEBEDB:   End If
  loc_FEBEDE:   Call Proc_150_70_101F6D4(var_9C, FGrid.DispID_10000, var_D0)
  loc_FEBEEA:   Set var_8C = Me.FGrid
  loc_FEBEFB: End If
  loc_FEBEFB: Exit Sub
  loc_FEBEFC: ' Referenced from: FEBD24
  loc_FEBEFC: Proc_6_60_E63754(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_FEBF01: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F720
  'Data Table: 506780
  loc_E1F717: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F71F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40468
  'Data Table: 506780
  Dim var_8C As TextBox
  loc_E40447: Set var_88 = Me.TxtGrid
  loc_E4044D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40455: var_8C.Visible = False
  loc_E40461: Call Proc_150_61_F205D4()
  loc_E40466: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E870D8
  'Data Table: 506780
  loc_E87084: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E87087:   Call DGHelp_UnknownEvent_9()
  loc_E8708C: End If
  loc_E870A8: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E870AB:   Call DGRev_UnknownEvent_9()
  loc_E870B0: End If
  loc_E870CC: If (CBool(Me.DGTokenRev.Visible) = &HFF) Then
  loc_E870CF:   Call DGTokenRev_UnknownEvent_9()
  loc_E870D4: End If
  loc_E870D4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA96DC
  'Data Table: 506780
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EA9650: On Error Goto loc_EA96D6
  loc_EA9660: Me.LblUser.Caption = vbNullString
  loc_EA9675: Me.LblLDt.Caption = vbNullString
  loc_EA96A0: Call Proc_150_63_EB2D10(Proc_5_1_100EC1C("ADD", Me))
  loc_EA96AB: Call Proc_150_62_FD98FC(global_72)
  loc_EA96BB: Set var_88 = Me.Txt
  loc_EA96C1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA96C9: var_94.SetFocus
  loc_EA96D5: Exit Sub
  loc_EA96D6: ' Referenced from: EA9650
  loc_EA96D6: Proc_6_60_E63754(var_94)
  loc_EA96DB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC1A5C
  'Data Table: 506780
  loc_EC19C4: On Error Goto loc_EC1A54
  loc_EC19FE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC1A01:   Call Proc_150_61_F205D4()
  loc_EC1A12:   Set var_10C = Me
  loc_EC1A29:   Call Proc_150_63_EB2D10(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC1A34:   Call Proc_150_67_16C6390(global_72)
  loc_EC1A3C: Else
  loc_EC1A42:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC1A4A:   Call var_10C.SetFocus
  loc_EC1A53: End If
  loc_EC1A53: Exit Sub
  loc_EC1A54: ' Referenced from: EC19C4
  loc_EC1A54: Proc_6_60_E63754()
  loc_EC1A59: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11C6DF4
  'Data Table: 506780
  Dim var_98 As Integer
  Dim unk_5067A8 As Connection15
  Dim Me As Recordset15
  Dim var_128 As Fields15
  Dim var_100 As Variant
  Dim var_130 As String
  loc_11C69C8: On Error Goto loc_11C6D9D
  loc_11C69D9: If (Proc_183_56_FE8B08(global_72) = &HFF) Then
  loc_11C69DC:   Exit Sub
  loc_11C69DD: End If
  loc_11C6A14: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_100, var_120) = 6) Then
  loc_11C6A19:   var_98 = &HFF
  loc_11C6A25:   unk_5067A8.BeginTrans var_124
  loc_11C6A3B:   var_94 = Me.Bookmark 'Variant
  loc_11C6A95:   unk_5067A8.Execute CStr("Delete From PlanMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_11C6AE0:   var_16C = 0
  loc_11C6AF3:   var_164 = 0
  loc_11C6AFE:   var_160 = 0
  loc_11C6B11:   var_158 = 0
  loc_11C6B1C:   var_154 = 0
  loc_11C6B2F:   var_14C = 0
  loc_11C6B78:   Proc_154_5_10E3BD4(MemVar_1F95044, "PlanMast", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C6BE8:   var_100 = "Delete from Plan1 where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11C6BF6:   unk_5067A8.Execute CStr(var_100), var_120, -1
  loc_11C6C41:   var_16C = 0
  loc_11C6C54:   var_164 = 0
  loc_11C6C5F:   var_160 = 0
  loc_11C6C72:   var_158 = 0
  loc_11C6C7D:   var_154 = 0
  loc_11C6C90:   var_14C = 0
  loc_11C6CD0:   var_130 = "Plan1"
  loc_11C6CD9:   Proc_154_5_10E3BD4(MemVar_1F95044, var_130, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C6D07:   unk_5067A8.CommitTrans
  loc_11C6D0E:   var_98 = 0
  loc_11C6D1C:   Me.Requery -1
  loc_11C6D3C:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11C6D49:     Me.Bookmark = var_94
  loc_11C6D51:   Else
  loc_11C6D65:     If (Me.EOF = 0) Then
  loc_11C6D6E:       Me.MoveLast
  loc_11C6D73:     End If
  loc_11C6D73:   End If
  loc_11C6D73:   Call Proc_150_67_16C6390(var_98, var_14C, 0, var_154, var_158)
  loc_11C6D94:   Proc_5_0_1107AD0(&HFF, Me, global_72, 0)
  loc_11C6D9C: End If
  loc_11C6D9C: Exit Sub
  loc_11C6D9D: ' Referenced from: 11C69C8
  loc_11C6DA3: If (var_98 = &HFF) Then
  loc_11C6DAC:   unk_5067A8.RollbackTrans
  loc_11C6DB1: End If
  loc_11C6DB9: Set var_128 = Err()
  loc_11C6DBF: Call 0.Method_arg_2C (var_130, 0, var_160)
  loc_11C6DE0: MsgBox(CVar(var_130), &H10, " Deletion Message", var_100, var_120)
  loc_11C6DF3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F98FA4
  'Data Table: 506780
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F98E34: On Error Goto loc_F98F9C
  loc_F98E44: Me.LblUser.Caption = vbNullString
  loc_F98E59: Me.LblLDt.Caption = vbNullString
  loc_F98E6F: If (Proc_183_55_FE8490(global_72) = &HFF) Then
  loc_F98E72:   Exit Sub
  loc_F98E73: End If
  loc_F98E96: Call Proc_150_63_EB2D10(Proc_5_1_100EC1C("EDIT", Me))
  loc_F98EAF: Set var_88 = Me.Txt
  loc_F98EB5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F98EC8: global_84 = var_94.Text
  loc_F98EE4: Set var_88 = Me.Txt
  loc_F98EEA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F98EFD: global_88 = var_94.Text
  loc_F98F23: Call Proc_150_69_F2B140(Me.FGrid, 0)
  loc_F98F35: Set var_94 = Me.FGrid
  loc_F98F5C: Set var_88 = Me.Txt
  loc_F98F62: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94, 0, FGrid.DispID_10000)
  loc_F98F6A: var_94.Enabled = CVar(CStr(var_96))
  loc_F98F81: Set var_88 = Me.Txt
  loc_F98F87: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F98F8F: var_94.SetFocus
  loc_F98F9B: Exit Sub
  loc_F98F9C: ' Referenced from: F98E34
  loc_F98F9C: Proc_6_60_E63754(var_96)
  loc_F98FA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16CC0
  'Data Table: 506780
  loc_E16CB5: Me.Global.Unload Me
  loc_E16CBD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEC5E4
  'Data Table: 506780
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EEC520: On Error Goto loc_EEC5DE
  loc_EEC53A: If (Me.RecordCount <= 0) Then
  loc_EEC543:   var_B8 = "Information"
  loc_EEC55E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEC56E:   Exit Sub
  loc_EEC56F: End If
  loc_EEC57A: If (global_56 = "Plan") Then
  loc_EEC584:   var_10C = "Select P.Code As SearchCode,P.Name,R.Name Category,P.Adults,P.RRIncTax TaxInc,P.PackageAmount Amount,P.Tariff from PlanMast P Left Join RoomCat R On R.Code=P.RoomCat where P.Plan_Package in ('Plan') AND (P.LOGSITE_CODE='" & MemVar_1F95078
  loc_EEC58B:   MemVar_1F950E4 = var_10C & "' or P.LOGSITE_CODE='HO') Order By P.Name"
  loc_EEC595: Else
  loc_EEC59C:   var_10C = "Select P.Code As SearchCode,P.Name,R.Name Category,P.Adults,P.RRIncTax TaxInc,P.PackageAmount Amount,P.Tariff from PlanMast P Left Join RoomCat R On R.Code=P.RoomCat where P.Plan_Package in ('Package') AND (P.LOGSITE_CODE='" & MemVar_1F95078
  loc_EEC5A3:   MemVar_1F950E4 = var_10C & "' or P.LOGSITE_CODE='HO') Order By P.Name"
  loc_EEC5AA: End If
  loc_EEC5B3: Proc_6_126_F1C850("3000,2000,1000,1000,1500,1000", MemVar_1F950E4)
  loc_EEC5C1: MemVar_1F95120 = Me
  loc_EEC5D8: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEC5DD: Exit Sub
  loc_EEC5DE: ' Referenced from: EEC520
  loc_EEC5DE: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EEC5E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F888
  'Data Table: 506780
  Dim MeFF As Double
  loc_E2F878: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F880: Call Proc_150_67_16C6390(global_72)
  loc_E2F885: Exit Sub
  loc_E2F886: MeFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2F828
  'Data Table: 506780
  loc_E2F818: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F820: Call Proc_150_67_16C6390(global_72)
  loc_E2F825: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F7C8
  'Data Table: 506780
  loc_E2F7B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F7C0: Call Proc_150_67_16C6390(global_72)
  loc_E2F7C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2F768
  'Data Table: 506780
  loc_E2F758: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F760: Call Proc_150_67_16C6390(global_72)
  loc_E2F765: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E58CE8
  'Data Table: 506780
  Dim Me As Recordset15
  loc_E58CAF: Me.Requery -1
  loc_E58CBF: Me.Requery -1
  loc_E58CCF: Me.Requery -1
  loc_E58CDF: Me.Requery -1
  loc_E58CE4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '17495C8
  'Data Table: 506780
  Dim var_8A As Integer
  Dim var_B8 As Variant
  Dim var_C4 As Variant
  Dim var_9C As Variant
  Dim var_D4 As Variant
  Dim unk_5067A8 As Connection15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_BC As Variant
  Dim var_98 As Variant
  Dim var_A0 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D8 As Variant
  Dim var_104 As Variant
  Dim var_260 As Variant
  Dim var_310 As Variant
  Dim var_3CC As Variant
  Dim var_424 As Variant
  Dim var_47C As Variant
  Dim var_4D4 As Variant
  Dim var_67C As TextBox
  Dim var_6D8 As TextBox
  Dim var_734 As Variant
  Dim var_158 As String
  Dim var_170 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_228 As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_334 As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_384 As Variant
  Dim var_3FC As Variant
  Dim var_464 As Variant
  Dim var_49C As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_54C As Variant
  Dim var_55C As Variant
  Dim var_60C As Variant
  Dim var_61C As Variant
  Dim var_654 As Variant
  Dim var_6C0 As Variant
  Dim var_6FC As Variant
  Dim var_754 As Variant
  Dim var_764 As Variant
  Dim var_7DC As Variant
  Dim Me As Recordset15
  Dim var_174 As Variant
  Dim var_274 As Variant
  Dim var_270 As Variant
  Dim var_2C8 As Variant
  Dim var_620 As TextBox
  Dim var_678 As TextBox
  Dim var_804 As TextBox
  Dim var_148 As String
  Dim var_250 As Variant
  Dim var_2A8 As Variant
  Dim var_3DC As Variant
  Dim var_434 As Variant
  Dim var_53C As Variant
  Dim var_5EC As Variant
  Dim var_7AC As Variant
  Dim var_6DC As String
  Dim var_B4 As Variant
  Dim var_198 As Variant
  Dim var_F4 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_7F0 As Variant
  Dim var_22C As MSHFlexGrid
  Dim var_848 As Variant
  Dim var_868 As Variant
  Dim var_230 As MSHFlexGrid
  Dim var_894 As Variant
  Dim var_8B4 As Variant
  Dim var_8E4 As Variant
  Dim var_904 As Variant
  Dim var_278 As MSHFlexGrid
  Dim var_934 As Variant
  Dim var_954 As Variant
  Dim var_30C As MSHFlexGrid
  Dim var_C50 As Double
  Dim var_3B8 As MSHFlexGrid
  Dim var_C58 As Double
  Dim var_3BC As MSHFlexGrid
  Dim var_C60 As Double
  Dim var_414 As MSHFlexGrid
  Dim var_C68 As Double
  Dim var_B6C As Variant
  Dim var_4C0 As MSHFlexGrid
  Dim var_BD0 As Variant
  Dim var_BF0 As Variant
  Dim var_4C4 As MSHFlexGrid
  Dim var_884 As String
  loc_1747B04: On Error Goto loc_17495AA
  loc_1747B12: Set var_98 = Me.Txt
  loc_1747B18: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1747B41: If (Proc_6_27_EA61EC(var_9C, "Plan Name") = 0) Then
  loc_1747B44:   Exit Sub
  loc_1747B45: End If
  loc_1747B50: Set var_98 = Me.Txt
  loc_1747B56: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_1747B5E: var_A4 = "Applicable Date"
  loc_1747B7F: If (Proc_6_27_EA61EC(var_9C, var_A4) = 0) Then
  loc_1747B82:   Exit Sub
  loc_1747B83: End If
  loc_1747B8B: Call Proc_150_70_101F6D4(var_B4, &HFF)
  loc_1747BA1: Set var_A0 = Me.Txt
  loc_1747BA7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_1747BBC: var_C4 = Val(var_B8.Text)
  loc_1747BCD: Set var_98 = Me.Txt
  loc_1747BD3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_9C, var_A4)
  loc_1747C00: If (CDbl(Val(var_A4)) <> CDbl(var_9C.Text)) Then
  loc_1747C16:   var_B4 = "Package Amount Mismatched"
  loc_1747C1C:   MsgBox(var_B4, &H40, var_F4, var_114, var_134)
  loc_1747C2C:   Exit Sub
  loc_1747C2D: End If
  loc_1747C36: unk_5067A8.BeginTrans var_138
  loc_1747C3F: Set var_98 = Me.TopCtrl1
  loc_1747C45: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_1747C5E: If (CStr() = "Add") Then
  loc_1747C67:   var_E4 = 0
  loc_1747C84:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From PlanMast WHERE SITE_CODE='" & MemVar_1F95070
  loc_1747C8B:   var_BC = CStr() & "'"
  loc_1747C94:   unk_5067A8.Execute var_BC, var_B4, -1
  loc_1747C9C:   var_98 = var_98.Fields
  loc_1747CA4:   var_E4 = var_9C.Item(var_9C)
  loc_1747CAC:   var_A0 = var_A0.Value
  loc_1747CE5:   var_114 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1747D0B:   var_F4 = Format(CStr(var_F4), "000")
  loc_1747D13:   var_134 = (1 + var_F4)
  loc_1747D3E:   Set var_98 = Me.Txt
  loc_1747D44:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_BC)
  loc_1747D4C:   1 = var_9C.Text
  loc_1747D5F:   Set var_A0 = Me.Txt
  loc_1747D65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_148)
  loc_1747D6D:   var_114 = var_B8.Text
  loc_1747D80:   Proc_6_7_F26918(var_F4, Date)
  loc_1747D90:   Set var_174 = Me.Txt
  loc_1747D96:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_178)
  loc_1747DA5:   Proc_6_7_F26918(var_198, CVar(var_178))
  loc_1747DE2:   Set var_22C = Me.Txt
  loc_1747DE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_230)
  loc_1747E07:   Set var_274 = Me.Txt
  loc_1747E0D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_278)
  loc_1747E59:   Set var_30C = Me.Txt
  loc_1747E5F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_310)
  loc_1747E74:   var_C4 = Val(var_310.Text)
  loc_1747E82:   Set var_3B8 = Me.Txt
  loc_1747E88:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3BC)
  loc_1747E90:   var_3CC = CVar(var_3BC) 'Address
  loc_1747E97:   Proc_6_39_E7D3A0(var_3DC, var_3CC)
  loc_1747EA7:   Set var_410 = Me.Txt
  loc_1747EAD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_414)
  loc_1747EB5:   var_424 = CVar(var_414) 'Address
  loc_1747EBC:   Proc_6_39_E7D3A0(var_434, var_424)
  loc_1747ECC:   Set var_468 = Me.Txt
  loc_1747ED2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_46C)
  loc_1747EDA:   var_47C = CVar(var_46C) 'Address
  loc_1747EF1:   Set var_4C0 = Me.Txt
  loc_1747EF7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_4C4)
  loc_1747EFF:   var_4D4 = CVar(var_4C4) 'Address
  loc_1747F16:   Set var_518 = Me.Txt
  loc_1747F1C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_51C)
  loc_1747F2B:   Proc_6_39_E7D3A0(var_53C, CVar(var_51C))
  loc_1747F3B:   Set var_570 = Me.Txt
  loc_1747F41:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_574)
  loc_1747F50:   Proc_6_39_E7D3A0(var_594, CVar(var_574))
  loc_1747F60:   Set var_5C8 = Me.Txt
  loc_1747F66:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_5CC)
  loc_1747F75:   Proc_6_39_E7D3A0(var_5EC, CVar(var_5CC))
  loc_1747F85:   Set var_620 = Me.Txt
  loc_1747F8B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_624)
  loc_1747FAD:   Set var_678 = Me.Txt
  loc_1747FB3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_67C)
  loc_1747FDC:   Set var_6D4 = Me.Txt
  loc_1747FE2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_6D8)
  loc_1747FFA:   Set var_720 = Me.Txt
  loc_1748000:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_724)
  loc_174801F:   Set var_778 = Me.Txt
  loc_1748025:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_77C)
  loc_174803C:   Proc_6_17_EAAE40(var_7AC, CVar(Proc_6_38_E69628(CVar(var_77C))))
  loc_1748058:   var_A4 = "Insert Into PlanMast (Code,Name,Total,Site_Code,U_Name,U_EntDt,U_AE,App_Date,Plan_Package,ActiveYn,RoomPer,LogSite_Code,PercentApp,RoomRate,PackageAmount,DiscAppYN,DiscAppOn,Nights,Adults,Childs,RRIncTax,RoomCat,RoomTaxStru,Tariff,MapCode) Values ('" & CStr(var_134)
  loc_17480AD:   var_1A8 = CVar(var_A4 & "','" & var_BC & "'," & var_148 & ",'" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_F4 & ",'A'," & var_198 
  loc_17480CD:   var_2E8 = var_1A8 & ",'" & IIf((global_56 = "Plan"), "Plan", "Package") & "','" & IIf((Trim(CVar(var_230)) = vbNullString), "Yes", Trim(CVar(var_278))) 
  loc_17480EA:   var_354 = var_2E8 & "'," & CVar(var_C4) & ",'" 
  loc_1748130:   var_49C = var_354 & CVar(MemVar_1F95078) & "','Yes'" & "," & var_3DC & "," & var_434 & ",'" & CVar(Proc_6_38_E69628(var_47C, var_C4)) 
  loc_1748186:   var_654 = var_49C & "','" & CVar(Proc_6_38_E69628(var_4D4)) & "'," & var_53C & "," & var_594 & "," & var_5EC & ",'" & CVar(Proc_6_38_E69628(CVar(var_624))) 
  loc_17481AC:   var_6FC = var_654 & "','" & CVar(Proc_6_38_E69628(CVar(var_67C.Tag))) & "','" & CVar(var_6D8.Tag) 
  loc_17481BF:   var_754 = var_6FC & "','" & CVar(Proc_6_38_E69628(CVar(var_724))) 
  loc_17481D8:   var_7DC = var_754 & "'," & var_7AC & ")" 
  loc_17481E6:   unk_5067A8.Execute CStr(var_7DC), var_800, -1
  loc_17482E7: Else
  loc_1748304:   var_9C = Me.Fields.Item("SearchCode")
  loc_1748315:   var_A4 = CStr(var_9C.Value)
  loc_174831B:   global_96 = var_A4
  loc_174833A:   Set var_98 = Me.Txt
  loc_1748340:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_1748348:   var_804 = var_9C.Text
  loc_174835B:   Set var_A0 = Me.Txt
  loc_1748361:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_1748371:   var_B4 = Date
  loc_174837C:   Proc_6_7_F26918(var_F4, var_B4)
  loc_17483C6:   Set var_178 = Me.Txt
  loc_17483CC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_22C)
  loc_17483EE:   Set var_230 = Me.Txt
  loc_17483F4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_274)
  loc_1748409:   var_C4 = Val(var_274.Text)
  loc_1748417:   Set var_278 = Me.Txt
  loc_174841D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_30C)
  loc_174843C:   Set var_310 = Me.Txt
  loc_1748442:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3B8)
  loc_1748461:   Set var_3BC = Me.Txt
  loc_1748467:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_410)
  loc_1748476:   Proc_6_39_E7D3A0(var_354, CVar(var_410))
  loc_1748486:   Set var_414 = Me.Txt
  loc_174848C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_468)
  loc_174849B:   Proc_6_39_E7D3A0(var_3CC, CVar(var_468))
  loc_17484AB:   Set var_46C = Me.Txt
  loc_17484B1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_4C0)
  loc_17484C0:   Proc_6_39_E7D3A0(var_424, CVar(var_4C0))
  loc_17484D0:   Set var_4C4 = Me.Txt
  loc_17484D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_518)
  loc_17484E5:   Proc_6_39_E7D3A0(var_47C, CVar(var_518))
  loc_17484F5:   Set var_51C = Me.Txt
  loc_17484FB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_570)
  loc_1748503:   var_4BC = CVar(var_570) 'Address
  loc_174850A:   Proc_6_39_E7D3A0(var_4D4, var_4BC)
  loc_174851A:   Set var_574 = Me.Txt
  loc_1748520:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_5C8)
  loc_174856F:   Set var_5CC = Me.Txt
  loc_1748575:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_620)
  loc_174859E:   Set var_624 = Me.Txt
  loc_17485A4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_678)
  loc_17485BC:   Set var_67C = Me.Txt
  loc_17485C2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_6D4)
  loc_17485E1:   Set var_6D8 = Me.Txt
  loc_17485E7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_720)
  loc_17485FE:   Proc_6_17_EAAE40(var_6FC, CVar(Proc_6_38_E69628(CVar(var_720))))
  loc_174860E:   Set var_724 = Me.Txt
  loc_1748614:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_778)
  loc_1748623:   Proc_6_7_F26918(var_754, CVar(var_778))
  loc_1748636:   Set var_77C = Me.Txt
  loc_174863C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_804)
  loc_1748687:   var_158 = "Update PlanMast Set Name='" & var_A4 & "',Total=" & var_B8.Text & ",Site_Code='" & MemVar_1F95070 & "',U_Name='" & MemVar_1F950C8
  loc_17486A4:   var_1B8 = CVar(var_158 & "',U_EntDt=") & var_F4 & ",U_AE='E',PercentAPP='" & IIf((Me.Check1.Value = 1), "Yes", "No") 
  loc_17486D1:   var_250 = var_1B8 & "',ActiveYN='" & Trim(CVar(var_22C)) & "',RoomPer=" & CVar(var_C4) & ",DiscAppYN='" 
  loc_17486E4:   var_2A8 = var_250 & CVar(Proc_6_38_E69628(CVar(var_30C), var_C4)) & "',DiscAppOn='" 
  loc_174871E:   var_434 = var_2A8 & CVar(Proc_6_38_E69628(CVar(var_3B8))) & "',RoomRate=" & var_354 & ",PackageAmount=" & var_3CC & ",Adults=" & var_424 
  loc_174875A:   var_54C = var_434 & ",Childs=" & var_47C & ",Nights=" & var_4D4 & ",RRIncTax='" & CVar(Proc_6_38_E69628(CVar(var_5C8))) & "',Plan_Package='" 
  loc_174877D:   var_61C = var_54C & IIf((global_56 = "Plan"), "Plan", "Package") & "',RoomCat='" & CVar(Proc_6_38_E69628(CVar(var_620.Tag))) & "',RoomTaxStru='" 
  loc_17487B3:   var_734 = var_61C & CVar(var_678.Tag) & "',Tariff='" & CVar(Proc_6_38_E69628(CVar(var_6D4))) & "',MapCode=" & var_6FC & " WHERE APP_DATE=" 
  loc_17487E4:   unk_5067A8.Execute CStr(var_734 & var_754 & " AND CODE='" & CVar(var_804.Tag) & "'"), var_7DC, -1
  loc_17488E4: End If
  loc_17488F5: Set var_98 = Me.Txt
  loc_17488FB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, global_96)
  loc_1748903: var_9C.Tag = var_81C
  loc_1748915: var_E4 = 0
  loc_1748945: unk_5067A8.Execute "Select Count(*) From Plan1 Where Code='" & global_96 & "'", var_B4, -1
  loc_174894D: var_98 = var_98.Fields
  loc_1748955: var_E4 = var_9C.Item(var_9C)
  loc_1748984: If (var_F4 > 0) Then
  loc_17489A4:   Set var_98 = Me.Txt
  loc_17489AA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, "DELETE FROM Plan1 WHERE APP_DATE=", var_1B8)
  loc_17489B9:   Proc_6_7_F26918(var_F4, CVar(var_9C), -1)
  loc_17489EA:   var_198 = var_A0.Value.Value.Value.Value.Value & var_F4 & " AND Code='" & CVar(global_96) & "' AND SITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1748A01:   unk_5067A8.Execute CStr(var_198 & "'"), var_F4, var_F4
  loc_1748A25: End If
  loc_1748A4D: For var_820 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_92 = var_820 'Byte
  loc_1748A58:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_1748A60:   var_104 = CVar(CLng(1)) 'Long
  loc_1748A7A:   var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_1748A8B:   If (var_A4 <> vbNullString) Then
  loc_1748A93:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_1748A9B:     var_104 = CVar(CLng(&H11)) 'Long
  loc_1748AA4:     Set var_98 = Me.FGrid
  loc_1748AAA:     var_B4 = var_98.TextMatrix)
  loc_1748ABB:     var_1D8 = CVar(CLng(var_92)) 'Long
  loc_1748AC3:     var_260 = CVar(CLng(2)) 'Long
  loc_1748ACC:     Set var_9C = Me.FGrid
  loc_1748AD2:     var_F4 = var_9C.TextMatrix)
  loc_1748AE3:     var_2F8 = CVar(CLng(var_92)) 'Long
  loc_1748AEB:     var_344 = CVar(CLng(5)) 'Long
  loc_1748AF4:     Set var_A0 = Me.FGrid
  loc_1748B0B:     var_384 = CVar(CLng(var_92)) 'Long
  loc_1748B13:     var_3FC = CVar(CLng(6)) 'Long
  loc_1748B1C:     Set var_B8 = Me.FGrid
  loc_1748B33:     var_4AC = CVar(CLng(var_92)) 'Long
  loc_1748B3B:     var_55C = CVar(CLng(3)) 'Long
  loc_1748B44:     Set var_174 = Me.FGrid
  loc_1748B5B:     var_60C = CVar(CLng(var_92)) 'Long
  loc_1748B63:     var_6C0 = CVar(CLng(&HC)) 'Long
  loc_1748B83:     var_764 = CVar(CLng(var_92)) 'Long
  loc_1748B8B:     var_7F0 = CVar(CLng(&HD)) 'Long
  loc_1748BAB:     var_848 = CVar(CLng(var_92)) 'Long
  loc_1748BB3:     var_868 = CVar(CLng(&HE)) 'Long
  loc_1748BD3:     var_894 = CVar(CLng(var_92)) 'Long
  loc_1748BDB:     var_8B4 = CVar(CLng(&HF)) 'Long
  loc_1748BEA:     var_1B8 = Me.FGrid.TextMatrix)
  loc_1748BFD:     var_C4 = Val(CStr(var_1B8))
  loc_1748C05:     var_8E4 = CVar(CLng(var_92)) 'Long
  loc_1748C0D:     var_904 = CVar(CLng(7)) 'Long
  loc_1748C37:     var_934 = CVar(CLng(var_92)) 'Long
  loc_1748C3F:     var_954 = CVar(CLng(8)) 'Long
  loc_1748C61:     var_C48 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1748C93:     var_C50 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1748CC5:     var_C58 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1748CE4:     var_228 = Me.FGrid.TextMatrix)
  loc_1748CF7:     var_C60 = Val(CStr(var_228))
  loc_1748D08:     Proc_6_7_F26918(var_250, Date, var_C60, CVar(CLng(&HB)), CVar(CLng(var_92)), var_C58, CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1748D11:     Set var_410 = Me.TopCtrl1
  loc_1748D17:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C50)
  loc_1748D7D:     var_C68 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1748D8B:     Set var_468 = Me.Txt
  loc_1748D91:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_46C, var_C68, CVar(CLng(&H12)), CVar(CLng(var_92)), CVar(CLng(9)))
  loc_1748DA0:     Proc_6_7_F26918(var_3CC, CVar(var_46C), CVar(CLng(var_92)), var_C48)
  loc_1748DAA:     var_B6C = CVar(CLng(var_92)) 'Long
  loc_1748DB2:     var_B8C = CVar(CLng(&H13)) 'Long
  loc_1748DDC:     var_BD0 = CVar(CLng(var_92)) 'Long
  loc_1748DE4:     var_BF0 = CVar(CLng(&H14)) 'Long
  loc_1748E20:     var_A4 = "INSERT INTO Plan1 (Code,ChrgCode,RevCode,TaxInc,FixRate,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,child,ExtraAdult,ExtraChild,NoOfDays,Site_Code,U_Name,U_EntDT,U_AE,PlanPer,App_Date,LogSite_Code,PerDayAmount,NetAmount)VALUES ('" & global_96
  loc_1748E27:     var_BC = var_A4 & "','"
  loc_1748E6F:     var_6DC = var_BC & CStr(var_B4) & "','" & CStr(var_F4) & "','" & CStr(var_A0.TextMatrix)) & "','" & CStr(var_B8.TextMatrix)) & "','"
  loc_1748EB0:     var_884 = var_6DC & CStr(var_174.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix))
  loc_1748F03:     var_A0C = var_884 & "'," & CStr(var_C4) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(var_C48) & "," & CStr(var_C50) & ","
  loc_1748F45:     var_270 = CVar(var_A0C & CStr(var_C58) & "," & CStr(var_C60) & ",'" & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',") 'String
  loc_1748F64:     var_334 = var_270 & var_250 & ",'" & IIf((CStr(var_2A8) = "Add"), "A", "E") & "'," 
  loc_1748FAF:     var_464 = var_334 & CVar(var_C68) & "," & var_3CC & ",'" & CVar(MemVar_1F95078) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_1748FD1:     unk_5067A8.Execute CStr(var_464 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ")"), var_4BC, -1
  loc_17490CF:   End If
  loc_17490D2: Next var_820 'Byte
  loc_17490DE: var_E4 = 0
  loc_174910E: unk_5067A8.Execute "Select Count(*) From PlanTokenDetails Where PlanCode='" & global_96 & "'", var_B4, -1
  loc_1749116: var_98 = var_98.Fields
  loc_174911E: var_E4 = var_9C.Item(var_9C)
  loc_174914D: If (var_F4 > 0) Then
  loc_174916D:   Set var_98 = Me.Txt
  loc_1749173:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, "DELETE FROM PlanTokenDetails WHERE APP_DATE=", var_1B8)
  loc_1749182:   Proc_6_7_F26918(var_F4, CVar(var_9C), -1)
  loc_17491A0:   var_170 = var_A0.Value.Value.Value & var_F4 & " AND PlanCode='" & CVar(global_96) 
  loc_17491CA:   unk_5067A8.Execute CStr(var_170 & "' AND SITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_F4, 
  loc_17491EE: End If
  loc_1749216: For var_C7C = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_92 = var_C7C 'Byte
  loc_1749221:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_1749229:   var_104 = CVar(CLng(1)) 'Long
  loc_1749254:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_174925C:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_1749264:     var_104 = CVar(CLng(2)) 'Long
  loc_1749273:     var_B4 = Me.FGrid1.TextMatrix)
  loc_1749295:     Set var_9C = Me.FGrid1
  loc_17492AE:     var_C4 = Val(CStr(var_9C.TextMatrix)))
  loc_17492CD:     var_114 = Me.FGrid1.TextMatrix)
  loc_17492E4:     Set var_B8 = Me.Txt
  loc_17492EA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174, var_114, CVar(CLng(4)), CVar(CLng(var_92)), var_C4, CVar(CLng(3)))
  loc_17492F9:     Proc_6_7_F26918(var_170, CVar(var_174), CVar(CLng(var_92)), var_B4, var_104)
  loc_174930C:     Proc_6_7_F26918(var_228, Date, var_D4)
  loc_1749315:     Set var_178 = Me.TopCtrl1
  loc_174931B:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_104)
  loc_174936C:     var_BC = "INSERT INTO PlanTokenDetails (Sno,PlanCode,ChrgCode,Rate,Remarks,App_Date,Site_Code,U_Name,U_EntDT,U_AE,LogSite_Code) VALUES (" & CStr(var_92)
  loc_17493C1:     var_198 = CVar(var_BC & ",'" & global_96 & "','" & CStr(var_B4) & "'," & CStr(var_C4) & ",'" & CStr(var_114) & "',") & var_170 
  loc_1749407:     var_2C8 = var_198 & ",'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," & var_228 & ",'" & IIf((CStr(var_270) = "Add"), "A", "E") 
  loc_1749431:     unk_5067A8.Execute CStr(var_2C8 & "','" & CVar(MemVar_1F95078) & "')"), var_334, -1
  loc_174949F:   End If
  loc_17494A2: Next var_C7C 'Byte
  loc_17494AE: unk_5067A8.CommitTrans
  loc_17494B5: var_8A = 0
  loc_17494C6: Set var_98 = Me.Txt
  loc_17494CC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_17494E8: var_8A = 0
  loc_17494F6: Me.Requery -1
  loc_1749506: Me.Requery -1
  loc_1749511: Me.MoveFirst
  loc_174953B: Me.Find "SearchCode='" & var_9C.Tag & "'", 0, 1
  loc_174954B: Set var_98 = Me.TopCtrl1
  loc_1749551: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_174956A: If (CStr(var_8A) = "Add") Then
  loc_174956D:   Call TopCtrl1_UnknownEvent_A()
  loc_1749572:   Exit Sub
  loc_1749573: End If
  loc_1749596: Call Proc_150_63_EB2D10(Proc_5_1_100EC1C("INI", Me), global_72)
  loc_17495A6: Set var_88 = Nothing
  loc_17495A9: Exit Sub
  loc_17495AA: ' Referenced from: 1747B04
  loc_17495B0: If (var_8A = &HFF) Then
  loc_17495B9:   unk_5067A8.RollbackTrans
  loc_17495BE: End If
  loc_17495BE: Proc_6_60_E63754(var_8A)
  loc_17495C3: Exit Sub
  loc_17495C4: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F46914
  'Data Table: 506780
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4680B: Me.DGTaxStru.Visible = False
  loc_F4682A: If (Me.RecordCount > 0) Then
  loc_F46869:   Set var_B4 = Me.Txt
  loc_F4686F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F46877:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F468AA:   var_B0 = Me.Fields.Item("Name")
  loc_F468C9:   Set var_B4 = Me.Txt
  loc_F468CF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F468D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F468ED: End If
  loc_F468F8: Set var_A8 = Me.Txt
  loc_F468FE: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11))
  loc_F46906: var_B0.SetFocus
  loc_F46912: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'E59748
  'Data Table: 506780
  loc_E5971B: Set var_90 = Me.FGPoint
  loc_E59737: Proc_6_138_106E830(Me.DGTaxStru, global_80)
  loc_E59745: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12F603C
  'Data Table: 506780
  Dim var_8C As Variant
  Dim var_8E As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_130 As String
  Dim var_15C As Long
  loc_12F5954: On Error Goto loc_12F6035
  loc_12F5957: Call Proc_150_61_F205D4()
  loc_12F596B: Set var_88 = Me.TxtGrid
  loc_12F5971: Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12F5979: var_8C.MaxLength = 0
  loc_12F5988: var_8E = Index
  loc_12F5991: If (var_8E = 0) Then
  loc_12F59A7:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F59B0:   Set var_8C = Me.FGrid
  loc_12F59E6:   Set var_108 = Me.TxtGrid
  loc_12F59EC:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12F59F4:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_12F5A25:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12F5A50:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_12F5A5F:     Set var_88 = Me.TxtGrid
  loc_12F5A65:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_12F5A6D:     var_114 = var_8C.Left
  loc_12F5A84:     Me.DGRev.Left = CVar(var_118)
  loc_12F5A9E:     Set var_F4 = Me.TxtGrid
  loc_12F5AA4:     Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_12F5AAC:     var_C0 = var_108.Height
  loc_12F5ABD:     Set var_88 = Me.TxtGrid
  loc_12F5AC3:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12F5AD7:     var_C0 = CVar((var_8C.Top + var_11C)) 'Single
  loc_12F5AE0:     Set var_10C = Me.DGRev
  loc_12F5AE6:     var_10C.Top = var_C0
  loc_12F5B0F:     If (Me.RecordCount > 0) Then
  loc_12F5B1D:       Set var_8C = Me.FGPoint
  loc_12F5B35:       Proc_6_137_1192FDC(Me.DGRev, global_64, Index)
  loc_12F5B43:     End If
  loc_12F5B4C:     var_118 = Me.RecordCount
  loc_12F5B63:     var_11E = Me.EOF
  loc_12F5B77:     var_120 = Me.BOF
  loc_12F5B97:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F5BD3:     If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12F5BD6:       Exit Sub
  loc_12F5BD7:     End If
  loc_12F5BEA:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F5BF2:     var_E0 = CVar(CLng(1)) 'Long
  loc_12F5C16:     var_130 = "Name"
  loc_12F5C55:     If CBool(CVar(CStr(Me.FGrid.TextMatrix))) <> Me.Fields.Item(var_130).Value) Then
  loc_12F5C5E:       Me.MoveFirst
  loc_12F5C76:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F5C7E:       var_E0 = CVar(CLng(1)) 'Long
  loc_12F5CC2:       Me.Find "Name ='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_12F5CDE:     End If
  loc_12F5CDE:   End If
  loc_12F5CE1: Else
  loc_12F5CE7:   If (var_8E = 1) Then
  loc_12F5D06:     Set var_8C = Me.FGrid1
  loc_12F5D0C:     var_B0 = var_8C.Col
  loc_12F5D15:     var_E0 = CVar(CLng(var_B0)) 'Long
  loc_12F5D3C:     Set var_108 = Me.TxtGrid
  loc_12F5D42:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), var_E0, CVar(CLng(Me.FGrid1.Row)), var_130, var_B0)
  loc_12F5D4A:     var_10C.Tag = var_E0
  loc_12F5D6C:     var_C0 = CVar(CLng("16777215")) 'Long
  loc_12F5D7B:     Me.FGrid1.CellBackColor = var_C0
  loc_12F5D96:     var_15C = CLng(Me.FGrid1.Col)
  loc_12F5DA6:     If (var_15C = CLng(1)) Then
  loc_12F5DB5:       Set var_88 = Me.TxtGrid
  loc_12F5DBB:       Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_118, var_15C, var_C0)
  loc_12F5DC3:       var_E0 = var_8C.Left
  loc_12F5DCB:       var_C0 = CVar(var_118) 'Single
  loc_12F5DDA:       Me.DGTokenRev.Left = var_C0
  loc_12F5DF4:       Set var_F4 = Me.TxtGrid
  loc_12F5DFA:       Call 0.Method_TxtGrid_GotFocus0 (1, var_108, var_11C, var_C0)
  loc_12F5E02:       var_C0 = var_108.Height
  loc_12F5E13:       Set var_88 = Me.TxtGrid
  loc_12F5E19:       Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_118)
  loc_12F5E21:       ((var_118 = 0) Or ((var_11E = &HFF) Or (var_120 = &HFF))) = var_8C.Top
  loc_12F5E2D:       var_C0 = CVar((var_118 + var_11C)) 'Single
  loc_12F5E3C:       Me.DGTokenRev.Top = var_C0
  loc_12F5E65:       If (Me.RecordCount > 0) Then
  loc_12F5E73:         Set var_8C = Me.FGPoint
  loc_12F5E8B:         Proc_6_137_1192FDC(Me.DGTokenRev, global_68, Index)
  loc_12F5E99:       End If
  loc_12F5EA2:       var_118 = Me.RecordCount
  loc_12F5EB9:       var_11E = Me.EOF
  loc_12F5ECD:       var_120 = Me.BOF
  loc_12F5EED:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F5F29:       If (CVar(CLng(1)) Or (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_12F5F2C:         Exit Sub
  loc_12F5F2D:       End If
  loc_12F5F40:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F5F48:       var_E0 = CVar(CLng(1)) 'Long
  loc_12F5F6C:       var_130 = "Name"
  loc_12F5FAB:       If CBool(CVar(CStr(Me.FGrid1.TextMatrix))) <> Me.Fields.Item(var_130).Value) Then
  loc_12F5FB4:         Me.MoveFirst
  loc_12F5FCC:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F5FD4:         var_E0 = CVar(CLng(1)) 'Long
  loc_12F5FE3:         var_B0 = Me.FGrid1.TextMatrix)
  loc_12F6018:         Me.Find "Name ='" & CStr(var_B0) & "'", 0, 1
  loc_12F6034:       End If
  loc_12F6034:     End If
  loc_12F6034:   End If
  loc_12F6034: End If
  loc_12F6034: Exit Sub
  loc_12F6035: ' Referenced from: 12F5954
  loc_12F6035: Proc_6_60_E63754(var_130, var_B0, var_E0, var_C0, var_E0)
  loc_12F603A: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1444A20
  'Data Table: 506780
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_9E As Integer
  Dim var_8C As Variant
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_D0 As Long
  loc_1443EEF: var_86 = Shift
  loc_1443EF2: On Error Goto loc_1444A17
  loc_1443EFF: If (CLng(Shift) = &H1B) Then
  loc_1443F0F:   Set var_8C = Me.TxtGrid
  loc_1443F15:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1443F2F:   Set var_98 = Me.TxtGrid
  loc_1443F35:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1443F3D:   var_9C.Text = var_90.Tag
  loc_1443F56:   If (KeyCode = 0) Then
  loc_1443F5D:     Set var_8C = Me.FGrid
  loc_1443F71:   Else
  loc_1443F75:     Set var_8C = Me.FGrid
  loc_1443F86:   End If
  loc_1443F92:   Set var_8C = Me.TxtGrid
  loc_1443F98:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1443FA0:   var_90.Visible = FGrid.DispID_8001
  loc_1443FAC:   Exit Sub
  loc_1443FAD: End If
  loc_1443FB0: var_9E = KeyCode
  loc_1443FB9: If (var_9E = 0) Then
  loc_1443FCF:   var_B4 = CLng(Me.FGrid.Col)
  loc_1443FDF:   If (var_B4 = CLng(5)) Then
  loc_1444022:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1444030:       Call Proc_150_68_195468C(KeyCode, 0, var_B8, var_B4)
  loc_144403B:       If (var_B8 = &HFF) Then
  loc_1444081:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 5)
  loc_1444091:       End If
  loc_1444091:     End If
  loc_1444094:   Else
  loc_144409B:     If (var_B4 = CLng(6)) Then
  loc_14440DE:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_14440EC:         Call Proc_150_68_195468C(KeyCode, 0, var_B8, 0, 6)
  loc_14440F7:         If (var_B8 = &HFF) Then
  loc_144413D:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 6, 0)
  loc_144414D:         End If
  loc_144414D:       End If
  loc_1444150:     Else
  loc_1444157:       If (var_B4 = CLng(7)) Then
  loc_144419A:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_14441A8:           Call Proc_150_68_195468C(KeyCode, 0, var_B8, 7, 0)
  loc_14441B3:           If (var_B8 = &HFF) Then
  loc_14441F9:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_1444209:           End If
  loc_1444209:         End If
  loc_144420C:       Else
  loc_1444213:         If (var_B4 = CLng(8)) Then
  loc_1444256:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1444264:             Call Proc_150_68_195468C(KeyCode, 0, var_B8, 8, 0)
  loc_144426F:             If (var_B8 = &HFF) Then
  loc_14442B5:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_14442C5:             End If
  loc_14442C5:           End If
  loc_14442C8:         Else
  loc_14442CF:           If (var_B4 = CLng(&HF)) Then
  loc_1444312:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1444320:               Call Proc_150_68_195468C(KeyCode, 0, var_B8, &HB, 0)
  loc_144432B:               If (var_B8 = &HFF) Then
  loc_1444378:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, CByte((CInt(&HF) + 1)), 0)
  loc_1444388:               End If
  loc_1444388:             End If
  loc_144438B:           Else
  loc_1444392:             If (var_B4 = CLng(1)) Then
  loc_14443EB:               Proc_6_69_134A630(Me.DGRev, Me.TxtGrid, KeyCode, global_64, Shift, &HFF, 1, Nothing)
  loc_144445A:               If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1444480:                 Proc_6_138_106E830(Me.DGRev, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_144448E:               End If
  loc_1444498:               If (CLng(Shift) = &HD) Then
  loc_14444A6:                 Call Proc_150_68_195468C(KeyCode, 0, var_B8, 0, 0)
  loc_14444B1:                 If (var_B8 = &HFF) Then
  loc_14444F7:                   Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 1, 0)
  loc_1444507:                 End If
  loc_1444507:               End If
  loc_144450A:             Else
  loc_1444511:               If (var_B4 = CLng(&HB)) Then
  loc_1444554:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1444562:                   Call Proc_150_68_195468C(KeyCode, 0, var_B8, &HB, 0)
  loc_144456D:                   If (var_B8 = &HFF) Then
  loc_144458B:                     If (Me.Check1.Value = 1) Then
  loc_14445D8:                       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, CByte((CInt(7) + 1)), 0)
  loc_14445EB:                     Else
  loc_144462E:                       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 1, 0, 0)
  loc_144463E:                     End If
  loc_144463E:                   End If
  loc_144463E:                 End If
  loc_1444641:               Else
  loc_1444648:                 If (var_B4 = CLng(&H12)) Then
  loc_144468B:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1444699:                     Call Proc_150_68_195468C(KeyCode, 0, var_B8, 0, &H12)
  loc_14446A4:                     If (var_B8 = &HFF) Then
  loc_14446EA:                       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, &H12, 0)
  loc_14446FA:                     End If
  loc_14446FA:                   End If
  loc_14446FA:                 End If
  loc_14446FA:               End If
  loc_14446FA:             End If
  loc_14446FA:           End If
  loc_14446FA:         End If
  loc_14446FA:       End If
  loc_14446FA:     End If
  loc_14446FA:   End If
  loc_14446FD: Else
  loc_1444703:   If (var_9E = 1) Then
  loc_1444719:     var_D0 = CLng(Me.FGrid1.Col)
  loc_1444729:     If (var_D0 = CLng(1)) Then
  loc_1444782:       Proc_6_69_134A630(Me.DGTokenRev, Me.TxtGrid, KeyCode, global_68, Shift, &HFF, 1, Nothing)
  loc_14447F1:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1444817:         Proc_6_138_106E830(Me.DGTokenRev, global_68, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1444825:       End If
  loc_144482F:       If (CLng(Shift) = &HD) Then
  loc_144483D:         Call Proc_150_68_195468C(KeyCode, 0, var_B8, var_D0, 0)
  loc_1444848:         If (var_B8 = &HFF) Then
  loc_144488E:           Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_94, 5, 0)
  loc_144489E:         End If
  loc_144489E:       End If
  loc_14448A1:     Else
  loc_14448A8:       If (var_D0 = CLng(3)) Then
  loc_14448EB:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_14448F9:           Call Proc_150_68_195468C(KeyCode, 0, var_B8, 3, 0)
  loc_1444904:           If (var_B8 = &HFF) Then
  loc_144494A:             Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_94, 5, 0)
  loc_144495A:           End If
  loc_144495A:         End If
  loc_144495D:       Else
  loc_1444964:         If (var_D0 = CLng(4)) Then
  loc_14449A7:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_14449B5:             Call Proc_150_68_195468C(KeyCode, 0, var_B8, 4, 0)
  loc_14449C0:             If (var_B8 = &HFF) Then
  loc_1444A06:               Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_94, 5, 0)
  loc_1444A16:             End If
  loc_1444A16:           End If
  loc_1444A16:         End If
  loc_1444A16:       End If
  loc_1444A16:     End If
  loc_1444A16:   End If
  loc_1444A16: End If
  loc_1444A16: Exit Sub
  loc_1444A17: ' Referenced from: 1443EF2
  loc_1444A17: Proc_6_60_E63754(0, 0, 0)
  loc_1444A1C: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10EDC4C
  'Data Table: 506780
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim arg_10 As Integer
  Dim var_E8 As Long
  loc_10ED92C: On Error Goto loc_10EDC44
  loc_10ED932: Proc_6_58_E06050(arg_10)
  loc_10ED93A: var_86 = KeyAscii
  loc_10ED943: If (var_86 = 0) Then
  loc_10ED959:   var_A0 = CLng(Me.FGrid.Col)
  loc_10ED969:   If (var_A0 = CLng(1)) Then
  loc_10ED988:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_10ED99A:       var_A4 = "Name"
  loc_10ED9B5:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_64, arg_10)
  loc_10ED9CF:       Set var_AC = Me.FGPoint
  loc_10ED9E7:       Proc_6_138_106E830(Me.DGRev, global_64, KeyAscii, var_AC)
  loc_10ED9F5:     End If
  loc_10ED9F8:   Else
  loc_10ED9FF:     If (var_A0 = CLng(6)) Then
  loc_10EDA2B:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_10EDA3B:         Set var_8C = Me.TxtGrid
  loc_10EDA41:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes", var_A4)
  loc_10EDA49:         var_AC.Text = 0
  loc_10EDA58:       Else
  loc_10EDA65:         Set var_8C = Me.TxtGrid
  loc_10EDA6B:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_10EDA73:         var_AC.Text = var_A0
  loc_10EDA7F:       End If
  loc_10EDA81:       arg_10 = 0
  loc_10EDA87:     Else
  loc_10EDA8E:       If Not (var_A0 = CLng(7)) Then
  loc_10EDA98:         If Not (var_A0 = CLng(8)) Then
  loc_10EDAA2:           If (var_A0 = CLng(&HF)) Then
  loc_10EDAA5:           End If
  loc_10EDAA5:         End If
  loc_10EDAAF:         Set var_8C = Me.TxtGrid
  loc_10EDAB5:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC)
  loc_10EDAD0:         Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_10EDADF:       Else
  loc_10EDAE6:         If (var_A0 = CLng(&HB)) Then
  loc_10EDAF3:           Set var_8C = Me.TxtGrid
  loc_10EDAF9:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 2)
  loc_10EDB14:           Proc_6_42_129B55C(var_AC, arg_10, 2)
  loc_10EDB23:         Else
  loc_10EDB2A:           If Not (var_A0 = CLng(5)) Then
  loc_10EDB34:             If (var_A0 = CLng(6)) Then
  loc_10EDB37:             End If
  loc_10EDB37:           End If
  loc_10EDB37:         End If
  loc_10EDB37:       End If
  loc_10EDB37:     End If
  loc_10EDB37:   End If
  loc_10EDB3A: Else
  loc_10EDB40:   If (var_86 = 1) Then
  loc_10EDB56:     var_E8 = CLng(Me.FGrid1.Col)
  loc_10EDB66:     If (var_E8 = CLng(1)) Then
  loc_10EDB85:       If (CBool(Me.DGTokenRev.Visible) = &HFF) Then
  loc_10EDBB2:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_68, arg_10, "Name")
  loc_10EDBCC:         Set var_AC = Me.FGPoint
  loc_10EDBE4:         Proc_6_138_106E830(Me.DGTokenRev, global_68, KeyAscii, var_AC, 0)
  loc_10EDBF2:       End If
  loc_10EDBF5:     Else
  loc_10EDBFC:       If (var_E8 = CLng(3)) Then
  loc_10EDC09:         Set var_8C = Me.TxtGrid
  loc_10EDC0F:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_E8)
  loc_10EDC2A:         Proc_6_42_129B55C(var_AC, arg_10, 8, 2)
  loc_10EDC39:       Else
  loc_10EDC40:         If (var_E8 = CLng(4)) Then
  loc_10EDC43:         End If
  loc_10EDC43:       End If
  loc_10EDC43:     End If
  loc_10EDC43:   End If
  loc_10EDC43: End If
  loc_10EDC43: Exit Sub
  loc_10EDC44: ' Referenced from: 10ED92C
  loc_10EDC44: Proc_6_60_E63754(0, arg_10)
  loc_10EDC49: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '11073B4
  'Data Table: 506780
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  Dim var_12C As Long
  loc_110707C: On Error Goto loc_11073AC
  loc_1107082: var_86 = KeyCode
  loc_110708B: If (var_86 = 0) Then
  loc_11070A1:   var_A0 = CLng(Me.FGrid.Col)
  loc_11070B1:   If (var_A0 = CLng(1)) Then
  loc_11070D7:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_11070E8:       Call TxtGrid_KeyDown(KeyCode, global_92)
  loc_11070F1:       Set var_AC = Me.TxtGrid
  loc_11070FC:       var_A8 = "Name"
  loc_1107117:       Proc_6_89_1470B00(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_1107126:     End If
  loc_1107129:   Else
  loc_1107130:     If Not (var_A0 = CLng(7)) Then
  loc_110713A:       If Not (var_A0 = CLng(&H12)) Then
  loc_1107144:         If Not (var_A0 = CLng(8)) Then
  loc_110714E:           If (var_A0 = CLng(&HF)) Then
  loc_1107151:           End If
  loc_1107151:         End If
  loc_1107151:       End If
  loc_110715B:       var_9C = Me.FGrid.Row
  loc_110718E:       Set var_8C = Me.TxtGrid
  loc_1107194:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_9C)))
  loc_110719C:       &HFF = var_AC.Text
  loc_11071AB:       var_114 = CVar(CStr(Val(var_A8))) 'String
  loc_11071B3:       Set var_128 = Me.FGrid
  loc_11071B9:       LateIdCallSt
  loc_11071DA:     End If
  loc_11071DA:   End If
  loc_11071DD:   Call Proc_150_70_101F6D4(var_9C, var_128, var_114)
  loc_11071E8: Else
  loc_11071EE:   If (var_86 = 1) Then
  loc_1107204:     var_12C = CLng(Me.FGrid1.Col)
  loc_1107214:     If (var_12C = CLng(1)) Then
  loc_110723A:       If ((Shift <> &HD) And (CBool(Me.DGTokenRev.Visible) = 0)) Then
  loc_110724B:         Call TxtGrid_KeyDown(KeyCode, global_92)
  loc_1107254:         Set var_AC = Me.TxtGrid
  loc_110725F:         var_A8 = "Name"
  loc_110727A:         Proc_6_89_1470B00(var_AC, KeyCode, global_68, Shift, var_A8, &HFF)
  loc_1107289:       End If
  loc_110728C:     Else
  loc_1107293:       If (var_12C = CLng(3)) Then
  loc_11072D3:         Set var_8C = Me.TxtGrid
  loc_11072D9:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))
  loc_11072E1:         0 = var_AC.Text
  loc_11072F0:         var_114 = CVar(CStr(Val(var_A8))) 'String
  loc_11072F8:         Set var_128 = Me.FGrid1
  loc_11072FE:         LateIdCallSt
  loc_1107322:       Else
  loc_1107329:         If (var_12C = CLng(4)) Then
  loc_1107369:           Set var_8C = Me.TxtGrid
  loc_110736F:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_128)
  loc_1107377:           var_114 = var_AC.Text
  loc_110737F:           var_114 = CVar(var_A8) 'String
  loc_1107387:           Set var_128 = Me.FGrid1
  loc_110738D:           LateIdCallSt
  loc_11073AB:         End If
  loc_11073AB:       End If
  loc_11073AB:     End If
  loc_11073AB:   End If
  loc_11073AB: End If
  loc_11073AB: Exit Sub
  loc_11073AC: ' Referenced from: 110707C
  loc_11073AC: Proc_6_60_E63754(var_128, var_114, var_12C)
  loc_11073B1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5321C
  'Data Table: 506780
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E531E0: On Error Goto loc_E53213
  loc_E531E6: var_86 = Cancel
  loc_E531EF: If Not (var_86 = 0) Then
  loc_E531F8:   If (var_86 = 1) Then
  loc_E531FB:   End If
  loc_E53206:   Call Proc_150_68_195468C(Cancel, &HFF)
  loc_E5320F:   arg_10 = Not(var_8A)
  loc_E53212: End If
  loc_E53212: Exit Sub
  loc_E53213: ' Referenced from: E531E0
  loc_E53213: Proc_6_60_E63754(arg_10, var_8A)
  loc_E53218: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '126F68C
  'Data Table: 506780
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_AC As String
  Dim var_88 As ListView
  Dim var_8C As TextBox
  loc_126F10E: Set var_88 = Me.Txt
  loc_126F114: Call 0.Method_Txt_GotFocus0 (Index)
  loc_126F122: Proc_6_74_E23240(var_8C)
  loc_126F131: var_92 = Index
  loc_126F13C: If (var_92 = CInt(0)) Then
  loc_126F156:   If (Me.RecordCount > 0) Then
  loc_126F164:     Set var_8C = Me.FGPoint
  loc_126F17C:     Proc_6_137_1192FDC(Me.DGHelp, global_60, Index)
  loc_126F18A:   End If
  loc_126F18D: Else
  loc_126F195:   If (var_92 = CInt(&HF)) Then
  loc_126F1A5:     ReDim var_9C(0 To 3)
  loc_126F1BC:     var_9C(0) = "E.P."
  loc_126F1CB:     var_9C(1) = "C.P."
  loc_126F1DA:     var_9C(2) = "M.A.P."
  loc_126F1E9:     var_9C(3) = "A.P."
  loc_126F219:     Me.ListView.Tag = CVar(CStr(&HF))
  loc_126F25D:     Set global_124 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index, Array(var_9C), 4)
  loc_126F271:   Else
  loc_126F279:     If (var_92 = CInt(7)) Then
  loc_126F289:       ReDim var_9C(0 To 2)
  loc_126F2A0:       var_9C(0) = "Disc Post On Room"
  loc_126F2AF:       var_9C(1) = "Disc On Food"
  loc_126F2BE:       var_9C(2) = "Disc on Both"
  loc_126F2D5:       global_108 = Array(var_9C)
  loc_126F2EE:       Me.ListView.Tag = CVar(CStr(7))
  loc_126F332:       Set global_124 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index, global_108, 3)
  loc_126F346:     Else
  loc_126F34E:       If (var_92 = CInt(&HE)) Then
  loc_126F368:         If (Me.RecordCount > 0) Then
  loc_126F376:           Set var_8C = Me.FGPoint
  loc_126F38E:           Proc_6_137_1192FDC(Me.DGRoomCat, global_76, Index, var_8C, global_108)
  loc_126F39C:         End If
  loc_126F3EA:         Set var_88 = Me.Txt
  loc_126F3F0:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_126F3F8:         global_108 = var_8C.Text
  loc_126F410:         If (var_8C Or (var_100 = vbNullString)) Then
  loc_126F413:           Exit Sub
  loc_126F414:         End If
  loc_126F421:         Set var_88 = Me.Txt
  loc_126F427:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_126F42F:         var_92 = var_8C.Text
  loc_126F441:         var_AC = "Name"
  loc_126F47C:         If CBool(CVar(var_100) <> Me.Fields.Item(var_AC).Value) Then
  loc_126F485:           Me.MoveFirst
  loc_126F4A8:           Set var_88 = Me.Txt
  loc_126F4AE:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_126F4B6:           0 = var_8C.Text
  loc_126F4CF:           Me.Find 1 & var_100 & "'", var_AC, var_8C
  loc_126F4E4:         End If
  loc_126F4E7:       Else
  loc_126F4EF:         If (var_92 = CInt(&H11)) Then
  loc_126F509:           If (Me.RecordCount > 0) Then
  loc_126F517:             Set var_8C = Me.FGPoint
  loc_126F52F:             Proc_6_137_1192FDC(Me.DGTaxStru, global_80)
  loc_126F53D:           End If
  loc_126F58B:           Set var_88 = Me.Txt
  loc_126F591:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_126F599:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_126F5B1:           If (Index Or (var_100 = vbNullString)) Then
  loc_126F5B4:             Exit Sub
  loc_126F5B5:           End If
  loc_126F5C2:           Set var_88 = Me.Txt
  loc_126F5C8:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126F5D0:           var_100 = var_8C.Text
  loc_126F5E2:           var_AC = "Name"
  loc_126F61D:           If CBool(CVar(var_100) <> Me.Fields.Item(var_AC).Value) Then
  loc_126F626:             Me.MoveFirst
  loc_126F649:             Set var_88 = Me.Txt
  loc_126F64F:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_126F657:             0 = var_8C.Text
  loc_126F670:             Me.Find 1 & var_100 & "'", var_AC, var_8C
  loc_126F685:           End If
  loc_126F685:         End If
  loc_126F685:       End If
  loc_126F685:     End If
  loc_126F685:   End If
  loc_126F685: End If
  loc_126F685: Call Proc_150_61_F205D4()
  loc_126F68A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '137D230
  'Data Table: 506780
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C4 As TextBox
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_A8 As Frame
  loc_137C9D4: If (CLng(Shift) = &H1B) Then
  loc_137C9D7:   Call Proc_150_61_F205D4(Shift)
  loc_137C9DC:   Exit Sub
  loc_137C9DD: End If
  loc_137C9E0: var_88 = KeyCode
  loc_137C9EB: If (var_88 = CInt(0)) Then
  loc_137CA10:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_137CA30:     Set var_9C = Me.FGPoint
  loc_137CA5E:     Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_60, Shift)
  loc_137CA72:   End If
  loc_137CACB:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_137CAF1:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint, 0)
  loc_137CAFF:   End If
  loc_137CB02: Else
  loc_137CB0A:   If (var_88 = CInt(&HE)) Then
  loc_137CB35:     Set var_9C = Nothing
  loc_137CB67:     Proc_6_69_134A630(Me.DGRoomCat, Me.Txt, CInt(&HE), global_76, Shift, 0, 1)
  loc_137CBD6:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_137CBDD:       Set var_9C = Me.DGRoomCat
  loc_137CBFC:       Proc_6_138_106E830(var_9C, global_76, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_137CC0A:     End If
  loc_137CC0D:   Else
  loc_137CC15:     If (var_88 = CInt(&H11)) Then
  loc_137CC23:       Set var_AC = Me.Txt
  loc_137CC35:       Set var_A4 = Me.FGPoint
  loc_137CC72:       Proc_6_69_134A630(Me.DGTaxStru, var_AC, CInt(&H11), global_80, Shift, 0, 1, Nothing)
  loc_137CC91:       var_8C = Me.RecordCount
  loc_137CCE1:       If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_137CCEF:         Set var_94 = Me.FGPoint
  loc_137CD07:         Proc_6_138_106E830(Me.DGTaxStru, global_80, KeyCode, var_94, var_A4, 0)
  loc_137CD15:       End If
  loc_137CD18:     Else
  loc_137CD20:       If (var_88 = CInt(4)) Then
  loc_137CD2E:         Set var_90 = Me.Txt
  loc_137CD34:         Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, 0, 1)
  loc_137CD4F:         Proc_6_41_FA1734(var_94, Shift, 2, 5)
  loc_137CD69:         Set var_90 = Me.Txt
  loc_137CD6F:         Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, var_B8)
  loc_137CD77:         var_9C = var_94.Text
  loc_137CDA5:         If ((CDbl(Val(var_B8)) = CDbl(0)) And ((Shift = &HD) Or (CLng(Shift) = 9))) Then
  loc_137CDB3:           Set var_90 = Me.Txt
  loc_137CDB9:           Call 0.Method_Txt_KeyDown0 (CInt(8), var_94)
  loc_137CDC1:           var_94.SetFocus
  loc_137CDCD:           Exit Sub
  loc_137CDCE:         End If
  loc_137CDD1:       Else
  loc_137CDD9:         If Not (var_88 = CInt(8)) Then
  loc_137CDE4:           If (var_88 = CInt(5)) Then
  loc_137CDE7:           End If
  loc_137CDF1:           Set var_90 = Me.Txt
  loc_137CDF7:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_137CE12:           Proc_6_41_FA1734(var_94, Shift, 7)
  loc_137CE21:         Else
  loc_137CE29:           If Not (var_88 = CInt(9)) Then
  loc_137CE34:             If Not (var_88 = CInt(&HA)) Then
  loc_137CE3F:               If (var_88 = CInt(&HB)) Then
  loc_137CE42:               End If
  loc_137CE42:             End If
  loc_137CE4C:             Set var_90 = Me.Txt
  loc_137CE52:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 2)
  loc_137CE6D:             Proc_6_41_FA1734(var_94, Shift, 2)
  loc_137CE7C:           Else
  loc_137CE84:             If (var_88 = CInt(&HF)) Then
  loc_137CEA9:               Set var_90 = Me.Txt
  loc_137CEAF:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C)
  loc_137CEB7:               0 = var_94.Left
  loc_137CEC9:               Set var_9C = Me.Txt
  loc_137CECF:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_BC)
  loc_137CED7:               0 = var_A4.Top
  loc_137CEE9:               Set var_A8 = Me.Txt
  loc_137CEEF:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_137CEF7:               var_C0 = var_AC.Height
  loc_137CF09:               Set var_B4 = Me.Txt
  loc_137CF0F:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C4)
  loc_137CF17:               var_C8 = var_C4.Width
  loc_137CF5F:               Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_137CF86:             Else
  loc_137CF8E:               If (var_88 = CInt(7)) Then
  loc_137CFB3:                 Set var_90 = Me.Txt
  loc_137CFB9:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_137CFC1:                 CInt((var_BC + var_C0)) = var_94.Left
  loc_137CFD3:                 Set var_9C = Me.Txt
  loc_137CFD9:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_BC)
  loc_137CFE1:                 CInt(var_C8) = var_A4.Top
  loc_137CFF3:                 Set var_A8 = Me.Txt
  loc_137CFF9:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_C0)
  loc_137D001:                 1200 = var_AC.Height
  loc_137D013:                 Set var_B4 = Me.Txt
  loc_137D019:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_C4)
  loc_137D021:                 var_C8 = var_C4.Width
  loc_137D069:                 Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_137D090:               Else
  loc_137D098:                 If (var_88 = CInt(6)) Then
  loc_137D0A5:                   Set var_90 = Me.Txt
  loc_137D0AB:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, CInt(var_8C), CInt((var_BC + var_C0)))
  loc_137D0E6:                   If (Left(Ucase(CVar(var_94)), 1) = "Y") Then
  loc_137D0F6:                     Set var_90 = Me.Txt
  loc_137D0FC:                     Call 0.Method_Txt_KeyDown0 (CInt(7), var_94, &HFF)
  loc_137D104:                     var_94.Enabled = CInt(var_C8)
  loc_137D113:                   Else
  loc_137D120:                     Set var_90 = Me.Txt
  loc_137D126:                     Call 0.Method_Txt_KeyDown0 (CInt(7), var_94, 0)
  loc_137D12E:                     var_94.Enabled = True
  loc_137D148:                     Set var_90 = Me.Txt
  loc_137D14E:                     Call 0.Method_Txt_KeyDown0 (CInt(7), var_94)
  loc_137D156:                     var_94.Text = vbNullString
  loc_137D162:                   End If
  loc_137D162:                 End If
  loc_137D162:               End If
  loc_137D162:             End If
  loc_137D162:           End If
  loc_137D162:         End If
  loc_137D162:       End If
  loc_137D162:     End If
  loc_137D162:   End If
  loc_137D162: End If
  loc_137D1EE: If (((((CBool(Me.DGRoomCat.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) And (CBool(Me.DGRev.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_137D206:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_137D20F:     Proc_6_75_E5335C(Shift, arg_14)
  loc_137D214:   End If
  loc_137D21E:   If (CLng(Shift) = &H26) Then
  loc_137D227:     Proc_6_76_E533C8(Shift, arg_14)
  loc_137D22C:   End If
  loc_137D22C: End If
  loc_137D22C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '115FC9C
  'Data Table: 506780
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As Variant
  loc_115F8EA: Proc_6_133_E7FB08(var_94)
  loc_115F8FF: If (CInt(var_94) = &HD) Then
  loc_115F904:   arg_10 = 0
  loc_115F907: End If
  loc_115F90A: Proc_6_58_E06050(arg_10, arg_10)
  loc_115F912: var_96 = KeyAscii
  loc_115F91D: If (var_96 = CInt(&HE)) Then
  loc_115F93C:   If (CBool(Me.DGRoomCat.Visible) = &HFF) Then
  loc_115F969:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_115F99B:     Proc_6_138_106E830(Me.DGRoomCat, global_76, KeyAscii, Me.FGPoint)
  loc_115F9A9:   End If
  loc_115F9AC: Else
  loc_115F9B4:   If (var_96 = CInt(&H11)) Then
  loc_115F9D3:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_115FA00:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_115FA1A:       Set var_A8 = Me.FGPoint
  loc_115FA32:       Proc_6_138_106E830(Me.DGTaxStru, global_80, KeyAscii, var_A8, 0)
  loc_115FA40:     End If
  loc_115FA43:   Else
  loc_115FA4B:     If Not (var_96 = CInt(3)) Then
  loc_115FA56:       If Not (var_96 = CInt(6)) Then
  loc_115FA61:         If (var_96 = CInt(&HD)) Then
  loc_115FA64:         End If
  loc_115FA64:       End If
  loc_115FA8D:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_115FA9D:         Set var_9C = Me.Txt
  loc_115FAA3:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes", 0)
  loc_115FAAB:         var_A8.Text = var_96
  loc_115FABA:       Else
  loc_115FAE3:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_115FAF3:           Set var_9C = Me.Txt
  loc_115FAF9:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_115FB01:           var_A8.Text = arg_10
  loc_115FB0D:         End If
  loc_115FB0D:       End If
  loc_115FB15:       If (KeyAscii = CInt(&HD)) Then
  loc_115FB22:         Set var_9C = Me.Txt
  loc_115FB28:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_115FB51:         If (Trim(CVar(var_A8)) = "Yes") Then
  loc_115FB60:           Set var_9C = Me.Label1
  loc_115FB66:           Call 0.Method_Txt_KeyPress0 (&HC, var_A8)
  loc_115FB6E:           var_A8.Caption = "Net Room Rate"
  loc_115FB7D:         Else
  loc_115FB89:           Set var_9C = Me.Label1
  loc_115FB8F:           Call 0.Method_Txt_KeyPress0 (&HC, var_A8)
  loc_115FB97:           var_A8.Caption = "Room Rate"
  loc_115FBA3:         End If
  loc_115FBA3:       End If
  loc_115FBA5:       arg_10 = 0
  loc_115FBAB:     Else
  loc_115FBB3:       If (var_96 = CInt(4)) Then
  loc_115FBC0:         Set var_9C = Me.Txt
  loc_115FBC6:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_115FBE1:         Proc_6_42_129B55C(var_A8, arg_10, 2)
  loc_115FBF0:       Else
  loc_115FBF8:         If Not (var_96 = CInt(8)) Then
  loc_115FC03:           If (var_96 = CInt(5)) Then
  loc_115FC06:           End If
  loc_115FC10:           Set var_9C = Me.Txt
  loc_115FC16:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 5)
  loc_115FC31:           Proc_6_42_129B55C(var_A8, arg_10, 7)
  loc_115FC40:         Else
  loc_115FC48:           If Not (var_96 = CInt(9)) Then
  loc_115FC53:             If Not (var_96 = CInt(&HA)) Then
  loc_115FC5E:               If (var_96 = CInt(&HB)) Then
  loc_115FC61:               End If
  loc_115FC61:             End If
  loc_115FC6B:             Set var_9C = Me.Txt
  loc_115FC71:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_115FC8C:             Proc_6_42_129B55C(var_A8, arg_10, 2)
  loc_115FC98:           End If
  loc_115FC98:         End If
  loc_115FC98:       End If
  loc_115FC98:     End If
  loc_115FC98:   End If
  loc_115FC98: End If
  loc_115FC98: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '12AC904
  'Data Table: 506780
  Dim var_96 As Integer
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim var_128 As Double
  Dim var_C4 As TextBox
  Dim var_130 As Double
  Dim var_D0 As TextBox
  Dim var_138 As Double
  Dim var_11C As TextBox
  Dim var_D4 As String
  loc_12AC2FF: var_96 = KeyCode
  loc_12AC30A: If (var_96 = CInt(0)) Then
  loc_12AC341:   If ((CBool(Me.DGHelp.Visible) = &HFF) And (Me.RecordCount > 0)) Then
  loc_12AC34E:     var_B4 = "Name"
  loc_12AC369:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_60)
  loc_12AC39B:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_12AC3A9:   End If
  loc_12AC3AC: Else
  loc_12AC3B4:   If (var_96 = CInt(&HF)) Then
  loc_12AC3D2:     If (Me.FrmList.Visible = &HFF) Then
  loc_12AC401:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_12AC411:     End If
  loc_12AC414:   Else
  loc_12AC41C:     If (var_96 = CInt(7)) Then
  loc_12AC43A:       If (Me.FrmList.Visible = &HFF) Then
  loc_12AC448:         Set var_C4 = Me.Txt
  loc_12AC45A:         Set var_B8 = var_C4
  loc_12AC469:         Proc_6_64_F299E8(Me.ListView, var_B8, KeyCode, Shift, global_124)
  loc_12AC479:       End If
  loc_12AC47C:     Else
  loc_12AC484:       If (var_96 = CInt(8)) Then
  loc_12AC495:         Set var_9C = Me.Txt
  loc_12AC49B:         Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8, var_B4, global_124)
  loc_12AC4A3:         Shift = var_B8.Text
  loc_12AC4BF:         If (CDbl(Val(var_B4)) > CDbl(0)) Then
  loc_12AC4D0:           Set var_9C = Me.Txt
  loc_12AC4D6:           Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8, var_B4)
  loc_12AC4EB:           var_128 = Val(var_B8.Text)
  loc_12AC4FC:           Set var_BC = Me.Txt
  loc_12AC502:           Call 0.Method_Txt_KeyUp0 (CInt(9), var_C4, var_C8)
  loc_12AC517:           var_130 = Val(var_C8)
  loc_12AC528:           Set var_CC = Me.Txt
  loc_12AC52E:           Call 0.Method_Txt_KeyUp0 (CInt(5), var_D0, var_D4)
  loc_12AC543:           var_138 = Val(var_D4)
  loc_12AC588:           Set var_118 = Me.Txt
  loc_12AC58E:           Call 0.Method_Txt_KeyUp0 (CInt(4), var_11C, CStr(Format(CVar((((var_C4.Text * var_D0.Text) * CDbl(&H64)) / var_138)), "0.00000")), 1)
  loc_12AC596:           var_11C.Text = 1
  loc_12AC5C5:         Else
  loc_12AC5D3:           Set var_9C = Me.Txt
  loc_12AC5D9:           Call 0.Method_Txt_KeyUp0 (CInt(4), var_B8, "0.00000")
  loc_12AC5E1:           var_B8.Text = var_138
  loc_12AC5ED:         End If
  loc_12AC5FB:         Set var_9C = Me.Txt
  loc_12AC601:         Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8)
  loc_12AC616:         var_128 = Val(var_B8.Tag)
  loc_12AC627:         Set var_BC = Me.Txt
  loc_12AC62D:         Call 0.Method_Txt_KeyUp0 (CInt(9), var_C4, var_C8)
  loc_12AC642:         var_130 = Val(var_C8)
  loc_12AC661:         var_AC = CVar((var_C4.Text * var_130)) 'Double
  loc_12AC670:         var_D4 = CStr(Format(var_AC, "0.00"))
  loc_12AC67F:         Set var_CC = Me.Txt
  loc_12AC685:         Call 0.Method_Txt_KeyUp0 (CInt(&HC), var_D0, var_D4, 1)
  loc_12AC68D:         var_D0.Text = 1
  loc_12AC6B6:         Call Proc_150_70_101F6D4(var_AC, var_130)
  loc_12AC6C1:       Else
  loc_12AC6C9:         If (var_96 = CInt(4)) Then
  loc_12AC6DA:           Set var_9C = Me.Txt
  loc_12AC6E0:           Call 0.Method_Txt_KeyUp0 (CInt(4), var_B8)
  loc_12AC704:           If (CDbl(Val(var_B8.Text)) > CDbl(0)) Then
  loc_12AC715:             Set var_9C = Me.Txt
  loc_12AC71B:             Call 0.Method_Txt_KeyUp0 (CInt(4), var_B8)
  loc_12AC730:             var_128 = Val(var_B8.Text)
  loc_12AC741:             Set var_BC = Me.Txt
  loc_12AC747:             Call 0.Method_Txt_KeyUp0 (CInt(5), var_C4, var_C8)
  loc_12AC75C:             var_130 = Val(var_C8)
  loc_12AC76D:             Set var_CC = Me.Txt
  loc_12AC773:             Call 0.Method_Txt_KeyUp0 (CInt(9), var_D0, var_D4)
  loc_12AC788:             var_138 = Val(var_D4)
  loc_12AC7CD:             Set var_118 = Me.Txt
  loc_12AC7D3:             Call 0.Method_Txt_KeyUp0 (CInt(8), var_11C, CStr(Format(CVar(((var_C4.Text * (var_D0.Text / var_138)) / CDbl(&H64))), "0")), 1)
  loc_12AC7DB:             var_11C.Text = 1
  loc_12AC80A:           Else
  loc_12AC818:             Set var_9C = Me.Txt
  loc_12AC81E:             Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8, "0.00")
  loc_12AC826:             var_B8.Text = var_138
  loc_12AC832:           End If
  loc_12AC840:           Set var_9C = Me.Txt
  loc_12AC846:           Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8)
  loc_12AC85B:           var_128 = Val(var_B8.Text)
  loc_12AC86C:           Set var_BC = Me.Txt
  loc_12AC872:           Call 0.Method_Txt_KeyUp0 (CInt(9), var_C4, var_C8)
  loc_12AC887:           var_130 = Val(var_C8)
  loc_12AC8A6:           var_AC = CVar((var_C4.Text * var_130)) 'Double
  loc_12AC8C4:           Set var_CC = Me.Txt
  loc_12AC8CA:           Call 0.Method_Txt_KeyUp0 (CInt(&HC), var_D0, CStr(Format(var_AC, "0.00")), 1)
  loc_12AC8D2:           var_D0.Text = 1
  loc_12AC8FB:           Call Proc_150_70_101F6D4(var_AC, var_130)
  loc_12AC903:         End If
  loc_12AC903:       End If
  loc_12AC903:     End If
  loc_12AC903:   End If
  loc_12AC903: End If
  loc_12AC903: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AE34
  'Data Table: 506780
  loc_E4AE12: Set var_88 = Me.Txt
  loc_E4AE18: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AE26: Proc_6_73_E23294(var_8C)
  loc_E4AE32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13F1FA0
  'Data Table: 506780
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_C4 As Variant
  Dim var_F8 As Variant
  Dim unk_5067A8 As Connection15
  Dim var_130 As Variant
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim arg_10 As Integer
  Dim var_158 As Variant
  Dim var_B0 As Recordset15
  loc_13F15B3: var_88 = Cancel
  loc_13F15BE: If (var_88 = CInt(&HE)) Then
  loc_13F160F:   Set var_94 = Me.Txt
  loc_13F1615:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_13F161D:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_13F1635:   If (var_88 Or (var_9C = vbNullString)) Then
  loc_13F1638:     Exit Sub
  loc_13F1639:   End If
  loc_13F1674:   Set var_B0 = Me.Txt
  loc_13F167A:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13F1682:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13F16B5:   var_98 = Me.Fields.Item("Code")
  loc_13F16D3:   Set var_B0 = Me.Txt
  loc_13F16D9:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13F16E1:   var_B4.Tag = CStr(var_98.Value)
  loc_13F16FA: Else
  loc_13F1702:   If (var_88 = CInt(&H11)) Then
  loc_13F1753:     Set var_94 = Me.Txt
  loc_13F1759:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F1779:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_13F1789:       Set var_94 = Me.Txt
  loc_13F178F:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F1797:       var_98.Tag = vbNullString
  loc_13F17A3:       Exit Sub
  loc_13F17A4:     End If
  loc_13F17DF:     Set var_B0 = Me.Txt
  loc_13F17E5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13F17ED:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13F1820:     var_98 = Me.Fields.Item("Code")
  loc_13F183E:     Set var_B0 = Me.Txt
  loc_13F1844:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13F184C:     var_B4.Tag = CStr(var_98.Value)
  loc_13F1865:   Else
  loc_13F186D:     If (var_88 = CInt(0)) Then
  loc_13F1887:       If (Me.RecordCount = 0) Then
  loc_13F188A:         Exit Sub
  loc_13F188B:       End If
  loc_13F1899:       Set var_94 = Me.Txt
  loc_13F189F:       Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_13F18BE:       If (var_98.Text <> vbNullString) Then
  loc_13F18C5:         Set var_94 = Me.TopCtrl1
  loc_13F18CB:         Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_13F18D3:         var_9C = CStr()
  loc_13F18E4:         If (var_9C = "Add") Then
  loc_13F1914:           Set var_94 = Me.Txt
  loc_13F191A:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_12C, -1)
  loc_13F1922:           var_130 = var_98.Text
  loc_13F1932:           var_E8 = CVar(var_134 & var_9C & "' and App_Date=") 'String
  loc_13F1940:           Set var_B0 = Me.Txt
  loc_13F1946:           Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_E8)
  loc_13F1955:           Proc_6_7_F26918(var_D8, CVar(var_B4), 0)
  loc_13F195D:           var_F8 = var_148 & var_D8 
  loc_13F1974:           unk_5067A8.Execute CStr(var_F8 & vbNullString), var_158, 
  loc_13F197C:            = var_130.Fields
  loc_13F1984:            = var_134.Item()
  loc_13F198C:            = var_148.Value
  loc_13F19C5:           If (var_158 > 0) Then
  loc_13F19D3:             var_D8 = "Information"
  loc_13F19E9:             MsgBox("Duplicate Name", &H40, var_D8, var_E8, var_F8)
  loc_13F1A04:             Set var_94 = Me.Txt
  loc_13F1A0A:             Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13F1A12:             var_98.SetFocus
  loc_13F1A20:             arg_10 = &HFF
  loc_13F1A23:             Exit Sub
  loc_13F1A24:           End If
  loc_13F1A27:         Else
  loc_13F1A54:           Set var_94 = Me.Txt
  loc_13F1A5A:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_178, -1, var_130)
  loc_13F1A62:           var_134 = var_98.Text
  loc_13F1A83:           var_E8 = CVar(0 & var_9C & "' And Name<>'" & global_84 & "' And App_Date=") 'String
  loc_13F1A91:           Set var_B0 = Me.Txt
  loc_13F1A97:           Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_E8, var_148)
  loc_13F1AA6:           Proc_6_7_F26918(var_D8, CVar(var_B4), var_190)
  loc_13F1AAE:           var_F8 = arg_10 & var_D8 
  loc_13F1AC9:           Proc_6_7_F26918(var_12C, global_88)
  loc_13F1AD1:           var_158 = var_F8 & " And App_date<>" & var_12C 
  loc_13F1ADF:           unk_5067A8.Execute CStr(var_158), var_98, 
  loc_13F1AE7:            = var_130.Fields
  loc_13F1AEF:            = var_134.Item()
  loc_13F1AF7:            = var_148.Value
  loc_13F1B38:           If (var_190 > 0) Then
  loc_13F1B46:             var_D8 = "Information"
  loc_13F1B5C:             MsgBox("Duplicate Name", &H40, var_D8, var_E8, var_F8)
  loc_13F1B77:             Set var_94 = Me.Txt
  loc_13F1B7D:             Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13F1B85:             var_98.SetFocus
  loc_13F1B93:             arg_10 = &HFF
  loc_13F1B96:             Exit Sub
  loc_13F1B97:           End If
  loc_13F1B97:         End If
  loc_13F1B97:       End If
  loc_13F1B9A:     Else
  loc_13F1BA2:       If (var_88 = CInt(2)) Then
  loc_13F1BAF:         Set var_94 = Me.Txt
  loc_13F1BB5:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F1BD5:         Set var_B4 = Me.Txt
  loc_13F1BDB:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_13F1BE3:         var_130.Text = Proc_6_33_15125B8(var_98, arg_10)
  loc_13F1C03:         Set var_94 = Me.Txt
  loc_13F1C09:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F1C11:         var_9C = var_98.Text
  loc_13F1C28:         If (var_9C = vbNullString) Then
  loc_13F1C2D:           arg_10 = &HFF
  loc_13F1C30:           Exit Sub
  loc_13F1C31:         End If
  loc_13F1C3F:         Set var_94 = Me.Txt
  loc_13F1C45:         Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C)
  loc_13F1C4D:         arg_10 = var_98.Text
  loc_13F1C64:         If (var_9C <> vbNullString) Then
  loc_13F1C6B:           Set var_94 = Me.TopCtrl1
  loc_13F1C71:           Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_13F1C79:           var_9C = CStr()
  loc_13F1C8A:           If (var_9C = "Add") Then
  loc_13F1CBA:             Set var_94 = Me.Txt
  loc_13F1CC0:             Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_12C, -1)
  loc_13F1CC8:             var_130 = var_98.Text
  loc_13F1CD8:             var_E8 = CVar(var_134 & var_9C & "' and App_date=") 'String
  loc_13F1CE6:             Set var_B0 = Me.Txt
  loc_13F1CEC:             Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_E8)
  loc_13F1CFB:             Proc_6_7_F26918(var_D8, CVar(var_B4), 0)
  loc_13F1D03:             var_F8 = var_148 & var_D8 
  loc_13F1D1A:             unk_5067A8.Execute CStr(var_F8 & vbNullString), var_158, 
  loc_13F1D22:              = var_130.Fields
  loc_13F1D2A:              = var_134.Item()
  loc_13F1D32:              = var_148.Value
  loc_13F1D6B:             If (var_158 > 0) Then
  loc_13F1D79:               var_D8 = "Information"
  loc_13F1D89:               var_C4 = "Duplicate Name"
  loc_13F1D8F:               MsgBox(var_C4, &H40, var_D8, var_E8, var_F8)
  loc_13F1DAA:               Set var_94 = Me.Txt
  loc_13F1DB0:               Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13F1DB8:               var_98.SetFocus
  loc_13F1DC6:               arg_10 = &HFF
  loc_13F1DC9:               Exit Sub
  loc_13F1DCA:             End If
  loc_13F1DCD:           Else
  loc_13F1DFA:             Set var_94 = Me.Txt
  loc_13F1E00:             Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_C4, -1, var_B0)
  loc_13F1E32:             unk_5067A8.Execute 0 & var_9C & "' And Name<>'" & global_84 & "'", var_130, var_D8
  loc_13F1E3A:             arg_10 = var_B0.Fields
  loc_13F1E42:              = var_98.Text.Item(var_98)
  loc_13F1E4A:              = var_130.Value
  loc_13F1E7B:             If (var_D8 > 0) Then
  loc_13F1E9F:               MsgBox("Duplicate Name", &H40, "Information", var_E8, var_F8)
  loc_13F1EBA:               Set var_94 = Me.Txt
  loc_13F1EC0:               Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13F1EC8:               var_98.SetFocus
  loc_13F1ED6:               arg_10 = &HFF
  loc_13F1ED9:               Exit Sub
  loc_13F1EDA:             End If
  loc_13F1EDA:           End If
  loc_13F1EDA:         End If
  loc_13F1EDD:       Else
  loc_13F1EE5:         If Not (var_88 = CInt(3)) Then
  loc_13F1EF0:           If Not (var_88 = CInt(6)) Then
  loc_13F1EFB:             If (var_88 = CInt(&HD)) Then
  loc_13F1EFE:             End If
  loc_13F1EFE:           End If
  loc_13F1F08:           Set var_94 = Me.Txt
  loc_13F1F0E:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F1F49:           If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_13F1F59:             Set var_94 = Me.Txt
  loc_13F1F5F:             Call 0.Method_Txt_Validate0 (Cancel, var_98, "Yes")
  loc_13F1F67:             var_98.Text = arg_10
  loc_13F1F76:           Else
  loc_13F1F83:             Set var_94 = Me.Txt
  loc_13F1F89:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F1F91:             var_98.Text = "No"
  loc_13F1F9D:           End If
  loc_13F1F9D:         End If
  loc_13F1F9D:       End If
  loc_13F1F9D:     End If
  loc_13F1F9D:   End If
  loc_13F1F9D: End If
  loc_13F1F9D: Exit Sub
End Sub

Private Sub DGRev_UnknownEvent_9 'F52B3C
  'Data Table: 506780
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F52A37: If (Me.RecordCount > 0) Then
  loc_F52A5D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_F52A7D:     var_B4 = Me.Fields.Item("Name")
  loc_F52A9A:     Set var_B8 = Me.TxtGrid
  loc_F52AA0:     Call 0.Method_DGRev_UnknownEvent_90 (0, var_BC)
  loc_F52AA8:     var_BC.Text = CStr(var_B4.Value)
  loc_F52ABE:   End If
  loc_F52ABE: End If
  loc_F52ACB: Call Proc_150_68_195468C(0, 0)
  loc_F52ADC: Set var_8C = Me.TxtGrid
  loc_F52AE2: Call 0.Method_DGRev_UnknownEvent_90 (0, var_B4, var_C2)
  loc_F52AEA: var_C6 = var_B4.Visible
  loc_F52AFC: If (var_C2 = &HFF) Then
  loc_F52B08:   Set var_8C = Me.TxtGrid
  loc_F52B0E:   Call 0.Method_DGRev_UnknownEvent_90 (0, var_B4)
  loc_F52B16:   var_B4.SetFocus
  loc_F52B22: End If
  loc_F52B31: Me.DGRev.Visible = False
  loc_F52B39: Exit Sub
End Sub

Private Sub DGRev_UnknownEvent_1F 'E596D4
  'Data Table: 506780
  Dim MeFF As Integer
  loc_E596A7: Set var_90 = Me.FGPoint
  loc_E596C3: Proc_6_138_106E830(Me.DGRev, global_64)
  loc_E596D1: Exit Sub
  loc_E596D2: MeFF = CInt(1)
End Sub

Private Sub ListView_UnknownEvent_13 'F57B14
  'Data Table: 506780
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F57A36: If (Me.ListView.ListItems.Count > 0) Then
  loc_F57A3D:   Set var_A8 = Me.ListView
  loc_F57A87:   Set var_C0 = Me.Txt
  loc_F57A8D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F57A95:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F57AB5: End If
  loc_F57AC1: Me.FrmList.Visible = False
  loc_F57AF1: Set var_9C = Me.Txt
  loc_F57AF7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F57AFF: var_A8.SetFocus
  loc_F57B13: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'EA8A84
  'Data Table: 506780
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA8A1F: If (CDbl(CLng(Me.FGrid1.BackColorSel)) = CDbl(global_104)) Then
  loc_EA8A35:   Me.FGrid1.Col = 1
  loc_EA8A3D: End If
  loc_EA8A50: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_EA8A63: Set var_88 = Me.TxtGrid
  loc_EA8A69: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_BC)
  loc_EA8A71: var_BC.Visible = False
  loc_EA8A7D: Call Proc_150_61_F205D4()
  loc_EA8A82: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E6DDCC
  'Data Table: 506780
  Dim var_8C As TextBox
  loc_E6DD87: Set var_88 = Me.TxtGrid
  loc_E6DD8D: Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_8C)
  loc_E6DD95: var_8C.Visible = False
  loc_E6DDA5: Set var_88 = Me.TopCtrl1
  loc_E6DDAB: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E6DDC4: If (CStr() = "Browse") Then
  loc_E6DDC7:   Exit Sub
  loc_E6DDC8: End If
  loc_E6DDC8: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '1193CC0
  'Data Table: 506780
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11938C4: On Error Goto loc_1193CB7
  loc_11938CB: Set var_88 = Me.TopCtrl1
  loc_11938D1: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11938EA: If (CStr() = "Browse") Then
  loc_11938ED:   Exit Sub
  loc_11938EE: End If
  loc_1193962: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_1193978:   Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_1193988:   var_9C = "+{Tab}"
  loc_119398E:   Proc_303_0_FBACC8(CStr(Me.FGrid1.Tag), 0)
  loc_1193998:   Cancel = 0
  loc_119399E: Else
  loc_11939F5:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_1193A0B:     Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_1193A13:   End If
  loc_1193A13: End If
  loc_1193A19: global_92 = Cancel
  loc_1193A3F: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_1193A63: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1193A79:   var_EC = CLng(Me.FGrid1.Col)
  loc_1193A89:   If (var_EC = CLng(1)) Then
  loc_1193A9F:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1193AA7:     var_FC = CVar(CLng(1)) 'Long
  loc_1193AAC:     var_11C = vbNullString
  loc_1193AB6:     Set var_A0 = Me.FGrid1
  loc_1193ABC:     LateIdCallSt
  loc_1193AE1:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1193AE9:     var_FC = CVar(CLng(2)) 'Long
  loc_1193AEE:     var_11C = vbNullString
  loc_1193AF8:     Set var_A0 = Me.FGrid1
  loc_1193AFE:     LateIdCallSt
  loc_1193B23:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1193B2B:     var_FC = CVar(CLng(3)) 'Long
  loc_1193B30:     var_11C = vbNullString
  loc_1193B3A:     Set var_A0 = Me.FGrid1
  loc_1193B40:     LateIdCallSt
  loc_1193B65:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1193B6D:     var_FC = CVar(CLng(4)) 'Long
  loc_1193B72:     var_11C = vbNullString
  loc_1193B7C:     Set var_A0 = Me.FGrid1
  loc_1193B82:     LateIdCallSt
  loc_1193BA7:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1193BAF:     var_FC = CVar(CLng(5)) 'Long
  loc_1193BB4:     var_11C = vbNullString
  loc_1193BBE:     Set var_A0 = Me.FGrid1
  loc_1193BC4:     LateIdCallSt
  loc_1193BD9:   Else
  loc_1193BE0:     If (var_EC = CLng(3)) Then
  loc_1193BF6:       var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1193C0E:       var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1193C13:       var_11C = "0.00"
  loc_1193C1D:       Set var_B4 = Me.FGrid1
  loc_1193C23:       LateIdCallSt
  loc_1193C3E:     Else
  loc_1193C45:       If (var_EC = CLng(4)) Then
  loc_1193C5B:         var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1193C73:         var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1193C78:         var_11C = "0.00"
  loc_1193C82:         Set var_B4 = Me.FGrid1
  loc_1193C88:         LateIdCallSt
  loc_1193CA0:       End If
  loc_1193CA0:     End If
  loc_1193CA0:   End If
  loc_1193CA0: End If
  loc_1193CA6: If (Cancel = &HD) Then
  loc_1193CAE:   global_94 = 0
  loc_1193CB1: End If
  loc_1193CB3: Cancel = 0
  loc_1193CB6: Exit Sub
  loc_1193CB7: ' Referenced from: 11938C4
  loc_1193CB7: Proc_6_60_E63754(Cancel, global_94, var_B4, var_11C, var_FC, var_D4, var_B4, var_11C)
  loc_1193CBC: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'EFD62C
  'Data Table: 506780
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_EFD560: On Error Goto loc_EFD623
  loc_EFD567: Set var_88 = Me.TopCtrl1
  loc_EFD56D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EFD586: If (CStr() = "Browse") Then
  loc_EFD589:   Exit Sub
  loc_EFD58A: End If
  loc_EFD59D: var_A0 = CLng(Me.FGrid1.Col)
  loc_EFD5AD: If Not (var_A0 = CLng(1)) Then
  loc_EFD5B7:   If Not (var_A0 = CLng(3)) Then
  loc_EFD5C1:     If (var_A0 = CLng(4)) Then
  loc_EFD5C4:     End If
  loc_EFD5C4:   End If
  loc_EFD5DC:   var_9C = 0
  loc_EFD605:   Proc_6_61_1077158(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_EFD61A: End If
  loc_EFD61F: global_94 = 0
  loc_EFD622: Exit Sub
  loc_EFD623: ' Referenced from: EFD560
  loc_EFD623: Proc_6_60_E63754(global_94, var_9C)
  loc_EFD628: Exit Sub
  loc_EFD62B: 0 = var_A0
End Sub

Private Sub Fgrid1_UnknownEvent_C 'F6400C
  'Data Table: 506780
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F63EE8: On Error Goto loc_F64005
  loc_F63EEF: Set var_88 = Me.TopCtrl1
  loc_F63EF5: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F63F0E: If (CStr() = "Browse") Then
  loc_F63F11:   Exit Sub
  loc_F63F12: End If
  loc_F63F25: var_A0 = CLng(Me.FGrid1.Col)
  loc_F63F35: If (var_A0 = CLng(1)) Then
  loc_F63F76:   Proc_6_63_110B734(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_F63F8B: Else
  loc_F63F92:   If Not (var_A0 = CLng(3)) Then
  loc_F63F9C:     If (var_A0 = CLng(4)) Then
  loc_F63F9F:     End If
  loc_F63FDD:     Proc_6_63_110B734(Me, Me.FGrid1, Me.TxtGrid, 1, &HFF, Cancel)
  loc_F63FEF:   End If
  loc_F63FEF: End If
  loc_F63FF9: If (CLng(Cancel) <> &HD) Then
  loc_F64001:   global_94 = &HFF
  loc_F64004: End If
  loc_F64004: Exit Sub
  loc_F64005: ' Referenced from: F63EE8
  loc_F64005: Proc_6_60_E63754(global_94, 0, 0)
  loc_F6400A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FDDA00
  'Data Table: 506780
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FDD82C: On Error Goto loc_FDD9F9
  loc_FDD833: Set var_8C = Me.TopCtrl1
  loc_FDD839: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FDD852: If (CStr() = "Browse") Then
  loc_FDD855:   Exit Sub
  loc_FDD856: End If
  loc_FDD873: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FDD876:   Exit Sub
  loc_FDD877: End If
  loc_FDD888: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FDD8AA:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_FDD8E4:     If (MsgBox("Delete for Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FDD906:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FDD91C:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FDD925:         Set var_114 = Me.FGrid1
  loc_FDD940:       Else
  loc_FDD953:         Me.FGrid1.Rows = 1
  loc_FDD970:         var_D0 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_FDD978:         Set var_114 = Me.FGrid1
  loc_FDD9A7:         Me.FGrid1.FixedRows = 1
  loc_FDD9AF:       End If
  loc_FDD9AF:     End If
  loc_FDD9B2:   Else
  loc_FDD9BD:     var_D0 = "Delete Module"
  loc_FDD9D3:     MsgBox("No Entries To Delete", &H10, var_D0, var_F0, var_110)
  loc_FDD9E3:   End If
  loc_FDD9E7:   Set var_8C = Me.FGrid1
  loc_FDD9F8: End If
  loc_FDD9F8: Exit Sub
  loc_FDD9F9: ' Referenced from: FDD82C
  loc_FDD9F9: Proc_6_60_E63754(FGrid1.DispID_8001, FGrid1.DispID_10000, var_D0)
  loc_FDD9FE: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'E1F680
  'Data Table: 506780
  loc_E1F677: Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_E1F67F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E417F0
  'Data Table: 506780
  Dim var_8C As TextBox
  loc_E417CF: Set var_88 = Me.TxtGrid
  loc_E417D5: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E417DD: var_8C.Visible = False
  loc_E417E9: Call Proc_150_61_F205D4()
  loc_E417EE: Exit Sub
End Sub

Public Function MasterFormExitGet() '507CA4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '507CB3
  MasterFormExit = Value
End Sub

Public Function global_56Get() '507CC2
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '507CD1
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95818
  'Data Table: 506780
  Dim Me As Recordset15
  loc_E957A6: On Error Goto loc_E9580F
  loc_E957AF: Me.MoveFirst
  loc_E957D9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95801: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E95809: Call Proc_150_67_16C6390(0)
  loc_E9580E: Exit Sub
  loc_E9580F: ' Referenced from: E957A6
  loc_E9580F: Proc_6_60_E63754(var_A0)
  loc_E95814: Exit Sub
End Sub

Public Sub Proc_150_61_F205D4
  'Data Table: 506780
  loc_F204E4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F204F6:   Me.DGHelp.Visible = False
  loc_F204FE: End If
  loc_F2051A: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F2052C:   Me.DGRev.Visible = False
  loc_F20534: End If
  loc_F20550: If (CBool(Me.DGTokenRev.Visible) = &HFF) Then
  loc_F20562:   Me.DGTokenRev.Visible = False
  loc_F2056A: End If
  loc_F20586: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F20598:   Me.FGPoint.Visible = False
  loc_F205A0: End If
  loc_F205BB: If (Me.FrmList.Visible = &HFF) Then
  loc_F205CA:   Me.FrmList.Visible = False
  loc_F205D2: End If
  loc_F205D2: Exit Sub
End Sub

Public Sub Proc_150_62_FD98FC
  'Data Table: 506780
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_FD972A: global_84 = vbNullString
  loc_FD9734: global_88 = vbNullString
  loc_FD9746: Set var_8C = Me.Txt
  loc_FD974C: Call 0.Method_Proc_150_62_FD98FCC (var_8E, var_86)
  loc_FD975C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FD9772:   Set var_8C = Me.Txt
  loc_FD9778:   Call 0.Method_Proc_150_62_FD98FC0 (CInt(var_86), var_98)
  loc_FD9780:   var_98.Text = vbNullString
  loc_FD979C:   Set var_8C = Me.Txt
  loc_FD97A2:   Call 0.Method_Proc_150_62_FD98FC0 (CInt(var_86), var_98)
  loc_FD97AA:   var_98.Tag = vbNullString
  loc_FD97B9: Next var_92 'Byte
  loc_FD97CA: If (global_56 = "Plan") Then
  loc_FD97DB:   Set var_8C = Me.Txt
  loc_FD97E1:   Call 0.Method_Proc_150_62_FD98FC0 (CInt(9), var_98)
  loc_FD97E9:   var_98.Text = "1"
  loc_FD9802:   Set var_8C = Me.Txt
  loc_FD9808:   Call 0.Method_Proc_150_62_FD98FC0 (CInt(9), var_98)
  loc_FD9810:   var_98.Enabled = False
  loc_FD981C: End If
  loc_FD982F: Me.FGrid.Rows = 1
  loc_FD984C: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD9854: Set var_98 = Me.FGrid
  loc_FD9883: Me.FGrid.FixedRows = 1
  loc_FD989E: Me.FGrid1.Rows = 1
  loc_FD98BB: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD98C3: Set var_98 = Me.FGrid1
  loc_FD98F2: Me.FGrid1.FixedRows = 1
  loc_FD98FA: Exit Sub
End Sub

Public Sub Proc_150_63_EB2D10(arg_C) 'EB2D10
  'Data Table: 506780
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_EB2C82: Set var_8C = Me.Txt
  loc_EB2C88: Call 0.Method_Proc_150_63_EB2D10C (var_8E, var_86)
  loc_EB2C98: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB2CAE:   Set var_8C = Me.Txt
  loc_EB2CB4:   Call 0.Method_Proc_150_63_EB2D100 (CInt(var_86), var_98)
  loc_EB2CBC:   var_98.Enabled = arg_C
  loc_EB2CCB: Next var_92 'Byte
  loc_EB2CDE: Me.Check1.Enabled = arg_C
  loc_EB2CF3: Set var_8C = Me.Txt
  loc_EB2CF9: Call 0.Method_Proc_150_63_EB2D100 (CInt(1), var_98)
  loc_EB2D01: var_98.Enabled = False
  loc_EB2D0D: Exit Sub
End Sub

Public Sub Proc_150_64_ED6E50
  'Data Table: 506780
  loc_ED6DB0: Call Proc_150_61_F205D4()
  loc_ED6DC0: Set var_88 = Me.Txt
  loc_ED6DC6: Call 0.Method_Proc_150_64_ED6E500 (CInt(0))
  loc_ED6DEF: If (Proc_6_27_EA61EC(var_8C, "Name") = 0) Then
  loc_ED6DF2:   Exit Sub
  loc_ED6DF3: End If
  loc_ED6E2A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED6E2D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED6E35: Else
  loc_ED6E3B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED6E43:   Call var_88.SetFocus
  loc_ED6E4C: End If
  loc_ED6E4C: Exit Sub
End Sub

Public Sub Proc_150_65_13922A4
  'Data Table: 506780
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_13919B9: global_104 = CStr(&HC9FCF7)
  loc_13919D3: Me.FGrid.Cols = &H15
  loc_13919D8: var_9C = 0
  loc_13919E4: var_BC = CVar(CLng(0)) 'Long
  loc_13919E9: var_DC = "No."
  loc_13919F2: LateIdCallSt
  loc_13919FD: var_9C = CVar(CLng(0)) 'Long
  loc_1391A08: var_BC = CVar(CInt(4)) 'Integer
  loc_1391A0F: LateIdCallSt
  loc_1391A1A: var_9C = CVar(CLng(0)) 'Long
  loc_1391A25: var_BC = CVar(CInt(4)) 'Integer
  loc_1391A2C: LateIdCallSt
  loc_1391A37: var_9C = CVar(CLng(0)) 'Long
  loc_1391A3C: var_BC = 5
  loc_1391A48: LateIdCallSt
  loc_1391A50: var_9C = 0
  loc_1391A5C: var_BC = CVar(CLng(1)) 'Long
  loc_1391A61: var_DC = "Fixed Charge"
  loc_1391A6A: LateIdCallSt
  loc_1391A75: var_9C = CVar(CLng(1)) 'Long
  loc_1391A80: var_BC = CVar(CInt(1)) 'Integer
  loc_1391A87: LateIdCallSt
  loc_1391A92: var_9C = CVar(CLng(1)) 'Long
  loc_1391A9D: var_BC = CVar(CInt(1)) 'Integer
  loc_1391AA4: LateIdCallSt
  loc_1391AAF: var_9C = CVar(CLng(1)) 'Long
  loc_1391AB4: var_BC = &H7D0
  loc_1391AC0: LateIdCallSt
  loc_1391ACB: var_9C = CVar(CLng(2)) 'Long
  loc_1391AD0: var_BC = 0
  loc_1391ADC: LateIdCallSt
  loc_1391AE7: var_9C = CVar(CLng(&H11)) 'Long
  loc_1391AEC: var_BC = 0
  loc_1391AF8: LateIdCallSt
  loc_1391B00: var_9C = 0
  loc_1391B0C: var_BC = CVar(CLng(3)) 'Long
  loc_1391B11: var_DC = "TaxStru"
  loc_1391B1A: LateIdCallSt
  loc_1391B25: var_9C = CVar(CLng(3)) 'Long
  loc_1391B30: var_BC = CVar(CInt(1)) 'Integer
  loc_1391B37: LateIdCallSt
  loc_1391B42: var_9C = CVar(CLng(3)) 'Long
  loc_1391B4D: var_BC = CVar(CInt(1)) 'Integer
  loc_1391B54: LateIdCallSt
  loc_1391B5F: var_9C = CVar(CLng(3)) 'Long
  loc_1391B64: var_BC = 0
  loc_1391B70: LateIdCallSt
  loc_1391B7B: var_9C = CVar(CLng(4)) 'Long
  loc_1391B80: var_BC = 0
  loc_1391B8C: LateIdCallSt
  loc_1391B94: var_9C = 0
  loc_1391BA0: var_BC = CVar(CLng(5)) 'Long
  loc_1391BA5: var_DC = "Tax Inc"
  loc_1391BAE: LateIdCallSt
  loc_1391BB9: var_9C = CVar(CLng(5)) 'Long
  loc_1391BC4: var_BC = CVar(CInt(4)) 'Integer
  loc_1391BCB: LateIdCallSt
  loc_1391BD6: var_9C = CVar(CLng(5)) 'Long
  loc_1391BE1: var_BC = CVar(CInt(4)) 'Integer
  loc_1391BE8: LateIdCallSt
  loc_1391BF3: var_9C = CVar(CLng(5)) 'Long
  loc_1391BF8: var_BC = &H3E8
  loc_1391C04: LateIdCallSt
  loc_1391C0C: var_9C = 0
  loc_1391C18: var_BC = CVar(CLng(6)) 'Long
  loc_1391C1D: var_DC = "Fix Rate"
  loc_1391C26: LateIdCallSt
  loc_1391C31: var_9C = CVar(CLng(6)) 'Long
  loc_1391C3C: var_BC = CVar(CInt(4)) 'Integer
  loc_1391C43: LateIdCallSt
  loc_1391C4E: var_9C = CVar(CLng(6)) 'Long
  loc_1391C59: var_BC = CVar(CInt(4)) 'Integer
  loc_1391C60: LateIdCallSt
  loc_1391C6B: var_9C = CVar(CLng(6)) 'Long
  loc_1391C70: var_BC = &H3E8
  loc_1391C7C: LateIdCallSt
  loc_1391C84: var_9C = 0
  loc_1391C90: var_BC = CVar(CLng(7)) 'Long
  loc_1391C95: var_DC = "Adult"
  loc_1391C9E: LateIdCallSt
  loc_1391CA9: var_9C = CVar(CLng(7)) 'Long
  loc_1391CB4: var_BC = CVar(CInt(1)) 'Integer
  loc_1391CBB: LateIdCallSt
  loc_1391CC6: var_9C = CVar(CLng(7)) 'Long
  loc_1391CD1: var_BC = CVar(CInt(1)) 'Integer
  loc_1391CD8: LateIdCallSt
  loc_1391CE3: var_9C = CVar(CLng(7)) 'Long
  loc_1391CE8: var_BC = &H384
  loc_1391CF4: LateIdCallSt
  loc_1391CFC: var_9C = 0
  loc_1391D08: var_BC = CVar(CLng(8)) 'Long
  loc_1391D0D: var_DC = "Child"
  loc_1391D16: LateIdCallSt
  loc_1391D21: var_9C = CVar(CLng(8)) 'Long
  loc_1391D2C: var_BC = CVar(CInt(1)) 'Integer
  loc_1391D33: LateIdCallSt
  loc_1391D3E: var_9C = CVar(CLng(8)) 'Long
  loc_1391D49: var_BC = CVar(CInt(1)) 'Integer
  loc_1391D50: LateIdCallSt
  loc_1391D5B: var_9C = CVar(CLng(8)) 'Long
  loc_1391D60: var_BC = &H384
  loc_1391D6C: LateIdCallSt
  loc_1391D74: var_9C = 0
  loc_1391D80: var_BC = CVar(CLng(9)) 'Long
  loc_1391D85: var_DC = "Extra Adult"
  loc_1391D8E: LateIdCallSt
  loc_1391D99: var_9C = CVar(CLng(9)) 'Long
  loc_1391DA4: var_BC = CVar(CInt(1)) 'Integer
  loc_1391DAB: LateIdCallSt
  loc_1391DB6: var_9C = CVar(CLng(9)) 'Long
  loc_1391DC1: var_BC = CVar(CInt(1)) 'Integer
  loc_1391DC8: LateIdCallSt
  loc_1391DD3: var_9C = CVar(CLng(9)) 'Long
  loc_1391DD8: var_BC = 0
  loc_1391DE4: LateIdCallSt
  loc_1391DEC: var_9C = 0
  loc_1391DF8: var_BC = CVar(CLng(&HA)) 'Long
  loc_1391DFD: var_DC = "Extra Child"
  loc_1391E06: LateIdCallSt
  loc_1391E11: var_9C = CVar(CLng(&HA)) 'Long
  loc_1391E1C: var_BC = CVar(CInt(1)) 'Integer
  loc_1391E23: LateIdCallSt
  loc_1391E2E: var_9C = CVar(CLng(&HA)) 'Long
  loc_1391E39: var_BC = CVar(CInt(1)) 'Integer
  loc_1391E40: LateIdCallSt
  loc_1391E4B: var_9C = CVar(CLng(&HA)) 'Long
  loc_1391E50: var_BC = 0
  loc_1391E5C: LateIdCallSt
  loc_1391E64: var_9C = 0
  loc_1391E70: var_BC = CVar(CLng(&HB)) 'Long
  loc_1391E75: var_DC = "Occurrence"
  loc_1391E7E: LateIdCallSt
  loc_1391E89: var_9C = CVar(CLng(&HB)) 'Long
  loc_1391E94: var_BC = CVar(CInt(1)) 'Integer
  loc_1391E9B: LateIdCallSt
  loc_1391EA6: var_9C = CVar(CLng(&HB)) 'Long
  loc_1391EB1: var_BC = CVar(CInt(1)) 'Integer
  loc_1391EB8: LateIdCallSt
  loc_1391EC3: var_9C = CVar(CLng(&HB)) 'Long
  loc_1391EC8: var_BC = &H4B0
  loc_1391ED4: LateIdCallSt
  loc_1391EDC: var_9C = 0
  loc_1391EE8: var_BC = CVar(CLng(&H10)) 'Long
  loc_1391EED: var_DC = "Tax Amount"
  loc_1391EF6: LateIdCallSt
  loc_1391F01: var_9C = CVar(CLng(&H10)) 'Long
  loc_1391F0C: var_BC = CVar(CInt(1)) 'Integer
  loc_1391F13: LateIdCallSt
  loc_1391F1E: var_9C = CVar(CLng(&H10)) 'Long
  loc_1391F29: var_BC = CVar(CInt(1)) 'Integer
  loc_1391F30: LateIdCallSt
  loc_1391F3B: var_9C = CVar(CLng(&H10)) 'Long
  loc_1391F40: var_BC = 0
  loc_1391F4C: LateIdCallSt
  loc_1391F54: var_9C = 0
  loc_1391F60: var_BC = CVar(CLng(&HC)) 'Long
  loc_1391F65: var_DC = "Print Option"
  loc_1391F6E: LateIdCallSt
  loc_1391F79: var_9C = CVar(CLng(&HC)) 'Long
  loc_1391F84: var_BC = CVar(CInt(1)) 'Integer
  loc_1391F8B: LateIdCallSt
  loc_1391F96: var_9C = CVar(CLng(&HC)) 'Long
  loc_1391FA1: var_BC = CVar(CInt(1)) 'Integer
  loc_1391FA8: LateIdCallSt
  loc_1391FB3: var_9C = CVar(CLng(&HC)) 'Long
  loc_1391FB8: var_BC = 0
  loc_1391FC4: LateIdCallSt
  loc_1391FCC: var_9C = 0
  loc_1391FD8: var_BC = CVar(CLng(&HD)) 'Long
  loc_1391FDD: var_DC = "Posting Method"
  loc_1391FE6: LateIdCallSt
  loc_1391FF1: var_9C = CVar(CLng(&HD)) 'Long
  loc_1391FFC: var_BC = CVar(CInt(1)) 'Integer
  loc_1392003: LateIdCallSt
  loc_139200E: var_9C = CVar(CLng(&HD)) 'Long
  loc_1392019: var_BC = CVar(CInt(1)) 'Integer
  loc_1392020: LateIdCallSt
  loc_139202B: var_9C = CVar(CLng(&HD)) 'Long
  loc_1392030: var_BC = 0
  loc_139203C: LateIdCallSt
  loc_1392044: var_9C = 0
  loc_1392050: var_BC = CVar(CLng(&HE)) 'Long
  loc_1392055: var_DC = "Charge Type"
  loc_139205E: LateIdCallSt
  loc_1392069: var_9C = CVar(CLng(&HE)) 'Long
  loc_1392074: var_BC = CVar(CInt(1)) 'Integer
  loc_139207B: LateIdCallSt
  loc_1392086: var_9C = CVar(CLng(&HE)) 'Long
  loc_1392091: var_BC = CVar(CInt(1)) 'Integer
  loc_1392098: LateIdCallSt
  loc_13920A3: var_9C = CVar(CLng(&HE)) 'Long
  loc_13920A8: var_BC = 0
  loc_13920B4: LateIdCallSt
  loc_13920BC: var_9C = 0
  loc_13920C8: var_BC = CVar(CLng(&HF)) 'Long
  loc_13920CD: var_DC = "Flat Rate"
  loc_13920D6: LateIdCallSt
  loc_13920E1: var_9C = CVar(CLng(&HF)) 'Long
  loc_13920EC: var_BC = CVar(CInt(1)) 'Integer
  loc_13920F3: LateIdCallSt
  loc_13920FE: var_9C = CVar(CLng(&HF)) 'Long
  loc_1392109: var_BC = CVar(CInt(1)) 'Integer
  loc_1392110: LateIdCallSt
  loc_139211B: var_9C = CVar(CLng(&HF)) 'Long
  loc_1392120: var_BC = &H3E8
  loc_139212C: LateIdCallSt
  loc_1392134: var_9C = 0
  loc_1392140: var_BC = CVar(CLng(&H12)) 'Long
  loc_1392145: var_DC = "Percentage"
  loc_139214E: LateIdCallSt
  loc_1392159: var_9C = CVar(CLng(&H12)) 'Long
  loc_1392164: var_BC = CVar(CInt(7)) 'Integer
  loc_139216B: LateIdCallSt
  loc_1392176: var_9C = CVar(CLng(&H12)) 'Long
  loc_1392181: var_BC = CVar(CInt(7)) 'Integer
  loc_1392188: LateIdCallSt
  loc_1392193: var_9C = CVar(CLng(&H12)) 'Long
  loc_1392198: var_BC = &H578
  loc_13921A4: LateIdCallSt
  loc_13921AC: var_9C = 0
  loc_13921B8: var_BC = CVar(CLng(&H13)) 'Long
  loc_13921BD: var_DC = "Amount/Day"
  loc_13921C6: LateIdCallSt
  loc_13921D1: var_9C = CVar(CLng(&H13)) 'Long
  loc_13921DC: var_BC = CVar(CInt(7)) 'Integer
  loc_13921E3: LateIdCallSt
  loc_13921EE: var_9C = CVar(CLng(&H13)) 'Long
  loc_13921F9: var_BC = CVar(CInt(7)) 'Integer
  loc_1392200: LateIdCallSt
  loc_139220B: var_9C = CVar(CLng(&H13)) 'Long
  loc_1392210: var_BC = &H578
  loc_139221C: LateIdCallSt
  loc_1392224: var_9C = 0
  loc_1392230: var_BC = CVar(CLng(&H14)) 'Long
  loc_1392235: var_DC = "Net Amt"
  loc_139223E: LateIdCallSt
  loc_1392249: var_9C = CVar(CLng(&H14)) 'Long
  loc_1392254: var_BC = CVar(CInt(7)) 'Integer
  loc_139225B: LateIdCallSt
  loc_1392266: var_9C = CVar(CLng(&H14)) 'Long
  loc_1392271: var_BC = CVar(CInt(7)) 'Integer
  loc_1392278: LateIdCallSt
  loc_1392283: var_9C = CVar(CLng(&H14)) 'Long
  loc_1392288: var_BC = &H4B0
  loc_1392294: LateIdCallSt
  loc_139229E: Set var_8C = Nothing 
  loc_13922A2: Exit Sub
End Sub

Public Sub Proc_150_66_102C454
  'Data Table: 506780
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_102C215: global_104 = CStr(&HC9FCF7)
  loc_102C22F: Me.FGrid1.Cols = 6
  loc_102C234: var_9C = 0
  loc_102C240: var_BC = CVar(CLng(0)) 'Long
  loc_102C245: var_DC = "No."
  loc_102C24E: LateIdCallSt
  loc_102C259: var_9C = CVar(CLng(0)) 'Long
  loc_102C264: var_BC = CVar(CInt(4)) 'Integer
  loc_102C26B: LateIdCallSt
  loc_102C276: var_9C = CVar(CLng(0)) 'Long
  loc_102C281: var_BC = CVar(CInt(4)) 'Integer
  loc_102C288: LateIdCallSt
  loc_102C293: var_9C = CVar(CLng(0)) 'Long
  loc_102C298: var_BC = 5
  loc_102C2A4: LateIdCallSt
  loc_102C2AC: var_9C = 0
  loc_102C2B8: var_BC = CVar(CLng(1)) 'Long
  loc_102C2BD: var_DC = "Fixed Charge"
  loc_102C2C6: LateIdCallSt
  loc_102C2D1: var_9C = CVar(CLng(1)) 'Long
  loc_102C2DC: var_BC = CVar(CInt(1)) 'Integer
  loc_102C2E3: LateIdCallSt
  loc_102C2EE: var_9C = CVar(CLng(1)) 'Long
  loc_102C2F9: var_BC = CVar(CInt(1)) 'Integer
  loc_102C300: LateIdCallSt
  loc_102C30B: var_9C = CVar(CLng(1)) 'Long
  loc_102C310: var_BC = &H7D0
  loc_102C31C: LateIdCallSt
  loc_102C327: var_9C = CVar(CLng(2)) 'Long
  loc_102C32C: var_BC = 0
  loc_102C338: LateIdCallSt
  loc_102C343: var_9C = CVar(CLng(5)) 'Long
  loc_102C348: var_BC = 0
  loc_102C354: LateIdCallSt
  loc_102C35C: var_9C = 0
  loc_102C368: var_BC = CVar(CLng(3)) 'Long
  loc_102C36D: var_DC = "Rate"
  loc_102C376: LateIdCallSt
  loc_102C381: var_9C = CVar(CLng(3)) 'Long
  loc_102C38C: var_BC = CVar(CInt(1)) 'Integer
  loc_102C393: LateIdCallSt
  loc_102C39E: var_9C = CVar(CLng(3)) 'Long
  loc_102C3A9: var_BC = CVar(CInt(1)) 'Integer
  loc_102C3B0: LateIdCallSt
  loc_102C3BB: var_9C = CVar(CLng(3)) 'Long
  loc_102C3C0: var_BC = &H3E8
  loc_102C3CC: LateIdCallSt
  loc_102C3D4: var_9C = 0
  loc_102C3E0: var_BC = CVar(CLng(4)) 'Long
  loc_102C3E5: var_DC = "Remarks"
  loc_102C3EE: LateIdCallSt
  loc_102C3F9: var_9C = CVar(CLng(4)) 'Long
  loc_102C404: var_BC = CVar(CInt(1)) 'Integer
  loc_102C40B: LateIdCallSt
  loc_102C416: var_9C = CVar(CLng(4)) 'Long
  loc_102C421: var_BC = CVar(CInt(1)) 'Integer
  loc_102C428: LateIdCallSt
  loc_102C433: var_9C = CVar(CLng(4)) 'Long
  loc_102C438: var_BC = &HDAC
  loc_102C444: LateIdCallSt
  loc_102C44E: Set var_8C = Nothing 
  loc_102C452: Exit Sub
End Sub

Public Sub Proc_150_67_16C6390
  'Data Table: 506780
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim unk_5067A8 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_120 As Fields15
  Dim var_138 As Variant
  Dim var_18C As Fields15
  Dim var_1E4 As Recordset15
  Dim var_124 As TextBox
  Dim var_148 As Variant
  Dim var_1A0 As TextBox
  Dim var_8A As Integer
  Dim var_204 As Double
  Dim var_11C As Variant
  Dim var_178 As Variant
  loc_16C49D8: On Error Goto loc_16C6388
  loc_16C49F2: If (Me.RecordCount > 0) Then
  loc_16C4A02:   var_C8 = "Select PLANMAST.*,ROOMCAT.NAME AS ROOMCATNAME,TaxStru.Name as TaxStruName From PlanMast LEFT JOIN ROOMCAT ON (ROOMCAT.CODE=PLANMAST.ROOMCAT) Left Join TaxStru on TaxStru.Code=PlanMast.RoomTaxStru Where PLANMAST.Code='"
  loc_16C4A4B:   unk_5067A8.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_16C4A56:   Set var_88 = var_120
  loc_16C4AAA:   var_120 = var_88.Fields
  loc_16C4B13:   var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16C4B58:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_16C4BD2:   var_124 = var_88.Fields.Item("U_AE")
  loc_16C4BDA:   var_D8 = CVar(var_124) 'Address
  loc_16C4BEB:   var_11C = "entdt : "
  loc_16C4C33:   var_188 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(var_D8) = "E"), "Last Update : ", var_11C))
  loc_16C4C52:   var_1A0 = var_88.Fields.Item("U_EntDt")
  loc_16C4C78:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_1A0))))
  loc_16C4CC4:   If (var_88.RecordCount > 0) Then
  loc_16C4CCA:     Set var_1E4 = var_88 
  loc_16C4D04:     Set var_120 = Me.Txt
  loc_16C4D0A:     Call 0.Method_Proc_150_67_16C63900 (CInt(0), var_124)
  loc_16C4D12:     var_124.Text = Proc_6_38_E69628(CVar(var_1E4.Fields.Item("Name")))
  loc_16C4D3D:     var_A8 = var_1E4.Fields.Item("Code")
  loc_16C4D5C:     Set var_120 = Me.Txt
  loc_16C4D62:     Call 0.Method_Proc_150_67_16C63900 (CInt(0), var_124)
  loc_16C4D6A:     var_124.Tag = Proc_6_38_E69628(CVar(var_A8))
  loc_16C4D8C:     Set var_94 = Me.Txt
  loc_16C4D92:     Call 0.Method_Proc_150_67_16C63900 (CInt(0), var_A8)
  loc_16C4DA5:     global_84 = var_A8.Text
  loc_16C4DE9:     Set var_120 = Me.Txt
  loc_16C4DEF:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HF), var_124)
  loc_16C4DF7:     var_124.Text = Proc_6_38_E69628(CVar(var_1E4.Fields.Item("Tariff")))
  loc_16C4E17:     Me.Check1.Value = 1
  loc_16C4E3E:     var_B8 = CVar(var_1E4.Fields.Item("Adults")) 'Address
  loc_16C4E45:     Proc_6_39_E7D3A0(var_D8)
  loc_16C4E5C:     Set var_120 = Me.Txt
  loc_16C4E62:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HA), var_124)
  loc_16C4E6A:     var_124.Text = CStr(var_D8)
  loc_16C4EA8:     Proc_6_39_E7D3A0(var_D8, CVar(var_1E4.Fields.Item("Childs")))
  loc_16C4EBF:     Set var_120 = Me.Txt
  loc_16C4EC5:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HA), var_124)
  loc_16C4ECD:     var_124.Text = CStr(var_D8)
  loc_16C4F0B:     Proc_6_39_E7D3A0(var_D8, CVar(var_1E4.Fields.Item("PackageAmount")))
  loc_16C4F22:     Set var_120 = Me.Txt
  loc_16C4F28:     Call 0.Method_Proc_150_67_16C63900 (CInt(5), var_124)
  loc_16C4F30:     var_124.Text = CStr(var_D8)
  loc_16C4F5F:     var_A8 = var_1E4.Fields.Item("RRIncTax")
  loc_16C4F7E:     Set var_120 = Me.Txt
  loc_16C4F84:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HD), var_124)
  loc_16C4F8C:     var_124.Text = Proc_6_38_E69628(CVar(var_A8))
  loc_16C4FAE:     Set var_94 = Me.Txt
  loc_16C4FB4:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HD), var_A8)
  loc_16C4FD3:     If (var_A8.Text = "Yes") Then
  loc_16C4FE2:       Set var_94 = Me.Label1
  loc_16C4FE8:       Call 0.Method_Proc_150_67_16C63900 (&HC, var_A8)
  loc_16C4FF0:       var_A8.Caption = "Net Room Rate"
  loc_16C4FFF:     Else
  loc_16C500B:       Set var_94 = Me.Label1
  loc_16C5011:       Call 0.Method_Proc_150_67_16C63900 (&HC, var_A8)
  loc_16C5019:       var_A8.Caption = "Room Rate"
  loc_16C5025:     End If
  loc_16C505B:     Set var_120 = Me.Txt
  loc_16C5061:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HE), var_124)
  loc_16C5069:     var_124.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCatName")))
  loc_16C50B3:     Set var_120 = Me.Txt
  loc_16C50B9:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HE), var_124)
  loc_16C50C1:     var_124.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat")))
  loc_16C510B:     Set var_120 = Me.Txt
  loc_16C5111:     Call 0.Method_Proc_150_67_16C63900 (CInt(&H11), var_124)
  loc_16C5119:     var_124.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxStruName")))
  loc_16C5163:     Set var_120 = Me.Txt
  loc_16C5169:     Call 0.Method_Proc_150_67_16C63900 (CInt(&H11), var_124)
  loc_16C5171:     var_124.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomTaxStru")))
  loc_16C51AB:     Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("RoomRate")))
  loc_16C51C2:     Set var_120 = Me.Txt
  loc_16C51C8:     Call 0.Method_Proc_150_67_16C63900 (CInt(8), var_124)
  loc_16C51D0:     var_124.Text = CStr(var_D8)
  loc_16C520E:     Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("RoomRate")))
  loc_16C522D:     var_124 = var_88.Fields.Item("Nights")
  loc_16C523C:     Proc_6_39_E7D3A0(var_11C, CVar(var_124))
  loc_16C5257:     Set var_18C = Me.Txt
  loc_16C525D:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HC), var_1A0)
  loc_16C5265:     var_1A0.Text = CStr((var_D8 * var_11C))
  loc_16C52A9:     Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("Nights")))
  loc_16C52C0:     Set var_120 = Me.Txt
  loc_16C52C6:     Call 0.Method_Proc_150_67_16C63900 (CInt(9), var_124)
  loc_16C52CE:     var_124.Text = CStr(var_D8)
  loc_16C531C:     Set var_120 = Me.Txt
  loc_16C5322:     Call 0.Method_Proc_150_67_16C63900 (CInt(3), var_124)
  loc_16C532A:     var_124.Text = Proc_6_38_E69628(CVar(var_1E4.Fields.Item("ActiveYN")))
  loc_16C5374:     Set var_120 = Me.Txt
  loc_16C537A:     Call 0.Method_Proc_150_67_16C63900 (CInt(6), var_124)
  loc_16C5382:     var_124.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DiscAppYN")))
  loc_16C53CC:     Set var_120 = Me.Txt
  loc_16C53D2:     Call 0.Method_Proc_150_67_16C63900 (CInt(7), var_124)
  loc_16C53DA:     var_124.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DiscAppOn")))
  loc_16C5414:     Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("Adults")))
  loc_16C542B:     Set var_120 = Me.Txt
  loc_16C5431:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HA), var_124)
  loc_16C5439:     var_124.Text = CStr(var_D8)
  loc_16C5477:     Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("Childs")))
  loc_16C548E:     Set var_120 = Me.Txt
  loc_16C5494:     Call 0.Method_Proc_150_67_16C63900 (CInt(&HB), var_124)
  loc_16C549C:     var_124.Text = CStr(var_D8)
  loc_16C54DA:     Proc_6_39_E7D3A0(var_D8, CVar(var_1E4.Fields.Item("RoomPer")))
  loc_16C54FA:     var_11C = Format(var_D8, "0.00000")
  loc_16C5511:     Set var_120 = Me.Txt
  loc_16C5517:     Call 0.Method_Proc_150_67_16C63900 (CInt(4), var_124, CStr(var_11C))
  loc_16C551F:     var_124.Text = 1
  loc_16C5561:     Proc_6_39_E7D3A0(var_D8, CVar(var_1E4.Fields.Item("Total")))
  loc_16C5578:     Set var_120 = Me.Txt
  loc_16C557E:     Call 0.Method_Proc_150_67_16C63900 (CInt(1), var_124, CStr(var_D8))
  loc_16C5586:     var_124.Text = 1
  loc_16C55D7:     Set var_120 = Me.Txt
  loc_16C55DD:     Call 0.Method_Proc_150_67_16C63900 (CInt(2), var_124)
  loc_16C55E5:     var_124.Text = CStr(var_1E4.Fields.Item("App_Date").Value)
  loc_16C5612:     var_A8 = var_1E4.Fields.Item("MapCode")
  loc_16C5637:     Call 0.Method_Proc_150_67_16C63900 (CInt(&H10), var_124)
  loc_16C563F:     var_124.Text = Proc_6_38_E69628(CVar(var_A8))
  loc_16C5661:     Set var_94 = Me.Txt
  loc_16C5667:     Call 0.Method_Proc_150_67_16C63900 (CInt(2), var_A8)
  loc_16C567A:     global_88 = var_A8.Text
  loc_16C568A:     Set var_1E4 = Nothing 
  loc_16C56A1:     Me.FGrid.Rows = 1
  loc_16C56B6:     var_C8 = "SELECT Plan1.*,FixedCharge.Name as RevName FROM Plan1 Left Join FixedCharge on Plan1.ChrgCode=FixedCharge.Code WHERE Plan1.Code='"
  loc_16C56FF:     unk_5067A8.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' order by FixedCharge.Name"), var_11C, -1
  loc_16C570A:     Set var_88 = Me.Txt
  loc_16C5726:     var_8A = 1
  loc_16C5729:     ' Referenced from: 16C5F84
  loc_16C5738:     If Not(var_88.EOF) Then
  loc_16C573B:       var_A4 = vbNullString
  loc_16C5745:       Set var_94 = Me.FGrid
  loc_16C575A:       Set var_1EC = Me.FGrid
  loc_16C5761:       var_A4 = CVar(CLng(var_8A)) 'Long
  loc_16C5773:       var_B8 = CVar(CStr(var_8A)) 'String
  loc_16C577A:       LateIdCallSt
  loc_16C57BE:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1EC, CVar(var_88.Fields.Item("RevName")), CVar(CLng(0)))) 'String
  loc_16C57C5:       LateIdCallSt
  loc_16C57DA:       var_A4 = "Adult"
  loc_16C57FD:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item(var_A4)), var_1EC, var_D8, var_A4)
  loc_16C583E:       LateIdCallSt
  loc_16C588F:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChrgCode")), CVar(CLng(&H11)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_16C5896:       LateIdCallSt
  loc_16C58E1:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1EC, var_D8, CVar(CLng(7)))) 'String
  loc_16C58E8:       LateIdCallSt
  loc_16C5933:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Code")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1EC, var_D8)) 'String
  loc_16C593A:       LateIdCallSt
  loc_16C5972:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("Child")), var_1EC, var_D8, CVar(CLng(var_8A)))
  loc_16C597B:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C5983:       var_138 = CVar(CLng(8)) 'Long
  loc_16C59B3:       LateIdCallSt
  loc_16C59F1:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("ExtraAdult")), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)
  loc_16C59FA:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C5A32:       LateIdCallSt
  loc_16C5A70:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("FlatRate")), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1, CVar(CLng(9)))
  loc_16C5A79:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C5AB1:       LateIdCallSt
  loc_16C5AEF:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("ExtraChild")), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1, CVar(CLng(&HF)))
  loc_16C5B30:       LateIdCallSt
  loc_16C5B81:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PostingMethod")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_16C5B88:       LateIdCallSt
  loc_16C5BD3:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1EC, var_D8, CVar(CLng(&HA)))) 'String
  loc_16C5BDA:       LateIdCallSt
  loc_16C5C25:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PrintOption")), CVar(CLng(&HC)), CVar(CLng(var_8A)), var_1EC, var_D8)) 'String
  loc_16C5C2C:       LateIdCallSt
  loc_16C5C77:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_8A)), var_1EC, var_D8)) 'String
  loc_16C5C7E:       LateIdCallSt
  loc_16C5CC9:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FixRate")), CVar(CLng(6)), CVar(CLng(var_8A)), var_1EC, var_D8)) 'String
  loc_16C5CD0:       LateIdCallSt
  loc_16C5D22:       LateIdCallSt
  loc_16C5D5C:       var_FC = Proc_6_38_E69628(CVar(var_88.Fields.Item("NoofDays")), var_1EC, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1EC, var_D8)), CVar(CLng(var_8A)))
  loc_16C5D64:       var_204 = Val(var_FC)
  loc_16C5D87:       var_120 = var_88.Fields
  loc_16C5D97:       var_D8 = CVar(var_120.Item("NoofDays")) 'Address
  loc_16C5DC6:       var_178 = CVar(CStr(IIf((CDbl(var_204) = CDbl(0)), "NA", CVar(Proc_6_38_E69628(var_D8, CVar(CLng(&HB)), CVar(CLng(var_8A)), var_204))))) 'String
  loc_16C5DCD:       LateIdCallSt
  loc_16C5E16:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("PlanPer")), var_1EC, var_178)
  loc_16C5E1F:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C5E27:       var_138 = CVar(CLng(&H12)) 'Long
  loc_16C5E57:       LateIdCallSt
  loc_16C5E95:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("PerDayAmount")), var_1EC, CVar(CStr(Format(var_D8, "0.00000"))), 1, 1)
  loc_16C5E9E:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C5ED6:       LateIdCallSt
  loc_16C5F14:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("NetAmount")), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1, CVar(CLng(&H13)))
  loc_16C5F1D:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C5F25:       var_138 = CVar(CLng(&H14)) 'Long
  loc_16C5F45:       var_11C = Format(var_D8, "0.00")
  loc_16C5F4E:       var_148 = CVar(CStr(var_11C)) 'String
  loc_16C5F55:       LateIdCallSt
  loc_16C5F6F:       Set var_1EC = Nothing 
  loc_16C5F79:       var_8A = (var_8A + 1)
  loc_16C5F7F:       var_88.MoveNext
  loc_16C5F84:       GoTo loc_16C5729
  loc_16C5F87:     End If
  loc_16C5F9A:     Me.FGrid1.Rows = 1
  loc_16C5FAF:     var_C8 = "SELECT PlanTokenDetails.*,FixedCharge.Name as RevName FROM PlanTokenDetails Left Join FixedCharge on PlanTokenDetails.ChrgCode=FixedCharge.Code WHERE PlanTokenDetails.PlanCode='"
  loc_16C5FE1:     var_D8 = var_C8 & Me.Fields.Item("SearchCode").Value 
  loc_16C5FF8:     unk_5067A8.Execute CStr(var_D8 & "' order by FixedCharge.Name,PlanTokenDetails.Sno"), var_11C, -1
  loc_16C6003:     Set var_88 = var_120
  loc_16C601F:     var_8A = 1
  loc_16C6022:     ' Referenced from: 16C628F
  loc_16C6031:     If Not(var_88.EOF) Then
  loc_16C6034:       var_A4 = vbNullString
  loc_16C603E:       Set var_94 = Me.FGrid1
  loc_16C6053:       Set var_208 = Me.FGrid1
  loc_16C606A:       var_A4 = "SNo"
  loc_16C608D:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item(var_A4)), CVar(CLng(0)), CVar(CLng(var_8A)), FGrid1.DispID_10000, var_A4, var_8A)
  loc_16C609D:       LateIdCallSt
  loc_16C60EA:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_208, CVar(CStr(var_D8)), var_120)) 'String
  loc_16C60F1:       LateIdCallSt
  loc_16C613C:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChrgCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_208, var_D8, var_8A)) 'String
  loc_16C6143:       LateIdCallSt
  loc_16C618E:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PlanCode")), CVar(CLng(5)), CVar(CLng(var_8A)), var_208, var_D8)) 'String
  loc_16C6195:       LateIdCallSt
  loc_16C61CD:       Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("Rate")), var_208, var_D8, var_1EC)
  loc_16C61D6:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C61DE:       var_138 = CVar(CLng(3)) 'Long
  loc_16C620E:       LateIdCallSt
  loc_16C625F:       var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(4)), CVar(CLng(var_8A)), var_208, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_16C6266:       LateIdCallSt
  loc_16C627A:       Set var_208 = Nothing 
  loc_16C6284:       var_8A = (var_8A + 1)
  loc_16C628A:       var_88.MoveNext
  loc_16C628F:       GoTo loc_16C6022
  loc_16C6292:     End If
  loc_16C6292:   End If
  loc_16C6292:   var_A4 = 0
  loc_16C629C:   Set var_94 = Me.FGrid
  loc_16C62C9:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_16C62CC:     var_A4 = "1"
  loc_16C62D6:     Set var_94 = Me.FGrid
  loc_16C62E7:   End If
  loc_16C62FA:   Me.FGrid.FixedRows = 1
  loc_16C6302:   var_A4 = 0
  loc_16C630C:   Set var_94 = Me.FGrid1
  loc_16C6339:   If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_16C633C:     var_A4 = "1"
  loc_16C6346:     Set var_94 = Me.FGrid1
  loc_16C6357:   End If
  loc_16C6357:   var_A4 = 1
  loc_16C636A:   Me.FGrid1.FixedRows = var_A4
  loc_16C6375: Else
  loc_16C6375:   Call Proc_150_62_FD98FC(FGrid1.DispID_10000, var_A4, FGrid1.DispID_2E, var_A4, FGrid.DispID_10000, var_A4, FGrid.DispID_2E)
  loc_16C637A: End If
  loc_16C637A: Call Proc_150_61_F205D4(var_A4, var_8A, var_208)
  loc_16C6384: Set var_88 = Nothing
  loc_16C6387: Exit Sub
  loc_16C6388: ' Referenced from: 16C49D8
  loc_16C6388: Proc_6_60_E63754(var_D8, var_138)
  loc_16C638D: Exit Sub
End Sub

Public Sub Proc_150_68_195468C(arg_C) '195468C
  'Data Table: 506780
  Dim var_8A As Integer
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_124 As Variant
  Dim var_B4 As String
  Dim var_168 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_200 As MSHFlexGrid
  Dim var_210 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_19C As Variant
  Dim var_114 As Variant
  Dim var_158 As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_260 As Variant
  Dim var_278 As String
  Dim var_298 As Double
  Dim var_274 As Variant
  Dim var_2A0 As Double
  Dim var_280 As Variant
  Dim var_284 As Variant
  Dim var_288 As String
  Dim var_2A8 As Double
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_27C As String
  Dim var_290 As MSHFlexGrid
  Dim var_2BC As Double
  Dim var_2B0 As MSHFlexGrid
  Dim var_2B4 As TextBox
  Dim var_2D0 As Double
  Dim var_2F0 As Variant
  Dim var_310 As Variant
  Dim var_230 As Variant
  Dim var_334 As Long
  loc_19519AF: var_8A = arg_C
  loc_19519B8: If (var_8A = 0) Then
  loc_19519CE:   var_A4 = CLng(Me.FGrid.Col)
  loc_19519DE:   If (var_A4 = CLng(1)) Then
  loc_1951A01:     var_AA = Me.EOF
  loc_1951A2E:     Set var_90 = Me.TxtGrid
  loc_1951A34:     Call 0.Method_Proc_150_68_195468C0 (0, var_B0, var_B4)
  loc_1951A3C:     ((Me.RecordCount = 0) Or ((var_AA = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_1951A54:     If (var_A4 Or (var_B4 = vbNullString)) Then
  loc_1951A6A:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951A72:       var_E4 = CVar(CLng(1)) 'Long
  loc_1951A77:       var_104 = vbNullString
  loc_1951A81:       Set var_B0 = Me.FGrid
  loc_1951A87:       LateIdCallSt
  loc_1951AAC:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951AB4:       var_E4 = CVar(CLng(2)) 'Long
  loc_1951AB9:       var_104 = vbNullString
  loc_1951AC3:       Set var_B0 = Me.FGrid
  loc_1951AC9:       LateIdCallSt
  loc_1951ADE:     Else
  loc_1951AE1:       Call Proc_150_71_F80F0C(var_AA, var_B0, var_104, var_E4, var_C4)
  loc_1951AEC:       If (var_AA = &HFF) Then
  loc_1951AF4:         Proc_150_68_195468C = 0
  loc_1951AFA:       End If
  loc_1951B0D:       var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951B15:       var_148 = CVar(CLng(0)) 'Long
  loc_1951B33:       var_C4 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_1951B3B:       var_E4 = CVar(CLng(0)) 'Long
  loc_1951B55:       var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1951B63:       var_168 = CVar(CStr((Val(var_B4) + CDbl(1)))) 'String
  loc_1951B6B:       Set var_17C = Me.FGrid
  loc_1951B71:       LateIdCallSt
  loc_1951BA5:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951BAD:       var_F4 = CVar(CLng(1)) 'Long
  loc_1951BE0:       var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1951BE8:       Set var_17C = Me.FGrid
  loc_1951BEE:       LateIdCallSt
  loc_1951C1D:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951C25:       var_F4 = CVar(CLng(2)) 'Long
  loc_1951C58:       var_138 = CVar(CStr(Me.Fields.Item("RevCode").Value)) 'String
  loc_1951C60:       Set var_17C = Me.FGrid
  loc_1951C66:       LateIdCallSt
  loc_1951C95:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951C9D:       var_F4 = CVar(CLng(3)) 'Long
  loc_1951CBF:       var_B0 = Me.Fields.Item("TaxStru")
  loc_1951CDE:       LateIdCallSt
  loc_1951D28:       Set var_90 = Me.Txt
  loc_1951D2E:       Call 0.Method_Proc_150_68_195468C0 (CInt(0), var_B0, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(var_B0.Value)))
  loc_1951D36:       var_F4 = var_B0.Tag
  loc_1951D3E:       var_124 = CVar(var_B4) 'String
  loc_1951D46:       Set var_17C = Me.FGrid
  loc_1951D4C:       LateIdCallSt
  loc_1951D79:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951D81:       var_F4 = CVar(CLng(5)) 'Long
  loc_1951DB4:       var_138 = CVar(CStr(Me.Fields.Item("TaxInc").Value)) 'String
  loc_1951DBC:       Set var_17C = Me.FGrid
  loc_1951DC2:       LateIdCallSt
  loc_1951DF1:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951DF9:       var_E4 = CVar(CLng(6)) 'Long
  loc_1951E31:       var_220 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951E39:       var_240 = CVar(CLng(6)) 'Long
  loc_1951E51:       var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951E59:       var_158 = CVar(CLng(6)) 'Long
  loc_1951EA1:       var_260 = CVar(CStr(IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString), "No", CVar(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1951EA9:       Set var_274 = Me.FGrid
  loc_1951EAF:       LateIdCallSt
  loc_1951EF4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951EFC:       var_F4 = CVar(CLng(7)) 'Long
  loc_1951F2F:       var_138 = CVar(CStr(Me.Fields.Item("Adult").Value)) 'String
  loc_1951F37:       Set var_17C = Me.FGrid
  loc_1951F3D:       LateIdCallSt
  loc_1951F6C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951F74:       var_F4 = CVar(CLng(8)) 'Long
  loc_1951FA7:       var_138 = CVar(CStr(Me.Fields.Item("Child").Value)) 'String
  loc_1951FAF:       Set var_17C = Me.FGrid
  loc_1951FB5:       LateIdCallSt
  loc_1951FE4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951FEC:       var_F4 = CVar(CLng(9)) 'Long
  loc_195201F:       var_138 = CVar(CStr(Me.Fields.Item("ExtraAdult").Value)) 'String
  loc_1952027:       Set var_17C = Me.FGrid
  loc_195202D:       LateIdCallSt
  loc_195205C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952064:       var_F4 = CVar(CLng(&HA)) 'Long
  loc_1952097:       var_138 = CVar(CStr(Me.Fields.Item("ExtraChild").Value)) 'String
  loc_195209F:       Set var_17C = Me.FGrid
  loc_19520A5:       LateIdCallSt
  loc_19520D4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19520DC:       var_F4 = CVar(CLng(&HC)) 'Long
  loc_195210F:       var_138 = CVar(CStr(Me.Fields.Item("PrintOption").Value)) 'String
  loc_1952117:       Set var_17C = Me.FGrid
  loc_195211D:       LateIdCallSt
  loc_195214C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952154:       var_F4 = CVar(CLng(&HD)) 'Long
  loc_1952187:       var_138 = CVar(CStr(Me.Fields.Item("PostingMethod").Value)) 'String
  loc_195218F:       Set var_17C = Me.FGrid
  loc_1952195:       LateIdCallSt
  loc_19521C4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19521CC:       var_F4 = CVar(CLng(&HE)) 'Long
  loc_19521FF:       var_138 = CVar(CStr(Me.Fields.Item("ChargeType").Value)) 'String
  loc_1952207:       Set var_17C = Me.FGrid
  loc_195220D:       LateIdCallSt
  loc_195223C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952244:       var_F4 = CVar(CLng(&HF)) 'Long
  loc_1952277:       var_138 = CVar(CStr(Me.Fields.Item("FlatRate").Value)) 'String
  loc_195227F:       Set var_17C = Me.FGrid
  loc_1952285:       LateIdCallSt
  loc_19522B4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19522BC:       var_F4 = CVar(CLng(&H11)) 'Long
  loc_19522EF:       var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_19522F7:       Set var_17C = Me.FGrid
  loc_19522FD:       LateIdCallSt
  loc_195232C:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952334:       var_E4 = CVar(CLng(&HE)) 'Long
  loc_1952367:       If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_195237D:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952385:         var_F4 = CVar(CLng(&H13)) 'Long
  loc_19523A7:         var_B0 = Me.Fields.Item("FlatRate")
  loc_19523B8:         var_B4 = CStr(var_B0.Value)
  loc_19523C2:         var_138 = CVar(CStr(Val(var_B4))) 'String
  loc_19523CA:         Set var_17C = Me.FGrid
  loc_19523D0:         LateIdCallSt
  loc_19523F2:       Else
  loc_1952400:         Set var_90 = Me.Txt
  loc_1952406:         Call 0.Method_Proc_150_68_195468C0 (CInt(&HB), var_B0, var_B4, var_17C, var_138, var_F4, var_D4)
  loc_195240E:         var_E4 = var_B0.Text
  loc_195242A:         If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_1952433:           var_C4 = "Adult"
  loc_1952463:           var_298 = Val(CStr(Me.Fields.Item(var_C4).Value))
  loc_1952474:           Set var_200 = Me.Txt
  loc_195247A:           Call 0.Method_Proc_150_68_195468C0 (CInt(&HB), var_274, var_27C, var_298, var_C4)
  loc_1952482:           var_17C = var_274.Text
  loc_195248F:           var_2A0 = Val(var_27C)
  loc_19524AF:           var_284 = Me.Fields.Item("Child")
  loc_19524C0:           var_288 = CStr(var_284.Value)
  loc_19524C8:           var_2A8 = Val(var_288)
  loc_19524F9:           Set var_90 = Me.Txt
  loc_19524FF:           Call 0.Method_Proc_150_68_195468C0 (CInt(&HA), var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_2A8)
  loc_1952522:           var_168 = CVar(CStr(((Val(var_B4) * var_298) + (var_B0.Text * var_2A8)))) 'String
  loc_195252A:           Set var_290 = Me.FGrid
  loc_1952530:           LateIdCallSt
  loc_1952568:         Else
  loc_195259E:           var_298 = Val(CStr(Me.Fields.Item("Adult").Value))
  loc_19525CF:           Set var_90 = Me.Txt
  loc_19525D5:           Call 0.Method_Proc_150_68_195468C0 (CInt(&HA), var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_298)
  loc_19525DD:           var_290 = var_B0.Text
  loc_19525F0:           var_138 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_19525F8:           Set var_274 = Me.FGrid
  loc_19525FE:           LateIdCallSt
  loc_1952625:         End If
  loc_1952625:       End If
  loc_1952638:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952649:       Set var_17C = Me.FGrid
  loc_195265A:       var_278 = CStr(var_17C.TextMatrix))
  loc_1952662:       var_298 = Val(var_278)
  loc_1952693:       Set var_90 = Me.Txt
  loc_1952699:       Call 0.Method_Proc_150_68_195468C0 (CInt(9), var_B0, var_B4, CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), var_298, CVar(CLng(&H13)))
  loc_19526A1:       var_C4 = var_B0.Text
  loc_19526B4:       var_168 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_19526C2:       LateIdCallSt
  loc_195270F:       Set var_B0 = Me.FGrid
  loc_1952720:       var_B4 = CStr(var_B0.TextMatrix))
  loc_1952728:       var_298 = Val(var_B4)
  loc_1952739:       Set var_128 = Me.Txt
  loc_195273F:       Call 0.Method_Proc_150_68_195468C0 (CInt(5), var_17C, var_278, var_298, CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_1952747:       var_168 = var_17C.Text
  loc_1952754:       var_2A0 = Val(var_278)
  loc_195276A:       var_148 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952772:       var_178 = CVar(CLng(&H12)) 'Long
  loc_1952786:       var_168 = "0.00000"
  loc_19527A7:       var_1AC = CVar(CStr(Format(CVar(((var_298 * CDbl(&H64)) / var_2A0)), var_168))) 'String
  loc_19527AF:       Set var_274 = Me.FGrid
  loc_19527B5:       LateIdCallSt
  loc_19527E4:     End If
  loc_19527E7:   Else
  loc_19527EE:     If (var_A4 = CLng(6)) Then
  loc_19527FB:       Set var_90 = Me.TxtGrid
  loc_1952801:       Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_274, var_1AC, 1, 1, var_178)
  loc_1952820:       var_138 = Ucase(Left(CVar(var_B0), 1))
  loc_195283C:       If (var_138 = "Y") Then
  loc_195284C:         Set var_90 = Me.TxtGrid
  loc_1952852:         Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, "Yes", var_148, var_2A0)
  loc_195285A:         var_B0.Text = var_274
  loc_1952869:       Else
  loc_1952876:         Set var_90 = Me.TxtGrid
  loc_195287C:         Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, "No", var_138)
  loc_1952884:         var_B0.Text = var_168
  loc_1952890:       End If
  loc_19528A3:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19528CD:       Set var_90 = Me.TxtGrid
  loc_19528D3:       Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, CVar(CLng(Me.FGrid.Col)))
  loc_19528DB:       var_C4 = var_B0.Text
  loc_19528E3:       var_138 = CVar(var_B4) 'String
  loc_19528EB:       Set var_200 = Me.FGrid
  loc_19528F1:       LateIdCallSt
  loc_1952912:     Else
  loc_1952919:       If Not (var_A4 = CLng(7)) Then
  loc_1952923:         If (var_A4 = CLng(8)) Then
  loc_1952926:         End If
  loc_1952933:         Set var_90 = Me.TxtGrid
  loc_1952939:         Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, var_200)
  loc_1952941:         var_138 = var_B0.Text
  loc_1952964:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195297C:         var_104 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_19529B7:         LateIdCallSt
  loc_19529EB:         Set var_90 = Me.TxtGrid
  loc_19529F1:         Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(CVar(Val(var_B4)), "0.00"))), 1)
  loc_19529F9:         1 = var_B0.Text
  loc_1952A15:         If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_1952A2B:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952A33:           var_E4 = CVar(CLng(&HE)) 'Long
  loc_1952A66:           If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_1952A7C:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952A84:             var_148 = CVar(CLng(&H13)) 'Long
  loc_1952A9C:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952AA4:             var_E4 = CVar(CLng(&HF)) 'Long
  loc_1952AC8:             var_168 = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_1952AD0:             Set var_17C = Me.FGrid
  loc_1952AD6:             LateIdCallSt
  loc_1952B0A:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952B12:             var_148 = CVar(CLng(&H13)) 'Long
  loc_1952B1B:             Set var_17C = Me.FGrid
  loc_1952B2C:             var_278 = CStr(var_17C.TextMatrix))
  loc_1952B34:             var_298 = Val(var_278)
  loc_1952B4A:             var_178 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952B52:             var_220 = CVar(CLng(&H14)) 'Long
  loc_1952B6A:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952B72:             var_E4 = CVar(CLng(&HB)) 'Long
  loc_1952B7B:             Set var_B0 = Me.FGrid
  loc_1952B8C:             var_B4 = CStr(var_B0.TextMatrix))
  loc_1952B9A:             var_19C = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_1952BA2:             Set var_274 = Me.FGrid
  loc_1952BA8:             LateIdCallSt
  loc_1952BD8:           Else
  loc_1952BE6:             Set var_90 = Me.Txt
  loc_1952BEC:             Call 0.Method_Proc_150_68_195468C0 (CInt(&HB), var_B0, var_B4, var_274, var_19C, var_E4, var_C4)
  loc_1952BF4:             var_220 = var_B0.Text
  loc_1952C10:             If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_1952C21:               Set var_128 = Me.Txt
  loc_1952C27:               Call 0.Method_Proc_150_68_195468C0 (CInt(&HA), var_17C, var_278, var_178, var_298)
  loc_1952C2F:               var_148 = var_17C.Text
  loc_1952C52:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952C7C:               var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1952C8D:               Set var_280 = Me.Txt
  loc_1952C93:               Call 0.Method_Proc_150_68_195468C0 (CInt(&HB), var_284, var_288, var_2A0, CVar(CLng(7)))
  loc_1952C9B:               var_C4 = var_284.Text
  loc_1952CBE:               var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952CE8:               var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1952D18:               Set var_90 = Me.TxtGrid
  loc_1952D1E:               Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_2BC, CVar(CLng(8)))
  loc_1952D26:               var_104 = var_B0.Text
  loc_1952D45:               var_19C = CVar(CStr(((Val(var_B4) * (Val(var_278) * var_2A0)) + (Val(var_288) * var_2BC)))) 'String
  loc_1952D4D:               Set var_2B4 = Me.FGrid
  loc_1952D53:               LateIdCallSt
  loc_1952D95:             Else
  loc_1952DA8:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952DD2:               var_298 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1952E03:               Set var_90 = Me.Txt
  loc_1952E09:               Call 0.Method_Proc_150_68_195468C0 (CInt(&HA), var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_298, CVar(CLng(7)))
  loc_1952E11:               var_C4 = var_B0.Text
  loc_1952E24:               var_168 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_1952E2C:               Set var_274 = Me.FGrid
  loc_1952E32:               LateIdCallSt
  loc_1952E5B:             End If
  loc_1952E6E:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952E7F:             Set var_17C = Me.FGrid
  loc_1952E90:             var_278 = CStr(var_17C.TextMatrix))
  loc_1952E98:             var_298 = Val(var_278)
  loc_1952EC9:             Set var_90 = Me.Txt
  loc_1952ECF:             Call 0.Method_Proc_150_68_195468C0 (CInt(9), var_B0, var_B4, CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), var_298, CVar(CLng(&H13)))
  loc_1952ED7:             var_C4 = var_B0.Text
  loc_1952EEA:             var_168 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_1952EF2:             Set var_274 = Me.FGrid
  loc_1952EF8:             LateIdCallSt
  loc_1952F21:           End If
  loc_1952F21:         End If
  loc_1952F2B:         var_A0 = Me.FGrid.Row
  loc_1952F45:         Set var_B0 = Me.FGrid
  loc_1952F56:         var_B4 = CStr(var_B0.TextMatrix))
  loc_1952F5E:         var_298 = Val(var_B4)
  loc_1952F6F:         Set var_128 = Me.Txt
  loc_1952F75:         Call 0.Method_Proc_150_68_195468C0 (CInt(5), var_17C, var_278, var_298, CVar(CLng(&H14)), CVar(CLng(var_A0)), var_274)
  loc_1952F7D:         var_168 = var_17C.Text
  loc_1952F8A:         var_2A0 = Val(var_278)
  loc_1952FE5:         Set var_274 = Me.FGrid
  loc_1952FEB:         LateIdCallSt
  loc_195301D:         Call Proc_150_70_101F6D4(var_A0, var_274, CVar(CStr(Format(CVar(((var_298 * CDbl(&H64)) / var_2A0)), "0.00000"))), 1, 1, CVar(CLng(&H12)), CVar(CLng(Me.FGrid.Row)))
  loc_1953028:       Else
  loc_195302F:         If (var_A4 = CLng(&HF)) Then
  loc_195303F:           Set var_90 = Me.Txt
  loc_1953045:           Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, var_2A0, var_274)
  loc_195304D:           var_168 = var_B0.Text
  loc_1953069:           If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_195307F:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953087:             var_E4 = CVar(CLng(7)) 'Long
  loc_195308C:             var_104 = "0.00"
  loc_1953096:             Set var_B0 = Me.FGrid
  loc_195309C:             LateIdCallSt
  loc_19530C1:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19530C9:             var_E4 = CVar(CLng(8)) 'Long
  loc_19530CE:             var_104 = "0.00"
  loc_19530D8:             Set var_B0 = Me.FGrid
  loc_19530DE:             LateIdCallSt
  loc_19530F0:           End If
  loc_19530FD:           Set var_90 = Me.TxtGrid
  loc_1953103:           Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, var_B0, var_104, var_E4, var_C4)
  loc_195310B:           var_B0 = var_B0.Text
  loc_195312E:           var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953146:           var_104 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1953181:           LateIdCallSt
  loc_19531B5:           Set var_90 = Me.TxtGrid
  loc_19531BB:           Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(CVar(Val(var_B4)), "0.00"))), 1, 1)
  loc_19531C3:           var_104 = var_B0.Text
  loc_19531DF:           If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_19531F5:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19531FD:             var_E4 = CVar(CLng(&HE)) 'Long
  loc_1953230:             If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_1953246:               var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195324E:               var_148 = CVar(CLng(&H13)) 'Long
  loc_1953266:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195326E:               var_E4 = CVar(CLng(&HF)) 'Long
  loc_1953292:               var_168 = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_195329A:               Set var_17C = Me.FGrid
  loc_19532A0:               LateIdCallSt
  loc_19532D4:               var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19532DC:               var_148 = CVar(CLng(&H13)) 'Long
  loc_19532E5:               Set var_17C = Me.FGrid
  loc_19532F6:               var_278 = CStr(var_17C.TextMatrix))
  loc_19532FE:               var_298 = Val(var_278)
  loc_1953314:               var_178 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195331C:               var_220 = CVar(CLng(&H14)) 'Long
  loc_1953334:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195333C:               var_E4 = CVar(CLng(&HB)) 'Long
  loc_1953345:               Set var_B0 = Me.FGrid
  loc_1953356:               var_B4 = CStr(var_B0.TextMatrix))
  loc_1953364:               var_19C = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_195336C:               Set var_274 = Me.FGrid
  loc_1953372:               LateIdCallSt
  loc_19533A2:             Else
  loc_19533B0:               Set var_90 = Me.Txt
  loc_19533B6:               Call 0.Method_Proc_150_68_195468C0 (CInt(&HB), var_B0, var_B4, var_274, var_19C, var_E4, var_C4)
  loc_19533BE:               var_220 = var_B0.Text
  loc_19533DA:               If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_19533EB:                 Set var_128 = Me.Txt
  loc_19533F1:                 Call 0.Method_Proc_150_68_195468C0 (CInt(&HA), var_17C, var_278, var_178, var_298)
  loc_19533F9:                 var_148 = var_17C.Text
  loc_195341C:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953446:                 var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1953457:                 Set var_280 = Me.Txt
  loc_195345D:                 Call 0.Method_Proc_150_68_195468C0 (CInt(&HB), var_284, var_288, var_2A0, CVar(CLng(7)))
  loc_1953465:                 var_C4 = var_284.Text
  loc_1953472:                 var_2A8 = Val(var_288)
  loc_19534B2:                 var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19534C3:                 Set var_2B0 = Me.Txt
  loc_19534C9:                 Call 0.Method_Proc_150_68_195468C0 (CInt(9), var_2B4, var_2C0, var_2BC, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)))
  loc_19534DE:                 var_2D0 = Val(var_2C0)
  loc_195350E:                 Set var_90 = Me.TxtGrid
  loc_1953514:                 Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)))
  loc_195353F:                 var_19C = CVar(CStr((((Val(var_B4) * (Val(var_278) * var_2A0)) + (var_2B4.Text * var_2BC)) / var_B0.Text))) 'String
  loc_1953547:                 Set var_2C8 = Me.FGrid
  loc_195354D:                 LateIdCallSt
  loc_1953595:               Else
  loc_19535A3:                 Set var_128 = Me.Txt
  loc_19535A9:                 Call 0.Method_Proc_150_68_195468C0 (CInt(&HA), var_17C, var_278, var_2C8, var_19C)
  loc_19535B1:                 var_298 = var_17C.Text
  loc_19535D4:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19535FE:                 var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_195360F:                 Set var_280 = Me.Txt
  loc_1953615:                 Call 0.Method_Proc_150_68_195468C0 (CInt(9), var_284, var_288, var_2A0, CVar(CLng(8)))
  loc_195361D:                 var_C4 = var_284.Text
  loc_195362A:                 var_2A8 = Val(var_288)
  loc_195365A:                 Set var_90 = Me.TxtGrid
  loc_1953660:                 Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)))
  loc_1953683:                 var_168 = CVar(CStr((((Val(var_B4) * Val(var_278)) * var_2A0) / var_B0.Text))) 'String
  loc_195368B:                 Set var_290 = Me.FGrid
  loc_1953691:                 LateIdCallSt
  loc_19536C6:               End If
  loc_19536D9:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19536EA:               Set var_17C = Me.FGrid
  loc_19536FB:               var_278 = CStr(var_17C.TextMatrix))
  loc_1953703:               var_298 = Val(var_278)
  loc_1953734:               Set var_90 = Me.Txt
  loc_195373A:               Call 0.Method_Proc_150_68_195468C0 (CInt(9), var_B0, var_B4, CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), var_298, CVar(CLng(&H13)))
  loc_1953742:               var_C4 = var_B0.Text
  loc_1953755:               var_168 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_195375D:               Set var_274 = Me.FGrid
  loc_1953763:               LateIdCallSt
  loc_195378C:             End If
  loc_195378C:           End If
  loc_1953796:           var_A0 = Me.FGrid.Row
  loc_19537B0:           Set var_B0 = Me.FGrid
  loc_19537C1:           var_B4 = CStr(var_B0.TextMatrix))
  loc_19537C9:           var_298 = Val(var_B4)
  loc_19537DA:           Set var_128 = Me.Txt
  loc_19537E0:           Call 0.Method_Proc_150_68_195468C0 (CInt(5), var_17C, var_278, var_298, CVar(CLng(&H14)), CVar(CLng(var_A0)), var_274)
  loc_19537E8:           var_168 = var_17C.Text
  loc_19537F5:           var_2A0 = Val(var_278)
  loc_1953856:           LateIdCallSt
  loc_1953888:           Call Proc_150_70_101F6D4(var_A0, Me.FGrid, CVar(CStr(Format(CVar(((var_298 * CDbl(&H64)) / var_2A0)), "0.00000"))), 1, 1, CVar(CLng(&H12)), CVar(CLng(Me.FGrid.Row)))
  loc_1953893:         Else
  loc_195389A:           If (var_A4 = CLng(&H12)) Then
  loc_19538AA:             Set var_90 = Me.TxtGrid
  loc_19538B0:             Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, var_2A0, var_290)
  loc_19538B8:             var_168 = var_B0.Text
  loc_19538DB:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19538F3:             var_104 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1953920:             var_19C = CVar(CStr(Format(CVar(Val(var_B4)), "0.00000"))) 'String
  loc_1953928:             Set var_200 = Me.FGrid
  loc_195392E:             LateIdCallSt
  loc_1953958:           Else
  loc_195395F:             If (var_A4 = CLng(&HB)) Then
  loc_195399F:               Set var_90 = Me.TxtGrid
  loc_19539A5:               Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_200, var_19C)
  loc_19539AD:               1 = var_B0.Text
  loc_19539BC:               var_138 = CVar(CStr(Val(var_B4))) 'String
  loc_19539C4:               Set var_200 = Me.FGrid
  loc_19539CA:               LateIdCallSt
  loc_19539FE:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953A16:               var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1953A52:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1953A68:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953A80:                 var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1953A85:                 var_104 = "NA"
  loc_1953A8F:                 Set var_128 = Me.FGrid
  loc_1953A95:                 LateIdCallSt
  loc_1953AAD:               End If
  loc_1953AC0:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953AC8:               var_E4 = CVar(CLng(&HB)) 'Long
  loc_1953B00:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1953B16:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953B1E:                 var_E4 = CVar(CLng(&HE)) 'Long
  loc_1953B51:                 If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_1953B67:                   var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953B6F:                   var_148 = CVar(CLng(&H13)) 'Long
  loc_1953B87:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953B8F:                   var_E4 = CVar(CLng(&HF)) 'Long
  loc_1953BB3:                   var_168 = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_1953BBB:                   Set var_17C = Me.FGrid
  loc_1953BC1:                   LateIdCallSt
  loc_1953BF5:                   var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953BFD:                   var_148 = CVar(CLng(&H13)) 'Long
  loc_1953C06:                   Set var_17C = Me.FGrid
  loc_1953C17:                   var_278 = CStr(var_17C.TextMatrix))
  loc_1953C1F:                   var_298 = Val(var_278)
  loc_1953C35:                   var_178 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953C3D:                   var_220 = CVar(CLng(&H14)) 'Long
  loc_1953C55:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953C5D:                   var_E4 = CVar(CLng(&HB)) 'Long
  loc_1953C66:                   Set var_B0 = Me.FGrid
  loc_1953C77:                   var_B4 = CStr(var_B0.TextMatrix))
  loc_1953C85:                   var_19C = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_1953C8D:                   Set var_274 = Me.FGrid
  loc_1953C93:                   LateIdCallSt
  loc_1953CC3:                 Else
  loc_1953CD1:                   Set var_90 = Me.Txt
  loc_1953CD7:                   Call 0.Method_Proc_150_68_195468C0 (CInt(&HB), var_B0, var_B4, var_274, var_19C, var_E4, var_C4)
  loc_1953CDF:                   var_220 = var_B0.Text
  loc_1953CFB:                   If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_1953D0C:                     Set var_128 = Me.Txt
  loc_1953D12:                     Call 0.Method_Proc_150_68_195468C0 (CInt(&HA), var_17C, var_278, var_178, var_298)
  loc_1953D1A:                     var_148 = var_17C.Text
  loc_1953D3D:                     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953D67:                     var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1953D78:                     Set var_280 = Me.Txt
  loc_1953D7E:                     Call 0.Method_Proc_150_68_195468C0 (CInt(&HB), var_284, var_288, var_2A0, CVar(CLng(7)))
  loc_1953D86:                     var_C4 = var_284.Text
  loc_1953D93:                     var_2A8 = Val(var_288)
  loc_1953DD3:                     var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1953DE4:                     Set var_2B0 = Me.Txt
  loc_1953DEA:                     Call 0.Method_Proc_150_68_195468C0 (CInt(9), var_2B4, var_2C0, var_2BC, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)))
  loc_1953DFF:                     var_2D0 = Val(var_2C0)
  loc_1953E2F:                     Set var_90 = Me.TxtGrid
  loc_1953E35:                     Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)))
  loc_1953E60:                     var_19C = CVar(CStr((((Val(var_B4) * (Val(var_278) * var_2A0)) + (var_2B4.Text * var_2BC)) / var_B0.Text))) 'String
  loc_1953E68:                     Set var_2C8 = Me.FGrid
  loc_1953E6E:                     LateIdCallSt
  loc_1953EB6:                   Else
  loc_1953EC4:                     Set var_128 = Me.Txt
  loc_1953ECA:                     Call 0.Method_Proc_150_68_195468C0 (CInt(&HA), var_17C, var_278, var_2C8, var_19C)
  loc_1953ED2:                     var_298 = var_17C.Text
  loc_1953EF5:                     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1953EFD:                     var_E4 = CVar(CLng(7)) 'Long
  loc_1953F1F:                     var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1953F4F:                     Set var_90 = Me.TxtGrid
  loc_1953F55:                     Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_2A0)
  loc_1953F5D:                     var_E4 = var_B0.Text
  loc_1953F74:                     var_168 = CVar(CStr(((Val(var_B4) * Val(var_278)) * var_2A0))) 'String
  loc_1953F7C:                     Set var_284 = Me.FGrid
  loc_1953F82:                     LateIdCallSt
  loc_1953FB1:                   End If
  loc_1953FDB:                   var_124 = Me.FGrid.TextMatrix)
  loc_1953FF5:                   Set var_128 = Me.Txt
  loc_1953FFB:                   Call 0.Method_Proc_150_68_195468C0 (CInt(9), var_17C, var_278, var_124, CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), var_284)
  loc_1954003:                   var_168 = var_17C.Text
  loc_1954026:                   var_2F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195402E:                   var_310 = CVar(CLng(&H14)) 'Long
  loc_1954046:                   var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195404E:                   var_148 = CVar(CLng(&HB)) 'Long
  loc_195408E:                   var_1AC = IIf((CStr(var_124) = "NA"), CVar(Val(var_278)), CVar(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_19540A9:                   var_230 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19540DC:                   var_210 = CVar(CStr((CVar(CLng(&H13)) * CVar(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_19540E4:                   Set var_290 = Me.FGrid
  loc_19540EA:                   LateIdCallSt
  loc_195412F:                 End If
  loc_195412F:               End If
  loc_1954139:               var_A0 = Me.FGrid.Row
  loc_1954153:               Set var_B0 = Me.FGrid
  loc_1954164:               var_B4 = CStr(var_B0.TextMatrix))
  loc_195416C:               var_298 = Val(var_B4)
  loc_195417D:               Set var_128 = Me.Txt
  loc_1954183:               Call 0.Method_Proc_150_68_195468C0 (CInt(5), var_17C, var_278, var_298, CVar(CLng(&H14)), CVar(CLng(var_A0)), var_290)
  loc_195418B:               var_210 = var_17C.Text
  loc_1954198:               var_2A0 = Val(var_278)
  loc_19541EB:               var_1AC = CVar(CStr(Format(CVar(((var_298 * CDbl(&H64)) / var_2A0)), "0.00000"))) 'String
  loc_19541F9:               LateIdCallSt
  loc_195422B:               Call Proc_150_70_101F6D4(var_A0, Me.FGrid, var_1AC, 1, 1, CVar(CLng(&H12)), CVar(CLng(Me.FGrid.Row)))
  loc_1954233:             End If
  loc_1954233:           End If
  loc_1954233:         End If
  loc_1954233:       End If
  loc_1954233:     End If
  loc_1954233:   End If
  loc_1954236: Else
  loc_195423C:   If (var_8A = 1) Then
  loc_1954252:     var_334 = CLng(Me.FGrid1.Col)
  loc_1954262:     If (var_334 = CLng(1)) Then
  loc_1954285:       var_AA = Me.EOF
  loc_19542B3:       Set var_90 = Me.TxtGrid
  loc_19542B9:       Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, ((Me.RecordCount = 0) Or ((var_AA = &HFF) Or (Me.BOF = &HFF))), var_334, var_2A0)
  loc_19542C1:       var_230 = var_B0.Text
  loc_19542D9:       If (var_1AC Or (var_B4 = vbNullString)) Then
  loc_19542EF:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_19542F7:         var_E4 = CVar(CLng(1)) 'Long
  loc_19542FC:         var_104 = vbNullString
  loc_1954306:         Set var_B0 = Me.FGrid1
  loc_195430C:         LateIdCallSt
  loc_1954331:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1954339:         var_E4 = CVar(CLng(2)) 'Long
  loc_195433E:         var_104 = vbNullString
  loc_1954348:         Set var_B0 = Me.FGrid1
  loc_195434E:         LateIdCallSt
  loc_1954363:       Else
  loc_1954366:         Call Proc_150_72_F80BE4(var_AA, var_B0, var_104, var_E4, var_C4, var_B0, var_104)
  loc_1954371:         If (var_AA = &HFF) Then
  loc_1954379:           Proc_150_68_195468C = 0
  loc_195437F:         End If
  loc_1954392:         var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_195439A:         var_148 = CVar(CLng(0)) 'Long
  loc_19543B8:         var_C4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_19543C0:         var_E4 = CVar(CLng(0)) 'Long
  loc_19543DA:         var_B4 = CStr(Me.FGrid1.TextMatrix))
  loc_19543E8:         var_168 = CVar(CStr((Val(var_B4) + CDbl(1)))) 'String
  loc_19543F0:         Set var_17C = Me.FGrid1
  loc_19543F6:         LateIdCallSt
  loc_195442A:         var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1954432:         var_F4 = CVar(CLng(1)) 'Long
  loc_1954465:         var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_195446D:         Set var_17C = Me.FGrid1
  loc_1954473:         LateIdCallSt
  loc_19544A2:         var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_19544AA:         var_F4 = CVar(CLng(2)) 'Long
  loc_19544CC:         var_B0 = Me.Fields.Item("Code")
  loc_19544EB:         LateIdCallSt
  loc_1954535:         Set var_90 = Me.Txt
  loc_195453B:         Call 0.Method_Proc_150_68_195468C0 (CInt(0), var_B0, var_B4, CVar(CLng(5)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1, CVar(CStr(var_B0.Value)))
  loc_1954543:         var_F4 = var_B0.Tag
  loc_195454B:         var_124 = CVar(var_B4) 'String
  loc_1954553:         Set var_17C = Me.FGrid1
  loc_1954559:         LateIdCallSt
  loc_1954573:       End If
  loc_1954576:     Else
  loc_195457D:       If (var_334 = CLng(3)) Then
  loc_195458A:         Set var_90 = Me.TxtGrid
  loc_1954590:         Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_17C, var_124, var_D4)
  loc_19545A8:         var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_19545B0:         var_F4 = CVar(CLng(3)) 'Long
  loc_19545DD:         var_18C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_19545E5:         Set var_17C = Me.FGrid1
  loc_19545EB:         LateIdCallSt
  loc_195460C:       Else
  loc_1954613:         If (var_334 = CLng(4)) Then
  loc_1954643:           Set var_90 = Me.TxtGrid
  loc_1954649:           Call 0.Method_Proc_150_68_195468C0 (arg_C, var_B0, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)), var_17C, var_18C)
  loc_1954651:           1 = var_B0.Text
  loc_1954659:           var_124 = CVar(var_B4) 'String
  loc_1954661:           Set var_17C = Me.FGrid1
  loc_1954667:           LateIdCallSt
  loc_1954681:         End If
  loc_1954681:       End If
  loc_1954681:     End If
  loc_1954681:   End If
  loc_1954681: End If
  loc_1954686: Proc_150_68_195468C = &HFF
End Sub

Public Sub Proc_150_69_F2B140
  'Data Table: 506780
  Dim var_BC As Variant
  Dim var_8C As Integer
  Dim var_108 As Variant
  Dim var_86 As Integer
  loc_F2B046: var_BC = (Me.rows - 1)
  loc_F2B04E: For var_C0 = 1 To CInt(var_BC): var_88 = var_C0 'Integer
  loc_F2B067:   var_BC = (Me.rows - 1)
  loc_F2B06F:   For var_C4 = var_88 To CInt(var_BC): var_8A = var_C4 'Integer
  loc_F2B098:     var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F2B0C3:     var_108 = CVar(Val(CStr(Me.TextMatrix))) 'Double
  loc_F2B0ED:     If (arg_10 > Me.TextMatrix) Then
  loc_F2B113:       var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F2B11C:       Exit For
  loc_F2B11F:     End If
  loc_F2B122:   Next var_C4 'Integer
  loc_F2B127:   ' Referenced from: F2B11C
  loc_F2B12A: Next var_C0 'Integer
  loc_F2B135: var_86 = (var_8C + 1)
  loc_F2B138: Proc_150_69_F2B140 = var_86
End Sub

Public Sub Proc_150_70_101F6D4
  'Data Table: 506780
  Dim var_A0 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As TextBox
  Dim var_130 As TextBox
  loc_101F4C1: var_A0 = CDbl(0)
  loc_101F4EC: For var_B8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_96 = var_B8 'Byte
  loc_101F4F7:   var_C8 = CVar(CLng(var_96)) 'Long
  loc_101F4FF:   var_E8 = CVar(CLng(&HE)) 'Long
  loc_101F52A:   If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_101F532:     var_C8 = CVar(CLng(var_96)) 'Long
  loc_101F53A:     var_E8 = CVar(CLng(&HF)) 'Long
  loc_101F565:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_101F56D:       var_C8 = CVar(CLng(var_96)) 'Long
  loc_101F575:       var_E8 = CVar(CLng(&H14)) 'Long
  loc_101F5A1:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_101F5AD:     End If
  loc_101F5B0:   Else
  loc_101F5B5:     var_C8 = CVar(CLng(var_96)) 'Long
  loc_101F5BD:     var_E8 = CVar(CLng(7)) 'Long
  loc_101F5E8:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_101F5F0:       var_C8 = CVar(CLng(var_96)) 'Long
  loc_101F5F8:       var_E8 = CVar(CLng(&H14)) 'Long
  loc_101F624:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_101F630:     End If
  loc_101F630:   End If
  loc_101F633: Next var_B8 'Byte
  loc_101F647: Set var_A4 = Me.Txt
  loc_101F64D: Call 0.Method_Proc_150_70_101F6D40 (CInt(&HC), var_108)
  loc_101F681: var_B4 = CVar((var_A0 + Val(var_108.Text))) 'Double
  loc_101F69F: Set var_12C = Me.Txt
  loc_101F6A5: Call 0.Method_Proc_150_70_101F6D40 (CInt(1), var_130, CStr(Format(Me.FGrid.TextMatrix), "0.00")))
  loc_101F6AD: var_130.Text = 1
  loc_101F6CD: Proc_150_70_101F6D4 = 1
End Sub

Public Sub Proc_150_71_F80F0C
  'Data Table: 506780
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As String
  Dim var_E8 As MSHFlexGrid
  Dim var_FC As TextBox
  loc_F80DCE: var_86 = 0
  loc_F80DF9: For var_A0 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Byte
  loc_F80E04:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_F80E0C:   var_D0 = CVar(CLng(1)) 'Long
  loc_F80E26:   var_E4 = CStr(Me.FGrid.TextMatrix))
  loc_F80E59:   If ((var_E4 <> vbNullString) And (CLng(var_88) <> CLng(Me.FGrid.Row))) Then
  loc_F80E61:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_F80E69:     var_D0 = CVar(CLng(1)) 'Long
  loc_F80E92:     Set var_E8 = Me.TxtGrid
  loc_F80E98:     Call 0.Method_Proc_150_71_F80F0C0 (0, var_FC, var_E4, CStr(Me.FGrid.TextMatrix)), var_D0)
  loc_F80EA0:     var_B0 = var_FC.Text
  loc_F80EBD:     If (var_D0 = var_E4) Then
  loc_F80EE1:       MsgBox("Duplicate Revenue", &H40, "Validation", var_110, var_120)
  loc_F80EF6:       Proc_150_71_F80F0C = &HFF
  loc_F80EFC:     End If
  loc_F80EFC:   End If
  loc_F80EFF: Next var_A0 'Byte
  loc_F80F05: Proc_150_71_F80F0C = 
End Sub

Public Sub Proc_150_72_F80BE4
  'Data Table: 506780
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As String
  Dim var_E8 As MSHFlexGrid
  Dim var_FC As TextBox
  loc_F80AA6: var_86 = 0
  loc_F80AD1: For var_A0 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_A0 'Byte
  loc_F80ADC:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_F80AE4:   var_D0 = CVar(CLng(1)) 'Long
  loc_F80AFE:   var_E4 = CStr(Me.FGrid1.TextMatrix))
  loc_F80B31:   If ((var_E4 <> vbNullString) And (CLng(var_88) <> CLng(Me.FGrid1.Row))) Then
  loc_F80B39:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_F80B41:     var_D0 = CVar(CLng(1)) 'Long
  loc_F80B6A:     Set var_E8 = Me.TxtGrid
  loc_F80B70:     Call 0.Method_Proc_150_72_F80BE40 (1, var_FC, var_E4, CStr(Me.FGrid1.TextMatrix)), var_D0)
  loc_F80B78:     var_B0 = var_FC.Text
  loc_F80B95:     If (var_D0 = var_E4) Then
  loc_F80BB9:       MsgBox("Duplicate Revenue", &H40, "Validation", var_110, var_120)
  loc_F80BCE:       Proc_150_72_F80BE4 = &HFF
  loc_F80BD4:     End If
  loc_F80BD4:   End If
  loc_F80BD7: Next var_A0 'Byte
  loc_F80BDD: Proc_150_72_F80BE4 = 
End Sub

Public Sub Proc_150_73_F584F4
  'Data Table: 506780
  Dim var_94 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_FC As TextBox
  Dim var_86 As Integer
  loc_F583FD: For var_A8 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A8 'Integer
  loc_F58407:   var_B8 = CVar(CLng(var_88)) 'Long
  loc_F5840F:   var_D8 = CVar(CLng(&H12)) 'Long
  loc_F5843B:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F5844A: Next var_A8 'Integer
  loc_F5846A: If (Me.Check1.Value = 1) Then
  loc_F5847B:   Set var_94 = Me.Txt
  loc_F58481:   Call 0.Method_Proc_150_73_F584F40 (CInt(4), var_FC)
  loc_F584A0:   var_90 = (var_90 + Val(var_FC.Text))
  loc_F584AD: End If
  loc_F584B4: If (var_90 = CDbl(&H64)) Then
  loc_F584B9:   var_86 = &HFF
  loc_F584BF: Else
  loc_F584D8:   MsgBox("Please enter valid Percent Rate", 0, var_10C, var_11C, var_12C)
  loc_F584EA:   var_86 = 0
  loc_F584ED: End If
  loc_F584ED: Proc_150_73_F584F4 = var_86
End Sub

Public Sub Proc_150_74_13CF630(arg_C, arg_10) '13CF630
  'Data Table: 506780
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_154 As Variant
  Dim var_178 As String
  Dim unk_5067A8 As Connection15
  Dim var_B4 As Recordset15
  Dim var_E0 As String
  Dim var_19C As Field20
  Dim var_134 As Variant
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_AC As Recordset15
  Dim var_1C0 As Double
  Dim var_C0 As Double
  Dim var_1D8 As Double
  Dim var_1A4 As Fields15
  Dim var_1E8 As Double
  loc_13CECB4: var_D0 = CVar(CLng(arg_C)) 'Long
  loc_13CECBC: var_F0 = CVar(CLng(2)) 'Long
  loc_13CECF6: var_154 = "SELECT * FROM REVMAST WHERE CODE='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_13CED0D: unk_5067A8.Execute CStr(var_154 & "'"), var_198, -1
  loc_13CED18: Set var_B4 = var_19C
  loc_13CED48: If (var_B4.RecordCount > 0) Then
  loc_13CED58:   var_E0 = "Select taxstru.*,RevMAst.Name AS TaxName,REVMAST.RoundOff from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and taxstru.Code='"
  loc_13CED87:   var_124 = var_E0 & var_B4.Fields.Item("TaxStru").Value 
  loc_13CED90:   var_134 = var_124 & "' Order by Sno" 
  loc_13CED9E:   unk_5067A8.Execute CStr(var_134), var_154, -1
  loc_13CEDA9:   Set var_AC = var_1A4
  loc_13CEDC6: Else
  loc_13CEDDF:   MsgBox("System Defined Revenue is not defined", 0, var_124, var_134, var_154)
  loc_13CEDEF:   Proc_150_74_13CF630 = var_1A4
  loc_13CEDF5: End If
  loc_13CEDF8: var_98 = arg_10
  loc_13CEDFE: var_A0 = arg_10
  loc_13CEE04: var_A8 = CDbl(0)
  loc_13CEE1B: If (var_AC.RecordCount > 0) Then
  loc_13CEE1E:   ' Referenced from: 13CF5B5
  loc_13CEE2D:   If Not(var_AC.EOF) Then
  loc_13CEE5B:     var_B8 = CStr(var_AC.Fields.Item("TaxName").Value)
  loc_13CEE9E:     var_1B8 = Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Nature")), var_A8, var_A0, var_98))) 'Variant
  loc_13CEEB7:     If (var_1B8 = "On Base Amt") Then
  loc_13CEEFA:       If (Trim(CVar(var_AC.Fields.Item("RoundOff"))) = "No") Then
  loc_13CEF63:         var_C0 = CSng(Format(CVar(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_98) / CDbl(&H64))), "0.00000"))
  loc_13CEF7E:       Else
  loc_13CEFB1:         var_1D8 = Val(CStr(var_AC.Fields.Item("Rate").Value))
  loc_13CF010:         Proc_6_142_14A62A0(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_98) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_AC.Fields.Item("Rate").Value)), var_1D8, var_C0)
  loc_13CF03C:         var_134 = CVar((((var_1D8 * var_98) / CDbl(&H64)) + 1)) 'Double
  loc_13CF04C:         var_C0 = CSng(Format("0.00000", "0.00000"))
  loc_13CF070:       End If
  loc_13CF077:       var_A0 = (var_A0 + var_C0)
  loc_13CF07D:       var_A8 = var_C0
  loc_13CF083:     Else
  loc_13CF08E:       If (var_1B8 = "On Running Total") Then
  loc_13CF0D1:         If (Trim(CVar(var_AC.Fields.Item("RoundOff"))) = "No") Then
  loc_13CF107:           var_1C0 = Val(CStr(var_AC.Fields.Item("Rate").Value))
  loc_13CF13A:           var_C0 = CSng(Format(CVar(((var_1C0 * var_A0) / CDbl(&H64))), "0.00000"))
  loc_13CF155:         Else
  loc_13CF1B1:           Proc_6_142_14A62A0(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_A0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_AC.Fields.Item("Rate").Value)), var_C0, 1, 1)
  loc_13CF1E1:           var_C0 = CSng(Format(CVar(var_1C0), "0.00000"))
  loc_13CF1FD:         End If
  loc_13CF204:         var_A0 = (var_A0 + var_C0)
  loc_13CF20A:         var_A8 = var_C0
  loc_13CF210:       Else
  loc_13CF21B:         If (var_1B8 = "On Prev. Tax Amt") Then
  loc_13CF25E:           If (Trim(CVar(var_AC.Fields.Item("RoundOff"))) = "No") Then
  loc_13CF2C7:             var_C0 = CSng(Format(CVar(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))), "0.00000"))
  loc_13CF2E2:           Else
  loc_13CF315:             var_1D8 = Val(CStr(var_AC.Fields.Item("Rate").Value))
  loc_13CF374:             Proc_6_142_14A62A0(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_AC.Fields.Item("Rate").Value)), var_1D8, var_C0, 1)
  loc_13CF3A0:             var_134 = CVar((((var_1D8 * var_98) / CDbl(&H64)) + 1)) 'Double
  loc_13CF3B0:             var_C0 = CSng(Format("0.00000", "0.00000"))
  loc_13CF3D4:           End If
  loc_13CF3DB:           var_A0 = (var_A0 + var_C0)
  loc_13CF3E1:           var_A8 = var_C0
  loc_13CF3E7:         Else
  loc_13CF427:           If (Trim(CVar(var_AC.Fields.Item("RoundOff"))) = "No") Then
  loc_13CF45D:             var_1C0 = Val(CStr(var_AC.Fields.Item("Rate").Value))
  loc_13CF490:             var_C0 = CSng(Format(CVar(((var_1C0 * var_98) / CDbl(&H64))), "0.00000"))
  loc_13CF4AB:           Else
  loc_13CF4D6:             var_178 = CStr(var_AC.Fields.Item("Rate").Value)
  loc_13CF4DE:             var_1D8 = Val(var_178)
  loc_13CF503:             var_124 = var_AC.Fields.Item("Rate").Value
  loc_13CF53D:             Proc_6_142_14A62A0(((Val(CStr(var_124)) * var_98) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_124)), var_1D8, var_C0, 1)
  loc_13CF542:             var_1E8 = 1
  loc_13CF554:             var_154 = "0.00000"
  loc_13CF569:             var_134 = CVar((((var_1D8 * var_98) / CDbl(&H64)) + var_1E8)) 'Double
  loc_13CF579:             var_C0 = CSng(Format("0.00000", var_154))
  loc_13CF59D:           End If
  loc_13CF5A4:           var_A0 = (var_A0 + var_C0)
  loc_13CF5AA:           var_A8 = var_C0
  loc_13CF5AD:         End If
  loc_13CF5AD:       End If
  loc_13CF5AD:     End If
  loc_13CF5B0:     var_AC.MoveNext
  loc_13CF5B5:     GoTo loc_13CEE1E
  loc_13CF5B8:   End If
  loc_13CF5B8: End If
  loc_13CF5BD: Set var_AC = Nothing
  loc_13CF5C5: Set var_B4 = Nothing
  loc_13CF5CD: Set var_B0 = Nothing
  loc_13CF5D6: Proc_150_74_13CF630 = var_A0
  loc_13CF5E2: If (var_90 = &HFF) Then
  loc_13CF5EB:   unk_5067A8.RollbackTrans
  loc_13CF5F0: End If
  loc_13CF5F8: Set var_104 = Err()
  loc_13CF5FE: Call 0.Method_arg_2C (var_178, var_A8, var_A0, var_C0, 1, 1, var_1E8)
  loc_13CF617: MsgBox(CVar(var_178), &H40, var_124, "0.00000", var_154)
  loc_13CF62A: Proc_150_74_13CF630 = var_1C0
End Sub
