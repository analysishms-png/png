VERSION 5.00
Begin VB.Form FrmGuestWakeUp
  Caption = "Register Wake up Calls"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10440
  ClientHeight = 5745
  Begin DataGrid DGRoom
    Left = 7950
    Top = 4140
    Width = 2250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 55
  End
  Begin TextBox Txt
    Index = 24
    BackColor = &HFFFFFF&
    Left = 2760
    Top = 1020
    Width = 2940
    Height = 285
    Enabled = 0   'False
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
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1305
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 51
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
    Index = 22
    BackColor = &HFFFFFF&
    Left = 2760
    Top = 1305
    Width = 345
    Height = 285
    Enabled = 0   'False
    TabIndex = 50
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 3090
    Top = 1305
    Width = 345
    Height = 285
    Enabled = 0   'False
    TabIndex = 49
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
    Index = 26
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1875
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 48
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
    Index = 27
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 2160
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 47
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
    Index = 25
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 2445
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 46
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
    Index = 20
    BackColor = &HFFFFFF&
    Left = 7290
    Top = 1020
    Width = 480
    Height = 285
    Enabled = 0   'False
    TabIndex = 38
    MaxLength = 2
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
    Index = 16
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 1020
    Width = 495
    Height = 285
    Enabled = 0   'False
    TabIndex = 37
    MaxLength = 2
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 2445
    Width = 3435
    Height = 285
    Enabled = 0   'False
    TabIndex = 36
    MaxLength = 8
    Locked = -1  'True
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
    Index = 14
    BackColor = &HFFFFFF&
    Left = 9135
    Top = 1020
    Width = 1110
    Height = 285
    Enabled = 0   'False
    TabIndex = 35
    MaxLength = 5
    Locked = -1  'True
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
    Index = 13
    BackColor = &HFFFFFF&
    Left = 7980
    Top = 1305
    Width = 330
    Height = 285
    Enabled = 0   'False
    TabIndex = 34
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 12
    BackColor = &HFFFFFF&
    Left = 8310
    Top = 1305
    Width = 330
    Height = 285
    Enabled = 0   'False
    TabIndex = 33
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 11
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 1305
    Width = 1170
    Height = 285
    Enabled = 0   'False
    TabIndex = 32
    MaxLength = 11
    Locked = -1  'True
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
    Index = 17
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 2160
    Width = 3435
    Height = 285
    Enabled = 0   'False
    TabIndex = 31
    Locked = -1  'True
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
    Index = 18
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 1875
    Width = 3435
    Height = 285
    Enabled = 0   'False
    TabIndex = 30
    MaxLength = 50
    Locked = -1  'True
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 6810
    Top = 1590
    Width = 3435
    Height = 285
    Enabled = 0   'False
    TabIndex = 29
    MaxLength = 16
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 2730
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 28
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
  End
  Begin Frame FrmList
    Left = 7680
    Top = 3345
    Width = 2055
    Height = 1725
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 60
      Top = 75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 25
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1020
    Width = 1185
    Height = 285
    TabIndex = 2
    MaxLength = 5
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
    Index = 1
    Left = 1575
    Top = 735
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
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
    Index = 0
    Left = 6825
    Top = 750
    Width = 2310
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 12
    MaxLength = 21
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
    Index = 6
    BackColor = &HFFFFFF&
    Left = 1590
    Top = 3615
    Width = 1425
    Height = 255
    Enabled = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 12
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
    BackColor = &HFFFFFF&
    Left = 1590
    Top = 5355
    Width = 1425
    Height = 255
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 5
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
    BackColor = &HFFFFFF&
    Left = 4350
    Top = 735
    Width = 1350
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    Alignment = 1 'Right Justify
    MaxLength = 6
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
    Index = 5
    BackColor = &HFFFFFF&
    Left = 1590
    Top = 3345
    Width = 1425
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 3
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
    BackColor = &HFFFFFF&
    Left = 1590
    Top = 4620
    Width = 4455
    Height = 720
    TabIndex = 9
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 100
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
    BackColor = &HFFFFFF&
    Left = 1590
    Top = 3885
    Width = 4455
    Height = 720
    TabIndex = 8
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 100
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
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1590
    Width = 4125
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
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
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10440
    Height = 375
    TabIndex = 0
  End
  Begin MaskEdBox txtM
    Index = 11
    Left = 3030
    Top = 3615
    Width = 690
    Height = 255
    TabIndex = 7
  End
  Begin MSFlexGrid FGPoint
    Left = 5790
    Top = 3720
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 56
  End
  Begin Label Lbl
    Caption = "Check In Dt."
    Index = 26
    ForeColor = &H0&
    Left = 105
    Top = 1260
    Width = 1035
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
    Caption = "Address"
    Index = 2
    ForeColor = &H0&
    Left = 105
    Top = 1800
    Width = 690
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
  Begin Label Lbl
    Caption = "Adult/Child"
    Index = 11
    ForeColor = &H0&
    Left = 5745
    Top = 1035
    Width = 930
    Height = 240
    TabIndex = 45
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
    Caption = "Status"
    Index = 1
    ForeColor = &H0&
    Left = 5745
    Top = 2460
    Width = 540
    Height = 240
    TabIndex = 44
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
    Caption = "Folio No"
    Index = 6
    ForeColor = &H0&
    Left = 8235
    Top = 1035
    Width = 690
    Height = 240
    TabIndex = 43
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
    Caption = "Dep. Dt."
    Index = 4
    ForeColor = &H0&
    Left = 5745
    Top = 1320
    Width = 690
    Height = 240
    TabIndex = 42
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
    Caption = "Comment1"
    Index = 7
    ForeColor = &H0&
    Left = 5745
    Top = 1605
    Width = 930
    Height = 240
    TabIndex = 41
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
    Caption = "Comment2"
    Index = 8
    ForeColor = &H0&
    Left = 5745
    Top = 1890
    Width = 930
    Height = 240
    TabIndex = 40
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
    Caption = "Comment3"
    Index = 13
    ForeColor = &H0&
    Left = 5745
    Top = 2175
    Width = 930
    Height = 240
    TabIndex = 39
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
  Begin Label Label1
    Caption = "Reminder Details"
    Index = 0
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 45
    Top = 3090
    Width = 10320
    Height = 225
    TabIndex = 27
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "Room Details"
    Index = 1
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 45
    Top = 420
    Width = 10320
    Height = 225
    TabIndex = 26
    Alignment = 2 'Center
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
  Begin Shape Shape1
    BorderColor = &H808080&
    Left = 45
    Top = 405
    Width = 10335
    Height = 5280
  End
  Begin Label LblName
    Caption = "Company"
    Index = 6
    ForeColor = &H0&
    Left = 105
    Top = 2745
    Width = 795
    Height = 240
    TabIndex = 23
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 735
    Top = 765
    Width = 600
    Height = 240
    TabIndex = 22
    Alignment = 1 'Right Justify
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
  Begin Label LblName
    Caption = "Vr.No"
    Index = 1
    ForeColor = &H0&
    Left = 105
    Top = 750
    Width = 480
    Height = 240
    TabIndex = 21
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
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 6150
    Top = 765
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
  Begin Label LblName
    Caption = "Date"
    Index = 13
    ForeColor = &H0&
    Left = 105
    Top = 3615
    Width = 390
    Height = 240
    TabIndex = 19
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
  Begin Label LblName
    Caption = "User"
    Index = 18
    ForeColor = &H0&
    Left = 105
    Top = 5355
    Width = 390
    Height = 240
    TabIndex = 18
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
  Begin Label LblName
    Caption = "Extension"
    Index = 15
    ForeColor = &H0&
    Left = 3165
    Top = 750
    Width = 810
    Height = 240
    TabIndex = 17
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
  Begin Label LblName
    Caption = "Reminder Reqd."
    Index = 14
    ForeColor = &H0&
    Left = 105
    Top = 3345
    Width = 1380
    Height = 240
    TabIndex = 16
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
  Begin Label LblName
    Caption = "Other Req."
    Index = 8
    ForeColor = &H0&
    Left = 105
    Top = 4620
    Width = 930
    Height = 240
    TabIndex = 15
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
  Begin Label LblName
    Caption = "Food Ordered"
    Index = 7
    ForeColor = &H0&
    Left = 105
    Top = 3885
    Width = 1185
    Height = 240
    TabIndex = 14
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
  Begin Label LblName
    Caption = "Name"
    Index = 5
    ForeColor = &H0&
    Left = 105
    Top = 1485
    Width = 495
    Height = 240
    TabIndex = 13
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
  Begin Label LblName
    Caption = "Room No."
    Index = 3
    ForeColor = &H0&
    Left = 105
    Top = 1005
    Width = 840
    Height = 240
    TabIndex = 11
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

Attribute VB_Name = "FrmGuestWakeUp"

Private MasterFormExit As Integer

Private Sub TopCtrl1_UnknownEvent_11 'FE28A0
  'Data Table: 473520
  Dim var_B4 As Variant
  Dim var_88 As String
  loc_FE26CC: On Error Goto loc_FE289A
  loc_FE26E4: var_88 = "ADD"
  loc_FE26F2: Call Proc_37_35_FA8F7C(Proc_5_1_100EC1C(var_88, Me))
  loc_FE2706: Set var_8C = Me.TopCtrl1
  loc_FE270C: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030008(False)
  loc_FE271D: Set var_8C = Me.TopCtrl1
  loc_FE2723: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(False)
  loc_FE2734: Set var_8C = Me.TopCtrl1
  loc_FE273A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030009(False)
  loc_FE274B: Set var_8C = Me.TopCtrl1
  loc_FE2751: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030006(False)
  loc_FE2759: Call Proc_37_33_F31EB0(global_96)
  loc_FE2764: Call Proc_37_38_114803C(MemVar_1F95044)
  loc_FE2777: Set var_8C = Me.Txt
  loc_FE277D: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0), var_B4)
  loc_FE2785: var_B4.Text = var_88
  loc_FE2799: var_88 = CStr(MemVar_1F950EC)
  loc_FE27A7: Set var_8C = Me.Txt
  loc_FE27AD: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(6), var_B4)
  loc_FE27B5: var_B4.Text = var_88
  loc_FE27FF: Set var_8C = Me.txtM
  loc_FE2805: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(&HB), var_B4, CVar(CStr(Format(Now, "HH:MM"))))
  loc_FE280D: var_B4.defaultText = 1
  loc_FE282F: Set var_8C = Me.Txt
  loc_FE2835: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_B4)
  loc_FE283D: var_B4.SetFocus
  loc_FE2857: Set var_8C = Me.Txt
  loc_FE285D: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_B4, "Yes")
  loc_FE2865: var_B4.Text = 1
  loc_FE287F: Set var_8C = Me.Txt
  loc_FE2885: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(&HA), var_B4)
  loc_FE288D: var_B4.Text = MemVar_1F950C8
  loc_FE2899: Exit Sub
  loc_FE289A: ' Referenced from: FE26CC
  loc_FE289A: Proc_6_60_E63754(var_88)
  loc_FE289F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F631AC
  'Data Table: 473520
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_8C As String
  loc_F63088: On Error Goto loc_F63169
  loc_F630A2: If (Me.RecordCount > 0) Then
  loc_F630C8:   Call Proc_37_35_FA8F7C(Proc_5_1_100EC1C("EDIT", Me))
  loc_F630E0:   Set var_90 = Me.Txt
  loc_F630E6:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_98)
  loc_F630EE:   var_98.Enabled = False
  loc_F630FD: Else
  loc_F6311E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6312E: End If
  loc_F63139: Set var_90 = Me.txtM
  loc_F6313F: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(&HB), var_98)
  loc_F6314F: var_8C = CStr(var_98.defaultText)
  loc_F63158: global_84 = var_8C
  loc_F63168: Exit Sub
  loc_F63169: ' Referenced from: F63088
  loc_F63171: Set var_90 = Err()
  loc_F63177: Call 0.Method_arg_2C (var_8C)
  loc_F63198: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F631AB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '1102CD0
  'Data Table: 473520
  Dim var_96 As Integer
  Dim unk_473539 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_11029C8: On Error Goto loc_1102C76
  loc_1102A02: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1102A13:   unk_473539.BeginTrans var_11C
  loc_1102A29:   var_94 = Me.Bookmark 'Variant
  loc_1102A4B:   Set var_120 = Me.Txt
  loc_1102A51:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From GuestWakeUp Where DocID='")
  loc_1102A59:   var_B8 = var_124.Text
  loc_1102A62:   var_12C = -1 & var_128
  loc_1102A72:   unk_473539.Execute var_12C & "'", var_134, &HFF
  loc_1102A9A:   Set var_120 = Me.Txt
  loc_1102AA0:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124)
  loc_1102AB2:   var_168 = 0
  loc_1102AC5:   var_160 = 0
  loc_1102AD0:   var_15C = 0
  loc_1102AE3:   var_154 = 0
  loc_1102AEE:   var_150 = 0
  loc_1102B01:   var_148 = 0
  loc_1102B40:   var_128 = "GuestWakeUp"
  loc_1102B49:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_1102B74:   unk_473539.CommitTrans
  loc_1102B7B:   var_96 = 0
  loc_1102B89:   Me.Requery -1
  loc_1102B99:   Me.Requery -1
  loc_1102BB9:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1102BC6:     Me.Bookmark = var_94
  loc_1102BCE:   Else
  loc_1102BE2:     If (Me.EOF = 0) Then
  loc_1102BEB:       Me.MoveLast
  loc_1102BF0:     End If
  loc_1102BF0:   End If
  loc_1102BF0:   Call Proc_37_33_F31EB0(var_96, var_148, 0, var_150, var_154)
  loc_1102C11:   Proc_5_0_1107AD0(&HFF, Me, global_96, 0)
  loc_1102C22:   Set var_120 = Me.TopCtrl1
  loc_1102C28:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030008(False)
  loc_1102C39:   Set var_120 = Me.TopCtrl1
  loc_1102C3F:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(False)
  loc_1102C50:   Set var_120 = Me.TopCtrl1
  loc_1102C56:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030009(False)
  loc_1102C67:   Set var_120 = Me.TopCtrl1
  loc_1102C6D:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030006(False)
  loc_1102C75: End If
  loc_1102C75: Exit Sub
  loc_1102C76: ' Referenced from: 11029C8
  loc_1102C7C: If (var_96 = &HFF) Then
  loc_1102C85:   unk_473539.RollbackTrans
  loc_1102C8A: End If
  loc_1102C92: Set var_120 = Err()
  loc_1102C98: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_1102CB9: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_1102CCC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E1C0C4
  'Data Table: 473520
  loc_E1C0B9: Me.Global.Unload Me
  loc_E1C0C1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '14B0D4C
  'Data Table: 473520
  Dim var_A4 As Variant
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_AC As String
  Dim var_86 As Integer
  Dim unk_473539 As Connection15
  Dim var_134 As String
  Dim var_138 As String
  Dim var_A8 As Variant
  Dim var_158 As TextBox
  Dim var_6C4 As Double
  Dim var_1D0 As Variant
  Dim var_258 As TextBox
  Dim var_2B4 As TextBox
  Dim var_6CC As Double
  Dim var_144 As String
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_DC As Variant
  Dim var_12C As Variant
  Dim var_2D8 As Variant
  Dim var_500 As Variant
  Dim var_694 As Variant
  Dim unk_473582 As Connection15
  Dim var_A0 As Recordset15
  Dim var_98 As Long
  Dim var_154 As TextBox
  Dim var_1BC As TextBox
  Dim var_254 As TextBox
  Dim var_25C As String
  Dim var_178 As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_14B01D0: On Error Goto loc_14B0D31
  loc_14B01D6: Call Proc_37_32_F8BB60(var_9A)
  loc_14B01E1: If (var_9A = 0) Then
  loc_14B01E4:   Exit Sub
  loc_14B01E5: End If
  loc_14B01F0: Set var_A0 = Me.Txt
  loc_14B01F6: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_14B0207: Set var_A8 = var_A4
  loc_14B021F: If (Proc_6_27_EA61EC(var_A8, "Room No") = 0) Then
  loc_14B0222:   Exit Sub
  loc_14B0223: End If
  loc_14B0231: Set var_A0 = Me.Txt
  loc_14B0237: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_A4)
  loc_14B0256: If (var_A4.Text = vbNullString) Then
  loc_14B0272:   MsgBox("Date is Required", &H40, var_EC, var_10C, var_12C)
  loc_14B0282:   Exit Sub
  loc_14B0283: End If
  loc_14B028C: Set var_A0 = Me.txtM
  loc_14B0292: Call 0.Method_TopCtrl1_UnknownEvent_190 (&HB, var_A4)
  loc_14B029A: var_CC = var_A4.defaultText
  loc_14B02A2: var_AC = CStr(var_CC)
  loc_14B02B7: If (var_AC = vbNullString) Then
  loc_14B02BA:   Exit Sub
  loc_14B02BB: End If
  loc_14B02C9: unk_473539.BeginTrans var_130
  loc_14B02EC: Set var_A0 = Me.Txt
  loc_14B02F2: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A4, var_AC, "Delete From GuestWakeUp Where DocID='", var_CC)
  loc_14B02FA: -1 = var_A4.Text
  loc_14B0313: unk_473539.Execute var_A8 & var_AC & "'", &HFF, var_A4
  loc_14B033B: Set var_A0 = Me.Txt
  loc_14B0341: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A4)
  loc_14B0349: var_AC = var_A4.Text
  loc_14B036E: Set var_154 = Me.Txt
  loc_14B0374: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_158)
  loc_14B0389: var_6C4 = Val(var_158.Text)
  loc_14B039A: Proc_6_7_F26918(var_CC, global_64)
  loc_14B03D2: Set var_1BC = Me.Txt
  loc_14B03D8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1C0, 1)
  loc_14B03E0: var_1D0 = CVar(var_1C0) 'Address
  loc_14B03E7: Proc_6_17_EAAE40(var_1E0, var_1D0)
  loc_14B03FA: Set var_254 = Me.Txt
  loc_14B0400: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_258, var_25C)
  loc_14B0408: 1 = var_258.Tag
  loc_14B0416: Proc_6_17_EAAE40(var_27C, CVar(var_25C))
  loc_14B0429: Set var_2B0 = Me.Txt
  loc_14B042F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_2B4)
  loc_14B0444: var_6CC = Val(var_2B4.Text)
  loc_14B0452: Set var_2FC = Me.Txt
  loc_14B0458: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_300)
  loc_14B0477: Proc_6_17_EAAE40(var_330, Left(CVar(var_300), 1))
  loc_14B0487: Set var_364 = Me.Txt
  loc_14B048D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_368)
  loc_14B049C: Proc_6_17_EAAE40(var_388, CVar(var_368))
  loc_14B04AC: Set var_3BC = Me.Txt
  loc_14B04B2: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_3C0)
  loc_14B04C1: Proc_6_17_EAAE40(var_3E0, CVar(var_3C0))
  loc_14B04D1: Set var_414 = Me.Txt
  loc_14B04D7: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_418)
  loc_14B04E6: Proc_6_7_F26918(var_438, CVar(var_418))
  loc_14B04F6: Set var_46C = Me.txtM
  loc_14B04FC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_470)
  loc_14B050B: Proc_6_17_EAAE40(var_490, CVar(var_470))
  loc_14B051E: Proc_6_7_F26918(var_5A0, Date)
  loc_14B0527: Set var_5D4 = Me.TopCtrl1
  loc_14B052D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_6CC)
  loc_14B057C: var_134 = "Insert Into GuestWakeUp (DocID,VType,VPrefix,Site_Code,VNo,VDate,VTime,RoomNo,RoomCat,RoomType,Extension,RemReqd,FoodOrd,OtherReq,WDate,WTime,GuestProf,FolioNo,U_Name,U_EntDt,U_AE) Values ('" & var_AC
  loc_14B0583: var_138 = var_134 & "','"
  loc_14B05C3: var_EC = CVar(var_138 & global_60 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_6C4) & ",") 'String
  loc_14B0623: var_2D8 = var_EC & var_CC & ",'" & Format(Time, "HH:MM") & "'," & var_1E0 & ",'" & CVar(global_68) & "'," & var_27C & "," & CVar(var_6CC) 
  loc_14B0692: var_500 = var_2D8 & "," & var_330 & "," & var_388 & "," & var_3E0 & "," & var_438 & "," & var_490 & ",'" & CVar(global_72) & "'," 
  loc_14B06DC: var_694 = var_500 & CVar(global_76) & ",'" & CVar(MemVar_1F950C8) & "'," & var_5A0 & ",'" & IIf((var_5F4 = "Add"), "A", "E") & "')" 
  loc_14B06EA: unk_473539.Execute CStr(var_694), var_6B8, -1
  loc_14B07B8: If (MemVar_1F951D4 = "Y") Then
  loc_14B07C1:   var_DC = 0
  loc_14B07E0:   unk_473582.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_CC, -1
  loc_14B07E8:   var_A0 = var_A0.Fields
  loc_14B07F0:   var_DC = var_A4.Item(var_A4)
  loc_14B07F8:   var_A8 = var_A8.Value
  loc_14B0802:   var_98 = CLng(var_EC)
  loc_14B0833:   Set var_A0 = Me.Txt
  loc_14B0839:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_A4, var_AC, "Delete from EPABX_IN where v_type='WKALM' AND ROOM_NO='", var_CC, -1)
  loc_14B0841:   var_158 = var_A4.Text
  loc_14B0862:   Set var_A8 = Me.Txt
  loc_14B0868:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_154, var_138, var_98 & var_AC & "' AND VdATE=#")
  loc_14B0870:   var_EC = var_154.Text
  loc_14B0889:   unk_473582.Execute var_6BC & var_138 & "#", var_6C4, 
  loc_14B08B9:   Set var_A0 = Me.Txt
  loc_14B08BF:   Call 0.Method_TopCtrl1_UnknownEvent_190 (6, var_A4)
  loc_14B08DA:   Set var_A8 = Me.Txt
  loc_14B08E0:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_154)
  loc_14B08FB:   Set var_158 = Me.Txt
  loc_14B0901:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_1BC)
  loc_14B091C:   Set var_1C0 = Me.Txt
  loc_14B0922:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_254)
  loc_14B093A:   Set var_258 = Me.txtM
  loc_14B0940:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB))
  loc_14B094D:   var_CC = CVar(var_2B0) 'Address
  loc_14B0964:   Set var_2B4 = Me.txtM
  loc_14B096A:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_2FC)
  loc_14B099C:   var_134 = "Insert into EPABX_IN (ID,V_TYPE,VDATE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE,ALARM_HOUR,ALARM_MIN) VALUES(" & CStr(var_98)
  loc_14B09DB:   var_10C = CVar(var_134 & ",'WKALM',#" & var_A4.Text & "#,'" & var_154.Text & "','" & var_1BC.Text & "','" & var_254.Text & "',0,'") 'String
  loc_14B09EA:   var_178 = var_10C & Left(var_CC, 2) & "','" 
  loc_14B0A08:   unk_473582.Execute CStr(var_178 & Right(CVar(var_2FC), 2) & "')"), var_1D0, -1
  loc_14B0A5E: End If
  loc_14B0A62: Set var_A0 = Me.TopCtrl1
  loc_14B0A68: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_300)
  loc_14B0A7D: If (var_2B0 = "Add") Then
  loc_14B0A94:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_14B0ABA:   var_EC = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_14B0ACB:   Proc_6_7_F26918(var_CC, global_64, var_EC)
  loc_14B0AEA:   unk_473539.Execute CStr(var_178 & var_CC & " Order By VP.Date_From DESC"), -1, var_A0
  loc_14B0AF5:   Set var_8C = var_A0
  loc_14B0B2B:   If (var_8C.RecordCount > 0) Then
  loc_14B0B3C:     Set var_A0 = Me.Txt
  loc_14B0B42:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A4)
  loc_14B0B4A:     var_AC = var_A4.Text
  loc_14B0B57:     var_6C4 = Val(var_AC)
  loc_14B0B5D:     var_BC = "Date_From"
  loc_14B0B80:     Proc_6_7_F26918(var_EC, CVar(var_8C.Fields.Item(var_BC)))
  loc_14B0BB3:     var_144 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_6C4) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_14B0BE6:     unk_473539.Execute CStr(CVar(var_144 & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_EC), var_178, -1
  loc_14B0C1A:   End If
  loc_14B0C1A: End If
  loc_14B0C20: unk_473539.CommitTrans
  loc_14B0C33: Set var_A0 = Me.Txt
  loc_14B0C39: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A4, var_AC)
  loc_14B0C41: var_158 = var_A4.Text
  loc_14B0C55: var_86 = 0
  loc_14B0C63: Me.Requery -1
  loc_14B0C8D: Me.Find "SearchCode ='" & "SearchCode ='" & var_AC & "'", 0, 1
  loc_14B0CBC: Call Proc_37_35_FA8F7C(Proc_5_1_100EC1C("INI", Me, global_96), var_BC)
  loc_14B0CD0: Set var_A0 = Me.TopCtrl1
  loc_14B0CD6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030008(False)
  loc_14B0CE7: Set var_A0 = Me.TopCtrl1
  loc_14B0CED: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(False)
  loc_14B0CFE: Set var_A0 = Me.TopCtrl1
  loc_14B0D04: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030009(False)
  loc_14B0D15: Set var_A0 = Me.TopCtrl1
  loc_14B0D1B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030006(False)
  loc_14B0D23: Call Proc_37_33_F31EB0(var_86)
  loc_14B0D2D: Set var_8C = Nothing
  loc_14B0D30: Exit Sub
  loc_14B0D31: ' Referenced from: 14B01D0
  loc_14B0D37: If (var_86 = &HFF) Then
  loc_14B0D40:   unk_473539.RollbackTrans
  loc_14B0D45: End If
  loc_14B0D45: Proc_6_60_E63754(var_6C4)
  loc_14B0D4A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'F02998
  'Data Table: 473520
  loc_F028C0: On Error Goto loc_F02992
  loc_F028FA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F02920:   Call Proc_37_35_FA8F7C(Proc_5_1_100EC1C("INI", Me))
  loc_F02934:   Set var_10C = Me.TopCtrl1
  loc_F0293A:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030008(False)
  loc_F0294B:   Set var_10C = Me.TopCtrl1
  loc_F02951:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(False)
  loc_F02962:   Set var_10C = Me.TopCtrl1
  loc_F02968:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030009(False)
  loc_F02979:   Set var_10C = Me.TopCtrl1
  loc_F0297F:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030006(False)
  loc_F02987:   Call Proc_37_36_EB6DB4(global_96)
  loc_F0298C:   Call Proc_37_33_F31EB0()
  loc_F02991: End If
  loc_F02991: Exit Sub
  loc_F02992: ' Referenced from: F028C0
  loc_F02992: Proc_6_60_E63754()
  loc_F02997: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB6E80
  'Data Table: 473520
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_EB6DEC: On Error Goto loc_EB6E7A
  loc_EB6E06: If (Me.RecordCount <= 0) Then
  loc_EB6E0F:   var_B8 = "Information"
  loc_EB6E2A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB6E3A:   Exit Sub
  loc_EB6E3B: End If
  loc_EB6E42: MemVar_1F950E4 = "Select GW.DocID as SearchCode,CAST(GW.VNo AS VARCHAR) As VrNo,GW.RoomNo,GF.Name As GuestName,GF.Company,GW.FoodOrd,GW.OtherReq " & "From ((GuestWakeUp GW Left Join RoomOcc RO On (GW.RoomNo=RO.RoomNo And GW.FolioNo=RO.FolioNo)) Left Join GuestFolio GF On RO.FolioNo=GF.FolioNo) Order by GW.DocID,GW.VNo"
  loc_EB6E4F: Proc_6_126_F1C850("1000,1000,2500,2000,2000,2000")
  loc_EB6E5D: MemVar_1F95120 = Me
  loc_EB6E74: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB6E79: Exit Sub
  loc_EB6E7A: ' Referenced from: EB6DEC
  loc_EB6E7A: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EB6E7F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E0B780
  'Data Table: 473520
  Dim Me As Recordset15
  loc_E0B777: Me.Requery -1
  loc_E0B77C: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F15A2C
  'Data Table: 473520
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F15948: On Error Goto loc_F15A26
  loc_F1594F: Set var_A4 = Me.ListView
  loc_F15999: Set var_BC = Me.Txt
  loc_F1599F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F159A7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F159D3: Me.FrmList.Visible = False
  loc_F159F5: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F15A03: Set var_9C = Me.Txt
  loc_F15A09: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F15A11: var_A4.SetFocus
  loc_F15A25: Exit Sub
  loc_F15A26: ' Referenced from: F15948
  loc_F15A26: Proc_6_60_E63754(var_C8)
  loc_F15A2B: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F41D74
  'Data Table: 473520
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F41C6B: Me.DGRoom.Visible = False
  loc_F41C8A: If (Me.RecordCount > 0) Then
  loc_F41CC9:   Set var_B4 = Me.Txt
  loc_F41CCF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2), var_B8)
  loc_F41CD7:   var_B8.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_F41D0A:   var_B0 = Me.Fields.Item("Type")
  loc_F41D29:   Set var_B4 = Me.Txt
  loc_F41D2F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2), var_B8)
  loc_F41D37:   var_B8.Tag = CStr(var_B0.Value)
  loc_F41D4D: End If
  loc_F41D58: Set var_A8 = Me.Txt
  loc_F41D5E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(2))
  loc_F41D66: var_B0.SetFocus
  loc_F41D72: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'E9BCE0
  'Data Table: 473520
  Dim var_A8 As Variant
  loc_E9BC64: Set var_88 = Me.DGRoom
  loc_E9BC8E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9BC96: Set var_BC = Me.DGRoom
  loc_E9BCD0: Proc_6_138_106E830(Me.DGRoom, global_100, 0, Me.FGPoint)
  loc_E9BCDE: Exit Sub
  loc_E9BCDF: Exit Sub
End Sub

Private Sub Form_Load() '10F1680
  'Data Table: 473520
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_D0 As DataGrid
  Dim var_D4 As TextBox
  Dim var_D8 As DataGrid
  loc_10F1360: On Error Goto loc_10F167A
  loc_10F1369: Call 0.Method_Me8 (var_88)
  loc_10F1374: Call 0.Method_Me0 (var_8C)
  loc_10F1393: Proc_6_23_DFC5B8(Me, CInt(var_88))
  loc_10F13A7: Set var_98 = MemVar_1F95248.PictSubMenu
  loc_10F13AD: var_8C = MDIForm1.PictSubMenu.Height
  loc_10F13BE: Set var_90 = MemVar_1F95248.PictSubMenu
  loc_10F13C4: var_88 = MDIForm1.PictSubMenu.Top
  loc_10F13D4: Call 0.Method_arg_7C ((var_88 + var_8C))
  loc_10F13EA: Set global_100 = New 
  loc_10F13FC: Me.Recordset15.CursorLocation = 3
  loc_10F1426: var_AC = CVar("Select RoomType as Type,RoomNo,RoomCat,'' AS Extension From Roomocc where RoomOcc.logsite_code='" & MemVar_1F95078 & "' and chkoutdate is NULL Order by RoomNO") 'String
  loc_10F1444: CVarUnk
  loc_10F1449: VerifyVarObj
  loc_10F144F: Set var_90 = Me.DGRoom
  loc_10F1455: LateIdStAd
  loc_10F1477: Call 0.Method_Form_Load0 (CInt(2), var_98, var_88, Me.Txt)
  loc_10F147F: global_100 = var_98.Left
  loc_10F1496: Me.DGRoom.Left = CVar(var_88)
  loc_10F14B2: Set var_D0 = Me.Txt
  loc_10F14B8: Call 0.Method_Form_Load0 (CInt(2), var_D4, var_8C)
  loc_10F14C0: 3 = var_D4.Height
  loc_10F14D3: Set var_90 = Me.Txt
  loc_10F14D9: Call 0.Method_Form_Load0 (CInt(2), var_98, var_88)
  loc_10F14E1: -1 = var_98.Top
  loc_10F14ED: var_BC = CVar((var_88 + var_8C)) 'Single
  loc_10F14F6: Set var_D8 = Me.DGRoom
  loc_10F14FC: var_D8.Top = CVar(var_88)
  loc_10F152A: Me.var_D8.CursorLocation = 3
  loc_10F1554: var_AC = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From GuestWakeUp where LogSite_Code='" & MemVar_1F95078 & "' Order by DocID") 'String
  loc_10F155E: r_AC, CVar(MemVar_1F95044), 2 var_AC, CVar(MemVar_1F95044), 2
  loc_10F156F: global_60 = "HTGWP"
  loc_10F1596: Call Proc_37_35_FA8F7C(Proc_5_1_100EC1C("INI", Me, New), 3)
  loc_10F15B9: Proc_6_23_DFC5B8(Me, 6085, 10525)
  loc_10F15CA: Set var_90 = Me.TopCtrl1
  loc_10F15D0: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030008(False)
  loc_10F15E1: Set var_90 = Me.TopCtrl1
  loc_10F15E7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(False)
  loc_10F15F8: Set var_90 = Me.TopCtrl1
  loc_10F15FE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030009(False)
  loc_10F160F: Set var_90 = Me.TopCtrl1
  loc_10F1615: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030006(False)
  loc_10F161D: Call Proc_37_33_F31EB0(-1)
  loc_10F162A: Call 0.Method_Me4 (CDbl(10560))
  loc_10F1637: Call 0.Method_MeC (CDbl(6150))
  loc_10F166B: global_64 = CStr(Format(MemVar_1F950EC, "DD/MM/YYYY"))
  loc_10F1679: Exit Sub
  loc_10F167A: ' Referenced from: 10F1360
  loc_10F167A: Proc_6_60_E63754(1, 1)
  loc_10F167F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E40E30
  'Data Table: 473520
  loc_E40E0B: Set global_100 = Nothing
  loc_E40E1D: Set global_96 = Nothing
  loc_E40E29: MasterFormExit = 0
  loc_E40E2C: Exit Sub
End Sub

Private Sub Form_Activate() 'E48BB0
  'Data Table: 473520
  loc_E48B80: On Error Goto loc_E48BAA
  loc_E48B87: Set var_88 = Me.TopCtrl1
  loc_E48B8D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E48BA2: If (CLng(CInt()) = &H2D) Then
  loc_E48BA5:   Call TopCtrl1_UnknownEvent_1D()
  loc_E48BAA:   ' Referenced from: E48B80
  loc_E48BAA: End If
  loc_E48BAA: Proc_6_60_E63754()
  loc_E48BAF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E265FC
  'Data Table: 473520
  loc_E265E1: If (MasterFormExit = &HFF) Then
  loc_E265F1:   Me.Global.Unload Me
  loc_E265F9: End If
  loc_E265F9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AF44
  'Data Table: 473520
  loc_E2AF1C: On Error Goto loc_E2AF3C
  loc_E2AF33: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2AF3B: Exit Sub
  loc_E2AF3C: ' Referenced from: E2AF1C
  loc_E2AF3C: Proc_6_60_E63754(Shift)
  loc_E2AF41: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E38224
  'Data Table: 473520
  loc_E38218: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_E3821B:   Call DGRoom_UnknownEvent_9()
  loc_E38220: End If
  loc_E38220: Exit Sub
  loc_E38222: Result  &  End Sub 'Currency
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10C3FF4
  'Data Table: 473520
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_10C3D32: Set var_88 = Me.Txt
  loc_10C3D38: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10C3D46: Proc_6_74_E23240(var_8C)
  loc_10C3D52: Call Proc_37_36_EB6DB4(var_8C)
  loc_10C3D5A: var_92 = Index
  loc_10C3D65: If (var_92 = CInt(2)) Then
  loc_10C3D7F:   If (Me.RecordCount > 0) Then
  loc_10C3D8D:     Set var_8C = Me.FGPoint
  loc_10C3DA5:     Proc_6_137_1192FDC(Me.DGRoom, global_100, Index)
  loc_10C3DB3:   End If
  loc_10C3E01:   Set var_88 = Me.Txt
  loc_10C3E07:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10C3E0F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10C3E27:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_10C3E2A:     Exit Sub
  loc_10C3E2B:   End If
  loc_10C3E38:   Set var_88 = Me.Txt
  loc_10C3E3E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10C3E46:   var_A0 = var_8C.Text
  loc_10C3E58:   var_B0 = "RoomNo"
  loc_10C3E93:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_10C3E9C:     Me.MoveFirst
  loc_10C3EBF:     Set var_88 = Me.Txt
  loc_10C3EC5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_10C3ECD:     0 = var_8C.Text
  loc_10C3EE6:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_10C3EFB:   End If
  loc_10C3EFE: Else
  loc_10C3F06:   If (var_92 = CInt(5)) Then
  loc_10C3F16:     ReDim var_F0(0 To 1)
  loc_10C3F2D:     var_F0(0) = "Yes"
  loc_10C3F3C:     var_F0(1) = "No"
  loc_10C3F53:     global_104 = Array(var_F0)
  loc_10C3F5E:     Set var_B4 = Me.ListView
  loc_10C3F79:     Set var_8C = Me.Txt
  loc_10C3F93:     Set global_120 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_10C3FB1:     Set var_88 = Me.Txt
  loc_10C3FB7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_10C3FBF:     global_104 = var_8C.Text
  loc_10C3FD1:     Set var_90 = Me.Txt
  loc_10C3FD7:     Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_10C3FDF:     var_B4.Tag = 2
  loc_10C3FF2:   End If
  loc_10C3FF2: End If
  loc_10C3FF2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11644BC
  'Data Table: 473520
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_116412F: var_86 = Shift
  loc_116413C: If (CLng(Shift) = &H1B) Then
  loc_116413F:   Call Proc_37_36_EB6DB4(var_86)
  loc_1164144:   Exit Sub
  loc_1164145: End If
  loc_1164148: var_88 = KeyCode
  loc_1164153: If (var_88 = CInt(2)) Then
  loc_1164161:   Set var_AC = Me.Txt
  loc_1164173:   Set var_A0 = Me.FGPoint
  loc_116417E:   Set var_9C = Nothing
  loc_11641B0:   Proc_6_69_134A630(Me.DGRoom, var_AC, CInt(2), global_100, Shift, 0)
  loc_11641CF:   var_B4 = Me.RecordCount
  loc_116421F:   If ((var_B4 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1164226:     Set var_9C = Me.DGRoom
  loc_116422D:     Set var_90 = Me.FGPoint
  loc_1164245:     Proc_6_138_106E830(var_9C, global_100, KeyCode, var_90, 1)
  loc_1164253:   End If
  loc_1164256: Else
  loc_116425E:   If (var_88 = CInt(5)) Then
  loc_1164283:     Set var_8C = Me.Txt
  loc_1164289:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, var_9C)
  loc_1164291:     var_A0 = var_90.Left
  loc_11642A3:     Set var_9C = Me.Txt
  loc_11642A9:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_11642B1:     0 = var_A0.Top
  loc_11642C3:     Set var_A8 = Me.Txt
  loc_11642C9:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_11642D1:     var_BC = var_AC.Height
  loc_11642E3:     Set var_B0 = Me.Txt
  loc_11642E9:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11642F1:     var_C4 = var_C0.Width
  loc_1164339:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1164365:     Call Txt_Validate(KeyCode)
  loc_116436A:   End If
  loc_116436A: End If
  loc_11643A3: If ((CBool(Me.DGRoom.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_11643C4:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(9))) Then
  loc_11643CD:     Proc_6_75_E5335C(Shift, arg_14, 0, CInt(var_B4))
  loc_11643D2:   End If
  loc_11643D6:   Set var_8C = Me.TopCtrl1
  loc_11643DC:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E(CInt((var_B8 + var_BC)))
  loc_1164409:   If CBool((CInt(var_C4) = "Add") And (KeyCode <> CInt(2))) Then
  loc_1164421:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_116442A:       Proc_6_76_E533C8(Shift, arg_14)
  loc_116442F:     End If
  loc_1164432:   Else
  loc_1164436:     Set var_8C = Me.TopCtrl1
  loc_116443C:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E(780)
  loc_1164469:     If CBool((var_88 = "Edit") And (KeyCode <> CInt(7))) Then
  loc_1164481:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_116448A:         Proc_6_76_E533C8(Shift)
  loc_116448F:       End If
  loc_116448F:     End If
  loc_116448F:   End If
  loc_11644AD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_11644B3:     Call Proc_37_37_EE2A60(KeyCode)
  loc_11644B8:   End If
  loc_11644B8: End If
  loc_11644B8: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F184E4
  'Data Table: 473520
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F183F0: On Error Goto loc_F184DB
  loc_F183F6: Proc_6_58_E06050(arg_10)
  loc_F183FE: var_86 = KeyAscii
  loc_F18409: If (var_86 = CInt(7)) Then
  loc_F18416:   Set var_8C = Me.Txt
  loc_F1841C:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F18437:   Proc_6_42_129B55C(var_90, arg_10, 6)
  loc_F18446: Else
  loc_F1844E:   If (var_86 = CInt(2)) Then
  loc_F1846D:     If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F1847F:       var_AC = "RoomNo"
  loc_F1849A:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_100, arg_10)
  loc_F184CC:       Proc_6_138_106E830(Me.DGRoom, global_100, KeyAscii, Me.FGPoint)
  loc_F184DA:     End If
  loc_F184DA:   End If
  loc_F184DA: End If
  loc_F184DA: Exit Sub
  loc_F184DB: ' Referenced from: F183F0
  loc_F184DB: Proc_6_60_E63754(var_AC, 0)
  loc_F184E0: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E8BBB4
  'Data Table: 473520
  loc_E8BB56: If (KeyCode = CInt(5)) Then
  loc_E8BB74:   If (Me.FrmList.Visible = &HFF) Then
  loc_E8BBA3:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_E8BBB3:   End If
  loc_E8BBB3: End If
  loc_E8BBB3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E497DC
  'Data Table: 473520
  loc_E497BA: Set var_88 = Me.Txt
  loc_E497C0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E497CE: Proc_6_73_E23294(var_8C)
  loc_E497DA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14DBD18
  'Data Table: 473520
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim Me As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_C0 As TextBox
  Dim var_E0 As String
  Dim var_F0 As Variant
  Dim unk_473539 As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As TextBox
  loc_14DAF57: var_8A = Cancel
  loc_14DAF62: If (var_8A = CInt(2)) Then
  loc_14DAF71:   If (global_124 = 1) Then
  loc_14DAF92:     Set var_90 = Me.Txt
  loc_14DAF98:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, "roomno='")
  loc_14DAFA0:     0 = var_94.Text
  loc_14DAFB9:     Me.Find 1 & var_98 & "'", var_B0, var_8A
  loc_14DAFCE:   End If
  loc_14DB01C:   Set var_90 = Me.Txt
  loc_14DB022:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DB042:   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_14DB052:     Set var_90 = Me.Txt
  loc_14DB058:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DB060:     var_94.Text = vbNullString
  loc_14DB079:     Set var_90 = Me.Txt
  loc_14DB07F:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DB087:     var_94.Tag = vbNullString
  loc_14DB096:   Else
  loc_14DB0D2:     Set var_BC = Me.Txt
  loc_14DB0D8:     Call 0.Method_Txt_Validate0 (CInt(2), var_C0)
  loc_14DB0E0:     var_C0.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_14DB132:     Set var_BC = Me.Txt
  loc_14DB138:     Call 0.Method_Txt_Validate0 (CInt(2), var_C0)
  loc_14DB140:     var_C0.Tag = CStr(Me.Fields.Item("Type").Value)
  loc_14DB195:     Call 0.Method_Txt_Validate0 (CInt(7), var_C0)
  loc_14DB19D:     var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Extension")))
  loc_14DB1E5:     global_68 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_14DB203:     var_E0 = "SELECT GF.Name,GF.Company,RO.FolioNo,RO.GuestProf,RO.ChkInDate, RO.ChkInTime, RO.DepDate, RO.DepTime, GuestProf.Add1, GuestProf.Add2, SubGroup.Name AS CompanyName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, GuestStat.Name AS GuestStatus, City.CityName, RoomCat.Name as RoomCat FROM ((((GuestProf RIGHT JOIN (RoomOcc AS RO LEFT JOIN GuestFolio AS GF ON RO.FolioNo = GF.FolioNo) ON GuestProf.Code = GF.GuestProf) LEFT JOIN SubGroup ON GF.Company = SubGroup.SubCode) LEFT JOIN GuestStat ON GuestProf.GuestStatus = GuestStat.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN RoomCat ON RO.RoomCat=RoomCat.Code Where RoomNo='"
  loc_14DB235:     var_F0 = var_E0 & Me.Fields.Item("RoomNo").Value 
  loc_14DB24C:     unk_473539.Execute CStr(var_F0 & "' And ChkOutDate is Null"), var_130, -1
  loc_14DB257:     Set var_88 = Me.Txt
  loc_14DB285:     If (var_88.RecordCount > 0) Then
  loc_14DB2BE:       Set var_BC = Me.Txt
  loc_14DB2C4:       Call 0.Method_Txt_Validate0 (CInt(3), var_C0)
  loc_14DB2CC:       var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")))
  loc_14DB306:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("FolioNo")))
  loc_14DB31D:       Set var_BC = Me.Txt
  loc_14DB323:       Call 0.Method_Txt_Validate0 (CInt(&HE), var_C0)
  loc_14DB32B:       var_C0.Text = CStr(var_F0)
  loc_14DB379:       Set var_BC = Me.Txt
  loc_14DB37F:       Call 0.Method_Txt_Validate0 (CInt(4), var_C0)
  loc_14DB387:       var_C0.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("Company")))
  loc_14DB3D1:       Set var_BC = Me.Txt
  loc_14DB3D7:       Call 0.Method_Txt_Validate0 (CInt(4), var_C0)
  loc_14DB3DF:       var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyName")))
  loc_14DB429:       Set var_BC = Me.Txt
  loc_14DB42F:       Call 0.Method_Txt_Validate0 (CInt(&H13), var_C0)
  loc_14DB437:       var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments1")))
  loc_14DB481:       Set var_BC = Me.Txt
  loc_14DB487:       Call 0.Method_Txt_Validate0 (CInt(&H12), var_C0)
  loc_14DB48F:       var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments2")))
  loc_14DB4D9:       Set var_BC = Me.Txt
  loc_14DB4DF:       Call 0.Method_Txt_Validate0 (CInt(&H11), var_C0)
  loc_14DB4E7:       var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Comments3")))
  loc_14DB531:       Set var_BC = Me.Txt
  loc_14DB537:       Call 0.Method_Txt_Validate0 (CInt(&H1A), var_C0)
  loc_14DB53F:       var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_14DB589:       Set var_BC = Me.Txt
  loc_14DB58F:       Call 0.Method_Txt_Validate0 (CInt(&H1B), var_C0)
  loc_14DB597:       var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")))
  loc_14DB5E1:       Set var_BC = Me.Txt
  loc_14DB5E7:       Call 0.Method_Txt_Validate0 (CInt(&H19), var_C0)
  loc_14DB5EF:       var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_14DB639:       Set var_BC = Me.Txt
  loc_14DB63F:       Call 0.Method_Txt_Validate0 (CInt(&HF), var_C0)
  loc_14DB647:       var_C0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GuestStatus")))
  loc_14DB694:       Set var_BC = Me.Txt
  loc_14DB69A:       Call 0.Method_Txt_Validate0 (CInt(&H17), var_C0)
  loc_14DB6A2:       var_C0.Text = CStr(var_88.Fields.Item("ChkInDate").Value)
  loc_14DB6FA:       Set var_BC = Me.Txt
  loc_14DB700:       Call 0.Method_Txt_Validate0 (CInt(&H16), var_C0)
  loc_14DB708:       var_C0.Text = CStr(Left(CVar(var_88.Fields.Item("ChkInTime")), 2))
  loc_14DB762:       Set var_BC = Me.Txt
  loc_14DB768:       Call 0.Method_Txt_Validate0 (CInt(&H15), var_C0)
  loc_14DB770:       var_C0.Text = CStr(Right(CVar(var_88.Fields.Item("ChkInTime")), 2))
  loc_14DB7C1:       Set var_BC = Me.Txt
  loc_14DB7C7:       Call 0.Method_Txt_Validate0 (CInt(&HB), var_C0)
  loc_14DB7CF:       var_C0.Text = CStr(var_88.Fields.Item("DepDate").Value)
  loc_14DB827:       Set var_BC = Me.Txt
  loc_14DB82D:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_C0)
  loc_14DB835:       var_C0.Text = CStr(Left(CVar(var_88.Fields.Item("DepTime")), 2))
  loc_14DB88F:       Set var_BC = Me.Txt
  loc_14DB895:       Call 0.Method_Txt_Validate0 (CInt(&HC), var_C0)
  loc_14DB89D:       var_C0.Text = CStr(Right(CVar(var_88.Fields.Item("DepTime")), 2))
  loc_14DB8E6:       global_72 = CStr(var_88.Fields.Item("GuestProf").Value)
  loc_14DB94D:       var_94 = var_88.Fields.Item("RoomCat")
  loc_14DB96C:       Set var_BC = Me.Txt
  loc_14DB972:       Call 0.Method_Txt_Validate0 (CInt(&H18), var_C0, CStr(var_94.Value))
  loc_14DB97A:       var_C0.Text = CLng(var_88.Fields.Item("FolioNo").Value)
  loc_14DB993:     Else
  loc_14DB9A1:       Set var_90 = Me.Txt
  loc_14DB9A7:       Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_14DB9AF:       var_94.Text = vbNullString
  loc_14DB9C9:       Set var_90 = Me.Txt
  loc_14DB9CF:       Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_14DB9D7:       var_94.Text = vbNullString
  loc_14DB9F1:       Set var_90 = Me.Txt
  loc_14DB9F7:       Call 0.Method_Txt_Validate0 (CInt(&H17), var_94)
  loc_14DB9FF:       var_94.Text = vbNullString
  loc_14DBA19:       Set var_90 = Me.Txt
  loc_14DBA1F:       Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_14DBA27:       var_94.Text = vbNullString
  loc_14DBA41:       Set var_90 = Me.Txt
  loc_14DBA47:       Call 0.Method_Txt_Validate0 (CInt(&H16), var_94)
  loc_14DBA4F:       var_94.Text = vbNullString
  loc_14DBA69:       Set var_90 = Me.Txt
  loc_14DBA6F:       Call 0.Method_Txt_Validate0 (CInt(&H15), var_94)
  loc_14DBA77:       var_94.Text = vbNullString
  loc_14DBA91:       Set var_90 = Me.Txt
  loc_14DBA97:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_14DBA9F:       var_94.Text = vbNullString
  loc_14DBAB9:       Set var_90 = Me.Txt
  loc_14DBABF:       Call 0.Method_Txt_Validate0 (CInt(&HC), var_94)
  loc_14DBAC7:       var_94.Text = vbNullString
  loc_14DBAD9:       global_72 = vbNullString
  loc_14DBAF6:       Set var_90 = Me.Txt
  loc_14DBAFC:       Call 0.Method_Txt_Validate0 (CInt(&HF), var_94, vbNullString)
  loc_14DBB04:       var_94.Text = 0
  loc_14DBB10:     End If
  loc_14DBB10:   End If
  loc_14DBB13: Else
  loc_14DBB1B:   If (var_8A = CInt(5)) Then
  loc_14DBB2B:     Set var_90 = Me.Txt
  loc_14DBB31:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DBB50:     If (var_94.Text <> vbNullString) Then
  loc_14DBB6B:       Set var_94 = Me.ListView.SelectedItem
  loc_14DBB83:       Set var_BC = Me.Txt
  loc_14DBB89:       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_14DBB91:       var_C0.Text = var_94.Text
  loc_14DBBA7:     End If
  loc_14DBBB4:     Set var_90 = Me.Txt
  loc_14DBBBA:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DBBD9:     If (var_94.Text = "No") Then
  loc_14DBBE9:       Set var_90 = Me.Txt
  loc_14DBBEF:       Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_14DBBF7:       var_94.Enabled = False
  loc_14DBC13:       Set var_90 = Me.txtM
  loc_14DBC19:       Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_14DBC21:       var_94.Enabled = False
  loc_14DBC30:     Else
  loc_14DBC3D:       Set var_90 = Me.Txt
  loc_14DBC43:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14DBC62:       If (var_94.Text = "Yes") Then
  loc_14DBC72:         Set var_90 = Me.Txt
  loc_14DBC78:         Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_14DBC80:         var_94.Enabled = True
  loc_14DBC9B:         Set var_90 = Me.txtM
  loc_14DBCA1:         Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_14DBCA9:         var_94.Enabled = True
  loc_14DBCB5:       End If
  loc_14DBCB5:     End If
  loc_14DBCB8:   Else
  loc_14DBCC0:     If (var_8A = CInt(6)) Then
  loc_14DBCCE:       Set var_90 = Me.Txt
  loc_14DBCD4:       Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_14DBCF4:       Set var_C0 = Me.Txt
  loc_14DBCFA:       Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_14DBD02:       var_134.Text = Proc_6_33_15125B8(var_94)
  loc_14DBD15:     End If
  loc_14DBD15:   End If
  loc_14DBD15: End If
  loc_14DBD15: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E51BB4
  'Data Table: 473520
  loc_E51B8E: Set var_88 = Me.txtM
  loc_E51B94: Call 0.Method_txtM_UnknownEvent_00 (Cancel)
  loc_E51BA2: Proc_6_74_E23240(var_8C)
  loc_E51BAE: Call Proc_37_36_EB6DB4(var_8C)
  loc_E51BB3: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E49914
  'Data Table: 473520
  loc_E498F2: Set var_88 = Me.txtM
  loc_E498F8: Call 0.Method_txtM_UnknownEvent_10 (Cancel)
  loc_E49906: Proc_6_73_E23294(var_8C)
  loc_E49912: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E548C8
  'Data Table: 473520
  Dim arg_10 As Integer
  loc_E5489E: Set var_88 = Me.txtM
  loc_E548A4: Call 0.Method_txtM_UnknownEvent_80 (Cancel)
  loc_E548BE: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E548C3:   arg_10 = &HFF
  loc_E548C6: End If
  loc_E548C6: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E6084C
  'Data Table: 473520
  loc_E60806: If (CLng(arg_10) = &H1B) Then
  loc_E60809:   Call Proc_37_36_EB6DB4()
  loc_E6080E:   Exit Sub
  loc_E6080F: End If
  loc_E60824: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E6082D:   Proc_6_75_E5335C(arg_10)
  loc_E60832: End If
  loc_E6083C: If (CLng(arg_10) = &H26) Then
  loc_E60845:   Proc_6_76_E533C8(arg_10, arg_14)
  loc_E6084A: End If
  loc_E6084A: Exit Sub
End Sub

Public Function MasterFormExitGet() '4740B4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4740C3
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97700
  'Data Table: 473520
  Dim Me As Recordset15
  loc_E9768E: On Error Goto loc_E976F7
  loc_E97697: Me.MoveFirst
  loc_E976C1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E976E9: Proc_5_0_1107AD0(&HFF, Me, global_96)
  loc_E976F1: Call Proc_37_34_1324E84(0)
  loc_E976F6: Exit Sub
  loc_E976F7: ' Referenced from: E9768E
  loc_E976F7: Proc_6_60_E63754(var_A0)
  loc_E976FC: Exit Sub
End Sub

Public Property Get OpenMode() 'E07450
  'Data Table: 473520
  loc_E07449: OpenMode = global_124
End Sub

Public Property Let OpenMode(vNewValue) 'E02314
  'Data Table: 473520
  loc_E02311: Exit Sub
  loc_E02312: Set var_5788 = vNewValue
End Sub

Public Sub Proc_37_32_F8BB60
  'Data Table: 473520
  Dim var_C0 As TextBox
  Dim unk_473539 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F8BA25: Set var_8C = Me.TopCtrl1
  loc_F8BA2B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E(&HFF)
  loc_F8BA40: If ( = "Add") Then
  loc_F8BA70:   Set var_8C = Me.Txt
  loc_F8BA76:   Call 0.Method_Proc_37_32_F8BB600 (CInt(0), var_C0, var_C4, "Select Count(*) From GuestWakeUp Where DocID='", var_AC, -1)
  loc_F8BA97:   unk_473539.Execute var_D4 & var_C4 & "'", 0, var_E8
  loc_F8BAA7:    = var_D4.Item()
  loc_F8BAAF:    = var_E8.Value
  loc_F8BADC:   If (var_C0.Text.Fields > 0) Then
  loc_F8BAE5:     Call 0.Method_arg_50 (var_C4)
  loc_F8BB06:     MsgBox("Duplicate Serial No.", &H40, CVar(var_C4), var_108, var_118)
  loc_F8BB1C:     Call Proc_37_38_114803C(MemVar_1F95044)
  loc_F8BB2F:     Set var_8C = Me.Txt
  loc_F8BB35:     Call 0.Method_Proc_37_32_F8BB600 (CInt(0), var_C0)
  loc_F8BB3D:     var_C0.Text = var_C4
  loc_F8BB51:     Proc_37_32_F8BB60 = 0
  loc_F8BB57:   End If
  loc_F8BB57: End If
  loc_F8BB57: Proc_37_32_F8BB60 = var_C4
End Sub

Public Sub Proc_37_33_F31EB0
  'Data Table: 473520
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_F31D9E: Set var_8C = Me.Txt
  loc_F31DA4: Call 0.Method_Proc_37_33_F31EB0C (var_8E, var_86)
  loc_F31DB4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F31DCA:   Set var_8C = Me.Txt
  loc_F31DD0:   Call 0.Method_Proc_37_33_F31EB00 (CInt(var_86), var_98)
  loc_F31DD8:   var_98.Text = vbNullString
  loc_F31DF4:   Set var_8C = Me.Txt
  loc_F31DFA:   Call 0.Method_Proc_37_33_F31EB00 (CInt(var_86), var_98)
  loc_F31E02:   var_98.Tag = vbNullString
  loc_F31E11: Next var_92 'Byte
  loc_F31E26: Set var_8C = Me.txtM
  loc_F31E2C: Call 0.Method_Proc_37_33_F31EB00 (&HB, var_98)
  loc_F31E34: var_98.Text = "00:00"
  loc_F31E4F: Set var_8C = Me.txtM
  loc_F31E55: Call 0.Method_Proc_37_33_F31EB00 (&HB, var_98)
  loc_F31E5D: var_98.Tag = vbNullString
  loc_F31E76: Me.LblVPrefix.Caption = vbNullString
  loc_F31E87: Set var_8C = Me.TopCtrl1
  loc_F31E8D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000B(False)
  loc_F31E9E: Set var_8C = Me.TopCtrl1
  loc_F31EA4: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000A(False)
  loc_F31EAC: Exit Sub
End Sub

Public Sub Proc_37_34_1324E84
  'Data Table: 473520
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim unk_473539 As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_11C As Variant
  loc_132470C: On Error Goto loc_1324E7D
  loc_1324726: If (Me.RecordCount > 0) Then
  loc_132477F:   unk_473539.Execute CStr("Select * From GuestWakeUp Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_13247A7:   Set var_124 = var_120 
  loc_13247E4:   Set var_120 = Me.Txt
  loc_13247EA:   Call 0.Method_Proc_37_34_1324E840 (CInt(0), var_128)
  loc_13247F2:   var_128.Text = CStr(var_124.Fields.Item("DocID").Value)
  loc_1324840:   Me.LblVPrefix.Caption = CStr(var_124.Fields.Item("vPrefix").Value)
  loc_132488D:   Set var_120 = Me.Txt
  loc_1324893:   Call 0.Method_Proc_37_34_1324E840 (CInt(1), var_128)
  loc_132489B:   var_128.Text = CStr(var_124.Fields.Item("VNo").Value)
  loc_13248EA:   Set var_120 = Me.Txt
  loc_13248F0:   Call 0.Method_Proc_37_34_1324E840 (CInt(2), var_128)
  loc_13248F8:   var_128.Text = CStr(var_124.Fields.Item("RoomNo").Value)
  loc_132494A:   var_D8 = "Select Name,Company From RoomOcc RO Left Join GuestFolio GF On RO.FolioNo=GF.FolioNo Where RO.RoomNo='" & var_124.Fields.Item("RoomNo").Value 
  loc_1324971:   var_128 = var_124.Fields.Item("FolioNo")
  loc_1324998:   unk_473539.Execute CStr(var_D8 & "' And RO.FolioNo=" & var_128.Value & vbNullString), var_178, -1
  loc_13249A3:   Set var_8C = var_17C
  loc_13249DB:   If (var_8C.RecordCount > 0) Then
  loc_1324A14:     Set var_120 = Me.Txt
  loc_1324A1A:     Call 0.Method_Proc_37_34_1324E840 (CInt(3), var_128)
  loc_1324A22:     var_128.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")), var_17C)
  loc_1324A4D:     var_A8 = var_8C.Fields.Item("Company")
  loc_1324A6C:     Set var_120 = Me.Txt
  loc_1324A72:     Call 0.Method_Proc_37_34_1324E840 (CInt(4), var_128)
  loc_1324A7A:     var_128.Text = Proc_6_38_E69628(CVar(var_A8))
  loc_1324A91:   Else
  loc_1324A9F:     Set var_94 = Me.Txt
  loc_1324AA5:     Call 0.Method_Proc_37_34_1324E840 (CInt(3), var_A8)
  loc_1324AAD:     var_A8.Text = vbNullString
  loc_1324AC7:     Set var_94 = Me.Txt
  loc_1324ACD:     Call 0.Method_Proc_37_34_1324E840 (CInt(4), var_A8)
  loc_1324AD5:     var_A8.Text = vbNullString
  loc_1324AE1:   End If
  loc_1324B07:   Proc_6_39_E7D3A0(var_D8, CVar(var_124.Fields.Item("Extension")))
  loc_1324B1E:   Set var_120 = Me.Txt
  loc_1324B24:   Call 0.Method_Proc_37_34_1324E840 (CInt(7), var_128)
  loc_1324B2C:   var_128.Text = CStr(var_D8)
  loc_1324BAF:   Set var_120 = Me.Txt
  loc_1324BB5:   Call 0.Method_Proc_37_34_1324E840 (CInt(5), var_128)
  loc_1324BBD:   var_128.Text = CStr(IIf((var_124.Fields.Item("RemReqd").Value = "Y"), "Yes", "No"))
  loc_1324C13:   Set var_120 = Me.Txt
  loc_1324C19:   Call 0.Method_Proc_37_34_1324E840 (CInt(8), var_128)
  loc_1324C21:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("FoodOrd")))
  loc_1324C87:   Set var_120 = Me.Txt
  loc_1324C8D:   Call 0.Method_Proc_37_34_1324E840 (CInt(6), var_128, CStr(Format(CVar(var_124.Fields.Item("WDate")), "DD/MM/YYYY")))
  loc_1324C95:   var_128.Text = 1
  loc_1324D02:   Set var_120 = Me.txtM
  loc_1324D08:   Call 0.Method_Proc_37_34_1324E840 (CInt(&HB), var_128, CVar(CStr(Format(CVar(var_124.Fields.Item("WTime")), "HH:MM"))), 1)
  loc_1324D10:   var_128.defaultText = 1
  loc_1324D5F:   Set var_120 = Me.Txt
  loc_1324D65:   Call 0.Method_Proc_37_34_1324E840 (CInt(9), var_128)
  loc_1324D6D:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("OtherReq")), 1)
  loc_1324DB7:   Set var_120 = Me.Txt
  loc_1324DBD:   Call 0.Method_Proc_37_34_1324E840 (CInt(&HA), var_128)
  loc_1324DC5:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("U_Name")))
  loc_1324DE1:   Set var_94 = Me.TopCtrl1
  loc_1324DE7:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000B(True)
  loc_1324DF7:   Set var_94 = Me.TopCtrl1
  loc_1324DFD:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000A(True)
  loc_1324E0E:   Set var_94 = Me.TopCtrl1
  loc_1324E14:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030008(False)
  loc_1324E25:   Set var_94 = Me.TopCtrl1
  loc_1324E2B:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(False)
  loc_1324E3C:   Set var_94 = Me.TopCtrl1
  loc_1324E42:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030009(False)
  loc_1324E53:   Set var_94 = Me.TopCtrl1
  loc_1324E59:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030006(False)
  loc_1324E63:   Set var_124 = Nothing 
  loc_1324E6A: Else
  loc_1324E6A:   Call Proc_37_33_F31EB0(var_120)
  loc_1324E6F: End If
  loc_1324E6F: Call Proc_37_36_EB6DB4()
  loc_1324E79: Set var_88 = Nothing
  loc_1324E7C: Exit Sub
  loc_1324E7D: ' Referenced from: 132470C
  loc_1324E7D: Proc_6_60_E63754()
  loc_1324E82: Exit Sub
End Sub

Public Sub Proc_37_35_FA8F7C(arg_C) 'FA8F7C
  'Data Table: 473520
  Dim var_98 As Variant
  loc_FA8DEE: Set var_8C = Me.Txt
  loc_FA8DF4: Call 0.Method_Proc_37_35_FA8F7CC (var_8E, var_86)
  loc_FA8E04: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FA8E1A:   Set var_8C = Me.Txt
  loc_FA8E20:   Call 0.Method_Proc_37_35_FA8F7C0 (CInt(var_86), var_98)
  loc_FA8E28:   var_98.Enabled = arg_C
  loc_FA8E37: Next var_92 'Byte
  loc_FA8E4A: Set var_8C = Me.Txt
  loc_FA8E50: Call 0.Method_Proc_37_35_FA8F7C0 (CInt(0), var_98)
  loc_FA8E58: var_98.Enabled = False
  loc_FA8E71: Set var_8C = Me.Txt
  loc_FA8E77: Call 0.Method_Proc_37_35_FA8F7C0 (CInt(1), var_98)
  loc_FA8E7F: var_98.Enabled = False
  loc_FA8E98: Set var_8C = Me.Txt
  loc_FA8E9E: Call 0.Method_Proc_37_35_FA8F7C0 (CInt(3), var_98)
  loc_FA8EA6: var_98.Enabled = False
  loc_FA8EBF: Set var_8C = Me.Txt
  loc_FA8EC5: Call 0.Method_Proc_37_35_FA8F7C0 (CInt(4), var_98)
  loc_FA8ECD: var_98.Enabled = False
  loc_FA8EE6: Set var_8C = Me.Txt
  loc_FA8EEC: Call 0.Method_Proc_37_35_FA8F7C0 (CInt(7), var_98)
  loc_FA8EF4: var_98.Enabled = False
  loc_FA8F12: Set var_8C = Me.txtM
  loc_FA8F18: Call 0.Method_Proc_37_35_FA8F7C0 (CInt(&HB), var_98)
  loc_FA8F20: var_98.Enabled = arg_C
  loc_FA8F39: Set var_8C = Me.Txt
  loc_FA8F3F: Call 0.Method_Proc_37_35_FA8F7C0 (CInt(&HA), var_98)
  loc_FA8F47: var_98.Enabled = False
  loc_FA8F61: Set var_8C = Me.Txt
  loc_FA8F67: Call 0.Method_Proc_37_35_FA8F7C0 (CInt(&HA), var_98)
  loc_FA8F6F: var_98.Text = MemVar_1F950C8
  loc_FA8F7B: Exit Sub
End Sub

Public Sub Proc_37_36_EB6DB4
  'Data Table: 473520
  loc_EB6D30: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EB6D42:   Me.DGRoom.Visible = False
  loc_EB6D4A: End If
  loc_EB6D65: If (Me.FrmList.Visible = &HFF) Then
  loc_EB6D74:   Me.FrmList.Visible = False
  loc_EB6D7C: End If
  loc_EB6D98: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB6DAA:   Me.FGPoint.Visible = False
  loc_EB6DB2: End If
  loc_EB6DB2: Exit Sub
End Sub

Public Sub Proc_37_37_EE2A60(arg_C) 'EE2A60
  'Data Table: 473520
  Dim var_8C As TextBox
  loc_EE29B4: Call Proc_37_36_EB6DB4()
  loc_EE29C4: Set var_88 = Me.Txt
  loc_EE29CA: Call 0.Method_Proc_37_37_EE2A600 (CInt(2))
  loc_EE29F3: If (Proc_6_27_EA61EC(var_8C, "Room No") = 0) Then
  loc_EE29F6:   Exit Sub
  loc_EE29F7: End If
  loc_EE2A2E: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE2A31:   Call TopCtrl1_UnknownEvent_19()
  loc_EE2A39: Else
  loc_EE2A43:   Set var_88 = Me.Txt
  loc_EE2A49:   Call 0.Method_Proc_37_37_EE2A600 (arg_C, var_8C)
  loc_EE2A51:   var_8C.SetFocus
  loc_EE2A5D: End If
  loc_EE2A5D: Exit Sub
End Sub

Public Sub Proc_37_38_114803C
  'Data Table: 473520
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
  loc_1147CEC: var_90 = global_60
  loc_1147D03: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1147D26: var_E0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_1147D37: Proc_6_7_F26918(var_D0, global_64, var_E0)
  loc_1147D3F: var_F0 = var_134 & var_D0 
  loc_1147D48: var_110 = var_F0 & " Order By VP.Date_From DESC" 
  loc_1147D53: Me.Connection15.Execute CStr(var_110), -1, var_138
  loc_1147D5E: Set var_8C = var_138
  loc_1147D94: If (var_8C.RecordCount <= 0) Then
  loc_1147DB0:   MsgBox("Invalid Date", 0, var_E0, var_F0, var_110)
  loc_1147DC3:   var_88 = vbNullString
  loc_1147DC6:   Proc_37_38_114803C = 
  loc_1147DCC: End If
  loc_1147DE0: If (var_8C.RecordCount > 0) Then
  loc_1147E1F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1147E3C:     var_150 = var_8C.Fields.Item("Prefix")
  loc_1147E4D:     var_9C = CStr(var_150.Value)
  loc_1147E68:     Set var_138 = Me.Txt
  loc_1147E6E:     Call 0.Method_Proc_37_38_114803C0 (CInt(1), var_150)
  loc_1147E84:     var_94 = CLng(Val(var_150.Text))
  loc_1147E94:   Else
  loc_1147EBF:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1147EE6:     var_150 = var_8C.Fields.Item("start_srl_no")
  loc_1147EFB:     var_E0 = (var_150.Value + 1)
  loc_1147F01:     var_94 = CLng(var_E0)
  loc_1147F12:   End If
  loc_1147F12: End If
  loc_1147F3D: var_D0 = Space((5 - Len(var_90)))
  loc_1147F45: var_F0 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_150.Value)
  loc_1147F4F: var_110 = (var_F0 + CVar(var_9C))
  loc_1147F60: var_134 = Space((5 - Len(var_9C)))
  loc_1147F68: var_164 = (var_110 + var_134)
  loc_1147F7E: var_174 = Space((8 - Len(CStr(var_94))))
  loc_1147F86: var_184 = (var_164 + var_174)
  loc_1147F92: var_1A4 = (var_184 + CVar(CStr(var_94)))
  loc_1147F97: var_98 = CStr(var_1A4)
  loc_1147FC7: Me.LblVPrefix.Caption = var_9C
  loc_1147FDD: Set var_138 = Me.Txt
  loc_1147FE3: Call 0.Method_Proc_37_38_114803C0 (CInt(0), var_150)
  loc_1147FEB: var_150.Text = var_98
  loc_114800A: Set var_138 = Me.Txt
  loc_1148010: Call 0.Method_Proc_37_38_114803C0 (CInt(1), var_150)
  loc_1148018: var_150.Text = CStr(var_94)
  loc_114802A: var_88 = var_98
  loc_1148032: Set var_8C = Nothing
  loc_1148035: Proc_37_38_114803C = var_94
End Sub
