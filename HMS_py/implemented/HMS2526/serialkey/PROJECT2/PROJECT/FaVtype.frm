VERSION 5.00
Begin VB.Form FaVtype
  Caption = "Define Voucher Type"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaVtype.frx":0
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11400
  ClientHeight = 7620
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11400
    Height = 450
    TabIndex = 57
  End
  Begin DataGrid DGCategory
    Left = 2490
    Top = 6780
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGNCat
    Left = 2490
    Top = 7380
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin DataGrid DGGroup
    Left = 6825
    Top = 6810
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 40
  End
  Begin DataGrid DGDR
    Left = 11040
    Top = 5595
    Width = 5640
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 52
  End
  Begin DataGrid DGCR
    Left = 11235
    Top = 4560
    Width = 5640
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 53
  End
  Begin DataGrid DGVType
    Left = 2505
    Top = 7050
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 5295
    Width = 3360
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 4980
    Width = 3360
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 5610
    Width = 480
    Height = 285
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
  Begin SSTab SSTab1
    Left = 6735
    Top = 1200
    Width = 9945
    Height = 2400
    TabIndex = 16
    Begin Frame Frame3
      Left = 195
      Top = 390
      Width = 9570
      Height = 1950
      TabIndex = 37
      Begin TextBox TxtGrid
        Index = 0
        BackColor = &HC0FFFF&
        ForeColor = &H80000012&
        Left = 1725
        Top = 465
        Width = 1485
        Height = 240
        Visible = 0   'False
        TabIndex = 39
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin MSHFlexGrid FGrid
        Left = 15
        Top = 150
        Width = 9510
        Height = 1770
        TabIndex = 15
      End
    End
    Begin Frame Frame2
      Left = -74835
      Top = 330
      Width = 9570
      Height = 2010
      TabIndex = 36
      Begin TextBox TxtGrid
        Index = 1
        BackColor = &HC0FFFF&
        ForeColor = &H80000012&
        Left = 1695
        Top = 750
        Width = 1485
        Height = 240
        Visible = 0   'False
        TabIndex = 41
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin MSHFlexGrid FGrid1
        Left = 15
        Top = 150
        Width = 9495
        Height = 1815
        TabIndex = 38
      End
    End
    Begin Frame Frame1
      Left = -74790
      Top = 375
      Width = 9555
      Height = 1920
      TabIndex = 34
      Begin MSHFlexGrid FGrid2
        Left = 15
        Top = 120
        Width = 9510
        Height = 1800
        TabIndex = 35
      End
    End
  End
  Begin Frame FrmList
    Left = 270
    Top = 6570
    Width = 2010
    Height = 1725
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 45
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 33
    End
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 4665
    Width = 480
    Height = 285
    Text = "No"
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 1200
    Width = 990
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 5
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
    Left = 2250
    Top = 3720
    Width = 5640
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 150
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 4350
    Width = 480
    Height = 285
    Text = "No"
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 4035
    Width = 480
    Height = 285
    Text = "No"
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 2460
    Width = 1005
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 5
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
    Left = 2250
    Top = 3405
    Width = 480
    Height = 285
    Text = "No"
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 1515
    Width = 3360
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 2145
    Width = 2025
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 10
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 1830
    Width = 2025
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 10
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 2775
    Width = 1005
    Height = 285
    Text = "Automatic"
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 9
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
    Left = 2250
    Top = 3090
    Width = 480
    Height = 285
    Text = "Yes"
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7170
    Top = 5580
    Width = 3660
    Height = 285
    TabIndex = 56
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
    Left = 7125
    Top = 4980
    Width = 3750
    Height = 255
    TabIndex = 55
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 54
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
  Begin Label Lbl
    Caption = "First Dr/Cr"
    Index = 20
    ForeColor = &HC00000&
    Left = 1260
    Top = 5610
    Width = 945
    Height = 240
    TabIndex = 51
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
  Begin Label Lbl
    Caption = "(D)r / (C)r"
    Index = 19
    ForeColor = &H80&
    Left = 2775
    Top = 5610
    Width = 840
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
  Begin Label Lbl
    Caption = "Default Debit A/C"
    Index = 18
    ForeColor = &HC00000&
    Left = 585
    Top = 5295
    Width = 1620
    Height = 240
    TabIndex = 49
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
  Begin Label Lbl
    Caption = "Default Credit A/C"
    Index = 17
    ForeColor = &HC00000&
    Left = 510
    Top = 4980
    Width = 1695
    Height = 240
    TabIndex = 48
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
  Begin Label Lbl
    Caption = "(Y)es / (N)o"
    Index = 16
    ForeColor = &H80&
    Left = 2760
    Top = 4665
    Width = 1005
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
  Begin Label Lbl
    Caption = "(Y)es / (N)o"
    Index = 15
    ForeColor = &H80&
    Left = 2760
    Top = 4350
    Width = 1005
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
  Begin Label Lbl
    Caption = "(Y)es / (N)o"
    Index = 14
    ForeColor = &H80&
    Left = 2760
    Top = 4035
    Width = 1005
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
  Begin Label Lbl
    Caption = "(Y)es / (N)o"
    Index = 13
    ForeColor = &H80&
    Left = 2760
    Top = 3405
    Width = 1005
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
  Begin Label Lbl
    Caption = "(Y)es / (N)o"
    Index = 12
    ForeColor = &H80&
    Left = 2775
    Top = 3090
    Width = 1005
    Height = 240
    TabIndex = 43
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
  Begin Label Lbl
    Caption = "(M)anual / (A)utomatic / (S)emiauto"
    Index = 8
    ForeColor = &H80&
    Left = 3270
    Top = 2775
    Width = 3300
    Height = 240
    TabIndex = 42
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
  Begin Label Lbl
    Caption = "Clg Date"
    Index = 11
    ForeColor = &HC00000&
    Left = 1380
    Top = 4665
    Width = 810
    Height = 240
    TabIndex = 31
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
  Begin Label Lbl
    Caption = "Type"
    Index = 2
    ForeColor = &HC00000&
    Left = 1725
    Top = 1200
    Width = 465
    Height = 240
    TabIndex = 30
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
  Begin Label Lbl
    Caption = "Nature"
    Index = 1
    ForeColor = &HC00000&
    Left = 1560
    Top = 2460
    Width = 630
    Height = 240
    TabIndex = 29
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
  Begin Label Lbl
    Caption = "Category"
    Index = 0
    ForeColor = &HC00000&
    Left = 1335
    Top = 2145
    Width = 855
    Height = 240
    TabIndex = 28
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
  Begin Label Lbl
    Caption = "Description"
    Index = 3
    ForeColor = &HC00000&
    Left = 1125
    Top = 1515
    Width = 1065
    Height = 240
    TabIndex = 27
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
  Begin Label Lbl
    Caption = "Numbering Method"
    Index = 5
    ForeColor = &HC00000&
    Left = 375
    Top = 2775
    Width = 1815
    Height = 240
    TabIndex = 26
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
  Begin Label Lbl
    Caption = "Chq Date"
    Index = 10
    ForeColor = &HC00000&
    Left = 1320
    Top = 4350
    Width = 870
    Height = 240
    TabIndex = 25
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
  Begin Label Lbl
    Caption = "Short Name"
    Index = 4
    ForeColor = &HC00000&
    Left = 1065
    Top = 1830
    Width = 1125
    Height = 240
    TabIndex = 24
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
  Begin Label Lbl
    Caption = "Seperate Narration"
    Index = 6
    ForeColor = &HC00000&
    Left = 375
    Top = 3090
    Width = 1815
    Height = 240
    TabIndex = 23
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
  Begin Label Lbl
    Caption = "Common Narration"
    Index = 7
    ForeColor = &HC00000&
    Left = 390
    Top = 3405
    Width = 1800
    Height = 240
    TabIndex = 22
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
  Begin Label Lbl
    Caption = "Chq No."
    Index = 9
    ForeColor = &HC00000&
    Left = 1440
    Top = 4035
    Width = 750
    Height = 240
    TabIndex = 21
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
  Begin Label Label3
    Caption = "Address1"
    BackColor = &HC0FFFF&
    ForeColor = &HFF0000&
    Left = 0
    Top = 0
    Width = 855
    Height = 255
    TabIndex = 18
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "FaVtype"

Private global_98 As Integer
Private global_100 As Integer

Private Sub DGVType_UnknownEvent_9 'F7F114
  'Data Table: 50BAA0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7EFD0: On Error Goto loc_F7F0EA
  loc_F7EFE2: Me.DGVType.Visible = False
  loc_F7F001: If (Me.RecordCount > 0) Then
  loc_F7F040:   Set var_B4 = Me.Txt
  loc_F7F046:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F7F04E:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7F081:   var_B0 = Me.Fields.Item("Name")
  loc_F7F092:   var_CC = CStr(var_B0.Value)
  loc_F7F0A0:   Set var_B4 = Me.Txt
  loc_F7F0A6:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F7F0AE:   var_B8.Text = var_CC
  loc_F7F0C4: End If
  loc_F7F0CF: Set var_A8 = Me.Txt
  loc_F7F0D5: Call 0.Method_DGVType_UnknownEvent_90 (CInt(2))
  loc_F7F0DD: var_B0.SetFocus
  loc_F7F0E9: Exit Sub
  loc_F7F0EA: ' Referenced from: F7EFD0
  loc_F7F0F0: Call 0.Method_arg_50 (var_CC)
  loc_F7F105: Proc_183_57_104B0BC(var_CC, "DGVType_Click")
  loc_F7F111: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F7EDEC
  'Data Table: 50BAA0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7ECA8: On Error Goto loc_F7EDC2
  loc_F7ECBA: Me.DGCategory.Visible = False
  loc_F7ECD9: If (Me.RecordCount > 0) Then
  loc_F7ED18:   Set var_B4 = Me.Txt
  loc_F7ED1E:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F7ED26:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7ED59:   var_B0 = Me.Fields.Item("Name")
  loc_F7ED6A:   var_CC = CStr(var_B0.Value)
  loc_F7ED78:   Set var_B4 = Me.Txt
  loc_F7ED7E:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F7ED86:   var_B8.Text = var_CC
  loc_F7ED9C: End If
  loc_F7EDA7: Set var_A8 = Me.Txt
  loc_F7EDAD: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0))
  loc_F7EDB5: var_B0.SetFocus
  loc_F7EDC1: Exit Sub
  loc_F7EDC2: ' Referenced from: F7ECA8
  loc_F7EDC8: Call 0.Method_arg_50 (var_CC)
  loc_F7EDDD: Proc_183_57_104B0BC(var_CC, "DGCategory_Click")
  loc_F7EDE9: Exit Sub
End Sub

Private Sub Form_Load() '12F6EEC
  'Data Table: 50BAA0
  Dim var_BC As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_D8 As String
  loc_12F67EC: On Error Goto loc_12F6EC2
  loc_12F67F9: Set var_A8 = Me.TopCtrl1
  loc_12F67FF: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_12F680D: Call 0.Method_arg_50 (var_AC)
  loc_12F681D: Set var_A8 = Me.TopCtrl1
  loc_12F6823: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(CVar(var_AC))
  loc_12F683D: Me.LblUser.Left = CDbl(13500)
  loc_12F6854: Me.LblUser.Top = CDbl(7800)
  loc_12F686B: Me.LblLDt.Top = CDbl(8160)
  loc_12F6882: Me.LblLDt.Left = CDbl(13500)
  loc_12F6891: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12F68A9: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12F68C4: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12F68DF: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12F68FA: Me.SSTab1.BackColor = CVar(CLng(MemVar_1F951B4))
  loc_12F690E: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_12F691F: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_12F6930: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_12F6941: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_12F6952: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_12F6963: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_12F6974: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_12F6985: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_12F6996: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_12F69A7: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_12F69C1: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_12F69CF: Set var_A8 = MemVar_1F95044
  loc_12F69DE: Call 0.Method_Form_Load8 (var_A8)
  loc_12F69F4: Me.var_A8.Clone
  loc_12F6A0E: Call 0.Method_arg_50 (var_A8, -1)
  loc_12F6A24: Set global_56 = New 
  loc_12F6A36: Me.Recordset15.CursorLocation = 3
  loc_12F6A60: var_BC = CVar("Select DISTINCT Category As Code,Category as Name From VoucherCat WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Category") 'String
  loc_12F6A6A: Me.Open var_BC, CVar(MemVar_1F951E0), 2
  loc_12F6A7E: CVarUnk
  loc_12F6A83: VerifyVarObj
  loc_12F6A89: Set var_A8 = Me.DGCategory
  loc_12F6A8F: LateIdStAd
  loc_12F6AA7: Set global_60 = New 
  loc_12F6AB9: Me.DGCategory.CursorLocation = 3
  loc_12F6AE3: var_BC = CVar("Select Category As Code,V_Type as Name,Category From Voucher_Type WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') order by V_type") 'String
  loc_12F6AED: Me.Open var_BC, CVar(MemVar_1F951E0), 2
  loc_12F6B01: CVarUnk
  loc_12F6B06: VerifyVarObj
  loc_12F6B0C: Set var_A8 = Me.DGVType
  loc_12F6B12: LateIdStAd
  loc_12F6B2A: Set global_64 = New 
  loc_12F6B3C: Me.DGVType.CursorLocation = 3
  loc_12F6B66: var_BC = CVar("Select Category as Code,NCat as Name,Category From VoucherCat WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Category") 'String
  loc_12F6B70: Me.Open var_BC, CVar(MemVar_1F951E0), 2
  loc_12F6B84: CVarUnk
  loc_12F6B89: VerifyVarObj
  loc_12F6B8F: Set var_A8 = Me.DGNCat
  loc_12F6B95: LateIdStAd
  loc_12F6BAD: Set global_72 = New 
  loc_12F6BBF: Me.DGNCat.CursorLocation = 3
  loc_12F6BF3: Me.Open CVar("Select ShowGroup,DonotShowGroup From FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'"), CVar(MemVar_1F951E0), 2
  loc_12F6C08: Set global_84 = New 
  loc_12F6C1A: Me.Recordset15.CursorLocation = 3
  loc_12F6C44: var_BC = CVar("Select SubCode As Code,Name From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_12F6C4E: Me.Open var_BC, CVar(MemVar_1F951E0), 2
  loc_12F6C62: CVarUnk
  loc_12F6C67: VerifyVarObj
  loc_12F6C6D: Set var_A8 = Me.DGCR
  loc_12F6C73: LateIdStAd
  loc_12F6C8B: Set global_80 = New 
  loc_12F6C9D: Me.DGCR.CursorLocation = 3
  loc_12F6CC7: var_BC = CVar("Select SubCode As Code,Name From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_12F6CD1: Me.Open var_BC, CVar(MemVar_1F951E0), 2
  loc_12F6CE5: CVarUnk
  loc_12F6CEA: VerifyVarObj
  loc_12F6CF0: Set var_A8 = Me.DGDR
  loc_12F6CF6: LateIdStAd
  loc_12F6D0E: Set global_68 = New 
  loc_12F6D20: Me.DGDR.CursorLocation = 3
  loc_12F6D64: If (Me.Fields.Item("ShowGroup").Value = "Yes") Then
  loc_12F6D85:   var_AC = "Select GroupCode as Code,GroupName as Name From AcGroup Where SysGroup = 'Y' And AliasYN <> 'Y' AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_12F6D96:   Me.Open CVar(var_AC & "' OR LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F951E0), 2
  loc_12F6DA4: Else
  loc_12F6DC9:   var_BC = CVar("Select GroupCode as Code,GroupName as Name From AcGroup Where AliasYN <> 'Y' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by GroupName") 'String
  loc_12F6DD3:   Me.Open var_BC, CVar(MemVar_1F951E0), 2
  loc_12F6DDE: End If
  loc_12F6DE7: CVarUnk
  loc_12F6DEC: VerifyVarObj
  loc_12F6DF2: Set var_A8 = Me.DGGroup
  loc_12F6DF8: LateIdStAd
  loc_12F6E22: Me.DGGroup.CursorLocation = 3
  loc_12F6E53: var_D8 = "Select V.V_Type as SearchCode,V.* From Voucher_Type V WHERE SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_12F6E64: Me.Open CVar(var_D8 & "' Order by V.V_type"), CVar(MemVar_1F951E0), 2
  loc_12F6E81: Set var_A8 = Me
  loc_12F6E8A: var_AC = "INI"
  loc_12F6E98: Call Proc_207_60_EB2748(Proc_5_1_100EC1C(var_AC, var_A8, New, 3, -1, var_A8, global_68, 3), -1, 3, -1)
  loc_12F6EA3: Call Proc_207_63_141EC84(var_A8, global_80)
  loc_12F6EB4: Proc_183_47_EA13E8(Me, 3)
  loc_12F6EBC: Call Proc_207_59_1728990(-1)
  loc_12F6EC1: Exit Sub
  loc_12F6EC2: ' Referenced from: 12F67EC
  loc_12F6EC8: Call 0.Method_arg_50 (var_AC)
  loc_12F6ED0: var_D8 = "Form_Load"
  loc_12F6EDD: Proc_183_57_104B0BC(var_AC)
  loc_12F6EE9: Exit Sub
End Sub

Private Sub Form_Resize() 'FAD4F8
  'Data Table: 50BAA0
  Dim var_8C As Label
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  Dim var_C8 As Variant
  Dim var_DC As TextBox
  loc_FAD378: On Error Goto loc_FAD4D0
  loc_FAD381: Call 0.Method_arg_50 (var_88)
  loc_FAD393: Me.LblFormCaption.Caption = var_88
  loc_FAD3AC: Me.LblFormCaption.Left = CDbl(0)
  loc_FAD3B8: Set var_A0 = Me.TopCtrl1
  loc_FAD3BE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_FAD3CB: Set var_8C = Me.TopCtrl1
  loc_FAD3D1: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_FAD3EB: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_FAD406: Call 0.Method_arg_100 (var_B8)
  loc_FAD418: Me.LblFormCaption.Width = var_B8
  loc_FAD42E: Set var_8C = Me.Txt
  loc_FAD434: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_FAD453: Me.DGVType.Left = CVar(var_A0.Left)
  loc_FAD46F: Set var_B4 = Me.Txt
  loc_FAD475: Call 0.Method_Form_Resize0 (CInt(2), var_DC)
  loc_FAD490: Set var_8C = Me.Txt
  loc_FAD496: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_FAD4AE: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_FAD4BD: Me.DGVType.Top = CVar(var_A0.Left)
  loc_FAD4CF: Exit Sub
  loc_FAD4D0: ' Referenced from: FAD378
  loc_FAD4D6: Call 0.Method_arg_50 (var_88)
  loc_FAD4DE: var_EC = "Form_Resize"
  loc_FAD4EB: Proc_183_57_104B0BC(var_88)
  loc_FAD4F7: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'ECF6EC
  'Data Table: 50BAA0
  loc_ECF640: On Error Goto loc_ECF6C2
  loc_ECF64E: Set global_56 = Nothing
  loc_ECF660: Set global_76 = Nothing
  loc_ECF672: Set global_64 = Nothing
  loc_ECF684: Set global_60 = Nothing
  loc_ECF696: Set global_84 = Nothing
  loc_ECF6A8: Set global_80 = Nothing
  loc_ECF6BA: Set global_124 = Nothing
  loc_ECF6C1: Exit Sub
  loc_ECF6C2: ' Referenced from: ECF640
  loc_ECF6C8: Call 0.Method_arg_50 (var_8C)
  loc_ECF6D0: var_94 = "Form_Unload"
  loc_ECF6DD: Proc_183_57_104B0BC(var_8C)
  loc_ECF6E9: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E031D8
  'Data Table: 50BAA0
  loc_E031D1: Call Form_Unload(&HFF)
  loc_E031D6: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A2E8
  'Data Table: 50BAA0
  loc_E6A2A0: On Error Goto loc_E6A2BE
  loc_E6A2B5: Proc_183_40_F3169C(Me, KeyCode)
  loc_E6A2BD: Exit Sub
  loc_E6A2BE: ' Referenced from: E6A2A0
  loc_E6A2C4: Call 0.Method_arg_50 (var_8C)
  loc_E6A2D9: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E6A2E5: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'EBFBBC
  'Data Table: 50BAA0
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EBFB24: On Error Goto loc_EBFB93
  loc_EBFB4A: If (CDbl(CLng(Me.FGrid1.BackColorSel)) = CDbl(global_52)) Then
  loc_EBFB60:   Me.FGrid1.Col = 1
  loc_EBFB68: End If
  loc_EBFB73: Set var_88 = Me.TxtGrid
  loc_EBFB79: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_BC)
  loc_EBFB81: var_BC.Visible = False
  loc_EBFB8D: Call Proc_207_61_F9594C()
  loc_EBFB92: Exit Sub
  loc_EBFB93: ' Referenced from: EBFB24
  loc_EBFB99: Call 0.Method_arg_50 (var_C0)
  loc_EBFBA1: var_C8 = "FGrid1_GotFocus"
  loc_EBFBAE: Proc_183_57_104B0BC(var_C0)
  loc_EBFBBA: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E685B8
  'Data Table: 50BAA0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68574: Set var_88 = Me.TxtGrid
  loc_E6857A: Call 0.Method_Fgrid1_UnknownEvent_10 (1, var_8C)
  loc_E68594: If (var_8C.Visible = 0) Then
  loc_E685AD:   Me.FGrid1.BackColorSel = CVar(CLng(global_52))
  loc_E685B5: End If
  loc_E685B5: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '1070778
  'Data Table: 50BAA0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_114 As String
  loc_10704F4: On Error Goto loc_107074E
  loc_10704FB: Set var_88 = Me.TopCtrl1
  loc_1070501: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_107051A: If (CStr() = "Browse") Then
  loc_107051D:   Exit Sub
  loc_107051E: End If
  loc_107055B: If ((CLng(Me.FGrid1.Col) = CLng(2)) Or (CLng(Me.FGrid1.Col) = CLng(3))) Then
  loc_1070571:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1070589:   var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10705A3:   var_9C = CStr(Me.FGrid1.TextMatrix))
  loc_10705C0:   If (var_9C = vbNullString) Then
  loc_10705E5:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_1070616:     Me.FGrid1.Row = CVar(CLng(Me.FGrid1.Row))
  loc_1070635:     Me.FGrid1.CellFontName = "wingdings"
  loc_107064F:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_107066A:     Me.FGrid1.CellForeColor = &HFF
  loc_1070685:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_107069D:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10706A2:     var_114 = "ü"
  loc_10706AC:     Set var_F4 = Me.FGrid1
  loc_10706B2:     LateIdCallSt
  loc_10706CD:   Else
  loc_10706E0:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10706E9:     Set var_A0 = Me.FGrid1
  loc_10706F8:     var_E0 = CVar(CLng(var_A0.Col)) 'Long
  loc_10706FD:     var_114 = vbNullString
  loc_1070707:     Set var_F4 = Me.FGrid1
  loc_107070D:     LateIdCallSt
  loc_1070725:   End If
  loc_1070728: Else
  loc_1070733:   Set var_88 = Me.TxtGrid
  loc_1070739:   Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_A0, 0, var_F4, var_114, var_E0, var_C0)
  loc_1070741:   var_A0.Visible = var_F4
  loc_107074D: End If
  loc_107074D: Exit Sub
  loc_107074E: ' Referenced from: 10704F4
  loc_1070754: Call 0.Method_arg_50 (var_9C, var_114, var_E0)
  loc_1070769: Proc_183_57_104B0BC(var_9C, "FGrid1_Click", var_C0)
  loc_1070775: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '12542FC
  'Data Table: 50BAA0
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_130 As String
  loc_1253DA0: On Error Goto loc_12542D4
  loc_1253DA7: Set var_88 = Me.TopCtrl1
  loc_1253DAD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1253DC6: If (CStr() = "Browse") Then
  loc_1253DC9:   Exit Sub
  loc_1253DCA: End If
  loc_1253E3E: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_1253E49:   var_9C = "+{Tab}"
  loc_1253E4F:   Proc_303_0_FBACC8(CStr(Me.FGrid1.Tag), 0)
  loc_1253E59:   KeyCode = 0
  loc_1253E5F: Else
  loc_1253E69:   var_B0 = Me.FGrid1.Rows
  loc_1253E8E:   var_9C = CStr(Me.FGrid1.Tag)
  loc_1253EA5:   var_D8 = 1
  loc_1253EC0:   var_C4 = Me.FGrid1.TextMatrix)
  loc_1253EED:   If (CVar(CLng(1)) And (CStr(var_C4) <> vbNullString)) Then
  loc_1253F06:     var_D8 = "Save Record ?"
  loc_1253F27:     If (MsgBox(var_D8, 4, "Save Data", var_C4, var_11C) = 6) Then
  loc_1253F2A:       Call TopCtrl1_UnknownEvent_16()
  loc_1253F2F:       Exit Sub
  loc_1253F30:     End If
  loc_1253F33:   Else
  loc_1253F3D:     var_B0 = Me.FGrid1.Rows
  loc_1253F8A:     If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1253F9B:       Proc_303_0_FBACC8("{Tab}", 0, var_B0, var_D8, ((CLng(KeyCode) = &H28) And (CDbl(Val("{Tab}")) = CDbl((CLng(var_B0) - 1)))))
  loc_1253FA3:     End If
  loc_1253FA3:   End If
  loc_1253FA3: End If
  loc_1253FA9: global_98 = KeyCode
  loc_1253FCF: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_1253FF3: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1254019:   If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_125402F:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1254047:     var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_125404C:     var_130 = vbNullString
  loc_1254056:     Set var_B4 = Me.FGrid1
  loc_125405C:     LateIdCallSt
  loc_1254087:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_125408F:     var_F8 = CVar(CLng(4)) 'Long
  loc_1254094:     var_130 = vbNullString
  loc_125409E:     Set var_A0 = Me.FGrid1
  loc_12540A4:     LateIdCallSt
  loc_12540B6:   End If
  loc_12540B6: End If
  loc_12540BC: If (KeyCode = &HD) Then
  loc_12540C4:   global_100 = 0
  loc_1254104:   If ((CLng(Me.FGrid1.Col) = CLng(2)) Or (CLng(Me.FGrid1.Col) = CLng(3))) Then
  loc_125411A:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1254132:     var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_125414C:     var_9C = CStr(Me.FGrid1.TextMatrix))
  loc_1254169:     If (var_9C = vbNullString) Then
  loc_125418E:       Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_12541BF:       Me.FGrid1.Row = CVar(CLng(Me.FGrid1.Row))
  loc_12541DE:       Me.FGrid1.CellFontName = "wingdings"
  loc_12541F8:       Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_1254213:       Me.FGrid1.CellForeColor = &HFF
  loc_125422E:       var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1254246:       var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_125424B:       var_130 = "ü"
  loc_1254255:       Set var_B4 = Me.FGrid1
  loc_125425B:       LateIdCallSt
  loc_1254276:     Else
  loc_1254289:       var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12542A1:       var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_12542A6:       var_130 = vbNullString
  loc_12542B0:       Set var_B4 = Me.FGrid1
  loc_12542B6:       LateIdCallSt
  loc_12542CE:     End If
  loc_12542CE:   End If
  loc_12542CE: End If
  loc_12542D0: KeyCode = 0
  loc_12542D3: Exit Sub
  loc_12542D4: ' Referenced from: 1253DA0
  loc_12542DA: Call 0.Method_arg_50 (var_9C, KeyCode, var_B4, var_130, var_F8, var_D8, var_B4, var_130)
  loc_12542EF: Proc_183_57_104B0BC(var_9C, "FGrid1_KeyDown", var_F8, var_D8, var_F8)
  loc_12542FB: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E60B40
  'Data Table: 50BAA0
  loc_E60AFC: On Error Goto loc_E60B16
  loc_E60B08: Call Fgrid1_UnknownEvent_C()
  loc_E60B12: global_100 = 0
  loc_E60B15: Exit Sub
  loc_E60B16: ' Referenced from: E60AFC
  loc_E60B1C: Call 0.Method_arg_50 (var_8C, global_100)
  loc_E60B31: Proc_183_57_104B0BC(var_8C, "FGrid1_DblClick")
  loc_E60B3D: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'EED12C
  'Data Table: 50BAA0
  loc_EED078: On Error Goto loc_EED102
  loc_EED09E: If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_EED0DA:   Proc_183_26_11578C8(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_EED0EC: End If
  loc_EED0F6: If (CLng(KeyCode) <> &HD) Then
  loc_EED0FE:   global_100 = &HFF
  loc_EED101: End If
  loc_EED101: Exit Sub
  loc_EED102: ' Referenced from: EED078
  loc_EED108: Call 0.Method_arg_50 (var_B4, global_100, 0)
  loc_EED11D: Proc_183_57_104B0BC(var_B4, "FGrid1_KeyPress")
  loc_EED129: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D '104EBD8
  'Data Table: 50BAA0
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Long
  loc_104E97C: On Error Goto loc_104EBAF
  loc_104E983: Set var_8C = Me.TopCtrl1
  loc_104E989: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_104E991: var_A0 = CStr()
  loc_104E9A2: If (var_A0 = "Browse") Then
  loc_104E9A5:   Exit Sub
  loc_104E9A6: End If
  loc_104E9C3: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_104E9C6:   Exit Sub
  loc_104E9C7: End If
  loc_104E9D8: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_104E9FA:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_104EA34:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_104EA56:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_104EA6C:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_104EA75:         Set var_114 = Me.FGrid1
  loc_104EA90:       Else
  loc_104EAA3:         Me.FGrid1.Rows = 1
  loc_104EAC0:         var_D0 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_104EAC8:         Set var_114 = Me.FGrid1
  loc_104EAF7:         Me.FGrid1.FixedRows = 1
  loc_104EAFF:       End If
  loc_104EB24:       For var_118 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_118 'Integer
  loc_104EB2E:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_104EB33:         var_E0 = 0
  loc_104EB41:         var_9C = CVar(CStr(var_86)) 'String
  loc_104EB49:         Set var_8C = Me.FGrid1
  loc_104EB4F:         LateIdCallSt
  loc_104EB60:       Next var_118 'Integer
  loc_104EB65:     End If
  loc_104EB68:   Else
  loc_104EB89:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_104EB99:   End If
  loc_104EB9D:   Set var_8C = Me.FGrid1
  loc_104EBAE: End If
  loc_104EBAE: Exit Sub
  loc_104EBAF: ' Referenced from: 104E97C
  loc_104EBB5: Call 0.Method_arg_50 (var_A0)
  loc_104EBCA: Proc_183_57_104B0BC(var_A0, "FGrid1_KeyUp")
  loc_104EBD6: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E4001C
  'Data Table: 50BAA0
  Dim var_8C As TextBox
  loc_E3FFFB: Set var_88 = Me.TxtGrid
  loc_E40001: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E40009: var_8C.Visible = False
  loc_E40015: Call Proc_207_61_F9594C()
  loc_E4001A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '131A244
  'Data Table: 50BAA0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_EC As String
  loc_1319AD4: On Error Goto loc_131A21B
  loc_1319AE1: Set var_88 = Me.Txt
  loc_1319AE7: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1319AF5: Proc_183_28_E216B0(var_8C)
  loc_1319B01: Call Proc_207_61_F9594C(var_8C)
  loc_1319B09: var_92 = Index
  loc_1319B14: If (var_92 = CInt(0)) Then
  loc_1319B65:   Set var_88 = Me.Txt
  loc_1319B6B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1319B73:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1319B8B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_1319B8E:     Exit Sub
  loc_1319B8F:   End If
  loc_1319B9C:   Set var_88 = Me.Txt
  loc_1319BA2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1319BAA:   var_A0 = var_8C.Text
  loc_1319BBC:   var_B0 = "Name"
  loc_1319BF7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1319C00:     Me.MoveFirst
  loc_1319C23:     Set var_88 = Me.Txt
  loc_1319C29:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1319C31:     0 = var_8C.Text
  loc_1319C4A:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1319C5F:   End If
  loc_1319C62: Else
  loc_1319C6A:   If (var_92 = CInt(2)) Then
  loc_1319CBB:     Set var_88 = Me.Txt
  loc_1319CC1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1319CE1:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1319CE4:       Exit Sub
  loc_1319CE5:     End If
  loc_1319CF2:     Set var_88 = Me.Txt
  loc_1319CF8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1319D00:     var_A0 = var_8C.Text
  loc_1319D12:     var_B0 = "Name"
  loc_1319D4D:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1319D56:       Me.MoveFirst
  loc_1319D79:       Set var_88 = Me.Txt
  loc_1319D7F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1319D87:       0 = var_8C.Text
  loc_1319DA0:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1319DB5:     End If
  loc_1319DB8:   Else
  loc_1319DC0:     If (var_92 = CInt(1)) Then
  loc_1319DD2:       Me.Filter = 0
  loc_1319DE8:       Set var_88 = Me.Txt
  loc_1319DEE:       Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1319E10:       Me.Filter = CVar("Category='" & var_8C.Text & "'")
  loc_1319E74:       Set var_88 = Me.Txt
  loc_1319E7A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1319E9A:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1319E9D:         Exit Sub
  loc_1319E9E:       End If
  loc_1319EAB:       Set var_88 = Me.Txt
  loc_1319EB1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1319EB9:       var_A0 = var_8C.Text
  loc_1319ECB:       var_B0 = "Name"
  loc_1319F06:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1319F0F:         Me.MoveFirst
  loc_1319F32:         Set var_88 = Me.Txt
  loc_1319F38:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1319F40:         0 = var_8C.Text
  loc_1319F59:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1319F6E:       End If
  loc_1319F71:     Else
  loc_1319F79:       If (var_92 = CInt(&HC)) Then
  loc_1319FCA:         Set var_88 = Me.Txt
  loc_1319FD0:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1319FF0:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1319FF3:           Exit Sub
  loc_1319FF4:         End If
  loc_131A001:         Set var_88 = Me.Txt
  loc_131A007:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A00F:         var_A0 = var_8C.Text
  loc_131A021:         var_B0 = "Name"
  loc_131A05C:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_131A065:           Me.MoveFirst
  loc_131A088:           Set var_88 = Me.Txt
  loc_131A08E:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131A096:           0 = var_8C.Text
  loc_131A0AF:           Me.Find 1 & var_A0 & "'", var_B0, 
  loc_131A0C4:         End If
  loc_131A0C7:       Else
  loc_131A0CF:         If (var_92 = CInt(&HD)) Then
  loc_131A120:           Set var_88 = Me.Txt
  loc_131A126:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A146:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_131A149:             Exit Sub
  loc_131A14A:           End If
  loc_131A157:           Set var_88 = Me.Txt
  loc_131A15D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A165:           var_A0 = var_8C.Text
  loc_131A177:           var_B0 = "Name"
  loc_131A1B2:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_131A1BB:             Me.MoveFirst
  loc_131A1DE:             Set var_88 = Me.Txt
  loc_131A1E4:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131A1EC:             0 = var_8C.Text
  loc_131A205:             Me.Find 1 & var_A0 & "'", var_B0, 
  loc_131A21A:           End If
  loc_131A21A:         End If
  loc_131A21A:       End If
  loc_131A21A:     End If
  loc_131A21A:   End If
  loc_131A21A: End If
  loc_131A21A: Exit Sub
  loc_131A21B: ' Referenced from: 1319AD4
  loc_131A221: Call 0.Method_arg_50 (var_A0)
  loc_131A229: var_EC = "Txt_GotFocus"
  loc_131A236: Proc_183_57_104B0BC(var_A0)
  loc_131A242: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11A53B4
  'Data Table: 50BAA0
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_90 As Variant
  Dim var_F8 As String
  loc_11A4FAC: On Error Goto loc_11A538A
  loc_11A4FB9: If (CLng(Shift) = &H1B) Then
  loc_11A4FBC:   Call Proc_207_61_F9594C()
  loc_11A4FC1:   Exit Sub
  loc_11A4FC2: End If
  loc_11A4FC5: var_86 = KeyCode
  loc_11A4FD0: If (var_86 = CInt(&HC)) Then
  loc_11A5009:   Proc_183_34_1307118(Me.DGCR, Me.Txt, KeyCode, global_84)
  loc_11A501C: Else
  loc_11A5024:   If (var_86 = CInt(&HD)) Then
  loc_11A505D:     Proc_183_34_1307118(Me.DGDR, Me.Txt, KeyCode, global_80, Shift, 0)
  loc_11A5070:   Else
  loc_11A5078:     If (var_86 = CInt(2)) Then
  loc_11A50B1:       Proc_183_31_100957C(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_11A50C4:     Else
  loc_11A50CC:       If (var_86 = CInt(0)) Then
  loc_11A5105:         Proc_183_34_1307118(Me.DGCategory, Me.Txt, KeyCode, global_56, Shift, 0, 1)
  loc_11A5118:       Else
  loc_11A5120:         If (var_86 = CInt(1)) Then
  loc_11A5159:           Proc_183_34_1307118(Me.DGNCat, Me.Txt, KeyCode, global_64, Shift, 0, 1)
  loc_11A5169:         End If
  loc_11A5169:       End If
  loc_11A5169:     End If
  loc_11A5169:   End If
  loc_11A5169: End If
  loc_11A5183: Set var_90 = Me.DGCR
  loc_11A5210: If ((((((CBool(Me.DGDR.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGCategory.Visible) = 0)) And (CBool(Me.DGNCat.Visible) = 0)) And (CBool(Me.DGVType.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_11A5228:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11A5239:     Set var_8C = Me.Txt
  loc_11A523F:     Call 0.Method_Txt_KeyDown0 (CInt(7), var_90, var_F8, 1, 1)
  loc_11A5247:     Shift = var_90.Text
  loc_11A525E:     If (var_F8 = "Yes") Then
  loc_11A526E:       Set var_8C = Me.Txt
  loc_11A5274:       Call 0.Method_Txt_KeyDown0 (CInt(8), var_90, &HFF)
  loc_11A527C:       var_90.Enabled = False
  loc_11A528B:     Else
  loc_11A5298:       Set var_8C = Me.Txt
  loc_11A529E:       Call 0.Method_Txt_KeyDown0 (CInt(8), var_90, 0)
  loc_11A52A6:       var_90.Enabled = True
  loc_11A52C0:       Set var_8C = Me.Txt
  loc_11A52C6:       Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_11A52CE:       var_90.Text = vbNullString
  loc_11A52DA:     End If
  loc_11A52E0:     Proc_183_29_E53794(Shift, arg_14)
  loc_11A52E5:   End If
  loc_11A52E9:   Set var_8C = Me.TopCtrl1
  loc_11A52EF:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_11A5311:   If ((CStr() = "Add") And (KeyCode <> CInt(0))) Then
  loc_11A5329:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11A5332:       Proc_183_30_E53D10(Shift)
  loc_11A5337:     End If
  loc_11A5337:   End If
  loc_11A533B:   Set var_8C = Me.TopCtrl1
  loc_11A5341:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_14)
  loc_11A5349:   var_F8 = CStr()
  loc_11A5363:   If ((var_F8 = "Edit") And (KeyCode <> CInt(3))) Then
  loc_11A537B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11A5384:       Proc_183_30_E53D10(Shift)
  loc_11A5389:     End If
  loc_11A5389:   End If
  loc_11A5389: End If
  loc_11A5389: Exit Sub
  loc_11A538A: ' Referenced from: 11A4FAC
  loc_11A5390: Call 0.Method_arg_50 (var_F8)
  loc_11A53A5: Proc_183_57_104B0BC(var_F8, "Txt_KeyDown")
  loc_11A53B1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '12205B4
  'Data Table: 50BAA0
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As String
  loc_12200BC: On Error Goto loc_122058B
  loc_12200C2: Proc_183_46_E07C50(arg_10)
  loc_12200CA: var_86 = KeyAscii
  loc_12200D5: If (var_86 = CInt(&HC)) Then
  loc_12200F4:   If (CBool(Me.DGCR.Visible) = &HFF) Then
  loc_1220106:     var_A0 = "Name"
  loc_1220121:     Proc_183_41_145A968(Me.Txt, KeyAscii, global_84, arg_10)
  loc_1220130:   End If
  loc_1220133: Else
  loc_122013B:   If (var_86 = CInt(&HD)) Then
  loc_122015A:     If (CBool(Me.DGDR.Visible) = &HFF) Then
  loc_1220187:       Proc_183_41_145A968(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_1220196:     End If
  loc_1220199:   Else
  loc_12201A1:     If (var_86 = CInt(0)) Then
  loc_12201C0:       If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_12201ED:         Proc_183_41_145A968(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_12201FC:       End If
  loc_12201FF:     Else
  loc_1220207:       If (var_86 = CInt(1)) Then
  loc_1220226:         If (CBool(Me.DGNCat.Visible) = &HFF) Then
  loc_122022D:           Set var_A8 = Me.Txt
  loc_1220238:           var_A0 = "Name"
  loc_1220253:           Proc_183_41_145A968(var_A8, KeyAscii, global_64, arg_10, var_A0, 0)
  loc_1220262:         End If
  loc_1220265:       Else
  loc_122026D:         If (var_86 = CInt(5)) Then
  loc_122027D:           If ((arg_10 = &H4D) Or (arg_10 = &H6D)) Then
  loc_122028D:             Set var_8C = Me.Txt
  loc_1220293:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Manual", 0)
  loc_122029B:             var_A8.Text = 0
  loc_12202A9:             arg_10 = 0
  loc_12202AF:           Else
  loc_12202BC:             If ((arg_10 = &H41) Or (arg_10 = &H61)) Then
  loc_12202CC:               Set var_8C = Me.Txt
  loc_12202D2:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Automatic", arg_10)
  loc_12202DA:               var_A8.Text = var_A0
  loc_12202E8:               arg_10 = 0
  loc_12202EE:             Else
  loc_12202FB:               If ((arg_10 = &H53) Or (arg_10 = &H73)) Then
  loc_122030B:                 Set var_8C = Me.Txt
  loc_1220311:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "SemiAuto")
  loc_1220319:                 var_A8.Text = arg_10
  loc_1220327:                 arg_10 = 0
  loc_122032D:               Else
  loc_122032F:                 arg_10 = 0
  loc_1220332:               End If
  loc_1220332:             End If
  loc_1220332:           End If
  loc_1220335:         Else
  loc_122033D:           If Not (var_86 = CInt(6)) Then
  loc_1220348:             If Not (var_86 = CInt(7)) Then
  loc_1220353:               If Not (var_86 = CInt(9)) Then
  loc_122035E:                 If Not (var_86 = CInt(&HA)) Then
  loc_1220369:                   If (var_86 = CInt(&HB)) Then
  loc_122036C:                   End If
  loc_122036C:                 End If
  loc_122036C:               End If
  loc_122036C:             End If
  loc_1220379:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_1220389:               Set var_8C = Me.Txt
  loc_122038F:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No", arg_10)
  loc_1220397:               var_A8.Text = arg_10
  loc_12203A5:               arg_10 = 0
  loc_12203AB:             Else
  loc_12203B8:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_12203C8:                 Set var_8C = Me.Txt
  loc_12203CE:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_12203D6:                 var_A8.Text = arg_10
  loc_12203E4:                 arg_10 = 0
  loc_12203EA:               Else
  loc_12203EC:                 arg_10 = 0
  loc_12203EF:               End If
  loc_12203EF:             End If
  loc_12203F7:             If (KeyAscii = CInt(7)) Then
  loc_1220408:               Set var_8C = Me.Txt
  loc_122040E:               Call 0.Method_Txt_KeyPress0 (CInt(7), var_A8, var_A0, arg_10)
  loc_1220416:               arg_10 = var_A8.Text
  loc_122042D:               If (var_A0 = "Yes") Then
  loc_122043D:                 Set var_8C = Me.Txt
  loc_1220443:                 Call 0.Method_Txt_KeyPress0 (CInt(8), var_A8, &HFF)
  loc_122044B:                 var_A8.Enabled = False
  loc_122045A:               Else
  loc_1220467:                 Set var_8C = Me.Txt
  loc_122046D:                 Call 0.Method_Txt_KeyPress0 (CInt(8), var_A8)
  loc_1220475:                 var_A8.Enabled = False
  loc_122048F:                 Set var_8C = Me.Txt
  loc_1220495:                 Call 0.Method_Txt_KeyPress0 (CInt(8), var_A8)
  loc_122049D:                 var_A8.Text = vbNullString
  loc_12204A9:               End If
  loc_12204A9:             End If
  loc_12204AC:           Else
  loc_12204B4:             If (var_86 = CInt(&HE)) Then
  loc_12204EB:               If (CLng(Asc(CStr(Ucase(Chr(CLng(arg_10)))))) = &H44) Then
  loc_12204FC:                 Set var_8C = Me.Txt
  loc_1220502:                 Call 0.Method_Txt_KeyPress0 (CInt(&HE), var_A8)
  loc_122050A:                 var_A8.Text = "Dr"
  loc_1220518:                 arg_10 = 0
  loc_122051E:               Else
  loc_1220538:                 var_A0 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_1220552:                 If (CLng(Asc(var_A0)) = &H43) Then
  loc_1220563:                   Set var_8C = Me.Txt
  loc_1220569:                   Call 0.Method_Txt_KeyPress0 (CInt(&HE), var_A8, "Cr")
  loc_1220571:                   var_A8.Text = arg_10
  loc_122057F:                   arg_10 = 0
  loc_1220585:                 Else
  loc_1220587:                   arg_10 = 0
  loc_122058A:                 End If
  loc_122058A:               End If
  loc_122058A:             End If
  loc_122058A:           End If
  loc_122058A:         End If
  loc_122058A:       End If
  loc_122058A:     End If
  loc_122058A:   End If
  loc_122058A: End If
  loc_122058A: Exit Sub
  loc_122058B: ' Referenced from: 12200BC
  loc_1220591: Call 0.Method_arg_50 (var_A0, arg_10)
  loc_12205A6: Proc_183_57_104B0BC(var_A0, "TXT_KeyPress")
  loc_12205B2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F250C0
  'Data Table: 50BAA0
  Dim var_86 As Integer
  loc_F24FC8: On Error Goto loc_F25098
  loc_F24FCE: var_86 = KeyCode
  loc_F24FD9: If (var_86 = CInt(2)) Then
  loc_F24FF8:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F25005:     var_A0 = "Name"
  loc_F25020:     Proc_183_32_FE97F0(Me.Txt, KeyCode, global_60)
  loc_F2502F:   End If
  loc_F25032: Else
  loc_F2503A:   If (var_86 = CInt(5)) Then
  loc_F25058:     If (Me.FrmList.Visible = &HFF) Then
  loc_F25087:       Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F25097:     End If
  loc_F25097:   End If
  loc_F25097: End If
  loc_F25097: Exit Sub
  loc_F25098: ' Referenced from: F24FC8
  loc_F2509E: Call 0.Method_arg_50 (var_A0, global_120, Shift)
  loc_F250B3: Proc_183_57_104B0BC(var_A0, "Txt_KeyUp")
  loc_F250BF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E7F240
  'Data Table: 50BAA0
  loc_E7F1E8: On Error Goto loc_E7F216
  loc_E7F1F5: Set var_88 = Me.Txt
  loc_E7F1FB: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E7F209: Proc_183_27_E23198(var_8C)
  loc_E7F215: Exit Sub
  loc_E7F216: ' Referenced from: E7F1E8
  loc_E7F21C: Call 0.Method_arg_50 (var_94)
  loc_E7F231: Proc_183_57_104B0BC(var_94, "Txt_LostFocus")
  loc_E7F23D: Exit Sub
  loc_E7F23E: Set arg_2858 = var_8C
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1358978
  'Data Table: 50BAA0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim arg_10 As Integer
  Dim var_C4 As Variant
  loc_1358148: On Error Goto loc_1358950
  loc_135814E: var_86 = Cancel
  loc_1358159: If (var_86 = CInt(&HC)) Then
  loc_13581AA:   Set var_94 = Me.Txt
  loc_13581B0:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_13581B8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_13581D0:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_13581E0:     Set var_94 = Me.Txt
  loc_13581E6:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13581EE:     var_98.Text = vbNullString
  loc_1358207:     Set var_94 = Me.Txt
  loc_135820D:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1358215:     var_98.Tag = vbNullString
  loc_1358224:   Else
  loc_135825F:     Set var_B0 = Me.Txt
  loc_1358265:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_135826D:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13582A0:     var_98 = Me.Fields.Item("Code")
  loc_13582BE:     Set var_B0 = Me.Txt
  loc_13582C4:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13582CC:     var_B4.Tag = CStr(var_98.Value)
  loc_13582E2:   End If
  loc_13582E5: Else
  loc_13582ED:   If (var_86 = CInt(&HD)) Then
  loc_135833E:     Set var_94 = Me.Txt
  loc_1358344:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1358364:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_1358374:       Set var_94 = Me.Txt
  loc_135837A:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1358382:       var_98.Text = vbNullString
  loc_135839B:       Set var_94 = Me.Txt
  loc_13583A1:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13583A9:       var_98.Tag = vbNullString
  loc_13583B8:     Else
  loc_13583F3:       Set var_B0 = Me.Txt
  loc_13583F9:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1358401:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1358434:       var_98 = Me.Fields.Item("Code")
  loc_1358452:       Set var_B0 = Me.Txt
  loc_1358458:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1358460:       var_B4.Tag = CStr(var_98.Value)
  loc_1358476:     End If
  loc_1358479:   Else
  loc_1358481:     If (var_86 = CInt(0)) Then
  loc_135848F:       Set var_94 = Me.Txt
  loc_1358495:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_135849D:       var_9C = "Category"
  loc_13584BE:       If (Proc_183_19_E8E68C(var_98, var_9C) = 0) Then
  loc_13584CB:         Set var_94 = Me.Txt
  loc_13584D1:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13584D9:         var_98.SetFocus
  loc_13584E7:         arg_10 = &HFF
  loc_13584EA:         Exit Sub
  loc_13584EB:       End If
  loc_1358539:       Set var_94 = Me.Txt
  loc_135853F:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1358547:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_135855F:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_135856F:         Set var_94 = Me.Txt
  loc_1358575:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_135857D:         var_98.Text = vbNullString
  loc_1358596:         Set var_94 = Me.Txt
  loc_135859C:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13585A4:         var_98.Tag = vbNullString
  loc_13585B3:       Else
  loc_13585EE:         Set var_B0 = Me.Txt
  loc_13585F4:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13585FC:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_135862F:         var_98 = Me.Fields.Item("Code")
  loc_135864D:         Set var_B0 = Me.Txt
  loc_1358653:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_135865B:         var_B4.Tag = CStr(var_98.Value)
  loc_1358671:       End If
  loc_1358674:     Else
  loc_135867C:       If (var_86 = CInt(1)) Then
  loc_135868A:         Set var_94 = Me.Txt
  loc_1358690:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1358698:         var_9C = "NCat"
  loc_13586B9:         If (Proc_183_19_E8E68C(var_98, var_9C) = 0) Then
  loc_13586C6:           Set var_94 = Me.Txt
  loc_13586CC:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13586D4:           var_98.SetFocus
  loc_13586E2:           arg_10 = &HFF
  loc_13586E5:           Exit Sub
  loc_13586E6:         End If
  loc_1358706:         var_8E = Me.EOF
  loc_1358734:         Set var_94 = Me.Txt
  loc_135873A:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1358742:         ((Me.RecordCount = 0) Or ((var_8E = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_135875A:         If (arg_10 Or (var_9C = vbNullString)) Then
  loc_135876A:           Set var_94 = Me.Txt
  loc_1358770:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1358778:           var_98.Text = vbNullString
  loc_1358791:           Set var_94 = Me.Txt
  loc_1358797:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_135879F:           var_98.Tag = vbNullString
  loc_13587AE:         Else
  loc_13587E9:           Set var_B0 = Me.Txt
  loc_13587EF:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13587F7:           var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_135882A:           var_98 = Me.Fields.Item("Code")
  loc_1358848:           Set var_B0 = Me.Txt
  loc_135884E:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1358856:           var_B4.Tag = CStr(var_98.Value)
  loc_135886C:         End If
  loc_135886F:       Else
  loc_1358877:         If (var_86 = CInt(2)) Then
  loc_1358885:           Set var_94 = Me.Txt
  loc_135888B:           Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1358893:           var_9C = "Voucher Type"
  loc_13588B4:           If (Proc_183_19_E8E68C(var_98, var_9C) = 0) Then
  loc_13588C1:             Set var_94 = Me.Txt
  loc_13588C7:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13588CF:             var_98.SetFocus
  loc_13588DD:             arg_10 = &HFF
  loc_13588E0:             Exit Sub
  loc_13588E1:           End If
  loc_13588E4:           Call Proc_207_53_10D4BC4(var_8E, arg_10)
  loc_13588EF:           If (var_8E = &HFF) Then
  loc_13588F4:             arg_10 = &HFF
  loc_13588F7:             Exit Sub
  loc_13588F8:           End If
  loc_13588F8:           var_AC = 1
  loc_1358917:           Set var_94 = Me.Txt
  loc_135891D:           Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_9C, CVar(CLng(5)))
  loc_1358925:           var_AC = var_98.Text
  loc_135892D:           var_C4 = CVar(var_9C) 'String
  loc_1358935:           Set var_B0 = Me.FGrid
  loc_135893B:           LateIdCallSt
  loc_135894F:         End If
  loc_135894F:       End If
  loc_135894F:     End If
  loc_135894F:   End If
  loc_135894F: End If
  loc_135894F: Exit Sub
  loc_1358950: ' Referenced from: 1358148
  loc_1358956: Call 0.Method_arg_50 (var_9C, var_B0, var_C4)
  loc_135896B: Proc_183_57_104B0BC(var_9C, "Txt_Validate")
  loc_1358977: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 '104E118
  'Data Table: 50BAA0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_114 As String
  loc_104DEBC: On Error Goto loc_104E0EE
  loc_104DEC3: Set var_88 = Me.TopCtrl1
  loc_104DEC9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_104DEE2: If (CStr() = "Browse") Then
  loc_104DEE5:   Exit Sub
  loc_104DEE6: End If
  loc_104DF23: If ((CLng(Me.FGrid2.Col) = CLng(2)) Or (CLng(Me.FGrid2.Col) = CLng(3))) Then
  loc_104DF39:   var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_104DF51:   var_E0 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_104DF6B:   var_9C = CStr(Me.FGrid2.TextMatrix))
  loc_104DF88:   If (var_9C = vbNullString) Then
  loc_104DFAD:     Me.FGrid2.Col = CVar(CLng(Me.FGrid2.Col))
  loc_104DFDE:     Me.FGrid2.Row = CVar(CLng(Me.FGrid2.Row))
  loc_104DFFD:     Me.FGrid2.CellFontName = "wingdings"
  loc_104E017:     Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_104E032:     Me.FGrid2.CellForeColor = &HFF
  loc_104E04D:     var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_104E065:     var_E0 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_104E06A:     var_114 = "ü"
  loc_104E074:     Set var_F4 = Me.FGrid2
  loc_104E07A:     LateIdCallSt
  loc_104E095:   Else
  loc_104E0A8:     var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_104E0C0:     var_E0 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_104E0C5:     var_114 = vbNullString
  loc_104E0CF:     Set var_F4 = Me.FGrid2
  loc_104E0D5:     LateIdCallSt
  loc_104E0ED:   End If
  loc_104E0ED: End If
  loc_104E0ED: Exit Sub
  loc_104E0EE: ' Referenced from: 104DEBC
  loc_104E0F4: Call 0.Method_arg_50 (var_9C, var_F4, var_114, var_E0, var_C0, var_F4)
  loc_104E109: Proc_183_57_104B0BC(var_9C, "FGrid2_Click", var_114, var_E0)
  loc_104E115: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_A '10370F0
  'Data Table: 50BAA0
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_104 As String
  Dim var_114 As String
  loc_1036EB4: On Error Goto loc_10370C8
  loc_1036EBD: If (Cancel = &HD) Then
  loc_1036EFD:   If ((CLng(Me.FGrid2.Col) = CLng(2)) Or (CLng(Me.FGrid2.Col) = CLng(3))) Then
  loc_1036F13:     var_BC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1036F2B:     var_DC = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_1036F45:     var_104 = CStr(Me.FGrid2.TextMatrix))
  loc_1036F62:     If (var_104 = vbNullString) Then
  loc_1036F87:       Me.FGrid2.Col = CVar(CLng(Me.FGrid2.Col))
  loc_1036FB8:       Me.FGrid2.Row = CVar(CLng(Me.FGrid2.Row))
  loc_1036FD7:       Me.FGrid2.CellFontName = "wingdings"
  loc_1036FF1:       Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_103700C:       Me.FGrid2.CellForeColor = &HFF
  loc_1037027:       var_BC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_103703F:       var_DC = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_1037044:       var_114 = "ü"
  loc_103704E:       Set var_F0 = Me.FGrid2
  loc_1037054:       LateIdCallSt
  loc_103706F:     Else
  loc_1037082:       var_BC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_103709A:       var_DC = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_103709F:       var_114 = vbNullString
  loc_10370A9:       Set var_F0 = Me.FGrid2
  loc_10370AF:       LateIdCallSt
  loc_10370C7:     End If
  loc_10370C7:   End If
  loc_10370C7: End If
  loc_10370C7: Exit Sub
  loc_10370C8: ' Referenced from: 1036EB4
  loc_10370CE: Call 0.Method_arg_50 (var_104, var_F0, var_114, var_DC, var_BC, var_F0)
  loc_10370E3: Proc_183_57_104B0BC(var_104, "FGrid2_KeyDown", var_114, var_DC)
  loc_10370EF: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1113860
  'Data Table: 50BAA0
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_112 As Integer
  Dim Me As Recordset15
  loc_1113520: On Error Goto loc_1113837
  loc_1113523: Call Proc_207_61_F9594C()
  loc_111352B: var_86 = Index
  loc_1113534: If (var_86 = 0) Then
  loc_111354A:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1113589:   Set var_108 = Me.TxtGrid
  loc_111358F:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1113597:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_11135B8: Else
  loc_11135BE:   If (var_86 = 1) Then
  loc_11135D4:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11135DD:     Set var_A0 = Me.FGrid1
  loc_1113613:     Set var_108 = Me.TxtGrid
  loc_1113619:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), CVar(CLng(var_A0.Col)))
  loc_1113621:     var_10C.Tag = var_C0
  loc_111363F:   End If
  loc_111363F: End If
  loc_111364E: Set var_8C = Me.TxtGrid
  loc_1113654: Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_111365C: var_A0.MaxLength = var_C0
  loc_111366B: var_112 = Index
  loc_1113674: If (var_112 = 0) Then
  loc_1113677:   GoTo loc_1113836
  loc_111367A: End If
  loc_1113680: If (var_112 = 1) Then
  loc_11136A6:   If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_11136B2:     var_11C = Me.RecordCount
  loc_11136C9:     var_11E = Me.EOF
  loc_11136DD:     var_120 = Me.BOF
  loc_11136FD:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1113739:     If (CVar(CLng(1)) Or (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_111373C:       Exit Sub
  loc_111373D:     End If
  loc_1113750:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1113758:     var_E0 = CVar(CLng(1)) 'Long
  loc_111378B:     If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_1113794:       Me.MoveFirst
  loc_11137AC:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11137B4:       var_E0 = CVar(CLng(4)) 'Long
  loc_11137C3:       var_B0 = Me.FGrid1.TextMatrix)
  loc_11137E4:       var_110 = CStr(var_B0)
  loc_11137F8:       Me.Find "Code='" & var_110 & "'", 0, 1
  loc_1113828:       If (Me.EOF = &HFF) Then
  loc_1113831:         Me.MoveFirst
  loc_1113836:         ' Referenced from: 1113677
  loc_1113836:       End If
  loc_1113836:     End If
  loc_1113836:   End If
  loc_1113836: End If
  loc_1113836: Exit Sub
  loc_1113837: ' Referenced from: 1113520
  loc_111383D: Call 0.Method_arg_50 (var_110, var_138, var_B0, var_E0, var_C0, var_E0)
  loc_1113852: Proc_183_57_104B0BC(var_110, "TxtGrid_GotFocus", var_C0, var_C0)
  loc_111385E: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C3A04
  'Data Table: 50BAA0
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_B0 As Long
  loc_12C3398: On Error Goto loc_12C39DA
  loc_12C33A5: If (CLng(Shift) = &H1B) Then
  loc_12C33B5:   Set var_88 = Me.TxtGrid
  loc_12C33BB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12C33C3:   var_90 = var_8C.Tag
  loc_12C33D5:   Set var_94 = Me.TxtGrid
  loc_12C33DB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_12C33E3:   var_98.Text = var_90
  loc_12C33FF:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C3407:   var_9A = KeyCode
  loc_12C3410:   If (var_9A = 0) Then
  loc_12C3417:     Set var_88 = Me.FGrid
  loc_12C342B:   Else
  loc_12C3431:     If (var_9A = 1) Then
  loc_12C3438:       Set var_88 = Me.FGrid1
  loc_12C3449:     End If
  loc_12C3449:   End If
  loc_12C3455:   Set var_88 = Me.TxtGrid
  loc_12C345B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 0, FGrid1.DispID_8001)
  loc_12C3463:   var_8C.Visible = FGrid.DispID_8001
  loc_12C346F:   Exit Sub
  loc_12C3470: End If
  loc_12C3473: var_9C = KeyCode
  loc_12C347C: If (var_9C = 0) Then
  loc_12C3492:   var_B0 = CLng(Me.FGrid.Col)
  loc_12C34A2:   If (var_B0 = CLng(3)) Then
  loc_12C34E5:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_100 = &HFF))) Then
  loc_12C34F5:       Call Proc_207_54_12DF344(0, 0, var_B6, var_B0)
  loc_12C3500:       If (var_B6 = &HFF) Then
  loc_12C3537:         Set var_8C = Me.TxtGrid
  loc_12C3546:         Proc_183_25_11BCFD4(Me.FGrid, var_8C, KeyCode, Shift, global_100, 4)
  loc_12C3575:         Set var_88 = Me.Txt
  loc_12C357B:         Call 0.Method_TxtGrid_KeyDown0 (CInt(2), var_8C, var_90, CVar(CLng(5)), 1, 0)
  loc_12C3583:         0 = var_8C.Text
  loc_12C358B:         var_AC = CVar(var_90) 'String
  loc_12C3593:         Set var_94 = Me.FGrid
  loc_12C3599:         LateIdCallSt
  loc_12C35AD:       End If
  loc_12C35AD:     End If
  loc_12C35B0:   Else
  loc_12C35B7:     If (var_B0 = CLng(1)) Then
  loc_12C35FA:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_100 = &HFF))) Then
  loc_12C360A:         Call Proc_207_54_12DF344(0, 0, var_B6, var_94, var_AC)
  loc_12C3615:         If (var_B6 = &HFF) Then
  loc_12C364C:           Set var_8C = Me.TxtGrid
  loc_12C365B:           Proc_183_25_11BCFD4(Me.FGrid, var_8C, KeyCode, Shift, global_100, 4, 0)
  loc_12C368A:           Set var_88 = Me.Txt
  loc_12C3690:           Call 0.Method_TxtGrid_KeyDown0 (CInt(2), var_8C, var_90, CVar(CLng(5)), 1, 0)
  loc_12C3698:           0 = var_8C.Text
  loc_12C36A0:           var_AC = CVar(var_90) 'String
  loc_12C36A8:           Set var_94 = Me.FGrid
  loc_12C36AE:           LateIdCallSt
  loc_12C36C2:         End If
  loc_12C36C2:       End If
  loc_12C36C5:     Else
  loc_12C36CC:       If (var_B0 = CLng(2)) Then
  loc_12C370F:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_100 = &HFF))) Then
  loc_12C371F:           Call Proc_207_54_12DF344(0, 0, var_B6, var_94, var_AC)
  loc_12C372A:           If (var_B6 = &HFF) Then
  loc_12C3761:             Set var_8C = Me.TxtGrid
  loc_12C3770:             Proc_183_25_11BCFD4(Me.FGrid, var_8C, KeyCode, Shift, global_100, 4, 0)
  loc_12C379F:             Set var_88 = Me.Txt
  loc_12C37A5:             Call 0.Method_TxtGrid_KeyDown0 (CInt(2), var_8C, var_90, CVar(CLng(5)), 1, 0)
  loc_12C37AD:             0 = var_8C.Text
  loc_12C37B5:             var_AC = CVar(var_90) 'String
  loc_12C37BD:             Set var_94 = Me.FGrid
  loc_12C37C3:             LateIdCallSt
  loc_12C37D7:           End If
  loc_12C37D7:         End If
  loc_12C37DA:       Else
  loc_12C37E1:         If (var_B0 = CLng(4)) Then
  loc_12C3824:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_100 = &HFF))) Then
  loc_12C3834:             Call Proc_207_54_12DF344(0, 0, var_B6, var_94, var_AC)
  loc_12C383F:             If (var_B6 = &HFF) Then
  loc_12C3876:               Set var_8C = Me.TxtGrid
  loc_12C3885:               Proc_183_25_11BCFD4(Me.FGrid, var_8C, KeyCode, Shift, global_100, 4, 0)
  loc_12C38B4:               Set var_88 = Me.Txt
  loc_12C38BA:               Call 0.Method_TxtGrid_KeyDown0 (CInt(2), var_8C, var_90, CVar(CLng(5)), 1, 0)
  loc_12C38C2:               0 = var_8C.Text
  loc_12C38CA:               var_AC = CVar(var_90) 'String
  loc_12C38D2:               Set var_94 = Me.FGrid
  loc_12C38D8:               LateIdCallSt
  loc_12C38EC:             End If
  loc_12C38EC:           End If
  loc_12C38EC:         End If
  loc_12C38EC:       End If
  loc_12C38EC:     End If
  loc_12C38EC:   End If
  loc_12C38EF: Else
  loc_12C38F5:   If (var_9C = 1) Then
  loc_12C3902:     var_AC = Me.FGrid1.Col
  loc_12C3915:     If (CLng(var_AC) = CLng(1)) Then
  loc_12C391C:       Set var_94 = Me.DGGroup
  loc_12C394E:       Proc_183_34_1307118(var_94, Me.TxtGrid, KeyCode, global_68, Shift, &HFF, 1)
  loc_12C3968:       If (CLng(Shift) = &HD) Then
  loc_12C3978:         Call Proc_207_55_109CC38(0, 0, var_B6, var_94, var_AC)
  loc_12C3983:         If (var_B6 = &HFF) Then
  loc_12C39C9:           Proc_183_25_11BCFD4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_100, 1, 0)
  loc_12C39D9:         End If
  loc_12C39D9:       End If
  loc_12C39D9:     End If
  loc_12C39D9:   End If
  loc_12C39D9: End If
  loc_12C39D9: Exit Sub
  loc_12C39DA: ' Referenced from: 12C3398
  loc_12C39E0: Call 0.Method_arg_50 (var_90, 0, 0, 0)
  loc_12C39F5: Proc_183_57_104B0BC(var_90, "FGrid_KeyDown", var_9C)
  loc_12C3A01: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F67B8C
  'Data Table: 50BAA0
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_B0 As Long
  loc_F67A60: On Error Goto loc_F67B61
  loc_F67A66: Proc_183_46_E07C50(arg_10)
  loc_F67A6E: var_86 = KeyAscii
  loc_F67A77: If (var_86 = 0) Then
  loc_F67A9D:   If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_F67AA9:     Set var_8C = Me.TxtGrid
  loc_F67AAF:     Call 0.Method_TxtGrid_KeyPress0 (0, var_A4)
  loc_F67ACA:     Proc_183_22_129BBAC(var_A4, arg_10, 8)
  loc_F67AD6:   End If
  loc_F67AD9: Else
  loc_F67ADF:   If (var_86 = 1) Then
  loc_F67AF5:     var_B0 = CLng(Me.FGrid1.Col)
  loc_F67B05:     If (var_B0 = CLng(1)) Then
  loc_F67B24:       If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_F67B36:         var_B4 = "Name"
  loc_F67B51:         Proc_183_41_145A968(Me.TxtGrid, KeyAscii, global_68, arg_10, var_B4)
  loc_F67B60:       End If
  loc_F67B60:     End If
  loc_F67B60:   End If
  loc_F67B60: End If
  loc_F67B60: Exit Sub
  loc_F67B61: ' Referenced from: F67A60
  loc_F67B67: Call 0.Method_arg_50 (var_B4, 0, var_B0)
  loc_F67B7C: Proc_183_57_104B0BC(var_B4, "TxtGrid_KeyPress", 0)
  loc_F67B88: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1065058
  'Data Table: 50BAA0
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_A4 As TextBox
  Dim var_110 As Variant
  Dim var_A8 As String
  Dim var_128 As Long
  loc_1064DE8: On Error Goto loc_106502F
  loc_1064DEE: var_86 = KeyCode
  loc_1064DF7: If (var_86 = 0) Then
  loc_1064E0D:   var_A0 = CLng(Me.FGrid.Col)
  loc_1064E1D:   If (var_A0 = CLng(3)) Then
  loc_1064E33:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1064E5C:     Set var_8C = Me.TxtGrid
  loc_1064E62:     Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8, CVar(CLng(Me.FGrid.Col)))
  loc_1064E6A:     var_D0 = var_A4.Text
  loc_1064E72:     var_110 = CVar(var_A8) 'String
  loc_1064E7A:     Set var_124 = Me.FGrid
  loc_1064E80:     LateIdCallSt
  loc_1064EA1:   Else
  loc_1064EA8:     If (var_A0 = CLng(4)) Then
  loc_1064EB7:       Set var_8C = Me.TxtGrid
  loc_1064EBD:       Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8, var_124)
  loc_1064EC5:       var_110 = var_A4.Text
  loc_1064EDC:       If (var_A8 = vbNullString) Then
  loc_1064EE3:         var_A8 = CStr(0)
  loc_1064EEF:         Set var_8C = Me.TxtGrid
  loc_1064EF5:         Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8)
  loc_1064EFD:         var_A4.Text = var_A0
  loc_1064F0C:       End If
  loc_1064F1F:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1064F37:       var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1064F48:       Set var_8C = Me.TxtGrid
  loc_1064F4E:       Call 0.Method_TxtGrid_KeyUp0 (0, var_A4, var_A8)
  loc_1064F56:       var_F0 = var_A4.Text
  loc_1064F5E:       var_110 = CVar(var_A8) 'String
  loc_1064F66:       Set var_124 = Me.FGrid
  loc_1064F6C:       LateIdCallSt
  loc_1064F8A:     End If
  loc_1064F8A:   End If
  loc_1064F8D: Else
  loc_1064F93:   If (var_86 = 1) Then
  loc_1064FA9:     var_128 = CLng(Me.FGrid1.Col)
  loc_1064FB9:     If (var_128 = CLng(1)) Then
  loc_1064FDF:       If ((Shift <> &HD) And (CBool(Me.DGGroup.Visible) = 0)) Then
  loc_1064FF0:         Call TxtGrid_KeyDown(KeyCode, global_98)
  loc_1065004:         var_A8 = "Name"
  loc_106501F:         Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_68, Shift, var_A8, &HFF)
  loc_106502E:       End If
  loc_106502E:     End If
  loc_106502E:   End If
  loc_106502E: End If
  loc_106502E: Exit Sub
  loc_106502F: ' Referenced from: 1064DE8
  loc_1065035: Call 0.Method_arg_50 (var_A8, 0, var_128, var_124)
  loc_106504A: Proc_183_57_104B0BC(var_A8, "TxtGrid_KeyUp", var_110)
  loc_1065056: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E90DA8
  'Data Table: 50BAA0
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E90D30: On Error Goto loc_E90D7D
  loc_E90D36: var_86 = Cancel
  loc_E90D3F: If (var_86 = 0) Then
  loc_E90D4D:   Call Proc_207_54_12DF344(Cancel, &HFF)
  loc_E90D56:   arg_10 = Not(var_8A)
  loc_E90D5C: Else
  loc_E90D62:   If (var_86 = 1) Then
  loc_E90D70:     Call Proc_207_55_109CC38(Cancel, &HFF, var_8A)
  loc_E90D79:     arg_10 = Not(var_8A)
  loc_E90D7C:   End If
  loc_E90D7C: End If
  loc_E90D7C: Exit Sub
  loc_E90D7D: ' Referenced from: E90D30
  loc_E90D83: Call 0.Method_arg_50 (var_90, arg_10, arg_10)
  loc_E90D98: Proc_183_57_104B0BC(var_90, "TxtGrid_Validate")
  loc_E90DA4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EBF2FC
  'Data Table: 50BAA0
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EBF264: On Error Goto loc_EBF2D3
  loc_EBF28A: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_52)) Then
  loc_EBF2A0:   Me.FGrid.Col = 1
  loc_EBF2A8: End If
  loc_EBF2B3: Set var_88 = Me.TxtGrid
  loc_EBF2B9: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EBF2C1: var_BC.Visible = False
  loc_EBF2CD: Call Proc_207_61_F9594C()
  loc_EBF2D2: Exit Sub
  loc_EBF2D3: ' Referenced from: EBF264
  loc_EBF2D9: Call 0.Method_arg_50 (var_C0)
  loc_EBF2E1: var_C8 = "FGrid_GotFocus"
  loc_EBF2EE: Proc_183_57_104B0BC(var_C0)
  loc_EBF2FA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69850
  'Data Table: 50BAA0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6980C: Set var_88 = Me.TxtGrid
  loc_E69812: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6982C: If (var_8C.Visible = 0) Then
  loc_E69845:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E6984D: End If
  loc_E6984D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E366C4
  'Data Table: 50BAA0
  Dim var_8C As TextBox
  loc_E366A7: Set var_88 = Me.TxtGrid
  loc_E366AD: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E366B5: var_8C.Visible = False
  loc_E366C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '110AC70
  'Data Table: 50BAA0
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_120 As Long
  Dim var_130 As String
  loc_110A93C: On Error Goto loc_110AC45
  loc_110A943: Set var_88 = Me.TopCtrl1
  loc_110A949: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_110A962: If (CStr() = "Browse") Then
  loc_110A965:   Exit Sub
  loc_110A966: End If
  loc_110A9DA: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_110A9E5:   var_9C = "+{Tab}"
  loc_110A9EB:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_110A9F5:   Cancel = 0
  loc_110A9FB: Else
  loc_110AA05:   var_B0 = Me.FGrid.Rows
  loc_110AA2A:   var_9C = CStr(Me.FGrid.Tag)
  loc_110AA41:   var_D8 = 1
  loc_110AA5C:   var_C4 = Me.FGrid.TextMatrix)
  loc_110AA89:   If (CVar(CLng(5)) And (CStr(var_C4) <> vbNullString)) Then
  loc_110AAA2:     var_D8 = "Save Record ?"
  loc_110AAC3:     If (MsgBox(var_D8, 4, "Save Data", var_C4, var_11C) = 6) Then
  loc_110AAC6:       Call TopCtrl1_UnknownEvent_16()
  loc_110AACB:       Exit Sub
  loc_110AACC:     End If
  loc_110AACF:   Else
  loc_110AAD9:     var_B0 = Me.FGrid.Rows
  loc_110AB26:     If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_110AB31:       var_9C = "{Tab}"
  loc_110AB37:       Proc_303_0_FBACC8(var_9C, 0, var_B0, var_D8, ((CLng(Cancel) = &H28) And (CDbl(Val(var_9C)) = CDbl((CLng(var_B0) - 1)))))
  loc_110AB3F:     End If
  loc_110AB3F:   End If
  loc_110AB3F: End If
  loc_110AB45: global_98 = Cancel
  loc_110AB6B: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_110AB8F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_110ABA5:   var_120 = CLng(Me.FGrid.Col)
  loc_110ABB5:   If Not (var_120 = CLng(3)) Then
  loc_110ABBF:     If Not (var_120 = CLng(1)) Then
  loc_110ABC9:       If Not (var_120 = CLng(2)) Then
  loc_110ABD3:         If (var_120 = CLng(4)) Then
  loc_110ABD6:         End If
  loc_110ABD6:       End If
  loc_110ABD6:     End If
  loc_110ABE9:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110AC01:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_110AC06:     var_130 = vbNullString
  loc_110AC10:     Set var_B4 = Me.FGrid
  loc_110AC16:     LateIdCallSt
  loc_110AC2E:   End If
  loc_110AC2E: End If
  loc_110AC34: If (Cancel = &HD) Then
  loc_110AC3C:   global_100 = 0
  loc_110AC3F: End If
  loc_110AC41: Cancel = 0
  loc_110AC44: Exit Sub
  loc_110AC45: ' Referenced from: 110A93C
  loc_110AC4B: Call 0.Method_arg_50 (var_9C, Cancel, global_100, var_B4, var_130, var_F8, var_D8)
  loc_110AC60: Proc_183_57_104B0BC(var_9C, "FGrid_KeyDown", var_120, global_98)
  loc_110AC6C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E60740
  'Data Table: 50BAA0
  loc_E606FC: On Error Goto loc_E60716
  loc_E60708: Call FGrid_UnknownEvent_C()
  loc_E60712: global_100 = 0
  loc_E60715: Exit Sub
  loc_E60716: ' Referenced from: E606FC
  loc_E6071C: Call 0.Method_arg_50 (var_8C, global_100)
  loc_E60731: Proc_183_57_104B0BC(var_8C, "FGrid_DblClick")
  loc_E6073D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F66FD0
  'Data Table: 50BAA0
  Dim var_9C As Long
  loc_F66EB0: On Error Goto loc_F66FA6
  loc_F66EC6: var_9C = CLng(Me.FGrid.Col)
  loc_F66ED6: If Not (var_9C = CLng(3)) Then
  loc_F66EE0:   If Not (var_9C = CLng(1)) Then
  loc_F66EEA:     If (var_9C = CLng(2)) Then
  loc_F66EED:     End If
  loc_F66EED:   End If
  loc_F66F26:   Proc_183_26_11578C8(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F66F3B: Else
  loc_F66F42:   If (var_9C = CLng(4)) Then
  loc_F66F7E:     Proc_183_26_11578C8(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F66F90:   End If
  loc_F66F90: End If
  loc_F66F9A: If (CLng(Cancel) <> &HD) Then
  loc_F66FA2:   global_100 = &HFF
  loc_F66FA5: End If
  loc_F66FA5: Exit Sub
  loc_F66FA6: ' Referenced from: F66EB0
  loc_F66FAC: Call 0.Method_arg_50 (var_B4, global_100, Cancel)
  loc_F66FC1: Proc_183_57_104B0BC(var_B4, "FGrid_KeyPress", 0)
  loc_F66FCD: Exit Sub
  loc_F66FCE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '104E3C8
  'Data Table: 50BAA0
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Long
  loc_104E16C: On Error Goto loc_104E39F
  loc_104E173: Set var_8C = Me.TopCtrl1
  loc_104E179: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_104E181: var_A0 = CStr()
  loc_104E192: If (var_A0 = "Browse") Then
  loc_104E195:   Exit Sub
  loc_104E196: End If
  loc_104E1B3: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104E1B6:   Exit Sub
  loc_104E1B7: End If
  loc_104E1C8: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_104E1EA:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104E224:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_104E246:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104E25C:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104E265:         Set var_114 = Me.FGrid
  loc_104E280:       Else
  loc_104E293:         Me.FGrid.Rows = 1
  loc_104E2B0:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_104E2B8:         Set var_114 = Me.FGrid
  loc_104E2E7:         Me.FGrid.FixedRows = 1
  loc_104E2EF:       End If
  loc_104E314:       For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_104E31E:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_104E323:         var_E0 = 0
  loc_104E331:         var_9C = CVar(CStr(var_86)) 'String
  loc_104E339:         Set var_8C = Me.FGrid
  loc_104E33F:         LateIdCallSt
  loc_104E350:       Next var_118 'Integer
  loc_104E355:     End If
  loc_104E358:   Else
  loc_104E379:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_104E389:   End If
  loc_104E38D:   Set var_8C = Me.FGrid
  loc_104E39E: End If
  loc_104E39E: Exit Sub
  loc_104E39F: ' Referenced from: 104E16C
  loc_104E3A5: Call 0.Method_arg_50 (var_A0)
  loc_104E3BA: Proc_183_57_104B0BC(var_A0, "FGrid_KeyUp")
  loc_104E3C6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E400E4
  'Data Table: 50BAA0
  Dim var_8C As TextBox
  loc_E400C3: Set var_88 = Me.TxtGrid
  loc_E400C9: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E400D1: var_8C.Visible = False
  loc_E400DD: Call Proc_207_61_F9594C()
  loc_E400E2: Exit Sub
End Sub

Private Sub DGGroup_UnknownEvent_9 '1017188
  'Data Table: 50BAA0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_1016F78: On Error Goto loc_101715F
  loc_1016F8A: Me.DGGroup.Visible = False
  loc_1016FA9: If (Me.RecordCount > 0) Then
  loc_1016FDA:   var_CC = CStr(Me.Fields.Item("Name").Value)
  loc_1016FE6:   Set var_B4 = Me.TxtGrid
  loc_1016FEC:   Call 0.Method_DGGroup_UnknownEvent_90 (1, var_B8)
  loc_1016FF4:   var_B8.Text = var_CC
  loc_101701D:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1017025:   var_EC = CVar(CLng(4)) 'Long
  loc_1017058:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1017060:   Set var_B8 = Me.FGrid1
  loc_1017066:   LateIdCallSt
  loc_1017095:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101709D:   var_EC = CVar(CLng(1)) 'Long
  loc_10170BF:   var_B0 = Me.Fields.Item("Name")
  loc_10170D0:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10170D8:   Set var_B8 = Me.FGrid1
  loc_10170DE:   LateIdCallSt
  loc_10170FA: End If
  loc_1017107: Call Proc_207_54_12DF344(0, 0, var_132, var_B8, var_11C, var_EC)
  loc_1017118: Set var_A8 = Me.TxtGrid
  loc_101711E: Call 0.Method_DGGroup_UnknownEvent_90 (1, var_B0, var_12E, var_A4)
  loc_1017126: var_B8 = var_B0.Visible
  loc_1017138: If (var_12E = &HFF) Then
  loc_1017144:   Set var_A8 = Me.TxtGrid
  loc_101714A:   Call 0.Method_DGGroup_UnknownEvent_90 (1, var_B0, var_11C)
  loc_1017152:   var_B0.SetFocus
  loc_101715E: End If
  loc_101715E: Exit Sub
  loc_101715F: ' Referenced from: 1016F78
  loc_1017165: Call 0.Method_arg_50 (var_CC, var_EC)
  loc_101717A: Proc_183_57_104B0BC(var_CC, "DGGroup_Click")
  loc_1017186: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FC83F4
  'Data Table: 50BAA0
  Dim var_94 As TextBox
  loc_FC8244: On Error Goto loc_FC83CB
  loc_FC825C: var_88 = "ADD"
  loc_FC826A: Call Proc_207_60_EB2748(Proc_5_1_100EC1C(var_88, Me))
  loc_FC8275: Call Proc_207_58_FA31E4(global_76)
  loc_FC8285: Set var_8C = Me.Txt
  loc_FC828B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_FC8293: var_94.SetFocus
  loc_FC82AD: Set var_8C = Me.Txt
  loc_FC82B3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_FC82BB: var_94.Text = "Manual"
  loc_FC82D5: Set var_8C = Me.Txt
  loc_FC82DB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_94)
  loc_FC82E3: var_94.Text = "Yes"
  loc_FC82FD: Set var_8C = Me.Txt
  loc_FC8303: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_FC830B: var_94.Text = "Yes"
  loc_FC8325: Set var_8C = Me.Txt
  loc_FC832B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_94)
  loc_FC8333: var_94.Text = "Yes"
  loc_FC834D: Set var_8C = Me.Txt
  loc_FC8353: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_94)
  loc_FC835B: var_94.Text = "Yes"
  loc_FC8375: Set var_8C = Me.Txt
  loc_FC837B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_94)
  loc_FC8383: var_94.Text = "Yes"
  loc_FC83B2: LateIdCallSt
  loc_FC83C0: Call Proc_207_64_ECC37C(Me.FGrid, CVar(CStr(1)), CVar(CLng(4)))
  loc_FC83C5: Call Proc_207_65_12EBA0C(1)
  loc_FC83CA: Exit Sub
  loc_FC83CB: ' Referenced from: FC8244
  loc_FC83D1: Call 0.Method_arg_50 (var_88)
  loc_FC83E6: Proc_183_57_104B0BC(var_88, "TopCtrl1_eAdd")
  loc_FC83F2: Exit Sub
  loc_FC83F3: var_94 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECF418
  'Data Table: 50BAA0
  loc_ECF37C: On Error Goto loc_ECF3ED
  loc_ECF3B6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_ECF3CE:   var_108 = "INI"
  loc_ECF3DC:   Call Proc_207_60_EB2748(Proc_5_1_100EC1C(var_108, Me))
  loc_ECF3E7:   Call Proc_207_59_1728990(global_76)
  loc_ECF3EC: End If
  loc_ECF3EC: Exit Sub
  loc_ECF3ED: ' Referenced from: ECF37C
  loc_ECF3F3: Call 0.Method_arg_50 (var_108)
  loc_ECF3FB: var_118 = "TopCtrl1_eCancel"
  loc_ECF408: Proc_183_57_104B0BC(var_108)
  loc_ECF414: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11BF4B8
  'Data Table: 50BAA0
  Dim Me As Recordset15
  Dim unk_50BAC9 As Connection15
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_CC As String
  loc_11BF088: On Error Goto loc_11BF483
  loc_11BF0D2: If (Proc_7_3_F62624(CStr(Me.Fields.Item("V_Type").Value)) = &HFF) Then
  loc_11BF0F6:   MsgBox("Transactions Exist For this Voucher Type,Can't Delete it", &H10, "Voucher Type Validation", var_10C, var_12C)
  loc_11BF106:   Exit Sub
  loc_11BF107: End If
  loc_11BF13E: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_10C, var_12C) = 6) Then
  loc_11BF14A:   unk_50BAC9.BeginTrans var_130
  loc_11BF160:   var_94 = Me.Bookmark 'Variant
  loc_11BF1B6:   var_12C = "Delete From Voucher_Prefix Where V_Type='" & Me.Fields.Item("SearchCode").Value & "' AND SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_11BF1E0:   unk_50BAC9.Execute CStr(var_12C & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_1B0, -1
  loc_11BF256:   var_12C = "Delete From Voucher_Include Where V_Type='" & Me.Fields.Item("SearchCode").Value & "' AND SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_11BF280:   unk_50BAC9.Execute CStr(var_12C & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_1B0, -1
  loc_11BF2F6:   var_12C = "Delete From Voucher_Exclude Where V_Type='" & Me.Fields.Item("SearchCode").Value & "' AND SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_11BF320:   unk_50BAC9.Execute CStr(var_12C & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_1B0, -1
  loc_11BF396:   var_12C = "Delete From Voucher_Type Where V_Type='" & Me.Fields.Item("SearchCode").Value & "' AND SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_11BF3B6:   var_CC = CStr(var_12C & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'")
  loc_11BF3C0:   unk_50BAC9.Execute var_CC, var_1B0, -1
  loc_11BF3EA:   unk_50BAC9.CommitTrans
  loc_11BF3FA:   Me.Requery -1
  loc_11BF41A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11BF427:     Me.Bookmark = var_94
  loc_11BF42F:   Else
  loc_11BF443:     If (Me.EOF = 0) Then
  loc_11BF44C:       Me.MoveLast
  loc_11BF451:     End If
  loc_11BF451:   End If
  loc_11BF451:   Call Proc_207_59_1728990(var_1B4, var_1B4)
  loc_11BF472:   Proc_5_0_1107AD0(&HFF, Me, global_76)
  loc_11BF47A: End If
  loc_11BF47F: Set var_A0 = Nothing
  loc_11BF482: Exit Sub
  loc_11BF483: ' Referenced from: 11BF088
  loc_11BF489: unk_50BAC9.RollbackTrans
  loc_11BF494: Call 0.Method_arg_50 (var_CC, 0)
  loc_11BF4A9: Proc_183_57_104B0BC(var_CC, "TopCtrl1_eDel")
  loc_11BF4B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F99304
  'Data Table: 50BAA0
  Dim var_94 As TextBox
  Dim var_8C As MSHFlexGrid
  loc_F9919C: On Error Goto loc_F992DB
  loc_F991C2: Call Proc_207_60_EB2748(Proc_5_1_100EC1C("EDIT", Me))
  loc_F991DB: Set var_8C = Me.Txt
  loc_F991E1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F991E9: var_88 = var_94.Text
  loc_F991F4: global_92 = var_88
  loc_F9921F: Set var_94 = Me.FGrid
  loc_F99248: Set var_8C = Me.Txt
  loc_F9924E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94, 0)
  loc_F99256: var_94.Enabled = FGrid.DispID_10000
  loc_F9926F: Set var_8C = Me.Txt
  loc_F99275: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94, 0)
  loc_F9927D: var_94.Enabled = CVar(CStr(CLng(Me.FGrid.Rows)))
  loc_F99296: Set var_8C = Me.Txt
  loc_F9929C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F992A4: var_94.Enabled = False
  loc_F992BB: Set var_8C = Me.Txt
  loc_F992C1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_F992C9: var_94.SetFocus
  loc_F992D5: Call Proc_207_65_12EBA0C(global_76)
  loc_F992DA: Exit Sub
  loc_F992DB: ' Referenced from: F9919C
  loc_F992E1: Call 0.Method_arg_50 (var_88)
  loc_F992E9: var_CC = "TopCtrl1_eEdit"
  loc_F992F6: Proc_183_57_104B0BC(var_88)
  loc_F99302: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AC48
  'Data Table: 50BAA0
  loc_E1AC3D: Me.Global.Unload Me
  loc_E1AC45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F04EB4
  'Data Table: 50BAA0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F04DE0: On Error Goto loc_F04E8C
  loc_F04DFA: If (Me.RecordCount <= 0) Then
  loc_F04E03:   var_B8 = "Information"
  loc_F04E1E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F04E2E:   Exit Sub
  loc_F04E2F: End If
  loc_F04E36: var_10C = "Select V.V_Type as SearchCode,V.Category,V.NCat,V.Description,V.V_Type,V.Short_Name,V.Number_Method,V.Separate_Narr,V.Common_Narr,V.Narration,V.ChqNo,V.ChqDt,V.ClgDt From Voucher_Type V WHERE SITE_CODE='" & MemVar_1F95070
  loc_F04E4B: MemVar_1F950E4 = var_10C & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' Order by V.V_Type"
  loc_F04E5E: MemVar_1F95120 = Me
  loc_F04E65: var_10C = "2000,2000,1000,1000,1000,1000,1000,1000,1000"
  loc_F04E6B: Proc_6_126_F1C850(var_10C)
  loc_F04E86: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F04E8B: Exit Sub
  loc_F04E8C: ' Referenced from: F04DE0
  loc_F04E92: Call 0.Method_arg_50 (var_10C)
  loc_F04EA7: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_F04EB3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E7A714
  'Data Table: 50BAA0
  loc_E7A6BC: On Error Goto loc_E7A6E9
  loc_E7A6DB: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7A6E3: Call Proc_207_59_1728990(global_76)
  loc_E7A6E8: Exit Sub
  loc_E7A6E9: ' Referenced from: E7A6BC
  loc_E7A6EF: Call 0.Method_arg_50 (var_94)
  loc_E7A704: Proc_183_57_104B0BC(var_94, "TopCtrl1_eFirst")
  loc_E7A710: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7B5EC
  'Data Table: 50BAA0
  loc_E7B594: On Error Goto loc_E7B5C1
  loc_E7B5B3: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7B5BB: Call Proc_207_59_1728990(global_76)
  loc_E7B5C0: Exit Sub
  loc_E7B5C1: ' Referenced from: E7B594
  loc_E7B5C7: Call 0.Method_arg_50 (var_94)
  loc_E7B5DC: Proc_183_57_104B0BC(var_94, "TopCtrl1_eLast")
  loc_E7B5E8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E7B684
  'Data Table: 50BAA0
  loc_E7B62C: On Error Goto loc_E7B659
  loc_E7B64B: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7B653: Call Proc_207_59_1728990(global_76)
  loc_E7B658: Exit Sub
  loc_E7B659: ' Referenced from: E7B62C
  loc_E7B65F: Call 0.Method_arg_50 (var_94)
  loc_E7B674: Proc_183_57_104B0BC(var_94, "TopCtrl1_eNext")
  loc_E7B680: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E7BDA4
  'Data Table: 50BAA0
  Dim arg_28F4 As String
  loc_E7BD4C: On Error Goto loc_E7BD79
  loc_E7BD6B: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7BD73: Call Proc_207_59_1728990(global_76)
  loc_E7BD78: Exit Sub
  loc_E7BD79: ' Referenced from: E7BD4C
  loc_E7BD7F: Call 0.Method_arg_50 (var_94)
  loc_E7BD94: Proc_183_57_104B0BC(var_94, "TopCtrl1_ePrev")
  loc_E7BDA0: Exit Sub
  loc_E7BDA2: arg_28F4 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E7C268
  'Data Table: 50BAA0
  Dim Me As Recordset15
  loc_E7C20C: On Error Goto loc_E7C240
  loc_E7C21A: Me.Requery -1
  loc_E7C22A: Me.Requery -1
  loc_E7C23A: Me.Requery -1
  loc_E7C23F: Exit Sub
  loc_E7C240: ' Referenced from: E7C20C
  loc_E7C246: Call 0.Method_arg_50 (var_88)
  loc_E7C24E: var_90 = "TopCtrl1_eRef"
  loc_E7C25B: Proc_183_57_104B0BC(var_88)
  loc_E7C267: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16CE6C8
  'Data Table: 50BAA0
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_C4 As String
  Dim var_124 As Variant
  Dim var_15C As Variant
  Dim var_96 As Integer
  Dim var_BC As Variant
  Dim unk_50BAC9 As Connection15
  Dim var_8A As Integer
  Dim var_168 As String
  Dim var_16C As String
  Dim var_170 As String
  Dim var_180 As Variant
  Dim var_188 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1C4 As String
  Dim var_1BC As TextBox
  Dim var_1D0 As String
  Dim var_1E0 As TextBox
  Dim var_1F0 As String
  Dim var_20C As String
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_214 As TextBox
  Dim var_260 As TextBox
  Dim var_274 As Variant
  Dim var_2BC As Variant
  Dim var_2EC As Variant
  Dim var_31C As Variant
  Dim var_34C As Variant
  Dim var_36C As Variant
  Dim var_238 As Variant
  Dim var_284 As Variant
  Dim var_2CC As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_3E8 As Variant
  Dim var_184 As MSHFlexGrid
  Dim var_5A0 As Double
  Dim var_390 As Variant
  Dim var_4E8 As Variant
  Dim var_508 As Variant
  Dim Me As Recordset15
  loc_16CCDF0: On Error Goto loc_16CE68A
  loc_16CCDFE: Set var_B8 = Me.Txt
  loc_16CCE04: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16CCE2D: If (Proc_183_19_E8E68C(var_BC, "Category") = 0) Then
  loc_16CCE30:   Exit Sub
  loc_16CCE31: End If
  loc_16CCE3C: Set var_B8 = Me.Txt
  loc_16CCE42: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC)
  loc_16CCE6B: If (Proc_183_19_E8E68C(var_BC, "Voucher Type") = 0) Then
  loc_16CCE6E:   Exit Sub
  loc_16CCE6F: End If
  loc_16CCE7A: Set var_B8 = Me.Txt
  loc_16CCE80: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC)
  loc_16CCE91: Set var_C0 = var_BC
  loc_16CCEA9: If (Proc_183_19_E8E68C(var_C0, "Description") = 0) Then
  loc_16CCEAC:   Exit Sub
  loc_16CCEAD: End If
  loc_16CCEAD: var_D4 = 1
  loc_16CCED3: var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_16CCEE4: If (var_C4 = vbNullString) Then
  loc_16CCEED:   Call 0.Method_arg_50 (var_C4, CVar(CLng(5)))
  loc_16CCEFB:   var_124 = CVar(var_C4) 'String
  loc_16CCF0E:   MsgBox("Please Fill Voucher Type Detail", &H40, var_124, var_134, var_144)
  loc_16CCF31:   Me.FGrid.Row = 1
  loc_16CCF3D:   Set var_B8 = Me.FGrid
  loc_16CCF4E:   Exit Sub
  loc_16CCF4F: End If
  loc_16CCF74: For var_148 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_148 'Integer
  loc_16CCF7E:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CCF86:   var_F4 = CVar(CLng(5)) 'Long
  loc_16CCFB1:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_16CCFB4:     var_D4 = 1
  loc_16CCFC0:     var_F4 = CVar(CLng(1)) 'Long
  loc_16CCFEB:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_16CD007:       MsgBox("From Date is a Required Field", 0, var_124, var_134, var_144)
  loc_16CD01B:       Set var_B8 = Me.FGrid
  loc_16CD02C:       Exit Sub
  loc_16CD02D:     End If
  loc_16CD02D:     var_D4 = 1
  loc_16CD039:     var_F4 = CVar(CLng(2)) 'Long
  loc_16CD064:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_16CD080:       MsgBox("To Date is a Required Field", 0, var_124, var_134, var_144)
  loc_16CD094:       Set var_B8 = Me.FGrid
  loc_16CD0A5:       Exit Sub
  loc_16CD0A6:     End If
  loc_16CD0A6:     var_D4 = 1
  loc_16CD0B2:     var_F4 = CVar(CLng(3)) 'Long
  loc_16CD0DD:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_16CD0F9:       MsgBox("Prefix is a Required Field", 0, var_124, var_134, var_144)
  loc_16CD10D:       Set var_B8 = Me.FGrid
  loc_16CD11E:       Exit Sub
  loc_16CD11F:     End If
  loc_16CD122:   Else
  loc_16CD126:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CD12E:     var_F4 = CVar(CLng(5)) 'Long
  loc_16CD159:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_16CD160:       var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CD169:       Set var_B8 = Me.FGrid
  loc_16CD17A:     End If
  loc_16CD17A:   End If
  loc_16CD17D: Next var_148 'Integer
  loc_16CD1A7: For var_14C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_14C 'Integer
  loc_16CD1B1:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CD1B9:   var_F4 = CVar(CLng(3)) 'Long
  loc_16CD1FF:   var_96 = 0
  loc_16CD22B:   For var_160 = (var_92 + 1) To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_160 'Integer
  loc_16CD235:     var_D4 = CVar(CLng(var_94)) 'Long
  loc_16CD23D:     var_F4 = CVar(CLng(3)) 'Long
  loc_16CD266:     var_134 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_16CD289:     If (CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = CStr(var_134)) Then
  loc_16CD292:       var_96 = (var_96 + 1)
  loc_16CD295:     End If
  loc_16CD29B:     If (var_96 > 1) Then
  loc_16CD2BF:       MsgBox("Duplicate Voucher Prefix ", &H40, "Grid Validation", var_134, var_144)
  loc_16CD2D3:       Set var_B8 = Me.FGrid
  loc_16CD2E4:       Exit Sub
  loc_16CD2E5:     End If
  loc_16CD2E8:   Next var_160 'Integer
  loc_16CD2F0: Next var_14C 'Integer
  loc_16CD303: Set var_B8 = Me.Txt
  loc_16CD309: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_BC)
  loc_16CD344: var_A4 = CStr(IIf((var_BC.Text = "Yes"), "Y", "N"))
  loc_16CD36A: Set var_B8 = Me.Txt
  loc_16CD370: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_BC)
  loc_16CD3AB: var_A8 = CStr(IIf((var_BC.Text = "Yes"), "Y", "N"))
  loc_16CD3D1: Set var_B8 = Me.Txt
  loc_16CD3D7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_BC)
  loc_16CD412: var_AC = CStr(IIf((var_BC.Text = "Yes"), "Y", "N"))
  loc_16CD438: Set var_B8 = Me.Txt
  loc_16CD43E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_BC)
  loc_16CD479: var_B0 = CStr(IIf((var_BC.Text = "Yes"), "Y", "N"))
  loc_16CD49F: Set var_B8 = Me.Txt
  loc_16CD4A5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_BC)
  loc_16CD4AD: var_C4 = var_BC.Text
  loc_16CD4E0: var_B4 = CStr(IIf((var_C4 = "Yes"), "Y", "N"))
  loc_16CD501: unk_50BAC9.BeginTrans var_164
  loc_16CD529: Set var_B8 = Me.Txt
  loc_16CD52F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, "Delete From Voucher_Prefix Where V_Type='")
  loc_16CD537: var_114 = var_BC.Text
  loc_16CD540: var_168 = -1 & var_C4
  loc_16CD56C: unk_50BAC9.Execute var_168 & "' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_C0, &HFF
  loc_16CD5AC: Set var_B8 = Me.Txt
  loc_16CD5B2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, "Delete From Voucher_Include Where V_Type='")
  loc_16CD5BA: var_114 = var_BC.Text
  loc_16CD5C3: var_168 = -1 & var_C4
  loc_16CD5EF: unk_50BAC9.Execute var_168 & "' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_C0, 
  loc_16CD62F: Set var_B8 = Me.Txt
  loc_16CD635: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, "Delete From Voucher_Exclude Where V_Type='")
  loc_16CD63D: var_114 = var_BC.Text
  loc_16CD646: var_168 = -1 & var_C4
  loc_16CD64D: var_16C = var_168 & "' AND SITE_CODE='"
  loc_16CD672: unk_50BAC9.Execute var_16C & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_C0, 
  loc_16CD698: Set var_B8 = Me.TopCtrl1
  loc_16CD69E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_16CD6A6: var_C4 = CStr()
  loc_16CD6B7: If (var_C4 = "Add") Then
  loc_16CD6D8:   Set var_B8 = Me.Txt
  loc_16CD6DE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_BC, var_C4, "Insert Into Voucher_Type(Category,NCat,V_Type,Description,Short_Name,Number_Method,Separate_Narr,Common_Narr,Narration,ChqNo,ChqDt,ClgDt,U_Name,U_EntDt,U_AE,DefaultCrAC,DefaultDrAC,FirstDrCr,SITE_CODE,LOGSITE_CODE) Values ('")
  loc_16CD6E6:   var_390 = var_BC.Text
  loc_16CD6EF:   var_168 = -1 & var_C4
  loc_16CD6F6:   var_170 = var_168 & "','"
  loc_16CD707:   Set var_C0 = Me.Txt
  loc_16CD70D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_180, var_16C)
  loc_16CD715:   var_170 = var_180.Text
  loc_16CD736:   Set var_184 = Me.Txt
  loc_16CD73C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_16CD765:   Set var_190 = Me.Txt
  loc_16CD76B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_194)
  loc_16CD794:   Set var_1A4 = Me.Txt
  loc_16CD79A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1A8)
  loc_16CD7C3:   Set var_1B8 = Me.Txt
  loc_16CD7C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_16CD7E8:   var_1D0 = var_394 & var_16C & "','" & var_188.Text & "','" & var_194.Text & "','" & var_1A8.Text & "','" & var_1BC.Text & "','" & var_A4
  loc_16CD80E:   Set var_1DC = Me.Txt
  loc_16CD814:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1E0)
  loc_16CD85D:   var_20C = var_1D0 & "','" & var_A8 & "','" & var_1E0.Text & "','" & var_AC & "','" & var_B0 & "','" & var_B4 & "','" & MemVar_1F950C8
  loc_16CD872:   Proc_183_7_EB17D4(var_114, MemVar_1F950EC)
  loc_16CD895:   Set var_210 = Me.Txt
  loc_16CD89B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_214)
  loc_16CD8B1:   Proc_183_9_EAB2F0(var_238, CVar(var_214.Tag))
  loc_16CD8D4:   Set var_25C = Me.Txt
  loc_16CD8DA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_260)
  loc_16CD8F0:   Proc_183_9_EAB2F0(var_284, CVar(var_260.Tag))
  loc_16CD910:   Set var_2A8 = Me.Txt
  loc_16CD916:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_2AC)
  loc_16CD925:   Proc_183_9_EAB2F0(var_2CC, CVar(var_2AC))
  loc_16CD953:   var_34C = CVar(var_20C & "',") & var_114 & ",'A'," & var_238 & "," & var_284 & "," & var_2CC & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_16CD96A:   unk_50BAC9.Execute CStr(var_34C & "')"), , 
  loc_16CDA0F: Else
  loc_16CDA2D:   Set var_B8 = Me.Txt
  loc_16CDA33:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_BC, var_C4, "Update Voucher_Type Set DefaultCrAC='")
  loc_16CDA3B:   var_2EC = var_BC.Tag
  loc_16CDA44:   var_168 = -1 & var_C4
  loc_16CDA4B:   var_170 = var_168 & "',DefaultDrAC='"
  loc_16CDA5C:   Set var_C0 = Me.Txt
  loc_16CDA62:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_180, var_16C)
  loc_16CDA6A:   var_170 = var_180.Tag
  loc_16CDA8B:   Set var_184 = Me.Txt
  loc_16CDA91:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_188)
  loc_16CDABA:   Set var_190 = Me.Txt
  loc_16CDAC0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_194)
  loc_16CDAE9:   Set var_1A4 = Me.Txt
  loc_16CDAEF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1A8)
  loc_16CDB07:   var_1C4 = var_25C & var_16C & "',FirstDrCr='" & var_188.Text & "',Description='" & var_194.Text & "',Short_Name='" & var_1A8.Text & "',Number_Method='"
  loc_16CDB18:   Set var_1B8 = Me.Txt
  loc_16CDB1E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_16CDB63:   Set var_1DC = Me.Txt
  loc_16CDB69:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1E0)
  loc_16CDB81:   var_1F0 = var_1C4 & var_1BC.Text & "',Separate_Narr='" & var_A4 & "',Common_Narr='" & var_A8 & "',Narration='" & var_1E0.Text & "',ChqNo='"
  loc_16CDBB9:   var_124 = CVar(var_1F0 & var_AC & "',ChqDt='" & var_B0 & "',ClgDt='" & var_B4 & "',U_Name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_16CDBC7:   Proc_183_7_EB17D4(var_114, MemVar_1F950EC)
  loc_16CDBD8:   var_144 = var_124 & var_114 & ",U_AE='E',SITE_CODE='" 
  loc_16CDC10:   Set var_210 = Me.Txt
  loc_16CDC16:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_214)
  loc_16CDC29:   var_284 = var_144 & CVar(MemVar_1F95070) & "',LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' Where V_Type='" & CVar(var_214.Text) 
  loc_16CDC66:   unk_50BAC9.Execute CStr(var_284 & "' AND SITE_CODE='" & CVar(MemVar_1F95070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), , 
  loc_16CDCF8: End If
  loc_16CDD1D: For var_3B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_3B8 'Integer
  loc_16CDD27:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CDD2C:   var_F4 = 1
  loc_16CDD4A:   var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_16CDD56:   var_15C = CVar(CLng(var_92)) 'Long
  loc_16CDD5B:   var_31C = 2
  loc_16CDDCD:   If (3 And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_16CDDEB:     var_114 = Me.FGrid.TextMatrix)
  loc_16CDE03:     var_31C = CVar(CLng(1)) 'Long
  loc_16CDE23:     Proc_183_7_EB17D4(var_144, CVar(CStr(Me.FGrid.TextMatrix))), var_31C, CVar(CLng(var_92)), var_114, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_16CDE54:     Proc_183_7_EB17D4(var_284, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_92)), CVar(CLng(var_92)), (var_31C And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)))
  loc_16CDE5D:     var_3E8 = CVar(CLng(var_92)) 'Long
  loc_16CDE74:     var_2BC = Me.FGrid.TextMatrix)
  loc_16CDEAE:     var_5A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16CDEBC:     Proc_183_7_EB17D4(var_548, MemVar_1F950EC, var_5A0, CVar(CLng(4)), CVar(CLng(var_92)), var_2BC, CVar(CLng(3)))
  loc_16CDED9:     var_168 = "Insert Into Voucher_Prefix(V_Type,Date_From,Date_To,Prefix,Start_Srl_No,SITE_CODE,LOGSITE_CODE,U_Name,U_EntDt,U_AE) Values ('" & CStr(var_114)
  loc_16CDF31:     var_36C = CVar(var_168 & "',") & var_144 & "," & var_284 & ",'" & CVar(CStr(var_2BC)) & "'," & CVar(var_5A0) & ",'" & CVar(MemVar_1F95070) 
  loc_16CDF3A:     var_390 = var_36C & "','" 
  loc_16CDF57:     var_508 = var_390 & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) 
  loc_16CDF7E:     unk_50BAC9.Execute CStr(var_508 & "'," & var_548 & ",'A')"), var_598, -1
  loc_16CDFDA:   End If
  loc_16CDFDD: Next var_3B8 'Integer
  loc_16CE007: For var_5A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_92 = var_5A4 'Integer
  loc_16CE011:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CE016:   var_F4 = 1
  loc_16CE034:   var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_16CE040:   var_15C = CVar(CLng(var_92)) 'Long
  loc_16CE052:   Set var_BC = Me.FGrid1
  loc_16CE0B7:   If (CVar(CLng(var_92)) And (3 Or (CStr(Me.FGrid1.TextMatrix)) <> vbNullString))) Then
  loc_16CE0C8:     Set var_B8 = Me.Txt
  loc_16CE0CE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, (CStr(var_BC.TextMatrix)) <> vbNullString), 2)
  loc_16CE0D6:     var_15C = var_BC.Text
  loc_16CE0DF:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CE0E7:     var_F4 = CVar(CLng(4)) 'Long
  loc_16CE106:     var_15C = CVar(CLng(var_92)) 'Long
  loc_16CE11D:     var_124 = Me.FGrid1.TextMatrix)
  loc_16CE172:     var_274 = Me.FGrid1.TextMatrix)
  loc_16CE1B7:     Proc_183_7_EB17D4(var_390, MemVar_1F950EC, var_274, CVar(CLng(3)), CVar(CLng(var_92)), var_124, CVar(CLng(2)))
  loc_16CE1D7:     var_16C = "Insert Into Voucher_include(V_Type,GroupCode,DR,CR,SITE_CODE,LOGSITE_CODE,U_Name,U_EntDt,U_AE) Values ('" & var_C4 & "','"
  loc_16CE1FF:     var_2BC = CVar(var_16C & CStr(Me.FGrid1.TextMatrix)) & "','") & IIf((CStr(var_124) = "ü"), "Y", "N") & "','" & IIf((CStr(var_274) = "ü"), "Y", "N") 
  loc_16CE251:     var_4E8 = var_2BC & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," & var_390 & ",'A')" 
  loc_16CE25F:     unk_50BAC9.Execute CStr(var_4E8), var_508, -1
  loc_16CE2BD:   End If
  loc_16CE2C0: Next var_5A4 'Integer
  loc_16CE2EA: For var_5A8 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_92 = var_5A8 'Integer
  loc_16CE2F4:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CE2F9:   var_F4 = 1
  loc_16CE317:   var_C4 = CStr(Me.FGrid2.TextMatrix))
  loc_16CE323:   var_15C = CVar(CLng(var_92)) 'Long
  loc_16CE335:   Set var_BC = Me.FGrid2
  loc_16CE39A:   If (CVar(CLng(var_92)) And (3 Or (CStr(Me.FGrid2.TextMatrix)) <> vbNullString))) Then
  loc_16CE3AB:     Set var_B8 = Me.Txt
  loc_16CE3B1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C4, (CStr(var_BC.TextMatrix)) <> vbNullString), 2)
  loc_16CE3B9:     var_15C = var_BC.Text
  loc_16CE3C2:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_16CE3CA:     var_F4 = CVar(CLng(4)) 'Long
  loc_16CE3E9:     var_15C = CVar(CLng(var_92)) 'Long
  loc_16CE400:     var_124 = Me.FGrid2.TextMatrix)
  loc_16CE455:     var_274 = Me.FGrid2.TextMatrix)
  loc_16CE49A:     Proc_183_7_EB17D4(var_390, MemVar_1F950EC, var_274, CVar(CLng(3)), CVar(CLng(var_92)), var_124, CVar(CLng(2)))
  loc_16CE4BA:     var_16C = "Insert Into Voucher_Exclude(V_Type,GroupCode,DR,CR,SITE_CODE,LOGSITE_CODE,U_Name,U_EntDt,U_AE) Values ('" & var_C4 & "','"
  loc_16CE4E2:     var_2BC = CVar(var_16C & CStr(Me.FGrid2.TextMatrix)) & "','") & IIf((CStr(var_124) = "ü"), "Y", "N") & "','" & IIf((CStr(var_274) = "ü"), "Y", "N") 
  loc_16CE534:     var_4E8 = var_2BC & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," & var_390 & ",'A')" 
  loc_16CE542:     unk_50BAC9.Execute CStr(var_4E8), var_508, -1
  loc_16CE5A0:   End If
  loc_16CE5A3: Next var_5A8 'Integer
  loc_16CE5AE: unk_50BAC9.CommitTrans
  loc_16CE5B5: var_8A = 0
  loc_16CE5C6: Set var_B8 = Me.Txt
  loc_16CE5CC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC)
  loc_16CE5F1: Me.Requery -1
  loc_16CE61B: Me.Find "SearchCode ='" & var_BC.Text & "'", 0, 1
  loc_16CE62B: Set var_B8 = Me.TopCtrl1
  loc_16CE631: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_D4)
  loc_16CE64A: If (CStr(var_8A) = "Add") Then
  loc_16CE64D:   Call TopCtrl1_UnknownEvent_A()
  loc_16CE652:   Exit Sub
  loc_16CE653: End If
  loc_16CE668: var_C4 = "INI"
  loc_16CE676: Call Proc_207_60_EB2748(Proc_5_1_100EC1C(var_C4, Me))
  loc_16CE686: Set var_88 = Nothing
  loc_16CE689: Exit Sub
  loc_16CE68A: ' Referenced from: 16CCDF0
  loc_16CE690: If (var_8A = &HFF) Then
  loc_16CE699:   unk_50BAC9.RollbackTrans
  loc_16CE69E: End If
  loc_16CE6A4: Call 0.Method_arg_50 (var_C4)
  loc_16CE6B9: Proc_183_57_104B0BC(var_C4, "TopCtrl1_eSave")
  loc_16CE6C5: Exit Sub
End Sub

Private Sub DGCR_UnknownEvent_9 'F7E79C
  'Data Table: 50BAA0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7E658: On Error Goto loc_F7E772
  loc_F7E66A: Me.DGCR.Visible = False
  loc_F7E689: If (Me.RecordCount > 0) Then
  loc_F7E6C8:   Set var_B4 = Me.Txt
  loc_F7E6CE:   Call 0.Method_DGCR_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F7E6D6:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7E709:   var_B0 = Me.Fields.Item("Name")
  loc_F7E71A:   var_CC = CStr(var_B0.Value)
  loc_F7E728:   Set var_B4 = Me.Txt
  loc_F7E72E:   Call 0.Method_DGCR_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F7E736:   var_B8.Text = var_CC
  loc_F7E74C: End If
  loc_F7E757: Set var_A8 = Me.Txt
  loc_F7E75D: Call 0.Method_DGCR_UnknownEvent_90 (CInt(&HC))
  loc_F7E765: var_B0.SetFocus
  loc_F7E771: Exit Sub
  loc_F7E772: ' Referenced from: F7E658
  loc_F7E778: Call 0.Method_arg_50 (var_CC)
  loc_F7E78D: Proc_183_57_104B0BC(var_CC, "DGCR_Click")
  loc_F7E799: Exit Sub
  loc_F7E79A: If var_B0 Then Exit Sub
  loc_F7E79A: End If
End Sub

Private Sub DGNCat_UnknownEvent_9 'F7FC20
  'Data Table: 50BAA0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7FADC: On Error Goto loc_F7FBF6
  loc_F7FAEE: Me.DGNCat.Visible = False
  loc_F7FB0D: If (Me.RecordCount > 0) Then
  loc_F7FB4C:   Set var_B4 = Me.Txt
  loc_F7FB52:   Call 0.Method_DGNCat_UnknownEvent_90 (CInt(1), var_B8)
  loc_F7FB5A:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7FB8D:   var_B0 = Me.Fields.Item("Name")
  loc_F7FB9E:   var_CC = CStr(var_B0.Value)
  loc_F7FBAC:   Set var_B4 = Me.Txt
  loc_F7FBB2:   Call 0.Method_DGNCat_UnknownEvent_90 (CInt(1), var_B8)
  loc_F7FBBA:   var_B8.Text = var_CC
  loc_F7FBD0: End If
  loc_F7FBDB: Set var_A8 = Me.Txt
  loc_F7FBE1: Call 0.Method_DGNCat_UnknownEvent_90 (CInt(1))
  loc_F7FBE9: var_B0.SetFocus
  loc_F7FBF5: Exit Sub
  loc_F7FBF6: ' Referenced from: F7FADC
  loc_F7FBFC: Call 0.Method_arg_50 (var_CC)
  loc_F7FC11: Proc_183_57_104B0BC(var_CC, "DGNCat_Click")
  loc_F7FC1D: Exit Sub
End Sub

Private Sub DGDR_UnknownEvent_9 'F7EC58
  'Data Table: 50BAA0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7EB14: On Error Goto loc_F7EC2E
  loc_F7EB26: Me.DGDR.Visible = False
  loc_F7EB45: If (Me.RecordCount > 0) Then
  loc_F7EB84:   Set var_B4 = Me.Txt
  loc_F7EB8A:   Call 0.Method_DGDR_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F7EB92:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7EBC5:   var_B0 = Me.Fields.Item("Name")
  loc_F7EBD6:   var_CC = CStr(var_B0.Value)
  loc_F7EBE4:   Set var_B4 = Me.Txt
  loc_F7EBEA:   Call 0.Method_DGDR_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F7EBF2:   var_B8.Text = var_CC
  loc_F7EC08: End If
  loc_F7EC13: Set var_A8 = Me.Txt
  loc_F7EC19: Call 0.Method_DGDR_UnknownEvent_90 (CInt(&HD))
  loc_F7EC21: var_B0.SetFocus
  loc_F7EC2D: Exit Sub
  loc_F7EC2E: ' Referenced from: F7EB14
  loc_F7EC34: Call 0.Method_arg_50 (var_CC)
  loc_F7EC49: Proc_183_57_104B0BC(var_CC, "DGDR_Click")
  loc_F7EC55: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBB880
  'Data Table: 50BAA0
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EBB7EE: On Error Goto loc_EBB857
  loc_EBB7F7: Me.MoveFirst
  loc_EBB811: var_8C = "SearchCode='" & MyValue
  loc_EBB821: Me.Find var_8C & "'", 0, 1
  loc_EBB849: Proc_5_0_1107AD0(&HFF, Me, global_76)
  loc_EBB851: Call Proc_207_59_1728990(0)
  loc_EBB856: Exit Sub
  loc_EBB857: ' Referenced from: EBB7EE
  loc_EBB85D: Call 0.Method_arg_50 (var_8C)
  loc_EBB872: Proc_183_57_104B0BC(var_8C, "SEARCHBACK")
  loc_EBB87E: Exit Sub
End Sub

Public Sub Proc_207_53_10D4BC4
  'Data Table: 50BAA0
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_50BAC9 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_140 As String
  loc_10D48EC: On Error Goto loc_10D4B95
  loc_10D4906: If (Me.RecordCount = 0) Then
  loc_10D4909:   Proc_207_53_10D4BC4 = 
  loc_10D490F: End If
  loc_10D4913: Set var_90 = Me.TopCtrl1
  loc_10D4919: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10D4921: var_A4 = CStr()
  loc_10D4932: If (var_A4 = "Add") Then
  loc_10D4962:   Set var_90 = Me.Txt
  loc_10D4968:   Call 0.Method_Proc_207_53_10D4BC40 (CInt(2), var_A8, var_A4, "Select Count(*) From Voucher_Type Where V_Type='", var_A0, -1)
  loc_10D49A5:   unk_50BAC9.Execute var_D8 & var_A4 & "' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", 0, var_EC
  loc_10D49B5:    = var_D8.Item()
  loc_10D49BD:    = var_EC.Value
  loc_10D49F2:   If (var_A8.Text.Fields > 0) Then
  loc_10D4A10:     var_A0 = "Duplicate Voucher Type"
  loc_10D4A16:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_10D4A31:     Set var_90 = Me.Txt
  loc_10D4A37:     Call 0.Method_Proc_207_53_10D4BC40 (CInt(2))
  loc_10D4A3F:     var_A8.SetFocus
  loc_10D4A50:     Proc_207_53_10D4BC4 = &HFF
  loc_10D4A56:   End If
  loc_10D4A59: Else
  loc_10D4A86:   Set var_90 = Me.Txt
  loc_10D4A8C:   Call 0.Method_Proc_207_53_10D4BC40 (CInt(2), var_A8, var_A4, "Select Count(*) From Voucher_Type Where V_Type='", var_A0, -1)
  loc_10D4ACA:   var_140 = var_D8 & var_A4 & "' And V_Type <>'" & global_92 & "' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_10D4ADA:   unk_50BAC9.Execute var_140 & "'", 0, var_EC
  loc_10D4AEA:    = var_D8.Item(var_A8)
  loc_10D4AF2:    = var_EC.Value
  loc_10D4B2B:   If (var_A8.Text.Fields > 0) Then
  loc_10D4B4F:     MsgBox("Duplicate Voucher Type", &H40, "Information", var_11C, var_13C)
  loc_10D4B6A:     Set var_90 = Me.Txt
  loc_10D4B70:     Call 0.Method_Proc_207_53_10D4BC40 (CInt(2))
  loc_10D4B78:     var_A8.SetFocus
  loc_10D4B89:     Proc_207_53_10D4BC4 = &HFF
  loc_10D4B8F:   End If
  loc_10D4B8F: End If
  loc_10D4B8F: Proc_207_53_10D4BC4 = var_A8
  loc_10D4B95: ' Referenced from: 10D48EC
  loc_10D4B9B: Call 0.Method_arg_50 (var_A4)
  loc_10D4BB0: Proc_183_57_104B0BC(var_A4)
  loc_10D4BBC: Proc_207_53_10D4BC4 = "Validate"
End Sub

Public Sub Proc_207_54_12DF344(arg_C, arg_10) '12DF344
  'Data Table: 50BAA0
  Dim var_8A As Integer
  Dim var_90 As MSHFlexGrid
  Dim var_A4 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_AC As TextBox
  Dim var_118 As Variant
  Dim var_B0 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_13C As Variant
  loc_12DEC94: On Error Goto loc_12DF314
  loc_12DEC9A: var_8A = arg_C
  loc_12DECA3: If (var_8A = 0) Then
  loc_12DECB9:   var_A4 = CLng(Me.FGrid.Col)
  loc_12DECC9:   If (var_A4 = CLng(3)) Then
  loc_12DECCF:     Call Proc_207_56_FF5AEC(var_A6, var_A4)
  loc_12DECDA:     If (var_A6 = 0) Then
  loc_12DECE2:       Proc_207_54_12DF344 = 0
  loc_12DECE8:     End If
  loc_12DECFB:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DED13:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12DED24:     Set var_90 = Me.TxtGrid
  loc_12DED2A:     Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, var_B0)
  loc_12DED32:     var_F8 = var_AC.Text
  loc_12DED3A:     var_118 = CVar(var_B0) 'String
  loc_12DED42:     Set var_12C = Me.FGrid
  loc_12DED48:     LateIdCallSt
  loc_12DED94:     Set var_90 = Me.Txt
  loc_12DED9A:     Call 0.Method_Proc_207_54_12DF3440 (CInt(2), var_AC, var_B0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)))
  loc_12DEDA2:     var_12C = var_AC.Text
  loc_12DEDAA:     var_C8 = CVar(var_B0) 'String
  loc_12DEDB2:     Set var_B8 = Me.FGrid
  loc_12DEDB8:     LateIdCallSt
  loc_12DEDD5:   Else
  loc_12DEDDC:     If (var_A4 = CLng(4)) Then
  loc_12DEDEB:       Set var_90 = Me.TxtGrid
  loc_12DEDF1:       Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, var_B0, var_B8)
  loc_12DEDF9:       var_C8 = var_AC.Text
  loc_12DEE10:       If (var_B0 = vbNullString) Then
  loc_12DEE17:         var_B0 = CStr(0)
  loc_12DEE23:         Set var_90 = Me.TxtGrid
  loc_12DEE29:         Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, var_B0)
  loc_12DEE31:         var_AC.Text = var_118
  loc_12DEE40:       End If
  loc_12DEE53:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DEE7C:       Set var_90 = Me.TxtGrid
  loc_12DEE82:       Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)))
  loc_12DEE8A:       var_D8 = var_AC.Text
  loc_12DEE92:       var_118 = CVar(var_B0) 'String
  loc_12DEE9A:       Set var_12C = Me.FGrid
  loc_12DEEA0:       LateIdCallSt
  loc_12DEEC1:     Else
  loc_12DEEC8:       If (var_A4 = CLng(1)) Then
  loc_12DEED7:         Set var_90 = Me.TxtGrid
  loc_12DEEDD:         Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, var_B0, var_12C)
  loc_12DEEE5:         var_118 = var_AC.Text
  loc_12DEF15:         If (Len(Trim(CVar(var_B0))) = 0) Then
  loc_12DEF2B:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DEF33:           var_F8 = CVar(CLng(1)) 'Long
  loc_12DEF3D:           var_C8 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_12DEF45:           Set var_AC = Me.FGrid
  loc_12DEF4B:           LateIdCallSt
  loc_12DEF74:           var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DEF7C:           var_108 = CVar(CLng(3)) 'Long
  loc_12DEF95:           var_118 = CVar(CStr(Year(MemVar_1F950EC))) 'String
  loc_12DEF9D:           Set var_AC = Me.FGrid
  loc_12DEFA3:           LateIdCallSt
  loc_12DEFBE:         Else
  loc_12DEFC7:           Set var_90 = Me.TxtGrid
  loc_12DEFCD:           Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, var_AC, var_118, var_108, var_E8)
  loc_12DF007:           Call 0.Method_arg_184 (var_AC, var_B0, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_AC)
  loc_12DF01D:           LateIdCallSt
  loc_12DF040:           Set var_90 = Me.TxtGrid
  loc_12DF046:           Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, Me.FGrid, CVar(var_B0), CVar(var_B0))
  loc_12DF04F:           Set var_B8 = Me.FGrid
  loc_12DF080:           Call 0.Method_arg_184 (var_AC, var_B0, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_12DF097:           var_13C = CVar(CStr(Year(CVar(var_B0)))) 'String
  loc_12DF0A5:           LateIdCallSt
  loc_12DF0C7:           Set var_B4 = Me.FGrid
  loc_12DF0F1:           Set var_90 = Me.Txt
  loc_12DF0F7:           Call 0.Method_Proc_207_54_12DF3440 (CInt(2), var_AC, var_B0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_12DF0FF:           var_13C = var_AC.Text
  loc_12DF107:           var_C8 = CVar(var_B0) 'String
  loc_12DF10F:           Set var_B8 = Me.FGrid
  loc_12DF115:           LateIdCallSt
  loc_12DF12F:         End If
  loc_12DF132:       Else
  loc_12DF139:         If (var_A4 = CLng(2)) Then
  loc_12DF148:           Set var_90 = Me.TxtGrid
  loc_12DF14E:           Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, var_B0, var_B8, var_C8)
  loc_12DF156:           var_F8 = var_AC.Text
  loc_12DF186:           If (Len(Trim(CVar(var_B0))) = 0) Then
  loc_12DF19C:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DF1A4:             var_F8 = CVar(CLng(2)) 'Long
  loc_12DF1AE:             var_C8 = CVar(CStr(MemVar_1F950FC)) 'String
  loc_12DF1B6:             Set var_AC = Me.FGrid
  loc_12DF1BC:             LateIdCallSt
  loc_12DF1D5:           Else
  loc_12DF1DE:             Set var_90 = Me.TxtGrid
  loc_12DF1E4:             Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, var_AC, var_C8, var_F8)
  loc_12DF21E:             Call 0.Method_arg_184 (var_AC, var_B0, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_12DF226:             var_C8 = CVar(var_B0) 'String
  loc_12DF22E:             Set var_12C = Me.FGrid
  loc_12DF234:             LateIdCallSt
  loc_12DF24E:           End If
  loc_12DF252:           Set var_B4 = Me.FGrid
  loc_12DF261:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DF27C:           Set var_90 = Me.Txt
  loc_12DF282:           Call 0.Method_Proc_207_54_12DF3440 (CInt(2), var_AC, var_B0, CVar(CLng(5)), var_D8, var_12C)
  loc_12DF28A:           var_C8 = var_AC.Text
  loc_12DF292:           var_C8 = CVar(var_B0) 'String
  loc_12DF29A:           Set var_B8 = Me.FGrid
  loc_12DF2A0:           LateIdCallSt
  loc_12DF2BA:         End If
  loc_12DF2BA:       End If
  loc_12DF2BA:     End If
  loc_12DF2BA:   End If
  loc_12DF2BD: Else
  loc_12DF2C3:   If (var_8A = 1) Then
  loc_12DF2C6:   End If
  loc_12DF2C6: End If
  loc_12DF2D1: If (arg_10 = 0) Then
  loc_12DF2D8:   Set var_90 = Me.FGrid
  loc_12DF2F4:   Set var_90 = Me.TxtGrid
  loc_12DF2FA:   Call 0.Method_Proc_207_54_12DF3440 (0, var_AC, 0, FGrid.DispID_8001, &HFF, var_B8)
  loc_12DF302:   var_AC.Visible = var_C8
  loc_12DF30E: End If
  loc_12DF30E: Proc_207_54_12DF344 = var_D8
  loc_12DF314: ' Referenced from: 12DEC94
  loc_12DF31A: Call 0.Method_arg_50 (var_B0, var_D8)
  loc_12DF32F: Proc_183_57_104B0BC(var_B0, "TxtGridLeave")
  loc_12DF33B: Proc_207_54_12DF344 = var_D8
End Sub

Public Sub Proc_207_55_109CC38
  'Data Table: 50BAA0
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  loc_109C988: On Error Goto loc_109CC08
  loc_109C99E: var_A0 = CLng(Me.FGrid1.Col)
  loc_109C9AE: If (var_A0 = CLng(1)) Then
  loc_109C9D1:   var_A6 = Me.EOF
  loc_109C9FE:   Set var_8C = Me.TxtGrid
  loc_109CA04:   Call 0.Method_Proc_207_55_109CC380 (1, var_AC, var_B0)
  loc_109CA0C:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_109CA24:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_109CA3A:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_109CA42:     var_E0 = CVar(CLng(1)) 'Long
  loc_109CA47:     var_100 = vbNullString
  loc_109CA51:     Set var_AC = Me.FGrid1
  loc_109CA57:     LateIdCallSt
  loc_109CA7C:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_109CA84:     var_E0 = CVar(CLng(4)) 'Long
  loc_109CA89:     var_100 = vbNullString
  loc_109CA93:     Set var_AC = Me.FGrid1
  loc_109CA99:     LateIdCallSt
  loc_109CAAE:   Else
  loc_109CAB1:     Call Proc_207_57_FF5444(var_A6, var_AC, var_100, var_E0, var_C0)
  loc_109CABC:     If (var_A6 = 0) Then
  loc_109CAC4:       Proc_207_55_109CC38 = 0
  loc_109CACA:     End If
  loc_109CADD:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_109CAE5:     var_F0 = CVar(CLng(1)) 'Long
  loc_109CB18:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_109CB20:     Set var_138 = Me.FGrid1
  loc_109CB26:     LateIdCallSt
  loc_109CB55:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_109CB5D:     var_F0 = CVar(CLng(4)) 'Long
  loc_109CB7F:     var_AC = Me.Fields.Item("Code")
  loc_109CB90:     var_134 = CVar(CStr(var_AC.Value)) 'String
  loc_109CB98:     Set var_138 = Me.FGrid1
  loc_109CB9E:     LateIdCallSt
  loc_109CBBA:   End If
  loc_109CBBA: End If
  loc_109CBC5: If (arg_10 = 0) Then
  loc_109CBCC:   Set var_8C = Me.FGrid1
  loc_109CBE8:   Set var_8C = Me.TxtGrid
  loc_109CBEE:   Call 0.Method_Proc_207_55_109CC380 (1, var_AC, 0, FGrid1.DispID_8001, &HFF, var_138, var_134)
  loc_109CBF6:   var_AC.Visible = var_F0
  loc_109CC02: End If
  loc_109CC02: Proc_207_55_109CC38 = var_D0
  loc_109CC08: ' Referenced from: 109C988
  loc_109CC0E: Call 0.Method_arg_50 (var_B0, var_138, var_134)
  loc_109CC23: Proc_183_57_104B0BC(var_B0, "TxtGridLeave1", var_F0)
  loc_109CC2F: Proc_207_55_109CC38 = var_D0
End Sub

Public Sub Proc_207_56_FF5AEC
  'Data Table: 50BAA0
  Dim var_98 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_E0 As Variant
  Dim var_B0 As TextBox
  loc_FF5914: On Error Goto loc_FF5ABE
  loc_FF593A: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FF593F:   var_92 = 3 'Byte
  loc_FF5943: End If
  loc_FF594C: Set var_98 = Me.TxtGrid
  loc_FF5952: Call 0.Method_Proc_207_56_FF5AEC0 (0, var_B0)
  loc_FF597A: var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(var_B0))))))
  loc_FF59B2: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_E4 'Integer
  loc_FF59D6:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FF59D9:     GoTo loc_FF5AAB
  loc_FF59DC:   End If
  loc_FF59E0:   var_F4 = CVar(CLng(var_88)) 'Long
  loc_FF5A0A:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FF5A14:   var_E0 = CVar(CStr(var_D0)) 'String
  loc_FF5A49:   If ((var_8C = CStr(Ucase(var_E0))) And (CStr(Ucase(var_E0)) <> vbNullString)) Then
  loc_FF5A6D:     MsgBox("Duplicate Prefix Not Allowed", &H40, "Validation", var_D0, var_E0)
  loc_FF5A86:     Set var_98 = Me.TxtGrid
  loc_FF5A8C:     Call 0.Method_Proc_207_56_FF5AEC0 (0, var_B0, CVar(CLng(var_92)))
  loc_FF5A94:     var_B0.SetFocus
  loc_FF5AA5:     Proc_207_56_FF5AEC = 0
  loc_FF5AAB:     ' Referenced from: FF59D9
  loc_FF5AAB:   End If
  loc_FF5AAE: Next var_E4 'Integer
  loc_FF5AB8: Proc_207_56_FF5AEC = &HFF
  loc_FF5ABE: ' Referenced from: FF5914
  loc_FF5AC4: Call 0.Method_arg_50 (var_138)
  loc_FF5AD9: Proc_183_57_104B0BC(var_138)
  loc_FF5AE5: Proc_207_56_FF5AEC = "ChkDuplicate"
End Sub

Public Sub Proc_207_57_FF5444
  'Data Table: 50BAA0
  Dim var_98 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_E0 As Variant
  Dim var_B0 As TextBox
  loc_FF526C: On Error Goto loc_FF5416
  loc_FF5292: If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_FF5297:   var_92 = 1 'Byte
  loc_FF529B: End If
  loc_FF52A4: Set var_98 = Me.TxtGrid
  loc_FF52AA: Call 0.Method_Proc_207_57_FF54440 (1, var_B0)
  loc_FF52D2: var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(var_B0))))))
  loc_FF530A: For var_E4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_E4 'Integer
  loc_FF532E:   If (CLng(var_88) = CLng(Me.FGrid1.Row)) Then
  loc_FF5331:     GoTo loc_FF5403
  loc_FF5334:   End If
  loc_FF5338:   var_F4 = CVar(CLng(var_88)) 'Long
  loc_FF5362:   var_D0 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_FF536C:   var_E0 = CVar(CStr(var_D0)) 'String
  loc_FF53A1:   If ((var_8C = CStr(Ucase(var_E0))) And (CStr(Ucase(var_E0)) <> vbNullString)) Then
  loc_FF53C5:     MsgBox("Duplicate Group Name Not Allowed", &H40, "Validation", var_D0, var_E0)
  loc_FF53DE:     Set var_98 = Me.TxtGrid
  loc_FF53E4:     Call 0.Method_Proc_207_57_FF54440 (1, var_B0, CVar(CLng(var_92)))
  loc_FF53EC:     var_B0.SetFocus
  loc_FF53FD:     Proc_207_57_FF5444 = 0
  loc_FF5403:     ' Referenced from: FF5331
  loc_FF5403:   End If
  loc_FF5406: Next var_E4 'Integer
  loc_FF5410: Proc_207_57_FF5444 = &HFF
  loc_FF5416: ' Referenced from: FF526C
  loc_FF541C: Call 0.Method_arg_50 (var_138)
  loc_FF5431: Proc_183_57_104B0BC(var_138)
  loc_FF543D: Proc_207_57_FF5444 = "ChkDuplicate1"
End Sub

Public Sub Proc_207_58_FA31E4
  'Data Table: 50BAA0
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_FA3068: On Error Goto loc_FA31BC
  loc_FA3071: global_92 = vbNullString
  loc_FA3083: Set var_8C = Me.Txt
  loc_FA3089: Call 0.Method_Proc_207_58_FA31E4C (var_8E, var_86)
  loc_FA3099: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FA30AF:   Set var_8C = Me.Txt
  loc_FA30B5:   Call 0.Method_Proc_207_58_FA31E40 (CInt(var_86), var_98)
  loc_FA30BD:   var_98.Text = vbNullString
  loc_FA30D9:   Set var_8C = Me.Txt
  loc_FA30DF:   Call 0.Method_Proc_207_58_FA31E40 (CInt(var_86), var_98)
  loc_FA30E7:   var_98.Tag = vbNullString
  loc_FA30F6: Next var_92 'Byte
  loc_FA310A: Set var_8C = Me.Txt
  loc_FA3110: Call 0.Method_Proc_207_58_FA31E40 (CInt(&HC), var_98)
  loc_FA3118: var_98.Tag = vbNullString
  loc_FA3132: Set var_8C = Me.Txt
  loc_FA3138: Call 0.Method_Proc_207_58_FA31E40 (CInt(&HD), var_98)
  loc_FA3140: var_98.Tag = vbNullString
  loc_FA315F: Me.FGrid.Rows = 1
  loc_FA317C: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FA3184: Set var_98 = Me.FGrid
  loc_FA31B3: Me.FGrid.FixedRows = 1
  loc_FA31BB: Exit Sub
  loc_FA31BC: ' Referenced from: FA3068
  loc_FA31C2: Call 0.Method_arg_50 (var_DC, FGrid.DispID_10000)
  loc_FA31D7: Proc_183_57_104B0BC(var_DC, "BlankText")
  loc_FA31E3: Exit Sub
End Sub

Public Sub Proc_207_59_1728990
  'Data Table: 50BAA0
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_50BAC9 As Connection15
  Dim var_94 As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Fields15
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_16C As Variant
  Dim var_1B4 As Variant
  Dim var_1D8 As String
  Dim var_128 As TextBox
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  loc_1726D54: On Error Goto loc_1728965
  loc_1726DAD: unk_50BAC9.Execute CStr("Select V_Type,U_AE,U_Name,U_Entdt From Voucher_Type Where V_Type='" & Me.Fields.Item("V_Type").Value & "'  "), var_120, -1
  loc_1726DB8: Set var_94 = var_124
  loc_1726E0C: var_124 = var_94.Fields
  loc_1726E75: var_18C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1726EBA: Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("U_Name")), var_18C)))
  loc_1726F34: var_128 = var_94.Fields.Item("U_AE")
  loc_1726F95: var_18C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_1726FBC: var_1B4 = CVar(var_94.Fields.Item("U_EntDt")) 'Address
  loc_1726FDA: Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(var_1B4)))
  loc_1727029: If (Me.RecordCount > 0) Then
  loc_1727068:   Set var_124 = Me.Txt
  loc_172706E:   Call 0.Method_Proc_207_59_17289900 (CInt(0), var_128)
  loc_1727076:   var_128.Text = CStr(Me.Fields.Item("Category").Value)
  loc_17270C5:   Set var_124 = Me.Txt
  loc_17270CB:   Call 0.Method_Proc_207_59_17289900 (CInt(1), var_128)
  loc_17270D3:   var_128.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("NCat")))
  loc_1727123:   Set var_124 = Me.Txt
  loc_1727129:   Call 0.Method_Proc_207_59_17289900 (CInt(2), var_128)
  loc_1727131:   var_128.Text = CStr(Me.Fields.Item("V_Type").Value)
  loc_1727183:   Set var_124 = Me.Txt
  loc_1727189:   Call 0.Method_Proc_207_59_17289900 (CInt(3), var_128)
  loc_1727191:   var_128.Text = CStr(Me.Fields.Item("Description").Value)
  loc_17271E0:   Set var_124 = Me.Txt
  loc_17271E6:   Call 0.Method_Proc_207_59_17289900 (CInt(4), var_128)
  loc_17271EE:   var_128.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Short_Name")))
  loc_172723B:   Set var_124 = Me.Txt
  loc_1727241:   Call 0.Method_Proc_207_59_17289900 (CInt(5), var_128)
  loc_1727249:   var_128.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Number_Method")))
  loc_172728F:   If Not(IsNull(CVar(Me.Fields.Item("Separate_Narr")))) Then
  loc_17272AF:     var_AC = Me.Fields.Item("Separate_Narr")
  loc_1727300:     Set var_124 = Me.Txt
  loc_1727306:     Call 0.Method_Proc_207_59_17289900 (CInt(6), var_128)
  loc_172730E:     var_128.Text = CStr(IIf((var_AC.Value = "Y"), "Yes", "No"))
  loc_1727331:   Else
  loc_172733F:     Set var_98 = Me.Txt
  loc_1727345:     Call 0.Method_Proc_207_59_17289900 (CInt(6), var_AC)
  loc_172734D:     var_AC.Text = vbNullString
  loc_1727359:   End If
  loc_172738B:   If Not(IsNull(CVar(Me.Fields.Item("Common_Narr")))) Then
  loc_17273AB:     var_AC = Me.Fields.Item("Common_Narr")
  loc_17273FC:     Set var_124 = Me.Txt
  loc_1727402:     Call 0.Method_Proc_207_59_17289900 (CInt(7), var_128)
  loc_172740A:     var_128.Text = CStr(IIf((var_AC.Value = "Y"), "Yes", "No"))
  loc_172742D:   Else
  loc_172743B:     Set var_98 = Me.Txt
  loc_1727441:     Call 0.Method_Proc_207_59_17289900 (CInt(7), var_AC)
  loc_1727449:     var_AC.Text = vbNullString
  loc_1727455:   End If
  loc_172748E:   Set var_124 = Me.Txt
  loc_1727494:   Call 0.Method_Proc_207_59_17289900 (CInt(8), var_128)
  loc_172749C:   var_128.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Narration")))
  loc_17274E2:   If Not(IsNull(CVar(Me.Fields.Item("ChqNo")))) Then
  loc_1727502:     var_AC = Me.Fields.Item("ChqNo")
  loc_1727553:     Set var_124 = Me.Txt
  loc_1727559:     Call 0.Method_Proc_207_59_17289900 (CInt(9), var_128)
  loc_1727561:     var_128.Text = CStr(IIf((var_AC.Value = "Y"), "Yes", "No"))
  loc_1727584:   Else
  loc_1727592:     Set var_98 = Me.Txt
  loc_1727598:     Call 0.Method_Proc_207_59_17289900 (CInt(7), var_AC)
  loc_17275A0:     var_AC.Text = vbNullString
  loc_17275AC:   End If
  loc_172761A:   Set var_124 = Me.Txt
  loc_1727620:   Call 0.Method_Proc_207_59_17289900 (CInt(&HA), var_128)
  loc_1727628:   var_128.Text = CStr(IIf((Me.Fields.Item("ChqDt").Value = "Y"), "Yes", "No"))
  loc_1727682:   var_120 = "Yes"
  loc_17276B6:   Set var_124 = Me.Txt
  loc_17276BC:   Call 0.Method_Proc_207_59_17289900 (CInt(&HB), var_128)
  loc_17276C4:   var_128.Text = CStr(IIf((Me.Fields.Item("CLGDT").Value = "Y"), var_120, "No"))
  loc_172771D:   Set var_124 = Me.Txt
  loc_1727723:   Call 0.Method_Proc_207_59_17289900 (CInt(&HE), var_128)
  loc_172772B:   var_128.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("FirstDrCr")))
  loc_172774E:   Me.FGrid.Redraw = False
  loc_1727769:   Me.FGrid.Rows = 1
  loc_1727773:   var_8E = 1
  loc_17277AF:   Set var_124 = Me.Txt
  loc_17277B5:   Call 0.Method_Proc_207_59_17289900 (CInt(&HC), var_128)
  loc_17277BD:   var_128.Tag = Proc_183_2_E5AE94(CVar(Me.Fields.Item("DefaultCrAC")))
  loc_172780A:   Set var_124 = Me.Txt
  loc_1727810:   Call 0.Method_Proc_207_59_17289900 (CInt(&HD), var_128)
  loc_1727818:   var_128.Tag = Proc_183_2_E5AE94(CVar(Me.Fields.Item("DefaultDrAC")))
  loc_1727882:   unk_50BAC9.Execute CStr("SELECT NAME FROM SUBGROUP WHERE SUBCODE='" & Me.Fields.Item("DefaultCrAC").Value & "'"), var_120, -1
  loc_172788D:   Set var_88 = var_124
  loc_17278BB:   If (var_88.RecordCount > 0) Then
  loc_17278D5:     var_AC = var_88.Fields.Item("Name")
  loc_17278F4:     Set var_124 = Me.Txt
  loc_17278FA:     Call 0.Method_Proc_207_59_17289900 (CInt(&HC), var_128)
  loc_1727902:     var_128.Text = Proc_183_2_E5AE94(CVar(var_AC), var_124)
  loc_1727919:   Else
  loc_1727927:     Set var_98 = Me.Txt
  loc_172792D:     Call 0.Method_Proc_207_59_17289900 (CInt(&HC), var_AC)
  loc_1727935:     var_AC.Text = vbNullString
  loc_1727941:   End If
  loc_1727997:   unk_50BAC9.Execute CStr("SELECT NAME FROM SUBGROUP WHERE SUBCODE='" & Me.Fields.Item("DefaultDrAC").Value & "'"), var_120, -1
  loc_17279A2:   Set var_88 = var_124
  loc_17279D0:   If (var_88.RecordCount > 0) Then
  loc_17279EA:     var_AC = var_88.Fields.Item("Name")
  loc_1727A09:     Set var_124 = Me.Txt
  loc_1727A0F:     Call 0.Method_Proc_207_59_17289900 (CInt(&HD), var_128)
  loc_1727A17:     var_128.Text = Proc_183_2_E5AE94(CVar(var_AC), var_124)
  loc_1727A2E:   Else
  loc_1727A3C:     Set var_98 = Me.Txt
  loc_1727A42:     Call 0.Method_Proc_207_59_17289900 (CInt(&HD), var_AC)
  loc_1727A4A:     var_AC.Text = vbNullString
  loc_1727A56:   End If
  loc_1727A95:   var_DC = "Select V_Type,Date_From,Date_to,Prefix,Start_Srl_No From Voucher_Prefix Where V_Type='" & Me.Fields.Item("V_Type").Value 
  loc_1727AC4:   var_18C = var_DC & "' AND SITE_CODE='" & CVar(MemVar_1F95070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' Order By Date_From" 
  loc_1727AD2:   unk_50BAC9.Execute CStr(var_18C), var_1B4, -1
  loc_1727ADD:   Set var_88 = var_124
  loc_1727B13:   If (var_88.RecordCount > 0) Then
  loc_1727B16:     ' Referenced from: 1727D33
  loc_1727B25:     If Not(var_88.EOF) Then
  loc_1727B28:       var_A8 = vbNullString
  loc_1727B32:       Set var_98 = Me.FGrid
  loc_1727B47:       Set var_1F0 = Me.FGrid
  loc_1727B4E:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1727B60:       var_BC = CVar(CStr(var_8E)) 'String
  loc_1727B67:       LateIdCallSt
  loc_1727BAB:       var_DC = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Prefix")), CVar(CLng(3)), CVar(CLng(var_8E)), var_1F0, CVar(var_88.Fields.Item("Prefix")), CVar(CLng(0)))) 'String
  loc_1727BB2:       LateIdCallSt
  loc_1727BFD:       var_DC = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Date_From")), CVar(CLng(1)), CVar(CLng(var_8E)), var_1F0, var_DC)) 'String
  loc_1727C04:       LateIdCallSt
  loc_1727C4F:       var_DC = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Date_to")), CVar(CLng(2)), CVar(CLng(var_8E)), var_1F0, var_DC)) 'String
  loc_1727C56:       LateIdCallSt
  loc_1727C9F:       Proc_183_3_E7DD58(var_DC, CVar(var_88.Fields.Item("start_srl_no")), CVar(CLng(4)), CVar(CLng(var_8E)), var_1F0, var_DC)
  loc_1727CA8:       var_FC = CVar(CStr(var_DC)) 'String
  loc_1727CAF:       LateIdCallSt
  loc_1727CC7:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1727CCF:       var_110 = CVar(CLng(5)) 'Long
  loc_1727CFF:       var_DC = CVar(CStr(var_88.Fields.Item("V_Type").Value)) 'String
  loc_1727D06:       LateIdCallSt
  loc_1727D1E:       Set var_1F0 = Nothing 
  loc_1727D28:       var_8E = (var_8E + 1)
  loc_1727D2E:       var_88.MoveNext
  loc_1727D33:       GoTo loc_1727B16
  loc_1727D36:     End If
  loc_1727D49:     Me.FGrid.FixedRows = 1
  loc_1727D51:   End If
  loc_1727D5F:   Me.FGrid.Redraw = True
  loc_1727D6D:   If (var_8E = 1) Then
  loc_1727D83:     Me.FGrid.Rows = 1
  loc_1727DA0:     var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1727DA8:     Set var_AC = Me.FGrid
  loc_1727DD7:     Me.FGrid.FixedRows = 1
  loc_1727DDF:   End If
  loc_1727DEE:   Me.FGrid1.Redraw = False
  loc_1727E09:   Me.FGrid1.Rows = 1
  loc_1727E13:   var_8E = 1
  loc_1727E23:   var_CC = "Select V_Type,Voucher_Include.GroupCode,GroupName,Dr,Cr From Voucher_Include Left Join AcGroup  on Voucher_Include.GroupCode = AcGroup.GroupCode Where AcGroup.AliasYN <>'Y' And V_Type='"
  loc_1727E71:   var_14C = var_CC & Me.Fields.Item("V_Type").Value & "' AND Voucher_Include.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND Voucher_Include.LOGSITE_CODE='" 
  loc_1727E92:   unk_50BAC9.Execute CStr(var_14C & CVar(MemVar_1F95078) & "' Order By Voucher_Include.GroupCode"), var_1B4, -1
  loc_1727E9D:   Set var_88 = var_124
  loc_1727ED3:   If (var_88.RecordCount > 0) Then
  loc_1727ED6:     ' Referenced from: 17281CF
  loc_1727EE5:     If Not(var_88.EOF) Then
  loc_1727EE8:       var_A8 = vbNullString
  loc_1727EF2:       Set var_98 = Me.FGrid1
  loc_1727F07:       Set var_1F4 = Me.FGrid1
  loc_1727F0E:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1727F16:       var_EC = CVar(CLng(0)) 'Long
  loc_1727F20:       var_BC = CVar(CStr(var_8E)) 'String
  loc_1727F27:       LateIdCallSt
  loc_1727F36:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1727F3E:       var_110 = CVar(CLng(1)) 'Long
  loc_1727F6E:       var_DC = CVar(CStr(var_88.Fields.Item("GroupName").Value)) 'String
  loc_1727F75:       LateIdCallSt
  loc_1727FBA:       If Not(IsNull(CVar(var_88.Fields.Item("dr")))) Then
  loc_1727FE8:         var_13C = CVar(CLng(var_8E)) 'Long
  loc_1727FF0:         var_16C = CVar(CLng(2)) 'Long
  loc_172802B:         var_18C = CVar(CStr(IIf((var_88.Fields.Item("dr").Value = "Y"), "ü", vbNullString))) 'String
  loc_1728032:         LateIdCallSt
  loc_1728053:       Else
  loc_1728057:         var_A8 = CVar(CLng(var_8E)) 'Long
  loc_172805F:         var_EC = CVar(CLng(2)) 'Long
  loc_1728064:         var_13C = vbNullString
  loc_172806D:         LateIdCallSt
  loc_1728075:       End If
  loc_17280A4:       If Not(IsNull(CVar(var_88.Fields.Item("cr")))) Then
  loc_17280D2:         var_13C = CVar(CLng(var_8E)) 'Long
  loc_17280DA:         var_16C = CVar(CLng(3)) 'Long
  loc_1728115:         var_18C = CVar(CStr(IIf((var_88.Fields.Item("cr").Value = "Y"), "ü", vbNullString))) 'String
  loc_172811C:         LateIdCallSt
  loc_172813D:       Else
  loc_1728141:         var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1728149:         var_EC = CVar(CLng(3)) 'Long
  loc_172814E:         var_13C = vbNullString
  loc_1728157:         LateIdCallSt
  loc_172815F:       End If
  loc_1728163:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_172816B:       var_110 = CVar(CLng(4)) 'Long
  loc_172819B:       var_DC = CVar(CStr(var_88.Fields.Item("GroupCode").Value)) 'String
  loc_17281A2:       LateIdCallSt
  loc_17281BA:       Set var_1F4 = Nothing 
  loc_17281C4:       var_8E = (var_8E + 1)
  loc_17281CA:       var_88.MoveNext
  loc_17281CF:       GoTo loc_1727ED6
  loc_17281D2:     End If
  loc_17281E5:     Me.FGrid1.FixedRows = 1
  loc_17281ED:   End If
  loc_17281FB:   Me.FGrid1.Redraw = True
  loc_1728209:   If (var_8E = 1) Then
  loc_172821F:     Me.FGrid1.Rows = 1
  loc_172823C:     var_DC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_1728244:     Set var_AC = Me.FGrid1
  loc_1728273:     Me.FGrid1.FixedRows = 1
  loc_172827B:   End If
  loc_17282A0:   For var_208 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_90 = var_208 'Integer
  loc_17282B9:     Me.FGrid1.Row = CVar(CLng(var_90))
  loc_17282D3:     Me.FGrid1.Col = CVar(CLng(2))
  loc_17282EB:     Me.FGrid1.CellFontName = "wingdings"
  loc_1728305:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_1728320:     Me.FGrid1.CellForeColor = &HFF
  loc_172833A:     Me.FGrid1.Col = CVar(CLng(3))
  loc_1728352:     Me.FGrid1.CellFontName = "wingdings"
  loc_172836C:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_1728387:     Me.FGrid1.CellForeColor = &HFF
  loc_1728392:   Next var_208 'Integer
  loc_17283A6:   Me.FGrid2.Redraw = False
  loc_17283C1:   Me.FGrid2.Rows = 1
  loc_17283CB:   var_8E = 1
  loc_17283DB:   var_CC = "Select VE.V_Type,VE.GroupCode,A.GroupName,VE.Dr,VE.Cr From Voucher_Exclude VE Left Join AcGroup A on VE.GroupCode=A.GroupCode Where A.AliasYN <>'Y' And VE.V_Type='"
  loc_1728433:   var_17C = var_CC & Me.Fields.Item("V_Type").Value & "' AND VE.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND VE.LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_1728440:   var_100 = CStr(var_17C & "' Order By VE.GroupCode")
  loc_172844A:   unk_50BAC9.Execute var_100, var_1B4, -1
  loc_1728455:   Set var_88 = var_124
  loc_172848B:   If (var_88.RecordCount > 0) Then
  loc_172848E:     ' Referenced from: 1728787
  loc_172849D:     If Not(var_88.EOF) Then
  loc_17284A0:       var_A8 = vbNullString
  loc_17284AA:       Set var_98 = Me.FGrid2
  loc_17284BF:       Set var_20C = Me.FGrid2
  loc_17284C6:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_17284CE:       var_EC = CVar(CLng(0)) 'Long
  loc_17284D8:       var_BC = CVar(CStr(var_8E)) 'String
  loc_17284DF:       LateIdCallSt
  loc_17284EE:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_17284F6:       var_110 = CVar(CLng(1)) 'Long
  loc_1728526:       var_DC = CVar(CStr(var_88.Fields.Item("GroupName").Value)) 'String
  loc_172852D:       LateIdCallSt
  loc_1728572:       If Not(IsNull(CVar(var_88.Fields.Item("dr")))) Then
  loc_17285A0:         var_13C = CVar(CLng(var_8E)) 'Long
  loc_17285A8:         var_16C = CVar(CLng(2)) 'Long
  loc_17285E3:         var_18C = CVar(CStr(IIf((var_88.Fields.Item("dr").Value = "Y"), "ü", vbNullString))) 'String
  loc_17285EA:         LateIdCallSt
  loc_172860B:       Else
  loc_172860F:         var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1728617:         var_EC = CVar(CLng(2)) 'Long
  loc_172861C:         var_13C = vbNullString
  loc_1728625:         LateIdCallSt
  loc_172862D:       End If
  loc_172865C:       If Not(IsNull(CVar(var_88.Fields.Item("cr")))) Then
  loc_172868A:         var_13C = CVar(CLng(var_8E)) 'Long
  loc_1728692:         var_16C = CVar(CLng(3)) 'Long
  loc_17286CD:         var_18C = CVar(CStr(IIf((var_88.Fields.Item("cr").Value = "Y"), "ü", vbNullString))) 'String
  loc_17286D4:         LateIdCallSt
  loc_17286F5:       Else
  loc_17286F9:         var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1728701:         var_EC = CVar(CLng(3)) 'Long
  loc_1728706:         var_13C = vbNullString
  loc_172870F:         LateIdCallSt
  loc_1728717:       End If
  loc_172871B:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1728723:       var_110 = CVar(CLng(4)) 'Long
  loc_1728753:       var_DC = CVar(CStr(var_88.Fields.Item("GroupCode").Value)) 'String
  loc_172875A:       LateIdCallSt
  loc_1728772:       Set var_20C = Nothing 
  loc_172877C:       var_8E = (var_8E + 1)
  loc_1728782:       var_88.MoveNext
  loc_1728787:       GoTo loc_172848E
  loc_172878A:     End If
  loc_172879D:     Me.FGrid2.FixedRows = 1
  loc_17287A5:   End If
  loc_17287B3:   Me.FGrid2.Redraw = True
  loc_17287C1:   If (var_8E = 1) Then
  loc_17287D7:     Me.FGrid2.Rows = 1
  loc_17287F4:     var_DC = CVar(CStr(CLng(Me.FGrid2.Rows))) 'String
  loc_17287FC:     Set var_AC = Me.FGrid2
  loc_172882B:     Me.FGrid2.FixedRows = 1
  loc_1728833:   End If
  loc_1728858:   For var_210 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_90 = var_210 'Integer
  loc_1728871:     Me.FGrid2.Row = CVar(CLng(var_90))
  loc_172888B:     Me.FGrid2.Col = CVar(CLng(2))
  loc_17288A3:     Me.FGrid2.CellFontName = "wingdings"
  loc_17288BD:     Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_17288D8:     Me.FGrid2.CellForeColor = &HFF
  loc_17288F2:     Me.FGrid2.Col = CVar(CLng(3))
  loc_172890A:     Me.FGrid2.CellFontName = "wingdings"
  loc_1728924:     Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_172893F:     Me.FGrid2.CellForeColor = &HFF
  loc_172894A:   Next var_210 'Integer
  loc_1728952: Else
  loc_1728952:   Call Proc_207_58_FA31E4()
  loc_1728957: End If
  loc_1728957: Call Proc_207_61_F9594C()
  loc_1728961: Set var_88 = Nothing
  loc_1728964: Exit Sub
  loc_1728965: ' Referenced from: 1726D54
  loc_172896B: Call 0.Method_arg_50 (var_100)
  loc_1728973: var_1D8 = "MoveRec"
  loc_1728980: Proc_183_57_104B0BC(var_100)
  loc_172898C: Exit Sub
End Sub

Public Sub Proc_207_60_EB2748(arg_C) 'EB2748
  'Data Table: 50BAA0
  Dim var_98 As TextBox
  loc_EB26BC: On Error Goto loc_EB271D
  loc_EB26CD: Set var_8C = Me.Txt
  loc_EB26D3: Call 0.Method_Proc_207_60_EB2748C (var_8E, var_86)
  loc_EB26E3: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB26F9:   Set var_8C = Me.Txt
  loc_EB26FF:   Call 0.Method_Proc_207_60_EB27480 (CInt(var_86), var_98)
  loc_EB2707:   var_98.Enabled = arg_C
  loc_EB2716: Next var_92 'Byte
  loc_EB271C: Exit Sub
  loc_EB271D: ' Referenced from: EB26BC
  loc_EB2723: Call 0.Method_arg_50 (var_9C)
  loc_EB272B: var_A4 = "Disp_Text"
  loc_EB2738: Proc_183_57_104B0BC(var_9C)
  loc_EB2744: Exit Sub
End Sub

Public Sub Proc_207_61_F9594C
  'Data Table: 50BAA0
  loc_F957E0: On Error Goto loc_F95924
  loc_F957FF: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_F95811:   Me.DGCategory.Visible = False
  loc_F95819: End If
  loc_F95835: If (CBool(Me.DGNCat.Visible) = &HFF) Then
  loc_F95847:   Me.DGNCat.Visible = False
  loc_F9584F: End If
  loc_F9586B: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F9587D:   Me.DGVType.Visible = False
  loc_F95885: End If
  loc_F958A0: If (Me.FrmList.Visible = &HFF) Then
  loc_F958AF:   Me.FrmList.Visible = False
  loc_F958B7: End If
  loc_F958D3: If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_F958E5:   Me.DGGroup.Visible = False
  loc_F958ED: End If
  loc_F95909: If (CBool(Me.DGCR.Visible) = &HFF) Then
  loc_F9591B:   Me.DGCR.Visible = False
  loc_F95923: End If
  loc_F95923: Exit Sub
  loc_F95924: ' Referenced from: F957E0
  loc_F9592A: Call 0.Method_arg_50 (var_C0)
  loc_F95932: var_C8 = "Grid_Hide"
  loc_F9593F: Proc_183_57_104B0BC(var_C0)
  loc_F9594B: Exit Sub
End Sub

Public Sub Proc_207_62_ECF328(arg_C) 'ECF328
  'Data Table: 50BAA0
  Dim var_10C As TextBox
  loc_ECF290: On Error Goto loc_ECF2FF
  loc_ECF293: Call Proc_207_61_F9594C()
  loc_ECF2CF: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_ECF2D2:   Call TopCtrl1_UnknownEvent_16()
  loc_ECF2DA: Else
  loc_ECF2E4:   Set var_108 = Me.Txt
  loc_ECF2EA:   Call 0.Method_Proc_207_62_ECF3280 (arg_C)
  loc_ECF2F2:   var_10C.SetFocus
  loc_ECF2FE: End If
  loc_ECF2FE: Exit Sub
  loc_ECF2FF: ' Referenced from: ECF290
  loc_ECF305: Call 0.Method_arg_50 (var_110)
  loc_ECF31A: Proc_183_57_104B0BC(var_110, "SaveMsg")
  loc_ECF326: Exit Sub
End Sub

Public Sub Proc_207_63_141EC84
  'Data Table: 50BAA0
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_141E1F0: On Error Goto loc_141EC5A
  loc_141E203: Me.SSTab1.Tab = 0
  loc_141E21E: Me.SSTab1.Left = CVar(CDbl(6735))
  loc_141E239: Me.SSTab1.Top = CVar(CDbl(1200))
  loc_141E253: Me.FGrid.Left = CVar(CDbl(0))
  loc_141E26D: Me.FGrid.Top = CVar(CDbl(0))
  loc_141E299: Me.FGrid.Width = CVar(Me.Frame3.Width)
  loc_141E2C9: Me.FGrid.Height = CVar(Me.Frame3.Height)
  loc_141E2E7: Me.FGrid1.Left = CVar(CDbl(0))
  loc_141E301: Me.FGrid1.Top = CVar(CDbl(0))
  loc_141E32D: Me.FGrid1.Width = CVar(Me.Frame2.Width)
  loc_141E35D: Me.FGrid1.Height = CVar(Me.Frame2.Height)
  loc_141E37B: Me.FGrid2.Left = CVar(CDbl(0))
  loc_141E395: Me.FGrid2.Top = CVar(CDbl(0))
  loc_141E3C1: Me.FGrid2.Width = CVar(Me.Frame1.Width)
  loc_141E3EB: Set var_B0 = Me.FGrid2
  loc_141E3F1: var_B0.Height = CVar(Me.Frame1.Height)
  loc_141E410: Me.DGCategory.Left = CVar(CDbl(7665))
  loc_141E42B: Me.DGCategory.Top = CVar(CDbl(465))
  loc_141E446: Me.DGNCat.Left = CVar(CDbl(7665))
  loc_141E461: Me.DGNCat.Top = CVar(CDbl(465))
  loc_141E47C: Me.DGVType.Left = CVar(CDbl(7665))
  loc_141E497: Me.DGVType.Top = CVar(CDbl(465))
  loc_141E4B2: Me.DGGroup.Left = CVar(CDbl(7665))
  loc_141E4CD: Me.DGGroup.Top = CVar(CDbl(465))
  loc_141E4E3: Set var_A8 = Me.Txt
  loc_141E4E9: Call 0.Method_Proc_207_63_141EC840 (CInt(&HC), var_B0)
  loc_141E508: Me.DGCR.Left = CVar(var_B0.Left)
  loc_141E524: Set var_B4 = Me.Txt
  loc_141E52A: Call 0.Method_Proc_207_63_141EC840 (CInt(&HC), var_B8)
  loc_141E545: Set var_A8 = Me.Txt
  loc_141E54B: Call 0.Method_Proc_207_63_141EC840 (CInt(&HC), var_B0)
  loc_141E55F: var_94 = CVar((var_B0.Top + var_B8.Height)) 'Single
  loc_141E56E: Me.DGCR.Top = CVar(var_B0.Left)
  loc_141E58E: Set var_A8 = Me.Txt
  loc_141E594: Call 0.Method_Proc_207_63_141EC840 (CInt(&HD), var_B0)
  loc_141E5B3: Me.DGDR.Left = CVar(var_B0.Left)
  loc_141E5CF: Set var_B4 = Me.Txt
  loc_141E5D5: Call 0.Method_Proc_207_63_141EC840 (CInt(&HD), var_B8)
  loc_141E5F0: Set var_A8 = Me.Txt
  loc_141E5F6: Call 0.Method_Proc_207_63_141EC840 (CInt(&HD), var_B0)
  loc_141E60A: var_94 = CVar((var_B0.Top + var_B8.Height)) 'Single
  loc_141E619: Me.DGDR.Top = CVar(var_B0.Left)
  loc_141E62F: Set var_C4 = Me.FGrid
  loc_141E63E: var_C4.Cols = 6
  loc_141E657: global_52 = CStr(CLng(var_C4.BackColor))
  loc_141E664: var_94 = CVar(CLng(0)) 'Long
  loc_141E669: var_E8 = &H1F4
  loc_141E675: LateIdCallSt
  loc_141E67D: var_94 = 0
  loc_141E689: var_E8 = CVar(CLng(5)) 'Long
  loc_141E68E: var_108 = "Voucher Type"
  loc_141E697: LateIdCallSt
  loc_141E6A2: var_94 = CVar(CLng(5)) 'Long
  loc_141E6A7: var_E8 = 0
  loc_141E6B3: LateIdCallSt
  loc_141E6BB: var_94 = 0
  loc_141E6C7: var_E8 = CVar(CLng(1)) 'Long
  loc_141E6CC: var_108 = "From Date"
  loc_141E6D5: LateIdCallSt
  loc_141E6E0: var_94 = CVar(CLng(1)) 'Long
  loc_141E6EB: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E6F2: LateIdCallSt
  loc_141E6FD: var_94 = CVar(CLng(1)) 'Long
  loc_141E708: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E70F: LateIdCallSt
  loc_141E71A: var_94 = CVar(CLng(1)) 'Long
  loc_141E71F: var_E8 = &H9C4
  loc_141E72B: LateIdCallSt
  loc_141E733: var_94 = 0
  loc_141E73F: var_E8 = CVar(CLng(2)) 'Long
  loc_141E744: var_108 = "To Date"
  loc_141E74D: LateIdCallSt
  loc_141E758: var_94 = CVar(CLng(2)) 'Long
  loc_141E763: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E76A: LateIdCallSt
  loc_141E775: var_94 = CVar(CLng(2)) 'Long
  loc_141E780: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E787: LateIdCallSt
  loc_141E792: var_94 = CVar(CLng(2)) 'Long
  loc_141E797: var_E8 = &H9C4
  loc_141E7A3: LateIdCallSt
  loc_141E7AB: var_94 = 0
  loc_141E7B7: var_E8 = CVar(CLng(3)) 'Long
  loc_141E7BC: var_108 = "Prefix"
  loc_141E7C5: LateIdCallSt
  loc_141E7D0: var_94 = CVar(CLng(3)) 'Long
  loc_141E7DB: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E7E2: LateIdCallSt
  loc_141E7ED: var_94 = CVar(CLng(3)) 'Long
  loc_141E7F8: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E7FF: LateIdCallSt
  loc_141E80A: var_94 = CVar(CLng(3)) 'Long
  loc_141E80F: var_E8 = &H7D0
  loc_141E81B: LateIdCallSt
  loc_141E823: var_94 = 0
  loc_141E82F: var_E8 = CVar(CLng(4)) 'Long
  loc_141E834: var_108 = "Start Sr. No."
  loc_141E83D: LateIdCallSt
  loc_141E848: var_94 = CVar(CLng(4)) 'Long
  loc_141E853: var_E8 = CVar(CInt(7)) 'Integer
  loc_141E85A: LateIdCallSt
  loc_141E865: var_94 = CVar(CLng(4)) 'Long
  loc_141E870: var_E8 = CVar(CInt(7)) 'Integer
  loc_141E877: LateIdCallSt
  loc_141E882: var_94 = CVar(CLng(4)) 'Long
  loc_141E887: var_E8 = &H7D0
  loc_141E893: LateIdCallSt
  loc_141E89D: Set var_C4 = Nothing 
  loc_141E8A5: Set var_11C = Me.FGrid1
  loc_141E8B4: var_11C.Cols = 5
  loc_141E8CD: global_52 = CStr(CLng(var_11C.BackColor))
  loc_141E8DA: var_94 = CVar(CLng(0)) 'Long
  loc_141E8DF: var_E8 = &H1F4
  loc_141E8EB: LateIdCallSt
  loc_141E8F3: var_94 = 0
  loc_141E8FF: var_E8 = CVar(CLng(1)) 'Long
  loc_141E904: var_108 = "Group Name"
  loc_141E90D: LateIdCallSt
  loc_141E918: var_94 = CVar(CLng(1)) 'Long
  loc_141E923: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E92A: LateIdCallSt
  loc_141E935: var_94 = CVar(CLng(1)) 'Long
  loc_141E940: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E947: LateIdCallSt
  loc_141E952: var_94 = CVar(CLng(1)) 'Long
  loc_141E957: var_E8 = &HBB8
  loc_141E963: LateIdCallSt
  loc_141E96B: var_94 = 0
  loc_141E977: var_E8 = CVar(CLng(2)) 'Long
  loc_141E97C: var_108 = "Dr"
  loc_141E985: LateIdCallSt
  loc_141E990: var_94 = CVar(CLng(2)) 'Long
  loc_141E99B: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E9A2: LateIdCallSt
  loc_141E9AD: var_94 = CVar(CLng(2)) 'Long
  loc_141E9B8: var_E8 = CVar(CInt(1)) 'Integer
  loc_141E9BF: LateIdCallSt
  loc_141E9CA: var_94 = CVar(CLng(2)) 'Long
  loc_141E9CF: var_E8 = &H3E8
  loc_141E9DB: LateIdCallSt
  loc_141E9E3: var_94 = 0
  loc_141E9EF: var_E8 = CVar(CLng(3)) 'Long
  loc_141E9F4: var_108 = "Cr"
  loc_141E9FD: LateIdCallSt
  loc_141EA08: var_94 = CVar(CLng(3)) 'Long
  loc_141EA13: var_E8 = CVar(CInt(1)) 'Integer
  loc_141EA1A: LateIdCallSt
  loc_141EA25: var_94 = CVar(CLng(3)) 'Long
  loc_141EA30: var_E8 = CVar(CInt(1)) 'Integer
  loc_141EA37: LateIdCallSt
  loc_141EA42: var_94 = CVar(CLng(3)) 'Long
  loc_141EA47: var_E8 = &H3E8
  loc_141EA53: LateIdCallSt
  loc_141EA5E: var_94 = CVar(CLng(4)) 'Long
  loc_141EA63: var_E8 = 0
  loc_141EA6F: LateIdCallSt
  loc_141EA79: Set var_11C = Nothing 
  loc_141EA81: Set var_120 = Me.FGrid2
  loc_141EA90: var_120.Cols = 5
  loc_141EAA3: var_D8 = CStr(CLng(var_120.BackColor))
  loc_141EAA9: global_52 = var_D8
  loc_141EAB6: var_94 = CVar(CLng(0)) 'Long
  loc_141EABB: var_E8 = &H1F4
  loc_141EAC7: LateIdCallSt
  loc_141EACF: var_94 = 0
  loc_141EADB: var_E8 = CVar(CLng(1)) 'Long
  loc_141EAE0: var_108 = "Group Name"
  loc_141EAE9: LateIdCallSt
  loc_141EAF4: var_94 = CVar(CLng(1)) 'Long
  loc_141EAFF: var_E8 = CVar(CInt(1)) 'Integer
  loc_141EB06: LateIdCallSt
  loc_141EB11: var_94 = CVar(CLng(1)) 'Long
  loc_141EB1C: var_E8 = CVar(CInt(1)) 'Integer
  loc_141EB23: LateIdCallSt
  loc_141EB2E: var_94 = CVar(CLng(1)) 'Long
  loc_141EB33: var_E8 = &HBB8
  loc_141EB3F: LateIdCallSt
  loc_141EB47: var_94 = 0
  loc_141EB53: var_E8 = CVar(CLng(2)) 'Long
  loc_141EB58: var_108 = "Dr"
  loc_141EB61: LateIdCallSt
  loc_141EB6C: var_94 = CVar(CLng(2)) 'Long
  loc_141EB77: var_E8 = CVar(CInt(1)) 'Integer
  loc_141EB7E: LateIdCallSt
  loc_141EB89: var_94 = CVar(CLng(2)) 'Long
  loc_141EB94: var_E8 = CVar(CInt(1)) 'Integer
  loc_141EB9B: LateIdCallSt
  loc_141EBA6: var_94 = CVar(CLng(2)) 'Long
  loc_141EBAB: var_E8 = &H3E8
  loc_141EBB7: LateIdCallSt
  loc_141EBBF: var_94 = 0
  loc_141EBCB: var_E8 = CVar(CLng(3)) 'Long
  loc_141EBD0: var_108 = "Cr"
  loc_141EBD9: LateIdCallSt
  loc_141EBE4: var_94 = CVar(CLng(3)) 'Long
  loc_141EBEF: var_E8 = CVar(CInt(1)) 'Integer
  loc_141EBF6: LateIdCallSt
  loc_141EC01: var_94 = CVar(CLng(3)) 'Long
  loc_141EC0C: var_E8 = CVar(CInt(1)) 'Integer
  loc_141EC13: LateIdCallSt
  loc_141EC1E: var_94 = CVar(CLng(3)) 'Long
  loc_141EC23: var_E8 = &H3E8
  loc_141EC2F: LateIdCallSt
  loc_141EC3A: var_94 = CVar(CLng(4)) 'Long
  loc_141EC3F: var_E8 = 0
  loc_141EC4B: LateIdCallSt
  loc_141EC55: Set var_120 = Nothing 
  loc_141EC59: Exit Sub
  loc_141EC5A: ' Referenced from: 141E1F0
  loc_141EC60: Call 0.Method_arg_50 (var_D8, var_120, var_E8, var_94, var_120, var_E8, var_94, var_120)
  loc_141EC75: Proc_183_57_104B0BC(var_D8, "Ini_Grid", var_E8, var_94, var_120)
  loc_141EC81: Exit Sub
End Sub

Public Sub Proc_207_64_ECC37C
  'Data Table: 50BAA0
  Dim var_CC As Variant
  loc_ECC2E0: On Error Goto loc_ECC353
  loc_ECC2F6: Me.FGrid1.Rows = 1
  loc_ECC313: var_CC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_ECC31B: Set var_D0 = Me.FGrid1
  loc_ECC34A: Me.FGrid1.FixedRows = 1
  loc_ECC352: Exit Sub
  loc_ECC353: ' Referenced from: ECC2E0
  loc_ECC359: Call 0.Method_arg_50 (var_D4, FGrid1.DispID_10000)
  loc_ECC36E: Proc_183_57_104B0BC(var_D4, "BlankFGrid1")
  loc_ECC37A: Exit Sub
End Sub

Public Sub Proc_207_65_12EBA0C
  'Data Table: 50BAA0
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_B4 As Variant
  Dim var_E0 As String
  Dim var_86 As Integer
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_134 As String
  Dim unk_50BAC9 As Connection15
  Dim var_90 As Recordset15
  Dim var_140 As MSHFlexGrid
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  loc_12EB35C: On Error Goto loc_12EB9E4
  loc_12EB372: Me.FGrid2.Rows = 1
  loc_12EB38F: var_D8 = CVar(CStr(CLng(Me.FGrid2.Rows))) 'String
  loc_12EB397: Set var_DC = Me.FGrid2
  loc_12EB3C6: Me.FGrid2.FixedRows = 1
  loc_12EB40D: If (Me.Fields.Item("DonotShowGroup").Value = "Yes") Then
  loc_12EB42E:   var_E0 = "Select GroupCode as Code,GroupName as Name From AcGroup Where SysGroup='Y' and AliasYN='N' AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_12EB43F:   Me.Recordset15.Open CVar(var_E0 & "' OR LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F951E0), 2
  loc_12EB44D: Else
  loc_12EB472:   var_C8 = CVar("Select GroupCode as Code,GroupName as Name From AcGroup Where AliasYN='N' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by GroupName") 'String
  loc_12EB47C:   Me.Recordset15.Open var_C8, CVar(MemVar_1F951E0), 2
  loc_12EB487: End If
  loc_12EB49E: If (Me.Recordset15.RecordCount > 0) Then
  loc_12EB4A3:   var_86 = 1
  loc_12EB4A6:   ' Referenced from: 12EB61B
  loc_12EB4B8:   If Not(Me.Recordset15.EOF) Then
  loc_12EB4BB:     var_A4 = vbNullString
  loc_12EB4C5:     Set var_B8 = Me.FGrid2
  loc_12EB4DA:     Set var_EC = Me.FGrid2
  loc_12EB4E1:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12EB4E9:     var_FC = CVar(CLng(0)) 'Long
  loc_12EB4F3:     var_C8 = CVar(CStr(var_86)) 'String
  loc_12EB4FA:     LateIdCallSt
  loc_12EB509:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_12EB511:     var_10C = CVar(CLng(1)) 'Long
  loc_12EB544:     var_D8 = CVar(CStr(Me.FGrid2.Fields.Item("Name").Value)) 'String
  loc_12EB54B:     LateIdCallSt
  loc_12EB565:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12EB56D:     var_FC = CVar(CLng(2)) 'Long
  loc_12EB572:     var_11C = vbNullString
  loc_12EB57B:     LateIdCallSt
  loc_12EB587:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12EB58F:     var_FC = CVar(CLng(3)) 'Long
  loc_12EB594:     var_11C = vbNullString
  loc_12EB59D:     LateIdCallSt
  loc_12EB5A9:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_12EB5B1:     var_10C = CVar(CLng(4)) 'Long
  loc_12EB5D3:     var_DC = Me.Recordset15.Fields.Item("Code")
  loc_12EB5DB:     var_C8 = var_DC.Value
  loc_12EB5E4:     var_D8 = CVar(CStr(var_C8)) 'String
  loc_12EB5EB:     LateIdCallSt
  loc_12EB603:     Set var_EC = Nothing 
  loc_12EB60D:     var_86 = (var_86 + 1)
  loc_12EB616:     Me.Recordset15.MoveNext
  loc_12EB61B:     GoTo loc_12EB4A6
  loc_12EB61E:   End If
  loc_12EB631:   Me.FGrid2.FixedRows = 1
  loc_12EB639: End If
  loc_12EB63D: Set var_B8 = Me.TopCtrl1
  loc_12EB643: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_12EB64B: var_E0 = CStr(var_EC)
  loc_12EB65C: If (var_E0 = "Edit") Then
  loc_12EB67D:   Set var_B8 = Me.Txt
  loc_12EB683:   Call 0.Method_Proc_207_65_12EBA0C0 (CInt(2), var_DC, var_E0, "Select GroupCode,CR,DR From Voucher_Exclude Where V_Type='", var_C8, -1, var_140)
  loc_12EB68B:   var_D8 = var_DC.Text
  loc_12EB6B2:   unk_50BAC9.Execute var_10C & var_E0 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO')", var_B4, var_EC
  loc_12EB6BD:   Set var_90 = var_140
  loc_12EB6D9:   ' Referenced from: 12EB9D0
  loc_12EB6E8:   If Not(var_90.EOF) Then
  loc_12EB710:     For var_144 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_92 = var_144 'Integer
  loc_12EB738:       var_D8 = var_90.Fields.Item("GroupCode").Value
  loc_12EB744:       var_B4 = CVar(CLng(var_92)) 'Long
  loc_12EB77E:       If (CVar(CLng(4)) = CVar(CStr(Me.FGrid2.TextMatrix)))) Then
  loc_12EB794:         Me.FGrid2.Row = CVar(CLng(var_92))
  loc_12EB7AE:         Me.FGrid2.Col = CVar(CLng(2))
  loc_12EB7C6:         Me.FGrid2.CellFontName = "wingdings"
  loc_12EB7E0:         Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_12EB7FB:         Me.FGrid2.CellForeColor = &HFF
  loc_12EB82E:         var_11C = CVar(CLng(var_92)) 'Long
  loc_12EB836:         var_194 = CVar(CLng(2)) 'Long
  loc_12EB871:         var_1B4 = CVar(CStr(IIf((var_90.Fields.Item("dr").Value = "Y"), "ü", vbNullString))) 'String
  loc_12EB879:         Set var_140 = Me.FGrid2
  loc_12EB87F:         LateIdCallSt
  loc_12EB8B2:         Me.FGrid2.Row = CVar(CLng(var_92))
  loc_12EB8CC:         Me.FGrid2.Col = CVar(CLng(3))
  loc_12EB8E4:         Me.FGrid2.CellFontName = "wingdings"
  loc_12EB8FE:         Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_12EB919:         Me.FGrid2.CellForeColor = &HFF
  loc_12EB94C:         var_11C = CVar(CLng(var_92)) 'Long
  loc_12EB954:         var_194 = CVar(CLng(3)) 'Long
  loc_12EB98F:         var_1B4 = CVar(CStr(IIf((var_90.Fields.Item("cr").Value = "Y"), "ü", vbNullString))) 'String
  loc_12EB997:         Set var_140 = Me.FGrid2
  loc_12EB99D:         LateIdCallSt
  loc_12EB9BD:         Exit For
  loc_12EB9C0:       End If
  loc_12EB9C3:     Next var_144 'Integer
  loc_12EB9C8:     ' Referenced from: 12EB9BD
  loc_12EB9CB:     var_90.MoveNext
  loc_12EB9D0:     GoTo loc_12EB6D9
  loc_12EB9D3:   End If
  loc_12EB9D3: End If
  loc_12EB9D8: Set var_8C = Nothing
  loc_12EB9E0: Set var_90 = Nothing
  loc_12EB9E3: Exit Sub
  loc_12EB9E4: ' Referenced from: 12EB35C
  loc_12EB9EA: Call 0.Method_arg_50 (var_E0)
  loc_12EB9F2: var_134 = "FillFGrid2"
  loc_12EB9FF: Proc_183_57_104B0BC(var_E0)
  loc_12EBA0B: Exit Sub
End Sub
