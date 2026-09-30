VERSION 5.00
Begin VB.Form frmFomB
  Caption = "FOM Bill Reprint"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmFomB.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10440
  ClientHeight = 7050
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
  Begin CommandButton CmdGeneInvoice
    Caption = "Gen eInvoice"
    Left = 14280
    Top = 8865
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 80
  End
  Begin CommandButton CmdeInvoiceJson
    Caption = "eInvoice Json"
    Left = 14280
    Top = 8490
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 79
  End
  Begin CommandButton CmdeInvoiceSql
    Caption = "eInvoice Sql"
    Left = 16230
    Top = 8460
    Width = 1665
    Height = 375
    Visible = 0   'False
    TabIndex = 78
  End
  Begin Frame FreInvInfo
    Caption = "eInvoice Info:"
    Left = 13320
    Top = 7335
    Width = 6735
    Height = 1095
    Visible = 0   'False
    TabIndex = 71
    Begin TextBox TxteInvInfo
      Index = 0
      Left = 795
      Top = 255
      Width = 5800
      Height = 240
      TabIndex = 74
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxteInvInfo
      Index = 1
      Left = 795
      Top = 510
      Width = 5800
      Height = 240
      TabIndex = 73
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxteInvInfo
      Index = 2
      Left = 795
      Top = 765
      Width = 5800
      Height = 240
      TabIndex = 72
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LbleInvInfo
      Caption = "Ack.Dt.:"
      Index = 2
      Left = 90
      Top = 765
      Width = 600
      Height = 195
      TabIndex = 77
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LbleInvInfo
      Caption = "Ack.No.:"
      Index = 1
      Left = 90
      Top = 510
      Width = 630
      Height = 195
      TabIndex = 76
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LbleInvInfo
      Caption = "IRN:"
      Index = 0
      Left = 90
      Top = 255
      Width = 330
      Height = 195
      TabIndex = 75
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
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
    Left = 1755
    Top = 2445
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Locked = -1  'True
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
  Begin BtnEnh CmdSettleRcpt
    Left = 10005
    Top = 3195
    Width = 1095
    Height = 960
    TabIndex = 65
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6600
    Width = 10440
    Height = 450
    Visible = 0   'False
    TabIndex = 64
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6660
    Top = 615
    Width = 705
    Height = 270
    Enabled = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin MSHFlexGrid FRectGrid
    Left = 14730
    Top = 2760
    Width = 4245
    Height = 1170
    Visible = 0   'False
    TabIndex = 52
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    Left = 15375
    Top = 4695
    Width = 345
    Height = 240
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    MaxLength = 9
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10380
    Top = 2595
    Width = 3405
    Height = 275
    Enabled = 0   'False
    TabIndex = 48
    BorderStyle = 0 'None
    Locked = -1  'True
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
  Begin Frame FrmAdjust
    Left = 14685
    Top = 1050
    Width = 4395
    Height = 1590
    Visible = 0   'False
    TabIndex = 40
    Begin CommandButton Command1
      Caption = "Cancel"
      Left = 3630
      Top = 225
      Width = 720
      Height = 315
      TabIndex = 49
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
      Left = 3120
      Top = 225
      Width = 495
      Height = 315
      TabIndex = 42
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
    Begin CommandButton CMDSET
      Caption = "Set"
      Left = 1710
      Top = 1110
      Width = 795
      Height = 315
      Enabled = 0   'False
      TabIndex = 44
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
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1005
      Top = 225
      Width = 2115
      Height = 315
      TabIndex = 41
      PasswordChar = "#"
      MaxLength = 50
    End
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1485
      Top = 735
      Width = 1260
      Height = 315
      Enabled = 0   'False
      TabIndex = 43
      Alignment = 1 'Right Justify
      MaxLength = 8
    End
    Begin Label Lbl
      Caption = "Password"
      Index = 0
      ForeColor = &H0&
      Left = 120
      Top = 270
      Width = 825
      Height = 240
      TabIndex = 46
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Lbl
      Caption = "Room Rate"
      Index = 12
      ForeColor = &H0&
      Left = 420
      Top = 750
      Width = 945
      Height = 240
      TabIndex = 45
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9195
    Top = 1020
    Width = 330
    Height = 275
    Enabled = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9540
    Top = 1020
    Width = 330
    Height = 275
    Enabled = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    Left = 14760
    Top = 5850
    Width = 3435
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 19
    MaxLength = 8
    Locked = -1  'True
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 2160
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 1020
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 1020
    Width = 1305
    Height = 275
    Enabled = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 11
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 1875
    Width = 1995
    Height = 275
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 16815
    Top = 5355
    Width = 990
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 13
    MaxLength = 1
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 2160
    Width = 480
    Height = 275
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 2
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8370
    Top = 2160
    Width = 480
    Height = 275
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 2
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 1590
    Width = 1995
    Height = 275
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 16
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
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 1305
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 1590
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 1875
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10380
    Top = 1275
    Width = 3435
    Height = 275
    Enabled = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 16
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
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10380
    Top = 1560
    Width = 3435
    Height = 275
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10380
    Top = 1845
    Width = 3435
    Height = 275
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 1305
    Width = 1305
    Height = 275
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 11
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9540
    Top = 1305
    Width = 330
    Height = 275
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9195
    Top = 1305
    Width = 330
    Height = 275
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin DataCombo TXT_GNAME
    Left = 11490
    Top = 4335
    Width = 1740
    Height = 360
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 135
    Top = 2745
    Width = 9825
    Height = 5640
    TabIndex = 38
  End
  Begin MSHFlexGrid Fgrid1
    Left = 120
    Top = 8400
    Width = 9840
    Height = 285
    TabIndex = 39
  End
  Begin BtnEnh CmdExit
    Left = 9975
    Top = 7275
    Width = 1275
    Height = 1050
    TabIndex = 63
  End
  Begin BtnEnh CmdPrint
    Left = 11085
    Top = 3195
    Width = 1095
    Height = 960
    TabIndex = 66
  End
  Begin BtnEnh CmdSum
    Left = 12165
    Top = 3195
    Width = 1095
    Height = 960
    TabIndex = 67
  End
  Begin BtnEnh cmdAdujst
    Left = 13260
    Top = 3195
    Width = 1110
    Height = 960
    Visible = 0   'False
    TabIndex = 68
  End
  Begin Image QrImage
    Left = 13335
    Top = 4245
    Width = 1800
    Height = 1350
    Visible = 0   'False
  End
  Begin Label Lbl
    Caption = "Travel Agent"
    Index = 15
    ForeColor = &HC00000&
    Left = 195
    Top = 2445
    Width = 1215
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
  Begin Label LblBillNo
    Caption = "Bill # "
    BackColor = &HFFFF00&
    ForeColor = &H80FF80&
    Left = 7590
    Top = 615
    Width = 2235
    Height = 210
    TabIndex = 69
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5295
    Top = 8415
    Width = 2790
    Height = 285
    TabIndex = 62
    Alignment = 2 'Center
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
    Left = 1920
    Top = 8415
    Width = 2880
    Height = 255
    TabIndex = 61
    Alignment = 2 'Center
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
  Begin Label Label5
    Caption = "Select Bill #"
    BackColor = &HC0C000&
    ForeColor = &HFFFFFF&
    Left = 9990
    Top = 4350
    Width = 1485
    Height = 345
    TabIndex = 60
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
  Begin Label Label4
    Caption = "Payment Mode"
    BackColor = &HC0C000&
    ForeColor = &HFFFFFF&
    Left = 10935
    Top = 2265
    Width = 2430
    Height = 315
    TabIndex = 59
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
  Begin Label Label3
    Caption = "Guest Comments"
    BackColor = &HC0C000&
    ForeColor = &HFFFFFF&
    Left = 10935
    Top = 945
    Width = 2430
    Height = 315
    TabIndex = 58
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
  Begin Label Label2
    Caption = "Others Deatils"
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 10095
    Top = 600
    Width = 3495
    Height = 345
    TabIndex = 57
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 56
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
    Caption = "Room Bill Details for Folio No."
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 855
    Top = 600
    Width = 9075
    Height = 330
    TabIndex = 55
    Alignment = 2 'Center
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
  Begin Image GuestImage
    Left = 10005
    Top = 4710
    Width = 1740
    Height = 1980
    Stretch = -1  'True
  End
  Begin Label lblRoomCat
    Caption = "."
    ForeColor = &HC0&
    Left = 195
    Top = 1860
    Width = 975
    Height = 255
    Visible = 0   'False
    TabIndex = 54
    BackStyle = 0 'Transparent
  End
  Begin Label lblRoomNo
    Caption = "."
    ForeColor = &HC0&
    Left = 195
    Top = 1575
    Width = 975
    Height = 225
    Visible = 0   'False
    TabIndex = 53
    BackStyle = 0 'Transparent
  End
  Begin Label LblCompany
    Caption = "."
    BackColor = &HFFFF00&
    ForeColor = &HC0&
    Left = 10395
    Top = 2895
    Width = 3405
    Height = 210
    TabIndex = 51
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
    Caption = "Mode"
    Index = 14
    ForeColor = &H0&
    Left = 17115
    Top = 4710
    Width = 525
    Height = 240
    Visible = 0   'False
    TabIndex = 47
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Lbl
    Caption = "Room Catogery"
    Index = 6
    ForeColor = &HC00000&
    Left = 6360
    Top = 1590
    Width = 1470
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
    Caption = "Status"
    Index = 1
    ForeColor = &H0&
    Left = 17055
    Top = 4005
    Width = 540
    Height = 240
    Visible = 0   'False
    TabIndex = 36
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Lbl
    Caption = "Company"
    Index = 3
    ForeColor = &HC00000&
    Left = 195
    Top = 2160
    Width = 900
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
  Begin Label Lbl
    Caption = "Guest Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 195
    Top = 1020
    Width = 1155
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
  Begin Label LblCheckInDay
    Caption = "."
    ForeColor = &HC0&
    Left = 9885
    Top = 1020
    Width = 60
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
  Begin Label Lbl
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 6360
    Top = 1020
    Width = 1320
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
  Begin Label Lbl
    Caption = "Selct Bill No"
    Index = 34
    ForeColor = &H808000&
    Left = 16680
    Top = 4470
    Width = 1170
    Height = 240
    Visible = 0   'False
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
  Begin Label Lbl
    Caption = "Room Rate"
    Index = 9
    ForeColor = &HC00000&
    Left = 6375
    Top = 1890
    Width = 1050
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
  Begin Label Lbl
    Caption = "Rate Code"
    Index = 10
    ForeColor = &H0&
    Left = 15615
    Top = 5370
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 29
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Lbl
    Caption = "Adult/Child"
    Index = 11
    ForeColor = &HC00000&
    Left = 6360
    Top = 2175
    Width = 1050
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
  Begin Label Lbl
    Caption = "Address"
    Index = 2
    ForeColor = &HC00000&
    Left = 195
    Top = 1305
    Width = 750
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
  Begin Label Lbl
    Caption = "Comment3"
    Index = 13
    ForeColor = &H0&
    Left = 16065
    Top = 5055
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Lbl
    Caption = "Comment2"
    Index = 8
    ForeColor = &H0&
    Left = 16050
    Top = 4740
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Lbl
    Caption = "Guest Comments"
    Index = 7
    ForeColor = &HC00000&
    Left = 16530
    Top = 3795
    Width = 1605
    Height = 240
    Visible = 0   'False
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
    Caption = "Depature Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 6360
    Top = 1290
    Width = 1365
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
End

Attribute VB_Name = "frmFomB"

Private global_96 As Integer
Private global_98 As Integer
Private global_88 As Integer
Private MasterFormExit As Integer
Private global_136 As Double

Private Sub CmdExit_UnknownEvent_9 'E18810
  'Data Table: 55975C
  loc_E18805: Me.Global.Unload Me
  loc_E1880D: Exit Sub
  loc_E1880E: CExtInstUnk
End Sub

Private Sub Command1_Click() 'E18778
  'Data Table: 55975C
  loc_E1876C: Me.FrmAdjust.Visible = False
  loc_E18774: Exit Sub
End Sub

Private Sub CmdPass_Click() 'E9A138
  'Data Table: 55975C
  Dim var_8C As TextBox
  Dim var_88 As CommandButton
  loc_E9A0C9: Set var_88 = Me.Txt
  loc_E9A0CF: Call 0.Method_CmdPass_Click0 (&H17)
  loc_E9A0F8: If (Ucase(CVar(var_8C)) = "India12") Then
  loc_E9A106:   Set var_88 = Me.Txt
  loc_E9A10C:   Call 0.Method_CmdPass_Click0 (&H18, var_8C)
  loc_E9A114:   var_8C.Enabled = True
  loc_E9A12C:   Me.CMDSET.Enabled = True
  loc_E9A134:   GoTo loc_E9A137
  loc_E9A137:   ' Referenced from: E9A134
  loc_E9A137: End If
  loc_E9A137: Exit Sub
End Sub

Private Sub CmdeInvoiceSql_Click() '1A3D214
  'Data Table: 55975C
  Dim var_15C As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim var_168 As String
  Dim unk_559760 As Connection15
  Dim var_190 As Variant
  Dim var_18C As Variant
  Dim var_188 As Variant
  Dim var_194 As Variant
  Dim var_198 As Variant
  Dim var_19C As String
  Dim var_1A0 As Variant
  Dim var_1B8 As String
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Variant
  Dim var_1C4 As Variant
  Dim var_1DC As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1E0 As Variant
  Dim var_1E4 As Variant
  Dim var_1E8 As Variant
  Dim var_1EC As String
  Dim var_1F0 As Variant
  Dim var_9C As Variant
  Dim var_178 As Variant
  Dim var_B4 As Double
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_FC As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_114 As Variant
  Dim var_11C As Double
  Dim var_8C As Variant
  Dim var_21C As Variant
  Dim var_A6 As Variant
  Dim var_88 As Variant
  Dim var_244 As Variant
  Dim var_230 As Variant
  Dim var_254 As Variant
  Dim var_204 As Variant
  Dim var_98 As Recordset15
  Dim var_200 As Variant
  Dim var_240 As String
  Dim var_2A8 As Variant
  Dim var_310 As Variant
  Dim var_378 As Variant
  Dim var_3E0 As Variant
  Dim var_48C As Fields15
  Dim var_518 As Variant
  Dim var_5A0 As Variant
  Dim var_5C0 As Variant
  Dim var_628 As Variant
  Dim var_6B8 As Variant
  Dim var_8E0 As Variant
  Dim var_BD8 As Variant
  Dim var_EF8 As Variant
  Dim var_11D0 As Variant
  Dim var_14A8 As Variant
  Dim var_1A58 As Variant
  Dim var_1D30 As Variant
  Dim var_22E0 As Variant
  Dim var_25B8 As Variant
  Dim var_9E As Integer
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_274 As Variant
  Dim var_2B8 As Variant
  Dim var_320 As Variant
  Dim var_388 As Variant
  Dim var_3F0 As Variant
  Dim var_4C0 As Variant
  Dim var_528 As Variant
  Dim var_590 As Variant
  Dim var_5F8 As Variant
  Dim var_660 As Variant
  loc_1A3A314: var_15C = "SELECT G.DocId,S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS CompName,S.LegalName,S.TradeName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName,CS.ShortName StateCode,CS.Name CompState,S.GSTIN,S.PIN,S.EMail,S.Mobile,F.Bill_Date,F.Bill_No " & "FROM GuestFolio G left joIn Subgroup S on G.Company=S.Subcode Left Join FOMBillDetails F On G.DocId=F.FolioNoDocid Left Join City CC On CC.CityCode=S.CityCode Left Join State CS On CS.Code=CC.State Where G.Docid='"
  loc_1A3A33D: unk_559760.Execute var_15C & CStr(Me.TXT_GNAME.BoundText) & "'", var_188, -1
  loc_1A3A348: Set var_88 = var_18C
  loc_1A3A378: var_15C = "Select P1.*,R1.Name As ItemName,R1.HSNCode From (SELECT P1.FolioNoDocid,max(P1.Vtype) as Vtype,max(P1.Vno) as Vno,sum(P1.Amtdr) as AmtDr,0 as AmtCr,Max(P1.Vdate) as Vdate,max(P1.Comments) as Comments,Max(P1.RestCode) As RestCode,Max(P1.PayCode) As PayCode,'1' as aa,ISNULL(SUM(T.TaxPer),0) TaxPer,ISNULL(Sum(T.CGST),0) CGST,ISNULL(Sum(T.SGST),0) SGST,ISNULL(Sum(T.IGST),0) IGST FROM paycharge P1 Left Join (Select Docid,IsNull(SUM(TaxPer),0) TaxPer,IsNull(SUM(CGST),0) CGST,IsNull(SUM(SGST),0) SGST,IsNull(SUM(IGST),0) IGST " & "From (Select DocId,Sum(Case When S.Nature In ('CGST','SGST','IGST') And Amtdr<>0 Then P.TaxPer End) TaxPer,Case When S.Nature='CGST' Then Sum(Amtdr) End CGST,Case When S.Nature='SGST' Then Sum(Amtdr) End SGST,Case When S.Nature='IGST' Then Sum(Amtdr) End IGST From PayCharge P Inner Join RevMast R On P.PayCode=R.Code And R.FieldType='T' Inner Join SundryMast S On S.Code=R.Sundry Where folionoDocid='"
  loc_1A3A37F: Set var_148 = Me.TXT_GNAME
  loc_1A3A385: var_158 = var_148.BoundText
  loc_1A3A39F: var_190 = var_15C & CStr(var_158) & "' Group By P.DocId,S.Nature)Q Group By DocId)T On P1.DocId=T.DocId " & "where (PayCode In (Select Code From RevMast Where Nature='Room Charge') or P1.PlanCharge='Yes') and IsNull(ContraDocId,'')='' and P1.folionoDocid='"
  loc_1A3A3BF: var_19C = var_190 & CStr(Me.TXT_GNAME.BoundText) & "' And P1.PayCode Not In (Select Code From RevMast Where FieldType='T') Group by P1.DocId,P1.FolioNoDocid Having Sum(P1.AmtDr) <> 0 "
  loc_1A3A3C6: var_1A0 = var_19C & "union all SELECT P1.FolioNoDocid,Max(P1.Vtype) As VType,Max(P1.Vno) As Vno,Sum(P1.Amtdr) As AmtDr,0 as AmtCr,Max(P1.Vdate) As Vdate ,Max(P1.Comments) As Comments,Max(P1.RestCode) As RestCode,Max(P1.PayCode) As PayCode,'2' as aa,ISNULL(SUM(T.TaxPer),0) TaxPer,ISNULL(Sum(T.CGST),0) CGST,ISNULL(Sum(T.SGST),0) SGST,ISNULL(Sum(T.IGST),0) IGST FROM paycharge P1 Left Join (Select Docid,IsNull(SUM(TaxPer),0) TaxPer,IsNull(SUM(CGST),0) CGST,IsNull(SUM(SGST),0) SGST,IsNull(SUM(IGST),0) IGST "
  loc_1A3A3CD: var_1B8 = var_1A0 & "From (Select DocId,Sum(Case When S.Nature In ('CGST','SGST','IGST') And Amtdr<>0 Then P.TaxPer End) TaxPer,Case When S.Nature='CGST' Then Sum(Amtdr) End CGST,Case When S.Nature='SGST' Then Sum(Amtdr) End SGST,Case When S.Nature='IGST' Then Sum(Amtdr) End IGST From PayCharge P Inner Join RevMast R On P.PayCode=R.Code And R.FieldType='T' Inner Join SundryMast S On S.Code=R.Sundry Where folionoDocid='"
  loc_1A3A3E2: var_1BC = CStr(Me.TXT_GNAME.BoundText)
  loc_1A3A3E6: var_1C0 = var_1B8 & var_1BC
  loc_1A3A3ED: var_1C4 = var_1C0 & "' Group By P.DocId,S.Nature)Q Group By DocId)T On P1.DocId=T.DocId "
  loc_1A3A3F4: var_1DC = var_1C4 & "where (PayCode Not In (Select Code From RevMast Where Nature='Room Charge') And P1.PlanCharge<>'Yes') And P1.RestCode Not In (Select Code From Depart Where OutletYN='Y'  And (LogSite_Code='KK' Or LogSite_Code='HO')) And IsNull(ContraDocId,'')='' and P1.folionoDocid='"
  loc_1A3A401: var_1D8 = Me.TXT_GNAME.BoundText
  loc_1A3A409: var_1E0 = CStr(var_1D8)
  loc_1A3A40D: var_1E4 = var_1DC & var_1E0
  loc_1A3A414: var_1E8 = var_1E4 & "' And P1.PayCode Not In (Select Code From RevMast Where FieldType='T') And P1.PayCode<>'"
  loc_1A3A41B: var_1EC = var_1E8 & MemVar_1F95078
  loc_1A3A422: var_1F0 = var_1EC & "ROFF' Group by P1.DocId,P1.FolioNoDocid Having Sum(P1.AmtDr) <> 0)P1 LEFT JOIN RevMast R1 On P1.PayCode=R1.Code"
  loc_1A3A42B: unk_559760.Execute var_1F0, var_200, -1
  loc_1A3A436: Set var_8C = var_204
  loc_1A3A4A0: unk_559760.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Guest Bill' And LogSite_Code='" & MemVar_1F95078 & "'", var_158, -1
  loc_1A3A4AB: Set var_9C = var_148
  loc_1A3A4C1: var_208 = var_9C.RecordCount
  loc_1A3A4CF: If (var_208 > 0) Then
  loc_1A3A4FD:   var_188 = Left(CVar(var_9C.Fields.Item("RoundOffType")), 1)
  loc_1A3A506:   var_AC = CStr(var_188)
  loc_1A3A516: Else
  loc_1A3A519:   var_AC = "U"
  loc_1A3A51C: End If
  loc_1A3A51F: var_B4 = CDbl(0)
  loc_1A3A525: var_BC = CDbl(0)
  loc_1A3A52B: var_C4 = CDbl(0)
  loc_1A3A531: var_CC = CDbl(0)
  loc_1A3A537: var_D4 = CDbl(0)
  loc_1A3A53D: var_DC = CDbl(0)
  loc_1A3A543: var_E4 = CDbl(0)
  loc_1A3A549: var_EC = CDbl(0)
  loc_1A3A54F: var_F4 = CDbl(0)
  loc_1A3A555: var_FC = CDbl(0)
  loc_1A3A55B: var_104 = CDbl(0)
  loc_1A3A561: var_10C = CDbl(0)
  loc_1A3A567: var_114 = CDbl(0)
  loc_1A3A56D: var_11C = CDbl(0)
  loc_1A3A570: ' Referenced from: 1A3A73D
  loc_1A3A57F: If Not(var_8C.EOF) Then
  loc_1A3A5A8:   Proc_6_39_E7D3A0(var_188, CVar(var_8C.Fields.Item("TaxPer")), var_11C, var_114, var_10C, var_104, var_FC)
  loc_1A3A5C2:   If CBool(var_188 <> 0) Then
  loc_1A3A5F2:     Proc_6_39_E7D3A0(var_188, CVar(var_8C.Fields.Item("AmtDr")), CVar(var_B4), var_F4, var_EC)
  loc_1A3A5FA:     var_1B4 = (var_E4 + var_188)
  loc_1A3A5FF:     var_B4 = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3A63B:     Proc_6_39_E7D3A0(var_188, CVar(var_8C.Fields.Item("CGST")), CVar(var_104), var_B4)
  loc_1A3A643:     var_1B4 = (var_DC + var_188)
  loc_1A3A648:     var_104 = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3A684:     Proc_6_39_E7D3A0(var_188, CVar(var_8C.Fields.Item("SGST")), CVar(var_10C), var_104)
  loc_1A3A68C:     var_1B4 = (var_D4 + var_188)
  loc_1A3A691:     var_10C = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3A6CD:     Proc_6_39_E7D3A0(var_188, CVar(var_8C.Fields.Item("IGST")), CVar(var_114))
  loc_1A3A6D5:     var_1B4 = (var_10C + var_188)
  loc_1A3A6DA:     var_114 = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3A6EC:   Else
  loc_1A3A6EF:     var_21C = CVar(var_11C) 'Double
  loc_1A3A719:     Proc_6_39_E7D3A0(var_188, CVar(var_8C.Fields.Item("AmtDr")), var_21C)
  loc_1A3A721:     var_1B4 = (var_114 + var_188)
  loc_1A3A726:     var_11C = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3A735:   End If
  loc_1A3A738:   var_8C.MoveNext
  loc_1A3A73D:   GoTo loc_1A3A570
  loc_1A3A740: End If
  loc_1A3A753: var_BC = ((((var_B4 + var_104) + var_10C) + var_114) + var_11C)
  loc_1A3A76A: Proc_6_142_14A62A0(var_BC, CByte(0), var_AC, 2)
  loc_1A3A76F: var_EC = var_BC
  loc_1A3A789: If (((var_104 = CDbl(0)) And (var_10C = CDbl(0))) And (var_114 = CDbl(0))) Then
  loc_1A3A79A:   var_178 = "This is Not a Tax Invoice"
  loc_1A3A7A5:   MsgBox(var_178, &H10, var_188, Me.TXT_GNAME.BoundText, var_1D8)
  loc_1A3A7BA:   Set var_88 = Nothing
  loc_1A3A7BD:   Exit Sub
  loc_1A3A7BE: End If
  loc_1A3A7C2: Set var_98 = New 
  loc_1A3A7CD: Set var_98 = Proc_96_103_1576B2C(var_98, var_EC, var_11C)
  loc_1A3A7D2: var_A6 = &HFF
  loc_1A3A7DE: unk_559760.BeginTrans var_208
  loc_1A3A7E3: ' Referenced from: 1A3D1E3
  loc_1A3A7E9: var_20A = var_88.EOF
  loc_1A3A7F2: If Not(var_20A) Then
  loc_1A3A7F8:   Set var_244 = var_98 
  loc_1A3A807:   var_244.AddNew var_178, var_21C
  loc_1A3A832:   var_244.Fields.Item("UserGSTIN").Value = CVar(MemVar_1F95154)
  loc_1A3A881:   var_244.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_1A3A8B7:   var_244.Fields.Item("TranDtls_TaxSch").Value = "GST"
  loc_1A3A8E8:   var_244.Fields.Item("TranDtls_SupTyp").Value = "B2B"
  loc_1A3A919:   var_244.Fields.Item("TranDtls_RegRev").Value = "N"
  loc_1A3A94A:   var_244.Fields.Item("TranDtls_EcmGstin").Value = vbNullString
  loc_1A3A97B:   var_244.Fields.Item("TranDtls_IgstOnIntra").Value = "N"
  loc_1A3A9AC:   var_244.Fields.Item("DocDtls_Typ").Value = "INV"
  loc_1A3AA23:   var_244.Fields.Item("DocDtls_No").Value = CVar(Proc_96_43_F99D14("BCNT", Trim(CVar(CStr(var_88.Fields.Item("Bill_no").Value))), var_A6))
  loc_1A3AA8A:   var_1D8 = Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Bill_Date")), var_CC)), "dd/MM/yyyy")
  loc_1A3AAB2:   var_244.Fields.Item("DocDtls_Dt").Value = var_1D8
  loc_1A3AAF4:   var_244.Fields.Item("SellerDtls_Gstin").Value = CVar(MemVar_1F95154)
  loc_1A3AB26:   var_244.Fields.Item("SellerDtls_LglNm").Value = CVar(MemVar_1F95188)
  loc_1A3AB58:   var_244.Fields.Item("SellerDtls_TrdNm").Value = CVar(MemVar_1F9518C)
  loc_1A3AB8A:   var_244.Fields.Item("SellerDtls_Addr1").Value = CVar(MemVar_1F95134)
  loc_1A3ABBC:   var_244.Fields.Item("SellerDtls_Addr2").Value = CVar(MemVar_1F95138)
  loc_1A3ABEE:   var_244.Fields.Item("SellerDtls_Loc").Value = CVar(MemVar_1F95184)
  loc_1A3AC20:   var_244.Fields.Item("SellerDtls_Pin").Value = CVar(MemVar_1F95178)
  loc_1A3AC52:   var_244.Fields.Item("SellerDtls_Stcd").Value = CVar(MemVar_1F95158)
  loc_1A3AC84:   var_244.Fields.Item("SellerDtls_Ph").Value = CVar(MemVar_1F9517C)
  loc_1A3ACB6:   var_244.Fields.Item("SellerDtls_Em").Value = CVar(MemVar_1F95180)
  loc_1A3AD0D:   var_244.Fields.Item("BuyerDtls_Gstin").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GSTIN")), 1))
  loc_1A3AD6D:   var_244.Fields.Item("BuyerDtls_LglNm").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Legalname")), 1))
  loc_1A3ADCD:   var_244.Fields.Item("BuyerDtls_TrdNm").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TradeName"))))
  loc_1A3AE08:   var_244.Fields.Item("BuyerDtls_Pos").Value = CVar(MemVar_1F95158)
  loc_1A3AE5F:   var_244.Fields.Item("BuyerDtls_Addr1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CompAdd1"))))
  loc_1A3AEBF:   var_244.Fields.Item("BuyerDtls_Addr2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CompAdd2"))))
  loc_1A3AF1F:   var_244.Fields.Item("BuyerDtls_Loc").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName"))))
  loc_1A3AF7F:   var_244.Fields.Item("BuyerDtls_Pin").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin"))))
  loc_1A3AFDF:   var_244.Fields.Item("BuyerDtls_Stcd").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("StateCode"))))
  loc_1A3B03F:   var_244.Fields.Item("BuyerDtls_Ph").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile"))))
  loc_1A3B097:   var_1C8 = var_244.Fields.Item("BuyerDtls_Em")
  loc_1A3B09F:   var_1C8.Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Email"))))
  loc_1A3B0DB:   var_244.Fields.Item("ValDtls_AssVal").Value = CVar(var_B4)
  loc_1A3B10E:   var_244.Fields.Item("ValDtls_CgstVal").Value = CVar(var_104)
  loc_1A3B141:   var_244.Fields.Item("ValDtls_SgstVal").Value = CVar(var_10C)
  loc_1A3B174:   var_244.Fields.Item("ValDtls_IgstVal").Value = CVar(var_114)
  loc_1A3B1A7:   var_244.Fields.Item("ValDtls_CesVal").Value = CVar(var_FC)
  loc_1A3B1DA:   var_244.Fields.Item("ValDtls_StCesVal").Value = CVar(var_DC)
  loc_1A3B20B:   var_244.Fields.Item("ValDtls_Discount").Value = 0
  loc_1A3B222:   var_21C = CVar(((var_F4 + var_C4) + var_11C)) 'Double
  loc_1A3B246:   var_244.Fields.Item("ValDtls_OthChrg").Value = 0
  loc_1A3B279:   var_244.Fields.Item("ValDtls_RndOffAmt").Value = CVar(var_EC)
  loc_1A3B28C:   var_21C = CVar((var_BC + var_EC)) 'Double
  loc_1A3B2B0:   var_244.Fields.Item("ValDtls_TotInvVal").Value = CVar(var_EC)
  loc_1A3B2BF:   var_21C = CVar(var_BC) 'Double
  loc_1A3B2C7:   var_178 = "ValDtls_TotInvValFc"
  loc_1A3B2E3:   var_244.Fields.Item(var_178).Value = var_21C
  loc_1A3B2FA:   var_244.Update var_178, var_21C
  loc_1A3B301:   Set var_244 = Nothing 
  loc_1A3B30B:   var_254 = 0
  loc_1A3B367:   unk_559760.Execute CStr("Select Count(*) From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "' And Isnull(IRN,'')=''"), var_1D8, -1
  loc_1A3B36F:   var_1A4 = var_1A4.Fields
  loc_1A3B377:   var_254 = var_1C8.Item(var_1C8)
  loc_1A3B37F:   var_204 = var_204.Value
  loc_1A3B3A6:   If CBool(var_200) Then
  loc_1A3B3FC:     unk_559760.Execute CStr("Delete From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "'"), var_1D8, -1
  loc_1A3B454:     var_188 = "Delete From eInvoiceBill2 Where DocId='" & var_88.Fields.Item("DocID").Value 
  loc_1A3B46B:     unk_559760.Execute CStr(var_188 & "'"), var_1D8, -1
  loc_1A3B487:   End If
  loc_1A3B49B:   var_15C = "INSERT INTO eInvoiceBill1 ([UserGSTIN],[DocId],[TranDtls_TaxSch],[TranDtls_SupTyp],[TranDtls_RegRev],[TranDtls_EcmGstin],[TranDtls_IgstOnIntra],[DocDtls_Typ],[DocDtls_No],[DocDtls_Dt]" & ",[SellerDtls_Gstin],[SellerDtls_LglNm],[SellerDtls_TrdNm],[SellerDtls_Addr1],[SellerDtls_Addr2],[SellerDtls_Loc],[SellerDtls_Pin],[SellerDtls_Stcd],[SellerDtls_Ph],[SellerDtls_Em]"
  loc_1A3B4A2:   var_160 = var_15C & ",[BuyerDtls_Gstin],[BuyerDtls_LglNm],[BuyerDtls_TrdNm],[BuyerDtls_Pos],[BuyerDtls_Addr1],[BuyerDtls_Addr2],[BuyerDtls_Loc],[BuyerDtls_Pin],[BuyerDtls_Stcd],[BuyerDtls_Ph],[BuyerDtls_Em]"
  loc_1A3B4A9:   var_164 = var_160 & ",[DispDtls_Nm],[DispDtls_Addr1],[DispDtls_Addr2],[DispDtls_Loc],[DispDtls_Pin],[DispDtls_Stcd]"
  loc_1A3B4B0:   var_168 = var_164 & ",[ShipDtls_Gstin],[ShipDtls_LglNm],[ShipDtls_TrdNm],[ShipDtls_Addr1],[ShipDtls_Addr2],[ShipDtls_Loc],[ShipDtls_Pin],[ShipDtls_Stcd]"
  loc_1A3B4B7:   var_190 = var_168 & ",[ValDtls_AssVal],[ValDtls_Cgstval],[ValDtls_Sgstval],[ValDtls_Igstval],[ValDtls_Cesval],[ValDtls_StCesVal],[ValDtls_Discount],[ValDtls_OthChrg],[ValDtls_RndOffAmt],[ValDtls_TotInvVal],[ValDtls_TotInvValFc]"
  loc_1A3B4BE:   var_194 = var_190 & ",[RefDtls_InvRm],[RefDtls_DocPerdDtls_InvStDt],[RefDtls_DocPerdDtls_InvEndDt],[RefDtls_PrecDocDtls_InvNo],[RefDtls_PrecDocDtls_InvDt],[RefDtls_PrecDocDtls_OthRefNo]"
  loc_1A3B4C5:   var_198 = var_194 & ",[RefDtls_ContrDtls_RecAdvRefr],[RefDtls_ContrDtls_RecAdvDt],[RefDtls_ContrDtls_TendRefr],[RefDtls_ContrDtls_Contrrefr],[RefDtls_ContrDtls_Extrefr],[RefDtls_ContrDtls_Projrefr],[RefDtls_ContrDtls_Porefr],[RefDtls_ContrDtls_PoRefDt]"
  loc_1A3B4CC:   var_19C = var_198 & ",[PayDtls_Nm],[PayDtls_AccDet],[PayDtls_Mode],[PayDtls_Fininsbr],[PayDtls_PayTerm],[PayDtls_PayInstr],[PayDtls_CrTrn],[PayDtls_DirDr],[PayDtls_CrDay],[PayDtls_PaidAmt],[PayDtls_Paymtdue]"
  loc_1A3B4D3:   var_1A0 = var_19C & ",[EwbDtls_TransId],[EwbDtls_TransName],[EwbDtls_Distance],[EwbDtls_TransDocNo],[EwbDtls_TransDocDt],[EwbDtls_VehNo],[EwbDtls_VehType],[EwbDtls_TransMode]) VALUES "
  loc_1A3B4DA:   var_1B4 = CVar(var_1A0 & "(") 'String
  loc_1A3B4E0:   var_178 = "UserGSTIN"
  loc_1A3B4EC:   var_148 = var_98.Fields
  loc_1A3B4F4:   var_18C = var_148.Item(var_178)
  loc_1A3B4FC:   var_158 = CVar(var_18C) 'Address
  loc_1A3B503:   Proc_6_17_EAAE40(var_188, var_158, var_1B4, var_25F8, -1)
  loc_1A3B50B:   var_1D8 = var_25FC & var_188 
  loc_1A3B50F:   var_21C = ","
  loc_1A3B514:   var_200 = var_1D8 & var_21C 
  loc_1A3B51B:   var_230 = "DocID"
  loc_1A3B527:   var_1A4 = var_98.Fields
  loc_1A3B52F:   var_1C8 = var_1A4.Item(var_230)
  loc_1A3B53E:   Proc_6_17_EAAE40(var_274, CVar(var_1C8), var_200, var_1A4)
  loc_1A3B54A:   var_240 = ","
  loc_1A3B556:   var_254 = "TranDtls_TaxSch"
  loc_1A3B562:   var_204 = var_98.Fields
  loc_1A3B572:   var_2A8 = CVar(var_204.Item(var_254)) 'Address
  loc_1A3B579:   Proc_6_17_EAAE40(var_2B8, var_2A8, var_1A4 & var_274 & var_240)
  loc_1A3B5AD:   var_310 = CVar(var_98.Fields.Item("TranDtls_SupTyp")) 'Address
  loc_1A3B5B4:   Proc_6_17_EAAE40(var_320, var_310)
  loc_1A3B5E8:   var_378 = CVar(var_98.Fields.Item("TranDtls_RegRev")) 'Address
  loc_1A3B5EF:   Proc_6_17_EAAE40(var_388, var_378)
  loc_1A3B623:   var_3E0 = CVar(var_98.Fields.Item("TranDtls_EcmGstin")) 'Address
  loc_1A3B62A:   Proc_6_17_EAAE40(var_3F0, var_3E0)
  loc_1A3B665:   Proc_6_17_EAAE40(var_458, CVar(var_98.Fields.Item("TranDtls_IgstOnIntra")))
  loc_1A3B689:   var_48C = var_98.Fields
  loc_1A3B6A0:   Proc_6_17_EAAE40(var_4C0, CVar(var_48C.Item("DocDtls_Typ")))
  loc_1A3B6DB:   Proc_6_17_EAAE40(var_528, CVar(var_98.Fields.Item("DocDtls_No")))
  loc_1A3B716:   Proc_6_7_F26918(var_590, CVar(var_98.Fields.Item("DocDtls_Dt")))
  loc_1A3B71E:   var_5A0 = var_200 & var_2B8 & "," & var_320 & "," & var_388 & "," & var_3F0 & "," & var_458 & "," & var_4C0 & "," & var_528 & "," & var_590 
  loc_1A3B727:   var_5C0 = var_5A0 & "," 
  loc_1A3B751:   Proc_6_17_EAAE40(var_5F8, CVar(var_98.Fields.Item("SellerDtls_Gstin")))
  loc_1A3B78C:   Proc_6_17_EAAE40(var_660, CVar(var_98.Fields.Item("SellerDtls_LglNm")))
  loc_1A3B7C0:   var_6B8 = CVar(var_98.Fields.Item("SellerDtls_TrdNm")) 'Address
  loc_1A3B7C7:   Proc_6_17_EAAE40(var_6C8, var_6B8)
  loc_1A3B802:   Proc_6_17_EAAE40(var_730, CVar(var_98.Fields.Item("SellerDtls_Addr1")))
  loc_1A3B83D:   Proc_6_17_EAAE40(var_798, CVar(var_98.Fields.Item("SellerDtls_Addr2")))
  loc_1A3B878:   Proc_6_17_EAAE40(var_800, CVar(var_98.Fields.Item("SellerDtls_Loc")))
  loc_1A3B8B3:   Proc_6_17_EAAE40(var_868, CVar(var_98.Fields.Item("SellerDtls_Pin")))
  loc_1A3B8EE:   Proc_6_17_EAAE40(var_8D0, CVar(var_98.Fields.Item("SellerDtls_Stcd")))
  loc_1A3B8F6:   var_8E0 = var_5C0 & var_5F8 & "," & var_660 & "," & var_6C8 & "," & var_730 & "," & var_798 & "," & var_800 & "," & var_868 & "," & var_8D0 
  loc_1A3B929:   Proc_6_17_EAAE40(var_938, CVar(var_98.Fields.Item("SellerDtls_Ph")))
  loc_1A3B964:   Proc_6_17_EAAE40(var_9A0, CVar(var_98.Fields.Item("SellerDtls_Em")))
  loc_1A3B99F:   Proc_6_17_EAAE40(var_A08, CVar(var_98.Fields.Item("BuyerDtls_Gstin")))
  loc_1A3B9DA:   Proc_6_17_EAAE40(var_A70, CVar(var_98.Fields.Item("BuyerDtls_LglNm")))
  loc_1A3BA15:   Proc_6_17_EAAE40(var_AD8, CVar(var_98.Fields.Item("BuyerDtls_TrdNm")))
  loc_1A3BA50:   Proc_6_17_EAAE40(var_B40, CVar(var_98.Fields.Item("BuyerDtls_Pos")))
  loc_1A3BA8B:   Proc_6_17_EAAE40(var_BA8, CVar(var_98.Fields.Item("BuyerDtls_Addr1")))
  loc_1A3BA9C:   var_BD8 = var_8E0 & "," & var_938 & "," & var_9A0 & "," & var_A08 & "," & var_A70 & "," & var_AD8 & "," & var_B40 & "," & var_BA8 & "," 
  loc_1A3BAC6:   Proc_6_17_EAAE40(var_C10, CVar(var_98.Fields.Item("BuyerDtls_Addr2")))
  loc_1A3BB01:   Proc_6_17_EAAE40(var_C78, CVar(var_98.Fields.Item("BuyerDtls_Loc")))
  loc_1A3BB3C:   Proc_6_17_EAAE40(var_CE0, CVar(var_98.Fields.Item("BuyerDtls_Pin")))
  loc_1A3BB77:   Proc_6_17_EAAE40(var_D48, CVar(var_98.Fields.Item("BuyerDtls_Stcd")))
  loc_1A3BBB2:   Proc_6_17_EAAE40(var_DB0, CVar(var_98.Fields.Item("BuyerDtls_Ph")))
  loc_1A3BBED:   Proc_6_17_EAAE40(var_E18, CVar(var_98.Fields.Item("BuyerDtls_Em")))
  loc_1A3BC28:   Proc_6_17_EAAE40(var_E80, CVar(var_98.Fields.Item("DispDtls_Nm")))
  loc_1A3BC63:   Proc_6_17_EAAE40(var_EE8, CVar(var_98.Fields.Item("DispDtls_Addr1")))
  loc_1A3BC6B:   var_EF8 = var_BD8 & var_C10 & "," & var_C78 & "," & var_CE0 & "," & var_D48 & "," & var_DB0 & "," & var_E18 & "," & var_E80 & "," & var_EE8 
  loc_1A3BC9E:   Proc_6_17_EAAE40(var_F50, CVar(var_98.Fields.Item("DispDtls_Addr2")))
  loc_1A3BCD9:   Proc_6_17_EAAE40(var_FB8, CVar(var_98.Fields.Item("DispDtls_Loc")))
  loc_1A3BD14:   Proc_6_17_EAAE40(var_1020, CVar(var_98.Fields.Item("DispDtls_Pin")))
  loc_1A3BD4F:   Proc_6_17_EAAE40(var_1088, CVar(var_98.Fields.Item("DispDtls_Stcd")))
  loc_1A3BD8A:   Proc_6_17_EAAE40(var_10F0, CVar(var_98.Fields.Item("ShipDtls_Gstin")))
  loc_1A3BDC5:   Proc_6_17_EAAE40(var_1158, CVar(var_98.Fields.Item("ShipDtls_LglNm")))
  loc_1A3BE00:   Proc_6_17_EAAE40(var_11C0, CVar(var_98.Fields.Item("ShipDtls_TrdNm")))
  loc_1A3BE08:   var_11D0 = var_EF8 & "," & var_F50 & "," & var_FB8 & "," & var_1020 & "," & var_1088 & "," & var_10F0 & "," & var_1158 & "," & var_11C0 
  loc_1A3BE3B:   Proc_6_17_EAAE40(var_1228, CVar(var_98.Fields.Item("ShipDtls_Addr1")))
  loc_1A3BE76:   Proc_6_17_EAAE40(var_1290, CVar(var_98.Fields.Item("ShipDtls_Addr2")))
  loc_1A3BEB1:   Proc_6_17_EAAE40(var_12F8, CVar(var_98.Fields.Item("ShipDtls_Loc")))
  loc_1A3BEEC:   Proc_6_17_EAAE40(var_1360, CVar(var_98.Fields.Item("ShipDtls_Pin")))
  loc_1A3BF27:   Proc_6_17_EAAE40(var_13C8, CVar(var_98.Fields.Item("ShipDtls_Stcd")))
  loc_1A3BF62:   Proc_6_39_E7D3A0(var_1430, CVar(var_98.Fields.Item("ValDtls_AssVal")))
  loc_1A3BF9D:   Proc_6_39_E7D3A0(var_1498, CVar(var_98.Fields.Item("ValDtls_CgstVal")))
  loc_1A3BFA5:   var_14A8 = var_11D0 & "," & var_1228 & "," & var_1290 & "," & var_12F8 & "," & var_1360 & "," & var_13C8 & "," & var_1430 & "," & var_1498 
  loc_1A3BFD8:   Proc_6_39_E7D3A0(var_1500, CVar(var_98.Fields.Item("ValDtls_SgstVal")))
  loc_1A3C013:   Proc_6_39_E7D3A0(var_1568, CVar(var_98.Fields.Item("ValDtls_IgstVal")))
  loc_1A3C04E:   Proc_6_39_E7D3A0(var_15D0, CVar(var_98.Fields.Item("ValDtls_CesVal")))
  loc_1A3C089:   Proc_6_39_E7D3A0(var_1638, CVar(var_98.Fields.Item("ValDtls_StCesVal")))
  loc_1A3C0C4:   Proc_6_39_E7D3A0(var_16A0, CVar(var_98.Fields.Item("ValDtls_Discount")))
  loc_1A3C0FF:   Proc_6_39_E7D3A0(var_1708, CVar(var_98.Fields.Item("ValDtls_OthChrg")))
  loc_1A3C13A:   Proc_6_39_E7D3A0(var_1770, CVar(var_98.Fields.Item("ValDtls_RndOffAmt")))
  loc_1A3C142:   var_1780 = var_14A8 & "," & var_1500 & "," & var_1568 & "," & var_15D0 & "," & var_1638 & "," & var_16A0 & "," & var_1708 & "," & var_1770 
  loc_1A3C175:   Proc_6_39_E7D3A0(var_17D8, CVar(var_98.Fields.Item("ValDtls_TotInvVal")))
  loc_1A3C1B0:   Proc_6_39_E7D3A0(var_1840, CVar(var_98.Fields.Item("ValDtls_TotInvValFc")))
  loc_1A3C1EB:   Proc_6_17_EAAE40(var_18A8, CVar(var_98.Fields.Item("RefDtls_InvRm")))
  loc_1A3C226:   Proc_6_7_F26918(var_1910, CVar(var_98.Fields.Item("RefDtls_DocPerdDtls_InvStDt")))
  loc_1A3C261:   Proc_6_7_F26918(var_1978, CVar(var_98.Fields.Item("RefDtls_DocPerdDtls_InvEndDt")))
  loc_1A3C29C:   Proc_6_17_EAAE40(var_19E0, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_InvNo")))
  loc_1A3C2D7:   Proc_6_7_F26918(var_1A48, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_InvDt")))
  loc_1A3C2DF:   var_1A58 = var_1780 & "," & var_17D8 & "," & var_1840 & "," & var_18A8 & "," & var_1910 & "," & var_1978 & "," & var_19E0 & "," & var_1A48 
  loc_1A3C312:   Proc_6_17_EAAE40(var_1AB0, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_OthRefNo")))
  loc_1A3C34D:   Proc_6_17_EAAE40(var_1B18, CVar(var_98.Fields.Item("RefDtls_ContrDtls_RecAdvRefr")))
  loc_1A3C388:   Proc_6_7_F26918(var_1B80, CVar(var_98.Fields.Item("RefDtls_ContrDtls_RecAdvDt")))
  loc_1A3C3C3:   Proc_6_17_EAAE40(var_1BE8, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Tendrefr")))
  loc_1A3C3FE:   Proc_6_17_EAAE40(var_1C50, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Contrrefr")))
  loc_1A3C439:   Proc_6_17_EAAE40(var_1CB8, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Extrefr")))
  loc_1A3C474:   Proc_6_17_EAAE40(var_1D20, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Projrefr")))
  loc_1A3C47C:   var_1D30 = var_1A58 & "," & var_1AB0 & "," & var_1B18 & "," & var_1B80 & "," & var_1BE8 & "," & var_1C50 & "," & var_1CB8 & "," & var_1D20 
  loc_1A3C4AF:   Proc_6_17_EAAE40(var_1D88, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Porefr")))
  loc_1A3C4EA:   Proc_6_7_F26918(var_1DF0, CVar(var_98.Fields.Item("RefDtls_ContrDtls_PoRefDt")))
  loc_1A3C525:   Proc_6_17_EAAE40(var_1E58, CVar(var_98.Fields.Item("PayDtls_Nm")))
  loc_1A3C560:   Proc_6_17_EAAE40(var_1EC0, CVar(var_98.Fields.Item("PayDtls_Accdet")))
  loc_1A3C59B:   Proc_6_17_EAAE40(var_1F28, CVar(var_98.Fields.Item("PayDtls_Mode")))
  loc_1A3C5D6:   Proc_6_17_EAAE40(var_1F90, CVar(var_98.Fields.Item("PayDtls_Fininsbr")))
  loc_1A3C611:   Proc_6_17_EAAE40(var_1FF8, CVar(var_98.Fields.Item("PayDtls_Payterm")))
  loc_1A3C619:   var_2008 = var_1D30 & "," & var_1D88 & "," & var_1DF0 & "," & var_1E58 & "," & var_1EC0 & "," & var_1F28 & "," & var_1F90 & "," & var_1FF8 
  loc_1A3C64C:   Proc_6_17_EAAE40(var_2060, CVar(var_98.Fields.Item("PayDtls_Payinstr")))
  loc_1A3C687:   Proc_6_17_EAAE40(var_20C8, CVar(var_98.Fields.Item("PayDtls_Crtrn")))
  loc_1A3C6C2:   Proc_6_17_EAAE40(var_2130, CVar(var_98.Fields.Item("PayDtls_Dirdr")))
  loc_1A3C6FD:   Proc_6_39_E7D3A0(var_2198, CVar(var_98.Fields.Item("PayDtls_Crday")))
  loc_1A3C738:   Proc_6_39_E7D3A0(var_2200, CVar(var_98.Fields.Item("PayDtls_Paidamt")))
  loc_1A3C773:   Proc_6_39_E7D3A0(var_2268, CVar(var_98.Fields.Item("PayDtls_Paymtdue")))
  loc_1A3C7AE:   Proc_6_17_EAAE40(var_22D0, CVar(var_98.Fields.Item("EwbDtls_TransId")))
  loc_1A3C7B6:   var_22E0 = var_2008 & "," & var_2060 & "," & var_20C8 & "," & var_2130 & "," & var_2198 & "," & var_2200 & "," & var_2268 & "," & var_22D0 
  loc_1A3C7E9:   Proc_6_17_EAAE40(var_2338, CVar(var_98.Fields.Item("EwbDtls_TransName")))
  loc_1A3C824:   Proc_6_39_E7D3A0(var_23A0, CVar(var_98.Fields.Item("EwbDtls_Distance")))
  loc_1A3C85F:   Proc_6_17_EAAE40(var_2408, CVar(var_98.Fields.Item("EwbDtls_TransDocNo")))
  loc_1A3C89A:   Proc_6_7_F26918(var_2470, CVar(var_98.Fields.Item("EwbDtls_TransDocDt")))
  loc_1A3C8D5:   Proc_6_17_EAAE40(var_24D8, CVar(var_98.Fields.Item("EwbDtls_VehNo")))
  loc_1A3C910:   Proc_6_17_EAAE40(var_2540, CVar(var_98.Fields.Item("EwbDtls_VehType")))
  loc_1A3C94B:   Proc_6_17_EAAE40(var_25A8, CVar(var_98.Fields.Item("EwbDtls_TransMode")))
  loc_1A3C953:   var_25B8 = var_22E0 & "," & var_2338 & "," & var_23A0 & "," & var_2408 & "," & var_2470 & "," & var_24D8 & "," & var_2540 & "," & var_25A8 
  loc_1A3C96A:   unk_559760.Execute CStr(var_25B8 & ")"), var_C4, 
  loc_1A3CD0E:   var_9E = 1
  loc_1A3CD25:   If (var_8C.RecordCount > 0) Then
  loc_1A3CD2B:     var_8C.MoveFirst
  loc_1A3CD30:     ' Referenced from: 1A3D1D8
  loc_1A3CD3F:     If Not(var_8C.EOF) Then
  loc_1A3CD68:       Proc_6_39_E7D3A0(var_188, CVar(var_8C.Fields.Item("TaxPer")))
  loc_1A3CD82:       If CBool(var_188 <> 0) Then
  loc_1A3CDB0:         var_124 = CSng(var_8C.Fields.Item("IGST").Value)
  loc_1A3CDE8:         var_12C = CSng(var_8C.Fields.Item("CGST").Value)
  loc_1A3CE20:         var_134 = CSng(var_8C.Fields.Item("SGST").Value)
  loc_1A3CE58:         var_13C = CSng(var_8C.Fields.Item("TaxPer").Value)
  loc_1A3CEC3:         Proc_6_17_EAAE40(var_188, CVar(var_8C.Fields.Item("FolioNoDocid")), CSng(var_8C.Fields.Item("AmtDr").Value), var_13C)
  loc_1A3CEEE:         Proc_6_17_EAAE40(var_2A8, CVar(var_8C.Fields.Item("ItemName")), var_134)
  loc_1A3CF19:         Proc_6_17_EAAE40(var_310, CVar(var_8C.Fields.Item("HSNCode")), var_12C)
  loc_1A3CF44:         Proc_6_39_E7D3A0(var_378, CVar(var_8C.Fields.Item("AmtDr")))
  loc_1A3CF6F:         Proc_6_39_E7D3A0(var_3E0, CVar(var_8C.Fields.Item("AmtDr")))
  loc_1A3CF9A:         Proc_6_39_E7D3A0(var_458, CVar(var_8C.Fields.Item("AmtDr")))
  loc_1A3CFE0:         Proc_6_39_E7D3A0(var_5C0, CVar(var_8C.Fields.Item("AmtDr")))
  loc_1A3D038:         var_15C = "INSERT INTO eInvoiceBill2 ([DocId],[SlNo],[PrdDesc],[IsServc],[HsnCd],[Qty],[Unit]," & "[UnitPrice],[TotAmt],[Discount],[PreTaxVal],[AssAmt],[GstRt],[IgstAmt],[CgstAmt],[SgstAmt],[TotItemVal]) "
  loc_1A3D08A:         var_388 = CVar(var_15C & "VALUES (") & var_188 & "," & CVar(CStr(var_9E)) & "," & var_2A8 & ",'Y'," & var_310 & ",1,'OTH'," & var_378 
  loc_1A3D0DB:         var_518 = var_388 & "," & var_3E0 & "," & "0,1," & IIf((var_13C <> CDbl(0)), var_458, 0) & "," & CVar(var_13C) & "," & CVar(var_124) 
  loc_1A3D116:         var_5F8 = (var_5C0 + Round(var_124, 2))
  loc_1A3D11D:         var_628 = (var_5F8 + Round(var_12C, 2))
  loc_1A3D124:         var_660 = (var_5C0 & var_5F8 & "," + Round(var_134, 2))
  loc_1A3D13F:         unk_559760.Execute CStr(var_518 & "," & CVar(var_12C) & "," & CVar(var_134) & "," & var_660 & ")"), var_6B8, -1
  loc_1A3D1CD:         var_9E = (var_9E + 1)
  loc_1A3D1D0:       End If
  loc_1A3D1D3:       var_8C.MoveNext
  loc_1A3D1D8:       GoTo loc_1A3CD30
  loc_1A3D1DB:     End If
  loc_1A3D1DB:   End If
  loc_1A3D1DE:   var_88.MoveNext
  loc_1A3D1E3:   GoTo loc_1A3A7E3
  loc_1A3D1E6: End If
  loc_1A3D1EC: unk_559760.CommitTrans
  loc_1A3D1F3: var_A6 = 0
  loc_1A3D1F6: Exit Sub
  loc_1A3D1FD: If (var_A6 = &HFF) Then
  loc_1A3D206:   unk_559760.RollbackTrans
  loc_1A3D20B: End If
  loc_1A3D20B: Proc_6_60_E63754(var_A6, var_9E, var_48C)
  loc_1A3D210: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5D748
  'Data Table: 55975C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5D71A: Me.FGrid.BackColorSel = CVar(CLng(global_124))
  loc_E5D72D: Set var_A8 = Me.TxtGrid
  loc_E5D733: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5D73B: var_AC.Visible = False
  loc_E5D747: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E9CFA4
  'Data Table: 55975C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E9CF2C: Set var_88 = Me.TxtGrid
  loc_E9CF32: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E9CF4C: If (var_8C.Visible = 0) Then
  loc_E9CF65:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E9CF6D: End If
  loc_E9CF89: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E9CF9B:   Me.FRectGrid.Visible = False
  loc_E9CFA3: End If
  loc_E9CFA3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EB40
  'Data Table: 55975C
  loc_E1EB37: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EB3F: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '100CFDC
  'Data Table: 55975C
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100CE40: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100CE56:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100CE66:   var_9C = "+{Tab}"
  loc_100CE6C:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_100CE76:   arg_C = 0
  loc_100CE7C: Else
  loc_100CED3:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_100CEE9:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100CEF1:   End If
  loc_100CEF1: End If
  loc_100CF14: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_100CF38: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_100CF4E:   var_EC = CLng(Me.FGrid.Col)
  loc_100CF5E:   If Not (var_EC = CLng(&HA)) Then
  loc_100CF68:     If (var_EC = CLng(3)) Then
  loc_100CF6B:     End If
  loc_100CF7E:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_100CF96:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_100CF9B:     var_11C = vbNullString
  loc_100CFA5:     Set var_B4 = Me.FGrid
  loc_100CFAB:     LateIdCallSt
  loc_100CFC3:   End If
  loc_100CFC3: End If
  loc_100CFC9: If (arg_C = &HD) Then
  loc_100CFD1:   global_96 = 0
  loc_100CFD4: End If
  loc_100CFD6: arg_C = 0
  loc_100CFD9: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '13B0B50
  'Data Table: 55975C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Integer
  Dim var_164 As MSHFlexGrid
  Dim var_1B8 As Variant
  Dim var_218 As Variant
  Dim var_33C As String
  Dim var_3B6 As Integer
  loc_13B0277: var_9C = CLng(Me.FGrid.Col)
  loc_13B0287: If (var_9C = CLng(3)) Then
  loc_13B0295:   If (global_72 = "Yes") Then
  loc_13B02A3:     Set var_88 = Me.Txt
  loc_13B02A9:     Call 0.Method_FGrid_UnknownEvent_C0 (CInt(&HD), var_A0)
  loc_13B02C1:     If Not(IsDate(CVar(var_A0))) Then
  loc_13B02DD:       MsgBox("Guest is not completly checked out.", &H10, var_D0, var_F0, var_110)
  loc_13B02ED:       Exit Sub
  loc_13B02EE:     End If
  loc_13B0301:     var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B0309:     var_E0 = CVar(CLng(7)) 'Long
  loc_13B034B:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_13B0361:       var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B0369:       var_E0 = CVar(CLng(7)) 'Long
  loc_13B0384:       var_110 = 5
  loc_13B0392:       var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13B0407:       var_218 = CVar(CLng(&HB)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F95078 & "RMCH"))
  loc_13B0504:       If CBool(CVar(CLng(1)) And (CDate(CStr(Me.FGrid.TextMatrix))) = MemVar_1F950EC) Or (Ucase(MemVar_1F950B8) = "1")) Then
  loc_13B050B:         Set var_1B8 = Me.FGrid
  loc_13B0527:         var_D0 = Ucase(Chr(CLng(Index)))
  loc_13B052F:         var_33C = CStr(var_D0)
  loc_13B055C:         Set var_A0 = var_1B8
  loc_13B056E:         Proc_6_63_110B734(Me, var_A0, Me.TxtGrid, 0, 0, Asc(var_33C), 0, Asc(var_33C))
  loc_13B0596:         Set var_88 = Me.TxtGrid
  loc_13B059C:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, CVar(CLng(Me.FGrid.Row)), CVar(CLng(&HE)) Or (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(Me.FGrid.Row)))
  loc_13B05A4:         var_218 = var_A0.Text
  loc_13B05BD:         If (Len(var_33C) <= 1) Then
  loc_13B05CC:           Set var_88 = Me.TxtGrid
  loc_13B05D2:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, CVar(CLng(Me.FGrid.Row)))
  loc_13B05DA:           (Trim(Mid(var_F0, 4, var_110)) = "RC") = var_A0.Text
  loc_13B05EB:           Set var_164 = Me.TxtGrid
  loc_13B05F1:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8, var_33C)
  loc_13B05F9:           var_1B8.Text = var_D0
  loc_13B060C:         End If
  loc_13B0618:         Set var_88 = Me.TxtGrid
  loc_13B061E:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0)
  loc_13B0638:         Set var_164 = Me.TxtGrid
  loc_13B063E:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_13B0646:         var_1B8.SelStart = Len(var_A0.Text)
  loc_13B0659:       End If
  loc_13B0659:     End If
  loc_13B0659:   End If
  loc_13B065C: Else
  loc_13B0663:   If (var_9C = CLng(4)) Then
  loc_13B0671:     If (global_72 = "Yes") Then
  loc_13B067F:       Set var_88 = Me.Txt
  loc_13B0685:       Call 0.Method_FGrid_UnknownEvent_C0 (CInt(&HD), var_A0)
  loc_13B069D:       If Not(IsDate(CVar(var_A0))) Then
  loc_13B06B9:         MsgBox("Guest is not completly checked out.", &H10, var_D0, var_F0, var_110)
  loc_13B06C9:         Exit Sub
  loc_13B06CA:       End If
  loc_13B06DD:       var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B06E5:       var_E0 = CVar(CLng(7)) 'Long
  loc_13B0727:       If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_13B0745:         var_E0 = CVar(CLng(7)) 'Long
  loc_13B0883:         If CBool(CVar(CLng(1)) And (CDate(CStr(Me.FGrid.TextMatrix))) = MemVar_1F950EC) Or (Ucase(MemVar_1F950B8) = "1")) Then
  loc_13B088A:           Set var_1B8 = Me.FGrid
  loc_13B08A6:           var_D0 = Ucase(Chr(CLng(Index)))
  loc_13B08AE:           var_33C = CStr(var_D0)
  loc_13B08DB:           Set var_A0 = var_1B8
  loc_13B08ED:           Proc_6_63_110B734(Me, var_A0, Me.TxtGrid, 0, 0, Asc(var_33C), 0, Asc(var_33C))
  loc_13B0915:           Set var_88 = Me.TxtGrid
  loc_13B091B:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, CVar(CLng(Me.FGrid.Row)), CVar(CLng(&HB)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F95078 & "DISC")), CVar(CLng(Me.FGrid.Row)))
  loc_13B0923:           (Trim(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 4, 5)) = "RC") = var_A0.Text
  loc_13B093C:           If (Len(var_33C) <= 1) Then
  loc_13B094B:             Set var_88 = Me.TxtGrid
  loc_13B0951:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, var_D0)
  loc_13B0959:             var_E0 = var_A0.Text
  loc_13B096A:             Set var_164 = Me.TxtGrid
  loc_13B0970:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8, var_33C)
  loc_13B0978:             var_1B8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B098B:           End If
  loc_13B0997:           Set var_88 = Me.TxtGrid
  loc_13B099D:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0)
  loc_13B09B7:           Set var_164 = Me.TxtGrid
  loc_13B09BD:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_13B09C5:           var_1B8.SelStart = Len(var_A0.Text)
  loc_13B09D8:         End If
  loc_13B09D8:       End If
  loc_13B09D8:     End If
  loc_13B09DB:   Else
  loc_13B09E2:     If (var_9C = CLng(&HA)) Then
  loc_13B09E9:       Set var_1B8 = Me.FGrid
  loc_13B0A0D:       var_33C = CStr(Ucase(Chr(CLng(Index))))
  loc_13B0A3A:       Set var_A0 = var_1B8
  loc_13B0A4C:       Proc_6_63_110B734(Me, var_A0, Me.TxtGrid, 0, &HFF)
  loc_13B0A74:       Set var_88 = Me.TxtGrid
  loc_13B0A7A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, Asc(var_33C))
  loc_13B0A82:       0 = var_A0.Text
  loc_13B0A9B:       If (Len(var_33C) <= 1) Then
  loc_13B0AAA:         Set var_88 = Me.TxtGrid
  loc_13B0AB0:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C)
  loc_13B0AB8:         var_3B6 = var_A0.Text
  loc_13B0AC9:         Set var_164 = Me.TxtGrid
  loc_13B0ACF:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_13B0AD7:         var_1B8.Text = var_33C
  loc_13B0AEA:       End If
  loc_13B0AF6:       Set var_88 = Me.TxtGrid
  loc_13B0AFC:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0)
  loc_13B0B16:       Set var_164 = Me.TxtGrid
  loc_13B0B1C:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_13B0B24:       var_1B8.SelStart = Len(var_A0.Text)
  loc_13B0B37:     End If
  loc_13B0B37:   End If
  loc_13B0B37: End If
  loc_13B0B41: If (CLng(Index) <> &HD) Then
  loc_13B0B49:   global_96 = &HFF
  loc_13B0B4C: End If
  loc_13B0B4C: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '14A7CD8
  'Data Table: 55975C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_EC As MSHFlexGrid
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_C8 As String
  Dim unk_559760 As Connection15
  Dim var_184 As Variant
  Dim var_15C As Variant
  Dim var_14C As Variant
  Dim var_1A8 As Variant
  Dim var_17C As Variant
  Dim var_1AC As String
  Dim var_1CC As Variant
  Dim var_1D0 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_1D8 As Field20
  Dim var_A4 As Integer
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_9A As Integer
  Dim var_A2 As Integer
  Dim var_280 As String
  Dim var_278 As Variant
  Dim var_268 As Variant
  Dim var_2A0 As Variant
  loc_14A707D: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_14A7080:   Exit Sub
  loc_14A7081: End If
  loc_14A7094: var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A709C: var_D8 = CVar(CLng(1)) 'Long
  loc_14A70A5: Set var_EC = Me.FGrid
  loc_14A70AB: var_FC = var_EC.TextMatrix)
  loc_14A70B6: var_10C = CVar(CStr(var_FC)) 'String
  loc_14A70BC: var_11C = Trim(var_10C)
  loc_14A70DE: If CBool(var_11C <> vbNullString) Then
  loc_14A70F2:   If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_14A7114:     If (CLng(Me.FGrid.Row) >= 1) Then
  loc_14A7129:       If ((MemVar_1F950B8 = 1) Or (global_76 = "Yes")) Then
  loc_14A7137:         Set var_88 = Me.Txt
  loc_14A713D:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(&HD), var_EC)
  loc_14A7155:         If Not(IsDate(CVar(var_EC))) Then
  loc_14A7171:           MsgBox("Guest is not completly checked out.", &H10, var_FC, var_10C, var_11C)
  loc_14A7181:           Exit Sub
  loc_14A7182:         End If
  loc_14A71B9:         If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_10C, var_11C) = 6) Then
  loc_14A71DB:           If (CLng(Me.FGrid.Rows) > 2) Then
  loc_14A71E7:             If (global_80 = &HFF) Then
  loc_14A7214:               var_A8 = InputBox("Reason for Deletion :", "Delete Reason", var_10C, var_11C, var_13C, var_15C, var_17C)
  loc_14A7228:             End If
  loc_14A7231:             unk_559760.BeginTrans var_180
  loc_14A7249:             var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A72A7:             Set var_1A8 = Me.FGrid
  loc_14A72B8:             var_1AC = CStr(var_1A8.TextMatrix))
  loc_14A72C9:             var_1CC = CVar(CLng(8)) And (CDbl(Val(var_1AC)) = CDbl(1))
  loc_14A72EE:             If CBool(var_1CC) Then
  loc_14A72FA:               If (global_80 = &HFF) Then
  loc_14A7303:                 Call 0.Method_arg_50 (var_1AC, CVar(CLng(Me.FGrid.Row)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(7)))
  loc_14A732D:                 var_1D0 = Replace(var_1AC, " ", vbNullString, 1, -1, 0)
  loc_14A7352:                 var_10C = Format(Time, "HH:MM")
  loc_14A735A:                 var_13C = (1 + var_10C)
  loc_14A735E:                 var_C8 = "- "
  loc_14A7363:                 var_15C = (var_13C + "Delete Reason")
  loc_14A736D:                 var_17C = (Me.FGrid.Row + CVar(var_A8))
  loc_14A7372:                 var_A8 = CStr(var_1A8.TextMatrix))
  loc_14A73A0:                 var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A73A8:                 var_D8 = CVar(CLng(7)) 'Long
  loc_14A73EB:                 unk_559760.Execute "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_10C, -1
  loc_14A7415:                 var_98 = Me.FGrid.Row
  loc_14A741E:                 var_B8 = CVar(CLng(var_98)) 'Long
  loc_14A7435:                 var_FC = Me.FGrid.TextMatrix)
  loc_14A7447:                 var_14C = 0
  loc_14A7478:                 unk_559760.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_FC) & "'", var_10C, -1
  loc_14A7488:                 var_14C = var_1A8.Item(var_1A8)
  loc_14A7490:                 var_1D8 = var_1D8.Value
  loc_14A749B:                 Proc_6_39_E7D3A0(var_13C, CVar("Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_FC) & " Tm "), CVar("Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_FC) & " Tm "), var_FC, CVar(CLng(7)))
  loc_14A74A4:                 var_A4 = CInt(var_13C)
  loc_14A74D5:                 Proc_6_17_EAAE40(var_98, var_A8, var_A4, var_A8)
  loc_14A74E5:                 Proc_6_17_EAAE40(var_13C, MemVar_1F950C8, var_184.Fields)
  loc_14A74F5:                 Proc_6_7_F26918(var_1CC, MemVar_1F950EC, var_FC)
  loc_14A750D:                 var_16C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7515:                 var_1A4 = CVar(CLng(7)) 'Long
  loc_14A7548:                 var_1AC = CStr((var_A4 + 1))
  loc_14A7559:                 var_10C = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_FC) & ",Remarks=") & var_98 
  loc_14A758D:                 var_238 = var_10C & ",U_Name=" & var_13C & ",U_EntDt=" & var_1CC & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14A75A4:                 unk_559760.Execute CStr(var_238 & "'"), var_278, -1
  loc_14A75DE:               End If
  loc_14A75F1:               var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A75F9:               var_D8 = CVar(CLng(7)) 'Long
  loc_14A763C:               unk_559760.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_10C, -1
  loc_14A766F:               var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7677:               var_D8 = CVar(CLng(7)) 'Long
  loc_14A7691:               var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_14A76BC:               var_9A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14A76C5:               ' Referenced from: 14A7778
  loc_14A76CB:               If (var_9A >= 1) Then
  loc_14A76D2:                 var_B8 = CVar(CLng(var_9A)) 'Long
  loc_14A76DA:                 var_D8 = CVar(CLng(7)) 'Long
  loc_14A7705:                 If (CStr(Me.FGrid.TextMatrix)) = var_A0) Then
  loc_14A770C:                   var_B8 = CVar(CLng(var_9A)) 'Long
  loc_14A7715:                   Set var_88 = Me.FGrid
  loc_14A7728:                   var_A2 = &HFF
  loc_14A772B:                 End If
  loc_14A7731:                 var_9A = (var_9A - 1)
  loc_14A7738:                 var_B8 = CVar(CLng(var_9A)) 'Long
  loc_14A7740:                 var_D8 = CVar(CLng(7)) 'Long
  loc_14A775A:                 var_1AC = CStr(Me.FGrid.TextMatrix))
  loc_14A7772:                 If ((var_1AC <> var_A0) And (var_A2 = &HFF)) Then
  loc_14A7775:                   GoTo loc_14A777B
  loc_14A7778:                 End If
  loc_14A7778:                 GoTo loc_14A76C5
  loc_14A777B:                 ' Referenced from: 14A7775
  loc_14A777B:               End If
  loc_14A777E:             Else
  loc_14A7787:               If (global_80 = &HFF) Then
  loc_14A7790:                 Call 0.Method_arg_50 (var_1AC, var_D8, var_B8, var_9A, var_A2, FGrid.DispID_10000, var_B8)
  loc_14A77BA:                 var_1D0 = Replace(var_1AC, " ", vbNullString, 1, -1, 0)
  loc_14A77C1:                 var_11C = CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm ") 'String
  loc_14A77E7:                 var_13C = (1 + Format(Time, "HH:MM"))
  loc_14A77EB:                 var_C8 = "- "
  loc_14A77F0:                 var_15C = (var_13C + ",U_Name=")
  loc_14A77FA:                 var_17C = (Format(Time, "HH:MM") & ",U_Name=" & var_13C + CVar(var_A8))
  loc_14A782D:                 var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7835:                 var_D8 = CVar(CLng(7)) 'Long
  loc_14A785A:                 var_10C = Me.FGrid.Row
  loc_14A7863:                 var_12C = CVar(CLng(var_10C)) 'Long
  loc_14A786B:                 var_16C = CVar(CLng(8)) 'Long
  loc_14A7874:                 Set var_1A8 = Me.FGrid
  loc_14A787A:                 var_11C = var_1A8.TextMatrix)
  loc_14A78B0:                 var_280 = "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO=" & CStr(var_11C)
  loc_14A78B9:                 unk_559760.Execute var_280, var_13C, -1
  loc_14A78EF:                 var_98 = Me.FGrid.Row
  loc_14A78F8:                 var_B8 = CVar(CLng(var_98)) 'Long
  loc_14A790F:                 var_FC = Me.FGrid.TextMatrix)
  loc_14A7921:                 var_14C = 0
  loc_14A7952:                 unk_559760.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_FC) & "'", var_10C, -1
  loc_14A795A:                 var_184 = var_184.Fields
  loc_14A7962:                 var_14C = var_1A8.Item(var_1A8)
  loc_14A796A:                 var_1D8 = var_1D8.Value
  loc_14A7975:                 Proc_6_39_E7D3A0(var_13C, var_11C, var_11C, var_FC, CVar(CLng(7)))
  loc_14A797E:                 var_A4 = CInt(var_13C)
  loc_14A79AF:                 Proc_6_17_EAAE40(var_98, CStr(Format(Time, "HH:MM") & ",U_Name=" & var_13C & ",U_EntDt="), var_A4, CStr(Format(Time, "HH:MM") & ",U_Name=" & var_13C & ",U_EntDt="))
  loc_14A79BF:                 Proc_6_17_EAAE40(var_13C, MemVar_1F950C8, var_1D8)
  loc_14A79CF:                 Proc_6_7_F26918(var_1CC, MemVar_1F950EC, var_11C)
  loc_14A79E7:                 var_16C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A79EF:                 var_1A4 = CVar(CLng(7)) 'Long
  loc_14A7A1D:                 var_268 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7A25:                 var_2A0 = CVar(CLng(8)) 'Long
  loc_14A7A58:                 var_1AC = CStr((var_A4 + 1))
  loc_14A7A82:                 var_17C = CVar("Update PayChargeLog Set SeqNo=" & CStr(CVar("Update PayChargeLog Set SeqNo=" & CStr(var_FC) & ",Remarks=")) & ",Remarks=") & var_98 & ",U_Name=" & var_13C & ",U_EntDt=" 
  loc_14A7AA6:                 var_258 = var_17C & var_1CC & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND SNO=" 
  loc_14A7ABF:                 unk_559760.Execute CStr(var_258 & CVar(CStr(Me.FGrid.TextMatrix)))), var_300, -1
  loc_14A7B05:               End If
  loc_14A7B18:               var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7B20:               var_D8 = CVar(CLng(7)) 'Long
  loc_14A7B45:               var_10C = Me.FGrid.Row
  loc_14A7B4E:               var_12C = CVar(CLng(var_10C)) 'Long
  loc_14A7B56:               var_16C = CVar(CLng(8)) 'Long
  loc_14A7B65:               var_11C = Me.FGrid.TextMatrix)
  loc_14A7BA4:               unk_559760.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO=" & CStr(var_11C), var_13C, -1
  loc_14A7BE3:               var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7BEC:               Set var_EC = Me.FGrid
  loc_14A7C04:             End If
  loc_14A7C0A:             unk_559760.CommitTrans
  loc_14A7C12:           Else
  loc_14A7C12:             var_B8 = 1
  loc_14A7C25:             Me.FGrid.Rows = var_B8
  loc_14A7C4B:             var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_B8, var_1D8, var_11C, var_16C, var_12C))) 'String
  loc_14A7C53:             Set var_EC = Me.FGrid
  loc_14A7C80:             Me.FGrid.FixedRows = 1
  loc_14A7C88:           End If
  loc_14A7C88:         End If
  loc_14A7C88:       End If
  loc_14A7C8B:     Else
  loc_14A7C96:       var_FC = "Delete Module"
  loc_14A7CA6:       var_98 = "No Entries To Delete"
  loc_14A7CAC:       MsgBox(var_98, &H10, var_FC, var_10C, var_11C)
  loc_14A7CBC:     End If
  loc_14A7CC0:     Set var_88 = Me.FGrid
  loc_14A7CD1:     Call Proc_100_42_1449ABC(FGrid.DispID_8001, FGrid.DispID_10000, var_98, var_FC, var_D8)
  loc_14A7CD6:   End If
  loc_14A7CD6: End If
  loc_14A7CD6: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_10(Index As Integer) '1037DC4
  'Data Table: 55975C
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  loc_1037B9F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1037BA7: var_C8 = CVar(CLng(7)) 'Long
  loc_1037C07: If (Trim(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 4, 5)) = "REC") Then
  loc_1037C10:   If (Index = 2) Then
  loc_1037C17:     Set var_88 = Me.FGrid
  loc_1037C36:     Me.FRectGrid.Visible = True
  loc_1037C51:     Me.FRectGrid.Rows = 0
  loc_1037C59:     var_A8 = "Print Receipt"
  loc_1037C63:     Set var_88 = Me.FRectGrid
  loc_1037C74:     var_A8 = 0
  loc_1037C7D:     var_C8 = &H12C
  loc_1037C8A:     Set var_88 = Me.FRectGrid
  loc_1037C90:     LateIdCallSt
  loc_1037C9B:     var_A8 = 0
  loc_1037CCA:     Me.FRectGrid.Height = CVar(CDbl(CLng(Me.FRectGrid.RowHeight))))
  loc_1037CD9:     var_A8 = 0
  loc_1037CE2:     var_C8 = &H5DC
  loc_1037CEF:     Set var_88 = Me.FRectGrid
  loc_1037CF5:     LateIdCallSt
  loc_1037D13:     Me.FRectGrid.Width = CVar(CDbl(1510))
  loc_1037D3A:     var_C8 = 0
  loc_1037D82:     var_10C = CVar((((CDbl(Me.FGrid.Top) + arg_18) + CDbl(CLng(Me.FRectGrid.RowHeight)))) - (CDbl(CLng(Me.FRectGrid.RowHeight))) / CDbl(4)))) 'Single
  loc_1037D91:     Me.FRectGrid.Top = var_10C
  loc_1037DBB:     Me.FRectGrid.Left = 0
  loc_1037DC3:   End If
  loc_1037DC3: End If
  loc_1037DC3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E6B7DC
  'Data Table: 55975C
  loc_E6B79B: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E6B7BF: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E6B7D1:   Me.FRectGrid.Visible = False
  loc_E6B7D9: End If
  loc_E6B7D9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E35524
  'Data Table: 55975C
  Dim var_8C As TextBox
  loc_E35507: Set var_88 = Me.TxtGrid
  loc_E3550D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E35515: var_8C.Visible = False
  loc_E35521: Exit Sub
End Sub

Private Sub CmdeInvoiceJson_Click() 'E61B40
  'Data Table: 55975C
  loc_E61B05: Call Proc_100_50_E696B0(global_128)
  loc_E61B10: If (var_86 = 0) Then
  loc_E61B13:   Exit Sub
  loc_E61B14: End If
  loc_E61B14: Call CmdeInvoiceSql_Click()
  loc_E61B2F: Proc_96_104_1896028(CStr(Me.TXT_GNAME.BoundText))
  loc_E61B3D: Exit Sub
End Sub

Private Sub CmdGeneInvoice_Click() 'E96000
  'Data Table: 55975C
  loc_E95F91: Call Proc_100_50_E696B0(global_128)
  loc_E95F9C: If (var_86 = 0) Then
  loc_E95F9F:   Exit Sub
  loc_E95FA0: End If
  loc_E95FB2: var_8C = CStr(Me.TXT_GNAME.BoundText)
  loc_E95FC3: Proc_348_15_E114A0(var_8C, 0)
  loc_E95FED: Proc_348_21_12A8ED8(var_8C, Me.QrImage, global_128)
  loc_E95FF9: Call Proc_100_49_FD4E10(global_132, global_136)
  loc_E95FFE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0C78C
  'Data Table: 55975C
  loc_E0C782: Proc_6_93_EACCB4(Me.TXT_GNAME)
  loc_E0C78A: Exit Sub
End Sub

Private Sub CmdSettleRcpt_UnknownEvent_9 'FA075C
  'Data Table: 55975C
  Dim var_D0 As Variant
  Dim unk_559760 As Connection15
  Dim var_88 As Recordset15
  Dim var_F8 As Fields15
  Dim var_FC As Variant
  loc_FA061D: Proc_6_17_EAAE40(var_B0, MemVar_1F95078, "Select PrintRcpt,RcptPrinting from Enviro WHERE LOGSITE_CODE=")
  loc_FA0625: var_D0 = var_F4 & var_B0 
  loc_FA0633: unk_559760.Execute CStr(var_D0), -1, var_F8
  loc_FA063E: Set var_88 = var_F8
  loc_FA06A6: var_FC = var_88.Fields.Item(1)
  loc_FA06BB: var_90 = Proc_6_38_E69628(var_FC.Value)
  loc_FA06D0: If (Proc_6_38_E69628(var_88.Fields.Item(0).Value) <> "Yes") Then
  loc_FA06D3:   GoTo loc_FA075B
  loc_FA06D6: End If
  loc_FA0705: If (MsgBox("Want Print Settlement Receipt ?", &H24, var_D0, var_F4, var_11C) = 7) Then
  loc_FA0708:   GoTo loc_FA075B
  loc_FA070B: End If
  loc_FA0719: Set var_F8 = Me.Txt
  loc_FA071F: Call 0.Method_CmdSettleRcpt_UnknownEvent_90 (CInt(&HA), var_FC)
  loc_FA0732: Call 0.Method_arg_50 (var_120)
  loc_FA0748: Proc_146_2_1317B24(var_FC.Tag, var_90)
  loc_FA075B: ' Referenced from: FA0708
  loc_FA075B: ' Referenced from: FA06D3
  loc_FA075B: Exit Sub
End Sub

Private Sub CMDSET_Click() '1252C1C
  'Data Table: 55975C
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_148 As Variant
  Dim var_114 As Variant
  Dim var_158 As Long
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  loc_1252701: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B4 'Integer
  loc_125270B:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_1252756:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F95078 & "RMCH")) Then
  loc_1252762:     Set var_A0 = Me.Txt
  loc_1252768:     Call 0.Method_CMDSET_Click0 (&H18, var_138, CVar(CLng(&HB)))
  loc_1252771:     var_D4 = CVar(CLng(var_86)) 'Long
  loc_1252779:     var_F4 = CVar(CLng(3)) 'Long
  loc_12527B4:     LateIdCallSt
  loc_12527E7:     Set var_A0 = Me.Txt
  loc_12527ED:     Call 0.Method_CMDSET_Click0 (CInt(8), var_138, Me.FGrid, CVar(CStr(Format(CVar(var_138), "0.00"))), 1)
  loc_125282E:     Proc_96_86_1AEE150(Me.FGrid, Me.Txt, &H18, CInt(&HB), CInt(3), CInt(7), var_138)
  loc_1252847:     global_98 = &HFF
  loc_125284A:     GoTo loc_125284D
  loc_125284D:     ' Referenced from: 125284A
  loc_125284D:   End If
  loc_1252850: Next var_B4 'Integer
  loc_125287A: For var_17C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_17C 'Integer
  loc_1252884:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_125288C:   var_E4 = CVar(CLng(7)) 'Long
  loc_12528B7:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12528BE:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_12528C6:     var_E4 = CVar(CLng(3)) 'Long
  loc_12528F2:     var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1252902:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_125290A:     var_E4 = CVar(CLng(4)) 'Long
  loc_1252936:     var_9C = (var_9C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1252946:     var_E4 = CVar(CLng(var_86)) 'Long
  loc_125294E:     var_148 = CVar(CLng(5)) 'Long
  loc_1252970:     var_B0 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_1252980:     var_124 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_1252988:     Set var_A0 = Me.FGrid
  loc_125298E:     LateIdCallSt
  loc_12529B0:     If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_12529B7:       var_C4 = CVar(CLng(var_86)) 'Long
  loc_12529BF:       var_E4 = CVar(CLng(6)) 'Long
  loc_12529C4:       var_148 = "Dr"
  loc_12529CE:       Set var_A0 = Me.FGrid
  loc_12529D4:       LateIdCallSt
  loc_12529E2:     Else
  loc_12529EE:       If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_12529F5:         var_C4 = CVar(CLng(var_86)) 'Long
  loc_12529FD:         var_E4 = CVar(CLng(6)) 'Long
  loc_1252A02:         var_148 = "Cr"
  loc_1252A0C:         Set var_A0 = Me.FGrid
  loc_1252A12:         LateIdCallSt
  loc_1252A20:       Else
  loc_1252A24:         var_C4 = CVar(CLng(var_86)) 'Long
  loc_1252A2C:         var_E4 = CVar(CLng(6)) 'Long
  loc_1252A31:         var_148 = vbNullString
  loc_1252A3B:         Set var_A0 = Me.FGrid
  loc_1252A41:         LateIdCallSt
  loc_1252A4C:       End If
  loc_1252A4C:     End If
  loc_1252A4C:   End If
  loc_1252A4F: Next var_17C 'Integer
  loc_1252A58: Set var_19C = Me.Fgrid1
  loc_1252A5B: var_E4 = 0
  loc_1252A67: var_148 = CVar(CLng(1)) 'Long
  loc_1252A95: var_114 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1252A9C: LateIdCallSt
  loc_1252AAD: var_E4 = 0
  loc_1252AB9: var_148 = CVar(CLng(2)) 'Long
  loc_1252AE7: var_114 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_1252AEE: LateIdCallSt
  loc_1252AFF: var_E4 = 0
  loc_1252B0B: var_148 = CVar(CLng(3)) 'Long
  loc_1252B2D: var_B0 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_1252B3D: var_124 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1252B44: LateIdCallSt
  loc_1252B57: var_158 = 0
  loc_1252B63: var_1AC = CVar(CLng(4)) 'Long
  loc_1252B8A: var_C4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_1252BB0: var_F4 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_1252BC0: var_1CC = CVar(CStr(IIf(var_F4, "Dr", IIf(var_9C, "Cr", vbNullString)))) 'String
  loc_1252BC7: LateIdCallSt
  loc_1252BE4: Set var_19C = Nothing 
  loc_1252BF4: Me.FrmAdjust.Visible = False
  loc_1252C00: Set var_A0 = Me.FGrid
  loc_1252C16: Set var_8C = Nothing
  loc_1252C19: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FA80D8
  'Data Table: 55975C
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FA7F6F: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FA7F8A: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA7FC9: Set var_104 = Me.TxtGrid
  loc_FA7FCF: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_FA7FD7: var_108.Tag = CVar(CLng(Me.FGrid.Col))
  loc_FA8008: var_110 = CLng(Me.FGrid.Col)
  loc_FA8018: If (var_110 = CLng(&HA)) Then
  loc_FA803F:   Set var_BC = Me.FGrid
  loc_FA8056:   global_100 = CStr(var_BC.TextMatrix))
  loc_FA807A:   Set var_A8 = Me.TxtGrid
  loc_FA8080:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5, CVar(CLng(&HA)))
  loc_FA8088:   var_BC.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_FA8097: Else
  loc_FA809E:   If Not (var_110 = CLng(3)) Then
  loc_FA80A8:     If (var_110 = CLng(4)) Then
  loc_FA80AB:     End If
  loc_FA80BA:     Set var_A8 = Me.TxtGrid
  loc_FA80C0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 8)
  loc_FA80C8:     var_BC.MaxLength = var_110
  loc_FA80D4:   End If
  loc_FA80D4: End If
  loc_FA80D4: Exit Sub
  loc_FA80D5: CopyBytes 2303
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '103E858
  'Data Table: 55975C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_103E604: On Error Goto loc_103E84F
  loc_103E611: If (CLng(Shift) = &H1B) Then
  loc_103E621:   Set var_88 = Me.TxtGrid
  loc_103E627:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_103E641:   Set var_94 = Me.TxtGrid
  loc_103E647:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_103E64F:   var_98.Text = var_8C.Tag
  loc_103E66B:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_103E674:   Set var_88 = Me.FGrid
  loc_103E691:   Set var_88 = Me.TxtGrid
  loc_103E697:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 0)
  loc_103E69F:   var_8C.Visible = FGrid.DispID_8001
  loc_103E6AB:   Exit Sub
  loc_103E6AC: End If
  loc_103E6BF: var_AC = CLng(Me.FGrid.Col)
  loc_103E6CF: If (var_AC = CLng(&HA)) Then
  loc_103E6E1:   Set var_88 = Me.TxtGrid
  loc_103E6E7:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5)
  loc_103E6EF:   var_8C.MaxLength = var_AC
  loc_103E71B:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_103E724:     Call Proc_100_39_F90C40(KeyCode, var_AE)
  loc_103E72F:     If (var_AE = &HFF) Then
  loc_103E766:       Set var_8C = Me.TxtGrid
  loc_103E775:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_96)
  loc_103E785:     End If
  loc_103E785:   End If
  loc_103E788: Else
  loc_103E78F:   If Not (var_AC = CLng(3)) Then
  loc_103E799:     If (var_AC = CLng(4)) Then
  loc_103E79C:     End If
  loc_103E7AB:     Set var_88 = Me.TxtGrid
  loc_103E7B1:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 8, &HA)
  loc_103E7B9:     var_8C.MaxLength = 0
  loc_103E7E5:     If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_103E7EE:       Call Proc_100_39_F90C40(KeyCode, var_AE, &HA)
  loc_103E7F9:       If (var_AE = &HFF) Then
  loc_103E83F:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, &HA)
  loc_103E84F:       End If
  loc_103E84F:       ' Referenced from: 103E604
  loc_103E84F:     End If
  loc_103E84F:   End If
  loc_103E84F: End If
  loc_103E84F: Proc_6_60_E63754(0, &HA, 0)
  loc_103E854: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E22B58
  'Data Table: 55975C
  Dim arg_10 As Integer
  loc_E22B3B: Proc_6_58_E06050(arg_10)
  loc_E22B46: Proc_6_133_E7FB08(var_94)
  loc_E22B4F: arg_10 = CInt(var_94)
  loc_E22B55: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '13EE108
  'Data Table: 55975C
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_C0 As Long
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_D4 As Variant
  Dim var_158 As Variant
  Dim var_128 As Variant
  Dim var_18C As String
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_148 As Variant
  Dim var_F4 As Variant
  Dim var_168 As Long
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_C4 As TextBox
  Dim var_E4 As Variant
  loc_13ED710: On Error Goto loc_13EE102
  loc_13ED726: var_C0 = CLng(Me.FGrid.Col)
  loc_13ED736: If (var_C0 = CLng(3)) Then
  loc_13ED743:   Set var_AC = Me.TxtGrid
  loc_13ED749:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C4)
  loc_13ED761:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13ED769:   var_138 = CVar(CLng(3)) 'Long
  loc_13ED7A4:   LateIdCallSt
  loc_13ED7CC:   Set var_AC = Me.TxtGrid
  loc_13ED7D2:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_C4), "0.00"))), 1)
  loc_13ED7EA:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13ED7F2:   var_138 = CVar(CLng(&HD)) 'Long
  loc_13ED82D:   LateIdCallSt
  loc_13ED864:   Set var_AC = Me.Txt
  loc_13ED86A:   Call 0.Method_TxtGrid_KeyUp0 (CInt(8), var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_C4), "0.00"))), 1, 1)
  loc_13ED8A9:   Proc_96_86_1AEE150(Me.FGrid, Me.TxtGrid, KeyCode, CInt(&HB), CInt(3), CInt(7), var_C4)
  loc_13ED8C2:   global_98 = &HFF
  loc_13ED8EA:   For var_188 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_188 'Integer
  loc_13ED8F4:     var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13ED8FC:     var_128 = CVar(CLng(7)) 'Long
  loc_13ED927:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13ED92E:       var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13ED936:       var_128 = CVar(CLng(3)) 'Long
  loc_13ED962:       var_8C = (var_8C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13ED972:       var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13ED97A:       var_128 = CVar(CLng(4)) 'Long
  loc_13ED9A6:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13ED9B6:       var_128 = CVar(CLng(var_9E)) 'Long
  loc_13ED9BE:       var_148 = CVar(CLng(5)) 'Long
  loc_13ED9E0:       var_BC = CVar(Abs((var_8C - var_94))) 'Double
  loc_13ED9F0:       var_108 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_13ED9F8:       Set var_AC = Me.FGrid
  loc_13ED9FE:       LateIdCallSt
  loc_13EDA20:       If (CDbl((var_8C - var_94)) > CDbl(0)) Then
  loc_13EDA27:         var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EDA2F:         var_128 = CVar(CLng(6)) 'Long
  loc_13EDA34:         var_148 = "Dr"
  loc_13EDA3E:         Set var_AC = Me.FGrid
  loc_13EDA44:         LateIdCallSt
  loc_13EDA52:       Else
  loc_13EDA5E:         If (CDbl((var_8C - var_94)) < CDbl(0)) Then
  loc_13EDA65:           var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EDA6D:           var_128 = CVar(CLng(6)) 'Long
  loc_13EDA72:           var_148 = "Cr"
  loc_13EDA7C:           Set var_AC = Me.FGrid
  loc_13EDA82:           LateIdCallSt
  loc_13EDA90:         Else
  loc_13EDA94:           var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EDA9C:           var_128 = CVar(CLng(6)) 'Long
  loc_13EDAA1:           var_148 = vbNullString
  loc_13EDAAB:           Set var_AC = Me.FGrid
  loc_13EDAB1:           LateIdCallSt
  loc_13EDABC:         End If
  loc_13EDABC:       End If
  loc_13EDABC:     End If
  loc_13EDABF:   Next var_188 'Integer
  loc_13EDAC8:   Set var_1A8 = Me.Fgrid1
  loc_13EDACB:   var_128 = 0
  loc_13EDAD7:   var_148 = CVar(CLng(1)) 'Long
  loc_13EDB05:   var_F4 = CVar(CStr(Format(var_8C, "0.00"))) 'String
  loc_13EDB0C:   LateIdCallSt
  loc_13EDB1D:   var_128 = 0
  loc_13EDB29:   var_148 = CVar(CLng(2)) 'Long
  loc_13EDB57:   var_F4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_13EDB5E:   LateIdCallSt
  loc_13EDB6F:   var_128 = 0
  loc_13EDB7B:   var_148 = CVar(CLng(3)) 'Long
  loc_13EDB9D:   var_BC = CVar(Abs((var_8C - var_94))) 'Double
  loc_13EDBAD:   var_108 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_13EDBB4:   LateIdCallSt
  loc_13EDBC7:   var_168 = 0
  loc_13EDBD3:   var_1B8 = CVar(CLng(4)) 'Long
  loc_13EDBFA:   var_D4 = (CDbl((var_94 - var_8C)) > CDbl(0))
  loc_13EDC20:   var_138 = (CDbl((var_8C - var_94)) > CDbl(0))
  loc_13EDC30:   var_1D8 = CVar(CStr(IIf(var_138, "Dr", IIf(var_94, "Cr", vbNullString)))) 'String
  loc_13EDC37:   LateIdCallSt
  loc_13EDC54:   Set var_1A8 = Nothing 
  loc_13EDC5B: Else
  loc_13EDC62:   If (var_C0 = CLng(4)) Then
  loc_13EDC6F:     Set var_AC = Me.TxtGrid
  loc_13EDC75:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C4, var_1A8, var_1D8, var_1B8, var_168, var_1A8)
  loc_13EDC8D:     var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13EDC95:     var_138 = CVar(CLng(4)) 'Long
  loc_13EDCC2:     var_158 = CVar(CStr(Format(CVar(var_C4), "0.00"))) 'String
  loc_13EDCCA:     Set var_16C = Me.FGrid
  loc_13EDCD0:     LateIdCallSt
  loc_13EDCF3:     global_98 = &HFF
  loc_13EDD1B:     For var_1EC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_9E = var_1EC 'Integer
  loc_13EDD25:       var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EDD2D:       var_128 = CVar(CLng(7)) 'Long
  loc_13EDD58:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13EDD5F:         var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EDD67:         var_128 = CVar(CLng(3)) 'Long
  loc_13EDD93:         var_8C = (var_8C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13EDDA3:         var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EDDAB:         var_128 = CVar(CLng(4)) 'Long
  loc_13EDDC5:         var_18C = CStr(Me.FGrid.TextMatrix))
  loc_13EDDD7:         var_94 = (var_94 + Val(var_18C))
  loc_13EDDE7:         var_128 = CVar(CLng(var_9E)) 'Long
  loc_13EDDEF:         var_148 = CVar(CLng(5)) 'Long
  loc_13EDE11:         var_BC = CVar(Abs((var_8C - var_94))) 'Double
  loc_13EDE21:         var_108 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_13EDE29:         Set var_AC = Me.FGrid
  loc_13EDE2F:         LateIdCallSt
  loc_13EDE51:         If (CDbl((var_8C - var_94)) > CDbl(0)) Then
  loc_13EDE58:           var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EDE60:           var_128 = CVar(CLng(6)) 'Long
  loc_13EDE65:           var_148 = "Dr"
  loc_13EDE6F:           Set var_AC = Me.FGrid
  loc_13EDE75:           LateIdCallSt
  loc_13EDE83:         Else
  loc_13EDE8F:           If (CDbl((var_8C - var_94)) < CDbl(0)) Then
  loc_13EDE96:             var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EDE9E:             var_128 = CVar(CLng(6)) 'Long
  loc_13EDEA3:             var_148 = "Cr"
  loc_13EDEAD:             Set var_AC = Me.FGrid
  loc_13EDEB3:             LateIdCallSt
  loc_13EDEC1:           Else
  loc_13EDEC5:             var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EDECD:             var_128 = CVar(CLng(6)) 'Long
  loc_13EDED2:             var_148 = vbNullString
  loc_13EDEDC:             Set var_AC = Me.FGrid
  loc_13EDEE2:             LateIdCallSt
  loc_13EDEED:           End If
  loc_13EDEED:         End If
  loc_13EDEED:       End If
  loc_13EDEF0:     Next var_1EC 'Integer
  loc_13EDEF9:     Set var_1F0 = Me.Fgrid1
  loc_13EDEFC:     var_128 = 0
  loc_13EDF08:     var_148 = CVar(CLng(1)) 'Long
  loc_13EDF36:     var_F4 = CVar(CStr(Format(var_8C, "0.00"))) 'String
  loc_13EDF3D:     LateIdCallSt
  loc_13EDF4E:     var_128 = 0
  loc_13EDF5A:     var_148 = CVar(CLng(2)) 'Long
  loc_13EDF88:     var_F4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_13EDF8F:     LateIdCallSt
  loc_13EDFA0:     var_128 = 0
  loc_13EDFAC:     var_148 = CVar(CLng(3)) 'Long
  loc_13EDFCE:     var_BC = CVar(Abs((var_8C - var_94))) 'Double
  loc_13EDFDE:     var_108 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_13EDFE5:     LateIdCallSt
  loc_13EDFF8:     var_168 = 0
  loc_13EE004:     var_1B8 = CVar(CLng(4)) 'Long
  loc_13EE02B:     var_D4 = (CDbl((var_94 - var_8C)) > CDbl(0))
  loc_13EE051:     var_138 = (CDbl((var_8C - var_94)) > CDbl(0))
  loc_13EE061:     var_1D8 = CVar(CStr(IIf(var_138, "Dr", IIf(var_94, "Cr", vbNullString)))) 'String
  loc_13EE068:     LateIdCallSt
  loc_13EE085:     Set var_1F0 = Nothing 
  loc_13EE08C:   Else
  loc_13EE093:     If (var_C0 = CLng(&HA)) Then
  loc_13EE0C3:       Set var_AC = Me.TxtGrid
  loc_13EE0C9:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C4, var_18C, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_1F0, var_1D8)
  loc_13EE0D1:       var_1B8 = var_C4.Text
  loc_13EE0D9:       var_E4 = CVar(var_18C) 'String
  loc_13EE0E1:       Set var_16C = Me.FGrid
  loc_13EE0E7:       LateIdCallSt
  loc_13EE101:     End If
  loc_13EE101:   End If
  loc_13EE101: End If
  loc_13EE101: Exit Sub
  loc_13EE102: ' Referenced from: 13ED710
  loc_13EE102: Proc_6_60_E63754(var_16C, var_E4, var_168, var_1F0)
  loc_13EE107: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23D68
  'Data Table: 55975C
  Dim arg_10 As Integer
  loc_E23D50: If (Cancel = 0) Then
  loc_E23D59:   Call Proc_100_39_F90C40(Cancel, var_88)
  loc_E23D62:   arg_10 = Not(var_88)
  loc_E23D65: End If
  loc_E23D65: Exit Sub
End Sub

Private Sub FRectGrid_UnknownEvent_9 'E2B728
  'Data Table: 55975C
  loc_E2B71B: Call Proc_100_37_1007274(CInt(CLng(Me.FRectGrid.Row)))
  loc_E2B726: Exit Sub
End Sub

Private Sub CmdSum_UnknownEvent_9 'E052D0
  'Data Table: 55975C
  loc_E052C5: global_88 = &HFF
  loc_E052C8: Call CmdPrint_UnknownEvent_9()
  loc_E052CD: Exit Sub
End Sub

Private Sub TXT_GNAME_UnknownEvent_B 'E1864C
  'Data Table: 55975C
  loc_E18642: If ((global_92 = "No") And (Cancel = &HD)) Then
  loc_E18645:   Call Proc_100_41_167A358()
  loc_E1864A: End If
  loc_E1864A: Exit Sub
End Sub

Private Sub TXT_GNAME_UnknownEvent_11 'E0C198
  'Data Table: 55975C
  loc_E0C18F: If (global_92 <> "No") Then
  loc_E0C192:   Call Proc_100_41_167A358()
  loc_E0C197: End If
  loc_E0C197: Exit Sub
End Sub

Private Sub cmdAdujst_UnknownEvent_9 '136237C
  'Data Table: 55975C
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_170 As Double
  Dim var_B0 As String
  Dim var_AC As Double
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim unk_559760 As Connection15
  Dim var_94 As Recordset15
  Dim var_D0 As Variant
  Dim var_9E As Integer
  Dim var_1BC As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim Me As Recordset15
  Dim var_1C0 As MSHFlexGrid
  loc_1361B70: var_C0 = 0
  loc_1361B7C: var_E0 = CVar(CLng(1)) 'Long
  loc_1361BA1: var_118 = 0
  loc_1361BAD: var_138 = CVar(CLng(2)) 'Long
  loc_1361BCF: var_170 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_1361BEA: var_AC = (Val(CStr(global_104)) - (Val(CStr(Me.Fgrid1.TextMatrix))) - var_170))
  loc_1361C0B: If (var_AC = CDbl(0)) Then
  loc_1361C0E:   Exit Sub
  loc_1361C0F: End If
  loc_1361C28: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1361C30: var_E0 = CVar(CLng(7)) 'Long
  loc_1361C39: Set var_14C = Me.FGrid
  loc_1361C3F: var_15C = var_14C.TextMatrix)
  loc_1361C63: If (CStr(var_15C) <> vbNullString) Then
  loc_1361C66:   var_C0 = vbNullString
  loc_1361C70:   Set var_F4 = Me.FGrid
  loc_1361C81: End If
  loc_1361C84: var_98 = "REV"
  loc_1361C9B: var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1361CCC: Set var_F4 = Me.Txt
  loc_1361CD2: Call 0.Method_cmdAdujst_UnknownEvent_90 (CInt(&HD), var_14C, CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_98 & "' And VP.Date_From<="), var_1BC, -1, var_1C0, FGrid.DispID_10000)
  loc_1361CE1: Proc_6_7_F26918(var_15C, CVar(var_14C), var_C0, var_E0, var_C0)
  loc_1361D00: unk_559760.Execute CStr(var_AC & var_15C & " Order By VP.Date_From DESC"), var_170, var_138
  loc_1361D0B: Set var_94 = var_1C0
  loc_1361D47: If (var_94.RecordCount > 0) Then
  loc_1361D86:   If (var_94.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1361D89:     GoTo loc_1361E09
  loc_1361D8C:   End If
  loc_1361DB7:   var_9C = CStr(var_94.Fields.Item("Prefix").Value)
  loc_1361DF3:   var_15C = (var_94.Fields.Item("start_srl_no").Value + 1)
  loc_1361DF8:   var_9E = CInt(var_15C)
  loc_1361E09:   ' Referenced from: 1361D89
  loc_1361E09: End If
  loc_1361E34: var_104 = Space((5 - Len(var_98)))
  loc_1361E3C: var_188 = (CVar(var_9E & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_98) + var_94.Fields.Item("start_srl_no").Value)
  loc_1361E4D: var_198 = Space((5 - Len(var_9C)))
  loc_1361E55: var_1A8 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_98 & "' And VP.Date_From<=") + var_AC & CVar(var_9E & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_98))
  loc_1361E5F: var_1BC = (var_AC & CVar(var_9E & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_98) & " Order By VP.Date_From DESC" + CVar(var_9C))
  loc_1361E75: var_1D8 = Space((8 - Len(CStr(var_9E))))
  loc_1361E7D: var_1E8 = (var_1BC + var_1D8)
  loc_1361E89: var_208 = (var_1E8 + CVar(CStr(var_9E)))
  loc_1361E8E: var_A4 = CStr(var_208)
  loc_1361EB6: Set var_94 = Nothing
  loc_1361EE8: var_14C = Me.Fields.Item("AmendRevenue")
  loc_1361EF8: var_15C = "Select Name from revmast where code='" & var_14C.Value 
  loc_1361F01: var_188 = var_15C & "'" 
  loc_1361F0F: unk_559760.Execute CStr(var_188), var_AC & var_15C, -1
  loc_1361F1A: Set var_94 = var_1C0
  loc_1361F48: If (var_94.RecordCount <= 0) Then
  loc_1361F64:   MsgBox("First Assign Amend Revenue name in parameter settings", 0, var_15C, var_188, var_AC & var_15C)
  loc_1361F74:   Exit Sub
  loc_1361F75: End If
  loc_1361F79: Set var_20C = Me.FGrid
  loc_1361F95: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1361FAD: Set var_F4 = Me.Txt
  loc_1361FB3: Call 0.Method_cmdAdujst_UnknownEvent_90 (CInt(&HD), var_14C, CVar(CLng(1)))
  loc_1361FC4: var_188 = CVar(Proc_6_38_E69628(CVar(var_14C), "First Assign Amend Revenue name in parameter settings")) 'String
  loc_1361FCB: LateIdCallSt
  loc_1361FFC: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1362031: var_188 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Name")), CVar(CLng(2)), "Select Name from revmast where code='", var_20C)) 'String
  loc_1362038: LateIdCallSt
  loc_1362057: If (var_AC > CDbl(0)) Then
  loc_1362073:   var_E0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_136207B:   var_118 = CVar(CLng(3)) 'Long
  loc_13620A9:   var_198 = CVar(CStr(Format(var_AC, "0.00"))) 'String
  loc_13620B0:   LateIdCallSt
  loc_13620DF:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13620E7:   var_E0 = CVar(CLng(4)) 'Long
  loc_13620EC:   var_118 = "0.00"
  loc_13620F5:   LateIdCallSt
  loc_1362106: Else
  loc_136211F:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1362127:   var_E0 = CVar(CLng(3)) 'Long
  loc_136212C:   var_118 = "0.00"
  loc_1362135:   LateIdCallSt
  loc_136215C:   var_E0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1362164:   var_118 = CVar(CLng(4)) 'Long
  loc_1362192:   var_1A8 = CVar(CStr(Format(CVar(Abs(var_AC)), "0.00"))) 'String
  loc_1362199:   LateIdCallSt
  loc_13621B1: End If
  loc_13621CA: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13621E4: var_15C = CVar(Proc_6_38_E69628(var_A4, CVar(CLng(7)), "0.00", var_20C, var_1A8, 1, 1, var_118)) 'String
  loc_13621EB: LateIdCallSt
  loc_1362216: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_136222C: LateIdCallSt
  loc_1362253: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_136226D: var_15C = CVar(Proc_6_38_E69628(MemVar_1F950C8, CVar(CLng(9)), "0.00", var_20C, "1", CVar(CLng(8)), MemVar_1F950C8, var_20C)) 'String
  loc_1362274: LateIdCallSt
  loc_136229F: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13622B5: LateIdCallSt
  loc_13622DC: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13622EC: var_C0 = "AmendRevenue"
  loc_1362314: var_188 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_C0)), CVar(CLng(&HB)), "0.00", var_20C, "1", CVar(CLng(&HA)), var_C0)) 'String
  loc_136231B: LateIdCallSt
  loc_136234C: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1362362: LateIdCallSt
  loc_1362376: Call Proc_100_48_11550F8(Nothing, "*", CVar(CLng(&HC)), var_C0, Nothing, var_188)
  loc_136237B: Exit Sub
End Sub

Private Sub CmdPrint_UnknownEvent_9 '1AC0BB8
  'Data Table: 55975C
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim unk_559760 As Connection15
  Dim Me As Variant
  Dim var_D0 As Variant
  Dim var_D4 As String
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_F8 As Variant
  Dim var_14C As Variant
  Dim var_398 As Double
  Dim var_16C As Variant
  Dim var_180 As String
  Dim var_3A0 As Double
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim var_1D0 As String
  Dim var_3A8 As Double
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_220 As Variant
  Dim var_138 As Variant
  Dim var_224 As String
  Dim var_3B0 As Double
  Dim var_274 As Variant
  Dim var_3B8 As Double
  Dim var_29C As TextBox
  Dim var_2B8 As Variant
  Dim var_2D8 As Variant
  Dim var_2EC As MSHFlexGrid
  Dim var_318 As Variant
  Dim var_338 As Variant
  Dim var_34C As MSHFlexGrid
  Dim var_35C As Variant
  Dim var_184 As String
  Dim var_188 As String
  Dim var_18C As String
  Dim var_228 As String
  Dim var_308 As String
  Dim var_3F0 As Variant
  Dim var_400 As Variant
  Dim var_460 As Variant
  Dim var_59C As TextBox
  Dim var_5E4 As TextBox
  Dim var_634 As Variant
  Dim var_654 As Variant
  Dim var_6C8 As Variant
  Dim var_70C As Variant
  Dim var_77C As Variant
  Dim var_93C As TextBox
  Dim var_A54 As TextBox
  Dim var_38C As Variant
  Dim var_1FC As Variant
  Dim var_3E0 As Variant
  Dim var_430 As Variant
  Dim var_4B0 As Variant
  Dim var_530 As Variant
  Dim var_564 As Variant
  Dim var_698 As Variant
  Dim var_8A4 As Variant
  Dim var_9EC As Variant
  Dim var_AD4 As Variant
  Dim var_98 As Recordset15
  Dim var_E8 As Variant
  Dim var_94 As Double
  Dim var_1CC As Long
  Dim var_410 As Variant
  Dim var_BAC As Recordset15
  Dim var_BA8 As Double
  Dim var_9C As Recordset15
  loc_1ABCE48: var_A0 = "Select * from Enviro where lOGSite_code='" & MemVar_1F95078
  loc_1ABCE58: unk_559760.Execute var_A0 & "'", var_C4, -1
  loc_1ABCE63: Set var_9C = var_C8
  loc_1ABCE8A: If (Me.RecordCount > 0) Then
  loc_1ABCE93:   Me.MoveFirst
  loc_1ABCEBC:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, "Select DISTINCT Bill_No from paycharge where FolioNoDocid='")
  loc_1ABCEC4:   var_C4 = var_D0.Tag
  loc_1ABCECD:   var_A4 = -1 & var_A0
  loc_1ABCEDD:   unk_559760.Execute var_A0 & "'" & "' AND MODESET<>'S'", var_D8, Me.Txt
  loc_1ABCEE8:   Set var_8C = var_D8
  loc_1ABCF09:   If (global_98 = &HFF) Then
  loc_1ABCF17:     Set var_C8 = Me.Txt
  loc_1ABCF1D:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HD))
  loc_1ABCF35:     If Not(IsDate(CVar(var_D0))) Then
  loc_1ABCF51:       MsgBox("Guest is not completly checked out.", &H10, var_F8, var_118, var_138)
  loc_1ABCF61:       Exit Sub
  loc_1ABCF62:     End If
  loc_1ABCF68:     var_CC = var_8C.RecordCount
  loc_1ABCF76:     If (var_CC > 1) Then
  loc_1ABCF92:       MsgBox("Bill Splited into more than One Bill", &H10, var_F8, var_118, var_138)
  loc_1ABCFA2:       Exit Sub
  loc_1ABCFA3:     End If
  loc_1ABCFC8:     For var_13C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_13C 'Integer
  loc_1ABCFD2:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABCFDA:       var_108 = CVar(CLng(&HC)) 'Long
  loc_1ABD016:       If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> "*") Then
  loc_1ABD01D:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABD025:         var_108 = CVar(CLng(7)) 'Long
  loc_1ABD050:         If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1ABD057:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABD05F:           var_108 = CVar(CLng(4)) 'Long
  loc_1ABD088:           var_14C = CVar(CLng(var_86)) 'Long
  loc_1ABD090:           var_16C = CVar(CLng(3)) 'Long
  loc_1ABD0B9:           var_19C = CVar(CLng(var_86)) 'Long
  loc_1ABD0C1:           var_1BC = CVar(CLng(&HD)) 'Long
  loc_1ABD0DB:           var_1D0 = CStr(Me.FGrid.TextMatrix))
  loc_1ABD0EA:           var_1EC = CVar(CLng(var_86)) 'Long
  loc_1ABD0F2:           var_20C = CVar(CLng(&HD)) 'Long
  loc_1ABD10C:           var_224 = CStr(Me.FGrid.TextMatrix))
  loc_1ABD114:           var_3B0 = Val(var_224)
  loc_1ABD145:           var_3B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ABD156:           Set var_298 = Me.Txt
  loc_1ABD15C:           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_29C, var_2A0, var_3B8, CVar(CLng(&HA)), CVar(CLng(var_86)), var_3B0)
  loc_1ABD164:           var_20C = var_29C.Tag
  loc_1ABD16D:           var_2B8 = CVar(CLng(var_86)) 'Long
  loc_1ABD175:           var_2D8 = CVar(CLng(7)) 'Long
  loc_1ABD194:           var_318 = CVar(CLng(var_86)) 'Long
  loc_1ABD19C:           var_338 = CVar(CLng(8)) 'Long
  loc_1ABD1A5:           Set var_34C = Me.FGrid
  loc_1ABD1ED:           var_18C = "UPDATE PAYCHARGE SET AMTCR=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ", AMTDR=" & CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1ABD207:           var_228 = var_18C & ",OnAmt=" & CStr(Val(var_1D0)) & ",BillAmount="
  loc_1ABD246:           var_308 = var_228 & CStr(var_3B0) & ",Split=" & CStr(var_3B8) & ",U_AE='E' WHERE FOLIONODOCID='" & var_2A0 & "' AND DOCID='" & CStr(Me.FGrid.TextMatrix))
  loc_1ABD262:           unk_559760.Execute var_308 & "' AND sNO=" & CStr(Val(CStr(var_34C.TextMatrix)))), var_38C, -1
  loc_1ABD2CE:         End If
  loc_1ABD2D1:       Else
  loc_1ABD2DA:         unk_559760.BeginTrans var_CC
  loc_1ABD2E3:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABD2EB:         var_108 = CVar(CLng(7)) 'Long
  loc_1ABD30A:         var_14C = CVar(CLng(var_86)) 'Long
  loc_1ABD312:         var_16C = CVar(CLng(8)) 'Long
  loc_1ABD334:         var_398 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ABD34C:         Set var_D8 = Me.FGrid
  loc_1ABD352:         var_118 = var_D8.TextMatrix)
  loc_1ABD397:         Set var_220 = Me.FGrid
  loc_1ABD39D:         var_3F0 = var_220.TextMatrix)
  loc_1ABD3B8:         var_410 = Right(CVar(CStr(var_3F0)), 8)
  loc_1ABD3C9:         var_3A0 = Val(CStr(var_410))
  loc_1ABD3E1:         Set var_274 = Me.FGrid
  loc_1ABD3E7:         var_460 = var_274.TextMatrix)
  loc_1ABD417:         Set var_298 = Me.Txt
  loc_1ABD41D:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HD), var_29C, var_460, CVar(CLng(7)), CVar(CLng(var_86)), var_3A0, var_3F0)
  loc_1ABD42C:         Proc_6_7_F26918(var_4D0, CVar(var_29C), CVar(CLng(7)), CVar(CLng(var_86)), var_118)
  loc_1ABD43C:         Set var_2EC = Me.Txt
  loc_1ABD442:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HF), var_34C, CVar(CLng(7)))
  loc_1ABD461:         Set var_390 = Me.Txt
  loc_1ABD467:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HE), var_534, CVar(CLng(var_86)))
  loc_1ABD489:         Set var_598 = Me.Txt
  loc_1ABD48F:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_59C, var_1D0)
  loc_1ABD4AA:         Set var_5E0 = Me.Txt
  loc_1ABD4B0:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HB), var_5E4)
  loc_1ABD4C1:         var_634 = CVar(CLng(var_86)) 'Long
  loc_1ABD4C9:         var_654 = CVar(CLng(2)) 'Long
  loc_1ABD4E8:         var_6C8 = CVar(CLng(var_86)) 'Long
  loc_1ABD4FF:         var_70C = Me.FGrid.TextMatrix)
  loc_1ABD517:         var_77C = CVar(CLng(3)) 'Long
  loc_1ABD539:         var_3A8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ABD56A:         var_3B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ABD59B:         Set var_938 = Me.Txt
  loc_1ABD5A1:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_93C, var_224, var_3B0, CVar(CLng(4)), CVar(CLng(var_86)), var_3A8)
  loc_1ABD5A9:         var_77C = var_93C.Text
  loc_1ABD5BC:         Proc_6_7_F26918(var_9DC, Date, CVar(CLng(var_86)), var_70C)
  loc_1ABD5CF:         Set var_A50 = Me.Txt
  loc_1ABD5D5:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_A54, var_228, CVar(CLng(&HB)))
  loc_1ABD5DD:         var_6C8 = var_A54.Tag
  loc_1ABD5FD:         Set var_B28 = Me.Txt
  loc_1ABD603:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HD), var_B2C)
  loc_1ABD612:         Proc_6_7_F26918(var_B4C, CVar(var_B2C))
  loc_1ABD62B:         var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_1ABD62F:         var_A4 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code,Split,Bill_no,SettleDate) Values ('" & var_A0
  loc_1ABD636:         var_180 = var_A4 & "',"
  loc_1ABD658:         var_3E0 = CVar(var_180 & CStr(var_59C.Tag) & ",'") & Trim(Mid(CVar(CStr(var_118)), 4, 5)) & "'," 
  loc_1ABD66C:         var_430 = var_3E0 & CVar(var_3A0) & ",'" 
  loc_1ABD68F:         var_4B0 = var_430 & CVar(MemVar_1F95070) & "','" & Mid(CVar(CStr(var_460)), 9, 5) & "'," 
  loc_1ABD6AB:         var_530 = (Trim(CVar(var_34C)) + ":")
  loc_1ABD6B2:         var_564 = (var_530 + Trim(CVar(var_534)))
  loc_1ABD6F0:         var_698 = var_4B0 & var_4D0 & ",'" & var_564 & "','" & CVar(var_1D0) & "','','" & CVar(var_5E4.Tag) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1ABD73C:         var_8A4 = var_698 & "','" & CVar(CStr(var_70C)) & "',0," & CVar(var_3A8) & "," & CVar(var_3B0) & ",0,'" & Trim(CVar(Me.lblRoomCat)) 
  loc_1ABD78B:         var_9EC = var_8A4 & "'," & "'RO','" & Trim(CVar(Me.lblRoomNo)) & "'," & CVar(var_224) & ",'" & CVar(MemVar_1F950C8) & "'," & var_9DC 
  loc_1ABD7CD:         var_AD4 = var_9EC & ",'A','" & CVar(MemVar_1F95078) & "FOM','','','" & CVar(var_228) & "','" & CVar(MemVar_1F95078) & "','1','" 
  loc_1ABD7FB:         unk_559760.Execute CStr(var_AD4 & Trim(CVar(Me.TXT_GNAME)) & "'," & var_B4C & ")"), var_B9C, -1
  loc_1ABD8FF:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABD916:         var_C4 = Me.FGrid.TextMatrix)
  loc_1ABD954:         Set var_D0 = Me.Txt
  loc_1ABD95A:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HD), var_D8, var_180, var_C4, CVar(CLng(7)))
  loc_1ABD962:         var_B4 = var_D8.Text
  loc_1ABD970:         Proc_6_7_F26918(var_3E0, CVar(var_180), var_BA0)
  loc_1ABD989:         var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1ABD9A4:         var_35C = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='") & Trim(Mid(CVar(CStr(var_C4)), 4, 5)) 
  loc_1ABD9CB:         unk_559760.Execute CStr(var_35C & "' And VP.Date_From<=" & var_3E0 & " Order By VP.Date_From DESC"), var_410, -1
  loc_1ABD9D6:         Set var_98 = var_220
  loc_1ABDA20:         If (var_98.RecordCount > 0) Then
  loc_1ABDA27:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABDA2F:           var_108 = CVar(CLng(7)) 'Long
  loc_1ABDA59:           var_118 = Right(CVar(CStr(Me.FGrid.TextMatrix))), 8)
  loc_1ABDA6A:           var_398 = Val(CStr(var_118))
  loc_1ABDA82:           Set var_D0 = Me.FGrid
  loc_1ABDA88:           var_138 = var_D0.TextMatrix)
  loc_1ABDAB3:           var_38C = Trim(Mid(CVar(CStr(var_138)), 4, 5))
  loc_1ABDAC7:           var_D8 = var_98.Fields
  loc_1ABDACF:           var_220 = var_D8.Item("Date_From")
  loc_1ABDADE:           Proc_6_7_F26918(var_410, CVar(var_220), var_138, CVar(CLng(7)), CVar(CLng(var_86)), var_398)
  loc_1ABDAF8:           var_A4 = CStr(var_398)
  loc_1ABDB11:           var_188 = "Update Voucher_Prefix Set Start_Srl_No=" & var_A4 & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1ABDB43:           unk_559760.Execute CStr(CVar(var_188 & MemVar_1F95078 & "') and V_Type='") & var_38C & "' and Date_From=" & var_410), var_430, -1
  loc_1ABDB87:         End If
  loc_1ABDB8C:         Set var_98 = Nothing
  loc_1ABDB95:         unk_559760.CommitTrans
  loc_1ABDB9A:       End If
  loc_1ABDB9D:     Next var_13C 'Integer
  loc_1ABDBCE:     Set var_C8 = Me.Txt
  loc_1ABDBD4:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A4, "Delete from PayCharge where PayCode='" & MemVar_1F95078 & "ROFF' And ModeSet='S' and FolionoDocid='")
  loc_1ABDBDC:     var_C4 = var_D0.Tag
  loc_1ABDBE5:     var_180 = -1 & var_A4
  loc_1ABDBF5:     unk_559760.Execute "Update Voucher_Prefix Set Start_Srl_No=" & var_A4 & " Where (SITE_CODE='" & "'", var_D8, 
  loc_1ABDC21:     Set var_C8 = Me.Txt
  loc_1ABDC27:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0)
  loc_1ABDC37:     var_C4 = CVar(var_D0.Tag) 'String
  loc_1ABDC4A:     Proc_96_41_13D63C4(CStr(Trim(var_C4)))
  loc_1ABDC6E:     Set var_C8 = Me.Txt
  loc_1ABDC74:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0)
  loc_1ABDC84:     var_E8 = 0
  loc_1ABDCA1:     var_A4 = "Select Sum(Amtcr-amtdr) from paycharge where FolionoDocid='" & var_D0.Tag
  loc_1ABDCB1:     unk_559760.Execute var_A4 & "' and modeset='S'", var_C4, -1
  loc_1ABDCB9:     var_D8 = var_D8.Fields
  loc_1ABDCC1:     var_E8 = var_220.Item(var_220)
  loc_1ABDCD0:     Proc_6_39_E7D3A0(var_118, CVar(var_274))
  loc_1ABDCD9:     var_94 = CSng(var_118)
  loc_1ABDCF9:     var_B4 = 0
  loc_1ABDD05:     var_108 = CVar(CLng(3)) 'Long
  loc_1ABDD1F:     var_A0 = CStr(Me.Fgrid1.TextMatrix))
  loc_1ABDD27:     var_398 = Val(var_A0)
  loc_1ABDD3B:     If (var_94 <> CDbl(var_398)) Then
  loc_1ABDD4C:       Set var_C8 = Me.Txt
  loc_1ABDD52:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_398)
  loc_1ABDD5A:       var_108 = var_D0.Tag
  loc_1ABDD65:       var_B4 = "Bill_no"
  loc_1ABDD71:       var_D8 = var_8C.Fields
  loc_1ABDD94:       Proc_6_7_F26918(var_38C, Date, var_B4)
  loc_1ABDDA4:       Proc_6_7_F26918(var_430, MemVar_1F950EC)
  loc_1ABDDA9:       var_1CC = 0
  loc_1ABDDB5:       var_1FC = CVar(CLng(3)) 'Long
  loc_1ABDDBE:       Set var_274 = Me.Fgrid1
  loc_1ABDDD7:       var_398 = Val(CStr(var_274.TextMatrix)))
  loc_1ABDDEE:       var_A4 = "Insert Into FomBillChangeDetails (FolionoDocid,Bill_No,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code,BillChangeDate,BillAmt,SettleAmt) values('" & var_A0
  loc_1ABDDF5:       var_F8 = CVar(var_A4 & "','") 'String
  loc_1ABDDFB:       var_118 = var_F8 & var_D8.Item(var_B4).Value 
  loc_1ABDE04:       var_138 = var_118 & "','" 
  loc_1ABDE3A:       var_400 = var_138 & CVar(MemVar_1F950C8) & "'," & var_38C & ",'A','" & CVar(MemVar_1F95070) & "','" 
  loc_1ABDE93:       unk_559760.Execute CStr(var_400 & CVar(MemVar_1F95078) & "'," & var_430 & "," & CVar(var_398) & "," & CVar(var_94) & ")"), var_4B0, -1
  loc_1ABDEF6:       var_C4 = "Please Settle this Bill Once Again"
  loc_1ABDEFC:       MsgBox(var_C4, &H10, var_F8, var_118, var_138)
  loc_1ABDF0C:     End If
  loc_1ABDF39:     Set var_C8 = Me.Txt
  loc_1ABDF3F:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, "SELECT COUNT(*) FROM PAYCHARGE WHERE FOLIONODOCID='", var_C4, -1, var_D8)
  loc_1ABDF47:     var_220 = var_D0.Tag
  loc_1ABDF5E:     var_180 = 0 & var_A0 & "' AND PAYCODE<>'" & MemVar_1F95078
  loc_1ABDF6E:     unk_559760.Execute var_180 & "ROFF' AND Modeset='S'", var_274, var_F8
  loc_1ABDF76:     var_298 = var_D8.Fields
  loc_1ABDF7E:     var_1FC = var_220.Item(var_398)
  loc_1ABDF86:      = var_274.Value
  loc_1ABDFB7:     If (var_F8 = 1) Then
  loc_1ABDFBA:       var_B4 = 0
  loc_1ABDFC6:       var_108 = CVar(CLng(3)) 'Long
  loc_1ABDFD5:       var_C4 = Me.Fgrid1.TextMatrix)
  loc_1ABDFE0:       var_A0 = CStr(var_C4)
  loc_1ABDFE8:       var_398 = Val(var_A0)
  loc_1ABDFF9:       Set var_D0 = Me.Txt
  loc_1ABDFFF:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D8, var_180)
  loc_1ABE025:       var_D4 = "UPDATE PAYCHARGE SET AMTCR=" & CStr(var_D8.Tag)
  loc_1ABE043:       unk_559760.Execute var_D4 & " WHERE FOLIONODOCID='" & var_180 & "' AND Modeset='S' and PayType='Cash'", var_F8, -1
  loc_1ABE06B:     End If
  loc_1ABE089:     Set var_C8 = Me.Txt
  loc_1ABE08F:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, "Select Top 1 * from paycharge where FolioNoDocid='", var_C4)
  loc_1ABE097:     -1 = var_D0.Tag
  loc_1ABE0B8:     Set var_D8 = Me.Txt
  loc_1ABE0BE:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_220, var_D4, var_274 & var_A0 & "' AND (RelatedFolioNo=")
  loc_1ABE0C6:     var_220 = var_220.Text
  loc_1ABE0ED:     unk_559760.Execute var_108 & var_D4 & " Or RelatedFolioNo=0) And PayCode='" & MemVar_1F95078 & "RMCH' And AmtDr>0 Order By Vdate", var_B4, 
  loc_1ABE0F8:     Set var_BAC = var_274
  loc_1ABE132:     If (var_BAC.RecordCount > 0) Then
  loc_1ABE14C:       var_D0 = var_BAC.Fields.Item("AmtDr")
  loc_1ABE154:       var_C4 = CVar(var_D0) 'Address
  loc_1ABE15B:       Proc_6_39_E7D3A0(var_F8)
  loc_1ABE184:       var_BA8 = CSng(Format(var_F8, "0.00"))
  loc_1ABE195:     End If
  loc_1ABE19A:     Set var_BAC = Nothing
  loc_1ABE1A4:     If (var_BA8 > CDbl(0)) Then
  loc_1ABE1B2:       Proc_6_7_F26918(var_F8, CVar(Proc_6_15_EF37AC(var_BA8, 1)))
  loc_1ABE1C5:       Set var_C8 = Me.Txt
  loc_1ABE1CB:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_D4)
  loc_1ABE1D3:       1 = var_D0.Tag
  loc_1ABE1E6:       Set var_D8 = Me.Txt
  loc_1ABE1EC:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_220)
  loc_1ABE219:       var_118 = CVar("UPDATE RoomOcc SET RoomRate=" & CStr(var_BA8) & ",U_EntDt=") 'String
  loc_1ABE21F:       var_138 = var_118 & var_F8 
  loc_1ABE245:       var_3E0 = var_138 & ",U_AE='E' WHERE DOCID='" & CVar(var_D4) & "' And ChngDate In (Select ChngDate From RoomOcc WHERE DOCID='" & CVar(var_220.Tag) 
  loc_1ABE25C:       unk_559760.Execute CStr(var_3E0 & "' And Sno=1)"), var_400, -1
  loc_1ABE2A5:       Set var_C8 = Me.Txt
  loc_1ABE2AB:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(8), var_D0, CStr(var_BA8))
  loc_1ABE2B3:       var_D0.Text = var_274
  loc_1ABE2C2:     End If
  loc_1ABE2C2:   End If
  loc_1ABE2E5:   If (CStr(Me.TXT_GNAME.defText) <> vbNullString) Then
  loc_1ABE2F6:     Set var_C8 = Me.Txt
  loc_1ABE2FC:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0)
  loc_1ABE31B:     If (var_D0.Text <> vbNullString) Then
  loc_1ABE35D:       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_1ABE385:         var_C4 = Me.Fields.Item("AutoPrint").Value
  loc_1ABE39F:         If (var_C4 = "Yes") Then
  loc_1ABE3A2:           Call Proc_100_40_1266ED0(var_C4)
  loc_1ABE3AA:         Else
  loc_1ABE3D9:           If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABE3DC:             Call Proc_100_40_1266ED0()
  loc_1ABE3E4:           Else
  loc_1ABE3E4:             Exit Sub
  loc_1ABE3E5:           End If
  loc_1ABE3E5:         End If
  loc_1ABE3E8:       Else
  loc_1ABE427:         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER NEW") Then
  loc_1ABE469:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1ABE483:             var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABE4A5:             If (Proc_6_38_E69628(CVar(var_D0)) = "Yes") Then
  loc_1ABE4B6:               Set var_C8 = Me.Txt
  loc_1ABE4BC:               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0)
  loc_1ABE4C4:               var_A0 = var_D0.Tag
  loc_1ABE4E5:               Set var_D8 = Me.Txt
  loc_1ABE4EB:               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220)
  loc_1ABE4F3:               var_D4 = var_220.Text
  loc_1ABE503:               Set var_2EC = Me.QrImage
  loc_1ABE50C:               Set var_29C = Me.GuestImage
  loc_1ABE515:               var_184 = "R"
  loc_1ABE565:               Proc_96_64_1DB2C10(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABE58F:             Else
  loc_1ABE59D:               Set var_C8 = Me.Txt
  loc_1ABE5A3:               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABE5AB:               global_88 = var_D0.Tag
  loc_1ABE5CC:               Set var_D8 = Me.Txt
  loc_1ABE5D2:               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABE5DA:               var_184 = var_220.Text
  loc_1ABE5EA:               Set var_2EC = Me.QrImage
  loc_1ABE5F3:               Set var_29C = Me.GuestImage
  loc_1ABE5FC:               var_184 = "R"
  loc_1ABE64C:               Proc_96_59_1F06E50(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABE673:             End If
  loc_1ABE673:             Exit Sub
  loc_1ABE677:           Else
  loc_1ABE6A6:             If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABE6C0:               var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABE6D1:               var_A0 = Proc_6_38_E69628(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABE6E2:               If (var_A0 = "Yes") Then
  loc_1ABE6F3:                 Set var_C8 = Me.Txt
  loc_1ABE6F9:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABE701:                 var_2EC = var_D0.Tag
  loc_1ABE722:                 Set var_D8 = Me.Txt
  loc_1ABE728:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABE730:                 var_29C = var_220.Text
  loc_1ABE740:                 Set var_2EC = Me.QrImage
  loc_1ABE749:                 Set var_29C = Me.GuestImage
  loc_1ABE752:                 var_184 = "R"
  loc_1ABE7A2:                 Proc_96_64_1DB2C10(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABE7CC:               Else
  loc_1ABE7DA:                 Set var_C8 = Me.Txt
  loc_1ABE7E0:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABE7E8:                 global_84 = var_D0.Tag
  loc_1ABE809:                 Set var_D8 = Me.Txt
  loc_1ABE80F:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABE817:                 var_29C = var_220.Text
  loc_1ABE827:                 Set var_2EC = Me.QrImage
  loc_1ABE830:                 Set var_29C = Me.GuestImage
  loc_1ABE839:                 var_184 = "R"
  loc_1ABE889:                 Proc_96_59_1F06E50(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABE8B0:               End If
  loc_1ABE8B0:               Exit Sub
  loc_1ABE8B4:             Else
  loc_1ABE8B4:               Exit Sub
  loc_1ABE8B5:             End If
  loc_1ABE8B5:           End If
  loc_1ABE8B8:         Else
  loc_1ABE8F7:           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN") Then
  loc_1ABE939:             If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1ABE953:               var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABE964:               var_A0 = Proc_6_38_E69628(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABE975:               If (var_A0 = "Yes") Then
  loc_1ABE986:                 Set var_C8 = Me.Txt
  loc_1ABE98C:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABE994:                 var_2EC = var_D0.Tag
  loc_1ABE9B5:                 Set var_D8 = Me.Txt
  loc_1ABE9BB:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABE9C3:                 var_2EC = var_220.Text
  loc_1ABE9D1:                 Set var_2EC = Nothing 
  loc_1ABE9DB:                 Set var_29C = Me.GuestImage
  loc_1ABE9E4:                 var_184 = "R"
  loc_1ABEA34:                 Proc_96_64_1DB2C10(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABEA5E:               Else
  loc_1ABEA6C:                 Set var_C8 = Me.Txt
  loc_1ABEA72:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABEA7A:                 global_84 = var_D0.Tag
  loc_1ABEA9B:                 Set var_D8 = Me.Txt
  loc_1ABEAA1:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABEAA9:                 var_29C = var_220.Text
  loc_1ABEAB8:                 var_188 = "PayCharge"
  loc_1ABEAC1:                 Set var_29C = Me.GuestImage
  loc_1ABEACA:                 var_184 = "R"
  loc_1ABEB1A:                 Proc_96_62_1F663FC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABEB41:               End If
  loc_1ABEB41:               Exit Sub
  loc_1ABEB45:             Else
  loc_1ABEB74:               If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABEB8E:                 var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABEB9F:                 var_A0 = Proc_6_38_E69628(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABEBB0:                 If (var_A0 = "Yes") Then
  loc_1ABEBC1:                   Set var_C8 = Me.Txt
  loc_1ABEBC7:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABEBCF:                   var_188 = var_D0.Tag
  loc_1ABEBF0:                   Set var_D8 = Me.Txt
  loc_1ABEBF6:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABEBFE:                   var_2EC = var_220.Text
  loc_1ABEC0C:                   Set var_2EC = Nothing 
  loc_1ABEC16:                   Set var_29C = Me.GuestImage
  loc_1ABEC1F:                   var_184 = "R"
  loc_1ABEC6F:                   Proc_96_64_1DB2C10(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABEC99:                 Else
  loc_1ABECA7:                   Set var_C8 = Me.Txt
  loc_1ABECAD:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABECB5:                   global_84 = var_D0.Tag
  loc_1ABECD6:                   Set var_D8 = Me.Txt
  loc_1ABECDC:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABECE4:                   var_29C = var_220.Text
  loc_1ABECF3:                   var_188 = "PayCharge"
  loc_1ABECFC:                   Set var_29C = Me.GuestImage
  loc_1ABED05:                   var_184 = "R"
  loc_1ABED55:                   Proc_96_62_1F663FC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABED7C:                 End If
  loc_1ABED7C:                 Exit Sub
  loc_1ABED80:               Else
  loc_1ABED80:                 Exit Sub
  loc_1ABED81:               End If
  loc_1ABED81:             End If
  loc_1ABED84:           Else
  loc_1ABEDC3:             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN1") Then
  loc_1ABEE05:               If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1ABEE1F:                 var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABEE30:                 var_A0 = Proc_6_38_E69628(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABEE41:                 If (var_A0 = "Yes") Then
  loc_1ABEE52:                   Set var_C8 = Me.Txt
  loc_1ABEE58:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABEE60:                   var_188 = var_D0.Tag
  loc_1ABEE81:                   Set var_D8 = Me.Txt
  loc_1ABEE87:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABEE8F:                   var_2EC = var_220.Text
  loc_1ABEE9D:                   Set var_2EC = Nothing 
  loc_1ABEEA7:                   Set var_29C = Me.GuestImage
  loc_1ABEEB0:                   var_184 = "R"
  loc_1ABEF00:                   Proc_96_64_1DB2C10(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABEF2A:                 Else
  loc_1ABEF38:                   Set var_C8 = Me.Txt
  loc_1ABEF3E:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABEF46:                   global_84 = var_D0.Tag
  loc_1ABEF67:                   Set var_D8 = Me.Txt
  loc_1ABEF6D:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABEF75:                   var_29C = var_220.Text
  loc_1ABEF84:                   var_188 = "PayCharge"
  loc_1ABEF8D:                   Set var_29C = Me.GuestImage
  loc_1ABEF96:                   var_184 = "R"
  loc_1ABEFE6:                   Proc_96_63_1F580EC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABF00D:                 End If
  loc_1ABF00D:                 Exit Sub
  loc_1ABF011:               Else
  loc_1ABF040:                 If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABF05A:                   var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABF06B:                   var_A0 = Proc_6_38_E69628(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABF07C:                   If (var_A0 = "Yes") Then
  loc_1ABF08D:                     Set var_C8 = Me.Txt
  loc_1ABF093:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABF09B:                     var_188 = var_D0.Tag
  loc_1ABF0BC:                     Set var_D8 = Me.Txt
  loc_1ABF0C2:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABF0CA:                     var_2EC = var_220.Text
  loc_1ABF0D8:                     Set var_2EC = Nothing 
  loc_1ABF0E2:                     Set var_29C = Me.GuestImage
  loc_1ABF0EB:                     var_184 = "R"
  loc_1ABF13B:                     Proc_96_64_1DB2C10(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABF165:                   Else
  loc_1ABF173:                     Set var_C8 = Me.Txt
  loc_1ABF179:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABF181:                     global_84 = var_D0.Tag
  loc_1ABF1A2:                     Set var_D8 = Me.Txt
  loc_1ABF1A8:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABF1B0:                     var_29C = var_220.Text
  loc_1ABF1BF:                     var_188 = "PayCharge"
  loc_1ABF1C8:                     Set var_29C = Me.GuestImage
  loc_1ABF1D1:                     var_184 = "R"
  loc_1ABF221:                     Proc_96_63_1F580EC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABF248:                   End If
  loc_1ABF248:                   Exit Sub
  loc_1ABF24C:                 Else
  loc_1ABF24C:                   Exit Sub
  loc_1ABF24D:                 End If
  loc_1ABF24D:               End If
  loc_1ABF250:             Else
  loc_1ABF28F:               If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_1ABF2AF:                 var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABF2D1:                 If (var_D0.Value = "Yes") Then
  loc_1ABF2E2:                   Set var_C8 = Me.Txt
  loc_1ABF2E8:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88, global_84)
  loc_1ABF2F0:                   var_184 = var_D0.Tag
  loc_1ABF2F9:                   Set var_29C = Me.FGrid
  loc_1ABF311:                   Set var_D8 = Me.Txt
  loc_1ABF317:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_29C)
  loc_1ABF31F:                   var_188 = var_220.Text
  loc_1ABF327:                   var_184 = "R"
  loc_1ABF377:                   Proc_96_49_1C4870C(var_A0, var_29C, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABF398:                   Exit Sub
  loc_1ABF39C:                 Else
  loc_1ABF3CB:                   If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABF3DC:                     Set var_C8 = Me.Txt
  loc_1ABF3E2:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABF3EA:                     global_88 = var_D0.Tag
  loc_1ABF40B:                     Set var_D8 = Me.Txt
  loc_1ABF411:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABF419:                     var_184 = var_220.Text
  loc_1ABF421:                     var_184 = "R"
  loc_1ABF471:                     Proc_96_49_1C4870C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABF492:                     Exit Sub
  loc_1ABF496:                   Else
  loc_1ABF496:                     Exit Sub
  loc_1ABF497:                   End If
  loc_1ABF497:                 End If
  loc_1ABF4B4:                 var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABF4D6:                 If (var_D0.Value = "Yes") Then
  loc_1ABF4E7:                   Set var_C8 = Me.Txt
  loc_1ABF4ED:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABF4F5:                   global_88 = var_D0.Tag
  loc_1ABF516:                   Set var_D8 = Me.Txt
  loc_1ABF51C:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABF524:                   var_184 = var_220.Text
  loc_1ABF52C:                   var_184 = "R"
  loc_1ABF57C:                   Proc_96_69_1BA8E60(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABF59D:                   Exit Sub
  loc_1ABF5A1:                 Else
  loc_1ABF5D0:                   If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABF5E1:                     Set var_C8 = Me.Txt
  loc_1ABF5E7:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABF5EF:                     global_88 = var_D0.Tag
  loc_1ABF610:                     Set var_D8 = Me.Txt
  loc_1ABF616:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABF61E:                     var_184 = var_220.Text
  loc_1ABF626:                     var_184 = "R"
  loc_1ABF676:                     Proc_96_69_1BA8E60(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABF697:                     Exit Sub
  loc_1ABF69B:                   Else
  loc_1ABF69B:                     Exit Sub
  loc_1ABF69C:                   End If
  loc_1ABF69C:                 End If
  loc_1ABF69F:               Else
  loc_1ABF6DE:                 If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN") Then
  loc_1ABF6FE:                   var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABF720:                   If (var_D0.Value = "Yes") Then
  loc_1ABF731:                     Set var_C8 = Me.Txt
  loc_1ABF737:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABF73F:                     global_88 = var_D0.Tag
  loc_1ABF760:                     Set var_D8 = Me.Txt
  loc_1ABF766:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABF76E:                     var_184 = var_220.Text
  loc_1ABF776:                     var_184 = "R"
  loc_1ABF7C6:                     Proc_96_65_1DAA528(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABF7E7:                     Exit Sub
  loc_1ABF7EB:                   Else
  loc_1ABF81A:                     If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABF82B:                       Set var_C8 = Me.Txt
  loc_1ABF831:                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABF839:                       global_88 = var_D0.Tag
  loc_1ABF85A:                       Set var_D8 = Me.Txt
  loc_1ABF860:                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABF868:                       var_184 = var_220.Text
  loc_1ABF870:                       var_184 = "R"
  loc_1ABF8C0:                       Proc_96_65_1DAA528(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABF8E1:                       Exit Sub
  loc_1ABF8E5:                     Else
  loc_1ABF8E5:                       Exit Sub
  loc_1ABF8E6:                     End If
  loc_1ABF8E6:                   End If
  loc_1ABF8E9:                 Else
  loc_1ABF928:                   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN FORMAT1") Then
  loc_1ABF948:                     var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABF96A:                     If (var_D0.Value = "Yes") Then
  loc_1ABF97B:                       Set var_C8 = Me.Txt
  loc_1ABF981:                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABF989:                       global_88 = var_D0.Tag
  loc_1ABF9AA:                       Set var_D8 = Me.Txt
  loc_1ABF9B0:                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABF9B8:                       var_184 = var_220.Text
  loc_1ABF9C0:                       var_184 = "R"
  loc_1ABFA10:                       Proc_96_66_1D5967C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABFA31:                       Exit Sub
  loc_1ABFA35:                     Else
  loc_1ABFA64:                       If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABFA75:                         Set var_C8 = Me.Txt
  loc_1ABFA7B:                         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABFA83:                         global_88 = var_D0.Tag
  loc_1ABFAA4:                         Set var_D8 = Me.Txt
  loc_1ABFAAA:                         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABFAB2:                         var_184 = var_220.Text
  loc_1ABFABA:                         var_184 = "R"
  loc_1ABFB0A:                         Proc_96_66_1D5967C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABFB2B:                         Exit Sub
  loc_1ABFB2F:                       Else
  loc_1ABFB2F:                         Exit Sub
  loc_1ABFB30:                       End If
  loc_1ABFB30:                     End If
  loc_1ABFB33:                   Else
  loc_1ABFB72:                     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT1") Then
  loc_1ABFB92:                       var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABFBB4:                       If (var_D0.Value = "Yes") Then
  loc_1ABFBC5:                         Set var_C8 = Me.Txt
  loc_1ABFBCB:                         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABFBD3:                         global_88 = var_D0.Tag
  loc_1ABFBF4:                         Set var_D8 = Me.Txt
  loc_1ABFBFA:                         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABFC02:                         var_184 = var_220.Text
  loc_1ABFC0C:                         var_188 = 0
  loc_1ABFC15:                         var_184 = "R"
  loc_1ABFC65:                         Proc_96_53_1D3A710(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABFC88:                         Exit Sub
  loc_1ABFC8C:                       Else
  loc_1ABFCBB:                         If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABFCCC:                           Set var_C8 = Me.Txt
  loc_1ABFCD2:                           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABFCDA:                           global_84 = var_D0.Tag
  loc_1ABFCFB:                           Set var_D8 = Me.Txt
  loc_1ABFD01:                           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABFD09:                           var_188 = var_220.Text
  loc_1ABFD13:                           var_188 = 0
  loc_1ABFD1C:                           var_184 = "R"
  loc_1ABFD6C:                           Proc_96_53_1D3A710(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABFD8F:                           Exit Sub
  loc_1ABFD93:                         Else
  loc_1ABFD93:                           Exit Sub
  loc_1ABFD94:                         End If
  loc_1ABFD94:                       End If
  loc_1ABFD97:                     Else
  loc_1ABFDD6:                       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT2") Then
  loc_1ABFDF6:                         var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABFE18:                         If (var_D0.Value = "Yes") Then
  loc_1ABFE29:                           Set var_C8 = Me.Txt
  loc_1ABFE2F:                           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABFE37:                           global_84 = var_D0.Tag
  loc_1ABFE58:                           Set var_D8 = Me.Txt
  loc_1ABFE5E:                           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABFE66:                           var_188 = var_220.Text
  loc_1ABFE6E:                           var_184 = "R"
  loc_1ABFEBE:                           Proc_96_67_1D49CF8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABFEDF:                           Exit Sub
  loc_1ABFEE3:                         Else
  loc_1ABFF12:                           If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABFF23:                             Set var_C8 = Me.Txt
  loc_1ABFF29:                             Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABFF31:                             global_88 = var_D0.Tag
  loc_1ABFF52:                             Set var_D8 = Me.Txt
  loc_1ABFF58:                             Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABFF60:                             var_184 = var_220.Text
  loc_1ABFF68:                             var_184 = "R"
  loc_1ABFFB8:                             Proc_96_67_1D49CF8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABFFD9:                             Exit Sub
  loc_1ABFFDD:                           Else
  loc_1ABFFDD:                             Exit Sub
  loc_1ABFFDE:                           End If
  loc_1ABFFDE:                         End If
  loc_1ABFFE1:                       Else
  loc_1AC0020:                         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT3") Then
  loc_1AC0040:                           var_D0 = Me.Fields.Item("AutoPrint")
  loc_1AC0062:                           If (var_D0.Value = "Yes") Then
  loc_1AC0073:                             Set var_C8 = Me.Txt
  loc_1AC0079:                             Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1AC0081:                             global_88 = var_D0.Tag
  loc_1AC00A2:                             Set var_D8 = Me.Txt
  loc_1AC00A8:                             Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1AC00B0:                             var_184 = var_220.Text
  loc_1AC00B8:                             var_184 = "R"
  loc_1AC0108:                             Proc_96_68_1E0AFE8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1AC0129:                             Exit Sub
  loc_1AC012D:                           Else
  loc_1AC015C:                             If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1AC016D:                               Set var_C8 = Me.Txt
  loc_1AC0173:                               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1AC017B:                               global_88 = var_D0.Tag
  loc_1AC019C:                               Set var_D8 = Me.Txt
  loc_1AC01A2:                               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1AC01AA:                               var_184 = var_220.Text
  loc_1AC01B2:                               var_184 = "R"
  loc_1AC0202:                               Proc_96_68_1E0AFE8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1AC0223:                               Exit Sub
  loc_1AC0227:                             Else
  loc_1AC0227:                               Exit Sub
  loc_1AC0228:                             End If
  loc_1AC0228:                           End If
  loc_1AC022B:                         Else
  loc_1AC026A:                           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT4") Then
  loc_1AC028A:                             var_D0 = Me.Fields.Item("AutoPrint")
  loc_1AC02AC:                             If (var_D0.Value = "Yes") Then
  loc_1AC02BD:                               Set var_C8 = Me.Txt
  loc_1AC02C3:                               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1AC02CB:                               global_88 = var_D0.Tag
  loc_1AC02EC:                               Set var_D8 = Me.Txt
  loc_1AC02F2:                               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1AC02FA:                               var_184 = var_220.Text
  loc_1AC0302:                               var_184 = "R"
  loc_1AC0352:                               Proc_96_54_1D81304(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1AC0373:                               Exit Sub
  loc_1AC0377:                             Else
  loc_1AC03A6:                               If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1AC03B7:                                 Set var_C8 = Me.Txt
  loc_1AC03BD:                                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1AC03C5:                                 global_88 = var_D0.Tag
  loc_1AC03E6:                                 Set var_D8 = Me.Txt
  loc_1AC03EC:                                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1AC03F4:                                 var_184 = var_220.Text
  loc_1AC03FC:                                 var_184 = "R"
  loc_1AC044C:                                 Proc_96_54_1D81304(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1AC046D:                                 Exit Sub
  loc_1AC0471:                               Else
  loc_1AC0471:                                 Exit Sub
  loc_1AC0472:                               End If
  loc_1AC0472:                             End If
  loc_1AC0475:                           Else
  loc_1AC04B4:                             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT5") Then
  loc_1AC04D4:                               var_D0 = Me.Fields.Item("AutoPrint")
  loc_1AC04F6:                               If (var_D0.Value = "Yes") Then
  loc_1AC0507:                                 Set var_C8 = Me.Txt
  loc_1AC050D:                                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1AC0515:                                 global_88 = var_D0.Tag
  loc_1AC0536:                                 Set var_D8 = Me.Txt
  loc_1AC053C:                                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1AC0544:                                 var_184 = var_220.Text
  loc_1AC054E:                                 var_188 = 0
  loc_1AC0557:                                 var_184 = "R"
  loc_1AC05A7:                                 Proc_96_50_1CF70AC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1AC05CA:                                 Exit Sub
  loc_1AC05CE:                               Else
  loc_1AC05FD:                                 If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1AC060E:                                   Set var_C8 = Me.Txt
  loc_1AC0614:                                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1AC061C:                                   global_84 = var_D0.Tag
  loc_1AC063D:                                   Set var_D8 = Me.Txt
  loc_1AC0643:                                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1AC064B:                                   var_188 = var_220.Text
  loc_1AC0655:                                   var_188 = 0
  loc_1AC065E:                                   var_184 = "R"
  loc_1AC06AE:                                   Proc_96_50_1CF70AC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1AC06D1:                                   Exit Sub
  loc_1AC06D5:                                 Else
  loc_1AC06D5:                                   Exit Sub
  loc_1AC06D6:                                 End If
  loc_1AC06D6:                               End If
  loc_1AC06D9:                             Else
  loc_1AC0718:                               If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT6") Then
  loc_1AC0738:                                 var_D0 = Me.Fields.Item("AutoPrint")
  loc_1AC075A:                                 If (var_D0.Value = "Yes") Then
  loc_1AC076B:                                   Set var_C8 = Me.Txt
  loc_1AC0771:                                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1AC0779:                                   global_84 = var_D0.Tag
  loc_1AC079A:                                   Set var_D8 = Me.Txt
  loc_1AC07A0:                                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1AC07A8:                                   var_188 = var_220.Text
  loc_1AC07B2:                                   var_188 = 0
  loc_1AC07BB:                                   var_184 = "R"
  loc_1AC080B:                                   Proc_96_51_1EAEEF0(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1AC082E:                                   Exit Sub
  loc_1AC0832:                                 Else
  loc_1AC0861:                                   If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1AC0872:                                     Set var_C8 = Me.Txt
  loc_1AC0878:                                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1AC0880:                                     global_84 = var_D0.Tag
  loc_1AC08A1:                                     Set var_D8 = Me.Txt
  loc_1AC08A7:                                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1AC08AF:                                     var_188 = var_220.Text
  loc_1AC08B9:                                     var_188 = 0
  loc_1AC08C2:                                     var_184 = "R"
  loc_1AC0912:                                     Proc_96_51_1EAEEF0(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1AC0935:                                     Exit Sub
  loc_1AC0939:                                   Else
  loc_1AC0939:                                     Exit Sub
  loc_1AC093A:                                   End If
  loc_1AC093A:                                 End If
  loc_1AC093D:                               Else
  loc_1AC097C:                                 If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT7") Then
  loc_1AC099C:                                   var_D0 = Me.Fields.Item("AutoPrint")
  loc_1AC09BE:                                   If (var_D0.Value = "Yes") Then
  loc_1AC09CF:                                     Set var_C8 = Me.Txt
  loc_1AC09D5:                                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1AC09DD:                                     global_84 = var_D0.Tag
  loc_1AC09FE:                                     Set var_D8 = Me.Txt
  loc_1AC0A04:                                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1AC0A0C:                                     var_188 = var_220.Text
  loc_1AC0A16:                                     var_188 = 0
  loc_1AC0A1F:                                     var_184 = "R"
  loc_1AC0A6F:                                     Proc_96_52_1EA3D74(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1AC0A92:                                     Exit Sub
  loc_1AC0A96:                                   Else
  loc_1AC0AC5:                                     If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1AC0AD6:                                       Set var_C8 = Me.Txt
  loc_1AC0ADC:                                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1AC0AE4:                                       global_84 = var_D0.Tag
  loc_1AC0B05:                                       Set var_D8 = Me.Txt
  loc_1AC0B0B:                                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1AC0B13:                                       var_188 = var_220.Text
  loc_1AC0B1D:                                       var_188 = 0
  loc_1AC0B26:                                       var_184 = "R"
  loc_1AC0B76:                                       Proc_96_52_1EA3D74(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1AC0B99:                                       Exit Sub
  loc_1AC0B9D:                                     Else
  loc_1AC0B9D:                                       Exit Sub
  loc_1AC0B9E:                                     End If
  loc_1AC0B9E:                                   End If
  loc_1AC0B9E:                                 End If
  loc_1AC0B9E:                               End If
  loc_1AC0B9E:                             End If
  loc_1AC0B9E:                           End If
  loc_1AC0B9E:                         End If
  loc_1AC0B9E:                       End If
  loc_1AC0B9E:                     End If
  loc_1AC0B9E:                   End If
  loc_1AC0B9E:                 End If
  loc_1AC0B9E:               End If
  loc_1AC0B9E:             End If
  loc_1AC0B9E:           End If
  loc_1AC0B9E:         End If
  loc_1AC0B9E:       End If
  loc_1AC0B9E:     End If
  loc_1AC0B9E:   End If
  loc_1AC0B9E: End If
  loc_1AC0BA3: global_88 = 0
  loc_1AC0BAB: Set var_8C = Nothing
  loc_1AC0BB3: Set var_9C = Nothing
  loc_1AC0BB6: Exit Sub
End Sub

Private Sub Form_Load() '11B6148
  'Data Table: 55975C
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_D0 As Variant
  Dim var_1A0 As Variant
  Dim var_1A4 As String
  Dim var_1AC As String
  Dim unk_559760 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim Me As Variant
  loc_11B5D38: On Error Goto loc_11B6140
  loc_11B5D42: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11B5D5A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_11B5D71: Me.LblUser.Left = CDbl(13500)
  loc_11B5D88: Me.LblUser.Top = CDbl(7800)
  loc_11B5D9F: Me.LblLDt.Top = CDbl(8160)
  loc_11B5DB6: Me.LblLDt.Left = CDbl(13500)
  loc_11B5DC6: If (MemVar_1F95190 = "Yes") Then
  loc_11B5DD5:   Me.QrImage.Visible = True
  loc_11B5DE9:   Me.FreInvInfo.Visible = True
  loc_11B5DFD:   Me.CmdeInvoiceJson.Visible = True
  loc_11B5E11:   Me.CmdGeneInvoice.Visible = True
  loc_11B5E19: End If
  loc_11B5E26: global_124 = CStr(&HFFC0C0)
  loc_11B5E30: var_98 = MemVar_1F950F4
  loc_11B5E38: Proc_6_7_F26918(var_C0)
  loc_11B5E48: Proc_6_7_F26918(var_110, MemVar_1F950FC)
  loc_11B5E57: var_1AC = "CODE"
  loc_11B5E69: Set var_AC = Me.TXT_GNAME
  loc_11B5E76: var_B0 = "SELECT Distinct FolioNoDocid as Code,CAST(Bill_No AS integer) as Name,SettleDate FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_11B5E7D: var_D0 = CVar(var_B0 & "' or LOGSITE_CODE='HO') and (SETTLEDATE IS NULL OR (SettleDate between ") 'String
  loc_11B5EB8: var_1A0 = var_D0 & var_C0 & " and " & var_110 & ")) And (RestCode='" & CVar(MemVar_1F95070) & "FOM' OR BILL_NO IS NOT NULL)" & " and ( Bill_no<>'' And bill_no is not NULL) ORDER BY SettleDate,CAST(Bill_No AS INT)" 
  loc_11B5EC1: Proc_6_92_EF7BF4(CStr(var_1A0), var_AC, "NAME")
  loc_11B5F0A: var_1A4 = "SELECT ChangeGuestCharges,DeleteGuestCharges FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='"
  loc_11B5F18: var_1AC = var_1A4 & MemVar_1F95128 & "' And UserName='"
  loc_11B5F2F: unk_559760.Execute var_1AC & MemVar_1F950C8 & "'", var_C0, -1
  loc_11B5F3A: Set var_88 = var_AC
  loc_11B5F66: If (var_88.RecordCount > 0) Then
  loc_11B5F78:   var_AC = var_88.Fields
  loc_11B5F8F:   Proc_6_39_E7D3A0(var_D0, CVar(var_AC.Item("ChangeGuestCharges")), var_AC)
  loc_11B5F9E:   global_72 = CStr(var_D0)
  loc_11B5FBE:   var_AC = var_88.Fields
  loc_11B5FCE:   var_C0 = CVar(var_AC.Item("DeleteGuestCharges")) 'Address
  loc_11B5FDD:   global_76 = Proc_6_38_E69628(var_C0, var_1AC)
  loc_11B5FEA: End If
  loc_11B5FEF: Set var_88 = Nothing
  loc_11B6016: unk_559760.Execute "Select * from Enviro where logsite_code='" & MemVar_1F95078 & "'", var_C0, -1
  loc_11B6027: Set global_120 = var_AC
  loc_11B604E: var_AC = Me.Fields
  loc_11B606D: global_92 = Proc_6_38_E69628(CVar(var_AC.Item("FOMBillReprintAutoRefresh")), var_AC)
  loc_11B60B6: If (Proc_6_38_E69628(CVar(Me.Fields.Item("BillAmendMode"))) = "Advanced") Then
  loc_11B60C1:   Set var_AC = Me.cmdAdujst
  loc_11B60C7:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11B60CF: End If
  loc_11B611C: If (Ucase(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("GuestChargesDeleteLog"))))) = "YES") Then
  loc_11B6124:   global_80 = &HFF
  loc_11B6127: End If
  loc_11B6131: Set var_AC = Me.TopCtrl1
  loc_11B6137: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005("Edit")
  loc_11B613F: Exit Sub
  loc_11B6140: ' Referenced from: 11B5D38
  loc_11B6140: Proc_6_60_E63754(global_80)
  loc_11B6145: Exit Sub
End Sub

Private Sub Form_Resize() 'E7113C
  'Data Table: 55975C
  loc_E710E6: Call 0.Method_arg_50 (var_88)
  loc_E710F8: Me.LblFormCaption.Caption = var_88
  loc_E71111: Me.LblFormCaption.Left = CDbl(0)
  loc_E7111F: Call 0.Method_arg_100 (var_90)
  loc_E71131: Me.LblFormCaption.Width = var_90
  loc_E71139: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E41024
  'Data Table: 55975C
  loc_E40FF9: MasterFormExit = 0
  loc_E41007: Set global_84 = Nothing
  loc_E41019: Set global_120 = Nothing
  loc_E41020: Exit Sub
End Sub

Private Sub Form_Activate() 'EA86A8
  'Data Table: 55975C
  Dim unk_5598DF As Connection15
  loc_EA8628: On Error Goto loc_EA86A1
  loc_EA862B: Call Proc_100_38_13C2664()
  loc_EA8654: unk_5598DF.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95078 & "FOM'", var_AC, -1
  loc_EA8665: Set global_84 = var_B0
  loc_EA8684: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000(Me.TopCtrl1)
  loc_EA8699: If (CLng(CInt()) = &H2D) Then
  loc_EA869C:   Call TopCtrl1_UnknownEvent_15()
  loc_EA86A1:   ' Referenced from: EA8628
  loc_EA86A1: End If
  loc_EA86A1: Proc_6_60_E63754()
  loc_EA86A6: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25E6C
  'Data Table: 55975C
  loc_E25E51: If (MasterFormExit = &HFF) Then
  loc_E25E61:   Me.Global.Unload Me
  loc_E25E69: End If
  loc_E25E69: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'FA6B20
  'Data Table: 55975C
  Dim var_E8 As Frame
  Dim var_EC As TextBox
  loc_FA69AC: On Error Goto loc_FA6B1A
  loc_FA69EC: Set var_E8 = Me.Txt
  loc_FA69F2: Call 0.Method_Form_KeyDown0 (CInt(0), var_EC)
  loc_FA6A29: If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "A") And (Ucase(CVar(var_EC)) = "CASH")) Then
  loc_FA6A38:   Me.FrmAdjust.Visible = True
  loc_FA6A49:   Set var_E8 = Me.Txt
  loc_FA6A4F:   Call 0.Method_Form_KeyDown0 (&H17)
  loc_FA6A57:   var_EC.SetFocus
  loc_FA6A63: End If
  loc_FA6AC3: If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "A") And (Ucase(MemVar_1F950C8) = "SA")) Then
  loc_FA6AD2:   Me.FrmAdjust.Visible = True
  loc_FA6AE3:   Set var_E8 = Me.Txt
  loc_FA6AE9:   Call 0.Method_Form_KeyDown0 (&H17, var_EC)
  loc_FA6AF1:   var_EC.SetFocus
  loc_FA6AFD: End If
  loc_FA6B11: Proc_6_88_FE8F6C(Me, KeyCode, Shift)
  loc_FA6B19: Exit Sub
  loc_FA6B1A: ' Referenced from: FA69AC
  loc_FA6B1A: Proc_6_60_E63754(0)
  loc_FA6B1F: Exit Sub
End Sub

Public Function MasterFormExitGet() '55B894
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '55B8A3
  MasterFormExit = Value
End Sub

Public Sub Proc_100_37_1007274(arg_C) '1007274
  'Data Table: 55975C
  Dim var_9C As Variant
  Dim var_D0 As String
  Dim unk_559760 As Connection15
  Dim var_F4 As Variant
  Dim var_F8 As Fields15
  Dim var_11E As Integer
  Dim var_AC As Variant
  Dim var_E0 As Byte
  Dim var_F0 As Variant
  loc_10070AD: Proc_6_17_EAAE40(var_AC, MemVar_1F95078, "Select RcptPrinting From Enviro WHERE LOGSITE_CODE=", var_F0, -1)
  loc_10070B9: var_D0 = CStr(var_F4 & var_AC)
  loc_10070C3: unk_559760.Execute var_D0, var_F8, 0
  loc_10070D3:  = var_F8.Item()
  loc_1007103: Call 0.Method_arg_A4 (CInt(&HB))
  loc_100710B: var_11E = arg_C
  loc_1007114: If (var_11E = 0) Then
  loc_1007123:   var_F4 = Me.Global.Screen
  loc_1007154:   If (Screen.ActiveForm.FGrid.rows > 1) Then
  loc_100715B:     Set var_F4 = (var_11E)
  loc_1007161:     var_AC = var_AC.FRectGrid.Row
  loc_1007182:     var_F8 = Me.var_AC.Screen
  loc_100718A:     var_10C = Screen.ActiveForm
  loc_1007197:     VarLateMemCallLdRfVar
  loc_10071C6:     If CBool(Trim(var_10C.FGrid) <> vbNullString) Then
  loc_10071CD:       Set var_F4 = CVar(CLng(var_AC))(7)
  loc_10071D3:       var_AC = var_10C.FRectGrid.Row
  loc_10071DC:       var_9C = CVar(CLng(var_AC)) 'Long
  loc_10071E1:       var_E0 = 7
  loc_10071F4:       var_F8 = Me.var_AC.Screen
  loc_1007209:       var_F0 = Screen.ActiveForm.FGrid.TextMatrix
  loc_1007219:       Call 0.Method_arg_50 (var_D0, var_F0)
  loc_1007230:       Proc_146_1_1334D58(CStr(var_F0), Proc_6_38_E69628(CVar(var_F4.Fields)), var_D0)
  loc_100724E:     End If
  loc_100724E:   End If
  loc_100724E: End If
  loc_100725D: Me.FRectGrid.Visible = False
  loc_100726C: Call 0.Method_arg_A4 (CInt(0), var_E0)
  loc_1007271: Exit Sub
End Sub

Public Sub Proc_100_38_13C2664
  'Data Table: 55975C
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_13C1CD0: Set var_90 = Me.FGrid
  loc_13C1CE6: Me.FGrid.Rows = 1
  loc_13C1D02: global_56 = CStr(CLng(var_90.BackColor))
  loc_13C1D18: var_90.Cols = &HF
  loc_13C1D1D: var_A0 = 0
  loc_13C1D29: var_D8 = CVar(CLng(0)) 'Long
  loc_13C1D2E: var_F8 = "SNo"
  loc_13C1D37: LateIdCallSt
  loc_13C1D42: var_A0 = CVar(CLng(0)) 'Long
  loc_13C1D47: var_D8 = 0
  loc_13C1D53: LateIdCallSt
  loc_13C1D5B: var_A0 = 0
  loc_13C1D67: var_D8 = CVar(CLng(1)) 'Long
  loc_13C1D6C: var_F8 = "Date"
  loc_13C1D75: LateIdCallSt
  loc_13C1D80: var_A0 = CVar(CLng(1)) 'Long
  loc_13C1D8B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C1D92: LateIdCallSt
  loc_13C1D9D: var_A0 = CVar(CLng(1)) 'Long
  loc_13C1DA8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C1DAF: LateIdCallSt
  loc_13C1DBA: var_A0 = CVar(CLng(1)) 'Long
  loc_13C1DBF: var_D8 = &H4B0
  loc_13C1DCB: LateIdCallSt
  loc_13C1DD3: var_A0 = 0
  loc_13C1DDF: var_D8 = CVar(CLng(2)) 'Long
  loc_13C1DE4: var_F8 = "Particulars"
  loc_13C1DED: LateIdCallSt
  loc_13C1DF8: var_A0 = CVar(CLng(2)) 'Long
  loc_13C1E03: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C1E0A: LateIdCallSt
  loc_13C1E15: var_A0 = CVar(CLng(2)) 'Long
  loc_13C1E20: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C1E27: LateIdCallSt
  loc_13C1E32: var_A0 = CVar(CLng(2)) 'Long
  loc_13C1E37: var_D8 = &HD16
  loc_13C1E43: LateIdCallSt
  loc_13C1E4B: var_A0 = 0
  loc_13C1E57: var_D8 = CVar(CLng(3)) 'Long
  loc_13C1E5C: var_F8 = "Debit"
  loc_13C1E65: LateIdCallSt
  loc_13C1E70: var_A0 = CVar(CLng(3)) 'Long
  loc_13C1E7B: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C1E82: LateIdCallSt
  loc_13C1E8D: var_A0 = CVar(CLng(3)) 'Long
  loc_13C1E98: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C1E9F: LateIdCallSt
  loc_13C1EAA: var_A0 = CVar(CLng(3)) 'Long
  loc_13C1EAF: var_D8 = &H4B0
  loc_13C1EBB: LateIdCallSt
  loc_13C1EC3: var_A0 = 0
  loc_13C1ECF: var_D8 = CVar(CLng(4)) 'Long
  loc_13C1ED4: var_F8 = "Credit"
  loc_13C1EDD: LateIdCallSt
  loc_13C1EE8: var_A0 = CVar(CLng(4)) 'Long
  loc_13C1EF3: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C1EFA: LateIdCallSt
  loc_13C1F05: var_A0 = CVar(CLng(4)) 'Long
  loc_13C1F10: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C1F17: LateIdCallSt
  loc_13C1F22: var_A0 = CVar(CLng(4)) 'Long
  loc_13C1F27: var_D8 = &H4B0
  loc_13C1F33: LateIdCallSt
  loc_13C1F3B: var_A0 = 0
  loc_13C1F47: var_D8 = CVar(CLng(5)) 'Long
  loc_13C1F4C: var_F8 = "Balance"
  loc_13C1F55: LateIdCallSt
  loc_13C1F60: var_A0 = CVar(CLng(5)) 'Long
  loc_13C1F6B: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C1F72: LateIdCallSt
  loc_13C1F7D: var_A0 = CVar(CLng(5)) 'Long
  loc_13C1F88: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C1F8F: LateIdCallSt
  loc_13C1F9A: var_A0 = CVar(CLng(5)) 'Long
  loc_13C1F9F: var_D8 = &H4B0
  loc_13C1FAB: LateIdCallSt
  loc_13C1FB3: var_A0 = 0
  loc_13C1FBF: var_D8 = CVar(CLng(6)) 'Long
  loc_13C1FC4: var_F8 = vbNullString
  loc_13C1FCD: LateIdCallSt
  loc_13C1FD8: var_A0 = CVar(CLng(6)) 'Long
  loc_13C1FE3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C1FEA: LateIdCallSt
  loc_13C1FF5: var_A0 = CVar(CLng(6)) 'Long
  loc_13C2000: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2007: LateIdCallSt
  loc_13C2012: var_A0 = CVar(CLng(6)) 'Long
  loc_13C2017: var_D8 = &H12C
  loc_13C2023: LateIdCallSt
  loc_13C202B: var_A0 = 0
  loc_13C2037: var_D8 = CVar(CLng(7)) 'Long
  loc_13C203C: var_F8 = vbNullString
  loc_13C2045: LateIdCallSt
  loc_13C2050: var_A0 = CVar(CLng(7)) 'Long
  loc_13C205B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2062: LateIdCallSt
  loc_13C206D: var_A0 = CVar(CLng(7)) 'Long
  loc_13C2078: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C207F: LateIdCallSt
  loc_13C208A: var_A0 = CVar(CLng(7)) 'Long
  loc_13C208F: var_D8 = 0
  loc_13C209B: LateIdCallSt
  loc_13C20A3: var_A0 = 0
  loc_13C20AF: var_D8 = CVar(CLng(8)) 'Long
  loc_13C20B4: var_F8 = vbNullString
  loc_13C20BD: LateIdCallSt
  loc_13C20C8: var_A0 = CVar(CLng(8)) 'Long
  loc_13C20D3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C20DA: LateIdCallSt
  loc_13C20E5: var_A0 = CVar(CLng(8)) 'Long
  loc_13C20F0: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C20F7: LateIdCallSt
  loc_13C2102: var_A0 = CVar(CLng(8)) 'Long
  loc_13C2107: var_D8 = 0
  loc_13C2113: LateIdCallSt
  loc_13C211B: var_A0 = 0
  loc_13C2127: var_D8 = CVar(CLng(9)) 'Long
  loc_13C212C: var_F8 = "User"
  loc_13C2135: LateIdCallSt
  loc_13C2140: var_A0 = CVar(CLng(9)) 'Long
  loc_13C214B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2152: LateIdCallSt
  loc_13C215D: var_A0 = CVar(CLng(9)) 'Long
  loc_13C2168: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C216F: LateIdCallSt
  loc_13C217A: var_A0 = CVar(CLng(9)) 'Long
  loc_13C217F: var_D8 = &H320
  loc_13C218B: LateIdCallSt
  loc_13C2193: var_A0 = 0
  loc_13C219F: var_D8 = CVar(CLng(&HA)) 'Long
  loc_13C21A4: var_F8 = "Split"
  loc_13C21AD: LateIdCallSt
  loc_13C21B8: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13C21C3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C21CA: LateIdCallSt
  loc_13C21D5: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13C21E0: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C21E7: LateIdCallSt
  loc_13C21F2: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13C21F7: var_D8 = &H1C2
  loc_13C2203: LateIdCallSt
  loc_13C220B: var_A0 = 0
  loc_13C2217: var_D8 = CVar(CLng(&HB)) 'Long
  loc_13C221C: var_F8 = "RevCode"
  loc_13C2225: LateIdCallSt
  loc_13C2230: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13C223B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2242: LateIdCallSt
  loc_13C224D: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13C2258: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C225F: LateIdCallSt
  loc_13C226A: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13C226F: var_D8 = 0
  loc_13C227B: LateIdCallSt
  loc_13C2283: var_A0 = 0
  loc_13C228F: var_D8 = CVar(CLng(&HC)) 'Long
  loc_13C2294: var_F8 = vbNullString
  loc_13C229D: LateIdCallSt
  loc_13C22A8: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13C22AD: var_D8 = 0
  loc_13C22B9: LateIdCallSt
  loc_13C22C1: var_A0 = 0
  loc_13C22CD: var_D8 = CVar(CLng(&HD)) 'Long
  loc_13C22D2: var_F8 = "OnAmt"
  loc_13C22DB: LateIdCallSt
  loc_13C22E6: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13C22F1: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C22F8: LateIdCallSt
  loc_13C2303: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13C230E: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2315: LateIdCallSt
  loc_13C2320: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13C2325: var_D8 = &H2A3
  loc_13C2331: LateIdCallSt
  loc_13C2339: var_A0 = 0
  loc_13C2345: var_D8 = CVar(CLng(&HE)) 'Long
  loc_13C234A: var_F8 = "FixedCharge"
  loc_13C2353: LateIdCallSt
  loc_13C235E: var_A0 = CVar(CLng(&HE)) 'Long
  loc_13C2363: var_D8 = 0
  loc_13C236F: LateIdCallSt
  loc_13C2377: var_A0 = vbNullString
  loc_13C2381: Set var_B4 = Me.FGrid
  loc_13C23A5: Me.FGrid.FixedRows = 1
  loc_13C23AF: Set var_90 = Nothing 
  loc_13C23B7: Set var_10C = Me.Fgrid1
  loc_13C23CD: Me.Fgrid1.Rows = 1
  loc_13C23E9: global_56 = CStr(CLng(var_10C.BackColor))
  loc_13C23FF: var_10C.Cols = 5
  loc_13C2404: var_A0 = 0
  loc_13C2410: var_D8 = CVar(CLng(0)) 'Long
  loc_13C2415: var_F8 = "Total :"
  loc_13C241E: LateIdCallSt
  loc_13C2429: var_A0 = CVar(CLng(0)) 'Long
  loc_13C2434: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C243B: LateIdCallSt
  loc_13C2446: var_A0 = CVar(CLng(0)) 'Long
  loc_13C2451: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2458: LateIdCallSt
  loc_13C2463: var_A0 = CVar(CLng(0)) 'Long
  loc_13C2468: var_D8 = &H11C6
  loc_13C2474: LateIdCallSt
  loc_13C247C: var_A0 = 0
  loc_13C2488: var_D8 = CVar(CLng(1)) 'Long
  loc_13C248D: var_F8 = vbNullString
  loc_13C2496: LateIdCallSt
  loc_13C24A1: var_A0 = CVar(CLng(1)) 'Long
  loc_13C24AC: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C24B3: LateIdCallSt
  loc_13C24BE: var_A0 = CVar(CLng(1)) 'Long
  loc_13C24C9: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C24D0: LateIdCallSt
  loc_13C24DB: var_A0 = CVar(CLng(1)) 'Long
  loc_13C24E0: var_D8 = &H4B0
  loc_13C24EC: LateIdCallSt
  loc_13C24F4: var_A0 = 0
  loc_13C2500: var_D8 = CVar(CLng(2)) 'Long
  loc_13C2505: var_F8 = vbNullString
  loc_13C250E: LateIdCallSt
  loc_13C2519: var_A0 = CVar(CLng(2)) 'Long
  loc_13C2524: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C252B: LateIdCallSt
  loc_13C2536: var_A0 = CVar(CLng(2)) 'Long
  loc_13C2541: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2548: LateIdCallSt
  loc_13C2553: var_A0 = CVar(CLng(2)) 'Long
  loc_13C2558: var_D8 = &H4B0
  loc_13C2564: LateIdCallSt
  loc_13C256C: var_A0 = 0
  loc_13C2578: var_D8 = CVar(CLng(3)) 'Long
  loc_13C257D: var_F8 = vbNullString
  loc_13C2586: LateIdCallSt
  loc_13C2591: var_A0 = CVar(CLng(3)) 'Long
  loc_13C259C: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C25A3: LateIdCallSt
  loc_13C25AE: var_A0 = CVar(CLng(3)) 'Long
  loc_13C25B9: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C25C0: LateIdCallSt
  loc_13C25CB: var_A0 = CVar(CLng(3)) 'Long
  loc_13C25D0: var_D8 = &H4B0
  loc_13C25DC: LateIdCallSt
  loc_13C25E4: var_A0 = 0
  loc_13C25F0: var_D8 = CVar(CLng(4)) 'Long
  loc_13C25F5: var_F8 = vbNullString
  loc_13C25FE: LateIdCallSt
  loc_13C2609: var_A0 = CVar(CLng(4)) 'Long
  loc_13C2614: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C261B: LateIdCallSt
  loc_13C2626: var_A0 = CVar(CLng(4)) 'Long
  loc_13C2631: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2638: LateIdCallSt
  loc_13C2643: var_A0 = CVar(CLng(4)) 'Long
  loc_13C2648: var_D8 = &H12C
  loc_13C2654: LateIdCallSt
  loc_13C265E: Set var_10C = Nothing 
  loc_13C2662: Exit Sub
End Sub

Public Sub Proc_100_39_F90C40
  'Data Table: 55975C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_A4 As Variant
  Dim var_110 As Variant
  Dim var_A8 As String
  loc_F90AFF: var_A0 = CLng(Me.FGrid.Col)
  loc_F90B0F: If Not (var_A0 = CLng(&HA)) Then
  loc_F90B19:   If Not (var_A0 = CLng(3)) Then
  loc_F90B23:     If (var_A0 = CLng(4)) Then
  loc_F90B26:     End If
  loc_F90B26:   End If
  loc_F90B39:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F90B51:   var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_F90B62:   Set var_8C = Me.TxtGrid
  loc_F90B68:   Call 0.Method_Proc_100_39_F90C400 (0, var_A4, var_A8)
  loc_F90B70:   var_F0 = var_A4.Text
  loc_F90B78:   var_110 = CVar(var_A8) 'String
  loc_F90B80:   Set var_124 = Me.FGrid
  loc_F90B86:   LateIdCallSt
  loc_F90BC1:   If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_F90BD7:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F90BEF:     var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_F90C29:     If (CStr(Me.FGrid.TextMatrix)) <> global_100) Then
  loc_F90C31:       global_98 = &HFF
  loc_F90C34:     End If
  loc_F90C34:   End If
  loc_F90C34: End If
  loc_F90C39: Proc_100_39_F90C40 = &HFF
End Sub

Public Sub Proc_100_40_1266ED0
  'Data Table: 55975C
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim unk_559760 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_110 As String
  loc_1266984: On Error Goto loc_1266EC4
  loc_12669A3: Call 0.Method_Proc_100_40_1266ED00 (CInt(&HA), var_A4, var_A8)
  loc_12669AB: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" = var_A4.Text
  loc_12669E2: unk_559760.Execute &HFF & var_A8 & " order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_12669ED: Set var_90 = Me.Txt
  loc_12669FC: var_D0 = var_90.RecordCount
  loc_1266A0A: If (var_D0 <= 0) Then
  loc_1266A13:   Call 0.Method_arg_50 (var_A8)
  loc_1266A34:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_1266A46:   var_8A = 0
  loc_1266A49:   Exit Sub
  loc_1266A4A: End If
  loc_1266A4D: var_94 = "BillPrint"
  loc_1266A50: var_BC = "Guest Bill"
  loc_1266A67: var_98 = CStr(Ucase(var_BC))
  loc_1266A77: If (var_8A = 0) Then
  loc_1266A7A:   Exit Sub
  loc_1266A7B: End If
  loc_1266A9F: Set var_A0 = var_90 
  loc_1266AA6: CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\" & var_94 & ".ttx", &HFF)
  loc_1266AD1: var_A8 = MemVar_1F950B4 & "\"
  loc_1266AE8: Call 0.Method_arg_1C (var_A8 & var_94 & ".RPT", var_BC, var_A0)
  loc_1266AF3: MemVar_1F951E8 = var_A0
  loc_1266B1C: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_1266B24: Call 0.Method_arg_2C (var_110, var_8A)
  loc_1266B32: Call 0.Method_arg_150 (var_A0)
  loc_1266B3C: Set var_90 = Nothing
  loc_1266B50: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_1266B58: Call 0.Method_arg_24 (var_9A)
  loc_1266B64: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_1266B7D:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1266B85:   Call 0.Method_arg_20 (var_A4)
  loc_1266B8D:   Call 0.Method_arg_30 (var_A8)
  loc_1266BA3:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_1266BD3:   If (var_13C = Ucase("ChkInDt")) Then
  loc_1266BE6:     Set var_A0 = Me.Txt
  loc_1266BEC:     Call 0.Method_Proc_100_40_1266ED00 (CInt(1), var_A4)
  loc_1266C24:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1266C2C:     Call 0.Method_arg_20 (var_148)
  loc_1266C34:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1266C53:   Else
  loc_1266C75:     If (var_13C = Ucase("Company")) Then
  loc_1266C88:       Set var_A0 = Me.Txt
  loc_1266C8E:       Call 0.Method_Proc_100_40_1266ED00 (CInt(&HB), var_A4)
  loc_1266CC6:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1266CCE:       Call 0.Method_arg_20 (var_148)
  loc_1266CD6:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1266CF5:     Else
  loc_1266D17:       If (var_13C = Ucase("AdltChld")) Then
  loc_1266D2A:         Set var_A0 = Me.Txt
  loc_1266D30:         Call 0.Method_Proc_100_40_1266ED00 (CInt(5), var_A4)
  loc_1266D5F:         Set var_144 = Me.Txt
  loc_1266D65:         Call 0.Method_Proc_100_40_1266ED00 (CInt(6), var_148)
  loc_1266D9D:         Call 0.Method_arg_90 (var_18C, CLng(var_9A))
  loc_1266DA5:         Call 0.Method_arg_20 (var_190)
  loc_1266DAD:         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_1266DD6:       Else
  loc_1266DF8:         If (var_13C = Ucase("RoomNo")) Then
  loc_1266E0B:           Set var_A0 = Me.Txt
  loc_1266E11:           Call 0.Method_Proc_100_40_1266ED00 (CInt(0), var_A4)
  loc_1266E49:           Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1266E51:           Call 0.Method_arg_20 (var_148)
  loc_1266E59:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1266E75:         End If
  loc_1266E75:       End If
  loc_1266E75:     End If
  loc_1266E75:   End If
  loc_1266E78: Next var_12C 'Integer
  loc_1266E82: Set var_A4 = Nothing
  loc_1266E98: Set var_A0 = MemVar_1F951E8 
  loc_1266EA4: Proc_6_99_1484404(var_A0, 0, var_98)
  loc_1266EAF: MemVar_1F951E8 = var_A0
  loc_1266EBF: MemVar_1F951E8 = Nothing
  loc_1266EC3: Exit Sub
  loc_1266EC4: ' Referenced from: 1266984
  loc_1266EC9: Proc_6_60_E63754(0, &HFF)
  loc_1266ECE: Exit Sub
End Sub

Public Sub Proc_100_41_167A358
  'Data Table: 55975C
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As String
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_D8 As Variant
  Dim var_104 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_DC As String
  Dim var_F4 As Variant
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_114 As Variant
  Dim var_124 As String
  Dim var_148 As Variant
  Dim var_138 As Variant
  Dim var_15C As Variant
  Dim var_174 As TextBox
  Dim unk_559760 As Connection15
  Dim var_8C As Recordset15
  Dim var_134 As Variant
  Dim var_16C As Variant
  Dim var_14C As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_170 As Variant
  Dim var_90 As Recordset15
  Dim var_1F4 As Variant
  Dim var_224 As Variant
  Dim Me As Variant
  loc_1678BF0: Set var_88 = New 
  loc_1678BF9: global_128 = vbNullString
  loc_1678C03: global_132 = vbNullString
  loc_1678C11: global_136 = CDate(CDbl(1))
  loc_1678C1B: Set var_94 = Me.LblCompany
  loc_1678C21: Me.LblCompany.Caption = vbNullString
  loc_1678C4F: Me.LblBillNo.Caption = "Bill # " & CStr(Me.TXT_GNAME.Text)
  loc_1678C82: var_D8 = Me.TXT_GNAME.BoundText
  loc_1678CA9: var_A8 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOccDet.ChkInDT as ChkInDate, RoomOccDet.ChkInTM As ChkInTime, RoomOccDet.ChkOutDT As ChkOutDate, RoomOccDet.ChkOutTM As ChkOutTime, RoomOccDet.DepDate, RoomOccDet.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme,GuestFolio.TravelAgent, TA.Name as TravelAgentName, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.FolioNO as FolioNo, RoomOccDet.RateCode, RoomOccDet.RoomRate, RoomOccDet.Adult AS OldADult, RoomOccDet.Children AS OldChild, RoomOccDet.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat," & "GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, GuestProf.PicPath,GUESTSTAT.NAME AS STATUSNAME,RoomOccDet.Docid "
  loc_1678CB0: var_AC = var_A8 & "FROM (((((RoomMast LEFT JOIN RoomOccDet ON RoomMast.Code = RoomOccDet.RoomNo) LEFT JOIN GuestFolio ON RoomOccDet.DocId = GuestFolio.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN RoomCat ON RoomOccDet.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS LEFT JOIN SubGroup TA ON GuestFolio.TravelAgent = TA.SubCode where (RoomMast.LOGSITE_CODE='"
  loc_1678CCC: var_C0 = var_AC & MemVar_1F95078 & "' or RoomMast.LOGSITE_CODE='HO') and (RoomOccDet.LOGSITE_CODE='" & MemVar_1F95078 & "' or RoomOccDet.LOGSITE_CODE='HO') and RoomOccDet.Docid='"
  loc_1678CDE: var_DC = var_C0 & CStr(Me.TXT_GNAME.BoundText) & "' and  RoomMast.type='RO' and RoomMAst.Code in (Select ISNULL(RoomNo,'') from RoomOccDet where RoomOccDet.Docid='"
  loc_1678CF7: var_88.Open CVar(var_DC & CStr(var_D8) & "') Order by RoomMast.Code"), CVar(MemVar_1F95044), 2
  loc_1678D5D: If ((var_88.RecordCount = 0) Or ((var_88.EOF = &HFF) Or (var_88.BOF = &HFF))) Then
  loc_1678D60:   Exit Sub
  loc_1678D61: End If
  loc_1678D89: var_A8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")), 3, -1)
  loc_1678D96: Me.lblRoomNo.Caption = var_A8
  loc_1678DDD: Me.lblRoomCat.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCatCode")), var_D8)
  loc_1678E25: Set var_110 = Me.Txt
  loc_1678E2B: Call 0.Method_Proc_100_41_167A3580 (CInt(&HA), var_114)
  loc_1678E33: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FolioNo")), CVar(var_88.Fields.Item("FolioNo")))
  loc_1678E7D: Set var_110 = Me.Txt
  loc_1678E83: Call 0.Method_Proc_100_41_167A3580 (CInt(&HA), var_114)
  loc_1678E8B: var_114.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")))
  loc_1678EB6: var_B0 = var_88.Fields.Item("ChkInDate")
  loc_1678ED5: Set var_110 = Me.Txt
  loc_1678EDB: Call 0.Method_Proc_100_41_167A3580 (CInt(1), var_114)
  loc_1678EE3: var_114.Text = Proc_6_38_E69628(CVar(var_B0))
  loc_1678F02: Set var_94 = Me.Txt
  loc_1678F08: Call 0.Method_Proc_100_41_167A3580 (CInt(1), var_B0)
  loc_1678F42: Me.LblCheckInDay.Caption = CStr(Format(CVar(var_B0), "DDDD"))
  loc_1678FAA: Set var_110 = Me.Txt
  loc_1678FB0: Call 0.Method_Proc_100_41_167A3580 (CInt(2), var_114, CStr(Left(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChkInTime")), 1)), 2)))
  loc_1678FB8: var_114.Text = 1
  loc_1679009: var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChkInTime")))) 'String
  loc_1679026: Set var_110 = Me.Txt
  loc_167902C: Call 0.Method_Proc_100_41_167A3580 (CInt(3), var_114)
  loc_1679034: var_114.Text = CStr(Right(var_D8, 2))
  loc_167908B: Set var_110 = Me.Txt
  loc_1679091: Call 0.Method_Proc_100_41_167A3580 (CInt(9), var_114)
  loc_1679099: var_114.Tag = CStr(var_88.Fields.Item("GuestCode").Value)
  loc_16790E8: Set var_110 = Me.Txt
  loc_16790EE: Call 0.Method_Proc_100_41_167A3580 (CInt(9), var_114)
  loc_16790F6: var_114.Text = CStr(var_88.Fields.Item("GuestName").Value)
  loc_1679142: Set var_110 = Me.Txt
  loc_1679148: Call 0.Method_Proc_100_41_167A3580 (CInt(&HB), var_114)
  loc_1679150: var_114.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("companyCode")))
  loc_167919A: Set var_110 = Me.Txt
  loc_16791A0: Call 0.Method_Proc_100_41_167A3580 (CInt(&HB), var_114)
  loc_16791A8: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyName")))
  loc_16791F2: Set var_110 = Me.Txt
  loc_16791F8: Call 0.Method_Proc_100_41_167A3580 (CInt(&H16), var_114)
  loc_1679200: var_114.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("TravelAgent")))
  loc_167924A: Set var_110 = Me.Txt
  loc_1679250: Call 0.Method_Proc_100_41_167A3580 (CInt(&H16), var_114)
  loc_1679258: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("TravelAgentName")))
  loc_16792A2: Set var_110 = Me.Txt
  loc_16792A8: Call 0.Method_Proc_100_41_167A3580 (CInt(&HC), var_114)
  loc_16792B0: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GuestStatus")))
  loc_16792EA: Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("OldAdult")))
  loc_1679301: Set var_110 = Me.Txt
  loc_1679307: Call 0.Method_Proc_100_41_167A3580 (CInt(5), var_114)
  loc_167930F: var_114.Text = CStr(var_D8)
  loc_167934D: Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("OldChild")))
  loc_1679364: Set var_110 = Me.Txt
  loc_167936A: Call 0.Method_Proc_100_41_167A3580 (CInt(6), var_114)
  loc_1679372: var_114.Text = CStr(var_D8)
  loc_16793C0: Set var_110 = Me.Txt
  loc_16793C6: Call 0.Method_Proc_100_41_167A3580 (CInt(7), var_114)
  loc_16793CE: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("RateCode")))
  loc_1679408: Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("RoomRate")))
  loc_167941F: Set var_110 = Me.Txt
  loc_1679425: Call 0.Method_Proc_100_41_167A3580 (CInt(8), var_114)
  loc_167942D: var_114.Text = CStr(var_D8)
  loc_167947B: Set var_110 = Me.Txt
  loc_1679481: Call 0.Method_Proc_100_41_167A3580 (CInt(4), var_114)
  loc_1679489: var_114.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCatCode")))
  loc_16794D3: Set var_110 = Me.Txt
  loc_16794D9: Call 0.Method_Proc_100_41_167A3580 (CInt(4), var_114)
  loc_16794E1: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat")))
  loc_167952B: Set var_110 = Me.Txt
  loc_1679531: Call 0.Method_Proc_100_41_167A3580 (CInt(&HC), var_114)
  loc_1679539: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("STATUSNAME")))
  loc_1679583: Set var_110 = Me.Txt
  loc_1679589: Call 0.Method_Proc_100_41_167A3580 (CInt(&H12), var_114)
  loc_1679591: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments1")))
  loc_16795DB: Set var_110 = Me.Txt
  loc_16795E1: Call 0.Method_Proc_100_41_167A3580 (CInt(&H11), var_114)
  loc_16795E9: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments2")))
  loc_1679633: Set var_110 = Me.Txt
  loc_1679639: Call 0.Method_Proc_100_41_167A3580 (CInt(&H10), var_114)
  loc_1679641: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments3")))
  loc_1679696: Set var_110 = Me.Txt
  loc_167969C: Call 0.Method_Proc_100_41_167A3580 (CInt(&H13), var_114)
  loc_16796A4: var_114.Text = Proc_6_38_E69628(Trim(CVar(var_88.Fields.Item("Add1"))))
  loc_16796FD: Set var_110 = Me.Txt
  loc_1679703: Call 0.Method_Proc_100_41_167A3580 (CInt(&H14), var_114)
  loc_167970B: var_114.Text = Proc_6_38_E69628(Trim(CVar(var_88.Fields.Item("Add2"))))
  loc_1679777: var_114 = var_88.Fields.Item("StateName")
  loc_167979E: var_BC = global_136 & Proc_6_38_E69628(Trim(CVar(var_114)), Proc_6_38_E69628(Trim(CVar(var_88.Fields.Item("CityName")))) & ",") & ","
  loc_16797B8: var_14C = var_88.Fields.Item("CountryName")
  loc_16797E6: Set var_170 = Me.Txt
  loc_16797EC: Call 0.Method_Proc_100_41_167A3580 (CInt(&H15), var_174)
  loc_16797F4: var_174.Text = var_BC & Proc_6_38_E69628(Trim(CVar(var_14C)))
  loc_167985C: Set var_110 = Me.Txt
  loc_1679862: Call 0.Method_Proc_100_41_167A3580 (CInt(&HD), var_114)
  loc_167986A: var_114.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ChkOutDate")))
  loc_16798CE: Set var_110 = Me.Txt
  loc_16798D4: Call 0.Method_Proc_100_41_167A3580 (CInt(&HF), var_114)
  loc_16798DC: var_114.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChkOutTime")))), 2))
  loc_1679911: var_B0 = var_88.Fields.Item("ChkOutTime")
  loc_167993B: var_A8 = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_B0))), 2))
  loc_167994A: Set var_110 = Me.Txt
  loc_1679950: Call 0.Method_Proc_100_41_167A3580 (CInt(&HE), var_114)
  loc_1679958: var_114.Text = var_A8
  loc_1679984: Set var_94 = Me.Txt
  loc_167998A: Call 0.Method_Proc_100_41_167A3580 (CInt(0), var_B0)
  loc_1679992: var_B0.Text = vbNullString
  loc_16799BC: Set var_94 = Me.Txt
  loc_16799C2: Call 0.Method_Proc_100_41_167A3580 (CInt(&HA), var_B0, var_A8, "Select distinct Paytype,CompCode from paycharge where MOdeSet='S' and FolioNoDocid='")
  loc_16799CA: var_A4 = var_B0.Tag
  loc_16799D3: var_AC = -1 & var_A8
  loc_16799E3: unk_559760.Execute Proc_6_38_E69628(CVar(var_B0)) & "'", var_110, 
  loc_16799EE: Set var_8C = var_110
  loc_1679A24: Set var_94 = Me.Txt
  loc_1679A2A: Call 0.Method_Proc_100_41_167A3580 (CInt(&HA), var_B0, var_A8, "Select U_AE,U_Entdt,U_Name from paycharge where MOdeSet='S' and FolioNoDocid='")
  loc_1679A32: var_A4 = var_B0.Tag
  loc_1679A3B: var_AC = -1 & var_A8
  loc_1679A4B: unk_559760.Execute Proc_6_38_E69628(CVar(var_B0)) & "'", var_110, 
  loc_1679A56: Set var_90 = var_110
  loc_1679A6E: ' Referenced from: 1679F9B
  loc_1679A74: var_10A = var_8C.EOF
  loc_1679A7D: If Not(var_10A) Then
  loc_1679A86:   var_108 = var_8C.AbsolutePosition
  loc_1679A94:   If (var_108 = 1) Then
  loc_1679AAE:     var_B0 = var_8C.Fields.Item("PayType")
  loc_1679ACD:     Set var_110 = Me.Txt
  loc_1679AD3:     Call 0.Method_Proc_100_41_167A3580 (CInt(0), var_114)
  loc_1679ADB:     var_114.Text = Proc_6_38_E69628(CVar(var_B0))
  loc_1679AF2:   Else
  loc_1679AFD:     Set var_94 = Me.Txt
  loc_1679B03:     Call 0.Method_Proc_100_41_167A3580 (CInt(0))
  loc_1679B1F:     var_F4 = (Trim(CVar(var_B0)) + ",")
  loc_1679B42:     var_134 = CVar(var_8C.Fields.Item("PayType")) 'Address
  loc_1679B4E:     var_16C = (var_B0 + CVar(Proc_6_38_E69628(var_134, Right(CVar(Proc_6_38_E69628(CVar(var_B0))), 2))))
  loc_1679B61:     Set var_138 = Me.Txt
  loc_1679B67:     Call 0.Method_Proc_100_41_167A3580 (CInt(0), var_14C)
  loc_1679B6F:     var_14C.Text = CStr(Trim(CVar(var_14C)))
  loc_1679B91:   End If
  loc_1679BDF:   var_114 = var_8C.Fields.Item("PayType")
  loc_1679BF9:   var_15C = (var_8C.Fields.Item("PayType").Value = "Company") Or (var_114.Value = "Member")
  loc_1679C53:   unk_559760.Execute CStr("Select Name From Subgroup where Subcode='" & var_8C.Fields.Item("CompCode").Value & "'"), var_1F4, -1
  loc_1679C5B:   var_170 = var_170.RecordCount
  loc_1679C98:   If CBool(var_108 And (var_108 > 0)) Then
  loc_1679CA1:     var_194 = 0
  loc_1679CFD:     unk_559760.Execute CStr("Select Name From Subgroup where Subcode='" & var_8C.Fields.Item("CompCode").Value & "'"), var_134, -1
  loc_1679D05:     var_110 = var_110.Fields
  loc_1679D0D:     var_194 = var_114.Item(var_114)
  loc_1679D15:     var_138 = var_138.Value
  loc_1679D2B:     Me.LblCompany.Caption = CStr(var_15C)
  loc_1679D53:   End If
  loc_1679DD1:   var_15C = IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : ")
  loc_1679E26:   var_1F4 = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("U_Name")), IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE")), var_15C) = "A"), "Created By : ", var_15C))) 'String
  loc_1679E3B:   Me.LblUser.Caption = CStr(var_15C & var_1F4)
  loc_1679EC9:   var_194 = "entdt : "
  loc_1679F16:   var_1B4 = IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "E"), "Last Update : ", var_194))
  loc_1679F5B:   Me.LblLDt.Caption = CStr(var_1B4 & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("U_EntDt")))))
  loc_1679F96:   var_8C.MoveNext
  loc_1679F9B:   GoTo loc_1679A6E
  loc_1679F9E: End If
  loc_1679FAD: var_94 = var_88.Fields
  loc_1679FC6: var_184 = IsNull(CVar(var_94.Item("PicPath")))
  loc_1679FCD: var_124 = "PicPath"
  loc_1679FF8: var_148 = vbNullString
  loc_167A01A: If CBool(var_184 Or (Trim(CVar(var_88.Fields.Item(var_124))) = var_148)) Then
  loc_167A03B:   Me.Global.LoadPicture var_104, var_124, var_148, var_184, var_194
  loc_167A050:   Me.GuestImage.Picture = var_94
  loc_167A069:   Me.GuestImage.Tag = vbNullString
  loc_167A074: Else
  loc_167A0A2:   var_148 = "PicPath"
  loc_167A0E8:   var_124 = "DAT"
  loc_167A110:   var_184 = "AVI"
  loc_167A11A:   var_224 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_124) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_148))), 3)) = var_184)
  loc_167A13A:   If CBool(var_224) Then
  loc_167A149:     Me.GuestImage.Visible = False
  loc_167A154:   Else
  loc_167A18C:     Me.GuestImage.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_167A1A9:     var_104 = "PicPath"
  loc_167A1BD:     var_B0 = var_88.Fields.Item(var_104)
  loc_167A1DA:     Call 0.Method_Proc_100_41_167A3584 (CStr(var_B0.Value), var_10A)
  loc_167A1EF:     If var_10A Then
  loc_167A20C:       Set var_94 = Me.GuestImage
  loc_167A224:       Me.Global.LoadPicture CVar(Me.GuestImage.Tag), var_104, var_124, var_148, var_184
  loc_167A239:       Me.GuestImage.Picture = var_B0
  loc_167A24E:       Set var_94 = Me.GuestImage
  loc_167A254:       var_94.Refresh
  loc_167A25F:     Else
  loc_167A27D:       Me.Global.LoadPicture var_104, var_124, var_148, var_184, var_194
  loc_167A292:       Me.GuestImage.Picture = var_94
  loc_167A29E:     End If
  loc_167A29E:   End If
  loc_167A29E: End If
  loc_167A2A2: Set var_94 = Me.TXT_GNAME
  loc_167A2A8: var_A4 = var_94.BoundText
  loc_167A2CD: Set var_B0 = Me.QrImage
  loc_167A2DA: Proc_348_21_12A8ED8(CStr(var_A4), var_B0, global_128, global_132, global_136)
  loc_167A2EE: Call Proc_100_49_FD4E10(var_A4, var_94)
  loc_167A2F3: Call Proc_100_38_13C2664(var_B0)
  loc_167A2F8: Call Proc_100_42_1449ABC(var_94)
  loc_167A339: If (Proc_6_38_E69628(CVar(Me.Fields.Item("BillAmendMode"))) = "Advanced") Then
  loc_167A33F:   Call Proc_100_47_F011F0(var_22C)
  loc_167A34A:   global_104 = var_22C
  loc_167A34D: End If
  loc_167A352: Set var_88 = Nothing
  loc_167A355: Exit Sub
End Sub

Public Sub Proc_100_42_1449ABC
  'Data Table: 55975C
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_A4 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim unk_559760 As Connection15
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_1A4 As Variant
  Dim var_174 As Variant
  Dim var_1B4 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_18E As Integer
  Dim var_188 As Field20
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_1F0 As Variant
  loc_1448FB4: On Error Goto loc_1449A55
  loc_1448FC2: Set var_A0 = Me.Txt
  loc_1448FC8: Call 0.Method_Proc_100_42_1449ABC0 (CInt(&HA))
  loc_1448FF1: If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_1448FF4:   Exit Sub
  loc_1448FF5: End If
  loc_1449010: var_E4 = CVar("Select * from paycharge where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (ContraDocId is NULL or contradocid='') and folionodocid='") 'String
  loc_1449021: Set var_A0 = Me.Txt
  loc_1449027: Call 0.Method_Proc_100_42_1449ABC0 (CInt(&HA), var_A4, var_EC, var_E4)
  loc_144902F: var_184 = var_A4.Tag
  loc_1449045: var_FC = -1 & Trim(CVar(var_EC)) 
  loc_144907E: unk_559760.Execute CStr(var_FC & "' and Bill_no='" & CVar(CStr(Me.TXT_GNAME.defText)) & "'  order by vDate,VNO,SNO"), var_188, var_A4
  loc_1449089: Set var_8C = var_188
  loc_14490BE: var_18C = Me.Recordset15.RecordCount
  loc_14490CC: var_D4 = CVar((var_18C + 2)) 'Long
  loc_14490DB: Me.FGrid.Rows = "' and Bill_no='"
  loc_14490F0: Set var_A0 = Me.FGrid
  loc_14490F6: var_A0.Row = 1
  loc_14490FE: ' Referenced from: 14498A2
  loc_1449110: If Not(Me.var_A0.EOF) Then
  loc_1449117:   Set var_194 = Me.FGrid
  loc_1449124:   var_C4 = Me.FGrid.Row
  loc_144912D:   var_150 = CVar(CLng(var_C4)) 'Long
  loc_1449165:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("VDate")), CVar(CLng(1)))) 'String
  loc_144916C:   LateIdCallSt
  loc_144918E:   var_C4 = Me.FGrid.Row
  loc_14491CF:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_C4)))) 'String
  loc_14491D6:   LateIdCallSt
  loc_1449217:   var_FC = Me.FGrid.Row
  loc_1449220:   var_174 = CVar(CLng(var_FC)) 'Long
  loc_1449228:   var_1B4 = CVar(CLng(3)) 'Long
  loc_1449255:   var_10C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_144925C:   LateIdCallSt
  loc_14492A1:   var_FC = Me.FGrid.Row
  loc_14492C6:   var_C4 = "0.00"
  loc_14492E6:   LateIdCallSt
  loc_1449332:   Proc_6_39_E7D3A0(var_C4, CVar(Me.var_FC.Fields.Item("AmtDr")), CVar(var_94), var_194, CVar(CStr(Format(CVar(Me.var_FC.Fields.Item("AmtCr")), var_C4))), 1, 1)
  loc_144933A:   var_E4 = (CVar(CLng(4)) + var_C4)
  loc_144933F:   var_94 = CSng(Format(CVar(Me.var_FC.Fields.Item("AmtCr")), var_C4))
  loc_144937E:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_FC)))
  loc_1449386:   var_E4 = (var_194 + var_C4)
  loc_144938B:   var_9C = CSng(Format(CVar(Me.var_FC.Fields.Item("AmtCr")), var_C4))
  loc_14493AD:   var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14493B5:   var_1B4 = CVar(CLng(5)) 'Long
  loc_14493D7:   var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_14493E7:   var_10C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_14493EE:   LateIdCallSt
  loc_1449412:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_1449428:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1449430:     var_174 = CVar(CLng(6)) 'Long
  loc_1449435:     var_1B4 = "Dr"
  loc_144943E:     LateIdCallSt
  loc_144944F:   Else
  loc_144945B:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_1449471:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1449479:       var_174 = CVar(CLng(6)) 'Long
  loc_144947E:       var_1B4 = "Cr"
  loc_1449487:       LateIdCallSt
  loc_1449498:     Else
  loc_14494AB:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14494B3:       var_174 = CVar(CLng(6)) 'Long
  loc_14494B8:       var_1B4 = vbNullString
  loc_14494C1:       LateIdCallSt
  loc_14494CF:     End If
  loc_14494CF:   End If
  loc_14494D9:   var_C4 = Me.FGrid.Row
  loc_14494F2:   var_D4 = "DocID"
  loc_144951A:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item(var_D4)), CVar(CLng(7)), CVar(CLng(var_C4)), var_194, var_1B4, var_174, var_D4)) 'String
  loc_1449521:   LateIdCallSt
  loc_1449543:   var_C4 = Me.FGrid.Row
  loc_1449584:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_C4)), var_194, var_E4, var_194)) 'String
  loc_144958B:   LateIdCallSt
  loc_14495AD:   var_C4 = Me.FGrid.Row
  loc_14495F5:   LateIdCallSt
  loc_1449638:   var_18E = IsNull(CVar(Me.Recordset15.Fields.Item("Split")))
  loc_144966F:   var_184 = Me.FGrid.Row
  loc_14496B0:   var_140 = CVar(Proc_6_38_E69628(CVar(Me.var_184.Fields.Item("Split")), CVar(CLng(&HA)), CVar(CLng(var_184)), var_18E, var_194, CVar(Proc_6_38_E69628(CVar(Me.Me.Recordset15.Fields.Item("Split").Value.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(Me.Recordset15.Fields.Item("Split").Value)), var_194, var_E4)))) 'String
  loc_14496F0:   LateIdCallSt
  loc_1449726:   var_C4 = Me.FGrid.Row
  loc_1449767:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("PayCode")), CVar(CLng(&HB)), CVar(CLng(var_C4)), var_194, CVar(CStr(IIf(var_18E Or (Me.Recordset15.Fields.Item("Split").Value = vbNullString), "1", var_140))))) 'String
  loc_144976E:   LateIdCallSt
  loc_1449790:   var_C4 = Me.FGrid.Row
  loc_14497D1:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("BillAmount")), CVar(CLng(&HD)), CVar(CLng(var_C4)), var_194, var_E4)) 'String
  loc_14497D8:   LateIdCallSt
  loc_14497FA:   var_C4 = Me.FGrid.Row
  loc_144983B:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("FixedChargeCode")), CVar(CLng(&HE)), CVar(CLng(var_C4)), var_194, var_E4)) 'String
  loc_1449842:   LateIdCallSt
  loc_144985C:   Set var_194 = Nothing 
  loc_1449879:   var_D4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1449882:   Set var_A4 = Me.FGrid
  loc_1449888:   var_A4.Row = "FixedChargeCode"
  loc_144989D:   Me.var_A4.MoveNext
  loc_14498A2:   GoTo loc_14490FE
  loc_14498A5: End If
  loc_14498B8: Me.FGrid.FixedRows = 1
  loc_14498C4: Set var_234 = Me.Fgrid1
  loc_14498C7: var_174 = 0
  loc_14498D3: var_1B4 = CVar(CLng(1)) 'Long
  loc_1449901: var_E4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1449908: LateIdCallSt
  loc_1449919: var_174 = 0
  loc_1449925: var_1B4 = CVar(CLng(2)) 'Long
  loc_1449953: var_E4 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_144995A: LateIdCallSt
  loc_144996B: var_174 = 0
  loc_1449977: var_1B4 = CVar(CLng(3)) 'Long
  loc_1449999: var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_14499A9: var_FC = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_14499B0: LateIdCallSt
  loc_14499C3: var_1C4 = 0
  loc_14499CF: var_1F0 = CVar(CLng(4)) 'Long
  loc_14499D9: var_C4 = vbNullString
  loc_14499F6: var_D4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_14499FD: var_E4 = IIf(var_9C, "Cr", var_C4)
  loc_1449A0A: var_FC = "Dr"
  loc_1449A1C: var_1A4 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_1449A2C: var_120 = CVar(CStr(IIf(CVar(CLng(&HE)), var_FC, var_E4))) 'String
  loc_1449A33: LateIdCallSt
  loc_1449A50: Set var_234 = Nothing 
  loc_1449A54: Exit Sub
  loc_1449A55: ' Referenced from: 1448FB4
  loc_1449A6E: MsgBox("FILL DETAILS", 0, var_C4, var_E4, var_FC)
  loc_1449A94: Set var_A0 = Err()
  loc_1449A9A: Call 0.Method_arg_1C (var_18C, 0, var_C4, var_E4, var_FC, var_234, var_120, var_1F0)
  loc_1449AA6: MsgBox(CVar(var_18C), var_1C4, var_234, var_FC, 1)
  loc_1449AB9: Exit Sub
End Sub

Public Sub Proc_100_43_DFEBF4
  'Data Table: 55975C
  loc_DFEBEC: Call Proc_100_44_1A3A084()
  loc_DFEBF1: Exit Sub
End Sub

Public Sub Proc_100_44_1A3A084
  'Data Table: 55975C
  Dim var_110 As Variant
  Dim var_118 As String
  Dim unk_559760 As Connection15
  Dim var_E4 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_114 As String
  Dim var_88 As Variant
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_86 As Variant
  Dim var_178 As Variant
  Dim var_1C8 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_2C4 As Variant
  Dim var_2E4 As Variant
  Dim var_10C As Fields15
  Dim var_128 As Variant
  Dim var_12C As Fields15
  Dim var_320 As Variant
  Dim var_360 As Variant
  Dim var_408 As Variant
  Dim var_3F8 As Variant
  Dim var_418 As Variant
  Dim var_438 As Variant
  Dim var_518 As Variant
  Dim var_538 As Variant
  Dim var_5B0 As Variant
  Dim var_5D0 As Variant
  Dim var_6E0 As Variant
  Dim var_778 As Variant
  Dim var_7B8 As Variant
  Dim var_7D8 As Variant
  Dim var_820 As Variant
  Dim var_830 As Variant
  Dim var_898 As Variant
  Dim var_8F8 As Variant
  Dim var_3A0 As Variant
  Dim var_458 As Variant
  Dim var_4A0 As Variant
  Dim var_558 As Variant
  Dim var_610 As Variant
  Dim var_668 As Variant
  Dim var_720 As Variant
  Dim var_7F8 As Variant
  Dim var_938 As Variant
  Dim var_3C8 As Variant
  Dim var_4E8 As Variant
  Dim var_548 As Variant
  Dim var_788 As Variant
  Dim var_7E8 As Variant
  Dim var_8A8 As Variant
  Dim var_21C As String
  Dim var_244 As Variant
  Dim var_330 As Variant
  Dim var_600 As Variant
  Dim var_658 As Variant
  Dim var_8C8 As Variant
  Dim var_2A4 As Variant
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_DC As Double
  Dim var_224 As String
  Dim var_93C As String
  Dim var_940 As String
  Dim Me As Recordset15
  loc_1A36B10: On Error Goto loc_1A3A069
  loc_1A36B1A: Close 1
  loc_1A36B23: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A36B45: Set var_10C = Me.Txt
  loc_1A36B4B: Call 0.Method_Proc_100_44_1A3A0840 (CInt(&HA), var_110, var_114, "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and foliono=")
  loc_1A36B53: var_128 = var_110.Text
  loc_1A36B5C: var_118 = -1 & var_114
  loc_1A36B65: unk_559760.Execute var_118, var_12C, 0
  loc_1A36B70: Set var_E4 = var_12C
  loc_1A36B86: ' Referenced from: 1A39FB8
  loc_1A36B95: If Not(var_E4.EOF) Then
  loc_1A36BB6:   Set var_10C = Me.Txt
  loc_1A36BBC:   Call 0.Method_Proc_100_44_1A3A0840 (CInt(&HA), var_110, var_114, "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.FolioNo = ")
  loc_1A36BC4:   var_128 = var_110.Text
  loc_1A36BCD:   var_118 = -1 & var_114
  loc_1A36BDD:   unk_559760.Execute var_118 & " order by  RoomOcc.Sno Desc", var_12C, 
  loc_1A36BE8:   Set var_B4 = var_12C
  loc_1A36C14:   If (var_B4.RecordCount <= 0) Then
  loc_1A36C17:     Exit Sub
  loc_1A36C18:   End If
  loc_1A36C1E:   If (var_86 = 0) Then
  loc_1A36C4F:     var_A4 = Replace(CStr(Space(&H50)), " ", "-", 1, -1, 0)
  loc_1A36C5E:     var_88 = (var_88 + 1)
  loc_1A36C82:     Print 1, Proc_6_98_11AC34C(MemVar_1F95130, "A")
  loc_1A36CD7:     var_158 = (Trim(MemVar_1F95134) + ", ")
  loc_1A36CDE:     var_188 = (var_158 + Trim(MemVar_1F95138))
  loc_1A36CE7:     var_1A8 = (var_188 + " ")
  loc_1A36CEE:     var_1D8 = (var_1A8 + Trim(MemVar_1F9513C))
  loc_1A36CF7:     var_1F8 = (var_1D8 + " ")
  loc_1A36D01:     var_218 = (var_1F8 + CVar(MemVar_1F9515C))
  loc_1A36D1A:     Print 1, Proc_6_98_11AC34C(CStr(var_218), "B", &H4E)
  loc_1A36D77:     Print 1, Proc_6_98_11AC34C("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "D", &H7D)
  loc_1A36DAA:     var_21C = Proc_6_98_11AC34C("Website: " & "www.kumaonindia.com * www.himalaya-holidays.com * www.indiatravelplan.com", "D", &H7D)
  loc_1A36DB5:     Print 1, "D"
  loc_1A36DED:     Print 1, Proc_6_98_11AC34C("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_1A36E03:     Print 1, var_A4
  loc_1A36E0B:     var_86 = &HC
  loc_1A36E88:     var_178 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Guest Name :", &H3C, var_86)))
  loc_1A36E91:     var_188 = (Trim(MemVar_1F95138) + "|")
  loc_1A36E98:     var_1C8 = (var_188 + Space(2))
  loc_1A36EA1:     var_1D8 = (Trim(MemVar_1F9513C) + "Room #")
  loc_1A36EA8:     var_218 = (var_1D8 + Space(&HA))
  loc_1A36EB1:     var_234 = (var_218 + "Reg #")
  loc_1A36EB8:     var_254 = (var_234 + Space(&HA))
  loc_1A36EC1:     var_264 = (var_254 + "Pax")
  loc_1A36EC8:     var_284 = (var_264 + Space(&HB))
  loc_1A36ED1:     var_294 = (var_284 + "Type")
  loc_1A36ED8:     var_2B4 = (var_294 + Space(&HA))
  loc_1A36EE1:     var_2C4 = (var_2B4 + "Nation")
  loc_1A36EE8:     var_2E4 = (var_2C4 + Chr(&H12))
  loc_1A36EEE:     Print 1, var_2E4
  loc_1A36FF7:     var_284 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A37078:     var_360 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A370D2:     var_418 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A37153:     var_518 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A371AD:     var_5D0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A3723A:     var_6E0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A372AB:     var_7B8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A37365:     var_8F8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A37393:     var_188 = (CVar(" Mr " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Name")), &H4E), &H1F) & "|") + Space(1))
  loc_1A3739A:     var_1F8 = (var_188 + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_1A373A1:     var_234 = (Space(&HA) + Space(3))
  loc_1A373A8:     var_2B4 = (var_234 + Space(CLng((var_284 / 2))))
  loc_1A373B4:     var_2E4 = (var_2B4 + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A373BB:     var_3A0 = (var_2E4 + Space(CLng((var_360 / 2))))
  loc_1A373C2:     var_458 = (var_3A0 + Space(CLng((var_418 / 2))))
  loc_1A373CE:     var_4A0 = (var_458 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A373D5:     var_558 = (var_4A0 + Space(CLng((var_518 / 2))))
  loc_1A373DC:     var_610 = (var_558 + Space(CLng((var_5D0 / 2))))
  loc_1A373E3:     var_668 = (var_610 + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A373EA:     var_720 = (var_668 + Space(CLng((var_6E0 / 2))))
  loc_1A373F1:     var_7F8 = (var_720 + Space(CLng((var_7B8 / 2))))
  loc_1A373F8:     var_860 = (var_7F8 + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A373FF:     var_938 = (var_860 + Space(CLng((var_8F8 / 2))))
  loc_1A37405:     Print 1, var_938
  loc_1A3754C:     var_1A8 = CVar(vbNullString & Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A37552:     var_1C8 = (var_1A8 + Left(var_A4, &H2C))
  loc_1A37558:     Print 1, CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))
  loc_1A37603:     var_2A4 = Chr(&H12)
  loc_1A37612:     var_178 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A37618:     var_188 = (var_178 + Chr(&HF))
  loc_1A3761F:     var_1C8 = (Left(var_A4, &H2C) + Space(2))
  loc_1A37628:     var_1D8 = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")))) + "R.Rate")
  loc_1A3762F:     var_218 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) + Space(&HE))
  loc_1A37638:     var_234 = (Space(3) + "Arrival")
  loc_1A3763F:     var_254 = (var_234 + Space(&HD))
  loc_1A37648:     var_264 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A3764F:     var_284 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A37658:     var_294 = (var_284 + " Bill # ")
  loc_1A3765F:     var_2B4 = ((var_284 / 2) + var_2A4)
  loc_1A37665:     Print 1, var_2B4
  loc_1A376B7:     var_110 = var_B4.Fields.Item("CityName")
  loc_1A376E3:     var_93C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_110)) & "-", &H23)
  loc_1A376FA:     var_12C = var_B4.Fields
  loc_1A37711:     Proc_6_39_E7D3A0(var_178, CVar(var_12C.Item("RoomRate")))
  loc_1A3772D:     var_1D8 = (6 - Len(Trim(CVar(CStr(var_178)))))
  loc_1A3776A:     Proc_6_39_E7D3A0(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3779A:     Proc_6_39_E7D3A0(var_2A4, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A377B6:     var_2E4 = (10 - Len(Trim(CVar(CStr(var_2A4)))))
  loc_1A377E9:     var_408 = 12
  loc_1A377FD:     var_360 = "dd/mm/yy"
  loc_1A37824:     var_3C8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), var_360))))
  loc_1A378BB:     var_4A0 = Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy")
  loc_1A378D2:     var_4E8 = (1 - Len(Trim(var_4A0)))
  loc_1A37940:     var_5B0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A379EE:     var_6E0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A37A44:     var_788 = (12 - Len(Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1, 12, 1, 1, 1)))))
  loc_1A37AD6:     var_898 = (1 - Len(Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1)))))
  loc_1A37B04:     var_244 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))))
  loc_1A37B10:     var_284 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A37B17:     var_330 = (var_284 + Space(CLng((var_2E4 / 2))))
  loc_1A37B1E:     var_3F8 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A37B25:     var_458 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A37B2C:     var_538 = (var_458 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A37B33:     var_600 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A37B3A:     var_658 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A37B41:     var_720 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E0 / 2))))
  loc_1A37B48:     var_7D8 = (var_720 + Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))))
  loc_1A37B4F:     var_830 = ((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2) + Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 1, 12))))
  loc_1A37B56:     var_8C8 = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_1A37B5C:     Print 1, Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))
  loc_1A37C3E:     Print 1, Proc_6_45_EADFB8(" ", &H23) & "|"
  loc_1A37C54:     Print 1, var_A4
  loc_1A37C62:     var_114 = "Date"
  loc_1A37C78:     var_128 = Space(1)
  loc_1A37D1B:     var_178 = (CVar(Proc_6_45_EADFB8(var_114, &HB)) + var_128)
  loc_1A37D25:     var_1A8 = (var_178 + CVar(Proc_6_45_EADFB8("Bill/Vou#", 9)))
  loc_1A37D2C:     var_1D8 = (Trim(CVar(CStr(var_178))) + Space(1))
  loc_1A37D36:     var_218 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) + CVar(Proc_6_45_EADFB8("Description", &H18)))
  loc_1A37D40:     var_244 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + CVar(Proc_6_52_EAE084("Debit", &HA)))
  loc_1A37D47:     var_264 = (Space(&HD) + Space(1))
  loc_1A37D51:     var_284 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAE084("Credit", &HA)))
  loc_1A37D58:     var_2A4 = (var_284 + Space(1))
  loc_1A37D62:     var_2C4 = (var_2A4 + CVar(Proc_6_52_EAE084("Balance", &HB)))
  loc_1A37D68:     Print 1, Trim(CVar(CStr(var_2A4)))
  loc_1A37DB7:     Print 1, var_A4
  loc_1A37DBF:     var_86 = &H17
  loc_1A37DC2:   End If
  loc_1A37DE0:   Set var_10C = Me.Txt
  loc_1A37DE6:   Call 0.Method_Proc_100_44_1A3A0840 (CInt(&HA), var_110, var_114, "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=", var_128)
  loc_1A37DEE:   -1 = var_110.Text
  loc_1A37E07:   unk_559760.Execute var_12C & var_114 & " order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_86, 1
  loc_1A37E12:   Set var_B0 = var_12C
  loc_1A37E2A:   ' Referenced from: 1A39920
  loc_1A37E39:   If Not(var_B0.EOF) Then
  loc_1A37E76:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_1A37E8D:       If (var_B0.AbsolutePosition > 1) Then
  loc_1A37E97:         var_CC = (var_BC - var_C4)
  loc_1A37EA1:         var_D4 = (var_D4 + var_CC)
  loc_1A37F2C:         var_1F8 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1)))
  loc_1A37FA3:         var_294 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A37FF9:         var_178 = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18)))
  loc_1A38000:         var_218 = (var_178 + var_1F8)
  loc_1A38007:         var_244 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + Space(1))
  loc_1A3800E:         var_2A4 = (Space(&HD) + var_294)
  loc_1A38015:         var_2C4 = (var_2A4 + Space(1))
  loc_1A3801F:         var_320 = (Trim(CVar(CStr(var_2A4))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A38025:         Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A38083:         var_86 = (var_86 + 1)
  loc_1A3808B:         Print 1, vbNullString
  loc_1A38097:         var_86 = (var_86 + 1)
  loc_1A3809D:         var_BC = CDbl(0)
  loc_1A380A3:         var_C4 = CDbl(0)
  loc_1A380A6:       End If
  loc_1A380A6:     End If
  loc_1A380EB:     var_158 = Space(1)
  loc_1A38149:     Proc_6_39_E7D3A0(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))), CVar(var_B0.Fields.Item("VNo")))
  loc_1A38175:     var_264 = (CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))))))
  loc_1A381FE:     Proc_6_39_E7D3A0(Space(CLng((Format(var_D4, "0.00") / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A3823F:     Proc_6_39_E7D3A0(var_360, CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A38297:     var_3E8 = IIf((Space(CLng((Format(var_D4, "0.00") / 2))) = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_360, "0.00")), &HA, 1)))
  loc_1A382CF:     Proc_6_39_E7D3A0(var_458, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_1A38310:     Proc_6_39_E7D3A0(var_4A0, CVar(var_B0.Fields.Item("AmtCr")))
  loc_1A38367:     var_538 = IIf((var_458 = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_4A0, "0.00")), &HA, 1)))
  loc_1A38375:     var_188 = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_158)
  loc_1A3837F:     var_284 = ("0.00" + CVar(Proc_6_45_EADFB8(CStr(Format(var_C4, "0.00")), 9)))
  loc_1A38386:     var_2A4 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A38390:     var_2E4 = (var_2A4 + CVar(Proc_6_45_EADFB8(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_1A38397:     var_3F8 = (Format(var_D4, "0.00") + var_3E8)
  loc_1A3839E:     var_438 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(1))
  loc_1A383A5:     var_548 = ("dd/mm/yy" + var_538)
  loc_1A383AB:     Print 1, CVar(var_B4.Fields.Item("DepDate"))
  loc_1A3844C:     var_86 = (var_86 + 1)
  loc_1A3847C:     Proc_6_39_E7D3A0(var_158, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_1A38484:     var_178 = (1 + var_158)
  loc_1A38489:     var_BC = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A384C5:     Proc_6_39_E7D3A0(var_158, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_1A384CD:     var_178 = (var_BC + var_158)
  loc_1A384D2:     var_C4 = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A38537:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_1A38541:       var_CC = (var_BC - var_C4)
  loc_1A3854B:       var_D4 = (var_D4 + var_CC)
  loc_1A38553:       Print 1, vbNullString
  loc_1A3855F:       var_86 = (var_86 + 1)
  loc_1A385EA:       var_1F8 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_1A38661:       var_294 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A386B7:       var_178 = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18, var_86, var_D4, var_CC)))
  loc_1A386BE:       var_218 = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1F8)
  loc_1A386C5:       var_244 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + Space(1))
  loc_1A386CC:       var_2A4 = (Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))))) + var_294)
  loc_1A386D3:       var_2C4 = (var_2A4 + Space(1))
  loc_1A386DD:       var_320 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A386E3:       Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A38741:       var_86 = (var_86 + 1)
  loc_1A38747:       var_BC = CDbl(0)
  loc_1A3874D:       var_C4 = CDbl(0)
  loc_1A38750:     End If
  loc_1A38756:     If (var_86 >= &H30) Then
  loc_1A3875E:       Print 1, " "
  loc_1A38782:       var_188 = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_1A38796:       var_158 = (" " + Space(&H37))
  loc_1A3879F:       var_178 = (CVar(Proc_6_45_EADFB8("Day Total", &H18, var_86, var_D4, var_CC)) + "Continued Page No ")
  loc_1A387AC:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_1A387CA:       var_86 = (var_86 + 1)
  loc_1A387DF:       Print 1, Chr(&HC)
  loc_1A387EA:       var_86 = 0
  loc_1A387ED:     End If
  loc_1A387F3:     If (var_86 = 0) Then
  loc_1A387FC:       var_88 = (var_88 + 1)
  loc_1A38805:       var_88 = (var_88 + 1)
  loc_1A38829:       Print 1, Proc_6_98_11AC34C(MemVar_1F95130, "A", &H4E, var_88, var_88, var_86, var_86)
  loc_1A3887E:       var_158 = (Trim(MemVar_1F95134) + ", ")
  loc_1A38885:       var_188 = (CVar(Proc_6_45_EADFB8("Day Total", &H18, var_86, var_D4, var_CC)) + Trim(MemVar_1F95138))
  loc_1A3888E:       var_1A8 = ("0.00" + " ")
  loc_1A38895:       var_1D8 = (Str("0.00") + Trim(MemVar_1F9513C))
  loc_1A3889E:       var_1F8 = (CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + " ")
  loc_1A388A8:       var_218 = (var_1F8 + CVar(MemVar_1F9515C))
  loc_1A388B6:       var_21C = Proc_6_98_11AC34C(CStr(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))), "B", &H4E, var_C4, var_BC)
  loc_1A388C1:       Print 1, var_21C
  loc_1A3891E:       Print 1, Proc_6_98_11AC34C("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "D", &H7D, var_86)
  loc_1A38951:       var_21C = Proc_6_98_11AC34C("Website: " & "www.kumaonindia.com * www.himalaya-holidays.com * www.indiatravelplan.com", "D", &H7D)
  loc_1A3895C:       Print 1, "D"
  loc_1A38972:       Print 1, var_A4
  loc_1A3897A:       var_86 = &HC
  loc_1A389F7:       var_178 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Guest Name :", &H3C, var_86)))
  loc_1A38A00:       var_188 = (Trim(MemVar_1F95138) + "|")
  loc_1A38A07:       var_1C8 = ("0.00" + Space(2))
  loc_1A38A10:       var_1D8 = (Trim(MemVar_1F9513C) + "Room #")
  loc_1A38A17:       var_218 = (CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + Space(&HA))
  loc_1A38A20:       var_234 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + "Reg #")
  loc_1A38A27:       var_254 = (Space(1) + Space(&HA))
  loc_1A38A30:       var_264 = ("0.00" + "Pax")
  loc_1A38A37:       var_284 = (Format(var_C4, "0.00") + Space(&HB))
  loc_1A38A40:       var_294 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + "Type")
  loc_1A38A47:       var_2B4 = (var_294 + Space(&HA))
  loc_1A38A50:       var_2C4 = (Space(1) + "Nation")
  loc_1A38A57:       var_2E4 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + Chr(&H12))
  loc_1A38A5D:       Print 1, Format(var_D4, "0.00")
  loc_1A38B66:       var_284 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A38BE7:       var_360 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A38C41:       var_418 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A38CC2:       var_518 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A38D1C:       var_5D0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A38DA9:       var_6E0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A38E1A:       var_7B8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A38E2C:       var_7E8 = Space(CLng((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2)))
  loc_1A38ED4:       var_8F8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A38F02:       var_188 = (CVar(" Mr " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Name")), 1), &H1F) & "|") + Space(1))
  loc_1A38F09:       var_1F8 = ("0.00" + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_D4))))
  loc_1A38F10:       var_234 = (Space(&HA) + Space(3))
  loc_1A38F17:       var_2B4 = (Space(1) + Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2))))
  loc_1A38F23:       var_2E4 = (Space(1) + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A38F2A:       var_3A0 = (Format(var_D4, "0.00") + Space(CLng((var_360 / 2))))
  loc_1A38F31:       var_458 = ((Space(CLng((Format(var_D4, "0.00") / 2))) = 0) + Space(CLng((Space(1) / 2))))
  loc_1A38F3D:       var_4A0 = (var_458 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A38F44:       var_558 = (var_4A0 + Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(var_4A0, "0.00")), &HA, 1)) / 2))))
  loc_1A38F4B:       var_610 = ("dd/mm/yy" + Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))))
  loc_1A38F52:       var_668 = (CVar(var_B4.Fields.Item("DepDate")) + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A38F59:       var_720 = (CVar(var_B4.Fields.Item("DepDate")) + Space(CLng((var_6E0 / 2))))
  loc_1A38F60:       var_7F8 = (var_720 + var_7E8)
  loc_1A38F67:       var_860 = (CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 1, 12)) + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A38F6E:       var_938 = (Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) + Space(CLng((var_8F8 / 2))))
  loc_1A38F74:       Print 1, var_938
  loc_1A390BB:       var_1A8 = CVar(vbNullString & Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A390C1:       var_1C8 = (var_1A8 + Left(var_A4, &H2C))
  loc_1A390C7:       Print 1, CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_D4))
  loc_1A39172:       var_2A4 = Chr(&H12)
  loc_1A39181:       var_178 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A39187:       var_188 = (var_178 + Chr(&HF))
  loc_1A3918E:       var_1C8 = (Left(var_A4, &H2C) + Space(2))
  loc_1A39197:       var_1D8 = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_D4)) + "R.Rate")
  loc_1A3919E:       var_218 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) + Space(&HE))
  loc_1A391A7:       var_234 = (Space(3) + "Arrival")
  loc_1A391AE:       var_254 = (Space(1) + Space(&HD))
  loc_1A391B7:       var_264 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A391BE:       var_284 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A391C7:       var_294 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + " Bill # ")
  loc_1A391CE:       var_2B4 = ((CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2) + var_2A4)
  loc_1A391D4:       Print 1, Space(1)
  loc_1A39252:       var_224 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_1A39280:       Proc_6_39_E7D3A0(var_178, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3929C:       var_1D8 = (6 - Len(Trim(CVar(CStr(var_178)))))
  loc_1A392D9:       Proc_6_39_E7D3A0(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A39309:       Proc_6_39_E7D3A0(var_2A4, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A39325:       var_2E4 = (10 - Len(Trim(CVar(CStr(var_2A4)))))
  loc_1A39358:       var_408 = 12
  loc_1A39393:       var_3C8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A39441:       var_4E8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A394AF:       var_5B0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A3955D:       var_6E0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A395AB:       var_778 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A39630:       var_860 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A3965E:       var_244 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) / 2))))
  loc_1A3966A:       var_284 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A39671:       var_330 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(CLng((Format(var_D4, "0.00") / 2))))
  loc_1A39678:       var_3F8 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A3967F:       var_458 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A39686:       var_538 = (var_458 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A3968D:       var_600 = ((CVar(Proc_6_52_EAE084(CStr(Format(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"), "0.00")), &HA, 1)) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A39694:       var_658 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A3969B:       var_720 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E0 / 2))))
  loc_1A396A2:       var_7B8 = (var_720 + Space(CLng((CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))) / 2))))
  loc_1A396A9:       var_820 = (Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_1A396B0:       var_8A8 = (CVar(var_B4.Fields.Item("CountryName")) + Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) / 2))))
  loc_1A396B6:       Print 1, Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA)
  loc_1A39794:       Print 1, Proc_6_45_EADFB8(" ", &H23, 1, 12, 1, 1, 1) & "|"
  loc_1A397AA:       Print 1, var_A4
  loc_1A39871:       var_178 = (CVar(Proc_6_45_EADFB8("Date", &HB, 12, 1)) + Space(1))
  loc_1A3987B:       var_1A8 = (var_178 + CVar(Proc_6_45_EADFB8("Bill/Vou#", 9, 12)))
  loc_1A39882:       var_1D8 = (Trim(CVar(CStr(var_178))) + Space(1))
  loc_1A3988C:       var_218 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) + CVar(Proc_6_45_EADFB8("Description", &H18, 1)))
  loc_1A39896:       var_244 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) / 2))) + CVar(Proc_6_52_EAE084("Debit", &HA)))
  loc_1A3989D:       var_264 = (Space(&HD) + Space(1))
  loc_1A398A7:       var_284 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAE084("Credit", &HA)))
  loc_1A398AE:       var_2A4 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A398B8:       var_2C4 = (var_2A4 + CVar(Proc_6_52_EAE084("Balance", &HB)))
  loc_1A398BE:       Print 1, Trim(CVar(CStr(var_2A4)))
  loc_1A3990D:       Print 1, var_A4
  loc_1A39915:       var_86 = &H17
  loc_1A39918:     End If
  loc_1A3991B:     var_B0.MoveNext
  loc_1A39920:     GoTo loc_1A37E2A
  loc_1A39923:     ' Referenced from: 1A39940
  loc_1A39923:   End If
  loc_1A39929:   If (var_86 <= &H32) Then
  loc_1A39931:     Print 1, vbNullString
  loc_1A3993D:     var_86 = (var_86 + 1)
  loc_1A39940:     GoTo loc_1A39923
  loc_1A39943:   End If
  loc_1A39948:   Print 1, var_A4
  loc_1A39954:   var_86 = (var_86 + 1)
  loc_1A39997:   var_178 = IIf((var_D4 < CDbl(0)), CVar(Proc_6_45_EADFB8("Refund: ", 8, var_86, var_86)), CVar(Proc_6_45_EADFB8("Charge: ", 8, var_86)))
  loc_1A39A2B:   var_1A8 = (var_178 + CVar(Proc_6_45_EADFB8(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise"), &H35)))
  loc_1A39A35:   var_1D8 = (Trim(CVar(CStr(var_178))) + CVar(Proc_6_45_EADFB8("TOTAL:", 6)))
  loc_1A39A3F:   var_244 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A39A45:   Print 1, Space(&HD)
  loc_1A39A87:   var_86 = (var_86 + 1)
  loc_1A39B03:   var_1C8 = CVar(Proc_6_45_EADFB8(CStr(Mid(CVar(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise")), &H36, var_178)), &H35, 1)) 'String
  loc_1A39B30:   var_1F8 = (Space(8) + IIf((Len(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_1C8))
  loc_1A39B36:   Print 1, "0.00"
  loc_1A39B6A:   var_86 = (var_86 + 1)
  loc_1A39BD3:   var_178 = (Space(&H3D) + CVar(Proc_6_45_EADFB8("NET  :", 6, var_86)))
  loc_1A39BDD:   var_1D8 = (var_178 + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A39BE3:   Print 1, IIf((Len(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A39C0B:   var_86 = (var_86 + 1)
  loc_1A39C23:   var_158 = (Space(&H3D) + "===================")
  loc_1A39C29:   Print 1, CVar(Proc_6_45_EADFB8("NET  :", 6, var_86))
  loc_1A39C3C:   var_86 = (var_86 + 1)
  loc_1A39C41:   var_86 = 0
  loc_1A39CBF:   var_940 = Proc_6_45_EADFB8("Payment ", 8, CDbl(0), var_86, var_86) & Proc_6_45_EADFB8("Cash", &HC, var_86) & "Company: " & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CompanyName")), 1)
  loc_1A39CC4:   Print 1, var_940
  loc_1A39D58:   var_93C = Proc_6_45_EADFB8("USER", 8) & Proc_6_45_EADFB8(MemVar_1F950C8, &HC) & "Contact: " & Proc_6_38_E69628(CVar(var_B4.Fields.Item("ContactPerson")), 1)
  loc_1A39D5D:   Print 1, var_93C
  loc_1A39D85:   Print 1, var_A4
  loc_1A39D91:   var_86 = (var_86 + 1)
  loc_1A39DCD:   var_178 = (Chr(&HF) + CVar(Proc_6_52_EAE084("Regardless of charge instructions I agree to be held", &H7B)))
  loc_1A39DD4:   var_1A8 = (var_178 + Chr(&H12))
  loc_1A39DDA:   Print 1, Format(CDbl(0), "0.00")
  loc_1A39E2E:   var_178 = (Chr(&HF) + CVar(Proc_6_52_EAE084("personally liable for payment of the total amount of this bill.", 134)))
  loc_1A39E35:   var_1A8 = (var_178 + Chr(&H12))
  loc_1A39E3B:   Print 1, Format(CDbl(0), "0.00")
  loc_1A39E82:   var_178 = (Chr(&HE) + Chr(&HF))
  loc_1A39E8B:   var_188 = (var_178 + "**May we request you to")
  loc_1A39E92:   var_1C8 = (Chr(&H12) + Chr(&H12))
  loc_1A39E98:   Print 1, CVar(Proc_6_52_EAE084(CStr(Format(CDbl(0), "0.00")), &HC, 1))
  loc_1A39EDA:   var_178 = (Chr(&HE) + Chr(&HF))
  loc_1A39EE3:   var_188 = (var_178 + " Return your room key**")
  loc_1A39EEA:   var_1C8 = (Chr(&H12) + Chr(&H12))
  loc_1A39EF0:   Print 1, CVar(Proc_6_52_EAE084(CStr(Format(CDbl(0), "0.00")), &HC, 1))
  loc_1A39F32:   var_178 = (Chr(&HF) + Space(&H64))
  loc_1A39F3B:   var_188 = (var_178 + "Guest Signature")
  loc_1A39F42:   var_1C8 = (Chr(&H12) + Chr(&H12))
  loc_1A39F48:   Print 1, CVar(Proc_6_52_EAE084(CStr(Format(CDbl(0), "0.00")), &HC, 1))
  loc_1A39F84:   Print 1, Proc_6_98_11AC34C("*THANKS FOR YOUR VISIT*", "A", &H4E)
  loc_1A39FA7:   Print 1, Chr(&HC)
  loc_1A39FB3:   var_E4.MoveNext
  loc_1A39FB8:   GoTo loc_1A36B86
  loc_1A39FBB: End If
  loc_1A39FBD: Close 1
  loc_1A39FC6: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A3A002: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_1A3A018: Close 1
  loc_1A3A022: If (MemVar_1F953BC = "Y") Then
  loc_1A3A03E:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A3A048: Else
  loc_1A3A061:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1A3A068: End If
  loc_1A3A068: Exit Sub
  loc_1A3A069: ' Referenced from: 1A36B10
  loc_1A3A06F: If (var_E8 = &HFF) Then
  loc_1A3A078:   unk_559760.RollbackTrans
  loc_1A3A07D: End If
  loc_1A3A07D: Proc_6_60_E63754(var_86)
  loc_1A3A082: Exit Sub
End Sub

Public Sub Proc_100_45_FBA0F8(arg_C) 'FBA0F8
  'Data Table: 55975C
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_144 As Variant
  Dim var_154 As String
  Dim var_16C As TextBox
  Dim var_208 As Variant
  loc_FB9FBB: Set var_90 = Me.Txt
  loc_FB9FC1: Call 0.Method_Proc_100_45_FBA0F80 (CInt(&HA), var_94)
  loc_FB9FD2: var_9C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" & var_94.Text
  loc_FBA022: var_144 = CVar(var_9C & " And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & ") Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all " 
  loc_FBA026: var_154 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_FBA03D: Set var_168 = Me.Txt
  loc_FBA043: Call 0.Method_Proc_100_45_FBA0F80 (CInt(&HA), var_16C)
  loc_FBA096: var_208 = var_144 & var_154 & CVar(var_16C.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_FBA0EF: var_88 = CStr(var_208 & CVar(arg_C) & ") Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all ")
  loc_FBA0F2: Proc_100_45_FBA0F8 = 
End Sub

Public Sub Proc_100_46_11183C4(arg_C) '11183C4
  'Data Table: 55975C
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
  loc_1118143: Set var_90 = Me.Txt
  loc_1118149: Call 0.Method_Proc_100_46_11183C40 (CInt(&HA), var_94)
  loc_111815A: var_9C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' as AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" & var_94.Text
  loc_11181A5: var_134 = ") AND PayCode not in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_11181AA: var_144 = CVar(var_9C & " And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & var_134 
  loc_11181AE: var_154 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_11181C5: Set var_168 = Me.Txt
  loc_11181CB: Call 0.Method_Proc_100_46_11183C40 (CInt(&HA), var_16C)
  loc_111821E: var_208 = var_144 & var_154 & CVar(var_16C.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" 
  loc_111822C: var_238 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_1118235: var_258 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_111824C: Set var_26C = Me.Txt
  loc_1118252: Call 0.Method_Proc_100_46_11183C40 (CInt(&HA), var_270)
  loc_11182A5: var_30C = var_208 & CVar(arg_C) & var_238 & var_258 & CVar(var_270.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_11182B3: var_33C = ") AND PayCode NOT in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_11182BC: var_35C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_11182D3: Set var_370 = Me.Txt
  loc_11182D9: Call 0.Method_Proc_100_46_11183C40 (CInt(&HA), var_374)
  loc_111832C: var_410 = var_30C & CVar(arg_C) & var_33C & var_35C & CVar(var_374.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_111833A: var_440 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_11183B9: var_88 = CStr(var_410 & CVar(arg_C) & var_440)
  loc_11183BC: Proc_100_46_11183C4 = 
End Sub

Public Sub Proc_100_47_F011F0
  'Data Table: 55975C
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim unk_559760 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_8C As Double
  loc_F0113E: Set var_94 = Me.Txt
  loc_F01144: Call 0.Method_Proc_100_47_F011F00 (CInt(&HA), var_98, var_9C, "Select Sum(AmtDr)-Sum(AmtCr) as AmtDr from Paycharge where folionodocid='")
  loc_F0114C: var_C4 = var_98.Tag
  loc_F01155: var_A0 = -1 & var_9C
  loc_F01165: unk_559760.Execute var_A0 & "' and (Modeset<>'S' or Modeset is Null) ", var_C8, 
  loc_F01170: Set var_90 = var_C8
  loc_F0119C: If (var_90.RecordCount > 0) Then
  loc_F011CA:   var_8C = CSng(var_90.Fields.Item("AmtDr").Value)
  loc_F011DA: Else
  loc_F011DD:   var_8C = CDbl(0)
  loc_F011E0: End If
  loc_F011E5: Set var_90 = Nothing
  loc_F011E8: Proc_100_47_F011F0 = var_8C
End Sub

Public Sub Proc_100_48_11550F8
  'Data Table: 55975C
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_128 As Variant
  Dim var_108 As Variant
  Dim var_E8 As MSHFlexGrid
  Dim var_138 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_E0 As Variant
  Dim var_148 As Long
  Dim var_17C As Variant
  Dim var_118 As Boolean
  Dim var_19C As Variant
  loc_1154D63: Set var_9C = Me.Txt
  loc_1154D69: Call 0.Method_Proc_100_48_11550F80 (CInt(&HA))
  loc_1154D92: If (Trim(CVar(var_A0)) = vbNullString) Then
  loc_1154D95:   Exit Sub
  loc_1154D96: End If
  loc_1154DBB: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_E4 'Integer
  loc_1154DC5:   Set var_E8 = Me.FGrid
  loc_1154DF4:   Proc_6_39_E7D3A0(var_E0, CVar(CStr(var_E8.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_86)))
  loc_1154DFC:   var_138 = (CVar(var_90) + var_E0)
  loc_1154E01:   var_90 = CSng(var_138)
  loc_1154E3B:   Proc_6_39_E7D3A0(var_E0, CVar(CStr(var_E8.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_86)))
  loc_1154E43:   var_138 = (CVar(var_98) + var_E0)
  loc_1154E48:   var_98 = CSng(var_138)
  loc_1154E5A:   var_108 = CVar(CLng(var_86)) 'Long
  loc_1154E62:   var_128 = CVar(CLng(5)) 'Long
  loc_1154E84:   var_B0 = CVar(Abs((var_90 - var_98))) 'Double
  loc_1154E94:   var_138 = CVar(CStr(Format(var_E8.TextMatrix), "0.00"))) 'String
  loc_1154E9B:   LateIdCallSt
  loc_1154EBA:   If (CDbl((var_90 - var_98)) > CDbl(0)) Then
  loc_1154EC1:     var_D0 = CVar(CLng(var_86)) 'Long
  loc_1154EC9:     var_108 = CVar(CLng(6)) 'Long
  loc_1154ECE:     var_128 = "Dr"
  loc_1154ED7:     LateIdCallSt
  loc_1154EE2:   Else
  loc_1154EEE:     If (CDbl((var_90 - var_98)) < CDbl(0)) Then
  loc_1154EF5:       var_D0 = CVar(CLng(var_86)) 'Long
  loc_1154EFD:       var_108 = CVar(CLng(6)) 'Long
  loc_1154F02:       var_128 = "Cr"
  loc_1154F0B:       LateIdCallSt
  loc_1154F16:     Else
  loc_1154F1A:       var_D0 = CVar(CLng(var_86)) 'Long
  loc_1154F22:       var_108 = CVar(CLng(6)) 'Long
  loc_1154F27:       var_128 = vbNullString
  loc_1154F30:       LateIdCallSt
  loc_1154F38:     End If
  loc_1154F38:   End If
  loc_1154F3A:   Set var_E8 = Nothing 
  loc_1154F41: Next var_E4 'Integer
  loc_1154F59: Me.FGrid.FixedRows = 1
  loc_1154F65: Set var_15C = Me.Fgrid1
  loc_1154F68: var_108 = 0
  loc_1154F74: var_128 = CVar(CLng(1)) 'Long
  loc_1154FA2: var_E0 = CVar(CStr(Format(var_90, "0.00"))) 'String
  loc_1154FA9: LateIdCallSt
  loc_1154FBA: var_108 = 0
  loc_1154FC6: var_128 = CVar(CLng(2)) 'Long
  loc_1154FF4: var_E0 = CVar(CStr(Format(var_98, "0.00"))) 'String
  loc_1154FFB: LateIdCallSt
  loc_115500C: var_108 = 0
  loc_1155018: var_128 = CVar(CLng(3)) 'Long
  loc_115503A: var_B0 = CVar(Abs((var_90 - var_98))) 'Double
  loc_115504A: var_138 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1155051: LateIdCallSt
  loc_1155064: var_148 = 0
  loc_1155070: var_17C = CVar(CLng(4)) 'Long
  loc_1155097: var_D0 = (CDbl((var_98 - var_90)) > CDbl(0))
  loc_11550BD: var_118 = (CDbl((var_90 - var_98)) > CDbl(0))
  loc_11550CD: var_19C = CVar(CStr(IIf(var_118, "Dr", IIf(var_98, "Cr", vbNullString)))) 'String
  loc_11550D4: LateIdCallSt
  loc_11550F1: Set var_15C = Nothing 
  loc_11550F5: Exit Sub
  loc_11550F6: Exit Sub
End Sub

Public Sub Proc_100_49_FD4E10
  'Data Table: 55975C
  Dim var_DC As TextBox
  Dim var_D8 As Variant
  loc_FD4C89: Set var_D8 = Me.TxteInvInfo
  loc_FD4C8F: Call 0.Method_Proc_100_49_FD4E100 (0, var_DC)
  loc_FD4C97: var_DC.Text = CStr(IIf((global_128 <> vbNullString), global_128, vbNullString))
  loc_FD4CEC: Set var_D8 = Me.TxteInvInfo
  loc_FD4CF2: Call 0.Method_Proc_100_49_FD4E100 (1, var_DC)
  loc_FD4CFA: var_DC.Text = CStr(IIf((global_132 <> vbNullString), global_132, vbNullString))
  loc_FD4D70: Set var_D8 = Me.TxteInvInfo
  loc_FD4D76: Call 0.Method_Proc_100_49_FD4E100 (2, var_DC, CStr(IIf((global_136 <> CDate("31/Dec/1899")), Format(global_136, "dd/mm/yyyy hh:nn:ss"), vbNullString)))
  loc_FD4D7E: var_DC.Text = 1
  loc_FD4DA5: If (global_128 <> vbNullString) Then
  loc_FD4DB4:   Me.FreInvInfo.Visible = True
  loc_FD4DBF: Else
  loc_FD4DCB:   Me.FreInvInfo.Visible = False
  loc_FD4DD3: End If
  loc_FD4DDE: If (global_128 <> vbNullString) Then
  loc_FD4DED:   Me.QrImage.Visible = True
  loc_FD4DF8: Else
  loc_FD4E04:   Me.QrImage.Visible = False
  loc_FD4E0C: End If
  loc_FD4E0C: Exit Sub
  loc_FD4E0D: ThisVCallI2
End Sub

Public Sub Proc_100_50_E696B0(arg_C) 'E696B0
  'Data Table: 55975C
  loc_E69670: If (arg_C <> vbNullString) Then
  loc_E6968C:   MsgBox("eInvoice already generated.", &H10, var_C8, var_E8, var_108)
  loc_E6969C:   Proc_100_50_E696B0 = 
  loc_E696A2: End If
  loc_E696A7: Proc_100_50_E696B0 = &HFF
End Sub
