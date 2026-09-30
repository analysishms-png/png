VERSION 5.00
Begin VB.Form pPOrder
  Caption = "Purchase Order"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = -4095
  ClientTop = -315
  ClientWidth = 11880
  ClientHeight = 8070
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
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11880
    Height = 450
    TabIndex = 64
  End
  Begin TextBox Txt
    Index = 17
    ForeColor = &HC00000&
    Left = 8850
    Top = 1425
    Width = 1275
    Height = 285
    TabIndex = 4
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
  Begin DataGrid DGItem
    Left = 9570
    Top = 9225
    Width = 8415
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGParty
    Left = 9810
    Top = 8850
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 46
  End
  Begin DataGrid DGOrdType
    Left = 10125
    Top = 8460
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 44
  End
  Begin Frame FrmList
    Left = 5250
    Top = 8775
    Width = 2010
    Height = 1725
    Visible = 0   'False
    TabIndex = 38
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 675
      Top = -1110
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 39
    End
  End
  Begin TextBox Txt
    Index = 10
    ForeColor = &HC00000&
    Left = 6450
    Top = 7365
    Width = 7635
    Height = 285
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 120
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
    Index = 9
    ForeColor = &HC00000&
    Left = 6450
    Top = 7050
    Width = 7635
    Height = 285
    TabIndex = 15
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
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 1725
    Top = 1110
    Width = 2415
    Height = 285
    TabIndex = 0
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 720
    Top = 2055
    Width = 1065
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
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
    Index = 3
    ForeColor = &HC00000&
    Left = 8865
    Top = 1110
    Width = 1260
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
  Begin TextBox Txt
    Index = 12
    ForeColor = &HC00000&
    Left = 6450
    Top = 7995
    Width = 7635
    Height = 285
    TabIndex = 18
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
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 1605
    Top = 7320
    Width = 1260
    Height = 285
    TabIndex = 8
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
    Index = 14
    ForeColor = &HC00000&
    Left = 4110
    Top = 7335
    Width = 795
    Height = 285
    TabIndex = 12
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
    Index = 7
    ForeColor = &HC00000&
    Left = 1605
    Top = 7635
    Width = 1260
    Height = 285
    TabIndex = 9
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
    Index = 5
    ForeColor = &HC00000&
    Left = 1605
    Top = 7005
    Width = 1260
    Height = 285
    TabIndex = 7
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
  Begin TextBox Txt
    Index = 11
    ForeColor = &HC00000&
    Left = 6450
    Top = 7680
    Width = 7635
    Height = 285
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 70
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
    ForeColor = &HC00000&
    Left = 4110
    Top = 7965
    Width = 795
    Height = 285
    TabIndex = 14
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
    Index = 15
    ForeColor = &HC00000&
    Left = 4110
    Top = 7650
    Width = 795
    Height = 285
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
  Begin TextBox Txt
    Index = 13
    ForeColor = &HC00000&
    Left = 4110
    Top = 7020
    Width = 795
    Height = 285
    TabIndex = 11
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
    Index = 8
    ForeColor = &HC00000&
    Left = 1605
    Top = 7950
    Width = 1275
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 17
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
    Index = 2
    ForeColor = &HC00000&
    Left = 5805
    Top = 1110
    Width = 1260
    Height = 285
    TabIndex = 2
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
    Index = 0
    Left = 15825
    Top = 6885
    Width = 2310
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 1725
    Top = 1425
    Width = 5340
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
    Left = 0
    Top = 1750
    Width = 14115
    Height = 5235
    TabIndex = 5
  End
  Begin MSFlexGrid FGPoint
    Left = 7650
    Top = 8985
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 47
  End
  Begin DataGrid DGIndent
    Left = 10710
    Top = 8175
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin MSHFlexGrid FGCat
    Left = 90
    Top = 9615
    Width = 9150
    Height = 2355
    Visible = 0   'False
    TabIndex = 60
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 30
    Top = 8295
    Width = 2745
    Height = 345
    TabIndex = 65
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
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
    Left = 8205
    Top = 8355
    Width = 2790
    Height = 285
    TabIndex = 63
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
    Left = 6960
    Top = 8355
    Width = 2880
    Height = 255
    TabIndex = 62
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 61
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
  Begin Label Label2
    Index = 4
    BackColor = &HB4FEBD&
    ForeColor = &H80000008&
    Left = 16440
    Top = 1335
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 59
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 3
    BackColor = &H80C0FF&
    ForeColor = &H80000008&
    Left = 16440
    Top = 1065
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 58
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Between Max And Min  Stock"
    Index = 12
    ForeColor = &HC00000&
    Left = 16770
    Top = 1365
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 57
    Alignment = 2 'Center
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
    Caption = "Below To Minimum Stock"
    Index = 9
    ForeColor = &HC00000&
    Left = 16755
    Top = 1095
    Width = 2445
    Height = 240
    Visible = 0   'False
    TabIndex = 56
    Alignment = 2 'Center
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
    Caption = "Above To Maximum Stock "
    Index = 8
    ForeColor = &HC00000&
    Left = 16755
    Top = 825
    Width = 2550
    Height = 240
    Visible = 0   'False
    TabIndex = 55
    Alignment = 2 'Center
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
    Index = 2
    BackColor = &H8080FF&
    ForeColor = &H80000008&
    Left = 16440
    Top = 795
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 54
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest Bill Printed "
    Index = 0
    ForeColor = &H0&
    Left = 330
    Top = 15
    Width = 1650
    Height = 210
    TabIndex = 53
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 0
    BackColor = &HB4FEBD&
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 285
    Height = 270
    TabIndex = 52
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest Bill Printed "
    Index = 2
    ForeColor = &H0&
    Left = 14460
    Top = 7290
    Width = 1650
    Height = 210
    Visible = 0   'False
    TabIndex = 51
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 1
    BackColor = &HB4FEBD&
    ForeColor = &H80000008&
    Left = 14130
    Top = 7275
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Indent No."
    Index = 5
    ForeColor = &HC00000&
    Left = 7740
    Top = 1425
    Width = 975
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
    Caption = "Fwd. Charges"
    Index = 47
    ForeColor = &HC00000&
    Left = 210
    Top = 7335
    Width = 1305
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
  Begin Label Label1
    Caption = "%"
    Index = 43
    ForeColor = &HC00000&
    Left = 4965
    Top = 7350
    Width = 150
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
    Caption = "%"
    Index = 40
    ForeColor = &HC00000&
    Left = 4965
    Top = 7980
    Width = 150
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
  Begin Label Label1
    Caption = "%"
    Index = 39
    ForeColor = &HC00000&
    Left = 4965
    Top = 7680
    Width = 150
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
  Begin Label Label1
    Caption = "%"
    Index = 38
    ForeColor = &HC00000&
    Left = 4965
    Top = 7035
    Width = 150
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
  Begin Label Label1
    Caption = "Supplier Name"
    Index = 32
    ForeColor = &HC00000&
    Left = 255
    Top = 1440
    Width = 1425
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
  Begin Label Label1
    Caption = "Remark"
    Index = 29
    ForeColor = &HC00000&
    Left = 5340
    Top = 7695
    Width = 735
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 15420
    Top = 6585
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 35
    Alignment = 1 'Right Justify
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
  Begin Label Label1
    Caption = "Order Type"
    Index = 28
    ForeColor = &HC00000&
    Left = 255
    Top = 1125
    Width = 1065
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
  Begin Label Label1
    Caption = "Order  Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 7725
    Top = 1125
    Width = 1095
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
    Caption = "Pay. Terms"
    Index = 25
    ForeColor = &HC00000&
    Left = 5340
    Top = 7380
    Width = 1065
    Height = 240
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
  Begin Label Label1
    Caption = "Desp. Thru"
    Index = 23
    ForeColor = &HC00000&
    Left = 5340
    Top = 7065
    Width = 1020
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
  Begin Label Label1
    Caption = "Sur Charge"
    Index = 21
    ForeColor = &HC00000&
    Left = 3000
    Top = 7980
    Width = 1080
    Height = 240
    TabIndex = 29
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
    Caption = "Sale Tax"
    Index = 20
    ForeColor = &HC00000&
    Left = 3000
    Top = 7665
    Width = 855
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
  Begin Label Label1
    Caption = "Excise"
    Index = 19
    ForeColor = &HC00000&
    Left = 3000
    Top = 7350
    Width = 615
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
  Begin Label Label1
    Caption = "Del.Sch."
    Index = 13
    ForeColor = &HC00000&
    Left = 5340
    Top = 8010
    Width = 795
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
  Begin Label Label1
    Caption = "Discount"
    Index = 11
    ForeColor = &HC00000&
    Left = 3000
    Top = 7035
    Width = 810
    Height = 240
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
  Begin Label Label1
    Caption = "Pack. Charges"
    Index = 10
    ForeColor = &HC00000&
    Left = 210
    Top = 7665
    Width = 1365
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
  Begin Label Label1
    Caption = "Disp. Mode"
    Index = 7
    ForeColor = &HC00000&
    Left = 210
    Top = 7020
    Width = 1050
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
  Begin Label Label1
    Caption = "Prices"
    Index = 6
    ForeColor = &HC00000&
    Left = 210
    Top = 7965
    Width = 585
    Height = 240
    TabIndex = 22
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
    Caption = "Order No."
    Index = 4
    ForeColor = &HC00000&
    Left = 4830
    Top = 1125
    Width = 915
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
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 15120
    Top = 7800
    Width = 660
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
End

Attribute VB_Name = "pPOrder"

Private global_100 As Integer
Private global_102 As Integer
Private global_116 As Long

Private Sub FGPoint_UnknownEvent_9 'EAFEE0
  'Data Table: 503198
  loc_EAFE68: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EAFE6B:   Call DGItem_UnknownEvent_9()
  loc_EAFE70: End If
  loc_EAFE8C: If (CBool(Me.DGOrdType.Visible) = &HFF) Then
  loc_EAFE8F:   Call DGOrdType_UnknownEvent_9()
  loc_EAFE94: End If
  loc_EAFEB0: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EAFEB3:   Call DGParty_UnknownEvent_9()
  loc_EAFEB8: End If
  loc_EAFED4: If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_EAFED7:   Call DGIndent_UnknownEvent_9()
  loc_EAFEDC: End If
  loc_EAFEDC: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10DB2D8
  'Data Table: 503198
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_E0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_10DAFDC: Call Proc_89_62_F6C558()
  loc_10DAFED: If (Index = 0) Then
  loc_10DB003:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10DB042:   Set var_108 = Me.TxtGrid
  loc_10DB048:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_10DB050:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_10DB081:   var_114 = CLng(Me.FGrid.Col)
  loc_10DB091:   If (var_114 = CLng(1)) Then
  loc_10DB0A7:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10DB0CF:     global_96 = CStr(Me.FGrid.TextMatrix))
  loc_10DB0FB:     If (Me.RecordCount > 0) Then
  loc_10DB121:       Proc_6_137_1192FDC(Me.DGItem, global_60, Index, Me.FGPoint, CVar(CLng(&HE)))
  loc_10DB12F:     End If
  loc_10DB170:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10DB173:       Exit Sub
  loc_10DB174:     End If
  loc_10DB187:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10DB18F:     var_E0 = CVar(CLng(1)) 'Long
  loc_10DB1C2:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10DB1CB:       Me.MoveFirst
  loc_10DB1E3:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10DB1F4:       Set var_A0 = Me.FGrid
  loc_10DB20B:       Proc_6_17_EAAE40(var_12C, CVar(CStr(var_A0.TextMatrix))), CVar(CLng(1)), var_C0, CVar(CLng(1)))
  loc_10DB234:       Me.Find CStr("Name =" & var_12C), 0, 1
  loc_10DB264:       If (Me.EOF = &HFF) Then
  loc_10DB26D:         Me.MoveFirst
  loc_10DB272:       End If
  loc_10DB272:     End If
  loc_10DB275:   Else
  loc_10DB27C:     If Not (var_114 = CLng(3)) Then
  loc_10DB286:       If (var_114 = CLng(8)) Then
  loc_10DB289:       End If
  loc_10DB298:       Set var_8C = Me.TxtGrid
  loc_10DB29E:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0, var_15C, var_C0)
  loc_10DB2A6:       var_A0.MaxLength = var_C0
  loc_10DB2BB:       If (global_102 = 0) Then
  loc_10DB2C6:         var_110 = "{Home}+{End}"
  loc_10DB2CC:         Proc_303_0_FBACC8(CStr("Name =" & var_12C), 0, var_114)
  loc_10DB2D4:       End If
  loc_10DB2D4:     End If
  loc_10DB2D4:   End If
  loc_10DB2D4: End If
  loc_10DB2D4: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1227FD4
  'Data Table: 503198
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_1227AD3: var_86 = Shift
  loc_1227AE2: If (KeyCode = 0) Then
  loc_1227AEF:   If (CLng(Shift) = &H1B) Then
  loc_1227AFF:     Set var_8C = Me.TxtGrid
  loc_1227B05:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1227B0D:     var_88 = var_90.Tag
  loc_1227B1F:     Set var_98 = Me.TxtGrid
  loc_1227B25:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1227B2D:     var_9C.Text = var_94
  loc_1227B49:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1227B4E:     Call Proc_89_62_F6C558(arg_14)
  loc_1227B57:     Set var_8C = Me.FGrid
  loc_1227B74:     Set var_8C = Me.TxtGrid
  loc_1227B7A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1227B82:     var_90.Visible = FGrid.DispID_8001
  loc_1227B8E:     Exit Sub
  loc_1227B8F:   End If
  loc_1227BA2:   var_B0 = CLng(Me.FGrid.Col)
  loc_1227BB2:   If (var_B0 = CLng(1)) Then
  loc_1227BD2:     Set var_9C = Me.FGPoint
  loc_1227BDD:     Set var_98 = Nothing
  loc_1227C0B:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_1227C7A:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1227C81:       Set var_98 = Me.DGItem
  loc_1227CA0:       Proc_6_138_106E830(var_98, global_60, KeyCode, Me.FGPoint, 1)
  loc_1227CAE:     End If
  loc_1227CB8:     If (CLng(Shift) = &HD) Then
  loc_1227CC1:       Call Proc_89_53_1536F14(KeyCode, var_B2, var_98, var_9C)
  loc_1227CCC:       If (var_B2 = &HFF) Then
  loc_1227D19:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)))
  loc_1227D29:       End If
  loc_1227D29:     End If
  loc_1227D2C:   Else
  loc_1227D33:     If (var_B0 = CLng(3)) Then
  loc_1227D76:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_102 = &HFF))) Then
  loc_1227D7F:         Call Proc_89_53_1536F14(KeyCode, var_B2, 0, 2)
  loc_1227D8A:         If (var_B2 = &HFF) Then
  loc_1227D9B:           If CBool(global_152 <> "No") Then
  loc_1227DE8:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)), 0)
  loc_1227DFB:           Else
  loc_1227E45:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)), &H10, 0)
  loc_1227E55:           End If
  loc_1227E55:         End If
  loc_1227E55:       End If
  loc_1227E58:     Else
  loc_1227E5F:       If (var_B0 = CLng(8)) Then
  loc_1227EA2:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_102 = &HFF))) Then
  loc_1227EAB:           Call Proc_89_53_1536F14(KeyCode, var_B2, 0, 8, 0)
  loc_1227EB6:           If (var_B2 = &HFF) Then
  loc_1227F03:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)), &H10)
  loc_1227F13:           End If
  loc_1227F13:         End If
  loc_1227F16:       Else
  loc_1227F1D:         If (var_B0 = CLng(2)) Then
  loc_1227F60:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_102 = &HFF))) Then
  loc_1227F6B:             Call Proc_89_53_1536F14(0, var_B4, 0, 0)
  loc_1227F76:             If (var_B4 = &HFF) Then
  loc_1227FC3:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_102, CByte((CInt(8) + 1)), 0)
  loc_1227FD3:             End If
  loc_1227FD3:           End If
  loc_1227FD3:         End If
  loc_1227FD3:       End If
  loc_1227FD3:     End If
  loc_1227FD3:   End If
  loc_1227FD3: End If
  loc_1227FD3: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FA2904
  'Data Table: 503198
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_FA2783: Proc_6_58_E06050(arg_10)
  loc_FA2794: If (KeyAscii = 0) Then
  loc_FA27AA:   var_A0 = CLng(Me.FGrid.Col)
  loc_FA27BA:   If (var_A0 = CLng(1)) Then
  loc_FA27D9:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FA27EB:       var_A4 = "Name"
  loc_FA2806:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10)
  loc_FA2820:       Set var_AC = Me.FGPoint
  loc_FA2838:       Proc_6_138_106E830(Me.DGItem, global_60, KeyAscii, var_AC)
  loc_FA2846:     End If
  loc_FA2849:   Else
  loc_FA2850:     If (var_A0 = CLng(3)) Then
  loc_FA285D:       Set var_8C = Me.TxtGrid
  loc_FA2863:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_FA287E:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_FA288D:     Else
  loc_FA2894:       If (var_A0 = CLng(8)) Then
  loc_FA28A1:         Set var_8C = Me.TxtGrid
  loc_FA28A7:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_FA28C2:         Proc_6_42_129B55C(var_AC, arg_10, 8)
  loc_FA28D1:       Else
  loc_FA28D8:         If (var_A0 = CLng(2)) Then
  loc_FA28E9:           Set var_8C = Me.TxtGrid
  loc_FA28EF:           Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, &H23)
  loc_FA28F7:           var_AC.MaxLength = 2
  loc_FA2903:         End If
  loc_FA2903:       End If
  loc_FA2903:     End If
  loc_FA2903:   End If
  loc_FA2903: End If
  loc_FA2903: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10CC814
  'Data Table: 503198
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_AC As Variant
  Dim var_114 As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_128 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_A8 As String
  loc_10CC534: On Error Goto loc_10CC80E
  loc_10CC543: If (KeyCode = 0) Then
  loc_10CC559:   var_A0 = CLng(Me.FGrid.Col)
  loc_10CC569:   If (var_A0 = CLng(1)) Then
  loc_10CC58F:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10CC5A0:       Call TxtGrid_KeyDown(KeyCode, global_100)
  loc_10CC5A9:       Set var_AC = Me.TxtGrid
  loc_10CC5B4:       var_A8 = "Name"
  loc_10CC5CF:       Proc_6_89_1470B00(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_10CC5DE:     End If
  loc_10CC5E1:   Else
  loc_10CC5E8:     If (var_A0 = CLng(2)) Then
  loc_10CC628:       Set var_8C = Me.TxtGrid
  loc_10CC62E:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_10CC636:       &HFF = var_AC.Text
  loc_10CC63E:       var_114 = CVar(var_A8) 'String
  loc_10CC646:       Set var_128 = Me.FGrid
  loc_10CC64C:       LateIdCallSt
  loc_10CC66D:     Else
  loc_10CC674:       If (var_A0 = CLng(3)) Then
  loc_10CC684:         Set var_8C = Me.TxtGrid
  loc_10CC68A:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_128)
  loc_10CC692:         var_114 = var_AC.Text
  loc_10CC6B5:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CC6CD:         var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10CC6FA:         var_168 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_10CC702:         Set var_128 = Me.FGrid
  loc_10CC708:         LateIdCallSt
  loc_10CC742:         var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CC74A:         var_178 = CVar(CLng(5)) 'Long
  loc_10CC76C:         var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10CC782:         var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CC78A:         var_1C4 = CVar(CLng(6)) 'Long
  loc_10CC7A2:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CC7AA:         var_F4 = CVar(CLng(3)) 'Long
  loc_10CC7D2:         var_168 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_10CC7DA:         Set var_1E8 = Me.FGrid
  loc_10CC7E0:         LateIdCallSt
  loc_10CC80D:       End If
  loc_10CC80D:     End If
  loc_10CC80D:   End If
  loc_10CC80D: End If
  loc_10CC80D: Exit Sub
  loc_10CC80E: ' Referenced from: 10CC534
  loc_10CC80E: Proc_6_60_E63754(var_1E8, var_168, var_F4, var_D4, var_1C4, var_1A4, var_180, var_178)
  loc_10CC813: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2405C
  'Data Table: 503198
  Dim arg_10 As Integer
  loc_E24044: If (Cancel = 0) Then
  loc_E2404D:   Call Proc_89_53_1536F14(Cancel, var_88)
  loc_E24056:   arg_10 = Not(var_88)
  loc_E24059: End If
  loc_E24059: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E40530
  'Data Table: 503198
  Dim var_8C As TextBox
  loc_E4050F: Set var_88 = Me.TxtGrid
  loc_E40515: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E4051D: var_8C.Visible = False
  loc_E40529: Call Proc_89_62_F6C558()
  loc_E4052E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'F317E8
  'Data Table: 503198
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_F316E4: Set var_88 = Me.TxtGrid
  loc_F316EA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_F31704: If (var_8C.Visible = 0) Then
  loc_F31725:   var_B0 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_F31761:   If (CVar(CLng(&H10)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_F31777:     var_B0 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_F3177F:     var_D0 = CVar(CLng(&H10)) 'Long
  loc_F317AC:     Me.FGrid.BackColorSel = CVar(CLng(CStr(Me.FGrid.TextMatrix))))
  loc_F317C7:   Else
  loc_F317DD:     Me.FGrid.BackColorSel = CVar(CLng(global_80))
  loc_F317E5:   End If
  loc_F317E5: End If
  loc_F317E5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00014
  'Data Table: 503198
  loc_E0000C: Call Proc_89_52_E40A40()
  loc_E00011: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '120BAD8
  'Data Table: 503198
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  loc_120B618: Set var_88 = Me.TopCtrl1
  loc_120B61E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_120B663: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_120B66C:   Call Form_KeyDown(Cancel, arg_10)
  loc_120B671: End If
  loc_120B675: Set var_88 = Me.TopCtrl1
  loc_120B67B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_120B694: If (CStr() = "Browse") Then
  loc_120B697:   Exit Sub
  loc_120B698: End If
  loc_120B70C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_120B717:   var_9C = "+{Tab}"
  loc_120B71D:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_120B727:   Cancel = 0
  loc_120B72D: Else
  loc_120B737:   var_B0 = Me.FGrid.Rows
  loc_120B784:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_120B795:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_120B79F:     Cancel = 0
  loc_120B7A2:   End If
  loc_120B7A2: End If
  loc_120B7A8: global_100 = Cancel
  loc_120B7CE: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_120B7F2: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_120B808:   var_DC = CLng(Me.FGrid.Col)
  loc_120B818:   If (var_DC = CLng(3)) Then
  loc_120B82E:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120B846:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_120B84B:     var_11C = vbNullString
  loc_120B855:     Set var_B4 = Me.FGrid
  loc_120B85B:     LateIdCallSt
  loc_120B886:     var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120B88E:     var_11C = CVar(CLng(9)) 'Long
  loc_120B8B9:     var_14C = CVar(CStr(Format(0, "0.00"))) 'String
  loc_120B8C1:     Set var_A0 = Me.FGrid
  loc_120B8C7:     LateIdCallSt
  loc_120B8E6:   Else
  loc_120B8ED:     If (var_DC = CLng(8)) Then
  loc_120B8FE:       If CBool(global_152 <> "No") Then
  loc_120B914:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120B92C:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_120B931:         var_11C = vbNullString
  loc_120B93B:         Set var_B4 = Me.FGrid
  loc_120B941:         LateIdCallSt
  loc_120B96C:         var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120B974:         var_11C = CVar(CLng(9)) 'Long
  loc_120B99F:         var_14C = CVar(CStr(Format(0, "0.00"))) 'String
  loc_120B9A7:         Set var_A0 = Me.FGrid
  loc_120B9AD:         LateIdCallSt
  loc_120B9C9:       End If
  loc_120B9CC:     Else
  loc_120B9D3:       If (var_DC = CLng(1)) Then
  loc_120B9E9:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120B9F1:         var_FC = CVar(CLng(&HE)) 'Long
  loc_120B9F6:         var_11C = vbNullString
  loc_120BA00:         Set var_A0 = Me.FGrid
  loc_120BA06:         LateIdCallSt
  loc_120BA2B:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120BA33:         var_FC = CVar(CLng(1)) 'Long
  loc_120BA38:         var_11C = vbNullString
  loc_120BA42:         Set var_A0 = Me.FGrid
  loc_120BA48:         LateIdCallSt
  loc_120BA5D:       Else
  loc_120BA64:         If (var_DC = CLng(2)) Then
  loc_120BA7A:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_120BA92:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_120BA97:           var_11C = vbNullString
  loc_120BAA1:           Set var_B4 = Me.FGrid
  loc_120BAA7:           LateIdCallSt
  loc_120BABF:         End If
  loc_120BABF:       End If
  loc_120BABF:     End If
  loc_120BABF:   End If
  loc_120BABF: End If
  loc_120BAC5: If (Cancel = &HD) Then
  loc_120BACD:   global_102 = 0
  loc_120BAD0: End If
  loc_120BAD2: Cancel = 0
  loc_120BAD5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14B78
  'Data Table: 503198
  loc_E14B69: Call FGrid_UnknownEvent_C()
  loc_E14B73: global_102 = 0
  loc_E14B76: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '107D3B0
  'Data Table: 503198
  Dim var_A4 As String
  Dim var_90 As MSHFlexGrid
  Dim var_A8 As Long
  Dim var_D2 As Integer
  Dim var_BC As TextBox
  Dim var_CC As TextBox
  loc_107D120: Set var_90 = Me.TopCtrl1
  loc_107D126: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_107D13F: If (CStr() = "Browse") Then
  loc_107D142:   Exit Sub
  loc_107D143: End If
  loc_107D156: var_A8 = CLng(Me.FGrid.Col)
  loc_107D166: If Not (var_A8 = CLng(1)) Then
  loc_107D170:   If (var_A8 = CLng(2)) Then
  loc_107D173:   End If
  loc_107D177:   Set var_CC = Me.FGrid
  loc_107D19B:   var_A4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_107D1C8:   Set var_BC = var_CC
  loc_107D1DA:   Proc_6_63_110B734(Me, var_BC, Me.TxtGrid, 0, 0)
  loc_107D202:   Set var_90 = Me.TxtGrid
  loc_107D208:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_BC, var_A4, Asc(var_A4))
  loc_107D210:   0 = var_BC.Text
  loc_107D229:   If (Len(var_A4) <= 1) Then
  loc_107D238:     Set var_90 = Me.TxtGrid
  loc_107D23E:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_BC, var_A4)
  loc_107D246:     var_D2 = var_BC.Text
  loc_107D257:     Set var_C0 = Me.TxtGrid
  loc_107D25D:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_CC)
  loc_107D265:     var_CC.Text = var_A4
  loc_107D278:   End If
  loc_107D284:   Set var_90 = Me.TxtGrid
  loc_107D28A:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_BC)
  loc_107D2A4:   Set var_C0 = Me.TxtGrid
  loc_107D2AA:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_CC)
  loc_107D2B2:   var_CC.SelStart = Len(var_BC.Text)
  loc_107D2C8: Else
  loc_107D2CF:   If (var_A8 = CLng(3)) Then
  loc_107D310:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_107D325:   Else
  loc_107D32C:     If (var_A8 = CLng(8)) Then
  loc_107D33D:       If CBool(global_152 <> "No") Then
  loc_107D37E:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_107D390:       End If
  loc_107D390:     End If
  loc_107D390:   End If
  loc_107D390: End If
  loc_107D39A: If (CLng(Cancel) <> &HD) Then
  loc_107D3A2:   global_102 = &HFF
  loc_107D3A5: End If
  loc_107D3AA: Set var_88 = Nothing
  loc_107D3AD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '118D654
  'Data Table: 503198
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As String
  Dim unk_5031B5 As Connection15
  Dim var_8C As Recordset15
  loc_118D290: Set var_94 = Me.TopCtrl1
  loc_118D296: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_118D2AF: If (CStr() = "Browse") Then
  loc_118D2B2:   Exit Sub
  loc_118D2B3: End If
  loc_118D2D0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_118D2D3:   Exit Sub
  loc_118D2D4: End If
  loc_118D2E5: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_118D307:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_118D318:     Set var_94 = Me.Txt
  loc_118D31E:     Call 0.Method_FGrid_UnknownEvent_D0 (CInt(0), var_AC)
  loc_118D33E:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D346:     var_E4 = CVar(CLng(0)) 'Long
  loc_118D392:     var_118 = "Select Count(*) From Stock Where ContraDocid='" & var_AC.Text & "' And ContraSno=" & CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_118D3A2:     unk_5031B5.Execute var_118 & vbNullString, var_13C, -1
  loc_118D3AD:     Set var_8C = var_140
  loc_118D3EB:     If (var_8C.RecordCount > 0) Then
  loc_118D42A:       If (var_8C.Fields.Item(0).Value > 0) Then
  loc_118D44E:         MsgBox("Can't Remove Row :Related Entry Exists In Stock", &H30, "Row Validation", var_13C, var_15C)
  loc_118D462:         Set var_94 = Me.FGrid
  loc_118D473:         Exit Sub
  loc_118D474:       End If
  loc_118D474:     End If
  loc_118D4AB:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_13C, var_15C) = 6) Then
  loc_118D4CD:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_118D4E3:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D4EC:         Set var_AC = Me.FGrid
  loc_118D507:       Else
  loc_118D51A:         Me.FGrid.Rows = 1
  loc_118D537:         var_108 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_118D53F:         Set var_AC = Me.FGrid
  loc_118D56E:         Me.FGrid.FixedRows = 1
  loc_118D576:       End If
  loc_118D57A:       Set var_94 = Me.TopCtrl1
  loc_118D580:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(FGrid.DispID_10000)
  loc_118D599:       If (CStr(var_108) = "Add") Then
  loc_118D5C1:         For var_160 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_160 'Integer
  loc_118D5CB:           var_C4 = CVar(CLng(var_86)) 'Long
  loc_118D5D3:           var_E4 = CVar(CLng(0)) 'Long
  loc_118D5DD:           var_A4 = CVar(CStr(var_86)) 'String
  loc_118D5E5:           Set var_94 = Me.FGrid
  loc_118D5EB:           LateIdCallSt
  loc_118D5FC:         Next var_160 'Integer
  loc_118D601:       End If
  loc_118D601:       Call Proc_89_54_1141F94()
  loc_118D606:     End If
  loc_118D609:   Else
  loc_118D62A:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_13C, var_15C)
  loc_118D63A:   End If
  loc_118D63E:   Set var_94 = Me.FGrid
  loc_118D64F: End If
  loc_118D64F: Exit Sub
  loc_118D650: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9C690
  'Data Table: 503198
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9C633: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9C64B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9C673: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9C68E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41B74
  'Data Table: 503198
  Dim var_8C As TextBox
  loc_E41B48: Call Proc_89_62_F6C558()
  loc_E41B58: Set var_88 = Me.TxtGrid
  loc_E41B5E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41B66: var_8C.Visible = False
  loc_E41B72: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '109C628
  'Data Table: 503198
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
  loc_109C387: Me.DGItem.Visible = False
  loc_109C3A6: If (Me.RecordCount > 0) Then
  loc_109C3E3:   Set var_B4 = Me.TxtGrid
  loc_109C3E9:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_109C3F1:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_109C41A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109C422:   var_EC = CVar(CLng(1)) 'Long
  loc_109C455:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_109C45D:   Set var_B8 = Me.FGrid
  loc_109C463:   LateIdCallSt
  loc_109C492:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109C49A:   var_EC = CVar(CLng(&HE)) 'Long
  loc_109C4CD:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_109C4D5:   Set var_B8 = Me.FGrid
  loc_109C4DB:   LateIdCallSt
  loc_109C50A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109C512:   var_EC = CVar(CLng(4)) 'Long
  loc_109C545:   var_11C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_109C54D:   Set var_B8 = Me.FGrid
  loc_109C553:   LateIdCallSt
  loc_109C589:   var_B0 = Me.Fields.Item("PurchRate")
  loc_109C5A1:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109C5A9:   var_FC = CVar(CLng(8)) 'Long
  loc_109C5D6:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_109C5DE:   Set var_B8 = Me.FGrid
  loc_109C5E4:   LateIdCallSt
  loc_109C602: End If
  loc_109C60B: Set var_A8 = Me.TxtGrid
  loc_109C611: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_14C, 1, 1, var_FC)
  loc_109C619: var_B0.SetFocus
  loc_109C625: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E744AC
  'Data Table: 503198
  loc_E7446A: Proc_6_153_E91D24(Me.DGItem, arg_14)
  loc_E74481: Set var_8C = Me.FGPoint
  loc_E7449B: Proc_6_138_106E830(Me.DGItem, global_60, 0)
  loc_E744A9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '13A5634
  'Data Table: 503198
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim var_A0 As String
  Dim var_F8 As String
  loc_13A4D36: Set var_88 = Me.Txt
  loc_13A4D3C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13A4D4A: Proc_6_74_E23240(var_8C)
  loc_13A4D56: Call Proc_89_62_F6C558(var_8C)
  loc_13A4D5E: var_92 = Index
  loc_13A4D69: If (var_92 = CInt(1)) Then
  loc_13A4D83:   If (Me.RecordCount > 0) Then
  loc_13A4D91:     Set var_8C = Me.FGPoint
  loc_13A4DA9:     Proc_6_137_1192FDC(Me.DGOrdType, global_52, Index)
  loc_13A4DB7:   End If
  loc_13A4E05:   Set var_88 = Me.Txt
  loc_13A4E0B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A4E13:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13A4E2B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_13A4E2E:     Exit Sub
  loc_13A4E2F:   End If
  loc_13A4E3C:   Set var_88 = Me.Txt
  loc_13A4E42:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13A4E4A:   var_A0 = var_8C.Text
  loc_13A4E52:   var_D4 = CVar(var_A0) 'String
  loc_13A4E97:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13A4EA0:     Me.MoveFirst
  loc_13A4EC5:     Set var_88 = Me.Txt
  loc_13A4ECB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13A4ED3:     0 = var_8C.Text
  loc_13A4EE1:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_13A4EF7:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_13A4F0F:   End If
  loc_13A4F12: Else
  loc_13A4F1A:   If (var_92 = CInt(4)) Then
  loc_13A4F34:     If (Me.RecordCount > 0) Then
  loc_13A4F42:       Set var_8C = Me.FGPoint
  loc_13A4F5A:       Proc_6_137_1192FDC(Me.DGParty, global_68)
  loc_13A4F68:     End If
  loc_13A4FB6:     Set var_88 = Me.Txt
  loc_13A4FBC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A4FC4:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13A4FDC:     If (Index Or (var_A0 = vbNullString)) Then
  loc_13A4FDF:       Exit Sub
  loc_13A4FE0:     End If
  loc_13A4FED:     Set var_88 = Me.Txt
  loc_13A4FF3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13A5006:     global_92 = var_8C.Text
  loc_13A5021:     Set var_88 = Me.Txt
  loc_13A5027:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13A502F:     var_A0 = var_8C.Text
  loc_13A5037:     var_D4 = CVar(var_A0) 'String
  loc_13A507C:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13A5085:       Me.MoveFirst
  loc_13A50AA:       Set var_88 = Me.Txt
  loc_13A50B0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13A50B8:       0 = var_8C.Text
  loc_13A50C6:       Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_13A50DC:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_13A50F4:     End If
  loc_13A50F7:   Else
  loc_13A50FF:     If (var_92 = CInt(&H11)) Then
  loc_13A510C:       Set global_56 = New 
  loc_13A511E:       Me.Recordset15.CursorLocation = 3
  loc_13A5141:       var_A0 = "SELECT Distinct I.DocId AS code, LTrim(Right(I.Docid,8)) AS Name FROM Indent AS I INNER JOIN Indent1 AS I1 ON I.DocId = I1.DocId WHERE (IsNull(I1.ClearYN,''))<>'Y'  AND I.Vtype In (SELECT V_TYPE FROM VOUCHER_TYPE WHERE Site_Code='" & MemVar_1F95070
  loc_13A5160:       Me.Open CVar(var_A0 & "' and LogSite_Code='" & MemVar_1F95078 & "' and NCAT='PIND') ORDER BY I.DocId"), CVar(MemVar_1F95044), 3
  loc_13A517A:       CVarUnk
  loc_13A517F:       VerifyVarObj
  loc_13A5185:       Set var_88 = Me.DGIndent
  loc_13A518B:       LateIdStAd
  loc_13A51B0:       If (Me.RecordCount > 0) Then
  loc_13A51BE:         Set var_8C = Me.FGPoint
  loc_13A51D6:         Proc_6_137_1192FDC(Me.DGIndent, global_56, Index, var_8C)
  loc_13A51E4:       End If
  loc_13A5232:       Set var_88 = Me.Txt
  loc_13A5238:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_13A5240:       var_88 = var_8C.Text
  loc_13A5258:       If (global_56 Or (var_A0 = vbNullString)) Then
  loc_13A525B:         Exit Sub
  loc_13A525C:       End If
  loc_13A5269:       Set var_88 = Me.Txt
  loc_13A526F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A5277:       1 = var_8C.Text
  loc_13A5282:       global_92 = var_A0
  loc_13A529D:       Set var_88 = Me.Txt
  loc_13A52A3:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13A52AB:       var_A0 = var_8C.Text
  loc_13A52B3:       var_D4 = CVar(var_A0) 'String
  loc_13A52F8:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13A5301:         Me.MoveFirst
  loc_13A5326:         Set var_88 = Me.Txt
  loc_13A532C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13A5334:         0 = var_8C.Text
  loc_13A5342:         Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_13A5358:         Me.Find CStr(var_F8 & var_D4), -1, 
  loc_13A5370:       End If
  loc_13A5373:     Else
  loc_13A537B:       If (var_92 = CInt(5)) Then
  loc_13A538B:         ReDim var_100(0 To 7)
  loc_13A53A2:         var_100(0) = "Railway"
  loc_13A53B1:         var_100(1) = "VPP"
  loc_13A53C0:         var_100(2) = "AIR Mail"
  loc_13A53CF:         var_100(3) = "Transport"
  loc_13A53DE:         var_100(4) = "Personally"
  loc_13A53ED:         var_100(5) = "Post Parcel"
  loc_13A53FC:         var_100(6) = "Courier"
  loc_13A540B:         var_100(7) = "Cargo"
  loc_13A5422:         global_128 = Array(var_100)
  loc_13A542D:         Set var_B4 = Me.ListView
  loc_13A5448:         Set var_8C = Me.Txt
  loc_13A5462:         Set global_144 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_13A5480:         Set var_88 = Me.Txt
  loc_13A5486:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A548E:         global_128 = var_8C.Text
  loc_13A54A0:         Set var_90 = Me.Txt
  loc_13A54A6:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_13A54AE:         var_B4.Tag = 8
  loc_13A54C4:       Else
  loc_13A54CC:         If (var_92 = CInt(8)) Then
  loc_13A54DC:           ReDim var_100(0 To 3)
  loc_13A54F3:           var_100(0) = "F.O.R. Our Works"
  loc_13A5502:           var_100(1) = "F.O.R. Kanpur"
  loc_13A5511:           var_100(2) = "F.O.R. Your Place"
  loc_13A5520:           var_100(3) = "Ex Your Works"
  loc_13A5537:           global_128 = Array(var_100)
  loc_13A5542:           Set var_B4 = Me.ListView
  loc_13A555D:           Set var_8C = Me.Txt
  loc_13A5577:           Set global_144 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_128)
  loc_13A5595:           Set var_88 = Me.Txt
  loc_13A559B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13A55A3:           4 = var_8C.Text
  loc_13A55B5:           Set var_90 = Me.Txt
  loc_13A55BB:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_13A55C3:           var_B4.Tag = global_128
  loc_13A55D9:         Else
  loc_13A55E1:           If Not (var_92 = CInt(2)) Then
  loc_13A55EC:             If Not (var_92 = CInt(3)) Then
  loc_13A55F7:               If Not (var_92 = CInt(&HD)) Then
  loc_13A5602:                 If Not (var_92 = CInt(&HE)) Then
  loc_13A560D:                   If Not (var_92 = CInt(&HF)) Then
  loc_13A5618:                     If (var_92 = CInt(&H10)) Then
  loc_13A561B:                     End If
  loc_13A561B:                   End If
  loc_13A561B:                 End If
  loc_13A561B:               End If
  loc_13A561B:             End If
  loc_13A5623:             var_A0 = "{Home}+{End}"
  loc_13A5629:             Proc_303_0_FBACC8(var_A0, 0)
  loc_13A5631:           End If
  loc_13A5631:         End If
  loc_13A5631:       End If
  loc_13A5631:     End If
  loc_13A5631:   End If
  loc_13A5631: End If
  loc_13A5631: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12FD554
  'Data Table: 503198
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  Dim var_A8 As Frame
  loc_12FCE77: var_86 = Shift
  loc_12FCE84: If (CLng(Shift) = &H1B) Then
  loc_12FCE87:   Call Proc_89_62_F6C558(var_86)
  loc_12FCE8C:   Exit Sub
  loc_12FCE8D: End If
  loc_12FCE90: var_88 = KeyCode
  loc_12FCE9B: If (var_88 = CInt(1)) Then
  loc_12FCEBB:   Set var_A0 = Me.FGPoint
  loc_12FCEC6:   Set var_9C = Nothing
  loc_12FCEF8:   Proc_6_69_134A630(Me.DGOrdType, Me.Txt, CInt(1), global_52, Shift, &HFF)
  loc_12FCF67:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12FCF8D:     Proc_6_138_106E830(Me.DGOrdType, global_52, KeyCode, Me.FGPoint, 1)
  loc_12FCF9B:   End If
  loc_12FCF9E: Else
  loc_12FCFA6:   If (var_88 = CInt(4)) Then
  loc_12FCFD1:     Set var_9C = Nothing
  loc_12FD003:     Proc_6_69_134A630(Me.DGParty, Me.Txt, CInt(4), global_68, Shift, &HFF, 1)
  loc_12FD072:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12FD079:       Set var_9C = Me.DGParty
  loc_12FD098:       Proc_6_138_106E830(var_9C, global_68, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_12FD0A6:     End If
  loc_12FD0A9:   Else
  loc_12FD0B1:     If (var_88 = CInt(&H11)) Then
  loc_12FD0BF:       Set var_AC = Me.Txt
  loc_12FD0D1:       Set var_A0 = Me.FGPoint
  loc_12FD10E:       Proc_6_69_134A630(Me.DGIndent, var_AC, CInt(&H11), global_56, Shift, &HFF, 1, Nothing)
  loc_12FD12D:       var_B4 = Me.RecordCount
  loc_12FD17D:       If ((var_B4 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12FD18B:         Set var_90 = Me.FGPoint
  loc_12FD1A3:         Proc_6_138_106E830(Me.DGIndent, global_56, KeyCode, var_90, var_A0, 0)
  loc_12FD1B1:       End If
  loc_12FD1B4:     Else
  loc_12FD1BC:       If (var_88 = CInt(5)) Then
  loc_12FD1E1:         Set var_8C = Me.Txt
  loc_12FD1E7:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, 0)
  loc_12FD1EF:         var_9C = var_90.Left
  loc_12FD201:         Set var_9C = Me.Txt
  loc_12FD207:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12FD20F:         var_A0 = var_A0.Top
  loc_12FD221:         Set var_A8 = Me.Txt
  loc_12FD227:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_12FD22F:         0 = var_AC.Height
  loc_12FD241:         Set var_B0 = Me.Txt
  loc_12FD247:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12FD24F:         var_C4 = var_C0.Width
  loc_12FD297:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12FD2BE:       Else
  loc_12FD2C6:         If (var_88 = CInt(8)) Then
  loc_12FD2EB:           Set var_8C = Me.Txt
  loc_12FD2F1:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, CInt(var_B4))
  loc_12FD2F9:           CInt((var_B8 + var_BC)) = var_90.Left
  loc_12FD30B:           Set var_9C = Me.Txt
  loc_12FD311:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12FD319:           CInt(var_C4) = var_A0.Top
  loc_12FD32B:           Set var_A8 = Me.Txt
  loc_12FD331:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_12FD339:           2080 = var_AC.Height
  loc_12FD34B:           Set var_B0 = Me.Txt
  loc_12FD351:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12FD359:           var_C4 = var_C0.Width
  loc_12FD3A1:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12FD3C5:         End If
  loc_12FD3C5:       End If
  loc_12FD3C5:     End If
  loc_12FD3C5:   End If
  loc_12FD3C5: End If
  loc_12FD451: If (((((CBool(Me.DGOrdType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(Me.DGIndent.Visible) = 0)) And (CBool(Me.DGItem.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_12FD472:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&H10))) Then
  loc_12FD47B:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_B4), CInt((var_B8 + var_BC)))
  loc_12FD480:   End If
  loc_12FD484:   Set var_8C = Me.TopCtrl1
  loc_12FD48A:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(CInt(var_C4))
  loc_12FD4AC:   If ((CStr(1040) = "Add") And (KeyCode <> CInt(1))) Then
  loc_12FD4C4:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_12FD4CD:       Proc_6_76_E533C8(Shift, arg_14)
  loc_12FD4D2:     End If
  loc_12FD4D5:   Else
  loc_12FD4D9:     Set var_8C = Me.TopCtrl1
  loc_12FD4DF:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_88)
  loc_12FD501:     If ((CStr() = "Edit") And (KeyCode <> CInt(3))) Then
  loc_12FD519:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_12FD522:         Proc_6_76_E533C8(Shift)
  loc_12FD527:       End If
  loc_12FD527:     End If
  loc_12FD527:   End If
  loc_12FD545:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H10))) Then
  loc_12FD54B:     Call Proc_89_63_F90F94(KeyCode)
  loc_12FD550:   End If
  loc_12FD550: End If
  loc_12FD550: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11762C4
  'Data Table: 503198
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_1175EE8: On Error Goto loc_11762BD
  loc_1175EEE: Proc_6_58_E06050(arg_10)
  loc_1175EF6: var_86 = KeyAscii
  loc_1175F01: If (var_86 = CInt(1)) Then
  loc_1175F20:   If (CBool(Me.DGOrdType.Visible) = &HFF) Then
  loc_1175F36:     Me.DGOrdType.Tag = CVar(CStr(KeyAscii))
  loc_1175F50:     var_B0 = "Name"
  loc_1175F6B:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10)
  loc_1175F85:     Set var_B8 = Me.FGPoint
  loc_1175F9D:     Proc_6_138_106E830(Me.DGOrdType, global_52, KeyAscii, var_B8)
  loc_1175FAB:   End If
  loc_1175FAE: Else
  loc_1175FB6:   If (var_86 = CInt(2)) Then
  loc_1175FC3:     Set var_8C = Me.Txt
  loc_1175FC9:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_1175FE4:     Proc_6_42_129B55C(var_B8, arg_10, 8)
  loc_1175FF3:   Else
  loc_1175FFB:     If (var_86 = CInt(4)) Then
  loc_117601A:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_1176047:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1176079:         Proc_6_138_106E830(Me.DGParty, global_68, KeyAscii, Me.FGPoint)
  loc_1176087:       End If
  loc_117608A:     Else
  loc_1176092:       If (var_86 = CInt(&H11)) Then
  loc_11760B1:         If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_11760DE:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_11760F8:           Set var_B8 = Me.FGPoint
  loc_1176110:           Proc_6_138_106E830(Me.DGIndent, global_56, KeyAscii, var_B8, 0)
  loc_117611E:         End If
  loc_1176121:       Else
  loc_1176129:         If (var_86 = CInt(&HD)) Then
  loc_1176136:           Set var_8C = Me.Txt
  loc_117613C:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_1176157:           Proc_6_42_129B55C(var_B8, arg_10, 2, 2)
  loc_1176166:         Else
  loc_117616E:           If (var_86 = CInt(&HE)) Then
  loc_117617B:             Set var_8C = Me.Txt
  loc_1176181:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_117619C:             Proc_6_42_129B55C(var_B8, arg_10, 2)
  loc_11761AB:           Else
  loc_11761B3:             If (var_86 = CInt(&HF)) Then
  loc_11761C0:               Set var_8C = Me.Txt
  loc_11761C6:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_11761E1:               Proc_6_42_129B55C(var_B8, arg_10, 2)
  loc_11761F0:             Else
  loc_11761F8:               If (var_86 = CInt(&H10)) Then
  loc_1176205:                 Set var_8C = Me.Txt
  loc_117620B:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_1176226:                 Proc_6_42_129B55C(var_B8, arg_10, 2)
  loc_1176235:               Else
  loc_117623D:                 If (var_86 = CInt(7)) Then
  loc_117624A:                   Set var_8C = Me.Txt
  loc_1176250:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_117626B:                   Proc_6_42_129B55C(var_B8, arg_10, 5)
  loc_117627A:                 Else
  loc_1176282:                   If (var_86 = CInt(6)) Then
  loc_117628F:                     Set var_8C = Me.Txt
  loc_1176295:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 2)
  loc_11762B0:                     Proc_6_42_129B55C(var_B8, arg_10, 8)
  loc_11762BC:                   End If
  loc_11762BC:                 End If
  loc_11762BC:               End If
  loc_11762BC:             End If
  loc_11762BC:           End If
  loc_11762BC:         End If
  loc_11762BC:       End If
  loc_11762BC:     End If
  loc_11762BC:   End If
  loc_11762BC: End If
  loc_11762BC: Exit Sub
  loc_11762BD: ' Referenced from: 1175EE8
  loc_11762BD: Proc_6_60_E63754(2, 0)
  loc_11762C2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'ECAA28
  'Data Table: 503198
  Dim var_86 As Integer
  loc_ECA983: var_86 = KeyCode
  loc_ECA98E: If Not (var_86 = CInt(5)) Then
  loc_ECA999:   If (var_86 = CInt(8)) Then
  loc_ECA99C:   End If
  loc_ECA9B7:   If (Me.FrmList.Visible = &HFF) Then
  loc_ECA9E6:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_ECA9F6:   End If
  loc_ECA9F9: Else
  loc_ECAA01:   If Not (var_86 = CInt(&HD)) Then
  loc_ECAA0C:     If Not (var_86 = CInt(&HE)) Then
  loc_ECAA17:       If Not (var_86 = CInt(&HF)) Then
  loc_ECAA22:         If (var_86 = CInt(&H10)) Then
  loc_ECAA25:         End If
  loc_ECAA25:       End If
  loc_ECAA25:     End If
  loc_ECAA25:   End If
  loc_ECAA25: End If
  loc_ECAA25: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D3FC
  'Data Table: 503198
  loc_E4D3DA: Set var_88 = Me.Txt
  loc_E4D3E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D3EE: Proc_6_73_E23294(var_8C)
  loc_E4D3FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '16F7218
  'Data Table: 503198
  Dim var_8C As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim Me As Variant
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_9C As String
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_D8 As Variant
  Dim unk_5031B5 As Connection15
  Dim var_88 As Recordset15
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_154 As Variant
  Dim var_15C As Variant
  Dim var_180 As Variant
  Dim var_188 As TextBox
  Dim var_1AC As Variant
  Dim var_12C As String
  Dim var_98 As Variant
  Dim var_158 As Variant
  Dim var_108 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_144 As Variant
  Dim var_170 As Variant
  Dim var_118 As Variant
  Dim var_218 As MSHFlexGrid
  Dim var_220 As Double
  loc_16F571C: On Error Goto loc_16F7212
  loc_16F5722: var_8C = Cancel
  loc_16F572D: If (var_8C = CInt(1)) Then
  loc_16F573B:   Set var_90 = Me.Txt
  loc_16F5741:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F5749:   var_9C = "Order Type"
  loc_16F576A:   If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_16F5778:     Set var_90 = Me.Txt
  loc_16F577E:     Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F5786:     var_94.SetFocus
  loc_16F5794:     arg_10 = &HFF
  loc_16F5797:     Exit Sub
  loc_16F5798:   End If
  loc_16F57E6:   Set var_90 = Me.Txt
  loc_16F57EC:   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_16F57F4:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_16F580C:   If (arg_10 Or (var_9C = vbNullString)) Then
  loc_16F581C:     Set var_90 = Me.Txt
  loc_16F5822:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F582A:     var_94.Text = vbNullString
  loc_16F5843:     Set var_90 = Me.Txt
  loc_16F5849:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F5851:     var_94.Tag = vbNullString
  loc_16F5863:     global_120 = vbNullString
  loc_16F586D:     global_124 = vbNullString
  loc_16F5874:   Else
  loc_16F58AF:     Set var_98 = Me.Txt
  loc_16F58B5:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F58BD:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16F590E:     Set var_98 = Me.Txt
  loc_16F5914:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F591C:     var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16F5966:     global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_16F5991:     var_94 = Me.Fields.Item("ContraType")
  loc_16F59A8:     global_124 = Proc_6_38_E69628(CVar(var_94))
  loc_16F59B9:     Set var_90 = Me.TopCtrl1
  loc_16F59BF:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_8C)
  loc_16F59C7:     var_9C = CStr()
  loc_16F59D8:     If (var_9C = "Add") Then
  loc_16F59E1:       Call Proc_89_64_111228C(MemVar_1F95044)
  loc_16F59F4:       Set var_90 = Me.Txt
  loc_16F59FA:       Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_16F5A02:       var_94.Text = var_9C
  loc_16F5A11:     End If
  loc_16F5A11:   End If
  loc_16F5A1F:   Set var_90 = Me.Txt
  loc_16F5A25:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F5A35:   var_C8 = CVar(var_94.Tag) 'String
  loc_16F5A59:   If (Trim(var_C8) = "PORD") Then
  loc_16F5A6A:     Set var_90 = Me.Txt
  loc_16F5A70:     Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F5A78:     var_94.Text = vbNullString
  loc_16F5A92:     Set var_90 = Me.Txt
  loc_16F5A98:     Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F5AA0:     var_94.Tag = vbNullString
  loc_16F5AB9:     Set var_90 = Me.Txt
  loc_16F5ABF:     Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F5AC7:     var_94.Enabled = True
  loc_16F5AD6:   Else
  loc_16F5AF3:     Proc_6_17_EAAE40(var_C8, MemVar_1F95078, "Select E.CashPurchAc,S.Name From Enviro E Inner Join SubGroup S ON E.CashPurchAc=S.SubCode WHERE E.LOGSITE_CODE=", var_E8)
  loc_16F5AFB:     var_D8 = -1 & var_C8 
  loc_16F5B09:     unk_5031B5.Execute CStr(Trim(var_C8)), var_90, CStr(Trim(var_C8))
  loc_16F5B14:     Set var_88 = var_90
  loc_16F5B3A:     If (var_88.RecordCount > 0) Then
  loc_16F5B76:       Set var_98 = Me.Txt
  loc_16F5B7C:       Call 0.Method_Txt_Validate0 (CInt(4), var_B8)
  loc_16F5B84:       var_B8.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_16F5BB4:       var_94 = var_88.Fields.Item("CashPurchAc")
  loc_16F5BD3:       Set var_98 = Me.Txt
  loc_16F5BD9:       Call 0.Method_Txt_Validate0 (CInt(4), var_B8)
  loc_16F5BE1:       var_B8.Tag = CStr(var_94.Value)
  loc_16F5BF7:     End If
  loc_16F5C04:     Set var_90 = Me.Txt
  loc_16F5C0A:     Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F5C12:     var_94.Enabled = False
  loc_16F5C1E:   End If
  loc_16F5C21: Else
  loc_16F5C29:   If (var_8C = CInt(2)) Then
  loc_16F5C37:     Set var_90 = Me.Txt
  loc_16F5C3D:     Call 0.Method_Txt_Validate0 (CInt(2))
  loc_16F5C45:     var_9C = "Order No"
  loc_16F5C66:     If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_16F5C74:       Set var_90 = Me.Txt
  loc_16F5C7A:       Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_16F5C82:       var_94.SetFocus
  loc_16F5C90:       arg_10 = &HFF
  loc_16F5C93:       Exit Sub
  loc_16F5C94:     End If
  loc_16F5CA2:     Set var_90 = Me.Txt
  loc_16F5CA8:     Call 0.Method_Txt_Validate0 (CInt(2), var_94, var_9C)
  loc_16F5CB0:     arg_10 = var_94.Text
  loc_16F5CC8:     If (CDbl(var_9C) = CDbl(0)) Then
  loc_16F5CE4:       MsgBox("Order No Can Not Be 0", 0, Trim("Order No Can Not Be 0"), var_E8, var_128)
  loc_16F5CFE:       Set var_90 = Me.Txt
  loc_16F5D04:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F5D0C:       var_94.SetFocus
  loc_16F5D1A:       arg_10 = &HFF
  loc_16F5D1D:       Exit Sub
  loc_16F5D1E:     End If
  loc_16F5D22:     Set var_90 = Me.TopCtrl1
  loc_16F5D28:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_16F5D41:     If (CStr(var_94) = "Add") Then
  loc_16F5D69:       Set var_90 = Me.Txt
  loc_16F5D6F:       Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F5D96:       Set var_98 = Me.Txt
  loc_16F5D9C:       Call 0.Method_Txt_Validate0 (CInt(1), var_B8, var_134)
  loc_16F5DA4:       5 = var_B8.Tag
  loc_16F5DB1:       var_C8 = Space((CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_94.Tag) - Len(var_134)))
  loc_16F5DB9:       var_E8 = ( + "Order No Can Not Be 0")
  loc_16F5DC6:       var_128 = (var_E8 + CVar(global_112))
  loc_16F5DDA:       var_144 = Space((5 - Len(global_112)))
  loc_16F5DE2:       var_154 = (var_128 + var_144)
  loc_16F5DF9:       Set var_158 = Me.Txt
  loc_16F5DFF:       Call 0.Method_Txt_Validate0 (CInt(2), var_15C, var_160)
  loc_16F5E07:       8 = var_15C.Text
  loc_16F5E14:       var_170 = Space((var_154 - Len(var_160)))
  loc_16F5E1C:       var_180 = ( + var_170)
  loc_16F5E2E:       Set var_184 = Me.Txt
  loc_16F5E34:       Call 0.Method_Txt_Validate0 (CInt(2), var_188)
  loc_16F5E47:       var_1AC = (var_180 + CVar(var_188.Text))
  loc_16F5EA0:       Set var_90 = Me.Txt
  loc_16F5EA6:       Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_16F5EAE:       var_94.Text = CStr(var_1AC)
  loc_16F5ECA:       Me.LblVPrefix.Caption = global_112
  loc_16F5ED2:     End If
  loc_16F5ED6:     Set var_90 = Me.TopCtrl1
  loc_16F5EDC:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_16F5EE4:     var_9C = CStr()
  loc_16F5EF5:     If (var_9C = "Add") Then
  loc_16F5F25:       Set var_90 = Me.Txt
  loc_16F5F2B:       Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_9C, "Select Count(*) From POrder Where DocID='", "Order No Can Not Be 0", -1)
  loc_16F5F4C:       unk_5031B5.Execute var_B8 & var_9C & "'", 0, var_158
  loc_16F5F5C:        = var_B8.Item()
  loc_16F5F64:        = var_158.Value
  loc_16F5F91:       If (var_94.Text.Fields > 0) Then
  loc_16F5F9A:         Call 0.Method_arg_50 (var_9C)
  loc_16F5FBB:         MsgBox("Duplicate Order No.", &H40, CVar(var_9C), var_E8, var_128)
  loc_16F5FD1:         Call Proc_89_64_111228C(MemVar_1F95044)
  loc_16F5FE1:         If (var_9C = vbNullString) Then
  loc_16F5FEE:           Set var_90 = Me.Txt
  loc_16F5FF4:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F5FFC:           var_94.SetFocus
  loc_16F600A:           arg_10 = &HFF
  loc_16F600D:           Exit Sub
  loc_16F600E:         End If
  loc_16F6014:         Call Proc_89_64_111228C(MemVar_1F95044, var_9C)
  loc_16F6027:         Set var_90 = Me.Txt
  loc_16F602D:         Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_9C)
  loc_16F6035:         var_94.Text = arg_10
  loc_16F6046:         arg_10 = &HFF
  loc_16F6049:         Exit Sub
  loc_16F604A:       End If
  loc_16F604A:     End If
  loc_16F604D:   Else
  loc_16F6055:     If (var_8C = CInt(3)) Then
  loc_16F6066:       Set var_90 = Me.Txt
  loc_16F606C:       Call 0.Method_Txt_Validate0 (CInt(3), var_94, var_9C)
  loc_16F6074:       arg_10 = var_94.Text
  loc_16F60A4:       If (Len(Trim(CVar(var_9C))) = 0) Then
  loc_16F60BA:         Set var_90 = Me.Txt
  loc_16F60C0:         Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_16F60C8:         var_94.Text = CStr(MemVar_1F950EC)
  loc_16F60DA:       Else
  loc_16F60E4:         Set var_90 = Me.Txt
  loc_16F60EA:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F60FD:         var_9C = Proc_6_33_15125B8(var_94)
  loc_16F610A:         Set var_B8 = Me.Txt
  loc_16F6110:         Call 0.Method_Txt_Validate0 (Cancel, var_158)
  loc_16F6118:         var_158.Text = var_9C
  loc_16F612B:       End If
  loc_16F612F:       Set var_90 = Me.TopCtrl1
  loc_16F6135:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_9C)
  loc_16F613D:       var_9C = CStr()
  loc_16F614E:       If (var_9C = "Add") Then
  loc_16F6157:         Call Proc_89_64_111228C(MemVar_1F95044)
  loc_16F616A:         Set var_90 = Me.Txt
  loc_16F6170:         Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_16F6178:         var_94.Text = var_9C
  loc_16F6187:       End If
  loc_16F618A:     Else
  loc_16F6192:       If (var_8C = CInt(4)) Then
  loc_16F61A0:         Set var_90 = Me.Txt
  loc_16F61A6:         Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F61AE:         var_9C = "Party Name"
  loc_16F61CF:         If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_16F61DD:           Set var_90 = Me.Txt
  loc_16F61E3:           Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_16F61EB:           var_94.SetFocus
  loc_16F61F9:           arg_10 = &HFF
  loc_16F61FC:           Exit Sub
  loc_16F61FD:         End If
  loc_16F624B:         Set var_90 = Me.Txt
  loc_16F6251:         Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_16F6259:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_16F6271:         If (arg_10 Or (var_9C = vbNullString)) Then
  loc_16F6281:           Set var_90 = Me.Txt
  loc_16F6287:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F628F:           var_94.Text = vbNullString
  loc_16F62A8:           Set var_90 = Me.Txt
  loc_16F62AE:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F62B6:           var_94.Tag = vbNullString
  loc_16F62C5:         Else
  loc_16F62D3:           Set var_90 = Me.Txt
  loc_16F62D9:           Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_16F630D:           If (Trim(CVar(var_94.Tag)) = "PORD") Then
  loc_16F634B:             Set var_98 = Me.Txt
  loc_16F6351:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F6359:             var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16F638C:             var_94 = Me.Fields.Item("Code")
  loc_16F639D:             var_9C = CStr(var_94.Value)
  loc_16F63AA:             Set var_98 = Me.Txt
  loc_16F63B0:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F63B8:             var_B8.Tag = var_9C
  loc_16F63CE:           End If
  loc_16F63CE:         End If
  loc_16F63D1:       Else
  loc_16F63D9:         If (var_8C = CInt(&H11)) Then
  loc_16F642A:           Set var_90 = Me.Txt
  loc_16F6430:           Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_16F6438:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_16F6450:           If (var_9C Or (var_9C = vbNullString)) Then
  loc_16F6460:             Set var_90 = Me.Txt
  loc_16F6466:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F646E:             var_94.Text = vbNullString
  loc_16F6487:             Set var_90 = Me.Txt
  loc_16F648D:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F6495:             var_94.Tag = vbNullString
  loc_16F64A4:           Else
  loc_16F64DF:             Set var_98 = Me.Txt
  loc_16F64E5:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F64ED:             var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16F6520:             var_94 = Me.Fields.Item("Code")
  loc_16F653E:             Set var_98 = Me.Txt
  loc_16F6544:             Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_16F654C:             var_B8.Tag = CStr(var_94.Value)
  loc_16F6562:           End If
  loc_16F6566:           Set var_88 = New 
  loc_16F6571:           Me.Recordset15.CursorLocation = 3
  loc_16F6584:           Set var_90 = Me.Txt
  loc_16F658A:           Call 0.Method_Txt_Validate0 (CInt(&H11), var_94)
  loc_16F65B5:           var_12C = "Select I.Docid ,I1.Sno,ItemMast.name as ItemName,I1.Item as ItemCode,i1.specification,i1.unit,i1.qty,i1.rate,i1.amount,I1.WtUnit,I1.ConvFactor,I1.WtQty,I1.TaxStru,I1.TaxAmt,I1.Total From (Indent I Inner join Indent1 I1 on I.Docid=I1.Docid)Inner join ItemMast on I1.Item=ItemMast.Code And ItemMast.ItemType='Store' where (IsNull(I1.ClearYN,''))<>'Y'  AND I.Docid='" & var_94.Tag
  loc_16F65C3:           var_88.Open CVar(var_12C & "' Order by I.Docid"), CVar(MemVar_1F95044), 3
  loc_16F65ED:           If (var_88.RecordCount > 0) Then
  loc_16F65FF:             Me.FGrid.Redraw = False
  loc_16F6624:             global_148 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_16F662D:             ' Referenced from:         16F6EE5
  loc_16F663C:             If Not(var_88.EOF) Then
  loc_16F6664:               For var_1B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):         var_8A = var_1B4 'Integer
  loc_16F666E:                 var_B4 = CVar(CLng(var_8A)) 'Long
  loc_16F6676:                 var_108 = CVar(CLng(&HC)) 'Long
  loc_16F6690:                 var_E8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16F66B6:                 var_D8 = var_88.Fields.Item("DocID").Value
  loc_16F66C6:                 var_1D4 = CVar(CLng(var_8A)) 'Long
  loc_16F66D7:                 Set var_B8 = Me.FGrid
  loc_16F673E:                 If CBool(CVar(CLng(&HD)) And (CVar(CStr(var_B8.TextMatrix))) = var_88.Fields.Item("SNo").Value)) Then
  loc_16F6741:                   GoTo loc_16F6EDD
  loc_16F6744:                 End If
  loc_16F6747:               Next var_1B4 'Integer
  loc_16F676A:               var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_16F6772:               Set var_94 = Me.FGrid
  loc_16F6790:               Set var_218 = Me.FGrid
  loc_16F679A:               var_B4 = CVar(CLng(global_148)) 'Long
  loc_16F67A2:               var_108 = CVar(CLng(0)) 'Long
  loc_16F67AF:               var_C8 = CVar(CStr(global_148)) 'String
  loc_16F67B6:               LateIdCallSt
  loc_16F67C8:               var_F8 = CVar(CLng(global_148)) 'Long
  loc_16F67D0:               var_118 = CVar(CLng(&HE)) 'Long
  loc_16F6800:               var_D8 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_16F6807:               LateIdCallSt
  loc_16F6824:               var_F8 = CVar(CLng(global_148)) 'Long
  loc_16F682C:               var_118 = CVar(CLng(1)) 'Long
  loc_16F685C:               var_D8 = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_16F6863:               LateIdCallSt
  loc_16F6880:               var_F8 = CVar(CLng(global_148)) 'Long
  loc_16F6888:               var_118 = CVar(CLng(4)) 'Long
  loc_16F68B8:               var_D8 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_16F68BF:               LateIdCallSt
  loc_16F68F8:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F6900:               var_1C4 = CVar(CLng(3)) 'Long
  loc_16F692D:               var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_16F6934:               LateIdCallSt
  loc_16F6951:               var_F8 = CVar(CLng(global_148)) 'Long
  loc_16F6959:               var_118 = CVar(CLng(7)) 'Long
  loc_16F6989:               var_D8 = CVar(CStr(var_88.Fields.Item("WtUnit").Value)) 'String
  loc_16F6990:               LateIdCallSt
  loc_16F69C9:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F69D1:               var_1C4 = CVar(CLng(6)) 'Long
  loc_16F69FE:               var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("WTQty")), "0.000"))) 'String
  loc_16F6A05:               LateIdCallSt
  loc_16F6A3E:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F6A46:               var_1C4 = CVar(CLng(5)) 'Long
  loc_16F6A73:               var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("COnvFactor")), "0.000"))) 'String
  loc_16F6A7A:               LateIdCallSt
  loc_16F6AB3:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F6ACF:               var_D8 = "0.00"
  loc_16F6AEF:               LateIdCallSt
  loc_16F6B2B:               Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("TaxAmt")), var_218, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), var_D8))), 1, 1, CVar(CLng(8)))
  loc_16F6B37:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F6B3F:               var_1C4 = CVar(CLng(&HA)) 'Long
  loc_16F6B68:               var_144 = CVar(CStr(Format(var_D8, "0.00"))) 'String
  loc_16F6B6F:               LateIdCallSt
  loc_16F6BAA:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F6BB2:               var_1C4 = CVar(CLng(9)) 'Long
  loc_16F6BDF:               var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_16F6BE6:               LateIdCallSt
  loc_16F6C1F:               var_108 = CVar(CLng(global_148)) 'Long
  loc_16F6C5B:               LateIdCallSt
  loc_16F6CAD:               var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Specification")), CVar(CLng(2)), CVar(CLng(global_148)), var_218, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_16F6CB4:               LateIdCallSt
  loc_16F6D02:               var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), CVar(CLng(&HC)), CVar(CLng(global_148)), var_218, var_D8, CVar(CLng(&HB)))) 'String
  loc_16F6D09:               LateIdCallSt
  loc_16F6D55:               Proc_6_39_E7D3A0(var_D8, CVar(var_88.Fields.Item("SNo")), CVar(CLng(&HD)), CVar(CLng(global_148)), var_218, var_D8)
  loc_16F6D65:               LateIdCallSt
  loc_16F6DB5:               var_D8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(&H11)), CVar(CLng(global_148)), var_218, CVar(CStr(var_D8)))) 'String
  loc_16F6DBC:               LateIdCallSt
  loc_16F6DD5:               var_B4 = CVar(CLng(global_148)) 'Long
  loc_16F6DDD:               var_108 = CVar(CLng(&HF)) 'Long
  loc_16F6DE2:               var_1C4 = "Y"
  loc_16F6DEB:               LateIdCallSt
  loc_16F6DFE:               If (global_84 = "Yes") Then
  loc_16F6E2B:                 var_1C4 = CVar(CLng(global_148)) 'Long
  loc_16F6E43:                 Call Proc_89_55_138C68C(CStr(var_218.TextMatrix)), var_12C, CVar(CLng(&H10)), var_1C4, var_218.TextMatrix), CVar(CLng(&HE)), CVar(CLng(global_148)), var_218)
  loc_16F6E4B:                 var_D8 = CVar(var_12C) 'String
  loc_16F6E52:                 LateIdCallSt
  loc_16F6E6B:                 var_B4 = CVar(CLng(global_148)) 'Long
  loc_16F6E73:                 var_108 = CVar(CLng(&H10)) 'Long
  loc_16F6E86:                 var_9C = CStr(var_218.TextMatrix))
  loc_16F6E94:                 If (var_9C <> vbNullString) Then
  loc_16F6EA6:                   var_108 = CVar(CLng(&H10)) 'Long
  loc_16F6EBD:                   Call Proc_89_56_E8D404(CStr(var_218.TextMatrix)), var_108, CVar(CLng(global_148)), var_108, CVar(CLng(global_148)), var_218, var_D8, var_1C4)
  loc_16F6EC8:                 End If
  loc_16F6EC8:               End If
  loc_16F6ECA:               Set var_218 = Nothing 
  loc_16F6EDA:               global_148 = (global_148 + 1)
  loc_16F6EDD:               ' Referenced from:         16F6741
  loc_16F6EE0:               var_88.MoveNext
  loc_16F6EE5:               GoTo loc_16F662D
  loc_16F6EE8:             End If
  loc_16F6EFB:             Me.FGrid.FixedRows = 1
  loc_16F6F06:           Else
  loc_16F6F14:             Me.FGrid.Redraw = True
  loc_16F6F25:             If (global_148 = 1) Then
  loc_16F6F28:               var_B4 = 1
  loc_16F6F3B:               Me.FGrid.Rows = var_B4
  loc_16F6F61:               var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), global_148, var_108, var_B4))) 'String
  loc_16F6F69:               Set var_94 = Me.FGrid
  loc_16F6F96:               Me.FGrid.FixedRows = 1
  loc_16F6F9E:             End If
  loc_16F6F9E:           End If
  loc_16F6FAC:           Me.FGrid.Redraw = True
  loc_16F6FBD:           If (global_148 = 1) Then
  loc_16F6FD3:             Me.FGrid.Rows = 1
  loc_16F6FF9:             var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C8, var_218))) 'String
  loc_16F7001:             Set var_94 = Me.FGrid
  loc_16F702E:             Me.FGrid.FixedRows = 1
  loc_16F7036:           End If
  loc_16F7036:           Call Proc_89_54_1141F94(FGrid.DispID_10000, var_C8, var_D8)
  loc_16F703E:         Else
  loc_16F7046:           If Not (var_8C = CInt(8)) Then
  loc_16F7051:             If (var_8C = CInt(5)) Then
  loc_16F7054:             End If
  loc_16F7061:             Set var_90 = Me.Txt
  loc_16F7067:             Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_16F706F:             var_108 = var_94.Text
  loc_16F7086:             If (var_9C <> vbNullString) Then
  loc_16F70A1:               Set var_94 = Me.ListView.SelectedItem
  loc_16F70B9:               Set var_98 = Me.Txt
  loc_16F70BF:               Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_94.Text)
  loc_16F70C7:               var_B8.Text = var_218
  loc_16F70DD:             End If
  loc_16F70E0:           Else
  loc_16F70E8:             If Not (var_8C = CInt(&HD)) Then
  loc_16F70F3:               If Not (var_8C = CInt(&HE)) Then
  loc_16F70FE:                 If Not (var_8C = CInt(&HF)) Then
  loc_16F7109:                   If Not (var_8C = CInt(&H10)) Then
  loc_16F7114:                     If Not (var_8C = CInt(7)) Then
  loc_16F711F:                       If (var_8C = CInt(6)) Then
  loc_16F7122:                       End If
  loc_16F7122:                     End If
  loc_16F7122:                   End If
  loc_16F7122:                 End If
  loc_16F7122:               End If
  loc_16F712C:               Set var_90 = Me.Txt
  loc_16F7132:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F714A:               If Not(IsNumeric(CVar(var_94))) Then
  loc_16F715E:                 Set var_90 = Me.Txt
  loc_16F7164:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F716C:                 var_94.Text = CStr(0)
  loc_16F717B:               End If
  loc_16F7188:               Set var_90 = Me.Txt
  loc_16F718E:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_16F71A3:               var_220 = Val(var_94.Text)
  loc_16F71DB:               Set var_98 = Me.Txt
  loc_16F71E1:               Call 0.Method_Txt_Validate0 (Cancel, var_B8, CStr(Format(CVar(var_220), "0.00")), 1)
  loc_16F71E9:               var_B8.Text = 1
  loc_16F7209:             End If
  loc_16F7209:           End If
  loc_16F7209:         End If
  loc_16F7209:       End If
  loc_16F7209:     End If
  loc_16F7209:   End If
  loc_16F7209: End If
  loc_16F720E: Set var_88 = Nothing
  loc_16F7211: Exit Sub
  loc_16F7212: ' Referenced from: 16F571C
  loc_16F7212: Proc_6_60_E63754(var_220)
  loc_16F7217: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '101EAA0
  'Data Table: 503198
  Dim var_A0 As String
  Dim unk_5031B5 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  Dim Me00 As String
  loc_101E88C: On Error Goto loc_101EA97
  loc_101E89B: Set var_90 = Me
  loc_101E8B2: Call Proc_89_61_EFE8DC(Proc_5_1_100EC1C("ADD", var_90))
  loc_101E8BD: Call Proc_89_60_F53A90(global_64)
  loc_101E8EB: var_A0 = "Select Description,V_Type From Voucher_Type Where Site_Code='" & MemVar_1F95070 & "' and LogSite_Code='" & MemVar_1F95078 & "' and NCat='PORD'"
  loc_101E8F4: unk_5031B5.Execute var_A0, var_C0, -1
  loc_101E8FF: Set var_88 = var_90
  loc_101E927: If (var_88.RecordCount > 0) Then
  loc_101E963:   Set var_CC = Me.Txt
  loc_101E969:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D0)
  loc_101E971:   var_D0.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_101E9A1:   var_C8 = var_88.Fields.Item("V_Type")
  loc_101E9C0:   Set var_CC = Me.Txt
  loc_101E9C6:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D0)
  loc_101E9CE:   var_D0.Tag = CStr(var_C8.Value)
  loc_101E9E4: End If
  loc_101EA1B: Set var_90 = Me.Txt
  loc_101EA21: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_C8, CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy")))
  loc_101EA29: var_C8.Text = 1
  loc_101EA4A: Set var_90 = Me.Txt
  loc_101EA50: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C8)
  loc_101EA58: var_C8.SetFocus
  loc_101EA71: Me.LblUser.Caption = vbNullString
  loc_101EA80: Set var_90 = Me.LblLDt
  loc_101EA86: var_90.Caption = vbNullString
  loc_101EA93: Set var_88 = Nothing
  loc_101EA96: Exit Sub
  loc_101EA97: ' Referenced from: 101E88C
  loc_101EA97: Proc_6_60_E63754(1)
  loc_101EA9C: Exit Sub
  loc_101EA9D: Me00 = var_90
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EDBBB4
  'Data Table: 503198
  Dim var_10C As TextBox
  loc_EDBB0C: On Error Goto loc_EDBBAC
  loc_EDBB46: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EDBB54:   Set var_108 = Me.TxtGrid
  loc_EDBB5A:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (0, var_10C)
  loc_EDBB62:   var_10C.Visible = False
  loc_EDBB91:   Call Proc_89_61_EFE8DC(Proc_5_1_100EC1C("INI", Me))
  loc_EDBB9C:   Call Proc_89_58_16D1CE4(global_64)
  loc_EDBBA7:   global_92 = vbNullString
  loc_EDBBAB: End If
  loc_EDBBAB: Exit Sub
  loc_EDBBAC: ' Referenced from: EDBB0C
  loc_EDBBAC: Proc_6_60_E63754()
  loc_EDBBB1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1348CE4
  'Data Table: 503198
  Dim var_AC As Variant
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_5031B5 As Connection15
  Dim var_98 As Recordset15
  Dim var_A8 As Fields15
  Dim var_118 As Variant
  Dim var_DC As Fields15
  Dim var_128 As Variant
  Dim var_B0 As String
  Dim var_12C As String
  Dim var_138 As String
  Dim var_D8 As Variant
  Dim Me As Recordset15
  loc_1348534: On Error Goto loc_1348C93
  loc_1348545: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_1348548:   Exit Sub
  loc_1348549: End If
  loc_1348567: Set var_A8 = Me.Txt
  loc_134856D: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC, var_B0, "Select Distinct DocId,VType,VNo From Stock Where ContraDocId='")
  loc_1348575: var_D8 = var_AC.Text
  loc_134857E: var_B4 = -1 & var_B0
  loc_134858E: unk_5031B5.Execute var_B4 & "'", var_DC, 
  loc_1348599: Set var_98 = var_DC
  loc_13485B7: var_E0 = var_98.RecordCount
  loc_13485C5: If (var_E0 > 0) Then
  loc_13485C8:   ' Referenced from: 1348741
  loc_13485D7:   If Not(var_98.EOF) Then
  loc_13485E2:     If (var_9C = vbNullString) Then
  loc_1348625:       var_B8 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_98.Fields.Item("vType").Value), 6)
  loc_134862C:       var_118 = CVar(Proc_6_45_EADFB8(CStr(var_98.Fields.Item("vType").Value), 6) & "'" & " V.No :-> ") 'String
  loc_134865E:       var_9C = CStr(var_118 & var_98.Fields.Item("VNo").Value)
  loc_1348683:     Else
  loc_13486BF:       var_12C = var_9C & "," & vbCrLf & "V.Type :-> "
  loc_13486DF:       var_118 = CVar(var_12C & Proc_6_45_EADFB8(CStr(var_98.Fields.Item("vType").Value), 6) & " V.No :-> ") 'String
  loc_13486F4:       var_DC = var_98.Fields
  loc_134870C:       var_128 = var_118 & var_DC.Item("VNo").Value 
  loc_1348711:       var_9C = CStr(var_128)
  loc_1348739:     End If
  loc_134873C:     var_98.MoveNext
  loc_1348741:     GoTo loc_13485C8
  loc_1348744:   End If
  loc_134874A:   Call 0.Method_arg_50 (var_13C)
  loc_1348798:   var_D8 = CVar("GIN " & vbCrLf & vbNullString & var_9C & " " & vbCrLf & "Generated For This Purchase Order," & vbCrLf & "Can Not Delete The Record") 'String
  loc_134879B:   MsgBox(var_D8, &H30, CVar(var_13C), var_118, var_128)
  loc_13487C1:   Set var_98 = Nothing
  loc_13487C4:   Exit Sub
  loc_13487C5: End If
  loc_13487FC: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_118, var_128) = 6) Then
  loc_1348808:   unk_5031B5.BeginTrans var_E0
  loc_134881E:   var_94 = Me.Bookmark 'Variant
  loc_134886A:   var_118 = "Select IndentDocId,IndentSno from POrder1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1348878:   unk_5031B5.Execute CStr(var_118), var_128, -1
  loc_1348883:   Set var_98 = var_DC
  loc_134889D:   ' Referenced from: 134895F
  loc_13488AC:   If Not(var_98.EOF) Then
  loc_13488D6:     var_AC = var_98.Fields.Item("IndentDocID")
  loc_13488E7:     var_B0 = Proc_6_38_E69628(CVar(var_AC), "Update Indent1 Set ClearYN='' where Docid='", var_17C)
  loc_13488EB:     var_B4 = -1 & var_B0
  loc_13488F2:     var_128 = CVar("GIN " & vbCrLf & vbNullString & "' and Sno=") 'String
  loc_1348904:     var_DC = var_98.Fields
  loc_134891B:     Proc_6_39_E7D3A0(var_118, CVar(var_DC.Item("IndentSno")), var_128)
  loc_1348931:     unk_5031B5.Execute CStr(var_180 & var_118), var_DC, 
  loc_134895A:     var_98.MoveNext
  loc_134895F:     GoTo loc_134889D
  loc_1348962:   End If
  loc_1348980:   Set var_A8 = Me.Txt
  loc_1348986:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC, var_B0, "Delete From POrder1 Where DocID='")
  loc_1348997:   var_B4 = -1 & var_B0
  loc_13489A7:   unk_5031B5.Execute "GIN " & vbCrLf & vbNullString & "'", var_DC, 
  loc_13489CF:   Set var_A8 = Me.Txt
  loc_13489D5:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC)
  loc_13489E7:   var_1A0 = 0
  loc_13489FA:   var_198 = 0
  loc_1348A05:   var_194 = 0
  loc_1348A36:   var_138 = 0
  loc_1348A75:   var_B0 = "POrder1"
  loc_1348A7E:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "DocId", &HC8, var_AC.Text, 0, 0, 0)
  loc_1348AC1:   Set var_A8 = Me.Txt
  loc_1348AC7:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC, var_B0, "Delete From POrder Where DocID='", var_AC.Text, -1, var_DC)
  loc_1348ACF:   var_138 = var_AC.Text
  loc_1348ADF:   var_B8 = 0 & var_B0 & "'"
  loc_1348AE8:   unk_5031B5.Execute var_B8, 0, 0
  loc_1348B10:   Set var_A8 = Me.Txt
  loc_1348B16:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_AC, var_B8)
  loc_1348B1E:   0 = var_AC.Text
  loc_1348B28:   var_1A0 = 0
  loc_1348B3B:   var_198 = 0
  loc_1348B46:   var_194 = 0
  loc_1348B59:   var_18C = 0
  loc_1348B64:   var_13C = 0
  loc_1348B77:   var_138 = 0
  loc_1348BB6:   var_B0 = "POrder"
  loc_1348BBF:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "DocId", &HC8, var_B8, 0, 0, 0)
  loc_1348BEA:   unk_5031B5.CommitTrans
  loc_1348BFA:   Me.Requery -1
  loc_1348C0A:   Me.Requery -1
  loc_1348C2A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1348C37:     Me.Bookmark = var_94
  loc_1348C3F:   Else
  loc_1348C53:     If (Me.EOF = 0) Then
  loc_1348C5C:       Me.MoveLast
  loc_1348C61:     End If
  loc_1348C61:   End If
  loc_1348C61:   Call Proc_89_58_16D1CE4(var_138, 0, var_13C, var_18C)
  loc_1348C82:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_1348C8A: End If
  loc_1348C8F: Set var_98 = Nothing
  loc_1348C92: Exit Sub
  loc_1348C93: ' Referenced from: 1348534
  loc_1348C99: unk_5031B5.RollbackTrans
  loc_1348CA6: Set var_A8 = Err()
  loc_1348CAC: Call 0.Method_arg_2C (var_B0, 0, var_194)
  loc_1348CCD: MsgBox(CVar(var_B0), &H10, " Deletion Message", var_118, var_128)
  loc_1348CE0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2FBF8
  'Data Table: 503198
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F2FAE0: On Error Goto loc_F2FBF2
  loc_F2FAF1: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F2FAF4:   Exit Sub
  loc_F2FAF5: End If
  loc_F2FB18: Call Proc_89_61_EFE8DC(Proc_5_1_100EC1C("EDIT", Me))
  loc_F2FB30: Set var_8C = Me.Txt
  loc_F2FB36: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F2FB3E: var_94.Enabled = False
  loc_F2FB57: Set var_8C = Me.Txt
  loc_F2FB5D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F2FB7F: Set var_8C = Me.Txt
  loc_F2FB85: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_F2FB9F: If (False = &HFF) Then
  loc_F2FBAD:   Set var_8C = Me.Txt
  loc_F2FBB3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_F2FBBB:   var_94.SetFocus
  loc_F2FBC7: End If
  loc_F2FBD4: Me.LblUser.Caption = vbNullString
  loc_F2FBE9: Me.LblLDt.Caption = vbNullString
  loc_F2FBF1: Exit Sub
  loc_F2FBF2: ' Referenced from: F2FAE0
  loc_F2FBF2: Proc_6_60_E63754(global_64)
  loc_F2FBF7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A788
  'Data Table: 503198
  loc_E1A77D: Me.Global.Unload Me
  loc_E1A785: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE4948
  'Data Table: 503198
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_114 As String
  Dim MemVar_1F950E4 As String
  loc_EE4894: On Error Goto loc_EE4940
  loc_EE48AE: If (Me.RecordCount <= 0) Then
  loc_EE48B7:   var_B8 = "Information"
  loc_EE48D2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE48E2:   Exit Sub
  loc_EE48E3: End If
  loc_EE48EA: var_10C = "Select P.DocID as SearchCode,V.Description As OrderType,VNO As OrdNo,VDAte As OrdDate,SG.Name As PartyName " & "From (POrder  P Inner Join SubGroup SG On P.PartyCode=SG.SubCode) "
  loc_EE48F8: var_114 = var_10C & "Inner Join Voucher_Type V on (P.VType=V.V_Type and P.LogSite_Code=V.LogSite_Code) Where V.LogSite_Code='" & MemVar_1F95078
  loc_EE48FF: MemVar_1F950E4 = var_114 & "' Order by P.DocID,P.VNo"
  loc_EE4915: Proc_6_126_F1C850("1500,1000,1500,3000")
  loc_EE4923: MemVar_1F95120 = Me
  loc_EE493A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE493F: Exit Sub
  loc_EE4940: ' Referenced from: EE4894
  loc_EE4940: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EE4945: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3AAA8
  'Data Table: 503198
  loc_E3AA98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AAA0: Call Proc_89_58_16D1CE4(global_64)
  loc_E3AAA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3AA48
  'Data Table: 503198
  Dim arg_20FF As Double
  loc_E3AA38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AA40: Call Proc_89_58_16D1CE4(global_64)
  loc_E3AA45: Exit Sub
  loc_E3AA46: arg_20FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3A9E8
  'Data Table: 503198
  loc_E3A9D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A9E0: Call Proc_89_58_16D1CE4(global_64)
  loc_E3A9E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3A988
  'Data Table: 503198
  loc_E3A978: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A980: Call Proc_89_58_16D1CE4(global_64)
  loc_E3A985: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '105862C
  'Data Table: 503198
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_BC As Variant
  Dim var_AC As Fields15
  Dim var_C0 As Field20
  Dim var_100 As String
  Dim unk_5031B5 As Connection15
  Dim var_116 As Integer
  loc_10583D0: On Error Goto loc_1058625
  loc_10583DC: var_A4 = Me.RecordCount
  loc_10583EA: If (var_A4 <= 0) Then
  loc_10583ED:   Exit Sub
  loc_10583EE: End If
  loc_10583F5: var_A8 = "SELECT PO.VType, PO.VNo, PO.VDate, S.Name as PartyName, S.Add1, S.Add2, S.Add3,C.CityName,C.ZipCode,ST.ShortName StateCode,ST.Name StateName,S.GSTIN, S.Phone, I.Name as ItemName, PO1.Specification, PO1.Unit, PO1.Qty, PO1.Rate, PO1.Amount, PO.DispatchMode, case PO.DespatchThru when '' then 'N/A' else PO.DespatchThru end as DespatchThru, case PO.PaymentTerms when '' then 'N/A' else PO.PaymentTerms end as PaymentTerms, case PO.DeliverySch when '' then 'N/A' else PO.DeliverySch end as DeliverySch, PO.ExPer, PO.TaxPer, PO.DiscPer, PO.STaxPer, PO.ForwardCharges, PO.MaxQty, PO.PackCharge, case PO.Prices when '' then 'N/A' else PO.Prices end as Prices, case PO.Remark when '' then 'N/A' else PO.Remark end as Remark, PO1.TaxAmt, PO1.Total " & " FROM POrder AS PO Left JOIN POrder1 AS PO1 ON PO.Docid = PO1.Docid Left JOIN SubGroup AS S ON PO.PartyCode = S.SubCode Left Join City C on S.CityCode=C.CityCode Left Join State ST on C.State=ST.Code Left JOIN ItemMast AS I ON PO1.ItemCode = I.Code And I.ItemType='Store' Left JOIN City ON S.CityCode = City.CityCode "
  loc_1058414: var_AC = Me.Fields
  loc_105841C: var_C0 = var_AC.Item("SearchCode")
  loc_1058424: var_D0 = var_C0.Value
  loc_1058430: var_100 = "'"
  loc_105843A: var_88 = CStr(CVar(var_A8 & " Where PO.DocID='") & var_D0 & var_100)
  loc_105845A: If (var_88 = vbNullString) Then
  loc_105845D:   Exit Sub
  loc_105845E: End If
  loc_1058474: unk_5031B5.Execute var_88, var_D0, -1
  loc_105849E: Set var_AC = var_AC 
  loc_10584AA: var_116 = CreateFieldDefFile(var_AC, MemVar_1F950B4 & "\POrder.ttx")
  loc_10584B4: Set var_9C = var_AC
  loc_10584BA: var_BC = CVar(var_116) 'Integer
  loc_10584BD: var_98 = var_BC 'Variant
  loc_10584D9: var_A8 = MemVar_1F950B4 & "\POrder.RPT"
  loc_10584E2: Call 0.Method_arg_1C (var_A8, var_BC, var_AC)
  loc_10584ED: MemVar_1F951E8 = var_AC
  loc_1058508: Call 0.Method_arg_90 (var_AC, var_A4, var_9E, 1)
  loc_1058510: Call 0.Method_arg_24 (var_116, &HFF)
  loc_105851C: For var_11A =  To CInt(var_A4): var_AC = var_11A 'Integer
  loc_1058535:   Call 0.Method_arg_90 (var_AC, CLng(var_9E))
  loc_105853D:   Call 0.Method_arg_20 (var_C0)
  loc_1058545:   Call 0.Method_arg_30 (var_A8)
  loc_105855F:   If (var_A8 = "Title") Then
  loc_1058575:     Call 0.Method_arg_90 (var_AC, CLng(var_9E))
  loc_105857D:     Call 0.Method_arg_20 (var_C0)
  loc_1058585:     Call 0.Method_arg_38 ("'Purchase Order'")
  loc_1058591:   End If
  loc_1058594: Next var_11A 'Integer
  loc_10585B2: Call 0.Method_arg_64 (var_AC, CVar(var_9C))
  loc_10585BA: Call 0.Method_arg_2C (var_100)
  loc_10585C8: Call 0.Method_arg_150 (var_130)
  loc_10585D3: Call 0.Method_arg_50 (var_A8)
  loc_10585DD: Set var_C0 = Nothing
  loc_10585F7: Set var_AC = MemVar_1F951E8 
  loc_1058603: Proc_6_99_1484404(var_AC, 0, var_A8)
  loc_105860E: MemVar_1F951E8 = var_AC
  loc_1058621: Set var_9C = Nothing
  loc_1058624: Exit Sub
  loc_1058625: ' Referenced from: 10583D0
  loc_1058625: Proc_6_60_E63754(&HFF)
  loc_105862A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3EF58
  'Data Table: 503198
  Dim Me As Recordset15
  loc_E3EF2F: Me.Requery -1
  loc_E3EF3F: Me.Requery -1
  loc_E3EF4F: Me.Requery -1
  loc_E3EF54: Exit Sub
  loc_E3EF55: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1795C48
  'Data Table: 503198
  Dim var_F4 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_F0 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_FC As String
  Dim var_194 As String
  Dim var_198 As String
  Dim unk_5031B5 As Connection15
  Dim var_F8 As Variant
  Dim var_19C As Variant
  Dim var_1A0 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_1F0 As TextBox
  Dim var_7F4 As Double
  Dim var_224 As TextBox
  Dim var_270 As Variant
  Dim var_2FC As Variant
  Dim var_348 As Variant
  Dim var_394 As Variant
  Dim var_400 As TextBox
  Dim var_7FC As Double
  Dim var_44C As Variant
  Dim var_804 As Double
  Dim var_498 As Variant
  Dim var_504 As TextBox
  Dim var_80C As Double
  Dim var_550 As TextBox
  Dim var_814 As Double
  Dim var_5BC As TextBox
  Dim var_81C As Double
  Dim var_608 As TextBox
  Dim var_824 As Double
  Dim var_714 As Variant
  Dim var_6F4 As String
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim var_1BC As String
  Dim var_1D0 As String
  Dim var_1FC As String
  Dim var_200 As String
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_2E4 As Variant
  Dim var_320 As Variant
  Dim var_340 As Variant
  Dim var_37C As Variant
  Dim var_3E8 As Variant
  Dim var_470 As Variant
  Dim var_480 As Variant
  Dim var_490 As Variant
  Dim var_4EC As Variant
  Dim var_584 As Variant
  Dim var_5B4 As Variant
  Dim var_5D0 As Variant
  Dim var_5E0 As Variant
  Dim var_63C As Variant
  Dim var_64C As Variant
  Dim var_67C As Variant
  Dim var_6DC As Variant
  Dim var_774 As Variant
  Dim var_BA As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_CC As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Double
  Dim var_26C As MSHFlexGrid
  Dim var_2F8 As MSHFlexGrid
  Dim var_344 As MSHFlexGrid
  Dim var_850 As Variant
  Dim var_870 As Variant
  Dim var_390 As MSHFlexGrid
  Dim var_450 As String
  Dim var_3FC As MSHFlexGrid
  Dim var_49C As String
  Dim var_9D0 As Variant
  Dim var_448 As MSHFlexGrid
  Dim var_7E8 As Variant
  Dim var_554 As String
  Dim var_CD0 As Double
  Dim var_494 As MSHFlexGrid
  Dim var_B90 As Variant
  Dim var_BB0 As Variant
  Dim var_5C0 As String
  Dim var_C20 As Variant
  Dim var_500 As MSHFlexGrid
  Dim var_6AC As Variant
  Dim var_AA0 As Variant
  Dim var_C80 As Variant
  Dim var_60C As String
  Dim var_88 As Recordset15
  loc_1793F58: On Error Goto loc_1795C2B
  loc_1793F66: Set var_F0 = Me.TxtGrid
  loc_1793F6C: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_F4)
  loc_1793F74: var_F4.Visible = False
  loc_1793F80: Call Proc_89_62_F6C558()
  loc_1793F90: Set var_F0 = Me.Txt
  loc_1793F96: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1793FBF: If (Proc_6_27_EA61EC(var_F4, "Order Type") = 0) Then
  loc_1793FC2:   Exit Sub
  loc_1793FC3: End If
  loc_1793FCE: Set var_F0 = Me.Txt
  loc_1793FD4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_F4)
  loc_1793FFD: If (Proc_6_27_EA61EC(var_F4, "Order No") = 0) Then
  loc_1794000:   Exit Sub
  loc_1794001: End If
  loc_179400C: Set var_F0 = Me.Txt
  loc_1794012: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_F4)
  loc_179403B: If (Proc_6_27_EA61EC(var_F4, "Order Date") = 0) Then
  loc_179403E:   Exit Sub
  loc_179403F: End If
  loc_179404A: Set var_F0 = Me.Txt
  loc_1794050: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_F4)
  loc_1794061: Set var_F8 = var_F4
  loc_1794079: If (Proc_6_27_EA61EC(var_F8, "Party Name") = 0) Then
  loc_179407C:   Exit Sub
  loc_179407D: End If
  loc_1794080: Call Proc_89_51_1011914(var_FE)
  loc_179408B: If (var_FE = 0) Then
  loc_179409C:   Set var_F0 = Me.Txt
  loc_17940A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_F4)
  loc_17940AA:   var_FE = var_F4.Enabled
  loc_17940BC:   If (var_FE = &HFF) Then
  loc_17940CA:     Set var_F0 = Me.Txt
  loc_17940D0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_F4)
  loc_17940D8:     var_F4.SetFocus
  loc_17940E4:   End If
  loc_17940E4:   Exit Sub
  loc_17940E5: End If
  loc_17940E8: Call Proc_89_59_1130944(var_FE)
  loc_17940F3: If (var_FE = 0) Then
  loc_17940F6:   Exit Sub
  loc_17940F7: End If
  loc_1794103: Call Txt_Validate(CInt(2))
  loc_1794108: var_110 = 1
  loc_1794111: var_130 = 1
  loc_179412F: var_160 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1794135: var_170 = Trim(var_160)
  loc_1794151: If (var_170 = vbNullString) Then
  loc_1794167:   var_150 = "Item Detail Required "
  loc_179416D:   MsgBox(var_150, 0, var_160, var_170, var_190)
  loc_1794190:   Me.FGrid.Row = 1
  loc_179419C:   Set var_F0 = Me.FGrid
  loc_17941C0:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_17941C8:   Exit Sub
  loc_17941C9: End If
  loc_17941CD: Set var_F0 = Me.TopCtrl1
  loc_17941D3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(FGrid.DispID_8001)
  loc_17941DB: var_FC = CStr(var_130)
  loc_17941EC: If (var_FC = "Add") Then
  loc_179421C:   Set var_F0 = Me.Txt
  loc_1794222:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_FC, "Select Count(*) From POrder Where DocID='", var_150, -1, var_F8)
  loc_179422A:   var_19C = var_F4.Text
  loc_1794243:   unk_5031B5.Execute 0 & var_FC & "'", var_1A0, var_160
  loc_179424B:   var_110 = var_F8.Fields
  loc_1794253:   var_F4 = var_19C.Item(&HFF)
  loc_179425B:    = var_1A0.Value
  loc_1794288:   If (var_160 > 0) Then
  loc_1794291:     Call Proc_89_64_111228C(MemVar_1F95044)
  loc_17942A4:     Set var_F0 = Me.Txt
  loc_17942AA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4)
  loc_17942B2:     var_F4.Text = var_FC
  loc_17942C1:     Exit Sub
  loc_17942C2:   End If
  loc_17942C5: Else
  loc_17942E2:   var_F4 = Me.Fields.Item("DocID")
  loc_17942EA:   var_150 = var_F4.Value
  loc_17942F9:   global_104 = CStr(var_150)
  loc_179430A: End If
  loc_1794318: Set var_F0 = Me.Txt
  loc_179431E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_F4)
  loc_1794326: var_FC = var_F4.Text
  loc_179432E: var_1A4 = var_FC
  loc_1794340: If (var_1A4 = "Railway") Then
  loc_1794346:   var_98 = "RW"
  loc_179434C: Else
  loc_1794354:   If (var_1A4 = "VPP") Then
  loc_179435A:     var_98 = "VP"
  loc_1794360:   Else
  loc_1794368:     If (var_1A4 = "AIR Mail") Then
  loc_179436E:       var_98 = "AM"
  loc_1794374:     Else
  loc_179437C:       If (var_1A4 = "Transport") Then
  loc_1794382:         var_98 = "TR"
  loc_1794388:       Else
  loc_1794390:         If (var_1A4 = "Personally") Then
  loc_1794396:           var_98 = "PS"
  loc_179439C:         Else
  loc_17943A4:           If (var_1A4 = "Post Parcel") Then
  loc_17943AA:             var_98 = "PP"
  loc_17943B0:           Else
  loc_17943B8:             If (var_1A4 = "Courier") Then
  loc_17943BE:               var_98 = "CO"
  loc_17943C4:             Else
  loc_17943CC:               If (var_1A4 = "Cargo") Then
  loc_17943D2:                 var_98 = "CA"
  loc_17943D5:               End If
  loc_17943D5:             End If
  loc_17943D5:           End If
  loc_17943D5:         End If
  loc_17943D5:       End If
  loc_17943D5:     End If
  loc_17943D5:   End If
  loc_17943D5: End If
  loc_17943D7: var_8A = &HFF
  loc_17943E3: unk_5031B5.BeginTrans var_1A8
  loc_1794406: Set var_F0 = Me.Txt
  loc_179440C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_FC, "Delete From POrder1 Where DocID='", var_150)
  loc_1794414: -1 = var_F4.Text
  loc_179442D: unk_5031B5.Execute var_F8 & var_FC & "'", var_8A, var_FC
  loc_1794465: Set var_F0 = Me.Txt
  loc_179446B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_FC, "Delete From POrder Where DocID='")
  loc_1794473: var_150 = var_F4.Text
  loc_179447C: var_194 = -1 & var_FC
  loc_179448C: unk_5031B5.Execute var_F8 & var_FC & "'", var_F8, 
  loc_17944B4: Set var_F0 = Me.Txt
  loc_17944BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4)
  loc_17944D5: Set var_F8 = Me.Txt
  loc_17944DB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C)
  loc_1794508: Set var_1EC = Me.Txt
  loc_179450E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1F0)
  loc_1794531: Set var_208 = Me.Txt
  loc_1794537: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_20C)
  loc_1794546: Proc_6_7_F26918(var_160, CVar(var_20C))
  loc_1794559: Set var_220 = Me.Txt
  loc_179455F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_224)
  loc_179457A: Set var_26C = Me.Txt
  loc_1794580: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_270)
  loc_1794588: var_274 = var_270.Text
  loc_179459B: Set var_2F8 = Me.Txt
  loc_17945A1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2FC)
  loc_17945BC: Set var_344 = Me.Txt
  loc_17945C2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_348)
  loc_17945DD: Set var_390 = Me.Txt
  loc_17945E3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_394)
  loc_17945FE: Set var_3FC = Me.Txt
  loc_1794604: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_400)
  loc_1794619: var_7FC = Val(var_400.Text)
  loc_179462A: Set var_448 = Me.Txt
  loc_1794630: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_44C, var_450)
  loc_1794645: var_804 = Val(var_450)
  loc_1794656: Set var_494 = Me.Txt
  loc_179465C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_498, var_49C)
  loc_1794677: Set var_500 = Me.Txt
  loc_179467D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_504)
  loc_1794692: var_80C = Val(var_504.Text)
  loc_17946A3: Set var_54C = Me.Txt
  loc_17946A9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_550, var_554)
  loc_17946BE: var_814 = Val(var_554)
  loc_17946CF: Set var_5B8 = Me.Txt
  loc_17946D5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_5BC, var_5C0)
  loc_17946EA: var_81C = Val(var_5C0)
  loc_17946FB: Set var_604 = Me.Txt
  loc_1794701: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_608, var_60C)
  loc_1794716: var_824 = Val(var_60C)
  loc_179471C: var_69C = Date
  loc_1794727: Proc_6_7_F26918(var_6AC, var_69C)
  loc_1794730: Set var_6E0 = Me.TopCtrl1
  loc_1794736: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_824)
  loc_1794788: var_194 = "Insert Into POrder(" & "DocID,VType,VPrefix,Site_Code,VNo," & "VDate,PartyCode,"
  loc_17947A4: var_1B4 = var_194 & "Remark," & "DispatchMode,DespatchThru,PaymentTerms,Prices," & "PackCharge,ForwardCharges,DeliverySch," & "DiscPer,ExPer,"
  loc_17947C7: var_1D0 = var_1B4 & "TaxPer,STaxPer,U_Name,U_EntDt,U_AE,LogSite_Code) " & " Values(" & "'" & var_F4.Text & "','"
  loc_17947F9: var_1FC = CStr(Val(var_1F0.Text))
  loc_179480B: var_170 = CVar(var_1D0 & var_19C.Tag & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & var_1FC & "," & vbNullString) 'String
  loc_179486F: var_320 = var_170 & var_160 & ",'" & CVar(var_224.Tag) & "'," & "'" & CVar(var_274) & "'," & "'" & CVar(var_98) & "','" & CVar(var_2FC.Text) 
  loc_17948C6: var_470 = var_320 & "','" & CVar(var_348.Text) & "','" & CVar(var_394.Text) & "'," & vbNullString & CVar(var_44C.Text) & "," & CVar(var_498.Text) 
  loc_1794927: var_5E0 = var_470 & ",'" & CVar(var_49C) & "'," & vbNullString & CVar(var_550.Text) & "," & CVar(var_5BC.Text) & "," & vbNullString & CVar(var_608.Text) 
  loc_1794967: var_6DC = var_5E0 & "," & CVar(var_824) & ",'" & CVar(MemVar_1F950C8) & "'," & var_6AC & ",'" 
  loc_1794998: unk_5031B5.Execute CStr(var_6DC & IIf((CStr(var_6F0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_7E8, -1
  loc_1794AA0: var_BA = 0
  loc_1794AA6: var_C4 = CDbl(0)
  loc_1794ACE: For var_828 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_828 'Integer
  loc_1794AD8:   var_110 = CVar(CLng(var_92)) 'Long
  loc_1794AE0:   var_130 = CVar(CLng(1)) 'Long
  loc_1794B0B:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1794B14:     var_BA = (var_BA + 1)
  loc_1794B17:   End If
  loc_1794B1B:   var_110 = CVar(CLng(var_92)) 'Long
  loc_1794B23:   var_130 = CVar(CLng(9)) 'Long
  loc_1794B4F:   var_C4 = (var_C4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1794B5E: Next var_828 'Integer
  loc_1794B71: Set var_F0 = Me.Txt
  loc_1794B77: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4)
  loc_1794B7F: var_FC = var_F4.Text
  loc_1794B9A: var_D4 = ((var_C4 * Val(var_FC)) / CDbl(&H64))
  loc_1794BB5: Set var_F0 = Me.Txt
  loc_1794BBB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_F4, var_FC)
  loc_1794BC3: var_D4 = var_F4.Text
  loc_1794BE2: var_DC = (((var_C4 - var_D4) * Val(var_FC)) / CDbl(&H64))
  loc_1794BFD: Set var_F0 = Me.Txt
  loc_1794C03: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_F4, var_FC)
  loc_1794C0B: var_DC = var_F4.Text
  loc_1794C2E: var_E4 = ((((var_C4 - var_D4) + var_DC) * Val(var_FC)) / CDbl(&H64))
  loc_1794C49: Set var_F0 = Me.Txt
  loc_1794C4F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_F4, var_FC, var_E4)
  loc_1794C57: var_7F4 = var_F4.Text
  loc_1794C7E: var_EC = (((((var_C4 - var_D4) + var_DC) + var_E4) * Val(var_FC)) / CDbl(&H64))
  loc_1794C99: Set var_F8 = Me.Txt
  loc_1794C9F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_19C, var_194, var_EC)
  loc_1794CA7: var_7F4 = var_19C.Text
  loc_1794CB4: var_7F4 = Val(var_194)
  loc_1794CC5: Set var_F0 = Me.Txt
  loc_1794CCB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_F4, var_FC)
  loc_1794CFC: var_CC = (((Val(var_FC) + var_F4.Text) + ((((var_C4 - var_D4) + var_DC) + var_E4) + var_EC)) - var_DC)
  loc_1794D3C: For var_82C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_82C 'Integer
  loc_1794D4B:   var_B0 = CDbl(0)
  loc_1794DA1:   Set var_F4 = Me.FGrid
  loc_1794DB2:   var_FC = CStr(var_F4.TextMatrix))
  loc_1794DE0:   If CBool(CVar(CLng(3)) And (CDbl(Val(var_FC)) > CDbl(0))) Then
  loc_1794DF1:     Set var_F8 = Me.Txt
  loc_1794DF7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_19C, var_194, CVar(CLng(var_92)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1794DFF:     var_B0 = var_19C.Text
  loc_1794E0C:     var_7F4 = Val(var_194)
  loc_1794E1D:     Set var_F0 = Me.Txt
  loc_1794E23:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_F4, var_FC, var_7F4, CDbl(0))
  loc_1794E2B:     1 = var_F4.Text
  loc_1794E4C:     var_A0 = (((((Val(var_FC) + var_7F4) - var_D4) + var_DC) + var_E4) + var_EC)
  loc_1794E68:     If (var_92 = var_BA) Then
  loc_1794E87:       var_150 = CVar((var_CC - CDbl(0))) 'Double
  loc_1794EA7:       var_110 = CVar(CLng(var_92)) 'Long
  loc_1794EAF:       var_130 = CVar(CLng(3)) 'Long
  loc_1794F00:       var_B0 = CSng(Format(CVar((CSng(Format(Me.FGrid.TextMatrix), "00.00")) / Val(CStr(Me.FGrid.TextMatrix))))), "00.00"))
  loc_1794F18:       var_110 = CVar(CLng(var_92)) 'Long
  loc_1794F20:       var_130 = CVar(CLng(9)) 'Long
  loc_1794F50:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1794F78:         For var_830 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_830 'Integer
  loc_1794F82:           var_110 = CVar(CLng(var_94)) 'Long
  loc_1794F8A:           var_130 = CVar(CLng(9)) 'Long
  loc_1794FBA:           If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1794FC0:             var_A8 = CDbl(0)
  loc_1794FC3:             GoTo loc_1794FC6
  loc_1794FC6:             ' Referenced from: 1794FC3
  loc_1794FC6:           End If
  loc_1794FC9:         Next var_830 'Integer
  loc_1794FCE:       End If
  loc_1794FD1:     Else
  loc_1794FD8:       If (var_C4 <> CDbl(0)) Then
  loc_1794FDF:         var_110 = CVar(CLng(var_92)) 'Long
  loc_1794FE7:         var_130 = CVar(CLng(9)) 'Long
  loc_1795010:         var_180 = CVar(CLng(var_92)) 'Long
  loc_1795018:         var_2E4 = CVar(CLng(9)) 'Long
  loc_1795021:         Set var_F4 = Me.FGrid
  loc_1795061:         var_170 = CVar((Val(CStr(Me.FGrid.TextMatrix))) + ((var_A0 * Val(CStr(var_F4.TextMatrix)))) / var_C4))) 'Double
  loc_1795071:         var_A8 = CSng(Format("00.00", "00.00"))
  loc_179508F:       End If
  loc_1795093:       var_110 = CVar(CLng(var_92)) 'Long
  loc_179509B:       var_130 = CVar(CLng(3)) 'Long
  loc_17950C7:       If (CDbl(CStr(Me.FGrid.TextMatrix))) <> CDbl(0)) Then
  loc_17950CE:         var_110 = CVar(CLng(var_92)) 'Long
  loc_17950D6:         var_130 = CVar(CLng(3)) 'Long
  loc_1795117:         var_160 = CVar((var_A8 / Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1795127:         var_B0 = CSng(Format(var_160, "00.00"))
  loc_179513B:       End If
  loc_1795142:       var_B8 = (var_B8 + var_A8)
  loc_1795145:     End If
  loc_1795153:     Set var_F0 = Me.Txt
  loc_1795159:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_1B4, CDbl(0), var_B0, 1, 1)
  loc_1795161:     var_7F4 = var_F4.Text
  loc_1795173:     var_7F4 = Val(CStr(var_92))
  loc_1795184:     Set var_F8 = Me.Txt
  loc_179518A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C, var_1D0, var_7F4, var_130)
  loc_1795192:     var_110 = var_19C.Tag
  loc_179519E:     Set var_1A0 = Me.LblVPrefix
  loc_17951B7:     Set var_1EC = Me.Txt
  loc_17951BD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1F0, var_1FC, var_130)
  loc_17951C5:     var_110 = var_1F0.Text
  loc_17951D2:     var_7FC = Val(var_1FC)
  loc_17951E0:     Set var_208 = Me.Txt
  loc_17951E6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_20C, var_7FC)
  loc_17951F5:     Proc_6_7_F26918(var_160, CVar(var_20C))
  loc_1795208:     Set var_220 = Me.Txt
  loc_179520E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_224, var_274)
  loc_1795216:     var_A8 = var_224.Tag
  loc_179521F:     var_130 = CVar(CLng(var_92)) 'Long
  loc_1795227:     var_180 = CVar(CLng(&HE)) 'Long
  loc_1795246:     var_37C = CVar(CLng(var_92)) 'Long
  loc_179524E:     var_3E8 = CVar(CLng(3)) 'Long
  loc_1795277:     var_480 = CVar(CLng(var_92)) 'Long
  loc_179527F:     var_4EC = CVar(CLng(8)) 'Long
  loc_17952A8:     var_584 = CVar(CLng(var_92)) 'Long
  loc_17952B0:     var_5D0 = CVar(CLng(4)) 'Long
  loc_17952CF:     var_63C = CVar(CLng(var_92)) 'Long
  loc_17952D7:     var_67C = CVar(CLng(&HC)) 'Long
  loc_17952F6:     var_714 = CVar(CLng(var_92)) 'Long
  loc_17952FE:     var_774 = CVar(CLng(&HD)) 'Long
  loc_1795327:     var_850 = CVar(CLng(var_92)) 'Long
  loc_179532F:     var_870 = CVar(CLng(9)) 'Long
  loc_1795351:     var_81C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1795382:     var_824 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17953A0:     var_5B4 = Me.FGrid.TextMatrix)
  loc_17953BA:     Proc_6_7_F26918(var_69C, Date, var_5B4, CVar(CLng(2)), CVar(CLng(var_92)), var_824, CVar(CLng(&HB)), CVar(CLng(var_92)))
  loc_17953C3:     Set var_400 = Me.TopCtrl1
  loc_17953C9:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_81C)
  loc_1795404:     var_9D0 = CVar(CLng(var_92)) 'Long
  loc_179542E:     var_CC8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_179545F:     var_CD0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1795490:     var_6F4 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_92)), var_CD0, CVar(CLng(6)), CVar(CLng(var_92)), var_CC8, CVar(CLng(5)))
  loc_1795497:     var_B90 = CVar(CLng(var_92)) 'Long
  loc_179549F:     var_BB0 = CVar(CLng(&HA)) 'Long
  loc_17954C8:     var_C20 = CVar(CLng(var_92)) 'Long
  loc_17954D0:     var_C40 = CVar(CLng(&H11)) 'Long
  loc_179550D:     var_198 = "Insert Into POrder1(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,PartyCode,ItemCode," & "Qty,Rate,Unit,IndentDocId,IndentSno,"
  loc_179551B:     var_1B0 = var_198 & "Amount,Total,Specification,U_Name,U_EntDt,U_AE,ConvRatio,WtQty,WtUnit,LogSite_Code,TaxAmt,TaxStru) " & "Values("
  loc_1795522:     var_1B8 = var_1B0 & "'"
  loc_1795574:     var_200 = var_1B8 & var_1B4 & "'," & CStr(var_7F4) & ",'" & var_1D0 & "','" & var_1A0.Caption & "','" & MemVar_1F95070 & "'," & vbNullString
  loc_1795587:     var_170 = CVar(var_200 & CStr(var_7FC) & ",") 'String
  loc_17955A9:     var_258 = var_170 & var_160 & ",'" & CVar(var_274) & "','" 
  loc_17955E5:     var_340 = var_258 & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1795621:     var_490 = var_340 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1795679:     var_64C = var_490 & "," & vbNullString & CVar(var_81C) & "," & CVar(var_824) & ",'" & CVar(CStr(var_5B4)) & "','" & CVar(MemVar_1F950C8) 
  loc_17956CA:     var_AA0 = var_64C & "'," & var_69C & ",'" & IIf((CStr(var_6DC) = "Add"), "A", "E") & "'," & CVar(var_CC8) & "," & CVar(var_CD0) & ",'" 
  loc_179570F:     var_C80 = var_AA0 & CVar(var_6F4) & "','" & CVar(MemVar_1F95078) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1795726:     unk_5031B5.Execute CStr(var_C80 & "')"), var_CC0, -1
  loc_179584A:     var_110 = CVar(CLng(var_92)) 'Long
  loc_1795852:     var_130 = CVar(CLng(&HC)) 'Long
  loc_1795871:     var_180 = CVar(CLng(var_92)) 'Long
  loc_1795879:     var_2E4 = CVar(CLng(&HD)) 'Long
  loc_1795882:     Set var_F4 = Me.FGrid
  loc_1795888:     var_160 = var_F4.TextMatrix)
  loc_17958BD:     var_1AC = "Update Indent1 Set ClearYN='Y' Where Docid='" & CStr(Me.FGrid.TextMatrix)) & "' and Sno="
  loc_17958D2:     unk_5031B5.Execute var_1AC & CStr(Val(CStr(var_160))), var_170, -1
  loc_17958F8:   End If
  loc_17958FB: Next var_82C 'Integer
  loc_1795904: Set var_F0 = Me.TopCtrl1
  loc_179590A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1795923: If (CStr() = "Add") Then
  loc_179593A:   var_FC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1795960:   Set var_F0 = Me.Txt
  loc_1795966:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F4, var_1AC, var_FC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_179596E:   var_238 = var_F4.Tag
  loc_1795977:   var_1B4 = -1 & var_1AC
  loc_179597E:   var_170 = CVar(var_1AC & CStr(Val(CStr(var_160))) & "' And VP.Date_From<=") 'String
  loc_179598F:   Set var_F8 = Me.Txt
  loc_1795995:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_19C, var_1B8)
  loc_179599D:   var_170 = var_19C.Text
  loc_17959AB:   Proc_6_7_F26918(var_160, CVar(var_1B8))
  loc_17959CA:   unk_5031B5.Execute CStr(var_1A0 & var_160 & " Order By VP.Date_From DESC"), , 
  loc_17959D5:   Set var_88 = var_1A0
  loc_1795A19:   If (var_88.RecordCount > 0) Then
  loc_1795A2A:     Set var_F0 = Me.Txt
  loc_1795A30:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_F4)
  loc_1795A38:     var_FC = var_F4.Text
  loc_1795A45:     var_7F4 = Val(var_FC)
  loc_1795A4E:     var_110 = "V_Type"
  loc_1795A95:     Proc_6_7_F26918(var_238, CVar(var_88.Fields.Item("Date_From")))
  loc_1795AC8:     var_1B4 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_7F4) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1795AF0:     var_1BC = CStr(CVar(var_1B4 & MemVar_1F95078 & "') and V_Type='") & var_88.Fields.Item(var_110).Value & "' and Date_From=" & var_238)
  loc_1795AFA:     unk_5031B5.Execute var_1BC, var_258, -1
  loc_1795B34:   End If
  loc_1795B34: End If
  loc_1795B3A: unk_5031B5.CommitTrans
  loc_1795B4D: Set var_F0 = Me.Txt
  loc_1795B53: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_FC)
  loc_1795B5B: var_1F0 = var_F4.Text
  loc_1795B6F: var_8A = 0
  loc_1795B7D: Me.Requery -1
  loc_1795B8D: Me.Requery -1
  loc_1795BB7: Me.Find "SearchCode ='" & "SearchCode ='" & var_FC & "'", 0, 1
  loc_1795BC7: Set var_F0 = Me.TopCtrl1
  loc_1795BCD: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_110)
  loc_1795BE6: If (CStr(var_8A) = "Add") Then
  loc_1795BE9:   Call TopCtrl1_UnknownEvent_A()
  loc_1795BEE:   Exit Sub
  loc_1795BEF: End If
  loc_1795C12: Call Proc_89_61_EFE8DC(Proc_5_1_100EC1C("INI", Me), global_64)
  loc_1795C1D: Call Proc_89_58_16D1CE4(var_7F4)
  loc_1795C27: Set var_88 = Nothing
  loc_1795C2A: Exit Sub
  loc_1795C2B: ' Referenced from: 1793F58
  loc_1795C31: If (var_8A = &HFF) Then
  loc_1795C3A:   unk_5031B5.RollbackTrans
  loc_1795C3F: End If
  loc_1795C3F: Proc_6_60_E63754()
  loc_1795C44: Exit Sub
  loc_1795C45: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4E8F4
  'Data Table: 503198
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E7EB: Me.DGParty.Visible = False
  loc_F4E80A: If (Me.RecordCount > 0) Then
  loc_F4E849:   Set var_B4 = Me.Txt
  loc_F4E84F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4E857:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4E88A:   var_B0 = Me.Fields.Item("Name")
  loc_F4E8A9:   Set var_B4 = Me.Txt
  loc_F4E8AF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4E8B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4E8CD: End If
  loc_F4E8D8: Set var_A8 = Me.Txt
  loc_F4E8DE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(4))
  loc_F4E8E6: var_B0.SetFocus
  loc_F4E8F2: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'E74668
  'Data Table: 503198
  loc_E74626: Proc_6_153_E91D24(Me.DGParty, arg_14)
  loc_E7463D: Set var_8C = Me.FGPoint
  loc_E74659: Proc_6_138_106E830(Me.DGParty, global_68, CInt(4))
  loc_E74667: Exit Sub
End Sub

Private Sub Form_Load() '1220AFC
  'Data Table: 503198
  Dim var_88 As String
  Dim var_8C As String
  Dim unk_5031B5 As Connection15
  Dim Me As Variant
  Dim var_B0 As Variant
  Dim var_AC As Variant
  Dim var_B4 As Label
  loc_1220600: On Error Goto loc_1220AF5
  loc_122061E: var_8C = "select SmartPurchaseOrder,RateEditableInPO,DateEditableOnRequisitionYN from Enviro where LogSite_Code='" & MemVar_1F95078 & "'"
  loc_1220627: unk_5031B5.Execute var_8C, var_AC, -1
  loc_1220638: Set global_76 = var_B0
  loc_12206E4: var_B4 = Me.Fields.Item("DateEditableOnRequisitionYN")
  loc_12206FB: global_168 = Proc_6_38_E69628(CVar(var_B4), CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEditableInPO")))))
  loc_1220713: If (Proc_6_38_E69628(CVar(Me.Fields.Item("SmartPurchaseOrder"))) <> "Yes") Then
  loc_1220721:   Set var_B0 = Me.Label2
  loc_1220727:   Call 0.Method_Form_Load0 (2, var_B4)
  loc_122072F:   var_B4.Visible = False
  loc_1220746:   Set var_B0 = Me.Label1
  loc_122074C:   Call 0.Method_Form_Load0 (8, var_B4)
  loc_1220754:   var_B4.Visible = False
  loc_122076B:   Set var_B0 = Me.Label2
  loc_1220771:   Call 0.Method_Form_Load0 (3, var_B4)
  loc_1220779:   var_B4.Visible = False
  loc_1220790:   Set var_B0 = Me.Label1
  loc_1220796:   Call 0.Method_Form_Load0 (9, var_B4)
  loc_122079E:   var_B4.Visible = False
  loc_12207AA: End If
  loc_12207B4: Set global_52 = New 
  loc_12207C6: Me.CursorLocation = 3
  loc_12207F0: var_8C = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where Site_Code='" & MemVar_1F95070 & "' and LogSite_Code='"
  loc_1220808: Me.Open CVar(var_8C & MemVar_1F95078 & "' and Category in('PORD') Order by Description"), CVar(MemVar_1F95044), 3
  loc_1220822: CVarUnk
  loc_1220827: VerifyVarObj
  loc_122082D: Set var_B0 = Me.DGOrdType
  loc_1220833: LateIdStAd
  loc_122084B: Set global_68 = New 
  loc_122085D: Me.DGOrdType.CursorLocation = 3
  loc_1220880: var_88 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and  (Subgroup.LOGSITE_CODE='" & MemVar_1F95078
  loc_1220887: var_AC = CVar("Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where Site_Code='" & MemVar_1F95070 & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Supplier') Order by Name") 'String
  loc_1220891: Me.Open var_AC, CVar(MemVar_1F95044), 3
  loc_12208A5: CVarUnk
  loc_12208AA: VerifyVarObj
  loc_12208B0: Set var_B0 = Me.DGParty
  loc_12208B6: LateIdStAd
  loc_12208E0: Me.DGParty.CursorLocation = 3
  loc_122090A: var_8C = "SELECT I.Docid as code,LTrim(right(I.Docid,8)) as Name From Indent I where (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') and I.DOCID NOT In (Select INDENTDOCID From PORDER1 where Logsite_Code='"
  loc_1220922: Me.Open CVar(var_8C & MemVar_1F95078 & "') Order by I.DOCID"), CVar(MemVar_1F95044), 3
  loc_122093C: CVarUnk
  loc_1220941: VerifyVarObj
  loc_1220947: Set var_B0 = Me.DGIndent
  loc_122094D: LateIdStAd
  loc_1220977: Me.DGIndent.CursorLocation = 3
  loc_122099A: var_88 = "Select I.Code,I.Name as Name,I.Unit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as PurchRate,I.ConvRatio as COnvFactor ,I.IssueUnit as WtUnit ,P.Name as GrpName,IC.taxStru  From (ItemMast I Inner Join ItemGrp P on I.ItemGroup = P.Code) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_12209AB: Me.Open CVar(var_88 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_12209BF: CVarUnk
  loc_12209C4: VerifyVarObj
  loc_12209CA: Set var_B0 = Me.DGItem
  loc_12209D0: LateIdStAd
  loc_12209FA: Me.DGItem.CursorLocation = 3
  loc_1220A1D: var_88 = "Select P.DocID as SearchCode,P.DocID,P.Logsite_Code,P.Site_Code From POrder P Inner Join Voucher_Type V On (P.VType=V.V_Type and P.LogSite_Code=V.LogSite_Code) Where V.LogSite_Code='" & MemVar_1F95078
  loc_1220A2E: Me.Open CVar(var_88 & "' And V.NCat='PORD' Order By P.DocID"), CVar(MemVar_1F95044), 3
  loc_1220A45: Set var_B0 = Me
  loc_1220A5C: Call Proc_89_61_EFE8DC(Proc_5_1_100EC1C("INI", var_B0, New, 1, -1, var_B0, New, 1), -1, var_B0, New)
  loc_1220A67: Call Proc_89_50_1396310(1, -1)
  loc_1220A6C: Call Proc_89_58_16D1CE4(var_B0)
  loc_1220A80: Me.LblUser.Left = CDbl(14500)
  loc_1220A97: Me.LblUser.Top = CDbl(7800)
  loc_1220AAE: Me.LblLDt.Top = CDbl(8160)
  loc_1220AC5: Me.LblLDt.Left = CDbl(14500)
  loc_1220AD4: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1220AEC: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1220AF4: Exit Sub
  loc_1220AF5: ' Referenced from: 1220600
  loc_1220AF5: Proc_6_60_E63754(global_68)
  loc_1220AFA: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2448
  'Data Table: 503198
  Dim var_8C As Label
  loc_ED23A6: Call 0.Method_arg_50 (var_88)
  loc_ED23B8: Me.LblFormCaption.Caption = var_88
  loc_ED23D1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED23DD: Set var_A0 = Me.TopCtrl1
  loc_ED23E3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_ED23F0: Set var_8C = Me.TopCtrl1
  loc_ED23F6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_ED2410: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED242B: Call 0.Method_arg_100 (var_B8)
  loc_ED243D: Me.LblFormCaption.Width = var_B8
  loc_ED2445: Exit Sub
  loc_ED2446: Assert
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5F5C8
  'Data Table: 503198
  loc_E5F587: Set global_64 = Nothing
  loc_E5F599: Set global_52 = Nothing
  loc_E5F5AB: Set global_60 = Nothing
  loc_E5F5BD: Set global_56 = Nothing
  loc_E5F5C4: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E03160
  'Data Table: 503198
  loc_E03159: Call Form_Unload(&HFF)
  loc_E0315E: Exit Sub
End Sub

Private Sub Form_Activate() 'E5BE0C
  'Data Table: 503198
  loc_E5BDD4: Set var_88 = Me.TopCtrl1
  loc_E5BDDA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030000()
  loc_E5BDEF: If (CLng(CInt()) = &H2D) Then
  loc_E5BDF2:   Call TopCtrl1_UnknownEvent_15()
  loc_E5BDF7: End If
  loc_E5BE04: global_72 = CStr(0)
  loc_E5BE0B: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A928
  'Data Table: 503198
  loc_E2A900: On Error Goto loc_E2A920
  loc_E2A917: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A91F: Exit Sub
  loc_E2A920: ' Referenced from: E2A900
  loc_E2A920: Proc_6_60_E63754(Shift)
  loc_E2A925: Exit Sub
End Sub

Private Sub DGOrdType_UnknownEvent_9 'FD22B8
  'Data Table: 503198
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD20FC: On Error Goto loc_FD22B0
  loc_FD210E: Me.DGOrdType.Visible = False
  loc_FD212D: If (Me.RecordCount > 0) Then
  loc_FD217F:   Set var_CC = Me.Txt
  loc_FD2185:   Call 0.Method_DGOrdType_UnknownEvent_90 (CInt(CStr(Me.DGOrdType.Tag)), var_D0)
  loc_FD218D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD21E5:   Set var_B4 = Me.DGOrdType
  loc_FD21FC:   Set var_CC = Me.Txt
  loc_FD2202:   Call 0.Method_DGOrdType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD220A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD225E:   global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD226F: End If
  loc_FD228D: Set var_B0 = Me.Txt
  loc_FD2293: Call 0.Method_DGOrdType_UnknownEvent_90 (CInt(CStr(Me.DGOrdType.Tag)))
  loc_FD229B: var_B4.SetFocus
  loc_FD22AF: Exit Sub
  loc_FD22B0: ' Referenced from: FD20FC
  loc_FD22B0: Proc_6_60_E63754(var_B4)
  loc_FD22B5: Exit Sub
  loc_FD22B6: Set arg_2000 = 
End Sub

Private Sub DGOrdType_UnknownEvent_1F 'E74540
  'Data Table: 503198
  loc_E744FE: Proc_6_153_E91D24(Me.DGOrdType, arg_14)
  loc_E74515: Set var_8C = Me.FGPoint
  loc_E74531: Proc_6_138_106E830(Me.DGOrdType, global_52, CInt(1))
  loc_E7453F: Exit Sub
End Sub

Private Sub DGIndent_UnknownEvent_9 'F5BBD0
  'Data Table: 503198
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5BAB0: On Error Goto loc_F5BBCA
  loc_F5BAC2: Me.DGIndent.Visible = False
  loc_F5BAE1: If (Me.RecordCount > 0) Then
  loc_F5BB20:   Set var_B4 = Me.Txt
  loc_F5BB26:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F5BB2E:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5BB61:   var_B0 = Me.Fields.Item("Name")
  loc_F5BB80:   Set var_B4 = Me.Txt
  loc_F5BB86:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F5BB8E:   var_B8.Text = CStr(var_B0.Value)
  loc_F5BBA4: End If
  loc_F5BBAF: Set var_A8 = Me.Txt
  loc_F5BBB5: Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&H11))
  loc_F5BBBD: var_B0.SetFocus
  loc_F5BBC9: Exit Sub
  loc_F5BBCA: ' Referenced from: F5BAB0
  loc_F5BBCA: Proc_6_60_E63754(var_B0)
  loc_F5BBCF: Exit Sub
End Sub

Private Sub DGIndent_UnknownEvent_1F 'E745D4
  'Data Table: 503198
  loc_E74592: Proc_6_153_E91D24(Me.DGIndent, arg_14)
  loc_E745A9: Set var_8C = Me.FGPoint
  loc_E745C5: Proc_6_138_106E830(Me.DGIndent, global_56, CInt(&H11))
  loc_E745D3: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5524C
  'Data Table: 503198
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5516E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F55175:   Set var_A8 = Me.ListView
  loc_F551BF:   Set var_C0 = Me.Txt
  loc_F551C5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F551CD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F551ED: End If
  loc_F551F9: Me.FrmList.Visible = False
  loc_F55229: Set var_9C = Me.Txt
  loc_F5522F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F55237: var_A8.SetFocus
  loc_F5524B: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E98338
  'Data Table: 503198
  Dim Me As Recordset15
  loc_E982C6: On Error Goto loc_E9832F
  loc_E982CF: Me.MoveFirst
  loc_E982F9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E98321: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E98329: Call Proc_89_58_16D1CE4(0)
  loc_E9832E: Exit Sub
  loc_E9832F: ' Referenced from: E982C6
  loc_E9832F: Proc_6_60_E63754(var_A0)
  loc_E98334: Exit Sub
End Sub

Public Sub Proc_89_50_1396310
  'Data Table: 503198
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As DataGrid
  Dim var_C8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_1395A36: Set var_88 = Me.Txt
  loc_1395A3C: Call 0.Method_Proc_89_50_13963100 (CInt(1), var_8C)
  loc_1395A5B: Me.DGOrdType.Left = CVar(var_8C.Left)
  loc_1395A77: Set var_B4 = Me.Txt
  loc_1395A7D: Call 0.Method_Proc_89_50_13963100 (CInt(1), var_B8)
  loc_1395A98: Set var_88 = Me.Txt
  loc_1395A9E: Call 0.Method_Proc_89_50_13963100 (CInt(1), var_8C)
  loc_1395AB6: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1395AC5: Me.DGOrdType.Top = CVar(var_8C.Left)
  loc_1395AE9: Me.DGParty.Left = CVar(CDbl(0))
  loc_1395AFF: Set var_B4 = Me.Txt
  loc_1395B05: Call 0.Method_Proc_89_50_13963100 (CInt(4), var_B8)
  loc_1395B20: Set var_88 = Me.Txt
  loc_1395B26: Call 0.Method_Proc_89_50_13963100 (CInt(4), var_8C)
  loc_1395B3E: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1395B4D: Me.DGParty.Top = CVar(CDbl(0))
  loc_1395B72: Me.DGParty.Height = CVar(CDbl(5640))
  loc_1395B88: Set var_88 = Me.Txt
  loc_1395B8E: Call 0.Method_Proc_89_50_13963100 (CInt(&H11), var_8C)
  loc_1395BAD: Me.DGIndent.Left = CVar(var_8C.Left)
  loc_1395BC9: Set var_B4 = Me.Txt
  loc_1395BCF: Call 0.Method_Proc_89_50_13963100 (CInt(&H11), var_B8)
  loc_1395BEA: Set var_88 = Me.Txt
  loc_1395BF0: Call 0.Method_Proc_89_50_13963100 (CInt(&H11), var_8C)
  loc_1395C08: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1395C17: Me.DGIndent.Top = CVar(var_8C.Left)
  loc_1395C3C: Me.DGItem.Left = CVar(CDbl(1000))
  loc_1395C57: Me.DGItem.Top = CVar(CDbl(2575))
  loc_1395C6C: global_72 = CStr(0)
  loc_1395C77: Set var_C8 = Me.FGrid
  loc_1395C8E: global_80 = CStr(CLng(var_C8.BackColor))
  loc_1395CA4: var_C8.Width = CVar(CDbl(14020))
  loc_1395CB4: var_C8.Left = CVar(CDbl(&H64))
  loc_1395CC5: var_C8.Top = CVar(CDbl(1750))
  loc_1395CD6: var_C8.Cols = &H11
  loc_1395CE7: var_C8.Height = CVar(CDbl(5235))
  loc_1395CF8: var_C8.RowHeightMin = 0
  loc_1395D00: var_A0 = CVar(CLng(0)) 'Long
  loc_1395D05: var_E8 = &H190
  loc_1395D11: LateIdCallSt
  loc_1395D1C: var_A0 = CVar(CLng(&HE)) 'Long
  loc_1395D21: var_E8 = 0
  loc_1395D2D: LateIdCallSt
  loc_1395D35: var_A0 = 0
  loc_1395D41: var_E8 = CVar(CLng(1)) 'Long
  loc_1395D46: var_108 = "Item Name"
  loc_1395D4F: LateIdCallSt
  loc_1395D5A: var_A0 = CVar(CLng(1)) 'Long
  loc_1395D65: var_E8 = CVar(CInt(1)) 'Integer
  loc_1395D6C: LateIdCallSt
  loc_1395D77: var_A0 = CVar(CLng(1)) 'Long
  loc_1395D7C: var_E8 = &HC80
  loc_1395D88: LateIdCallSt
  loc_1395D90: var_A0 = 0
  loc_1395D9C: var_E8 = CVar(CLng(2)) 'Long
  loc_1395DA1: var_108 = "Specification"
  loc_1395DAA: LateIdCallSt
  loc_1395DB5: var_A0 = CVar(CLng(2)) 'Long
  loc_1395DC0: var_E8 = CVar(CInt(1)) 'Integer
  loc_1395DC7: LateIdCallSt
  loc_1395DD2: var_A0 = CVar(CLng(2)) 'Long
  loc_1395DD7: var_E8 = &H6EA
  loc_1395DE3: LateIdCallSt
  loc_1395DEB: var_A0 = 0
  loc_1395DF7: var_E8 = CVar(CLng(4)) 'Long
  loc_1395DFC: var_108 = "Unit"
  loc_1395E05: LateIdCallSt
  loc_1395E10: var_A0 = CVar(CLng(4)) 'Long
  loc_1395E1B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1395E22: LateIdCallSt
  loc_1395E2D: var_A0 = CVar(CLng(4)) 'Long
  loc_1395E38: var_E8 = CVar(CInt(1)) 'Integer
  loc_1395E3F: LateIdCallSt
  loc_1395E4A: var_A0 = CVar(CLng(4)) 'Long
  loc_1395E4F: var_E8 = &H384
  loc_1395E5B: LateIdCallSt
  loc_1395E63: var_A0 = 0
  loc_1395E6F: var_E8 = CVar(CLng(3)) 'Long
  loc_1395E74: var_108 = "Qty"
  loc_1395E7D: LateIdCallSt
  loc_1395E88: var_A0 = CVar(CLng(3)) 'Long
  loc_1395E93: var_E8 = CVar(CInt(7)) 'Integer
  loc_1395E9A: LateIdCallSt
  loc_1395EA5: var_A0 = CVar(CLng(3)) 'Long
  loc_1395EB0: var_E8 = CVar(CInt(7)) 'Integer
  loc_1395EB7: LateIdCallSt
  loc_1395EC2: var_A0 = CVar(CLng(3)) 'Long
  loc_1395EC7: var_E8 = &H3E8
  loc_1395ED3: LateIdCallSt
  loc_1395EDB: var_A0 = 0
  loc_1395EE7: var_E8 = CVar(CLng(5)) 'Long
  loc_1395EEC: var_108 = "Conv.Factor"
  loc_1395EF5: LateIdCallSt
  loc_1395F00: var_A0 = CVar(CLng(5)) 'Long
  loc_1395F0B: var_E8 = CVar(CInt(7)) 'Integer
  loc_1395F12: LateIdCallSt
  loc_1395F1D: var_A0 = CVar(CLng(5)) 'Long
  loc_1395F28: var_E8 = CVar(CInt(7)) 'Integer
  loc_1395F2F: LateIdCallSt
  loc_1395F3A: var_A0 = CVar(CLng(5)) 'Long
  loc_1395F3F: var_E8 = 0
  loc_1395F4B: LateIdCallSt
  loc_1395F53: var_A0 = 0
  loc_1395F5F: var_E8 = CVar(CLng(6)) 'Long
  loc_1395F64: var_108 = "Wt.Qty"
  loc_1395F6D: LateIdCallSt
  loc_1395F78: var_A0 = CVar(CLng(6)) 'Long
  loc_1395F83: var_E8 = CVar(CInt(7)) 'Integer
  loc_1395F8A: LateIdCallSt
  loc_1395F95: var_A0 = CVar(CLng(6)) 'Long
  loc_1395FA0: var_E8 = CVar(CInt(7)) 'Integer
  loc_1395FA7: LateIdCallSt
  loc_1395FB2: var_A0 = CVar(CLng(6)) 'Long
  loc_1395FB7: var_E8 = &H3E8
  loc_1395FC3: LateIdCallSt
  loc_1395FCB: var_A0 = 0
  loc_1395FD7: var_E8 = CVar(CLng(7)) 'Long
  loc_1395FDC: var_108 = "Wt.Unit"
  loc_1395FE5: LateIdCallSt
  loc_1395FF0: var_A0 = CVar(CLng(7)) 'Long
  loc_1395FFB: var_E8 = CVar(CInt(1)) 'Integer
  loc_1396002: LateIdCallSt
  loc_139600D: var_A0 = CVar(CLng(7)) 'Long
  loc_1396018: var_E8 = CVar(CInt(1)) 'Integer
  loc_139601F: LateIdCallSt
  loc_139602A: var_A0 = CVar(CLng(7)) 'Long
  loc_139602F: var_E8 = &H384
  loc_139603B: LateIdCallSt
  loc_1396043: var_A0 = 0
  loc_139604F: var_E8 = CVar(CLng(8)) 'Long
  loc_1396054: var_108 = "Rate"
  loc_139605D: LateIdCallSt
  loc_1396068: var_A0 = CVar(CLng(8)) 'Long
  loc_1396073: var_E8 = CVar(CInt(7)) 'Integer
  loc_139607A: LateIdCallSt
  loc_1396085: var_A0 = CVar(CLng(8)) 'Long
  loc_1396090: var_E8 = CVar(CInt(7)) 'Integer
  loc_1396097: LateIdCallSt
  loc_13960A2: var_A0 = CVar(CLng(8)) 'Long
  loc_13960A7: var_E8 = &H384
  loc_13960B3: LateIdCallSt
  loc_13960BB: var_A0 = 0
  loc_13960C7: var_E8 = CVar(CLng(&HA)) 'Long
  loc_13960CC: var_108 = "Tax Amt."
  loc_13960D5: LateIdCallSt
  loc_13960E0: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13960EB: var_E8 = CVar(CInt(7)) 'Integer
  loc_13960F2: LateIdCallSt
  loc_13960FD: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1396108: var_E8 = CVar(CInt(7)) 'Integer
  loc_139610F: LateIdCallSt
  loc_139611A: var_A0 = CVar(CLng(&HA)) 'Long
  loc_139611F: var_E8 = &H384
  loc_139612B: LateIdCallSt
  loc_1396133: var_A0 = 0
  loc_139613F: var_E8 = CVar(CLng(9)) 'Long
  loc_1396144: var_108 = "Goods Amt."
  loc_139614D: LateIdCallSt
  loc_1396158: var_A0 = CVar(CLng(9)) 'Long
  loc_1396163: var_E8 = CVar(CInt(7)) 'Integer
  loc_139616A: LateIdCallSt
  loc_1396175: var_A0 = CVar(CLng(9)) 'Long
  loc_1396180: var_E8 = CVar(CInt(7)) 'Integer
  loc_1396187: LateIdCallSt
  loc_1396192: var_A0 = CVar(CLng(9)) 'Long
  loc_1396197: var_E8 = &H5DC
  loc_13961A3: LateIdCallSt
  loc_13961AB: var_A0 = 0
  loc_13961B7: var_E8 = CVar(CLng(&HB)) 'Long
  loc_13961BC: var_108 = "Total"
  loc_13961C5: LateIdCallSt
  loc_13961D0: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13961DB: var_E8 = CVar(CInt(7)) 'Integer
  loc_13961E2: LateIdCallSt
  loc_13961ED: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13961F8: var_E8 = CVar(CInt(7)) 'Integer
  loc_13961FF: LateIdCallSt
  loc_139620A: var_A0 = CVar(CLng(&HB)) 'Long
  loc_139620F: var_E8 = &H44C
  loc_139621B: LateIdCallSt
  loc_1396226: var_A0 = CVar(CLng(&HC)) 'Long
  loc_139622B: var_E8 = 0
  loc_1396237: LateIdCallSt
  loc_1396242: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1396247: var_E8 = 0
  loc_1396253: LateIdCallSt
  loc_139625E: var_A0 = CVar(CLng(&HF)) 'Long
  loc_1396263: var_E8 = 0
  loc_139626F: LateIdCallSt
  loc_139627A: var_A0 = CVar(CLng(&H10)) 'Long
  loc_139627F: var_E8 = 0
  loc_139628B: LateIdCallSt
  loc_1396296: var_A0 = CVar(CLng(&H11)) 'Long
  loc_139629B: var_E8 = 0
  loc_13962A7: LateIdCallSt
  loc_13962B1: Set var_C8 = Nothing 
  loc_13962B9: Set var_11C = Me.FGCat
  loc_13962D0: global_80 = CStr(CLng(var_11C.BackColor))
  loc_13962DD: var_A0 = CVar(CLng(3)) 'Long
  loc_13962E2: var_E8 = &H7D0
  loc_13962EE: LateIdCallSt
  loc_1396302: var_11C.Cols = 7
  loc_1396309: Set var_11C = Nothing 
  loc_139630D: Exit Sub
End Sub

Public Sub Proc_89_51_1011914
  'Data Table: 503198
  Dim unk_5031B5 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_120 As Variant
  loc_1011743: unk_5031B5.Execute "Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock Where Name='Purchase Order Entry' ", var_AC, -1
  loc_101174E: Set var_8C = var_B0
  loc_101176B: If (var_8C.RecordCount > 0) Then
  loc_1011788:   var_B8 = var_8C.Fields.Item("SDate")
  loc_10117EE:   If CBool((var_B8.Value <> vbNullString) And (var_8C.Fields.Item("EDate").Value <> vbNullString)) Then
  loc_10117FF:     Set var_B0 = Me.Txt
  loc_1011805:     Call 0.Method_Proc_89_51_10119140 (CInt(3), var_B8, var_134)
  loc_101180D:     var_B0 = var_B8.Text
  loc_1011858:     Set var_138 = Me.Txt
  loc_101185E:     Call 0.Method_Proc_89_51_10119140 (CInt(3), var_13C, var_140)
  loc_1011866:     (CDate(CDate(var_134)) >= var_8C.Fields.Item("SDate").Value) = var_13C.Text
  loc_1011897:     var_100 = var_8C.Fields.Item("EDate").Value
  loc_101189F:     var_120 = (CDate(CDate(var_140)) <= var_100)
  loc_10118CE:     If CBool(Not &HFF And var_120) Then
  loc_10118F2:       MsgBox("Date Locked!", &H40, "Date Validation", var_100, var_120)
  loc_1011907:       Proc_89_51_1011914 = 0
  loc_101190D:     End If
  loc_101190D:   End If
  loc_101190D: End If
  loc_101190D: Proc_89_51_1011914 = 
End Sub

Public Sub Proc_89_52_E40A40
  'Data Table: 503198
  loc_E40A1C: Set var_88 = Me.TopCtrl1
  loc_E40A22: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E40A3B: If (CStr() = "Browse") Then
  loc_E40A3E:   Exit Sub
  loc_E40A3F: End If
  loc_E40A3F: Exit Sub
End Sub

Public Sub Proc_89_53_1536F14(arg_C) '1536F14
  'Data Table: 503198
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_138 As Variant
  Dim var_128 As Variant
  Dim var_B4 As String
  Dim var_14C As Variant
  Dim var_13C As MSHFlexGrid
  Dim var_16C As Variant
  Dim var_170 As String
  Dim var_174 As MSHFlexGrid
  Dim var_184 As Variant
  Dim var_88 As Integer
  loc_1535F70: If (arg_C = 0) Then
  loc_1535F86:   var_A4 = CLng(Me.FGrid.Col)
  loc_1535F96:   If (var_A4 = CLng(1)) Then
  loc_1535FB9:     var_AA = Me.EOF
  loc_1535FE7:     Set var_90 = Me.TxtGrid
  loc_1535FED:     Call 0.Method_Proc_89_53_1536F140 (arg_C, var_B0, var_B4)
  loc_1535FF5:     ((Me.RecordCount = 0) Or ((var_AA = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_153600D:     If (var_A4 Or (var_B4 = vbNullString)) Then
  loc_1536023:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153602B:       var_E4 = CVar(CLng(1)) 'Long
  loc_1536030:       var_104 = vbNullString
  loc_153603A:       Set var_B0 = Me.FGrid
  loc_1536040:       LateIdCallSt
  loc_1536065:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153606D:       var_E4 = CVar(CLng(&HE)) 'Long
  loc_1536072:       var_104 = vbNullString
  loc_153607C:       Set var_B0 = Me.FGrid
  loc_1536082:       LateIdCallSt
  loc_15360A7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15360AF:       var_E4 = CVar(CLng(4)) 'Long
  loc_15360B4:       var_104 = vbNullString
  loc_15360BE:       Set var_B0 = Me.FGrid
  loc_15360C4:       LateIdCallSt
  loc_15360E9:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15360F1:       var_E4 = CVar(CLng(8)) 'Long
  loc_15360F6:       var_104 = vbNullString
  loc_1536100:       Set var_B0 = Me.FGrid
  loc_1536106:       LateIdCallSt
  loc_153612B:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1536133:       var_E4 = CVar(CLng(7)) 'Long
  loc_1536138:       var_104 = vbNullString
  loc_1536142:       Set var_B0 = Me.FGrid
  loc_1536148:       LateIdCallSt
  loc_153616D:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1536175:       var_E4 = CVar(CLng(5)) 'Long
  loc_153617A:       var_104 = vbNullString
  loc_1536184:       Set var_B0 = Me.FGrid
  loc_153618A:       LateIdCallSt
  loc_15361AF:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15361B7:       var_E4 = CVar(CLng(6)) 'Long
  loc_15361BC:       var_104 = vbNullString
  loc_15361C6:       Set var_B0 = Me.FGrid
  loc_15361CC:       LateIdCallSt
  loc_15361F1:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15361F9:       var_E4 = CVar(CLng(&H11)) 'Long
  loc_15361FE:       var_104 = vbNullString
  loc_1536208:       Set var_B0 = Me.FGrid
  loc_153620E:       LateIdCallSt
  loc_1536223:     Else
  loc_1536226:       Call Proc_89_57_1057874(var_AA, var_B0, var_104, var_E4, var_C4, var_B0, var_104, var_E4)
  loc_1536231:       If (var_AA = 0) Then
  loc_1536239:         Proc_89_53_1536F14 = 0
  loc_153623F:       End If
  loc_1536252:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153625A:       var_F4 = CVar(CLng(1)) 'Long
  loc_153628D:       var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1536295:       Set var_13C = Me.FGrid
  loc_153629B:       LateIdCallSt
  loc_15362CA:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15362D2:       var_F4 = CVar(CLng(&HE)) 'Long
  loc_1536305:       var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_153630D:       Set var_13C = Me.FGrid
  loc_1536313:       LateIdCallSt
  loc_1536348:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1536350:       var_E4 = CVar(CLng(&HE)) 'Long
  loc_153636A:       var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1536388:       var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1536390:       var_14C = CVar(CLng(&HE)) 'Long
  loc_15363AA:       var_170 = CStr(Me.FGrid.TextMatrix))
  loc_1536415:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HE)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_153642B:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1536433:         var_F4 = CVar(CLng(4)) 'Long
  loc_1536466:         var_138 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_153646E:         Set var_13C = Me.FGrid
  loc_1536474:         LateIdCallSt
  loc_15364C2:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15364CA:         var_104 = CVar(CLng(8)) 'Long
  loc_15364F7:         var_184 = CVar(CStr(Format(CVar(Me.Fields.Item("PurchRate")), "0.00"))) 'String
  loc_15364FF:         Set var_13C = Me.FGrid
  loc_1536505:         LateIdCallSt
  loc_1536536:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153653E:         var_F4 = CVar(CLng(7)) 'Long
  loc_1536571:         var_138 = CVar(CStr(Me.Fields.Item("WtUnit").Value)) 'String
  loc_1536579:         Set var_13C = Me.FGrid
  loc_153657F:         LateIdCallSt
  loc_15365AE:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15365B6:         var_E4 = CVar(CLng(6)) 'Long
  loc_15365BF:         var_128 = CVar(CStr(0)) 'String
  loc_15365C7:         Set var_B0 = Me.FGrid
  loc_15365CD:         LateIdCallSt
  loc_1536615:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_153661D:         var_104 = CVar(CLng(5)) 'Long
  loc_1536658:         LateIdCallSt
  loc_15366C1:         var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("COnvFactor")), "0.00"))), 1, 1)) 'String
  loc_15366C9:         Set var_13C = Me.FGrid
  loc_15366CF:         LateIdCallSt
  loc_15366E9:       End If
  loc_15366E9:     End If
  loc_1536704:     var_E4 = CVar(CLng(1)) 'Long
  loc_153670D:     Set var_B0 = Me.FGrid
  loc_153671E:     var_138 = CVar(CStr(var_B0.TextMatrix))) 'String
  loc_1536724:     var_16C = Trim(var_138)
  loc_153672C:     var_104 = vbNullString
  loc_1536746:     If (var_16C = var_104) Then
  loc_153674F:       Call 0.Method_arg_50 (var_B4, var_E4, CVar(CLng(Me.FGrid.Row)), var_13C, var_138, var_104)
  loc_1536770:       MsgBox("Item Required", &H40, CVar(var_B4), var_138, var_16C)
  loc_1536785:       Proc_89_53_1536F14 = 0
  loc_153678B:     End If
  loc_1536799:     Me.FGrid.Redraw = True
  loc_15367AA:     If (global_148 = 1) Then
  loc_15367C0:       Me.FGrid.Rows = 1
  loc_15367E6:       var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_E4, var_B0))) 'String
  loc_15367EE:       Set var_B0 = Me.FGrid
  loc_153681B:       Me.FGrid.FixedRows = 1
  loc_1536823:     End If
  loc_153682E:     If (global_84 = "Yes") Then
  loc_1536844:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1536892:       Call Proc_89_55_138C68C(CStr(Me.FGrid.TextMatrix)), var_170, CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), Me.FGrid.TextMatrix), CVar(CLng(&HE)))
  loc_153689A:       var_16C = CVar(var_170) 'String
  loc_15368A2:       Set var_13C = Me.FGrid
  loc_15368A8:       LateIdCallSt
  loc_15368C9:     End If
  loc_15368DC:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15368ED:     Set var_B0 = Me.FGrid
  loc_15368F3:     var_128 = var_B0.TextMatrix)
  loc_1536923:     Set var_13C = Me.FGrid
  loc_1536929:     var_16C = var_13C.TextMatrix)
  loc_1536967:     var_88 = Proc_96_27_11F256C(CStr(var_128), Val(CStr(var_16C)), MemVar_1F95070, MemVar_1F95078 & "PURC", global_88, Val(CStr(var_16C)), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_1536999:     Me.LblCurStockStr.Caption = global_88
  loc_15369A1:     Call Proc_89_54_1141F94(var_88, var_128, CVar(CLng(&HE)), var_C4, var_13C)
  loc_15369A9:   Else
  loc_15369B0:     If (var_A4 = CLng(3)) Then
  loc_15369BD:       Set var_90 = Me.TxtGrid
  loc_15369C3:       Call 0.Method_Proc_89_53_1536F140 (arg_C, var_B0, var_16C)
  loc_15369DB:       If Not(IsNumeric(CVar(var_B0))) Then
  loc_15369E2:         var_B4 = CStr(0)
  loc_15369EF:         Set var_90 = Me.TxtGrid
  loc_15369F5:         Call 0.Method_Proc_89_53_1536F140 (arg_C, var_B0, var_B4)
  loc_15369FD:         var_B0.Text = var_C4
  loc_1536A0C:       End If
  loc_1536A19:       Set var_90 = Me.TxtGrid
  loc_1536A1F:       Call 0.Method_Proc_89_53_1536F140 (arg_C, var_B0, var_B4)
  loc_1536A27:       FGrid.DispID_10000 = var_B0.Text
  loc_1536A36:       var_16C = Me.FGrid.Row
  loc_1536A3F:       var_D4 = CVar(CLng(var_16C)) 'Long
  loc_1536A57:       var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1536A7A:       var_138 = Format(CVar(var_B4), "0.000")
  loc_1536A91:       LateIdCallSt
  loc_1536AEA:       var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1536B08:       If (CDbl(Val(var_B4)) = CDbl(0)) Then
  loc_1536B11:         Call 0.Method_arg_50 (var_B4, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(var_138)))
  loc_1536B32:         MsgBox("Quantity Required", &H40, CVar(var_B4), var_138, var_16C)
  loc_1536B47:         Proc_89_53_1536F14 = 0
  loc_1536B4D:       End If
  loc_1536B58:       If (global_84 = "Yes") Then
  loc_1536B6E:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1536BBC:         Call Proc_89_55_138C68C(CStr(Me.FGrid.TextMatrix)), var_170, CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), Me.FGrid.TextMatrix), CVar(CLng(&HE)))
  loc_1536BC4:         var_16C = CVar(var_170) 'String
  loc_1536BCC:         Set var_13C = Me.FGrid
  loc_1536BD2:         LateIdCallSt
  loc_1536BF3:       End If
  loc_1536C06:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1536C17:       Set var_B0 = Me.FGrid
  loc_1536C1D:       var_128 = var_B0.TextMatrix)
  loc_1536C4D:       Set var_13C = Me.FGrid
  loc_1536C53:       var_16C = var_13C.TextMatrix)
  loc_1536C91:       var_88 = Proc_96_27_11F256C(CStr(var_128), Val(CStr(var_16C)), MemVar_1F95070, MemVar_1F95078 & "PURC", global_88, Val(CStr(var_16C)), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_1536CC3:       Me.LblCurStockStr.Caption = global_88
  loc_1536CCB:       Call Proc_89_54_1141F94(var_88, var_128, CVar(CLng(&HE)), var_C4, var_13C)
  loc_1536CD3:     Else
  loc_1536CDA:       If (var_A4 = CLng(8)) Then
  loc_1536CE7:         Set var_90 = Me.TxtGrid
  loc_1536CED:         Call 0.Method_Proc_89_53_1536F140 (arg_C, var_B0, var_16C)
  loc_1536D05:         If Not(IsNumeric(CVar(var_B0))) Then
  loc_1536D0C:           var_B4 = CStr(0)
  loc_1536D19:           Set var_90 = Me.TxtGrid
  loc_1536D1F:           Call 0.Method_Proc_89_53_1536F140 (arg_C, var_B0, var_B4)
  loc_1536D27:           var_B0.Text = var_C4
  loc_1536D36:         End If
  loc_1536D43:         Set var_90 = Me.TxtGrid
  loc_1536D49:         Call 0.Method_Proc_89_53_1536F140 (arg_C, var_B0, var_B4)
  loc_1536D51:         1 = var_B0.Text
  loc_1536D60:         var_16C = Me.FGrid.Row
  loc_1536D69:         var_D4 = CVar(CLng(var_16C)) 'Long
  loc_1536D81:         var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1536DA4:         var_138 = Format(CVar(var_B4), "0.00")
  loc_1536DBB:         LateIdCallSt
  loc_1536E03:         Set var_B0 = Me.FGrid
  loc_1536E14:         var_B4 = CStr(var_B0.TextMatrix))
  loc_1536E32:         If (CDbl(Val(var_B4)) = CDbl(0)) Then
  loc_1536E3B:           Call 0.Method_arg_50 (var_B4, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(var_138)))
  loc_1536E5C:           MsgBox("Rate Required", &H40, CVar(var_B4), var_138, var_16C)
  loc_1536E71:           Proc_89_53_1536F14 = 0
  loc_1536E77:         End If
  loc_1536E77:         Call Proc_89_54_1141F94(1, 1, var_F4)
  loc_1536E7F:       Else
  loc_1536E86:         If (var_A4 = CLng(2)) Then
  loc_1536E9C:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1536EC5:           Set var_90 = Me.TxtGrid
  loc_1536ECB:           Call 0.Method_Proc_89_53_1536F140 (0, var_B0, var_B4, CVar(CLng(Me.FGrid.Col)))
  loc_1536ED3:           var_C4 = var_B0.Text
  loc_1536EDB:           var_138 = CVar(var_B4) 'String
  loc_1536EE3:           Set var_174 = Me.FGrid
  loc_1536EE9:           LateIdCallSt
  loc_1536F07:         End If
  loc_1536F07:       End If
  loc_1536F07:     End If
  loc_1536F07:   End If
  loc_1536F07: End If
  loc_1536F0C: Proc_89_53_1536F14 = &HFF
End Sub

Public Sub Proc_89_54_1141F94
  'Data Table: 503198
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_168 As Variant
  Dim var_170 As MSHFlexGrid
  Dim var_1B0 As Variant
  Dim var_248 As Double
  Dim var_1E8 As Variant
  Dim var_218 As Variant
  loc_1141C4B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141C53: var_C8 = CVar(CLng(&H11)) 'Long
  loc_1141C94: var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141C9C: var_144 = CVar(CLng(8)) 'Long
  loc_1141CFE: var_248 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1141D42: Call Proc_89_65_171DD70(CStr(Me.FGrid.TextMatrix)), CInt(CLng(Me.FGrid.Row)), CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_248)), "0.00")), 1, 1, var_248, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_1141D8B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141D93: var_C8 = CVar(CLng(8)) 'Long
  loc_1141DCB: var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141DD3: var_144 = CVar(CLng(3)) 'Long
  loc_1141E0B: var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141E13: var_1E8 = CVar(CLng(9)) 'Long
  loc_1141E44: var_218 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1141E4C: Set var_170 = Me.FGrid
  loc_1141E52: LateIdCallSt
  loc_1141E98: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141EA0: var_C8 = CVar(CLng(9)) 'Long
  loc_1141ED8: var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141EE0: var_144 = CVar(CLng(&HA)) 'Long
  loc_1141F18: var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1141F20: var_1E8 = CVar(CLng(&HB)) 'Long
  loc_1141F41: var_168 = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1141F5F: LateIdCallSt
  loc_1141F92: Exit Sub
  loc_1141F93: var_170(var_218) = 1
End Sub

Public Sub Proc_89_55_138C68C(arg_C) '138C68C
  'Data Table: 503198
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_C4 As String
  Dim unk_5031B5 As Connection15
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As String
  Dim var_1F4 As Variant
  Dim var_90 As Recordset15
  Dim var_94 As Recordset15
  Dim var_F0 As Variant
  Dim var_EC As Variant
  Dim var_96 As Integer
  Dim var_104 As Variant
  Dim var_230 As Double
  Dim var_8C As Recordset15
  loc_138BE49: var_A0 = "Select Distinct I.Name As ItemName, " & "I.MaxStock/I.ConvRatio as MaxStock,I.MinStock/I.ConvRatio as MinStock " & "From ItemMast I Where  "
  loc_138BE7D: var_C4 = var_A0 & "I.LogSite_Code='" & Proc_6_45_EADFB8(MemVar_1F95078) & "' and  " & "I.Code='" & arg_C & "' And I.ItemType='Store' " & "And I.RestCode = '"
  loc_138BE94: unk_5031B5.Execute var_C4 & MemVar_1F95078 & "PURC' Order By Name", var_EC, -1
  loc_138BE9F: Set var_8C = var_F0
  loc_138BED9: var_9C = "SELECT isnull(Sum(S.RecdQty),0) AS Qty FROM ((Stock S iNNER Join ItemMast I On S.Item=I.Code And I.ItemType='Store') " & "Inner Join Voucher_type VT On (S.VType=VT.V_Type And S.LogSite_Code=VT.LogSite_Code)) Where S.LogSite_Code='"
  loc_138BEFF: Proc_6_7_F26918(var_104, Date, CVar(var_9C & MemVar_1F95078 & "' " & "and S.VDate < "), var_214)
  loc_138BF07: var_124 = -1 & var_104 
  loc_138BF43: var_1E4 = "And VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','KSREC','KMREC','BKREC') AND S.QtyRec>0 Group By S.Item HAVING Sum(S.QtyRec)>0"
  loc_138BF56: unk_5031B5.Execute CStr(var_124 & " And Item='" & CVar(arg_C) & "'" & "And S.GODOWNCODE ='" & CVar(MemVar_1F95078) & "PURC' " & var_1E4), var_F0, var_F0
  loc_138BF61: Set var_90 = var_F0
  loc_138BFA1: var_9C = "SELECT Sum(S.IssQty) AS Qty FROM ((Stock S Inner Join ItemMast I On S.Item=I.Code And I.ItemType='Store') " & "Inner Join Voucher_type VT On (S.VType=VT.V_Type And S.LogSite_Code=VT.LogSite_Code)) Where S.LogSite_Code='"
  loc_138BFC7: Proc_6_7_F26918(var_104, Date, CVar(var_9C & MemVar_1F95078 & "' and " & "S.VDate < "), var_214)
  loc_138BFCF: var_124 = -1 & var_104 
  loc_138C010: var_1F4 = var_124 & " And Item='" & CVar(arg_C) & "' " & " And S.GODOWNCODE = '" & CVar(MemVar_1F95078) & "PURC'  And " & "VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS','BKISS') AND S.QtyIss>0 Group By S.Item HAVING Sum(S.QtyIss)>0" 
  loc_138C01E: unk_5031B5.Execute CStr(var_1F4), var_F0, 2
  loc_138C029: Set var_94 = var_F0
  loc_138C07E: If ((var_90.RecordCount > 0) And (var_94.RecordCount > 0)) Then
  loc_138C0A0:   var_EC = CVar(var_90.Fields.Item("qty")) 'Address
  loc_138C0A7:   Proc_6_39_E7D3A0(var_104)
  loc_138C0D2:   Proc_6_39_E7D3A0(var_124, CVar(var_94.Fields.Item("qty")))
  loc_138C0F2:   var_134 = (var_104 - var_124)
  loc_138C112:   var_96 = CInt(Val(CStr(Format(var_124 & " And Item='", "0.00"))))
  loc_138C16D:   var_230 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_138C178:   var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C1A3:   Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("MaxStock")), "PURC'  And ", var_230, CVar(CLng(3)))
  loc_138C1C4:   If (CVar(CLng(Me.FGrid.Row)) > var_124) Then
  loc_138C1D0:     Call Proc_89_56_E8D404("&H8080FF", var_96, 1)
  loc_138C1DB:   Else
  loc_138C205:     var_104 = Me.FGrid.TextMatrix)
  loc_138C218:     var_230 = Val(CStr(var_104))
  loc_138C223:     var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C24E:     Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("MinStock")), "PURC'  And ", var_230)
  loc_138C26F:     If (CVar(CLng(3)) < var_124) Then
  loc_138C27B:       Call Proc_89_56_E8D404("&H80C0FF", CVar(CLng(Me.FGrid.Row)))
  loc_138C286:     Else
  loc_138C28F:       Call Proc_89_56_E8D404("&H80000005", 1)
  loc_138C297:     End If
  loc_138C297:   End If
  loc_138C29A: Else
  loc_138C2AE:   If (var_94.RecordCount <= 0) Then
  loc_138C2D7:     Proc_6_39_E7D3A0(var_104, CVar(var_90.Fields.Item("qty")))
  loc_138C2F7:     var_124 = Format(var_104, "0.00")
  loc_138C309:     var_96 = CInt(Val(CStr(var_124)))
  loc_138C35A:     var_230 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_138C365:     var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C390:     Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("MaxStock")), "PURC'  And ", var_230, CVar(CLng(3)))
  loc_138C3B1:     If (CVar(CLng(Me.FGrid.Row)) > var_124) Then
  loc_138C3BD:       Call Proc_89_56_E8D404("&H8080FF", var_96, 1)
  loc_138C3C8:     Else
  loc_138C3F2:       var_104 = Me.FGrid.TextMatrix)
  loc_138C405:       var_230 = Val(CStr(var_104))
  loc_138C410:       var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C43B:       Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("MinStock")), "PURC'  And ", var_230)
  loc_138C45C:       If (CVar(CLng(3)) < var_124) Then
  loc_138C468:         Call Proc_89_56_E8D404("&H80C0FF", CVar(CLng(Me.FGrid.Row)))
  loc_138C473:       Else
  loc_138C47C:         Call Proc_89_56_E8D404("&H80000005", 1)
  loc_138C484:       End If
  loc_138C484:     End If
  loc_138C487:   Else
  loc_138C49B:     If (var_90.RecordCount <= 0) Then
  loc_138C4C4:       Proc_6_39_E7D3A0(var_104, CVar(var_94.Fields.Item("qty")))
  loc_138C4E4:       var_124 = Format(var_104, "0.00")
  loc_138C4F7:       var_96 = CInt(-Val(CStr(var_124)))
  loc_138C548:       var_230 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_138C553:       var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C57E:       Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("MaxStock")), "PURC'  And ", var_230, CVar(CLng(3)))
  loc_138C59F:       If (CVar(CLng(Me.FGrid.Row)) > var_124) Then
  loc_138C5AB:         Call Proc_89_56_E8D404("&H8080FF", var_96, 1)
  loc_138C5B6:       Else
  loc_138C5C0:         var_EC = Me.FGrid.Row
  loc_138C5F3:         var_230 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_138C5FE:         var_1C4 = CVar((CDbl(var_96) + var_230)) 'Double
  loc_138C629:         Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("MinStock")), "PURC'  And ", var_230)
  loc_138C64A:         If (CVar(CLng(3)) < var_124) Then
  loc_138C656:           Call Proc_89_56_E8D404("&H80C0FF", CVar(CLng(var_EC)))
  loc_138C661:         Else
  loc_138C66A:           Call Proc_89_56_E8D404("&H80000005", 1)
  loc_138C672:         End If
  loc_138C672:       End If
  loc_138C675:     Else
  loc_138C67E:       Call Proc_89_56_E8D404("&H80000005")
  loc_138C686:     End If
  loc_138C686:   End If
  loc_138C686: End If
  loc_138C686: Proc_89_55_138C68C = var_EC
End Sub

Public Sub Proc_89_56_E8D404(arg_C) 'E8D404
  'Data Table: 503198
  Dim var_8C As MSHFlexGrid
  loc_E8D390: Set var_8C = Me.FGrid
  loc_E8D3AE: For var_A0 = 1 To CInt((CLng(var_8C.Cols) - 1)): var_86 = var_A0 'Integer
  loc_E8D3C8:   var_8C.Row = CVar(CLng(var_8C.RowSel))
  loc_E8D3DC:   var_8C.Col = CVar(CLng(var_86))
  loc_E8D3ED:   var_8C.CellBackColor = CVar(CLng(arg_C))
  loc_E8D3F5: Next var_A0 'Integer
  loc_E8D3FC: Set var_8C = Nothing 
  loc_E8D400: Exit Sub
End Sub

Public Sub Proc_89_57_1057874
  'Data Table: 503198
  Dim var_98 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_178 As Variant
  loc_1057647: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_105764C:   var_94 = 1 'Byte
  loc_1057650: End If
  loc_1057663: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10576A9: Set var_134 = Me.TxtGrid
  loc_10576AF: Call 0.Method_Proc_89_57_10578740 (0, var_138, Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))
  loc_10576D1: var_178 = (CVar(CLng(var_92)) + Ucase(Trim(CVar(var_138))))
  loc_10576D6: var_8C = CStr(var_178)
  loc_105771C: For var_17C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_17C 'Integer
  loc_1057740:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_1057743:     GoTo loc_105785F
  loc_1057746:   End If
  loc_105774A:   var_BC = CVar(CLng(var_88)) 'Long
  loc_1057774:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_105777F:   var_120 = Ucase(var_110)
  loc_105779E:   Set var_F0 = Me.FGrid
  loc_10577C8:   var_178 = (CVar(CLng(var_94)) + Ucase(Trim(CVar(CStr(var_F0.TextMatrix))))))
  loc_10577FD:   If ((var_8C = CStr(var_178)) And (CStr(var_178) <> vbNullString)) Then
  loc_1057821:     MsgBox("Duplicate Item Name & PartNo Not Allowed", &H40, "Validation", var_110, var_120)
  loc_105783A:     Set var_98 = Me.TxtGrid
  loc_1057840:     Call 0.Method_Proc_89_57_10578740 (0, var_F0, CVar(CLng(var_88)), var_120, CVar(CLng(var_92)))
  loc_1057848:     var_F0.SetFocus
  loc_1057859:     Proc_89_57_1057874 = 0
  loc_105785F:     ' Referenced from: 1057743
  loc_105785F:   End If
  loc_1057862: Next var_17C 'Integer
  loc_105786C: Proc_89_57_1057874 = &HFF
End Sub

Public Sub Proc_89_58_16D1CE4
  'Data Table: 503198
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_5031B5 As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_148 As Variant
  Dim var_11C As Variant
  Dim var_138 As String
  Dim var_19C As Fields15
  Dim var_1E4 As String
  Dim var_1F4 As Recordset15
  Dim var_134 As TextBox
  Dim var_8C As Recordset15
  Dim var_1F6 As Integer
  Dim var_1B0 As TextBox
  Dim var_90 As Integer
  Dim var_12C As Variant
  Dim var_158 As Variant
  Dim var_98 As Recordset15
  loc_16D02FC: On Error Goto loc_16D1CDE
  loc_16D0316: If (Me.RecordCount > 0) Then
  loc_16D0326:   Me.LblCurStockStr.Caption = vbNullString
  loc_16D0384:   unk_5031B5.Execute CStr("Select * From POrder Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_12C, -1
  loc_16D038F:   Set var_88 = var_130
  loc_16D03E3:   var_130 = var_88.Fields
  loc_16D044C:   var_198 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16D0491:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_16D050B:   var_134 = var_88.Fields.Item("U_AE")
  loc_16D0524:   var_12C = "entdt : "
  loc_16D0547:   var_158 = IIf((Proc_6_38_E69628(CVar(var_134)) = "E"), "Last Update : ", var_12C)
  loc_16D0554:   var_188 = "Created By : "
  loc_16D058B:   var_1B0 = var_88.Fields.Item("U_EntDt")
  loc_16D05A3:   var_1E4 = CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), var_188, var_158) & CVar(Proc_6_38_E69628(CVar(var_1B0))))
  loc_16D05B1:   Me.LblLDt.Caption = var_1E4
  loc_16D05EC:   Set var_1F4 = var_88 
  loc_16D0629:   Set var_130 = Me.Txt
  loc_16D062F:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(0), var_134)
  loc_16D0637:   var_134.Text = CStr(var_1F4.Fields.Item("DocID").Value)
  loc_16D0685:   Me.LblVPrefix.Caption = CStr(var_1F4.Fields.Item("vPrefix").Value)
  loc_16D06CA:   global_112 = CStr(var_1F4.Fields.Item("vPrefix").Value)
  loc_16D071A:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(1), var_134)
  loc_16D0722:   var_134.Tag = CStr(var_1F4.Fields.Item("vType").Value)
  loc_16D078B:   unk_5031B5.Execute CStr("Select Description,NCat From Voucher_Type Where V_Type='" & var_1F4.Fields.Item("vType").Value & "'"), var_12C, -1
  loc_16D0796:   Set var_8C = Me.Txt
  loc_16D07C4:   If (var_8C.RecordCount > 0) Then
  loc_16D07FD:     Set var_130 = Me.Txt
  loc_16D0803:     Call 0.Method_Proc_89_58_16D1CE40 (CInt(1), var_134)
  loc_16D080B:     var_134.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Description")))
  loc_16D0836:     var_B8 = var_8C.Fields.Item("NCat")
  loc_16D084D:     global_120 = Proc_6_38_E69628(CVar(var_B8))
  loc_16D085D:   Else
  loc_16D086B:     Set var_A4 = Me.Txt
  loc_16D0871:     Call 0.Method_Proc_89_58_16D1CE40 (CInt(1), var_B8)
  loc_16D0879:     var_B8.Text = vbNullString
  loc_16D088B:     global_120 = vbNullString
  loc_16D088F:   End If
  loc_16D08C8:   Set var_130 = Me.Txt
  loc_16D08CE:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(2), var_134)
  loc_16D08D6:   var_134.Text = CStr(var_1F4.Fields.Item("VNo").Value)
  loc_16D093E:   Set var_130 = Me.Txt
  loc_16D0944:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(3), var_134, CStr(Format(CVar(var_1F4.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_16D094C:   var_134.Text = 1
  loc_16D098E:   var_1F6 = IsNull(CVar(var_1F4.Fields.Item("PartyCode")))
  loc_16D09A0:   var_130 = var_1F4.Fields
  loc_16D09A8:   var_134 = var_130.Item("PartyCode")
  loc_16D09C9:   var_12C = IIf(var_1F6, vbNullString, CVar(var_134))
  loc_16D09E0:   Set var_19C = Me.Txt
  loc_16D09E6:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(4), var_1B0, CStr(var_12C))
  loc_16D09EE:   var_1B0.Tag = var_1F6
  loc_16D0A61:   unk_5031B5.Execute CStr("Select SG.Name From SubGroup SG Where SG.SubCode='" & var_1F4.Fields.Item("PartyCode").Value & "'"), var_12C, -1
  loc_16D0A6C:   Set var_8C = var_130
  loc_16D0A9A:   If (var_8C.RecordCount > 0) Then
  loc_16D0AB4:     var_B8 = var_8C.Fields.Item("Name")
  loc_16D0AD3:     Set var_130 = Me.Txt
  loc_16D0AD9:     Call 0.Method_Proc_89_58_16D1CE40 (CInt(4), var_134, Proc_6_38_E69628(CVar(var_B8), var_130))
  loc_16D0AE1:     var_134.Text = 1
  loc_16D0AF8:   Else
  loc_16D0B06:     Set var_A4 = Me.Txt
  loc_16D0B0C:     Call 0.Method_Proc_89_58_16D1CE40 (CInt(4), var_B8)
  loc_16D0B14:     var_B8.Text = vbNullString
  loc_16D0B20:   End If
  loc_16D0B48:   var_1F6 = IsNull(CVar(var_1F4.Fields.Item("Remark")))
  loc_16D0B62:   var_134 = var_1F4.Fields.Item("Remark")
  loc_16D0B9A:   Set var_19C = Me.Txt
  loc_16D0BA0:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(&HB), var_1B0, CStr(IIf(var_1F6, vbNullString, CVar(var_134))))
  loc_16D0BA8:   var_1B0.Text = var_1F6
  loc_16D0BE2:   var_B8 = var_1F4.Fields.Item("DispatchMode")
  loc_16D0BF2:   var_208 = var_B8.Value 'Variant
  loc_16D0C08:   If (var_208 = "RW") Then
  loc_16D0C19:     Set var_A4 = Me.Txt
  loc_16D0C1F:     Call 0.Method_Proc_89_58_16D1CE40 (CInt(5), var_B8)
  loc_16D0C27:     var_B8.Text = "Railway"
  loc_16D0C36:   Else
  loc_16D0C41:     If (var_208 = "VP") Then
  loc_16D0C52:       Set var_A4 = Me.Txt
  loc_16D0C58:       Call 0.Method_Proc_89_58_16D1CE40 (CInt(5), var_B8)
  loc_16D0C60:       var_B8.Text = "VPP"
  loc_16D0C6F:     Else
  loc_16D0C7A:       If (var_208 = "AM") Then
  loc_16D0C8B:         Set var_A4 = Me.Txt
  loc_16D0C91:         Call 0.Method_Proc_89_58_16D1CE40 (CInt(5), var_B8)
  loc_16D0C99:         var_B8.Text = "AIR Mail"
  loc_16D0CA8:       Else
  loc_16D0CB3:         If (var_208 = "TR") Then
  loc_16D0CC4:           Set var_A4 = Me.Txt
  loc_16D0CCA:           Call 0.Method_Proc_89_58_16D1CE40 (CInt(5), var_B8)
  loc_16D0CD2:           var_B8.Text = "Transport"
  loc_16D0CE1:         Else
  loc_16D0CEC:           If (var_208 = "PS") Then
  loc_16D0CFD:             Set var_A4 = Me.Txt
  loc_16D0D03:             Call 0.Method_Proc_89_58_16D1CE40 (CInt(5), var_B8)
  loc_16D0D0B:             var_B8.Text = "Personally"
  loc_16D0D1A:           Else
  loc_16D0D25:             If (var_208 = "PP") Then
  loc_16D0D36:               Set var_A4 = Me.Txt
  loc_16D0D3C:               Call 0.Method_Proc_89_58_16D1CE40 (CInt(5), var_B8)
  loc_16D0D44:               var_B8.Text = "Post Parcel"
  loc_16D0D53:             Else
  loc_16D0D5E:               If (var_208 = "CO") Then
  loc_16D0D6F:                 Set var_A4 = Me.Txt
  loc_16D0D75:                 Call 0.Method_Proc_89_58_16D1CE40 (CInt(5), var_B8)
  loc_16D0D7D:                 var_B8.Text = "Courier"
  loc_16D0D8C:               Else
  loc_16D0D97:                 If (var_208 = "CA") Then
  loc_16D0DA8:                   Set var_A4 = Me.Txt
  loc_16D0DAE:                   Call 0.Method_Proc_89_58_16D1CE40 (CInt(5), var_B8)
  loc_16D0DB6:                   var_B8.Text = "Cargo"
  loc_16D0DC2:                 End If
  loc_16D0DC2:               End If
  loc_16D0DC2:             End If
  loc_16D0DC2:           End If
  loc_16D0DC2:         End If
  loc_16D0DC2:       End If
  loc_16D0DC2:     End If
  loc_16D0DC2:   End If
  loc_16D0DF8:   Set var_130 = Me.Txt
  loc_16D0DFE:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(9), var_134)
  loc_16D0E06:   var_134.Text = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("DespatchThru")))
  loc_16D0E42:   var_1F6 = IsNull(CVar(var_1F4.Fields.Item("PaymentTerms")))
  loc_16D0E94:   Set var_19C = Me.Txt
  loc_16D0E9A:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(&HA), var_1B0, CStr(IIf(var_1F6, vbNullString, CVar(var_1F4.Fields.Item("PaymentTerms")))))
  loc_16D0EA2:   var_1B0.Text = var_1F6
  loc_16D0EEA:   var_1F6 = IsNull(CVar(var_1F4.Fields.Item("Prices")))
  loc_16D0F04:   var_134 = var_1F4.Fields.Item("Prices")
  loc_16D0F3C:   Set var_19C = Me.Txt
  loc_16D0F42:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(8), var_1B0, CStr(IIf(var_1F6, vbNullString, CVar(var_134))))
  loc_16D0F4A:   var_1B0.Text = var_1F6
  loc_16D0FBC:   Set var_130 = Me.Txt
  loc_16D0FC2:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(7), var_134, CStr(Format(CVar(var_1F4.Fields.Item("PackCharge")), "0.00")))
  loc_16D0FCA:   var_134.Text = 1
  loc_16D1036:   Set var_130 = Me.Txt
  loc_16D103C:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(6), var_134, CStr(Format(CVar(var_1F4.Fields.Item("ForwardCharges")), "0.00")), 1)
  loc_16D1044:   var_134.Text = 1
  loc_16D1094:   Set var_130 = Me.Txt
  loc_16D109A:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(&HC), var_134)
  loc_16D10A2:   var_134.Text = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("DeliverySch")), 1)
  loc_16D1108:   Set var_130 = Me.Txt
  loc_16D110E:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(&HD), var_134, CStr(Format(CVar(var_1F4.Fields.Item("DiscPer")), "0.00")))
  loc_16D1116:   var_134.Text = 1
  loc_16D1182:   Set var_130 = Me.Txt
  loc_16D1188:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(&HE), var_134, CStr(Format(CVar(var_1F4.Fields.Item("ExPer")), "0.00")), 1)
  loc_16D1190:   var_134.Text = 1
  loc_16D11FC:   Set var_130 = Me.Txt
  loc_16D1202:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(&HF), var_134, CStr(Format(CVar(var_1F4.Fields.Item("TaxPer")), "0.00")), 1)
  loc_16D120A:   var_134.Text = 1
  loc_16D127C:   Call 0.Method_Proc_89_58_16D1CE40 (CInt(&H10), var_134, CStr(Format(CVar(var_1F4.Fields.Item("STaxPer")), "0.00")), 1)
  loc_16D1284:   var_134.Text = 1
  loc_16D12A0:   Set var_1F4 = Nothing 
  loc_16D12B3:   Me.FGrid.Redraw = False
  loc_16D12CE:   Me.FGrid.Rows = 1
  loc_16D12D8:   var_90 = 1
  loc_16D12F6:   var_E8 = CVar("Select P1.*,I.Name As ItemName " & "From POrder1 P1 Left Join Itemmast I on P1.ItemCode=I.Code And I.ItemType='Store' " & "Where P1.DocID='") 'String
  loc_16D133D:   unk_5031B5.Execute CStr(var_E8 & Me.Fields.Item("DocID").Value & "' Order by SNo"), var_158, -1
  loc_16D1348:   Set var_88 = Me.Txt
  loc_16D136B:   var_9C = vbNullString
  loc_16D1382:   If (var_88.RecordCount > 0) Then
  loc_16D1385:     ' Referenced from: 16D1C06
  loc_16D1394:     If Not(var_88.EOF) Then
  loc_16D1397:       var_B4 = vbNullString
  loc_16D13A1:       Set var_A4 = Me.FGrid
  loc_16D13B6:       Set var_20C = Me.FGrid
  loc_16D13BD:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D13C5:       var_11C = CVar(CLng(0)) 'Long
  loc_16D13F5:       var_E8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16D13FC:       LateIdCallSt
  loc_16D1416:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D141E:       var_11C = CVar(CLng(&HE)) 'Long
  loc_16D144E:       var_E8 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_16D1455:       LateIdCallSt
  loc_16D14A4:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_90)), var_20C, var_E8, CVar(CLng(1)), CVar(CLng(var_90)))) 'String
  loc_16D14AB:       LateIdCallSt
  loc_16D14F6:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Specification")), CVar(CLng(2)), CVar(CLng(var_90)), var_20C, var_E8, var_20C)) 'String
  loc_16D14FD:       LateIdCallSt
  loc_16D1513:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D151B:       var_11C = CVar(CLng(4)) 'Long
  loc_16D154B:       var_E8 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_16D1552:       LateIdCallSt
  loc_16D1588:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D15A4:       var_E8 = "0.000"
  loc_16D15C4:       LateIdCallSt
  loc_16D1600:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("ConvRatio")), var_20C, CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), var_E8))), 1, 1, CVar(CLng(3)))
  loc_16D1609:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D1641:       LateIdCallSt
  loc_16D1692:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("WtUnit")), CVar(CLng(7)), CVar(CLng(var_90)), var_20C, CVar(CStr(Format(var_E8, "0.00"))), 1, 1)) 'String
  loc_16D1699:       LateIdCallSt
  loc_16D16D1:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("WTQty")), var_20C, var_E8, CVar(CLng(5)))
  loc_16D16DA:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D16E2:       var_148 = CVar(CLng(6)) 'Long
  loc_16D170B:       var_158 = CVar(CStr(Format(var_E8, "0.000"))) 'String
  loc_16D1712:       LateIdCallSt
  loc_16D174A:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D1766:       var_E8 = "0.00"
  loc_16D1786:       LateIdCallSt
  loc_16D17C2:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("TaxAmt")), var_20C, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), var_E8))), 1, 1, CVar(CLng(8)))
  loc_16D17CB:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D17D3:       var_148 = CVar(CLng(&HA)) 'Long
  loc_16D17FC:       var_158 = CVar(CStr(Format(var_E8, "0.00"))) 'String
  loc_16D1803:       LateIdCallSt
  loc_16D183B:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D1843:       var_148 = CVar(CLng(9)) 'Long
  loc_16D1870:       var_12C = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_16D1877:       LateIdCallSt
  loc_16D18AD:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_16D18B5:       var_148 = CVar(CLng(&HB)) 'Long
  loc_16D18D9:       var_108 = Format(CVar(var_88.Fields.Item("Total")), "0.00")
  loc_16D18E2:       var_12C = CVar(CStr(var_108)) 'String
  loc_16D18E9:       LateIdCallSt
  loc_16D1903:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D190B:       var_11C = CVar(CLng(&HC)) 'Long
  loc_16D193B:       var_E8 = CVar(CStr(var_88.Fields.Item("IndentDocID").Value)) 'String
  loc_16D1942:       LateIdCallSt
  loc_16D195C:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D1964:       var_11C = CVar(CLng(&HD)) 'Long
  loc_16D1994:       var_E8 = CVar(CStr(var_88.Fields.Item("IndentSno").Value)) 'String
  loc_16D199B:       LateIdCallSt
  loc_16D19BD:       var_11C = CVar(CLng(&H11)) 'Long
  loc_16D19EA:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxStru")), var_11C, CVar(CLng(var_90)), var_20C, var_E8, var_11C, CVar(CLng(var_90)))) 'String
  loc_16D19F1:       LateIdCallSt
  loc_16D1A3B:       var_10C = Proc_6_38_E69628(CVar(var_88.Fields.Item("IndentDocID")), "Select ClearYn from Indent1 where Docid='", var_188, -1, var_19C, var_20C, var_E8)
  loc_16D1A3F:       var_138 = var_20C & "Select P1.*,I.Name As ItemName " & "From POrder1 P1 Left Join Itemmast I on P1.ItemCode=I.Code And I.ItemType='Store' "
  loc_16D1A46:       var_12C = CVar(var_138 & "' and Sno=") 'String
  loc_16D1A4C:       var_D8 = "IndentSno"
  loc_16D1A60:       var_134 = var_88.Fields.Item(var_D8)
  loc_16D1A6F:       Proc_6_39_E7D3A0(var_108, CVar(var_134), var_12C, CVar(var_134))
  loc_16D1A85:       unk_5031B5.Execute CStr(var_11C & var_108), var_D8, var_20C
  loc_16D1A90:       Set var_98 = var_19C
  loc_16D1AC8:       If (var_98.RecordCount > 0) Then
  loc_16D1ACF:         var_D8 = CVar(CLng(var_90)) 'Long
  loc_16D1B04:         var_E8 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("ClearYN")), CVar(CLng(&HF)))) 'String
  loc_16D1B0B:         LateIdCallSt
  loc_16D1B1D:       End If
  loc_16D1B56:       Set var_130 = Me.Txt
  loc_16D1B5C:       Call 0.Method_Proc_89_58_16D1CE40 (CInt(&H11), var_134, CStr(var_88.Fields.Item("IndentDocID").Value), var_20C)
  loc_16D1B64:       var_134.Tag = var_E8
  loc_16D1BC7:       Set var_130 = Me.Txt
  loc_16D1BCD:       Call 0.Method_Proc_89_58_16D1CE40 (CInt(&H11), var_134, CStr(Trim(Right(CVar(var_88.Fields.Item("IndentDocID")), 8))))
  loc_16D1BD5:       var_134.Text = var_D8
  loc_16D1BF1:       Set var_20C = Nothing 
  loc_16D1BFB:       var_90 = (var_90 + 1)
  loc_16D1C01:       var_88.MoveNext
  loc_16D1C06:       GoTo loc_16D1385
  loc_16D1C09:     End If
  loc_16D1C1C:     Me.FGrid.FixedRows = 1
  loc_16D1C24:   End If
  loc_16D1C32:   Me.FGrid.Redraw = True
  loc_16D1C40:   If (var_90 = 1) Then
  loc_16D1C56:     Me.FGrid.Rows = 1
  loc_16D1C73:     var_E8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16D1C7B:     Set var_B8 = Me.FGrid
  loc_16D1CAA:     Me.FGrid.FixedRows = 1
  loc_16D1CB2:   End If
  loc_16D1CB5: Else
  loc_16D1CB5:   Call Proc_89_60_F53A90(FGrid.DispID_10000, var_E8)
  loc_16D1CBA: End If
  loc_16D1CBA: Call Proc_89_62_F6C558(var_90)
  loc_16D1CC4: Set var_88 = Nothing
  loc_16D1CCC: Set var_8C = Nothing
  loc_16D1CD4: Set var_98 = Nothing
  loc_16D1CDA: var_9C = vbNullString
  loc_16D1CDD: Exit Sub
  loc_16D1CDE: ' Referenced from: 16D02FC
  loc_16D1CDE: Proc_6_60_E63754(var_12C)
  loc_16D1CE3: Exit Sub
End Sub

Public Sub Proc_89_59_1130944
  'Data Table: 503198
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_5031B5 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_11305ED: Set var_9C = Me.TopCtrl1
  loc_11305F3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(&HFF)
  loc_11305FB: var_B0 = CStr()
  loc_113060C: If (var_B0 = "Add") Then
  loc_113063C:   Set var_9C = Me.Txt
  loc_1130642:   Call 0.Method_Proc_89_59_11309440 (CInt(0), var_B4, var_B0, "Select Count(*) From POrder Where DocID='", var_AC, -1)
  loc_1130663:   unk_5031B5.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_1130673:    = var_D4.Item()
  loc_113067B:    = var_E8.Value
  loc_11306A8:   If (var_B4.Text.Fields > 0) Then
  loc_11306B1:     Call 0.Method_arg_50 (var_B0)
  loc_11306D2:     MsgBox("Duplicate Order No.", &H40, CVar(var_B0), var_118, var_128)
  loc_11306E8:     Call Proc_89_64_111228C(MemVar_1F95044)
  loc_11306FB:     Set var_9C = Me.Txt
  loc_1130701:     Call 0.Method_Proc_89_59_11309440 (CInt(0), var_B4)
  loc_1130709:     var_B4.Text = var_B0
  loc_113071D:     Proc_89_59_1130944 = 0
  loc_1130723:   End If
  loc_1130723: End If
  loc_1130748: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_1130752:   var_CC = CVar(CLng(var_88)) 'Long
  loc_113075A:   var_108 = CVar(CLng(1)) 'Long
  loc_113077A:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1130796:   If CBool(var_118 <> vbNullString) Then
  loc_113079D:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11307A5:     var_108 = CVar(CLng(3)) 'Long
  loc_11307D5:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11307FD:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1130823:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_113082F:       Set var_9C = Me.FGrid
  loc_1130853:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1130860:       Proc_89_59_1130944 = 0
  loc_1130866:     End If
  loc_113086A:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1130872:     var_108 = CVar(CLng(8)) 'Long
  loc_11308A2:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11308CA:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11308F0:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11308FC:       Set var_9C = Me.FGrid
  loc_1130920:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_113092D:       Proc_89_59_1130944 = 0
  loc_1130933:     End If
  loc_1130933:   End If
  loc_1130936: Next var_12C 'Integer
  loc_113093B: Proc_89_59_1130944 = 
End Sub

Public Sub Proc_89_60_F53A90
  'Data Table: 503198
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F5397A: Set var_8C = Me.Txt
  loc_F53980: Call 0.Method_Proc_89_60_F53A90C (var_8E, var_86)
  loc_F53990: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F539A6:   Set var_8C = Me.Txt
  loc_F539AC:   Call 0.Method_Proc_89_60_F53A900 (CInt(var_86), var_98)
  loc_F539B4:   var_98.Text = vbNullString
  loc_F539D0:   Set var_8C = Me.Txt
  loc_F539D6:   Call 0.Method_Proc_89_60_F53A900 (CInt(var_86), var_98)
  loc_F539DE:   var_98.Tag = vbNullString
  loc_F539ED: Next var_92 'Byte
  loc_F53A00: Me.LblCurStockStr.Caption = vbNullString
  loc_F53A15: Me.LblVPrefix.Caption = vbNullString
  loc_F53A30: Me.FGrid.Rows = 1
  loc_F53A4D: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F53A55: Set var_98 = Me.FGrid
  loc_F53A84: Me.FGrid.FixedRows = 1
  loc_F53A8C: Exit Sub
  loc_F53A8D: StAryRecCopy
End Sub

Public Sub Proc_89_61_EFE8DC(arg_C) 'EFE8DC
  'Data Table: 503198
  Dim var_98 As TextBox
  loc_EFE806: Set var_8C = Me.Txt
  loc_EFE80C: Call 0.Method_Proc_89_61_EFE8DCC (var_8E, var_86)
  loc_EFE81C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EFE832:   Set var_8C = Me.Txt
  loc_EFE838:   Call 0.Method_Proc_89_61_EFE8DC0 (CInt(var_86), var_98)
  loc_EFE840:   var_98.Enabled = arg_C
  loc_EFE84F: Next var_92 'Byte
  loc_EFE862: Set var_8C = Me.Txt
  loc_EFE868: Call 0.Method_Proc_89_61_EFE8DC0 (CInt(0), var_98)
  loc_EFE870: var_98.Enabled = False
  loc_EFE889: Set var_8C = Me.Txt
  loc_EFE88F: Call 0.Method_Proc_89_61_EFE8DC0 (CInt(2), var_98)
  loc_EFE897: var_98.Enabled = False
  loc_EFE8AE: If (global_168 = "No") Then
  loc_EFE8BE:   Set var_8C = Me.Txt
  loc_EFE8C4:   Call 0.Method_Proc_89_61_EFE8DC0 (CInt(3), var_98)
  loc_EFE8CC:   var_98.Enabled = False
  loc_EFE8D8: End If
  loc_EFE8D8: Exit Sub
End Sub

Public Sub Proc_89_62_F6C558
  'Data Table: 503198
  loc_F6C42F: If (Me.FrmList.Visible = &HFF) Then
  loc_F6C43E:   Me.FrmList.Visible = False
  loc_F6C446: End If
  loc_F6C462: If (CBool(Me.DGOrdType.Visible) = &HFF) Then
  loc_F6C474:   Me.DGOrdType.Visible = False
  loc_F6C47C: End If
  loc_F6C498: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F6C4AA:   Me.DGParty.Visible = False
  loc_F6C4B2: End If
  loc_F6C4CE: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F6C4E0:   Me.DGItem.Visible = False
  loc_F6C4E8: End If
  loc_F6C504: If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_F6C516:   Me.DGIndent.Visible = False
  loc_F6C51E: End If
  loc_F6C53A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6C54C:   Me.FGPoint.Visible = False
  loc_F6C554: End If
  loc_F6C554: Exit Sub
End Sub

Public Sub Proc_89_63_F90F94
  'Data Table: 503198
  loc_F90E3C: Call Proc_89_62_F6C558()
  loc_F90E4C: Set var_88 = Me.Txt
  loc_F90E52: Call 0.Method_Proc_89_63_F90F940 (CInt(1))
  loc_F90E7B: If (Proc_6_27_EA61EC(var_8C, "Order Type") = 0) Then
  loc_F90E7E:   Exit Sub
  loc_F90E7F: End If
  loc_F90E8A: Set var_88 = Me.Txt
  loc_F90E90: Call 0.Method_Proc_89_63_F90F940 (CInt(2), var_8C)
  loc_F90EB9: If (Proc_6_27_EA61EC(var_8C, "Order No") = 0) Then
  loc_F90EBC:   Exit Sub
  loc_F90EBD: End If
  loc_F90EC8: Set var_88 = Me.Txt
  loc_F90ECE: Call 0.Method_Proc_89_63_F90F940 (CInt(3), var_8C)
  loc_F90EF7: If (Proc_6_27_EA61EC(var_8C, "Order Date") = 0) Then
  loc_F90EFA:   Exit Sub
  loc_F90EFB: End If
  loc_F90F06: Set var_88 = Me.Txt
  loc_F90F0C: Call 0.Method_Proc_89_63_F90F940 (CInt(4), var_8C)
  loc_F90F35: If (Proc_6_27_EA61EC(var_8C, "Party Name") = 0) Then
  loc_F90F38:   Exit Sub
  loc_F90F39: End If
  loc_F90F70: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F90F73:   Call TopCtrl1_UnknownEvent_16()
  loc_F90F7B: Else
  loc_F90F81:   Call 0.Method_arg_1E8 (var_88)
  loc_F90F89:   Call var_88.SetFocus
  loc_F90F92: End If
  loc_F90F92: Exit Sub
End Sub

Public Sub Proc_89_64_111228C
  'Data Table: 503198
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
  loc_1111F88: Set var_94 = Me.Txt
  loc_1111F8E: Call 0.Method_Proc_89_64_111228C0 (CInt(1), var_98)
  loc_1111F9E: var_90 = var_98.Tag
  loc_1111FAE: global_108 = var_90
  loc_1111FC6: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1111FF7: Set var_94 = Me.Txt
  loc_1111FFD: Call 0.Method_Proc_89_64_111228C0 (CInt(3), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_111200C: Proc_6_7_F26918(var_CC, CVar(var_98), var_130)
  loc_1112014: var_EC = -1 & var_CC 
  loc_1112028: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_1112033: Set var_8C = var_134
  loc_111206F: If (var_8C.RecordCount > 0) Then
  loc_11120AE:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_11120B1:     GoTo loc_111213F
  loc_11120B4:   End If
  loc_11120E5:   global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1112110:   var_98 = var_8C.Fields.Item("start_srl_no")
  loc_1112125:   var_CC = (var_98.Value + 1)
  loc_111212E:   global_116 = CLng(var_CC)
  loc_111213F:   ' Referenced from: 11120B1
  loc_111213F: End If
  loc_111216A: var_BC = Space((5 - Len(var_90)))
  loc_1112172: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_98.Value)
  loc_111217F: var_EC = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(global_112))
  loc_1112193: var_10C = Space((5 - Len(global_112)))
  loc_111219B: var_130 = (var_EC + var_EC & " Order By VP.Date_From DESC")
  loc_11121B4: var_14C = Space((8 - Len(CStr(global_116))))
  loc_11121BC: var_15C = (var_130 + var_14C)
  loc_11121CB: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_11121D6: global_104 = CStr(var_17C)
  loc_111220C: Me.LblVPrefix.Caption = global_112
  loc_1112225: Set var_94 = Me.Txt
  loc_111222B: Call 0.Method_Proc_89_64_111228C0 (CInt(0), var_98)
  loc_1112233: var_98.Text = global_104
  loc_1112255: Set var_94 = Me.Txt
  loc_111225B: Call 0.Method_Proc_89_64_111228C0 (CInt(2), var_98)
  loc_1112263: var_98.Text = CStr(global_116)
  loc_1112278: var_88 = global_104
  loc_1112280: Set var_8C = Nothing
  loc_1112283: Proc_89_64_111228C = global_116
End Sub

Public Sub Proc_89_65_171DD70(arg_C, arg_10, arg_14) '171DD70
  'Data Table: 503198
  Dim var_D8 As String
  Dim unk_5031B5 As Connection15
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
  Dim var_C0 As Recordset15
  Dim var_140 As Variant
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_D0 As Double
  Dim var_1F4 As Double
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_160 As Variant
  Dim var_204 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_1E8 As Double
  Dim var_9C As Double
  Dim var_260 As Double
  Dim var_1B0 As Variant
  loc_171C194: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_171C1A4: unk_5031B5.Execute var_D8 & "'", var_FC, -1
  loc_171C1AF: Set var_8C = var_100
  loc_171C1C2: var_94 = arg_14
  loc_171C1C7: var_86 = 1
  loc_171C1CD: var_A8 = var_94
  loc_171C1D3: var_B0 = var_94
  loc_171C1D9: var_B8 = CDbl(0)
  loc_171C1F0: If (var_8C.RecordCount > 0) Then
  loc_171C1F3:   ' Referenced from: 171DD51
  loc_171C202:   If Not(var_8C.EOF) Then
  loc_171C209:     Set var_10C = Me.FGCat
  loc_171C20C:     var_EC = vbNullString
  loc_171C231:     If (var_8C.RecordCount > 0) Then
  loc_171C23A:       var_D2 = (var_D2 + 1)
  loc_171C240:       var_EC = "Nature"
  loc_171C273:       var_150 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8))) 'Variant
  loc_171C28C:       If (var_150 = "On Base Amt") Then
  loc_171C2B7:         var_130 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_B0, var_A8)) 'String
  loc_171C2D9:         If (Trim(var_130) = "Room Rate") Then
  loc_171C2E7:           If (global_172 = "Room Service") Then
  loc_171C310:             Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Limit")), var_86)
  loc_171C33E:             Proc_6_39_E7D3A0(var_160, CVar(var_C0.Fields.Item("RoomRate")), var_130)
  loc_171C370:             Proc_6_39_E7D3A0(var_1B0, CVar(var_8C.Fields.Item("Rate")))
  loc_171C3A0:             If CBool((var_94 <= var_160) And (var_1B0 > 0)) Then
  loc_171C3DF:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171C41D:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171C430:               Else
  loc_171C463:                 var_1F4 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_171C48C:                 Proc_6_142_14A62A0(((var_1F4 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_171C491:                 var_D0 = var_1F4
  loc_171C4A5:               End If
  loc_171C4AC:               If (var_D0 > CDbl(0)) Then
  loc_171C4C8:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C4D0:                 var_18C = CVar(CLng(0)) 'Long
  loc_171C4DA:                 var_130 = CVar(CStr(var_86)) 'String
  loc_171C4E1:                 LateIdCallSt
  loc_171C50C:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C514:                 var_18C = CVar(CLng(1)) 'Long
  loc_171C51E:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_171C525:                 LateIdCallSt
  loc_171C550:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C558:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_171C588:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171C58F:                 LateIdCallSt
  loc_171C5C2:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C5CA:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_171C5FA:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171C601:                 LateIdCallSt
  loc_171C634:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C63C:                 var_18C = CVar(CLng(4)) 'Long
  loc_171C646:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_171C64D:                 LateIdCallSt
  loc_171C678:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C680:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_171C6B0:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171C6B7:                 LateIdCallSt
  loc_171C711:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C719:                 var_234 = CVar(CLng(6)) 'Long
  loc_171C71E:                 var_178 = 2
  loc_171C75D:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_171C764:                 LateIdCallSt
  loc_171C78B:               Else
  loc_171C791:                 var_86 = (var_86 - 1)
  loc_171C7A7:                 var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_171C7BD:               End If
  loc_171C7D6:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C7DE:               var_18C = CVar(CLng(6)) 'Long
  loc_171C803:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171C82C:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C834:               var_18C = CVar(CLng(6)) 'Long
  loc_171C84F:               var_1E8 = Val(CStr(var_10C.TextMatrix)))
  loc_171C859:               var_94 = (var_94 + var_1E8)
  loc_171C870:               var_B0 = (var_B0 + var_D0)
  loc_171C876:               var_B8 = var_D0
  loc_171C880:               var_B0 = (var_B0 + var_D0)
  loc_171C886:               var_B8 = var_D0
  loc_171C889:             End If
  loc_171C889:           End If
  loc_171C88C:         Else
  loc_171C8C8:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171C906:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171C919:           Else
  loc_171C93B:             var_130 = var_8C.Fields.Item("Rate").Value
  loc_171C975:             Proc_6_142_14A62A0(((Val(CStr(var_130)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_130)), var_D0, var_B8, var_B0)
  loc_171C97A:             var_260 = var_B8
  loc_171C9BC:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_260)
  loc_171C9DA:           End If
  loc_171CA00:           Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_260, var_B0)
  loc_171CA3A:           Proc_6_39_E7D3A0(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_94)
  loc_171CA64:           If CBool(var_1E8 And (var_178 > 0)) Then
  loc_171CA6E:             If (var_D0 > CDbl(0)) Then
  loc_171CA8A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CA92:               var_18C = CVar(CLng(0)) 'Long
  loc_171CA9C:               var_130 = CVar(CStr(var_86)) 'String
  loc_171CAA3:               LateIdCallSt
  loc_171CACE:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CAD6:               var_18C = CVar(CLng(1)) 'Long
  loc_171CAE0:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171CAE7:               LateIdCallSt
  loc_171CB12:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CB1A:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171CB4A:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171CB51:               LateIdCallSt
  loc_171CB84:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CB8C:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171CBBC:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171CBC3:               LateIdCallSt
  loc_171CBF6:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CBFE:               var_18C = CVar(CLng(4)) 'Long
  loc_171CC08:               var_130 = CVar(CStr(var_A8)) 'String
  loc_171CC0F:               LateIdCallSt
  loc_171CC3A:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CC42:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171CC72:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171CC79:               LateIdCallSt
  loc_171CCD3:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CCDB:               var_234 = CVar(CLng(6)) 'Long
  loc_171CD1F:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171CD26:               LateIdCallSt
  loc_171CD4A:             End If
  loc_171CD63:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CD6B:             var_18C = CVar(CLng(6)) 'Long
  loc_171CD90:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171CDB9:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CDC1:             var_18C = CVar(CLng(6)) 'Long
  loc_171CDC9:             var_130 = var_10C.TextMatrix)
  loc_171CDDC:             var_1E8 = Val(CStr(var_130))
  loc_171CDE6:             var_94 = (var_94 + var_1E8)
  loc_171CDFD:             var_B0 = (var_B0 + var_D0)
  loc_171CE03:             var_B8 = var_D0
  loc_171CE06:           End If
  loc_171CE06:         End If
  loc_171CE09:       Else
  loc_171CE14:         If (var_150 = "On Running Total") Then
  loc_171CE53:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171CE91:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_171CEA4:           Else
  loc_171CF00:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171CF05:             var_D0 = var_94
  loc_171CF19:           End If
  loc_171CF3F:           Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1E8, var_18C)
  loc_171CF59:           If (var_130 > 0) Then
  loc_171CF63:             If (var_D0 > CDbl(0)) Then
  loc_171CF7F:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CF87:               var_18C = CVar(CLng(0)) 'Long
  loc_171CF91:               var_130 = CVar(CStr(var_86)) 'String
  loc_171CF98:               LateIdCallSt
  loc_171CFC3:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CFCB:               var_18C = CVar(CLng(1)) 'Long
  loc_171CFD5:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171CFDC:               LateIdCallSt
  loc_171D007:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D00F:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171D03F:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171D046:               LateIdCallSt
  loc_171D079:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D081:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171D0B1:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171D0B8:               LateIdCallSt
  loc_171D0EB:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D0F3:               var_18C = CVar(CLng(4)) 'Long
  loc_171D0FD:               var_130 = CVar(CStr(var_B0)) 'String
  loc_171D104:               LateIdCallSt
  loc_171D12F:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D137:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171D167:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171D16E:               LateIdCallSt
  loc_171D1C8:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D1D0:               var_234 = CVar(CLng(6)) 'Long
  loc_171D214:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171D21B:               LateIdCallSt
  loc_171D23F:             End If
  loc_171D258:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D260:             var_18C = CVar(CLng(6)) 'Long
  loc_171D285:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171D2AE:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D2B6:             var_18C = CVar(CLng(6)) 'Long
  loc_171D2DB:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_171D2F2:             var_B0 = (var_B0 + var_D0)
  loc_171D2F8:             var_B8 = var_D0
  loc_171D2FB:           End If
  loc_171D2FE:         Else
  loc_171D309:           If (var_150 = "On Prev. Tax Amt") Then
  loc_171D348:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171D386:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_171D399:             Else
  loc_171D3F5:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171D3FA:               var_D0 = var_94
  loc_171D40E:             End If
  loc_171D415:             If (var_D0 > CDbl(0)) Then
  loc_171D431:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D439:               var_18C = CVar(CLng(0)) 'Long
  loc_171D443:               var_130 = CVar(CStr(var_86)) 'String
  loc_171D44A:               LateIdCallSt
  loc_171D475:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D47D:               var_18C = CVar(CLng(1)) 'Long
  loc_171D487:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171D48E:               LateIdCallSt
  loc_171D4B9:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D4C1:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171D4F1:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171D4F8:               LateIdCallSt
  loc_171D52B:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D533:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171D563:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171D56A:               LateIdCallSt
  loc_171D59D:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D5A5:               var_18C = CVar(CLng(4)) 'Long
  loc_171D5AF:               var_130 = CVar(CStr(var_B8)) 'String
  loc_171D5B6:               LateIdCallSt
  loc_171D5E1:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D5E9:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171D619:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171D620:               LateIdCallSt
  loc_171D67A:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D682:               var_234 = CVar(CLng(6)) 'Long
  loc_171D687:               var_178 = 2
  loc_171D6C6:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_171D6CD:               LateIdCallSt
  loc_171D6F1:             End If
  loc_171D70A:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D712:             var_18C = CVar(CLng(6)) 'Long
  loc_171D737:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171D760:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D768:             var_18C = CVar(CLng(6)) 'Long
  loc_171D770:             var_130 = var_10C.TextMatrix)
  loc_171D783:             var_1E8 = Val(CStr(var_130))
  loc_171D78D:             var_94 = (var_94 + var_1E8)
  loc_171D7A4:             var_B0 = (var_B0 + var_D0)
  loc_171D7AA:             var_B8 = var_D0
  loc_171D7B0:           Else
  loc_171D7EC:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171D82A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171D83D:             Else
  loc_171D899:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171D89E:               var_D0 = var_94
  loc_171D8B2:             End If
  loc_171D8B5:             var_EC = "Limit"
  loc_171D8D8:             Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_1E8, var_18C)
  loc_171D912:             Proc_6_39_E7D3A0(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_171D93C:             If CBool(var_9C And (var_178 > 0)) Then
  loc_171D946:               If (var_D0 > CDbl(0)) Then
  loc_171D962:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D96A:                 var_18C = CVar(CLng(0)) 'Long
  loc_171D974:                 var_130 = CVar(CStr(var_86)) 'String
  loc_171D97B:                 LateIdCallSt
  loc_171D9A6:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D9AE:                 var_18C = CVar(CLng(1)) 'Long
  loc_171D9B8:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_171D9BF:                 LateIdCallSt
  loc_171D9EA:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171D9F2:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_171DA22:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171DA29:                 LateIdCallSt
  loc_171DA5C:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DA64:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_171DA94:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171DA9B:                 LateIdCallSt
  loc_171DACE:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DAD6:                 var_18C = CVar(CLng(4)) 'Long
  loc_171DAE0:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_171DAE7:                 LateIdCallSt
  loc_171DB12:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DB1A:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_171DB4A:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171DB51:                 LateIdCallSt
  loc_171DBAB:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DBB3:                 var_234 = CVar(CLng(6)) 'Long
  loc_171DBF7:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171DBFE:                 LateIdCallSt
  loc_171DC22:               End If
  loc_171DC3B:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DC43:               var_18C = CVar(CLng(6)) 'Long
  loc_171DC68:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171DC91:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171DC99:               var_18C = CVar(CLng(6)) 'Long
  loc_171DCBE:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_171DCD5:               var_B0 = (var_B0 + var_D0)
  loc_171DCDB:               var_B8 = var_D0
  loc_171DCDE:             End If
  loc_171DCDE:           End If
  loc_171DCDE:         End If
  loc_171DCDE:       End If
  loc_171DCDE:     End If
  loc_171DCE4:     var_86 = (var_86 + 1)
  loc_171DCE9:     Set var_10C = Nothing 
  loc_171DCF1:     var_18C = CVar(CLng(arg_10)) 'Long
  loc_171DCF9:     var_204 = CVar(CLng(&HA)) 'Long
  loc_171DD27:     var_140 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_171DD2F:     Set var_100 = Me.FGrid
  loc_171DD35:     LateIdCallSt
  loc_171DD4C:     var_8C.MoveNext
  loc_171DD51:     GoTo loc_171C1F3
  loc_171DD54:   End If
  loc_171DD59:   Set var_8C = Nothing
  loc_171DD61:   Set var_C4 = Nothing
  loc_171DD69:   Set var_C0 = Nothing
  loc_171DD6C: End If
  loc_171DD6C: Exit Sub
End Sub
