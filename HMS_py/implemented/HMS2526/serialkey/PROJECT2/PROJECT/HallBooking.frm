VERSION 5.00
Begin VB.Form HallBooking
  Caption = "Banquet Booking"
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
  ClientWidth = 11730
  ClientHeight = 7485
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
  Appearance = 0 'Flat
  WhatsThisHelp = -1  'True
  Begin DataGrid DGCity
    Left = 16740
    Top = 3975
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 67
  End
  Begin DataGrid DGBookingAgent
    Left = 14445
    Top = 3840
    Width = 4980
    Height = 2910
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 99
  End
  Begin TextBox txt
    Index = 35
    ForeColor = &HFF0000&
    Left = 2010
    Top = 3990
    Width = 4530
    Height = 285
    TabIndex = 13
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
  Begin BtnEnh Command1
    Left = 7605
    Top = 7080
    Width = 1800
    Height = 495
    TabIndex = 95
  End
  Begin MSFlexGrid FGPoint
    Left = 17535
    Top = 6270
    Width = 1935
    Height = 1440
    Visible = 0   'False
    TabIndex = 65
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11730
    Height = 450
    TabIndex = 84
  End
  Begin TextBox txt
    Index = 33
    ForeColor = &HFF0000&
    Left = 2010
    Top = 5880
    Width = 4530
    Height = 570
    TabIndex = 21
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 100
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
    Index = 32
    ForeColor = &HFF0000&
    Left = 5025
    Top = 5565
    Width = 1515
    Height = 285
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin DataGrid DGCompany
    Left = 15510
    Top = 3510
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 66
  End
  Begin DataGrid DGParty
    Left = 16920
    Top = 2670
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 59
  End
  Begin DataGrid DGVenue
    Left = 16665
    Top = 2100
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
End
Begin DataGrid DGSource
  Left = 16740
  Top = 1530
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 62
End
Begin DataGrid DGFuncType
  Left = 16665
  Top = 885
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 63
End
Begin DataGrid DGMarketSeg
  Left = 16590
  Top = 465
  Width = 4980
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 64
End
Begin TextBox txt
  Index = 34
  ForeColor = &H0&
  Left = 17970
  Top = 8850
  Width = 2040
  Height = 240
  Visible = 0   'False
  TabIndex = 60
  BorderStyle = 0 'None
  MaxLength = 21
  Appearance = 0 'Flat
End
Begin TextBox txt
  Index = 18
  ForeColor = &HFF0000&
  Left = 2010
  Top = 5565
  Width = 2040
  Height = 285
  TabIndex = 19
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
Begin TextBox txt
  Index = 19
  ForeColor = &HFF0000&
  Left = 15780
  Top = 8880
  Width = 2040
  Height = 285
  Visible = 0   'False
  TabIndex = 23
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
  Index = 16
  ForeColor = &HFF0000&
  Left = 2010
  Top = 5250
  Width = 2040
  Height = 285
  TabIndex = 17
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
  Index = 17
  ForeColor = &HFF0000&
  Left = 5025
  Top = 5250
  Width = 1515
  Height = 285
  TabIndex = 18
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
  Index = 2
  ForeColor = &H80&
  Left = 4815
  Top = 1410
  Width = 1725
  Height = 360
  Enabled = 0   'False
  TabIndex = 5
  MaxLength = 12
  Locked = -1  'True
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
Begin TextBox txt
  Index = 15
  ForeColor = &HFF0000&
  Left = 2010
  Top = 4935
  Width = 4530
  Height = 285
  TabIndex = 16
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
Begin TextBox txt
  Index = 13
  ForeColor = &HFF0000&
  Left = 2010
  Top = 4305
  Width = 4530
  Height = 285
  TabIndex = 14
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
Begin TextBox txt
  Index = 12
  ForeColor = &HFF0000&
  Left = 2010
  Top = 3675
  Width = 4530
  Height = 285
  TabIndex = 12
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
Begin TextBox txt
  Index = 8
  ForeColor = &HFF0000&
  Left = 2010
  Top = 3045
  Width = 2145
  Height = 285
  TabIndex = 8
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
Begin TextBox txt
  Index = 9
  ForeColor = &HFF0000&
  Left = 5055
  Top = 3045
  Width = 1485
  Height = 285
  TabIndex = 9
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
Begin TextBox txt
  Index = 14
  ForeColor = &HFF0000&
  Left = 2010
  Top = 4620
  Width = 4530
  Height = 285
  TabIndex = 15
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
Begin CommandButton Command1z
  Caption = "Advance"
  Left = 4665
  Top = 8610
  Width = 1485
  Height = 300
  Visible = 0   'False
  TabIndex = 40
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &HFFC0C0&
  Style = 1
End
Begin TextBox txt
  Index = 25
  ForeColor = &HFF0000&
  Left = 8910
  Top = 3315
  Width = 4530
  Height = 285
  TabIndex = 29
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
Begin TextBox txt
  Index = 26
  ForeColor = &HFF0000&
  Left = 8910
  Top = 3630
  Width = 4530
  Height = 285
  TabIndex = 30
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
Begin TextBox txt
  Index = 24
  ForeColor = &HFF0000&
  Left = 8910
  Top = 3000
  Width = 4530
  Height = 285
  TabIndex = 28
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
Begin MaskEdBox txtMEd
  Index = 0
  Left = 2145
  Top = 7035
  Width = 765
  Height = 240
  Visible = 0   'False
  TabIndex = 32
End
Begin TextBox TxtGrid
  Index = 1
  BackColor = &HC0C0C0&
  ForeColor = &H80000012&
  Left = 1095
  Top = 7095
  Width = 765
  Height = 225
  Visible = 0   'False
  TabIndex = 31
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 150
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
Begin TextBox txt
  Index = 11
  ForeColor = &HFF0000&
  Left = 5055
  Top = 3360
  Width = 1485
  Height = 285
  TabIndex = 11
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
  Index = 10
  ForeColor = &HFF0000&
  Left = 2010
  Top = 3360
  Width = 2145
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
  Index = 7
  ForeColor = &HFF0000&
  Left = 5055
  Top = 2730
  Width = 1485
  Height = 285
  TabIndex = 7
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
Begin TextBox txt
  Index = 6
  ForeColor = &HFF0000&
  Left = 2010
  Top = 2730
  Width = 2145
  Height = 285
  TabIndex = 6
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
Begin TextBox txt
  Index = 5
  ForeColor = &HFF0000&
  Left = 2010
  Top = 2415
  Width = 4530
  Height = 285
  TabIndex = 4
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
Begin CommandButton CmdMorez
  Caption = "Catering Booking"
  Left = 2475
  Top = 8835
  Width = 1755
  Height = 300
  Visible = 0   'False
  TabIndex = 39
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &HFFC0C0&
  Style = 1
End
Begin TextBox txt
  Index = 20
  ForeColor = &HFF0000&
  Left = 8910
  Top = 1740
  Width = 4530
  Height = 285
  TabIndex = 24
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
Begin TextBox txt
  Index = 21
  ForeColor = &HFF0000&
  Left = 8910
  Top = 2055
  Width = 4530
  Height = 285
  TabIndex = 25
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
Begin TextBox txt
  Index = 22
  ForeColor = &HFF0000&
  Left = 8910
  Top = 2370
  Width = 4530
  Height = 285
  TabIndex = 26
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
Begin TextBox txt
  Index = 23
  ForeColor = &HFF0000&
  Left = 8910
  Top = 2685
  Width = 4530
  Height = 285
  TabIndex = 27
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
Begin TextBox txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &H80&
  Left = 7155
  Top = 1050
  Width = 675
  Height = 285
  TabIndex = 0
  MaxLength = 8
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
Begin TextBox txt
  Index = 1
  ForeColor = &HFF0000&
  Left = 2010
  Top = 1470
  Width = 1500
  Height = 285
  TabIndex = 1
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
Begin TextBox txt
  Index = 3
  ForeColor = &HFF0000&
  Left = 2010
  Top = 1785
  Width = 4530
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
Begin TextBox txt
  Index = 4
  ForeColor = &HFF0000&
  Left = 2010
  Top = 2100
  Width = 4530
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
Begin MSHFlexGrid FGrid
  Left = 420
  Top = 6735
  Width = 6840
  Height = 2115
  TabIndex = 22
End
Begin Frame Frame1
  ForeColor = &H80000008&
  Left = 7530
  Top = 4515
  Width = 6255
  Height = 2535
  TabIndex = 49
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
  Begin BtnEnh BtnEnh1
    Left = 0
    Top = 1590
    Width = 1500
    Height = 885
    TabIndex = 87
  End
  Begin TextBox Txt1
    Index = 32
    ForeColor = &HFF0000&
    Left = 1515
    Top = 1590
    Width = 4530
    Height = 870
    TabIndex = 38
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
  Begin TextBox txt
    Index = 30
    ForeColor = &HFF0000&
    Left = 1515
    Top = 960
    Width = 4530
    Height = 285
    TabIndex = 36
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
  Begin TextBox txt
    Index = 29
    ForeColor = &HFF0000&
    Left = 1515
    Top = 645
    Width = 4530
    Height = 285
    TabIndex = 35
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
  Begin TextBox txt
    Index = 28
    ForeColor = &HFF0000&
    Left = 1515
    Top = 330
    Width = 4530
    Height = 285
    TabIndex = 34
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
  Begin TextBox txt
    Index = 27
    ForeColor = &HFF0000&
    Left = 1515
    Top = 15
    Width = 4530
    Height = 285
    TabIndex = 33
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
  Begin TextBox txt
    Index = 31
    ForeColor = &HFF0000&
    Left = 1515
    Top = 1275
    Width = 4530
    Height = 285
    TabIndex = 37
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
  Begin BtnEnh BtnEnh3
    Left = 0
    Top = 15
    Width = 1500
    Height = 285
    TabIndex = 88
  End
  Begin BtnEnh BtnEnh4
    Left = 0
    Top = 330
    Width = 1500
    Height = 285
    TabIndex = 89
  End
  Begin BtnEnh BtnEnh5
    Left = 0
    Top = 645
    Width = 1500
    Height = 285
    TabIndex = 90
  End
  Begin BtnEnh BtnEnh6
    Left = 0
    Top = 960
    Width = 1500
    Height = 285
    TabIndex = 91
  End
End
Begin BtnEnh BtnEnh2
  Left = 0
  Top = 1275
  Width = 1500
  Height = 285
  TabIndex = 92
End
Begin BtnEnh BtnEnh7
  Left = 4890
  Top = 1050
  Width = 2265
  Height = 285
  TabIndex = 93
End
Begin BtnEnh CmdMore
  Left = 9405
  Top = 7080
  Width = 1800
  Height = 495
  TabIndex = 96
End
Begin Label Label1
  Caption = "Booking Agent"
  Index = 3
  ForeColor = &HFF0000&
  Left = 420
  Top = 3975
  Width = 1395
  Height = 240
  TabIndex = 98
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
Begin Label LblBillRemark
  Caption = "Bill Remark"
  ForeColor = &HFF&
  Left = 8055
  Top = 1065
  Width = 3135
  Height = 270
  TabIndex = 97
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Monotype Corsiva"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "Day"
  Index = 2
  ForeColor = &HFF0000&
  Left = 4395
  Top = 1485
  Width = 360
  Height = 240
  TabIndex = 94
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
Begin Label Label4
  Caption = "Instructions for Department"
  ForeColor = &H80&
  Left = 6975
  Top = 4185
  Width = 2925
  Height = 270
  TabIndex = 86
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
Begin Label Label3
  Caption = "Party Instructions"
  ForeColor = &H80&
  Left = 6975
  Top = 1425
  Width = 1860
  Height = 270
  TabIndex = 85
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
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 15
  Top = 8520
  Width = 2520
  Height = 255
  TabIndex = 83
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
  Left = 0
  Top = 8850
  Width = 2430
  Height = 285
  TabIndex = 82
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
  TabIndex = 81
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
  Caption = "Remark"
  Index = 9
  ForeColor = &HFF0000&
  Left = 420
  Top = 5805
  Width = 735
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
  Caption = "Function Type"
  Index = 28
  ForeColor = &HFF0000&
  Left = 420
  Top = 4305
  Width = 1350
  Height = 240
  TabIndex = 79
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
  Caption = "City Name"
  Index = 13
  ForeColor = &HFF0000&
  Left = 420
  Top = 2715
  Width = 975
  Height = 240
  TabIndex = 78
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
  Index = 40
  ForeColor = &HFF0000&
  Left = 420
  Top = 3345
  Width = 1020
  Height = 240
  TabIndex = 77
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
  Caption = "Company Name"
  Index = 6
  ForeColor = &HFF0000&
  Left = 420
  Top = 3660
  Width = 1515
  Height = 240
  TabIndex = 76
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
  Caption = "Phone(Res.)"
  Index = 36
  ForeColor = &HFF0000&
  Left = 420
  Top = 3030
  Width = 1140
  Height = 240
  TabIndex = 75
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
  Caption = "Market Segment"
  Index = 47
  ForeColor = &HFF0000&
  Left = 420
  Top = 4620
  Width = 1560
  Height = 240
  TabIndex = 74
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
  Caption = "Business Source"
  Index = 48
  ForeColor = &HFF0000&
  Left = 420
  Top = 4935
  Width = 1560
  Height = 240
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
End
Begin Label Label1
  Caption = "Exp Pax"
  Index = 49
  ForeColor = &HFF0000&
  Left = 420
  Top = 5175
  Width = 795
  Height = 240
  TabIndex = 72
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
  Caption = "Booking Type"
  Index = 52
  ForeColor = &HFF0000&
  Left = 14340
  Top = 8865
  Width = 1305
  Height = 240
  Visible = 0   'False
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
Begin Label Label1
  Caption = "Rate/Pax"
  Index = 53
  ForeColor = &HFF0000&
  Left = 420
  Top = 5550
  Width = 870
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
  Caption = "Advance"
  Index = 8
  ForeColor = &HFF0000&
  Left = 4110
  Top = 5565
  Width = 825
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
  Caption = "Special Inst 1"
  Index = 4
  ForeColor = &HFF0000&
  Left = 7530
  Top = 1755
  Width = 1275
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
End
Begin Shape Shape1
  BorderColor = &H808080&
  Left = 19845
  Top = 7950
  Width = 240
  Height = 210
  Visible = 0   'False
End
Begin Label Label2
  Caption = "Venue Selection"
  ForeColor = &H80&
  Left = 420
  Top = 6480
  Width = 1740
  Height = 270
  TabIndex = 61
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
Begin Shape Shape2
  BorderColor = &H808080&
  Left = 19500
  Top = 7995
  Width = 210
  Height = 195
  Visible = 0   'False
End
Begin Label Lbl
  Caption = "Gurr. Pax"
  Index = 19
  ForeColor = &H0&
  Left = 0
  Top = 0
  Width = 1335
  Height = 240
  TabIndex = 58
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "Gurr. Pax"
  Index = 35
  ForeColor = &HFF0000&
  Left = 4080
  Top = 5250
  Width = 915
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
Begin Label Lbl
  Caption = "(Off.)"
  Index = 17
  ForeColor = &HFF0000&
  Left = 4185
  Top = 3030
  Width = 450
  Height = 240
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
End
Begin Label Label1
  Caption = "Special Inst. 7"
  Index = 44
  ForeColor = &HFF0000&
  Left = 7530
  Top = 3645
  Width = 1335
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
Begin Label Label1
  Caption = "Special Inst 6"
  Index = 45
  ForeColor = &HFF0000&
  Left = 7530
  Top = 3330
  Width = 1275
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
Begin Label Label1
  Caption = "Special Inst 5"
  Index = 46
  ForeColor = &HFF0000&
  Left = 7530
  Top = 3015
  Width = 1275
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
  Caption = "DOC ID"
  Index = 43
  ForeColor = &H0&
  Left = 18630
  Top = 8310
  Width = 585
  Height = 225
  Visible = 0   'False
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
Begin Label Label1
  Caption = "PAN No."
  Index = 41
  ForeColor = &HFF0000&
  Left = 4200
  Top = 3375
  Width = 780
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
Begin Label Label1
  Caption = "PIN"
  Index = 20
  ForeColor = &HFF0000&
  Left = 4215
  Top = 2760
  Width = 330
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
  Caption = "Special Inst 3"
  Index = 33
  ForeColor = &HFF0000&
  Left = 7530
  Top = 2385
  Width = 1275
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
  Caption = "Special Inst 2"
  Index = 32
  ForeColor = &HFF0000&
  Left = 7530
  Top = 2070
  Width = 1275
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
  Caption = "Special Inst 4"
  Index = 23
  ForeColor = &HFF0000&
  Left = 7530
  Top = 2700
  Width = 1275
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
  Caption = "Booking Date"
  Index = 1
  ForeColor = &HFF0000&
  Left = 405
  Top = 1485
  Width = 1275
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
Begin Label LblVPrefix
  Caption = "VPrefix"
  ForeColor = &H0&
  Left = 18360
  Top = 8010
  Width = 600
  Height = 240
  Visible = 0   'False
  TabIndex = 44
  Alignment = 1 'Right Justify
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "Party "
  Index = 5
  ForeColor = &HFF0000&
  Left = 405
  Top = 1800
  Width = 555
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
Begin Label Label1
  Caption = "Address"
  Index = 0
  ForeColor = &HFF0000&
  Left = 405
  Top = 2115
  Width = 750
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
End

Attribute VB_Name = "HallBooking"

Private global_52 As Integer
Private global_132 As Integer
Private global_134 As Integer
Private global_144 As Integer
Private global_148 As Long
Private global_140 As Long
Private global_112 As Integer

Private Sub DGBookingAgent_UnknownEvent_9 'F50734
  'Data Table: 5727EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5062B: Me.DGBookingAgent.Visible = False
  loc_F5064A: If (Me.RecordCount > 0) Then
  loc_F50689:   Set var_B4 = Me.txt
  loc_F5068F:   Call 0.Method_DGBookingAgent_UnknownEvent_90 (CInt(&H23), var_B8)
  loc_F50697:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F506CA:   var_B0 = Me.Fields.Item("Code")
  loc_F506E9:   Set var_B4 = Me.txt
  loc_F506EF:   Call 0.Method_DGBookingAgent_UnknownEvent_90 (CInt(&H23), var_B8)
  loc_F506F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5070D: End If
  loc_F50718: Set var_A8 = Me.txt
  loc_F5071E: Call 0.Method_DGBookingAgent_UnknownEvent_90 (CInt(&H23))
  loc_F50726: var_B0.SetFocus
  loc_F50732: Exit Sub
End Sub

Private Sub DGBookingAgent_UnknownEvent_1F 'EA775C
  'Data Table: 5727EC
  Dim var_A8 As Variant
  loc_EA76DC: Set var_88 = Me.DGBookingAgent
  loc_EA7706: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA770E: Set var_BC = Me.DGBookingAgent
  loc_EA774A: Proc_6_138_106E830(Me.DGBookingAgent, global_92, CInt(&H23), Me.FGPoint)
  loc_EA7758: Exit Sub
  loc_EA7759: DGBookingAgent.DispID_1B = var_A8
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '114C2DC
  'Data Table: 5727EC
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim Me As Recordset15
  loc_114BF56: Set var_88 = Me.TxtGrid
  loc_114BF5C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_114BF6A: Proc_6_74_E23240(var_8C)
  loc_114BF76: Call Proc_123_77_FB7CB8(var_8C)
  loc_114BF87: If (Index = 1) Then
  loc_114BFA0:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_114BFBB:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114BFC4:   Set var_8C = Me.FGrid
  loc_114BFDC:   Set var_90 = Me.FGrid
  loc_114BFFA:   Set var_108 = Me.TxtGrid
  loc_114C000:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(var_90.TextMatrix)))
  loc_114C008:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_114C026:   var_A4 = "MS Sans Serif"
  loc_114C038:   Set var_88 = Me.TxtGrid
  loc_114C03E:   Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_90)
  loc_114C04E:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_114C069:   Set var_88 = Me.TxtGrid
  loc_114C06F:   Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, CDbl(8))
  loc_114C077:   var_8C.FontSize = var_8C.Font
  loc_114C0A6:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_114C0B6:     Set var_90 = Me.TxtGrid
  loc_114C0BC:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_11C)
  loc_114C0C4:     var_114 = var_108.Height
  loc_114C0D6:     Set var_88 = Me.TxtGrid
  loc_114C0DC:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_114C0F0:     var_A4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_114C0FF:     Me.DGVenue.Top = var_8C.Font
  loc_114C11E:     Set var_88 = Me.TxtGrid
  loc_114C124:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_114C13D:     Set var_90 = Me.DGVenue
  loc_114C143:     var_90.Left = CVar(var_8C.Left)
  loc_114C192:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_114C195:       Exit Sub
  loc_114C196:     End If
  loc_114C19C:     Me.MoveFirst
  loc_114C1B4:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114C1BC:     var_E4 = CVar(CLng(7)) 'Long
  loc_114C1C5:     Set var_8C = Me.FGrid
  loc_114C200:     Me.Find "Code='" & CStr(var_8C.TextMatrix)) & "'", 0, 1
  loc_114C230:     If (Me.EOF = &HFF) Then
  loc_114C239:       Me.MoveFirst
  loc_114C23E:     End If
  loc_114C241:   Else
  loc_114C248:     If (var_114 = CLng(2)) Then
  loc_114C25D:       Set var_88 = Me.TxtGrid
  loc_114C263:       Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_90, "WINGDINGS", var_138)
  loc_114C26B:       var_D4 = var_8C.Font
  loc_114C273:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_114C28E:       Set var_88 = Me.TxtGrid
  loc_114C294:       Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, CDbl(&HE))
  loc_114C29C:       var_8C.FontSize = var_E4
  loc_114C2B8:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_114C2D2:       Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_114C2DA:     End If
  loc_114C2DA:   End If
  loc_114C2DA: End If
  loc_114C2DA: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '109FCF0
  'Data Table: 5727EC
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_109FA40: If (KeyCode = 1) Then
  loc_109FA4D:   If (CLng(Shift) = &H1B) Then
  loc_109FA5D:     Set var_8C = Me.TxtGrid
  loc_109FA63:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_109FA7D:     Set var_98 = Me.TxtGrid
  loc_109FA83:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_109FA8B:     var_9C.Text = var_90.Tag
  loc_109FAA7:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_109FAAC:     Call Proc_123_77_FB7CB8(arg_14)
  loc_109FAB5:     Set var_8C = Me.FGrid
  loc_109FAD2:     Set var_8C = Me.TxtGrid
  loc_109FAD8:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_109FAE0:     var_90.Visible = FGrid.DispID_8001
  loc_109FAEC:     Exit Sub
  loc_109FAED:   End If
  loc_109FB00:   var_B0 = CLng(Me.FGrid.Col)
  loc_109FB10:   If (var_B0 = CLng(1)) Then
  loc_109FB2B:     Set var_9C = Nothing
  loc_109FB64:     Proc_6_69_134A630(Me.DGVenue, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_109FB82:     If (CLng(Shift) = &HD) Then
  loc_109FB8B:       Call Proc_123_72_12D1398(KeyCode, var_B2, 1, Nothing)
  loc_109FB96:       If (var_B2 = &HFF) Then
  loc_109FBDC:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_134, 7, 2)
  loc_109FBEC:       End If
  loc_109FBEC:     End If
  loc_109FBEF:   Else
  loc_109FBF6:     If (var_B0 = CLng(3)) Then
  loc_109FC03:       If (CLng(Shift) = &HD) Then
  loc_109FC0C:         Call Proc_123_72_12D1398(KeyCode, var_B2, 3, 0)
  loc_109FC17:         If (var_B2 = &HFF) Then
  loc_109FC5D:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_134, 7, 0)
  loc_109FC6D:         End If
  loc_109FC6D:       End If
  loc_109FC70:     Else
  loc_109FC77:       If (var_B0 = CLng(5)) Then
  loc_109FC84:         If (CLng(Shift) = &HD) Then
  loc_109FC8D:           Call Proc_123_72_12D1398(KeyCode, var_B2, 4, 0)
  loc_109FC98:           If (var_B2 = &HFF) Then
  loc_109FCDE:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_134, 7, 0)
  loc_109FCEE:           End If
  loc_109FCEE:         End If
  loc_109FCEE:       End If
  loc_109FCEE:     End If
  loc_109FCEE:   End If
  loc_109FCEE: End If
  loc_109FCEE: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EB6CD4
  'Data Table: 5727EC
  loc_EB6C3F: Proc_6_58_E06050(arg_10)
  loc_EB6C50: If (KeyAscii = 1) Then
  loc_EB6C76:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_EB6C95:     If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_EB6CA7:       var_A4 = "Name"
  loc_EB6CC2:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_EB6CD1:     End If
  loc_EB6CD1:   End If
  loc_EB6CD1: End If
  loc_EB6CD1: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDBDA8
  'Data Table: 5727EC
  loc_EDBCF4: On Error Goto loc_EDBD9F
  loc_EDBD03: If (KeyCode = 1) Then
  loc_EDBD29:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_EDBD4F:     If ((Shift <> &HD) And (CBool(Me.DGVenue.Visible) = 0)) Then
  loc_EDBD60:       Call TxtGrid_KeyDown(KeyCode, global_132)
  loc_EDBD8F:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_EDBD9E:     End If
  loc_EDBD9E:   End If
  loc_EDBD9E: End If
  loc_EDBD9E: Exit Sub
  loc_EDBD9F: ' Referenced from: EDBCF4
  loc_EDBD9F: Proc_6_60_E63754(&HFF, 0)
  loc_EDBDA4: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E638E4
  'Data Table: 5727EC
  Dim var_90 As MaskEdBox
  loc_E638A4: If (Cancel = 1) Then
  loc_E638AD:   Call Proc_123_72_12D1398(Cancel, var_88)
  loc_E638C7:   Set var_8C = Me.txtMEd
  loc_E638CD:   Call 0.Method_TxtGrid_Validate0 (0, var_90, False)
  loc_E638D5:   var_90.Visible = Not(var_88)
  loc_E638E1: End If
  loc_E638E1: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_0 'F82D48
  'Data Table: 5727EC
  Dim var_90 As Variant
  Dim var_98 As String
  Dim unk_572803 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Fields15
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_C8 As TextBox
  loc_F82C22: Set var_8C = Me.txt
  loc_F82C28: Call 0.Method_Command1_UnknownEvent_00 (CInt(&H22), var_90, var_94, "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='")
  loc_F82C30: var_BC = var_90.Text
  loc_F82C39: var_98 = -1 & var_94
  loc_F82C49: unk_572803.Execute var_98 & "'", var_C0, 
  loc_F82C54: Set var_88 = var_C0
  loc_F82CB2: If ((var_88.RecordCount > 0) And (IsNull(CVar(var_88.Fields.Item("Advance"))) = 0)) Then
  loc_F82CCF:   var_90 = var_88.Fields.Item("Advance")
  loc_F82CEE:   Set var_C0 = Me.txt
  loc_F82CF4:   Call 0.Method_Command1_UnknownEvent_00 (CInt(&H20), var_C8)
  loc_F82CFC:   var_C8.Text = CStr(var_90.Value)
  loc_F82D15: Else
  loc_F82D23:   Set var_8C = Me.txt
  loc_F82D29:   Call 0.Method_Command1_UnknownEvent_00 (CInt(&H20), var_90)
  loc_F82D31:   var_90.Text = "0.00"
  loc_F82D3D: End If
  loc_F82D42: Set var_88 = Nothing
  loc_F82D45: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 '11A1E9C
  'Data Table: 5727EC
  Dim var_9C As String
  Dim var_A4 As TextBox
  Dim var_9E As Integer
  Dim var_E0 As Integer
  Dim unk_572803 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_98 As Variant
  loc_11A1AA0: On Error Goto loc_11A1E5E
  loc_11A1AA7: Set var_88 = Me.TopCtrl1
  loc_11A1AAD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11A1AC6: If (CStr() <> "Browse") Then
  loc_11A1AC9:   Exit Sub
  loc_11A1ACA: End If
  loc_11A1AD8: Set var_88 = Me.txt
  loc_11A1ADE: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_A4)
  loc_11A1AF0: var_9E = CInt(var_A4.Text)
  loc_11A1B01: Set var_88 = Me.TopCtrl1
  loc_11A1B07: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_9E)
  loc_11A1B20: If (CStr() <> "Add") Then
  loc_11A1B23:   GoTo loc_11A1B83
  loc_11A1B26: End If
  loc_11A1B26: Call TopCtrl1_UnknownEvent_16()
  loc_11A1B4E: Call Proc_123_76_EEEF60(Proc_5_1_100EC1C("INI", Me))
  loc_11A1B64: Set var_88 = Me.TxtGrid
  loc_11A1B6A: Call 0.Method_Command1_UnknownEvent_90 (1, var_A4)
  loc_11A1B72: var_A4.Visible = False
  loc_11A1B7E: Call Proc_123_73_16C493C(global_60)
  loc_11A1B83: ' Referenced from: 11A1B23
  loc_11A1B90: var_9C = MemVar_1F95078 & "BANQ"
  loc_11A1B98: If (global_56 = var_9C) Then
  loc_11A1BC8:   Set var_88 = Me.txt
  loc_11A1BCE:   Call 0.Method_Command1_UnknownEvent_90 (CInt(&H22), var_A4, var_9C, "SELECT Count(*) FROM HallSale1 WHERE BookDocId='", var_98, -1)
  loc_11A1C00:   unk_572803.Execute var_D0 & var_9C & "' And RestCode='" & global_56 & "'", 0, var_E4
  loc_11A1C10:    = var_D0.Item()
  loc_11A1C18:    = var_E4.Value
  loc_11A1C49:   If (var_A4.Text.Fields > 0) Then
  loc_11A1C70:     var_98 = CVar("Can not modify advance." & vbCrLf & "Bill Generated!") 'String
  loc_11A1C73:     MsgBox(var_98, &H10, "Advance...", var_114, var_124)
  loc_11A1C86:     Exit Sub
  loc_11A1C87:   End If
  loc_11A1C8A: Else
  loc_11A1C97:   var_9C = MemVar_1F95078 & "ODC"
  loc_11A1C9F:   If (global_56 = var_9C) Then
  loc_11A1CA8:     var_E0 = 0
  loc_11A1CCF:     Set var_88 = Me.txt
  loc_11A1CD5:     Call 0.Method_Command1_UnknownEvent_90 (CInt(&H22), var_A4, var_9C, "SELECT Count(*) FROM HallSale1 WHERE BookDocId='", var_98, -1)
  loc_11A1D07:     unk_572803.Execute var_D0 & var_9C & "' And RestCode='" & global_56 & "'", var_E0, var_E4
  loc_11A1D17:      = var_D0.Item()
  loc_11A1D1F:      = var_E4.Value
  loc_11A1D50:     If (var_A4.Text.Fields > 0) Then
  loc_11A1D5E:       var_F4 = "Advance..."
  loc_11A1D7A:       MsgBox(CVar("Can not modify advance." & vbCrLf & "Bill Generated!"), &H10, var_F4, var_114, var_124)
  loc_11A1D8D:       Exit Sub
  loc_11A1D8E:     End If
  loc_11A1D8E:   End If
  loc_11A1D8E: End If
  loc_11A1DA3: If (global_56 = MemVar_1F95078 & "BANQ") Then
  loc_11A1DAF:   HallAdvanceDepDialog.AdvType = "AD"
  loc_11A1DB7: Else
  loc_11A1DC0:   HallAdvanceDepDialog.AdvType = "AD"
  loc_11A1DC5: End If
  loc_11A1DD3: Set var_88 = Me.txt
  loc_11A1DD9: Call 0.Method_Command1_UnknownEvent_90 (CInt(&H22), var_A4)
  loc_11A1DEF: HallAdvanceDepDialog.pDocId = var_A4.Text
  loc_11A1E09: HallAdvanceDepDialog.OpenMode = 1
  loc_11A1E19: HallAdvanceDepDialog.OpenType = 6
  loc_11A1E2A: Call HallAdvanceDepDialog.global_52Put(global_56)
  loc_11A1E34: var_9C = CStr(var_9E)
  loc_11A1E3D: Call 0.Method_arg_1C4 (var_9C)
  loc_11A1E58: Call 0.Method_arg_2B0 (1)
  loc_11A1E5D: Exit Sub
  loc_11A1E5E: ' Referenced from: 11A1AA0
  loc_11A1E74: Set var_88 = Err()
  loc_11A1E7A: Call 0.Method_arg_2C (var_9C, 0, var_F4)
  loc_11A1E85: MsgBox(CVar(var_9C), var_114, var_124, var_E0, )
  loc_11A1E98: Exit Sub
End Sub

Private Sub Form_Load() '14F16A4
  'Data Table: 5727EC
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_BC As TextBox
  Dim var_E4 As Variant
  Dim unk_572803 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_110 As String
  Dim var_114 As String
  Dim var_10C As String
  Dim Me As Recordset15
  Dim var_108 As Variant
  loc_14F087C: On Error Goto loc_14F169C
  loc_14F088D: Set var_8C = Me.txt
  loc_14F0893: Call 0.Method_Form_Load0 (CInt(&HC), var_90)
  loc_14F08B2: Me.DGCompany.Left = CVar(var_90.Left)
  loc_14F08CE: Set var_B8 = Me.txt
  loc_14F08D4: Call 0.Method_Form_Load0 (CInt(&HC), var_BC)
  loc_14F08EF: Set var_8C = Me.txt
  loc_14F08F5: Call 0.Method_Form_Load0 (CInt(&HC), var_90)
  loc_14F090D: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14F091C: Me.DGCompany.Top = CVar(var_90.Left)
  loc_14F093C: Set var_8C = Me.txt
  loc_14F0942: Call 0.Method_Form_Load0 (CInt(&H23), var_90)
  loc_14F0961: Me.DGBookingAgent.Left = CVar(var_90.Left)
  loc_14F097D: Set var_B8 = Me.txt
  loc_14F0983: Call 0.Method_Form_Load0 (CInt(&H23), var_BC)
  loc_14F099E: Set var_8C = Me.txt
  loc_14F09A4: Call 0.Method_Form_Load0 (CInt(&H23), var_90)
  loc_14F09BC: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14F09CB: Me.DGBookingAgent.Top = CVar(var_90.Left)
  loc_14F09EB: Set var_8C = Me.txt
  loc_14F09F1: Call 0.Method_Form_Load0 (CInt(&HE), var_90)
  loc_14F0A10: Me.DGMarketSeg.Left = CVar(var_90.Left)
  loc_14F0A2C: Set var_B8 = Me.txt
  loc_14F0A32: Call 0.Method_Form_Load0 (CInt(&HE), var_BC)
  loc_14F0A4D: Set var_8C = Me.txt
  loc_14F0A53: Call 0.Method_Form_Load0 (CInt(&HE), var_90)
  loc_14F0A6B: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14F0A7A: Me.DGMarketSeg.Top = CVar(var_90.Left)
  loc_14F0A9A: Set var_8C = Me.txt
  loc_14F0AA0: Call 0.Method_Form_Load0 (CInt(&HF), var_90)
  loc_14F0ABF: Me.DGSource.Left = CVar(var_90.Left)
  loc_14F0ADB: Set var_B8 = Me.txt
  loc_14F0AE1: Call 0.Method_Form_Load0 (CInt(&HF), var_BC)
  loc_14F0AFC: Set var_8C = Me.txt
  loc_14F0B02: Call 0.Method_Form_Load0 (CInt(&HF), var_90)
  loc_14F0B1A: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14F0B29: Me.DGSource.Top = CVar(var_90.Left)
  loc_14F0B49: Set var_8C = Me.txt
  loc_14F0B4F: Call 0.Method_Form_Load0 (CInt(&HD), var_90)
  loc_14F0B6E: Me.DGFuncType.Left = CVar(var_90.Left)
  loc_14F0B8A: Set var_B8 = Me.txt
  loc_14F0B90: Call 0.Method_Form_Load0 (CInt(&HD), var_BC)
  loc_14F0BAB: Set var_8C = Me.txt
  loc_14F0BB1: Call 0.Method_Form_Load0 (CInt(&HD), var_90)
  loc_14F0BC9: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_14F0BD8: Me.DGFuncType.Top = CVar(var_90.Left)
  loc_14F0BF8: Set var_8C = Me.txt
  loc_14F0BFE: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_14F0C1D: Me.DGParty.Left = CVar(var_90.Left)
  loc_14F0C39: Set var_B8 = Me.txt
  loc_14F0C3F: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_14F0C47: var_C0 = var_BC.Height
  loc_14F0C5A: Set var_8C = Me.txt
  loc_14F0C60: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_14F0C78: var_A4 = CVar(((var_90.Top + var_C0) + CDbl(&H1E))) 'Single
  loc_14F0C87: Me.DGParty.Top = CVar(var_90.Left)
  loc_14F0CB6: Proc_6_17_EAAE40(var_D4, MemVar_1F95078, "Select * From Enviro Where LogSite_Code=")
  loc_14F0CBE: var_E4 = var_108 & var_D4 
  loc_14F0CCC: unk_572803.Execute CStr(var_E4), -1, var_8C
  loc_14F0CD7: Set var_88 = var_8C
  loc_14F0CEF: var_94 = var_88.RecordCount
  loc_14F0CFD: If (var_94 > 0) Then
  loc_14F0D17:   var_90 = var_88.Fields.Item("PANNOMandatoryYN")
  loc_14F0D2E:   global_128 = Proc_6_38_E69628(CVar(var_90))
  loc_14F0D3B: End If
  loc_14F0D40: Set var_88 = Nothing
  loc_14F0D58: If (global_56 = MemVar_1F95078 & "BANQ") Then
  loc_14F0D61:   global_104 = "IBOOK"
  loc_14F0D80:   var_110 = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F95078 & "') And code not in (select InquiryCode from HallBook Where InquiryCode<>'"
  loc_14F0D91:   Set var_8C = Me.txt
  loc_14F0D97:   Call 0.Method_Form_Load0 (CInt(3), var_90, var_10C, var_110)
  loc_14F0D9F:   var_D4 = var_90.Tag
  loc_14F0DA8:   var_114 = -1 & var_10C
  loc_14F0DB8:   unk_572803.Execute var_114 & "') and Status='Active' AND CatType='Indoor' order by PartyName", var_B8, 
  loc_14F0DC9:   Set global_72 = var_B8
  loc_14F0DEB: Else
  loc_14F0E00:   If (global_56 = MemVar_1F95078 & "ODC") Then
  loc_14F0E09:     global_104 = "OBOOK"
  loc_14F0E28:     var_110 = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F95078 & "') And code not in (select InquiryCode from HallBook Where InquiryCode<>'"
  loc_14F0E39:     Set var_8C = Me.txt
  loc_14F0E3F:     Call 0.Method_Form_Load0 (CInt(3), var_90, var_10C, var_110)
  loc_14F0E47:     var_D4 = var_90.Tag
  loc_14F0E50:     var_114 = -1 & var_10C
  loc_14F0E60:     unk_572803.Execute var_114 & "') and Status='Active' AND CatType='Outdoor' order by PartyName", var_B8, 
  loc_14F0E71:     Set global_72 = var_B8
  loc_14F0E90:   End If
  loc_14F0E90: End If
  loc_14F0E99: CVarUnk
  loc_14F0E9E: VerifyVarObj
  loc_14F0EA4: Set var_8C = Me.DGParty
  loc_14F0EAA: LateIdStAd
  loc_14F0ECD: If (global_56 = MemVar_1F95078 & "BANQ") Then
  loc_14F0ED6:   global_104 = "IBOOK"
  loc_14F0EF5:   var_10C = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F95078 & "') AND CatType='Indoor' order by PartyName"
  loc_14F0EFE:   unk_572803.Execute var_10C, var_D4, -1
  loc_14F0F0F:   Set global_76 = var_8C
  loc_14F0F27: Else
  loc_14F0F3C:   If (global_56 = MemVar_1F95078 & "ODC") Then
  loc_14F0F45:     global_104 = "OBOOK"
  loc_14F0F64:     var_10C = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F95078 & "') AND CatType='Outdoor' order by PartyName"
  loc_14F0F6D:     unk_572803.Execute var_10C, var_D4, -1
  loc_14F0F7E:     Set global_76 = var_8C
  loc_14F0F93:   End If
  loc_14F0F93: End If
  loc_14F0FB7: unk_572803.Execute "Select Code,Name From MarketSeg Where Active<>'No' And LogSite_Code in ('" & MemVar_1F95078 & "') Order by Name", var_D4, -1
  loc_14F0FC8: Set global_64 = var_8C
  loc_14F0FE6: CVarUnk
  loc_14F0FEB: VerifyVarObj
  loc_14F0FF7: LateIdStAd
  loc_14F1029: unk_572803.Execute "Select Code,Name From VenueMast Where LogSite_Code in ('" & MemVar_1F95078 & "') Order by Name", var_D4, -1
  loc_14F1058: CVarUnk
  loc_14F105D: VerifyVarObj
  loc_14F1063: Set var_8C = Me.DGVenue
  loc_14F1069: LateIdStAd
  loc_14F1093: Me.DGVenue.CursorLocation = 3
  loc_14F10BD: var_D4 = CVar("Select CITYCODE AS Code,CITYNAME AS Name From CITY Where LogSite_Code in ('" & MemVar_1F95078 & "') Order by CITYName") 'String
  loc_14F10DB: CVarUnk
  loc_14F10E0: VerifyVarObj
  loc_14F10E6: Set var_8C = Me.DGCity
  loc_14F10EC: LateIdStAd
  loc_14F110E: Call 0.Method_Form_Load0 (CInt(6), var_90, var_94, Me.txt, New, 3, -1)
  loc_14F112D: Me.DGCity.Left = CVar(var_94)
  loc_14F1149: Set var_B8 = Me.txt
  loc_14F114F: Call 0.Method_Form_Load0 (CInt(6), var_BC, var_C0, Me.DGMarketSeg, var_90.Left)
  loc_14F1157: var_8C = var_BC.Height
  loc_14F1170: Call 0.Method_Form_Load0 (CInt(6), var_90, var_94)
  loc_14F1178: global_64 = var_90.Top
  loc_14F1184: var_A4 = CVar((var_94 + var_C0)) 'Single
  loc_14F1193: Me.DGCity.Top = CVar(var_94)
  loc_14F11C9: unk_572803.Execute "Select Code,Name From BussSource Where Active<>'No' And LogSite_Code in ('" & MemVar_1F95078 & "') Order by Name", var_D4, -1
  loc_14F11DA: Set global_80 = Me.txt
  loc_14F11F8: CVarUnk
  loc_14F11FD: VerifyVarObj
  loc_14F1209: LateIdStAd
  loc_14F123B: unk_572803.Execute "Select Code,Name From FunctionType Where LogSite_Code in ('" & MemVar_1F95078 & "') Order by Name", var_D4, -1
  loc_14F124C: Set global_84 = Me.DGSource
  loc_14F126A: CVarUnk
  loc_14F126F: VerifyVarObj
  loc_14F127B: LateIdStAd
  loc_14F12A4: var_10C = "Select SubCode As Code,Name From SubGroup Where LogSite_Code in ('" & MemVar_1F95078 & "') And Nature='Customer' order by Name"
  loc_14F12AD: unk_572803.Execute var_10C, var_D4, -1
  loc_14F12DC: CVarUnk
  loc_14F12E1: VerifyVarObj
  loc_14F12ED: LateIdStAd
  loc_14F1316: var_10C = "Select SubCode ,Name From Subgroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and CompanyType like ('Travel Agency') Order by Name"
  loc_14F131F: unk_572803.Execute var_10C, var_D4, -1
  loc_14F134E: CVarUnk
  loc_14F1353: VerifyVarObj
  loc_14F1359: Set var_8C = Me.DGBookingAgent
  loc_14F135F: LateIdStAd
  loc_14F1377: Set global_60 = New 
  loc_14F1389: Me.DGBookingAgent.CursorLocation = 3
  loc_14F13B3: var_10C = "Select S.DocId as SearchCode,S.DocID,* From HAllBook S WHERE LogSite_Code in ('" & MemVar_1F95078 & "') And restCode='"
  loc_14F13D5: var_D4 = CVar(var_10C & global_56 & "' AND VType='" & global_104 & "' Order by S.Docid") 'String
  loc_14F13DF: r_D4, CVar(MemVar_1F95044), 2 var_D4, CVar(MemVar_1F95044), 3
  loc_14F13F4: Call Proc_123_85_12F84E4(1, -1, var_8C, Me.DGCompany, var_8C, var_8C)
  loc_14F13F9: Call Proc_123_70_11146EC(Me.DGFuncType, var_8C, var_8C)
  loc_14F1431: Call 0.Method_arg_50 (var_10C, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code in ('" & MemVar_1F95078 & "') And ENAME='", var_D4, -1, var_8C, var_90)
  loc_14F1458: unk_572803.Execute 0 & var_10C & "' AND UNAME='" & MemVar_1F950C8 & "'", var_B8, var_E4
  loc_14F1460: global_84 = var_8C.Fields
  loc_14F1468: var_8C = var_90.Item(var_8C)
  loc_14F1470:  = var_B8.Value
  loc_14F14A1: If (var_E4 > 0) Then
  loc_14F14EA:   Call 0.Method_arg_50 (var_10C, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code in ('" & MemVar_1F95078 & "') And ENAME='", var_D4, -1, var_8C, var_90, 0)
  loc_14F1511:   unk_572803.Execute var_B8 & var_10C & "' AND UNAME='" & MemVar_1F950C8 & "'", var_E4, "SearchCode='"
  loc_14F1519:   0 = var_8C.Fields
  loc_14F1521:   var_154 = var_90.Item(1)
  loc_14F1529:    = var_B8.Value
  loc_14F1548:   Me.Find CStr(var_E4 & "'"), , 
  loc_14F1574: End If
  loc_14F158B: If (Me.RecordCount > 0) Then
  loc_14F1594:   Me.MoveLast
  loc_14F1599: End If
  loc_14F15BC: Call Proc_123_76_EEEF60(Proc_5_1_100EC1C("INI", Me))
  loc_14F15D3: If (global_148 = 2) Then
  loc_14F15D6:   Call Proc_123_73_16C493C(global_60)
  loc_14F15DE: Else
  loc_14F15DE:   Call TopCtrl1_UnknownEvent_A()
  loc_14F15E3: End If
  loc_14F15EA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_14F1602: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_14F1618: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_14F162F: Me.LblUser.Left = CDbl(13500)
  loc_14F1646: Me.LblUser.Top = CDbl(7800)
  loc_14F165D: Me.LblLDt.Top = CDbl(8160)
  loc_14F166E: Set var_8C = Me.LblLDt
  loc_14F1674: var_8C.Left = CDbl(13500)
  loc_14F1685: Call 0.Method_arg_160 (var_8C)
  loc_14F1693: Call 0.Method_arg_164 (var_8C)
  loc_14F169B: Exit Sub
  loc_14F169C: ' Referenced from: 14F087C
  loc_14F169C: Proc_6_60_E63754()
  loc_14F16A1: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2718
  'Data Table: 5727EC
  Dim var_8C As Label
  loc_ED2676: Call 0.Method_arg_50 (var_88)
  loc_ED2688: Me.LblFormCaption.Caption = var_88
  loc_ED26A1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED26AD: Set var_A0 = Me.TopCtrl1
  loc_ED26B3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED26C0: Set var_8C = Me.TopCtrl1
  loc_ED26C6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED26E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED26FB: Call 0.Method_arg_100 (var_B8)
  loc_ED270D: Me.LblFormCaption.Width = var_B8
  loc_ED2715: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6A624
  'Data Table: 5727EC
  loc_E6A5DB: Set global_68 = Nothing
  loc_E6A5E7: global_52 = 0
  loc_E6A5F5: Set global_124 = Nothing
  loc_E6A607: Set global_88 = Nothing
  loc_E6A619: Set global_92 = Nothing
  loc_E6A620: Exit Sub
End Sub

Private Sub Form_Activate() 'EB78A0
  'Data Table: 5727EC
  Dim var_8C As Long
  Dim var_94 As TextBox
  loc_EB7817: var_8C = OpenMode
  loc_EB7823: If (var_8C = 1) Then
  loc_EB7834:   Set var_90 = Me.txt
  loc_EB783A:   Call 0.Method_Form_Activate0 (CInt(1), var_94)
  loc_EB7851:   Set var_9C = Me.TopCtrl1
  loc_EB7857:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005((var_94.Enabled = &HFF))
  loc_EB7877:   If ( And (CStr(var_8C) <> "Browse")) Then
  loc_EB7885:     Set var_90 = Me.txt
  loc_EB788B:     Call 0.Method_Form_Activate0 (CInt(1))
  loc_EB7893:     var_94.SetFocus
  loc_EB789F:   End If
  loc_EB789F: End If
  loc_EB789F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25AFC
  'Data Table: 5727EC
  loc_E25AE1: If (global_52 = &HFF) Then
  loc_E25AF1:   Me.Global.Unload Me
  loc_E25AF9: End If
  loc_E25AF9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E370E8
  'Data Table: 5727EC
  loc_E370BC: On Error Goto loc_E370E0
  loc_E370D7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E370DF: Exit Sub
  loc_E370E0: ' Referenced from: E370BC
  loc_E370E0: Proc_6_60_E63754(Shift)
  loc_E370E5: Exit Sub
  loc_E370E6: CExtInstUnk
End Sub

Private Sub CmdMore_UnknownEvent_9 '11314A4
  'Data Table: 5727EC
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_D4 As String
  Dim var_88 As Fields15
  Dim var_C8 As String
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim CmdMore_UnknownEvent_9C As Double
  loc_113113C: On Error Goto loc_1131466
  loc_1131143: Set var_88 = Me.TopCtrl1
  loc_1131149: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1131162: If (CStr() <> "Browse") Then
  loc_1131165:   Exit Sub
  loc_1131166: End If
  loc_113116A: Set var_88 = Me.TopCtrl1
  loc_1131170: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1131189: If (CStr() = "Add") Then
  loc_113118C:   Call TopCtrl1_UnknownEvent_16()
  loc_11311B4:   Call Proc_123_76_EEEF60(Proc_5_1_100EC1C("INI", Me))
  loc_11311CA:   Set var_88 = Me.TxtGrid
  loc_11311D0:   Call 0.Method_CmdMore_UnknownEvent_90 (1, var_A4)
  loc_11311D8:   var_A4.Visible = False
  loc_11311E4:   Call Proc_123_73_16C493C(global_60)
  loc_11311E9:   ' Referenced from: 11313AC
  loc_11311F5:   Call CateringBooking.global_56Put(global_56)
  loc_113120A:   Set var_88 = Me.Frame1
  loc_1131210:   Call 0.Method_CmdMore_UnknownEvent_90 (CInt(&H22), var_A4)
  loc_1131226:   Call 0.Method_arg_1C4 (CateringBooking.Frame1.Text)
  loc_1131243:   Call 0.Method_arg_2B0 (var_B8)
  loc_113124E:   Call CateringBooking.TopCtrl1_UnknownEvent_A()
  loc_1131261:   Set var_88 = var_A8.Txt
  loc_1131267:   Call 0.Method_CmdMore_UnknownEvent_90 (&H2D, var_A4)
  loc_113126F:   CateringBooking.Txt.SetFocus
  loc_113127E: Else
  loc_1131284:   Me.Close
  loc_1131299:   Set var_88 = Me.txt
  loc_113129F:   Call 0.Method_CmdMore_UnknownEvent_90 (CInt(&H22), var_A4)
  loc_11312DB:   var_D4 = "Select S.DocId as SearchCode,S.DocID From HAllBook S WHERE S.RestCode='" & global_56 & "' AND S.Docid='" & var_A4.Text
  loc_11312EC:   Me.Open CVar(var_D4 & "'"), CVar(MemVar_1F95044), 3
  loc_113131D:   If (Me.RecordCount <> 0) Then
  loc_1131361:     var_C8 = "Select S.DocId AS DocId From HAllBook1 S WHERE S.DocId='"
  loc_1131369:     var_EC = var_C8 & Me.Fields.Item("DocID").Value 
  loc_1131372:     var_10C = var_EC & "' Order by Docid" 
  loc_113137D:     Me.Recordset15.Open var_10C, CVar(MemVar_1F95044), 3
  loc_11313A9:     If (Me.Recordset15.RecordCount = 0) Then
  loc_11313AC:       GoTo loc_11311E9
  loc_11313B4:       Set var_DC = Nothing
  loc_11313BA:     Else
  loc_11313BE:       Set var_88 = Me.TopCtrl1
  loc_11313C4:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_11313CC:       var_9C = CStr(-1)
  loc_11313DD:       If ("Select S.DocId as SearchCode,S.DocID From HAllBook S WHERE S.RestCode='" & global_56 = "Edit") Then
  loc_11313E0:         Call TopCtrl1_UnknownEvent_16()
  loc_11313E5:       End If
  loc_11313F1:       Call CateringBooking.global_56Put(global_56)
  loc_11313FC:       var_B8 = "DocID"
  loc_1131424:       var_9C = CStr(Me.Recordset15.Fields.Item(var_B8).Value)
  loc_113142D:       Call 0.Method_arg_1C4 (var_9C, 1)
  loc_113144D:       Call 0.Method_arg_2B0 (var_B8, var_C8)
  loc_1131452:     End If
  loc_1131452:   End If
  loc_1131452: End If
  loc_1131452: Call Form_Load()
  loc_1131460: Call 0.Method_arg_2AC (1, -1)
  loc_1131465: Exit Sub
  loc_1131466: ' Referenced from: 113113C
  loc_113147C: Set var_88 = Err()
  loc_1131482: Call 0.Method_arg_2C (var_9C, 0, var_EC)
  loc_113148D: MsgBox(CVar(var_9C), var_10C, var_12C, var_C8, )
  loc_11314A0: Exit Sub
  loc_11314A1: CmdMore_UnknownEvent_9C = 
End Sub

Private Sub DGMarketSeg_UnknownEvent_9 'F4F814
  'Data Table: 5727EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F70B: Me.DGMarketSeg.Visible = False
  loc_F4F72A: If (Me.RecordCount > 0) Then
  loc_F4F769:   Set var_B4 = Me.txt
  loc_F4F76F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F4F777:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4F7AA:   var_B0 = Me.Fields.Item("Code")
  loc_F4F7C9:   Set var_B4 = Me.txt
  loc_F4F7CF:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F4F7D7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4F7ED: End If
  loc_F4F7F8: Set var_A8 = Me.txt
  loc_F4F7FE: Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HE))
  loc_F4F806: var_B0.SetFocus
  loc_F4F812: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_1F 'EA7698
  'Data Table: 5727EC
  Dim var_A8 As Variant
  loc_EA7618: Set var_88 = Me.DGMarketSeg
  loc_EA7642: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA764A: Set var_BC = Me.DGMarketSeg
  loc_EA7686: Proc_6_138_106E830(Me.DGMarketSeg, global_64, CInt(&HE), Me.FGPoint)
  loc_EA7694: Exit Sub
  loc_EA7695: DGMarketSeg.DispID_1B = var_A8
End Sub

Private Sub DGParty_UnknownEvent_9 'F39EF4
  'Data Table: 5727EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F39DEB: Me.DGParty.Visible = False
  loc_F39E0A: If (Me.RecordCount > 0) Then
  loc_F39E49:   Set var_B4 = Me.txt
  loc_F39E4F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F39E57:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F39E8A:   var_B0 = Me.Fields.Item("Code")
  loc_F39EA9:   Set var_B4 = Me.txt
  loc_F39EAF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F39EB7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F39ECD: End If
  loc_F39ED8: Set var_A8 = Me.txt
  loc_F39EDE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(3))
  loc_F39EE6: var_B0.SetFocus
  loc_F39EF2: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA75D4
  'Data Table: 5727EC
  Dim var_A8 As Variant
  loc_EA7554: Set var_88 = Me.DGParty
  loc_EA757E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7586: Set var_BC = Me.DGParty
  loc_EA75C2: Proc_6_138_106E830(Me.DGParty, global_72, CInt(3), Me.FGPoint)
  loc_EA75D0: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '14F600C
  'Data Table: 5727EC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_14F51C2: Set var_88 = Me.txt
  loc_14F51C8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_14F51D6: Proc_6_74_E23240(var_8C)
  loc_14F51E2: Call Proc_123_77_FB7CB8(var_8C)
  loc_14F51EA: var_92 = Index
  loc_14F51F5: If (var_92 = CInt(6)) Then
  loc_14F520F:   If (Me.RecordCount > 0) Then
  loc_14F521D:     Set var_8C = Me.FGPoint
  loc_14F5235:     Proc_6_137_1192FDC(Me.DGCity, global_124, Index)
  loc_14F5243:   End If
  loc_14F5291:   Set var_88 = Me.txt
  loc_14F5297:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F529F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F52B7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_14F52BA:     Exit Sub
  loc_14F52BB:   End If
  loc_14F52C8:   Set var_88 = Me.txt
  loc_14F52CE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F52D6:   var_A0 = var_8C.Text
  loc_14F52E8:   var_B0 = "Name"
  loc_14F5323:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F532C:     Me.MoveFirst
  loc_14F534F:     Set var_88 = Me.txt
  loc_14F5355:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F535D:     0 = var_8C.Text
  loc_14F5376:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_14F538B:   End If
  loc_14F538E: Else
  loc_14F5396:   If (var_92 = CInt(3)) Then
  loc_14F53B0:     If (Me.RecordCount > 0) Then
  loc_14F53BE:       Set var_8C = Me.FGPoint
  loc_14F53D6:       Proc_6_137_1192FDC(Me.DGParty, global_72)
  loc_14F53E4:     End If
  loc_14F5432:     Set var_88 = Me.txt
  loc_14F5438:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F5440:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F5458:     If (Index Or (var_A0 = vbNullString)) Then
  loc_14F545B:       Exit Sub
  loc_14F545C:     End If
  loc_14F5469:     Set var_88 = Me.txt
  loc_14F546F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F5477:     var_A0 = var_8C.Text
  loc_14F5489:     var_B0 = "Name"
  loc_14F54C4:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F54CD:       Me.MoveFirst
  loc_14F54F0:       Set var_88 = Me.txt
  loc_14F54F6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F54FE:       0 = var_8C.Text
  loc_14F5517:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F552C:     End If
  loc_14F552F:   Else
  loc_14F5537:     If (var_92 = CInt(&HE)) Then
  loc_14F5551:       If (Me.RecordCount > 0) Then
  loc_14F555F:         Set var_8C = Me.FGPoint
  loc_14F5577:         Proc_6_137_1192FDC(Me.DGMarketSeg, global_64)
  loc_14F5585:       End If
  loc_14F55D3:       Set var_88 = Me.txt
  loc_14F55D9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F55E1:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F55F9:       If (Index Or (var_A0 = vbNullString)) Then
  loc_14F5609:         Set var_88 = Me.txt
  loc_14F560F:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F5617:         var_8C.Tag = vbNullString
  loc_14F5623:         Exit Sub
  loc_14F5624:       End If
  loc_14F5631:       Set var_88 = Me.txt
  loc_14F5637:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F563F:       var_A0 = var_8C.Text
  loc_14F5651:       var_B0 = "Name"
  loc_14F568C:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F5695:         Me.MoveFirst
  loc_14F56B8:         Set var_88 = Me.txt
  loc_14F56BE:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F56C6:         0 = var_8C.Text
  loc_14F56DF:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F56F4:       End If
  loc_14F56F7:     Else
  loc_14F56FF:       If (var_92 = CInt(&HC)) Then
  loc_14F5719:         If (Me.RecordCount > 0) Then
  loc_14F5727:           Set var_8C = Me.FGPoint
  loc_14F573F:           Proc_6_137_1192FDC(Me.DGCompany, global_88)
  loc_14F574D:         End If
  loc_14F579B:         Set var_88 = Me.txt
  loc_14F57A1:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F57A9:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F57C1:         If (Index Or (var_A0 = vbNullString)) Then
  loc_14F57D1:           Set var_88 = Me.txt
  loc_14F57D7:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F57DF:           var_8C.Tag = vbNullString
  loc_14F57EB:           Exit Sub
  loc_14F57EC:         End If
  loc_14F57F9:         Set var_88 = Me.txt
  loc_14F57FF:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F5812:         global_120 = var_8C.Tag
  loc_14F582D:         Set var_88 = Me.txt
  loc_14F5833:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F583B:         var_A0 = var_8C.Text
  loc_14F584D:         var_B0 = "Name"
  loc_14F5888:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F5891:           Me.MoveFirst
  loc_14F58B4:           Set var_88 = Me.txt
  loc_14F58BA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F58C2:           0 = var_8C.Text
  loc_14F58DB:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F58F0:         End If
  loc_14F58F3:       Else
  loc_14F58FB:         If (var_92 = CInt(&H23)) Then
  loc_14F5915:           If (Me.RecordCount > 0) Then
  loc_14F5923:             Set var_8C = Me.FGPoint
  loc_14F593B:             Proc_6_137_1192FDC(Me.DGBookingAgent, global_92)
  loc_14F5949:           End If
  loc_14F5997:           Set var_88 = Me.txt
  loc_14F599D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F59A5:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F59BD:           If (Index Or (var_A0 = vbNullString)) Then
  loc_14F59C0:             Exit Sub
  loc_14F59C1:           End If
  loc_14F59CE:           Set var_88 = Me.txt
  loc_14F59D4:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F59DC:           var_A0 = var_8C.Text
  loc_14F59EE:           var_B0 = "Name"
  loc_14F5A29:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F5A32:             Me.MoveFirst
  loc_14F5A55:             Set var_88 = Me.txt
  loc_14F5A5B:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F5A63:             0 = var_8C.Text
  loc_14F5A7C:             Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F5A91:           End If
  loc_14F5A94:         Else
  loc_14F5A9C:           If (var_92 = CInt(&HF)) Then
  loc_14F5AB6:             If (Me.RecordCount > 0) Then
  loc_14F5AC4:               Set var_8C = Me.FGPoint
  loc_14F5ADC:               Proc_6_137_1192FDC(Me.DGSource, global_80)
  loc_14F5AEA:             End If
  loc_14F5B38:             Set var_88 = Me.txt
  loc_14F5B3E:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F5B46:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F5B5E:             If (Index Or (var_A0 = vbNullString)) Then
  loc_14F5B6E:               Set var_88 = Me.txt
  loc_14F5B74:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F5B7C:               var_8C.Tag = vbNullString
  loc_14F5B88:               Exit Sub
  loc_14F5B89:             End If
  loc_14F5B96:             Set var_88 = Me.txt
  loc_14F5B9C:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F5BA4:             var_A0 = var_8C.Text
  loc_14F5BB6:             var_B0 = "Name"
  loc_14F5BF1:             If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F5BFA:               Me.MoveFirst
  loc_14F5C1D:               Set var_88 = Me.txt
  loc_14F5C23:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F5C2B:               0 = var_8C.Text
  loc_14F5C44:               Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F5C59:             End If
  loc_14F5C5C:           Else
  loc_14F5C64:             If (var_92 = CInt(&HD)) Then
  loc_14F5C7E:               If (Me.RecordCount > 0) Then
  loc_14F5C8C:                 Set var_8C = Me.FGPoint
  loc_14F5CA4:                 Proc_6_137_1192FDC(Me.DGFuncType, global_84)
  loc_14F5CB2:               End If
  loc_14F5D00:               Set var_88 = Me.txt
  loc_14F5D06:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14F5D0E:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14F5D26:               If (Index Or (var_A0 = vbNullString)) Then
  loc_14F5D36:                 Set var_88 = Me.txt
  loc_14F5D3C:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F5D44:                 var_8C.Tag = vbNullString
  loc_14F5D50:                 Exit Sub
  loc_14F5D51:               End If
  loc_14F5D5E:               Set var_88 = Me.txt
  loc_14F5D64:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14F5D6C:               var_A0 = var_8C.Text
  loc_14F5D7E:               var_B0 = "Name"
  loc_14F5DB9:               If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14F5DC2:                 Me.MoveFirst
  loc_14F5DE5:                 Set var_88 = Me.txt
  loc_14F5DEB:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14F5DF3:                 0 = var_8C.Text
  loc_14F5E0C:                 Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14F5E21:               End If
  loc_14F5E24:             Else
  loc_14F5E2C:               If (var_92 = CInt(&H11)) Then
  loc_14F5E3D:                 Set var_88 = Me.txt
  loc_14F5E43:                 Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_14F5E67:                 If (CDbl(Val(var_8C.Text)) <= CDbl(0)) Then
  loc_14F5E8B:                   MsgBox("Can't leave blank the Expected Pax.", &H40, "Hall Booking...", var_E4, var_12C)
  loc_14F5EA6:                   Set var_88 = Me.txt
  loc_14F5EAC:                   Call 0.Method_Txt_GotFocus0 (CInt(&H10))
  loc_14F5EB4:                   var_8C.SetFocus
  loc_14F5EC0:                   Exit Sub
  loc_14F5EC1:                 End If
  loc_14F5EC4:               Else
  loc_14F5ECC:                 If (var_92 = CInt(&H12)) Then
  loc_14F5EDD:                   Set var_88 = Me.txt
  loc_14F5EE3:                   Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_8C)
  loc_14F5F07:                   If (CDbl(Val(var_8C.Text)) <= CDbl(0)) Then
  loc_14F5F2B:                     MsgBox("Can't leave blank the Gurrented Pax.", &H40, "Hall Booking...", var_E4, var_12C)
  loc_14F5F46:                     Set var_88 = Me.txt
  loc_14F5F4C:                     Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_8C)
  loc_14F5F54:                     var_8C.SetFocus
  loc_14F5F60:                     Exit Sub
  loc_14F5F61:                   End If
  loc_14F5F64:                 Else
  loc_14F5F6C:                   If (var_92 = CInt(&H14)) Then
  loc_14F5F7D:                     Set var_88 = Me.txt
  loc_14F5F83:                     Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_8C)
  loc_14F5FA7:                     If (CDbl(Val(var_8C.Text)) <= CDbl(0)) Then
  loc_14F5FE1:                       If (MsgBox("Do you want leave blank the Rate of Per Pax.", &H44, "Hall Booking...", var_E4, var_12C) = 7) Then
  loc_14F5FEF:                         Set var_88 = Me.txt
  loc_14F5FF5:                         Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_8C)
  loc_14F5FFD:                         var_8C.SetFocus
  loc_14F6009:                         Exit Sub
  loc_14F600A:                       End If
  loc_14F600A:                     End If
  loc_14F600A:                   End If
  loc_14F600A:                 End If
  loc_14F600A:               End If
  loc_14F600A:             End If
  loc_14F600A:           End If
  loc_14F600A:         End If
  loc_14F600A:       End If
  loc_14F600A:     End If
  loc_14F600A:   End If
  loc_14F600A: End If
  loc_14F600A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13B01F0
  'Data Table: 5727EC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  loc_13AF8C6: If (CLng(Shift) = &H1B) Then
  loc_13AF8C9:   Call Proc_123_77_FB7CB8()
  loc_13AF8CE:   Exit Sub
  loc_13AF8CF: End If
  loc_13AF8D2: var_86 = KeyCode
  loc_13AF8DD: If (var_86 = CInt(6)) Then
  loc_13AF8FD:   Set var_9C = Me.FGPoint
  loc_13AF92F:   Proc_6_79_11AD564(Me.DGCity, Me.txt, CInt(6), global_124, Shift)
  loc_13AF99C:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AF9C2:     Proc_6_138_106E830(Me.DGCity, global_124, KeyCode, Me.FGPoint, &HFF)
  loc_13AF9D0:   End If
  loc_13AF9D3: Else
  loc_13AF9DB:   If (var_86 = CInt(3)) Then
  loc_13AFA00:     If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_13AFA20:       Set var_9C = Me.FGPoint
  loc_13AFA52:       Proc_6_79_11AD564(Me.DGParty, Me.txt, CInt(3), global_72, Shift, &HFF, 1)
  loc_13AFA66:     End If
  loc_13AFABF:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AFAC6:       Set var_9C = Me.DGParty
  loc_13AFAE5:       Proc_6_138_106E830(var_9C, global_72, KeyCode, Me.FGPoint, var_9C)
  loc_13AFAF3:     End If
  loc_13AFAF6:   Else
  loc_13AFAFE:     If (var_86 = CInt(&HE)) Then
  loc_13AFB57:       Proc_6_69_134A630(Me.DGMarketSeg, Me.txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_13AFBC6:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AFBEC:         Proc_6_138_106E830(Me.DGMarketSeg, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13AFBFA:       End If
  loc_13AFBFD:     Else
  loc_13AFC05:       If (var_86 = CInt(&HC)) Then
  loc_13AFC5E:         Proc_6_69_134A630(Me.DGCompany, Me.txt, KeyCode, global_88, Shift, 0, 1, Nothing)
  loc_13AFCCD:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AFCF3:           Proc_6_138_106E830(Me.DGCompany, global_88, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13AFD01:         End If
  loc_13AFD04:       Else
  loc_13AFD0C:         If (var_86 = CInt(&H23)) Then
  loc_13AFD69:           Proc_6_69_134A630(Me.DGBookingAgent, Me.txt, CInt(&H23), global_92, Shift, 0, 1, Nothing)
  loc_13AFDD8:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AFDFE:             Proc_6_138_106E830(Me.DGBookingAgent, global_92, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13AFE0C:           End If
  loc_13AFE0F:         Else
  loc_13AFE17:           If (var_86 = CInt(&HD)) Then
  loc_13AFE70:             Proc_6_69_134A630(Me.DGFuncType, Me.txt, KeyCode, global_84, Shift, 0, 1, Nothing)
  loc_13AFEDF:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13AFF05:               Proc_6_138_106E830(Me.DGFuncType, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13AFF13:             End If
  loc_13AFF16:           Else
  loc_13AFF1E:             If (var_86 = CInt(&HF)) Then
  loc_13AFF77:               Proc_6_69_134A630(Me.DGSource, Me.txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_13AFFE6:               If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13B000C:                 Proc_6_138_106E830(Me.DGSource, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13B001A:               End If
  loc_13B001A:             End If
  loc_13B001A:           End If
  loc_13B001A:         End If
  loc_13B001A:       End If
  loc_13B001A:     End If
  loc_13B001A:   End If
  loc_13B001A: End If
  loc_13B004B: Set var_9C = Me.DGSource
  loc_13B00F7: If ((((((((CBool(Me.DGCity.Visible) = 0) And (CBool(Me.DGFuncType.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGBookingAgent.Visible) = 0)) And (CBool(Me.DGMarketSeg.Visible) = 0)) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(Me.DGVenue.Visible) = 0)) Then
  loc_13B010F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13B0118:     Proc_6_75_E5335C(Shift, arg_14, 0, 1)
  loc_13B011D:   End If
  loc_13B0121:   Set var_8C = Me.TopCtrl1
  loc_13B0127:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_9C)
  loc_13B0149:   If ((CStr(0) = "Add") And (KeyCode <> CInt(0))) Then
  loc_13B0161:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13B016A:       Proc_6_76_E533C8(Shift, arg_14)
  loc_13B016F:     End If
  loc_13B0172:   Else
  loc_13B0176:     Set var_8C = Me.TopCtrl1
  loc_13B017C:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_13B019E:     If ((CStr() = "Edit") And (KeyCode <> CInt(1))) Then
  loc_13B01B6:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13B01BF:         Proc_6_76_E533C8(Shift)
  loc_13B01C4:       End If
  loc_13B01C4:     End If
  loc_13B01C4:   End If
  loc_13B01E2:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1A))) Then
  loc_13B01E8:     Call Proc_123_78_F0A49C(KeyCode)
  loc_13B01ED:   End If
  loc_13B01ED: End If
  loc_13B01ED: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '117CA14
  'Data Table: 5727EC
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_117C630: On Error Goto loc_117CA0C
  loc_117C636: Proc_6_58_E06050(arg_10)
  loc_117C63E: var_86 = KeyAscii
  loc_117C649: If (var_86 = CInt(0)) Then
  loc_117C656:   Set var_8C = Me.txt
  loc_117C65C:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_117C677:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_117C686: Else
  loc_117C68E:   If (var_86 = CInt(&HE)) Then
  loc_117C6AD:     If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_117C6BF:       var_AC = "Name"
  loc_117C6DA:       Proc_6_89_1470B00(Me.txt, KeyAscii, global_64, arg_10)
  loc_117C70C:       Proc_6_138_106E830(Me.DGMarketSeg, global_64, KeyAscii, Me.FGPoint)
  loc_117C71A:     End If
  loc_117C71D:   Else
  loc_117C725:     If (var_86 = CInt(&HF)) Then
  loc_117C744:       If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_117C771:         Proc_6_89_1470B00(Me.txt, KeyAscii, global_80, arg_10, "Name")
  loc_117C7A3:         Proc_6_138_106E830(Me.DGSource, global_80, KeyAscii, Me.FGPoint, 0)
  loc_117C7B1:       End If
  loc_117C7B4:     Else
  loc_117C7BC:       If (var_86 = CInt(&HC)) Then
  loc_117C7DB:         If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_117C808:           Proc_6_89_1470B00(Me.txt, KeyAscii, global_88, arg_10, "Name")
  loc_117C83A:           Proc_6_138_106E830(Me.DGCompany, global_88, KeyAscii, Me.FGPoint, 0)
  loc_117C848:         End If
  loc_117C84B:       Else
  loc_117C853:         If (var_86 = CInt(&H23)) Then
  loc_117C872:           If (CBool(Me.DGBookingAgent.Visible) = &HFF) Then
  loc_117C89F:             Proc_6_89_1470B00(Me.txt, KeyAscii, global_92, arg_10, "Name")
  loc_117C8D1:             Proc_6_138_106E830(Me.DGBookingAgent, global_92, KeyAscii, Me.FGPoint, 0)
  loc_117C8DF:           End If
  loc_117C8E2:         Else
  loc_117C8EA:           If (var_86 = CInt(&HD)) Then
  loc_117C909:             If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_117C91B:               var_AC = "Name"
  loc_117C936:               Proc_6_89_1470B00(Me.txt, KeyAscii, global_84, arg_10, var_AC)
  loc_117C950:               Set var_90 = Me.FGPoint
  loc_117C968:               Proc_6_138_106E830(Me.DGFuncType, global_84, KeyAscii, var_90, 0)
  loc_117C976:             End If
  loc_117C979:           Else
  loc_117C981:             If Not (var_86 = CInt(&H10)) Then
  loc_117C98C:               If (var_86 = CInt(&H11)) Then
  loc_117C98F:               End If
  loc_117C999:               Set var_8C = Me.txt
  loc_117C99F:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, var_AC)
  loc_117C9BA:               Proc_6_42_129B55C(var_90, arg_10, 4, 0)
  loc_117C9C9:             Else
  loc_117C9D1:               If (var_86 = CInt(&H12)) Then
  loc_117C9DE:                 Set var_8C = Me.txt
  loc_117C9E4:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 0)
  loc_117C9FF:                 Proc_6_42_129B55C(var_90, arg_10, 6)
  loc_117CA0B:               End If
  loc_117CA0B:             End If
  loc_117CA0B:           End If
  loc_117CA0B:         End If
  loc_117CA0B:       End If
  loc_117CA0B:     End If
  loc_117CA0B:   End If
  loc_117CA0B: End If
  loc_117CA0B: Exit Sub
  loc_117CA0C: ' Referenced from: 117C630
  loc_117CA0C: Proc_6_60_E63754(2, 0)
  loc_117CA11: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F8BD20
  'Data Table: 5727EC
  Dim var_86 As Integer
  loc_F8BBC3: var_86 = KeyCode
  loc_F8BBCE: If (var_86 = CInt(6)) Then
  loc_F8BBED:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F8BBFA:     var_A4 = "Name"
  loc_F8BC19:     Proc_6_80_FF1F20(Me.txt, CInt(6), global_124)
  loc_F8BC4B:     Proc_6_138_106E830(Me.DGCity, global_124, KeyCode, Me.FGPoint)
  loc_F8BC59:   End If
  loc_F8BC5C: Else
  loc_F8BC64:   If (var_86 = CInt(3)) Then
  loc_F8BC83:     If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F8BC90:       var_A4 = "Name"
  loc_F8BCAF:       Proc_6_80_FF1F20(Me.txt, CInt(3), global_72, Shift)
  loc_F8BCE1:       Proc_6_138_106E830(Me.DGParty, global_72, KeyCode, Me.FGPoint)
  loc_F8BCEF:     End If
  loc_F8BCF2:   Else
  loc_F8BCFA:     If Not (var_86 = CInt(&H11)) Then
  loc_F8BD05:       If (var_86 = CInt(&H12)) Then
  loc_F8BD08:       End If
  loc_F8BD0B:     Else
  loc_F8BD13:       If (var_86 = CInt(&H20)) Then
  loc_F8BD1C:         If (Shift = &HD) Then
  loc_F8BD1F:         End If
  loc_F8BD1F:       End If
  loc_F8BD1F:     End If
  loc_F8BD1F:   End If
  loc_F8BD1F: End If
  loc_F8BD1F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50FB4
  'Data Table: 5727EC
  loc_E50F92: Set var_88 = Me.txt
  loc_E50F98: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50FA6: Proc_6_73_E23294(var_8C)
  loc_E50FB2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1660ED8
  'Data Table: 5727EC
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim Me As Recordset15
  Dim var_A0 As String
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_BC As Variant
  Dim arg_10 As Integer
  Dim unk_572803 As Connection15
  Dim var_B8 As Recordset15
  Dim var_130 As Variant
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_10C As Long
  Dim var_138 As String
  Dim var_88 As Recordset15
  Dim var_144 As Double
  loc_165F7E8: On Error Goto loc_1660ED1
  loc_165F7EE: var_8A = Cancel
  loc_165F7F9: If (var_8A = CInt(6)) Then
  loc_165F809:   Set var_90 = Me.txt
  loc_165F80F:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165F817:   var_98 = var_94.Text
  loc_165F82E:   If (var_98 = vbNullString) Then
  loc_165F83E:     Set var_90 = Me.txt
  loc_165F844:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165F84C:     var_94.Tag = vbNullString
  loc_165F858:     Exit Sub
  loc_165F859:   End If
  loc_165F870:   If (Me.RecordCount <= 0) Then
  loc_165F873:     Exit Sub
  loc_165F874:   End If
  loc_165F87A:   Me.MoveFirst
  loc_165F89D:   Set var_90 = Me.txt
  loc_165F8A3:   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, "Name like '")
  loc_165F8AB:   0 = var_94.Text
  loc_165F8C4:   Me.Find 1 & var_98 & "*'", var_B4, var_8A
  loc_165F8F0:   If (Me.AbsolutePosition > 0) Then
  loc_165F92E:     Set var_B8 = Me.txt
  loc_165F934:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165F93C:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_165F96F:     var_94 = Me.Fields.Item("Code")
  loc_165F98D:     Set var_B8 = Me.txt
  loc_165F993:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_165F99B:     var_BC.Tag = CStr(var_94.Value)
  loc_165F9B1:     GoTo loc_165F9B4
  loc_165F9B4:     ' Referenced from: 165F9B1
  loc_165F9B4:   End If
  loc_165F9B7: Else
  loc_165F9BF:   If (var_8A = CInt(0)) Then
  loc_165F9CD:     Set var_90 = Me.txt
  loc_165F9D3:     Call 0.Method_Txt_Validate0 (CInt(0))
  loc_165F9DB:     var_98 = "Vr. No"
  loc_165F9FC:     If (Proc_6_27_EA61EC(var_94, var_98) = 0) Then
  loc_165FA0A:       Set var_90 = Me.txt
  loc_165FA10:       Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_165FA18:       var_94.SetFocus
  loc_165FA26:       arg_10 = &HFF
  loc_165FA29:       Exit Sub
  loc_165FA2A:     End If
  loc_165FA38:     Set var_90 = Me.txt
  loc_165FA3E:     Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_98)
  loc_165FA46:     arg_10 = var_94.Text
  loc_165FA5E:     If (CDbl(var_98) = CDbl(0)) Then
  loc_165FA74:       var_CC = "Vr. No Can Not Be 0"
  loc_165FA7A:       MsgBox(var_CC, 0, var_EC, var_10C, var_12C)
  loc_165FA94:       Set var_90 = Me.txt
  loc_165FA9A:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FAA2:       var_94.SetFocus
  loc_165FAB0:       arg_10 = &HFF
  loc_165FAB3:       Exit Sub
  loc_165FAB4:     End If
  loc_165FAB8:     Set var_90 = Me.TopCtrl1
  loc_165FABE:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_165FAC6:     var_98 = CStr(var_94)
  loc_165FAD7:     If (var_98 = "Add") Then
  loc_165FAE0:       Call Proc_123_79_10ECAF8(MemVar_1F95044)
  loc_165FAF3:       Set var_90 = Me.txt
  loc_165FAF9:       Call 0.Method_Txt_Validate0 (CInt(&H22), var_94)
  loc_165FB01:       var_94.Text = var_98
  loc_165FB10:     End If
  loc_165FB14:     Set var_90 = Me.TopCtrl1
  loc_165FB1A:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_165FB22:     var_98 = CStr()
  loc_165FB33:     If (var_98 = "Add") Then
  loc_165FB63:       Set var_90 = Me.txt
  loc_165FB69:       Call 0.Method_Txt_Validate0 (CInt(&H22), var_94, var_98, "Select Count(*) From HallBook Where DocID='", var_CC, -1)
  loc_165FB7A:       var_A0 = var_BC & var_98
  loc_165FB8A:       unk_572803.Execute var_A0 & "'", 0, var_130
  loc_165FB9A:        = var_BC.Item()
  loc_165FBA2:        = var_130.Value
  loc_165FBCF:       If (var_94.Text.Fields > 0) Then
  loc_165FBD8:         Call 0.Method_arg_50 (var_98)
  loc_165FBF9:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_98), var_10C, var_12C)
  loc_165FC0F:         Call Proc_123_79_10ECAF8(MemVar_1F95044)
  loc_165FC1F:         If (var_98 = vbNullString) Then
  loc_165FC2C:           Set var_90 = Me.txt
  loc_165FC32:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FC3A:           var_94.SetFocus
  loc_165FC48:           arg_10 = &HFF
  loc_165FC4B:           Exit Sub
  loc_165FC4C:         End If
  loc_165FC52:         Call Proc_123_79_10ECAF8(MemVar_1F95044, var_98)
  loc_165FC65:         Set var_90 = Me.txt
  loc_165FC6B:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_94, var_98)
  loc_165FC73:         var_94.Text = arg_10
  loc_165FC84:         arg_10 = &HFF
  loc_165FC87:         Exit Sub
  loc_165FC88:       End If
  loc_165FC88:     End If
  loc_165FC8B:   Else
  loc_165FC93:     If (var_8A = CInt(1)) Then
  loc_165FCA4:       Set var_90 = Me.txt
  loc_165FCAA:       Call 0.Method_Txt_Validate0 (CInt(1), var_94, var_98)
  loc_165FCB2:       arg_10 = var_94.Text
  loc_165FCE2:       If (Len(Trim(CVar(var_98))) = 0) Then
  loc_165FCF8:         Set var_90 = Me.txt
  loc_165FCFE:         Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_165FD06:         var_94.Text = CStr(MemVar_1F950EC)
  loc_165FD18:       Else
  loc_165FD22:         Set var_90 = Me.txt
  loc_165FD28:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FD48:         Set var_BC = Me.txt
  loc_165FD4E:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_165FD56:         var_130.Text = Proc_6_33_15125B8(var_94)
  loc_165FD69:       End If
  loc_165FD74:       Set var_90 = Me.txt
  loc_165FD7A:       Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_165FD9E:       var_10C = Format(CVar(var_94), "DDDD")
  loc_165FDA9:       var_12C = Trim(var_10C)
  loc_165FDB1:       var_98 = CStr(var_12C)
  loc_165FDC0:       Set var_B8 = Me.txt
  loc_165FDC6:       Call 0.Method_Txt_Validate0 (CInt(2), var_BC, var_98)
  loc_165FDF7:       Set var_90 = Me.txt
  loc_165FDFD:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_165FE05:       1 = var_94.Text
  loc_165FE20:       Set var_B8 = Me.txt
  loc_165FE26:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_A0)
  loc_165FE2E:       (CDate(var_98) >= MemVar_1F950F4) = 1
  loc_165FE50:       If Not((var_98 And (CDate(var_A0) <= MemVar_1F950FC))) Then
  loc_165FE74:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_10C, var_12C)
  loc_165FE8E:         Set var_90 = Me.txt
  loc_165FE94:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_165FE9C:         var_94.SetFocus
  loc_165FEAA:         arg_10 = &HFF
  loc_165FEAD:         Exit Sub
  loc_165FEAE:       End If
  loc_165FEB2:       Set var_90 = Me.TopCtrl1
  loc_165FEB8:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_165FEC0:       var_98 = CStr(var_94)
  loc_165FED1:       If (var_98 = "Add") Then
  loc_165FEDA:         Call Proc_123_79_10ECAF8(MemVar_1F95044)
  loc_165FEEA:         If (var_98 = vbNullString) Then
  loc_165FEF7:           Set var_90 = Me.txt
  loc_165FEFD:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FF05:           var_94.SetFocus
  loc_165FF13:           arg_10 = &HFF
  loc_165FF16:           Exit Sub
  loc_165FF17:         End If
  loc_165FF1D:         Call Proc_123_79_10ECAF8(MemVar_1F95044, var_98)
  loc_165FF30:         Set var_90 = Me.txt
  loc_165FF36:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_94, var_98)
  loc_165FF3E:         var_94.Text = arg_10
  loc_165FF4D:       End If
  loc_165FF50:     Else
  loc_165FF58:       If (var_8A = CInt(&HE)) Then
  loc_165FFA9:         Set var_90 = Me.txt
  loc_165FFAF:         Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_165FFB7:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_165FFCF:         If (var_98 Or (var_98 = vbNullString)) Then
  loc_165FFDF:           Set var_90 = Me.txt
  loc_165FFE5:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_165FFED:           var_94.Tag = vbNullString
  loc_165FFF9:           Exit Sub
  loc_165FFFA:         End If
  loc_1660035:         Set var_B8 = Me.txt
  loc_166003B:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1660043:         var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1660076:         var_94 = Me.Fields.Item("Code")
  loc_1660094:         Set var_B8 = Me.txt
  loc_166009A:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_16600A2:         var_BC.Tag = CStr(var_94.Value)
  loc_16600BB:       Else
  loc_16600C3:         If (var_8A = CInt(&HF)) Then
  loc_1660114:           Set var_90 = Me.txt
  loc_166011A:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_166013A:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_166014A:             Set var_90 = Me.txt
  loc_1660150:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1660158:             var_94.Tag = vbNullString
  loc_1660164:             Exit Sub
  loc_1660165:           End If
  loc_16601A0:           Set var_B8 = Me.txt
  loc_16601A6:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_16601AE:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16601E1:           var_94 = Me.Fields.Item("Code")
  loc_16601FF:           Set var_B8 = Me.txt
  loc_1660205:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_166020D:           var_BC.Tag = CStr(var_94.Value)
  loc_1660226:         Else
  loc_166022E:           If (var_8A = CInt(&HC)) Then
  loc_166027F:             Set var_90 = Me.txt
  loc_1660285:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16602A5:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_16602B5:               Set var_90 = Me.txt
  loc_16602BB:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16602C3:               var_94.Tag = vbNullString
  loc_16602CF:               Exit Sub
  loc_16602D0:             End If
  loc_1660313:             If CBool(CVar(global_120) <> Me.Fields.Item("Code").Value) Then
  loc_1660351:               Set var_B8 = Me.txt
  loc_1660357:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_166035F:               var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1660392:               var_94 = Me.Fields.Item("Code")
  loc_16603A3:               var_98 = CStr(var_94.Value)
  loc_16603B0:               Set var_B8 = Me.txt
  loc_16603B6:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_16603BE:               var_BC.Tag = var_98
  loc_16603DA:               Call 0.Method_arg_50 (var_98)
  loc_1660411:               If (MsgBox("Would U like to Change Above Information Acc. To Company Info.", &H124, CVar(var_98), var_10C, var_12C) = 6) Then
  loc_1660428:                 var_98 = "Select lTrim(ConPrefix+' '+ConPerson) As Party,Add1,LTrim(RTrim(Add2))+', '+LTrim(RTrim(Add3)) As Add2,City.CityName,ltrim(Pin) As Pin,Phone,Mobile,PanNo From SubGroup S Left Join City On City.CityCode=S.CityCode Where S.LogSite_Code in ('" & MemVar_1F95078
  loc_166043F:                 Set var_90 = Me.txt
  loc_1660445:                 Call 0.Method_Txt_Validate0 (Cancel, var_94, var_A0, var_98 & "') And SubCode='")
  loc_166044D:                 var_CC = var_94.Tag
  loc_1660456:                 var_138 = -1 & var_A0
  loc_1660466:                 unk_572803.Execute var_138 & "'", var_B8, 
  loc_1660471:                 Set var_88 = var_B8
  loc_16604A1:                 If (var_88.RecordCount > 0) Then
  loc_16604F4:                   Set var_B8 = Me.txt
  loc_16604FA:                   Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_1660502:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Party")))), &H32))
  loc_1660570:                   Set var_B8 = Me.txt
  loc_1660576:                   Call 0.Method_Txt_Validate0 (CInt(4), var_BC)
  loc_166057E:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))), &H32))
  loc_16605EC:                   Set var_B8 = Me.txt
  loc_16605F2:                   Call 0.Method_Txt_Validate0 (CInt(5), var_BC)
  loc_16605FA:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")))), &H32))
  loc_166064E:                   Set var_B8 = Me.txt
  loc_1660654:                   Call 0.Method_Txt_Validate0 (CInt(6), var_BC)
  loc_166065C:                   var_BC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_16606C0:                   Set var_B8 = Me.txt
  loc_16606C6:                   Call 0.Method_Txt_Validate0 (CInt(7), var_BC)
  loc_16606CE:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin")))), 6))
  loc_166073C:                   Set var_B8 = Me.txt
  loc_1660742:                   Call 0.Method_Txt_Validate0 (CInt(9), var_BC)
  loc_166074A:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Phone")))), &H1E))
  loc_16607B8:                   Set var_B8 = Me.txt
  loc_16607BE:                   Call 0.Method_Txt_Validate0 (CInt(&HA), var_BC)
  loc_16607C6:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile")))), &H19))
  loc_16607FB:                   var_94 = var_88.Fields.Item("PanNo")
  loc_1660834:                   Set var_B8 = Me.txt
  loc_166083A:                   Call 0.Method_Txt_Validate0 (CInt(&HB), var_BC)
  loc_1660842:                   var_BC.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_94))), &H14))
  loc_1660860:                 End If
  loc_1660865:                 Set var_88 = Nothing
  loc_1660868:               End If
  loc_1660868:             End If
  loc_166086B:           Else
  loc_1660873:             If (var_8A = CInt(&H23)) Then
  loc_1660883:               Set var_90 = Me.txt
  loc_1660889:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16608A8:               If (var_94.Text = vbNullString) Then
  loc_16608B8:                 Set var_90 = Me.txt
  loc_16608BE:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16608C6:                 var_94.Tag = vbNullString
  loc_16608D2:               End If
  loc_16608D5:             Else
  loc_16608DD:               If (var_8A = CInt(&HD)) Then
  loc_166092E:                 Set var_90 = Me.txt
  loc_1660934:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1660954:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1660964:                   Set var_90 = Me.txt
  loc_166096A:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1660972:                   var_94.Tag = vbNullString
  loc_166097E:                   Exit Sub
  loc_166097F:                 End If
  loc_16609BA:                 Set var_B8 = Me.txt
  loc_16609C0:                 Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_16609C8:                 var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16609E4:                 var_B4 = "Code"
  loc_16609FB:                 var_94 = Me.Fields.Item(var_B4)
  loc_1660A19:                 Set var_B8 = Me.txt
  loc_1660A1F:                 Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1660A27:                 var_BC.Tag = CStr(var_94.Value)
  loc_1660A40:               Else
  loc_1660A48:                 If (var_8A = CInt(3)) Then
  loc_1660A58:                   Set var_90 = Me.txt
  loc_1660A5E:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1660A66:                   var_98 = var_94.Text
  loc_1660A7D:                   If (var_98 = vbNullString) Then
  loc_1660A8D:                     Set var_90 = Me.txt
  loc_1660A93:                     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1660A9B:                     var_94.Tag = vbNullString
  loc_1660AA9:                     arg_10 = &HFF
  loc_1660AAC:                     Exit Sub
  loc_1660AAD:                   End If
  loc_1660AC4:                   If (Me.RecordCount <= 0) Then
  loc_1660AC7:                     GoTo loc_1660C29
  loc_1660ACA:                   End If
  loc_1660AD0:                   Me.MoveFirst
  loc_1660AF3:                   Set var_90 = Me.txt
  loc_1660AF9:                   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, "Name like '")
  loc_1660B01:                   0 = var_94.Text
  loc_1660B1A:                   Me.Find 1 & var_98 & "*'", var_B4, arg_10
  loc_1660B46:                   If (Me.AbsolutePosition > 0) Then
  loc_1660B60:                     If (Me.RecordCount > 0) Then
  loc_1660B9E:                       Set var_B8 = Me.txt
  loc_1660BA4:                       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1660BAC:                       var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1660BDF:                       var_94 = Me.Fields.Item("Code")
  loc_1660BFD:                       Set var_B8 = Me.txt
  loc_1660C03:                       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1660C0B:                       var_BC.Tag = CStr(var_94.Value)
  loc_1660C21:                       Call Proc_123_84_14C36F0()
  loc_1660C26:                       GoTo loc_1660C29
  loc_1660C29:                       ' Referenced from:                 1660C26
  loc_1660C29:                       ' Referenced from:                 1660AC7
  loc_1660C29:                     End If
  loc_1660C29:                   End If
  loc_1660C2C:                 Else
  loc_1660C34:                   If Not (var_8A = CInt(&H10)) Then
  loc_1660C3F:                     If (var_8A = CInt(&H11)) Then
  loc_1660C42:                     End If
  loc_1660C4C:                     Set var_90 = Me.txt
  loc_1660C52:                     Call 0.Method_Txt_Validate0 (Cancel)
  loc_1660C6A:                     If Not(IsNumeric(CVar(var_94))) Then
  loc_1660C7E:                       Set var_90 = Me.txt
  loc_1660C84:                       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1660C8C:                       var_94.Text = CStr(0)
  loc_1660C9B:                     End If
  loc_1660CA8:                     Set var_90 = Me.txt
  loc_1660CAE:                     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1660CB6:                     var_98 = var_94.Text
  loc_1660CD5:                     var_EC = "0"
  loc_1660CE5:                     var_10C = Format(CVar(Val(var_98)), var_EC)
  loc_1660CED:                     var_A0 = CStr(var_10C)
  loc_1660CFB:                     Set var_B8 = Me.txt
  loc_1660D01:                     Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_A0, 1)
  loc_1660D09:                     var_BC.Text = 1
  loc_1660D37:                     Set var_90 = Me.txt
  loc_1660D3D:                     Call 0.Method_Txt_Validate0 (CInt(&H10), var_94, var_98)
  loc_1660D45:                     var_144 = var_94.Text
  loc_1660D65:                     Set var_B8 = Me.txt
  loc_1660D6B:                     Call 0.Method_Txt_Validate0 (CInt(&H11), var_BC, var_A0)
  loc_1660D73:                     (CDbl(Val(var_98)) > CDbl(0)) = var_BC.Text
  loc_1660D98:                     If (var_94 And (CDbl(Val(var_A0)) > CDbl(0))) Then
  loc_1660DA9:                       Set var_B8 = Me.txt
  loc_1660DAF:                       Call 0.Method_Txt_Validate0 (CInt(&H11), var_BC)
  loc_1660DC4:                       var_144 = Val(var_BC.Text)
  loc_1660DD5:                       Set var_90 = Me.txt
  loc_1660DDB:                       Call 0.Method_Txt_Validate0 (CInt(&H10), var_94)
  loc_1660E08:                       If (CDbl(Val(var_94.Text)) < CDbl(var_144)) Then
  loc_1660E24:                         MsgBox("Expected Attendence can't be Less Than Guaranteed Attendence", &H40, var_EC, var_10C, var_12C)
  loc_1660E34:                       End If
  loc_1660E34:                     End If
  loc_1660E37:                   Else
  loc_1660E3F:                     If Not (var_8A = CInt(&HD)) Then
  loc_1660E4A:                       If Not (var_8A = CInt(&H14)) Then
  loc_1660E55:                         If Not (var_8A = CInt(&H15)) Then
  loc_1660E60:                           If Not (var_8A = CInt(&H16)) Then
  loc_1660E6B:                             If Not (var_8A = CInt(&H17)) Then
  loc_1660E76:                               If Not (var_8A = CInt(&H18)) Then
  loc_1660E81:                                 If Not (var_8A = CInt(&H19)) Then
  loc_1660E8C:                                   If (var_8A = CInt(&H1A)) Then
  loc_1660E8F:                                   End If
  loc_1660E8F:                                 End If
  loc_1660E8F:                               End If
  loc_1660E8F:                             End If
  loc_1660E8F:                           End If
  loc_1660E8F:                         End If
  loc_1660E8F:                       End If
  loc_1660E97:                       If (Cancel = CInt(&H1A)) Then
  loc_1660EAD:                         Me.FGrid.Col = 1
  loc_1660EC8:                         Me.FGrid.Row = 1
  loc_1660ED0:                       End If
  loc_1660ED0:                     End If
  loc_1660ED0:                   End If
  loc_1660ED0:                 End If
  loc_1660ED0:               End If
  loc_1660ED0:             End If
  loc_1660ED0:           End If
  loc_1660ED0:         End If
  loc_1660ED0:       End If
  loc_1660ED0:     End If
  loc_1660ED0:   End If
  loc_1660ED0: End If
  loc_1660ED0: Exit Sub
  loc_1660ED1: ' Referenced from: 165F7E8
  loc_1660ED1: Proc_6_60_E63754(var_144)
  loc_1660ED6: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_9 'F4E374
  'Data Table: 5727EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E26B: Me.DGFuncType.Visible = False
  loc_F4E28A: If (Me.RecordCount > 0) Then
  loc_F4E2C9:   Set var_B4 = Me.txt
  loc_F4E2CF:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4E2D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4E30A:   var_B0 = Me.Fields.Item("Code")
  loc_F4E329:   Set var_B4 = Me.txt
  loc_F4E32F:   Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4E337:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4E34D: End If
  loc_F4E358: Set var_A8 = Me.txt
  loc_F4E35E: Call 0.Method_DGFuncType_UnknownEvent_90 (CInt(&HD))
  loc_F4E366: var_B0.SetFocus
  loc_F4E372: Exit Sub
End Sub

Private Sub DGFuncType_UnknownEvent_1F 'EA2944
  'Data Table: 5727EC
  Dim var_A8 As Variant
  loc_EA28C4: Set var_88 = Me.DGFuncType
  loc_EA28EE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA28F6: Set var_BC = Me.DGFuncType
  loc_EA2932: Proc_6_138_106E830(Me.DGFuncType, global_84, CInt(&HD), Me.FGPoint)
  loc_EA2940: Exit Sub
  loc_EA2941: DGFuncType.DispID_1B = var_A8
End Sub

Private Sub FGrid_UnknownEvent_0 'E5EA44
  'Data Table: 5727EC
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5EA0F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5EA22: Set var_A8 = Me.TxtGrid
  loc_E5EA28: Call 0.Method_FGrid_UnknownEvent_00 (1, var_AC)
  loc_E5EA30: var_AC.Visible = False
  loc_E5EA3C: Call Proc_123_77_FB7CB8()
  loc_E5EA41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00714
  'Data Table: 5727EC
  loc_E0070C: Call Proc_123_71_E44B18()
  loc_E00711: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '12477F8
  'Data Table: 5727EC
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  loc_12472C8: Set var_88 = Me.TopCtrl1
  loc_12472CE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1247313: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_124731C:   Call Form_KeyDown(Cancel, arg_10)
  loc_1247321: End If
  loc_1247325: Set var_88 = Me.TopCtrl1
  loc_124732B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1247344: If (CStr() = "Browse") Then
  loc_1247347:   Exit Sub
  loc_1247348: End If
  loc_12473BC: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_12473D5:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_12473E5:   var_9C = "+{Tab}"
  loc_12473EB:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_12473F5:   Cancel = 0
  loc_12473FB: Else
  loc_1247405:   var_B0 = Me.FGrid.Rows
  loc_1247452:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_124746B:     Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_1247481:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_124748B:     Cancel = 0
  loc_124748E:   End If
  loc_124748E: End If
  loc_1247494: global_132 = Cancel
  loc_12474BA: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12474DE: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_12474F4:   var_EC = CLng(Me.FGrid.Col)
  loc_1247504:   If (var_EC = CLng(1)) Then
  loc_124751A:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1247532:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1247537:     var_11C = vbNullString
  loc_1247541:     Set var_B4 = Me.FGrid
  loc_1247547:     LateIdCallSt
  loc_1247572:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_124757A:     var_FC = CVar(CLng(7)) 'Long
  loc_124757F:     var_11C = vbNullString
  loc_1247589:     Set var_A0 = Me.FGrid
  loc_124758F:     LateIdCallSt
  loc_12475A4:   Else
  loc_12475AB:     If Not (var_EC = CLng(3)) Then
  loc_12475B5:       If (var_EC = CLng(5)) Then
  loc_12475B8:       End If
  loc_12475CB:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12475E3:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12475E8:       var_11C = vbNullString
  loc_12475F2:       Set var_B4 = Me.FGrid
  loc_12475F8:       LateIdCallSt
  loc_1247613:     Else
  loc_124761A:       If Not (var_EC = CLng(4)) Then
  loc_1247624:         If (var_EC = CLng(6)) Then
  loc_1247627:         End If
  loc_124763A:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1247652:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1247657:         var_11C = "00:00"
  loc_1247661:         Set var_B4 = Me.FGrid
  loc_1247667:         LateIdCallSt
  loc_124767F:       End If
  loc_124767F:     End If
  loc_124767F:   End If
  loc_124767F: End If
  loc_12476A7: If ((CLng(Cancel) = &H20) And (CLng(Me.FGrid.Col) = CLng(2))) Then
  loc_12476BA:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_12476D4:   Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_12476EF:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12476F7:   var_FC = CVar(CLng(2)) 'Long
  loc_1247725:   var_17C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_124772D:   var_19C = CVar(CLng(2)) 'Long
  loc_1247764:   var_1BC = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_124776C:   Set var_1D0 = Me.FGrid
  loc_1247772:   LateIdCallSt
  loc_124779B: End If
  loc_12477C3: If ((CLng(Cancel) = &HD) And (CLng(Me.FGrid.Col) = CLng(2))) Then
  loc_12477D8:   Me.FGrid.Col = CVar(CLng(3))
  loc_12477E0: End If
  loc_12477E6: If (Cancel = &HD) Then
  loc_12477EE:   global_134 = 0
  loc_12477F1: End If
  loc_12477F3: Cancel = 0
  loc_12477F6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11338
  'Data Table: 5727EC
  loc_E11329: Call FGrid_UnknownEvent_C()
  loc_E11333: global_134 = 0
  loc_E11336: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102DFF4
  'Data Table: 5727EC
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_102DDC0: Set var_88 = Me.TopCtrl1
  loc_102DDC6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_102DDDF: If (CStr() = "Browse") Then
  loc_102DDE2:   Exit Sub
  loc_102DDE3: End If
  loc_102DDF6: var_A0 = CLng(Me.FGrid.Col)
  loc_102DE06: If Not (var_A0 = CLng(1)) Then
  loc_102DE10:   If Not (var_A0 = CLng(3)) Then
  loc_102DE1A:     If (var_A0 = CLng(5)) Then
  loc_102DE1D:     End If
  loc_102DE1D:   End If
  loc_102DE21:   Set var_C4 = Me.FGrid
  loc_102DE45:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102DE72:   Set var_B4 = var_C4
  loc_102DE84:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_102DEAC:   Set var_88 = Me.TxtGrid
  loc_102DEB2:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4, var_9C, Asc(var_9C))
  loc_102DEBA:   0 = var_B4.Text
  loc_102DED3:   If (Len(var_9C) <= 1) Then
  loc_102DEE2:     Set var_88 = Me.TxtGrid
  loc_102DEE8:     Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4, var_9C)
  loc_102DEF0:     var_CA = var_B4.Text
  loc_102DF01:     Set var_B8 = Me.TxtGrid
  loc_102DF07:     Call 0.Method_FGrid_UnknownEvent_C0 (1, var_C4)
  loc_102DF0F:     var_C4.Text = var_9C
  loc_102DF22:   End If
  loc_102DF2E:   Set var_88 = Me.TxtGrid
  loc_102DF34:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_B4)
  loc_102DF4E:   Set var_B8 = Me.TxtGrid
  loc_102DF54:   Call 0.Method_FGrid_UnknownEvent_C0 (1, var_C4)
  loc_102DF5C:   var_C4.SelStart = Len(var_B4.Text)
  loc_102DF72: Else
  loc_102DF79:   If Not (var_A0 = CLng(4)) Then
  loc_102DF83:     If (var_A0 = CLng(6)) Then
  loc_102DF86:     End If
  loc_102DF97:     var_9C = "T"
  loc_102DFC8:     Proc_6_134_112C1C4(Me, Me.FGrid, Me.txtMEd, 0)
  loc_102DFDD:   End If
  loc_102DFDD: End If
  loc_102DFE7: If (CLng(Cancel) <> &HD) Then
  loc_102DFEF:   global_134 = &HFF
  loc_102DFF2: End If
  loc_102DFF2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE6470
  'Data Table: 5727EC
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE62A0: Set var_88 = Me.TopCtrl1
  loc_FE62A6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FE62BF: If (CStr() = "Browse") Then
  loc_FE62C2:   Exit Sub
  loc_FE62C3: End If
  loc_FE62E0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE62E3:   Exit Sub
  loc_FE62E4: End If
  loc_FE62F5: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE6317:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE6351:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE6373:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE6389:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE6392:         Set var_110 = Me.FGrid
  loc_FE63AD:       Else
  loc_FE63C0:         Me.FGrid.Rows = 1
  loc_FE63E6:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FE63EE:         Set var_110 = Me.FGrid
  loc_FE641B:         Me.FGrid.FixedRows = 1
  loc_FE6423:       End If
  loc_FE6423:     End If
  loc_FE6426:   Else
  loc_FE6447:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE6457:   End If
  loc_FE645B:   Set var_88 = Me.FGrid
  loc_FE646C: End If
  loc_FE646C: Exit Sub
  loc_FE646D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'F86A28
  'Data Table: 5727EC
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  loc_F868F0: Set var_88 = Me.TopCtrl1
  loc_F868F6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_F8690F: If (CStr() = "Browse") Then
  loc_F86912:   Exit Sub
  loc_F86913: End If
  loc_F86930: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_F86943:   Me.FGrid.CellFontName = "WINGDINGS"
  loc_F8695D:   Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_F86978:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F86980:   var_CC = CVar(CLng(2)) 'Long
  loc_F869AE:   var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F869B6:   var_194 = CVar(CLng(2)) 'Long
  loc_F869ED:   var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_F869F5:   Set var_1C8 = Me.FGrid
  loc_F869FB:   LateIdCallSt
  loc_F86A24: End If
  loc_F86A24: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E72984
  'Data Table: 5727EC
  Dim var_8C As TextBox
  loc_E72928: Call Proc_123_77_FB7CB8()
  loc_E72939: Set var_88 = Me.TxtGrid
  loc_E7293F: Call 0.Method_FGrid_UnknownEvent_150 (1, var_8C)
  loc_E72959: If (var_8C.Visible = &HFF) Then
  loc_E72967:   Set var_88 = Me.TxtGrid
  loc_E7296D:   Call 0.Method_FGrid_UnknownEvent_150 (1, var_8C)
  loc_E72975:   var_8C.Visible = False
  loc_E72981: End If
  loc_E72981: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F509F4
  'Data Table: 5727EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F508EB: Me.DGCompany.Visible = False
  loc_F5090A: If (Me.RecordCount > 0) Then
  loc_F50949:   Set var_B4 = Me.txt
  loc_F5094F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F50957:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5098A:   var_B0 = Me.Fields.Item("Code")
  loc_F509A9:   Set var_B4 = Me.txt
  loc_F509AF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F509B7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F509CD: End If
  loc_F509D8: Set var_A8 = Me.txt
  loc_F509DE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HC))
  loc_F509E6: var_B0.SetFocus
  loc_F509F2: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA31B0
  'Data Table: 5727EC
  Dim var_A8 As Variant
  loc_EA3130: Set var_88 = Me.DGCompany
  loc_EA315A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3162: Set var_BC = Me.DGCompany
  loc_EA319E: Proc_6_138_106E830(Me.DGCompany, global_88, CInt(&HC), Me.FGPoint)
  loc_EA31AC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F122E8
  'Data Table: 5727EC
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F121F0: On Error Goto loc_F122E1
  loc_F12216: Call Proc_123_76_EEEF60(Proc_5_1_100EC1C("ADD", Me))
  loc_F1222E: Set var_8C = Me.txt
  loc_F12234: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H20), var_94)
  loc_F1223C: var_94.Enabled = False
  loc_F12248: Call Proc_123_75_FC8204(global_60)
  loc_F1225A: Me.LblUser.Caption = vbNullString
  loc_F1226F: Me.LblLDt.Caption = vbNullString
  loc_F1228A: Set var_8C = Me.txt
  loc_F12290: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_F12298: var_94.Text = CStr(MemVar_1F950EC)
  loc_F122B8: If (OpenMode = 2) Then
  loc_F122C6:   Set var_8C = Me.txt
  loc_F122CC:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_F122D4:   var_94.SetFocus
  loc_F122E0: End If
  loc_F122E0: Exit Sub
  loc_F122E1: ' Referenced from: F121F0
  loc_F122E1: Proc_6_60_E63754(var_94)
  loc_F122E6: Exit Sub
  loc_F122E7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECADBC
  'Data Table: 5727EC
  Dim var_114 As TextBox
  loc_ECAD20: On Error Goto loc_ECADB6
  loc_ECAD5A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_ECAD80:   Call Proc_123_76_EEEF60(Proc_5_1_100EC1C("INI", Me))
  loc_ECAD96:   Set var_10C = Me.TxtGrid
  loc_ECAD9C:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (1, var_114)
  loc_ECADA4:   var_114.Visible = False
  loc_ECADB0:   Call Proc_123_73_16C493C(global_60)
  loc_ECADB5: End If
  loc_ECADB5: Exit Sub
  loc_ECADB6: ' Referenced from: ECAD20
  loc_ECADB6: Proc_6_60_E63754()
  loc_ECADBB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1397EA0
  'Data Table: 5727EC
  Dim var_128 As Integer
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim unk_572803 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  Dim var_AC As Variant
  loc_13975F6: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_13975F9:   Exit Sub
  loc_13975FA: End If
  loc_1397600: var_128 = 0
  loc_1397651: var_EC = "SELECT Count(*) FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_139765F: unk_572803.Execute CStr(var_EC), var_110, -1
  loc_1397667: var_114 = var_114.Fields
  loc_139766F: var_128 = var_118.Item(var_118)
  loc_1397677: var_12C = var_12C.Value
  loc_13976A4: If (var_13C > 0) Then
  loc_13976CE:   MsgBox(CVar("Can not delete this booking." & vbCrLf & "Bill Generated!"), &H10, "Booking...", var_EC, var_110)
  loc_13976E1:   Exit Sub
  loc_13976E2: End If
  loc_13976E2: On Error Goto loc_1397E4F
  loc_1397717: var_17C = "Pre-Costing"
  loc_139775F: If (Proc_6_108_101061C(MemVar_1F95044, "HallPreCosting", "ContraDocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_1397762:   Exit Sub
  loc_1397763: End If
  loc_13977DD: If (Proc_6_108_101061C(MemVar_1F95044, "PaychargeH", "ContraDocID", CStr(Me.Fields.Item("SearchCode").Value), 0, "Advance") = 0) Then
  loc_13977E0:   Exit Sub
  loc_13977E1: End If
  loc_139785B: If (Proc_6_108_101061C(MemVar_1F95044, "HallSale1", "BookDocId", CStr(Me.Fields.Item("SearchCode").Value), 0, "Hall Bill") = 0) Then
  loc_139785E:   Exit Sub
  loc_139785F: End If
  loc_1397896: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_EC, var_110) = 6) Then
  loc_13978A2:   unk_572803.BeginTrans var_178
  loc_13978B8:   var_16C = Me.Bookmark 'Variant
  loc_1397912:   unk_572803.Execute CStr("Delete From HallBook Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_110, -1
  loc_139795D:   var_1AC = 0
  loc_1397970:   var_1A4 = 0
  loc_139797B:   var_1A0 = 0
  loc_139798E:   var_198 = 0
  loc_1397999:   var_194 = 0
  loc_13979AC:   var_18C = 0
  loc_13979F5:   Proc_154_5_10E3BD4(MemVar_1F95044, "HallBook", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1397A73:   unk_572803.Execute CStr("Delete From HallBook1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_110, -1
  loc_1397ABE:   var_1AC = 0
  loc_1397AD1:   var_1A4 = 0
  loc_1397ADC:   var_1A0 = 0
  loc_1397AEF:   var_198 = 0
  loc_1397AFA:   var_194 = 0
  loc_1397B0D:   var_18C = 0
  loc_1397B56:   Proc_154_5_10E3BD4(MemVar_1F95044, "HallBook1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1397BC6:   var_EC = "Delete From VenueOCC Where FPDocID='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1397BD4:   unk_572803.Execute CStr(var_EC), var_110, -1
  loc_1397C15:   var_AC = Me.Fields.Item("SearchCode").Value
  loc_1397C1F:   var_1AC = 0
  loc_1397C32:   var_1A4 = 0
  loc_1397C3D:   var_1A0 = 0
  loc_1397C50:   var_198 = 0
  loc_1397C5B:   var_194 = 0
  loc_1397C6E:   var_18C = 0
  loc_1397CB7:   Proc_154_5_10E3BD4(MemVar_1F95044, "VenueOCC", "FPDocId", &HC8, CStr(var_AC), 0, 0, 0)
  loc_1397CE5:   unk_572803.CommitTrans
  loc_1397CF5:   Me.Requery -1
  loc_1397D15:   If (CVar(Me.RecordCount) >= var_16C) Then
  loc_1397D22:     Me.Bookmark = var_16C
  loc_1397D2A:   Else
  loc_1397D3E:     If (Me.EOF = 0) Then
  loc_1397D47:       Me.MoveLast
  loc_1397D4C:     End If
  loc_1397D4C:   End If
  loc_1397D4C:   Call Proc_123_73_16C493C(var_18C, 0, var_194, var_198)
  loc_1397D62:   Set var_88 = Me
  loc_1397D6D:   Proc_5_0_1107AD0(&HFF, var_88, global_60, 0)
  loc_1397D75: End If
  loc_1397D8A: If (global_56 = MemVar_1F95078 & "BANQ") Then
  loc_1397D93:   global_104 = "IBOOK"
  loc_1397DAD:   unk_572803.Execute "Select Code,PartyName as Name From BookingInquiry where code not in (select InquiryCode from HallBook) and Status='Active' order by PartyName", var_AC, -1
  loc_1397DBE:   Set global_72 = var_88
  loc_1397DCF: Else
  loc_1397DDC:   var_F0 = MemVar_1F95078 & "ODC"
  loc_1397DE4:   If (global_56 = var_F0) Then
  loc_1397DED:     global_104 = "OBOOK"
  loc_1397E07:     unk_572803.Execute "Select Code,PartyName as Name From BookingInquiry where code not in (select InquiryCode from HallBook) and Status='Active' order by PartyName", var_AC, -1
  loc_1397E18:     Set global_72 = var_88
  loc_1397E26:   End If
  loc_1397E26: End If
  loc_1397E2F: CVarUnk
  loc_1397E34: VerifyVarObj
  loc_1397E3A: Set var_88 = Me.DGParty
  loc_1397E40: LateIdStAd
  loc_1397E4E: Exit Sub
  loc_1397E4F: ' Referenced from: 13976E2
  loc_1397E55: unk_572803.RollbackTrans
  loc_1397E68: Call 0.Method_arg_2C (var_F0, Err(), global_72, Err(), Err())
  loc_1397E89: MsgBox(CVar(var_F0), &H10, " Deletion Message", var_EC, var_110)
  loc_1397E9C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '11CF23C
  'Data Table: 5727EC
  Dim var_98 As Integer
  Dim var_9C As TextBox
  Dim var_A4 As TextBox
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_90 As Variant
  Dim var_F4 As Variant
  Dim var_114 As String
  loc_11CEDDE: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_11CEDE1:   Exit Sub
  loc_11CEDE2: End If
  loc_11CEDE2: On Error Goto loc_11CF233
  loc_11CEE08: Call Proc_123_76_EEEF60(Proc_5_1_100EC1C("EDIT", Me))
  loc_11CEE1F: If (global_140 <> 0) Then
  loc_11CEE2E:   Set var_90 = Me.txt
  loc_11CEE34:   Call 0.Method_TopCtrl1_UnknownEvent_DC (var_92, var_86)
  loc_11CEE42:   For var_96 = global_60 To (var_92 - 2): 0 = var_96 'Integer
  loc_11CEE4B:     var_98 = var_86
  loc_11CEE56:     If Not (var_98 = CInt(3)) Then
  loc_11CEE61:       If Not (var_98 = CInt(4)) Then
  loc_11CEE6C:         If Not (var_98 = CInt(5)) Then
  loc_11CEE77:           If Not (var_98 = CInt(6)) Then
  loc_11CEE82:             If Not (var_98 = CInt(7)) Then
  loc_11CEE8D:               If Not (var_98 = CInt(8)) Then
  loc_11CEE98:                 If Not (var_98 = CInt(9)) Then
  loc_11CEEA3:                   If Not (var_98 = CInt(&HA)) Then
  loc_11CEEAE:                     If Not (var_98 = CInt(&HB)) Then
  loc_11CEEB9:                       If Not (var_98 = CInt(&HC)) Then
  loc_11CEEC4:                         If Not (var_98 = CInt(&H23)) Then
  loc_11CEECF:                           If (var_98 = CInt(&H21)) Then
  loc_11CEED2:                           End If
  loc_11CEED2:                         End If
  loc_11CEED2:                       End If
  loc_11CEED2:                     End If
  loc_11CEED2:                   End If
  loc_11CEED2:                 End If
  loc_11CEED2:               End If
  loc_11CEED2:             End If
  loc_11CEED2:           End If
  loc_11CEED2:         End If
  loc_11CEED2:       End If
  loc_11CEED5:     Else
  loc_11CEEE1:       Set var_90 = Me.txt
  loc_11CEEE7:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (var_86, var_9C, 0)
  loc_11CEEEF:       var_9C.Enabled = var_98
  loc_11CEEFB:     End If
  loc_11CEEFE:   Next var_96 'Integer
  loc_11CEF10:   Set var_90 = Me.Txt1
  loc_11CEF16:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H20), var_9C)
  loc_11CEF1E:   var_9C.Enabled = False
  loc_11CEF2A: End If
  loc_11CEF37: Set var_90 = Me.txt
  loc_11CEF3D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_9C)
  loc_11CEF45: var_9C.Enabled = False
  loc_11CEF5F: Set var_90 = Me.txt
  loc_11CEF65: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_9C)
  loc_11CEF6D: var_8C = var_9C.Text
  loc_11CEF89: Set var_A0 = Me.txt
  loc_11CEF8F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_A4)
  loc_11CEFB9: If Not(((CDate(var_8C) >= MemVar_1F950F4) And (CDate(var_A4.Text) <= MemVar_1F950FC))) Then
  loc_11CEFC9:   Set var_90 = Me.txt
  loc_11CEFCF:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_9C)
  loc_11CEFD7:   var_9C.Enabled = False
  loc_11CEFE3: End If
  loc_11CEFFA: If (Me.RecordCount > 0) Then
  loc_11CF003:   Me.MoveFirst
  loc_11CF027:   Set var_90 = Me.txt
  loc_11CF02D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_9C, var_8C, "Code='")
  loc_11CF035:   0 = var_9C.Tag
  loc_11CF04E:   Me.Find 1 & var_8C & "'", var_C0, 
  loc_11CF08C:   If ((Me.BOF = &HFF) Or (Me.EOF = &HFF)) Then
  loc_11CF09C:     Set var_90 = Me.txt
  loc_11CF0A2:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_9C)
  loc_11CF0AA:     var_9C.Enabled = True
  loc_11CF0B9:   Else
  loc_11CF0C6:     Set var_90 = Me.txt
  loc_11CF0CC:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_9C)
  loc_11CF0D4:     var_9C.Enabled = False
  loc_11CF0E0:   End If
  loc_11CF0E0: End If
  loc_11CF0ED: Set var_90 = Me.txt
  loc_11CF0F3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H20), var_9C)
  loc_11CF115: Set var_90 = Me.txt
  loc_11CF11B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_9C)
  loc_11CF135: If (False = &HFF) Then
  loc_11CF143:   Set var_90 = Me.txt
  loc_11CF149:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1))
  loc_11CF151:   var_9C.SetFocus
  loc_11CF15D: End If
  loc_11CF15D: var_C0 = vbNullString
  loc_11CF167: Set var_90 = Me.FGrid
  loc_11CF191: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CF199: var_F4 = CVar(CLng(4)) 'Long
  loc_11CF19E: var_114 = "00:00"
  loc_11CF1A8: Set var_9C = Me.FGrid
  loc_11CF1AE: LateIdCallSt
  loc_11CF1D9: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CF1E1: var_F4 = CVar(CLng(6)) 'Long
  loc_11CF1E6: var_114 = "00:00"
  loc_11CF1F0: Set var_9C = Me.FGrid
  loc_11CF1F6: LateIdCallSt
  loc_11CF215: Me.LblUser.Caption = vbNullString
  loc_11CF22A: Me.LblLDt.Caption = vbNullString
  loc_11CF232: Exit Sub
  loc_11CF233: ' Referenced from: 11CEDE2
  loc_11CF233: Proc_6_60_E63754(var_9C, var_114, var_F4, var_C0, var_9C, var_114)
  loc_11CF238: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B660
  'Data Table: 5727EC
  loc_E1B655: Me.Global.Unload Me
  loc_E1B65D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEEA0C
  'Data Table: 5727EC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  loc_EEE967: If (Me.RecordCount <= 0) Then
  loc_EEE970:   var_B8 = "Information"
  loc_EEE98B:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEE99B:   Exit Sub
  loc_EEE99C: End If
  loc_EEE9A3: var_10C = "SELECT hallbook.Docid as SearchCode,HallBook.VNo, Convert(Varchar(11),HallBook.Vdate,100) as VDate, HallBook.VTime,convert(Varchar(11),V.FromDate,100) As Func_Date, HallBook.PartyName, HallBook.Add1, HallBook.City, HallBook.ContactNo_Res, FunctionType.Name" & " FROM ((HallBook INNER JOIN FunctionType ON HallBook.Func_Name = FunctionType.Code) LEFT JOIN MarketSeg ON HallBook.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON HallBook.BussSource = BussSource.Code Left JOIN VenueOcc V ON HallBook.Docid = V.FPDocid WHERE HallBook.LogSite_Code='"
  loc_EEE9D7: MemVar_1F95120 = Me
  loc_EEE9E4: Proc_6_126_F1C850("600,1150,700,1150,2200,2000,1700,2000,2000,2000")
  loc_EEE9FF: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEEA04: Exit Sub
  loc_EEEA05: Proc_6_60_E63754("600,1150,700,1150,2200,2000,1700,2000,2000,2000" & MemVar_1F95078 & "' And HallBook.Vtype='" & global_104 & "' order by HallBook.DocId,V.FromDate")
  loc_EEEA0A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E37148
  'Data Table: 5727EC
  loc_E37138: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37140: Call Proc_123_73_16C493C(global_60)
  loc_E37145: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37208
  'Data Table: 5727EC
  loc_E371F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37200: Call Proc_123_73_16C493C(global_60)
  loc_E37205: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E373E8
  'Data Table: 5727EC
  loc_E373D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E373E0: Call Proc_123_73_16C493C(global_60)
  loc_E373E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E374A8
  'Data Table: 5727EC
  loc_E37498: Proc_5_0_1107AD0(&HFF, Me)
  loc_E374A0: Call Proc_123_73_16C493C(global_60)
  loc_E374A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '162F7A4
  'Data Table: 5727EC
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D4 As String
  Dim var_DC As Variant
  Dim unk_572803 As Connection15
  Dim var_118 As Variant
  Dim var_F8 As Variant
  Dim var_128 As Variant
  Dim var_9C As Recordset15
  Dim var_C4 As Recordset15
  Dim var_D8 As Fields15
  Dim var_108 As Variant
  Dim var_148 As Variant
  Dim var_AC As Double
  Dim var_C0 As Recordset15
  Dim var_138 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_152 As Integer
  Dim var_BC As Recordset15
  Dim var_150 As Variant
  Dim var_1BC As Variant
  Dim var_194 As Variant
  Dim var_1C0 As Field20
  Dim var_C8 As Recordset15
  loc_162E27C: On Error Goto loc_162F79E
  loc_162E286: var_CC = "Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,HB1.TaxPer AS LineTaxPer,HB1.TaxAmt, " & "HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,HB1.Remarks,HB1.Total As LineTotal,I.name As IName,ItemGrp.Name As ItemGrpName "
  loc_162E294: var_D4 = var_CC & "From ((HallBook HB INNER Join HallBook1 HB1 on HB.DocID=HB1.DocID) " & "INNER Join ItemMast I on HB1.Item=I.Code And HB1.RestCode = I.RestCode) Inner Join ItemGrp On ItemGrp.Code=I.ItemGroup "
  loc_162E2AC: Set var_D8 = Me.txt
  loc_162E2B2: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC)
  loc_162E2CA: var_88 = var_D4 & "Where HB.DocID='" & var_DC.Text & "'"
  loc_162E2EB: If (var_88 = vbNullString) Then
  loc_162E2EE:   Exit Sub
  loc_162E2EF: End If
  loc_162E305: unk_572803.Execute var_88, var_108, -1
  loc_162E336: Proc_6_17_EAAE40(var_108, MemVar_1F95078, "Select * From Enviro Where LogSite_Code=", var_148)
  loc_162E33E: var_128 = -1 & var_108 
  loc_162E34C: unk_572803.Execute CStr(var_128), var_D8, var_D8
  loc_162E357: Set var_C8 = var_D8
  loc_162E37D: If (var_D8.RecordCount <= 0) Then
  loc_162E387:   var_CC = "Select HB.*,0 As SNo,'' As Item,0 As QtyIss,0 As Rate,0 As LineAmt,'' As Unit,0 AS LineTaxPer,0 As TaxAmt, " & "0 As LineDiscP,0 as LineDiscA,'' As Remarks,0 As LineTotal,'' As IName,'' As ItemGrpName "
  loc_162E39F:   Set var_D8 = Me.txt
  loc_162E3A5:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC)
  loc_162E3BD:   var_88 = var_CC & "From HallBook HB Where HB.DocID='" & var_DC.Text & "'"
  loc_162E3D2: End If
  loc_162E3F0: Set var_D8 = Me.txt
  loc_162E3F6: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC, var_CC, "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_162E3FE: var_108 = var_DC.Text
  loc_162E407: var_D0 = -1 & var_CC
  loc_162E417: unk_572803.Execute var_DC.Text & "'", var_150, 
  loc_162E422: Set var_BC = var_150
  loc_162E458: Set var_D8 = Me.txt
  loc_162E45E: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC, var_CC, "Select AmtCr-AmtDr Adv,PayType,VNo,VDate FROM PayChargeH Where VType In ('AD','AR') AND ContraDocId='")
  loc_162E466: var_108 = var_DC.Text
  loc_162E46F: var_D0 = -1 & var_CC
  loc_162E47F: unk_572803.Execute var_DC.Text & "'", var_150, 
  loc_162E48A: Set var_C4 = var_150
  loc_162E4B6: If (var_C4.RecordCount > 0) Then
  loc_162E4E1:   var_B4 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("VNo")))
  loc_162E519:   var_B8 = "& " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("VDate")))
  loc_162E552:   Proc_6_47_EF6560(var_128, CVar(var_C4.Fields.Item("Adv")))
  loc_162E55A:   var_148 = (CVar(var_AC) + var_128)
  loc_162E55F:   var_AC = CSng(var_148)
  loc_162E596:   var_B0 = Proc_6_38_E69628(CVar(var_C4.Fields.Item("PayType")))
  loc_162E5A2:   var_C4.MoveNext
  loc_162E5A7:   ' Referenced from: 162E718
  loc_162E5B6:   If Not(var_C4.EOF) Then
  loc_162E5E6:     Proc_6_47_EF6560(var_128, CVar(var_C4.Fields.Item("Adv")))
  loc_162E5EE:     var_148 = (CVar(var_AC) + var_128)
  loc_162E5F3:     var_AC = CSng(var_148)
  loc_162E63B:     If (var_AC <> Proc_6_38_E69628(CVar(var_C4.Fields.Item("PayType")), var_B0)) Then
  loc_162E674:       var_B0 = var_AC & Proc_6_38_E69628(CVar(var_C4.Fields.Item("PayType")), var_B0 & ", ")
  loc_162E6BA:       var_B4 = var_B4 & ", " & Proc_6_38_E69628(CVar(var_C4.Fields.Item("VNo")))
  loc_162E6D1:       var_CC = var_B8 & ", "
  loc_162E6EB:       var_DC = var_C4.Fields.Item("VDate")
  loc_162E700:       var_B8 = var_CC & Proc_6_38_E69628(CVar(var_DC))
  loc_162E710:     End If
  loc_162E713:     var_C4.MoveNext
  loc_162E718:     GoTo loc_162E5A7
  loc_162E71B:   End If
  loc_162E71E: Else
  loc_162E727:   var_AC = 0
  loc_162E72D:   var_B0 = vbNullString
  loc_162E730: End If
  loc_162E74E: Set var_D8 = Me.txt
  loc_162E754: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H22), var_DC, var_CC, "Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='")
  loc_162E75C: var_108 = var_DC.Text
  loc_162E765: var_D0 = -1 & var_CC
  loc_162E775: unk_572803.Execute Proc_6_38_E69628(CVar(var_DC)) & "'", var_150, var_AC
  loc_162E780: Set var_C0 = var_150
  loc_162E7AC: If (var_C0.RecordCount > 0) Then
  loc_162E7AF:   ' Referenced from: 162E84A
  loc_162E7BE:   If Not(var_C0.EOF) Then
  loc_162E7D7:     var_108 = vbNullString
  loc_162E7EC:     var_148 = IIf((var_A4 = vbNullString), var_108, ",")
  loc_162E7F4:     var_174 = CVar(var_A4) & var_148 
  loc_162E80A:     var_D8 = var_C0.Fields
  loc_162E812:     var_DC = var_D8.Item("VenuName")
  loc_162E827:     var_A4 = CStr(var_174 & var_DC.Value)
  loc_162E845:     var_C0.MoveNext
  loc_162E84A:     GoTo loc_162E7AF
  loc_162E84D:   End If
  loc_162E84D: End If
  loc_162E855: If (var_88 = vbNullString) Then
  loc_162E858:   Exit Sub
  loc_162E859: End If
  loc_162E86F: unk_572803.Execute var_88, var_108, -1
  loc_162E87A: Set var_9C = var_D8
  loc_162E889: var_14C = var_9C.RecordCount
  loc_162E897: If (var_14C <= 0) Then
  loc_162E8A0:   Call 0.Method_arg_50 (var_CC)
  loc_162E8C1:   MsgBox("** No Records Found to Print **", &H40, CVar(var_CC), var_148, var_174)
  loc_162E8D1:   Exit Sub
  loc_162E8D2: End If
  loc_162E8E8: Set var_D8 = var_9C 
  loc_162E8F4: var_152 = CreateFieldDefFile(var_D8, MemVar_1F950B4 & "\FuncProspect.ttx")
  loc_162E8FE: Set var_9C = var_D8
  loc_162E904: var_F8 = CVar(var_152) 'Integer
  loc_162E907: var_98 = var_F8 'Variant
  loc_162E923: var_CC = MemVar_1F950B4 & "\FuncProspect.RPT"
  loc_162E92C: Call 0.Method_arg_1C (var_CC, var_F8, var_D8)
  loc_162E937: MemVar_1F951E8 = var_D8
  loc_162E952: Call 0.Method_arg_90 (var_D8, var_14C, var_9E, 1)
  loc_162E95A: Call 0.Method_arg_24 (var_152, &HFF)
  loc_162E966: For var_1A8 =  To CInt(var_14C): var_D8 = var_1A8 'Integer
  loc_162E97F:   Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162E987:   Call 0.Method_arg_20 (var_DC)
  loc_162E98F:   Call 0.Method_arg_30 (var_CC)
  loc_162E9A5:   var_1B8 = Ucase(CVar(var_CC)) 'Variant
  loc_162E9BE:   If (var_1B8 = "FDATE") Then
  loc_162EA17:     Call 0.Method_arg_90 (var_150, CLng(var_9E))
  loc_162EA1F:     Call 0.Method_arg_20 (var_1BC)
  loc_162EA27:     Call 0.Method_arg_38 (CStr("'" & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & "'"))
  loc_162EA46:   Else
  loc_162EA51:     If (var_1B8 = "FTIME") Then
  loc_162EA6B:       var_D8 = var_BC.Fields
  loc_162EA73:       var_DC = var_D8.Item("FromTime")
  loc_162EA87:       var_138 = " - "
  loc_162EAA2:       var_150 = var_BC.Fields
  loc_162EAAA:       var_1BC = var_150.Item("ToTime")
  loc_162EAB2:       var_174 = var_1BC.Value
  loc_162EABA:       var_194 = "'" & var_DC.Value & CDate(CDate(var_BC.Fields.Item("FromDate").Value)) & var_174 
  loc_162EADB:       Call 0.Method_arg_90 (var_1C0, CLng(var_9E))
  loc_162EAE3:       Call 0.Method_arg_20 (var_1C4)
  loc_162EAEB:       Call 0.Method_arg_38 (CStr(var_194 & "'"))
  loc_162EB14:     Else
  loc_162EB1F:       If (var_1B8 = "VENUENAME") Then
  loc_162EB43:         Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162EB4B:         Call 0.Method_arg_20 (var_DC)
  loc_162EB53:         Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_162EB69:       Else
  loc_162EB74:         If (var_1B8 = "TITLE") Then
  loc_162EB8A:           Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162EB92:           Call 0.Method_arg_20 (var_DC)
  loc_162EB9A:           Call 0.Method_arg_38 ("'FUNCTION PROSPECTUS'")
  loc_162EBA9:         Else
  loc_162EBB4:           If (var_1B8 = "FDAY") Then
  loc_162EC19:             Call 0.Method_arg_90 (var_150, CLng(var_9E))
  loc_162EC21:             Call 0.Method_arg_20 (var_1BC)
  loc_162EC29:             Call 0.Method_arg_38 ("'" & WeekdayName(CLng(Weekday(CVar(var_BC.Fields.Item("FromDate")), 1)), 0, 0) & "'")
  loc_162EC4A:           Else
  loc_162EC6C:             If (var_1B8 = Ucase("FunctionName")) Then
  loc_162EC7A:               var_184 = 0
  loc_162EC90:               var_118 = "SELECT Name FROM FunctionType WHERE Code='"
  loc_162ECA7:               var_D8 = var_9C.Fields
  loc_162ECAF:               var_DC = var_D8.Item("Func_Name")
  loc_162ECC3:               var_138 = "'"
  loc_162ECC8:               var_148 = var_118 & var_DC.Value & var_138 
  loc_162ECD6:               unk_572803.Execute CStr(var_148), var_174, -1
  loc_162ECDE:               var_150 = var_150.Fields
  loc_162ECE6:               var_184 = var_1BC.Item(var_1BC)
  loc_162ECEE:               var_1C0 = var_1C0.Value
  loc_162ED17:               Call 0.Method_arg_90 (var_1C4, CLng(var_9E), var_1F8)
  loc_162ED1F:               Call 0.Method_arg_20 (CStr(var_194 & var_194 & "'"))
  loc_162ED27:               Call 0.Method_arg_38 ("'")
  loc_162ED58:             Else
  loc_162ED7A:               If (var_1B8 = Ucase("Advance")) Then
  loc_162EDA3:                 Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162EDAB:                 Call 0.Method_arg_20 (var_DC)
  loc_162EDB3:                 Call 0.Method_arg_38 ("'" & CStr(var_AC) & "'")
  loc_162EDCB:               Else
  loc_162EDED:                 If (var_1B8 = Ucase("PayType")) Then
  loc_162EE11:                   Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162EE19:                   Call 0.Method_arg_20 (var_DC)
  loc_162EE21:                   Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_162EE37:                 Else
  loc_162EE59:                   If (var_1B8 = Ucase("aVNo")) Then
  loc_162EE7D:                     Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162EE85:                     Call 0.Method_arg_20 (var_DC)
  loc_162EE8D:                     Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_162EEA3:                   Else
  loc_162EEC5:                     If (var_1B8 = Ucase("aVDate")) Then
  loc_162EECF:                       var_CC = "'" & var_B8
  loc_162EEE9:                       Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162EEF1:                       Call 0.Method_arg_20 (var_DC)
  loc_162EEF9:                       Call 0.Method_arg_38 (var_CC & "'")
  loc_162EF0C:                     End If
  loc_162EF0C:                   End If
  loc_162EF0C:                 End If
  loc_162EF0C:               End If
  loc_162EF0C:             End If
  loc_162EF0C:           End If
  loc_162EF0C:         End If
  loc_162EF0C:       End If
  loc_162EF0C:     End If
  loc_162EF0C:   End If
  loc_162EF0F: Next var_1A8 'Integer
  loc_162EF1A: var_14C = var_C8.RecordCount
  loc_162EF28: If (var_14C > 0) Then
  loc_162EF2E:   var_C8.MoveFirst
  loc_162EF44:   Call 0.Method_arg_90 (var_D8, var_14C)
  loc_162EF4C:   Call 0.Method_arg_24 (var_9E)
  loc_162EF58:   For var_1FC =  To CInt(var_14C): 1 = var_1FC 'Integer
  loc_162EF71:     Call 0.Method_arg_90 (var_D8, CLng(var_9E))
  loc_162EF79:     Call 0.Method_arg_20 (var_DC)
  loc_162EF81:     Call 0.Method_arg_30 (var_CC)
  loc_162EF97:     var_20C = Ucase(CVar(var_CC)) 'Variant
  loc_162EFC7:     If (var_20C = Ucase("Instruction1")) Then
  loc_162EFF8:       Proc_6_17_EAAE40(var_148)
  loc_162F014:       Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F01C:       Call 0.Method_arg_20 (CStr(var_148))
  loc_162F024:       Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction1")))))
  loc_162F041:     Else
  loc_162F063:       If (var_20C = Ucase("Instruction2")) Then
  loc_162F094:         Proc_6_17_EAAE40(var_148)
  loc_162F0B0:         Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F0B8:         Call 0.Method_arg_20 (CStr(var_148))
  loc_162F0C0:         Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction2")))))
  loc_162F0DD:       Else
  loc_162F0FF:         If (var_20C = Ucase("Instruction3")) Then
  loc_162F130:           Proc_6_17_EAAE40(var_148)
  loc_162F14C:           Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F154:           Call 0.Method_arg_20 (CStr(var_148))
  loc_162F15C:           Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction3")))))
  loc_162F179:         Else
  loc_162F19B:           If (var_20C = Ucase("Instruction4")) Then
  loc_162F1CC:             Proc_6_17_EAAE40(var_148)
  loc_162F1E8:             Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F1F0:             Call 0.Method_arg_20 (CStr(var_148))
  loc_162F1F8:             Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction4")))))
  loc_162F215:           Else
  loc_162F237:             If (var_20C = Ucase("Instruction5")) Then
  loc_162F268:               Proc_6_17_EAAE40(var_148)
  loc_162F284:               Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F28C:               Call 0.Method_arg_20 (CStr(var_148))
  loc_162F294:               Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction5")))))
  loc_162F2B1:             Else
  loc_162F2D3:               If (var_20C = Ucase("Instruction6")) Then
  loc_162F304:                 Proc_6_17_EAAE40(var_148)
  loc_162F320:                 Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F328:                 Call 0.Method_arg_20 (CStr(var_148))
  loc_162F330:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction6")))))
  loc_162F34D:               Else
  loc_162F36F:                 If (var_20C = Ucase("Instruction7")) Then
  loc_162F3A0:                   Proc_6_17_EAAE40(var_148)
  loc_162F3BC:                   Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F3C4:                   Call 0.Method_arg_20 (CStr(var_148))
  loc_162F3CC:                   Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction7")))))
  loc_162F3E9:                 Else
  loc_162F40B:                   If (var_20C = Ucase("Instruction8")) Then
  loc_162F43C:                     Proc_6_17_EAAE40(var_148)
  loc_162F458:                     Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F460:                     Call 0.Method_arg_20 (CStr(var_148))
  loc_162F468:                     Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction8")))))
  loc_162F485:                   Else
  loc_162F4A7:                     If (var_20C = Ucase("Instruction9")) Then
  loc_162F4D8:                       Proc_6_17_EAAE40(var_148)
  loc_162F4F4:                       Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F4FC:                       Call 0.Method_arg_20 (CStr(var_148))
  loc_162F504:                       Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction9")))))
  loc_162F521:                     Else
  loc_162F543:                       If (var_20C = Ucase("Instruction10")) Then
  loc_162F574:                         Proc_6_17_EAAE40(var_148)
  loc_162F590:                         Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F598:                         Call 0.Method_arg_20 (CStr(var_148))
  loc_162F5A0:                         Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction10")))))
  loc_162F5BD:                       Else
  loc_162F5DF:                         If (var_20C = Ucase("Instruction11")) Then
  loc_162F610:                           Proc_6_17_EAAE40(var_148)
  loc_162F62C:                           Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F634:                           Call 0.Method_arg_20 (CStr(var_148))
  loc_162F63C:                           Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("FPInstruction11")))))
  loc_162F659:                         Else
  loc_162F67B:                           If (var_20C = Ucase("Instruction12")) Then
  loc_162F68D:                             var_D8 = var_C8.Fields
  loc_162F6AC:                             Proc_6_17_EAAE40(var_148)
  loc_162F6B4:                             var_CC = CStr(var_148)
  loc_162F6C8:                             Call 0.Method_arg_90 (var_150, CLng(var_9E), var_1BC)
  loc_162F6D0:                             Call 0.Method_arg_20 (var_CC)
  loc_162F6D8:                             Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_D8.Item("FPInstruction12")))))
  loc_162F6F2:                           End If
  loc_162F6F2:                         End If
  loc_162F6F2:                       End If
  loc_162F6F2:                     End If
  loc_162F6F2:                   End If
  loc_162F6F2:                 End If
  loc_162F6F2:               End If
  loc_162F6F2:             End If
  loc_162F6F2:           End If
  loc_162F6F2:         End If
  loc_162F6F2:       End If
  loc_162F6F2:     End If
  loc_162F6F5:   Next var_1FC 'Integer
  loc_162F6FA: End If
  loc_162F713: Call 0.Method_arg_64 (var_D8, CVar(var_9C))
  loc_162F71B: Call 0.Method_arg_2C (var_118)
  loc_162F729: Call 0.Method_arg_150 (var_138)
  loc_162F734: Call 0.Method_arg_50 (var_CC)
  loc_162F73E: Set var_DC = Nothing
  loc_162F758: Set var_D8 = MemVar_1F951E8 
  loc_162F764: Proc_6_99_1484404(var_D8, 0, var_CC)
  loc_162F76F: MemVar_1F951E8 = var_D8
  loc_162F782: Set var_9C = Nothing
  loc_162F78A: Set var_BC = Nothing
  loc_162F792: Set var_C0 = Nothing
  loc_162F79A: Set var_C4 = Nothing
  loc_162F79D: Exit Sub
  loc_162F79E: ' Referenced from: 162E27C
  loc_162F79E: Proc_6_60_E63754(&HFF)
  loc_162F7A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E731A4
  'Data Table: 5727EC
  Dim Me As Recordset15
  loc_E7314B: Me.Requery -1
  loc_E7315B: Me.Requery -1
  loc_E7316B: Me.Requery -1
  loc_E7317B: Me.Requery -1
  loc_E7318B: Me.Requery -1
  loc_E7319B: Me.Requery -1
  loc_E731A0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1924350
  'Data Table: 5727EC
  Dim var_B4 As Variant
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_140 As Variant
  Dim var_14C As Double
  Dim var_11C As Variant
  Dim var_B0 As Variant
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_144 As String
  Dim var_168 As String
  Dim unk_572803 As Connection15
  Dim var_B8 As Variant
  Dim var_16C As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_174 As String
  Dim var_178 As String
  Dim var_184 As String
  Dim var_17C As Variant
  Dim var_190 As TextBox
  Dim var_1A4 As Variant
  Dim var_1C0 As String
  Dim var_1B8 As TextBox
  Dim var_1CC As TextBox
  Dim var_1E0 As Variant
  Dim var_1F4 As Variant
  Dim var_200 As String
  Dim var_208 As Variant
  Dim var_21C As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_240 As Variant
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_18C As Variant
  Dim var_1A0 As Variant
  Dim var_1B4 As TextBox
  Dim var_1C8 As TextBox
  Dim var_1DC As Variant
  Dim var_1F0 As Variant
  Dim var_204 As Variant
  Dim var_218 As Variant
  Dim var_22C As Variant
  Dim var_244 As Variant
  Dim var_294 As Variant
  Dim var_60C As Variant
  Dim var_654 As Variant
  Dim var_69C As TextBox
  Dim var_6E4 As TextBox
  Dim var_72C As Variant
  Dim var_774 As TextBox
  Dim var_7BC As TextBox
  Dim var_804 As TextBox
  Dim var_84C As TextBox
  Dim var_894 As TextBox
  Dim var_8DC As TextBox
  Dim var_928 As TextBox
  Dim var_974 As TextBox
  Dim var_9C0 As TextBox
  Dim var_E5C As Double
  Dim var_A0C As TextBox
  Dim var_E64 As Double
  Dim var_A58 As TextBox
  Dim var_E6C As Double
  Dim var_C1C As TextBox
  Dim var_C68 As TextBox
  Dim var_CB4 As TextBox
  Dim var_D00 As TextBox
  Dim var_D4C As TextBox
  Dim var_180 As String
  Dim var_290 As Variant
  Dim var_2A4 As Variant
  Dim var_2D4 As Variant
  Dim var_344 As Variant
  Dim var_374 As Variant
  Dim var_384 As Variant
  Dim var_404 As Variant
  Dim var_434 As Variant
  Dim var_444 As Variant
  Dim var_4A4 As Variant
  Dim var_4D4 As Variant
  Dim var_4E4 As Variant
  Dim var_4F4 As Variant
  Dim var_574 As Variant
  Dim var_5A4 As Variant
  Dim var_62C As Variant
  Dim var_74C As Variant
  Dim var_86C As Variant
  Dim var_998 As Variant
  Dim var_ADC As Variant
  Dim var_C40 As Variant
  Dim var_D90 As Variant
  Dim var_A4 As Recordset15
  Dim var_230 As Field20
  Dim var_608 As Field20
  Dim var_650 As Field20
  Dim var_698 As Field20
  Dim var_6E0 As TextBox
  Dim var_E74 As Double
  Dim var_728 As TextBox
  Dim var_E7C As Double
  Dim var_770 As Field20
  Dim var_88 As Recordset15
  loc_1921B01: global_144 = 0
  loc_1921B04: On Error Goto loc_1924335
  loc_1921B12: Set var_B0 = Me.txt
  loc_1921B18: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_1921B41: If (Proc_6_27_EA61EC(var_B4, "Voucher Date") = 0) Then
  loc_1921B44:   Exit Sub
  loc_1921B45: End If
  loc_1921B50: Set var_B0 = Me.txt
  loc_1921B56: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1921B7F: If (Proc_6_27_EA61EC(var_B4, "Voucher No") = 0) Then
  loc_1921B82:   Exit Sub
  loc_1921B83: End If
  loc_1921B8E: Set var_B0 = Me.txt
  loc_1921B94: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B4)
  loc_1921BBD: If (Proc_6_27_EA61EC(var_B4, "Party name") = 0) Then
  loc_1921BC0:   Exit Sub
  loc_1921BC1: End If
  loc_1921BCC: Set var_B0 = Me.txt
  loc_1921BD2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B4)
  loc_1921BFB: If (Proc_6_27_EA61EC(var_B4, "Mobile No.") = 0) Then
  loc_1921BFE:   Exit Sub
  loc_1921BFF: End If
  loc_1921C0D: Set var_B0 = Me.txt
  loc_1921C13: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B4)
  loc_1921C1B: var_BC = var_B4.Text
  loc_1921C34: If (Len(var_BC) <> &HA) Then
  loc_1921C3D:   Call 0.Method_arg_50 (var_BC)
  loc_1921C5E:   MsgBox("Please fill 10 Digit Mobile No.", &H10, CVar(var_BC), var_10C, var_12C)
  loc_1921C6E:   Exit Sub
  loc_1921C6F: End If
  loc_1921C7A: If (global_128 = "Yes") Then
  loc_1921C88:   Set var_B0 = Me.txt
  loc_1921C8E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_B4)
  loc_1921CB7:   If (Proc_6_27_EA61EC(var_B4, "Pan No.") = 0) Then
  loc_1921CBA:     Exit Sub
  loc_1921CBB:   End If
  loc_1921CC9:   Set var_B0 = Me.txt
  loc_1921CCF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_B4)
  loc_1921CD7:   var_BC = var_B4.Text
  loc_1921CF0:   If (Len(var_BC) <> &HA) Then
  loc_1921CF9:     Call 0.Method_arg_50 (var_BC)
  loc_1921D1A:     MsgBox("Please fill 10 Digit Pan No.", &H10, CVar(var_BC), var_10C, var_12C)
  loc_1921D2A:     Exit Sub
  loc_1921D2B:   End If
  loc_1921D2B: End If
  loc_1921D36: Set var_B0 = Me.txt
  loc_1921D3C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_B4)
  loc_1921D65: If (Proc_6_27_EA61EC(var_B4, "Function Type") = 0) Then
  loc_1921D68:   Exit Sub
  loc_1921D69: End If
  loc_1921D77: Set var_B0 = Me.txt
  loc_1921D7D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_B4)
  loc_1921DA1: If (CDbl(Val(var_B4.Text)) <= CDbl(0)) Then
  loc_1921DC5:   MsgBox("Can't leave blank to Expected Pax.", &H40, "Hall Booking...", var_10C, var_12C)
  loc_1921DE0:   Set var_B0 = Me.txt
  loc_1921DE6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_B4)
  loc_1921DEE:   var_B4.SetFocus
  loc_1921DFA:   Exit Sub
  loc_1921DFB: End If
  loc_1921E09: Set var_B0 = Me.txt
  loc_1921E0F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B4)
  loc_1921E17: var_BC = var_B4.Text
  loc_1921E33: If (CDbl(Val(var_BC)) <= CDbl(0)) Then
  loc_1921E57:   MsgBox("Can't leave blank to Gurrented Pax.", &H40, "Hall Booking...", var_10C, var_12C)
  loc_1921E72:   Set var_B0 = Me.txt
  loc_1921E78:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B4)
  loc_1921E80:   var_B4.SetFocus
  loc_1921E8C:   Exit Sub
  loc_1921E8D: End If
  loc_1921E9B: Set var_B8 = Me.txt
  loc_1921EA1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_140)
  loc_1921EB6: var_14C = Val(var_140.Text)
  loc_1921EC7: Set var_B0 = Me.txt
  loc_1921ECD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B4, var_BC)
  loc_1921EFA: If (CDbl(Val(var_BC)) > CDbl(var_B4.Text)) Then
  loc_1921F1E:   MsgBox("Gurrented Pax must be equal or less then Expected Pax.", &H40, "Hall Booking...", var_10C, var_12C)
  loc_1921F39:   Set var_B0 = Me.txt
  loc_1921F3F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B4)
  loc_1921F47:   var_B4.SetFocus
  loc_1921F53:   Exit Sub
  loc_1921F54: End If
  loc_1921F54: var_CC = 1
  loc_1921F5D: var_11C = 1
  loc_1921F81: var_10C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1921F9D: If (var_10C = vbNullString) Then
  loc_1921FAB:   var_EC = "Hall Booking..."
  loc_1921FC1:   MsgBox("Please select Venue name.", &H40, var_EC, var_10C, var_12C)
  loc_1921FD5:   Set var_B0 = Me.FGrid
  loc_1921FE6:   Exit Sub
  loc_1921FE7: End If
  loc_1921FEA: Call Proc_123_82_138EB34(var_15E, FGrid.DispID_8001, var_11C)
  loc_1921FF5: If (var_15E = 0) Then
  loc_1921FF8:   Exit Sub
  loc_1921FF9: End If
  loc_1922021: For var_162 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_AA = var_162 'Byte
  loc_192202C:   var_CC = CVar(CLng(var_AA)) 'Long
  loc_1922034:   var_11C = CVar(CLng(7)) 'Long
  loc_192205F:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1922076:     Me.FGrid.Row = CVar(CLng(var_AA))
  loc_1922083:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_192208B:     var_11C = CVar(CLng(1)) 'Long
  loc_19220B6:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_19220D2:       MsgBox("Fill Venue Name", 0, var_EC, var_10C, var_12C)
  loc_19220E6:       Set var_B0 = Me.FGrid
  loc_19220F7:       Exit Sub
  loc_19220F8:     End If
  loc_19220FD:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_1922105:     var_11C = CVar(CLng(3)) 'Long
  loc_1922130:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_192214C:       MsgBox("Fill From Date", 0, var_EC, var_10C, var_12C)
  loc_1922160:       Set var_B0 = Me.FGrid
  loc_1922171:       Exit Sub
  loc_1922172:     End If
  loc_1922177:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_192217F:     var_11C = CVar(CLng(4)) 'Long
  loc_19221AA:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_19221C6:       MsgBox("Fill Start Time", 0, var_EC, var_10C, var_12C)
  loc_19221DA:       Set var_B0 = Me.FGrid
  loc_19221EB:       Exit Sub
  loc_19221EC:     End If
  loc_19221F1:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_19221F9:     var_11C = CVar(CLng(5)) 'Long
  loc_1922224:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1922240:       MsgBox("Fill To Date", 0, var_EC, var_10C, var_12C)
  loc_1922254:       Set var_B0 = Me.FGrid
  loc_1922265:       Exit Sub
  loc_1922266:     End If
  loc_192226B:     var_CC = CVar(CLng(var_AA)) 'Long
  loc_1922273:     var_11C = CVar(CLng(6)) 'Long
  loc_192229E:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_19222B4:       var_DC = "Fill End Time"
  loc_19222BA:       MsgBox(var_DC, 0, var_EC, var_10C, var_12C)
  loc_19222CE:       Set var_B0 = Me.FGrid
  loc_19222DF:       Exit Sub
  loc_19222E0:     End If
  loc_19222E0:   End If
  loc_19222E3: Next var_162 'Byte
  loc_19222EC: Call Proc_123_74_F950B8(var_15E)
  loc_19222F7: If (var_15E = 0) Then
  loc_19222FA:   Exit Sub
  loc_19222FB: End If
  loc_1922306: Set var_B0 = Me.TxtGrid
  loc_192230C: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_B4)
  loc_1922314: var_B4.Visible = False
  loc_192232E: Set var_B0 = Me.txtMEd
  loc_1922334: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_B4)
  loc_192233C: var_B4.Visible = False
  loc_1922348: Call Proc_123_77_FB7CB8()
  loc_1922351: Set var_B0 = Me.TopCtrl1
  loc_1922357: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1922370: If (CStr() = "Add") Then
  loc_1922381:   Set var_B0 = Me.txt
  loc_1922387:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_192238F:   var_BC = var_B4.Text
  loc_19223AF:   If (Proc_6_91_EF38D0(CDate(var_BC)) = 0) Then
  loc_19223BD:     Set var_B0 = Me.txt
  loc_19223C3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_19223CB:     var_B4.SetFocus
  loc_19223D7:     Exit Sub
  loc_19223D8:   End If
  loc_1922405:   Set var_B0 = Me.txt
  loc_192240B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "Select Count(*) From HallBook Where DocID='", var_DC, -1)
  loc_1922423:   var_168 = var_140 & var_BC & "'"
  loc_192242C:   unk_572803.Execute var_168, 0, var_16C
  loc_1922434:   var_EC = var_B4.Text.Fields
  loc_192243C:    = var_140.Item(var_B4)
  loc_1922444:    = var_16C.Value
  loc_1922471:   If (var_EC > 0) Then
  loc_192247A:     Call Proc_123_79_10ECAF8(MemVar_1F95044)
  loc_192248D:     Set var_B0 = Me.txt
  loc_1922493:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4)
  loc_192249B:     var_B4.Text = var_BC
  loc_19224AA:     Exit Sub
  loc_19224AB:   End If
  loc_19224AE: Else
  loc_19224CB:   var_B4 = Me.Fields.Item("DocID")
  loc_19224DC:   var_BC = CStr(var_B4.Value)
  loc_19224E2:   global_100 = var_BC
  loc_19224F3: End If
  loc_19224F5: var_8A = &HFF
  loc_1922501: unk_572803.BeginTrans var_170
  loc_1922512: If (global_140 <> 0) Then
  loc_1922533:   Set var_B0 = Me.txt
  loc_1922539:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B4, var_BC, "Update HallBook Set PartyName='", var_290)
  loc_1922541:   -1 = var_B4.Text
  loc_1922551:   var_174 = var_294 & var_BC & "',Add1='"
  loc_1922562:   Set var_B8 = Me.txt
  loc_1922568:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_140, var_168)
  loc_1922570:   var_174 = var_140.Text
  loc_1922580:   var_184 = var_8A & var_168 & "',Add2='"
  loc_1922591:   Set var_16C = Me.txt
  loc_1922597:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_17C, var_180)
  loc_192259F:   var_184 = var_17C.Text
  loc_19225C0:   Set var_18C = Me.txt
  loc_19225C6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_190)
  loc_19225EF:   Set var_1A0 = Me.txt
  loc_19225F5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1A4)
  loc_192260D:   var_1C0 = var_BC & var_180 & "',City='" & var_190.Text & "',PinCode='" & var_1A4.Text & "',PanNo='"
  loc_192261E:   Set var_1B4 = Me.txt
  loc_1922624:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_1B8)
  loc_192262C:   var_1BC = var_1B8.Text
  loc_192264D:   Set var_1C8 = Me.txt
  loc_1922653:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1CC)
  loc_192267C:   Set var_1DC = Me.txt
  loc_1922682:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1E0)
  loc_19226AB:   Set var_1F0 = Me.txt
  loc_19226B1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1F4)
  loc_19226C2:   var_200 = var_1C0 & var_1BC & "',ContactNo_Res='" & var_1CC.Text & "',ContactNo_Off='" & var_1E0.Text & "',MobileNo='" & var_1F4.Text
  loc_19226DA:   Set var_204 = Me.txt
  loc_19226E0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_208)
  loc_1922709:   Set var_218 = Me.txt
  loc_192270F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_21C)
  loc_1922735:   Set var_22C = Me.txt
  loc_192273B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_230)
  loc_192274A:   Proc_6_17_EAAE40(var_EC, CVar(var_230))
  loc_192275B:   var_240 = CVar(var_200 & "',CompanyCode='" & var_208.Tag & "',BookingAgent='" & var_21C.Tag & "',Remark=") & var_EC & " Where DocID='" 
  loc_192276D:   Set var_244 = Me.txt
  loc_1922773:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_248)
  loc_192279D:   unk_572803.Execute CStr(var_240 & CVar(var_248.Text) & "'"), , 
  loc_1922836: Else
  loc_1922854:   Set var_B0 = Me.txt
  loc_192285A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "Select * From HallBook Where DocID='")
  loc_1922862:   var_DC = var_B4.Text
  loc_192286B:   var_144 = -1 & var_BC
  loc_192287B:   unk_572803.Execute var_294 & var_BC & "'", var_B8, 
  loc_1922886:   Set var_A4 = var_B8
  loc_19228BC:   Set var_B0 = Me.txt
  loc_19228C2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "Delete From HallBook Where DocID='")
  loc_19228CA:   var_DC = var_B4.Text
  loc_19228D3:   var_144 = -1 & var_BC
  loc_19228E3:   unk_572803.Execute var_294 & var_BC & "'", var_B8, 
  loc_192290B:   Set var_B0 = Me.txt
  loc_1922911:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4)
  loc_192292C:   Set var_B8 = Me.txt
  loc_1922932:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_140)
  loc_1922955:   Set var_16C = Me.txt
  loc_192295B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_17C)
  loc_1922963:   var_DC = CVar(var_17C) 'Address
  loc_192296A:   Proc_6_7_F26918(var_EC, var_DC)
  loc_19229B7:   Set var_190 = Me.txt
  loc_19229BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A0, var_1BC)
  loc_19229C5:   1 = var_1A0.Text
  loc_19229D8:   Set var_1A4 = Me.txt
  loc_19229DE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1C0)
  loc_19229E6:   1 = var_1B4.Text
  loc_19229F9:   Set var_1B8 = Me.txt
  loc_19229FF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1C8)
  loc_1922A1A:   Set var_1CC = Me.txt
  loc_1922A20:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1DC)
  loc_1922A3B:   Set var_1E0 = Me.txt
  loc_1922A41:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1F0)
  loc_1922A5C:   Set var_1F4 = Me.txt
  loc_1922A62:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_204)
  loc_1922A7D:   Set var_208 = Me.txt
  loc_1922A83:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_218)
  loc_1922A9E:   Set var_21C = Me.txt
  loc_1922AA4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_22C)
  loc_1922ABF:   Set var_230 = Me.txt
  loc_1922AC5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_244)
  loc_1922AE0:   Set var_248 = Me.txt
  loc_1922AE6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_294)
  loc_1922B01:   Set var_608 = Me.txt
  loc_1922B07:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_60C)
  loc_1922B22:   Set var_650 = Me.txt
  loc_1922B28:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_654)
  loc_1922B43:   Set var_698 = Me.txt
  loc_1922B49:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_69C)
  loc_1922B64:   Set var_6E0 = Me.txt
  loc_1922B6A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_6E4)
  loc_1922B85:   Set var_728 = Me.txt
  loc_1922B8B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_72C)
  loc_1922BA6:   Set var_770 = Me.txt
  loc_1922BAC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_774)
  loc_1922BC7:   Set var_7B8 = Me.txt
  loc_1922BCD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_7BC)
  loc_1922BE8:   Set var_800 = Me.txt
  loc_1922BEE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_804)
  loc_1922C09:   Set var_848 = Me.txt
  loc_1922C0F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_84C)
  loc_1922C2A:   Set var_890 = Me.txt
  loc_1922C30:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_894)
  loc_1922C4B:   Set var_8D8 = Me.txt
  loc_1922C51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_8DC)
  loc_1922C6C:   Set var_924 = Me.txt
  loc_1922C72:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_928)
  loc_1922C8D:   Set var_970 = Me.Txt1
  loc_1922C93:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_974)
  loc_1922CAE:   Set var_9BC = Me.txt
  loc_1922CB4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_9C0)
  loc_1922CC9:   var_E5C = Val(var_9C0.Text)
  loc_1922CDA:   Set var_A08 = Me.txt
  loc_1922CE0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_A0C, var_A10)
  loc_1922CF5:   var_E64 = Val(var_A10)
  loc_1922D06:   Set var_A54 = Me.txt
  loc_1922D0C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_A58, var_A5C)
  loc_1922D21:   var_E6C = Val(var_A5C)
  loc_1922D2F:   Proc_6_7_F26918(var_B3C, MemVar_1F950EC)
  loc_1922D38:   Set var_B70 = Me.TopCtrl1
  loc_1922D3E:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_E6C)
  loc_1922D83:   Set var_C18 = Me.txt
  loc_1922D89:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_C1C)
  loc_1922DA4:   Set var_C64 = Me.txt
  loc_1922DAA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_C68)
  loc_1922DC5:   Set var_CB0 = Me.txt
  loc_1922DCB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_CB4)
  loc_1922DE6:   Set var_CFC = Me.txt
  loc_1922DEC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_D00)
  loc_1922E07:   Set var_D48 = Me.txt
  loc_1922E0D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_D4C)
  loc_1922E25:   Set var_DD4 = Me.txt
  loc_1922E2B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_DD8)
  loc_1922E3A:   Proc_6_17_EAAE40(var_DF8, CVar(var_DD8))
  loc_1922E53:   var_BC = "Insert Into HallBook(" & "Docid,VNo,VDate,VType,VPrefix,VTime,Site_Code, "
  loc_1922E5A:   var_144 = var_BC & "PartyName,Add1,Add2,City,PinCode,PanNo,ContactNo_Res,ContactNo_Off,MobileNo,Func_Name, "
  loc_1922E61:   var_168 = var_144 & "MenuSpl1,MenuSpl2, "
  loc_1922E68:   var_174 = var_168 & "MenuSpl3,MenuSpl4,MenuSpl5,MenuSpl6,MenuSpl7,HouseKeep,FrontOff,Engg,Security,Chef,Board,ExpAtt, "
  loc_1922E6F:   var_178 = var_174 & "GuarAtt,CoverRate,RestCode,U_Name, U_EntDt, U_AE,MarketSeg,BussSource,CompanyCode,BookingAgent,InquiryCode,LogSite_Code,Remark) "
  loc_1922E76:   var_180 = var_178 & " Values("
  loc_1922EA8:   var_CC = ",'"
  loc_1922EC3:   var_26C = CVar(var_180 & "'" & var_B4.Text & "'," & CStr(Val(var_140.Text)) & ",") & var_EC & var_CC & CVar(global_104) & "','" 
  loc_1922F0F:   var_384 = var_26C & CVar(Me.LblVPrefix.Caption) & "','" & CVar(Format$(Time, "HH:mm")) & "','" & CVar(MemVar_1F95070) & "'," & "'" & CVar(var_1BC) 
  loc_1922F64:   var_4A4 = var_384 & "','" & CVar(var_1C0) & "','" & CVar(var_1C8.Text) & "','" & CVar(var_1DC.Text) & "','" & CVar(var_1F0.Text) & "','" 
  loc_1922FB0:   var_5A4 = var_4A4 & CVar(var_204.Text) & "','" & CVar(var_218.Text) & "','" & CVar(var_22C.Text) & "','" & CVar(var_244.Text) & "','" 
  loc_1922FD6:   var_62C = var_5A4 & CVar(var_294.Tag) & "'," & "'" & CVar(var_60C.Text) 
  loc_1923022:   var_74C = var_62C & "','" & CVar(var_654.Text) & "','" & CVar(var_69C.Text) & "','" & CVar(var_6E4.Text) & "','" & CVar(var_72C.Text) 
  loc_192306E:   var_86C = var_74C & "','" & CVar(var_774.Text) & "','" & CVar(var_7BC.Text) & "','" & CVar(var_804.Text) & "','" & CVar(var_84C.Text) 
  loc_19230BA:   var_998 = var_86C & "','" & CVar(var_894.Text) & "','" & CVar(var_8DC.Text) & "','" & CVar(var_928.Text) & "','" & CVar(var_974.Text) 
  loc_1923115:   var_ADC = var_998 & "'," & CVar(var_A0C.Text) & "," & CVar(var_A58.Text) & "," & CVar(var_E6C) & ",'" & CVar(global_56) & "','" 
  loc_1923152:   var_C40 = var_ADC & CVar(MemVar_1F950C8) & "'," & var_B3C & ",'" & IIf((CStr(var_B80) = "Add"), "A", "E") & "','" & CVar(var_C1C.Tag) 
  loc_19231A7:   var_D90 = var_C40 & "','" & CVar(var_C68.Tag) & "','" & CVar(var_CB4.Tag) & "','" & CVar(var_D00.Tag) & "','" & CVar(var_D4C.Tag) & "','" 
  loc_19231D8:   unk_572803.Execute CStr(var_D90 & CVar(MemVar_1F95078) & "'," & var_DF8 & ")"), var_E4C, -1
  loc_19233B2:   If (var_A4.RecordCount > 0) Then
  loc_19233CF:     var_B4 = var_A4.Fields.Item("Total")
  loc_19233D7:     var_DC = var_B4.Value
  loc_19233EE:     var_B8 = var_A4.Fields
  loc_1923411:     Set var_16C = Me.txt
  loc_1923417:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_17C, var_BC)
  loc_192341F:     var_E50 = var_17C.Text
  loc_192342C:     var_14C = Val(var_BC)
  loc_192343D:     Set var_18C = Me.txt
  loc_1923443:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_190, var_144)
  loc_1923458:     var_E5C = Val(var_144)
  loc_1923490:     Set var_1B4 = Me.txt
  loc_1923496:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_1B8, var_168)
  loc_19234AB:     var_E64 = Val(var_168)
  loc_19234BC:     Set var_1C8 = Me.txt
  loc_19234C2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_1CC, var_174)
  loc_19234D7:     var_E6C = Val(var_174)
  loc_1923598:     var_404 = var_A4.Fields.Item("Servicecharge").Value
  loc_19235BF:     var_444 = var_A4.Fields.Item("AddAmt").Value
  loc_1923647:     Set var_69C = Me.txt
  loc_192364D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_6E0, var_178)
  loc_1923662:     var_E74 = Val(var_178)
  loc_1923673:     Set var_6E4 = Me.txt
  loc_1923679:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_728, var_180)
  loc_192368E:     var_E7C = Val(var_180)
  loc_19236C3:     Set var_774 = Me.txt
  loc_19236C9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_7B8)
  loc_1923700:     var_12C = CVar("Update HallBook Set " & "Total=") & var_DC & ",Hallrent=" 
  loc_1923722:     var_290 = (CVar((var_190.Text * var_1B8.Text)) + var_A4.Fields.Item("Total").Value)
  loc_1923726:     var_2A4 = var_12C & var_B8.Item("HallRent").Value & ",NetAmount=" & var_12C & var_B8.Item("HallRent").Value & ",NetAmount=" & CVar(Me.LblVPrefix.Caption) 
  loc_1923741:     var_2D4 = (CVar((var_1CC.Text * var_6E0.Text)) + var_A4.Fields.Item("Total").Value)
  loc_1923767:     var_374 = var_2A4 & ",Amount=" & CVar(Format$(Time, "HH:mm")) & "," & "DiscPer=" & var_A4.Fields.Item("DiscPer").Value & ",DiscAmt=" 
  loc_1923797:     var_434 = var_374 & var_A4.Fields.Item("DiscAmt").Value & ",Tax=" & var_A4.Fields.Item("Tax").Value & ",ServiceCharge=" & var_404 & ",AddAmt=" 
  loc_19237BE:     var_4E4 = var_434 & var_444 & ",dedAmt=" & var_A4.Fields.Item("DedAmt").Value & ",RoundOff=" & var_A4.Fields.Item("RoundOff").Value 
  loc_19237C7:     var_4F4 = var_4E4 & ",Advance=" 
  loc_19237F8:     var_574 = var_4F4 & var_A4.Fields.Item("Advance").Value & "," & "TotalCoverRate=" & CVar((var_728.Text * var_E7C)) & ",MenuCatalog='" 
  loc_1923826:     unk_572803.Execute CStr(var_574 & var_A4.Fields.Item("MenuCatalog").Value & "' WHere Docid='" & Trim(CVar(var_7B8)) & "'"), var_62C, -1
  loc_19238F8:   End If
  loc_19238F8: End If
  loc_1923916: Set var_B0 = Me.txt
  loc_192391C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "Delete From VenueOCC Where FPDocID='", var_DC)
  loc_1923924: -1 = var_B4.Text
  loc_192393D: unk_572803.Execute var_B8 & var_BC & "'", var_7BC, var_E7C
  loc_192397C: For var_E80 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_E80 'Integer
  loc_1923986:   var_CC = CVar(CLng(var_92)) 'Long
  loc_19239CA:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_19239DB:     Set var_B0 = Me.txt
  loc_19239E1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_174, CVar(CLng(1)))
  loc_19239E9:     var_CC = var_B4.Text
  loc_19239F2:     var_CC = CVar(CLng(var_92)) 'Long
  loc_19239FA:     var_11C = CVar(CLng(7)) 'Long
  loc_1923A03:     Set var_B8 = Me.FGrid
  loc_1923A09:     var_DC = var_B8.TextMatrix)
  loc_1923A30:     var_EC = Me.FGrid.TextMatrix)
  loc_1923A41:     Proc_6_7_F26918(var_12C, CVar(CStr(var_EC)), CVar(CLng(3)), CVar(CLng(var_92)), var_DC)
  loc_1923A61:     var_27C = Me.FGrid.TextMatrix)
  loc_1923A72:     Proc_6_7_F26918(var_2A4, CVar(CStr(var_27C)), CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1923A7B:     var_4D4 = CVar(CLng(var_92)) 'Long
  loc_1923A92:     var_2D4 = Me.FGrid.TextMatrix)
  loc_1923AB3:     Set var_18C = Me.FGrid
  loc_1923AB9:     var_344 = var_18C.TextMatrix)
  loc_1923AD0:     Proc_6_7_F26918(var_404, MemVar_1F950EC, var_344, CVar(CLng(6)), CVar(CLng(var_92)), var_2D4)
  loc_1923AD9:     Set var_190 = Me.TopCtrl1
  loc_1923ADF:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(4)))
  loc_1923B31:     var_144 = "Insert Into VenueOCC(" & "FPDocid,VenuCode,FromDate,ToDate,FromTime,ToTime," & "Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_1923B46:     var_180 = var_144 & "Values(" & "'" & var_174
  loc_1923B9D:     var_374 = CVar(var_180 & "','" & CStr(var_DC) & "',") & var_12C & "," & var_2A4 & ",'" & CVar(CStr(var_2D4)) & "','" & CVar(CStr(var_344)) 
  loc_1923BEC:     var_4A4 = var_374 & "'," & "'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_404 & ",'" & IIf((CStr(var_444) = "Add"), "A", "E") 
  loc_1923C16:     unk_572803.Execute CStr(var_4A4 & "','" & CVar(MemVar_1F95078) & "')"), var_4F4, -1
  loc_1923C98:   End If
  loc_1923C9B: Next var_E80 'Integer
  loc_1923CA4: Set var_B0 = Me.TopCtrl1
  loc_1923CAA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1923CC3: If (CStr() = "Add") Then
  loc_1923CDA:   var_BC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1923D00:   var_10C = CVar(var_BC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_104 & "' And VP.Date_From<=") 'String
  loc_1923D11:   Set var_B0 = Me.txt
  loc_1923D17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4, var_180, var_10C)
  loc_1923D1F:   var_25C = var_B4.Text
  loc_1923D2D:   Proc_6_7_F26918(var_EC, CVar(var_180))
  loc_1923D35:   var_12C = -1 & var_EC 
  loc_1923D4C:   unk_572803.Execute CStr(var_12C & " Order By VP.Date_From DESC"), var_B8, 
  loc_1923D57:   Set var_88 = var_B8
  loc_1923D95:   If (var_88.RecordCount > 0) Then
  loc_1923DA6:     Set var_B0 = Me.txt
  loc_1923DAC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1923DC1:     var_14C = Val(var_B4.Text)
  loc_1923DD6:     var_B8 = var_88.Fields
  loc_1923DE6:     var_DC = var_B8.Item("V_Type").Value
  loc_1923E11:     Proc_6_7_F26918(var_25C, CVar(var_88.Fields.Item("Date_From")))
  loc_1923E36:     var_174 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_14C) & " Where (SITE_CODE='"
  loc_1923E61:     var_12C = CVar(var_174 & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_DC & "' and Date_From=" 
  loc_1923E68:     var_26C = var_12C & var_25C 
  loc_1923E76:     unk_572803.Execute CStr(var_26C), var_27C, -1
  loc_1923EB0:   End If
  loc_1923EB0: End If
  loc_1923EB4: Set var_B0 = Me.TopCtrl1
  loc_1923EBA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_18C)
  loc_1923ED3: If (CStr(var_14C) = "Add") Then
  loc_1923EF9:   var_BC = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078
  loc_1923F17:   Call 0.Method_arg_50 (var_174, var_BC & "' And UNAME='" & MemVar_1F950C8 & "' AND ENAME='", var_DC, -1, var_B0)
  loc_1923F27:   var_184 = var_B4 & var_174 & "' "
  loc_1923F30:   unk_572803.Execute var_184, 0, var_B8
  loc_1923F40:    = var_B4.Item()
  loc_1923F48:    = var_B8.Value
  loc_1923F79:   If (var_B0.Fields > 0) Then
  loc_1923F9A:     Set var_B0 = Me.txt
  loc_1923FA0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, "UPDATE LASTVOU  SET DOCID='")
  loc_1923FA8:     var_DC = var_B4.Text
  loc_1923FB1:     var_144 = -1 & var_BC
  loc_1923FC6:     var_178 = var_BC & "' And UNAME='" & "' WHERE Logsite_Code='" & MemVar_1F95078 & "' and UNAME='"
  loc_1923FDD:     Call 0.Method_arg_50 (var_184, var_178 & MemVar_1F950C8 & "' AND ENAME='")
  loc_1923FF6:     unk_572803.Execute var_B8 & var_184 & "'  ", , 
  loc_1924021:   Else
  loc_1924045:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' And UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_26C)
  loc_192404E:     var_174 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' And UNAME='"
  loc_1924055:     var_180 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' And UNAME='" & "' WHERE Logsite_Code='" & MemVar_1F95078 & "','"
  loc_1924066:     Set var_B0 = Me.txt
  loc_192406C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_178)
  loc_1924074:     var_180 = var_B4.Text
  loc_1924098:     var_CC = MemVar_1F950EC
  loc_19240A0:     Proc_6_7_F26918(var_DC, var_CC)
  loc_19240D2:     unk_572803.Execute CStr(CVar(var_B8 & var_178 & "','" & MemVar_1F95070 & "',") & var_DC & ",'A','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1924108:   End If
  loc_1924108: End If
  loc_192410E: unk_572803.CommitTrans
  loc_1924128: If (global_56 = MemVar_1F95078 & "BANQ") Then
  loc_1924131:   global_104 = "IBOOK"
  loc_1924150:   var_144 = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code in ('" & MemVar_1F95078 & "') And code not in (select InquiryCode from HallBook) and Status='Active' order by PartyName"
  loc_1924159:   unk_572803.Execute var_144, var_DC, -1
  loc_192416A:   Set global_72 = var_B0
  loc_1924182: Else
  loc_1924197:   If (global_56 = MemVar_1F95078 & "ODC") Then
  loc_19241A0:     global_104 = "OBOOK"
  loc_19241B8:     var_BC = "Select Code,PartyName as Name From BookingInquiry where LogSite_Code In ('" & MemVar_1F95078
  loc_19241C8:     unk_572803.Execute var_BC & "') And code not in (select InquiryCode from HallBook) and Status='Active' order by PartyName", var_DC, -1
  loc_19241D9:     Set global_72 = var_B0
  loc_19241EE:   End If
  loc_19241EE: End If
  loc_19241F7: CVarUnk
  loc_19241FC: VerifyVarObj
  loc_1924202: Set var_B0 = Me.DGParty
  loc_1924208: LateIdStAd
  loc_1924229: Set var_B0 = Me.txt
  loc_192422F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B4, var_BC, 0)
  loc_1924237: var_B0 = var_B4.Text
  loc_192423F: var_90 = var_BC
  loc_192424B: var_8A = 0
  loc_1924259: Me.Requery -1
  loc_1924283: Me.Find "SearchCode ='" & var_90 & "'", 0, 1
  loc_1924293: Set var_B0 = Me.TopCtrl1
  loc_1924299: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_CC)
  loc_19242B2: If (CStr(var_8A) = "Add") Then
  loc_19242B8:   Call Proc_123_86_15FCEA8(var_90, global_72)
  loc_19242BD: End If
  loc_19242C1: Set var_B0 = Me.TopCtrl1
  loc_19242C7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_B0)
  loc_19242E0: If (CStr(var_B0) = "Add") Then
  loc_19242E3:   Call TopCtrl1_UnknownEvent_A()
  loc_19242E8:   Exit Sub
  loc_19242E9: End If
  loc_192430C: Call Proc_123_76_EEEF60(Proc_5_1_100EC1C("INI", Me))
  loc_1924317: Call Proc_123_73_16C493C(global_60)
  loc_1924321: global_144 = &HFF
  loc_1924329: Set var_88 = Nothing
  loc_1924331: Set var_A4 = Nothing
  loc_1924334: Exit Sub
  loc_1924335: ' Referenced from: 1921B04
  loc_192433B: If (var_8A = &HFF) Then
  loc_1924344:   unk_572803.RollbackTrans
  loc_1924349: End If
  loc_1924349: Proc_6_60_E63754(global_144)
  loc_192434E: Exit Sub
End Sub

Private Sub Txt1_KeyDown(KeyCode As Integer, Shift As Integer) 'E66800
  'Data Table: 5727EC
  Dim MemVar_7707E8.global_0 As Integer
  loc_E667B6: If (KeyCode = CInt(&H20)) Then
  loc_E667CF:   If ((CLng(Shift) = &HD) And (MemVar_7707E8.global_0 > 4)) Then
  loc_E667D8:     Proc_6_75_E5335C(Shift, arg_14)
  loc_E667E4:     MemVar_7707E8.global_0 = 0
  loc_E667EA:   Else
  loc_E667FA:     MemVar_7707E8.global_0 = (MemVar_7707E8.global_0 + 1)
  loc_E667FD:   End If
  loc_E667FD: End If
  loc_E667FD: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_0 'F33D90
  'Data Table: 5727EC
  Dim var_98 As Variant
  Dim var_10C As MaskEdBox
  Dim var_130 As Long
  loc_F33C8C: Call Proc_123_77_FB7CB8()
  loc_F33C9D: If (KeyCode = 0) Then
  loc_F33CB6:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_F33CD1:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F33D11:   Set var_108 = Me.txtMEd
  loc_F33D17:   Call 0.Method_txtMEd_UnknownEvent_00 (KeyCode, var_10C, CVar(CStr(Me.FGrid.TextMatrix))))
  loc_F33D1F:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F33D4F:   var_130 = CLng(Me.FGrid.Col)
  loc_F33D5F:   If Not (var_130 = CLng(4)) Then
  loc_F33D69:     If (var_130 = CLng(6)) Then
  loc_F33D6C:     End If
  loc_F33D75:     If (global_134 = 0) Then
  loc_F33D80:       var_134 = "{Home}+{End}"
  loc_F33D86:       Proc_303_0_FBACC8(var_134, 0, var_130)
  loc_F33D8E:     End If
  loc_F33D8E:   End If
  loc_F33D8E: End If
  loc_F33D8E: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_8 'E20B34
  'Data Table: 5727EC
  Dim Shift As Integer
  Dim MemVar_63E754 As Currency
  loc_E20B1C: If (KeyCode = 0) Then
  loc_E20B25:   Call Proc_123_83_105D084(KeyCode, var_88)
  loc_E20B2E:   Shift = Not(var_88)
  loc_E20B31: End If
  loc_E20B31: Exit Sub
  loc_E20B32: MemVar_63E754 = Shift
End Sub

Private Sub txtMEd_UnknownEvent_B '103FAA8
  'Data Table: 5727EC
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_C4 As Long
  loc_103F84F: var_86 = KeyCode
  loc_103F858: If (var_86 = 0) Then
  loc_103F865:   If (CLng(Shift) = &H1B) Then
  loc_103F868:     Call Proc_123_77_FB7CB8(var_86)
  loc_103F871:     Set var_8C = Me.FGrid
  loc_103F891:     Set var_8C = Me.txtMEd
  loc_103F897:     Call 0.Method_txtMEd_UnknownEvent_B0 (KeyCode, var_90)
  loc_103F89F:     var_90.Visible = False
  loc_103F8AB:     Exit Sub
  loc_103F8AC:   End If
  loc_103F8BF:   var_C4 = CLng(Me.FGrid.Col)
  loc_103F8CF:   If (var_C4 = CLng(4)) Then
  loc_103F912:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_134 = &HFF))) Then
  loc_103F91B:       Call Proc_123_83_105D084(KeyCode, var_C6)
  loc_103F926:       If (var_C6 = &HFF) Then
  loc_103F934:         Set var_8C = Me.TxtGrid
  loc_103F93A:         Call 0.Method_txtMEd_UnknownEvent_B0 (1, var_90, 0)
  loc_103F942:         var_90.Visible = var_C4
  loc_103F982:         Set var_90 = Me.txtMEd
  loc_103F991:         Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_134)
  loc_103F9A1:       End If
  loc_103F9A1:     End If
  loc_103F9A4:   Else
  loc_103F9AB:     If (var_C4 = CLng(6)) Then
  loc_103F9EE:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_134 = &HFF))) Then
  loc_103F9F7:         Call Proc_123_83_105D084(KeyCode, var_C6, 7, 0)
  loc_103FA02:         If (var_C6 = &HFF) Then
  loc_103FA10:           Set var_8C = Me.TxtGrid
  loc_103FA16:           Call 0.Method_txtMEd_UnknownEvent_B0 (1, var_90, 0)
  loc_103FA1E:           var_90.Visible = True
  loc_103FA5E:           Set var_90 = Me.txtMEd
  loc_103FA6D:           Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_134, 7)
  loc_103FA80:         Else
  loc_103FA8A:           Set var_8C = Me.txtMEd
  loc_103FA90:           Call 0.Method_txtMEd_UnknownEvent_B0 (KeyCode, var_90, 0, 0)
  loc_103FAA7:         End If
  loc_103FAA7:       End If
  loc_103FAA7:     End If
  loc_103FAA7:   End If
  loc_103FAA7: End If
  loc_103FAA7: Exit Sub
End Sub

Private Sub txtMEd_UnknownEvent_C 'E51CFC
  'Data Table: 5727EC
  Dim var_A0 As Long
  loc_E51CCB: Proc_6_58_E06050(Shift)
  loc_E51CDC: If (KeyCode = 0) Then
  loc_E51CF2:   var_A0 = CLng(Me.FGrid.Col)
  loc_E51CFB: End If
  loc_E51CFB: Exit Sub
End Sub

Private Sub DGSource_UnknownEvent_9 'F4DB34
  'Data Table: 5727EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4DA2B: Me.DGSource.Visible = False
  loc_F4DA4A: If (Me.RecordCount > 0) Then
  loc_F4DA89:   Set var_B4 = Me.txt
  loc_F4DA8F:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F4DA97:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4DACA:   var_B0 = Me.Fields.Item("Code")
  loc_F4DAE9:   Set var_B4 = Me.txt
  loc_F4DAEF:   Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F4DAF7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4DB0D: End If
  loc_F4DB18: Set var_A8 = Me.txt
  loc_F4DB1E: Call 0.Method_DGSource_UnknownEvent_90 (CInt(&HF))
  loc_F4DB26: var_B0.SetFocus
  loc_F4DB32: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'F4DC94
  'Data Table: 5727EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4DB8B: Me.DGCity.Visible = False
  loc_F4DBAA: If (Me.RecordCount > 0) Then
  loc_F4DBE9:   Set var_B4 = Me.txt
  loc_F4DBEF:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4DBF7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4DC2A:   var_B0 = Me.Fields.Item("Code")
  loc_F4DC49:   Set var_B4 = Me.txt
  loc_F4DC4F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4DC57:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4DC6D: End If
  loc_F4DC78: Set var_A8 = Me.txt
  loc_F4DC7E: Call 0.Method_DGCity_UnknownEvent_90 (CInt(6))
  loc_F4DC86: var_B0.SetFocus
  loc_F4DC92: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED2638
  'Data Table: 5727EC
  loc_ED259C: If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_ED259F:   Call DGVenue_UnknownEvent_9()
  loc_ED25A4: End If
  loc_ED25C0: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_ED25C3:   Call DGMarketSeg_UnknownEvent_9()
  loc_ED25C8: End If
  loc_ED25E4: If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_ED25E7:   Call DGFuncType_UnknownEvent_9()
  loc_ED25EC: End If
  loc_ED2608: If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_ED260B:   Call DGSource_UnknownEvent_9()
  loc_ED2610: End If
  loc_ED262C: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_ED262F:   Call DGParty_UnknownEvent_9()
  loc_ED2634: End If
  loc_ED2634: Exit Sub
End Sub

Private Sub DGVenue_UnknownEvent_9 'FE8044
  'Data Table: 5727EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE7E7F: Me.DGVenue.Visible = False
  loc_FE7E9E: If (Me.RecordCount > 0) Then
  loc_FE7EDB:   Set var_B4 = Me.TxtGrid
  loc_FE7EE1:   Call 0.Method_DGVenue_UnknownEvent_90 (1, var_B8)
  loc_FE7EE9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FE7F12:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE7F1A:   var_EC = CVar(CLng(1)) 'Long
  loc_FE7F4D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE7F55:   Set var_B8 = Me.FGrid
  loc_FE7F5B:   LateIdCallSt
  loc_FE7F8A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE7F92:   var_EC = CVar(CLng(7)) 'Long
  loc_FE7FB4:   var_B0 = Me.Fields.Item("Code")
  loc_FE7FC5:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE7FCD:   Set var_B8 = Me.FGrid
  loc_FE7FD3:   LateIdCallSt
  loc_FE7FEF: End If
  loc_FE7FFB: Set var_A8 = Me.TxtGrid
  loc_FE8001: Call 0.Method_DGVenue_UnknownEvent_90 (1, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE8009: var_A4 = var_B0.Visible
  loc_FE801B: If (var_12E = &HFF) Then
  loc_FE8027:   Set var_A8 = Me.TxtGrid
  loc_FE802D:   Call 0.Method_DGVenue_UnknownEvent_90 (1, var_B0, var_B8)
  loc_FE8035:   var_B0.SetFocus
  loc_FE8041: End If
  loc_FE8041: Exit Sub
End Sub

Private Sub DGVenue_UnknownEvent_1F 'EDAA8C
  'Data Table: 5727EC
  Dim var_A8 As Variant
  Dim var_BC As TextBox
  loc_EDA9E8: Set var_88 = Me.DGVenue
  loc_EDAA12: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EDAA1A: Set var_BC = Me.DGVenue
  loc_EDAA42: Set var_88 = Me.TxtGrid
  loc_EDAA48: Call 0.Method_DGVenue_UnknownEvent_1F0 (1, var_BC, var_C4)
  loc_EDAA50: DGVenue.DispID_1B = var_BC.Text
  loc_EDAA59: Set var_CC = Me.FGPoint
  loc_EDAA76: Proc_6_138_106E830(Me.DGVenue, global_68, CInt(var_C4))
  loc_EDAA8B: Exit Sub
End Sub

Public Function global_52Get() '574BF8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '574C07
  global_52 = Value
End Sub

Public Function global_56Get() '574C16
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '574C25
  global_56 = Value
End Sub

Public Property Get OpenMode() 'E08A90
  'Data Table: 5727EC
  loc_E08A89: OpenMode = global_148
End Sub

Public Property Let OpenMode(vNewValue) 'E02530
  'Data Table: 5727EC
  loc_E0252A: global_148 = vNewValue
  loc_E0252D: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'E71670
  'Data Table: 5727EC
  Dim Me As Recordset15
  loc_E7161A: Me.MoveFirst
  loc_E71644: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E71664: If (Me.EOF = 0) Then
  loc_E71667:   Call Proc_123_73_16C493C(var_9C)
  loc_E7166C: End If
  loc_E7166C: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E98058
  'Data Table: 5727EC
  Dim Me As Recordset15
  loc_E97FE6: On Error Goto loc_E9804F
  loc_E97FEF: Me.MoveFirst
  loc_E98019: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E98041: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E98049: Call Proc_123_73_16C493C(0)
  loc_E9804E: Exit Sub
  loc_E9804F: ' Referenced from: E97FE6
  loc_E9804F: Proc_6_60_E63754(var_A0)
  loc_E98054: Exit Sub
  loc_E98055: CExtInstUnk
End Sub

Public Sub SEARCHBACKBANQUET(mVenueCode, mVenueName, mFromTime, mFuncDate) 'ED2DBC
  'Data Table: 5727EC
  Dim var_94 As Long
  Dim var_B4 As Variant
  loc_ED2D00: Call TopCtrl1_UnknownEvent_A()
  loc_ED2D05: var_94 = 1
  loc_ED2D11: var_B4 = CVar(CLng(1)) 'Long
  loc_ED2D21: Set var_D8 = Me.FGrid
  loc_ED2D27: LateIdCallSt
  loc_ED2D32: var_94 = 1
  loc_ED2D3E: var_B4 = CVar(CLng(7)) 'Long
  loc_ED2D4E: Set var_D8 = Me.FGrid
  loc_ED2D54: LateIdCallSt
  loc_ED2D5F: var_94 = 1
  loc_ED2D6B: var_B4 = CVar(CLng(3)) 'Long
  loc_ED2D7B: Set var_D8 = Me.FGrid
  loc_ED2D81: LateIdCallSt
  loc_ED2D8C: var_94 = 1
  loc_ED2D98: var_B4 = CVar(CLng(4)) 'Long
  loc_ED2DA8: Set var_D8 = Me.FGrid
  loc_ED2DAE: LateIdCallSt
  loc_ED2DB9: Exit Sub
End Sub

Public Sub Proc_123_70_11146EC
  'Data Table: 5727EC
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_111439F: Me.Frame1.Left = CDbl(7530)
  loc_11143B6: Me.Frame1.Top = CDbl(4515)
  loc_11143C2: Set var_8C = Me.FGrid
  loc_11143D9: global_96 = CStr(CLng(var_8C.BackColor))
  loc_11143EF: var_8C.Cols = 8
  loc_11143F7: var_B0 = CVar(CLng(0)) 'Long
  loc_11143FC: var_D0 = &HFA
  loc_1114408: LateIdCallSt
  loc_1114410: var_B0 = 0
  loc_111441C: var_D0 = CVar(CLng(1)) 'Long
  loc_1114421: var_F0 = "Venu Name"
  loc_111442A: LateIdCallSt
  loc_1114435: var_B0 = CVar(CLng(1)) 'Long
  loc_1114440: var_D0 = CVar(CInt(1)) 'Integer
  loc_1114447: LateIdCallSt
  loc_1114452: var_B0 = CVar(CLng(1)) 'Long
  loc_1114457: var_D0 = &H9C4
  loc_1114463: LateIdCallSt
  loc_111446B: var_B0 = 0
  loc_1114477: var_D0 = CVar(CLng(2)) 'Long
  loc_111447C: var_F0 = "Selection"
  loc_1114485: LateIdCallSt
  loc_1114490: var_B0 = CVar(CLng(2)) 'Long
  loc_111449B: var_D0 = CVar(CInt(1)) 'Integer
  loc_11144A2: LateIdCallSt
  loc_11144AD: var_B0 = CVar(CLng(2)) 'Long
  loc_11144B2: var_D0 = 0
  loc_11144BE: LateIdCallSt
  loc_11144C6: var_B0 = 0
  loc_11144D2: var_D0 = CVar(CLng(3)) 'Long
  loc_11144D7: var_F0 = "Date From"
  loc_11144E0: LateIdCallSt
  loc_11144EB: var_B0 = CVar(CLng(3)) 'Long
  loc_11144F6: var_D0 = CVar(CInt(1)) 'Integer
  loc_11144FD: LateIdCallSt
  loc_1114508: var_B0 = CVar(CLng(3)) 'Long
  loc_1114513: var_D0 = CVar(CInt(1)) 'Integer
  loc_111451A: LateIdCallSt
  loc_1114525: var_B0 = CVar(CLng(3)) 'Long
  loc_111452A: var_D0 = &H47E
  loc_1114536: LateIdCallSt
  loc_111453E: var_B0 = 0
  loc_111454A: var_D0 = CVar(CLng(4)) 'Long
  loc_111454F: var_F0 = "Time Fr"
  loc_1114558: LateIdCallSt
  loc_1114563: var_B0 = CVar(CLng(4)) 'Long
  loc_111456E: var_D0 = CVar(CInt(1)) 'Integer
  loc_1114575: LateIdCallSt
  loc_1114580: var_B0 = CVar(CLng(4)) 'Long
  loc_111458B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1114592: LateIdCallSt
  loc_111459D: var_B0 = CVar(CLng(4)) 'Long
  loc_11145A2: var_D0 = &H36B
  loc_11145AE: LateIdCallSt
  loc_11145B6: var_B0 = 0
  loc_11145C2: var_D0 = CVar(CLng(5)) 'Long
  loc_11145C7: var_F0 = "Date To"
  loc_11145D0: LateIdCallSt
  loc_11145DB: var_B0 = CVar(CLng(5)) 'Long
  loc_11145E6: var_D0 = CVar(CInt(1)) 'Integer
  loc_11145ED: LateIdCallSt
  loc_11145F8: var_B0 = CVar(CLng(5)) 'Long
  loc_1114603: var_D0 = CVar(CInt(1)) 'Integer
  loc_111460A: LateIdCallSt
  loc_1114615: var_B0 = CVar(CLng(5)) 'Long
  loc_111461A: var_D0 = &H47E
  loc_1114626: LateIdCallSt
  loc_111462E: var_B0 = 0
  loc_111463A: var_D0 = CVar(CLng(6)) 'Long
  loc_111463F: var_F0 = "Time To"
  loc_1114648: LateIdCallSt
  loc_1114653: var_B0 = CVar(CLng(6)) 'Long
  loc_111465E: var_D0 = CVar(CInt(1)) 'Integer
  loc_1114665: LateIdCallSt
  loc_1114670: var_B0 = CVar(CLng(6)) 'Long
  loc_111467B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1114682: LateIdCallSt
  loc_111468D: var_B0 = CVar(CLng(6)) 'Long
  loc_1114692: var_D0 = &H36B
  loc_111469E: LateIdCallSt
  loc_11146A6: var_B0 = 0
  loc_11146B2: var_D0 = CVar(CLng(7)) 'Long
  loc_11146B7: var_F0 = "Venu Code"
  loc_11146C0: LateIdCallSt
  loc_11146CB: var_B0 = CVar(CLng(7)) 'Long
  loc_11146D0: var_D0 = 0
  loc_11146DC: LateIdCallSt
  loc_11146E6: Set var_8C = Nothing 
  loc_11146EA: Exit Sub
End Sub

Public Sub Proc_123_71_E44B18
  'Data Table: 5727EC
  loc_E44AF4: Set var_88 = Me.TopCtrl1
  loc_E44AFA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E44B13: If (CStr() = "Browse") Then
  loc_E44B16:   Exit Sub
  loc_E44B17: End If
  loc_E44B17: Exit Sub
End Sub

Public Sub Proc_123_72_12D1398(arg_C) '12D1398
  'Data Table: 5727EC
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_92 As Integer
  Dim var_120 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_140 As Variant
  Dim var_BC As String
  Dim var_158 As TextBox
  Dim var_144 As Variant
  Dim var_16C As Variant
  Dim var_154 As Variant
  Dim var_130 As Variant
  loc_12D0D24: If (arg_C = 1) Then
  loc_12D0D3A:   var_AC = CLng(Me.FGrid.Col)
  loc_12D0D4A:   If (var_AC = CLng(1)) Then
  loc_12D0D6D:     var_B2 = Me.EOF
  loc_12D0D9B:     Set var_98 = Me.TxtGrid
  loc_12D0DA1:     Call 0.Method_Proc_123_72_12D13980 (arg_C, var_B8, var_BC)
  loc_12D0DA9:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_12D0DC1:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_12D0DD7:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D0DDF:       var_EC = CVar(CLng(1)) 'Long
  loc_12D0DE4:       var_10C = vbNullString
  loc_12D0DEE:       Set var_B8 = Me.FGrid
  loc_12D0DF4:       LateIdCallSt
  loc_12D0E19:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D0E21:       var_EC = CVar(CLng(7)) 'Long
  loc_12D0E26:       var_10C = vbNullString
  loc_12D0E30:       Set var_B8 = Me.FGrid
  loc_12D0E36:       LateIdCallSt
  loc_12D0E4B:     Else
  loc_12D0E4E:       Call Proc_123_81_FBF508(var_B2, var_B8, var_10C, var_EC, var_CC)
  loc_12D0E59:       If (var_B2 = 0) Then
  loc_12D0E61:         Proc_123_72_12D1398 = 0
  loc_12D0E67:       End If
  loc_12D0E7B:       var_92 = CInt(CLng(Me.FGrid.Row))
  loc_12D0E97:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D0E9F:       var_FC = CVar(CLng(1)) 'Long
  loc_12D0ED2:       var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12D0EDA:       Set var_144 = Me.FGrid
  loc_12D0EE0:       LateIdCallSt
  loc_12D0F0F:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D0F17:       var_FC = CVar(CLng(7)) 'Long
  loc_12D0F39:       var_B8 = Me.Fields.Item("Code")
  loc_12D0F4A:       var_140 = CVar(CStr(var_B8.Value)) 'String
  loc_12D0F52:       Set var_144 = Me.FGrid
  loc_12D0F58:       LateIdCallSt
  loc_12D0F78:       var_CC = CVar(CLng(var_92)) 'Long
  loc_12D0F80:       var_EC = CVar(CLng(0)) 'Long
  loc_12D0F8A:       var_A8 = CVar(CStr(var_92)) 'String
  loc_12D0F92:       Set var_98 = Me.FGrid
  loc_12D0F98:       LateIdCallSt
  loc_12D0FA6:     End If
  loc_12D0FA9:   Else
  loc_12D0FB0:     If Not (var_AC = CLng(3)) Then
  loc_12D0FBA:       If (var_AC = CLng(5)) Then
  loc_12D0FBD:       End If
  loc_12D0FD0:       Call 0.Method_Proc_123_72_12D13980 (arg_C, var_B8, var_BC, Me.TxtGrid, var_A8, var_EC, var_CC)
  loc_12D0FD8:       var_144 = var_B8.Text
  loc_12D0FEE:       var_140 = Len(Trim(CVar(var_BC)))
  loc_12D1008:       If (var_140 = 0) Then
  loc_12D101D:         Set var_98 = Me.TxtGrid
  loc_12D1023:         Call 0.Method_Proc_123_72_12D13980 (arg_C, var_B8, CStr(MemVar_1F950EC), var_140, var_FC)
  loc_12D102B:         var_B8.Text = var_DC
  loc_12D103D:       Else
  loc_12D1047:         Set var_98 = Me.TxtGrid
  loc_12D104D:         Call 0.Method_Proc_123_72_12D13980 (arg_C, var_B8, var_144)
  loc_12D106D:         Set var_144 = Me.TxtGrid
  loc_12D1073:         Call 0.Method_Proc_123_72_12D13980 (arg_C, var_158)
  loc_12D107B:         var_158.Text = Proc_6_33_15125B8(var_B8, var_140)
  loc_12D108E:       End If
  loc_12D109C:       Set var_120 = Me.txt
  loc_12D10A2:       Call 0.Method_Proc_123_72_12D13980 (CInt(1), var_144)
  loc_12D10BC:       Set var_98 = Me.TxtGrid
  loc_12D10C2:       Call 0.Method_Proc_123_72_12D13980 (arg_C, var_B8)
  loc_12D10EC:       If (CDate(var_B8.Text) < CDate(var_144.Text)) Then
  loc_12D1110:         MsgBox("Please check Function Date.", &H40, "Error...", var_140, var_154)
  loc_12D1124:         Set var_98 = Me.FGrid
  loc_12D1135:         Proc_123_72_12D1398 = FGrid.DispID_8001
  loc_12D113B:       End If
  loc_12D1143:       If (arg_C = CInt(5)) Then
  loc_12D1150:         var_140 = Me.FGrid.Row
  loc_12D1159:         var_10C = CVar(CLng(var_140)) 'Long
  loc_12D1161:         var_16C = CVar(CLng(3)) 'Long
  loc_12D1170:         var_154 = Me.FGrid.TextMatrix)
  loc_12D118F:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12D1197:         var_EC = CVar(CLng(5)) 'Long
  loc_12D11A0:         Set var_B8 = Me.FGrid
  loc_12D11A6:         var_130 = var_B8.TextMatrix)
  loc_12D11B1:         var_BC = CStr(var_130)
  loc_12D11DD:         If (CDate(var_BC) < CDate(CStr(var_154))) Then
  loc_12D11F9:           MsgBox("To Date and Time Must be Greater than From Date and Time", &H40, var_130, var_140, var_154)
  loc_12D120E:           Proc_123_72_12D1398 = 0
  loc_12D1214:         End If
  loc_12D1214:       End If
  loc_12D1251:       Set var_98 = Me.TxtGrid
  loc_12D1257:       Call 0.Method_Proc_123_72_12D13980 (arg_C, var_B8, var_BC, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(Me.FGrid.Col)))
  loc_12D125F:       var_CC = var_B8.Text
  loc_12D1267:       var_140 = CVar(var_BC) 'String
  loc_12D1275:       LateIdCallSt
  loc_12D12DA:       var_140 = Me.FGrid.Row
  loc_12D12FA:       var_154 = Me.FGrid.TextMatrix)
  loc_12D132B:       If (CVar(CLng(6)) And (CStr(var_154) <> vbNullString)) Then
  loc_12D1331:         Call Proc_123_82_138EB34(var_B2, CVar(CLng(var_140)), (CStr(Me.FGrid.TextMatrix)) <> vbNullString), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_12D133C:         If (var_B2 = 0) Then
  loc_12D1360:           MsgBox("Please check To Date.", &H40, "Error...", var_140, var_154)
  loc_12D1374:           Set var_98 = Me.FGrid
  loc_12D1385:           Proc_123_72_12D1398 = FGrid.DispID_8001
  loc_12D138B:         End If
  loc_12D138B:       End If
  loc_12D138B:     End If
  loc_12D138B:   End If
  loc_12D138B: End If
  loc_12D1390: Proc_123_72_12D1398 = &HFF
End Sub

Public Sub Proc_123_73_16C493C
  'Data Table: 5727EC
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim unk_572803 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_140 As Variant
  Dim var_114 As Variant
  Dim var_8C As Recordset15
  Dim var_12C As TextBox
  Dim var_1EC As Recordset15
  Dim var_92 As Integer
  Dim var_124 As Variant
  loc_16C2F8C: On Error Goto loc_16C4935
  loc_16C2FA7: Me.LblBillRemark.Caption = vbNullString
  loc_16C2FC6: If (Me.RecordCount > 0) Then
  loc_16C2FD6:   var_D0 = "SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName, BA.Name as BookingAgentName FROM (((HallBook AS S LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON S.BussSource = BussSource.Code) LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) LEFT JOIN SubGroup ON S.CompanyCode = SubGroup.SubCode LEFT JOIN SubGroup BA ON S.BookingAgent = BA.SubCode Where S.Docid='"
  loc_16C301F:   unk_572803.Execute CStr(var_D0 & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_16C302A:   Set var_88 = var_128
  loc_16C30E7:   var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16C312C:   Me.LblUser.Caption = CStr(0 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_16C319E:   var_128 = var_88.Fields
  loc_16C31A6:   var_12C = var_128.Item("U_AE")
  loc_16C31BF:   var_124 = "entdt : "
  loc_16C3207:   var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C)) = "E"), "Last Update : ", var_124))
  loc_16C324C:   Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_16C32C3:   var_E0 = "SELECT VNo FROM HallSale1 WHERE Vtype='IDC' AND BookDocId='" & Me.Fields.Item("SearchCode").Value 
  loc_16C32DA:   unk_572803.Execute CStr(var_E0 & "'"), var_124, -1
  loc_16C32E5:   Set var_8C = var_128
  loc_16C3313:   If (var_8C.RecordCount > 0) Then
  loc_16C333C:     Proc_6_39_E7D3A0(var_E0, CVar(var_8C.Fields.Item("VNo")))
  loc_16C3349:     global_140 = CLng(var_E0)
  loc_16C3391:     Set var_128 = Me.LblBillRemark
  loc_16C3397:     var_128.Caption = CStr("Banquet Bill No. " & var_8C.Fields.Item("VNo").Value)
  loc_16C33AF:   End If
  loc_16C33BC:   var_D0 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_16C3402:   unk_572803.Execute CStr("Banquet Bill No. " & var_88.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_16C340D:   Set var_8C = var_128
  loc_16C346D:   If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_16C348A:     var_B0 = var_8C.Fields.Item("Advance")
  loc_16C34AF:     Call 0.Method_Proc_123_73_16C493C0 (CInt(&H20), var_12C, CStr(var_B0.Value))
  loc_16C34B7:     var_12C.Text = Me.txt
  loc_16C34D0:   Else
  loc_16C34DE:     Set var_98 = Me.txt
  loc_16C34E4:     Call 0.Method_Proc_123_73_16C493C0 (CInt(&H20), var_B0, "0.00")
  loc_16C34EC:     var_B0.Text = global_140
  loc_16C34F8:   End If
  loc_16C34FB:   Set var_1EC = var_88 
  loc_16C3538:   Set var_128 = Me.txt
  loc_16C353E:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H22), var_12C)
  loc_16C3546:   var_12C.Text = CStr(var_1EC.Fields.Item("DocID").Value)
  loc_16C3595:   Set var_128 = Me.txt
  loc_16C359B:   Call 0.Method_Proc_123_73_16C493C0 (CInt(0), var_12C)
  loc_16C35A3:   var_12C.Text = CStr(var_1EC.Fields.Item("VNo").Value)
  loc_16C35D0:   var_B0 = var_1EC.Fields.Item("VDate")
  loc_16C360B:   Set var_128 = Me.txt
  loc_16C3611:   Call 0.Method_Proc_123_73_16C493C0 (CInt(1), var_12C, CStr(Format(CVar(var_B0), "DD/MMM/YYYY")))
  loc_16C3619:   var_12C.Text = 1
  loc_16C363E:   Set var_98 = Me.txt
  loc_16C3644:   Call 0.Method_Proc_123_73_16C493C0 (CInt(1), var_B0)
  loc_16C3673:   var_124 = Trim(Format(CVar(var_B0), "DDDD"))
  loc_16C368A:   Set var_128 = Me.txt
  loc_16C3690:   Call 0.Method_Proc_123_73_16C493C0 (CInt(2), var_12C, CStr(var_124), 1)
  loc_16C3698:   var_12C.Text = 1
  loc_16C36EC:   Me.LblVPrefix.Caption = CStr(var_1EC.Fields.Item("vPrefix").Value)
  loc_16C3739:   Set var_128 = Me.txt
  loc_16C373F:   Call 0.Method_Proc_123_73_16C493C0 (CInt(3), var_12C, CStr(var_1EC.Fields.Item("PartyName").Value))
  loc_16C3747:   var_12C.Text = 1
  loc_16C3796:   Set var_128 = Me.txt
  loc_16C379C:   Call 0.Method_Proc_123_73_16C493C0 (CInt(3), var_12C)
  loc_16C37A4:   var_12C.Tag = CStr(var_1EC.Fields.Item("InquiryCode").Value)
  loc_16C37F3:   Set var_128 = Me.txt
  loc_16C37F9:   Call 0.Method_Proc_123_73_16C493C0 (CInt(4), var_12C)
  loc_16C3801:   var_12C.Text = CStr(var_1EC.Fields.Item("Add1").Value)
  loc_16C3850:   Set var_128 = Me.txt
  loc_16C3856:   Call 0.Method_Proc_123_73_16C493C0 (CInt(5), var_12C)
  loc_16C385E:   var_12C.Text = CStr(var_1EC.Fields.Item("Add2").Value)
  loc_16C38AD:   Set var_128 = Me.txt
  loc_16C38B3:   Call 0.Method_Proc_123_73_16C493C0 (CInt(6), var_12C)
  loc_16C38BB:   var_12C.Text = CStr(var_1EC.Fields.Item("City").Value)
  loc_16C390A:   Set var_128 = Me.txt
  loc_16C3910:   Call 0.Method_Proc_123_73_16C493C0 (CInt(7), var_12C)
  loc_16C3918:   var_12C.Text = CStr(var_1EC.Fields.Item("PinCode").Value)
  loc_16C3967:   Set var_128 = Me.txt
  loc_16C396D:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HB), var_12C)
  loc_16C3975:   var_12C.Text = CStr(var_1EC.Fields.Item("PanNo").Value)
  loc_16C39C4:   Set var_128 = Me.txt
  loc_16C39CA:   Call 0.Method_Proc_123_73_16C493C0 (CInt(8), var_12C)
  loc_16C39D2:   var_12C.Text = CStr(var_1EC.Fields.Item("ContactNo_Res").Value)
  loc_16C3A21:   Set var_128 = Me.txt
  loc_16C3A27:   Call 0.Method_Proc_123_73_16C493C0 (CInt(9), var_12C)
  loc_16C3A2F:   var_12C.Text = CStr(var_1EC.Fields.Item("ContactNo_Off").Value)
  loc_16C3A7E:   Set var_128 = Me.txt
  loc_16C3A84:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HA), var_12C)
  loc_16C3A8C:   var_12C.Text = CStr(var_1EC.Fields.Item("MobileNo").Value)
  loc_16C3AD8:   Set var_128 = Me.txt
  loc_16C3ADE:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H14), var_12C)
  loc_16C3AE6:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl1")))
  loc_16C3B30:   Set var_128 = Me.txt
  loc_16C3B36:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H15), var_12C)
  loc_16C3B3E:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl2")))
  loc_16C3B88:   Set var_128 = Me.txt
  loc_16C3B8E:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H16), var_12C)
  loc_16C3B96:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl3")))
  loc_16C3BE0:   Set var_128 = Me.txt
  loc_16C3BE6:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H17), var_12C)
  loc_16C3BEE:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl4")))
  loc_16C3C38:   Set var_128 = Me.txt
  loc_16C3C3E:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H18), var_12C)
  loc_16C3C46:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl5")))
  loc_16C3C90:   Set var_128 = Me.txt
  loc_16C3C96:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H19), var_12C)
  loc_16C3C9E:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl6")))
  loc_16C3CE8:   Set var_128 = Me.txt
  loc_16C3CEE:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H1A), var_12C)
  loc_16C3CF6:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MenuSpl7")))
  loc_16C3D40:   Set var_128 = Me.txt
  loc_16C3D46:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HD), var_12C)
  loc_16C3D4E:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Func_Name")))
  loc_16C3D98:   Set var_128 = Me.txt
  loc_16C3D9E:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HD), var_12C)
  loc_16C3DA6:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("EventName")))
  loc_16C3DF0:   Set var_128 = Me.txt
  loc_16C3DF6:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HE), var_12C)
  loc_16C3DFE:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("MarketSeg")))
  loc_16C3E48:   Set var_128 = Me.txt
  loc_16C3E4E:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HE), var_12C)
  loc_16C3E56:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("SegmentName")))
  loc_16C3EA0:   Set var_128 = Me.txt
  loc_16C3EA6:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HF), var_12C)
  loc_16C3EAE:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("BussSource")))
  loc_16C3EF8:   Set var_128 = Me.txt
  loc_16C3EFE:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HF), var_12C)
  loc_16C3F06:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("BussSourcename")))
  loc_16C3F50:   Set var_128 = Me.txt
  loc_16C3F56:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HC), var_12C)
  loc_16C3F5E:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("companyCode")))
  loc_16C3FA8:   Set var_128 = Me.txt
  loc_16C3FAE:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&HC), var_12C)
  loc_16C3FB6:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("CompanyName")))
  loc_16C4000:   Set var_128 = Me.txt
  loc_16C4006:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H23), var_12C)
  loc_16C400E:   var_12C.Tag = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("BookingAgent")))
  loc_16C4058:   Set var_128 = Me.txt
  loc_16C405E:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H23), var_12C)
  loc_16C4066:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("BookingAgentName")))
  loc_16C40B0:   Set var_128 = Me.txt
  loc_16C40B6:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H1B), var_12C)
  loc_16C40BE:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("HouseKeep")))
  loc_16C4108:   Set var_128 = Me.txt
  loc_16C410E:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H1C), var_12C)
  loc_16C4116:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("FrontOff")))
  loc_16C4160:   Set var_128 = Me.txt
  loc_16C4166:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H1D), var_12C)
  loc_16C416E:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Engg")))
  loc_16C41B8:   Set var_128 = Me.txt
  loc_16C41BE:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H1E), var_12C)
  loc_16C41C6:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Security")))
  loc_16C4210:   Set var_128 = Me.txt
  loc_16C4216:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H1F), var_12C)
  loc_16C421E:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Chef")))
  loc_16C4268:   Set var_128 = Me.Txt1
  loc_16C426E:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H20), var_12C)
  loc_16C4276:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Board")))
  loc_16C42DC:   Set var_128 = Me.txt
  loc_16C42E2:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H10), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("ExpAtt")), "0")))
  loc_16C42EA:   var_12C.Text = 1
  loc_16C4356:   Set var_128 = Me.txt
  loc_16C435C:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H11), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("GuarAtt")), "0")), 1)
  loc_16C4364:   var_12C.Text = 1
  loc_16C43D0:   Set var_128 = Me.txt
  loc_16C43D6:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H12), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("CoverRate")), "0.00")), 1)
  loc_16C43DE:   var_12C.Text = 1
  loc_16C4434:   Call 0.Method_Proc_123_73_16C493C0 (CInt(&H21), var_12C)
  loc_16C443C:   var_12C.Text = Proc_6_38_E69628(CVar(var_1EC.Fields.Item("Remark")), 1)
  loc_16C4452:   Set var_1EC = Nothing 
  loc_16C4465:   Me.FGrid.Redraw = False
  loc_16C4480:   Me.FGrid.Rows = 1
  loc_16C448A:   var_92 = 1
  loc_16C44CC:   var_E0 = "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & Me.Fields.Item("SearchCode").Value 
  loc_16C44E3:   unk_572803.Execute CStr(var_E0 & "'"), var_124, -1
  loc_16C44EE:   Set var_88 = Me.txt
  loc_16C451C:   If (var_88.RecordCount > 0) Then
  loc_16C451F:     ' Referenced from: 16C485C
  loc_16C452E:     If Not(var_88.EOF) Then
  loc_16C4531:       var_AC = vbNullString
  loc_16C453B:       Set var_98 = Me.FGrid
  loc_16C4557:       var_AC = CVar(CLng(var_92)) 'Long
  loc_16C455F:       var_F0 = CVar(CLng(0)) 'Long
  loc_16C4569:       var_C0 = CVar(CStr(var_92)) 'String
  loc_16C4570:       LateIdCallSt
  loc_16C457F:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_16C4587:       var_114 = CVar(CLng(7)) 'Long
  loc_16C45B7:       var_E0 = CVar(CStr(var_88.Fields.Item("VenuCode").Value)) 'String
  loc_16C45BE:       LateIdCallSt
  loc_16C460D:       var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VenuName")), CVar(CLng(1)), CVar(CLng(var_92)), Me.FGrid, var_E0, CVar(CLng(1)), CVar(CLng(var_92)))) 'String
  loc_16C4614:       LateIdCallSt
  loc_16C4638:       Me.FGrid.Col = CVar(CLng(2))
  loc_16C4653:       Me.FGrid.Row = CVar(CLng(var_92))
  loc_16C466B:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_16C4685:       Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_16C4691:       var_AC = CVar(CLng(var_92)) 'Long
  loc_16C4699:       var_F0 = CVar(CLng(2)) 'Long
  loc_16C469E:       var_140 = "ü"
  loc_16C46A7:       LateIdCallSt
  loc_16C46B3:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_16C46BB:       var_114 = CVar(CLng(3)) 'Long
  loc_16C46EB:       var_E0 = CVar(CStr(var_88.Fields.Item("FromDate").Value)) 'String
  loc_16C46F2:       LateIdCallSt
  loc_16C470C:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_16C4714:       var_114 = CVar(CLng(5)) 'Long
  loc_16C4744:       var_E0 = CVar(CStr(var_88.Fields.Item("ToDate").Value)) 'String
  loc_16C474B:       LateIdCallSt
  loc_16C4781:       var_F0 = CVar(CLng(var_92)) 'Long
  loc_16C4789:       var_140 = CVar(CLng(4)) 'Long
  loc_16C47B6:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("FromTime")), "HH:MM"))) 'String
  loc_16C47BD:       LateIdCallSt
  loc_16C47F3:       var_F0 = CVar(CLng(var_92)) 'Long
  loc_16C47FB:       var_140 = CVar(CLng(6)) 'Long
  loc_16C4828:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("ToTime")), "HH:MM"))) 'String
  loc_16C482F:       LateIdCallSt
  loc_16C4847:       Set var_1F4 = Nothing 
  loc_16C4851:       var_92 = (var_92 + 1)
  loc_16C4857:       var_88.MoveNext
  loc_16C485C:       GoTo loc_16C451F
  loc_16C485F:     End If
  loc_16C4872:     Me.FGrid.FixedRows = 1
  loc_16C487A:   End If
  loc_16C4888:   Me.FGrid.Redraw = True
  loc_16C4896:   If (var_92 = 1) Then
  loc_16C48AC:     Me.FGrid.Rows = 1
  loc_16C48D2:     var_C0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_92, var_1F4, var_124, 1, 1, var_140))) 'String
  loc_16C48DA:     Set var_B0 = Me.FGrid
  loc_16C4907:     Me.FGrid.FixedRows = 1
  loc_16C490F:   End If
  loc_16C4912: Else
  loc_16C4912:   Call Proc_123_75_FC8204(FGrid.DispID_10000, var_C0, var_F0, var_1F4, var_124)
  loc_16C4917: End If
  loc_16C4917: Call Proc_123_77_FB7CB8(1, 1)
  loc_16C4921: Set var_88 = Nothing
  loc_16C4929: Set var_8C = Nothing
  loc_16C4931: Set var_90 = Nothing
  loc_16C4934: Exit Sub
  loc_16C4935: ' Referenced from: 16C2F8C
  loc_16C4935: Proc_6_60_E63754(var_140)
  loc_16C493A: Exit Sub
End Sub

Public Sub Proc_123_74_F950B8
  'Data Table: 5727EC
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_572803 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F94F79: Set var_9C = Me.TopCtrl1
  loc_F94F7F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_F94F87: var_B0 = CStr()
  loc_F94F98: If (var_B0 = "Add") Then
  loc_F94FC8:   Set var_9C = Me.txt
  loc_F94FCE:   Call 0.Method_Proc_123_74_F950B80 (CInt(&H22), var_B4, var_B0, "Select Count(*) From HallBook Where DocID='", var_AC, -1)
  loc_F94FEF:   unk_572803.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F94FFF:    = var_D4.Item()
  loc_F95007:    = var_E8.Value
  loc_F95034:   If (var_B4.Text.Fields > 0) Then
  loc_F9503D:     Call 0.Method_arg_50 (var_B0)
  loc_F9505E:     MsgBox("Duplicate FP. No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F95074:     Call Proc_123_79_10ECAF8(MemVar_1F95044)
  loc_F95087:     Set var_9C = Me.txt
  loc_F9508D:     Call 0.Method_Proc_123_74_F950B80 (CInt(&H22), var_B4)
  loc_F95095:     var_B4.Text = var_B0
  loc_F950A9:     Proc_123_74_F950B8 = 0
  loc_F950AF:   End If
  loc_F950AF: End If
  loc_F950AF: Proc_123_74_F950B8 = var_B0
End Sub

Public Sub Proc_123_75_FC8204
  'Data Table: 5727EC
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_E8 As String
  Dim var_108 As Variant
  loc_FC8059: Me.LblVPrefix.Caption = vbNullString
  loc_FC806F: Set var_8C = Me.txt
  loc_FC8075: Call 0.Method_Proc_123_75_FC8204C (var_8E, var_86)
  loc_FC8085: For var_92 =  To CByte((var_8E - 2)): CByte(0) = var_92 'Byte
  loc_FC809B:   Set var_8C = Me.txt
  loc_FC80A1:   Call 0.Method_Proc_123_75_FC82040 (CInt(var_86), var_98)
  loc_FC80A9:   var_98.Text = vbNullString
  loc_FC80C5:   Set var_8C = Me.txt
  loc_FC80CB:   Call 0.Method_Proc_123_75_FC82040 (CInt(var_86), var_98)
  loc_FC80D3:   var_98.Tag = vbNullString
  loc_FC80E2: Next var_92 'Byte
  loc_FC80F6: Set var_8C = Me.Txt1
  loc_FC80FC: Call 0.Method_Proc_123_75_FC82040 (CInt(&H20), var_98)
  loc_FC8104: var_98.Text = vbNullString
  loc_FC8128: Me.LblBillRemark.Caption = vbNullString
  loc_FC8130: Call Proc_123_70_11146EC(0)
  loc_FC8135: var_A8 = 1
  loc_FC8141: var_C8 = CVar(CLng(4)) 'Long
  loc_FC8146: var_E8 = "00:00"
  loc_FC8150: Set var_8C = Me.FGrid
  loc_FC8156: LateIdCallSt
  loc_FC8161: var_A8 = 1
  loc_FC817C: Set var_8C = Me.FGrid
  loc_FC8182: LateIdCallSt
  loc_FC81A0: Me.FGrid.Rows = 1
  loc_FC81C6: var_108 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), Me.FGrid, "00:00", CVar(CLng(6))))) 'String
  loc_FC81CE: Set var_98 = Me.FGrid
  loc_FC81FB: Me.FGrid.FixedRows = 1
  loc_FC8203: Exit Sub
End Sub

Public Sub Proc_123_76_EEEF60(arg_C) 'EEEF60
  'Data Table: 5727EC
  Dim var_98 As TextBox
  loc_EEEE9A: Set var_8C = Me.txt
  loc_EEEEA0: Call 0.Method_Proc_123_76_EEEF60C (var_8E, var_86)
  loc_EEEEB0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EEEEC6:   Set var_8C = Me.txt
  loc_EEEECC:   Call 0.Method_Proc_123_76_EEEF600 (CInt(var_86), var_98)
  loc_EEEED4:   var_98.Enabled = arg_C
  loc_EEEEE3: Next var_92 'Byte
  loc_EEEEF7: Set var_8C = Me.Txt1
  loc_EEEEFD: Call 0.Method_Proc_123_76_EEEF600 (CInt(&H20), var_98)
  loc_EEEF05: var_98.Enabled = arg_C
  loc_EEEF1E: Set var_8C = Me.txt
  loc_EEEF24: Call 0.Method_Proc_123_76_EEEF600 (CInt(&H22), var_98)
  loc_EEEF2C: var_98.Enabled = False
  loc_EEEF45: Set var_8C = Me.txt
  loc_EEEF4B: Call 0.Method_Proc_123_76_EEEF600 (CInt(2), var_98)
  loc_EEEF53: var_98.Enabled = False
  loc_EEEF5F: Exit Sub
End Sub

Public Sub Proc_123_77_FB7CB8
  'Data Table: 5727EC
  loc_FB7B20: If (CBool(Me.DGVenue.Visible) = &HFF) Then
  loc_FB7B32:   Me.DGVenue.Visible = False
  loc_FB7B3A: End If
  loc_FB7B56: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_FB7B68:   Me.DGMarketSeg.Visible = False
  loc_FB7B70: End If
  loc_FB7B8C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB7B9E:   Me.FGPoint.Visible = False
  loc_FB7BA6: End If
  loc_FB7BC2: If (CBool(Me.DGSource.Visible) = &HFF) Then
  loc_FB7BD4:   Me.DGSource.Visible = False
  loc_FB7BDC: End If
  loc_FB7BF8: If (CBool(Me.DGFuncType.Visible) = &HFF) Then
  loc_FB7C0A:   Me.DGFuncType.Visible = False
  loc_FB7C12: End If
  loc_FB7C2E: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_FB7C40:   Me.DGParty.Visible = False
  loc_FB7C48: End If
  loc_FB7C64: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FB7C76:   Me.DGCompany.Visible = False
  loc_FB7C7E: End If
  loc_FB7C9A: If (CBool(Me.DGBookingAgent.Visible) = &HFF) Then
  loc_FB7CAC:   Me.DGBookingAgent.Visible = False
  loc_FB7CB4: End If
  loc_FB7CB4: Exit Sub
End Sub

Public Sub Proc_123_78_F0A49C
  'Data Table: 5727EC
  loc_F0A3C0: Call Proc_123_77_FB7CB8()
  loc_F0A3D0: Set var_88 = Me.txt
  loc_F0A3D6: Call 0.Method_Proc_123_78_F0A49C0 (CInt(1))
  loc_F0A3FF: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0A402:   Exit Sub
  loc_F0A403: End If
  loc_F0A40E: Set var_88 = Me.txt
  loc_F0A414: Call 0.Method_Proc_123_78_F0A49C0 (CInt(0), var_8C)
  loc_F0A43D: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0A440:   Exit Sub
  loc_F0A441: End If
  loc_F0A478: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0A47B:   Call TopCtrl1_UnknownEvent_16()
  loc_F0A483: Else
  loc_F0A489:   Call 0.Method_arg_1E8 (var_88)
  loc_F0A491:   Call var_88.SetFocus
  loc_F0A49A: End If
  loc_F0A49A: Exit Sub
End Sub

Public Sub Proc_123_79_10ECAF8
  'Data Table: 5727EC
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
  loc_10EC820: var_90 = global_104
  loc_10EC837: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10EC868: Set var_A8 = Me.txt
  loc_10EC86E: Call 0.Method_Proc_123_79_10ECAF80 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10EC87D: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10EC885: var_EC = -1 & var_CC 
  loc_10EC899: Me.txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10EC8A4: Set var_8C = var_134
  loc_10EC8E0: If (var_8C.RecordCount > 0) Then
  loc_10EC91F:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10EC953:     global_108 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10EC97E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10EC993:     var_CC = (var_AC.Value + 1)
  loc_10EC99B:     global_112 = CInt(var_CC)
  loc_10EC9AC:   End If
  loc_10EC9AC: End If
  loc_10EC9D7: var_BC = Space((5 - Len(var_90)))
  loc_10EC9DF: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10EC9F3: var_EC = Space((5 - Len(global_108)))
  loc_10EC9FB: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10ECA08: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_108))
  loc_10ECA21: var_14C = Space((8 - Len(CStr(global_112))))
  loc_10ECA29: var_15C = (var_130 + var_14C)
  loc_10ECA38: var_17C = (var_15C + CVar(CStr(global_112)))
  loc_10ECA43: global_100 = CStr(var_17C)
  loc_10ECA79: Me.LblVPrefix.Caption = global_108
  loc_10ECA92: Set var_A8 = Me.txt
  loc_10ECA98: Call 0.Method_Proc_123_79_10ECAF80 (CInt(&H22), var_AC)
  loc_10ECAA0: var_AC.Text = global_100
  loc_10ECAC2: Set var_A8 = Me.txt
  loc_10ECAC8: Call 0.Method_Proc_123_79_10ECAF80 (CInt(0), var_AC)
  loc_10ECAD0: var_AC.Text = CStr(global_112)
  loc_10ECAE5: var_88 = global_100
  loc_10ECAED: Set var_8C = Nothing
  loc_10ECAF0: Proc_123_79_10ECAF8 = global_112
End Sub

Public Sub Proc_123_80_10B5B58(arg_C, arg_10, arg_14) '10B5B58
  'Data Table: 5727EC
  Dim unk_572803 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B58C6: If (arg_C = "HSBK") Then
  loc_10B58ED:   unk_572803.Execute "Select Distinct DocId,V_Type,V_No From HallBook Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B58F8:   Set var_8C = var_C4
  loc_10B590B:   var_94 = "Hall Booking"
  loc_10B5911: Else
  loc_10B5916:   Proc_123_80_10B5B58 = &HFF
  loc_10B591C: End If
  loc_10B5930: If (var_8C.RecordCount > 0) Then
  loc_10B5933:   ' Referenced from: 10B5AAC
  loc_10B5942:   If Not(var_8C.EOF) Then
  loc_10B594D:     If (var_90 = vbNullString) Then
  loc_10B5990:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B5997:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B59C9:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B59EE:     Else
  loc_10B5A2A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B5A4A:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B5A77:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B5A7C:       var_90 = CStr(var_11C)
  loc_10B5AA4:     End If
  loc_10B5AA7:     var_8C.MoveNext
  loc_10B5AAC:     GoTo loc_10B5933
  loc_10B5AAF:   End If
  loc_10B5AB5:   Call 0.Method_arg_50 (var_138)
  loc_10B5B11:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B5B14:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B5B43:   Set var_8C = Nothing
  loc_10B5B46:   Proc_123_80_10B5B58 = 0
  loc_10B5B4C: End If
  loc_10B5B51: Proc_123_80_10B5B58 = &HFF
End Sub

Public Sub Proc_123_81_FBF508
  'Data Table: 5727EC
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBF38B: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBF390:   var_92 = 1 'Byte
  loc_FBF394: End If
  loc_FBF39D: Set var_98 = Me.TxtGrid
  loc_FBF3A3: Call 0.Method_Proc_123_81_FBF5080 (1, var_B0)
  loc_FBF3C6: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBF3FA: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBF41E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBF421:     GoTo loc_FBF4F3
  loc_FBF424:   End If
  loc_FBF428:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBF452:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBF45C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBF491:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBF4B5:     MsgBox("Duplicate Venue Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBF4CE:     Set var_98 = Me.TxtGrid
  loc_FBF4D4:     Call 0.Method_Proc_123_81_FBF5080 (1, var_B0, CVar(CLng(var_92)))
  loc_FBF4DC:     var_B0.SetFocus
  loc_FBF4ED:     Proc_123_81_FBF508 = 0
  loc_FBF4F3:     ' Referenced from: FBF421
  loc_FBF4F3:   End If
  loc_FBF4F6: Next var_D4 'Integer
  loc_FBF500: Proc_123_81_FBF508 = &HFF
End Sub

Public Sub Proc_123_82_138EB34
  'Data Table: 5727EC
  Dim var_A0 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
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
  Dim var_1E4 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_238 As Variant
  Dim var_24C As String
  Dim var_270 As Variant
  Dim var_86 As Integer
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_15C As Integer
  Dim var_2BC As String
  Dim var_13C As String
  Dim unk_572803 As Connection15
  loc_138E2BF: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E2C7: var_E0 = CVar(CLng(7)) 'Long
  loc_138E2E1: var_108 = CStr(Me.FGrid.TextMatrix))
  loc_138E2FC: var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E304: var_14C = CVar(CLng(3)) 'Long
  loc_138E31E: var_174 = CStr(Me.FGrid.TextMatrix))
  loc_138E33A: var_198 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E342: var_1B8 = CVar(CLng(4)) 'Long
  loc_138E351: var_1DC = Me.FGrid.TextMatrix)
  loc_138E35C: var_1E0 = CStr(var_1DC)
  loc_138E36F: var_1F4 = Me.FGrid.Row
  loc_138E378: var_204 = CVar(CLng(var_1F4)) 'Long
  loc_138E380: var_224 = CVar(CLng(5)) 'Long
  loc_138E389: Set var_238 = Me.FGrid
  loc_138E39A: var_24C = CStr(var_238.TextMatrix))
  loc_138E3B6: var_270 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E41C: If (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_138E432:   var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E43A:   var_14C = CVar(CLng(5)) 'Long
  loc_138E443:   Set var_160 = Me.FGrid
  loc_138E449:   var_170 = var_160.TextMatrix)
  loc_138E468:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E470:   var_E0 = CVar(CLng(3)) 'Long
  loc_138E493:   var_174 = CStr(var_170)
  loc_138E4B6:   If (CDate(CStr(Me.FGrid.TextMatrix))) > CDate(var_174)) Then
  loc_138E4BE:     Proc_123_82_138EB34 = 0
  loc_138E4C4:   End If
  loc_138E4D2:   Set var_10C = Me.txt
  loc_138E4D8:   Call 0.Method_Proc_123_82_138EB340 (CInt(1), var_160, var_174, var_E0, var_C0, var_170, var_14C)
  loc_138E4E0:   var_12C = var_160.Text
  loc_138E4F3:   Set var_1E4 = Me.txt
  loc_138E4F9:   Call 0.Method_Proc_123_82_138EB340 (CInt(1), var_238, var_24C, var_270, (var_224 And (var_24C <> vbNullString)))
  loc_138E501:   var_204 = var_238.Text
  loc_138E519:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E521:   var_E0 = CVar(CLng(3)) 'Long
  loc_138E530:   var_104 = Me.FGrid.TextMatrix)
  loc_138E53B:   var_108 = CStr(var_104)
  loc_138E550:   var_11C = Me.FGrid.Row
  loc_138E559:   var_12C = CVar(CLng(var_11C)) 'Long
  loc_138E570:   var_170 = Me.FGrid.TextMatrix)
  loc_138E5B0:   If (CVar(CLng(5)) Or (CDate(CStr(var_170)) < CDate(var_24C))) Then
  loc_138E5D1:     MsgBox("Check Booking Entry Date", &H40, var_104, var_11C, var_170)
  loc_138E5E1:     Proc_123_82_138EB34 = 0
  loc_138E5E7:   End If
  loc_138E5FA:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E602:   var_E0 = CVar(CLng(3)) 'Long
  loc_138E623:   var_174 = CStr(Me.FGrid.TextMatrix)) & " "
  loc_138E639:   var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E664:   var_90 = CDate(CVar(CLng(4)) & CStr(Me.FGrid.TextMatrix)))
  loc_138E69B:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E6A3:   var_E0 = CVar(CLng(5)) 'Long
  loc_138E6AC:   Set var_F4 = Me.FGrid
  loc_138E6C4:   var_174 = CStr(var_F4.TextMatrix)) & " "
  loc_138E6DA:   var_12C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E6EB:   Set var_160 = Me.FGrid
  loc_138E705:   var_98 = CDate(CVar(CLng(6)) & CStr(var_160.TextMatrix)))
  loc_138E72D:   Set var_A0 = Me.TopCtrl1
  loc_138E733:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_138E73B:   var_108 = CStr(var_12C)
  loc_138E74C:   If (var_108 = "Add") Then
  loc_138E752:     var_9C = vbNullString
  loc_138E758:   Else
  loc_138E769:     Set var_A0 = Me.txt
  loc_138E76F:     Call 0.Method_Proc_123_82_138EB340 (CInt(&H22), var_F4, var_108, "S.FPDocid<>'", var_174, var_E0, var_C0)
  loc_138E777:     var_90 = var_F4.Text
  loc_138E787:     var_9C = var_12C & var_108 & "' AND "
  loc_138E798:   End If
  loc_138E7AB:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E7B3:   var_E0 = CVar(CLng(7)) 'Long
  loc_138E7C2:   var_104 = Me.FGrid.TextMatrix)
  loc_138E7D4:   var_15C = 0
  loc_138E811:   var_2BC = "Select COunt(*) From VenueOCC S WHERE LogSite_Code='" & MemVar_1F95078 & "' And " & var_9C & " VenuCode='" & CStr(var_104)
  loc_138E818:   var_11C = CVar(var_2BC & "' and '") 'String
  loc_138E822:   var_170 = var_11C & CDate(var_90) 
  loc_138E826:   var_13C = "'  between FromDate+Convert(smalldatetime,FromTime) and ToDate+convert(smalldatetime,ToTime) "
  loc_138E839:   unk_572803.Execute CStr(var_170 & var_13C), var_1DC, -1
  loc_138E841:   var_10C = var_10C.Fields
  loc_138E849:   var_15C = var_160.Item(var_160)
  loc_138E851:   var_178 = var_178.Value
  loc_138E890:   If (var_1F4 > 0) Then
  loc_138E895:     var_86 = 0
  loc_138E8B7:     MsgBox(CVar("Hall Already Booked !" & vbCrLf & "Check From Booking Date and Time"), &H40, var_104, var_11C, var_170)
  loc_138E8DC:     Me.FGrid.Col = CVar(CLng(3))
  loc_138E8F7:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E8FF:     var_E0 = CVar(CLng(5)) 'Long
  loc_138E904:     var_12C = vbNullString
  loc_138E90E:     Set var_F4 = Me.FGrid
  loc_138E914:     LateIdCallSt
  loc_138E92A:     Set var_A0 = Me.FGrid
  loc_138E93B:     Proc_123_82_138EB34 = FGrid.DispID_8001
  loc_138E941:   End If
  loc_138E954:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138E95C:   var_E0 = CVar(CLng(7)) 'Long
  loc_138E96B:   var_104 = Me.FGrid.TextMatrix)
  loc_138E97D:   var_15C = 0
  loc_138E9BA:   var_2BC = "Select COunt(*) From VenueOCC S WHERE LogSite_Code='" & MemVar_1F95078 & "' And " & var_9C & " VenuCode='" & CStr(var_104)
  loc_138E9C1:   var_11C = CVar(var_2BC & "' and '") 'String
  loc_138E9CB:   var_170 = var_11C & CDate(var_98) 
  loc_138E9CF:   var_13C = "'  between FromDate+Convert(smalldatetime,FromTime) and ToDate+Convert(smalldatetime,ToTime) "
  loc_138E9E2:   unk_572803.Execute CStr(var_170 & var_13C), var_1DC, -1
  loc_138E9EA:   var_10C = var_10C.Fields
  loc_138E9F2:   var_15C = var_160.Item(var_160)
  loc_138E9FA:   var_178 = var_178.Value
  loc_138EA39:   If (var_1F4 > 0) Then
  loc_138EA3E:     var_86 = 0
  loc_138EA60:     MsgBox(CVar("Hall Already Booked !" & vbCrLf & "Check To Booking Date and Time"), &H40, var_104, var_11C, var_170)
  loc_138EA85:     Me.FGrid.Col = CVar(CLng(5))
  loc_138EAA0:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_138EAA8:     var_E0 = CVar(CLng(5)) 'Long
  loc_138EAAD:     var_12C = vbNullString
  loc_138EAB7:     Set var_F4 = Me.FGrid
  loc_138EABD:     LateIdCallSt
  loc_138EAD3:     Set var_A0 = Me.FGrid
  loc_138EAE4:     Proc_123_82_138EB34 = FGrid.DispID_8001
  loc_138EAEA:   End If
  loc_138EAF1:   If (var_90 >= var_98) Then
  loc_138EB0D:     MsgBox("Check Booking Dates and Times", &H40, var_104, var_11C, var_170)
  loc_138EB22:     Proc_123_82_138EB34 = 0
  loc_138EB28:   End If
  loc_138EB28: End If
  loc_138EB2D: Proc_123_82_138EB34 = &HFF
End Sub

Public Sub Proc_123_83_105D084(arg_C) '105D084
  'Data Table: 5727EC
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CC As Variant
  Dim var_A4 As Variant
  Dim var_11C As Variant
  loc_105CE24: If (arg_C = 0) Then
  loc_105CE3A:   var_A0 = CLng(Me.FGrid.Col)
  loc_105CE4A:   If (var_A0 = CLng(6)) Then
  loc_105CE57:     Set var_8C = Me.txtMEd
  loc_105CE5D:     Call 0.Method_Proc_123_83_105D0840 (arg_C, var_A4)
  loc_105CE77:     If (IsDate(CVar(var_A4)) = 0) Then
  loc_105CE7F:       Proc_123_83_105D084 = 0
  loc_105CE85:     End If
  loc_105CE98:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105CEBF:     Set var_8C = Me.txtMEd
  loc_105CEC5:     Call 0.Method_Proc_123_83_105D0840 (arg_C, var_A4, CVar(CLng(Me.FGrid.Col)))
  loc_105CEE3:     LateIdCallSt
  loc_105CF06:     Call Proc_123_82_138EB34(var_132, Me.FGrid, CVar(CStr(var_A4.defaultText)))
  loc_105CF11:     If (var_132 = 0) Then
  loc_105CF19:       Proc_123_83_105D084 = 0
  loc_105CF1F:     End If
  loc_105CF22:   Else
  loc_105CF29:     If (var_A0 = CLng(4)) Then
  loc_105CF36:       Set var_8C = Me.txtMEd
  loc_105CF3C:       Call 0.Method_Proc_123_83_105D0840 (arg_C, var_A4, var_CC)
  loc_105CF56:       If (IsDate(CVar(var_A4)) = 0) Then
  loc_105CF5E:         Proc_123_83_105D084 = 0
  loc_105CF64:       End If
  loc_105CF77:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105CF9E:       Set var_8C = Me.txtMEd
  loc_105CFA4:       Call 0.Method_Proc_123_83_105D0840 (arg_C, var_A4, CVar(CLng(Me.FGrid.Col)))
  loc_105CFB4:       var_11C = CVar(CStr(var_A4.defaultText)) 'String
  loc_105CFC2:       LateIdCallSt
  loc_105D006:       Set var_A4 = Me.FGrid
  loc_105D030:       If (CStr(var_A4.TextMatrix)) <> vbNullString) Then
  loc_105D036:         Call Proc_123_82_138EB34(var_132, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_105D041:         If (var_132 = 0) Then
  loc_105D049:           Proc_123_83_105D084 = 0
  loc_105D04F:         End If
  loc_105D04F:       End If
  loc_105D04F:     End If
  loc_105D04F:   End If
  loc_105D04F: End If
  loc_105D04F: var_CC = False
  loc_105D05D: Set var_8C = Me.txtMEd
  loc_105D063: Call 0.Method_Proc_123_83_105D0840 (0, var_A4, var_CC, var_11C)
  loc_105D06B: var_A4.Visible = var_CC
  loc_105D07C: Proc_123_83_105D084 = &HFF
End Sub

Public Sub Proc_123_84_14C36F0
  'Data Table: 5727EC
  Dim var_90 As String
  Dim var_98 As Variant
  Dim var_A4 As String
  Dim unk_572803 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_D4 As Recordset15
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Variant
  Dim var_148 As Integer
  Dim var_108 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_F8 As Variant
  Dim var_CC As Variant
  Dim var_9C As String
  Dim var_164 As TextBox
  Dim var_138 As Variant
  Dim var_8A As Integer
  Dim var_128 As Variant
  loc_14C29E0: var_90 = "SELECT  BookingInquiry.Code, BookingInquiry.CatType, BookingInquiry.PartyName, BookingInquiry.Add1, BookingInquiry.Add2, BookingInquiry.City, BookingInquiry.PhoneR, BookingInquiry.PhoneO, BookingInquiry.MobileNo, BookingInquiry.FaxNo, BookingInquiry.ConPerson, BookingInquiry.BookedBy, BookingInquiry.FuncType AS FuncType, BookingInquiry.FuncDate, BookingInquiry.HandledBy, BookingInquiry.BussSource AS BussSource, BookingInquiry.Status, BookingInquiry.MarketSeg AS MarketSeg, BookingInquiry.Pax, BookingInquiry.GurrPax, BookingInquiry.RatePax, BookingInquiry.VenueCode, BookingInquiry.Site_Code FROM BookingInquiry WHERE LogSite_Code='" & MemVar_1F95078
  loc_14C29F8: Set var_94 = Me.txt
  loc_14C29FE: Call 0.Method_Proc_123_84_14C36F00 (CInt(3), var_98, var_9C, var_90 & "' And PartyName='")
  loc_14C2A06: var_C8 = var_98.Text
  loc_14C2A0F: var_A4 = -1 & var_9C
  loc_14C2A1F: unk_572803.Execute var_A4 & "' and BookingInquiry.code not in (select InquiryCode from HallBook)", var_CC, 
  loc_14C2A2A: Set var_88 = var_CC
  loc_14C2A5A: If (var_88.RecordCount > 0) Then
  loc_14C2A60:   Set var_D4 = var_88 
  loc_14C2A9D:   Set var_CC = Me.txt
  loc_14C2AA3:   Call 0.Method_Proc_123_84_14C36F00 (CInt(3), var_D8)
  loc_14C2AAB:   var_D8.Tag = CStr(var_D4.Fields.Item("Code").Value)
  loc_14C2AFA:   Set var_CC = Me.txt
  loc_14C2B00:   Call 0.Method_Proc_123_84_14C36F00 (CInt(3), var_D8)
  loc_14C2B08:   var_D8.Text = CStr(var_D4.Fields.Item("PartyName").Value)
  loc_14C2B54:   Set var_CC = Me.txt
  loc_14C2B5A:   Call 0.Method_Proc_123_84_14C36F00 (CInt(4), var_D8)
  loc_14C2B62:   var_D8.Text = Proc_6_38_E69628(CVar(var_D4.Fields.Item("Add1")))
  loc_14C2BAC:   Set var_CC = Me.txt
  loc_14C2BB2:   Call 0.Method_Proc_123_84_14C36F00 (CInt(5), var_D8)
  loc_14C2BBA:   var_D8.Text = Proc_6_38_E69628(CVar(var_D4.Fields.Item("Add2")))
  loc_14C2C04:   Set var_CC = Me.txt
  loc_14C2C0A:   Call 0.Method_Proc_123_84_14C36F00 (CInt(6), var_D8)
  loc_14C2C12:   var_D8.Text = Proc_6_38_E69628(CVar(var_D4.Fields.Item("City")))
  loc_14C2C5C:   Set var_CC = Me.txt
  loc_14C2C62:   Call 0.Method_Proc_123_84_14C36F00 (CInt(9), var_D8)
  loc_14C2C6A:   var_D8.Text = Proc_6_38_E69628(CVar(var_D4.Fields.Item("PhoneO")))
  loc_14C2CB4:   Set var_CC = Me.txt
  loc_14C2CBA:   Call 0.Method_Proc_123_84_14C36F00 (CInt(8), var_D8)
  loc_14C2CC2:   var_D8.Text = Proc_6_38_E69628(CVar(var_D4.Fields.Item("PhoneR")))
  loc_14C2D0C:   Set var_CC = Me.txt
  loc_14C2D12:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&HA), var_D8)
  loc_14C2D1A:   var_D8.Text = Proc_6_38_E69628(CVar(var_D4.Fields.Item("MobileNo")))
  loc_14C2D45:   var_98 = var_D4.Fields.Item("FuncType")
  loc_14C2D64:   Set var_CC = Me.txt
  loc_14C2D6A:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&HD), var_D8)
  loc_14C2D72:   var_D8.Tag = Proc_6_38_E69628(CVar(var_98))
  loc_14C2D94:   Set var_94 = Me.txt
  loc_14C2D9A:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&HD), var_98)
  loc_14C2DCE:   If CBool(Trim(CVar(var_98.Tag)) <> vbNullString) Then
  loc_14C2DD4:     var_148 = 0
  loc_14C2E30:     unk_572803.Execute CStr("SELECT NAME from FunctionType WHERE Code='" & var_D4.Fields.Item("FuncType").Value & "'"), var_138, -1
  loc_14C2E38:     var_CC = var_CC.Fields
  loc_14C2E40:     var_148 = var_D8.Item(var_D8)
  loc_14C2E5F:     Set var_160 = Me.txt
  loc_14C2E65:     Call 0.Method_Proc_123_84_14C36F00 (CInt(&HD), var_164)
  loc_14C2E6D:     var_164.Text = Proc_6_38_E69628(CVar(var_14C))
  loc_14C2E95:   End If
  loc_14C2EAC:   var_98 = var_D4.Fields.Item("BussSource")
  loc_14C2ECB:   Set var_CC = Me.txt
  loc_14C2ED1:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&HF), var_D8)
  loc_14C2ED9:   var_D8.Tag = Proc_6_38_E69628(CVar(var_98))
  loc_14C2EFB:   Set var_94 = Me.txt
  loc_14C2F01:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&HF), var_98)
  loc_14C2F35:   If CBool(Trim(CVar(var_98.Tag)) <> vbNullString) Then
  loc_14C2F3B:     var_148 = 0
  loc_14C2F97:     unk_572803.Execute CStr("SELECT NAME from BussSource WHERE Code='" & var_D4.Fields.Item("BussSource").Value & "'"), var_138, -1
  loc_14C2F9F:     var_CC = var_CC.Fields
  loc_14C2FA7:     var_148 = var_D8.Item(var_D8)
  loc_14C2FC6:     Set var_160 = Me.txt
  loc_14C2FCC:     Call 0.Method_Proc_123_84_14C36F00 (CInt(&HF), var_164)
  loc_14C2FD4:     var_164.Text = Proc_6_38_E69628(CVar(var_14C), var_14C)
  loc_14C2FFC:   End If
  loc_14C3013:   var_98 = var_D4.Fields.Item("MarketSeg")
  loc_14C3032:   Set var_CC = Me.txt
  loc_14C3038:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&HE), var_D8)
  loc_14C3040:   var_D8.Tag = Proc_6_38_E69628(CVar(var_98))
  loc_14C3062:   Set var_94 = Me.txt
  loc_14C3068:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&HE), var_98)
  loc_14C309C:   If CBool(Trim(CVar(var_98.Tag)) <> vbNullString) Then
  loc_14C30A2:     var_148 = 0
  loc_14C30E7:     var_E8 = "SELECT NAME from MarketSeg WHERE Code='" & var_D4.Fields.Item("MarketSeg").Value 
  loc_14C30FE:     unk_572803.Execute CStr(var_E8 & "'"), var_138, -1
  loc_14C3106:     var_CC = var_CC.Fields
  loc_14C310E:     var_148 = var_D8.Item(var_D8)
  loc_14C311F:     var_9C = Proc_6_38_E69628(CVar(var_14C), var_14C)
  loc_14C312D:     Set var_160 = Me.txt
  loc_14C3133:     Call 0.Method_Proc_123_84_14C36F00 (CInt(&HE), var_164)
  loc_14C313B:     var_164.Text = var_9C
  loc_14C3163:   End If
  loc_14C3189:   Proc_6_39_E7D3A0(var_E8, CVar(var_D4.Fields.Item("Pax")))
  loc_14C31A0:   Set var_CC = Me.txt
  loc_14C31A6:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&H10), var_D8)
  loc_14C31AE:   var_D8.Text = CStr(var_E8)
  loc_14C31EC:   Proc_6_39_E7D3A0(var_E8, CVar(var_D4.Fields.Item("GurrPax")))
  loc_14C3203:   Set var_CC = Me.txt
  loc_14C3209:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&H11), var_D8)
  loc_14C3211:   var_D8.Text = CStr(var_E8)
  loc_14C3240:   var_98 = var_D4.Fields.Item("RatePax")
  loc_14C324F:   Proc_6_39_E7D3A0(var_E8, CVar(var_98))
  loc_14C3266:   Set var_CC = Me.txt
  loc_14C326C:   Call 0.Method_Proc_123_84_14C36F00 (CInt(&H12), var_D8)
  loc_14C3274:   var_D8.Text = CStr(var_E8)
  loc_14C32A0:   var_90 = "SELECT V.Name AS VenueName, B.* FROM BookingDetail B INNER JOIN VenueMast V ON B.VenueCode=V.Code WHERE B.LogSite_Code='" & MemVar_1F95078
  loc_14C32B8:   Set var_94 = Me.txt
  loc_14C32BE:   Call 0.Method_Proc_123_84_14C36F00 (CInt(3), var_98, var_9C, CVar(var_90 & "' And  B.Code='"))
  loc_14C32C6:   var_174 = var_98.Tag
  loc_14C32DC:   var_138 = -1 & Trim(CVar(var_9C)) 
  loc_14C32F3:   unk_572803.Execute CStr(var_138 & "'"), var_CC, var_14C
  loc_14C32FE:   Set var_88 = var_CC
  loc_14C3335:   Call Proc_123_70_11146EC(Me.FGrid.Text)
  loc_14C334D:   Me.FGrid.Rows = 2
  loc_14C3369:   If (var_88.RecordCount < 0) Then
  loc_14C336C:     Exit Sub
  loc_14C336D:     ' Referenced from: 14C36DC
  loc_14C336D:   End If
  loc_14C337C:   If Not(var_88.EOF) Then
  loc_14C3385:     var_8A = (var_8A + 1)
  loc_14C33A1:     var_B8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C33A9:     var_118 = CVar(CLng(0)) 'Long
  loc_14C33B3:     var_E8 = CVar(CStr(var_8A)) 'String
  loc_14C33BB:     Set var_98 = Me.FGrid
  loc_14C33C1:     LateIdCallSt
  loc_14C33F0:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C33F8:     var_128 = CVar(CLng(7)) 'Long
  loc_14C3428:     var_F8 = CVar(CStr(var_88.Fields.Item("Venuecode").Value)) 'String
  loc_14C3430:     Set var_D8 = Me.FGrid
  loc_14C3436:     LateIdCallSt
  loc_14C346B:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C3473:     var_128 = CVar(CLng(1)) 'Long
  loc_14C34A3:     var_F8 = CVar(CStr(var_88.Fields.Item("VenueName").Value)) 'String
  loc_14C34AB:     Set var_D8 = Me.FGrid
  loc_14C34B1:     LateIdCallSt
  loc_14C34E6:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C34EE:     var_128 = CVar(CLng(3)) 'Long
  loc_14C351E:     var_F8 = CVar(CStr(var_88.Fields.Item("FuncDate").Value)) 'String
  loc_14C3526:     Set var_D8 = Me.FGrid
  loc_14C352C:     LateIdCallSt
  loc_14C3561:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C3569:     var_128 = CVar(CLng(5)) 'Long
  loc_14C3599:     var_F8 = CVar(CStr(var_88.Fields.Item("ToDate").Value)) 'String
  loc_14C35A1:     Set var_D8 = Me.FGrid
  loc_14C35A7:     LateIdCallSt
  loc_14C35DC:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C35E4:     var_128 = CVar(CLng(4)) 'Long
  loc_14C3614:     var_F8 = CVar(CStr(var_88.Fields.Item("FuncTime").Value)) 'String
  loc_14C361C:     Set var_D8 = Me.FGrid
  loc_14C3622:     LateIdCallSt
  loc_14C3657:     var_108 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14C365F:     var_128 = CVar(CLng(6)) 'Long
  loc_14C368F:     var_F8 = CVar(CStr(var_88.Fields.Item("ToTime").Value)) 'String
  loc_14C3697:     Set var_D8 = Me.FGrid
  loc_14C369D:     LateIdCallSt
  loc_14C36B9:     var_B8 = vbNullString
  loc_14C36C3:     Set var_94 = Me.FGrid
  loc_14C36D7:     var_88.MoveNext
  loc_14C36DC:     GoTo loc_14C336D
  loc_14C36DF:   End If
  loc_14C36E1:   Set var_D4 = Nothing 
  loc_14C36E5: End If
  loc_14C36EA: Set var_88 = Nothing
  loc_14C36ED: Exit Sub
End Sub

Public Sub Proc_123_85_12F84E4
  'Data Table: 5727EC
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  loc_12F7E0C: Set var_A4 = Me.txt
  loc_12F7E12: Call 0.Method_Proc_123_85_12F84E40 (CInt(3), var_A8)
  loc_12F7E1A: var_A8.MaxLength = Me.Fields.Item("PartyName").DefinedSize
  loc_12F7E62: Set var_A4 = Me.txt
  loc_12F7E68: Call 0.Method_Proc_123_85_12F84E40 (CInt(4), var_A8)
  loc_12F7E70: var_A8.MaxLength = Me.Fields.Item("Add1").DefinedSize
  loc_12F7EB8: Set var_A4 = Me.txt
  loc_12F7EBE: Call 0.Method_Proc_123_85_12F84E40 (CInt(5), var_A8)
  loc_12F7EC6: var_A8.MaxLength = Me.Fields.Item("Add2").DefinedSize
  loc_12F7F0E: Set var_A4 = Me.txt
  loc_12F7F14: Call 0.Method_Proc_123_85_12F84E40 (CInt(6), var_A8)
  loc_12F7F1C: var_A8.MaxLength = Me.Fields.Item("City").DefinedSize
  loc_12F7F64: Set var_A4 = Me.txt
  loc_12F7F6A: Call 0.Method_Proc_123_85_12F84E40 (CInt(7), var_A8)
  loc_12F7F72: var_A8.MaxLength = Me.Fields.Item("PinCode").DefinedSize
  loc_12F7FBA: Set var_A4 = Me.txt
  loc_12F7FC0: Call 0.Method_Proc_123_85_12F84E40 (CInt(&HB), var_A8)
  loc_12F7FC8: var_A8.MaxLength = Me.Fields.Item("PanNo").DefinedSize
  loc_12F8010: Set var_A4 = Me.txt
  loc_12F8016: Call 0.Method_Proc_123_85_12F84E40 (CInt(9), var_A8)
  loc_12F801E: var_A8.MaxLength = Me.Fields.Item("ContactNo_oFF").DefinedSize
  loc_12F8066: Set var_A4 = Me.txt
  loc_12F806C: Call 0.Method_Proc_123_85_12F84E40 (CInt(8), var_A8)
  loc_12F8074: var_A8.MaxLength = Me.Fields.Item("ContactNo_Res").DefinedSize
  loc_12F80BC: Set var_A4 = Me.Txt1
  loc_12F80C2: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H20), var_A8)
  loc_12F80CA: var_A8.MaxLength = Me.Fields.Item("Board").DefinedSize
  loc_12F8112: Set var_A4 = Me.txt
  loc_12F8118: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H1F), var_A8)
  loc_12F8120: var_A8.MaxLength = Me.Fields.Item("Chef").DefinedSize
  loc_12F8168: Set var_A4 = Me.txt
  loc_12F816E: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H1E), var_A8)
  loc_12F8176: var_A8.MaxLength = Me.Fields.Item("Security").DefinedSize
  loc_12F81BE: Set var_A4 = Me.txt
  loc_12F81C4: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H1D), var_A8)
  loc_12F81CC: var_A8.MaxLength = Me.Fields.Item("Engg").DefinedSize
  loc_12F8214: Set var_A4 = Me.txt
  loc_12F821A: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H1C), var_A8)
  loc_12F8222: var_A8.MaxLength = Me.Fields.Item("FrontOff").DefinedSize
  loc_12F826A: Set var_A4 = Me.txt
  loc_12F8270: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H1B), var_A8)
  loc_12F8278: var_A8.MaxLength = Me.Fields.Item("HouseKeep").DefinedSize
  loc_12F82C0: Set var_A4 = Me.txt
  loc_12F82C6: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H1A), var_A8)
  loc_12F82CE: var_A8.MaxLength = Me.Fields.Item("MenuSpl7").DefinedSize
  loc_12F8316: Set var_A4 = Me.txt
  loc_12F831C: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H19), var_A8)
  loc_12F8324: var_A8.MaxLength = Me.Fields.Item("MenuSpl6").DefinedSize
  loc_12F836C: Set var_A4 = Me.txt
  loc_12F8372: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H18), var_A8)
  loc_12F837A: var_A8.MaxLength = Me.Fields.Item("MenuSpl5").DefinedSize
  loc_12F83C2: Set var_A4 = Me.txt
  loc_12F83C8: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H17), var_A8)
  loc_12F83D0: var_A8.MaxLength = Me.Fields.Item("MenuSpl4").DefinedSize
  loc_12F8418: Set var_A4 = Me.txt
  loc_12F841E: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H16), var_A8)
  loc_12F8426: var_A8.MaxLength = Me.Fields.Item("MenuSpl3").DefinedSize
  loc_12F846E: Set var_A4 = Me.txt
  loc_12F8474: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H15), var_A8)
  loc_12F847C: var_A8.MaxLength = Me.Fields.Item("MenuSpl2").DefinedSize
  loc_12F84C4: Set var_A4 = Me.txt
  loc_12F84CA: Call 0.Method_Proc_123_85_12F84E40 (CInt(&H14), var_A8)
  loc_12F84D2: var_A8.MaxLength = Me.Fields.Item("MenuSpl1").DefinedSize
  loc_12F84E2: Exit Sub
End Sub

Public Sub Proc_123_86_15FCEA8(arg_C) '15FCEA8
  'Data Table: 5727EC
  Dim var_F8 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_572803 As Connection15
  Dim var_E4 As Variant
  Dim var_E8 As Fields15
  Dim var_FC As Variant
  Dim var_B4 As Double
  Dim var_A8 As Recordset15
  Dim var_E0 As Variant
  Dim var_154 As Variant
  Dim var_10C As Variant
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_88 As Recordset15
  Dim var_328 As String
  Dim var_134 As Variant
  Dim var_32C As String
  Dim var_330 As String
  Dim var_334 As String
  loc_15FBAF4: If (arg_C = vbNullString) Then
  loc_15FBAF7:   Exit Sub
  loc_15FBAF8: End If
  loc_15FBAF8: On Error Goto loc_15FCE9F
  loc_15FBB01: var_F8 = 0
  loc_15FBB2E: unk_572803.Execute "SELECT ISNULL(Sum(AmtCr),0) FROM PayChargeH WHERE VType='AD' AND ContraDocId='" & arg_C & "'", var_E0, -1
  loc_15FBB3E: var_F8 = var_E8.Item(var_E8)
  loc_15FBB46: var_FC = var_FC.Value
  loc_15FBB4F: var_B4 = CSng(var_10C)
  loc_15FBB84: var_C0 = "Select VC.*,D.Name as VenuName From VenueOcc VC Left Join VenueMast D On VC.VenuCode=D.Code Where VC.FPDocId='" & arg_C & "'"
  loc_15FBB8D: unk_572803.Execute var_C0, var_E0, -1
  loc_15FBB98: Set var_A8 = var_E4.Fields
  loc_15FBBA8: ' Referenced from: 15FBD82
  loc_15FBBB7: If Not(var_A8.EOF) Then
  loc_15FBC3C:   var_E4 = var_A8.Fields
  loc_15FBC4C:   var_E0 = CVar(var_E4.Item("VenuName")) 'Address
  loc_15FBC60:   var_154 = CVar(var_B4 & Proc_6_38_E69628(var_E0, var_AC, var_E4) & " (") 'String
  loc_15FBC8A:   var_164 = (1 + Format(CVar(var_A8.Fields.Item("FromDate")), "DD/MM/YY"))
  loc_15FBC93:   var_184 = (var_164 + " ")
  loc_15FBCBE:   var_1EC = (1 + Format(CVar(var_A8.Fields.Item("FromTime")), "HH:MM"))
  loc_15FBCC7:   var_20C = (var_1EC + " To ")
  loc_15FBCF2:   var_274 = (1 + Format(CVar(var_A8.Fields.Item("ToDate")), "DD/MM/YY"))
  loc_15FBCFB:   var_294 = (var_274 + " ")
  loc_15FBD26:   var_2FC = (1 + Format(CVar(var_A8.Fields.Item("ToTime")), "HH:MM"))
  loc_15FBD2F:   var_31C = (var_2FC + ") ")
  loc_15FBD34:   var_AC = CStr(var_31C)
  loc_15FBD7D:   var_A8.MoveNext
  loc_15FBD82:   GoTo loc_15FBBA8
  loc_15FBD85: End If
  loc_15FBD99: var_BC = "SELECT S.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName FROM (((HallBook AS S LEFT JOIN MarketSeg ON S.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON S.BussSource = BussSource.Code) LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) LEFT JOIN SubGroup ON S.CompanyCode = SubGroup.SubCode Where S.Docid='" & arg_C
  loc_15FBDA9: unk_572803.Execute var_BC & "'", var_E0, -1
  loc_15FBDB4: Set var_A8 = var_E4
  loc_15FBDE8: unk_572803.Execute "Select BanqBookingMsg,BanqBookingCancelMsg,SendingMessageText from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_E0, -1
  loc_15FBDF3: Set var_88 = var_E4
  loc_15FBE17: If (var_88.RecordCount > 0) Then
  loc_15FBE29:   var_E4 = var_88.Fields
  loc_15FBE51:   var_A4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Item("SendingMessageText")), var_E4, var_E4, 1, var_294, 1))))
  loc_15FBE97:   var_8C = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("BanqBookingMsg")), var_20C, 1, var_184))))
  loc_15FBEB5:   var_E4 = var_88.Fields
  loc_15FBEC5:   var_E0 = CVar(var_E4.Item("BanqBookingCancelMsg")) 'Address
  loc_15FBEDD:   var_90 = CStr(Trim(CVar(Proc_6_38_E69628(var_E0, 1))))
  loc_15FBEEC: End If
  loc_15FBEEF: var_B8 = "Booking"
  loc_15FBF1B: var_328 = "Select TxtMsg,MobileNo from EmailSMSForward WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And Type='" & var_B8 & "' And Len(MobileNo)>=10 And Len(TxtMsg)>0"
  loc_15FBF24: unk_572803.Execute var_328, var_E0, -1
  loc_15FBF2F: Set var_88 = var_E4
  loc_15FBF57: If (var_88.RecordCount > 0) Then
  loc_15FBF69:   var_E4 = var_88.Fields
  loc_15FBF91:   var_9C = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Item("MobileNo")), var_E4))))
  loc_15FBFD7:   var_94 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TxtMsg")), var_154))))
  loc_15FBFE6: End If
  loc_15FBFEB: Set var_88 = Nothing
  loc_15FC007: If ((var_A4 <> "Auto") And (Len(var_8C) <> 0)) Then
  loc_15FC055:   var_A0 = Replace(var_A0, "<Booking No>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("VNo"))), 1, -1, 0)
  loc_15FC0C6:   var_A0 = Replace(var_A0, "<Booking Date>", CStr(Format(CVar(var_A8.Fields.Item("VDate")), "DD/MM/YY")), 1, -1, 0)
  loc_15FC123:   var_A0 = Replace(var_A0, "<Party Name>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("PartyName")), 1), 1, -1, 0)
  loc_15FC1E8:   var_334 = Proc_6_38_E69628(CVar(var_A8.Fields.Item("Add1")), 1) & ", " & Proc_6_38_E69628(CVar(var_A8.Fields.Item("Add2"))) & ", " & Proc_6_38_E69628(CVar(var_A8.Fields.Item("City")))
  loc_15FC1F6:   var_A0 = Replace(var_A0, "<Party Address>", var_334, 1, -1, 0)
  loc_15FC26D:   var_A0 = Replace(var_A0, "<Company Name>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("CompanyName"))), 1, -1, 0)
  loc_15FC2C8:   var_A0 = Replace(var_A0, "<Function Type>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("EventName"))), 1, -1, 0)
  loc_15FC339:   var_A0 = Replace(var_A0, "<Exp Pax>", CStr(Format(CVar(var_A8.Fields.Item("ExpAtt")), "0")), 1, -1, 0)
  loc_15FC3AC:   var_A0 = Replace(var_A0, "<Gurr Pax>", CStr(Format(CVar(var_A8.Fields.Item("GuarAtt")), "0")), 1, -1, 0)
  loc_15FC41F:   var_A0 = Replace(var_A0, "<Pax Rate>", CStr(Format(CVar(var_A8.Fields.Item("CoverRate")), "0.00")), 1, -1, 0)
  loc_15FC46C:   var_134 = Format(CVar(var_A8.Fields.Item("NetAmount")), "0.00")
  loc_15FC492:   var_A0 = Replace(var_A0, "<Net Amount>", CStr(var_134), 1, -1, 0)
  loc_15FC4EF:   var_A0 = Replace(var_A0, "<Remark>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("Remark")), 1, 1, 1, 1), 1, -1, 0)
  loc_15FC54A:   var_A0 = Replace(var_A0, "<Status>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("BookingStatus")), 1, 1), 1, -1, 0)
  loc_15FC5A0:   var_A0 = Replace(var_A0, "<Advance>", CStr(Format(var_B4, "0.00")), 1, -1, 0)
  loc_15FC5CA:   var_A0 = Replace(var_A0, "<Venue Detail>", var_AC, 1, -1, 0)
  loc_15FC5CD: End If
  loc_15FC613: If ((Len(Proc_6_38_E69628(CVar(var_A8.Fields.Item("MobileNo")), 1, 1)) >= &HA) And (Len(var_8C) <> 0)) Then
  loc_15FC667:   Proc_6_39_E7D3A0(var_134, CVar(var_A8.Fields.Item("VNo")))
  loc_15FC6EA:   var_340 = Proc_6_38_E69628(CVar(var_A8.Fields.Item("PartyName")))
  loc_15FC6FA:   var_330 = vbNullString
  loc_15FC73E:   Proc_233_5_11B7BF4(Proc_6_38_E69628(CVar(var_A8.Fields.Item("DocID")), 1), global_104, CLng(var_134), 0, Proc_6_38_E69628(CVar(var_A8.Fields.Item("companyCode")), 1), Proc_6_38_E69628(CVar(var_A8.Fields.Item("MobileNo"))), vbNullString)
  loc_15FC776: End If
  loc_15FC779: var_A0 = var_94
  loc_15FC78F: If ((var_A4 <> "Auto") And (Len(var_A0) <> 0)) Then
  loc_15FC7DD:   var_A0 = Replace(var_A0, "<Booking No>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("VNo")), var_A0, MemVar_1F950C8, var_340), 1, -1, 0)
  loc_15FC84E:   var_A0 = Replace(var_A0, "<Booking Date>", CStr(Format(CVar(var_A8.Fields.Item("VDate")), "DD/MM/YY")), 1, -1, 0)
  loc_15FC8AB:   var_A0 = Replace(var_A0, "<Party Name>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("PartyName")), 1, 1, var_330), 1, -1, 0)
  loc_15FC95F:   var_328 = Proc_6_38_E69628(CVar(var_A8.Fields.Item("Add1")), CDbl(0)) & ", " & Proc_6_38_E69628(CVar(var_A8.Fields.Item("Add2")), var_B8)
  loc_15FC97E:   var_A0 = Replace(var_A0, "<Party Address>", var_328 & ", " & Proc_6_38_E69628(CVar(var_A8.Fields.Item("City"))), 1, -1, 0)
  loc_15FC9F5:   var_A0 = Replace(var_A0, "<Company Name>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("CompanyName"))), 1, -1, 0)
  loc_15FCA50:   var_A0 = Replace(var_A0, "<Function Type>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("EventName"))), 1, -1, 0)
  loc_15FCAC1:   var_A0 = Replace(var_A0, "<Exp Pax>", CStr(Format(CVar(var_A8.Fields.Item("ExpAtt")), "0")), 1, -1, 0)
  loc_15FCB34:   var_A0 = Replace(var_A0, "<Gurr Pax>", CStr(Format(CVar(var_A8.Fields.Item("GuarAtt")), "0")), 1, -1, 0)
  loc_15FCBA7:   var_A0 = Replace(var_A0, "<Pax Rate>", CStr(Format(CVar(var_A8.Fields.Item("CoverRate")), "0.00")), 1, -1, 0)
  loc_15FCBF4:   var_134 = Format(CVar(var_A8.Fields.Item("NetAmount")), "0.00")
  loc_15FCC1A:   var_A0 = Replace(var_A0, "<Net Amount>", CStr(var_134), 1, -1, 0)
  loc_15FCC77:   var_A0 = Replace(var_A0, "<Remark>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("Remark")), 1, 1, 1, 1), 1, -1, 0)
  loc_15FCCD2:   var_A0 = Replace(var_A0, "<Status>", Proc_6_38_E69628(CVar(var_A8.Fields.Item("BookingStatus")), 1, 1), 1, -1, 0)
  loc_15FCD28:   var_A0 = Replace(var_A0, "<Advance>", CStr(Format(var_B4, "0.00")), 1, -1, 0)
  loc_15FCD52:   var_A0 = Replace(var_A0, "<Venue Detail>", var_AC, 1, -1, 0)
  loc_15FCD55: End If
  loc_15FCD6A: If ((Len(var_9C) >= &HA) And (Len(var_A0) <> 0)) Then
  loc_15FCDBE:   Proc_6_39_E7D3A0(var_134, CVar(var_A8.Fields.Item("VNo")), 1)
  loc_15FCE16:   var_338 = Proc_6_38_E69628(CVar(var_A8.Fields.Item("PartyName")))
  loc_15FCE26:   var_32C = vbNullString
  loc_15FCE66:   Proc_233_5_11B7BF4(Proc_6_38_E69628(CVar(var_A8.Fields.Item("DocID")), 1, 1), global_104, CLng(var_134), 0, Proc_6_38_E69628(CVar(var_A8.Fields.Item("companyCode")), 1), var_9C, vbNullString)
  loc_15FCE96: End If
  loc_15FCE9B: Set var_A8 = Nothing
  loc_15FCE9E: Exit Sub
  loc_15FCE9F: ' Referenced from: 15FBAF8
  loc_15FCE9F: Proc_6_60_E63754(var_A0, MemVar_1F950C8, var_338, var_32C)
  loc_15FCEA4: Exit Sub
End Sub
