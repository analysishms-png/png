VERSION 5.00
Begin VB.Form FdReSetlement
  Caption = "Post Charges/Payment"
  BackColor = &HFFC0C0&
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
  ClientWidth = 9555
  ClientHeight = 7350
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6900
    Width = 9555
    Height = 450
    Visible = 0   'False
    TabIndex = 106
  End
  Begin DataGrid DGMember
    Left = 13650
    Top = 6195
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 102
  End
  Begin Frame FrMember
    BackColor = &HFFC0C0&
    Left = 165
    Top = 8055
    Width = 6000
    Height = 315
    Visible = 0   'False
    TabIndex = 100
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 39
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1650
      Top = 30
      Width = 4000
      Height = 285
      TabIndex = 32
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Member"
      Index = 2
      ForeColor = &HC00000&
      Left = 15
      Top = 30
      Width = 780
      Height = 240
      TabIndex = 101
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
  Begin DataGrid DGBill
    Left = 13320
    Top = 5610
    Width = 6780
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 97
  End
  Begin PictureBox Picture2
    Picture = "FdReSetlement.frx":0
    Left = 18870
    Top = 7860
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 96
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
  Begin PictureBox Picture1
    Picture = "FdReSetlement.frx":34E
    Left = 19620
    Top = 7665
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 95
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
    Index = 38
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3075
    Top = 1395
    Width = 930
    Height = 285
    Visible = 0   'False
    TabIndex = 94
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
  End
  Begin TextBox Txt
    Index = 36
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1500
    Top = 1080
    Width = 1545
    Height = 285
    TabIndex = 2
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
  End
  Begin Timer Timer1
    Interval = 1000
    Left = 10350
    Top = 0
  End
  Begin DataGrid DGRoom
    Left = 12600
    Top = 5700
    Width = 3885
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
End
Begin DataGrid DGRoomNo
  Left = 13980
  Top = 4890
  Width = 2580
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 22
End
Begin DataGrid DGEmp
  Left = 12555
  Top = 4980
  Width = 4170
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 46
End
Begin DataGrid DGChrgPayment
  Left = 15795
  Top = 4860
  Width = 5490
  Height = 3465
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 23
End
Begin TextBox Txt
  Index = 35
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 9570
  Top = 1740
  Width = 1500
  Height = 285
  TabIndex = 6
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
  MaxLength = 9
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 11
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 2340
  Width = 2535
  Height = 285
  Enabled = 0   'False
  TabIndex = 71
  BorderStyle = 0 'None
  MaxLength = 16
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
  Index = 13
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2010
  Top = 2655
  Width = 480
  Height = 285
  Enabled = 0   'False
  TabIndex = 70
  BorderStyle = 0 'None
  MaxLength = 2
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
  Index = 12
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 2655
  Width = 495
  Height = 285
  Enabled = 0   'False
  TabIndex = 69
  BorderStyle = 0 'None
  MaxLength = 2
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
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 14655
  Top = 3570
  Width = 480
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 68
  BorderStyle = 0 'None
  MaxLength = 1
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
  Index = 15
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 2970
  Width = 1005
  Height = 285
  Enabled = 0   'False
  TabIndex = 67
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
End
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 4035
  Top = 660
  Width = 765
  Height = 285
  Enabled = 0   'False
  TabIndex = 0
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
End
Begin TextBox Txt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 1710
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 66
  BorderStyle = 0 'None
  MaxLength = 11
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
End
Begin TextBox Txt
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 3840
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 65
  BorderStyle = 0 'None
  MaxLength = 50
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
End
Begin TextBox Txt
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5100
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 64
  BorderStyle = 0 'None
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
End
Begin TextBox Txt
  Index = 9
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1275
  Top = 6360
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 63
  BorderStyle = 0 'None
  MaxLength = 8
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
End
Begin TextBox Txt
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3555
  Top = 1710
  Width = 465
  Height = 285
  Enabled = 0   'False
  TabIndex = 62
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3060
  Top = 1710
  Width = 465
  Height = 285
  Enabled = 0   'False
  TabIndex = 61
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 1395
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 60
  BorderStyle = 0 'None
  MaxLength = 5
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
End
Begin TextBox Txt
  Index = 30
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3060
  Top = 2025
  Width = 465
  Height = 285
  Enabled = 0   'False
  TabIndex = 59
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
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
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 29
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3555
  Top = 2025
  Width = 465
  Height = 285
  Enabled = 0   'False
  TabIndex = 58
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
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
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 31
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1485
  Top = 2025
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 57
  BorderStyle = 0 'None
  MaxLength = 11
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
End
Begin TextBox Txt
  Index = 34
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1275
  Top = 6045
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 56
  BorderStyle = 0 'None
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
End
Begin TextBox Txt
  Index = 33
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5730
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 55
  BorderStyle = 0 'None
  MaxLength = 50
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
End
Begin TextBox Txt
  Index = 32
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5415
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 54
  BorderStyle = 0 'None
  MaxLength = 16
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
  Index = 28
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4785
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 53
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
End
Begin TextBox Txt
  Index = 27
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4470
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 52
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
End
Begin TextBox Txt
  Index = 26
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4155
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 51
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
End
Begin DataGrid DGCompany
  Left = 16740
  Top = 4500
  Width = 4215
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 49
End
Begin Frame FrComp
  BackColor = &HFFC0C0&
  Left = 150
  Top = 8370
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 47
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
  Begin PictureBox Picture4
    Picture = "FdReSetlement.frx":69C
    Left = 5715
    Top = 30
    Width = 320
    Height = 270
    TabIndex = 99
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
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1665
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 16
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Company"
    Index = 27
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 900
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
End
Begin Frame FrCCDet
  BackColor = &HFFC0C0&
  Left = 5415
  Top = 2340
  Width = 6000
  Height = 960
  Visible = 0   'False
  TabIndex = 41
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
  Begin TextBox Txt
    Index = 37
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4155
    Top = 630
    Width = 1500
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 630
    Width = 1500
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 315
    Width = 4000
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 255
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Batch No."
    Index = 0
    ForeColor = &HC00000&
    Left = 3255
    Top = 660
    Width = 945
    Height = 225
    TabIndex = 93
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
  Begin Label LblName
    Caption = "Exp.Dt."
    Index = 20
    ForeColor = &HC00000&
    Left = 15
    Top = 615
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
  Begin Label LblName
    Caption = "Holder"
    Index = 19
    ForeColor = &HC00000&
    Left = 15
    Top = 315
    Width = 630
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
  Begin Label LblName
    Caption = "C.C. No."
    Index = 18
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 765
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
Begin Frame FrEmp
  BackColor = &HFFC0C0&
  Left = 165
  Top = 7740
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 39
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
  Begin PictureBox Picture3
    Picture = "FdReSetlement.frx":9EA
    Left = 5685
    Top = 45
    Width = 320
    Height = 270
    Visible = 0   'False
    TabIndex = 98
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
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Staff"
    Index = 22
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 435
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
End
Begin Frame FrSendRoom
  BackColor = &HFFC0C0&
  Left = 165
  Top = 6795
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 37
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
  Begin TextBox Txt
    Index = 24
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 2000
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Room No.#"
    Index = 26
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 1035
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
End
Begin Frame FrChqDet
  BackColor = &HFFC0C0&
  Left = 165
  Top = 7110
  Width = 6000
  Height = 645
  Visible = 0   'False
  TabIndex = 34
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
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 345
    Width = 2000
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 2000
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Cheque Dt."
    Index = 16
    ForeColor = &HC00000&
    Left = 15
    Top = 330
    Width = 1050
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
  Begin Label LblName
    Caption = "Cheque No."
    Index = 15
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 1110
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
End
Begin TextBox Txt
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7065
  Top = 1110
  Width = 1500
  Height = 285
  Enabled = 0   'False
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 11
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 16
  BackColor = &HFFFFFF&
  Left = 11805
  Top = 180
  Width = 990
  Height = 255
  Visible = 0   'False
  TabIndex = 24
  BorderStyle = 0 'None
  MaxLength = 21
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
  Index = 6
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7065
  Top = 1740
  Width = 1500
  Height = 285
  TabIndex = 5
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
  MaxLength = 11
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 5
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7065
  Top = 2055
  Width = 4000
  Height = 285
  TabIndex = 7
  BorderStyle = 0 'None
  MaxLength = 50
  Appearance = 0 'Flat
End
Begin TextBox Txt
  Index = 4
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7065
  Top = 1425
  Width = 4000
  Height = 285
  TabIndex = 4
  BorderStyle = 0 'None
  MaxLength = 50
  Locked = -1  'True
  Appearance = 0 'Flat
End
Begin MaskEdBox txtVTime
  Left = 10320
  Top = 1110
  Width = 750
  Height = 285
  TabIndex = 3
End
Begin MSHFlexGrid FGrid
  Left = 5895
  Top = 3750
  Width = 5790
  Height = 2430
  TabIndex = 89
End
Begin MSFlexGrid FGPoint
  Left = 16455
  Top = 7860
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 91
End
Begin BtnEnh CmdExit
  Left = 8940
  Top = 7575
  Width = 1350
  Height = 1050
  TabIndex = 104
End
Begin BtnEnh BtnSave
  Left = 6990
  Top = 7560
  Width = 1350
  Height = 1050
  TabIndex = 105
End
Begin Line Line1
  BorderColor = &HC00000&
  X1 = 7020
  Y1 = 7005
  X2 = 10275
  Y2 = 7005
  BorderWidth = 2
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 0
  Width = 180
  Height = 540
  TabIndex = 103
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
  Caption = "Guest Bill No"
  Index = 17
  ForeColor = &HC00000&
  Left = 240
  Top = 1095
  Width = 1065
  Height = 225
  TabIndex = 92
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
  Caption = "Settlement Details"
  Index = 3
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 5370
  Top = 3375
  Width = 6765
  Height = 375
  TabIndex = 90
  Alignment = 2 'Center
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
  Caption = "Tip"
  Index = 15
  ForeColor = &HC00000&
  Left = 9165
  Top = 1740
  Width = 300
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
Begin Label Label1
  Caption = "Payment Detail "
  Index = 2
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 5340
  Top = 615
  Width = 6765
  Height = 375
  TabIndex = 87
  Alignment = 2 'Center
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
  Caption = "Adult/Child"
  Index = 16
  ForeColor = &HC00000&
  Left = 240
  Top = 2670
  Width = 900
  Height = 225
  TabIndex = 86
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
Begin Label Lbl
  Caption = "Rate Code"
  Index = 14
  ForeColor = &HC00000&
  Left = 13590
  Top = 3585
  Width = 870
  Height = 225
  Visible = 0   'False
  TabIndex = 85
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
Begin Label Lbl
  Caption = "Room Rate"
  Index = 12
  ForeColor = &HC00000&
  Left = 240
  Top = 2985
  Width = 930
  Height = 225
  TabIndex = 84
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
Begin Label Lbl
  Caption = "Room No"
  Index = 34
  ForeColor = &HC00000&
  Left = 240
  Top = 2355
  Width = 765
  Height = 225
  TabIndex = 83
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
Begin Label Lbl
  Caption = "Check In Date"
  Index = 26
  ForeColor = &HC00000&
  Left = 240
  Top = 1725
  Width = 1170
  Height = 225
  TabIndex = 82
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
Begin Label LblCheckInDay
  Caption = "."
  ForeColor = &H4080&
  Left = 4035
  Top = 1710
  Width = 1590
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
Begin Label Lbl
  Caption = "Guest Name"
  Index = 11
  ForeColor = &HC00000&
  Left = 210
  Top = 3810
  Width = 1035
  Height = 225
  TabIndex = 80
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
Begin Label Lbl
  Caption = "Company"
  Index = 10
  ForeColor = &HC00000&
  Left = 210
  Top = 5115
  Width = 795
  Height = 225
  TabIndex = 79
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
Begin Label Lbl
  Caption = "Status"
  Index = 9
  ForeColor = &HC00000&
  Left = 210
  Top = 6375
  Width = 555
  Height = 225
  TabIndex = 78
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
Begin Label Lbl
  Caption = "Guest Folio No."
  Index = 6
  ForeColor = &HC00000&
  Left = 240
  Top = 1410
  Width = 1245
  Height = 225
  TabIndex = 77
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
Begin Label Lbl
  Caption = "Depature Date"
  Index = 5
  ForeColor = &HC00000&
  Left = 240
  Top = 2040
  Width = 1215
  Height = 225
  TabIndex = 76
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
Begin Label Lbl
  Caption = "Comment1"
  Index = 3
  ForeColor = &HC00000&
  Left = 210
  Top = 5490
  Width = 930
  Height = 225
  TabIndex = 75
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
Begin Label Lbl
  Caption = "Comment2"
  Index = 1
  ForeColor = &HC00000&
  Left = 210
  Top = 5775
  Width = 930
  Height = 225
  TabIndex = 74
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
Begin Label Lbl
  Caption = "Comment3"
  Index = 13
  ForeColor = &HC00000&
  Left = 210
  Top = 6075
  Width = 930
  Height = 225
  TabIndex = 73
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
Begin Label Lbl
  Caption = "Address"
  Index = 2
  ForeColor = &HC00000&
  Left = 210
  Top = 4095
  Width = 720
  Height = 225
  TabIndex = 72
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
Begin Label LblNature
  Caption = "."
  BackColor = &HFFC0C0&
  ForeColor = &H4080&
  Left = 11130
  Top = 1410
  Width = 1080
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
Begin Label LTxt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &H800000&
  Left = 8625
  Top = 6345
  Width = 1605
  Height = 285
  TabIndex = 33
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LTxt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &H800000&
  Left = 8625
  Top = 7080
  Width = 1605
  Height = 285
  TabIndex = 31
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LTxt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &H800000&
  Left = 8625
  Top = 6660
  Width = 1605
  Height = 285
  TabIndex = 30
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Total Amount"
  Index = 23
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7095
  Top = 6345
  Width = 1500
  Height = 285
  TabIndex = 29
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Shape Shape5
  BorderColor = &HC00000&
  Left = 7035
  Top = 6270
  Width = 3255
  Height = 1200
  BorderWidth = 2
  FillColor = &HC0FFC0&
End
Begin Label LblName
  Caption = "Paid Amount"
  Index = 24
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7095
  Top = 6660
  Width = 1500
  Height = 285
  TabIndex = 28
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Balance"
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7095
  Top = 7095
  Width = 1500
  Height = 285
  TabIndex = 27
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label Lbl
  Caption = "Vr. Date"
  Index = 8
  ForeColor = &HC00000&
  Left = 5400
  Top = 1140
  Width = 765
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
Begin Label LblVPrefix
  Caption = "."
  ForeColor = &H4080&
  Left = 4035
  Top = 2025
  Width = 1590
  Height = 240
  Visible = 0   'False
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
Begin Label Lbl
  Caption = "Amount"
  Index = 7
  ForeColor = &HC00000&
  Left = 5400
  Top = 1755
  Width = 735
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
Begin Label Lbl
  Caption = "Reference"
  Index = 4
  ForeColor = &HC00000&
  Left = 5400
  Top = 2085
  Width = 975
  Height = 240
  TabIndex = 20
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
  Caption = "Charge/Payment"
  Index = 0
  ForeColor = &HC00000&
  Left = 5400
  Top = 1440
  Width = 1590
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
  Caption = "Payment/Charges Details"
  Index = 0
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 150
  Top = 3375
  Width = 5100
  Height = 375
  TabIndex = 18
  Alignment = 2 'Center
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
  Caption = "Room Details for Room No."
  Index = 1
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 150
  Top = 615
  Width = 5100
  Height = 375
  TabIndex = 17
  Alignment = 2 'Center
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

Attribute VB_Name = "FdReSetlement"

Private global_188 As Integer
Private global_52 As Integer
Private global_148 As Long

Private Sub Txt_GotFocus(Index As Integer) '152003C
  'Data Table: 533C30
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_C4 As Variant
  Dim var_90 As Variant
  Dim var_C8 As Variant
  Dim var_88 As Frame
  loc_151F0D6: Set var_88 = Me.Txt
  loc_151F0DC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_151F0EA: Proc_6_74_E23240(var_8C)
  loc_151F0F6: Call Proc_167_42_F6E02C(var_8C)
  loc_151F0FE: var_92 = Index
  loc_151F109: If (var_92 = CInt(0)) Then
  loc_151F123:   If (Me.RecordCount > 0) Then
  loc_151F131:     Set var_8C = Me.FGPoint
  loc_151F149:     Proc_6_137_1192FDC(Me.DGRoomNo, global_96, Index)
  loc_151F157:   End If
  loc_151F1A5:   Set var_88 = Me.Txt
  loc_151F1AB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151F1B3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151F1D9:   If (var_92 Or (Proc_6_38_E69628(CVar(var_A0), var_8C) = vbNullString)) Then
  loc_151F1DC:     Exit Sub
  loc_151F1DD:   End If
  loc_151F1EA:   Set var_88 = Me.Txt
  loc_151F1F0:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151F1F8:   var_A0 = var_8C.Text
  loc_151F20A:   var_C4 = "RoomNo"
  loc_151F245:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_151F24E:     Me.MoveFirst
  loc_151F271:     Set var_88 = Me.Txt
  loc_151F277:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_151F27F:     0 = var_8C.Text
  loc_151F298:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_151F2AD:   End If
  loc_151F2B0: Else
  loc_151F2B8:   If (var_92 = CInt(&H24)) Then
  loc_151F2D2:     If (Me.RecordCount > 0) Then
  loc_151F2E0:       Set var_8C = Me.FGPoint
  loc_151F2F8:       Proc_6_137_1192FDC(Me.DGBill, global_192)
  loc_151F306:     End If
  loc_151F354:     Set var_88 = Me.Txt
  loc_151F35A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151F362:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151F388:     If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_151F38B:       Exit Sub
  loc_151F38C:     End If
  loc_151F399:     Set var_88 = Me.Txt
  loc_151F39F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151F3A7:     var_A0 = var_8C.Text
  loc_151F3B9:     var_C4 = "Bill_no"
  loc_151F3F4:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_151F3FD:       Me.MoveFirst
  loc_151F420:       Set var_88 = Me.Txt
  loc_151F426:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "BillNo ='")
  loc_151F42E:       0 = var_8C.Text
  loc_151F447:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_151F45C:     End If
  loc_151F45F:   Else
  loc_151F467:     If (var_92 = CInt(4)) Then
  loc_151F481:       If (Me.RecordCount > 0) Then
  loc_151F48F:         Set var_8C = Me.FGPoint
  loc_151F4A7:         Proc_6_137_1192FDC(Me.DGChrgPayment, global_100)
  loc_151F4B5:       End If
  loc_151F503:       Set var_88 = Me.Txt
  loc_151F509:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151F511:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151F537:       If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_151F53A:         Exit Sub
  loc_151F53B:       End If
  loc_151F548:       Set var_88 = Me.Txt
  loc_151F54E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151F556:       var_A0 = var_8C.Text
  loc_151F568:       var_C4 = "Name"
  loc_151F5A3:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_151F5AC:         Me.MoveFirst
  loc_151F5CF:         Set var_88 = Me.Txt
  loc_151F5D5:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_151F5DD:         0 = var_8C.Text
  loc_151F5F6:         Me.Find 1 & var_A0 & "'", var_C4, 
  loc_151F60B:       End If
  loc_151F60E:     Else
  loc_151F616:       If (var_92 = CInt(&H18)) Then
  loc_151F644:         var_C4 = CVar((Me.FrSendRoom.Top + Me.FrSendRoom.Height)) 'Single
  loc_151F64D:         Set var_90 = Me.DGRoom
  loc_151F653:         var_90.Top = var_C4
  loc_151F66F:         Set var_8C = Me.Txt
  loc_151F675:         Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_90)
  loc_151F69B:         var_C4 = CVar((Me.FrSendRoom.Left + var_90.Left)) 'Single
  loc_151F6AA:         Me.DGRoom.Left = var_C4
  loc_151F6D1:         If (Me.RecordCount > 0) Then
  loc_151F6DF:           Set var_8C = Me.FGPoint
  loc_151F6F7:           Proc_6_137_1192FDC(Me.DGRoom, global_112)
  loc_151F705:         End If
  loc_151F753:         Set var_88 = Me.Txt
  loc_151F759:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151F761:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151F787:         If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_151F797:           Set var_88 = Me.Txt
  loc_151F79D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151F7A5:           var_8C.Tag = vbNullString
  loc_151F7B1:           Exit Sub
  loc_151F7B2:         End If
  loc_151F7BF:         Set var_88 = Me.Txt
  loc_151F7C5:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151F7CD:         var_A0 = var_8C.Text
  loc_151F7DF:         var_C4 = "RoomNo"
  loc_151F81A:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_151F823:           Me.MoveFirst
  loc_151F846:           Set var_88 = Me.Txt
  loc_151F84C:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_151F854:           0 = var_8C.Text
  loc_151F86D:           Me.Find 1 & var_A0 & "'", var_C4, 
  loc_151F882:         End If
  loc_151F885:       Else
  loc_151F88D:         If (var_92 = CInt(&H17)) Then
  loc_151F8BB:           var_C4 = CVar((Me.FrEmp.Top + Me.FrEmp.Height)) 'Single
  loc_151F8C4:           Set var_90 = Me.DGEmp
  loc_151F8CA:           var_90.Top = var_C4
  loc_151F8E6:           Set var_8C = Me.Txt
  loc_151F8EC:           Call 0.Method_Txt_GotFocus0 (CInt(&H17), var_90)
  loc_151F912:           var_C4 = CVar((Me.FrEmp.Left + var_90.Left)) 'Single
  loc_151F91B:           Set var_C8 = Me.DGEmp
  loc_151F921:           var_C8.Left = var_C4
  loc_151F94B:           If (Me.var_C8.RecordCount > 0) Then
  loc_151F959:             Set var_8C = Me.FGPoint
  loc_151F975:             Proc_6_137_1192FDC(Me.DGEmp, global_120)
  loc_151F983:           End If
  loc_151F9DA:           Set var_88 = Me.Txt
  loc_151F9E0:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151F9E8:           ((global_120.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_151FA0E:           If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_151FA11:             Exit Sub
  loc_151FA12:           End If
  loc_151FA1F:           Set var_88 = Me.Txt
  loc_151FA25:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151FA2D:           var_A0 = var_8C.Text
  loc_151FA3F:           var_C4 = "Name"
  loc_151FA7D:           If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_C4).Value) Then
  loc_151FA89:             Me.Recordset15.MoveFirst
  loc_151FAAC:             Set var_88 = Me.Txt
  loc_151FAB2:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_151FABA:             0 = var_8C.Text
  loc_151FAD6:             Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_151FAEB:           End If
  loc_151FAEE:         Else
  loc_151FAF6:           If (var_92 = CInt(&H19)) Then
  loc_151FB24:             var_C4 = CVar((Me.FrComp.Top + Me.FrComp.Height)) 'Single
  loc_151FB2D:             Set var_90 = Me.DGCompany
  loc_151FB33:             var_90.Top = var_C4
  loc_151FB4F:             Set var_8C = Me.Txt
  loc_151FB55:             Call 0.Method_Txt_GotFocus0 (CInt(&H19), var_90)
  loc_151FB7B:             var_C4 = CVar((Me.FrComp.Left + var_90.Left)) 'Single
  loc_151FB84:             Set var_C8 = Me.DGCompany
  loc_151FB8A:             var_C8.Left = var_C4
  loc_151FBB4:             If (Me.var_C8.RecordCount > 0) Then
  loc_151FBC2:               Set var_8C = Me.FGPoint
  loc_151FBDE:               Proc_6_137_1192FDC(Me.DGCompany, global_116)
  loc_151FBEC:             End If
  loc_151FC43:             Set var_88 = Me.Txt
  loc_151FC49:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151FC51:             ((global_116.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_151FC77:             If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_151FC7A:               Exit Sub
  loc_151FC7B:             End If
  loc_151FC88:             Set var_88 = Me.Txt
  loc_151FC8E:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151FC96:             var_A0 = var_8C.Text
  loc_151FCA8:             var_C4 = "Name"
  loc_151FCE6:             If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_C4).Value) Then
  loc_151FCF2:               Me.Recordset15.MoveFirst
  loc_151FD15:               Set var_88 = Me.Txt
  loc_151FD1B:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_151FD23:               0 = var_8C.Text
  loc_151FD3F:               Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_151FD54:             End If
  loc_151FD57:           Else
  loc_151FD5F:             If (var_92 = CInt(&H27)) Then
  loc_151FD8D:               var_C4 = CVar((Me.FrMember.Top + Me.FrMember.Height)) 'Single
  loc_151FD96:               Set var_90 = Me.DGMember
  loc_151FD9C:               var_90.Top = var_C4
  loc_151FDB8:               Set var_8C = Me.Txt
  loc_151FDBE:               Call 0.Method_Txt_GotFocus0 (CInt(&H27), var_90)
  loc_151FDE4:               var_C4 = CVar((Me.FrMember.Left + var_90.Left)) 'Single
  loc_151FDED:               Set var_C8 = Me.DGMember
  loc_151FDF3:               var_C8.Left = var_C4
  loc_151FE1D:               If (Me.var_C8.RecordCount > 0) Then
  loc_151FE2B:                 Set var_8C = Me.FGPoint
  loc_151FE47:                 Proc_6_137_1192FDC(Me.DGMember, global_124)
  loc_151FE55:               End If
  loc_151FEAC:               Set var_88 = Me.Txt
  loc_151FEB2:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_151FEBA:               ((global_124.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_151FEE0:               If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_151FEE3:                 Exit Sub
  loc_151FEE4:               End If
  loc_151FEF1:               Set var_88 = Me.Txt
  loc_151FEF7:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151FEFF:               var_A0 = var_8C.Text
  loc_151FF11:               var_C4 = "Name"
  loc_151FF2B:               var_C8 = Me.Recordset15.Fields.Item(var_C4)
  loc_151FF4F:               If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_151FF5B:                 Me.Recordset15.MoveFirst
  loc_151FF7E:                 Set var_88 = Me.Txt
  loc_151FF84:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_151FF8C:                 0 = var_8C.Text
  loc_151FFA8:                 Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_151FFBD:               End If
  loc_151FFBD:             End If
  loc_151FFBD:           End If
  loc_151FFBD:         End If
  loc_151FFBD:       End If
  loc_151FFBD:     End If
  loc_151FFBD:   End If
  loc_151FFBD: End If
  loc_151FFCC: Set var_88 = Me.Txt
  loc_151FFD2: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151FFDA: var_8C.SelStart = 0
  loc_151FFF3: Set var_88 = Me.Txt
  loc_151FFF9: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1520014: Set var_90 = Me.Txt
  loc_152001A: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1520022: var_C8.SelLength = Len(var_8C.Text)
  loc_1520035: Call Proc_167_42_F6E02C()
  loc_152003A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '151926C
  'Data Table: 533C30
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_BC As String
  loc_1518357: var_88 = Shift
  loc_1518364: If (CLng(Shift) = &H1B) Then
  loc_1518367:   Call Proc_167_42_F6E02C(var_88)
  loc_151836C:   Exit Sub
  loc_151836D: End If
  loc_1518370: var_8A = KeyCode
  loc_151837B: If (var_8A = CInt(0)) Then
  loc_1518396:   Set var_A4 = Nothing
  loc_15183A1:   Set var_A0 = Nothing
  loc_15183D3:   Proc_6_69_134A630(Me.DGRoomNo, Me.Txt, CInt(0), global_96, Shift, 0)
  loc_1518440:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1518466:     Proc_6_138_106E830(Me.DGRoomNo, global_96, KeyCode, Me.FGPoint, 1)
  loc_1518474:   End If
  loc_1518477: Else
  loc_151847F:   If (var_8A = CInt(&H24)) Then
  loc_15184A5:     Set var_A0 = Nothing
  loc_15184D7:     Proc_6_69_134A630(Me.DGBill, Me.Txt, CInt(&H24), global_192, Shift, 0, 0)
  loc_1518544:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_151854B:       Set var_A0 = Me.DGBill
  loc_151856A:       Proc_6_138_106E830(var_A0, global_192, KeyCode, Me.FGPoint, var_A0, Nothing)
  loc_1518578:     End If
  loc_151857B:   Else
  loc_1518583:     If (var_8A = CInt(4)) Then
  loc_151859E:       Set var_A4 = Nothing
  loc_15185DB:       Proc_6_69_134A630(Me.DGChrgPayment, Me.Txt, CInt(4), global_100, Shift, 0, 1, Nothing)
  loc_1518648:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_151864F:         Set var_A0 = Me.DGChrgPayment
  loc_1518656:         Set var_94 = Me.FGPoint
  loc_151866E:         Proc_6_138_106E830(var_A0, global_100, KeyCode, var_94, var_A4, 0)
  loc_151867C:       End If
  loc_151867F:     Else
  loc_1518687:       If (var_8A = CInt(6)) Then
  loc_1518694:         Set var_90 = Me.Txt
  loc_151869A:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, var_A0)
  loc_15186B5:         Proc_6_41_FA1734(var_94, Shift, 8, 2)
  loc_15186C4:       Else
  loc_15186CC:         If (var_8A = CInt(&H23)) Then
  loc_15186D9:           Set var_90 = Me.Txt
  loc_15186DF:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_A4)
  loc_15186FA:           Proc_6_41_FA1734(var_94, Shift, 6)
  loc_1518709:         Else
  loc_1518711:           If (var_8A = CInt(&H18)) Then
  loc_151872C:             Set var_A4 = Nothing
  loc_1518737:             Set var_A0 = Nothing
  loc_1518769:             Proc_6_69_134A630(Me.DGRoom, Me.Txt, CInt(&H18), global_112, Shift, 0, 1)
  loc_15187D6:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_15187DD:               Set var_A0 = Me.DGRoom
  loc_15187FC:               Proc_6_138_106E830(var_A0, global_112, KeyCode, Me.FGPoint, var_A0)
  loc_151880A:             End If
  loc_151880D:           Else
  loc_1518815:             If (var_8A = CInt(&H17)) Then
  loc_1518871:               Proc_6_69_134A630(Me.DGEmp, Me.Txt, CInt(&H17), global_120, Shift, 0, 1, Nothing)
  loc_15188E1:               If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_151890B:                 Proc_6_138_106E830(Me.DGEmp, global_120, KeyCode, Me.FGPoint, Nothing, 0)
  loc_1518919:               End If
  loc_151891C:             Else
  loc_1518924:               If (var_8A = CInt(&H19)) Then
  loc_151893F:                 Set var_A4 = Nothing
  loc_1518980:                 Proc_6_69_134A630(Me.DGCompany, Me.Txt, CInt(&H19), global_116, Shift, 0, 1, Nothing)
  loc_15189F0:                 If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_15189FE:                   Set var_94 = Me.FGPoint
  loc_1518A1A:                   Proc_6_138_106E830(Me.DGCompany, global_116, KeyCode, var_94, var_A4, 0)
  loc_1518A28:                 End If
  loc_1518A2B:               Else
  loc_1518A33:                 If (var_8A = CInt(5)) Then
  loc_1518A40:                   If (CLng(Shift) = &H2D) Then
  loc_1518A50:                     Set var_90 = Me.Txt
  loc_1518A56:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC, var_A4)
  loc_1518A5E:                     0 = var_94.Text
  loc_1518A69:                     Call Proc_167_51_EE3248(var_B8, var_BC, 2)
  loc_1518A7F:                     Set var_A0 = Me.Txt
  loc_1518A85:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_1518A8D:                     var_A4.Text = 0 & var_B8
  loc_1518AB3:                     Set var_90 = Me.Txt
  loc_1518AB9:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_1518AC1:                     var_B8 = var_94.Text
  loc_1518AD4:                     Set var_A0 = Me.Txt
  loc_1518ADA:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_1518AE2:                     var_A4.SelStart = Len(var_B8)
  loc_1518AF5:                     Exit Sub
  loc_1518AF6:                   End If
  loc_1518AF9:                 Else
  loc_1518B01:                   If (var_8A = CInt(&H25)) Then
  loc_1518B0E:                     Set var_90 = Me.Txt
  loc_1518B14:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_1518B2F:                     Proc_6_41_FA1734(var_94, Shift, 8)
  loc_1518B3E:                   Else
  loc_1518B46:                     If (var_8A = CInt(&H27)) Then
  loc_1518B61:                       Set var_A4 = Nothing
  loc_1518B6C:                       Set var_A0 = Nothing
  loc_1518BA2:                       Proc_6_69_134A630(Me.DGMember, Me.Txt, CInt(&H27), global_124, Shift, 0)
  loc_1518C12:                       If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1518C3C:                         Proc_6_138_106E830(Me.DGMember, global_124, KeyCode, Me.FGPoint, 1)
  loc_1518C4A:                       End If
  loc_1518C4A:                     End If
  loc_1518C4A:                   End If
  loc_1518C4A:                 End If
  loc_1518C4A:               End If
  loc_1518C4A:             End If
  loc_1518C4A:           End If
  loc_1518C4A:         End If
  loc_1518C4A:       End If
  loc_1518C4A:     End If
  loc_1518C4A:   End If
  loc_1518C4A: End If
  loc_1518C81: var_F0 = Me.DGCompany.Visible
  loc_1518C98: var_100 = Me.DGEmp.Visible
  loc_1518D0C: If (((((((CBool(Me.DGMember.Visible) = 0) And (CBool(Me.DGBill.Visible) = 0)) And (CBool(var_F0) = 0)) And (CBool(var_100) = 0)) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(Me.DGRoomNo.Visible) = 0)) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_1518D43:   Set var_94 = Me.FrComp
  loc_1518D5C:   Set var_A0 = Me.FrChqDet
  loc_1518D75:   Set var_A4 = Me.FrSendRoom
  loc_1518DD2:   If ((((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((((((Me.FrCCDet.Visible = 0) And (var_94.Visible = 0)) And (var_A0.Visible = 0)) And (var_A4.Visible = 0)) And (Me.FrEmp.Visible = 0)) And (Me.FrMember.Visible = 0))) And (KeyCode = CInt(5))) Then
  loc_1518DDB:     Call Txt_Validate(KeyCode)
  loc_1518DE6:     If (var_86 = &HFF) Then
  loc_1518DE9:       Exit Sub
  loc_1518DEA:     End If
  loc_1518DEA:     Call Proc_167_47_1579F6C(var_86, var_A0, var_A4)
  loc_1518DF8:     If (global_188 = 0) Then
  loc_1518E06:       Set var_90 = Me.Txt
  loc_1518E0C:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, 0)
  loc_1518E14:       var_94.SetFocus
  loc_1518E20:     End If
  loc_1518E20:     Exit Sub
  loc_1518E21:   End If
  loc_1518E3F:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H16))) Then
  loc_1518E48:     Call Txt_Validate(KeyCode)
  loc_1518E5C:     Me.FGPoint.Visible = False
  loc_1518E6A:     If (var_86 = &HFF) Then
  loc_1518E6D:       Exit Sub
  loc_1518E6E:     End If
  loc_1518EA5:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_1518EA8:       Call Proc_167_47_1579F6C(var_86, 0)
  loc_1518EAD:     End If
  loc_1518EB6:     If (global_188 = 0) Then
  loc_1518EC4:       Set var_90 = Me.Txt
  loc_1518ECA:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_1518ED2:       var_94.SetFocus
  loc_1518EDE:     End If
  loc_1518EDE:     Exit Sub
  loc_1518EDF:   End If
  loc_1518EFD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H18))) Then
  loc_1518F06:     Call Txt_Validate(KeyCode)
  loc_1518F1A:     Me.FGPoint.Visible = False
  loc_1518F28:     If (var_86 = &HFF) Then
  loc_1518F2B:       Exit Sub
  loc_1518F2C:     End If
  loc_1518F63:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_1518F66:       Call Proc_167_47_1579F6C(var_86)
  loc_1518F6B:     End If
  loc_1518F74:     If (global_188 = 0) Then
  loc_1518F82:       Set var_90 = Me.Txt
  loc_1518F88:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_1518F90:       var_94.SetFocus
  loc_1518F9C:     End If
  loc_1518F9C:     Exit Sub
  loc_1518F9D:   End If
  loc_1518FBB:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_1518FC4:     Call Txt_Validate(KeyCode)
  loc_1518FCF:     If (var_86 = &HFF) Then
  loc_1518FD2:       Exit Sub
  loc_1518FD3:     End If
  loc_151900A:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_151900D:       Call Proc_167_47_1579F6C(var_86)
  loc_1519012:     End If
  loc_151901B:     If (global_188 = 0) Then
  loc_1519029:       Set var_90 = Me.Txt
  loc_151902F:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_1519037:       var_94.SetFocus
  loc_1519043:     End If
  loc_1519043:     Exit Sub
  loc_1519044:   End If
  loc_151906B:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(&H19)) Or (KeyCode = CInt(&H27)))) Then
  loc_1519074:     Call Txt_Validate(KeyCode)
  loc_1519099:     Set var_90 = Me.Txt
  loc_151909F:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_B8, 0)
  loc_15190A7:     (var_86 = &HFF) = var_94.Tag
  loc_15190D0:     If (var_8A Or (Proc_96_1_F8D0C4(Proc_6_38_E69628(CVar(var_B8), var_86)) = 0)) Then
  loc_15190D9:       Call 0.Method_arg_50 (var_B8)
  loc_15190FA:       MsgBox("Credit Not Allowed to this company.", &H10, CVar(var_B8), var_F0, var_100)
  loc_151910A:       Exit Sub
  loc_151910B:     End If
  loc_1519111:     If (var_86 = &HFF) Then
  loc_1519114:       Exit Sub
  loc_1519115:     End If
  loc_151914C:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_151914F:       Call Proc_167_47_1579F6C()
  loc_1519154:     End If
  loc_151915D:     If (global_188 = 0) Then
  loc_151916B:       Set var_90 = Me.Txt
  loc_1519171:       Call 0.Method_Txt_KeyDown0 (CInt(4))
  loc_1519179:       var_94.SetFocus
  loc_1519185:     End If
  loc_1519185:     Exit Sub
  loc_1519186:   End If
  loc_15191A4:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H25))) Then
  loc_15191AD:     Call Txt_Validate(KeyCode)
  loc_15191B8:     If (var_86 = &HFF) Then
  loc_15191BB:       Exit Sub
  loc_15191BC:     End If
  loc_15191F3:     If (MsgBox("Add Record ?", 4, "Save Data", var_F0, var_100) = 6) Then
  loc_15191F6:       Call Proc_167_47_1579F6C(var_86)
  loc_15191FB:     End If
  loc_1519204:     If (global_188 = 0) Then
  loc_1519212:       Set var_90 = Me.Txt
  loc_1519218:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_1519220:       var_94.SetFocus
  loc_151922C:     End If
  loc_151922C:     Exit Sub
  loc_151922D:   End If
  loc_1519242:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_151924B:     Proc_6_75_E5335C(Shift, arg_14)
  loc_1519250:   End If
  loc_151925A:   If (CLng(Shift) = &H26) Then
  loc_1519263:     Proc_6_76_E533C8(Shift, arg_14)
  loc_1519268:   End If
  loc_1519268: End If
  loc_1519268: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1231194
  'Data Table: 533C30
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_1230C6B: Proc_6_58_E06050(arg_10)
  loc_1230C76: Proc_6_133_E7FB08(var_94)
  loc_1230C7F: arg_10 = CInt(var_94)
  loc_1230C88: var_96 = KeyAscii
  loc_1230C93: If (var_96 = CInt(0)) Then
  loc_1230CB2:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_1230CDF:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_96, arg_10, "RoomNo")
  loc_1230D11:     Proc_6_138_106E830(Me.DGRoomNo, global_96, KeyAscii, Me.FGPoint)
  loc_1230D1F:   End If
  loc_1230D22: Else
  loc_1230D2A:   If (var_96 = CInt(&H24)) Then
  loc_1230D49:     If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_1230D76:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_192, arg_10, "Bill_No")
  loc_1230DA8:       Proc_6_138_106E830(Me.DGBill, global_192, KeyAscii, Me.FGPoint, 0)
  loc_1230DB6:     End If
  loc_1230DB9:   Else
  loc_1230DC1:     If (var_96 = CInt(4)) Then
  loc_1230DE0:       If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_1230E0D:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_100, arg_10, "Name")
  loc_1230E3F:         Proc_6_138_106E830(Me.DGChrgPayment, global_100, KeyAscii, Me.FGPoint, 0)
  loc_1230E4D:       End If
  loc_1230E50:     Else
  loc_1230E58:       If (var_96 = CInt(&H18)) Then
  loc_1230E77:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1230EA4:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_112, arg_10, "RoomNo")
  loc_1230EBE:           Set var_A8 = Me.FGPoint
  loc_1230ED6:           Proc_6_138_106E830(Me.DGRoom, global_112, KeyAscii, var_A8, 0)
  loc_1230EE4:         End If
  loc_1230EE7:       Else
  loc_1230EEF:         If (var_96 = CInt(6)) Then
  loc_1230EFC:           Set var_9C = Me.Txt
  loc_1230F02:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1230F1D:           Proc_6_42_129B55C(var_A8, arg_10, 8, 2)
  loc_1230F2C:         Else
  loc_1230F34:           If (var_96 = CInt(&H23)) Then
  loc_1230F41:             Set var_9C = Me.Txt
  loc_1230F47:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_1230F62:             Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_1230F71:           Else
  loc_1230F79:             If (var_96 = CInt(&H17)) Then
  loc_1230F98:               If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1230FC9:                 Proc_6_89_1470B00(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_1230FFF:                 Proc_6_138_106E830(Me.DGEmp, global_120, KeyAscii, Me.FGPoint)
  loc_123100D:               End If
  loc_1231010:             Else
  loc_1231018:               If (var_96 = CInt(&H19)) Then
  loc_1231037:                 If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1231068:                   Proc_6_89_1470B00(Me.Txt, KeyAscii, global_116, arg_10, "Name")
  loc_123109E:                   Proc_6_138_106E830(Me.DGCompany, global_116, KeyAscii, Me.FGPoint, 0)
  loc_12310AC:                 End If
  loc_12310AF:               Else
  loc_12310B7:                 If (var_96 = CInt(&H27)) Then
  loc_12310D6:                   If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1231107:                     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_124, arg_10, "Name")
  loc_1231121:                     Set var_A8 = Me.FGPoint
  loc_123113D:                     Proc_6_138_106E830(Me.DGMember, global_124, KeyAscii, var_A8, 0)
  loc_123114B:                   End If
  loc_123114E:                 Else
  loc_1231156:                   If (var_96 = CInt(&H25)) Then
  loc_1231163:                     Set var_9C = Me.Txt
  loc_1231169:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1231184:                     Proc_6_42_129B55C(var_A8, arg_10, 8, 0)
  loc_1231190:                   End If
  loc_1231190:                 End If
  loc_1231190:               End If
  loc_1231190:             End If
  loc_1231190:           End If
  loc_1231190:         End If
  loc_1231190:       End If
  loc_1231190:     End If
  loc_1231190:   End If
  loc_1231190: End If
  loc_1231190: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1118BD4
  'Data Table: 533C30
  Dim var_86 As Integer
  loc_111887B: var_86 = KeyCode
  loc_1118886: If (var_86 = CInt(0)) Then
  loc_11188A5:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_11188B9:     var_A8 = "RoomNO"
  loc_11188E1:     Proc_6_68_12A2818(Me.DGRoomNo, Me.Txt, CInt(0), global_96)
  loc_11188F4:   End If
  loc_11188F7: Else
  loc_11188FF:   If (var_86 = CInt(&H24)) Then
  loc_111891E:     If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_1118932:       var_A8 = "Bill_No"
  loc_111895A:       Proc_6_68_12A2818(Me.DGBill, Me.Txt, CInt(&H24), global_192, Shift)
  loc_111896D:     End If
  loc_1118970:   Else
  loc_1118978:     If (var_86 = CInt(4)) Then
  loc_1118997:       If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_11189AB:         var_A8 = "Name"
  loc_11189D3:         Proc_6_68_12A2818(Me.DGChrgPayment, Me.Txt, CInt(4), global_100, Shift)
  loc_11189E6:       End If
  loc_11189E9:     Else
  loc_11189F1:       If (var_86 = CInt(&H17)) Then
  loc_1118A10:         If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1118A50:           Proc_6_68_12A2818(Me.DGEmp, Me.Txt, CInt(&H17), global_120, Shift, "Name")
  loc_1118A63:         End If
  loc_1118A66:       Else
  loc_1118A6E:         If (var_86 = CInt(&H18)) Then
  loc_1118A8D:           If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1118AC5:             Proc_6_68_12A2818(Me.DGRoom, Me.Txt, KeyCode, global_112, Shift, "RoomNo")
  loc_1118AD8:           End If
  loc_1118ADB:         Else
  loc_1118AE3:           If (var_86 = CInt(&H19)) Then
  loc_1118B02:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1118B42:               Proc_6_68_12A2818(Me.DGCompany, Me.Txt, CInt(&H19), global_116, Shift, "Name")
  loc_1118B55:             End If
  loc_1118B58:           Else
  loc_1118B60:             If (var_86 = CInt(&H27)) Then
  loc_1118B7F:               If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1118BBF:                 Proc_6_68_12A2818(Me.DGMember, Me.Txt, CInt(&H27), global_124, Shift, "Name")
  loc_1118BD2:               End If
  loc_1118BD2:             End If
  loc_1118BD2:           End If
  loc_1118BD2:         End If
  loc_1118BD2:       End If
  loc_1118BD2:     End If
  loc_1118BD2:   End If
  loc_1118BD2: End If
  loc_1118BD2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EF34
  'Data Table: 533C30
  loc_E4EF12: Set var_88 = Me.Txt
  loc_E4EF18: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EF26: Proc_6_73_E23294(var_8C)
  loc_E4EF32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '18EDD58
  'Data Table: 533C30
  Dim var_DA As Integer
  Dim var_E4 As Variant
  Dim var_EC As String
  Dim Me As Variant
  Dim var_100 As String
  Dim var_E0 As Variant
  Dim var_E8 As String
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_164 As String
  Dim var_168 As Variant
  Dim var_18C As Variant
  Dim var_1A4 As String
  Dim var_1B0 As String
  Dim var_1AC As TextBox
  Dim var_160 As Variant
  Dim unk_533C5B As Connection15
  Dim var_D8 As Recordset15
  Dim arg_10 As Integer
  Dim var_1C0 As Variant
  Dim var_106 As Integer
  loc_18EB2EB: var_DA = Cancel
  loc_18EB2F6: If (var_DA = CInt(0)) Then
  loc_18EB305:   If (global_148 = 1) Then
  loc_18EB316:     Set var_E0 = Me.Txt
  loc_18EB31C:     Call 0.Method_Txt_Validate0 (CInt(0), var_E4)
  loc_18EB324:     var_E8 = var_E4.Text
  loc_18EB33B:     If (var_E8 <> vbNullString) Then
  loc_18EB35D:       Set var_E0 = Me.Txt
  loc_18EB363:       Call 0.Method_Txt_Validate0 (CInt(0), var_E4, var_E8, "roomNo='")
  loc_18EB36B:       0 = var_E4.Text
  loc_18EB384:       Me.Find 1 & var_E8 & "'", var_100, var_DA
  loc_18EB399:     End If
  loc_18EB399:   End If
  loc_18EB399:   Call Proc_167_46_121C188()
  loc_18EB3EC:   Set var_E0 = Me.Txt
  loc_18EB3F2:   Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EB412:   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_E4.Text = vbNullString)) Then
  loc_18EB422:     Set var_E0 = Me.Txt
  loc_18EB428:     Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EB430:     var_E4.Tag = vbNullString
  loc_18EB43C:     Exit Sub
  loc_18EB43D:   End If
  loc_18EB478:   Set var_10C = Me.Txt
  loc_18EB47E:   Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18EB486:   var_110.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_18EB4D7:   Set var_10C = Me.Txt
  loc_18EB4DD:   Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18EB4E5:   var_110.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_18EB534:   Set var_10C = Me.Txt
  loc_18EB53A:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_18EB542:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_18EB58F:   Set var_10C = Me.Txt
  loc_18EB595:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_18EB59D:   var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("DocID")))
  loc_18EB5CB:   var_E4 = Me.Fields.Item("ChkInDate")
  loc_18EB5EA:   Set var_10C = Me.Txt
  loc_18EB5F0:   Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_18EB5F8:   var_110.Text = Proc_6_38_E69628(CVar(var_E4))
  loc_18EB617:   Set var_E0 = Me.Txt
  loc_18EB61D:   Call 0.Method_Txt_Validate0 (CInt(1))
  loc_18EB657:   Me.LblCheckInDay.Caption = CStr(Format(CVar(var_E4), "DDDD"))
  loc_18EB6C2:   Set var_10C = Me.Txt
  loc_18EB6C8:   Call 0.Method_Txt_Validate0 (CInt(2), var_110, CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_18EB6D0:   var_110.Text = 1
  loc_18EB724:   var_130 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_18EB741:   Set var_10C = Me.Txt
  loc_18EB747:   Call 0.Method_Txt_Validate0 (CInt(3), var_110)
  loc_18EB74F:   var_110.Text = CStr(Right(var_130, 2))
  loc_18EB7A6:   Set var_10C = Me.Txt
  loc_18EB7AC:   Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_18EB7B4:   var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("GuestCode")))
  loc_18EB801:   Set var_10C = Me.Txt
  loc_18EB807:   Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_18EB80F:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("GuestName")))
  loc_18EB85C:   Set var_10C = Me.Txt
  loc_18EB862:   Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_18EB86A:   var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_18EB8B7:   Set var_10C = Me.Txt
  loc_18EB8BD:   Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_18EB8C5:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_18EB902:   Proc_6_39_E7D3A0(var_130, CVar(Me.Fields.Item("RoomRate")))
  loc_18EB919:   Set var_10C = Me.Txt
  loc_18EB91F:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_110)
  loc_18EB927:   var_110.Text = CStr(var_130)
  loc_18EB978:   Set var_10C = Me.Txt
  loc_18EB97E:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_110)
  loc_18EB986:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_18EB9D3:   Set var_10C = Me.Txt
  loc_18EB9D9:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_18EB9E1:   var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_18EBA2E:   Set var_10C = Me.Txt
  loc_18EBA34:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_18EBA3C:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_18EBA89:   Set var_10C = Me.Txt
  loc_18EBA8F:   Call 0.Method_Txt_Validate0 (CInt(&H26), var_110)
  loc_18EBA97:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PlanCode")))
  loc_18EBAB1:   global_136 = "RO"
  loc_18EBAE6:   global_132 = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_18EBB2C:   Set var_10C = Me.Txt
  loc_18EBB32:   Call 0.Method_Txt_Validate0 (CInt(9), var_110)
  loc_18EBB3A:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_18EBB77:   Proc_6_39_E7D3A0(var_130, CVar(Me.Fields.Item("OldAdult")))
  loc_18EBB8E:   Set var_10C = Me.Txt
  loc_18EBB94:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_110)
  loc_18EBB9C:   var_110.Text = CStr(var_130)
  loc_18EBBCE:   var_E4 = Me.Fields.Item("OldChild")
  loc_18EBBDD:   Proc_6_39_E7D3A0(var_130, CVar(var_E4))
  loc_18EBBF4:   Set var_10C = Me.Txt
  loc_18EBBFA:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_110)
  loc_18EBC02:   var_110.Text = CStr(var_130)
  loc_18EBC2D:   Set var_E0 = Me.Txt
  loc_18EBC33:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_E4)
  loc_18EBC3B:   var_E4.Text = CStr(MemVar_1F950EC)
  loc_18EBC83:   Set var_10C = Me.Txt
  loc_18EBC89:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_110)
  loc_18EBC91:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add1")))
  loc_18EBCDE:   Set var_10C = Me.Txt
  loc_18EBCE4:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_110)
  loc_18EBCEC:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add2")))
  loc_18EBD1A:   var_E4 = Me.Fields.Item("CityName")
  loc_18EBD5A:   var_110 = Me.Fields.Item("StateName")
  loc_18EBDBE:   var_1B0 = var_E4 & Proc_6_38_E69628(Trim(CVar(var_110)), Proc_6_38_E69628(Trim(CVar(var_E4))) & ",") & "," & Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("CountryName"))))
  loc_18EBDCC:   Set var_1A8 = Me.Txt
  loc_18EBDD2:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1AC)
  loc_18EBDDA:   var_1AC.Text = var_1B0
  loc_18EBE45:   Set var_10C = Me.Txt
  loc_18EBE4B:   Call 0.Method_Txt_Validate0 (CInt(&H1F), var_110)
  loc_18EBE53:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_18EBEBA:   Set var_10C = Me.Txt
  loc_18EBEC0:   Call 0.Method_Txt_Validate0 (CInt(&H1E), var_110)
  loc_18EBEC8:   var_110.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_18EBF39:   Set var_10C = Me.Txt
  loc_18EBF3F:   Call 0.Method_Txt_Validate0 (CInt(&H1D), var_110)
  loc_18EBF47:   var_110.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_18EBF9E:   Set var_10C = Me.Txt
  loc_18EBFA4:   Call 0.Method_Txt_Validate0 (CInt(&H20), var_110)
  loc_18EBFAC:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_18EBFF9:   Set var_10C = Me.Txt
  loc_18EBFFF:   Call 0.Method_Txt_Validate0 (CInt(&H21), var_110)
  loc_18EC007:   var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_18EC035:   var_E4 = Me.Fields.Item("Comments3")
  loc_18EC046:   var_E8 = Proc_6_38_E69628(CVar(var_E4))
  loc_18EC054:   Set var_10C = Me.Txt
  loc_18EC05A:   Call 0.Method_Txt_Validate0 (CInt(&H22), var_110)
  loc_18EC062:   var_110.Text = var_E8
  loc_18EC0B0:   Me.txtVTime.defaultText = CVar(CStr(Format(Time, "HH:mm")))
  loc_18EC0C6: Else
  loc_18EC0CE:   If (var_DA = CInt(&H24)) Then
  loc_18EC0E8:     If (Me.RecordCount <= 0) Then
  loc_18EC0EB:       Exit Sub
  loc_18EC0EC:     End If
  loc_18EC0F7:     Me.Requery -1
  loc_18EC113:     If (Me.RecordCount > 0) Then
  loc_18EC11C:       Me.MoveFirst
  loc_18EC121:     End If
  loc_18EC12F:     Set var_E0 = Me.Txt
  loc_18EC135:     Call 0.Method_Txt_Validate0 (CInt(&H24), var_E4, var_E8)
  loc_18EC13D:     1 = var_E4.Text
  loc_18EC154:     If (var_E8 <> vbNullString) Then
  loc_18EC1AE:       Me.Find CStr("Docid='" & Me.Fields.Item("FolioNoDocid").Value & "'"), 0, 1
  loc_18EC1C6:     End If
  loc_18EC1E0:     var_E4 = Me.Fields.Item("SettleDate")
  loc_18EC20C:     var_E8 = CStr(Format(CVar(var_E4), "dd/MMM/yyyy"))
  loc_18EC21B:     Set var_10C = Me.Txt
  loc_18EC221:     Call 0.Method_Txt_Validate0 (CInt(&H11), var_110, var_E8, 1)
  loc_18EC229:     var_110.Text = 1
  loc_18EC243:     Call Proc_167_46_121C188(var_1C0)
  loc_18EC296:     Set var_E0 = Me.Txt
  loc_18EC29C:     Call 0.Method_Txt_Validate0 (Cancel, var_E4, var_E8)
  loc_18EC2A4:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_E4.Text
  loc_18EC2BC:     If (1 Or (var_E8 = vbNullString)) Then
  loc_18EC2CC:       Set var_E0 = Me.Txt
  loc_18EC2D2:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EC2DA:       var_E4.Tag = vbNullString
  loc_18EC2E6:       Exit Sub
  loc_18EC2E7:     End If
  loc_18EC322:     Set var_10C = Me.Txt
  loc_18EC328:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18EC330:     var_110.Text = CStr(Me.Fields.Item("Bill_no").Value)
  loc_18EC381:     Set var_10C = Me.Txt
  loc_18EC387:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18EC38F:     var_110.Tag = CStr(Me.Fields.Item("FolioNoDocid").Value)
  loc_18EC3E1:     Set var_10C = Me.Txt
  loc_18EC3E7:     Call 0.Method_Txt_Validate0 (CInt(0), var_110)
  loc_18EC3EF:     var_110.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_18EC441:     Set var_10C = Me.Txt
  loc_18EC447:     Call 0.Method_Txt_Validate0 (CInt(0), var_110)
  loc_18EC44F:     var_110.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_18EC49E:     Set var_10C = Me.Txt
  loc_18EC4A4:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_18EC4AC:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_18EC4F9:     Set var_10C = Me.Txt
  loc_18EC4FF:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_18EC507:     var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("DocID")))
  loc_18EC535:     var_E4 = Me.Fields.Item("ChkInDate")
  loc_18EC554:     Set var_10C = Me.Txt
  loc_18EC55A:     Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_18EC562:     var_110.Text = Proc_6_38_E69628(CVar(var_E4))
  loc_18EC581:     Set var_E0 = Me.Txt
  loc_18EC587:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_18EC5C1:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_E4), "DDDD"))
  loc_18EC62C:     Set var_10C = Me.Txt
  loc_18EC632:     Call 0.Method_Txt_Validate0 (CInt(2), var_110, CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_18EC63A:     var_110.Text = 1
  loc_18EC68E:     var_130 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_18EC6AB:     Set var_10C = Me.Txt
  loc_18EC6B1:     Call 0.Method_Txt_Validate0 (CInt(3), var_110)
  loc_18EC6B9:     var_110.Text = CStr(Right(var_130, 2))
  loc_18EC710:     Set var_10C = Me.Txt
  loc_18EC716:     Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_18EC71E:     var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("GuestCode")))
  loc_18EC76B:     Set var_10C = Me.Txt
  loc_18EC771:     Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_18EC779:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("GuestName")))
  loc_18EC7C6:     Set var_10C = Me.Txt
  loc_18EC7CC:     Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_18EC7D4:     var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_18EC821:     Set var_10C = Me.Txt
  loc_18EC827:     Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_18EC82F:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_18EC86C:     Proc_6_39_E7D3A0(var_130, CVar(Me.Fields.Item("RoomRate")))
  loc_18EC883:     Set var_10C = Me.Txt
  loc_18EC889:     Call 0.Method_Txt_Validate0 (CInt(&HF), var_110)
  loc_18EC891:     var_110.Text = CStr(var_130)
  loc_18EC8E2:     Set var_10C = Me.Txt
  loc_18EC8E8:     Call 0.Method_Txt_Validate0 (CInt(&HE), var_110)
  loc_18EC8F0:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_18EC93D:     Set var_10C = Me.Txt
  loc_18EC943:     Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_18EC94B:     var_110.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_18EC998:     Set var_10C = Me.Txt
  loc_18EC99E:     Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_18EC9A6:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_18EC9F3:     Set var_10C = Me.Txt
  loc_18EC9F9:     Call 0.Method_Txt_Validate0 (CInt(&H26), var_110)
  loc_18ECA01:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PlanCode")))
  loc_18ECA1B:     global_136 = "RO"
  loc_18ECA50:     global_132 = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_18ECA96:     Set var_10C = Me.Txt
  loc_18ECA9C:     Call 0.Method_Txt_Validate0 (CInt(9), var_110)
  loc_18ECAA4:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_18ECAE1:     Proc_6_39_E7D3A0(var_130, CVar(Me.Fields.Item("OldAdult")))
  loc_18ECAF8:     Set var_10C = Me.Txt
  loc_18ECAFE:     Call 0.Method_Txt_Validate0 (CInt(&HC), var_110)
  loc_18ECB06:     var_110.Text = CStr(var_130)
  loc_18ECB47:     Proc_6_39_E7D3A0(var_130, CVar(Me.Fields.Item("OldChild")))
  loc_18ECB5E:     Set var_10C = Me.Txt
  loc_18ECB64:     Call 0.Method_Txt_Validate0 (CInt(&HD), var_110)
  loc_18ECB6C:     var_110.Text = CStr(var_130)
  loc_18ECBBD:     Set var_10C = Me.Txt
  loc_18ECBC3:     Call 0.Method_Txt_Validate0 (CInt(&H1A), var_110)
  loc_18ECBCB:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add1")))
  loc_18ECC18:     Set var_10C = Me.Txt
  loc_18ECC1E:     Call 0.Method_Txt_Validate0 (CInt(&H1B), var_110)
  loc_18ECC26:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add2")))
  loc_18ECC54:     var_E4 = Me.Fields.Item("CityName")
  loc_18ECC94:     var_110 = Me.Fields.Item("StateName")
  loc_18ECCD0:     var_168 = Me.Fields
  loc_18ECCF8:     var_1B0 = var_E4 & Proc_6_38_E69628(Trim(CVar(var_110)), Proc_6_38_E69628(Trim(CVar(var_E4))) & ",") & "," & Proc_6_38_E69628(Trim(CVar(var_168.Item("CountryName"))))
  loc_18ECD06:     Set var_1A8 = Me.Txt
  loc_18ECD0C:     Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1AC)
  loc_18ECD14:     var_1AC.Text = var_1B0
  loc_18ECD7F:     Set var_10C = Me.Txt
  loc_18ECD85:     Call 0.Method_Txt_Validate0 (CInt(&H1F), var_110)
  loc_18ECD8D:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_18ECDF4:     Set var_10C = Me.Txt
  loc_18ECDFA:     Call 0.Method_Txt_Validate0 (CInt(&H1E), var_110)
  loc_18ECE02:     var_110.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_18ECE4B:     var_EC = Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))
  loc_18ECE56:     var_130 = CVar(var_EC) 'String
  loc_18ECE73:     Set var_10C = Me.Txt
  loc_18ECE79:     Call 0.Method_Txt_Validate0 (CInt(&H1D), var_110)
  loc_18ECE81:     var_110.Text = CStr(Right(var_130, 2))
  loc_18ECED8:     Set var_10C = Me.Txt
  loc_18ECEDE:     Call 0.Method_Txt_Validate0 (CInt(&H20), var_110)
  loc_18ECEE6:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_18ECF33:     Set var_10C = Me.Txt
  loc_18ECF39:     Call 0.Method_Txt_Validate0 (CInt(&H21), var_110)
  loc_18ECF41:     var_110.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_18ECF6F:     var_E4 = Me.Fields.Item("Comments3")
  loc_18ECF8E:     Set var_10C = Me.Txt
  loc_18ECF94:     Call 0.Method_Txt_Validate0 (CInt(&H22), var_110)
  loc_18ECF9C:     var_110.Text = Proc_6_38_E69628(CVar(var_E4))
  loc_18ECFC4:     var_E8 = "Select Sum(AmtDr) as DrAmt,Sum(AmtCr) as CrAmt from paycharge where IsNull(ContraDocid,'')='' And ((Modeset <> 'S' or IsNull(Modeset,'')='') Or (Modeset='S' and PayCode='" & MemVar_1F95078
  loc_18ECFDC:     Set var_E0 = Me.Txt
  loc_18ECFE2:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_E4, var_EC, var_E8 & "ROFF')) and folioNoDocid='")
  loc_18ECFEA:     var_120 = var_E4.Tag
  loc_18ECFF3:     var_164 = -1 & var_EC
  loc_18ED001:     var_1A4 = var_E4 & Proc_6_38_E69628(Trim(CVar(var_110)), Proc_6_38_E69628(Trim(CVar(var_E4))) & ",") & "' and Logsite_code='" & MemVar_1F95078
  loc_18ED011:     unk_533C5B.Execute var_1A4 & "'", var_10C, 
  loc_18ED01C:     Set var_D8 = var_10C
  loc_18ED050:     If (var_D8.RecordCount > 0) Then
  loc_18ED06A:       var_E4 = var_D8.Fields.Item("DrAmt")
  loc_18ED072:       var_120 = CVar(var_E4) 'Address
  loc_18ED079:       Proc_6_39_E7D3A0(var_130)
  loc_18ED090:       Set var_10C = Me.LTxt
  loc_18ED096:       Call 0.Method_Txt_Validate0 (CInt(0), var_110)
  loc_18ED09E:       var_110.Caption = CStr(var_130)
  loc_18ED0C4:       Set var_E0 = Me.LTxt
  loc_18ED0CA:       Call 0.Method_Txt_Validate0 (CInt(0), var_E4)
  loc_18ED106:       var_E4 = var_D8.Fields.Item("CrAmt")
  loc_18ED115:       Proc_6_39_E7D3A0(var_130, CVar(var_E4))
  loc_18ED12C:       Set var_10C = Me.LTxt
  loc_18ED132:       Call 0.Method_Txt_Validate0 (CInt(1), var_110, CStr(var_130))
  loc_18ED13A:       var_110.Caption = Val(var_E4.Caption)
  loc_18ED160:       Set var_E0 = Me.LTxt
  loc_18ED166:       Call 0.Method_Txt_Validate0 (CInt(1), var_E4)
  loc_18ED17E:       global_172 = Val(var_E4.Caption)
  loc_18ED18B:     End If
  loc_18ED1C5:     Me.txtVTime.defaultText = CVar(CStr(Format(Time, "HH:mm")))
  loc_18ED1D8:     Call Proc_167_48_1424F0C(1, 1)
  loc_18ED1E0:   Else
  loc_18ED1E8:     If (var_DA = CInt(&H11)) Then
  loc_18ED1FD:       Set var_E0 = Me.Txt
  loc_18ED203:       Call 0.Method_Txt_Validate0 (Cancel, var_E4, CStr(MemVar_1F950EC))
  loc_18ED227:       Set var_E0 = Me.Txt
  loc_18ED22D:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18ED24D:       If (CDate(global_172) < MemVar_1F950EC) Then
  loc_18ED252:         arg_10 = &HFF
  loc_18ED255:         Exit Sub
  loc_18ED256:       End If
  loc_18ED290:       Me.txtVTime.defaultText = CVar(CStr(Format(Time, "HH:mm")))
  loc_18ED2A6:     Else
  loc_18ED2AE:       If (var_DA = CInt(4)) Then
  loc_18ED33D:         Me.LblNature.Caption = CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")), 1, 1))))
  loc_18ED3A7:         var_18C = arg_10 And (Trim(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PayType")), (CStr(Me.Fields.Item("Flag").Value) = "Cr")))) = vbNullString)
  loc_18ED3BB:         If CBool(var_18C) Then
  loc_18ED413:           Set var_10C = Me.Txt
  loc_18ED419:           Call 0.Method_Txt_Validate0 (CInt(6), var_110, CStr(Format(CVar(Me.Fields.Item("SaleRate")), "0.00")))
  loc_18ED421:           var_110.Text = 1
  loc_18ED43B:         End If
  loc_18ED488:         var_110 = Me.Fields.Item("PayType")
  loc_18ED4BA:         If CBool(Not(IsNull(CVar(Me.Fields.Item("PayType")))) And (var_110.Value <> vbNullString)) Then
  loc_18ED4EF:           Call Proc_167_44_123D18C(CStr(Me.Fields.Item("PayType").Value), 1)
  loc_18ED504:         Else
  loc_18ED510:           Me.FrChqDet.Visible = False
  loc_18ED524:           Me.FrCCDet.Visible = False
  loc_18ED538:           Me.FrEmp.Visible = False
  loc_18ED54C:           Me.FrComp.Visible = False
  loc_18ED560:           Me.FrMember.Visible = False
  loc_18ED574:           Me.FrSendRoom.Visible = False
  loc_18ED57C:         End If
  loc_18ED5B1:         var_E4 = Me.Fields.Item("Flag")
  loc_18ED5DF:         If CBool((FdReSetlement.OpenMode = 1) And (var_E4.Value = "Dr")) Then
  loc_18ED5ED:           Set var_E0 = Me.LTxt
  loc_18ED5F3:           Call 0.Method_Txt_Validate0 (CInt(2), var_E4)
  loc_18ED61F:           var_E8 = CStr(Format(CVar(var_E4), "0.00"))
  loc_18ED62E:           Set var_10C = Me.Txt
  loc_18ED634:           Call 0.Method_Txt_Validate0 (CInt(6), var_110, var_E8)
  loc_18ED63C:           var_110.Text = 1
  loc_18ED656:         End If
  loc_18ED673:         var_E4 = Me.Fields.Item("PayType")
  loc_18ED698:         Set var_10C = Me.Txt
  loc_18ED69E:         Call 0.Method_Txt_Validate0 (CInt(5), var_110, (var_E4.Value = "Cash"))
  loc_18ED6D7:         If CBool(1 And (Trim(CVar(var_110)) = vbNullString)) Then
  loc_18ED6E8:           Set var_E0 = Me.Txt
  loc_18ED6EE:           Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_18ED6F6:           var_E4.Text = "CASH RECD."
  loc_18ED705:         Else
  loc_18ED722:           var_E4 = Me.Fields.Item("PayType")
  loc_18ED72A:           var_120 = var_E4.Value
  loc_18ED74A:           Set var_10C = Me.Txt
  loc_18ED750:           Call 0.Method_Txt_Validate0 (CInt(5), var_110, var_E8)
  loc_18ED758:           (var_120 <> "Cash") = var_110.Text
  loc_18ED784:           If CBool(var_120 And (var_E8 = "CASH RECD.")) Then
  loc_18ED795:             Set var_E0 = Me.Txt
  loc_18ED79B:             Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_18ED7A3:             var_E4.Text = vbNullString
  loc_18ED7B2:           Else
  loc_18ED7CF:             var_E4 = Me.Fields.Item("PayType")
  loc_18ED7F7:             Set var_10C = Me.Txt
  loc_18ED7FD:             Call 0.Method_Txt_Validate0 (CInt(6), var_110)
  loc_18ED836:             If CBool((var_E4.Value = "Cash") And (CDbl(Val(var_110.Text)) < CDbl(0))) Then
  loc_18ED847:               Set var_E0 = Me.Txt
  loc_18ED84D:               Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_18ED855:               var_E4.Text = "CASH PAID "
  loc_18ED861:             End If
  loc_18ED861:           End If
  loc_18ED861:         End If
  loc_18ED8A0:         If (Me.Fields.Item("Flag").Value = "Cr") Then
  loc_18ED8DF:           Set var_10C = Me.Txt
  loc_18ED8E5:           Call 0.Method_Txt_Validate0 (CInt(5), var_110)
  loc_18ED8ED:           var_110.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18ED903:         End If
  loc_18ED91D:         var_E4 = Me.Fields.Item("PayType")
  loc_18ED92E:         var_106 = IsNull(CVar(var_E4))
  loc_18ED94B:         var_110 = Me.Fields.Item("PayType")
  loc_18ED953:         var_140 = CVar(var_110) 'Address
  loc_18ED990:         If (IIf(var_106, vbNullString, var_140) = vbNullString) Then
  loc_18ED9A0:           Set var_E0 = Me.Txt
  loc_18ED9A6:           Call 0.Method_Txt_Validate0 (CInt(&H23), var_E4)
  loc_18ED9AE:           var_E4.Visible = False
  loc_18ED9C5:           Set var_E0 = Me.Lbl
  loc_18ED9CB:           Call 0.Method_Txt_Validate0 (&HF, var_E4)
  loc_18ED9D3:           var_E4.Visible = False
  loc_18ED9E2:         Else
  loc_18ED9EF:           Set var_E0 = Me.Txt
  loc_18ED9F5:           Call 0.Method_Txt_Validate0 (CInt(&H23), var_E4)
  loc_18ED9FD:           var_E4.Visible = True
  loc_18EDA14:           Set var_E0 = Me.Lbl
  loc_18EDA1A:           Call 0.Method_Txt_Validate0 (&HF, var_E4)
  loc_18EDA22:           var_E4.Visible = True
  loc_18EDA2E:         End If
  loc_18EDA31:       Else
  loc_18EDA39:         If (var_DA = CInt(&H16)) Then
  loc_18EDA49:           Set var_E0 = Me.Txt
  loc_18EDA4F:           Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EDA75:           Set var_10C = Me.Txt
  loc_18EDA7B:           Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_18EDA83:           var_110.Text = Proc_6_34_14EEAAC(var_E4.Text)
  loc_18EDA9D:         Else
  loc_18EDAA5:           If (var_DA = CInt(&H14)) Then
  loc_18EDAB5:             Set var_E0 = Me.Txt
  loc_18EDABB:             Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EDADA:             If (var_E4.Text = vbNullString) Then
  loc_18EDADF:               arg_10 = &HFF
  loc_18EDAE2:               Exit Sub
  loc_18EDAE3:             End If
  loc_18EDAED:             Set var_E0 = Me.Txt
  loc_18EDAF3:             Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EDB06:             var_E8 = Proc_6_33_15125B8(var_E4, arg_10)
  loc_18EDB13:             Set var_110 = Me.Txt
  loc_18EDB19:             Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_18EDB21:             var_168.Text = var_E8
  loc_18EDB37:           Else
  loc_18EDB3F:             If (var_DA = CInt(6)) Then
  loc_18EDB6B:               var_130 = Trim(CVar(Me.Fields.Item("PayType")))
  loc_18EDB8B:               Set var_10C = Me.Txt
  loc_18EDB91:               Call 0.Method_Txt_Validate0 (CInt(6), var_110, var_E8)
  loc_18EDB99:               (var_130 <> vbNullString) = var_110.Text
  loc_18EDBAF:               var_160 = var_106 And (CDbl(Val(var_E8)) < CDbl(0))
  loc_18EDBCA:               If CBool(var_160) Then
  loc_18EDBEA:                 var_E4 = Me.Fields.Item("PayType")
  loc_18EDC0C:                 If (var_E4.Value = "Cash") Then
  loc_18EDC1D:                   Set var_E0 = Me.Txt
  loc_18EDC23:                   Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_18EDC2B:                   var_E4.Text = "CASH PAID "
  loc_18EDC37:                 End If
  loc_18EDC37:               End If
  loc_18EDC5E:               Set var_E4 = Me.Txt
  loc_18EDC64:               Call 0.Method_Txt_Validate0 (Cancel, var_10C)
  loc_18EDCA5:               If (((Me.LblNature.Caption = "Credit Card") And (CDbl(Val(var_10C.Text)) <= CDbl(0))) And (FdReSetlement.ParentForm = "Check Out")) Then
  loc_18EDCC1:                 MsgBox("Negative Settlement is not allowed", &H40, var_130, var_140, var_160)
  loc_18EDCD3:                 arg_10 = &HFF
  loc_18EDCD6:               End If
  loc_18EDCE0:               Set var_E0 = Me.Txt
  loc_18EDCE6:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_18EDD20:               Set var_10C = Me.Txt
  loc_18EDD26:               Call 0.Method_Txt_Validate0 (Cancel, var_110, CStr(Format(CVar(var_E4), "0.00")))
  loc_18EDD2E:               var_110.Text = 1
  loc_18EDD48:             End If
  loc_18EDD48:           End If
  loc_18EDD48:         End If
  loc_18EDD48:       End If
  loc_18EDD48:     End If
  loc_18EDD48:   End If
  loc_18EDD48: End If
  loc_18EDD48: Call Proc_167_42_F6E02C(1)
  loc_18EDD52: Set var_D8 = Nothing
  loc_18EDD55: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F4FC34
  'Data Table: 533C30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4FB2B: Me.DGRoom.Visible = False
  loc_F4FB4A: If (Me.RecordCount > 0) Then
  loc_F4FB89:   Set var_B4 = Me.Txt
  loc_F4FB8F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F4FB97:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4FBCA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F4FBE9:   Set var_B4 = Me.Txt
  loc_F4FBEF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F4FBF7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4FC0D: End If
  loc_F4FC18: Set var_A8 = Me.Txt
  loc_F4FC1E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18))
  loc_F4FC26: var_B0.SetFocus
  loc_F4FC32: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EDC45C
  'Data Table: 533C30
  loc_EDC3BC: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EDC3BF:   Call DGCompany_UnknownEvent_9()
  loc_EDC3C4: End If
  loc_EDC3E0: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EDC3E3:   Call DGRoom_UnknownEvent_9()
  loc_EDC3E8: End If
  loc_EDC404: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_EDC407:   Call DGEmp_UnknownEvent_9()
  loc_EDC40C: End If
  loc_EDC428: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EDC42B:   Call DGChrgPayment_UnknownEvent_9()
  loc_EDC430: End If
  loc_EDC44C: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EDC44F:   Call DGRoomNo_UnknownEvent_9()
  loc_EDC454: End If
  loc_EDC454: Call Proc_167_42_F6E02C()
  loc_EDC459: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F550F0
  'Data Table: 533C30
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54FD9: Set var_A8 = Me.DGEmp
  loc_F54FDF: var_A8.Visible = False
  loc_F55001: If (Me.var_A8.RecordCount > 0) Then
  loc_F55043:   Set var_B4 = Me.Txt
  loc_F55049:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17), var_B8)
  loc_F55051:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F55087:   var_B0 = Me.Recordset15.Fields.Item("Code")
  loc_F550A6:   Set var_B4 = Me.Txt
  loc_F550AC:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17), var_B8)
  loc_F550B4:   var_B8.Tag = CStr(var_B0.Value)
  loc_F550CA: End If
  loc_F550D5: Set var_A8 = Me.Txt
  loc_F550DB: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17))
  loc_F550E3: var_B0.SetFocus
  loc_F550EF: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_9 'F84BAC
  'Data Table: 533C30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F84A67: Me.DGChrgPayment.Visible = False
  loc_F84A86: If (Me.RecordCount > 0) Then
  loc_F84AC5:   Set var_B4 = Me.Txt
  loc_F84ACB:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F84AD3:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F84B06:   var_B0 = Me.Fields.Item("Name")
  loc_F84B25:   Set var_B4 = Me.Txt
  loc_F84B2B:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F84B33:   var_B8.Text = CStr(var_B0.Value)
  loc_F84B49: End If
  loc_F84B49: Call Proc_167_42_F6E02C()
  loc_F84B6A: If (CBool(Me.FGPoint.Visible) = 0) Then
  loc_F84B7C:   Me.FGPoint.Visible = False
  loc_F84B84: End If
  loc_F84B8F: Set var_A8 = Me.Txt
  loc_F84B95: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4))
  loc_F84B9D: var_B0.SetFocus
  loc_F84BA9: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_1F 'E9BDA0
  'Data Table: 533C30
  Dim var_A8 As Variant
  loc_E9BD24: Set var_88 = Me.DGChrgPayment
  loc_E9BD4E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9BD56: Set var_BC = Me.DGChrgPayment
  loc_E9BD90: Proc_6_138_106E830(Me.DGChrgPayment, global_100, 0, Me.FGPoint)
  loc_E9BD9E: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F561D0
  'Data Table: 533C30
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F560B9: Set var_A8 = Me.DGCompany
  loc_F560BF: var_A8.Visible = False
  loc_F560E1: If (Me.var_A8.RecordCount > 0) Then
  loc_F56123:   Set var_B4 = Me.Txt
  loc_F56129:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19), var_B8)
  loc_F56131:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F56167:   var_B0 = Me.Recordset15.Fields.Item("RoomNo")
  loc_F56186:   Set var_B4 = Me.Txt
  loc_F5618C:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19), var_B8)
  loc_F56194:   var_B8.Text = CStr(var_B0.Value)
  loc_F561AA: End If
  loc_F561B5: Set var_A8 = Me.Txt
  loc_F561BB: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19))
  loc_F561C3: var_B0.SetFocus
  loc_F561CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E81188
  'Data Table: 533C30
  Dim var_8C As Label
  Dim var_98 As TextBox
  loc_E81128: Call Proc_167_45_1366908()
  loc_E81139: Call Txt_Validate(CInt(4))
  loc_E81157: Call Proc_167_44_123D18C(Me.LblNature.Caption)
  loc_E8116D: Set var_8C = Me.Txt
  loc_E81173: Call 0.Method_FGrid_UnknownEvent_90 (CInt(6), var_98)
  loc_E8117B: var_98.SetFocus
  loc_E81187: Exit Sub
End Sub

Private Sub btnsave_UnknownEvent_9 'DFFF34
  'Data Table: 533C30
  loc_DFFF2C: Call TopCtrl1_UnknownEvent_16()
  loc_DFFF31: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F146F0
  'Data Table: 533C30
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F14608: On Error Goto loc_F146AD
  loc_F14622: If (Me.RecordCount > 0) Then
  loc_F1463A:   var_8C = "EDIT"
  loc_F14648:   Call Proc_167_40_E78E2C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F1465E:   Set var_90 = Me.Txt
  loc_F14664:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F1466C:   var_98.SetFocus
  loc_F1467B: Else
  loc_F1469C:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F146AC: End If
  loc_F146AC: Exit Sub
  loc_F146AD: ' Referenced from: F14608
  loc_F146B5: Set var_90 = Err()
  loc_F146BB: Call 0.Method_arg_2C (var_8C)
  loc_F146DC: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F146EF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECB7BC
  'Data Table: 533C30
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_ECB718: On Error Goto loc_ECB7B3
  loc_ECB732: If (Me.RecordCount <= 0) Then
  loc_ECB73B:   var_B8 = "Information"
  loc_ECB756:   MsgBox("No Records Found", &H40, var_B8, var_E8, var_108)
  loc_ECB766:   Exit Sub
  loc_ECB767: End If
  loc_ECB778: MemVar_1F950E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & global_56 & "' ORDER BY VDate"
  loc_ECB785: MemVar_1F95120 = Me
  loc_ECB792: Proc_6_126_F1C850("2000,2000,2000,2000")
  loc_ECB7AD: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECB7B2: Exit Sub
  loc_ECB7B3: ' Referenced from: ECB718
  loc_ECB7B3: Proc_6_60_E63754(MemVar_1F950E4)
  loc_ECB7B8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1BFB4C4
  'Data Table: 533C30
  Dim var_E8 As Variant
  Dim var_104 As Variant
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_134 As Variant
  Dim var_F0 As Variant
  Dim var_17C As String
  Dim var_180 As String
  Dim var_184 As String
  Dim var_188 As String
  Dim var_18C As String
  Dim unk_533C5B As Connection15
  Dim var_124 As Variant
  Dim var_EC As Variant
  Dim var_1A4 As Variant
  Dim var_1A8 As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Variant
  Dim var_1D4 As Variant
  Dim var_20C As Variant
  Dim var_1F8 As Variant
  Dim var_1FC As Variant
  Dim var_210 As Variant
  Dim var_250 As Variant
  Dim var_240 As Variant
  Dim var_178 As String
  Dim var_230 As Variant
  Dim var_280 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_270 As Variant
  Dim MemVar_1F950EC As Double
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_220 As Variant
  Dim var_194 As Variant
  Dim var_260 As Variant
  Dim var_1AC As Variant
  Dim var_2B0 As Variant
  Dim var_9A As Variant
  Dim var_DC As Variant
  Dim var_F2 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_30C As Variant
  Dim var_34C As Variant
  Dim var_36C As Variant
  Dim var_41C As Variant
  Dim var_43C As Variant
  Dim var_45C As Variant
  Dim var_4AC As Variant
  Dim var_4CC As Variant
  Dim var_53C As Variant
  Dim var_55C As Variant
  Dim var_5D0 As Variant
  Dim var_5F0 As Variant
  Dim var_604 As Variant
  Dim var_668 As Variant
  Dim var_688 As Variant
  Dim var_6AC As Variant
  Dim var_71C As Variant
  Dim var_73C As Variant
  Dim var_760 As Variant
  Dim var_7B0 As Variant
  Dim var_7D0 As Variant
  Dim var_7F4 As Variant
  Dim var_83C As Variant
  Dim var_8C4 As Variant
  Dim var_8D4 As Variant
  Dim var_924 As Variant
  Dim var_968 As Variant
  Dim var_9B8 As Variant
  Dim var_9FC As Variant
  Dim var_A4C As Variant
  Dim var_A90 As Variant
  Dim var_B24 As Variant
  Dim var_B34 As Variant
  Dim var_B44 As Variant
  Dim var_BD4 As Variant
  Dim var_CA4 As Variant
  Dim var_CC4 As Variant
  Dim var_CD8 As Variant
  Dim var_CE8 As Variant
  Dim var_CF8 As Variant
  Dim var_D40 As Variant
  Dim var_2D4 As String
  Dim var_2DC As String
  Dim var_2E4 As String
  Dim var_2D0 As Variant
  Dim var_2FC As Variant
  Dim var_32C As Variant
  Dim var_2C0 As Variant
  Dim var_33C As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_3DC As Variant
  Dim var_3EC As Variant
  Dim var_40C As Variant
  Dim var_47C As Variant
  Dim var_48C As Variant
  Dim var_50C As Variant
  Dim var_51C As Variant
  Dim var_52C As Variant
  Dim var_590 As Variant
  Dim var_5A0 As Variant
  Dim var_628 As Variant
  Dim var_638 As Variant
  Dim var_648 As Variant
  Dim var_6CC As Variant
  Dim var_6DC As Variant
  Dim var_6EC As Variant
  Dim var_780 As Variant
  Dim var_790 As Variant
  Dim var_834 As Variant
  Dim var_850 As Variant
  Dim var_860 As Variant
  Dim var_870 As Variant
  Dim var_880 As Variant
  Dim var_8E4 As Variant
  Dim var_8F4 As Variant
  Dim var_914 As Variant
  Dim var_978 As Variant
  Dim var_988 As Variant
  Dim var_A0C As Variant
  Dim var_A1C As Variant
  Dim var_A3C As Variant
  Dim var_AC0 As Variant
  Dim var_B64 As Variant
  Dim var_BA4 As Variant
  Dim var_BC4 As Variant
  Dim var_BF4 As Variant
  Dim var_C54 As Variant
  Dim var_C74 As Variant
  Dim var_C94 As Variant
  Dim var_D18 As Variant
  Dim var_D38 As Variant
  Dim var_D54 As Variant
  Dim var_D84 As Variant
  Dim var_DA4 As Variant
  Dim var_DF4 As Variant
  Dim var_E14 As Variant
  Dim var_8A0 As Variant
  Dim var_838 As MSHFlexGrid
  Dim var_AB0 As Variant
  Dim var_B54 As Variant
  Dim var_BE4 As Variant
  Dim var_8C0 As Variant
  Dim var_954 As Variant
  Dim var_9E8 As Variant
  Dim var_D08 As Variant
  Dim var_840 As String
  Dim var_35C As Variant
  Dim var_37C As Variant
  Dim var_600 As Variant
  Dim var_7E0 As Variant
  Dim var_D3C As Variant
  Dim var_E3C As Variant
  Dim var_E98 As Variant
  Dim var_EB8 As Variant
  Dim var_DE4 As Variant
  Dim var_EF4 As TextBox
  Dim var_4BC As Variant
  Dim var_E38 As Variant
  Dim var_EDC As Variant
  Dim var_F34 As Variant
  Dim var_D0 As Double
  Dim var_D4 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_44C As Variant
  Dim var_4DC As Variant
  Dim var_1038 As Double
  Dim var_1054 As Double
  Dim var_105C As Double
  Dim var_A4 As Double
  Dim Me As Variant
  loc_1BF5B38: On Error Goto loc_1BFB46F
  loc_1BF5B3F: var_86 = CByte(0) 'Byte
  loc_1BF5B4E: Set var_E4 = Me.Txt
  loc_1BF5B54: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1BF5B65: Set var_EC = var_E8
  loc_1BF5B7D: If (Proc_6_27_EA61EC(var_EC, "Room No") = 0) Then
  loc_1BF5B87:   Call Txt_GotFocus(CInt(0))
  loc_1BF5B8C:   Exit Sub
  loc_1BF5B8D: End If
  loc_1BF5B9B: Set var_E4 = Me.LTxt
  loc_1BF5BA1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_E8)
  loc_1BF5BC5: If (CDbl(Val(var_E8.Caption)) <> CDbl(0)) Then
  loc_1BF5BE1:   MsgBox("Settlement Amount Should Match with Bill Amount", 0, var_134, var_154, var_174)
  loc_1BF5BF1:   Exit Sub
  loc_1BF5BF2: End If
  loc_1BF5BFC: var_114 = Me.FGrid.Rows
  loc_1BF5C0B: var_104 = 1
  loc_1BF5C21: Set var_E8 = Me.FGrid
  loc_1BF5C27: var_134 = var_E8.TextMatrix)
  loc_1BF5C4C: If (1 And (CStr(var_134) = vbNullString)) Then
  loc_1BF5C5D:   var_104 = "Nill Details Can't be Saved"
  loc_1BF5C62:   var_114 = var_104
  loc_1BF5C68:   MsgBox(var_114, 0, var_134, var_154, var_174)
  loc_1BF5C78:   Exit Sub
  loc_1BF5C79: End If
  loc_1BF5C94: var_17C = "Select * From PayCharge Where DocId In (Select Max(DocID) From PayCharge Where ModeSet='S' And PayCode<>'" & MemVar_1F95078 & "ROFF' And FolioNoDocid='"
  loc_1BF5CA5: Set var_E4 = Me.Txt
  loc_1BF5CAB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_E8, var_178, var_17C, var_114)
  loc_1BF5CB3: -1 = var_E8.Tag
  loc_1BF5CDA: unk_533C5B.Execute var_EC & var_178 & "') And ModeSet<>'S' And PayCode='" & MemVar_1F95078 & "ROOM'", var_104, (CLng(var_114) = 2)
  loc_1BF5CE5: Set var_BC = var_EC
  loc_1BF5D0E: var_190 = Me.Recordset15.RecordCount
  loc_1BF5D1C: If (var_190 > 0) Then
  loc_1BF5D39:   var_E8 = Me.Recordset15.Fields.Item("FolioNo")
  loc_1BF5D41:   var_114 = CVar(var_E8) 'Address
  loc_1BF5D48:   Proc_6_39_E7D3A0(var_134, var_114)
  loc_1BF5D67:   var_194 = Me.Recordset15.Fields.Item("Bill_no")
  loc_1BF5D95:   var_1AC = Me.Recordset15.Fields.Item("Bill_no")
  loc_1BF5DBB:   var_1C0 = Me.Recordset15.Fields
  loc_1BF5DCB:   var_1D4 = CVar(var_1C0.Item("FolioNoDocid")) 'Address
  loc_1BF5DE0:   var_20C = 0
  loc_1BF5E10:   unk_533C5B.Execute "Select Top 1 RoomNo From RoomOcc Where Docid='" & Proc_6_38_E69628(var_1D4) & "' Order By Sno Desc", var_1F4, -1
  loc_1BF5E18:   var_1F8 = var_1F8.Fields
  loc_1BF5E20:   var_20C = var_1FC.Item(var_1FC)
  loc_1BF5E28:   var_210 = var_210.Value
  loc_1BF5E5B:   var_260 = IIf((Proc_6_38_E69628(CVar(var_194)) <> vbNullString), CVar(" Ref. Bill No. " & Proc_6_38_E69628(CVar(var_1AC))), CVar(" Room No. " & Proc_6_38_E69628(var_220, var_220)))
  loc_1BF5E95:   MsgBox(CVar("Previous Settlement related entry exists : " & vbCrLf & "Folio No. ") & var_134 & var_260, &H10, "Validation : Room Settlement", var_2B0, var_2D0)
  loc_1BF5EEC:   Set var_BC = Nothing
  loc_1BF5EEF:   Exit Sub
  loc_1BF5EF0: End If
  loc_1BF5EF9: unk_533C5B.BeginTrans var_190
  loc_1BF5F02: var_86 = CByte(1) 'Byte
  loc_1BF5F0C: var_124 = 0
  loc_1BF5F29: var_F0 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F95078
  loc_1BF5F39: unk_533C5B.Execute var_F0 & "'", var_114, -1
  loc_1BF5F41: var_E4 = var_E4.Fields
  loc_1BF5F49: var_124 = var_E8.Item(var_E8)
  loc_1BF5F51: var_EC = var_EC.Value
  loc_1BF5F5B: MemVar_1F950EC = CDate(var_134)
  loc_1BF5F92: Set var_E4 = Me.LTxt
  loc_1BF5F98: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E8, "Update FOMBillChangeDetails set NextSettleAmt=", var_2D0, -1)
  loc_1BF5FA7: Proc_6_39_E7D3A0(var_134, CVar(var_E8), var_1C0)
  loc_1BF5FCB: var_1BC = MemVar_1F950EC & var_134 & ",SettledBy='" & CVar(MemVar_1F950C8) & "',BillSettleDate=" 
  loc_1BF5FDA: Proc_6_7_F26918(var_1D4, MemVar_1F950EC, var_1BC)
  loc_1BF5FEB: var_220 = var_134 & var_1D4 & " where FolionoDocid='" 
  loc_1BF5FFD: Set var_EC = Me.Txt
  loc_1BF6003: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_194, var_F0)
  loc_1BF600B: var_220 = var_194.Tag
  loc_1BF6031: Set var_1A8 = Me.Txt
  loc_1BF6037: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_1AC)
  loc_1BF603F: var_178 = var_1AC.Text
  loc_1BF6061: unk_533C5B.Execute CStr(var_E8 & CVar(var_F0) & "' and Bill_No='" & CVar(var_178) & "'"), , 
  loc_1BF60BB: var_17C = "Select Distinct SettleDate,IsNull(U_Name,'')U_Name from PayCharge Where PayCode<>'" & MemVar_1F95078 & "ROFF' And ModeSet='S' and FolioNoDocid='"
  loc_1BF60CC: Set var_E4 = Me.Txt
  loc_1BF60D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_E8, var_178, var_17C)
  loc_1BF60DA: var_114 = var_E8.Tag
  loc_1BF60E3: var_180 = -1 & var_178
  loc_1BF60F3: unk_533C5B.Execute Proc_6_38_E69628(var_1D4) & "' And SettleDate Is Not Null", var_EC, 0
  loc_1BF60FE: Set var_BC = var_EC
  loc_1BF6131: If (Me.Recordset15.RecordCount > 0) Then
  loc_1BF61A5:   var_E8 = Me.Recordset15.Fields.Item("U_Name")
  loc_1BF61B6:   var_E0 = Proc_6_38_E69628(CVar(var_E8), CDate(Format(CVar(Me.Recordset15.Fields.Item("SettleDate")), "dd/MMM/yyyy")))
  loc_1BF61C2: Else
  loc_1BF61CD:   Set var_E4 = Me.Txt
  loc_1BF61D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_E8)
  loc_1BF61E4:   var_F2 = IsDate(CVar(var_E8))
  loc_1BF61F2:   Set var_EC = Me.Txt
  loc_1BF61F8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_194, var_F2)
  loc_1BF6240:   var_DC = CDate(Format(IIf(var_F2, CVar(var_194), MemVar_1F950EC), "dd/MMM/yyyy"))
  loc_1BF6259: End If
  loc_1BF627E: For var_2E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_2E0 'Integer
  loc_1BF6288:   var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF628D:   var_144 = 3
  loc_1BF629A:   Set var_E4 = Me.FGrid
  loc_1BF62A0:   var_114 = var_E4.TextMatrix)
  loc_1BF62BC:   If (CStr(var_114) = "Dr") Then
  loc_1BF62E3:     unk_533C5B.Execute "Select Name,ShortName from depart where code='" & MemVar_1F95078 & "FOM'", var_114, -1
  loc_1BF62EE:     Set var_A8 = var_E4
  loc_1BF6312:     If (var_A8.RecordCount > 0) Then
  loc_1BF6319:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF631E:       var_144 = 1
  loc_1BF6373:       unk_533C5B.Execute CStr("Select ShortName From RevMast where code='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_1BC, -1
  loc_1BF637E:       Set var_B8 = var_E8
  loc_1BF639E:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF63A6:       var_144 = CVar(CLng(&HF)) 'Long
  loc_1BF63E2:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1BF63E9:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF63EE:         var_144 = 2
  loc_1BF641D:         If (CStr(Me.FGrid.TextMatrix)) = "Cash") Then
  loc_1BF6423:           var_C0 = "CASH RECD."
  loc_1BF6429:         Else
  loc_1BF642D:           var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF6432:           var_144 = 2
  loc_1BF6461:           If (CStr(Me.FGrid.TextMatrix)) = "Credit Card") Then
  loc_1BF6464:             var_1E4 = "C.CNo. "
  loc_1BF646D:             var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF64AB:             var_C0 = CStr(CVar(CLng(&HA)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & vbNullString)
  loc_1BF64C1:           Else
  loc_1BF64C5:             var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF64CA:             var_144 = 2
  loc_1BF64F9:             If (CStr(Me.FGrid.TextMatrix)) = "Cheque") Then
  loc_1BF64FC:               var_1E4 = "C.CNo. "
  loc_1BF6505:               var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF6543:               var_C0 = CStr(CVar(CLng(&HA)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & vbNullString)
  loc_1BF6559:             Else
  loc_1BF655D:               var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF6562:               var_144 = 2
  loc_1BF6591:               If (CStr(Me.FGrid.TextMatrix)) = "Staff") Then
  loc_1BF6594:                 var_1E4 = "STAFF SETTELMENT ("
  loc_1BF659D:                 var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF65DB:                 var_C0 = CStr(CVar(CLng(&H10)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1BF65F1:               Else
  loc_1BF65F5:                 var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF65FA:                 var_144 = 2
  loc_1BF6629:                 If (CStr(Me.FGrid.TextMatrix)) = "Company") Then
  loc_1BF662C:                   var_1E4 = "COMPANY SETTELMENT ("
  loc_1BF6635:                   var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF6658:                   var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1BF665E:                   var_154 = Trim(var_134)
  loc_1BF6674:                   var_C0 = CStr(&H16 & var_154 & ")")
  loc_1BF668A:                 Else
  loc_1BF668E:                   var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF6693:                   var_144 = 2
  loc_1BF66C2:                   If (CStr(Me.FGrid.TextMatrix)) = "Room") Then
  loc_1BF66C9:                     var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF66CE:                     var_144 = &H19
  loc_1BF66ED:                     var_230 = " ROOM ADJUSTMENT ("
  loc_1BF66F8:                     var_20C = 0
  loc_1BF671C:                     var_178 = "SELECT IsNull(Max(RoomOcc.RoomNo),'') From RoomOcc WHERE (RoomOcc.LOGSITE_CODE='" & MemVar_1F95078 & "') AND CHKOUTDATE IS NULL And DOCID='"
  loc_1BF6737:                     unk_533C5B.Execute var_178 & CStr(Me.FGrid.TextMatrix)) & "'", var_134, -1
  loc_1BF673F:                     var_E8 = var_E8.Fields
  loc_1BF6747:                     var_20C = var_EC.Item(var_EC)
  loc_1BF674F:                     var_194 = var_194.Value
  loc_1BF6765:                     var_C0 = CStr(var_154 & var_154 & ")")
  loc_1BF6790:                   Else
  loc_1BF6794:                     var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF6799:                     var_144 = 2
  loc_1BF67C8:                     If (CStr(Me.FGrid.TextMatrix)) = "Void") Then
  loc_1BF67CE:                       var_C0 = "VOID SETTELMENT"
  loc_1BF67D4:                     Else
  loc_1BF67EB:                       var_E8 = var_B8.Fields.Item("ShortName")
  loc_1BF6807:                       var_154 = (Trim(CVar(var_E8)) + " (")
  loc_1BF6825:                       var_194 = var_A8.Fields.Item("ShortName")
  loc_1BF6835:                       var_1A4 = (var_154 + var_194.Value)
  loc_1BF683E:                       var_1BC = (var_154 & var_154 & ")" + ")")
  loc_1BF6843:                       var_C0 = CStr(var_1BC)
  loc_1BF685E:                     End If
  loc_1BF685E:                   End If
  loc_1BF685E:                 End If
  loc_1BF685E:               End If
  loc_1BF685E:             End If
  loc_1BF685E:           End If
  loc_1BF685E:         End If
  loc_1BF6861:       Else
  loc_1BF6865:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF686D:         var_144 = CVar(CLng(&HF)) 'Long
  loc_1BF6896:         var_C0 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1BF68A5:       End If
  loc_1BF68A5:     End If
  loc_1BF68CD:     var_E0 = CStr(IIf((var_E0 = vbNullString), MemVar_1F950C8, var_E0))
  loc_1BF68DD:     global_56 = "REC"
  loc_1BF68E3:     var_9A = 1
  loc_1BF68EA:     var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF6902:     var_114 = Me.FGrid.TextMatrix)
  loc_1BF690D:     var_F0 = CStr(var_114)
  loc_1BF691E:     If (var_F0 = vbNullString) Then
  loc_1BF6927:       Call Proc_167_43_10B0028(MemVar_1F95044, var_F0, &H1A, var_104, var_9A, &H1A, var_104, &H1A)
  loc_1BF693D:       Set var_E4 = Me.Txt
  loc_1BF6943:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_104, var_230, var_114)
  loc_1BF696B:       Set var_EC = Me.Txt
  loc_1BF6971:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, var_104)
  loc_1BF6980:       Proc_6_7_F26918(var_1D4, CVar(var_194), var_E8.Text)
  loc_1BF69BB:       Set var_1A8 = Me.Txt
  loc_1BF69C1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BF69C9:       1 = var_1AC.Tag
  loc_1BF69D2:       var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF69DA:       var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF69F9:       var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BF69FE:       var_36C = &H15
  loc_1BF6A21:       var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BF6A26:       var_43C = 1
  loc_1BF6A49:       var_4AC = CVar(CLng(var_9C)) 'Long
  loc_1BF6A4E:       var_4CC = 2
  loc_1BF6A71:       var_53C = CVar(CLng(var_9C)) 'Long
  loc_1BF6A76:       var_55C = 9
  loc_1BF6AA3:       var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1BF6AA8:       var_5F0 = &H12
  loc_1BF6AD5:       var_668 = CVar(CLng(var_9C)) 'Long
  loc_1BF6ADA:       var_688 = 5
  loc_1BF6B02:       var_73C = 6
  loc_1BF6B15:       var_760 = Me.FGrid.TextMatrix)
  loc_1BF6B3C:       var_7F4 = Me.FGrid.TextMatrix)
  loc_1BF6B56:       Set var_838 = Me.Txt
  loc_1BF6B5C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_840, var_7F4, CVar(CLng(7)), CVar(CLng(var_9C)), var_760)
  loc_1BF6B64:       var_73C = var_83C.Text
  loc_1BF6B84:       var_8D4 = Me.FGrid.TextMatrix)
  loc_1BF6BAB:       var_968 = Me.FGrid.TextMatrix)
  loc_1BF6BD2:       var_9FC = Me.FGrid.TextMatrix)
  loc_1BF6C0A:       Proc_6_7_F26918(var_AB0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9FC, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_968)
  loc_1BF6C3B:       Proc_6_7_F26918(var_B54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF6C4B:       Proc_6_8_EB1974(var_BE4, CVar(Proc_6_14_EF402C(var_8D4, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BF6C54:       var_CA4 = CVar(CLng(var_9C)) 'Long
  loc_1BF6C66:       Set var_CD8 = Me.FGrid
  loc_1BF6C7D:       Proc_6_39_E7D3A0(var_D08, CVar(CStr(var_CD8.TextMatrix))), &H18)
  loc_1BF6C90:       Set var_D3C = Me.Txt
  loc_1BF6C96:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_D40, var_D44)
  loc_1BF6C9E:       var_CA4 = var_D40.Tag
  loc_1BF6CAE:       Proc_6_7_F26918(var_DE4, var_DC)
  loc_1BF6CC7:       var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,ModeSet,BatchNo,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BF6D16:       var_154 = CVar(var_178 & "'," & CStr(var_9A) & ",'" & global_56 & "'," & CStr(global_108) & ",'" & MemVar_1F95070 & "','") 'String
  loc_1BF6D5B:       var_2FC = var_154 & Trim(CVar(Me.LblVPrefix)) & "'," & var_1D4 & ",'" & CVar(Format$(Time, "HH:mm")) & "','" & CVar(var_2EC) & "','" 
  loc_1BF6DA1:       var_47C = var_2FC & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF6DDD:       var_638 = var_47C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BF6E2B:       var_834 = var_638 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(var_760)) & "','" & CVar(CStr(var_7F4)) & "'," 
  loc_1BF6E7A:       var_A3C = var_834 & CVar(var_840) & ",'" & CVar(CStr(var_8D4)) & "','" & CVar(CStr(var_968)) & "','" & CVar(CStr(var_9FC)) & "'," 
  loc_1BF6E81:       var_AC0 = var_A3C & var_AB0 
  loc_1BF6E91:       var_B64 = var_AC0 & "," & var_B54 
  loc_1BF6EB4:       var_BF4 = var_B64 & ",'" & CVar(var_E0) & "'," & var_BE4 
  loc_1BF6EFD:       var_D54 = CVar(var_D44) 'String
  loc_1BF6F09:       var_D84 = var_BF4 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(global_160) & "'," & var_D08 & ",'" & var_D54 & "','" 
  loc_1BF6F13:       var_DA4 = var_D84 & CVar(MemVar_1F95078) 
  loc_1BF6F2C:       var_E14 = var_DA4 & "'," & var_DE4 & ")" 
  loc_1BF6F3A:       unk_533C5B.Execute CStr(var_E14), var_E38, -1
  loc_1BF706C:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF7071:       var_144 = 2
  loc_1BF708F:       var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1BF70A0:       If (var_F0 = "Room") Then
  loc_1BF70AC:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF70EB:         var_C0 = CStr(&H13 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1BF7104:         var_9A = (var_9A + 1)
  loc_1BF7115:         Set var_E4 = Me.Txt
  loc_1BF711B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_9A, var_104, " ROOM ADJUSTMENT (")
  loc_1BF7123:         var_144 = var_E8.Text
  loc_1BF7133:         var_134 = Trim(CVar(Me.LblVPrefix))
  loc_1BF7143:         Set var_EC = Me.Txt
  loc_1BF7149:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, var_104)
  loc_1BF7151:         var_1BC = CVar(var_194) 'Address
  loc_1BF7158:         Proc_6_7_F26918(var_1D4, var_1BC, var_E3C)
  loc_1BF7182:         var_D44 = Format$(Time, "HH:mm")
  loc_1BF7193:         Set var_1A8 = Me.Txt
  loc_1BF7199:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BF71A1:         1 = var_1AC.Tag
  loc_1BF71AA:         var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF71B2:         var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF71D1:         var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BF71D6:         var_36C = &H15
  loc_1BF71F9:         var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BF71FE:         var_43C = 1
  loc_1BF7221:         var_4AC = CVar(CLng(var_9C)) 'Long
  loc_1BF7226:         var_4CC = 2
  loc_1BF7249:         var_53C = CVar(CLng(var_9C)) 'Long
  loc_1BF724E:         var_55C = 9
  loc_1BF727B:         var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1BF7280:         var_5F0 = &H12
  loc_1BF728D:         Set var_604 = Me.FGrid
  loc_1BF72AD:         var_668 = CVar(CLng(var_9C)) 'Long
  loc_1BF72B2:         var_688 = 5
  loc_1BF72D5:         var_71C = CVar(CLng(var_9C)) 'Long
  loc_1BF72DA:         var_73C = 6
  loc_1BF72FD:         var_7B0 = CVar(CLng(var_9C)) 'Long
  loc_1BF7305:         var_7D0 = CVar(CLng(7)) 'Long
  loc_1BF7324:         var_870 = CVar(CLng(var_9C)) 'Long
  loc_1BF7329:         var_8A0 = &H17
  loc_1BF733C:         var_850 = Me.FGrid.TextMatrix)
  loc_1BF7363:         var_8E4 = Me.FGrid.TextMatrix)
  loc_1BF738A:         var_978 = Me.FGrid.TextMatrix)
  loc_1BF73B1:         var_A0C = Me.FGrid.TextMatrix)
  loc_1BF73E9:         Proc_6_7_F26918(var_AC0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_A0C, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_978)
  loc_1BF741A:         Proc_6_7_F26918(var_B64, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF742A:         Proc_6_8_EB1974(var_BF4, CVar(Proc_6_14_EF402C(var_8E4, CVar(CLng(&HA)), CVar(CLng(var_9C)))), var_850)
  loc_1BF7433:         var_CC4 = CVar(CLng(var_9C)) 'Long
  loc_1BF744B:         var_C94 = Me.FGrid.TextMatrix)
  loc_1BF7462:         Proc_6_7_F26918(var_D54, var_DC, var_C94, &H19)
  loc_1BF747B:         var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BF7495:         var_188 = var_178 & "'," & CStr(var_9A) & ",'"
  loc_1BF74E0:         var_1F4 = CVar(var_188 & global_56 & "'," & CStr(global_108) & ",'" & MemVar_1F95070 & "','") & var_134 & "'," & var_1D4 
  loc_1BF750F:         var_2FC = var_1F4 & ",'" & CVar(var_D44) & "','" & CVar(var_2EC) & "','" 
  loc_1BF754A:         var_40C = var_2FC & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_C0) & "','" 
  loc_1BF757D:         var_5A0 = var_40C & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BF75C2:         var_780 = var_5A0 & "," & CVar(Val(CStr(var_604.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF7607:         var_968 = var_780 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(CStr(var_850)) & ",'" & CVar(CStr(var_8E4)) & "','" 
  loc_1BF7662:         var_BD4 = var_968 & CVar(CStr(var_978)) & "','" & CVar(CStr(var_A0C)) & "'," & var_AC0 & "," & var_B64 & ",'" & CVar(var_E0) & "'," 
  loc_1BF767C:         var_C54 = var_BD4 & var_BF4 & ",'A','" & CVar(MemVar_1F95078) 
  loc_1BF76A3:         var_D18 = var_C54 & "FOM','" & CVar(CStr(var_C94)) & "','" & CVar(MemVar_1F95078) 
  loc_1BF76CA:         unk_533C5B.Execute CStr(var_D18 & "'," & var_D54 & ")"), var_DA4, -1
  loc_1BF77E8:       End If
  loc_1BF77FC:       var_F0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1BF7822:       var_154 = CVar(var_F0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_56 & "' And VP.Date_From<=") 'String
  loc_1BF7833:       Set var_E4 = Me.Txt
  loc_1BF7839:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_E8, var_188, var_154, var_1BC, -1)
  loc_1BF7841:       var_EC = var_E8.Text
  loc_1BF784F:       Proc_6_7_F26918(var_134, CVar(var_188), var_CD8)
  loc_1BF7860:       var_1A4 = var_CC4 & var_134 & " Order By VP.Date_From DESC" 
  loc_1BF786E:       unk_533C5B.Execute CStr(var_1A4), var_8A0, var_870
  loc_1BF7879:       Set var_8C = var_EC
  loc_1BF78BA:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1BF78E0:         var_17C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(global_108) & " Where (SITE_CODE='"
  loc_1BF790D:         var_154 = CVar(var_17C & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='" & global_56 & "' and Date_From=") 'String
  loc_1BF7939:         Proc_6_7_F26918(var_134, CVar(Me.Recordset15.Fields.Item("Date_From")), var_154)
  loc_1BF794F:         unk_533C5B.Execute CStr(var_1A4 & var_134), -1, var_EC
  loc_1BF797D:       End If
  loc_1BF7980:     Else
  loc_1BF7984:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF7989:       var_144 = &H1A
  loc_1BF799C:       var_114 = Me.FGrid.TextMatrix)
  loc_1BF79B6:       Set var_E8 = Me.Txt
  loc_1BF79BC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_EC, var_17C)
  loc_1BF79FF:       unk_533C5B.Execute "Select * From PayCharge Where DocId='" & CStr(var_EC.Tag) & "' And SNo=1 And FolioNoDocid='" & var_17C & "'", var_134, -1
  loc_1BF7A0A:       Set var_BC = var_194
  loc_1BF7A45:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1BF7A4C:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF7A64:         var_114 = Me.FGrid.TextMatrix)
  loc_1BF7A7E:         Set var_E8 = Me.Txt
  loc_1BF7A84:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_EC, var_17C, var_114, &H1A)
  loc_1BF7A8C:         var_104 = var_EC.Tag
  loc_1BF7AA5:         var_F0 = CStr(var_114)
  loc_1BF7AB0:         var_180 = "Delete From PayCharge Where DocId='" & var_F0 & "' And FolioNoDocid='"
  loc_1BF7AB7:         var_184 = var_180 & var_17C
  loc_1BF7AC7:         unk_533C5B.Execute var_184 & "'", var_134, -1
  loc_1BF7B02:         var_E4 = Me.Recordset15.Fields
  loc_1BF7B0A:         var_E8 = var_E4.Item("DocID")
  loc_1BF7B2C:         var_EC = Me.Recordset15.Fields
  loc_1BF7B34:         var_194 = var_EC.Item("VNo")
  loc_1BF7B94:         Proc_6_7_F26918(var_2FC, CVar(Me.Recordset15.Fields.Item("VDate")), var_194)
  loc_1BF7BEA:         Set var_210 = Me.Txt
  loc_1BF7BF0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_604, var_F0, 1)
  loc_1BF7BF8:         1 = var_604.Tag
  loc_1BF7C01:         var_43C = CVar(CLng(var_9C)) 'Long
  loc_1BF7C09:         var_48C = CVar(CLng(&H11)) 'Long
  loc_1BF7C28:         var_4CC = CVar(CLng(var_9C)) 'Long
  loc_1BF7C2D:         var_51C = &H15
  loc_1BF7C50:         var_590 = CVar(CLng(var_9C)) 'Long
  loc_1BF7C55:         var_5D0 = 1
  loc_1BF7C78:         var_600 = CVar(CLng(var_9C)) 'Long
  loc_1BF7C7D:         var_648 = 2
  loc_1BF7CA0:         var_688 = CVar(CLng(var_9C)) 'Long
  loc_1BF7CA5:         var_6DC = 9
  loc_1BF7CD2:         var_73C = CVar(CLng(var_9C)) 'Long
  loc_1BF7CD7:         var_790 = &H12
  loc_1BF7D04:         var_7E0 = CVar(CLng(var_9C)) 'Long
  loc_1BF7D09:         var_870 = 5
  loc_1BF7D31:         var_924 = 6
  loc_1BF7D44:         var_880 = Me.FGrid.TextMatrix)
  loc_1BF7D6B:         var_914 = Me.FGrid.TextMatrix)
  loc_1BF7D85:         Set var_B24 = Me.Txt
  loc_1BF7D8B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CD8, var_180, var_914, CVar(CLng(7)), CVar(CLng(var_9C)), var_880)
  loc_1BF7D93:         var_924 = var_CD8.Text
  loc_1BF7DB3:         var_A1C = Me.FGrid.TextMatrix)
  loc_1BF7DDA:         var_AB0 = Me.FGrid.TextMatrix)
  loc_1BF7E01:         var_B44 = Me.FGrid.TextMatrix)
  loc_1BF7E39:         Proc_6_7_F26918(var_BD4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_B44, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_AB0)
  loc_1BF7E6A:         Proc_6_7_F26918(var_C54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF7E7A:         Proc_6_8_EB1974(var_D18, CVar(Proc_6_14_EF402C(var_A1C, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BF7E83:         var_E98 = CVar(CLng(var_9C)) 'Long
  loc_1BF7E95:         Set var_ECC = Me.FGrid
  loc_1BF7EAC:         Proc_6_39_E7D3A0(var_E14, CVar(CStr(var_ECC.TextMatrix))), &H18)
  loc_1BF7EBF:         Set var_EF0 = Me.Txt
  loc_1BF7EC5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_EF4, var_184)
  loc_1BF7ECD:         var_E98 = var_EF4.Tag
  loc_1BF7EDD:         Proc_6_7_F26918(var_F94, var_DC)
  loc_1BF7EEF:         var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,ModeSet,BatchNo,FolioNoDocid,LogSite_Code,SettleDate) Values ('"
  loc_1BF7F43:         var_250 = var_124 & var_E8.Value & "'," & CVar(var_9A) & ",'" & CVar(global_56) & "'," & var_194.Value & ",'" & CVar(MemVar_1F95070) 
  loc_1BF7F76:         var_39C = var_250 & "','" & Me.Recordset15.Fields.Item("vPrefix").Value & "'," & var_2FC & ",'" & CVar(Format$(CVar(Me.Recordset15.Fields.Item("VTIME")), "HH:mm")) 
  loc_1BF7FB1:         var_50C = var_39C & "','" & CVar(var_F0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF7FEC:         var_6CC = var_50C & "','" & CVar(var_C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF8028:         var_834 = var_6CC & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF8080:         var_A90 = var_834 & "'," & "'" & CVar(CStr(var_880)) & "','" & CVar(CStr(var_914)) & "'," & CVar(var_180) & ",'" & CVar(CStr(var_A1C)) 
  loc_1BF80B8:         var_BE4 = var_A90 & "','" & CVar(CStr(var_AB0)) & "','" & CVar(CStr(var_B44)) & "'," & var_BD4 
  loc_1BF80C8:         var_C74 = var_BE4 & "," & var_C54 
  loc_1BF80EB:         var_D38 = var_C74 & ",'" & CVar(var_E0) & "'," & var_D18 
  loc_1BF8134:         var_F04 = CVar(var_184) 'String
  loc_1BF8140:         var_F34 = var_D38 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(global_160) & "'," & var_E14 & ",'" & var_F04 & "','" 
  loc_1BF8171:         unk_533C5B.Execute CStr(var_F34 & CVar(MemVar_1F95078) & "'," & var_F94 & ")"), var_FE4, -1
  loc_1BF82A9:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF82AE:         var_144 = 2
  loc_1BF82CC:         var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1BF82DD:         If (var_F0 = "Room") Then
  loc_1BF82E9:           var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF8301:           var_114 = Me.FGrid.TextMatrix)
  loc_1BF8328:           var_C0 = CStr(&H13 & Trim(CVar(CStr(var_114))) & ")")
  loc_1BF8341:           var_9A = (var_9A + 1)
  loc_1BF834A:           var_104 = "DocID"
  loc_1BF8359:           var_E4 = Me.var_114.Fields
  loc_1BF8361:           var_E8 = var_E4.Item(var_104)
  loc_1BF8383:           var_EC = Me.Recordset15.Fields
  loc_1BF838B:           var_194 = var_EC.Item("VNo")
  loc_1BF83B5:           var_1AC = Me.Recordset15.Fields.Item("vPrefix")
  loc_1BF83EB:           Proc_6_7_F26918(var_2FC, CVar(Me.Recordset15.Fields.Item("VDate")), var_9A, var_104, " ROOM ADJUSTMENT (")
  loc_1BF8441:           Set var_210 = Me.Txt
  loc_1BF8447:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_604, var_F0, 1, 1)
  loc_1BF844F:           var_144 = var_604.Tag
  loc_1BF8458:           var_43C = CVar(CLng(var_9C)) 'Long
  loc_1BF8460:           var_48C = CVar(CLng(&H11)) 'Long
  loc_1BF847F:           var_4CC = CVar(CLng(var_9C)) 'Long
  loc_1BF8484:           var_51C = &H15
  loc_1BF84A7:           var_590 = CVar(CLng(var_9C)) 'Long
  loc_1BF84AC:           var_5D0 = 1
  loc_1BF84CF:           var_600 = CVar(CLng(var_9C)) 'Long
  loc_1BF84D4:           var_648 = 2
  loc_1BF84F7:           var_688 = CVar(CLng(var_9C)) 'Long
  loc_1BF84FC:           var_6DC = 9
  loc_1BF8509:           Set var_83C = Me.FGrid
  loc_1BF8529:           var_73C = CVar(CLng(var_9C)) 'Long
  loc_1BF852E:           var_790 = &H12
  loc_1BF855B:           var_7E0 = CVar(CLng(var_9C)) 'Long
  loc_1BF8560:           var_870 = 5
  loc_1BF8583:           var_8C0 = CVar(CLng(var_9C)) 'Long
  loc_1BF8588:           var_924 = 6
  loc_1BF85AB:           var_954 = CVar(CLng(var_9C)) 'Long
  loc_1BF85B3:           var_9B8 = CVar(CLng(7)) 'Long
  loc_1BF85D2:           var_9E8 = CVar(CLng(var_9C)) 'Long
  loc_1BF85D7:           var_A4C = &H17
  loc_1BF85EA:           var_9A8 = Me.FGrid.TextMatrix)
  loc_1BF8611:           var_A3C = Me.FGrid.TextMatrix)
  loc_1BF8638:           var_AC0 = Me.FGrid.TextMatrix)
  loc_1BF865F:           var_B54 = Me.FGrid.TextMatrix)
  loc_1BF8680:           Set var_E3C = Me.FGrid
  loc_1BF8697:           Proc_6_7_F26918(var_BE4, CVar(CStr(var_E3C.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_B54, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_AC0)
  loc_1BF86C8:           Proc_6_7_F26918(var_C74, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF86D8:           Proc_6_8_EB1974(var_D38, CVar(Proc_6_14_EF402C(var_A3C, CVar(CLng(&HA)), CVar(CLng(var_9C)))), var_9A8)
  loc_1BF86E1:           var_EB8 = CVar(CLng(var_9C)) 'Long
  loc_1BF86E6:           var_EDC = &H19
  loc_1BF86F9:           var_DC4 = Me.FGrid.TextMatrix)
  loc_1BF8712:           var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LogSite_Code) Values ('"
  loc_1BF874C:           var_1D4 = var_124 & var_E8.Value & "'," & CVar(var_9A) & ",'" & CVar(global_56) & "'," 
  loc_1BF8799:           var_39C = var_1D4 & var_194.Value & ",'" & CVar(MemVar_1F95070) & "','" & var_1AC.Value & "'," & var_2FC & ",'" & CVar(Format$(CVar(Me.Recordset15.Fields.Item("VTIME")), "HH:mm")) 
  loc_1BF87D4:           var_50C = var_39C & "','" & CVar(var_F0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF880F:           var_6CC = var_50C & "','" & CVar(var_C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF884B:           var_834 = var_6CC & "',0," & CVar(Val(CStr(var_83C.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF8890:           var_A0C = var_834 & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(CStr(var_9A8)) 
  loc_1BF88AD:           var_AB0 = var_A0C & ",'" & CVar(CStr(var_A3C)) & "','" 
  loc_1BF88FF:           var_CF8 = var_AB0 & CVar(CStr(var_AC0)) & "','" & CVar(CStr(var_B54)) & "'," & var_BE4 & "," & var_C74 & ",'" & CVar(var_E0) 
  loc_1BF893F:           var_E14 = var_CF8 & "'," & var_D38 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(CStr(var_DC4)) & "','" 
  loc_1BF8960:           unk_533C5B.Execute CStr(var_E14 & CVar(MemVar_1F95078) & "')"), var_F04, -1
  loc_1BF8A7E:         End If
  loc_1BF8A7E:       End If
  loc_1BF8A7E:     End If
  loc_1BF8A81:   Else
  loc_1BF8AA8:     var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1BF8AB9:     If (var_F0 = "Cr") Then
  loc_1BF8AC2:       global_56 = "REV"
  loc_1BF8ACC:       Call Proc_167_43_10B0028(MemVar_1F95044, var_F0, 3, CVar(CLng(var_9C)), var_ECC)
  loc_1BF8AD6:       var_9A = 1
  loc_1BF8AE7:       Set var_E4 = Me.Txt
  loc_1BF8AED:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E8, var_F0, var_9A, var_DC4)
  loc_1BF8AF5:       var_EDC = var_E8.Text
  loc_1BF8AFE:       var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF8B03:       var_144 = 1
  loc_1BF8B10:       Set var_EC = Me.FGrid
  loc_1BF8B4D:       var_1A4 = CVar("Select * from PlanDetails where foliono=" & var_F0 & " and Revcode='") & Trim(CVar(CStr(var_EC.TextMatrix)))) 
  loc_1BF8B64:       unk_533C5B.Execute CStr(var_1A4 & "'"), var_1D4, -1
  loc_1BF8B6F:       Set var_A8 = var_194
  loc_1BF8BAB:       If (var_A8.RecordCount > 0) Then
  loc_1BF8BB1:         var_C4 = "Yes"
  loc_1BF8BB8:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF8BBD:         var_144 = 9
  loc_1BF8C2B:         If (var_A8.Fields.Item("TaxInc").Value = "Yes") Then
  loc_1BF8C77:           var_174 = "SELECT * FROM REVMAST WHERE CODE='" & Trim(CVar(var_A8.Fields.Item("RevCode"))) & "'" 
  loc_1BF8C85:           unk_533C5B.Execute CStr(var_174), var_1A4, -1
  loc_1BF8C90:           Set var_D4 = var_EC
  loc_1BF8CBE:           If (var_D4.RecordCount > 0) Then
  loc_1BF8CCE:             var_124 = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1BF8D0A:             var_F0 = CStr(var_124 & var_D4.Fields.Item("TaxStru").Value & "' Group By Nature ")
  loc_1BF8D14:             unk_533C5B.Execute var_F0, var_174, -1
  loc_1BF8D1F:             Set var_C8 = var_EC
  loc_1BF8D4D:             If (var_C8.RecordCount > 0) Then
  loc_1BF8D56:               var_104 = "Rate"
  loc_1BF8D6A:               var_E8 = var_C8.Fields.Item(var_104)
  loc_1BF8D7F:               var_144 = CVar(Val(CStr(Me.FGrid.TextMatrix)))) 'Double
  loc_1BF8D8B:               var_134 = (100 + var_E8.Value)
  loc_1BF8DAF:               var_D0 = CSng(Round(((var_144 / 100 & var_D4.Fields.Item("TaxStru").Value) * 100), 2))
  loc_1BF8DC4:             End If
  loc_1BF8DC4:           End If
  loc_1BF8DD2:           Set var_E4 = Me.Txt
  loc_1BF8DD8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_D0, var_EC, var_EC)
  loc_1BF8DE0:           var_D0 = var_E8.Text
  loc_1BF8E00:           Set var_EC = Me.Txt
  loc_1BF8E06:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, var_144, var_104)
  loc_1BF8E15:           Proc_6_7_F26918(var_1D4, CVar(var_194), var_194)
  loc_1BF8E50:           Set var_1A8 = Me.Txt
  loc_1BF8E56:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BF8E5E:           1 = var_1AC.Tag
  loc_1BF8E67:           var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF8E6F:           var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF8E78:           Set var_1C0 = Me.FGrid
  loc_1BF8E8E:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BF8E93:           var_36C = &H15
  loc_1BF8EB6:           var_3DC = CVar(CLng(var_9C)) 'Long
  loc_1BF8EBE:           var_41C = CVar(CLng(&HF)) 'Long
  loc_1BF8EDD:           var_44C = CVar(CLng(var_9C)) 'Long
  loc_1BF8EE2:           var_4AC = 1
  loc_1BF8F05:           var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BF8F0A:           var_53C = 9
  loc_1BF8F47:           var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1BF8F4C:           var_5F0 = &H12
  loc_1BF8F79:           var_668 = CVar(CLng(var_9C)) 'Long
  loc_1BF8F7E:           var_688 = 5
  loc_1BF8F91:           var_6AC = Me.FGrid.TextMatrix)
  loc_1BF8FA6:           var_73C = 6
  loc_1BF8FB9:           var_760 = Me.FGrid.TextMatrix)
  loc_1BF8FE0:           var_7F4 = Me.FGrid.TextMatrix)
  loc_1BF8FFA:           Set var_838 = Me.Txt
  loc_1BF9000:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_D44, var_7F4, CVar(CLng(7)), CVar(CLng(var_9C)), var_760)
  loc_1BF9008:           var_73C = var_83C.Text
  loc_1BF9028:           var_8D4 = Me.FGrid.TextMatrix)
  loc_1BF904F:           var_968 = Me.FGrid.TextMatrix)
  loc_1BF9076:           var_9FC = Me.FGrid.TextMatrix)
  loc_1BF909D:           var_A90 = Me.FGrid.TextMatrix)
  loc_1BF90AE:           Proc_6_7_F26918(var_AB0, CVar(CStr(var_A90)), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9FC, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_968)
  loc_1BF90C8:           Set var_B24 = Me.FGrid
  loc_1BF90CE:           var_B34 = var_B24.TextMatrix)
  loc_1BF90DF:           Proc_6_7_F26918(var_B54, CVar(CStr(var_B34)), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF90EF:           Proc_6_8_EB1974(var_BE4, CVar(Proc_6_14_EF402C(var_8D4, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BF9139:           Set var_D40 = Me.Txt
  loc_1BF913F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E3C)
  loc_1BF9157:           Proc_6_7_F26918(var_DC4, var_DC)
  loc_1BF9170:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BF917F:           var_180 = CStr(var_9A)
  loc_1BF9183:           var_184 = var_178 & "'," & var_180
  loc_1BF9194:           var_18C = var_184 & ",'" & global_56
  loc_1BF91AA:           var_2DC = var_18C & "','" & CStr(global_108)
  loc_1BF91E8:           var_270 = CVar(var_2DC & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_1D4 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1BF9223:           var_3AC = var_270 & "','" & CVar(var_2EC) & "','" & CVar(CStr(var_1C0.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF925F:           var_52C = var_3AC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BF929B:           var_6CC = var_52C & "," & CVar(Val(CStr(var_D0))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_6AC)) 
  loc_1BF92F3:           var_8F4 = var_6CC & "'," & "'" & CVar(CStr(var_760)) & "','" & CVar(CStr(var_7F4)) & "'," & CVar(var_D44) & ",'" & CVar(CStr(var_8D4)) 
  loc_1BF934E:           var_BA4 = var_8F4 & "','" & CVar(CStr(var_968)) & "','" & CVar(CStr(var_9FC)) & "'," & var_AB0 & "," & var_B54 & ",'" & CVar(MemVar_1F950C8) 
  loc_1BF9357:           var_BC4 = var_BA4 & "'," 
  loc_1BF9394:           var_D08 = var_BC4 & var_BE4 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(Proc_6_38_E69628(var_C4, var_6AC)) & "','" & var_A8.Fields.Item("ChrgCode").Value 
  loc_1BF93C3:           var_DA4 = var_D08 & "','" & CVar(var_E3C.Tag) & "','" & CVar(MemVar_1F95078) & "'," 
  loc_1BF93D3:           var_DF4 = var_DA4 & var_DC4 & ")" 
  loc_1BF93E1:           unk_533C5B.Execute CStr(var_DF4), var_E14, -1
  loc_1BF9517:           var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BF951C:           var_144 = 1
  loc_1BF952F:           var_114 = Me.FGrid.TextMatrix)
  loc_1BF9549:           Set var_E8 = Me.Txt
  loc_1BF954F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_18C, var_114)
  loc_1BF9557:           var_144 = var_EC.Text
  loc_1BF957A:           Set var_194 = Me.Txt
  loc_1BF9580:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_1A8, var_2DC)
  loc_1BF9588:           var_104 = var_1A8.Text
  loc_1BF95B8:           var_1D4 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1BF95CB:           Set var_1AC = Me.Txt
  loc_1BF95D1:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C0, var_F0, 1)
  loc_1BF95D9:           1 = var_1C0.Tag
  loc_1BF95E2:           var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF95EA:           var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF960A:           var_240 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF9613:           var_2C0 = CVar(CLng(var_9C)) 'Long
  loc_1BF9618:           var_35C = 1
  loc_1BF962B:           var_250 = Me.FGrid.TextMatrix)
  loc_1BF963B:           var_37C = CVar(CLng(var_9C)) 'Long
  loc_1BF9640:           var_3DC = 1
  loc_1BF9653:           var_260 = Me.FGrid.TextMatrix)
  loc_1BF9663:           var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BF9668:           var_43C = 9
  loc_1BF968E:           var_1038 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BF9695:           var_48C = CVar(CLng(var_9C)) 'Long
  loc_1BF969A:           var_4BC = &H12
  loc_1BF96C0:           var_1040 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BF96C7:           var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BF96CC:           var_53C = 5
  loc_1BF96F0:           var_2FC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF96F9:           var_55C = CVar(CLng(var_9C)) 'Long
  loc_1BF9722:           var_32C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BF975C:           Set var_838 = Me.Txt
  loc_1BF9762:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1BF976A:           var_55C = var_83C.Text
  loc_1BF9777:           var_1048 = Val(var_180)
  loc_1BF977E:           var_628 = CVar(CLng(var_9C)) 'Long
  loc_1BF97AD:           var_6DC = CVar(CLng(&HB)) 'Long
  loc_1BF97F2:           var_3CC = Date
  loc_1BF97FA:           var_3EC = Date
  loc_1BF9802:           var_40C = Date
  loc_1BF9815:           Set var_A80 = Me.Txt
  loc_1BF981B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B24, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1BF9823:           var_6DC = var_B24.Tag
  loc_1BF9850:           var_104C = Proc_6_38_E69628(CVar(var_A8.Fields.Item("ChrgCode")), CVar(CLng(var_9C)), Me.FGrid.TextMatrix), CVar(CLng(&HA)))
  loc_1BF9858:           var_1030 = 0
  loc_1BF9863:           var_102C = 0
  loc_1BF9890:           var_1018 = "A"
  loc_1BF98FF:           var_840 = vbNullString
  loc_1BF995E:           Proc_96_8_1CC4F08(CStr(var_114), var_18C, var_9A, global_56, global_108, MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_2DC))
  loc_1BF9A09:         Else
  loc_1BF9A17:           Set var_E4 = Me.Txt
  loc_1BF9A1D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_1D4), var_F0, CStr(var_240))
  loc_1BF9A25:           CStr(var_250) = var_E8.Text
  loc_1BF9A45:           Set var_EC = Me.Txt
  loc_1BF9A4B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, CStr(var_260))
  loc_1BF9A5A:           Proc_6_7_F26918(var_1D4, CVar(var_194), var_840)
  loc_1BF9A95:           Set var_1A8 = Me.Txt
  loc_1BF9A9B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BF9AA3:           1 = var_1AC.Tag
  loc_1BF9AAC:           var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BF9AB4:           var_280 = CVar(CLng(&H11)) 'Long
  loc_1BF9ABD:           Set var_1C0 = Me.FGrid
  loc_1BF9AD3:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BF9AD8:           var_36C = &H15
  loc_1BF9AFB:           var_3DC = CVar(CLng(var_9C)) 'Long
  loc_1BF9B03:           var_41C = CVar(CLng(&HF)) 'Long
  loc_1BF9B22:           var_44C = CVar(CLng(var_9C)) 'Long
  loc_1BF9B27:           var_4AC = 1
  loc_1BF9B4A:           var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BF9B4F:           var_53C = 9
  loc_1BF9B7C:           var_590 = CVar(CLng(var_9C)) 'Long
  loc_1BF9B81:           var_5D0 = &H12
  loc_1BF9BAE:           var_628 = CVar(CLng(var_9C)) 'Long
  loc_1BF9BB3:           var_668 = 5
  loc_1BF9BC6:           var_638 = Me.FGrid.TextMatrix)
  loc_1BF9BDB:           var_71C = 6
  loc_1BF9BEE:           var_6EC = Me.FGrid.TextMatrix)
  loc_1BF9C15:           var_780 = Me.FGrid.TextMatrix)
  loc_1BF9C2F:           Set var_838 = Me.Txt
  loc_1BF9C35:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_840, var_780, CVar(CLng(7)), CVar(CLng(var_9C)), var_6EC)
  loc_1BF9C3D:           var_71C = var_83C.Text
  loc_1BF9C5D:           var_860 = Me.FGrid.TextMatrix)
  loc_1BF9C84:           var_8F4 = Me.FGrid.TextMatrix)
  loc_1BF9CAB:           var_988 = Me.FGrid.TextMatrix)
  loc_1BF9CE3:           Proc_6_7_F26918(var_A90, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_988, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_8F4)
  loc_1BF9CFD:           Set var_B24 = Me.FGrid
  loc_1BF9D14:           Proc_6_7_F26918(var_B34, CVar(CStr(var_B24.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BF9D24:           Proc_6_8_EB1974(var_BC4, CVar(Proc_6_14_EF402C(var_860, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BF9D72:           Set var_D40 = Me.Txt
  loc_1BF9D78:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E3C)
  loc_1BF9D90:           Proc_6_7_F26918(var_DA4, var_DC)
  loc_1BF9DA9:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BF9DB8:           var_180 = CStr(var_9A)
  loc_1BF9DBC:           var_184 = var_178 & "'," & var_180
  loc_1BF9DCD:           var_18C = var_184 & ",'" & global_56
  loc_1BF9DE3:           var_2DC = var_18C & "','" & CStr(global_108)
  loc_1BF9E21:           var_270 = CVar(var_2DC & "','" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_1D4 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1BF9E5C:           var_3AC = var_270 & "','" & CVar(var_2EC) & "','" & CVar(CStr(var_1C0.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BF9E98:           var_52C = var_3AC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BF9EDD:           var_760 = var_52C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_638)) & "'," & "'" & CVar(CStr(var_6EC)) 
  loc_1BF9F2C:           var_968 = var_760 & "','" & CVar(CStr(var_780)) & "'," & CVar(var_840) & ",'" & CVar(CStr(var_860)) & "','" & CVar(CStr(var_8F4)) 
  loc_1BF9F83:           var_BD4 = var_968 & "','" & CVar(CStr(var_988)) & "'," & var_A90 & "," & var_B34 & ",'" & CVar(MemVar_1F950C8) & "'," & var_BC4 
  loc_1BF9FBC:           var_CF8 = var_BD4 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(Proc_6_38_E69628(var_C4, var_638)) & "','" & CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("ChrgCode")))) 
  loc_1BF9FCF:           var_D38 = var_CF8 & "','" & CVar(var_E3C.Tag) 
  loc_1BF9FEB:           var_D84 = var_D38 & "','" & CVar(MemVar_1F95078) & "'," 
  loc_1BFA009:           unk_533C5B.Execute CStr(var_D84 & var_DA4 & ")"), var_DF4, -1
  loc_1BFA13B:           var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BFA140:           var_144 = 1
  loc_1BFA153:           var_114 = Me.FGrid.TextMatrix)
  loc_1BFA16D:           Set var_E8 = Me.Txt
  loc_1BFA173:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_18C, var_114)
  loc_1BFA17B:           var_144 = var_EC.Text
  loc_1BFA19E:           Set var_194 = Me.Txt
  loc_1BFA1A4:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_1A8, var_2DC)
  loc_1BFA1AC:           var_104 = var_1A8.Text
  loc_1BFA1DC:           var_1D4 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1BFA1EF:           Set var_1AC = Me.Txt
  loc_1BFA1F5:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C0, var_F0, 1)
  loc_1BFA1FD:           1 = var_1C0.Tag
  loc_1BFA206:           var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BFA20E:           var_280 = CVar(CLng(&H11)) 'Long
  loc_1BFA22E:           var_240 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFA237:           var_2C0 = CVar(CLng(var_9C)) 'Long
  loc_1BFA23C:           var_35C = 1
  loc_1BFA24F:           var_250 = Me.FGrid.TextMatrix)
  loc_1BFA25F:           var_37C = CVar(CLng(var_9C)) 'Long
  loc_1BFA264:           var_3DC = 1
  loc_1BFA277:           var_260 = Me.FGrid.TextMatrix)
  loc_1BFA287:           var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BFA28C:           var_43C = 9
  loc_1BFA2B2:           var_1038 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFA2B9:           var_48C = CVar(CLng(var_9C)) 'Long
  loc_1BFA2BE:           var_4BC = &H12
  loc_1BFA2E4:           var_1040 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFA2EB:           var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BFA2F0:           var_53C = 5
  loc_1BFA314:           var_2FC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFA31D:           var_55C = CVar(CLng(var_9C)) 'Long
  loc_1BFA346:           var_32C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFA380:           Set var_838 = Me.Txt
  loc_1BFA386:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1BFA38E:           var_55C = var_83C.Text
  loc_1BFA39B:           var_1048 = Val(var_180)
  loc_1BFA3A2:           var_628 = CVar(CLng(var_9C)) 'Long
  loc_1BFA3D1:           var_6DC = CVar(CLng(&HB)) 'Long
  loc_1BFA416:           var_3CC = Date
  loc_1BFA41E:           var_3EC = Date
  loc_1BFA426:           var_40C = Date
  loc_1BFA439:           Set var_A80 = Me.Txt
  loc_1BFA43F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B24, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1BFA447:           var_6DC = var_B24.Tag
  loc_1BFA463:           var_D3C = var_A8.Fields.Item("ChrgCode")
  loc_1BFA474:           var_104C = Proc_6_38_E69628(CVar(var_D3C), CVar(CLng(var_9C)), Me.FGrid.TextMatrix), CVar(CLng(&HA)))
  loc_1BFA47C:           var_1030 = 0
  loc_1BFA487:           var_102C = 0
  loc_1BFA4B4:           var_1018 = "A"
  loc_1BFA523:           var_840 = vbNullString
  loc_1BFA582:           Proc_96_8_1CC4F08(CStr(var_114), var_18C, var_9A, global_56, global_108, MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_2DC))
  loc_1BFA62A:         End If
  loc_1BFA62D:       Else
  loc_1BFA630:         var_C4 = vbNullString
  loc_1BFA641:         Set var_E4 = Me.Txt
  loc_1BFA647:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_1D4), var_F0, CStr(var_240))
  loc_1BFA64F:         CStr(var_250) = var_E8.Text
  loc_1BFA66F:         Set var_EC = Me.Txt
  loc_1BFA675:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_194, CStr(var_260))
  loc_1BFA684:         Proc_6_7_F26918(var_1D4, CVar(var_194), var_840)
  loc_1BFA6BF:         Set var_1A8 = Me.Txt
  loc_1BFA6C5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1AC, var_2EC, 1)
  loc_1BFA6CD:         1 = var_1AC.Tag
  loc_1BFA6D6:         var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BFA6DE:         var_280 = CVar(CLng(&H11)) 'Long
  loc_1BFA6E7:         Set var_1C0 = Me.FGrid
  loc_1BFA6FD:         var_34C = CVar(CLng(var_9C)) 'Long
  loc_1BFA702:         var_36C = &H15
  loc_1BFA725:         var_3DC = CVar(CLng(var_9C)) 'Long
  loc_1BFA72D:         var_41C = CVar(CLng(&HF)) 'Long
  loc_1BFA74C:         var_44C = CVar(CLng(var_9C)) 'Long
  loc_1BFA751:         var_4AC = 1
  loc_1BFA774:         var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BFA779:         var_53C = 9
  loc_1BFA7A6:         var_590 = CVar(CLng(var_9C)) 'Long
  loc_1BFA7AB:         var_5D0 = &H12
  loc_1BFA7D8:         var_628 = CVar(CLng(var_9C)) 'Long
  loc_1BFA7DD:         var_668 = 5
  loc_1BFA7F0:         var_638 = Me.FGrid.TextMatrix)
  loc_1BFA805:         var_71C = 6
  loc_1BFA818:         var_6EC = Me.FGrid.TextMatrix)
  loc_1BFA83F:         var_780 = Me.FGrid.TextMatrix)
  loc_1BFA859:         Set var_838 = Me.Txt
  loc_1BFA85F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_83C, var_840, var_780, CVar(CLng(7)), CVar(CLng(var_9C)), var_6EC)
  loc_1BFA867:         var_71C = var_83C.Text
  loc_1BFA881:         Set var_8C4 = Me.FGrid
  loc_1BFA887:         var_860 = var_8C4.TextMatrix)
  loc_1BFA8AE:         var_8F4 = Me.FGrid.TextMatrix)
  loc_1BFA8D5:         var_988 = Me.FGrid.TextMatrix)
  loc_1BFA90D:         Proc_6_7_F26918(var_A90, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_988, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_8F4)
  loc_1BFA93E:         Proc_6_7_F26918(var_B34, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1BFA94E:         Proc_6_8_EB1974(var_BC4, CVar(Proc_6_14_EF402C(var_860, CVar(CLng(&HA)), CVar(CLng(var_9C)))), CVar(CLng(var_9C)))
  loc_1BFA971:         Set var_CD8 = Me.Txt
  loc_1BFA977:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_D3C)
  loc_1BFA98F:         Proc_6_7_F26918(var_D38, var_DC)
  loc_1BFA9A8:         var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FolioNoDocid,LogSite_Code,SettleDate) Values ('" & var_F0
  loc_1BFA9BB:         var_184 = var_178 & "'," & CStr(var_9A)
  loc_1BFA9C2:         var_188 = var_184 & ",'"
  loc_1BFA9D3:         var_2D4 = var_188 & global_56 & "','"
  loc_1BFA9E9:         var_2E4 = var_2D4 & CStr(global_108) & "','"
  loc_1BFAA20:         var_270 = CVar(var_2E4 & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_1D4 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1BFAA5B:         var_3AC = var_270 & "','" & CVar(var_2EC) & "','" & CVar(CStr(var_1C0.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFAA97:         var_52C = var_3AC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFAADC:         var_760 = var_52C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_638)) & "'," & "'" & CVar(CStr(var_6EC)) 
  loc_1BFAB2B:         var_968 = var_760 & "','" & CVar(CStr(var_780)) & "'," & CVar(var_840) & ",'" & CVar(CStr(var_860)) & "','" & CVar(CStr(var_8F4)) 
  loc_1BFAB82:         var_BD4 = var_968 & "','" & CVar(CStr(var_988)) & "'," & var_A90 & "," & var_B34 & ",'" & CVar(MemVar_1F950C8) & "'," & var_BC4 
  loc_1BFABBB:         var_CE8 = var_BD4 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(Proc_6_38_E69628(var_C4, var_638)) & "','" & CVar(var_D3C.Tag) 
  loc_1BFABF5:         unk_533C5B.Execute CStr(var_CE8 & "','" & CVar(MemVar_1F95078) & "'," & var_D38 & ")"), var_D84, -1
  loc_1BFAD1B:         var_104 = CVar(CLng(var_9C)) 'Long
  loc_1BFAD20:         var_144 = 1
  loc_1BFAD33:         var_114 = Me.FGrid.TextMatrix)
  loc_1BFAD4D:         Set var_E8 = Me.Txt
  loc_1BFAD53:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_2D4, var_114)
  loc_1BFAD5B:         var_144 = var_EC.Text
  loc_1BFAD64:         var_134 = CVar(Me.LblVPrefix) 'Address
  loc_1BFAD7E:         Set var_194 = Me.Txt
  loc_1BFAD84:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_1A8, var_2E4)
  loc_1BFAD8C:         var_104 = var_1A8.Text
  loc_1BFADB6:         var_1BC = CVar(Format$(Time, "HH:mm")) 'String
  loc_1BFADBC:         var_1D4 = Trim(var_1BC)
  loc_1BFADCF:         Set var_1AC = Me.Txt
  loc_1BFADD5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C0, var_F0, 1)
  loc_1BFADDD:         1 = var_1C0.Tag
  loc_1BFADE6:         var_20C = CVar(CLng(var_9C)) 'Long
  loc_1BFADEE:         var_280 = CVar(CLng(&H11)) 'Long
  loc_1BFAE0E:         var_240 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFAE17:         var_2C0 = CVar(CLng(var_9C)) 'Long
  loc_1BFAE1C:         var_35C = 1
  loc_1BFAE2F:         var_250 = Me.FGrid.TextMatrix)
  loc_1BFAE3F:         var_37C = CVar(CLng(var_9C)) 'Long
  loc_1BFAE44:         var_3DC = 1
  loc_1BFAE57:         var_260 = Me.FGrid.TextMatrix)
  loc_1BFAE67:         var_41C = CVar(CLng(var_9C)) 'Long
  loc_1BFAE6C:         var_43C = 9
  loc_1BFAE92:         var_1040 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFAE99:         var_48C = CVar(CLng(var_9C)) 'Long
  loc_1BFAE9E:         var_4BC = 9
  loc_1BFAEC4:         var_1048 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFAECB:         var_4DC = CVar(CLng(var_9C)) 'Long
  loc_1BFAED0:         var_53C = &H12
  loc_1BFAEF6:         var_1054 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFAEFD:         var_55C = CVar(CLng(var_9C)) 'Long
  loc_1BFAF02:         var_590 = 5
  loc_1BFAF26:         var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFAF2F:         var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1BFAF58:         var_33C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFAF92:         Set var_83C = Me.Txt
  loc_1BFAF98:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_8C4, var_184, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1BFAFA0:         var_5D0 = var_8C4.Text
  loc_1BFAFAD:         var_105C = Val(var_184)
  loc_1BFAFB4:         var_688 = CVar(CLng(var_9C)) 'Long
  loc_1BFAFBC:         var_6DC = CVar(CLng(&HA)) 'Long
  loc_1BFAFCB:         var_39C = Me.FGrid.TextMatrix)
  loc_1BFAFDB:         var_71C = CVar(CLng(var_9C)) 'Long
  loc_1BFAFE3:         var_73C = CVar(CLng(&HB)) 'Long
  loc_1BFB028:         var_3EC = Date
  loc_1BFB030:         var_40C = Date
  loc_1BFB038:         var_45C = Date
  loc_1BFB04B:         Set var_B24 = Me.Txt
  loc_1BFB051:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CD8, var_188, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1BFB059:         var_73C = var_CD8.Tag
  loc_1BFB063:         var_104C = 0
  loc_1BFB06E:         var_1030 = 0
  loc_1BFB081:         var_102C = 0
  loc_1BFB09F:         var_101C = "A"
  loc_1BFB112:         var_D44 = vbNullString
  loc_1BFB171:         Proc_96_8_1CC4F08(CStr(var_114), var_2D4, var_9A, global_56, global_108, MemVar_1F95070, CStr(Trim(var_134)), CDate(var_2E4))
  loc_1BFB219:       End If
  loc_1BFB22F:       Set var_E4 = Me.FGrid
  loc_1BFB248:       var_E48 = Val(CStr(var_E4.TextMatrix)))
  loc_1BFB252:       var_A4 = (var_A4 + var_E48)
  loc_1BFB272:       var_F0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1BFB298:       var_154 = CVar(var_F0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_56 & "' And VP.Date_From<=") 'String
  loc_1BFB2AF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_E8, var_188, var_154, var_1BC, -1, var_EC)
  loc_1BFB2B7:       var_A4 = var_E8.Text
  loc_1BFB2C5:       Proc_6_7_F26918(var_134, CVar(var_188), var_E48, 9)
  loc_1BFB2D6:       var_1A4 = CVar(CLng(var_9C)) & var_134 & " Order By VP.Date_From DESC" 
  loc_1BFB2E4:       unk_533C5B.Execute CStr(var_1A4), CStr(var_1D4), var_F0
  loc_1BFB2EF:       Set var_8C = var_EC
  loc_1BFB330:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1BFB34B:         var_F0 = CStr(global_108)
  loc_1BFB36B:         var_188 = "Update Voucher_Prefix Set Start_Srl_No=" & var_F0 & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1BFB383:         var_154 = CVar(var_188 & "') and V_Type='" & global_56 & "' and Date_From=") 'String
  loc_1BFB3AF:         Proc_6_7_F26918(var_134, CVar(Me.Recordset15.Fields.Item("Date_From")), var_154, var_1A4)
  loc_1BFB3B7:         var_174 = -1 & var_134 
  loc_1BFB3C5:         unk_533C5B.Execute CStr(CVar(CLng(var_9C)) & var_134), var_EC, CStr(var_240)
  loc_1BFB3F3:       End If
  loc_1BFB3F3:     End If
  loc_1BFB3F3:   End If
  loc_1BFB3F6: Next var_2E0 'Integer
  loc_1BFB401: unk_533C5B.CommitTrans
  loc_1BFB40A: var_86 = CByte(0) 'Byte
  loc_1BFB40E: Call Proc_167_41_F06C58()
  loc_1BFB41E: Me.Requery -1
  loc_1BFB423: Call Proc_167_46_121C188()
  loc_1BFB42D: Set var_94 = Nothing
  loc_1BFB435: Set var_8C = Nothing
  loc_1BFB43D: Set var_A8 = Nothing
  loc_1BFB445: Set var_C8 = Nothing
  loc_1BFB44D: Set var_D4 = Nothing
  loc_1BFB455: global_188 = &HFF
  loc_1BFB465: Me.Global.Unload Me
  loc_1BFB46D: Exit Sub
  loc_1BFB46E: Exit Sub
  loc_1BFB46F: ' Referenced from: 1BF5B38
  loc_1BFB478: If (CInt(var_86) = 1) Then
  loc_1BFB481:   unk_533C5B.RollbackTrans
  loc_1BFB486: End If
  loc_1BFB48E: Set var_E4 = Err()
  loc_1BFB494: Call 0.Method_arg_2C (var_F0)
  loc_1BFB4AD: MsgBox(CVar(var_F0), &H10, var_134, var_154, CVar(CLng(var_9C)) & var_134)
  loc_1BFB4C0: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F4CC14
  'Data Table: 533C30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4CB0B: Me.DGRoomNo.Visible = False
  loc_F4CB2A: If (Me.RecordCount > 0) Then
  loc_F4CB69:   Set var_B4 = Me.Txt
  loc_F4CB6F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4CB77:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F4CBAA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F4CBC9:   Set var_B4 = Me.Txt
  loc_F4CBCF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4CBD7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4CBED: End If
  loc_F4CBF8: Set var_A8 = Me.Txt
  loc_F4CBFE: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F4CC06: var_B0.SetFocus
  loc_F4CC12: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9D360
  'Data Table: 533C30
  Dim var_A8 As Variant
  loc_E9D2E4: Set var_88 = Me.DGRoomNo
  loc_E9D30E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9D316: Set var_BC = Me.DGRoomNo
  loc_E9D350: Proc_6_138_106E830(Me.DGRoomNo, global_96, 0, Me.FGPoint)
  loc_E9D35E: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F55C30
  'Data Table: 533C30
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F55B19: Set var_A8 = Me.DGMember
  loc_F55B1F: var_A8.Visible = False
  loc_F55B41: If (Me.var_A8.RecordCount > 0) Then
  loc_F55B83:   Set var_B4 = Me.Txt
  loc_F55B89:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27), var_B8)
  loc_F55B91:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F55BC7:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F55BE6:   Set var_B4 = Me.Txt
  loc_F55BEC:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27), var_B8)
  loc_F55BF4:   var_B8.Text = CStr(var_B0.Value)
  loc_F55C0A: End If
  loc_F55C15: Set var_A8 = Me.Txt
  loc_F55C1B: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27))
  loc_F55C23: var_B0.SetFocus
  loc_F55C2F: Exit Sub
End Sub

Private Sub Form_Load() '146464C
  'Data Table: 533C30
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_B8 As String
  Dim var_BC As String
  Dim unk_533C5B As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_B4 As TextBox
  Dim var_D4 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As DataGrid
  Dim Me As Recordset15
  Dim var_AC As String
  Dim var_138 As Variant
  loc_1463AA8: On Error Goto loc_1464646
  loc_1463AB2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1463ACA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1463AE0: Me.FrCCDet.BackColor = CLng(MemVar_1F951B4)
  loc_1463AF6: Me.FrChqDet.BackColor = CLng(MemVar_1F951B4)
  loc_1463B0C: Me.FrSendRoom.BackColor = CLng(MemVar_1F951B4)
  loc_1463B22: Me.FrEmp.BackColor = CLng(MemVar_1F951B4)
  loc_1463B38: Me.FrMember.BackColor = CLng(MemVar_1F951B4)
  loc_1463B4E: Me.FrComp.BackColor = CLng(MemVar_1F951B4)
  loc_1463B5B: global_188 = 0
  loc_1463B6A: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_1463B7B: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_1463B8C: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_1463B9D: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_1463BAE: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_1463BBF: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_1463BD0: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_1463BE1: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_1463BF2: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_1463C03: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_1463C1D: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_1463C2B: Set var_B0 = MemVar_1F95044
  loc_1463C3A: Call 0.Method_Form_Load8 (var_B0)
  loc_1463C50: Me.Recordset20.Clone
  loc_1463C6A: Call 0.Method_arg_50 (var_B0, -1)
  loc_1463C91: var_BC = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_1463C9A: Me.Connection15.Execute var_BC, var_CC, -1
  loc_1463CCC: CVarUnk
  loc_1463CD1: VerifyVarObj
  loc_1463CDD: LateIdStAd
  loc_1463D0F: unk_533C5B.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_CC, -1
  loc_1463D39: var_B0 = Me.DGCompany.Fields
  loc_1463D41: var_B4 = var_B0.Item("CreditCardInfoMandatory")
  loc_1463D49: var_CC = CVar(var_B4) 'Address
  loc_1463D63: If (Proc_6_38_E69628(var_CC, var_B0, var_B0, var_B0) = "Y") Then
  loc_1463D6C:   global_88 = "Y"
  loc_1463D70: End If
  loc_1463D7E: Set var_B0 = Me.Txt
  loc_1463D84: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0)
  loc_1463D8C: var_B0 = var_B4.Left
  loc_1463DA3: Me.DGCompany.Left = CVar(var_D0)
  loc_1463DBF: Set var_D4 = Me.Txt
  loc_1463DC5: Call 0.Method_Form_Load0 (CInt(&H19), var_D8, var_DC)
  loc_1463DCD: var_B0 = var_D8.Height
  loc_1463DE0: Set var_B0 = Me.Txt
  loc_1463DE6: Call 0.Method_Form_Load0 (CInt(&H19), var_B4)
  loc_1463DFE: var_9C = CVar(((var_B4.Top + var_DC) + CDbl(&H1E))) 'Single
  loc_1463E0D: Me.DGCompany.Top = CVar(var_B4.Top)
  loc_1463E2D: Set var_B0 = Me.Txt
  loc_1463E33: Call 0.Method_Form_Load0 (CInt(4), var_B4)
  loc_1463E52: Me.DGChrgPayment.Left = CVar(var_B4.Left)
  loc_1463E6E: Set var_D4 = Me.Txt
  loc_1463E74: Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_1463E7C: var_DC = var_D8.Height
  loc_1463E95: Call 0.Method_Form_Load0 (CInt(4), var_B4)
  loc_1463E9D: var_D0 = var_B4.Top
  loc_1463EA9: var_9C = CVar((var_D0 + var_DC)) 'Single
  loc_1463EB8: Me.DGChrgPayment.Top = CVar(var_B4.Left)
  loc_1463EEE: unk_533C5B.Execute "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') ORDER BY Name", var_CC, -1
  loc_1463EFF: Set global_120 = Me.Txt
  loc_1463F20: CVarUnk
  loc_1463F25: VerifyVarObj
  loc_1463F2B: Set var_B0 = Me.DGEmp
  loc_1463F31: LateIdStAd
  loc_1463F53: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt)
  loc_1463F5B: global_120 = var_B4.Left
  loc_1463F72: Me.DGEmp.Left = CVar(var_D0)
  loc_1463F8E: Set var_D4 = Me.Txt
  loc_1463F94: Call 0.Method_Form_Load0 (CInt(&H17), var_D8, var_DC)
  loc_1463F9C: var_B0 = var_D8.Height
  loc_1463FB5: Call 0.Method_Form_Load0 (CInt(&H17), var_B4)
  loc_1463FBD: var_D0 = var_B4.Top
  loc_1463FCD: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_1463FDC: Me.DGEmp.Top = CVar(var_D0)
  loc_1464009: var_BC = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_1464020: unk_533C5B.Execute var_BC & MemVar_1F95078 & "') Order By Name", var_CC, -1
  loc_1464031: Set global_124 = Me.Txt
  loc_1464056: CVarUnk
  loc_146405B: VerifyVarObj
  loc_1464061: Set var_B0 = Me.DGMember
  loc_1464067: LateIdStAd
  loc_1464095: If (FdReSetlement.ParentForm = "Check Out") Then
  loc_14640A2:   Set global_100 = New 
  loc_14640B4:   Me.DGMember.CursorLocation = 3
  loc_14640D7:   var_B8 = "SELECT DP.PayCode as Code, RevMast.name as Name, revmast.Type as Flag, revMast.PayType as Paytype, revMast.SaleRate as SaleRate, revMast.Cost as Cost FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F95078
  loc_14640F6:   Me.Open CVar(var_B8 & "') AND restcode='" & MemVar_1F95078 & "Fom" & "' ORDER BY NAME "), CVar(MemVar_1F95044), 2
  loc_1464110:   CVarUnk
  loc_1464115:   VerifyVarObj
  loc_146411B:   Set var_B0 = Me.DGChrgPayment
  loc_1464121:   LateIdStAd
  loc_1464132: Else
  loc_146413C:   Set global_100 = New 
  loc_146414E:   Me.CursorLocation = 3
  loc_1464178:   var_CC = CVar("Select Code,Name,Type as Flag,PayType,SaleRate,Cost From RevMast where  (LOGSITE_CODE='" & MemVar_1F95078 & "') AND ((Fieldtype in ('C','P')  AND FLAGTYPE='FOM') OR (PAYTYPE<>'' AND PAYTYPE IS NOT NULL)) ORDER BY NAME ") 'String
  loc_1464182:   Me.Open var_CC, CVar(MemVar_1F95044), 2
  loc_1464196:   CVarUnk
  loc_146419B:   VerifyVarObj
  loc_14641A1:   Set var_B0 = Me.DGChrgPayment
  loc_14641A7:   LateIdStAd
  loc_14641B5: End If
  loc_14641C9: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt, global_100, 3, -1)
  loc_14641D1: var_B0 = var_B4.Left
  loc_14641E8: Me.DGRoomNo.Left = CVar(var_D0)
  loc_1464204: Set var_D4 = Me.Txt
  loc_146420A: Call 0.Method_Form_Load0 (CInt(0), var_D8, var_DC, global_100, 3)
  loc_1464212: -1 = var_D8.Height
  loc_1464225: Set var_B0 = Me.Txt
  loc_146422B: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0)
  loc_1464233: var_B0 = var_B4.Top
  loc_1464243: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_146424C: Set var_E0 = Me.DGRoomNo
  loc_1464252: var_E0.Top = CVar(var_D0)
  loc_1464280: Me.var_E0.CursorLocation = 3
  loc_14642A3: var_B8 = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.Docid, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,RoomOcc.ChkOutDate, RoomOcc.ChkOutTime,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, " & "GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GUESTSTAT.NAME AS STATUSNAME,RoomOcc.PlanCode FROM (((((RoomMast inner JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) Inner JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) Inner JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) Inner JOIN RoomCat ON RoomOcc.RoomCat=RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE (RoomOcc.LOGSITE_CODE='"
  loc_14642B1: var_CC = CVar(var_B8 & MemVar_1F95078 & "') AND CHKOUTDATE IS not NULL AND RoomOcc.Type='O' AND ROOMMAST.TYPE='RO' ORDER BY RoomOcc.Docid") 'String
  loc_14642BB: Me.Open var_CC, CVar(MemVar_1F95044), 2
  loc_14642D3: CVarUnk
  loc_14642D8: VerifyVarObj
  loc_14642E4: LateIdStAd
  loc_14642FC: Set global_192 = New 
  loc_146430E: Me.DGRoomNo.CursorLocation = 3
  loc_146431D: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_146432B:   Proc_6_7_F26918(var_CC, MemVar_1F950F4, Me.DGRoomNo, New)
  loc_146433B:   Proc_6_7_F26918(var_138, MemVar_1F950FC, 3)
  loc_1464357:   var_AC = "Select BillDet.Bill_No ,BillDet.BillSettleDate as SettleDate,BillDet.Folio_NO as FolioNo,GuestProf.Name as GuestName,GuestFolio.Docid  as FolioNoDocid from BillDet inner join Guestprof on BillDet.GuestProf=GuestProf.code Inner Join GuestFolio on GuestFolio.docid=BillDet.FolioNodocid Where BillDet.BillSettleDate between "
  loc_1464396:   Me.Open var_AC & var_CC & " And " & var_138 & " and BillDet.LogSite_Code='" & CVar(MemVar_1F95078) & "' order by Bill_No", CVar(MemVar_1F95044), 2
  loc_14643B1: Else
  loc_14643BC:   Proc_6_7_F26918(var_CC, MemVar_1F950EC, 3, -1)
  loc_14643D8:   var_AC = "Select BillDet.Bill_No ,BillDet.BillSettleDate as SettleDate,BillDet.Folio_NO as FolioNo,GuestProf.Name as GuestName,GuestFolio.Docid  as FolioNoDocid from BillDet inner join Guestprof on BillDet.GuestProf=GuestProf.code Inner Join GuestFolio on GuestFolio.Docid=BillDet.FolioNoDocid Where BillDet.BillSettleDate="
  loc_1464407:   Me.Open var_AC & var_CC & " and BillDet.LogSite_Code='" & CVar(MemVar_1F95078) & "' order by Bill_No", CVar(MemVar_1F95044), 2
  loc_1464419: End If
  loc_1464422: CVarUnk
  loc_1464427: VerifyVarObj
  loc_146442D: Set var_B0 = Me.DGBill
  loc_1464433: LateIdStAd
  loc_1464455: Call 0.Method_Form_Load0 (CInt(&H24), var_B4, var_D0, Me.Txt, global_192)
  loc_146445D: 3 = var_B4.Left
  loc_1464474: Me.DGBill.Left = CVar(var_D0)
  loc_1464490: Set var_D4 = Me.Txt
  loc_1464496: Call 0.Method_Form_Load0 (CInt(&H24), var_D8, var_DC, -1)
  loc_146449E: -1 = var_D8.Height
  loc_14644B1: Set var_B0 = Me.Txt
  loc_14644B7: Call 0.Method_Form_Load0 (CInt(&H24), var_B4, var_D0)
  loc_14644BF: global_124 = var_B4.Top
  loc_14644CF: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_14644D8: Set var_E0 = Me.DGBill
  loc_14644DE: var_E0.Top = CVar(var_D0)
  loc_14644FA: Set global_112 = New 
  loc_146450C: Me.var_E0.CursorLocation = 3
  loc_1464536: var_CC = CVar("SELECT RoomOcc.DocId as Code,RoomOcc.RoomNo,RoomOcc.FolioNo From RoomOcc WHERE (RoomOcc.LOGSITE_CODE='" & MemVar_1F95078 & "') AND CHKOUTDATE IS NULL") 'String
  loc_1464540: Me.Open var_CC, CVar(MemVar_1F95044), 2
  loc_1464554: CVarUnk
  loc_1464559: VerifyVarObj
  loc_146455F: Set var_B0 = Me.DGRoom
  loc_1464565: LateIdStAd
  loc_1464587: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt)
  loc_146458F: global_112 = var_B4.Left
  loc_14645A6: Me.DGRoom.Left = CVar(var_D0)
  loc_14645D4: Set var_B0 = Me.Txt
  loc_14645DA: Call 0.Method_Form_Load0 (CInt(&H18), var_B4, var_D0)
  loc_14645E2: 3 = var_B4.Height
  loc_14645F2: var_9C = CVar(((var_D0 + Me.FrSendRoom.Top) + CDbl(&H1E))) 'Single
  loc_1464601: Me.DGRoom.Top = CVar(var_D0)
  loc_1464611: Call Proc_167_46_121C188(-1)
  loc_146461E: Call 0.Method_arg_7C (CDbl(1785))
  loc_146462B: Call 0.Method_MeC (CDbl(7770))
  loc_1464638: Call 0.Method_Me4 (CDbl(10455))
  loc_1464642: Set var_88 = Nothing
  loc_1464645: Exit Sub
  loc_1464646: ' Referenced from: 1463AA8
  loc_1464646: Proc_6_60_E63754(var_B0)
  loc_146464B: Exit Sub
End Sub

Private Sub Form_Resize() 'E71014
  'Data Table: 533C30
  loc_E70FBE: Call 0.Method_arg_50 (var_88)
  loc_E70FD0: Me.LblFormCaption.Caption = var_88
  loc_E70FE9: Me.LblFormCaption.Left = CDbl(0)
  loc_E70FF7: Call 0.Method_arg_100 (var_90)
  loc_E71009: Me.LblFormCaption.Width = var_90
  loc_E71011: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E566D4
  'Data Table: 533C30
  loc_E5669F: Set global_96 = Nothing
  loc_E566B1: Set global_100 = Nothing
  loc_E566C3: Set global_192 = Nothing
  loc_E566CF: global_52 = 0
  loc_E566D2: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'EA89B4
  'Data Table: 533C30
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim Cancel As Integer
  loc_EA8938: var_94 = 1
  loc_EA8941: var_B4 = 1
  loc_EA8970: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_EA89A2:   If (MsgBox("Exit without Saving Transaction?", &H121, var_EC, var_FC, var_10C) = 2) Then
  loc_EA89A7:     Cancel = 1
  loc_EA89AA:     Exit Sub
  loc_EA89AE:   Else
  loc_EA89B0:     Cancel = 0
  loc_EA89B3:   End If
  loc_EA89B3: End If
  loc_EA89B3: Exit Sub
End Sub

Private Sub Form_Activate() 'E71418
  'Data Table: 533C30
  Dim var_94 As TextBox
  loc_E713C4: On Error Goto loc_E71410
  loc_E713DD: If (FdReSetlement.ParentForm = "Check Out") Then
  loc_E713E6:   global_160 = "S"
  loc_E713F5:   Set var_90 = Me.Txt
  loc_E713FB:   Call 0.Method_Form_Activate0 (CInt(&H24))
  loc_E71403:   var_94.SetFocus
  loc_E7140F: End If
  loc_E7140F: Exit Sub
  loc_E71410: ' Referenced from: E713C4
  loc_E71410: Proc_6_60_E63754(var_94)
  loc_E71415: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25A4C
  'Data Table: 533C30
  loc_E25A31: If (global_52 = &HFF) Then
  loc_E25A41:   Me.Global.Unload Me
  loc_E25A49: End If
  loc_E25A49: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5EC48
  'Data Table: 533C30
  Dim arg_DFF As Double
  loc_E5EBFC: On Error Goto loc_E5EC3F
  loc_E5EC09: If (CLng(KeyCode) = &H79) Then
  loc_E5EC19:   Me.Global.Unload Me
  loc_E5EC21:   Exit Sub
  loc_E5EC22: End If
  loc_E5EC36: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E5EC3E: Exit Sub
  loc_E5EC3F: ' Referenced from: E5EBFC
  loc_E5EC3F: Proc_6_60_E63754(Shift)
  loc_E5EC44: Exit Sub
  loc_E5EC45: arg_DFF = 0
End Sub

Private Sub txtVTime_UnknownEvent_8 'EC8398
  'Data Table: 533C30
  Dim KeyCode As Integer
  loc_EC8376: If ((CDbl(Val(CStr(Left(CVar(Me.txtVTime), 2)))) > CDbl(&H17)) Or (CDbl(Val(CStr(Right(CVar(Me.txtVTime), 2)))) > CDbl(&H3B))) Then
  loc_EC837B:   KeyCode = &HFF
  loc_EC837E:   Exit Sub
  loc_EC837F: End If
  loc_EC838D: Proc_303_0_FBACC8("	", 0)
  loc_EC8395: Exit Sub
End Sub

Private Sub txtVTime_UnknownEvent_B 'E0ADAC
  'Data Table: 533C30
  loc_E0AD9E: If (KeyCode = &HD) Then
  loc_E0ADA6:   Call txtVTime_UnknownEvent_8()
  loc_E0ADAB: End If
  loc_E0ADAB: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E18304
  'Data Table: 533C30
  loc_E182F9: Me.Global.Unload Me
  loc_E18301: Exit Sub
End Sub

Private Sub Timer1_Timer() '1051F10
  'Data Table: 533C30
  Dim var_8C As TextBox
  loc_1051CA6: Set var_88 = Me.Txt
  loc_1051CAC: Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051CC9: If (var_8C.BackColor = &HD3B3FF) Then
  loc_1051CDA:   Set var_88 = Me.Txt
  loc_1051CE0:   Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051CFF:   If (var_8C.Text <> vbNullString) Then
  loc_1051D12:     Set var_88 = Me.Txt
  loc_1051D18:     Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051D20:     var_8C.BackColor = &HFFFFFF
  loc_1051D2C:   End If
  loc_1051D3A:   Set var_88 = Me.Txt
  loc_1051D40:   Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_1051D5F:   If (var_8C.Text <> vbNullString) Then
  loc_1051D72:     Set var_88 = Me.Txt
  loc_1051D78:     Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_1051D80:     var_8C.BackColor = &HFFFFFF
  loc_1051D8C:   End If
  loc_1051D9A:   Set var_88 = Me.Txt
  loc_1051DA0:   Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051DBF:   If (var_8C.Text <> vbNullString) Then
  loc_1051DD2:     Set var_88 = Me.Txt
  loc_1051DD8:     Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051DE0:     var_8C.BackColor = &HFFFFFF
  loc_1051DEC:   End If
  loc_1051DEF: Else
  loc_1051DFD:   Set var_88 = Me.Txt
  loc_1051E03:   Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051E22:   If (var_8C.Text <> vbNullString) Then
  loc_1051E35:     Set var_88 = Me.Txt
  loc_1051E3B:     Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051E43:     var_8C.BackColor = &HD3B3FF
  loc_1051E4F:   End If
  loc_1051E5D:   Set var_88 = Me.Txt
  loc_1051E63:   Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_1051E82:   If (var_8C.Text <> vbNullString) Then
  loc_1051E95:     Set var_88 = Me.Txt
  loc_1051E9B:     Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_1051EA3:     var_8C.BackColor = &HD3B3FF
  loc_1051EAF:   End If
  loc_1051EBD:   Set var_88 = Me.Txt
  loc_1051EC3:   Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051EE2:   If (var_8C.Text <> vbNullString) Then
  loc_1051EF5:     Set var_88 = Me.Txt
  loc_1051EFB:     Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051F03:     var_8C.BackColor = &HD3B3FF
  loc_1051F0F:   End If
  loc_1051F0F: End If
  loc_1051F0F: Exit Sub
End Sub

Private Sub DGBill_UnknownEvent_9 'F9E9B8
  'Data Table: 533C30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F9E84F: Me.DGBill.Visible = False
  loc_F9E86E: If (Me.RecordCount > 0) Then
  loc_F9E8AD:   Set var_B4 = Me.Txt
  loc_F9E8B3:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(&H24), var_B8)
  loc_F9E8BB:   var_B8.Tag = CStr(Me.Fields.Item("FolioNoDocid").Value)
  loc_F9E90D:   Set var_B4 = Me.Txt
  loc_F9E913:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F9E91B:   var_B8.Tag = CStr(Me.Fields.Item("FolioNoDocid").Value)
  loc_F9E94E:   var_B0 = Me.Fields.Item("Bill_no")
  loc_F9E96D:   Set var_B4 = Me.Txt
  loc_F9E973:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(&H24), var_B8)
  loc_F9E97B:   var_B8.Text = CStr(var_B0.Value)
  loc_F9E991: End If
  loc_F9E99C: Set var_A8 = Me.Txt
  loc_F9E9A2: Call 0.Method_DGBill_UnknownEvent_90 (CInt(&H24))
  loc_F9E9AA: var_B0.SetFocus
  loc_F9E9B6: Exit Sub
End Sub

Public Function global_52Get() '535844
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '535853
  global_52 = Value
End Sub

Public Function global_56Get() '535862
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '535871
  global_56 = Value
End Sub

Public Property Get OpenMode() 'E037D0
  'Data Table: 533C30
  loc_E037C9: OpenMode = global_148
End Sub

Public Property Let OpenMode(vNewValue) 'E01EDC
  'Data Table: 533C30
  loc_E01ED6: global_148 = vNewValue
  loc_E01ED9: Exit Sub
End Sub

Public Property Get ParentForm() 'E11184
  'Data Table: 533C30
  loc_E11178: var_88 = global_156
  loc_E1117B: ParentForm = 
End Sub

Public Property Let ParentForm(vNewValue) 'E110F4
  'Data Table: 533C30
  loc_E110EC: global_156 = vNewValue
  loc_E110F0: Exit Sub
End Sub

Public Sub Proc_167_40_E78E2C(arg_C) 'E78E2C
  'Data Table: 533C30
  Dim var_98 As TextBox
  loc_E78DDA: Set var_8C = Me.Txt
  loc_E78DE0: Call 0.Method_Proc_167_40_E78E2CC (var_8E, var_86)
  loc_E78DF0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78E06:   Set var_8C = Me.Txt
  loc_E78E0C:   Call 0.Method_Proc_167_40_E78E2C0 (CInt(var_86), var_98)
  loc_E78E14:   var_98.Enabled = arg_C
  loc_E78E23: Next var_92 'Byte
  loc_E78E29: Exit Sub
End Sub

Public Sub Proc_167_41_F06C58
  'Data Table: 533C30
  Dim var_98 As Variant
  loc_F06B7A: Set var_8C = Me.Txt
  loc_F06B80: Call 0.Method_Proc_167_41_F06C58C (var_8E, var_86)
  loc_F06B90: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F06BA6:   Set var_8C = Me.Txt
  loc_F06BAC:   Call 0.Method_Proc_167_41_F06C580 (CInt(var_86), var_98)
  loc_F06BB4:   var_98.Text = vbNullString
  loc_F06BD0:   Set var_8C = Me.Txt
  loc_F06BD6:   Call 0.Method_Proc_167_41_F06C580 (CInt(var_86), var_98)
  loc_F06BDE:   var_98.Tag = vbNullString
  loc_F06BED: Next var_92 'Byte
  loc_F06C01: Set var_8C = Me.LTxt
  loc_F06C07: Call 0.Method_Proc_167_41_F06C58C (var_8E, var_86)
  loc_F06C17: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_F06C2D:   Set var_8C = Me.LTxt
  loc_F06C33:   Call 0.Method_Proc_167_41_F06C580 (CInt(var_86), var_98)
  loc_F06C3B:   var_98.Caption = vbNullString
  loc_F06C4A: Next var_9C 'Byte
  loc_F06C50: Call Proc_167_46_121C188()
  loc_F06C55: Exit Sub
End Sub

Public Sub Proc_167_42_F6E02C
  'Data Table: 533C30
  loc_F6DF00: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6DF12:   Me.DGRoomNo.Visible = False
  loc_F6DF1A: End If
  loc_F6DF36: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_F6DF48:   Me.DGChrgPayment.Visible = False
  loc_F6DF50: End If
  loc_F6DF6C: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F6DF7E:   Me.DGRoom.Visible = False
  loc_F6DF86: End If
  loc_F6DFA2: If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_F6DFB4:   Me.DGBill.Visible = False
  loc_F6DFBC: End If
  loc_F6DFD8: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F6DFEA:   Me.DGMember.Visible = False
  loc_F6DFF2: End If
  loc_F6E00E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6E020:   Me.FGPoint.Visible = False
  loc_F6E028: End If
  loc_F6E028: Exit Sub
End Sub

Public Sub Proc_167_43_10B0028
  'Data Table: 533C30
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_96 As Integer
  Dim var_13C As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  loc_10AFDA0: var_90 = global_56
  loc_10AFDB7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10AFDE8: Set var_B4 = Me.Txt
  loc_10AFDEE: Call 0.Method_Proc_167_43_10B00280 (CInt(&H11), var_B8, CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10AFDFD: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_10AFE05: var_F8 = -1 & var_D8 
  loc_10AFE19: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_10AFE24: Set var_8C = var_140
  loc_10AFE60: If (var_8C.RecordCount > 0) Then
  loc_10AFE9F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10AFEA2:     GoTo loc_10AFF22
  loc_10AFEA5:   End If
  loc_10AFED0:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10AFEF7:   var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_10AFF0C:   var_D8 = (var_B8.Value + 1)
  loc_10AFF11:   var_96 = CInt(var_D8)
  loc_10AFF22:   ' Referenced from: 10AFEA2
  loc_10AFF22: End If
  loc_10AFF4D: var_C8 = Space((5 - Len(var_90)))
  loc_10AFF55: var_E8 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_B8.Value)
  loc_10AFF66: var_F8 = Space((5 - Len(var_94)))
  loc_10AFF6E: var_118 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_F8)
  loc_10AFF78: var_13C = (var_F8 & " Order By VP.Date_From DESC" + CVar(var_94))
  loc_10AFF8E: var_158 = Space((8 - Len(CStr(var_96))))
  loc_10AFF96: var_168 = (var_13C + var_158)
  loc_10AFFA2: var_188 = (var_168 + CVar(CStr(var_96)))
  loc_10AFFA7: var_9C = CStr(var_188)
  loc_10AFFD7: Me.LblVPrefix.Caption = var_94
  loc_10AFFED: Set var_B4 = Me.Txt
  loc_10AFFF3: Call 0.Method_Proc_167_43_10B00280 (CInt(&H10), var_B8)
  loc_10AFFFB: var_B8.Text = var_9C
  loc_10B0014: var_88 = var_9C
  loc_10B001C: Set var_8C = Nothing
  loc_10B001F: Proc_167_43_10B0028 = CLng(var_96)
End Sub

Public Sub Proc_167_44_123D18C(arg_C) '123D18C
  'Data Table: 533C30
  Dim var_88 As Frame
  Dim var_8C As Variant
  Dim var_9C As TextBox
  Dim var_98 As Frame
  loc_123CC58: Me.FrChqDet.Visible = False
  loc_123CC6C: Me.FrCCDet.Visible = False
  loc_123CC80: Me.FrEmp.Visible = False
  loc_123CC94: Me.FrComp.Visible = False
  loc_123CCA8: Me.FrMember.Visible = False
  loc_123CCBC: Me.FrSendRoom.Visible = False
  loc_123CCD2: Set var_88 = Me.Txt
  loc_123CCD8: Call 0.Method_Proc_167_44_123D18C0 (CInt(&H18), var_8C)
  loc_123CCE0: var_8C.Tag = vbNullString
  loc_123CCEF: var_90 = arg_C
  loc_123CCFA: If (var_90 = "Cheque") Then
  loc_123CD09:   Me.FrChqDet.Visible = True
  loc_123CD1F:   Set var_98 = Me.Txt
  loc_123CD25:   Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_9C)
  loc_123CD40:   Set var_88 = Me.Txt
  loc_123CD46:   Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_8C)
  loc_123CD65:   Me.FrChqDet.Top = (var_8C.Top + var_9C.Height)
  loc_123CD83:   Set var_88 = Me.Lbl
  loc_123CD89:   Call 0.Method_Proc_167_44_123D18C0 (4, var_8C)
  loc_123CDA3:   Me.FrChqDet.Left = var_8C.Left
  loc_123CDB4: Else
  loc_123CDBC:   If (var_90 = "Credit Card") Then
  loc_123CDCA:     If (global_88 = "Y") Then
  loc_123CDD9:       Me.FrCCDet.Visible = True
  loc_123CDEF:       Set var_98 = Me.Txt
  loc_123CDF5:       Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_9C)
  loc_123CE10:       Set var_88 = Me.Txt
  loc_123CE16:       Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_8C)
  loc_123CE35:       Me.FrCCDet.Top = (var_8C.Top + var_9C.Height)
  loc_123CE53:       Set var_88 = Me.Lbl
  loc_123CE59:       Call 0.Method_Proc_167_44_123D18C0 (4, var_8C)
  loc_123CE73:       Me.FrCCDet.Left = var_8C.Left
  loc_123CE81:     End If
  loc_123CE84:   Else
  loc_123CE8C:     If (var_90 = "Staff") Then
  loc_123CE9B:       Me.FrEmp.Visible = True
  loc_123CEB1:       Set var_98 = Me.Txt
  loc_123CEB7:       Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_9C)
  loc_123CED2:       Set var_88 = Me.Txt
  loc_123CED8:       Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_8C)
  loc_123CEF7:       Me.FrEmp.Top = (var_8C.Top + var_9C.Height)
  loc_123CF15:       Set var_88 = Me.Lbl
  loc_123CF1B:       Call 0.Method_Proc_167_44_123D18C0 (4, var_8C)
  loc_123CF35:       Me.FrEmp.Left = var_8C.Left
  loc_123CF46:     Else
  loc_123CF4E:       If (var_90 = "Company") Then
  loc_123CF5D:         Me.FrComp.Visible = True
  loc_123CF73:         Set var_98 = Me.Txt
  loc_123CF79:         Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_9C)
  loc_123CF94:         Set var_88 = Me.Txt
  loc_123CF9A:         Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_8C)
  loc_123CFB9:         Me.FrComp.Top = (var_8C.Top + var_9C.Height)
  loc_123CFD7:         Set var_88 = Me.Lbl
  loc_123CFDD:         Call 0.Method_Proc_167_44_123D18C0 (4, var_8C)
  loc_123CFF7:         Me.FrComp.Left = var_8C.Left
  loc_123D008:       Else
  loc_123D010:         If (var_90 = "Room") Then
  loc_123D01F:           Me.FrSendRoom.Visible = True
  loc_123D035:           Set var_98 = Me.Txt
  loc_123D03B:           Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_9C)
  loc_123D056:           Set var_88 = Me.Txt
  loc_123D05C:           Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_8C)
  loc_123D07B:           Me.FrSendRoom.Top = (var_8C.Top + var_9C.Height)
  loc_123D099:           Set var_88 = Me.Lbl
  loc_123D09F:           Call 0.Method_Proc_167_44_123D18C0 (4, var_8C)
  loc_123D0B9:           Me.FrSendRoom.Left = var_8C.Left
  loc_123D0CA:         Else
  loc_123D0D2:           If (var_90 = "Member") Then
  loc_123D0E1:             Me.FrMember.Visible = True
  loc_123D0F7:             Set var_98 = Me.Txt
  loc_123D0FD:             Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_9C)
  loc_123D118:             Set var_88 = Me.Txt
  loc_123D11E:             Call 0.Method_Proc_167_44_123D18C0 (CInt(5), var_8C)
  loc_123D13D:             Me.FrMember.Top = (var_8C.Top + var_9C.Height)
  loc_123D15B:             Set var_88 = Me.Lbl
  loc_123D161:             Call 0.Method_Proc_167_44_123D18C0 (4, var_8C)
  loc_123D17B:             Me.FrMember.Left = var_8C.Left
  loc_123D189:           End If
  loc_123D189:         End If
  loc_123D189:       End If
  loc_123D189:     End If
  loc_123D189:   End If
  loc_123D189: End If
  loc_123D189: Exit Sub
End Sub

Public Sub Proc_167_45_1366908
  'Data Table: 533C30
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_F0 As String
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As TextBox
  Dim Me As Variant
  loc_13660BB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13660C0: var_C8 = 1
  loc_13660F7: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13660FE:   Set var_F4 = Me.FGrid
  loc_1366114:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1366119:   var_C8 = 1
  loc_1366130:   var_F0 = CStr(var_F4.TextMatrix))
  loc_136613E:   Set var_DC = Me.Txt
  loc_1366144:   Call 0.Method_Proc_167_45_13669080 (CInt(4), var_F8, var_F0, var_C8)
  loc_136614C:   var_F8.Tag = var_A8
  loc_136617B:   If (Me.RecordCount > 0) Then
  loc_1366184:     Me.MoveFirst
  loc_13661A0:     If (Me.AbsolutePosition > 0) Then
  loc_13661C2:       Set var_88 = Me.Txt
  loc_13661C8:       Call 0.Method_Proc_167_45_13669080 (CInt(4), var_DC, var_F0, "Code='", 0)
  loc_13661D0:       1 = var_DC.Tag
  loc_13661E9:       Me.Find var_A8 & var_F0 & "'", var_C8, var_A8
  loc_13661FE:     End If
  loc_13661FE:   End If
  loc_1366211:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1366216:   var_C8 = 3
  loc_1366233:   global_140 = CStr(var_F4.TextMatrix))
  loc_1366281:   Set var_DC = Me.Txt
  loc_1366287:   Call 0.Method_Proc_167_45_13669080 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), 4)
  loc_136628F:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13662BA:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13662BF:   var_C8 = 5
  loc_13662DC:   global_132 = CStr(var_F4.TextMatrix))
  loc_1366300:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1366305:   var_C8 = 6
  loc_1366322:   global_136 = CStr(var_F4.TextMatrix))
  loc_1366346:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1366370:   Set var_DC = Me.Txt
  loc_1366376:   Call 0.Method_Proc_167_45_13669080 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), 9, var_A8, 9)
  loc_136637E:   var_F8.Text = var_A8
  loc_13663B1:   var_C8 = CVar(CLng(&HA)) 'Long
  loc_13663D2:   Set var_DC = Me.Txt
  loc_13663D8:   Call 0.Method_Proc_167_45_13669080 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_13663E0:   var_F8.Text = var_C8
  loc_1366434:   Set var_DC = Me.Txt
  loc_136643A:   Call 0.Method_Proc_167_45_13669080 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_1366442:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1366496:   Set var_DC = Me.Txt
  loc_136649C:   Call 0.Method_Proc_167_45_13669080 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_13664A4:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13664F8:   Set var_DC = Me.Txt
  loc_13664FE:   Call 0.Method_Proc_167_45_13669080 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_1366506:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_136655B:   Set var_DC = Me.Txt
  loc_1366561:   Call 0.Method_Proc_167_45_13669080 (CInt(&H25), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_1366569:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13665BD:   Set var_DC = Me.Txt
  loc_13665C3:   Call 0.Method_Proc_167_45_13669080 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_13665CB:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_136661F:   Set var_DC = Me.Txt
  loc_1366625:   Call 0.Method_Proc_167_45_13669080 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_136662D:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1366681:   Set var_DC = Me.Txt
  loc_1366687:   Call 0.Method_Proc_167_45_13669080 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_136668F:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13666E3:   Set var_DC = Me.Txt
  loc_13666E9:   Call 0.Method_Proc_167_45_13669080 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H11)))
  loc_13666F1:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1366746:   Set var_DC = Me.Txt
  loc_136674C:   Call 0.Method_Proc_167_45_13669080 (CInt(&H23), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_1366754:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13667A9:   Set var_DC = Me.Txt
  loc_13667AF:   Call 0.Method_Proc_167_45_13669080 (CInt(0), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_13667B7:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_136680B:   Set var_DC = Me.Txt
  loc_1366811:   Call 0.Method_Proc_167_45_13669080 (CInt(0), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(7)))
  loc_1366819:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_136686E:   Set var_DC = Me.Txt
  loc_1366874:   Call 0.Method_Proc_167_45_13669080 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_136687C:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13668D1:   Set var_DC = Me.Txt
  loc_13668D7:   Call 0.Method_Proc_167_45_13669080 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H16)
  loc_13668DF:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13668FC:   global_128 = &HFF
  loc_1366901:   Set var_F4 = Nothing 
  loc_1366905: End If
  loc_1366905: Exit Sub
End Sub

Public Sub Proc_167_46_121C188
  'Data Table: 533C30
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_EC As MSHFlexGrid
  Dim var_FC As Variant
  loc_121BC90: Set var_88 = Me.FGrid
  loc_121BC9F: var_88.Cols = &H1B
  loc_121BCB0: var_88.Rows = 1
  loc_121BCB8: var_98 = CVar(CLng(&HA)) 'Long
  loc_121BCBD: var_B8 = 0
  loc_121BCC9: LateIdCallSt
  loc_121BCD4: var_98 = CVar(CLng(&HB)) 'Long
  loc_121BCD9: var_B8 = 0
  loc_121BCE5: LateIdCallSt
  loc_121BCF0: var_98 = CVar(CLng(&HC)) 'Long
  loc_121BCF5: var_B8 = 0
  loc_121BD01: LateIdCallSt
  loc_121BD0C: var_98 = CVar(CLng(&HD)) 'Long
  loc_121BD11: var_B8 = 0
  loc_121BD1D: LateIdCallSt
  loc_121BD28: var_98 = CVar(CLng(&HE)) 'Long
  loc_121BD2D: var_B8 = 0
  loc_121BD39: LateIdCallSt
  loc_121BD44: var_98 = CVar(CLng(&HF)) 'Long
  loc_121BD49: var_B8 = 0
  loc_121BD55: LateIdCallSt
  loc_121BD60: var_98 = CVar(CLng(&H10)) 'Long
  loc_121BD65: var_B8 = 0
  loc_121BD71: LateIdCallSt
  loc_121BD7C: var_98 = CVar(CLng(&H11)) 'Long
  loc_121BD81: var_B8 = 0
  loc_121BD8D: LateIdCallSt
  loc_121BD95: var_98 = &H12
  loc_121BD9E: var_B8 = 0
  loc_121BDAA: LateIdCallSt
  loc_121BDB2: var_98 = 1
  loc_121BDBB: var_B8 = 0
  loc_121BDC7: LateIdCallSt
  loc_121BDCF: var_98 = 2
  loc_121BDD8: var_B8 = 0
  loc_121BDE4: LateIdCallSt
  loc_121BDEC: var_98 = 5
  loc_121BDF5: var_B8 = 0
  loc_121BE01: LateIdCallSt
  loc_121BE09: var_98 = 6
  loc_121BE12: var_B8 = 0
  loc_121BE1E: LateIdCallSt
  loc_121BE29: var_98 = CVar(CLng(7)) 'Long
  loc_121BE2E: var_B8 = 0
  loc_121BE3A: LateIdCallSt
  loc_121BE45: var_98 = CVar(CLng(8)) 'Long
  loc_121BE4A: var_B8 = 0
  loc_121BE56: LateIdCallSt
  loc_121BE5E: var_98 = 3
  loc_121BE67: var_B8 = 0
  loc_121BE73: LateIdCallSt
  loc_121BE7B: var_98 = &H17
  loc_121BE84: var_B8 = 0
  loc_121BE90: LateIdCallSt
  loc_121BE98: var_98 = 0
  loc_121BEA1: var_B8 = &HFA
  loc_121BEAD: LateIdCallSt
  loc_121BEB5: var_98 = 0
  loc_121BEBE: var_B8 = 0
  loc_121BEC7: var_D8 = "SNo"
  loc_121BED0: LateIdCallSt
  loc_121BED8: var_98 = 0
  loc_121BEE1: var_B8 = &H1C2
  loc_121BEED: LateIdCallSt
  loc_121BEF5: var_98 = 0
  loc_121BEFE: var_B8 = 4
  loc_121BF07: var_D8 = "Payment Type"
  loc_121BF10: LateIdCallSt
  loc_121BF18: var_98 = 4
  loc_121BF27: var_B8 = CVar(CInt(1)) 'Integer
  loc_121BF2E: LateIdCallSt
  loc_121BF36: var_98 = 4
  loc_121BF3F: var_B8 = &HDAC
  loc_121BF4B: LateIdCallSt
  loc_121BF53: var_98 = 0
  loc_121BF5C: var_B8 = 9
  loc_121BF65: var_D8 = "Amount"
  loc_121BF6E: LateIdCallSt
  loc_121BF76: var_98 = 9
  loc_121BF85: var_B8 = CVar(CInt(7)) 'Integer
  loc_121BF8C: LateIdCallSt
  loc_121BF94: var_98 = 9
  loc_121BFA3: var_B8 = CVar(CInt(7)) 'Integer
  loc_121BFAA: LateIdCallSt
  loc_121BFB2: var_98 = 9
  loc_121BFBB: var_B8 = &H4EC
  loc_121BFC7: LateIdCallSt
  loc_121BFCF: var_98 = 0
  loc_121BFD8: var_B8 = &H12
  loc_121BFE1: var_D8 = "Tip"
  loc_121BFEA: LateIdCallSt
  loc_121BFF2: var_98 = &H12
  loc_121C001: var_B8 = CVar(CInt(7)) 'Integer
  loc_121C008: LateIdCallSt
  loc_121C010: var_98 = &H12
  loc_121C01F: var_B8 = CVar(CInt(7)) 'Integer
  loc_121C026: LateIdCallSt
  loc_121C02E: var_98 = &H12
  loc_121C037: var_B8 = 0
  loc_121C043: LateIdCallSt
  loc_121C04B: var_98 = &H13
  loc_121C054: var_B8 = 0
  loc_121C060: LateIdCallSt
  loc_121C068: var_98 = &H14
  loc_121C071: var_B8 = 0
  loc_121C07D: LateIdCallSt
  loc_121C085: var_98 = &H15
  loc_121C08E: var_B8 = 0
  loc_121C09A: LateIdCallSt
  loc_121C0A2: var_98 = &H16
  loc_121C0AB: var_B8 = 0
  loc_121C0B7: LateIdCallSt
  loc_121C0BF: var_98 = &H18
  loc_121C0C8: var_B8 = 0
  loc_121C0D4: LateIdCallSt
  loc_121C0DC: var_98 = &H19
  loc_121C0E5: var_B8 = 0
  loc_121C0F1: LateIdCallSt
  loc_121C0F9: var_98 = &H1A
  loc_121C102: var_B8 = 0
  loc_121C10E: LateIdCallSt
  loc_121C118: Set var_88 = Nothing 
  loc_121C11C: var_98 = vbNullString
  loc_121C126: Set var_EC = Me.FGrid
  loc_121C14A: Me.FGrid.FixedRows = 1
  loc_121C152: var_98 = 1
  loc_121C15B: var_B8 = 0
  loc_121C168: var_FC = CVar(CStr(1)) 'String
  loc_121C170: Set var_EC = Me.FGrid
  loc_121C176: LateIdCallSt
  loc_121C184: Exit Sub
  loc_121C185: ThisVCallI2
End Sub

Public Sub Proc_167_47_1579F6C
  'Data Table: 533C30
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_E0 As TextBox
  Dim var_F0 As Variant
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_140 As Variant
  Dim var_9C As Fields15
  Dim var_164 As Long
  loc_1578E5E: Set var_8C = Me.Txt
  loc_1578E64: Call 0.Method_Proc_167_47_1579F6C0 (CInt(6), var_90)
  loc_1578E88: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_1578E99:   Set var_8C = Me.Txt
  loc_1578E9F:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(6), var_90)
  loc_1578EA7:   var_90.Text = vbNullString
  loc_1578EB3: End If
  loc_1578EC1: Set var_8C = Me.Txt
  loc_1578EC7: Call 0.Method_Proc_167_47_1579F6C0 (CInt(6), var_90)
  loc_1578EE1: If (var_90.Visible = &HFF) Then
  loc_1578EEF:   Set var_8C = Me.Txt
  loc_1578EF5:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(6))
  loc_1578EFD:   var_94 = "Amount"
  loc_1578F1E:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1578F21:     Exit Sub
  loc_1578F22:   End If
  loc_1578F22: End If
  loc_1578F3F: var_90 = Me.Fields.Item("PayType")
  loc_1578F67: Set var_9C = Me.Txt
  loc_1578F6D: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H17), var_E0, var_94)
  loc_1578F75: (var_90.Value = "Staff") = var_E0.Text
  loc_1578FA1: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_1578FAF:   Set var_8C = Me.Txt
  loc_1578FB5:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H17))
  loc_1578FBD:   var_94 = "Staff Name"
  loc_1578FDE:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1578FE1:     Exit Sub
  loc_1578FE2:   End If
  loc_1578FE2: End If
  loc_1578FFF: var_90 = Me.Fields.Item("PayType")
  loc_1579027: Set var_9C = Me.Txt
  loc_157902D: Call 0.Method_Proc_167_47_1579F6C0 (CInt(0), var_E0, var_94)
  loc_1579035: (var_90.Value = "Room") = var_E0.Text
  loc_1579061: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_157906F:   Set var_8C = Me.Txt
  loc_1579075:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(0))
  loc_157907D:   var_94 = "Room Name"
  loc_157909E:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15790A1:     Exit Sub
  loc_15790A2:   End If
  loc_15790A2: End If
  loc_15790BF: var_90 = Me.Fields.Item("PayType")
  loc_15790E7: Set var_9C = Me.Txt
  loc_15790ED: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H19), var_E0, var_94)
  loc_15790F5: (var_90.Value = "Company") = var_E0.Text
  loc_1579121: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_157912F:   Set var_8C = Me.Txt
  loc_1579135:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H19))
  loc_157913D:   var_94 = "Company Name"
  loc_157915E:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1579161:     Exit Sub
  loc_1579162:   End If
  loc_1579162: End If
  loc_157917F: var_90 = Me.Fields.Item("PayType")
  loc_15791A7: Set var_9C = Me.Txt
  loc_15791AD: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H27), var_E0, var_94)
  loc_15791B5: (var_90.Value = "Member") = var_E0.Text
  loc_15791E1: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_15791EF:   Set var_8C = Me.Txt
  loc_15791F5:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H27))
  loc_15791FD:   var_94 = "Member Name"
  loc_157921E:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1579221:     Exit Sub
  loc_1579222:   End If
  loc_1579222: End If
  loc_157922D: If (global_88 = "Y") Then
  loc_157924D:   var_90 = Me.Fields.Item("PayType")
  loc_1579275:   Set var_9C = Me.Txt
  loc_157927B:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H12), var_E0, var_94)
  loc_1579283:   (var_90.Value = "Credit Card") = var_E0.Text
  loc_15792AF:   If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_15792BD:     Set var_8C = Me.Txt
  loc_15792C3:     Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H12))
  loc_15792CB:     var_94 = "Credit Card No."
  loc_15792EC:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15792EF:       Exit Sub
  loc_15792F0:     End If
  loc_15792F0:   End If
  loc_157930D:   var_90 = Me.Fields.Item("PayType")
  loc_1579335:   Set var_9C = Me.Txt
  loc_157933B:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H13), var_E0, var_94)
  loc_1579343:   (var_90.Value = "Credit Card") = var_E0.Text
  loc_157936F:   If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_157937D:     Set var_8C = Me.Txt
  loc_1579383:     Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H13))
  loc_15793AC:     If (Proc_6_27_EA61EC(var_90, "Holder's Name") = 0) Then
  loc_15793AF:       Exit Sub
  loc_15793B0:     End If
  loc_15793B0:   End If
  loc_15793CD:   var_90 = Me.Fields.Item("PayType")
  loc_15793F2:   Set var_9C = Me.Txt
  loc_15793F8:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H25), var_E0)
  loc_1579431:   If CBool((var_90.Value = "Credit Card") And (Trim(CVar(var_E0)) = vbNullString)) Then
  loc_157943F:     Set var_8C = Me.Txt
  loc_1579445:     Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H25), var_90)
  loc_157944D:     var_94 = "Batch No"
  loc_157946E:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_157947C:       Set var_8C = Me.Txt
  loc_1579482:       Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H25), var_90)
  loc_157948A:       var_90.SetFocus
  loc_1579496:       Exit Sub
  loc_1579497:     End If
  loc_1579497:   End If
  loc_1579497: End If
  loc_15794B4: var_90 = Me.Fields.Item("PayType")
  loc_15794DC: Set var_9C = Me.Txt
  loc_15794E2: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H15), var_E0, var_94)
  loc_15794EA: (var_90.Value = "Cheque") = var_E0.Text
  loc_1579516: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_1579524:   Set var_8C = Me.Txt
  loc_157952A:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H15))
  loc_1579532:   var_94 = "Cheque No."
  loc_1579553:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1579556:     Exit Sub
  loc_1579557:   End If
  loc_1579557: End If
  loc_1579574: var_90 = Me.Fields.Item("PayType")
  loc_157959C: Set var_9C = Me.Txt
  loc_15795A2: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H16), var_E0, var_94)
  loc_15795AA: (var_90.Value = "Cheque") = var_E0.Text
  loc_15795D6: If CBool(var_90 And (var_94 = vbNullString)) Then
  loc_15795E4:   Set var_8C = Me.Txt
  loc_15795EA:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H16))
  loc_1579613:   If (Proc_6_27_EA61EC(var_90, "Cheque Dt.") = 0) Then
  loc_1579616:     Exit Sub
  loc_1579617:   End If
  loc_1579617: End If
  loc_1579620: If (global_128 = 0) Then
  loc_157963C:   var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_157965F:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1579678:   If (var_94 <> vbNullString) Then
  loc_1579697:     var_BC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, 4))) 'String
  loc_157969F:     Set var_90 = Me.FGrid
  loc_15796B9:   End If
  loc_15796D3:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15796DF: Else
  loc_15796F3:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_15796FC: End If
  loc_1579700: Set var_144 = Me.FGrid
  loc_1579723: Set var_8C = Me.Txt
  loc_1579729: Call 0.Method_Proc_167_47_1579F6C0 (CInt(4), var_90, var_94, 1, CVar(CLng(var_86)), var_86)
  loc_1579731: var_86 = var_90.Tag
  loc_1579739: var_BC = CVar(var_94) 'String
  loc_1579740: LateIdCallSt
  loc_1579756: var_AC = CVar(CLng(var_86)) 'Long
  loc_157975B: var_F0 = 3
  loc_1579771: LateIdCallSt
  loc_1579799: Set var_8C = Me.Txt
  loc_157979F: Call 0.Method_Proc_167_47_1579F6C0 (CInt(4), var_90, var_94, 4, CVar(CLng(var_86)), var_144, global_140)
  loc_15797A7: var_F0 = var_90.Text
  loc_15797AF: var_BC = CVar(var_94) 'String
  loc_15797B6: LateIdCallSt
  loc_15797DD: var_AC = "PayType"
  loc_15797F4: var_90 = Me.Fields.Item(var_AC)
  loc_157980C: LateIdCallSt
  loc_157982C: Set var_8C = Me.Txt
  loc_1579832: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H18), var_90, var_94, var_144, CVar(Proc_6_38_E69628(CVar(var_90), 2, CVar(CLng(var_86)), var_144, CVar(var_90), var_AC)))
  loc_157983A: var_144 = var_90.Tag
  loc_1579862: var_140 = CVar(CLng(var_86)) 'Long
  loc_1579867: var_164 = &H17
  loc_157989B: LateIdCallSt
  loc_15798DC: Set var_8C = Me.Txt
  loc_15798E2: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H18), var_90, var_94, &H19, CVar(CLng(var_86)), var_144, CVar(CStr(IIf((var_94 <> vbNullString), CVar(Me.Fields.Item("FolioNo")), 0))))
  loc_15798EA: var_164 = var_90.Tag
  loc_15798F2: var_BC = CVar(var_94) 'String
  loc_15798F9: LateIdCallSt
  loc_157992A: Set var_8C = Me.Txt
  loc_1579930: Call 0.Method_Proc_167_47_1579F6C0 (CInt(5), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_144)
  loc_1579938: var_BC = var_90.Text
  loc_1579940: var_BC = CVar(var_94) 'String
  loc_1579947: LateIdCallSt
  loc_157995D: var_AC = CVar(CLng(var_86)) 'Long
  loc_1579962: var_F0 = 5
  loc_1579978: LateIdCallSt
  loc_1579984: var_AC = CVar(CLng(var_86)) 'Long
  loc_1579989: var_F0 = 6
  loc_157999F: LateIdCallSt
  loc_15799C6: Set var_8C = Me.Txt
  loc_15799CC: Call 0.Method_Proc_167_47_1579F6C0 (CInt(0), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_144, global_136)
  loc_15799D4: var_F0 = var_90.Text
  loc_15799E3: LateIdCallSt
  loc_1579A15: Set var_8C = Me.Txt
  loc_1579A1B: Call 0.Method_Proc_167_47_1579F6C0 (CInt(6), var_90, var_94, 9, CVar(CLng(var_86)), var_144, CVar(var_94))
  loc_1579A23: var_AC = var_90.Text
  loc_1579A2B: var_BC = CVar(var_94) 'String
  loc_1579A32: LateIdCallSt
  loc_1579A64: Set var_8C = Me.Txt
  loc_1579A6A: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H23), var_90, var_94, &H12, CVar(CLng(var_86)), var_144)
  loc_1579A72: var_BC = var_90.Text
  loc_1579A7A: var_BC = CVar(var_94) 'String
  loc_1579A81: LateIdCallSt
  loc_1579AB2: Set var_8C = Me.Txt
  loc_1579AB8: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H12), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_144)
  loc_1579AC0: var_BC = var_90.Text
  loc_1579AC8: var_BC = CVar(var_94) 'String
  loc_1579ACF: LateIdCallSt
  loc_1579B00: Set var_8C = Me.Txt
  loc_1579B06: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H13), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_144)
  loc_1579B0E: var_BC = var_90.Text
  loc_1579B16: var_BC = CVar(var_94) 'String
  loc_1579B1D: LateIdCallSt
  loc_1579B4E: Set var_8C = Me.Txt
  loc_1579B54: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H14), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_144)
  loc_1579B5C: var_BC = var_90.Text
  loc_1579B64: var_BC = CVar(var_94) 'String
  loc_1579B6B: LateIdCallSt
  loc_1579B9D: Set var_8C = Me.Txt
  loc_1579BA3: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H25), var_90, var_94, &H18, CVar(CLng(var_86)), var_144)
  loc_1579BAB: var_BC = var_90.Text
  loc_1579BB3: var_BC = CVar(var_94) 'String
  loc_1579BBA: LateIdCallSt
  loc_1579BEB: Set var_8C = Me.Txt
  loc_1579BF1: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H15), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_144)
  loc_1579BF9: var_BC = var_90.Text
  loc_1579C01: var_BC = CVar(var_94) 'String
  loc_1579C08: LateIdCallSt
  loc_1579C39: Set var_8C = Me.Txt
  loc_1579C3F: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H16), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_144)
  loc_1579C47: var_BC = var_90.Text
  loc_1579C4F: var_BC = CVar(var_94) 'String
  loc_1579C56: LateIdCallSt
  loc_1579C87: Set var_8C = Me.Txt
  loc_1579C8D: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H17), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_144)
  loc_1579C95: var_BC = var_90.Text
  loc_1579C9D: var_BC = CVar(var_94) 'String
  loc_1579CA4: LateIdCallSt
  loc_1579CD5: Set var_8C = Me.Txt
  loc_1579CDB: Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H17), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_144)
  loc_1579CE3: var_BC = var_90.Tag
  loc_1579CEB: var_BC = CVar(var_94) 'String
  loc_1579CF2: LateIdCallSt
  loc_1579D24: Set var_8C = Me.Txt
  loc_1579D2A: Call 0.Method_Proc_167_47_1579F6C0 (CInt(0), var_90, var_94, &H13, CVar(CLng(var_86)), var_144)
  loc_1579D32: var_BC = var_90.Tag
  loc_1579D3A: var_BC = CVar(var_94) 'String
  loc_1579D41: LateIdCallSt
  loc_1579D73: Set var_8C = Me.Txt
  loc_1579D79: Call 0.Method_Proc_167_47_1579F6C0 (CInt(0), var_90, var_94, &H14, CVar(CLng(var_86)), var_144)
  loc_1579D81: var_BC = var_90.Text
  loc_1579D89: var_BC = CVar(var_94) 'String
  loc_1579D90: LateIdCallSt
  loc_1579DA6: var_AC = CVar(CLng(var_86)) 'Long
  loc_1579DAB: var_F0 = 2
  loc_1579DC2: var_94 = CStr(Txt.DispID_41)
  loc_1579DD0: If (var_94 = "Member") Then
  loc_1579DF3:   Set var_8C = Me.Txt
  loc_1579DF9:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H27), var_90, var_94, &H15, CVar(CLng(var_86)), &H15, CVar(CLng(var_86)))
  loc_1579E01:   var_144 = var_90.Tag
  loc_1579E10:   LateIdCallSt
  loc_1579E42:   Set var_8C = Me.Txt
  loc_1579E48:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H27), var_90, var_94, &H16, CVar(CLng(var_86)), var_144, CVar(var_94))
  loc_1579E50:   var_BC = var_90.Text
  loc_1579E58:   var_BC = CVar(var_94) 'String
  loc_1579E5F:   LateIdCallSt
  loc_1579E74: Else
  loc_1579E94:   Set var_8C = Me.Txt
  loc_1579E9A:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H19), var_90, var_94, &H15, CVar(CLng(var_86)), var_144)
  loc_1579EA2:   var_BC = var_90.Tag
  loc_1579EAA:   var_BC = CVar(var_94) 'String
  loc_1579EB1:   LateIdCallSt
  loc_1579EC7:   var_AC = CVar(CLng(var_86)) 'Long
  loc_1579EE3:   Set var_8C = Me.Txt
  loc_1579EE9:   Call 0.Method_Proc_167_47_1579F6C0 (CInt(&H19), var_90, var_94, &H16, var_AC, var_144)
  loc_1579EF1:   var_BC = var_90.Text
  loc_1579EF9:   var_BC = CVar(var_94) 'String
  loc_1579F00:   LateIdCallSt
  loc_1579F12: End If
  loc_1579F18: Call Proc_167_49_114F9D4(Nothing, var_BC, Nothing, global_132)
  loc_1579F2B: Set var_8C = Me.LTxt
  loc_1579F31: Call 0.Method_Proc_167_47_1579F6C0 (CInt(2), var_90, var_94)
  loc_1579F39: var_F0 = var_90.Caption
  loc_1579F55: If (CDbl(Val(var_94)) = CDbl(0)) Then
  loc_1579F58:   Call TopCtrl1_UnknownEvent_16()
  loc_1579F5D:   Exit Sub
  loc_1579F5E: End If
  loc_1579F5E: Call Proc_167_50_1029EC4(var_AC)
  loc_1579F68: global_128 = 0
  loc_1579F6B: Exit Sub
End Sub

Public Sub Proc_167_48_1424F0C
  'Data Table: 533C30
  Dim var_90 As String
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim var_B8 As TextBox
  Dim var_C4 As String
  Dim unk_533C5B As Connection15
  Dim var_B4 As Variant
  Dim var_8C As Recordset15
  Dim var_86 As Integer
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_14244AC: var_90 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName, P.Type,"
  loc_14244BA: var_98 = var_90 & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.FolioNoDocId, ST.CardNo, ST.CardHolder, ST.ChqNo,ST.BatchNo, "
  loc_14244C1: var_9C = var_98 & "ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode,CC.Name as MemName,CompCode as MemCode FROM ((((PayCharge AS ST left JOIN "
  loc_14244CF: var_A4 = var_9C & "GuestProf AS GP ON ST.GuestProf = GP.Code) left JOIN Employee AS E " & "ON ST.EmpCode = E.Code) left JOIN RevMast AS P ON ST.PayCode = P.Code) "
  loc_14244DD: var_AC = var_A4 & "left JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))left join SubGroup CC on CC.SubCode=ST.CompCode where ST.PayCode<>'"
  loc_14244FC: Set var_B4 = Me.Txt
  loc_1424502: Call 0.Method_Proc_167_48_1424F0C0 (CInt(&H24), var_B8, var_BC, var_AC & MemVar_1F95078 & "ROFF' And ST.ModeSet='S' and ST.FolioNoDocid='")
  loc_142450A: var_E8 = var_B8.Tag
  loc_1424513: var_C4 = -1 & var_BC
  loc_1424523: unk_533C5B.Execute var_C4 & "' And ST.SettleDate Is Not Null Order By ST.VNo", var_EC, 
  loc_142452E: Set var_8C = var_EC
  loc_142456D: Me.FGrid.Rows = 1
  loc_1424589: If (var_8C.RecordCount > 0) Then
  loc_142458C:   ' Referenced from: 1424E5E
  loc_142459B:   If Not(var_8C.EOF) Then
  loc_14245A4:     var_86 = (var_86 + 1)
  loc_14245AB:     Set var_108 = Me.FGrid
  loc_14245CA:     var_E8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_142461D:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")), &H1A, CVar(CLng(var_86)))) 'String
  loc_1424624:     LateIdCallSt
  loc_1424670:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("PayCode")), 1, CVar(CLng(var_86)), var_108)) 'String
  loc_1424677:     LateIdCallSt
  loc_14246C3:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Type")), 3, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_14246CA:     LateIdCallSt
  loc_1424716:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("PayName")), 4, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_142471D:     LateIdCallSt
  loc_1424769:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("PayType")), 2, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424770:     LateIdCallSt
  loc_14247BA:     Proc_6_39_E7D3A0(var_148, CVar(var_8C.Fields.Item("FolioNo")), &H17, CVar(CLng(var_86)), var_108)
  loc_14247CA:     LateIdCallSt
  loc_1424818:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("FolioNoDocid")), &H19, CVar(CLng(var_86)), var_108, CVar(CStr(var_148)))) 'String
  loc_142481F:     LateIdCallSt
  loc_142486A:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Comments")), CVar(CLng(&HF)), CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424871:     LateIdCallSt
  loc_14248BD:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RoomCat")), 5, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_14248C4:     LateIdCallSt
  loc_1424910:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Roomtype")), 6, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424917:     LateIdCallSt
  loc_1424962:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RoomNo")), CVar(CLng(7)), CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424969:     LateIdCallSt
  loc_14249B3:     Proc_6_47_EF6560(var_148, CVar(var_8C.Fields.Item("AmtCr")), 9, CVar(CLng(var_86)), var_108, var_148)
  loc_14249C3:     LateIdCallSt
  loc_1424A0F:     Proc_6_47_EF6560(var_148, CVar(var_8C.Fields.Item("TipAmt")), &H12, CVar(CLng(var_86)), var_108, CVar(CStr(var_148)))
  loc_1424A1F:     LateIdCallSt
  loc_1424A6C:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo")), CVar(CLng(&HA)), CVar(CLng(var_86)), var_108, CVar(CStr(var_148)))) 'String
  loc_1424A73:     LateIdCallSt
  loc_1424ABE:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardHolder")), CVar(CLng(&HB)), CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424AC5:     LateIdCallSt
  loc_1424AF7:     var_118 = CVar(CLng(var_86)) 'Long
  loc_1424B33:     LateIdCallSt
  loc_1424B83:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("BatchNo")), &H18, CVar(CLng(var_86)), var_108, CVar(CStr(Format(CVar(var_8C.Fields.Item("ExpDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1424B8A:     LateIdCallSt
  loc_1424BD5:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ChqNo")), CVar(CLng(&HD)), CVar(CLng(var_86)), var_108, var_148, CVar(CLng(&HC)))) 'String
  loc_1424BDC:     LateIdCallSt
  loc_1424C0E:     var_118 = CVar(CLng(var_86)) 'Long
  loc_1424C4A:     LateIdCallSt
  loc_1424C99:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("EmpName")), CVar(CLng(&H10)), CVar(CLng(var_86)), var_108, CVar(CStr(Format(CVar(var_8C.Fields.Item("ChqDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1424CA0:     LateIdCallSt
  loc_1424CEB:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("EmpCode")), CVar(CLng(&H11)), CVar(CLng(var_86)), var_108, var_148, CVar(CLng(&HE)))) 'String
  loc_1424CF2:     LateIdCallSt
  loc_1424D3E:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RoomNo")), &H13, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424D45:     LateIdCallSt
  loc_1424D91:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RoomNo")), &H14, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424D98:     LateIdCallSt
  loc_1424DE4:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CompCode")), &H15, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424DEB:     LateIdCallSt
  loc_1424E37:     var_148 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CompName")), &H16, CVar(CLng(var_86)), var_108, var_148)) 'String
  loc_1424E3E:     LateIdCallSt
  loc_1424E52:     Set var_108 = Nothing 
  loc_1424E59:     var_8C.MoveNext
  loc_1424E5E:     GoTo loc_142458C
  loc_1424E61:   End If
  loc_1424E64: Else
  loc_1424E64:   Call Proc_167_50_1029EC4(var_108, var_148, var_118, var_108)
  loc_1424E69: End If
  loc_1424E88: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1424EA7:   var_E8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, var_148))) 'String
  loc_1424EAF:   Set var_B8 = Me.FGrid
  loc_1424EC9: End If
  loc_1424EDC: Me.FGrid.FixedRows = 1
  loc_1424EF7: Me.FGrid.Row = 1
  loc_1424EFF: Call Proc_167_49_114F9D4(FGrid.DispID_10000, var_E8)
  loc_1424F04: Call FGrid_UnknownEvent_9()
  loc_1424F09: Exit Sub
End Sub

Public Sub Proc_167_49_114F9D4
  'Data Table: 533C30
  Dim var_98 As Variant
  Dim var_D4 As String
  Dim var_D0 As Label
  Dim var_CC As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_154 As Double
  Dim var_FC As MSHFlexGrid
  Dim var_15C As Double
  Dim var_C8 As Variant
  Dim var_148 As Label
  Dim var_144 As Label
  Dim var_160 As Label
  loc_114F682: Set var_CC = Me.LTxt
  loc_114F688: Call 0.Method_Proc_167_49_114F9D40 (CInt(1), var_D0, CStr(Format(global_172, "0.00")))
  loc_114F690: var_D0.Caption = 1
  loc_114F6E0: Set var_CC = Me.LTxt
  loc_114F6E6: Call 0.Method_Proc_167_49_114F9D40 (CInt(0), var_D0, CStr(Format(global_164, "0.00")))
  loc_114F6EE: var_D0.Caption = 1
  loc_114F729: For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D8 'Integer
  loc_114F733:   var_98 = CVar(CLng(var_86)) 'Long
  loc_114F756:   var_D4 = CStr(Me.FGrid.TextMatrix))
  loc_114F767:   If (var_D4 = "Dr") Then
  loc_114F778:     Set var_CC = Me.LTxt
  loc_114F77E:     Call 0.Method_Proc_167_49_114F9D40 (CInt(1), var_D0, var_D4, 3)
  loc_114F786:     var_98 = var_D0.Caption
  loc_114F79A:     var_98 = CVar(CLng(var_86)) 'Long
  loc_114F7C5:     var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_114F7E4:     var_C8 = CVar((Val(var_D4) + var_15C)) 'Double
  loc_114F802:     Set var_144 = Me.LTxt
  loc_114F808:     Call 0.Method_Proc_167_49_114F9D40 (CInt(1), var_148, CStr(Format(Format(global_164, "0.00"), "0.00")), 1, 1, var_15C)
  loc_114F810:     var_148.Caption = 9
  loc_114F839:   Else
  loc_114F847:     Set var_CC = Me.LTxt
  loc_114F84D:     Call 0.Method_Proc_167_49_114F9D40 (CInt(0), var_D0, var_D4, var_98)
  loc_114F855:     var_154 = var_D0.Caption
  loc_114F869:     var_98 = CVar(CLng(var_86)) 'Long
  loc_114F894:     var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_114F8B3:     var_C8 = CVar((Val(var_D4) + var_15C)) 'Double
  loc_114F8D1:     Set var_144 = Me.LTxt
  loc_114F8D7:     Call 0.Method_Proc_167_49_114F9D40 (CInt(0), var_148, CStr(Format(Format(global_164, "0.00"), "0.00")), 1, 1, var_15C)
  loc_114F8DF:     var_148.Caption = 9
  loc_114F905:   End If
  loc_114F908: Next var_D8 'Integer
  loc_114F91B: Set var_CC = Me.LTxt
  loc_114F921: Call 0.Method_Proc_167_49_114F9D40 (CInt(0), var_D0)
  loc_114F947: Set var_FC = Me.LTxt
  loc_114F94D: Call 0.Method_Proc_167_49_114F9D40 (CInt(1), var_144)
  loc_114F981: var_B8 = CVar((Val(var_D0.Caption) - Val(var_144.Caption))) 'Double
  loc_114F99F: Set var_148 = Me.LTxt
  loc_114F9A5: Call 0.Method_Proc_167_49_114F9D40 (CInt(2), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_114F9AD: var_160.Caption = 1
  loc_114F9D3: Exit Sub
End Sub

Public Sub Proc_167_50_1029EC4
  'Data Table: 533C30
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_1029C8A: Set var_88 = Me.Txt
  loc_1029C90: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H17), var_8C)
  loc_1029C98: var_8C.Text = vbNullString
  loc_1029CB2: Set var_88 = Me.Txt
  loc_1029CB8: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H17), var_8C)
  loc_1029CC0: var_8C.Tag = vbNullString
  loc_1029CDA: Set var_88 = Me.Txt
  loc_1029CE0: Call 0.Method_Proc_167_50_1029EC40 (CInt(5), var_8C)
  loc_1029CE8: var_8C.Text = vbNullString
  loc_1029D02: Set var_88 = Me.Txt
  loc_1029D08: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H12), var_8C)
  loc_1029D10: var_8C.Text = vbNullString
  loc_1029D2A: Set var_88 = Me.Txt
  loc_1029D30: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H13), var_8C)
  loc_1029D38: var_8C.Text = vbNullString
  loc_1029D52: Set var_88 = Me.Txt
  loc_1029D58: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H14), var_8C)
  loc_1029D60: var_8C.Text = vbNullString
  loc_1029D7A: Set var_88 = Me.Txt
  loc_1029D80: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H25), var_8C)
  loc_1029D88: var_8C.Text = vbNullString
  loc_1029DA2: Set var_88 = Me.Txt
  loc_1029DA8: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H15), var_8C)
  loc_1029DB0: var_8C.Text = vbNullString
  loc_1029DCA: Set var_88 = Me.Txt
  loc_1029DD0: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H19), var_8C)
  loc_1029DD8: var_8C.Text = vbNullString
  loc_1029DF2: Set var_88 = Me.Txt
  loc_1029DF8: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H19), var_8C)
  loc_1029E00: var_8C.Tag = vbNullString
  loc_1029E1A: Set var_88 = Me.Txt
  loc_1029E20: Call 0.Method_Proc_167_50_1029EC40 (CInt(&H16), var_8C)
  loc_1029E28: var_8C.Text = vbNullString
  loc_1029E42: Set var_88 = Me.Txt
  loc_1029E48: Call 0.Method_Proc_167_50_1029EC40 (CInt(4), var_8C)
  loc_1029E50: var_8C.Tag = vbNullString
  loc_1029E6A: Set var_88 = Me.Txt
  loc_1029E70: Call 0.Method_Proc_167_50_1029EC40 (CInt(4), var_8C)
  loc_1029E78: var_8C.Text = vbNullString
  loc_1029E91: Me.LblNature.Caption = vbNullString
  loc_1029EA7: Set var_88 = Me.Txt
  loc_1029EAD: Call 0.Method_Proc_167_50_1029EC40 (CInt(6), var_8C)
  loc_1029EB5: var_8C.Text = vbNullString
  loc_1029EC1: Exit Sub
End Sub

Public Sub Proc_167_51_EE3248
  'Data Table: 533C30
  loc_EE3196: On Error Goto loc_EE31DC
  loc_EE31AE: Call 0.Method_arg_18C (var_8C)
  loc_EE31B6: Call var_8C.Show
  loc_EE31CB: Call 0.Method_arg_188 (var_B0)
  loc_EE31D3: var_88 = var_B0
  loc_EE31D6: Proc_167_51_EE3248 = 1
  loc_EE31DC: ' Referenced from: EE3196
  loc_EE31E4: Set var_8C = Err()
  loc_EE31EA: Call 0.Method_arg_1C (var_B4)
  loc_EE31FB: If (var_B4 <> 0) Then
  loc_EE3206:   Set var_8C = Err()
  loc_EE320C:   Call 0.Method_arg_2C (var_B0)
  loc_EE322D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE3240: End If
  loc_EE3240: Proc_167_51_EE3248 = 
End Sub
