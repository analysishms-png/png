VERSION 5.00
Begin VB.Form FrmHouGuestMsg
  Caption = "In House Guest Message"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmHouGuestMsg.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11520
  ClientHeight = 8880
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8430
    Width = 11520
    Height = 450
    Visible = 0   'False
    TabIndex = 53
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 8295
    Top = 5640
    Width = 510
    Height = 255
    Enabled = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
    MaxLength = 8
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
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRoom
    Left = 13140
    Top = 5640
    Width = 2160
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 7515
    Top = 5355
    Width = 1290
    Height = 255
    Enabled = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    MaxLength = 8
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 7515
    Top = 5070
    Width = 1290
    Height = 255
    Enabled = 0   'False
    TabIndex = 40
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 3615
    Top = 3750
    Width = 4245
    Height = 285
    Enabled = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    MaxLength = 8
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
    ForeColor = &H800000&
    Left = 12375
    Top = 4455
    Width = 3435
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 34
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 12375
    Top = 4170
    Width = 3435
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 33
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 12375
    Top = 3885
    Width = 3435
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 32
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 7515
    Top = 1530
    Width = 1170
    Height = 285
    Enabled = 0   'False
    TabIndex = 30
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
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 3615
    Top = 2490
    Width = 4245
    Height = 285
    TabIndex = 28
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
    ForeColor = &H800000&
    Left = 3615
    Top = 2805
    Width = 4245
    Height = 285
    TabIndex = 27
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
    ForeColor = &H800000&
    Left = 3615
    Top = 3120
    Width = 4245
    Height = 285
    TabIndex = 26
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
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 12090
    Top = 2715
    Width = 2820
    Height = 285
    Visible = 0   'False
    TabIndex = 25
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
    ForeColor = &H800000&
    Left = 3615
    Top = 3435
    Width = 4245
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 2055
    Top = 1860
    Width = 1425
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
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
    ForeColor = &H800000&
    Left = 2055
    Top = 1530
    Width = 1425
    Height = 285
    Enabled = 0   'False
    TabIndex = 0
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
    Index = 0
    Left = 12810
    Top = 3270
    Width = 420
    Height = 255
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 21
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 7515
    Top = 1845
    Width = 1170
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
    ForeColor = &H800000&
    Left = 2055
    Top = 5040
    Width = 4245
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 20
    BeginProperty Font
      Name = "Arial"
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 12375
    Top = 3600
    Width = 1170
    Height = 285
    Visible = 0   'False
    TabIndex = 5
    MaxLength = 11
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
    ForeColor = &H800000&
    Left = 2055
    Top = 5610
    Width = 4245
    Height = 1365
    TabIndex = 8
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 100
    BeginProperty Font
      Name = "Arial"
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 2055
    Top = 5325
    Width = 4245
    Height = 255
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Arial"
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &H800000&
    Left = 3615
    Top = 2175
    Width = 4245
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin MaskEdBox txtRecdTime
    Left = 8820
    Top = 5070
    Width = 735
    Height = 255
    TabIndex = 9
  End
  Begin MaskEdBox TxtArrTime
    Left = 8730
    Top = 1845
    Width = 795
    Height = 285
    TabIndex = 42
  End
  Begin MaskEdBox TxtDepTime
    Left = 13545
    Top = 3600
    Width = 735
    Height = 285
    Visible = 0   'False
    TabIndex = 43
  End
  Begin MSFlexGrid FGPoint
    Left = 10995
    Top = 7500
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 46
  End
  Begin BtnEnh CmdExit
    Left = 6225
    Top = 7215
    Width = 1275
    Height = 1050
    TabIndex = 51
  End
  Begin BtnEnh BtnEnh1
    Left = 2325
    Top = 7230
    Width = 1350
    Height = 1050
    TabIndex = 52
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 15
    Width = 180
    Height = 540
    TabIndex = 50
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
  Begin Label LblName
    Caption = "(Y)es/(N)o"
    Index = 2
    ForeColor = &HC0&
    Left = 8850
    Top = 5640
    Width = 825
    Height = 225
    TabIndex = 49
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
    Caption = "Message Delivered"
    Index = 0
    ForeColor = &H800000&
    Left = 6465
    Top = 5655
    Width = 1620
    Height = 225
    TabIndex = 48
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
    Caption = "Caller Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 555
    Top = 4410
    Width = 10335
    Height = 375
    TabIndex = 45
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
    Caption = "Room Details"
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 540
    Top = 765
    Width = 10350
    Height = 375
    TabIndex = 44
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
    Caption = "Status"
    Index = 1
    ForeColor = &H800000&
    Left = 2235
    Top = 3795
    Width = 555
    Height = 285
    TabIndex = 39
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
    Index = 7
    ForeColor = &H800000&
    Left = 11295
    Top = 3900
    Width = 930
    Height = 225
    Visible = 0   'False
    TabIndex = 38
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
    Index = 8
    ForeColor = &H800000&
    Left = 11295
    Top = 4185
    Width = 930
    Height = 225
    Visible = 0   'False
    TabIndex = 37
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
    ForeColor = &H800000&
    Left = 11295
    Top = 4470
    Width = 930
    Height = 225
    Visible = 0   'False
    TabIndex = 36
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
    Caption = "Folio No"
    Index = 6
    ForeColor = &H800000&
    Left = 6705
    Top = 1545
    Width = 660
    Height = 285
    TabIndex = 31
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
    ForeColor = &H800000&
    Left = 2235
    Top = 2505
    Width = 720
    Height = 285
    TabIndex = 29
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
    Caption = "Company Name"
    Index = 6
    ForeColor = &H800000&
    Left = 2235
    Top = 3465
    Width = 1335
    Height = 225
    TabIndex = 24
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H800000&
    Left = 13500
    Top = 2055
    Width = 630
    Height = 285
    Visible = 0   'False
    TabIndex = 23
    Alignment = 1 'Right Justify
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
    Caption = "Sr.No"
    Index = 1
    ForeColor = &H800000&
    Left = 780
    Top = 1530
    Width = 465
    Height = 285
    TabIndex = 22
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
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 12180
    Top = 3285
    Width = 585
    Height = 225
    Visible = 0   'False
    TabIndex = 21
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
    Caption = "Arrival Date"
    Index = 13
    ForeColor = &H800000&
    Left = 6375
    Top = 1860
    Width = 990
    Height = 285
    TabIndex = 20
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
    Caption = "Recd.Date"
    Index = 16
    ForeColor = &H800000&
    Left = 6570
    Top = 5055
    Width = 870
    Height = 225
    TabIndex = 19
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
    Caption = "User Name"
    Index = 18
    ForeColor = &H800000&
    Left = 6555
    Top = 5370
    Width = 945
    Height = 225
    TabIndex = 18
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
    Caption = "Tel./Mobil No."
    Index = 15
    ForeColor = &H800000&
    Left = 720
    Top = 5040
    Width = 1110
    Height = 225
    TabIndex = 17
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
    Caption = "Dep.Date"
    Index = 14
    ForeColor = &H800000&
    Left = 11310
    Top = 3615
    Width = 765
    Height = 225
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Guest Message"
    Index = 8
    ForeColor = &H800000&
    Left = 720
    Top = 5610
    Width = 1320
    Height = 225
    TabIndex = 15
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
    Caption = "Caller Name"
    Index = 7
    ForeColor = &H800000&
    Left = 720
    Top = 5325
    Width = 1035
    Height = 225
    TabIndex = 14
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
    Caption = "Guest Name"
    Index = 5
    ForeColor = &H800000&
    Left = 2235
    Top = 2145
    Width = 1035
    Height = 225
    TabIndex = 13
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
    Caption = "Room No."
    Index = 3
    ForeColor = &H800000&
    Left = 780
    Top = 1845
    Width = 810
    Height = 285
    TabIndex = 10
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
End

Attribute VB_Name = "FrmHouGuestMsg"

Private global_88 As Long

Private Sub FGPoint_UnknownEvent_9 'E33A84
  'Data Table: 490DEC
  loc_E33A78: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_E33A7B:   Call DGRoom_UnknownEvent_9()
  loc_E33A80: End If
  loc_E33A80: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEAD98
  'Data Table: 490DEC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEABCE: Set var_88 = Me.Txt
  loc_FEABD4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEABE2: Proc_6_74_E23240(var_8C)
  loc_FEABEE: Call Proc_38_35_E85F20(var_8C)
  loc_FEABF6: var_92 = Index
  loc_FEAC01: If (var_92 = CInt(2)) Then
  loc_FEAC1B:   If (Me.RecordCount > 0) Then
  loc_FEAC29:     Set var_8C = Me.FGPoint
  loc_FEAC41:     Proc_6_137_1192FDC(Me.DGRoom, global_84, Index)
  loc_FEAC4F:   End If
  loc_FEAC9D:   Set var_88 = Me.Txt
  loc_FEACA3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEACAB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEACC3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEACC6:     Exit Sub
  loc_FEACC7:   End If
  loc_FEACD4:   Set var_88 = Me.Txt
  loc_FEACDA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEACE2:   var_A0 = var_8C.Text
  loc_FEACF4:   var_B0 = "RoomNo"
  loc_FEAD2F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEAD38:     Me.MoveFirst
  loc_FEAD5B:     Set var_88 = Me.Txt
  loc_FEAD61:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEAD69:     0 = var_8C.Text
  loc_FEAD82:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEAD97:   End If
  loc_FEAD97: End If
  loc_FEAD97: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1039A34
  'Data Table: 490DEC
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_10397F3: var_86 = Shift
  loc_1039800: If (CLng(Shift) = &H1B) Then
  loc_1039803:   Call Proc_38_35_E85F20(var_86)
  loc_1039808:   Exit Sub
  loc_1039809: End If
  loc_103980C: var_88 = KeyCode
  loc_1039817: If (var_88 = CInt(2)) Then
  loc_1039837:   Set var_A0 = Me.FGPoint
  loc_1039842:   Set var_9C = Nothing
  loc_1039874:   Proc_6_69_134A630(Me.DGRoom, Me.Txt, CInt(2), global_84, Shift, 0)
  loc_10398E3:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10398EA:     Set var_9C = Me.DGRoom
  loc_1039909:     Proc_6_138_106E830(var_9C, global_84, KeyCode, Me.FGPoint, 1)
  loc_1039917:   End If
  loc_1039917: End If
  loc_1039933: If (CBool(Me.DGRoom.Visible) = 0) Then
  loc_1039954:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(9))) Then
  loc_103995D:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_1039962:   End If
  loc_1039966:   Set var_8C = Me.TopCtrl1
  loc_103996C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_103998E:   If ((CStr(0) = "Add") And (KeyCode <> CInt(2))) Then
  loc_10399A6:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10399AF:       Proc_6_76_E533C8(Shift, arg_14)
  loc_10399B4:     End If
  loc_10399B7:   Else
  loc_10399BB:     Set var_8C = Me.TopCtrl1
  loc_10399C1:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_88)
  loc_10399E3:     If ((CStr() = "Edit") And (KeyCode <> CInt(8))) Then
  loc_10399FB:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1039A04:         Proc_6_76_E533C8(Shift)
  loc_1039A09:       End If
  loc_1039A09:     End If
  loc_1039A09:   End If
  loc_1039A27:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_1039A2D:     Call Proc_38_36_EE2C58(KeyCode)
  loc_1039A32:   End If
  loc_1039A32: End If
  loc_1039A32: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FA4CA0
  'Data Table: 490DEC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As DataGrid
  Dim var_94 As Variant
  loc_FA4B20: On Error Goto loc_FA4C97
  loc_FA4B29: Proc_6_133_E7FB08(var_94)
  loc_FA4B32: arg_10 = CInt(var_94)
  loc_FA4B3B: Proc_6_58_E06050(arg_10, arg_10)
  loc_FA4B43: var_96 = KeyAscii
  loc_FA4B4E: If (var_96 = CInt(&H15)) Then
  loc_FA4B7A:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_FA4B8A:     Set var_CC = Me.Txt
  loc_FA4B90:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_FA4B98:     var_D0.Text = var_96
  loc_FA4BA7:   Else
  loc_FA4BD0:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_FA4BE0:       Set var_CC = Me.Txt
  loc_FA4BE6:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_FA4BEE:       var_D0.Text = "No"
  loc_FA4BFA:     End If
  loc_FA4BFA:   End If
  loc_FA4BFC:   arg_10 = 0
  loc_FA4C02: Else
  loc_FA4C0A:   If (var_96 = CInt(2)) Then
  loc_FA4C29:     If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FA4C3B:       var_D4 = "RoomNo"
  loc_FA4C56:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_84, arg_10)
  loc_FA4C88:       Proc_6_138_106E830(Me.DGRoom, global_84, KeyAscii, Me.FGPoint)
  loc_FA4C96:     End If
  loc_FA4C96:   End If
  loc_FA4C96: End If
  loc_FA4C96: Exit Sub
  loc_FA4C97: ' Referenced from: FA4B20
  loc_FA4C97: Proc_6_60_E63754(var_D4, 0)
  loc_FA4C9C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF604
  'Data Table: 490DEC
  Dim var_86 As Integer
  loc_DFF5FF: var_86 = KeyCode
  loc_DFF602: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49D24
  'Data Table: 490DEC
  loc_E49D02: Set var_88 = Me.Txt
  loc_E49D08: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49D16: Proc_6_73_E23294(var_8C)
  loc_E49D22: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1424438
  'Data Table: 490DEC
  Dim var_8A As Integer
  Dim var_D4 As String
  Dim var_94 As Variant
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_E8 As String
  Dim var_100 As TextBox
  Dim var_110 As String
  Dim var_B4 As Variant
  Dim unk_490DF2 As Connection15
  Dim var_88 As Recordset15
  Dim var_FC As MaskEdBox
  loc_142399F: var_8A = Cancel
  loc_14239AA: If (var_8A = CInt(&H15)) Then
  loc_14239B7:   Set var_90 = Me.Txt
  loc_14239BD:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14239E4:   var_D4 = "Y"
  loc_14239F8:   If (Ucase(Left(CVar(var_94), 1)) = var_D4) Then
  loc_1423A08:     Set var_90 = Me.Txt
  loc_1423A0E:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1423A16:     var_94.Text = "Yes"
  loc_1423A25:   Else
  loc_1423A32:     Set var_90 = Me.Txt
  loc_1423A38:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1423A40:     var_94.Text = "No"
  loc_1423A4C:   End If
  loc_1423A4F: Else
  loc_1423A57:   If (var_8A = CInt(2)) Then
  loc_1423A66:     If (global_88 = 1) Then
  loc_1423A87:       Set var_90 = Me.Txt
  loc_1423A8D:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_E8, "roomno='")
  loc_1423A95:       0 = var_94.Text
  loc_1423AAE:       Me.Find 1 & var_E8 & "'", var_D4, var_8A
  loc_1423AC3:     End If
  loc_1423B11:     Set var_90 = Me.Txt
  loc_1423B17:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1423B37:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1423B47:       Set var_90 = Me.Txt
  loc_1423B4D:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1423B55:       var_94.Text = vbNullString
  loc_1423B6E:       Set var_90 = Me.Txt
  loc_1423B74:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1423B7C:       var_94.Tag = vbNullString
  loc_1423B8B:     Else
  loc_1423BC7:       Set var_FC = Me.Txt
  loc_1423BCD:       Call 0.Method_Txt_Validate0 (CInt(2), var_100)
  loc_1423BD5:       var_100.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_1423C2D:       Call 0.Method_Txt_Validate0 (CInt(2), var_100)
  loc_1423C35:       var_100.Tag = CStr(Me.Fields.Item("Type").Value)
  loc_1423C7F:       global_68 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_1423C9D:       var_110 = "SELECT GF.Name,GF.Company,RO.FolioNo,RO.GuestProf,RO.ChkInDate, RO.ChkInTime, RO.DepDate, RO.DepTime, GuestProf.Add1, GuestProf.Add2, SubGroup.Name AS CompanyName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, GuestStat.Name AS GuestStatus, City.CityName, RoomCat.Name as RoomCat FROM ((((GuestProf RIGHT JOIN (RoomOcc AS RO LEFT JOIN GuestFolio AS GF ON RO.FolioNo = GF.FolioNo) ON GuestProf.Code = GF.GuestProf) LEFT JOIN SubGroup ON GF.Company = SubGroup.SubCode) LEFT JOIN GuestStat ON GuestProf.GuestStatus = GuestStat.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN RoomCat ON RO.RoomCat=RoomCat.Code Where RoomNo='"
  loc_1423CCF:       var_B4 = var_110 & Me.Fields.Item("RoomNo").Value 
  loc_1423CE6:       unk_490DF2.Execute CStr(var_B4 & "' And ChkOutDate is Null"), var_E4, -1
  loc_1423CF1:       Set var_88 = Me.Txt
  loc_1423D1F:       If (var_88.RecordCount > 0) Then
  loc_1423D58:         Set var_FC = Me.Txt
  loc_1423D5E:         Call 0.Method_Txt_Validate0 (CInt(3), var_100)
  loc_1423D66:         var_100.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")))
  loc_1423DA0:         Proc_6_39_E7D3A0(var_B4, CVar(var_88.Fields.Item("FolioNo")))
  loc_1423DB7:         Set var_FC = Me.Txt
  loc_1423DBD:         Call 0.Method_Txt_Validate0 (CInt(&HC), var_100)
  loc_1423DC5:         var_100.Text = CStr(var_B4)
  loc_1423E13:         Set var_FC = Me.Txt
  loc_1423E19:         Call 0.Method_Txt_Validate0 (CInt(4), var_100)
  loc_1423E21:         var_100.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("Company")))
  loc_1423E6B:         Set var_FC = Me.Txt
  loc_1423E71:         Call 0.Method_Txt_Validate0 (CInt(4), var_100)
  loc_1423E79:         var_100.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyName")))
  loc_1423EC3:         Set var_FC = Me.Txt
  loc_1423EC9:         Call 0.Method_Txt_Validate0 (CInt(&HE), var_100)
  loc_1423ED1:         var_100.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments1")))
  loc_1423F1B:         Set var_FC = Me.Txt
  loc_1423F21:         Call 0.Method_Txt_Validate0 (CInt(&HF), var_100)
  loc_1423F29:         var_100.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments2")))
  loc_1423F73:         Set var_FC = Me.Txt
  loc_1423F79:         Call 0.Method_Txt_Validate0 (CInt(&H10), var_100)
  loc_1423F81:         var_100.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments3")))
  loc_1423FCB:         Set var_FC = Me.Txt
  loc_1423FD1:         Call 0.Method_Txt_Validate0 (CInt(&H11), var_100)
  loc_1423FD9:         var_100.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_1424023:         Set var_FC = Me.Txt
  loc_1424029:         Call 0.Method_Txt_Validate0 (CInt(&H12), var_100)
  loc_1424031:         var_100.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")))
  loc_142407B:         Set var_FC = Me.Txt
  loc_1424081:         Call 0.Method_Txt_Validate0 (CInt(&H14), var_100)
  loc_1424089:         var_100.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_14240D3:         Set var_FC = Me.Txt
  loc_14240D9:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_100)
  loc_14240E1:         var_100.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GuestStatus")))
  loc_142412E:         Set var_FC = Me.Txt
  loc_1424134:         Call 0.Method_Txt_Validate0 (CInt(5), var_100)
  loc_142413C:         var_100.Text = CStr(var_88.Fields.Item("ChkInDate").Value)
  loc_142418B:         Me.TxtArrTime.defaultText = CVar(CStr(var_88.Fields.Item("ChkInTime").Value))
  loc_14241D9:         Set var_FC = Me.Txt
  loc_14241DF:         Call 0.Method_Txt_Validate0 (CInt(6), var_100)
  loc_14241E7:         var_100.Text = CStr(var_88.Fields.Item("DepDate").Value)
  loc_1424236:         Me.TxtDepTime.defaultText = CVar(CStr(var_88.Fields.Item("DepTime").Value))
  loc_142427C:         global_72 = CStr(var_88.Fields.Item("GuestProf").Value)
  loc_14242E3:         var_94 = var_88.Fields.Item("RoomCat")
  loc_1424302:         Set var_FC = Me.Txt
  loc_1424308:         Call 0.Method_Txt_Validate0 (CInt(&H13), var_100, CStr(var_94.Value))
  loc_1424310:         var_100.Text = CLng(var_88.Fields.Item("FolioNo").Value)
  loc_1424329:       Else
  loc_1424337:         Set var_90 = Me.Txt
  loc_142433D:         Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_1424345:         var_94.Text = vbNullString
  loc_142435F:         Set var_90 = Me.Txt
  loc_1424365:         Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_142436D:         var_94.Text = vbNullString
  loc_1424387:         Set var_90 = Me.Txt
  loc_142438D:         Call 0.Method_Txt_Validate0 (CInt(5), var_94)
  loc_1424395:         var_94.Text = vbNullString
  loc_14243B1:         Me.TxtArrTime.defaultText = vbNullString
  loc_14243C7:         Set var_90 = Me.Txt
  loc_14243CD:         Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_14243D5:         var_94.Text = vbNullString
  loc_14243F1:         Me.TxtDepTime.defaultText = vbNullString
  loc_14243FF:         global_72 = vbNullString
  loc_142441C:         Set var_90 = Me.Txt
  loc_1424422:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_94, vbNullString)
  loc_142442A:         var_94.Text = 0
  loc_1424436:       End If
  loc_1424436:     End If
  loc_1424436:   End If
  loc_1424436: End If
  loc_1424436: Exit Sub
End Sub

Private Sub BtnEnh1_UnknownEvent_9 '13B6198
  'Data Table: 490DEC
  Dim var_86 As Integer
  Dim unk_490DF2 As Connection15
  Dim var_A0 As TextBox
  Dim var_B0 As String
  Dim var_A4 As Variant
  Dim var_F4 As TextBox
  Dim var_610 As Double
  Dim var_C4 As Variant
  Dim var_15C As Variant
  Dim var_1E4 As TextBox
  Dim var_E0 As String
  Dim var_114 As Variant
  Dim var_320 As Variant
  Dim var_488 As Variant
  Dim var_A8 As String
  Dim var_8C As Recordset15
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  loc_13B5980: On Error Goto loc_13B617E
  loc_13B5986: Call Proc_38_31_F917CC(var_96)
  loc_13B5991: If (var_96 = 0) Then
  loc_13B5994:   Exit Sub
  loc_13B5995: End If
  loc_13B59A0: Set var_9C = Me.Txt
  loc_13B59A6: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2))
  loc_13B59CF: If (Proc_6_27_EA61EC(var_A0, "Room No") = 0) Then
  loc_13B59D2:   Exit Sub
  loc_13B59D3: End If
  loc_13B59DE: Set var_9C = Me.Txt
  loc_13B59E4: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(7), var_A0)
  loc_13B59EC: var_A8 = "Caller Name"
  loc_13B59F5: Set var_A4 = var_A0
  loc_13B5A0D: If (Proc_6_27_EA61EC(var_A4, var_A8) = 0) Then
  loc_13B5A10:   Exit Sub
  loc_13B5A11: End If
  loc_13B5A1F: unk_490DF2.BeginTrans var_AC
  loc_13B5A42: Set var_9C = Me.Txt
  loc_13B5A48: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_A0, var_A8, "Delete From GuestMessage Where DocID='", var_D4)
  loc_13B5A50: -1 = var_A0.Text
  loc_13B5A69: unk_490DF2.Execute var_A4 & var_A8 & "'", &HFF, var_A0
  loc_13B5A91: Set var_9C = Me.Txt
  loc_13B5A97: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_A0)
  loc_13B5AC4: Set var_F0 = Me.Txt
  loc_13B5ACA: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_F4)
  loc_13B5ADF: var_610 = Val(var_F4.Text)
  loc_13B5AF0: Proc_6_7_F26918(var_D4, global_64)
  loc_13B5B00: Set var_148 = Me.Txt
  loc_13B5B06: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_14C)
  loc_13B5B0E: var_15C = CVar(var_14C) 'Address
  loc_13B5B15: Proc_6_17_EAAE40(var_16C, var_15C)
  loc_13B5B28: Set var_1E0 = Me.Txt
  loc_13B5B2E: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_1E4)
  loc_13B5B44: Proc_6_17_EAAE40(var_208, CVar(var_1E4.Tag))
  loc_13B5B54: Set var_23C = Me.Txt
  loc_13B5B5A: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(7), var_240)
  loc_13B5B69: Proc_6_17_EAAE40(var_260, CVar(var_240))
  loc_13B5B79: Set var_294 = Me.Txt
  loc_13B5B7F: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(8), var_298)
  loc_13B5B8E: Proc_6_17_EAAE40(var_2B8, CVar(var_298))
  loc_13B5B9E: Set var_2EC = Me.Txt
  loc_13B5BA4: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(9), var_2F0)
  loc_13B5BB3: Proc_6_17_EAAE40(var_310, CVar(var_2F0))
  loc_13B5BC3: Set var_344 = Me.Txt
  loc_13B5BC9: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_348)
  loc_13B5BD8: Proc_6_7_F26918(var_368, CVar(var_348))
  loc_13B5BE8: Proc_6_17_EAAE40(var_3B8, CVar(Me.txtRecdTime))
  loc_13B5BFB: Proc_6_7_F26918(var_4C8, Date)
  loc_13B5C04: Set var_4FC = Me.TopCtrl1
  loc_13B5C0A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_610)
  loc_13B5C55: var_B0 = "Insert Into GuestMessage (DocID,VType,VPrefix,Site_Code,VNo,VDate,RoomNo,RoomCat,RoomType,Caller,Telephone,Message,RecdDate,RecdTime,GuestProf,FolioNo,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A0.Text
  loc_13B5C9C: var_114 = CVar(var_B0 & "','" & global_60 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_610) & ",") 'String
  loc_13B5D08: var_320 = var_114 & var_D4 & "," & var_16C & ",'" & CVar(global_68) & "'," & var_208 & "," & var_260 & "," & var_2B8 & "," & var_310 
  loc_13B5D68: var_488 = var_320 & "," & var_368 & "," & var_3B8 & ",'" & CVar(global_72) & "'," & CVar(global_76) & ",'" & CVar(MemVar_1F950C8) 
  loc_13B5DB2: unk_490DF2.Execute CStr(var_488 & "'," & var_4C8 & ",'" & IIf((CStr(var_50C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_604, -1
  loc_13B5E6A: Set var_9C = Me.TopCtrl1
  loc_13B5E70: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_608)
  loc_13B5E89: If (CStr() = "Add") Then
  loc_13B5EA0:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_13B5EC6:   var_114 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_13B5ED7:   Proc_6_7_F26918(var_D4, global_64, var_114)
  loc_13B5EF6:   unk_490DF2.Execute CStr(var_15C & var_D4 & " Order By VP.Date_From DESC"), -1, var_9C
  loc_13B5F01:   Set var_8C = var_9C
  loc_13B5F37:   If (var_8C.RecordCount > 0) Then
  loc_13B5F48:     Set var_9C = Me.Txt
  loc_13B5F4E:     Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_A0)
  loc_13B5F56:     var_A8 = var_A0.Text
  loc_13B5F63:     var_610 = Val(var_A8)
  loc_13B5F69:     var_C4 = "Date_From"
  loc_13B5F8C:     Proc_6_7_F26918(var_114, CVar(var_8C.Fields.Item(var_C4)))
  loc_13B5FBF:     var_E0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_610) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_13B5FF2:     unk_490DF2.Execute CStr(CVar(var_E0 & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_114), var_15C, -1
  loc_13B6026:   End If
  loc_13B6026: End If
  loc_13B602C: unk_490DF2.CommitTrans
  loc_13B603F: Set var_9C = Me.Txt
  loc_13B6045: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_A0, var_A8)
  loc_13B604D: var_F4 = var_A0.Text
  loc_13B6061: var_86 = 0
  loc_13B606F: Me.Requery -1
  loc_13B6099: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_13B60A9: Set var_9C = Me.TopCtrl1
  loc_13B60AF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_13B60C8: If (CStr(var_86) = "Add") Then
  loc_13B60CB:   Call TopCtrl1_UnknownEvent_A()
  loc_13B60D0:   Exit Sub
  loc_13B60D1: End If
  loc_13B60F4: Call Proc_38_34_10D382C(Proc_5_1_100EC1C("INI", Me), global_80)
  loc_13B6108: Set var_9C = Me.TopCtrl1
  loc_13B610E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_13B611F: Set var_9C = Me.TopCtrl1
  loc_13B6125: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_13B6136: Set var_9C = Me.TopCtrl1
  loc_13B613C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_13B614D: Set var_9C = Me.TopCtrl1
  loc_13B6153: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_13B615B: Call Proc_38_32_F2BCF4(var_610)
  loc_13B6165: Set var_8C = Nothing
  loc_13B6175: Me.TopCtrl1.Unload Me
  loc_13B617D: Exit Sub
  loc_13B617E: ' Referenced from: 13B5980
  loc_13B6184: If (var_86 = &HFF) Then
  loc_13B618D:   unk_490DF2.RollbackTrans
  loc_13B6192: End If
  loc_13B6192: Proc_6_60_E63754()
  loc_13B6197: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3EEB4
  'Data Table: 490DEC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3EDAB: Me.DGRoom.Visible = False
  loc_F3EDCA: If (Me.RecordCount > 0) Then
  loc_F3EE09:   Set var_B4 = Me.Txt
  loc_F3EE0F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3EE17:   var_B8.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_F3EE4A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F3EE69:   Set var_B4 = Me.Txt
  loc_F3EE6F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3EE77:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3EE8D: End If
  loc_F3EE98: Set var_A8 = Me.Txt
  loc_F3EE9E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2))
  loc_F3EEA6: var_B0.SetFocus
  loc_F3EEB2: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA0BA0
  'Data Table: 490DEC
  Dim var_A8 As Variant
  loc_EA0B24: Set var_88 = Me.DGRoom
  loc_EA0B4E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA0B56: Set var_BC = Me.DGRoom
  loc_EA0B90: Proc_6_138_106E830(Me.DGRoom, global_84, 0, Me.FGPoint)
  loc_EA0B9E: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1A904
  'Data Table: 490DEC
  Dim arg_74FF As Double
  loc_E1A8F9: Me.Global.Unload Me
  loc_E1A901: Exit Sub
  loc_E1A902: arg_74FF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FBAAFC
  'Data Table: 490DEC
  Dim var_B4 As TextBox
  Dim var_88 As String
  Dim var_8C As MaskEdBox
  loc_FBA958: On Error Goto loc_FBAAF6
  loc_FBA970: var_88 = "ADD"
  loc_FBA97E: Call Proc_38_34_10D382C(Proc_5_1_100EC1C(var_88, Me))
  loc_FBA992: Set var_8C = Me.TopCtrl1
  loc_FBA998: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_FBA9A9: Set var_8C = Me.TopCtrl1
  loc_FBA9AF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_FBA9C0: Set var_8C = Me.TopCtrl1
  loc_FBA9C6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_FBA9D7: Set var_8C = Me.TopCtrl1
  loc_FBA9DD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_FBA9E5: Call Proc_38_32_F2BCF4(global_80)
  loc_FBA9F0: Call Proc_38_37_1148804(MemVar_1F95044)
  loc_FBAA03: Set var_8C = Me.Txt
  loc_FBAA09: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_B4)
  loc_FBAA11: var_B4.Text = var_88
  loc_FBAA5A: Set var_8C = Me.Txt
  loc_FBAA60: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_B4, CStr(Format(Date, "DD/MM/YYYY")))
  loc_FBAA68: var_B4.Text = 1
  loc_FBAABA: Me.txtRecdTime.defaultText = CVar(CStr(Format(Time, "HH:MM")))
  loc_FBAADB: Set var_8C = Me.Txt
  loc_FBAAE1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_B4, MemVar_1F950C8, 1)
  loc_FBAAE9: var_B4.Text = 1
  loc_FBAAF5: Exit Sub
  loc_FBAAF6: ' Referenced from: FBA958
  loc_FBAAF6: Proc_6_60_E63754(1)
  loc_FBAAFB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F05578
  'Data Table: 490DEC
  loc_F054A0: On Error Goto loc_F05572
  loc_F054DA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F05500:   Call Proc_38_34_10D382C(Proc_5_1_100EC1C("INI", Me))
  loc_F05514:   Set var_10C = Me.TopCtrl1
  loc_F0551A:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_F0552B:   Set var_10C = Me.TopCtrl1
  loc_F05531:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_F05542:   Set var_10C = Me.TopCtrl1
  loc_F05548:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_F05559:   Set var_10C = Me.TopCtrl1
  loc_F0555F:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_F05567:   Call Proc_38_35_E85F20(global_80)
  loc_F0556C:   Call Proc_38_32_F2BCF4()
  loc_F05571: End If
  loc_F05571: Exit Sub
  loc_F05572: ' Referenced from: F054A0
  loc_F05572: Proc_6_60_E63754()
  loc_F05577: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '110FE94
  'Data Table: 490DEC
  Dim var_96 As Integer
  Dim unk_490DF2 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_110FB7C: On Error Goto loc_110FE3C
  loc_110FB8D: If (Proc_183_56_FE8B08(global_80) = &HFF) Then
  loc_110FB90:   Exit Sub
  loc_110FB91: End If
  loc_110FBC8: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_110FBD9:   unk_490DF2.BeginTrans var_11C
  loc_110FBEF:   var_94 = Me.Bookmark 'Variant
  loc_110FC11:   Set var_120 = Me.Txt
  loc_110FC17:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From GuestMessage Where DocID='")
  loc_110FC1F:   var_B8 = var_124.Text
  loc_110FC28:   var_12C = -1 & var_128
  loc_110FC38:   unk_490DF2.Execute var_12C & "'", var_134, &HFF
  loc_110FC60:   Set var_120 = Me.Txt
  loc_110FC66:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_110FC78:   var_168 = 0
  loc_110FC8B:   var_160 = 0
  loc_110FC96:   var_15C = 0
  loc_110FCA9:   var_154 = 0
  loc_110FCB4:   var_150 = 0
  loc_110FCC7:   var_148 = 0
  loc_110FD06:   var_128 = "GuestMessage"
  loc_110FD0F:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_110FD3A:   unk_490DF2.CommitTrans
  loc_110FD41:   var_96 = 0
  loc_110FD4F:   Me.Requery -1
  loc_110FD5F:   Me.Requery -1
  loc_110FD7F:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_110FD8C:     Me.Bookmark = var_94
  loc_110FD94:   Else
  loc_110FDA8:     If (Me.EOF = 0) Then
  loc_110FDB1:       Me.MoveLast
  loc_110FDB6:     End If
  loc_110FDB6:   End If
  loc_110FDB6:   Call Proc_38_32_F2BCF4(var_96, var_148, 0, var_150, var_154)
  loc_110FDD7:   Proc_5_0_1107AD0(&HFF, Me, global_80, 0)
  loc_110FDE8:   Set var_120 = Me.TopCtrl1
  loc_110FDEE:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_110FDFF:   Set var_120 = Me.TopCtrl1
  loc_110FE05:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_110FE16:   Set var_120 = Me.TopCtrl1
  loc_110FE1C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_110FE2D:   Set var_120 = Me.TopCtrl1
  loc_110FE33:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_110FE3B: End If
  loc_110FE3B: Exit Sub
  loc_110FE3C: ' Referenced from: 110FB7C
  loc_110FE42: If (var_96 = &HFF) Then
  loc_110FE4B:   unk_490DF2.RollbackTrans
  loc_110FE50: End If
  loc_110FE58: Set var_120 = Err()
  loc_110FE5E: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_110FE7F: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_110FE92: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6290C
  'Data Table: 490DEC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F627E8: On Error Goto loc_F628C6
  loc_F627F9: If (Proc_183_55_FE8490(global_80) = &HFF) Then
  loc_F627FC:   Exit Sub
  loc_F627FD: End If
  loc_F62814: If (Me.RecordCount > 0) Then
  loc_F6282C:   var_8C = "EDIT"
  loc_F6283A:   Call Proc_38_34_10D382C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F62852:   Set var_90 = Me.Txt
  loc_F62858:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_F62860:   var_98.Enabled = False
  loc_F6286F: Else
  loc_F62890:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F628A0: End If
  loc_F628AB: Set var_90 = Me.Txt
  loc_F628B1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_98)
  loc_F628B9: var_98.SetFocus
  loc_F628C5: Exit Sub
  loc_F628C6: ' Referenced from: F627E8
  loc_F628CE: Set var_90 = Err()
  loc_F628D4: Call 0.Method_arg_2C (var_8C)
  loc_F628F5: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F62908: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A8B8
  'Data Table: 490DEC
  loc_E1A8AD: Me.Global.Unload Me
  loc_E1A8B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB4508
  'Data Table: 490DEC
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB4478: On Error Goto loc_EB4502
  loc_EB4492: If (Me.RecordCount <= 0) Then
  loc_EB449B:   var_B8 = "Information"
  loc_EB44B6:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB44C6:   Exit Sub
  loc_EB44C7: End If
  loc_EB44CA: MemVar_1F950E4 = "Select GM.DocID as SearchCode,CAST(GM.VNo AS VARCHAR) As VrNo,GM.RoomNo,GF.Name As GuestName,GF.Company,GM.Caller,GM.Telephone From ((GuestMessage GM Left Join RoomOcc RO On (GM.RoomNo=RO.RoomNo And GM.FolioNo=RO.FolioNo)) Left Join GuestFolio GF On RO.FolioNo=GF.FolioNo) Order by GM.DocID,GM.VNo"
  loc_EB44D7: Proc_6_126_F1C850("1000,1000,2500,2000,2000,2000")
  loc_EB44E5: MemVar_1F95120 = Me
  loc_EB44FC: Call 0.Method_arg_2B0 (1)
  loc_EB4501: Exit Sub
  loc_EB4502: ' Referenced from: EB4478
  loc_EB4502: Proc_6_60_E63754(var_B8)
  loc_EB4507: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AE34
  'Data Table: 490DEC
  Dim Me As Recordset15
  loc_E0AE2B: Me.Requery -1
  loc_E0AE30: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13AED7C
  'Data Table: 490DEC
  Dim var_86 As Integer
  Dim unk_490DF2 As Connection15
  Dim var_A0 As TextBox
  Dim var_B0 As String
  Dim var_A4 As Variant
  Dim var_F4 As TextBox
  Dim var_610 As Double
  Dim var_C4 As Variant
  Dim var_15C As Variant
  Dim var_1E4 As TextBox
  Dim var_E0 As String
  Dim var_114 As Variant
  Dim var_320 As Variant
  Dim var_488 As Variant
  Dim var_A8 As String
  Dim var_8C As Recordset15
  Dim var_D4 As Variant
  Dim Me As Recordset15
  loc_13AE578: On Error Goto loc_13AED61
  loc_13AE57E: Call Proc_38_31_F917CC(var_96)
  loc_13AE589: If (var_96 = 0) Then
  loc_13AE58C:   Exit Sub
  loc_13AE58D: End If
  loc_13AE598: Set var_9C = Me.Txt
  loc_13AE59E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_13AE5C7: If (Proc_6_27_EA61EC(var_A0, "Room No") = 0) Then
  loc_13AE5CA:   Exit Sub
  loc_13AE5CB: End If
  loc_13AE5D6: Set var_9C = Me.Txt
  loc_13AE5DC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A0)
  loc_13AE5E4: var_A8 = "Caller Name"
  loc_13AE5ED: Set var_A4 = var_A0
  loc_13AE605: If (Proc_6_27_EA61EC(var_A4, var_A8) = 0) Then
  loc_13AE608:   Exit Sub
  loc_13AE609: End If
  loc_13AE617: unk_490DF2.BeginTrans var_AC
  loc_13AE63A: Set var_9C = Me.Txt
  loc_13AE640: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A8, "Delete From GuestMessage Where DocID='", var_D4)
  loc_13AE648: -1 = var_A0.Text
  loc_13AE661: unk_490DF2.Execute var_A4 & var_A8 & "'", &HFF, var_A0
  loc_13AE689: Set var_9C = Me.Txt
  loc_13AE68F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_13AE6BC: Set var_F0 = Me.Txt
  loc_13AE6C2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F4)
  loc_13AE6D7: var_610 = Val(var_F4.Text)
  loc_13AE6E8: Proc_6_7_F26918(var_D4, global_64)
  loc_13AE6F8: Set var_148 = Me.Txt
  loc_13AE6FE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_14C)
  loc_13AE706: var_15C = CVar(var_14C) 'Address
  loc_13AE70D: Proc_6_17_EAAE40(var_16C, var_15C)
  loc_13AE720: Set var_1E0 = Me.Txt
  loc_13AE726: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4)
  loc_13AE73C: Proc_6_17_EAAE40(var_208, CVar(var_1E4.Tag))
  loc_13AE74C: Set var_23C = Me.Txt
  loc_13AE752: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_240)
  loc_13AE761: Proc_6_17_EAAE40(var_260, CVar(var_240))
  loc_13AE771: Set var_294 = Me.Txt
  loc_13AE777: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_298)
  loc_13AE786: Proc_6_17_EAAE40(var_2B8, CVar(var_298))
  loc_13AE796: Set var_2EC = Me.Txt
  loc_13AE79C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2F0)
  loc_13AE7AB: Proc_6_17_EAAE40(var_310, CVar(var_2F0))
  loc_13AE7BB: Set var_344 = Me.Txt
  loc_13AE7C1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_348)
  loc_13AE7D0: Proc_6_7_F26918(var_368, CVar(var_348))
  loc_13AE7E0: Proc_6_17_EAAE40(var_3B8, CVar(Me.txtRecdTime))
  loc_13AE7F3: Proc_6_7_F26918(var_4C8, Date)
  loc_13AE7FC: Set var_4FC = Me.TopCtrl1
  loc_13AE802: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_610)
  loc_13AE84D: var_B0 = "Insert Into GuestMessage (DocID,VType,VPrefix,Site_Code,VNo,VDate,RoomNo,RoomCat,RoomType,Caller,Telephone,Message,RecdDate,RecdTime,GuestProf,FolioNo,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A0.Text
  loc_13AE894: var_114 = CVar(var_B0 & "','" & global_60 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_610) & ",") 'String
  loc_13AE900: var_320 = var_114 & var_D4 & "," & var_16C & ",'" & CVar(global_68) & "'," & var_208 & "," & var_260 & "," & var_2B8 & "," & var_310 
  loc_13AE960: var_488 = var_320 & "," & var_368 & "," & var_3B8 & ",'" & CVar(global_72) & "'," & CVar(global_76) & ",'" & CVar(MemVar_1F950C8) 
  loc_13AE9AA: unk_490DF2.Execute CStr(var_488 & "'," & var_4C8 & ",'" & IIf((CStr(var_50C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_604, -1
  loc_13AEA62: Set var_9C = Me.TopCtrl1
  loc_13AEA68: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_608)
  loc_13AEA81: If (CStr() = "Add") Then
  loc_13AEA98:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_13AEABE:   var_114 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_13AEACF:   Proc_6_7_F26918(var_D4, global_64, var_114)
  loc_13AEAEE:   unk_490DF2.Execute CStr(var_15C & var_D4 & " Order By VP.Date_From DESC"), -1, var_9C
  loc_13AEAF9:   Set var_8C = var_9C
  loc_13AEB2F:   If (var_8C.RecordCount > 0) Then
  loc_13AEB40:     Set var_9C = Me.Txt
  loc_13AEB46:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_13AEB4E:     var_A8 = var_A0.Text
  loc_13AEB5B:     var_610 = Val(var_A8)
  loc_13AEB61:     var_C4 = "Date_From"
  loc_13AEB84:     Proc_6_7_F26918(var_114, CVar(var_8C.Fields.Item(var_C4)))
  loc_13AEBB7:     var_E0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_610) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_13AEBEA:     unk_490DF2.Execute CStr(CVar(var_E0 & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_114), var_15C, -1
  loc_13AEC1E:   End If
  loc_13AEC1E: End If
  loc_13AEC24: unk_490DF2.CommitTrans
  loc_13AEC37: Set var_9C = Me.Txt
  loc_13AEC3D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A8)
  loc_13AEC45: var_F4 = var_A0.Text
  loc_13AEC59: var_86 = 0
  loc_13AEC67: Me.Requery -1
  loc_13AEC91: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_13AECA1: Set var_9C = Me.TopCtrl1
  loc_13AECA7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_13AECC0: If (CStr(var_86) = "Add") Then
  loc_13AECC3:   Call TopCtrl1_UnknownEvent_A()
  loc_13AECC8:   Exit Sub
  loc_13AECC9: End If
  loc_13AECEC: Call Proc_38_34_10D382C(Proc_5_1_100EC1C("INI", Me), global_80)
  loc_13AED00: Set var_9C = Me.TopCtrl1
  loc_13AED06: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_13AED17: Set var_9C = Me.TopCtrl1
  loc_13AED1D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_13AED2E: Set var_9C = Me.TopCtrl1
  loc_13AED34: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_13AED45: Set var_9C = Me.TopCtrl1
  loc_13AED4B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_13AED53: Call Proc_38_32_F2BCF4(var_610)
  loc_13AED5D: Set var_8C = Nothing
  loc_13AED60: Exit Sub
  loc_13AED61: ' Referenced from: 13AE578
  loc_13AED67: If (var_86 = &HFF) Then
  loc_13AED70:   unk_490DF2.RollbackTrans
  loc_13AED75: End If
  loc_13AED75: Proc_6_60_E63754()
  loc_13AED7A: Exit Sub
End Sub

Private Sub Form_Load() '10ABEF4
  'Data Table: 490DEC
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_D4 As TextBox
  Dim var_CC As TextBox
  Dim var_D0 As DataGrid
  loc_10ABC24: On Error Goto loc_10ABEED
  loc_10ABC2D: Call 0.Method_Me8 (var_88)
  loc_10ABC38: Call 0.Method_Me0 (var_8C)
  loc_10ABC57: Proc_6_23_DFC5B8(Me, CInt(var_88))
  loc_10ABC67: Call 0.Method_arg_7C (CDbl(1450))
  loc_10ABC74: Call 0.Method_arg_74 (CDbl(1625))
  loc_10ABC81: Call 0.Method_MeC (CDbl(9200))
  loc_10ABC8E: Call 0.Method_Me4 (CDbl(17000))
  loc_10ABC9A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10ABCBB: Me.Recordset15.CursorLocation = 3
  loc_10ABCE5: var_A8 = CVar("Select RoomType as Type,RoomNo,RoomCat From Roomocc where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and chkoutdate is NULL Order by RoomNO") 'String
  loc_10ABD03: CVarUnk
  loc_10ABD08: VerifyVarObj
  loc_10ABD0E: Set var_90 = Me.DGRoom
  loc_10ABD14: LateIdStAd
  loc_10ABD3E: Me.DGRoom.CursorLocation = 3
  loc_10ABD68: var_A8 = CVar("Select DocID as SearchCode,DocID,Site_Code,LogSite_Code From GuestMessage where   LOGSITE_CODE='" & MemVar_1F95078 & "' Order by DocID") 'String
  loc_10ABD72: r_A8, CVar(MemVar_1F95044), 2 var_A8, CVar(MemVar_1F95044), 2
  loc_10ABD83: global_60 = "HTHGM"
  loc_10ABD92: global_64 = CStr(MemVar_1F950EC)
  loc_10ABDBC: Call Proc_38_34_10D382C(Proc_5_1_100EC1C("INI", Me, New, 3, -1), Me, New)
  loc_10ABDC7: Call Proc_38_32_F2BCF4(3, -1)
  loc_10ABDD5: Set var_90 = Me.TopCtrl1
  loc_10ABDDB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_10ABDEC: Set var_90 = Me.TopCtrl1
  loc_10ABDF2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_10ABE03: Set var_90 = Me.TopCtrl1
  loc_10ABE09: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_10ABE1A: Set var_90 = Me.TopCtrl1
  loc_10ABE20: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_10ABE36: Set var_D0 = Me.Txt
  loc_10ABE3C: Call 0.Method_Form_Load0 (CInt(2), var_D4)
  loc_10ABE44: var_8C = var_D4.Height
  loc_10ABE57: Set var_90 = Me.Txt
  loc_10ABE5D: Call 0.Method_Form_Load0 (CInt(2), var_CC)
  loc_10ABE71: var_B8 = CVar((var_CC.Top + var_8C)) 'Single
  loc_10ABE80: Me.DGRoom.Top = False
  loc_10ABEA0: Set var_90 = Me.Txt
  loc_10ABEA6: Call 0.Method_Form_Load0 (CInt(2), var_CC)
  loc_10ABEC5: Me.DGRoom.Left = CVar(var_CC.Left)
  loc_10ABEE4: If (OpenMode = 1) Then
  loc_10ABEE7:   Call TopCtrl1_UnknownEvent_A()
  loc_10ABEEC: End If
  loc_10ABEEC: Exit Sub
  loc_10ABEED: ' Referenced from: 10ABC24
  loc_10ABEED: Proc_6_60_E63754(CInt(var_8C))
  loc_10ABEF2: Exit Sub
End Sub

Private Sub Form_Resize() 'E71DF4
  'Data Table: 490DEC
  loc_E71D9E: Call 0.Method_arg_50 (var_88)
  loc_E71DB0: Me.LblFormCaption.Caption = var_88
  loc_E71DC9: Me.LblFormCaption.Left = CDbl(0)
  loc_E71DD7: Call 0.Method_arg_100 (var_90)
  loc_E71DE9: Me.LblFormCaption.Width = var_90
  loc_E71DF1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E414D4
  'Data Table: 490DEC
  loc_E414AF: Set global_84 = Nothing
  loc_E414C1: Set global_80 = Nothing
  loc_E414D0: Exit Sub
  loc_E414D1: If 0 Then Exit Sub
  loc_E414D1: End If
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5C49C
  'Data Table: 490DEC
  loc_E5C464: Set var_88 = Me.TopCtrl1
  loc_E5C46A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5C48D: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5C495:   Call Form_Unload(&HFF)
  loc_E5C49A: End If
  loc_E5C49A: Exit Sub
End Sub

Private Sub Form_Activate() 'E49CC0
  'Data Table: 490DEC
  loc_E49C90: On Error Goto loc_E49CBA
  loc_E49C97: Set var_88 = Me.TopCtrl1
  loc_E49C9D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E49CB2: If (CLng(CInt()) = &H2D) Then
  loc_E49CB5:   Call TopCtrl1_UnknownEvent_15()
  loc_E49CBA:   ' Referenced from: E49C90
  loc_E49CBA: End If
  loc_E49CBA: Proc_6_60_E63754()
  loc_E49CBF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26654
  'Data Table: 490DEC
  loc_E26639: If (MasterFormExit = &HFF) Then
  loc_E26649:   Me.Global.Unload Me
  loc_E26651: End If
  loc_E26651: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AD1C
  'Data Table: 490DEC
  loc_E2ACF4: On Error Goto loc_E2AD14
  loc_E2AD0B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2AD13: Exit Sub
  loc_E2AD14: ' Referenced from: E2ACF4
  loc_E2AD14: Proc_6_60_E63754(Shift)
  loc_E2AD19: Exit Sub
End Sub

Public Function MasterFormExitGet() '491B00
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '491B0F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96F18
  'Data Table: 490DEC
  Dim Me As Recordset15
  loc_E96EA6: On Error Goto loc_E96F0F
  loc_E96EAF: Me.MoveFirst
  loc_E96ED9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96F01: Proc_5_0_1107AD0(&HFF, Me, global_80)
  loc_E96F09: Call Proc_38_33_14C0E14(0)
  loc_E96F0E: Exit Sub
  loc_E96F0F: ' Referenced from: E96EA6
  loc_E96F0F: Proc_6_60_E63754(var_A0)
  loc_E96F14: Exit Sub
End Sub

Public Property Get OpenMode() 'E07190
  'Data Table: 490DEC
  loc_E07189: OpenMode = global_88
End Sub

Public Property Let OpenMode(vNewValue) 'E02170
  'Data Table: 490DEC
  loc_E0216A: global_88 = vNewValue
  loc_E0216D: Exit Sub
End Sub

Public Sub Proc_38_31_F917CC
  'Data Table: 490DEC
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_490DF2 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F9168D: Set var_8C = Me.TopCtrl1
  loc_F91693: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F9169B: var_A0 = CStr()
  loc_F916AC: If (var_A0 = "Add") Then
  loc_F916DC:   Set var_8C = Me.Txt
  loc_F916E2:   Call 0.Method_Proc_38_31_F917CC0 (CInt(0), var_A4, var_A0, "Select Count(*) From GuestMessage Where DocID='", var_9C, -1)
  loc_F91703:   unk_490DF2.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F91713:    = var_C4.Item()
  loc_F9171B:    = var_D8.Value
  loc_F91748:   If (var_A4.Text.Fields > 0) Then
  loc_F91751:     Call 0.Method_arg_50 (var_A0)
  loc_F91772:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F91788:     Call Proc_38_37_1148804(MemVar_1F95044)
  loc_F9179B:     Set var_8C = Me.Txt
  loc_F917A1:     Call 0.Method_Proc_38_31_F917CC0 (CInt(0), var_A4)
  loc_F917A9:     var_A4.Text = var_A0
  loc_F917BD:     Proc_38_31_F917CC = 0
  loc_F917C3:   End If
  loc_F917C3: End If
  loc_F917C3: Proc_38_31_F917CC = var_A0
End Sub

Public Sub Proc_38_32_F2BCF4
  'Data Table: 490DEC
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F2BBEE: Set var_8C = Me.Txt
  loc_F2BBF4: Call 0.Method_Proc_38_32_F2BCF4C (var_8E, var_86)
  loc_F2BC04: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2BC1A:   Set var_8C = Me.Txt
  loc_F2BC20:   Call 0.Method_Proc_38_32_F2BCF40 (CInt(var_86), var_98)
  loc_F2BC28:   var_98.Text = vbNullString
  loc_F2BC44:   Set var_8C = Me.Txt
  loc_F2BC4A:   Call 0.Method_Proc_38_32_F2BCF40 (CInt(var_86), var_98)
  loc_F2BC52:   var_98.Tag = vbNullString
  loc_F2BC61: Next var_92 'Byte
  loc_F2BC74: Me.LblVPrefix.Caption = vbNullString
  loc_F2BC8C: Me.TxtArrTime.defaultText = vbNullString
  loc_F2BCA4: Me.txtRecdTime.defaultText = vbNullString
  loc_F2BCBC: Me.TxtDepTime.defaultText = vbNullString
  loc_F2BCCD: Set var_8C = Me.TopCtrl1
  loc_F2BCD3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_F2BCE4: Set var_8C = Me.TopCtrl1
  loc_F2BCEA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_F2BCF2: Exit Sub
End Sub

Public Sub Proc_38_33_14C0E14
  'Data Table: 490DEC
  Dim Me As Variant
  Dim var_C8 As String
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim unk_490DF2 As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_11C As Variant
  loc_14C00E8: On Error Goto loc_14C0E0D
  loc_14C0102: If (Me.RecordCount > 0) Then
  loc_14C015B:   unk_490DF2.Execute CStr("Select * From GuestMessage Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_14C0166:   Set var_88 = var_120
  loc_14C0183:   Set var_124 = var_88 
  loc_14C01C0:   Set var_120 = Me.Txt
  loc_14C01C6:   Call 0.Method_Proc_38_33_14C0E140 (CInt(0), var_128)
  loc_14C01CE:   var_128.Text = CStr(var_124.Fields.Item("DocID").Value)
  loc_14C021C:   Me.LblVPrefix.Caption = CStr(var_124.Fields.Item("vPrefix").Value)
  loc_14C0269:   Set var_120 = Me.Txt
  loc_14C026F:   Call 0.Method_Proc_38_33_14C0E140 (CInt(1), var_128)
  loc_14C0277:   var_128.Text = CStr(var_124.Fields.Item("VNo").Value)
  loc_14C02C6:   Set var_120 = Me.Txt
  loc_14C02CC:   Call 0.Method_Proc_38_33_14C0E140 (CInt(2), var_128)
  loc_14C02D4:   var_128.Text = CStr(var_124.Fields.Item("RoomNo").Value)
  loc_14C02F7:   var_C8 = "SELECT GF.Name, GF.Company, RO.FolioNo, RO.GuestProf, RO.ChkInDate, RO.ChkInTime, RO.DepDate, RO.DepTime, GF.Add1, GF.Add2, SubGroup.Name AS CompanyName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, GuestStat.Name AS GuestStatus, City.CityName, RoomCat.Name as RoomCat FROM ((((GuestProf RIGHT JOIN (RoomOcc AS RO LEFT JOIN GuestFolio AS GF ON RO.FolioNo = GF.FolioNo) ON GuestProf.Code = GF.GuestProf) LEFT JOIN SubGroup ON GF.Company = SubGroup.SubCode) LEFT JOIN GuestStat ON GuestProf.GuestStatus = GuestStat.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN RoomCat ON RO.RoomCat = RoomCat.Code Where RO.RoomNo='"
  loc_14C0326:   var_D8 = var_C8 & var_124.Fields.Item("RoomNo").Value 
  loc_14C034D:   var_128 = var_124.Fields.Item("FolioNo")
  loc_14C0374:   unk_490DF2.Execute CStr(var_D8 & "' And RO.FolioNo=" & var_128.Value & vbNullString), var_178, -1
  loc_14C037F:   Set var_8C = var_17C
  loc_14C03B7:   If (var_8C.RecordCount > 0) Then
  loc_14C03F0:     Set var_120 = Me.Txt
  loc_14C03F6:     Call 0.Method_Proc_38_33_14C0E140 (CInt(3), var_128)
  loc_14C03FE:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")), var_17C)
  loc_14C0438:     Proc_6_39_E7D3A0(var_D8, CVar(var_8C.Fields.Item("FolioNo")))
  loc_14C044F:     Set var_120 = Me.Txt
  loc_14C0455:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&HC), var_128)
  loc_14C045D:     var_128.Text = CStr(var_D8)
  loc_14C04AB:     Set var_120 = Me.Txt
  loc_14C04B1:     Call 0.Method_Proc_38_33_14C0E140 (CInt(4), var_128)
  loc_14C04B9:     var_128.Tag = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Company")))
  loc_14C0503:     Set var_120 = Me.Txt
  loc_14C0509:     Call 0.Method_Proc_38_33_14C0E140 (CInt(4), var_128)
  loc_14C0511:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("CompanyName")))
  loc_14C055B:     Set var_120 = Me.Txt
  loc_14C0561:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&HE), var_128)
  loc_14C0569:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Comments1")))
  loc_14C05B3:     Set var_120 = Me.Txt
  loc_14C05B9:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&HF), var_128)
  loc_14C05C1:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Comments2")))
  loc_14C060B:     Set var_120 = Me.Txt
  loc_14C0611:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&H10), var_128)
  loc_14C0619:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Comments3")))
  loc_14C0663:     Set var_120 = Me.Txt
  loc_14C0669:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&H11), var_128)
  loc_14C0671:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Add1")))
  loc_14C06BB:     Set var_120 = Me.Txt
  loc_14C06C1:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&H12), var_128)
  loc_14C06C9:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Add2")))
  loc_14C0713:     Set var_120 = Me.Txt
  loc_14C0719:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&H14), var_128)
  loc_14C0721:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("CityName")))
  loc_14C076B:     Set var_120 = Me.Txt
  loc_14C0771:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&HD), var_128)
  loc_14C0779:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("GuestStatus")))
  loc_14C07C6:     Set var_120 = Me.Txt
  loc_14C07CC:     Call 0.Method_Proc_38_33_14C0E140 (CInt(5), var_128)
  loc_14C07D4:     var_128.Text = CStr(var_8C.Fields.Item("ChkInDate").Value)
  loc_14C0823:     Me.TxtArrTime.defaultText = CVar(CStr(var_8C.Fields.Item("ChkInTime").Value))
  loc_14C0871:     Set var_120 = Me.Txt
  loc_14C0877:     Call 0.Method_Proc_38_33_14C0E140 (CInt(6), var_128)
  loc_14C087F:     var_128.Text = CStr(var_8C.Fields.Item("DepDate").Value)
  loc_14C08CE:     Me.TxtDepTime.defaultText = CVar(CStr(var_8C.Fields.Item("DepTime").Value))
  loc_14C0914:     global_72 = CStr(var_8C.Fields.Item("GuestProf").Value)
  loc_14C099A:     Set var_120 = Me.Txt
  loc_14C09A0:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&H13), var_128, CStr(var_8C.Fields.Item("RoomCat").Value))
  loc_14C09A8:     var_128.Text = CLng(var_8C.Fields.Item("FolioNo").Value)
  loc_14C09D5:     var_A8 = var_88.Fields.Item("Solved")
  loc_14C09F4:     Set var_120 = Me.Txt
  loc_14C09FA:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&H15), var_128)
  loc_14C0A02:     var_128.Text = Proc_6_38_E69628(CVar(var_A8))
  loc_14C0A19:   Else
  loc_14C0A27:     Set var_94 = Me.Txt
  loc_14C0A2D:     Call 0.Method_Proc_38_33_14C0E140 (CInt(3), var_A8)
  loc_14C0A35:     var_A8.Text = vbNullString
  loc_14C0A4F:     Set var_94 = Me.Txt
  loc_14C0A55:     Call 0.Method_Proc_38_33_14C0E140 (CInt(4), var_A8)
  loc_14C0A5D:     var_A8.Text = vbNullString
  loc_14C0A77:     Set var_94 = Me.Txt
  loc_14C0A7D:     Call 0.Method_Proc_38_33_14C0E140 (CInt(5), var_A8)
  loc_14C0A85:     var_A8.Text = vbNullString
  loc_14C0AA1:     Me.TxtArrTime.defaultText = vbNullString
  loc_14C0AB7:     Set var_94 = Me.Txt
  loc_14C0ABD:     Call 0.Method_Proc_38_33_14C0E140 (CInt(6), var_A8)
  loc_14C0AC5:     var_A8.Text = vbNullString
  loc_14C0AE1:     Me.TxtDepTime.defaultText = vbNullString
  loc_14C0AF7:     Set var_94 = Me.Txt
  loc_14C0AFD:     Call 0.Method_Proc_38_33_14C0E140 (CInt(&H15), var_A8)
  loc_14C0B05:     var_A8.Text = vbNullString
  loc_14C0B17:     global_72 = vbNullString
  loc_14C0B23:     global_76 = 0
  loc_14C0B26:   End If
  loc_14C0B5C:   Set var_120 = Me.Txt
  loc_14C0B62:   Call 0.Method_Proc_38_33_14C0E140 (CInt(7), var_128)
  loc_14C0B6A:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Caller")), global_76)
  loc_14C0BB4:   Set var_120 = Me.Txt
  loc_14C0BBA:   Call 0.Method_Proc_38_33_14C0E140 (CInt(8), var_128)
  loc_14C0BC2:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Telephone")))
  loc_14C0C0C:   Set var_120 = Me.Txt
  loc_14C0C12:   Call 0.Method_Proc_38_33_14C0E140 (CInt(9), var_128)
  loc_14C0C1A:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Message")))
  loc_14C0C80:   Set var_120 = Me.Txt
  loc_14C0C86:   Call 0.Method_Proc_38_33_14C0E140 (CInt(&HA), var_128, CStr(Format(CVar(var_124.Fields.Item("RecdDate")), "DD/MM/YYYY")))
  loc_14C0C8E:   var_128.Text = 1
  loc_14C0CFA:   Me.txtRecdTime.defaultText = CVar(CStr(Format(CVar(var_124.Fields.Item("RecdTime")), "HH:MM")))
  loc_14C0D47:   Set var_120 = Me.Txt
  loc_14C0D4D:   Call 0.Method_Proc_38_33_14C0E140 (CInt(&HB), var_128, Proc_6_38_E69628(CVar(var_124.Fields.Item("U_Name")), 1, 1))
  loc_14C0D55:   var_128.Text = 1
  loc_14C0D71:   Set var_94 = Me.TopCtrl1
  loc_14C0D77:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_14C0D87:   Set var_94 = Me.TopCtrl1
  loc_14C0D8D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(True)
  loc_14C0D9E:   Set var_94 = Me.TopCtrl1
  loc_14C0DA4:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_14C0DB5:   Set var_94 = Me.TopCtrl1
  loc_14C0DBB:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_14C0DCC:   Set var_94 = Me.TopCtrl1
  loc_14C0DD2:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_14C0DE3:   Set var_94 = Me.TopCtrl1
  loc_14C0DE9:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_14C0DF3:   Set var_124 = Nothing 
  loc_14C0DFA: Else
  loc_14C0DFA:   Call Proc_38_32_F2BCF4(var_120)
  loc_14C0DFF: End If
  loc_14C0DFF: Call Proc_38_35_E85F20()
  loc_14C0E09: Set var_88 = Nothing
  loc_14C0E0C: Exit Sub
  loc_14C0E0D: ' Referenced from: 14C00E8
  loc_14C0E0D: Proc_6_60_E63754()
  loc_14C0E12: Exit Sub
End Sub

Public Sub Proc_38_34_10D382C(arg_C) '10D382C
  'Data Table: 490DEC
  Dim var_98 As TextBox
  Dim var_8C As MaskEdBox
  loc_10D3526: Set var_8C = Me.Txt
  loc_10D352C: Call 0.Method_Proc_38_34_10D382CC (var_8E, var_86)
  loc_10D353C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10D3552:   Set var_8C = Me.Txt
  loc_10D3558:   Call 0.Method_Proc_38_34_10D382C0 (CInt(var_86), var_98)
  loc_10D3560:   var_98.Enabled = arg_C
  loc_10D356F: Next var_92 'Byte
  loc_10D3582: Set var_8C = Me.Txt
  loc_10D3588: Call 0.Method_Proc_38_34_10D382C0 (CInt(0), var_98)
  loc_10D3590: var_98.Enabled = False
  loc_10D35A9: Set var_8C = Me.Txt
  loc_10D35AF: Call 0.Method_Proc_38_34_10D382C0 (CInt(1), var_98)
  loc_10D35B7: var_98.Enabled = False
  loc_10D35D0: Set var_8C = Me.Txt
  loc_10D35D6: Call 0.Method_Proc_38_34_10D382C0 (CInt(3), var_98)
  loc_10D35DE: var_98.Enabled = False
  loc_10D35F7: Set var_8C = Me.Txt
  loc_10D35FD: Call 0.Method_Proc_38_34_10D382C0 (CInt(4), var_98)
  loc_10D3605: var_98.Enabled = False
  loc_10D361E: Set var_8C = Me.Txt
  loc_10D3624: Call 0.Method_Proc_38_34_10D382C0 (CInt(5), var_98)
  loc_10D362C: var_98.Enabled = False
  loc_10D3647: Me.TxtArrTime.Enabled = False
  loc_10D365C: Set var_8C = Me.Txt
  loc_10D3662: Call 0.Method_Proc_38_34_10D382C0 (CInt(6), var_98)
  loc_10D366A: var_98.Enabled = False
  loc_10D3685: Me.TxtDepTime.Enabled = False
  loc_10D369A: Set var_8C = Me.Txt
  loc_10D36A0: Call 0.Method_Proc_38_34_10D382C0 (CInt(&HA), var_98)
  loc_10D36A8: var_98.Enabled = False
  loc_10D36C3: Me.txtRecdTime.Enabled = False
  loc_10D36D8: Set var_8C = Me.Txt
  loc_10D36DE: Call 0.Method_Proc_38_34_10D382C0 (CInt(&HB), var_98)
  loc_10D36E6: var_98.Enabled = False
  loc_10D3700: Set var_8C = Me.Txt
  loc_10D3706: Call 0.Method_Proc_38_34_10D382C0 (CInt(&HB), var_98)
  loc_10D370E: var_98.Text = MemVar_1F950C8
  loc_10D3727: Set var_8C = Me.Txt
  loc_10D372D: Call 0.Method_Proc_38_34_10D382C0 (CInt(&HE), var_98)
  loc_10D3735: var_98.Enabled = False
  loc_10D374E: Set var_8C = Me.Txt
  loc_10D3754: Call 0.Method_Proc_38_34_10D382C0 (CInt(&HF), var_98)
  loc_10D375C: var_98.Enabled = False
  loc_10D3775: Set var_8C = Me.Txt
  loc_10D377B: Call 0.Method_Proc_38_34_10D382C0 (CInt(&H10), var_98)
  loc_10D3783: var_98.Enabled = False
  loc_10D379C: Set var_8C = Me.Txt
  loc_10D37A2: Call 0.Method_Proc_38_34_10D382C0 (CInt(&H11), var_98)
  loc_10D37AA: var_98.Enabled = False
  loc_10D37C3: Set var_8C = Me.Txt
  loc_10D37C9: Call 0.Method_Proc_38_34_10D382C0 (CInt(&H12), var_98)
  loc_10D37D1: var_98.Enabled = False
  loc_10D37EA: Set var_8C = Me.Txt
  loc_10D37F0: Call 0.Method_Proc_38_34_10D382C0 (CInt(&H14), var_98)
  loc_10D37F8: var_98.Enabled = False
  loc_10D3811: Set var_8C = Me.Txt
  loc_10D3817: Call 0.Method_Proc_38_34_10D382C0 (CInt(&HD), var_98)
  loc_10D381F: var_98.Enabled = False
  loc_10D382B: Exit Sub
End Sub

Public Sub Proc_38_35_E85F20
  'Data Table: 490DEC
  loc_E85ECC: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_E85EDE:   Me.DGRoom.Visible = False
  loc_E85EE6: End If
  loc_E85F02: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E85F14:   Me.FGPoint.Visible = False
  loc_E85F1C: End If
  loc_E85F1C: Exit Sub
End Sub

Public Sub Proc_38_36_EE2C58(arg_C) 'EE2C58
  'Data Table: 490DEC
  Dim var_8C As TextBox
  loc_EE2BAC: Call Proc_38_35_E85F20()
  loc_EE2BBC: Set var_88 = Me.Txt
  loc_EE2BC2: Call 0.Method_Proc_38_36_EE2C580 (CInt(2))
  loc_EE2BEB: If (Proc_6_27_EA61EC(var_8C, "Room No") = 0) Then
  loc_EE2BEE:   Exit Sub
  loc_EE2BEF: End If
  loc_EE2C26: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE2C29:   Call TopCtrl1_UnknownEvent_16()
  loc_EE2C31: Else
  loc_EE2C3B:   Set var_88 = Me.Txt
  loc_EE2C41:   Call 0.Method_Proc_38_36_EE2C580 (arg_C, var_8C)
  loc_EE2C49:   var_8C.SetFocus
  loc_EE2C55: End If
  loc_EE2C55: Exit Sub
End Sub

Public Sub Proc_38_37_1148804
  'Data Table: 490DEC
  Dim var_A0 As String
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_94 As Long
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  loc_11484B4: var_90 = global_60
  loc_11484CB: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_11484EE: var_E0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_11484FF: Proc_6_7_F26918(var_D0, global_64, var_E0)
  loc_1148507: var_F0 = var_134 & var_D0 
  loc_1148510: var_110 = var_F0 & " Order By VP.Date_From DESC" 
  loc_114851B: Me.Connection15.Execute CStr(var_110), -1, var_138
  loc_1148526: Set var_8C = var_138
  loc_114855C: If (var_8C.RecordCount <= 0) Then
  loc_1148578:   MsgBox("Invalid Date", 0, var_E0, var_F0, var_110)
  loc_114858B:   var_88 = vbNullString
  loc_114858E:   Proc_38_37_1148804 = 
  loc_1148594: End If
  loc_11485A8: If (var_8C.RecordCount > 0) Then
  loc_11485E7:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1148604:     var_150 = var_8C.Fields.Item("Prefix")
  loc_1148615:     var_9C = CStr(var_150.Value)
  loc_1148630:     Set var_138 = Me.Txt
  loc_1148636:     Call 0.Method_Proc_38_37_11488040 (CInt(1), var_150)
  loc_114864C:     var_94 = CLng(Val(var_150.Text))
  loc_114865C:   Else
  loc_1148687:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11486AE:     var_150 = var_8C.Fields.Item("start_srl_no")
  loc_11486C3:     var_E0 = (var_150.Value + 1)
  loc_11486C9:     var_94 = CLng(var_E0)
  loc_11486DA:   End If
  loc_11486DA: End If
  loc_1148705: var_D0 = Space((5 - Len(var_90)))
  loc_114870D: var_F0 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_150.Value)
  loc_1148717: var_110 = (var_F0 + CVar(var_9C))
  loc_1148728: var_134 = Space((5 - Len(var_9C)))
  loc_1148730: var_164 = (var_110 + var_134)
  loc_1148746: var_174 = Space((8 - Len(CStr(var_94))))
  loc_114874E: var_184 = (var_164 + var_174)
  loc_114875A: var_1A4 = (var_184 + CVar(CStr(var_94)))
  loc_114875F: var_98 = CStr(var_1A4)
  loc_114878F: Me.LblVPrefix.Caption = var_9C
  loc_11487A5: Set var_138 = Me.Txt
  loc_11487AB: Call 0.Method_Proc_38_37_11488040 (CInt(0), var_150)
  loc_11487B3: var_150.Text = var_98
  loc_11487D2: Set var_138 = Me.Txt
  loc_11487D8: Call 0.Method_Proc_38_37_11488040 (CInt(1), var_150)
  loc_11487E0: var_150.Text = CStr(var_94)
  loc_11487F2: var_88 = var_98
  loc_11487FA: Set var_8C = Nothing
  loc_11487FD: Proc_38_37_1148804 = var_94
End Sub
