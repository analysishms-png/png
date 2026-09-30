VERSION 5.00
Begin VB.Form MemberEnviro
  Caption = "Parameter Setting"
  BackColor = &HCDE2D0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "MemberEnviro.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12135
  ClientHeight = 5835
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 5385
    Width = 12135
    Height = 450
    Visible = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGTaxStru
    Left = 11370
    Top = 7140
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin SSTab SSTab1
    Left = 1485
    Top = 1365
    Width = 10785
    Height = 5205
    TabIndex = 0
    Begin TextBox Txt
      Index = 12
      ForeColor = &HFF0000&
      Left = -69255
      Top = 2745
      Width = 615
      Height = 240
      TabIndex = 26
      BorderStyle = 0 'None
      MaxLength = 3
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
      ForeColor = &HFF0000&
      Left = 4950
      Top = 2895
      Width = 1275
      Height = 285
      TabIndex = 40
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
      Index = 5
      ForeColor = &HFF0000&
      Left = -69255
      Top = 2475
      Width = 615
      Height = 240
      TabIndex = 25
      BorderStyle = 0 'None
      MaxLength = 3
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
      ForeColor = &HFF0000&
      Left = 5610
      Top = 2580
      Width = 615
      Height = 285
      Visible = 0   'False
      TabIndex = 39
      BorderStyle = 0 'None
      MaxLength = 4
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
      Index = 10
      ForeColor = &HFF0000&
      Left = -69255
      Top = 3285
      Width = 615
      Height = 240
      TabIndex = 28
      BorderStyle = 0 'None
      MaxLength = 4
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
      ForeColor = &HFF0000&
      Left = -69255
      Top = 3015
      Width = 615
      Height = 240
      TabIndex = 27
      BorderStyle = 0 'None
      MaxLength = 4
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
      ForeColor = &HFF0000&
      Left = -71100
      Top = 1785
      Width = 1185
      Height = 285
      TabIndex = 30
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
      Index = 7
      Left = -73320
      Top = 2145
      Width = 7485
      Height = 2175
      TabIndex = 31
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 254
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
    Begin Frame FrmList
      Left = -65370
      Top = 4410
      Width = 1260
      Height = 1830
      Visible = 0   'False
      TabIndex = 23
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 15
        Top = 0
        Width = 1245
        Height = 1830
        TabStop = 0   'False
        TabIndex = 24
      End
    End
    Begin TextBox Txt
      Index = 4
      ForeColor = &HC00000&
      Left = -71325
      Top = 2520
      Width = 3405
      Height = 285
      TabIndex = 21
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
      Index = 3
      ForeColor = &HFF0000&
      Left = -72765
      Top = 2580
      Width = 615
      Height = 285
      TabIndex = 2
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 0
      ForeColor = &HFF0000&
      Left = -72765
      Top = 2265
      Width = 615
      Height = 285
      TabIndex = 1
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      ForeColor = &HFF0000&
      Left = -73410
      Top = 3210
      Width = 8730
      Height = 285
      TabIndex = 4
      BorderStyle = 0 'None
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
    Begin TextBox Txt
      Index = 1
      ForeColor = &HFF0000&
      Left = -73410
      Top = 2895
      Width = 8730
      Height = 285
      TabIndex = 3
      BorderStyle = 0 'None
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
    Begin Label Label
      Caption = "Yes/No"
      Index = 19
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -68535
      Top = 2760
      Width = 690
      Height = 225
      TabIndex = 48
      Alignment = 2 'Center
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Member Sale Bill Disc. Editable"
      Index = 18
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = -72330
      Top = 2745
      Width = 3000
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Auto Member Billing"
      Index = 17
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2970
      Top = 2895
      Width = 1950
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "All/Condi."
      Index = 16
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = 6360
      Top = 2910
      Width = 1185
      Height = 225
      TabIndex = 45
      Alignment = 2 'Center
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Member Age Parameter"
      Index = 7
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = -72330
      Top = 2475
      Width = 2280
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Yes/No"
      Index = 8
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -68535
      Top = 2490
      Width = 690
      Height = 225
      TabIndex = 43
      Alignment = 2 'Center
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Auto/Semi"
      Index = 9
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = 6375
      Top = 2595
      Width = 1185
      Height = 225
      Visible = 0   'False
      TabIndex = 42
      Alignment = 2 'Center
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Member Facility Billing"
      Index = 10
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2970
      Top = 2580
      Width = 2205
      Height = 240
      Visible = 0   'False
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "General Parameter"
      Index = 4
      BackColor = &HC0C000&
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 1170
      Width = 10050
      Height = 300
      TabIndex = 38
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
    Begin Shape Shape1
      Index = 4
      BackColor = &HC00000&
      BorderColor = &HC0C000&
      Left = 360
      Top = 1440
      Width = 10050
      Height = 3345
      BorderStyle = 2 'Dash
    End
    Begin Label Label
      Caption = "Member Verification In KOT"
      Index = 15
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = -72330
      Top = 3285
      Width = 2640
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Auto/Semi"
      Index = 14
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -68535
      Top = 3300
      Width = 975
      Height = 225
      TabIndex = 36
      Alignment = 2 'Center
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Auto/Semi"
      Index = 13
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -68535
      Top = 3030
      Width = 975
      Height = 225
      TabIndex = 35
      Alignment = 2 'Center
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Member Verification (POS)"
      Index = 12
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = -72330
      Top = 3015
      Width = 2535
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Due Date of Payment :"
      Index = 11
      ForeColor = &HC00000&
      Left = -73290
      Top = 1770
      Width = 2130
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
    Begin Shape Shape1
      Index = 3
      BackColor = &HC00000&
      BorderColor = &HC000C0&
      Left = -74640
      Top = 1695
      Width = 10050
      Height = 3360
      BorderStyle = 2 'Dash
    End
    Begin Label Label1
      Caption = "Common Message On Bill Printing"
      Index = 3
      BackColor = &HC000C0&
      ForeColor = &HFFFFFF&
      Left = -74625
      Top = 1380
      Width = 10050
      Height = 300
      TabIndex = 32
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
    Begin Label Label
      Caption = "Interface :"
      Index = 6
      ForeColor = &HC00000&
      Left = -72315
      Top = 2535
      Width = 960
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
      Caption = "Smart Card Parameter"
      Index = 2
      BackColor = &H4080&
      ForeColor = &HFFFFFF&
      Left = -74655
      Top = 1170
      Width = 10050
      Height = 300
      TabIndex = 20
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
    Begin Shape Shape1
      Index = 2
      BackColor = &H40C0&
      BorderColor = &H40C0&
      Left = -74655
      Top = 1485
      Width = 10050
      Height = 3345
      BorderStyle = 2 'Dash
    End
    Begin Label Label
      Caption = "( 0-9 )"
      Index = 5
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -72075
      Top = 2580
      Width = 600
      Height = 225
      TabIndex = 19
      Alignment = 2 'Center
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "No. Bill Copies"
      Index = 4
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = -74505
      Top = 2595
      Width = 1395
      Height = 240
      TabIndex = 18
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Bill Printing Type"
      Index = 0
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = -74505
      Top = 2280
      Width = 1650
      Height = 240
      TabIndex = 17
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "W / D"
      Index = 3
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -72060
      Top = 2280
      Width = 600
      Height = 225
      TabIndex = 16
      Alignment = 2 'Center
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Bill Footer"
      Index = 2
      ForeColor = &HC00000&
      Left = -74505
      Top = 3210
      Width = 990
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
    Begin Label Label
      Caption = "Bill Header"
      Index = 1
      ForeColor = &HC00000&
      Left = -74505
      Top = 2910
      Width = 1065
      Height = 240
      TabIndex = 14
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
      Index = 1
      BackColor = &HC00000&
      BorderColor = &H8000&
      Left = -74655
      Top = 1485
      Width = 10050
      Height = 3360
      BorderStyle = 2 'Dash
    End
    Begin Label Label1
      Caption = "Printing Parameter"
      Index = 1
      BackColor = &H8000&
      ForeColor = &HFFFFFF&
      Left = -74655
      Top = 1170
      Width = 10050
      Height = 300
      TabIndex = 13
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
    Begin Shape Shape1
      Index = 0
      BackColor = &HC00000&
      BorderColor = &HC00000&
      Left = -74655
      Top = 1485
      Width = 10050
      Height = 3360
      BorderStyle = 2 'Dash
    End
    Begin Label Label1
      Caption = "General Parameter"
      Index = 0
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = -74655
      Top = 1170
      Width = 10050
      Height = 300
      TabIndex = 12
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
  Begin DataGrid DGGroup
    Left = 11385
    Top = 6915
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGDepart
    Left = 11385
    Top = 6675
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin DataGrid DGHelp
    Left = 11385
    Top = 6420
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin DataGrid DGTAX
    Left = 11385
    Top = 6180
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGRevenue
    Left = 11385
    Top = 5925
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
End

Attribute VB_Name = "MemberEnviro"

Private global_60 As Variant

Private Sub Txt_GotFocus(Index As Integer) 'FEE61C
  'Data Table: 48FD70
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As TextBox
  loc_FEE44E: Set var_88 = Me.Txt
  loc_FEE454: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEE462: Proc_6_74_E23240(var_8C)
  loc_FEE46E: Call Proc_270_14_E50ADC(var_8C)
  loc_FEE476: var_92 = Index
  loc_FEE481: If (var_92 = CInt(8)) Then
  loc_FEE491:   Set var_88 = Me.Txt
  loc_FEE497:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEE4B2:   Set var_90 = Me.Txt
  loc_FEE4B8:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_FEE4C0:   var_9C.SelLength = Len(var_8C.Text)
  loc_FEE4E0:   Set var_88 = Me.Txt
  loc_FEE4E6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEE4EE:   var_98 = var_8C.Text
  loc_FEE500:   Set var_90 = Me.Txt
  loc_FEE506:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_FEE50E:   var_9C.Tag = var_98
  loc_FEE524: Else
  loc_FEE52C:   If (var_92 = CInt(4)) Then
  loc_FEE53C:     ReDim var_A0(0 To 1)
  loc_FEE553:     var_A0(0) = "NBSD_Mifare"
  loc_FEE562:     var_A0(1) = "SmartCard_ACR"
  loc_FEE579:     global_60 = Array(var_A0)
  loc_FEE584:     Set var_9C = Me.ListView
  loc_FEE59F:     Set var_8C = Me.Txt
  loc_FEE5B9:     Set global_76 = Proc_6_66_F0048C(var_9C, var_8C, Index, global_60)
  loc_FEE5D7:     Set var_88 = Me.Txt
  loc_FEE5DD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_FEE5E5:     2 = var_8C.Text
  loc_FEE5F7:     Set var_90 = Me.Txt
  loc_FEE5FD:     Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_FEE605:     var_9C.Tag = global_60
  loc_FEE618:   End If
  loc_FEE618: End If
  loc_FEE618: Exit Sub
  loc_FEE619: CopyBytes 2303
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1059EBC
  'Data Table: 48FD70
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_B4 As Variant
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_A4 As Frame
  Dim var_B0 As DataGrid
  loc_1059C8A: If (CLng(Shift) = &H1B) Then
  loc_1059C8D:   Call Proc_270_14_E50ADC()
  loc_1059C92:   Exit Sub
  loc_1059C93: End If
  loc_1059CA1: If (KeyCode = CInt(4)) Then
  loc_1059CC6:   Set var_8C = Me.Txt
  loc_1059CCC:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1059CD4:   var_94 = var_90.Left
  loc_1059CE6:   Set var_98 = Me.Txt
  loc_1059CEC:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_1059CF4:   var_A0 = var_9C.Top
  loc_1059D06:   Set var_A4 = Me.Txt
  loc_1059D0C:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_1059D14:   var_AC = var_A8.Height
  loc_1059D26:   Set var_B0 = Me.Txt
  loc_1059D2C:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_1059D34:   var_B8 = var_B4.Width
  loc_1059D7C:   Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1059DA0: End If
  loc_1059E7D: If (((((((CInt((var_A0 + var_AC)) And (CBool(CInt(var_94)((CBool(Me.DGRevenue.Visible) = 0)).Visible) = 0)) And (CBool(Me.DGTAX.Visible) = 0)) And (CBool(Me.DGHelp.Visible) = 0)) And (Me.FrmList.Visible = 0)) And (CBool(Me.DGGroup.Visible) = 0)) And (CBool(Me.DGDepart.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) Then
  loc_1059E95:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1059E9E:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_B8))
  loc_1059EA3:   End If
  loc_1059EAD:   If (CLng(Shift) = &H26) Then
  loc_1059EB6:     Proc_6_76_E533C8(Shift, arg_14)
  loc_1059EBB:   End If
  loc_1059EBB: End If
  loc_1059EBB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1132F34
  'Data Table: 48FD70
  Dim var_86 As Integer
  Dim var_A0 As TextBox
  Dim arg_10 As Integer
  loc_1132BB7: Proc_6_58_E06050(arg_10)
  loc_1132BBF: var_86 = KeyAscii
  loc_1132BCA: If (var_86 = CInt(3)) Then
  loc_1132BDA:   If ((arg_10 >= &H30) And (arg_10 <= &H39)) Then
  loc_1132BFA:     Set var_9C = Me.Txt
  loc_1132C00:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1132C08:     var_A0.Text = CStr(Chr(CLng(arg_10)))
  loc_1132C1D:   Else
  loc_1132C1F:     arg_10 = 0
  loc_1132C22:   End If
  loc_1132C25: Else
  loc_1132C2D:   If (var_86 = CInt(0)) Then
  loc_1132C59:     If (Ucase(Chr(CLng(arg_10))) = "W") Then
  loc_1132C69:       Set var_9C = Me.Txt
  loc_1132C6F:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "W")
  loc_1132C77:       var_A0.Text = arg_10
  loc_1132C86:     Else
  loc_1132CAF:       If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_1132CBF:         Set var_9C = Me.Txt
  loc_1132CC5:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1132CCD:         var_A0.Text = "D"
  loc_1132CD9:       End If
  loc_1132CD9:     End If
  loc_1132CDB:     arg_10 = 0
  loc_1132CE1:   Else
  loc_1132CE9:     If Not (var_86 = CInt(5)) Then
  loc_1132CF4:       If (var_86 = CInt(&HC)) Then
  loc_1132CF7:       End If
  loc_1132D20:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1132D30:         Set var_9C = Me.Txt
  loc_1132D36:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_1132D3E:         var_A0.Text = arg_10
  loc_1132D4D:       Else
  loc_1132D76:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1132D86:           Set var_9C = Me.Txt
  loc_1132D8C:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1132D94:           var_A0.Text = "No"
  loc_1132DA0:         End If
  loc_1132DA0:       End If
  loc_1132DA2:       arg_10 = 0
  loc_1132DA8:     Else
  loc_1132DB0:       If Not (var_86 = CInt(6)) Then
  loc_1132DBB:         If Not (var_86 = CInt(9)) Then
  loc_1132DC6:           If (var_86 = CInt(&HA)) Then
  loc_1132DC9:           End If
  loc_1132DC9:         End If
  loc_1132DF2:         If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_1132E02:           Set var_9C = Me.Txt
  loc_1132E08:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Auto")
  loc_1132E10:           var_A0.Text = arg_10
  loc_1132E1F:         Else
  loc_1132E48:           If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_1132E58:             Set var_9C = Me.Txt
  loc_1132E5E:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1132E66:             var_A0.Text = "Semi"
  loc_1132E72:           End If
  loc_1132E72:         End If
  loc_1132E74:         arg_10 = 0
  loc_1132E7A:       Else
  loc_1132E82:         If (var_86 = CInt(&HB)) Then
  loc_1132EAE:           If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_1132EBE:             Set var_9C = Me.Txt
  loc_1132EC4:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "All")
  loc_1132ECC:             var_A0.Text = arg_10
  loc_1132EDB:           Else
  loc_1132F04:             If (Ucase(Chr(CLng(arg_10))) = "C") Then
  loc_1132F14:               Set var_9C = Me.Txt
  loc_1132F1A:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1132F22:               var_A0.Text = "Conditional"
  loc_1132F2E:             End If
  loc_1132F2E:           End If
  loc_1132F30:           arg_10 = 0
  loc_1132F33:         End If
  loc_1132F33:       End If
  loc_1132F33:     End If
  loc_1132F33:   End If
  loc_1132F33: End If
  loc_1132F33: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E8A6E0
  'Data Table: 48FD70
  loc_E8A682: If (KeyCode = CInt(4)) Then
  loc_E8A6A0:   If (Me.FrmList.Visible = &HFF) Then
  loc_E8A6CF:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_E8A6DF:   End If
  loc_E8A6DF: End If
  loc_E8A6DF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B244
  'Data Table: 48FD70
  loc_E4B222: Set var_88 = Me.Txt
  loc_E4B228: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B236: Proc_6_73_E23294(var_8C)
  loc_E4B242: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10B1334
  'Data Table: 48FD70
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_EC As TextBox
  loc_10B1070: On Error Resume Next
  loc_10B1075: Call Proc_270_14_E50ADC()
  loc_10B107F: var_86 = Cancel
  loc_10B108C: If Not (var_86 = CInt(5)) Then
  loc_10B1097:   If (var_86 = CInt(&HC)) Then
  loc_10B109A:   End If
  loc_10B10A6:   Set var_8C = Me.Txt
  loc_10B10AC:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B10E7:   If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_10B10F9:     Set var_8C = Me.Txt
  loc_10B10FF:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B1107:     var_90.Text = "Yes"
  loc_10B1116:   Else
  loc_10B1127:     Set var_8C = Me.Txt
  loc_10B112D:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B1135:     var_90.Text = "No"
  loc_10B1141:   End If
  loc_10B1146: Else
  loc_10B1150:   If Not (var_86 = CInt(6)) Then
  loc_10B115B:     If Not (var_86 = CInt(9)) Then
  loc_10B1166:       If (var_86 = CInt(&HA)) Then
  loc_10B1169:       End If
  loc_10B1169:     End If
  loc_10B1175:     Set var_8C = Me.Txt
  loc_10B117B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B11B6:     If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_10B11C8:       Set var_8C = Me.Txt
  loc_10B11CE:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B11D6:       var_90.Text = "Auto"
  loc_10B11E5:     Else
  loc_10B11F6:       Set var_8C = Me.Txt
  loc_10B11FC:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B1204:       var_90.Text = "Semi"
  loc_10B1210:     End If
  loc_10B1215:   Else
  loc_10B121F:     If (var_86 = CInt(&HB)) Then
  loc_10B122E:       Set var_8C = Me.Txt
  loc_10B1234:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B126F:       If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_10B1281:         Set var_8C = Me.Txt
  loc_10B1287:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B128F:         var_90.Text = "All"
  loc_10B129E:       Else
  loc_10B12AF:         Set var_8C = Me.Txt
  loc_10B12B5:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B12BD:         var_90.Text = "Conditional"
  loc_10B12C9:       End If
  loc_10B12CE:     Else
  loc_10B12D8:       If (var_86 = CInt(8)) Then
  loc_10B12E7:         Set var_8C = Me.Txt
  loc_10B12ED:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B130D:         Set var_E8 = Me.Txt
  loc_10B1313:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10B131B:         var_EC.Text = Proc_6_33_15125B8(var_90)
  loc_10B132E:       End If
  loc_10B132E:     End If
  loc_10B132E:   End If
  loc_10B132E: End If
  loc_10B1332: Exit Sub
End Sub

Private Sub Form_Load() 'EB1E60
  'Data Table: 48FD70
  loc_EB1DCC: On Error Goto loc_EB1E5A
  loc_EB1DD6: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_EB1DE5: Set var_A8 = Me.TopCtrl1
  loc_EB1DEB: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005("Add")
  loc_EB1DFD: Set global_56 = New 
  loc_EB1E12: Me.TopCtrl1.CursorLocation = 3
  loc_EB1E49: Me.Recordset15.Open CVar("Select * From MemEnviro WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "')"), CVar(MemVar_1F95044), 2
  loc_EB1E54: Call Proc_270_13_137ED00(3)
  loc_EB1E59: Exit Sub
  loc_EB1E5A: ' Referenced from: EB1DCC
  loc_EB1E5A: Proc_6_60_E63754(-1)
  loc_EB1E5F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E46678
  'Data Table: 48FD70
  loc_E46653: Set global_56 = Nothing
  loc_E4665F: global_60 = Nothing
  loc_E4666E: Set global_76 = Nothing
  loc_E46675: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E276D8
  'Data Table: 48FD70
  loc_E276B0: On Error Goto loc_E276D0
  loc_E276C7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E276CF: Exit Sub
  loc_E276D0: ' Referenced from: E276B0
  loc_E276D0: Proc_6_60_E63754(Shift)
  loc_E276D5: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '138E12C
  'Data Table: 48FD70
  Dim unk_48FD72 As Connection15
  Dim var_86 As Integer
  Dim var_174 As Variant
  Dim var_20C As TextBox
  Dim var_598 As Double
  Dim var_528 As Variant
  Dim var_C4 As String
  Dim var_1B4 As Variant
  Dim var_204 As Variant
  Dim var_338 As Variant
  Dim var_440 As Variant
  Dim var_460 As Variant
  Dim var_548 As Variant
  Dim var_184 As Variant
  Dim var_1D4 As Variant
  Dim var_538 As Variant
  Dim var_90 As Variant
  loc_138D988: On Error Goto loc_138E110
  loc_138D98B: Call Proc_270_14_E50ADC()
  loc_138D999: unk_48FD72.BeginTrans var_8C
  loc_138D9A0: var_86 = &HFF
  loc_138D9BD: If (Me.Recordset15.RecordCount = 0) Then
  loc_138D9CB:   Set var_90 = Me.Txt
  loc_138D9D1:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_94)
  loc_138D9E0:   Proc_6_17_EAAE40(var_B4, CVar(var_94))
  loc_138D9F0:   Set var_F8 = Me.Txt
  loc_138D9F6:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_FC)
  loc_138DA05:   Proc_6_17_EAAE40(var_11C, CVar(var_FC))
  loc_138DA15:   Set var_150 = Me.Txt
  loc_138DA1B:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_154)
  loc_138DA2C:   var_174 = CVar(Proc_6_38_E69628(CVar(var_154))) 'String
  loc_138DA32:   Proc_6_17_EAAE40(var_184, var_174)
  loc_138DA42:   Proc_6_17_EAAE40(var_1D4, MemVar_1F95078)
  loc_138DA55:   Set var_208 = Me.Txt
  loc_138DA5B:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(3), var_20C)
  loc_138DA63:   var_210 = var_20C.Text
  loc_138DA7E:   Set var_254 = Me.Txt
  loc_138DA84:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(4), var_258)
  loc_138DA93:   Proc_6_17_EAAE40(var_278, CVar(var_258))
  loc_138DAA3:   Set var_2AC = Me.Txt
  loc_138DAA9:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(5), var_2B0)
  loc_138DAB8:   Proc_6_17_EAAE40(var_2D0, CVar(var_2B0))
  loc_138DAC8:   Set var_304 = Me.Txt
  loc_138DACE:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(6), var_308)
  loc_138DADD:   Proc_6_17_EAAE40(var_328, CVar(var_308))
  loc_138DAED:   Set var_35C = Me.Txt
  loc_138DAF3:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(7), var_360)
  loc_138DB02:   Proc_6_17_EAAE40(var_380, CVar(var_360))
  loc_138DB12:   Set var_3B4 = Me.Txt
  loc_138DB18:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(8), var_3B8)
  loc_138DB27:   Proc_6_7_F26918(var_3D8, CVar(var_3B8))
  loc_138DB37:   Set var_40C = Me.Txt
  loc_138DB3D:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(9), var_410)
  loc_138DB4C:   Proc_6_17_EAAE40(var_430, CVar(var_410))
  loc_138DB5C:   Set var_464 = Me.Txt
  loc_138DB62:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HA), var_468)
  loc_138DB71:   Proc_6_17_EAAE40(var_488, CVar(var_468))
  loc_138DB81:   Set var_4BC = Me.Txt
  loc_138DB87:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HB), var_4C0)
  loc_138DB96:   Proc_6_17_EAAE40(var_4E0, CVar(var_4C0))
  loc_138DBA6:   Set var_514 = Me.Txt
  loc_138DBAC:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HC), var_518)
  loc_138DBB4:   var_528 = CVar(var_518) 'Address
  loc_138DBBB:   Proc_6_17_EAAE40(var_538, var_528)
  loc_138DBCD:   var_C4 = "Insert Into MemEnviro(Bill_Header,Bill_Footer,Bill_PrintType,LogSite_Code,NoOfCopy,Interface,AgeParameter,MemberFacilityBilling,BillMessage,BillPayDueDate,MemberVarification,MemberVarificationInKOT,AutoMemberBilling,MemberSaleBillDiscEditable) Values ("
  loc_138DC0E:   var_204 = var_C4 & var_B4 & "," & var_11C & "," & var_184 & "," & var_1D4 & "," 
  loc_138DC79:   var_440 = var_204 & CVar(Val(var_210)) & "," & var_278 & "," & var_2D0 & "," & var_328 & "," & var_380 & "," & var_3D8 & "," & var_430 
  loc_138DCA9:   var_548 = var_440 & "," & var_488 & "," & var_4E0 & "," & var_538 
  loc_138DCC0:   unk_48FD72.Execute CStr(var_548 & ")"), var_58C, -1
  loc_138DD61: Else
  loc_138DD6C:   Set var_90 = Me.Txt
  loc_138DD72:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_94, var_590)
  loc_138DD81:   Proc_6_17_EAAE40(var_B4, CVar(var_94))
  loc_138DD91:   Set var_F8 = Me.Txt
  loc_138DD97:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_FC)
  loc_138DDA6:   Proc_6_17_EAAE40(var_11C, CVar(var_FC))
  loc_138DDB6:   Set var_150 = Me.Txt
  loc_138DDBC:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_154)
  loc_138DDCB:   Proc_6_17_EAAE40(var_174, CVar(var_154))
  loc_138DDDE:   Set var_208 = Me.Txt
  loc_138DDE4:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(3), var_20C, var_210)
  loc_138DDEC:   var_598 = var_20C.Text
  loc_138DE07:   Set var_254 = Me.Txt
  loc_138DE0D:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(4), var_258)
  loc_138DE1C:   Proc_6_17_EAAE40(var_204, CVar(var_258))
  loc_138DE2C:   Set var_2AC = Me.Txt
  loc_138DE32:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(5), var_2B0)
  loc_138DE41:   Proc_6_17_EAAE40(var_278, CVar(var_2B0))
  loc_138DE51:   Set var_304 = Me.Txt
  loc_138DE57:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(6), var_308)
  loc_138DE66:   Proc_6_17_EAAE40(var_2D0, CVar(var_308))
  loc_138DE76:   Set var_35C = Me.Txt
  loc_138DE7C:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(7), var_360)
  loc_138DE8B:   Proc_6_17_EAAE40(var_328, CVar(var_360))
  loc_138DE9B:   Set var_3B4 = Me.Txt
  loc_138DEA1:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(8), var_3B8)
  loc_138DEB0:   Proc_6_7_F26918(var_380, CVar(var_3B8))
  loc_138DEC0:   Set var_40C = Me.Txt
  loc_138DEC6:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(9), var_410)
  loc_138DED5:   Proc_6_17_EAAE40(var_3D8, CVar(var_410))
  loc_138DEE5:   Set var_464 = Me.Txt
  loc_138DEEB:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HA), var_468)
  loc_138DEFA:   Proc_6_17_EAAE40(var_430, CVar(var_468))
  loc_138DF0A:   Set var_4BC = Me.Txt
  loc_138DF10:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HB), var_4C0)
  loc_138DF1F:   Proc_6_17_EAAE40(var_488, CVar(var_4C0))
  loc_138DF2F:   Set var_514 = Me.Txt
  loc_138DF35:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HC), var_518)
  loc_138DF44:   Proc_6_17_EAAE40(var_4E0, CVar(var_518))
  loc_138DF54:   Proc_6_17_EAAE40(var_528, MemVar_1F95078)
  loc_138DFA2:   var_1B4 = "Update MemEnviro Set Bill_Header=" & var_B4 & ",Bill_Footer=" & var_11C & ",Bill_PrintType=" & var_174 & ",NoOfCopy=" & CVar(Val(var_210)) 
  loc_138DFE2:   var_338 = var_1B4 & ",Interface=" & var_204 & ",AgeParameter=" & var_278 & ",MemberFacilityBilling=" & var_2D0 & ",BillMessage =" & var_328 
  loc_138E01B:   var_460 = var_338 & ",BillPayDueDate =" & var_380 & ",MemberVarification=" & var_3D8 & ",MemberVarificationInKOT=" & var_430 & ",AutoMemberBilling=" 
  loc_138E050:   unk_48FD72.Execute CStr(var_460 & var_488 & ",MemberSaleBillDiscEditable=" & var_4E0 & " WHERE LogSITE_CODE=" & var_528), var_548, -1
  loc_138E0EA: End If
  loc_138E0F0: unk_48FD72.CommitTrans
  loc_138E0F7: var_86 = 0
  loc_138E107: Me.Global.Unload Me
  loc_138E10F: Exit Sub
  loc_138E110: ' Referenced from: 138D988
  loc_138E116: If (var_86 = &HFF) Then
  loc_138E11F:   unk_48FD72.RollbackTrans
  loc_138E124: End If
  loc_138E124: Proc_6_60_E63754(var_86, var_590)
  loc_138E129: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5D0DC
  'Data Table: 48FD70
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5CFFE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5D005:   Set var_A8 = Me.ListView
  loc_F5D04F:   Set var_C0 = Me.Txt
  loc_F5D055:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5D05D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5D07D: End If
  loc_F5D089: Me.FrmList.Visible = False
  loc_F5D0B9: Set var_9C = Me.Txt
  loc_F5D0BF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5D0C7: var_A8.SetFocus
  loc_F5D0DB: Exit Sub
End Sub

Private Sub CmdExt_UnknownEvent_9 'E194D4
  'Data Table: 48FD70
  loc_E194C9: Me.Global.Unload Me
  loc_E194D1: Exit Sub
End Sub

Public Sub Proc_270_12_DFE1F4
  'Data Table: 48FD70
  Dim arg_283D As Boolean
  loc_DFE1F0: Exit Sub
  loc_DFE1F1: arg_283D = True
End Sub

Public Sub Proc_270_13_137ED00
  'Data Table: 48FD70
  Dim var_C4 As TextBox
  Dim var_D8 As Variant
  Dim var_C0 As Fields15
  Dim var_12C As Variant
  Dim var_194 As TextBox
  loc_137E490: On Error Goto loc_137ECF9
  loc_137E4AD: If (Me.Recordset15.RecordCount > 0) Then
  loc_137E4EC:   Set var_C0 = Me.Txt
  loc_137E4F2:   Call 0.Method_Proc_270_13_137ED000 (CInt(2), var_C4)
  loc_137E4FA:   var_C4.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Bill_Footer")))
  loc_137E54A:   Set var_C0 = Me.Txt
  loc_137E550:   Call 0.Method_Proc_270_13_137ED000 (CInt(1), var_C4)
  loc_137E558:   var_C4.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Bill_Header")))
  loc_137E5A8:   Set var_C0 = Me.Txt
  loc_137E5AE:   Call 0.Method_Proc_270_13_137ED000 (CInt(7), var_C4)
  loc_137E5B6:   var_C4.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BillMessage")))
  loc_137E613:   var_D8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BillPayDueDate")))) 'String
  loc_137E630:   Set var_C0 = Me.Txt
  loc_137E636:   Call 0.Method_Proc_270_13_137ED000 (CInt(8), var_C4, CStr(Format(var_D8, "dd/MMM/yyyy")))
  loc_137E63E:   var_C4.Text = 1
  loc_137E69A:   Set var_C0 = Me.Txt
  loc_137E6A0:   Call 0.Method_Proc_270_13_137ED000 (CInt(4), var_C4)
  loc_137E6A8:   var_C4.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Interface")))
  loc_137E6E8:   Proc_6_39_E7D3A0(var_D8, CVar(Me.Recordset15.Fields.Item("NoOfCopy")))
  loc_137E6FF:   Set var_C0 = Me.Txt
  loc_137E705:   Call 0.Method_Proc_270_13_137ED000 (CInt(3), var_C4)
  loc_137E70D:   var_C4.Text = CStr(var_D8)
  loc_137E7BC:   var_18C = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Bill_PrintType"))))) = vbNullString), "W", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Bill_PrintType"))))))
  loc_137E7D3:   Set var_190 = Me.Txt
  loc_137E7D9:   Call 0.Method_Proc_270_13_137ED000 (CInt(0), var_194)
  loc_137E7E1:   var_194.Text = CStr(var_18C)
  loc_137E88B:   var_12C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AgeParameter"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("AgeParameter"))))
  loc_137E8A2:   Set var_190 = Me.Txt
  loc_137E8A8:   Call 0.Method_Proc_270_13_137ED000 (CInt(5), var_194)
  loc_137E8B0:   var_194.Text = CStr(var_12C)
  loc_137E95A:   var_12C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemberFacilityBilling"))) = vbNullString), "Semi", Trim(CVar(Me.Recordset15.Fields.Item("MemberFacilityBilling"))))
  loc_137E971:   Set var_190 = Me.Txt
  loc_137E977:   Call 0.Method_Proc_270_13_137ED000 (CInt(6), var_194)
  loc_137E97F:   var_194.Text = CStr(var_12C)
  loc_137EA29:   var_12C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemberVarification"))) = vbNullString), "Semi", Trim(CVar(Me.Recordset15.Fields.Item("MemberVarification"))))
  loc_137EA40:   Set var_190 = Me.Txt
  loc_137EA46:   Call 0.Method_Proc_270_13_137ED000 (CInt(9), var_194)
  loc_137EA4E:   var_194.Text = CStr(var_12C)
  loc_137EAF8:   var_12C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemberVarificationInKOT"))) = vbNullString), "Semi", Trim(CVar(Me.Recordset15.Fields.Item("MemberVarificationInKOT"))))
  loc_137EB0F:   Set var_190 = Me.Txt
  loc_137EB15:   Call 0.Method_Proc_270_13_137ED000 (CInt(&HA), var_194)
  loc_137EB1D:   var_194.Text = CStr(var_12C)
  loc_137EBC7:   var_12C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AutoMemberBilling"))) = vbNullString), "Conditional", Trim(CVar(Me.Recordset15.Fields.Item("AutoMemberBilling"))))
  loc_137EBDE:   Set var_190 = Me.Txt
  loc_137EBE4:   Call 0.Method_Proc_270_13_137ED000 (CInt(&HB), var_194)
  loc_137EBEC:   var_194.Text = CStr(var_12C)
  loc_137EC96:   var_12C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MemberSaleBillDiscEditable"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("MemberSaleBillDiscEditable"))))
  loc_137ECAD:   Set var_190 = Me.Txt
  loc_137ECB3:   Call 0.Method_Proc_270_13_137ED000 (CInt(&HC), var_194)
  loc_137ECBB:   var_194.Text = CStr(var_12C)
  loc_137ECE8:   Set var_88 = Nothing
  loc_137ECF0:   Set var_90 = Nothing
  loc_137ECF3: End If
  loc_137ECF3: Call Proc_270_14_E50ADC(1)
  loc_137ECF8: Exit Sub
  loc_137ECF9: ' Referenced from: 137E490
  loc_137ECF9: Proc_6_60_E63754()
  loc_137ECFE: Exit Sub
End Sub

Public Sub Proc_270_14_E50ADC
  'Data Table: 48FD70
  loc_E50AC3: If (Me.FrmList.Visible = &HFF) Then
  loc_E50AD2:   Me.FrmList.Visible = False
  loc_E50ADA: End If
  loc_E50ADA: Exit Sub
End Sub
