VERSION 5.00
Begin VB.Form FdCheckOut
  Caption = "Room Check Out"
  BackColor = &HC0C0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FdCheckOut.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 210
  ClientTop = 1335
  ClientWidth = 14625
  ClientHeight = 8310
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFFC0C0&
    Left = -15
    Top = -30
    Width = 16800
    Height = 9375
    TabIndex = 2
    BorderStyle = 0 'None
    Begin DataGrid DGRoomType
      Left = 11760
      Top = 5760
      Width = 5025
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 18
    End
    Begin DataGrid DGRoomNo
      Left = 13950
      Top = 5220
      Width = 3840
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 17
    End
    Begin Frame FrmAdjust
      Left = 7485
      Top = 5595
      Width = 4050
      Height = 1560
      Visible = 0   'False
      TabIndex = 52
      Begin CommandButton Command3
        Caption = "Cancel"
        Left = 2805
        Top = 720
        Width = 795
        Height = 315
        Enabled = 0   'False
        TabIndex = 59
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox Txt
        Index = 24
        BackColor = &HFFFFFF&
        Left = 1500
        Top = 735
        Width = 1260
        Height = 315
        Enabled = 0   'False
        TabIndex = 57
        Alignment = 1 'Right Justify
        MaxLength = 8
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
      Begin TextBox Txt
        Index = 23
        BackColor = &HFFFFFF&
        Left = 1005
        Top = 225
        Width = 2115
        Height = 315
        TabIndex = 55
        PasswordChar = "#"
        MaxLength = 50
      End
      Begin CommandButton CMDSET
        Caption = "Set"
        Left = 1710
        Top = 1110
        Width = 795
        Height = 315
        Enabled = 0   'False
        TabIndex = 58
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CommandButton CmdPass
        Caption = "GO"
        Left = 3135
        Top = 225
        Width = 495
        Height = 315
        TabIndex = 56
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
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
        ForeColor = &H0&
        Left = 420
        Top = 750
        Width = 945
        Height = 240
        TabIndex = 54
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
      Begin Label Lbl
        Caption = "Password"
        Index = 0
        ForeColor = &H0&
        Left = 120
        Top = 270
        Width = 825
        Height = 240
        TabIndex = 53
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
    End
    Begin TextBox Txt
      Index = 22
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3180
      Top = 1005
      Width = 870
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 51
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
    End
    Begin Timer Timer1
      Interval = 1000
      Left = 0
      Top = 0
    End
    Begin CommandButton Command1
      Caption = "Command1"
      Left = 120
      Top = 75
      Width = 1050
      Height = 195
      Visible = 0   'False
      TabIndex = 50
    End
    Begin PictureBox Picture2
      Picture = "FdCheckOut.frx":442
      Left = 14655
      Top = 2295
      Width = 300
      Height = 285
      Visible = 0   'False
      TabIndex = 49
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 5685
      Top = 1305
      Width = 345
      Height = 240
      Visible = 0   'False
      TabIndex = 48
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
    Begin CommandButton Command2
      Caption = "Bill Settle"
      Left = 15225
      Top = 3045
      Width = 1320
      Height = 690
      Visible = 0   'False
      TabIndex = 47
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3180
      Top = 1635
      Width = 420
      Height = 285
      Enabled = 0   'False
      TabIndex = 38
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
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3630
      Top = 1635
      Width = 420
      Height = 285
      Enabled = 0   'False
      TabIndex = 37
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
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 1635
      Width = 1545
      Height = 285
      Enabled = 0   'False
      TabIndex = 36
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
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 5805
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 35
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
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 5490
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 34
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
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 5175
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 33
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
      Index = 21
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 4545
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 31
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
      Index = 20
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 4230
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 30
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
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 3915
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 29
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
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 1950
      Width = 2460
      Height = 285
      Enabled = 0   'False
      TabIndex = 23
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
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2115
      Top = 2265
      Width = 480
      Height = 285
      Enabled = 0   'False
      TabIndex = 22
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
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 2265
      Width = 480
      Height = 285
      Enabled = 0   'False
      TabIndex = 21
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
      Index = 7
      BackColor = &HFFFFFF&
      Left = 14070
      Top = 1890
      Width = 990
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 20
      BorderStyle = 0 'None
      MaxLength = 1
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
    Begin TextBox Txt
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 2580
      Width = 990
      Height = 285
      Enabled = 0   'False
      TabIndex = 19
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
    End
    Begin TextBox Txt
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3945
      Top = 615
      Width = 690
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
      Left = 1605
      Top = 1320
      Width = 1545
      Height = 285
      Enabled = 0   'False
      TabIndex = 9
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 3600
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 8
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
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 4860
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 7
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
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 6120
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 6
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
      Left = 3630
      Top = 1320
      Width = 420
      Height = 285
      Enabled = 0   'False
      TabIndex = 5
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
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3180
      Top = 1320
      Width = 420
      Height = 285
      Enabled = 0   'False
      TabIndex = 4
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
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 1005
      Width = 1545
      Height = 285
      Enabled = 0   'False
      TabIndex = 3
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
    Begin MSHFlexGrid FGrid
      Left = 5385
      Top = 990
      Width = 8610
      Height = 6645
      TabIndex = 44
    End
    Begin MSHFlexGrid Fgrid1
      Left = 5385
      Top = 7635
      Width = 8610
      Height = 285
      TabIndex = 45
    End
    Begin MSFlexGrid FGPoint
      Left = 14655
      Top = 30
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 46
    End
    Begin BtnEnh BtnExit
      Left = 2400
      Top = 7335
      Width = 1650
      Height = 750
      TabIndex = 61
    End
    Begin BtnEnh CmdPostChrg
      Left = 1545
      Top = 6600
      Width = 1575
      Height = 780
      TabIndex = 62
    End
    Begin BtnEnh CmdPlanBill
      Left = 3135
      Top = 6615
      Width = 1635
      Height = 720
      TabIndex = 63
    End
    Begin BtnEnh cmdProvisional
      Left = 975
      Top = 8115
      Width = 1560
      Height = 735
      Visible = 0   'False
      TabIndex = 64
    End
    Begin Label LblFormCaption
      BackColor = &HC0FFFF&
      Left = 0
      Top = 0
      Width = 180
      Height = 540
      TabIndex = 60
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
    Begin Image GuestImage
      Left = 15570
      Top = 6825
      Width = 1035
      Height = 525
      Visible = 0   'False
      Stretch = -1  'True
    End
    Begin Label Label1
      Caption = "Guest Folio Details"
      Index = 0
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = 5385
      Top = 585
      Width = 8535
      Height = 375
      TabIndex = 43
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
      Caption = "Depature Date"
      Index = 4
      ForeColor = &H800000&
      Left = 120
      Top = 1650
      Width = 1365
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
      Caption = "Comment1"
      Index = 7
      ForeColor = &H800000&
      Left = 150
      Top = 5175
      Width = 1020
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
      Caption = "Comment2"
      Index = 8
      ForeColor = &H800000&
      Left = 150
      Top = 5475
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
      Caption = "Comment3"
      Index = 13
      ForeColor = &H800000&
      Left = 150
      Top = 5790
      Width = 1020
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
      Caption = "Address"
      Index = 2
      ForeColor = &H800000&
      Left = 120
      Top = 3930
      Width = 750
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
      Caption = "Guest Detail"
      Index = 2
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = 90
      Top = 3180
      Width = 5100
      Height = 375
      TabIndex = 28
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
      Left = 75
      Top = 585
      Width = 5100
      Height = 375
      TabIndex = 27
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
      Index = 11
      ForeColor = &H800000&
      Left = 120
      Top = 2280
      Width = 1050
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
    Begin Label Lbl
      Caption = "Rate Code"
      Index = 10
      ForeColor = &H0&
      Left = 12870
      Top = 1905
      Width = 885
      Height = 240
      TabIndex = 25
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
    Begin Label Lbl
      Caption = "Room Rate"
      Index = 9
      ForeColor = &H800000&
      Left = 120
      Top = 2595
      Width = 1050
      Height = 240
      TabIndex = 24
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
      Caption = "Room Type"
      Index = 34
      ForeColor = &H800000&
      Left = 120
      Top = 1950
      Width = 1080
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
    Begin Label Lbl
      Caption = "Check In Date"
      Index = 26
      ForeColor = &H800000&
      Left = 120
      Top = 1335
      Width = 1320
      Height = 240
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
    Begin Label LblCheckInDay
      Caption = "."
      BackColor = &HFFC0C0&
      ForeColor = &HC0&
      Left = 4095
      Top = 1335
      Width = 60
      Height = 285
      TabIndex = 14
      AutoSize = -1  'True
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
    Begin Label Lbl
      Caption = "Guest Name"
      Index = 5
      ForeColor = &H800000&
      Left = 120
      Top = 3615
      Width = 1155
      Height = 240
      TabIndex = 13
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
      Caption = "Company"
      Index = 3
      ForeColor = &H800000&
      Left = 120
      Top = 4875
      Width = 900
      Height = 240
      TabIndex = 12
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
      Index = 1
      ForeColor = &H800000&
      Left = 150
      Top = 6135
      Width = 585
      Height = 240
      TabIndex = 11
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
      Caption = "Guest Folio No."
      Index = 6
      ForeColor = &H800000&
      Left = 120
      Top = 1005
      Width = 1455
      Height = 240
      TabIndex = 10
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
  Begin TopCtrl TopCtrl1
    Left = 45
    Top = 7455
    Width = 7380
    Height = 375
    TabIndex = 1
  End
End

Attribute VB_Name = "FdCheckOut"

Private global_128 As Integer
Private global_72 As Integer
Private global_124 As Integer
Private MasterFormExit As Integer
Private global_126 As Integer
Private global_68 As Long
Private global_130 As Integer

Private Sub Command3_Click() 'E1B958
  'Data Table: 529B40
  loc_E1B94C: Me.FrmAdjust.Visible = False
  loc_E1B954: Exit Sub
End Sub

Private Sub CmdPass_Click() 'E99054
  'Data Table: 529B40
  Dim var_8C As TextBox
  Dim var_88 As CommandButton
  loc_E98FE5: Set var_88 = Me.Txt
  loc_E98FEB: Call 0.Method_CmdPass_Click0 (&H17)
  loc_E99014: If (Ucase(CVar(var_8C)) = "India12") Then
  loc_E99022:   Set var_88 = Me.Txt
  loc_E99028:   Call 0.Method_CmdPass_Click0 (&H18, var_8C)
  loc_E99030:   var_8C.Enabled = True
  loc_E99048:   Me.CMDSET.Enabled = True
  loc_E99050: End If
  loc_E99050: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F69014
  'Data Table: 529B40
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F68EF0: Call Proc_64_54_EBC804()
  loc_F68F08: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F68F23: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F68F2C: Set var_BC = Me.FGrid
  loc_F68F62: Set var_104 = Me.TxtGrid
  loc_F68F68: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F68F70: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F68FA1: var_110 = CLng(Me.FGrid.Col)
  loc_F68FB1: If (var_110 = CLng(&HA)) Then
  loc_F68FC3:   Set var_A8 = Me.TxtGrid
  loc_F68FC9:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5)
  loc_F68FD1:   var_BC.MaxLength = var_110
  loc_F68FE0: Else
  loc_F68FE7:   If (var_110 = CLng(3)) Then
  loc_F68FF9:     Set var_A8 = Me.TxtGrid
  loc_F68FFF:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_F69007:     var_BC.MaxLength = 8
  loc_F69013:   End If
  loc_F69013: End If
  loc_F69013: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1038828
  'Data Table: 529B40
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_10385DC: On Error Goto loc_1038822
  loc_10385E9: If (CLng(Shift) = &H1B) Then
  loc_10385F9:   Set var_88 = Me.TxtGrid
  loc_10385FF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1038619:   Set var_94 = Me.TxtGrid
  loc_103861F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1038627:   var_98.Text = var_8C.Tag
  loc_1038643:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1038648:   Call Proc_64_54_EBC804(arg_14)
  loc_1038651:   Set var_88 = Me.FGrid
  loc_103866E:   Set var_88 = Me.TxtGrid
  loc_1038674:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_103867C:   var_8C.Visible = False
  loc_1038688:   Exit Sub
  loc_1038689: End If
  loc_103869C: var_AC = CLng(Me.FGrid.Col)
  loc_10386AC: If (var_AC = CLng(&HA)) Then
  loc_10386BE:   Set var_88 = Me.TxtGrid
  loc_10386C4:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5)
  loc_10386CC:   var_8C.MaxLength = var_AC
  loc_10386F8:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_1038701:     Call Proc_64_60_EF479C(KeyCode, var_AE)
  loc_103870C:     If (var_AE = &HFF) Then
  loc_1038743:       Set var_8C = Me.TxtGrid
  loc_1038752:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_72)
  loc_1038762:     End If
  loc_1038762:   End If
  loc_1038765: Else
  loc_103876C:   If (var_AC = CLng(3)) Then
  loc_103877E:     Set var_88 = Me.TxtGrid
  loc_1038784:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 8, &HA)
  loc_103878C:     var_8C.MaxLength = 0
  loc_10387B8:     If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_10387C1:       Call Proc_64_60_EF479C(KeyCode, var_AE, &HA)
  loc_10387CC:       If (var_AE = &HFF) Then
  loc_1038812:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, &HA)
  loc_1038822:       End If
  loc_1038822:       ' Referenced from: 10385DC
  loc_1038822:     End If
  loc_1038822:   End If
  loc_1038822: End If
  loc_1038822: Proc_6_60_E63754(0, &HA, 0)
  loc_1038827: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E20E78
  'Data Table: 529B40
  Dim arg_10 As Integer
  loc_E20E5B: Proc_6_58_E06050(arg_10)
  loc_E20E66: Proc_6_133_E7FB08(var_94)
  loc_E20E6F: arg_10 = CInt(var_94)
  loc_E20E75: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '12EA4A0
  'Data Table: 529B40
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_BC As Long
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_D0 As Variant
  Dim var_124 As Variant
  Dim var_188 As String
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_144 As Variant
  Dim var_F0 As Variant
  Dim var_164 As Long
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_168 As MSHFlexGrid
  loc_12E9DF0: On Error Goto loc_12EA49A
  loc_12E9E06: var_BC = CLng(Me.FGrid.Col)
  loc_12E9E16: If (var_BC = CLng(3)) Then
  loc_12E9E23:   Set var_A8 = Me.TxtGrid
  loc_12E9E29:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C0)
  loc_12E9E41:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E9E49:   var_134 = CVar(CLng(3)) 'Long
  loc_12E9E84:   LateIdCallSt
  loc_12E9EB4:   Set var_A8 = Me.TxtGrid
  loc_12E9EBA:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C0, &HFF, Me.FGrid, CVar(CStr(Format(CVar(var_C0), "0.00"))))
  loc_12E9ED2:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E9F15:   LateIdCallSt
  loc_12E9F4C:   Set var_A8 = Me.Txt
  loc_12E9F52:   Call 0.Method_TxtGrid_KeyUp0 (CInt(8), var_C0, Me.FGrid, CVar(CStr(Format(CVar(var_C0), "0.00"))), 1, 1, CVar(CLng(3)))
  loc_12E9F91:   Proc_96_86_1AEE150(Me.FGrid, Me.TxtGrid, KeyCode, CInt(&HB), CInt(3), CInt(7), var_C0)
  loc_12E9FAA:   global_128 = &HFF
  loc_12E9FD2:   For var_184 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_184 'Integer
  loc_12E9FDC:     var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12E9FE4:     var_124 = CVar(CLng(7)) 'Long
  loc_12EA00F:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12EA016:       var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12EA01E:       var_124 = CVar(CLng(3)) 'Long
  loc_12EA04A:       var_8C = (var_8C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12EA05A:       var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12EA062:       var_124 = CVar(CLng(4)) 'Long
  loc_12EA07C:       var_188 = CStr(Me.FGrid.TextMatrix))
  loc_12EA08E:       var_94 = (var_94 + Val(var_188))
  loc_12EA09E:       var_124 = CVar(CLng(var_9E)) 'Long
  loc_12EA0A6:       var_144 = CVar(CLng(5)) 'Long
  loc_12EA0C8:       var_B8 = CVar(Abs((var_8C - var_94))) 'Double
  loc_12EA0D8:       var_104 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_12EA0E0:       Set var_A8 = Me.FGrid
  loc_12EA0E6:       LateIdCallSt
  loc_12EA108:       If (CDbl((var_8C - var_94)) > CDbl(0)) Then
  loc_12EA10F:         var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12EA117:         var_124 = CVar(CLng(6)) 'Long
  loc_12EA11C:         var_144 = "Dr"
  loc_12EA126:         Set var_A8 = Me.FGrid
  loc_12EA12C:         LateIdCallSt
  loc_12EA13A:       Else
  loc_12EA146:         If (CDbl((var_8C - var_94)) < CDbl(0)) Then
  loc_12EA14D:           var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12EA155:           var_124 = CVar(CLng(6)) 'Long
  loc_12EA15A:           var_144 = "Cr"
  loc_12EA164:           Set var_A8 = Me.FGrid
  loc_12EA16A:           LateIdCallSt
  loc_12EA178:         Else
  loc_12EA17C:           var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12EA184:           var_124 = CVar(CLng(6)) 'Long
  loc_12EA189:           var_144 = vbNullString
  loc_12EA193:           Set var_A8 = Me.FGrid
  loc_12EA199:           LateIdCallSt
  loc_12EA1A4:         End If
  loc_12EA1A4:       End If
  loc_12EA1A4:     End If
  loc_12EA1A7:   Next var_184 'Integer
  loc_12EA1B0:   Set var_1A4 = Me.Fgrid1
  loc_12EA1B3:   var_124 = 0
  loc_12EA1BF:   var_144 = CVar(CLng(1)) 'Long
  loc_12EA1ED:   var_F0 = CVar(CStr(Format(var_8C, "0.00"))) 'String
  loc_12EA1F4:   LateIdCallSt
  loc_12EA205:   var_124 = 0
  loc_12EA211:   var_144 = CVar(CLng(2)) 'Long
  loc_12EA23F:   var_F0 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_12EA246:   LateIdCallSt
  loc_12EA257:   var_124 = 0
  loc_12EA263:   var_144 = CVar(CLng(3)) 'Long
  loc_12EA285:   var_B8 = CVar(Abs((var_8C - var_94))) 'Double
  loc_12EA295:   var_104 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_12EA29C:   LateIdCallSt
  loc_12EA2AF:   var_164 = 0
  loc_12EA2BB:   var_1B4 = CVar(CLng(4)) 'Long
  loc_12EA2E2:   var_D0 = (CDbl((var_94 - var_8C)) > CDbl(0))
  loc_12EA308:   var_134 = (CDbl((var_8C - var_94)) > CDbl(0))
  loc_12EA318:   var_1D4 = CVar(CStr(IIf(CVar(CLng(3)), "Dr", IIf(var_94, "Cr", vbNullString)))) 'String
  loc_12EA31F:   LateIdCallSt
  loc_12EA33C:   Set var_1A4 = Nothing 
  loc_12EA343: Else
  loc_12EA34A:   If (var_BC = CLng(&HA)) Then
  loc_12EA37A:     Set var_A8 = Me.TxtGrid
  loc_12EA380:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C0, var_188, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_1A4, var_1D4)
  loc_12EA388:     var_1B4 = var_C0.Text
  loc_12EA390:     var_E0 = CVar(var_188) 'String
  loc_12EA398:     Set var_168 = Me.FGrid
  loc_12EA39E:     LateIdCallSt
  loc_12EA3CB:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12EA3D3:     var_124 = CVar(CLng(7)) 'Long
  loc_12EA3E2:     var_E0 = Me.FGrid.TextMatrix)
  loc_12EA412:     Set var_168 = Me.FGrid
  loc_12EA46D:     Call Proc_64_58_10734F4(CStr(var_E0), CStr(var_168.TextMatrix)), CStr(Me.FGrid.TextMatrix)), CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), var_168.TextMatrix), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))
  loc_12EA499:   End If
  loc_12EA499: End If
  loc_12EA499: Exit Sub
  loc_12EA49A: ' Referenced from: 12E9DF0
  loc_12EA49A: Proc_6_60_E63754(var_E0, var_124, var_D0, var_168)
  loc_12EA49F: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5BC30
  'Data Table: 529B40
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E5BBFC: If (Cancel = 0) Then
  loc_E5BC05:   Call Proc_64_60_EF479C(Cancel, var_88)
  loc_E5BC0E:   arg_10 = Not(var_88)
  loc_E5BC11: End If
  loc_E5BC24: var_A0 = CLng(Me.FGrid.Col)
  loc_E5BC2D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5E8C4
  'Data Table: 529B40
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5E88F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5E8A2: Set var_A8 = Me.TxtGrid
  loc_E5E8A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5E8B0: var_AC.Visible = False
  loc_E5E8BC: Call Proc_64_54_EBC804()
  loc_E5E8C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69300
  'Data Table: 529B40
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E692BC: Set var_88 = Me.TxtGrid
  loc_E692C2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E692DC: If (var_8C.Visible = 0) Then
  loc_E692F5:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E692FD: End If
  loc_E692FD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D740
  'Data Table: 529B40
  loc_E1D737: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D73F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '100D238
  'Data Table: 529B40
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100D09C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100D0B2:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100D0C2:   var_9C = "+{Tab}"
  loc_100D0C8:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_100D0D2:   Cancel = 0
  loc_100D0D8: Else
  loc_100D12F:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_100D145:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100D14D:   End If
  loc_100D14D: End If
  loc_100D170: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_100D194: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_100D1AA:   var_EC = CLng(Me.FGrid.Col)
  loc_100D1BA:   If Not (var_EC = CLng(&HA)) Then
  loc_100D1C4:     If (var_EC = CLng(3)) Then
  loc_100D1C7:     End If
  loc_100D1DA:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_100D1F2:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_100D1F7:     var_11C = vbNullString
  loc_100D201:     Set var_B4 = Me.FGrid
  loc_100D207:     LateIdCallSt
  loc_100D21F:   End If
  loc_100D21F: End If
  loc_100D225: If (Cancel = &HD) Then
  loc_100D22D:   global_72 = 0
  loc_100D230: End If
  loc_100D232: Cancel = 0
  loc_100D235: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1230BD0
  'Data Table: 529B40
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_9C As Long
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_150 As String
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1B8 As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_284 As String
  Dim unk_529B54 As Connection15
  Dim var_2B6 As Integer
  loc_123070B: var_9C = CLng(Me.FGrid.Col)
  loc_123071B: If (var_9C = CLng(3)) Then
  loc_1230729:   If (global_132 = "Yes") Then
  loc_1230736:     var_98 = Me.FGrid.Row
  loc_123073F:     var_AC = CVar(CLng(var_98)) 'Long
  loc_1230747:     var_CC = CVar(CLng(7)) 'Long
  loc_1230750:     Set var_E0 = Me.FGrid
  loc_1230756:     var_F0 = var_E0.TextMatrix)
  loc_1230781:     var_140 = Trim(Mid(CVar(CStr(var_F0)), 4, 5))
  loc_1230789:     var_150 = "RC"
  loc_1230797:     Set var_164 = Me.FGrid
  loc_12307A6:     var_184 = CVar(CLng(var_164.Row)) 'Long
  loc_12307ED:     Set var_21C = Me.FGrid
  loc_12307FC:     var_23C = CVar(CLng(var_21C.Row)) 'Long
  loc_123081E:     var_284 = CStr(Me.FGrid.TextMatrix))
  loc_1230869:     If CBool(CVar(CLng(1)) And ((CDate(var_284) = MemVar_1F950EC) Or (MemVar_1F950B8 = 1))) Then
  loc_1230899:       Set var_88 = Me.Txt
  loc_123089F:       Call 0.Method_FGrid_UnknownEvent_C0 (CInt(&HA), var_E0, var_284, "Select Count(*) from PayCharge where FolioNoDocid='", var_98, -1, var_164)
  loc_12308C0:       unk_529B54.Execute 0 & var_284 & "' and Bill_No<>'' and Bill_No is Not NULL", var_21C, var_F0
  loc_12308C8:       var_23C = var_164.Fields
  loc_12308D0:       var_184 = var_E0.Tag.Item(CVar(CLng(&HB)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F95078 & "RMCH")))
  loc_12308D8:        = var_21C.Value
  loc_1230905:       If (var_F0 > 0) Then
  loc_1230908:         Exit Sub
  loc_1230909:       End If
  loc_123090D:       Set var_1B8 = Me.FGrid
  loc_1230931:       var_284 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_123093A:       var_2B6 = Asc(var_284)
  loc_123095E:       Set var_E0 = var_1B8
  loc_1230970:       Proc_6_63_110B734(Me, var_E0, Me.TxtGrid, 0)
  loc_1230998:       Set var_88 = Me.TxtGrid
  loc_123099E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_284, 0)
  loc_12309A6:       var_2B6 = var_E0.Text
  loc_12309BF:       If (Len(var_284) <= 1) Then
  loc_12309CE:         Set var_88 = Me.TxtGrid
  loc_12309D4:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_284)
  loc_12309DC:         0 = var_E0.Text
  loc_12309ED:         Set var_164 = Me.TxtGrid
  loc_12309F3:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_12309FB:         var_1B8.Text = var_284
  loc_1230A0E:       End If
  loc_1230A1A:       Set var_88 = Me.TxtGrid
  loc_1230A20:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0)
  loc_1230A3A:       Set var_164 = Me.TxtGrid
  loc_1230A40:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_1230A48:       var_1B8.SelStart = Len(var_E0.Text)
  loc_1230A5B:     End If
  loc_1230A5B:   End If
  loc_1230A5E: Else
  loc_1230A65:   If (var_9C = CLng(&HA)) Then
  loc_1230A6C:     Set var_1B8 = Me.FGrid
  loc_1230A90:     var_284 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1230ABD:     Set var_E0 = var_1B8
  loc_1230ACF:     Proc_6_63_110B734(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_1230AF7:     Set var_88 = Me.TxtGrid
  loc_1230AFD:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_284, Asc(var_284))
  loc_1230B05:     0 = var_E0.Text
  loc_1230B1E:     If (Len(var_284) <= 1) Then
  loc_1230B2D:       Set var_88 = Me.TxtGrid
  loc_1230B33:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_284)
  loc_1230B3B:       var_2B6 = var_E0.Text
  loc_1230B4C:       Set var_164 = Me.TxtGrid
  loc_1230B52:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_1230B5A:       var_1B8.Text = var_284
  loc_1230B6D:     End If
  loc_1230B79:     Set var_88 = Me.TxtGrid
  loc_1230B7F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0)
  loc_1230B99:     Set var_164 = Me.TxtGrid
  loc_1230B9F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_1230BA7:     var_1B8.SelStart = Len(var_E0.Text)
  loc_1230BBA:   End If
  loc_1230BBA: End If
  loc_1230BC4: If (CLng(Cancel) <> &HD) Then
  loc_1230BCC:   global_72 = &HFF
  loc_1230BCF: End If
  loc_1230BCF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '14F07BC
  'Data Table: 529B40
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As MSHFlexGrid
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As String
  Dim var_150 As String
  Dim var_154 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim unk_529B54 As Connection15
  Dim var_B4 As Recordset15
  Dim var_D4 As String
  Dim var_AA As Integer
  Dim var_1A8 As Variant
  Dim var_184 As Variant
  Dim var_174 As Variant
  Dim var_1CC As Variant
  Dim var_1A4 As Variant
  Dim var_1EC As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_1F0 As Field20
  Dim var_AC As Integer
  Dim var_194 As Variant
  Dim var_1C8 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_9A As Integer
  Dim var_A2 As Integer
  Dim var_290 As Variant
  Dim var_280 As Variant
  Dim var_2B0 As Variant
  loc_14EF9F9: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_14EF9FC:   Exit Sub
  loc_14EF9FD: End If
  loc_14EFA10: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EFA18: var_E4 = CVar(CLng(1)) 'Long
  loc_14EFA38: var_128 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14EFA5A: If CBool(var_128 <> vbNullString) Then
  loc_14EFA6E:   If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_14EFA75:     Set var_88 = Me.FGrid
  loc_14EFA7B:     var_98 = var_88.Row
  loc_14EFA90:     If (CLng(var_98) >= 1) Then
  loc_14EFAB5:       var_154 = "SELECT DeleteGuestCharges FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='" & MemVar_1F95128
  loc_14EFAD3:       unk_529B54.Execute var_154 & "' And UserName='" & MemVar_1F950C8 & "'", var_98, -1
  loc_14EFADE:       Set var_B4 = var_88
  loc_14EFB0A:       If (var_B4.RecordCount > 0) Then
  loc_14EFB1C:         var_88 = var_B4.Fields
  loc_14EFB2C:         var_98 = CVar(var_88.Item("DeleteGuestCharges")) 'Address
  loc_14EFB35:         var_A8 = Proc_6_38_E69628(var_98, var_88)
  loc_14EFB3E:       End If
  loc_14EFB62:       unk_529B54.Execute "Select GuestChargesDeleteLog from Enviro where logsite_code='" & MemVar_1F95078 & "'", var_98, -1
  loc_14EFB6D:       Set var_B4 = var_88
  loc_14EFB83:       var_164 = var_B4.RecordCount
  loc_14EFB91:       If (var_164 > 0) Then
  loc_14EFBA3:         var_88 = var_B4.Fields
  loc_14EFBC2:         var_118 = Ucase(CVar(Proc_6_38_E69628(CVar(var_88.Item("GuestChargesDeleteLog")), var_88)))
  loc_14EFBDE:         If (var_118 = "YES") Then
  loc_14EFBE3:           var_AA = &HFF
  loc_14EFBE6:         End If
  loc_14EFBE6:       End If
  loc_14EFBEB:       Set var_B4 = Nothing
  loc_14EFC07:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EFC4D:       If (CVar(CLng(1)) Or ((CDate(CStr(Me.FGrid.TextMatrix))) = MemVar_1F950EC) And (var_A8 <> "No"))) Then
  loc_14EFC87:         If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_118, var_128) = 6) Then
  loc_14EFCA9:           If (CLng(Me.FGrid.Rows) > 2) Then
  loc_14EFCB2:             If (var_AA = &HFF) Then
  loc_14EFCDF:               var_B0 = InputBox("Reason for Deletion :", "Delete Reason", var_118, var_128, var_148, var_184, var_1A4)
  loc_14EFCF3:             End If
  loc_14EFCFC:             unk_529B54.BeginTrans var_164
  loc_14EFD72:             Set var_1CC = Me.FGrid
  loc_14EFD83:             var_14C = CStr(var_1CC.TextMatrix))
  loc_14EFD94:             var_1EC = CVar(CLng(8)) And (CDbl(Val(var_14C)) = CDbl(1))
  loc_14EFDB9:             If CBool(var_1EC) Then
  loc_14EFDC2:               If (var_AA = &HFF) Then
  loc_14EFDCB:                 Call 0.Method_arg_50 (var_14C, CVar(CLng(Me.FGrid.Row)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)))
  loc_14EFDF5:                 var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_14EFDFC:                 var_128 = CVar("Select GuestChargesDeleteLog from Enviro where logsite_code='" & MemVar_1F95078 & "'" & " Tm ") 'String
  loc_14EFE1A:                 var_118 = Format(Time, "HH:MM")
  loc_14EFE22:                 var_148 = (1 + var_118)
  loc_14EFE26:                 var_D4 = "- "
  loc_14EFE2B:                 var_184 = (var_148 + "Delete Reason")
  loc_14EFE35:                 var_1A4 = (Me.FGrid.Row + CVar(var_B0))
  loc_14EFE3A:                 var_B0 = CStr(var_1CC.TextMatrix))
  loc_14EFE68:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EFE70:                 var_E4 = CVar(CLng(7)) 'Long
  loc_14EFEB3:                 unk_529B54.Execute "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_14EFEDD:                 var_98 = Me.FGrid.Row
  loc_14EFEE6:                 var_C4 = CVar(CLng(var_98)) 'Long
  loc_14EFEFD:                 var_108 = Me.FGrid.TextMatrix)
  loc_14EFF0F:                 var_174 = 0
  loc_14EFF40:                 unk_529B54.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_14EFF50:                 var_174 = var_1CC.Item(var_1CC)
  loc_14EFF58:                 var_1F0 = var_1F0.Value
  loc_14EFF63:                 Proc_6_39_E7D3A0(var_148, var_128, var_128, var_108, CVar(CLng(7)))
  loc_14EFF6C:                 var_AC = CInt(var_148)
  loc_14EFF9D:                 Proc_6_17_EAAE40(var_98, var_B0, var_AC, var_B0)
  loc_14EFFAD:                 Proc_6_17_EAAE40(var_148, MemVar_1F950C8, var_1A8.Fields)
  loc_14EFFBD:                 Proc_6_7_F26918(var_1EC, MemVar_1F950EC, var_108)
  loc_14EFFD5:                 var_194 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EFFDD:                 var_1C8 = CVar(CLng(7)) 'Long
  loc_14F0010:                 var_14C = CStr((var_AC + 1))
  loc_14F0021:                 var_118 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=") & var_98 
  loc_14F0055:                 var_250 = var_118 & ",U_Name=" & var_148 & ",U_EntDt=" & var_1EC & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14F006C:                 unk_529B54.Execute CStr(var_250 & "'"), var_290, -1
  loc_14F00A6:               End If
  loc_14F00B9:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14F00C1:               var_E4 = CVar(CLng(7)) 'Long
  loc_14F0104:               unk_529B54.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_14F0137:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14F013F:               var_E4 = CVar(CLng(7)) 'Long
  loc_14F0159:               var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_14F0184:               var_9A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14F018D:               ' Referenced from: 14F0240
  loc_14F0193:               If (var_9A >= 1) Then
  loc_14F019A:                 var_C4 = CVar(CLng(var_9A)) 'Long
  loc_14F01A2:                 var_E4 = CVar(CLng(7)) 'Long
  loc_14F01CD:                 If (CStr(Me.FGrid.TextMatrix)) = var_A0) Then
  loc_14F01D4:                   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_14F01DD:                   Set var_88 = Me.FGrid
  loc_14F01F0:                   var_A2 = &HFF
  loc_14F01F3:                 End If
  loc_14F01F9:                 var_9A = (var_9A - 1)
  loc_14F0200:                 var_C4 = CVar(CLng(var_9A)) 'Long
  loc_14F0208:                 var_E4 = CVar(CLng(7)) 'Long
  loc_14F0222:                 var_14C = CStr(Me.FGrid.TextMatrix))
  loc_14F023A:                 If ((var_14C <> var_A0) And (var_A2 = &HFF)) Then
  loc_14F023D:                   GoTo loc_14F0243
  loc_14F0240:                 End If
  loc_14F0240:                 GoTo loc_14F018D
  loc_14F0243:                 ' Referenced from: 14F023D
  loc_14F0243:               End If
  loc_14F0246:             Else
  loc_14F024C:               If (var_AA = &HFF) Then
  loc_14F0255:                 Call 0.Method_arg_50 (var_14C, var_E4, var_C4, var_9A, var_A2, FGrid.DispID_10000, var_C4)
  loc_14F027F:                 var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_14F0286:                 var_128 = CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm ") 'String
  loc_14F02AC:                 var_148 = (1 + Format(Time, "HH:MM"))
  loc_14F02B0:                 var_D4 = "- "
  loc_14F02B5:                 var_184 = (var_148 + ",U_Name=")
  loc_14F02BF:                 var_1A4 = (Format(Time, "HH:MM") & ",U_Name=" & var_148 + CVar(var_B0))
  loc_14F02F2:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14F02FA:                 var_E4 = CVar(CLng(7)) 'Long
  loc_14F031F:                 var_118 = Me.FGrid.Row
  loc_14F0328:                 var_138 = CVar(CLng(var_118)) 'Long
  loc_14F0330:                 var_194 = CVar(CLng(8)) 'Long
  loc_14F0339:                 Set var_1CC = Me.FGrid
  loc_14F033F:                 var_128 = var_1CC.TextMatrix)
  loc_14F0375:                 var_15C = "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO=" & CStr(var_128)
  loc_14F0385:                 unk_529B54.Execute var_15C & " And isnull(bill_no,'')=''", var_148, -1
  loc_14F03BD:                 var_98 = Me.FGrid.Row
  loc_14F03C6:                 var_C4 = CVar(CLng(var_98)) 'Long
  loc_14F03DD:                 var_108 = Me.FGrid.TextMatrix)
  loc_14F03EF:                 var_174 = 0
  loc_14F0420:                 unk_529B54.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_14F0428:                 var_1A8 = var_1A8.Fields
  loc_14F0430:                 var_174 = var_1CC.Item(var_1CC)
  loc_14F0438:                 var_1F0 = var_1F0.Value
  loc_14F0443:                 Proc_6_39_E7D3A0(var_148, var_128, var_128, var_108, CVar(CLng(7)))
  loc_14F044C:                 var_AC = CInt(var_148)
  loc_14F047D:                 Proc_6_17_EAAE40(var_98, CStr(Format(Time, "HH:MM") & ",U_Name=" & var_148 & ",U_EntDt="), var_AC, CStr(Format(Time, "HH:MM") & ",U_Name=" & var_148 & ",U_EntDt="))
  loc_14F048D:                 Proc_6_17_EAAE40(var_148, MemVar_1F950C8, var_1F0)
  loc_14F049D:                 Proc_6_7_F26918(var_1EC, MemVar_1F950EC, var_128)
  loc_14F04B5:                 var_194 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14F04BD:                 var_1C8 = CVar(CLng(7)) 'Long
  loc_14F04EB:                 var_280 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14F04F3:                 var_2B0 = CVar(CLng(8)) 'Long
  loc_14F0526:                 var_14C = CStr((var_AC + 1))
  loc_14F0550:                 var_1A4 = CVar("Update PayChargeLog Set SeqNo=" & CStr(CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=")) & ",Remarks=") & var_98 & ",U_Name=" & var_148 & ",U_EntDt=" 
  loc_14F0574:                 var_270 = var_1A4 & var_1EC & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND SNO=" 
  loc_14F0596:                 unk_529B54.Execute CStr(var_270 & CVar(CStr(Me.FGrid.TextMatrix))) & " And isnull(bill_no,'')=''"), var_330, -1
  loc_14F05DE:               End If
  loc_14F05F1:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14F05F9:               var_E4 = CVar(CLng(7)) 'Long
  loc_14F061E:               var_118 = Me.FGrid.Row
  loc_14F0627:               var_138 = CVar(CLng(var_118)) 'Long
  loc_14F062F:               var_194 = CVar(CLng(8)) 'Long
  loc_14F063E:               var_128 = Me.FGrid.TextMatrix)
  loc_14F067B:               var_160 = "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO=" & CStr(var_128) & " And isnull(bill_no,'')=''"
  loc_14F0684:               unk_529B54.Execute var_160, var_148, -1
  loc_14F06C5:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14F06CE:               Set var_F8 = Me.FGrid
  loc_14F06E6:             End If
  loc_14F06EC:             unk_529B54.CommitTrans
  loc_14F06F4:           Else
  loc_14F06F4:             var_C4 = 1
  loc_14F0707:             Me.FGrid.Rows = var_C4
  loc_14F072D:             var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C4, var_1F0, var_128, var_194, var_138))) 'String
  loc_14F0735:             Set var_F8 = Me.FGrid
  loc_14F0762:             Me.FGrid.FixedRows = 1
  loc_14F076A:           End If
  loc_14F076A:         End If
  loc_14F076A:       End If
  loc_14F076D:     Else
  loc_14F0778:       var_108 = "Delete Module"
  loc_14F0788:       var_98 = "No Entries To Delete"
  loc_14F078E:       MsgBox(var_98, &H10, var_108, var_118, var_128)
  loc_14F079E:     End If
  loc_14F07A2:     Set var_88 = Me.FGrid
  loc_14F07B3:     Call Proc_64_56_14DF5AC(FGrid.DispID_8001, FGrid.DispID_10000, var_98, var_108, var_E4)
  loc_14F07B8:   End If
  loc_14F07B8: End If
  loc_14F07B8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D6F0
  'Data Table: 529B40
  loc_E1D6E7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D6EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E42984
  'Data Table: 529B40
  Dim var_8C As TextBox
  loc_E42958: Call Proc_64_54_EBC804()
  loc_E42968: Set var_88 = Me.TxtGrid
  loc_E4296E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E42976: var_8C.Visible = False
  loc_E42982: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E1C454
  'Data Table: 529B40
  loc_E1C449: Me.Global.Unload Me
  loc_E1C451: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11C1EAC
  'Data Table: 529B40
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_11C1A66: Set var_88 = Me.Txt
  loc_11C1A6C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11C1A7A: Proc_6_74_E23240(var_8C)
  loc_11C1A89: var_92 = Index
  loc_11C1A94: If (var_92 = CInt(0)) Then
  loc_11C1AAE:   If (Me.RecordCount > 0) Then
  loc_11C1ABC:     Set var_8C = Me.FGPoint
  loc_11C1AD4:     Proc_6_137_1192FDC(Me.DGRoomNo, global_92, Index)
  loc_11C1AE2:   End If
  loc_11C1B30:   Set var_88 = Me.Txt
  loc_11C1B36:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11C1B3E:   var_8C = var_8C.Text
  loc_11C1B64:   If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), var_92) = vbNullString)) Then
  loc_11C1B67:     Exit Sub
  loc_11C1B68:   End If
  loc_11C1B75:   Set var_88 = Me.Txt
  loc_11C1B7B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1B83:   var_A0 = var_8C.Text
  loc_11C1B95:   var_C4 = "RoomNo"
  loc_11C1BD0:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_11C1BD9:     Me.MoveFirst
  loc_11C1BFC:     Set var_88 = Me.Txt
  loc_11C1C02:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_11C1C0A:     0 = var_8C.Text
  loc_11C1C23:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C1C38:   End If
  loc_11C1C3B: Else
  loc_11C1C43:   If (var_92 = CInt(4)) Then
  loc_11C1C5D:     If (Me.RecordCount > 0) Then
  loc_11C1C6B:       Set var_8C = Me.FGPoint
  loc_11C1C83:       Proc_6_137_1192FDC(Me.DGRoomType, global_96)
  loc_11C1C91:     End If
  loc_11C1CDF:     Set var_88 = Me.Txt
  loc_11C1CE5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C1CED:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C1D13:     If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_11C1D16:       Exit Sub
  loc_11C1D17:     End If
  loc_11C1D24:     Set var_88 = Me.Txt
  loc_11C1D2A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1D32:     var_A0 = var_8C.Text
  loc_11C1D44:     var_C4 = "Name"
  loc_11C1D5B:     var_C8 = Me.Fields.Item(var_C4)
  loc_11C1D7F:     If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_11C1D88:       Me.MoveFirst
  loc_11C1DAB:       Set var_88 = Me.Txt
  loc_11C1DB1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11C1DB9:       0 = var_8C.Text
  loc_11C1DD2:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C1DE7:     End If
  loc_11C1DEA:   Else
  loc_11C1DF2:     If (var_92 = CInt(8)) Then
  loc_11C1E03:       Set var_88 = Me.Txt
  loc_11C1E09:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_11C1E21:       global_76 = Val(var_8C.Text)
  loc_11C1E2E:     End If
  loc_11C1E2E:   End If
  loc_11C1E2E: End If
  loc_11C1E3D: Set var_88 = Me.Txt
  loc_11C1E43: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1E4B: var_8C.SelStart = 0
  loc_11C1E64: Set var_88 = Me.Txt
  loc_11C1E6A: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1E85: Set var_90 = Me.Txt
  loc_11C1E8B: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_11C1E93: var_C8.SelLength = Len(var_8C.Text)
  loc_11C1EA6: Call Proc_64_54_EBC804(global_76)
  loc_11C1EAB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FDFA4
  'Data Table: 529B40
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  loc_10FDC83: var_88 = Shift
  loc_10FDC90: If (CLng(Shift) = &H1B) Then
  loc_10FDC93:   Call Proc_64_54_EBC804(var_88)
  loc_10FDC98:   Exit Sub
  loc_10FDC99: End If
  loc_10FDC9C: var_8A = KeyCode
  loc_10FDCA7: If (var_8A = CInt(0)) Then
  loc_10FDCC7:   Set var_A4 = Me.FGPoint
  loc_10FDCD2:   Set var_A0 = Nothing
  loc_10FDD04:   Proc_6_69_134A630(Me.DGRoomNo, Me.Txt, CInt(0), global_92, Shift, 0)
  loc_10FDD73:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FDD99:     Proc_6_138_106E830(Me.DGRoomNo, global_92, KeyCode, Me.FGPoint, 1)
  loc_10FDDA7:   End If
  loc_10FDDAA: Else
  loc_10FDDB2:   If (var_8A = CInt(4)) Then
  loc_10FDDDD:     Set var_A0 = Nothing
  loc_10FDE0F:     Proc_6_69_134A630(Me.DGRoomType, Me.Txt, CInt(4), global_96, Shift, 0, 1)
  loc_10FDE7E:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FDE85:       Set var_A0 = Me.DGRoomType
  loc_10FDEA4:       Proc_6_138_106E830(var_A0, global_96, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_10FDEB2:     End If
  loc_10FDEB2:   End If
  loc_10FDEB2: End If
  loc_10FDEED: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGRoomType.Visible) = 0)) Then
  loc_10FDF0E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(8))) Then
  loc_10FDF17:     Call Txt_Validate(KeyCode)
  loc_10FDF22:     If (var_86 = &HFF) Then
  loc_10FDF25:       Exit Sub
  loc_10FDF26:     End If
  loc_10FDF5D:     If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_10FDF60:       Call TopCtrl1_UnknownEvent_19()
  loc_10FDF65:     End If
  loc_10FDF65:     Exit Sub
  loc_10FDF66:   End If
  loc_10FDF7B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FDF84:     Proc_6_75_E5335C(Shift, arg_14, var_86, 0)
  loc_10FDF89:   End If
  loc_10FDF93:   If (CLng(Shift) = &H26) Then
  loc_10FDF9C:     Proc_6_76_E533C8(Shift, arg_14, var_A0)
  loc_10FDFA1:   End If
  loc_10FDFA1: End If
  loc_10FDFA1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F80410
  'Data Table: 529B40
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F802C3: Proc_6_58_E06050(arg_10)
  loc_F802CE: Proc_6_133_E7FB08(var_94)
  loc_F802D7: arg_10 = CInt(var_94)
  loc_F802E0: var_96 = KeyAscii
  loc_F802EB: If (var_96 = CInt(0)) Then
  loc_F8030A:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F80337:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_92, arg_10, "RoomNo")
  loc_F80369:     Proc_6_138_106E830(Me.DGRoomNo, global_92, KeyAscii, Me.FGPoint)
  loc_F80377:   End If
  loc_F8037A: Else
  loc_F80382:   If (var_96 = CInt(4)) Then
  loc_F803A1:     If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_F803CE:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_F80400:       Proc_6_138_106E830(Me.DGRoomType, global_96, KeyAscii, Me.FGPoint, 0)
  loc_F8040E:     End If
  loc_F8040E:   End If
  loc_F8040E: End If
  loc_F8040E: Exit Sub
  loc_F8040F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1CD44
  'Data Table: 529B40
  Dim var_86 As Integer
  loc_F1CC4F: var_86 = KeyCode
  loc_F1CC5A: If (var_86 = CInt(0)) Then
  loc_F1CC79:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F1CC8D:     var_A8 = "RoomNO"
  loc_F1CCB5:     Proc_6_68_12A2818(Me.DGRoomNo, Me.Txt, CInt(0), global_92)
  loc_F1CCC8:   End If
  loc_F1CCCB: Else
  loc_F1CCD3:   If (var_86 = CInt(4)) Then
  loc_F1CCF2:     If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_F1CD06:       var_A8 = "Name"
  loc_F1CD2E:       Proc_6_68_12A2818(Me.DGRoomType, Me.Txt, CInt(4), global_96, Shift)
  loc_F1CD41:     End If
  loc_F1CD41:   End If
  loc_F1CD41: End If
  loc_F1CD41: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4997C
  'Data Table: 529B40
  loc_E4995A: Set var_88 = Me.Txt
  loc_E49960: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4996E: Proc_6_73_E23294(var_8C)
  loc_E4997A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '18D0A48
  'Data Table: 529B40
  Dim var_CC As String
  Dim var_D0 As String
  Dim unk_529B54 As Connection15
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_A4 As Double
  Dim var_116 As Integer
  Dim var_11C As Variant
  Dim Me As Variant
  Dim var_F4 As Variant
  Dim var_130 As Variant
  Dim var_114 As Variant
  Dim var_B4 As Recordset15
  Dim var_12C As Variant
  Dim var_104 As Variant
  Dim var_170 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As String
  Dim var_1F8 As Fields15
  Dim var_210 As String
  Dim var_20C As TextBox
  Dim var_238 As Double
  Dim var_150 As Variant
  Dim var_1C0 As Variant
  Dim var_190 As String
  Dim var_AC As Recordset15
  Dim var_2C8 As Variant
  Dim var_3B8 As Variant
  Dim var_458 As Variant
  Dim var_B0 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_BC As Recordset15
  Dim var_510 As Double
  Dim var_208 As Fields15
  Dim var_298 As Variant
  Dim var_51C As Double
  Dim var_C4 As Long
  Dim var_C8 As Long
  loc_18CE1E4: unk_529B54.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_F0, -1
  loc_18CE1EF: Set var_B8 = var_F4
  loc_18CE1FF: On Error Goto loc_18D0A0D
  loc_18CE207: var_CC = Proc_6_16_EF358C(var_F4)
  loc_18CE214: var_E0 = "hh:nn"
  loc_18CE219: var_104 = var_E0
  loc_18CE232: var_A4 = CDate(Format(CVar(var_CC), var_104))
  loc_18CE246: var_116 = Cancel
  loc_18CE251: If (var_116 = CInt(0)) Then
  loc_18CE254:   Call Proc_64_57_139F840(var_116, var_A4)
  loc_18CE265:   If (global_68 = 1) Then
  loc_18CE286:     Set var_F4 = Me.Txt
  loc_18CE28C:     Call 0.Method_Txt_Validate0 (Cancel, var_11C, var_CC, "roomno='", 0)
  loc_18CE294:     1 = var_11C.Text
  loc_18CE2AD:     Me.Find var_E0 & var_CC & "'", 1, 1
  loc_18CE2C2:   End If
  loc_18CE2E2:   var_126 = Me.EOF
  loc_18CE310:   Set var_F4 = Me.Txt
  loc_18CE316:   Call 0.Method_Txt_Validate0 (Cancel, var_11C)
  loc_18CE336:   If (((Me.RecordCount = 0) Or ((var_126 = &HFF) Or (Me.BOF = &HFF))) Or (var_11C.Text = vbNullString)) Then
  loc_18CE346:     Set var_F4 = Me.Txt
  loc_18CE34C:     Call 0.Method_Txt_Validate0 (Cancel, var_11C)
  loc_18CE354:     var_11C.Tag = vbNullString
  loc_18CE360:     Exit Sub
  loc_18CE361:   End If
  loc_18CE39C:   Set var_12C = Me.Txt
  loc_18CE3A2:   Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_18CE3AA:   var_130.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_18CE3FB:   Set var_12C = Me.Txt
  loc_18CE401:   Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_18CE409:   var_130.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_18CE458:   Set var_12C = Me.Txt
  loc_18CE45E:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_130)
  loc_18CE466:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_18CE494:   var_11C = Me.Fields.Item("DocID")
  loc_18CE4A5:   var_CC = Proc_6_38_E69628(CVar(var_11C))
  loc_18CE4B3:   Set var_12C = Me.Txt
  loc_18CE4B9:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_130)
  loc_18CE4C1:   var_130.Tag = var_CC
  loc_18CE4F5:   Set var_F4 = Me.Txt
  loc_18CE4FB:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_11C, var_CC, "Select ChkinDAte,ChkinTime from RoomOcc where Sno=1 and Docid=")
  loc_18CE503:   var_150 = var_11C.Tag
  loc_18CE511:   Proc_6_17_EAAE40(var_104, CVar(var_CC))
  loc_18CE519:   var_114 = -1 & var_104 
  loc_18CE527:   unk_529B54.Execute CStr(Format(CVar(var_CC), var_104)), var_12C, 
  loc_18CE532:   Set var_B4 = var_12C
  loc_18CE560:   If (var_B4.RecordCount > 0) Then
  loc_18CE57A:     var_11C = var_B4.Fields.Item("ChkInDate")
  loc_18CE599:     Set var_12C = Me.Txt
  loc_18CE59F:     Call 0.Method_Txt_Validate0 (CInt(1), var_130)
  loc_18CE5A7:     var_130.Text = Proc_6_38_E69628(CVar(var_11C))
  loc_18CE5C6:     Set var_F4 = Me.Txt
  loc_18CE5CC:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_18CE606:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_11C), "DDDD"))
  loc_18CE66E:     Set var_12C = Me.Txt
  loc_18CE674:     Call 0.Method_Txt_Validate0 (CInt(2), var_130, CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ChkInTime")), 1)), 2)))
  loc_18CE67C:     var_130.Text = 1
  loc_18CE6EA:     Set var_12C = Me.Txt
  loc_18CE6F0:     Call 0.Method_Txt_Validate0 (CInt(3), var_130)
  loc_18CE6F8:     var_130.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ChkInTime")))), 2))
  loc_18CE719:   Else
  loc_18CE733:     var_11C = Me.Fields.Item("ChkInDate")
  loc_18CE752:     Set var_12C = Me.Txt
  loc_18CE758:     Call 0.Method_Txt_Validate0 (CInt(1), var_130)
  loc_18CE760:     var_130.Text = Proc_6_38_E69628(CVar(var_11C))
  loc_18CE77F:     Set var_F4 = Me.Txt
  loc_18CE785:     Call 0.Method_Txt_Validate0 (CInt(1), var_11C)
  loc_18CE7BF:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_11C), "DDDD"))
  loc_18CE82A:     Set var_12C = Me.Txt
  loc_18CE830:     Call 0.Method_Txt_Validate0 (CInt(2), var_130, CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_18CE838:     var_130.Text = 1
  loc_18CE88C:     var_104 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_18CE8A9:     Set var_12C = Me.Txt
  loc_18CE8AF:     Call 0.Method_Txt_Validate0 (CInt(3), var_130)
  loc_18CE8B7:     var_130.Text = CStr(Right(var_104, 2))
  loc_18CE8D5:   End If
  loc_18CE911:   Set var_12C = Me.Txt
  loc_18CE917:   Call 0.Method_Txt_Validate0 (CInt(9), var_130)
  loc_18CE91F:   var_130.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_18CE971:   Set var_12C = Me.Txt
  loc_18CE977:   Call 0.Method_Txt_Validate0 (CInt(9), var_130)
  loc_18CE97F:   var_130.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_18CE9CE:   Set var_12C = Me.Txt
  loc_18CE9D4:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_130)
  loc_18CE9DC:   var_130.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_18CEA29:   Set var_12C = Me.Txt
  loc_18CEA2F:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_130)
  loc_18CEA37:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_18CEA84:   Set var_12C = Me.Txt
  loc_18CEA8A:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_130)
  loc_18CEA92:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("GuestStatus")))
  loc_18CEACF:   Proc_6_39_E7D3A0(var_104, CVar(Me.Fields.Item("OldAdult")))
  loc_18CEAE6:   Set var_12C = Me.Txt
  loc_18CEAEC:   Call 0.Method_Txt_Validate0 (CInt(5), var_130)
  loc_18CEAF4:   var_130.Text = CStr(var_104)
  loc_18CEB35:   Proc_6_39_E7D3A0(var_104, CVar(Me.Fields.Item("OldChild")))
  loc_18CEB4C:   Set var_12C = Me.Txt
  loc_18CEB52:   Call 0.Method_Txt_Validate0 (CInt(6), var_130)
  loc_18CEB5A:   var_130.Text = CStr(var_104)
  loc_18CEBAB:   Set var_12C = Me.Txt
  loc_18CEBB1:   Call 0.Method_Txt_Validate0 (CInt(7), var_130)
  loc_18CEBB9:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_18CEC06:   Set var_12C = Me.Txt
  loc_18CEC0C:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_130)
  loc_18CEC14:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PlanCode")))
  loc_18CEC3A:   var_F4 = Me.Fields
  loc_18CEC53:   var_170 = IsNull(CVar(var_F4.Item("PicPath")))
  loc_18CEC5A:   var_140 = "PicPath"
  loc_18CEC88:   var_160 = vbNullString
  loc_18CECAA:   If CBool(var_170 Or (Trim(CVar(Me.Fields.Item(var_140))) = var_160)) Then
  loc_18CECCB:     Me.Global.LoadPicture var_E0, var_140, var_160, var_170, var_190
  loc_18CECE0:     Me.GuestImage.Picture = var_F4
  loc_18CECF9:     Me.GuestImage.Tag = vbNullString
  loc_18CED04:   Else
  loc_18CED2D:     var_104 = Trim(CVar(Me.Fields.Item("PicPath")))
  loc_18CED35:     var_160 = "PicPath"
  loc_18CED7E:     var_140 = "DAT"
  loc_18CEDA6:     var_170 = "AVI"
  loc_18CEDB0:     var_1F0 = (Ucase(Right(var_104, 3)) = var_140) Or (Ucase(Right(Trim(CVar(Me.Fields.Item(var_160))), 3)) = var_170)
  loc_18CEDD0:     If CBool(var_1F0) Then
  loc_18CEDDF:       Me.GuestImage.Visible = False
  loc_18CEDEA:     Else
  loc_18CEE25:       Me.GuestImage.Tag = CStr(Me.Fields.Item("PicPath").Value)
  loc_18CEE42:       var_E0 = "PicPath"
  loc_18CEE59:       var_11C = Me.Fields.Item(var_E0)
  loc_18CEE73:       Call 0.Method_Txt_Validate4 (CStr(var_11C.Value), var_126)
  loc_18CEE88:       If var_126 Then
  loc_18CEEA5:         Set var_F4 = Me.GuestImage
  loc_18CEEBD:         Me.Global.LoadPicture CVar(Me.GuestImage.Tag), var_E0, var_140, var_160, var_170
  loc_18CEECC:         Set var_130 = Me.GuestImage
  loc_18CEED2:         var_130.Picture = var_11C
  loc_18CEEE7:         Set var_F4 = Me.GuestImage
  loc_18CEEED:         var_F4.Refresh
  loc_18CEEF8:       Else
  loc_18CEF16:         Me.Global.LoadPicture var_E0, var_140, var_160, var_170, var_190
  loc_18CEF2B:         Me.GuestImage.Picture = var_F4
  loc_18CEF37:       End If
  loc_18CEF37:     End If
  loc_18CEF37:   End If
  loc_18CEF49:   var_F4 = Me.Fields
  loc_18CEF51:   var_11C = var_F4.Item("RoomRate")
  loc_18CEF60:   Proc_6_39_E7D3A0(var_104, CVar(var_11C), var_F4)
  loc_18CEF77:   Set var_12C = Me.Txt
  loc_18CEF7D:   Call 0.Method_Txt_Validate0 (CInt(8), var_130, CStr(var_104))
  loc_18CEF85:   var_130.Text = var_11C
  loc_18CEFAF:   var_F4 = Me.Fields
  loc_18CEFD6:   Set var_12C = Me.Txt
  loc_18CEFDC:   Call 0.Method_Txt_Validate0 (CInt(4), var_130)
  loc_18CEFE4:   var_130.Tag = Proc_6_38_E69628(CVar(var_F4.Item("RoomCatCode")), var_F4)
  loc_18CF031:   Set var_12C = Me.Txt
  loc_18CF037:   Call 0.Method_Txt_Validate0 (CInt(4), var_130)
  loc_18CF03F:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_18CF08C:   Set var_12C = Me.Txt
  loc_18CF092:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_130)
  loc_18CF09A:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_18CF0E7:   Set var_12C = Me.Txt
  loc_18CF0ED:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_130)
  loc_18CF0F5:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_18CF142:   Set var_12C = Me.Txt
  loc_18CF148:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_130)
  loc_18CF150:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_18CF19D:   Set var_12C = Me.Txt
  loc_18CF1A3:   Call 0.Method_Txt_Validate0 (CInt(&H10), var_130)
  loc_18CF1AB:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments3")))
  loc_18CF203:   Set var_12C = Me.Txt
  loc_18CF209:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_130)
  loc_18CF211:   var_130.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_18CF26D:   Set var_12C = Me.Txt
  loc_18CF273:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_130)
  loc_18CF27B:   var_130.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_18CF2AD:   var_11C = Me.Fields.Item("CityName")
  loc_18CF2ED:   var_130 = Me.Fields.Item("StateName")
  loc_18CF329:   var_1F8 = Me.Fields
  loc_18CF340:   var_1A0 = Trim(CVar(var_1F8.Item("CountryName")))
  loc_18CF351:   var_210 = var_11C & Proc_6_38_E69628(Trim(CVar(var_130)), Proc_6_38_E69628(Trim(CVar(var_11C))) & ",") & "," & Proc_6_38_E69628(var_1A0)
  loc_18CF35F:   Set var_208 = Me.Txt
  loc_18CF365:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_20C)
  loc_18CF36D:   var_20C.Text = var_210
  loc_18CF3D8:   Set var_12C = Me.Txt
  loc_18CF3DE:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_130)
  loc_18CF3E6:   var_130.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_18CF44D:   Set var_12C = Me.Txt
  loc_18CF453:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_130)
  loc_18CF45B:   var_130.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_18CF493:   var_11C = Me.Fields.Item("DepTime")
  loc_18CF4CC:   Set var_12C = Me.Txt
  loc_18CF4D2:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_130)
  loc_18CF506:   Set var_F4 = Me.Txt
  loc_18CF50C:   Call 0.Method_Txt_Validate0 (CInt(1), var_11C)
  loc_18CF514:   var_CC = var_11C.Text
  loc_18CF53C:   var_130 = Me.Fields.Item("ChkOutDate")
  loc_18CF55D:   If ((CDate(var_CC) <= MemVar_1F950EC) And IsNull(CVar(var_130))) Then
  loc_18CF566:     Call 0.Method_arg_50 (var_CC)
  loc_18CF576:     If (var_CC <> "Reverse Check Out Entry") Then
  loc_18CF596:       var_11C = Me.Fields.Item("ChkInDate")
  loc_18CF59E:       var_F0 = var_11C.Value
  loc_18CF5B8:       For var_220 = CDate(var_F0) To MemVar_1F950EC: var_94 = var_220 'Double
  loc_18CF5C9:         Proc_6_7_F26918(var_F0, var_94)
  loc_18CF5DC:         Set var_F4 = Me.Txt
  loc_18CF5E2:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_11C)
  loc_18CF5F8:         Proc_6_17_EAAE40(var_1A0, CVar(var_11C.Tag))
  loc_18CF60B:         Set var_12C = Me.Txt
  loc_18CF611:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_130)
  loc_18CF626:         var_238 = Val(CStr(Right(CVar(Proc_6_38_E69628(CVar(var_11C))), 2)))
  loc_18CF644:         var_104 = CVar("Select Count(*) from Paycharge where Vtype in ('RC') and LogSite_Code='" & MemVar_1F95078 & "' And Vdate=") 'String
  loc_18CF663:         var_1C0 = var_104 & var_F0 & " And (FolioNoDocid=" & var_1A0 & " Or RelatedFolioNo=" 
  loc_18CF685:         unk_529B54.Execute CStr(var_1C0 & CVar(var_238) & ")"), var_1F0, -1
  loc_18CF6E4:         var_F0 = var_1F8.Fields.Item(0).Value
  loc_18CF6FE:         If (var_F0 <= 0) Then
  loc_18CF715:           var_104 = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_18CF723:           Proc_6_7_F26918(var_F0, var_94, var_104, var_508, -1)
  loc_18CF734:           var_150 = var_208 & var_F0 & ">=chkindate and Roomocc.LogSite_Code='" 
  loc_18CF774:           Proc_6_17_EAAE40(var_1C0, CVar(Me.Fields.Item("DocID")), var_150 & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=")
  loc_18CF794:           Proc_6_7_F26918(var_1F0, var_94, var_1F8 & var_1C0 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE ")
  loc_18CF7B4:           Proc_6_7_F26918(var_298, var_94)
  loc_18CF7C5:           var_2C8 = var_238 & var_1F0 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " & var_298 & ">=chkindate and ChngDate<=" 
  loc_18CF7D4:           Proc_6_7_F26918(var_2E8, var_94)
  loc_18CF80E:           var_12C = Me.Fields
  loc_18CF825:           Proc_6_17_EAAE40(var_388, CVar(var_12C.Item("DocID")))
  loc_18CF836:           var_3B8 = var_2C8 & var_2E8 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=" & var_388 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" 
  loc_18CF876:           Proc_6_17_EAAE40(var_428, CVar(Me.Fields.Item("DocID")))
  loc_18CF887:           var_458 = var_3B8 & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=" & var_428 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where VDate=" 
  loc_18CF896:           Proc_6_7_F26918(var_478, var_94)
  loc_18CF8C8:           unk_529B54.Execute CStr(var_458 & var_478 & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F95078) & "')"), CDate(var_F0), 
  loc_18CF8D3:           Set var_B0 = var_208
  loc_18CF984:           unk_529B54.Execute CStr("Select * from RoomOcc Where DocId='" & var_B0.Fields.Item("DocID").Value & "' And SNo=1"), var_150, -1
  loc_18CF98F:           Set var_BC = var_12C
  loc_18CF9E2:           If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckOut"))) = "24 Hrs") Then
  loc_18CFA93:             Proc_96_11_EFA968(CDate(Format(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ChkInTime")))), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("variation")), 1)), "hh:nn")), 1)
  loc_18CFB45:             var_238 = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ChkInTime")), 1)), "nn")))
  loc_18CFBA2:             var_510 = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("variation")), var_238, 1)), "hh")))
  loc_18CFBFF:             var_51C = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("variation")), var_510, 1)), "nn")))
  loc_18CFC46:             var_C4 = CLng(((((Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ChkInTime")), 1)), "hh"))) * CDbl(&H3C)) + var_238) + (var_510 * CDbl(&H3C))) + var_51C))
  loc_18CFC8D:           Else
  loc_18CFD3B:             Proc_96_11_EFA968(CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckoutVar")), var_C4, 1, 1, var_51C)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("variation")), 1, 1, 1)), "hh:nn")), 1, 1)
  loc_18CFDED:             var_238 = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckoutVar")), 1)), "nn")))
  loc_18CFE4A:             var_510 = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("variation")), var_238, 1)), "hh")))
  loc_18CFEA7:             var_51C = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("variation")), var_510, 1)), "nn")))
  loc_18CFEEE:             var_C4 = CLng(((((Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckoutVar")), 1, 1)), "hh"))) * CDbl(&H3C)) + var_238) + (var_510 * CDbl(&H3C))) + var_51C))
  loc_18CFF32:           End If
  loc_18CFF74:           var_150 = CVar(FormatDateTime(var_A4, 4)) 'String
  loc_18CFF8B:           var_238 = Val(CStr(Format(var_150, "nn")))
  loc_18CFFAC:           var_114 = Format(CVar(FormatDateTime(var_A4, 4)), "hh")
  loc_18CFFC6:           var_C8 = CLng(((Val(CStr(var_114)) * CDbl(&H3C)) + var_238))
  loc_18D001C:           If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("RoomRentChkOutPost")), var_C8, 1, 1, var_238, 1, 1) = "Auto") Then
  loc_18D001F:             GoTo loc_18D00EE
  loc_18D0022:           End If
  loc_18D0041:           var_104 = CVar(var_BC.Fields.Item("ChkInDate")) 'Address
  loc_18D00B1:           If ((((Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckOut")), var_51C) = "24 Hrs") And (var_94 = MemVar_1F950EC)) And (var_94 <> CDate(Proc_6_38_E69628(var_104, var_C4, 1, 1)))) And (var_C4 >= var_C8)) Then
  loc_18D00B4:             GoTo loc_18D09C7
  loc_18D00B7:           End If
  loc_18D00EB:           If (MsgBox("Want to Post Charges for " & CDate(var_94), &H24, var_104, var_114, var_150) = 6) Then
  loc_18D00EE:             ' Referenced from: 18D001F
  loc_18D0146:             var_D0 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckOut")), 1) = "Other"))
  loc_18D0164:             If (1 And (var_D0 = "Yes")) Then
  loc_18D0176:               var_F4 = var_BC.Fields
  loc_18D01B1:               var_104 = CVar(var_B8.Fields.Item("CheckoutVar")) 'Address
  loc_18D029A:               Proc_96_12_F0A130(CDate(Format(CVar(Proc_6_38_E69628(var_104)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VariationBefore")), 1)), "hh:nn")), (var_94 = CDate(Proc_6_38_E69628(CVar(var_F4.Item("ChkInDate"))))), 1)
  loc_18D02E1:               If (1 And (1 > CDate(Format(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ChkInTime")), 1)), "hh:nn")))) Then
  loc_18D0309:                 unk_529B54.Execute CStr(var_B0.Source), var_104, -1
  loc_18D0377:                 Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_F4, 0, "*", 0)
  loc_18D038C:               End If
  loc_18D038C:             End If
  loc_18D039B:             If ((var_94 = MemVar_1F950EC) And (var_C4 >= var_C8)) Then
  loc_18D03AD:               var_F4 = var_B8.Fields
  loc_18D03F6:               var_D0 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckOut")), (Proc_6_38_E69628(CVar(var_F4.Item("RoomRentChkOutPost")), 1, 1) = "Semi"))
  loc_18D044B:               If (1 And (Proc_6_38_E69628(CVar(var_B8.Fields.Item("RoomRentBefChkOut")), (var_F4 And (var_D0 = "Other"))) <> "Yes")) Then
  loc_18D0478:                 var_1F4 = 0
  loc_18D04A1:                 Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_18D04B9:               Else
  loc_18D053C:                 var_D0 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckOut")), (Proc_6_38_E69628(CVar(var_B8.Fields.Item("RoomRentChkOutPost")), 1) = "Auto"))
  loc_18D05A6:                 If (((1 And (var_D0 = "Other")) And (Proc_6_38_E69628(CVar(var_B8.Fields.Item("RoomRentBefChkOut"))) <> "Yes")) And (var_94 = CDate(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ChkInDate")), var_1F4)))) Then
  loc_18D05D3:                   var_1F4 = 0
  loc_18D05FC:                   Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_18D0614:                 Else
  loc_18D0693:                   If ((Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckOut")), 1) = "24 Hrs") And (var_94 = CDate(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ChkInDate")), var_1F4)))) Then
  loc_18D06C0:                     var_1F4 = 0
  loc_18D06E9:                     Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_18D0701:                   Else
  loc_18D0720:                     var_114 = CVar(var_BC.Fields.Item("ChkInDate")) 'Address
  loc_18D074B:                     var_150 = CVar(var_B8.Fields.Item("CheckoutVar")) 'Address
  loc_18D0865:                     var_104 = CVar(var_B8.Fields.Item("RoomRentBefChkOut")) 'Address
  loc_18D0896:                     Proc_96_12_F0A130(CDate(Format(CVar(Proc_6_38_E69628(var_150, 1)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VariationBefore")), 1)), "hh:nn")))
  loc_18D08E9:                     If (1 And (((1 And (Proc_6_38_E69628(var_104, (Proc_6_38_E69628(CVar(var_B8.Fields.Item("CheckOut")), 1, 1) = "Other")) = "Yes")) And (var_94 = CDate(Proc_6_38_E69628(var_114, Proc_6_38_E69628(var_114, var_1F4, 1), 1)))) <= CDate(Format(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ChkInTime")), 1, 1)), "hh:nn")))) Then
  loc_18D0916:                       var_1F4 = 0
  loc_18D093F:                       Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_18D0954:                     End If
  loc_18D0954:                   End If
  loc_18D0954:                 End If
  loc_18D0954:               End If
  loc_18D0957:             Else
  loc_18D09A1:               var_CC = Format$(var_94, "dd/MMM/yyyy")
  loc_18D09AA:               Proc_96_4_1C1E774(CDate(var_CC), var_B0, 0, "*", 0)
  loc_18D09BF:             End If
  loc_18D09C4:             global_124 = &HFF
  loc_18D09C7:             ' Referenced from: 18D00B4
  loc_18D09C7:           End If
  loc_18D09C7:         End If
  loc_18D09CA:       Next var_220 'Double
  loc_18D09CF:     End If
  loc_18D09D4:     Set var_AC = Nothing
  loc_18D09D7:   End If
  loc_18D09D7:   Call Proc_64_56_14DF5AC()
  loc_18D09DC: End If
  loc_18D09E1: Set var_BC = Nothing
  loc_18D09E9: Set var_B8 = Nothing
  loc_18D09F1: Set var_C0 = Nothing
  loc_18D09F9: Set var_B4 = Nothing
  loc_18D0A01: Set var_B0 = Nothing
  loc_18D0A09: Set var_AC = Nothing
  loc_18D0A0C: Exit Sub
  loc_18D0A0D: ' Referenced from: 18CE1FF
  loc_18D0A23: Set var_F4 = Err()
  loc_18D0A29: Call 0.Method_arg_2C (var_CC, 0, var_104)
  loc_18D0A34: MsgBox(CVar(var_CC), var_114, var_150, , )
  loc_18D0A47: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F12A10
  'Data Table: 529B40
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F12928: On Error Goto loc_F129CD
  loc_F12942: If (Me.RecordCount > 0) Then
  loc_F1295A:   var_8C = "EDIT"
  loc_F12968:   Call Proc_64_52_E7A8E4(Proc_5_1_100EC1C(var_8C, Me))
  loc_F1297E:   Set var_90 = Me.Txt
  loc_F12984:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F1298C:   var_98.SetFocus
  loc_F1299B: Else
  loc_F129BC:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F129CC: End If
  loc_F129CC: Exit Sub
  loc_F129CD: ' Referenced from: F12928
  loc_F129D5: Set var_90 = Err()
  loc_F129DB: Call 0.Method_arg_2C (var_8C)
  loc_F129FC: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F12A0F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 'F05FB4
  'Data Table: 529B40
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_F05EE0: On Error Goto loc_F05F79
  loc_F05EEE: Set var_88 = Me.Txt
  loc_F05EF4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_F05EFC: var_94 = "Room No"
  loc_F05F1D: If (Proc_6_27_EA61EC(var_8C, var_94) = 0) Then
  loc_F05F27:   Call Txt_GotFocus(CInt(0))
  loc_F05F2C:   Exit Sub
  loc_F05F2D: End If
  loc_F05F39: Call Txt_Validate(CInt(0))
  loc_F05F3E: Call Proc_64_53_F11814(0)
  loc_F05F4E: Me.Requery -1
  loc_F05F5E: Set var_88 = Me.Txt
  loc_F05F64: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_8C)
  loc_F05F6C: var_8C.SetFocus
  loc_F05F78: Exit Sub
  loc_F05F79: ' Referenced from: F05EE0
  loc_F05F81: Set var_88 = Err()
  loc_F05F87: Call 0.Method_arg_2C (var_94)
  loc_F05FA0: MsgBox(CVar(var_94), &H10, var_C8, var_E8, var_108)
  loc_F05FB3: Exit Sub
End Sub

Private Sub Form_Load() '1170C14
  'Data Table: 529B40
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_B0 As String
  Dim unk_529CBC As Connection15
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_529B54 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  Dim var_F8 As DataGrid
  Dim var_FC As TextBox
  loc_1170868: On Error Goto loc_1170C0C
  loc_1170873: Call 0.Method_arg_7C (CDbl(1450))
  loc_1170880: Call 0.Method_arg_74 (CDbl(1625))
  loc_117088D: Call 0.Method_MeC (CDbl(9200))
  loc_117089A: Call 0.Method_Me4 (CDbl(17000))
  loc_11708A6: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11708B9: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_11708D4: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_11708E9: Set var_8C = Me.Fgrid1
  loc_11708EF: var_8C.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_117091B: unk_529CBC.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95078 & "FOM'", var_C4, -1
  loc_117092C: Set global_120 = var_8C
  loc_117094B: Set global_92 = New 
  loc_117095D: Me.Recordset15.CursorLocation = 3
  loc_117098B: var_D0 = "SELECT ChangeGuestCharges FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='" & MemVar_1F95128 & "' And UserName='"
  loc_11709A2: unk_529B54.Execute var_D0 & MemVar_1F950C8 & "'", var_C4, -1
  loc_11709AD: Set var_88 = var_8C
  loc_11709CB: var_DC = var_88.RecordCount
  loc_11709D9: If (var_DC > 0) Then
  loc_11709EB:   var_8C = var_88.Fields
  loc_11709F3:   var_C8 = var_8C.Item("ChangeGuestCharges")
  loc_11709FB:   var_C4 = CVar(var_C8) 'Address
  loc_1170A02:   Proc_6_39_E7D3A0(var_EC, var_C4)
  loc_1170A11:   global_132 = CStr(var_EC)
  loc_1170A22: End If
  loc_1170A28: If (MemVar_1F950B8 <> 1) Then
  loc_1170A2B:   GoTo loc_1170A6D
  loc_1170A2E: End If
  loc_1170A52: unk_529B54.Execute "Select nCUR from enviro where LOGsite_code='" & MemVar_1F95078 & "'", var_C4, -1
  loc_1170A5D: Set var_88 = var_8C
  loc_1170A6D: ' Referenced from: 1170A2B
  loc_1170A7A: Me.Command2.Caption = "Bill Settle"
  loc_1170A92: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6803000E("Add")
  loc_1170A9B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(Me.TopCtrl1)
  loc_1170AC4: var_B0 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,GuestProf.PicPath, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid,RoomOcc.PlanCode " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS where RoomMast.LogSite_Code='"
  loc_1170AE0: var_D4 = var_B0 & MemVar_1F95078 & "' and RoomOcc.logsite_code='" & MemVar_1F95078 & "' and RoomMast.type='RO' and RoomMAst.Code in (Select ISNULL(RoomNo,'') from RoomOcc where ROOMMAST.LOGSITE_CODE='"
  loc_1170AFC: var_C4 = CVar(var_D4 & MemVar_1F95078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F95078 & "' AND isnull(type,'')<>'O' and isnull(type,'')<>'C') and isnull(RoomOcc.type,'')<>'O' and isnull(RoomOcc.type,'')<>'C'  Order by RoomMast.Code") 'String
  loc_1170B06: Me.Open var_C4, CVar(MemVar_1F95044), 2
  loc_1170B27: Call 0.Method_arg_54 ("Room Check Out Entry", 3)
  loc_1170B3A: Set var_8C = Me.Txt
  loc_1170B40: Call 0.Method_Form_Load0 (CInt(0), var_C8, var_DC)
  loc_1170B48: -1 = var_C8.Left
  loc_1170B5F: Me.DGRoomNo.Left = CVar(var_DC)
  loc_1170B7B: Set var_F8 = Me.Txt
  loc_1170B81: Call 0.Method_Form_Load0 (CInt(0), var_FC)
  loc_1170B9C: Set var_8C = Me.Txt
  loc_1170BA2: Call 0.Method_Form_Load0 (CInt(0), var_C8)
  loc_1170BBA: var_9C = CVar(((var_C8.Top + var_FC.Height) + CDbl(&H1E))) 'Single
  loc_1170BC9: Me.DGRoomNo.Top = CVar(var_C8.Top)
  loc_1170BE4: CVarUnk
  loc_1170BE9: VerifyVarObj
  loc_1170BEF: Set var_8C = Me.DGRoomNo
  loc_1170BF5: LateIdStAd
  loc_1170C08: Set var_88 = Nothing
  loc_1170C0B: Exit Sub
  loc_1170C0C: ' Referenced from: 1170868
  loc_1170C0C: Proc_6_60_E63754(var_8C, global_92)
  loc_1170C11: Exit Sub
End Sub

Private Sub Form_Resize() 'E76D28
  'Data Table: 529B40
  loc_E76CD2: Call 0.Method_arg_50 (var_88)
  loc_E76CE4: Me.LblFormCaption.Caption = var_88
  loc_E76CFD: Me.LblFormCaption.Left = CDbl(0)
  loc_E76D0B: Call 0.Method_arg_100 (var_90)
  loc_E76D1D: Me.LblFormCaption.Width = var_90
  loc_E76D25: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) '1341904
  'Data Table: 529B40
  Dim var_9C As Variant
  Dim var_A0 As String
  Dim var_B0 As Variant
  Dim var_114 As String
  Dim unk_529B54 As Connection15
  Dim var_94 As Recordset15
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As String
  Dim var_88 As Integer
  Dim var_100 As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_110 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_190 As TextBox
  Dim var_198 As String
  Dim var_1A0 As String
  Dim var_14C As Variant
  Dim var_1A4 As Recordset15
  Dim var_1A8 As Fields15
  Dim var_1AC As Field20
  Dim var_8A As Integer
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_F0 As Variant
  Dim var_23C As Variant
  loc_1341190: Call 0.Method_Form_Unload0 (CInt(&HA), var_9C)
  loc_13411B9: If ((var_9C.Text <> vbNullString) And (global_124 = &HFF)) Then
  loc_13411D8:   var_B0 = CVar("Room Charges are Posted," & vbCrLf & "Do you want to delete Charges?") 'String
  loc_13411F4:   If (MsgBox(var_B0, &H24, var_D0, var_F0, var_110) = 6) Then
  loc_134121B:     unk_529B54.Execute "Select GuestChargesDeleteLog from Enviro where logsite_code='" & MemVar_1F95078 & "'", var_B0, -1
  loc_1341226:     Set var_94 = Me.Txt
  loc_134124A:     If (var_94.RecordCount > 0) Then
  loc_1341297:       If (Ucase(CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("GuestChargesDeleteLog"))))) = "YES") Then
  loc_134129C:         var_88 = &HFF
  loc_134129F:       End If
  loc_134129F:     End If
  loc_13412A4:     Set var_94 = Nothing
  loc_13412CC:     For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_13412D6:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_13412F8:       var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_1341344:       If (CVar(CLng(0)) And (CStr(Me.FGrid.TextMatrix)) = "*")) Then
  loc_134134D:         If (var_88 = &HFF) Then
  loc_1341356:           Call 0.Method_arg_50 (var_A0, CVar(CLng(var_86)), (var_A0 <> vbNullString), CVar(CLng(7)))
  loc_1341380:           var_114 = Replace(var_A0, " ", vbNullString, 1, -1, 0)
  loc_1341387:           var_110 = CVar(CStr(Me.FGrid.TextMatrix)) & " Tm ") 'String
  loc_1341399:           var_D0 = "HH:MM"
  loc_13413A5:           var_F0 = Format(Time, var_D0)
  loc_13413AD:           var_17C = (1 + var_F0)
  loc_13413B1:           var_E0 = "- Auto Delete"
  loc_13413B6:           var_18C = (var_17C + "YES")
  loc_13413EF:           var_B0 = Me.FGrid.TextMatrix)
  loc_1341409:           Set var_9C = Me.Txt
  loc_134140F:           Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_B0, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_1341417:           1 = var_190.Text
  loc_134143B:           var_198 = "Insert into PayChargeLog Select * from PayCharge WHERE Docid='" & CStr(var_B0) & "' and MarkEntry='*' and FolioNo="
  loc_1341452:           unk_529B54.Execute var_198 & var_194 & " And isnull(bill_no,'')=''", var_D0, -1
  loc_1341493:           var_B0 = Me.FGrid.TextMatrix)
  loc_13414AD:           Set var_9C = Me.Txt
  loc_13414B3:           Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_B0, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_13414BB:           var_1A4 = var_190.Text
  loc_13414C6:           var_14C = 0
  loc_13414FC:           var_1A0 = "Select Max(SeqNo) From PayChargeLog WHERE Docid='" & CStr(var_B0) & "' and FolioNo=" & var_194 & " And isnull(bill_no,'')=''"
  loc_1341505:           unk_529B54.Execute var_1A0, var_D0, -1
  loc_134150D:           var_1A4 = var_1A4.Fields
  loc_1341515:           var_14C = var_1A8.Item(var_1A8)
  loc_134151D:           var_1AC = var_1AC.Value
  loc_1341528:           Proc_6_39_E7D3A0(var_110, var_F0, var_F0, var_110)
  loc_1341531:           var_8A = CInt(var_110)
  loc_1341568:           Proc_6_17_EAAE40(var_B0, CStr(var_18C), var_8A, CStr(var_18C))
  loc_1341578:           Proc_6_17_EAAE40(var_17C, MemVar_1F950C8, 1)
  loc_1341588:           Proc_6_7_F26918(var_1CC, MemVar_1F950EC)
  loc_1341591:           var_15C = CVar(CLng(var_86)) 'Long
  loc_1341599:           var_1FC = CVar(CLng(7)) 'Long
  loc_13415A8:           var_21C = Me.FGrid.TextMatrix)
  loc_13415C2:           Set var_9C = Me.Txt
  loc_13415C8:           Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_21C)
  loc_13415D0:           var_1FC = var_190.Text
  loc_13415ED:           var_A0 = CStr((var_8A + 1))
  loc_13415F8:           var_D0 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_B0) & ",Remarks=") 'String
  loc_1341632:           var_23C = var_D0 & var_B0 & ",U_Name=" & var_17C & ",U_EntDt=" & var_1CC & " Where IsNull(SeqNo,0)=0 And Docid='" & CVar(CStr(var_21C)) 
  loc_134165C:           unk_529B54.Execute CStr(var_23C & "' and FolioNo=" & CVar(var_194) & " And isnull(bill_no,'')=''"), var_2BC, -1
  loc_134169C:         End If
  loc_13416A0:         var_C0 = CVar(CLng(var_86)) 'Long
  loc_13416B7:         var_B0 = Me.FGrid.TextMatrix)
  loc_13416D1:         Set var_9C = Me.Txt
  loc_13416D7:         Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_B0, CVar(CLng(7)))
  loc_13416DF:         var_C0 = var_190.Text
  loc_1341711:         var_1A0 = "Delete from Paycharge where Docid='" & CStr(var_B0) & "' and MarkEntry='*' and FolioNo=" & var_194 & " And isnull(bill_no,'')=''"
  loc_134171A:         unk_529B54.Execute var_1A0, var_D0, -1
  loc_1341740:       End If
  loc_1341743:     Next var_11C 'Integer
  loc_134174D:     global_124 = 0
  loc_1341753:   Else
  loc_1341778:     For var_2C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_2C0 'Integer
  loc_1341782:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_134178A:       var_100 = CVar(CLng(7)) 'Long
  loc_13417A4:       var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_13417B0:       var_13C = CVar(CLng(var_86)) 'Long
  loc_13417C7:       var_D0 = Me.FGrid.TextMatrix)
  loc_13417F0:       If (CVar(CLng(0)) And (CStr(var_D0) = "*")) Then
  loc_134180E:         var_B0 = Me.FGrid.TextMatrix)
  loc_1341828:         Set var_9C = Me.Txt
  loc_134182E:         Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_B0, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_1341836:         var_13C = var_190.Text
  loc_134186A:         unk_529B54.Execute "Update Paycharge set MarkEntry='' where markEntry='*' and  Docid='" & CStr(var_B0) & "' and FolioNo=" & var_194, var_D0, -1
  loc_134188E:       End If
  loc_1341891:     Next var_2C0 'Integer
  loc_134189B:     global_124 = 0
  loc_134189E:   End If
  loc_134189E: End If
  loc_13418A9: Set global_92 = Nothing
  loc_13418BB: Set global_88 = Nothing
  loc_13418CD: Set global_100 = Nothing
  loc_13418DF: Set global_96 = Nothing
  loc_13418F1: Set global_120 = Nothing
  loc_13418FD: MasterFormExit = 0
  loc_1341900: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E675C0
  'Data Table: 529B40
  loc_E6757C: Set var_88 = Me.TopCtrl1
  loc_E67582: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6803000E()
  loc_E675B0: If CBool(( <> "Browse") And (MasterFormExit = 0)) Then
  loc_E675B8:   Call Form_Unload(&HFF)
  loc_E675BD: End If
  loc_E675BD: Exit Sub
End Sub

Private Sub Form_Activate() 'EFAB7C
  'Data Table: 529B40
  Dim unk_529CBC As Connection15
  Dim var_B8 As TextBox
  loc_EFAAB8: On Error Goto loc_EFAB4A
  loc_EFAADF: unk_529CBC.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95078 & "FOM'", var_B0, -1
  loc_EFAAF0: Set global_120 = var_B4
  loc_EFAB19: If (FdCheckOut.OpenMode = 1) Then
  loc_EFAB1C:   Call Proc_64_56_14DF5AC(var_B4)
  loc_EFAB24: Else
  loc_EFAB2F:   Set var_B4 = Me.Txt
  loc_EFAB35:   Call 0.Method_Form_Activate0 (CInt(0))
  loc_EFAB3D:   var_B8.SetFocus
  loc_EFAB49: End If
  loc_EFAB49: Exit Sub
  loc_EFAB4A: ' Referenced from: EFAAB8
  loc_EFAB63: MsgBox("FORM ACTIVATE", 0, var_DC, var_FC, var_11C)
  loc_EFAB73: Proc_6_60_E63754(var_B8)
  loc_EFAB78: Exit Sub
  loc_EFAB79: StAryRecCopy
End Sub

Private Sub Form_Deactivate() 'E2578C
  'Data Table: 529B40
  loc_E25771: If (MasterFormExit = &HFF) Then
  loc_E25781:   Me.Global.Unload Me
  loc_E25789: End If
  loc_E25789: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EEB668
  'Data Table: 529B40
  Dim var_88 As Variant
  Dim var_EC As TextBox
  loc_EEB5A8: On Error Goto loc_EEB662
  loc_EEB5B5: If (CLng(KeyCode) = &H79) Then
  loc_EEB5C5:   Me.Global.Unload Me
  loc_EEB5CD:   Exit Sub
  loc_EEB5CE: End If
  loc_EEB60B: If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "A")) Then
  loc_EEB61A:   Me.FrmAdjust.Visible = True
  loc_EEB62B:   Set var_88 = Me.Txt
  loc_EEB631:   Call 0.Method_Form_KeyDown0 (&H17)
  loc_EEB639:   var_EC.SetFocus
  loc_EEB645: End If
  loc_EEB659: Proc_6_88_FE8F6C(Me, KeyCode, Shift)
  loc_EEB661: Exit Sub
  loc_EEB662: ' Referenced from: EEB5A8
  loc_EEB662: Proc_6_60_E63754(0)
  loc_EEB667: Exit Sub
End Sub

Private Sub Timer1_Timer() '1053CCC
  'Data Table: 529B40
  Dim var_8C As TextBox
  loc_1053A62: Set var_88 = Me.Txt
  loc_1053A68: Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1053A85: If (var_8C.BackColor = &HD3B3FF) Then
  loc_1053A96:   Set var_88 = Me.Txt
  loc_1053A9C:   Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1053ABB:   If (var_8C.Text <> vbNullString) Then
  loc_1053ACE:     Set var_88 = Me.Txt
  loc_1053AD4:     Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1053ADC:     var_8C.BackColor = &HFFFFFF
  loc_1053AE8:   End If
  loc_1053AF6:   Set var_88 = Me.Txt
  loc_1053AFC:   Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_1053B1B:   If (var_8C.Text <> vbNullString) Then
  loc_1053B2E:     Set var_88 = Me.Txt
  loc_1053B34:     Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_1053B3C:     var_8C.BackColor = &HFFFFFF
  loc_1053B48:   End If
  loc_1053B56:   Set var_88 = Me.Txt
  loc_1053B5C:   Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_1053B7B:   If (var_8C.Text <> vbNullString) Then
  loc_1053B8E:     Set var_88 = Me.Txt
  loc_1053B94:     Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_1053B9C:     var_8C.BackColor = &HFFFFFF
  loc_1053BA8:   End If
  loc_1053BAB: Else
  loc_1053BB9:   Set var_88 = Me.Txt
  loc_1053BBF:   Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1053BDE:   If (var_8C.Text <> vbNullString) Then
  loc_1053BF1:     Set var_88 = Me.Txt
  loc_1053BF7:     Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1053BFF:     var_8C.BackColor = &HD3B3FF
  loc_1053C0B:   End If
  loc_1053C19:   Set var_88 = Me.Txt
  loc_1053C1F:   Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_1053C3E:   If (var_8C.Text <> vbNullString) Then
  loc_1053C51:     Set var_88 = Me.Txt
  loc_1053C57:     Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_1053C5F:     var_8C.BackColor = &HD3B3FF
  loc_1053C6B:   End If
  loc_1053C79:   Set var_88 = Me.Txt
  loc_1053C7F:   Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_1053C9E:   If (var_8C.Text <> vbNullString) Then
  loc_1053CB1:     Set var_88 = Me.Txt
  loc_1053CB7:     Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_1053CBF:     var_8C.BackColor = &HD3B3FF
  loc_1053CCB:   End If
  loc_1053CCB: End If
  loc_1053CCB: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F51234
  'Data Table: 529B40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5112B: Me.DGRoomNo.Visible = False
  loc_F5114A: If (Me.RecordCount > 0) Then
  loc_F51189:   Set var_B4 = Me.Txt
  loc_F5118F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F51197:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F511CA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F511E9:   Set var_B4 = Me.Txt
  loc_F511EF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F511F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F5120D: End If
  loc_F51218: Set var_A8 = Me.Txt
  loc_F5121E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F51226: var_B0.SetFocus
  loc_F51232: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9AEA0
  'Data Table: 529B40
  Dim var_A8 As Variant
  loc_E9AE24: Set var_88 = Me.DGRoomNo
  loc_E9AE4E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9AE56: Set var_BC = Me.DGRoomNo
  loc_E9AE90: Proc_6_138_106E830(Me.DGRoomNo, global_92, 0, Me.FGPoint)
  loc_E9AE9E: Exit Sub
End Sub

Private Sub Command1_Click() 'FCF994
  'Data Table: 529B40
  Dim var_8E As Integer
  Dim unk_529B54 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Fields15
  Dim var_B4 As Variant
  loc_FCF808: On Error Goto loc_FCF97A
  loc_FCF80D: var_8E = &HFF
  loc_FCF819: unk_529B54.BeginTrans var_94
  loc_FCF834: unk_529B54.Execute "sELECT * FROM ROOMOCC WHERE TYPE='O' ORDER BY CHKOUTDATE,CHKOUTTIME", var_B4, -1
  loc_FCF83F: Set var_88 = var_B8
  loc_FCF85E: unk_529B54.Execute "SELECT * FROM PAYCHARGE WHERE FOLIONO<>0 AND VTYPE Not In ('ARRES','ADRES')", var_B4, -1
  loc_FCF869: Set var_8C = var_B8
  loc_FCF872: ' Referenced from: FCF966
  loc_FCF883: If (var_88.EOF = 0) Then
  loc_FCF8C3:   var_B8 = var_88.Fields
  loc_FCF8DA:   Proc_6_7_F26918(var_D8, CVar(var_B8.Item("ChkOutDate")), CVar("UPDATE PAYCHARGE SET BILL_NO='" & CStr(var_88.AbsolutePosition) & "',SETTLEDATE="), var_194, -1)
  loc_FCF930:   unk_529B54.Execute CStr(var_198 & var_D8 & " WHERE FOLIONO=" & var_88.Fields.Item("FolioNo").Value & " AND VTYPE Not In ('ARRES','ADRES')"), var_B8, var_B8
  loc_FCF961:   var_88.MoveNext
  loc_FCF966:   GoTo loc_FCF872
  loc_FCF969: End If
  loc_FCF96F: unk_529B54.CommitTrans
  loc_FCF976: var_8E = 0
  loc_FCF979: Exit Sub
  loc_FCF97A: ' Referenced from: FCF808
  loc_FCF980: If (var_8E = &HFF) Then
  loc_FCF989:   unk_529B54.RollbackTrans
  loc_FCF98E: End If
  loc_FCF98E: Proc_6_60_E63754(var_8E)
  loc_FCF993: Exit Sub
End Sub

Private Sub CMDSET_Click() '1250FAC
  'Data Table: 529B40
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_14C As Variant
  Dim var_118 As Variant
  Dim var_15C As Long
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  loc_1250A91: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_1250A9B:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_1250AE6:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F95078 & "RMCH")) Then
  loc_1250AF2:     Set var_A4 = Me.Txt
  loc_1250AF8:     Call 0.Method_CMDSET_Click0 (&H18, var_13C, CVar(CLng(&HB)))
  loc_1250B01:     var_D8 = CVar(CLng(var_86)) 'Long
  loc_1250B09:     var_F8 = CVar(CLng(3)) 'Long
  loc_1250B44:     LateIdCallSt
  loc_1250B77:     Set var_A4 = Me.Txt
  loc_1250B7D:     Call 0.Method_CMDSET_Click0 (CInt(8), var_13C, Me.FGrid, CVar(CStr(Format(CVar(var_13C), "0.00"))), 1)
  loc_1250BBE:     Proc_96_86_1AEE150(Me.FGrid, Me.Txt, &H18, CInt(&HB), CInt(3), CInt(7), var_13C)
  loc_1250BD7:     global_128 = &HFF
  loc_1250BDA:     GoTo loc_1250BDD
  loc_1250BDD:     ' Referenced from: 1250BDA
  loc_1250BDD:   End If
  loc_1250BE0: Next var_B8 'Integer
  loc_1250C0A: For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_180 'Integer
  loc_1250C14:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_1250C1C:   var_E8 = CVar(CLng(7)) 'Long
  loc_1250C47:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1250C4E:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1250C56:     var_E8 = CVar(CLng(3)) 'Long
  loc_1250C82:     var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1250C92:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1250C9A:     var_E8 = CVar(CLng(4)) 'Long
  loc_1250CC6:     var_9C = (var_9C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1250CD6:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_1250CDE:     var_14C = CVar(CLng(5)) 'Long
  loc_1250D00:     var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_1250D10:     var_128 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_1250D18:     Set var_A4 = Me.FGrid
  loc_1250D1E:     LateIdCallSt
  loc_1250D40:     If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_1250D47:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_1250D4F:       var_E8 = CVar(CLng(6)) 'Long
  loc_1250D54:       var_14C = "Dr"
  loc_1250D5E:       Set var_A4 = Me.FGrid
  loc_1250D64:       LateIdCallSt
  loc_1250D72:     Else
  loc_1250D7E:       If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_1250D85:         var_C8 = CVar(CLng(var_86)) 'Long
  loc_1250D8D:         var_E8 = CVar(CLng(6)) 'Long
  loc_1250D92:         var_14C = "Cr"
  loc_1250D9C:         Set var_A4 = Me.FGrid
  loc_1250DA2:         LateIdCallSt
  loc_1250DB0:       Else
  loc_1250DB4:         var_C8 = CVar(CLng(var_86)) 'Long
  loc_1250DBC:         var_E8 = CVar(CLng(6)) 'Long
  loc_1250DC1:         var_14C = vbNullString
  loc_1250DCB:         Set var_A4 = Me.FGrid
  loc_1250DD1:         LateIdCallSt
  loc_1250DDC:       End If
  loc_1250DDC:     End If
  loc_1250DDC:   End If
  loc_1250DDF: Next var_180 'Integer
  loc_1250DE8: Set var_1A0 = Me.Fgrid1
  loc_1250DEB: var_E8 = 0
  loc_1250DF7: var_14C = CVar(CLng(1)) 'Long
  loc_1250E25: var_118 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1250E2C: LateIdCallSt
  loc_1250E3D: var_E8 = 0
  loc_1250E49: var_14C = CVar(CLng(2)) 'Long
  loc_1250E77: var_118 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_1250E7E: LateIdCallSt
  loc_1250E8F: var_E8 = 0
  loc_1250E9B: var_14C = CVar(CLng(3)) 'Long
  loc_1250EBD: var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_1250ECD: var_128 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1250ED4: LateIdCallSt
  loc_1250EE7: var_15C = 0
  loc_1250EF3: var_1B0 = CVar(CLng(4)) 'Long
  loc_1250F1A: var_C8 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_1250F40: var_F8 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_1250F50: var_1D0 = CVar(CStr(IIf(var_F8, "Dr", IIf(var_9C, "Cr", vbNullString)))) 'String
  loc_1250F57: LateIdCallSt
  loc_1250F74: Set var_1A0 = Nothing 
  loc_1250F84: Me.FrmAdjust.Visible = False
  loc_1250F90: Set var_A4 = Me.FGrid
  loc_1250FA6: Set var_8C = Nothing
  loc_1250FA9: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_9 'F510D4
  'Data Table: 529B40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F50FCB: Me.DGRoomType.Visible = False
  loc_F50FEA: If (Me.RecordCount > 0) Then
  loc_F51029:   Set var_B4 = Me.Txt
  loc_F5102F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F51037:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5106A:   var_B0 = Me.Fields.Item("Name")
  loc_F51089:   Set var_B4 = Me.Txt
  loc_F5108F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F51097:   var_B8.Text = CStr(var_B0.Value)
  loc_F510AD: End If
  loc_F510B8: Set var_A8 = Me.Txt
  loc_F510BE: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4))
  loc_F510C6: var_B0.SetFocus
  loc_F510D2: Exit Sub
End Sub

Private Sub CmdPostChrg_UnknownEvent_9 '1143E80
  'Data Table: 529B40
  Dim var_E0 As String
  Dim var_1A0 As Double
  Dim var_138 As String
  Dim var_1A8 As Double
  Dim var_1B0 As Double
  Dim var_168 As Variant
  Dim var_124 As Variant
  Dim var_144 As String
  Dim unk_529B54 As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Integer
  Dim var_CC As Recordset15
  Dim var_13C As Field20
  Dim var_148 As String
  Dim var_140 As TextBox
  Dim var_134 As Variant
  loc_1143B2B: Call 0.Method_arg_2B0 (1)
  loc_1143B46: Set var_CC = 0(1)
  loc_1143B57: var_E0 = CStr(Txt.DispID_41)
  loc_1143B5F: var_1A0 = Val(var_E0)
  loc_1143B78: Set var_124 = 0(2)
  loc_1143B91: var_1A8 = Val(CStr(Txt.DispID_41))
  loc_1143BA2: Set var_13C = var_140(CInt(&HA))
  loc_1143BA8: Call 0.Method_CmdPostChrg_UnknownEvent_90 (var_144, var_1A8)
  loc_1143BBC: Proc_96_39_1055500(var_144)
  loc_1143BC1: var_1B0 = var_A8
  loc_1143BD4: var_168 = CVar(((frmmessageKey.TextBox.Tag - var_1A8) + var_1B0)) 'Double
  loc_1143BDB: var_178 = Round(var_168, 2)
  loc_1143C0A: If (var_178 < 0) Then
  loc_1143C26:   MsgBox("First Post Retention Or Refund", &H40, var_134, var_168, var_178)
  loc_1143C36:   Exit Sub
  loc_1143C37: End If
  loc_1143C55: Set var_CC = Me.Txt
  loc_1143C5B: Call 0.Method_CmdPostChrg_UnknownEvent_90 (CInt(&HA), var_124, var_E0, "Select isnull(bill_no,'') as Bill_NO,AmtDr from paycharge where (ContraDocId is NULL or contradocid='') and (ModeSet <>'S' OR mODESET IS null) and folionoDocid='")
  loc_1143C63: var_DC = var_124.Tag
  loc_1143C6C: var_138 = -1 & var_E0
  loc_1143C73: var_144 = CStr(Txt.DispID_41) & "'"
  loc_1143C7C: unk_529B54.Execute var_144, var_13C, var_1B0
  loc_1143C87: Set var_88 = var_13C
  loc_1143CB3: If (var_88.RecordCount > 0) Then
  loc_1143CBF:   var_88.Filter = "Bill_No='' "
  loc_1143CC4: End If
  loc_1143CD8: If (var_88.RecordCount <= 0) Then
  loc_1143CEE:   var_DC = "Bill Alredy Generated"
  loc_1143CF4:   MsgBox(var_DC, 0, var_134, var_168, var_178)
  loc_1143D04:   Exit Sub
  loc_1143D05: End If
  loc_1143D0B: var_A8 = 0
  loc_1143D28: var_E0 = "Select Max(IsNull(RoomCheckOutClearanceYN,'')) from Enviro where lOGSite_code='" & MemVar_1F95078
  loc_1143D38: unk_529B54.Execute var_E0 & "'", var_DC, -1
  loc_1143D40: var_CC = var_CC.Fields
  loc_1143D48: var_A8 = var_124.Item(var_124)
  loc_1143D50: var_13C = var_13C.Value
  loc_1143D77: If (var_134 = "Yes") Then
  loc_1143D98:   Set var_CC = Me.Txt
  loc_1143D9E:   Call 0.Method_CmdPostChrg_UnknownEvent_90 (CInt(&HA), var_124, var_E0, "Select * From RoomCheckOutStatus Where FolionoDocId='")
  loc_1143DA6:   var_DC = var_124.Tag
  loc_1143DAF:   var_138 = -1 & var_E0
  loc_1143DB6:   var_148 = var_E0 & "'" & "' And RoomCode='"
  loc_1143DC7:   Set var_13C = Me.Txt
  loc_1143DCD:   Call 0.Method_CmdPostChrg_UnknownEvent_90 (CInt(0), var_140, var_144)
  loc_1143DD5:   var_148 = var_140.Text
  loc_1143DEE:   unk_529B54.Execute var_1C0 & var_144 & "' And ChkOutClearanceYN='Y'", var_134, 
  loc_1143E2F:   If (var_1C0.RecordCount <= 0) Then
  loc_1143E38:     Call 0.Method_arg_50 (var_E0)
  loc_1143E59:     MsgBox("Room Check Out Clearance Is Still Pending.", &H10, CVar(var_E0), var_168, var_178)
  loc_1143E6E:     Set var_88 = Nothing
  loc_1143E71:     Exit Sub
  loc_1143E72:   End If
  loc_1143E72: End If
  loc_1143E77: Set var_88 = Nothing
  loc_1143E7A: Call Proc_64_48_1BB3988()
  loc_1143E7F: Exit Sub
End Sub

Private Sub CmdPlanBill_UnknownEvent_9 'E046D0
  'Data Table: 529B40
  loc_E046C5: global_126 = &HFF
  loc_E046C8: Call CmdPostChrg_UnknownEvent_9()
  loc_E046CD: Exit Sub
End Sub

Private Sub Command2_Click() '18E06B0
  'Data Table: 529B40
  Dim var_E0 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_168 As String
  Dim unk_529B54 As Connection15
  Dim var_9C As Recordset15
  Dim var_188 As Variant
  Dim var_18C As Variant
  Dim var_E4 As String
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_1B4 As Variant
  Dim var_1BC As TextBox
  Dim var_1C0 As String
  Dim var_1CC As String
  Dim var_1D0 As String
  Dim MemVar_1F950EC As Double
  Dim var_2F4 As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_2E4 As Variant
  Dim var_314 As Variant
  Dim var_3B4 As Variant
  Dim var_1B0 As Variant
  Dim unk_529B70 As Connection15
  Dim var_A8 As Long
  Dim var_418 As String
  Dim var_420 As String
  Dim var_B0 As Recordset15
  Dim var_41C As String
  Dim var_AC As Recordset15
  Dim var_1B8 As Variant
  Dim var_224 As Variant
  Dim var_42C As Fields15
  Dim var_274 As Variant
  Dim var_D8 As Double
  Dim var_CC As Recordset15
  Dim var_458 As Double
  loc_18DDD9A: Set var_DC = Me.Txt
  loc_18DDDA0: Call 0.Method_Command2_Click0 (CInt(&HA), var_E0)
  loc_18DDDA8: var_E4 = var_E0.Text
  loc_18DDDBF: If (var_E4 = vbNullString) Then
  loc_18DDDC2:   Exit Sub
  loc_18DDDC3: End If
  loc_18DDDE0: Proc_6_17_EAAE40(var_104, MemVar_1F95078, "Select  isnull(bill_no,'') as Bill_No,AmtDr from paycharge where LogSite_Code=")
  loc_18DDDE8: var_124 = var_188 & var_104 
  loc_18DDDF1: var_144 = var_124 & " AND (ContraDocId is NULL or contradocid='') and foliono=" 
  loc_18DDE03: Set var_DC = Me.Txt
  loc_18DDE09: Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DDE11: var_144 = var_E0.Text
  loc_18DDE19: var_154 = CVar(var_E4) 'String
  loc_18DDE1C: var_164 = -1 & var_154 
  loc_18DDE2A: unk_529B54.Execute CStr(var_164), var_18C, 
  loc_18DDE35: Set var_9C = var_18C
  loc_18DDE67: If (var_9C.RecordCount > 0) Then
  loc_18DDE73:   var_9C.Filter = "Bill_No='' and AmtDr<>0"
  loc_18DDE78: End If
  loc_18DDE7E: var_190 = var_9C.RecordCount
  loc_18DDE8C: If (var_190 > 0) Then
  loc_18DDEA2:   var_104 = "First Print Bill "
  loc_18DDEA8:   MsgBox(var_104, &H40, var_124, var_144, var_154)
  loc_18DDEB8:   Exit Sub
  loc_18DDEB9: End If
  loc_18DDED9: Proc_6_17_EAAE40(var_104, MemVar_1F95078, "Select distinct bill_no from paycharge where LogSite_Code=", var_1B0)
  loc_18DDEE1: var_124 = -1 & var_104 
  loc_18DDEEA: var_144 = var_124 & " AND foliono=" 
  loc_18DDEFC: Set var_DC = Me.Txt
  loc_18DDF02: Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DDF0A: var_144 = var_E0.Text
  loc_18DDF12: var_154 = CVar(var_E4) 'String
  loc_18DDF1E: var_188 = var_18C & var_154 & " and (Bill_NO<>'' and Bill_NO is not null)" 
  loc_18DDF2C: unk_529B54.Execute CStr(var_188), var_190, 
  loc_18DDF34:  = var_18C.RecordCount
  loc_18DDF5F: If (var_190 <= 0) Then
  loc_18DDF75:   var_104 = "First Print Bill "
  loc_18DDF7B:   MsgBox(var_104, &H40, var_124, var_144, var_154)
  loc_18DDF8B:   Exit Sub
  loc_18DDF8C: End If
  loc_18DDFA9: Proc_6_17_EAAE40(var_104, MemVar_1F95078, "Select * from enviro WHERE LOGSITE_CODE=")
  loc_18DDFB5: var_E4 = CStr(var_144 & var_104)
  loc_18DDFBF: unk_529B54.Execute var_E4, -1, var_DC
  loc_18DDFCA: Set var_9C = var_DC
  loc_18DDFF9: Proc_6_17_EAAE40(var_104, MemVar_1F95078, "Select distinct Bill_No from Paycharge where LogSite_Code=")
  loc_18DE001: var_124 = var_188 & var_104 
  loc_18DE00A: var_144 = var_124 & " AND FolioNo=" 
  loc_18DE01C: Set var_DC = Me.Txt
  loc_18DE022: Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DE032: var_154 = CVar(var_E4) 'String
  loc_18DE035: var_164 = -1 & var_154 
  loc_18DE043: unk_529B54.Execute CStr(var_18C & var_154), var_18C, 
  loc_18DE04E: Set var_C8 = var_18C
  loc_18DE086: var_E0 = Me.Fields.Item("ChkOutDate")
  loc_18DE0A5: Set var_18C = Me.Txt
  loc_18DE0AB: Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18DE0CF: Set var_1B8 = Me.Txt
  loc_18DE0D5: Call 0.Method_Command2_Click0 (CInt(&HA), var_1BC)
  loc_18DE102: If ((IsNull(CVar(var_E0)) And (var_1B4.Text <> vbNullString)) And (var_1BC.Text <> vbNullString)) Then
  loc_18DE113:   Set var_DC = Me.Txt
  loc_18DE119:   Call 0.Method_Command2_Click0 (CInt(9), var_E0)
  loc_18DE134:   Set var_18C = Me.Txt
  loc_18DE13A:   Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18DE171:   var_1CC = "Checking Out Person :" & var_E0.Text & vbCrLf & "RoomNo :" & var_1B4.Text
  loc_18DE17F:   var_104 = CVar(var_1CC & vbCrLf & "Are you Sure ?") 'String
  loc_18DE1B4:   If (MsgBox(var_104, &H21, var_124, var_E0.Text, var_154) = 1) Then
  loc_18DE1C5:     Set var_DC = Me.Txt
  loc_18DE1CB:     Call 0.Method_Command2_Click0 (CInt(1), var_E0)
  loc_18DE1D3:     var_E4 = var_E0.Text
  loc_18DE1EB:     If (CDate(var_E4) <= MemVar_1F950EC) Then
  loc_18DE1EE:       ' Referenced from: 18DE3B7
  loc_18DE1FB:       var_114 = "Select Sum(AmtDr)-Sum(AmtCr) as Bal from PayCharge where LogSite_Code="
  loc_18DE20B:       Proc_6_17_EAAE40(var_104, MemVar_1F95078, "Select distinct Bill_No from Paycharge where LogSite_Code=")
  loc_18DE213:       var_124 = var_188 & var_104 
  loc_18DE21C:       var_144 = var_124 & " and VType Not In ('ARRES','ADRES') and Foliono=" 
  loc_18DE22E:       Set var_DC = Me.Txt
  loc_18DE234:       Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DE23C:       var_144 = var_E0.Text
  loc_18DE244:       var_154 = CVar(var_E4) 'String
  loc_18DE247:       var_164 = -1 & var_154 
  loc_18DE255:       unk_529B54.Execute CStr(var_18C & var_154), var_18C, 
  loc_18DE295:       var_E0 = var_18C.Fields.Item("Bal")
  loc_18DE29D:       var_104 = CVar(var_E0) 'Address
  loc_18DE2A4:       Proc_6_39_E7D3A0(var_124)
  loc_18DE2AC:       var_114 = 0
  loc_18DE2BE:       If CBool(var_124 <> var_114) Then
  loc_18DE2D4:         var_104 = "Guest Balance is Not Zero"
  loc_18DE2F0:         If (MsgBox(var_104, &H41, var_124, var_144, var_154) = 1) Then
  loc_18DE305:           fdPaymentCharge.OpenMode = 1
  loc_18DE313:           fdPaymentCharge.ParentForm = "Check Out"
  loc_18DE326:           Set var_DC = Me.FrReference
  loc_18DE32C:           Call 0.Method_Command2_Click0 (CInt(0), var_E0)
  loc_18DE34C:           Set var_18C = New fdPaymentCharge.Txt
  loc_18DE352:           Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18DE35A:           fdPaymentCharge.Txt.Text = fdPaymentCharge.FrReference.Text
  loc_18DE37F:           Call fdPaymentCharge.Txt_Validate(CInt(0))
  loc_18DE38D:           Call 0.Method_arg_54 ("Bill Settlement", 0)
  loc_18DE3A5:           Call 0.Method_arg_2B0 (1, var_114)
  loc_18DE3AF:           Set var_8C = Nothing
  loc_18DE3B2:           Call Proc_64_56_14DF5AC(var_104)
  loc_18DE3B7:           GoTo loc_18DE1EE
  loc_18DE3BD:         Else
  loc_18DE3D0:           var_104 = "Guest Not Checked Out"
  loc_18DE3D6:           MsgBox(var_104, &H40, var_124, var_144, var_154)
  loc_18DE3E6:           Exit Sub
  loc_18DE3E7:         End If
  loc_18DE3EA:       Else
  loc_18DE3F0:         var_114 = 0
  loc_18DE41D:         unk_529B54.Execute "Select NCUR from enviro where Logsite_code='" & MemVar_1F95078 & "'", var_104, -1
  loc_18DE425:         var_DC = var_DC.Fields
  loc_18DE42D:         var_114 = var_E0.Item(var_E0)
  loc_18DE435:         var_18C = var_18C.Value
  loc_18DE43F:         MemVar_1F950EC = CDate(var_124)
  loc_18DE462:         unk_529B54.BeginTrans var_190
  loc_18DE47E:         var_124 = "hh"
  loc_18DE487:         var_104 = CVar(Proc_6_16_EF358C(MemVar_1F950EC)) 'String
  loc_18DE4C8:         Proc_6_7_F26918(var_224, MemVar_1F950EC, 1)
  loc_18DE4D8:         Proc_6_7_F26918(var_274, MemVar_1F950EC)
  loc_18DE4E8:         Proc_6_7_F26918(var_304, CVar(Proc_6_15_EF37AC(1)))
  loc_18DE4FB:         Set var_DC = Me.Txt
  loc_18DE501:         Call 0.Method_Command2_Click0 (CInt(&HA), var_E0)
  loc_18DE51C:         Set var_18C = Me.Txt
  loc_18DE522:         Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18DE52A:         var_168 = var_1B4.Text
  loc_18DE549:         var_154 = (Format(var_104, var_124) + ":")
  loc_18DE550:         var_1E4 = (var_154 + Format(CVar(Proc_6_16_EF358C(1, 1)), "nn"))
  loc_18DE554:         var_1F4 = "Update RoomOcc set chkouttime='" & var_1E4 
  loc_18DE590:         var_2E4 = var_1F4 & "',ChkOutDate=" & var_224 & ",UserchkoutDate=" & var_274 & ",ChkOutUser='" & CVar(MemVar_1F950C8) & "',Type='O',U_EntDt=" 
  loc_18DE5C6:         var_3B4 = var_2E4 & var_304 & ",U_AE='E' where Docid='" & CVar(var_E0.Tag) & "' and LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomNO='" 
  loc_18DE5E7:         unk_529B54.Execute CStr(var_3B4 & CVar(var_168) & "' and (Type='' or Type is NULL)"), var_414, -1
  loc_18DE657:         var_E4 = "Update RoomMast set ROOMSTAT='D' WHERE logsite_code='" & MemVar_1F95078
  loc_18DE65E:         var_1C0 = var_E4 & "' and CODE='"
  loc_18DE66F:         Set var_DC = Me.Txt
  loc_18DE675:         Call 0.Method_Command2_Click0 (CInt(0), var_E0, var_168, var_1C0, var_104)
  loc_18DE67D:         -1 = var_E0.Text
  loc_18DE696:         unk_529B54.Execute var_18C & var_168 & "' AND TYPE='RO'", var_1B8, var_124
  loc_18DE6D1:         Proc_6_7_F26918(var_104, MemVar_1F950EC, "Update PayCharge set SettleDate=")
  loc_18DE6D9:         var_124 = var_1F4 & var_104 
  loc_18DE6E2:         var_144 = var_124 & "where FolioNoDocid='" 
  loc_18DE6F4:         Set var_DC = Me.Txt
  loc_18DE6FA:         Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DE702:         var_144 = var_E0.Tag
  loc_18DE70D:         var_164 = -1 & CVar(var_E4) 
  loc_18DE737:         unk_529B54.Execute CStr(CVar(Proc_6_16_EF358C(1, 1)) & "' and LogSite_Code='" & CVar(MemVar_1F95078) & "'"), var_18C, 
  loc_18DE765:         If (MemVar_1F951D4 = "Y") Then
  loc_18DE76E:           var_114 = 0
  loc_18DE78D:           unk_529B70.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_104, -1
  loc_18DE795:           var_DC = var_DC.Fields
  loc_18DE79D:           var_114 = var_E0.Item(var_E0)
  loc_18DE7A5:           var_18C = var_18C.Value
  loc_18DE7AF:           var_A8 = CLng(var_124)
  loc_18DE7F3:           Set var_DC = Me.Txt
  loc_18DE7F9:           Call 0.Method_Command2_Click0 (CInt(0), var_E0, var_1C0, "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_A8) & ",'CHKOT','", var_104)
  loc_18DE801:           -1 = var_E0.Text
  loc_18DE811:           var_1D0 = var_42C & var_1C0 & "','"
  loc_18DE822:           Set var_18C = Me.Txt
  loc_18DE828:           Call 0.Method_Command2_Click0 (CInt(0), var_1B4, var_1CC)
  loc_18DE830:           var_1D0 = var_1B4.Text
  loc_18DE840:           var_420 = var_A8 & var_1CC & "','"
  loc_18DE851:           Set var_1B8 = Me.Txt
  loc_18DE857:           Call 0.Method_Command2_Click0 (CInt(9), var_1BC, var_41C)
  loc_18DE85F:           var_420 = var_1BC.Text
  loc_18DE878:           unk_529B70.Execute var_124 & var_41C & "',0)", , 
  loc_18DE8AC:         End If
  loc_18DE8B2:         unk_529B54.CommitTrans
  loc_18DE8D2:         var_168 = "Select TxtMsg,MobileNo from EmailSMSForward WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And Type='Check Out' And Len(MobileNo)>=10 And Len(TxtMsg)>0"
  loc_18DE8DB:         unk_529B54.Execute var_168, var_104, -1
  loc_18DE8E6:         Set var_B0 = var_DC
  loc_18DE90A:         If (var_B0.RecordCount > 0) Then
  loc_18DE944:           var_BC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("MobileNo"))))))
  loc_18DE962:           var_DC = var_B0.Fields
  loc_18DE972:           var_104 = CVar(var_DC.Item("TxtMsg")) 'Address
  loc_18DE98A:           var_B8 = CStr(Trim(CVar(Proc_6_38_E69628(var_104))))
  loc_18DE999:         End If
  loc_18DE9AD:         var_E4 = "Select CheckOutMsg,SendingMessageText from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_18DE9BD:         unk_529B54.Execute var_E4 & "'", var_104, -1
  loc_18DE9C8:         Set var_B0 = var_DC
  loc_18DE9EC:         If (var_B0.RecordCount > 0) Then
  loc_18DE9FE:           var_DC = var_B0.Fields
  loc_18DEA26:           var_C4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_DC.Item("SendingMessageText")), var_DC))))
  loc_18DEA4C:           var_E0 = var_B0.Fields.Item("CheckOutMsg")
  loc_18DEA6C:           var_B4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_E0)))))
  loc_18DEA7B:         End If
  loc_18DEA8F:         var_168 = "Select FB.Bill_No,FB.SettAmt,FB.FolionoDocId,R.RoomNo,R.GuestProf,GP.Name,GP.MobileNo,R.RoomRate,R.ChkOutDate,R.ChkOutTime,Q.DebitAmt,Q.CreditAmt,GP.Add1,GP.Add2,City.CityName From ((FomBillDetails FB Inner Join RoomOcc R On R.DocId=FB.FolioNoDocId And R.Type='O' And FB.Status='SETTLE') " & "Inner Join (select FolionoDocid,SUM(AmtDR) DebitAmt,SUM(AmtCr) CreditAmt from PayCharge where FolioNoDocid ='"
  loc_18DEAA6:         Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4, var_168)
  loc_18DEAAE:         var_104 = var_E0.Tag
  loc_18DEAB7:         var_1C0 = -1 & var_E4
  loc_18DEACC:         var_1D0 = var_1C0 & "' And Not (ModeSet='S' And PayCode<>'" & MemVar_1F95078 & "ROFF') Group By FolioNoDocid)Q On FB.FolioNoDocid=Q.FolioNoDocid Inner Join GuestProf GP On R.GuestProf=GP.Code And R.Type='O') Left Join City On City.CityCode=GP.City Where FB.FolioNoDocid='"
  loc_18DEADD:         Set var_18C = Me.Txt
  loc_18DEAE3:         Call 0.Method_Command2_Click0 (CInt(&HA), var_1B4, var_1CC)
  loc_18DEAEB:         var_1D0 = var_1B4.Tag
  loc_18DEB12:         unk_529B54.Execute var_1B8 & var_1CC & "' And FB.LogSite_Code='" & MemVar_1F95078 & "'", Me.Txt, 
  loc_18DEB1D:         Set var_AC = var_1B8
  loc_18DEB4F:         var_190 = var_AC.RecordCount
  loc_18DEB5D:         If (var_190 > 0) Then
  loc_18DEB79:           If ((var_C4 <> "Auto") And (Len(var_B4) <> 0)) Then
  loc_18DEC33:             var_1E4 = Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Add1"))))) & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Add2"))))) 
  loc_18DEC56:             var_C0 = Replace(var_C0, "<Address>", CStr(var_1E4 & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("CityName")))))), 1, -1, 0)
  loc_18DECAD:             var_124 = "dd/MMM/yyyy"
  loc_18DED0E:             var_1B0 = Format(CVar(var_AC.Fields.Item("ChkOutDate")), var_124) & " " & CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("ChkOutTime")), 1)) 
  loc_18DED21:             var_C0 = Replace(var_C0, "<Check Out Date>", CStr(var_1B0), 1, -1, 0)
  loc_18DED69:             Proc_6_39_E7D3A0(var_124, CVar(var_AC.Fields.Item("DebitAmt")))
  loc_18DEDAF:             var_C0 = Replace(var_C0, "<Debit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DEDE9:             Proc_6_39_E7D3A0(var_124, CVar(var_AC.Fields.Item("CreditAmt")), 1)
  loc_18DEE2F:             var_C0 = Replace(var_C0, "<Credit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DEE69:             Proc_6_39_E7D3A0(var_124, CVar(var_AC.Fields.Item("SettAmt")), 1)
  loc_18DEEAF:             var_C0 = Replace(var_C0, "<Bill Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DEEE9:             Proc_6_39_E7D3A0(var_124, CVar(var_AC.Fields.Item("DebitAmt")), 1, 1)
  loc_18DEF2F:             var_C0 = Replace(var_C0, "<Debit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DEF69:             Proc_6_39_E7D3A0(var_124, CVar(var_AC.Fields.Item("CreditAmt")), 1, 1)
  loc_18DEFAF:             var_C0 = Replace(var_C0, "<Credit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DF00E:             var_C0 = Replace(var_C0, "<Bill Number>", Proc_6_38_E69628(CVar(var_AC.Fields.Item("Bill_no")), 1, 1), 1, -1, 0)
  loc_18DF072:             var_C0 = Replace(var_C0, "<Guest Full Name>", CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name")), 1)))), 1, -1, 0)
  loc_18DF0AC:             var_124 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name")), 1)) 'String
  loc_18DF0CE:             var_1B4 = var_AC.Fields.Item("Name")
  loc_18DF179:             var_254 = (InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name"))))), " ", 0) - 1)
  loc_18DF17D:             var_2F4 = var_1E4 & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("CityName"))))) 'Variant
  loc_18DF1AE:             var_314 = IIf((InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_1B4)))), " ", 0) <> 0), var_2F4, Len(Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name")))))))
  loc_18DF1E4:             var_C0 = Replace(var_C0, "<Guest First Name>", CStr(Left(Trim(var_124), CLng(var_314))), 1, -1, 0)
  loc_18DF246:             var_168 = Proc_6_38_E69628(CVar(var_AC.Fields.Item("RoomNo")))
  loc_18DF269:             var_C0 = Replace(var_C0, "<Room Number>", var_168, 1, -1, 0)
  loc_18DF290:             var_E0 = var_AC.Fields.Item("RoomRate")
  loc_18DF298:             var_104 = CVar(var_E0) 'Address
  loc_18DF29F:             Proc_6_39_E7D3A0(var_124, var_104)
  loc_18DF2E5:             var_C0 = Replace(var_C0, "<Room Tariff>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DF311:             If (InStr(1, var_B4, "<Room Discount>", 0) > 0) Then
  loc_18DF322:               Set var_DC = Me.Txt
  loc_18DF328:               Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_168)
  loc_18DF330:               1 = var_E0.Tag
  loc_18DF33B:               var_114 = 0
  loc_18DF358:               var_E4 = "Select IsNull(Sum(AmtCr)-Sum(AmtDr),0) from Paycharge Where PayCode In ('" & MemVar_1F95078
  loc_18DF376:               unk_529B54.Execute CStr(Format(var_124, "0.00")) & "DISC') And FolioNoDocid='" & var_168 & "'", var_104, -1
  loc_18DF37E:               var_18C = var_18C.Fields
  loc_18DF386:               var_114 = var_1B4.Item(var_1B4)
  loc_18DF38E:               var_1B8 = var_1B8.Value
  loc_18DF397:               var_D8 = CSng(var_124)
  loc_18DF3CA:               var_104 = "0.00"
  loc_18DF3DB:               var_124 = Format(var_D8, var_104)
  loc_18DF413:               var_E4 = CStr(IIf((var_D8 <> CDbl(0)), var_124, vbNullString))
  loc_18DF422:               var_C0 = Replace(var_C0, "<Room Discount>", var_E4, 1, -1, 0)
  loc_18DF435:             End If
  loc_18DF44D:             If (InStr(1, var_B4, "<Payment Mode>", 0) > 0) Then
  loc_18DF46E:               Set var_DC = Me.Txt
  loc_18DF474:               Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4, "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ModeSet='S' and ST.FolionoDocid='", var_104, -1, var_18C)
  loc_18DF47C:               1 = var_E0.Tag
  loc_18DF495:               unk_529B54.Execute 1 & var_E4 & "' And AmtCr>0", var_D8, var_124
  loc_18DF4A0:               Set var_CC = var_18C
  loc_18DF4BB:               var_D0 = vbNullString
  loc_18DF4BE:               ' Referenced from:   18DF51E
  loc_18DF4CD:               If Not(var_CC.EOF) Then
  loc_18DF506:                 var_D0 = 1 & Proc_6_38_E69628(CVar(var_CC.Fields.Item("PayType")), var_D0) & ", "
  loc_18DF519:                 var_CC.MoveNext
  loc_18DF51E:                 GoTo loc_18DF4BE
  loc_18DF521:               End If
  loc_18DF526:               Set var_CC = Nothing
  loc_18DF554:               var_164 = Trim(var_D0)
  loc_18DF56A:               var_1B0 = (Len(var_164) - 1)
  loc_18DF5A0:               var_234 = Left(Trim(var_D0), CLng(IIf((Len(Trim(var_D0)) > 0), InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_1B4)))), " ", 0), 0)))
  loc_18DF5DC:               var_C0 = Replace(var_C0, "<Payment Mode>", CStr(var_234), 1, -1, 0)
  loc_18DF5DF:             End If
  loc_18DF5DF:           End If
  loc_18DF645:           If CBool((Len(Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("MobileNo")))))) >= 10) And (Len(var_B4) <> 0)) Then
  loc_18DF6A1:             Proc_6_39_E7D3A0(var_164, CVar(var_AC.Fields.Item("Bill_no")))
  loc_18DF6B2:             var_458 = Val(CStr(var_164))
  loc_18DF749:             var_274 = Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name")))))
  loc_18DF77C:             var_2C4 = Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("RoomNo")))))
  loc_18DF7A7:             Proc_6_39_E7D3A0(var_2F4, CVar(var_AC.Fields.Item("SettAmt")))
  loc_18DF7AF:             var_41C = "Check Out"
  loc_18DF809:             Proc_233_5_11B7BF4(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("FolioNoDocid")))))), "CHKOT", CLng(var_458), 0, CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("GuestProf")), var_458)))), CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("MobileNo")))))), vbNullString)
  loc_18DF85D:           End If
  loc_18DF860:           var_C0 = var_B8
  loc_18DF876:           If ((var_C4 <> "Auto") And (Len(var_C0) <> 0)) Then
  loc_18DF930:             var_1E4 = Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Add1")), var_C0, MemVar_1F950C8, CStr(var_274)))) & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Add2")), CStr(var_2C4), CSng(var_2F4)))) 
  loc_18DF953:             var_C0 = Replace(var_C0, "<Address>", CStr(var_1E4 & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("CityName")), var_41C)))), 1, -1, 0)
  loc_18DF9AA:             var_124 = "dd/MMM/yyyy"
  loc_18DFA0B:             var_1B0 = Format(CVar(var_AC.Fields.Item("ChkOutDate")), var_124) & " " & CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("ChkOutTime")), 1)) 
  loc_18DFA1E:             var_C0 = Replace(var_C0, "<Check Out Date>", CStr(var_1B0), 1, -1, 0)
  loc_18DFA66:             Proc_6_39_E7D3A0(var_124, CVar(var_AC.Fields.Item("DebitAmt")))
  loc_18DFAAC:             var_C0 = Replace(var_C0, "<Debit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DFAE6:             Proc_6_39_E7D3A0(var_124, CVar(var_AC.Fields.Item("CreditAmt")), 1)
  loc_18DFB2C:             var_C0 = Replace(var_C0, "<Credit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DFB66:             Proc_6_39_E7D3A0(var_124, CVar(var_AC.Fields.Item("SettAmt")), 1, 1)
  loc_18DFBAC:             var_C0 = Replace(var_C0, "<Bill Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DFC0B:             var_C0 = Replace(var_C0, "<Bill Number>", Proc_6_38_E69628(CVar(var_AC.Fields.Item("Bill_no")), 1, 1), 1, -1, 0)
  loc_18DFC6F:             var_C0 = Replace(var_C0, "<Guest Full Name>", CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name")), 1)))), 1, -1, 0)
  loc_18DFCA9:             var_124 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name")), 1)) 'String
  loc_18DFCCB:             var_1B4 = var_AC.Fields.Item("Name")
  loc_18DFD48:             var_2A4 = Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name")))))
  loc_18DFD76:             var_254 = (InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name"))))), " ", 0) - 1)
  loc_18DFDAB:             var_314 = IIf((InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_1B4)))), " ", 0) <> 0), var_1E4 & ", " & Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("CityName")), var_41C))), Len(var_2A4))
  loc_18DFDE1:             var_C0 = Replace(var_C0, "<Guest First Name>", CStr(Left(Trim(var_124), CLng(var_314))), 1, -1, 0)
  loc_18DFE43:             var_168 = Proc_6_38_E69628(CVar(var_AC.Fields.Item("RoomNo")))
  loc_18DFE66:             var_C0 = Replace(var_C0, "<Room Number>", var_168, 1, -1, 0)
  loc_18DFE8D:             var_E0 = var_AC.Fields.Item("RoomRate")
  loc_18DFE95:             var_104 = CVar(var_E0) 'Address
  loc_18DFE9C:             Proc_6_39_E7D3A0(var_124, var_104)
  loc_18DFEE2:             var_C0 = Replace(var_C0, "<Room Tariff>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DFF0E:             If (InStr(1, var_C0, "<Room Discount>", 0) > 0) Then
  loc_18DFF1F:               Set var_DC = Me.Txt
  loc_18DFF25:               Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_168)
  loc_18DFF2D:               1 = var_E0.Tag
  loc_18DFF38:               var_114 = 0
  loc_18DFF55:               var_E4 = "Select IsNull(Sum(AmtCr)-Sum(AmtDr),0) from Paycharge Where PayCode In ('" & MemVar_1F95078
  loc_18DFF73:               unk_529B54.Execute CStr(Format(var_124, "0.00")) & "DISC') And FolioNoDocid='" & var_168 & "'", var_104, -1
  loc_18DFF7B:               var_18C = var_18C.Fields
  loc_18DFF83:               var_114 = var_1B4.Item(var_1B4)
  loc_18DFF8B:               var_1B8 = var_1B8.Value
  loc_18DFF94:               var_D8 = CSng(var_124)
  loc_18DFFC7:               var_104 = "0.00"
  loc_18DFFD8:               var_124 = Format(var_D8, var_104)
  loc_18E0010:               var_E4 = CStr(IIf((var_D8 <> CDbl(0)), var_124, vbNullString))
  loc_18E001F:               var_C0 = Replace(var_C0, "<Room Discount>", var_E4, 1, -1, 0)
  loc_18E0032:             End If
  loc_18E004A:             If (InStr(1, var_C0, "<Payment Mode>", 0) > 0) Then
  loc_18E006B:               Set var_DC = Me.Txt
  loc_18E0071:               Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4, "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ModeSet='S' and ST.FolionoDocid='", var_104, -1, var_18C)
  loc_18E0079:               1 = var_E0.Tag
  loc_18E0092:               unk_529B54.Execute 1 & var_E4 & "' And AmtCr>0", var_D8, var_124
  loc_18E009D:               Set var_CC = var_18C
  loc_18E00B8:               var_D0 = vbNullString
  loc_18E00BB:               ' Referenced from:   18E011B
  loc_18E00CA:               If Not(var_CC.EOF) Then
  loc_18E00FC:                 var_168 = 1 & Proc_6_38_E69628(CVar(var_CC.Fields.Item("PayType")), var_D0)
  loc_18E0103:                 var_D0 = var_168 & ", "
  loc_18E0116:                 var_CC.MoveNext
  loc_18E011B:                 GoTo loc_18E00BB
  loc_18E011E:               End If
  loc_18E0123:               Set var_CC = Nothing
  loc_18E0151:               var_164 = Trim(var_D0)
  loc_18E0167:               var_1B0 = (Len(var_164) - 1)
  loc_18E019D:               var_234 = Left(Trim(var_D0), CLng(IIf((Len(Trim(var_D0)) > 0), InStr(1, Trim(CVar(Proc_6_38_E69628(CVar(var_1B4)))), " ", 0), 0)))
  loc_18E01D9:               var_C0 = Replace(var_C0, "<Payment Mode>", CStr(var_234), 1, -1, 0)
  loc_18E01DC:             End If
  loc_18E01DC:           End If
  loc_18E01F1:           If ((Len(var_BC) >= &HA) And (Len(var_C0) <> 0)) Then
  loc_18E020B:             var_E0 = var_AC.Fields.Item("FolioNoDocid")
  loc_18E021C:             var_124 = CVar(Proc_6_38_E69628(CVar(var_E0))) 'String
  loc_18E0222:             var_144 = Trim(var_124)
  loc_18E023E:             var_1B4 = var_AC.Fields.Item("Bill_no")
  loc_18E0246:             var_154 = CVar(var_1B4) 'Address
  loc_18E024D:             Proc_6_39_E7D3A0(var_164, var_154)
  loc_18E0255:             var_E4 = CStr(var_164)
  loc_18E025E:             var_458 = Val(var_E4)
  loc_18E0270:             var_1B8 = var_AC.Fields
  loc_18E02C2:             var_224 = Trim(CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Name")))))
  loc_18E02EF:             var_254 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("RoomNo")))) 'String
  loc_18E02F5:             var_274 = Trim(var_254)
  loc_18E0320:             Proc_6_39_E7D3A0(var_2A4, CVar(var_AC.Fields.Item("SettAmt")))
  loc_18E0328:             var_418 = "Check Out"
  loc_18E037D:             Proc_233_5_11B7BF4(CStr(var_144), "CHKOT", CLng(var_458), 0, CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_1B8.Item("GuestProf")), var_458)))), var_BC, vbNullString)
  loc_18E03C7:           End If
  loc_18E03C7:         End If
  loc_18E03CC:         Set var_B0 = Nothing
  loc_18E03D4:         Set var_AC = Nothing
  loc_18E03D7:         Call Proc_64_53_F11814(var_C0, MemVar_1F950C8, CStr(var_224), CStr(var_274))
  loc_18E03DC:       End If
  loc_18E03DF:     Else
  loc_18E03F8:       MsgBox("InValid Check Out Date", 0, var_124, var_144, var_154)
  loc_18E0408:       Exit Sub
  loc_18E0409:     End If
  loc_18E040C:   Else
  loc_18E0413:     Call Txt_GotFocus(CInt(0))
  loc_18E0418:   End If
  loc_18E041B: Else
  loc_18E0429:   Set var_DC = Me.Txt
  loc_18E042F:   Call 0.Method_Command2_Click0 (CInt(0), var_E0, var_E4)
  loc_18E0437:   CSng(var_2A4) = var_E0.Text
  loc_18E0452:   Set var_18C = Me.Txt
  loc_18E0458:   Call 0.Method_Command2_Click0 (CInt(&HA), var_1B4, var_168)
  loc_18E0460:   (var_E4 <> vbNullString) = var_1B4.Text
  loc_18E0480:   If (var_418 And (var_168 <> vbNullString)) Then
  loc_18E0496:     var_104 = "Want to Cancel Check Out ?"
  loc_18E04B2:     If (MsgBox(var_104, &H24, var_124, var_144, var_154) = 6) Then
  loc_18E04D8:       var_E4 = "Select Count(*) from RoomOcc where logsite_code='" & MemVar_1F95078
  loc_18E04F0:       Set var_DC = Me.Txt
  loc_18E04F6:       Call 0.Method_Command2_Click0 (CInt(0), var_E0, var_168, var_E4 & "' and RoomNO='", var_104, -1)
  loc_18E0517:       unk_529B54.Execute var_1B4 & var_168 & "' and CHkoutDate is NULL", 0, var_1B8
  loc_18E051F:       var_124 = var_E0.Text.Fields
  loc_18E0527:        = var_1B4.Item(1)
  loc_18E052F:        = var_1B8.Value
  loc_18E0560:       If (var_124 > 0) Then
  loc_18E057C:         MsgBox("Sorry! Room Already Occupied", &H40, var_124, var_144, var_154)
  loc_18E058C:         Exit Sub
  loc_18E058D:       End If
  loc_18E0596:       unk_529B54.BeginTrans var_190
  loc_18E05B8:       Proc_6_7_F26918(var_124, CVar(Proc_6_15_EF37AC("Update RoomOcc set chkouttime='',ChkOutDate=NULL,Type='',U_EntDt=", var_254)))
  loc_18E05C0:       var_144 = -1 & var_124 
  loc_18E05C9:       var_154 = var_144 & ",U_AE='E' where Type='O' AND FolioNo=" 
  loc_18E05DB:       Set var_DC = Me.Txt
  loc_18E05E1:       Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18E05E9:       var_154 = var_E0.Text
  loc_18E0622:       Set var_18C = Me.Txt
  loc_18E0628:       Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18E0648:       var_1C0 = CStr(var_1B8 & CVar(var_E4) & " and logsite_code='" & CVar(MemVar_1F95078) & "' and  RoomNO='" & CVar(var_1B4.Text) & "'")
  loc_18E0652:       unk_529B54.Execute var_1C0, , 
  loc_18E068A:       unk_529B54.CommitTrans
  loc_18E068F:     End If
  loc_18E068F:     GoTo loc_18E0692
  loc_18E0692:     ' Referenced from:   18E068F
  loc_18E0692:   End If
  loc_18E0692: End If
  loc_18E069D: Me.Requery -1
  loc_18E06A9: Call Txt_GotFocus(CInt(0))
  loc_18E06AE: Exit Sub
End Sub

Private Sub cmdProvisional_UnknownEvent_9 '10A0300
  'Data Table: 529B40
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_88 As Fields15
  loc_10A005A: Set var_88 = Me.Txt
  loc_10A0060: Call 0.Method_cmdProvisional_UnknownEvent_90 (CInt(0), var_8C)
  loc_10A0083: Set var_94 = Me.Txt
  loc_10A0089: Call 0.Method_cmdProvisional_UnknownEvent_90 (CInt(&HA), var_98)
  loc_10A00B1: If ((var_8C.Text <> vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_10A00BA:   Me.MoveFirst
  loc_10A00D6:   If (Me.RecordCount > 0) Then
  loc_10A00D9:     ' Referenced from: 10A02F9
  loc_10A00EB:     If Not(Me.EOF) Then
  loc_10A012D:       If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_10A0149:         MsgBox("Sorry", 0, var_E4, var_104, var_124)
  loc_10A0159:         Exit Sub
  loc_10A015D:       Else
  loc_10A019C:         If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_10A01DE:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_10A01E1:             Call Proc_64_50_18E5A8C()
  loc_10A01E9:           Else
  loc_10A0218:             If (MsgBox("Print Bill ?", &H24, var_E4, var_104, var_124) = 6) Then
  loc_10A021B:               Call Proc_64_50_18E5A8C()
  loc_10A0223:             Else
  loc_10A0223:               Exit Sub
  loc_10A0224:             End If
  loc_10A0224:           End If
  loc_10A0227:         Else
  loc_10A0266:           If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL DOS 80 COL PLAIN") Then
  loc_10A02A8:             If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_10A02AB:               Call Proc_64_51_1A410D0()
  loc_10A02B3:             Else
  loc_10A02E2:               If (MsgBox("Print Bill ?", &H24, var_E4, var_104, var_124) = 6) Then
  loc_10A02E5:                 Call Proc_64_51_1A410D0()
  loc_10A02ED:               Else
  loc_10A02ED:                 Exit Sub
  loc_10A02EE:               End If
  loc_10A02EE:             End If
  loc_10A02EE:           End If
  loc_10A02EE:         End If
  loc_10A02EE:       End If
  loc_10A02F4:       Me.MoveNext
  loc_10A02F9:       GoTo loc_10A00D9
  loc_10A02FC:     End If
  loc_10A02FC:   End If
  loc_10A02FC: End If
  loc_10A02FC: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63BFC
  'Data Table: 529B40
  loc_E63BCC: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_E63BCF:   Call DGRoomType_UnknownEvent_9()
  loc_E63BD4: End If
  loc_E63BF0: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E63BF3:   Call DGRoomNo_UnknownEvent_9()
  loc_E63BF8: End If
  loc_E63BF8: Exit Sub
  loc_E63BF9: Result  End Sub 'Long
End Sub

Public Function MasterFormExitGet() '52B5C8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '52B5D7
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '52B5E6
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '52B5F5
  mVType = Value
End Sub

Public Property Get OpenMode() 'E03F90
  'Data Table: 529B40
  loc_E03F89: OpenMode = global_68
End Sub

Public Property Let OpenMode(vNewValue) 'E030E8
  'Data Table: 529B40
  loc_E030E2: global_68 = vNewValue
  loc_E030E5: Exit Sub
End Sub

Public Sub Proc_64_48_1BB3988
  'Data Table: 529B40
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_529B54 As Connection15
  Dim var_C0 As Variant
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim var_F0 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_C4 As Variant
  Dim var_1B4 As Variant
  Dim var_338 As Double
  Dim var_214 As Variant
  Dim var_340 As Double
  Dim var_22C As TextBox
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_27C As MSHFlexGrid
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_2DC As MSHFlexGrid
  Dim var_104 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim var_1C4 As String
  Dim var_298 As String
  Dim var_E0 As Variant
  Dim unk_529B70 As Connection15
  Dim var_88 As Long
  Dim var_358 As Variant
  Dim var_90 As Recordset15
  loc_1BAE50B: var_98 = "Select * from Enviro where lOGSite_code='" & MemVar_1F95078 & "'"
  loc_1BAE514: unk_529B54.Execute var_98, var_B8, -1
  loc_1BAE51F: Set var_90 = var_BC
  loc_1BAE543: Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0)
  loc_1BAE566: Set var_C4 = Me.Txt
  loc_1BAE56C: Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C8, var_98)
  loc_1BAE574: (var_C0.Text <> vbNullString) = var_C8.Text
  loc_1BAE5AC: If ((Me.Txt And (var_98 <> vbNullString)) And (Me.RecordCount > 0)) Then
  loc_1BAE5B5:   Me.MoveFirst
  loc_1BAE5C3:   If (global_128 = &HFF) Then
  loc_1BAE5EB:     For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_D0 'Integer
  loc_1BAE5F5:       var_A8 = CVar(CLng(var_8A)) 'Long
  loc_1BAE5FD:       var_F0 = CVar(CLng(7)) 'Long
  loc_1BAE628:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1BAE62F:         var_A8 = CVar(CLng(var_8A)) 'Long
  loc_1BAE637:         var_F0 = CVar(CLng(4)) 'Long
  loc_1BAE646:         var_B8 = Me.FGrid.TextMatrix)
  loc_1BAE660:         var_114 = CVar(CLng(var_8A)) 'Long
  loc_1BAE668:         var_134 = CVar(CLng(3)) 'Long
  loc_1BAE671:         Set var_C0 = Me.FGrid
  loc_1BAE677:         var_154 = var_C0.TextMatrix)
  loc_1BAE691:         var_174 = CVar(CLng(var_8A)) 'Long
  loc_1BAE699:         var_194 = CVar(CLng(&HC)) 'Long
  loc_1BAE6BB:         var_338 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BAE6D3:         Set var_C8 = Me.FGrid
  loc_1BAE6EC:         var_340 = Val(CStr(var_C8.TextMatrix)))
  loc_1BAE6FD:         Set var_228 = Me.Txt
  loc_1BAE703:         Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_22C, var_230, var_340, CVar(CLng(&HC)), CVar(CLng(var_8A)), var_338)
  loc_1BAE70B:         var_194 = var_22C.Tag
  loc_1BAE714:         var_248 = CVar(CLng(var_8A)) 'Long
  loc_1BAE71C:         var_268 = CVar(CLng(7)) 'Long
  loc_1BAE725:         Set var_27C = Me.FGrid
  loc_1BAE73B:         var_2A8 = CVar(CLng(var_8A)) 'Long
  loc_1BAE743:         var_2C8 = CVar(CLng(8)) 'Long
  loc_1BAE7A7:         var_1C4 = "UPDATE PAYCHARGE SET AMTCR=" & CStr(Val(CStr(var_B8))) & ", AMTDR=" & CStr(Val(CStr(var_154))) & ",BillAmount=" & CStr(var_338)
  loc_1BAE7DA:         var_298 = var_1C4 & ",OnAmt=" & CStr(var_340) & " WHERE FOLIONODOCID='" & var_230 & "' AND DOCID='" & CStr(var_27C.TextMatrix))
  loc_1BAE7F6:         unk_529B54.Execute var_298 & "' AND sNO=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_31C, -1
  loc_1BAE856:       End If
  loc_1BAE859:     Next var_D0 'Integer
  loc_1BAE85E:   End If
  loc_1BAE866:   If (MemVar_1F951D4 = "Y") Then
  loc_1BAE86F:     var_E0 = 0
  loc_1BAE88E:     unk_529B70.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_B8, -1
  loc_1BAE896:     var_BC = var_BC.Fields
  loc_1BAE89E:     var_E0 = var_C0.Item(var_C0)
  loc_1BAE8A6:     var_C4 = var_C4.Value
  loc_1BAE8B0:     var_88 = CLng(var_154)
  loc_1BAE8C3:   End If
  loc_1BAE902:   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_1BAE922:     var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BAE944:     If (var_C0.Value = "Yes") Then
  loc_1BAE947:       Call Proc_64_49_1268C08(var_88)
  loc_1BAE955:       Set var_BC = Me.CmdPostChrg
  loc_1BAE95B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAE96C:       Set var_BC = Me.CmdPlanBill
  loc_1BAE972:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAE982:       If (MemVar_1F951D4 = "Y") Then
  loc_1BAE9A5:         var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAE9B3:         Set var_BC = Me.Txt
  loc_1BAE9B9:         Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAE9C8:         var_154 = Trim(CVar(var_C0))
  loc_1BAE9D0:         var_214 = -1 & var_154 
  loc_1BAE9E6:         Set var_C4 = Me.Txt
  loc_1BAE9EC:         Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_C8.TextMatrix) & "','")
  loc_1BAEA1B:         Set var_228 = Me.Txt
  loc_1BAEA21:         Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C)
  loc_1BAEA4F:         unk_529B70.Execute CStr(var_27C & Trim(CVar(var_C8)) & "','" & Trim(CVar(var_22C)) & "',0)"), var_154, 
  loc_1BAEA87:       End If
  loc_1BAEA87:       Call Proc_64_61_E7F070()
  loc_1BAEA8F:     Else
  loc_1BAEABE:       If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_C8.TextMatrix)) = 6) Then
  loc_1BAEAC1:         Call Proc_64_49_1268C08()
  loc_1BAEACF:         Set var_BC = Me.CmdPostChrg
  loc_1BAEAD5:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAEAE6:         Set var_BC = Me.CmdPlanBill
  loc_1BAEAEC:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAEAFC:         If (MemVar_1F951D4 = "Y") Then
  loc_1BAEB1F:           var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAEB2D:           Set var_BC = Me.Txt
  loc_1BAEB33:           Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4)
  loc_1BAEB60:           Set var_C4 = Me.Txt
  loc_1BAEB66:           Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAEB7D:           var_358 = -1 & Trim(CVar(var_C8)) 
  loc_1BAEB95:           Set var_228 = Me.Txt
  loc_1BAEB9B:           Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C)
  loc_1BAEBC9:           unk_529B70.Execute CStr(var_27C & Trim(CVar(var_C8)) & "','" & Trim(CVar(var_22C)) & "',0)"), var_27C, 
  loc_1BAEC01:         End If
  loc_1BAEC01:         Call Proc_64_61_E7F070()
  loc_1BAEC09:       Else
  loc_1BAEC09:         Exit Sub
  loc_1BAEC0A:       End If
  loc_1BAEC0A:     End If
  loc_1BAEC0D:   Else
  loc_1BAEC4C:     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_1BAEC6C:       var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BAEC8E:       If (var_C0.Value = "Yes") Then
  loc_1BAEC9F:         Set var_BC = Me.Txt
  loc_1BAECA5:         Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BAECAD:         var_94 = var_C0.Tag
  loc_1BAECB6:         Set var_27C = Me.FGrid
  loc_1BAECCE:         Set var_C4 = Me.Txt
  loc_1BAECD4:         Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BAED1E:         Set var_22C = Me.Fgrid1
  loc_1BAED34:         Proc_96_49_1C4870C(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAED63:         Set var_BC = Me.Txt
  loc_1BAED69:         Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAED71:         2 = var_C0.Tag
  loc_1BAED8C:         Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAEDAB:         Set var_BC = Me.CmdPostChrg
  loc_1BAEDB1:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAEDC2:         Set var_BC = Me.CmdPlanBill
  loc_1BAEDC8:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAEDD8:         If (MemVar_1F951D4 = "Y") Then
  loc_1BAEDFB:           var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAEE09:           Set var_BC = Me.Txt
  loc_1BAEE0F:           Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAEE1E:           var_154 = Trim(CVar(var_C0))
  loc_1BAEE26:           var_214 = -1 & var_154 
  loc_1BAEE3C:           Set var_C4 = Me.Txt
  loc_1BAEE42:           Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAEE71:           Set var_228 = Me.Txt
  loc_1BAEE77:           Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAEEA5:           unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAEEDD:         End If
  loc_1BAEEDD:         Call Proc_64_61_E7F070()
  loc_1BAEEE5:       Else
  loc_1BAEF14:         If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAEF25:           Set var_BC = Me.Txt
  loc_1BAEF2B:           Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BAEF33:           var_94 = var_C0.Tag
  loc_1BAEF3C:           Set var_27C = Me.FGrid
  loc_1BAEF54:           Set var_C4 = Me.Txt
  loc_1BAEF5A:           Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BAEFA4:           Set var_22C = Me.Fgrid1
  loc_1BAEFBA:           Proc_96_49_1C4870C(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAEFE9:           Set var_BC = Me.Txt
  loc_1BAEFEF:           Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAEFF7:           2 = var_C0.Tag
  loc_1BAF012:           Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAF031:           Set var_BC = Me.CmdPostChrg
  loc_1BAF037:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAF048:           Set var_BC = Me.CmdPlanBill
  loc_1BAF04E:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAF05E:           If (MemVar_1F951D4 = "Y") Then
  loc_1BAF081:             var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAF08F:             Set var_BC = Me.Txt
  loc_1BAF095:             Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAF0AC:             var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAF0C2:             Set var_C4 = Me.Txt
  loc_1BAF0C8:             Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAF0F7:             Set var_228 = Me.Txt
  loc_1BAF0FD:             Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAF12B:             unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAF163:           End If
  loc_1BAF163:           Call Proc_64_61_E7F070()
  loc_1BAF16B:         Else
  loc_1BAF16B:           Exit Sub
  loc_1BAF16C:         End If
  loc_1BAF16C:       End If
  loc_1BAF16F:     Else
  loc_1BAF1AE:       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER NEW") Then
  loc_1BAF1F0:         If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1BAF20A:           var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BAF22C:           If (Proc_6_38_E69628(CVar(var_C0)) = "Yes") Then
  loc_1BAF23D:             Set var_BC = Me.Txt
  loc_1BAF243:             Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BAF24B:             var_94 = var_C0.Tag
  loc_1BAF26C:             Set var_C4 = Me.Txt
  loc_1BAF272:             Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BAF27A:             var_104 = var_C8.Text
  loc_1BAF288:             Set var_2DC = Nothing 
  loc_1BAF292:             Set var_27C = Me.GuestImage
  loc_1BAF29B:             var_15C = "O"
  loc_1BAF2EB:             Proc_96_64_1DB2C10(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BAF315:           Else
  loc_1BAF323:             Set var_BC = Me.Txt
  loc_1BAF329:             Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAF331:             global_126 = var_C0.Tag
  loc_1BAF352:             Set var_C4 = Me.Txt
  loc_1BAF358:             Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8, var_104, global_120)
  loc_1BAF360:             var_15C = var_C8.Text
  loc_1BAF36E:             Set var_2DC = Nothing 
  loc_1BAF378:             Set var_27C = Me.GuestImage
  loc_1BAF381:             var_15C = "O"
  loc_1BAF3BB:             Set var_22C = Me.Fgrid1
  loc_1BAF3D1:             Proc_96_59_1F06E50(var_94, Me.FGrid, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BAF3F8:           End If
  loc_1BAF406:           Set var_BC = Me.Txt
  loc_1BAF40C:           Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BAF414:           var_15C = var_C0.Tag
  loc_1BAF42F:           Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), var_27C, var_2DC)
  loc_1BAF44E:           Set var_BC = Me.CmdPostChrg
  loc_1BAF454:           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAF464:           If (MemVar_1F951D4 = "Y") Then
  loc_1BAF487:             var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAF495:             Set var_BC = Me.Txt
  loc_1BAF49B:             Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAF4AA:             var_154 = Trim(CVar(var_C0))
  loc_1BAF4B2:             var_214 = -1 & var_154 
  loc_1BAF4C8:             Set var_C4 = Me.Txt
  loc_1BAF4CE:             Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAF4FD:             Set var_228 = Me.Txt
  loc_1BAF503:             Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAF531:             unk_529B70.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BAF569:           End If
  loc_1BAF569:           Call Proc_64_61_E7F070()
  loc_1BAF571:         Else
  loc_1BAF5A0:           If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAF5BA:             var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BAF5DC:             If (Proc_6_38_E69628(CVar(var_C0)) = "Yes") Then
  loc_1BAF5ED:               Set var_BC = Me.Txt
  loc_1BAF5F3:               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BAF5FB:               var_94 = var_C0.Tag
  loc_1BAF61C:               Set var_C4 = Me.Txt
  loc_1BAF622:               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BAF62A:               var_104 = var_C8.Text
  loc_1BAF638:               Set var_2DC = Nothing 
  loc_1BAF642:               Set var_27C = Me.GuestImage
  loc_1BAF64B:               var_15C = "O"
  loc_1BAF69B:               Proc_96_64_1DB2C10(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BAF6C5:             Else
  loc_1BAF6D3:               Set var_BC = Me.Txt
  loc_1BAF6D9:               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAF6E1:               global_126 = var_C0.Tag
  loc_1BAF702:               Set var_C4 = Me.Txt
  loc_1BAF708:               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8, var_104, global_120)
  loc_1BAF710:               var_15C = var_C8.Text
  loc_1BAF71E:               Set var_2DC = Nothing 
  loc_1BAF728:               Set var_27C = Me.GuestImage
  loc_1BAF731:               var_15C = "O"
  loc_1BAF76B:               Set var_22C = Me.Fgrid1
  loc_1BAF781:               Proc_96_59_1F06E50(var_94, Me.FGrid, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BAF7A8:             End If
  loc_1BAF7B6:             Set var_BC = Me.Txt
  loc_1BAF7BC:             Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BAF7C4:             var_15C = var_C0.Tag
  loc_1BAF7DF:             Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), var_27C, var_2DC)
  loc_1BAF7FE:             Set var_BC = Me.CmdPostChrg
  loc_1BAF804:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAF814:             If (MemVar_1F951D4 = "Y") Then
  loc_1BAF837:               var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAF845:               Set var_BC = Me.Txt
  loc_1BAF84B:               Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAF862:               var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAF878:               Set var_C4 = Me.Txt
  loc_1BAF87E:               Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAF8AD:               Set var_228 = Me.Txt
  loc_1BAF8B3:               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAF8E1:               unk_529B70.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BAF919:             End If
  loc_1BAF919:             Call Proc_64_61_E7F070()
  loc_1BAF921:           Else
  loc_1BAF921:             Exit Sub
  loc_1BAF922:           End If
  loc_1BAF922:         End If
  loc_1BAF925:       Else
  loc_1BAF964:         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN") Then
  loc_1BAF9A6:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1BAF9C0:             var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BAF9E2:             If (Proc_6_38_E69628(CVar(var_C0)) = "Yes") Then
  loc_1BAF9F3:               Set var_BC = Me.Txt
  loc_1BAF9F9:               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BAFA01:               var_94 = var_C0.Tag
  loc_1BAFA22:               Set var_C4 = Me.Txt
  loc_1BAFA28:               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BAFA30:               var_104 = var_C8.Text
  loc_1BAFA3E:               Set var_2DC = Nothing 
  loc_1BAFA48:               Set var_27C = Me.GuestImage
  loc_1BAFA51:               var_15C = "O"
  loc_1BAFAA1:               Proc_96_64_1DB2C10(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BAFACB:             Else
  loc_1BAFAD9:               Set var_BC = Me.Txt
  loc_1BAFADF:               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAFAE7:               global_126 = var_C0.Tag
  loc_1BAFAF0:               Set var_2DC = Me.FGrid
  loc_1BAFB08:               Set var_C4 = Me.Txt
  loc_1BAFB0E:               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8, var_104, global_120)
  loc_1BAFB16:               var_15C = var_C8.Text
  loc_1BAFB25:               var_160 = "PayCharge"
  loc_1BAFB2E:               Set var_27C = Me.GuestImage
  loc_1BAFB37:               var_15C = "O"
  loc_1BAFB71:               Set var_22C = Me.Fgrid1
  loc_1BAFB87:               Proc_96_62_1F663FC(var_94, var_2DC, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BAFBAE:             End If
  loc_1BAFBBC:             Set var_BC = Me.Txt
  loc_1BAFBC2:             Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BAFBCA:             var_15C = var_C0.Tag
  loc_1BAFBE5:             Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), var_27C, var_160)
  loc_1BAFC04:             Set var_BC = Me.CmdPostChrg
  loc_1BAFC0A:             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAFC1A:             If (MemVar_1F951D4 = "Y") Then
  loc_1BAFC3D:               var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAFC4B:               Set var_BC = Me.Txt
  loc_1BAFC51:               Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAFC60:               var_154 = Trim(CVar(var_C0))
  loc_1BAFC68:               var_214 = -1 & var_154 
  loc_1BAFC7E:               Set var_C4 = Me.Txt
  loc_1BAFC84:               Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAFCB3:               Set var_228 = Me.Txt
  loc_1BAFCB9:               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAFCE7:               unk_529B70.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BAFD1F:             End If
  loc_1BAFD1F:             Call Proc_64_61_E7F070()
  loc_1BAFD27:           Else
  loc_1BAFD56:             If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAFD70:               var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BAFD92:               If (Proc_6_38_E69628(CVar(var_C0)) = "Yes") Then
  loc_1BAFDA3:                 Set var_BC = Me.Txt
  loc_1BAFDA9:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BAFDB1:                 var_94 = var_C0.Tag
  loc_1BAFDD2:                 Set var_C4 = Me.Txt
  loc_1BAFDD8:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BAFDE0:                 var_104 = var_C8.Text
  loc_1BAFDEE:                 Set var_2DC = Nothing 
  loc_1BAFDF8:                 Set var_27C = Me.GuestImage
  loc_1BAFE01:                 var_15C = "O"
  loc_1BAFE51:                 Proc_96_64_1DB2C10(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BAFE7B:               Else
  loc_1BAFE89:                 Set var_BC = Me.Txt
  loc_1BAFE8F:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAFE97:                 global_126 = var_C0.Tag
  loc_1BAFEA0:                 Set var_2DC = Me.FGrid
  loc_1BAFEB8:                 Set var_C4 = Me.Txt
  loc_1BAFEBE:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8, var_104, global_120)
  loc_1BAFEC6:                 var_15C = var_C8.Text
  loc_1BAFED5:                 var_160 = "PayCharge"
  loc_1BAFEDE:                 Set var_27C = Me.GuestImage
  loc_1BAFEE7:                 var_15C = "O"
  loc_1BAFF21:                 Set var_22C = Me.Fgrid1
  loc_1BAFF37:                 Proc_96_62_1F663FC(var_94, var_2DC, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BAFF5E:               End If
  loc_1BAFF6C:               Set var_BC = Me.Txt
  loc_1BAFF72:               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BAFF7A:               var_15C = var_C0.Tag
  loc_1BAFF95:               Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), var_27C, var_160)
  loc_1BAFFB4:               Set var_BC = Me.CmdPostChrg
  loc_1BAFFBA:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BAFFCA:               If (MemVar_1F951D4 = "Y") Then
  loc_1BAFFED:                 var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAFFFB:                 Set var_BC = Me.Txt
  loc_1BB0001:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB0018:                 var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB002E:                 Set var_C4 = Me.Txt
  loc_1BB0034:                 Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB0063:                 Set var_228 = Me.Txt
  loc_1BB0069:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB0097:                 unk_529B70.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BB00CF:               End If
  loc_1BB00CF:               Call Proc_64_61_E7F070()
  loc_1BB00D7:             Else
  loc_1BB00D7:               Exit Sub
  loc_1BB00D8:             End If
  loc_1BB00D8:           End If
  loc_1BB00DB:         Else
  loc_1BB011A:           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN1") Then
  loc_1BB015C:             If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1BB0176:               var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BB0198:               If (Proc_6_38_E69628(CVar(var_C0)) = "Yes") Then
  loc_1BB01A9:                 Set var_BC = Me.Txt
  loc_1BB01AF:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB01B7:                 var_94 = var_C0.Tag
  loc_1BB01D8:                 Set var_C4 = Me.Txt
  loc_1BB01DE:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB01E6:                 var_104 = var_C8.Text
  loc_1BB01F4:                 Set var_2DC = Nothing 
  loc_1BB01FE:                 Set var_27C = Me.GuestImage
  loc_1BB0207:                 var_15C = "O"
  loc_1BB0257:                 Proc_96_64_1DB2C10(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BB0281:               Else
  loc_1BB028F:                 Set var_BC = Me.Txt
  loc_1BB0295:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB029D:                 global_126 = var_C0.Tag
  loc_1BB02A6:                 Set var_2DC = Me.FGrid
  loc_1BB02BE:                 Set var_C4 = Me.Txt
  loc_1BB02C4:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8, var_104, global_120)
  loc_1BB02CC:                 var_15C = var_C8.Text
  loc_1BB02DB:                 var_160 = "PayCharge"
  loc_1BB02E4:                 Set var_27C = Me.GuestImage
  loc_1BB02ED:                 var_15C = "O"
  loc_1BB0327:                 Set var_22C = Me.Fgrid1
  loc_1BB033D:                 Proc_96_63_1F580EC(var_94, var_2DC, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BB0364:               End If
  loc_1BB0372:               Set var_BC = Me.Txt
  loc_1BB0378:               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BB0380:               var_15C = var_C0.Tag
  loc_1BB039B:               Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), var_27C, var_160)
  loc_1BB03BA:               Set var_BC = Me.CmdPostChrg
  loc_1BB03C0:               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB03D0:               If (MemVar_1F951D4 = "Y") Then
  loc_1BB03F3:                 var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB0401:                 Set var_BC = Me.Txt
  loc_1BB0407:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB0416:                 var_154 = Trim(CVar(var_C0))
  loc_1BB041E:                 var_214 = -1 & var_154 
  loc_1BB0434:                 Set var_C4 = Me.Txt
  loc_1BB043A:                 Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB0469:                 Set var_228 = Me.Txt
  loc_1BB046F:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB049D:                 unk_529B70.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BB04D5:               End If
  loc_1BB04D5:               Call Proc_64_61_E7F070()
  loc_1BB04DD:             Else
  loc_1BB050C:               If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB0526:                 var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BB0548:                 If (Proc_6_38_E69628(CVar(var_C0)) = "Yes") Then
  loc_1BB0559:                   Set var_BC = Me.Txt
  loc_1BB055F:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB0567:                   var_94 = var_C0.Tag
  loc_1BB0588:                   Set var_C4 = Me.Txt
  loc_1BB058E:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB0596:                   var_104 = var_C8.Text
  loc_1BB05A4:                   Set var_2DC = Nothing 
  loc_1BB05AE:                   Set var_27C = Me.GuestImage
  loc_1BB05B7:                   var_15C = "O"
  loc_1BB0607:                   Proc_96_64_1DB2C10(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BB0631:                 Else
  loc_1BB063F:                   Set var_BC = Me.Txt
  loc_1BB0645:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB064D:                   global_126 = var_C0.Tag
  loc_1BB0656:                   Set var_2DC = Me.FGrid
  loc_1BB066E:                   Set var_C4 = Me.Txt
  loc_1BB0674:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8, var_104, global_120)
  loc_1BB067C:                   var_15C = var_C8.Text
  loc_1BB068B:                   var_160 = "PayCharge"
  loc_1BB0694:                   Set var_27C = Me.GuestImage
  loc_1BB069D:                   var_15C = "O"
  loc_1BB06D7:                   Set var_22C = Me.Fgrid1
  loc_1BB06ED:                   Proc_96_63_1F580EC(var_94, var_2DC, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BB0714:                 End If
  loc_1BB0722:                 Set var_BC = Me.Txt
  loc_1BB0728:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BB0730:                 var_15C = var_C0.Tag
  loc_1BB074B:                 Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), var_27C, var_160)
  loc_1BB076A:                 Set var_BC = Me.CmdPostChrg
  loc_1BB0770:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB0780:                 If (MemVar_1F951D4 = "Y") Then
  loc_1BB07A3:                   var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB07B1:                   Set var_BC = Me.Txt
  loc_1BB07B7:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB07CE:                   var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB07E4:                   Set var_C4 = Me.Txt
  loc_1BB07EA:                   Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB0819:                   Set var_228 = Me.Txt
  loc_1BB081F:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB084D:                   unk_529B70.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BB0885:                 End If
  loc_1BB0885:                 Call Proc_64_61_E7F070()
  loc_1BB088D:               Else
  loc_1BB088D:                 Exit Sub
  loc_1BB088E:               End If
  loc_1BB088E:             End If
  loc_1BB0891:           Else
  loc_1BB08D0:             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN") Then
  loc_1BB08F0:               var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB0912:               If (var_C0.Value = "Yes") Then
  loc_1BB0923:                 Set var_BC = Me.Txt
  loc_1BB0929:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB0931:                 var_94 = var_C0.Tag
  loc_1BB093A:                 Set var_27C = Me.FGrid
  loc_1BB0952:                 Set var_C4 = Me.Txt
  loc_1BB0958:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB09A2:                 Set var_22C = Me.Fgrid1
  loc_1BB09B8:                 Proc_96_65_1DAA528(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB09E7:                 Set var_BC = Me.Txt
  loc_1BB09ED:                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB09F5:                 2 = var_C0.Tag
  loc_1BB0A10:                 Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB0A2F:                 Set var_BC = Me.CmdPostChrg
  loc_1BB0A35:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB0A46:                 Set var_BC = Me.CmdPlanBill
  loc_1BB0A4C:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB0A5C:                 If (MemVar_1F951D4 = "Y") Then
  loc_1BB0A7F:                   var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB0A8D:                   Set var_BC = Me.Txt
  loc_1BB0A93:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB0AA2:                   var_154 = Trim(CVar(var_C0))
  loc_1BB0AAA:                   var_214 = -1 & var_154 
  loc_1BB0AC0:                   Set var_C4 = Me.Txt
  loc_1BB0AC6:                   Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB0AF5:                   Set var_228 = Me.Txt
  loc_1BB0AFB:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB0B29:                   unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB0B61:                 End If
  loc_1BB0B61:                 Call Proc_64_61_E7F070()
  loc_1BB0B69:               Else
  loc_1BB0B98:                 If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB0BA9:                   Set var_BC = Me.Txt
  loc_1BB0BAF:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB0BB7:                   var_94 = var_C0.Tag
  loc_1BB0BC0:                   Set var_27C = Me.FGrid
  loc_1BB0BD8:                   Set var_C4 = Me.Txt
  loc_1BB0BDE:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB0C28:                   Set var_22C = Me.Fgrid1
  loc_1BB0C3E:                   Proc_96_65_1DAA528(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB0C6D:                   Set var_BC = Me.Txt
  loc_1BB0C73:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB0C7B:                   2 = var_C0.Tag
  loc_1BB0C96:                   Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB0CB5:                   Set var_BC = Me.CmdPostChrg
  loc_1BB0CBB:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB0CCC:                   Set var_BC = Me.CmdPlanBill
  loc_1BB0CD2:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB0CE2:                   If (MemVar_1F951D4 = "Y") Then
  loc_1BB0D05:                     var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB0D13:                     Set var_BC = Me.Txt
  loc_1BB0D19:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB0D30:                     var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB0D46:                     Set var_C4 = Me.Txt
  loc_1BB0D4C:                     Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB0D7B:                     Set var_228 = Me.Txt
  loc_1BB0D81:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB0DAF:                     unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB0DE7:                   End If
  loc_1BB0DE7:                   Call Proc_64_61_E7F070()
  loc_1BB0DEF:                 Else
  loc_1BB0DEF:                   Exit Sub
  loc_1BB0DF0:                 End If
  loc_1BB0DF0:               End If
  loc_1BB0DF3:             Else
  loc_1BB0E32:               If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN FORMAT1") Then
  loc_1BB0E52:                 var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB0E74:                 If (var_C0.Value = "Yes") Then
  loc_1BB0E85:                   Set var_BC = Me.Txt
  loc_1BB0E8B:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB0E93:                   var_94 = var_C0.Tag
  loc_1BB0E9C:                   Set var_27C = Me.FGrid
  loc_1BB0EB4:                   Set var_C4 = Me.Txt
  loc_1BB0EBA:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB0F04:                   Set var_22C = Me.Fgrid1
  loc_1BB0F1A:                   Proc_96_66_1D5967C(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB0F49:                   Set var_BC = Me.Txt
  loc_1BB0F4F:                   Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB0F57:                   2 = var_C0.Tag
  loc_1BB0F72:                   Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB0F91:                   Set var_BC = Me.CmdPostChrg
  loc_1BB0F97:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB0FA8:                   Set var_BC = Me.CmdPlanBill
  loc_1BB0FAE:                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB0FBE:                   If (MemVar_1F951D4 = "Y") Then
  loc_1BB0FE1:                     var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB0FEF:                     Set var_BC = Me.Txt
  loc_1BB0FF5:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB1004:                     var_154 = Trim(CVar(var_C0))
  loc_1BB100C:                     var_214 = -1 & var_154 
  loc_1BB1022:                     Set var_C4 = Me.Txt
  loc_1BB1028:                     Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB1057:                     Set var_228 = Me.Txt
  loc_1BB105D:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB108B:                     unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB10C3:                   End If
  loc_1BB10C3:                   Call Proc_64_61_E7F070()
  loc_1BB10CB:                 Else
  loc_1BB10FA:                   If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB110B:                     Set var_BC = Me.Txt
  loc_1BB1111:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB1119:                     var_94 = var_C0.Tag
  loc_1BB1122:                     Set var_27C = Me.FGrid
  loc_1BB113A:                     Set var_C4 = Me.Txt
  loc_1BB1140:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB118A:                     Set var_22C = Me.Fgrid1
  loc_1BB11A0:                     Proc_96_66_1D5967C(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB11CF:                     Set var_BC = Me.Txt
  loc_1BB11D5:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB11DD:                     2 = var_C0.Tag
  loc_1BB11F8:                     Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB1217:                     Set var_BC = Me.CmdPostChrg
  loc_1BB121D:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB122E:                     Set var_BC = Me.CmdPlanBill
  loc_1BB1234:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB1244:                     If (MemVar_1F951D4 = "Y") Then
  loc_1BB1267:                       var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB1275:                       Set var_BC = Me.Txt
  loc_1BB127B:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB1292:                       var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB12A8:                       Set var_C4 = Me.Txt
  loc_1BB12AE:                       Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB12DD:                       Set var_228 = Me.Txt
  loc_1BB12E3:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB1311:                       unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB1349:                     End If
  loc_1BB1349:                     Call Proc_64_61_E7F070()
  loc_1BB1351:                   Else
  loc_1BB1351:                     Exit Sub
  loc_1BB1352:                   End If
  loc_1BB1352:                 End If
  loc_1BB1355:               Else
  loc_1BB1394:                 If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT1") Then
  loc_1BB13B4:                   var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB13D6:                   If (var_C0.Value = "Yes") Then
  loc_1BB13E7:                     Set var_BC = Me.Txt
  loc_1BB13ED:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB13F5:                     var_94 = var_C0.Tag
  loc_1BB13FE:                     Set var_27C = Me.FGrid
  loc_1BB1416:                     Set var_C4 = Me.Txt
  loc_1BB141C:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB1471:                     Set var_22C = Me.Fgrid1
  loc_1BB1487:                     Proc_96_53_1D3A710(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB14B8:                     Set var_BC = Me.Txt
  loc_1BB14BE:                     Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB14C6:                     global_126 = var_C0.Tag
  loc_1BB14E1:                     Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB1500:                     Set var_BC = Me.CmdPostChrg
  loc_1BB1506:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB1517:                     Set var_BC = Me.CmdPlanBill
  loc_1BB151D:                     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB152D:                     If (MemVar_1F951D4 = "Y") Then
  loc_1BB1550:                       var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB155E:                       Set var_BC = Me.Txt
  loc_1BB1564:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB1573:                       var_154 = Trim(CVar(var_C0))
  loc_1BB157B:                       var_214 = -1 & var_154 
  loc_1BB1591:                       Set var_C4 = Me.Txt
  loc_1BB1597:                       Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB15C6:                       Set var_228 = Me.Txt
  loc_1BB15CC:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB15FA:                       unk_529B70.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB1632:                     End If
  loc_1BB1632:                     Call Proc_64_61_E7F070()
  loc_1BB163A:                   Else
  loc_1BB1669:                     If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB167A:                       Set var_BC = Me.Txt
  loc_1BB1680:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB1688:                       var_94 = var_C0.Tag
  loc_1BB1691:                       Set var_27C = Me.FGrid
  loc_1BB16A9:                       Set var_C4 = Me.Txt
  loc_1BB16AF:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB1704:                       Set var_22C = Me.Fgrid1
  loc_1BB171A:                       Proc_96_53_1D3A710(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB174B:                       Set var_BC = Me.Txt
  loc_1BB1751:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB1759:                       global_126 = var_C0.Tag
  loc_1BB1774:                       Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB1793:                       Set var_BC = Me.CmdPostChrg
  loc_1BB1799:                       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB17AA:                       Set var_BC = Me.CmdPlanBill
  loc_1BB17B0:                       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB17C0:                       If (MemVar_1F951D4 = "Y") Then
  loc_1BB17E3:                         var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB17F1:                         Set var_BC = Me.Txt
  loc_1BB17F7:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB180E:                         var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB1824:                         Set var_C4 = Me.Txt
  loc_1BB182A:                         Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB1859:                         Set var_228 = Me.Txt
  loc_1BB185F:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB188D:                         unk_529B70.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB18C5:                       End If
  loc_1BB18C5:                       Call Proc_64_61_E7F070()
  loc_1BB18CD:                     Else
  loc_1BB18CD:                       Exit Sub
  loc_1BB18CE:                     End If
  loc_1BB18CE:                   End If
  loc_1BB18D1:                 Else
  loc_1BB1910:                   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT2") Then
  loc_1BB1930:                     var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB1952:                     If (var_C0.Value = "Yes") Then
  loc_1BB1963:                       Set var_BC = Me.Txt
  loc_1BB1969:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB1971:                       var_94 = var_C0.Tag
  loc_1BB197A:                       Set var_27C = Me.FGrid
  loc_1BB1992:                       Set var_C4 = Me.Txt
  loc_1BB1998:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB19E2:                       Set var_22C = Me.Fgrid1
  loc_1BB19F8:                       Proc_96_67_1D49CF8(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB1A27:                       Set var_BC = Me.Txt
  loc_1BB1A2D:                       Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB1A35:                       2 = var_C0.Tag
  loc_1BB1A50:                       Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB1A6F:                       Set var_BC = Me.CmdPostChrg
  loc_1BB1A75:                       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB1A86:                       Set var_BC = Me.CmdPlanBill
  loc_1BB1A8C:                       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB1A9C:                       If (MemVar_1F951D4 = "Y") Then
  loc_1BB1ABF:                         var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB1ACD:                         Set var_BC = Me.Txt
  loc_1BB1AD3:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB1AE2:                         var_154 = Trim(CVar(var_C0))
  loc_1BB1AEA:                         var_214 = -1 & var_154 
  loc_1BB1B00:                         Set var_C4 = Me.Txt
  loc_1BB1B06:                         Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB1B35:                         Set var_228 = Me.Txt
  loc_1BB1B3B:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB1B69:                         unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB1BA1:                       End If
  loc_1BB1BA1:                       Call Proc_64_61_E7F070()
  loc_1BB1BA9:                     Else
  loc_1BB1BD8:                       If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB1BE9:                         Set var_BC = Me.Txt
  loc_1BB1BEF:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB1BF7:                         var_94 = var_C0.Tag
  loc_1BB1C00:                         Set var_27C = Me.FGrid
  loc_1BB1C18:                         Set var_C4 = Me.Txt
  loc_1BB1C1E:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB1C68:                         Set var_22C = Me.Fgrid1
  loc_1BB1C7E:                         Proc_96_67_1D49CF8(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB1CAD:                         Set var_BC = Me.Txt
  loc_1BB1CB3:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB1CBB:                         2 = var_C0.Tag
  loc_1BB1CD6:                         Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB1CF5:                         Set var_BC = Me.CmdPostChrg
  loc_1BB1CFB:                         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB1D0C:                         Set var_BC = Me.CmdPlanBill
  loc_1BB1D12:                         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB1D22:                         If (MemVar_1F951D4 = "Y") Then
  loc_1BB1D45:                           var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB1D53:                           Set var_BC = Me.Txt
  loc_1BB1D59:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB1D70:                           var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB1D86:                           Set var_C4 = Me.Txt
  loc_1BB1D8C:                           Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB1DBB:                           Set var_228 = Me.Txt
  loc_1BB1DC1:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB1DEF:                           unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB1E27:                         End If
  loc_1BB1E27:                         Call Proc_64_61_E7F070()
  loc_1BB1E2F:                       Else
  loc_1BB1E2F:                         Exit Sub
  loc_1BB1E30:                       End If
  loc_1BB1E30:                     End If
  loc_1BB1E33:                   Else
  loc_1BB1E72:                     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT3") Then
  loc_1BB1E92:                       var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB1EB4:                       If (var_C0.Value = "Yes") Then
  loc_1BB1EC5:                         Set var_BC = Me.Txt
  loc_1BB1ECB:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB1ED3:                         var_94 = var_C0.Tag
  loc_1BB1EDC:                         Set var_27C = Me.FGrid
  loc_1BB1EF4:                         Set var_C4 = Me.Txt
  loc_1BB1EFA:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB1F44:                         Set var_22C = Me.Fgrid1
  loc_1BB1F5A:                         Proc_96_68_1E0AFE8(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB1F89:                         Set var_BC = Me.Txt
  loc_1BB1F8F:                         Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB1F97:                         2 = var_C0.Tag
  loc_1BB1FB2:                         Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB1FD1:                         Set var_BC = Me.CmdPostChrg
  loc_1BB1FD7:                         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB1FE8:                         Set var_BC = Me.CmdPlanBill
  loc_1BB1FEE:                         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB1FFE:                         If (MemVar_1F951D4 = "Y") Then
  loc_1BB2021:                           var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB202F:                           Set var_BC = Me.Txt
  loc_1BB2035:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB2044:                           var_154 = Trim(CVar(var_C0))
  loc_1BB204C:                           var_214 = -1 & var_154 
  loc_1BB2062:                           Set var_C4 = Me.Txt
  loc_1BB2068:                           Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB2097:                           Set var_228 = Me.Txt
  loc_1BB209D:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB20CB:                           unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB2103:                         End If
  loc_1BB2103:                         Call Proc_64_61_E7F070()
  loc_1BB210B:                       Else
  loc_1BB213A:                         If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB214B:                           Set var_BC = Me.Txt
  loc_1BB2151:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB2159:                           var_94 = var_C0.Tag
  loc_1BB2162:                           Set var_27C = Me.FGrid
  loc_1BB217A:                           Set var_C4 = Me.Txt
  loc_1BB2180:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB21CA:                           Set var_22C = Me.Fgrid1
  loc_1BB21E0:                           Proc_96_68_1E0AFE8(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB220F:                           Set var_BC = Me.Txt
  loc_1BB2215:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB221D:                           2 = var_C0.Tag
  loc_1BB2238:                           Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB2257:                           Set var_BC = Me.CmdPostChrg
  loc_1BB225D:                           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB226E:                           Set var_BC = Me.CmdPlanBill
  loc_1BB2274:                           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB2284:                           If (MemVar_1F951D4 = "Y") Then
  loc_1BB22A7:                             var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB22B5:                             Set var_BC = Me.Txt
  loc_1BB22BB:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB22D2:                             var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB22E8:                             Set var_C4 = Me.Txt
  loc_1BB22EE:                             Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB231D:                             Set var_228 = Me.Txt
  loc_1BB2323:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB2351:                             unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB2389:                           End If
  loc_1BB2389:                           Call Proc_64_61_E7F070()
  loc_1BB2391:                         Else
  loc_1BB2391:                           Exit Sub
  loc_1BB2392:                         End If
  loc_1BB2392:                       End If
  loc_1BB2395:                     Else
  loc_1BB23D4:                       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT4") Then
  loc_1BB23F4:                         var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB2416:                         If (var_C0.Value = "Yes") Then
  loc_1BB2427:                           Set var_BC = Me.Txt
  loc_1BB242D:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB2435:                           var_94 = var_C0.Tag
  loc_1BB243E:                           Set var_27C = Me.FGrid
  loc_1BB2456:                           Set var_C4 = Me.Txt
  loc_1BB245C:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB24A6:                           Set var_22C = Me.Fgrid1
  loc_1BB24BC:                           Proc_96_54_1D81304(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB24EB:                           Set var_BC = Me.Txt
  loc_1BB24F1:                           Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB24F9:                           2 = var_C0.Tag
  loc_1BB2514:                           Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB2533:                           Set var_BC = Me.CmdPostChrg
  loc_1BB2539:                           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB254A:                           Set var_BC = Me.CmdPlanBill
  loc_1BB2550:                           Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB2560:                           If (MemVar_1F951D4 = "Y") Then
  loc_1BB2583:                             var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BB2591:                             Set var_BC = Me.Txt
  loc_1BB2597:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB25A6:                             var_154 = Trim(CVar(var_C0))
  loc_1BB25AE:                             var_214 = -1 & var_154 
  loc_1BB25C4:                             Set var_C4 = Me.Txt
  loc_1BB25CA:                             Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB25F9:                             Set var_228 = Me.Txt
  loc_1BB25FF:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB262D:                             unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB2665:                           End If
  loc_1BB2665:                           Call Proc_64_61_E7F070()
  loc_1BB266D:                         Else
  loc_1BB269C:                           If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB26AD:                             Set var_BC = Me.Txt
  loc_1BB26B3:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB26BB:                             var_94 = var_C0.Tag
  loc_1BB26C4:                             Set var_27C = Me.FGrid
  loc_1BB26DC:                             Set var_C4 = Me.Txt
  loc_1BB26E2:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB272C:                             Set var_22C = Me.Fgrid1
  loc_1BB2742:                             Proc_96_54_1D81304(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BB2771:                             Set var_BC = Me.Txt
  loc_1BB2777:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BB277F:                             2 = var_C0.Tag
  loc_1BB279A:                             Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_126)
  loc_1BB27B9:                             Set var_BC = Me.CmdPostChrg
  loc_1BB27BF:                             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB27D0:                             Set var_BC = Me.CmdPlanBill
  loc_1BB27D6:                             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB27E6:                             If (MemVar_1F951D4 = "Y") Then
  loc_1BB2802:                               var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB2817:                               Set var_BC = Me.Txt
  loc_1BB281D:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, CVar(var_98 & ",'CHKOT','"), var_3B8)
  loc_1BB2834:                               var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB284A:                               Set var_C4 = Me.Txt
  loc_1BB2850:                               Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB287F:                               Set var_228 = Me.Txt
  loc_1BB2885:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB28B3:                               unk_529B70.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BB28EB:                             End If
  loc_1BB28EB:                             Call Proc_64_61_E7F070()
  loc_1BB28F3:                           Else
  loc_1BB28F3:                             Exit Sub
  loc_1BB28F4:                           End If
  loc_1BB28F4:                         End If
  loc_1BB28F7:                       Else
  loc_1BB2936:                         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT5") Then
  loc_1BB2956:                           var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB2978:                           If (var_C0.Value = "Yes") Then
  loc_1BB2989:                             Set var_BC = Me.Txt
  loc_1BB298F:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB2997:                             var_94 = var_C0.Tag
  loc_1BB29A0:                             Set var_27C = Me.FGrid
  loc_1BB29B8:                             Set var_C4 = Me.Txt
  loc_1BB29BE:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB2A13:                             Set var_22C = Me.Fgrid1
  loc_1BB2A29:                             Proc_96_50_1CF70AC(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB2A5A:                             Set var_BC = Me.Txt
  loc_1BB2A60:                             Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB2A68:                             global_126 = var_C0.Tag
  loc_1BB2A83:                             Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB2AA2:                             Set var_BC = Me.CmdPostChrg
  loc_1BB2AA8:                             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB2AB9:                             Set var_BC = Me.CmdPlanBill
  loc_1BB2ABF:                             Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB2ACF:                             If (MemVar_1F951D4 = "Y") Then
  loc_1BB2AEB:                               var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB2AF2:                               var_1B4 = CVar(var_98 & ",'CHKOT','") 'String
  loc_1BB2B00:                               Set var_BC = Me.Txt
  loc_1BB2B06:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB2B15:                               var_154 = Trim(CVar(var_C0))
  loc_1BB2B1D:                               var_214 = -1 & var_154 
  loc_1BB2B33:                               Set var_C4 = Me.Txt
  loc_1BB2B39:                               Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB2B68:                               Set var_228 = Me.Txt
  loc_1BB2B6E:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB2B9C:                               unk_529B70.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB2BD4:                             End If
  loc_1BB2BD4:                             Call Proc_64_61_E7F070()
  loc_1BB2BDC:                           Else
  loc_1BB2C0B:                             If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB2C1C:                               Set var_BC = Me.Txt
  loc_1BB2C22:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB2C2A:                               var_94 = var_C0.Tag
  loc_1BB2C33:                               Set var_27C = Me.FGrid
  loc_1BB2C4B:                               Set var_C4 = Me.Txt
  loc_1BB2C51:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB2CA6:                               Set var_22C = Me.Fgrid1
  loc_1BB2CBC:                               Proc_96_50_1CF70AC(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB2CED:                               Set var_BC = Me.Txt
  loc_1BB2CF3:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB2CFB:                               global_126 = var_C0.Tag
  loc_1BB2D16:                               Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB2D35:                               Set var_BC = Me.CmdPostChrg
  loc_1BB2D3B:                               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB2D4C:                               Set var_BC = Me.CmdPlanBill
  loc_1BB2D52:                               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB2D62:                               If (MemVar_1F951D4 = "Y") Then
  loc_1BB2D7E:                                 var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB2D93:                                 Set var_BC = Me.Txt
  loc_1BB2D99:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, CVar(var_98 & ",'CHKOT','"), var_3B8)
  loc_1BB2DB0:                                 var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB2DC6:                                 Set var_C4 = Me.Txt
  loc_1BB2DCC:                                 Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB2DFB:                                 Set var_228 = Me.Txt
  loc_1BB2E01:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB2E2F:                                 unk_529B70.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB2E67:                               End If
  loc_1BB2E67:                               Call Proc_64_61_E7F070()
  loc_1BB2E6F:                             Else
  loc_1BB2E6F:                               Exit Sub
  loc_1BB2E70:                             End If
  loc_1BB2E70:                           End If
  loc_1BB2E73:                         Else
  loc_1BB2EB2:                           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT6") Then
  loc_1BB2ED2:                             var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB2EF4:                             If (var_C0.Value = "Yes") Then
  loc_1BB2F05:                               Set var_BC = Me.Txt
  loc_1BB2F0B:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB2F13:                               var_94 = var_C0.Tag
  loc_1BB2F1C:                               Set var_27C = Me.FGrid
  loc_1BB2F34:                               Set var_C4 = Me.Txt
  loc_1BB2F3A:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB2F8F:                               Set var_22C = Me.Fgrid1
  loc_1BB2FA5:                               Proc_96_51_1EAEEF0(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB2FD6:                               Set var_BC = Me.Txt
  loc_1BB2FDC:                               Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB2FE4:                               global_126 = var_C0.Tag
  loc_1BB2FFF:                               Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB301E:                               Set var_BC = Me.CmdPostChrg
  loc_1BB3024:                               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB3035:                               Set var_BC = Me.CmdPlanBill
  loc_1BB303B:                               Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB304B:                               If (MemVar_1F951D4 = "Y") Then
  loc_1BB3067:                                 var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB306E:                                 var_1B4 = CVar(var_98 & ",'CHKOT','") 'String
  loc_1BB307C:                                 Set var_BC = Me.Txt
  loc_1BB3082:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB3091:                                 var_154 = Trim(CVar(var_C0))
  loc_1BB3099:                                 var_214 = -1 & var_154 
  loc_1BB30AF:                                 Set var_C4 = Me.Txt
  loc_1BB30B5:                                 Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB30E4:                                 Set var_228 = Me.Txt
  loc_1BB30EA:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB3118:                                 unk_529B70.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB3150:                               End If
  loc_1BB3150:                               Call Proc_64_61_E7F070()
  loc_1BB3158:                             Else
  loc_1BB3187:                               If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB3198:                                 Set var_BC = Me.Txt
  loc_1BB319E:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB31A6:                                 var_94 = var_C0.Tag
  loc_1BB31AF:                                 Set var_27C = Me.FGrid
  loc_1BB31C7:                                 Set var_C4 = Me.Txt
  loc_1BB31CD:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB3222:                                 Set var_22C = Me.Fgrid1
  loc_1BB3238:                                 Proc_96_51_1EAEEF0(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB3269:                                 Set var_BC = Me.Txt
  loc_1BB326F:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB3277:                                 global_126 = var_C0.Tag
  loc_1BB3292:                                 Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB32B1:                                 Set var_BC = Me.CmdPostChrg
  loc_1BB32B7:                                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB32C8:                                 Set var_BC = Me.CmdPlanBill
  loc_1BB32CE:                                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB32DE:                                 If (MemVar_1F951D4 = "Y") Then
  loc_1BB32FA:                                   var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB330F:                                   Set var_BC = Me.Txt
  loc_1BB3315:                                   Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, CVar(var_98 & ",'CHKOT','"), var_3B8)
  loc_1BB332C:                                   var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB3342:                                   Set var_C4 = Me.Txt
  loc_1BB3348:                                   Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB3377:                                   Set var_228 = Me.Txt
  loc_1BB337D:                                   Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB33AB:                                   unk_529B70.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB33E3:                                 End If
  loc_1BB33E3:                                 Call Proc_64_61_E7F070()
  loc_1BB33EB:                               Else
  loc_1BB33EB:                                 Exit Sub
  loc_1BB33EC:                               End If
  loc_1BB33EC:                             End If
  loc_1BB33EF:                           Else
  loc_1BB342E:                             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT7") Then
  loc_1BB344E:                               var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB3470:                               If (var_C0.Value = "Yes") Then
  loc_1BB3481:                                 Set var_BC = Me.Txt
  loc_1BB3487:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB348F:                                 var_94 = var_C0.Tag
  loc_1BB3498:                                 Set var_27C = Me.FGrid
  loc_1BB34B0:                                 Set var_C4 = Me.Txt
  loc_1BB34B6:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB350B:                                 Set var_22C = Me.Fgrid1
  loc_1BB3521:                                 Proc_96_52_1EA3D74(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB3552:                                 Set var_BC = Me.Txt
  loc_1BB3558:                                 Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB3560:                                 global_126 = var_C0.Tag
  loc_1BB357B:                                 Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB359A:                                 Set var_BC = Me.CmdPostChrg
  loc_1BB35A0:                                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB35B1:                                 Set var_BC = Me.CmdPlanBill
  loc_1BB35B7:                                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB35C7:                                 If (MemVar_1F951D4 = "Y") Then
  loc_1BB35E3:                                   var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB35EA:                                   var_1B4 = CVar(var_98 & ",'CHKOT','") 'String
  loc_1BB35F8:                                   Set var_BC = Me.Txt
  loc_1BB35FE:                                   Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB360D:                                   var_154 = Trim(CVar(var_C0))
  loc_1BB3615:                                   var_214 = -1 & var_154 
  loc_1BB362B:                                   Set var_C4 = Me.Txt
  loc_1BB3631:                                   Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB3660:                                   Set var_228 = Me.Txt
  loc_1BB3666:                                   Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB3694:                                   unk_529B70.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB36CC:                                 End If
  loc_1BB36CC:                                 Call Proc_64_61_E7F070()
  loc_1BB36D4:                               Else
  loc_1BB3703:                                 If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB3714:                                   Set var_BC = Me.Txt
  loc_1BB371A:                                   Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0)
  loc_1BB3722:                                   var_94 = var_C0.Tag
  loc_1BB372B:                                   Set var_27C = Me.FGrid
  loc_1BB3743:                                   Set var_C4 = Me.Txt
  loc_1BB3749:                                   Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_C8)
  loc_1BB379E:                                   Set var_22C = Me.Fgrid1
  loc_1BB37B4:                                   Proc_96_52_1EA3D74(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB37E5:                                   Set var_BC = Me.Txt
  loc_1BB37EB:                                   Call 0.Method_Proc_64_48_1BB39880 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB37F3:                                   global_126 = var_C0.Tag
  loc_1BB380E:                                   Proc_96_40_13BEA0C(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB382D:                                   Set var_BC = Me.CmdPostChrg
  loc_1BB3833:                                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB3844:                                   Set var_BC = Me.CmdPlanBill
  loc_1BB384A:                                   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1BB385A:                                   If (MemVar_1F951D4 = "Y") Then
  loc_1BB3876:                                     var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB388B:                                     Set var_BC = Me.Txt
  loc_1BB3891:                                     Call 0.Method_Proc_64_48_1BB39880 (CInt(0), var_C0, CVar(var_98 & ",'CHKOT','"), var_3B8)
  loc_1BB38A8:                                     var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB38BE:                                     Set var_C4 = Me.Txt
  loc_1BB38C4:                                     Call 0.Method_Proc_64_48_1BB39880 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB38F3:                                     Set var_228 = Me.Txt
  loc_1BB38F9:                                     Call 0.Method_Proc_64_48_1BB39880 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB3927:                                     unk_529B70.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB395F:                                   End If
  loc_1BB395F:                                   Call Proc_64_61_E7F070()
  loc_1BB3967:                                 Else
  loc_1BB3967:                                   Exit Sub
  loc_1BB3968:                                 End If
  loc_1BB3968:                               End If
  loc_1BB3968:                             End If
  loc_1BB3968:                           End If
  loc_1BB3968:                         End If
  loc_1BB3968:                       End If
  loc_1BB3968:                     End If
  loc_1BB3968:                   End If
  loc_1BB3968:                 End If
  loc_1BB3968:               End If
  loc_1BB3968:             End If
  loc_1BB3968:           End If
  loc_1BB3968:         End If
  loc_1BB3968:       End If
  loc_1BB3968:     End If
  loc_1BB3968:   End If
  loc_1BB3968: End If
  loc_1BB396C: Set var_BC = Me.FGrid
  loc_1BB3982: Set var_90 = Nothing
  loc_1BB3985: Exit Sub
End Sub

Public Sub Proc_64_49_1268C08
  'Data Table: 529B40
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim unk_529B54 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_110 As String
  loc_12686BC: On Error Goto loc_1268BFC
  loc_12686DB: Call 0.Method_Proc_64_49_1268C080 (CInt(&HA), var_A4, var_A8)
  loc_12686E3: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" = var_A4.Text
  loc_126871A: unk_529B54.Execute &HFF & var_A8 & " order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_1268725: Set var_90 = Me.Txt
  loc_1268734: var_D0 = var_90.RecordCount
  loc_1268742: If (var_D0 <= 0) Then
  loc_126874B:   Call 0.Method_arg_50 (var_A8)
  loc_126876C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_126877E:   var_8A = 0
  loc_1268781:   Exit Sub
  loc_1268782: End If
  loc_1268785: var_94 = "BillPrint"
  loc_1268788: var_BC = "Guest Bill"
  loc_126879F: var_98 = CStr(Ucase(var_BC))
  loc_12687AF: If (var_8A = 0) Then
  loc_12687B2:   Exit Sub
  loc_12687B3: End If
  loc_12687D7: Set var_A0 = var_90 
  loc_12687DE: CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\" & var_94 & ".ttx", &HFF)
  loc_1268809: var_A8 = MemVar_1F950B4 & "\"
  loc_1268820: Call 0.Method_arg_1C (var_A8 & var_94 & ".RPT", var_BC, var_A0)
  loc_126882B: MemVar_1F951E8 = var_A0
  loc_1268854: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_126885C: Call 0.Method_arg_2C (var_110, var_8A)
  loc_126886A: Call 0.Method_arg_150 (var_A0)
  loc_1268874: Set var_90 = Nothing
  loc_1268888: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_1268890: Call 0.Method_arg_24 (var_9A)
  loc_126889C: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_12688B5:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_12688BD:   Call 0.Method_arg_20 (var_A4)
  loc_12688C5:   Call 0.Method_arg_30 (var_A8)
  loc_12688DB:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_126890B:   If (var_13C = Ucase("ChkInDt")) Then
  loc_126891E:     Set var_A0 = Me.Txt
  loc_1268924:     Call 0.Method_Proc_64_49_1268C080 (CInt(1), var_A4)
  loc_126895C:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1268964:     Call 0.Method_arg_20 (var_148)
  loc_126896C:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_126898B:   Else
  loc_12689AD:     If (var_13C = Ucase("Company")) Then
  loc_12689C0:       Set var_A0 = Me.Txt
  loc_12689C6:       Call 0.Method_Proc_64_49_1268C080 (CInt(&HB), var_A4)
  loc_12689FE:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1268A06:       Call 0.Method_arg_20 (var_148)
  loc_1268A0E:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1268A2D:     Else
  loc_1268A4F:       If (var_13C = Ucase("AdltChld")) Then
  loc_1268A62:         Set var_A0 = Me.Txt
  loc_1268A68:         Call 0.Method_Proc_64_49_1268C080 (CInt(5), var_A4)
  loc_1268A97:         Set var_144 = Me.Txt
  loc_1268A9D:         Call 0.Method_Proc_64_49_1268C080 (CInt(6), var_148)
  loc_1268AD5:         Call 0.Method_arg_90 (var_18C, CLng(var_9A))
  loc_1268ADD:         Call 0.Method_arg_20 (var_190)
  loc_1268AE5:         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_1268B0E:       Else
  loc_1268B30:         If (var_13C = Ucase("RoomNo")) Then
  loc_1268B43:           Set var_A0 = Me.Txt
  loc_1268B49:           Call 0.Method_Proc_64_49_1268C080 (CInt(0), var_A4)
  loc_1268B81:           Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1268B89:           Call 0.Method_arg_20 (var_148)
  loc_1268B91:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1268BAD:         End If
  loc_1268BAD:       End If
  loc_1268BAD:     End If
  loc_1268BAD:   End If
  loc_1268BB0: Next var_12C 'Integer
  loc_1268BBA: Set var_A4 = Nothing
  loc_1268BD0: Set var_A0 = MemVar_1F951E8 
  loc_1268BDC: Proc_6_99_1484404(var_A0, 0, var_98)
  loc_1268BE7: MemVar_1F951E8 = var_A0
  loc_1268BF7: MemVar_1F951E8 = Nothing
  loc_1268BFB: Exit Sub
  loc_1268BFC: ' Referenced from: 12686BC
  loc_1268C01: Proc_6_60_E63754(0, &HFF)
  loc_1268C06: Exit Sub
End Sub

Public Sub Proc_64_50_18E5A8C
  'Data Table: 529B40
  Dim var_110 As Variant
  Dim var_118 As String
  Dim unk_529B54 As Connection15
  Dim var_E4 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_88 As Variant
  Dim var_86 As Variant
  Dim var_10C As Fields15
  Dim var_12C As Variant
  Dim var_150 As Variant
  Dim var_130 As Fields15
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_37C As Variant
  Dim var_424 As Variant
  Dim var_3F4 As Variant
  Dim var_414 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_514 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_588 As Variant
  Dim var_5AC As Variant
  Dim var_5EC As Variant
  Dim var_60C As Variant
  Dim var_654 As Variant
  Dim var_698 As Variant
  Dim var_6BC As Variant
  Dim var_6FC As Variant
  Dim var_71C As Variant
  Dim var_764 As Variant
  Dim var_774 As Variant
  Dim var_794 As Variant
  Dim var_7D4 As Variant
  Dim var_828 As Variant
  Dim var_83C As Variant
  Dim var_8A4 As Variant
  Dim var_914 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_2BC As Variant
  Dim var_304 As Variant
  Dim var_3BC As Variant
  Dim var_474 As Variant
  Dim var_4BC As Variant
  Dim var_574 As Variant
  Dim var_62C As Variant
  Dim var_684 As Variant
  Dim var_73C As Variant
  Dim var_814 As Variant
  Dim var_87C As Variant
  Dim var_954 As Variant
  Dim var_114 As String
  Dim var_170 As Variant
  Dim var_2E4 As Variant
  Dim var_3E4 As Variant
  Dim var_49C As Variant
  Dim var_504 As Variant
  Dim var_5BC As Variant
  Dim var_6CC As Variant
  Dim var_1F4 As Variant
  Dim var_24C As Variant
  Dim var_32C As Variant
  Dim var_34C As Variant
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_160 As Variant
  Dim var_1D4 As Variant
  Dim var_2AC As Variant
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_22C As Variant
  Dim var_3AC As Variant
  Dim var_DC As Double
  Dim var_4E4 As Variant
  Dim var_85C As Variant
  Dim var_7A4 As Variant
  Dim var_804 As Variant
  Dim Me As Recordset15
  loc_18E3274: On Error Goto loc_18E5A70
  loc_18E3279: Close 1
  loc_18E3282: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_18E32A4: Set var_10C = Me.Txt
  loc_18E32AA: Call 0.Method_Proc_64_50_18E5A8C0 (CInt(&HA), var_110, var_114, "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocId='")
  loc_18E32B2: var_12C = var_110.Tag
  loc_18E32BB: var_118 = -1 & var_114
  loc_18E32CB: unk_529B54.Execute var_118 & "'", var_130, 
  loc_18E32D6: Set var_E4 = var_130
  loc_18E32EE: ' Referenced from: 18E59A7
  loc_18E32FD: If Not(var_E4.EOF) Then
  loc_18E331E:   Set var_10C = Me.Txt
  loc_18E3324:   Call 0.Method_Proc_64_50_18E5A8C0 (CInt(&HA), var_110, var_114, "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.DocId='")
  loc_18E332C:   var_12C = var_110.Tag
  loc_18E3335:   var_118 = -1 & var_114
  loc_18E3345:   unk_529B54.Execute var_118 & "' order by  RoomOcc.Sno Desc", var_130, 
  loc_18E3350:   Set var_B4 = var_130
  loc_18E337C:   If (var_B4.RecordCount <= 0) Then
  loc_18E337F:     Exit Sub
  loc_18E3380:   End If
  loc_18E3386:   If (var_86 = 0) Then
  loc_18E338F:     var_88 = (var_88 + 1)
  loc_18E3397:     Print 1, " "
  loc_18E33A2:     Print 1, " "
  loc_18E33AD:     Print 1, " "
  loc_18E33B8:     Print 1, " "
  loc_18E33C0:     var_86 = &HC
  loc_18E3411:     Print 1, " Mr " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Name")), var_86), &H23)
  loc_18E342F:     Print 1, vbNullString
  loc_18E3463:     var_160 = Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add1")))))
  loc_18E34F1:     var_22C = var_B4.Fields.Item("FolioNo").Value
  loc_18E350D:     var_27C = (9 - Len(Trim(CVar(CStr(var_22C)))))
  loc_18E358E:     var_37C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_18E35E8:     var_434 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18E3669:     var_534 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18E36C3:     var_5EC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18E3750:     var_6FC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18E37C1:     var_7D4 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_18E387B:     var_914 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_18E38A2:     var_190 = (CVar(vbNullString & Proc_6_45_EADFB8(CStr(var_160), &H23)) + Space(3))
  loc_18E38A9:     var_1E4 = (var_190 + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_18E38B0:     var_204 = (var_1E4 + Space(3))
  loc_18E38B7:     var_2BC = (var_204 + Space(CLng((var_27C / 2))))
  loc_18E38C3:     var_304 = (var_2BC + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_18E38CA:     var_3BC = (var_304 + Space(CLng((var_37C / 2))))
  loc_18E38D1:     var_474 = (var_3BC + Space(CLng((var_434 / 2))))
  loc_18E38DD:     var_4BC = (var_474 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_18E38E4:     var_574 = (var_4BC + Space(CLng((var_534 / 2))))
  loc_18E38EB:     var_62C = (var_574 + Space(CLng((var_5EC / 2))))
  loc_18E38F2:     var_684 = (var_62C + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_18E38F9:     var_73C = (var_684 + Space(CLng((var_6FC / 2))))
  loc_18E3900:     var_814 = (var_73C + Space(CLng((var_7D4 / 2))))
  loc_18E3907:     var_87C = (var_814 + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_18E390E:     var_954 = (var_87C + Space(CLng((var_914 / 2))))
  loc_18E3914:     Print 1, var_954
  loc_18E39F2:     Print 1, vbNullString
  loc_18E3A3F:     Print 1, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23)
  loc_18E3A5B:     Print 1, vbNullString
  loc_18E3A78:     var_110 = var_B4.Fields.Item("CityName")
  loc_18E3A80:     var_12C = CVar(var_110) 'Address
  loc_18E3A94:     var_114 = Proc_6_38_E69628(var_12C)
  loc_18E3AA4:     var_140 = Proc_6_45_EADFB8(var_114 & "-", &H23)
  loc_18E3ABB:     var_130 = var_B4.Fields
  loc_18E3AD2:     Proc_6_39_E7D3A0(var_160, CVar(var_130.Item("RoomRate")))
  loc_18E3AEE:     var_1B4 = (10 - Len(Trim(CVar(CStr(var_160)))))
  loc_18E3B2B:     Proc_6_39_E7D3A0(var_22C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E3B5B:     Proc_6_39_E7D3A0(var_27C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E3B77:     var_2E4 = (10 - Len(Trim(CVar(CStr(var_27C)))))
  loc_18E3BB7:     var_424 = 12
  loc_18E3BF2:     var_3E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18E3C34:     var_454 = "dd/mm/yy"
  loc_18E3C65:     var_588 = 12
  loc_18E3C82:     var_49C = CVar(var_B4.Fields.Item("VDate")) 'Address
  loc_18E3CA0:     var_504 = (1 - Len(Trim(Format(var_49C, "dd/mm/yy"))))
  loc_18E3CB7:     var_698 = 12
  loc_18E3CF3:     var_5BC = (1 - Len(Trim(Format(MemVar_1F950EC, "dd/mm/yy"))))
  loc_18E3D2F:     var_828 = 12
  loc_18E3D6B:     var_6BC = (1 - Len(Trim(Format(MemVar_1F950EC, "dd/mm/yy"))))
  loc_18E3DA1:     var_764 = (8 - Len(Trim("****")))
  loc_18E3DEA:     var_83C = (9 - Len(Trim("****")))
  loc_18E3E11:     var_1F4 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))))
  loc_18E3E1D:     var_24C = (Space(3) + CVar(CStr(var_22C)))
  loc_18E3E24:     var_32C = (Trim(CVar(CStr(var_22C))) + Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))))
  loc_18E3E2B:     var_34C = (var_B4.Fields.Item("FolioNo").Value + Space(1))
  loc_18E3E32:     var_414 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_18E3E39:     var_474 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), var_454))
  loc_18E3E40:     var_554 = (var_474 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_18E3E47:     var_60C = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))))
  loc_18E3E4E:     var_654 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) / 2) + Format(MemVar_1F950EC, "dd/mm/yy"))
  loc_18E3E55:     var_6FC = (CVar(var_B4.Fields.Item("RoomCategory")) + Space(CLng((CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)) / 2))))
  loc_18E3E5C:     var_794 = (var_6FC + Space(CLng((CVar(var_B4.Fields.Item("CountryName")) / 2))))
  loc_18E3E63:     var_7D4 = (CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))) + Trim("****"))
  loc_18E3E6A:     var_86C = (var_7D4 + Space(CLng((CVar(var_B4.Fields.Item("CountryName")) / 2))))
  loc_18E3E70:     Print 1, Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))
  loc_18E3F1A:     Print 1, " "
  loc_18E3F25:     Print 1, " "
  loc_18E3F30:     Print 1, " "
  loc_18E3F38:     var_86 = &H17
  loc_18E3F3B:   End If
  loc_18E3F59:   Set var_10C = Me.Txt
  loc_18E3F5F:   Call 0.Method_Proc_64_50_18E5A8C0 (CInt(&HA), var_110, var_114, "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocId='", var_12C, -1, var_130)
  loc_18E3F67:   var_86 = var_110.Tag
  loc_18E3F80:   unk_529B54.Execute 1 & var_114 & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_828, 1
  loc_18E3F8B:   Set var_B0 = var_130
  loc_18E3FA3:   ' Referenced from: 18E55B8
  loc_18E3FB2:   If Not(var_B0.EOF) Then
  loc_18E3FEF:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_18E4006:       If (var_B0.AbsolutePosition > 1) Then
  loc_18E4010:         var_CC = (var_BC - var_C4)
  loc_18E401A:         var_D4 = (var_D4 + var_CC)
  loc_18E40A5:         var_1C4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1)))
  loc_18E411C:         var_25C = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_18E4172:         var_160 = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18, var_D4, var_CC)))
  loc_18E4179:         var_1D4 = (var_160 + var_1C4)
  loc_18E4180:         var_1F4 = (Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))) + Space(1))
  loc_18E4187:         var_27C = (Space(3) + var_25C)
  loc_18E418E:         var_2AC = (var_27C + Space(1))
  loc_18E4198:         var_304 = (Trim(CVar(CStr(var_27C))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_18E419E:         Print 1, Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2)))
  loc_18E41FC:         var_86 = (var_86 + 1)
  loc_18E4204:         Print 1, vbNullString
  loc_18E4210:         var_86 = (var_86 + 1)
  loc_18E4216:         var_BC = CDbl(0)
  loc_18E421C:         var_C4 = CDbl(0)
  loc_18E421F:       End If
  loc_18E421F:     End If
  loc_18E4264:     var_150 = Space(1)
  loc_18E42C2:     Proc_6_39_E7D3A0(Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))), CVar(var_B0.Fields.Item("VNo")))
  loc_18E42EE:     var_22C = (CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2)))))))
  loc_18E4377:     Proc_6_39_E7D3A0(Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_18E43B8:     Proc_6_39_E7D3A0(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_18E4410:     var_3E4 = IIf((Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))) = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00")), &HA, 1)))
  loc_18E4448:     Proc_6_39_E7D3A0(var_454, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_18E4489:     Proc_6_39_E7D3A0(var_49C, CVar(var_B0.Fields.Item("AmtCr")))
  loc_18E44E0:     var_514 = IIf((var_454 = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_49C, "0.00")), &HA, 1)))
  loc_18E44EE:     var_170 = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_150)
  loc_18E44F8:     var_24C = ("0.00" + CVar(Proc_6_45_EADFB8(CStr(Format(var_C4, "0.00")), 9)))
  loc_18E44FF:     var_27C = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_18E4509:     var_2E4 = (var_27C + CVar(Proc_6_45_EADFB8(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_18E4510:     var_3F4 = (Format(var_D4, "0.00") + var_3E4)
  loc_18E4517:     var_414 = ((var_B4.Fields.Item("Adult").Value / 2) + Space(1))
  loc_18E451E:     var_534 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + var_514)
  loc_18E4524:     Print 1, Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2)))
  loc_18E45C5:     var_86 = (var_86 + 1)
  loc_18E45F5:     Proc_6_39_E7D3A0(var_150, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_18E45FD:     var_160 = (1 + var_150)
  loc_18E4602:     var_BC = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_18E463E:     Proc_6_39_E7D3A0(var_150, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_18E4646:     var_160 = (var_BC + var_150)
  loc_18E464B:     var_C4 = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_18E46B0:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_18E46BA:       var_CC = (var_BC - var_C4)
  loc_18E46C4:       var_D4 = (var_D4 + var_CC)
  loc_18E474F:       var_1C4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_18E47C6:       var_25C = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_18E481C:       var_160 = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18, var_D4, var_CC)))
  loc_18E4823:       var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1C4)
  loc_18E482A:       var_1F4 = (Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))) + Space(1))
  loc_18E4831:       var_27C = (Trim(CVar(CStr(Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2)))))) + var_25C)
  loc_18E4838:       var_2AC = (var_27C + Space(1))
  loc_18E4842:       var_304 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_18E4848:       Print 1, Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2)))
  loc_18E48A6:       var_86 = (var_86 + 1)
  loc_18E48AC:       var_BC = CDbl(0)
  loc_18E48B2:       var_C4 = CDbl(0)
  loc_18E48B5:     End If
  loc_18E48BB:     If (var_86 >= &H30) Then
  loc_18E48C3:       Print 1, " "
  loc_18E48E7:       var_170 = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_18E48FB:       var_150 = (" " + Space(&H37))
  loc_18E4904:       var_160 = (CVar(Proc_6_45_EADFB8("Day Total", &H18, var_D4, var_CC)) + "Continued Page No ")
  loc_18E4911:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_18E492F:       var_86 = (var_86 + 1)
  loc_18E4944:       Print 1, Chr(&HC)
  loc_18E494F:       var_86 = 0
  loc_18E4952:     End If
  loc_18E4958:     If (var_86 = 0) Then
  loc_18E4961:       var_88 = (var_88 + 1)
  loc_18E4969:       Print 1, " "
  loc_18E4974:       Print 1, " "
  loc_18E497F:       Print 1, " "
  loc_18E498A:       Print 1, " "
  loc_18E4992:       var_86 = &HC
  loc_18E49D1:       var_140 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Name")), var_86, var_88, var_86, var_86, var_C4), &H23, var_BC, var_86)
  loc_18E49E3:       Print 1, " Mr " & var_140
  loc_18E4A01:       Print 1, vbNullString
  loc_18E4A35:       var_160 = Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add1")), 1)))
  loc_18E4AC3:       var_22C = var_B4.Fields.Item("FolioNo").Value
  loc_18E4ADF:       var_27C = (9 - Len(Trim(CVar(CStr(var_22C)))))
  loc_18E4B60:       var_37C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_18E4BBA:       var_434 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18E4C3B:       var_534 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18E4C95:       var_5EC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18E4D22:       var_6FC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18E4D93:       var_7D4 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_18E4E4D:       var_914 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_18E4E74:       var_190 = (CVar(vbNullString & Proc_6_45_EADFB8(CStr(var_160), &H23)) + Space(3))
  loc_18E4E7B:       var_1E4 = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00") + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), 1))))
  loc_18E4E82:       var_204 = (Space(1) + Space(3))
  loc_18E4E89:       var_2BC = ("0.00" + Space(CLng((var_27C / 2))))
  loc_18E4E95:       var_304 = ("0.00" + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_18E4E9C:       var_3BC = (Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))) + Space(CLng((Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00") / 2))))
  loc_18E4EA3:       var_474 = (CVar(Proc_6_52_EAE084(CStr(Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00")), &HA, 1)) + Space(CLng((CVar(var_B0.Fields.Item("AmtCr")) / 2))))
  loc_18E4EAF:       var_4BC = (CVar(var_B0.Fields.Item("AmtCr")) + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_18E4EB6:       var_574 = (Format(var_B4.Fields.Item("Adult").Value, "0.00") + Space(CLng((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2))))
  loc_18E4EBD:       var_62C = (Format(MemVar_1F950EC, "dd/mm/yy") + Space(CLng((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) / 2))))
  loc_18E4EC4:       var_684 = (Format(MemVar_1F950EC, "dd/mm/yy") + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_18E4ECB:       var_73C = (Trim(Format(MemVar_1F950EC, "dd/mm/yy")) + Space(CLng((var_6FC / 2))))
  loc_18E4ED2:       var_814 = (Len(Trim("****")) + Space(CLng((var_7D4 / 2))))
  loc_18E4ED9:       var_87C = (Len(Trim("****")) + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_18E4EE0:       var_954 = (var_87C + Space(CLng((var_914 / 2))))
  loc_18E4EE6:       Print 1, var_954
  loc_18E4FC4:       Print 1, vbNullString
  loc_18E5011:       Print 1, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23)
  loc_18E502D:       Print 1, vbNullString
  loc_18E5076:       var_140 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_18E50A4:       Proc_6_39_E7D3A0(var_160, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E50C0:       var_1B4 = (10 - Len(Trim(CVar(CStr(var_160)))))
  loc_18E50FD:       Proc_6_39_E7D3A0(var_22C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E512D:       Proc_6_39_E7D3A0(var_27C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E5149:       var_2E4 = (10 - Len(Trim(CVar(CStr(var_27C)))))
  loc_18E517C:       var_424 = 12
  loc_18E51B7:       var_3AC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18E522A:       var_588 = 12
  loc_18E5265:       var_4E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18E5298:       var_698 = 12
  loc_18E52D3:       var_5AC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18E5346:       var_828 = 12
  loc_18E5381:       var_6CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18E53CF:       var_774 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_18E5454:       var_85C = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_18E547B:       var_1F4 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))))
  loc_18E5487:       var_24C = (Space(3) + CVar(CStr(var_22C)))
  loc_18E548E:       var_32C = (Trim(CVar(CStr(var_22C))) + Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))))
  loc_18E5495:       var_3F4 = (var_B4.Fields.Item("FolioNo").Value + Space(CLng((Space(CLng((Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00") / 2))) / 2))))
  loc_18E549C:       var_454 = (CVar(CStr(var_B4.Fields.Item("Adult").Value)) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_18E54A3:       var_514 = ((CVar(var_B0.Fields.Item("AmtCr")) / 2) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_18E54AA:       var_5EC = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(CLng((CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)) / 2))))
  loc_18E54B1:       var_654 = (Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_18E54B8:       var_71C = (CVar(var_B4.Fields.Item("RoomCategory")) + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))))
  loc_18E54BF:       var_7A4 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) / 2) + Space(CLng((CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_18E54C6:       var_804 = (Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_18E54CD:       var_8A4 = (Space(CLng((CVar(CStr(var_E4.Fields.Item("Bill_no").Value)) / 2))) + Space(CLng((Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9) / 2))))
  loc_18E54D3:       Print 1, CVar(var_B4.Fields.Item("CountryName"))
  loc_18E558F:       Print 1, " "
  loc_18E559A:       Print 1, " "
  loc_18E55A5:       Print 1, " "
  loc_18E55AD:       var_86 = &H17
  loc_18E55B0:     End If
  loc_18E55B3:     var_B0.MoveNext
  loc_18E55B8:     GoTo loc_18E3FA3
  loc_18E55BB:     ' Referenced from: 18E55D8
  loc_18E55BB:   End If
  loc_18E55C1:   If (var_86 <= &H32) Then
  loc_18E55C9:     Print 1, vbNullString
  loc_18E55D5:     var_86 = (var_86 + 1)
  loc_18E55D8:     GoTo loc_18E55BB
  loc_18E55DB:   End If
  loc_18E561B:   var_958 = Proc_6_45_EADFB8(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86, var_86, 1, var_828, 1), &H35, 1, 1, var_698)
  loc_18E566E:   var_160 = (Space(8) + CVar(var_958))
  loc_18E5675:   var_180 = (var_160 + Space(6))
  loc_18E567F:   var_1D4 = (Trim(CVar(CStr(var_160))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1, 1, 1)))
  loc_18E5685:   Print 1, Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2)))
  loc_18E56B7:   var_86 = (var_86 + 1)
  loc_18E5733:   var_190 = CVar(Proc_6_45_EADFB8(CStr(Mid(CVar(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_588)), &H36, var_160)), &H35, 1)) 'String
  loc_18E5760:   var_1C4 = (Space(8) + IIf((Len(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_190))
  loc_18E5766:   Print 1, CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1, 1, 1))
  loc_18E579A:   var_86 = (var_86 + 1)
  loc_18E57ED:   var_180 = (Space(&H43) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1, 1)))
  loc_18E57F3:   Print 1, " "
  loc_18E5813:   var_86 = (var_86 + 1)
  loc_18E5818:   var_86 = 0
  loc_18E5826:   Print 1, vbNullString
  loc_18E586C:   var_150 = (Space(7) + "Cash")
  loc_18E5875:   var_160 = ("0.00" + "              ")
  loc_18E587F:   var_190 = (Format(CDbl(0), "0.00") + CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CompanyName")), CDbl(0), var_86, var_86)))
  loc_18E5885:   Print 1, var_190
  loc_18E58E1:   var_150 = (Space(7) + CVar(MemVar_1F950C8))
  loc_18E58EA:   var_160 = ("0.00" + "              ")
  loc_18E58F4:   var_190 = (Format(CDbl(0), "0.00") + CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ContactPerson")), var_86)))
  loc_18E58FA:   Print 1, var_190
  loc_18E591A:   Print 1, " "
  loc_18E5925:   Print 1, " "
  loc_18E5930:   Print 1, " "
  loc_18E593B:   Print 1, " "
  loc_18E5946:   Print 1, " "
  loc_18E5973:   Print 1, Proc_6_98_11AC34C("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_18E5996:   Print 1, Chr(&HC)
  loc_18E59A2:   var_E4.MoveNext
  loc_18E59A7:   GoTo loc_18E32EE
  loc_18E59AA: End If
  loc_18E59AC: Close 1
  loc_18E59B5: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_18E59F1: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_18E5A07: Close 1
  loc_18E5A11: If (MemVar_1F953BC = "Y") Then
  loc_18E5A2D:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_18E5A37: Else
  loc_18E5A50:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_18E5A57: End If
  loc_18E5A5C: Set var_B4 = Nothing
  loc_18E5A64: Set var_E4 = Nothing
  loc_18E5A6C: Set var_F0 = Nothing
  loc_18E5A6F: Exit Sub
  loc_18E5A70: ' Referenced from: 18E3274
  loc_18E5A76: If (var_E8 = &HFF) Then
  loc_18E5A7F:   unk_529B54.RollbackTrans
  loc_18E5A84: End If
  loc_18E5A84: Proc_6_60_E63754(1)
  loc_18E5A89: Exit Sub
End Sub

Public Sub Proc_64_51_1A410D0
  'Data Table: 529B40
  Dim var_110 As String
  Dim var_114 As String
  Dim unk_529B54 As Connection15
  Dim var_12C As Variant
  Dim var_E4 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_88 As Variant
  Dim var_15C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_F0 As Recordset15
  Dim var_128 As Fields15
  Dim var_124 As Variant
  Dim var_86 As Variant
  Dim var_17C As Variant
  Dim var_1CC As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_134 As Fields15
  Dim var_324 As Variant
  Dim var_364 As Variant
  Dim var_40C As Variant
  Dim var_3FC As Variant
  Dim var_41C As Variant
  Dim var_43C As Variant
  Dim var_51C As Variant
  Dim var_53C As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_6E4 As Variant
  Dim var_77C As Variant
  Dim var_7BC As Variant
  Dim var_7DC As Variant
  Dim var_824 As Variant
  Dim var_834 As Variant
  Dim var_89C As Variant
  Dim var_8FC As Variant
  Dim var_3A4 As Variant
  Dim var_45C As Variant
  Dim var_4A4 As Variant
  Dim var_55C As Variant
  Dim var_614 As Variant
  Dim var_66C As Variant
  Dim var_724 As Variant
  Dim var_7FC As Variant
  Dim var_93C As Variant
  Dim var_3CC As Variant
  Dim var_4EC As Variant
  Dim var_54C As Variant
  Dim var_78C As Variant
  Dim var_7EC As Variant
  Dim var_8AC As Variant
  Dim var_220 As String
  Dim var_248 As Variant
  Dim var_334 As Variant
  Dim var_604 As Variant
  Dim var_65C As Variant
  Dim var_8CC As Variant
  Dim var_2A8 As Variant
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_DC As Double
  Dim var_228 As String
  Dim var_940 As String
  Dim var_944 As String
  Dim Me As Recordset15
  loc_1A3DB18: On Error Goto loc_1A410B4
  loc_1A3DB22: Close 1
  loc_1A3DB2B: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A3DB43: var_110 = "Select * from Enviro where LOGSite_Code='" & MemVar_1F95078
  loc_1A3DB53: unk_529B54.Execute var_110 & "'", var_124, -1
  loc_1A3DB5E: Set var_F0 = var_128
  loc_1A3DB92: Call 0.Method_Proc_64_51_1A410D00 (CInt(&HA), var_12C, var_110, "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocId='", var_124)
  loc_1A3DB9A: -1 = var_12C.Tag
  loc_1A3DBB3: unk_529B54.Execute var_134 & var_110 & "'", Me.Txt, 0
  loc_1A3DBBE: Set var_E4 = var_134
  loc_1A3DBD6: ' Referenced from: 1A40FEB
  loc_1A3DBE5: If Not(var_E4.EOF) Then
  loc_1A3DC06:   Set var_128 = Me.Txt
  loc_1A3DC0C:   Call 0.Method_Proc_64_51_1A410D00 (CInt(&HA), var_12C, var_110, "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.DocId='")
  loc_1A3DC14:   var_124 = var_12C.Tag
  loc_1A3DC1D:   var_114 = -1 & var_110
  loc_1A3DC2D:   unk_529B54.Execute var_134 & var_110 & "' order by  RoomOcc.Sno Desc", var_134, 
  loc_1A3DC38:   Set var_B4 = var_134
  loc_1A3DC64:   If (var_B4.RecordCount <= 0) Then
  loc_1A3DC67:     Exit Sub
  loc_1A3DC68:   End If
  loc_1A3DC6E:   If (var_86 = 0) Then
  loc_1A3DC9F:     var_A4 = Replace(CStr(Space(&H50)), " ", "-", 1, -1, 0)
  loc_1A3DCAE:     var_88 = (var_88 + 1)
  loc_1A3DCD2:     Print 1, Proc_6_98_11AC34C(MemVar_1F95130, "A")
  loc_1A3DD27:     var_15C = (Trim(MemVar_1F95134) + ", ")
  loc_1A3DD2E:     var_18C = (var_15C + Trim(MemVar_1F95138))
  loc_1A3DD37:     var_1AC = (var_18C + " ")
  loc_1A3DD3E:     var_1DC = (var_1AC + Trim(MemVar_1F9513C))
  loc_1A3DD47:     var_1FC = (var_1DC + " ")
  loc_1A3DD51:     var_21C = (var_1FC + CVar(MemVar_1F9515C))
  loc_1A3DD6A:     Print 1, Proc_6_98_11AC34C(CStr(var_21C), "B", &H4E)
  loc_1A3DDC8:     Print 1, Proc_6_98_11AC34C("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "D", 138)
  loc_1A3DE2E:     Print 1, Proc_6_98_11AC34C(Proc_6_38_E69628(CVar(var_F0.Fields.Item("Bill_Header")), &H4E), "D")
  loc_1A3DE6E:     Print 1, Proc_6_98_11AC34C("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_1A3DE84:     Print 1, var_A4
  loc_1A3DE8C:     var_86 = &HC
  loc_1A3DF09:     var_17C = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Guest Name :", &H3D, var_86)))
  loc_1A3DF12:     var_18C = (Trim(MemVar_1F95138) + "|")
  loc_1A3DF19:     var_1CC = (var_18C + Space(2))
  loc_1A3DF22:     var_1DC = (Trim(MemVar_1F9513C) + "Room #")
  loc_1A3DF29:     var_21C = (var_1DC + Space(&HA))
  loc_1A3DF32:     var_238 = (var_21C + "Reg #")
  loc_1A3DF39:     var_258 = (var_238 + Space(&HA))
  loc_1A3DF42:     var_268 = (var_258 + "Pax")
  loc_1A3DF49:     var_288 = (var_268 + Space(&HB))
  loc_1A3DF52:     var_298 = (var_288 + "Type")
  loc_1A3DF59:     var_2B8 = (var_298 + Space(&HA))
  loc_1A3DF62:     var_2C8 = (var_2B8 + "Nation")
  loc_1A3DF69:     var_2E8 = (var_2C8 + Chr(&H12))
  loc_1A3DF6F:     Print 1, var_2E8
  loc_1A3E078:     var_288 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A3E0F9:     var_364 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A3E153:     var_41C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A3E1D4:     var_51C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A3E22E:     var_5D4 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A3E2BB:     var_6E4 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A3E32C:     var_7BC = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A3E3E6:     var_8FC = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A3E414:     var_18C = (CVar("Mr " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Name")), 138), &H1F) & "|") + Space(1))
  loc_1A3E41B:     var_1FC = (var_18C + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_1A3E422:     var_238 = (Space(&HA) + Space(3))
  loc_1A3E429:     var_2B8 = (var_238 + Space(CLng((var_288 / 2))))
  loc_1A3E435:     var_2E8 = (var_2B8 + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A3E43C:     var_3A4 = (var_2E8 + Space(CLng((var_364 / 2))))
  loc_1A3E443:     var_45C = (var_3A4 + Space(CLng((var_41C / 2))))
  loc_1A3E44F:     var_4A4 = (var_45C + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A3E456:     var_55C = (var_4A4 + Space(CLng((var_51C / 2))))
  loc_1A3E45D:     var_614 = (var_55C + Space(CLng((var_5D4 / 2))))
  loc_1A3E464:     var_66C = (var_614 + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A3E46B:     var_724 = (var_66C + Space(CLng((var_6E4 / 2))))
  loc_1A3E472:     var_7FC = (var_724 + Space(CLng((var_7BC / 2))))
  loc_1A3E479:     var_864 = (var_7FC + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A3E480:     var_93C = (var_864 + Space(CLng((var_8FC / 2))))
  loc_1A3E486:     Print 1, var_93C
  loc_1A3E5CD:     var_1AC = CVar(vbNullString & Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A3E5D3:     var_1CC = (var_1AC + Left(var_A4, &H2C))
  loc_1A3E5D9:     Print 1, CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))
  loc_1A3E684:     var_2A8 = Chr(&H12)
  loc_1A3E693:     var_17C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A3E699:     var_18C = (var_17C + Chr(&HF))
  loc_1A3E6A0:     var_1CC = (Left(var_A4, &H2C) + Space(2))
  loc_1A3E6A9:     var_1DC = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")))) + "R.Rate")
  loc_1A3E6B0:     var_21C = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) + Space(&HE))
  loc_1A3E6B9:     var_238 = (Space(3) + "Arrival")
  loc_1A3E6C0:     var_258 = (var_238 + Space(&HD))
  loc_1A3E6C9:     var_268 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A3E6D0:     var_288 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A3E6D9:     var_298 = (var_288 + " Bill # ")
  loc_1A3E6E0:     var_2B8 = ((var_288 / 2) + var_2A8)
  loc_1A3E6E6:     Print 1, var_2B8
  loc_1A3E738:     var_12C = var_B4.Fields.Item("CityName")
  loc_1A3E764:     var_940 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_12C)) & "-", &H23)
  loc_1A3E77B:     var_134 = var_B4.Fields
  loc_1A3E792:     Proc_6_39_E7D3A0(var_17C, CVar(var_134.Item("RoomRate")))
  loc_1A3E7AE:     var_1DC = (6 - Len(Trim(CVar(CStr(var_17C)))))
  loc_1A3E7EB:     Proc_6_39_E7D3A0(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3E81B:     Proc_6_39_E7D3A0(var_2A8, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3E837:     var_2E8 = (10 - Len(Trim(CVar(CStr(var_2A8)))))
  loc_1A3E86A:     var_40C = 12
  loc_1A3E87E:     var_364 = "dd/mm/yy"
  loc_1A3E8A5:     var_3CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), var_364))))
  loc_1A3E93C:     var_4A4 = Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy")
  loc_1A3E953:     var_4EC = (1 - Len(Trim(var_4A4)))
  loc_1A3E9C1:     var_5B4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A3EA6F:     var_6E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A3EAC5:     var_78C = (12 - Len(Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1, 12, 1, 1, 1)))))
  loc_1A3EB57:     var_89C = (1 - Len(Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1)))))
  loc_1A3EB85:     var_248 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))))
  loc_1A3EB91:     var_288 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A3EB98:     var_334 = (var_288 + Space(CLng((var_2E8 / 2))))
  loc_1A3EB9F:     var_3FC = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A3EBA6:     var_45C = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A3EBAD:     var_53C = (var_45C + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A3EBB4:     var_604 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A3EBBB:     var_65C = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A3EBC2:     var_724 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E4 / 2))))
  loc_1A3EBC9:     var_7DC = (var_724 + Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))))
  loc_1A3EBD0:     var_834 = ((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2) + Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 1, 12))))
  loc_1A3EBD7:     var_8CC = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_1A3EBDD:     Print 1, Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))
  loc_1A3ECBF:     Print 1, Proc_6_45_EADFB8(" ", &H23) & "|"
  loc_1A3ECD5:     Print 1, var_A4
  loc_1A3ECE3:     var_110 = "Date"
  loc_1A3ECF9:     var_124 = Space(1)
  loc_1A3ED9C:     var_17C = (CVar(Proc_6_45_EADFB8(var_110, &HB)) + var_124)
  loc_1A3EDA6:     var_1AC = (var_17C + CVar(Proc_6_45_EADFB8("Bill/Vou#", 9)))
  loc_1A3EDAD:     var_1DC = (Trim(CVar(CStr(var_17C))) + Space(1))
  loc_1A3EDB7:     var_21C = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) + CVar(Proc_6_45_EADFB8("Description", &H18)))
  loc_1A3EDC1:     var_248 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + CVar(Proc_6_52_EAE084("Debit", &HA)))
  loc_1A3EDC8:     var_268 = (Space(&HD) + Space(1))
  loc_1A3EDD2:     var_288 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAE084("Credit", &HA)))
  loc_1A3EDD9:     var_2A8 = (var_288 + Space(1))
  loc_1A3EDE3:     var_2C8 = (var_2A8 + CVar(Proc_6_52_EAE084("Balance", &HB)))
  loc_1A3EDE9:     Print 1, Trim(CVar(CStr(var_2A8)))
  loc_1A3EE38:     Print 1, var_A4
  loc_1A3EE40:     var_86 = &H17
  loc_1A3EE43:   End If
  loc_1A3EE61:   Set var_128 = Me.Txt
  loc_1A3EE67:   Call 0.Method_Proc_64_51_1A410D00 (CInt(&HA), var_12C, var_110, "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocId='", var_124)
  loc_1A3EE6F:   -1 = var_12C.Tag
  loc_1A3EE88:   unk_529B54.Execute var_134 & var_110 & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_86, 1
  loc_1A3EE93:   Set var_B0 = var_134
  loc_1A3EEAB:   ' Referenced from: 1A409D0
  loc_1A3EEBA:   If Not(var_B0.EOF) Then
  loc_1A3EEF7:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_1A3EF0E:       If (var_B0.AbsolutePosition > 1) Then
  loc_1A3EF18:         var_CC = (var_BC - var_C4)
  loc_1A3EF22:         var_D4 = (var_D4 + var_CC)
  loc_1A3EFAD:         var_1FC = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1)))
  loc_1A3F024:         var_298 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A3F07A:         var_17C = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18)))
  loc_1A3F081:         var_21C = (var_17C + var_1FC)
  loc_1A3F088:         var_248 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + Space(1))
  loc_1A3F08F:         var_2A8 = (Space(&HD) + var_298)
  loc_1A3F096:         var_2C8 = (var_2A8 + Space(1))
  loc_1A3F0A0:         var_324 = (Trim(CVar(CStr(var_2A8))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A3F0A6:         Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A3F104:         var_86 = (var_86 + 1)
  loc_1A3F10C:         Print 1, vbNullString
  loc_1A3F118:         var_86 = (var_86 + 1)
  loc_1A3F11E:         var_BC = CDbl(0)
  loc_1A3F124:         var_C4 = CDbl(0)
  loc_1A3F127:       End If
  loc_1A3F127:     End If
  loc_1A3F16C:     var_15C = Space(1)
  loc_1A3F1CA:     Proc_6_39_E7D3A0(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))), CVar(var_B0.Fields.Item("VNo")))
  loc_1A3F1F6:     var_268 = (CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))))))
  loc_1A3F27F:     Proc_6_39_E7D3A0(Space(CLng((Format(var_D4, "0.00") / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A3F2C0:     Proc_6_39_E7D3A0(var_364, CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A3F318:     var_3EC = IIf((Space(CLng((Format(var_D4, "0.00") / 2))) = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_364, "0.00")), &HA, 1)))
  loc_1A3F350:     Proc_6_39_E7D3A0(var_45C, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_1A3F391:     Proc_6_39_E7D3A0(var_4A4, CVar(var_B0.Fields.Item("AmtCr")))
  loc_1A3F3E8:     var_53C = IIf((var_45C = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_4A4, "0.00")), &HA, 1)))
  loc_1A3F3F6:     var_18C = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_15C)
  loc_1A3F400:     var_288 = ("0.00" + CVar(Proc_6_45_EADFB8(CStr(Format(var_C4, "0.00")), 9)))
  loc_1A3F407:     var_2A8 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A3F411:     var_2E8 = (var_2A8 + CVar(Proc_6_45_EADFB8(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_1A3F418:     var_3FC = (Format(var_D4, "0.00") + var_3EC)
  loc_1A3F41F:     var_43C = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(1))
  loc_1A3F426:     var_54C = ("dd/mm/yy" + var_53C)
  loc_1A3F42C:     Print 1, CVar(var_B4.Fields.Item("DepDate"))
  loc_1A3F4CD:     var_86 = (var_86 + 1)
  loc_1A3F4FD:     Proc_6_39_E7D3A0(var_15C, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_1A3F505:     var_17C = (1 + var_15C)
  loc_1A3F50A:     var_BC = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A3F546:     Proc_6_39_E7D3A0(var_15C, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_1A3F54E:     var_17C = (var_BC + var_15C)
  loc_1A3F553:     var_C4 = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A3F5B8:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_1A3F5C2:       var_CC = (var_BC - var_C4)
  loc_1A3F5CC:       var_D4 = (var_D4 + var_CC)
  loc_1A3F5D4:       Print 1, vbNullString
  loc_1A3F5E0:       var_86 = (var_86 + 1)
  loc_1A3F66B:       var_1FC = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_1A3F6E2:       var_298 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A3F738:       var_17C = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18, var_86, var_D4, var_CC)))
  loc_1A3F73F:       var_21C = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1FC)
  loc_1A3F746:       var_248 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + Space(1))
  loc_1A3F74D:       var_2A8 = (Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))))) + var_298)
  loc_1A3F754:       var_2C8 = (var_2A8 + Space(1))
  loc_1A3F75E:       var_324 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A3F764:       Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A3F7C2:       var_86 = (var_86 + 1)
  loc_1A3F7C8:       var_BC = CDbl(0)
  loc_1A3F7CE:       var_C4 = CDbl(0)
  loc_1A3F7D1:     End If
  loc_1A3F7D7:     If (var_86 >= &H30) Then
  loc_1A3F7DF:       Print 1, " "
  loc_1A3F803:       var_18C = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_1A3F817:       var_15C = (" " + Space(&H37))
  loc_1A3F820:       var_17C = (CVar(Proc_6_45_EADFB8("Day Total", &H18, var_86, var_D4, var_CC)) + "Continued Page No ")
  loc_1A3F82D:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_1A3F84B:       var_86 = (var_86 + 1)
  loc_1A3F860:       Print 1, Chr(&HC)
  loc_1A3F86B:       var_86 = 0
  loc_1A3F86E:     End If
  loc_1A3F874:     If (var_86 = 0) Then
  loc_1A3F87D:       var_88 = (var_88 + 1)
  loc_1A3F886:       var_88 = (var_88 + 1)
  loc_1A3F8AA:       Print 1, Proc_6_98_11AC34C(MemVar_1F95130, "A", &H4E, var_88, var_88, var_86, var_86)
  loc_1A3F8FF:       var_15C = (Trim(MemVar_1F95134) + ", ")
  loc_1A3F906:       var_18C = (CVar(Proc_6_45_EADFB8("Day Total", &H18, var_86, var_D4, var_CC)) + Trim(MemVar_1F95138))
  loc_1A3F90F:       var_1AC = ("0.00" + " ")
  loc_1A3F916:       var_1DC = (Str("0.00") + Trim(MemVar_1F9513C))
  loc_1A3F91F:       var_1FC = (CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + " ")
  loc_1A3F929:       var_21C = (var_1FC + CVar(MemVar_1F9515C))
  loc_1A3F937:       var_220 = Proc_6_98_11AC34C(CStr(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))), "B", &H4E, var_C4, var_BC)
  loc_1A3F942:       Print 1, var_220
  loc_1A3F99F:       Print 1, Proc_6_98_11AC34C("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "D", &H7D, var_86)
  loc_1A3FA04:       Print 1, Proc_6_98_11AC34C(Proc_6_38_E69628(CVar(var_F0.Fields.Item("Bill_Header")), 1), "D", &H7D)
  loc_1A3FA22:       Print 1, var_A4
  loc_1A3FA2A:       var_86 = &HC
  loc_1A3FAA7:       var_17C = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Guest Name :", &H3C, var_86)))
  loc_1A3FAB0:       var_18C = (Trim(MemVar_1F95138) + "|")
  loc_1A3FAB7:       var_1CC = ("0.00" + Space(2))
  loc_1A3FAC0:       var_1DC = (Trim(MemVar_1F9513C) + "Room #")
  loc_1A3FAC7:       var_21C = (CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + Space(&HA))
  loc_1A3FAD0:       var_238 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + "Reg #")
  loc_1A3FAD7:       var_258 = (Space(1) + Space(&HA))
  loc_1A3FAE0:       var_268 = ("0.00" + "Pax")
  loc_1A3FAE7:       var_288 = (Format(var_C4, "0.00") + Space(&HB))
  loc_1A3FAF0:       var_298 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + "Type")
  loc_1A3FAF7:       var_2B8 = (var_298 + Space(&HA))
  loc_1A3FB00:       var_2C8 = (Space(1) + "Nation")
  loc_1A3FB07:       var_2E8 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + Chr(&H12))
  loc_1A3FB0D:       Print 1, Format(var_D4, "0.00")
  loc_1A3FC16:       var_288 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A3FC97:       var_364 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A3FCF1:       var_41C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A3FD72:       var_51C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A3FDCC:       var_5D4 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A3FE59:       var_6E4 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A3FECA:       var_7BC = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A3FEDC:       var_7EC = Space(CLng((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2)))
  loc_1A3FF84:       var_8FC = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A3FFB2:       var_18C = (CVar("Mr " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Name")), var_D4), &H1F) & "|") + Space(1))
  loc_1A3FFB9:       var_1FC = ("0.00" + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_1A3FFC0:       var_238 = (Space(&HA) + Space(3))
  loc_1A3FFC7:       var_2B8 = (Space(1) + Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2))))
  loc_1A3FFD3:       var_2E8 = (Space(1) + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A3FFDA:       var_3A4 = (Format(var_D4, "0.00") + Space(CLng((var_364 / 2))))
  loc_1A3FFE1:       var_45C = ((Space(CLng((Format(var_D4, "0.00") / 2))) = 0) + Space(CLng((Space(1) / 2))))
  loc_1A3FFED:       var_4A4 = (var_45C + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A3FFF4:       var_55C = (var_4A4 + Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(var_4A4, "0.00")), &HA, 1)) / 2))))
  loc_1A3FFFB:       var_614 = ("dd/mm/yy" + Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))))
  loc_1A40002:       var_66C = (CVar(var_B4.Fields.Item("DepDate")) + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A40009:       var_724 = (CVar(var_B4.Fields.Item("DepDate")) + Space(CLng((var_6E4 / 2))))
  loc_1A40010:       var_7FC = (var_724 + var_7EC)
  loc_1A40017:       var_864 = (CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 1, 12)) + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A4001E:       var_93C = (Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) + Space(CLng((var_8FC / 2))))
  loc_1A40024:       Print 1, var_93C
  loc_1A4016B:       var_1AC = CVar(vbNullString & Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A40171:       var_1CC = (var_1AC + Left(var_A4, &H2C))
  loc_1A40177:       Print 1, CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))
  loc_1A40222:       var_2A8 = Chr(&H12)
  loc_1A40231:       var_17C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A40237:       var_18C = (var_17C + Chr(&HF))
  loc_1A4023E:       var_1CC = (Left(var_A4, &H2C) + Space(2))
  loc_1A40247:       var_1DC = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")))) + "R.Rate")
  loc_1A4024E:       var_21C = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) + Space(&HE))
  loc_1A40257:       var_238 = (Space(3) + "Arrival")
  loc_1A4025E:       var_258 = (Space(1) + Space(&HD))
  loc_1A40267:       var_268 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A4026E:       var_288 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A40277:       var_298 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + " Bill # ")
  loc_1A4027E:       var_2B8 = ((CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2) + var_2A8)
  loc_1A40284:       Print 1, Space(1)
  loc_1A40302:       var_228 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_1A40330:       Proc_6_39_E7D3A0(var_17C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A4034C:       var_1DC = (6 - Len(Trim(CVar(CStr(var_17C)))))
  loc_1A40389:       Proc_6_39_E7D3A0(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A403B9:       Proc_6_39_E7D3A0(var_2A8, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A403D5:       var_2E8 = (10 - Len(Trim(CVar(CStr(var_2A8)))))
  loc_1A40408:       var_40C = 12
  loc_1A40443:       var_3CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A404F1:       var_4EC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A4055F:       var_5B4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A4060D:       var_6E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A4065B:       var_77C = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A406E0:       var_864 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A4070E:       var_248 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))))
  loc_1A4071A:       var_288 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A40721:       var_334 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(CLng((Format(var_D4, "0.00") / 2))))
  loc_1A40728:       var_3FC = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A4072F:       var_45C = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A40736:       var_53C = (var_45C + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A4073D:       var_604 = ((CVar(Proc_6_52_EAE084(CStr(Format(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"), "0.00")), &HA, 1)) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A40744:       var_65C = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A4074B:       var_724 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E4 / 2))))
  loc_1A40752:       var_7BC = (var_724 + Space(CLng((CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))) / 2))))
  loc_1A40759:       var_824 = (Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_1A40760:       var_8AC = (CVar(var_B4.Fields.Item("CountryName")) + Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) / 2))))
  loc_1A40766:       Print 1, Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA)
  loc_1A40844:       Print 1, Proc_6_45_EADFB8(" ", &H23, 1, 12, 1, 1, 1) & "|"
  loc_1A4085A:       Print 1, var_A4
  loc_1A40921:       var_17C = (CVar(Proc_6_45_EADFB8("Date", &HB, 12, 1)) + Space(1))
  loc_1A4092B:       var_1AC = (var_17C + CVar(Proc_6_45_EADFB8("Bill/Vou#", 9, 12)))
  loc_1A40932:       var_1DC = (Trim(CVar(CStr(var_17C))) + Space(1))
  loc_1A4093C:       var_21C = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) + CVar(Proc_6_45_EADFB8("Description", &H18, 1)))
  loc_1A40946:       var_248 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + CVar(Proc_6_52_EAE084("Debit", &HA)))
  loc_1A4094D:       var_268 = (Space(&HD) + Space(1))
  loc_1A40957:       var_288 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAE084("Credit", &HA)))
  loc_1A4095E:       var_2A8 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A40968:       var_2C8 = (var_2A8 + CVar(Proc_6_52_EAE084("Balance", &HB)))
  loc_1A4096E:       Print 1, Trim(CVar(CStr(var_2A8)))
  loc_1A409BD:       Print 1, var_A4
  loc_1A409C5:       var_86 = &H17
  loc_1A409C8:     End If
  loc_1A409CB:     var_B0.MoveNext
  loc_1A409D0:     GoTo loc_1A3EEAB
  loc_1A409D3:     ' Referenced from: 1A409F0
  loc_1A409D3:   End If
  loc_1A409D9:   If (var_86 <= &H32) Then
  loc_1A409E1:     Print 1, vbNullString
  loc_1A409ED:     var_86 = (var_86 + 1)
  loc_1A409F0:     GoTo loc_1A409D3
  loc_1A409F3:   End If
  loc_1A409F8:   Print 1, var_A4
  loc_1A40A04:   var_86 = (var_86 + 1)
  loc_1A40A47:   var_17C = IIf((var_D4 < CDbl(0)), CVar(Proc_6_45_EADFB8("Refund: ", 8, var_86, var_86)), CVar(Proc_6_45_EADFB8("Charge: ", 8, var_86)))
  loc_1A40ADB:   var_1AC = (var_17C + CVar(Proc_6_45_EADFB8(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise"), &H35)))
  loc_1A40AE5:   var_1DC = (Trim(CVar(CStr(var_17C))) + CVar(Proc_6_45_EADFB8("TOTAL:", 6)))
  loc_1A40AEF:   var_248 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A40AF5:   Print 1, Space(&HD)
  loc_1A40B37:   var_86 = (var_86 + 1)
  loc_1A40BB3:   var_1CC = CVar(Proc_6_45_EADFB8(CStr(Mid(CVar(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise")), &H36, var_17C)), &H35, 1)) 'String
  loc_1A40BE0:   var_1FC = (Space(8) + IIf((Len(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_1CC))
  loc_1A40BE6:   Print 1, "0.00"
  loc_1A40C1A:   var_86 = (var_86 + 1)
  loc_1A40C83:   var_17C = (Space(&H3D) + CVar(Proc_6_45_EADFB8("NET  :", 6, var_86)))
  loc_1A40C8D:   var_1DC = (var_17C + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A40C93:   Print 1, IIf((Len(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A40CBB:   var_86 = (var_86 + 1)
  loc_1A40CD3:   var_15C = (Space(&H3D) + "===================")
  loc_1A40CD9:   Print 1, CVar(Proc_6_45_EADFB8("NET  :", 6, var_86))
  loc_1A40CEC:   var_86 = (var_86 + 1)
  loc_1A40CF1:   var_86 = 0
  loc_1A40D6F:   var_944 = Proc_6_45_EADFB8("Payment ", 8, CDbl(0), var_86, var_86) & Proc_6_45_EADFB8("Cash", &HC, var_86) & "Company: " & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CompanyName")), 1)
  loc_1A40D74:   Print 1, var_944
  loc_1A40E08:   var_940 = Proc_6_45_EADFB8("USER", 8) & Proc_6_45_EADFB8(MemVar_1F950C8, &HC) & "Contact: " & Proc_6_38_E69628(CVar(var_B4.Fields.Item("ContactPerson")), 1)
  loc_1A40E0D:   Print 1, var_940
  loc_1A40E35:   Print 1, var_A4
  loc_1A40E41:   var_86 = (var_86 + 1)
  loc_1A40E7D:   var_17C = (Chr(&HF) + CVar(Proc_6_52_EAE084("Regardless of charge instructions I agree to be held", &H7B)))
  loc_1A40E84:   var_1AC = (var_17C + Chr(&H12))
  loc_1A40E8A:   Print 1, Format(CDbl(0), "0.00")
  loc_1A40EDE:   var_17C = (Chr(&HF) + CVar(Proc_6_52_EAE084("personally liable for payment of the total amount of this bill.", 134)))
  loc_1A40EE5:   var_1AC = (var_17C + Chr(&H12))
  loc_1A40EEB:   Print 1, Format(CDbl(0), "0.00")
  loc_1A40F07:   Print 1
  loc_1A40F0F:   Print 1
  loc_1A40F4F:   var_17C = (Chr(&HF) + Space(&HA))
  loc_1A40F58:   var_18C = (var_17C + "Cashier")
  loc_1A40F5F:   var_1CC = (Chr(&H12) + Space(&H60))
  loc_1A40F68:   var_1DC = (CVar(Proc_6_52_EAE084(CStr(Format(CDbl(0), "0.00")), &HC, 1)) + "Guest Signature")
  loc_1A40F6F:   var_21C = (IIf((Len(Proc_6_43_1003B24(Abs(CDbl(0)), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAE084(CStr(Format(CDbl(0), "0.00")), &HC, 1))) + Chr(&H12))
  loc_1A40F75:   Print 1, Format(CDbl(0), "0.00")
  loc_1A40FB7:   Print 1, Proc_6_98_11AC34C("**THANKS FOR YOUR VISIT**", "A", &H4E)
  loc_1A40FDA:   Print 1, Chr(&HC)
  loc_1A40FE6:   var_E4.MoveNext
  loc_1A40FEB:   GoTo loc_1A3DBD6
  loc_1A40FEE: End If
  loc_1A40FF0: Close 1
  loc_1A40FF9: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A41035: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_1A4104B: Close 1
  loc_1A41052: Set var_B4 = Nothing
  loc_1A4105A: Set var_E4 = Nothing
  loc_1A41062: Set var_F0 = Nothing
  loc_1A4106D: If (MemVar_1F953BC = "Y") Then
  loc_1A41089:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A41093: Else
  loc_1A410AC:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1A410B3: End If
  loc_1A410B3: Exit Sub
  loc_1A410B4: ' Referenced from: 1A3DB18
  loc_1A410BA: If (var_E8 = &HFF) Then
  loc_1A410C3:   unk_529B54.RollbackTrans
  loc_1A410C8: End If
  loc_1A410C8: Proc_6_60_E63754(var_86)
  loc_1A410CD: Exit Sub
End Sub

Public Sub Proc_64_52_E7A8E4(arg_C) 'E7A8E4
  'Data Table: 529B40
  Dim var_98 As TextBox
  loc_E7A892: Set var_8C = Me.Txt
  loc_E7A898: Call 0.Method_Proc_64_52_E7A8E4C (var_8E, var_86)
  loc_E7A8A8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A8BE:   Set var_8C = Me.Txt
  loc_E7A8C4:   Call 0.Method_Proc_64_52_E7A8E40 (CInt(var_86), var_98)
  loc_E7A8CC:   var_98.Enabled = arg_C
  loc_E7A8DB: Next var_92 'Byte
  loc_E7A8E1: Exit Sub
End Sub

Public Sub Proc_64_53_F11814
  'Data Table: 529B40
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_F1172A: Set var_8C = Me.Txt
  loc_F11730: Call 0.Method_Proc_64_53_F11814C (var_8E, var_86)
  loc_F11740: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F11756:   Set var_8C = Me.Txt
  loc_F1175C:   Call 0.Method_Proc_64_53_F118140 (CInt(var_86), var_98)
  loc_F11764:   var_98.Text = vbNullString
  loc_F11780:   Set var_8C = Me.Txt
  loc_F11786:   Call 0.Method_Proc_64_53_F118140 (CInt(var_86), var_98)
  loc_F1178E:   var_98.Tag = vbNullString
  loc_F1179D: Next var_92 'Byte
  loc_F117A3: Call Proc_64_57_139F840()
  loc_F117C6: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F117DB: Me.GuestImage.Picture = var_8C
  loc_F117F4: Me.GuestImage.Tag = vbNullString
  loc_F11808: Me.GuestImage.Visible = True
  loc_F11810: Exit Sub
  loc_F11811: StAryRecMove
End Sub

Public Sub Proc_64_54_EBC804
  'Data Table: 529B40
  loc_EBC77C: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBC78E:   Me.DGRoomNo.Visible = False
  loc_EBC796: End If
  loc_EBC7B2: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_EBC7C4:   Me.DGRoomType.Visible = False
  loc_EBC7CC: End If
  loc_EBC7E8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBC7FA:   Me.FGPoint.Visible = False
  loc_EBC802: End If
  loc_EBC802: Exit Sub
End Sub

Public Sub Proc_64_55_E7D9B0
  'Data Table: 529B40
  Dim var_8C As TextBox
  loc_E7D96A: Set var_88 = Me.Txt
  loc_E7D970: Call 0.Method_Proc_64_55_E7D9B00 (CInt(&HA), var_8C)
  loc_E7D9A4: If CBool(Trim(CVar(var_8C.Tag)) <> vbNullString) Then
  loc_E7D9A7:   Call Proc_64_51_1A410D0()
  loc_E7D9AC: End If
  loc_E7D9AC: Exit Sub
End Sub

Public Sub Proc_64_56_14DF5AC
  'Data Table: 529B40
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_AC As Variant
  Dim var_F4 As String
  Dim var_104 As String
  Dim var_FC As Variant
  Dim unk_529B54 As Connection15
  Dim var_F0 As String
  Dim var_A4 As Recordset15
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_CC As Variant
  Dim var_9E As Integer
  Dim var_8C As Recordset15
  Dim var_140 As Variant
  Dim var_EC As Variant
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_15C As MSHFlexGrid
  Dim var_110 As Fields15
  Dim var_17C As Variant
  Dim var_1D0 As Variant
  Dim var_1F4 As Variant
  Dim var_1B0 As Variant
  loc_14DE808: On Error Goto loc_14DF546
  loc_14DE816: Set var_A8 = Me.Txt
  loc_14DE81C: Call 0.Method_Proc_64_56_14DF5AC0 (CInt(&HA))
  loc_14DE845: If (Trim(CVar(var_AC)) = vbNullString) Then
  loc_14DE848:   Exit Sub
  loc_14DE849: End If
  loc_14DE86D: Call 0.Method_Proc_64_56_14DF5AC0 (CInt(&HA), var_AC, var_F0, "Select P.*,IsNull(P1.Nature,'') Nature,IsNull(P1.SplitSeqNo,0) SplitSeqNo from PayCharge P Left Join (Select P.DocId,Max(R.Nature) Nature,Max(R.SplitSeqNo) SplitSeqNo from Paycharge P Inner Join RevMast R On P.PayCode=R.Code where folionoDocid='")
  loc_14DE87E: var_F4 = -1 & var_F0
  loc_14DE885: var_104 = var_F4 & "' Group By P.DocId)P1 On P.DocId=P1.DocId where IsNull(P.ContraDocId,'')='' and P.FolionoDocid='"
  loc_14DE896: Set var_F8 = Me.Txt
  loc_14DE89C: Call 0.Method_Proc_64_56_14DF5AC0 (CInt(&HA), var_FC, var_100)
  loc_14DE8A4: var_104 = var_FC.Tag
  loc_14DE8BD: unk_529B54.Execute var_110 & var_100 & "' order by vDate,VNO,SNO", var_AC, 
  loc_14DE8C8: Set var_8C = var_110
  loc_14DE90E: unk_529B54.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_AC.Tag, -1
  loc_14DE919: Set var_A4 = Me.Txt
  loc_14DE932: If (global_130 = 0) Then
  loc_14DE944:   var_A8 = var_A4.Fields
  loc_14DE984:   var_CC = CVar(var_A4.Fields.Item("AutoSplitYN")) 'Address
  loc_14DE9AB:   If (var_A8 And (Proc_6_38_E69628(var_CC, (Proc_6_38_E69628(CVar(var_A8.Item("SplitYN"))) = "Yes")) = "N")) Then
  loc_14DE9DD:     If (MsgBox("Do You Want To Split Bill ?", &H24, var_CC, var_EC, var_150) = 6) Then
  loc_14DE9E2:       var_9E = &HFF
  loc_14DE9E8:     Else
  loc_14DE9EA:       var_9E = 0
  loc_14DE9ED:     End If
  loc_14DE9F0:   Else
  loc_14DEA48:     var_F4 = Proc_6_38_E69628(CVar(var_A4.Fields.Item("AutoSplitYN")), (Proc_6_38_E69628(CVar(var_A4.Fields.Item("SplitYN")), var_9E) = "Yes"))
  loc_14DEA66:     If (var_9E And (var_F4 = "Y")) Then
  loc_14DEA6B:       var_9E = &HFF
  loc_14DEA71:     Else
  loc_14DEAAA:       If (Proc_6_38_E69628(CVar(var_A4.Fields.Item("SplitYN"))) = "No") Then
  loc_14DEAAD:         GoTo loc_14DEAB5
  loc_14DEAB0:       End If
  loc_14DEAB2:       var_9E = &HFF
  loc_14DEAB5:       ' Referenced from:     14DEAAD
  loc_14DEAB5:     End If
  loc_14DEAB5:   End If
  loc_14DEAB5: End If
  loc_14DEABE: var_154 = var_8C.RecordCount
  loc_14DEACC: var_DC = CVar((var_154 + 2)) 'Long
  loc_14DEADB: Me.FGrid.Rows = "SplitYN"
  loc_14DEAF0: Set var_A8 = Me.FGrid
  loc_14DEAF6: var_A8.Row = 1
  loc_14DEAFE: ' Referenced from: 14DF37B
  loc_14DEB10: If Not(Me.var_A8.EOF) Then
  loc_14DEB17:   Set var_15C = Me.FGrid
  loc_14DEB24:   var_CC = Me.FGrid.Row
  loc_14DEB65:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.var_CC.Fields.Item("MarkEntry")), CVar(CLng(0)), CVar(CLng(var_CC)))) 'String
  loc_14DEB6C:   LateIdCallSt
  loc_14DEB8E:   var_CC = Me.FGrid.Row
  loc_14DEBCF:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.var_CC.Fields.Item("VDate")), CVar(CLng(1)), CVar(CLng(var_CC)), var_15C)) 'String
  loc_14DEBD6:   LateIdCallSt
  loc_14DEBF8:   var_CC = Me.FGrid.Row
  loc_14DEC39:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.var_CC.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_CC)), var_15C)) 'String
  loc_14DEC40:   LateIdCallSt
  loc_14DEC81:   var_150 = Me.FGrid.Row
  loc_14DEC8A:   var_130 = CVar(CLng(var_150)) 'Long
  loc_14DEC92:   var_16C = CVar(CLng(3)) 'Long
  loc_14DECBF:   var_18C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_14DECC6:   LateIdCallSt
  loc_14DED0B:   var_150 = Me.FGrid.Row
  loc_14DED30:   var_CC = "0.00"
  loc_14DED50:   LateIdCallSt
  loc_14DED9C:   Proc_6_39_E7D3A0(var_CC, CVar(Me.var_150.Fields.Item("AmtDr")), CVar(var_94), var_15C, CVar(CStr(Format(CVar(Me.var_150.Fields.Item("AmtCr")), var_CC))), 1, 1)
  loc_14DEDA4:   var_EC = (CVar(CLng(4)) + var_CC)
  loc_14DEDA9:   var_94 = CSng(Format(CVar(Me.var_150.Fields.Item("AmtCr")), var_CC))
  loc_14DEDE8:   Proc_6_39_E7D3A0(var_CC, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_150)))
  loc_14DEDF0:   var_EC = (var_15C + var_CC)
  loc_14DEDF5:   var_9C = CSng(Format(CVar(Me.var_150.Fields.Item("AmtCr")), var_CC))
  loc_14DEE17:   var_130 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DEE1F:   var_16C = CVar(CLng(5)) 'Long
  loc_14DEE41:   var_BC = CVar(Abs((var_94 - var_9C))) 'Double
  loc_14DEE51:   var_18C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_14DEE58:   LateIdCallSt
  loc_14DEE7C:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_14DEE92:     var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DEE9A:     var_130 = CVar(CLng(6)) 'Long
  loc_14DEE9F:     var_16C = "Dr"
  loc_14DEEA8:     LateIdCallSt
  loc_14DEEB9:   Else
  loc_14DEEC5:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_14DEEDB:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DEEE3:       var_130 = CVar(CLng(6)) 'Long
  loc_14DEEE8:       var_16C = "Cr"
  loc_14DEEF1:       LateIdCallSt
  loc_14DEF02:     Else
  loc_14DEF15:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DEF1D:       var_130 = CVar(CLng(6)) 'Long
  loc_14DEF22:       var_16C = vbNullString
  loc_14DEF2B:       LateIdCallSt
  loc_14DEF39:     End If
  loc_14DEF39:   End If
  loc_14DEF43:   var_CC = Me.FGrid.Row
  loc_14DEF5C:   var_DC = "DocID"
  loc_14DEF84:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.var_CC.Fields.Item(var_DC)), CVar(CLng(7)), CVar(CLng(var_CC)), var_15C, var_16C, var_130, var_DC)) 'String
  loc_14DEF8B:   LateIdCallSt
  loc_14DEFAD:   var_CC = Me.FGrid.Row
  loc_14DEFEE:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.var_CC.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_CC)), var_15C, var_EC, var_15C)) 'String
  loc_14DEFF5:   LateIdCallSt
  loc_14DF017:   var_CC = Me.FGrid.Row
  loc_14DF058:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.var_CC.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_CC)), var_15C, var_EC)) 'String
  loc_14DF05F:   LateIdCallSt
  loc_14DF08A:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF0C6:   If ((CDbl(Val(CStr(var_15C.TextMatrix)))) = CDbl(0)) And (var_9E = &HFF)) Then
  loc_14DF0D3:     var_CC = Me.FGrid.Row
  loc_14DF0EC:     var_DC = "SplitSeqNo"
  loc_14DF114:     var_EC = CVar(Proc_6_38_E69628(CVar(Me.var_CC.Fields.Item(var_DC)), CVar(CLng(&HA)), CVar(CLng(var_CC)), CVar(CLng(&HA)), var_DC, var_15C)) 'String
  loc_14DF11B:     LateIdCallSt
  loc_14DF133:   End If
  loc_14DF146:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF14E:   var_130 = CVar(CLng(&HA)) 'Long
  loc_14DF156:   var_CC = var_15C.TextMatrix)
  loc_14DF17B:   If (CDbl(Val(CStr(var_CC))) = CDbl(0)) Then
  loc_14DF227:     var_1D0 = (Me.var_CC.Fields.Item("Nature").Value <> "Room Charge") And (Me.Recordset15.Fields.Item("PlanCharge").Value <> "Yes") And (Me.Recordset15.Fields.Item("AmtDr").Value <> 0)
  loc_14DF255:     If CBool(var_1D0 And (var_9E = &HFF)) Then
  loc_14DF26B:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF273:       var_130 = CVar(CLng(&HA)) 'Long
  loc_14DF278:       var_16C = "2"
  loc_14DF281:       LateIdCallSt
  loc_14DF292:     Else
  loc_14DF2A5:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF2AD:       var_130 = CVar(CLng(&HA)) 'Long
  loc_14DF2B2:       var_16C = "1"
  loc_14DF2BB:       LateIdCallSt
  loc_14DF2C9:     End If
  loc_14DF2C9:   End If
  loc_14DF2D3:   var_CC = Me.FGrid.Row
  loc_14DF2EC:   var_DC = "PayCode"
  loc_14DF314:   var_EC = CVar(Proc_6_38_E69628(CVar(Me.var_CC.Fields.Item(var_DC)), CVar(CLng(&HB)), CVar(CLng(var_CC)), var_15C, var_16C, var_130, var_DC)) 'String
  loc_14DF31B:   LateIdCallSt
  loc_14DF335:   Set var_15C = Nothing 
  loc_14DF352:   var_DC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_14DF35B:   Set var_AC = Me.FGrid
  loc_14DF361:   var_AC.Row = var_DC
  loc_14DF376:   Me.var_AC.MoveNext
  loc_14DF37B:   GoTo loc_14DEAFE
  loc_14DF37E: End If
  loc_14DF391: Me.FGrid.FixedRows = 1
  loc_14DF39D: Set var_1E4 = Me.Fgrid1
  loc_14DF3A0: var_130 = 0
  loc_14DF3AC: var_16C = CVar(CLng(1)) 'Long
  loc_14DF3DA: var_EC = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_14DF3E1: LateIdCallSt
  loc_14DF3F2: var_130 = 0
  loc_14DF3FE: var_16C = CVar(CLng(2)) 'Long
  loc_14DF42C: var_EC = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_14DF433: LateIdCallSt
  loc_14DF444: var_130 = 0
  loc_14DF450: var_16C = CVar(CLng(3)) 'Long
  loc_14DF472: var_BC = CVar(Abs((var_94 - var_9C))) 'Double
  loc_14DF482: var_150 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_14DF489: LateIdCallSt
  loc_14DF49C: var_17C = 0
  loc_14DF4A8: var_1F4 = CVar(CLng(4)) 'Long
  loc_14DF4B2: var_CC = vbNullString
  loc_14DF4CF: var_DC = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_14DF4D6: var_EC = IIf(var_9C, "Cr", var_CC)
  loc_14DF4E3: var_150 = "Dr"
  loc_14DF4F5: var_140 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_14DF505: var_1B0 = CVar(CStr(IIf(CVar(CLng(&HB)), var_150, var_EC))) 'String
  loc_14DF50C: LateIdCallSt
  loc_14DF529: Set var_1E4 = Nothing 
  loc_14DF532: global_130 = &HFF
  loc_14DF53A: Set var_A4 = Nothing
  loc_14DF542: Set var_8C = Nothing
  loc_14DF545: Exit Sub
  loc_14DF546: ' Referenced from: 14DE808
  loc_14DF55F: MsgBox("FILL DETAILS", 0, var_CC, var_EC, var_150)
  loc_14DF585: Set var_A8 = Err()
  loc_14DF58B: Call 0.Method_arg_1C (var_154, 0, var_CC, var_EC, var_150, global_130, var_1E4, var_1B0)
  loc_14DF597: MsgBox(CVar(var_154), var_1F4, var_17C, var_1E4, var_150)
  loc_14DF5AA: Exit Sub
End Sub

Public Sub Proc_64_57_139F840
  'Data Table: 529B40
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_139EF28: Set var_90 = Me.FGrid
  loc_139EF3E: Me.FGrid.Rows = 1
  loc_139EF5A: global_60 = CStr(CLng(var_90.BackColor))
  loc_139EF70: var_90.Cols = &HD
  loc_139EF75: var_A0 = 0
  loc_139EF81: var_D8 = CVar(CLng(0)) 'Long
  loc_139EF86: var_F8 = "SNo"
  loc_139EF8F: LateIdCallSt
  loc_139EF9A: var_A0 = CVar(CLng(0)) 'Long
  loc_139EF9F: var_D8 = 0
  loc_139EFAB: LateIdCallSt
  loc_139EFB3: var_A0 = 0
  loc_139EFBF: var_D8 = CVar(CLng(1)) 'Long
  loc_139EFC4: var_F8 = "Date"
  loc_139EFCD: LateIdCallSt
  loc_139EFD8: var_A0 = CVar(CLng(1)) 'Long
  loc_139EFE3: var_D8 = CVar(CInt(1)) 'Integer
  loc_139EFEA: LateIdCallSt
  loc_139EFF5: var_A0 = CVar(CLng(1)) 'Long
  loc_139F000: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F007: LateIdCallSt
  loc_139F012: var_A0 = CVar(CLng(1)) 'Long
  loc_139F017: var_D8 = &H4E2
  loc_139F023: LateIdCallSt
  loc_139F02B: var_A0 = 0
  loc_139F037: var_D8 = CVar(CLng(2)) 'Long
  loc_139F03C: var_F8 = "Particulars"
  loc_139F045: LateIdCallSt
  loc_139F050: var_A0 = CVar(CLng(2)) 'Long
  loc_139F05B: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F062: LateIdCallSt
  loc_139F06D: var_A0 = CVar(CLng(2)) 'Long
  loc_139F078: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F07F: LateIdCallSt
  loc_139F08A: var_A0 = CVar(CLng(2)) 'Long
  loc_139F08F: var_D8 = &HBB8
  loc_139F09B: LateIdCallSt
  loc_139F0A3: var_A0 = 0
  loc_139F0AF: var_D8 = CVar(CLng(3)) 'Long
  loc_139F0B4: var_F8 = "Debit"
  loc_139F0BD: LateIdCallSt
  loc_139F0C8: var_A0 = CVar(CLng(3)) 'Long
  loc_139F0D3: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F0DA: LateIdCallSt
  loc_139F0E5: var_A0 = CVar(CLng(3)) 'Long
  loc_139F0F0: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F0F7: LateIdCallSt
  loc_139F102: var_A0 = CVar(CLng(3)) 'Long
  loc_139F107: var_D8 = &H3E8
  loc_139F113: LateIdCallSt
  loc_139F11B: var_A0 = 0
  loc_139F127: var_D8 = CVar(CLng(4)) 'Long
  loc_139F12C: var_F8 = "Credit"
  loc_139F135: LateIdCallSt
  loc_139F140: var_A0 = CVar(CLng(4)) 'Long
  loc_139F14B: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F152: LateIdCallSt
  loc_139F15D: var_A0 = CVar(CLng(4)) 'Long
  loc_139F168: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F16F: LateIdCallSt
  loc_139F17A: var_A0 = CVar(CLng(4)) 'Long
  loc_139F17F: var_D8 = &H3E8
  loc_139F18B: LateIdCallSt
  loc_139F193: var_A0 = 0
  loc_139F19F: var_D8 = CVar(CLng(5)) 'Long
  loc_139F1A4: var_F8 = "Balance"
  loc_139F1AD: LateIdCallSt
  loc_139F1B8: var_A0 = CVar(CLng(5)) 'Long
  loc_139F1C3: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F1CA: LateIdCallSt
  loc_139F1D5: var_A0 = CVar(CLng(5)) 'Long
  loc_139F1E0: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F1E7: LateIdCallSt
  loc_139F1F2: var_A0 = CVar(CLng(5)) 'Long
  loc_139F1F7: var_D8 = &H3E8
  loc_139F203: LateIdCallSt
  loc_139F20B: var_A0 = 0
  loc_139F217: var_D8 = CVar(CLng(6)) 'Long
  loc_139F21C: var_F8 = vbNullString
  loc_139F225: LateIdCallSt
  loc_139F230: var_A0 = CVar(CLng(6)) 'Long
  loc_139F23B: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F242: LateIdCallSt
  loc_139F24D: var_A0 = CVar(CLng(6)) 'Long
  loc_139F258: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F25F: LateIdCallSt
  loc_139F26A: var_A0 = CVar(CLng(6)) 'Long
  loc_139F26F: var_D8 = &H12C
  loc_139F27B: LateIdCallSt
  loc_139F283: var_A0 = 0
  loc_139F28F: var_D8 = CVar(CLng(7)) 'Long
  loc_139F294: var_F8 = vbNullString
  loc_139F29D: LateIdCallSt
  loc_139F2A8: var_A0 = CVar(CLng(7)) 'Long
  loc_139F2B3: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F2BA: LateIdCallSt
  loc_139F2C5: var_A0 = CVar(CLng(7)) 'Long
  loc_139F2D0: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F2D7: LateIdCallSt
  loc_139F2E2: var_A0 = CVar(CLng(7)) 'Long
  loc_139F2E7: var_D8 = 0
  loc_139F2F3: LateIdCallSt
  loc_139F2FB: var_A0 = 0
  loc_139F307: var_D8 = CVar(CLng(8)) 'Long
  loc_139F30C: var_F8 = vbNullString
  loc_139F315: LateIdCallSt
  loc_139F320: var_A0 = CVar(CLng(8)) 'Long
  loc_139F32B: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F332: LateIdCallSt
  loc_139F33D: var_A0 = CVar(CLng(8)) 'Long
  loc_139F348: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F34F: LateIdCallSt
  loc_139F35A: var_A0 = CVar(CLng(8)) 'Long
  loc_139F35F: var_D8 = 0
  loc_139F36B: LateIdCallSt
  loc_139F373: var_A0 = 0
  loc_139F37F: var_D8 = CVar(CLng(9)) 'Long
  loc_139F384: var_F8 = "User"
  loc_139F38D: LateIdCallSt
  loc_139F398: var_A0 = CVar(CLng(9)) 'Long
  loc_139F3A3: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F3AA: LateIdCallSt
  loc_139F3B5: var_A0 = CVar(CLng(9)) 'Long
  loc_139F3C0: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F3C7: LateIdCallSt
  loc_139F3D2: var_A0 = CVar(CLng(9)) 'Long
  loc_139F3D7: var_D8 = &H1F4
  loc_139F3E3: LateIdCallSt
  loc_139F3EB: var_A0 = 0
  loc_139F3F7: var_D8 = CVar(CLng(&HA)) 'Long
  loc_139F3FC: var_F8 = "Split"
  loc_139F405: LateIdCallSt
  loc_139F410: var_A0 = CVar(CLng(&HA)) 'Long
  loc_139F41B: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F422: LateIdCallSt
  loc_139F42D: var_A0 = CVar(CLng(&HA)) 'Long
  loc_139F438: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F43F: LateIdCallSt
  loc_139F44A: var_A0 = CVar(CLng(&HA)) 'Long
  loc_139F44F: var_D8 = &H1F4
  loc_139F45B: LateIdCallSt
  loc_139F463: var_A0 = 0
  loc_139F46F: var_D8 = CVar(CLng(&HB)) 'Long
  loc_139F474: var_F8 = "REVCODE"
  loc_139F47D: LateIdCallSt
  loc_139F488: var_A0 = CVar(CLng(&HB)) 'Long
  loc_139F493: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F49A: LateIdCallSt
  loc_139F4A5: var_A0 = CVar(CLng(&HB)) 'Long
  loc_139F4B0: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F4B7: LateIdCallSt
  loc_139F4C2: var_A0 = CVar(CLng(&HB)) 'Long
  loc_139F4C7: var_D8 = &H14
  loc_139F4D3: LateIdCallSt
  loc_139F4DB: var_A0 = 0
  loc_139F4E7: var_D8 = CVar(CLng(&HC)) 'Long
  loc_139F4EC: var_F8 = "Balance"
  loc_139F4F5: LateIdCallSt
  loc_139F500: var_A0 = CVar(CLng(&HC)) 'Long
  loc_139F50B: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F512: LateIdCallSt
  loc_139F51D: var_A0 = CVar(CLng(&HC)) 'Long
  loc_139F528: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F52F: LateIdCallSt
  loc_139F53A: var_A0 = CVar(CLng(&HC)) 'Long
  loc_139F53F: var_D8 = 0
  loc_139F54B: LateIdCallSt
  loc_139F553: var_A0 = vbNullString
  loc_139F55D: Set var_B4 = Me.FGrid
  loc_139F581: Me.FGrid.FixedRows = 1
  loc_139F58B: Set var_90 = Nothing 
  loc_139F593: Set var_10C = Me.Fgrid1
  loc_139F5A9: Me.Fgrid1.Rows = 1
  loc_139F5C5: global_60 = CStr(CLng(var_10C.BackColor))
  loc_139F5DB: var_10C.Cols = 5
  loc_139F5E0: var_A0 = 0
  loc_139F5EC: var_D8 = CVar(CLng(0)) 'Long
  loc_139F5F1: var_F8 = "Total :"
  loc_139F5FA: LateIdCallSt
  loc_139F605: var_A0 = CVar(CLng(0)) 'Long
  loc_139F610: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F617: LateIdCallSt
  loc_139F622: var_A0 = CVar(CLng(0)) 'Long
  loc_139F62D: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F634: LateIdCallSt
  loc_139F63F: var_A0 = CVar(CLng(0)) 'Long
  loc_139F644: var_D8 = &H109A
  loc_139F650: LateIdCallSt
  loc_139F658: var_A0 = 0
  loc_139F664: var_D8 = CVar(CLng(1)) 'Long
  loc_139F669: var_F8 = vbNullString
  loc_139F672: LateIdCallSt
  loc_139F67D: var_A0 = CVar(CLng(1)) 'Long
  loc_139F688: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F68F: LateIdCallSt
  loc_139F69A: var_A0 = CVar(CLng(1)) 'Long
  loc_139F6A5: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F6AC: LateIdCallSt
  loc_139F6B7: var_A0 = CVar(CLng(1)) 'Long
  loc_139F6BC: var_D8 = &H3E8
  loc_139F6C8: LateIdCallSt
  loc_139F6D0: var_A0 = 0
  loc_139F6DC: var_D8 = CVar(CLng(2)) 'Long
  loc_139F6E1: var_F8 = vbNullString
  loc_139F6EA: LateIdCallSt
  loc_139F6F5: var_A0 = CVar(CLng(2)) 'Long
  loc_139F700: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F707: LateIdCallSt
  loc_139F712: var_A0 = CVar(CLng(2)) 'Long
  loc_139F71D: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F724: LateIdCallSt
  loc_139F72F: var_A0 = CVar(CLng(2)) 'Long
  loc_139F734: var_D8 = &H3E8
  loc_139F740: LateIdCallSt
  loc_139F748: var_A0 = 0
  loc_139F754: var_D8 = CVar(CLng(3)) 'Long
  loc_139F759: var_F8 = vbNullString
  loc_139F762: LateIdCallSt
  loc_139F76D: var_A0 = CVar(CLng(3)) 'Long
  loc_139F778: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F77F: LateIdCallSt
  loc_139F78A: var_A0 = CVar(CLng(3)) 'Long
  loc_139F795: var_D8 = CVar(CInt(7)) 'Integer
  loc_139F79C: LateIdCallSt
  loc_139F7A7: var_A0 = CVar(CLng(3)) 'Long
  loc_139F7AC: var_D8 = &H3E8
  loc_139F7B8: LateIdCallSt
  loc_139F7C0: var_A0 = 0
  loc_139F7CC: var_D8 = CVar(CLng(4)) 'Long
  loc_139F7D1: var_F8 = vbNullString
  loc_139F7DA: LateIdCallSt
  loc_139F7E5: var_A0 = CVar(CLng(4)) 'Long
  loc_139F7F0: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F7F7: LateIdCallSt
  loc_139F802: var_A0 = CVar(CLng(4)) 'Long
  loc_139F80D: var_D8 = CVar(CInt(1)) 'Integer
  loc_139F814: LateIdCallSt
  loc_139F81F: var_A0 = CVar(CLng(4)) 'Long
  loc_139F824: var_D8 = &H12C
  loc_139F830: LateIdCallSt
  loc_139F83A: Set var_10C = Nothing 
  loc_139F83E: Exit Sub
End Sub

Public Sub Proc_64_58_10734F4(arg_C) '10734F4
  'Data Table: 529B40
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_100 As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  loc_10732CD: For var_A0 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_10732F1:   var_D0 = (CVar(arg_14) + Left(arg_C, 5))
  loc_107332D:   If (var_D0 = CVar(MemVar_1F95078 & "DISC" & "D" & MemVar_1F95078 & "RC")) Then
  loc_1073334:     var_150 = CVar(CLng(var_86)) 'Long
  loc_107333C:     var_170 = CVar(CLng(7)) 'Long
  loc_1073365:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_107336D:     var_100 = CVar(CLng(7)) 'Long
  loc_10733C9:     var_1F4 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(arg_C)) And (Left(Trim(CVar(CStr(Me.FGrid.TextMatrix)))), 5) = CVar("D" & MemVar_1F95078 & "RC"))
  loc_10733D1:     var_204 = CVar(CLng(var_86)) 'Long
  loc_107343D:     If CBool(CVar(CLng(&HB)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F95078 & "DISC"))) Then
  loc_1073444:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_107344C:       var_100 = CVar(CLng(&HA)) 'Long
  loc_107345C:       Set var_8C = Me.FGrid
  loc_1073462:       LateIdCallSt
  loc_107346D:     End If
  loc_1073470:   Else
  loc_1073474:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_107347C:     var_100 = CVar(CLng(7)) 'Long
  loc_10734B9:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(arg_C)) Then
  loc_10734C0:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_10734C8:       var_100 = CVar(CLng(&HA)) 'Long
  loc_10734D8:       Set var_8C = Me.FGrid
  loc_10734DE:       LateIdCallSt
  loc_10734E9:     End If
  loc_10734E9:   End If
  loc_10734EC: Next var_A0 'Integer
  loc_10734F1: Exit Sub
End Sub

Public Sub Proc_64_59_E3EDC0
  'Data Table: 529B40
  loc_E3EDA0: Set var_88 = Me.TopCtrl1
  loc_E3EDA6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6803000E()
  loc_E3EDBB: If ( = "Browse") Then
  loc_E3EDBE:   Exit Sub
  loc_E3EDBF: End If
  loc_E3EDBF: Exit Sub
End Sub

Public Sub Proc_64_60_EF479C
  'Data Table: 529B40
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_A4 As TextBox
  Dim var_110 As Variant
  loc_EF46F3: var_A0 = CLng(Me.FGrid.Col)
  loc_EF4703: If Not (var_A0 = CLng(&HA)) Then
  loc_EF470D:   If (var_A0 = CLng(3)) Then
  loc_EF4710:   End If
  loc_EF4723:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EF473B:   var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_EF474C:   Set var_8C = Me.TxtGrid
  loc_EF4752:   Call 0.Method_Proc_64_60_EF479C0 (0, var_A4, var_A8)
  loc_EF475A:   var_F0 = var_A4.Text
  loc_EF4762:   var_110 = CVar(var_A8) 'String
  loc_EF476A:   Set var_124 = Me.FGrid
  loc_EF4770:   LateIdCallSt
  loc_EF478E: End If
  loc_EF4793: Proc_64_60_EF479C = &HFF
End Sub

Public Sub Proc_64_61_E7F070
  'Data Table: 529B40
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_E7F02D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7F037:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7F03F:   var_D0 = CVar(CLng(0)) 'Long
  loc_E7F044:   var_F0 = vbNullString
  loc_E7F04E:   Set var_8C = Me.FGrid
  loc_E7F054:   LateIdCallSt
  loc_E7F062: Next var_A0 'Integer
  loc_E7F06C: global_124 = 0
  loc_E7F06F: Exit Sub
End Sub

Public Sub Proc_64_62_FBA4D8(arg_C) 'FBA4D8
  'Data Table: 529B40
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_144 As Variant
  Dim var_154 As String
  Dim var_16C As TextBox
  Dim var_208 As Variant
  loc_FBA39B: Set var_90 = Me.Txt
  loc_FBA3A1: Call 0.Method_Proc_64_62_FBA4D80 (CInt(&HA), var_94)
  loc_FBA3B2: var_9C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" & var_94.Text
  loc_FBA402: var_144 = CVar(var_9C & " And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & ") Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all " 
  loc_FBA406: var_154 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_FBA41D: Set var_168 = Me.Txt
  loc_FBA423: Call 0.Method_Proc_64_62_FBA4D80 (CInt(&HA), var_16C)
  loc_FBA476: var_208 = var_144 & var_154 & CVar(var_16C.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_FBA4CF: var_88 = CStr(var_208 & CVar(arg_C) & ") Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all ")
  loc_FBA4D2: Proc_64_62_FBA4D8 = 
End Sub

Public Sub Proc_64_63_1118768(arg_C) '1118768
  'Data Table: 529B40
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_134 As String
  Dim var_144 As Variant
  Dim var_154 As String
  Dim var_16C As TextBox
  Dim var_208 As Variant
  Dim var_238 As String
  Dim var_258 As String
  Dim var_270 As TextBox
  Dim var_30C As Variant
  Dim var_33C As String
  Dim var_35C As String
  Dim var_374 As TextBox
  Dim var_410 As Variant
  Dim var_440 As String
  loc_11184E7: Set var_90 = Me.Txt
  loc_11184ED: Call 0.Method_Proc_64_63_11187680 (CInt(&HA), var_94)
  loc_11184FE: var_9C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' as AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" & var_94.Text
  loc_1118549: var_134 = ") AND PayCode not in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_111854E: var_144 = CVar(var_9C & " And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & var_134 
  loc_1118552: var_154 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_1118569: Set var_168 = Me.Txt
  loc_111856F: Call 0.Method_Proc_64_63_11187680 (CInt(&HA), var_16C)
  loc_11185C2: var_208 = var_144 & var_154 & CVar(var_16C.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" 
  loc_11185D0: var_238 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_11185D9: var_258 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_11185F0: Set var_26C = Me.Txt
  loc_11185F6: Call 0.Method_Proc_64_63_11187680 (CInt(&HA), var_270)
  loc_1118649: var_30C = var_208 & CVar(arg_C) & var_238 & var_258 & CVar(var_270.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_1118657: var_33C = ") AND PayCode NOT in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_1118660: var_35C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_1118677: Set var_370 = Me.Txt
  loc_111867D: Call 0.Method_Proc_64_63_11187680 (CInt(&HA), var_374)
  loc_11186D0: var_410 = var_30C & CVar(arg_C) & var_33C & var_35C & CVar(var_374.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_11186DE: var_440 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_111875D: var_88 = CStr(var_410 & CVar(arg_C) & var_440)
  loc_1118760: Proc_64_63_1118768 = 
End Sub
