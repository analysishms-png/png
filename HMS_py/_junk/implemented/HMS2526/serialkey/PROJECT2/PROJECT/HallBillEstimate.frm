VERSION 5.00
Begin VB.Form HallBillEstimate
  Caption = "Banquet Estimate Bill"
  BackColor = &HC0C0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  Begin TextBox Txt
    Index = 25
    ForeColor = &HFF0000&
    Left = 4335
    Top = 7560
    Width = 1290
    Height = 360
    TabIndex = 79
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HFF0000&
    Left = 4365
    Top = 990
    Width = 1095
    Height = 285
    TabIndex = 12
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
  Begin MainCtrl topCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 73
  End
  Begin DataGrid DGItem
    Left = 16590
    Top = 2985
    Width = 9405
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 37
  End
  Begin DataGrid DGVType
    Left = 16200
    Top = 2340
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
  Begin DataGrid DGParty
    Left = 16485
    Top = 1620
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 40
  End
  Begin DataGrid DGHall
    Left = 16695
    Top = 990
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &H0&
    Left = 15600
    Top = 9840
    Width = 2010
    Height = 240
    Visible = 0   'False
    TabIndex = 14
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
    Index = 3
    ForeColor = &HFF0000&
    Left = 1380
    Top = 1620
    Width = 5760
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0FF&
    ForeColor = &H80000012&
    Left = 8565
    Top = 1740
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 38
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
    Index = 1
    ForeColor = &HFF0000&
    Left = 7095
    Top = 990
    Width = 570
    Height = 285
    TabIndex = 11
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
    Index = 0
    ForeColor = &HFF0000&
    Left = 930
    Top = 990
    Width = 2385
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
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
    Index = 6
    ForeColor = &H0&
    Left = 15600
    Top = 10095
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    Index = 12
    ForeColor = &H0&
    Left = 16380
    Top = 9330
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 24
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
    Index = 8
    ForeColor = &HFF0000&
    Left = 4335
    Top = 7920
    Width = 1290
    Height = 360
    TabIndex = 20
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
  End
  Begin TextBox Txt
    Index = 9
    ForeColor = &H0&
    Left = 13455
    Top = 9075
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 21
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
    ForeColor = &H0&
    Left = 13455
    Top = 9330
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Index = 11
    ForeColor = &H0&
    Left = 16380
    Top = 9075
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 23
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
    Index = 7
    ForeColor = &HFF0000&
    Left = 1380
    Top = 1305
    Width = 735
    Height = 285
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 15
    ForeColor = &H0&
    Left = 18930
    Top = 7980
    Width = 1290
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
    Index = 14
    ForeColor = &H0&
    Left = 18930
    Top = 8235
    Width = 1290
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
    ForeColor = &H0&
    Left = 18930
    Top = 8490
    Width = 1290
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
  Begin CommandButton Command1
    Caption = "Set&tlement"
    Left = 17685
    Top = 10545
    Width = 2895
    Height = 375
    Visible = 0   'False
    TabIndex = 36
    MaskColor = &H8000000F&
    Style = 1
  End
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 5895
    Top = 3645
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
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
    ForeColor = &HFF0000&
    Left = 5325
    Top = 3645
    Width = 400
    Height = 285
    Visible = 0   'False
    TabIndex = 8
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
    Index = 16
    ForeColor = &H0&
    Left = 16380
    Top = 8820
    Width = 1215
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
    Index = 4
    Left = 18540
    Top = 9735
    Width = 1860
    Height = 255
    Visible = 0   'False
    TabIndex = 34
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
  Begin TextBox TextPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 1500
    Top = 3600
    Width = 400
    Height = 285
    Visible = 0   'False
    TabIndex = 5
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
  Begin TextBox TextGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2070
    Top = 3600
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 6
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
  Begin TextBox Txt
    Index = 17
    ForeColor = &HFF0000&
    Left = 3825
    Top = 1305
    Width = 555
    Height = 285
    TabIndex = 1
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
    Index = 18
    ForeColor = &HFF0000&
    Left = 6270
    Top = 1305
    Width = 855
    Height = 285
    TabIndex = 2
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
    Index = 19
    ForeColor = &H0&
    Left = 14550
    Top = 10605
    Width = 3060
    Height = 240
    Visible = 0   'False
    TabIndex = 19
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
    Index = 20
    ForeColor = &HFF0000&
    Left = 4335
    Top = 8265
    Width = 1290
    Height = 360
    TabIndex = 25
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
  End
  Begin TextBox Txt
    Index = 21
    ForeColor = &H0&
    Left = 15600
    Top = 10350
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 17
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
    Index = 22
    ForeColor = &HFF0000&
    Left = 19095
    Top = 7650
    Width = 975
    Height = 285
    Visible = 0   'False
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
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HC0C0FF&
    ForeColor = &H80000012&
    Left = 1065
    Top = 3255
    Width = 1110
    Height = 225
    Visible = 0   'False
    TabIndex = 32
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
    Index = 23
    Left = 5595
    Top = 2595
    Width = 1470
    Height = 240
    Visible = 0   'False
    TabIndex = 30
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
    Index = 24
    ForeColor = &HFF0000&
    Left = 1380
    Top = 1935
    Width = 5760
    Height = 285
    TabIndex = 4
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
  Begin DataGrid DGBookNo
    Left = 16815
    Top = 405
    Width = 6300
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin MSHFlexGrid FGCat
    Left = 7830
    Top = 2835
    Width = 7320
    Height = 1425
    Visible = 0   'False
    TabIndex = 33
  End
  Begin MaskEdBox txtM
    Index = 1
    Left = 16860
    Top = 10095
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 16
  End
  Begin MSHFlexGrid FGrid
    Left = 7830
    Top = 1410
    Width = 8940
    Height = 2835
    TabIndex = 7
  End
  Begin MaskEdBox txtM
    Index = 0
    Left = 16860
    Top = 10350
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 18
  End
  Begin MaskEdBox txtMEd
    Index = 0
    Left = 30
    Top = 2760
    Width = 1110
    Height = 240
    Visible = 0   'False
    TabIndex = 42
  End
  Begin MSHFlexGrid FGrid1
    Left = 90
    Top = 2250
    Width = 7530
    Height = 1140
    TabIndex = 29
  End
  Begin BtnEnh BtnEnh4
    Left = 2610
    Top = 7560
    Width = 1695
    Height = 330
    TabIndex = 76
  End
  Begin BtnEnh BtnEnh2
    Left = 2610
    Top = 7905
    Width = 1695
    Height = 330
    TabIndex = 77
  End
  Begin BtnEnh BtnEnh3
    Left = 2610
    Top = 8250
    Width = 1695
    Height = 345
    TabIndex = 78
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 12090
    Top = 8670
    Width = 2430
    Height = 285
    TabIndex = 81
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
    Left = 12105
    Top = 8340
    Width = 2520
    Height = 255
    TabIndex = 80
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
    Caption = "Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 3855
    Top = 1020
    Width = 435
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
  Begin Label Label2
    BackColor = &HFFC0C0&
    Left = 0
    Top = 990
    Width = 9270
    Height = 285
    TabIndex = 75
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 74
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
  Begin Label Label1
    Caption = "Hall Name"
    Index = 0
    ForeColor = &H0&
    Left = 13065
    Top = 9870
    Width = 795
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
    Caption = "Party "
    Index = 5
    ForeColor = &HFF0000&
    Left = 210
    Top = 1635
    Width = 555
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 18615
    Top = 10230
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 70
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
    Caption = "V.Type "
    Index = 4
    ForeColor = &H0&
    Left = 18030
    Top = 8775
    Width = 660
    Height = 210
    Visible = 0   'False
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
    Caption = "Vr. No."
    Index = 3
    ForeColor = &HFF0000&
    Left = 18705
    Top = 8790
    Width = 645
    Height = 240
    Visible = 0   'False
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
    Caption = "Rect.No."
    Index = 15
    ForeColor = &H0&
    Left = 12405
    Top = 9090
    Width = 720
    Height = 210
    Visible = 0   'False
    TabIndex = 66
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
    Caption = "From Booking  Date And Time"
    Index = 10
    ForeColor = &H0&
    Left = 13065
    Top = 10110
    Width = 2475
    Height = 210
    Visible = 0   'False
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
    Caption = "Credit Card Holder"
    Index = 21
    ForeColor = &H0&
    Left = 14820
    Top = 9345
    Width = 1485
    Height = 210
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "Rect.Date"
    Index = 24
    ForeColor = &H0&
    Left = 12405
    Top = 9345
    Width = 825
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
    Caption = "Credit Card No."
    Index = 26
    ForeColor = &H0&
    Left = 14820
    Top = 9090
    Width = 1245
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
    Caption = "BookingNo"
    Index = 35
    ForeColor = &HFF0000&
    Left = 210
    Top = 1320
    Width = 1035
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
  Begin Label Label1
    Caption = "To Refund"
    Index = 2
    ForeColor = &H0&
    Left = 16935
    Top = 8505
    Width = 870
    Height = 210
    Visible = 0   'False
    TabIndex = 60
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
    Caption = "Tip Amount"
    Index = 7
    ForeColor = &H0&
    Left = 16935
    Top = 8250
    Width = 975
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
    Caption = "Cash Recd."
    Index = 8
    ForeColor = &H0&
    Left = 16935
    Top = 7995
    Width = 900
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 4080
    Top = 3645
    Width = 480
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 5715
    Top = 3645
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 56
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
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
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 3885
    Top = 3660
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 55
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Balance"
    Index = 9
    ForeColor = &H0&
    Left = 15630
    Top = 8835
    Width = 615
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
    Caption = "DocID"
    Index = 12
    ForeColor = &HC00000&
    Left = 19410
    Top = 10185
    Width = 555
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
  Begin Label LableDummy
    Caption = "Label2"
    Index = 1
    BackColor = &HC0C0FF&
    ForeColor = &H0&
    Left = 60
    Top = 3630
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 52
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LableAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 1890
    Top = 3600
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 51
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LableCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 255
    Top = 3600
    Width = 480
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
    Caption = "No of Pax"
    Index = 11
    ForeColor = &HFF0000&
    Left = 2850
    Top = 1320
    Width = 930
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
  Begin Label Label1
    Caption = "Pax @ Rate"
    Index = 13
    ForeColor = &HFF0000&
    Left = 5070
    Top = 1320
    Width = 1125
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
    Caption = "Particulars"
    Index = 14
    ForeColor = &H0&
    Left = 13065
    Top = 10620
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 47
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
    Caption = "To Booking  Date And Time"
    Index = 17
    ForeColor = &H0&
    Left = 13050
    Top = 10365
    Width = 2295
    Height = 210
    Visible = 0   'False
    TabIndex = 46
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 18120
    Top = 10005
    Width = 315
    Height = 435
    Visible = 0   'False
    TabIndex = 45
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Total"
    Index = 18
    ForeColor = &HFF0000&
    Left = 18555
    Top = 7665
    Width = 480
    Height = 240
    Visible = 0   'False
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
    Caption = "Particular"
    Index = 19
    ForeColor = &HFF0000&
    Left = 210
    Top = 1950
    Width = 930
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
End

Attribute VB_Name = "HallBillEstimate"

Private global_148 As Integer
Private global_150 As Integer
Private global_52 As Integer
Private global_116 As Integer
Private global_136 As Integer

Private Sub DGItem_UnknownEvent_9 '105B4E8
  'Data Table: 56AA0C
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
  Dim var_14C As Variant
  loc_105B28F: Me.DGItem.Visible = False
  loc_105B2AE: If (Me.RecordCount > 0) Then
  loc_105B2EB:   Set var_B4 = Me.TxtGrid
  loc_105B2F1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_105B2F9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_105B322:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105B32A:   var_EC = CVar(CLng(1)) 'Long
  loc_105B35D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_105B365:   Set var_B8 = Me.FGrid
  loc_105B36B:   LateIdCallSt
  loc_105B39A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105B3A2:   var_EC = CVar(CLng(9)) 'Long
  loc_105B3D5:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_105B3DD:   Set var_B8 = Me.FGrid
  loc_105B3E3:   LateIdCallSt
  loc_105B419:   var_B0 = Me.Fields.Item("Rate1")
  loc_105B431:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105B439:   var_FC = CVar(CLng(4)) 'Long
  loc_105B466:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_105B46E:   Set var_B8 = Me.FGrid
  loc_105B474:   LateIdCallSt
  loc_105B492: End If
  loc_105B49E: Set var_A8 = Me.TxtGrid
  loc_105B4A4: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_105B4AC: var_FC = var_B0.Visible
  loc_105B4BE: If (var_15E = &HFF) Then
  loc_105B4CA:   Set var_A8 = Me.TxtGrid
  loc_105B4D0:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_105B4D8:   var_B0.SetFocus
  loc_105B4E4: End If
  loc_105B4E4: Exit Sub
  loc_105B4E5: CExtInstUnk
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ED10B8
  'Data Table: 56AA0C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED101A: Set var_88 = Me.TxtPer
  loc_ED1020: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ED102E: Proc_6_74_E23240(var_8C)
  loc_ED103A: Call Proc_210_81_F24D00(var_8C)
  loc_ED104E: Set var_88 = Me.TxtPer
  loc_ED1054: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED105C: var_8C.SelStart = 0
  loc_ED1075: Set var_88 = Me.TxtPer
  loc_ED107B: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED1096: Set var_90 = Me.TxtPer
  loc_ED109C: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ED10A4: var_98.SelLength = Len(var_8C.Text)
  loc_ED10B7: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B2D8
  'Data Table: 56AA0C
  loc_E5B2A5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B2AE:   Proc_6_75_E5335C(Shift)
  loc_E5B2B3: End If
  loc_E5B2C8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B2D1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5B2D6: End If
  loc_E5B2D6: Exit Sub
  loc_E5B2D7: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E57C8C
  'Data Table: 56AA0C
  loc_E57C5E: Set var_88 = Me.TxtPer
  loc_E57C64: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E57C7F: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E57C8B: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E01F90
  'Data Table: 56AA0C
  loc_E01F8A: Call Proc_210_88_1677324(KeyCode)
  loc_E01F8F: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4C48C
  'Data Table: 56AA0C
  loc_E4C46A: Set var_88 = Me.TxtPer
  loc_E4C470: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4C47E: Proc_6_73_E23294(var_8C)
  loc_E4C48A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA51DC
  'Data Table: 56AA0C
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA5177: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_100)) Then
  loc_EA518D:   Me.FGrid.Col = 1
  loc_EA5195: End If
  loc_EA51A8: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA51BB: Set var_88 = Me.TxtGrid
  loc_EA51C1: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA51C9: var_BC.Visible = False
  loc_EA51D5: Call Proc_210_81_F24D00()
  loc_EA51DA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A9D8
  'Data Table: 56AA0C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A994: Set var_88 = Me.TxtGrid
  loc_E6A99A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A9B4: If (var_8C.Visible = 0) Then
  loc_E6A9CD:   Me.FGrid.BackColorSel = CVar(CLng(global_100))
  loc_E6A9D5: End If
  loc_E6A9D5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0020C
  'Data Table: 56AA0C
  Dim var_6B9C As Integer
  loc_E00204: Call Proc_210_75_E43D08()
  loc_E00209: Exit Sub
  loc_E0020A: var_6B9C = 
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '11F60AC
  'Data Table: 56AA0C
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
  loc_11F5C0C: Set var_88 = Me.topCtrl1
  loc_11F5C12: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F5C57: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_11F5C60:   Call Form_KeyDown(arg_C, arg_10)
  loc_11F5C65: End If
  loc_11F5C69: Set var_88 = Me.topCtrl1
  loc_11F5C6F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F5C88: If (CStr() = "Browse") Then
  loc_11F5C8B:   Exit Sub
  loc_11F5C8C: End If
  loc_11F5D00: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11F5D19:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F5D29:   var_9C = "+{Tab}"
  loc_11F5D2F:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11F5D39:   arg_C = 0
  loc_11F5D3F: Else
  loc_11F5D49:   var_B0 = Me.FGrid.Rows
  loc_11F5D96:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11F5DAF:     Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F5DBB:     Set var_88 = Me.topCtrl1
  loc_11F5DC1:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B0)
  loc_11F5DDA:     If (CStr(arg_C) = "Add") Then
  loc_11F5DEB:       Proc_303_0_FBACC8("{Tab}", 0)
  loc_11F5DF5:       arg_C = 0
  loc_11F5DFB:     Else
  loc_11F5E00:       Call Proc_210_82_F0AA78(0, arg_C)
  loc_11F5E05:     End If
  loc_11F5E05:   End If
  loc_11F5E05: End If
  loc_11F5E0B: global_148 = arg_C
  loc_11F5E31: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11F5E55: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_11F5E6B:   var_EC = CLng(Me.FGrid.Col)
  loc_11F5E7B:   If (var_EC = CLng(1)) Then
  loc_11F5E91:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F5EA9:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F5EAE:     var_11C = vbNullString
  loc_11F5EB8:     Set var_B4 = Me.FGrid
  loc_11F5EBE:     LateIdCallSt
  loc_11F5EE9:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F5EF1:     var_FC = CVar(CLng(9)) 'Long
  loc_11F5EF6:     var_11C = vbNullString
  loc_11F5F00:     Set var_A0 = Me.FGrid
  loc_11F5F06:     LateIdCallSt
  loc_11F5F2B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F5F33:     var_FC = CVar(CLng(3)) 'Long
  loc_11F5F38:     var_11C = vbNullString
  loc_11F5F42:     Set var_A0 = Me.FGrid
  loc_11F5F48:     LateIdCallSt
  loc_11F5F5D:   Else
  loc_11F5F64:     If (var_EC = CLng(3)) Then
  loc_11F5F83:       Set var_A0 = Me.FGrid
  loc_11F5FA7:       LateIdCallSt
  loc_11F5FBF:       Call Proc_210_83_1153D04(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F5FC7:     Else
  loc_11F5FCE:       If (var_EC = CLng(4)) Then
  loc_11F5FED:         Set var_A0 = Me.FGrid
  loc_11F6011:         LateIdCallSt
  loc_11F6029:         Call Proc_210_83_1153D04(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString)
  loc_11F6031:       Else
  loc_11F6038:         If (var_EC = CLng(2)) Then
  loc_11F604E:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6066:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F606B:           var_11C = vbNullString
  loc_11F6075:           Set var_B4 = Me.FGrid
  loc_11F607B:           LateIdCallSt
  loc_11F6093:         End If
  loc_11F6093:       End If
  loc_11F6093:     End If
  loc_11F6093:   End If
  loc_11F6093: End If
  loc_11F6099: If (arg_C = &HD) Then
  loc_11F60A1:   global_150 = 0
  loc_11F60A4: End If
  loc_11F60A9: Exit Sub
  loc_11F60AA: Set var_6BA0 = 0
End Sub

Private Sub FGrid_UnknownEvent_B 'E0DFC0
  'Data Table: 56AA0C
  loc_E0DFB1: Call FGrid_UnknownEvent_C()
  loc_E0DFBB: global_150 = 0
  loc_E0DFBE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1063F9C
  'Data Table: 56AA0C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1063D24: Set var_88 = Me.topCtrl1
  loc_1063D2A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1063D43: If (CStr() = "Browse") Then
  loc_1063D46:   Exit Sub
  loc_1063D47: End If
  loc_1063D5A: var_A0 = CLng(Me.FGrid.Col)
  loc_1063D6A: If (var_A0 = CLng(1)) Then
  loc_1063D71:   Set var_C4 = Me.FGrid
  loc_1063D95:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_1063DC2:   Set var_B4 = var_C4
  loc_1063DD4:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1063DFC:   Set var_88 = Me.TxtGrid
  loc_1063E02:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1063E0A:   0 = var_B4.Text
  loc_1063E23:   If (Len(var_9C) <= 1) Then
  loc_1063E32:     Set var_88 = Me.TxtGrid
  loc_1063E38:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1063E40:     var_CA = var_B4.Text
  loc_1063E51:     Set var_B8 = Me.TxtGrid
  loc_1063E57:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1063E5F:     var_C4.Text = var_9C
  loc_1063E72:   End If
  loc_1063E7E:   Set var_88 = Me.TxtGrid
  loc_1063E84:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1063E9E:   Set var_B8 = Me.TxtGrid
  loc_1063EA4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1063EAC:   var_C4.SelStart = Len(var_B4.Text)
  loc_1063EC2: Else
  loc_1063EC9:   If Not (var_A0 = CLng(3)) Then
  loc_1063ED3:     If (var_A0 = CLng(4)) Then
  loc_1063ED6:     End If
  loc_1063F14:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1063F29:   Else
  loc_1063F30:     If (var_A0 = CLng(2)) Then
  loc_1063F71:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_1063F83:     End If
  loc_1063F83:   End If
  loc_1063F83: End If
  loc_1063F8D: If (CLng(Index) <> &HD) Then
  loc_1063F95:   global_150 = &HFF
  loc_1063F98: End If
  loc_1063F98: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FFB918
  'Data Table: 56AA0C
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FFB730: Set var_90 = Me.topCtrl1
  loc_FFB736: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FFB74F: If (CStr() = "Browse") Then
  loc_FFB752:   Exit Sub
  loc_FFB753: End If
  loc_FFB770: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FFB773:   Exit Sub
  loc_FFB774: End If
  loc_FFB785: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FFB7A7:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FFB7E1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FFB803:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FFB819:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFB822:         Set var_118 = Me.FGrid
  loc_FFB83D:       Else
  loc_FFB850:         Me.FGrid.Rows = 1
  loc_FFB876:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FFB87E:         Set var_118 = Me.FGrid
  loc_FFB8AB:         Me.FGrid.FixedRows = 1
  loc_FFB8B3:       End If
  loc_FFB8B3:       Call Proc_210_83_1153D04(FGrid.DispID_10000, var_A0)
  loc_FFB8BD:       Call Proc_210_88_1677324(&H32, FGrid.DispID_10000)
  loc_FFB8C2:     End If
  loc_FFB8C5:   Else
  loc_FFB8E6:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FFB8F6:   End If
  loc_FFB8FA:   Set var_90 = Me.FGrid
  loc_FFB90B: End If
  loc_FFB910: Set var_8C = Nothing
  loc_FFB913: Exit Sub
  loc_FFB914: Exit Sub
  loc_FFB915: StAryRecCopy
End Sub

Private Sub FGrid_UnknownEvent_15 'E440F4
  'Data Table: 56AA0C
  Dim var_8C As TextBox
  loc_E440C8: Call Proc_210_81_F24D00()
  loc_E440D8: Set var_88 = Me.TxtGrid
  loc_E440DE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E440E6: var_8C.Visible = False
  loc_E440F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10701CC
  'Data Table: 56AA0C
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim unk_56AA2C As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As TextBox
  loc_106FF44: On Error Goto loc_10701C5
  loc_106FF6A: Call Proc_210_80_1039288(Proc_5_1_100EC1C("ADD", Me))
  loc_106FF75: Call Proc_210_79_1019D1C(global_80)
  loc_106FF87: Me.LblUser.Caption = vbNullString
  loc_106FF9C: Me.LblLDt.Caption = vbNullString
  loc_106FFBD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_106FFC5: var_98.Text = CStr(MemVar_1F950EC)
  loc_106FFFB: unk_56AA2C.Execute "Select Description,V_Type From Voucher_Type Where NCat='ESBIL' AND rESTCODE='" & global_56 & "'", var_BC, -1
  loc_1070006: Set var_88 = Me.Txt
  loc_107002A: If (var_88.RecordCount > 0) Then
  loc_1070066:   Set var_C4 = Me.Txt
  loc_107006C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_1070074:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_10700A4:   var_98 = var_88.Fields.Item("V_Type")
  loc_10700C3:   Set var_C4 = Me.Txt
  loc_10700C9:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_10700D1:   var_C8.Tag = CStr(var_98.Value)
  loc_10700E7: End If
  loc_10700F4: Set var_90 = Me.Txt
  loc_10700FA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_98)
  loc_1070102: var_98.Enabled = False
  loc_107011B: Set var_90 = Me.Txt
  loc_1070121: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_1070129: var_98.Enabled = False
  loc_1070144: Set var_90 = Me.Txt
  loc_107014A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_1070152: var_98.FontSize = CDbl(&HC)
  loc_1070169: Set var_90 = Me.Txt
  loc_107016F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_98)
  loc_1070177: var_98.SetFocus
  loc_1070191: Set var_90 = Me.Txt
  loc_1070197: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_10701AD: Call Proc_210_87_1A86564(CDate(var_98.Text))
  loc_10701C1: Set var_88 = Nothing
  loc_10701C4: Exit Sub
  loc_10701C5: ' Referenced from: 106FF44
  loc_10701C5: Proc_6_60_E63754(var_90)
  loc_10701CA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA200C
  'Data Table: 56AA0C
  loc_EA1F90: On Error Goto loc_EA2006
  loc_EA1FCA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA1FCD:   Call Proc_210_79_1019D1C()
  loc_EA1FF5:   Call Proc_210_80_1039288(Proc_5_1_100EC1C("INI", Me))
  loc_EA2000:   Call Proc_210_77_18AF45C(global_80)
  loc_EA2005: End If
  loc_EA2005: Exit Sub
  loc_EA2006: ' Referenced from: EA1F90
  loc_EA2006: Proc_6_60_E63754()
  loc_EA200B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12FBF48
  'Data Table: 56AA0C
  Dim unk_56AA2C As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_12FB86C: On Error Goto loc_12FBEF9
  loc_12FB87D: If (Proc_183_56_FE8B08(global_80) = &HFF) Then
  loc_12FB880:   Exit Sub
  loc_12FB881: End If
  loc_12FB8B8: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_12FB8C4:   unk_56AA2C.BeginTrans var_118
  loc_12FB8DA:   var_94 = Me.Bookmark 'Variant
  loc_12FB934:   unk_56AA2C.Execute CStr("Delete From SunTranEst Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12FB97F:   var_160 = 0
  loc_12FB992:   var_158 = 0
  loc_12FB99D:   var_154 = 0
  loc_12FB9B0:   var_14C = 0
  loc_12FB9BB:   var_148 = 0
  loc_12FB9CE:   var_140 = 0
  loc_12FBA17:   Proc_154_5_10E3BD4(MemVar_1F95044, "SunTranEst", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FBA95:   unk_56AA2C.Execute CStr("Delete From SunTranHEst Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12FBAE0:   var_160 = 0
  loc_12FBAF3:   var_158 = 0
  loc_12FBAFE:   var_154 = 0
  loc_12FBB11:   var_14C = 0
  loc_12FBB1C:   var_148 = 0
  loc_12FBB2F:   var_140 = 0
  loc_12FBB78:   Proc_154_5_10E3BD4(MemVar_1F95044, "SunTranHEst", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FBBF6:   unk_56AA2C.Execute CStr("Delete From HallStockEst Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12FBC41:   var_160 = 0
  loc_12FBC54:   var_158 = 0
  loc_12FBC5F:   var_154 = 0
  loc_12FBC72:   var_14C = 0
  loc_12FBC7D:   var_148 = 0
  loc_12FBC90:   var_140 = 0
  loc_12FBCD9:   Proc_154_5_10E3BD4(MemVar_1F95044, "HallStockEst", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FBD49:   var_F4 = "Delete From HallSale1Est Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12FBD57:   unk_56AA2C.Execute CStr(var_F4), var_114, -1
  loc_12FBDA2:   var_160 = 0
  loc_12FBDB5:   var_158 = 0
  loc_12FBDC0:   var_154 = 0
  loc_12FBDD3:   var_14C = 0
  loc_12FBDDE:   var_148 = 0
  loc_12FBDF1:   var_140 = 0
  loc_12FBE31:   var_124 = "HallSale1Est"
  loc_12FBE3A:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FBE68:   unk_56AA2C.CommitTrans
  loc_12FBE78:   Me.Requery -1
  loc_12FBE98:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12FBEA5:     Me.Bookmark = var_94
  loc_12FBEAD:   Else
  loc_12FBEC1:     If (Me.EOF = 0) Then
  loc_12FBECA:       Me.MoveLast
  loc_12FBECF:     End If
  loc_12FBECF:   End If
  loc_12FBECF:   Call Proc_210_77_18AF45C(var_140, 0, var_148, var_14C)
  loc_12FBEF0:   Proc_5_0_1107AD0(&HFF, Me, global_80, 0)
  loc_12FBEF8: End If
  loc_12FBEF8: Exit Sub
  loc_12FBEF9: ' Referenced from: 12FB86C
  loc_12FBEFF: unk_56AA2C.RollbackTrans
  loc_12FBF0C: Set var_11C = Err()
  loc_12FBF12: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_12FBF33: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_12FBF46: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1003208
  'Data Table: 56AA0C
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_1002FF8: On Error Goto loc_1003201
  loc_1003009: If (Proc_183_55_FE8490(global_80) = &HFF) Then
  loc_100300C:   Exit Sub
  loc_100300D: End If
  loc_1003030: Call Proc_210_80_1039288(Proc_5_1_100EC1C("EDIT", Me))
  loc_1003048: Set var_8C = Me.Txt
  loc_100304E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_1003056: var_94.Enabled = False
  loc_100306F: Set var_8C = Me.Txt
  loc_1003075: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_100307D: var_94.Enabled = False
  loc_1003096: Set var_8C = Me.Txt
  loc_100309C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_10030A4: var_94.Enabled = False
  loc_10030BD: Set var_8C = Me.Txt
  loc_10030C3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_94)
  loc_10030CB: var_94.Enabled = False
  loc_10030E4: Set var_8C = Me.Txt
  loc_10030EA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HF), var_94)
  loc_10030F2: var_94.Enabled = False
  loc_100310B: Set var_8C = Me.Txt
  loc_1003111: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HE), var_94)
  loc_1003119: var_94.Enabled = False
  loc_1003132: Set var_8C = Me.Txt
  loc_1003138: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HD), var_94)
  loc_1003140: var_94.Enabled = False
  loc_1003159: Set var_8C = Me.Txt
  loc_100315F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HC), var_94)
  loc_1003167: var_94.Enabled = False
  loc_1003180: Set var_8C = Me.Txt
  loc_1003186: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HB), var_94)
  loc_100318E: var_94.Enabled = False
  loc_10031A7: Set var_8C = Me.Txt
  loc_10031AD: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_10031B5: var_94.Enabled = False
  loc_10031C5: Set var_8C = Me.FGrid
  loc_10031E3: Me.LblUser.Caption = vbNullString
  loc_10031F8: Me.LblLDt.Caption = vbNullString
  loc_1003200: Exit Sub
  loc_1003201: ' Referenced from: 1002FF8
  loc_1003201: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_1003206: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B154
  'Data Table: 56AA0C
  loc_E1B149: Me.Global.Unload Me
  loc_E1B151: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F31124
  'Data Table: 56AA0C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F950E4 As String
  loc_F31020: On Error Goto loc_F3111B
  loc_F3103A: If (Me.RecordCount <= 0) Then
  loc_F31058:   var_A8 = "No Records To Search."
  loc_F3105E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F3106E:   Exit Sub
  loc_F3106F: End If
  loc_F31076: var_10C = "Select Docid as SearchCode,CAST(S.VNo AS vARcHAR(11)) as VNo ,CAST(S.VDate AS VARCHAR(11)) AS vdate ,S.Party " & " From HallSale1Est S Where S.RESTCODE ='"
  loc_F31095: Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F310A1: var_B8 = " and "
  loc_F310B5: Proc_6_7_F26918(var_120, MemVar_1F950FC)
  loc_F310CB: MemVar_1F950E4 = CStr(CVar(var_10C & global_56 & "' AND S.VDate between ") & var_A8 & var_B8 & var_120 & " Order By S.docid")
  loc_F310ED: MemVar_1F95120 = Me
  loc_F310FA: Proc_6_126_F1C850("1000,1200,2000")
  loc_F31115: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F3111A: Exit Sub
  loc_F3111B: ' Referenced from: F31020
  loc_F3111B: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F31120: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3A628
  'Data Table: 56AA0C
  loc_E3A618: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A620: Call Proc_210_77_18AF45C(global_80)
  loc_E3A625: Exit Sub
  loc_E3A626: var_6B88 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A688
  'Data Table: 56AA0C
  Dim var_6B01 As Double
  loc_E3A678: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A680: Call Proc_210_77_18AF45C(global_80)
  loc_E3A685: Exit Sub
  loc_E3A686: var_6B01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3A7A8
  'Data Table: 56AA0C
  loc_E3A798: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A7A0: Call Proc_210_77_18AF45C(global_80)
  loc_E3A7A5: Exit Sub
  loc_E3A7A6: Set var_6C00 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34148
  'Data Table: 56AA0C
  loc_E34138: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34140: Call Proc_210_77_18AF45C(global_80)
  loc_E34145: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E0012C
  'Data Table: 56AA0C
  loc_E00124: Call Proc_210_96_1976C1C()
  loc_E00129: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E8E1CC
  'Data Table: 56AA0C
  Dim Me As Recordset15
  loc_E8E157: If Not((global_64 Is Nothing)) Then
  loc_E8E165:   Me.Requery -1
  loc_E8E16A: End If
  loc_E8E175: Me.Requery -1
  loc_E8E185: Me.Requery -1
  loc_E8E195: Me.Requery -1
  loc_E8E1A5: Me.Requery -1
  loc_E8E1B5: If Not((global_64 Is Nothing)) Then
  loc_E8E1C3:   Me.Requery -1
  loc_E8E1C8: End If
  loc_E8E1C8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1A1E590
  'Data Table: 56AA0C
  Dim var_188 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_180 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_18C As String
  Dim var_22C As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_184 As Variant
  Dim var_234 As String
  Dim var_238 As String
  Dim var_23C As String
  Dim var_240 As String
  Dim unk_56AA2C As Connection15
  Dim var_244 As Variant
  Dim var_248 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Double
  Dim var_DC As Double
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_124 As Double
  Dim var_13C As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_14C As Double
  Dim var_154 As Double
  Dim var_16C As Double
  Dim var_144 As Double
  Dim var_15C As Double
  Dim var_164 As Double
  Dim var_174 As Double
  Dim var_17C As Double
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_294 As TextBox
  Dim var_2CC As Label
  Dim var_328 As TextBox
  Dim var_394 As TextBox
  Dim var_424 As Variant
  Dim var_DD8 As Double
  Dim var_438 As Variant
  Dim var_DE0 As Double
  Dim var_6EC As Variant
  Dim var_DE8 As Double
  Dim var_700 As Variant
  Dim var_DF0 As Double
  Dim var_75C As Variant
  Dim var_7A4 As Variant
  Dim var_7B4 As Variant
  Dim var_854 As MaskEdBox
  Dim var_864 As Variant
  Dim var_8CC As TextBox
  Dim var_918 As TextBox
  Dim var_964 As TextBox
  Dim var_DF8 As Double
  Dim var_A08 As TextBox
  Dim var_E00 As Double
  Dim var_CAC As Variant
  Dim var_C8C As String
  Dim var_D24 As TextBox
  Dim var_25C As String
  Dim var_278 As String
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_2A8 As Variant
  Dim var_2B8 As Variant
  Dim var_2C8 As Variant
  Dim var_310 As Variant
  Dim var_3B8 As Variant
  Dim var_3D8 As Variant
  Dim var_3E8 As Variant
  Dim var_44C As Variant
  Dim var_47C As Variant
  Dim var_48C As Variant
  Dim var_4AC As Variant
  Dim var_4CC As Variant
  Dim var_4EC As Variant
  Dim var_4FC As Variant
  Dim var_50C As Variant
  Dim var_51C As Variant
  Dim var_54C As Variant
  Dim var_55C As Variant
  Dim var_58C As Variant
  Dim var_5CC As Variant
  Dim var_5DC As Variant
  Dim var_5EC As Variant
  Dim var_60C As Variant
  Dim var_61C As Variant
  Dim var_62C As Variant
  Dim var_63C As Variant
  Dim var_65C As Variant
  Dim var_66C As Variant
  Dim var_6AC As Variant
  Dim var_714 As Variant
  Dim var_724 As Variant
  Dim var_83C As Variant
  Dim var_84C As Variant
  Dim var_884 As Variant
  Dim var_8B4 As Variant
  Dim var_8F0 As Variant
  Dim var_910 As Variant
  Dim var_93C As Variant
  Dim var_9F0 As Variant
  Dim var_A2C As Variant
  Dim var_A3C As Variant
  Dim var_BB4 As Variant
  Dim var_BF4 As Variant
  Dim var_D0C As Variant
  Dim var_27C As Variant
  Dim var_390 As TextBox
  Dim var_41C As Variant
  Dim var_420 As MSHFlexGrid
  Dim var_42C As MSHFlexGrid
  Dim var_434 As Variant
  Dim var_6E0 As Variant
  Dim var_6E8 As MSHFlexGrid
  Dim var_6F4 As MSHFlexGrid
  Dim var_DBC As Variant
  Dim var_E34 As Variant
  Dim var_6FC As Variant
  Dim var_E78 As Variant
  Dim var_E98 As Variant
  Dim var_1058 As Double
  Dim var_748 As MSHFlexGrid
  Dim var_1060 As Double
  Dim var_74C As MSHFlexGrid
  Dim var_260 As String
  Dim var_2D0 As String
  Dim var_43C As String
  Dim var_6F0 As String
  Dim var_91C As String
  Dim var_A0C As String
  Dim var_76C As Variant
  Dim var_81C As Variant
  Dim var_9D0 As Variant
  Dim var_324 As Label
  Dim var_88 As Recordset15
  loc_1A1B2E0: On Error Goto loc_1A1E574
  loc_1A1B2EE: Set var_180 = Me.Txt
  loc_1A1B2F4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1A1B31D: If (Proc_6_27_EA61EC(var_184, "Voucher Date") = 0) Then
  loc_1A1B320:   Exit Sub
  loc_1A1B321: End If
  loc_1A1B32C: Set var_180 = Me.Txt
  loc_1A1B332: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_184)
  loc_1A1B35B: If (Proc_6_27_EA61EC(var_184, "Voucher No") = 0) Then
  loc_1A1B35E:   Exit Sub
  loc_1A1B35F: End If
  loc_1A1B36A: Set var_180 = Me.Txt
  loc_1A1B370: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_184)
  loc_1A1B399: If (Proc_6_27_EA61EC(var_184, "Party name") = 0) Then
  loc_1A1B39C:   Exit Sub
  loc_1A1B39D: End If
  loc_1A1B3A8: Set var_180 = Me.Txt
  loc_1A1B3AE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_184)
  loc_1A1B3BF: Set var_188 = var_184
  loc_1A1B3D7: If (Proc_6_27_EA61EC(var_188, "Booking No") = 0) Then
  loc_1A1B3DA:   Exit Sub
  loc_1A1B3DB: End If
  loc_1A1B3E2: Set var_180 = Me.TxtGt
  loc_1A1B3E8: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_18E)
  loc_1A1B3FA: Set var_184 = Me.TxtGt
  loc_1A1B400: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_18E, var_188)
  loc_1A1B426: If (CDbl(Val(var_188.Text)) > CDbl(0)) Then
  loc_1A1B429:   var_1A0 = 1
  loc_1A1B432:   var_1C0 = 1
  loc_1A1B450:   var_1F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A1B456:   var_200 = Trim(var_1F0)
  loc_1A1B472:   If (var_200 = vbNullString) Then
  loc_1A1B48E:     MsgBox("Fill Item Name ", 0, var_1F0, var_200, var_220)
  loc_1A1B4B1:     Me.FGrid.Row = 1
  loc_1A1B4BD:     Set var_180 = Me.FGrid
  loc_1A1B4E1:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1A1B4E9:     Exit Sub
  loc_1A1B4EA:   End If
  loc_1A1B4EA:   var_1A0 = 1
  loc_1A1B4F3:   var_1C0 = 3
  loc_1A1B511:   var_1F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A1B517:   var_200 = Trim(var_1F0)
  loc_1A1B533:   If (var_200 = vbNullString) Then
  loc_1A1B54F:     MsgBox("Item Detail Required ", 0, var_1F0, var_200, var_220)
  loc_1A1B572:     Me.FGrid.Row = 1
  loc_1A1B57E:     Set var_180 = Me.FGrid
  loc_1A1B5A2:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1A1B5AA:     Exit Sub
  loc_1A1B5AB:   End If
  loc_1A1B5AB: End If
  loc_1A1B5D0: For var_224 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_224 'Integer
  loc_1A1B5DA:   var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1B5E2:   var_1C0 = CVar(CLng(7)) 'Long
  loc_1A1B612:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1A1B619:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1B621:     var_1C0 = CVar(CLng(5)) 'Long
  loc_1A1B64D:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1A1B65C:   Else
  loc_1A1B660:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1B668:     var_1C0 = CVar(CLng(8)) 'Long
  loc_1A1B677:     var_1E0 = Me.FGrid.TextMatrix)
  loc_1A1B682:     var_18C = CStr(var_1E0)
  loc_1A1B694:     var_AC = (var_AC + Val(var_18C))
  loc_1A1B6A0:   End If
  loc_1A1B6A3: Next var_224 'Integer
  loc_1A1B6B4: Set var_180 = Me.TxtGt
  loc_1A1B6BA: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_18E, var_92)
  loc_1A1B6C5: For var_230 =  To var_18E: 1 = var_230 'Integer
  loc_1A1B6F7:   Set var_180 = Me.LblCap
  loc_1A1B6FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_1E0, -1)
  loc_1A1B72F:   unk_56AA2C.Execute var_244 & var_18C & "' And V_Type='" & global_132 & "'", 0, var_248
  loc_1A1B73F:    = var_244.Item()
  loc_1A1B747:    = var_248.Value
  loc_1A1B77B:   var_24C = Proc_6_38_E69628(var_184.Tag.Fields)
  loc_1A1B786:   If (var_24C = "Addition") Then
  loc_1A1B796:     Set var_180 = Me.TxtGt
  loc_1A1B79C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184)
  loc_1A1B7A4:     var_18C = var_184.Text
  loc_1A1B7BB:     var_B4 = (var_B4 + Val(var_18C))
  loc_1A1B7D5:     Set var_180 = Me.TxtPer
  loc_1A1B7DB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C)
  loc_1A1B7E3:     var_B4 = var_184.Text
  loc_1A1B7FA:     var_CC = (var_CC + Val(var_18C))
  loc_1A1B80A:   Else
  loc_1A1B812:     If (var_24C = "Deduction") Then
  loc_1A1B822:       Set var_180 = Me.TxtGt
  loc_1A1B828:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C)
  loc_1A1B830:       var_CC = var_184.Text
  loc_1A1B847:       var_BC = (var_BC + Val(var_18C))
  loc_1A1B861:       Set var_180 = Me.TxtPer
  loc_1A1B867:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_BC)
  loc_1A1B86F:       var_22C = var_184.Text
  loc_1A1B886:       var_C4 = (var_C4 + Val(var_18C))
  loc_1A1B896:     Else
  loc_1A1B89E:       If (var_24C = "Discount") Then
  loc_1A1B8AE:         Set var_180 = Me.TxtGt
  loc_1A1B8B4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_C4)
  loc_1A1B8BC:         var_22C = var_184.Text
  loc_1A1B8D3:         var_DC = (var_DC + Val(var_18C))
  loc_1A1B8ED:         Set var_180 = Me.TxtPer
  loc_1A1B8F3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_DC)
  loc_1A1B8FB:         var_22C = var_184.Text
  loc_1A1B912:         var_E4 = (var_E4 + Val(var_18C))
  loc_1A1B922:       Else
  loc_1A1B92A:         If (var_24C = "Luxury Tax") Then
  loc_1A1B93A:           Set var_180 = Me.TxtGt
  loc_1A1B940:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_E4)
  loc_1A1B948:           var_22C = var_184.Text
  loc_1A1B95F:           var_FC = (var_FC + Val(var_18C))
  loc_1A1B979:           Set var_180 = Me.TxtPer
  loc_1A1B97F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_FC)
  loc_1A1B987:           var_22C = var_184.Text
  loc_1A1B99E:           var_D4 = (var_D4 + Val(var_18C))
  loc_1A1B9AE:         Else
  loc_1A1B9B6:           If (var_24C = "Round Off") Then
  loc_1A1B9C6:             Set var_180 = Me.TxtGt
  loc_1A1B9CC:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_D4)
  loc_1A1B9D4:             var_22C = var_184.Text
  loc_1A1B9EB:             var_EC = (var_EC + Val(var_18C))
  loc_1A1BA05:             Set var_180 = Me.TxtPer
  loc_1A1BA0B:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_EC)
  loc_1A1BA13:             var_22C = var_184.Text
  loc_1A1BA2A:             var_F4 = (var_F4 + Val(var_18C))
  loc_1A1BA3A:           Else
  loc_1A1BA42:             If (var_24C = "Sale Tax") Then
  loc_1A1BA52:               Set var_180 = Me.TxtGt
  loc_1A1BA58:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_F4)
  loc_1A1BA60:               var_22C = var_184.Text
  loc_1A1BA77:               var_FC = (var_FC + Val(var_18C))
  loc_1A1BA91:               Set var_180 = Me.TxtPer
  loc_1A1BA97:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_FC)
  loc_1A1BA9F:               var_22C = var_184.Text
  loc_1A1BAB6:               var_D4 = (var_D4 + Val(var_18C))
  loc_1A1BAC6:             Else
  loc_1A1BACE:               If (var_24C = "Service Charge") Then
  loc_1A1BADE:                 Set var_180 = Me.TxtGt
  loc_1A1BAE4:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_D4)
  loc_1A1BAEC:                 var_22C = var_184.Text
  loc_1A1BB03:                 var_104 = (var_104 + Val(var_18C))
  loc_1A1BB1D:                 Set var_180 = Me.TxtPer
  loc_1A1BB23:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_104)
  loc_1A1BB2B:                 var_22C = var_184.Text
  loc_1A1BB42:                 var_10C = (var_10C + Val(var_18C))
  loc_1A1BB52:               Else
  loc_1A1BB5A:                 If (var_24C = "Service Tax") Then
  loc_1A1BB6A:                   Set var_180 = Me.TxtGt
  loc_1A1BB70:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_10C)
  loc_1A1BB78:                   var_22C = var_184.Text
  loc_1A1BB8F:                   var_FC = (var_FC + Val(var_18C))
  loc_1A1BBA9:                   Set var_180 = Me.TxtPer
  loc_1A1BBAF:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_FC)
  loc_1A1BBB7:                   var_22C = var_184.Text
  loc_1A1BBCE:                   var_D4 = (var_D4 + Val(var_18C))
  loc_1A1BBDB:                   GoTo loc_1A1BBDE
  loc_1A1BBDE:                   ' Referenced from:               1A1BBDB
  loc_1A1BBDE:                 End If
  loc_1A1BBDE:               End If
  loc_1A1BBDE:             End If
  loc_1A1BBDE:           End If
  loc_1A1BBDE:         End If
  loc_1A1BBDE:       End If
  loc_1A1BBDE:     End If
  loc_1A1BBDE:   End If
  loc_1A1BBE1: Next var_230 'Integer
  loc_1A1BBF2: Set var_180 = Me.TextGt
  loc_1A1BBF8: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_18E, var_92)
  loc_1A1BC03: For var_250 =  To var_18E: 1 = var_250 'Integer
  loc_1A1BC35:   Set var_180 = Me.LableCap
  loc_1A1BC3B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_1E0, -1)
  loc_1A1BC43:   var_188 = var_184.Tag
  loc_1A1BC6D:   unk_56AA2C.Execute var_244 & var_18C & "' And V_Type='" & global_132 & "'", 0, var_248
  loc_1A1BC7D:    = var_244.Item()
  loc_1A1BC85:    = var_248.Value
  loc_1A1BCB9:   var_254 = Proc_6_38_E69628(var_188.Fields)
  loc_1A1BCC4:   If (var_254 = "Addition") Then
  loc_1A1BCD4:     Set var_180 = Me.TextGt
  loc_1A1BCDA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184)
  loc_1A1BCE2:     var_18C = var_184.Text
  loc_1A1BCF9:     var_124 = (var_124 + Val(var_18C))
  loc_1A1BD13:     Set var_180 = Me.TextPer
  loc_1A1BD19:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C)
  loc_1A1BD21:     var_124 = var_184.Text
  loc_1A1BD38:     var_13C = (var_13C + Val(var_18C))
  loc_1A1BD48:   Else
  loc_1A1BD50:     If (var_254 = "Deduction") Then
  loc_1A1BD60:       Set var_180 = Me.TextGt
  loc_1A1BD66:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C)
  loc_1A1BD6E:       var_13C = var_184.Text
  loc_1A1BD85:       var_12C = (var_12C + Val(var_18C))
  loc_1A1BD9F:       Set var_180 = Me.TextPer
  loc_1A1BDA5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_12C)
  loc_1A1BDAD:       var_22C = var_184.Text
  loc_1A1BDC4:       var_134 = (var_134 + Val(var_18C))
  loc_1A1BDD4:     Else
  loc_1A1BDDC:       If (var_254 = "Discount") Then
  loc_1A1BDEC:         Set var_180 = Me.TextGt
  loc_1A1BDF2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_134)
  loc_1A1BDFA:         var_22C = var_184.Text
  loc_1A1BE11:         var_14C = (var_14C + Val(var_18C))
  loc_1A1BE2B:         Set var_180 = Me.TextPer
  loc_1A1BE31:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_14C)
  loc_1A1BE39:         var_22C = var_184.Text
  loc_1A1BE50:         var_154 = (var_154 + Val(var_18C))
  loc_1A1BE60:       Else
  loc_1A1BE68:         If (var_254 = "Luxury Tax") Then
  loc_1A1BE78:           Set var_180 = Me.TextGt
  loc_1A1BE7E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_154)
  loc_1A1BE86:           var_22C = var_184.Text
  loc_1A1BE9D:           var_16C = (var_16C + Val(var_18C))
  loc_1A1BEB7:           Set var_180 = Me.TextPer
  loc_1A1BEBD:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_16C)
  loc_1A1BEC5:           var_22C = var_184.Text
  loc_1A1BEDC:           var_144 = (var_144 + Val(var_18C))
  loc_1A1BEEC:         Else
  loc_1A1BEF4:           If (var_254 = "Round Off") Then
  loc_1A1BF04:             Set var_180 = Me.TextGt
  loc_1A1BF0A:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_144)
  loc_1A1BF12:             var_22C = var_184.Text
  loc_1A1BF29:             var_15C = (var_15C + Val(var_18C))
  loc_1A1BF43:             Set var_180 = Me.TextPer
  loc_1A1BF49:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_15C)
  loc_1A1BF51:             var_22C = var_184.Text
  loc_1A1BF68:             var_164 = (var_164 + Val(var_18C))
  loc_1A1BF78:           Else
  loc_1A1BF80:             If (var_254 = "Sale Tax") Then
  loc_1A1BF90:               Set var_180 = Me.TextGt
  loc_1A1BF96:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_164)
  loc_1A1BF9E:               var_22C = var_184.Text
  loc_1A1BFB5:               var_16C = (var_16C + Val(var_18C))
  loc_1A1BFCF:               Set var_180 = Me.TextPer
  loc_1A1BFD5:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_16C)
  loc_1A1BFDD:               var_22C = var_184.Text
  loc_1A1BFF4:               var_144 = (var_144 + Val(var_18C))
  loc_1A1C004:             Else
  loc_1A1C00C:               If (var_254 = "Service Charge") Then
  loc_1A1C01C:                 Set var_180 = Me.TextGt
  loc_1A1C022:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_144)
  loc_1A1C02A:                 var_22C = var_184.Text
  loc_1A1C041:                 var_174 = (var_174 + Val(var_18C))
  loc_1A1C05B:                 Set var_180 = Me.TextPer
  loc_1A1C061:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_174)
  loc_1A1C069:                 var_22C = var_184.Text
  loc_1A1C080:                 var_17C = (var_17C + Val(var_18C))
  loc_1A1C090:               Else
  loc_1A1C098:                 If (var_254 = "Service Tax") Then
  loc_1A1C0A8:                   Set var_180 = Me.TextGt
  loc_1A1C0AE:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_17C)
  loc_1A1C0B6:                   var_22C = var_184.Text
  loc_1A1C0CD:                   var_16C = (var_16C + Val(var_18C))
  loc_1A1C0E7:                   Set var_180 = Me.TextPer
  loc_1A1C0ED:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_184, var_18C, var_16C)
  loc_1A1C0F5:                   var_22C = var_184.Text
  loc_1A1C10C:                   var_144 = (var_144 + Val(var_18C))
  loc_1A1C119:                   GoTo loc_1A1C11C
  loc_1A1C11C:                   ' Referenced from:               1A1C119
  loc_1A1C11C:                 End If
  loc_1A1C11C:               End If
  loc_1A1C11C:             End If
  loc_1A1C11C:           End If
  loc_1A1C11C:         End If
  loc_1A1C11C:       End If
  loc_1A1C11C:     End If
  loc_1A1C11C:   End If
  loc_1A1C11F: Next var_250 'Integer
  loc_1A1C12B: If (var_16C <> CDbl(0)) Then
  loc_1A1C135:   Set var_180 = Me.TextGt
  loc_1A1C13B:   Call 0.Method_TopCtrl1_UnknownEvent_164 (var_18E)
  loc_1A1C14D:   Set var_184 = Me.TextGt
  loc_1A1C153:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_18E, var_188)
  loc_1A1C168:   var_22C = Val(var_188.Text)
  loc_1A1C172:   var_A4 = (var_A4 + var_22C)
  loc_1A1C181: End If
  loc_1A1C184: var_9C = vbNullString
  loc_1A1C18A: Call Proc_210_78_1132784(var_18E, var_A4)
  loc_1A1C195: If (var_18E = 0) Then
  loc_1A1C198:   Exit Sub
  loc_1A1C199: End If
  loc_1A1C1A4: Set var_180 = Me.TxtGrid
  loc_1A1C1AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_184)
  loc_1A1C1B2: var_184.Visible = False
  loc_1A1C1BE: Call Proc_210_81_F24D00(var_22C)
  loc_1A1C1D1: Set var_180 = Me.Txt
  loc_1A1C1D7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_184)
  loc_1A1C1FF: If (Proc_6_91_EF38D0(CDate(var_184.Text)) = 0) Then
  loc_1A1C20D:   Set var_180 = Me.Txt
  loc_1A1C213:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1A1C21B:   var_184.SetFocus
  loc_1A1C227:   Exit Sub
  loc_1A1C228: End If
  loc_1A1C22C: Set var_180 = Me.topCtrl1
  loc_1A1C232: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_184)
  loc_1A1C23A: var_18C = CStr()
  loc_1A1C24B: If (var_18C = "Add") Then
  loc_1A1C27B:   Set var_180 = Me.Txt
  loc_1A1C281:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Select Count(*) From HallSale1Est Where DocID='", var_1E0, -1)
  loc_1A1C289:   var_188 = var_184.Text
  loc_1A1C2A2:   unk_56AA2C.Execute var_244 & var_18C & "'", 0, var_248
  loc_1A1C2AA:   var_1F0 = var_188.Fields
  loc_1A1C2B2:    = var_244.Item()
  loc_1A1C2BA:    = var_248.Value
  loc_1A1C2E7:   If (var_1F0 > 0) Then
  loc_1A1C2F0:     Call Proc_210_84_11BF000(MemVar_1F95044)
  loc_1A1C303:     Set var_180 = Me.Txt
  loc_1A1C309:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_1A1C311:     var_184.Text = var_18C
  loc_1A1C320:     Exit Sub
  loc_1A1C321:   End If
  loc_1A1C324: Else
  loc_1A1C341:   var_184 = Me.Fields.Item("DocID")
  loc_1A1C349:   var_1E0 = var_184.Value
  loc_1A1C352:   var_18C = CStr(var_1E0)
  loc_1A1C358:   global_104 = var_18C
  loc_1A1C369: End If
  loc_1A1C36B: var_8A = &HFF
  loc_1A1C377: unk_56AA2C.BeginTrans var_258
  loc_1A1C39A: Set var_180 = Me.Txt
  loc_1A1C3A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Delete From SunTranEst Where DocID='", var_1E0)
  loc_1A1C3A8: -1 = var_184.Text
  loc_1A1C3C1: unk_56AA2C.Execute var_188 & var_18C & "'", var_8A, var_18C
  loc_1A1C3F9: Set var_180 = Me.Txt
  loc_1A1C3FF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Delete From SunTranHEst Where DocID='")
  loc_1A1C407: var_1E0 = var_184.Text
  loc_1A1C410: var_234 = -1 & var_18C
  loc_1A1C420: unk_56AA2C.Execute var_188 & var_18C & "'", var_188, 
  loc_1A1C458: Set var_180 = Me.Txt
  loc_1A1C45E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Delete From HallStockEst Where DocID='")
  loc_1A1C466: var_1E0 = var_184.Text
  loc_1A1C46F: var_234 = -1 & var_18C
  loc_1A1C47F: unk_56AA2C.Execute var_188 & var_18C & "'", var_188, 
  loc_1A1C4B7: Set var_180 = Me.Txt
  loc_1A1C4BD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "Delete From HallSale1Est Where DocID='")
  loc_1A1C4C5: var_1E0 = var_184.Text
  loc_1A1C4CE: var_234 = -1 & var_18C
  loc_1A1C4DE: unk_56AA2C.Execute var_188 & var_18C & "'", var_188, 
  loc_1A1C506: Set var_180 = Me.Txt
  loc_1A1C50C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_1A1C527: Set var_188 = Me.Txt
  loc_1A1C52D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_244)
  loc_1A1C542: var_22C = Val(var_244.Text)
  loc_1A1C550: Set var_248 = Me.Txt
  loc_1A1C556: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_27C)
  loc_1A1C565: Proc_6_7_F26918(var_1F0, CVar(var_27C))
  loc_1A1C578: Set var_290 = Me.Txt
  loc_1A1C57E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_294)
  loc_1A1C5AB: Set var_324 = Me.Txt
  loc_1A1C5B1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_328)
  loc_1A1C5CC: Set var_390 = Me.Txt
  loc_1A1C5D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_394)
  loc_1A1C5E6: Set var_41C = Me.TextGt
  loc_1A1C5EC: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_18E)
  loc_1A1C5FE: Set var_420 = Me.TextGt
  loc_1A1C604: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_18E, var_424)
  loc_1A1C619: var_DD8 = Val(var_424.Text)
  loc_1A1C623: Set var_42C = Me.TxtGt
  loc_1A1C629: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_42E, var_DD8)
  loc_1A1C63B: Set var_434 = Me.TxtGt
  loc_1A1C641: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_42E, var_438)
  loc_1A1C656: var_DE0 = Val(var_438.Text)
  loc_1A1C660: Set var_6E0 = Me.TextGt
  loc_1A1C666: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_6E2, var_DE0)
  loc_1A1C678: Set var_6E8 = Me.TextGt
  loc_1A1C67E: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_6E2, var_6EC)
  loc_1A1C693: var_DE8 = Val(var_6EC.Text)
  loc_1A1C69D: Set var_6F4 = Me.TxtGt
  loc_1A1C6A3: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_6F6, var_DE8)
  loc_1A1C6B5: Set var_6FC = Me.TxtGt
  loc_1A1C6BB: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_6F6, var_700)
  loc_1A1C6D0: var_DF0 = Val(var_700.Text)
  loc_1A1C6DE: Set var_748 = Me.Txt
  loc_1A1C6E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_74C)
  loc_1A1C6F3: Proc_6_7_F26918(var_76C, CVar(var_74C))
  loc_1A1C701: Set var_7A0 = Me.txtM
  loc_1A1C707: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_7A4)
  loc_1A1C70F: var_7B4 = var_7A4.defaultText
  loc_1A1C723: Set var_7F8 = Me.Txt
  loc_1A1C729: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_7FC, var_7B4)
  loc_1A1C738: Proc_6_7_F26918(var_81C, CVar(var_7FC))
  loc_1A1C746: Set var_850 = Me.txtM
  loc_1A1C74C: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_854)
  loc_1A1C754: var_864 = var_854.defaultText
  loc_1A1C76B: Set var_8C8 = Me.Txt
  loc_1A1C771: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_8CC, var_8D0)
  loc_1A1C78C: Set var_914 = Me.Txt
  loc_1A1C792: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_918, var_91C)
  loc_1A1C7AD: Set var_960 = Me.Txt
  loc_1A1C7B3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_964)
  loc_1A1C7C8: var_DF8 = Val(var_964.Text)
  loc_1A1C7D6: Set var_9AC = Me.Txt
  loc_1A1C7DC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_9B0)
  loc_1A1C7EB: Proc_6_7_F26918(var_9D0, CVar(var_9B0))
  loc_1A1C7FE: Set var_A04 = Me.Txt
  loc_1A1C804: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A08, var_A0C)
  loc_1A1C819: var_E00 = Val(var_A0C)
  loc_1A1C827: Set var_A50 = Me.Txt
  loc_1A1C82D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_A54)
  loc_1A1C854: Set var_AB8 = Me.Txt
  loc_1A1C85A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_ABC)
  loc_1A1C869: Proc_6_39_E7D3A0(var_ADC, CVar(var_ABC))
  loc_1A1C879: Set var_B10 = Me.Txt
  loc_1A1C87F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_B14)
  loc_1A1C88E: Proc_6_39_E7D3A0(var_B34, CVar(var_B14))
  loc_1A1C89A: Set var_B68 = Me.TextGt
  loc_1A1C8A0: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_B6A)
  loc_1A1C8AF: Set var_B70 = Me.TextGt
  loc_1A1C8B5: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B6A, var_B74)
  loc_1A1C8C4: Proc_6_39_E7D3A0(var_B94, CVar(var_B74))
  loc_1A1C8D4: Proc_6_7_F26918(var_C44, MemVar_1F950EC)
  loc_1A1C8DD: Set var_C78 = Me.topCtrl1
  loc_1A1C8E3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_22C)
  loc_1A1C906: var_C8C = CStr(var_C88)
  loc_1A1C928: Set var_D20 = Me.Txt
  loc_1A1C92E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_D24)
  loc_1A1C95D: var_238 = "Insert Into HallSale1Est(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code,BookDocId," & "Party,RestCode,Total," & "DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,RoundOff,AddAmt,DEDAMT,NetAmt,FrBookDate,FrBookTime,ToBookDate,ToBookTime,"
  loc_1A1C96B: var_240 = var_238 & "CrCardNo,CrCardHolder,RectNo,Rectdate,ADVANCE,Remarks,NoOfPax,RatePerPax,TotalPerCover," & "U_Name, U_EntDt, U_AE, Narration,LogSite_Code) "
  loc_1A1C972: var_25C = var_240 & " Values("
  loc_1A1C993: var_278 = var_25C & "'" & var_184.Text & "'," & CStr(var_22C)
  loc_1A1C9D9: var_310 = CVar(var_278 & ",") & var_1F0 & ",'" & CVar(var_294.Tag) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) 
  loc_1A1CA32: var_44C = CVar((var_DD8 + var_DE0)) 'Double
  loc_1A1CA3F: var_47C = var_310 & "','" & CVar(var_328.Tag) & "'," & "'" & CVar(var_394.Text) & "','" & CVar(global_56) & "'," & var_44C & "," 
  loc_1A1CA4A: var_48C = CVar((var_154 + var_E4)) 'Double
  loc_1A1CA62: var_4CC = CVar((var_14C + var_DC)) 'Double
  loc_1A1CA7A: var_50C = CVar((var_11C + var_AC)) 'Double
  loc_1A1CA92: var_54C = CVar((var_114 + var_A4)) 'Double
  loc_1A1CAAA: var_58C = CVar((var_16C + var_FC)) 'Double
  loc_1A1CAC2: var_5CC = CVar((var_174 + var_104)) 'Double
  loc_1A1CADA: var_60C = CVar((var_15C + var_EC)) 'Double
  loc_1A1CAF0: var_65C = var_47C & var_48C & "," & var_4CC & "," & var_50C & "," & var_54C & "," & var_58C & "," & var_5CC & "," & var_60C & "," & vbNullString 
  loc_1A1CAFB: var_66C = CVar((var_124 + var_B4)) 'Double
  loc_1A1CB13: var_6AC = CVar((var_12C + var_BC)) 'Double
  loc_1A1CB2B: var_714 = CVar((var_DE8 + var_918.Text)) 'Double
  loc_1A1CB77: var_884 = var_65C & var_66C & "," & var_6AC & "," & var_714 & "," & var_76C & ",'" & CVar(CStr(var_7B4)) & "'," & var_81C & ",'" & CVar(CStr(var_8CC.Text)) 
  loc_1A1CB93: var_8F0 = var_884 & "'," & "'" & CVar(var_8D0) 
  loc_1A1CBA6: var_93C = var_8F0 & "','" & CVar(var_91C) 
  loc_1A1CBDE: var_A2C = var_93C & "'," & CVar(var_A08.Text) & "," & var_9D0 & "," & CVar(var_E00) 
  loc_1A1CC27: var_BC4 = var_A2C & ",'" & Trim(CVar(Proc_6_38_E69628(CVar(var_A54), var_E00))) & "'," & var_ADC & "," & var_B34 & "," & var_B94 & "," 
  loc_1A1CC6D: var_D48 = var_BC4 & "'" & CVar(MemVar_1F950C8) & "'," & var_C44 & ",'" & IIf((var_C8C = "Add"), "A", "E") & "','" & CVar(var_D24.Text) 
  loc_1A1CC97: unk_56AA2C.Execute CStr(var_D48 & "','" & CVar(MemVar_1F95078) & "')"), var_DCC, -1
  loc_1A1CE34: For var_E04 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_E04 'Integer
  loc_1A1CE3E:   var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1CE46:   var_1C0 = CVar(CLng(1)) 'Long
  loc_1A1CE66:   var_200 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A1CE8D:   Set var_184 = Me.FGrid
  loc_1A1CECC:   If CBool(CVar(CLng(3)) And (CDbl(Val(CStr(var_184.TextMatrix)))) <> CDbl(0))) Then
  loc_1A1CEDD:     Set var_180 = Me.Txt
  loc_1A1CEE3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_25C, CVar(CLng(var_92)), (var_200 <> vbNullString))
  loc_1A1CEEB:     var_1C0 = var_184.Text
  loc_1A1CEF4:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1A1CF1E:     var_22C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A1CF2F:     Set var_244 = Me.Txt
  loc_1A1CF35:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_248, var_278, var_22C, CVar(CLng(0)))
  loc_1A1CF3D:     var_1A0 = var_248.Tag
  loc_1A1CF49:     Set var_27C = Me.LblVPrefix
  loc_1A1CF62:     Set var_290 = Me.Txt
  loc_1A1CF68:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_294, var_8D0)
  loc_1A1CF70:     var_1A0 = var_294.Text
  loc_1A1CF7D:     var_DD8 = Val(var_8D0)
  loc_1A1CF8B:     Set var_2CC = Me.Txt
  loc_1A1CF91:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_324, var_DD8)
  loc_1A1CF99:     var_1F0 = CVar(var_324) 'Address
  loc_1A1CFA0:     Proc_6_7_F26918(var_200, var_1F0)
  loc_1A1CFB3:     Set var_328 = Me.Txt
  loc_1A1CFB9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_390, var_C8C)
  loc_1A1CFC1:     1 = var_390.Tag
  loc_1A1CFD4:     Set var_394 = Me.Txt
  loc_1A1CFDA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_41C)
  loc_1A1CFEB:     var_3E8 = CVar(CLng(var_92)) 'Long
  loc_1A1CFF3:     var_44C = CVar(CLng(9)) 'Long
  loc_1A1D012:     var_4AC = CVar(CLng(var_92)) 'Long
  loc_1A1D01A:     var_4EC = CVar(CLng(&HD)) 'Long
  loc_1A1D023:     Set var_424 = Me.FGrid
  loc_1A1D039:     var_54C = CVar(CLng(var_92)) 'Long
  loc_1A1D041:     var_58C = CVar(CLng(&HE)) 'Long
  loc_1A1D060:     var_5EC = CVar(CLng(var_92)) 'Long
  loc_1A1D068:     var_62C = CVar(CLng(&HA)) 'Long
  loc_1A1D071:     Set var_434 = Me.FGrid
  loc_1A1D087:     var_6AC = CVar(CLng(var_92)) 'Long
  loc_1A1D08F:     var_714 = CVar(CLng(3)) 'Long
  loc_1A1D09E:     var_55C = Me.FGrid.TextMatrix)
  loc_1A1D0B8:     var_83C = CVar(CLng(var_92)) 'Long
  loc_1A1D0C0:     var_8B4 = CVar(CLng(4)) 'Long
  loc_1A1D0C9:     Set var_6E0 = Me.FGrid
  loc_1A1D0E9:     var_9F0 = CVar(CLng(var_92)) 'Long
  loc_1A1D0F1:     var_A3C = CVar(CLng(5)) 'Long
  loc_1A1D100:     var_63C = Me.FGrid.TextMatrix)
  loc_1A1D11A:     var_BB4 = CVar(CLng(var_92)) 'Long
  loc_1A1D122:     var_BF4 = CVar(CLng(6)) 'Long
  loc_1A1D12B:     Set var_6EC = Me.FGrid
  loc_1A1D14B:     var_CAC = CVar(CLng(var_92)) 'Long
  loc_1A1D153:     var_D0C = CVar(CLng(7)) 'Long
  loc_1A1D17C:     var_DBC = CVar(CLng(var_92)) 'Long
  loc_1A1D184:     var_E34 = CVar(CLng(&HB)) 'Long
  loc_1A1D18D:     Set var_6FC = Me.FGrid
  loc_1A1D1AD:     var_E78 = CVar(CLng(var_92)) 'Long
  loc_1A1D1B5:     var_E98 = CVar(CLng(&HC)) 'Long
  loc_1A1D1D7:     var_1058 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A1D208:     var_1060 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A1D220:     Set var_74C = Me.FGrid
  loc_1A1D226:     var_84C = var_74C.TextMatrix)
  loc_1A1D23D:     Proc_6_7_F26918(var_8F0, MemVar_1F950EC, var_84C, CVar(CLng(2)), CVar(CLng(var_92)), var_1060, CVar(CLng(8)), CVar(CLng(var_92)))
  loc_1A1D246:     Set var_7A0 = Me.topCtrl1
  loc_1A1D24C:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1058)
  loc_1A1D2A5:     var_238 = "Insert Into HallStockEst(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,Party,Item,DiscApp,RoundOff," & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,Remarks,"
  loc_1A1D2E2:     var_2D0 = var_238 & "U_Name,U_EntDt,U_AE,LogSite_Code) " & "Values(" & "'" & var_25C & "'," & CStr(var_22C) & ",'" & var_278
  loc_1A1D2F7:     var_43C = var_2D0 & "','" & var_27C.Caption & "','"
  loc_1A1D2FE:     var_6F0 = var_43C & MemVar_1F95070
  loc_1A1D354:     var_310 = CVar(var_6F0 & "'," & vbNullString & CStr(var_DD8) & ",") & var_200 & ",'" & CVar(var_C8C) & "','" & CVar(var_41C.Text) & "'," 
  loc_1A1D390:     var_47C = var_310 & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_424.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1A1D3A4:     var_4FC = var_47C & "','" & CVar(CStr(var_434.TextMatrix))) 
  loc_1A1D3E7:     var_61C = var_4FC & "'," & vbNullString & CVar(Val(CStr(var_55C))) & "," & CVar(Val(CStr(var_6E0.TextMatrix)))) & "," & vbNullString 
  loc_1A1D423:     var_75C = var_61C & CVar(Val(CStr(var_63C))) & "," & CVar(Val(CStr(var_6EC.TextMatrix)))) & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1A1D440:     var_7B4 = var_75C & "," & CVar(Val(CStr(var_6FC.TextMatrix)))) & "," 
  loc_1A1D49F:     var_910 = var_7B4 & CVar(var_1058) & "," & CVar(var_1060) & ",'" & CVar(CStr(var_84C)) & "'," & "'" & CVar(MemVar_1F950C8) & "'," & var_8F0 
  loc_1A1D4D9:     unk_56AA2C.Execute CStr(var_910 & ",'" & IIf((CStr(var_93C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_A2C, -1
  loc_1A1D5FD:   End If
  loc_1A1D600: Next var_E04 'Integer
  loc_1A1D611: Set var_180 = Me.TxtGt
  loc_1A1D617: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_18E, var_92)
  loc_1A1D622: For var_1064 =  To var_18E: 1 = var_1064 'Integer
  loc_1A1D636:   Set var_180 = Me.Txt
  loc_1A1D63C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_1A1D657:   Set var_188 = Me.Txt
  loc_1A1D65D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_244)
  loc_1A1D678:   Set var_248 = Me.Txt
  loc_1A1D67E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_27C)
  loc_1A1D6A1:   Set var_290 = Me.Txt
  loc_1A1D6A7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_294)
  loc_1A1D6B6:   Proc_6_7_F26918(var_1F0, CVar(var_294))
  loc_1A1D6C8:   Set var_2CC = Me.LblCap
  loc_1A1D6CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_324)
  loc_1A1D6E8:   Set var_328 = Me.TxtPer
  loc_1A1D6EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_390)
  loc_1A1D703:   var_DD8 = Val(var_390.Tag)
  loc_1A1D713:   Set var_394 = Me.LblCap
  loc_1A1D719:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_41C, var_2D0)
  loc_1A1D733:   Set var_420 = Me.LblAt
  loc_1A1D739:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_424)
  loc_1A1D753:   Set var_42C = Me.TxtGt
  loc_1A1D759:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_434)
  loc_1A1D773:   Set var_438 = Me.TxtPer
  loc_1A1D779:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6E0)
  loc_1A1D78E:   var_DE0 = Val(var_6E0.Text)
  loc_1A1D79E:   Set var_6E8 = Me.TxtGt
  loc_1A1D7A4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6EC, var_43C)
  loc_1A1D7B9:   var_DE8 = Val(var_43C)
  loc_1A1D7C9:   Set var_6F4 = Me.LblDummy
  loc_1A1D7CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6FC, var_6F0)
  loc_1A1D7E4:   var_DF0 = Val(var_6F0)
  loc_1A1D7F2:   Proc_6_7_F26918(var_4FC, MemVar_1F950EC)
  loc_1A1D7FB:   Set var_700 = Me.topCtrl1
  loc_1A1D801:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_DF0)
  loc_1A1D843:   Set var_748 = Me.Txt
  loc_1A1D849:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_74C)
  loc_1A1D858:   Proc_6_7_F26918(var_63C, CVar(var_74C))
  loc_1A1D86A:   Set var_7A0 = Me.LblDummy
  loc_1A1D870:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7A4)
  loc_1A1D891:   var_234 = "Insert Into SunTranEst (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_184.Text
  loc_1A1D8E5:   var_2B8 = CVar(var_234 & "'," & CStr(var_92) & ",'" & var_244.Tag & "'," & CStr(Val(var_27C.Text)) & ",") & var_1F0 & ",'" & CVar(var_324.Tag) 
  loc_1A1D93B:   var_3B8 = var_2B8 & "'," & CVar(var_41C.Caption) & ",'" & CVar(var_2D0) & "','" & CVar(var_424.Tag) & "','" & CVar(var_434.Tag) & "'," 
  loc_1A1D991:   var_51C = var_3B8 & CVar(var_6EC.Text) & "," & CVar(var_6FC.Caption) & "," & CVar(var_DF0) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4FC 
  loc_1A1D9DA:   var_724 = var_51C & ",'" & IIf((CStr(var_55C) = "Add"), "A", "E") & "'," & var_63C & ",'" & CVar(var_7A4.Tag) & "','" & CVar(global_56) 
  loc_1A1DA17:   unk_56AA2C.Execute CStr(var_724 & "','N','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_7B4, -1
  loc_1A1DAEA: Next var_1064 'Integer
  loc_1A1DAFB: Set var_180 = Me.TextGt
  loc_1A1DB01: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_18E, var_92)
  loc_1A1DB0C: For var_1068 =  To var_18E: 1 = var_1068 'Integer
  loc_1A1DB20:   Set var_180 = Me.Txt
  loc_1A1DB26:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_1A1DB41:   Set var_188 = Me.Txt
  loc_1A1DB47:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_244)
  loc_1A1DB62:   Set var_248 = Me.Txt
  loc_1A1DB68:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_27C)
  loc_1A1DB8B:   Set var_290 = Me.Txt
  loc_1A1DB91:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_294)
  loc_1A1DBA0:   Proc_6_7_F26918(var_1F0, CVar(var_294))
  loc_1A1DBB2:   Set var_2CC = Me.LableCap
  loc_1A1DBB8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_324)
  loc_1A1DBD2:   Set var_328 = Me.TextPer
  loc_1A1DBD8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_390)
  loc_1A1DBED:   var_DD8 = Val(var_390.Tag)
  loc_1A1DBFD:   Set var_394 = Me.LableCap
  loc_1A1DC03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_41C, var_2D0)
  loc_1A1DC1D:   Set var_420 = Me.LableAt
  loc_1A1DC23:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_424)
  loc_1A1DC3D:   Set var_42C = Me.TextGt
  loc_1A1DC43:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_434)
  loc_1A1DC5D:   Set var_438 = Me.TextPer
  loc_1A1DC63:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6E0)
  loc_1A1DC78:   var_DE0 = Val(var_6E0.Text)
  loc_1A1DC88:   Set var_6E8 = Me.TextGt
  loc_1A1DC8E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6EC, var_43C)
  loc_1A1DCA3:   var_DE8 = Val(var_43C)
  loc_1A1DCB3:   Set var_6F4 = Me.LableDummy
  loc_1A1DCB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6FC, var_6F0)
  loc_1A1DCCE:   var_DF0 = Val(var_6F0)
  loc_1A1DCDC:   Proc_6_7_F26918(var_4FC, MemVar_1F950EC)
  loc_1A1DCE5:   Set var_700 = Me.topCtrl1
  loc_1A1DCEB:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_DF0)
  loc_1A1DD2D:   Set var_748 = Me.Txt
  loc_1A1DD33:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_74C)
  loc_1A1DD42:   Proc_6_7_F26918(var_63C, CVar(var_74C))
  loc_1A1DD54:   Set var_7A0 = Me.LableDummy
  loc_1A1DD5A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7A4)
  loc_1A1DD7B:   var_234 = "Insert Into SunTranHEst (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_184.Text
  loc_1A1DD8A:   var_23C = CStr(var_92)
  loc_1A1DD95:   var_260 = var_234 & "'," & var_23C & ",'"
  loc_1A1DDD8:   var_2C8 = CVar(var_260 & var_244.Tag & "'," & CStr(Val(var_27C.Text)) & ",") & var_1F0 & ",'" & CVar(var_324.Tag) & "'," 
  loc_1A1DE30:   var_3D8 = var_2C8 & CVar(var_41C.Caption) & ",'" & CVar(var_2D0) & "','" & CVar(var_424.Tag) & "','" & CVar(var_434.Tag) & "'," & CVar(var_6EC.Text) 
  loc_1A1DE8B:   var_5DC = var_3D8 & "," & CVar(var_6FC.Caption) & "," & CVar(var_DF0) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4FC & ",'" & IIf((CStr(var_55C) = "Add"), "A", "E") 
  loc_1A1DEE0:   var_76C = var_5DC & "'," & var_63C & ",'" & CVar(var_7A4.Tag) & "','" & CVar(global_56) & "','N','" & CVar(MemVar_1F95070) & "','" 
  loc_1A1DF01:   unk_56AA2C.Execute CStr(var_76C & CVar(MemVar_1F95078) & "')"), var_7B4, -1
  loc_1A1DFD4: Next var_1068 'Integer
  loc_1A1DFDD: Set var_180 = Me.topCtrl1
  loc_1A1DFE3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A1DFFC: If (CStr() = "Add") Then
  loc_1A1E013:   var_18C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1A1E039:   Set var_180 = Me.Txt
  loc_1A1E03F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_184, var_23C, var_18C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_1A1E047:   var_2A8 = var_184.Tag
  loc_1A1E050:   var_25C = -1 & var_23C
  loc_1A1E057:   var_200 = CVar(var_244.Tag & "' And VP.Date_From<=") 'String
  loc_1A1E068:   Set var_188 = Me.Txt
  loc_1A1E06E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_244, var_260)
  loc_1A1E076:   var_200 = var_244.Text
  loc_1A1E084:   Proc_6_7_F26918(var_1F0, CVar(var_260))
  loc_1A1E0A3:   unk_56AA2C.Execute CStr(var_248 & var_1F0 & " Order By VP.Date_From DESC"), , 
  loc_1A1E0AE:   Set var_88 = var_248
  loc_1A1E0E4:   var_258 = var_88.RecordCount
  loc_1A1E0F2:   If (var_258 > 0) Then
  loc_1A1E103:     Set var_180 = Me.Txt
  loc_1A1E109:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_184)
  loc_1A1E11E:     var_22C = Val(var_184.Text)
  loc_1A1E133:     var_188 = var_88.Fields
  loc_1A1E143:     var_1E0 = var_188.Item("V_Type").Value
  loc_1A1E16E:     Proc_6_7_F26918(var_2A8, CVar(var_88.Fields.Item("Date_From")))
  loc_1A1E193:     var_23C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_22C) & " Where (SITE_CODE='"
  loc_1A1E1BE:     var_220 = CVar(var_23C & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_1E0 & "' and Date_From=" 
  loc_1A1E1C5:     var_2B8 = var_220 & var_2A8 
  loc_1A1E1D3:     unk_56AA2C.Execute CStr(var_2B8), var_2C8, -1
  loc_1A1E20D:   End If
  loc_1A1E20D: End If
  loc_1A1E211: Set var_180 = Me.topCtrl1
  loc_1A1E217: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_290)
  loc_1A1E230: If (CStr(var_22C) = "Add") Then
  loc_1A1E256:   var_18C = "SELECT COUNT(*) FROM LASTVOU WHERE Logsite_Code='" & MemVar_1F95078
  loc_1A1E274:   Call 0.Method_arg_50 (var_23C, var_18C & "' and UNAME='" & MemVar_1F950C8 & "' AND ENAME='", var_1E0, -1, var_180)
  loc_1A1E284:   var_260 = var_184 & var_23C & "' "
  loc_1A1E28D:   unk_56AA2C.Execute var_260, 0, var_188
  loc_1A1E29D:    = var_184.Item()
  loc_1A1E2A5:    = var_188.Value
  loc_1A1E2D6:   If (var_180.Fields > 0) Then
  loc_1A1E2F7:     Set var_180 = Me.Txt
  loc_1A1E2FD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C, "UPDATE LASTVOU  SET DOCID='")
  loc_1A1E305:     var_1E0 = var_184.Text
  loc_1A1E30E:     var_234 = -1 & var_18C
  loc_1A1E323:     var_240 = var_18C & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "' and UNAME='"
  loc_1A1E33A:     Call 0.Method_arg_50 (var_260, var_240 & MemVar_1F950C8 & "' AND ENAME='")
  loc_1A1E353:     unk_56AA2C.Execute var_188 & var_260 & "'  ", , 
  loc_1A1E37E:   Else
  loc_1A1E392:     var_18C = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8
  loc_1A1E3A2:     Call 0.Method_arg_50 (var_18C & "' and UNAME='", var_18C & "','", var_2B8)
  loc_1A1E3AB:     var_23C = -1 & var_18C & "' and UNAME='"
  loc_1A1E3B2:     var_25C = var_18C & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "','"
  loc_1A1E3C3:     Set var_180 = Me.Txt
  loc_1A1E3C9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_240)
  loc_1A1E3D1:     var_25C = var_184.Text
  loc_1A1E3F5:     var_1A0 = MemVar_1F950EC
  loc_1A1E3FD:     Proc_6_7_F26918(var_1E0, var_1A0)
  loc_1A1E42F:     unk_56AA2C.Execute CStr(CVar(var_188 & var_240 & "','" & MemVar_1F95070 & "',") & var_1E0 & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1A1E465:   End If
  loc_1A1E465: End If
  loc_1A1E46B: unk_56AA2C.CommitTrans
  loc_1A1E472: var_8A = 0
  loc_1A1E47E: unk_56AA2C.BeginTrans var_258
  loc_1A1E485: var_8A = &HFF
  loc_1A1E48E: unk_56AA2C.CommitTrans
  loc_1A1E495: var_8A = 0
  loc_1A1E4A6: Set var_180 = Me.Txt
  loc_1A1E4AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184, var_18C)
  loc_1A1E4B4: var_8A = var_184.Text
  loc_1A1E4C8: var_8A = 0
  loc_1A1E4D6: Me.Requery -1
  loc_1A1E500: Me.Find "SearchCode ='" & "SearchCode ='" & var_18C & "'", 0, 1
  loc_1A1E510: Set var_180 = Me.topCtrl1
  loc_1A1E516: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A0)
  loc_1A1E52F: If (CStr(var_8A) = "Add") Then
  loc_1A1E532:   Call TopCtrl1_UnknownEvent_A()
  loc_1A1E537:   Exit Sub
  loc_1A1E538: End If
  loc_1A1E55B: Call Proc_210_80_1039288(Proc_5_1_100EC1C("INI", Me, global_80), var_8A)
  loc_1A1E566: Call Proc_210_77_18AF45C(var_8A)
  loc_1A1E570: Set var_88 = Nothing
  loc_1A1E573: Exit Sub
  loc_1A1E574: ' Referenced from: 1A1B2E0
  loc_1A1E57A: If (var_8A = &HFF) Then
  loc_1A1E583:   unk_56AA2C.RollbackTrans
  loc_1A1E588: End If
  loc_1A1E588: Proc_6_60_E63754()
  loc_1A1E58D: Exit Sub
End Sub

Private Sub TextPer_GotFocus(Index As Integer) 'ED1554
  'Data Table: 56AA0C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED14B6: Set var_88 = Me.TextPer
  loc_ED14BC: Call 0.Method_TextPer_GotFocus0 (Index)
  loc_ED14CA: Proc_6_74_E23240(var_8C)
  loc_ED14D6: Call Proc_210_81_F24D00(var_8C)
  loc_ED14EA: Set var_88 = Me.TextPer
  loc_ED14F0: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED14F8: var_8C.SelStart = 0
  loc_ED1511: Set var_88 = Me.TextPer
  loc_ED1517: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED1532: Set var_90 = Me.TextPer
  loc_ED1538: Call 0.Method_TextPer_GotFocus0 (Index, var_98)
  loc_ED1540: var_98.SelLength = Len(var_8C.Text)
  loc_ED1553: Exit Sub
End Sub

Private Sub TextPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B4B8
  'Data Table: 56AA0C
  loc_E5B485: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B48E:   Proc_6_75_E5335C(Shift)
  loc_E5B493: End If
  loc_E5B4A8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B4B1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5B4B6: End If
  loc_E5B4B6: Exit Sub
End Sub

Private Sub TextPer_KeyPress(KeyAscii As Integer) 'E57FB8
  'Data Table: 56AA0C
  loc_E57F8A: Set var_88 = Me.TextPer
  loc_E57F90: Call 0.Method_TextPer_KeyPress0 (KeyAscii)
  loc_E57FAB: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E57FB7: Exit Sub
End Sub

Private Sub TextPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E015B8
  'Data Table: 56AA0C
  loc_E015B2: Call Proc_210_89_14E1210(KeyCode)
  loc_E015B7: Exit Sub
End Sub

Private Sub TextPer_LostFocus(Index As Integer) 'E4C14C
  'Data Table: 56AA0C
  loc_E4C12A: Set var_88 = Me.TextPer
  loc_E4C130: Call 0.Method_TextPer_LostFocus0 (Index)
  loc_E4C13E: Proc_6_73_E23294(var_8C)
  loc_E4C14A: Exit Sub
End Sub

Private Sub Form_Load() '12CC834
  'Data Table: 56AA0C
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_56AA2C As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_DC As Variant
  Dim var_BC As Fields15
  loc_12CC1DC: On Error Goto loc_12CC82B
  loc_12CC1F4: If (global_56 = MemVar_1F95070 & "BANQ") Then
  loc_12CC1FD:   global_108 = "IBOOK"
  loc_12CC204: Else
  loc_12CC219:   If (global_56 = MemVar_1F95070 & "ODC") Then
  loc_12CC222:     global_108 = "OBOOK"
  loc_12CC226:   End If
  loc_12CC226: End If
  loc_12CC24D: unk_56AA2C.Execute "Select * from Depart where Code='" & global_56 & "'", var_B0, -1
  loc_12CC258: Set var_88 = var_B4
  loc_12CC27C: If (var_88.RecordCount > 0) Then
  loc_12CC296:   var_BC = var_88.Fields.Item("Name")
  loc_12CC2AE:   Set var_C0 = Me.LblRest
  loc_12CC2B4:   var_C0.Caption = Proc_6_38_E69628(CVar(var_BC))
  loc_12CC2C6: End If
  loc_12CC2D0: Set global_60 = New 
  loc_12CC2E2: Me.CursorLocation = 3
  loc_12CC30C: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where Site_Code='" & MemVar_1F95070 & "' And LogSite_Code='"
  loc_12CC335: Me.Open CVar(var_90 & MemVar_1F95078 & "' and NCAT in('ESBIL') and RestCode='" & global_56 & "' Order by Description"), CVar(MemVar_1F95044), 3
  loc_12CC353: CVarUnk
  loc_12CC358: VerifyVarObj
  loc_12CC35E: Set var_B4 = Me.DGVType
  loc_12CC364: LateIdStAd
  loc_12CC37C: Set global_72 = New 
  loc_12CC38E: Me.DGVType.CursorLocation = 3
  loc_12CC3B8: var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F95078 & "' and  H.RESTTYPE IN('Banquet') Order by H.Name") 'String
  loc_12CC3C2: Me.Open var_B0, CVar(MemVar_1F95044), 3
  loc_12CC3D6: CVarUnk
  loc_12CC3DB: VerifyVarObj
  loc_12CC3E1: Set var_B4 = Me.DGHall
  loc_12CC3E7: LateIdStAd
  loc_12CC3FF: Set global_68 = New 
  loc_12CC411: Me.DGHall.CursorLocation = 3
  loc_12CC421: If (global_108 = "IBOOK") Then
  loc_12CC442:   var_8C = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK WHERE LogSite_Code='" & MemVar_1F95078
  loc_12CC449:   var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F95078 & "' and VType='IBOOK' Order by pARTYName") 'String
  loc_12CC453:   Me.Open var_B0, CVar(MemVar_1F95044), 2
  loc_12CC461: Else
  loc_12CC47F:   var_8C = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK WHERE LogSite_Code='" & MemVar_1F95078
  loc_12CC486:   var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F95078 & "' and VType='OBOOK' Order by pARTYName") 'String
  loc_12CC490:   Me.Open var_B0, CVar(MemVar_1F95044), 2
  loc_12CC49B: End If
  loc_12CC4A4: CVarUnk
  loc_12CC4A9: VerifyVarObj
  loc_12CC4AF: Set var_B4 = Me.DGParty
  loc_12CC4B5: LateIdStAd
  loc_12CC4CD: Set global_80 = New 
  loc_12CC4DF: Me.DGParty.CursorLocation = 3
  loc_12CC4EF: Proc_6_7_F26918(var_B0, MemVar_1F950F4, var_B4, global_68, 3, -1, 3, -1)
  loc_12CC4FF: Proc_6_7_F26918(var_12C, MemVar_1F950FC, var_B4, global_72, 1)
  loc_12CC522: var_8C = "Select S.DocId as SearchCode,S.DocID,S.BookDocId,S.LogSite_Code,S.Site_Code From HallSale1Est S Inner JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE and S.LogSite_Code=V.LogSite_Code) WHERE S.LogSite_Code='" & MemVar_1F95078
  loc_12CC529: var_90 = var_8C & "' and V.NCAT IN ('ESBIL') and V.RestCode='"
  loc_12CC53A: var_DC = CVar(var_90 & global_56 & "' AND S.VDate between ") 'String
  loc_12CC564: Me.Open var_DC & var_B0 & " and " & var_12C & " Order by S.Docid", CVar(MemVar_1F95044), 3
  loc_12CC5B6: Call 0.Method_arg_50 (var_90, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_B0, -1, var_B4, var_BC, 0, var_C0)
  loc_12CC5DD: unk_56AA2C.Execute var_DC & var_90 & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_12CC5E5: -1 = var_B4.Fields
  loc_12CC5ED: global_60 = var_BC.Item(var_B4)
  loc_12CC5F5: 1 = var_C0.Value
  loc_12CC626: If (var_DC > 0) Then
  loc_12CC66F:   Call 0.Method_arg_50 (var_90, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_B0, -1, var_B4, var_BC, 0)
  loc_12CC696:   unk_56AA2C.Execute var_C0 & var_90 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_DC, "SearchCode='"
  loc_12CC69E:   0 = var_B4.Fields
  loc_12CC6A6:   var_16C = var_BC.Item(1)
  loc_12CC6AE:    = var_C0.Value
  loc_12CC6CD:   Me.Find CStr(var_DC & "'"), , 
  loc_12CC6F9: End If
  loc_12CC710: If (Me.RecordCount > 0) Then
  loc_12CC727:   If (Me.EOF = &HFF) Then
  loc_12CC730:     Me.MoveLast
  loc_12CC735:   End If
  loc_12CC735: End If
  loc_12CC73E: Call 0.Method_arg_160 (var_B4)
  loc_12CC74C: Call 0.Method_arg_164 (var_B4)
  loc_12CC777: Call Proc_210_80_1039288(Proc_5_1_100EC1C("INI", Me))
  loc_12CC789: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12CC7A1: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12CC7BC: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12CC7D3: Me.LblUser.Left = CDbl(13500)
  loc_12CC7EA: Me.LblUser.Top = CDbl(7800)
  loc_12CC801: Me.LblLDt.Top = CDbl(8160)
  loc_12CC818: Me.LblLDt.Left = CDbl(13500)
  loc_12CC820: Call Proc_210_74_1474930(global_80)
  loc_12CC825: Call Proc_210_77_18AF45C()
  loc_12CC82A: Exit Sub
  loc_12CC82B: ' Referenced from: 12CC1DC
  loc_12CC82B: Proc_6_60_E63754()
  loc_12CC830: Exit Sub
End Sub

Private Sub Form_Resize() 'ED55F8
  'Data Table: 56AA0C
  Dim var_8C As Label
  loc_ED5556: Call 0.Method_arg_50 (var_88)
  loc_ED5568: Me.LblFormCaption.Caption = var_88
  loc_ED5581: Me.LblFormCaption.Left = CDbl(0)
  loc_ED558D: Set var_A0 = Me.topCtrl1
  loc_ED5593: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED55A0: Set var_8C = Me.topCtrl1
  loc_ED55A6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED55C0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED55DB: Call 0.Method_arg_100 (var_B8)
  loc_ED55ED: Me.LblFormCaption.Width = var_B8
  loc_ED55F5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7BA20
  'Data Table: 56AA0C
  loc_E7B9C7: Set global_72 = Nothing
  loc_E7B9D9: Set global_64 = Nothing
  loc_E7B9EB: Set global_84 = Nothing
  loc_E7B9FD: Set global_88 = Nothing
  loc_E7BA0F: Set global_76 = Nothing
  loc_E7BA1B: global_52 = 0
  loc_E7BA1E: Exit Sub
End Sub

Private Sub Form_Activate() 'FC761C
  'Data Table: 56AA0C
  Dim var_90 As String
  Dim unk_56AA2C As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_CC As Integer
  Dim var_120 As Field20
  loc_FC749A: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE NCAT='BBILL' AND RestCode='" & global_56 & "' Order by Description"
  loc_FC74A3: unk_56AA2C.Execute var_90, var_B0, -1
  loc_FC74AE: Set var_88 = var_B4
  loc_FC74D2: If (var_88.RecordCount > 0) Then
  loc_FC74EF:   var_BC = var_88.Fields.Item(0)
  loc_FC7506:   global_132 = CStr(var_BC.Value)
  loc_FC751A: Else
  loc_FC752D:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_FC7533:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_FC7550:   Me.Global.Unload Me
  loc_FC7558:   Exit Sub
  loc_FC7559: End If
  loc_FC755F: var_CC = 0
  loc_FC758F: unk_56AA2C.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_132 & "'", var_B0, -1
  loc_FC7597: var_B4 = var_B4.Fields
  loc_FC759F: var_CC = var_BC.Item(var_BC)
  loc_FC75A7: var_120 = var_120.Value
  loc_FC75CE: If (var_DC <= 0) Then
  loc_FC75EA:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_FC7607:   Me.Global.Unload Me
  loc_FC760F:   Exit Sub
  loc_FC7610: End If
  loc_FC7615: Set var_88 = Nothing
  loc_FC7618: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26F9C
  'Data Table: 56AA0C
  loc_E26F81: If (global_52 = &HFF) Then
  loc_E26F91:   Me.Global.Unload Me
  loc_E26F99: End If
  loc_E26F99: Exit Sub
  loc_E26F9A:  = Record Of var_6C00 'Copy battery of vars to single variable
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E339C8
  'Data Table: 56AA0C
  loc_E3399C: On Error Goto loc_E339C0
  loc_E339B7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E339BF: Exit Sub
  loc_E339C0: ' Referenced from: E3399C
  loc_E339C0: Proc_6_60_E63754(Shift)
  loc_E339C5: Exit Sub
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E27BE4
  'Data Table: 56AA0C
  loc_E27BC5: If ((Button = 2) And (Shift = 2)) Then
  loc_E27BDB:   Call 0.Method_arg_2B0 (1)
  loc_E27BE0: End If
  loc_E27BE0: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E51638
  'Data Table: 56AA0C
  loc_E51612: Set var_88 = Me.txtM
  loc_E51618: Call 0.Method_txtM_UnknownEvent_00 (Button)
  loc_E51626: Proc_6_74_E23240(var_8C)
  loc_E51632: Call Proc_210_81_F24D00(var_8C)
  loc_E51637: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4C904
  'Data Table: 56AA0C
  loc_E4C8E2: Set var_88 = Me.txtM
  loc_E4C8E8: Call 0.Method_txtM_UnknownEvent_10 (Button)
  loc_E4C8F6: Proc_6_73_E23294(var_8C)
  loc_E4C902: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E553B8
  'Data Table: 56AA0C
  Dim Shift As Integer
  loc_E5538E: Set var_88 = Me.txtM
  loc_E55394: Call 0.Method_txtM_UnknownEvent_80 (Button)
  loc_E553AE: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E553B3:   Shift = &HFF
  loc_E553B6: End If
  loc_E553B6: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E5FCCC
  'Data Table: 56AA0C
  loc_E5FC86: If (CLng(Shift) = &H1B) Then
  loc_E5FC89:   Call Proc_210_81_F24D00()
  loc_E5FC8E:   Exit Sub
  loc_E5FC8F: End If
  loc_E5FCA4: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5FCAD:   Proc_6_75_E5335C(Shift)
  loc_E5FCB2: End If
  loc_E5FCBC: If (CLng(Shift) = &H26) Then
  loc_E5FCC5:   Proc_6_76_E533C8(Shift, X)
  loc_E5FCCA: End If
  loc_E5FCCA: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ED1640
  'Data Table: 56AA0C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED15A2: Set var_88 = Me.TxtGt
  loc_ED15A8: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ED15B6: Proc_6_74_E23240(var_8C)
  loc_ED15C2: Call Proc_210_81_F24D00(var_8C)
  loc_ED15D6: Set var_88 = Me.TxtGt
  loc_ED15DC: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED15E4: var_8C.SelStart = 0
  loc_ED15FD: Set var_88 = Me.TxtGt
  loc_ED1603: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED161E: Set var_90 = Me.TxtGt
  loc_ED1624: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ED162C: var_98.SelLength = Len(var_8C.Text)
  loc_ED163F: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B260
  'Data Table: 56AA0C
  loc_E5B22D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B236:   Proc_6_75_E5335C(Shift)
  loc_E5B23B: End If
  loc_E5B250: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B259:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5B25E: End If
  loc_E5B25E: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E57804
  'Data Table: 56AA0C
  loc_E577D6: Set var_88 = Me.TxtGt
  loc_E577DC: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E577F7: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E57803: Exit Sub
End Sub

Private Sub TxtGt_KeyUp(KeyCode As Integer, Shift As Integer) 'E01CC0
  'Data Table: 56AA0C
  loc_E01CBA: Call Proc_210_88_1677324(KeyCode)
  loc_E01CBF: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4C694
  'Data Table: 56AA0C
  loc_E4C672: Set var_88 = Me.TxtGt
  loc_E4C678: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4C686: Proc_6_73_E23294(var_8C)
  loc_E4C692: Exit Sub
End Sub

Private Sub TextGt_GotFocus(Index As Integer) 'ED137C
  'Data Table: 56AA0C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED12DE: Set var_88 = Me.TextGt
  loc_ED12E4: Call 0.Method_TextGt_GotFocus0 (Index)
  loc_ED12F2: Proc_6_74_E23240(var_8C)
  loc_ED12FE: Call Proc_210_81_F24D00(var_8C)
  loc_ED1312: Set var_88 = Me.TextGt
  loc_ED1318: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ED1320: var_8C.SelStart = 0
  loc_ED1339: Set var_88 = Me.TextGt
  loc_ED133F: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ED135A: Set var_90 = Me.TextGt
  loc_ED1360: Call 0.Method_TextGt_GotFocus0 (Index, var_98)
  loc_ED1368: var_98.SelLength = Len(var_8C.Text)
  loc_ED137B: Exit Sub
End Sub

Private Sub TextGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B440
  'Data Table: 56AA0C
  loc_E5B40D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B416:   Proc_6_75_E5335C(Shift)
  loc_E5B41B: End If
  loc_E5B430: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B439:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5B43E: End If
  loc_E5B43E: Exit Sub
End Sub

Private Sub TextGt_KeyPress(KeyAscii As Integer) 'E57E5C
  'Data Table: 56AA0C
  loc_E57E2E: Set var_88 = Me.TextGt
  loc_E57E34: Call 0.Method_TextGt_KeyPress0 (KeyAscii)
  loc_E57E4F: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E57E5B: Exit Sub
End Sub

Private Sub TextGt_LostFocus(Index As Integer) 'E4C2EC
  'Data Table: 56AA0C
  loc_E4C2CA: Set var_88 = Me.TextGt
  loc_E4C2D0: Call 0.Method_TextGt_LostFocus0 (Index)
  loc_E4C2DE: Proc_6_73_E23294(var_8C)
  loc_E4C2EA: Exit Sub
End Sub

Private Sub TextGt_Validate(Cancel As Boolean) 'E015F4
  'Data Table: 56AA0C
  loc_E015EE: Call Proc_210_89_14E1210(Cancel)
  loc_E015F3: Exit Sub
End Sub

Private Sub DGHall_UnknownEvent_9 'F55528
  'Data Table: 56AA0C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F55408: On Error Goto loc_F55522
  loc_F5541A: Me.DGHall.Visible = False
  loc_F55439: If (Me.RecordCount > 0) Then
  loc_F55478:   Set var_B4 = Me.Txt
  loc_F5547E:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F55486:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F554B9:   var_B0 = Me.Fields.Item("Code")
  loc_F554D8:   Set var_B4 = Me.Txt
  loc_F554DE:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F554E6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F554FC: End If
  loc_F55507: Set var_A8 = Me.Txt
  loc_F5550D: Call 0.Method_DGHall_UnknownEvent_90 (CInt(5))
  loc_F55515: var_B0.SetFocus
  loc_F55521: Exit Sub
  loc_F55522: ' Referenced from: F55408
  loc_F55522: Proc_6_60_E63754(var_B0)
  loc_F55527: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'F56A40
  'Data Table: 56AA0C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F56920: On Error Goto loc_F56A3A
  loc_F56932: Me.DGBookNo.Visible = False
  loc_F56951: If (Me.RecordCount > 0) Then
  loc_F56990:   Set var_B4 = Me.Txt
  loc_F56996:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5699E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F569D1:   var_B0 = Me.Fields.Item("Code")
  loc_F569F0:   Set var_B4 = Me.Txt
  loc_F569F6:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F569FE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F56A14: End If
  loc_F56A1F: Set var_A8 = Me.Txt
  loc_F56A25: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7))
  loc_F56A2D: var_B0.SetFocus
  loc_F56A39: Exit Sub
  loc_F56A3A: ' Referenced from: F56920
  loc_F56A3A: Proc_6_60_E63754(var_B0)
  loc_F56A3F: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD5A68
  'Data Table: 56AA0C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD58AC: On Error Goto loc_FD5A60
  loc_FD58BE: Me.DGVType.Visible = False
  loc_FD58DD: If (Me.RecordCount > 0) Then
  loc_FD592F:   Set var_CC = Me.Txt
  loc_FD5935:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD593D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD5995:   Set var_B4 = Me.DGVType
  loc_FD59AC:   Set var_CC = Me.Txt
  loc_FD59B2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD59BA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD5A0E:   global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD5A1F: End If
  loc_FD5A3D: Set var_B0 = Me.Txt
  loc_FD5A43: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD5A4B: var_B4.SetFocus
  loc_FD5A5F: Exit Sub
  loc_FD5A60: ' Referenced from: FD58AC
  loc_FD5A60: Proc_6_60_E63754(var_B4)
  loc_FD5A65: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11285DC
  'Data Table: 56AA0C
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
  loc_1128286: Set var_88 = Me.TxtGrid
  loc_112828C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_112829A: Proc_6_74_E23240(var_8C)
  loc_11282A6: Call Proc_210_81_F24D00(var_8C)
  loc_11282B7: If (Index = 0) Then
  loc_11282D0:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11282EB:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112832A:   Set var_108 = Me.TxtGrid
  loc_1128330:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1128338:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1128360:   var_C4 = Me.FGrid.Col
  loc_1128369:   var_114 = CLng(var_C4)
  loc_1128379:   If (var_114 = CLng(1)) Then
  loc_1128386:     Set global_64 = New 
  loc_1128398:     Me.var_C4.CursorLocation = 3
  loc_11283BE:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IR.Rate as IRate,IC.TAXSTRU,IC.TAXSTRU ,I.Unit,I.DiscApp,I.RateEdit,I.Kitchen,i.SChrgApp From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on  IR.ItemCode=I.Code And IR.RestCode=I.RestCode) where IR.RestCode ='" & global_56
  loc_11283CF:     Me.Open CVar(var_110 & "' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_11283E3:     CVarUnk
  loc_11283E8:     VerifyVarObj
  loc_11283EE:     Set var_88 = Me.DGItem
  loc_11283F4:     LateIdStAd
  loc_1128443:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1128446:       Exit Sub
  loc_1128447:     End If
  loc_112844D:     Me.MoveFirst
  loc_1128465:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112846D:     var_E4 = CVar(CLng(9)) 'Long
  loc_1128476:     Set var_8C = Me.FGrid
  loc_112847C:     var_D4 = var_8C.TextMatrix)
  loc_11284B1:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_11284E1:     If (Me.EOF = &HFF) Then
  loc_11284EA:       Me.MoveFirst
  loc_11284EF:     End If
  loc_11284F8:     CVarUnk
  loc_11284FD:     VerifyVarObj
  loc_1128503:     Set var_88 = Me.DGItem
  loc_1128509:     LateIdStAd
  loc_112851A:   Else
  loc_1128521:     If (var_114 = CLng(2)) Then
  loc_1128539:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, Me.TxtGrid, global_64, var_134, var_D4)
  loc_1128541:       var_8C.MaxLength = var_E4
  loc_1128562:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(960), var_A4, Me.TxtGrid)
  loc_112856A:       var_8C.Height = global_64
  loc_1128579:     Else
  loc_1128580:       If Not (var_114 = CLng(3)) Then
  loc_112858A:         If (var_114 = CLng(4)) Then
  loc_112858D:         End If
  loc_112859C:         Set var_88 = Me.TxtGrid
  loc_11285A2:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_11285AA:         var_8C.MaxLength = 1
  loc_11285BF:         If (global_150 = 0) Then
  loc_11285CA:           var_110 = "{Home}+{End}"
  loc_11285D0:           Proc_303_0_FBACC8(CStr(var_D4), 0)
  loc_11285D8:         End If
  loc_11285D8:       End If
  loc_11285D8:     End If
  loc_11285D8:   End If
  loc_11285D8: End If
  loc_11285D8: Exit Sub
  loc_11285D9: Assert
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '113BBF4
  'Data Table: 56AA0C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_113B87C: If (KeyCode = 0) Then
  loc_113B889:   If (CLng(Shift) = &H1B) Then
  loc_113B899:     Set var_8C = Me.TxtGrid
  loc_113B89F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_113B8B9:     Set var_98 = Me.TxtGrid
  loc_113B8BF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_113B8C7:     var_9C.Text = var_90.Tag
  loc_113B8E3:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_113B8E8:     Call Proc_210_81_F24D00(arg_14)
  loc_113B8F1:     Set var_8C = Me.FGrid
  loc_113B90E:     Set var_8C = Me.TxtGrid
  loc_113B914:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_113B91C:     var_90.Visible = FGrid.DispID_8001
  loc_113B928:     Exit Sub
  loc_113B929:   End If
  loc_113B93C:   var_B0 = CLng(Me.FGrid.Col)
  loc_113B94C:   If (var_B0 = CLng(1)) Then
  loc_113B967:     Set var_9C = Nothing
  loc_113B9A0:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_113B9BE:     If (CLng(Shift) = &HD) Then
  loc_113B9C7:       Call Proc_210_76_1422338(KeyCode, var_B2, 1, Nothing)
  loc_113B9D2:       If (var_B2 = &HFF) Then
  loc_113BA1F:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113BA2F:       End If
  loc_113BA2F:     End If
  loc_113BA32:   Else
  loc_113BA39:     If (var_B0 = CLng(2)) Then
  loc_113BA46:       If (CLng(Shift) = &HD) Then
  loc_113BA4F:         Call Proc_210_76_1422338(KeyCode, var_B2, 0, 0)
  loc_113BA5A:         If (var_B2 = &HFF) Then
  loc_113BAA7:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(3) + 1)), 0)
  loc_113BAB7:         End If
  loc_113BAB7:       End If
  loc_113BABA:     Else
  loc_113BAC1:       If (var_B0 = CLng(4)) Then
  loc_113BACA:         Call Proc_210_76_1422338(KeyCode, var_B2, 0, 0)
  loc_113BAD5:         If (var_B2 = &HFF) Then
  loc_113BB22:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(4) + 1)), 0)
  loc_113BB32:         End If
  loc_113BB35:       Else
  loc_113BB3C:         If (var_B0 = CLng(3)) Then
  loc_113BB7F:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_150 = &HFF))) Then
  loc_113BB88:             Call Proc_210_76_1422338(KeyCode, var_B2, 0, 0)
  loc_113BB93:             If (var_B2 = &HFF) Then
  loc_113BBE0:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113BBF0:             End If
  loc_113BBF0:           End If
  loc_113BBF0:         End If
  loc_113BBF0:       End If
  loc_113BBF0:     End If
  loc_113BBF0:   End If
  loc_113BBF0: End If
  loc_113BBF0: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F81A38
  'Data Table: 56AA0C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F818E7: Proc_6_58_E06050(arg_10)
  loc_F818F8: If (KeyAscii = 0) Then
  loc_F8190E:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8191E:   If (var_A0 = CLng(1)) Then
  loc_F8193D:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F81944:       Set var_AC = Me.TxtGrid
  loc_F8194F:       var_A4 = "Name"
  loc_F8196A:       Proc_6_89_1470B00(var_AC, KeyAscii, global_64, arg_10)
  loc_F81979:     End If
  loc_F8197C:   Else
  loc_F81983:     If (var_A0 = CLng(3)) Then
  loc_F81990:       Set var_8C = Me.TxtGrid
  loc_F81996:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F819B1:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F819C0:     Else
  loc_F819C7:       If (var_A0 = CLng(4)) Then
  loc_F819D4:         Set var_8C = Me.TxtGrid
  loc_F819DA:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F819F5:         Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_F81A04:       Else
  loc_F81A0B:         If (var_A0 = CLng(2)) Then
  loc_F81A1D:           Set var_8C = Me.TxtGrid
  loc_F81A23:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F81A2B:           var_AC.MaxLength = 2
  loc_F81A37:         End If
  loc_F81A37:       End If
  loc_F81A37:     End If
  loc_F81A37:   End If
  loc_F81A37: End If
  loc_F81A37: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7DB14
  'Data Table: 56AA0C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  loc_F7D9D8: On Error Goto loc_F7DB0E
  loc_F7D9E7: If (KeyCode = 0) Then
  loc_F7D9FD:   var_A0 = CLng(Me.FGrid.Col)
  loc_F7DA0D:   If (var_A0 = CLng(1)) Then
  loc_F7DA33:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F7DA44:       Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_F7DA4D:       Set var_AC = Me.TxtGrid
  loc_F7DA58:       var_A8 = "Name"
  loc_F7DA73:       Proc_6_89_1470B00(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_F7DA82:     End If
  loc_F7DA85:   Else
  loc_F7DA8C:     If (var_A0 = CLng(2)) Then
  loc_F7DACB:       Set var_8C = Me.TxtGrid
  loc_F7DAD1:       Call 0.Method_TxtGrid_KeyUp0 (0, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F7DAD9:       &HFF = var_AC.Text
  loc_F7DAE1:       var_114 = CVar(var_A8) 'String
  loc_F7DAE9:       Set var_128 = Me.FGrid
  loc_F7DAEF:       LateIdCallSt
  loc_F7DB0D:     End If
  loc_F7DB0D:   End If
  loc_F7DB0D: End If
  loc_F7DB0D: Exit Sub
  loc_F7DB0E: ' Referenced from: F7D9D8
  loc_F7DB0E: Proc_6_60_E63754(var_128, var_114, 0)
  loc_F7DB13: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21A4C
  'Data Table: 56AA0C
  Dim arg_10 As Integer
  loc_E21A34: If (Cancel = 0) Then
  loc_E21A3D:   Call Proc_210_76_1422338(Cancel, var_88)
  loc_E21A46:   arg_10 = Not(var_88)
  loc_E21A49: End If
  loc_E21A49: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4D9D4
  'Data Table: 56AA0C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D8CB: Me.DGParty.Visible = False
  loc_F4D8EA: If (Me.RecordCount > 0) Then
  loc_F4D929:   Set var_B4 = Me.Txt
  loc_F4D92F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4D937:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4D96A:   var_B0 = Me.Fields.Item("Code")
  loc_F4D989:   Set var_B4 = Me.Txt
  loc_F4D98F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4D997:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4D9AD: End If
  loc_F4D9B8: Set var_A8 = Me.Txt
  loc_F4D9BE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(3))
  loc_F4D9C6: var_B0.SetFocus
  loc_F4D9D2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1323ED0
  'Data Table: 56AA0C
  Dim var_90 As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim var_B0 As Variant
  Dim var_8C As DataGrid
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_98 As Fields15
  Dim var_94 As String
  loc_1323753: Set var_8C = Me.Txt
  loc_1323759: Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1323761: var_90.SelStart = 0
  loc_132377A: Set var_8C = Me.Txt
  loc_1323780: Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1323788: var_94 = var_90.Text
  loc_132379B: Set var_98 = Me.Txt
  loc_13237A1: Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_13237A9: var_9C.SelLength = Len(var_94)
  loc_13237C6: Set var_8C = Me.Txt
  loc_13237CC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13237DA: Proc_6_74_E23240(var_90)
  loc_13237E6: Call Proc_210_81_F24D00(var_90)
  loc_13237EE: var_9E = Index
  loc_13237F9: If (var_9E = CInt(0)) Then
  loc_132380F:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_1323868:   Set var_8C = Me.Txt
  loc_132386E:   Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94)
  loc_1323876:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_132388E:   If (var_9E Or (var_94 = vbNullString)) Then
  loc_1323891:     Exit Sub
  loc_1323892:   End If
  loc_132389F:   Set var_8C = Me.Txt
  loc_13238A5:   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_13238AD:   var_94 = var_90.Text
  loc_13238B5:   var_D8 = CVar(var_94) 'String
  loc_13238FA:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_1323903:     Me.MoveFirst
  loc_1323928:     Set var_8C = Me.Txt
  loc_132392E:     Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1323936:     0 = var_90.Text
  loc_1323944:     Proc_6_17_EAAE40(var_D8, CVar(var_94))
  loc_132395A:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_1323972:   End If
  loc_1323975: Else
  loc_132397D:   If (var_9E = CInt(3)) Then
  loc_13239CE:     Set var_8C = Me.Txt
  loc_13239D4:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_13239F4:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13239F7:       Exit Sub
  loc_13239F8:     End If
  loc_1323A05:     Set var_8C = Me.Txt
  loc_1323A0B:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1323A13:     var_94 = var_90.Text
  loc_1323A1B:     var_D8 = CVar(var_94) 'String
  loc_1323A60:     If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_1323A69:       Me.MoveFirst
  loc_1323A8E:       Set var_8C = Me.Txt
  loc_1323A94:       Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1323A9C:       0 = var_90.Text
  loc_1323AAA:       Proc_6_17_EAAE40(var_D8, CVar(var_94))
  loc_1323AC0:       Me.Find CStr(1 & var_D8), var_FC, 
  loc_1323AD8:     End If
  loc_1323ADB:   Else
  loc_1323AE3:     If (var_9E = CInt(5)) Then
  loc_1323B34:       Set var_8C = Me.Txt
  loc_1323B3A:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1323B5A:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1323B5D:         Exit Sub
  loc_1323B5E:       End If
  loc_1323B6B:       Set var_8C = Me.Txt
  loc_1323B71:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1323B79:       var_94 = var_90.Text
  loc_1323B81:       var_D8 = CVar(var_94) 'String
  loc_1323BC6:       If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_1323BCF:         Me.MoveFirst
  loc_1323BF4:         Set var_8C = Me.Txt
  loc_1323BFA:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1323C02:         0 = var_90.Text
  loc_1323C10:         Proc_6_17_EAAE40(var_D8, CVar(var_94))
  loc_1323C26:         Me.Find CStr(1 & var_D8), var_FC, 
  loc_1323C3E:       End If
  loc_1323C41:     Else
  loc_1323C49:       If (var_9E = CInt(7)) Then
  loc_1323C68:         Me.Recordset15.CursorLocation = 3
  loc_1323C8E:         var_94 = "Select DocId As Code, Convert(varchar(10),VNo) As Name,PartyName as Party,Vdate From HallBook where RestCode ='" & global_56
  loc_1323C95:         var_B0 = CVar(var_94 & "' and Docid not in (Select BookDocId from HallSale1Est) And Docid not in (Select BookDocId from HallSale1) Order by VNo") 'String
  loc_1323C9F:         Me.Open var_B0, CVar(MemVar_1F95044), 3
  loc_1323CB3:         CVarUnk
  loc_1323CB8:         VerifyVarObj
  loc_1323CBE:         Set var_8C = Me.DGBookNo
  loc_1323CC4:         LateIdStAd
  loc_1323D20:         Set var_8C = Me.Txt
  loc_1323D26:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1323D2E:         var_8C = var_90.Text
  loc_1323D46:         If (New Or (var_94 = vbNullString)) Then
  loc_1323D49:           Exit Sub
  loc_1323D4A:         End If
  loc_1323D57:         Set var_8C = Me.Txt
  loc_1323D5D:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94)
  loc_1323D65:         1 = var_90.Text
  loc_1323D6D:         var_D8 = CVar(var_94) 'String
  loc_1323D8E:         var_9C = Me.Fields.Item("Name")
  loc_1323DB2:         If CBool(var_D8 <> var_9C.Value) Then
  loc_1323DBB:           Me.MoveFirst
  loc_1323DE0:           Set var_8C = Me.Txt
  loc_1323DE6:           Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1323DEE:           0 = var_90.Text
  loc_1323DFC:           Proc_6_17_EAAE40(var_D8, CVar(var_94), 1)
  loc_1323E12:           Me.Find CStr(var_FC & var_D8), -1, 
  loc_1323E2A:         End If
  loc_1323E2D:       Else
  loc_1323E35:         If Not (var_9E = CInt(&HF)) Then
  loc_1323E40:           If Not (var_9E = CInt(&HE)) Then
  loc_1323E4B:             If (var_9E = CInt(&HD)) Then
  loc_1323E4E:             End If
  loc_1323E4E:           End If
  loc_1323E5D:           Set var_8C = Me.Txt
  loc_1323E63:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1323E6B:           var_90.SelStart = 0
  loc_1323E84:           Set var_8C = Me.Txt
  loc_1323E8A:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1323EA5:           Set var_98 = Me.Txt
  loc_1323EAB:           Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1323EB3:           var_9C.SelLength = Len(var_90.Text)
  loc_1323EC6:         End If
  loc_1323EC6:       End If
  loc_1323EC6:     End If
  loc_1323EC6:   End If
  loc_1323EC6: End If
  loc_1323ECB: Set var_88 = Nothing
  loc_1323ECE: Exit Sub
  loc_1323ECF: Result  End Sub 'Currency
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1134204
  'Data Table: 56AA0C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_1133EA6: If (CLng(Shift) = &H1B) Then
  loc_1133EA9:   Call Proc_210_81_F24D00()
  loc_1133EAE:   Exit Sub
  loc_1133EAF: End If
  loc_1133EB2: var_86 = KeyCode
  loc_1133EBD: If (var_86 = CInt(0)) Then
  loc_1133ED8:   Set var_9C = Nothing
  loc_1133EE3:   Set var_98 = Nothing
  loc_1133F11:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_1133F28: Else
  loc_1133F30:   If (var_86 = CInt(3)) Then
  loc_1133F4B:     Set var_98 = Nothing
  loc_1133F7D:     Proc_6_79_11AD564(Me.DGParty, Me.Txt, CInt(3), global_68, Shift, &HFF, 1)
  loc_1133F92:   Else
  loc_1133F9A:     If (var_86 = CInt(5)) Then
  loc_1133FB5:       Set var_9C = Nothing
  loc_1133FEE:       Proc_6_69_134A630(Me.DGHall, Me.Txt, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_1134005:     Else
  loc_113400D:       If (var_86 = CInt(7)) Then
  loc_1134028:         Set var_9C = Nothing
  loc_1134061:         Proc_6_69_134A630(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1134075:       End If
  loc_1134075:     End If
  loc_1134075:   End If
  loc_1134075: End If
  loc_11340A6: Set var_98 = Me.DGItem
  loc_11340BD: Set var_9C = Me.DGBookNo
  loc_1134101: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_1134122:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HC))) Then
  loc_113412B:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, var_9C)
  loc_1134130:   End If
  loc_1134134:   Set var_8C = Me.topCtrl1
  loc_113413A:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_113415C:   If ((CStr(var_98) = "Add") And (KeyCode <> CInt(0))) Then
  loc_1134174:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_113417D:       Proc_6_76_E533C8(Shift, arg_14, 0)
  loc_1134182:     End If
  loc_1134185:   Else
  loc_1134189:     Set var_8C = Me.topCtrl1
  loc_113418F:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_11341B1:     If ((CStr(var_98) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11341C9:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11341D2:         Proc_6_76_E533C8(Shift)
  loc_11341D7:       End If
  loc_11341D7:     End If
  loc_11341D7:   End If
  loc_11341F5:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_11341FB:     Call Proc_210_82_F0AA78(KeyCode)
  loc_1134200:   End If
  loc_1134200: End If
  loc_1134200: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FFC228
  'Data Table: 56AA0C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FFC02C: On Error Goto loc_FFC220
  loc_FFC032: Proc_6_58_E06050(arg_10)
  loc_FFC03A: var_86 = KeyAscii
  loc_FFC045: If (var_86 = CInt(0)) Then
  loc_FFC064:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_FFC07A:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_FFC089:     Set var_B8 = Me.Txt
  loc_FFC094:     var_B0 = "Name"
  loc_FFC0AF:     Proc_6_89_1470B00(var_B8, KeyAscii, global_60, arg_10)
  loc_FFC0BE:   End If
  loc_FFC0C1: Else
  loc_FFC0C9:   If (var_86 = CInt(1)) Then
  loc_FFC0D6:     Set var_8C = Me.Txt
  loc_FFC0DC:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_FFC0F7:     Proc_6_42_129B55C(var_B8, arg_10, 8)
  loc_FFC106:   Else
  loc_FFC10E:     If (var_86 = CInt(7)) Then
  loc_FFC12D:       If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_FFC15A:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_FFC169:       End If
  loc_FFC16C:     Else
  loc_FFC174:       If (var_86 = CInt(5)) Then
  loc_FFC193:         If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_FFC19A:           Set var_B8 = Me.Txt
  loc_FFC1C0:           Proc_6_89_1470B00(var_B8, KeyAscii, global_72, arg_10, "Name")
  loc_FFC1CF:         End If
  loc_FFC1D2:       Else
  loc_FFC1DA:         If Not (var_86 = CInt(&HF)) Then
  loc_FFC1E5:           If (var_86 = CInt(&HE)) Then
  loc_FFC1E8:           End If
  loc_FFC1F2:           Set var_8C = Me.Txt
  loc_FFC1F8:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0, 0)
  loc_FFC213:           Proc_6_42_129B55C(var_B8, arg_10, 8, 2)
  loc_FFC21F:         End If
  loc_FFC21F:       End If
  loc_FFC21F:     End If
  loc_FFC21F:   End If
  loc_FFC21F: End If
  loc_FFC21F: Exit Sub
  loc_FFC220: ' Referenced from: FFC02C
  loc_FFC220: Proc_6_60_E63754(0, 0)
  loc_FFC225: Exit Sub
  loc_FFC226: var_86 = 
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '102A87C
  'Data Table: 56AA0C
  Dim var_86 As Integer
  Dim var_98 As TextBox
  Dim var_12C As Double
  Dim var_AC As TextBox
  Dim var_134 As Double
  Dim var_B8 As TextBox
  Dim var_13C As Double
  Dim var_C4 As TextBox
  Dim var_144 As Double
  Dim var_E8 As Variant
  Dim var_120 As TextBox
  Dim var_8C As DataGrid
  loc_102A67F: var_86 = KeyCode
  loc_102A68A: If Not (var_86 = CInt(&HF)) Then
  loc_102A695:   If (var_86 = CInt(&HE)) Then
  loc_102A698:   End If
  loc_102A69F:   Set var_8C = Me.TxtGt
  loc_102A6A5:   Call 0.Method_Txt_KeyUp8 (var_8E)
  loc_102A6B7:   Set var_94 = Me.TxtGt
  loc_102A6BD:   Call 0.Method_Txt_KeyUp0 (var_8E, var_98)
  loc_102A6D2:   var_12C = Val(var_98.Text)
  loc_102A6DC:   Set var_A0 = Me.TextGt
  loc_102A6E2:   Call 0.Method_Txt_KeyUp8 (var_A2, var_12C)
  loc_102A6F4:   Set var_A8 = Me.TextGt
  loc_102A6FA:   Call 0.Method_Txt_KeyUp0 (var_A2, var_AC)
  loc_102A70F:   var_134 = Val(var_AC.Text)
  loc_102A720:   Set var_B4 = Me.Txt
  loc_102A726:   Call 0.Method_Txt_KeyUp0 (CInt(&HF), var_B8, var_BC)
  loc_102A73B:   var_13C = Val(var_BC)
  loc_102A74C:   Set var_C0 = Me.Txt
  loc_102A752:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_C4, var_C8)
  loc_102A767:   var_144 = Val(var_C8)
  loc_102A78E:   var_E8 = CVar((((var_12C + var_B8.Text) - var_C4.Text) - var_144)) 'Double
  loc_102A7AC:   Set var_11C = Me.Txt
  loc_102A7B2:   Call 0.Method_Txt_KeyUp0 (CInt(&HD), var_120, CStr(Format(var_E8, "0.00")), 1)
  loc_102A7BA:   var_120.Text = 1
  loc_102A7F3: Else
  loc_102A7FB:   If Not (var_86 = CInt(&H12)) Then
  loc_102A806:     If (var_86 = CInt(&H11)) Then
  loc_102A809:     End If
  loc_102A80E:     Call Proc_210_89_14E1210(&H32, var_144)
  loc_102A816:   Else
  loc_102A81E:     If (var_86 = CInt(3)) Then
  loc_102A83D:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_102A84A:         var_9C = "Name"
  loc_102A869:         Proc_6_80_FF1F20(Me.Txt, CInt(3), global_68)
  loc_102A878:       End If
  loc_102A878:     End If
  loc_102A878:   End If
  loc_102A878: End If
  loc_102A878: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CD14
  'Data Table: 56AA0C
  loc_E4CCF2: Set var_88 = Me.Txt
  loc_E4CCF8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CD06: Proc_6_73_E23294(var_8C)
  loc_E4CD12: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '18F5E68
  'Data Table: 56AA0C
  Dim var_9C As Integer
  Dim var_A4 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_A0 As Variant
  Dim var_AC As String
  Dim var_C8 As Variant
  Dim var_140 As String
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_16C As TextBox
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1BC As Variant
  Dim var_E8 As Variant
  Dim var_13C As String
  Dim unk_56AA2C As Connection15
  Dim var_A8 As Variant
  Dim var_168 As Variant
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_92 As Integer
  Dim var_98 As Recordset15
  Dim var_8C As Recordset15
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_144 As String
  Dim var_138 As Variant
  Dim var_224 As TextBox
  Dim Txt_Validate2 As Variant
  Dim var_22C As Double
  Dim var_244 As Double
  Dim var_24C As Double
  Dim var_234 As TextBox
  Dim var_254 As Double
  Dim var_170 As String
  Dim var_23C As TextBox
  loc_18F340C: On Error Goto loc_18F5E5F
  loc_18F3412: var_9C = Cancel
  loc_18F341D: If (var_9C = CInt(0)) Then
  loc_18F342B:   Set var_A0 = Me.Txt
  loc_18F3431:   Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_18F3439:   var_AC = "Voucher Type"
  loc_18F345A:   If (Proc_6_27_EA61EC(var_A4, var_AC) = 0) Then
  loc_18F3468:     Set var_A0 = Me.Txt
  loc_18F346E:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_18F3476:     var_A4.SetFocus
  loc_18F3484:     arg_10 = &HFF
  loc_18F3487:     Exit Sub
  loc_18F3488:   End If
  loc_18F34D6:   Set var_A0 = Me.Txt
  loc_18F34DC:   Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_18F34E4:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A4.Text
  loc_18F34FC:   If (arg_10 Or (var_AC = vbNullString)) Then
  loc_18F350C:     Set var_A0 = Me.Txt
  loc_18F3512:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F351A:     var_A4.Text = vbNullString
  loc_18F3533:     Set var_A0 = Me.Txt
  loc_18F3539:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F3541:     var_A4.Tag = vbNullString
  loc_18F3553:     global_120 = vbNullString
  loc_18F355A:   Else
  loc_18F3595:     Set var_A8 = Me.Txt
  loc_18F359B:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F35A3:     var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18F35F4:     Set var_A8 = Me.Txt
  loc_18F35FA:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F3602:     var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_18F3635:     var_A4 = Me.Fields.Item("NCat")
  loc_18F364C:     global_120 = CStr(var_A4.Value)
  loc_18F365D:   End If
  loc_18F3661:   Set var_A0 = Me.topCtrl1
  loc_18F3667:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_18F366F:   var_AC = CStr()
  loc_18F3680:   If (var_AC = "Add") Then
  loc_18F3689:     Call Proc_210_84_11BF000(MemVar_1F95044)
  loc_18F369C:     Set var_A0 = Me.Txt
  loc_18F36A2:     Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_18F36AA:     var_A4.Text = var_AC
  loc_18F36B9:   End If
  loc_18F36BD:   Set var_A0 = Me.topCtrl1
  loc_18F36C3:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_18F36DC:   If (CStr() = "Add") Then
  loc_18F36EA:     If (global_156 = "Automatic") Then
  loc_18F36FA:       Set var_A0 = Me.Txt
  loc_18F3700:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_18F3708:       var_A4.Enabled = False
  loc_18F3717:     Else
  loc_18F3724:       Set var_A0 = Me.Txt
  loc_18F372A:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_18F3732:       var_A4.Enabled = True
  loc_18F3749:       Set var_A0 = Me.Txt
  loc_18F374F:       Call 0.Method_Txt_Validate0 (CInt(1))
  loc_18F3757:       var_A4.SetFocus
  loc_18F3763:     End If
  loc_18F3763:   End If
  loc_18F3766: Else
  loc_18F376E:   If (var_9C = CInt(1)) Then
  loc_18F377C:     Set var_A0 = Me.Txt
  loc_18F3782:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_18F378A:     var_AC = "Vr. No"
  loc_18F37AB:     If (Proc_6_27_EA61EC(var_A4, var_AC) = 0) Then
  loc_18F37B9:       Set var_A0 = Me.Txt
  loc_18F37BF:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_18F37C7:       var_A4.SetFocus
  loc_18F37D5:       arg_10 = &HFF
  loc_18F37D8:       Exit Sub
  loc_18F37D9:     End If
  loc_18F37E7:     Set var_A0 = Me.Txt
  loc_18F37ED:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC)
  loc_18F37F5:     arg_10 = var_A4.Text
  loc_18F380D:     If (CDbl(var_AC) = CDbl(0)) Then
  loc_18F3829:       MsgBox("Vr. No Can Not Be 0", 0, var_F8, var_118, var_138)
  loc_18F3843:       Set var_A0 = Me.Txt
  loc_18F3849:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F3851:       var_A4.SetFocus
  loc_18F385F:       arg_10 = &HFF
  loc_18F3862:       Exit Sub
  loc_18F3863:     End If
  loc_18F3867:     Set var_A0 = Me.topCtrl1
  loc_18F386D:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_18F3886:     If (CStr(var_A4) = "Add") Then
  loc_18F38AE:       Set var_A0 = Me.Txt
  loc_18F38B4:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_18F38DB:       Set var_A8 = Me.Txt
  loc_18F38E1:       Call 0.Method_Txt_Validate0 (CInt(0), var_C8, var_144)
  loc_18F38E9:       5 = var_C8.Tag
  loc_18F38F6:       var_D8 = Space((CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_A4.Tag) - Len(var_144)))
  loc_18F38FE:       var_118 = ( + "Vr. No Can Not Be 0")
  loc_18F3912:       var_138 = Space((5 - Len(global_112)))
  loc_18F391A:       var_154 = (var_118 + var_138)
  loc_18F3927:       var_164 = (var_154 + CVar(global_112))
  loc_18F393E:       Set var_168 = Me.Txt
  loc_18F3944:       Call 0.Method_Txt_Validate0 (CInt(1), var_16C, var_170)
  loc_18F394C:       8 = var_16C.Text
  loc_18F3959:       var_180 = Space((var_164 - Len(var_170)))
  loc_18F3961:       var_190 = ( + var_180)
  loc_18F3973:       Set var_194 = Me.Txt
  loc_18F3979:       Call 0.Method_Txt_Validate0 (CInt(1), var_198)
  loc_18F398C:       var_1BC = (var_190 + CVar(var_198.Text))
  loc_18F39E5:       Set var_A0 = Me.Txt
  loc_18F39EB:       Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_18F39F3:       var_A4.Text = CStr(var_1BC)
  loc_18F3A0F:       Me.LblVPrefix.Caption = global_112
  loc_18F3A17:     End If
  loc_18F3A1B:     Set var_A0 = Me.topCtrl1
  loc_18F3A21:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_18F3A29:     var_AC = CStr()
  loc_18F3A3A:     If (var_AC = "Add") Then
  loc_18F3A6A:       Set var_A0 = Me.Txt
  loc_18F3A70:       Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC, "Select Count(*) From HallSale1Est Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_18F3A81:       var_13C = var_C8 & var_AC
  loc_18F3A91:       unk_56AA2C.Execute var_13C & "'", 0, var_168
  loc_18F3AA1:        = var_C8.Item()
  loc_18F3AA9:        = var_168.Value
  loc_18F3AD6:       If (var_A4.Text.Fields > 0) Then
  loc_18F3ADF:         Call 0.Method_arg_50 (var_AC)
  loc_18F3B00:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_AC), var_118, var_138)
  loc_18F3B16:         Call Proc_210_84_11BF000(MemVar_1F95044)
  loc_18F3B26:         If (var_AC = vbNullString) Then
  loc_18F3B33:           Set var_A0 = Me.Txt
  loc_18F3B39:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F3B41:           var_A4.SetFocus
  loc_18F3B4F:           arg_10 = &HFF
  loc_18F3B52:           Exit Sub
  loc_18F3B53:         End If
  loc_18F3B59:         Call Proc_210_84_11BF000(MemVar_1F95044, var_AC)
  loc_18F3B6C:         Set var_A0 = Me.Txt
  loc_18F3B72:         Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC)
  loc_18F3B7A:         var_A4.Text = arg_10
  loc_18F3B8B:         arg_10 = &HFF
  loc_18F3B8E:         Exit Sub
  loc_18F3B8F:       End If
  loc_18F3B8F:     End If
  loc_18F3B92:   Else
  loc_18F3B9A:     If (var_9C = CInt(2)) Then
  loc_18F3BAB:       Set var_A0 = Me.Txt
  loc_18F3BB1:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_AC)
  loc_18F3BB9:       arg_10 = var_A4.Text
  loc_18F3BCF:       var_118 = Len(Trim(CVar(var_AC)))
  loc_18F3BE9:       If (var_118 = 0) Then
  loc_18F3BFF:         Set var_A0 = Me.Txt
  loc_18F3C05:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_18F3C0D:         var_A4.Text = CStr(MemVar_1F950EC)
  loc_18F3C1F:       Else
  loc_18F3C29:         Set var_A0 = Me.Txt
  loc_18F3C2F:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F3C4F:         Set var_C8 = Me.Txt
  loc_18F3C55:         Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_18F3C5D:         var_168.Text = Proc_6_33_15125B8(var_A4)
  loc_18F3C70:       End If
  loc_18F3C7D:       Set var_A0 = Me.Txt
  loc_18F3C83:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F3C8B:       var_AC = var_A4.Text
  loc_18F3CA6:       Set var_A8 = Me.Txt
  loc_18F3CAC:       Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_13C)
  loc_18F3CB4:       (CDate(var_AC) >= MemVar_1F950F4) = var_C8.Text
  loc_18F3CD6:       If Not((var_AC And (CDate(var_13C) <= MemVar_1F950FC))) Then
  loc_18F3CE4:         var_F8 = "Date Validate"
  loc_18F3CEF:         var_C4 = "V.Date Not Between Current Fin. Year"
  loc_18F3CFA:         MsgBox(var_C4, 0, var_F8, var_118, var_138)
  loc_18F3D14:         Set var_A0 = Me.Txt
  loc_18F3D1A:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_18F3D22:         var_A4.SetFocus
  loc_18F3D30:         arg_10 = &HFF
  loc_18F3D33:         Exit Sub
  loc_18F3D34:       End If
  loc_18F3D37:     Else
  loc_18F3D3F:       If (var_9C = CInt(3)) Then
  loc_18F3D59:         If (Me.RecordCount <= 0) Then
  loc_18F3D5C:           GoTo loc_18F3ED8
  loc_18F3D5F:         End If
  loc_18F3D65:         Me.MoveFirst
  loc_18F3D77:         Set var_A0 = Me.Txt
  loc_18F3D7D:         Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_18F3D85:         arg_10 = var_A4.Text
  loc_18F3D9C:         If (var_AC <> vbNullString) Then
  loc_18F3DBE:           Set var_A0 = Me.Txt
  loc_18F3DC4:           Call 0.Method_Txt_Validate0 (CInt(3), var_A4, var_AC, "Name like '")
  loc_18F3DCC:           0 = var_A4.Text
  loc_18F3DE5:           Me.Find 1 & var_AC & "*'", var_C4, var_A4
  loc_18F3DFD:         Else
  loc_18F3E00:         Else
  loc_18F3E17:           If (Me.AbsolutePosition > 0) Then
  loc_18F3E55:             Set var_A8 = Me.Txt
  loc_18F3E5B:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F3E63:             var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18F3E96:             var_A4 = Me.Fields.Item("Code")
  loc_18F3EB4:             Set var_A8 = Me.Txt
  loc_18F3EBA:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F3EC2:             var_C8.Tag = CStr(var_A4.Value)
  loc_18F3ED8:           End If
  loc_18F3ED8:           ' Referenced from:       18F3D5C
  loc_18F3ED8:         End If
  loc_18F3EDB:       Else
  loc_18F3EE3:         If (var_9C = CInt(7)) Then
  loc_18F3F06:           var_B2 = Me.EOF
  loc_18F3F34:           Set var_A0 = Me.Txt
  loc_18F3F3A:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F3F5A:           If (((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) Or (var_A4.Text = vbNullString)) Then
  loc_18F3F6A:             Set var_A0 = Me.Txt
  loc_18F3F70:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F3F78:             var_A4.Text = vbNullString
  loc_18F3F91:             Set var_A0 = Me.Txt
  loc_18F3F97:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F3F9F:             var_A4.Tag = vbNullString
  loc_18F3FAD:             arg_10 = &HFF
  loc_18F3FB3:           Else
  loc_18F3FEE:             Set var_A8 = Me.Txt
  loc_18F3FF4:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F4040:             var_AC = CStr(Me.Fields.Item("Code").Value)
  loc_18F404D:             Set var_A8 = Me.Txt
  loc_18F4053:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F405B:             var_C8.Tag = var_AC
  loc_18F408E:             var_A4 = Me.Fields.Item("VDate")
  loc_18F4096:             var_D8 = var_A4.Value
  loc_18F40AC:             Set var_A8 = Me.Txt
  loc_18F40B2:             Call 0.Method_Txt_Validate0 (CInt(2), var_C8, var_AC)
  loc_18F40BA:             var_D8 = CStr(Me.Fields.Item("Name").Value)
  loc_18F40DC:             If (arg_10 > CDate(CDate(var_AC))) Then
  loc_18F40F8:               MsgBox("Bill Date can't be before Booking Date", 0, var_F8, var_118, var_138)
  loc_18F410A:               arg_10 = &HFF
  loc_18F410D:               Exit Sub
  loc_18F410E:             End If
  loc_18F410E:           End If
  loc_18F4112:           Set var_A0 = Me.topCtrl1
  loc_18F4118:           Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_18F4120:           var_AC = CStr()
  loc_18F4131:           If (var_AC = "Add") Then
  loc_18F413A:             Call Proc_210_84_11BF000(MemVar_1F95044)
  loc_18F414A:             If (var_AC = vbNullString) Then
  loc_18F4157:               Set var_A0 = Me.Txt
  loc_18F415D:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F4165:               var_A4.SetFocus
  loc_18F4173:               arg_10 = &HFF
  loc_18F4176:               Exit Sub
  loc_18F4177:             End If
  loc_18F417D:             Call Proc_210_84_11BF000(MemVar_1F95044, var_AC)
  loc_18F4190:             Set var_A0 = Me.Txt
  loc_18F4196:             Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC)
  loc_18F419E:             var_A4.Text = arg_10
  loc_18F41AD:           End If
  loc_18F41BC:           Me.FGrid.Redraw = False
  loc_18F41D1:           Set var_A0 = Me.FGrid
  loc_18F41D7:           var_A0.Rows = 1
  loc_18F41E1:           var_92 = 1
  loc_18F41E8:           Set var_98 = New 
  loc_18F41F3:           Me.var_A0.CursorLocation = 3
  loc_18F4206:           Set var_A0 = Me.Txt
  loc_18F420C:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC)
  loc_18F4214:           var_92 = var_A4.Tag
  loc_18F4237:           var_13C = "Select H.*,H1.QTYISS,H1.ITEM,H1.REMARKS,H1.AMOUNT AS AMOUNT1,H1.Rate as Rate1,H1.TaxAmt as Tax1,H1.Total as Total1,I.NAME AS ITEMNAME,I.RateEdit,IR.Rate as IRate,H1.TaxPer,IC.TAXSTRU,H.advance AS Advance,H.RECTNO,H.RECTDATE From (((HallBook H LEFT JOIN HallBook1 H1 on H.DocId=H1.DocId)LEFT JOIN ITEMMAST I ON H1.ITEM=I.CODE And H1.RestCode=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=H1.RestCode and IR.ItemCode=H1.Item WHERE H.DOCID='" & var_AC
  loc_18F4245:           var_98.Open CVar(var_13C & "' and H1.Rate<>0 Order by H1.DOCID,H1.SNo"), CVar(MemVar_1F95044), 3
  loc_18F426F:           If (var_98.RecordCount > 0) Then
  loc_18F427F:             var_E8 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_18F42C5:             unk_56AA2C.Execute CStr(CDate(CDate(var_AC)) & var_98.Fields.Item("DocID").Value & "'"), var_138, -1
  loc_18F42D0:             Set var_8C = var_A8
  loc_18F4330:             If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_18F434D:               var_A4 = var_8C.Fields.Item("Advance")
  loc_18F435E:               var_AC = CStr(var_A4.Value)
  loc_18F4372:               Call 0.Method_Txt_Validate0 (CInt(8), var_C8, var_AC, Me.Txt)
  loc_18F437A:               var_C8.Text = 1
  loc_18F4393:             Else
  loc_18F43A1:               Set var_A0 = Me.Txt
  loc_18F43A7:               Call 0.Method_Txt_Validate0 (CInt(8), var_A4, "0.00")
  loc_18F43AF:               var_A4.Text = -1
  loc_18F43BB:             End If
  loc_18F43C7:             Set var_A0 = Me.TxtGt
  loc_18F43CD:             Call 0.Method_Txt_Validate8 (var_B2, var_94)
  loc_18F43D8:             For var_1C4 = var_AC To var_B2:         1 = var_1C4 'Integer
  loc_18F43EB:               Set var_A0 = Me.LblCap
  loc_18F43F1:               Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F4410:               If (var_A4.Tag = "STOT") Then
  loc_18F442D:                 var_A4 = var_98.Fields.Item("Total")
  loc_18F444B:                 Set var_A8 = Me.TxtGt
  loc_18F4451:                 Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F4459:                 var_C8.Text = CStr(var_A4.Value)
  loc_18F4472:               Else
  loc_18F447F:                 Set var_A0 = Me.LblCap
  loc_18F4485:                 Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F44A4:                 If (var_A4.Tag = "HLR") Then
  loc_18F44C1:                   var_A4 = var_98.Fields.Item("HallRent")
  loc_18F44DF:                   Set var_A8 = Me.TxtGt
  loc_18F44E5:                   Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F44ED:                   var_C8.Text = CStr(var_A4.Value)
  loc_18F4506:                 Else
  loc_18F4513:                   Set var_A0 = Me.LblCap
  loc_18F4519:                   Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F4538:                   If (var_A4.Tag = "HLP") Then
  loc_18F4555:                     var_A4 = var_98.Fields.Item("TotalPerCover")
  loc_18F4573:                     Set var_A8 = Me.TxtGt
  loc_18F4579:                     Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F4581:                     var_C8.Text = CStr(var_A4.Value)
  loc_18F459A:                   Else
  loc_18F45A7:                     Set var_A0 = Me.LblCap
  loc_18F45AD:                     Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F45CC:                     If (var_A4.Tag = "SDIS") Then
  loc_18F4607:                       Set var_A8 = Me.TxtPer
  loc_18F460D:                       Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F4615:                       var_C8.Text = CStr(var_98.Fields.Item("DiscPer").Value)
  loc_18F4645:                       var_A4 = var_98.Fields.Item("DiscAmt")
  loc_18F4663:                       Set var_A8 = Me.TxtGt
  loc_18F4669:                       Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F4671:                       var_C8.Text = CStr(var_A4.Value)
  loc_18F468A:                     Else
  loc_18F4697:                       Set var_A0 = Me.LblCap
  loc_18F469D:                       Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F46BC:                       If (var_A4.Tag = "SST") Then
  loc_18F46D9:                         var_A4 = var_98.Fields.Item("Tax")
  loc_18F46F7:                         Set var_A8 = Me.TxtGt
  loc_18F46FD:                         Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F4705:                         var_C8.Text = CStr(var_A4.Value)
  loc_18F471E:                       Else
  loc_18F472B:                         Set var_A0 = Me.LblCap
  loc_18F4731:                         Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F4750:                         If (var_A4.Tag = "SSTX") Then
  loc_18F4753:                           GoTo loc_18F4A37
  loc_18F4756:                         End If
  loc_18F4763:                         Set var_A0 = Me.LblCap
  loc_18F4769:                         Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F4788:                         If (var_A4.Tag = "SSCH") Then
  loc_18F47A5:                           var_A4 = var_98.Fields.Item("Servicecharge")
  loc_18F47C3:                           Set var_A8 = Me.TxtGt
  loc_18F47C9:                           Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F47D1:                           var_C8.Text = CStr(var_A4.Value)
  loc_18F47EA:                         Else
  loc_18F47F7:                           Set var_A0 = Me.LblCap
  loc_18F47FD:                           Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F481C:                           If (var_A4.Tag = "SADD") Then
  loc_18F4839:                             var_A4 = var_98.Fields.Item("AddAmt")
  loc_18F4857:                             Set var_A8 = Me.TxtGt
  loc_18F485D:                             Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F4865:                             var_C8.Text = CStr(var_A4.Value)
  loc_18F487E:                           Else
  loc_18F488B:                             Set var_A0 = Me.LblCap
  loc_18F4891:                             Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F48B0:                             If (var_A4.Tag = "SDED") Then
  loc_18F48CD:                               var_A4 = var_98.Fields.Item("DedAmt")
  loc_18F48EB:                               Set var_A8 = Me.TxtGt
  loc_18F48F1:                               Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F48F9:                               var_C8.Text = CStr(var_A4.Value)
  loc_18F4912:                             Else
  loc_18F491F:                               Set var_A0 = Me.LblCap
  loc_18F4925:                               Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F4944:                               If (var_A4.Tag = "SROFF") Then
  loc_18F4961:                                 var_A4 = var_98.Fields.Item("RoundOff")
  loc_18F497F:                                 Set var_A8 = Me.TxtGt
  loc_18F4985:                                 Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F498D:                                 var_C8.Text = CStr(var_A4.Value)
  loc_18F49A6:                               Else
  loc_18F49B3:                                 Set var_A0 = Me.LblCap
  loc_18F49B9:                                 Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_18F49D8:                                 If (var_A4.Tag = "SNET") Then
  loc_18F4A06:                                   var_AC = CStr(var_98.Fields.Item("NetAmt").Value)
  loc_18F4A13:                                   Set var_A8 = Me.TxtGt
  loc_18F4A19:                                   Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_18F4A21:                                   var_C8.Text = var_AC
  loc_18F4A37:                                 End If
  loc_18F4A37:                               End If
  loc_18F4A37:                             End If
  loc_18F4A37:                           End If
  loc_18F4A37:                           ' Referenced from:                   18F4753
  loc_18F4A37:                         End If
  loc_18F4A37:                       End If
  loc_18F4A37:                     End If
  loc_18F4A37:                   End If
  loc_18F4A37:                 End If
  loc_18F4A37:               End If
  loc_18F4A3A:             Next var_1C4 'Integer
  loc_18F4A3F:             ' Referenced from:         18F4EE4
  loc_18F4A4E:             If Not(var_98.EOF) Then
  loc_18F4A79:               For var_1C8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):         var_9A = var_1C8 'Byte
  loc_18F4A8C:                 var_108 = CVar(CLng(&H14)) 'Long
  loc_18F4AB7:                 Set var_A4 = Me.Txt
  loc_18F4ABD:                 Call 0.Method_Txt_Validate0 (CInt(1), var_A8, var_AC, CStr(Me.FGrid.TextMatrix)))
  loc_18F4AC5:                 var_108 = var_A8.Text
  loc_18F4B48:                 If ((CVar(CLng(var_9A)) = var_AC) And (CVar(CLng(var_9A)) = Proc_6_38_E69628(CVar(var_98.Fields.Item("Item")), CStr(Me.FGrid.TextMatrix)), CVar(CLng(9))))) Then
  loc_18F4B4B:                   GoTo loc_18F4EDC
  loc_18F4B4E:                 End If
  loc_18F4B51:               Next var_1C8 'Byte
  loc_18F4B57:               var_C4 = vbNullString
  loc_18F4B61:               Set var_A0 = Me.FGrid
  loc_18F4B76:               Set var_21C = Me.FGrid
  loc_18F4B7D:               var_C4 = CVar(CLng(var_92)) 'Long
  loc_18F4B85:               var_108 = CVar(CLng(0)) 'Long
  loc_18F4B8F:               var_D8 = CVar(CStr(var_92)) 'String
  loc_18F4B96:               LateIdCallSt
  loc_18F4BDA:               var_F8 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_92)), var_21C, CVar(var_98.Fields.Item("Item")))) 'String
  loc_18F4BE1:               LateIdCallSt
  loc_18F4C2C:               var_F8 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_92)), var_21C, var_F8)) 'String
  loc_18F4C33:               LateIdCallSt
  loc_18F4C65:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F4C6D:               var_1D8 = CVar(CLng(3)) 'Long
  loc_18F4C9A:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_18F4CA1:               LateIdCallSt
  loc_18F4CD7:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F4CDF:               var_1D8 = CVar(CLng(4)) 'Long
  loc_18F4D0C:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("Rate1")), "0.00"))) 'String
  loc_18F4D13:               LateIdCallSt
  loc_18F4D49:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F4D51:               var_1D8 = CVar(CLng(5)) 'Long
  loc_18F4D7E:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("Amount1")), "0.00"))) 'String
  loc_18F4D85:               LateIdCallSt
  loc_18F4DBB:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F4DC3:               var_1D8 = CVar(CLng(8)) 'Long
  loc_18F4DF0:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("TOTAL1")), "0.00"))) 'String
  loc_18F4DF7:               LateIdCallSt
  loc_18F4E24:               var_A4 = var_98.Fields.Item("TaxStru")
  loc_18F4E2D:               var_108 = CVar(CLng(var_92)) 'Long
  loc_18F4E35:               var_1D8 = CVar(CLng(&H10)) 'Long
  loc_18F4E69:               LateIdCallSt
  loc_18F4E8B:               var_108 = CVar(CLng(&H14)) 'Long
  loc_18F4E9E:               Set var_A0 = Me.Txt
  loc_18F4EA4:               Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC, var_108, CVar(CLng(var_92)), var_21C, CVar(CStr(Format(CVar(var_A4), "0.00"))))
  loc_18F4EAC:               1 = var_A4.Text
  loc_18F4EB4:               var_D8 = CVar(var_AC) 'String
  loc_18F4EBB:               LateIdCallSt
  loc_18F4ECF:               Set var_21C = Nothing 
  loc_18F4ED9:               var_92 = (var_92 + 1)
  loc_18F4EDC:               ' Referenced from:         18F4B4B
  loc_18F4EDF:               var_98.MoveNext
  loc_18F4EE4:               GoTo loc_18F4A3F
  loc_18F4EE7:             End If
  loc_18F4EFA:             Me.FGrid.FixedRows = 1
  loc_18F4F05:           Else
  loc_18F4F13:             Me.FGrid.Redraw = True
  loc_18F4F21:             If (var_92 = 1) Then
  loc_18F4F37:               Me.FGrid.Rows = 1
  loc_18F4F43:               Set var_A8 = Me.FGrid
  loc_18F4F5D:               var_D8 = CVar(CStr(Proc_6_127_F25B10(var_A8, CInt(0), var_92, var_21C, var_D8, 1))) 'String
  loc_18F4F65:               Set var_A4 = Me.FGrid
  loc_18F4F92:               Me.FGrid.FixedRows = 1
  loc_18F4F9A:             End If
  loc_18F4F9A:           End If
  loc_18F4FB8:           Set var_A0 = Me.Txt
  loc_18F4FBE:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_D8, -1, var_A8)
  loc_18F4FC6:           FGrid.DispID_10000 = var_A4.Tag
  loc_18F4FDF:           unk_56AA2C.Execute var_D8 & var_AC & "'", var_1D8, var_108
  loc_18F4FEA:           Set var_98 = var_A8
  loc_18F5002:           ' Referenced from:         18F54DE
  loc_18F5011:           If Not(var_98.EOF) Then
  loc_18F502D:             var_C4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_18F503C:             Me.FGrid1.Row = 1
  loc_18F5073:             For var_220 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)):         var_9A = var_220 'Byte
  loc_18F507E:               var_C4 = CVar(CLng(var_9A)) 'Long
  loc_18F50B2:               Set var_A4 = Me.Txt
  loc_18F50B8:               Call 0.Method_Txt_Validate0 (CInt(1), var_A8, var_AC, CStr(Me.FGrid1.TextMatrix)), 7)
  loc_18F50C0:               var_C4 = var_A8.Text
  loc_18F50E1:               Set var_C8 = Me.FGrid1
  loc_18F510C:               var_16C = var_98.Fields.Item("VenueName")
  loc_18F511D:               var_144 = Proc_6_38_E69628(CVar(var_16C), CStr(var_C8.TextMatrix)), 1, CVar(CLng(var_9A)))
  loc_18F5144:               If (var_21C And ((CByte(1) = var_AC) = var_144)) Then
  loc_18F5147:                 GoTo loc_18F54D6
  loc_18F514A:               End If
  loc_18F514D:             Next var_220 'Byte
  loc_18F5157:             Set var_224 = Me.FGrid1
  loc_18F516D:             var_1D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_18F5172:             var_1F8 = 0
  loc_18F5194:             var_C4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_18F5199:             var_108 = 0
  loc_18F51B7:             var_AC = CStr(Me.FGrid1.TextMatrix))
  loc_18F51C5:             var_138 = CVar(CStr((Val(var_AC) + CDbl(1)))) 'String
  loc_18F51CC:             LateIdCallSt
  loc_18F5234:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_224, CVar(CStr(Format(CVar(var_98.Fields.Item("VenueName")), "0.00"))))) 'String
  loc_18F523B:             LateIdCallSt
  loc_18F529C:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F52A3:             LateIdCallSt
  loc_18F5304:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F530B:             LateIdCallSt
  loc_18F536C:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F5373:             LateIdCallSt
  loc_18F53D4:             var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F53DB:             LateIdCallSt
  loc_18F542B:             var_A4 = var_98.Fields.Item("VenuCode")
  loc_18F543C:             var_118 = CVar(Proc_6_38_E69628(CVar(var_A4), 6, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_18F5443:             LateIdCallSt
  loc_18F545F:             Set var_A8 = Me.FGrid1
  loc_18F548A:             Set var_A0 = Me.Txt
  loc_18F5490:             Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC, 7, CVar(CLng(var_A8.Row)), var_224)
  loc_18F5498:             var_118 = var_A4.Text
  loc_18F54A0:             var_F8 = CVar(var_AC) 'String
  loc_18F54A7:             LateIdCallSt
  loc_18F54BF:             var_C4 = vbNullString
  loc_18F54C8:             Txt_Validate2 = var_224.Name
  loc_18F54D2:             Set var_224 = Nothing 
  loc_18F54D6:             ' Referenced from:         18F5147
  loc_18F54D9:             var_98.MoveNext
  loc_18F54DE:             GoTo loc_18F5002
  loc_18F54E1:           End If
  loc_18F54E5:           Set var_98 = New 
  loc_18F54F0:           var_98.CursorLocation = 3
  loc_18F5503:           Set var_A0 = Me.Txt
  loc_18F5509:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC, Txt_Validate2, var_C4, var_224)
  loc_18F5511:           var_F8 = var_A4.Tag
  loc_18F5542:           var_98.Open CVar("Select * From HallBook H  WHERE H.DOCID='" & var_AC & "'"), CVar(MemVar_1F95044), 3
  loc_18F556C:           If (var_98.RecordCount > 0) Then
  loc_18F557C:             var_E8 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_18F55AB:             var_F8 = CVar(CLng(Me.FGrid1.Row)) & var_98.Fields.Item("DocID").Value 
  loc_18F55AF:             var_108 = "'"
  loc_18F55C2:             unk_56AA2C.Execute CStr(var_F8 & var_108), CVar(CStr(Format(CVar(var_98.Fields.Item("DocID")), "0.00"))), -1
  loc_18F55CD:             Set var_8C = var_A8
  loc_18F562D:             If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_18F5636:               var_C4 = "Advance"
  loc_18F564A:               var_A4 = var_8C.Fields.Item(var_C4)
  loc_18F566F:               Call 0.Method_Txt_Validate0 (CInt(8), var_C8, CStr(var_A4.Value), Me.Txt, 1)
  loc_18F5677:               var_C8.Text = -1
  loc_18F5690:             Else
  loc_18F569E:               Set var_A0 = Me.Txt
  loc_18F56A4:               Call 0.Method_Txt_Validate0 (CInt(8), var_A4, "0.00", var_108)
  loc_18F56AC:               var_A4.Text = var_C4
  loc_18F56B8:             End If
  loc_18F56CF:             var_A4 = var_98.Fields.Item("GuarAtt")
  loc_18F56DE:             Proc_6_39_E7D3A0(var_F8, CVar(var_A4))
  loc_18F56F5:             Set var_A8 = Me.Txt
  loc_18F56FB:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_C8, CStr(var_F8))
  loc_18F5703:             var_C8.Text = var_1F8
  loc_18F5726:             Set var_A0 = Me.Txt
  loc_18F572C:             Call 0.Method_Txt_Validate0 (CInt(3), var_A4)
  loc_18F573B:             var_F8 = Trim(CVar(var_A4))
  loc_18F5755:             If (var_F8 = vbNullString) Then
  loc_18F5791:               Set var_A8 = Me.Txt
  loc_18F5797:               Call 0.Method_Txt_Validate0 (CInt(3), var_C8)
  loc_18F579F:               var_C8.Text = CStr(var_98.Fields.Item("PartyName").Value)
  loc_18F57B5:             End If
  loc_18F57CC:             var_A4 = var_98.Fields.Item("CoverRate")
  loc_18F57DB:             Proc_6_39_E7D3A0(var_F8, CVar(var_A4))
  loc_18F57E3:             var_AC = CStr(var_F8)
  loc_18F57F2:             Set var_A8 = Me.Txt
  loc_18F57F8:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C8)
  loc_18F5826:             Set var_A0 = Me.Txt
  loc_18F582C:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_A4)
  loc_18F5834:             var_A4.Text = vbNullString
  loc_18F584E:             Set var_A8 = Me.Txt
  loc_18F5854:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C8)
  loc_18F5869:             var_22C = Val(var_AC)
  loc_18F587A:             Set var_A0 = Me.Txt
  loc_18F5880:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_A4, var_AC)
  loc_18F589B:             var_140 = CStr((Val(var_AC) * var_A4.Text))
  loc_18F58A7:             Set var_168 = Me.TextGt
  loc_18F58AD:             Call 0.Method_Txt_Validate0 (1, var_16C)
  loc_18F58B5:             var_16C.Text = var_140
  loc_18F58E0:             Set var_A0 = Me.Txt
  loc_18F58E6:             Call 0.Method_Txt_Validate0 (CInt(8), var_A4)
  loc_18F590A:             If (CDbl(Val(var_A4.Text)) > CDbl(0)) Then
  loc_18F5943:               Set var_A8 = Me.Txt
  loc_18F5949:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_C8)
  loc_18F5951:               var_C8.Text = Proc_6_38_E69628(CVar(var_98.Fields.Item("RectDate")))
  loc_18F598B:               Proc_6_39_E7D3A0(var_F8, CVar(var_98.Fields.Item("RectNo")))
  loc_18F59A2:               Set var_A8 = Me.Txt
  loc_18F59A8:               Call 0.Method_Txt_Validate0 (CInt(9), var_C8)
  loc_18F59B0:               var_C8.Text = CStr(var_F8)
  loc_18F59C8:             End If
  loc_18F59C8:           End If
  loc_18F59D6:           Me.FGrid.Redraw = True
  loc_18F59E4:           If (var_92 = 1) Then
  loc_18F59FA:             Me.FGrid.Rows = 1
  loc_18F5A20:             var_D8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_18F5A28:             Set var_A4 = Me.FGrid
  loc_18F5A55:             Me.FGrid.FixedRows = 1
  loc_18F5A5D:           End If
  loc_18F5A62:           Call Proc_210_88_1677324(&H32, FGrid.DispID_10000)
  loc_18F5A6C:           Call Proc_210_89_14E1210(&H32, var_D8)
  loc_18F5A74:         Else
  loc_18F5A7C:           If (var_9C = CInt(5)) Then
  loc_18F5A8A:             Set var_A0 = Me.Txt
  loc_18F5A90:             Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_18F5A98:             var_AC = "HallName"
  loc_18F5AB9:             If (Proc_6_27_EA61EC(var_A4, var_AC) = 0) Then
  loc_18F5AC7:               Set var_A0 = Me.Txt
  loc_18F5ACD:               Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_18F5AD5:               var_A4.SetFocus
  loc_18F5AE3:               arg_10 = &HFF
  loc_18F5AE6:               Exit Sub
  loc_18F5AE7:             End If
  loc_18F5B07:             var_B2 = Me.EOF
  loc_18F5B1B:             var_B4 = Me.BOF
  loc_18F5B35:             Set var_A0 = Me.Txt
  loc_18F5B3B:             Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_18F5B43:             ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (var_B4 = &HFF))) = var_A4.Text
  loc_18F5B5B:             If (arg_10 Or (var_AC = vbNullString)) Then
  loc_18F5B6B:               Set var_A0 = Me.Txt
  loc_18F5B71:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F5B79:               var_A4.Text = vbNullString
  loc_18F5B92:               Set var_A0 = Me.Txt
  loc_18F5B98:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F5BA0:               var_A4.Tag = vbNullString
  loc_18F5BAF:             Else
  loc_18F5BEA:               Set var_A8 = Me.Txt
  loc_18F5BF0:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F5BF8:               var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18F5C2B:               var_A4 = Me.Fields.Item("Code")
  loc_18F5C49:               Set var_A8 = Me.Txt
  loc_18F5C4F:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F5C57:               var_C8.Tag = CStr(var_A4.Value)
  loc_18F5C6D:             End If
  loc_18F5C70:           Else
  loc_18F5C78:             If Not (var_9C = CInt(&HF)) Then
  loc_18F5C83:               If (var_9C = CInt(&HE)) Then
  loc_18F5C86:               End If
  loc_18F5C93:               Set var_A0 = Me.Txt
  loc_18F5C99:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_18F5CB2:               Proc_6_40_EA5C80(CVar(Val(var_A4.Text)))
  loc_18F5CC6:               Set var_A8 = Me.Txt
  loc_18F5CCC:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_18F5CD4:               var_C8.Text = CStr(var_1D8)
  loc_18F5CF5:               Set var_A0 = Me.TxtGt
  loc_18F5CFB:               Call 0.Method_Txt_Validate8 (var_B2)
  loc_18F5D0D:               Set var_A4 = Me.TxtGt
  loc_18F5D13:               Call 0.Method_Txt_Validate0 (var_B2, var_A8)
  loc_18F5D32:               Set var_C8 = Me.TextGt
  loc_18F5D38:               Call 0.Method_Txt_Validate8 (var_B4)
  loc_18F5D4A:               Set var_168 = Me.TextGt
  loc_18F5D50:               Call 0.Method_Txt_Validate0 (var_B4, var_16C)
  loc_18F5D65:               var_244 = Val(var_16C.Text)
  loc_18F5D76:               Set var_194 = Me.Txt
  loc_18F5D7C:               Call 0.Method_Txt_Validate0 (CInt(&HF), var_198, var_140)
  loc_18F5D91:               var_24C = Val(var_140)
  loc_18F5DA2:               Set var_230 = Me.Txt
  loc_18F5DA8:               Call 0.Method_Txt_Validate0 (CInt(8), var_234, var_144)
  loc_18F5DBD:               var_254 = Val(var_144)
  loc_18F5DE4:               var_D8 = CVar((((Val(var_A8.Text) + var_198.Text) - var_234.Text) - var_254)) 'Double
  loc_18F5E02:               Set var_238 = Me.Txt
  loc_18F5E08:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_23C, CStr(Format(CVar(Val(var_A4.Text)), "0.00")), 1)
  loc_18F5E10:               var_23C.Text = 1
  loc_18F5E46:             End If
  loc_18F5E46:           End If
  loc_18F5E46:         End If
  loc_18F5E46:       End If
  loc_18F5E46:     End If
  loc_18F5E46:   End If
  loc_18F5E46: End If
  loc_18F5E4B: Set var_88 = Nothing
  loc_18F5E53: Set var_8C = Nothing
  loc_18F5E5B: Set var_98 = Nothing
  loc_18F5E5E: Exit Sub
  loc_18F5E5F: ' Referenced from: 18F340C
  loc_18F5E5F: Proc_6_60_E63754(var_254)
  loc_18F5E64: Exit Sub
End Sub

Public Function global_52Get() '56CBB0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '56CBBF
  global_52 = Value
End Sub

Public Function global_56Get() '56CBCE
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '56CBDD
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E7691C
  'Data Table: 56AA0C
  Dim Me As Recordset15
  loc_E768C6: Me.MoveFirst
  loc_E768F0: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E76910: If (Me.EOF = 0) Then
  loc_E76913:   Call Proc_210_77_18AF45C(var_9C)
  loc_E76918: End If
  loc_E76918: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94C98
  'Data Table: 56AA0C
  Dim Me As Recordset15
  loc_E94C26: On Error Goto loc_E94C8F
  loc_E94C2F: Me.MoveFirst
  loc_E94C59: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94C81: Proc_5_0_1107AD0(&HFF, Me, global_80)
  loc_E94C89: Call Proc_210_77_18AF45C(0)
  loc_E94C8E: Exit Sub
  loc_E94C8F: ' Referenced from: E94C26
  loc_E94C8F: Proc_6_60_E63754(var_A0)
  loc_E94C94: Exit Sub
End Sub

Public Sub Proc_210_74_1474930
  'Data Table: 56AA0C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_C4 As DataGrid
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_1473D2B: Me.FGrid.Left = CVar(CDbl(7260))
  loc_1473D46: Me.FGrid.Top = CVar(CDbl(1635))
  loc_1473D61: Me.FGrid.Height = CVar(CDbl(5700))
  loc_1473D7C: Me.FGrid.Width = CVar(CDbl(8005))
  loc_1473D97: Me.DGItem.Left = CVar(CDbl(7300))
  loc_1473DB6: var_94 = CVar((CDbl(Me.FGrid.Height) + CDbl(&HA))) 'Single
  loc_1473DBF: Set var_BC = Me.DGItem
  loc_1473DC5: var_BC.Top = CVar(CDbl(7300))
  loc_1473DE6: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_1473DFC: Set var_C4 = Me.Txt
  loc_1473E02: Call 0.Method_Proc_210_74_14749300 (CInt(3), var_C8)
  loc_1473E1D: Set var_A8 = Me.Txt
  loc_1473E23: Call 0.Method_Proc_210_74_14749300 (CInt(3), var_BC)
  loc_1473E3B: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1473E4A: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_1473E6A: Set var_A8 = Me.Txt
  loc_1473E70: Call 0.Method_Proc_210_74_14749300 (CInt(5), var_BC)
  loc_1473E8F: Me.DGHall.Left = CVar(var_BC.Left)
  loc_1473EAB: Set var_C4 = Me.Txt
  loc_1473EB1: Call 0.Method_Proc_210_74_14749300 (CInt(5), var_C8)
  loc_1473ECC: Set var_A8 = Me.Txt
  loc_1473ED2: Call 0.Method_Proc_210_74_14749300 (CInt(5), var_BC)
  loc_1473EEA: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1473EF9: Me.DGHall.Top = CVar(var_BC.Left)
  loc_1473F19: Set var_A8 = Me.Txt
  loc_1473F1F: Call 0.Method_Proc_210_74_14749300 (CInt(7), var_BC)
  loc_1473F3E: Me.DGBookNo.Left = CVar(var_BC.Left)
  loc_1473F5A: Set var_C4 = Me.Txt
  loc_1473F60: Call 0.Method_Proc_210_74_14749300 (CInt(7), var_C8)
  loc_1473F7B: Set var_A8 = Me.Txt
  loc_1473F81: Call 0.Method_Proc_210_74_14749300 (CInt(7), var_BC)
  loc_1473F99: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1473FA8: Me.DGBookNo.Top = CVar(var_BC.Left)
  loc_1473FC8: Set var_A8 = Me.Txt
  loc_1473FCE: Call 0.Method_Proc_210_74_14749300 (CInt(0), var_BC)
  loc_1473FED: Me.DGVType.Left = CVar(var_BC.Left)
  loc_1474009: Set var_C4 = Me.Txt
  loc_147400F: Call 0.Method_Proc_210_74_14749300 (CInt(0), var_C8)
  loc_147402A: Set var_A8 = Me.Txt
  loc_1474030: Call 0.Method_Proc_210_74_14749300 (CInt(0), var_BC)
  loc_1474048: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1474057: Me.DGVType.Top = CVar(var_BC.Left)
  loc_147406D: Set var_D4 = Me.FGrid
  loc_1474084: global_100 = CStr(CLng(var_D4.BackColor))
  loc_147409A: var_D4.Cols = &H15
  loc_14740A2: var_94 = CVar(CLng(0)) 'Long
  loc_14740A7: var_E8 = &H190
  loc_14740B3: LateIdCallSt
  loc_14740BB: var_94 = 0
  loc_14740C7: var_E8 = CVar(CLng(1)) 'Long
  loc_14740CC: var_108 = "Item Name"
  loc_14740D5: LateIdCallSt
  loc_14740E0: var_94 = CVar(CLng(1)) 'Long
  loc_14740EB: var_E8 = CVar(CInt(1)) 'Integer
  loc_14740F2: LateIdCallSt
  loc_14740FD: var_94 = CVar(CLng(1)) 'Long
  loc_1474102: var_E8 = &H9C4
  loc_147410E: LateIdCallSt
  loc_1474116: var_94 = 0
  loc_1474122: var_E8 = CVar(CLng(2)) 'Long
  loc_1474127: var_108 = "Remarks"
  loc_1474130: LateIdCallSt
  loc_147413B: var_94 = CVar(CLng(2)) 'Long
  loc_1474146: var_E8 = CVar(CInt(1)) 'Integer
  loc_147414D: LateIdCallSt
  loc_1474158: var_94 = CVar(CLng(2)) 'Long
  loc_147415D: var_E8 = &H61D
  loc_1474169: LateIdCallSt
  loc_1474171: var_94 = 0
  loc_147417D: var_E8 = CVar(CLng(3)) 'Long
  loc_1474182: var_108 = "Qty"
  loc_147418B: LateIdCallSt
  loc_1474196: var_94 = CVar(CLng(3)) 'Long
  loc_14741A1: var_E8 = CVar(CInt(7)) 'Integer
  loc_14741A8: LateIdCallSt
  loc_14741B3: var_94 = CVar(CLng(3)) 'Long
  loc_14741BE: var_E8 = CVar(CInt(7)) 'Integer
  loc_14741C5: LateIdCallSt
  loc_14741D0: var_94 = CVar(CLng(3)) 'Long
  loc_14741D5: var_E8 = &H46A
  loc_14741E1: LateIdCallSt
  loc_14741E9: var_94 = 0
  loc_14741F5: var_E8 = CVar(CLng(4)) 'Long
  loc_14741FA: var_108 = "Rate"
  loc_1474203: LateIdCallSt
  loc_147420E: var_94 = CVar(CLng(4)) 'Long
  loc_1474219: var_E8 = CVar(CInt(7)) 'Integer
  loc_1474220: LateIdCallSt
  loc_147422B: var_94 = CVar(CLng(4)) 'Long
  loc_1474236: var_E8 = CVar(CInt(7)) 'Integer
  loc_147423D: LateIdCallSt
  loc_1474248: var_94 = CVar(CLng(4)) 'Long
  loc_147424D: var_E8 = &H44C
  loc_1474259: LateIdCallSt
  loc_1474261: var_94 = 0
  loc_147426D: var_E8 = CVar(CLng(6)) 'Long
  loc_1474272: var_108 = "%"
  loc_147427B: LateIdCallSt
  loc_1474286: var_94 = CVar(CLng(6)) 'Long
  loc_1474291: var_E8 = CVar(CInt(7)) 'Integer
  loc_1474298: LateIdCallSt
  loc_14742A3: var_94 = CVar(CLng(6)) 'Long
  loc_14742AE: var_E8 = CVar(CInt(7)) 'Integer
  loc_14742B5: LateIdCallSt
  loc_14742C0: var_94 = CVar(CLng(6)) 'Long
  loc_14742C5: var_E8 = 0
  loc_14742D1: LateIdCallSt
  loc_14742D9: var_94 = 0
  loc_14742E5: var_E8 = CVar(CLng(7)) 'Long
  loc_14742EA: var_108 = "Tax"
  loc_14742F3: LateIdCallSt
  loc_14742FE: var_94 = CVar(CLng(7)) 'Long
  loc_1474309: var_E8 = CVar(CInt(7)) 'Integer
  loc_1474310: LateIdCallSt
  loc_147431B: var_94 = CVar(CLng(7)) 'Long
  loc_1474326: var_E8 = CVar(CInt(7)) 'Integer
  loc_147432D: LateIdCallSt
  loc_1474338: var_94 = CVar(CLng(7)) 'Long
  loc_147433D: var_E8 = 0
  loc_1474349: LateIdCallSt
  loc_1474351: var_94 = 0
  loc_147435D: var_E8 = CVar(CLng(5)) 'Long
  loc_1474362: var_108 = "Amount"
  loc_147436B: LateIdCallSt
  loc_1474376: var_94 = CVar(CLng(5)) 'Long
  loc_1474381: var_E8 = CVar(CInt(7)) 'Integer
  loc_1474388: LateIdCallSt
  loc_1474393: var_94 = CVar(CLng(5)) 'Long
  loc_147439E: var_E8 = CVar(CInt(7)) 'Integer
  loc_14743A5: LateIdCallSt
  loc_14743B0: var_94 = CVar(CLng(5)) 'Long
  loc_14743B5: var_E8 = &H46A
  loc_14743C1: LateIdCallSt
  loc_14743C9: var_94 = 0
  loc_14743D5: var_E8 = CVar(CLng(8)) 'Long
  loc_14743DA: var_108 = "Total"
  loc_14743E3: LateIdCallSt
  loc_14743EE: var_94 = CVar(CLng(8)) 'Long
  loc_14743F9: var_E8 = CVar(CInt(7)) 'Integer
  loc_1474400: LateIdCallSt
  loc_147440B: var_94 = CVar(CLng(8)) 'Long
  loc_1474416: var_E8 = CVar(CInt(7)) 'Integer
  loc_147441D: LateIdCallSt
  loc_1474428: var_94 = CVar(CLng(8)) 'Long
  loc_147442D: var_E8 = 0
  loc_1474439: LateIdCallSt
  loc_1474444: var_94 = CVar(CLng(9)) 'Long
  loc_1474449: var_E8 = 0
  loc_1474455: LateIdCallSt
  loc_1474460: var_94 = CVar(CLng(&HA)) 'Long
  loc_1474465: var_E8 = 0
  loc_1474471: LateIdCallSt
  loc_147447C: var_94 = CVar(CLng(&HB)) 'Long
  loc_1474481: var_E8 = 0
  loc_147448D: LateIdCallSt
  loc_1474498: var_94 = CVar(CLng(&HC)) 'Long
  loc_147449D: var_E8 = 0
  loc_14744A9: LateIdCallSt
  loc_14744B4: var_94 = CVar(CLng(&HD)) 'Long
  loc_14744B9: var_E8 = 0
  loc_14744C5: LateIdCallSt
  loc_14744D0: var_94 = CVar(CLng(&HF)) 'Long
  loc_14744D5: var_E8 = 0
  loc_14744E1: LateIdCallSt
  loc_14744EC: var_94 = CVar(CLng(&HE)) 'Long
  loc_14744F1: var_E8 = 0
  loc_14744FD: LateIdCallSt
  loc_1474508: var_94 = CVar(CLng(&H10)) 'Long
  loc_147450D: var_E8 = 0
  loc_1474519: LateIdCallSt
  loc_1474524: var_94 = CVar(CLng(&H11)) 'Long
  loc_1474529: var_E8 = 0
  loc_1474535: LateIdCallSt
  loc_1474540: var_94 = CVar(CLng(&H12)) 'Long
  loc_1474545: var_E8 = 0
  loc_1474551: LateIdCallSt
  loc_147455C: var_94 = CVar(CLng(&H13)) 'Long
  loc_1474561: var_E8 = 0
  loc_147456D: LateIdCallSt
  loc_1474578: var_94 = CVar(CLng(&H14)) 'Long
  loc_147457D: var_E8 = 0
  loc_1474589: LateIdCallSt
  loc_1474593: Set var_D4 = Nothing 
  loc_147459B: Set var_11C = Me.FGCat
  loc_14745B2: global_100 = CStr(CLng(var_11C.BackColor))
  loc_14745BF: var_94 = CVar(CLng(3)) 'Long
  loc_14745C4: var_E8 = &H7D0
  loc_14745D0: LateIdCallSt
  loc_14745E4: var_11C.Cols = 8
  loc_14745EB: Set var_11C = Nothing 
  loc_1474602: Me.FGrid1.Cols = 8
  loc_1474607: var_94 = 0
  loc_1474610: var_E8 = 0
  loc_1474619: var_108 = "SNo"
  loc_1474622: LateIdCallSt
  loc_147462A: var_94 = 0
  loc_1474639: var_E8 = CVar(CInt(1)) 'Integer
  loc_1474640: LateIdCallSt
  loc_1474648: var_94 = 0
  loc_1474657: var_E8 = CVar(CInt(1)) 'Integer
  loc_147465E: LateIdCallSt
  loc_1474666: var_94 = 0
  loc_147466F: var_E8 = &H1C2
  loc_147467B: LateIdCallSt
  loc_1474683: var_94 = 0
  loc_147468C: var_E8 = 1
  loc_1474695: var_108 = "Venue Name"
  loc_147469E: LateIdCallSt
  loc_14746A6: var_94 = 1
  loc_14746B5: var_E8 = CVar(CInt(1)) 'Integer
  loc_14746BC: LateIdCallSt
  loc_14746C4: var_94 = 1
  loc_14746D3: var_E8 = CVar(CInt(1)) 'Integer
  loc_14746DA: LateIdCallSt
  loc_14746E2: var_94 = 1
  loc_14746EB: var_E8 = &H960
  loc_14746F7: LateIdCallSt
  loc_14746FF: var_94 = 0
  loc_1474708: var_E8 = 2
  loc_1474711: var_108 = "Date From"
  loc_147471A: LateIdCallSt
  loc_1474722: var_94 = 2
  loc_1474731: var_E8 = CVar(CInt(1)) 'Integer
  loc_1474738: LateIdCallSt
  loc_1474740: var_94 = 2
  loc_147474F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1474756: LateIdCallSt
  loc_147475E: var_94 = 2
  loc_1474767: var_E8 = &H47E
  loc_1474773: LateIdCallSt
  loc_147477B: var_94 = 0
  loc_1474784: var_E8 = 3
  loc_147478D: var_108 = "TimeFrom"
  loc_1474796: LateIdCallSt
  loc_147479E: var_94 = 3
  loc_14747AD: var_E8 = CVar(CInt(1)) 'Integer
  loc_14747B4: LateIdCallSt
  loc_14747BC: var_94 = 3
  loc_14747CB: var_E8 = CVar(CInt(1)) 'Integer
  loc_14747D2: LateIdCallSt
  loc_14747DA: var_94 = 3
  loc_14747E3: var_E8 = &H3E8
  loc_14747EF: LateIdCallSt
  loc_14747F7: var_94 = 0
  loc_1474800: var_E8 = 4
  loc_1474809: var_108 = "Date To"
  loc_1474812: LateIdCallSt
  loc_147481A: var_94 = 4
  loc_1474829: var_E8 = CVar(CInt(1)) 'Integer
  loc_1474830: LateIdCallSt
  loc_1474838: var_94 = 4
  loc_1474847: var_E8 = CVar(CInt(1)) 'Integer
  loc_147484E: LateIdCallSt
  loc_1474856: var_94 = 4
  loc_147485F: var_E8 = &H47E
  loc_147486B: LateIdCallSt
  loc_1474873: var_94 = 0
  loc_147487C: var_E8 = 5
  loc_1474885: var_108 = "Time To"
  loc_147488E: LateIdCallSt
  loc_1474896: var_94 = 5
  loc_14748A5: var_E8 = CVar(CInt(1)) 'Integer
  loc_14748AC: LateIdCallSt
  loc_14748B4: var_94 = 5
  loc_14748C3: var_E8 = CVar(CInt(1)) 'Integer
  loc_14748CA: LateIdCallSt
  loc_14748D2: var_94 = 5
  loc_14748DB: var_E8 = &H384
  loc_14748E7: LateIdCallSt
  loc_14748EF: var_94 = 6
  loc_14748F8: var_E8 = 0
  loc_1474904: LateIdCallSt
  loc_147490C: var_94 = 7
  loc_1474915: var_E8 = 0
  loc_1474921: LateIdCallSt
  loc_147492B: Set var_120 = Nothing 
  loc_147492F: Exit Sub
End Sub

Public Sub Proc_210_75_E43D08
  'Data Table: 56AA0C
  loc_E43CE4: Set var_88 = Me.topCtrl1
  loc_E43CEA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E43D03: If (CStr() = "Browse") Then
  loc_E43D06:   Exit Sub
  loc_E43D07: End If
  loc_E43D07: Exit Sub
End Sub

Public Sub Proc_210_76_1422338(arg_C) '1422338
  'Data Table: 56AA0C
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
  Dim var_130 As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_18C As Variant
  Dim var_92 As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_14218C0: If (arg_C = 0) Then
  loc_14218D6:   var_AC = CLng(Me.FGrid.Col)
  loc_14218E6:   If (var_AC = CLng(1)) Then
  loc_1421909:     var_B2 = Me.EOF
  loc_1421937:     Set var_98 = Me.TxtGrid
  loc_142193D:     Call 0.Method_Proc_210_76_14223380 (arg_C, var_B8, var_BC)
  loc_1421945:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_142195D:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_1421973:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142197B:       var_EC = CVar(CLng(1)) 'Long
  loc_1421980:       var_10C = vbNullString
  loc_142198A:       Set var_B8 = Me.FGrid
  loc_1421990:       LateIdCallSt
  loc_14219B5:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14219BD:       var_EC = CVar(CLng(9)) 'Long
  loc_14219C2:       var_10C = vbNullString
  loc_14219CC:       Set var_B8 = Me.FGrid
  loc_14219D2:       LateIdCallSt
  loc_14219F7:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14219FF:       var_EC = CVar(CLng(4)) 'Long
  loc_1421A04:       var_10C = vbNullString
  loc_1421A0E:       Set var_B8 = Me.FGrid
  loc_1421A14:       LateIdCallSt
  loc_1421A39:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421A41:       var_EC = CVar(CLng(&HA)) 'Long
  loc_1421A46:       var_10C = vbNullString
  loc_1421A50:       Set var_B8 = Me.FGrid
  loc_1421A56:       LateIdCallSt
  loc_1421A6B:     Else
  loc_1421A6E:       Call Proc_210_86_FC1C18(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_1421A79:       If (var_B2 = 0) Then
  loc_1421A81:         Proc_210_76_1422338 = 0
  loc_1421A87:       End If
  loc_1421AA0:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421AA8:       var_EC = CVar(CLng(9)) 'Long
  loc_1421AC2:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1421AE0:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421AE8:       var_150 = CVar(CLng(9)) 'Long
  loc_1421B02:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_1421B6D:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1421B84:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1421BA0:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421BA8:         var_FC = CVar(CLng(1)) 'Long
  loc_1421BDB:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1421BE3:         Set var_164 = Me.FGrid
  loc_1421BE9:         LateIdCallSt
  loc_1421C18:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421C20:         var_FC = CVar(CLng(9)) 'Long
  loc_1421C53:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1421C5B:         Set var_164 = Me.FGrid
  loc_1421C61:         LateIdCallSt
  loc_1421C90:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421C98:         var_EC = CVar(CLng(3)) 'Long
  loc_1421CB2:         var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1421CD0:         If (CDbl(Val(var_BC)) <= CDbl(0)) Then
  loc_1421D05:           var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421D0D:           var_10C = CVar(CLng(4)) 'Long
  loc_1421D21:           var_12C = "0.00"
  loc_1421D3A:           var_18C = CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), var_12C))) 'String
  loc_1421D42:           Set var_164 = Me.FGrid
  loc_1421D48:           LateIdCallSt
  loc_1421D66:         End If
  loc_1421D6A:         var_CC = CVar(CLng(var_92)) 'Long
  loc_1421D7C:         var_A8 = CVar(CStr(var_92)) 'String
  loc_1421D84:         Set var_98 = Me.FGrid
  loc_1421D8A:         LateIdCallSt
  loc_1421DCA:         var_98 = Me.Fields
  loc_1421DE1:         Proc_6_39_E7D3A0(var_12C, CVar(var_98.Item("TaxStru")), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), var_98, CVar(var_98.Item("TaxStru")), CVar(CLng(0)))
  loc_1421DEA:         var_174 = CVar(CStr(var_12C)) 'String
  loc_1421DF2:         Set var_164 = Me.FGrid
  loc_1421DF8:         LateIdCallSt
  loc_1421E27:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421E2F:         var_FC = CVar(CLng(&HA)) 'Long
  loc_1421E62:         var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1421E6A:         Set var_164 = Me.FGrid
  loc_1421E70:         LateIdCallSt
  loc_1421E9F:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421EA7:         var_FC = CVar(CLng(&HD)) 'Long
  loc_1421EDA:         var_140 = CVar(CStr(Me.Fields.Item("DiscApp").Value)) 'String
  loc_1421EE2:         Set var_164 = Me.FGrid
  loc_1421EE8:         LateIdCallSt
  loc_1421F36:         var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1421F3E:         var_10C = CVar(CLng(&H11)) 'Long
  loc_1421F79:         LateIdCallSt
  loc_1421FD3:         var_12C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H12)), CVar(CLng(var_92)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("RateEdit")), "0.00"))), 1, 1)) 'String
  loc_1421FDB:         Set var_130 = Me.FGrid
  loc_1421FE1:         LateIdCallSt
  loc_1421FFB:         Set var_130 = Me.FGrid
  loc_1422001:         var_140 = var_130.Row
  loc_1422031:         var_B8 = Me.Fields.Item("SChrgApp")
  loc_1422040:         Proc_6_39_E7D3A0(var_12C, CVar(var_B8), CVar(CLng(&H13)), CVar(CLng(var_140)), var_130, var_12C)
  loc_1422049:         var_174 = CVar(CStr(var_12C)) 'String
  loc_1422051:         Set var_164 = Me.FGrid
  loc_1422057:         LateIdCallSt
  loc_1422073:       End If
  loc_1422073:     End If
  loc_1422073:     Call Proc_210_83_1153D04(var_164, var_174, var_10C, var_EC)
  loc_142207B:   Else
  loc_1422082:     If (var_AC = CLng(2)) Then
  loc_14220B1:       Set var_98 = Me.TxtGrid
  loc_14220B7:       Call 0.Method_Proc_210_76_14223380 (0, var_B8, var_BC, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_14220BF:       var_164 = var_B8.Text
  loc_14220C7:       var_12C = CVar(var_BC) 'String
  loc_14220CF:       Set var_164 = Me.FGrid
  loc_14220D5:       LateIdCallSt
  loc_14220F2:     Else
  loc_14220F9:       If (var_AC = CLng(3)) Then
  loc_1422106:         Set var_98 = Me.TxtGrid
  loc_142210C:         Call 0.Method_Proc_210_76_14223380 (arg_C, var_B8, var_164, var_12C)
  loc_1422124:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_142212B:           var_BC = CStr(0)
  loc_1422138:           Set var_98 = Me.TxtGrid
  loc_142213E:           Call 0.Method_Proc_210_76_14223380 (arg_C, var_B8, var_BC)
  loc_1422146:           var_B8.Text = var_140
  loc_1422155:         End If
  loc_1422162:         Set var_98 = Me.TxtGrid
  loc_1422168:         Call 0.Method_Proc_210_76_14223380 (arg_C, var_B8, var_BC)
  loc_1422170:         var_FC = var_B8.Text
  loc_1422188:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14221DA:         LateIdCallSt
  loc_14221FE:         Call Proc_210_83_1153D04(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_1422208:         Call Proc_210_88_1677324(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_1422210:       Else
  loc_1422217:         If (var_AC = CLng(4)) Then
  loc_1422224:           Set var_98 = Me.TxtGrid
  loc_142222A:           Call 0.Method_Proc_210_76_14223380 (arg_C, var_B8)
  loc_1422242:           If Not(IsNumeric(CVar(var_B8))) Then
  loc_1422256:             Set var_98 = Me.TxtGrid
  loc_142225C:             Call 0.Method_Proc_210_76_14223380 (arg_C, var_B8, CStr(0))
  loc_1422264:             var_B8.Text = var_DC
  loc_1422273:           End If
  loc_1422280:           Set var_98 = Me.TxtGrid
  loc_1422286:           Call 0.Method_Proc_210_76_14223380 (arg_C, var_B8)
  loc_14222A6:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14222F8:           LateIdCallSt
  loc_142231C:           Call Proc_210_83_1153D04(Me.FGrid, CVar(CStr(Format(CVar(var_B8.Text), "0.00"))), 1, 1)
  loc_1422326:           Call Proc_210_88_1677324(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_142232B:         End If
  loc_142232B:       End If
  loc_142232B:     End If
  loc_142232B:   End If
  loc_142232B: End If
  loc_1422330: Proc_210_76_1422338 = &HFF
End Sub

Public Sub Proc_210_77_18AF45C
  'Data Table: 56AA0C
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_56AA2C As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_140 As Variant
  Dim var_114 As Variant
  Dim var_130 As String
  Dim var_194 As Fields15
  Dim var_1DC As String
  Dim var_1E0 As Label
  Dim var_1EC As Recordset15
  Dim var_12C As Variant
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_124 As Variant
  Dim var_200 As Double
  Dim var_208 As Double
  Dim var_1A8 As Variant
  Dim var_210 As Double
  Dim var_1F8 As TextBox
  Dim var_8E As Integer
  Dim var_218 As TextBox
  Dim Proc_210_77_18AF45C2 As Variant
  Dim var_234 As TextBox
  loc_18ACC5C: On Error Goto loc_18AF455
  loc_18ACC76: If (Me.RecordCount > 0) Then
  loc_18ACCCF:   unk_56AA2C.Execute CStr("Select S.* From HallSale1Est S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_18ACCDA:   Set var_88 = var_128
  loc_18ACD2E:   var_128 = var_88.Fields
  loc_18ACD97:   var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_18ACDDC:   Me.LblUser.Caption = CStr(var_128 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_18ACE56:   var_12C = var_88.Fields.Item("U_AE")
  loc_18ACEB7:   var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C)) = "E"), "Last Update : ", "entdt : "))
  loc_18ACED6:   var_1A8 = var_88.Fields.Item("U_EntDt")
  loc_18ACEFC:   Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_1A8))))
  loc_18ACF37:   Set var_1EC = var_88 
  loc_18ACF74:   Set var_128 = Me.Txt
  loc_18ACF7A:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(4), var_12C)
  loc_18ACF82:   var_12C.Text = CStr(var_1EC.Fields.Item("DocID").Value)
  loc_18ACFB2:   var_B0 = var_1EC.Fields.Item("vType")
  loc_18ACFC3:   var_104 = CStr(var_B0.Value)
  loc_18ACFD1:   Set var_128 = Me.Txt
  loc_18ACFD7:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(0), var_12C)
  loc_18ACFDF:   var_12C.Tag = var_104
  loc_18AD013:   Set var_9C = Me.Txt
  loc_18AD019:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(0), var_B0, var_104, "Select Description,NCAT From Voucher_Type Where V_Type='")
  loc_18AD021:   var_C0 = var_B0.Tag
  loc_18AD02A:   var_130 = -1 & var_104
  loc_18AD03A:   unk_56AA2C.Execute Proc_6_38_E69628(CVar(var_12C)) & "'", var_128, 
  loc_18AD045:   Set var_94 = var_128
  loc_18AD071:   If (var_94.RecordCount > 0) Then
  loc_18AD0A2:     global_120 = Proc_6_38_E69628(CVar(var_94.Fields.Item("NCat")))
  loc_18AD0E5:     Set var_128 = Me.Txt
  loc_18AD0EB:     Call 0.Method_Proc_210_77_18AF45C0 (CInt(0), var_12C)
  loc_18AD0F3:     var_12C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Description")))
  loc_18AD107:   End If
  loc_18AD140:   Set var_128 = Me.Txt
  loc_18AD146:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(1), var_12C)
  loc_18AD14E:   var_12C.Text = CStr(var_1EC.Fields.Item("VNo").Value)
  loc_18AD1B6:   Set var_128 = Me.Txt
  loc_18AD1BC:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(2), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_18AD1C4:   var_12C.Text = 1
  loc_18AD216:   Me.LblVPrefix.Caption = CStr(var_1EC.Fields.Item("vPrefix").Value)
  loc_18AD263:   Set var_128 = Me.Txt
  loc_18AD269:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(3), var_12C)
  loc_18AD271:   var_12C.Text = CStr(var_1EC.Fields.Item("Party").Value)
  loc_18AD2A1:   var_B0 = var_1EC.Fields.Item("Party")
  loc_18AD2B2:   var_104 = CStr(var_B0.Value)
  loc_18AD2C0:   Set var_128 = Me.Txt
  loc_18AD2C6:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(3), var_12C)
  loc_18AD2CE:   var_12C.Tag = var_104
  loc_18AD302:   Set var_9C = Me.Txt
  loc_18AD308:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(3), var_B0, var_104, "Select Name From SubGroup Where SubCode='")
  loc_18AD310:   var_C0 = var_B0.Tag
  loc_18AD319:   var_130 = -1 & var_104
  loc_18AD329:   unk_56AA2C.Execute Proc_6_38_E69628(CVar(var_12C)) & "'", var_128, 1
  loc_18AD334:   Set var_8C = var_128
  loc_18AD360:   If (var_8C.RecordCount > 0) Then
  loc_18AD399:     Set var_128 = Me.Txt
  loc_18AD39F:     Call 0.Method_Proc_210_77_18AF45C0 (CInt(3), var_12C)
  loc_18AD3A7:     var_12C.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")))
  loc_18AD3BB:   End If
  loc_18AD3E3:   var_104 = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("RestCode")))
  loc_18AD3F1:   Set var_128 = Me.Txt
  loc_18AD3F7:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(5), var_12C)
  loc_18AD3FF:   var_12C.Tag = var_104
  loc_18AD42D:   var_B0 = var_1EC.Fields.Item("RestCode")
  loc_18AD44F:   If CBool(var_B0.Value <> vbNullString) Then
  loc_18AD470:     Set var_9C = Me.Txt
  loc_18AD476:     Call 0.Method_Proc_210_77_18AF45C0 (CInt(5), var_B0, var_104, "Select Name From Depart Where Code='")
  loc_18AD47E:     var_C0 = var_B0.Tag
  loc_18AD487:     var_130 = -1 & var_104
  loc_18AD48E:     var_1DC = Proc_6_38_E69628(CVar(var_12C)) & "'"
  loc_18AD497:     unk_56AA2C.Execute var_1DC, var_128, 
  loc_18AD4A2:     Set var_94 = var_128
  loc_18AD4CE:     If (var_94.RecordCount > 0) Then
  loc_18AD507:       Set var_128 = Me.Txt
  loc_18AD50D:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(5), var_12C)
  loc_18AD515:       var_12C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Name")))
  loc_18AD529:     End If
  loc_18AD529:   End If
  loc_18AD55F:   Set var_128 = Me.Txt
  loc_18AD565:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(7), var_12C)
  loc_18AD56D:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("BOOKDOCID")))
  loc_18AD5D2:   Set var_128 = Me.Txt
  loc_18AD5D8:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(7), var_12C)
  loc_18AD5E0:   var_12C.Text = Proc_6_38_E69628(Trim(Right(CVar(var_1EC.Fields.Item("BOOKDOCID")), 8)))
  loc_18AD64C:   Set var_128 = Me.Txt
  loc_18AD652:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&H15), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("ToBookDate")), "DD/MMM/YYYY")))
  loc_18AD65A:   var_12C.Text = 1
  loc_18AD6C5:   Set var_128 = Me.txtM
  loc_18AD6CB:   Call 0.Method_Proc_210_77_18AF45C0 (1, var_12C, CVar(CStr(Format(CVar(var_1EC.Fields.Item("FrBookTime")), "hh:mm"))))
  loc_18AD6D3:   var_12C.defaultText = 1
  loc_18AD73E:   Set var_128 = Me.Txt
  loc_18AD744:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(6), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("FrBookDate")), "DD/MMM/YYYY")), 1)
  loc_18AD74C:   var_12C.Text = 1
  loc_18AD791:   var_E0 = "hh:mm"
  loc_18AD7AA:   var_124 = CVar(CStr(Format(CVar(var_1EC.Fields.Item("ToBookTime")), var_E0))) 'String
  loc_18AD7B7:   Set var_128 = Me.txtM
  loc_18AD7BD:   Call 0.Method_Proc_210_77_18AF45C0 (0, var_12C, var_124, 1)
  loc_18AD7C5:   var_12C.defaultText = 1
  loc_18AD814:   Set var_128 = Me.Txt
  loc_18AD81A:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&H13), var_12C)
  loc_18AD822:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Remarks")), 1)
  loc_18AD85C:   Proc_6_39_E7D3A0(var_E0, CVar(var_1EC.Fields.Item("NoofPax")))
  loc_18AD873:   Set var_128 = Me.Txt
  loc_18AD879:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&H11), var_12C)
  loc_18AD881:   var_12C.Text = CStr(var_E0)
  loc_18AD8BF:   Proc_6_39_E7D3A0(var_E0, CVar(var_1EC.Fields.Item("RatePerPax")))
  loc_18AD8D6:   Set var_128 = Me.Txt
  loc_18AD8DC:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&H12), var_12C)
  loc_18AD8E4:   var_12C.Text = CStr(var_E0)
  loc_18AD927:   var_E0 = "0.00"
  loc_18AD94E:   Set var_128 = Me.Txt
  loc_18AD954:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(8), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Advance")), var_E0)))
  loc_18AD95C:   var_12C.Text = 1
  loc_18AD99C:   Proc_6_39_E7D3A0(var_E0, CVar(var_1EC.Fields.Item("RectNo")))
  loc_18AD9B3:   Set var_128 = Me.Txt
  loc_18AD9B9:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(9), var_12C, CStr(var_E0))
  loc_18AD9C1:   var_12C.Text = 1
  loc_18ADA2B:   Set var_128 = Me.Txt
  loc_18ADA31:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&HA), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("RectDate")), "DD/MMM/YYYY")))
  loc_18ADA39:   var_12C.Text = 1
  loc_18ADA89:   Set var_128 = Me.Txt
  loc_18ADA8F:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&HC), var_12C)
  loc_18ADA97:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("CrCardHoldER")), 1)
  loc_18ADAE1:   Set var_128 = Me.Txt
  loc_18ADAE7:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&HB), var_12C)
  loc_18ADAEF:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("CrCardNo")))
  loc_18ADB1A:   var_B0 = var_1EC.Fields.Item("Narration")
  loc_18ADB39:   Set var_128 = Me.Txt
  loc_18ADB3F:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&H18), var_12C)
  loc_18ADB5D:   Set var_1EC = Nothing 
  loc_18ADB6D:   Set var_9C = Me.TxtGt
  loc_18ADB73:   Call 0.Method_Proc_210_77_18AF45C8 (var_1EE, var_8E)
  loc_18ADB7E:   For var_1F2 = 1 To var_1EE: 2 = var_1F2 'Integer
  loc_18ADB91:     Set var_9C = Me.LblCap
  loc_18ADB97:     Call 0.Method_Proc_210_77_18AF45C0 (var_8E, var_B0)
  loc_18ADBB6:     If (var_B0.Tag = "SNET") Then
  loc_18ADBC6:       Set var_9C = Me.TxtGt
  loc_18ADBCC:       Call 0.Method_Proc_210_77_18AF45C0 (var_8E, var_B0)
  loc_18ADBE1:       var_200 = Val(var_B0.Text)
  loc_18ADBF2:       Set var_128 = Me.Txt
  loc_18ADBF8:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(&HF), var_12C, Proc_6_38_E69628(CVar(var_12C)))
  loc_18ADC0D:       var_208 = Val(Proc_6_38_E69628(CVar(var_12C)))
  loc_18ADC1E:       Set var_194 = Me.Txt
  loc_18ADC24:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(8), var_1A8, var_1DC)
  loc_18ADC5C:       var_C0 = CVar((Proc_6_38_E69628(CVar(var_B0)) - (var_1A8.Text + Val(var_1DC)))) 'Double
  loc_18ADC7A:       Set var_1E0 = Me.Txt
  loc_18ADC80:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(&H10), var_1F8, CStr(Format(CVar(var_B0), "0.00")), 1)
  loc_18ADC88:       var_1F8.Text = 1
  loc_18ADCB4:     End If
  loc_18ADCB7:   Next var_1F2 'Integer
  loc_18ADCCA:   Set var_9C = Me.Txt
  loc_18ADCD0:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(2), var_B0)
  loc_18ADCE6:   Call Proc_210_87_1A86564(CDate(var_B0.Text))
  loc_18ADD4B:   unk_56AA2C.Execute CStr("Select S.* From SunTranEst S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_124, -1
  loc_18ADD56:   Set var_88 = var_128
  loc_18ADD84:   If (var_88.RecordCount > 0) Then
  loc_18ADD87:     ' Referenced from: 18AE220
  loc_18ADD96:     If Not(var_88.EOF) Then
  loc_18ADDF9:       Set var_194 = Me.LblCap
  loc_18ADDFF:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18ADE07:       var_1A8.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_18ADE85:       Set var_194 = Me.TxtPer
  loc_18ADE8B:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18ADE93:       var_1A8.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_18ADF11:       Set var_194 = Me.LblCap
  loc_18ADF17:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18ADF1F:       var_1A8.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_18ADF9D:       Set var_194 = Me.LblAt
  loc_18ADFA3:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18ADFAB:       var_1A8.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_18AE029:       Set var_194 = Me.TxtGt
  loc_18AE02F:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AE037:       var_1A8.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_18AE0B5:       Set var_194 = Me.TxtPer
  loc_18AE0BB:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AE0C3:       var_1A8.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_18AE11F:       var_124 = var_88.Fields.Item("SNo").Value
  loc_18AE133:       var_E0 = "0.00"
  loc_18AE15A:       Set var_194 = Me.TxtGt
  loc_18AE160:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_124), var_1A8, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E0)))
  loc_18AE168:       var_1A8.Text = 1
  loc_18AE1AE:       Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_18AE1CF:       var_128 = var_88.Fields
  loc_18AE1EC:       Set var_194 = Me.LblDummy
  loc_18AE1F2:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_128.Item("SNo").Value), var_1A8, CStr(var_E0))
  loc_18AE1FA:       var_1A8.Caption = 1
  loc_18AE21B:       var_88.MoveNext
  loc_18AE220:       GoTo loc_18ADD87
  loc_18AE223:     End If
  loc_18AE223:   End If
  loc_18AE279:   unk_56AA2C.Execute CStr("Select S.* From SunTranHEst S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_124, -1
  loc_18AE284:   Set var_88 = var_128
  loc_18AE2B2:   If (var_88.RecordCount > 0) Then
  loc_18AE2B5:     ' Referenced from: 18AE74E
  loc_18AE2C4:     If Not(var_88.EOF) Then
  loc_18AE30A:       var_128 = var_88.Fields
  loc_18AE327:       Set var_194 = Me.LableCap
  loc_18AE32D:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_128.Item("SNo").Value), var_1A8, CStr(var_88.Fields.Item("SunCode").Value))
  loc_18AE335:       var_1A8.Tag = var_128
  loc_18AE3B3:       Set var_194 = Me.TextPer
  loc_18AE3B9:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AE3C1:       var_1A8.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_18AE43F:       Set var_194 = Me.LableCap
  loc_18AE445:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AE44D:       var_1A8.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_18AE4CB:       Set var_194 = Me.LableAt
  loc_18AE4D1:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AE4D9:       var_1A8.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_18AE557:       Set var_194 = Me.TextGt
  loc_18AE55D:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AE565:       var_1A8.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_18AE5E3:       Set var_194 = Me.TextPer
  loc_18AE5E9:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_18AE5F1:       var_1A8.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_18AE64D:       var_124 = var_88.Fields.Item("SNo").Value
  loc_18AE661:       var_E0 = "0.00"
  loc_18AE688:       Set var_194 = Me.TextGt
  loc_18AE68E:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_124), var_1A8, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E0)))
  loc_18AE696:       var_1A8.Text = 1
  loc_18AE6DC:       Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_18AE6FD:       var_128 = var_88.Fields
  loc_18AE71A:       Set var_194 = Me.LableDummy
  loc_18AE720:       Call 0.Method_Proc_210_77_18AF45C0 (CInt(var_128.Item("SNo").Value), var_1A8, CStr(var_E0))
  loc_18AE728:       var_1A8.Caption = 1
  loc_18AE749:       var_88.MoveNext
  loc_18AE74E:       GoTo loc_18AE2B5
  loc_18AE751:     End If
  loc_18AE751:   End If
  loc_18AE760:   Me.FGrid.Redraw = False
  loc_18AE77B:   Me.FGrid.Rows = 1
  loc_18AE785:   var_8E = 1
  loc_18AE795:   var_D0 = "Select S.*,I.Name as ItemName From HallStockEst S Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode Where S.DocId='"
  loc_18AE7D4:   var_104 = CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "'")
  loc_18AE7DE:   unk_56AA2C.Execute var_104, var_124, -1
  loc_18AE7E9:   Set var_88 = var_128
  loc_18AE817:   If (var_88.RecordCount > 0) Then
  loc_18AE81A:     ' Referenced from: 18AECB9
  loc_18AE829:     If Not(var_88.EOF) Then
  loc_18AE82C:       var_AC = vbNullString
  loc_18AE836:       Set var_9C = Me.FGrid
  loc_18AE84B:       Set var_214 = Me.FGrid
  loc_18AE852:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_18AE85A:       var_114 = CVar(CLng(0)) 'Long
  loc_18AE88A:       var_E0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18AE891:       LateIdCallSt
  loc_18AE8AB:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_18AE8B3:       var_114 = CVar(CLng(9)) 'Long
  loc_18AE8E3:       var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_18AE8EA:       LateIdCallSt
  loc_18AE939:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_214, var_E0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_18AE940:       LateIdCallSt
  loc_18AE972:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AE97A:       var_140 = CVar(CLng(3)) 'Long
  loc_18AE9A7:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_18AE9AE:       LateIdCallSt
  loc_18AE9E4:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AE9EC:       var_140 = CVar(CLng(4)) 'Long
  loc_18AEA19:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_18AEA20:       LateIdCallSt
  loc_18AEA56:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AEA5E:       var_140 = CVar(CLng(5)) 'Long
  loc_18AEA8B:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_18AEA92:       LateIdCallSt
  loc_18AEAC8:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AEAD0:       var_140 = CVar(CLng(7)) 'Long
  loc_18AEAFD:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_18AEB04:       LateIdCallSt
  loc_18AEB3A:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AEB42:       var_140 = CVar(CLng(6)) 'Long
  loc_18AEB6F:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_18AEB76:       LateIdCallSt
  loc_18AEBAC:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AEBE8:       LateIdCallSt
  loc_18AEC37:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(var_8E)), var_214, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_18AEC3E:       LateIdCallSt
  loc_18AEC89:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_214, var_E0, CVar(CLng(8)))) 'String
  loc_18AEC90:       LateIdCallSt
  loc_18AECA4:       Set var_214 = Nothing 
  loc_18AECAE:       var_8E = (var_8E + 1)
  loc_18AECB4:       var_88.MoveNext
  loc_18AECB9:       GoTo loc_18AE81A
  loc_18AECBC:     End If
  loc_18AECCF:     Me.FGrid.FixedRows = 1
  loc_18AECD7:   End If
  loc_18AECE5:   Me.FGrid.Redraw = True
  loc_18AECF3:   If (var_8E = 1) Then
  loc_18AED09:     Me.FGrid.Rows = 1
  loc_18AED15:     Set var_128 = Me.FGrid
  loc_18AED2F:     var_C0 = CVar(CStr(Proc_6_127_F25B10(var_128, CInt(0), var_8E, var_214, var_E0))) 'String
  loc_18AED37:     Set var_B0 = Me.FGrid
  loc_18AED64:     Me.FGrid.FixedRows = 1
  loc_18AED6C:   End If
  loc_18AED8A:   Set var_9C = Me.Txt
  loc_18AED90:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(7), var_B0, var_104, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_C0, -1, var_128)
  loc_18AED98:   FGrid.DispID_10000 = var_B0.Tag
  loc_18AEDA1:   var_130 = var_C0 & var_104
  loc_18AEDA8:   var_1DC = var_130 & "'"
  loc_18AEDB1:   unk_56AA2C.Execute var_1DC, var_F0, var_214
  loc_18AEDBC:   Set var_88 = var_128
  loc_18AEDE3:   Me.FGrid1.Redraw = False
  loc_18AEDFE:   Me.FGrid1.Rows = 1
  loc_18AEE06:   var_AC = vbNullString
  loc_18AEE10:   Set var_9C = Me.FGrid1
  loc_18AEE34:   Me.FGrid1.FixedRows = 1
  loc_18AEE3C:   ' Referenced from: 18AF210
  loc_18AEE42:   var_1EE = var_88.EOF
  loc_18AEE4B:   If Not(var_1EE) Then
  loc_18AEE67:     var_AC = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_18AEE76:     Me.FGrid1.Row = 1
  loc_18AEE89:     Set var_218 = Me.FGrid1
  loc_18AEE9F:     var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_18AEEC6:     var_AC = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_18AEEE9:     var_104 = CStr(Me.FGrid1.TextMatrix))
  loc_18AEEF7:     var_124 = CVar(CStr((Val(var_104) + CDbl(1)))) 'String
  loc_18AEEFE:     LateIdCallSt
  loc_18AEF41:     var_AC = "VenueName"
  loc_18AEF66:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_AC)), 1, CVar(CLng(Me.FGrid1.Row)), var_218, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 0, var_AC)) 'String
  loc_18AEF6D:     LateIdCallSt
  loc_18AEFCE:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_218, var_100, 0)) 'String
  loc_18AEFD5:     LateIdCallSt
  loc_18AF036:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_218, var_100)) 'String
  loc_18AF03D:     LateIdCallSt
  loc_18AF09E:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_218, var_100)) 'String
  loc_18AF0A5:     LateIdCallSt
  loc_18AF106:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_218, var_100)) 'String
  loc_18AF10D:     LateIdCallSt
  loc_18AF15D:     var_B0 = var_88.Fields.Item("VenuCode")
  loc_18AF16E:     var_100 = CVar(Proc_6_38_E69628(CVar(var_B0), 6, CVar(CLng(Me.FGrid1.Row)), var_218, var_100)) 'String
  loc_18AF175:     LateIdCallSt
  loc_18AF191:     Set var_128 = Me.FGrid1
  loc_18AF1BC:     Set var_9C = Me.Txt
  loc_18AF1C2:     Call 0.Method_Proc_210_77_18AF45C0 (CInt(1), var_B0, var_104, 7, CVar(CLng(var_128.Row)), var_218)
  loc_18AF1CA:     var_100 = var_B0.Text
  loc_18AF1D2:     var_E0 = CVar(var_104) 'String
  loc_18AF1D9:     LateIdCallSt
  loc_18AF1F1:     var_AC = vbNullString
  loc_18AF1FA:     Proc_210_77_18AF45C2 = var_218.Name
  loc_18AF204:     Set var_218 = Nothing 
  loc_18AF20B:     var_88.MoveNext
  loc_18AF210:     GoTo loc_18AEE3C
  loc_18AF213:   End If
  loc_18AF21A:   Set var_9C = Me.TxtGt
  loc_18AF220:   Call 0.Method_Proc_210_77_18AF45C8 (var_1EE, Proc_210_77_18AF45C2, var_AC, var_218, var_E0)
  loc_18AF232:   Set var_B0 = Me.TxtGt
  loc_18AF238:   Call 0.Method_Proc_210_77_18AF45C0 (var_1EE, var_128, var_104, var_140)
  loc_18AF240:   FGrid1.DispID_10000 = var_128.Text
  loc_18AF24D:   var_200 = Val(var_104)
  loc_18AF257:   Set var_12C = Me.TextGt
  loc_18AF25D:   Call 0.Method_Proc_210_77_18AF45C8 (var_22A, var_200, var_AC)
  loc_18AF26F:   Set var_194 = Me.TextGt
  loc_18AF275:   Call 0.Method_Proc_210_77_18AF45C0 (var_22A, var_1A8, var_130)
  loc_18AF27D:   var_124 = var_1A8.Text
  loc_18AF28A:   var_208 = Val(var_130)
  loc_18AF29B:   Set var_1E0 = Me.Txt
  loc_18AF2A1:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(8), var_1F8, var_1DC)
  loc_18AF2B6:   var_210 = Val(var_1DC)
  loc_18AF2D9:   var_C0 = CVar(((var_200 + var_1F8.Text) - var_210)) 'Double
  loc_18AF2F7:   Set var_230 = Me.Txt
  loc_18AF2FD:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&H14), var_234, CStr(Format(var_128.Row, "0.00")), 1)
  loc_18AF305:   var_234.Text = 1
  loc_18AF33C:   Set var_9C = Me.TxtGt
  loc_18AF342:   Call 0.Method_Proc_210_77_18AF45C8 (var_1EE, var_210)
  loc_18AF354:   Set var_B0 = Me.TxtGt
  loc_18AF35A:   Call 0.Method_Proc_210_77_18AF45C0 (var_1EE, var_128)
  loc_18AF36F:   var_200 = Val(var_128.Text)
  loc_18AF379:   Set var_12C = Me.TextGt
  loc_18AF37F:   Call 0.Method_Proc_210_77_18AF45C8 (var_22A, var_200)
  loc_18AF391:   Set var_194 = Me.TextGt
  loc_18AF397:   Call 0.Method_Proc_210_77_18AF45C0 (var_22A, var_1A8)
  loc_18AF3AC:   var_208 = Val(var_1A8.Text)
  loc_18AF3CB:   var_C0 = CVar((var_200 + var_208)) 'Double
  loc_18AF3E9:   Set var_1E0 = Me.Txt
  loc_18AF3EF:   Call 0.Method_Proc_210_77_18AF45C0 (CInt(&H19), var_1F8, CStr(Format(var_128.Row, "0.00")), 1)
  loc_18AF3F7:   var_1F8.Text = 1
  loc_18AF42F:   Me.FGrid1.Redraw = True
  loc_18AF43A: Else
  loc_18AF43A:   Call Proc_210_79_1019D1C(var_208)
  loc_18AF43F: End If
  loc_18AF43F: Call Proc_210_81_F24D00(1)
  loc_18AF449: Set var_88 = Nothing
  loc_18AF451: Set var_94 = Nothing
  loc_18AF454: Exit Sub
  loc_18AF455: ' Referenced from: 18ACC5C
  loc_18AF455: Proc_6_60_E63754()
  loc_18AF45A: Exit Sub
End Sub

Public Sub Proc_210_78_1132784
  'Data Table: 56AA0C
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_56AA2C As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_113242D: Set var_9C = Me.topCtrl1
  loc_1132433: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_113243B: var_B0 = CStr()
  loc_113244C: If (var_B0 = "Add") Then
  loc_113247C:   Set var_9C = Me.Txt
  loc_1132482:   Call 0.Method_Proc_210_78_11327840 (CInt(4), var_B4, var_B0, "Select Count(*) From HallSale1Est Where DocID='", var_AC, -1)
  loc_11324A3:   unk_56AA2C.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_11324B3:    = var_D4.Item()
  loc_11324BB:    = var_E8.Value
  loc_11324E8:   If (var_B4.Text.Fields > 0) Then
  loc_11324F1:     Call 0.Method_arg_50 (var_B0)
  loc_1132512:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_1132528:     Call Proc_210_84_11BF000(MemVar_1F95044)
  loc_113253B:     Set var_9C = Me.Txt
  loc_1132541:     Call 0.Method_Proc_210_78_11327840 (CInt(4), var_B4)
  loc_1132549:     var_B4.Text = var_B0
  loc_113255D:     Proc_210_78_1132784 = 0
  loc_1132563:   End If
  loc_1132563: End If
  loc_1132588: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_1132592:   var_CC = CVar(CLng(var_88)) 'Long
  loc_113259A:   var_108 = CVar(CLng(1)) 'Long
  loc_11325BA:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_11325D6:   If CBool(var_118 <> vbNullString) Then
  loc_11325DD:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11325E5:     var_108 = CVar(CLng(3)) 'Long
  loc_1132615:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_113263D:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1132663:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_113266F:       Set var_9C = Me.FGrid
  loc_1132693:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11326A0:       Proc_210_78_1132784 = 0
  loc_11326A6:     End If
  loc_11326AA:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11326B2:     var_108 = CVar(CLng(4)) 'Long
  loc_11326E2:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_113270A:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1132730:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_113273C:       Set var_9C = Me.FGrid
  loc_1132760:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_113276D:       Proc_210_78_1132784 = 0
  loc_1132773:     End If
  loc_1132773:   End If
  loc_1132776: Next var_12C 'Integer
  loc_113277B: Proc_210_78_1132784 = 
End Sub

Public Sub Proc_210_79_1019D1C
  'Data Table: 56AA0C
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  loc_1019AFD: Me.LblVPrefix.Caption = vbNullString
  loc_1019B13: Set var_8C = Me.Txt
  loc_1019B19: Call 0.Method_Proc_210_79_1019D1CC (var_8E, var_86)
  loc_1019B29: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1019B3F:   Set var_8C = Me.Txt
  loc_1019B45:   Call 0.Method_Proc_210_79_1019D1C0 (CInt(var_86), var_98)
  loc_1019B4D:   var_98.Text = vbNullString
  loc_1019B69:   Set var_8C = Me.Txt
  loc_1019B6F:   Call 0.Method_Proc_210_79_1019D1C0 (CInt(var_86), var_98)
  loc_1019B77:   var_98.Tag = vbNullString
  loc_1019B86: Next var_92 'Byte
  loc_1019B9B: Set var_8C = Me.txtM
  loc_1019BA1: Call 0.Method_Proc_210_79_1019D1C0 (0, var_98)
  loc_1019BA9: var_98.Text = "0:00"
  loc_1019BC4: Set var_8C = Me.txtM
  loc_1019BCA: Call 0.Method_Proc_210_79_1019D1C0 (0, var_98)
  loc_1019BD2: var_98.Tag = vbNullString
  loc_1019BED: Set var_8C = Me.txtM
  loc_1019BF3: Call 0.Method_Proc_210_79_1019D1C0 (1, var_98)
  loc_1019BFB: var_98.Text = "0:00"
  loc_1019C16: Set var_8C = Me.txtM
  loc_1019C1C: Call 0.Method_Proc_210_79_1019D1C0 (1, var_98)
  loc_1019C24: var_98.Tag = vbNullString
  loc_1019C43: Me.FGrid.Rows = 1
  loc_1019C69: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_1019C71: Set var_98 = Me.FGrid
  loc_1019C9E: Me.FGrid.FixedRows = 1
  loc_1019CB9: Me.FGrid1.Rows = 1
  loc_1019CDD: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_1019CE5: Set var_98 = Me.FGrid1
  loc_1019D12: Me.FGrid1.FixedRows = 1
  loc_1019D1A: Exit Sub
End Sub

Public Sub Proc_210_80_1039288(arg_C) '1039288
  'Data Table: 56AA0C
  Dim var_98 As Variant
  loc_103903A: Set var_8C = Me.Txt
  loc_1039040: Call 0.Method_Proc_210_80_1039288C (var_8E, var_86)
  loc_1039050: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1039066:   Set var_8C = Me.Txt
  loc_103906C:   Call 0.Method_Proc_210_80_10392880 (CInt(var_86), var_98)
  loc_1039074:   var_98.Enabled = arg_C
  loc_1039083: Next var_92 'Byte
  loc_1039097: Set var_8C = Me.txtM
  loc_103909D: Call 0.Method_Proc_210_80_10392880 (0, var_98)
  loc_10390A5: var_98.Enabled = False
  loc_10390BF: Set var_8C = Me.txtM
  loc_10390C5: Call 0.Method_Proc_210_80_10392880 (1, var_98)
  loc_10390CD: var_98.Enabled = False
  loc_10390E6: Set var_8C = Me.Txt
  loc_10390EC: Call 0.Method_Proc_210_80_10392880 (CInt(&H15), var_98)
  loc_10390F4: var_98.Enabled = False
  loc_103910D: Set var_8C = Me.Txt
  loc_1039113: Call 0.Method_Proc_210_80_10392880 (CInt(6), var_98)
  loc_103911B: var_98.Enabled = False
  loc_1039134: Set var_8C = Me.Txt
  loc_103913A: Call 0.Method_Proc_210_80_10392880 (CInt(4), var_98)
  loc_1039142: var_98.Enabled = False
  loc_103915B: Set var_8C = Me.Txt
  loc_1039161: Call 0.Method_Proc_210_80_10392880 (CInt(8), var_98)
  loc_1039169: var_98.Enabled = False
  loc_1039182: Set var_8C = Me.Txt
  loc_1039188: Call 0.Method_Proc_210_80_10392880 (CInt(&HA), var_98)
  loc_1039190: var_98.Enabled = False
  loc_10391A9: Set var_8C = Me.Txt
  loc_10391AF: Call 0.Method_Proc_210_80_10392880 (CInt(9), var_98)
  loc_10391B7: var_98.Enabled = False
  loc_10391D0: Set var_8C = Me.Txt
  loc_10391D6: Call 0.Method_Proc_210_80_10392880 (CInt(&H10), var_98)
  loc_10391DE: var_98.Enabled = False
  loc_10391F7: Set var_8C = Me.Txt
  loc_10391FD: Call 0.Method_Proc_210_80_10392880 (CInt(&H14), var_98)
  loc_1039205: var_98.Enabled = False
  loc_103921E: Set var_8C = Me.Txt
  loc_1039224: Call 0.Method_Proc_210_80_10392880 (CInt(&H19), var_98)
  loc_103922C: var_98.Enabled = False
  loc_1039245: Set var_8C = Me.Txt
  loc_103924B: Call 0.Method_Proc_210_80_10392880 (CInt(&HC), var_98)
  loc_1039253: var_98.Enabled = False
  loc_103926C: Set var_8C = Me.Txt
  loc_1039272: Call 0.Method_Proc_210_80_10392880 (CInt(&HB), var_98)
  loc_103927A: var_98.Enabled = False
  loc_1039286: Exit Sub
End Sub

Public Sub Proc_210_81_F24D00
  'Data Table: 56AA0C
  loc_F24C0C: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F24C1E:   Me.DGParty.Visible = False
  loc_F24C26: End If
  loc_F24C42: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F24C54:   Me.DGVType.Visible = False
  loc_F24C5C: End If
  loc_F24C78: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F24C8A:   Me.DGHall.Visible = False
  loc_F24C92: End If
  loc_F24CAE: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F24CC0:   Me.DGItem.Visible = False
  loc_F24CC8: End If
  loc_F24CE4: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_F24CF6:   Me.DGBookNo.Visible = False
  loc_F24CFE: End If
  loc_F24CFE: Exit Sub
End Sub

Public Sub Proc_210_82_F0AA78
  'Data Table: 56AA0C
  loc_F0A99C: Call Proc_210_81_F24D00()
  loc_F0A9AC: Set var_88 = Me.Txt
  loc_F0A9B2: Call 0.Method_Proc_210_82_F0AA780 (CInt(2))
  loc_F0A9DB: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0A9DE:   Exit Sub
  loc_F0A9DF: End If
  loc_F0A9EA: Set var_88 = Me.Txt
  loc_F0A9F0: Call 0.Method_Proc_210_82_F0AA780 (CInt(1), var_8C)
  loc_F0AA19: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0AA1C:   Exit Sub
  loc_F0AA1D: End If
  loc_F0AA54: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0AA57:   Call TopCtrl1_UnknownEvent_16()
  loc_F0AA5F: Else
  loc_F0AA65:   Call 0.Method_arg_1E8 (var_88)
  loc_F0AA6D:   Call var_88.SetFocus
  loc_F0AA76: End If
  loc_F0AA76: Exit Sub
End Sub

Public Sub Proc_210_83_1153D04
  'Data Table: 56AA0C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_1153993: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115399B: var_C8 = CVar(CLng(4)) 'Long
  loc_11539D3: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11539DB: var_134 = CVar(CLng(3)) 'Long
  loc_1153A13: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153A1B: var_1F0 = CVar(CLng(5)) 'Long
  loc_1153A4C: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1153A54: Set var_224 = Me.FGrid
  loc_1153A5A: LateIdCallSt
  loc_1153AA0: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153AA8: var_C8 = CVar(CLng(6)) 'Long
  loc_1153AE0: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1153AF6:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153AFE:   var_C8 = CVar(CLng(5)) 'Long
  loc_1153B36:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153B3E:   var_134 = CVar(CLng(6)) 'Long
  loc_1153B76:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153B7E:   var_1F0 = CVar(CLng(7)) 'Long
  loc_1153BB3:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1153BBB:   Set var_224 = Me.FGrid
  loc_1153BC1:   LateIdCallSt
  loc_1153BF4: End If
  loc_1153C07: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153C0F: var_C8 = CVar(CLng(5)) 'Long
  loc_1153C47: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153C4F: var_134 = CVar(CLng(7)) 'Long
  loc_1153C87: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153C8F: var_1F0 = CVar(CLng(8)) 'Long
  loc_1153CB0: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1153CC0: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1153CC8: Set var_224 = Me.FGrid
  loc_1153CCE: LateIdCallSt
  loc_1153D01: Exit Sub
End Sub

Public Sub Proc_210_84_11BF000
  'Data Table: 56AA0C
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
  loc_11BEBF4: Set var_94 = Me.Txt
  loc_11BEBFA: Call 0.Method_Proc_210_84_11BF0000 (CInt(0), var_98)
  loc_11BEC0A: var_90 = var_98.Tag
  loc_11BEC28: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_11BEC59: Set var_94 = Me.Txt
  loc_11BEC5F: Call 0.Method_Proc_210_84_11BF0000 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_11BEC6E: Proc_6_7_F26918(var_CC, CVar(var_98), var_130)
  loc_11BEC76: var_EC = -1 & var_CC 
  loc_11BEC8A: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_11BEC95: Set var_8C = var_134
  loc_11BECD1: If (var_8C.RecordCount > 0) Then
  loc_11BED02:   global_156 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Number_Method")))
  loc_11BED4B:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_11BED7F:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11BEDAA:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11BEDBF:     var_CC = (var_98.Value + 1)
  loc_11BEDC7:     global_116 = CInt(var_CC)
  loc_11BEDE5:     Set var_94 = Me.Txt
  loc_11BEDEB:     Call 0.Method_Proc_210_84_11BF0000 (CInt(1), var_98)
  loc_11BEDF3:     var_98.Enabled = False
  loc_11BEE0C:     Set var_94 = Me.Txt
  loc_11BEE12:     Call 0.Method_Proc_210_84_11BF0000 (CInt(2), var_98)
  loc_11BEE1A:     var_98.Enabled = False
  loc_11BEE29:   Else
  loc_11BEE5A:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11BEE85:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11BEE9A:     var_CC = (var_98.Value + 1)
  loc_11BEEA2:     global_116 = CInt(var_CC)
  loc_11BEEB3:   End If
  loc_11BEEB3: End If
  loc_11BEEDE: var_BC = Space((5 - Len(var_90)))
  loc_11BEEE6: var_DC = (CVar(global_116 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_98.Value)
  loc_11BEEFA: var_EC = Space((5 - Len(global_112)))
  loc_11BEF02: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_11BEF0F: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_112))
  loc_11BEF28: var_14C = Space((8 - Len(CStr(global_116))))
  loc_11BEF30: var_15C = (var_130 + var_14C)
  loc_11BEF3F: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_11BEF4A: global_104 = CStr(var_17C)
  loc_11BEF80: Me.LblVPrefix.Caption = global_112
  loc_11BEF99: Set var_94 = Me.Txt
  loc_11BEF9F: Call 0.Method_Proc_210_84_11BF0000 (CInt(4), var_98)
  loc_11BEFA7: var_98.Text = global_104
  loc_11BEFC9: Set var_94 = Me.Txt
  loc_11BEFCF: Call 0.Method_Proc_210_84_11BF0000 (CInt(1), var_98)
  loc_11BEFD7: var_98.Text = CStr(global_116)
  loc_11BEFEC: var_88 = global_104
  loc_11BEFF4: Set var_8C = Nothing
  loc_11BEFF7: Proc_210_84_11BF000 = global_116
End Sub

Public Sub Proc_210_85_10BBD30(arg_C, arg_10, arg_14) '10BBD30
  'Data Table: 56AA0C
  Dim unk_56AA2C As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10BBA9E: If (arg_C = "HSBIL") Then
  loc_10BBAC5:   unk_56AA2C.Execute "Select Distinct DocId,V_Type,V_No From HallSale1Est Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10BBAD0:   Set var_8C = var_C4
  loc_10BBAE3:   var_94 = "Sale Bill "
  loc_10BBAE9: Else
  loc_10BBAEE:   Proc_210_85_10BBD30 = &HFF
  loc_10BBAF4: End If
  loc_10BBB08: If (var_8C.RecordCount > 0) Then
  loc_10BBB0B:   ' Referenced from: 10BBC84
  loc_10BBB1A:   If Not(var_8C.EOF) Then
  loc_10BBB25:     If (var_90 = vbNullString) Then
  loc_10BBB68:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10BBB6F:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10BBBA1:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10BBBC6:     Else
  loc_10BBC02:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10BBC22:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10BBC4F:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10BBC54:       var_90 = CStr(var_11C)
  loc_10BBC7C:     End If
  loc_10BBC7F:     var_8C.MoveNext
  loc_10BBC84:     GoTo loc_10BBB0B
  loc_10BBC87:   End If
  loc_10BBC8D:   Call 0.Method_arg_50 (var_138)
  loc_10BBCE9:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10BBCEC:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10BBD1B:   Set var_8C = Nothing
  loc_10BBD1E:   Proc_210_85_10BBD30 = 0
  loc_10BBD24: End If
  loc_10BBD29: Proc_210_85_10BBD30 = &HFF
End Sub

Public Sub Proc_210_86_FC1C18
  'Data Table: 56AA0C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC1A9B: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC1AA0:   var_92 = 1 'Byte
  loc_FC1AA4: End If
  loc_FC1AAD: Set var_98 = Me.TxtGrid
  loc_FC1AB3: Call 0.Method_Proc_210_86_FC1C180 (0, var_B0)
  loc_FC1AD6: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC1B0A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC1B2E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC1B31:     GoTo loc_FC1C03
  loc_FC1B34:   End If
  loc_FC1B38:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC1B62:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC1B6C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC1BA1:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC1BC5:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC1BDE:     Set var_98 = Me.TxtGrid
  loc_FC1BE4:     Call 0.Method_Proc_210_86_FC1C180 (0, var_B0, CVar(CLng(var_92)))
  loc_FC1BEC:     var_B0.SetFocus
  loc_FC1BFD:     Proc_210_86_FC1C18 = 0
  loc_FC1C03:     ' Referenced from: FC1B31
  loc_FC1C03:   End If
  loc_FC1C06: Next var_D4 'Integer
  loc_FC1C10: Proc_210_86_FC1C18 = &HFF
End Sub

Public Sub Proc_210_87_1A86564(arg_C) '1A86564
  'Data Table: 56AA0C
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_A0 As String
  Dim var_B8 As String
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim unk_56AA2C As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_154 As Variant
  Dim var_150 As Fields15
  Dim var_15C As Variant
  Dim var_140 As Boolean
  Dim var_158 As Fields15
  Dim var_1A4 As Variant
  Dim var_1B4 As TextBox
  Dim var_DC As Variant
  loc_1A828EC: Set var_90 = Me.TextGt
  loc_1A828F2: Call 0.Method_Proc_210_87_1A865640 (1, var_94)
  loc_1A828FA: var_96 = var_94.TabIndex
  loc_1A82902: var_8A = var_96
  loc_1A82927: var_A0 = "Select * From SundryType WHERE LogSite_Code='" & MemVar_1F95078 & "' and V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE Site_Code='"
  loc_1A82954: var_B8 = var_A0 & MemVar_1F95070 & "' and LogSite_Code='" & MemVar_1F95078 & "' and NCAT='BBILL' AND RESTCODE='" & global_56 & "') aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='BBILL' AND RESTCODE='"
  loc_1A82973: Proc_6_7_F26918(var_DC, arg_C, CVar(var_B8 & global_56 & "') aND AppDate<="), var_140)
  loc_1A8297B: var_FC = -1 & var_DC 
  loc_1A82992: unk_56AA2C.Execute CStr(var_FC & "  Order by AppDate Desc) Order by SNO"), var_90, var_8A
  loc_1A8299D: Set var_88 = var_90
  loc_1A829CE: Set var_90 = Me.LableCap
  loc_1A829D4: Call 0.Method_Proc_210_87_1A865648 (var_96)
  loc_1A82A04: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1A82A26:   Set var_90 = Me.LableCap
  loc_1A82A2C:   Call 0.Method_Proc_210_87_1A865648 (var_96, var_8C)
  loc_1A82A37:   For var_14C =  To var_96: CInt((var_88.RecordCount + 1)) = var_14C 'Integer
  loc_1A82A47:     Set var_90 = Me.LableCap
  loc_1A82A4D:     Call 0.Method_Proc_210_87_1A865640 (var_8C)
  loc_1A82A5E:     Me.LableCap.Unload var_94
  loc_1A82A74:     Set var_90 = Me.LableDummy
  loc_1A82A7A:     Call 0.Method_Proc_210_87_1A865640 (var_8C, var_94)
  loc_1A82A8B:     Me.LableDummy.Unload var_94
  loc_1A82AA1:     Set var_90 = Me.LableAt
  loc_1A82AA7:     Call 0.Method_Proc_210_87_1A865640 (var_8C, var_94)
  loc_1A82AB8:     Me.LableAt.Unload var_94
  loc_1A82ACE:     Set var_90 = Me.TextPer
  loc_1A82AD4:     Call 0.Method_Proc_210_87_1A865640 (var_8C, var_94)
  loc_1A82AE5:     Me.TextPer.Unload var_94
  loc_1A82AFB:     Set var_90 = Me.TextGt
  loc_1A82B01:     Call 0.Method_Proc_210_87_1A865640 (var_8C, var_94)
  loc_1A82B12:     Me.TextGt.Unload var_94
  loc_1A82B21:   Next var_14C 'Integer
  loc_1A82B26: End If
  loc_1A82B3A: If (var_88.RecordCount > 0) Then
  loc_1A82B76:   Set var_150 = Me.Txt
  loc_1A82B7C:   Call 0.Method_Proc_210_87_1A865640 (CInt(&H17), var_154)
  loc_1A82B84:   var_154.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_1A82B9A:   ' Referenced from: 1A846A1
  loc_1A82BA0:   var_96 = var_88.EOF
  loc_1A82BA9:   If Not(var_96) Then
  loc_1A82BE8:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A82C1C:       Set var_150 = Me.LableDummy
  loc_1A82C22:       Call 0.Method_Proc_210_87_1A865648 (var_96)
  loc_1A82C3C:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A82C71:         Set var_150 = Me.LableDummy
  loc_1A82C77:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A82C88:         Me.LableDummy.Load var_154
  loc_1A82C9B:       End If
  loc_1A82CE6:       var_154 = var_88.Fields.Item("SNo")
  loc_1A82CFB:       Set var_158 = Me.LableDummy
  loc_1A82D01:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A82D09:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A82D58:       Set var_150 = Me.TextPer
  loc_1A82D5E:       Call 0.Method_Proc_210_87_1A865648 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A82D78:       If (var_154 > CVar(var_96)) Then
  loc_1A82DAD:         Set var_150 = Me.TextPer
  loc_1A82DB3:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A82DC4:         Me.TextPer.Load var_154
  loc_1A82DD7:       End If
  loc_1A82E0F:       Set var_150 = Me.TextPer
  loc_1A82E15:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A82E1D:       var_154.TabIndex = (var_8A + 1)
  loc_1A82E36:       var_8A = (var_8A + 1)
  loc_1A82E7A:       var_154 = var_88.Fields.Item("SNo")
  loc_1A82EBA:       Set var_158 = Me.TextPer
  loc_1A82EC0:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A82EC8:       var_15C.Visible = var_8A
  loc_1A82F27:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A82F86:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A82F8F:         Set var_1A0 = Me.TextPer
  loc_1A82F95:         Call 0.Method_Proc_210_87_1A865640 (CInt(True), var_1A4)
  loc_1A82FD7:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A82FE0:         Set var_150 = Me.TextPer
  loc_1A82FE6:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A8300A:         Set var_1B0 = Me.TextPer
  loc_1A83010:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1B4)
  loc_1A83018:         var_1B4.Top = ((var_154.Top + var_1A4.Height) + CDbl(&HF))
  loc_1A83041:       End If
  loc_1A8307D:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A830DC:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A830E5:         Set var_150 = Me.TextPer
  loc_1A830EB:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A83106:         Set var_1A0 = Me.TextPer
  loc_1A8310C:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A83114:         var_1A4.Left = var_154.Left
  loc_1A83133:       End If
  loc_1A83190:       var_15C = var_88.Fields.Item("SNo")
  loc_1A831DD:       Set var_1A0 = Me.TextPer
  loc_1A831E3:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_15C.Value), var_1A4)
  loc_1A831EB:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A8325E:       var_154 = var_88.Fields.Item("SNo")
  loc_1A83273:       Set var_158 = Me.TextPer
  loc_1A83279:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A83281:       var_15C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A832D8:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8330F:         Set var_150 = Me.TextPer
  loc_1A83315:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8331D:         var_154.FontBold = True
  loc_1A83333:       Else
  loc_1A83367:         Set var_150 = Me.TextPer
  loc_1A8336D:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83375:         var_154.FontBold = False
  loc_1A83388:       End If
  loc_1A833C1:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A833F8:         Set var_150 = Me.TextPer
  loc_1A833FE:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83406:         var_154.Enabled = False
  loc_1A8341C:       Else
  loc_1A83450:         Set var_150 = Me.TextPer
  loc_1A83456:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8345E:         var_154.Enabled = True
  loc_1A83471:       End If
  loc_1A83475:       Set var_90 = Me.topCtrl1
  loc_1A8347B:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A83494:       If (CStr() = "Browse") Then
  loc_1A834CB:         Set var_150 = Me.TextPer
  loc_1A834D1:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A834D9:         var_154.Enabled = False
  loc_1A834EC:       End If
  loc_1A83528:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A8355F:         Set var_150 = Me.TextPer
  loc_1A83565:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8356D:         var_154.Enabled = False
  loc_1A83580:       End If
  loc_1A835B1:       Set var_150 = Me.LableCap
  loc_1A835B7:       Call 0.Method_Proc_210_87_1A865648 (var_96)
  loc_1A835D1:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A83606:         Set var_150 = Me.LableCap
  loc_1A8360C:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A8361D:         Me.LableCap.Load var_154
  loc_1A83630:       End If
  loc_1A83664:       Set var_150 = Me.LableCap
  loc_1A8366A:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83672:       var_154.Visible = True
  loc_1A836E1:       Set var_150 = Me.TextPer
  loc_1A836E7:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83702:       Set var_1A0 = Me.LableCap
  loc_1A83708:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A83710:       var_1A4.Top = var_154.Top
  loc_1A8376B:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A837AF:         var_15C = var_88.Fields.Item("SNo")
  loc_1A837CA:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A837D3:         Set var_150 = Me.LableCap
  loc_1A837D9:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A837F4:         Set var_1A0 = Me.LableCap
  loc_1A837FA:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_15C.Value), var_1A4)
  loc_1A83802:         var_1A4.Left = var_154.Left
  loc_1A83821:       End If
  loc_1A83881:       Set var_158 = Me.LableCap
  loc_1A83887:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A8388F:       var_15C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A838F8:       var_154 = var_88.Fields.Item("SNo")
  loc_1A8390D:       Set var_158 = Me.LableCap
  loc_1A83913:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A8391B:       var_15C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A83972:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A839A9:         Set var_150 = Me.LableCap
  loc_1A839AF:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A839B7:         var_154.FontBold = True
  loc_1A839CD:       Else
  loc_1A83A01:         Set var_150 = Me.LableCap
  loc_1A83A07:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83A0F:         var_154.FontBold = False
  loc_1A83A22:       End If
  loc_1A83A53:       Set var_150 = Me.LableAt
  loc_1A83A59:       Call 0.Method_Proc_210_87_1A865648 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A83A73:       If (var_154 > CVar(var_96)) Then
  loc_1A83AA8:         Set var_150 = Me.LableAt
  loc_1A83AAE:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A83ABF:         Me.LableAt.Load var_154
  loc_1A83AD2:       End If
  loc_1A83B13:       var_154 = var_88.Fields.Item("SNo")
  loc_1A83B53:       Set var_158 = Me.LableAt
  loc_1A83B59:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A83B61:       var_15C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A83BC5:       var_15C = var_88.Fields.Item("SNo")
  loc_1A83BE0:       Set var_150 = Me.TextPer
  loc_1A83BE6:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83C01:       Set var_1A0 = Me.LableAt
  loc_1A83C07:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_15C.Value), var_1A4)
  loc_1A83C0F:       var_1A4.Top = var_154.Top
  loc_1A83C67:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A83C9E:         Set var_150 = Me.LableAt
  loc_1A83CA4:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83CAC:         var_154.FontBold = True
  loc_1A83CC2:       Else
  loc_1A83CF6:         Set var_150 = Me.LableAt
  loc_1A83CFC:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83D04:         var_154.FontBold = False
  loc_1A83D17:       End If
  loc_1A83D62:       var_154 = var_88.Fields.Item("SNo")
  loc_1A83D77:       Set var_158 = Me.LableAt
  loc_1A83D7D:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A83D85:       var_15C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A83DDF:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A83E3E:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A83E47:         Set var_150 = Me.LableAt
  loc_1A83E4D:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("RoundOff").Value), var_154)
  loc_1A83E68:         Set var_1A0 = Me.LableAt
  loc_1A83E6E:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A83E76:         var_1A4.Left = var_154.Left
  loc_1A83E95:       End If
  loc_1A83EC6:       Set var_150 = Me.TextGt
  loc_1A83ECC:       Call 0.Method_Proc_210_87_1A865648 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A83EE6:       If (var_154 > CVar(var_96)) Then
  loc_1A83F1B:         Set var_150 = Me.TextGt
  loc_1A83F21:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A83F32:         Me.TextGt.Load var_154
  loc_1A83F45:       End If
  loc_1A83F7D:       Set var_150 = Me.TextGt
  loc_1A83F83:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A83F8B:       var_154.TabIndex = (var_8A + 1)
  loc_1A83FA4:       var_8A = (var_8A + 1)
  loc_1A83FDB:       Set var_150 = Me.TextGt
  loc_1A83FE1:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154, &HFF)
  loc_1A83FE9:       var_154.Visible = var_8A
  loc_1A84058:       Set var_150 = Me.TextPer
  loc_1A8405E:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84079:       Set var_1A0 = Me.TextGt
  loc_1A8407F:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A84087:       var_1A4.Top = var_154.Top
  loc_1A840E2:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A84141:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A8414A:         Set var_150 = Me.TextGt
  loc_1A84150:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8416B:         Set var_1A0 = Me.TextGt
  loc_1A84171:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A84179:         var_1A4.Left = var_154.Left
  loc_1A84198:       End If
  loc_1A841F5:       var_15C = var_88.Fields.Item("SNo")
  loc_1A84242:       Set var_1A0 = Me.TextGt
  loc_1A84248:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_15C.Value), var_1A4)
  loc_1A84250:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A842C0:       var_154 = var_88.Fields.Item("SNo")
  loc_1A842D5:       Set var_158 = Me.TextGt
  loc_1A842DB:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A842E3:       var_15C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A84338:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8436F:         Set var_150 = Me.TextGt
  loc_1A84375:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8437D:         var_154.FontBold = True
  loc_1A84393:       Else
  loc_1A843C7:         Set var_150 = Me.TextGt
  loc_1A843CD:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A843D5:         var_154.FontBold = False
  loc_1A843E8:       End If
  loc_1A84421:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A84458:         Set var_150 = Me.TextGt
  loc_1A8445E:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84466:         var_154.Enabled = False
  loc_1A8447C:       Else
  loc_1A844B0:         Set var_150 = Me.TextGt
  loc_1A844B6:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A844BE:         var_154.Enabled = True
  loc_1A844D1:       End If
  loc_1A84506:       Set var_150 = Me.LableCap
  loc_1A8450C:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84532:       If (var_154.Tag = "SROFF") Then
  loc_1A84569:         Set var_150 = Me.TextGt
  loc_1A8456F:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84577:         var_154.Enabled = False
  loc_1A8458A:       End If
  loc_1A8458E:       Set var_90 = Me.topCtrl1
  loc_1A84594:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A845AD:       If (CStr() = "Browse") Then
  loc_1A845E4:         Set var_150 = Me.TextGt
  loc_1A845EA:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A845F2:         var_154.Enabled = False
  loc_1A84605:       End If
  loc_1A84641:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A84663:         var_94 = var_88.Fields.Item("SNo")
  loc_1A84678:         Set var_150 = Me.TextGt
  loc_1A8467E:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_94.Value), var_154)
  loc_1A84686:         var_154.Enabled = False
  loc_1A84699:       End If
  loc_1A84699:     End If
  loc_1A8469C:     var_88.MoveNext
  loc_1A846A1:     GoTo loc_1A82B9A
  loc_1A846A4:   End If
  loc_1A846A4: End If
  loc_1A846AB: Set var_90 = Me.LblCap
  loc_1A846B1: Call 0.Method_Proc_210_87_1A865648 (var_96)
  loc_1A846E1: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1A84703:   Set var_90 = Me.LblCap
  loc_1A84709:   Call 0.Method_Proc_210_87_1A865648 (var_96, var_8C)
  loc_1A84714:   For var_1B8 =  To var_96: CInt((var_88.RecordCount + 1)) = var_1B8 'Integer
  loc_1A84724:     Set var_90 = Me.LblCap
  loc_1A8472A:     Call 0.Method_Proc_210_87_1A865640 (var_8C)
  loc_1A8473B:     Me.LblCap.Unload var_94
  loc_1A84751:     Set var_90 = Me.LblDummy
  loc_1A84757:     Call 0.Method_Proc_210_87_1A865640 (var_8C, var_94)
  loc_1A84768:     Me.LblDummy.Unload var_94
  loc_1A8477E:     Set var_90 = Me.LblAt
  loc_1A84784:     Call 0.Method_Proc_210_87_1A865640 (var_8C, var_94)
  loc_1A84795:     Me.LblAt.Unload var_94
  loc_1A847AB:     Set var_90 = Me.TxtPer
  loc_1A847B1:     Call 0.Method_Proc_210_87_1A865640 (var_8C, var_94)
  loc_1A847C2:     Me.TxtPer.Unload var_94
  loc_1A847D8:     Set var_90 = Me.TxtGt
  loc_1A847DE:     Call 0.Method_Proc_210_87_1A865640 (var_8C, var_94)
  loc_1A847EF:     Me.TxtGt.Unload var_94
  loc_1A847FE:   Next var_1B8 'Integer
  loc_1A84803: End If
  loc_1A84809: var_8A = (var_8A + 1)
  loc_1A8481D: Me.FGrid.TabIndex = var_8A
  loc_1A8482B: var_8A = (var_8A + 1)
  loc_1A8483A: Set var_90 = Me.TxtGrid
  loc_1A84840: Call 0.Method_Proc_210_87_1A865640 (0, var_94, var_8A)
  loc_1A84848: var_94.TabIndex = var_8A
  loc_1A84857: var_88.MoveFirst
  loc_1A84870: If (var_88.RecordCount > 0) Then
  loc_1A84873:   ' Referenced from: 1A86406
  loc_1A84879:   var_96 = var_88.EOF
  loc_1A84882:   If Not(var_96) Then
  loc_1A848C1:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A848F5:       Set var_150 = Me.LblDummy
  loc_1A848FB:       Call 0.Method_Proc_210_87_1A865648 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A84915:       If (var_8A > CVar(var_96)) Then
  loc_1A8494A:         Set var_150 = Me.LblDummy
  loc_1A84950:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A84961:         Me.LblDummy.Load var_154
  loc_1A84974:       End If
  loc_1A849BF:       var_154 = var_88.Fields.Item("SNo")
  loc_1A849D4:       Set var_158 = Me.LblDummy
  loc_1A849DA:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A849E2:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A84A31:       Set var_150 = Me.TxtPer
  loc_1A84A37:       Call 0.Method_Proc_210_87_1A865648 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A84A51:       If (var_154 > CVar(var_96)) Then
  loc_1A84A86:         Set var_150 = Me.TxtPer
  loc_1A84A8C:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A84A9D:         Me.TxtPer.Load var_154
  loc_1A84AB0:       End If
  loc_1A84AE8:       Set var_150 = Me.TxtPer
  loc_1A84AEE:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84AF6:       var_154.TabIndex = (var_8A + 1)
  loc_1A84B0F:       var_8A = (var_8A + 1)
  loc_1A84B53:       var_154 = var_88.Fields.Item("SNo")
  loc_1A84B93:       Set var_158 = Me.TxtPer
  loc_1A84B99:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A84BA1:       var_15C.Visible = var_8A
  loc_1A84C00:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A84C5F:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A84C68:         Set var_1A0 = Me.TxtPer
  loc_1A84C6E:         Call 0.Method_Proc_210_87_1A865640 (CInt(True), var_1A4)
  loc_1A84CB0:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A84CB9:         Set var_150 = Me.TxtPer
  loc_1A84CBF:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A84CE3:         Set var_1B0 = Me.TxtPer
  loc_1A84CE9:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1B4)
  loc_1A84CF1:         var_1B4.Top = ((var_154.Top + var_1A4.Height) + CDbl(&HF))
  loc_1A84D1A:       End If
  loc_1A84D56:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A84DB5:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A84DBE:         Set var_150 = Me.TxtPer
  loc_1A84DC4:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A84DDF:         Set var_1A0 = Me.TxtPer
  loc_1A84DE5:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A84DED:         var_1A4.Left = var_154.Left
  loc_1A84E0C:       End If
  loc_1A84E69:       var_15C = var_88.Fields.Item("SNo")
  loc_1A84EB6:       Set var_1A0 = Me.TxtPer
  loc_1A84EBC:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_15C.Value), var_1A4)
  loc_1A84EC4:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A84F37:       var_154 = var_88.Fields.Item("SNo")
  loc_1A84F4C:       Set var_158 = Me.TxtPer
  loc_1A84F52:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A84F5A:       var_15C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A84FB1:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A84FE8:         Set var_150 = Me.TxtPer
  loc_1A84FEE:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84FF6:         var_154.FontBold = True
  loc_1A8500C:       Else
  loc_1A85040:         Set var_150 = Me.TxtPer
  loc_1A85046:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8504E:         var_154.FontBold = False
  loc_1A85061:       End If
  loc_1A8509A:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A850D1:         Set var_150 = Me.TxtPer
  loc_1A850D7:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A850DF:         var_154.Enabled = False
  loc_1A850F5:       Else
  loc_1A85129:         Set var_150 = Me.TxtPer
  loc_1A8512F:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85137:         var_154.Enabled = True
  loc_1A8514A:       End If
  loc_1A8514E:       Set var_90 = Me.topCtrl1
  loc_1A85154:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A8516D:       If (CStr() = "Browse") Then
  loc_1A851A4:         Set var_150 = Me.TxtPer
  loc_1A851AA:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A851B2:         var_154.Enabled = False
  loc_1A851C5:       End If
  loc_1A85201:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A85238:         Set var_150 = Me.TxtPer
  loc_1A8523E:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85246:         var_154.Enabled = False
  loc_1A85259:       End If
  loc_1A8528A:       Set var_150 = Me.LblCap
  loc_1A85290:       Call 0.Method_Proc_210_87_1A865648 (var_96)
  loc_1A852AA:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A852DF:         Set var_150 = Me.LblCap
  loc_1A852E5:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A852F6:         Me.LblCap.Load var_154
  loc_1A85309:       End If
  loc_1A8533D:       Set var_150 = Me.LblCap
  loc_1A85343:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8534B:       var_154.Visible = True
  loc_1A853BA:       Set var_150 = Me.TxtPer
  loc_1A853C0:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A853DB:       Set var_1A0 = Me.LblCap
  loc_1A853E1:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A853E9:       var_1A4.Top = var_154.Top
  loc_1A85444:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A85488:         var_15C = var_88.Fields.Item("SNo")
  loc_1A854A3:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A854AC:         Set var_150 = Me.LblCap
  loc_1A854B2:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A854CD:         Set var_1A0 = Me.LblCap
  loc_1A854D3:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_15C.Value), var_1A4)
  loc_1A854DB:         var_1A4.Left = var_154.Left
  loc_1A854FA:       End If
  loc_1A8555A:       Set var_158 = Me.LblCap
  loc_1A85560:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A85568:       var_15C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A855E6:       Set var_158 = Me.LblCap
  loc_1A855EC:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A855F4:       var_15C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A8565D:       var_154 = var_88.Fields.Item("SNo")
  loc_1A85672:       Set var_158 = Me.LblDummy
  loc_1A85678:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A85680:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A856D7:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8570E:         Set var_150 = Me.LblCap
  loc_1A85714:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8571C:         var_154.FontBold = True
  loc_1A85732:       Else
  loc_1A85766:         Set var_150 = Me.LblCap
  loc_1A8576C:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85774:         var_154.FontBold = False
  loc_1A85787:       End If
  loc_1A857B8:       Set var_150 = Me.LblAt
  loc_1A857BE:       Call 0.Method_Proc_210_87_1A865648 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A857D8:       If (var_154 > CVar(var_96)) Then
  loc_1A8580D:         Set var_150 = Me.LblAt
  loc_1A85813:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A85824:         Me.LblAt.Load var_154
  loc_1A85837:       End If
  loc_1A85878:       var_154 = var_88.Fields.Item("SNo")
  loc_1A858B8:       Set var_158 = Me.LblAt
  loc_1A858BE:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A858C6:       var_15C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A8592A:       var_15C = var_88.Fields.Item("SNo")
  loc_1A85945:       Set var_150 = Me.TxtPer
  loc_1A8594B:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85966:       Set var_1A0 = Me.LblAt
  loc_1A8596C:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_15C.Value), var_1A4)
  loc_1A85974:       var_1A4.Top = var_154.Top
  loc_1A859CC:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A85A03:         Set var_150 = Me.LblAt
  loc_1A85A09:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85A11:         var_154.FontBold = True
  loc_1A85A27:       Else
  loc_1A85A5B:         Set var_150 = Me.LblAt
  loc_1A85A61:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85A69:         var_154.FontBold = False
  loc_1A85A7C:       End If
  loc_1A85AC7:       var_154 = var_88.Fields.Item("SNo")
  loc_1A85ADC:       Set var_158 = Me.LblAt
  loc_1A85AE2:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A85AEA:       var_15C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A85B44:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A85BA3:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A85BAC:         Set var_150 = Me.LblAt
  loc_1A85BB2:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("RoundOff").Value), var_154)
  loc_1A85BCD:         Set var_1A0 = Me.LblAt
  loc_1A85BD3:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A85BDB:         var_1A4.Left = var_154.Left
  loc_1A85BFA:       End If
  loc_1A85C2B:       Set var_150 = Me.TxtGt
  loc_1A85C31:       Call 0.Method_Proc_210_87_1A865648 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A85C4B:       If (var_154 > CVar(var_96)) Then
  loc_1A85C80:         Set var_150 = Me.TxtGt
  loc_1A85C86:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A85C97:         Me.TxtGt.Load var_154
  loc_1A85CAA:       End If
  loc_1A85CE2:       Set var_150 = Me.TxtGt
  loc_1A85CE8:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85CF0:       var_154.TabIndex = (var_8A + 1)
  loc_1A85D09:       var_8A = (var_8A + 1)
  loc_1A85D40:       Set var_150 = Me.TxtGt
  loc_1A85D46:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154, &HFF)
  loc_1A85D4E:       var_154.Visible = var_8A
  loc_1A85DBD:       Set var_150 = Me.TxtPer
  loc_1A85DC3:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85DDE:       Set var_1A0 = Me.TxtGt
  loc_1A85DE4:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A85DEC:       var_1A4.Top = var_154.Top
  loc_1A85E47:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A85EA6:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A85EAF:         Set var_150 = Me.TxtGt
  loc_1A85EB5:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85ED0:         Set var_1A0 = Me.TxtGt
  loc_1A85ED6:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A85EDE:         var_1A4.Left = var_154.Left
  loc_1A85EFD:       End If
  loc_1A85F5A:       var_15C = var_88.Fields.Item("SNo")
  loc_1A85FA7:       Set var_1A0 = Me.TxtGt
  loc_1A85FAD:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_15C.Value), var_1A4)
  loc_1A85FB5:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A86025:       var_154 = var_88.Fields.Item("SNo")
  loc_1A8603A:       Set var_158 = Me.TxtGt
  loc_1A86040:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_154.Value), var_15C)
  loc_1A86048:       var_15C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A8609D:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A860D4:         Set var_150 = Me.TxtGt
  loc_1A860DA:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A860E2:         var_154.FontBold = True
  loc_1A860F8:       Else
  loc_1A8612C:         Set var_150 = Me.TxtGt
  loc_1A86132:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8613A:         var_154.FontBold = False
  loc_1A8614D:       End If
  loc_1A86186:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A861BD:         Set var_150 = Me.TxtGt
  loc_1A861C3:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A861CB:         var_154.Enabled = False
  loc_1A861E1:       Else
  loc_1A86215:         Set var_150 = Me.TxtGt
  loc_1A8621B:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86223:         var_154.Enabled = True
  loc_1A86236:       End If
  loc_1A8626B:       Set var_150 = Me.LblCap
  loc_1A86271:       Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86297:       If (var_154.Tag = "SROFF") Then
  loc_1A862CE:         Set var_150 = Me.TxtGt
  loc_1A862D4:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A862DC:         var_154.Enabled = False
  loc_1A862EF:       End If
  loc_1A862F3:       Set var_90 = Me.topCtrl1
  loc_1A862F9:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A86312:       If (CStr() = "Browse") Then
  loc_1A86349:         Set var_150 = Me.TxtGt
  loc_1A8634F:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86357:         var_154.Enabled = False
  loc_1A8636A:       End If
  loc_1A863A6:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A863C8:         var_94 = var_88.Fields.Item("SNo")
  loc_1A863DD:         Set var_150 = Me.TxtGt
  loc_1A863E3:         Call 0.Method_Proc_210_87_1A865640 (CInt(var_94.Value), var_154)
  loc_1A863EB:         var_154.Enabled = False
  loc_1A863FE:       End If
  loc_1A863FE:     End If
  loc_1A86401:     var_88.MoveNext
  loc_1A86406:     GoTo loc_1A84873
  loc_1A86409:   End If
  loc_1A86409: End If
  loc_1A8641A: Set var_90 = Me.Txt
  loc_1A86420: Call 0.Method_Proc_210_87_1A865640 (CInt(&HF), var_94)
  loc_1A86428: var_94.TabIndex = (var_8A + 1)
  loc_1A86445: Set var_90 = Me.Txt
  loc_1A8644B: Call 0.Method_Proc_210_87_1A865640 (CInt(&HE), var_94)
  loc_1A86453: var_94.TabIndex = (var_8A + 2)
  loc_1A86470: Set var_90 = Me.Txt
  loc_1A86476: Call 0.Method_Proc_210_87_1A865640 (CInt(&HD), var_94)
  loc_1A8647E: var_94.TabIndex = (var_8A + 3)
  loc_1A8649B: Set var_90 = Me.Txt
  loc_1A864A1: Call 0.Method_Proc_210_87_1A865640 (CInt(8), var_94)
  loc_1A864A9: var_94.TabIndex = (var_8A + 4)
  loc_1A864C6: Set var_90 = Me.Txt
  loc_1A864CC: Call 0.Method_Proc_210_87_1A865640 (CInt(9), var_94)
  loc_1A864D4: var_94.TabIndex = (var_8A + 5)
  loc_1A864F1: Set var_90 = Me.Txt
  loc_1A864F7: Call 0.Method_Proc_210_87_1A865640 (CInt(&HA), var_94)
  loc_1A864FF: var_94.TabIndex = (var_8A + 6)
  loc_1A8651C: Set var_90 = Me.Txt
  loc_1A86522: Call 0.Method_Proc_210_87_1A865640 (CInt(&HB), var_94)
  loc_1A8652A: var_94.TabIndex = (var_8A + 7)
  loc_1A86547: Set var_90 = Me.Txt
  loc_1A8654D: Call 0.Method_Proc_210_87_1A865640 (CInt(&HC), var_94)
  loc_1A86555: var_94.TabIndex = (var_8A + 8)
  loc_1A86561: Exit Sub
End Sub

Public Sub Proc_210_88_1677324(arg_C) '1677324
  'Data Table: 56AA0C
  Dim var_A8 As Variant
  Dim var_B0 As String
  Dim var_14C As Variant
  Dim var_AC As String
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_114 As String
  Dim unk_56AA2C As Connection15
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_160 As Variant
  Dim var_1B8 As Variant
  Dim var_180 As String
  Dim var_1A4 As Variant
  Dim var_1A8 As Fields15
  Dim var_9C As MSHFlexGrid
  Dim var_2DC As Double
  Dim var_214 As Variant
  Dim var_D0 As Variant
  Dim var_2E4 As Double
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_2EC As Double
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_150 As TextBox
  Dim var_274 As Variant
  Dim var_134 As Variant
  Dim var_90 As Double
  Dim var_1A0 As Variant
  Dim var_1BC As TextBox
  Dim var_314 As TextBox
  loc_1675BC8: Set var_9C = Me.TxtGt
  loc_1675BCE: Call 0.Method_Proc_210_88_16773248 (var_9E, var_86)
  loc_1675BD9: For var_A2 =  To var_9E: 1 = var_A2 'Integer
  loc_1675BEC:   Set var_9C = Me.TxtGt
  loc_1675BF2:   Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_1675BFA:   var_A8.Text = vbNullString
  loc_1675C13:   Set var_9C = Me.LblCap
  loc_1675C19:   Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_1675C30:   var_B0 = MemVar_1F95070 & "DIS"
  loc_1675C43:   If (var_A8.Tag = var_B0) Then
  loc_1675C4B:     var_92 = CByte(var_86) 'Byte
  loc_1675C4F:   End If
  loc_1675C86:   Set var_9C = Me.LblCap
  loc_1675C8C:   Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_B0, CVar("Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F95078 & "' and Code='"), var_134)
  loc_1675C94:   -1 = var_A8.Tag
  loc_1675CC1:   unk_56AA2C.Execute CStr(var_138 & Trim(CVar(var_B0)) & "'"), var_13C, 0
  loc_1675CC9:   var_150 = var_138.Fields
  loc_1675CD1:    = var_13C.Item()
  loc_1675CE0:   var_170 = Trim(CVar(var_150))
  loc_1675CEB:   var_1B8 = 0
  loc_1675D1D:   var_180 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Code='" & MemVar_1F95078 & "ST'"
  loc_1675D26:   unk_56AA2C.Execute var_180, var_1A0, -1
  loc_1675D2E:   var_1A4 = var_1A4.Fields
  loc_1675D36:   var_1B8 = var_1A8.Item(var_1A8)
  loc_1675D86:   If (var_1BC = Trim(CVar(var_1BC))) Then
  loc_1675D8E:     var_94 = CByte(var_86) 'Byte
  loc_1675D98:     global_136 = var_86
  loc_1675D9B:   End If
  loc_1675D9E: Next var_A2 'Integer
  loc_1675DB6: Me.FGCat.Rows = 1
  loc_1675DC2: Set var_9C = Me.topCtrl1
  loc_1675DC8: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1675DE1: If (CStr() = "Add") Then
  loc_1675DE4:   Call Proc_210_93_E00D68()
  loc_1675DE9: End If
  loc_1675DF5: Set var_9C = Me.TxtGt
  loc_1675DFB: Call 0.Method_Proc_210_88_16773248 (var_9E, var_86)
  loc_1675E06: For var_1F0 =  To var_9E: 2 = var_1F0 'Integer
  loc_1675E19:   Set var_9C = Me.LblCap
  loc_1675E1F:   Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_1675E49:   If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_1675E59:     Set var_9C = Me.TxtGt
  loc_1675E5F:     Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_1675E67:     var_A8.Text = vbNullString
  loc_1675E7D:     If (var_94 > var_92) Then
  loc_1675EA5:       For var_1F4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1F4 'Integer
  loc_1675EB8:         Set var_9C = Me.LblCap
  loc_1675EBE:         Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_1675EE8:         If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_1675EEF:           var_100 = CVar(CLng(var_88)) 'Long
  loc_1675EF7:           var_14C = CVar(CLng(&HD)) 'Long
  loc_1675F11:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_1675F22:           If (var_AC = "Y") Then
  loc_1675F29:             var_100 = CVar(CLng(var_88)) 'Long
  loc_1675F43:             Set var_9C = Me.TxtPer
  loc_1675F49:             Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC, CVar(CLng(&HB)))
  loc_1675F51:             var_100 = var_A8.Text
  loc_1675F60:             var_C0 = CVar(CStr(Val(var_AC))) 'String
  loc_1675F68:             Set var_138 = Me.FGrid
  loc_1675F6E:             LateIdCallSt
  loc_1675F85:           End If
  loc_1675F85:         End If
  loc_1675F89:         var_100 = CVar(CLng(var_88)) 'Long
  loc_1675F91:         var_14C = CVar(CLng(3)) 'Long
  loc_1675FBA:         var_1B8 = CVar(CLng(var_88)) 'Long
  loc_1675FC2:         var_214 = CVar(CLng(4)) 'Long
  loc_1675FEB:         var_234 = CVar(CLng(var_88)) 'Long
  loc_1675FF3:         var_254 = CVar(CLng(&HB)) 'Long
  loc_167601C:         var_294 = CVar(CLng(var_88)) 'Long
  loc_1676024:         var_2B4 = CVar(CLng(&HC)) 'Long
  loc_167604D:         var_F0 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_167605D:         var_160 = CVar(CStr(Format(var_F0, "0.00"))) 'String
  loc_1676065:         Set var_13C = Me.FGrid
  loc_167606B:         LateIdCallSt
  loc_167609C:         var_1B8 = CVar(CLng(var_88)) 'Long
  loc_16760A4:         var_214 = CVar(CLng(3)) 'Long
  loc_16760CD:         var_234 = CVar(CLng(var_88)) 'Long
  loc_16760D5:         var_254 = CVar(CLng(5)) 'Long
  loc_16760DE:         var_100 = CVar(CLng(var_88)) 'Long
  loc_16760E6:         var_14C = CVar(CLng(4)) 'Long
  loc_1676116:         Set var_138 = Me.FGrid
  loc_167611C:         LateIdCallSt
  loc_1676149:         var_14C = CVar(CLng(5)) 'Long
  loc_167617A:         Set var_A8 = Me.LblDummy
  loc_1676180:         Call 0.Method_Proc_210_88_16773240 (var_86, var_138, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_14C, CVar(CLng(var_88)), var_138, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_1676188:         var_138.Caption = var_14C
  loc_16761A4:         var_100 = CVar(CLng(var_88)) 'Long
  loc_16761AC:         var_14C = CVar(CLng(5)) 'Long
  loc_16761C6:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_16761D5:         var_1B8 = CVar(CLng(var_88)) 'Long
  loc_16761DD:         var_214 = CVar(CLng(&HC)) 'Long
  loc_16761E6:         Set var_A8 = Me.FGrid
  loc_1676206:         var_234 = CVar(CLng(var_88)) 'Long
  loc_167620E:         var_254 = CVar(CLng(7)) 'Long
  loc_1676230:         var_2EC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_167623F:         var_2B4 = CVar(CLng(8)) 'Long
  loc_1676264:         var_F0 = CVar(((Val(var_AC) - Val(CStr(var_A8.TextMatrix)))) + var_2EC)) 'Double
  loc_1676282:         LateIdCallSt
  loc_16762BC:         Set var_9C = Me.LblCap
  loc_16762C2:         Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(var_F0, "0.00"))), 1, 1)
  loc_16762CA:         var_2B4 = var_A8.Tag
  loc_16762EC:         If (var_AC = MemVar_1F95070 & "DIS") Then
  loc_16762FC:           Set var_9C = Me.TxtGt
  loc_1676302:           Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_2EC)
  loc_167630A:           var_254 = var_A8.Text
  loc_167631E:           var_100 = CVar(CLng(var_88)) 'Long
  loc_1676348:           var_2E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1676367:           var_D0 = CVar((Val(var_AC) + var_2E4)) 'Double
  loc_1676384:           Set var_13C = Me.TxtGt
  loc_167638A:           Call 0.Method_Proc_210_88_16773240 (var_86, var_150, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_2E4)
  loc_1676392:           var_150.Text = CVar(CLng(&HC))
  loc_16763B8:         End If
  loc_16763BB:       Next var_1F4 'Integer
  loc_16763C3:     Else
  loc_16763E8:       For var_2F0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_2F0 'Integer
  loc_16763FB:         Set var_9C = Me.LblCap
  loc_1676401:         Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_167642B:         If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_1676432:           var_100 = CVar(CLng(var_88)) 'Long
  loc_167643A:           var_14C = CVar(CLng(&HD)) 'Long
  loc_1676454:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_1676465:           If (var_AC = "Y") Then
  loc_167646C:             var_100 = CVar(CLng(var_88)) 'Long
  loc_1676486:             Set var_9C = Me.TxtPer
  loc_167648C:             Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC, CVar(CLng(&HB)))
  loc_1676494:             var_100 = var_A8.Text
  loc_16764A3:             var_C0 = CVar(CStr(Val(var_AC))) 'String
  loc_16764AB:             Set var_138 = Me.FGrid
  loc_16764B1:             LateIdCallSt
  loc_16764C8:           End If
  loc_16764C8:         End If
  loc_1676505:         Set var_A8 = Me.LblDummy
  loc_167650B:         Call 0.Method_Proc_210_88_16773240 (var_86, var_138, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(5)), CVar(CLng(var_88)))
  loc_1676513:         var_138.Caption = var_138
  loc_167652F:         var_100 = CVar(CLng(var_88)) 'Long
  loc_1676537:         var_14C = CVar(CLng(5)) 'Long
  loc_1676551:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_1676560:         var_1B8 = CVar(CLng(var_88)) 'Long
  loc_1676568:         var_214 = CVar(CLng(&HB)) 'Long
  loc_1676571:         Set var_A8 = Me.FGrid
  loc_167658A:         var_2E4 = Val(CStr(var_A8.TextMatrix)))
  loc_1676599:         var_274 = CVar(CLng(&HC)) 'Long
  loc_16765DC:         LateIdCallSt
  loc_1676610:         Set var_9C = Me.LblCap
  loc_1676616:         Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_AC) * var_2E4) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_167661E:         var_274 = var_A8.Tag
  loc_1676640:         If (var_AC = MemVar_1F95070 & "DIS") Then
  loc_1676650:           Set var_9C = Me.TxtGt
  loc_1676656:           Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_2E4)
  loc_167665E:           var_214 = var_A8.Text
  loc_167666B:           var_2DC = Val(var_AC)
  loc_1676672:           var_100 = CVar(CLng(var_88)) 'Long
  loc_167669C:           var_2E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16766BB:           var_D0 = CVar((var_2DC + var_2E4)) 'Double
  loc_16766D8:           Set var_13C = Me.TxtGt
  loc_16766DE:           Call 0.Method_Proc_210_88_16773240 (var_86, var_150, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_2E4)
  loc_16766E6:           var_150.Text = CVar(CLng(&HC))
  loc_167670C:         End If
  loc_167670F:       Next var_2F0 'Integer
  loc_1676714:     End If
  loc_1676717:   Else
  loc_1676724:     Set var_9C = Me.TxtPer
  loc_167672A:     Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_1676732:     var_9E = var_A8.Visible
  loc_1676744:     If (var_9E = &HFF) Then
  loc_167674D:       Call Proc_210_90_10326D4(var_86)
  loc_1676755:       var_90 = var_2DC
  loc_1676765:       Set var_9C = Me.TxtPer
  loc_167676B:       Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC)
  loc_1676773:       var_90 = var_A8.Text
  loc_1676780:       var_2DC = Val(var_AC)
  loc_16767C0:       Set var_138 = Me.TxtGt
  loc_16767C6:       Call 0.Method_Proc_210_88_16773240 (var_86, var_13C, CStr(Format(CVar(((var_90 * var_2DC) / CDbl(&H64))), "0.00")), 1)
  loc_16767CE:       var_13C.Text = 1
  loc_1676800:       Set var_9C = Me.LblDummy
  loc_1676806:       Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, CStr(var_90))
  loc_167680E:       var_A8.Caption = var_2DC
  loc_167681D:     End If
  loc_167681D:   End If
  loc_1676820: Next var_1F0 'Integer
  loc_167684A: For var_2F4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2F4 'Integer
  loc_1676854:   var_100 = CVar(CLng(var_86)) 'Long
  loc_167685C:   var_14C = CVar(CLng(3)) 'Long
  loc_1676876:   var_AC = CStr(Me.FGrid.TextMatrix))
  loc_1676885:   var_1B8 = CVar(CLng(var_86)) 'Long
  loc_167688D:   var_214 = CVar(CLng(4)) 'Long
  loc_1676896:   Set var_A8 = Me.FGrid
  loc_16768B6:   var_254 = CVar(CLng(var_86)) 'Long
  loc_16768BE:   var_274 = CVar(CLng(5)) 'Long
  loc_16768FD:   LateIdCallSt
  loc_1676930:   Set var_9C = Me.TxtGt
  loc_1676936:   Call 0.Method_Proc_210_88_16773240 (1, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar((Val(var_AC) * Val(CStr(var_A8.TextMatrix))))), "0.00"))), 1, 1)
  loc_167693E:   var_274 = var_A8.Text
  loc_167694B:   var_2DC = Val(var_AC)
  loc_167697C:   var_2E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_167699B:   var_D0 = CVar((var_2DC + var_2E4)) 'Double
  loc_16769B7:   Set var_13C = Me.TxtGt
  loc_16769BD:   Call 0.Method_Proc_210_88_16773240 (1, var_150, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_2E4, CVar(CLng(5)))
  loc_16769C5:   var_150.Text = CVar(CLng(var_86))
  loc_16769EE: Next var_2F4 'Integer
  loc_1676A06: Me.FGCat.Rows = 1
  loc_1676A33: For var_2F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2F8 'Integer
  loc_1676A3D:   var_100 = CVar(CLng(var_86)) 'Long
  loc_1676A45:   var_14C = CVar(CLng(&H10)) 'Long
  loc_1676A64:   var_1B8 = CVar(CLng(var_86)) 'Long
  loc_1676A6C:   var_214 = CVar(CLng(4)) 'Long
  loc_1676ABF:   var_2EC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1676AFD:   Call Proc_210_94_1835B8C(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_2EC)), "0.00")), 1, 1, var_2EC, CVar(CLng(3)), CVar(CLng(var_86)))
  loc_1676B26: Next var_2F8 'Integer
  loc_1676B2F: Set var_9C = Me.topCtrl1
  loc_1676B35: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1676B49: Set var_A8 = Me.topCtrl1
  loc_1676B4F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_1676B75: If ( Or (CStr() = "Edit")) Then
  loc_1676B84:   Set var_9C = Me.TxtGt
  loc_1676B8A:   Call 0.Method_Proc_210_88_16773248 (var_9E, var_86)
  loc_1676B95:   For var_2FC =  To var_9E: 2 = var_2FC 'Integer
  loc_1676BA8:     Set var_9C = Me.TxtPer
  loc_1676BAE:     Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_1676BB6:     var_9E = var_A8.Visible
  loc_1676BCE:     Set var_138 = Me.LblCap
  loc_1676BD4:     Call 0.Method_Proc_210_88_16773240 (var_86, var_13C)
  loc_1676BDC:     var_AC = var_13C.Tag
  loc_1676C03:     If ((var_9E = &HFF) And (var_AC = MemVar_1F95070 & "SCH")) Then
  loc_1676C0C:       Call Proc_210_90_10326D4(var_86)
  loc_1676C14:       var_90 = var_2DC
  loc_1676C24:       Set var_9C = Me.TxtPer
  loc_1676C2A:       Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC)
  loc_1676C32:       var_90 = var_A8.Text
  loc_1676C3F:       var_2DC = Val(var_AC)
  loc_1676C7F:       Set var_138 = Me.TxtGt
  loc_1676C85:       Call 0.Method_Proc_210_88_16773240 (var_86, var_13C, CStr(Format(CVar(((var_90 * var_2DC) / CDbl(&H64))), "0.00")), 1)
  loc_1676C8D:       var_13C.Text = 1
  loc_1676CBF:       Set var_9C = Me.LblDummy
  loc_1676CC5:       Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, CStr(var_90))
  loc_1676CCD:       var_A8.Caption = var_2DC
  loc_1676CDC:     End If
  loc_1676CDF:   Next var_2FC 'Integer
  loc_1676CE4: End If
  loc_1676D03: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1676D19:   Me.FGCat.FixedRows = 1
  loc_1676D21: End If
  loc_1676D4F: For var_300 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_300 'Integer
  loc_1676D61:   Set var_9C = Me.TxtGt
  loc_1676D67:   Call 0.Method_Proc_210_88_16773248 (var_9E, var_86, 1)
  loc_1676D72:   For var_304 = CDbl(0) To var_9E: 0 = var_304 'Integer
  loc_1676D85:     Set var_9C = Me.LblCap
  loc_1676D8B:     Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_1676D93:     var_AC = var_A8.Tag
  loc_1676DA1:     var_D0 = Trim(CVar(var_AC))
  loc_1676DAD:     var_100 = CVar(CLng(var_88)) 'Long
  loc_1676DF5:     If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_1676E05:       Set var_9C = Me.TxtGt
  loc_1676E0B:       Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC)
  loc_1676E13:       var_100 = var_A8.Text
  loc_1676E20:       var_2DC = Val(var_AC)
  loc_1676E27:       var_100 = CVar(CLng(var_88)) 'Long
  loc_1676E51:       var_2E4 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1676E70:       var_D0 = CVar((var_2DC + var_2E4)) 'Double
  loc_1676E7F:       var_114 = CStr(Format(var_D0, "0.00"))
  loc_1676E8D:       Set var_13C = Me.TxtGt
  loc_1676E93:       Call 0.Method_Proc_210_88_16773240 (var_86, var_150, var_114, 1, 1, var_2E4)
  loc_1676E9B:       var_150.Text = CVar(CLng(6))
  loc_1676EC1:     End If
  loc_1676EC4:   Next var_304 'Integer
  loc_1676ECC: Next var_300 'Integer
  loc_1676EDD: Set var_9C = Me.TxtGt
  loc_1676EE3: Call 0.Method_Proc_210_88_16773248 (var_9E, var_86)
  loc_1676EEE: For var_308 =  To var_9E: 2 = var_308 'Integer
  loc_1676F01:   Set var_9C = Me.LblCap
  loc_1676F07:   Call 0.Method_Proc_210_88_16773240 (var_86, var_A8)
  loc_1676F31:   If (var_A8.Tag = MemVar_1F95070 & "ROFF") Then
  loc_1676F3A:     Call Proc_210_90_10326D4(var_86)
  loc_1676F42:     var_90 = var_2DC
  loc_1676F57:     Set var_9C = Me.LblDummy
  loc_1676F5D:     Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, CStr(var_90))
  loc_1676F65:     var_A8.Caption = var_90
  loc_1676F7D:     var_AC = "U"
  loc_1676F8E:     Proc_6_142_14A62A0(var_90, CByte(0), var_AC)
  loc_1676FBD:     var_B0 = CStr(Format(CVar(2), "0.00"))
  loc_1676FCB:     Set var_9C = Me.TxtGt
  loc_1676FD1:     Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_B0, 1)
  loc_1676FD9:     var_A8.Text = 1
  loc_1676FF8:   Else
  loc_1676FFF:     If (var_86 <> arg_C) Then
  loc_167700F:       Set var_9C = Me.LblCap
  loc_1677015:       Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, var_AC)
  loc_167701D:       var_2DC = var_A8.Tag
  loc_167704F:       Set var_138 = Me.LblCap
  loc_1677055:       Call 0.Method_Proc_210_88_16773240 (var_86, var_13C, var_B0)
  loc_167705D:       (Trim(CVar(var_AC)) = CVar(MemVar_1F95070 & "TOT")) = var_13C.Tag
  loc_16770A2:       If CBool(var_2DC Or (Trim(CVar(var_B0)) = CVar(MemVar_1F95070 & "NET"))) Then
  loc_16770AB:         Call Proc_210_90_10326D4(var_86)
  loc_16770E5:         Set var_9C = Me.TxtGt
  loc_16770EB:         Call 0.Method_Proc_210_88_16773240 (var_86, var_A8, CStr(Format(CVar(var_2DC), "0.00")))
  loc_16770F3:         var_A8.Text = 1
  loc_167710B:       End If
  loc_167710B:     End If
  loc_167710B:   End If
  loc_167710E: Next var_308 'Integer
  loc_167711A: Set var_9C = Me.TxtGt
  loc_1677120: Call 0.Method_Proc_210_88_16773248 (var_9E)
  loc_1677132: Set var_A8 = Me.TxtGt
  loc_1677138: Call 0.Method_Proc_210_88_16773240 (var_9E, var_138)
  loc_1677157: Set var_13C = Me.TextGt
  loc_167715D: Call 0.Method_Proc_210_88_16773248 (var_30A)
  loc_167716F: Set var_150 = Me.TextGt
  loc_1677175: Call 0.Method_Proc_210_88_16773240 (var_30A, var_1A4)
  loc_167718A: var_2E4 = Val(var_1A4.Text)
  loc_167719B: Set var_1A8 = Me.Txt
  loc_16771A1: Call 0.Method_Proc_210_88_16773240 (CInt(8), var_1BC, var_114)
  loc_16771B6: var_2EC = Val(var_114)
  loc_16771D9: var_C0 = CVar(((Val(var_138.Text) + var_1BC.Text) - var_2EC)) 'Double
  loc_16771F7: Set var_310 = Me.Txt
  loc_16771FD: Call 0.Method_Proc_210_88_16773240 (CInt(&H14), var_314, CStr(Format(CVar(Val(var_138.Text)), "0.00")), 1)
  loc_1677205: var_314.Text = 1
  loc_167723C: Set var_9C = Me.TxtGt
  loc_1677242: Call 0.Method_Proc_210_88_16773248 (var_9E, var_2EC)
  loc_1677254: Set var_A8 = Me.TxtGt
  loc_167725A: Call 0.Method_Proc_210_88_16773240 (var_9E, var_138)
  loc_167726F: var_2DC = Val(var_138.Text)
  loc_1677279: Set var_13C = Me.TextGt
  loc_167727F: Call 0.Method_Proc_210_88_16773248 (var_30A, var_2DC)
  loc_1677291: Set var_150 = Me.TextGt
  loc_1677297: Call 0.Method_Proc_210_88_16773240 (var_30A, var_1A4)
  loc_16772CB: var_C0 = CVar((var_2DC + Val(var_1A4.Text))) 'Double
  loc_16772E9: Set var_1A8 = Me.Txt
  loc_16772EF: Call 0.Method_Proc_210_88_16773240 (CInt(&H19), var_1BC, CStr(Format(CVar(var_2DC), "0.00")), 1)
  loc_16772F7: var_1BC.Text = 1
  loc_1677321: Exit Sub
End Sub

Public Sub Proc_210_89_14E1210(arg_C) '14E1210
  'Data Table: 56AA0C
  Dim var_A0 As Variant
  Dim var_114 As Double
  Dim var_AC As Variant
  Dim var_11C As Double
  Dim var_D0 As Variant
  Dim var_10C As String
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_164 As Variant
  Dim var_A4 As String
  Dim var_C0 As Variant
  Dim unk_56AA2C As Connection15
  Dim var_A8 As Variant
  Dim var_1C8 As Integer
  Dim var_194 As String
  Dim var_1B8 As Fields15
  Dim var_90 As Double
  Dim var_F0 As Variant
  Dim var_104 As TextBox
  Dim var_1B4 As Variant
  Dim var_1CC As TextBox
  Dim var_22C As Double
  Dim var_224 As TextBox
  loc_14E0486: Set var_9C = Me.Txt
  loc_14E048C: Call 0.Method_Proc_210_89_14E12100 (CInt(&H11), var_A0)
  loc_14E04A1: var_114 = Val(var_A0.Text)
  loc_14E04B2: Set var_A8 = Me.Txt
  loc_14E04B8: Call 0.Method_Proc_210_89_14E12100 (CInt(&H12), var_AC)
  loc_14E0508: Set var_104 = Me.TextGt
  loc_14E050E: Call 0.Method_Proc_210_89_14E12100 (1, var_108, CStr(Format(CVar((var_114 * Val(var_AC.Text))), "0.00")), 1)
  loc_14E0516: var_108.Text = 1
  loc_14E0548: Set var_9C = Me.TextGt
  loc_14E054E: Call 0.Method_Proc_210_89_14E12108 (var_11E, var_86, 1)
  loc_14E0559: For var_122 = var_114 To var_11E: var_11C = var_122 'Integer
  loc_14E056C:   Set var_9C = Me.LableCap
  loc_14E0572:   Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0)
  loc_14E0589:   var_B0 = MemVar_1F95070 & "DIS"
  loc_14E059C:   If (var_A0.Tag = var_B0) Then
  loc_14E05A4:     var_92 = CByte(var_86) 'Byte
  loc_14E05A8:   End If
  loc_14E05DF:   Set var_9C = Me.LableCap
  loc_14E05E5:   Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, var_B0, CVar("Select IsNull(Max(Nature),'') from SundryMast where Logsite_code='" & MemVar_1F95078 & "' and Code='"), var_154, -1)
  loc_14E061A:   unk_56AA2C.Execute CStr(var_AC & Trim(CVar(var_B0)) & "'"), 0, var_104
  loc_14E0622:   var_114 = var_A0.Tag.Fields
  loc_14E062A:    = var_AC.Item()
  loc_14E0639:   var_184 = Trim(CVar(var_104))
  loc_14E0644:   var_1C8 = 0
  loc_14E0676:   var_194 = "Select IsNull(Max(Nature),'') from SundryMast where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Code='" & MemVar_1F95078 & "ST'"
  loc_14E067F:   unk_56AA2C.Execute var_194, var_1B4, -1
  loc_14E0687:   var_108 = var_108.Fields
  loc_14E068F:   var_1C8 = var_1B8.Item(var_1B8)
  loc_14E06DF:   If (var_1CC = Trim(CVar(var_1CC))) Then
  loc_14E06E7:     var_94 = CByte(var_86) 'Byte
  loc_14E06F1:     global_136 = var_86
  loc_14E06F4:   End If
  loc_14E06F7: Next var_122 'Integer
  loc_14E0708: Set var_9C = Me.TextGt
  loc_14E070E: Call 0.Method_Proc_210_89_14E12108 (var_11E, var_86)
  loc_14E0719: For var_200 =  To var_11E: 2 = var_200 'Integer
  loc_14E072C:   Set var_9C = Me.LableCap
  loc_14E0732:   Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0)
  loc_14E075C:   If (var_A0.Tag = MemVar_1F95070 & "DIS") Then
  loc_14E0769:     If (var_94 > var_92) Then
  loc_14E0779:       Set var_9C = Me.TextPer
  loc_14E077F:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0)
  loc_14E0787:       var_11E = var_A0.Visible
  loc_14E0799:       If (var_11E = &HFF) Then
  loc_14E07A9:         Set var_9C = Me.TextPer
  loc_14E07AF:         Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0)
  loc_14E07B7:         var_A4 = var_A0.Text
  loc_14E07D3:         If (CDbl(Val(var_A4)) <> CDbl(0)) Then
  loc_14E07DC:           Call Proc_210_91_1032E78(var_86)
  loc_14E07E4:           var_90 = var_114
  loc_14E07F4:           Set var_9C = Me.TextPer
  loc_14E07FA:           Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, var_A4)
  loc_14E0802:           var_90 = var_A0.Text
  loc_14E080F:           var_114 = Val(var_A4)
  loc_14E084F:           Set var_A8 = Me.TextGt
  loc_14E0855:           Call 0.Method_Proc_210_89_14E12100 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14E085D:           var_AC.Text = 1
  loc_14E088F:           Set var_9C = Me.LableDummy
  loc_14E0895:           Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, CStr(var_90))
  loc_14E089D:           var_A0.Caption = var_114
  loc_14E08AF:         Else
  loc_14E08BC:           Set var_9C = Me.TextGt
  loc_14E08C2:           Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0)
  loc_14E08CA:           var_A4 = var_A0.Text
  loc_14E090F:           Set var_A8 = Me.TextGt
  loc_14E0915:           Call 0.Method_Proc_210_89_14E12100 (var_86, var_AC, CStr(Format(CVar(Val(var_A4)), "0.00")), 1)
  loc_14E091D:           var_AC.Text = 1
  loc_14E093D:         End If
  loc_14E0940:       Else
  loc_14E094D:         Set var_9C = Me.LableCap
  loc_14E0953:         Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, var_A4)
  loc_14E095B:         var_114 = var_A0.Tag
  loc_14E097D:         If (var_A4 = MemVar_1F95070 & "DIS") Then
  loc_14E098D:           Set var_9C = Me.TextGt
  loc_14E0993:           Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0)
  loc_14E099B:           var_A4 = var_A0.Text
  loc_14E09E0:           Set var_A8 = Me.TextGt
  loc_14E09E6:           Call 0.Method_Proc_210_89_14E12100 (var_86, var_AC, CStr(Format(CVar(Val(var_A4)), "0.00")), 1)
  loc_14E09EE:           var_AC.Text = 1
  loc_14E0A0E:         End If
  loc_14E0A0E:       End If
  loc_14E0A11:     Else
  loc_14E0A1E:       Set var_9C = Me.LableCap
  loc_14E0A24:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, var_A4)
  loc_14E0A2C:       var_114 = var_A0.Tag
  loc_14E0A4E:       If (var_A4 = MemVar_1F95070 & "DIS") Then
  loc_14E0A5E:         Set var_9C = Me.TextGt
  loc_14E0A64:         Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0)
  loc_14E0A6C:         var_A4 = var_A0.Text
  loc_14E0A79:         var_114 = Val(var_A4)
  loc_14E0A80:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_14E0A88:         var_164 = CVar(CLng(&HC)) 'Long
  loc_14E0AAA:         var_11C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14E0AC9:         var_F0 = CVar((var_114 + var_11C)) 'Double
  loc_14E0AD8:         var_10C = CStr(Format("0.00", "0.00"))
  loc_14E0AE6:         Set var_AC = Me.TextGt
  loc_14E0AEC:         Call 0.Method_Proc_210_89_14E12100 (var_86, var_104, var_10C, 1, 1)
  loc_14E0AF4:         var_104.Text = var_11C
  loc_14E0B1A:       End If
  loc_14E0B1A:     End If
  loc_14E0B1D:   Else
  loc_14E0B2A:     Set var_9C = Me.TextPer
  loc_14E0B30:     Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, var_11E, var_164)
  loc_14E0B38:     var_C0 = var_A0.Visible
  loc_14E0B4A:     If (var_11E = &HFF) Then
  loc_14E0B53:       Call Proc_210_91_1032E78(var_86, var_114)
  loc_14E0B5B:       var_90 = var_114
  loc_14E0B6B:       Set var_9C = Me.TextPer
  loc_14E0B71:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, var_A4)
  loc_14E0B79:       var_90 = var_A0.Text
  loc_14E0B86:       var_114 = Val(var_A4)
  loc_14E0BC6:       Set var_A8 = Me.TextGt
  loc_14E0BCC:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14E0BD4:       var_AC.Text = 1
  loc_14E0C06:       Set var_9C = Me.LableDummy
  loc_14E0C0C:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, CStr(var_90))
  loc_14E0C14:       var_A0.Caption = var_114
  loc_14E0C23:     End If
  loc_14E0C23:   End If
  loc_14E0C26: Next var_200 'Integer
  loc_14E0C2F: Set var_9C = Me.topCtrl1
  loc_14E0C35: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14E0C4E: If (CStr() = "Add") Then
  loc_14E0C5D:   Set var_9C = Me.TextGt
  loc_14E0C63:   Call 0.Method_Proc_210_89_14E12108 (var_11E, var_86)
  loc_14E0C6E:   For var_214 =  To var_11E: 2 = var_214 'Integer
  loc_14E0C81:     Set var_9C = Me.TextPer
  loc_14E0C87:     Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0)
  loc_14E0C8F:     var_11E = var_A0.Visible
  loc_14E0CA7:     Set var_A8 = Me.LableCap
  loc_14E0CAD:     Call 0.Method_Proc_210_89_14E12100 (var_86, var_AC)
  loc_14E0CB5:     var_A4 = var_AC.Tag
  loc_14E0CDC:     If ((var_11E = &HFF) And (var_A4 = MemVar_1F95070 & "SCH")) Then
  loc_14E0CE5:       Call Proc_210_91_1032E78(var_86)
  loc_14E0CED:       var_90 = var_114
  loc_14E0CFD:       Set var_9C = Me.TextPer
  loc_14E0D03:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, var_A4)
  loc_14E0D0B:       var_90 = var_A0.Text
  loc_14E0D18:       var_114 = Val(var_A4)
  loc_14E0D58:       Set var_A8 = Me.TextGt
  loc_14E0D5E:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14E0D66:       var_AC.Text = 1
  loc_14E0D98:       Set var_9C = Me.LableDummy
  loc_14E0D9E:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, CStr(var_90))
  loc_14E0DA6:       var_A0.Caption = var_114
  loc_14E0DB5:     End If
  loc_14E0DB8:   Next var_214 'Integer
  loc_14E0DBD: End If
  loc_14E0DC9: Set var_9C = Me.TextGt
  loc_14E0DCF: Call 0.Method_Proc_210_89_14E12108 (var_11E, var_86)
  loc_14E0DDA: For var_218 =  To var_11E: 2 = var_218 'Integer
  loc_14E0DED:   Set var_9C = Me.LableCap
  loc_14E0DF3:   Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0)
  loc_14E0E1D:   If (var_A0.Tag = MemVar_1F95070 & "ROFF") Then
  loc_14E0E26:     Call Proc_210_91_1032E78(var_86)
  loc_14E0E2E:     var_90 = var_114
  loc_14E0E43:     Set var_9C = Me.LableDummy
  loc_14E0E49:     Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, CStr(var_90))
  loc_14E0E51:     var_A0.Caption = var_90
  loc_14E0E69:     var_A4 = "U"
  loc_14E0E7A:     Proc_6_142_14A62A0(var_90, CByte(0), var_A4)
  loc_14E0EA9:     var_B0 = CStr(Format(CVar(2), "0.00"))
  loc_14E0EB7:     Set var_9C = Me.TextGt
  loc_14E0EBD:     Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, var_B0, 1)
  loc_14E0EC5:     var_A0.Text = 1
  loc_14E0EE4:   Else
  loc_14E0EEB:     If (var_86 <> arg_C) Then
  loc_14E0EFB:       Set var_9C = Me.LableCap
  loc_14E0F01:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, var_A4)
  loc_14E0F09:       var_114 = var_A0.Tag
  loc_14E0F3B:       Set var_A8 = Me.LableCap
  loc_14E0F41:       Call 0.Method_Proc_210_89_14E12100 (var_86, var_AC, var_B0)
  loc_14E0F49:       (Trim(CVar(var_A4)) = CVar(MemVar_1F95070 & "TOT")) = var_AC.Tag
  loc_14E0F8E:       If CBool(var_114 Or (Trim(CVar(var_B0)) = CVar(MemVar_1F95070 & "NET"))) Then
  loc_14E0F97:         Call Proc_210_91_1032E78(var_86)
  loc_14E0FD1:         Set var_9C = Me.TextGt
  loc_14E0FD7:         Call 0.Method_Proc_210_89_14E12100 (var_86, var_A0, CStr(Format(CVar(var_114), "0.00")))
  loc_14E0FDF:         var_A0.Text = 1
  loc_14E0FF7:       End If
  loc_14E0FF7:     End If
  loc_14E0FF7:   End If
  loc_14E0FFA: Next var_218 'Integer
  loc_14E1006: Set var_9C = Me.TxtGt
  loc_14E100C: Call 0.Method_Proc_210_89_14E12108 (var_11E)
  loc_14E101E: Set var_A0 = Me.TxtGt
  loc_14E1024: Call 0.Method_Proc_210_89_14E12100 (var_11E, var_A8)
  loc_14E1043: Set var_AC = Me.TextGt
  loc_14E1049: Call 0.Method_Proc_210_89_14E12108 (var_21A)
  loc_14E105B: Set var_104 = Me.TextGt
  loc_14E1061: Call 0.Method_Proc_210_89_14E12100 (var_21A, var_108)
  loc_14E1076: var_11C = Val(var_108.Text)
  loc_14E1087: Set var_1B8 = Me.Txt
  loc_14E108D: Call 0.Method_Proc_210_89_14E12100 (CInt(8), var_1CC, var_10C)
  loc_14E10A2: var_22C = Val(var_10C)
  loc_14E10C5: var_D0 = CVar(((Val(var_A8.Text) + var_1CC.Text) - var_22C)) 'Double
  loc_14E10E3: Set var_220 = Me.Txt
  loc_14E10E9: Call 0.Method_Proc_210_89_14E12100 (CInt(&H14), var_224, CStr(Format(CVar(Val(var_A8.Text)), "0.00")), 1)
  loc_14E10F1: var_224.Text = 1
  loc_14E1128: Set var_9C = Me.TxtGt
  loc_14E112E: Call 0.Method_Proc_210_89_14E12108 (var_11E, var_22C)
  loc_14E1140: Set var_A0 = Me.TxtGt
  loc_14E1146: Call 0.Method_Proc_210_89_14E12100 (var_11E, var_A8)
  loc_14E115B: var_114 = Val(var_A8.Text)
  loc_14E1165: Set var_AC = Me.TextGt
  loc_14E116B: Call 0.Method_Proc_210_89_14E12108 (var_21A, var_114)
  loc_14E117D: Set var_104 = Me.TextGt
  loc_14E1183: Call 0.Method_Proc_210_89_14E12100 (var_21A, var_108)
  loc_14E11B7: var_D0 = CVar((var_114 + Val(var_108.Text))) 'Double
  loc_14E11D5: Set var_1B8 = Me.Txt
  loc_14E11DB: Call 0.Method_Proc_210_89_14E12100 (CInt(&H19), var_1CC, CStr(Format(CVar(var_114), "0.00")), 1)
  loc_14E11E3: var_1CC.Text = 1
  loc_14E120D: Exit Sub
End Sub

Public Sub Proc_210_90_10326D4(arg_C) '10326D4
  'Data Table: 56AA0C
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_10324B5: Set var_9C = Me.TxtGt
  loc_10324BB: Call 0.Method_Proc_210_90_10326D40 (arg_C, var_A0)
  loc_10324DA: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_10324F5: If (Len(var_90) > 0) Then
  loc_1032510:   var_A4 = CStr(Left(var_90, 1))
  loc_103252A:   Set var_9C = Me.TxtGt
  loc_1032530:   Call 0.Method_Proc_210_90_10326D40 (CInt(Val(var_A4)), var_A0)
  loc_1032538:   var_D8 = var_A0.Text
  loc_1032545:   var_8C = Val(var_D8)
  loc_103257A:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1032584:   ' Referenced from: 10326C9
  loc_103258E:   If (Len(var_90) > 0) Then
  loc_10325D1:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_103261B:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1032632:     Set var_9C = Me.TxtGt
  loc_1032638:     Call 0.Method_Proc_210_90_10326D40 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_103264D:     var_E0 = Val(var_A4)
  loc_1032664:     Set var_F4 = Me.TxtGt
  loc_103266A:     Call 0.Method_Proc_210_90_10326D40 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_1032680:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_1032693:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_10326A2:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_10326A7:     var_8C = CSng(var_138)
  loc_10326C9:     GoTo loc_1032584
  loc_10326CC:   End If
  loc_10326CC: End If
  loc_10326CC: Proc_210_90_10326D4 = var_8C
End Sub

Public Sub Proc_210_91_1032E78(arg_C) '1032E78
  'Data Table: 56AA0C
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_1032C59: Set var_9C = Me.TextGt
  loc_1032C5F: Call 0.Method_Proc_210_91_1032E780 (arg_C, var_A0)
  loc_1032C7E: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_1032C99: If (Len(var_90) > 0) Then
  loc_1032CB4:   var_A4 = CStr(Left(var_90, 1))
  loc_1032CCE:   Set var_9C = Me.TextGt
  loc_1032CD4:   Call 0.Method_Proc_210_91_1032E780 (CInt(Val(var_A4)), var_A0)
  loc_1032CDC:   var_D8 = var_A0.Text
  loc_1032CE9:   var_8C = Val(var_D8)
  loc_1032D1E:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1032D28:   ' Referenced from: 1032E6D
  loc_1032D32:   If (Len(var_90) > 0) Then
  loc_1032D75:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1032DBF:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1032DD6:     Set var_9C = Me.TextGt
  loc_1032DDC:     Call 0.Method_Proc_210_91_1032E780 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_1032DF1:     var_E0 = Val(var_A4)
  loc_1032E08:     Set var_F4 = Me.TextGt
  loc_1032E0E:     Call 0.Method_Proc_210_91_1032E780 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_1032E24:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_1032E37:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_1032E46:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_1032E4B:     var_8C = CSng(var_138)
  loc_1032E6D:     GoTo loc_1032D28
  loc_1032E70:   End If
  loc_1032E70: End If
  loc_1032E70: Proc_210_91_1032E78 = var_8C
End Sub

Public Sub Proc_210_92_10A55D0
  'Data Table: 56AA0C
  Dim var_9C As Variant
  loc_10A5308: Set var_90 = Me.TxtGt
  loc_10A530E: Call 0.Method_Proc_210_92_10A55D08 (var_92, var_86)
  loc_10A5319: For var_96 =  To var_92: 1 = var_96 'Integer
  loc_10A532C:   Set var_90 = Me.LblCap
  loc_10A5332:   Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A5351:   If (var_9C.Tag = "STOT") Then
  loc_10A5361:     Set var_90 = Me.TxtGt
  loc_10A5367:     Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A536F:     var_9C.Text = vbNullString
  loc_10A537E:   Else
  loc_10A538B:     Set var_90 = Me.LblCap
  loc_10A5391:     Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A53B0:     If (var_9C.Tag = "SDIS") Then
  loc_10A53C0:       Set var_90 = Me.TxtGt
  loc_10A53C6:       Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A53CE:       var_9C.Text = vbNullString
  loc_10A53DD:     Else
  loc_10A53EA:       Set var_90 = Me.LblCap
  loc_10A53F0:       Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A540F:       If (var_9C.Tag = "SST") Then
  loc_10A541F:         Set var_90 = Me.TxtGt
  loc_10A5425:         Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A542D:         var_9C.Text = vbNullString
  loc_10A543C:       Else
  loc_10A5449:         Set var_90 = Me.LblCap
  loc_10A544F:         Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A546E:         If (var_9C.Tag = "SSTX") Then
  loc_10A5471:           GoTo loc_10A55C6
  loc_10A5474:         End If
  loc_10A5481:         Set var_90 = Me.LblCap
  loc_10A5487:         Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A54A6:         If (var_9C.Tag = "SSCH") Then
  loc_10A54A9:           GoTo loc_10A55C6
  loc_10A54AC:         End If
  loc_10A54B9:         Set var_90 = Me.LblCap
  loc_10A54BF:         Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A54DE:         If (var_9C.Tag = "SADD") Then
  loc_10A54EE:           Set var_90 = Me.TxtGt
  loc_10A54F4:           Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A54FC:           var_9C.Text = vbNullString
  loc_10A550B:         Else
  loc_10A5518:           Set var_90 = Me.LblCap
  loc_10A551E:           Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A553D:           If (var_9C.Tag = "SDED") Then
  loc_10A554D:             Set var_90 = Me.TxtGt
  loc_10A5553:             Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A555B:             var_9C.Text = vbNullString
  loc_10A556A:           Else
  loc_10A5577:             Set var_90 = Me.LblCap
  loc_10A557D:             Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A559C:             If (var_9C.Tag = "SNET") Then
  loc_10A55AC:               Set var_90 = Me.TxtGt
  loc_10A55B2:               Call 0.Method_Proc_210_92_10A55D00 (var_86, var_9C)
  loc_10A55BA:               var_9C.Text = vbNullString
  loc_10A55C6:             End If
  loc_10A55C6:           End If
  loc_10A55C6:           ' Referenced from:       10A54A9
  loc_10A55C6:           ' Referenced from:       10A5471
  loc_10A55C6:         End If
  loc_10A55C6:       End If
  loc_10A55C6:     End If
  loc_10A55C6:   End If
  loc_10A55C9: Next var_96 'Integer
  loc_10A55CE: Exit Sub
End Sub

Public Sub Proc_210_93_E00D68
  'Data Table: 56AA0C
  Dim arg_7FFF As Double
  loc_E00D64: Exit Sub
  loc_E00D65: arg_7FFF = 
End Sub

Public Sub Proc_210_94_1835B8C(arg_C, arg_10, arg_14) '1835B8C
  'Data Table: 56AA0C
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_56AA2C As Connection15
  Dim var_D8 As Recordset15
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_110 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_144 As Variant
  Dim var_134 As Variant
  Dim var_C0 As Recordset15
  Dim var_178 As Variant
  Dim var_154 As Variant
  Dim var_18C As Variant
  Dim var_1A0 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_D0 As Double
  Dim var_208 As Double
  Dim var_174 As Variant
  Dim var_E0 As Recordset15
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_1FC As Double
  Dim var_9C As Double
  Dim var_1C4 As Variant
  loc_1833769: unk_56AA2C.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "' And DeskCode='" & global_56 & "'", var_110, -1
  loc_1833774: Set var_D8 = var_114
  loc_183379C: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_18337AC: unk_56AA2C.Execute var_E4 & "'", var_110, -1
  loc_18337B7: Set var_8C = var_114
  loc_18337DB: If (var_D8.RecordCount > 0) Then
  loc_18337F3:   var_114 = var_D8.Fields
  loc_183381A:   If (var_114 <> Proc_6_38_E69628(CVar(var_114.Item("RestCode")), global_56)) Then
  loc_183381F:     var_DA = &HFF
  loc_1833825:   Else
  loc_1833827:     var_DA = 0
  loc_183382A:   End If
  loc_183382D: Else
  loc_183382F:   var_DA = 0
  loc_1833832: End If
  loc_1833835: var_94 = arg_14
  loc_183383A: var_86 = 1
  loc_1833840: var_A8 = var_94
  loc_1833846: var_B0 = var_94
  loc_183384C: var_B8 = CDbl(0)
  loc_1833863: If (var_8C.RecordCount > 0) Then
  loc_1833866:   ' Referenced from: 1835B5E
  loc_1833875:   If Not(var_8C.EOF) Then
  loc_183387C:     Set var_124 = Me.FGCat
  loc_183387F:     var_100 = vbNullString
  loc_18338A4:     If (var_8C.RecordCount > 0) Then
  loc_18338AD:       var_D2 = (var_D2 + 1)
  loc_18338B3:       var_100 = "Nature"
  loc_18338D8:       var_144 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_100)), var_D2, FGCat.DispID_10000, var_100, var_B8, var_B0, var_A8)) 'String
  loc_18338E6:       var_164 = Trim(var_144) 'Variant
  loc_18338FF:       If (var_164 = "On Base Amt") Then
  loc_183392A:         var_144 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_86, var_94, var_DA)) 'String
  loc_183394C:         If (Trim(var_144) = "Room Rate") Then
  loc_183395A:           If (global_56 = "Room Service") Then
  loc_1833983:             Proc_6_39_E7D3A0(var_144, CVar(var_8C.Fields.Item("Limit")), var_DA)
  loc_18339B1:             Proc_6_39_E7D3A0(var_174, CVar(var_C0.Fields.Item("RoomRate")), var_144)
  loc_18339B9:             var_18C = (var_DA <= var_174)
  loc_18339E3:             Proc_6_39_E7D3A0(var_1C4, CVar(var_8C.Fields.Item("Rate")))
  loc_1833A13:             If CBool(var_18C And (var_1C4 > 0)) Then
  loc_1833A56:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1833A94:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1833AA7:               Else
  loc_1833ADA:                 var_208 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1833B03:                 Proc_6_142_14A62A0(((var_208 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_1833B08:                 var_D0 = var_208
  loc_1833B1C:               End If
  loc_1833B23:               If (var_D0 > CDbl(0)) Then
  loc_1833B3F:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1833B47:                 var_1A0 = CVar(CLng(0)) 'Long
  loc_1833B51:                 var_144 = CVar(CStr(var_86)) 'String
  loc_1833B58:                 LateIdCallSt
  loc_1833B83:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1833B8B:                 var_1A0 = CVar(CLng(1)) 'Long
  loc_1833B95:                 var_144 = CVar(CStr(arg_10)) 'String
  loc_1833B9C:                 LateIdCallSt
  loc_1833BB4:                 If (var_DA = 0) Then
  loc_1833BBB:                   Set var_178 = Me.FGCat
  loc_1833BD0:                   var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_1833BD8:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_1833C08:                   var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1833C0F:                   LateIdCallSt
  loc_1833C2C:                 Else
  loc_1833C47:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F95078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_1833C85:                   var_154 = CVar(var_E8 & global_56 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1833C9C:                   unk_56AA2C.Execute CStr(var_154 & "')"), var_18C, -1
  loc_1833CA7:                   Set var_E0 = var_178
  loc_1833CDF:                   If (var_E0.RecordCount > 0) Then
  loc_1833CFB:                     var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1833D03:                     var_1D4 = CVar(CLng(2)) 'Long
  loc_1833D33:                     var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1833D3A:                     LateIdCallSt
  loc_1833D54:                   End If
  loc_1833D54:                 End If
  loc_1833D6D:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1833D75:                 var_1D4 = CVar(CLng(3)) 'Long
  loc_1833DA5:                 var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1833DAC:                 LateIdCallSt
  loc_1833DDF:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1833DE7:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_1833DF1:                 var_144 = CVar(CStr(var_A8)) 'String
  loc_1833DF8:                 LateIdCallSt
  loc_1833E23:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1833E2B:                 var_1D4 = CVar(CLng(5)) 'Long
  loc_1833E5B:                 var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1833E62:                 LateIdCallSt
  loc_1833EC0:                 var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1833EC8:                 var_248 = CVar(CLng(6)) 'Long
  loc_1833ED2:                 var_18C = 0
  loc_1833F0C:                 var_268 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_18C, 2))))) 'String
  loc_1833F13:                 LateIdCallSt
  loc_1833F50:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1833F58:                 var_1D4 = CVar(CLng(7)) 'Long
  loc_1833F88:                 var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1833F8F:                 LateIdCallSt
  loc_1833FAC:               Else
  loc_1833FB2:                 var_86 = (var_86 - 1)
  loc_1833FC8:                 var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1833FDE:               End If
  loc_1833FF7:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1833FFF:               var_1A0 = CVar(CLng(6)) 'Long
  loc_1834024:               var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_183404D:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834055:               var_1A0 = CVar(CLng(6)) 'Long
  loc_1834070:               var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_183407A:               var_94 = (var_94 + var_1FC)
  loc_1834091:               var_B0 = (var_B0 + var_D0)
  loc_1834097:               var_B8 = var_D0
  loc_18340A1:               var_B0 = (var_B0 + var_D0)
  loc_18340A7:               var_B8 = var_D0
  loc_18340AA:             End If
  loc_18340AA:           End If
  loc_18340AD:         Else
  loc_18340D3:           var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_18340ED:           If (var_144 = "No") Then
  loc_183412B:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_183413E:           Else
  loc_183419A:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183419F:             var_D0 = var_B8
  loc_18341B3:           End If
  loc_18341D9:           Proc_6_39_E7D3A0(var_144, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0, var_94)
  loc_18341F0:           var_1A0 = "Rate"
  loc_1834213:           Proc_6_39_E7D3A0(var_18C, CVar(var_8C.Fields.Item(var_1A0)), (var_144 <= CVar(var_94)), var_1FC)
  loc_183423D:           If CBool(var_1A0 And (var_18C > 0)) Then
  loc_1834247:             If (var_D0 > CDbl(0)) Then
  loc_1834263:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183426B:               var_1A0 = CVar(CLng(0)) 'Long
  loc_1834275:               var_144 = CVar(CStr(var_86)) 'String
  loc_183427C:               LateIdCallSt
  loc_18342A7:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18342AF:               var_1A0 = CVar(CLng(1)) 'Long
  loc_18342B9:               var_144 = CVar(CStr(arg_10)) 'String
  loc_18342C0:               LateIdCallSt
  loc_18342D8:               If (var_DA = 0) Then
  loc_18342DF:                 Set var_178 = Me.FGCat
  loc_18342F4:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_18342FC:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_183432C:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1834333:                 LateIdCallSt
  loc_1834350:               Else
  loc_1834367:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_183439B:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_18343B2:                 unk_56AA2C.Execute CStr(var_154 & "')"), var_18C, -1
  loc_18343BD:                 Set var_E0 = var_178
  loc_18343F1:                 If (var_E0.RecordCount > 0) Then
  loc_183440D:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834415:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_1834445:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183444C:                   LateIdCallSt
  loc_1834466:                 End If
  loc_1834466:               End If
  loc_183447F:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834487:               var_1D4 = CVar(CLng(3)) 'Long
  loc_18344B7:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_18344BE:               LateIdCallSt
  loc_18344F1:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18344F9:               var_1A0 = CVar(CLng(4)) 'Long
  loc_1834503:               var_144 = CVar(CStr(var_A8)) 'String
  loc_183450A:               LateIdCallSt
  loc_1834535:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183453D:               var_1D4 = CVar(CLng(5)) 'Long
  loc_183456D:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1834574:               LateIdCallSt
  loc_18345D2:               var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18345E4:               var_18C = 0
  loc_1834625:               LateIdCallSt
  loc_1834662:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834697:               var_154 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_124, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_18C, 2))))), CVar(CLng(6)), var_228)) 'String
  loc_183469E:               LateIdCallSt
  loc_18346B6:             End If
  loc_18346CF:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18346D7:             var_1A0 = CVar(CLng(6)) 'Long
  loc_18346FC:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_1834725:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183472D:             var_1A0 = CVar(CLng(6)) 'Long
  loc_1834748:             var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_1834752:             var_94 = (var_94 + var_1FC)
  loc_1834769:             var_B0 = (var_B0 + var_D0)
  loc_183476F:             var_B8 = var_D0
  loc_1834772:           End If
  loc_1834772:         End If
  loc_1834775:       Else
  loc_1834780:         If (var_164 = "On Running Total") Then
  loc_18347A9:           var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_18347C3:           If (var_144 = "No") Then
  loc_1834801:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_1834814:           Else
  loc_1834870:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1834875:             var_D0 = var_94
  loc_1834889:           End If
  loc_18348AF:           Proc_6_39_E7D3A0(var_144, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1FC, var_1A0)
  loc_18348C9:           If (var_144 > 0) Then
  loc_18348D3:             If (var_D0 > CDbl(0)) Then
  loc_18348EF:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18348F7:               var_1A0 = CVar(CLng(0)) 'Long
  loc_1834901:               var_144 = CVar(CStr(var_86)) 'String
  loc_1834908:               LateIdCallSt
  loc_1834933:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183493B:               var_1A0 = CVar(CLng(1)) 'Long
  loc_1834945:               var_144 = CVar(CStr(arg_10)) 'String
  loc_183494C:               LateIdCallSt
  loc_1834964:               If (var_DA = 0) Then
  loc_183496B:                 Set var_178 = Me.FGCat
  loc_1834980:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_1834988:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_18349B8:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18349BF:                 LateIdCallSt
  loc_18349DC:               Else
  loc_18349F3:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1834A27:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1834A3E:                 unk_56AA2C.Execute CStr(var_154 & "')"), var_18C, -1
  loc_1834A49:                 Set var_E0 = var_178
  loc_1834A7D:                 If (var_E0.RecordCount > 0) Then
  loc_1834A99:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834AA1:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_1834AD1:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1834AD8:                   LateIdCallSt
  loc_1834AF2:                 End If
  loc_1834AF2:               End If
  loc_1834B0B:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834B13:               var_1D4 = CVar(CLng(3)) 'Long
  loc_1834B43:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1834B4A:               LateIdCallSt
  loc_1834B7D:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834B85:               var_1A0 = CVar(CLng(4)) 'Long
  loc_1834B8F:               var_144 = CVar(CStr(var_B0)) 'String
  loc_1834B96:               LateIdCallSt
  loc_1834BC1:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834BC9:               var_1D4 = CVar(CLng(5)) 'Long
  loc_1834BF9:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1834C00:               LateIdCallSt
  loc_1834C5E:               var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834C66:               var_248 = CVar(CLng(6)) 'Long
  loc_1834C70:               var_18C = 0
  loc_1834CAA:               var_268 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_18C, 2))))) 'String
  loc_1834CB1:               LateIdCallSt
  loc_1834CEE:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834CF6:               var_1D4 = CVar(CLng(7)) 'Long
  loc_1834D26:               var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1834D2D:               LateIdCallSt
  loc_1834D47:             End If
  loc_1834D60:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834D68:             var_1A0 = CVar(CLng(6)) 'Long
  loc_1834D8D:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_1834DB6:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834DBE:             var_1A0 = CVar(CLng(6)) 'Long
  loc_1834DE3:             var_94 = (var_94 + Val(CStr(var_124.TextMatrix))))
  loc_1834DFA:             var_B0 = (var_B0 + var_D0)
  loc_1834E00:             var_B8 = var_D0
  loc_1834E03:           End If
  loc_1834E06:         Else
  loc_1834E11:           If (var_164 = "On Prev. Tax Amt") Then
  loc_1834E54:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1834E92:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_1834EA5:             Else
  loc_1834F01:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1834F06:               var_D0 = var_94
  loc_1834F1A:             End If
  loc_1834F21:             If (var_D0 > CDbl(0)) Then
  loc_1834F3D:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834F45:               var_1A0 = CVar(CLng(0)) 'Long
  loc_1834F4F:               var_144 = CVar(CStr(var_86)) 'String
  loc_1834F56:               LateIdCallSt
  loc_1834F81:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1834F89:               var_1A0 = CVar(CLng(1)) 'Long
  loc_1834F93:               var_144 = CVar(CStr(arg_10)) 'String
  loc_1834F9A:               LateIdCallSt
  loc_1834FB2:               If (var_DA = 0) Then
  loc_1834FB9:                 Set var_178 = Me.FGCat
  loc_1834FCE:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_1834FD6:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_1835006:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183500D:                 LateIdCallSt
  loc_183502A:               Else
  loc_1835041:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1835075:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183508C:                 unk_56AA2C.Execute CStr(var_154 & "')"), var_18C, -1
  loc_1835097:                 Set var_E0 = var_178
  loc_18350CB:                 If (var_E0.RecordCount > 0) Then
  loc_18350E7:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18350EF:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_183511F:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1835126:                   LateIdCallSt
  loc_1835140:                 End If
  loc_1835140:               End If
  loc_1835159:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835161:               var_1D4 = CVar(CLng(3)) 'Long
  loc_1835191:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1835198:               LateIdCallSt
  loc_18351CB:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18351D3:               var_1A0 = CVar(CLng(4)) 'Long
  loc_18351DD:               var_144 = CVar(CStr(var_B8)) 'String
  loc_18351E4:               LateIdCallSt
  loc_183520F:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835217:               var_1D4 = CVar(CLng(5)) 'Long
  loc_1835247:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183524E:               LateIdCallSt
  loc_18352A8:               var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18352B0:               var_248 = CVar(CLng(6)) 'Long
  loc_18352B5:               var_18C = 2
  loc_18352F4:               var_1F4 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_18C))))) 'String
  loc_18352FB:               LateIdCallSt
  loc_1835338:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835340:               var_1D4 = CVar(CLng(7)) 'Long
  loc_1835370:               var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1835377:               LateIdCallSt
  loc_1835391:             End If
  loc_18353AA:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18353B2:             var_1A0 = CVar(CLng(6)) 'Long
  loc_18353D7:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_1835400:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835408:             var_1A0 = CVar(CLng(6)) 'Long
  loc_1835423:             var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_183542D:             var_94 = (var_94 + var_1FC)
  loc_1835444:             var_B0 = (var_B0 + var_D0)
  loc_183544A:             var_B8 = var_D0
  loc_1835450:           Else
  loc_1835476:             var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_1835490:             If (var_144 = "No") Then
  loc_18354CE:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_18354E1:             Else
  loc_183553D:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1835542:               var_D0 = var_94
  loc_1835556:             End If
  loc_1835559:             var_100 = "Limit"
  loc_183557C:             Proc_6_39_E7D3A0(var_144, CVar(var_8C.Fields.Item(var_100)), var_D0, var_1FC, var_1A0)
  loc_18355B6:             Proc_6_39_E7D3A0(var_18C, CVar(var_8C.Fields.Item("Rate")), (var_144 <= CVar(var_94)), var_100)
  loc_18355E0:             If CBool(var_9C And (var_18C > 0)) Then
  loc_18355EA:               If (var_D0 > CDbl(0)) Then
  loc_1835606:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183560E:                 var_1A0 = CVar(CLng(0)) 'Long
  loc_1835618:                 var_144 = CVar(CStr(var_86)) 'String
  loc_183561F:                 LateIdCallSt
  loc_183564A:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835652:                 var_1A0 = CVar(CLng(1)) 'Long
  loc_183565C:                 var_144 = CVar(CStr(arg_10)) 'String
  loc_1835663:                 LateIdCallSt
  loc_183567B:                 If (var_DA = 0) Then
  loc_1835682:                   Set var_178 = Me.FGCat
  loc_1835697:                   var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_183569F:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_18356CF:                   var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18356D6:                   LateIdCallSt
  loc_18356F3:                 Else
  loc_183570A:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_183573E:                   var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1835755:                   unk_56AA2C.Execute CStr(var_154 & "')"), var_18C, -1
  loc_1835760:                   Set var_E0 = var_178
  loc_1835794:                   If (var_E0.RecordCount > 0) Then
  loc_18357B0:                     var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18357B8:                     var_1D4 = CVar(CLng(2)) 'Long
  loc_18357E8:                     var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18357EF:                     LateIdCallSt
  loc_1835809:                   End If
  loc_1835809:                 End If
  loc_1835822:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183582A:                 var_1D4 = CVar(CLng(3)) 'Long
  loc_183585A:                 var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1835861:                 LateIdCallSt
  loc_1835894:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183589C:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_18358A6:                 var_144 = CVar(CStr(var_A8)) 'String
  loc_18358AD:                 LateIdCallSt
  loc_18358D8:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18358E0:                 var_1D4 = CVar(CLng(5)) 'Long
  loc_1835910:                 var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1835917:                 LateIdCallSt
  loc_1835975:                 var_228 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18359C8:                 LateIdCallSt
  loc_1835A05:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835A3A:                 var_154 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_124, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_228)) 'String
  loc_1835A41:                 LateIdCallSt
  loc_1835A59:               End If
  loc_1835A72:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835A7A:               var_1A0 = CVar(CLng(6)) 'Long
  loc_1835A9F:               var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_1835AC8:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1835AD0:               var_1A0 = CVar(CLng(6)) 'Long
  loc_1835AF5:               var_94 = (var_94 + Val(CStr(var_124.TextMatrix))))
  loc_1835B0C:               var_B0 = (var_B0 + var_D0)
  loc_1835B12:               var_B8 = var_D0
  loc_1835B15:             End If
  loc_1835B15:           End If
  loc_1835B15:         End If
  loc_1835B15:       End If
  loc_1835B15:     End If
  loc_1835B1B:     var_86 = (var_86 + 1)
  loc_1835B20:     Set var_124 = Nothing 
  loc_1835B28:     var_100 = CVar(CLng(arg_10)) 'Long
  loc_1835B30:     var_1A0 = CVar(CLng(7)) 'Long
  loc_1835B3A:     var_110 = CVar(CStr(var_9C)) 'String
  loc_1835B42:     Set var_114 = Me.FGrid
  loc_1835B48:     LateIdCallSt
  loc_1835B59:     var_8C.MoveNext
  loc_1835B5E:     GoTo loc_1833866
  loc_1835B61:   End If
  loc_1835B66:   Set var_8C = Nothing
  loc_1835B6E:   Set var_C4 = Nothing
  loc_1835B76:   Set var_C0 = Nothing
  loc_1835B7E:   Set var_D8 = Nothing
  loc_1835B86:   Set var_E0 = Nothing
  loc_1835B89: End If
  loc_1835B89: Exit Sub
End Sub

Public Sub Proc_210_95_E6B59C
  'Data Table: 56AA0C
  Dim var_8C As String
  Dim var_98 As String
  Dim var_9C As String
  loc_E6B561: var_8C = "(SELECT     SUM(dbo.SunTranEst.Amount) + SUM(dbo.SunTranHEst.Amount) AS Amt, dbo.SunTranHEst.DocId, dbo.SunTranHEst.Sno, dbo.SunTranHEst.Vtype, dbo.SunTranHEst.VNo," & "dbo.SunTranHEst.Vdate, dbo.SunTranHEst.PartyCode, dbo.SunTranHEst.SunCode, dbo.SunTranHEst.ROff, dbo.SunTranEst.RestCode, dbo.SunTranEst.SunAppDate,"
  loc_E6B576: var_98 = var_8C & "dbo.SunTranEst.RevCode " & "FROM         dbo.SunTranEst INNER JOIN " & " dbo.SunTranHEst ON dbo.SunTranEst.Sno = dbo.SunTranHEst.Sno AND dbo.SunTranEst.DocId = dbo.SunTranHEst.DocId "
  loc_E6B57D: var_9C = var_98 & "GROUP BY dbo.SunTranHEst.DocId, dbo.SunTranHEst.Sno, dbo.SunTranHEst.Vtype, dbo.SunTranHEst.VNo, dbo.SunTranHEst.Vdate, dbo.SunTranHEst.PartyCode,"
  loc_E6B584: var_88 = var_9C & "dbo.SunTranHEst.SunCode , dbo.SunTranHEst.Roff, dbo.SunTranEst.RestCode, dbo.SunTranEst.SunAppDate, dbo.SunTranEst.RevCode)"
  loc_E6B594: Proc_210_95_E6B59C = 
End Sub

Public Sub Proc_210_96_1976C1C
  'Data Table: 56AA0C
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_56ABBB As Connection15
  Dim var_E6 As Integer
  Dim var_1D8 As Recordset15
  Dim var_B4 As Fields
  Dim unk_56AA2C As Connection15
  Dim var_1EC As Variant
  Dim var_E0 As Recordset15
  Dim var_1E8 As String
  Dim var_A0 As Variant
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_278 As Variant
  Dim var_228 As Variant
  Dim var_110 As Recordset15
  Dim var_B0 As Variant
  Dim var_E4 As Recordset15
  Dim var_118 As Double
  Dim var_1F4 As Variant
  Dim var_280 As Variant
  Dim var_F4 As Recordset15
  Dim var_120 As Double
  Dim var_284 As Recordset15
  Dim var_108 As Recordset15
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim var_2C0 As Field20
  loc_1973FA8: unk_56ABBB.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95070 & "FOM'", var_B0, -1
  loc_1973FB3: Set var_88 = var_B4
  loc_1973FC3: On Error Goto loc_1976C01
  loc_1973FC8: var_E6 = 1
  loc_1973FD1: Set var_1D8 = var_1D4 
  loc_1973FF9: var_1D8.Fields.Append "mLine", &HC8, &HA
  loc_1974025: var_1D8.Fields.Append "SNo", &HC8, &HA
  loc_1974051: var_1D8.Fields.Append "Item", &HC8, &H32
  loc_197407D: var_1D8.Fields.Append "Qty", &HC8, &HA
  loc_19740A9: var_1D8.Fields.Append "Rate", &HC8, &HA
  loc_19740D5: var_1D8.Fields.Append "Amount", &HC8, &HA
  loc_19740F9: var_B4 = var_1D8.Fields
  loc_1974101: var_B4.Append "Mark", &HC8, &HA
  loc_1974111: var_1D8.CursorType = 3
  loc_197411E: var_1D8.LockType = 3
  loc_197413D: var_1D8.Open var_A0, var_1E8, -1
  loc_1974144: Set var_1D8 = Nothing 
  loc_197415C: var_8C = "Select * from Enviro where LOgSite_code='" & MemVar_1F95078
  loc_197416C: unk_56AA2C.Execute var_8C & "'", var_B0, -1
  loc_1974177: Set var_110 = var_B4
  loc_19741A5: Set var_B4 = Me.Txt
  loc_19741AB: Call 0.Method_Proc_210_96_1976C1C0 (CInt(4), var_1EC, var_8C, "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallStockEst AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RestCode = I.RestCode) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='", var_B0, -1, var_1F4)
  loc_19741B3: var_B4 = var_1EC.Text
  loc_19741BC: var_90 = -1 & var_8C
  loc_19741CC: unk_56AA2C.Execute var_8C & "'" & "' AND QTYIss>0", -1, &H20
  loc_19741D7: Set var_F4 = var_1F4
  loc_197420D: Set var_B4 = Me.Txt
  loc_1974213: Call 0.Method_Proc_210_96_1976C1C0 (CInt(7), var_1EC, var_8C, "Select HB.*, SG.Name AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='", var_B0)
  loc_197421B: -1 = var_1EC.Tag
  loc_1974234: unk_56AA2C.Execute var_1F4 & var_8C & "'", var_A0, &H20
  loc_197423F: Set var_E0 = var_1F4
  loc_1974275: Set var_B4 = Me.Txt
  loc_197427B: Call 0.Method_Proc_210_96_1976C1C0 (CInt(7), var_1EC, var_8C, "SELECT * FROM HallSale1Est WHERE BookDocId='")
  loc_1974283: var_B0 = var_1EC.Tag
  loc_197428C: var_90 = -1 & var_8C
  loc_197429C: unk_56AA2C.Execute var_1F4 & var_8C & "'", var_1F4, var_A0
  loc_19742A7: Set var_E4 = var_1F4
  loc_19742D3: If (var_E0.RecordCount <= 0) Then
  loc_19742D6:   Exit Sub
  loc_19742D7: End If
  loc_19742E5: Set var_B4 = Me.Txt
  loc_19742EB: Call 0.Method_Proc_210_96_1976C1C0 (CInt(0), var_1EC)
  loc_19742FB: var_12C = var_1EC.Tag
  loc_197431D: var_208 = ("UPTT No. :" + Trim(MemVar_1F95148))
  loc_1974322: var_148 = CStr(var_208)
  loc_1974344: var_208 = ("CST No.  :" + Trim(MemVar_1F9514C))
  loc_1974349: var_14C = CStr(var_208)
  loc_1974356: var_168 = MemVar_1F95130
  loc_1974371: var_208 = (Trim(MemVar_1F95134) + " ")
  loc_1974388: var_238 = (var_208 + Trim(MemVar_1F9513C))
  loc_1974391: var_258 = (var_238 + " ")
  loc_197439B: var_278 = (var_258 + CVar(MemVar_1F9515C))
  loc_19743A0: var_164 = CStr(var_278)
  loc_19743C7: var_16C = "Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144
  loc_19743E9: var_208 = ("SUBJECT TO " + Trim(MemVar_1F9513C))
  loc_19743F2: var_228 = (var_208 + " JURISDITION")
  loc_19743F7: var_100 = CStr(Trim(MemVar_1F9513C))
  loc_197442B: var_15C = Proc_6_38_E69628(CVar(var_110.Fields.Item("Bill_Header")))
  loc_197444B: var_1EC = var_E4.Fields.Item("Party")
  loc_1974470: var_158 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1EC)))
  loc_197448E: Set var_B4 = Me.Txt
  loc_1974494: Call 0.Method_Proc_210_96_1976C1C0 (CInt(1), var_1EC)
  loc_19744A4: var_150 = var_1EC.Text
  loc_19744E5: var_1A0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E0.Fields.Item("Add1"))))))
  loc_197452B: var_1A4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E0.Fields.Item("Add2"))))))
  loc_1974551: var_1EC = var_E0.Fields.Item("City")
  loc_1974571: var_1A8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_1EC)))))
  loc_197458B: Set var_B4 = Me.Txt
  loc_1974591: Call 0.Method_Proc_210_96_1976C1C0 (CInt(2), var_1EC)
  loc_19745A0: var_A0 = "dd-MMM-yyyy"
  loc_19745A5: var_208 = "City"
  loc_19745CD: var_154 = Proc_6_45_EADFB8(CStr(Format(CVar(var_1EC), var_208)), &HB, 1)
  loc_197463B: If ((var_E4.RecordCount > 0) And (CDbl(Val(CStr(var_E4.Fields.Item("NoofPax").Value))) > CDbl(0))) Then
  loc_1974664:   Proc_6_39_E7D3A0(var_208, CVar(var_E4.Fields.Item("Advance")))
  loc_197468D:   var_144 = CStr(Format(var_208, "0.00"))
  loc_19746C9:   Proc_6_39_E7D3A0(var_208, CVar(var_E4.Fields.Item("TotalPerCover")), 1, 1)
  loc_19746DA:   var_118 = Val(CStr(var_208))
  loc_1974745:   var_208 = "Pax " & var_E4.Fields.Item("NoofPax").Value 
  loc_1974755:   var_258 = var_208 & " @ " & var_E4.Fields.Item("RatePerPax").Value 
  loc_1974763:   var_130 = Proc_6_45_EADFB8(CStr(var_258), &H1D, var_118)
  loc_19747A7:   Proc_6_39_E7D3A0(var_208, CVar(var_E4.Fields.Item("NoofPax")), 1)
  loc_19747B0:   var_134 = CStr(var_208)
  loc_19747D4:   var_1EC = var_E4.Fields.Item("RatePerPax")
  loc_19747E3:   Proc_6_39_E7D3A0(var_208, CVar(var_1EC))
  loc_197480C:   var_138 = CStr(Format(var_208, "0.00"))
  loc_1974827:   var_1E8 = "0.00"
  loc_1974846:   var_13C = CStr(Format(var_118, var_1E8))
  loc_197485B:   Set var_B4 = Me.Txt
  loc_1974861:   Call 0.Method_Proc_210_96_1976C1C0 (CInt(&H18), var_1EC, 1, 1)
  loc_1974870:   var_208 = Trim(CVar(var_1EC))
  loc_197488E:   If (CStr(var_208) = vbNullString) Then
  loc_1974894:     var_140 = var_130
  loc_1974897:   End If
  loc_197489A: Else
  loc_197489C:   var_E6 = 0
  loc_197489F:   ' Referenced from:   1974B7F
  loc_197489F: End If
  loc_19748AE: If Not(var_F4.EOF) Then
  loc_19748B7:   var_E6 = (var_E6 + 1)
  loc_19748BD:   var_A0 = "Amount"
  loc_19748E0:   Proc_6_39_E7D3A0(var_208, CVar(var_F4.Fields.Item(var_A0)), var_E6, var_E6)
  loc_19748F1:   var_120 = Val(CStr(var_208))
  loc_1974908:   var_118 = (var_118 + var_120)
  loc_1974911:   Set var_284 = var_1D4 
  loc_1974920:   var_284.AddNew var_A0, var_1E8
  loc_197494A:   var_284.Fields.Item("mLine").Value = vbNullString
  loc_197495B:   var_8C = CStr(var_E6)
  loc_1974985:   var_284.Fields.Item("SNo").Value = CVar(var_8C & ".")
  loc_19749DA:   var_284.Fields.Item("Item").Value = CVar(var_F4.Fields.Item("ItemName"))
  loc_1974A11:   Proc_6_39_E7D3A0(var_208, CVar(var_F4.Fields.Item("QtyIss")), var_118, var_120)
  loc_1974A39:   var_284.Fields.Item("qty").Value = var_208
  loc_1974A74:   Proc_6_39_E7D3A0(var_208, CVar(var_F4.Fields.Item("Rate")), 1)
  loc_1974AAC:   var_1F4 = var_284.Fields
  loc_1974ABC:   var_1F4.Item("Rate").Value = Format(var_208, "0.00")
  loc_1974B1D:   var_284.Fields.Item("Amount").Value = Format(var_120, "0.00")
  loc_1974B30:   var_1E8 = "*"
  loc_1974B39:   var_A0 = "Mark"
  loc_1974B55:   var_284.Fields.Item(var_A0).Value = var_1E8
  loc_1974B6C:   var_284.Update var_A0, var_1E8
  loc_1974B73:   Set var_284 = Nothing 
  loc_1974B7A:   var_F4.MoveNext
  loc_1974B7F:   GoTo loc_197489F
  loc_1974B82: End If
  loc_1974B8A: var_F4.Requery -1
  loc_1974B92: var_E4.MoveFirst
  loc_1974BAA: Call Proc_210_95_E6B59C(var_8C, "SELECT ST.Amt AS Amount,ST.SunCode AS Code,ST.SNo as SNo, SM.Name AS SName FROM ", var_258, -1, var_1F4, 1)
  loc_1974BE7: var_228 = CVar(1 & var_8C & " AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='") & var_E4.Fields.Item("DocID").Value 
  loc_1974BFE: unk_56AA2C.Execute CStr(var_228 & "' Order by SNo"), 1, 1
  loc_1974C09: Set var_108 = var_1F4
  loc_1974C31: var_1F8 = var_108.RecordCount
  loc_1974C3F: If (var_1F8 > 0) Then
  loc_1974C42:   ' Referenced from: 1975419
  loc_1974C51:   If Not(var_108.EOF) Then
  loc_1974CA8:     If (Ucase(Trim(CVar(var_108.Fields.Item("Code")))) = CVar(MemVar_1F95078 & "NET")) Then
  loc_1974CDB:       var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1974CE4:       var_1C4 = CStr(var_208)
  loc_1974D17:       Proc_6_39_E7D3A0(var_208, CVar(var_108.Fields.Item("Amount")), 1)
  loc_1974D40:       var_190 = CStr(Format(var_208, "0.00"))
  loc_1974D54:       var_108.MoveNext
  loc_1974D6A:       If (var_108.EOF = &HFF) Then
  loc_1974D6D:         GoTo loc_197541C
  loc_1974D70:       End If
  loc_1974D70:     End If
  loc_1974D9A:     var_294 = var_108.Fields.Item("SNo").Value 'Variant
  loc_1974DB0:     If (var_294 = 1) Then
  loc_1974DE3:       var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1974DEC:       var_1AC = CStr(var_208)
  loc_1974E1F:       Proc_6_39_E7D3A0(var_208, CVar(var_108.Fields.Item("Amount")), 1)
  loc_1974E48:       var_170 = CStr(Format(var_208, "0.00"))
  loc_1974E5C:     Else
  loc_1974E67:       If (var_294 = 2) Then
  loc_1974E9A:         var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1974EA3:         var_1B0 = CStr(var_208)
  loc_1974ED6:         Proc_6_39_E7D3A0(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_1974EFF:         var_174 = CStr(Format(var_208, "0.00"))
  loc_1974F13:       Else
  loc_1974F1E:         If (var_294 = 3) Then
  loc_1974F51:           var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1974F5A:           var_1BC = CStr(var_208)
  loc_1974F8D:           Proc_6_39_E7D3A0(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_1974FB6:           var_188 = CStr(Format(var_208, "0.00"))
  loc_1974FCA:         Else
  loc_1974FD5:           If (var_294 = 4) Then
  loc_1975008:             var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1975011:             var_1B4 = CStr(var_208)
  loc_1975044:             Proc_6_39_E7D3A0(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_197506D:             var_178 = CStr(Format(var_208, "0.00"))
  loc_1975081:           Else
  loc_197508C:             If (var_294 = 5) Then
  loc_19750BF:               var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_19750C8:               var_1B8 = CStr(var_208)
  loc_19750FB:               Proc_6_39_E7D3A0(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_1975124:               var_17C = CStr(Format(var_208, "0.00"))
  loc_1975138:             Else
  loc_1975143:               If (var_294 = 6) Then
  loc_1975176:                 var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_197517F:                 var_1C0 = CStr(var_208)
  loc_19751B2:                 Proc_6_39_E7D3A0(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_19751DB:                 var_18C = CStr(Format(var_208, "0.00"))
  loc_19751EF:               Else
  loc_19751FA:                 If (var_294 = 7) Then
  loc_197522D:                   var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_1975236:                   var_1C8 = CStr(var_208)
  loc_1975269:                   Proc_6_39_E7D3A0(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_1975292:                   var_194 = CStr(Format(var_208, "0.00"))
  loc_19752A6:                 Else
  loc_19752B1:                   If (var_294 = 8) Then
  loc_19752E4:                     var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_19752ED:                     var_1CC = CStr(var_208)
  loc_1975320:                     Proc_6_39_E7D3A0(var_208, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_1975349:                     var_180 = CStr(Format(var_208, "0.00"))
  loc_197535D:                   Else
  loc_1975368:                     If (var_294 = 9) Then
  loc_197539B:                       var_208 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_19753A4:                       var_1D0 = CStr(var_208)
  loc_19753C0:                       var_B4 = var_108.Fields
  loc_19753D7:                       Proc_6_39_E7D3A0(var_208, CVar(var_B4.Item("Amount")), 1, 1)
  loc_1975400:                       var_184 = CStr(Format(var_208, "0.00"))
  loc_1975411:                     End If
  loc_1975411:                   End If
  loc_1975411:                 End If
  loc_1975411:               End If
  loc_1975411:             End If
  loc_1975411:           End If
  loc_1975411:         End If
  loc_1975411:       End If
  loc_1975411:     End If
  loc_1975414:     var_108.MoveNext
  loc_1975419:     GoTo loc_1974C42
  loc_197541C:     ' Referenced from: 1974D6D
  loc_197541C:   End If
  loc_197541C: End If
  loc_1975456: var_B0 = CVar(Proc_6_43_1003B24(Abs(Val(var_190)), "Rs.", vbNullString, Val(var_190), 1)) 'String
  loc_1975465: var_198 = CStr(StrConv(var_B0, 3, 0))
  loc_1975486: var_19C = "Regardless of charge instructions I agree to be held" & vbCrLf & "personally liable for payment of the total amount of this bill."
  loc_19754A2: unk_56AA2C.Execute "Select * From FAEnviro", var_B0, -1
  loc_19754AD: Set var_110 = var_B4
  loc_19754C5: var_B4 = var_110.Fields
  loc_1975529: var_258 = IIf((Proc_6_38_E69628(CVar(var_B4.Item("daterfill")), var_B4, 1) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("daterfill")), 1)))
  loc_1975532: MemVar_1F953C4 = CStr(var_258)
  loc_19755C6: var_258 = IIf((Proc_6_38_E69628(CVar(var_110.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("pagenofill")), 1)))
  loc_19755CF: MemVar_1F953C8 = CStr(var_258)
  loc_19755F3: var_A0 = "titlerfill"
  loc_1975607: var_1EC = var_110.Fields.Item(var_A0)
  loc_197561E: var_1E8 = "titlerfill"
  loc_1975632: var_280 = var_110.Fields.Item(var_1E8)
  loc_1975643: var_238 = CVar(Proc_6_38_E69628(CVar(var_280))) 'String
  loc_197565C: var_218 = (Proc_6_38_E69628(CVar(var_1EC), MemVar_1F953C8) = vbNullString)
  loc_1975663: var_258 = IIf(var_218, "M", var_238)
  loc_197568D: On Error Goto loc_1976C01
  loc_1975693: var_EC = "SaleBillHallEstimate"
  loc_1975699: var_F0 = "Sales Bill Report"
  loc_19756C3: Set var_B4 = var_1D4 
  loc_19756CA: CreateFieldDefFile(var_B4, MemVar_1F950B4 & "\" & var_EC & ".ttx", &HFF)
  loc_19756F8: var_8C = "\" & var_EC
  loc_197570C: Call 0.Method_arg_1C (MemVar_1F950B4 & var_8C & ".RPT", var_A0, var_B4)
  loc_1975717: MemVar_1F951E8 = var_B4
  loc_1975743: Call 0.Method_arg_64 (var_B4, CVar(var_B4), var_1E8)
  loc_197574B: Call 0.Method_arg_2C (var_218, CStr(var_258))
  loc_1975759: Call 0.Method_arg_150 (&H27)
  loc_197576F: Call 0.Method_arg_90 (var_B4, var_1F8)
  loc_1975777: Call 0.Method_arg_24 (var_E6)
  loc_1975783: For var_2AC =  To CInt(var_1F8): 1 = var_2AC 'Integer
  loc_197579C:   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19757A4:   Call 0.Method_arg_20 (var_1EC)
  loc_19757AC:   Call 0.Method_arg_30 (var_8C)
  loc_19757C2:   var_2BC = Ucase(CVar(var_8C)) 'Variant
  loc_19757F2:   If (var_2BC = Ucase("upttno")) Then
  loc_1975816:     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197581E:     Call 0.Method_arg_20 (var_1EC)
  loc_1975826:     Call 0.Method_arg_38 ("'" & var_148 & "'")
  loc_197583C:   Else
  loc_197585E:     If (var_2BC = Ucase("csttno")) Then
  loc_1975882:       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197588A:       Call 0.Method_arg_20 (var_1EC)
  loc_1975892:       Call 0.Method_arg_38 ("'" & var_14C & "'")
  loc_19758A8:     Else
  loc_19758CA:       If (var_2BC = Ucase("comp_name")) Then
  loc_19758EE:         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19758F6:         Call 0.Method_arg_20 (var_1EC)
  loc_19758FE:         Call 0.Method_arg_38 ("'" & var_168 & "'")
  loc_1975914:       Else
  loc_1975936:         If (var_2BC = Ucase("compaddress")) Then
  loc_197595A:           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975962:           Call 0.Method_arg_20 (var_1EC)
  loc_197596A:           Call 0.Method_arg_38 ("'" & var_164 & "'")
  loc_1975980:         Else
  loc_19759A2:           If (var_2BC = Ucase("comp_phone")) Then
  loc_19759C6:             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19759CE:             Call 0.Method_arg_20 (var_1EC)
  loc_19759D6:             Call 0.Method_arg_38 ("'" & var_16C & "'")
  loc_19759EC:           Else
  loc_1975A0E:             If (var_2BC = Ucase("BillHeader")) Then
  loc_1975A32:               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975A3A:               Call 0.Method_arg_20 (var_1EC)
  loc_1975A42:               Call 0.Method_arg_38 ("'" & var_15C & "'")
  loc_1975A58:             Else
  loc_1975A7A:               If (var_2BC = Ucase("name")) Then
  loc_1975A9E:                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975AA6:                 Call 0.Method_arg_20 (var_1EC)
  loc_1975AAE:                 Call 0.Method_arg_38 ("'" & var_158 & "'")
  loc_1975AC4:               Else
  loc_1975AE6:                 If (var_2BC = Ucase("address1")) Then
  loc_1975B0A:                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975B12:                   Call 0.Method_arg_20 (var_1EC)
  loc_1975B1A:                   Call 0.Method_arg_38 ("'" & var_1A0 & "'")
  loc_1975B30:                 Else
  loc_1975B52:                   If (var_2BC = Ucase("address2")) Then
  loc_1975B76:                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975B7E:                     Call 0.Method_arg_20 (var_1EC)
  loc_1975B86:                     Call 0.Method_arg_38 ("'" & var_1A4 & "'")
  loc_1975B9C:                   Else
  loc_1975BBE:                     If (var_2BC = Ucase("address3")) Then
  loc_1975BE2:                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975BEA:                       Call 0.Method_arg_20 (var_1EC)
  loc_1975BF2:                       Call 0.Method_arg_38 ("'" & var_1A8 & "'")
  loc_1975C08:                     Else
  loc_1975C2A:                       If (var_2BC = Ucase("PAX_Par")) Then
  loc_1975C4E:                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975C56:                         Call 0.Method_arg_20 (var_1EC)
  loc_1975C5E:                         Call 0.Method_arg_38 ("'" & var_130 & "'")
  loc_1975C74:                       Else
  loc_1975C96:                         If (var_2BC = Ucase("NARATION")) Then
  loc_1975CBA:                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975CC2:                           Call 0.Method_arg_20 (var_1EC)
  loc_1975CCA:                           Call 0.Method_arg_38 ("'" & var_140 & "'")
  loc_1975CE0:                         Else
  loc_1975D02:                           If (var_2BC = Ucase("PAX_Qty")) Then
  loc_1975D26:                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975D2E:                             Call 0.Method_arg_20 (var_1EC)
  loc_1975D36:                             Call 0.Method_arg_38 ("'" & var_134 & "'")
  loc_1975D4C:                           Else
  loc_1975D6E:                             If (var_2BC = Ucase("PAX_Rate")) Then
  loc_1975D92:                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975D9A:                               Call 0.Method_arg_20 (var_1EC)
  loc_1975DA2:                               Call 0.Method_arg_38 ("'" & var_138 & "'")
  loc_1975DB8:                             Else
  loc_1975DDA:                               If (var_2BC = Ucase("PAX_Amount")) Then
  loc_1975DFE:                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975E06:                                 Call 0.Method_arg_20 (var_1EC)
  loc_1975E0E:                                 Call 0.Method_arg_38 ("'" & var_13C & "'")
  loc_1975E24:                               Else
  loc_1975E46:                                 If (var_2BC = Ucase("billno")) Then
  loc_1975E78:                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975E80:                                   Call 0.Method_arg_20 (var_1EC)
  loc_1975E88:                                   Call 0.Method_arg_38 ("'" & var_12C & "\" & var_150 & "'")
  loc_1975EA2:                                 Else
  loc_1975EC4:                                   If (var_2BC = Ucase("billdate")) Then
  loc_1975EE8:                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975EF0:                                     Call 0.Method_arg_20 (var_1EC)
  loc_1975EF8:                                     Call 0.Method_arg_38 ("'" & var_154 & "'")
  loc_1975F0E:                                   Else
  loc_1975F30:                                     If (var_2BC = Ucase("strRupee")) Then
  loc_1975F54:                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975F5C:                                       Call 0.Method_arg_20 (var_1EC)
  loc_1975F64:                                       Call 0.Method_arg_38 ("'" & var_198 & "'")
  loc_1975F7A:                                     Else
  loc_1975F9C:                                       If (var_2BC = Ucase("lblamount")) Then
  loc_1975FC0:                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1975FC8:                                         Call 0.Method_arg_20 (var_1EC)
  loc_1975FD0:                                         Call 0.Method_arg_38 ("'" & var_1AC & "'")
  loc_1975FE6:                                       Else
  loc_1976008:                                         If (var_2BC = Ucase("amount")) Then
  loc_197602C:                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976034:                                           Call 0.Method_arg_20 (var_1EC)
  loc_197603C:                                           Call 0.Method_arg_38 ("'" & var_170 & "'")
  loc_1976052:                                         Else
  loc_1976074:                                           If (var_2BC = Ucase("lbldiscount")) Then
  loc_1976098:                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19760A0:                                             Call 0.Method_arg_20 (var_1EC)
  loc_19760A8:                                             Call 0.Method_arg_38 ("'" & var_1B0 & "'")
  loc_19760BE:                                           Else
  loc_19760E0:                                             If (var_2BC = Ucase("discount")) Then
  loc_1976104:                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197610C:                                               Call 0.Method_arg_20 (var_1EC)
  loc_1976114:                                               Call 0.Method_arg_38 ("'" & var_174 & "'")
  loc_197612A:                                             Else
  loc_197614C:                                               If (var_2BC = Ucase("lbldevelopmenttax")) Then
  loc_1976170:                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976178:                                                 Call 0.Method_arg_20 (var_1EC)
  loc_1976180:                                                 Call 0.Method_arg_38 ("'" & var_1BC & "'")
  loc_1976196:                                               Else
  loc_19761B8:                                                 If (var_2BC = Ucase("developmenttax")) Then
  loc_19761DC:                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19761E4:                                                   Call 0.Method_arg_20 (var_1EC)
  loc_19761EC:                                                   Call 0.Method_arg_38 ("'" & var_188 & "'")
  loc_1976202:                                                 Else
  loc_1976224:                                                   If (var_2BC = Ucase("lbltradetax")) Then
  loc_1976248:                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976250:                                                     Call 0.Method_arg_20 (var_1EC)
  loc_1976258:                                                     Call 0.Method_arg_38 ("'" & var_1B4 & "'")
  loc_197626E:                                                   Else
  loc_1976290:                                                     If (var_2BC = Ucase("tradetax")) Then
  loc_19762B4:                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19762BC:                                                       Call 0.Method_arg_20 (var_1EC)
  loc_19762C4:                                                       Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_19762DA:                                                     Else
  loc_19762FC:                                                       If (var_2BC = Ucase("lblservicecharge")) Then
  loc_1976320:                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976328:                                                         Call 0.Method_arg_20 (var_1EC)
  loc_1976330:                                                         Call 0.Method_arg_38 ("'" & var_1B8 & "'")
  loc_1976346:                                                       Else
  loc_1976368:                                                         If (var_2BC = Ucase("servicecharge")) Then
  loc_197638C:                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976394:                                                           Call 0.Method_arg_20 (var_1EC)
  loc_197639C:                                                           Call 0.Method_arg_38 ("'" & var_17C & "'")
  loc_19763B2:                                                         Else
  loc_19763D4:                                                           If (var_2BC = Ucase("lblroundoff")) Then
  loc_19763F8:                                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976400:                                                             Call 0.Method_arg_20 (var_1EC)
  loc_1976408:                                                             Call 0.Method_arg_38 ("'" & var_1C0 & "'")
  loc_197641E:                                                           Else
  loc_1976440:                                                             If (var_2BC = Ucase("roundoff")) Then
  loc_1976464:                                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197646C:                                                               Call 0.Method_arg_20 (var_1EC)
  loc_1976474:                                                               Call 0.Method_arg_38 ("'" & var_18C & "'")
  loc_197648A:                                                             Else
  loc_19764AC:                                                               If (var_2BC = Ucase("lblServiceTax")) Then
  loc_19764D0:                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19764D8:                                                                 Call 0.Method_arg_20 (var_1EC)
  loc_19764E0:                                                                 Call 0.Method_arg_38 ("'" & var_1C8 & "'")
  loc_19764F6:                                                               Else
  loc_1976518:                                                                 If (var_2BC = Ucase("ServiceTax")) Then
  loc_197653C:                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976544:                                                                   Call 0.Method_arg_20 (var_1EC)
  loc_197654C:                                                                   Call 0.Method_arg_38 ("'" & var_194 & "'")
  loc_1976562:                                                                 Else
  loc_1976584:                                                                   If (var_2BC = Ucase("lblTax8")) Then
  loc_19765A8:                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19765B0:                                                                     Call 0.Method_arg_20 (var_1EC)
  loc_19765B8:                                                                     Call 0.Method_arg_38 ("'" & var_1CC & "'")
  loc_19765CE:                                                                   Else
  loc_19765F0:                                                                     If (var_2BC = Ucase("Tax8Amt")) Then
  loc_1976614:                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197661C:                                                                       Call 0.Method_arg_20 (var_1EC)
  loc_1976624:                                                                       Call 0.Method_arg_38 ("'" & var_180 & "'")
  loc_197663A:                                                                     Else
  loc_197665C:                                                                       If (var_2BC = Ucase("lblTax9")) Then
  loc_1976680:                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976688:                                                                         Call 0.Method_arg_20 (var_1EC)
  loc_1976690:                                                                         Call 0.Method_arg_38 ("'" & var_1D0 & "'")
  loc_19766A6:                                                                       Else
  loc_19766C8:                                                                         If (var_2BC = Ucase("Tax9Amt")) Then
  loc_19766EC:                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19766F4:                                                                           Call 0.Method_arg_20 (var_1EC)
  loc_19766FC:                                                                           Call 0.Method_arg_38 ("'" & var_184 & "'")
  loc_1976712:                                                                         Else
  loc_1976734:                                                                           If (var_2BC = Ucase("lblnetamount")) Then
  loc_1976758:                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976760:                                                                             Call 0.Method_arg_20 (var_1EC)
  loc_1976768:                                                                             Call 0.Method_arg_38 ("'" & var_1C4 & "'")
  loc_197677E:                                                                           Else
  loc_19767A0:                                                                             If (var_2BC = Ucase("netamount")) Then
  loc_19767AA:                                                                               var_8C = "'" & var_190
  loc_19767C4:                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19767CC:                                                                               Call 0.Method_arg_20 (var_1EC)
  loc_19767D4:                                                                               Call 0.Method_arg_38 (var_8C & "'")
  loc_19767EA:                                                                             Else
  loc_197680C:                                                                               If (var_2BC = Ucase("Title")) Then
  loc_1976818:                                                                                 Call 0.Method_arg_50 (var_8C)
  loc_197683B:                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976843:                                                                                 Call 0.Method_arg_20 (var_1EC)
  loc_197684B:                                                                                 Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_1976863:                                                                               Else
  loc_1976885:                                                                                 If (var_2BC = Ucase("Jurisdition")) Then
  loc_19768A9:                                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19768B1:                                                                                   Call 0.Method_arg_20 (var_1EC)
  loc_19768B9:                                                                                   Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_19768CF:                                                                                 Else
  loc_19768F1:                                                                                   If (var_2BC = Ucase("Dater")) Then
  loc_1976915:                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_197691D:                                                                                     Call 0.Method_arg_20 (var_1EC)
  loc_1976925:                                                                                     Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_197693B:                                                                                   Else
  loc_197695D:                                                                                     If (var_2BC = Ucase("Pager")) Then
  loc_1976981:                                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976989:                                                                                       Call 0.Method_arg_20 (var_1EC)
  loc_1976991:                                                                                       Call 0.Method_arg_38 ("'" & MemVar_1F953C8 & "'")
  loc_19769A7:                                                                                     Else
  loc_19769C9:                                                                                       If (var_2BC = Ucase("billfooter")) Then
  loc_19769ED:                                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_19769F5:                                                                                         Call 0.Method_arg_20 (var_1EC)
  loc_19769FD:                                                                                         Call 0.Method_arg_38 ("'" & var_160 & "'")
  loc_1976A13:                                                                                       Else
  loc_1976A35:                                                                                         If (var_2BC = Ucase("AdvanceDetail")) Then
  loc_1976A59:                                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_1976A61:                                                                                           Call 0.Method_arg_20 (var_1EC)
  loc_1976A69:                                                                                           Call 0.Method_arg_38 ("'" & var_144 & "'")
  loc_1976A7F:                                                                                         Else
  loc_1976AA1:                                                                                           If (var_2BC = Ucase("comp_party")) Then
  loc_1976AAF:                                                                                             var_268 = 0
  loc_1976AC5:                                                                                             var_1E8 = "Select ('Company:                                                                                         ' + SG.Name) AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='"
  loc_1976AF4:                                                                                             var_208 = var_1E8 & var_E0.Fields.Item("DocID").Value 
  loc_1976B0B:                                                                                             unk_56AA2C.Execute CStr(var_208 & "'"), var_238, -1
  loc_1976B13:                                                                                             var_1F4 = var_1F4.Fields
  loc_1976B1B:                                                                                             var_268 = var_280.Item(var_280)
  loc_1976B23:                                                                                             var_2C0 = var_2C0.Value
  loc_1976B4C:                                                                                             Call 0.Method_arg_90 (var_2F4, CLng(var_E6), var_2F8)
  loc_1976B54:                                                                                             Call 0.Method_arg_20 (CStr(var_258 & var_258 & "'"))
  loc_1976B5C:                                                                                             Call 0.Method_arg_38 ("'")
  loc_1976B8A:                                                                                           End If
  loc_1976B8A:                                                                                         End If
  loc_1976B8A:                                                                                       End If
  loc_1976B8A:                                                                                     End If
  loc_1976B8A:                                                                                   End If
  loc_1976B8A:                                                                                 End If
  loc_1976B8A:                                                                               End If
  loc_1976B8A:                                                                             End If
  loc_1976B8A:                                                                           End If
  loc_1976B8A:                                                                         End If
  loc_1976B8A:                                                                       End If
  loc_1976B8A:                                                                     End If
  loc_1976B8A:                                                                   End If
  loc_1976B8A:                                                                 End If
  loc_1976B8A:                                                               End If
  loc_1976B8A:                                                             End If
  loc_1976B8A:                                                           End If
  loc_1976B8A:                                                         End If
  loc_1976B8A:                                                       End If
  loc_1976B8A:                                                     End If
  loc_1976B8A:                                                   End If
  loc_1976B8A:                                                 End If
  loc_1976B8A:                                               End If
  loc_1976B8A:                                             End If
  loc_1976B8A:                                           End If
  loc_1976B8A:                                         End If
  loc_1976B8A:                                       End If
  loc_1976B8A:                                     End If
  loc_1976B8A:                                   End If
  loc_1976B8A:                                 End If
  loc_1976B8A:                               End If
  loc_1976B8A:                             End If
  loc_1976B8A:                           End If
  loc_1976B8A:                         End If
  loc_1976B8A:                       End If
  loc_1976B8A:                     End If
  loc_1976B8A:                   End If
  loc_1976B8A:                 End If
  loc_1976B8A:               End If
  loc_1976B8A:             End If
  loc_1976B8A:           End If
  loc_1976B8A:         End If
  loc_1976B8A:       End If
  loc_1976B8A:     End If
  loc_1976B8A:   End If
  loc_1976B8D: Next var_2AC 'Integer
  loc_1976B97: Set var_1EC = Nothing
  loc_1976BAD: Set var_B4 = MemVar_1F951E8 
  loc_1976BB9: Proc_6_99_1484404(var_B4, 0, var_F0)
  loc_1976BC4: MemVar_1F951E8 = var_B4
  loc_1976BD4: MemVar_1F951E8 = Nothing
  loc_1976BDD: Set var_110 = Nothing
  loc_1976BE5: Set var_1D4 = Nothing
  loc_1976BED: Set var_108 = Nothing
  loc_1976BF5: Set var_E0 = Nothing
  loc_1976BFD: Set var_F4 = Nothing
  loc_1976C00: Exit Sub
  loc_1976C01: ' Referenced from: 197568D
  loc_1976C01: ' Referenced from: 1973FC3
  loc_1976C07: If (var_F8 = &HFF) Then
  loc_1976C10:   unk_56AA2C.RollbackTrans
  loc_1976C15: End If
  loc_1976C15: Proc_6_60_E63754(&HFF)
  loc_1976C1A: Exit Sub
End Sub
