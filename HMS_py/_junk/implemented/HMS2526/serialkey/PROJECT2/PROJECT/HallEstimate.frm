VERSION 5.00
Begin VB.Form HallEstimate
  Caption = "Hall Estimate Entry"
  BackColor = &HE5E5E5&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC000C0&
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8880
  ClientHeight = 8595
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
  Begin DataGrid DGHall
    Left = 9105
    Top = 7875
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGParty
    Left = 8805
    Top = 7425
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin MSHFlexGrid FGCat
    Left = 105
    Top = 4410
    Width = 7320
    Height = 1800
    Visible = 0   'False
    TabIndex = 56
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1260
    Top = 2295
    Width = 765
    Height = 225
    Visible = 0   'False
    TabIndex = 72
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
  Begin TextBox Txt
    Index = 22
    Left = 6195
    Top = 755
    Width = 1095
    Height = 240
    Visible = 0   'False
    TabIndex = 69
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
    Left = 3420
    Top = 7170
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 66
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
    Index = 20
    Left = 10305
    Top = 5430
    Width = 1290
    Height = 240
    TabIndex = 63
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
    Index = 19
    Left = 2370
    Top = 7425
    Width = 3060
    Height = 240
    Visible = 0   'False
    TabIndex = 13
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
    Index = 18
    Left = 4800
    Top = 755
    Width = 815
    Height = 240
    TabIndex = 5
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
    Left = 3225
    Top = 755
    Width = 565
    Height = 240
    TabIndex = 4
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
  Begin TextBox TextGt
    Index = 1
    Left = 9825
    Top = 525
    Width = 1290
    Height = 240
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin TextBox TextPer
    Index = 1
    Left = 9255
    Top = 525
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
    Index = 4
    Left = 8895
    Top = 60
    Width = 1860
    Height = 255
    Visible = 0   'False
    TabIndex = 23
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
    Index = 16
    Left = 4080
    Top = 5610
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 54
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
  Begin TextBox TxtPer
    Index = 1
    Left = 9255
    Top = 2910
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
  Begin TextBox TxtGt
    Index = 1
    Left = 9825
    Top = 2910
    Width = 1290
    Height = 240
    Enabled = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin CommandButton Command1
    Caption = "Set&tlement"
    BackColor = &HE5E5E5&
    Left = 8505
    Top = 6585
    Width = 2895
    Height = 375
    TabIndex = 50
    MaskColor = &HFFC0FF&
    Style = 1
  End
  Begin TextBox Txt
    Index = 13
    Left = 10305
    Top = 6195
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 49
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
    Left = 10305
    Top = 5940
    Width = 1290
    Height = 240
    TabIndex = 48
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
    Index = 15
    Left = 10305
    Top = 5685
    Width = 1290
    Height = 240
    TabIndex = 47
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
    Left = 1410
    Top = 755
    Width = 735
    Height = 240
    TabIndex = 3
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
  Begin MaskEdBox txtM
    Index = 1
    Left = 4680
    Top = 6915
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 11
    Left = 4080
    Top = 5865
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 21
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
    Index = 10
    Left = 1155
    Top = 6120
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
    Index = 9
    Left = 1155
    Top = 5865
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 18
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
    Index = 8
    Left = 1155
    Top = 5610
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Left = 4080
    Top = 6120
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Index = 6
    Left = 3420
    Top = 6915
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 11
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
  Begin DataGrid DGItem
    Left = 8835
    Top = 7170
    Width = 9405
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin TextBox Txt
    Index = 0
    Left = 1410
    Top = 490
    Width = 2385
    Height = 240
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
    Left = 5040
    Top = 490
    Width = 570
    Height = 240
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 2
    Left = 6195
    Top = 490
    Width = 1095
    Height = 240
    TabIndex = 2
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 135
    Top = 2955
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 14
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
  Begin TextBox Txt
    Index = 3
    Left = 1410
    Top = 1000
    Width = 5880
    Height = 240
    TabIndex = 6
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
    Index = 5
    Left = 3420
    Top = 6660
    Width = 2010
    Height = 240
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
  Begin DataGrid DGVType
    Left = 8520
    Top = 6975
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGBookNo
    Left = 8520
    Top = 6945
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 43
  End
  Begin MSHFlexGrid FGrid
    Left = 105
    Top = 2700
    Width = 7320
    Height = 2835
    TabIndex = 15
  End
  Begin TopCtrl TopCtrl1
    Left = -45
    Top = -15
    Width = 11835
    Height = 375
    TabIndex = 41
  End
  Begin MaskEdBox txtM
    Index = 0
    Left = 4680
    Top = 7170
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 65
  End
  Begin MaskEdBox txtMEd
    Index = 0
    Left = 225
    Top = 1800
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 71
  End
  Begin MSHFlexGrid FGrid1
    Left = 240
    Top = 1290
    Width = 7305
    Height = 1140
    TabIndex = 7
  End
  Begin Label Label1
    Caption = "Total"
    Index = 18
    ForeColor = &H400040&
    Left = 5670
    Top = 770
    Width = 420
    Height = 210
    Visible = 0   'False
    TabIndex = 70
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
    Left = 9765
    Top = 6945
    Width = 195
    Height = 660
    Visible = 0   'False
    TabIndex = 68
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Booking  Date And Time"
    Index = 17
    ForeColor = &HC00000&
    Left = 885
    Top = 7185
    Width = 2295
    Height = 210
    Visible = 0   'False
    TabIndex = 67
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
    Caption = "Net Amount Payable"
    Index = 16
    ForeColor = &H400040&
    Left = 8310
    Top = 5445
    Width = 1890
    Height = 210
    TabIndex = 64
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
    Caption = "Particulars"
    Index = 14
    ForeColor = &HC00000&
    Left = 885
    Top = 7440
    Width = 810
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
    Caption = "PAX Rate"
    Index = 13
    ForeColor = &H400040&
    Left = 3855
    Top = 770
    Width = 765
    Height = 210
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
  Begin Label Label1
    Caption = "No Of Paxs"
    Index = 11
    ForeColor = &H400040&
    Left = 2235
    Top = 770
    Width = 900
    Height = 210
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
  Begin Label LableCap
    Caption = "Total"
    Index = 1
    ForeColor = &H400040&
    Left = 8160
    Top = 525
    Width = 465
    Height = 240
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
  Begin Label LableAt
    Caption = "%"
    Index = 1
    ForeColor = &H400040&
    Left = 9645
    Top = 525
    Width = 180
    Height = 240
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
  Begin Label LableDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &H400040&
    Left = 7965
    Top = 555
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 57
  End
  Begin Label Label1
    Caption = "DocID"
    Index = 12
    ForeColor = &HC00000&
    Left = 8730
    Top = 90
    Width = 555
    Height = 210
    TabIndex = 29
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
  Begin Shape Shape2
    Left = 105
    Top = 405
    Width = 11415
    Height = 2235
    Shape = 4
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "Balance"
    Index = 9
    ForeColor = &H400040&
    Left = 2520
    Top = 5625
    Width = 615
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &H400040&
    Left = 7965
    Top = 2925
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 53
  End
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H400040&
    Left = 9645
    Top = 2910
    Width = 180
    Height = 240
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &H400040&
    Left = 8160
    Top = 2910
    Width = 465
    Height = 240
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
  Begin Shape Shape1
    BorderColor = &H400040&
    Left = 8175
    Top = 5385
    Width = 3555
    Height = 1125
    BorderWidth = 2
    FillColor = &HC000C0&
  End
  Begin Label Label1
    Caption = "Cash Recd."
    Index = 8
    ForeColor = &H400040&
    Left = 8310
    Top = 5700
    Width = 900
    Height = 210
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
  Begin Label Label1
    Caption = "Cash to be Recd."
    Index = 7
    ForeColor = &H400040&
    Left = 8310
    Top = 5955
    Width = 1410
    Height = 210
    TabIndex = 45
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
    Caption = "To Refund"
    Index = 2
    ForeColor = &H400040&
    Left = 8310
    Top = 6210
    Width = 870
    Height = 210
    Visible = 0   'False
    TabIndex = 44
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
    ForeColor = &H400040&
    Left = 210
    Top = 770
    Width = 870
    Height = 210
    TabIndex = 42
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
    ForeColor = &H400040&
    Left = 2520
    Top = 5880
    Width = 1245
    Height = 210
    Visible = 0   'False
    TabIndex = 40
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
    ForeColor = &H400040&
    Left = 105
    Top = 6135
    Width = 825
    Height = 210
    Visible = 0   'False
    TabIndex = 39
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
    ForeColor = &H400040&
    Left = 2520
    Top = 6135
    Width = 1485
    Height = 210
    Visible = 0   'False
    TabIndex = 38
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
    ForeColor = &HC00000&
    Left = 885
    Top = 6930
    Width = 2475
    Height = 210
    Visible = 0   'False
    TabIndex = 37
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
    Index = 15
    ForeColor = &H400040&
    Left = 105
    Top = 5880
    Width = 720
    Height = 210
    Visible = 0   'False
    TabIndex = 35
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
    ForeColor = &H400040&
    Left = 3855
    Top = 510
    Width = 585
    Height = 210
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
  Begin Label Label1
    Caption = "V.Type "
    Index = 4
    ForeColor = &H400040&
    Left = 210
    Top = 510
    Width = 660
    Height = 210
    TabIndex = 33
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
    ForeColor = &H400040&
    Left = 5670
    Top = 510
    Width = 390
    Height = 210
    TabIndex = 32
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H400040&
    Left = 4335
    Top = 495
    Width = 645
    Height = 240
    TabIndex = 31
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
    Caption = "Party "
    Index = 5
    ForeColor = &H400040&
    Left = 210
    Top = 1005
    Width = 480
    Height = 210
    TabIndex = 30
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
    Caption = "Hall Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 885
    Top = 6690
    Width = 795
    Height = 210
    Visible = 0   'False
    TabIndex = 28
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
    ForeColor = &H400040&
    Left = 105
    Top = 5625
    Width = 705
    Height = 210
    Visible = 0   'False
    TabIndex = 27
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

Attribute VB_Name = "HallEstimate"

Private global_148 As Integer
Private global_150 As Integer
Private global_52 As Integer
Private global_116 As Integer
Private global_136 As Integer

Private Sub DGItem_UnknownEvent_9 '1059C28
  'Data Table: 55BD00
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
  loc_10599CF: Me.DGItem.Visible = False
  loc_10599EE: If (Me.RecordCount > 0) Then
  loc_1059A2B:   Set var_B4 = Me.TxtGrid
  loc_1059A31:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_1059A39:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1059A62:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1059A6A:   var_EC = CVar(CLng(1)) 'Long
  loc_1059A9D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1059AA5:   Set var_B8 = Me.FGrid
  loc_1059AAB:   LateIdCallSt
  loc_1059ADA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1059AE2:   var_EC = CVar(CLng(9)) 'Long
  loc_1059B15:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1059B1D:   Set var_B8 = Me.FGrid
  loc_1059B23:   LateIdCallSt
  loc_1059B59:   var_B0 = Me.Fields.Item("Rate1")
  loc_1059B71:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1059B79:   var_FC = CVar(CLng(4)) 'Long
  loc_1059BA6:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_1059BAE:   Set var_B8 = Me.FGrid
  loc_1059BB4:   LateIdCallSt
  loc_1059BD2: End If
  loc_1059BDE: Set var_A8 = Me.TxtGrid
  loc_1059BE4: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_1059BEC: var_FC = var_B0.Visible
  loc_1059BFE: If (var_15E = &HFF) Then
  loc_1059C0A:   Set var_A8 = Me.TxtGrid
  loc_1059C10:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_1059C18:   var_B0.SetFocus
  loc_1059C24: End If
  loc_1059C24: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA1D08
  'Data Table: 55BD00
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA1CA3: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_100)) Then
  loc_EA1CB9:   Me.FGrid.Col = 1
  loc_EA1CC1: End If
  loc_EA1CD4: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA1CE7: Set var_88 = Me.TxtGrid
  loc_EA1CED: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA1CF5: var_BC.Visible = False
  loc_EA1D01: Call Proc_126_82_F26E50()
  loc_EA1D06: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67078
  'Data Table: 55BD00
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67034: Set var_88 = Me.TxtGrid
  loc_E6703A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67054: If (var_8C.Visible = 0) Then
  loc_E6706D:   Me.FGrid.BackColorSel = CVar(CLng(global_100))
  loc_E67075: End If
  loc_E67075: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFFDAC
  'Data Table: 55BD00
  loc_DFFDA4: Call Proc_126_76_E38B20()
  loc_DFFDA9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11F9720
  'Data Table: 55BD00
  Dim var_98 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11F927C: Set var_88 = Me.TopCtrl1
  loc_11F9282: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_11F92D2: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11F92DB:   Call Form_KeyDown(Cancel, arg_10)
  loc_11F92E0: End If
  loc_11F92E4: Set var_88 = Me.TopCtrl1
  loc_11F92EA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_11F92FF: If ( = "Browse") Then
  loc_11F9302:   Exit Sub
  loc_11F9303: End If
  loc_11F9377: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11F9390:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F93A0:   var_DC = "+{Tab}"
  loc_11F93A6:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11F93B0:   Cancel = 0
  loc_11F93B6: Else
  loc_11F93C0:   var_B8 = Me.FGrid.Rows
  loc_11F940D:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_11F9426:     Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F9432:     Set var_88 = Me.TopCtrl1
  loc_11F9438:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_B8)
  loc_11F944D:     If (Cancel = "Add") Then
  loc_11F945E:       Proc_303_0_FBACC8("{Tab}", 0)
  loc_11F9468:       Cancel = 0
  loc_11F946E:     Else
  loc_11F9473:       Call Proc_126_83_F0B054(0, Cancel)
  loc_11F9478:     End If
  loc_11F9478:   End If
  loc_11F9478: End If
  loc_11F947E: global_148 = Cancel
  loc_11F94A4: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11F94C8: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11F94DE:   var_EC = CLng(Me.FGrid.Col)
  loc_11F94EE:   If (var_EC = CLng(1)) Then
  loc_11F9504:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F951C:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F9521:     var_11C = vbNullString
  loc_11F952B:     Set var_E4 = Me.FGrid
  loc_11F9531:     LateIdCallSt
  loc_11F955C:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F9564:     var_FC = CVar(CLng(9)) 'Long
  loc_11F9569:     var_11C = vbNullString
  loc_11F9573:     Set var_E0 = Me.FGrid
  loc_11F9579:     LateIdCallSt
  loc_11F959E:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F95A6:     var_FC = CVar(CLng(3)) 'Long
  loc_11F95AB:     var_11C = vbNullString
  loc_11F95B5:     Set var_E0 = Me.FGrid
  loc_11F95BB:     LateIdCallSt
  loc_11F95D0:   Else
  loc_11F95D7:     If (var_EC = CLng(3)) Then
  loc_11F95F6:       Set var_E0 = Me.FGrid
  loc_11F961A:       LateIdCallSt
  loc_11F9632:       Call Proc_126_84_1153514(Me.FGrid, vbNullString, CVar(CLng(var_E0.Col)), CVar(CLng(Me.FGrid.Row)), var_E0, vbNullString, CVar(CLng(var_E0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F963A:     Else
  loc_11F9641:       If (var_EC = CLng(4)) Then
  loc_11F9660:         Set var_E0 = Me.FGrid
  loc_11F9684:         LateIdCallSt
  loc_11F969C:         Call Proc_126_84_1153514(Me.FGrid, vbNullString, CVar(CLng(var_E0.Col)), CVar(CLng(Me.FGrid.Row)), var_E0, vbNullString)
  loc_11F96A4:       Else
  loc_11F96AB:         If (var_EC = CLng(2)) Then
  loc_11F96C1:           var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F96D9:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F96DE:           var_11C = vbNullString
  loc_11F96E8:           Set var_E4 = Me.FGrid
  loc_11F96EE:           LateIdCallSt
  loc_11F9706:         End If
  loc_11F9706:       End If
  loc_11F9706:     End If
  loc_11F9706:   End If
  loc_11F9706: End If
  loc_11F970C: If (Cancel = &HD) Then
  loc_11F9714:   global_150 = 0
  loc_11F9717: End If
  loc_11F9719: Cancel = 0
  loc_11F971C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F448
  'Data Table: 55BD00
  loc_E0F439: Call FGrid_UnknownEvent_C()
  loc_E0F443: global_150 = 0
  loc_E0F446: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '105FF94
  'Data Table: 55BD00
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_105FD20: Set var_88 = Me.TopCtrl1
  loc_105FD26: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_105FD3B: If ( = "Browse") Then
  loc_105FD3E:   Exit Sub
  loc_105FD3F: End If
  loc_105FD52: var_BC = CLng(Me.FGrid.Col)
  loc_105FD62: If (var_BC = CLng(1)) Then
  loc_105FD69:   Set var_D4 = Me.FGrid
  loc_105FD8D:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_105FDBA:   Set var_C4 = var_D4
  loc_105FDCC:   Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_105FDF4:   Set var_88 = Me.TxtGrid
  loc_105FDFA:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_105FE02:   0 = var_C4.Text
  loc_105FE1B:   If (Len(var_C0) <= 1) Then
  loc_105FE2A:     Set var_88 = Me.TxtGrid
  loc_105FE30:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_105FE38:     var_DA = var_C4.Text
  loc_105FE49:     Set var_C8 = Me.TxtGrid
  loc_105FE4F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_105FE57:     var_D4.Text = var_C0
  loc_105FE6A:   End If
  loc_105FE76:   Set var_88 = Me.TxtGrid
  loc_105FE7C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_105FE96:   Set var_C8 = Me.TxtGrid
  loc_105FE9C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_105FEA4:   var_D4.SelStart = Len(var_C4.Text)
  loc_105FEBA: Else
  loc_105FEC1:   If Not (var_BC = CLng(3)) Then
  loc_105FECB:     If (var_BC = CLng(4)) Then
  loc_105FECE:     End If
  loc_105FF0C:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_105FF21:   Else
  loc_105FF28:     If (var_BC = CLng(2)) Then
  loc_105FF69:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_105FF7B:     End If
  loc_105FF7B:   End If
  loc_105FF7B: End If
  loc_105FF85: If (CLng(Cancel) <> &HD) Then
  loc_105FF8D:   global_150 = &HFF
  loc_105FF90: End If
  loc_105FF90: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FED6E4
  'Data Table: 55BD00
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  loc_FED50C: Set var_90 = Me.TopCtrl1
  loc_FED512: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_FED527: If ( = "Browse") Then
  loc_FED52A:   Exit Sub
  loc_FED52B: End If
  loc_FED548: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FED54B:   Exit Sub
  loc_FED54C: End If
  loc_FED55D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FED57F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FED5B9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FED5DB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FED5F1:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FED5FA:         Set var_114 = Me.FGrid
  loc_FED615:       Else
  loc_FED628:         Me.FGrid.Rows = 1
  loc_FED64E:         var_B0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FED656:         Set var_114 = Me.FGrid
  loc_FED683:         Me.FGrid.FixedRows = 1
  loc_FED68B:       End If
  loc_FED68B:       Call Proc_126_84_1153514(FGrid.DispID_10000, var_B0)
  loc_FED690:     End If
  loc_FED693:   Else
  loc_FED6B4:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_FED6C4:   End If
  loc_FED6C8:   Set var_90 = Me.FGrid
  loc_FED6D9: End If
  loc_FED6DE: Set var_8C = Nothing
  loc_FED6E1: Exit Sub
  loc_FED6E2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E46354
  'Data Table: 55BD00
  Dim var_8C As TextBox
  loc_E46328: Call Proc_126_82_F26E50()
  loc_E46338: Set var_88 = Me.TxtGrid
  loc_E4633E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E46346: var_8C.Visible = False
  loc_E46352: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E52A0C
  'Data Table: 55BD00
  loc_E529E6: Set var_88 = Me.txtM
  loc_E529EC: Call 0.Method_txtM_UnknownEvent_00 (Cancel)
  loc_E529FA: Proc_6_74_E23240(var_8C)
  loc_E52A06: Call Proc_126_82_F26E50(var_8C)
  loc_E52A0B: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4EF9C
  'Data Table: 55BD00
  loc_E4EF7A: Set var_88 = Me.txtM
  loc_E4EF80: Call 0.Method_txtM_UnknownEvent_10 (Cancel)
  loc_E4EF8E: Proc_6_73_E23294(var_8C)
  loc_E4EF9A: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E549A8
  'Data Table: 55BD00
  Dim arg_10 As Integer
  loc_E5497E: Set var_88 = Me.txtM
  loc_E54984: Call 0.Method_txtM_UnknownEvent_80 (Cancel)
  loc_E5499E: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E549A3:   arg_10 = &HFF
  loc_E549A6: End If
  loc_E549A6: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E605CC
  'Data Table: 55BD00
  loc_E60586: If (CLng(arg_10) = &H1B) Then
  loc_E60589:   Call Proc_126_82_F26E50()
  loc_E6058E:   Exit Sub
  loc_E6058F: End If
  loc_E605A4: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E605AD:   Proc_6_75_E5335C(arg_10)
  loc_E605B2: End If
  loc_E605BC: If (CLng(arg_10) = &H26) Then
  loc_E605C5:   Proc_6_76_E533C8(arg_10, arg_14)
  loc_E605CA: End If
  loc_E605CA: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ED0020
  'Data Table: 55BD00
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECFF82: Set var_88 = Me.TxtGt
  loc_ECFF88: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECFF96: Proc_6_74_E23240(var_8C)
  loc_ECFFA2: Call Proc_126_82_F26E50(var_8C)
  loc_ECFFB6: Set var_88 = Me.TxtGt
  loc_ECFFBC: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECFFC4: var_8C.SelStart = 0
  loc_ECFFDD: Set var_88 = Me.TxtGt
  loc_ECFFE3: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECFFFE: Set var_90 = Me.TxtGt
  loc_ED0004: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ED000C: var_98.SelLength = Len(var_8C.Text)
  loc_ED001F: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5C430
  'Data Table: 55BD00
  loc_E5C3FD: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5C406:   Proc_6_75_E5335C(Shift)
  loc_E5C40B: End If
  loc_E5C420: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5C429:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5C42E: End If
  loc_E5C42E: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E5802C
  'Data Table: 55BD00
  loc_E57FFE: Set var_88 = Me.TxtGt
  loc_E58004: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E5801F: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E5802B: Exit Sub
End Sub

Private Sub TxtGt_KeyUp(KeyCode As Integer, Shift As Integer) 'E02134
  'Data Table: 55BD00
  loc_E0212E: Call Proc_126_89_164E294(KeyCode)
  loc_E02133: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4F4E4
  'Data Table: 55BD00
  loc_E4F4C2: Set var_88 = Me.TxtGt
  loc_E4F4C8: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4F4D6: Proc_6_73_E23294(var_8C)
  loc_E4F4E2: Exit Sub
End Sub

Private Sub TextGt_GotFocus(Index As Integer) 'ECF160
  'Data Table: 55BD00
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECF0C2: Set var_88 = Me.TextGt
  loc_ECF0C8: Call 0.Method_TextGt_GotFocus0 (Index)
  loc_ECF0D6: Proc_6_74_E23240(var_8C)
  loc_ECF0E2: Call Proc_126_82_F26E50(var_8C)
  loc_ECF0F6: Set var_88 = Me.TextGt
  loc_ECF0FC: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ECF104: var_8C.SelStart = 0
  loc_ECF11D: Set var_88 = Me.TextGt
  loc_ECF123: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ECF13E: Set var_90 = Me.TextGt
  loc_ECF144: Call 0.Method_TextGt_GotFocus0 (Index, var_98)
  loc_ECF14C: var_98.SelLength = Len(var_8C.Text)
  loc_ECF15F: Exit Sub
End Sub

Private Sub TextGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BF80
  'Data Table: 55BD00
  loc_E5BF4D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BF56:   Proc_6_75_E5335C(Shift)
  loc_E5BF5B: End If
  loc_E5BF70: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BF79:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5BF7E: End If
  loc_E5BF7E: Exit Sub
End Sub

Private Sub TextGt_KeyPress(KeyAscii As Integer) 'E57790
  'Data Table: 55BD00
  loc_E57762: Set var_88 = Me.TextGt
  loc_E57768: Call 0.Method_TextGt_KeyPress0 (KeyAscii)
  loc_E57783: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E5778F: Exit Sub
End Sub

Private Sub TextGt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFC3B0
  'Data Table: 55BD00
  Dim TextGt_KeyUpFF As String
  loc_DFC3AC: Exit Sub
  loc_DFC3AD: TextGt_KeyUpFF = 
End Sub

Private Sub TextGt_LostFocus(Index As Integer) 'E4FBCC
  'Data Table: 55BD00
  loc_E4FBAA: Set var_88 = Me.TextGt
  loc_E4FBB0: Call 0.Method_TextGt_LostFocus0 (Index)
  loc_E4FBBE: Proc_6_73_E23294(var_8C)
  loc_E4FBCA: Exit Sub
End Sub

Private Sub TextGt_Validate(Cancel As Boolean) 'E021E8
  'Data Table: 55BD00
  loc_E021E2: Call Proc_126_90_14ACC4C(Cancel)
  loc_E021E7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'FF3BEC
  'Data Table: 55BD00
  Dim var_98 As Variant
  Dim unk_55BD25 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C8 As TextBox
  loc_FF3A04: On Error Goto loc_FF3BE4
  loc_FF3A2A: Call Proc_126_81_104BE74(Proc_5_1_100EC1C("ADD", Me))
  loc_FF3A35: Call Proc_126_80_101B554(global_80)
  loc_FF3A53: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_98)
  loc_FF3A5B: var_98.Text = CStr(MemVar_1F950EC)
  loc_FF3A91: unk_55BD25.Execute "Select Description,V_Type From Voucher_Type Where NCat='EBILL' AND rESTCODE='" & global_56 & "'", var_BC, -1
  loc_FF3A9C: Set var_88 = Me.Txt
  loc_FF3AC0: If (var_88.RecordCount > 0) Then
  loc_FF3AFC:   Set var_C4 = Me.Txt
  loc_FF3B02:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_C8)
  loc_FF3B0A:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_FF3B3A:   var_98 = var_88.Fields.Item("V_Type")
  loc_FF3B59:   Set var_C4 = Me.Txt
  loc_FF3B5F:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_C8)
  loc_FF3B67:   var_C8.Tag = CStr(var_98.Value)
  loc_FF3B7D: End If
  loc_FF3B88: Set var_90 = Me.Txt
  loc_FF3B8E: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_98)
  loc_FF3B96: var_98.SetFocus
  loc_FF3BB0: Set var_90 = Me.Txt
  loc_FF3BB6: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_98)
  loc_FF3BCC: Call Proc_126_88_1A4F494(CDate(var_98.Text))
  loc_FF3BE0: Set var_88 = Nothing
  loc_FF3BE3: Exit Sub
  loc_FF3BE4: ' Referenced from: FF3A04
  loc_FF3BE4: Proc_6_60_E63754(var_90)
  loc_FF3BE9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'FA1AE8
  'Data Table: 55BD00
  Dim var_94 As TextBox
  loc_FA1960: On Error Goto loc_FA1ADF
  loc_FA1986: Call Proc_126_81_104BE74(Proc_5_1_100EC1C("EDIT", Me))
  loc_FA199E: Set var_8C = Me.Txt
  loc_FA19A4: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_94)
  loc_FA19AC: var_94.Enabled = False
  loc_FA19C5: Set var_8C = Me.Txt
  loc_FA19CB: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_94)
  loc_FA19D3: var_94.Enabled = False
  loc_FA19EC: Set var_8C = Me.Txt
  loc_FA19F2: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(3), var_94)
  loc_FA19FA: var_94.Enabled = False
  loc_FA1A13: Set var_8C = Me.Txt
  loc_FA1A19: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(5), var_94)
  loc_FA1A21: var_94.Enabled = False
  loc_FA1A3A: Set var_8C = Me.Txt
  loc_FA1A40: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(7), var_94)
  loc_FA1A48: var_94.Enabled = False
  loc_FA1A61: Set var_8C = Me.Txt
  loc_FA1A67: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(&HC), var_94)
  loc_FA1A6F: var_94.Enabled = False
  loc_FA1A88: Set var_8C = Me.Txt
  loc_FA1A8E: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(&HB), var_94)
  loc_FA1A96: var_94.Enabled = False
  loc_FA1AAF: Set var_8C = Me.Txt
  loc_FA1AB5: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_94)
  loc_FA1ABD: var_94.Enabled = False
  loc_FA1ACD: Set var_8C = Me.FGrid
  loc_FA1ADE: Exit Sub
  loc_FA1ADF: ' Referenced from: FA1960
  loc_FA1ADF: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_FA1AE4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '12F58D8
  'Data Table: 55BD00
  Dim unk_55BD34 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_12F520C: On Error Goto loc_12F5887
  loc_12F5246: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_12F5252:   unk_55BD34.BeginTrans var_118
  loc_12F5268:   var_94 = Me.Bookmark 'Variant
  loc_12F52C2:   unk_55BD34.Execute CStr("Delete From SunTran Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F530D:   var_160 = 0
  loc_12F5320:   var_158 = 0
  loc_12F532B:   var_154 = 0
  loc_12F533E:   var_14C = 0
  loc_12F5349:   var_148 = 0
  loc_12F535C:   var_140 = 0
  loc_12F53A5:   Proc_154_5_10E3BD4(MemVar_1F95044, "SunTran", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F5423:   unk_55BD34.Execute CStr("Delete From SunTranH Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F546E:   var_160 = 0
  loc_12F5481:   var_158 = 0
  loc_12F548C:   var_154 = 0
  loc_12F549F:   var_14C = 0
  loc_12F54AA:   var_148 = 0
  loc_12F54BD:   var_140 = 0
  loc_12F5506:   Proc_154_5_10E3BD4(MemVar_1F95044, "SunTranH", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F5584:   unk_55BD34.Execute CStr("Delete From HallStock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F55CF:   var_160 = 0
  loc_12F55E2:   var_158 = 0
  loc_12F55ED:   var_154 = 0
  loc_12F5600:   var_14C = 0
  loc_12F560B:   var_148 = 0
  loc_12F561E:   var_140 = 0
  loc_12F5667:   Proc_154_5_10E3BD4(MemVar_1F95044, "HallStock", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F56D7:   var_F4 = "Delete From HallSale1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12F56E5:   unk_55BD34.Execute CStr(var_F4), var_114, -1
  loc_12F5730:   var_160 = 0
  loc_12F5743:   var_158 = 0
  loc_12F574E:   var_154 = 0
  loc_12F5761:   var_14C = 0
  loc_12F576C:   var_148 = 0
  loc_12F577F:   var_140 = 0
  loc_12F57BF:   var_124 = "HallSale1"
  loc_12F57C8:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F57F6:   unk_55BD34.CommitTrans
  loc_12F5806:   Me.Requery -1
  loc_12F5826:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12F5833:     Me.Bookmark = var_94
  loc_12F583B:   Else
  loc_12F584F:     If (Me.EOF = 0) Then
  loc_12F5858:       Me.MoveLast
  loc_12F585D:     End If
  loc_12F585D:   End If
  loc_12F585D:   Call Proc_126_78_18380AC(var_140, 0, var_148, var_14C)
  loc_12F587E:   Proc_5_0_1107AD0(&HFF, Me, global_80, 0)
  loc_12F5886: End If
  loc_12F5886: Exit Sub
  loc_12F5887: ' Referenced from: 12F520C
  loc_12F588D: unk_55BD34.RollbackTrans
  loc_12F589A: Set var_11C = Err()
  loc_12F58A0: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_12F58C1: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_12F58D4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E17F74
  'Data Table: 55BD00
  loc_E17F69: Me.Global.Unload Me
  loc_E17F71: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E38FA8
  'Data Table: 55BD00
  loc_E38F98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38FA0: Call Proc_126_78_18380AC(global_80)
  loc_E38FA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E38DC8
  'Data Table: 55BD00
  loc_E38DB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38DC0: Call Proc_126_78_18380AC(global_80)
  loc_E38DC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E38E28
  'Data Table: 55BD00
  Dim var_7701 As Double
  loc_E38E18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38E20: Call Proc_126_78_18380AC(global_80)
  loc_E38E25: Exit Sub
  loc_E38E26: var_7701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E38EE8
  'Data Table: 55BD00
  loc_E38ED8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E38EE0: Call Proc_126_78_18380AC(global_80)
  loc_E38EE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '197988C
  'Data Table: 55BD00
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
  Dim unk_55BD25 As Connection15
  Dim var_244 As Variant
  Dim var_248 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Double
  Dim var_FC As Variant
  Dim var_D4 As Double
  Dim var_EC As Double
  Dim var_F4 As Variant
  Dim var_104 As Double
  Dim var_10C As Double
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim unk_55BD34 As Connection15
  Dim var_28C As TextBox
  Dim var_2C4 As Label
  Dim var_320 As TextBox
  Dim var_38C As TextBox
  Dim var_41C As Variant
  Dim var_D60 As Double
  Dim var_430 As Variant
  Dim var_D68 As Double
  Dim var_6E4 As Variant
  Dim var_D70 As Double
  Dim var_6F8 As Variant
  Dim var_D78 As Double
  Dim var_79C As MaskEdBox
  Dim var_7AC As Variant
  Dim var_84C As MaskEdBox
  Dim var_85C As Variant
  Dim var_8C4 As TextBox
  Dim var_910 As TextBox
  Dim var_95C As TextBox
  Dim var_D80 As Double
  Dim var_A00 As TextBox
  Dim var_D88 As Double
  Dim var_254 As String
  Dim var_270 As String
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_2A0 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_308 As Variant
  Dim var_3B0 As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_444 As Variant
  Dim var_474 As Variant
  Dim var_484 As Variant
  Dim var_4A4 As Variant
  Dim var_4C4 As Variant
  Dim var_4E4 As Variant
  Dim var_4F4 As Variant
  Dim var_504 As Variant
  Dim var_514 As Variant
  Dim var_544 As Variant
  Dim var_554 As Variant
  Dim var_584 As Variant
  Dim var_5C4 As Variant
  Dim var_5E4 As Variant
  Dim var_604 As Variant
  Dim var_614 As Variant
  Dim var_624 As Variant
  Dim var_654 As Variant
  Dim var_664 As Variant
  Dim var_6A4 As Variant
  Dim var_70C As Variant
  Dim var_794 As Variant
  Dim var_834 As Variant
  Dim var_844 As Variant
  Dim var_87C As Variant
  Dim var_8D8 As Variant
  Dim var_8E8 As Variant
  Dim var_934 As Variant
  Dim var_9E8 As Variant
  Dim var_A24 As Variant
  Dim var_A34 As Variant
  Dim var_BAC As Variant
  Dim var_BBC As Variant
  Dim var_BEC As Variant
  Dim var_D20 As Variant
  Dim var_D34 As String
  Dim var_274 As Variant
  Dim var_388 As TextBox
  Dim var_414 As Variant
  Dim var_418 As MSHFlexGrid
  Dim var_424 As MSHFlexGrid
  Dim var_42C As Variant
  Dim var_6D8 As Variant
  Dim var_6E0 As MSHFlexGrid
  Dim var_6EC As MSHFlexGrid
  Dim var_DD4 As Variant
  Dim var_DF4 As Variant
  Dim var_6F4 As Variant
  Dim var_E38 As Variant
  Dim var_E58 As Variant
  Dim var_FF4 As Double
  Dim var_740 As MSHFlexGrid
  Dim var_FFC As Double
  Dim var_744 As MSHFlexGrid
  Dim var_258 As String
  Dim var_2C8 As String
  Dim var_434 As String
  Dim var_6E8 As String
  Dim var_914 As String
  Dim var_A04 As String
  Dim var_764 As Variant
  Dim var_814 As Variant
  Dim var_31C As Label
  Dim var_88 As Recordset15
  loc_1976D98: On Error Goto loc_1979867
  loc_1976DA6: Set var_180 = Me.Txt
  loc_1976DAC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_1976DD5: If (Proc_6_27_EA61EC(var_184, "Voucher Date") = 0) Then
  loc_1976DD8:   Exit Sub
  loc_1976DD9: End If
  loc_1976DE4: Set var_180 = Me.Txt
  loc_1976DEA: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_184)
  loc_1976E13: If (Proc_6_27_EA61EC(var_184, "Voucher No") = 0) Then
  loc_1976E16:   Exit Sub
  loc_1976E17: End If
  loc_1976E22: Set var_180 = Me.Txt
  loc_1976E28: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_184)
  loc_1976E51: If (Proc_6_27_EA61EC(var_184, "Party name") = 0) Then
  loc_1976E54:   Exit Sub
  loc_1976E55: End If
  loc_1976E60: Set var_180 = Me.Txt
  loc_1976E66: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_184)
  loc_1976E77: Set var_188 = var_184
  loc_1976E8F: If (Proc_6_27_EA61EC(var_188, "Booking No") = 0) Then
  loc_1976E92:   Exit Sub
  loc_1976E93: End If
  loc_1976E9A: Set var_180 = Me.TxtGt
  loc_1976EA0: Call 0.Method_TopCtrl1_UnknownEvent_194 (var_18E)
  loc_1976EB2: Set var_184 = Me.TxtGt
  loc_1976EB8: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_18E, var_188)
  loc_1976EDE: If (CDbl(Val(var_188.Text)) > CDbl(0)) Then
  loc_1976EE1:   var_1A0 = 1
  loc_1976EEA:   var_1C0 = 1
  loc_1976F08:   var_1F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1976F0E:   var_200 = Trim(var_1F0)
  loc_1976F2A:   If (var_200 = vbNullString) Then
  loc_1976F46:     MsgBox("Fill Item Name ", 0, var_1F0, var_200, var_220)
  loc_1976F69:     Me.FGrid.Row = 1
  loc_1976F75:     Set var_180 = Me.FGrid
  loc_1976F99:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1976FA1:     Exit Sub
  loc_1976FA2:   End If
  loc_1976FA2:   var_1A0 = 1
  loc_1976FAB:   var_1C0 = 3
  loc_1976FC9:   var_1F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1976FCF:   var_200 = Trim(var_1F0)
  loc_1976FEB:   If (var_200 = vbNullString) Then
  loc_1977007:     MsgBox("Item Detail Required ", 0, var_1F0, var_200, var_220)
  loc_197702A:     Me.FGrid.Row = 1
  loc_1977036:     Set var_180 = Me.FGrid
  loc_197705A:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1977062:     Exit Sub
  loc_1977063:   End If
  loc_1977063: End If
  loc_1977088: For var_224 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_224 'Integer
  loc_1977092:   var_1A0 = CVar(CLng(var_92)) 'Long
  loc_197709A:   var_1C0 = CVar(CLng(7)) 'Long
  loc_19770CA:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_19770D1:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_19770D9:     var_1C0 = CVar(CLng(8)) 'Long
  loc_1977105:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1977114:   Else
  loc_1977118:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_1977120:     var_1C0 = CVar(CLng(8)) 'Long
  loc_197712F:     var_1E0 = Me.FGrid.TextMatrix)
  loc_197713A:     var_18C = CStr(var_1E0)
  loc_197714C:     var_AC = (var_AC + Val(var_18C))
  loc_1977158:   End If
  loc_197715B: Next var_224 'Integer
  loc_197716C: Set var_180 = Me.TxtGt
  loc_1977172: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_18E, var_92)
  loc_197717D: For var_230 =  To var_18E: 1 = var_230 'Integer
  loc_19771AF:   Set var_180 = Me.LblCap
  loc_19771B5:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_1E0, -1)
  loc_19771E7:   unk_55BD25.Execute var_244 & var_18C & "' And v_type='" & global_132 & "'", 0, var_248
  loc_19771F7:    = var_244.Item()
  loc_19771FF:    = var_248.Value
  loc_1977233:   var_24C = Proc_6_38_E69628(var_184.Tag.Fields)
  loc_197723E:   If (var_24C = "Addition") Then
  loc_197724E:     Set var_180 = Me.TxtGt
  loc_1977254:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184)
  loc_197725C:     var_18C = var_184.Text
  loc_1977273:     var_B4 = (var_B4 + Val(var_18C))
  loc_197728D:     Set var_180 = Me.TxtPer
  loc_1977293:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C)
  loc_197729B:     var_B4 = var_184.Text
  loc_19772B2:     var_CC = (var_CC + Val(var_18C))
  loc_19772C2:   Else
  loc_19772CA:     If (var_24C = "Deduction") Then
  loc_19772DA:       Set var_180 = Me.TxtGt
  loc_19772E0:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C)
  loc_19772E8:       var_CC = var_184.Text
  loc_19772FF:       var_BC = (var_BC + Val(var_18C))
  loc_1977319:       Set var_180 = Me.TxtPer
  loc_197731F:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_BC)
  loc_1977327:       var_22C = var_184.Text
  loc_197733E:       var_C4 = (var_C4 + Val(var_18C))
  loc_197734E:     Else
  loc_1977356:       If (var_24C = "Discount") Then
  loc_1977366:         Set var_180 = Me.TxtGt
  loc_197736C:         Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_C4)
  loc_1977374:         var_22C = var_184.Text
  loc_197738B:         var_DC = (var_DC + Val(var_18C))
  loc_19773A5:         Set var_180 = Me.TxtPer
  loc_19773AB:         Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_DC)
  loc_19773B3:         var_22C = var_184.Text
  loc_19773CA:         var_E4 = (var_E4 + Val(var_18C))
  loc_19773DA:       Else
  loc_19773E2:         If (var_24C = "Luxury Tax") Then
  loc_19773F2:           Set var_180 = Me.TxtGt
  loc_19773F8:           Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_E4)
  loc_1977400:           var_22C = var_184.Text
  loc_1977417:           var_FC = (var_FC + Val(var_18C))
  loc_1977431:           Set var_180 = Me.TxtPer
  loc_1977437:           Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_FC)
  loc_197743F:           var_22C = var_184.Text
  loc_1977456:           var_D4 = (var_D4 + Val(var_18C))
  loc_1977466:         Else
  loc_197746E:           If (var_24C = "Round Off") Then
  loc_197747E:             Set var_180 = Me.TxtGt
  loc_1977484:             Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_D4)
  loc_197748C:             var_22C = var_184.Text
  loc_19774A3:             var_EC = (var_EC + Val(var_18C))
  loc_19774BD:             Set var_180 = Me.TxtPer
  loc_19774C3:             Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_EC)
  loc_19774CB:             var_22C = var_184.Text
  loc_19774E2:             var_F4 = (var_F4 + Val(var_18C))
  loc_19774F2:           Else
  loc_19774FA:             If (var_24C = "Sale Tax") Then
  loc_197750A:               Set var_180 = Me.TxtGt
  loc_1977510:               Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_F4)
  loc_1977518:               var_22C = var_184.Text
  loc_197752F:               var_FC = (var_FC + Val(var_18C))
  loc_1977549:               Set var_180 = Me.TxtPer
  loc_197754F:               Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_FC)
  loc_1977557:               var_22C = var_184.Text
  loc_197756E:               var_D4 = (var_D4 + Val(var_18C))
  loc_197757E:             Else
  loc_1977586:               If (var_24C = "Service Charge") Then
  loc_1977596:                 Set var_180 = Me.TxtGt
  loc_197759C:                 Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_D4)
  loc_19775A4:                 var_22C = var_184.Text
  loc_19775BB:                 var_104 = (var_104 + Val(var_18C))
  loc_19775D5:                 Set var_180 = Me.TxtPer
  loc_19775DB:                 Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_104)
  loc_19775E3:                 var_22C = var_184.Text
  loc_19775FA:                 var_10C = (var_10C + Val(var_18C))
  loc_197760A:               Else
  loc_1977612:                 If (var_24C = "Service Tax") Then
  loc_1977622:                   Set var_180 = Me.TxtGt
  loc_1977628:                   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_10C)
  loc_1977630:                   var_22C = var_184.Text
  loc_1977647:                   var_FC = (var_FC + Val(var_18C))
  loc_1977661:                   Set var_180 = Me.TxtPer
  loc_1977667:                   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_184, var_18C, var_FC)
  loc_197766F:                   var_22C = var_184.Text
  loc_1977686:                   var_D4 = (var_D4 + Val(var_18C))
  loc_1977693:                   GoTo loc_1977696
  loc_1977696:                   ' Referenced from:               1977693
  loc_1977696:                 End If
  loc_1977696:               End If
  loc_1977696:             End If
  loc_1977696:           End If
  loc_1977696:         End If
  loc_1977696:       End If
  loc_1977696:     End If
  loc_1977696:   End If
  loc_1977699: Next var_230 'Integer
  loc_19776A1: var_9C = vbNullString
  loc_19776A7: Call Proc_126_79_112F298(var_18E)
  loc_19776B2: If (var_18E = 0) Then
  loc_19776B5:   Exit Sub
  loc_19776B6: End If
  loc_19776C1: Set var_180 = Me.TxtGrid
  loc_19776C7: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_184)
  loc_19776CF: var_184.Visible = False
  loc_19776DB: Call Proc_126_82_F26E50()
  loc_19776EE: Set var_180 = Me.Txt
  loc_19776F4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_184)
  loc_19776FC: var_18C = var_184.Text
  loc_197771C: If (Proc_6_91_EF38D0(CDate(var_18C)) = 0) Then
  loc_197772A:   Set var_180 = Me.Txt
  loc_1977730:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_1977738:   var_184.SetFocus
  loc_1977744:   Exit Sub
  loc_1977745: End If
  loc_1977749: Set var_180 = Me.TopCtrl1
  loc_197774F: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_184)
  loc_1977764: If ( = "Add") Then
  loc_1977794:   Set var_180 = Me.Txt
  loc_197779A:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Select Count(*) From HallSale1 Where DocID='", var_1E0, -1)
  loc_19777A2:   var_188 = var_184.Text
  loc_19777BB:   unk_55BD25.Execute var_244 & var_18C & "'", 0, var_248
  loc_19777C3:   var_1F0 = var_188.Fields
  loc_19777CB:    = var_244.Item()
  loc_19777D3:    = var_248.Value
  loc_1977800:   If (var_1F0 > 0) Then
  loc_1977809:     Call Proc_126_85_110770C(MemVar_1F95044)
  loc_197781C:     Set var_180 = Me.Txt
  loc_1977822:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_197782A:     var_184.Text = var_18C
  loc_1977839:     Exit Sub
  loc_197783A:   End If
  loc_197783D: Else
  loc_197785A:   var_184 = Me.Fields.Item("DocID")
  loc_1977862:   var_1E0 = var_184.Value
  loc_197786B:   var_18C = CStr(var_1E0)
  loc_1977871:   global_104 = var_18C
  loc_1977882: End If
  loc_1977884: var_8A = &HFF
  loc_1977890: unk_55BD34.BeginTrans var_250
  loc_197789E: unk_55BD25.BeginTrans var_250
  loc_19778C1: Set var_180 = Me.Txt
  loc_19778C7: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Delete From SunTran Where DocID='", var_1E0)
  loc_19778CF: -1 = var_184.Text
  loc_19778E8: unk_55BD34.Execute var_188 & var_18C & "'", var_8A, var_18C
  loc_1977920: Set var_180 = Me.Txt
  loc_1977926: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Delete From SunTranH Where DocID='")
  loc_197792E: var_1E0 = var_184.Text
  loc_1977937: var_234 = -1 & var_18C
  loc_1977947: unk_55BD34.Execute var_188 & var_18C & "'", var_188, 
  loc_197797F: Set var_180 = Me.Txt
  loc_1977985: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Delete From HallStock Where DocID='")
  loc_197798D: var_1E0 = var_184.Text
  loc_1977996: var_234 = -1 & var_18C
  loc_19779A6: unk_55BD34.Execute var_188 & var_18C & "'", var_188, 
  loc_19779DE: Set var_180 = Me.Txt
  loc_19779E4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "Delete From HallSale1 Where DocID='")
  loc_19779EC: var_1E0 = var_184.Text
  loc_19779F5: var_234 = -1 & var_18C
  loc_1977A05: unk_55BD34.Execute var_188 & var_18C & "'", var_188, 
  loc_1977A2D: Set var_180 = Me.Txt
  loc_1977A33: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_1977A4E: Set var_188 = Me.Txt
  loc_1977A54: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_244)
  loc_1977A69: var_22C = Val(var_244.Text)
  loc_1977A77: Set var_248 = Me.Txt
  loc_1977A7D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_274)
  loc_1977A8C: Proc_6_7_F26918(var_1F0, CVar(var_274))
  loc_1977A9F: Set var_288 = Me.Txt
  loc_1977AA5: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_28C)
  loc_1977AD2: Set var_31C = Me.Txt
  loc_1977AD8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_320)
  loc_1977AF3: Set var_388 = Me.Txt
  loc_1977AF9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_38C)
  loc_1977B0D: Set var_414 = Me.TextGt
  loc_1977B13: Call 0.Method_TopCtrl1_UnknownEvent_194 (var_18E)
  loc_1977B25: Set var_418 = Me.TextGt
  loc_1977B2B: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_18E, var_41C)
  loc_1977B40: var_D60 = Val(var_41C.Text)
  loc_1977B4A: Set var_424 = Me.TxtGt
  loc_1977B50: Call 0.Method_TopCtrl1_UnknownEvent_194 (var_426, var_D60)
  loc_1977B62: Set var_42C = Me.TxtGt
  loc_1977B68: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_426, var_430)
  loc_1977B7D: var_D68 = Val(var_430.Text)
  loc_1977B87: Set var_6D8 = Me.TextGt
  loc_1977B8D: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_6DA, var_D68)
  loc_1977B9F: Set var_6E0 = Me.TextGt
  loc_1977BA5: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_6DA, var_6E4)
  loc_1977BBA: var_D70 = Val(var_6E4.Text)
  loc_1977BC4: Set var_6EC = Me.TxtGt
  loc_1977BCA: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_6EE, var_D70)
  loc_1977BDC: Set var_6F4 = Me.TxtGt
  loc_1977BE2: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_6EE, var_6F8)
  loc_1977BF7: var_D78 = Val(var_6F8.Text)
  loc_1977C05: Set var_740 = Me.Txt
  loc_1977C0B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_744)
  loc_1977C1A: Proc_6_7_F26918(var_764, CVar(var_744))
  loc_1977C28: Set var_798 = Me.txtM
  loc_1977C2E: Call 0.Method_TopCtrl1_UnknownEvent_190 (1, var_79C)
  loc_1977C36: var_7AC = var_79C.defaultText
  loc_1977C4A: Set var_7F0 = Me.Txt
  loc_1977C50: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H15), var_7F4, var_7AC)
  loc_1977C5F: Proc_6_7_F26918(var_814, CVar(var_7F4))
  loc_1977C6D: Set var_848 = Me.txtM
  loc_1977C73: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_84C)
  loc_1977C7B: var_85C = var_84C.defaultText
  loc_1977C92: Set var_8C0 = Me.Txt
  loc_1977C98: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_8C4, var_8C8)
  loc_1977CB3: Set var_90C = Me.Txt
  loc_1977CB9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HC), var_910, var_914)
  loc_1977CD4: Set var_958 = Me.Txt
  loc_1977CDA: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_95C)
  loc_1977CEF: var_D80 = Val(var_95C.Text)
  loc_1977CFD: Set var_9A4 = Me.Txt
  loc_1977D03: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_9A8)
  loc_1977D12: Proc_6_7_F26918(var_9C8, CVar(var_9A8))
  loc_1977D25: Set var_9FC = Me.Txt
  loc_1977D2B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_A00, var_A04)
  loc_1977D40: var_D88 = Val(var_A04)
  loc_1977D4E: Set var_A48 = Me.Txt
  loc_1977D54: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H13), var_A4C)
  loc_1977D7B: Set var_AB0 = Me.Txt
  loc_1977D81: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H11), var_AB4)
  loc_1977D90: Proc_6_39_E7D3A0(var_AD4, CVar(var_AB4))
  loc_1977DA0: Set var_B08 = Me.Txt
  loc_1977DA6: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H12), var_B0C)
  loc_1977DB5: Proc_6_39_E7D3A0(var_B2C, CVar(var_B0C))
  loc_1977DC1: Set var_B60 = Me.TextGt
  loc_1977DC7: Call 0.Method_TopCtrl1_UnknownEvent_194 (var_B62)
  loc_1977DD6: Set var_B68 = Me.TextGt
  loc_1977DDC: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_B62, var_B6C)
  loc_1977DEB: Proc_6_39_E7D3A0(var_B8C, CVar(var_B6C))
  loc_1977DFB: Proc_6_7_F26918(var_C3C, MemVar_1F950EC)
  loc_1977E04: Set var_C70 = Me.TopCtrl1
  loc_1977E0A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_22C)
  loc_1977E67: var_238 = "Insert Into HallSale1(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code,BookDocId," & "Party,RestCode,Total," & "DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,RoundOff,AddAmt,DEDAMT,NetAmt,FrBookDate,FrBookTime,ToBookDate,ToBookTime,"
  loc_1977E75: var_240 = var_238 & "CrCardNo,CrCardHolder,RectNo,Rectdate,ADVANCE,Remarks,NoOfPax,RatePerPax,TotalPerCover," & "U_Name, U_EntDt, U_AE) "
  loc_1977E7C: var_254 = var_240 & " Values("
  loc_1977E9D: var_270 = var_254 & "'" & var_184.Text & "'," & CStr(var_22C)
  loc_1977EE3: var_308 = CVar(var_270 & ",") & var_1F0 & ",'" & CVar(var_28C.Tag) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) 
  loc_1977F3C: var_444 = CVar((var_D60 + var_D68)) 'Double
  loc_1977F49: var_474 = var_308 & "','" & CVar(var_320.Tag) & "'," & "'" & CVar(var_38C.Text) & "','" & CVar(global_56) & "'," & var_444 & "," 
  loc_1977F54: var_484 = CVar((var_154 + var_E4)) 'Double
  loc_1977F6C: var_4C4 = CVar((var_14C + var_DC)) 'Double
  loc_1977F84: var_504 = CVar((var_11C + var_AC)) 'Double
  loc_1977F9C: var_544 = CVar((var_114 + var_A4)) 'Double
  loc_1977FB4: var_584 = CVar((var_16C + var_FC)) 'Double
  loc_1977FCC: var_5C4 = CVar((var_174 + var_104)) 'Double
  loc_1977FE4: var_604 = CVar((var_15C + var_EC)) 'Double
  loc_1977FFA: var_654 = var_474 & var_484 & "," & var_4C4 & "," & var_504 & "," & var_544 & "," & var_584 & "," & var_5C4 & "," & var_604 & "," & vbNullString 
  loc_1978005: var_664 = CVar((var_124 + var_B4)) 'Double
  loc_197801D: var_6A4 = CVar((var_12C + var_BC)) 'Double
  loc_1978035: var_70C = CVar((var_D70 + var_910.Text)) 'Double
  loc_1978081: var_87C = var_654 & var_664 & "," & var_6A4 & "," & var_70C & "," & var_764 & ",'" & CVar(CStr(var_7AC)) & "'," & var_814 & ",'" & CVar(CStr(var_8C4.Text)) 
  loc_197809D: var_8E8 = var_87C & "'," & "'" & CVar(var_8C8) 
  loc_19780B0: var_934 = var_8E8 & "','" & CVar(var_914) 
  loc_19780E8: var_A24 = var_934 & "'," & CVar(var_A00.Text) & "," & var_9C8 & "," & CVar(var_D88) 
  loc_1978131: var_BBC = var_A24 & ",'" & Trim(CVar(Proc_6_38_E69628(CVar(var_A4C), var_D88))) & "'," & var_AD4 & "," & var_B2C & "," & var_B8C & "," 
  loc_1978171: var_D34 = CStr(var_BBC & "'" & CVar(MemVar_1F950C8) & "'," & var_C3C & ",'" & IIf((var_C90 = "Add"), "A", "E") & "')")
  loc_197817B: unk_55BD34.Execute var_D34, var_D54, -1
  loc_1978308: For var_D8C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_D8C 'Integer
  loc_1978312:   var_1A0 = CVar(CLng(var_92)) 'Long
  loc_197831A:   var_1C0 = CVar(CLng(1)) 'Long
  loc_197833A:   var_200 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1978361:   Set var_184 = Me.FGrid
  loc_19783A0:   If CBool(CVar(CLng(3)) And (CDbl(Val(CStr(var_184.TextMatrix)))) <> CDbl(0))) Then
  loc_19783B1:     Set var_180 = Me.Txt
  loc_19783B7:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_254, CVar(CLng(var_92)), (var_200 <> vbNullString))
  loc_19783BF:     var_1C0 = var_184.Text
  loc_19783C8:     var_1A0 = CVar(CLng(var_92)) 'Long
  loc_19783F2:     var_22C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1978403:     Set var_244 = Me.Txt
  loc_1978409:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_248, var_270, var_22C, CVar(CLng(0)))
  loc_1978411:     var_1A0 = var_248.Tag
  loc_197841D:     Set var_274 = Me.LblVPrefix
  loc_1978436:     Set var_288 = Me.Txt
  loc_197843C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_28C, var_8C8)
  loc_1978444:     var_1A0 = var_28C.Text
  loc_1978451:     var_D60 = Val(var_8C8)
  loc_197845F:     Set var_2C4 = Me.Txt
  loc_1978465:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_31C, var_D60)
  loc_197846D:     var_1F0 = CVar(var_31C) 'Address
  loc_1978474:     Proc_6_7_F26918(var_200, var_1F0)
  loc_1978487:     Set var_320 = Me.Txt
  loc_197848D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_388, var_D34)
  loc_1978495:     1 = var_388.Tag
  loc_19784A8:     Set var_38C = Me.Txt
  loc_19784AE:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_414)
  loc_19784BF:     var_3E0 = CVar(CLng(var_92)) 'Long
  loc_19784C7:     var_444 = CVar(CLng(9)) 'Long
  loc_19784E6:     var_4A4 = CVar(CLng(var_92)) 'Long
  loc_19784EE:     var_4E4 = CVar(CLng(&HD)) 'Long
  loc_19784F7:     Set var_41C = Me.FGrid
  loc_197850D:     var_544 = CVar(CLng(var_92)) 'Long
  loc_1978515:     var_584 = CVar(CLng(&HE)) 'Long
  loc_1978534:     var_5E4 = CVar(CLng(var_92)) 'Long
  loc_197853C:     var_624 = CVar(CLng(&HA)) 'Long
  loc_1978545:     Set var_42C = Me.FGrid
  loc_197855B:     var_6A4 = CVar(CLng(var_92)) 'Long
  loc_1978563:     var_70C = CVar(CLng(3)) 'Long
  loc_1978572:     var_554 = Me.FGrid.TextMatrix)
  loc_197858C:     var_834 = CVar(CLng(var_92)) 'Long
  loc_1978594:     var_8AC = CVar(CLng(4)) 'Long
  loc_197859D:     Set var_6D8 = Me.FGrid
  loc_19785BD:     var_9E8 = CVar(CLng(var_92)) 'Long
  loc_19785C5:     var_A34 = CVar(CLng(5)) 'Long
  loc_19785EE:     var_BAC = CVar(CLng(var_92)) 'Long
  loc_19785F6:     var_BEC = CVar(CLng(6)) 'Long
  loc_19785FF:     Set var_6E4 = Me.FGrid
  loc_197861F:     var_CC0 = CVar(CLng(var_92)) 'Long
  loc_1978627:     var_D20 = CVar(CLng(7)) 'Long
  loc_1978650:     var_DD4 = CVar(CLng(var_92)) 'Long
  loc_1978658:     var_DF4 = CVar(CLng(&HB)) 'Long
  loc_1978661:     Set var_6F4 = Me.FGrid
  loc_1978681:     var_E38 = CVar(CLng(var_92)) 'Long
  loc_1978689:     var_E58 = CVar(CLng(&HC)) 'Long
  loc_19786AB:     var_FF4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19786DC:     var_FFC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19786FA:     var_844 = Me.FGrid.TextMatrix)
  loc_1978711:     Proc_6_7_F26918(var_8E8, MemVar_1F950EC, var_844, CVar(CLng(2)), CVar(CLng(var_92)), var_FFC, CVar(CLng(8)), CVar(CLng(var_92)))
  loc_197871A:     Set var_798 = Me.TopCtrl1
  loc_1978720:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_FF4)
  loc_197877D:     var_238 = "Insert Into HallStock(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,Party,Item,DiscApp,RoundOff," & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,Remarks,"
  loc_19787BA:     var_2C8 = var_238 & "U_Name,U_EntDt,U_AE) " & "Values(" & "'" & var_254 & "'," & CStr(var_22C) & ",'" & var_270
  loc_19787CF:     var_434 = var_2C8 & "','" & var_274.Caption & "','"
  loc_19787D6:     var_6E8 = var_434 & MemVar_1F95070
  loc_197882C:     var_308 = CVar(var_6E8 & "'," & vbNullString & CStr(var_D60) & ",") & var_200 & ",'" & CVar(var_D34) & "','" & CVar(var_414.Text) & "'," 
  loc_1978868:     var_474 = var_308 & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_41C.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_197887C:     var_4F4 = var_474 & "','" & CVar(CStr(var_42C.TextMatrix))) 
  loc_19788BF:     var_614 = var_4F4 & "'," & vbNullString & CVar(Val(CStr(var_554))) & "," & CVar(Val(CStr(var_6D8.TextMatrix)))) & "," & vbNullString 
  loc_19788CA:     var_654 = var_614 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_197890F:     var_794 = var_654 & "," & CVar(Val(CStr(var_6E4.TextMatrix)))) & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_6F4.TextMatrix)))) 
  loc_1978970:     var_8D8 = var_794 & "," & CVar(var_FF4) & "," & CVar(var_FFC) & ",'" & CVar(CStr(var_844)) & "'," & "'" & CVar(MemVar_1F950C8) & "'," 
  loc_197899E:     unk_55BD34.Execute CStr(var_8D8 & var_8E8 & ",'" & IIf((var_934 = "Add"), "A", "E") & "')"), var_A24, -1
  loc_1978ABC:   End If
  loc_1978ABF: Next var_D8C 'Integer
  loc_1978AD0: Set var_180 = Me.TxtGt
  loc_1978AD6: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_18E, var_92)
  loc_1978AE1: For var_1000 =  To var_18E: 1 = var_1000 'Integer
  loc_1978AF5:   Set var_180 = Me.Txt
  loc_1978AFB:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_1978B16:   Set var_188 = Me.Txt
  loc_1978B1C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_244)
  loc_1978B37:   Set var_248 = Me.Txt
  loc_1978B3D:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_274)
  loc_1978B60:   Set var_288 = Me.Txt
  loc_1978B66:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_28C)
  loc_1978B75:   Proc_6_7_F26918(var_1F0, CVar(var_28C))
  loc_1978B87:   Set var_2C4 = Me.LblCap
  loc_1978B8D:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_31C)
  loc_1978BA7:   Set var_320 = Me.TxtPer
  loc_1978BAD:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_388)
  loc_1978BC2:   var_D60 = Val(var_388.Tag)
  loc_1978BD2:   Set var_38C = Me.LblCap
  loc_1978BD8:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_414, var_2C8)
  loc_1978BF2:   Set var_418 = Me.LblAt
  loc_1978BF8:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_41C)
  loc_1978C12:   Set var_424 = Me.TxtGt
  loc_1978C18:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_42C)
  loc_1978C32:   Set var_430 = Me.TxtPer
  loc_1978C38:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6D8)
  loc_1978C4D:   var_D68 = Val(var_6D8.Text)
  loc_1978C5D:   Set var_6E0 = Me.TxtGt
  loc_1978C63:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6E4, var_434)
  loc_1978C78:   var_D70 = Val(var_434)
  loc_1978C88:   Set var_6EC = Me.LblDummy
  loc_1978C8E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6F4, var_6E8)
  loc_1978CA3:   var_D78 = Val(var_6E8)
  loc_1978CB1:   Proc_6_7_F26918(var_4F4, MemVar_1F950EC)
  loc_1978CBA:   Set var_6F8 = Me.TopCtrl1
  loc_1978CC0:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_D78)
  loc_1978D0F:   var_234 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE) Values ('" & var_184.Text
  loc_1978D63:   var_2B0 = CVar(var_234 & "'," & CStr(var_92) & ",'" & var_244.Tag & "'," & CStr(Val(var_274.Text)) & ",") & var_1F0 & ",'" & CVar(var_31C.Tag) 
  loc_1978DB9:   var_3B0 = var_2B0 & "'," & CVar(var_414.Caption) & ",'" & CVar(var_2C8) & "','" & CVar(var_41C.Tag) & "','" & CVar(var_42C.Tag) & "'," 
  loc_1978E0F:   var_514 = var_3B0 & CVar(var_6E4.Text) & "," & CVar(var_6F4.Caption) & "," & CVar(var_D78) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4F4 
  loc_1978E36:   unk_55BD34.Execute CStr(var_514 & ",'" & IIf((var_554 = "Add"), "A", "E") & "')"), var_654, -1
  loc_1978EE7: Next var_1000 'Integer
  loc_1978EF8: Set var_180 = Me.TextGt
  loc_1978EFE: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_18E, var_92)
  loc_1978F09: For var_1004 =  To var_18E: 1 = var_1004 'Integer
  loc_1978F1D:   Set var_180 = Me.Txt
  loc_1978F23:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_1978F3E:   Set var_188 = Me.Txt
  loc_1978F44:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_244)
  loc_1978F5F:   Set var_248 = Me.Txt
  loc_1978F65:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_274)
  loc_1978F88:   Set var_288 = Me.Txt
  loc_1978F8E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_28C)
  loc_1978F9D:   Proc_6_7_F26918(var_1F0, CVar(var_28C))
  loc_1978FAF:   Set var_2C4 = Me.LableCap
  loc_1978FB5:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_31C)
  loc_1978FCF:   Set var_320 = Me.TextPer
  loc_1978FD5:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_388)
  loc_1978FEA:   var_D60 = Val(var_388.Tag)
  loc_1978FFA:   Set var_38C = Me.LableCap
  loc_1979000:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_414, var_2C8)
  loc_197901A:   Set var_418 = Me.LableAt
  loc_1979020:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_41C)
  loc_197903A:   Set var_424 = Me.TextGt
  loc_1979040:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_42C)
  loc_197905A:   Set var_430 = Me.TextPer
  loc_1979060:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6D8)
  loc_1979075:   var_D68 = Val(var_6D8.Text)
  loc_1979085:   Set var_6E0 = Me.TextGt
  loc_197908B:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6E4, var_434)
  loc_19790A0:   var_D70 = Val(var_434)
  loc_19790B0:   Set var_6EC = Me.LableDummy
  loc_19790B6:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_6F4, var_6E8)
  loc_19790CB:   var_D78 = Val(var_6E8)
  loc_19790D9:   Proc_6_7_F26918(var_4F4, MemVar_1F950EC)
  loc_19790E2:   Set var_6F8 = Me.TopCtrl1
  loc_19790E8:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_D78)
  loc_1979137:   var_234 = "Insert Into SunTranH (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE) Values ('" & var_184.Text
  loc_1979146:   var_23C = CStr(var_92)
  loc_1979151:   var_258 = var_234 & "'," & var_23C & ",'"
  loc_1979194:   var_2C0 = CVar(var_258 & var_244.Tag & "'," & CStr(Val(var_274.Text)) & ",") & var_1F0 & ",'" & CVar(var_31C.Tag) & "'," 
  loc_19791EC:   var_3D0 = var_2C0 & CVar(var_414.Caption) & ",'" & CVar(var_2C8) & "','" & CVar(var_41C.Tag) & "','" & CVar(var_42C.Tag) & "'," & CVar(var_6E4.Text) 
  loc_1979247:   var_614 = var_3D0 & "," & CVar(var_6F4.Caption) & "," & CVar(var_D78) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4F4 & ",'" & IIf((var_554 = "Add"), "A", "E") 
  loc_197925E:   unk_55BD34.Execute CStr(var_614 & "')"), var_654, -1
  loc_197930F: Next var_1004 'Integer
  loc_1979318: Set var_180 = Me.TopCtrl1
  loc_197931E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_1979333: If ( = "Add") Then
  loc_197934A:   var_18C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1979370:   Set var_180 = Me.Txt
  loc_1979376:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_184, var_23C, var_18C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_197937E:   var_2A0 = var_184.Tag
  loc_1979387:   var_254 = -1 & var_23C
  loc_197938E:   var_200 = CVar(var_244.Tag & "' And VP.Date_From<=") 'String
  loc_197939F:   Set var_188 = Me.Txt
  loc_19793A5:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_244, var_258)
  loc_19793AD:   var_200 = var_244.Text
  loc_19793BB:   Proc_6_7_F26918(var_1F0, CVar(var_258))
  loc_19793DA:   unk_55BD25.Execute CStr(var_248 & var_1F0 & " Order By VP.Date_From DESC"), , 
  loc_19793E5:   Set var_88 = var_248
  loc_1979429:   If (var_88.RecordCount > 0) Then
  loc_197943A:     Set var_180 = Me.Txt
  loc_1979440:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_184)
  loc_1979455:     var_22C = Val(var_184.Text)
  loc_197946A:     var_188 = var_88.Fields
  loc_197947A:     var_1E0 = var_188.Item("V_Type").Value
  loc_19794A5:     Proc_6_7_F26918(var_2A0, CVar(var_88.Fields.Item("Date_From")))
  loc_19794BF:     var_234 = CStr(var_22C)
  loc_19794DF:     var_258 = "Update Voucher_Prefix Set Start_Srl_No=" & var_234 & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_19794FC:     var_2B0 = CVar(var_258 & "') and V_Type='") & var_1E0 & "' and Date_From=" & var_2A0 
  loc_197950A:     unk_55BD25.Execute CStr(var_2B0), var_2C0, -1
  loc_1979544:   End If
  loc_1979544: End If
  loc_1979548: Set var_180 = Me.TopCtrl1
  loc_197954E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_288)
  loc_1979563: If (var_22C = "Add") Then
  loc_1979589:   var_18C = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F950C8
  loc_1979599:   Call 0.Method_arg_50 (var_234, var_18C & "' AND ENAME='", var_1E0, -1, var_180)
  loc_19795A9:   var_240 = var_184 & var_234 & "' "
  loc_19795B2:   unk_55BD25.Execute var_240, 0, var_188
  loc_19795C2:    = var_184.Item()
  loc_19795CA:    = var_188.Value
  loc_19795F7:   If (var_180.Fields > 0) Then
  loc_1979618:     Set var_180 = Me.Txt
  loc_197961E:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_18C, "UPDATE LASTVOU  SET DOCID='")
  loc_1979626:     var_1E0 = var_184.Text
  loc_197962F:     var_234 = -1 & var_18C
  loc_197964D:     Call 0.Method_arg_50 (var_240, var_234 & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_1979666:     unk_55BD25.Execute var_188 & var_240 & "'  ", , 
  loc_197968D:   Else
  loc_19796B1:     Call 0.Method_arg_50 (var_234, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_2B0)
  loc_19796BA:     var_23C = -1 & var_234
  loc_19796C1:     var_254 = var_234 & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_19796D2:     Set var_180 = Me.Txt
  loc_19796D8:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184, var_240)
  loc_19796E0:     var_254 = var_184.Text
  loc_1979704:     var_1A0 = MemVar_1F950EC
  loc_197970C:     Proc_6_7_F26918(var_1E0, var_1A0)
  loc_197973E:     unk_55BD25.Execute CStr(CVar(var_188 & var_240 & "','" & MemVar_1F95070 & "',") & var_1E0 & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1979774:   End If
  loc_1979774: End If
  loc_197977A: unk_55BD34.CommitTrans
  loc_1979785: unk_55BD25.CommitTrans
  loc_197978C: var_8A = 0
  loc_197979D: Set var_180 = Me.Txt
  loc_19797A3: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_184)
  loc_19797BF: var_8A = 0
  loc_19797CD: Me.Requery -1
  loc_19797F7: Me.Find "SearchCode ='" & var_184.Text & "'", 0, 1
  loc_1979807: Set var_180 = Me.TopCtrl1
  loc_197980D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_1A0)
  loc_1979822: If (var_8A = "Add") Then
  loc_1979825:   Call TopCtrl1_UnknownEvent_11()
  loc_197982A:   Exit Sub
  loc_197982B: End If
  loc_197984E: Call Proc_126_81_104BE74(Proc_5_1_100EC1C("INI", Me), global_80)
  loc_1979859: Call Proc_126_78_18380AC(var_8A)
  loc_1979863: Set var_88 = Nothing
  loc_1979866: Exit Sub
  loc_1979867: ' Referenced from: 1976D98
  loc_197986D: If (var_8A = &HFF) Then
  loc_1979876:   unk_55BD34.RollbackTrans
  loc_1979881:   unk_55BD25.RollbackTrans
  loc_1979886: End If
  loc_1979886: Proc_6_60_E63754()
  loc_197988B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA0D18
  'Data Table: 55BD00
  loc_EA0CA0: On Error Goto loc_EA0D11
  loc_EA0CDA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0D00:   Call Proc_126_81_104BE74(Proc_5_1_100EC1C("INI", Me))
  loc_EA0D0B:   Call Proc_126_78_18380AC(global_80)
  loc_EA0D10: End If
  loc_EA0D10: Exit Sub
  loc_EA0D11: ' Referenced from: EA0CA0
  loc_EA0D11: Proc_6_60_E63754()
  loc_EA0D16: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB7108
  'Data Table: 55BD00
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_EB7074: On Error Goto loc_EB7102
  loc_EB708E: If (Me.RecordCount <= 0) Then
  loc_EB7097:   var_B8 = "Information"
  loc_EB70B2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB70C2:   Exit Sub
  loc_EB70C3: End If
  loc_EB70CA: MemVar_1F950E4 = "Select Docid as SearchCode,S.VNo as VrNo ,S.VDate as V_Date,S.Party as PartyName,H.NAME AS HallName " & "From HallSale1 S Inner Join Depart H on S.RestCode = H.CODE Where H.RESTTYPE IN ('Banquet') Order By S.docid"
  loc_EB70D7: Proc_6_126_F1C850("1000,900,2000,2500,2500")
  loc_EB70E5: MemVar_1F95120 = Me
  loc_EB70FC: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB7101: Exit Sub
  loc_EB7102: ' Referenced from: EB7074
  loc_EB7102: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EB7107: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'E62FBC
  'Data Table: 55BD00
  loc_E62FAB: If (MsgBox("Do you want window printing!", &H44, var_C4, var_E4, var_104) = 6) Then
  loc_E62FAE:   Call Proc_126_97_18D33F4()
  loc_E62FB6: Else
  loc_E62FB6:   Call Proc_126_75_19F6E94()
  loc_E62FBB: End If
  loc_E62FBB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E6C75C
  'Data Table: 55BD00
  Dim Me As Recordset15
  loc_E6C707: If Not((global_64 Is Nothing)) Then
  loc_E6C715:   Me.Requery -1
  loc_E6C71A: End If
  loc_E6C725: Me.Requery -1
  loc_E6C735: Me.Requery -1
  loc_E6C745: If Not((global_64 Is Nothing)) Then
  loc_E6C753:   Me.Requery -1
  loc_E6C758: End If
  loc_E6C758: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '138F494
  'Data Table: 55BD00
  Dim var_98 As Variant
  Dim var_A4 As Variant
  Dim var_A6 As Integer
  Dim var_B8 As Variant
  Dim var_94 As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A0 As Fields15
  Dim var_8C As Recordset15
  Dim var_104 As String
  Dim var_9C As String
  loc_138EBE3: Set var_94 = Me.Txt
  loc_138EBE9: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138EBF1: var_98.SelStart = 0
  loc_138EC0A: Set var_94 = Me.Txt
  loc_138EC10: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138EC18: var_9C = var_98.Text
  loc_138EC2B: Set var_A0 = Me.Txt
  loc_138EC31: Call 0.Method_Txt_GotFocus0 (Index, var_A4)
  loc_138EC39: var_A4.SelLength = Len(var_9C)
  loc_138EC56: Set var_94 = Me.Txt
  loc_138EC5C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_138EC6A: Proc_6_74_E23240(var_98)
  loc_138EC76: Call Proc_126_82_F26E50(var_98)
  loc_138EC7E: var_A6 = Index
  loc_138EC89: If (var_A6 = CInt(0)) Then
  loc_138EC9F:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_138ECF8:   Set var_94 = Me.Txt
  loc_138ECFE:   Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C)
  loc_138ED06:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_138ED1E:   If (var_A6 Or (var_9C = vbNullString)) Then
  loc_138ED21:     Exit Sub
  loc_138ED22:   End If
  loc_138ED2F:   Set var_94 = Me.Txt
  loc_138ED35:   Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138ED3D:   var_9C = var_98.Text
  loc_138ED45:   var_E0 = CVar(var_9C) 'String
  loc_138ED8A:   If CBool(var_E0 <> Me.Fields.Item("Name").Value) Then
  loc_138ED93:     Me.MoveFirst
  loc_138EDB8:     Set var_94 = Me.Txt
  loc_138EDBE:     Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, "Name =")
  loc_138EDC6:     0 = var_98.Text
  loc_138EDD4:     Proc_6_17_EAAE40(var_E0, CVar(var_9C))
  loc_138EDEA:     Me.Find CStr(1 & var_E0), var_104, 
  loc_138EE02:   End If
  loc_138EE05: Else
  loc_138EE0D:   If (var_A6 = CInt(3)) Then
  loc_138EE5E:     Set var_94 = Me.Txt
  loc_138EE64:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138EE84:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_138EE87:       Exit Sub
  loc_138EE88:     End If
  loc_138EE95:     Set var_94 = Me.Txt
  loc_138EE9B:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138EEA3:     var_9C = var_98.Text
  loc_138EEAB:     var_E0 = CVar(var_9C) 'String
  loc_138EEF0:     If CBool(var_E0 <> Me.Fields.Item("Name").Value) Then
  loc_138EEF9:       Me.MoveFirst
  loc_138EF1E:       Set var_94 = Me.Txt
  loc_138EF24:       Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, "Name =")
  loc_138EF2C:       0 = var_98.Text
  loc_138EF3A:       Proc_6_17_EAAE40(var_E0, CVar(var_9C))
  loc_138EF50:       Me.Find CStr(1 & var_E0), var_104, 
  loc_138EF68:     End If
  loc_138EF6B:   Else
  loc_138EF73:     If (var_A6 = CInt(5)) Then
  loc_138EFC4:       Set var_94 = Me.Txt
  loc_138EFCA:       Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138EFEA:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_138EFED:         Exit Sub
  loc_138EFEE:       End If
  loc_138EFFB:       Set var_94 = Me.Txt
  loc_138F001:       Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138F009:       var_9C = var_98.Text
  loc_138F011:       var_E0 = CVar(var_9C) 'String
  loc_138F056:       If CBool(var_E0 <> Me.Fields.Item("Name").Value) Then
  loc_138F05F:         Me.MoveFirst
  loc_138F084:         Set var_94 = Me.Txt
  loc_138F08A:         Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, "Name =")
  loc_138F092:         0 = var_98.Text
  loc_138F09A:         var_B8 = CVar(var_9C) 'String
  loc_138F0A0:         Proc_6_17_EAAE40(var_E0, var_B8)
  loc_138F0B6:         Me.Find CStr(1 & var_E0), var_104, 
  loc_138F0CE:       End If
  loc_138F0D1:     Else
  loc_138F0D9:       If (var_A6 = CInt(7)) Then
  loc_138F0E6:         Set global_76 = New 
  loc_138F103:         Me.Connection15.Execute "Select BookDocId from HallSale1", var_B8, -1
  loc_138F10E:         Set var_8C = var_94
  loc_138F12B:         If (var_8C.RecordCount > 0) Then
  loc_138F16B:           var_90 = CStr("'" & var_8C.Fields.Item("BOOKDOCID").Value & "'")
  loc_138F181:           var_8C.MoveNext
  loc_138F186:           ' Referenced from:       138F1F7
  loc_138F195:           If Not(var_8C.EOF) Then
  loc_138F1BC:             var_98 = var_8C.Fields.Item("BOOKDOCID")
  loc_138F1D0:             var_104 = "'"
  loc_138F1DA:             var_90 = CStr(CVar(var_90 & ",'") & var_98.Value & var_104)
  loc_138F1F2:             var_8C.MoveNext
  loc_138F1F7:             GoTo loc_138F186
  loc_138F1FA:           End If
  loc_138F1FD:         Else
  loc_138F200:           var_90 = "''"
  loc_138F203:         End If
  loc_138F20E:         Me.CursorLocation = 3
  loc_138F234:         var_9C = "Select DocId As Code,Convert(Varchar(11),VNo) As Name From HallBook where RestCode ='" & global_56
  loc_138F253:         Me.Open CVar(var_9C & "' and Docid not in (" & var_90 & ") Order by VNo"), CVar(MemVar_1F95044), 3
  loc_138F26D:         CVarUnk
  loc_138F272:         VerifyVarObj
  loc_138F278:         Set var_94 = Me.DGBookNo
  loc_138F27E:         LateIdStAd
  loc_138F2E0:         Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.Txt)
  loc_138F2E8:         global_76 = var_98.Text
  loc_138F300:         If (1 Or (var_9C = vbNullString)) Then
  loc_138F303:           Exit Sub
  loc_138F304:         End If
  loc_138F311:         Set var_94 = Me.Txt
  loc_138F317:         Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C)
  loc_138F31F:         -1 = var_98.Text
  loc_138F327:         var_E0 = CVar(var_9C) 'String
  loc_138F348:         var_A4 = Me.Fields.Item("Name")
  loc_138F36C:         If CBool(var_E0 <> var_A4.Value) Then
  loc_138F375:           Me.MoveFirst
  loc_138F3A0:           Call 0.Method_Txt_GotFocus0 (Index, var_98, var_9C, "Name =")
  loc_138F3A8:           0 = var_98.Text
  loc_138F3B6:           Proc_6_17_EAAE40(var_E0, CVar(var_9C), 1)
  loc_138F3CC:           Me.Find CStr(var_104 & var_E0), Me.Txt, 
  loc_138F3E4:         End If
  loc_138F3E7:       Else
  loc_138F3EF:         If Not (var_A6 = CInt(&HF)) Then
  loc_138F3FA:           If Not (var_A6 = CInt(&HE)) Then
  loc_138F405:             If (var_A6 = CInt(&HD)) Then
  loc_138F408:             End If
  loc_138F408:           End If
  loc_138F417:           Set var_94 = Me.Txt
  loc_138F41D:           Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138F425:           var_98.SelStart = 0
  loc_138F43E:           Set var_94 = Me.Txt
  loc_138F444:           Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_138F45F:           Set var_A0 = Me.Txt
  loc_138F465:           Call 0.Method_Txt_GotFocus0 (Index, var_A4)
  loc_138F46D:           var_A4.SelLength = Len(var_98.Text)
  loc_138F480:         End If
  loc_138F480:       End If
  loc_138F480:     End If
  loc_138F480:   End If
  loc_138F480: End If
  loc_138F485: Set var_88 = Nothing
  loc_138F48D: Set var_8C = Nothing
  loc_138F490: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11478A4
  'Data Table: 55BD00
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_114752A: If (CLng(Shift) = &H1B) Then
  loc_114752D:   Call Proc_126_82_F26E50()
  loc_1147532:   Exit Sub
  loc_1147533: End If
  loc_1147536: var_86 = KeyCode
  loc_1147541: If (var_86 = CInt(0)) Then
  loc_114755C:   Set var_9C = Nothing
  loc_1147567:   Set var_98 = Nothing
  loc_1147595:   Proc_6_69_134A630(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_11475AC: Else
  loc_11475B4:   If (var_86 = CInt(3)) Then
  loc_11475CF:     Set var_9C = Nothing
  loc_1147608:     Proc_6_69_134A630(Me.DGParty, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_114761F:   Else
  loc_1147627:     If (var_86 = CInt(5)) Then
  loc_1147642:       Set var_9C = Nothing
  loc_114767B:       Proc_6_69_134A630(Me.DGHall, Me.Txt, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_1147692:     Else
  loc_114769A:       If (var_86 = CInt(7)) Then
  loc_11476B5:         Set var_9C = Nothing
  loc_11476EE:         Proc_6_69_134A630(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1147702:       End If
  loc_1147702:     End If
  loc_1147702:   End If
  loc_1147702: End If
  loc_1147733: Set var_98 = Me.DGItem
  loc_114774A: Set var_9C = Me.DGBookNo
  loc_114778E: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_11477AF:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HC))) Then
  loc_11477B8:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, var_9C)
  loc_11477BD:   End If
  loc_11477C1:   Set var_8C = Me.TopCtrl1
  loc_11477C7:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(0)
  loc_11477F4:   If CBool((var_9C = "Add") And (KeyCode <> CInt(0))) Then
  loc_114780C:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1147815:       Proc_6_76_E533C8(Shift, arg_14, 0)
  loc_114781A:     End If
  loc_114781D:   Else
  loc_1147821:     Set var_8C = Me.TopCtrl1
  loc_1147827:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(1)
  loc_1147854:     If CBool((var_98 = "Edit") And (KeyCode <> CInt(2))) Then
  loc_114786C:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1147875:         Proc_6_76_E533C8(Shift)
  loc_114787A:       End If
  loc_114787A:     End If
  loc_114787A:   End If
  loc_1147898:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_114789E:     Call Proc_126_83_F0B054(KeyCode)
  loc_11478A3:   End If
  loc_11478A3: End If
  loc_11478A3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1044C54
  'Data Table: 55BD00
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_10449F4: On Error Goto loc_1044C4E
  loc_10449FA: Proc_6_58_E06050(arg_10)
  loc_1044A02: var_86 = KeyAscii
  loc_1044A0D: If (var_86 = CInt(0)) Then
  loc_1044A2C:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_1044A42:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_1044A51:     Set var_B8 = Me.Txt
  loc_1044A5C:     var_B0 = "Name"
  loc_1044A77:     Proc_6_89_1470B00(var_B8, KeyAscii, global_60, arg_10)
  loc_1044A86:   End If
  loc_1044A89: Else
  loc_1044A91:   If (var_86 = CInt(1)) Then
  loc_1044A9E:     Set var_8C = Me.Txt
  loc_1044AA4:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_1044ABF:     Proc_6_42_129B55C(var_B8, arg_10, 8)
  loc_1044ACE:   Else
  loc_1044AD6:     If (var_86 = CInt(3)) Then
  loc_1044AF5:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_1044B22:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1044B31:       End If
  loc_1044B34:     Else
  loc_1044B3C:       If (var_86 = CInt(7)) Then
  loc_1044B5B:         If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_1044B88:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_1044B97:         End If
  loc_1044B9A:       Else
  loc_1044BA2:         If (var_86 = CInt(5)) Then
  loc_1044BC1:           If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_1044BC8:             Set var_B8 = Me.Txt
  loc_1044BEE:             Proc_6_89_1470B00(var_B8, KeyAscii, global_72, arg_10, "Name", 0)
  loc_1044BFD:           End If
  loc_1044C00:         Else
  loc_1044C08:           If Not (var_86 = CInt(&HF)) Then
  loc_1044C13:             If (var_86 = CInt(&HE)) Then
  loc_1044C16:             End If
  loc_1044C20:             Set var_8C = Me.Txt
  loc_1044C26:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0, 0)
  loc_1044C41:             Proc_6_42_129B55C(var_B8, arg_10, 8, 2)
  loc_1044C4D:           End If
  loc_1044C4D:         End If
  loc_1044C4D:       End If
  loc_1044C4D:     End If
  loc_1044C4D:   End If
  loc_1044C4D: End If
  loc_1044C4D: Exit Sub
  loc_1044C4E: ' Referenced from: 10449F4
  loc_1044C4E: Proc_6_60_E63754(0, 0)
  loc_1044C53: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FDBC54
  'Data Table: 55BD00
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
  loc_FDBABF: var_86 = KeyCode
  loc_FDBACA: If Not (var_86 = CInt(&HF)) Then
  loc_FDBAD5:   If (var_86 = CInt(&HE)) Then
  loc_FDBAD8:   End If
  loc_FDBADF:   Set var_8C = Me.TxtGt
  loc_FDBAE5:   Call 0.Method_Txt_KeyUp8 (var_8E)
  loc_FDBAF7:   Set var_94 = Me.TxtGt
  loc_FDBAFD:   Call 0.Method_Txt_KeyUp0 (var_8E, var_98)
  loc_FDBB12:   var_12C = Val(var_98.Text)
  loc_FDBB1C:   Set var_A0 = Me.TextGt
  loc_FDBB22:   Call 0.Method_Txt_KeyUp8 (var_A2, var_12C)
  loc_FDBB34:   Set var_A8 = Me.TextGt
  loc_FDBB3A:   Call 0.Method_Txt_KeyUp0 (var_A2, var_AC)
  loc_FDBB4F:   var_134 = Val(var_AC.Text)
  loc_FDBB60:   Set var_B4 = Me.Txt
  loc_FDBB66:   Call 0.Method_Txt_KeyUp0 (CInt(&HF), var_B8, var_BC)
  loc_FDBB7B:   var_13C = Val(var_BC)
  loc_FDBB8C:   Set var_C0 = Me.Txt
  loc_FDBB92:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_C4, var_C8)
  loc_FDBBA7:   var_144 = Val(var_C8)
  loc_FDBBCE:   var_E8 = CVar((((var_12C + var_B8.Text) - var_C4.Text) - var_144)) 'Double
  loc_FDBBEC:   Set var_11C = Me.Txt
  loc_FDBBF2:   Call 0.Method_Txt_KeyUp0 (CInt(&HE), var_120, CStr(Format(var_E8, "0.00")), 1)
  loc_FDBBFA:   var_120.Text = 1
  loc_FDBC33: Else
  loc_FDBC3B:   If Not (var_86 = CInt(&H12)) Then
  loc_FDBC46:     If (var_86 = CInt(&H11)) Then
  loc_FDBC49:     End If
  loc_FDBC4E:     Call Proc_126_90_14ACC4C(&H32, var_144)
  loc_FDBC53:   End If
  loc_FDBC53: End If
  loc_FDBC53: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FEA4
  'Data Table: 55BD00
  loc_E4FE82: Set var_88 = Me.Txt
  loc_E4FE88: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FE96: Proc_6_73_E23294(var_8C)
  loc_E4FEA2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1882200
  'Data Table: 55BD00
  Dim var_98 As Integer
  Dim var_A0 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_9C As Variant
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim var_13C As String
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_168 As TextBox
  Dim var_18C As Variant
  Dim var_194 As TextBox
  Dim var_1B8 As Variant
  Dim var_138 As String
  Dim unk_55BD25 As Connection15
  Dim var_A4 As Variant
  Dim var_164 As Variant
  Dim var_104 As Variant
  Dim var_D4 As Variant
  Dim var_8E As Integer
  Dim var_94 As Recordset15
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_140 As String
  Dim var_134 As Variant
  Dim var_220 As TextBox
  Dim Txt_Validate2 As Variant
  Dim var_228 As Double
  Dim var_240 As Double
  Dim var_248 As Double
  Dim var_230 As TextBox
  Dim var_250 As Double
  Dim var_16C As String
  Dim var_238 As TextBox
  loc_187FB50: On Error Goto loc_18821F8
  loc_187FB56: var_98 = Cancel
  loc_187FB61: If (var_98 = CInt(0)) Then
  loc_187FB6F:   Set var_9C = Me.Txt
  loc_187FB75:   Call 0.Method_Txt_Validate0 (CInt(0), var_A0)
  loc_187FB7D:   var_A8 = "Voucher Type"
  loc_187FB9E:   If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_187FBAC:     Set var_9C = Me.Txt
  loc_187FBB2:     Call 0.Method_Txt_Validate0 (CInt(0), var_A0)
  loc_187FBBA:     var_A0.SetFocus
  loc_187FBC8:     arg_10 = &HFF
  loc_187FBCB:     Exit Sub
  loc_187FBCC:   End If
  loc_187FC1A:   Set var_9C = Me.Txt
  loc_187FC20:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_187FC28:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_187FC40:   If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_187FC50:     Set var_9C = Me.Txt
  loc_187FC56:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_187FC5E:     var_A0.Text = vbNullString
  loc_187FC77:     Set var_9C = Me.Txt
  loc_187FC7D:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_187FC85:     var_A0.Tag = vbNullString
  loc_187FC97:     global_120 = vbNullString
  loc_187FC9E:   Else
  loc_187FCD9:     Set var_A4 = Me.Txt
  loc_187FCDF:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_187FCE7:     var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_187FD38:     Set var_A4 = Me.Txt
  loc_187FD3E:     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_187FD46:     var_C4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_187FD79:     var_A0 = Me.Fields.Item("NCat")
  loc_187FD8A:     var_A8 = CStr(var_A0.Value)
  loc_187FD90:     global_120 = var_A8
  loc_187FDA5:     Set var_9C = Me.TopCtrl1
  loc_187FDAB:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_98)
  loc_187FDC0:     If ( = "Add") Then
  loc_187FDCE:       If (global_156 = "Automatic") Then
  loc_187FDDE:         Set var_9C = Me.Txt
  loc_187FDE4:         Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_187FDEC:         var_A0.Enabled = False
  loc_187FDFB:       Else
  loc_187FE08:         Set var_9C = Me.Txt
  loc_187FE0E:         Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_187FE16:         var_A0.Enabled = True
  loc_187FE2D:         Set var_9C = Me.Txt
  loc_187FE33:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_187FE3B:         var_A0.SetFocus
  loc_187FE47:       End If
  loc_187FE47:     End If
  loc_187FE47:   End If
  loc_187FE4B:   Set var_9C = Me.TopCtrl1
  loc_187FE51:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_A0)
  loc_187FE66:   If ( = "Add") Then
  loc_187FE6F:     Call Proc_126_85_110770C(MemVar_1F95044)
  loc_187FE82:     Set var_9C = Me.Txt
  loc_187FE88:     Call 0.Method_Txt_Validate0 (CInt(4), var_A0)
  loc_187FE90:     var_A0.Text = var_A8
  loc_187FE9F:   End If
  loc_187FEA2: Else
  loc_187FEAA:   If (var_98 = CInt(1)) Then
  loc_187FEB8:     Set var_9C = Me.Txt
  loc_187FEBE:     Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_187FEC6:     var_A8 = "Vr. No"
  loc_187FEE7:     If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_187FEF5:       Set var_9C = Me.Txt
  loc_187FEFB:       Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_187FF03:       var_A0.SetFocus
  loc_187FF11:       arg_10 = &HFF
  loc_187FF14:       Exit Sub
  loc_187FF15:     End If
  loc_187FF23:     Set var_9C = Me.Txt
  loc_187FF29:     Call 0.Method_Txt_Validate0 (CInt(1), var_A0, var_A8)
  loc_187FF31:     arg_10 = var_A0.Text
  loc_187FF49:     If (CDbl(var_A8) = CDbl(0)) Then
  loc_187FF65:       MsgBox("Vr. No Can Not Be 0", 0, var_E4, var_114, var_134)
  loc_187FF7F:       Set var_9C = Me.Txt
  loc_187FF85:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_187FF8D:       var_A0.SetFocus
  loc_187FF9B:       arg_10 = &HFF
  loc_187FF9E:       Exit Sub
  loc_187FF9F:     End If
  loc_187FFA3:     Set var_9C = Me.TopCtrl1
  loc_187FFA9:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(arg_10)
  loc_187FFBE:     If (var_A8 = "Add") Then
  loc_187FFD1:       var_A8 = Proc_6_45_EADFB8(MemVar_1F95070, 2)
  loc_187FFE6:       Set var_9C = Me.Txt
  loc_187FFEC:       Call 0.Method_Txt_Validate0 (CInt(0), var_A0)
  loc_1880013:       Set var_A4 = Me.Txt
  loc_1880019:       Call 0.Method_Txt_Validate0 (CInt(0), var_C4, var_140)
  loc_1880021:       5 = var_C4.Tag
  loc_188002E:       var_D4 = Space((CVar(MemVar_1F9506C & var_A8 & var_A0.Tag) - Len(var_140)))
  loc_1880036:       var_114 = ( + "Vr. No Can Not Be 0")
  loc_188004A:       var_134 = Space((5 - Len(global_112)))
  loc_1880052:       var_150 = (var_114 + var_134)
  loc_188005F:       var_160 = (var_150 + CVar(global_112))
  loc_1880076:       Set var_164 = Me.Txt
  loc_188007C:       Call 0.Method_Txt_Validate0 (CInt(1), var_168, var_16C)
  loc_1880084:       8 = var_168.Text
  loc_1880091:       var_17C = Space((var_160 - Len(var_16C)))
  loc_1880099:       var_18C = ( + var_17C)
  loc_18800AB:       Set var_190 = Me.Txt
  loc_18800B1:       Call 0.Method_Txt_Validate0 (CInt(1), var_194)
  loc_18800C4:       var_1B8 = (var_18C + CVar(var_194.Text))
  loc_188011D:       Set var_9C = Me.Txt
  loc_1880123:       Call 0.Method_Txt_Validate0 (CInt(4), var_A0)
  loc_188012B:       var_A0.Text = CStr(var_1B8)
  loc_1880147:       Me.LblVPrefix.Caption = global_112
  loc_188014F:     End If
  loc_1880153:     Set var_9C = Me.TopCtrl1
  loc_1880159:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_188016E:     If ( = "Add") Then
  loc_188019E:       Set var_9C = Me.Txt
  loc_18801A4:       Call 0.Method_Txt_Validate0 (CInt(4), var_A0, var_A8, "Select Count(*) From HallSale1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_18801B5:       var_138 = var_C4 & var_A8
  loc_18801C5:       unk_55BD25.Execute var_138 & "'", 0, var_164
  loc_18801D5:        = var_C4.Item()
  loc_18801DD:        = var_164.Value
  loc_188020A:       If (var_A0.Text.Fields > 0) Then
  loc_1880213:         Call 0.Method_arg_50 (var_A8)
  loc_1880234:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A8), var_114, var_134)
  loc_188024A:         Call Proc_126_85_110770C(MemVar_1F95044)
  loc_188025A:         If (var_A8 = vbNullString) Then
  loc_1880267:           Set var_9C = Me.Txt
  loc_188026D:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1880275:           var_A0.SetFocus
  loc_1880283:           arg_10 = &HFF
  loc_1880286:           Exit Sub
  loc_1880287:         End If
  loc_188028D:         Call Proc_126_85_110770C(MemVar_1F95044, var_A8)
  loc_18802A0:         Set var_9C = Me.Txt
  loc_18802A6:         Call 0.Method_Txt_Validate0 (CInt(4), var_A0, var_A8)
  loc_18802AE:         var_A0.Text = arg_10
  loc_18802BF:         arg_10 = &HFF
  loc_18802C2:         Exit Sub
  loc_18802C3:       End If
  loc_18802C3:     End If
  loc_18802C6:   Else
  loc_18802CE:     If (var_98 = CInt(2)) Then
  loc_18802DF:       Set var_9C = Me.Txt
  loc_18802E5:       Call 0.Method_Txt_Validate0 (CInt(2), var_A0, var_A8)
  loc_18802ED:       arg_10 = var_A0.Text
  loc_1880303:       var_114 = Len(Trim(CVar(var_A8)))
  loc_188031D:       If (var_114 = 0) Then
  loc_1880333:         Set var_9C = Me.Txt
  loc_1880339:         Call 0.Method_Txt_Validate0 (CInt(2), var_A0)
  loc_1880341:         var_A0.Text = CStr(MemVar_1F950EC)
  loc_1880353:       Else
  loc_188035D:         Set var_9C = Me.Txt
  loc_1880363:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1880383:         Set var_C4 = Me.Txt
  loc_1880389:         Call 0.Method_Txt_Validate0 (Cancel, var_164)
  loc_1880391:         var_164.Text = Proc_6_33_15125B8(var_A0)
  loc_18803A4:       End If
  loc_18803B1:       Set var_9C = Me.Txt
  loc_18803B7:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_18803BF:       var_A8 = var_A0.Text
  loc_18803DA:       Set var_A4 = Me.Txt
  loc_18803E0:       Call 0.Method_Txt_Validate0 (Cancel, var_C4, var_138)
  loc_18803E8:       (CDate(var_A8) >= MemVar_1F950F4) = var_C4.Text
  loc_188040A:       If Not((var_A8 And (CDate(var_138) <= MemVar_1F950FC))) Then
  loc_188042E:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_114, var_134)
  loc_1880448:         Set var_9C = Me.Txt
  loc_188044E:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1880456:         var_A0.SetFocus
  loc_1880464:         arg_10 = &HFF
  loc_1880467:         Exit Sub
  loc_1880468:       End If
  loc_188046C:       Set var_9C = Me.TopCtrl1
  loc_1880472:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(arg_10)
  loc_1880491:       Set var_A0 = Me.Txt
  loc_1880497:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_188049F:       var_A8 = var_A4.Text
  loc_18804C9:       If CBool((var_A0 = "Add") And (var_A8 = vbNullString)) Then
  loc_18804D2:         Call Proc_126_85_110770C(MemVar_1F95044)
  loc_18804E5:         Set var_9C = Me.Txt
  loc_18804EB:         Call 0.Method_Txt_Validate0 (CInt(4), var_A0)
  loc_18804F3:         var_A0.Text = var_A8
  loc_1880502:       End If
  loc_1880505:     Else
  loc_188050D:       If (var_98 = CInt(3)) Then
  loc_188051B:         Set var_9C = Me.Txt
  loc_1880521:         Call 0.Method_Txt_Validate0 (CInt(3), var_A0)
  loc_1880529:         var_A8 = "Party Name"
  loc_188054A:         If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_1880558:           Set var_9C = Me.Txt
  loc_188055E:           Call 0.Method_Txt_Validate0 (CInt(3), var_A0)
  loc_1880566:           var_A0.SetFocus
  loc_1880574:           arg_10 = &HFF
  loc_1880577:           Exit Sub
  loc_1880578:         End If
  loc_18805C6:         Set var_9C = Me.Txt
  loc_18805CC:         Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_18805D4:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_18805EC:         If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_18805FC:           Set var_9C = Me.Txt
  loc_1880602:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_188060A:           var_A0.Text = vbNullString
  loc_1880623:           Set var_9C = Me.Txt
  loc_1880629:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1880631:           var_A0.Tag = vbNullString
  loc_1880640:         Else
  loc_188067B:           Set var_A4 = Me.Txt
  loc_1880681:           Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1880689:           var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18806BC:           var_A0 = Me.Fields.Item("Code")
  loc_18806CD:           var_A8 = CStr(var_A0.Value)
  loc_18806DA:           Set var_A4 = Me.Txt
  loc_18806E0:           Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_18806E8:           var_C4.Tag = var_A8
  loc_18806FE:         End If
  loc_1880701:       Else
  loc_1880709:         If (var_98 = CInt(7)) Then
  loc_188072C:           var_AE = Me.EOF
  loc_188075A:           Set var_9C = Me.Txt
  loc_1880760:           Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_1880768:           ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_1880780:           If (var_A8 Or (var_A8 = vbNullString)) Then
  loc_1880790:             Set var_9C = Me.Txt
  loc_1880796:             Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_188079E:             var_A0.Text = vbNullString
  loc_18807B7:             Set var_9C = Me.Txt
  loc_18807BD:             Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_18807C5:             var_A0.Tag = vbNullString
  loc_18807D3:             arg_10 = &HFF
  loc_18807D9:           Else
  loc_1880814:             Set var_A4 = Me.Txt
  loc_188081A:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1880822:             var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1880855:             var_A0 = Me.Fields.Item("Code")
  loc_1880866:             var_A8 = CStr(var_A0.Value)
  loc_1880873:             Set var_A4 = Me.Txt
  loc_1880879:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1880881:             var_C4.Tag = var_A8
  loc_1880897:           End If
  loc_18808A6:           Me.FGrid.Redraw = False
  loc_18808BB:           Set var_9C = Me.FGrid
  loc_18808C1:           var_9C.Rows = 1
  loc_18808CB:           var_8E = 1
  loc_18808D2:           Set var_94 = New 
  loc_18808DD:           Me.var_9C.CursorLocation = 3
  loc_18808F0:           Set var_9C = Me.Txt
  loc_18808F6:           Call 0.Method_Txt_Validate0 (CInt(7), var_A0, var_A8)
  loc_18808FE:           var_8E = var_A0.Tag
  loc_1880921:           var_138 = "Select H.*,H1.QTYISS,H1.ITEM,H1.REMARKS,H1.AMOUNT AS AMOUNT1,H1.Rate as Rate1,H1.TaxAmt as Tax1,H1.Total as Total1,I.NAME AS ITEMNAME,I.RateEdit,IR.Rate as IRate,H1.TaxPer,IC.TAXSTRU From (((HallBook H  LEFT JOIN HallBook1 H1 on H.DocId=H1.DocId)LEFT JOIN ITEMMAST I ON H1.ITEM=I.CODE And H1.RestCode=I.REstCODE)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=H1.RestCode and IR.ItemCode=H1.Item WHERE H.DOCID='" & var_A8
  loc_188092F:           var_94.Open CVar(var_138 & "' and H1.Rate<>0 Order by H1.DOCID,H1.SNo"), CVar(MemVar_1F95044), 3
  loc_1880959:           If (var_94.RecordCount > 0) Then
  loc_1880973:             var_A0 = var_94.Fields.Item("Advance")
  loc_188099F:             var_A8 = CStr(Format(CVar(var_A0), "0.00"))
  loc_18809AE:             Set var_A4 = Me.Txt
  loc_18809B4:             Call 0.Method_Txt_Validate0 (CInt(8), var_C4, var_A8, 1)
  loc_18809BC:             var_C4.Text = 1
  loc_18809E2:             Set var_9C = Me.TxtGt
  loc_18809E8:             Call 0.Method_Txt_Validate8 (var_AE, var_90, 1)
  loc_18809F3:             For var_1C0 = -1 To var_AE:         1 = var_1C0 'Integer
  loc_1880A06:               Set var_9C = Me.LblCap
  loc_1880A0C:               Call 0.Method_Txt_Validate0 (var_90, var_A0, var_A8)
  loc_1880A14:               -1 = var_A0.Tag
  loc_1880A2B:               If (var_A8 = "STOT") Then
  loc_1880A48:                 var_A0 = var_94.Fields.Item("Total")
  loc_1880A66:                 Set var_A4 = Me.TxtGt
  loc_1880A6C:                 Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1880A74:                 var_C4.Text = CStr(var_A0.Value)
  loc_1880A8D:               Else
  loc_1880A9A:                 Set var_9C = Me.LblCap
  loc_1880AA0:                 Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880ABF:                 If (var_A0.Tag = "HLR") Then
  loc_1880ADC:                   var_A0 = var_94.Fields.Item("HallRent")
  loc_1880AFA:                   Set var_A4 = Me.TxtGt
  loc_1880B00:                   Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1880B08:                   var_C4.Text = CStr(var_A0.Value)
  loc_1880B21:                 Else
  loc_1880B2E:                   Set var_9C = Me.LblCap
  loc_1880B34:                   Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880B53:                   If (var_A0.Tag = "HLP") Then
  loc_1880B70:                     var_A0 = var_94.Fields.Item("TotalPerCover")
  loc_1880B8E:                     Set var_A4 = Me.TxtGt
  loc_1880B94:                     Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1880B9C:                     var_C4.Text = CStr(var_A0.Value)
  loc_1880BB5:                   Else
  loc_1880BC2:                     Set var_9C = Me.LblCap
  loc_1880BC8:                     Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880BE7:                     If (var_A0.Tag = "SDIS") Then
  loc_1880C22:                       Set var_A4 = Me.TxtPer
  loc_1880C28:                       Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1880C30:                       var_C4.Text = CStr(var_94.Fields.Item("DiscPer").Value)
  loc_1880C60:                       var_A0 = var_94.Fields.Item("DiscAmt")
  loc_1880C7E:                       Set var_A4 = Me.TxtGt
  loc_1880C84:                       Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1880C8C:                       var_C4.Text = CStr(var_A0.Value)
  loc_1880CA5:                     Else
  loc_1880CB2:                       Set var_9C = Me.LblCap
  loc_1880CB8:                       Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880CD7:                       If (var_A0.Tag = "SST") Then
  loc_1880CF4:                         var_A0 = var_94.Fields.Item("Tax")
  loc_1880D12:                         Set var_A4 = Me.TxtGt
  loc_1880D18:                         Call 0.Method_Txt_Validate0 (var_8E, var_C4)
  loc_1880D20:                         var_C4.Text = CStr(var_A0.Value)
  loc_1880D39:                       Else
  loc_1880D46:                         Set var_9C = Me.LblCap
  loc_1880D4C:                         Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880D6B:                         If (var_A0.Tag = "SSTX") Then
  loc_1880D6E:                           GoTo loc_1881052
  loc_1880D71:                         End If
  loc_1880D7E:                         Set var_9C = Me.LblCap
  loc_1880D84:                         Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880DA3:                         If (var_A0.Tag = "SSCH") Then
  loc_1880DC0:                           var_A0 = var_94.Fields.Item("Servicecharge")
  loc_1880DDE:                           Set var_A4 = Me.TxtGt
  loc_1880DE4:                           Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1880DEC:                           var_C4.Text = CStr(var_A0.Value)
  loc_1880E05:                         Else
  loc_1880E12:                           Set var_9C = Me.LblCap
  loc_1880E18:                           Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880E37:                           If (var_A0.Tag = "SADD") Then
  loc_1880E54:                             var_A0 = var_94.Fields.Item("AddAmt")
  loc_1880E72:                             Set var_A4 = Me.TxtGt
  loc_1880E78:                             Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1880E80:                             var_C4.Text = CStr(var_A0.Value)
  loc_1880E99:                           Else
  loc_1880EA6:                             Set var_9C = Me.LblCap
  loc_1880EAC:                             Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880ECB:                             If (var_A0.Tag = "SDED") Then
  loc_1880EE8:                               var_A0 = var_94.Fields.Item("DedAmt")
  loc_1880F06:                               Set var_A4 = Me.TxtGt
  loc_1880F0C:                               Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1880F14:                               var_C4.Text = CStr(var_A0.Value)
  loc_1880F2D:                             Else
  loc_1880F3A:                               Set var_9C = Me.LblCap
  loc_1880F40:                               Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880F5F:                               If (var_A0.Tag = "SROFF") Then
  loc_1880F7C:                                 var_A0 = var_94.Fields.Item("RoundOff")
  loc_1880F9A:                                 Set var_A4 = Me.TxtGt
  loc_1880FA0:                                 Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_1880FA8:                                 var_C4.Text = CStr(var_A0.Value)
  loc_1880FC1:                               Else
  loc_1880FCE:                                 Set var_9C = Me.LblCap
  loc_1880FD4:                                 Call 0.Method_Txt_Validate0 (var_90, var_A0)
  loc_1880FF3:                                 If (var_A0.Tag = "SNET") Then
  loc_1881021:                                   var_A8 = CStr(var_94.Fields.Item("NetAmt").Value)
  loc_188102E:                                   Set var_A4 = Me.TxtGt
  loc_1881034:                                   Call 0.Method_Txt_Validate0 (var_90, var_C4)
  loc_188103C:                                   var_C4.Text = var_A8
  loc_1881052:                                 End If
  loc_1881052:                               End If
  loc_1881052:                             End If
  loc_1881052:                           End If
  loc_1881052:                           ' Referenced from:                   1880D6E
  loc_1881052:                         End If
  loc_1881052:                       End If
  loc_1881052:                     End If
  loc_1881052:                   End If
  loc_1881052:                 End If
  loc_1881052:               End If
  loc_1881055:             Next var_1C0 'Integer
  loc_188105A:             ' Referenced from:         18814FF
  loc_1881069:             If Not(var_94.EOF) Then
  loc_1881094:               For var_1C4 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):         var_96 = var_1C4 'Byte
  loc_18810A7:                 var_104 = CVar(CLng(&H14)) 'Long
  loc_18810D2:                 Set var_A0 = Me.Txt
  loc_18810D8:                 Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_A8, CStr(Me.FGrid.TextMatrix)))
  loc_18810E0:                 var_104 = var_A4.Text
  loc_1881163:                 If ((CVar(CLng(var_96)) = var_A8) And (CVar(CLng(var_96)) = Proc_6_38_E69628(CVar(var_94.Fields.Item("Item")), CStr(Me.FGrid.TextMatrix)), CVar(CLng(9))))) Then
  loc_1881166:                   GoTo loc_18814F7
  loc_1881169:                 End If
  loc_188116C:               Next var_1C4 'Byte
  loc_1881172:               var_C0 = vbNullString
  loc_188117C:               Set var_9C = Me.FGrid
  loc_1881191:               Set var_218 = Me.FGrid
  loc_1881198:               var_C0 = CVar(CLng(var_8E)) 'Long
  loc_18811A0:               var_104 = CVar(CLng(0)) 'Long
  loc_18811AA:               var_D4 = CVar(CStr(var_8E)) 'String
  loc_18811B1:               LateIdCallSt
  loc_18811F5:               var_E4 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8E)), var_218, CVar(var_94.Fields.Item("Item")))) 'String
  loc_18811FC:               LateIdCallSt
  loc_1881247:               var_E4 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_218, var_E4)) 'String
  loc_188124E:               LateIdCallSt
  loc_1881280:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_1881288:               var_1D4 = CVar(CLng(3)) 'Long
  loc_18812B5:               var_134 = CVar(CStr(Format(CVar(var_94.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_18812BC:               LateIdCallSt
  loc_18812F2:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_18812FA:               var_1D4 = CVar(CLng(4)) 'Long
  loc_1881327:               var_134 = CVar(CStr(Format(CVar(var_94.Fields.Item("Rate1")), "0.00"))) 'String
  loc_188132E:               LateIdCallSt
  loc_1881364:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_188136C:               var_1D4 = CVar(CLng(5)) 'Long
  loc_1881399:               var_134 = CVar(CStr(Format(CVar(var_94.Fields.Item("Amount1")), "0.00"))) 'String
  loc_18813A0:               LateIdCallSt
  loc_18813D6:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_18813DE:               var_1D4 = CVar(CLng(8)) 'Long
  loc_188140B:               var_134 = CVar(CStr(Format(CVar(var_94.Fields.Item("TOTAL1")), "0.00"))) 'String
  loc_1881412:               LateIdCallSt
  loc_188143F:               var_A0 = var_94.Fields.Item("TaxStru")
  loc_1881448:               var_104 = CVar(CLng(var_8E)) 'Long
  loc_1881450:               var_1D4 = CVar(CLng(&H10)) 'Long
  loc_1881484:               LateIdCallSt
  loc_18814A6:               var_104 = CVar(CLng(&H14)) 'Long
  loc_18814B9:               Set var_9C = Me.Txt
  loc_18814BF:               Call 0.Method_Txt_Validate0 (CInt(1), var_A0, var_A8, var_104, CVar(CLng(var_8E)), var_218, CVar(CStr(Format(CVar(var_A0), "0.00"))))
  loc_18814C7:               1 = var_A0.Text
  loc_18814CF:               var_D4 = CVar(var_A8) 'String
  loc_18814D6:               LateIdCallSt
  loc_18814EA:               Set var_218 = Nothing 
  loc_18814F4:               var_8E = (var_8E + 1)
  loc_18814F7:               ' Referenced from:         1881166
  loc_18814FA:               var_94.MoveNext
  loc_18814FF:               GoTo loc_188105A
  loc_1881502:             End If
  loc_1881515:             Me.FGrid.FixedRows = 1
  loc_1881520:           Else
  loc_188152E:             Me.FGrid.Redraw = True
  loc_188153C:             If (var_8E = 1) Then
  loc_1881552:               Me.FGrid.Rows = 1
  loc_188155E:               Set var_A4 = Me.FGrid
  loc_1881578:               var_D4 = CVar(CStr(Proc_6_127_F25B10(var_A4, CInt(0), var_8E, var_218, var_D4, 1))) 'String
  loc_1881580:               Set var_A0 = Me.FGrid
  loc_18815AD:               Me.FGrid.FixedRows = 1
  loc_18815B5:             End If
  loc_18815B5:           End If
  loc_18815D3:           Set var_9C = Me.Txt
  loc_18815D9:           Call 0.Method_Txt_Validate0 (CInt(7), var_A0, var_A8, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_D4, -1, var_A4)
  loc_18815E1:           FGrid.DispID_10000 = var_A0.Tag
  loc_18815FA:           unk_55BD25.Execute var_D4 & var_A8 & "'", var_1D4, var_104
  loc_1881605:           Set var_94 = var_A4
  loc_188161D:           ' Referenced from:         1881AF9
  loc_188162C:           If Not(var_94.EOF) Then
  loc_1881648:             var_C0 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_1881657:             Me.FGrid1.Row = 1
  loc_188168E:             For var_21C = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)):         var_96 = var_21C 'Byte
  loc_1881699:               var_C0 = CVar(CLng(var_96)) 'Long
  loc_18816CD:               Set var_A0 = Me.Txt
  loc_18816D3:               Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_A8, CStr(Me.FGrid1.TextMatrix)), 7)
  loc_18816DB:               var_C0 = var_A4.Text
  loc_18816FC:               Set var_C4 = Me.FGrid1
  loc_1881727:               var_168 = var_94.Fields.Item("VenueName")
  loc_1881738:               var_140 = Proc_6_38_E69628(CVar(var_168), CStr(var_C4.TextMatrix)), 1, CVar(CLng(var_96)))
  loc_188175F:               If (var_218 And ((CByte(1) = var_A8) = var_140)) Then
  loc_1881762:                 GoTo loc_1881AF1
  loc_1881765:               End If
  loc_1881768:             Next var_21C 'Byte
  loc_1881772:             Set var_220 = Me.FGrid1
  loc_1881788:             var_1D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_188178D:             var_1F4 = 0
  loc_18817AF:             var_C0 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_18817B4:             var_104 = 0
  loc_18817D2:             var_A8 = CStr(Me.FGrid1.TextMatrix))
  loc_18817E0:             var_134 = CVar(CStr((Val(var_A8) + CDbl(1)))) 'String
  loc_18817E7:             LateIdCallSt
  loc_188184F:             var_114 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_220, CVar(CStr(Format(CVar(var_94.Fields.Item("VenueName")), "0.00"))))) 'String
  loc_1881856:             LateIdCallSt
  loc_18818B7:             var_114 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_18818BE:             LateIdCallSt
  loc_188191F:             var_114 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_1881926:             LateIdCallSt
  loc_1881987:             var_114 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_188198E:             LateIdCallSt
  loc_18819EF:             var_114 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_18819F6:             LateIdCallSt
  loc_1881A46:             var_A0 = var_94.Fields.Item("VenuCode")
  loc_1881A57:             var_114 = CVar(Proc_6_38_E69628(CVar(var_A0), 6, CVar(CLng(Me.FGrid1.Row)), var_220, var_114)) 'String
  loc_1881A5E:             LateIdCallSt
  loc_1881A8E:             var_104 = 7
  loc_1881AA5:             Set var_9C = Me.Txt
  loc_1881AAB:             Call 0.Method_Txt_Validate0 (CInt(1), var_A0, var_A8, var_104, CVar(CLng(Me.FGrid1.Row)), var_220)
  loc_1881AB3:             var_114 = var_A0.Text
  loc_1881ABB:             var_E4 = CVar(var_A8) 'String
  loc_1881AC2:             LateIdCallSt
  loc_1881ADA:             var_C0 = vbNullString
  loc_1881AE3:             Txt_Validate2 = var_220.Name
  loc_1881AED:             Set var_220 = Nothing 
  loc_1881AF1:             ' Referenced from:         1881762
  loc_1881AF4:             var_94.MoveNext
  loc_1881AF9:             GoTo loc_188161D
  loc_1881AFC:           End If
  loc_1881B00:           Set var_94 = New 
  loc_1881B0B:           var_94.CursorLocation = 3
  loc_1881B1E:           Set var_9C = Me.Txt
  loc_1881B24:           Call 0.Method_Txt_Validate0 (CInt(7), var_A0, var_A8, Txt_Validate2, var_C0, var_220)
  loc_1881B2C:           var_E4 = var_A0.Tag
  loc_1881B5D:           var_94.Open CVar("Select * From HallBook H  WHERE H.DOCID='" & var_A8 & "'"), CVar(MemVar_1F95044), 3
  loc_1881B87:           If (var_94.RecordCount > 0) Then
  loc_1881B8D:             var_C0 = "GuarAtt"
  loc_1881BB0:             Proc_6_39_E7D3A0(var_E4, CVar(var_94.Fields.Item(var_C0)), 1, -1)
  loc_1881BC7:             Set var_A4 = Me.Txt
  loc_1881BCD:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_C4, CStr(var_E4), var_104)
  loc_1881BD5:             var_C4.Text = var_C0
  loc_1881C26:             Set var_A4 = Me.Txt
  loc_1881C2C:             Call 0.Method_Txt_Validate0 (CInt(3), var_C4, CStr(var_94.Fields.Item("PartyName").Value))
  loc_1881C34:             var_C4.Text = var_1F4
  loc_1881C61:             var_A0 = var_94.Fields.Item("CoverRate")
  loc_1881C70:             Proc_6_39_E7D3A0(var_E4, CVar(var_A0))
  loc_1881C78:             var_A8 = CStr(var_E4)
  loc_1881C87:             Set var_A4 = Me.Txt
  loc_1881C8D:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C4)
  loc_1881CBB:             Set var_9C = Me.Txt
  loc_1881CC1:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_A0)
  loc_1881CC9:             var_A0.Text = vbNullString
  loc_1881CE3:             Set var_A4 = Me.Txt
  loc_1881CE9:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C4)
  loc_1881CFE:             var_228 = Val(var_A8)
  loc_1881D0F:             Set var_9C = Me.Txt
  loc_1881D15:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_A0, var_A8)
  loc_1881D30:             var_13C = CStr((Val(var_A8) * var_A0.Text))
  loc_1881D3C:             Set var_164 = Me.TextGt
  loc_1881D42:             Call 0.Method_Txt_Validate0 (1, var_168)
  loc_1881D4A:             var_168.Text = var_13C
  loc_1881D67:           End If
  loc_1881D75:           Me.FGrid.Redraw = True
  loc_1881D83:           If (var_8E = 1) Then
  loc_1881D99:             Me.FGrid.Rows = 1
  loc_1881DBF:             var_D4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_1881DC7:             Set var_A0 = Me.FGrid
  loc_1881DF4:             Me.FGrid.FixedRows = 1
  loc_1881DFC:           End If
  loc_1881E02:           Call Proc_126_89_164E294(Cancel, FGrid.DispID_10000)
  loc_1881E0D:           Call Proc_126_90_14ACC4C(Cancel, var_D4)
  loc_1881E15:         Else
  loc_1881E1D:           If (var_98 = CInt(5)) Then
  loc_1881E2B:             Set var_9C = Me.Txt
  loc_1881E31:             Call 0.Method_Txt_Validate0 (CInt(5), var_A0)
  loc_1881E39:             var_A8 = "HallName"
  loc_1881E5A:             If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_1881E68:               Set var_9C = Me.Txt
  loc_1881E6E:               Call 0.Method_Txt_Validate0 (CInt(5), var_A0)
  loc_1881E76:               var_A0.SetFocus
  loc_1881E84:               arg_10 = &HFF
  loc_1881E87:               Exit Sub
  loc_1881E88:             End If
  loc_1881EA8:             var_AE = Me.EOF
  loc_1881EBC:             var_B0 = Me.BOF
  loc_1881ED6:             Set var_9C = Me.Txt
  loc_1881EDC:             Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A8)
  loc_1881EE4:             ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (var_B0 = &HFF))) = var_A0.Text
  loc_1881EFC:             If (arg_10 Or (var_A8 = vbNullString)) Then
  loc_1881F0C:               Set var_9C = Me.Txt
  loc_1881F12:               Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1881F1A:               var_A0.Text = vbNullString
  loc_1881F33:               Set var_9C = Me.Txt
  loc_1881F39:               Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1881F41:               var_A0.Tag = vbNullString
  loc_1881F50:             Else
  loc_1881F8B:               Set var_A4 = Me.Txt
  loc_1881F91:               Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1881F99:               var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1881FCC:               var_A0 = Me.Fields.Item("Code")
  loc_1881FEA:               Set var_A4 = Me.Txt
  loc_1881FF0:               Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1881FF8:               var_C4.Tag = CStr(var_A0.Value)
  loc_188200E:             End If
  loc_1882011:           Else
  loc_1882019:             If Not (var_98 = CInt(&HF)) Then
  loc_1882024:               If (var_98 = CInt(&HE)) Then
  loc_1882027:               End If
  loc_1882034:               Set var_9C = Me.Txt
  loc_188203A:               Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1882053:               Proc_6_40_EA5C80(CVar(Val(var_A0.Text)))
  loc_1882067:               Set var_A4 = Me.Txt
  loc_188206D:               Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_1882075:               var_C4.Text = CStr(var_1D4)
  loc_1882096:               Set var_9C = Me.TxtGt
  loc_188209C:               Call 0.Method_Txt_Validate8 (var_AE)
  loc_18820AE:               Set var_A0 = Me.TxtGt
  loc_18820B4:               Call 0.Method_Txt_Validate0 (var_AE, var_A4)
  loc_18820D3:               Set var_C4 = Me.TextGt
  loc_18820D9:               Call 0.Method_Txt_Validate8 (var_B0)
  loc_18820EB:               Set var_164 = Me.TextGt
  loc_18820F1:               Call 0.Method_Txt_Validate0 (var_B0, var_168)
  loc_1882106:               var_240 = Val(var_168.Text)
  loc_1882117:               Set var_190 = Me.Txt
  loc_188211D:               Call 0.Method_Txt_Validate0 (CInt(&HF), var_194, var_13C)
  loc_1882132:               var_248 = Val(var_13C)
  loc_1882143:               Set var_22C = Me.Txt
  loc_1882149:               Call 0.Method_Txt_Validate0 (CInt(8), var_230, var_140)
  loc_188215E:               var_250 = Val(var_140)
  loc_1882185:               var_D4 = CVar((((Val(var_A4.Text) + var_194.Text) - var_230.Text) - var_250)) 'Double
  loc_18821A3:               Set var_234 = Me.Txt
  loc_18821A9:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_238, CStr(Format(CVar(Val(var_A0.Text)), "0.00")), 1)
  loc_18821B1:               var_238.Text = 1
  loc_18821E7:             End If
  loc_18821E7:           End If
  loc_18821E7:         End If
  loc_18821E7:       End If
  loc_18821E7:     End If
  loc_18821E7:   End If
  loc_18821E7: End If
  loc_18821EC: Set var_88 = Nothing
  loc_18821F4: Set var_94 = Nothing
  loc_18821F7: Exit Sub
  loc_18821F8: ' Referenced from: 187FB50
  loc_18821F8: Proc_6_60_E63754(var_250)
  loc_18821FD: Exit Sub
End Sub

Private Sub TextPer_GotFocus(Index As Integer) 'ED1290
  'Data Table: 55BD00
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED11F2: Set var_88 = Me.TextPer
  loc_ED11F8: Call 0.Method_TextPer_GotFocus0 (Index)
  loc_ED1206: Proc_6_74_E23240(var_8C)
  loc_ED1212: Call Proc_126_82_F26E50(var_8C)
  loc_ED1226: Set var_88 = Me.TextPer
  loc_ED122C: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED1234: var_8C.SelStart = 0
  loc_ED124D: Set var_88 = Me.TextPer
  loc_ED1253: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ED126E: Set var_90 = Me.TextPer
  loc_ED1274: Call 0.Method_TextPer_GotFocus0 (Index, var_98)
  loc_ED127C: var_98.SelLength = Len(var_8C.Text)
  loc_ED128F: Exit Sub
End Sub

Private Sub TextPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BE90
  'Data Table: 55BD00
  loc_E5BE5D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BE66:   Proc_6_75_E5335C(Shift)
  loc_E5BE6B: End If
  loc_E5BE80: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BE89:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5BE8E: End If
  loc_E5BE8E: Exit Sub
End Sub

Private Sub TextPer_KeyPress(KeyAscii As Integer) 'E56E80
  'Data Table: 55BD00
  loc_E56E52: Set var_88 = Me.TextPer
  loc_E56E58: Call 0.Method_TextPer_KeyPress0 (KeyAscii)
  loc_E56E73: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E56E7F: Exit Sub
End Sub

Private Sub TextPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E01144
  'Data Table: 55BD00
  loc_E0113E: Call Proc_126_90_14ACC4C(KeyCode)
  loc_E01143: Exit Sub
End Sub

Private Sub TextPer_LostFocus(Index As Integer) 'E50DAC
  'Data Table: 55BD00
  loc_E50D8A: Set var_88 = Me.TextPer
  loc_E50D90: Call 0.Method_TextPer_LostFocus0 (Index)
  loc_E50D9E: Proc_6_73_E23294(var_8C)
  loc_E50DAA: Exit Sub
End Sub

Private Sub Command1_Click() '10066A4
  'Data Table: 55BD00
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As TextBox
  Dim var_114 As Double
  Dim var_C4 As TextBox
  Dim var_11C As Double
  Dim var_D0 As TextBox
  Dim var_124 As Double
  loc_1006502: Set var_88 = Me.Txt
  loc_1006508: Call 0.Method_Command1_Click0 (CInt(1), var_8C)
  loc_1006523: Set var_90 = Me.Txt
  loc_1006529: Call 0.Method_Command1_Click0 (CInt(4), var_94)
  loc_1006544: Set var_98 = Me.Txt
  loc_100654A: Call 0.Method_Command1_Click0 (CInt(5), var_9C)
  loc_100655E: Set var_A4 = Me.TxtGt
  loc_1006564: Call 0.Method_Command1_Click8 (var_A6)
  loc_1006576: Set var_AC = Me.TxtGt
  loc_100657C: Call 0.Method_Command1_Click0 (var_A6, var_B0)
  loc_1006591: var_114 = Val(var_B0.Text)
  loc_100659B: Set var_B8 = Me.TextGt
  loc_10065A1: Call 0.Method_Command1_Click8 (var_BA)
  loc_10065B3: Set var_C0 = Me.TextGt
  loc_10065B9: Call 0.Method_Command1_Click0 (var_BA, var_C4)
  loc_10065CE: var_11C = Val(var_C4.Text)
  loc_10065DF: Set var_CC = Me.Txt
  loc_10065E5: Call 0.Method_Command1_Click0 (CInt(8), var_D0, var_D4)
  loc_10065ED: var_11C = var_D0.Text
  loc_10065FA: var_124 = Val(var_D4)
  loc_1006602: var_10C = 0
  loc_100660D: Set var_108 = Nothing
  loc_1006616: var_104 = "S"
  loc_1006664: Proc_263_0_F73920(1, 6, "EBILL", var_8C.Text, var_94.Text, 0, var_9C.Tag)
  loc_10066A1: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11294CC
  'Data Table: 55BD00
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
  loc_1129176: Set var_88 = Me.TxtGrid
  loc_112917C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_112918A: Proc_6_74_E23240(var_8C)
  loc_1129196: Call Proc_126_82_F26E50(var_8C)
  loc_11291A7: If (Index = 0) Then
  loc_11291C0:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11291DB:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112921A:   Set var_108 = Me.TxtGrid
  loc_1129220:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1129228:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1129250:   var_C4 = Me.FGrid.Col
  loc_1129259:   var_114 = CLng(var_C4)
  loc_1129269:   If (var_114 = CLng(1)) Then
  loc_1129276:     Set global_64 = New 
  loc_1129288:     Me.var_C4.CursorLocation = 3
  loc_11292AE:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IR.Rate as IRate,IC.TAXSTRU,IC.TAXSTRU ,I.Unit,I.DiscApp,I.RateEdit,I.Kitchen,i.SChrgApp From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.ItemCode=I.Code And IR.RestCode=I.RestCode) where IR.RestCode ='" & global_56
  loc_11292BF:     Me.Open CVar(var_110 & "' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_11292D3:     CVarUnk
  loc_11292D8:     VerifyVarObj
  loc_11292DE:     Set var_88 = Me.DGItem
  loc_11292E4:     LateIdStAd
  loc_1129333:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1129336:       Exit Sub
  loc_1129337:     End If
  loc_112933D:     Me.MoveFirst
  loc_1129355:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112935D:     var_E4 = CVar(CLng(9)) 'Long
  loc_1129366:     Set var_8C = Me.FGrid
  loc_112936C:     var_D4 = var_8C.TextMatrix)
  loc_11293A1:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_11293D1:     If (Me.EOF = &HFF) Then
  loc_11293DA:       Me.MoveFirst
  loc_11293DF:     End If
  loc_11293E8:     CVarUnk
  loc_11293ED:     VerifyVarObj
  loc_11293F3:     Set var_88 = Me.DGItem
  loc_11293F9:     LateIdStAd
  loc_112940A:   Else
  loc_1129411:     If (var_114 = CLng(2)) Then
  loc_1129429:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, Me.TxtGrid, global_64, var_134, var_D4)
  loc_1129431:       var_8C.MaxLength = var_E4
  loc_1129452:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(960), var_A4, Me.TxtGrid)
  loc_112945A:       var_8C.Height = global_64
  loc_1129469:     Else
  loc_1129470:       If Not (var_114 = CLng(3)) Then
  loc_112947A:         If (var_114 = CLng(4)) Then
  loc_112947D:         End If
  loc_112948C:         Set var_88 = Me.TxtGrid
  loc_1129492:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_112949A:         var_8C.MaxLength = 1
  loc_11294AF:         If (global_150 = 0) Then
  loc_11294BA:           var_110 = "{Home}+{End}"
  loc_11294C0:           Proc_303_0_FBACC8(CStr(var_D4), 0)
  loc_11294C8:         End If
  loc_11294C8:       End If
  loc_11294C8:     End If
  loc_11294C8:   End If
  loc_11294C8: End If
  loc_11294C8: Exit Sub
  loc_11294C9: ArrayRebase1Var
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '113D6C0
  'Data Table: 55BD00
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_113D348: If (KeyCode = 0) Then
  loc_113D355:   If (CLng(Shift) = &H1B) Then
  loc_113D365:     Set var_8C = Me.TxtGrid
  loc_113D36B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_113D385:     Set var_98 = Me.TxtGrid
  loc_113D38B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_113D393:     var_9C.Text = var_90.Tag
  loc_113D3AF:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_113D3B4:     Call Proc_126_82_F26E50(arg_14)
  loc_113D3BD:     Set var_8C = Me.FGrid
  loc_113D3DA:     Set var_8C = Me.TxtGrid
  loc_113D3E0:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_113D3E8:     var_90.Visible = FGrid.DispID_8001
  loc_113D3F4:     Exit Sub
  loc_113D3F5:   End If
  loc_113D408:   var_B0 = CLng(Me.FGrid.Col)
  loc_113D418:   If (var_B0 = CLng(1)) Then
  loc_113D433:     Set var_9C = Nothing
  loc_113D46C:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_113D48A:     If (CLng(Shift) = &HD) Then
  loc_113D493:       Call Proc_126_77_14046FC(KeyCode, var_B2, 1, Nothing)
  loc_113D49E:       If (var_B2 = &HFF) Then
  loc_113D4EB:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113D4FB:       End If
  loc_113D4FB:     End If
  loc_113D4FE:   Else
  loc_113D505:     If (var_B0 = CLng(2)) Then
  loc_113D512:       If (CLng(Shift) = &HD) Then
  loc_113D51B:         Call Proc_126_77_14046FC(KeyCode, var_B2, 0, 0)
  loc_113D526:         If (var_B2 = &HFF) Then
  loc_113D573:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(3) + 1)), 0)
  loc_113D583:         End If
  loc_113D583:       End If
  loc_113D586:     Else
  loc_113D58D:       If (var_B0 = CLng(4)) Then
  loc_113D596:         Call Proc_126_77_14046FC(KeyCode, var_B2, 0, 0)
  loc_113D5A1:         If (var_B2 = &HFF) Then
  loc_113D5EE:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(4) + 1)), 0)
  loc_113D5FE:         End If
  loc_113D601:       Else
  loc_113D608:         If (var_B0 = CLng(3)) Then
  loc_113D64B:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_150 = &HFF))) Then
  loc_113D654:             Call Proc_126_77_14046FC(KeyCode, var_B2, 0, 0)
  loc_113D65F:             If (var_B2 = &HFF) Then
  loc_113D6AC:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113D6BC:             End If
  loc_113D6BC:           End If
  loc_113D6BC:         End If
  loc_113D6BC:       End If
  loc_113D6BC:     End If
  loc_113D6BC:   End If
  loc_113D6BC: End If
  loc_113D6BC: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F81570
  'Data Table: 55BD00
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F8141F: Proc_6_58_E06050(arg_10)
  loc_F81430: If (KeyAscii = 0) Then
  loc_F81446:   var_A0 = CLng(Me.FGrid.Col)
  loc_F81456:   If (var_A0 = CLng(1)) Then
  loc_F81475:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F8147C:       Set var_AC = Me.TxtGrid
  loc_F81487:       var_A4 = "Name"
  loc_F814A2:       Proc_6_89_1470B00(var_AC, KeyAscii, global_64, arg_10)
  loc_F814B1:     End If
  loc_F814B4:   Else
  loc_F814BB:     If (var_A0 = CLng(3)) Then
  loc_F814C8:       Set var_8C = Me.TxtGrid
  loc_F814CE:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F814E9:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F814F8:     Else
  loc_F814FF:       If (var_A0 = CLng(4)) Then
  loc_F8150C:         Set var_8C = Me.TxtGrid
  loc_F81512:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F8152D:         Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_F8153C:       Else
  loc_F81543:         If (var_A0 = CLng(2)) Then
  loc_F81555:           Set var_8C = Me.TxtGrid
  loc_F8155B:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F81563:           var_AC.MaxLength = 2
  loc_F8156F:         End If
  loc_F8156F:       End If
  loc_F8156F:     End If
  loc_F8156F:   End If
  loc_F8156F: End If
  loc_F8156F: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7BEF4
  'Data Table: 55BD00
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  loc_F7BDB8: On Error Goto loc_F7BEEE
  loc_F7BDC7: If (KeyCode = 0) Then
  loc_F7BDDD:   var_A0 = CLng(Me.FGrid.Col)
  loc_F7BDED:   If (var_A0 = CLng(1)) Then
  loc_F7BE13:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F7BE24:       Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_F7BE2D:       Set var_AC = Me.TxtGrid
  loc_F7BE38:       var_A8 = "Name"
  loc_F7BE53:       Proc_6_89_1470B00(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_F7BE62:     End If
  loc_F7BE65:   Else
  loc_F7BE6C:     If (var_A0 = CLng(2)) Then
  loc_F7BEAB:       Set var_8C = Me.TxtGrid
  loc_F7BEB1:       Call 0.Method_TxtGrid_KeyUp0 (0, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F7BEB9:       &HFF = var_AC.Text
  loc_F7BEC1:       var_114 = CVar(var_A8) 'String
  loc_F7BEC9:       Set var_128 = Me.FGrid
  loc_F7BECF:       LateIdCallSt
  loc_F7BEED:     End If
  loc_F7BEED:   End If
  loc_F7BEED: End If
  loc_F7BEED: Exit Sub
  loc_F7BEEE: ' Referenced from: F7BDB8
  loc_F7BEEE: Proc_6_60_E63754(var_128, var_114, 0)
  loc_F7BEF3: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21D40
  'Data Table: 55BD00
  Dim arg_10 As Integer
  loc_E21D28: If (Cancel = 0) Then
  loc_E21D31:   Call Proc_126_77_14046FC(Cancel, var_88)
  loc_E21D3A:   arg_10 = Not(var_88)
  loc_E21D3D: End If
  loc_E21D3D: Exit Sub
End Sub

Private Sub Form_Load() '123FDAC
  'Data Table: 55BD00
  Dim unk_55BD34 As Connection15
  Dim var_8C As String
  Dim unk_55BD25 As Connection15
  Dim var_88 As Recordset15
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_B4 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_120 As String
  Dim var_BC As Fields15
  loc_123F88C: On Error Goto loc_123FDA4
  loc_123F89B: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_123F8A4: MemVar_1F9504C = New 
  loc_123F8B3: Me.Connection15.CursorLocation = 3
  loc_123F8C3: unk_55BD34.IsolationLevel = &H10
  loc_123F8D3: unk_55BD34.CommandTimeout = 0
  loc_123F8FA: unk_55BD34.Open "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & MemVar_1F9510C & ";Persist Security Info=False", vbNullString, vbNullString, -1
  loc_123F911: Set global_164 = Nothing
  loc_123F93F: unk_55BD25.Execute "Select * from Depart where Code='" & global_56 & "'", var_B4, -1
  loc_123F94A: Set var_88 = var_94
  loc_123F96E: If (var_88.RecordCount > 0) Then
  loc_123F988:   var_BC = var_88.Fields.Item("Name")
  loc_123F9A0:   Set var_C0 = Me.LblRest
  loc_123F9A6:   var_C0.Caption = Proc_6_38_E69628(CVar(var_BC))
  loc_123F9B8: End If
  loc_123F9C2: Set global_60 = New 
  loc_123F9D4: Me.CursorLocation = 3
  loc_123F9FA: var_8C = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where NCAT in('EBILL') and RestCode='" & global_56
  loc_123FA0B: Me.Open CVar(var_8C & "' Order by Description"), CVar(MemVar_1F95044), 3
  loc_123FA1F: CVarUnk
  loc_123FA24: VerifyVarObj
  loc_123FA2A: Set var_94 = Me.DGVType
  loc_123FA30: LateIdStAd
  loc_123FA48: Set global_72 = New 
  loc_123FA5A: Me.DGVType.CursorLocation = 3
  loc_123FA82: Me.Open "Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.RESTTYPE IN('Banquet') Order by H.Name", CVar(MemVar_1F95044), 3
  loc_123FA90: CVarUnk
  loc_123FA95: VerifyVarObj
  loc_123FA9B: Set var_94 = Me.DGHall
  loc_123FAA1: LateIdStAd
  loc_123FACB: Me.DGHall.CursorLocation = 3
  loc_123FAE7: var_A4 = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK Order by pARTYName"
  loc_123FAF3: Me.Open "Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.RESTTYPE IN('Banquet') Order by H.Name", CVar(MemVar_1F95044), 2
  loc_123FB01: CVarUnk
  loc_123FB06: VerifyVarObj
  loc_123FB12: LateIdStAd
  loc_123FB2A: Set global_80 = New 
  loc_123FB3C: Me.DGParty.CursorLocation = 3
  loc_123FB64: var_B4 = "Select S.DocId as SearchCode,S.DocID From HallSale1 S LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE WHERE S.VDATE= #" & CDate(MemVar_1F950EC) 
  loc_123FB6D: var_F0 = var_B4 & "# AND V.NCAT IN ('EBILL') AND V.RESTCODE='" 
  loc_123FB8E: Me.Open var_F0 & CVar(global_56) & "' Order by S.Docid", CVar(MemVar_1F9504C), 3
  loc_123FBC3: Call 0.Method_arg_50 (var_8C, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_B4, -1, Me.DGParty, var_BC, 0, var_C0)
  loc_123FBEA: unk_55BD25.Execute var_F0 & var_8C & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_123FBF2: var_94 = var_94.Fields
  loc_123FBFA: 3 = var_BC.Item(New)
  loc_123FC02: -1 = var_C0.Value
  loc_123FC2F: If (var_F0 > 0) Then
  loc_123FC6A:   Call 0.Method_arg_50 (var_8C, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_B4, -1, var_94, var_BC, 0)
  loc_123FC91:   unk_55BD25.Execute var_C0 & var_8C & "' AND UNAME='" & MemVar_1F950C8 & "'", var_F0, "SearchCode='"
  loc_123FC99:   0 = var_94.Fields
  loc_123FCA1:   var_120 = var_BC.Item(1)
  loc_123FCA9:    = var_C0.Value
  loc_123FCC8:   Me.Find CStr(var_F0 & "'"), , 
  loc_123FCF0: End If
  loc_123FD07: If (Me.RecordCount > 0) Then
  loc_123FD1E:   If (Me.EOF = &HFF) Then
  loc_123FD27:     Me.MoveLast
  loc_123FD2C:   End If
  loc_123FD2C: End If
  loc_123FD35: Call 0.Method_arg_160 (var_94)
  loc_123FD43: Call 0.Method_arg_164 (var_94)
  loc_123FD6E: Call Proc_126_81_104BE74(Proc_5_1_100EC1C("INI", Me))
  loc_123FD91: Proc_6_23_DFC5B8(Me, 7545)
  loc_123FD99: Call Proc_126_74_146C0D0(11940)
  loc_123FD9E: Call Proc_126_78_18380AC(global_80)
  loc_123FDA3: Exit Sub
  loc_123FDA4: ' Referenced from: 123F88C
  loc_123FDA4: Proc_6_60_E63754()
  loc_123FDA9: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E78120
  'Data Table: 55BD00
  loc_E780C7: Set global_72 = Nothing
  loc_E780D9: Set global_64 = Nothing
  loc_E780EB: Set global_84 = Nothing
  loc_E780FD: Set global_88 = Nothing
  loc_E7810F: Set global_76 = Nothing
  loc_E7811B: global_52 = 0
  loc_E7811E: Exit Sub
End Sub

Private Sub Form_Activate() 'FC7034
  'Data Table: 55BD00
  Dim var_90 As String
  Dim unk_55BD25 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_CC As Integer
  Dim var_120 As Field20
  loc_FC6EB2: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE NCAT='BBILL' AND RestCode='" & global_56 & "' Order by Description"
  loc_FC6EBB: unk_55BD25.Execute var_90, var_B0, -1
  loc_FC6EC6: Set var_88 = var_B4
  loc_FC6EEA: If (var_88.RecordCount > 0) Then
  loc_FC6F07:   var_BC = var_88.Fields.Item(0)
  loc_FC6F1E:   global_132 = CStr(var_BC.Value)
  loc_FC6F32: Else
  loc_FC6F45:   var_B0 = "Sundries Not Defined"
  loc_FC6F4B:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_FC6F68:   Me.Global.Unload Me
  loc_FC6F70:   Exit Sub
  loc_FC6F71: End If
  loc_FC6F77: var_CC = 0
  loc_FC6FA7: unk_55BD25.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_132 & "'", var_B0, -1
  loc_FC6FAF: var_B4 = var_B4.Fields
  loc_FC6FB7: var_CC = var_BC.Item(var_BC)
  loc_FC6FBF: var_120 = var_120.Value
  loc_FC6FE6: If (var_DC <= 0) Then
  loc_FC7002:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_FC701F:   Me.Global.Unload Me
  loc_FC7027:   Exit Sub
  loc_FC7028: End If
  loc_FC702D: Set var_88 = Nothing
  loc_FC7030: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2696C
  'Data Table: 55BD00
  loc_E26951: If (global_52 = &HFF) Then
  loc_E26961:   Me.Global.Unload Me
  loc_E26969: End If
  loc_E26969: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E390C8
  'Data Table: 55BD00
  loc_E3909C: On Error Goto loc_E390C0
  loc_E390B7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E390BF: Exit Sub
  loc_E390C0: ' Referenced from: E3909C
  loc_E390C0: Proc_6_60_E63754(Shift)
  loc_E390C5: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECFF34
  'Data Table: 55BD00
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECFE96: Set var_88 = Me.TxtPer
  loc_ECFE9C: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECFEAA: Proc_6_74_E23240(var_8C)
  loc_ECFEB6: Call Proc_126_82_F26E50(var_8C)
  loc_ECFECA: Set var_88 = Me.TxtPer
  loc_ECFED0: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECFED8: var_8C.SelStart = 0
  loc_ECFEF1: Set var_88 = Me.TxtPer
  loc_ECFEF7: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECFF12: Set var_90 = Me.TxtPer
  loc_ECFF18: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECFF20: var_98.SelLength = Len(var_8C.Text)
  loc_ECFF33: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5C1D8
  'Data Table: 55BD00
  loc_E5C1A5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5C1AE:   Proc_6_75_E5335C(Shift)
  loc_E5C1B3: End If
  loc_E5C1C8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5C1D1:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5C1D6: End If
  loc_E5C1D6: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E5689C
  'Data Table: 55BD00
  loc_E5686E: Set var_88 = Me.TxtPer
  loc_E56874: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E5688F: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E5689B: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E02008
  'Data Table: 55BD00
  loc_E02002: Call Proc_126_90_14ACC4C(KeyCode)
  loc_E02007: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4F7BC
  'Data Table: 55BD00
  loc_E4F79A: Set var_88 = Me.TxtPer
  loc_E4F7A0: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4F7AE: Proc_6_73_E23294(var_8C)
  loc_E4F7BA: Exit Sub
End Sub

Private Sub DGHall_UnknownEvent_9 'F598A8
  'Data Table: 55BD00
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F59788: On Error Goto loc_F598A2
  loc_F5979A: Me.DGHall.Visible = False
  loc_F597B9: If (Me.RecordCount > 0) Then
  loc_F597F8:   Set var_B4 = Me.Txt
  loc_F597FE:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F59806:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F59839:   var_B0 = Me.Fields.Item("Code")
  loc_F59858:   Set var_B4 = Me.Txt
  loc_F5985E:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F59866:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5987C: End If
  loc_F59887: Set var_A8 = Me.Txt
  loc_F5988D: Call 0.Method_DGHall_UnknownEvent_90 (CInt(5))
  loc_F59895: var_B0.SetFocus
  loc_F598A1: Exit Sub
  loc_F598A2: ' Referenced from: F59788
  loc_F598A2: Proc_6_60_E63754(var_B0)
  loc_F598A7: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'F59740
  'Data Table: 55BD00
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F59620: On Error Goto loc_F5973A
  loc_F59632: Me.DGBookNo.Visible = False
  loc_F59651: If (Me.RecordCount > 0) Then
  loc_F59690:   Set var_B4 = Me.Txt
  loc_F59696:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5969E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F596D1:   var_B0 = Me.Fields.Item("Code")
  loc_F596F0:   Set var_B4 = Me.Txt
  loc_F596F6:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F596FE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F59714: End If
  loc_F5971F: Set var_A8 = Me.Txt
  loc_F59725: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7))
  loc_F5972D: var_B0.SetFocus
  loc_F59739: Exit Sub
  loc_F5973A: ' Referenced from: F59620
  loc_F5973A: Proc_6_60_E63754(var_B0)
  loc_F5973F: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD3968
  'Data Table: 55BD00
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD37AC: On Error Goto loc_FD3960
  loc_FD37BE: Me.DGVType.Visible = False
  loc_FD37DD: If (Me.RecordCount > 0) Then
  loc_FD382F:   Set var_CC = Me.Txt
  loc_FD3835:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD383D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD3895:   Set var_B4 = Me.DGVType
  loc_FD38AC:   Set var_CC = Me.Txt
  loc_FD38B2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD38BA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD390E:   global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD391F: End If
  loc_FD393D: Set var_B0 = Me.Txt
  loc_FD3943: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD394B: var_B4.SetFocus
  loc_FD395F: Exit Sub
  loc_FD3960: ' Referenced from: FD37AC
  loc_FD3960: Proc_6_60_E63754(var_B4)
  loc_FD3965: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F3ED54
  'Data Table: 55BD00
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3EC4B: Me.DGParty.Visible = False
  loc_F3EC6A: If (Me.RecordCount > 0) Then
  loc_F3ECA9:   Set var_B4 = Me.Txt
  loc_F3ECAF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3ECB7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3ECEA:   var_B0 = Me.Fields.Item("Code")
  loc_F3ED09:   Set var_B4 = Me.Txt
  loc_F3ED0F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3ED17:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3ED2D: End If
  loc_F3ED38: Set var_A8 = Me.Txt
  loc_F3ED3E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(3))
  loc_F3ED46: var_B0.SetFocus
  loc_F3ED52: Exit Sub
End Sub

Public Function global_52Get() '55DAAC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '55DABB
  global_52 = Value
End Sub

Public Function global_56Get() '55DACA
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '55DAD9
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E767F4
  'Data Table: 55BD00
  Dim Me As Recordset15
  loc_E7679E: Me.MoveFirst
  loc_E767C8: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E767E8: If (Me.EOF = 0) Then
  loc_E767EB:   Call Proc_126_78_18380AC(var_9C)
  loc_E767F0: End If
  loc_E767F0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E958D0
  'Data Table: 55BD00
  Dim Me As Recordset15
  loc_E9585E: On Error Goto loc_E958C7
  loc_E95867: Me.MoveFirst
  loc_E95891: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E958B9: Proc_5_0_1107AD0(&HFF, Me, global_80)
  loc_E958C1: Call Proc_126_78_18380AC(0)
  loc_E958C6: Exit Sub
  loc_E958C7: ' Referenced from: E9585E
  loc_E958C7: Proc_6_60_E63754(var_A0)
  loc_E958CC: Exit Sub
End Sub

Public Sub Proc_126_74_146C0D0
  'Data Table: 55BD00
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As TextBox
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_146B4E6: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_146B501: Me.FGrid.Top = CVar(CDbl(2700))
  loc_146B51C: Me.FGrid.Height = CVar(CDbl(2835))
  loc_146B537: Me.FGrid.Width = CVar(CDbl(8005))
  loc_146B551: Me.DGItem.Left = CVar(CDbl(&HF))
  loc_146B56C: Me.DGItem.Top = CVar(CDbl(4145))
  loc_146B586: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_146B59C: Set var_B4 = Me.Txt
  loc_146B5A2: Call 0.Method_Proc_126_74_146C0D00 (CInt(3), var_B8)
  loc_146B5BD: Set var_A8 = Me.Txt
  loc_146B5C3: Call 0.Method_Proc_126_74_146C0D00 (CInt(3), var_AC)
  loc_146B5DB: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_146B5EA: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_146B60A: Set var_A8 = Me.Txt
  loc_146B610: Call 0.Method_Proc_126_74_146C0D00 (CInt(5), var_AC)
  loc_146B62F: Me.DGHall.Left = CVar(var_AC.Left)
  loc_146B64B: Set var_B4 = Me.Txt
  loc_146B651: Call 0.Method_Proc_126_74_146C0D00 (CInt(5), var_B8)
  loc_146B66C: Set var_A8 = Me.Txt
  loc_146B672: Call 0.Method_Proc_126_74_146C0D00 (CInt(5), var_AC)
  loc_146B68A: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_146B699: Me.DGHall.Top = CVar(var_AC.Left)
  loc_146B6B9: Set var_A8 = Me.Txt
  loc_146B6BF: Call 0.Method_Proc_126_74_146C0D00 (CInt(7), var_AC)
  loc_146B6DE: Me.DGBookNo.Left = CVar(var_AC.Left)
  loc_146B6FA: Set var_B4 = Me.Txt
  loc_146B700: Call 0.Method_Proc_126_74_146C0D00 (CInt(7), var_B8)
  loc_146B71B: Set var_A8 = Me.Txt
  loc_146B721: Call 0.Method_Proc_126_74_146C0D00 (CInt(7), var_AC)
  loc_146B739: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_146B748: Me.DGBookNo.Top = CVar(var_AC.Left)
  loc_146B768: Set var_A8 = Me.Txt
  loc_146B76E: Call 0.Method_Proc_126_74_146C0D00 (CInt(0), var_AC)
  loc_146B78D: Me.DGVType.Left = CVar(var_AC.Left)
  loc_146B7A9: Set var_B4 = Me.Txt
  loc_146B7AF: Call 0.Method_Proc_126_74_146C0D00 (CInt(0), var_B8)
  loc_146B7CA: Set var_A8 = Me.Txt
  loc_146B7D0: Call 0.Method_Proc_126_74_146C0D00 (CInt(0), var_AC)
  loc_146B7E8: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_146B7F7: Me.DGVType.Top = CVar(var_AC.Left)
  loc_146B80D: Set var_C4 = Me.FGrid
  loc_146B824: global_100 = CStr(CLng(var_C4.BackColor))
  loc_146B83A: var_C4.Cols = &H15
  loc_146B842: var_94 = CVar(CLng(0)) 'Long
  loc_146B847: var_E8 = &HFA
  loc_146B853: LateIdCallSt
  loc_146B85B: var_94 = 0
  loc_146B867: var_E8 = CVar(CLng(1)) 'Long
  loc_146B86C: var_108 = "Item Name"
  loc_146B875: LateIdCallSt
  loc_146B880: var_94 = CVar(CLng(1)) 'Long
  loc_146B88B: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B892: LateIdCallSt
  loc_146B89D: var_94 = CVar(CLng(1)) 'Long
  loc_146B8A2: var_E8 = &HA0A
  loc_146B8AE: LateIdCallSt
  loc_146B8B6: var_94 = 0
  loc_146B8C2: var_E8 = CVar(CLng(2)) 'Long
  loc_146B8C7: var_108 = "Remarks"
  loc_146B8D0: LateIdCallSt
  loc_146B8DB: var_94 = CVar(CLng(2)) 'Long
  loc_146B8E6: var_E8 = CVar(CInt(1)) 'Integer
  loc_146B8ED: LateIdCallSt
  loc_146B8F8: var_94 = CVar(CLng(2)) 'Long
  loc_146B8FD: var_E8 = &H61D
  loc_146B909: LateIdCallSt
  loc_146B911: var_94 = 0
  loc_146B91D: var_E8 = CVar(CLng(3)) 'Long
  loc_146B922: var_108 = "Qty"
  loc_146B92B: LateIdCallSt
  loc_146B936: var_94 = CVar(CLng(3)) 'Long
  loc_146B941: var_E8 = CVar(CInt(7)) 'Integer
  loc_146B948: LateIdCallSt
  loc_146B953: var_94 = CVar(CLng(3)) 'Long
  loc_146B95E: var_E8 = CVar(CInt(7)) 'Integer
  loc_146B965: LateIdCallSt
  loc_146B970: var_94 = CVar(CLng(3)) 'Long
  loc_146B975: var_E8 = &H4CE
  loc_146B981: LateIdCallSt
  loc_146B989: var_94 = 0
  loc_146B995: var_E8 = CVar(CLng(4)) 'Long
  loc_146B99A: var_108 = "Rate"
  loc_146B9A3: LateIdCallSt
  loc_146B9AE: var_94 = CVar(CLng(4)) 'Long
  loc_146B9B9: var_E8 = CVar(CInt(7)) 'Integer
  loc_146B9C0: LateIdCallSt
  loc_146B9CB: var_94 = CVar(CLng(4)) 'Long
  loc_146B9D6: var_E8 = CVar(CInt(7)) 'Integer
  loc_146B9DD: LateIdCallSt
  loc_146B9E8: var_94 = CVar(CLng(4)) 'Long
  loc_146B9ED: var_E8 = &H44C
  loc_146B9F9: LateIdCallSt
  loc_146BA01: var_94 = 0
  loc_146BA0D: var_E8 = CVar(CLng(6)) 'Long
  loc_146BA12: var_108 = "%"
  loc_146BA1B: LateIdCallSt
  loc_146BA26: var_94 = CVar(CLng(6)) 'Long
  loc_146BA31: var_E8 = CVar(CInt(7)) 'Integer
  loc_146BA38: LateIdCallSt
  loc_146BA43: var_94 = CVar(CLng(6)) 'Long
  loc_146BA4E: var_E8 = CVar(CInt(7)) 'Integer
  loc_146BA55: LateIdCallSt
  loc_146BA60: var_94 = CVar(CLng(6)) 'Long
  loc_146BA65: var_E8 = 0
  loc_146BA71: LateIdCallSt
  loc_146BA79: var_94 = 0
  loc_146BA85: var_E8 = CVar(CLng(7)) 'Long
  loc_146BA8A: var_108 = "Tax"
  loc_146BA93: LateIdCallSt
  loc_146BA9E: var_94 = CVar(CLng(7)) 'Long
  loc_146BAA9: var_E8 = CVar(CInt(7)) 'Integer
  loc_146BAB0: LateIdCallSt
  loc_146BABB: var_94 = CVar(CLng(7)) 'Long
  loc_146BAC6: var_E8 = CVar(CInt(7)) 'Integer
  loc_146BACD: LateIdCallSt
  loc_146BAD8: var_94 = CVar(CLng(7)) 'Long
  loc_146BADD: var_E8 = 0
  loc_146BAE9: LateIdCallSt
  loc_146BAF1: var_94 = 0
  loc_146BAFD: var_E8 = CVar(CLng(5)) 'Long
  loc_146BB02: var_108 = "Amount"
  loc_146BB0B: LateIdCallSt
  loc_146BB16: var_94 = CVar(CLng(5)) 'Long
  loc_146BB21: var_E8 = CVar(CInt(7)) 'Integer
  loc_146BB28: LateIdCallSt
  loc_146BB33: var_94 = CVar(CLng(5)) 'Long
  loc_146BB3E: var_E8 = CVar(CInt(7)) 'Integer
  loc_146BB45: LateIdCallSt
  loc_146BB50: var_94 = CVar(CLng(5)) 'Long
  loc_146BB55: var_E8 = &H46A
  loc_146BB61: LateIdCallSt
  loc_146BB69: var_94 = 0
  loc_146BB75: var_E8 = CVar(CLng(8)) 'Long
  loc_146BB7A: var_108 = "Total"
  loc_146BB83: LateIdCallSt
  loc_146BB8E: var_94 = CVar(CLng(8)) 'Long
  loc_146BB99: var_E8 = CVar(CInt(7)) 'Integer
  loc_146BBA0: LateIdCallSt
  loc_146BBAB: var_94 = CVar(CLng(8)) 'Long
  loc_146BBB6: var_E8 = CVar(CInt(7)) 'Integer
  loc_146BBBD: LateIdCallSt
  loc_146BBC8: var_94 = CVar(CLng(8)) 'Long
  loc_146BBCD: var_E8 = 0
  loc_146BBD9: LateIdCallSt
  loc_146BBE4: var_94 = CVar(CLng(9)) 'Long
  loc_146BBE9: var_E8 = 0
  loc_146BBF5: LateIdCallSt
  loc_146BC00: var_94 = CVar(CLng(&HA)) 'Long
  loc_146BC05: var_E8 = 0
  loc_146BC11: LateIdCallSt
  loc_146BC1C: var_94 = CVar(CLng(&HB)) 'Long
  loc_146BC21: var_E8 = 0
  loc_146BC2D: LateIdCallSt
  loc_146BC38: var_94 = CVar(CLng(&HC)) 'Long
  loc_146BC3D: var_E8 = 0
  loc_146BC49: LateIdCallSt
  loc_146BC54: var_94 = CVar(CLng(&HD)) 'Long
  loc_146BC59: var_E8 = 0
  loc_146BC65: LateIdCallSt
  loc_146BC70: var_94 = CVar(CLng(&HF)) 'Long
  loc_146BC75: var_E8 = 0
  loc_146BC81: LateIdCallSt
  loc_146BC8C: var_94 = CVar(CLng(&HE)) 'Long
  loc_146BC91: var_E8 = 0
  loc_146BC9D: LateIdCallSt
  loc_146BCA8: var_94 = CVar(CLng(&H10)) 'Long
  loc_146BCAD: var_E8 = 0
  loc_146BCB9: LateIdCallSt
  loc_146BCC4: var_94 = CVar(CLng(&H11)) 'Long
  loc_146BCC9: var_E8 = 0
  loc_146BCD5: LateIdCallSt
  loc_146BCE0: var_94 = CVar(CLng(&H12)) 'Long
  loc_146BCE5: var_E8 = 0
  loc_146BCF1: LateIdCallSt
  loc_146BCFC: var_94 = CVar(CLng(&H13)) 'Long
  loc_146BD01: var_E8 = 0
  loc_146BD0D: LateIdCallSt
  loc_146BD18: var_94 = CVar(CLng(&H14)) 'Long
  loc_146BD1D: var_E8 = 0
  loc_146BD29: LateIdCallSt
  loc_146BD33: Set var_C4 = Nothing 
  loc_146BD3B: Set var_11C = Me.FGCat
  loc_146BD52: global_100 = CStr(CLng(var_11C.BackColor))
  loc_146BD5F: var_94 = CVar(CLng(3)) 'Long
  loc_146BD64: var_E8 = &H7D0
  loc_146BD70: LateIdCallSt
  loc_146BD84: var_11C.Cols = 7
  loc_146BD8B: Set var_11C = Nothing 
  loc_146BDA2: Me.FGrid1.Cols = 8
  loc_146BDA7: var_94 = 0
  loc_146BDB0: var_E8 = 0
  loc_146BDB9: var_108 = "SNo"
  loc_146BDC2: LateIdCallSt
  loc_146BDCA: var_94 = 0
  loc_146BDD9: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BDE0: LateIdCallSt
  loc_146BDE8: var_94 = 0
  loc_146BDF7: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BDFE: LateIdCallSt
  loc_146BE06: var_94 = 0
  loc_146BE0F: var_E8 = &H190
  loc_146BE1B: LateIdCallSt
  loc_146BE23: var_94 = 0
  loc_146BE2C: var_E8 = 1
  loc_146BE35: var_108 = "Venue Name"
  loc_146BE3E: LateIdCallSt
  loc_146BE46: var_94 = 1
  loc_146BE55: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BE5C: LateIdCallSt
  loc_146BE64: var_94 = 1
  loc_146BE73: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BE7A: LateIdCallSt
  loc_146BE82: var_94 = 1
  loc_146BE8B: var_E8 = &HA8C
  loc_146BE97: LateIdCallSt
  loc_146BE9F: var_94 = 0
  loc_146BEA8: var_E8 = 2
  loc_146BEB1: var_108 = "From Date"
  loc_146BEBA: LateIdCallSt
  loc_146BEC2: var_94 = 2
  loc_146BED1: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BED8: LateIdCallSt
  loc_146BEE0: var_94 = 2
  loc_146BEEF: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BEF6: LateIdCallSt
  loc_146BEFE: var_94 = 2
  loc_146BF07: var_E8 = &H44C
  loc_146BF13: LateIdCallSt
  loc_146BF1B: var_94 = 0
  loc_146BF24: var_E8 = 3
  loc_146BF2D: var_108 = "Fr Time"
  loc_146BF36: LateIdCallSt
  loc_146BF3E: var_94 = 3
  loc_146BF4D: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BF54: LateIdCallSt
  loc_146BF5C: var_94 = 3
  loc_146BF6B: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BF72: LateIdCallSt
  loc_146BF7A: var_94 = 3
  loc_146BF83: var_E8 = &H384
  loc_146BF8F: LateIdCallSt
  loc_146BF97: var_94 = 0
  loc_146BFA0: var_E8 = 4
  loc_146BFA9: var_108 = "To Date"
  loc_146BFB2: LateIdCallSt
  loc_146BFBA: var_94 = 4
  loc_146BFC9: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BFD0: LateIdCallSt
  loc_146BFD8: var_94 = 4
  loc_146BFE7: var_E8 = CVar(CInt(1)) 'Integer
  loc_146BFEE: LateIdCallSt
  loc_146BFF6: var_94 = 4
  loc_146BFFF: var_E8 = &H44C
  loc_146C00B: LateIdCallSt
  loc_146C013: var_94 = 0
  loc_146C01C: var_E8 = 5
  loc_146C025: var_108 = "To Time"
  loc_146C02E: LateIdCallSt
  loc_146C036: var_94 = 5
  loc_146C045: var_E8 = CVar(CInt(1)) 'Integer
  loc_146C04C: LateIdCallSt
  loc_146C054: var_94 = 5
  loc_146C063: var_E8 = CVar(CInt(1)) 'Integer
  loc_146C06A: LateIdCallSt
  loc_146C072: var_94 = 5
  loc_146C07B: var_E8 = &H384
  loc_146C087: LateIdCallSt
  loc_146C08F: var_94 = 6
  loc_146C098: var_E8 = 0
  loc_146C0A4: LateIdCallSt
  loc_146C0AC: var_94 = 7
  loc_146C0B5: var_E8 = 0
  loc_146C0C1: LateIdCallSt
  loc_146C0CB: Set var_120 = Nothing 
  loc_146C0CF: Exit Sub
End Sub

Public Sub Proc_126_75_19F6E94
  'Data Table: 55BD00
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_55BD78 As Connection15
  Dim var_108 As Integer
  Dim var_110 As Integer
  Dim unk_55BD25 As Connection15
  Dim var_138 As Variant
  Dim var_13C As String
  Dim unk_55BD34 As Connection15
  Dim var_11C As Recordset15
  Dim var_B8 As Integer
  Dim var_168 As Variant
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_198 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_228 As Variant
  Dim var_124 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim var_B6 As Integer
  Dim var_178 As Variant
  Dim var_25C As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim var_290 As Variant
  Dim var_2D4 As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_120 As Recordset15
  Dim var_12C As Double
  Dim var_140 As Variant
  Dim var_2FC As Variant
  Dim var_304 As Variant
  Dim var_2C4 As Variant
  Dim var_348 As Variant
  Dim var_3C0 As Variant
  Dim var_54C As Variant
  Dim var_378 As Variant
  Dim var_398 As Variant
  Dim var_4C4 As Variant
  Dim var_4E4 As Variant
  Dim var_594 As Variant
  Dim var_10C As Recordset15
  Dim var_134 As Double
  Dim var_300 As Fields15
  Dim var_3F0 As Variant
  Dim var_518 As Variant
  Dim var_620 As Variant
  Dim var_118 As Recordset15
  Dim var_640 As Double
  loc_19F3D1C: unk_55BD78.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95070 & "FOM'", var_B0, -1
  loc_19F3D27: Set var_88 = var_B4
  loc_19F3D3E: var_108 = 1
  loc_19F3D43: var_110 = &HFF
  loc_19F3D48: var_110 = 0
  loc_19F3D4D: Close 1
  loc_19F3D56: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_19F3D6E: var_8C = "Select * from Enviro where LogSite_code='" & MemVar_1F95078
  loc_19F3D7E: unk_55BD25.Execute var_8C & "'", var_B0, -1
  loc_19F3D89: Set var_124 = var_B4
  loc_19F3DB7: Set var_B4 = Me.Txt
  loc_19F3DBD: Call 0.Method_Proc_126_75_19F6E940 (CInt(4), var_138, var_8C, "SELECT * FROM HallStock WHERE DocId='", var_B0, -1, var_140)
  loc_19F3DC5: var_B4 = var_138.Text
  loc_19F3DDE: unk_55BD34.Execute var_110 & var_8C & "' AND QTYIss>0", var_110, var_108
  loc_19F3DE9: Set var_10C = var_140
  loc_19F3E25: Call 0.Method_Proc_126_75_19F6E940 (CInt(7), var_138, var_8C, "Select HB.*, SG.Name AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='", var_B0)
  loc_19F3E2D: -1 = var_138.Tag
  loc_19F3E46: unk_55BD25.Execute var_140 & var_8C & "'", 0, Me.Txt
  loc_19F3E51: Set var_11C = var_140
  loc_19F3E87: Set var_B4 = Me.Txt
  loc_19F3E8D: Call 0.Method_Proc_126_75_19F6E940 (CInt(7), var_138, var_8C, "SELECT * FROM Hallsale1 WHERE BookDocId='")
  loc_19F3E95: var_B0 = var_138.Tag
  loc_19F3E9E: var_90 = -1 & var_8C
  loc_19F3EAE: unk_55BD34.Execute var_140 & var_8C & "'", var_140, 
  loc_19F3EB9: Set var_120 = var_140
  loc_19F3ED1: ' Referenced from: 19F5E6A
  loc_19F3EE0: If Not(var_11C.EOF) Then
  loc_19F3EF7:   If (var_11C.RecordCount <= 0) Then
  loc_19F3EFA:     Exit Sub
  loc_19F3EFB:   End If
  loc_19F3F01:   If (var_B6 = 0) Then
  loc_19F3F32:     var_D4 = Replace(CStr(Space(&H4F)), " ", "-", 1, -1, 0)
  loc_19F3F41:     var_B8 = (var_B8 + 1)
  loc_19F3F76:     var_158 = (Chr(&HF) + "UPTT No. :")
  loc_19F3F7D:     var_188 = (var_158 + Trim(MemVar_1F95148))
  loc_19F3F84:     var_1A8 = (var_188 + Chr(&H12))
  loc_19F3F8A:     Print 1, var_1A8
  loc_19F3FD1:     var_158 = (Chr(&HF) + "CST No.  :")
  loc_19F3FD8:     var_188 = (var_158 + Trim(MemVar_1F9514C))
  loc_19F3FDF:     var_1A8 = (var_188 + Chr(&H12))
  loc_19F3FE5:     Print 1, var_1A8
  loc_19F401B:     Print 1, Proc_6_98_11AC34C(MemVar_1F95130, "A")
  loc_19F4070:     var_158 = (Trim(MemVar_1F95134) + ", ")
  loc_19F4077:     var_188 = (var_158 + Trim(MemVar_1F95138))
  loc_19F4080:     var_198 = (var_188 + " ")
  loc_19F4087:     var_1E8 = (Chr(&H12) + Trim(MemVar_1F9513C))
  loc_19F4090:     var_208 = (var_1E8 + " ")
  loc_19F409A:     var_228 = (var_208 + CVar(MemVar_1F9515C))
  loc_19F40B3:     Print 1, Proc_6_98_11AC34C(CStr(var_228), "B", &H4E)
  loc_19F4110:     Print 1, Proc_6_98_11AC34C("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "D", &H7D)
  loc_19F4175:     Print 1, Proc_6_98_11AC34C(Proc_6_38_E69628(CVar(var_124.Fields.Item("Bill_Header")), &H4E), "D")
  loc_19F4193:     Print 1, var_D4
  loc_19F41E4:     var_178 = (Space(1) + CVar(Proc_6_45_EADFB8("To,", &H2F, &HC)))
  loc_19F41ED:     var_188 = (Trim(MemVar_1F95138) + "|")
  loc_19F41F4:     var_1A8 = (var_188 + Space(3))
  loc_19F41FB:     var_208 = (Trim(MemVar_1F9513C) + Space(&H1A))
  loc_19F4201:     Print 1, var_208
  loc_19F42B4:     Set var_140 = Me.Txt
  loc_19F42BA:     Call 0.Method_Proc_126_75_19F6E940 (CInt(1), var_25C)
  loc_19F42FA:     var_178 = (Space(4) + CVar(Proc_6_45_EADFB8("M/s.", 5)))
  loc_19F4304:     var_1A8 = (Trim(MemVar_1F95138) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_11C.Fields.Item("PartyName")), &H7D), &H27)))
  loc_19F430D:     var_1E8 = (Trim(MemVar_1F9513C) + "|")
  loc_19F4314:     var_228 = (Space(&H1A) + Space(3))
  loc_19F431E:     var_258 = (var_228 + CVar(Proc_6_45_EADFB8("Bill No:", &HA)))
  loc_19F4328:     var_280 = (var_258 + CVar(Proc_6_98_11AC34C(var_25C.Text, "B")))
  loc_19F432F:     var_2A0 = (var_280 + Space(&HB))
  loc_19F4335:     Print 1, var_2A0
  loc_19F43E7:     var_1A8 = (Space(4) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add1")), &HB)))), &H2C)))
  loc_19F43F0:     var_1E8 = (Trim(MemVar_1F9513C) + "|")
  loc_19F43FD:     Print 1, Space(&H1A) & Space(1)
  loc_19F4463:     var_178 = (Space(4) + CVar(Proc_6_45_EADFB8(" ", &H2C)))
  loc_19F446C:     var_188 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add1")), &HB)) + "|")
  loc_19F4473:     var_1A8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add1")), &HB))) + Left(var_D4, &H1E))
  loc_19F4479:     Print 1, Trim(MemVar_1F9513C)
  loc_19F450D:     var_1A8 = (Space(4) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add2")))))), &H2C)))
  loc_19F4516:     var_1E8 = (Trim(MemVar_1F9513C) + "|")
  loc_19F451D:     var_228 = (Space(&H1A) + Space(3))
  loc_19F4524:     var_258 = (Space(&H1A) & Space(1) + Space(&H19))
  loc_19F452A:     Print 1, var_258
  loc_19F459B:     var_168 = "-"
  loc_19F45A0:     var_198 = (Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City"))))) + "|")
  loc_19F45AE:     var_90 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add2")))))), &H2C))), &H2C)
  loc_19F45D4:     var_1E8 = (Space(4) + CVar(var_90))
  loc_19F45DD:     var_208 = (Space(&H1A) + "|")
  loc_19F45E4:     var_248 = (Space(3) + Space(3))
  loc_19F45EB:     var_270 = (Space(&H19) + Space(&H19))
  loc_19F45F1:     Print 1, CVar(Proc_6_98_11AC34C(var_25C.Text, "B"))
  loc_19F4674:     var_168 = "dd-MMM-yyyy"
  loc_19F46B6:     var_178 = (Space(4) + CVar(Proc_6_45_EADFB8(" ", &H2C)))
  loc_19F46BF:     var_188 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) + "|")
  loc_19F46C6:     var_1A8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City"))))) + Space(3))
  loc_19F46D0:     var_208 = (CVar("Date:") + CVar(Proc_6_45_EADFB8("Date:", 8)))
  loc_19F46DA:     var_280 = (Space(3) + CVar(Proc_6_45_EADFB8(CStr(Format(Date, "|")), &HB, 1)))
  loc_19F46E1:     var_2A0 = (var_280 + Space(2))
  loc_19F46E7:     Print 1, var_2A0
  loc_19F4724:     Print 1, var_D4
  loc_19F47E2:     var_178 = (Space(1) + CVar(Proc_6_45_EADFB8("S.", &HA)))
  loc_19F47E9:     var_198 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F47F0:     var_1E8 = (Space(3) + Space(1))
  loc_19F47FA:     var_228 = (CVar(Proc_6_45_EADFB8("Date:", 8)) + CVar(Proc_6_45_EADFB8("Item Detail", &H1D)))
  loc_19F4804:     var_258 = (Date + CVar(Proc_6_52_EAE084("QTY.", &HA)))
  loc_19F480B:     var_280 = (Format(Date, "|") + Space(1))
  loc_19F4815:     var_2A0 = (var_280 + CVar(Proc_6_52_EAE084("Rate", 9)))
  loc_19F481C:     var_2D4 = (var_2A0 + Space(1))
  loc_19F4826:     var_2F8 = (var_2D4 + CVar(Proc_6_52_EAE084("AMOUNT ", &HE)))
  loc_19F482C:     Print 1, var_2F8
  loc_19F4927:     var_158 = CVar(Proc_6_45_EADFB8("No.", &HA)) 'String
  loc_19F492A:     var_178 = (Space(1) + var_158)
  loc_19F4931:     var_198 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F4938:     var_1E8 = (Space(3) + Space(1))
  loc_19F4942:     var_228 = (CVar(Proc_6_45_EADFB8("Date:", 8)) + CVar(Proc_6_45_EADFB8("   ", &H1D)))
  loc_19F494C:     var_258 = (Date + CVar(Proc_6_52_EAE084("  ", &HA)))
  loc_19F4953:     var_280 = (Format(Date, "|") + Space(1))
  loc_19F495A:     var_290 = CVar(Proc_6_52_EAE084("   ", &HA)) 'String
  loc_19F495D:     var_2A0 = (var_280 + var_290)
  loc_19F4964:     var_2D4 = (var_2A0 + Space(1))
  loc_19F496E:     var_2F8 = (var_2D4 + CVar(Proc_6_52_EAE084("Rs.    P.", &HE)))
  loc_19F4974:     Print 1, var_2F8
  loc_19F49BF:     Print 1, var_D4
  loc_19F49C7:     var_B6 = &H12
  loc_19F49CA:   End If
  loc_19F49DE:   If (var_120.RecordCount > 0) Then
  loc_19F4A07:     Proc_6_39_E7D3A0(var_158, CVar(var_120.Fields.Item("TotalPerCover")), var_B6)
  loc_19F4A18:     var_12C = Val(CStr(var_158))
  loc_19F4AD8:     var_59C = Proc_6_45_EADFB8(CStr("Pax " & var_120.Fields.Item("NoofPax").Value & "  @" & var_120.Fields.Item("RatePerPax").Value), &H1D)
  loc_19F4AF2:     var_300 = var_120.Fields.Item("NoofPax")
  loc_19F4AFA:     var_280 = CVar(var_300) 'Address
  loc_19F4B01:     Proc_6_39_E7D3A0(var_290, var_280)
  loc_19F4B42:     Proc_6_39_E7D3A0(var_2D4, CVar(var_120.Fields.Item("NoofPax")))
  loc_19F4B90:     var_328 = (var_290 = 0) 'Variant
  loc_19F4BB1:     var_5A4 = Proc_6_52_EAE084(CStr(IIf(var_328, CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_2D4, "0")), &HA, 1)))), &HA, 1)
  loc_19F4BE7:     Proc_6_39_E7D3A0(var_3D0, CVar(var_120.Fields.Item("RatePerPax")))
  loc_19F4C28:     Proc_6_39_E7D3A0(var_42C, CVar(var_120.Fields.Item("RatePerPax")))
  loc_19F4C75:     var_470 = (var_3D0 = 0) 'Variant
  loc_19F4C96:     var_5AC = Proc_6_52_EAE084(CStr(IIf(var_470, CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_42C, "0.00")), &HA, 1)))), &HA, 1)
  loc_19F4D0A:     var_56C = IIf((var_12C = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_12C, "0.00")), &HA, 1)))
  loc_19F4D2A:     var_158 = CVar(Proc_6_45_EADFB8(CStr(var_108) & ".", &HA, var_12C)) 'String
  loc_19F4D2D:     var_178 = (Space(1) + var_158)
  loc_19F4D34:     var_198 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F4D3E:     var_270 = (Space(3) + CVar(var_59C))
  loc_19F4D48:     var_378 = (Space(1) + CVar(var_5A4))
  loc_19F4D4F:     var_398 = (var_378 + Space(1))
  loc_19F4D59:     var_4C4 = (var_398 + CVar(var_5AC))
  loc_19F4D60:     var_4E4 = (var_4C4 + Space(1))
  loc_19F4D6A:     var_594 = (var_4E4 + CVar(Proc_6_52_EAE084(CStr(var_56C), &HF, 1)))
  loc_19F4D70:     Print 1, var_594
  loc_19F4E1F:     var_B6 = (var_B6 + 2)
  loc_19F4E22:     ' Referenced from: 19F52ED
  loc_19F4E22:   End If
  loc_19F4E31:   If Not(var_10C.EOF) Then
  loc_19F4E5A:     Proc_6_39_E7D3A0(var_158, CVar(var_10C.Fields.Item("Amount")), var_B6)
  loc_19F4E6B:     var_134 = Val(CStr(var_158))
  loc_19F4E82:     var_12C = (var_12C + var_134)
  loc_19F4E8B:     var_108 = (var_108 + 1)
  loc_19F4F06:     var_25C = var_10C.Fields.Item("RestCode")
  loc_19F4F19:     var_218 = 0
  loc_19F4F54:     var_13C = CStr("SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='" & var_25C.Value & "'")
  loc_19F4F5E:     unk_55BD25.Execute var_13C, Space(1), -1
  loc_19F4F66:     var_2FC = var_2FC.Fields
  loc_19F4F6E:     var_218 = var_300.Item(var_300)
  loc_19F4F76:     var_304 = var_304.Value
  loc_19F4FB6:     Proc_6_39_E7D3A0(var_2D4, CVar(var_10C.Fields.Item("QtyIss")), var_134)
  loc_19F4FF7:     Proc_6_39_E7D3A0(var_328, CVar(var_10C.Fields.Item("QtyIss")))
  loc_19F504F:     var_388 = IIf((var_2D4 = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_328, "0")), &HA, 1)))
  loc_19F509C:     Proc_6_39_E7D3A0(var_42C, CVar(var_10C.Fields.Item("Rate")))
  loc_19F50DD:     Proc_6_39_E7D3A0(var_470, CVar(var_10C.Fields.Item("Rate")))
  loc_19F5134:     var_4D4 = IIf((var_42C = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_470, "0.00")), &HA, 1)))
  loc_19F51BF:     var_600 = IIf((var_134 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_134, "0.00")), &HA, 1)))
  loc_19F51E2:     var_178 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(var_108) & ".", &HA, var_108, var_12C)))
  loc_19F51E9:     var_198 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F51F3:     var_2A0 = (Space(3) + CVar(Proc_6_45_EADFB8(CStr(var_280), &H1D, var_280)))
  loc_19F51FD:     var_3C0 = (var_2A0 + CVar(Proc_6_52_EAE084(CStr(var_388), &HA, 1)))
  loc_19F5204:     var_3F0 = (CVar(var_120.Fields.Item("RatePerPax")) + Space(1))
  loc_19F520E:     var_518 = (var_3F0 + CVar(Proc_6_52_EAE084(CStr(var_4D4), &HA, 1)))
  loc_19F5215:     var_54C = ("0.00" + Space(1))
  loc_19F521F:     var_620 = (CVar(Proc_6_52_EAE084(vbNullString, &HA)) + CVar(Proc_6_52_EAE084(CStr(var_600), &HF, 1)))
  loc_19F5225:     Print 1, var_620
  loc_19F52E2:     var_B6 = (var_B6 + 1)
  loc_19F52E8:     var_10C.MoveNext
  loc_19F52ED:     GoTo loc_19F4E22
  loc_19F52F0:   End If
  loc_19F52F8:   var_10C.Requery -1
  loc_19F5321:   If ((var_B6 >= &H30) And (var_11C.AbsolutePosition < var_11C.RecordCount)) Then
  loc_19F5329:     Print 1, " "
  loc_19F534D:     var_188 = CVar((Val(CStr(var_B8)) + CDbl(1))) 'Double
  loc_19F5361:     var_158 = (" " + Space(&H37))
  loc_19F536A:     var_178 = (CVar(Proc_6_45_EADFB8(CStr(var_108) & ".", &HA, var_108, var_12C)) + "Continued Page No ")
  loc_19F5377:     Print 1, CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) & Str(Space(1))
  loc_19F5395:     var_B6 = (var_B6 + 1)
  loc_19F53AA:     Print 1, Chr(&HC)
  loc_19F53B5:     var_B6 = 0
  loc_19F53B8:   End If
  loc_19F53BE:   var_B6 = (var_B6 + 5)
  loc_19F53C7:   If (var_B6 = 0) Then
  loc_19F53D0:     var_B8 = (var_B8 + 1)
  loc_19F53D9:     var_B8 = (var_B8 + 1)
  loc_19F540E:     var_158 = (Chr(&HF) + "UPTT No. :")
  loc_19F5415:     var_188 = (CVar(Proc_6_45_EADFB8(CStr(var_108) & ".", &HA, var_108, var_12C)) + Trim(MemVar_1F95148))
  loc_19F541C:     var_1A8 = (Space(1) + Chr(&H12))
  loc_19F5422:     Print 1, CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) & Str(Space(1))
  loc_19F5469:     var_158 = (Chr(&HF) + "CST No.  :")
  loc_19F5470:     var_188 = (CVar(Proc_6_45_EADFB8(CStr(var_108) & ".", &HA, var_108, var_12C)) + Trim(MemVar_1F9514C))
  loc_19F5477:     var_1A8 = (Space(1) + Chr(&H12))
  loc_19F547D:     Print 1, CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) & Str(Space(1))
  loc_19F54B3:     Print 1, Proc_6_98_11AC34C(MemVar_1F95130, "A", &H4E, var_B8, var_B8, var_B6)
  loc_19F5508:     var_158 = (Trim(MemVar_1F95134) + ", ")
  loc_19F550F:     var_188 = (CVar(Proc_6_45_EADFB8(CStr(var_108) & ".", &HA, var_108, var_12C)) + Trim(MemVar_1F95138))
  loc_19F5518:     var_198 = (Space(1) + " ")
  loc_19F551F:     var_1E8 = (Chr(&H12) + Trim(MemVar_1F9513C))
  loc_19F5528:     var_208 = ("SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value + " ")
  loc_19F5532:     var_228 = ("SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='" + CVar(MemVar_1F9515C))
  loc_19F554B:     Print 1, Proc_6_98_11AC34C(CStr(var_25C.Value), "B", &H4E, var_B6)
  loc_19F55A8:     Print 1, Proc_6_98_11AC34C("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "D", &H7D, var_B6)
  loc_19F560D:     Print 1, Proc_6_98_11AC34C(Proc_6_38_E69628(CVar(var_124.Fields.Item("Bill_Header")), var_B6), "D", &H7D)
  loc_19F562B:     Print 1, var_D4
  loc_19F567C:     var_178 = (Space(1) + CVar(Proc_6_45_EADFB8("To,", &H2F, &HC)))
  loc_19F5685:     var_188 = (Trim(MemVar_1F95138) + "|")
  loc_19F568C:     var_1A8 = (Space(1) + Space(3))
  loc_19F5693:     var_208 = (Trim(MemVar_1F9513C) + Space(&H1A))
  loc_19F5699:     Print 1, "SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='"
  loc_19F574C:     Set var_140 = Me.Txt
  loc_19F5752:     Call 0.Method_Proc_126_75_19F6E940 (CInt(1), var_25C)
  loc_19F5792:     var_178 = (Space(4) + CVar(Proc_6_45_EADFB8("M/s.", 5)))
  loc_19F579C:     var_1A8 = (Trim(MemVar_1F95138) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_11C.Fields.Item("PartyName")), 1), &H27)))
  loc_19F57A5:     var_1E8 = (Trim(MemVar_1F9513C) + "|")
  loc_19F57AC:     var_228 = (Space(&H1A) + Space(3))
  loc_19F57B6:     var_258 = (var_25C.Value + CVar(Proc_6_45_EADFB8("Bill No:", &HA)))
  loc_19F57C0:     var_280 = ("SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='" & var_25C.Value & "'" + CVar(Proc_6_98_11AC34C(var_25C.Text, "B")))
  loc_19F57C7:     var_2A0 = (var_280 + Space(&HB))
  loc_19F57CD:     Print 1, var_2A0
  loc_19F587F:     var_1A8 = (Space(4) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add1")), &HB)))), &H2C)))
  loc_19F5888:     var_1E8 = (Trim(MemVar_1F9513C) + "|")
  loc_19F5895:     Print 1, Space(&H1A) & Space(1)
  loc_19F58FB:     var_178 = (Space(4) + CVar(Proc_6_45_EADFB8(" ", &H2C)))
  loc_19F5904:     var_188 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add1")), &HB)) + "|")
  loc_19F590B:     var_1A8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add1")), &HB))) + Left(var_D4, &H1E))
  loc_19F5911:     Print 1, Trim(MemVar_1F9513C)
  loc_19F59A5:     var_1A8 = (Space(4) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add2")))))), &H2C)))
  loc_19F59AE:     var_1E8 = (Trim(MemVar_1F9513C) + "|")
  loc_19F59B5:     var_228 = (Space(&H1A) + Space(3))
  loc_19F59BC:     var_258 = (Space(&H1A) & Space(1) + Space(&H19))
  loc_19F59C2:     Print 1, "SELECT Name FROM ItemMast WHERE Code='" & var_10C.Fields.Item("Item").Value & "' And RestCode='" & var_25C.Value & "'"
  loc_19F5A33:     var_168 = "-"
  loc_19F5A38:     var_198 = (Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City"))))) + "|")
  loc_19F5A46:     var_90 = Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("Add2")))))), &H2C))), &H2C)
  loc_19F5A6C:     var_1E8 = (Space(4) + CVar(var_90))
  loc_19F5A75:     var_208 = (Space(&H1A) + "|")
  loc_19F5A7C:     var_248 = (Space(3) + Space(3))
  loc_19F5A83:     var_270 = (Space(&H19) + Space(&H19))
  loc_19F5A89:     Print 1, CVar(Proc_6_98_11AC34C(var_25C.Text, "B"))
  loc_19F5B0C:     var_168 = "dd-MMM-yyyy"
  loc_19F5B4E:     var_178 = (Space(4) + CVar(Proc_6_45_EADFB8(" ", &H2C)))
  loc_19F5B57:     var_188 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) + "|")
  loc_19F5B5E:     var_1A8 = (Trim(CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City"))))) + Space(3))
  loc_19F5B68:     var_208 = (CVar("Date:") + CVar(Proc_6_45_EADFB8("Date:", 8)))
  loc_19F5B72:     var_280 = (Space(3) + CVar(Proc_6_45_EADFB8(CStr(Format(Date, "|")), &HB, 1)))
  loc_19F5B79:     var_2A0 = (var_280 + Space(2))
  loc_19F5B7F:     Print 1, var_2A0
  loc_19F5BBC:     Print 1, var_D4
  loc_19F5C7A:     var_178 = (Space(1) + CVar(Proc_6_45_EADFB8("S.", &HA)))
  loc_19F5C81:     var_198 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) + Space(1))
  loc_19F5C88:     var_1E8 = (Space(3) + Space(1))
  loc_19F5C92:     var_228 = (CVar(Proc_6_45_EADFB8("Date:", 8)) + CVar(Proc_6_45_EADFB8("Item Detail", &H1D)))
  loc_19F5C9C:     var_258 = (Date + CVar(Proc_6_52_EAE084("QTY.", &HA)))
  loc_19F5CA3:     var_280 = (Format(Date, "|") + Space(1))
  loc_19F5CAD:     var_2A0 = (var_280 + CVar(Proc_6_52_EAE084("Rate", 9)))
  loc_19F5CB4:     var_2D4 = (var_2A0 + Space(1))
  loc_19F5CBE:     var_2F8 = (var_2D4 + CVar(Proc_6_52_EAE084("AMOUNT ", &HE)))
  loc_19F5CC4:     Print 1, CVar(var_10C.Fields.Item("QtyIss"))
  loc_19F5D35:     var_188 = Space(1)
  loc_19F5DC2:     var_178 = (Space(1) + CVar(Proc_6_45_EADFB8("No.", &HA)))
  loc_19F5DC9:     var_198 = (CVar(Proc_6_38_E69628(CVar(var_11C.Fields.Item("City")))) + var_188)
  loc_19F5DD0:     var_1E8 = (Space(3) + Space(1))
  loc_19F5DDA:     var_228 = (CVar(Proc_6_45_EADFB8("Date:", 8)) + CVar(Proc_6_45_EADFB8("   ", &H1D)))
  loc_19F5DE4:     var_258 = (Date + CVar(Proc_6_52_EAE084("  ", &HA)))
  loc_19F5DEB:     var_280 = (Format(Date, "|") + Space(1))
  loc_19F5DF2:     var_290 = CVar(Proc_6_52_EAE084("   ", &HA)) 'String
  loc_19F5DF5:     var_2A0 = (var_280 + var_290)
  loc_19F5DFC:     var_2D4 = (var_2A0 + Space(1))
  loc_19F5E06:     var_2F8 = (var_2D4 + CVar(Proc_6_52_EAE084("Rs.    P.", &HE)))
  loc_19F5E0C:     Print 1, CVar(var_10C.Fields.Item("QtyIss"))
  loc_19F5E57:     Print 1, var_D4
  loc_19F5E5F:     var_B6 = &H12
  loc_19F5E62:   End If
  loc_19F5E65:   var_11C.MoveNext
  loc_19F5E6A:   GoTo loc_19F3ED1
  loc_19F5E6D:   ' Referenced from: 19F5E8A
  loc_19F5E6D: End If
  loc_19F5E73: If (var_B6 <= &H32) Then
  loc_19F5E7B:   Print 1, vbNullString
  loc_19F5E87:   var_B6 = (var_B6 + 1)
  loc_19F5E8A:   GoTo loc_19F5E6D
  loc_19F5E8D: End If
  loc_19F5E92: Print 1, var_D4
  loc_19F5E9E: var_B6 = (var_B6 + 1)
  loc_19F5EA4: var_120.MoveFirst
  loc_19F5EB6: var_168 = "SELECT SH.SunCode AS Code, SH.DispName AS SName, SH.Amount+S.Amount AS Amount FROM SunTranH AS SH LEFT JOIN SunTran AS S ON SH.DocID=S.DocID AND  SH.SunCode=S.SunCode WHERE  SH.DocId='"
  loc_19F5EFC: unk_55BD34.Execute CStr("|" & var_120.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_19F5F07: Set var_118 = var_140
  loc_19F5F35: If (var_118.RecordCount > 0) Then
  loc_19F5F3B:   var_12C = CDbl(0)
  loc_19F5F3E:   ' Referenced from: 19F6A7D
  loc_19F5F4D:   If Not(var_118.EOF) Then
  loc_19F5F76:     var_158 = Trim(CVar(var_118.Fields.Item("Code")))
  loc_19F5F81:     var_178 = Ucase(var_158)
  loc_19F5F89:     var_638 = var_178 'Variant
  loc_19F5FA2:     If (var_638 = "KTOT") Then
  loc_19F5FBC:       var_138 = var_118.Fields.Item("Amount")
  loc_19F5FCB:       Proc_6_39_E7D3A0(var_158, CVar(var_138), var_12C, var_140, var_B6)
  loc_19F5FD3:       var_8C = CStr(var_158)
  loc_19F5FDC:       var_640 = Val(var_8C)
  loc_19F5FE6:       var_12C = (var_12C + var_640)
  loc_19F6011:       Set var_B4 = Me.Txt
  loc_19F6017:       Call 0.Method_Proc_126_75_19F6E940 (CInt(7), var_138, var_8C, var_12C, var_640)
  loc_19F602A:       var_168 = 0
  loc_19F6047:       var_90 = "Select  SG.Name AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='" & var_8C
  loc_19F6057:       unk_55BD25.Execute var_90 & "'", var_158, -1
  loc_19F605F:       var_140 = var_140.Fields
  loc_19F6067:       var_168 = var_25C.Item(var_25C)
  loc_19F606F:       var_2FC = var_2FC.Value
  loc_19F60F4:       Proc_6_39_E7D3A0(Format(Date, "|"), CVar(var_118.Fields.Item("Amount")))
  loc_19F6135:       Proc_6_39_E7D3A0(var_290, CVar(var_118.Fields.Item("Amount")))
  loc_19F618C:       var_328 = IIf((Format(Date, "|") = 0), CVar(Proc_6_52_EAE084("0.00", &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_290, "0.00")), &HA, 1)))
  loc_19F61AF:       var_1A8 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr("Company: " & var_178), &H2F, var_178)))
  loc_19F61B6:       var_208 = CVar(Proc_6_45_EADFB8(CStr(var_118.Fields.Item("SName").Value), &HF, var_138.Tag)) 'String
  loc_19F61B9:       var_228 = (Space(1) + var_208)
  loc_19F61C3:       var_348 = (Date + CVar(Proc_6_52_EAE084(CStr(var_328), &HF, 1)))
  loc_19F61C9:       Print 1, Format(var_328, "0")
  loc_19F622F:     Else
  loc_19F623A:       If Not (var_638 = "KTT") Then
  loc_19F6248:         If Not (var_638 = "KSCH") Then
  loc_19F6256:           If Not (var_638 = "K0001") Then
  loc_19F6264:             If Not (var_638 = "KST") Then
  loc_19F6272:               If (var_638 = "KSTX") Then
  loc_19F6275:               End If
  loc_19F6275:             End If
  loc_19F6275:           End If
  loc_19F6275:         End If
  loc_19F629B:         Proc_6_39_E7D3A0(var_158, CVar(var_118.Fields.Item("Amount")))
  loc_19F62AC:         var_640 = Val(CStr(var_158))
  loc_19F62B6:         var_12C = (var_12C + var_640)
  loc_19F6344:         var_1E8 = CVar(var_118.Fields.Item("Amount")) 'Address
  loc_19F634B:         Proc_6_39_E7D3A0(var_208, var_1E8)
  loc_19F6385:         var_248 = CVar(var_118.Fields.Item("Amount")) 'Address
  loc_19F638C:         Proc_6_39_E7D3A0(Format(Date, "|"), var_248)
  loc_19F63E3:         var_2D4 = IIf((var_208 = 0), CVar(Proc_6_52_EAE084("0.00", &HA)), CVar(Proc_6_52_EAE084(CStr(Format(Format(Date, "|"), "0.00")), &HA, 1)))
  loc_19F6400:         var_158 = CVar(Proc_6_45_EADFB8(" ", &HB, var_12C)) 'String
  loc_19F6406:         var_178 = (var_158 + Space(&H25))
  loc_19F6410:         var_1A8 = (var_178 + CVar(Proc_6_45_EADFB8(CStr(var_118.Fields.Item("SName").Value), &HF, var_640)))
  loc_19F641A:         var_2F8 = (Space(1) + CVar(Proc_6_52_EAE084(CStr(var_2D4), &HF, 1)))
  loc_19F6420:         Print 1, CVar(Proc_6_52_EAE084(CStr(Format((var_208 = 0), "0.00")), &HA, 1))
  loc_19F6470:       Else
  loc_19F647B:         If (var_638 = "DIS") Then
  loc_19F64A4:           Proc_6_39_E7D3A0(var_158, CVar(var_118.Fields.Item("Amount")))
  loc_19F64B5:           var_640 = Val(CStr(var_158))
  loc_19F64BF:           var_12C = (var_12C - var_640)
  loc_19F64F5:           Proc_6_39_E7D3A0(var_158, CVar(var_118.Fields.Item("Amount")), var_12C)
  loc_19F6518:           If (CDbl(Val(CStr(var_158))) > CDbl(0)) Then
  loc_19F6574:             Proc_6_39_E7D3A0(var_1E8, CVar(var_118.Fields.Item("Amount")))
  loc_19F65AE:             var_228 = CVar(var_118.Fields.Item("Amount")) 'Address
  loc_19F65B5:             Proc_6_39_E7D3A0(var_248, var_228)
  loc_19F65C9:             var_258 = "0.00"
  loc_19F660C:             var_2C4 = IIf((var_1E8 = 0), CVar(Proc_6_52_EAE084("0.00", &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_248, var_258)), &HA, 1)))
  loc_19F6629:             var_158 = CVar(Proc_6_45_EADFB8(" ", &HB, var_640)) 'String
  loc_19F662F:             var_178 = (var_158 + Space(&H25))
  loc_19F6639:             var_198 = (var_178 + CVar(Proc_6_45_EADFB8(var_D0, &HF)))
  loc_19F6643:             var_2E8 = (CVar(Proc_6_45_EADFB8(CStr(var_118.Fields.Item("SName").Value), &HF, var_640)) + CVar(Proc_6_52_EAE084(CStr(var_2C4), &HF, 1)))
  loc_19F6649:             Print 1, CVar(Proc_6_52_EAE084(CStr(CVar(Proc_6_52_EAE084(CStr(var_2C4), &HF, 1))), &HF, 1))
  loc_19F668E:           End If
  loc_19F6691:         Else
  loc_19F669C:           If (var_638 = "KROFF") Then
  loc_19F66C5:             Proc_6_39_E7D3A0(var_158, CVar(var_118.Fields.Item("Amount")))
  loc_19F66D6:             var_640 = Val(CStr(var_158))
  loc_19F66E0:             var_12C = (var_12C + var_640)
  loc_19F676E:             var_1E8 = CVar(var_118.Fields.Item("Amount")) 'Address
  loc_19F6775:             Proc_6_39_E7D3A0(var_208, var_1E8)
  loc_19F67B6:             Proc_6_39_E7D3A0(var_258, CVar(var_118.Fields.Item("Amount")))
  loc_19F680D:             var_2D4 = IIf((var_208 = 0), CVar(Proc_6_52_EAE084("0.00", &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_258, "0.00")), &HA, 1)))
  loc_19F6830:             var_178 = (CVar(Proc_6_45_EADFB8(" ", &HB, var_12C)) + Space(&H25))
  loc_19F683A:             var_1A8 = (var_178 + CVar(Proc_6_45_EADFB8(CStr(var_118.Fields.Item("SName").Value), &HF, var_640)))
  loc_19F6844:             var_2F8 = (CVar(var_118.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084(CStr(var_2D4), &HF, 1)))
  loc_19F684A:             Print 1, CVar(Proc_6_52_EAE084(CStr(Format((var_208 = 0), "0.00")), &HA, 1))
  loc_19F689A:           Else
  loc_19F68A5:             If (var_638 = "KNET") Then
  loc_19F68AB:               var_12C = var_12C
  loc_19F6918:               Proc_6_39_E7D3A0(var_1E8, var_12C)
  loc_19F693E:               Proc_6_39_E7D3A0(var_228, var_12C)
  loc_19F6995:               var_2A0 = IIf((var_1E8 = 0), CVar(Proc_6_52_EAE084("0.00", &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_228, "0.00")), &HA, 1)))
  loc_19F69B8:               var_178 = (CVar(Proc_6_45_EADFB8(" ", &HB, var_12C)) + Space(&H25))
  loc_19F69C2:               var_1A8 = (var_178 + CVar(Proc_6_45_EADFB8(CStr(var_118.Fields.Item("SName").Value), &HF)))
  loc_19F69CC:               var_2D4 = (CVar(var_118.Fields.Item("Amount")) + CVar(Proc_6_52_EAE084(CStr(var_2A0), &HF, 1)))
  loc_19F69D2:               Print 1, var_2D4
  loc_19F6A55:               Print 1, Proc_6_45_EADFB8(" ", &H3F) & Proc_6_52_EAE084("===============", &HF)
  loc_19F6A6C:             End If
  loc_19F6A6C:           End If
  loc_19F6A6C:         End If
  loc_19F6A6C:       End If
  loc_19F6A6C:     End If
  loc_19F6A72:     var_B6 = (var_B6 + 1)
  loc_19F6A78:     var_118.MoveNext
  loc_19F6A7D:     GoTo loc_19F5F3E
  loc_19F6A80:   End If
  loc_19F6A80: End If
  loc_19F6AD0: var_158 = CVar(Proc_6_45_EADFB8("Charge: " & Proc_6_43_1003B24(Abs(var_12C), vbNullString, " "), &H48, var_118.Fields.Item("SName").Tag)) 'String
  loc_19F6AD3: var_178 = (Space(1) + var_158)
  loc_19F6AD9: Print 1, var_178
  loc_19F6AF9: var_B6 = 0
  loc_19F6B07: Print 1, var_D4
  loc_19F6B13: var_B6 = (var_B6 + 1)
  loc_19F6B4F: var_178 = (Chr(&HF) + CVar(Proc_6_52_EAE084("Regardless of charge instructions I agree to be held", &H7B, var_B6, CDbl(0))))
  loc_19F6B56: var_198 = (var_178 + Chr(&H12))
  loc_19F6B5C: Print 1, CVar(Proc_6_45_EADFB8(CStr(var_118.Fields.Item("SName").Value), &HF))
  loc_19F6BB0: var_178 = (Chr(&HF) + CVar(Proc_6_52_EAE084("personally liable for payment of the total amount of this bill.", 134, var_B6)))
  loc_19F6BB7: var_198 = (var_178 + Chr(&H12))
  loc_19F6BBD: Print 1, CVar(Proc_6_45_EADFB8(CStr(var_118.Fields.Item("SName").Value), &HF))
  loc_19F6BDC: Print 1, vbNullString
  loc_19F6BE7: Print 1, vbNullString
  loc_19F6C00: var_B0 = Space((&H4B - (Len(MemVar_1F95130) + 5)))
  loc_19F6C35: var_178 = ("For: " + Chr(&HE))
  loc_19F6C3C: var_198 = (var_178 + Chr(&HF))
  loc_19F6C46: var_1A8 = (CVar(Proc_6_45_EADFB8(CStr(var_118.Fields.Item("SName").Value), &HF)) + CVar(MemVar_1F95130))
  loc_19F6C54: var_90 = Proc_6_52_EAE084(CStr(CVar(var_118.Fields.Item("Amount"))), CInt((Len(MemVar_1F95130) + 5)))
  loc_19F6C6D: var_208 = (Chr(&HF) + CVar(Proc_6_52_EAE084("personally liable for payment of the total amount of this bill.", 134, var_B6)))
  loc_19F6C74: var_248 = (var_208 + Chr(&H12))
  loc_19F6C7A: Print 1, "0.00"
  loc_19F6CA3: Print 1, vbNullString
  loc_19F6CAE: Print 1, vbNullString
  loc_19F6CB9: Print 1, vbNullString
  loc_19F6CC4: Print 1, vbNullString
  loc_19F6CF1: Print 1, Proc_6_98_11AC34C("*THANKS FOR YOUR VISIT*", "A", &H4E)
  loc_19F6D16: If (var_124.RecordCount > 0) Then
  loc_19F6D60:   var_178 = (Chr(&HF) + var_124.Fields.Item("Bill_Footer").Value)
  loc_19F6D67:   var_198 = (var_178 + Chr(&H12))
  loc_19F6D6D:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_118.Fields.Item("SName").Value), &HF))
  loc_19F6D87: End If
  loc_19F6D99: Print 1, Chr(&HC)
  loc_19F6DA4: Close 1
  loc_19F6DAD: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_19F6DE9: Print 1, "TYPE C:\reptmp\TextFile.TXT>" & Me.Recordset15.Fields.Item("Printer").Value
  loc_19F6DFF: Close 1
  loc_19F6E09: If (MemVar_1F953BC = "Y") Then
  loc_19F6E25:   var_C8 = CVar(Shell("C:\reptmp\TextFile.PIF", 0)) 'Variant
  loc_19F6E2F: Else
  loc_19F6E48:   var_C8 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_19F6E4F: End If
  loc_19F6E54: Set var_124 = Nothing
  loc_19F6E5C: Set var_120 = Nothing
  loc_19F6E64: Set var_118 = Nothing
  loc_19F6E6C: Set var_10C = Nothing
  loc_19F6E74: Set var_11C = Nothing
  loc_19F6E77: Exit Sub
  loc_19F6E7E: If (var_110 = &HFF) Then
  loc_19F6E87:   unk_55BD25.RollbackTrans
  loc_19F6E8C: End If
  loc_19F6E8C: Proc_6_60_E63754(1)
  loc_19F6E91: Exit Sub
End Sub

Public Sub Proc_126_76_E38B20
  'Data Table: 55BD00
  loc_E38B00: Set var_88 = Me.TopCtrl1
  loc_E38B06: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_E38B1B: If ( = "Browse") Then
  loc_E38B1E:   Exit Sub
  loc_E38B1F: End If
  loc_E38B1F: Exit Sub
End Sub

Public Sub Proc_126_77_14046FC(arg_C) '14046FC
  'Data Table: 55BD00
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
  loc_1403CDC: If (arg_C = 0) Then
  loc_1403CF2:   var_AC = CLng(Me.FGrid.Col)
  loc_1403D02:   If (var_AC = CLng(1)) Then
  loc_1403D25:     var_B2 = Me.EOF
  loc_1403D53:     Set var_98 = Me.TxtGrid
  loc_1403D59:     Call 0.Method_Proc_126_77_14046FC0 (arg_C, var_B8, var_BC)
  loc_1403D61:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_1403D79:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_1403D8F:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403D97:       var_EC = CVar(CLng(1)) 'Long
  loc_1403D9C:       var_10C = vbNullString
  loc_1403DA6:       Set var_B8 = Me.FGrid
  loc_1403DAC:       LateIdCallSt
  loc_1403DD1:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403DD9:       var_EC = CVar(CLng(9)) 'Long
  loc_1403DDE:       var_10C = vbNullString
  loc_1403DE8:       Set var_B8 = Me.FGrid
  loc_1403DEE:       LateIdCallSt
  loc_1403E13:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403E1B:       var_EC = CVar(CLng(4)) 'Long
  loc_1403E20:       var_10C = vbNullString
  loc_1403E2A:       Set var_B8 = Me.FGrid
  loc_1403E30:       LateIdCallSt
  loc_1403E55:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403E5D:       var_EC = CVar(CLng(&HA)) 'Long
  loc_1403E62:       var_10C = vbNullString
  loc_1403E6C:       Set var_B8 = Me.FGrid
  loc_1403E72:       LateIdCallSt
  loc_1403E87:     Else
  loc_1403E8A:       Call Proc_126_87_FC50D4(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_1403E95:       If (var_B2 = 0) Then
  loc_1403E9D:         Proc_126_77_14046FC = 0
  loc_1403EA3:       End If
  loc_1403EBC:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403EC4:       var_EC = CVar(CLng(9)) 'Long
  loc_1403EDE:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1403EFC:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403F04:       var_150 = CVar(CLng(9)) 'Long
  loc_1403F1E:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_1403F89:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1403FA0:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1403FBC:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1403FC4:         var_FC = CVar(CLng(1)) 'Long
  loc_1403FF7:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1403FFF:         Set var_164 = Me.FGrid
  loc_1404005:         LateIdCallSt
  loc_1404034:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140403C:         var_FC = CVar(CLng(9)) 'Long
  loc_140406F:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1404077:         Set var_164 = Me.FGrid
  loc_140407D:         LateIdCallSt
  loc_14040CB:         var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14040D3:         var_10C = CVar(CLng(4)) 'Long
  loc_14040E7:         var_12C = "0.00"
  loc_1404100:         var_18C = CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), var_12C))) 'String
  loc_1404108:         Set var_164 = Me.FGrid
  loc_140410E:         LateIdCallSt
  loc_1404130:         var_CC = CVar(CLng(var_92)) 'Long
  loc_1404142:         var_A8 = CVar(CStr(var_92)) 'String
  loc_140414A:         Set var_98 = Me.FGrid
  loc_1404150:         LateIdCallSt
  loc_1404190:         var_98 = Me.Fields
  loc_14041A7:         Proc_6_39_E7D3A0(var_12C, CVar(var_98.Item("TaxStru")), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), var_98, CVar(var_98.Item("TaxStru")), CVar(CLng(0)))
  loc_14041B0:         var_174 = CVar(CStr(var_12C)) 'String
  loc_14041B8:         Set var_164 = Me.FGrid
  loc_14041BE:         LateIdCallSt
  loc_14041ED:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14041F5:         var_FC = CVar(CLng(&HA)) 'Long
  loc_1404228:         var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1404230:         Set var_164 = Me.FGrid
  loc_1404236:         LateIdCallSt
  loc_1404265:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140426D:         var_FC = CVar(CLng(&HD)) 'Long
  loc_14042A0:         var_140 = CVar(CStr(Me.Fields.Item("DiscApp").Value)) 'String
  loc_14042A8:         Set var_164 = Me.FGrid
  loc_14042AE:         LateIdCallSt
  loc_14042FC:         var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1404304:         var_10C = CVar(CLng(&H11)) 'Long
  loc_140433F:         LateIdCallSt
  loc_1404399:         var_12C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H12)), CVar(CLng(var_92)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("RateEdit")), "0.00"))), 1, 1)) 'String
  loc_14043A1:         Set var_130 = Me.FGrid
  loc_14043A7:         LateIdCallSt
  loc_14043C1:         Set var_130 = Me.FGrid
  loc_14043C7:         var_140 = var_130.Row
  loc_14043F7:         var_B8 = Me.Fields.Item("SChrgApp")
  loc_1404406:         Proc_6_39_E7D3A0(var_12C, CVar(var_B8), CVar(CLng(&H13)), CVar(CLng(var_140)), var_130, var_12C)
  loc_140440F:         var_174 = CVar(CStr(var_12C)) 'String
  loc_1404417:         Set var_164 = Me.FGrid
  loc_140441D:         LateIdCallSt
  loc_1404439:       End If
  loc_1404439:     End If
  loc_1404439:     Call Proc_126_84_1153514(var_164, var_174, var_10C, var_EC)
  loc_1404441:   Else
  loc_1404448:     If (var_AC = CLng(2)) Then
  loc_1404477:       Set var_98 = Me.TxtGrid
  loc_140447D:       Call 0.Method_Proc_126_77_14046FC0 (0, var_B8, var_BC, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_1404485:       var_164 = var_B8.Text
  loc_140448D:       var_12C = CVar(var_BC) 'String
  loc_1404495:       Set var_164 = Me.FGrid
  loc_140449B:       LateIdCallSt
  loc_14044B8:     Else
  loc_14044BF:       If (var_AC = CLng(3)) Then
  loc_14044CC:         Set var_98 = Me.TxtGrid
  loc_14044D2:         Call 0.Method_Proc_126_77_14046FC0 (arg_C, var_B8, var_164, var_12C)
  loc_14044EA:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_14044F1:           var_BC = CStr(0)
  loc_14044FE:           Set var_98 = Me.TxtGrid
  loc_1404504:           Call 0.Method_Proc_126_77_14046FC0 (arg_C, var_B8, var_BC)
  loc_140450C:           var_B8.Text = var_140
  loc_140451B:         End If
  loc_1404528:         Set var_98 = Me.TxtGrid
  loc_140452E:         Call 0.Method_Proc_126_77_14046FC0 (arg_C, var_B8, var_BC)
  loc_1404536:         var_FC = var_B8.Text
  loc_140454E:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14045A0:         LateIdCallSt
  loc_14045C4:         Call Proc_126_84_1153514(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_14045CE:         Call Proc_126_89_164E294(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_14045D6:       Else
  loc_14045DD:         If (var_AC = CLng(4)) Then
  loc_14045EA:           Set var_98 = Me.TxtGrid
  loc_14045F0:           Call 0.Method_Proc_126_77_14046FC0 (arg_C, var_B8)
  loc_1404608:           If Not(IsNumeric(CVar(var_B8))) Then
  loc_140461C:             Set var_98 = Me.TxtGrid
  loc_1404622:             Call 0.Method_Proc_126_77_14046FC0 (arg_C, var_B8, CStr(0))
  loc_140462A:             var_B8.Text = var_DC
  loc_1404639:           End If
  loc_1404646:           Set var_98 = Me.TxtGrid
  loc_140464C:           Call 0.Method_Proc_126_77_14046FC0 (arg_C, var_B8)
  loc_140466C:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14046BE:           LateIdCallSt
  loc_14046E2:           Call Proc_126_84_1153514(Me.FGrid, CVar(CStr(Format(CVar(var_B8.Text), "0.00"))), 1, 1)
  loc_14046EC:           Call Proc_126_89_164E294(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_14046F1:         End If
  loc_14046F1:       End If
  loc_14046F1:     End If
  loc_14046F1:   End If
  loc_14046F1: End If
  loc_14046F6: Proc_126_77_14046FC = &HFF
End Sub

Public Sub Proc_126_78_18380AC
  'Data Table: 55BD00
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_55BD34 As Connection15
  Dim var_12C As Recordset15
  Dim var_130 As Variant
  Dim var_134 As String
  Dim var_138 As String
  Dim unk_55BD25 As Connection15
  Dim var_94 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_8C As Recordset15
  Dim var_124 As Variant
  Dim var_15C As Double
  Dim var_164 As Double
  Dim var_148 As Variant
  Dim var_16C As Double
  Dim var_150 As TextBox
  Dim var_88 As Recordset15
  Dim var_8E As Integer
  Dim var_114 As Variant
  Dim var_180 As Variant
  Dim var_1A4 As TextBox
  Dim Proc_126_78_18380AC2 As Variant
  Dim var_1D0 As TextBox
  loc_1835C30: On Error Goto loc_18380A5
  loc_1835C4A: If (Me.RecordCount > 0) Then
  loc_1835CA3:   unk_55BD34.Execute CStr("Select S.* From HallSale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_1835CCB:   Set var_12C = var_128 
  loc_1835D08:   Set var_128 = Me.Txt
  loc_1835D0E:   Call 0.Method_Proc_126_78_18380AC0 (CInt(4), var_130)
  loc_1835D16:   var_130.Text = CStr(var_12C.Fields.Item("DocID").Value)
  loc_1835D46:   var_B0 = var_12C.Fields.Item("vType")
  loc_1835D57:   var_104 = CStr(var_B0.Value)
  loc_1835D65:   Set var_128 = Me.Txt
  loc_1835D6B:   Call 0.Method_Proc_126_78_18380AC0 (CInt(0), var_130)
  loc_1835D73:   var_130.Tag = var_104
  loc_1835DA7:   Set var_9C = Me.Txt
  loc_1835DAD:   Call 0.Method_Proc_126_78_18380AC0 (CInt(0), var_B0, var_104, "Select Description,NCAT From Voucher_Type Where V_Type='")
  loc_1835DB5:   var_C0 = var_B0.Tag
  loc_1835DBE:   var_134 = -1 & var_104
  loc_1835DCE:   unk_55BD25.Execute var_134 & "'", var_128, var_128
  loc_1835DD9:   Set var_94 = var_128
  loc_1835E05:   If (var_94.RecordCount > 0) Then
  loc_1835E36:     global_120 = Proc_6_38_E69628(CVar(var_94.Fields.Item("NCat")))
  loc_1835E79:     Set var_128 = Me.Txt
  loc_1835E7F:     Call 0.Method_Proc_126_78_18380AC0 (CInt(0), var_130)
  loc_1835E87:     var_130.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Description")))
  loc_1835E9B:   End If
  loc_1835ED4:   Set var_128 = Me.Txt
  loc_1835EDA:   Call 0.Method_Proc_126_78_18380AC0 (CInt(1), var_130)
  loc_1835EE2:   var_130.Text = CStr(var_12C.Fields.Item("VNo").Value)
  loc_1835F4A:   Set var_128 = Me.Txt
  loc_1835F50:   Call 0.Method_Proc_126_78_18380AC0 (CInt(2), var_130, CStr(Format(CVar(var_12C.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_1835F58:   var_130.Text = 1
  loc_1835FAA:   Me.LblVPrefix.Caption = CStr(var_12C.Fields.Item("vPrefix").Value)
  loc_1835FF7:   Set var_128 = Me.Txt
  loc_1835FFD:   Call 0.Method_Proc_126_78_18380AC0 (CInt(3), var_130)
  loc_1836005:   var_130.Text = CStr(var_12C.Fields.Item("Party").Value)
  loc_1836035:   var_B0 = var_12C.Fields.Item("Party")
  loc_1836046:   var_104 = CStr(var_B0.Value)
  loc_1836054:   Set var_128 = Me.Txt
  loc_183605A:   Call 0.Method_Proc_126_78_18380AC0 (CInt(3), var_130)
  loc_1836062:   var_130.Tag = var_104
  loc_1836096:   Set var_9C = Me.Txt
  loc_183609C:   Call 0.Method_Proc_126_78_18380AC0 (CInt(3), var_B0, var_104, "Select Name From SubGroup Where SubCode='")
  loc_18360A4:   var_C0 = var_B0.Tag
  loc_18360AD:   var_134 = -1 & var_104
  loc_18360BD:   unk_55BD25.Execute var_134 & "'", var_128, 1
  loc_18360C8:   Set var_8C = var_128
  loc_18360F4:   If (var_8C.RecordCount > 0) Then
  loc_183612D:     Set var_128 = Me.Txt
  loc_1836133:     Call 0.Method_Proc_126_78_18380AC0 (CInt(3), var_130)
  loc_183613B:     var_130.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")))
  loc_183614F:   End If
  loc_1836177:   var_104 = Proc_6_38_E69628(CVar(var_12C.Fields.Item("RestCode")))
  loc_1836185:   Set var_128 = Me.Txt
  loc_183618B:   Call 0.Method_Proc_126_78_18380AC0 (CInt(5), var_130)
  loc_1836193:   var_130.Tag = var_104
  loc_18361C1:   var_B0 = var_12C.Fields.Item("RestCode")
  loc_18361E3:   If CBool(var_B0.Value <> vbNullString) Then
  loc_1836204:     Set var_9C = Me.Txt
  loc_183620A:     Call 0.Method_Proc_126_78_18380AC0 (CInt(5), var_B0, var_104, "Select Name From Depart Where Code='")
  loc_1836212:     var_C0 = var_B0.Tag
  loc_183621B:     var_134 = -1 & var_104
  loc_1836222:     var_138 = var_134 & "'"
  loc_183622B:     unk_55BD25.Execute var_138, var_128, 
  loc_1836236:     Set var_94 = var_128
  loc_1836262:     If (var_94.RecordCount > 0) Then
  loc_183629B:       Set var_128 = Me.Txt
  loc_18362A1:       Call 0.Method_Proc_126_78_18380AC0 (CInt(5), var_130)
  loc_18362A9:       var_130.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Name")))
  loc_18362BD:     End If
  loc_18362BD:   End If
  loc_18362F3:   Set var_128 = Me.Txt
  loc_18362F9:   Call 0.Method_Proc_126_78_18380AC0 (CInt(7), var_130)
  loc_1836301:   var_130.Tag = Proc_6_38_E69628(CVar(var_12C.Fields.Item("BOOKDOCID")))
  loc_1836366:   Set var_128 = Me.Txt
  loc_183636C:   Call 0.Method_Proc_126_78_18380AC0 (CInt(7), var_130)
  loc_1836374:   var_130.Text = Proc_6_38_E69628(Trim(Right(CVar(var_12C.Fields.Item("BOOKDOCID")), 8)))
  loc_18363E0:   Set var_128 = Me.Txt
  loc_18363E6:   Call 0.Method_Proc_126_78_18380AC0 (CInt(&H15), var_130, CStr(Format(CVar(var_12C.Fields.Item("ToBookDate")), "DD/MMM/YYYY")))
  loc_18363EE:   var_130.Text = 1
  loc_1836459:   Set var_128 = Me.txtM
  loc_183645F:   Call 0.Method_Proc_126_78_18380AC0 (1, var_130, CVar(CStr(Format(CVar(var_12C.Fields.Item("FrBookTime")), "hh:mm"))))
  loc_1836467:   var_130.defaultText = 1
  loc_18364D2:   Set var_128 = Me.Txt
  loc_18364D8:   Call 0.Method_Proc_126_78_18380AC0 (CInt(6), var_130, CStr(Format(CVar(var_12C.Fields.Item("FrBookDate")), "DD/MMM/YYYY")), 1)
  loc_18364E0:   var_130.Text = 1
  loc_1836525:   var_E0 = "hh:mm"
  loc_183653E:   var_124 = CVar(CStr(Format(CVar(var_12C.Fields.Item("ToBookTime")), var_E0))) 'String
  loc_183654B:   Set var_128 = Me.txtM
  loc_1836551:   Call 0.Method_Proc_126_78_18380AC0 (0, var_130, var_124, 1)
  loc_1836559:   var_130.defaultText = 1
  loc_18365A8:   Set var_128 = Me.Txt
  loc_18365AE:   Call 0.Method_Proc_126_78_18380AC0 (CInt(&H13), var_130)
  loc_18365B6:   var_130.Text = Proc_6_38_E69628(CVar(var_12C.Fields.Item("Remarks")), 1)
  loc_18365F0:   Proc_6_39_E7D3A0(var_E0, CVar(var_12C.Fields.Item("NoofPax")))
  loc_1836607:   Set var_128 = Me.Txt
  loc_183660D:   Call 0.Method_Proc_126_78_18380AC0 (CInt(&H11), var_130)
  loc_1836615:   var_130.Text = CStr(var_E0)
  loc_1836653:   Proc_6_39_E7D3A0(var_E0, CVar(var_12C.Fields.Item("RatePerPax")))
  loc_183666A:   Set var_128 = Me.Txt
  loc_1836670:   Call 0.Method_Proc_126_78_18380AC0 (CInt(&H12), var_130)
  loc_1836678:   var_130.Text = CStr(var_E0)
  loc_18366BB:   var_E0 = "0.00"
  loc_18366E2:   Set var_128 = Me.Txt
  loc_18366E8:   Call 0.Method_Proc_126_78_18380AC0 (CInt(8), var_130, CStr(Format(CVar(var_12C.Fields.Item("Advance")), var_E0)))
  loc_18366F0:   var_130.Text = 1
  loc_1836730:   Proc_6_39_E7D3A0(var_E0, CVar(var_12C.Fields.Item("RectNo")))
  loc_1836747:   Set var_128 = Me.Txt
  loc_183674D:   Call 0.Method_Proc_126_78_18380AC0 (CInt(9), var_130, CStr(var_E0))
  loc_1836755:   var_130.Text = 1
  loc_18367BF:   Set var_128 = Me.Txt
  loc_18367C5:   Call 0.Method_Proc_126_78_18380AC0 (CInt(&HA), var_130, CStr(Format(CVar(var_12C.Fields.Item("RectDate")), "DD/MM/YY")))
  loc_18367CD:   var_130.Text = 1
  loc_183681D:   Set var_128 = Me.Txt
  loc_1836823:   Call 0.Method_Proc_126_78_18380AC0 (CInt(&HC), var_130)
  loc_183682B:   var_130.Text = Proc_6_38_E69628(CVar(var_12C.Fields.Item("CrCardHoldER")), 1)
  loc_1836856:   var_B0 = var_12C.Fields.Item("CrCardNo")
  loc_1836875:   Set var_128 = Me.Txt
  loc_183687B:   Call 0.Method_Proc_126_78_18380AC0 (CInt(&HB), var_130)
  loc_1836899:   Set var_12C = Nothing 
  loc_18368A9:   Set var_9C = Me.TxtGt
  loc_18368AF:   Call 0.Method_Proc_126_78_18380AC8 (var_13A, var_8E)
  loc_18368BA:   For var_13E = 1 To var_13A: 2 = var_13E 'Integer
  loc_18368CD:     Set var_9C = Me.LblCap
  loc_18368D3:     Call 0.Method_Proc_126_78_18380AC0 (var_8E, var_B0)
  loc_18368F2:     If (var_B0.Tag = "SNET") Then
  loc_1836902:       Set var_9C = Me.TxtGt
  loc_1836908:       Call 0.Method_Proc_126_78_18380AC0 (var_8E, var_B0)
  loc_183691D:       var_15C = Val(var_B0.Text)
  loc_183692E:       Set var_128 = Me.Txt
  loc_1836934:       Call 0.Method_Proc_126_78_18380AC0 (CInt(&HF), var_130, var_134)
  loc_1836949:       var_164 = Val(var_134)
  loc_183695A:       Set var_144 = Me.Txt
  loc_1836960:       Call 0.Method_Proc_126_78_18380AC0 (CInt(8), var_148, var_138)
  loc_1836998:       var_C0 = CVar((Proc_6_38_E69628(CVar(var_B0)) - (var_148.Text + Val(var_138)))) 'Double
  loc_18369B6:       Set var_14C = Me.Txt
  loc_18369BC:       Call 0.Method_Proc_126_78_18380AC0 (CInt(&H10), var_150, CStr(Format(CVar(var_B0), "0.00")), 1)
  loc_18369C4:       var_150.Text = 1
  loc_18369F0:     End If
  loc_18369F3:   Next var_13E 'Integer
  loc_1836A06:   Set var_9C = Me.Txt
  loc_1836A0C:   Call 0.Method_Proc_126_78_18380AC0 (CInt(2), var_B0)
  loc_1836A22:   Call Proc_126_88_1A4F494(CDate(var_B0.Text))
  loc_1836A87:   unk_55BD34.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_124, -1
  loc_1836A92:   Set var_88 = var_128
  loc_1836AC0:   If (var_88.RecordCount > 0) Then
  loc_1836AC3:     ' Referenced from: 1836F5C
  loc_1836AD2:     If Not(var_88.EOF) Then
  loc_1836B35:       Set var_144 = Me.LblCap
  loc_1836B3B:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1836B43:       var_148.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_1836BC1:       Set var_144 = Me.TxtPer
  loc_1836BC7:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1836BCF:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1836C4D:       Set var_144 = Me.LblCap
  loc_1836C53:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1836C5B:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1836CD9:       Set var_144 = Me.LblAt
  loc_1836CDF:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1836CE7:       var_148.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_1836D65:       Set var_144 = Me.TxtGt
  loc_1836D6B:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1836D73:       var_148.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_1836DF1:       Set var_144 = Me.TxtPer
  loc_1836DF7:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1836DFF:       var_148.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_1836E5B:       var_124 = var_88.Fields.Item("SNo").Value
  loc_1836E6F:       var_E0 = "0.00"
  loc_1836E96:       Set var_144 = Me.TxtGt
  loc_1836E9C:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_124), var_148, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E0)))
  loc_1836EA4:       var_148.Text = 1
  loc_1836EEA:       Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_1836F0B:       var_128 = var_88.Fields
  loc_1836F28:       Set var_144 = Me.LblDummy
  loc_1836F2E:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_128.Item("SNo").Value), var_148, CStr(var_E0))
  loc_1836F36:       var_148.Caption = 1
  loc_1836F57:       var_88.MoveNext
  loc_1836F5C:       GoTo loc_1836AC3
  loc_1836F5F:     End If
  loc_1836F5F:   End If
  loc_1836FB5:   unk_55BD34.Execute CStr("Select S.* From SunTranH S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_124, -1
  loc_1836FC0:   Set var_88 = var_128
  loc_1836FEE:   If (var_88.RecordCount > 0) Then
  loc_1836FF1:     ' Referenced from: 183748A
  loc_1837000:     If Not(var_88.EOF) Then
  loc_1837046:       var_128 = var_88.Fields
  loc_1837063:       Set var_144 = Me.LableCap
  loc_1837069:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_128.Item("SNo").Value), var_148, CStr(var_88.Fields.Item("SunCode").Value))
  loc_1837071:       var_148.Tag = var_128
  loc_18370EF:       Set var_144 = Me.TextPer
  loc_18370F5:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_18370FD:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_183717B:       Set var_144 = Me.LableCap
  loc_1837181:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1837189:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1837207:       Set var_144 = Me.LableAt
  loc_183720D:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_1837215:       var_148.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_1837293:       Set var_144 = Me.TextGt
  loc_1837299:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_18372A1:       var_148.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_183731F:       Set var_144 = Me.TextPer
  loc_1837325:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_183732D:       var_148.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_1837389:       var_124 = var_88.Fields.Item("SNo").Value
  loc_183739D:       var_E0 = "0.00"
  loc_18373C4:       Set var_144 = Me.TextGt
  loc_18373CA:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_124), var_148, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E0)))
  loc_18373D2:       var_148.Text = 1
  loc_1837418:       Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_1837439:       var_128 = var_88.Fields
  loc_1837456:       Set var_144 = Me.LableDummy
  loc_183745C:       Call 0.Method_Proc_126_78_18380AC0 (CInt(var_128.Item("SNo").Value), var_148, CStr(var_E0))
  loc_1837464:       var_148.Caption = 1
  loc_1837485:       var_88.MoveNext
  loc_183748A:       GoTo loc_1836FF1
  loc_183748D:     End If
  loc_183748D:   End If
  loc_183749C:   Me.FGrid.Redraw = False
  loc_18374B7:   Me.FGrid.Rows = 1
  loc_18374C1:   var_8E = 1
  loc_18374D1:   var_D0 = "Select S.*,I.Name as ItemName From HallStock S Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.REstCODE Where S.DocId='"
  loc_1837510:   var_104 = CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "'")
  loc_183751A:   unk_55BD34.Execute var_104, var_124, -1
  loc_1837525:   Set var_88 = var_128
  loc_1837553:   If (var_88.RecordCount > 0) Then
  loc_1837556:     ' Referenced from: 18379F5
  loc_1837565:     If Not(var_88.EOF) Then
  loc_1837568:       var_AC = vbNullString
  loc_1837572:       Set var_9C = Me.FGrid
  loc_1837587:       Set var_170 = Me.FGrid
  loc_183758E:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_1837596:       var_114 = CVar(CLng(0)) 'Long
  loc_18375C6:       var_E0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18375CD:       LateIdCallSt
  loc_18375E7:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_18375EF:       var_114 = CVar(CLng(9)) 'Long
  loc_183761F:       var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1837626:       LateIdCallSt
  loc_1837675:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_170, var_E0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_183767C:       LateIdCallSt
  loc_18376AE:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18376B6:       var_180 = CVar(CLng(3)) 'Long
  loc_18376E3:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_18376EA:       LateIdCallSt
  loc_1837720:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_1837728:       var_180 = CVar(CLng(4)) 'Long
  loc_1837755:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_183775C:       LateIdCallSt
  loc_1837792:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_183779A:       var_180 = CVar(CLng(5)) 'Long
  loc_18377C7:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_18377CE:       LateIdCallSt
  loc_1837804:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_183780C:       var_180 = CVar(CLng(7)) 'Long
  loc_1837839:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1837840:       LateIdCallSt
  loc_1837876:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_183787E:       var_180 = CVar(CLng(6)) 'Long
  loc_18378AB:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_18378B2:       LateIdCallSt
  loc_18378E8:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_1837924:       LateIdCallSt
  loc_1837973:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(var_8E)), var_170, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_183797A:       LateIdCallSt
  loc_18379C5:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_170, var_E0, CVar(CLng(8)))) 'String
  loc_18379CC:       LateIdCallSt
  loc_18379E0:       Set var_170 = Nothing 
  loc_18379EA:       var_8E = (var_8E + 1)
  loc_18379F0:       var_88.MoveNext
  loc_18379F5:       GoTo loc_1837556
  loc_18379F8:     End If
  loc_1837A0B:     Me.FGrid.FixedRows = 1
  loc_1837A13:   End If
  loc_1837A21:   Me.FGrid.Redraw = True
  loc_1837A2F:   If (var_8E = 1) Then
  loc_1837A45:     Me.FGrid.Rows = 1
  loc_1837A51:     Set var_128 = Me.FGrid
  loc_1837A6B:     var_C0 = CVar(CStr(Proc_6_127_F25B10(var_128, CInt(0), var_8E, var_170, var_E0))) 'String
  loc_1837A73:     Set var_B0 = Me.FGrid
  loc_1837AA0:     Me.FGrid.FixedRows = 1
  loc_1837AA8:   End If
  loc_1837AC6:   Set var_9C = Me.Txt
  loc_1837ACC:   Call 0.Method_Proc_126_78_18380AC0 (CInt(7), var_B0, var_104, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_C0, -1, var_128)
  loc_1837AD4:   FGrid.DispID_10000 = var_B0.Tag
  loc_1837ADD:   var_134 = var_C0 & var_104
  loc_1837AE4:   var_138 = var_134 & "'"
  loc_1837AED:   unk_55BD25.Execute var_138, var_F0, var_170
  loc_1837AF8:   Set var_88 = var_128
  loc_1837B1F:   Me.FGrid1.Redraw = False
  loc_1837B3A:   Me.FGrid1.Rows = 1
  loc_1837B42:   var_AC = vbNullString
  loc_1837B4C:   Set var_9C = Me.FGrid1
  loc_1837B70:   Me.FGrid1.FixedRows = 1
  loc_1837B78:   ' Referenced from: 1837F4C
  loc_1837B7E:   var_13A = var_88.EOF
  loc_1837B87:   If Not(var_13A) Then
  loc_1837BA3:     var_AC = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_1837BB2:     Me.FGrid1.Row = 1
  loc_1837BC5:     Set var_1A4 = Me.FGrid1
  loc_1837BDB:     var_180 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1837C02:     var_AC = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_1837C25:     var_104 = CStr(Me.FGrid1.TextMatrix))
  loc_1837C33:     var_124 = CVar(CStr((Val(var_104) + CDbl(1)))) 'String
  loc_1837C3A:     LateIdCallSt
  loc_1837C7D:     var_AC = "VenueName"
  loc_1837CA2:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_AC)), 1, CVar(CLng(Me.FGrid1.Row)), var_1A4, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 0, var_AC)) 'String
  loc_1837CA9:     LateIdCallSt
  loc_1837D0A:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100, 0)) 'String
  loc_1837D11:     LateIdCallSt
  loc_1837D72:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100)) 'String
  loc_1837D79:     LateIdCallSt
  loc_1837DDA:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100)) 'String
  loc_1837DE1:     LateIdCallSt
  loc_1837E42:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100)) 'String
  loc_1837E49:     LateIdCallSt
  loc_1837E99:     var_B0 = var_88.Fields.Item("VenuCode")
  loc_1837EAA:     var_100 = CVar(Proc_6_38_E69628(CVar(var_B0), 6, CVar(CLng(Me.FGrid1.Row)), var_1A4, var_100)) 'String
  loc_1837EB1:     LateIdCallSt
  loc_1837ECD:     Set var_128 = Me.FGrid1
  loc_1837EF8:     Set var_9C = Me.Txt
  loc_1837EFE:     Call 0.Method_Proc_126_78_18380AC0 (CInt(1), var_B0, var_104, 7, CVar(CLng(var_128.Row)), var_1A4)
  loc_1837F06:     var_100 = var_B0.Text
  loc_1837F0E:     var_E0 = CVar(var_104) 'String
  loc_1837F15:     LateIdCallSt
  loc_1837F2D:     var_AC = vbNullString
  loc_1837F36:     Proc_126_78_18380AC2 = var_1A4.Name
  loc_1837F40:     Set var_1A4 = Nothing 
  loc_1837F47:     var_88.MoveNext
  loc_1837F4C:     GoTo loc_1837B78
  loc_1837F4F:   End If
  loc_1837F56:   Set var_9C = Me.TxtGt
  loc_1837F5C:   Call 0.Method_Proc_126_78_18380AC8 (var_13A, Proc_126_78_18380AC2, var_AC, var_1A4, var_E0)
  loc_1837F6E:   Set var_B0 = Me.TxtGt
  loc_1837F74:   Call 0.Method_Proc_126_78_18380AC0 (var_13A, var_128, var_104, var_180)
  loc_1837F7C:   FGrid1.DispID_10000 = var_128.Text
  loc_1837F89:   var_15C = Val(var_104)
  loc_1837F93:   Set var_130 = Me.TextGt
  loc_1837F99:   Call 0.Method_Proc_126_78_18380AC8 (var_1C6, var_15C, var_AC)
  loc_1837FAB:   Set var_144 = Me.TextGt
  loc_1837FB1:   Call 0.Method_Proc_126_78_18380AC0 (var_1C6, var_148, var_134)
  loc_1837FB9:   var_124 = var_148.Text
  loc_1837FC6:   var_164 = Val(var_134)
  loc_1837FD7:   Set var_14C = Me.Txt
  loc_1837FDD:   Call 0.Method_Proc_126_78_18380AC0 (CInt(8), var_150, var_138)
  loc_1837FF2:   var_16C = Val(var_138)
  loc_1838015:   var_C0 = CVar(((var_15C + var_150.Text) - var_16C)) 'Double
  loc_1838033:   Set var_1CC = Me.Txt
  loc_1838039:   Call 0.Method_Proc_126_78_18380AC0 (CInt(&H14), var_1D0, CStr(Format(var_128.Row, "0.00")), 1)
  loc_1838041:   var_1D0.Text = 1
  loc_183807F:   Me.FGrid1.Redraw = True
  loc_183808A: Else
  loc_183808A:   Call Proc_126_80_101B554(var_16C)
  loc_183808F: End If
  loc_183808F: Call Proc_126_82_F26E50(1)
  loc_1838099: Set var_88 = Nothing
  loc_18380A1: Set var_94 = Nothing
  loc_18380A4: Exit Sub
  loc_18380A5: ' Referenced from: 1835C30
  loc_18380A5: Proc_6_60_E63754()
  loc_18380AA: Exit Sub
End Sub

Public Sub Proc_126_79_112F298
  'Data Table: 55BD00
  Dim var_AC As Variant
  Dim var_D0 As TextBox
  Dim unk_55BD25 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_108 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D4 As String
  loc_112EF45: Set var_9C = Me.TopCtrl1
  loc_112EF4B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(&HFF)
  loc_112EF60: If ( = "Add") Then
  loc_112EF90:   Set var_9C = Me.Txt
  loc_112EF96:   Call 0.Method_Proc_126_79_112F2980 (CInt(4), var_D0, var_D4, "Select Count(*) From HallSale1 Where DocID='", var_BC, -1)
  loc_112EFB7:   unk_55BD25.Execute var_E4 & var_D4 & "'", 0, var_F8
  loc_112EFC7:    = var_E4.Item()
  loc_112EFCF:    = var_F8.Value
  loc_112EFFC:   If (var_D0.Text.Fields > 0) Then
  loc_112F005:     Call 0.Method_arg_50 (var_D4)
  loc_112F026:     MsgBox("Duplicate Bill No.", &H40, CVar(var_D4), var_118, var_128)
  loc_112F03C:     Call Proc_126_85_110770C(MemVar_1F95044)
  loc_112F04F:     Set var_9C = Me.Txt
  loc_112F055:     Call 0.Method_Proc_126_79_112F2980 (CInt(4), var_D0)
  loc_112F05D:     var_D0.Text = var_D4
  loc_112F071:     Proc_126_79_112F298 = 0
  loc_112F077:   End If
  loc_112F077: End If
  loc_112F09C: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_112F0A6:   var_AC = CVar(CLng(var_88)) 'Long
  loc_112F0AE:   var_108 = CVar(CLng(1)) 'Long
  loc_112F0CE:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_112F0EA:   If CBool(var_118 <> vbNullString) Then
  loc_112F0F1:     var_AC = CVar(CLng(var_88)) 'Long
  loc_112F0F9:     var_108 = CVar(CLng(3)) 'Long
  loc_112F129:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_112F151:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_112F177:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_112F183:       Set var_9C = Me.FGrid
  loc_112F1A7:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_112F1B4:       Proc_126_79_112F298 = 0
  loc_112F1BA:     End If
  loc_112F1BE:     var_AC = CVar(CLng(var_88)) 'Long
  loc_112F1C6:     var_108 = CVar(CLng(4)) 'Long
  loc_112F1F6:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_112F21E:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_112F244:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_112F250:       Set var_9C = Me.FGrid
  loc_112F274:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_112F281:       Proc_126_79_112F298 = 0
  loc_112F287:     End If
  loc_112F287:   End If
  loc_112F28A: Next var_12C 'Integer
  loc_112F28F: Proc_126_79_112F298 = 
End Sub

Public Sub Proc_126_80_101B554
  'Data Table: 55BD00
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  loc_101B335: Me.LblVPrefix.Caption = vbNullString
  loc_101B34B: Set var_8C = Me.Txt
  loc_101B351: Call 0.Method_Proc_126_80_101B554C (var_8E, var_86)
  loc_101B361: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_101B377:   Set var_8C = Me.Txt
  loc_101B37D:   Call 0.Method_Proc_126_80_101B5540 (CInt(var_86), var_98)
  loc_101B385:   var_98.Text = vbNullString
  loc_101B3A1:   Set var_8C = Me.Txt
  loc_101B3A7:   Call 0.Method_Proc_126_80_101B5540 (CInt(var_86), var_98)
  loc_101B3AF:   var_98.Tag = vbNullString
  loc_101B3BE: Next var_92 'Byte
  loc_101B3D3: Set var_8C = Me.txtM
  loc_101B3D9: Call 0.Method_Proc_126_80_101B5540 (0, var_98)
  loc_101B3E1: var_98.Text = "0:00"
  loc_101B3FC: Set var_8C = Me.txtM
  loc_101B402: Call 0.Method_Proc_126_80_101B5540 (0, var_98)
  loc_101B40A: var_98.Tag = vbNullString
  loc_101B425: Set var_8C = Me.txtM
  loc_101B42B: Call 0.Method_Proc_126_80_101B5540 (1, var_98)
  loc_101B433: var_98.Text = "0:00"
  loc_101B44E: Set var_8C = Me.txtM
  loc_101B454: Call 0.Method_Proc_126_80_101B5540 (1, var_98)
  loc_101B45C: var_98.Tag = vbNullString
  loc_101B47B: Me.FGrid.Rows = 1
  loc_101B4A1: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_101B4A9: Set var_98 = Me.FGrid
  loc_101B4D6: Me.FGrid.FixedRows = 1
  loc_101B4F1: Me.FGrid1.Rows = 1
  loc_101B515: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_101B51D: Set var_98 = Me.FGrid1
  loc_101B54A: Me.FGrid1.FixedRows = 1
  loc_101B552: Exit Sub
End Sub

Public Sub Proc_126_81_104BE74(arg_C) '104BE74
  'Data Table: 55BD00
  Dim var_98 As Variant
  Dim var_8C As CommandButton
  loc_104BC0E: Set var_8C = Me.Txt
  loc_104BC14: Call 0.Method_Proc_126_81_104BE74C (var_8E, var_86)
  loc_104BC24: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_104BC3A:   Set var_8C = Me.Txt
  loc_104BC40:   Call 0.Method_Proc_126_81_104BE740 (CInt(var_86), var_98)
  loc_104BC48:   var_98.Enabled = arg_C
  loc_104BC57: Next var_92 'Byte
  loc_104BC6B: Set var_8C = Me.txtM
  loc_104BC71: Call 0.Method_Proc_126_81_104BE740 (0, var_98)
  loc_104BC79: var_98.Enabled = False
  loc_104BC93: Set var_8C = Me.txtM
  loc_104BC99: Call 0.Method_Proc_126_81_104BE740 (1, var_98)
  loc_104BCA1: var_98.Enabled = False
  loc_104BCBA: Set var_8C = Me.Txt
  loc_104BCC0: Call 0.Method_Proc_126_81_104BE740 (CInt(&H15), var_98)
  loc_104BCC8: var_98.Enabled = False
  loc_104BCE1: Set var_8C = Me.Txt
  loc_104BCE7: Call 0.Method_Proc_126_81_104BE740 (CInt(6), var_98)
  loc_104BCEF: var_98.Enabled = False
  loc_104BD08: Set var_8C = Me.Txt
  loc_104BD0E: Call 0.Method_Proc_126_81_104BE740 (CInt(4), var_98)
  loc_104BD16: var_98.Enabled = False
  loc_104BD2F: Set var_8C = Me.Txt
  loc_104BD35: Call 0.Method_Proc_126_81_104BE740 (CInt(3), var_98)
  loc_104BD3D: var_98.Enabled = False
  loc_104BD56: Set var_8C = Me.Txt
  loc_104BD5C: Call 0.Method_Proc_126_81_104BE740 (CInt(8), var_98)
  loc_104BD64: var_98.Enabled = False
  loc_104BD7D: Set var_8C = Me.Txt
  loc_104BD83: Call 0.Method_Proc_126_81_104BE740 (CInt(&HA), var_98)
  loc_104BD8B: var_98.Enabled = False
  loc_104BDA4: Set var_8C = Me.Txt
  loc_104BDAA: Call 0.Method_Proc_126_81_104BE740 (CInt(9), var_98)
  loc_104BDB2: var_98.Enabled = False
  loc_104BDCB: Set var_8C = Me.Txt
  loc_104BDD1: Call 0.Method_Proc_126_81_104BE740 (CInt(&H10), var_98)
  loc_104BDD9: var_98.Enabled = False
  loc_104BDF2: Set var_8C = Me.Txt
  loc_104BDF8: Call 0.Method_Proc_126_81_104BE740 (CInt(&H14), var_98)
  loc_104BE00: var_98.Enabled = False
  loc_104BE19: Set var_8C = Me.Txt
  loc_104BE1F: Call 0.Method_Proc_126_81_104BE740 (CInt(&HC), var_98)
  loc_104BE27: var_98.Enabled = False
  loc_104BE40: Set var_8C = Me.Txt
  loc_104BE46: Call 0.Method_Proc_126_81_104BE740 (CInt(&HB), var_98)
  loc_104BE4E: var_98.Enabled = False
  loc_104BE68: Me.Command1.Enabled = Not(arg_C)
  loc_104BE70: Exit Sub
End Sub

Public Sub Proc_126_82_F26E50
  'Data Table: 55BD00
  loc_F26D5C: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F26D6E:   Me.DGParty.Visible = False
  loc_F26D76: End If
  loc_F26D92: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F26DA4:   Me.DGVType.Visible = False
  loc_F26DAC: End If
  loc_F26DC8: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F26DDA:   Me.DGHall.Visible = False
  loc_F26DE2: End If
  loc_F26DFE: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F26E10:   Me.DGItem.Visible = False
  loc_F26E18: End If
  loc_F26E34: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_F26E46:   Me.DGBookNo.Visible = False
  loc_F26E4E: End If
  loc_F26E4E: Exit Sub
End Sub

Public Sub Proc_126_83_F0B054
  'Data Table: 55BD00
  loc_F0AF78: Call Proc_126_82_F26E50()
  loc_F0AF88: Set var_88 = Me.Txt
  loc_F0AF8E: Call 0.Method_Proc_126_83_F0B0540 (CInt(2))
  loc_F0AFB7: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0AFBA:   Exit Sub
  loc_F0AFBB: End If
  loc_F0AFC6: Set var_88 = Me.Txt
  loc_F0AFCC: Call 0.Method_Proc_126_83_F0B0540 (CInt(1), var_8C)
  loc_F0AFF5: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0AFF8:   Exit Sub
  loc_F0AFF9: End If
  loc_F0B030: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0B033:   Call TopCtrl1_UnknownEvent_19()
  loc_F0B03B: Else
  loc_F0B041:   Call 0.Method_arg_1E8 (var_88)
  loc_F0B049:   Call var_88.SetFocus
  loc_F0B052: End If
  loc_F0B052: Exit Sub
End Sub

Public Sub Proc_126_84_1153514
  'Data Table: 55BD00
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_11531A3: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11531AB: var_C8 = CVar(CLng(4)) 'Long
  loc_11531E3: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11531EB: var_134 = CVar(CLng(3)) 'Long
  loc_1153223: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115322B: var_1F0 = CVar(CLng(5)) 'Long
  loc_115325C: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1153264: Set var_224 = Me.FGrid
  loc_115326A: LateIdCallSt
  loc_11532B0: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11532B8: var_C8 = CVar(CLng(6)) 'Long
  loc_11532F0: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1153306:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115330E:   var_C8 = CVar(CLng(5)) 'Long
  loc_1153346:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115334E:   var_134 = CVar(CLng(6)) 'Long
  loc_1153386:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115338E:   var_1F0 = CVar(CLng(7)) 'Long
  loc_11533C3:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_11533CB:   Set var_224 = Me.FGrid
  loc_11533D1:   LateIdCallSt
  loc_1153404: End If
  loc_1153417: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115341F: var_C8 = CVar(CLng(5)) 'Long
  loc_1153457: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115345F: var_134 = CVar(CLng(7)) 'Long
  loc_1153497: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115349F: var_1F0 = CVar(CLng(8)) 'Long
  loc_11534C0: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_11534D0: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_11534D8: Set var_224 = Me.FGrid
  loc_11534DE: LateIdCallSt
  loc_1153511: Exit Sub
End Sub

Public Sub Proc_126_85_110770C
  'Data Table: 55BD00
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
  loc_1107418: Set var_94 = Me.Txt
  loc_110741E: Call 0.Method_Proc_126_85_110770C0 (CInt(0), var_98)
  loc_110742E: var_90 = var_98.Tag
  loc_110744C: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_110747D: Set var_94 = Me.Txt
  loc_1107483: Call 0.Method_Proc_126_85_110770C0 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1107492: Proc_6_7_F26918(var_CC, CVar(var_98), var_130)
  loc_110749A: var_EC = -1 & var_CC 
  loc_11074AE: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_11074B9: Set var_8C = var_134
  loc_11074F5: If (var_8C.RecordCount > 0) Then
  loc_1107534:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1107568:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1107593:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11075A8:     var_CC = (var_98.Value + 1)
  loc_11075B0:     global_116 = CInt(var_CC)
  loc_11075C1:   End If
  loc_11075C1: End If
  loc_11075EC: var_BC = Space((5 - Len(var_90)))
  loc_11075F4: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_98.Value)
  loc_1107608: var_EC = Space((5 - Len(global_112)))
  loc_1107610: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_110761D: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_112))
  loc_1107636: var_14C = Space((8 - Len(CStr(global_116))))
  loc_110763E: var_15C = (var_130 + var_14C)
  loc_110764D: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_1107658: global_104 = CStr(var_17C)
  loc_110768E: Me.LblVPrefix.Caption = global_112
  loc_11076A7: Set var_94 = Me.Txt
  loc_11076AD: Call 0.Method_Proc_126_85_110770C0 (CInt(4), var_98)
  loc_11076B5: var_98.Text = global_104
  loc_11076D7: Set var_94 = Me.Txt
  loc_11076DD: Call 0.Method_Proc_126_85_110770C0 (CInt(1), var_98)
  loc_11076E5: var_98.Text = CStr(global_116)
  loc_11076FA: var_88 = global_104
  loc_1107702: Set var_8C = Nothing
  loc_1107705: Proc_126_85_110770C = global_116
End Sub

Public Sub Proc_126_86_10B8DD8(arg_C, arg_10, arg_14) '10B8DD8
  'Data Table: 55BD00
  Dim unk_55BD25 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B8B46: If (arg_C = "HSBIL") Then
  loc_10B8B6D:   unk_55BD25.Execute "Select Distinct DocId,V_Type,V_No From HallSale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B8B78:   Set var_8C = var_C4
  loc_10B8B8B:   var_94 = "Sale Bill "
  loc_10B8B91: Else
  loc_10B8B96:   Proc_126_86_10B8DD8 = &HFF
  loc_10B8B9C: End If
  loc_10B8BB0: If (var_8C.RecordCount > 0) Then
  loc_10B8BB3:   ' Referenced from: 10B8D2C
  loc_10B8BC2:   If Not(var_8C.EOF) Then
  loc_10B8BCD:     If (var_90 = vbNullString) Then
  loc_10B8C10:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B8C17:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B8C49:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B8C6E:     Else
  loc_10B8CAA:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B8CCA:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B8CF7:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B8CFC:       var_90 = CStr(var_11C)
  loc_10B8D24:     End If
  loc_10B8D27:     var_8C.MoveNext
  loc_10B8D2C:     GoTo loc_10B8BB3
  loc_10B8D2F:   End If
  loc_10B8D35:   Call 0.Method_arg_50 (var_138)
  loc_10B8D91:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B8D94:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B8DC3:   Set var_8C = Nothing
  loc_10B8DC6:   Proc_126_86_10B8DD8 = 0
  loc_10B8DCC: End If
  loc_10B8DD1: Proc_126_86_10B8DD8 = &HFF
End Sub

Public Sub Proc_126_87_FC50D4
  'Data Table: 55BD00
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC4F57: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC4F5C:   var_92 = 1 'Byte
  loc_FC4F60: End If
  loc_FC4F69: Set var_98 = Me.TxtGrid
  loc_FC4F6F: Call 0.Method_Proc_126_87_FC50D40 (0, var_B0)
  loc_FC4F92: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC4FC6: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC4FEA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC4FED:     GoTo loc_FC50BF
  loc_FC4FF0:   End If
  loc_FC4FF4:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC501E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC5028:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC505D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC5081:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC509A:     Set var_98 = Me.TxtGrid
  loc_FC50A0:     Call 0.Method_Proc_126_87_FC50D40 (0, var_B0, CVar(CLng(var_92)))
  loc_FC50A8:     var_B0.SetFocus
  loc_FC50B9:     Proc_126_87_FC50D4 = 0
  loc_FC50BF:     ' Referenced from: FC4FED
  loc_FC50BF:   End If
  loc_FC50C2: Next var_D4 'Integer
  loc_FC50CC: Proc_126_87_FC50D4 = &HFF
End Sub

Public Sub Proc_126_88_1A4F494(arg_C) '1A4F494
  'Data Table: 55BD00
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim unk_55BD25 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_134 As Variant
  Dim var_130 As Fields15
  Dim var_128 As Boolean
  Dim var_17C As Variant
  Dim var_138 As Fields15
  Dim var_184 As Variant
  Dim var_198 As TextBox
  Dim var_C4 As Variant
  loc_1A4BC7C: Set var_90 = Me.TextGt
  loc_1A4BC82: Call 0.Method_Proc_126_88_1A4F4940 (1, var_94)
  loc_1A4BC92: var_8A = var_94.TabIndex
  loc_1A4BCB3: var_9C = "Select * From SundryType WHERE V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='BBILL' AND RESTCODE='" & global_56
  loc_1A4BCBA: var_A0 = var_9C & "') aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='BBILL' AND RESTCODE='"
  loc_1A4BCD9: Proc_6_7_F26918(var_C4, arg_C, CVar(var_A0 & global_56 & "') aND AppDate<="), var_128)
  loc_1A4BCE1: var_E4 = -1 & var_C4 
  loc_1A4BCF8: unk_55BD25.Execute CStr(var_E4 & "  Order by AppDate Desc) Order by SNO"), var_90, var_8A
  loc_1A4BD03: Set var_88 = var_90
  loc_1A4BD35: If (var_88.RecordCount > 0) Then
  loc_1A4BD38:   ' Referenced from: 1A4D7AB
  loc_1A4BD3E:   var_96 = var_88.EOF
  loc_1A4BD47:   If Not(var_96) Then
  loc_1A4BD86:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A4BDBA:       Set var_130 = Me.LableDummy
  loc_1A4BDC0:       Call 0.Method_Proc_126_88_1A4F4948 (var_96)
  loc_1A4BDDA:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A4BE0F:         Set var_130 = Me.LableDummy
  loc_1A4BE15:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4BE26:         Me.LableDummy.Load var_134
  loc_1A4BE39:       End If
  loc_1A4BE6A:       Set var_130 = Me.TextPer
  loc_1A4BE70:       Call 0.Method_Proc_126_88_1A4F4948 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4BE8A:       If (var_134 > CVar(var_96)) Then
  loc_1A4BEBF:         Set var_130 = Me.TextPer
  loc_1A4BEC5:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4BED6:         Me.TextPer.Load var_134
  loc_1A4BEE9:       End If
  loc_1A4BF21:       Set var_130 = Me.TextPer
  loc_1A4BF27:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4BF2F:       var_134.TabIndex = (var_8A + 1)
  loc_1A4BF48:       var_8A = (var_8A + 1)
  loc_1A4BF8C:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4BFCC:       Set var_138 = Me.TextPer
  loc_1A4BFD2:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A4BFDA:       var_17C.Visible = var_8A
  loc_1A4C039:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4C098:         var_104 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4C0A1:         Set var_180 = Me.TextPer
  loc_1A4C0A7:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(True), var_184)
  loc_1A4C0E9:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4C0F2:         Set var_130 = Me.TextPer
  loc_1A4C0F8:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(CVar(var_A0 & global_56 & "') aND AppDate<=")), var_134)
  loc_1A4C11C:         Set var_194 = Me.TextPer
  loc_1A4C122:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_198)
  loc_1A4C12A:         var_198.Top = ((var_134.Top + var_184.Height) + CDbl(&HF))
  loc_1A4C153:       End If
  loc_1A4C18F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4C1EE:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4C1F7:         Set var_130 = Me.TextPer
  loc_1A4C1FD:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(CVar(var_A0 & global_56 & "') aND AppDate<=")), var_134)
  loc_1A4C218:         Set var_180 = Me.TextPer
  loc_1A4C21E:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4C226:         var_184.Left = var_134.Left
  loc_1A4C245:       End If
  loc_1A4C2A2:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4C2EF:       Set var_180 = Me.TextPer
  loc_1A4C2F5:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_17C.Value), var_184)
  loc_1A4C2FD:       var_184.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A4C370:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4C385:       Set var_138 = Me.TextPer
  loc_1A4C38B:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4C393:       var_17C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A4C3EA:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4C421:         Set var_130 = Me.TextPer
  loc_1A4C427:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4C42F:         var_134.FontBold = True
  loc_1A4C445:       Else
  loc_1A4C479:         Set var_130 = Me.TextPer
  loc_1A4C47F:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4C487:         var_134.FontBold = False
  loc_1A4C49A:       End If
  loc_1A4C4D3:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4C50A:         Set var_130 = Me.TextPer
  loc_1A4C510:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4C518:         var_134.Enabled = False
  loc_1A4C52E:       Else
  loc_1A4C562:         Set var_130 = Me.TextPer
  loc_1A4C568:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4C570:         var_134.Enabled = True
  loc_1A4C583:       End If
  loc_1A4C587:       Set var_90 = Me.TopCtrl1
  loc_1A4C58D:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_134)
  loc_1A4C5A2:       If ( = "Browse") Then
  loc_1A4C5D9:         Set var_130 = Me.TextPer
  loc_1A4C5DF:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4C5E7:         var_134.Enabled = False
  loc_1A4C5FA:       End If
  loc_1A4C636:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A4C66D:         Set var_130 = Me.TextPer
  loc_1A4C673:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4C67B:         var_134.Enabled = False
  loc_1A4C68E:       End If
  loc_1A4C6BF:       Set var_130 = Me.LableCap
  loc_1A4C6C5:       Call 0.Method_Proc_126_88_1A4F4948 (var_96)
  loc_1A4C6DF:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A4C714:         Set var_130 = Me.LableCap
  loc_1A4C71A:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4C72B:         Me.LableCap.Load var_134
  loc_1A4C73E:       End If
  loc_1A4C772:       Set var_130 = Me.LableCap
  loc_1A4C778:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4C780:       var_134.Visible = True
  loc_1A4C7EF:       Set var_130 = Me.TextPer
  loc_1A4C7F5:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4C810:       Set var_180 = Me.LableCap
  loc_1A4C816:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4C81E:       var_184.Top = var_134.Top
  loc_1A4C879:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4C8BD:         var_17C = var_88.Fields.Item("SNo")
  loc_1A4C8D8:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4C8E1:         Set var_130 = Me.LableCap
  loc_1A4C8E7:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4C902:         Set var_180 = Me.LableCap
  loc_1A4C908:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_17C.Value), var_184)
  loc_1A4C910:         var_184.Left = var_134.Left
  loc_1A4C92F:       End If
  loc_1A4C98F:       Set var_138 = Me.LableCap
  loc_1A4C995:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_17C)
  loc_1A4C99D:       var_17C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A4CA06:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4CA1B:       Set var_138 = Me.LableCap
  loc_1A4CA21:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4CA29:       var_17C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A4CA80:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4CAB7:         Set var_130 = Me.LableCap
  loc_1A4CABD:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4CAC5:         var_134.FontBold = True
  loc_1A4CADB:       Else
  loc_1A4CB0F:         Set var_130 = Me.LableCap
  loc_1A4CB15:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4CB1D:         var_134.FontBold = False
  loc_1A4CB30:       End If
  loc_1A4CB61:       Set var_130 = Me.LableAt
  loc_1A4CB67:       Call 0.Method_Proc_126_88_1A4F4948 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4CB81:       If (var_134 > CVar(var_96)) Then
  loc_1A4CBB6:         Set var_130 = Me.LableAt
  loc_1A4CBBC:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4CBCD:         Me.LableAt.Load var_134
  loc_1A4CBE0:       End If
  loc_1A4CC21:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4CC61:       Set var_138 = Me.LableAt
  loc_1A4CC67:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4CC6F:       var_17C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A4CCD3:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4CCEE:       Set var_130 = Me.TextPer
  loc_1A4CCF4:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4CD0F:       Set var_180 = Me.LableAt
  loc_1A4CD15:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_17C.Value), var_184)
  loc_1A4CD1D:       var_184.Top = var_134.Top
  loc_1A4CD75:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4CDAC:         Set var_130 = Me.LableAt
  loc_1A4CDB2:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4CDBA:         var_134.FontBold = True
  loc_1A4CDD0:       Else
  loc_1A4CE04:         Set var_130 = Me.LableAt
  loc_1A4CE0A:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4CE12:         var_134.FontBold = False
  loc_1A4CE25:       End If
  loc_1A4CE70:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4CE85:       Set var_138 = Me.LableAt
  loc_1A4CE8B:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4CE93:       var_17C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A4CEED:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4CF4C:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4CF55:         Set var_130 = Me.LableAt
  loc_1A4CF5B:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("RoundOff").Value), var_134)
  loc_1A4CF76:         Set var_180 = Me.LableAt
  loc_1A4CF7C:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4CF84:         var_184.Left = var_134.Left
  loc_1A4CFA3:       End If
  loc_1A4CFD4:       Set var_130 = Me.TextGt
  loc_1A4CFDA:       Call 0.Method_Proc_126_88_1A4F4948 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4CFF4:       If (var_134 > CVar(var_96)) Then
  loc_1A4D029:         Set var_130 = Me.TextGt
  loc_1A4D02F:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4D040:         Me.TextGt.Load var_134
  loc_1A4D053:       End If
  loc_1A4D08B:       Set var_130 = Me.TextGt
  loc_1A4D091:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D099:       var_134.TabIndex = (var_8A + 1)
  loc_1A4D0B2:       var_8A = (var_8A + 1)
  loc_1A4D0E9:       Set var_130 = Me.TextGt
  loc_1A4D0EF:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134, &HFF)
  loc_1A4D0F7:       var_134.Visible = var_8A
  loc_1A4D166:       Set var_130 = Me.TextPer
  loc_1A4D16C:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D187:       Set var_180 = Me.TextGt
  loc_1A4D18D:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4D195:       var_184.Top = var_134.Top
  loc_1A4D1F0:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4D24F:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4D258:         Set var_130 = Me.TextGt
  loc_1A4D25E:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D279:         Set var_180 = Me.TextGt
  loc_1A4D27F:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4D287:         var_184.Left = var_134.Left
  loc_1A4D2A6:       End If
  loc_1A4D303:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4D350:       Set var_180 = Me.TextGt
  loc_1A4D356:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_17C.Value), var_184)
  loc_1A4D35E:       var_184.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A4D3CE:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4D3E3:       Set var_138 = Me.TextGt
  loc_1A4D3E9:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4D3F1:       var_17C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A4D446:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4D47D:         Set var_130 = Me.TextGt
  loc_1A4D483:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D48B:         var_134.FontBold = True
  loc_1A4D4A1:       Else
  loc_1A4D4D5:         Set var_130 = Me.TextGt
  loc_1A4D4DB:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D4E3:         var_134.FontBold = False
  loc_1A4D4F6:       End If
  loc_1A4D52F:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4D566:         Set var_130 = Me.TextGt
  loc_1A4D56C:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D574:         var_134.Enabled = False
  loc_1A4D58A:       Else
  loc_1A4D5BE:         Set var_130 = Me.TextGt
  loc_1A4D5C4:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D5CC:         var_134.Enabled = True
  loc_1A4D5DF:       End If
  loc_1A4D614:       Set var_130 = Me.LableCap
  loc_1A4D61A:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D640:       If (var_134.Tag = "SROFF") Then
  loc_1A4D677:         Set var_130 = Me.TextGt
  loc_1A4D67D:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D685:         var_134.Enabled = False
  loc_1A4D698:       End If
  loc_1A4D69C:       Set var_90 = Me.TopCtrl1
  loc_1A4D6A2:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_134)
  loc_1A4D6B7:       If ( = "Browse") Then
  loc_1A4D6EE:         Set var_130 = Me.TextGt
  loc_1A4D6F4:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4D6FC:         var_134.Enabled = False
  loc_1A4D70F:       End If
  loc_1A4D74B:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A4D76D:         var_94 = var_88.Fields.Item("SNo")
  loc_1A4D782:         Set var_130 = Me.TextGt
  loc_1A4D788:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_94.Value), var_134)
  loc_1A4D790:         var_134.Enabled = False
  loc_1A4D7A3:       End If
  loc_1A4D7A3:     End If
  loc_1A4D7A6:     var_88.MoveNext
  loc_1A4D7AB:     GoTo loc_1A4BD38
  loc_1A4D7AE:   End If
  loc_1A4D7AE: End If
  loc_1A4D7B4: var_8A = (var_8A + 1)
  loc_1A4D7C8: Me.FGrid.TabIndex = var_8A
  loc_1A4D7D6: var_8A = (var_8A + 1)
  loc_1A4D7E5: Set var_90 = Me.TxtGrid
  loc_1A4D7EB: Call 0.Method_Proc_126_88_1A4F4940 (0, var_94, var_8A)
  loc_1A4D7F3: var_94.TabIndex = var_8A
  loc_1A4D802: var_88.MoveFirst
  loc_1A4D81B: If (var_88.RecordCount > 0) Then
  loc_1A4D81E:   ' Referenced from: 1A4F31D
  loc_1A4D824:   var_96 = var_88.EOF
  loc_1A4D82D:   If Not(var_96) Then
  loc_1A4D86C:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A4D8A0:       Set var_130 = Me.LblDummy
  loc_1A4D8A6:       Call 0.Method_Proc_126_88_1A4F4948 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4D8C0:       If (var_8A > CVar(var_96)) Then
  loc_1A4D8F5:         Set var_130 = Me.LblDummy
  loc_1A4D8FB:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4D90C:         Me.LblDummy.Load var_134
  loc_1A4D91F:       End If
  loc_1A4D950:       Set var_130 = Me.TxtPer
  loc_1A4D956:       Call 0.Method_Proc_126_88_1A4F4948 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4D970:       If (var_134 > CVar(var_96)) Then
  loc_1A4D9A5:         Set var_130 = Me.TxtPer
  loc_1A4D9AB:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4D9BC:         Me.TxtPer.Load var_134
  loc_1A4D9CF:       End If
  loc_1A4DA07:       Set var_130 = Me.TxtPer
  loc_1A4DA0D:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DA15:       var_134.TabIndex = (var_8A + 1)
  loc_1A4DA2E:       var_8A = (var_8A + 1)
  loc_1A4DA72:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4DAB2:       Set var_138 = Me.TxtPer
  loc_1A4DAB8:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A4DAC0:       var_17C.Visible = var_8A
  loc_1A4DB1F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4DB7E:         var_104 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4DB87:         Set var_180 = Me.TxtPer
  loc_1A4DB8D:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(True), var_184)
  loc_1A4DBCF:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4DBD8:         Set var_130 = Me.TxtPer
  loc_1A4DBDE:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_134)
  loc_1A4DC02:         Set var_194 = Me.TxtPer
  loc_1A4DC08:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_198)
  loc_1A4DC10:         var_198.Top = ((var_134.Top + var_184.Height) + CDbl(&HF))
  loc_1A4DC39:       End If
  loc_1A4DC75:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4DCD4:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4DCDD:         Set var_130 = Me.TxtPer
  loc_1A4DCE3:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_134)
  loc_1A4DCFE:         Set var_180 = Me.TxtPer
  loc_1A4DD04:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4DD0C:         var_184.Left = var_134.Left
  loc_1A4DD2B:       End If
  loc_1A4DD88:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4DDD5:       Set var_180 = Me.TxtPer
  loc_1A4DDDB:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_17C.Value), var_184)
  loc_1A4DDE3:       var_184.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A4DE56:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4DE6B:       Set var_138 = Me.TxtPer
  loc_1A4DE71:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4DE79:       var_17C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A4DED0:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4DF07:         Set var_130 = Me.TxtPer
  loc_1A4DF0D:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DF15:         var_134.FontBold = True
  loc_1A4DF2B:       Else
  loc_1A4DF5F:         Set var_130 = Me.TxtPer
  loc_1A4DF65:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DF6D:         var_134.FontBold = False
  loc_1A4DF80:       End If
  loc_1A4DFB9:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4DFF0:         Set var_130 = Me.TxtPer
  loc_1A4DFF6:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4DFFE:         var_134.Enabled = False
  loc_1A4E014:       Else
  loc_1A4E048:         Set var_130 = Me.TxtPer
  loc_1A4E04E:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E056:         var_134.Enabled = True
  loc_1A4E069:       End If
  loc_1A4E06D:       Set var_90 = Me.TopCtrl1
  loc_1A4E073:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_134)
  loc_1A4E088:       If ( = "Browse") Then
  loc_1A4E0BF:         Set var_130 = Me.TxtPer
  loc_1A4E0C5:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E0CD:         var_134.Enabled = False
  loc_1A4E0E0:       End If
  loc_1A4E11C:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A4E153:         Set var_130 = Me.TxtPer
  loc_1A4E159:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E161:         var_134.Enabled = False
  loc_1A4E174:       End If
  loc_1A4E1A5:       Set var_130 = Me.LblCap
  loc_1A4E1AB:       Call 0.Method_Proc_126_88_1A4F4948 (var_96)
  loc_1A4E1C5:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A4E1FA:         Set var_130 = Me.LblCap
  loc_1A4E200:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4E211:         Me.LblCap.Load var_134
  loc_1A4E224:       End If
  loc_1A4E258:       Set var_130 = Me.LblCap
  loc_1A4E25E:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E266:       var_134.Visible = True
  loc_1A4E2D5:       Set var_130 = Me.TxtPer
  loc_1A4E2DB:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E2F6:       Set var_180 = Me.LblCap
  loc_1A4E2FC:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4E304:       var_184.Top = var_134.Top
  loc_1A4E35F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4E3A3:         var_17C = var_88.Fields.Item("SNo")
  loc_1A4E3BE:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4E3C7:         Set var_130 = Me.LblCap
  loc_1A4E3CD:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E3E8:         Set var_180 = Me.LblCap
  loc_1A4E3EE:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_17C.Value), var_184)
  loc_1A4E3F6:         var_184.Left = var_134.Left
  loc_1A4E415:       End If
  loc_1A4E475:       Set var_138 = Me.LblCap
  loc_1A4E47B:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_17C)
  loc_1A4E483:       var_17C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A4E501:       Set var_138 = Me.LblCap
  loc_1A4E507:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_17C)
  loc_1A4E50F:       var_17C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A4E578:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4E58D:       Set var_138 = Me.LblDummy
  loc_1A4E593:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4E59B:       var_17C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A4E5F2:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4E629:         Set var_130 = Me.LblCap
  loc_1A4E62F:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E637:         var_134.FontBold = True
  loc_1A4E64D:       Else
  loc_1A4E681:         Set var_130 = Me.LblCap
  loc_1A4E687:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E68F:         var_134.FontBold = False
  loc_1A4E6A2:       End If
  loc_1A4E6D3:       Set var_130 = Me.LblAt
  loc_1A4E6D9:       Call 0.Method_Proc_126_88_1A4F4948 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4E6F3:       If (var_134 > CVar(var_96)) Then
  loc_1A4E728:         Set var_130 = Me.LblAt
  loc_1A4E72E:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4E73F:         Me.LblAt.Load var_134
  loc_1A4E752:       End If
  loc_1A4E793:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4E7D3:       Set var_138 = Me.LblAt
  loc_1A4E7D9:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4E7E1:       var_17C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A4E845:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4E860:       Set var_130 = Me.TxtPer
  loc_1A4E866:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E881:       Set var_180 = Me.LblAt
  loc_1A4E887:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_17C.Value), var_184)
  loc_1A4E88F:       var_184.Top = var_134.Top
  loc_1A4E8E7:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4E91E:         Set var_130 = Me.LblAt
  loc_1A4E924:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E92C:         var_134.FontBold = True
  loc_1A4E942:       Else
  loc_1A4E976:         Set var_130 = Me.LblAt
  loc_1A4E97C:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4E984:         var_134.FontBold = False
  loc_1A4E997:       End If
  loc_1A4E9E2:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4E9F7:       Set var_138 = Me.LblAt
  loc_1A4E9FD:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4EA05:       var_17C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A4EA5F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4EABE:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4EAC7:         Set var_130 = Me.LblAt
  loc_1A4EACD:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("RoundOff").Value), var_134)
  loc_1A4EAE8:         Set var_180 = Me.LblAt
  loc_1A4EAEE:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4EAF6:         var_184.Left = var_134.Left
  loc_1A4EB15:       End If
  loc_1A4EB46:       Set var_130 = Me.TxtGt
  loc_1A4EB4C:       Call 0.Method_Proc_126_88_1A4F4948 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A4EB66:       If (var_134 > CVar(var_96)) Then
  loc_1A4EB9B:         Set var_130 = Me.TxtGt
  loc_1A4EBA1:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A4EBB2:         Me.TxtGt.Load var_134
  loc_1A4EBC5:       End If
  loc_1A4EBFD:       Set var_130 = Me.TxtGt
  loc_1A4EC03:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4EC0B:       var_134.TabIndex = (var_8A + 1)
  loc_1A4EC24:       var_8A = (var_8A + 1)
  loc_1A4EC5B:       Set var_130 = Me.TxtGt
  loc_1A4EC61:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134, &HFF)
  loc_1A4EC69:       var_134.Visible = var_8A
  loc_1A4ECD8:       Set var_130 = Me.TxtPer
  loc_1A4ECDE:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4ECF9:       Set var_180 = Me.TxtGt
  loc_1A4ECFF:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4ED07:       var_184.Top = var_134.Top
  loc_1A4ED62:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A4EDC1:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A4EDCA:         Set var_130 = Me.TxtGt
  loc_1A4EDD0:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4EDEB:         Set var_180 = Me.TxtGt
  loc_1A4EDF1:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_184)
  loc_1A4EDF9:         var_184.Left = var_134.Left
  loc_1A4EE18:       End If
  loc_1A4EE75:       var_17C = var_88.Fields.Item("SNo")
  loc_1A4EEC2:       Set var_180 = Me.TxtGt
  loc_1A4EEC8:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_17C.Value), var_184)
  loc_1A4EED0:       var_184.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A4EF40:       var_134 = var_88.Fields.Item("SNo")
  loc_1A4EF55:       Set var_138 = Me.TxtGt
  loc_1A4EF5B:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_134.Value), var_17C)
  loc_1A4EF63:       var_17C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A4EFB8:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4EFEF:         Set var_130 = Me.TxtGt
  loc_1A4EFF5:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4EFFD:         var_134.FontBold = True
  loc_1A4F013:       Else
  loc_1A4F047:         Set var_130 = Me.TxtGt
  loc_1A4F04D:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F055:         var_134.FontBold = False
  loc_1A4F068:       End If
  loc_1A4F0A1:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A4F0D8:         Set var_130 = Me.TxtGt
  loc_1A4F0DE:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F0E6:         var_134.Enabled = False
  loc_1A4F0FC:       Else
  loc_1A4F130:         Set var_130 = Me.TxtGt
  loc_1A4F136:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F13E:         var_134.Enabled = True
  loc_1A4F151:       End If
  loc_1A4F186:       Set var_130 = Me.LblCap
  loc_1A4F18C:       Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F1B2:       If (var_134.Tag = "SROFF") Then
  loc_1A4F1E9:         Set var_130 = Me.TxtGt
  loc_1A4F1EF:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F1F7:         var_134.Enabled = False
  loc_1A4F20A:       End If
  loc_1A4F20E:       Set var_90 = Me.TopCtrl1
  loc_1A4F214:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(var_134)
  loc_1A4F229:       If ( = "Browse") Then
  loc_1A4F260:         Set var_130 = Me.TxtGt
  loc_1A4F266:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_88.Fields.Item("SNo").Value), var_134)
  loc_1A4F26E:         var_134.Enabled = False
  loc_1A4F281:       End If
  loc_1A4F2BD:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A4F2DF:         var_94 = var_88.Fields.Item("SNo")
  loc_1A4F2F4:         Set var_130 = Me.TxtGt
  loc_1A4F2FA:         Call 0.Method_Proc_126_88_1A4F4940 (CInt(var_94.Value), var_134)
  loc_1A4F302:         var_134.Enabled = False
  loc_1A4F315:       End If
  loc_1A4F315:     End If
  loc_1A4F318:     var_88.MoveNext
  loc_1A4F31D:     GoTo loc_1A4D81E
  loc_1A4F320:   End If
  loc_1A4F320: End If
  loc_1A4F331: Set var_90 = Me.Txt
  loc_1A4F337: Call 0.Method_Proc_126_88_1A4F4940 (CInt(&HF), var_94)
  loc_1A4F33F: var_94.TabIndex = (var_8A + 1)
  loc_1A4F35C: Set var_90 = Me.Txt
  loc_1A4F362: Call 0.Method_Proc_126_88_1A4F4940 (CInt(&HE), var_94)
  loc_1A4F36A: var_94.TabIndex = (var_8A + 2)
  loc_1A4F387: Set var_90 = Me.Txt
  loc_1A4F38D: Call 0.Method_Proc_126_88_1A4F4940 (CInt(&HD), var_94)
  loc_1A4F395: var_94.TabIndex = (var_8A + 3)
  loc_1A4F3B1: Me.Command1.TabIndex = (var_8A + 3)
  loc_1A4F3CA: Set var_90 = Me.Txt
  loc_1A4F3D0: Call 0.Method_Proc_126_88_1A4F4940 (CInt(8), var_94)
  loc_1A4F3D8: var_94.TabIndex = (var_8A + 4)
  loc_1A4F3F5: Set var_90 = Me.Txt
  loc_1A4F3FB: Call 0.Method_Proc_126_88_1A4F4940 (CInt(9), var_94)
  loc_1A4F403: var_94.TabIndex = (var_8A + 5)
  loc_1A4F420: Set var_90 = Me.Txt
  loc_1A4F426: Call 0.Method_Proc_126_88_1A4F4940 (CInt(&HA), var_94)
  loc_1A4F42E: var_94.TabIndex = (var_8A + 6)
  loc_1A4F44B: Set var_90 = Me.Txt
  loc_1A4F451: Call 0.Method_Proc_126_88_1A4F4940 (CInt(&HB), var_94)
  loc_1A4F459: var_94.TabIndex = (var_8A + 7)
  loc_1A4F476: Set var_90 = Me.Txt
  loc_1A4F47C: Call 0.Method_Proc_126_88_1A4F4940 (CInt(&HC), var_94)
  loc_1A4F484: var_94.TabIndex = (var_8A + 8)
  loc_1A4F490: Exit Sub
End Sub

Public Sub Proc_126_89_164E294(arg_C) '164E294
  'Data Table: 55BD00
  Dim var_A8 As Variant
  Dim var_C0 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_AC As String
  Dim var_26C As Double
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_F0 As Variant
  Dim var_274 As Double
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_12C As Variant
  Dim var_1B0 As String
  Dim var_27C As Double
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_1D0 As Variant
  Dim var_250 As Variant
  Dim var_280 As TextBox
  Dim var_1C0 As Variant
  Dim var_90 As Double
  Dim var_264 As Variant
  Dim var_298 As Double
  Dim var_1F0 As Variant
  Dim var_2B0 As TextBox
  Dim var_2B8 As TextBox
  Dim var_2C0 As TextBox
  loc_164CC60: Set var_9C = Me.TxtGt
  loc_164CC66: Call 0.Method_Proc_126_89_164E2948 (var_9E, var_86)
  loc_164CC71: For var_A2 =  To var_9E: 1 = var_A2 'Integer
  loc_164CC84:   Set var_9C = Me.TxtGt
  loc_164CC8A:   Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164CC92:   var_A8.Text = vbNullString
  loc_164CCAB:   Set var_9C = Me.LblCap
  loc_164CCB1:   Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164CCDB:   If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_164CCE3:     var_92 = CByte(var_86) 'Byte
  loc_164CCE7:   End If
  loc_164CCF4:   Set var_9C = Me.LblCap
  loc_164CCFA:   Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164CD24:   If (var_A8.Tag = MemVar_1F95070 & "ST") Then
  loc_164CD2C:     var_94 = CByte(var_86) 'Byte
  loc_164CD36:     global_136 = var_86
  loc_164CD39:   End If
  loc_164CD3C: Next var_A2 'Integer
  loc_164CD54: Me.FGCat.Rows = 1
  loc_164CD60: Set var_9C = Me.TopCtrl1
  loc_164CD66: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_164CD7B: If ( = "Add") Then
  loc_164CD7E:   Call Proc_126_94_DFE950()
  loc_164CD83: End If
  loc_164CD8F: Set var_9C = Me.TxtGt
  loc_164CD95: Call 0.Method_Proc_126_89_164E2948 (var_9E, var_86)
  loc_164CDA0: For var_F4 =  To var_9E: 2 = var_F4 'Integer
  loc_164CDB3:   Set var_9C = Me.LblCap
  loc_164CDB9:   Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164CDE3:   If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_164CDF3:     Set var_9C = Me.TxtGt
  loc_164CDF9:     Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164CE01:     var_A8.Text = vbNullString
  loc_164CE17:     If (var_94 > var_92) Then
  loc_164CE3F:       For var_F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_F8 'Integer
  loc_164CE52:         Set var_9C = Me.LblCap
  loc_164CE58:         Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164CE82:         If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_164CE89:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_164CE91:           var_108 = CVar(CLng(&HD)) 'Long
  loc_164CEAB:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164CEBC:           If (var_AC = "Y") Then
  loc_164CEC3:             var_C0 = CVar(CLng(var_88)) 'Long
  loc_164CEDD:             Set var_9C = Me.TxtPer
  loc_164CEE3:             Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC, CVar(CLng(&HB)))
  loc_164CEEB:             var_C0 = var_A8.Text
  loc_164CEFA:             var_E0 = CVar(CStr(Val(var_AC))) 'String
  loc_164CF02:             Set var_12C = Me.FGrid
  loc_164CF08:             LateIdCallSt
  loc_164CF1F:           End If
  loc_164CF1F:         End If
  loc_164CF23:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_164CF2B:         var_108 = CVar(CLng(3)) 'Long
  loc_164CF54:         var_128 = CVar(CLng(var_88)) 'Long
  loc_164CF5C:         var_14C = CVar(CLng(4)) 'Long
  loc_164CF85:         var_16C = CVar(CLng(var_88)) 'Long
  loc_164CF8D:         var_18C = CVar(CLng(&HB)) 'Long
  loc_164CFB6:         var_210 = CVar(CLng(var_88)) 'Long
  loc_164CFBE:         var_230 = CVar(CLng(&HC)) 'Long
  loc_164CFE7:         var_1D0 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_164CFF7:         var_250 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_164CFFF:         Set var_264 = Me.FGrid
  loc_164D005:         LateIdCallSt
  loc_164D036:         var_128 = CVar(CLng(var_88)) 'Long
  loc_164D03E:         var_14C = CVar(CLng(3)) 'Long
  loc_164D067:         var_16C = CVar(CLng(var_88)) 'Long
  loc_164D06F:         var_18C = CVar(CLng(5)) 'Long
  loc_164D078:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_164D080:         var_108 = CVar(CLng(4)) 'Long
  loc_164D0B0:         Set var_12C = Me.FGrid
  loc_164D0B6:         LateIdCallSt
  loc_164D0E3:         var_108 = CVar(CLng(5)) 'Long
  loc_164D114:         Set var_A8 = Me.LblDummy
  loc_164D11A:         Call 0.Method_Proc_126_89_164E2940 (var_86, var_12C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_108, CVar(CLng(var_88)), var_12C, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_164D122:         var_12C.Caption = var_108
  loc_164D13E:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_164D146:         var_108 = CVar(CLng(5)) 'Long
  loc_164D160:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164D16F:         var_128 = CVar(CLng(var_88)) 'Long
  loc_164D177:         var_14C = CVar(CLng(&HC)) 'Long
  loc_164D180:         Set var_A8 = Me.FGrid
  loc_164D1A0:         var_16C = CVar(CLng(var_88)) 'Long
  loc_164D1A8:         var_18C = CVar(CLng(7)) 'Long
  loc_164D1CA:         var_27C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164D1D9:         var_230 = CVar(CLng(8)) 'Long
  loc_164D1FE:         var_1D0 = CVar(((Val(var_AC) - Val(CStr(var_A8.TextMatrix)))) + var_27C)) 'Double
  loc_164D21C:         LateIdCallSt
  loc_164D256:         Set var_9C = Me.LblCap
  loc_164D25C:         Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(var_1D0, "0.00"))), 1, 1)
  loc_164D264:         var_230 = var_A8.Tag
  loc_164D286:         If (var_AC = MemVar_1F95070 & "DIS") Then
  loc_164D296:           Set var_9C = Me.TxtGt
  loc_164D29C:           Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_27C)
  loc_164D2A4:           var_18C = var_A8.Text
  loc_164D2B8:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_164D2E2:           var_274 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164D301:           var_F0 = CVar((Val(var_AC) + var_274)) 'Double
  loc_164D31E:           Set var_264 = Me.TxtGt
  loc_164D324:           Call 0.Method_Proc_126_89_164E2940 (var_86, var_280, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_274)
  loc_164D32C:           var_280.Text = CVar(CLng(&HC))
  loc_164D352:         End If
  loc_164D355:       Next var_F8 'Integer
  loc_164D35D:     Else
  loc_164D382:       For var_284 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_284 'Integer
  loc_164D395:         Set var_9C = Me.LblCap
  loc_164D39B:         Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164D3C5:         If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_164D3CC:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_164D3D4:           var_108 = CVar(CLng(&HD)) 'Long
  loc_164D3EE:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164D3FF:           If (var_AC = "Y") Then
  loc_164D406:             var_C0 = CVar(CLng(var_88)) 'Long
  loc_164D420:             Set var_9C = Me.TxtPer
  loc_164D426:             Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC, CVar(CLng(&HB)))
  loc_164D42E:             var_C0 = var_A8.Text
  loc_164D43D:             var_E0 = CVar(CStr(Val(var_AC))) 'String
  loc_164D445:             Set var_12C = Me.FGrid
  loc_164D44B:             LateIdCallSt
  loc_164D462:           End If
  loc_164D462:         End If
  loc_164D49F:         Set var_A8 = Me.LblDummy
  loc_164D4A5:         Call 0.Method_Proc_126_89_164E2940 (var_86, var_12C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(5)), CVar(CLng(var_88)))
  loc_164D4AD:         var_12C.Caption = var_12C
  loc_164D4C9:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_164D4D1:         var_108 = CVar(CLng(5)) 'Long
  loc_164D4EB:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164D4FA:         var_128 = CVar(CLng(var_88)) 'Long
  loc_164D502:         var_14C = CVar(CLng(&HB)) 'Long
  loc_164D50B:         Set var_A8 = Me.FGrid
  loc_164D524:         var_274 = Val(CStr(var_A8.TextMatrix)))
  loc_164D533:         var_1C0 = CVar(CLng(&HC)) 'Long
  loc_164D576:         LateIdCallSt
  loc_164D5AA:         Set var_9C = Me.LblCap
  loc_164D5B0:         Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_AC) * var_274) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_164D5B8:         var_1C0 = var_A8.Tag
  loc_164D5DA:         If (var_AC = MemVar_1F95070 & "DIS") Then
  loc_164D5EA:           Set var_9C = Me.TxtGt
  loc_164D5F0:           Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_274)
  loc_164D5F8:           var_14C = var_A8.Text
  loc_164D605:           var_26C = Val(var_AC)
  loc_164D60C:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_164D636:           var_274 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164D655:           var_F0 = CVar((var_26C + var_274)) 'Double
  loc_164D672:           Set var_264 = Me.TxtGt
  loc_164D678:           Call 0.Method_Proc_126_89_164E2940 (var_86, var_280, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_274)
  loc_164D680:           var_280.Text = CVar(CLng(&HC))
  loc_164D6A6:         End If
  loc_164D6A9:       Next var_284 'Integer
  loc_164D6AE:     End If
  loc_164D6B1:   Else
  loc_164D6BE:     Set var_9C = Me.TxtPer
  loc_164D6C4:     Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164D6CC:     var_9E = var_A8.Visible
  loc_164D6DE:     If (var_9E = &HFF) Then
  loc_164D6E7:       Call Proc_126_91_10347F0(var_86)
  loc_164D6EF:       var_90 = var_26C
  loc_164D6FF:       Set var_9C = Me.TxtPer
  loc_164D705:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC)
  loc_164D70D:       var_90 = var_A8.Text
  loc_164D71A:       var_26C = Val(var_AC)
  loc_164D75A:       Set var_12C = Me.TxtGt
  loc_164D760:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_264, CStr(Format(CVar(((var_90 * var_26C) / CDbl(&H64))), "0.00")), 1)
  loc_164D768:       var_264.Text = 1
  loc_164D79A:       Set var_9C = Me.LblDummy
  loc_164D7A0:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, CStr(var_90))
  loc_164D7A8:       var_A8.Caption = var_26C
  loc_164D7B7:     End If
  loc_164D7B7:   End If
  loc_164D7BA: Next var_F4 'Integer
  loc_164D7E4: For var_288 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_288 'Integer
  loc_164D7EE:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_164D7F6:   var_108 = CVar(CLng(3)) 'Long
  loc_164D810:   var_AC = CStr(Me.FGrid.TextMatrix))
  loc_164D81F:   var_128 = CVar(CLng(var_86)) 'Long
  loc_164D827:   var_14C = CVar(CLng(4)) 'Long
  loc_164D830:   Set var_A8 = Me.FGrid
  loc_164D850:   var_18C = CVar(CLng(var_86)) 'Long
  loc_164D858:   var_1C0 = CVar(CLng(5)) 'Long
  loc_164D897:   LateIdCallSt
  loc_164D8CA:   Set var_9C = Me.TxtGt
  loc_164D8D0:   Call 0.Method_Proc_126_89_164E2940 (1, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar((Val(var_AC) * Val(CStr(var_A8.TextMatrix))))), "0.00"))), 1, 1)
  loc_164D8D8:   var_1C0 = var_A8.Text
  loc_164D8E5:   var_26C = Val(var_AC)
  loc_164D916:   var_274 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164D935:   var_F0 = CVar((var_26C + var_274)) 'Double
  loc_164D951:   Set var_264 = Me.TxtGt
  loc_164D957:   Call 0.Method_Proc_126_89_164E2940 (1, var_280, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_274, CVar(CLng(5)))
  loc_164D95F:   var_280.Text = CVar(CLng(var_86))
  loc_164D988: Next var_288 'Integer
  loc_164D9A0: Me.FGCat.Rows = 1
  loc_164D9CD: For var_28C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_28C 'Integer
  loc_164D9DD:   If (var_94 > var_92) Then
  loc_164D9E4:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_164D9EC:     var_108 = CVar(CLng(&H10)) 'Long
  loc_164DA0B:     var_128 = CVar(CLng(var_86)) 'Long
  loc_164DA13:     var_14C = CVar(CLng(4)) 'Long
  loc_164DA3C:     var_16C = CVar(CLng(var_86)) 'Long
  loc_164DA44:     var_18C = CVar(CLng(3)) 'Long
  loc_164DA7E:     Set var_264 = Me.FGrid
  loc_164DA97:     var_298 = Val(CStr(var_264.TextMatrix)))
  loc_164DABA:     var_1F0 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_298)) 'Double
  loc_164DAD9:     Call Proc_126_95_1636574(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 1, 1, var_298, CVar(CLng(&HC)), CVar(CLng(var_86)))
  loc_164DB08:   Else
  loc_164DB0C:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_164DB14:     var_108 = CVar(CLng(&H10)) 'Long
  loc_164DB33:     var_128 = CVar(CLng(var_86)) 'Long
  loc_164DB3B:     var_14C = CVar(CLng(4)) 'Long
  loc_164DB44:     Set var_A8 = Me.FGrid
  loc_164DB8E:     var_27C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_164DBCC:     Call Proc_126_95_1636574(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(var_A8.TextMatrix))) * var_27C)), "0.00")), 1, 1, var_27C, CVar(CLng(3)), CVar(CLng(var_86)))
  loc_164DBF2:   End If
  loc_164DBF5: Next var_28C 'Integer
  loc_164DBFE: Set var_9C = Me.TopCtrl1
  loc_164DC04: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_164DC19: If ( = "Add") Then
  loc_164DC28:   Set var_9C = Me.TxtGt
  loc_164DC2E:   Call 0.Method_Proc_126_89_164E2948 (var_9E, var_86)
  loc_164DC39:   For var_29C =  To var_9E: 2 = var_29C 'Integer
  loc_164DC4C:     Set var_9C = Me.TxtPer
  loc_164DC52:     Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164DC5A:     var_9E = var_A8.Visible
  loc_164DC72:     Set var_12C = Me.LblCap
  loc_164DC78:     Call 0.Method_Proc_126_89_164E2940 (var_86, var_264)
  loc_164DC80:     var_AC = var_264.Tag
  loc_164DCA7:     If ((var_9E = &HFF) And (var_AC = MemVar_1F95070 & "SCH")) Then
  loc_164DCB0:       Call Proc_126_91_10347F0(var_86)
  loc_164DCB8:       var_90 = var_26C
  loc_164DCC8:       Set var_9C = Me.TxtPer
  loc_164DCCE:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC)
  loc_164DCD6:       var_90 = var_A8.Text
  loc_164DCE3:       var_26C = Val(var_AC)
  loc_164DD23:       Set var_12C = Me.TxtGt
  loc_164DD29:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_264, CStr(Format(CVar(((var_90 * var_26C) / CDbl(&H64))), "0.00")), 1)
  loc_164DD31:       var_264.Text = 1
  loc_164DD63:       Set var_9C = Me.LblDummy
  loc_164DD69:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, CStr(var_90))
  loc_164DD71:       var_A8.Caption = var_26C
  loc_164DD80:     End If
  loc_164DD83:   Next var_29C 'Integer
  loc_164DD88: End If
  loc_164DDA7: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_164DDBD:   Me.FGCat.FixedRows = 1
  loc_164DDC5: End If
  loc_164DDF3: For var_2A0 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_2A0 'Integer
  loc_164DE05:   Set var_9C = Me.TxtGt
  loc_164DE0B:   Call 0.Method_Proc_126_89_164E2948 (var_9E, var_86, 1)
  loc_164DE16:   For var_2A4 = CDbl(0) To var_9E: 0 = var_2A4 'Integer
  loc_164DE29:     Set var_9C = Me.LblDummy
  loc_164DE2F:     Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164DE37:     var_AC = var_A8.Tag
  loc_164DE43:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_164DE7D:     If (CVar(CLng(2)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_164DE8D:       Set var_9C = Me.TxtGt
  loc_164DE93:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC)
  loc_164DE9B:       var_C0 = var_A8.Text
  loc_164DEA8:       var_26C = Val(var_AC)
  loc_164DEAF:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_164DED9:       var_274 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_164DEF8:       var_F0 = CVar((var_26C + var_274)) 'Double
  loc_164DF07:       var_1B0 = CStr(Format("0.00", "0.00"))
  loc_164DF15:       Set var_264 = Me.TxtGt
  loc_164DF1B:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_280, var_1B0, 1, 1, var_274)
  loc_164DF23:       var_280.Text = CVar(CLng(6))
  loc_164DF49:     End If
  loc_164DF4C:   Next var_2A4 'Integer
  loc_164DF54: Next var_2A0 'Integer
  loc_164DF65: Set var_9C = Me.TxtGt
  loc_164DF6B: Call 0.Method_Proc_126_89_164E2948 (var_9E, var_86)
  loc_164DF76: For var_2A8 =  To var_9E: 2 = var_2A8 'Integer
  loc_164DF89:   Set var_9C = Me.LblCap
  loc_164DF8F:   Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8)
  loc_164DFB9:   If (var_A8.Tag = MemVar_1F95070 & "ROFF") Then
  loc_164DFC2:     Call Proc_126_91_10347F0(var_86)
  loc_164DFCA:     var_90 = var_26C
  loc_164DFDF:     Set var_9C = Me.LblDummy
  loc_164DFE5:     Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, CStr(var_90))
  loc_164DFED:     var_A8.Caption = var_90
  loc_164E005:     var_AC = "U"
  loc_164E016:     Proc_6_142_14A62A0(var_90, CByte(0), var_AC)
  loc_164E053:     Set var_9C = Me.TxtGt
  loc_164E059:     Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, CStr(Format(CVar(2), "0.00")), 1)
  loc_164E061:     var_A8.Text = 1
  loc_164E080:   Else
  loc_164E087:     If (var_86 <> arg_C) Then
  loc_164E097:       Set var_9C = Me.LblCap
  loc_164E09D:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, var_AC)
  loc_164E0A5:       var_26C = var_A8.Tag
  loc_164E0C6:       Set var_12C = Me.LblCap
  loc_164E0CC:       Call 0.Method_Proc_126_89_164E2940 (var_86, var_264, var_1B0)
  loc_164E0D4:       (var_AC = MemVar_1F95070 & "TOT") = var_264.Tag
  loc_164E0FF:       If (var_26C Or (var_1B0 = MemVar_1F95070 & "NET")) Then
  loc_164E108:         Call Proc_126_91_10347F0(var_86)
  loc_164E142:         Set var_9C = Me.TxtGt
  loc_164E148:         Call 0.Method_Proc_126_89_164E2940 (var_86, var_A8, CStr(Format(CVar(var_26C), "0.00")))
  loc_164E150:         var_A8.Text = 1
  loc_164E168:       End If
  loc_164E168:     End If
  loc_164E168:   End If
  loc_164E16B: Next var_2A8 'Integer
  loc_164E177: Set var_9C = Me.TxtGt
  loc_164E17D: Call 0.Method_Proc_126_89_164E2948 (var_9E)
  loc_164E18F: Set var_A8 = Me.TxtGt
  loc_164E195: Call 0.Method_Proc_126_89_164E2940 (var_9E, var_12C)
  loc_164E1B4: Set var_264 = Me.TextGt
  loc_164E1BA: Call 0.Method_Proc_126_89_164E2948 (var_2AA)
  loc_164E1CC: Set var_280 = Me.TextGt
  loc_164E1D2: Call 0.Method_Proc_126_89_164E2940 (var_2AA, var_2B0)
  loc_164E1E7: var_274 = Val(var_2B0.Text)
  loc_164E1F8: Set var_2B4 = Me.Txt
  loc_164E1FE: Call 0.Method_Proc_126_89_164E2940 (CInt(8), var_2B8, var_1B0)
  loc_164E236: var_E0 = CVar(((Val(var_12C.Text) + var_2B8.Text) - Val(var_1B0))) 'Double
  loc_164E254: Set var_2BC = Me.Txt
  loc_164E25A: Call 0.Method_Proc_126_89_164E2940 (CInt(&H14), var_2C0, CStr(Format(CVar(Val(var_12C.Text)), "0.00")), 1)
  loc_164E262: var_2C0.Text = 1
  loc_164E292: Exit Sub
End Sub

Public Sub Proc_126_90_14ACC4C(arg_C) '14ACC4C
  'Data Table: 55BD00
  Dim var_A0 As Variant
  Dim var_114 As Double
  Dim var_AC As Variant
  Dim var_11C As Double
  Dim var_D0 As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_C0 As Variant
  Dim var_138 As Variant
  Dim var_A8 As Variant
  Dim var_F0 As Variant
  Dim var_104 As TextBox
  Dim var_90 As Double
  Dim var_A4 As String
  Dim var_9C As MSHFlexGrid
  Dim var_198 As TextBox
  Dim var_1A0 As TextBox
  loc_14ABF9A: Set var_9C = Me.Txt
  loc_14ABFA0: Call 0.Method_Proc_126_90_14ACC4C0 (CInt(&H11), var_A0)
  loc_14ABFB5: var_114 = Val(var_A0.Text)
  loc_14ABFC6: Set var_A8 = Me.Txt
  loc_14ABFCC: Call 0.Method_Proc_126_90_14ACC4C0 (CInt(&H12), var_AC)
  loc_14AC01C: Set var_104 = Me.TextGt
  loc_14AC022: Call 0.Method_Proc_126_90_14ACC4C0 (1, var_108, CStr(Format(CVar((var_114 * Val(var_AC.Text))), "0.00")), 1)
  loc_14AC02A: var_108.Text = 1
  loc_14AC05C: Set var_9C = Me.TextGt
  loc_14AC062: Call 0.Method_Proc_126_90_14ACC4C8 (var_11E, var_86, 1)
  loc_14AC06D: For var_122 = var_114 To var_11E: var_11C = var_122 'Integer
  loc_14AC080:   Set var_9C = Me.LableCap
  loc_14AC086:   Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC0B0:   If (var_A0.Tag = MemVar_1F95070 & "DIS") Then
  loc_14AC0B8:     var_92 = CByte(var_86) 'Byte
  loc_14AC0BC:   End If
  loc_14AC0C9:   Set var_9C = Me.LableCap
  loc_14AC0CF:   Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC0F9:   If (var_A0.Tag = MemVar_1F95070 & "ST") Then
  loc_14AC101:     var_94 = CByte(var_86) 'Byte
  loc_14AC10B:     global_136 = var_86
  loc_14AC10E:   End If
  loc_14AC111: Next var_122 'Integer
  loc_14AC122: Set var_9C = Me.TextGt
  loc_14AC128: Call 0.Method_Proc_126_90_14ACC4C8 (var_11E, var_86)
  loc_14AC133: For var_126 =  To var_11E: 2 = var_126 'Integer
  loc_14AC146:   Set var_9C = Me.LableCap
  loc_14AC14C:   Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC176:   If (var_A0.Tag = MemVar_1F95070 & "DIS") Then
  loc_14AC183:     If (var_94 > var_92) Then
  loc_14AC193:       Set var_9C = Me.LableCap
  loc_14AC199:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC1C3:       If (var_A0.Tag = MemVar_1F95070 & "DIS") Then
  loc_14AC1D3:         Set var_9C = Me.TextGt
  loc_14AC1D9:         Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC1E1:         var_A4 = var_A0.Text
  loc_14AC226:         Set var_A8 = Me.TextGt
  loc_14AC22C:         Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_AC, CStr(Format(CVar(Val(var_A4)), "0.00")))
  loc_14AC234:         var_AC.Text = 1
  loc_14AC254:       End If
  loc_14AC257:     Else
  loc_14AC264:       Set var_9C = Me.LableCap
  loc_14AC26A:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, var_A4)
  loc_14AC272:       1 = var_A0.Tag
  loc_14AC294:       If (var_A4 = MemVar_1F95070 & "DIS") Then
  loc_14AC2A4:         Set var_9C = Me.TextGt
  loc_14AC2AA:         Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC2B2:         var_A4 = var_A0.Text
  loc_14AC2BF:         var_114 = Val(var_A4)
  loc_14AC2C6:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_14AC2CE:         var_138 = CVar(CLng(&HC)) 'Long
  loc_14AC2F0:         var_11C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AC30F:         var_F0 = CVar((var_114 + var_11C)) 'Double
  loc_14AC32C:         Set var_AC = Me.TextGt
  loc_14AC332:         Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_104, CStr(Format("0.00", "0.00")), 1, 1)
  loc_14AC33A:         var_104.Text = var_11C
  loc_14AC360:       End If
  loc_14AC360:     End If
  loc_14AC363:   Else
  loc_14AC370:     Set var_9C = Me.TextPer
  loc_14AC376:     Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, var_11E, var_138)
  loc_14AC37E:     var_C0 = var_A0.Visible
  loc_14AC390:     If (var_11E = &HFF) Then
  loc_14AC399:       Call Proc_126_92_10342D8(var_86, var_114)
  loc_14AC3A1:       var_90 = var_114
  loc_14AC3B1:       Set var_9C = Me.TextPer
  loc_14AC3B7:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, var_A4)
  loc_14AC3BF:       var_90 = var_A0.Text
  loc_14AC3CC:       var_114 = Val(var_A4)
  loc_14AC40C:       Set var_A8 = Me.TextGt
  loc_14AC412:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14AC41A:       var_AC.Text = 1
  loc_14AC44C:       Set var_9C = Me.LableDummy
  loc_14AC452:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, CStr(var_90))
  loc_14AC45A:       var_A0.Caption = var_114
  loc_14AC469:     End If
  loc_14AC469:   End If
  loc_14AC46C: Next var_126 'Integer
  loc_14AC475: Set var_9C = Me.TopCtrl1
  loc_14AC47B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_14AC490: If ( = "Add") Then
  loc_14AC49F:   Set var_9C = Me.TextGt
  loc_14AC4A5:   Call 0.Method_Proc_126_90_14ACC4C8 (var_11E, var_86)
  loc_14AC4B0:   For var_17C =  To var_11E: 2 = var_17C 'Integer
  loc_14AC4C3:     Set var_9C = Me.TextPer
  loc_14AC4C9:     Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC4E9:     Set var_A8 = Me.LableCap
  loc_14AC4EF:     Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_AC)
  loc_14AC4F7:     var_A4 = var_AC.Tag
  loc_14AC51E:     If ((var_A0.Visible = &HFF) And (var_A4 = MemVar_1F95070 & "SCH")) Then
  loc_14AC527:       Call Proc_126_92_10342D8(var_86)
  loc_14AC52F:       var_90 = var_114
  loc_14AC53F:       Set var_9C = Me.TextPer
  loc_14AC545:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, var_A4)
  loc_14AC54D:       var_90 = var_A0.Text
  loc_14AC55A:       var_114 = Val(var_A4)
  loc_14AC59A:       Set var_A8 = Me.TextGt
  loc_14AC5A0:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14AC5A8:       var_AC.Text = 1
  loc_14AC5CD:       var_A4 = CStr(var_90)
  loc_14AC5DA:       Set var_9C = Me.LableDummy
  loc_14AC5E0:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, var_A4)
  loc_14AC5E8:       var_A0.Caption = var_114
  loc_14AC5F7:     End If
  loc_14AC604:     Set var_9C = Me.TextPer
  loc_14AC60A:     Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC612:     var_11E = var_A0.Visible
  loc_14AC62A:     Set var_A8 = Me.LableCap
  loc_14AC630:     Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_AC, var_A4)
  loc_14AC638:     (var_11E = &HFF) = var_AC.Tag
  loc_14AC65F:     If (var_114 And (var_A4 = MemVar_1F95070 & "DIS")) Then
  loc_14AC668:       Call Proc_126_92_10342D8(var_86)
  loc_14AC670:       var_90 = var_114
  loc_14AC680:       Set var_9C = Me.TextPer
  loc_14AC686:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, var_A4)
  loc_14AC68E:       var_90 = var_A0.Text
  loc_14AC69B:       var_114 = Val(var_A4)
  loc_14AC6DB:       Set var_A8 = Me.TextGt
  loc_14AC6E1:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_AC, CStr(Format(CVar(((var_90 * var_114) / CDbl(&H64))), "0.00")), 1)
  loc_14AC6E9:       var_AC.Text = 1
  loc_14AC71B:       Set var_9C = Me.LableDummy
  loc_14AC721:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, CStr(var_90))
  loc_14AC729:       var_A0.Caption = var_114
  loc_14AC738:     End If
  loc_14AC73B:   Next var_17C 'Integer
  loc_14AC740: End If
  loc_14AC75F: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_14AC775:   Me.FGCat.FixedRows = 1
  loc_14AC77D: End If
  loc_14AC7AB: For var_180 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_180 'Integer
  loc_14AC7BD:   Set var_9C = Me.TextGt
  loc_14AC7C3:   Call 0.Method_Proc_126_90_14ACC4C8 (var_11E, var_86, 1)
  loc_14AC7CE:   For var_184 = CDbl(0) To var_11E: 0 = var_184 'Integer
  loc_14AC7E1:     Set var_9C = Me.LableDummy
  loc_14AC7E7:     Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC7EF:     var_A4 = var_A0.Tag
  loc_14AC7FB:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_14AC835:     If (CVar(CLng(2)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_14AC845:       Set var_9C = Me.TextGt
  loc_14AC84B:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, var_A4)
  loc_14AC853:       var_C0 = var_A0.Text
  loc_14AC860:       var_114 = Val(var_A4)
  loc_14AC867:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_14AC891:       var_11C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_14AC8B0:       var_F0 = CVar((var_114 + var_11C)) 'Double
  loc_14AC8BF:       var_10C = CStr(Format("0.00", "0.00"))
  loc_14AC8CD:       Set var_AC = Me.TextGt
  loc_14AC8D3:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_104, var_10C, 1, 1, var_11C)
  loc_14AC8DB:       var_104.Text = CVar(CLng(6))
  loc_14AC901:     End If
  loc_14AC904:   Next var_184 'Integer
  loc_14AC90C: Next var_180 'Integer
  loc_14AC91D: Set var_9C = Me.TextGt
  loc_14AC923: Call 0.Method_Proc_126_90_14ACC4C8 (var_11E, var_86)
  loc_14AC92E: For var_188 =  To var_11E: 2 = var_188 'Integer
  loc_14AC941:   Set var_9C = Me.LableCap
  loc_14AC947:   Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0)
  loc_14AC971:   If (var_A0.Tag = MemVar_1F95070 & "ROFF") Then
  loc_14AC97A:     Call Proc_126_92_10342D8(var_86)
  loc_14AC982:     var_90 = var_114
  loc_14AC997:     Set var_9C = Me.LableDummy
  loc_14AC99D:     Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, CStr(var_90))
  loc_14AC9A5:     var_A0.Caption = var_90
  loc_14AC9BD:     var_A4 = "U"
  loc_14AC9CE:     Proc_6_142_14A62A0(var_90, CByte(0), var_A4)
  loc_14ACA0B:     Set var_9C = Me.TextGt
  loc_14ACA11:     Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, CStr(Format(CVar(2), "0.00")), 1)
  loc_14ACA19:     var_A0.Text = 1
  loc_14ACA38:   Else
  loc_14ACA3F:     If (var_86 <> arg_C) Then
  loc_14ACA4F:       Set var_9C = Me.LableCap
  loc_14ACA55:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, var_A4)
  loc_14ACA5D:       var_114 = var_A0.Tag
  loc_14ACA7E:       Set var_A8 = Me.LableCap
  loc_14ACA84:       Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_AC, var_10C)
  loc_14ACA8C:       (var_A4 = MemVar_1F95070 & "TOT") = var_AC.Tag
  loc_14ACAB7:       If (var_114 Or (var_10C = MemVar_1F95070 & "NET")) Then
  loc_14ACAC0:         Call Proc_126_92_10342D8(var_86)
  loc_14ACAFA:         Set var_9C = Me.TextGt
  loc_14ACB00:         Call 0.Method_Proc_126_90_14ACC4C0 (var_86, var_A0, CStr(Format(CVar(var_114), "0.00")))
  loc_14ACB08:         var_A0.Text = 1
  loc_14ACB20:       End If
  loc_14ACB20:     End If
  loc_14ACB20:   End If
  loc_14ACB23: Next var_188 'Integer
  loc_14ACB2F: Set var_9C = Me.TxtGt
  loc_14ACB35: Call 0.Method_Proc_126_90_14ACC4C8 (var_11E)
  loc_14ACB47: Set var_A0 = Me.TxtGt
  loc_14ACB4D: Call 0.Method_Proc_126_90_14ACC4C0 (var_11E, var_A8)
  loc_14ACB6C: Set var_AC = Me.TextGt
  loc_14ACB72: Call 0.Method_Proc_126_90_14ACC4C8 (var_18A)
  loc_14ACB84: Set var_104 = Me.TextGt
  loc_14ACB8A: Call 0.Method_Proc_126_90_14ACC4C0 (var_18A, var_108)
  loc_14ACB9F: var_11C = Val(var_108.Text)
  loc_14ACBB0: Set var_194 = Me.Txt
  loc_14ACBB6: Call 0.Method_Proc_126_90_14ACC4C0 (CInt(8), var_198, var_10C)
  loc_14ACBEE: var_D0 = CVar(((Val(var_A8.Text) + var_198.Text) - Val(var_10C))) 'Double
  loc_14ACC0C: Set var_19C = Me.Txt
  loc_14ACC12: Call 0.Method_Proc_126_90_14ACC4C0 (CInt(&H14), var_1A0, CStr(Format(CVar(Val(var_A8.Text)), "0.00")), 1)
  loc_14ACC1A: var_1A0.Text = 1
  loc_14ACC4A: Exit Sub
End Sub

Public Sub Proc_126_91_10347F0(arg_C) '10347F0
  'Data Table: 55BD00
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_10345D1: Set var_9C = Me.TxtGt
  loc_10345D7: Call 0.Method_Proc_126_91_10347F00 (arg_C, var_A0)
  loc_10345F6: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_1034611: If (Len(var_90) > 0) Then
  loc_103462C:   var_A4 = CStr(Left(var_90, 1))
  loc_1034646:   Set var_9C = Me.TxtGt
  loc_103464C:   Call 0.Method_Proc_126_91_10347F00 (CInt(Val(var_A4)), var_A0)
  loc_1034654:   var_D8 = var_A0.Text
  loc_1034661:   var_8C = Val(var_D8)
  loc_1034696:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_10346A0:   ' Referenced from: 10347E5
  loc_10346AA:   If (Len(var_90) > 0) Then
  loc_10346ED:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1034737:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_103474E:     Set var_9C = Me.TxtGt
  loc_1034754:     Call 0.Method_Proc_126_91_10347F00 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_1034769:     var_E0 = Val(var_A4)
  loc_1034780:     Set var_F4 = Me.TxtGt
  loc_1034786:     Call 0.Method_Proc_126_91_10347F00 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_103479C:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_10347AF:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_10347BE:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_10347C3:     var_8C = CSng(var_138)
  loc_10347E5:     GoTo loc_10346A0
  loc_10347E8:   End If
  loc_10347E8: End If
  loc_10347E8: Proc_126_91_10347F0 = var_8C
End Sub

Public Sub Proc_126_92_10342D8(arg_C) '10342D8
  'Data Table: 55BD00
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_10340B9: Set var_9C = Me.TextGt
  loc_10340BF: Call 0.Method_Proc_126_92_10342D80 (arg_C, var_A0)
  loc_10340DE: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_10340F9: If (Len(var_90) > 0) Then
  loc_1034114:   var_A4 = CStr(Left(var_90, 1))
  loc_103412E:   Set var_9C = Me.TextGt
  loc_1034134:   Call 0.Method_Proc_126_92_10342D80 (CInt(Val(var_A4)), var_A0)
  loc_103413C:   var_D8 = var_A0.Text
  loc_1034149:   var_8C = Val(var_D8)
  loc_103417E:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1034188:   ' Referenced from: 10342CD
  loc_1034192:   If (Len(var_90) > 0) Then
  loc_10341D5:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_103421F:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1034236:     Set var_9C = Me.TextGt
  loc_103423C:     Call 0.Method_Proc_126_92_10342D80 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_1034251:     var_E0 = Val(var_A4)
  loc_1034268:     Set var_F4 = Me.TextGt
  loc_103426E:     Call 0.Method_Proc_126_92_10342D80 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_1034284:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_1034297:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_10342A6:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_10342AB:     var_8C = CSng(var_138)
  loc_10342CD:     GoTo loc_1034188
  loc_10342D0:   End If
  loc_10342D0: End If
  loc_10342D0: Proc_126_92_10342D8 = var_8C
End Sub

Public Sub Proc_126_93_10A58E4
  'Data Table: 55BD00
  Dim var_9C As Variant
  loc_10A561C: Set var_90 = Me.TxtGt
  loc_10A5622: Call 0.Method_Proc_126_93_10A58E48 (var_92, var_86)
  loc_10A562D: For var_96 =  To var_92: 1 = var_96 'Integer
  loc_10A5640:   Set var_90 = Me.LblCap
  loc_10A5646:   Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A5665:   If (var_9C.Tag = "STOT") Then
  loc_10A5675:     Set var_90 = Me.TxtGt
  loc_10A567B:     Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A5683:     var_9C.Text = vbNullString
  loc_10A5692:   Else
  loc_10A569F:     Set var_90 = Me.LblCap
  loc_10A56A5:     Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A56C4:     If (var_9C.Tag = "SDIS") Then
  loc_10A56D4:       Set var_90 = Me.TxtGt
  loc_10A56DA:       Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A56E2:       var_9C.Text = vbNullString
  loc_10A56F1:     Else
  loc_10A56FE:       Set var_90 = Me.LblCap
  loc_10A5704:       Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A5723:       If (var_9C.Tag = "SST") Then
  loc_10A5733:         Set var_90 = Me.TxtGt
  loc_10A5739:         Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A5741:         var_9C.Text = vbNullString
  loc_10A5750:       Else
  loc_10A575D:         Set var_90 = Me.LblCap
  loc_10A5763:         Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A5782:         If (var_9C.Tag = "SSTX") Then
  loc_10A5785:           GoTo loc_10A58DA
  loc_10A5788:         End If
  loc_10A5795:         Set var_90 = Me.LblCap
  loc_10A579B:         Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A57BA:         If (var_9C.Tag = "SSCH") Then
  loc_10A57BD:           GoTo loc_10A58DA
  loc_10A57C0:         End If
  loc_10A57CD:         Set var_90 = Me.LblCap
  loc_10A57D3:         Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A57F2:         If (var_9C.Tag = "SADD") Then
  loc_10A5802:           Set var_90 = Me.TxtGt
  loc_10A5808:           Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A5810:           var_9C.Text = vbNullString
  loc_10A581F:         Else
  loc_10A582C:           Set var_90 = Me.LblCap
  loc_10A5832:           Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A5851:           If (var_9C.Tag = "SDED") Then
  loc_10A5861:             Set var_90 = Me.TxtGt
  loc_10A5867:             Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A586F:             var_9C.Text = vbNullString
  loc_10A587E:           Else
  loc_10A588B:             Set var_90 = Me.LblCap
  loc_10A5891:             Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A58B0:             If (var_9C.Tag = "SNET") Then
  loc_10A58C0:               Set var_90 = Me.TxtGt
  loc_10A58C6:               Call 0.Method_Proc_126_93_10A58E40 (var_86, var_9C)
  loc_10A58CE:               var_9C.Text = vbNullString
  loc_10A58DA:             End If
  loc_10A58DA:           End If
  loc_10A58DA:           ' Referenced from:       10A57BD
  loc_10A58DA:           ' Referenced from:       10A5785
  loc_10A58DA:         End If
  loc_10A58DA:       End If
  loc_10A58DA:     End If
  loc_10A58DA:   End If
  loc_10A58DD: Next var_96 'Integer
  loc_10A58E2: Exit Sub
End Sub

Public Sub Proc_126_94_DFE950
  'Data Table: 55BD00
  loc_DFE94C: Exit Sub
End Sub

Public Sub Proc_126_95_1636574(arg_C, arg_10, arg_14) '1636574
  'Data Table: 55BD00
  Dim var_D8 As String
  Dim unk_55BD25 As Connection15
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_EC As Variant
  Dim var_D2 As Integer
  Dim var_100 As Variant
  Dim var_FC As Variant
  Dim var_130 As Variant
  Dim var_11C As Variant
  Dim var_D0 As Double
  Dim var_140 As Variant
  Dim var_178 As Variant
  Dim var_1AC As Variant
  Dim var_1EC As Variant
  Dim var_21C As Variant
  Dim var_19C As Integer
  Dim var_23C As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_158 As Double
  Dim var_9C As Double
  loc_163500C: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_163501C: unk_55BD25.Execute var_D8 & "'", var_FC, -1
  loc_1635027: Set var_8C = var_100
  loc_163503A: var_94 = arg_14
  loc_163503F: var_86 = 1
  loc_1635045: var_A8 = var_94
  loc_163504B: var_B0 = var_94
  loc_1635051: var_B8 = CDbl(0)
  loc_1635068: If (var_8C.RecordCount > 0) Then
  loc_163506B:   ' Referenced from: 1636556
  loc_163507A:   If Not(var_8C.EOF) Then
  loc_1635081:     Set var_10C = Me.FGCat
  loc_1635084:     var_EC = vbNullString
  loc_16350A9:     If (var_8C.RecordCount > 0) Then
  loc_16350B2:       var_D2 = (var_D2 + 1)
  loc_16350B8:       var_EC = "Nature"
  loc_16350DD:       var_130 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8)) 'String
  loc_16350EB:       var_150 = Trim(var_130) 'Variant
  loc_1635104:       If (var_150 = "On Base Amt") Then
  loc_1635143:         If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1635181:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1635194:         Else
  loc_16351F0:           Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0)
  loc_16351F5:           var_D0 = var_B0
  loc_1635209:         End If
  loc_163522F:         Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_A8)
  loc_1635269:         Proc_6_39_E7D3A0(var_19C, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)))
  loc_1635293:         If CBool(var_86 And (var_19C > 0)) Then
  loc_163529D:           If (var_D0 > CDbl(0)) Then
  loc_16352B9:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16352C1:             var_178 = CVar(CLng(0)) 'Long
  loc_16352CB:             var_130 = CVar(CStr(var_86)) 'String
  loc_16352D2:             LateIdCallSt
  loc_16352FD:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635305:             var_178 = CVar(CLng(1)) 'Long
  loc_163530F:             var_130 = CVar(CStr(arg_10)) 'String
  loc_1635316:             LateIdCallSt
  loc_1635341:             var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635349:             var_1AC = CVar(CLng(2)) 'Long
  loc_1635379:             var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1635380:             LateIdCallSt
  loc_16353B3:             var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16353BB:             var_1AC = CVar(CLng(3)) 'Long
  loc_16353EB:             var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16353F2:             LateIdCallSt
  loc_1635425:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_163542D:             var_178 = CVar(CLng(4)) 'Long
  loc_1635437:             var_130 = CVar(CStr(var_A8)) 'String
  loc_163543E:             LateIdCallSt
  loc_1635469:             var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635471:             var_1AC = CVar(CLng(5)) 'Long
  loc_16354A1:             var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16354A8:             LateIdCallSt
  loc_1635502:             var_1EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_163550A:             var_21C = CVar(CLng(6)) 'Long
  loc_163554E:             var_23C = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1635555:             LateIdCallSt
  loc_1635579:           End If
  loc_1635592:           var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_163559A:           var_178 = CVar(CLng(6)) 'Long
  loc_16355BF:           var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_16355E8:           var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16355F0:           var_178 = CVar(CLng(6)) 'Long
  loc_16355F8:           var_130 = var_10C.TextMatrix)
  loc_163560B:           var_158 = Val(CStr(var_130))
  loc_1635615:           var_94 = (var_94 + var_158)
  loc_163562C:           var_B0 = (var_B0 + var_D0)
  loc_1635632:           var_B8 = var_D0
  loc_1635635:         End If
  loc_1635638:       Else
  loc_1635643:         If (var_150 = "On Running Total") Then
  loc_1635682:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_16356C0:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_16356D3:           Else
  loc_163572F:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1635734:             var_D0 = var_94
  loc_1635748:           End If
  loc_163576E:           Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_158, var_178)
  loc_1635788:           If (var_130 > 0) Then
  loc_1635792:             If (var_D0 > CDbl(0)) Then
  loc_16357AE:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16357B6:               var_178 = CVar(CLng(0)) 'Long
  loc_16357C0:               var_130 = CVar(CStr(var_86)) 'String
  loc_16357C7:               LateIdCallSt
  loc_16357F2:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16357FA:               var_178 = CVar(CLng(1)) 'Long
  loc_1635804:               var_130 = CVar(CStr(arg_10)) 'String
  loc_163580B:               LateIdCallSt
  loc_1635836:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_163583E:               var_1AC = CVar(CLng(2)) 'Long
  loc_163586E:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1635875:               LateIdCallSt
  loc_16358A8:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16358B0:               var_1AC = CVar(CLng(3)) 'Long
  loc_16358E0:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16358E7:               LateIdCallSt
  loc_163591A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635922:               var_178 = CVar(CLng(4)) 'Long
  loc_163592C:               var_130 = CVar(CStr(var_B0)) 'String
  loc_1635933:               LateIdCallSt
  loc_163595E:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635966:               var_1AC = CVar(CLng(5)) 'Long
  loc_1635996:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_163599D:               LateIdCallSt
  loc_16359F7:               var_1EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16359FF:               var_21C = CVar(CLng(6)) 'Long
  loc_1635A43:               var_23C = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1635A4A:               LateIdCallSt
  loc_1635A6E:             End If
  loc_1635A87:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635A8F:             var_178 = CVar(CLng(6)) 'Long
  loc_1635AB4:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1635ADD:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635AE5:             var_178 = CVar(CLng(6)) 'Long
  loc_1635B0A:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_1635B21:             var_B0 = (var_B0 + var_D0)
  loc_1635B27:             var_B8 = var_D0
  loc_1635B2A:           End If
  loc_1635B2D:         Else
  loc_1635B38:           If (var_150 = "On Prev. Tax Amt") Then
  loc_1635B77:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1635BB5:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_1635BC8:             Else
  loc_1635C24:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1635C29:               var_D0 = var_94
  loc_1635C3D:             End If
  loc_1635C44:             If (var_D0 > CDbl(0)) Then
  loc_1635C60:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635C68:               var_178 = CVar(CLng(0)) 'Long
  loc_1635C72:               var_130 = CVar(CStr(var_86)) 'String
  loc_1635C79:               LateIdCallSt
  loc_1635CA4:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635CAC:               var_178 = CVar(CLng(1)) 'Long
  loc_1635CB6:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1635CBD:               LateIdCallSt
  loc_1635CE8:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635CF0:               var_1AC = CVar(CLng(2)) 'Long
  loc_1635D20:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1635D27:               LateIdCallSt
  loc_1635D5A:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635D62:               var_1AC = CVar(CLng(3)) 'Long
  loc_1635D92:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1635D99:               LateIdCallSt
  loc_1635DCC:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635DD4:               var_178 = CVar(CLng(4)) 'Long
  loc_1635DDE:               var_130 = CVar(CStr(var_B8)) 'String
  loc_1635DE5:               LateIdCallSt
  loc_1635E10:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635E18:               var_1AC = CVar(CLng(5)) 'Long
  loc_1635E48:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1635E4F:               LateIdCallSt
  loc_1635EA9:               var_1EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635EB1:               var_21C = CVar(CLng(6)) 'Long
  loc_1635EB6:               var_19C = 2
  loc_1635EF5:               var_23C = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_19C))))) 'String
  loc_1635EFC:               LateIdCallSt
  loc_1635F20:             End If
  loc_1635F39:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635F41:             var_178 = CVar(CLng(6)) 'Long
  loc_1635F66:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1635F8F:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1635F97:             var_178 = CVar(CLng(6)) 'Long
  loc_1635F9F:             var_130 = var_10C.TextMatrix)
  loc_1635FB2:             var_158 = Val(CStr(var_130))
  loc_1635FBC:             var_94 = (var_94 + var_158)
  loc_1635FD3:             var_B0 = (var_B0 + var_D0)
  loc_1635FD9:             var_B8 = var_D0
  loc_1635FDF:           Else
  loc_163601B:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1636059:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_163606C:             Else
  loc_16360C8:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_16360CD:               var_D0 = var_94
  loc_16360E1:             End If
  loc_16360E4:             var_EC = "Limit"
  loc_1636107:             Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_158, var_178)
  loc_1636141:             Proc_6_39_E7D3A0(var_19C, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_163616B:             If CBool(var_9C And (var_19C > 0)) Then
  loc_1636175:               If (var_D0 > CDbl(0)) Then
  loc_1636191:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1636199:                 var_178 = CVar(CLng(0)) 'Long
  loc_16361A3:                 var_130 = CVar(CStr(var_86)) 'String
  loc_16361AA:                 LateIdCallSt
  loc_16361D5:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16361DD:                 var_178 = CVar(CLng(1)) 'Long
  loc_16361E7:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_16361EE:                 LateIdCallSt
  loc_1636219:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1636221:                 var_1AC = CVar(CLng(2)) 'Long
  loc_1636251:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1636258:                 LateIdCallSt
  loc_163628B:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1636293:                 var_1AC = CVar(CLng(3)) 'Long
  loc_16362C3:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16362CA:                 LateIdCallSt
  loc_16362FD:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1636305:                 var_178 = CVar(CLng(4)) 'Long
  loc_163630F:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_1636316:                 LateIdCallSt
  loc_1636341:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1636349:                 var_1AC = CVar(CLng(5)) 'Long
  loc_1636379:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1636380:                 LateIdCallSt
  loc_16363DA:                 var_1EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16363E2:                 var_21C = CVar(CLng(6)) 'Long
  loc_1636426:                 var_23C = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_163642D:                 LateIdCallSt
  loc_1636451:               End If
  loc_163646A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1636472:               var_178 = CVar(CLng(6)) 'Long
  loc_1636497:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_16364C0:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16364C8:               var_178 = CVar(CLng(6)) 'Long
  loc_16364ED:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_1636504:               var_B0 = (var_B0 + var_D0)
  loc_163650A:               var_B8 = var_D0
  loc_163650D:             End If
  loc_163650D:           End If
  loc_163650D:         End If
  loc_163650D:       End If
  loc_163650D:     End If
  loc_1636513:     var_86 = (var_86 + 1)
  loc_1636518:     Set var_10C = Nothing 
  loc_1636520:     var_EC = CVar(CLng(arg_10)) 'Long
  loc_1636528:     var_178 = CVar(CLng(7)) 'Long
  loc_1636532:     var_FC = CVar(CStr(var_9C)) 'String
  loc_163653A:     Set var_100 = Me.FGrid
  loc_1636540:     LateIdCallSt
  loc_1636551:     var_8C.MoveNext
  loc_1636556:     GoTo loc_163506B
  loc_1636559:   End If
  loc_163655E:   Set var_8C = Nothing
  loc_1636566:   Set var_C4 = Nothing
  loc_163656E:   Set var_C0 = Nothing
  loc_1636571: End If
  loc_1636571: Exit Sub
End Sub

Public Sub Proc_126_96_DFDE4C
  'Data Table: 55BD00
  loc_DFDE48: Exit Sub
End Sub

Public Sub Proc_126_97_18D33F4
  'Data Table: 55BD00
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_55BD78 As Connection15
  Dim var_E6 As Integer
  Dim var_1C4 As Recordset15
  Dim var_B4 As Fields
  Dim unk_55BD25 As Connection15
  Dim var_1D8 As Variant
  Dim unk_55BD34 As Connection15
  Dim var_E0 As Recordset15
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_1D4 As String
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_204 As Variant
  Dim var_110 As Recordset15
  Dim var_E4 As Recordset15
  Dim var_118 As Double
  Dim var_1E0 As Variant
  Dim var_26C As Variant
  Dim var_F4 As Recordset15
  Dim var_120 As Double
  Dim var_270 As Recordset15
  Dim var_108 As Recordset15
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim var_2AC As Field20
  loc_18D0BA4: unk_55BD78.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95070 & "FOM'", var_B0, -1
  loc_18D0BAF: Set var_88 = var_B4
  loc_18D0BBF: On Error Goto loc_18D33D9
  loc_18D0BC4: var_E6 = 1
  loc_18D0BCD: Set var_1C4 = var_1C0 
  loc_18D0BF5: var_1C4.Fields.Append "mLine", &HC8, &HA
  loc_18D0C21: var_1C4.Fields.Append "SNo", &HC8, &HA
  loc_18D0C4D: var_1C4.Fields.Append "Item", &HC8, &H32
  loc_18D0C79: var_1C4.Fields.Append "Qty", &HC8, &HA
  loc_18D0CA5: var_1C4.Fields.Append "Rate", &HC8, &HA
  loc_18D0CD1: var_1C4.Fields.Append "Amount", &HC8, &HA
  loc_18D0CF5: var_B4 = var_1C4.Fields
  loc_18D0CFD: var_B4.Append "Mark", &HC8, &HA
  loc_18D0D0D: var_1C4.CursorType = 3
  loc_18D0D1A: var_1C4.LockType = 3
  loc_18D0D39: var_1C4.Open var_A0, var_1D4, -1
  loc_18D0D40: Set var_1C4 = Nothing 
  loc_18D0D58: var_8C = "Select * from Enviro where LogSite_code='" & MemVar_1F95078
  loc_18D0D68: unk_55BD25.Execute var_8C & "'", var_B0, -1
  loc_18D0D73: Set var_110 = var_B4
  loc_18D0DA1: Set var_B4 = Me.Txt
  loc_18D0DA7: Call 0.Method_Proc_126_97_18D33F40 (CInt(4), var_1D8, var_8C, "SELECT S.*, I.Name AS ItemName, I.Type, ItemCatMast.CatType FROM (HallStock AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RestCode=I.REstCODE) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='", var_B0, -1, var_1E0)
  loc_18D0DAF: var_B4 = var_1D8.Text
  loc_18D0DB8: var_90 = -1 & var_8C
  loc_18D0DC8: unk_55BD34.Execute var_8C & "'" & "' AND QTYIss>0", -1, &H20
  loc_18D0DD3: Set var_F4 = var_1E0
  loc_18D0E09: Set var_B4 = Me.Txt
  loc_18D0E0F: Call 0.Method_Proc_126_97_18D33F40 (CInt(7), var_1D8, var_8C, "Select HB.*, SG.Name AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='", var_B0)
  loc_18D0E17: -1 = var_1D8.Tag
  loc_18D0E30: unk_55BD25.Execute var_1E0 & var_8C & "'", var_A0, &H20
  loc_18D0E3B: Set var_E0 = var_1E0
  loc_18D0E71: Set var_B4 = Me.Txt
  loc_18D0E77: Call 0.Method_Proc_126_97_18D33F40 (CInt(7), var_1D8, var_8C, "SELECT * FROM Hallsale1 WHERE BookDocId='")
  loc_18D0E7F: var_B0 = var_1D8.Tag
  loc_18D0E88: var_90 = -1 & var_8C
  loc_18D0E98: unk_55BD34.Execute var_1E0 & var_8C & "'", var_1E0, var_A0
  loc_18D0EA3: Set var_E4 = var_1E0
  loc_18D0ECF: If (var_E0.RecordCount <= 0) Then
  loc_18D0ED2:   Exit Sub
  loc_18D0ED3: End If
  loc_18D0F0A: var_12C = CStr(Mid(CVar(var_E0.Fields.Item("RestCode")), 2, var_1F4))
  loc_18D0F31: var_1F4 = ("UPTT No. :" + Trim(MemVar_1F95148))
  loc_18D0F36: var_144 = CStr(var_1F4)
  loc_18D0F58: var_1F4 = ("CST No.  :" + Trim(MemVar_1F9514C))
  loc_18D0F5D: var_148 = CStr(var_1F4)
  loc_18D0F6A: var_164 = MemVar_1F95130
  loc_18D0F85: var_1F4 = (Trim(MemVar_1F95134) + " ")
  loc_18D0F9C: var_224 = (var_1F4 + Trim(MemVar_1F9513C))
  loc_18D0FA5: var_244 = (var_224 + " ")
  loc_18D0FAF: var_264 = (var_244 + CVar(MemVar_1F9515C))
  loc_18D0FB4: var_160 = CStr(var_264)
  loc_18D0FDB: var_168 = "Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144
  loc_18D0FFD: var_1F4 = ("SUBJECT TO " + Trim(MemVar_1F9513C))
  loc_18D1006: var_204 = (var_1F4 + " JURISDITION")
  loc_18D100B: var_100 = CStr(Trim(MemVar_1F9513C))
  loc_18D103F: var_158 = Proc_6_38_E69628(CVar(var_110.Fields.Item("Bill_Header")))
  loc_18D105F: var_1D8 = var_E4.Fields.Item("Party")
  loc_18D1084: var_154 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1D8)))
  loc_18D10A2: Set var_B4 = Me.Txt
  loc_18D10A8: Call 0.Method_Proc_126_97_18D33F40 (CInt(1), var_1D8)
  loc_18D10B8: var_14C = var_1D8.Text
  loc_18D10F9: var_194 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E0.Fields.Item("Add1"))))))
  loc_18D113F: var_198 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E0.Fields.Item("Add2"))))))
  loc_18D1165: var_1D8 = var_E0.Fields.Item("City")
  loc_18D1185: var_19C = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_1D8)))))
  loc_18D119F: Set var_B4 = Me.Txt
  loc_18D11A5: Call 0.Method_Proc_126_97_18D33F40 (CInt(2), var_1D8)
  loc_18D11B4: var_A0 = "dd-MMM-yyyy"
  loc_18D11B9: var_1F4 = "City"
  loc_18D11E1: var_150 = Proc_6_45_EADFB8(CStr(Format(CVar(var_1D8), var_1F4)), &HB, 1)
  loc_18D124F: If ((var_E4.RecordCount > 0) And (CDbl(Val(CStr(var_E4.Fields.Item("NoofPax").Value))) > CDbl(0))) Then
  loc_18D127D:   Proc_6_39_E7D3A0(var_1F4, CVar(var_E4.Fields.Item("TotalPerCover")), 1)
  loc_18D128E:   var_118 = Val(CStr(var_1F4))
  loc_18D12F9:   var_1F4 = "Pax " & var_E4.Fields.Item("NoofPax").Value 
  loc_18D1317:   var_130 = Proc_6_45_EADFB8(CStr(var_1F4 & " @ " & var_E4.Fields.Item("RatePerPax").Value), &H1D, var_118)
  loc_18D135B:   Proc_6_39_E7D3A0(var_1F4, CVar(var_E4.Fields.Item("NoofPax")))
  loc_18D1364:   var_134 = CStr(var_1F4)
  loc_18D1397:   Proc_6_39_E7D3A0(var_1F4, CVar(var_E4.Fields.Item("RatePerPax")))
  loc_18D13C0:   var_138 = CStr(Format(var_1F4, "0.00"))
  loc_18D13DB:   var_1D4 = "0.00"
  loc_18D13F1:   var_1F4 = Format(var_118, var_1D4)
  loc_18D13FA:   var_13C = CStr(var_1F4)
  loc_18D140C:   If (var_140 = vbNullString) Then
  loc_18D1412:     var_140 = var_130
  loc_18D1415:   End If
  loc_18D1418: Else
  loc_18D141A:   var_E6 = 0
  loc_18D141D:   ' Referenced from:   18D16FD
  loc_18D141D: End If
  loc_18D142C: If Not(var_F4.EOF) Then
  loc_18D1435:   var_E6 = (var_E6 + 1)
  loc_18D143B:   var_A0 = "Amount"
  loc_18D145E:   Proc_6_39_E7D3A0(var_1F4, CVar(var_F4.Fields.Item(var_A0)), var_E6, var_E6, 1)
  loc_18D146F:   var_120 = Val(CStr(var_1F4))
  loc_18D1486:   var_118 = (var_118 + var_120)
  loc_18D148F:   Set var_270 = var_1C0 
  loc_18D149E:   var_270.AddNew var_A0, var_1D4
  loc_18D14C8:   var_270.Fields.Item("mLine").Value = vbNullString
  loc_18D1503:   var_270.Fields.Item("SNo").Value = CVar(CStr(var_E6) & ".")
  loc_18D1558:   var_270.Fields.Item("Item").Value = CVar(var_F4.Fields.Item("ItemName"))
  loc_18D158F:   Proc_6_39_E7D3A0(var_1F4, CVar(var_F4.Fields.Item("QtyIss")), var_118, var_120, 1)
  loc_18D15B7:   var_270.Fields.Item("qty").Value = var_1F4
  loc_18D15F2:   Proc_6_39_E7D3A0(var_1F4, CVar(var_F4.Fields.Item("Rate")), 1)
  loc_18D1612:   var_224 = Format(var_1F4, "0.00")
  loc_18D162A:   var_1E0 = var_270.Fields
  loc_18D163A:   var_1E0.Item("Rate").Value = var_224
  loc_18D169B:   var_270.Fields.Item("Amount").Value = Format(var_120, "0.00")
  loc_18D16AE:   var_1D4 = "*"
  loc_18D16B7:   var_A0 = "Mark"
  loc_18D16D3:   var_270.Fields.Item(var_A0).Value = var_1D4
  loc_18D16EA:   var_270.Update var_A0, var_1D4
  loc_18D16F1:   Set var_270 = Nothing 
  loc_18D16F8:   var_F4.MoveNext
  loc_18D16FD:   GoTo loc_18D141D
  loc_18D1700: End If
  loc_18D1708: var_F4.Requery -1
  loc_18D1710: var_E4.MoveFirst
  loc_18D1722: var_1D4 = "SELECT ST.Amt AS Amount,ST.SunCode AS Code,ST.SNo as SNo, SM.Name AS SName FROM SunTransaction AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='"
  loc_18D1768: unk_55BD25.Execute CStr(var_1D4 & var_E4.Fields.Item("DocID").Value & "' Order by SNo"), var_224, -1
  loc_18D1773: Set var_108 = var_1E0
  loc_18D1793: var_1E4 = var_108.RecordCount
  loc_18D17A1: If (var_1E4 > 0) Then
  loc_18D17A4:   ' Referenced from: 18D1E0D
  loc_18D17B3:   If Not(var_108.EOF) Then
  loc_18D180A:     If (Ucase(Trim(CVar(var_108.Fields.Item("Code")))) = CVar(MemVar_1F95078 & "NET")) Then
  loc_18D183D:       var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D1846:       var_1B8 = CStr(var_1F4)
  loc_18D1879:       Proc_6_39_E7D3A0(var_1F4, CVar(var_108.Fields.Item("Amount")), var_1E0, 1, 1)
  loc_18D18A2:       var_184 = CStr(Format(var_1F4, "0.00"))
  loc_18D18B6:       var_108.MoveNext
  loc_18D18CC:       If (var_108.EOF = &HFF) Then
  loc_18D18CF:         GoTo loc_18D1E10
  loc_18D18D2:       End If
  loc_18D18D2:     End If
  loc_18D18FC:     var_280 = var_108.Fields.Item("SNo").Value 'Variant
  loc_18D1912:     If (var_280 = 1) Then
  loc_18D1945:       var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D194E:       var_1A0 = CStr(var_1F4)
  loc_18D1981:       Proc_6_39_E7D3A0(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1, 1)
  loc_18D19AA:       var_16C = CStr(Format(var_1F4, "0.00"))
  loc_18D19BE:     Else
  loc_18D19C9:       If (var_280 = 2) Then
  loc_18D19FC:         var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D1A05:         var_1A4 = CStr(var_1F4)
  loc_18D1A38:         Proc_6_39_E7D3A0(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D1A61:         var_170 = CStr(Format(var_1F4, "0.00"))
  loc_18D1A75:       Else
  loc_18D1A80:         If (var_280 = 3) Then
  loc_18D1AB3:           var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D1ABC:           var_1B0 = CStr(var_1F4)
  loc_18D1AEF:           Proc_6_39_E7D3A0(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D1B18:           var_17C = CStr(Format(var_1F4, "0.00"))
  loc_18D1B2C:         Else
  loc_18D1B37:           If (var_280 = 4) Then
  loc_18D1B6A:             var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D1B73:             var_1A8 = CStr(var_1F4)
  loc_18D1BA6:             Proc_6_39_E7D3A0(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D1BCF:             var_174 = CStr(Format(var_1F4, "0.00"))
  loc_18D1BE3:           Else
  loc_18D1BEE:             If (var_280 = 5) Then
  loc_18D1C21:               var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D1C2A:               var_1AC = CStr(var_1F4)
  loc_18D1C5D:               Proc_6_39_E7D3A0(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D1C86:               var_178 = CStr(Format(var_1F4, "0.00"))
  loc_18D1C9A:             Else
  loc_18D1CA5:               If (var_280 = 6) Then
  loc_18D1CD8:                 var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D1CE1:                 var_1B4 = CStr(var_1F4)
  loc_18D1D14:                 Proc_6_39_E7D3A0(var_1F4, CVar(var_108.Fields.Item("Amount")), 1, 1)
  loc_18D1D3D:                 var_180 = CStr(Format(var_1F4, "0.00"))
  loc_18D1D51:               Else
  loc_18D1D5C:                 If (var_280 = 7) Then
  loc_18D1D8F:                   var_1F4 = StrConv(CVar(var_108.Fields.Item("SName")), 3, 0)
  loc_18D1D98:                   var_1BC = CStr(var_1F4)
  loc_18D1DB4:                   var_B4 = var_108.Fields
  loc_18D1DCB:                   Proc_6_39_E7D3A0(var_1F4, CVar(var_B4.Item("Amount")), 1, 1)
  loc_18D1DF4:                   var_188 = CStr(Format(var_1F4, "0.00"))
  loc_18D1E05:                 End If
  loc_18D1E05:               End If
  loc_18D1E05:             End If
  loc_18D1E05:           End If
  loc_18D1E05:         End If
  loc_18D1E05:       End If
  loc_18D1E05:     End If
  loc_18D1E08:     var_108.MoveNext
  loc_18D1E0D:     GoTo loc_18D17A4
  loc_18D1E10:     ' Referenced from: 18D18CF
  loc_18D1E10:   End If
  loc_18D1E10: End If
  loc_18D1E4A: var_B0 = CVar(Proc_6_43_1003B24(Abs(Val(var_184)), "Rs.", vbNullString, Val(var_184), 1)) 'String
  loc_18D1E59: var_18C = CStr(StrConv(var_B0, 3, 0))
  loc_18D1E7A: var_190 = "Regardless of charge instructions I agree to be held" & vbCrLf & "personally liable for payment of the total amount of this bill."
  loc_18D1E96: unk_55BD25.Execute "Select * From FAEnviro", var_B0, -1
  loc_18D1EA1: Set var_110 = var_B4
  loc_18D1EB9: var_B4 = var_110.Fields
  loc_18D1F1D: var_244 = IIf((Proc_6_38_E69628(CVar(var_B4.Item("daterfill")), var_B4, 1, 1) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("daterfill")), 1)))
  loc_18D1F26: MemVar_1F953C4 = CStr(var_244)
  loc_18D1FBA: var_244 = IIf((Proc_6_38_E69628(CVar(var_110.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("pagenofill")), 1)))
  loc_18D1FC3: MemVar_1F953C8 = CStr(var_244)
  loc_18D1FE7: var_A0 = "titlerfill"
  loc_18D1FFB: var_1D8 = var_110.Fields.Item(var_A0)
  loc_18D2012: var_1D4 = "titlerfill"
  loc_18D2026: var_26C = var_110.Fields.Item(var_1D4)
  loc_18D2037: var_224 = CVar(Proc_6_38_E69628(CVar(var_26C))) 'String
  loc_18D2050: var_214 = (Proc_6_38_E69628(CVar(var_1D8), MemVar_1F953C8) = vbNullString)
  loc_18D2057: var_244 = IIf(var_214, "M", var_224)
  loc_18D2081: On Error Goto loc_18D33D9
  loc_18D2087: var_EC = "SaleBillHallSecondary"
  loc_18D208D: var_F0 = "Sales Bill Report"
  loc_18D20B7: Set var_B4 = var_1C0 
  loc_18D20BE: CreateFieldDefFile(var_B4, MemVar_1F950B4 & "\" & var_EC & ".ttx", &HFF)
  loc_18D20EC: var_8C = "\" & var_EC
  loc_18D2100: Call 0.Method_arg_1C (MemVar_1F950B4 & var_8C & ".RPT", var_A0, var_B4)
  loc_18D210B: MemVar_1F951E8 = var_B4
  loc_18D2137: Call 0.Method_arg_64 (var_B4, CVar(var_B4), var_1D4)
  loc_18D213F: Call 0.Method_arg_2C (var_214, CStr(var_244))
  loc_18D214D: Call 0.Method_arg_150 (&H27)
  loc_18D2163: Call 0.Method_arg_90 (var_B4, var_1E4)
  loc_18D216B: Call 0.Method_arg_24 (var_E6)
  loc_18D2177: For var_298 =  To CInt(var_1E4): 1 = var_298 'Integer
  loc_18D2190:   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2198:   Call 0.Method_arg_20 (var_1D8)
  loc_18D21A0:   Call 0.Method_arg_30 (var_8C)
  loc_18D21B6:   var_2A8 = Ucase(CVar(var_8C)) 'Variant
  loc_18D21E6:   If (var_2A8 = Ucase("upttno")) Then
  loc_18D220A:     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2212:     Call 0.Method_arg_20 (var_1D8)
  loc_18D221A:     Call 0.Method_arg_38 ("'" & var_144 & "'")
  loc_18D2230:   Else
  loc_18D2252:     If (var_2A8 = Ucase("csttno")) Then
  loc_18D2276:       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D227E:       Call 0.Method_arg_20 (var_1D8)
  loc_18D2286:       Call 0.Method_arg_38 ("'" & var_148 & "'")
  loc_18D229C:     Else
  loc_18D22BE:       If (var_2A8 = Ucase("comp_name")) Then
  loc_18D22E2:         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D22EA:         Call 0.Method_arg_20 (var_1D8)
  loc_18D22F2:         Call 0.Method_arg_38 ("'" & var_164 & "'")
  loc_18D2308:       Else
  loc_18D232A:         If (var_2A8 = Ucase("compaddress")) Then
  loc_18D234E:           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2356:           Call 0.Method_arg_20 (var_1D8)
  loc_18D235E:           Call 0.Method_arg_38 ("'" & var_160 & "'")
  loc_18D2374:         Else
  loc_18D2396:           If (var_2A8 = Ucase("comp_phone")) Then
  loc_18D23BA:             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D23C2:             Call 0.Method_arg_20 (var_1D8)
  loc_18D23CA:             Call 0.Method_arg_38 ("'" & var_168 & "'")
  loc_18D23E0:           Else
  loc_18D2402:             If (var_2A8 = Ucase("BillHeader")) Then
  loc_18D2426:               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D242E:               Call 0.Method_arg_20 (var_1D8)
  loc_18D2436:               Call 0.Method_arg_38 ("'" & var_158 & "'")
  loc_18D244C:             Else
  loc_18D246E:               If (var_2A8 = Ucase("name")) Then
  loc_18D2492:                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D249A:                 Call 0.Method_arg_20 (var_1D8)
  loc_18D24A2:                 Call 0.Method_arg_38 ("'" & var_154 & "'")
  loc_18D24B8:               Else
  loc_18D24DA:                 If (var_2A8 = Ucase("address1")) Then
  loc_18D24FE:                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2506:                   Call 0.Method_arg_20 (var_1D8)
  loc_18D250E:                   Call 0.Method_arg_38 ("'" & var_194 & "'")
  loc_18D2524:                 Else
  loc_18D2546:                   If (var_2A8 = Ucase("address2")) Then
  loc_18D256A:                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2572:                     Call 0.Method_arg_20 (var_1D8)
  loc_18D257A:                     Call 0.Method_arg_38 ("'" & var_198 & "'")
  loc_18D2590:                   Else
  loc_18D25B2:                     If (var_2A8 = Ucase("address3")) Then
  loc_18D25D6:                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D25DE:                       Call 0.Method_arg_20 (var_1D8)
  loc_18D25E6:                       Call 0.Method_arg_38 ("'" & var_19C & "'")
  loc_18D25FC:                     Else
  loc_18D261E:                       If (var_2A8 = Ucase("PAX_Par")) Then
  loc_18D2642:                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D264A:                         Call 0.Method_arg_20 (var_1D8)
  loc_18D2652:                         Call 0.Method_arg_38 ("'" & var_130 & "'")
  loc_18D2668:                       Else
  loc_18D268A:                         If (var_2A8 = Ucase("NARATION")) Then
  loc_18D26AE:                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D26B6:                           Call 0.Method_arg_20 (var_1D8)
  loc_18D26BE:                           Call 0.Method_arg_38 ("'" & var_140 & "'")
  loc_18D26D4:                         Else
  loc_18D26F6:                           If (var_2A8 = Ucase("PAX_Qty")) Then
  loc_18D271A:                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2722:                             Call 0.Method_arg_20 (var_1D8)
  loc_18D272A:                             Call 0.Method_arg_38 ("'" & var_134 & "'")
  loc_18D2740:                           Else
  loc_18D2762:                             If (var_2A8 = Ucase("PAX_Rate")) Then
  loc_18D2786:                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D278E:                               Call 0.Method_arg_20 (var_1D8)
  loc_18D2796:                               Call 0.Method_arg_38 ("'" & var_138 & "'")
  loc_18D27AC:                             Else
  loc_18D27CE:                               If (var_2A8 = Ucase("PAX_Amount")) Then
  loc_18D27F2:                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D27FA:                                 Call 0.Method_arg_20 (var_1D8)
  loc_18D2802:                                 Call 0.Method_arg_38 ("'" & var_13C & "'")
  loc_18D2818:                               Else
  loc_18D283A:                                 If (var_2A8 = Ucase("billno")) Then
  loc_18D286C:                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2874:                                   Call 0.Method_arg_20 (var_1D8)
  loc_18D287C:                                   Call 0.Method_arg_38 ("'" & var_12C & "\" & var_14C & "'")
  loc_18D2896:                                 Else
  loc_18D28B8:                                   If (var_2A8 = Ucase("billdate")) Then
  loc_18D28DC:                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D28E4:                                     Call 0.Method_arg_20 (var_1D8)
  loc_18D28EC:                                     Call 0.Method_arg_38 ("'" & var_150 & "'")
  loc_18D2902:                                   Else
  loc_18D2924:                                     If (var_2A8 = Ucase("strRupee")) Then
  loc_18D2948:                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2950:                                       Call 0.Method_arg_20 (var_1D8)
  loc_18D2958:                                       Call 0.Method_arg_38 ("'" & var_18C & "'")
  loc_18D296E:                                     Else
  loc_18D2990:                                       If (var_2A8 = Ucase("lblamount")) Then
  loc_18D29B4:                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D29BC:                                         Call 0.Method_arg_20 (var_1D8)
  loc_18D29C4:                                         Call 0.Method_arg_38 ("'" & var_1A0 & "'")
  loc_18D29DA:                                       Else
  loc_18D29FC:                                         If (var_2A8 = Ucase("amount")) Then
  loc_18D2A20:                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2A28:                                           Call 0.Method_arg_20 (var_1D8)
  loc_18D2A30:                                           Call 0.Method_arg_38 ("'" & var_16C & "'")
  loc_18D2A46:                                         Else
  loc_18D2A68:                                           If (var_2A8 = Ucase("lbldiscount")) Then
  loc_18D2A8C:                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2A94:                                             Call 0.Method_arg_20 (var_1D8)
  loc_18D2A9C:                                             Call 0.Method_arg_38 ("'" & var_1A4 & "'")
  loc_18D2AB2:                                           Else
  loc_18D2AD4:                                             If (var_2A8 = Ucase("discount")) Then
  loc_18D2AF8:                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2B00:                                               Call 0.Method_arg_20 (var_1D8)
  loc_18D2B08:                                               Call 0.Method_arg_38 ("'" & var_170 & "'")
  loc_18D2B1E:                                             Else
  loc_18D2B40:                                               If (var_2A8 = Ucase("lbldevelopmenttax")) Then
  loc_18D2B64:                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2B6C:                                                 Call 0.Method_arg_20 (var_1D8)
  loc_18D2B74:                                                 Call 0.Method_arg_38 ("'" & var_1B0 & "'")
  loc_18D2B8A:                                               Else
  loc_18D2BAC:                                                 If (var_2A8 = Ucase("developmenttax")) Then
  loc_18D2BD0:                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2BD8:                                                   Call 0.Method_arg_20 (var_1D8)
  loc_18D2BE0:                                                   Call 0.Method_arg_38 ("'" & var_17C & "'")
  loc_18D2BF6:                                                 Else
  loc_18D2C18:                                                   If (var_2A8 = Ucase("lbltradetax")) Then
  loc_18D2C3C:                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2C44:                                                     Call 0.Method_arg_20 (var_1D8)
  loc_18D2C4C:                                                     Call 0.Method_arg_38 ("'" & var_1A8 & "'")
  loc_18D2C62:                                                   Else
  loc_18D2C84:                                                     If (var_2A8 = Ucase("tradetax")) Then
  loc_18D2CA8:                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2CB0:                                                       Call 0.Method_arg_20 (var_1D8)
  loc_18D2CB8:                                                       Call 0.Method_arg_38 ("'" & var_174 & "'")
  loc_18D2CCE:                                                     Else
  loc_18D2CF0:                                                       If (var_2A8 = Ucase("lblservicecharge")) Then
  loc_18D2D14:                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2D1C:                                                         Call 0.Method_arg_20 (var_1D8)
  loc_18D2D24:                                                         Call 0.Method_arg_38 ("'" & var_1AC & "'")
  loc_18D2D3A:                                                       Else
  loc_18D2D5C:                                                         If (var_2A8 = Ucase("servicecharge")) Then
  loc_18D2D80:                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2D88:                                                           Call 0.Method_arg_20 (var_1D8)
  loc_18D2D90:                                                           Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_18D2DA6:                                                         Else
  loc_18D2DC8:                                                           If (var_2A8 = Ucase("lblroundoff")) Then
  loc_18D2DEC:                                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2DF4:                                                             Call 0.Method_arg_20 (var_1D8)
  loc_18D2DFC:                                                             Call 0.Method_arg_38 ("'" & var_1B4 & "'")
  loc_18D2E12:                                                           Else
  loc_18D2E34:                                                             If (var_2A8 = Ucase("roundoff")) Then
  loc_18D2E58:                                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2E60:                                                               Call 0.Method_arg_20 (var_1D8)
  loc_18D2E68:                                                               Call 0.Method_arg_38 ("'" & var_180 & "'")
  loc_18D2E7E:                                                             Else
  loc_18D2EA0:                                                               If (var_2A8 = Ucase("lblServiceTax")) Then
  loc_18D2EC4:                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2ECC:                                                                 Call 0.Method_arg_20 (var_1D8)
  loc_18D2ED4:                                                                 Call 0.Method_arg_38 ("'" & var_1BC & "'")
  loc_18D2EEA:                                                               Else
  loc_18D2F0C:                                                                 If (var_2A8 = Ucase("ServiceTax")) Then
  loc_18D2F30:                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2F38:                                                                   Call 0.Method_arg_20 (var_1D8)
  loc_18D2F40:                                                                   Call 0.Method_arg_38 ("'" & var_188 & "'")
  loc_18D2F56:                                                                 Else
  loc_18D2F78:                                                                   If (var_2A8 = Ucase("lblnetamount")) Then
  loc_18D2F9C:                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D2FA4:                                                                     Call 0.Method_arg_20 (var_1D8)
  loc_18D2FAC:                                                                     Call 0.Method_arg_38 ("'" & var_1B8 & "'")
  loc_18D2FC2:                                                                   Else
  loc_18D2FE4:                                                                     If (var_2A8 = Ucase("netamount")) Then
  loc_18D2FEE:                                                                       var_8C = "'" & var_184
  loc_18D3008:                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3010:                                                                       Call 0.Method_arg_20 (var_1D8)
  loc_18D3018:                                                                       Call 0.Method_arg_38 (var_8C & "'")
  loc_18D302E:                                                                     Else
  loc_18D3050:                                                                       If (var_2A8 = Ucase("Title")) Then
  loc_18D305C:                                                                         Call 0.Method_arg_50 (var_8C)
  loc_18D307F:                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3087:                                                                         Call 0.Method_arg_20 (var_1D8)
  loc_18D308F:                                                                         Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_18D30A7:                                                                       Else
  loc_18D30C9:                                                                         If (var_2A8 = Ucase("Jurisdition")) Then
  loc_18D30ED:                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D30F5:                                                                           Call 0.Method_arg_20 (var_1D8)
  loc_18D30FD:                                                                           Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_18D3113:                                                                         Else
  loc_18D3135:                                                                           If (var_2A8 = Ucase("Dater")) Then
  loc_18D3159:                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3161:                                                                             Call 0.Method_arg_20 (var_1D8)
  loc_18D3169:                                                                             Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_18D317F:                                                                           Else
  loc_18D31A1:                                                                             If (var_2A8 = Ucase("Pager")) Then
  loc_18D31C5:                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D31CD:                                                                               Call 0.Method_arg_20 (var_1D8)
  loc_18D31D5:                                                                               Call 0.Method_arg_38 ("'" & MemVar_1F953C8 & "'")
  loc_18D31EB:                                                                             Else
  loc_18D320D:                                                                               If (var_2A8 = Ucase("billfooter")) Then
  loc_18D3231:                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_E6))
  loc_18D3239:                                                                                 Call 0.Method_arg_20 (var_1D8)
  loc_18D3241:                                                                                 Call 0.Method_arg_38 ("'" & var_15C & "'")
  loc_18D3257:                                                                               Else
  loc_18D3279:                                                                                 If (var_2A8 = Ucase("comp_party")) Then
  loc_18D3287:                                                                                   var_254 = 0
  loc_18D329D:                                                                                   var_1D4 = "Select ('Company:                                                                               ' + SG.Name) AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='"
  loc_18D32CC:                                                                                   var_1F4 = var_1D4 & var_E0.Fields.Item("DocID").Value 
  loc_18D32E3:                                                                                   unk_55BD25.Execute CStr(var_1F4 & "'"), var_224, -1
  loc_18D32EB:                                                                                   var_1E0 = var_1E0.Fields
  loc_18D32F3:                                                                                   var_254 = var_26C.Item(var_26C)
  loc_18D32FB:                                                                                   var_2AC = var_2AC.Value
  loc_18D3324:                                                                                   Call 0.Method_arg_90 (var_2E0, CLng(var_E6), var_2E4)
  loc_18D332C:                                                                                   Call 0.Method_arg_20 (CStr(var_244 & var_244 & "'"))
  loc_18D3334:                                                                                   Call 0.Method_arg_38 ("'")
  loc_18D3362:                                                                                 End If
  loc_18D3362:                                                                               End If
  loc_18D3362:                                                                             End If
  loc_18D3362:                                                                           End If
  loc_18D3362:                                                                         End If
  loc_18D3362:                                                                       End If
  loc_18D3362:                                                                     End If
  loc_18D3362:                                                                   End If
  loc_18D3362:                                                                 End If
  loc_18D3362:                                                               End If
  loc_18D3362:                                                             End If
  loc_18D3362:                                                           End If
  loc_18D3362:                                                         End If
  loc_18D3362:                                                       End If
  loc_18D3362:                                                     End If
  loc_18D3362:                                                   End If
  loc_18D3362:                                                 End If
  loc_18D3362:                                               End If
  loc_18D3362:                                             End If
  loc_18D3362:                                           End If
  loc_18D3362:                                         End If
  loc_18D3362:                                       End If
  loc_18D3362:                                     End If
  loc_18D3362:                                   End If
  loc_18D3362:                                 End If
  loc_18D3362:                               End If
  loc_18D3362:                             End If
  loc_18D3362:                           End If
  loc_18D3362:                         End If
  loc_18D3362:                       End If
  loc_18D3362:                     End If
  loc_18D3362:                   End If
  loc_18D3362:                 End If
  loc_18D3362:               End If
  loc_18D3362:             End If
  loc_18D3362:           End If
  loc_18D3362:         End If
  loc_18D3362:       End If
  loc_18D3362:     End If
  loc_18D3362:   End If
  loc_18D3365: Next var_298 'Integer
  loc_18D336F: Set var_1D8 = Nothing
  loc_18D3385: Set var_B4 = MemVar_1F951E8 
  loc_18D3391: Proc_6_99_1484404(var_B4, 0, var_F0)
  loc_18D339C: MemVar_1F951E8 = var_B4
  loc_18D33AC: MemVar_1F951E8 = Nothing
  loc_18D33B5: Set var_110 = Nothing
  loc_18D33BD: Set var_1C0 = Nothing
  loc_18D33C5: Set var_108 = Nothing
  loc_18D33CD: Set var_E0 = Nothing
  loc_18D33D5: Set var_F4 = Nothing
  loc_18D33D8: Exit Sub
  loc_18D33D9: ' Referenced from: 18D2081
  loc_18D33D9: ' Referenced from: 18D0BBF
  loc_18D33DF: If (var_F8 = &HFF) Then
  loc_18D33E8:   unk_55BD25.RollbackTrans
  loc_18D33ED: End If
  loc_18D33ED: Proc_6_60_E63754(&HFF)
  loc_18D33F2: Exit Sub
End Sub
