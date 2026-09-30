VERSION 5.00
Begin VB.Form FrmBookingInquiry
  Caption = "Booking Inquiry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 15000
  ClientHeight = 6615
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame FrmList
    Left = 16350
    Top = 5880
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 23
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
      Left = 60
      Top = -465
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 24
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 18270
    Top = 6240
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 25
  End
  Begin DataGrid DGVenue
    Left = 16095
    Top = 3435
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin DataGrid DGCity
    Left = 15705
    Top = 2475
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGSource
    Left = 14655
    Top = 1830
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
End
Begin DataGrid DGMarketSeg
  Left = 14910
  Top = 1290
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 26
End
Begin MainCtrl TopCtrl1
  Left = 0
  Top = 0
  Width = 15000
  Height = 450
  TabIndex = 58
End
Begin TextBox txt
  Index = 19
  ForeColor = &HFF0000&
  Left = 2940
  Top = 5145
  Width = 4305
  Height = 720
  TabIndex = 17
  BorderStyle = 0 'None
  MultiLine = -1  'True
  ScrollBars = 2
  MaxLength = 150
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
Begin DataGrid DGFuncType
  Left = 15015
  Top = 735
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 28
End
Begin TextBox txt
  Index = 13
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5880
  Top = 3885
  Width = 1365
  Height = 285
  Enabled = 0   'False
  TabIndex = 13
  BorderStyle = 0 'None
  MaxLength = 11
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
Begin TextBox txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1875
  Top = 8580
  Width = 1425
  Height = 285
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 7
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
Begin TextBox txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 1365
  Width = 4300
  Height = 285
  Enabled = 0   'False
  TabIndex = 2
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
Begin TextBox txt
  Index = 11
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 3570
  Width = 4300
  Height = 285
  TabIndex = 11
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
Begin TextBox txt
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 3255
  Width = 4300
  Height = 285
  TabIndex = 10
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
Begin TextBox txt
  Index = 9
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5520
  Top = 2940
  Width = 1725
  Height = 285
  Enabled = 0   'False
  TabIndex = 9
  BorderStyle = 0 'None
  MaxLength = 11
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
Begin TextBox txt
  Index = 6
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 2625
  Width = 1815
  Height = 285
  Enabled = 0   'False
  TabIndex = 6
  BorderStyle = 0 'None
  MaxLength = 11
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
Begin PictureBox Picture2
  Picture = "FrmBookingInquiry.frx":0
  Left = 19275
  Top = 8505
  Width = 300
  Height = 270
  Visible = 0   'False
  TabIndex = 34
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
Begin PictureBox Picture4
  Picture = "FrmBookingInquiry.frx":34E
  Left = 19050
  Top = 8220
  Width = 300
  Height = 270
  Visible = 0   'False
  TabIndex = 33
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
Begin TextBox txt
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 1680
  Width = 4300
  Height = 285
  TabIndex = 3
  BorderStyle = 0 'None
  MaxLength = 40
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
Begin TextBox txt
  Index = 4
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 1995
  Width = 4300
  Height = 285
  TabIndex = 4
  BorderStyle = 0 'None
  MaxLength = 40
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
Begin TextBox txt
  Index = 5
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 2310
  Width = 4300
  Height = 285
  TabIndex = 5
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
Begin TextBox txt
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 2940
  Width = 1815
  Height = 285
  Enabled = 0   'False
  TabIndex = 8
  BorderStyle = 0 'None
  MaxLength = 11
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
Begin TextBox txt
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5520
  Top = 2625
  Width = 1725
  Height = 285
  Enabled = 0   'False
  TabIndex = 7
  BorderStyle = 0 'None
  MaxLength = 11
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
Begin TextBox txt
  Index = 16
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 4830
  Width = 4300
  Height = 285
  TabIndex = 16
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
Begin TextBox txt
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 4200
  Width = 4300
  Height = 285
  TabIndex = 14
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
Begin TextBox txt
  Index = 15
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 4515
  Width = 4300
  Height = 285
  TabIndex = 15
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
Begin TextBox txt
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1860
  Top = 8265
  Width = 1440
  Height = 285
  Enabled = 0   'False
  TabIndex = 18
  BorderStyle = 0 'None
  MaxLength = 9
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
Begin TextBox txt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 1050
  Width = 4300
  Height = 285
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 40
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
Begin TextBox txt
  Index = 12
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 2940
  Top = 3885
  Width = 1365
  Height = 285
  Enabled = 0   'False
  TabIndex = 12
  BorderStyle = 0 'None
  MaxLength = 11
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
Begin PictureBox Picture3
  Picture = "FrmBookingInquiry.frx":69C
  Left = 19515
  Top = 8250
  Width = 300
  Height = 270
  Visible = 0   'False
  TabIndex = 20
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
Begin TextBox txt
  Index = 18
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5160
  Top = 8565
  Width = 1860
  Height = 285
  Enabled = 0   'False
  TabIndex = 19
  BorderStyle = 0 'None
  MaxLength = 9
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
  BackColor = &HC0C0C0&
  ForeColor = &H80000012&
  Left = 8190
  Top = 1425
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 32
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 150
  BeginProperty Font
    Name = "Arial Narrow"
    Size = 6.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin MSHFlexGrid FGrid2
  Left = 2925
  Top = 5895
  Width = 4320
  Height = 2295
  TabIndex = 22
End
Begin MaskEdBox txtMEd
  Index = 0
  Left = 9675
  Top = 3090
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 31
End
Begin MSHFlexGrid FGrid
  Left = 7320
  Top = 1050
  Width = 7635
  Height = 3090
  TabIndex = 21
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 480
  Width = 180
  Height = 540
  TabIndex = 57
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
  Left = 12465
  Top = 8610
  Width = 2430
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
  Left = 12480
  Top = 8280
  Width = 2520
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
Begin Label Label1
  Caption = "Remark"
  Index = 9
  ForeColor = &HFF0000&
  Left = 1215
  Top = 5130
  Width = 735
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
End
Begin Label Lbl
  Caption = "City"
  Index = 1
  ForeColor = &HFF0000&
  Left = 1215
  Top = 2310
  Width = 360
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
Begin Shape Shape1
  Left = 7290
  Top = 4290
  Width = 4695
  Height = 4695
End
Begin Label Lbl
  Caption = "Expected Pax"
  Index = 12
  ForeColor = &HFF0000&
  Left = 1215
  Top = 3885
  Width = 1320
  Height = 240
  TabIndex = 52
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
  Caption = "Catering Type"
  Index = 0
  ForeColor = &H80&
  Left = 480
  Top = 8580
  Width = 1335
  Height = 240
  TabIndex = 51
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
  Caption = "Party Name"
  Index = 2
  ForeColor = &HFF0000&
  Left = 1215
  Top = 1365
  Width = 1110
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
  Caption = "Source"
  Index = 13
  ForeColor = &HFF0000&
  Left = 1215
  Top = 4515
  Width = 675
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
Begin Label Lbl
  Caption = "Segment"
  Index = 14
  ForeColor = &HFF0000&
  Left = 1215
  Top = 4200
  Width = 855
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
Begin Label Lbl
  Caption = "Address"
  Index = 5
  ForeColor = &HFF0000&
  Left = 1215
  Top = 1680
  Width = 750
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
  Caption = "Phone"
  Index = 9
  ForeColor = &HFF0000&
  Left = 1215
  Top = 2625
  Width = 615
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
  Caption = "Mobile No"
  Index = 3
  ForeColor = &HFF0000&
  Left = 1215
  Top = 2940
  Width = 960
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
  Caption = "Fax No"
  Index = 4
  ForeColor = &HFF0000&
  Left = 4845
  Top = 2970
  Width = 675
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
  Caption = "Contact Person"
  Index = 10
  ForeColor = &HFF0000&
  Left = 1215
  Top = 3255
  Width = 1440
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
Begin Label Lbl
  Caption = "Handled By"
  Index = 15
  ForeColor = &HFF0000&
  Left = 1215
  Top = 4830
  Width = 1095
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
Begin Label Lbl
  Caption = "Status"
  Index = 16
  ForeColor = &H80&
  Left = 480
  Top = 8280
  Width = 585
  Height = 240
  TabIndex = 41
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
  Caption = "Booked By"
  Index = 11
  ForeColor = &HFF0000&
  Left = 1215
  Top = 3570
  Width = 1020
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
Begin Label Lbl
  Caption = "(Res.)"
  Index = 17
  ForeColor = &HFF0000&
  Left = 1920
  Top = 2640
  Width = 525
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
Begin Label Lbl
  Caption = "(Off.)"
  Index = 18
  ForeColor = &HFF0000&
  Left = 4815
  Top = 2640
  Width = 450
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
Begin Label Lbl
  Caption = "Function Type"
  Index = 7
  ForeColor = &HFF0000&
  Left = 1215
  Top = 1050
  Width = 1350
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
Begin Label Lbl
  Caption = "Guranteed Pax"
  Index = 19
  ForeColor = &HFF0000&
  Left = 4335
  Top = 3885
  Width = 1440
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
Begin Label Lbl
  Caption = "Creat By"
  Index = 20
  ForeColor = &H80&
  Left = 4230
  Top = 8565
  Width = 810
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
Begin Image Pic1
  Left = 7305
  Top = 4290
  Width = 4695
  Height = 4695
  Stretch = -1  'True
End
End

Attribute VB_Name = "FrmBookingInquiry"

Private global_100 As Integer

Private Sub Form_Load() '13154B8
  'Data Table: 504C5C
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_C0 As TextBox
  Dim var_C8 As DataGrid
  Dim var_CC As TextBox
  Dim var_AC As String
  Dim var_D8 As String
  Dim unk_504C67 As Connection15
  Dim Me As Recordset15
  Dim var_A8 As Variant
  loc_1314D64: On Error Goto loc_1315472
  loc_1314D71: Set var_A8 = Me.TopCtrl1
  loc_1314D77: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_1314D85: Call 0.Method_arg_50 (var_AC)
  loc_1314D8D: var_BC = CVar(var_AC) 'String
  loc_1314D95: Set var_A8 = Me.TopCtrl1
  loc_1314D9B: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(var_BC)
  loc_1314DB4: Set var_A8 = Me.txt
  loc_1314DBA: Call 0.Method_Form_Load0 (CInt(&HE), var_C0)
  loc_1314DD9: Me.DGMarketSeg.Left = CVar(var_C0.Left)
  loc_1314DF5: Set var_C8 = Me.txt
  loc_1314DFB: Call 0.Method_Form_Load0 (CInt(&HE), var_CC)
  loc_1314E16: Set var_A8 = Me.txt
  loc_1314E1C: Call 0.Method_Form_Load0 (CInt(&HE), var_C0)
  loc_1314E34: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_1314E43: Me.DGMarketSeg.Top = CVar(var_C0.Left)
  loc_1314E63: Set var_A8 = Me.txt
  loc_1314E69: Call 0.Method_Form_Load0 (CInt(&HF), var_C0)
  loc_1314E88: Me.DGSource.Left = CVar(var_C0.Left)
  loc_1314EA4: Set var_C8 = Me.txt
  loc_1314EAA: Call 0.Method_Form_Load0 (CInt(&HF), var_CC)
  loc_1314EC5: Set var_A8 = Me.txt
  loc_1314ECB: Call 0.Method_Form_Load0 (CInt(&HF), var_C0)
  loc_1314EE3: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_1314EF2: Me.DGSource.Top = CVar(var_C0.Left)
  loc_1314F12: Set var_A8 = Me.txt
  loc_1314F18: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_1314F37: Me.DGFuncType.Left = CVar(var_C0.Left)
  loc_1314F53: Set var_C8 = Me.txt
  loc_1314F59: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_1314F61: var_D0 = var_CC.Height
  loc_1314F74: Set var_A8 = Me.txt
  loc_1314F7A: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_1314F82: var_C4 = var_C0.Top
  loc_1314F92: var_94 = CVar(((var_C4 + var_D0) + CDbl(&H1E))) 'Single
  loc_1314FA1: Me.DGFuncType.Top = CVar(var_C0.Left)
  loc_1314FC8: If (global_52 = MemVar_1F95078 & "BANQ") Then
  loc_1314FDF:   var_AC = "SELECT BI.Code As SearchCode,BI.Capacity AS Capacity,BI.*,B.Name As BussinessName,M.Name As MarketSegName,V.Name As VenueName,FT.Name As FunctionType,BI.logsite_code,BI.Site_code" & " FROM ((((BookingInquiry BI Left Join BussSource B On BI.BussSource=B.Code) Left Join MarketSeg M On BI.MarketSeg=M.Code) "
  loc_1314FE6:   var_D8 = var_AC & " Left Join VenueMast V On BI.VenueCode=V.Code) Left Join FunctionType FT On BI.FuncType=FT.Code) where BI.LogSite_Code in ('"
  loc_1314FFD:   unk_504C67.Execute var_D8 & MemVar_1F95078 & "')  and CatType='Indoor' ORDER BY BI.Code", var_BC, -1
  loc_131500E:   Set global_56 = var_A8
  loc_131502A: Else
  loc_131503E:   var_AC = "SELECT BI.Code As SearchCode,BI.Capacity AS Capacity, BI.*,B.Name As BussinessName,M.Name As MarketSegName,V.Name As VenueName,FT.Name As FunctionType,BI.logSite_Code,BI.Site_Code " & " FROM ((((BookingInquiry BI Left Join BussSource B On BI.BussSource=B.Code) Left Join MarketSeg M On BI.MarketSeg=M.Code) "
  loc_1315045:   var_D8 = var_AC & " Left Join VenueMast V On BI.VenueCode=V.Code) Left Join FunctionType FT On BI.FuncType=FT.Code) where BI.LogSite_Code in ('"
  loc_131505C:   unk_504C67.Execute var_D8 & MemVar_1F95078 & "') and CatType='Outdoor' ORDER BY BI.Code", var_BC, -1
  loc_131506D:   Set global_56 = var_A8
  loc_1315086: End If
  loc_13150AA: unk_504C67.Execute "Select Code,Name From VenueMast Where LogSite_Code in ('" & MemVar_1F95078 & "','HO') Order by Name", var_BC, -1
  loc_13150BB: Set global_60 = var_A8
  loc_13150D9: CVarUnk
  loc_13150DE: VerifyVarObj
  loc_13150EA: LateIdStAd
  loc_131511C: unk_504C67.Execute "Select Code,Name From MarketSeg Where LogSite_Code in ('" & MemVar_1F95078 & "','HO') Order by Name", var_BC, -1
  loc_131512D: Set global_64 = Me.DGVenue
  loc_131514B: CVarUnk
  loc_1315150: VerifyVarObj
  loc_131515C: LateIdStAd
  loc_131518E: unk_504C67.Execute "Select Code,Name From BussSource Where LogSite_Code in ('" & MemVar_1F95078 & "','HO') Order by Name", var_BC, -1
  loc_13151BD: CVarUnk
  loc_13151C2: VerifyVarObj
  loc_13151C8: Set var_A8 = Me.DGSource
  loc_13151CE: LateIdStAd
  loc_13151F8: Me.DGSource.CursorLocation = 3
  loc_1315222: var_BC = CVar("Select CITYCODE AS Code,CITYNAME AS Name From CITY Where LogSite_Code in ('" & MemVar_1F95078 & "','HO') Order by CITYName") 'String
  loc_131522C: Me.Open var_BC, CVar(MemVar_1F95044), 2
  loc_1315240: CVarUnk
  loc_1315245: VerifyVarObj
  loc_131524B: Set var_A8 = Me.DGCity
  loc_1315251: LateIdStAd
  loc_1315273: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_C4, Me.txt, New, 3, -1)
  loc_1315292: Me.DGCity.Left = CVar(var_C4)
  loc_13152AE: Set var_C8 = Me.txt
  loc_13152B4: Call 0.Method_Form_Load0 (CInt(5), var_CC, var_D0, Me.DGMarketSeg, var_C0.Left)
  loc_13152BC: var_A8 = var_CC.Height
  loc_13152D5: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_C4)
  loc_13152DD: global_64 = var_C0.Top
  loc_13152E9: var_94 = CVar((var_C4 + var_D0)) 'Single
  loc_13152F8: Me.DGCity.Top = CVar(var_C4)
  loc_131532E: unk_504C67.Execute "Select Code,Name From FunctionType Where Status='Active' and LogSite_Code in ('" & MemVar_1F95078 & "','HO')  Order by Name", var_BC, -1
  loc_131535D: CVarUnk
  loc_1315362: VerifyVarObj
  loc_131536E: LateIdStAd
  loc_1315383: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), Me.DGFuncType, Me.txt)
  loc_131539B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13153B6: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13153CD: Me.LblUser.Left = CDbl(13500)
  loc_13153E4: Me.LblUser.Top = CDbl(7800)
  loc_13153FB: Me.LblLDt.Top = CDbl(8160)
  loc_1315412: Me.LblLDt.Left = CDbl(13500)
  loc_1315426: Set var_A8 = Me
  loc_131542F: var_AC = "INI"
  loc_131543D: Call Proc_120_54_EC9E68(Proc_5_1_100EC1C(var_AC, var_A8, global_56), var_A8)
  loc_1315451: Call 0.Method_arg_160 (var_A8, var_A8)
  loc_131545F: Call 0.Method_arg_164 (var_A8)
  loc_1315467: Call Proc_120_49_13609DC(var_A8)
  loc_131546C: Call Proc_120_56_14761E0()
  loc_1315471: Exit Sub
  loc_1315472: ' Referenced from: 1314D64
  loc_131547A: Set var_A8 = Err()
  loc_1315480: Call 0.Method_arg_2C (var_AC)
  loc_13154A1: MsgBox(CVar(var_AC), &H40, "Information", var_104, var_124)
  loc_13154B4: Exit Sub
  loc_13154B5: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2088
  'Data Table: 504C5C
  Dim var_8C As Label
  loc_ED1FE6: Call 0.Method_arg_50 (var_88)
  loc_ED1FF8: Me.LblFormCaption.Caption = var_88
  loc_ED2011: Me.LblFormCaption.Left = CDbl(0)
  loc_ED201D: Set var_A0 = Me.TopCtrl1
  loc_ED2023: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED2030: Set var_8C = Me.TopCtrl1
  loc_ED2036: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED2050: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED206B: Call 0.Method_arg_100 (var_B8)
  loc_ED207D: Me.LblFormCaption.Width = var_B8
  loc_ED2085: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E83E5C
  'Data Table: 504C5C
  loc_E83DF7: Set global_56 = Nothing
  loc_E83E09: Set global_60 = Nothing
  loc_E83E1B: Set global_64 = Nothing
  loc_E83E2D: Set global_72 = Nothing
  loc_E83E3F: Set global_76 = Nothing
  loc_E83E51: Set global_68 = Nothing
  loc_E83E58: Exit Sub
End Sub

Private Sub Form_Activate() 'E00C1C
  'Data Table: 504C5C
  loc_E00C14: Call Proc_120_57_1468348()
  loc_E00C19: Exit Sub
  loc_E00C1A: CExtInstUnk
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8808C
  'Data Table: 504C5C
  loc_E88028: On Error Goto loc_E88048
  loc_E8803F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E88047: Exit Sub
  loc_E88048: ' Referenced from: E88028
  loc_E88050: Set var_88 = Err()
  loc_E88056: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E88077: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8808A: Exit Sub
  loc_E8808B: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 '1191A6C
  'Data Table: 504C5C
  Dim var_A8 As Variant
  Dim var_A0 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_128 As Variant
  Dim var_90 As Variant
  Dim var_13C As Variant
  Dim var_164 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim unk_504C67 As Connection15
  Dim var_8C As Recordset15
  Dim var_19C As Long
  loc_119169C: Set var_90 = Me.TopCtrl1
  loc_11916A2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_11916BB: If (CStr() = "Browse") Then
  loc_11916BE:   Exit Sub
  loc_11916BF: End If
  loc_11916C3: Set var_A8 = Me.FGrid2
  loc_11916D2: var_B8 = CVar(CLng(var_A8.RowSel)) 'Long
  loc_11916DA: var_D8 = CVar(CLng(2)) 'Long
  loc_119170E: If CBool(Trim(CVar(CStr(var_A8.TextMatrix)))) <> vbNullString) Then
  loc_1191724:   var_B8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_119172C:   var_D8 = CVar(CLng(0)) 'Long
  loc_119175A:   var_128 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_1191762:   var_164 = CVar(CLng(2)) 'Long
  loc_1191771:   var_118 = Me.FGrid2.TextMatrix)
  loc_11917B8:   var_138 = CVar("SELECT PicPath FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_118) & "'") 'String
  loc_11917C2:   Me.var_118.Open var_138, CVar(MemVar_1F95044), 2
  loc_119181D:   If IsNull(CVar(Me.Recordset15.Fields.Item("PicPath"))) Then
  loc_1191832:     Me.Pic1.Picture = Nothing
  loc_119183E:   End If
  loc_1191847:   unk_504C67.BeginTrans var_198
  loc_1191863:   If (Me.Recordset15.RecordCount > 0) Then
  loc_119187C:     Set var_13C = var_8C 
  loc_119188C:     Proc_142_1_F342F8(Me.Pic1, var_13C, "PicPath", 3, -1, var_118, var_164)
  loc_1191897:     Set var_8C = var_13C
  loc_11918A6:   End If
  loc_11918AC:   var_8C.Close
  loc_11918B7:   unk_504C67.CommitTrans
  loc_11918BF: Else
  loc_11918D1:   Me.Pic1.Picture = Nothing
  loc_11918DD: End If
  loc_11918F2: var_A8.Tag = CVar(CStr(CLng(Pic1.DispID_C)))
  loc_119190D: var_B8 = CVar(CLng(CStr(var_A8.Tag))) 'Long
  loc_1191915: var_D8 = CVar(CLng(2)) 'Long
  loc_119194C: If (Trim(CVar(CStr(Pic1.DispID_41))) = vbNullString) Then
  loc_119194F:   Exit Sub
  loc_1191950: End If
  loc_119195C: var_19C = CLng(Pic1.DispID_B)
  loc_1191969: If (var_19C = CLng(1)) Then
  loc_11919AC:   If (CStr(Pic1.DispID_41) = vbNullString) Then
  loc_11919B2:     var_A0 = var_A8.Tag
  loc_11919CE:     Call Proc_120_53_FFC8F4(CInt(CStr(var_A0)), CInt(1), var_A0, CVar(CLng(1)), CVar(CLng(CStr(var_A8.Tag))), var_19C, CVar(CLng(1)))
  loc_11919E8:     var_B8 = CVar(CLng(CStr(var_A8.Tag))) 'Long
  loc_11919F0:     var_D8 = CVar(CLng(1)) 'Long
  loc_11919F5:     var_128 = "ü"
  loc_11919FE:     LateIdCallSt
  loc_1191A0F:   Else
  loc_1191A1E:     var_B8 = CVar(CLng(CStr(var_A8.Tag))) 'Long
  loc_1191A26:     var_D8 = CVar(CLng(1)) 'Long
  loc_1191A2B:     var_128 = vbNullString
  loc_1191A34:     LateIdCallSt
  loc_1191A42:     var_B8 = &HE0E0E0
  loc_1191A53:   End If
  loc_1191A53:   var_B8 = &HE0E0E0
  loc_1191A64: End If
  loc_1191A66: Set var_A8 = Nothing 
  loc_1191A6A: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_A '1038D4C
  'Data Table: 504C5C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  loc_1038B08: Set var_88 = Me.TopCtrl1
  loc_1038B0E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1038B53: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_1038B5C:   Call Form_KeyDown(KeyCode, Shift)
  loc_1038B61: End If
  loc_1038B65: Set var_88 = Me.TopCtrl1
  loc_1038B6B: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1038B84: If (CStr() = "Browse") Then
  loc_1038B87:   Exit Sub
  loc_1038B88: End If
  loc_1038BFC: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid2.Tag))) = CDbl((CLng(Me.FGrid2.Rows) - (CLng(Me.FGrid2.Rows) - 1))))) Then
  loc_1038C07:   var_9C = "+{Tab}"
  loc_1038C0D:   Proc_303_0_FBACC8(CStr(Me.FGrid2.Tag), 0)
  loc_1038C17:   KeyCode = 0
  loc_1038C1D: Else
  loc_1038C27:   var_B0 = Me.FGrid2.Rows
  loc_1038C74:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid2.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1038C85:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_1038C8F:     KeyCode = 0
  loc_1038C92:   End If
  loc_1038C92: End If
  loc_1038CB5: Me.FGrid2.Tag = CVar(CStr(CLng(Me.FGrid2.Row)))
  loc_1038CF0: If ((CLng(KeyCode) = &H20) And (CLng(Me.FGrid2.Col) = CLng(1))) Then
  loc_1038CF3:   Call FGrid2_UnknownEvent_9()
  loc_1038CF8: End If
  loc_1038D2B: If (((CLng(Me.FGrid2.Col) <> CLng(1)) And (CLng(KeyCode) = &H26)) Or (CLng(KeyCode) = &H28)) Then
  loc_1038D2E:   Call FGrid2_UnknownEvent_9()
  loc_1038D33: End If
  loc_1038D39: If (KeyCode = &HD) Then
  loc_1038D41:   global_100 = 0
  loc_1038D44: End If
  loc_1038D46: KeyCode = 0
  loc_1038D49: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_C 'E508D0
  'Data Table: 504C5C
  Dim var_8C As TextBox
  loc_E508A6: If (KeyCode = &HD) Then
  loc_E508B4:   Set var_88 = Me.txt
  loc_E508BA:   Call 0.Method_FGrid2_UnknownEvent_C0 (CInt(1))
  loc_E508C2:   var_8C.SetFocus
  loc_E508CE: End If
  loc_E508CE: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1383E48
  'Data Table: 504C5C
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_13835AE: Set var_88 = Me.txt
  loc_13835B4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13835C2: Proc_6_74_E23240(var_8C)
  loc_13835CE: Call Proc_120_58_F6AC1C(var_8C)
  loc_13835D6: var_92 = Index
  loc_13835E1: If (var_92 = CInt(5)) Then
  loc_13835FB:   If (Me.RecordCount > 0) Then
  loc_1383609:     Set var_8C = Me.FGPoint
  loc_1383621:     Proc_6_137_1192FDC(Me.DGCity, global_68, Index)
  loc_138362F:   End If
  loc_138367D:   Set var_88 = Me.txt
  loc_1383683:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_138368B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13836A3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_13836A6:     Exit Sub
  loc_13836A7:   End If
  loc_13836B4:   Set var_88 = Me.txt
  loc_13836BA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13836C2:   var_A0 = var_8C.Text
  loc_13836D4:   var_B0 = "Name"
  loc_138370F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1383718:     Me.MoveFirst
  loc_138373B:     Set var_88 = Me.txt
  loc_1383741:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1383749:     0 = var_8C.Text
  loc_1383762:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1383777:   End If
  loc_138377A: Else
  loc_1383782:   If (var_92 = CInt(&HE)) Then
  loc_138379C:     If (Me.RecordCount > 0) Then
  loc_13837AA:       Set var_8C = Me.FGPoint
  loc_13837C2:       Proc_6_137_1192FDC(Me.DGMarketSeg, global_64)
  loc_13837D0:     End If
  loc_138381E:     Set var_88 = Me.txt
  loc_1383824:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_138382C:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1383844:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1383854:       Set var_88 = Me.txt
  loc_138385A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1383862:       var_8C.Tag = vbNullString
  loc_138386E:       Exit Sub
  loc_138386F:     End If
  loc_138387C:     Set var_88 = Me.txt
  loc_1383882:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_138388A:     var_A0 = var_8C.Text
  loc_138389C:     var_B0 = "Name"
  loc_13838D7:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_13838E0:       Me.MoveFirst
  loc_1383903:       Set var_88 = Me.txt
  loc_1383909:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1383911:       0 = var_8C.Text
  loc_138392A:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_138393F:     End If
  loc_1383942:   Else
  loc_138394A:     If (var_92 = CInt(&HF)) Then
  loc_1383964:       If (Me.RecordCount > 0) Then
  loc_1383972:         Set var_8C = Me.FGPoint
  loc_138398A:         Proc_6_137_1192FDC(Me.DGSource, global_72)
  loc_1383998:       End If
  loc_13839E6:       Set var_88 = Me.txt
  loc_13839EC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13839F4:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1383A0C:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1383A1C:         Set var_88 = Me.txt
  loc_1383A22:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1383A2A:         var_8C.Tag = vbNullString
  loc_1383A36:         Exit Sub
  loc_1383A37:       End If
  loc_1383A44:       Set var_88 = Me.txt
  loc_1383A4A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1383A52:       var_A0 = var_8C.Text
  loc_1383A64:       var_B0 = "Name"
  loc_1383A9F:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1383AA8:         Me.MoveFirst
  loc_1383ACB:         Set var_88 = Me.txt
  loc_1383AD1:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1383AD9:         0 = var_8C.Text
  loc_1383AF2:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1383B07:       End If
  loc_1383B0A:     Else
  loc_1383B12:       If (var_92 = CInt(1)) Then
  loc_1383B2C:         If (Me.RecordCount > 0) Then
  loc_1383B3A:           Set var_8C = Me.FGPoint
  loc_1383B52:           Proc_6_137_1192FDC(Me.DGFuncType, global_76)
  loc_1383B60:         End If
  loc_1383BAE:         Set var_88 = Me.txt
  loc_1383BB4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1383BBC:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1383BD4:         If (Index Or (var_A0 = vbNullString)) Then
  loc_1383BE4:           Set var_88 = Me.txt
  loc_1383BEA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1383BF2:           var_8C.Tag = vbNullString
  loc_1383BFE:           Exit Sub
  loc_1383BFF:         End If
  loc_1383C0C:         Set var_88 = Me.txt
  loc_1383C12:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1383C1A:         var_A0 = var_8C.Text
  loc_1383C2C:         var_B0 = "Name"
  loc_1383C67:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1383C70:           Me.MoveFirst
  loc_1383C93:           Set var_88 = Me.txt
  loc_1383C99:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1383CA1:           0 = var_8C.Text
  loc_1383CBA:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1383CCF:         End If
  loc_1383CD2:       Else
  loc_1383CDA:         If (var_92 = CInt(0)) Then
  loc_1383CEA:           ReDim var_F0(0 To 1)
  loc_1383D01:           var_F0(0) = "Indoor"
  loc_1383D10:           var_F0(1) = "Outdoor"
  loc_1383D27:           global_80 = Array(var_F0)
  loc_1383D42:           CRefVarAry
  loc_1383D79:           Set global_96 = Proc_6_66_F0048C(Me.ListView, Me.txt, Index)
  loc_1383D8D:         Else
  loc_1383D95:           If (var_92 = CInt(&H11)) Then
  loc_1383DA5:             ReDim var_F0(0 To 1)
  loc_1383DBC:             var_F0(0) = "Active"
  loc_1383DCB:             var_F0(1) = "In Active"
  loc_1383DFD:             CRefVarAry
  loc_1383E34:             Set global_96 = Proc_6_66_F0048C(Me.ListView, Me.txt, Index, Array(var_F0), CInt((UBound(Array(var_F0), 1) + 1)))
  loc_1383E45:           End If
  loc_1383E45:         End If
  loc_1383E45:       End If
  loc_1383E45:     End If
  loc_1383E45:   End If
  loc_1383E45: End If
  loc_1383E45: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12ED6B4
  'Data Table: 504C5C
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_C0 As TextBox
  Dim var_8C As Variant
  Dim var_9C As DataGrid
  Dim var_A8 As DataGrid
  loc_12ED00E: If (CLng(Shift) = &H1B) Then
  loc_12ED011:   Call Proc_120_58_F6AC1C()
  loc_12ED016:   Exit Sub
  loc_12ED017: End If
  loc_12ED01A: var_88 = KeyCode
  loc_12ED025: If (var_88 = CInt(5)) Then
  loc_12ED045:   Set var_9C = Me.FGPoint
  loc_12ED077:   Proc_6_79_11AD564(Me.DGCity, Me.txt, CInt(5), global_68, Shift)
  loc_12ED0E4:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12ED10A:     Proc_6_138_106E830(Me.DGCity, global_68, KeyCode, Me.FGPoint, &HFF)
  loc_12ED118:   End If
  loc_12ED11B: Else
  loc_12ED123:   If (var_88 = CInt(&HE)) Then
  loc_12ED14E:     Set var_9C = Nothing
  loc_12ED17C:     Proc_6_69_134A630(Me.DGMarketSeg, Me.txt, KeyCode, global_64, Shift, 0, 1)
  loc_12ED1EB:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12ED1F2:       Set var_9C = Me.DGMarketSeg
  loc_12ED211:       Proc_6_138_106E830(var_9C, global_64, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_12ED21F:     End If
  loc_12ED222:   Else
  loc_12ED22A:     If (var_88 = CInt(1)) Then
  loc_12ED283:       Proc_6_69_134A630(Me.DGFuncType, Me.txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_12ED2F2:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12ED318:         Proc_6_138_106E830(Me.DGFuncType, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_12ED326:       End If
  loc_12ED329:     Else
  loc_12ED331:       If (var_88 = CInt(&HF)) Then
  loc_12ED33F:         Set var_AC = Me.txt
  loc_12ED351:         Set var_A4 = Me.FGPoint
  loc_12ED38A:         Proc_6_69_134A630(Me.DGSource, var_AC, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_12ED3A9:         var_B0 = Me.RecordCount
  loc_12ED3F9:         If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12ED407:           Set var_90 = Me.FGPoint
  loc_12ED41F:           Proc_6_138_106E830(Me.DGSource, global_72, KeyCode, var_90, var_A4, 0)
  loc_12ED42D:         End If
  loc_12ED430:       Else
  loc_12ED438:         If Not (var_88 = CInt(0)) Then
  loc_12ED443:           If (var_88 = CInt(&H11)) Then
  loc_12ED446:           End If
  loc_12ED468:           Set var_8C = Me.txt
  loc_12ED46E:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_12ED476:           1 = var_90.Left
  loc_12ED488:           Set var_9C = Me.txt
  loc_12ED48E:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_12ED496:           var_9C = var_A4.Top
  loc_12ED4A8:           Set var_A8 = Me.txt
  loc_12ED4AE:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_12ED4B6:           0 = var_AC.Height
  loc_12ED4C8:           Set var_B4 = Me.txt
  loc_12ED4CE:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12ED4D6:           var_C4 = var_C0.Width
  loc_12ED51E:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.txt, KeyCode, Shift, arg_14)
  loc_12ED542:         End If
  loc_12ED542:       End If
  loc_12ED542:     End If
  loc_12ED542:   End If
  loc_12ED542: End If
  loc_12ED5E9: If ((((((CBool(Me.DGCity.Visible) = 0) And (CBool(Me.DGVenue.Visible) = 0)) And (CBool(Me.DGMarketSeg.Visible) = 0)) And (CBool(Me.DGFuncType.Visible) = 0)) And (CBool(Me.DGSource.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_12ED5FF:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12ED608:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_B0), CInt((var_B8 + var_BC)))
  loc_12ED60D:   End If
  loc_12ED62B:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&H13))) Then
  loc_12ED634:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_C4))
  loc_12ED639:   End If
  loc_12ED657:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H13))) Then
  loc_12ED662:     Call Txt_Validate(KeyCode)
  loc_12ED67A:     Me.FGrid.Row = 1
  loc_12ED694:     Me.FGrid.Col = CVar(CLng(2))
  loc_12ED6A0:     Set var_8C = Me.FGrid
  loc_12ED6B1:   End If
  loc_12ED6B1: End If
  loc_12ED6B1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10AEDB4
  'Data Table: 504C5C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_10AEADE: Proc_6_133_E7FB08(var_94)
  loc_10AEAF3: If (CInt(var_94) = &HD) Then
  loc_10AEAF8:   arg_10 = 0
  loc_10AEAFB: End If
  loc_10AEAFE: Proc_6_58_E06050(arg_10, arg_10)
  loc_10AEB06: var_96 = KeyAscii
  loc_10AEB11: If (var_96 = CInt(1)) Then
  loc_10AEB30:   If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_10AEB5D:     Proc_6_89_1470B00(Me.txt, KeyAscii, global_60, arg_10, "Name")
  loc_10AEB8F:     Proc_6_138_106E830(Me.DGVenue, global_60, KeyAscii, Me.FGPoint)
  loc_10AEB9D:   End If
  loc_10AEBA0: Else
  loc_10AEBA8:   If (var_96 = CInt(&HE)) Then
  loc_10AEBC7:     If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_10AEBF4:       Proc_6_89_1470B00(Me.txt, KeyAscii, global_64, arg_10, "Name")
  loc_10AEC26:       Proc_6_138_106E830(Me.DGMarketSeg, global_64, KeyAscii, Me.FGPoint, 0)
  loc_10AEC34:     End If
  loc_10AEC37:   Else
  loc_10AEC3F:     If (var_96 = CInt(&HF)) Then
  loc_10AEC5E:       If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_10AEC8B:         Proc_6_89_1470B00(Me.txt, KeyAscii, global_72, arg_10, "Name")
  loc_10AECBD:         Proc_6_138_106E830(Me.DGSource, global_72, KeyAscii, Me.FGPoint, 0)
  loc_10AECCB:       End If
  loc_10AECCE:     Else
  loc_10AECD6:       If (var_96 = CInt(1)) Then
  loc_10AECF5:         If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_10AED22:           Proc_6_89_1470B00(Me.txt, KeyAscii, global_76, arg_10, "Name")
  loc_10AED3C:           Set var_A8 = Me.FGPoint
  loc_10AED54:           Proc_6_138_106E830(Me.DGFuncType, global_76, KeyAscii, var_A8, 0)
  loc_10AED62:         End If
  loc_10AED65:       Else
  loc_10AED6D:         If Not (var_96 = CInt(&HC)) Then
  loc_10AED78:           If (var_96 = CInt(&HD)) Then
  loc_10AED7B:           End If
  loc_10AED85:           Set var_9C = Me.txt
  loc_10AED8B:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_10AEDA6:           Proc_6_42_129B55C(var_A8, arg_10, 8, 0)
  loc_10AEDB2:         End If
  loc_10AEDB2:       End If
  loc_10AEDB2:     End If
  loc_10AEDB2:   End If
  loc_10AEDB2: End If
  loc_10AEDB2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F32150
  'Data Table: 504C5C
  Dim var_86 As Integer
  loc_F32043: var_86 = KeyCode
  loc_F3204E: If (var_86 = CInt(5)) Then
  loc_F3206D:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F3207A:     var_A4 = "Name"
  loc_F32099:     Proc_6_80_FF1F20(Me.txt, CInt(5), global_68)
  loc_F320CB:     Proc_6_138_106E830(Me.DGCity, global_68, KeyCode, Me.FGPoint)
  loc_F320D9:   End If
  loc_F320DC: Else
  loc_F320E4:   If Not (var_86 = CInt(0)) Then
  loc_F320EF:     If (var_86 = CInt(&H11)) Then
  loc_F320F2:     End If
  loc_F3210D:     If (Me.FrmList.Visible = &HFF) Then
  loc_F3213C:       Proc_6_64_F299E8(Me.ListView, Me.txt, KeyCode, Shift)
  loc_F3214C:     End If
  loc_F3214C:   End If
  loc_F3214C: End If
  loc_F3214C: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F0D4
  'Data Table: 504C5C
  loc_E4F0B2: Set var_88 = Me.txt
  loc_E4F0B8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F0C6: Proc_6_73_E23294(var_8C)
  loc_E4F0D2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12D89B8
  'Data Table: 504C5C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_B8 As TextBox
  loc_12D830B: var_86 = Cancel
  loc_12D8316: If (var_86 = CInt(5)) Then
  loc_12D8326:   Set var_8C = Me.txt
  loc_12D832C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D8334:   var_94 = var_90.Text
  loc_12D834B:   If (var_94 = vbNullString) Then
  loc_12D835B:     Set var_8C = Me.txt
  loc_12D8361:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D8369:     var_90.Tag = vbNullString
  loc_12D8375:     Exit Sub
  loc_12D8376:   End If
  loc_12D838D:   If (Me.RecordCount <= 0) Then
  loc_12D8390:     Exit Sub
  loc_12D8391:   End If
  loc_12D8397:   Me.MoveFirst
  loc_12D83BA:   Set var_8C = Me.txt
  loc_12D83C0:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, "Name like '")
  loc_12D83C8:   0 = var_90.Text
  loc_12D83E1:   Me.Find 1 & var_94 & "*'", var_B0, var_86
  loc_12D840D:   If (Me.AbsolutePosition > 0) Then
  loc_12D844B:     Set var_B4 = Me.txt
  loc_12D8451:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D8459:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12D848C:     var_90 = Me.Fields.Item("Code")
  loc_12D84AA:     Set var_B4 = Me.txt
  loc_12D84B0:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D84B8:     var_B8.Tag = CStr(var_90.Value)
  loc_12D84CE:     GoTo loc_12D84D1
  loc_12D84D1:     ' Referenced from: 12D84CE
  loc_12D84D1:   End If
  loc_12D84D4: Else
  loc_12D84DC:   If (var_86 = CInt(&HE)) Then
  loc_12D852D:     Set var_8C = Me.txt
  loc_12D8533:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D8553:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_12D8563:       Set var_8C = Me.txt
  loc_12D8569:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D8571:       var_90.Tag = vbNullString
  loc_12D857D:       Exit Sub
  loc_12D857E:     End If
  loc_12D85B9:     Set var_B4 = Me.txt
  loc_12D85BF:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D85C7:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12D85FA:     var_90 = Me.Fields.Item("Code")
  loc_12D8618:     Set var_B4 = Me.txt
  loc_12D861E:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D8626:     var_B8.Tag = CStr(var_90.Value)
  loc_12D863F:   Else
  loc_12D8647:     If (var_86 = CInt(&HF)) Then
  loc_12D8698:       Set var_8C = Me.txt
  loc_12D869E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D86BE:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_12D86CE:         Set var_8C = Me.txt
  loc_12D86D4:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D86DC:         var_90.Tag = vbNullString
  loc_12D86E8:         Exit Sub
  loc_12D86E9:       End If
  loc_12D8724:       Set var_B4 = Me.txt
  loc_12D872A:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D8732:       var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12D8765:       var_90 = Me.Fields.Item("Code")
  loc_12D8783:       Set var_B4 = Me.txt
  loc_12D8789:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D8791:       var_B8.Tag = CStr(var_90.Value)
  loc_12D87AA:     Else
  loc_12D87B2:       If (var_86 = CInt(1)) Then
  loc_12D8803:         Set var_8C = Me.txt
  loc_12D8809:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D8829:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_12D8839:           Set var_8C = Me.txt
  loc_12D883F:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D8847:           var_90.Tag = vbNullString
  loc_12D8853:           Exit Sub
  loc_12D8854:         End If
  loc_12D888F:         Set var_B4 = Me.txt
  loc_12D8895:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D889D:         var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12D88D0:         var_90 = Me.Fields.Item("Code")
  loc_12D88EE:         Set var_B4 = Me.txt
  loc_12D88F4:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D88FC:         var_B8.Tag = CStr(var_90.Value)
  loc_12D8915:       Else
  loc_12D891D:         If Not (var_86 = CInt(0)) Then
  loc_12D8928:           If (var_86 = CInt(&H11)) Then
  loc_12D892B:           End If
  loc_12D8938:           Set var_8C = Me.txt
  loc_12D893E:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D895D:           If (var_90.Text <> vbNullString) Then
  loc_12D8990:             Set var_B4 = Me.txt
  loc_12D8996:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12D899E:             var_B8.Text = Me.ListView.SelectedItem.Text
  loc_12D89B4:           End If
  loc_12D89B4:         End If
  loc_12D89B4:       End If
  loc_12D89B4:     End If
  loc_12D89B4:   End If
  loc_12D89B4: End If
  loc_12D89B4: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E850B0
  'Data Table: 504C5C
  loc_E8505C: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_E8505F:   Call DGMarketSeg_UnknownEvent_9()
  loc_E85064: End If
  loc_E85080: If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_E85083:   Call DGFuncType_UnknownEvent_9()
  loc_E85088: End If
  loc_E850A4: If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_E850A7:   Call DGSource_UnknownEvent_9()
  loc_E850AC: End If
  loc_E850AC: Exit Sub
  loc_E850AD: Set var_B4 = 
End Sub

Private Sub DGCity_UnknownEvent_9 'F46BD4
  'Data Table: 504C5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F46ACB: Me.DGCity.Visible = False
  loc_F46AEA: If (Me.RecordCount > 0) Then
  loc_F46B29:   Set var_B4 = Me.txt
  loc_F46B2F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(5), var_B8)
  loc_F46B37:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F46B6A:   var_B0 = Me.Fields.Item("Code")
  loc_F46B89:   Set var_B4 = Me.txt
  loc_F46B8F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(5), var_B8)
  loc_F46B97:   var_B8.Tag = CStr(var_B0.Value)
  loc_F46BAD: End If
  loc_F46BB8: Set var_A8 = Me.txt
  loc_F46BBE: Call 0.Method_DGCity_UnknownEvent_90 (CInt(5))
  loc_F46BC6: var_B0.SetFocus
  loc_F46BD2: Exit Sub
End Sub

Private Sub DGSource_UnknownEvent_9 'F47834
  'Data Table: 504C5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4772B: Me.DGSource.Visible = False
  loc_F4774A: If (Me.RecordCount > 0) Then
  loc_F47789:   Set var_B4 = Me.txt
  loc_F4778F:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F47797:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F477CA:   var_B0 = Me.Fields.Item("Code")
  loc_F477E9:   Set var_B4 = Me.txt
  loc_F477EF:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F477F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4780D: End If
  loc_F47818: Set var_A8 = Me.txt
  loc_F4781E: Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF))
  loc_F47826: var_B0.SetFocus
  loc_F47832: Exit Sub
End Sub

Private Sub DGSource_UnknownEvent_1F 'EA54E8
  'Data Table: 504C5C
  Dim var_A8 As Variant
  loc_EA5468: Set var_88 = Me.DGSource
  loc_EA5492: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA549A: Set var_BC = Me.DGSource
  loc_EA54D6: Proc_6_138_106E830(Me.DGSource, global_72, CInt(&HF), Me.FGPoint)
  loc_EA54E4: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FE1578
  'Data Table: 504C5C
  Dim var_92 As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim var_1B01 As Double
  loc_FE13B6: Set var_88 = Me.TxtGrid
  loc_FE13BC: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_FE13CA: Proc_6_74_E23240(var_8C)
  loc_FE13D9: var_92 = Index
  loc_FE13E2: If (var_92 = 1) Then
  loc_FE1401:   Set var_8C = Me.FGrid
  loc_FE1419:   Set var_90 = Me.FGrid
  loc_FE1437:   Set var_108 = Me.TxtGrid
  loc_FE143D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(var_90.TextMatrix)), CVar(CLng(var_8C.Col)))
  loc_FE1445:   var_10C.Tag = CVar(CLng(Me.FGrid.RowSel))
  loc_FE1463:   var_C4 = "MS Sans Serif"
  loc_FE1475:   Set var_88 = Me.TxtGrid
  loc_FE147B:   Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_90)
  loc_FE1483:   var_C4 = var_8C.Font
  loc_FE148B:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_FE14A6:   Set var_88 = Me.TxtGrid
  loc_FE14AC:   Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, CDbl(8))
  loc_FE14B4:   var_8C.FontSize = var_92
  loc_FE14D3:   var_114 = CLng(Me.FGrid.Col)
  loc_FE14E3:   If (var_114 = CLng(2)) Then
  loc_FE14E6:     var_C4 = "WINGDINGS"
  loc_FE14F8:     Set var_88 = Me.TxtGrid
  loc_FE14FE:     Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_90)
  loc_FE1506:     var_C4 = var_8C.Font
  loc_FE150E:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_FE1529:     Set var_88 = Me.TxtGrid
  loc_FE152F:     Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, CDbl(&HE))
  loc_FE1537:     var_8C.FontSize = var_114
  loc_FE1553:     Me.FGrid.CellFontName = "WINGDINGS"
  loc_FE156D:     Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_FE1575:   End If
  loc_FE1575: End If
  loc_FE1575: Exit Sub
  loc_FE1576: var_1B01 = var_8C
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FD166C
  'Data Table: 504C5C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_FD14B4: If (KeyCode = 1) Then
  loc_FD14C1:   If (CLng(Shift) = &H1B) Then
  loc_FD14D1:     Set var_8C = Me.TxtGrid
  loc_FD14D7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_FD14F1:     Set var_98 = Me.TxtGrid
  loc_FD14F7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_FD14FF:     var_9C.Text = var_90.Tag
  loc_FD1516:     Set var_8C = Me.FGrid
  loc_FD1533:     Set var_8C = Me.TxtGrid
  loc_FD1539:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_FD1541:     var_90.Visible = FGrid.DispID_8001
  loc_FD154D:     Exit Sub
  loc_FD154E:   End If
  loc_FD1561:   var_B0 = CLng(Me.FGrid.Col)
  loc_FD1571:   If (var_B0 = CLng(3)) Then
  loc_FD157E:     If (CLng(Shift) = &HD) Then
  loc_FD1587:       Call Proc_120_50_117A4A4(KeyCode, var_B2)
  loc_FD1592:       If (var_B2 = &HFF) Then
  loc_FD15D8:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_100, 7)
  loc_FD15E8:       End If
  loc_FD15E8:     End If
  loc_FD15EB:   Else
  loc_FD15F2:     If (var_B0 = CLng(5)) Then
  loc_FD15FF:       If (CLng(Shift) = &HD) Then
  loc_FD1608:         Call Proc_120_50_117A4A4(KeyCode, var_B2, 0, 4)
  loc_FD1613:         If (var_B2 = &HFF) Then
  loc_FD1659:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_100, 7)
  loc_FD1669:         End If
  loc_FD1669:       End If
  loc_FD1669:     End If
  loc_FD1669:   End If
  loc_FD1669: End If
  loc_FD1669: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E99D94
  'Data Table: 504C5C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A8 As MaskEdBox
  loc_E99D20: If (Cancel = 1) Then
  loc_E99D36:   var_A0 = CLng(Me.FGrid.Col)
  loc_E99D46:   If (var_A0 = CLng(5)) Then
  loc_E99D49:     GoTo loc_E99D56
  loc_E99D4C:   End If
  loc_E99D53:   If (var_A0 = CLng(5)) Then
  loc_E99D56:     ' Referenced from: E99D49
  loc_E99D56:   End If
  loc_E99D5C:   Call Proc_120_50_117A4A4(Cancel, var_A2)
  loc_E99D76:   Set var_8C = Me.txtMEd
  loc_E99D7C:   Call 0.Method_TxtGrid_Validate0 (0, var_A8, False)
  loc_E99D84:   var_A8.Visible = Not(var_A2)
  loc_E99D90: End If
  loc_E99D90: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_9 'F48074
  'Data Table: 504C5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F47F6B: Me.DGMarketSeg.Visible = False
  loc_F47F8A: If (Me.RecordCount > 0) Then
  loc_F47FC9:   Set var_B4 = Me.txt
  loc_F47FCF:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F47FD7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4800A:   var_B0 = Me.Fields.Item("Code")
  loc_F48029:   Set var_B4 = Me.txt
  loc_F4802F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F48037:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4804D: End If
  loc_F48058: Set var_A8 = Me.txt
  loc_F4805E: Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE))
  loc_F48066: var_B0.SetFocus
  loc_F48072: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_1F 'EA5670
  'Data Table: 504C5C
  Dim var_A8 As Variant
  Dim DGMarketSeg_UnknownEvent_1FFF As Double
  loc_EA55F0: Set var_88 = Me.DGMarketSeg
  loc_EA561A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA5622: Set var_BC = Me.DGMarketSeg
  loc_EA565E: Proc_6_138_106E830(Me.DGMarketSeg, global_64, CInt(&HE), Me.FGPoint)
  loc_EA566C: Exit Sub
  loc_EA566D: DGMarketSeg_UnknownEvent_1FFF = DGMarketSeg.DispID_1B
End Sub

Private Sub FGrid_UnknownEvent_0 'E362A4
  'Data Table: 504C5C
  Dim var_8C As TextBox
  loc_E36287: Set var_88 = Me.TxtGrid
  loc_E3628D: Call 0.Method_FGrid_UnknownEvent_00 (1, var_8C)
  loc_E36295: var_8C.Visible = False
  loc_E362A1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '1370F3C
  'Data Table: 504C5C
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As String
  Dim var_120 As MSHFlexGrid
  Dim var_138 As Variant
  Dim var_11A As Integer
  Dim var_88 As Variant
  Dim var_114 As Variant
  Dim unk_504C67 As Connection15
  Dim var_118 As Recordset15
  Dim var_19C As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim FGrid_UnknownEvent_94 As Variant
  loc_13706EC: Set var_88 = Me.TopCtrl1
  loc_13706F2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_137070B: If (CStr() = "Browse") Then
  loc_137070E:   Exit Sub
  loc_137070F: End If
  loc_1370713: Set var_A0 = Me.FGrid
  loc_137072F: If (CLng(var_A0.Col) = CLng(2)) Then
  loc_137073E:   var_B4 = CVar(CLng(var_A0.RowSel)) 'Long
  loc_1370746:   var_D4 = CVar(CLng(2)) 'Long
  loc_137076B:   If (CStr(var_A0.TextMatrix)) = vbNullString) Then
  loc_137077A:     var_B4 = CVar(CLng(var_A0.RowSel)) 'Long
  loc_1370782:     var_D4 = CVar(CLng(2)) 'Long
  loc_1370787:     var_104 = "ü"
  loc_1370790:     LateIdCallSt
  loc_137079E:   Else
  loc_13707AA:     var_B4 = CVar(CLng(var_A0.RowSel)) 'Long
  loc_13707B2:     var_D4 = CVar(CLng(2)) 'Long
  loc_13707B7:     var_104 = vbNullString
  loc_13707C0:     LateIdCallSt
  loc_13707CB:   End If
  loc_13707CB: End If
  loc_13707CD: Set var_A0 = Nothing 
  loc_13707D5: Set var_120 = Me.FGrid2
  loc_13707F3: For var_124 = 1 To CInt((CLng(var_120.Rows) - 1)): var_11A = var_124 'Integer
  loc_1370805:   var_120.Row = CVar(CLng(var_11A))
  loc_1370825:   For var_128 = 0 To CInt((CLng(var_120.Cols) - 1)): var_11C = var_128 'Integer
  loc_1370837:     var_120.Col = CVar(CLng(var_11C))
  loc_1370877:     If (((CLng(var_120.Col) = CLng(1)) Or (CLng(var_120.Col) = CLng(3))) Or (CLng(var_120.Col) = CLng(5))) Then
  loc_1370883:       var_120.CellFontName = "wingdings"
  loc_1370893:       var_120.CellFontSize = CVar(CDbl(&H12))
  loc_13708A4:       var_120.CellForeColor = &HFF0000
  loc_13708AD:       var_B4 = CVar(CLng(var_11A)) 'Long
  loc_13708B6:       var_D4 = CVar(CLng(var_11C)) 'Long
  loc_13708BB:       var_104 = vbNullString
  loc_13708C4:       LateIdCallSt
  loc_13708CC:     End If
  loc_13708CF:   Next var_128 'Integer
  loc_13708D7: Next var_124 'Integer
  loc_13708DE: Set var_120 = Nothing 
  loc_13708E4: var_11A = 0
  loc_13708FA: var_B4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1370902: var_D4 = CVar(CLng(7)) 'Long
  loc_1370953: unk_504C67.Execute CStr("Select * FROM VenueCapacity Where VenueCode='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_18C, -1
  loc_137095E: Set var_118 = var_190
  loc_1370992: var_114 = (var_118.RecordCount > 0)
  loc_13709A9: var_B4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13709FD: If CBool(CVar(CLng(2)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString)) Then
  loc_1370A10:   Me.FGrid2.Tag = vbNullString
  loc_1370A18:   ' Referenced from: 1370D01
  loc_1370A27:   If Not(var_118.EOF) Then
  loc_1370A30:     var_11A = (var_11A + 1)
  loc_1370A37:     Set var_19C = Me.FGrid2
  loc_1370A45:     var_19C.Col = CVar(CLng(1))
  loc_1370A53:     var_19C.CellFontName = "wingdings"
  loc_1370A63:     var_19C.CellFontSize = CVar(CDbl(&H12))
  loc_1370A74:     var_19C.CellForeColor = &HFF0000
  loc_1370A7D:     var_C4 = CVar(CLng(var_11A)) 'Long
  loc_1370A85:     var_E4 = CVar(CLng(0)) 'Long
  loc_1370AB5:     var_F4 = CVar(CStr(var_118.Fields.Item("Venuecode").Value)) 'String
  loc_1370ABC:     LateIdCallSt
  loc_1370B0B:     var_F4 = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Capacity")), CVar(CLng(2)), CVar(CLng(var_11A)), var_19C, var_F4, CVar(CLng(2)), CVar(CLng(var_11A)))) 'String
  loc_1370B12:     LateIdCallSt
  loc_1370B5B:     Proc_6_48_EF4E00(var_F4, CVar(var_118.Fields.Item("Seating")), CVar(CLng(4)), CVar(CLng(var_11A)), var_19C, var_F4)
  loc_1370B6B:     LateIdCallSt
  loc_1370BB6:     Proc_6_48_EF4E00(var_F4, CVar(var_118.Fields.Item("Floating")), CVar(CLng(6)), CVar(CLng(var_11A)), var_19C, CVar(CStr(var_F4)))
  loc_1370BBF:     var_138 = CVar(CStr(var_F4)) 'String
  loc_1370BC6:     LateIdCallSt
  loc_1370BF1:     If (Me.RecordCount <> 0) Then
  loc_1370C5A:       Set var_190 = Me.TopCtrl1
  loc_1370C60:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005((Trim(CVar(CStr(var_19C.TextMatrix)))) = Trim(CVar(Me.Fields.Item("Capacity")))))
  loc_1370C70:       var_114 = (CStr(CVar(CLng(2))) <> "Add")
  loc_1370C95:       If CBool(CVar(CLng(var_11A)) And var_114) Then
  loc_1370C9C:         var_B4 = CVar(CLng(var_11A)) 'Long
  loc_1370CA4:         var_D4 = CVar(CLng(1)) 'Long
  loc_1370CA9:         var_104 = "ü"
  loc_1370CB2:         LateIdCallSt
  loc_1370CC6:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B(CVar(CStr(var_11A)))
  loc_1370CD1:       Else
  loc_1370CD5:         var_B4 = CVar(CLng(var_11A)) 'Long
  loc_1370CDD:         var_D4 = CVar(CLng(1)) 'Long
  loc_1370CE2:         var_104 = vbNullString
  loc_1370CEB:         LateIdCallSt
  loc_1370CF3:       End If
  loc_1370CF3:     End If
  loc_1370CF5:     Set var_19C = Nothing 
  loc_1370CFC:     var_118.MoveNext
  loc_1370D01:     GoTo loc_1370A18
  loc_1370D04:   End If
  loc_1370D28:   If Not((CStr(Me.FGrid2.Tag) = vbNullString)) Then
  loc_1370D41:     var_B4 = CVar(CLng(CStr(Me.FGrid2.Tag))) 'Long
  loc_1370D49:     var_D4 = CVar(CLng(7)) 'Long
  loc_1370D58:     var_F4 = Me.FGrid2.TextMatrix)
  loc_1370D85:     Me.var_F4.LoadPicture CVar(CStr(var_F4)), var_104, var_114, var_17C, var_1BC
  loc_1370D9A:     Me.Pic1.Picture = var_190
  loc_1370DB9:   Else
  loc_1370DCB:     Me.Pic1.Picture = Nothing
  loc_1370DD7:   End If
  loc_1370E00:   For var_1C8 = (var_11A + 1) To CInt((CLng(Me.FGrid2.Rows) - 1)): var_11C = var_1C8 'Integer
  loc_1370E0A:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_1370E12:     var_D4 = CVar(CLng(1)) 'Long
  loc_1370E17:     var_104 = vbNullString
  loc_1370E21:     Set var_88 = Me.FGrid2
  loc_1370E27:     LateIdCallSt
  loc_1370E36:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_1370E3E:     var_D4 = CVar(CLng(0)) 'Long
  loc_1370E43:     var_104 = vbNullString
  loc_1370E4D:     Set var_88 = Me.FGrid2
  loc_1370E53:     LateIdCallSt
  loc_1370E62:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_1370E6A:     var_D4 = CVar(CLng(2)) 'Long
  loc_1370E6F:     var_104 = vbNullString
  loc_1370E79:     Set var_88 = Me.FGrid2
  loc_1370E7F:     LateIdCallSt
  loc_1370E8E:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_1370E96:     var_D4 = CVar(CLng(4)) 'Long
  loc_1370E9B:     var_104 = vbNullString
  loc_1370EA5:     Set var_88 = Me.FGrid2
  loc_1370EAB:     LateIdCallSt
  loc_1370EBA:     var_B4 = CVar(CLng(var_11C)) 'Long
  loc_1370EC2:     var_D4 = CVar(CLng(6)) 'Long
  loc_1370EC7:     var_104 = vbNullString
  loc_1370ED1:     Set var_88 = Me.FGrid2
  loc_1370ED7:     LateIdCallSt
  loc_1370EE5:   Next var_1C8 'Integer
  loc_1370EFA:   Me.FGrid2.Tag = vbNullString
  loc_1370F05: Else
  loc_1370F0F:   FGrid_UnknownEvent_94 = Me.FGrid2.Text
  loc_1370F2C:   Me.Pic1.Picture = Nothing
  loc_1370F38: End If
  loc_1370F38: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '111D4C4
  'Data Table: 504C5C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_111D16C: Set var_88 = Me.TopCtrl1
  loc_111D172: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_111D1B7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_111D1C0:   Call Form_KeyDown(Cancel, arg_10)
  loc_111D1C5: End If
  loc_111D1C9: Set var_88 = Me.TopCtrl1
  loc_111D1CF: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_111D1E8: If (CStr() = "Browse") Then
  loc_111D1EB:   Exit Sub
  loc_111D1EC: End If
  loc_111D260: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_111D26B:   var_9C = "+{Tab}"
  loc_111D271:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_111D27B:   Cancel = 0
  loc_111D281: Else
  loc_111D28B:   var_B0 = Me.FGrid.Rows
  loc_111D2D8:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_111D2E9:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_111D2F3:     Cancel = 0
  loc_111D2F6:   End If
  loc_111D2F6: End If
  loc_111D319: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_111D33D: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_111D353:   var_DC = CLng(Me.FGrid.Col)
  loc_111D363:   If Not (var_DC = CLng(3)) Then
  loc_111D36D:     If (var_DC = CLng(5)) Then
  loc_111D370:     End If
  loc_111D383:     var_D8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_111D39B:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_111D3A0:     var_11C = vbNullString
  loc_111D3AA:     Set var_B4 = Me.FGrid
  loc_111D3B0:     LateIdCallSt
  loc_111D3CB:   Else
  loc_111D3D2:     If Not (var_DC = CLng(4)) Then
  loc_111D3DC:       If (var_DC = CLng(6)) Then
  loc_111D3DF:       End If
  loc_111D3F2:       var_D8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_111D40A:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_111D40F:       var_11C = "00:00"
  loc_111D419:       Set var_B4 = Me.FGrid
  loc_111D41F:       LateIdCallSt
  loc_111D437:     End If
  loc_111D437:   End If
  loc_111D437: End If
  loc_111D45F: If ((CLng(Cancel) = &H20) And (CLng(Me.FGrid.Col) = CLng(2))) Then
  loc_111D462:   Call FGrid_UnknownEvent_9()
  loc_111D467: End If
  loc_111D48F: If ((CLng(Cancel) = &HD) And (CLng(Me.FGrid.Col) = CLng(2))) Then
  loc_111D4A4:   Me.FGrid.Col = CVar(CLng(3))
  loc_111D4AC: End If
  loc_111D4B2: If (Cancel = &HD) Then
  loc_111D4BA:   global_100 = 0
  loc_111D4BD: End If
  loc_111D4BF: Cancel = 0
  loc_111D4C2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E12148
  'Data Table: 504C5C
  loc_E12139: Call FGrid_UnknownEvent_C()
  loc_E12143: global_100 = 0
  loc_E12146: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1034FA4
  'Data Table: 504C5C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1034D6C: Set var_88 = Me.TopCtrl1
  loc_1034D72: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1034D8B: If (CStr() = "Browse") Then
  loc_1034D8E:   Exit Sub
  loc_1034D8F: End If
  loc_1034DA2: var_A0 = CLng(Me.FGrid.Col)
  loc_1034DB2: If Not (var_A0 = CLng(3)) Then
  loc_1034DBC:   If (var_A0 = CLng(5)) Then
  loc_1034DBF:   End If
  loc_1034DC3:   Set var_C4 = Me.FGrid
  loc_1034DE7:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1034E14:   Set var_B4 = var_C4
  loc_1034E26:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_1034E4E:   Set var_88 = Me.TxtGrid
  loc_1034E54:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4, var_9C, Asc(var_9C))
  loc_1034E5C:   0 = var_B4.Text
  loc_1034E75:   If (Len(var_9C) <= 1) Then
  loc_1034E84:     Set var_88 = Me.TxtGrid
  loc_1034E8A:     Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4, var_9C)
  loc_1034E92:     var_CA = var_B4.Text
  loc_1034EA3:     Set var_B8 = Me.TxtGrid
  loc_1034EA9:     Call 0.Method_FGrid_UnknownEvent_C0 (1, var_C4)
  loc_1034EB1:     var_C4.Text = var_9C
  loc_1034EC4:   End If
  loc_1034ED0:   Set var_88 = Me.TxtGrid
  loc_1034ED6:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4)
  loc_1034EF0:   Set var_B8 = Me.TxtGrid
  loc_1034EF6:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_C4)
  loc_1034EFE:   var_C4.SelStart = Len(var_B4.Text)
  loc_1034F14: Else
  loc_1034F1B:   If (var_A0 = CLng(2)) Then
  loc_1034F1E:     GoTo loc_1034F8C
  loc_1034F21:   End If
  loc_1034F28:   If Not (var_A0 = CLng(4)) Then
  loc_1034F32:     If (var_A0 = CLng(6)) Then
  loc_1034F35:     End If
  loc_1034F46:     var_9C = "T"
  loc_1034F77:     Proc_6_134_112C1C4(Me, Me.FGrid, Me.txtMEd, 0)
  loc_1034F8C:     ' Referenced from:   1034F1E
  loc_1034F8C:   End If
  loc_1034F8C: End If
  loc_1034F96: If (CLng(Cancel) <> &HD) Then
  loc_1034F9E:   global_100 = &HFF
  loc_1034FA1: End If
  loc_1034FA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '101D4D4
  'Data Table: 504C5C
  Dim var_8C As Variant
  Dim var_94 As TextBox
  loc_101D2A4: On Error Goto loc_101D4CE
  loc_101D2CA: Call Proc_120_54_EC9E68(Proc_5_1_100EC1C("ADD", Me))
  loc_101D2D5: Call Proc_120_49_13609DC(global_56)
  loc_101D2DA: Call Proc_120_55_E9E7A8()
  loc_101D2EC: Me.LblUser.Caption = vbNullString
  loc_101D301: Me.LblLDt.Caption = vbNullString
  loc_101D317: Set var_8C = Me.txt
  loc_101D31D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H12), var_94)
  loc_101D325: var_94.Text = MemVar_1F950C8
  loc_101D346: If (global_52 = MemVar_1F95078 & "BANQ") Then
  loc_101D357:   Set var_8C = Me.txt
  loc_101D35D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_101D365:   var_94.Text = "Indoor"
  loc_101D374: Else
  loc_101D382:   Set var_8C = Me.txt
  loc_101D388:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_101D390:   var_94.Text = "Outdoor"
  loc_101D39C: End If
  loc_101D3AF: Me.FGrid.FillStyle = 0
  loc_101D3CA: Me.FGrid.SelectionMode = 0
  loc_101D3E5: Me.FGrid.HighLight = 2
  loc_101D400: Me.FGrid.BackColorSel = &HE0E0E0
  loc_101D41B: Me.FGrid2.FillStyle = 0
  loc_101D436: Me.FGrid2.SelectionMode = 0
  loc_101D451: Me.FGrid2.HighLight = 2
  loc_101D466: Set var_8C = Me.txt
  loc_101D46C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_101D474: var_94.Enabled = False
  loc_101D48E: Set var_8C = Me.txt
  loc_101D494: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H11), var_94)
  loc_101D49C: var_94.Text = "Active"
  loc_101D4B3: Set var_8C = Me.txt
  loc_101D4B9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_101D4C1: var_94.SetFocus
  loc_101D4CD: Exit Sub
  loc_101D4CE: ' Referenced from: 101D2A4
  loc_101D4CE: Proc_6_60_E63754(var_94)
  loc_101D4D3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC675C
  'Data Table: 504C5C
  loc_EC66C4: On Error Goto loc_EC6754
  loc_EC66FE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC670D:   Set var_10C = Me
  loc_EC6724:   Call Proc_120_54_EC9E68(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC672F:   Call Proc_120_58_F6AC1C(global_56)
  loc_EC6734:   Call Proc_120_56_14761E0()
  loc_EC673C: Else
  loc_EC6742:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC674A:   Call var_10C.SetFocus
  loc_EC6753: End If
  loc_EC6753: Exit Sub
  loc_EC6754: ' Referenced from: EC66C4
  loc_EC6754: Proc_6_60_E63754()
  loc_EC6759: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1171C68
  'Data Table: 504C5C
  Dim var_138 As Integer
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_504C67 As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Fields15
  Dim var_13C As Field20
  loc_11718D8: On Error Goto loc_1171C19
  loc_11718E9: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_11718EC:   Exit Sub
  loc_11718ED: End If
  loc_11718F3: var_138 = 0
  loc_117193B: var_DC = "Select Count(*) from hallbook where inquiryCode='" & Me.Fields.Item("SearchCode").Value 
  loc_1171944: var_FC = var_DC & "'" 
  loc_1171952: unk_504C67.Execute CStr(var_FC), var_120, -1
  loc_117195A: var_124 = var_124.Fields
  loc_1171962: var_138 = var_128.Item(var_128)
  loc_117196A: var_13C = var_13C.Value
  loc_1171997: If (var_14C > 0) Then
  loc_11719B3:   MsgBox("Booking Already made for this Booking You Can't delete it", &H40, var_DC, var_FC, var_120)
  loc_11719C3:   Exit Sub
  loc_11719C4: End If
  loc_11719FB: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_120) = 6) Then
  loc_1171A07:   unk_504C67.BeginTrans var_170
  loc_1171A1D:   var_94 = Me.Bookmark 'Variant
  loc_1171A69:   var_FC = "Delete From BookingInquiry Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1171A77:   unk_504C67.Execute CStr(var_FC), var_120, -1
  loc_1171AC2:   var_1A8 = 0
  loc_1171AD5:   var_1A0 = 0
  loc_1171AE0:   var_19C = 0
  loc_1171AF3:   var_194 = 0
  loc_1171AFE:   var_190 = 0
  loc_1171B11:   var_188 = 0
  loc_1171B51:   var_100 = "BookingInquiry"
  loc_1171B5A:   Proc_154_5_10E3BD4(MemVar_1F95044, var_100, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1171B88:   unk_504C67.CommitTrans
  loc_1171B98:   Me.Requery -1
  loc_1171BB8:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1171BC5:     Me.Bookmark = var_94
  loc_1171BCD:   Else
  loc_1171BE1:     If (Me.EOF = 0) Then
  loc_1171BEA:       Me.MoveLast
  loc_1171BEF:     End If
  loc_1171BEF:   End If
  loc_1171BEF:   Call Proc_120_56_14761E0(var_188, 0, var_190, var_194)
  loc_1171C10:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_1171C18: End If
  loc_1171C18: Exit Sub
  loc_1171C19: ' Referenced from: 11718D8
  loc_1171C1F: unk_504C67.RollbackTrans
  loc_1171C2C: Set var_98 = Err()
  loc_1171C32: Call 0.Method_arg_2C (var_100, 0, var_19C)
  loc_1171C53: MsgBox(CVar(var_100), &H30, " Deletion Error ", var_FC, var_120)
  loc_1171C66: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1035224
  'Data Table: 504C5C
  Dim var_128 As Integer
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim unk_504C67 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  loc_1034FF4: On Error Goto loc_103521B
  loc_1035005: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_1035008:   Exit Sub
  loc_1035009: End If
  loc_103500F: var_128 = 0
  loc_1035047: var_9C = Me.Fields.Item("SearchCode")
  loc_1035057: var_CC = "Select Count(*) from hallbook where inquiryCode='" & var_9C.Value 
  loc_1035060: var_EC = var_CC & "'" 
  loc_103506E: unk_504C67.Execute CStr(var_EC), var_110, -1
  loc_1035076: var_114 = var_114.Fields
  loc_103507E: var_128 = var_118.Item(var_118)
  loc_1035086: var_12C = var_12C.Value
  loc_10350B3: If (var_13C > 0) Then
  loc_10350CF:   MsgBox("Booking Already made for this Booking You Can't Modify it", &H40, var_CC, var_EC, var_110)
  loc_10350DF:   Exit Sub
  loc_10350E0: End If
  loc_1035103: Call Proc_120_54_EC9E68(Proc_5_1_100EC1C("EDIT", Me), global_56)
  loc_1035121: Me.FGrid.FillStyle = 0
  loc_103513C: Me.FGrid.SelectionMode = 0
  loc_1035157: Me.FGrid.HighLight = 2
  loc_1035172: Me.FGrid.BackColorSel = &HE0E0E0
  loc_103518D: Me.FGrid2.FillStyle = 0
  loc_10351A8: Me.FGrid2.SelectionMode = 0
  loc_10351C3: Me.FGrid2.HighLight = 2
  loc_10351D6: Set var_88 = Me.txt
  loc_10351DC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_9C)
  loc_10351E4: var_9C.SetFocus
  loc_10351FD: Me.LblUser.Caption = vbNullString
  loc_1035212: Me.LblLDt.Caption = vbNullString
  loc_103521A: Exit Sub
  loc_103521B: ' Referenced from: 1034FF4
  loc_103521B: Proc_6_60_E63754(var_13C)
  loc_1035220: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1CADC
  'Data Table: 504C5C
  loc_E1CAD1: Me.Global.Unload Me
  loc_E1CAD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F7AAAC
  'Data Table: 504C5C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F7A968: On Error Goto loc_F7AA46
  loc_F7A974: var_88 = Me.RecordCount
  loc_F7A982: If (var_88 <= 0) Then
  loc_F7A98B:   var_B8 = "Information"
  loc_F7A9A6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F7A9B6:   Exit Sub
  loc_F7A9B7: End If
  loc_F7A9CC: If (global_52 = MemVar_1F95078 & "BANQ") Then
  loc_F7A9D6:   var_10C = "SELECT BI.Code AS SearchCode,Convert(Varchar(11),B.FuncDate,100) as InquiryDate,BI.PartyName,BI.ConPerson,BI.Pax,BI.GurrPax,V.Name As VenueName,FT.Name As FunctionType,BI.Status FROM " & " (((BookingInquiry BI Left Join FunctionType FT On BI.FuncType=FT.Code) Left Join BookingDetail B On BI.Code=B.Code) Left Join VenueMast V On B.VenueCode=V.Code) where BI.LogSite_Code in ('"
  loc_F7A9E4:   MemVar_1F950E4 = var_10C & MemVar_1F95078 & "')  and CatType='Indoor' ORDER BY BI.PartyName"
  loc_F7A9F2: Else
  loc_F7A9F9:   var_10C = "SELECT BI.Code AS SearchCode,Convert(Varchar(11),B.FuncDate,100) as InquiryDate,BI.PartyName,BI.ConPerson,BI.Pax,BI.GurrPax,V.Name As VenueName,FT.Name As FunctionType,BI.Status FROM " & " (((BookingInquiry BI Left Join FunctionType FT On BI.FuncType=FT.Code) Left Join BookingDetail B On BI.Code=B.Code) Left Join VenueMast V On B.VenueCode=V.Code) where BI.LogSite_Code in ('"
  loc_F7AA07:   MemVar_1F950E4 = var_10C & MemVar_1F95078 & "')  and CatType='Outdoor' ORDER BY BI.PartyName"
  loc_F7AA12: End If
  loc_F7AA18: MemVar_1F95120 = Me
  loc_F7AA1F: var_10C = "1200,2000,2000,1000,1000,2000,2000"
  loc_F7AA25: Proc_6_126_F1C850(var_10C, MemVar_1F950E4)
  loc_F7AA40: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F7AA45: Exit Sub
  loc_F7AA46: ' Referenced from: F7A968
  loc_F7AA4E: Set var_114 = Err()
  loc_F7AA54: Call 0.Method_arg_1C (var_88)
  loc_F7AA65: If (var_88 <> 0) Then
  loc_F7AA70:   Set var_114 = Err()
  loc_F7AA76:   Call 0.Method_arg_2C (var_10C)
  loc_F7AA97:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F7AAAA: End If
  loc_F7AAAA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36308
  'Data Table: 504C5C
  loc_E362F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36300: Call Proc_120_56_14761E0(global_56)
  loc_E36305: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36488
  'Data Table: 504C5C
  loc_E36478: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36480: Call Proc_120_56_14761E0(global_56)
  loc_E36485: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36428
  'Data Table: 504C5C
  loc_E36418: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36420: Call Proc_120_56_14761E0(global_56)
  loc_E36425: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36368
  'Data Table: 504C5C
  loc_E36358: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36360: Call Proc_120_56_14761E0(global_56)
  loc_E36365: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10C2328
  'Data Table: 504C5C
  Dim var_D4 As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_504C67 As Connection15
  Dim var_88 As Recordset15
  Dim var_136 As Integer
  loc_10C2054: On Error Goto loc_10C22DC
  loc_10C2064: var_D4 = "SELECT B.Code As SearchCode, BD.FuncDate, BD.ToDate, BD.FuncTime, BD.ToTime,F.Name As FunctionType,BS.Name As BussinessName,M.Name As MarketSegName,V.Name VenueName,B.CatType,B.PartyName,B.Add1,B.Add2,B.City,B.PhoneR,B.PhoneO,B.MobileNo,B.ConPerson,B.BookedBy,B.HandledBy,B.Status,B.U_Name,B.Remark FROM BookingInquiry B INNER JOIN BookingDetail BD ON B.Code=BD.Code Left Join BussSource BS On B.BussSource=BS.Code Left Join MarketSeg M On B.MarketSeg=M.Code LEFT JOIN FunctionType F ON B.FuncType=F.Code Left Join VenueMast V On BD.VenueCode=V.Code Where B.Code='"
  loc_10C2086: var_B4 = Me.Fields.Item("Code")
  loc_10C2096: var_E4 = var_D4 & var_B4.Value 
  loc_10C209A: var_F4 = "'"
  loc_10C209F: var_104 = var_E4 & var_F4 
  loc_10C20AD: unk_504C67.Execute CStr(var_104), var_128, -1
  loc_10C20B8: Set var_88 = var_12C
  loc_10C20D8: var_130 = var_88.RecordCount
  loc_10C20E6: If (var_130 = 0) Then
  loc_10C2102:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_128)
  loc_10C2112:   Exit Sub
  loc_10C2113: End If
  loc_10C2122: var_134 = MemVar_1F950B4 & "\BookingInquiry.ttx"
  loc_10C2129: Set var_A0 = var_88 
  loc_10C2135: var_136 = CreateFieldDefFile(var_A0, var_134)
  loc_10C213F: Set var_88 = var_A0
  loc_10C2145: var_B0 = CVar(var_136) 'Integer
  loc_10C2148: var_98 = var_B0 'Variant
  loc_10C2164: var_108 = MemVar_1F950B4 & "\BookingInquiry.RPT"
  loc_10C216D: Call 0.Method_arg_1C (var_108, var_B0, var_A0)
  loc_10C2178: MemVar_1F951E8 = var_A0
  loc_10C2193: Call 0.Method_arg_90 (var_A0, var_130, var_9A, 1)
  loc_10C219B: Call 0.Method_arg_24 (var_136, &HFF)
  loc_10C21A7: For var_13A =  To CInt(var_130): var_12C = var_13A 'Integer
  loc_10C21C0:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_10C21C8:   Call 0.Method_arg_20 (var_B4)
  loc_10C21D0:   Call 0.Method_arg_30 (var_108)
  loc_10C2216:   If (Ucase(CVar(var_108)) = Ucase("Title")) Then
  loc_10C222C:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_10C2234:     Call 0.Method_arg_20 (var_B4)
  loc_10C223C:     Call 0.Method_arg_38 ("'Booking Inquiry'")
  loc_10C2248:   End If
  loc_10C224B: Next var_13A 'Integer
  loc_10C2269: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_10C2271: Call 0.Method_arg_2C (var_D4)
  loc_10C227F: Call 0.Method_arg_150 (var_F4)
  loc_10C228A: Call 0.Method_arg_50 (var_108)
  loc_10C2294: Set var_B4 = Nothing
  loc_10C22AE: Set var_A0 = MemVar_1F951E8 
  loc_10C22BA: Proc_6_99_1484404(var_A0, 0, var_108)
  loc_10C22C5: MemVar_1F951E8 = var_A0
  loc_10C22D8: Set var_88 = Nothing
  loc_10C22DB: Exit Sub
  loc_10C22DC: ' Referenced from: 10C2054
  loc_10C22E4: Set var_A0 = Err()
  loc_10C22EA: Call 0.Method_arg_2C (var_108, &HFF)
  loc_10C22F5: Call 0.Method_arg_50 (var_134)
  loc_10C2311: MsgBox(CVar(var_108), &H10, CVar(var_134), var_104, var_128)
  loc_10C2324: Exit Sub
  loc_10C2325: CopyBytes 9727
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E5674C
  'Data Table: 504C5C
  Dim Me As Recordset15
  loc_E56713: Me.Requery -1
  loc_E56723: Me.Requery -1
  loc_E56733: Me.Requery -1
  loc_E56743: Me.Requery -1
  loc_E56748: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15EC218
  'Data Table: 504C5C
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_8E As Variant
  Dim var_E0 As Variant
  Dim var_154 As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2E4 As Variant
  Dim var_324 As Variant
  Dim var_334 As Variant
  Dim var_374 As Variant
  Dim var_3C4 As Variant
  Dim var_3D4 As Variant
  Dim var_468 As MSHFlexGrid
  Dim var_A4 As String
  Dim unk_504C67 As Connection15
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Field20
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  Dim var_48C As TextBox
  Dim var_498 As TextBox
  Dim var_4A4 As TextBox
  Dim var_4B0 As TextBox
  Dim var_4BC As TextBox
  Dim var_4C8 As TextBox
  Dim var_3B4 As Variant
  Dim var_4D4 As TextBox
  Dim var_4F0 As TextBox
  Dim var_53C As TextBox
  Dim var_588 As TextBox
  Dim var_5D4 As TextBox
  Dim var_658 As TextBox
  Dim var_6EC As TextBox
  Dim var_728 As TextBox
  Dim var_9AC As Double
  Dim var_754 As TextBox
  Dim var_9B4 As Double
  Dim var_478 As String
  Dim var_2F4 As Variant
  Dim var_5F8 As Variant
  Dim var_73C As Variant
  Dim var_840 As Variant
  Dim var_9B8 As MSHFlexGrid
  Dim var_1D4 As Variant
  Dim var_254 As Variant
  Dim var_480 As String
  loc_15EB078: On Error Goto loc_15EC1C3
  loc_15EB07F: var_86 = CByte(0) 'Byte
  loc_15EB08E: Set var_98 = Me.txt
  loc_15EB094: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_15EB0BD: If (Proc_6_27_EA61EC(var_9C, "Party Name") = 0) Then
  loc_15EB0C7:   Call Txt_GotFocus(CInt(2))
  loc_15EB0CC:   Exit Sub
  loc_15EB0CD: End If
  loc_15EB0D8: Set var_98 = Me.txt
  loc_15EB0DE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_15EB107: If (Proc_6_27_EA61EC(var_9C, "Catering Type") = 0) Then
  loc_15EB111:   Call Txt_GotFocus(CInt(0))
  loc_15EB116:   Exit Sub
  loc_15EB117: End If
  loc_15EB122: Set var_98 = Me.txt
  loc_15EB128: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_9C)
  loc_15EB151: If (Proc_6_27_EA61EC(var_9C, "Contact Person") = 0) Then
  loc_15EB15B:   Call Txt_GotFocus(CInt(&HA))
  loc_15EB160:   Exit Sub
  loc_15EB161: End If
  loc_15EB16C: Set var_98 = Me.txt
  loc_15EB172: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_15EB19B: If (Proc_6_27_EA61EC(var_9C, "Function Type") = 0) Then
  loc_15EB19E:   Exit Sub
  loc_15EB19F: End If
  loc_15EB1A3: Set var_AC = Me.FGrid
  loc_15EB1C1: For var_C0 = 1 To CInt((CLng(var_AC.Rows) - 2)): var_90 = var_C0 'Integer
  loc_15EB1CB:   var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EB1D3:   var_F0 = CVar(CLng(2)) 'Long
  loc_15EB1EC:   var_120 = Trim(CVar(CStr(var_AC.TextMatrix))))
  loc_15EB205:   If CBool(var_120 <> vbNullString) Then
  loc_15EB20A:     var_8E = &HFF
  loc_15EB20D:   End If
  loc_15EB210: Next var_C0 'Integer
  loc_15EB21B: If (var_8E = 0) Then
  loc_15EB23F:   MsgBox("Please Select Venue.", &H40, "Booking Inquiry...", var_120, var_140)
  loc_15EB25B:   var_AC.Row = 1
  loc_15EB26B:   var_AC.Col = CVar(CLng(2))
  loc_15EB27B:   Exit Sub
  loc_15EB27F: Else
  loc_15EB29A:   For var_144 = 1 To CInt((CLng(var_AC.Rows) - 2)):   var_90 = var_144 'Integer
  loc_15EB2A4:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EB2AC:     var_F0 = CVar(CLng(2)) 'Long
  loc_15EB2DE:     If CBool(Trim(CVar(CStr(var_AC.TextMatrix)))) <> vbNullString) Then
  loc_15EB2E5:       var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EB2ED:       var_F0 = CVar(CLng(3)) 'Long
  loc_15EB306:       var_120 = Trim(CVar(CStr(var_AC.TextMatrix))))
  loc_15EB30E:       var_130 = vbNullString
  loc_15EB31C:       var_154 = CVar(CLng(var_90)) 'Long
  loc_15EB34F:       var_1E4 = CVar(CLng(4)) Or (Trim(CVar(CStr(var_AC.TextMatrix)))) = vbNullString)
  loc_15EB357:       var_1F4 = CVar(CLng(var_90)) 'Long
  loc_15EB378:       var_254 = Trim(CVar(CStr(var_AC.TextMatrix))))
  loc_15EB38A:       var_284 = CVar(CLng(4)) Or (var_254 = "0:00")
  loc_15EB392:       var_294 = CVar(CLng(var_90)) 'Long
  loc_15EB3AD:       var_2E4 = CVar(CStr(var_AC.TextMatrix))) 'String
  loc_15EB3C5:       var_324 = CVar(CLng(5)) Or (Trim(var_2E4) = vbNullString)
  loc_15EB3CD:       var_334 = CVar(CLng(var_90)) 'Long
  loc_15EB3DD:       var_374 = var_AC.TextMatrix)
  loc_15EB400:       var_3C4 = CVar(CLng(6)) Or (Trim(CVar(CStr(var_374))) = vbNullString)
  loc_15EB408:       var_3D4 = CVar(CLng(var_90)) 'Long
  loc_15EB468:       If CBool(CVar(CLng(6)) Or (Trim(CVar(CStr(var_AC.TextMatrix)))) = "0:00")) Then
  loc_15EB48C:         MsgBox("Please Check Function Date and Time.", &H40, "Booking Inquiry...", var_120, var_140)
  loc_15EB4A8:         var_AC.Row = CVar(CLng(var_90))
  loc_15EB4B8:         var_AC.Col = CVar(CLng(3))
  loc_15EB4C8:         Exit Sub
  loc_15EB4C9:       End If
  loc_15EB4C9:     End If
  loc_15EB4CC:   Next var_144 'Integer
  loc_15EB4D1: End If
  loc_15EB4D3: Set var_AC = Nothing 
  loc_15EB4DB: Set var_468 = Me.FGrid2
  loc_15EB4E7: var_468.Tag = vbNullString
  loc_15EB4EF: var_94 = vbNullString
  loc_15EB50D: For var_46C = 1 To CInt((CLng(var_468.Rows) - 1)): var_90 = var_46C 'Integer
  loc_15EB517:   var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EB51F:   var_F0 = CVar(CLng(1)) 'Long
  loc_15EB540:   If (CStr(var_468.TextMatrix)) = "ü") Then
  loc_15EB547:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EB54F:     var_F0 = CVar(CLng(2)) 'Long
  loc_15EB569:     var_468.Tag = CVar(CStr(var_468.TextMatrix)))
  loc_15EB579:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EB581:     var_F0 = CVar(CLng(3)) 'Long
  loc_15EB5A2:     If (CStr(var_468.TextMatrix)) = "ü") Then
  loc_15EB5A8:       var_94 = "S"
  loc_15EB5AB:     End If
  loc_15EB5AF:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EB5B7:     var_F0 = CVar(CLng(5)) 'Long
  loc_15EB5D8:     If (CStr(var_468.TextMatrix)) = "ü") Then
  loc_15EB5DE:       var_94 = "F"
  loc_15EB5E1:     End If
  loc_15EB5E4:   Else
  loc_15EB5E7:     var_94 = "A"
  loc_15EB5EA:   End If
  loc_15EB5ED: Next var_46C 'Integer
  loc_15EB60B: If (CStr(var_468.Tag) = vbNullString) Then
  loc_15EB619:   var_110 = "Error..."
  loc_15EB629:   var_BC = "Please choose venue's capacity."
  loc_15EB62F:   MsgBox(var_BC, &H40, var_110, var_120, var_140)
  loc_15EB63F:   Exit Sub
  loc_15EB640: End If
  loc_15EB642: Set var_468 = Nothing 
  loc_15EB64A: Set var_98 = Me.TopCtrl1
  loc_15EB650: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_15EB669: If (CStr() = "Add") Then
  loc_15EB672:   var_E0 = 0
  loc_15EB68F:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From BookingInquiry where Site_code='" & MemVar_1F95070
  loc_15EB69F:   unk_504C67.Execute CStr() & "'", var_BC, -1
  loc_15EB6A7:   var_98 = var_98.Fields
  loc_15EB6AF:   var_E0 = var_9C.Item(var_9C)
  loc_15EB6B7:   var_A0 = var_A0.Value
  loc_15EB6E7:   var_120 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_15EB712:   var_140 = (1 + Format(CStr(var_110), "0000"))
  loc_15EB717:   var_8C = CStr(var_140)
  loc_15EB728: Else
  loc_15EB745:   var_9C = Me.Fields.Item("Code")
  loc_15EB74D:   var_BC = var_9C.Value
  loc_15EB756:   var_8C = CStr(var_BC)
  loc_15EB763: End If
  loc_15EB76C: unk_504C67.BeginTrans var_474
  loc_15EB775: var_86 = CByte(1) 'Byte
  loc_15EB79D: unk_504C67.Execute "Delete From BookingInquiry Where Code='" & var_8C & "'", var_BC, -1
  loc_15EB7D3: unk_504C67.Execute "Delete From BookingDetail Where Code='" & var_8C & "'", var_BC, -1
  loc_15EB7F9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_480, Me.txt)
  loc_15EB801: var_98 = var_9C.Text
  loc_15EB814: Set var_A0 = Me.txt
  loc_15EB81A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_48C, var_490)
  loc_15EB822: 1 = var_48C.Text
  loc_15EB83B: Proc_6_17_EAAE40(var_120, Trim(CVar(var_490)))
  loc_15EB84E: Set var_494 = Me.txt
  loc_15EB854: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_498, var_49C)
  loc_15EB86A: Proc_6_17_EAAE40(var_1D4, CVar(var_49C))
  loc_15EB87D: Set var_4A0 = Me.txt
  loc_15EB883: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_4A4)
  loc_15EB899: Proc_6_17_EAAE40(var_254, CVar(var_4A4.Text))
  loc_15EB8AC: Set var_4AC = Me.txt
  loc_15EB8B2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_4B0)
  loc_15EB8C8: Proc_6_17_EAAE40(var_2E4, CVar(var_4B0.Text))
  loc_15EB8DB: Set var_4B8 = Me.txt
  loc_15EB8E1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4BC)
  loc_15EB8F7: Proc_6_17_EAAE40(var_374, CVar(var_4BC.Text))
  loc_15EB90A: Set var_4C4 = Me.txt
  loc_15EB910: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_4C8)
  loc_15EB920: var_3B4 = CVar(var_4C8.Text) 'String
  loc_15EB926: Proc_6_17_EAAE40(var_3C4, var_3B4)
  loc_15EB939: Set var_4D0 = Me.txt
  loc_15EB93F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_4D4)
  loc_15EB955: Proc_6_17_EAAE40(var_454, CVar(var_4D4.Text))
  loc_15EB968: Set var_4EC = Me.txt
  loc_15EB96E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_4F0)
  loc_15EB984: Proc_6_17_EAAE40(var_514, CVar(var_4F0.Text))
  loc_15EB997: Set var_538 = Me.txt
  loc_15EB99D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_53C)
  loc_15EB9B3: Proc_6_17_EAAE40(var_560, CVar(var_53C.Text))
  loc_15EB9C6: Set var_584 = Me.txt
  loc_15EB9CC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_588)
  loc_15EB9E2: Proc_6_17_EAAE40(var_5AC, CVar(var_588.Text))
  loc_15EB9F5: Set var_5D0 = Me.txt
  loc_15EB9FB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_5D4)
  loc_15EBA13: Set var_60C = Me.txt
  loc_15EBA19: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_610)
  loc_15EBA28: Proc_6_17_EAAE40(var_630, CVar(var_610))
  loc_15EBA3B: Set var_654 = Me.txt
  loc_15EBA41: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_658)
  loc_15EBA59: Set var_690 = Me.txt
  loc_15EBA5F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_694)
  loc_15EBA6E: Proc_6_17_EAAE40(var_6B4, CVar(var_694))
  loc_15EBA81: Set var_6E8 = Me.txt
  loc_15EBA87: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_6EC)
  loc_15EBAA2: Set var_724 = Me.txt
  loc_15EBAA8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_728)
  loc_15EBABD: var_9AC = Val(var_728.Text)
  loc_15EBACE: Set var_750 = Me.txt
  loc_15EBAD4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_754, var_758)
  loc_15EBAE9: var_9B4 = Val(var_758)
  loc_15EBAF7: Proc_6_7_F26918(var_7C8, MemVar_1F950EC)
  loc_15EBB00: Set var_7EC = Me.TopCtrl1
  loc_15EBB06: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_9B4)
  loc_15EBB5B: Set var_928 = Me.txt
  loc_15EBB61: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_92C)
  loc_15EBB70: Proc_6_17_EAAE40(var_94C, CVar(var_92C))
  loc_15EBB89: var_A4 = "Insert Into BookingInquiry(Code,CatType,PartyName,Add1,Add2,City,PhoneR,PhoneO,MobileNo,FaxNo," & " ConPerson,BookedBy,FuncType,HandledBy,BussSource,Status, "
  loc_15EBB97: var_478 = var_A4 & " MarketSeg,Pax,GurrPax,VenueCode,Site_Code,U_Name,U_EntDt,U_AE,Capacity,capacityType,LogSite_Code,Remark)" & " Values('"
  loc_15EBBB3: var_140 = CVar(var_478 & var_8C & "','" & var_480 & "',") 'String
  loc_15EBBE2: var_284 = var_140 & var_498.Text & "," & var_1D4 & "," & var_254 & "," 
  loc_15EBC5C: var_5F8 = var_284 & var_2E4 & "," & var_374 & "," & var_3C4 & "," & var_454 & "," & var_514 & "," & var_560 & "," & var_5AC & ",'" & CVar(var_5D4.Tag) 
  loc_15EBCBF: var_73C = var_5F8 & "'," & var_630 & ",'" & CVar(var_658.Tag) & "'," & var_6B4 & vbNullString & ",'" & CVar(var_6EC.Tag) & "'," & CVar(var_754.Text) 
  loc_15EBD19: var_840 = var_73C & "," & CVar(var_9B4) & ",'','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_7C8 & ",'" & IIf((CStr(var_7FC) = "Add"), "A", "E") 
  loc_15EBD70: var_980 = CStr(var_840 & "','" & CVar(CStr(Me.FGrid2.Tag)) & "','" & CVar(var_94) & "','" & CVar(MemVar_1F95078) & "'," & var_94C & ")")
  loc_15EBD7A: unk_504C67.Execute var_980, var_9A0, -1
  loc_15EBEA4: Set var_9B8 = Me.FGrid
  loc_15EBEC2: For var_9BC = 1 To CInt((CLng(var_9B8.Rows) - 2)): var_90 = var_9BC 'Integer
  loc_15EBECC:   var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EBED4:   var_F0 = CVar(CLng(2)) 'Long
  loc_15EBF06:   If CBool(Trim(CVar(CStr(var_9B8.TextMatrix)))) <> vbNullString) Then
  loc_15EBF0D:     var_D0 = CVar(CLng(var_90)) 'Long
  loc_15EBF15:     var_F0 = CVar(CLng(7)) 'Long
  loc_15EBF1D:     var_BC = var_9B8.TextMatrix)
  loc_15EBF3D:     var_110 = var_9B8.TextMatrix)
  loc_15EBF48:     var_120 = CVar(CStr(var_110)) 'String
  loc_15EBF4E:     Proc_6_7_F26918(var_140, var_120, CVar(CLng(3)), CVar(CLng(var_90)), var_BC, var_F0, var_D0)
  loc_15EBF67:     var_1D4 = var_9B8.TextMatrix)
  loc_15EBF98:     Proc_6_7_F26918(var_284, CVar(CStr(var_9B8.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_90)), var_1D4, CVar(CLng(4)), CVar(CLng(var_90)))
  loc_15EBFB1:     var_2F4 = var_9B8.TextMatrix)
  loc_15EBFC8:     Proc_6_7_F26918(var_3B4, MemVar_1F950EC, var_2F4, CVar(CLng(6)), CVar(CLng(var_90)), var_F0)
  loc_15EBFE1:     var_A4 = "Insert Into BookingDetail(Code,VenueCode,FuncDate,FuncTime,ToDate,ToTime,Site_Code,U_EntDt,U_AE,LogSite_Code) " & " Values('"
  loc_15EC03F:     var_324 = CVar(var_A4 & var_8C & "','" & CStr(var_BC) & "',") & var_140 & ",'" & CVar(CStr(var_1D4)) & "'," & var_284 & ",'" & CVar(CStr(var_2F4)) 
  loc_15EC08C:     unk_504C67.Execute CStr(var_324 & "','" & CVar(MemVar_1F95078) & "'," & var_3B4 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_454, -1
  loc_15EC0DE:   End If
  loc_15EC0E1: Next var_9BC 'Integer
  loc_15EC0E8: Set var_9B8 = Nothing 
  loc_15EC0F2: unk_504C67.CommitTrans
  loc_15EC0FB: var_86 = CByte(0) 'Byte
  loc_15EC10A: Me.Requery -1
  loc_15EC134: Me.Find "SearchCode='" & var_8C & "'", 0, 1
  loc_15EC144: Set var_98 = Me.TopCtrl1
  loc_15EC14A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_D0)
  loc_15EC163: If (CStr() = "Add") Then
  loc_15EC166:   Call TopCtrl1_UnknownEvent_A()
  loc_15EC172:   VerifyVarObj
  loc_15EC17E:   Me.Pic1._Default = CVar(Nothing)
  loc_15EC189:   Exit Sub
  loc_15EC18A: End If
  loc_15EC19F: var_A4 = "INI"
  loc_15EC1AD: Call Proc_120_54_EC9E68(Proc_5_1_100EC1C(var_A4, Me))
  loc_15EC1B8: Call Proc_120_58_F6AC1C(global_56)
  loc_15EC1BD: Call Proc_120_56_14761E0()
  loc_15EC1C2: Exit Sub
  loc_15EC1C3: ' Referenced from: 15EB078
  loc_15EC1CC: If (CInt(var_86) = 1) Then
  loc_15EC1D5:   unk_504C67.RollbackTrans
  loc_15EC1DA: End If
  loc_15EC1E2: Set var_98 = Err()
  loc_15EC1E8: Call 0.Method_arg_2C (var_A4)
  loc_15EC201: MsgBox(CVar(var_A4), &H10, var_110, var_120, var_140)
  loc_15EC214: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_9 'F46E94
  'Data Table: 504C5C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F46D8B: Me.DGFuncType.Visible = False
  loc_F46DAA: If (Me.RecordCount > 0) Then
  loc_F46DE9:   Set var_B4 = Me.txt
  loc_F46DEF:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F46DF7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F46E2A:   var_B0 = Me.Fields.Item("Code")
  loc_F46E49:   Set var_B4 = Me.txt
  loc_F46E4F:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F46E57:   var_B8.Tag = CStr(var_B0.Value)
  loc_F46E6D: End If
  loc_F46E78: Set var_A8 = Me.txt
  loc_F46E7E: Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(1))
  loc_F46E86: var_B0.SetFocus
  loc_F46E92: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_1F 'EA4A30
  'Data Table: 504C5C
  Dim var_A8 As Variant
  loc_EA49B0: Set var_88 = Me.DGFuncType
  loc_EA49DA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA49E2: Set var_BC = Me.DGFuncType
  loc_EA4A1E: Proc_6_138_106E830(Me.DGFuncType, global_76, CInt(1), Me.FGPoint)
  loc_EA4A2C: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_0 'F1CFB4
  'Data Table: 504C5C
  Dim var_C0 As Variant
  Dim var_10C As MaskEdBox
  Dim var_130 As Long
  loc_F1CECC: Call Proc_120_58_F6AC1C()
  loc_F1CEDD: If (Cancel = 0) Then
  loc_F1CEF3:   var_C0 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_F1CF33:   Set var_108 = Me.txtMEd
  loc_F1CF39:   Call 0.Method_txtMEd_UnknownEvent_00 (Cancel, var_10C, CVar(CStr(Me.FGrid.TextMatrix))))
  loc_F1CF41:   var_10C.Tag = CVar(CLng(Me.FGrid.ColSel))
  loc_F1CF71:   var_130 = CLng(Me.FGrid.Col)
  loc_F1CF81:   If Not (var_130 = CLng(4)) Then
  loc_F1CF8B:     If (var_130 = CLng(6)) Then
  loc_F1CF8E:     End If
  loc_F1CF97:     If (global_100 = 0) Then
  loc_F1CFA2:       var_134 = "{Home}+{End}"
  loc_F1CFA8:       Proc_303_0_FBACC8(var_134, 0, var_130)
  loc_F1CFB0:     End If
  loc_F1CFB0:   End If
  loc_F1CFB0: End If
  loc_F1CFB0: Exit Sub
  loc_F1CFB1: Set var_FC = var_C0
End Sub

Private Sub txtMEd_UnknownEvent_8 'E21FE0
  'Data Table: 504C5C
  Dim arg_10 As Integer
  loc_E21FC8: If (Cancel = 0) Then
  loc_E21FD1:   Call Proc_120_52_119E9D0(Cancel, var_88)
  loc_E21FDA:   arg_10 = Not(var_88)
  loc_E21FDD: End If
  loc_E21FDD: Exit Sub
  loc_E21FDE: CExtInstUnk
End Sub

Private Sub txtMEd_UnknownEvent_B '106CBF8
  'Data Table: 504C5C
  Dim var_A0 As Variant
  Dim var_90 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_C4 As Long
  loc_106C974: If (Cancel = 0) Then
  loc_106C981:   If (CLng(arg_10) = &H1B) Then
  loc_106C988:     Set var_8C = Me.FGrid
  loc_106C9A8:     Set var_8C = Me.txtMEd
  loc_106C9AE:     Call 0.Method_txtMEd_UnknownEvent_B0 (Cancel, var_90, False)
  loc_106C9B6:     var_90.Visible = FGrid.DispID_8001
  loc_106C9C2:     Exit Sub
  loc_106C9C3:   End If
  loc_106C9D6:   var_C4 = CLng(Me.FGrid.Col)
  loc_106C9E6:   If (var_C4 = CLng(4)) Then
  loc_106CA29:     If ((CLng(arg_10) = &HD) Or (((((CLng(arg_10) = &H25) Or (CLng(arg_10) = &H27)) Or (CLng(arg_10) = &H26)) Or (CLng(arg_10) = &H28)) And (global_100 = &HFF))) Then
  loc_106CA32:       Call Proc_120_52_119E9D0(Cancel, var_C6)
  loc_106CA3D:       If (var_C6 = &HFF) Then
  loc_106CA4B:         Set var_8C = Me.TxtGrid
  loc_106CA51:         Call 0.Method_txtMEd_UnknownEvent_B0 (1, var_90, 0)
  loc_106CA59:         var_90.Visible = var_C4
  loc_106CA99:         Set var_90 = Me.txtMEd
  loc_106CAA8:         Proc_6_62_1254E68(Me.FGrid, var_90, Cancel, arg_10, global_100)
  loc_106CAB8:       End If
  loc_106CAB8:     End If
  loc_106CABB:   Else
  loc_106CAC2:     If (var_C4 = CLng(6)) Then
  loc_106CB05:       If ((CLng(arg_10) = &HD) Or (((((CLng(arg_10) = &H25) Or (CLng(arg_10) = &H27)) Or (CLng(arg_10) = &H26)) Or (CLng(arg_10) = &H28)) And (global_100 = &HFF))) Then
  loc_106CB0E:         Call Proc_120_52_119E9D0(Cancel, var_C6, 7, 0)
  loc_106CB19:         If (var_C6 = &HFF) Then
  loc_106CB27:           Set var_8C = Me.TxtGrid
  loc_106CB2D:           Call 0.Method_txtMEd_UnknownEvent_B0 (1, var_90, 0)
  loc_106CB35:           var_90.Visible = True
  loc_106CB84:           Proc_6_62_1254E68(Me.FGrid, Me.txtMEd, Cancel, arg_10, global_100, 7)
  loc_106CBAD:           var_A0 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_106CBB6:           Set var_90 = Me.FGrid
  loc_106CBBC:           var_90.Row = False
  loc_106CBCE:         Else
  loc_106CBD8:           Set var_8C = Me.txtMEd
  loc_106CBDE:           Call 0.Method_txtMEd_UnknownEvent_B0 (Cancel, var_90, 1, 2)
  loc_106CBF5:         End If
  loc_106CBF5:       End If
  loc_106CBF5:     End If
  loc_106CBF5:   End If
  loc_106CBF5: End If
  loc_106CBF5: Exit Sub
End Sub

Public Function global_52Get() '506260
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '50626F
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6D74
  'Data Table: 504C5C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC6CEA: On Error Goto loc_EC6D2F
  loc_EC6CF3: Me.MoveFirst
  loc_EC6D0D: var_8C = "code='" & MyValue
  loc_EC6D1D: Me.Find var_8C & "'", 0, 1
  loc_EC6D29: Call Proc_120_56_14761E0(var_A0)
  loc_EC6D2E: Exit Sub
  loc_EC6D2F: ' Referenced from: EC6CEA
  loc_EC6D37: Set var_A4 = Err()
  loc_EC6D3D: Call 0.Method_arg_2C (var_8C)
  loc_EC6D5E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6D71: Exit Sub
  loc_EC6D72: Exit Sub
End Sub

Public Sub Proc_120_49_13609DC
  'Data Table: 504C5C
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A4 As String
  Dim unk_504C67 As Connection15
  Dim var_B8 As MSHFlexGrid
  Dim Proc_120_49_13609DC4 As Variant
  Dim var_B4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_13C As MSHFlexGrid
  loc_13601A2: var_98 = CVar(Nothing) 'Address
  loc_13601A7: VerifyVarObj
  loc_13601AD: Set var_9C = Me.Pic1
  loc_13601B3: var_9C._Default = var_98
  loc_13601DC: var_A4 = "SELECT VenueMast.Code AS VenueCode, VenueMast.Name AS VenueName FROM VenueMast where DepartCode='" & global_52 & "' ORDER By VenueMast.Name"
  loc_13601E5: unk_504C67.Execute var_A4, var_98, -1
  loc_13601F0: Set var_88 = var_9C
  loc_1360204: Set var_B8 = Me.FGrid
  loc_136020A: Proc_120_49_13609DC4 = var_B8.Text
  loc_136021E: var_B8.Rows = 2
  loc_136022F: var_B8.Cols = 8
  loc_1360237: var_B4 = CVar(CLng(0)) 'Long
  loc_136023C: var_D8 = &H12C
  loc_1360248: LateIdCallSt
  loc_1360250: var_B4 = 0
  loc_136025C: var_D8 = CVar(CLng(1)) 'Long
  loc_1360261: var_F8 = "Venue Name"
  loc_136026A: LateIdCallSt
  loc_1360275: var_B4 = CVar(CLng(1)) 'Long
  loc_1360280: var_D8 = CVar(CInt(1)) 'Integer
  loc_1360287: LateIdCallSt
  loc_1360292: var_B4 = CVar(CLng(1)) 'Long
  loc_1360297: var_D8 = &HA28
  loc_13602A3: LateIdCallSt
  loc_13602AB: var_B4 = 0
  loc_13602B7: var_D8 = CVar(CLng(2)) 'Long
  loc_13602BC: var_F8 = "Selection"
  loc_13602C5: LateIdCallSt
  loc_13602D0: var_B4 = CVar(CLng(2)) 'Long
  loc_13602DB: var_D8 = CVar(CInt(4)) 'Integer
  loc_13602E2: LateIdCallSt
  loc_13602ED: var_B4 = CVar(CLng(2)) 'Long
  loc_13602F2: var_D8 = &H2BC
  loc_13602FE: LateIdCallSt
  loc_1360306: var_B4 = 0
  loc_1360312: var_D8 = CVar(CLng(3)) 'Long
  loc_1360317: var_F8 = "Fr. Date"
  loc_1360320: LateIdCallSt
  loc_136032B: var_B4 = CVar(CLng(3)) 'Long
  loc_1360336: var_D8 = CVar(CInt(1)) 'Integer
  loc_136033D: LateIdCallSt
  loc_1360348: var_B4 = CVar(CLng(3)) 'Long
  loc_1360353: var_D8 = CVar(CInt(1)) 'Integer
  loc_136035A: LateIdCallSt
  loc_1360365: var_B4 = CVar(CLng(3)) 'Long
  loc_136036A: var_D8 = &H47E
  loc_1360376: LateIdCallSt
  loc_136037E: var_B4 = 0
  loc_136038A: var_D8 = CVar(CLng(4)) 'Long
  loc_136038F: var_F8 = "Fr. Time"
  loc_1360398: LateIdCallSt
  loc_13603A3: var_B4 = CVar(CLng(4)) 'Long
  loc_13603AE: var_D8 = CVar(CInt(1)) 'Integer
  loc_13603B5: LateIdCallSt
  loc_13603C0: var_B4 = CVar(CLng(4)) 'Long
  loc_13603CB: var_D8 = CVar(CInt(1)) 'Integer
  loc_13603D2: LateIdCallSt
  loc_13603DD: var_B4 = CVar(CLng(4)) 'Long
  loc_13603E2: var_D8 = &H2BC
  loc_13603EE: LateIdCallSt
  loc_13603F6: var_B4 = 0
  loc_1360402: var_D8 = CVar(CLng(5)) 'Long
  loc_1360407: var_F8 = "To Date"
  loc_1360410: LateIdCallSt
  loc_136041B: var_B4 = CVar(CLng(5)) 'Long
  loc_1360426: var_D8 = CVar(CInt(1)) 'Integer
  loc_136042D: LateIdCallSt
  loc_1360438: var_B4 = CVar(CLng(5)) 'Long
  loc_1360443: var_D8 = CVar(CInt(1)) 'Integer
  loc_136044A: LateIdCallSt
  loc_1360455: var_B4 = CVar(CLng(5)) 'Long
  loc_136045A: var_D8 = &H47E
  loc_1360466: LateIdCallSt
  loc_136046E: var_B4 = 0
  loc_136047A: var_D8 = CVar(CLng(6)) 'Long
  loc_136047F: var_F8 = "To Time"
  loc_1360488: LateIdCallSt
  loc_1360493: var_B4 = CVar(CLng(6)) 'Long
  loc_136049E: var_D8 = CVar(CInt(1)) 'Integer
  loc_13604A5: LateIdCallSt
  loc_13604B0: var_B4 = CVar(CLng(6)) 'Long
  loc_13604BB: var_D8 = CVar(CInt(1)) 'Integer
  loc_13604C2: LateIdCallSt
  loc_13604CD: var_B4 = CVar(CLng(6)) 'Long
  loc_13604D2: var_D8 = &H2BC
  loc_13604DE: LateIdCallSt
  loc_13604E6: var_B4 = 0
  loc_13604F2: var_D8 = CVar(CLng(7)) 'Long
  loc_13604F7: var_F8 = "Venue Code"
  loc_1360500: LateIdCallSt
  loc_136050B: var_B4 = CVar(CLng(7)) 'Long
  loc_1360510: var_D8 = 0
  loc_136051C: LateIdCallSt
  loc_1360538: If (var_88.RecordCount > 0) Then
  loc_136053B:   ' Referenced from: 1360700
  loc_136054A:   If Not(var_88.EOF) Then
  loc_1360558:     var_B8.Col = CVar(CLng(2))
  loc_136056F:     var_B4 = CVar((CLng(var_B8.Rows) - 1)) 'Long
  loc_1360588:     var_B8.CellFontName = "wingdings"
  loc_1360598:     var_B8.CellFontSize = CVar(CDbl(&HE))
  loc_13605A9:     var_B8.CellForeColor = &HFF0000
  loc_13605C7:     var_B4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13605CF:     var_D8 = CVar(CLng(0)) 'Long
  loc_13605E8:     var_130 = CVar(CStr((CLng(var_B8.Rows) - 1))) 'String
  loc_13605EF:     LateIdCallSt
  loc_136061C:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360624:     var_E8 = CVar(CLng(7)) 'Long
  loc_1360654:     var_130 = CVar(CStr(var_88.Fields.Item("Venuecode").Value)) 'String
  loc_136065B:     LateIdCallSt
  loc_136068E:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360696:     var_E8 = CVar(CLng(1)) 'Long
  loc_13606C6:     var_130 = CVar(CStr(var_88.Fields.Item("VenueName").Value)) 'String
  loc_13606CD:     LateIdCallSt
  loc_13606E7:     var_B4 = vbNullString
  loc_13606FB:     var_88.MoveNext
  loc_1360700:     GoTo loc_136053B
  loc_1360703:   End If
  loc_1360703: End If
  loc_1360705: Set var_B8 = Nothing 
  loc_136070E: Set var_88 = Nothing
  loc_1360715: Set var_13C = Me.FGrid2
  loc_136071B: Proc_120_49_13609DC4 = var_13C.Text
  loc_136072F: var_13C.Rows = 2
  loc_1360740: var_13C.Cols = 8
  loc_1360745: var_B4 = 0
  loc_1360751: var_D8 = CVar(CLng(0)) 'Long
  loc_1360756: var_F8 = "Code"
  loc_136075F: LateIdCallSt
  loc_136076A: var_B4 = CVar(CLng(0)) 'Long
  loc_136076F: var_D8 = 0
  loc_136077B: LateIdCallSt
  loc_1360783: var_B4 = 0
  loc_136078F: var_D8 = CVar(CLng(1)) 'Long
  loc_1360794: var_F8 = vbNullString
  loc_136079D: LateIdCallSt
  loc_13607A8: var_B4 = CVar(CLng(1)) 'Long
  loc_13607AD: var_D8 = &H15E
  loc_13607B9: LateIdCallSt
  loc_13607C1: var_B4 = 0
  loc_13607CD: var_D8 = CVar(CLng(2)) 'Long
  loc_13607D2: var_F8 = "Capacity"
  loc_13607DB: LateIdCallSt
  loc_13607E6: var_B4 = CVar(CLng(2)) 'Long
  loc_13607F1: var_D8 = CVar(CInt(1)) 'Integer
  loc_13607F8: LateIdCallSt
  loc_1360803: var_B4 = CVar(CLng(2)) 'Long
  loc_136080E: var_D8 = CVar(CInt(1)) 'Integer
  loc_1360815: LateIdCallSt
  loc_1360820: var_B4 = CVar(CLng(2)) 'Long
  loc_1360825: var_D8 = &H3B6
  loc_1360831: LateIdCallSt
  loc_1360839: var_B4 = 0
  loc_1360845: var_D8 = CVar(CLng(3)) 'Long
  loc_136084A: var_F8 = vbNullString
  loc_1360853: LateIdCallSt
  loc_136085E: var_B4 = CVar(CLng(3)) 'Long
  loc_1360863: var_D8 = 0
  loc_136086F: LateIdCallSt
  loc_1360877: var_B4 = 0
  loc_1360883: var_D8 = CVar(CLng(4)) 'Long
  loc_1360888: var_F8 = "Seating"
  loc_1360891: LateIdCallSt
  loc_136089C: var_B4 = CVar(CLng(4)) 'Long
  loc_13608A7: var_D8 = CVar(CInt(1)) 'Integer
  loc_13608AE: LateIdCallSt
  loc_13608B9: var_B4 = CVar(CLng(4)) 'Long
  loc_13608C4: var_D8 = CVar(CInt(1)) 'Integer
  loc_13608CB: LateIdCallSt
  loc_13608D6: var_B4 = CVar(CLng(4)) 'Long
  loc_13608DB: var_D8 = &H352
  loc_13608E7: LateIdCallSt
  loc_13608EF: var_B4 = 0
  loc_13608FB: var_D8 = CVar(CLng(5)) 'Long
  loc_1360900: var_F8 = vbNullString
  loc_1360909: LateIdCallSt
  loc_1360914: var_B4 = CVar(CLng(5)) 'Long
  loc_1360919: var_D8 = 0
  loc_1360925: LateIdCallSt
  loc_136092D: var_B4 = 0
  loc_1360939: var_D8 = CVar(CLng(6)) 'Long
  loc_136093E: var_F8 = "Floating"
  loc_1360947: LateIdCallSt
  loc_1360952: var_B4 = CVar(CLng(6)) 'Long
  loc_136095D: var_D8 = CVar(CInt(1)) 'Integer
  loc_1360964: LateIdCallSt
  loc_136096F: var_B4 = CVar(CLng(6)) 'Long
  loc_136097A: var_D8 = CVar(CInt(1)) 'Integer
  loc_1360981: LateIdCallSt
  loc_136098C: var_B4 = CVar(CLng(6)) 'Long
  loc_1360991: var_D8 = &H352
  loc_136099D: LateIdCallSt
  loc_13609A8: var_B4 = CVar(CLng(7)) 'Long
  loc_13609AD: var_D8 = 0
  loc_13609B9: LateIdCallSt
  loc_13609CD: var_13C.Rows = 5
  loc_13609D4: Set var_13C = Nothing 
  loc_13609D8: Exit Sub
End Sub

Public Sub Proc_120_50_117A4A4(arg_C) '117A4A4
  'Data Table: 504C5C
  Dim var_98 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_B0 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As String
  Dim var_100 As TextBox
  Dim var_FC As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_F4 As Variant
  loc_117A0F4: If (arg_C = 1) Then
  loc_117A11A:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_117A12A:     Set var_98 = Me.TxtGrid
  loc_117A130:     Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_B0, var_B4)
  loc_117A138:     var_AC = var_B0.Text
  loc_117A168:     If (Len(Trim(CVar(var_B4))) = 0) Then
  loc_117A17D:       Set var_98 = Me.TxtGrid
  loc_117A183:       Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_B0)
  loc_117A18B:       var_B0.Text = CStr(MemVar_1F950EC)
  loc_117A19D:     Else
  loc_117A1A7:       Set var_98 = Me.TxtGrid
  loc_117A1AD:       Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_B0)
  loc_117A1C0:       var_B4 = Proc_6_33_15125B8(var_B0)
  loc_117A1CD:       Set var_FC = Me.TxtGrid
  loc_117A1D3:       Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_100)
  loc_117A1DB:       var_100.Text = var_B4
  loc_117A1EE:     End If
  loc_117A201:     var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117A219:     var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_117A22B:     Set var_98 = Me.TxtGrid
  loc_117A231:     Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_B0, var_B4)
  loc_117A239:     var_120 = var_B0.Text
  loc_117A241:     var_D4 = CVar(var_B4) 'String
  loc_117A249:     Set var_100 = Me.FGrid
  loc_117A24F:     LateIdCallSt
  loc_117A270:   Else
  loc_117A277:     If (var_AC = CLng(5)) Then
  loc_117A287:       Set var_98 = Me.TxtGrid
  loc_117A28D:       Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_B0, var_B4, var_100)
  loc_117A295:       var_D4 = var_B0.Text
  loc_117A2AF:       var_E4 = 0
  loc_117A2C5:       If (Len(Trim(CVar(var_B4))) = var_E4) Then
  loc_117A2DA:         Set var_98 = Me.TxtGrid
  loc_117A2E0:         Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_B0, CStr(MemVar_1F950EC))
  loc_117A2E8:         var_B0.Text = var_E4
  loc_117A2FA:       Else
  loc_117A304:         Set var_98 = Me.TxtGrid
  loc_117A30A:         Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_B0)
  loc_117A31D:         var_B4 = Proc_6_33_15125B8(var_B0)
  loc_117A32A:         Set var_FC = Me.TxtGrid
  loc_117A330:         Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_100)
  loc_117A338:         var_100.Text = var_B4
  loc_117A34B:       End If
  loc_117A35E:       var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117A376:       var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_117A388:       Set var_98 = Me.TxtGrid
  loc_117A38E:       Call 0.Method_Proc_120_50_117A4A40 (arg_C, var_B0, var_B4)
  loc_117A396:       var_120 = var_B0.Text
  loc_117A39E:       var_D4 = CVar(var_B4) 'String
  loc_117A3A6:       Set var_100 = Me.FGrid
  loc_117A3AC:       LateIdCallSt
  loc_117A3D4:       var_D4 = Me.FGrid.Row
  loc_117A3DD:       var_140 = CVar(CLng(var_D4)) 'Long
  loc_117A3E5:       var_160 = CVar(CLng(3)) 'Long
  loc_117A3F4:       var_F4 = Me.FGrid.TextMatrix)
  loc_117A413:       var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117A41B:       var_120 = CVar(CLng(5)) 'Long
  loc_117A42A:       var_C4 = Me.FGrid.TextMatrix)
  loc_117A461:       If (CDate(CStr(var_C4)) < CDate(CStr(var_F4))) Then
  loc_117A47D:         MsgBox("To Date Must be Greater than From Date.", &H40, var_C4, var_D4, var_F4)
  loc_117A492:         Proc_120_50_117A4A4 = 0
  loc_117A498:       End If
  loc_117A498:     End If
  loc_117A498:   End If
  loc_117A498: End If
  loc_117A49D: Proc_120_50_117A4A4 = &HFF
End Sub

Public Sub Proc_120_51_12A8854
  'Data Table: 504C5C
  Dim var_A0 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_104 As Variant
  Dim var_108 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_174 As String
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1DC As Variant
  Dim var_1E0 As String
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_86 As Integer
  Dim var_15C As Integer
  Dim var_13C As String
  Dim unk_504C67 As Connection15
  loc_12A827B: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A8283: var_E0 = CVar(CLng(3)) 'Long
  loc_12A829D: var_108 = CStr(Me.FGrid.TextMatrix))
  loc_12A82B8: var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A82C0: var_14C = CVar(CLng(4)) 'Long
  loc_12A82DA: var_174 = CStr(Me.FGrid.TextMatrix))
  loc_12A82F6: var_198 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A82FE: var_1B8 = CVar(CLng(5)) 'Long
  loc_12A830D: var_1DC = Me.FGrid.TextMatrix)
  loc_12A8318: var_1E0 = CStr(var_1DC)
  loc_12A832B: var_1F4 = Me.FGrid.Row
  loc_12A8334: var_204 = CVar(CLng(var_1F4)) 'Long
  loc_12A8390: If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_12A83A6:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A83AE:   var_E0 = CVar(CLng(3)) 'Long
  loc_12A83CF:   var_174 = CStr(Me.FGrid.TextMatrix)) & " "
  loc_12A83E5:   var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A8410:   var_90 = CDate(CVar(CLng(4)) & CStr(Me.FGrid.TextMatrix)))
  loc_12A8447:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A844F:   var_E0 = CVar(CLng(5)) 'Long
  loc_12A845E:   var_104 = Me.FGrid.TextMatrix)
  loc_12A8470:   var_174 = CStr(var_104) & " "
  loc_12A847D:   var_11C = Me.FGrid.Row
  loc_12A8486:   var_12C = CVar(CLng(var_11C)) 'Long
  loc_12A8497:   Set var_160 = Me.FGrid
  loc_12A849D:   var_170 = var_160.TextMatrix)
  loc_12A84B1:   var_98 = CDate(CVar(CLng(6)) & CStr(var_170))
  loc_12A84DC:   If (var_90 >= var_98) Then
  loc_12A84F8:     MsgBox("Check Booking Dates and Times", &H40, var_104, var_11C, var_170)
  loc_12A850D:     Proc_120_51_12A8854 = 0
  loc_12A8516:   Else
  loc_12A8529:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A8531:     var_E0 = CVar(CLng(7)) 'Long
  loc_12A8540:     var_104 = Me.FGrid.TextMatrix)
  loc_12A8552:     var_15C = 0
  loc_12A8588:     var_11C = CVar("Select COunt(*) From VenueOCC S WHERE " & var_9C & " VenuCode='" & CStr(var_104) & "' and '") 'String
  loc_12A8592:     var_170 = var_11C & CDate(var_90) 
  loc_12A8596:     var_13C = "'  between FromDate+Convert(smalldatetime,FromTime) and ToDate+convert(smalldatetime,ToTime) "
  loc_12A85A9:     unk_504C67.Execute CStr(var_170 & var_13C), var_1DC, -1
  loc_12A85B1:     var_10C = var_10C.Fields
  loc_12A85B9:     var_15C = var_160.Item(var_160)
  loc_12A85C1:     var_178 = var_178.Value
  loc_12A85FC:     If (var_1F4 > 0) Then
  loc_12A8601:       var_86 = 0
  loc_12A8623:       MsgBox(CVar("Hall Already Booked !" & vbCrLf & "Check From Booking Date and Time"), &H40, var_104, var_11C, var_170)
  loc_12A8648:       Me.FGrid.Col = CVar(CLng(3))
  loc_12A8663:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A866B:       var_E0 = CVar(CLng(5)) 'Long
  loc_12A8670:       var_12C = vbNullString
  loc_12A867A:       Set var_F4 = Me.FGrid
  loc_12A8680:       LateIdCallSt
  loc_12A8696:       Set var_A0 = Me.FGrid
  loc_12A86A7:       Proc_120_51_12A8854 = FGrid.DispID_8001
  loc_12A86B0:     Else
  loc_12A86C3:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A86CB:       var_E0 = CVar(CLng(7)) 'Long
  loc_12A86DA:       var_104 = Me.FGrid.TextMatrix)
  loc_12A86EC:       var_15C = 0
  loc_12A8722:       var_11C = CVar("Select COunt(*) From VenueOCC S WHERE " & var_9C & " VenuCode='" & CStr(var_104) & "' and '") 'String
  loc_12A872C:       var_170 = var_11C & CDate(var_98) 
  loc_12A8730:       var_13C = "'  between FromDate+Convert(smalldatetime,FromTime) and ToDate+Convert(smalldatetime,ToTime) "
  loc_12A8743:       unk_504C67.Execute CStr(var_170 & var_13C), var_1DC, -1
  loc_12A874B:       var_10C = var_10C.Fields
  loc_12A8753:       var_15C = var_160.Item(var_160)
  loc_12A875B:       var_178 = var_178.Value
  loc_12A8796:       If (var_1F4 > 0) Then
  loc_12A879B:         var_86 = 0
  loc_12A87BD:         MsgBox(CVar("Hall Already Booked !" & vbCrLf & "Check To Booking Date and Time"), &H40, var_104, var_11C, var_170)
  loc_12A87E2:         Me.FGrid.Col = CVar(CLng(5))
  loc_12A87FD:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A8805:         var_E0 = CVar(CLng(5)) 'Long
  loc_12A880A:         var_12C = vbNullString
  loc_12A8814:         Set var_F4 = Me.FGrid
  loc_12A881A:         LateIdCallSt
  loc_12A8830:         Set var_A0 = Me.FGrid
  loc_12A8841:         Proc_120_51_12A8854 = FGrid.DispID_8001
  loc_12A8847:       End If
  loc_12A8847:     End If
  loc_12A8847:   End If
  loc_12A8847: End If
  loc_12A884C: Proc_120_51_12A8854 = &HFF
End Sub

Public Sub Proc_120_52_119E9D0(arg_C) '119E9D0
  'Data Table: 504C5C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_A4 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_154 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_238 As Variant
  Dim var_134 As String
  Dim var_168 As String
  Dim var_130 As MSHFlexGrid
  Dim var_188 As Variant
  loc_119E5FC: If (arg_C = 0) Then
  loc_119E612:   var_A0 = CLng(Me.FGrid.Col)
  loc_119E622:   If (var_A0 = CLng(4)) Then
  loc_119E62F:     Set var_8C = Me.txtMEd
  loc_119E635:     Call 0.Method_Proc_120_52_119E9D00 (arg_C, var_A4)
  loc_119E64F:     If (IsDate(CVar(var_A4)) = 0) Then
  loc_119E657:       Proc_120_52_119E9D0 = 0
  loc_119E65D:     End If
  loc_119E670:     var_CC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_119E697:     Set var_8C = Me.txtMEd
  loc_119E69D:     Call 0.Method_Proc_120_52_119E9D00 (arg_C, var_A4, CVar(CLng(Me.FGrid.Col)))
  loc_119E6AD:     var_11C = CVar(CStr(var_A4.defaultText)) 'String
  loc_119E6B5:     Set var_130 = Me.FGrid
  loc_119E6BB:     LateIdCallSt
  loc_119E6DE:   Else
  loc_119E6E5:     If (var_A0 = CLng(6)) Then
  loc_119E6F2:       Set var_8C = Me.txtMEd
  loc_119E6F8:       Call 0.Method_Proc_120_52_119E9D00 (arg_C, var_A4, var_130, var_11C)
  loc_119E712:       If (IsDate(CVar(var_A4)) = 0) Then
  loc_119E71A:         Proc_120_52_119E9D0 = 0
  loc_119E720:       End If
  loc_119E75A:       Set var_8C = Me.txtMEd
  loc_119E760:       Call 0.Method_Proc_120_52_119E9D00 (arg_C, var_A4, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.RowSel)))
  loc_119E770:       var_11C = CVar(CStr(var_A4.defaultText)) 'String
  loc_119E778:       Set var_130 = Me.FGrid
  loc_119E77E:       LateIdCallSt
  loc_119E7A8:       var_10C = Me.FGrid.Row
  loc_119E7B1:       var_12C = CVar(CLng(var_10C)) 'Long
  loc_119E7B9:       var_154 = CVar(CLng(3)) 'Long
  loc_119E7C8:       var_11C = Me.FGrid.TextMatrix)
  loc_119E7E7:       var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119E7EF:       var_214 = CVar(CLng(4)) 'Long
  loc_119E7FE:       var_238 = Me.FGrid.TextMatrix)
  loc_119E81D:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119E825:       var_EC = CVar(CLng(5)) 'Long
  loc_119E834:       var_BC = Me.FGrid.TextMatrix)
  loc_119E83F:       var_134 = CStr(var_BC)
  loc_119E848:       var_168 = CStr(var_11C)
  loc_119E861:       var_188 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119E8C4:       If (CVar(CLng(6)) And (CDate(CStr(Me.FGrid.TextMatrix))) < CDate(CStr(var_238)))) Then
  loc_119E8D5:         var_CC = "To Time Must be Greater than From Date and Time."
  loc_119E8E0:         MsgBox(var_CC, &H40, var_BC, var_10C, var_11C)
  loc_119E8F5:         Proc_120_52_119E9D0 = 0
  loc_119E8FB:       End If
  loc_119E8FE:       Call Proc_120_51_12A8854(var_23E, var_188, (CDate(var_134) = CDate(var_168)), var_EC, var_CC, var_238)
  loc_119E909:       If (var_23E = 0) Then
  loc_119E91E:         Me.FGrid.Col = CVar(CLng(3))
  loc_119E939:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_119E941:         var_EC = CVar(CLng(5)) 'Long
  loc_119E946:         var_12C = vbNullString
  loc_119E950:         Set var_A4 = Me.FGrid
  loc_119E956:         LateIdCallSt
  loc_119E97A:         Me.FGrid.Col = CVar(CLng(3))
  loc_119E986:         Set var_8C = Me.FGrid
  loc_119E997:         Proc_120_52_119E9D0 = FGrid.DispID_8001
  loc_119E99D:       End If
  loc_119E99D:     End If
  loc_119E99D:   End If
  loc_119E99D: End If
  loc_119E9AB: Set var_8C = Me.txtMEd
  loc_119E9B1: Call 0.Method_Proc_120_52_119E9D00 (0, var_A4, False, var_A4, var_12C, var_EC, False)
  loc_119E9B9: var_A4.Visible = var_214
  loc_119E9CA: Proc_120_52_119E9D0 = &HFF
End Sub

Public Sub Proc_120_53_FFC8F4(arg_C, arg_10) 'FFC8F4
  'Data Table: 504C5C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As String
  loc_FFC6F8: Set var_8C = Me.FGrid2
  loc_FFC716: For var_A0 = 1 To CInt((CLng(var_8C.Rows) - 1)): var_86 = var_A0 'Integer
  loc_FFC728:   var_8C.Row = CVar(CLng(var_86))
  loc_FFC748:   For var_C4 = 0 To CInt((CLng(var_8C.Cols) - 1)): var_88 = var_C4 'Integer
  loc_FFC75A:     var_8C.Col = CVar(CLng(var_88))
  loc_FFC79A:     If (((CLng(var_8C.Col) = CLng(1)) Or (CLng(var_8C.Col) = CLng(3))) Or (CLng(var_8C.Col) = CLng(5))) Then
  loc_FFC7A6:       var_8C.CellFontName = "wingdings"
  loc_FFC7B6:       var_8C.CellFontSize = CVar(CDbl(&H12))
  loc_FFC7C7:       var_8C.CellForeColor = &HFF0000
  loc_FFC7D0:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_FFC7D9:       var_F4 = CVar(CLng(var_88)) 'Long
  loc_FFC7DE:       var_114 = vbNullString
  loc_FFC7E7:       LateIdCallSt
  loc_FFC7EF:     End If
  loc_FFC7F2:   Next var_C4 'Integer
  loc_FFC7FA: Next var_A0 'Integer
  loc_FFC803: var_B0 = CVar(CLng(arg_C)) 'Long
  loc_FFC80B: var_F4 = CVar(CLng(3)) 'Long
  loc_FFC82C: If (CStr(var_8C.TextMatrix)) = vbNullString) Then
  loc_FFC83B:   var_8C.Col = CVar(CLng(arg_10))
  loc_FFC849:   var_8C.CellFontName = "wingdings"
  loc_FFC859:   var_8C.CellFontSize = CVar(CDbl(&H12))
  loc_FFC86A:   var_8C.CellForeColor = &HFF
  loc_FFC873:   var_B0 = CVar(CLng(arg_C)) 'Long
  loc_FFC87C:   var_F4 = CVar(CLng(arg_10)) 'Long
  loc_FFC881:   var_114 = "ü"
  loc_FFC88A:   LateIdCallSt
  loc_FFC896:   var_B0 = CVar(CLng(arg_C)) 'Long
  loc_FFC89E:   var_F4 = CVar(CLng(1)) 'Long
  loc_FFC8A3:   var_114 = "ü"
  loc_FFC8AC:   LateIdCallSt
  loc_FFC8B7: Else
  loc_FFC8BB:   var_B0 = CVar(CLng(arg_C)) 'Long
  loc_FFC8C4:   var_F4 = CVar(CLng(arg_10)) 'Long
  loc_FFC8C9:   var_114 = vbNullString
  loc_FFC8D2:   LateIdCallSt
  loc_FFC8E6:   var_8C.CellForeColor = &HFF0000
  loc_FFC8EB: End If
  loc_FFC8ED: Set var_8C = Nothing 
  loc_FFC8F1: Exit Sub
End Sub

Public Sub Proc_120_54_EC9E68(arg_C) 'EC9E68
  'Data Table: 504C5C
  Dim var_98 As TextBox
  loc_EC9DCA: Set var_8C = Me.txt
  loc_EC9DD0: Call 0.Method_Proc_120_54_EC9E68C (var_8E, var_86)
  loc_EC9DE0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC9DF6:   Set var_8C = Me.txt
  loc_EC9DFC:   Call 0.Method_Proc_120_54_EC9E680 (CInt(var_86), var_98)
  loc_EC9E04:   var_98.Enabled = arg_C
  loc_EC9E13: Next var_92 'Byte
  loc_EC9E26: Set var_8C = Me.txt
  loc_EC9E2C: Call 0.Method_Proc_120_54_EC9E680 (CInt(&H12), var_98)
  loc_EC9E34: var_98.Enabled = False
  loc_EC9E4D: Set var_8C = Me.txt
  loc_EC9E53: Call 0.Method_Proc_120_54_EC9E680 (CInt(0), var_98)
  loc_EC9E5B: var_98.Enabled = False
  loc_EC9E67: Exit Sub
End Sub

Public Sub Proc_120_55_E9E7A8
  'Data Table: 504C5C
  Dim var_98 As TextBox
  loc_E9E72E: Set var_8C = Me.txt
  loc_E9E734: Call 0.Method_Proc_120_55_E9E7A8C (var_8E, var_86)
  loc_E9E744: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9E75A:   Set var_8C = Me.txt
  loc_E9E760:   Call 0.Method_Proc_120_55_E9E7A80 (CInt(var_86), var_98)
  loc_E9E768:   var_98.Text = vbNullString
  loc_E9E784:   Set var_8C = Me.txt
  loc_E9E78A:   Call 0.Method_Proc_120_55_E9E7A80 (CInt(var_86), var_98)
  loc_E9E792:   var_98.Tag = vbNullString
  loc_E9E7A1: Next var_92 'Byte
  loc_E9E7A7: Exit Sub
End Sub

Public Sub Proc_120_56_14761E0
  'Data Table: 504C5C
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_504C67 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_14755F8: On Error Goto loc_147619D
  loc_147560E: Me.FGrid.FillStyle = 1
  loc_1475629: Me.FGrid.SelectionMode = 1
  loc_1475644: Me.FGrid.HighLight = 1
  loc_147565F: Me.FGrid.BackColorSel = &HFDEDEC
  loc_147567A: Me.FGrid2.FillStyle = 1
  loc_1475695: Me.FGrid2.SelectionMode = 1
  loc_14756B0: Me.FGrid2.HighLight = 1
  loc_14756BE: Proc_183_45_E5CCA8(global_56)
  loc_14756DA: If (Me.RecordCount <= 0) Then
  loc_14756DD:   Call Proc_120_55_E9E7A8()
  loc_14756E2:   Call Proc_120_57_1468348()
  loc_14756EA: Else
  loc_1475740:   unk_504C67.Execute CStr("Select U_Name,U_AE,U_EntDt From BookingInquiry where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_147574B:   Set var_88 = var_11C
  loc_147579F:   var_11C = var_88.Fields
  loc_1475808:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_147584D:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_14758C7:   var_120 = var_88.Fields.Item("U_AE")
  loc_14758CF:   var_D4 = CVar(var_120) 'Address
  loc_14758E0:   var_118 = "entdt :   "
  loc_14758EB:   var_F4 = "Last Update :   "
  loc_1475928:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(var_D4) = "E"), var_F4, var_118))
  loc_147596D:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14759E1:   Set var_11C = Me.txt
  loc_14759E7:   Call 0.Method_Proc_120_56_14761E00 (CInt(0), var_120)
  loc_14759EF:   var_120.Text = CStr(Me.Fields.Item("CatType").Value)
  loc_1475A41:   Set var_11C = Me.txt
  loc_1475A47:   Call 0.Method_Proc_120_56_14761E00 (CInt(2), var_120)
  loc_1475A4F:   var_120.Text = CStr(Me.Fields.Item("PartyName").Value)
  loc_1475A9E:   Set var_11C = Me.txt
  loc_1475AA4:   Call 0.Method_Proc_120_56_14761E00 (CInt(3), var_120)
  loc_1475AAC:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add1")))
  loc_1475AF9:   Set var_11C = Me.txt
  loc_1475AFF:   Call 0.Method_Proc_120_56_14761E00 (CInt(4), var_120)
  loc_1475B07:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add2")))
  loc_1475B54:   Set var_11C = Me.txt
  loc_1475B5A:   Call 0.Method_Proc_120_56_14761E00 (CInt(5), var_120)
  loc_1475B62:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("City")))
  loc_1475BAF:   Set var_11C = Me.txt
  loc_1475BB5:   Call 0.Method_Proc_120_56_14761E00 (CInt(6), var_120)
  loc_1475BBD:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PhoneR")))
  loc_1475C0A:   Set var_11C = Me.txt
  loc_1475C10:   Call 0.Method_Proc_120_56_14761E00 (CInt(7), var_120)
  loc_1475C18:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PhoneO")))
  loc_1475C65:   Set var_11C = Me.txt
  loc_1475C6B:   Call 0.Method_Proc_120_56_14761E00 (CInt(8), var_120)
  loc_1475C73:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("MobileNo")))
  loc_1475CC0:   Set var_11C = Me.txt
  loc_1475CC6:   Call 0.Method_Proc_120_56_14761E00 (CInt(9), var_120)
  loc_1475CCE:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FaxNo")))
  loc_1475D1B:   Set var_11C = Me.txt
  loc_1475D21:   Call 0.Method_Proc_120_56_14761E00 (CInt(&HA), var_120)
  loc_1475D29:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ConPerson")))
  loc_1475D76:   Set var_11C = Me.txt
  loc_1475D7C:   Call 0.Method_Proc_120_56_14761E00 (CInt(&HB), var_120)
  loc_1475D84:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("BookedBY")))
  loc_1475DD1:   Set var_11C = Me.txt
  loc_1475DD7:   Call 0.Method_Proc_120_56_14761E00 (CInt(1), var_120)
  loc_1475DDF:   var_120.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("FuncType")))
  loc_1475E2C:   Set var_11C = Me.txt
  loc_1475E32:   Call 0.Method_Proc_120_56_14761E00 (CInt(1), var_120)
  loc_1475E3A:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FunctionType")))
  loc_1475E87:   Set var_11C = Me.txt
  loc_1475E8D:   Call 0.Method_Proc_120_56_14761E00 (CInt(&H13), var_120)
  loc_1475E95:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Remark")))
  loc_1475EE2:   Set var_11C = Me.txt
  loc_1475EE8:   Call 0.Method_Proc_120_56_14761E00 (CInt(&H10), var_120)
  loc_1475EF0:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("HandledBy")))
  loc_1475F3D:   Set var_11C = Me.txt
  loc_1475F43:   Call 0.Method_Proc_120_56_14761E00 (CInt(&HF), var_120)
  loc_1475F4B:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("BussinessName")))
  loc_1475F98:   Set var_11C = Me.txt
  loc_1475F9E:   Call 0.Method_Proc_120_56_14761E00 (CInt(&HF), var_120)
  loc_1475FA6:   var_120.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("BussSource")))
  loc_1475FF3:   Set var_11C = Me.txt
  loc_1475FF9:   Call 0.Method_Proc_120_56_14761E00 (CInt(&H11), var_120)
  loc_1476001:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Status")))
  loc_147604E:   Set var_11C = Me.txt
  loc_1476054:   Call 0.Method_Proc_120_56_14761E00 (CInt(&HE), var_120)
  loc_147605C:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("MarketSegName")))
  loc_14760A9:   Set var_11C = Me.txt
  loc_14760AF:   Call 0.Method_Proc_120_56_14761E00 (CInt(&HE), var_120)
  loc_14760B7:   var_120.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("MarketSeg")))
  loc_14760ED:   var_C4 = CVar(Me.Fields.Item("Pax")) 'Address
  loc_14760F4:   Proc_6_39_E7D3A0(var_D4)
  loc_147610B:   Set var_11C = Me.txt
  loc_1476111:   Call 0.Method_Proc_120_56_14761E00 (CInt(&HC), var_120)
  loc_1476119:   var_120.Text = CStr(var_D4)
  loc_1476153:   var_C4 = CVar(Me.Fields.Item("GurrPax")) 'Address
  loc_147615A:   Proc_6_39_E7D3A0(var_D4, var_C4)
  loc_1476162:   var_F8 = CStr(var_D4)
  loc_1476171:   Set var_11C = Me.txt
  loc_1476177:   Call 0.Method_Proc_120_56_14761E00 (CInt(&HD), var_120)
  loc_147617F:   var_120.Text = var_F8
  loc_1476197:   Call Proc_120_57_1468348(var_C4)
  loc_147619C: End If
  loc_147619C: Exit Sub
  loc_147619D: ' Referenced from: 14755F8
  loc_14761A5: Set var_AC = Err()
  loc_14761AB: Call 0.Method_arg_2C (var_F8)
  loc_14761CC: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_14761DF: Exit Sub
End Sub

Public Sub Proc_120_57_1468348
  'Data Table: 504C5C
  Dim Me As Recordset15
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  Dim var_130 As MSHFlexGrid
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_16C As Variant
  Dim var_C8 As Variant
  Dim var_18C As Variant
  Dim unk_504C67 As Connection15
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_1E0 As Variant
  Dim var_1D4 As Fields15
  loc_146779F: If (Me.RecordCount <= 0) Then
  loc_14677A2:   Exit Sub
  loc_14677A3: End If
  loc_14677A7: Set var_94 = Me.FGrid2
  loc_14677C5: For var_A8 = 1 To CInt((CLng(var_94.Rows) - 1)): var_8E = var_A8 'Integer
  loc_14677D7:   var_94.Row = CVar(CLng(var_8E))
  loc_14677F7:   For var_CC = 0 To CInt((CLng(var_94.Cols) - 1)): var_90 = var_CC 'Integer
  loc_1467809:     var_94.Col = CVar(CLng(var_90))
  loc_1467849:     If (((CLng(var_94.Col) = CLng(1)) Or (CLng(var_94.Col) = CLng(3))) Or (CLng(var_94.Col) = CLng(5))) Then
  loc_1467855:       var_94.CellFontName = "wingdings"
  loc_1467865:       var_94.CellFontSize = CVar(CDbl(&H12))
  loc_1467876:       var_94.CellForeColor = &HFF0000
  loc_146787F:       var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467888:       var_FC = CVar(CLng(var_90)) 'Long
  loc_146788D:       var_11C = vbNullString
  loc_1467896:       LateIdCallSt
  loc_146789E:     End If
  loc_14678A1:   Next var_CC 'Integer
  loc_14678A9: Next var_A8 'Integer
  loc_14678B0: Set var_94 = Nothing 
  loc_14678B8: Set var_130 = Me.FGrid
  loc_14678D6: For var_134 = 1 To CInt((CLng(var_130.Rows) - 2)): var_8E = var_134 'Integer
  loc_14678E7:   var_130.Col = CVar(CLng(2))
  loc_14678FE:   var_B8 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_1467906:   var_130.Row = CVar(CLng(2))
  loc_1467917:   var_130.CellFontName = "wingdings"
  loc_1467927:   var_130.CellFontSize = CVar(CDbl(&HE))
  loc_1467938:   var_130.CellForeColor = &HFF0000
  loc_146796B:   var_10C = CVar(CLng(var_8E)) 'Long
  loc_1467973:   var_12C = CVar(CLng(7)) 'Long
  loc_14679B6:   var_18C = "Select * FROM BookingDetail Where Code='" & Me.Fields.Item("SearchCode").Value & "' AND VenueCode='" & Trim(CVar(CStr(var_130.TextMatrix)))) 
  loc_14679CD:   unk_504C67.Execute CStr(var_18C & "'"), var_1D0, -1
  loc_14679D8:   Set var_8C = var_1D4
  loc_1467A04:   var_8C.Requery -1
  loc_1467A1D:   If (var_8C.RecordCount > 0) Then
  loc_1467A24:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467A2C:     var_FC = CVar(CLng(2)) 'Long
  loc_1467A31:     var_11C = "ü"
  loc_1467A3A:     LateIdCallSt
  loc_1467A4E:     var_130.Row = CVar(CLng(var_8E))
  loc_1467A57:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1467A5F:     var_10C = CVar(CLng(3)) 'Long
  loc_1467A8F:     var_DC = CVar(CStr(var_8C.Fields.Item("FuncDate").Value)) 'String
  loc_1467A96:     LateIdCallSt
  loc_1467AB0:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1467AB8:     var_10C = CVar(CLng(5)) 'Long
  loc_1467AE8:     var_DC = CVar(CStr(var_8C.Fields.Item("ToDate").Value)) 'String
  loc_1467AEF:     LateIdCallSt
  loc_1467B09:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1467B11:     var_10C = CVar(CLng(4)) 'Long
  loc_1467B41:     var_DC = CVar(CStr(var_8C.Fields.Item("FuncTime").Value)) 'String
  loc_1467B48:     LateIdCallSt
  loc_1467B62:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1467B6A:     var_10C = CVar(CLng(6)) 'Long
  loc_1467B9A:     var_DC = CVar(CStr(var_8C.Fields.Item("ToTime").Value)) 'String
  loc_1467BA1:     LateIdCallSt
  loc_1467BBA:   Else
  loc_1467BBE:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467BC6:     var_FC = CVar(CLng(2)) 'Long
  loc_1467BCB:     var_11C = vbNullString
  loc_1467BD4:     LateIdCallSt
  loc_1467BE0:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467BE8:     var_FC = CVar(CLng(3)) 'Long
  loc_1467BED:     var_11C = vbNullString
  loc_1467BF6:     LateIdCallSt
  loc_1467C02:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467C0A:     var_FC = CVar(CLng(5)) 'Long
  loc_1467C0F:     var_11C = vbNullString
  loc_1467C18:     LateIdCallSt
  loc_1467C24:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467C2C:     var_FC = CVar(CLng(4)) 'Long
  loc_1467C31:     var_11C = vbNullString
  loc_1467C3A:     LateIdCallSt
  loc_1467C46:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467C4E:     var_FC = CVar(CLng(6)) 'Long
  loc_1467C53:     var_11C = vbNullString
  loc_1467C5C:     LateIdCallSt
  loc_1467C64:   End If
  loc_1467C67: Next var_134 'Integer
  loc_1467C87: For var_1D8 = 1 To CInt((CLng(var_130.Rows) - 1)): var_8E = var_1D8 'Integer
  loc_1467C91:   var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467C99:   var_FC = CVar(CLng(2)) 'Long
  loc_1467CBA:   If (CStr(var_130.TextMatrix)) <> vbNullString) Then
  loc_1467CC9:     var_130.Row = CVar(CLng(var_8E))
  loc_1467CCE:     Exit For
  loc_1467CD1:   End If
  loc_1467CD4: Next var_1D8 'Integer
  loc_1467CD9: ' Referenced from: 1467CCE
  loc_1467CDB: Set var_130 = Nothing 
  loc_1467CF2: var_B8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1467CFA: var_FC = CVar(CLng(7)) 'Long
  loc_1467D34: var_16C = "Select VenueCode,Capacity,Seating,Floating,PicPath FROM VenueCapacity Where VenueCode='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1467D4B: unk_504C67.Execute CStr(var_16C & "'"), var_18C, -1
  loc_1467D56: Set var_8C = var_1D4
  loc_1467D7E: var_8C.Requery -1
  loc_1467D97: If (var_8C.RecordCount > 0) Then
  loc_1467DAA:   Me.FGrid2.Tag = vbNullString
  loc_1467DB4:   var_8E = 0
  loc_1467DB7:   ' Referenced from: 14681BB
  loc_1467DC6:   If Not(var_8C.EOF) Then
  loc_1467DCF:     var_8E = (var_8E + 1)
  loc_1467DD6:     Set var_1E0 = Me.FGrid2
  loc_1467DE4:     var_1E0.Col = CVar(CLng(1))
  loc_1467DF2:     var_1E0.CellFontName = "wingdings"
  loc_1467E02:     var_1E0.CellFontSize = CVar(CDbl(&H12))
  loc_1467E13:     var_1E0.CellForeColor = &HFF0000
  loc_1467E1C:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467E24:     var_FC = CVar(CLng(1)) 'Long
  loc_1467E29:     var_11C = vbNullString
  loc_1467E32:     LateIdCallSt
  loc_1467E3E:     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1467E46:     var_10C = CVar(CLng(0)) 'Long
  loc_1467E76:     var_DC = CVar(CStr(var_8C.Fields.Item("Venuecode").Value)) 'String
  loc_1467E7D:     LateIdCallSt
  loc_1467ECC:     var_DC = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Capacity")), CVar(CLng(2)), CVar(CLng(var_8E)), var_1E0, var_DC, CVar(CLng(2)), CVar(CLng(var_8E)))) 'String
  loc_1467ED3:     LateIdCallSt
  loc_1467F1C:     Proc_6_48_EF4E00(var_DC, CVar(var_8C.Fields.Item("Seating")), CVar(CLng(4)), CVar(CLng(var_8E)), var_1E0, var_DC)
  loc_1467F2C:     LateIdCallSt
  loc_1467F77:     Proc_6_48_EF4E00(var_DC, CVar(var_8C.Fields.Item("Floating")), CVar(CLng(6)), CVar(CLng(var_8E)), var_1E0, CVar(CStr(var_DC)))
  loc_1467F80:     var_EC = CVar(CStr(var_DC)) 'String
  loc_1467F87:     LateIdCallSt
  loc_1467F9F:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1467FA7:     var_FC = CVar(CLng(2)) 'Long
  loc_146800B:     If (Trim(CVar(CStr(var_1E0.TextMatrix)))) = Trim(CVar(Me.Fields.Item("Capacity")))) Then
  loc_1468012:       var_B8 = CVar(CLng(var_8E)) 'Long
  loc_146801A:       var_FC = CVar(CLng(1)) 'Long
  loc_1468028:       LateIdCallSt
  loc_1468033:       var_B8 = "PicPath"
  loc_1468096:       var_FC = vbNullString
  loc_14680BA:       If CBool(Not(IsNull(Trim(CVar(var_8C.Fields.Item(var_B8))))) Or (Trim(CVar(var_8C.Fields.Item("PicPath"))) <> var_FC)) Then
  loc_14680D0:         Set var_13C = var_8C 
  loc_14680E0:         Proc_142_1_F342F8(Me.Pic1, var_13C, "PicPath", var_1E0, "ü", var_FC, var_B8)
  loc_14680EB:         Set var_8C = var_13C
  loc_14680FD:       Else
  loc_146810F:         Me.Pic1.Picture = Nothing
  loc_146811B:       End If
  loc_1468127:       var_1E0.Tag = CVar(CStr(var_8E))
  loc_1468132:     Else
  loc_1468136:       var_B8 = CVar(CLng(var_8E)) 'Long
  loc_146813E:       var_FC = CVar(CLng(1)) 'Long
  loc_1468143:       var_11C = vbNullString
  loc_146814C:       LateIdCallSt
  loc_1468158:       var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1468160:       var_10C = CVar(CLng(0)) 'Long
  loc_1468190:       var_DC = CVar(CStr(var_8C.Fields.Item("Venuecode").Value)) 'String
  loc_1468197:       LateIdCallSt
  loc_14681AD:     End If
  loc_14681AF:     Set var_1E0 = Nothing 
  loc_14681B6:     var_8C.MoveNext
  loc_14681BB:     GoTo loc_1467DB7
  loc_14681BE:   End If
  loc_14681E7:   For var_1E8 = (var_8E + 1) To CInt((CLng(Me.FGrid2.Rows) - 1)): var_90 = var_1E8 'Integer
  loc_14681F1:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_14681F9:     var_FC = CVar(CLng(1)) 'Long
  loc_14681FE:     var_11C = vbNullString
  loc_1468208:     Set var_138 = Me.FGrid2
  loc_146820E:     LateIdCallSt
  loc_146821D:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_1468225:     var_FC = CVar(CLng(0)) 'Long
  loc_146822A:     var_11C = vbNullString
  loc_1468234:     Set var_138 = Me.FGrid2
  loc_146823A:     LateIdCallSt
  loc_1468249:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_1468251:     var_FC = CVar(CLng(2)) 'Long
  loc_1468256:     var_11C = vbNullString
  loc_1468260:     Set var_138 = Me.FGrid2
  loc_1468266:     LateIdCallSt
  loc_1468275:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_146827D:     var_FC = CVar(CLng(4)) 'Long
  loc_1468282:     var_11C = vbNullString
  loc_146828C:     Set var_138 = Me.FGrid2
  loc_1468292:     LateIdCallSt
  loc_14682A1:     var_B8 = CVar(CLng(var_90)) 'Long
  loc_14682A9:     var_FC = CVar(CLng(6)) 'Long
  loc_14682AE:     var_11C = vbNullString
  loc_14682B8:     Set var_138 = Me.FGrid2
  loc_14682BE:     LateIdCallSt
  loc_14682CC:   Next var_1E8 'Integer
  loc_14682E1:   Me.FGrid2.Tag = vbNullString
  loc_14682EC: Else
  loc_1468301:   Call Proc_120_49_13609DC(Me.FGrid2.Text)
  loc_1468318:   Me.Pic1.Picture = Nothing
  loc_1468324: End If
  loc_1468329: Set var_8C = Nothing
  loc_146833F: Me.FGrid2.Row = 1
  loc_1468347: Exit Sub
End Sub

Public Sub Proc_120_58_F6AC1C
  'Data Table: 504C5C
  loc_F6AAF4: If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_F6AB06:   Me.DGVenue.Visible = False
  loc_F6AB0E: End If
  loc_F6AB2A: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_F6AB3C:   Me.DGMarketSeg.Visible = False
  loc_F6AB44: End If
  loc_F6AB5F: If (Me.FrmList.Visible = &HFF) Then
  loc_F6AB6E:   Me.FrmList.Visible = False
  loc_F6AB76: End If
  loc_F6AB92: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6ABA4:   Me.FGPoint.Visible = False
  loc_F6ABAC: End If
  loc_F6ABC8: If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_F6ABDA:   Me.DGSource.Visible = False
  loc_F6ABE2: End If
  loc_F6ABFE: If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_F6AC10:   Me.DGFuncType.Visible = False
  loc_F6AC18: End If
  loc_F6AC18: Exit Sub
End Sub

Public Sub Proc_120_59_E927A0(arg_C) 'E927A0
  'Data Table: 504C5C
  Dim var_10C As TextBox
  loc_E92734: Call Proc_120_58_F6AC1C()
  loc_E92770: If (MsgBox("Save Booking ?", 4, "Save", var_E4, var_104) = 6) Then
  loc_E92773:   Call TopCtrl1_UnknownEvent_16()
  loc_E9277B: Else
  loc_E92785:   Set var_108 = Me.txt
  loc_E9278B:   Call 0.Method_Proc_120_59_E927A00 (arg_C)
  loc_E92793:   var_10C.SetFocus
  loc_E9279F: End If
  loc_E9279F: Exit Sub
End Sub
