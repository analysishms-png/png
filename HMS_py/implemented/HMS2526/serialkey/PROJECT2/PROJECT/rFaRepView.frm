VERSION 5.00
Begin VB.Form rFaRepView
  Caption = "Financ Report"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin PictureBox PictParameter
    BackColor = &HFFC0FF&
    Left = 0
    Top = 0
    Width = 6930
    Height = 3090
    TabIndex = 7
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin MainCtrl TopCtrl1
      Left = 180
      Top = 6990
      Width = 375
      Height = 345
      Visible = 0   'False
      TabIndex = 71
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HC0FFFF&
      ForeColor = &H80000012&
      Left = 1860
      Top = 90
      Width = 690
      Height = 240
      Visible = 0   'False
      TabIndex = 70
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 1
      BackColor = &HFF8080&
      ForeColor = &HFFFF&
      Left = 240
      Top = 1845
      Width = 915
      Height = 195
      Visible = 0   'False
      TabIndex = 65
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 2
      BackColor = &HFF8080&
      ForeColor = &HFFFF&
      Left = 5010
      Top = 1830
      Width = 870
      Height = 195
      Visible = 0   'False
      TabIndex = 64
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtSearch
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 1185
      Top = 2355
      Width = 2055
      Height = 240
      Visible = 0   'False
      TabIndex = 63
      BorderStyle = 0 'None
      HideSelection = 0   'False
      Appearance = 0 'Flat
    End
    Begin PictureBox Pic
      BackColor = &H800000&
      Left = 120
      Top = 9315
      Width = 11820
      Height = 435
      Enabled = 0   'False
      TabIndex = 61
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
      BorderStyle = 0 'None
      TabStop = 0   'False
      Begin Label LblTitle
        BackColor = &H0&
        ForeColor = &HC0C0FF&
        Left = 7230
        Top = 0
        Width = 4470
        Height = 315
        TabIndex = 62
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Appearance = 0 'Flat
      End
    End
    Begin CommandButton BTNPRINT
      Caption = "Windows &Print"
      Index = 0
      BackColor = &HC0C0C0&
      Left = 4635
      Top = 6090
      Width = 1620
      Height = 375
      TabIndex = 60
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Print Report"
    End
    Begin CommandButton BTNEXIT
      Caption = "E&xit"
      BackColor = &HC0C0C0&
      Left = 6255
      Top = 6090
      Width = 1620
      Height = 375
      TabIndex = 59
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rFaRepView.frx":0
      ToolTipText = "Exit Form"
    End
    Begin TextBox TXTE_DATE
      Left = 9930
      Top = 2760
      Width = 1395
      Height = 315
      Visible = 0   'False
      TabIndex = 58
      Appearance = 0 'Flat
    End
    Begin TextBox TXTS_DATE
      Left = 9945
      Top = 3090
      Width = 1395
      Height = 315
      Visible = 0   'False
      TabIndex = 57
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin Frame FrmList
      Left = 7020
      Top = 210
      Width = 4560
      Height = 1830
      Visible = 0   'False
      TabIndex = 55
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 0
        Top = 0
        Width = 4560
        Height = 1830
        TabStop = 0   'False
        TabIndex = 56
      End
    End
    Begin TextBox TXTACC_CODE
      Left = 9930
      Top = 2100
      Width = 1395
      Height = 315
      Visible = 0   'False
      TabIndex = 54
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin TextBox TXTACC_CODE1
      Left = 9930
      Top = 2430
      Width = 1395
      Height = 315
      Visible = 0   'False
      TabIndex = 53
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin CommandButton BTNPRINT
      Caption = "&Dos Print"
      Index = 1
      BackColor = &HC0C0C0&
      Left = 3015
      Top = 6090
      Width = 1620
      Height = 375
      TabIndex = 52
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Print Report"
    End
    Begin CommandButton BtnParam
      Caption = "Parameters"
      BackColor = &HC0C0C0&
      Left = 0
      Top = 0
      Width = 1305
      Height = 375
      Visible = 0   'False
      TabIndex = 51
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rFaRepView.frx":3132
      ToolTipText = "Print Report"
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 3
      BackColor = &HFF8080&
      ForeColor = &HFFFF&
      Left = 5085
      Top = 3570
      Width = 870
      Height = 195
      Visible = 0   'False
      TabIndex = 50
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtDetails
      BackColor = &HE0E0E0&
      Left = 210
      Top = 4005
      Width = 4980
      Height = 735
      Visible = 0   'False
      TabIndex = 49
      MultiLine = -1  'True
      TabStop = 0   'False
      MaxLength = 255
      Locked = -1  'True
      Appearance = 0 'Flat
    End
    Begin Frame FrDetail
      BackColor = &HFF8080&
      ForeColor = &H80000008&
      Left = 1275
      Top = 4860
      Width = 8160
      Height = 4335
      Visible = 0   'False
      TabIndex = 11
      Appearance = 0 'Flat
      BorderStyle = 0 'None
      Begin TextBox TEXT
        Index = 6
        Left = 1725
        Top = 1305
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "No"
        TabIndex = 26
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 4
        Left = 1725
        Top = 1005
        Width = 4440
        Height = 285
        Visible = 0   'False
        TabIndex = 25
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 3
        Left = 1725
        Top = 705
        Width = 4440
        Height = 285
        Visible = 0   'False
        TabIndex = 24
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 2
        Left = 4695
        Top = 1305
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "0"
        TabIndex = 23
        BorderStyle = 0 'None
        Alignment = 1 'Right Justify
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 1
        Left = 1725
        Top = 405
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "0"
        TabIndex = 22
        BorderStyle = 0 'None
        Alignment = 1 'Right Justify
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 0
        Left = 1725
        Top = 105
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "0"
        TabIndex = 21
        BorderStyle = 0 'None
        Alignment = 1 'Right Justify
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 5
        Left = 4695
        Top = 1605
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "10"
        TabIndex = 20
        BorderStyle = 0 'None
        Alignment = 1 'Right Justify
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 7
        Left = 1725
        Top = 1605
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "No"
        TabIndex = 19
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin CommandButton BtnClose
        Caption = "Close"
        BackColor = &HC0C0C0&
        Left = 6360
        Top = 840
        Width = 1620
        Height = 375
        TabIndex = 18
        BeginProperty Font
          Name = "Arial"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        DownPicture = "rFaRepView.frx":6264
        ToolTipText = "Print Report"
      End
      Begin TextBox TEXT
        Index = 8
        Left = 1245
        Top = 105
        Width = 330
        Height = 285
        Visible = 0   'False
        Text = ">="
        TabIndex = 17
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 9
        Left = 1245
        Top = 405
        Width = 330
        Height = 285
        Visible = 0   'False
        Text = ">="
        TabIndex = 16
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 10
        Left = 4230
        Top = 1305
        Width = 330
        Height = 285
        Visible = 0   'False
        Text = ">="
        TabIndex = 15
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 11
        Left = 4770
        Top = 105
        Width = 990
        Height = 285
        Visible = 0   'False
        Text = "Yes"
        TabIndex = 14
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 12
        Left = 4770
        Top = 405
        Width = 2610
        Height = 285
        Visible = 0   'False
        TabIndex = 13
        BorderStyle = 0 'None
        MaxLength = 20
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 13
        Left = 6795
        Top = 105
        Width = 990
        Height = 285
        Visible = 0   'False
        Text = "Yes"
        TabIndex = 12
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin SSTab SSTab1
        Left = 45
        Top = 1995
        Width = 8070
        Height = 2310
        Visible = 0   'False
        TabIndex = 27
        Begin TextBox TxtFooter
          Index = 0
          Left = -74985
          Top = 465
          Width = 7980
          Height = 330
          TabIndex = 37
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtFooter
          Index = 1
          Left = -74985
          Top = 795
          Width = 7980
          Height = 330
          TabIndex = 36
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtFooter
          Index = 2
          Left = -74985
          Top = 1125
          Width = 7980
          Height = 330
          TabIndex = 35
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtFooter
          Index = 3
          Left = -74985
          Top = 1455
          Width = 7980
          Height = 330
          TabIndex = 34
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtFooter
          Index = 4
          Left = -74985
          Top = 1785
          Width = 7980
          Height = 330
          TabIndex = 33
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 0
          Left = 15
          Top = 465
          Width = 7980
          Height = 330
          TabIndex = 32
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 1
          Left = 15
          Top = 795
          Width = 7980
          Height = 330
          TabIndex = 31
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 2
          Left = 15
          Top = 1125
          Width = 7980
          Height = 330
          TabIndex = 30
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 3
          Left = 15
          Top = 1455
          Width = 7980
          Height = 330
          TabIndex = 29
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 4
          Left = 15
          Top = 1785
          Width = 7980
          Height = 330
          TabIndex = 28
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
      End
      Begin Label Label1
        Caption = "As Per Detail"
        Index = 3
        ForeColor = &H80000006&
        Left = 120
        Top = 1350
        Width = 1125
        Height = 195
        Visible = 0   'False
        TabIndex = 48
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label1
        Caption = "TxN.Amt.  "
        Index = 2
        ForeColor = &H80000006&
        Left = 3180
        Top = 1350
        Width = 915
        Height = 195
        Visible = 0   'False
        TabIndex = 47
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label1
        Caption = "Cr.Balance "
        Index = 1
        ForeColor = &H80000006&
        Left = 120
        Top = 450
        Width = 990
        Height = 195
        Visible = 0   'False
        TabIndex = 46
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label1
        Caption = "Dr.Balance"
        Index = 0
        ForeColor = &H80000006&
        Left = 120
        Top = 150
        Width = 960
        Height = 195
        Visible = 0   'False
        TabIndex = 45
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label5
        Caption = "Narr. Having"
        ForeColor = &H80000006&
        Left = 120
        Top = 750
        Width = 1095
        Height = 195
        Visible = 0   'False
        TabIndex = 44
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label6
        Caption = "Narr. Not Having"
        ForeColor = &H80000006&
        Left = 120
        Top = 1050
        Width = 1455
        Height = 195
        Visible = 0   'False
        TabIndex = 43
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label4
        Caption = "Interest"
        ForeColor = &H80000006&
        Left = 3180
        Top = 1650
        Width = 660
        Height = 195
        Visible = 0   'False
        TabIndex = 42
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label1
        Caption = "Narration in Detail"
        Index = 4
        ForeColor = &H80000006&
        Left = 120
        Top = 1650
        Width = 1560
        Height = 195
        Visible = 0   'False
        TabIndex = 41
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label1
        Caption = "Print Narration"
        Index = 5
        ForeColor = &H80000006&
        Left = 3360
        Top = 150
        Width = 1245
        Height = 195
        Visible = 0   'False
        TabIndex = 40
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label1
        Caption = "For Site"
        Index = 6
        ForeColor = &H80000006&
        Left = 3360
        Top = 450
        Width = 675
        Height = 195
        Visible = 0   'False
        TabIndex = 39
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label1
        Caption = "Print Vr.No"
        Index = 7
        ForeColor = &H80000006&
        Left = 5790
        Top = 150
        Width = 945
        Height = 195
        Visible = 0   'False
        TabIndex = 38
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin DataGrid DGSite
      Left = 6675
      Top = 4110
      Width = 4230
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 8
    End
End

Attribute VB_Name = "rFaRepView"

Private global_130 As Integer
Private global_128 As Integer
Private global_164 As Variant
Private global_180 As Integer
Private global_162 As Integer
Private global_142 As Integer
Private global_140 As Integer
Private global_144 As Variant
Private global_132 As Double

Private Sub DGAccount_UnknownEvent_9 'FD5854
  'Data Table: 58C0E4
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FD569C: On Error Goto loc_FD5829
  loc_FD56AE: (False).Visible = 
  loc_FD56CD: If (Me.RecordCount > 0) Then
  loc_FD56EA:   var_EC = Val(CStr(().Tag))
  loc_FD5729:   Set var_CC = Me.TxtGrid
  loc_FD572F:   Call 0.Method_DGAccount_UnknownEvent_90 (CInt(var_EC), var_D0)
  loc_FD5737:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD575B:   Set var_B4 = (var_EC)
  loc_FD5771:   var_EC = Val(CStr(var_B4.Tag))
  loc_FD57B0:   Set var_CC = Me.TxtGrid
  loc_FD57B6:   Call 0.Method_DGAccount_UnknownEvent_90 (CInt(var_EC), var_D0)
  loc_FD57BE:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD57DE: End If
  loc_FD57F0: var_C8 = CStr((var_EC).Tag)
  loc_FD5806: Set var_B0 = Me.TxtGrid
  loc_FD580C: Call 0.Method_DGAccount_UnknownEvent_90 (CInt(Val(var_C8)), var_B4)
  loc_FD5814: var_B4.SetFocus
  loc_FD5828: Exit Sub
  loc_FD5829: ' Referenced from: FD569C
  loc_FD582F: Call 0.Method_arg_50 (var_C8)
  loc_FD5844: Proc_183_57_104B0BC(var_C8, "DGAccount_Click")
  loc_FD5850: Exit Sub
End Sub

Private Sub btnExit_Click() 'E1969C
  'Data Table: 58C0E4
  loc_E19691: Me.Global.Unload Me
  loc_E19699: Exit Sub
End Sub

Private Sub BtnClose_Click() '116A0F0
  'Data Table: 58C0E4
  Dim var_88 As Frame
  Dim var_CC As Variant
  Dim var_22C As Variant
  Dim var_38C As Variant
  Dim var_3E8 As String
  Dim unk_58C129 As Connection15
  loc_1169E14: On Error Goto loc_116A0C6
  loc_1169E23: Me.FrDetail.Visible = False
  loc_1169E36: If (GRepFormName = "LedDeb") Then
  loc_1169E59:   Set var_88 = Me.TxtHeader
  loc_1169E5F:   Call 0.Method_BtnClose_Click0 (0, var_8C, CVar("UPDATE FAENVIRO SET " & "TagadaHeader1="))
  loc_1169E6E:   Proc_183_9_EAB2F0(var_AC, CVar(var_8C), var_408)
  loc_1169E76:   var_CC = -1 & var_AC 
  loc_1169E8C:   Set var_F0 = Me.TxtHeader
  loc_1169E92:   Call 0.Method_BtnClose_Click0 (1, var_F4)
  loc_1169EA1:   Proc_183_9_EAB2F0(var_114, CVar(var_F4))
  loc_1169EBF:   Set var_148 = Me.TxtHeader
  loc_1169EC5:   Call 0.Method_BtnClose_Click0 (2, var_14C)
  loc_1169ED4:   Proc_183_9_EAB2F0(var_16C, CVar(var_14C))
  loc_1169EF2:   Set var_1A0 = Me.TxtHeader
  loc_1169EF8:   Call 0.Method_BtnClose_Click0 (3, var_1A4)
  loc_1169F07:   Proc_183_9_EAB2F0(var_1C4, CVar(var_1A4))
  loc_1169F25:   Set var_1F8 = Me.TxtHeader
  loc_1169F2B:   Call 0.Method_BtnClose_Click0 (4, var_1FC)
  loc_1169F3A:   Proc_183_9_EAB2F0(var_21C, CVar(var_1FC))
  loc_1169F42:   var_22C = var_CC & ",TagadaHeader2= " & var_114 & ",TagadaHeader3= " & var_16C & ",TagadaHeader4= " & var_1C4 & ",TagadaHeader5= " & var_21C 
  loc_1169F58:   Set var_250 = Me.TxtFooter
  loc_1169F5E:   Call 0.Method_BtnClose_Click0 (0, var_254)
  loc_1169F6D:   Proc_183_9_EAB2F0(var_274, CVar(var_254))
  loc_1169F8B:   Set var_2A8 = Me.TxtFooter
  loc_1169F91:   Call 0.Method_BtnClose_Click0 (1, var_2AC)
  loc_1169FA0:   Proc_183_9_EAB2F0(var_2CC, CVar(var_2AC))
  loc_1169FBE:   Set var_300 = Me.TxtFooter
  loc_1169FC4:   Call 0.Method_BtnClose_Click0 (2, var_304)
  loc_1169FD3:   Proc_183_9_EAB2F0(var_324, CVar(var_304))
  loc_1169FF1:   Set var_358 = Me.TxtFooter
  loc_1169FF7:   Call 0.Method_BtnClose_Click0 (3, var_35C)
  loc_116A006:   Proc_183_9_EAB2F0(var_37C, CVar(var_35C))
  loc_116A00E:   var_38C = var_22C & ",TagadaFooter1= " & var_274 & ",TagadaFooter2= " & var_2CC & ",TagadaFooter3= " & var_324 & ",TagadaFooter4= " & var_37C 
  loc_116A024:   Set var_3B0 = Me.TxtFooter
  loc_116A02A:   Call 0.Method_BtnClose_Click0 (4, var_3B4)
  loc_116A039:   Proc_183_9_EAB2F0(var_3D4, CVar(var_3B4))
  loc_116A045:   var_3E8 = CStr(var_38C & ",TagadaFooter5= " & var_3D4)
  loc_116A04F:   unk_58C129.Execute var_3E8, var_40C, 
  loc_116A0C5: End If
  loc_116A0C5: Exit Sub
  loc_116A0C6: ' Referenced from: 1169E14
  loc_116A0CC: Call 0.Method_arg_50 (var_3E8)
  loc_116A0D4: var_414 = "BTNCLOSE_Click"
  loc_116A0E1: Proc_183_57_104B0BC(var_3E8)
  loc_116A0ED: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '11A08AC
  'Data Table: 58C0E4
  Dim var_A0 As PictureBox
  loc_11A04A0: On Error Goto loc_11A0862
  loc_11A04A8: global_130 = &HFF
  loc_11A04B1: var_88 = GRepFormName
  loc_11A04BC: If (var_88 = "DayBook") Then
  loc_11A04C2:   Call Proc_245_77_1620918(Index)
  loc_11A04CA: Else
  loc_11A04D2:   If (var_88 = "Led") Then
  loc_11A04E1:     Call Proc_245_79_1ED3970(Index, "Led")
  loc_11A04EC:   Else
  loc_11A04F4:     If (var_88 = "LedInt") Then
  loc_11A0503:       Call Proc_245_79_1ED3970(Index, "LedInt")
  loc_11A050E:     Else
  loc_11A0516:       If (var_88 = "CashBook") Then
  loc_11A051C:         Call Proc_245_76_192FA28(Index)
  loc_11A0524:       Else
  loc_11A052C:         If (var_88 = "BankBook") Then
  loc_11A0532:           Call Proc_245_76_192FA28(Index)
  loc_11A053A:         Else
  loc_11A0542:           If (var_88 = "JournalBook") Then
  loc_11A0548:             Call Proc_245_75_1508BD8(Index)
  loc_11A0550:           Else
  loc_11A0558:             If (var_88 = "Annexure") Then
  loc_11A055E:               Call Proc_245_68_17B9C74(Index)
  loc_11A0566:             Else
  loc_11A056E:               If (var_88 = "AgingDr") Then
  loc_11A057D:                 Call Proc_245_69_17B3C84(Index, "Dr")
  loc_11A0588:               Else
  loc_11A0590:                 If (var_88 = "AgingCr") Then
  loc_11A059F:                   Call Proc_245_69_17B3C84(Index, "Cr")
  loc_11A05AA:                 Else
  loc_11A05B2:                   If (var_88 = "BankReg") Then
  loc_11A05B8:                     Call Proc_245_70_127EBAC(Index)
  loc_11A05C0:                   Else
  loc_11A05C8:                     If (var_88 = "Clg") Then
  loc_11A05CE:                       Call Proc_245_72_1270E14(Index)
  loc_11A05D6:                     Else
  loc_11A05DE:                       If (var_88 = "ClgNot") Then
  loc_11A05E4:                         Call Proc_245_73_11F9200(Index)
  loc_11A05EC:                       Else
  loc_11A05F4:                         If (var_88 = "LedDeb") Then
  loc_11A0603:                           Call Proc_245_79_1ED3970(Index, "LedDeb")
  loc_11A060E:                         Else
  loc_11A0616:                           If (var_88 = "LedCred") Then
  loc_11A0625:                             Call Proc_245_79_1ED3970(Index, "LedCred")
  loc_11A0630:                           Else
  loc_11A0638:                             If (var_88 = "DailySumm") Then
  loc_11A063E:                               Call Proc_245_74_13B4588(Index)
  loc_11A0646:                             Else
  loc_11A064E:                               If (var_88 = "NonTrans") Then
  loc_11A0654:                                 Call Proc_245_71_14C1B68(Index)
  loc_11A065C:                               Else
  loc_11A0664:                                 If (var_88 = "DetailedTrial") Then
  loc_11A066A:                                   Call Proc_245_78_15A8130(Index)
  loc_11A0672:                                 Else
  loc_11A067A:                                   If (var_88 = "RefReport") Then
  loc_11A0685:                                     Call Proc_245_67_153D050(Index)
  loc_11A068D:                                   Else
  loc_11A0695:                                     If (var_88 = "AcCheckList") Then
  loc_11A06A4:                                       Call Proc_245_79_1ED3970(Index, "AcCheckList")
  loc_11A06AF:                                     Else
  loc_11A06B7:                                       If (var_88 = "DUELIST") Then
  loc_11A06BA:                                         Call Proc_245_80_1774DC4(global_130)
  loc_11A06C2:                                       Else
  loc_11A06CA:                                         If (var_88 = "CONTROLLED") Then
  loc_11A06D0:                                           Call Proc_245_81_147F83C(Index)
  loc_11A06D8:                                         Else
  loc_11A06E0:                                           If (var_88 = "RozNamcha") Then
  loc_11A06E6:                                             Call Proc_245_84_191EDCC(Index)
  loc_11A06EE:                                           Else
  loc_11A06F6:                                             If (var_88 = "BudgetVariance") Then
  loc_11A06FC:                                               Call Proc_245_85_196E2B0(Index)
  loc_11A0704:                                             Else
  loc_11A070C:                                               If (var_88 = "Budget") Then
  loc_11A0712:                                                 Call Proc_245_86_17DCEF0(Index)
  loc_11A071A:                                               Else
  loc_11A0722:                                                 If (var_88 = "AgingRepDr") Then
  loc_11A0728:                                                   var_8C = "Dr"
  loc_11A0731:                                                   Call Proc_245_89_17F0220(Index)
  loc_11A073C:                                                 Else
  loc_11A0744:                                                   If (var_88 = "AgingRepCr") Then
  loc_11A074A:                                                     var_8C = "Cr"
  loc_11A0753:                                                     Call Proc_245_89_17F0220(Index, var_8C)
  loc_11A075B:                                                   End If
  loc_11A075B:                                                 End If
  loc_11A075B:                                               End If
  loc_11A075B:                                             End If
  loc_11A075B:                                           End If
  loc_11A075B:                                         End If
  loc_11A075B:                                       End If
  loc_11A075B:                                     End If
  loc_11A075B:                                   End If
  loc_11A075B:                                 End If
  loc_11A075B:                               End If
  loc_11A075B:                             End If
  loc_11A075B:                           End If
  loc_11A075B:                         End If
  loc_11A075B:                       End If
  loc_11A075B:                     End If
  loc_11A075B:                   End If
  loc_11A075B:                 End If
  loc_11A075B:               End If
  loc_11A075B:             End If
  loc_11A075B:           End If
  loc_11A075B:         End If
  loc_11A075B:       End If
  loc_11A075B:     End If
  loc_11A075B:   End If
  loc_11A075B: End If
  loc_11A0764: If (global_130 = 0) Then
  loc_11A0775:   Me.PictParameter.Width = CDbl(0)
  loc_11A077D:   Call Form_Resize()
  loc_11A0782:   Exit Sub
  loc_11A0783: End If
  loc_11A0789: If (Index = 1) Then
  loc_11A0792:   var_A4 = GRepFormName
  loc_11A079D:   If Not (var_A4 = "BudgetVariance") Then
  loc_11A07A8:     If (var_A4 = "Budget") Then
  loc_11A07AB:     End If
  loc_11A07AB:     Call Proc_245_65_1750F20(var_8C)
  loc_11A07B0:   End If
  loc_11A07B6:   Call 0.Method_arg_150 ()
  loc_11A07CC:   Call Proc_245_92_14984AC(MemVar_1F951E8, Index)
  loc_11A07D4: Else
  loc_11A07DA:   var_AC = GRepFormName
  loc_11A07E5:   If Not (var_AC = "AgingDr") Then
  loc_11A07F0:     If Not (var_AC = "AgingCr") Then
  loc_11A07FB:       If Not (var_AC = "AgingRepDr") Then
  loc_11A0806:         If (var_AC = "AgingRepCr") Then
  loc_11A0809:         End If
  loc_11A0809:       End If
  loc_11A0809:     End If
  loc_11A080C:   Else
  loc_11A0814:     If Not (var_AC = "BudgetVariance") Then
  loc_11A081F:       If (var_AC = "Budget") Then
  loc_11A0822:       End If
  loc_11A0822:       Call Proc_245_65_1750F20(global_120)
  loc_11A082A:     Else
  loc_11A082A:       Call Proc_245_65_1750F20(&HFF)
  loc_11A082F:     End If
  loc_11A082F:   End If
  loc_11A0835:   Call 0.Method_arg_150 ()
  loc_11A084B:   Call Proc_245_92_14984AC(MemVar_1F951E8, Index)
  loc_11A0850: End If
  loc_11A0855: global_128 = 0
  loc_11A085D: MemVar_1F951E8 = Nothing
  loc_11A0861: Exit Sub
  loc_11A0862: ' Referenced from: 11A04A0
  loc_11A086A: Set var_A0 = Err()
  loc_11A0870: Call 0.Method_arg_2C (var_8C, global_128)
  loc_11A087B: Call 0.Method_arg_50 (var_B0, global_120)
  loc_11A0897: MsgBox(CVar(var_8C), &H10, CVar(var_B0), var_E0, var_100)
  loc_11A08AA: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) '1022548
  'Data Table: 58C0E4
  Dim var_8C As CheckBox
  Dim var_A0 As Variant
  loc_1022320: On Error Goto loc_102251F
  loc_1022330: Set var_88 = Me.Check1
  loc_1022336: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_1022354: If (CLng(var_8C.Value) = 0) Then
  loc_1022365:   Set var_88 = var_8C(Index)
  loc_102236B:   Call 0.Method_Check1_Click0 (True)
  loc_1022373:   var_8C.Enabled = 
  loc_1022389:   Set var_88 = var_8C(Index)
  loc_102238F:   Call 0.Method_Check1_Click0 ()
  loc_10223B0:   If (CLng(Check1.DispID_4) > 1) Then
  loc_10223C6:     Set var_88 = var_8C(Index)
  loc_10223CC:     Call 0.Method_Check1_Click0 (1)
  loc_10223F3:     Set var_88 = var_8C(Index)
  loc_10223F9:     Call 0.Method_Check1_Click0 (1)
  loc_102240D:   End If
  loc_1022410: Else
  loc_102241F:   Set var_88 = var_8C(Index)
  loc_1022425:   Call 0.Method_Check1_Click0 (False, Check1.DispID_B)
  loc_102242D:   var_8C.Enabled = Check1.DispID_A
  loc_1022443:   Set var_88 = var_8C(Index)
  loc_1022449:   Call 0.Method_Check1_Click0 ()
  loc_102246A:   If (CLng(Check1.DispID_4) > 1) Then
  loc_1022480:     Set var_88 = var_8C(Index)
  loc_1022486:     Call 0.Method_Check1_Click0 (0)
  loc_10224AD:     Set var_88 = var_8C(Index)
  loc_10224B3:     Call 0.Method_Check1_Click0 (0)
  loc_10224D1:     Set var_88 = var_8C(Index)
  loc_10224D7:     Call 0.Method_Check1_Click0 (Check1.DispID_B)
  loc_10224EE:     var_A0 = CVar((CLng(Check1.DispID_4) - 1)) 'Long
  loc_10224FD:     Set var_C4 = var_C8(Index)
  loc_1022503:     Call 0.Method_Check1_Click0 (0)
  loc_102251E:   End If
  loc_102251E: End If
  loc_102251E: Exit Sub
  loc_102251F: ' Referenced from: 1022320
  loc_1022525: Call 0.Method_arg_50 (var_CC, Check1.DispID_C)
  loc_102253A: Proc_183_57_104B0BC(var_CC, "Check1_Click")
  loc_1022546: Exit Sub
End Sub

Private Sub Check1_GotFocus(Index As Integer) 'E43C44
  'Data Table: 58C0E4
  Dim var_8C As CheckBox
  loc_E43C27: Set var_88 = Me.Check1
  loc_E43C2D: Call 0.Method_Check1_GotFocus0 (Index, var_8C)
  loc_E43C35: var_8C.BackColor = &HFF
  loc_E43C41: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E20C2C
  'Data Table: 58C0E4
  loc_E20C12: If (Shift = &HD) Then
  loc_E20C23:   Proc_303_0_FBACC8("	")
  loc_E20C2B: End If
  loc_E20C2B: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'E43DD4
  'Data Table: 58C0E4
  Dim var_8C As CheckBox
  loc_E43DB7: Set var_88 = Me.Check1
  loc_E43DBD: Call 0.Method_Check1_Validate0 (Cancel, var_8C)
  loc_E43DC5: var_8C.BackColor = &H800000
  loc_E43DD1: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_10 'E0F6D0
  'Data Table: 58C0E4
  Dim var_94 As Integer
  loc_E0F6C6: Call global_192.PrinterSetup
  loc_E0F6CC: Exit Sub
  loc_E0F6CD: var_94() = 
End Sub

Private Sub CRViewer1_UnknownEvent_1D 'E0FCB4
  'Data Table: 58C0E4
  loc_E0FCAA: ().SetFocus
  loc_E0FCB2: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_21 'FC781C
  'Data Table: 58C0E4
  Dim var_94 As Variant
  Dim var_BC As String
  Dim var_A8 As CheckBox
  loc_FC7681: Set var_A8 = 0(True)
  loc_FC768F: On Error Goto loc_FC7817
  loc_FC76A7: var_BC = "CSV (Comma delimited)(*.csv)|*.csv|" & "Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Word Document(*.doc)|*.doc|"
  loc_FC76BD: Set var_A8 = Check1.DispID_12(CVar(var_BC & "Adobe Acrobat(*.pdf)|*.pdf|" & "Other Formats(*.*)|*.*"))
  loc_FC76E3: Set var_A8 = Check1.DispID_3("Select File Name")
  loc_FC76FF: Set var_A8 = Check1.DispID_2(global_208)
  loc_FC7711: Set var_A8 = (Check1.DispID_1)
  loc_FC7717: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_1F
  loc_FC7726: Set var_A8 = ()
  loc_FC7745: If (CStr(Check1.DispID_1) <> vbNullString) Then
  loc_FC7761:   Set var_D4 = global_192.ExportOptions 
  loc_FC776D:   Call 0.Method_arg_2C (1)
  loc_FC7779:   Set var_A8 = (var_D8)
  loc_FC778D:   Call Proc_245_90_EB0E2C(CByte(CInt(Check1.DispID_17)))
  loc_FC779A:   Call 0.Method_arg_24 (CLng(var_D8))
  loc_FC77A9:   Set var_A8 = ()
  loc_FC77BD:   Call 0.Method_arg_3C (CStr(Check1.DispID_1))
  loc_FC77CD:   Set var_D4 = Nothing 
  loc_FC77D5:   Set var_A8 = ()
  loc_FC77EC:   If (CInt(Check1.DispID_17) = 6) Then
  loc_FC77EF:     var_94 = True
  loc_FC77FB:     Call global_192.Export
  loc_FC7804:   Else
  loc_FC7804:     var_94 = False
  loc_FC7811:     Call global_192.Export
  loc_FC7817:   End If
  loc_FC7817:   ' Referenced from: FC768F
  loc_FC7817: End If
  loc_FC7817: Exit Sub
  loc_FC7818: Exit Sub
End Sub

Private Sub TEXT_GotFocus(Index As Integer) '10F7AA4
  'Data Table: 58C0E4
  Dim var_8A As Integer
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_108 As TextBox
  Dim var_134 As Variant
  loc_10F7798: On Error Goto loc_10F7A79
  loc_10F779E: var_8A = Index
  loc_10F77A9: If Not (var_8A = CInt(&HA)) Then
  loc_10F77B4:   If Not (var_8A = CInt(9)) Then
  loc_10F77BF:     If (var_8A = CInt(8)) Then
  loc_10F77C2:     End If
  loc_10F77C2:   End If
  loc_10F77CF:   ReDim var_90(0 To 5)
  loc_10F77E6:   var_90(0) = "="
  loc_10F77F5:   var_90(1) = "<"
  loc_10F7804:   var_90(2) = "<="
  loc_10F7813:   var_90(3) = ">"
  loc_10F7822:   var_90(4) = ">="
  loc_10F7831:   var_90(5) = "<>"
  loc_10F7848:   global_164 = Array(var_90)
  loc_10F786E:   Set var_108 = Me.TEXT
  loc_10F7888:   Set global_184 = Proc_183_37_EFEF78(Me.ListView, var_108, Index, global_164)
  loc_10F789C: Else
  loc_10F78A4:   If (var_8A = CInt(&HC)) Then
  loc_10F78C3:     Me.Recordset15.CursorLocation = 3
  loc_10F78DA:     var_B0 = CVar(MemVar_1F951E0) 'Address
  loc_10F78EB:     Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", var_B0, 0
  loc_10F78F9:     CVarUnk
  loc_10F78FE:     VerifyVarObj
  loc_10F7904:     Set var_104 = Me.DGSite
  loc_10F790A:     LateIdStAd
  loc_10F796C:     Call 0.Method_TEXT_GotFocus0 (Index, var_108, var_124, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.TEXT, New)
  loc_10F7974:     1 = var_108.Text
  loc_10F798C:     If (-1 Or (var_124 = vbNullString)) Then
  loc_10F798F:       Exit Sub
  loc_10F7990:     End If
  loc_10F799D:     Set var_104 = Me.TEXT
  loc_10F79A3:     Call 0.Method_TEXT_GotFocus0 (Index, var_108, var_124)
  loc_10F79AB:     6 = var_108.Text
  loc_10F79B3:     var_134 = CVar(var_124) 'String
  loc_10F79F8:     If CBool(var_134 <> Me.Fields.Item("Name").Value) Then
  loc_10F7A01:       Me.MoveFirst
  loc_10F7A26:       Set var_104 = Me.TEXT
  loc_10F7A2C:       Call 0.Method_TEXT_GotFocus0 (Index, var_108, var_124, "Name =", 0)
  loc_10F7A34:       1 = var_108.Text
  loc_10F7A42:       Proc_183_9_EAB2F0(var_134, CVar(var_124), var_B0)
  loc_10F7A58:       Me.Find CStr(global_164 & var_134), var_8A, 
  loc_10F7A70:     End If
  loc_10F7A70:   End If
  loc_10F7A70: End If
  loc_10F7A75: Set var_88 = Nothing
  loc_10F7A78: Exit Sub
  loc_10F7A79: ' Referenced from: 10F7798
  loc_10F7A7F: Call 0.Method_arg_50 (var_124)
  loc_10F7A87: var_14C = "Text_GotFocus"
  loc_10F7A94: Proc_183_57_104B0BC(var_124)
  loc_10F7AA0: Exit Sub
End Sub

Private Sub TEXT_KeyDown(KeyCode As Integer, Shift As Integer) '109F3A0
  'Data Table: 58C0E4
  Dim var_8C As Integer
  Dim var_90 As Frame
  Dim var_98 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_CC As TextBox
  loc_109F110: On Error Goto loc_109F375
  loc_109F119: If (Shift = &HD) Then
  loc_109F124:   var_88 = "	"
  loc_109F12A:   Proc_303_0_FBACC8(var_88)
  loc_109F132: End If
  loc_109F135: var_8C = KeyCode
  loc_109F13E: If Not (var_8C = 0) Then
  loc_109F147:   If Not (var_8C = 1) Then
  loc_109F150:     If (var_8C = 2) Then
  loc_109F153:     End If
  loc_109F153:   End If
  loc_109F15D:   Set var_90 = Me.TEXT
  loc_109F163:   Call 0.Method_TEXT_KeyDown0 (KeyCode, var_94)
  loc_109F17E:   Proc_183_21_FA21CC(var_94, Shift, &HA)
  loc_109F18D: Else
  loc_109F193:   If (var_8C = 5) Then
  loc_109F1A0:     Set var_90 = Me.TEXT
  loc_109F1A6:     Call 0.Method_TEXT_KeyDown0 (KeyCode, var_94, 2)
  loc_109F1BB:     Set var_98 = var_94
  loc_109F1C1:     Proc_183_21_FA21CC(var_98, Shift, 3)
  loc_109F1D0:   Else
  loc_109F1D8:     If Not (var_8C = CInt(&HA)) Then
  loc_109F1E3:       If Not (var_8C = CInt(9)) Then
  loc_109F1EE:         If (var_8C = CInt(8)) Then
  loc_109F1F1:         End If
  loc_109F1F1:       End If
  loc_109F213:       var_A0 = Me.FrDetail.Left
  loc_109F225:       Set var_94 = Me.TEXT
  loc_109F22B:       Call 0.Method_TEXT_KeyDown0 (KeyCode, var_98, var_A4)
  loc_109F233:       2 = var_98.Left
  loc_109F245:       var_AC = Me.FrDetail.Top
  loc_109F257:       Set var_B0 = Me.TEXT
  loc_109F25D:       Call 0.Method_TEXT_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_109F265:       var_8C = var_B4.Top
  loc_109F277:       Set var_BC = Me.TEXT
  loc_109F27D:       Call 0.Method_TEXT_KeyDown0 (KeyCode, var_C0)
  loc_109F285:       var_C4 = var_C0.Height
  loc_109F297:       Set var_C8 = Me.TEXT
  loc_109F29D:       Call 0.Method_TEXT_KeyDown0 (KeyCode, var_CC)
  loc_109F2A5:       var_D0 = var_CC.Width
  loc_109F2F8:       Proc_183_23_11A2C00(Me.FrmList, Me.ListView, Me.TEXT, KeyCode, Shift, arg_14)
  loc_109F323:     Else
  loc_109F32B:       If (var_8C = CInt(&HC)) Then
  loc_109F364:         Proc_183_34_1307118(Me.DGSite, Me.TEXT, KeyCode, global_80, Shift, &HFF)
  loc_109F374:       End If
  loc_109F374:     End If
  loc_109F374:   End If
  loc_109F374: End If
  loc_109F374: Exit Sub
  loc_109F375: ' Referenced from: 109F110
  loc_109F37B: Call 0.Method_arg_50 (var_88, 1, CInt((var_A0 + var_A4)), CInt((((var_AC + var_B8) + var_C4) + CDbl(&H19))))
  loc_109F390: Proc_183_57_104B0BC(var_88, "Text_KeyDown", CInt(var_D0))
  loc_109F39C: Exit Sub
End Sub

Private Sub TEXT_KeyPress(KeyAscii As Integer) 'FE9E78
  'Data Table: 58C0E4
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As DataGrid
  loc_FE9C9C: On Error Goto loc_FE9E4F
  loc_FE9CA2: var_86 = KeyAscii
  loc_FE9CAB: If Not (var_86 = 0) Then
  loc_FE9CB4:   If Not (var_86 = 1) Then
  loc_FE9CBD:     If (var_86 = 2) Then
  loc_FE9CC0:     End If
  loc_FE9CC0:   End If
  loc_FE9CCA:   Set var_8C = Me.TEXT
  loc_FE9CD0:   Call 0.Method_TEXT_KeyPress0 (KeyAscii, var_90)
  loc_FE9CEB:   Proc_183_22_129BBAC(var_90, arg_10, &HA)
  loc_FE9CFA: Else
  loc_FE9D00:   If (var_86 = 5) Then
  loc_FE9D0D:     Set var_8C = Me.TEXT
  loc_FE9D13:     Call 0.Method_TEXT_KeyPress0 (KeyAscii, var_90)
  loc_FE9D2E:     Proc_183_22_129BBAC(var_90, arg_10, 3)
  loc_FE9D3D:   Else
  loc_FE9D43:     If Not (var_86 = 6) Then
  loc_FE9D4C:       If Not (var_86 = 7) Then
  loc_FE9D57:         If Not (var_86 = CInt(&HB)) Then
  loc_FE9D62:           If (var_86 = CInt(&HD)) Then
  loc_FE9D65:           End If
  loc_FE9D65:         End If
  loc_FE9D65:       End If
  loc_FE9D72:       If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_FE9D82:         Set var_8C = Me.TEXT
  loc_FE9D88:         Call 0.Method_TEXT_KeyPress0 (KeyAscii, var_90, "No")
  loc_FE9D90:         var_90.Text = 2
  loc_FE9D9E:         arg_10 = 0
  loc_FE9DA4:       Else
  loc_FE9DB1:         If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_FE9DC1:           Set var_8C = Me.TEXT
  loc_FE9DC7:           Call 0.Method_TEXT_KeyPress0 (KeyAscii, var_90, "Yes")
  loc_FE9DCF:           var_90.Text = arg_10
  loc_FE9DDD:           arg_10 = 0
  loc_FE9DE3:         Else
  loc_FE9DE5:           arg_10 = 0
  loc_FE9DE8:         End If
  loc_FE9DE8:       End If
  loc_FE9DEB:     Else
  loc_FE9DF3:       If (var_86 = CInt(&HC)) Then
  loc_FE9E12:         If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_FE9E24:           var_AC = "Name"
  loc_FE9E3F:           Proc_183_41_145A968(Me.TEXT, KeyAscii, global_80, arg_10, var_AC)
  loc_FE9E4E:         End If
  loc_FE9E4E:       End If
  loc_FE9E4E:     End If
  loc_FE9E4E:   End If
  loc_FE9E4E: End If
  loc_FE9E4E: Exit Sub
  loc_FE9E4F: ' Referenced from: FE9C9C
  loc_FE9E55: Call 0.Method_arg_50 (var_AC, 0, arg_10)
  loc_FE9E6A: Proc_183_57_104B0BC(var_AC, "TEXT_KeyPress", arg_10)
  loc_FE9E76: Exit Sub
End Sub

Private Sub TEXT_KeyUp(KeyCode As Integer, Shift As Integer) 'F83A0C
  'Data Table: 58C0E4
  Dim var_86 As Integer
  loc_F838C4: On Error Goto loc_F839E3
  loc_F838CA: var_86 = KeyCode
  loc_F838D5: If Not (var_86 = CInt(8)) Then
  loc_F838E0:   If Not (var_86 = CInt(9)) Then
  loc_F838EB:     If (var_86 = CInt(&HA)) Then
  loc_F838EE:     End If
  loc_F838EE:   End If
  loc_F83910:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F83921:     Call TEXT_KeyDown(KeyCode, global_160)
  loc_F83926:   End If
  loc_F83952:   Proc_183_35_F2A594(Me.ListView, Me.TEXT, KeyCode, Shift)
  loc_F83965: Else
  loc_F8396D:   If (var_86 = CInt(&HC)) Then
  loc_F83993:     If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_F839A4:       Call TEXT_KeyDown(KeyCode, global_160)
  loc_F839B8:       var_B0 = "Name"
  loc_F839D3:       Proc_183_41_145A968(Me.TEXT, KeyCode, global_80, Shift, var_B0)
  loc_F839E2:     End If
  loc_F839E2:   End If
  loc_F839E2: End If
  loc_F839E2: Exit Sub
  loc_F839E3: ' Referenced from: F838C4
  loc_F839E9: Call 0.Method_arg_50 (var_B0, &HFF, 0)
  loc_F839FE: Proc_183_57_104B0BC(var_B0, "TExt_KeyUp", global_184)
  loc_F83A0A: Exit Sub
End Sub

Private Sub TEXT_LostFocus(Index As Integer) 'E8BC60
  'Data Table: 58C0E4
  loc_E8BBF4: On Error Goto loc_E8BC37
  loc_E8BBFF: Call TEXT_Validate(Index)
  loc_E8BC1F: If (Me.FrmList.Visible = &HFF) Then
  loc_E8BC2E:   Me.FrmList.Visible = False
  loc_E8BC36: End If
  loc_E8BC36: Exit Sub
  loc_E8BC37: ' Referenced from: E8BBF4
  loc_E8BC3D: Call 0.Method_arg_50 (var_90)
  loc_E8BC52: Proc_183_57_104B0BC(var_90, "TEXT_LostFocus")
  loc_E8BC5E: Exit Sub
End Sub

Private Sub TEXT_Validate(Cancel As Boolean) '10CDBD0
  'Data Table: 58C0E4
  Dim var_86 As Integer
  Dim var_104 As Double
  Dim var_FC As String
  Dim var_F8 As TextBox
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  loc_10CD8E4: On Error Goto loc_10CDBA5
  loc_10CD8EA: var_86 = Cancel
  loc_10CD8F3: If Not (var_86 = 0) Then
  loc_10CD8FC:   If Not (var_86 = 1) Then
  loc_10CD905:     If Not (var_86 = 2) Then
  loc_10CD90E:       If (var_86 = 5) Then
  loc_10CD911:       End If
  loc_10CD911:     End If
  loc_10CD911:   End If
  loc_10CD91B:   Set var_8C = Me.TEXT
  loc_10CD921:   Call 0.Method_TEXT_Validate0 (Cancel, var_90)
  loc_10CD92D:   Proc_183_6_EA3B94(CVar(var_90))
  loc_10CD932:   var_104 = var_86
  loc_10CD96A:   Set var_F4 = Me.TEXT
  loc_10CD970:   Call 0.Method_TEXT_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_104), "0.00")))
  loc_10CD978:   var_F8.Text = 1
  loc_10CD997: Else
  loc_10CD99F:   If Not (var_86 = CInt(&HA)) Then
  loc_10CD9AA:     If Not (var_86 = CInt(9)) Then
  loc_10CD9B5:       If (var_86 = CInt(8)) Then
  loc_10CD9B8:       End If
  loc_10CD9B8:     End If
  loc_10CD9D0:     Set var_90 = Me.ListView.SelectedItem
  loc_10CD9D6:     var_FC = var_90.Text
  loc_10CD9E8:     Set var_F4 = Me.TEXT
  loc_10CD9EE:     Call 0.Method_TEXT_Validate0 (Cancel, var_F8, var_FC)
  loc_10CD9F6:     var_F8.Text = 1
  loc_10CDA0F:   Else
  loc_10CDA17:     If (var_86 = CInt(&HC)) Then
  loc_10CDA68:       Set var_8C = Me.TEXT
  loc_10CDA6E:       Call 0.Method_TEXT_Validate0 (Cancel, var_90, var_FC)
  loc_10CDA76:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10CDA8E:       If (var_104 Or (var_FC = vbNullString)) Then
  loc_10CDA9F:         Set var_8C = Me.TEXT
  loc_10CDAA5:         Call 0.Method_TEXT_Validate0 (CInt(&HC), var_90)
  loc_10CDAAD:         var_90.Tag = vbNullString
  loc_10CDAC7:         Set var_8C = Me.TEXT
  loc_10CDACD:         Call 0.Method_TEXT_Validate0 (CInt(&HC), var_90)
  loc_10CDAD5:         var_90.Text = vbNullString
  loc_10CDAE4:       Else
  loc_10CDB20:         Set var_F4 = Me.TEXT
  loc_10CDB26:         Call 0.Method_TEXT_Validate0 (CInt(&HC), var_F8)
  loc_10CDB2E:         var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10CDB72:         var_FC = CStr(Me.Fields.Item("Code").Value)
  loc_10CDB80:         Set var_F4 = Me.TEXT
  loc_10CDB86:         Call 0.Method_TEXT_Validate0 (CInt(&HC), var_F8)
  loc_10CDB8E:         var_F8.Tag = var_FC
  loc_10CDBA4:       End If
  loc_10CDBA4:     End If
  loc_10CDBA4:   End If
  loc_10CDBA4: End If
  loc_10CDBA4: Exit Sub
  loc_10CDBA5: ' Referenced from: 10CD8E4
  loc_10CDBAB: Call 0.Method_arg_50 (var_FC)
  loc_10CDBB3: var_114 = "TEXT_Validate"
  loc_10CDBC0: Proc_183_57_104B0BC(var_FC)
  loc_10CDBCC: Exit Sub
End Sub

Private Sub DGGroup_UnknownEvent_9 'FD3B74
  'Data Table: 58C0E4
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FD39BC: On Error Goto loc_FD3B49
  loc_FD39CE: (False).Visible = 
  loc_FD39ED: If (Me.RecordCount > 0) Then
  loc_FD3A0A:   var_EC = Val(CStr(().Tag))
  loc_FD3A49:   Set var_CC = Me.TxtGrid
  loc_FD3A4F:   Call 0.Method_DGGroup_UnknownEvent_90 (CInt(var_EC), var_D0)
  loc_FD3A57:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD3A7B:   Set var_B4 = (var_EC)
  loc_FD3A91:   var_EC = Val(CStr(var_B4.Tag))
  loc_FD3AD0:   Set var_CC = Me.TxtGrid
  loc_FD3AD6:   Call 0.Method_DGGroup_UnknownEvent_90 (CInt(var_EC), var_D0)
  loc_FD3ADE:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD3AFE: End If
  loc_FD3B10: var_C8 = CStr((var_EC).Tag)
  loc_FD3B26: Set var_B0 = Me.TxtGrid
  loc_FD3B2C: Call 0.Method_DGGroup_UnknownEvent_90 (CInt(Val(var_C8)), var_B4)
  loc_FD3B34: var_B4.SetFocus
  loc_FD3B48: Exit Sub
  loc_FD3B49: ' Referenced from: FD39BC
  loc_FD3B4F: Call 0.Method_arg_50 (var_C8)
  loc_FD3B64: Proc_183_57_104B0BC(var_C8, "DGGroup_Click")
  loc_FD3B70: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E480B8
  'Data Table: 58C0E4
  loc_E4809B: Set var_88 = var_8C(Cancel)
  loc_E480A1: Call 0.Method_GridSel_UnknownEvent_00 (CVar(CLng("16777152")))
  loc_E480B5: Exit Sub
  loc_E480B6: TxtGrid.DispID_26 = 
End Sub

Private Sub GridSel_UnknownEvent_8 'E47B70
  'Data Table: 58C0E4
  loc_E47B53: Set var_88 = var_8C(Cancel)
  loc_E47B59: Call 0.Method_GridSel_UnknownEvent_80 (CVar(CLng("15595518")))
  loc_E47B6D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_9 'FAB778
  'Data Table: 58C0E4
  Dim var_F8 As String
  Dim var_170 As String
  loc_FAB618: On Error Goto loc_FAB74E
  loc_FAB621: If (Cancel = 1) Then
  loc_FAB65F:   If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_FAB66B:     Set var_88 = var_8C(1)
  loc_FAB671:     Call 0.Method_GridSel_UnknownEvent_90 ()
  loc_FAB699:     Set var_A0 = var_A4(1)
  loc_FAB69F:     Call 0.Method_GridSel_UnknownEvent_90 (3)
  loc_FAB6B2:     var_F8 = CStr(TxtDetails.DispID_41)
  loc_FAB6C5:     Set var_FC = var_100(1)
  loc_FAB6CB:     Call 0.Method_GridSel_UnknownEvent_90 (var_F8 & vbCrLf)
  loc_FAB6F3:     Set var_114 = var_118(1)
  loc_FAB6F9:     Call 0.Method_GridSel_UnknownEvent_90 (4, CVar(CLng(TxtDetails.DispID_A)))
  loc_FAB71D:     Me.TxtDetails.Text = CVar(CLng(TxtDetails.DispID_A)) & CStr(TxtDetails.DispID_41)
  loc_FAB74D:   End If
  loc_FAB74D: End If
  loc_FAB74D: Exit Sub
  loc_FAB74E: ' Referenced from: FAB618
  loc_FAB754: Call 0.Method_arg_50 (var_F8)
  loc_FAB75C: var_170 = "GridSel_Click"
  loc_FAB769: Proc_183_57_104B0BC(var_F8)
  loc_FAB775: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1221FEC
  'Data Table: 58C0E4
  Dim var_190 As Variant
  Dim var_8C As String
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  Dim var_1E4 As Integer
  Dim var_1EC As String
  loc_1221B20: On Error Goto loc_1221FC4
  loc_1221B29: If (arg_10 = &HD) Then
  loc_1221B3A:   Proc_303_0_FBACC8("	")
  loc_1221B42: End If
  loc_1221B4C: Set var_94 = var_98(Cancel)
  loc_1221B52: Call 0.Method_GridSel_UnknownEvent_A0 (0)
  loc_1221B73: If (CLng(TxtDetails.DispID_4) < 1) Then
  loc_1221B76:   Exit Sub
  loc_1221B77: End If
  loc_1221B8B: Set var_94 = var_98(Cancel)
  loc_1221B91: Call 0.Method_GridSel_UnknownEvent_A0 ((CLng(arg_10) = &H20))
  loc_1221BB3: If ( And (CLng(TxtDetails.DispID_B) = 0)) Then
  loc_1221BC6:   Set var_94 = var_98(Cancel)
  loc_1221BCC:   Call 0.Method_GridSel_UnknownEvent_A0 ("WINGDINGS")
  loc_1221BF2:   Set var_94 = var_98(Cancel)
  loc_1221BF8:   Call 0.Method_GridSel_UnknownEvent_A0 (CVar(CDbl(&HE)))
  loc_1221C16:   Set var_94 = var_98(Cancel)
  loc_1221C1C:   Call 0.Method_GridSel_UnknownEvent_A0 (TxtDetails.DispID_4E)
  loc_1221C45:   Set var_CC = var_D0(Cancel)
  loc_1221C4B:   Call 0.Method_GridSel_UnknownEvent_A0 (0, CVar(CLng(TxtDetails.DispID_A)))
  loc_1221C69:   Set var_164 = var_168(Cancel)
  loc_1221C6F:   Call 0.Method_GridSel_UnknownEvent_A0 (TxtDetails.DispID_41)
  loc_1221C80:   var_190 = CVar(CLng(TxtDetails.DispID_A)) 'Long
  loc_1221CCE:   Set var_17C = var_180(Cancel)
  loc_1221CD4:   Call 0.Method_GridSel_UnknownEvent_A0 (CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1221CDC:   LateIdCallSt
  loc_1221D10:   var_1E2 = Cancel
  loc_1221D19:   If (var_1E2 = 1) Then
  loc_1221D2D:     var_86 = CInt((UBound(global_96, 1) + 1))
  loc_1221D3F:     ReDim Preserve global_96(0 To CLng(var_86))
  loc_1221D53:     Set var_94 = var_98(Cancel)
  loc_1221D59:     Call 0.Method_GridSel_UnknownEvent_A0 (var_86, var_1E2, var_180)
  loc_1221D75:     global_96(CLng(var_86)) = CInt(CLng(TxtDetails.DispID_A))
  loc_1221D83:   Else
  loc_1221D89:     If (var_1E2 = 2) Then
  loc_1221D9D:       var_86 = CInt((UBound(global_100, 1) + 1))
  loc_1221DAF:       ReDim Preserve global_100(0 To CLng(var_86))
  loc_1221DC3:       Set var_94 = var_98(Cancel)
  loc_1221DC9:       Call 0.Method_GridSel_UnknownEvent_A0 (var_86, var_190)
  loc_1221DE5:       global_100(CLng(var_86)) = CInt(CLng(TxtDetails.DispID_A))
  loc_1221DF3:     Else
  loc_1221DF9:       If (var_1E2 = 3) Then
  loc_1221E0D:         var_86 = CInt((UBound(global_104, 1) + 1))
  loc_1221E1F:         ReDim Preserve global_104(0 To CLng(var_86))
  loc_1221E33:         Set var_94 = var_98(Cancel)
  loc_1221E39:         Call 0.Method_GridSel_UnknownEvent_A0 (var_86)
  loc_1221E55:         global_104(CLng(var_86)) = CInt(CLng(TxtDetails.DispID_A))
  loc_1221E60:       End If
  loc_1221E60:     End If
  loc_1221E60:   End If
  loc_1221E60: End If
  loc_1221E63: var_1E4 = arg_10
  loc_1221E70: If Not (var_1E4 = CInt(&H26)) Then
  loc_1221E7D:   If Not (var_1E4 = CInt(&H28)) Then
  loc_1221E8A:     If Not (var_1E4 = CInt(&H22)) Then
  loc_1221E97:       If (var_1E4 = CInt(&H21)) Then
  loc_1221E9A:       End If
  loc_1221E9A:     End If
  loc_1221E9A:   End If
  loc_1221ED5:   If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_1221EE1:     Set var_94 = var_98(1)
  loc_1221EE7:     Call 0.Method_GridSel_UnknownEvent_A0 (var_1E4)
  loc_1221F0F:     Set var_CC = var_D0(1)
  loc_1221F15:     Call 0.Method_GridSel_UnknownEvent_A0 (3, CVar(CLng(TxtDetails.DispID_A)))
  loc_1221F28:     var_8C = CStr(TxtDetails.DispID_41)
  loc_1221F3B:     Set var_164 = var_168(1)
  loc_1221F41:     Call 0.Method_GridSel_UnknownEvent_A0 (var_8C & vbCrLf)
  loc_1221F69:     Set var_17C = var_180(1)
  loc_1221F6F:     Call 0.Method_GridSel_UnknownEvent_A0 (4, CVar(CLng(TxtDetails.DispID_A)))
  loc_1221F93:     Me.TxtDetails.Text = TxtDetails.DispID_4D & CStr(TxtDetails.DispID_41)
  loc_1221FC3:   End If
  loc_1221FC3: End If
  loc_1221FC3: Exit Sub
  loc_1221FC4: ' Referenced from: 1221B20
  loc_1221FCA: Call 0.Method_arg_50 (var_8C)
  loc_1221FD2: var_1EC = "GridSel_KeyDown"
  loc_1221FDF: Proc_183_57_104B0BC(var_8C)
  loc_1221FEB: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C '11DBEC8
  'Data Table: 58C0E4
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_BC As Fields15
  Dim var_D0 As Field20
  Dim arg_10 As Integer
  Dim var_D4 As String
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_88 As TextBox
  loc_11DBA70: On Error Goto loc_11DBE9E
  loc_11DBA7D: Set var_88 = var_8C(Cancel)
  loc_11DBA83: Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11DBAA4: Set var_A0 = var_A4(Cancel)
  loc_11DBAAA: Call 0.Method_GridSel_UnknownEvent_C0 ((CLng(TxtSearch.DispID_B) = 0))
  loc_11DBAD4: If ( Or (CLng(TxtSearch.DispID_A) = 0)) Then
  loc_11DBAD7:   Exit Sub
  loc_11DBAD8: End If
  loc_11DBADB: var_B6 = Cancel
  loc_11DBAE4: If (var_B6 = 1) Then
  loc_11DBAF8:   Set var_88 = var_8C(Cancel)
  loc_11DBAFE:   Call 0.Method_GridSel_UnknownEvent_C0 (var_B6)
  loc_11DBB0D:   Set var_A0 = var_A4(Cancel)
  loc_11DBB13:   Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11DBB45:   var_D0 = Me.Fields.Item(CVar(CLng(var_9C)))
  loc_11DBB77:   Set var_DC = var_8C
  loc_11DBB86:   Proc_183_11_113DA88(Me.TxtSearch, var_DC, global_56, arg_10)
  loc_11DBBAC:   arg_10 = 0
  loc_11DBBEA:   If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_11DBBF6:     Set var_88 = var_8C(1)
  loc_11DBBFC:     Call 0.Method_GridSel_UnknownEvent_C0 (arg_10, var_D0.Name, "16777152")
  loc_11DBC24:     Set var_A0 = var_A4(1)
  loc_11DBC2A:     Call 0.Method_GridSel_UnknownEvent_C0 (3, CVar(CLng(TxtSearch.DispID_A)))
  loc_11DBC50:     Set var_BC = var_D0(1)
  loc_11DBC56:     Call 0.Method_GridSel_UnknownEvent_C0 (CStr(TxtSearch.DispID_41) & vbCrLf, "15595518")
  loc_11DBC7E:     Set var_D8 = var_DC(1)
  loc_11DBC84:     Call 0.Method_GridSel_UnknownEvent_C0 (4, CVar(CLng(TxtSearch.DispID_A)))
  loc_11DBCA8:     Me.TxtDetails.Text = TxtSearch.DispID_B & CStr(TxtSearch.DispID_41)
  loc_11DBCD8:   End If
  loc_11DBCDB: Else
  loc_11DBCE1:   If (var_B6 = 2) Then
  loc_11DBCF5:     Set var_88 = var_8C(Cancel)
  loc_11DBCFB:     Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11DBD0A:     Set var_A0 = var_A4(Cancel)
  loc_11DBD10:     Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11DBD4A:     var_D4 = Me.Fields.Item(CVar(CLng(var_9C))).Name
  loc_11DBD52:     var_E8 = "15595518"
  loc_11DBD5B:     var_E4 = "16777152"
  loc_11DBD83:     Proc_183_11_113DA88(Me.TxtSearch, var_8C, global_60, arg_10)
  loc_11DBDA9:     arg_10 = 0
  loc_11DBDAF:   Else
  loc_11DBDB5:     If (var_B6 = 3) Then
  loc_11DBDC9:       Set var_88 = var_8C(Cancel)
  loc_11DBDCF:       Call 0.Method_GridSel_UnknownEvent_C0 (arg_10, var_D4, var_E4)
  loc_11DBDDE:       Set var_A0 = var_A4(Cancel)
  loc_11DBDE4:       Call 0.Method_GridSel_UnknownEvent_C0 (var_E8)
  loc_11DBE26:       var_E8 = "15595518"
  loc_11DBE2F:       var_E4 = "16777152"
  loc_11DBE57:       Proc_183_11_113DA88(Me.TxtSearch, var_8C, global_64, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name)
  loc_11DBE7D:       arg_10 = 0
  loc_11DBE80:     End If
  loc_11DBE80:   End If
  loc_11DBE80: End If
  loc_11DBE85: var_D4 = CStr(Cancel)
  loc_11DBE92: Me.TxtSearch.Tag = var_D4
  loc_11DBE9D: Exit Sub
  loc_11DBE9E: ' Referenced from: 11DBA70
  loc_11DBEA4: Call 0.Method_arg_50 (var_D4, arg_10, var_E4)
  loc_11DBEB9: Proc_183_57_104B0BC(var_D4, "GridSel_KeyPress", var_E8)
  loc_11DBEC5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E8236C
  'Data Table: 58C0E4
  loc_E8230E: Set var_88 = var_8C(Cancel)
  loc_E82314: Call 0.Method_GridSel_UnknownEvent_E0 ()
  loc_E82335: If (CLng(TxtSearch.DispID_B) <> 0) Then
  loc_E82338:   Exit Sub
  loc_E82339: End If
  loc_E82343: Set var_88 = var_8C(Cancel)
  loc_E82349: Call 0.Method_GridSel_UnknownEvent_E0 ()
  loc_E8235E: global_180 = CInt(CLng(TxtSearch.DispID_A))
  loc_E8236B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1146540
  'Data Table: 58C0E4
  Dim var_E8 As String
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_11461C0: On Error Goto loc_1146518
  loc_11461CD: Set var_8C = var_90(Cancel)
  loc_11461D3: Call 0.Method_GridSel_UnknownEvent_100 ()
  loc_11461FE: If ((CLng(TxtSearch.DispID_B) <> 0) Or (global_180 = 0)) Then
  loc_1146201:   Exit Sub
  loc_1146202: End If
  loc_114620C: Set var_8C = var_90(Cancel)
  loc_1146212: Call 0.Method_GridSel_UnknownEvent_100 ()
  loc_1146243: For var_A4 = global_180 To CInt(CLng(TxtSearch.DispID_C)): var_88 = var_A4 'Integer
  loc_114625C:   Set var_8C = var_90(Cancel)
  loc_1146262:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CLng(var_88)), global_180)
  loc_1146289:   Set var_8C = var_90(Cancel)
  loc_114628F:   Call 0.Method_GridSel_UnknownEvent_100 (0, TxtSearch.DispID_A)
  loc_11462B3:   Set var_8C = var_90(Cancel)
  loc_11462B9:   Call 0.Method_GridSel_UnknownEvent_100 ("WINGDINGS", TxtSearch.DispID_B)
  loc_11462DF:   Set var_8C = var_90(Cancel)
  loc_11462E5:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CDbl(&HE)), TxtSearch.DispID_4D)
  loc_1146315:   Set var_8C = var_90(Cancel)
  loc_114631B:   Call 0.Method_GridSel_UnknownEvent_100 (0, CVar(CLng(var_88)))
  loc_114635B:   var_E8 = CStr(var_A0)
  loc_1146381:   Set var_14C = var_150(Cancel)
  loc_1146387:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CStr(IIf((var_E8 = "ü"), " ", "ü"))), 0, CVar(CLng(var_88)))
  loc_114638F:   LateIdCallSt
  loc_11463B7:   var_1B2 = Cancel
  loc_11463C0:   If (var_1B2 = 1) Then
  loc_11463D4:     var_86 = CInt((UBound(global_96, 1) + 1))
  loc_11463E6:     ReDim Preserve global_96(0 To CLng(var_86))
  loc_11463FA:     Set var_8C = var_90(Cancel)
  loc_1146400:     Call 0.Method_GridSel_UnknownEvent_100 (var_86, var_1B2, var_150)
  loc_114641C:     global_96(CLng(var_86)) = CInt(CLng(TxtSearch.DispID_A))
  loc_114642A:   Else
  loc_1146430:     If (var_1B2 = 2) Then
  loc_1146444:       var_86 = CInt((UBound(global_100, 1) + 1))
  loc_1146456:       ReDim Preserve global_100(0 To CLng(var_86))
  loc_114646A:       Set var_8C = var_90(Cancel)
  loc_1146470:       Call 0.Method_GridSel_UnknownEvent_100 (var_86, TxtSearch.DispID_41)
  loc_114648C:       global_100(CLng(var_86)) = CInt(CLng(TxtSearch.DispID_A))
  loc_114649A:     Else
  loc_11464A0:       If (var_1B2 = 3) Then
  loc_11464B4:         var_86 = CInt((UBound(global_104, 1) + 1))
  loc_11464C6:         ReDim Preserve global_104(0 To CLng(var_86))
  loc_11464DA:         Set var_8C = var_90(Cancel)
  loc_11464E0:         Call 0.Method_GridSel_UnknownEvent_100 (var_86, TxtSearch.DispID_4E)
  loc_11464FC:         global_104(CLng(var_86)) = CInt(CLng(TxtSearch.DispID_A))
  loc_1146507:       End If
  loc_1146507:     End If
  loc_1146507:   End If
  loc_114650A: Next var_A4 'Integer
  loc_1146514: global_180 = 0
  loc_1146517: Exit Sub
  loc_1146518: ' Referenced from: 11461C0
  loc_114651E: Call 0.Method_arg_50 (var_E8)
  loc_1146533: Proc_183_57_104B0BC(var_E8, "GridSel_MouseUp")
  loc_114653F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_12 'F90088
  'Data Table: 58C0E4
  loc_F8FF5A: If (Cancel = 1) Then
  loc_F8FF98:   If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_F8FFA4:     Set var_88 = var_8C(1)
  loc_F8FFAA:     Call 0.Method_GridSel_UnknownEvent_120 ()
  loc_F8FFD2:     Set var_A0 = var_A4(1)
  loc_F8FFD8:     Call 0.Method_GridSel_UnknownEvent_120 (3)
  loc_F8FFFE:     Set var_FC = var_100(1)
  loc_F90004:     Call 0.Method_GridSel_UnknownEvent_120 (CStr(TxtDetails.DispID_41) & vbCrLf)
  loc_F9002C:     Set var_114 = var_118(1)
  loc_F90032:     Call 0.Method_GridSel_UnknownEvent_120 (4, CVar(CLng(TxtDetails.DispID_A)))
  loc_F90056:     Me.TxtDetails.Text = CVar(CLng(TxtDetails.DispID_A)) & CStr(TxtDetails.DispID_41)
  loc_F90086:   End If
  loc_F90086: End If
  loc_F90086: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'E482C0
  'Data Table: 58C0E4
  loc_E482A3: Set var_88 = var_8C(Cancel)
  loc_E482A9: Call 0.Method_GridSel_UnknownEvent_130 (CVar(CLng("16777152")))
  loc_E482BD: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E47F80
  'Data Table: 58C0E4
  loc_E47F63: Set var_88 = var_8C(Cancel)
  loc_E47F69: Call 0.Method_GridSel_UnknownEvent_140 (CVar(CLng("15595518")))
  loc_E47F7D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E614C4
  'Data Table: 58C0E4
  Dim var_AC As TextBox
  loc_E61489: Set var_A8 = (CVar(CLng("16777152")))
  loc_E614A2: Set var_A8 = Me.TxtGrid
  loc_E614A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E614B0: var_AC.Visible = False
  loc_E614BC: Call Proc_245_60_EB7B34(TxtGrid.DispID_26)
  loc_E614C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1DC40
  'Data Table: 58C0E4
  loc_E1DC31: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1DC3F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '113C390
  'Data Table: 58C0E4
  Dim var_88 As TextBox
  Dim var_9C As String
  Dim var_AC As Variant
  Dim Cancel As Integer
  Dim var_D4 As TextBox
  Dim var_11C As Long
  Dim var_124 As Long
  loc_113C018: On Error Goto loc_113C367
  loc_113C052: If ( And (CDbl(Val(CStr(((CLng(Cancel) = &H26)).Tag))) = CDbl(global_142))) Then
  loc_113C062:   Set var_88 = (CVar(CLng("16777215")))
  loc_113C078:   var_9C = "+{Tab}"
  loc_113C07E:   Proc_303_0_FBACC8(CStr(((CLng(Cancel) = &H26)).Tag), 0)
  loc_113C088:   Cancel = 0
  loc_113C08E: Else
  loc_113C0C5:   If (TxtGrid.DispID_26 And (CDbl(Val(CStr(Cancel((CLng(Cancel) = &H28)).Tag))) = CDbl(global_140))) Then
  loc_113C0D5:     Set var_88 = (CVar(CLng("16777215")))
  loc_113C0EB:     var_9C = "	"
  loc_113C0F1:     Proc_303_0_FBACC8(var_9C, 0)
  loc_113C0FB:     Cancel = 0
  loc_113C0FE:   End If
  loc_113C0FE: End If
  loc_113C10B: Set var_88 = Cancel(Cancel)
  loc_113C12A: TxtGrid.DispID_26(CVar(CStr(CLng(TxtGrid.DispID_A)))).Tag = 
  loc_113C14E: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_113C155:   Set var_88 = ()
  loc_113C16D:   Set var_D4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_113C191:   LateIdCallSt
  loc_113C1AD:   Set var_88 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_113C1BC:   var_AC = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_113C1D4:   Set var_D4 = 2(vbNullString)
  loc_113C1DA:   LateIdCallSt
  loc_113C1EC: End If
  loc_113C1F0: Set var_88 = var_AC(var_D4)
  loc_113C1FF: var_11C = CLng(TxtGrid.DispID_B)
  loc_113C20F: If (var_11C = CLng(4)) Then
  loc_113C218:   var_120 = GRepFormName
  loc_113C223:   If Not (var_120 = "CashBook") Then
  loc_113C22E:     If (var_120 = "BankBook") Then
  loc_113C231:     End If
  loc_113C235:     Set var_88 = (var_11C)
  loc_113C24D:     Set var_D4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_113C26B:     Set var_118 = CVar(CLng(TxtGrid.DispID_B))(vbNullString)
  loc_113C271:     LateIdCallSt
  loc_113C289:   End If
  loc_113C289: End If
  loc_113C293: If (CLng(Cancel) = &HD) Then
  loc_113C29A:   Set var_88 = (var_118)
  loc_113C2A9:   var_124 = CLng(TxtGrid.DispID_A)
  loc_113C2B9:   If Not (var_124 = CLng(0)) Then
  loc_113C2C3:     If Not (var_124 = CLng(1)) Then
  loc_113C2CD:       If Not (var_124 = CLng(2)) Then
  loc_113C2D7:         If Not (var_124 = CLng(3)) Then
  loc_113C2E1:           If Not (var_124 = CLng(4)) Then
  loc_113C2EB:             If Not (var_124 = CLng(5)) Then
  loc_113C2F5:               If Not (var_124 = CLng(6)) Then
  loc_113C2FF:                 If Not (var_124 = CLng(7)) Then
  loc_113C309:                   If Not (var_124 = CLng(8)) Then
  loc_113C313:                     If (var_124 = CLng(9)) Then
  loc_113C316:                     End If
  loc_113C316:                   End If
  loc_113C316:                 End If
  loc_113C316:               End If
  loc_113C316:             End If
  loc_113C316:           End If
  loc_113C316:         End If
  loc_113C316:       End If
  loc_113C316:     End If
  loc_113C32C:     Set var_118 = Me.TxtGrid
  loc_113C347:     Proc_183_24_1045ECC(Me, (var_124))
  loc_113C35E:     global_162 = 0
  loc_113C361:   End If
  loc_113C361: End If
  loc_113C363: Cancel = 0
  loc_113C366: Exit Sub
  loc_113C367: ' Referenced from: 113C018
  loc_113C36D: Call 0.Method_arg_50 (var_9C, Cancel, global_162)
  loc_113C382: Proc_183_57_104B0BC(var_9C, "FGrid_KeyDown")
  loc_113C38E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F2C208
  'Data Table: 58C0E4
  Dim var_9C As Long
  loc_F2C110: On Error Goto loc_F2C1DF
  loc_F2C117: Set var_88 = ()
  loc_F2C126: var_9C = CLng(TxtGrid.DispID_A)
  loc_F2C136: If Not (var_9C = CLng(0)) Then
  loc_F2C140:   If Not (var_9C = CLng(1)) Then
  loc_F2C14A:     If Not (var_9C = CLng(2)) Then
  loc_F2C154:       If Not (var_9C = CLng(3)) Then
  loc_F2C15E:         If Not (var_9C = CLng(4)) Then
  loc_F2C168:           If Not (var_9C = CLng(5)) Then
  loc_F2C172:             If Not (var_9C = CLng(6)) Then
  loc_F2C17C:               If Not (var_9C = CLng(7)) Then
  loc_F2C186:                 If Not (var_9C = CLng(8)) Then
  loc_F2C190:                   If (var_9C = CLng(9)) Then
  loc_F2C193:                   End If
  loc_F2C193:                 End If
  loc_F2C193:               End If
  loc_F2C193:             End If
  loc_F2C193:           End If
  loc_F2C193:         End If
  loc_F2C193:       End If
  loc_F2C193:     End If
  loc_F2C193:   End If
  loc_F2C1A9:   Set var_A4 = Me.TxtGrid
  loc_F2C1C4:   Proc_183_24_1045ECC(Me, (var_9C))
  loc_F2C1D6: End If
  loc_F2C1DB: global_162 = 0
  loc_F2C1DE: Exit Sub
  loc_F2C1DF: ' Referenced from: F2C110
  loc_F2C1E5: Call 0.Method_arg_50 (var_B4, global_162)
  loc_F2C1FA: Proc_183_57_104B0BC(var_B4, "FGrid_DblClick")
  loc_F2C206: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '12389D0
  'Data Table: 58C0E4
  Dim var_A0 As Long
  Dim var_CC As String
  Dim var_A4 As TextBox
  Dim var_B0 As TextBox
  loc_12384B0: On Error Goto loc_12389A5
  loc_12384B7: Set var_8C = ()
  loc_12384C6: var_A0 = CLng(TxtGrid.DispID_A)
  loc_12384D6: If Not (var_A0 = CLng(6)) Then
  loc_12384E0:   If Not (var_A0 = CLng(7)) Then
  loc_12384EA:     If Not (var_A0 = CLng(8)) Then
  loc_12384F4:       If (var_A0 = CLng(9)) Then
  loc_12384F7:       End If
  loc_12384F7:     End If
  loc_12384F7:   End If
  loc_1238530:   Proc_183_26_11578C8(Me, (var_A0), Me.TxtGrid)
  loc_1238545: Else
  loc_123854C:   If Not (var_A0 = CLng(0)) Then
  loc_1238556:     If (var_A0 = CLng(1)) Then
  loc_1238559:     End If
  loc_1238592:     Proc_183_26_11578C8(Me, &HFF(0), Me.TxtGrid, 0)
  loc_12385A7:   Else
  loc_12385AE:     If (var_A0 = CLng(2)) Then
  loc_12385EA:       Proc_183_26_11578C8(Me, Cancel(0), Me.TxtGrid, 0)
  loc_12385FF:     Else
  loc_1238606:       If (var_A0 = CLng(3)) Then
  loc_1238642:         Proc_183_26_11578C8(Me, Cancel(0), Me.TxtGrid, 0)
  loc_1238657:       Else
  loc_123865E:         If Not (var_A0 = CLng(4)) Then
  loc_1238668:           If (var_A0 = CLng(5)) Then
  loc_123866B:           End If
  loc_12386A4:           Proc_183_26_11578C8(Me, Cancel(0), Me.TxtGrid, 0)
  loc_12386BC:           var_B8 = GRepFormName
  loc_12386C7:           If Not (var_B8 = "CashBook") Then
  loc_12386D2:             If (var_B8 = "BankBook") Then
  loc_12386D5:             End If
  loc_12386D9:             Set var_B0 = Cancel(0)
  loc_12386FD:             var_CC = CStr(Ucase(Chr(CLng(Cancel))))
  loc_123871F:             Set var_A4 = var_B0
  loc_1238731:             Proc_183_26_11578C8(Me, var_A4, Me.TxtGrid, 0)
  loc_1238759:             Set var_8C = Me.TxtGrid
  loc_123875F:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_CC)
  loc_1238767:             0 = var_A4.Text
  loc_1238780:             If (Len(var_CC) <= 1) Then
  loc_123878F:               Set var_8C = Me.TxtGrid
  loc_1238795:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_CC)
  loc_123879D:               Asc(var_CC) = var_A4.Text
  loc_12387AE:               Set var_A8 = Me.TxtGrid
  loc_12387B4:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_12387BC:               var_B0.Text = var_CC
  loc_12387CF:             End If
  loc_12387DB:             Set var_8C = Me.TxtGrid
  loc_12387E1:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12387FB:             Set var_A8 = Me.TxtGrid
  loc_1238801:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_1238809:             var_B0.SelStart = Len(var_A4.Text)
  loc_123881C:           End If
  loc_123881F:         Else
  loc_1238826:           If (var_A0 = CLng(0)) Then
  loc_123882F:             var_D4 = GRepFormName
  loc_123883A:             If Not (var_D4 = "BudgetVariance") Then
  loc_1238845:               If (var_D4 = "Budget") Then
  loc_1238848:               End If
  loc_123884C:               Set var_B0 = (Cancel)
  loc_1238870:               var_CC = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1238892:               Set var_A4 = var_B0
  loc_12388A4:               Proc_183_26_11578C8(Me, var_A4, Me.TxtGrid)
  loc_12388CC:               Set var_8C = Me.TxtGrid
  loc_12388D2:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_CC)
  loc_12388DA:               0 = var_A4.Text
  loc_12388F3:               If (Len(var_CC) <= 1) Then
  loc_1238902:                 Set var_8C = Me.TxtGrid
  loc_1238908:                 Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_CC)
  loc_1238910:                 0 = var_A4.Text
  loc_1238921:                 Set var_A8 = Me.TxtGrid
  loc_1238927:                 Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_123892F:                 var_B0.Text = var_CC
  loc_1238942:               End If
  loc_123894E:               Set var_8C = Me.TxtGrid
  loc_1238954:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_123895C:               var_CC = var_A4.Text
  loc_123896E:               Set var_A8 = Me.TxtGrid
  loc_1238974:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_123897C:               var_B0.SelStart = Len(var_CC)
  loc_123898F:             End If
  loc_123898F:           End If
  loc_123898F:         End If
  loc_123898F:       End If
  loc_123898F:     End If
  loc_123898F:   End If
  loc_123898F: End If
  loc_1238999: If (CLng(Cancel) <> &HD) Then
  loc_12389A1:   global_162 = &HFF
  loc_12389A4: End If
  loc_12389A4: Exit Sub
  loc_12389A5: ' Referenced from: 12384B0
  loc_12389AB: Call 0.Method_arg_50 (var_CC, global_162)
  loc_12389C0: Proc_183_57_104B0BC(var_CC, "FGrid_KeyPress")
  loc_12389CC: Exit Sub
  loc_12389CD: ThisVCallR4
End Sub

Private Sub FGrid_UnknownEvent_13 'E1DD80
  'Data Table: 58C0E4
  loc_E1DD71: Set var_A8 = (CVar(CLng("16777152")))
  loc_E1DD7F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1DBF0
  'Data Table: 58C0E4
  loc_E1DBE1: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1DBEF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E468CC
  'Data Table: 58C0E4
  Dim var_8C As TextBox
  loc_E468AB: Set var_88 = Me.TxtGrid
  loc_E468B1: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E468B9: var_8C.Visible = False
  loc_E468C5: Call Proc_245_60_EB7B34()
  loc_E468CA: Exit Sub
End Sub

Private Sub Command1_Click() 'E3D328
  'Data Table: 58C0E4
  loc_E3D302: Call 0.Method_arg_100 (var_88)
  loc_E3D319: Me.PictParameter.Width = (var_88 / CDbl(2))
  loc_E3D321: Call Form_Resize()
  loc_E3D326: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '16A5A34
  'Data Table: 58C0E4
  Dim var_98 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_C0 As TextBox
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_AC As TextBox
  Dim var_A8 As String
  loc_16A4108: On Error Goto loc_16A5A0B
  loc_16A4118: Set var_AC = (CVar(CLng("16777215")))
  loc_16A412A: Set var_AC = (TxtGrid.DispID_26)
  loc_16A4142: Set var_C0 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_16A415A: Set var_F4 = (CVar(CLng(TxtGrid.DispID_B)))
  loc_16A416B: var_110 = CStr(TxtGrid.DispID_41)
  loc_16A4177: Set var_108 = Me.TxtGrid
  loc_16A417D: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C)
  loc_16A4185: var_10C.Tag = var_110
  loc_16A41A7: Set var_AC = ()
  loc_16A41B6: var_114 = CLng(TxtGrid.DispID_A)
  loc_16A41C6: If (var_114 = CLng(0)) Then
  loc_16A41CF:   var_118 = GRepFormName
  loc_16A41DA:   If Not (var_118 = "BudgetVariance") Then
  loc_16A41E5:     If (var_118 = "Budget") Then
  loc_16A41E8:     End If
  loc_16A4236:     Set var_AC = Me.TxtGrid
  loc_16A423C:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110)
  loc_16A4244:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16A425C:     If (var_114 Or (var_110 = vbNullString)) Then
  loc_16A425F:       Exit Sub
  loc_16A4260:     End If
  loc_16A426D:     Set var_AC = Me.TxtGrid
  loc_16A4273:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A427B:     var_110 = var_C0.Text
  loc_16A4283:     var_D0 = CVar(var_110) 'String
  loc_16A42A4:     var_108 = Me.Fields.Item("Name")
  loc_16A42C8:     If CBool(var_D0 <> var_108.Value) Then
  loc_16A42D1:       Me.MoveFirst
  loc_16A42F6:       Set var_AC = Me.TxtGrid
  loc_16A42FC:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A4304:       0 = var_C0.Text
  loc_16A4312:       Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16A4328:       Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A4340:     End If
  loc_16A434D:     Set var_F4 = Me.TxtGrid
  loc_16A4353:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A436D:     Set var_AC = Me.TxtGrid
  loc_16A4373:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4387:     var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A4396:     ("Name =").Top = 
  loc_16A43BB:     (CVar(CStr(Index))).Tag = 
  loc_16A43D3:     Set var_AC = Me.TxtGrid
  loc_16A43D9:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A43F8:     (CVar(var_C0.Left)).Left = 
  loc_16A4406:   End If
  loc_16A4409: Else
  loc_16A4410:   If (var_114 = CLng(2)) Then
  loc_16A4419:     var_12C = GRepFormName
  loc_16A4424:     If (var_12C = "BankReg") Then
  loc_16A4434:       ReDim var_130(0 To 2)
  loc_16A444B:       var_130(0) = "All"
  loc_16A445A:       var_130(1) = "Debit"
  loc_16A4469:       var_130(2) = "Credit"
  loc_16A4480:       global_164 = Array(var_130)
  loc_16A44C0:       Set global_184 = Proc_183_37_EFEF78(Me.ListView, Me.TxtGrid, Index)
  loc_16A44D4:     Else
  loc_16A44DC:       If (var_12C = "DUELIST") Then
  loc_16A44EC:         ReDim var_130(0 To 1)
  loc_16A4503:         var_130(0) = "All"
  loc_16A4512:         var_130(1) = "Pending"
  loc_16A4569:         Set global_184 = Proc_183_37_EFEF78(Me.ListView, Me.TxtGrid, Index, Array(var_130), 2)
  loc_16A457D:       Else
  loc_16A4585:         If Not (var_12C = "Led") Then
  loc_16A4590:           If Not (var_12C = "LedInt") Then
  loc_16A459B:             If Not (var_12C = "LedDeb") Then
  loc_16A45A6:               If Not (var_12C = "LedCred") Then
  loc_16A45B1:                 If (var_12C = "AcCheckList") Then
  loc_16A45B4:                 End If
  loc_16A45B4:               End If
  loc_16A45B4:             End If
  loc_16A45B4:           End If
  loc_16A45C1:           ReDim var_130(0 To 4)
  loc_16A45D8:           var_130(0) = "Selected"
  loc_16A45E7:           var_130(1) = "Merge"
  loc_16A45F6:           var_130(2) = "Group(Selected)"
  loc_16A4605:           var_130(3) = "Group(Range)"
  loc_16A4614:           var_130(4) = "City Wise"
  loc_16A466B:           Set global_184 = Proc_183_37_EFEF78(Me.ListView, Me.TxtGrid, Index, Array(var_130), 5)
  loc_16A467F:         Else
  loc_16A4687:           If Not (var_12C = "CashBook") Then
  loc_16A4692:             If Not (var_12C = "BankBook") Then
  loc_16A469D:               If Not (var_12C = "DayBook") Then
  loc_16A46A8:                 If Not (var_12C = "RozNamcha") Then
  loc_16A46B3:                   If (var_12C = "DetailedTrial") Then
  loc_16A46B6:                   End If
  loc_16A46B6:                 End If
  loc_16A46B6:               End If
  loc_16A46B6:             End If
  loc_16A46C3:             ReDim var_130(0 To 1)
  loc_16A46DA:             var_130(0) = "Yes"
  loc_16A46DC:             var_A8 = "No"
  loc_16A46E9:             var_130(1) = var_A8
  loc_16A4700:             global_164 = Array(var_130)
  loc_16A4726:             Set var_C0 = Me.TxtGrid
  loc_16A4740:             Set global_184 = Proc_183_37_EFEF78(Me.ListView, var_C0, Index, global_164, 2, global_164)
  loc_16A4754:           Else
  loc_16A475C:             If Not (var_12C = "JournalBook") Then
  loc_16A4767:               If (var_12C = "Annexure") Then
  loc_16A476A:               End If
  loc_16A47B8:               Set var_AC = Me.TxtGrid
  loc_16A47BE:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), global_164)
  loc_16A47C6:               global_164 = var_C0.Text
  loc_16A47DE:               If (global_164 Or (var_110 = vbNullString)) Then
  loc_16A47E1:                 Exit Sub
  loc_16A47E2:               End If
  loc_16A47EF:               Set var_AC = Me.TxtGrid
  loc_16A47F5:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110)
  loc_16A47FD:               3 = var_C0.Text
  loc_16A4805:               var_D0 = CVar(var_110) 'String
  loc_16A4826:               var_108 = Me.Fields.Item("Name")
  loc_16A484A:               If CBool(var_D0 <> var_108.Value) Then
  loc_16A4853:                 Me.MoveFirst
  loc_16A4878:                 Set var_AC = Me.TxtGrid
  loc_16A487E:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A4886:                 0 = var_C0.Text
  loc_16A4894:                 Proc_183_9_EAB2F0(var_D0, CVar(var_110), 1)
  loc_16A48AA:                 Me.Find CStr(var_A8 & var_D0), global_164, 
  loc_16A48C2:               End If
  loc_16A48CF:               Set var_AC = Me.TxtGrid
  loc_16A48D5:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A48F4:               (CVar(var_C0.Left)).Left = 
  loc_16A490F:               Set var_F4 = Me.TxtGrid
  loc_16A4915:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A492F:               Set var_AC = Me.TxtGrid
  loc_16A4935:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4949:               var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A4958:               (CVar(var_C0.Left)).Top = 
  loc_16A497D:               (CVar(CStr(Index))).Tag = 
  loc_16A498B:             Else
  loc_16A4993:               If Not (var_12C = "DailySumm") Then
  loc_16A499E:                 If Not (var_12C = "AgingDr") Then
  loc_16A49A9:                   If Not (var_12C = "AgingCr") Then
  loc_16A49B4:                     If Not (var_12C = "Clg") Then
  loc_16A49BF:                       If Not (var_12C = "ClgNot") Then
  loc_16A49CA:                         If Not (var_12C = "AgingRepDr") Then
  loc_16A49D5:                           If (var_12C = "AgingRepCr") Then
  loc_16A49D8:                           End If
  loc_16A49D8:                         End If
  loc_16A49D8:                       End If
  loc_16A49D8:                     End If
  loc_16A49D8:                   End If
  loc_16A49D8:                 End If
  loc_16A4A26:                 Set var_AC = Me.TxtGrid
  loc_16A4A2C:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4A4C:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A4A4F:                   Exit Sub
  loc_16A4A50:                 End If
  loc_16A4A5D:                 Set var_AC = Me.TxtGrid
  loc_16A4A63:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4A6B:                 var_110 = var_C0.Text
  loc_16A4A73:                 var_D0 = CVar(var_110) 'String
  loc_16A4A94:                 var_108 = Me.Fields.Item("Name")
  loc_16A4AB8:                 If CBool(var_D0 <> var_108.Value) Then
  loc_16A4AC1:                   Me.MoveFirst
  loc_16A4AE6:                   Set var_AC = Me.TxtGrid
  loc_16A4AEC:                   Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A4AF4:                   0 = var_C0.Text
  loc_16A4B02:                   Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16A4B18:                   Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A4B30:                 End If
  loc_16A4B42:                 (CVar(CDbl(0))).Left = 
  loc_16A4B57:                 Set var_F4 = Me.TxtGrid
  loc_16A4B5D:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A4B77:                 Set var_AC = Me.TxtGrid
  loc_16A4B7D:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4B91:                 var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A4BA0:                 (CVar(CDbl(0))).Top = 
  loc_16A4BC5:                 (CVar(CStr(Index))).Tag = 
  loc_16A4BD0:               End If
  loc_16A4BD0:             End If
  loc_16A4BD0:           End If
  loc_16A4BD0:         End If
  loc_16A4BD0:       End If
  loc_16A4BD0:     End If
  loc_16A4BD3:   Else
  loc_16A4BDA:     If (var_114 = CLng(3)) Then
  loc_16A4BE3:       var_144 = GRepFormName
  loc_16A4BEE:       If Not (var_144 = "Annexure") Then
  loc_16A4BF9:         If Not (var_144 = "RefReport") Then
  loc_16A4C04:           If Not (var_144 = "JournalBook") Then
  loc_16A4C0F:             If (var_144 = "DetailedTrial") Then
  loc_16A4C12:             End If
  loc_16A4C12:           End If
  loc_16A4C12:         End If
  loc_16A4C1F:         ReDim var_130(0 To 1)
  loc_16A4C36:         var_130(0) = "Yes"
  loc_16A4C38:         var_A8 = "No"
  loc_16A4C45:         var_130(1) = var_A8
  loc_16A4C5C:         global_164 = Array(var_130)
  loc_16A4C82:         Set var_C0 = Me.TxtGrid
  loc_16A4C9C:         Set global_184 = Proc_183_37_EFEF78(Me.ListView, var_C0, Index)
  loc_16A4CB0:       Else
  loc_16A4CB8:         If (var_144 = "DayBook") Then
  loc_16A4D09:           Set var_AC = Me.TxtGrid
  loc_16A4D0F:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_16A4D17:           global_164 = var_C0.Text
  loc_16A4D2F:           If (2 Or (var_110 = vbNullString)) Then
  loc_16A4D32:             Exit Sub
  loc_16A4D33:           End If
  loc_16A4D40:           Set var_AC = Me.TxtGrid
  loc_16A4D46:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4D4E:           var_110 = var_C0.Text
  loc_16A4D56:           var_D0 = CVar(var_110) 'String
  loc_16A4D77:           var_108 = Me.Fields.Item("Name")
  loc_16A4D9B:           If CBool(var_D0 <> var_108.Value) Then
  loc_16A4DA4:             Me.MoveFirst
  loc_16A4DC9:             Set var_AC = Me.TxtGrid
  loc_16A4DCF:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A4DD7:             0 = var_C0.Text
  loc_16A4DE5:             Proc_183_9_EAB2F0(var_D0, CVar(var_110), 1)
  loc_16A4DFB:             Me.Find CStr(var_A8 & var_D0), global_164, 
  loc_16A4E13:           End If
  loc_16A4E25:           (CVar(CDbl(0))).Left = 
  loc_16A4E3A:           Set var_F4 = Me.TxtGrid
  loc_16A4E40:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A4E5A:           Set var_AC = Me.TxtGrid
  loc_16A4E60:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4E74:           var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A4E83:           (CVar(CDbl(0))).Top = 
  loc_16A4EA8:           (CVar(CStr(Index))).Tag = 
  loc_16A4EB6:         Else
  loc_16A4EBE:           If Not (var_144 = "Led") Then
  loc_16A4EC9:             If Not (var_144 = "LedInt") Then
  loc_16A4ED4:               If Not (var_144 = "LedDeb") Then
  loc_16A4EDF:                 If Not (var_144 = "LedCred") Then
  loc_16A4EEA:                   If (var_144 = "AcCheckList") Then
  loc_16A4EED:                   End If
  loc_16A4EED:                 End If
  loc_16A4EED:               End If
  loc_16A4EED:             End If
  loc_16A4F02:             Set var_AC = CVar(CLng(2))(1)
  loc_16A4F35:             If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_16A4F86:               Set var_AC = Me.TxtGrid
  loc_16A4F8C:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4FAC:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A4FAF:                 Exit Sub
  loc_16A4FB0:               End If
  loc_16A4FBD:               Set var_AC = Me.TxtGrid
  loc_16A4FC3:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4FCB:               var_110 = var_C0.Text
  loc_16A4FD3:               var_D0 = CVar(var_110) 'String
  loc_16A4FF4:               var_108 = Me.Fields.Item("Name")
  loc_16A5018:               If CBool(var_D0 <> var_108.Value) Then
  loc_16A5021:                 Me.MoveFirst
  loc_16A5046:                 Set var_AC = Me.TxtGrid
  loc_16A504C:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A5054:                 0 = var_C0.Text
  loc_16A5062:                 Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16A5078:                 Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A5090:               End If
  loc_16A509D:               Set var_AC = Me.TxtGrid
  loc_16A50A3:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A50C2:               (CVar(var_C0.Left)).Left = 
  loc_16A50DD:               Set var_F4 = Me.TxtGrid
  loc_16A50E3:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A50FD:               Set var_AC = Me.TxtGrid
  loc_16A5103:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A5117:               var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A5126:               (CVar(var_C0.Left)).Top = 
  loc_16A514B:               (CVar(CStr(Index))).Tag = 
  loc_16A5159:             Else
  loc_16A51A7:               Set var_AC = Me.TxtGrid
  loc_16A51AD:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A51CD:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A51D0:                 Exit Sub
  loc_16A51D1:               End If
  loc_16A51DE:               Set var_AC = Me.TxtGrid
  loc_16A51E4:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A51EC:               var_110 = var_C0.Text
  loc_16A51F4:               var_D0 = CVar(var_110) 'String
  loc_16A5215:               var_108 = Me.Fields.Item("Name")
  loc_16A5239:               If CBool(var_D0 <> var_108.Value) Then
  loc_16A5242:                 Me.MoveFirst
  loc_16A5267:                 Set var_AC = Me.TxtGrid
  loc_16A526D:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A5275:                 0 = var_C0.Text
  loc_16A5283:                 Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16A5299:                 Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A52B1:               End If
  loc_16A52C3:               (CVar(CDbl(0))).Left = 
  loc_16A52D8:               Set var_F4 = Me.TxtGrid
  loc_16A52DE:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A52F8:               Set var_AC = Me.TxtGrid
  loc_16A52FE:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A5312:               var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A5321:               (CVar(CDbl(0))).Top = 
  loc_16A5346:               (CVar(CStr(Index))).Tag = 
  loc_16A5351:             End If
  loc_16A5351:           End If
  loc_16A5351:         End If
  loc_16A5351:       End If
  loc_16A5354:     Else
  loc_16A535B:       If (var_114 = CLng(4)) Then
  loc_16A5364:         var_158 = GRepFormName
  loc_16A536F:         If Not (var_158 = "CashBook") Then
  loc_16A537A:           If Not (var_158 = "BankBook") Then
  loc_16A5385:             If Not (var_158 = "Led") Then
  loc_16A5390:               If Not (var_158 = "LedInt") Then
  loc_16A539B:                 If Not (var_158 = "AcCheckList") Then
  loc_16A53A6:                   If Not (var_158 = "LedDeb") Then
  loc_16A53B1:                     If Not (var_158 = "LedCred") Then
  loc_16A53BC:                       If (var_158 = "RozNamcha") Then
  loc_16A53BF:                       End If
  loc_16A53BF:                     End If
  loc_16A53BF:                   End If
  loc_16A53BF:                 End If
  loc_16A53BF:               End If
  loc_16A53BF:             End If
  loc_16A53BF:           End If
  loc_16A540D:           Set var_AC = Me.TxtGrid
  loc_16A5413:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A5433:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A5436:             Exit Sub
  loc_16A5437:           End If
  loc_16A5444:           Set var_AC = Me.TxtGrid
  loc_16A544A:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A5452:           var_110 = var_C0.Text
  loc_16A545A:           var_D0 = CVar(var_110) 'String
  loc_16A547B:           var_108 = Me.Fields.Item("Name")
  loc_16A549F:           If CBool(var_D0 <> var_108.Value) Then
  loc_16A54A8:             Me.MoveFirst
  loc_16A54CD:             Set var_AC = Me.TxtGrid
  loc_16A54D3:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A54DB:             0 = var_C0.Text
  loc_16A54E9:             Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16A54FF:             Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A5517:           End If
  loc_16A5529:           (CVar(CDbl(0))).Left = 
  loc_16A553E:           Set var_F4 = Me.TxtGrid
  loc_16A5544:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A555E:           Set var_AC = Me.TxtGrid
  loc_16A5564:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A5578:           var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A5587:           (CVar(CDbl(0))).Top = 
  loc_16A55AC:           (CVar(CStr(Index))).Tag = 
  loc_16A55BA:         Else
  loc_16A55C2:           If (var_158 = "JournalBook") Then
  loc_16A5613:             Set var_AC = Me.TxtGrid
  loc_16A5619:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A5639:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A563C:               Exit Sub
  loc_16A563D:             End If
  loc_16A564A:             Set var_AC = Me.TxtGrid
  loc_16A5650:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A5658:             var_110 = var_C0.Text
  loc_16A5660:             var_D0 = CVar(var_110) 'String
  loc_16A5681:             var_108 = Me.Fields.Item("Name")
  loc_16A56A5:             If CBool(var_D0 <> var_108.Value) Then
  loc_16A56AE:               Me.MoveFirst
  loc_16A56D3:               Set var_AC = Me.TxtGrid
  loc_16A56D9:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A56E1:               0 = var_C0.Text
  loc_16A56EF:               Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16A5705:               Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A571D:             End If
  loc_16A572F:             (CVar(CDbl(0))).Left = 
  loc_16A5744:             Set var_F4 = Me.TxtGrid
  loc_16A574A:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A5764:             Set var_AC = Me.TxtGrid
  loc_16A576A:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A577E:             var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A578D:             (CVar(CDbl(0))).Top = 
  loc_16A57B2:             (CVar(CStr(Index))).Tag = 
  loc_16A57BD:           End If
  loc_16A57BD:         End If
  loc_16A57C0:       Else
  loc_16A57C7:         If (var_114 = CLng(5)) Then
  loc_16A57D0:           var_15C = GRepFormName
  loc_16A57DB:           If Not (var_15C = "Led") Then
  loc_16A57E6:             If Not (var_15C = "LedInt") Then
  loc_16A57F1:               If Not (var_15C = "LedDeb") Then
  loc_16A57FC:                 If Not (var_15C = "LedCred") Then
  loc_16A5807:                   If (var_15C = "AcCheckList") Then
  loc_16A580A:                   End If
  loc_16A580A:                 End If
  loc_16A580A:               End If
  loc_16A580A:             End If
  loc_16A5858:             Set var_AC = Me.TxtGrid
  loc_16A585E:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A587E:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A5881:               Exit Sub
  loc_16A5882:             End If
  loc_16A588F:             Set var_AC = Me.TxtGrid
  loc_16A5895:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A589D:             var_110 = var_C0.Text
  loc_16A58A5:             var_D0 = CVar(var_110) 'String
  loc_16A58C6:             var_108 = Me.Fields.Item("Name")
  loc_16A58EA:             If CBool(var_D0 <> var_108.Value) Then
  loc_16A58F3:               Me.MoveFirst
  loc_16A5918:               Set var_AC = Me.TxtGrid
  loc_16A591E:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A5926:               0 = var_C0.Text
  loc_16A5934:               Proc_183_9_EAB2F0(var_D0, CVar(var_110))
  loc_16A594A:               Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A5962:             End If
  loc_16A5974:             (CVar(CDbl(0))).Left = 
  loc_16A5989:             Set var_F4 = Me.TxtGrid
  loc_16A598F:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A59A9:             Set var_AC = Me.TxtGrid
  loc_16A59AF:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A59C3:             var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A59D2:             (CVar(CDbl(0))).Top = 
  loc_16A59F7:             (CVar(CStr(Index))).Tag = 
  loc_16A5A02:           End If
  loc_16A5A02:         End If
  loc_16A5A02:       End If
  loc_16A5A02:     End If
  loc_16A5A02:   End If
  loc_16A5A02: End If
  loc_16A5A07: Set var_88 = Nothing
  loc_16A5A0A: Exit Sub
  loc_16A5A0B: ' Referenced from: 16A4108
  loc_16A5A11: Call 0.Method_arg_50 (var_110)
  loc_16A5A19: var_160 = "TxtGrid_GotFocus"
  loc_16A5A26: Proc_183_57_104B0BC(var_110)
  loc_16A5A32: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '14B9414
  'Data Table: 58C0E4
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_B0 As Long
  Dim var_FC As TextBox
  Dim var_130 As Variant
  Dim var_8C As ListView
  Dim var_98 As ColumnHeader
  Dim var_108 As TextBox
  loc_14B8748: On Error Goto loc_14B93EB
  loc_14B8755: If (CLng(Shift) = &H1B) Then
  loc_14B8764:   Set var_8C = Me.TxtGrid
  loc_14B876A:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_14B8772:   var_94 = var_90.Tag
  loc_14B8783:   Set var_98 = Me.TxtGrid
  loc_14B8789:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_14B8791:   var_9C.Text = var_94
  loc_14B87AD:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_14B87B6:   Set var_8C = (arg_14)
  loc_14B87D2:   Set var_8C = Me.TxtGrid
  loc_14B87D8:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_14B87E0:   var_90.Visible = False
  loc_14B87EC:   Call Proc_245_60_EB7B34(TxtGrid.DispID_8001)
  loc_14B87F1:   Exit Sub
  loc_14B87F2: End If
  loc_14B87F6: Set var_8C = ()
  loc_14B8805: var_B0 = CLng(TxtGrid.DispID_A)
  loc_14B8815: If (var_B0 = CLng(2)) Then
  loc_14B881E:   var_B4 = GRepFormName
  loc_14B8829:   If (var_B4 = "BankReg") Then
  loc_14B8839:     ReDim var_B8(0 To 2)
  loc_14B8850:     var_B8(0) = "All"
  loc_14B885F:     var_B8(1) = "Debit"
  loc_14B886E:     var_B8(2) = "Credit"
  loc_14B8890:     Set var_9C = Me.ListView
  loc_14B88AB:     Set var_90 = Me.TxtGrid
  loc_14B88C5:     Set global_184 = Proc_183_37_EFEF78(var_9C, var_90, KeyCode, Array(var_B8))
  loc_14B88F7:     Set var_8C = Me.TxtGrid
  loc_14B88FD:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_F4)
  loc_14B8905:     3 = var_90.Left
  loc_14B8916:     Set var_98 = Me.TxtGrid
  loc_14B891C:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_F8)
  loc_14B8924:     global_164 = var_9C.Top
  loc_14B8935:     Set var_F0 = Me.TxtGrid
  loc_14B893B:     Call 0.Method_TxtGrid_KeyDown0 (0, var_FC)
  loc_14B8943:     var_100 = var_FC.Height
  loc_14B8990:     Proc_183_23_11A2C00(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_14B89B3:   Else
  loc_14B89BB:     If (var_B4 = "DUELIST") Then
  loc_14B89C6:       var_130 = 1
  loc_14B89E6:       var_130 = Me.ListView.ColumnHeaders.ControlDefault
  loc_14B89EE:       var_98.Width = var_98
  loc_14B8A0A:       var_130 = 2
  loc_14B8A24:       Set var_90 = Me.ListView.ColumnHeaders
  loc_14B8A2A:       var_130 = var_90.ControlDefault
  loc_14B8A32:       var_98.Width = var_98
  loc_14B8A68:       Set var_8C = Me.TxtGrid
  loc_14B8A6E:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_F4, CDbl(0), CDbl(1500))
  loc_14B8A76:       CInt(var_F4) = var_90.Left
  loc_14B8A87:       Set var_98 = Me.TxtGrid
  loc_14B8A8D:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_F8, CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14B8A95:       1750 = var_9C.Top
  loc_14B8AA6:       Set var_F0 = Me.TxtGrid
  loc_14B8AAC:       Call 0.Method_TxtGrid_KeyDown0 (0, var_FC, var_100)
  loc_14B8AB4:       800 = var_FC.Height
  loc_14B8AF2:       Set var_108 = Me.ListView
  loc_14B8B01:       Proc_183_23_11A2C00(Me.FrmList, var_108, Me.TxtGrid, 0, Shift, arg_14)
  loc_14B8B24:     Else
  loc_14B8B2C:       If Not (var_B4 = "CashBook") Then
  loc_14B8B37:         If Not (var_B4 = "BankBook") Then
  loc_14B8B42:           If Not (var_B4 = "Led") Then
  loc_14B8B4D:             If Not (var_B4 = "LedInt") Then
  loc_14B8B58:               If Not (var_B4 = "LedDeb") Then
  loc_14B8B63:                 If Not (var_B4 = "LedCred") Then
  loc_14B8B6E:                   If Not (var_B4 = "AcCheckList") Then
  loc_14B8B79:                     If Not (var_B4 = "DayBook") Then
  loc_14B8B84:                       If Not (var_B4 = "RozNamcha") Then
  loc_14B8B8F:                         If (var_B4 = "DetailedTrial") Then
  loc_14B8B92:                         End If
  loc_14B8B92:                       End If
  loc_14B8B92:                     End If
  loc_14B8B92:                   End If
  loc_14B8B92:                 End If
  loc_14B8B92:               End If
  loc_14B8B92:             End If
  loc_14B8B92:           End If
  loc_14B8B92:         End If
  loc_14B8BB3:         Set var_8C = Me.TxtGrid
  loc_14B8BB9:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_F4, CInt(var_F4))
  loc_14B8BC1:         CInt(((var_F8 + var_100) + CDbl(&H19))) = var_90.Left
  loc_14B8BD2:         Set var_98 = Me.TxtGrid
  loc_14B8BD8:         Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_F8)
  loc_14B8BE0:         1750 = var_9C.Top
  loc_14B8BF1:         Set var_F0 = Me.TxtGrid
  loc_14B8BF7:         Call 0.Method_TxtGrid_KeyDown0 (0, var_FC, var_100)
  loc_14B8BFF:         800 = var_FC.Height
  loc_14B8C10:         Set var_104 = Me.TxtGrid
  loc_14B8C16:         Call 0.Method_TxtGrid_KeyDown0 (0, var_108)
  loc_14B8C1E:         var_134 = var_108.Width
  loc_14B8C6B:         Proc_183_23_11A2C00(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_14B8C92:       Else
  loc_14B8C9A:         If Not (var_B4 = "JournalBook") Then
  loc_14B8CA5:           If (var_B4 = "Annexure") Then
  loc_14B8CA8:           End If
  loc_14B8CAC:           Set var_98 = CInt(((var_F8 + var_100) + CDbl(&H19)))(CInt(var_F4))
  loc_14B8CDE:           Proc_183_34_1307118(var_98, Me.TxtGrid, KeyCode, global_72, Shift)
  loc_14B8CF1:         Else
  loc_14B8CF9:           If Not (var_B4 = "DailySumm") Then
  loc_14B8D04:             If Not (var_B4 = "AgingDr") Then
  loc_14B8D0F:               If Not (var_B4 = "AgingCr") Then
  loc_14B8D1A:                 If Not (var_B4 = "Clg") Then
  loc_14B8D25:                   If Not (var_B4 = "ClgNot") Then
  loc_14B8D30:                     If Not (var_B4 = "AgingRepDr") Then
  loc_14B8D3B:                       If (var_B4 = "AgingRepCr") Then
  loc_14B8D3E:                       End If
  loc_14B8D3E:                     End If
  loc_14B8D3E:                   End If
  loc_14B8D3E:                 End If
  loc_14B8D3E:               End If
  loc_14B8D3E:             End If
  loc_14B8D49:             Set var_9C = Me.TxtGrid
  loc_14B8D65:             Set var_90 = var_9C
  loc_14B8D74:             Proc_183_34_1307118(1(&HFF), var_90, KeyCode, global_76, Shift)
  loc_14B8D84:           End If
  loc_14B8D84:         End If
  loc_14B8D84:       End If
  loc_14B8D84:     End If
  loc_14B8D84:   End If
  loc_14B8D8E:   If (CLng(Shift) = &HD) Then
  loc_14B8D9E:     Call Proc_245_58_19C47A4(0, 0, var_110, &HFF)
  loc_14B8DA9:     If (var_110 = &HFF) Then
  loc_14B8DAC:       Call Proc_245_62_F2F148(1, CInt(var_134))
  loc_14B8DB1:     End If
  loc_14B8DB1:   End If
  loc_14B8DB4: Else
  loc_14B8DBB:   If (var_B0 = CLng(3)) Then
  loc_14B8DC4:     var_140 = GRepFormName
  loc_14B8DCF:     If Not (var_140 = "Annexure") Then
  loc_14B8DDA:       If Not (var_140 = "RefReport") Then
  loc_14B8DE5:         If Not (var_140 = "JournalBook") Then
  loc_14B8DF0:           If (var_140 = "DetailedTrial") Then
  loc_14B8DF3:           End If
  loc_14B8DF3:         End If
  loc_14B8DF3:       End If
  loc_14B8E14:       Set var_8C = Me.TxtGrid
  loc_14B8E1A:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_F4)
  loc_14B8E22:       0 = var_90.Left
  loc_14B8E33:       Set var_98 = Me.TxtGrid
  loc_14B8E39:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_14B8E41:       var_F8 = var_9C.Top
  loc_14B8E52:       Set var_F0 = Me.TxtGrid
  loc_14B8E58:       Call 0.Method_TxtGrid_KeyDown0 (0, var_FC)
  loc_14B8E60:       var_100 = var_FC.Height
  loc_14B8E71:       Set var_104 = Me.TxtGrid
  loc_14B8E77:       Call 0.Method_TxtGrid_KeyDown0 (0, var_108)
  loc_14B8E7F:       var_134 = var_108.Width
  loc_14B8ECC:       Proc_183_23_11A2C00(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_14B8EF3:     Else
  loc_14B8EFB:       If (var_140 = "DayBook") Then
  loc_14B8F34:         Proc_183_34_1307118(Me.DGSite, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_14B8F47:       Else
  loc_14B8F4F:         If Not (var_140 = "Led") Then
  loc_14B8F5A:           If Not (var_140 = "LedInt") Then
  loc_14B8F65:             If Not (var_140 = "LedDeb") Then
  loc_14B8F70:               If Not (var_140 = "LedCred") Then
  loc_14B8F7B:                 If (var_140 = "AcCheckList") Then
  loc_14B8F7E:                 End If
  loc_14B8F7E:               End If
  loc_14B8F7E:             End If
  loc_14B8F7E:           End If
  loc_14B8F93:           Set var_8C = CVar(CLng(2))(1)
  loc_14B8FC6:           If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_14B8FFF:             Proc_183_34_1307118(CInt(var_F4)(1), Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_14B9012:           Else
  loc_14B9016:             Set var_98 = CInt(((var_F8 + var_100) + CDbl(&H19)))(1)
  loc_14B9048:             Proc_183_34_1307118(CInt(var_F4)(1), Me.TxtGrid, KeyCode, global_76, Shift)
  loc_14B9058:           End If
  loc_14B9058:         End If
  loc_14B9058:       End If
  loc_14B9058:     End If
  loc_14B9062:     If (CLng(Shift) = &HD) Then
  loc_14B9072:       Call Proc_245_58_19C47A4(0, 0, var_110, &HFF)
  loc_14B907D:       If (var_110 = &HFF) Then
  loc_14B9080:         Call Proc_245_62_F2F148(1, CInt(var_134))
  loc_14B9085:       End If
  loc_14B9085:     End If
  loc_14B9088:   Else
  loc_14B908F:     If (var_B0 = CLng(4)) Then
  loc_14B9098:       var_184 = GRepFormName
  loc_14B90A3:       If Not (var_184 = "CashBook") Then
  loc_14B90AE:         If Not (var_184 = "BankBook") Then
  loc_14B90B9:           If Not (var_184 = "Led") Then
  loc_14B90C4:             If Not (var_184 = "LedInt") Then
  loc_14B90CF:               If Not (var_184 = "LedDeb") Then
  loc_14B90DA:                 If Not (var_184 = "LedCred") Then
  loc_14B90E5:                   If Not (var_184 = "AcCheckList") Then
  loc_14B90F0:                     If (var_184 = "RozNamcha") Then
  loc_14B90F3:                     End If
  loc_14B90F3:                   End If
  loc_14B90F3:                 End If
  loc_14B90F3:               End If
  loc_14B90F3:             End If
  loc_14B90F3:           End If
  loc_14B90F3:         End If
  loc_14B9129:         Proc_183_34_1307118(var_B0(0), Me.TxtGrid, KeyCode, global_76)
  loc_14B913C:       Else
  loc_14B9144:         If (var_184 = "JournalBook") Then
  loc_14B917D:           Proc_183_34_1307118(Me.DGSite, Me.TxtGrid, KeyCode, global_80, Shift)
  loc_14B918D:         End If
  loc_14B918D:       End If
  loc_14B9197:       If (CLng(Shift) = &HD) Then
  loc_14B91A7:         Call Proc_245_58_19C47A4(0, 0, var_110, &HFF)
  loc_14B91B2:         If (var_110 = &HFF) Then
  loc_14B91B5:           Call Proc_245_62_F2F148(1, Shift)
  loc_14B91BA:         End If
  loc_14B91BA:       End If
  loc_14B91BD:     Else
  loc_14B91C4:       If (var_B0 = CLng(5)) Then
  loc_14B91CD:         var_188 = GRepFormName
  loc_14B91D8:         If Not (var_188 = "Led") Then
  loc_14B91E3:           If Not (var_188 = "LedInt") Then
  loc_14B91EE:             If Not (var_188 = "LedDeb") Then
  loc_14B91F9:               If Not (var_188 = "LedCred") Then
  loc_14B9204:                 If (var_188 = "AcCheckList") Then
  loc_14B9207:                 End If
  loc_14B9207:               End If
  loc_14B9207:             End If
  loc_14B9207:           End If
  loc_14B923D:           Proc_183_34_1307118(1(&HFF), Me.TxtGrid, KeyCode, global_76)
  loc_14B924D:         End If
  loc_14B9257:         If (CLng(Shift) = &HD) Then
  loc_14B9267:           Call Proc_245_58_19C47A4(0, 0, var_110)
  loc_14B9272:           If (var_110 = &HFF) Then
  loc_14B9275:             Call Proc_245_62_F2F148(Shift, &HFF)
  loc_14B927A:           End If
  loc_14B927A:         End If
  loc_14B927D:       Else
  loc_14B9284:         If (var_B0 = CLng(0)) Then
  loc_14B928D:           var_18C = GRepFormName
  loc_14B9298:           If Not (var_18C = "BudgetVariance") Then
  loc_14B92A3:             If (var_18C = "Budget") Then
  loc_14B92A6:             End If
  loc_14B92DC:             Proc_183_34_1307118((1), Me.TxtGrid, KeyCode, global_76)
  loc_14B92EF:           Else
  loc_14B932F:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_14B933F:               Call Proc_245_58_19C47A4(0, 0, var_110)
  loc_14B934A:               If (var_110 = &HFF) Then
  loc_14B934D:                 Call Proc_245_62_F2F148(Shift, &HFF)
  loc_14B9352:               End If
  loc_14B9352:             End If
  loc_14B9352:           End If
  loc_14B9355:         Else
  loc_14B935C:           If Not (var_B0 = CLng(1)) Then
  loc_14B9366:             If Not (var_B0 = CLng(6)) Then
  loc_14B9370:               If Not (var_B0 = CLng(7)) Then
  loc_14B937A:                 If Not (var_B0 = CLng(8)) Then
  loc_14B9384:                   If (var_B0 = CLng(9)) Then
  loc_14B9387:                   End If
  loc_14B9387:                 End If
  loc_14B9387:               End If
  loc_14B9387:             End If
  loc_14B93C7:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_14B93D7:               Call Proc_245_58_19C47A4(0, 0)
  loc_14B93E2:               If (var_110 = &HFF) Then
  loc_14B93E5:                 Call Proc_245_62_F2F148(var_110)
  loc_14B93EA:               End If
  loc_14B93EA:             End If
  loc_14B93EA:           End If
  loc_14B93EA:         End If
  loc_14B93EA:       End If
  loc_14B93EA:     End If
  loc_14B93EA:   End If
  loc_14B93EA: End If
  loc_14B93EA: Exit Sub
  loc_14B93EB: ' Referenced from: 14B8748
  loc_14B93F1: Call 0.Method_arg_50 (var_94)
  loc_14B9406: Proc_183_57_104B0BC(var_94, "TxtGrid_KeyDown")
  loc_14B9412: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '12A4E8C
  'Data Table: 58C0E4
  Dim var_9C As Long
  Dim var_88 As Variant
  loc_12A488C: On Error Goto loc_12A4E62
  loc_12A4892: Proc_183_46_E07C50(arg_10)
  loc_12A489B: Set var_88 = ()
  loc_12A48AA: var_9C = CLng(TxtGrid.DispID_A)
  loc_12A48BA: If (var_9C = CLng(0)) Then
  loc_12A48C3:   var_A0 = GRepFormName
  loc_12A48CE:   If Not (var_A0 = "BudgetVariance") Then
  loc_12A48D9:     If (var_A0 = "Budget") Then
  loc_12A48DC:     End If
  loc_12A48F8:     If (CBool((var_9C).Visible) = &HFF) Then
  loc_12A490A:       var_A4 = "Name"
  loc_12A4925:       Proc_183_41_145A968(Me.TxtGrid, KeyAscii, global_76)
  loc_12A4934:     End If
  loc_12A4934:   End If
  loc_12A4937: Else
  loc_12A493E:   If (var_9C = CLng(2)) Then
  loc_12A4947:     var_B0 = GRepFormName
  loc_12A4952:     If Not (var_B0 = "JournalBook") Then
  loc_12A495D:       If (var_B0 = "Annexure") Then
  loc_12A4960:       End If
  loc_12A497C:       If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12A498E:         var_A4 = "Name"
  loc_12A49A9:         Proc_183_41_145A968(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_12A49B8:       End If
  loc_12A49BB:     Else
  loc_12A49C3:       If Not (var_B0 = "DailySumm") Then
  loc_12A49CE:         If Not (var_B0 = "AgingDr") Then
  loc_12A49D9:           If Not (var_B0 = "AgingCr") Then
  loc_12A49E4:             If Not (var_B0 = "Clg") Then
  loc_12A49EF:               If Not (var_B0 = "ClgNot") Then
  loc_12A49FA:                 If Not (var_B0 = "AgingRepDr") Then
  loc_12A4A05:                   If (var_B0 = "AgingRepCr") Then
  loc_12A4A08:                   End If
  loc_12A4A08:                 End If
  loc_12A4A08:               End If
  loc_12A4A08:             End If
  loc_12A4A08:           End If
  loc_12A4A08:         End If
  loc_12A4A24:         If (CBool(0(var_A4).Visible) = &HFF) Then
  loc_12A4A2B:           Set var_AC = Me.TxtGrid
  loc_12A4A36:           var_A4 = "Name"
  loc_12A4A51:           Proc_183_41_145A968(var_AC, KeyAscii, global_76, arg_10)
  loc_12A4A60:         End If
  loc_12A4A60:       End If
  loc_12A4A60:     End If
  loc_12A4A63:   Else
  loc_12A4A6A:     If (var_9C = CLng(3)) Then
  loc_12A4A73:       var_B4 = GRepFormName
  loc_12A4A7E:       If (var_B4 = "DueListPeriod") Then
  loc_12A4A8B:         Set var_88 = Me.TxtGrid
  loc_12A4A91:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_12A4AAC:         Proc_183_22_129BBAC(var_AC, arg_10, 3)
  loc_12A4ABB:       Else
  loc_12A4AC3:         If Not (var_B4 = "CashBook") Then
  loc_12A4ACE:           If Not (var_B4 = "BankBook") Then
  loc_12A4AD9:             If (var_B4 = "RozNamcha") Then
  loc_12A4ADC:             End If
  loc_12A4ADC:           End If
  loc_12A4AE6:           Set var_88 = Me.TxtGrid
  loc_12A4AEC:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_12A4B07:           Proc_183_22_129BBAC(var_AC, arg_10, 4)
  loc_12A4B16:         Else
  loc_12A4B1E:           If (var_B4 = "DayBook") Then
  loc_12A4B3D:             If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_12A4B6A:               Proc_183_41_145A968(Me.TxtGrid, KeyAscii, global_80, arg_10, "Name")
  loc_12A4B79:             End If
  loc_12A4B7C:           Else
  loc_12A4B84:             If Not (var_B4 = "Led") Then
  loc_12A4B8F:               If (var_B4 = "LedInt") Then
  loc_12A4B92:               End If
  loc_12A4BA7:               Set var_88 = CVar(CLng(2))(1)
  loc_12A4BDA:               If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_12A4BF9:                 If (CBool(0(0).Visible) = &HFF) Then
  loc_12A4C0B:                   var_A4 = "Name"
  loc_12A4C26:                   Proc_183_41_145A968(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_12A4C35:                 End If
  loc_12A4C38:               Else
  loc_12A4C54:                 If (CBool(0(var_A4).Visible) = &HFF) Then
  loc_12A4C66:                   var_A4 = "Name"
  loc_12A4C81:                   Proc_183_41_145A968(Me.TxtGrid, KeyAscii, global_76, arg_10)
  loc_12A4C90:                 End If
  loc_12A4C90:               End If
  loc_12A4C90:             End If
  loc_12A4C90:           End If
  loc_12A4C90:         End If
  loc_12A4C90:       End If
  loc_12A4C93:     Else
  loc_12A4C9A:       If (var_9C = CLng(4)) Then
  loc_12A4CA3:         var_140 = GRepFormName
  loc_12A4CAE:         If Not (var_140 = "CashBook") Then
  loc_12A4CB9:           If Not (var_140 = "BankBook") Then
  loc_12A4CC4:             If Not (var_140 = "Led") Then
  loc_12A4CCF:               If Not (var_140 = "LedInt") Then
  loc_12A4CDA:                 If Not (var_140 = "LedDeb") Then
  loc_12A4CE5:                   If Not (var_140 = "LedCred") Then
  loc_12A4CF0:                     If Not (var_140 = "AcCheckList") Then
  loc_12A4CFB:                       If (var_140 = "RozNamcha") Then
  loc_12A4CFE:                       End If
  loc_12A4CFE:                     End If
  loc_12A4CFE:                   End If
  loc_12A4CFE:                 End If
  loc_12A4CFE:               End If
  loc_12A4CFE:             End If
  loc_12A4CFE:           End If
  loc_12A4D1A:           If (CBool(0(var_A4).Visible) = &HFF) Then
  loc_12A4D2C:             var_A4 = "Name"
  loc_12A4D47:             Proc_183_41_145A968(Me.TxtGrid, KeyAscii, global_76, arg_10)
  loc_12A4D56:           End If
  loc_12A4D59:         Else
  loc_12A4D61:           If (var_140 = "JournalBook") Then
  loc_12A4D80:             If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_12A4D92:               var_A4 = "Name"
  loc_12A4DAD:               Proc_183_41_145A968(Me.TxtGrid, KeyAscii, global_80, arg_10, var_A4)
  loc_12A4DBC:             End If
  loc_12A4DBC:           End If
  loc_12A4DBC:         End If
  loc_12A4DBF:       Else
  loc_12A4DC6:         If (var_9C = CLng(5)) Then
  loc_12A4DCF:           var_144 = GRepFormName
  loc_12A4DDA:           If Not (var_144 = "Led") Then
  loc_12A4DE5:             If Not (var_144 = "LedInt") Then
  loc_12A4DF0:               If Not (var_144 = "LedDeb") Then
  loc_12A4DFB:                 If Not (var_144 = "LedCred") Then
  loc_12A4E06:                   If (var_144 = "AcCheckList") Then
  loc_12A4E09:                   End If
  loc_12A4E09:                 End If
  loc_12A4E09:               End If
  loc_12A4E09:             End If
  loc_12A4E25:             If (CBool(var_A4(0).Visible) = &HFF) Then
  loc_12A4E37:               var_A4 = "Name"
  loc_12A4E52:               Proc_183_41_145A968(Me.TxtGrid, KeyAscii, global_76, arg_10, var_A4)
  loc_12A4E61:             End If
  loc_12A4E61:           End If
  loc_12A4E61:         End If
  loc_12A4E61:       End If
  loc_12A4E61:     End If
  loc_12A4E61:   End If
  loc_12A4E61: End If
  loc_12A4E61: Exit Sub
  loc_12A4E62: ' Referenced from: 12A488C
  loc_12A4E68: Call 0.Method_arg_50 (var_A4, 0, 0)
  loc_12A4E7D: Proc_183_57_104B0BC(var_A4, "TxtGrid_KeyPress")
  loc_12A4E89: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '13755EC
  'Data Table: 58C0E4
  Dim var_9C As Long
  Dim var_88 As Variant
  loc_1374D84: On Error Goto loc_13755C2
  loc_1374D8B: Set var_88 = ()
  loc_1374D9A: var_9C = CLng(TxtGrid.DispID_A)
  loc_1374DAA: If (var_9C = CLng(0)) Then
  loc_1374DB3:   var_A0 = GRepFormName
  loc_1374DBE:   If Not (var_A0 = "BudgetVariance") Then
  loc_1374DC9:     If (var_A0 = "Budget") Then
  loc_1374DCC:     End If
  loc_1374DEF:     If ( And (CBool(var_9C((Shift <> &HD)).Visible) = 0)) Then
  loc_1374E00:       Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1374E14:       var_A8 = "Name"
  loc_1374E2F:       Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_1374E3E:     End If
  loc_1374E3E:   End If
  loc_1374E41: Else
  loc_1374E48:   If (var_9C = CLng(2)) Then
  loc_1374E51:     var_B0 = GRepFormName
  loc_1374E5C:     If Not (var_B0 = "JournalBook") Then
  loc_1374E67:       If (var_B0 = "Annexure") Then
  loc_1374E6A:       End If
  loc_1374E8D:       If (&HFF And (CBool(var_A8((Shift <> &HD)).Visible) = 0)) Then
  loc_1374E9E:         Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1374EB2:         var_A8 = "Name"
  loc_1374ECD:         Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_72, Shift)
  loc_1374EDC:       End If
  loc_1374EDF:     Else
  loc_1374EE7:       If Not (var_B0 = "DailySumm") Then
  loc_1374EF2:         If Not (var_B0 = "AgingDr") Then
  loc_1374EFD:           If Not (var_B0 = "AgingCr") Then
  loc_1374F08:             If Not (var_B0 = "Clg") Then
  loc_1374F13:               If Not (var_B0 = "ClgNot") Then
  loc_1374F1E:                 If Not (var_B0 = "AgingRepDr") Then
  loc_1374F29:                   If (var_B0 = "AgingRepCr") Then
  loc_1374F2C:                   End If
  loc_1374F2C:                 End If
  loc_1374F2C:               End If
  loc_1374F2C:             End If
  loc_1374F2C:           End If
  loc_1374F2C:         End If
  loc_1374F4F:         If (&HFF And (CBool(var_A8((Shift <> &HD)).Visible) = 0)) Then
  loc_1374F60:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1374F8F:           Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_76, Shift, "Name")
  loc_1374F9E:         End If
  loc_1374FA1:       Else
  loc_1374FC3:         If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_1374FD4:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1374FD9:         End If
  loc_1375007:         Proc_183_35_F2A594(Me.ListView, Me.TxtGrid, 0, Shift, global_184)
  loc_1375017:       End If
  loc_1375017:     End If
  loc_137501A:   Else
  loc_1375021:     If (var_9C = CLng(3)) Then
  loc_137502A:       var_BC = GRepFormName
  loc_1375035:       If Not (var_BC = "Annexure") Then
  loc_1375040:         If Not (var_BC = "RefReport") Then
  loc_137504B:           If (var_BC = "JournalBook") Then
  loc_137504E:           End If
  loc_137504E:         End If
  loc_1375070:         If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_1375081:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1375086:         End If
  loc_13750B4:         Proc_183_35_F2A594(Me.ListView, Me.TxtGrid, 0, Shift, global_184, 0)
  loc_13750C7:       Else
  loc_13750CF:         If (var_BC = "DayBook") Then
  loc_13750F5:           If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_1375106:             Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1375135:             Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_80, Shift, "Name", &HFF)
  loc_1375144:           End If
  loc_1375147:         Else
  loc_137514F:           If Not (var_BC = "Led") Then
  loc_137515A:             If Not (var_BC = "LedInt") Then
  loc_1375165:               If Not (var_BC = "LedDeb") Then
  loc_1375170:                 If Not (var_BC = "LedCred") Then
  loc_137517B:                   If (var_BC = "AcCheckList") Then
  loc_137517E:                   End If
  loc_137517E:                 End If
  loc_137517E:               End If
  loc_137517E:             End If
  loc_1375193:             Set var_88 = CVar(CLng(2))(1)
  loc_13751C6:             If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_13751EC:               If (0 And (CBool(0((Shift <> &HD)).Visible) = 0)) Then
  loc_13751FD:                 Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_137522C:                 Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_72, Shift, "Name", &HFF)
  loc_137523B:               End If
  loc_137523E:             Else
  loc_1375261:               If (&HFF And (CBool(0((Shift <> &HD)).Visible) = 0)) Then
  loc_1375272:                 Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_13752A1:                 Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_76, Shift, "Name")
  loc_13752B0:               End If
  loc_13752B0:             End If
  loc_13752B0:           End If
  loc_13752B0:         End If
  loc_13752B0:       End If
  loc_13752B3:     Else
  loc_13752BA:       If (var_9C = CLng(4)) Then
  loc_13752C3:         var_140 = GRepFormName
  loc_13752CE:         If Not (var_140 = "CashBook") Then
  loc_13752D9:           If Not (var_140 = "BankBook") Then
  loc_13752E4:             If Not (var_140 = "Led") Then
  loc_13752EF:               If Not (var_140 = "LedInt") Then
  loc_13752FA:                 If Not (var_140 = "LedDeb") Then
  loc_1375305:                   If Not (var_140 = "LedCred") Then
  loc_1375310:                     If Not (var_140 = "AcCheckList") Then
  loc_137531B:                       If (var_140 = "RozNamcha") Then
  loc_137531E:                       End If
  loc_137531E:                     End If
  loc_137531E:                   End If
  loc_137531E:                 End If
  loc_137531E:               End If
  loc_137531E:             End If
  loc_137531E:           End If
  loc_1375341:           If (0 And (CBool(&HFF((Shift <> &HD)).Visible) = 0)) Then
  loc_1375352:             Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1375381:             Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_76, Shift, "Name")
  loc_1375390:           End If
  loc_1375393:         Else
  loc_137539B:           If (var_140 = "JournalBook") Then
  loc_13753C1:             If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_13753D2:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1375401:               Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_80, Shift, "Name", &HFF)
  loc_1375410:             End If
  loc_1375413:           Else
  loc_1375435:             If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_1375446:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_137544B:             End If
  loc_1375479:             Proc_183_35_F2A594(Me.ListView, Me.TxtGrid, 0, Shift, global_184, 0)
  loc_1375489:           End If
  loc_1375489:         End If
  loc_137548C:       Else
  loc_1375493:         If (var_9C = CLng(5)) Then
  loc_137549C:           var_144 = GRepFormName
  loc_13754A7:           If Not (var_144 = "Led") Then
  loc_13754B2:             If Not (var_144 = "LedInt") Then
  loc_13754BD:               If Not (var_144 = "LedDeb") Then
  loc_13754C8:                 If Not (var_144 = "LedCred") Then
  loc_13754D3:                   If (var_144 = "AcCheckList") Then
  loc_13754D6:                   End If
  loc_13754D6:                 End If
  loc_13754D6:               End If
  loc_13754D6:             End If
  loc_13754F9:             If (&HFF And (CBool(0((Shift <> &HD)).Visible) = 0)) Then
  loc_137550A:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_137551E:               var_A8 = "Name"
  loc_1375539:               Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_76, Shift, var_A8, &HFF)
  loc_1375548:             End If
  loc_137554B:           Else
  loc_137556D:             If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_137557E:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1375583:             End If
  loc_13755B1:             Proc_183_35_F2A594(Me.ListView, Me.TxtGrid, 0, Shift, global_184, 0)
  loc_13755C1:           End If
  loc_13755C1:         End If
  loc_13755C1:       End If
  loc_13755C1:     End If
  loc_13755C1:   End If
  loc_13755C1: End If
  loc_13755C1: Exit Sub
  loc_13755C2: ' Referenced from: 1374D84
  loc_13755C8: Call 0.Method_arg_50 (var_A8, 0, 0)
  loc_13755DD: Proc_183_57_104B0BC(var_A8, "TxtGrid_KeyUp", 0)
  loc_13755E9: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5FEC0
  'Data Table: 58C0E4
  Dim arg_10 As Integer
  loc_E5FE7C: On Error Goto loc_E5FE97
  loc_E5FE8A: Call Proc_245_58_19C47A4(Cancel, &HFF)
  loc_E5FE93: arg_10 = Not(var_88)
  loc_E5FE96: Exit Sub
  loc_E5FE97: ' Referenced from: E5FE7C
  loc_E5FE9D: Call 0.Method_arg_50 (var_8C, arg_10)
  loc_E5FEB2: Proc_183_57_104B0BC(var_8C, "TxtGrid_Validate")
  loc_E5FEBE: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 '10C90A4
  'Data Table: 58C0E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Variant
  Dim var_D0 As TextBox
  Dim var_CC As TextBox
  loc_10C8DBC: On Error Goto loc_10C907C
  loc_10C8DD6: If ((GRepFormName = "DayBook") Or (GRepFormName = "JournalBook")) Then
  loc_10C8DE8:   Me.DGSite.Visible = False
  loc_10C8E07:   If (Me.RecordCount > 0) Then
  loc_10C8E63:     Set var_CC = Me.TxtGrid
  loc_10C8E69:     Call 0.Method_DGSite_UnknownEvent_90 (CInt(Val(CStr(Me.DGSite.Tag))), var_D0)
  loc_10C8E71:     var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_10C8E95:     Set var_B4 = Me.DGSite
  loc_10C8EAB:     var_EC = Val(CStr(var_B4.Tag))
  loc_10C8EEA:     Set var_CC = Me.TxtGrid
  loc_10C8EF0:     Call 0.Method_DGSite_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Name").Value))
  loc_10C8EF8:     var_D0.Text = var_EC
  loc_10C8F18:   End If
  loc_10C8F32:   var_EC = Val(CStr(Me.DGSite.Tag))
  loc_10C8F40:   Set var_B0 = Me.TxtGrid
  loc_10C8F46:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(var_EC), var_B4)
  loc_10C8F4E:   var_B4.SetFocus
  loc_10C8F65: Else
  loc_10C8F74:   Me.DGSite.Visible = False
  loc_10C8F93:   If (Me.RecordCount > 0) Then
  loc_10C8FD2:     Set var_B4 = Me.TEXT
  loc_10C8FD8:     Call 0.Method_DGSite_UnknownEvent_90 (CInt(&HC), var_CC, CStr(Me.Fields.Item("Code").Value))
  loc_10C8FE0:     var_CC.Tag = var_EC
  loc_10C9013:     var_B0 = Me.Fields.Item("Name")
  loc_10C9024:     var_C8 = CStr(var_B0.Value)
  loc_10C9032:     Set var_B4 = Me.TEXT
  loc_10C9038:     Call 0.Method_DGSite_UnknownEvent_90 (CInt(&HC), var_CC)
  loc_10C9040:     var_CC.Text = var_C8
  loc_10C9056:   End If
  loc_10C9061:   Set var_A8 = Me.TEXT
  loc_10C9067:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(&HC), var_B0)
  loc_10C906F:   var_B0.SetFocus
  loc_10C907B: End If
  loc_10C907B: Exit Sub
  loc_10C907C: ' Referenced from: 10C8DBC
  loc_10C9082: Call 0.Method_arg_50 (var_C8)
  loc_10C9097: Proc_183_57_104B0BC(var_C8, "DGSite_Click")
  loc_10C90A3: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) '1068DE0
  'Data Table: 58C0E4
  Dim var_88 As TextBox
  Dim var_9C As Double
  Dim var_8C As String
  Dim var_178 As String
  loc_1068B84: On Error Goto loc_1068DB5
  loc_1068B92: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_1068BAF:   var_9C = Val(Me.TxtSearch.Tag)
  loc_1068BBD:   Set var_90 = var_94(CInt(var_9C))
  loc_1068BC3:   Call 0.Method_TxtSearch_KeyDown0 (var_9C)
  loc_1068BEB:   Me.TxtSearch.Visible = False
  loc_1068BF3: End If
  loc_1068BFD: If (CLng(KeyCode) = &H2E) Then
  loc_1068C0D:   Me.TxtSearch.Text = vbNullString
  loc_1068C15: End If
  loc_1068C2A: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_1068C47:   var_9C = Val(Me.TxtSearch.Tag)
  loc_1068C55:   Set var_90 = var_94(CInt(var_9C))
  loc_1068C5B:   Call 0.Method_TxtSearch_KeyDown0 (var_9C)
  loc_1068C83:   Me.TxtSearch.Visible = False
  loc_1068C8B: End If
  loc_1068CC6: If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_1068CD2:   Set var_88 = var_90(1)
  loc_1068CD8:   Call 0.Method_TxtSearch_KeyDown0 (TxtSearch.DispID_8001)
  loc_1068D00:   Set var_94 = var_B0(1)
  loc_1068D06:   Call 0.Method_TxtSearch_KeyDown0 (3, CVar(CLng(TxtSearch.DispID_A)))
  loc_1068D19:   var_8C = CStr(TxtSearch.DispID_41)
  loc_1068D2C:   Set var_104 = var_108(1)
  loc_1068D32:   Call 0.Method_TxtSearch_KeyDown0 (var_8C & vbCrLf)
  loc_1068D5A:   Set var_11C = var_120(1)
  loc_1068D60:   Call 0.Method_TxtSearch_KeyDown0 (4, CVar(CLng(TxtSearch.DispID_A)))
  loc_1068D84:   Me.TxtDetails.Text = TxtSearch.DispID_8001 & CStr(TxtSearch.DispID_41)
  loc_1068DB4: End If
  loc_1068DB4: Exit Sub
  loc_1068DB5: ' Referenced from: 1068B84
  loc_1068DBB: Call 0.Method_arg_50 (var_8C)
  loc_1068DC3: var_178 = "TxtSearch_KeyDown"
  loc_1068DD0: Proc_183_57_104B0BC(var_8C)
  loc_1068DDC: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'E53064
  'Data Table: 58C0E4
  Dim var_98 As Double
  loc_E5304A: var_98 = Val(Me.TxtSearch.Tag)
  loc_E53057: Call GridSel_UnknownEvent_C()
  loc_E53062: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E3DA48
  'Data Table: 58C0E4
  loc_E3DA29: Me.TxtSearch.Text = vbNullString
  loc_E3DA3D: Me.TxtSearch.Visible = False
  loc_E3DA45: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'ECABF0
  'Data Table: 58C0E4
  Dim var_9C As Double
  loc_ECAB50: On Error Goto loc_ECABC7
  loc_ECAB60: Me.TxtSearch.Text = vbNullString
  loc_ECAB75: var_8C = Me.TxtSearch.Tag
  loc_ECAB82: var_9C = Val(var_8C)
  loc_ECAB90: Set var_90 = var_94(CInt(var_9C))
  loc_ECAB96: Call 0.Method_TxtSearch_Click0 (var_9C)
  loc_ECABBE: Me.TxtSearch.Visible = False
  loc_ECABC6: Exit Sub
  loc_ECABC7: ' Referenced from: ECAB50
  loc_ECABCD: Call 0.Method_arg_50 (var_8C)
  loc_ECABE2: Proc_183_57_104B0BC(var_8C, "TxtSearch_Click")
  loc_ECABEE: Exit Sub
End Sub

Private Sub Form_Load() '1271A58
  'Data Table: 58C0E4
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_C4 As Variant
  Dim var_D0 As TextBox
  loc_12714B4: On Error Goto loc_1271A2E
  loc_12714BE: Call 0.Method_arg_74 (CDbl(0))
  loc_12714CA: Call 0.Method_arg_7C (CDbl(0))
  loc_12714D7: Call 0.Method_Me4 (CDbl(11900))
  loc_12714E4: Call 0.Method_MeC (CDbl(7085))
  loc_12714E9: Call Proc_245_59_172E0AC()
  loc_12714F8: Set var_A8 = Me.TopCtrl1
  loc_12714FE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005("Add")
  loc_1271512: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_1271523: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_1271534: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_1271545: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_1271556: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_1271567: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_1271578: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_1271589: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_127159A: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_12715AB: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_12715C5: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_12715D3: Set var_A8 = MemVar_1F95044
  loc_12715E2: Call 0.Method_Form_Load8 (var_A8)
  loc_12715F8: Me.TopCtrl1.Clone
  loc_1271612: Call 0.Method_arg_50 (var_A8, -1)
  loc_1271642: Me.Connection15.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_C4, -1
  loc_1271653: Set global_68 = var_A8
  loc_127167F: If (Me.RecordCount > 0) Then
  loc_1271694:   var_A8 = Me.Fields
  loc_12716B9:   Set var_CC = Me.TxtHeader
  loc_12716BF:   Call 0.Method_Form_Load0 (0, var_D0)
  loc_12716C7:   var_D0.Text = Proc_183_2_E5AE94(CVar(var_A8.Item("TagadaHeader1")), var_A8)
  loc_1271712:   Set var_CC = Me.TxtHeader
  loc_1271718:   Call 0.Method_Form_Load0 (1, var_D0)
  loc_1271720:   var_D0.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaHeader2")))
  loc_127176B:   Set var_CC = Me.TxtHeader
  loc_1271771:   Call 0.Method_Form_Load0 (2, var_D0)
  loc_1271779:   var_D0.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaHeader3")))
  loc_12717C4:   Set var_CC = Me.TxtHeader
  loc_12717CA:   Call 0.Method_Form_Load0 (3, var_D0)
  loc_12717D2:   var_D0.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaHeader4")))
  loc_127181D:   Set var_CC = Me.TxtHeader
  loc_1271823:   Call 0.Method_Form_Load0 (4, var_D0)
  loc_127182B:   var_D0.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaHeader5")))
  loc_1271876:   Set var_CC = Me.TxtFooter
  loc_127187C:   Call 0.Method_Form_Load0 (0, var_D0)
  loc_1271884:   var_D0.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter1")))
  loc_12718CF:   Set var_CC = Me.TxtFooter
  loc_12718D5:   Call 0.Method_Form_Load0 (1, var_D0)
  loc_12718DD:   var_D0.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter2")))
  loc_1271928:   Set var_CC = Me.TxtFooter
  loc_127192E:   Call 0.Method_Form_Load0 (2, var_D0)
  loc_1271936:   var_D0.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter3")))
  loc_1271981:   Set var_CC = Me.TxtFooter
  loc_1271987:   Call 0.Method_Form_Load0 (3, var_D0)
  loc_127198F:   var_D0.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter4")))
  loc_12719CE:   var_B0 = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TagadaFooter5")))
  loc_12719DA:   Set var_CC = Me.TxtFooter
  loc_12719E0:   Call 0.Method_Form_Load0 (4, var_D0)
  loc_12719E8:   var_D0.Text = var_B0
  loc_12719FC: End If
  loc_1271A03: Call 0.Method_arg_74 (CDbl(0))
  loc_1271A0F: Call 0.Method_arg_7C (CDbl(0))
  loc_1271A1C: Call 0.Method_Me4 (CDbl(11900))
  loc_1271A29: Call 0.Method_MeC (CDbl(7935))
  loc_1271A2E: ' Referenced from: 12714B4
  loc_1271A34: Call 0.Method_arg_50 (var_B0)
  loc_1271A49: Proc_183_57_104B0BC(var_B0, "Form_Load")
  loc_1271A55: Exit Sub
End Sub

Private Sub Form_Resize() 'EF6798
  'Data Table: 58C0E4
  Dim var_94 As PictureBox
  loc_EF66C6: Call 0.Method_arg_100 (var_88)
  loc_EF66D2: If (var_88 > CDbl(0)) Then
  loc_EF66ED:   Call 0.Method_arg_100 (var_88)
  loc_EF66FE:   Set var_94 = ((var_88 - Me.PictParameter.ScaleWidth))
  loc_EF6704:   var_94.Width = 
  loc_EF6710: End If
  loc_EF6722: (CVar(CDbl(0))).Top = 
  loc_EF673C: (CVar(CDbl(0))).Left = 
  loc_EF6748: Call 0.Method_arg_108 (var_88)
  loc_EF675F: (CVar(var_88)).Height = 
  loc_EF6774:  = (var_88).Width
  loc_EF678B: (CVar(var_88)).Width = 
  loc_EF6797: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB1A58
  'Data Table: 58C0E4
  loc_EB19C7: Set global_56 = Nothing
  loc_EB19D9: Set global_60 = Nothing
  loc_EB19EB: Set global_184 = Nothing
  loc_EB19FD: Set global_68 = Nothing
  loc_EB1A0F: Set global_72 = Nothing
  loc_EB1A21: Set global_76 = Nothing
  loc_EB1A33: Set global_80 = Nothing
  loc_EB1A3F: MemVar_1F951E8 = Nothing
  loc_EB1A4E: Set global_188 = Nothing
  loc_EB1A55: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F0A260
  'Data Table: 58C0E4
  Dim var_86 As Integer
  loc_F0A16F: var_86 = KeyCode
  loc_F0A17C: If (var_86 = CInt(&H24)) Then
  loc_F0A189:   (var_86).SetFocus
  loc_F0A196:   Call Command2_Click()
  loc_F0A19E: Else
  loc_F0A1A8:   If (var_86 = CInt(&H21)) Then
  loc_F0A1B5:     (0).SetFocus
  loc_F0A1C2:     Call Command2_Click()
  loc_F0A1CA:   Else
  loc_F0A1D4:     If (var_86 = CInt(&H22)) Then
  loc_F0A1E1:       (1).SetFocus
  loc_F0A1EE:       Call Command2_Click()
  loc_F0A1F6:     Else
  loc_F0A200:       If (var_86 = CInt(&H23)) Then
  loc_F0A20D:         (2).SetFocus
  loc_F0A21A:         Call Command2_Click()
  loc_F0A222:       Else
  loc_F0A22C:         If (var_86 = CInt(&H1B)) Then
  loc_F0A23C:           Me.Global.Unload Me
  loc_F0A244:         End If
  loc_F0A244:       End If
  loc_F0A244:     End If
  loc_F0A244:   End If
  loc_F0A244: End If
  loc_F0A256: Proc_183_40_F3169C(Me, KeyCode)
  loc_F0A25E: Exit Sub
End Sub

Private Sub Command2_Click(Index As Integer) 'EBBE94
  'Data Table: 58C0E4
  Dim var_86 As Integer
  Dim arg_163 As Variant
  Dim arg_165 As Variant
  Dim arg_164 As Variant
  Dim arg_166 As Variant
  loc_EBBDF0: On Error Resume Next
  loc_EBBDF8: var_86 = Index
  loc_EBBE03: If (var_86 = 0) Then
  loc_EBBE12:   arg_163 = (var_86)._Default
  loc_EBBE20: Else
  loc_EBBE28:   If (var_86 = 1) Then
  loc_EBBE37:     arg_165 = (arg_163)._Default
  loc_EBBE45:   Else
  loc_EBBE4D:     If (var_86 = 2) Then
  loc_EBBE5C:       arg_164 = (arg_165)._Default
  loc_EBBE6A:     Else
  loc_EBBE72:       If (var_86 = 3) Then
  loc_EBBE81:         arg_166 = (arg_164)._Default
  loc_EBBE8C:       End If
  loc_EBBE8C:     End If
  loc_EBBE8C:   End If
  loc_EBBE8C: End If
  loc_EBBE90: Exit Sub
  loc_EBBE91: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 '100E768
  'Data Table: 58C0E4
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_A0 As ListItem
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_100E564: On Error Goto loc_100E73D
  loc_100E582: If (Me.FrDetail.Visible = &HFF) Then
  loc_100E589:   Set var_A8 = Me.ListView
  loc_100E5D3:   Set var_C0 = Me.TEXT
  loc_100E5D9:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_100E5E1:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_100E60D:   Me.FrmList.Visible = False
  loc_100E63D:   Set var_A0 = Me.TEXT
  loc_100E643:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_100E64B:   var_A8.SetFocus
  loc_100E662: Else
  loc_100E666:   Set var_A8 = Me.ListView
  loc_100E67C:   var_CC = Val(CStr(var_A8.Tag))
  loc_100E6B0:   Set var_C0 = Me.TxtGrid
  loc_100E6B6:   Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_C4, Me.ListView.SelectedItem.Text)
  loc_100E6BE:   var_C4.Text = var_CC
  loc_100E6EA:   Me.FrmList.Visible = False
  loc_100E704:   var_A4 = CStr(Me.ListView.Tag)
  loc_100E70C:   var_CC = Val(var_A4)
  loc_100E71A:   Set var_A0 = Me.TxtGrid
  loc_100E720:   Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_A8, var_CC)
  loc_100E728:   var_A8.SetFocus
  loc_100E73C: End If
  loc_100E73C: Exit Sub
  loc_100E73D: ' Referenced from: 100E564
  loc_100E743: Call 0.Method_arg_50 (var_A4, var_CC)
  loc_100E758: Proc_183_57_104B0BC(var_A4, "ListView_Click")
  loc_100E764: Exit Sub
End Sub

Private Sub BtnParam_Click() '103E30C
  'Data Table: 58C0E4
  Dim var_88 As Variant
  Dim var_90 As Variant
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As DataGrid
  Dim var_C4 As TextBox
  loc_103E0CC: On Error Goto loc_103E2E2
  loc_103E0DB: Me.FrDetail.Visible = True
  loc_103E0F2: Me.FrDetail.Left = CDbl(1395)
  loc_103E109: Me.FrDetail.Top = CDbl(1900)
  loc_103E117: var_8C = GRepFormName
  loc_103E122: If Not (var_8C = "Led") Then
  loc_103E12D:   If Not (var_8C = "LedInt") Then
  loc_103E138:     If Not (var_8C = "LedDeb") Then
  loc_103E143:       If Not (var_8C = "LedCred") Then
  loc_103E14E:         If (var_8C = "AcCheckList") Then
  loc_103E151:         End If
  loc_103E151:       End If
  loc_103E151:     End If
  loc_103E151:   End If
  loc_103E15C:   Set var_88 = Me.Label1
  loc_103E162:   Call 0.Method_BtnParam_Click0 (7, var_90)
  loc_103E16A:   var_90.Visible = True
  loc_103E183:   Set var_88 = Me.TEXT
  loc_103E189:   Call 0.Method_BtnParam_Click0 (CInt(&HD), var_90)
  loc_103E191:   var_90.Visible = True
  loc_103E19D: End If
  loc_103E1A8: Set var_88 = Me.Label1
  loc_103E1AE: Call 0.Method_BtnParam_Click0 (6, var_90)
  loc_103E1B6: var_90.Visible = True
  loc_103E1CF: Set var_88 = Me.TEXT
  loc_103E1D5: Call 0.Method_BtnParam_Click0 (CInt(&HC), var_90)
  loc_103E1DD: var_90.Visible = True
  loc_103E1F7: Set var_90 = Me.TEXT
  loc_103E1FD: Call 0.Method_BtnParam_Click0 (CInt(&HC), var_98)
  loc_103E223: var_AC = CVar((Me.FrDetail.Left + var_98.Left)) 'Single
  loc_103E232: Me.DGSite.Left = var_AC
  loc_103E250: Set var_90 = Me.TEXT
  loc_103E256: Call 0.Method_BtnParam_Click0 (CInt(&HC), var_98)
  loc_103E271: Set var_C0 = Me.TEXT
  loc_103E277: Call 0.Method_BtnParam_Click0 (CInt(&HC), var_C4)
  loc_103E2A1: var_AC = CVar(((Me.FrDetail.Top + var_98.Top) + var_C4.Height)) 'Single
  loc_103E2B0: Me.DGSite.Top = var_AC
  loc_103E2D6: Me.DGSite.Tag = CVar(CStr(&HC))
  loc_103E2E1: Exit Sub
  loc_103E2E2: ' Referenced from: 103E0CC
  loc_103E2E8: Call 0.Method_arg_50 (var_E0)
  loc_103E2F0: var_E8 = "BtnParam_Click"
  loc_103E2FD: Proc_183_57_104B0BC(var_E0)
  loc_103E309: Exit Sub
  loc_103E30A: var_E8 = 
End Sub

Public Function GRepFormNameGet() '58E990
  GRepFormNameGet = GRepFormName
End Function

Public Sub GRepFormNamePut(Value) '58E99F
  GRepFormName = Value
End Sub

Public Function mDetailTrial(Rst) '1046C0C
  'Data Table: 58C0E4
  Dim var_8C As Recordset15
  loc_10469A9: Set var_8C = Rst 
  loc_10469D1: var_8C.Fields.Append "TT", 3, 0
  loc_10469FD: var_8C.Fields.Append "GroupName", &HC8, &HFF
  loc_1046A29: var_8C.Fields.Append "GRCODE", &HC8, &HFF
  loc_1046A55: var_8C.Fields.Append "PARTYCODE", &HC8, &HFF
  loc_1046A81: var_8C.Fields.Append "PARTYNAME", &HC8, &HFF
  loc_1046AAD: var_8C.Fields.Append "OP_CR", 5, 0
  loc_1046AD9: var_8C.Fields.Append "OP_dR", 5, 0
  loc_1046B05: var_8C.Fields.Append "BALANCECR", 5, 0
  loc_1046B31: var_8C.Fields.Append "BALANCEDR", 5, 0
  loc_1046B5D: var_8C.Fields.Append "Bal", 3, 0
  loc_1046B89: var_8C.Fields.Append "mgrcode", &HC8, &HFF
  loc_1046BB5: var_8C.Fields.Append "GRName", &HC8, &HFF
  loc_1046BC5: var_8C.CursorType = 3
  loc_1046BD2: var_8C.LockType = 3
  loc_1046BF1: var_8C.Open var_A0, var_B0, -1
  loc_1046BF8: Set var_8C = Nothing 
  loc_1046BFF: Set var_88 = Rst 
  loc_1046C03: mDetailTrial = -1
End Function

Public Function mAgeingReport(Rst) '1047940
  'Data Table: 58C0E4
  Dim var_8C As Recordset15
  loc_10476DD: Set var_8C = Rst 
  loc_1047705: var_8C.Fields.Append "ACC_NAME", &HC8, &H23
  loc_1047731: var_8C.Fields.Append "DEBIT1", 5, &H13
  loc_104775D: var_8C.Fields.Append "DEBIT2", 5, &H13
  loc_1047789: var_8C.Fields.Append "DEBIT3", 5, &H13
  loc_10477B5: var_8C.Fields.Append "DEBIT4", 5, &H13
  loc_10477E1: var_8C.Fields.Append "DEBIT5", 5, &H13
  loc_104780D: var_8C.Fields.Append "DEBIT6", 5, &H13
  loc_1047839: var_8C.Fields.Append "DEBIT", 5, &H13
  loc_1047865: var_8C.Fields.Append "TOTALDR", 5, &H13
  loc_1047891: var_8C.Fields.Append "CREDIT", 5, &H13
  loc_10478BD: var_8C.Fields.Append "CON_PER", &HC8, &H32
  loc_10478E9: var_8C.Fields.Append "ANAME", &HC8, &H23
  loc_10478F9: var_8C.CursorType = 3
  loc_1047906: var_8C.LockType = 3
  loc_1047925: var_8C.Open var_A0, var_B0, -1
  loc_104792C: Set var_8C = Nothing 
  loc_1047933: Set var_88 = Rst 
  loc_1047937: mAgeingReport = -1
End Function

Public Sub Proc_245_58_19C47A4(arg_C, arg_10) '19C47A4
  'Data Table: 58C0E4
  Dim var_9C As String
  Dim var_B4 As Long
  Dim Me As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_F4 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_138 As ListView
  Dim var_13C As Variant
  Dim var_194 As String
  loc_19C16D0: On Error Goto loc_19C4775
  loc_19C16E1: var_8C = " Where (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19C16F5: var_90 = " And (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19C1709: var_94 = " Where (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19C171D: var_98 = " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19C1727: Set var_A0 = ()
  loc_19C1736: var_B4 = CLng(TxtGrid.DispID_A)
  loc_19C1746: If Not (var_B4 = CLng(5)) Then
  loc_19C1750:   If Not (var_B4 = CLng(6)) Then
  loc_19C175A:     If Not (var_B4 = CLng(7)) Then
  loc_19C1764:       If Not (var_B4 = CLng(8)) Then
  loc_19C176E:         If (var_B4 = CLng(9)) Then
  loc_19C1771:         End If
  loc_19C1771:       End If
  loc_19C1771:     End If
  loc_19C1771:   End If
  loc_19C1777:   var_B8 = GRepFormName
  loc_19C1782:   If Not (var_B8 = "Led") Then
  loc_19C178D:     If Not (var_B8 = "LedInt") Then
  loc_19C1798:       If Not (var_B8 = "LedDeb") Then
  loc_19C17A3:         If Not (var_B8 = "LedCred") Then
  loc_19C17AE:           If (var_B8 = "AcCheckList") Then
  loc_19C17B1:           End If
  loc_19C17B1:         End If
  loc_19C17B1:       End If
  loc_19C17B1:     End If
  loc_19C17B5:     Set var_A0 = (var_B4)
  loc_19C17CE:     If (CLng(TxtGrid.DispID_A) = CLng(5)) Then
  loc_19C181F:       Set var_A0 = Me.TxtGrid
  loc_19C1825:       Call 0.Method_Proc_245_58_19C47A40 (arg_C, var_C4)
  loc_19C1845:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C4.Text = vbNullString)) Then
  loc_19C184C:         Set var_A0 = ()
  loc_19C1864:         Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C1888:         LateIdCallSt
  loc_19C18A4:         Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C18B3:         var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C18CB:         Set var_C4 = 2(vbNullString)
  loc_19C18D1:         LateIdCallSt
  loc_19C18E6:       Else
  loc_19C18EA:         Set var_138 = var_E4(var_C4)
  loc_19C1902:         Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C1952:         LateIdCallSt
  loc_19C1976:         Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C1985:         var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C19B0:         var_C4 = Me.Fields.Item("Code")
  loc_19C19C9:         Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C19CF:         LateIdCallSt
  loc_19C19EB:       End If
  loc_19C19EB:     End If
  loc_19C19EE:   Else
  loc_19C19F2:     Set var_138 = var_F4(var_13C)
  loc_19C1A0A:     Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C1A2A:     Set var_A0 = Me.TxtGrid
  loc_19C1A30:     Call 0.Method_Proc_245_58_19C47A40 (0, var_C4)
  loc_19C1A48:     Set var_160 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_C4.Text))
  loc_19C1A4E:     LateIdCallSt
  loc_19C1A6C:   End If
  loc_19C1A6F: Else
  loc_19C1A76:   If (var_B4 = CLng(2)) Then
  loc_19C1A7F:     var_164 = GRepFormName
  loc_19C1A8A:     If Not (var_164 = "DUELIST") Then
  loc_19C1A95:       If (var_164 = "BankReg") Then
  loc_19C1A98:       End If
  loc_19C1AA4:       Set var_A0 = Me.TxtGrid
  loc_19C1AAA:       Call 0.Method_Proc_245_58_19C47A40 (0, var_C4)
  loc_19C1AC9:       If (var_C4.Text <> vbNullString) Then
  loc_19C1AD0:         Set var_138 = (var_160)
  loc_19C1AE8:         Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C1B1A:         var_9C = Me.ListView.SelectedItem.Text
  loc_19C1B30:         LateIdCallSt
  loc_19C1B63:         var_E4 = CVar(CLng((CVar(CLng(TxtGrid.DispID_B))(CVar(var_9C))).MouseIcon)) 'Long
  loc_19C1B68:         var_104 = 2
  loc_19C1B8B:         Set var_C4 = Me.ListView.SelectedItem
  loc_19C1B91:         1 = var_C4.SubItems
  loc_19C1BA1:         Set var_13C = var_9C(CVar(var_9C))
  loc_19C1BA7:         LateIdCallSt
  loc_19C1BC3:       End If
  loc_19C1BC6:     Else
  loc_19C1BCE:       If Not (var_164 = "CashBook") Then
  loc_19C1BD9:         If Not (var_164 = "BankBook") Then
  loc_19C1BE4:           If Not (var_164 = "Led") Then
  loc_19C1BEF:             If Not (var_164 = "LedInt") Then
  loc_19C1BFA:               If Not (var_164 = "LedDeb") Then
  loc_19C1C05:                 If Not (var_164 = "LedCred") Then
  loc_19C1C10:                   If Not (var_164 = "AcCheckList") Then
  loc_19C1C1B:                     If Not (var_164 = "DayBook") Then
  loc_19C1C26:                       If Not (var_164 = "RozNamcha") Then
  loc_19C1C31:                         If (var_164 = "DetailedTrial") Then
  loc_19C1C34:                         End If
  loc_19C1C34:                       End If
  loc_19C1C34:                     End If
  loc_19C1C34:                   End If
  loc_19C1C34:                 End If
  loc_19C1C34:               End If
  loc_19C1C34:             End If
  loc_19C1C34:           End If
  loc_19C1C34:         End If
  loc_19C1C40:         Set var_A0 = Me.TxtGrid
  loc_19C1C46:         Call 0.Method_Proc_245_58_19C47A40 (0, var_C4, var_9C)
  loc_19C1C4E:         var_13C = var_C4.Text
  loc_19C1C65:         If (var_9C <> vbNullString) Then
  loc_19C1C6C:           Set var_138 = var_E4(var_104)
  loc_19C1C84:           Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C1CC6:           Set var_160 = CVar(CLng(TxtGrid.DispID_B))(CVar(Me.ListView.SelectedItem.Text))
  loc_19C1CCC:           LateIdCallSt
  loc_19C1CEC:         End If
  loc_19C1CF2:         var_168 = GRepFormName
  loc_19C1CFD:         If Not (var_168 = "Led") Then
  loc_19C1D08:           If Not (var_168 = "LedInt") Then
  loc_19C1D13:             If Not (var_168 = "LedDeb") Then
  loc_19C1D1E:               If Not (var_168 = "LedCred") Then
  loc_19C1D29:                 If (var_168 = "AcCheckList") Then
  loc_19C1D2C:                 End If
  loc_19C1D2C:               End If
  loc_19C1D2C:             End If
  loc_19C1D2C:           End If
  loc_19C1D48:           Set var_C4 = (CVar(CLng((var_160).MouseIcon)))
  loc_19C1D60:           Set var_138 = (CVar(CLng(var_C4.MousePointer)))
  loc_19C1D9D:           If (Ucase(CVar(CStr(ListView.DispID_41))) = "SELECTED") Then
  loc_19C1DAC:             Me.TxtDetails.Visible = True
  loc_19C1DC1:             Set var_A0 = var_C4(1)
  loc_19C1DC7:             Call 0.Method_Proc_245_58_19C47A40 (True)
  loc_19C1DCF:             var_C4.Visible = 
  loc_19C1DE6:             Set var_A0 = Me.Check1
  loc_19C1DEC:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C1DF4:             var_C4.Visible = True
  loc_19C1E0E:             Set var_A0 = var_C4(2)
  loc_19C1E14:             Call 0.Method_Proc_245_58_19C47A40 (False)
  loc_19C1E1C:             var_C4.Visible = 
  loc_19C1E33:             Set var_A0 = Me.Check1
  loc_19C1E39:             Call 0.Method_Proc_245_58_19C47A40 (2, var_C4)
  loc_19C1E41:             var_C4.Visible = False
  loc_19C1E62:             Set var_A0 = CVar(CLng(3))(0)
  loc_19C1E68:             LateIdCallSt
  loc_19C1E88:             Set var_A0 = CVar(CLng(4))(0)
  loc_19C1E8E:             LateIdCallSt
  loc_19C1EAE:             Set var_A0 = CVar(CLng(5))(0)
  loc_19C1EB4:             LateIdCallSt
  loc_19C1EDC:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19C1EE4:           End If
  loc_19C1EE8:           Set var_A0 = var_A0(var_A0)
  loc_19C1F00:           Set var_C4 = (CVar(CLng(Check1.DispID_A)))
  loc_19C1F18:           Set var_138 = (CVar(CLng(Check1.DispID_B)))
  loc_19C1F55:           If (Ucase(CVar(CStr(Check1.DispID_41))) = "MERGE") Then
  loc_19C1F64:             Me.TxtDetails.Visible = False
  loc_19C1F6F:             var_E4 = CVar(CLng(3)) 'Long
  loc_19C1F87:             Set var_A0 = 0("From Account        ")
  loc_19C1F8D:             LateIdCallSt
  loc_19C1FAD:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19C1FB3:             LateIdCallSt
  loc_19C1FC1:             var_E4 = CVar(CLng(4)) 'Long
  loc_19C1FD9:             Set var_A0 = 0("To Account          ")
  loc_19C1FDF:             LateIdCallSt
  loc_19C1FFF:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19C2005:             LateIdCallSt
  loc_19C2025:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19C202B:             LateIdCallSt
  loc_19C204B:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19C2051:             LateIdCallSt
  loc_19C2071:             Set var_A0 = CVar(CLng(5))(0)
  loc_19C2077:             LateIdCallSt
  loc_19C209F:             CInt(4)(CVar(CDbl(1550))).Height = CInt(4)(CVar(CDbl(1550)))
  loc_19C20A7:             var_E4 = False
  loc_19C20BB:             Call 0.Method_Proc_245_58_19C47A40 (var_E4, var_C4(1), var_C4(1), var_C4(1), var_C4(1))
  loc_19C20C3:             var_C4.Visible = var_E4
  loc_19C20E0:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4, 0)
  loc_19C20E8:             var_C4.Visible = Me.Check1
  loc_19C20F4:             var_E4 = False
  loc_19C2108:             Call 0.Method_Proc_245_58_19C47A40 (var_E4, var_C4(2))
  loc_19C2110:             var_C4.Visible = var_E4
  loc_19C2127:             Set var_A0 = Me.Check1
  loc_19C212D:             Call 0.Method_Proc_245_58_19C47A40 (2, var_C4)
  loc_19C2135:             var_C4.Visible = False
  loc_19C2144:             var_F4 = CVar(CLng(3)) 'Long
  loc_19C2188:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19C218E:             LateIdCallSt
  loc_19C21A9:             var_F4 = CVar(CLng(3)) 'Long
  loc_19C21ED:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C21F3:             LateIdCallSt
  loc_19C220E:             var_F4 = CVar(CLng(4)) 'Long
  loc_19C2252:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19C2258:             LateIdCallSt
  loc_19C227F:             Me.Filter = 0
  loc_19C2287:             var_F4 = CVar(CLng(4)) 'Long
  loc_19C22CB:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C22D1:             LateIdCallSt
  loc_19C22E9:           End If
  loc_19C22ED:           Set var_A0 = var_F4(var_138)
  loc_19C2305:           Set var_C4 = var_138(CVar(CLng(Check1.DispID_A)))
  loc_19C231D:           Set var_138 = var_F4(CVar(CLng(Check1.DispID_B)))
  loc_19C235A:           If (Ucase(CVar(CStr(Check1.DispID_41))) = "GROUP(SELECTED)") Then
  loc_19C2369:             Me.TxtDetails.Visible = False
  loc_19C237F:             Call Proc_245_63_11E9CD8(2, "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName", var_138)
  loc_19C2395:             Set var_A0 = var_C4(1)
  loc_19C239B:             Call 0.Method_Proc_245_58_19C47A40 (False, var_F4)
  loc_19C23A3:             var_C4.Visible = var_138
  loc_19C23BA:             Set var_A0 = Me.Check1
  loc_19C23C0:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C23C8:             var_C4.Visible = False
  loc_19C23E1:             Set var_A0 = var_C4(2)
  loc_19C23E7:             Call 0.Method_Proc_245_58_19C47A40 (True)
  loc_19C23EF:             var_C4.Visible = var_F4
  loc_19C2406:             Set var_A0 = Me.Check1
  loc_19C240C:             Call 0.Method_Proc_245_58_19C47A40 (2, var_C4)
  loc_19C2414:             var_C4.Visible = True
  loc_19C2429:             Set var_A0 = var_C4(1)
  loc_19C242F:             Call 0.Method_Proc_245_58_19C47A40 ()
  loc_19C244E:             Set var_138 = var_13C(2)
  loc_19C2454:             Call 0.Method_Proc_245_58_19C47A40 (CVar(CDbl(var_C4.Height)))
  loc_19C245C:             var_13C.Height = 
  loc_19C2478:             Set var_A0 = var_C4(1)
  loc_19C247E:             Call 0.Method_Proc_245_58_19C47A40 ()
  loc_19C249D:             Set var_138 = var_13C(2)
  loc_19C24A3:             Call 0.Method_Proc_245_58_19C47A40 (CVar(CDbl(var_C4.Left)))
  loc_19C24AB:             var_13C.Left = 
  loc_19C24C7:             Set var_A0 = var_C4(1)
  loc_19C24CD:             Call 0.Method_Proc_245_58_19C47A40 ()
  loc_19C24EC:             Set var_138 = var_13C(2)
  loc_19C24F2:             Call 0.Method_Proc_245_58_19C47A40 (CVar(CDbl(var_C4.Width)))
  loc_19C24FA:             var_13C.Width = 
  loc_19C2516:             Set var_A0 = var_C4(1)
  loc_19C251C:             Call 0.Method_Proc_245_58_19C47A40 ()
  loc_19C253B:             Set var_138 = var_13C(2)
  loc_19C2541:             Call 0.Method_Proc_245_58_19C47A40 (CVar(CDbl(var_C4.Top)))
  loc_19C2549:             var_13C.Top = 
  loc_19C2568:             Set var_A0 = Me.Check1
  loc_19C256E:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C2587:             Set var_138 = Me.Check1
  loc_19C258D:             Call 0.Method_Proc_245_58_19C47A40 (2, var_13C)
  loc_19C2595:             var_13C.Height = var_C4.Height
  loc_19C25B1:             Set var_A0 = Me.Check1
  loc_19C25B7:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C25D0:             Set var_138 = Me.Check1
  loc_19C25D6:             Call 0.Method_Proc_245_58_19C47A40 (2, var_13C)
  loc_19C25DE:             var_13C.Left = var_C4.Left
  loc_19C25FA:             Set var_A0 = Me.Check1
  loc_19C2600:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C2619:             Set var_138 = Me.Check1
  loc_19C261F:             Call 0.Method_Proc_245_58_19C47A40 (2, var_13C)
  loc_19C2627:             var_13C.Width = var_C4.Width
  loc_19C2643:             Set var_A0 = Me.Check1
  loc_19C2649:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C2662:             Set var_138 = Me.Check1
  loc_19C2668:             Call 0.Method_Proc_245_58_19C47A40 (2, var_13C)
  loc_19C2670:             var_13C.Top = var_C4.Top
  loc_19C2695:             Set var_A0 = CVar(CLng(3))(0)
  loc_19C269B:             LateIdCallSt
  loc_19C26BB:             Set var_A0 = CVar(CLng(4))(0)
  loc_19C26C1:             LateIdCallSt
  loc_19C26E1:             Set var_A0 = CVar(CLng(5))(0)
  loc_19C26E7:             LateIdCallSt
  loc_19C270F:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19C2717:           End If
  loc_19C272C:           Set var_A0 = CVar(CLng(2))(1)
  loc_19C275F:           If (Ucase(CVar(CStr(Check1.DispID_41))) = "GROUP(RANGE)") Then
  loc_19C276E:             Me.TxtDetails.Visible = False
  loc_19C2779:             var_E4 = CVar(CLng(3)) 'Long
  loc_19C2791:             Set var_A0 = 0("For Group           ")
  loc_19C2797:             LateIdCallSt
  loc_19C27B7:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19C27BD:             LateIdCallSt
  loc_19C27CB:             var_E4 = CVar(CLng(4)) 'Long
  loc_19C27E3:             Set var_A0 = 0("From Account        ")
  loc_19C27E9:             LateIdCallSt
  loc_19C2809:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19C280F:             LateIdCallSt
  loc_19C281D:             var_E4 = CVar(CLng(5)) 'Long
  loc_19C2835:             Set var_A0 = 0("To Account          ")
  loc_19C283B:             LateIdCallSt
  loc_19C285B:             Set var_A0 = CVar(CLng(5))(&H10E)
  loc_19C2861:             LateIdCallSt
  loc_19C286F:             var_F4 = CVar(CLng(3)) 'Long
  loc_19C28B3:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19C28B9:             LateIdCallSt
  loc_19C28D4:             var_F4 = CVar(CLng(3)) 'Long
  loc_19C2918:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C291E:             LateIdCallSt
  loc_19C2945:             Me.Filter = 0
  loc_19C294A:             var_F4 = " GroupCode='"
  loc_19C296C:             var_C4 = Me.Fields.Item("Code")
  loc_19C2990:             Me.Filter = var_F4 & var_C4.Value & "'"
  loc_19C29A8:             var_E4 = CVar(CLng(4)) 'Long
  loc_19C29C0:             Set var_A0 = 1(vbNullString)
  loc_19C29C6:             LateIdCallSt
  loc_19C29D4:             var_E4 = CVar(CLng(4)) 'Long
  loc_19C29EC:             Set var_A0 = 2(vbNullString)
  loc_19C29F2:             LateIdCallSt
  loc_19C2A00:             var_E4 = CVar(CLng(5)) 'Long
  loc_19C2A18:             Set var_A0 = 1(vbNullString)
  loc_19C2A1E:             LateIdCallSt
  loc_19C2A2C:             var_E4 = CVar(CLng(5)) 'Long
  loc_19C2A44:             Set var_A0 = 2(vbNullString)
  loc_19C2A4A:             LateIdCallSt
  loc_19C2A72:             CInt(5)(CVar(CDbl(1860))).Height = CInt(5)(CVar(CDbl(1860)))
  loc_19C2A7A:             var_E4 = False
  loc_19C2A88:             Set var_A0 = var_C4(1)
  loc_19C2A8E:             Call 0.Method_Proc_245_58_19C47A40 (var_E4, var_E4, var_A0, var_E4, var_A0, var_E4)
  loc_19C2A96:             var_C4.Visible = var_A0
  loc_19C2AAD:             Set var_A0 = Me.Check1
  loc_19C2AB3:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4, 0, var_E4)
  loc_19C2ABB:             var_C4.Visible = var_138
  loc_19C2AD5:             Set var_A0 = var_C4(2)
  loc_19C2ADB:             Call 0.Method_Proc_245_58_19C47A40 (False, var_F4)
  loc_19C2AE3:             var_C4.Visible = var_138
  loc_19C2AFA:             Set var_A0 = Me.Check1
  loc_19C2B00:             Call 0.Method_Proc_245_58_19C47A40 (2, var_C4)
  loc_19C2B08:             var_C4.Visible = False
  loc_19C2B14:           End If
  loc_19C2B18:           Set var_A0 = (var_F4)
  loc_19C2B30:           Set var_C4 = (CVar(CLng(Check1.DispID_A)))
  loc_19C2B48:           Set var_138 = (CVar(CLng(Check1.DispID_B)))
  loc_19C2B85:           If (Ucase(CVar(CStr(Check1.DispID_41))) = "CITY WISE") Then
  loc_19C2B94:             Me.TxtDetails.Visible = False
  loc_19C2B9F:             var_9C = "SELECT '' as O,CityName,CityCode as Code from City Order by CityName"
  loc_19C2BAA:             Call Proc_245_63_11E9CD8(2)
  loc_19C2BBF:             Set var_A0 = var_C4(2)
  loc_19C2BC5:             Call 0.Method_Proc_245_58_19C47A40 (True)
  loc_19C2BCD:             var_C4.Visible = var_9C
  loc_19C2BE4:             Set var_A0 = Me.Check1
  loc_19C2BEA:             Call 0.Method_Proc_245_58_19C47A40 (2, var_C4)
  loc_19C2BF2:             var_C4.Visible = True
  loc_19C2C0C:             Set var_A0 = var_C4(1)
  loc_19C2C12:             Call 0.Method_Proc_245_58_19C47A40 (False)
  loc_19C2C1A:             var_C4.Visible = 
  loc_19C2C31:             Set var_A0 = Me.Check1
  loc_19C2C37:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C2C3F:             var_C4.Visible = False
  loc_19C2C54:             Set var_A0 = var_C4(1)
  loc_19C2C5A:             Call 0.Method_Proc_245_58_19C47A40 ()
  loc_19C2C79:             Set var_138 = var_13C(2)
  loc_19C2C7F:             Call 0.Method_Proc_245_58_19C47A40 (CVar(CDbl(var_C4.Height)))
  loc_19C2C87:             var_13C.Height = 
  loc_19C2CA3:             Set var_A0 = var_C4(1)
  loc_19C2CA9:             Call 0.Method_Proc_245_58_19C47A40 ()
  loc_19C2CC8:             Set var_138 = var_13C(2)
  loc_19C2CCE:             Call 0.Method_Proc_245_58_19C47A40 (CVar(CDbl(var_C4.Left)))
  loc_19C2CD6:             var_13C.Left = 
  loc_19C2CF2:             Set var_A0 = var_C4(1)
  loc_19C2CF8:             Call 0.Method_Proc_245_58_19C47A40 ()
  loc_19C2D17:             Set var_138 = var_13C(2)
  loc_19C2D1D:             Call 0.Method_Proc_245_58_19C47A40 (CVar(CDbl(var_C4.Width)))
  loc_19C2D25:             var_13C.Width = 
  loc_19C2D41:             Set var_A0 = var_C4(1)
  loc_19C2D47:             Call 0.Method_Proc_245_58_19C47A40 ()
  loc_19C2D66:             Set var_138 = var_13C(2)
  loc_19C2D6C:             Call 0.Method_Proc_245_58_19C47A40 (CVar(CDbl(var_C4.Top)))
  loc_19C2D74:             var_13C.Top = 
  loc_19C2D93:             Set var_A0 = Me.Check1
  loc_19C2D99:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C2DB2:             Set var_138 = Me.Check1
  loc_19C2DB8:             Call 0.Method_Proc_245_58_19C47A40 (2, var_13C)
  loc_19C2DC0:             var_13C.Height = var_C4.Height
  loc_19C2DDC:             Set var_A0 = Me.Check1
  loc_19C2DE2:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C2DFB:             Set var_138 = Me.Check1
  loc_19C2E01:             Call 0.Method_Proc_245_58_19C47A40 (2, var_13C)
  loc_19C2E09:             var_13C.Left = var_C4.Left
  loc_19C2E25:             Set var_A0 = Me.Check1
  loc_19C2E2B:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C2E44:             Set var_138 = Me.Check1
  loc_19C2E4A:             Call 0.Method_Proc_245_58_19C47A40 (2, var_13C)
  loc_19C2E52:             var_13C.Width = var_C4.Width
  loc_19C2E6E:             Set var_A0 = Me.Check1
  loc_19C2E74:             Call 0.Method_Proc_245_58_19C47A40 (1, var_C4)
  loc_19C2E8D:             Set var_138 = Me.Check1
  loc_19C2E93:             Call 0.Method_Proc_245_58_19C47A40 (2, var_13C)
  loc_19C2E9B:             var_13C.Top = var_C4.Top
  loc_19C2EC0:             Set var_A0 = CVar(CLng(3))(0)
  loc_19C2EC6:             LateIdCallSt
  loc_19C2EE6:             Set var_A0 = CVar(CLng(4))(0)
  loc_19C2EEC:             LateIdCallSt
  loc_19C2F0C:             Set var_A0 = CVar(CLng(5))(0)
  loc_19C2F12:             LateIdCallSt
  loc_19C2F3A:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19C2F42:           End If
  loc_19C2F42:         End If
  loc_19C2F45:       Else
  loc_19C2F4D:         If Not (var_164 = "JournalBook") Then
  loc_19C2F58:           If (var_164 = "Annexure") Then
  loc_19C2F5B:           End If
  loc_19C2F64:           var_BC = Me.RecordCount
  loc_19C2FAF:           Call 0.Method_Proc_245_58_19C47A40 (arg_C, var_C4, var_9C)
  loc_19C2FB7:           ((var_BC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C2FCF:           If (Me.TxtGrid Or (var_9C = vbNullString)) Then
  loc_19C2FD6:             Set var_A0 = (var_A0)
  loc_19C2FEE:             Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3012:             LateIdCallSt
  loc_19C302E:             Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C303D:             var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C3055:             Set var_C4 = 2(vbNullString)
  loc_19C305B:             LateIdCallSt
  loc_19C3070:           Else
  loc_19C3074:             Set var_138 = var_E4(var_C4)
  loc_19C308C:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C30DC:             LateIdCallSt
  loc_19C3100:             Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C310F:             var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C3153:             Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C3159:             LateIdCallSt
  loc_19C3175:           End If
  loc_19C3186:           If (GRepFormName = "Annexure") Then
  loc_19C31A1:             Set var_A0 = CVar(CLng(2))(2)
  loc_19C31BD:             var_194 = "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where GROUPCODE='" & CStr(TxtGrid.DispID_41) & "' "
  loc_19C31D4:             Call Proc_245_63_11E9CD8(1, var_194 & var_90 & " Order by Name")
  loc_19C31F6:             var_B0 = var_F4(var_13C).Height
  loc_19C3206:             Set var_C4 = Me.Pic
  loc_19C3217:             Call 0.Method_Me8 (var_BC)
  loc_19C322E:             var_E4 = CVar((((var_BC - CDbl(var_B0)) - var_C4.Height) - CDbl(1200))) 'Single
  loc_19C323C:             Set var_138 = var_13C(1)
  loc_19C3242:             Call 0.Method_Proc_245_58_19C47A40 (CVar(CLng(2)))
  loc_19C324A:             var_13C.Height = var_B0
  loc_19C325D:           End If
  loc_19C3260:         Else
  loc_19C3268:           If Not (var_164 = "DailySumm") Then
  loc_19C3273:             If Not (var_164 = "AgingDr") Then
  loc_19C327E:               If Not (var_164 = "AgingCr") Then
  loc_19C3289:                 If Not (var_164 = "Clg") Then
  loc_19C3294:                   If Not (var_164 = "ClgNot") Then
  loc_19C329F:                     If Not (var_164 = "AgingRepDr") Then
  loc_19C32AA:                       If (var_164 = "AgingRepCr") Then
  loc_19C32AD:                       End If
  loc_19C32AD:                     End If
  loc_19C32AD:                   End If
  loc_19C32AD:                 End If
  loc_19C32AD:               End If
  loc_19C32AD:             End If
  loc_19C32FB:             Set var_A0 = Me.TxtGrid
  loc_19C3301:             Call 0.Method_Proc_245_58_19C47A40 (arg_C, var_C4)
  loc_19C3309:             var_9C = var_C4.Text
  loc_19C3321:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_9C = vbNullString)) Then
  loc_19C3328:               Set var_A0 = ()
  loc_19C3340:               Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3364:               LateIdCallSt
  loc_19C3380:               Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C338F:               var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C33A7:               Set var_C4 = 2(vbNullString)
  loc_19C33AD:               LateIdCallSt
  loc_19C33C2:             Else
  loc_19C33C6:               Set var_138 = var_E4(var_C4)
  loc_19C33DE:               Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C342E:               LateIdCallSt
  loc_19C3452:               Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C3461:               var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C348C:               var_C4 = Me.Fields.Item("Code")
  loc_19C34A5:               Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C34AB:               LateIdCallSt
  loc_19C34C7:             End If
  loc_19C34C7:           End If
  loc_19C34C7:         End If
  loc_19C34C7:       End If
  loc_19C34C7:     End If
  loc_19C34CA:   Else
  loc_19C34D1:     If (var_B4 = CLng(3)) Then
  loc_19C34DA:       var_1A4 = GRepFormName
  loc_19C34E5:       If (var_1A4 = "DUELIST") Then
  loc_19C34F4:         Set var_A0 = Me.TxtGrid
  loc_19C34FA:         Call 0.Method_Proc_245_58_19C47A40 (0, var_C4, var_9C)
  loc_19C3502:         var_13C = var_C4.Text
  loc_19C3519:         If (var_9C <> vbNullString) Then
  loc_19C3520:           Set var_138 = (var_F4)
  loc_19C3538:           Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3558:           Set var_A0 = Me.TxtGrid
  loc_19C355E:           Call 0.Method_Proc_245_58_19C47A40 (0, var_C4)
  loc_19C3576:           Set var_160 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_C4.Text))
  loc_19C357C:           LateIdCallSt
  loc_19C359A:         End If
  loc_19C359D:       Else
  loc_19C35A5:         If Not (var_1A4 = "Annexure") Then
  loc_19C35B0:           If Not (var_1A4 = "RefReport") Then
  loc_19C35BB:             If Not (var_1A4 = "JournalBook") Then
  loc_19C35C6:               If (var_1A4 = "DetailedTrial") Then
  loc_19C35C9:               End If
  loc_19C35C9:             End If
  loc_19C35C9:           End If
  loc_19C35D5:           Set var_A0 = Me.TxtGrid
  loc_19C35DB:           Call 0.Method_Proc_245_58_19C47A40 (0, var_C4)
  loc_19C35FA:           If (var_C4.Text <> vbNullString) Then
  loc_19C3601:             Set var_138 = (var_160)
  loc_19C3619:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3645:             Set var_C4 = Me.ListView.SelectedItem
  loc_19C364B:             var_9C = var_C4.Text
  loc_19C365B:             Set var_160 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_9C))
  loc_19C3661:             LateIdCallSt
  loc_19C3681:           End If
  loc_19C3681:         End If
  loc_19C3681:       End If
  loc_19C3687:       var_1A8 = GRepFormName
  loc_19C3692:       If (var_1A8 = "DayBook") Then
  loc_19C36E3:         Set var_A0 = Me.TxtGrid
  loc_19C36E9:         Call 0.Method_Proc_245_58_19C47A40 (arg_C, var_C4, var_9C)
  loc_19C36F1:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C3709:         If (var_160 Or (var_9C = vbNullString)) Then
  loc_19C3710:           Set var_A0 = ()
  loc_19C3728:           Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C374C:           LateIdCallSt
  loc_19C3768:           Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C3777:           var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C378F:           Set var_C4 = 2(vbNullString)
  loc_19C3795:           LateIdCallSt
  loc_19C37AA:         Else
  loc_19C37AE:           Set var_138 = var_E4(var_C4)
  loc_19C37C6:           Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3816:           LateIdCallSt
  loc_19C383A:           Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C3849:           var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C3874:           var_C4 = Me.Fields.Item("Code")
  loc_19C388D:           Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C3893:           LateIdCallSt
  loc_19C38AF:         End If
  loc_19C38B2:       Else
  loc_19C38BA:         If Not (var_1A8 = "CashBook") Then
  loc_19C38C5:           If Not (var_1A8 = "BankBook") Then
  loc_19C38D0:             If (var_1A8 = "RozNamcha") Then
  loc_19C38D3:             End If
  loc_19C38D3:           End If
  loc_19C38DF:           Set var_A0 = Me.TxtGrid
  loc_19C38E5:           Call 0.Method_Proc_245_58_19C47A40 (0, var_C4, var_9C)
  loc_19C38ED:           var_13C = var_C4.Text
  loc_19C3904:           If (var_9C <> vbNullString) Then
  loc_19C390B:             Set var_138 = (var_F4)
  loc_19C3923:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3943:             Set var_A0 = Me.TxtGrid
  loc_19C3949:             Call 0.Method_Proc_245_58_19C47A40 (0, var_C4)
  loc_19C3951:             var_9C = var_C4.Text
  loc_19C395C:             Proc_183_6_EA3B94(CVar(var_9C))
  loc_19C396B:             Set var_160 = (CVar(CStr(CVar(CLng(TxtGrid.DispID_B)))))
  loc_19C3971:             LateIdCallSt
  loc_19C3991:           End If
  loc_19C3994:         Else
  loc_19C399C:           If Not (var_1A8 = "Led") Then
  loc_19C39A7:             If Not (var_1A8 = "LedInt") Then
  loc_19C39B2:               If Not (var_1A8 = "LedDeb") Then
  loc_19C39BD:                 If Not (var_1A8 = "LedCred") Then
  loc_19C39C8:                   If (var_1A8 = "AcCheckList") Then
  loc_19C39CB:                   End If
  loc_19C39CB:                 End If
  loc_19C39CB:               End If
  loc_19C39CB:             End If
  loc_19C39E0:             Set var_A0 = CVar(CLng(2))(1)
  loc_19C3A13:             If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_19C3A64:               Set var_A0 = Me.TxtGrid
  loc_19C3A6A:               Call 0.Method_Proc_245_58_19C47A40 (arg_C, var_C4, var_9C)
  loc_19C3A72:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C3A8A:               If (var_160 Or (var_9C = vbNullString)) Then
  loc_19C3A91:                 Set var_A0 = ()
  loc_19C3AA9:                 Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3ACD:                 LateIdCallSt
  loc_19C3AE9:                 Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C3AF8:                 var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C3B10:                 Set var_C4 = 2(vbNullString)
  loc_19C3B16:                 LateIdCallSt
  loc_19C3B2B:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19C3B43:                 Set var_A0 = 1(vbNullString)
  loc_19C3B49:                 LateIdCallSt
  loc_19C3B57:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19C3B6F:                 Set var_A0 = 2(vbNullString)
  loc_19C3B75:                 LateIdCallSt
  loc_19C3B83:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19C3B9B:                 Set var_A0 = 1(vbNullString)
  loc_19C3BA1:                 LateIdCallSt
  loc_19C3BAF:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19C3BC7:                 Set var_A0 = 2(vbNullString)
  loc_19C3BCD:                 LateIdCallSt
  loc_19C3BDB:               Else
  loc_19C3BDF:                 Set var_138 = var_E4(var_A0)
  loc_19C3BF7:                 Set var_13C = var_A0(CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3C11:                 var_E4 = "Name"
  loc_19C3C47:                 LateIdCallSt
  loc_19C3C6B:                 Set var_138 = var_E4(CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item(var_E4).Value))))
  loc_19C3C7A:                 var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C3CBE:                 Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C3CC4:                 LateIdCallSt
  loc_19C3CE3:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19C3CFB:                 Set var_A0 = 1(vbNullString)
  loc_19C3D01:                 LateIdCallSt
  loc_19C3D0F:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19C3D27:                 Set var_A0 = 2(vbNullString)
  loc_19C3D2D:                 LateIdCallSt
  loc_19C3D3B:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19C3D53:                 Set var_A0 = 1(vbNullString)
  loc_19C3D59:                 LateIdCallSt
  loc_19C3D67:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19C3D7F:                 Set var_A0 = 2(vbNullString)
  loc_19C3D85:                 LateIdCallSt
  loc_19C3D9F:                 Me.Filter = 0
  loc_19C3DAF:                 var_E4 = "Code"
  loc_19C3DC6:                 var_C4 = Me.Fields.Item(var_E4)
  loc_19C3DEA:                 Me.Filter = " GroupCode='" & var_C4.Value & "'"
  loc_19C3DFF:               End If
  loc_19C3E02:             Else
  loc_19C3E50:               Set var_A0 = Me.TxtGrid
  loc_19C3E56:               Call 0.Method_Proc_245_58_19C47A40 (arg_C, var_C4, var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_A0, var_E4, var_A0)
  loc_19C3E76:               If (var_A0 Or (var_9C = vbNullString)) Then
  loc_19C3E7D:                 Set var_A0 = var_A0(var_C4.Text)
  loc_19C3E95:                 Set var_C4 = CVar(CLng(TxtGrid.DispID_A))(CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3EB9:                 LateIdCallSt
  loc_19C3ED5:                 Set var_A0 = var_13C(CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C3EE4:                 var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C3EFC:                 Set var_C4 = 2(vbNullString)
  loc_19C3F02:                 LateIdCallSt
  loc_19C3F17:               Else
  loc_19C3F1B:                 Set var_138 = var_E4(var_C4)
  loc_19C3F33:                 Set var_13C = CVar(CLng(TxtGrid.DispID_A))(CVar(CLng(TxtGrid.DispID_A)))
  loc_19C3F83:                 LateIdCallSt
  loc_19C3FA7:                 Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C3FB6:                 var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C3FE1:                 var_C4 = Me.Fields.Item("Code")
  loc_19C3FFA:                 Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C4000:                 LateIdCallSt
  loc_19C401C:               End If
  loc_19C401C:             End If
  loc_19C401C:           End If
  loc_19C401C:         End If
  loc_19C401C:       End If
  loc_19C401F:     Else
  loc_19C4026:       If (var_B4 = CLng(4)) Then
  loc_19C402F:         var_1AC = GRepFormName
  loc_19C403A:         If Not (var_1AC = "CashBook") Then
  loc_19C4045:           If Not (var_1AC = "BankBook") Then
  loc_19C4050:             If Not (var_1AC = "Led") Then
  loc_19C405B:               If Not (var_1AC = "LedInt") Then
  loc_19C4066:                 If Not (var_1AC = "LedDeb") Then
  loc_19C4071:                   If Not (var_1AC = "LedCred") Then
  loc_19C407C:                     If Not (var_1AC = "AcCheckList") Then
  loc_19C4087:                       If (var_1AC = "RozNamcha") Then
  loc_19C408A:                       End If
  loc_19C408A:                     End If
  loc_19C408A:                   End If
  loc_19C408A:                 End If
  loc_19C408A:               End If
  loc_19C408A:             End If
  loc_19C408A:           End If
  loc_19C40D8:           Set var_A0 = Me.TxtGrid
  loc_19C40DE:           Call 0.Method_Proc_245_58_19C47A40 (arg_C, var_C4, var_9C)
  loc_19C40E6:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C40FE:           If (var_13C Or (var_9C = vbNullString)) Then
  loc_19C4105:             Set var_A0 = (var_F4)
  loc_19C411D:             Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4141:             LateIdCallSt
  loc_19C415D:             Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C416C:             var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C4184:             Set var_C4 = 2(vbNullString)
  loc_19C418A:             LateIdCallSt
  loc_19C419F:           Else
  loc_19C41A3:             Set var_138 = var_E4(var_C4)
  loc_19C41BB:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C420B:             LateIdCallSt
  loc_19C422F:             Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C423E:             var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C4269:             var_C4 = Me.Fields.Item("Code")
  loc_19C4282:             Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C4288:             LateIdCallSt
  loc_19C42A4:           End If
  loc_19C42A7:         Else
  loc_19C42AF:           If (var_1AC = "JournalBook") Then
  loc_19C4300:             Set var_A0 = Me.TxtGrid
  loc_19C4306:             Call 0.Method_Proc_245_58_19C47A40 (arg_C, var_C4, var_9C)
  loc_19C430E:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C4326:             If (var_13C Or (var_9C = vbNullString)) Then
  loc_19C432D:               Set var_A0 = (var_F4)
  loc_19C4345:               Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4369:               LateIdCallSt
  loc_19C4385:               Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C4394:               var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C43AC:               Set var_C4 = 2(vbNullString)
  loc_19C43B2:               LateIdCallSt
  loc_19C43C7:             Else
  loc_19C43CB:               Set var_138 = var_E4(var_C4)
  loc_19C43E3:               Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4433:               LateIdCallSt
  loc_19C4457:               Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C4466:               var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C44AA:               Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C44B0:               LateIdCallSt
  loc_19C44CC:             End If
  loc_19C44CC:           End If
  loc_19C44CC:         End If
  loc_19C44CF:       Else
  loc_19C44D6:         If (var_B4 = CLng(0)) Then
  loc_19C44DF:           var_1B0 = GRepFormName
  loc_19C44EA:           If Not (var_1B0 = "BudgetVariance") Then
  loc_19C44F5:             If (var_1B0 = "Budget") Then
  loc_19C44F8:             End If
  loc_19C44FC:             Set var_138 = var_F4(var_13C)
  loc_19C4514:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4564:             LateIdCallSt
  loc_19C4588:             Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C4597:             var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C45C2:             var_C4 = Me.Fields.Item("Code")
  loc_19C45DB:             Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C45E1:             LateIdCallSt
  loc_19C4600:           Else
  loc_19C4609:             Set var_A0 = Me.TxtGrid
  loc_19C460F:             Call 0.Method_Proc_245_58_19C47A40 (0, var_C4)
  loc_19C4618:             Set var_13C = var_F4(var_13C)
  loc_19C4630:             Set var_160 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4659:             Call 0.Method_arg_184 (var_C4, var_9C)
  loc_19C4669:             Set var_1B4 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_9C))
  loc_19C466F:             LateIdCallSt
  loc_19C468D:           End If
  loc_19C4690:         Else
  loc_19C4697:           If (var_B4 = CLng(1)) Then
  loc_19C46A3:             Set var_A0 = Me.TxtGrid
  loc_19C46A9:             Call 0.Method_Proc_245_58_19C47A40 (0, var_C4)
  loc_19C46B2:             Set var_13C = (var_1B4)
  loc_19C46CA:             Set var_160 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C46F3:             Call 0.Method_arg_184 (var_C4, var_9C)
  loc_19C4703:             Set var_1B4 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_9C))
  loc_19C4709:             LateIdCallSt
  loc_19C4727:           End If
  loc_19C4727:         End If
  loc_19C4727:       End If
  loc_19C4727:     End If
  loc_19C4727:   End If
  loc_19C4727: End If
  loc_19C4732: If (arg_10 = 0) Then
  loc_19C4739:   Set var_A0 = var_1B4(&HFF)
  loc_19C4755:   Set var_A0 = Me.TxtGrid
  loc_19C475B:   Call 0.Method_Proc_245_58_19C47A40 (0, var_C4)
  loc_19C4763:   var_C4.Visible = False
  loc_19C476F: End If
  loc_19C476F: Proc_245_58_19C47A4 = TxtGrid.DispID_8001
  loc_19C4775: ' Referenced from: 19C16D0
  loc_19C477B: Call 0.Method_arg_50 (var_9C)
  loc_19C4790: Proc_183_57_104B0BC(var_9C)
  loc_19C479C: Proc_245_58_19C47A4 = "TxtGridLeave"
End Sub

Public Sub Proc_245_59_172E0AC
  'Data Table: 58C0E4
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_88 As Integer
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_108 As TextBox
  loc_172C418: On Error Goto loc_172E083
  loc_172C433: Call 0.Method_arg_78 (var_8C)
  loc_172C448: Set var_98 = Me.Pic
  loc_172C44E: var_98.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_172C466: Set var_90 = Me.TxtGrid
  loc_172C46C: Call 0.Method_Proc_245_59_172E0AC0 (0, var_98)
  loc_172C474: var_98.Text = vbNullString
  loc_172C48A: var_A8 = ().Width
  loc_172C499: Call 0.Method_Me0 (var_8C)
  loc_172C4AB: var_B8 = CVar(((var_8C - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_172C4B4: Set var_98 = var_A8(var_B8)
  loc_172C4BA: var_98.Left = 
  loc_172C4DB: (CVar(CDbl(&H4B))).Top = 
  loc_172C4F0: Set var_90 = (&HA)
  loc_172C50B: Set var_90 = TxtGrid.DispID_4(3)
  loc_172C526: Set var_90 = TxtGrid.DispID_5(1)
  loc_172C54A: Set var_90 = 0(&H898)
  loc_172C550: LateIdCallSt
  loc_172C571: Set var_90 = 1(&H7D0)
  loc_172C577: LateIdCallSt
  loc_172C598: Set var_90 = 2(0)
  loc_172C59E: LateIdCallSt
  loc_172C5C0: Set var_90 = 1(CVar(CInt(1)))
  loc_172C5C6: LateIdCallSt
  loc_172C5DA: Set var_90 = 0(var_86)
  loc_172C5F6: For var_EC = var_90 To CInt((CLng(TxtGrid.DispID_4) - 1)): var_90 = var_EC 'Integer
  loc_172C612:   Set var_90 = CVar(CLng(var_86))(0)
  loc_172C618:   LateIdCallSt
  loc_172C626: Next var_EC 'Integer
  loc_172C62B: Call Proc_245_66_19E6FCC()
  loc_172C637: For var_F0 = 1 To 2: var_86 = var_F0 'Integer
  loc_172C647:   Set var_90 = var_98(var_86)
  loc_172C64D:   Call 0.Method_Proc_245_59_172E0AC0 (1)
  loc_172C66B:   If (CBool(var_98.Visible) = &HFF) Then
  loc_172C674:     var_88 = (var_88 + 1)
  loc_172C677:   End If
  loc_172C67A: Next var_F0 'Integer
  loc_172C69A: var_B8 = CVar(CDbl(((((global_140 - global_142) + 1) * CInt(220)) + 500))) 'Single
  loc_172C6A9: (CVar(CLng(var_86))).Height = 
  loc_172C6B7: var_100 = global_144 'Variant
  loc_172C6C6: If (var_100 = 0) Then
  loc_172C6DC:   (CVar(CDbl(1000))).Top = 
  loc_172C6E7: Else
  loc_172C6F2:   If (var_100 = 1) Then
  loc_172C6FB:     var_104 = GRepFormName
  loc_172C706:     If Not (var_104 = "Led") Then
  loc_172C711:       If Not (var_104 = "LedInt") Then
  loc_172C71C:         If Not (var_104 = "LedDeb") Then
  loc_172C727:           If Not (var_104 = "LedCred") Then
  loc_172C732:             If (var_104 = "AcCheckList") Then
  loc_172C735:             End If
  loc_172C735:           End If
  loc_172C735:         End If
  loc_172C735:       End If
  loc_172C740:       Set var_90 = Me.Label1
  loc_172C746:       Call 0.Method_Proc_245_59_172E0AC0 (0, var_98)
  loc_172C74E:       var_98.Visible = True
  loc_172C765:       Set var_90 = Me.Label1
  loc_172C76B:       Call 0.Method_Proc_245_59_172E0AC0 (1, var_98)
  loc_172C773:       var_98.Visible = True
  loc_172C78A:       Set var_90 = Me.Label1
  loc_172C790:       Call 0.Method_Proc_245_59_172E0AC0 (3, var_98)
  loc_172C798:       var_98.Visible = True
  loc_172C7AF:       Set var_90 = Me.Label1
  loc_172C7B5:       Call 0.Method_Proc_245_59_172E0AC0 (4, var_98)
  loc_172C7BD:       var_98.Visible = True
  loc_172C7D4:       Set var_90 = Me.Label1
  loc_172C7DA:       Call 0.Method_Proc_245_59_172E0AC0 (5, var_98)
  loc_172C7E2:       var_98.Visible = True
  loc_172C7FB:       Set var_90 = Me.TEXT
  loc_172C801:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(0), var_98)
  loc_172C809:       var_98.Visible = True
  loc_172C822:       Set var_90 = Me.TEXT
  loc_172C828:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(1), var_98)
  loc_172C830:       var_98.Visible = True
  loc_172C849:       Set var_90 = Me.TEXT
  loc_172C84F:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(8), var_98)
  loc_172C857:       var_98.Visible = True
  loc_172C870:       Set var_90 = Me.TEXT
  loc_172C876:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(9), var_98)
  loc_172C87E:       var_98.Visible = True
  loc_172C897:       Set var_90 = Me.TEXT
  loc_172C89D:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(6), var_98)
  loc_172C8A5:       var_98.Visible = True
  loc_172C8BE:       Set var_90 = Me.TEXT
  loc_172C8C4:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(7), var_98)
  loc_172C8CC:       var_98.Visible = True
  loc_172C8E5:       Set var_90 = Me.TEXT
  loc_172C8EB:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(&HB), var_98)
  loc_172C8F3:       var_98.Visible = True
  loc_172C90C:       Set var_90 = Me.Label1
  loc_172C912:       Call 0.Method_Proc_245_59_172E0AC0 (0, var_98)
  loc_172C91A:       var_98.Left = CDbl(&H78)
  loc_172C934:       Set var_90 = Me.Label1
  loc_172C93A:       Call 0.Method_Proc_245_59_172E0AC0 (0, var_98)
  loc_172C942:       var_98.Top = CDbl(150)
  loc_172C95B:       Set var_90 = Me.Label1
  loc_172C961:       Call 0.Method_Proc_245_59_172E0AC0 (1, var_98)
  loc_172C969:       var_98.Left = CDbl(&H78)
  loc_172C983:       Set var_90 = Me.Label1
  loc_172C989:       Call 0.Method_Proc_245_59_172E0AC0 (1, var_98)
  loc_172C991:       var_98.Top = CDbl(450)
  loc_172C9AD:       Set var_90 = Me.TEXT
  loc_172C9B3:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(0), var_98)
  loc_172C9BB:       var_98.Left = CDbl(1725)
  loc_172C9D6:       Set var_90 = Me.TEXT
  loc_172C9DC:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(0), var_98)
  loc_172C9E4:       var_98.Top = CDbl(&H69)
  loc_172C9FE:       Set var_90 = Me.TEXT
  loc_172CA04:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(8), var_98)
  loc_172CA29:       Set var_108 = Me.TEXT
  loc_172CA2F:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(8), var_10C)
  loc_172CA37:       var_10C.Left = ((CDbl(1725) - var_98.Width) - CDbl(&H32))
  loc_172CA56:       Set var_90 = Me.TEXT
  loc_172CA5C:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(8), var_98)
  loc_172CA64:       var_98.Top = CDbl(&H69)
  loc_172CA80:       Set var_90 = Me.TEXT
  loc_172CA86:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(1), var_98)
  loc_172CA8E:       var_98.Left = CDbl(1725)
  loc_172CAAA:       Set var_90 = Me.TEXT
  loc_172CAB0:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(1), var_98)
  loc_172CAB8:       var_98.Top = CDbl(405)
  loc_172CAD2:       Set var_90 = Me.TEXT
  loc_172CAD8:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(9), var_98)
  loc_172CAFD:       Set var_108 = Me.TEXT
  loc_172CB03:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(9), var_10C)
  loc_172CB0B:       var_10C.Left = ((CDbl(1725) - var_98.Width) - CDbl(&H32))
  loc_172CB2B:       Set var_90 = Me.TEXT
  loc_172CB31:       Call 0.Method_Proc_245_59_172E0AC0 (CInt(9), var_98)
  loc_172CB39:       var_98.Top = CDbl(405)
  loc_172CB50:       If (GRepFormName = "LedDeb") Then
  loc_172CB61:         Me.SSTab1.Visible = True
  loc_172CB69:       End If
  loc_172CB6F:       var_110 = GRepFormName
  loc_172CB7A:       If Not (var_110 = "Led") Then
  loc_172CB85:         If Not (var_110 = "LedDeb") Then
  loc_172CB90:           If (var_110 = "LedCred") Then
  loc_172CB93:           End If
  loc_172CB93:         End If
  loc_172CBA0:         Set var_90 = Me.Label1
  loc_172CBA6:         Call 0.Method_Proc_245_59_172E0AC0 (3, var_98)
  loc_172CBAE:         var_98.Left = CDbl(&H78)
  loc_172CBC8:         Set var_90 = Me.Label1
  loc_172CBCE:         Call 0.Method_Proc_245_59_172E0AC0 (3, var_98)
  loc_172CBD6:         var_98.Top = CDbl(750)
  loc_172CBEF:         Set var_90 = Me.Label1
  loc_172CBF5:         Call 0.Method_Proc_245_59_172E0AC0 (4, var_98)
  loc_172CBFD:         var_98.Left = CDbl(&H78)
  loc_172CC17:         Set var_90 = Me.Label1
  loc_172CC1D:         Call 0.Method_Proc_245_59_172E0AC0 (4, var_98)
  loc_172CC25:         var_98.Top = CDbl(1050)
  loc_172CC41:         Set var_90 = Me.TEXT
  loc_172CC47:         Call 0.Method_Proc_245_59_172E0AC0 (CInt(6), var_98)
  loc_172CC4F:         var_98.Left = CDbl(1725)
  loc_172CC6B:         Set var_90 = Me.TEXT
  loc_172CC71:         Call 0.Method_Proc_245_59_172E0AC0 (CInt(6), var_98)
  loc_172CC79:         var_98.Top = CDbl(705)
  loc_172CC95:         Set var_90 = Me.TEXT
  loc_172CC9B:         Call 0.Method_Proc_245_59_172E0AC0 (CInt(7), var_98)
  loc_172CCA3:         var_98.Left = CDbl(1725)
  loc_172CCBF:         Set var_90 = Me.TEXT
  loc_172CCC5:         Call 0.Method_Proc_245_59_172E0AC0 (CInt(7), var_98)
  loc_172CCCD:         var_98.Top = CDbl(1005)
  loc_172CCDC:       Else
  loc_172CCE4:         If (var_110 = "LedInt") Then
  loc_172CCF3:           Me.Label4.Visible = True
  loc_172CD08:           Set var_90 = Me.TEXT
  loc_172CD0E:           Call 0.Method_Proc_245_59_172E0AC0 (CInt(5), var_98)
  loc_172CD16:           var_98.Visible = True
  loc_172CD30:           Me.Label4.Left = CDbl(&H78)
  loc_172CD47:           Me.Label4.Top = CDbl(750)
  loc_172CD5C:           Set var_90 = Me.Label1
  loc_172CD62:           Call 0.Method_Proc_245_59_172E0AC0 (3, var_98)
  loc_172CD6A:           var_98.Left = CDbl(&H78)
  loc_172CD84:           Set var_90 = Me.Label1
  loc_172CD8A:           Call 0.Method_Proc_245_59_172E0AC0 (3, var_98)
  loc_172CD92:           var_98.Top = CDbl(1050)
  loc_172CDAB:           Set var_90 = Me.Label1
  loc_172CDB1:           Call 0.Method_Proc_245_59_172E0AC0 (4, var_98)
  loc_172CDB9:           var_98.Left = CDbl(&H78)
  loc_172CDD3:           Set var_90 = Me.Label1
  loc_172CDD9:           Call 0.Method_Proc_245_59_172E0AC0 (4, var_98)
  loc_172CDE1:           var_98.Top = CDbl(1350)
  loc_172CDFD:           Set var_90 = Me.TEXT
  loc_172CE03:           Call 0.Method_Proc_245_59_172E0AC0 (CInt(5), var_98)
  loc_172CE0B:           var_98.Left = CDbl(1725)
  loc_172CE27:           Set var_90 = Me.TEXT
  loc_172CE2D:           Call 0.Method_Proc_245_59_172E0AC0 (CInt(5), var_98)
  loc_172CE35:           var_98.Top = CDbl(705)
  loc_172CE51:           Set var_90 = Me.TEXT
  loc_172CE57:           Call 0.Method_Proc_245_59_172E0AC0 (CInt(6), var_98)
  loc_172CE5F:           var_98.Left = CDbl(1725)
  loc_172CE7B:           Set var_90 = Me.TEXT
  loc_172CE81:           Call 0.Method_Proc_245_59_172E0AC0 (CInt(6), var_98)
  loc_172CE89:           var_98.Top = CDbl(1005)
  loc_172CEA5:           Set var_90 = Me.TEXT
  loc_172CEAB:           Call 0.Method_Proc_245_59_172E0AC0 (CInt(7), var_98)
  loc_172CEB3:           var_98.Left = CDbl(1725)
  loc_172CECF:           Set var_90 = Me.TEXT
  loc_172CED5:           Call 0.Method_Proc_245_59_172E0AC0 (CInt(7), var_98)
  loc_172CEDD:           var_98.Top = CDbl(1305)
  loc_172CEEC:         Else
  loc_172CEF4:           If (var_110 = "AcCheckList") Then
  loc_172CF02:             Set var_90 = Me.Label1
  loc_172CF08:             Call 0.Method_Proc_245_59_172E0AC0 (2, var_98)
  loc_172CF10:             var_98.Visible = True
  loc_172CF29:             Set var_90 = Me.TEXT
  loc_172CF2F:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(2), var_98)
  loc_172CF37:             var_98.Visible = True
  loc_172CF50:             Set var_90 = Me.TEXT
  loc_172CF56:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(&HA), var_98)
  loc_172CF5E:             var_98.Visible = True
  loc_172CF76:             Me.Label5.Visible = True
  loc_172CF8B:             Set var_90 = Me.TEXT
  loc_172CF91:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(3), var_98)
  loc_172CF99:             var_98.Visible = True
  loc_172CFB1:             Me.Label6.Visible = True
  loc_172CFC6:             Set var_90 = Me.TEXT
  loc_172CFCC:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(4), var_98)
  loc_172CFD4:             var_98.Visible = True
  loc_172CFED:             Set var_90 = Me.Label1
  loc_172CFF3:             Call 0.Method_Proc_245_59_172E0AC0 (2, var_98)
  loc_172CFFB:             var_98.Left = CDbl(&H78)
  loc_172D015:             Set var_90 = Me.Label1
  loc_172D01B:             Call 0.Method_Proc_245_59_172E0AC0 (2, var_98)
  loc_172D023:             var_98.Top = CDbl(750)
  loc_172D03F:             Set var_90 = Me.TEXT
  loc_172D045:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(2), var_98)
  loc_172D04D:             var_98.Left = CDbl(1725)
  loc_172D069:             Set var_90 = Me.TEXT
  loc_172D06F:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(2), var_98)
  loc_172D077:             var_98.Top = CDbl(705)
  loc_172D091:             Set var_90 = Me.TEXT
  loc_172D097:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(&HA), var_98)
  loc_172D09F:             var_8C = var_98.Width
  loc_172D0BC:             Set var_108 = Me.TEXT
  loc_172D0C2:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(&HA), var_10C)
  loc_172D0CA:             var_10C.Left = ((CDbl(1725) - var_8C) - CDbl(&H32))
  loc_172D0EA:             Set var_90 = Me.TEXT
  loc_172D0F0:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(&HA), var_98)
  loc_172D0F8:             var_98.Top = CDbl(705)
  loc_172D111:             Set var_90 = Me.Label1
  loc_172D117:             Call 0.Method_Proc_245_59_172E0AC0 (3, var_98)
  loc_172D11F:             var_98.Left = CDbl(&H78)
  loc_172D139:             Set var_90 = Me.Label1
  loc_172D13F:             Call 0.Method_Proc_245_59_172E0AC0 (3, var_98)
  loc_172D147:             var_98.Top = CDbl(1050)
  loc_172D160:             Set var_90 = Me.Label1
  loc_172D166:             Call 0.Method_Proc_245_59_172E0AC0 (4, var_98)
  loc_172D16E:             var_98.Left = CDbl(&H78)
  loc_172D188:             Set var_90 = Me.Label1
  loc_172D18E:             Call 0.Method_Proc_245_59_172E0AC0 (4, var_98)
  loc_172D196:             var_98.Top = CDbl(1350)
  loc_172D1B2:             Set var_90 = Me.TEXT
  loc_172D1B8:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(6), var_98)
  loc_172D1C0:             var_98.Left = CDbl(1725)
  loc_172D1DC:             Set var_90 = Me.TEXT
  loc_172D1E2:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(6), var_98)
  loc_172D1EA:             var_98.Top = CDbl(1005)
  loc_172D206:             Set var_90 = Me.TEXT
  loc_172D20C:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(7), var_98)
  loc_172D214:             var_98.Left = CDbl(1725)
  loc_172D230:             Set var_90 = Me.TEXT
  loc_172D236:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(7), var_98)
  loc_172D23E:             var_98.Top = CDbl(1305)
  loc_172D258:             Me.Label5.Left = CDbl(&H78)
  loc_172D26F:             Me.Label5.Top = CDbl(1650)
  loc_172D287:             Set var_90 = Me.TEXT
  loc_172D28D:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(3), var_98)
  loc_172D295:             var_98.Left = CDbl(1725)
  loc_172D2B1:             Set var_90 = Me.TEXT
  loc_172D2B7:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(3), var_98)
  loc_172D2BF:             var_98.Top = CDbl(1605)
  loc_172D2D9:             Me.Label6.Left = CDbl(&H78)
  loc_172D2F0:             Me.Label6.Top = CDbl(1950)
  loc_172D308:             Set var_90 = Me.TEXT
  loc_172D30E:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(4), var_98)
  loc_172D316:             var_98.Left = CDbl(1725)
  loc_172D332:             Set var_90 = Me.TEXT
  loc_172D338:             Call 0.Method_Proc_245_59_172E0AC0 (CInt(4), var_98)
  loc_172D340:             var_98.Top = CDbl(1905)
  loc_172D34C:           End If
  loc_172D34C:         End If
  loc_172D34C:       End If
  loc_172D34C:     End If
  loc_172D357:     If (GRepFormName = "AcCheckList") Then
  loc_172D363:       Set var_90 = var_98(1)
  loc_172D369:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D371:       var_A8 = var_98.Width
  loc_172D380:       Call 0.Method_Me0 (var_8C)
  loc_172D396:       var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_172D3A4:       Set var_108 = var_10C(1)
  loc_172D3AA:       Call 0.Method_Proc_245_59_172E0AC0 (True)
  loc_172D3B2:       var_10C.Left = var_A8
  loc_172D3CF:       var_120 = ().Height
  loc_172D3F6:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172D404:       Set var_108 = var_10C(1)
  loc_172D40A:       Call 0.Method_Proc_245_59_172E0AC0 (True)
  loc_172D412:       var_10C.Top = 
  loc_172D433:       var_A8 = ().Height
  loc_172D443:       Set var_98 = Me.Pic
  loc_172D449:       var_94 = var_98.Height
  loc_172D454:       Call 0.Method_Me8 (var_8C)
  loc_172D46B:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(2200))) 'Single
  loc_172D479:       Set var_108 = var_10C(1)
  loc_172D47F:       Call 0.Method_Proc_245_59_172E0AC0 (True)
  loc_172D487:       var_10C.Height = var_A8
  loc_172D4A3:       Set var_90 = var_98(1)
  loc_172D4A9:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D4C8:       Set var_108 = Me.Check1
  loc_172D4CE:       Call 0.Method_Proc_245_59_172E0AC0 (1, var_10C)
  loc_172D4D6:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172D4F2:       Set var_90 = var_98(1)
  loc_172D4F8:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D517:       Set var_108 = Me.Check1
  loc_172D51D:       Call 0.Method_Proc_245_59_172E0AC0 (1, var_10C)
  loc_172D525:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172D53E:       Call 0.Method_Me0 (var_94)
  loc_172D54C:       Set var_90 = var_98(1)
  loc_172D552:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D55A:       var_A8 = var_98.Width
  loc_172D569:       Call 0.Method_Me0 (var_8C)
  loc_172D587:       var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_172D595:       Set var_108 = var_10C(3)
  loc_172D59B:       Call 0.Method_Proc_245_59_172E0AC0 (True)
  loc_172D5A3:       var_10C.Left = var_A8
  loc_172D5C0:       var_120 = ().Height
  loc_172D5E7:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172D5F5:       Set var_108 = var_10C(3)
  loc_172D5FB:       Call 0.Method_Proc_245_59_172E0AC0 (True)
  loc_172D603:       var_10C.Top = 
  loc_172D624:       var_A8 = ().Height
  loc_172D634:       Set var_98 = Me.Pic
  loc_172D645:       Call 0.Method_Me8 (var_8C)
  loc_172D65C:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(2200))) 'Single
  loc_172D66A:       Set var_108 = var_10C(3)
  loc_172D670:       Call 0.Method_Proc_245_59_172E0AC0 (True)
  loc_172D694:       Set var_90 = var_98(3)
  loc_172D69A:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D6B9:       Set var_108 = Me.Check1
  loc_172D6BF:       Call 0.Method_Proc_245_59_172E0AC0 (3, var_10C)
  loc_172D6C7:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172D6E3:       Set var_90 = var_98(3)
  loc_172D6E9:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D708:       Set var_108 = Me.Check1
  loc_172D70E:       Call 0.Method_Proc_245_59_172E0AC0 (3, var_10C)
  loc_172D716:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172D764:       If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_172D773:         Me.TxtDetails.Visible = True
  loc_172D784:         Set var_90 = var_98(1)
  loc_172D78A:         Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D7A6:         Me.TxtDetails.Left = CDbl(var_98.Left)
  loc_172D7C0:         Set var_90 = var_98(1)
  loc_172D7C6:         Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D7E2:         Me.TxtDetails.Width = CDbl(var_98.Width)
  loc_172D7FC:         Set var_108 = var_10C(1)
  loc_172D802:         Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D80A:         var_120 = var_98.Width
  loc_172D81C:         Set var_90 = var_98(1)
  loc_172D822:         Call 0.Method_Proc_245_59_172E0AC0 (var_120)
  loc_172D844:         Me.TxtDetails.Top = (CDbl(var_98.Top) + CDbl(var_120))
  loc_172D85D:       End If
  loc_172D860:     Else
  loc_172D869:       Set var_90 = var_98(1)
  loc_172D86F:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D877:       var_A8 = var_98.Width
  loc_172D886:       Call 0.Method_Me0 (var_8C)
  loc_172D898:       var_B8 = CVar(((var_8C - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_172D8A6:       Set var_108 = var_10C(1)
  loc_172D8AC:       Call 0.Method_Proc_245_59_172E0AC0 (True)
  loc_172D8B4:       var_10C.Left = var_A8
  loc_172D8D1:       var_120 = ().Height
  loc_172D8F8:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172D906:       Set var_108 = var_10C(1)
  loc_172D90C:       Call 0.Method_Proc_245_59_172E0AC0 (True)
  loc_172D914:       var_10C.Top = 
  loc_172D935:       var_A8 = ().Height
  loc_172D945:       Set var_98 = Me.Pic
  loc_172D956:       Call 0.Method_Me8 (var_8C)
  loc_172D96D:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(2200))) 'Single
  loc_172D97B:       Set var_108 = var_10C(1)
  loc_172D981:       Call 0.Method_Proc_245_59_172E0AC0 (True)
  loc_172D9A5:       Set var_90 = var_98(1)
  loc_172D9AB:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172D9CA:       Set var_108 = Me.Check1
  loc_172D9D0:       Call 0.Method_Proc_245_59_172E0AC0 (1, var_10C)
  loc_172D9D8:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172D9F4:       Set var_90 = var_98(1)
  loc_172D9FA:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DA19:       Set var_108 = Me.Check1
  loc_172DA1F:       Call 0.Method_Proc_245_59_172E0AC0 (1, var_10C)
  loc_172DA27:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172DA75:       If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_172DA84:         Me.TxtDetails.Visible = True
  loc_172DA95:         Set var_90 = var_98(1)
  loc_172DA9B:         Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DAB7:         Me.TxtDetails.Left = CDbl(var_98.Left)
  loc_172DAD1:         Set var_90 = var_98(1)
  loc_172DAD7:         Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DAF3:         Me.TxtDetails.Width = CDbl(var_98.Width)
  loc_172DB0D:         Set var_108 = var_10C(1)
  loc_172DB13:         Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DB1B:         var_120 = var_98.Width
  loc_172DB2D:         Set var_90 = var_98(1)
  loc_172DB33:         Call 0.Method_Proc_245_59_172E0AC0 (var_120)
  loc_172DB55:         Me.TxtDetails.Top = (CDbl(var_98.Top) + CDbl(var_120))
  loc_172DB6E:       End If
  loc_172DB6E:     End If
  loc_172DB71:   Else
  loc_172DB7C:     If (var_100 = 2) Then
  loc_172DB88:       Set var_90 = var_98(1)
  loc_172DB8E:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DB96:       var_A8 = var_98.Width
  loc_172DBA5:       Call 0.Method_Me0 (var_8C)
  loc_172DBBB:       var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_172DBC9:       Set var_108 = var_10C(1)
  loc_172DBCF:       Call 0.Method_Proc_245_59_172E0AC0 (2)
  loc_172DBD7:       var_10C.Left = var_A8
  loc_172DBF4:       var_120 = ().Height
  loc_172DC1B:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172DC29:       Set var_108 = var_10C(1)
  loc_172DC2F:       Call 0.Method_Proc_245_59_172E0AC0 (2)
  loc_172DC37:       var_10C.Top = 
  loc_172DC58:       var_A8 = ().Height
  loc_172DC68:       Set var_98 = Me.Pic
  loc_172DC6E:       var_94 = var_98.Height
  loc_172DC79:       Call 0.Method_Me8 (var_8C)
  loc_172DC90:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(2200))) 'Single
  loc_172DC9E:       Set var_108 = var_10C(1)
  loc_172DCA4:       Call 0.Method_Proc_245_59_172E0AC0 (2)
  loc_172DCAC:       var_10C.Height = var_A8
  loc_172DCC8:       Set var_90 = var_98(1)
  loc_172DCCE:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DCED:       Set var_108 = Me.Check1
  loc_172DCF3:       Call 0.Method_Proc_245_59_172E0AC0 (1, var_10C)
  loc_172DCFB:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172DD17:       Set var_90 = var_98(1)
  loc_172DD1D:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DD3C:       Set var_108 = Me.Check1
  loc_172DD42:       Call 0.Method_Proc_245_59_172E0AC0 (1, var_10C)
  loc_172DD4A:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172DD63:       Call 0.Method_Me0 (var_94)
  loc_172DD71:       Set var_90 = var_98(1)
  loc_172DD77:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DD7F:       var_A8 = var_98.Width
  loc_172DD8E:       Call 0.Method_Me0 (var_8C)
  loc_172DDAC:       var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_172DDBA:       Set var_108 = var_10C(2)
  loc_172DDC0:       Call 0.Method_Proc_245_59_172E0AC0 (2)
  loc_172DDC8:       var_10C.Left = var_A8
  loc_172DDE5:       var_120 = ().Height
  loc_172DE0C:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172DE1A:       Set var_108 = var_10C(2)
  loc_172DE20:       Call 0.Method_Proc_245_59_172E0AC0 (2)
  loc_172DE28:       var_10C.Top = 
  loc_172DE49:       var_A8 = ().Height
  loc_172DE59:       Set var_98 = Me.Pic
  loc_172DE6A:       Call 0.Method_Me8 (var_8C)
  loc_172DE81:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(2200))) 'Single
  loc_172DE8F:       Set var_108 = var_10C(2)
  loc_172DE95:       Call 0.Method_Proc_245_59_172E0AC0 (2)
  loc_172DEB9:       Set var_90 = var_98(2)
  loc_172DEBF:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DEDE:       Set var_108 = Me.Check1
  loc_172DEE4:       Call 0.Method_Proc_245_59_172E0AC0 (2, var_10C)
  loc_172DEEC:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172DF08:       Set var_90 = var_98(2)
  loc_172DF0E:       Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DF2D:       Set var_108 = Me.Check1
  loc_172DF33:       Call 0.Method_Proc_245_59_172E0AC0 (2, var_10C)
  loc_172DF3B:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172DF89:       If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_172DF98:         Me.TxtDetails.Visible = True
  loc_172DFA9:         Set var_90 = var_98(1)
  loc_172DFAF:         Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172DFCB:         Me.TxtDetails.Left = CDbl(var_98.Left)
  loc_172DFE5:         Set var_90 = var_98(1)
  loc_172DFEB:         Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172E007:         Me.TxtDetails.Width = CDbl(var_98.Width)
  loc_172E021:         Set var_108 = var_10C(1)
  loc_172E027:         Call 0.Method_Proc_245_59_172E0AC0 ()
  loc_172E02F:         var_120 = var_98.Width
  loc_172E041:         Set var_90 = var_98(1)
  loc_172E047:         Call 0.Method_Proc_245_59_172E0AC0 (var_120)
  loc_172E069:         Me.TxtDetails.Top = (CDbl(var_98.Top) + CDbl(var_120))
  loc_172E082:       End If
  loc_172E082:     End If
  loc_172E082:   End If
  loc_172E082: End If
  loc_172E082: Exit Sub
  loc_172E083: ' Referenced from: 172C418
  loc_172E089: Call 0.Method_arg_50 (var_128)
  loc_172E091: var_130 = "Global_Grid"
  loc_172E09E: Proc_183_57_104B0BC(var_128)
  loc_172E0AA: Exit Sub
End Sub

Public Sub Proc_245_60_EB7B34
  'Data Table: 58C0E4
  loc_EB7AAF: If (Me.FrmList.Visible = &HFF) Then
  loc_EB7ABE:   Me.FrmList.Visible = False
  loc_EB7AC6: End If
  loc_EB7AE2: If (CBool(().Visible) = &HFF) Then
  loc_EB7AF4:   (False).Visible = 
  loc_EB7AFC: End If
  loc_EB7B18: If (CBool(().Visible) = &HFF) Then
  loc_EB7B2A:   (False).Visible = 
  loc_EB7B32: End If
  loc_EB7B32: Exit Sub
End Sub

Public Sub Proc_245_61_127C7BC(arg_C, arg_10, arg_14) '127C7BC
  'Data Table: 58C0E4
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_104 As String
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_1C2 As Integer
  loc_127C22E: On Error Goto loc_127C786
  loc_127C234: var_8C = vbNullString
  loc_127C23F: CRefVarAry
  loc_127C247: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_127C268:   If (arg_C(var_8E) = 0) Then
  loc_127C26B:     GoTo loc_127C603
  loc_127C26E:   End If
  loc_127C27F:   var_90 = CInt(arg_C(var_8E))
  loc_127C2A1:   Set var_DC = var_E0(arg_10)
  loc_127C2A7:   Call 0.Method_Proc_245_61_127C7BC0 (0, CVar(CLng(var_90)))
  loc_127C2CF:   If (CStr(FrmList.DispID_41) = "ü") Then
  loc_127C2DB:     If (CInt(arg_14) = 0) Then
  loc_127C2FA:       Set var_DC = var_E0(arg_10)
  loc_127C300:       Call 0.Method_Proc_245_61_127C7BC0 (2, CVar(CLng(var_90)))
  loc_127C339:       Set var_108 = var_10C(arg_10)
  loc_127C33F:       Call 0.Method_Proc_245_61_127C7BC0 (2, CVar(CLng(var_90)), ",", CVar(var_8C))
  loc_127C377:       var_1AC = (var_90 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(FrmList.DispID_41 & CStr(FrmList.DispID_41))))
  loc_127C37C:       var_8C = CStr(var_1AC)
  loc_127C3A1:     Else
  loc_127C3AA:       If (CInt(arg_14) = 1) Then
  loc_127C3C9:         Set var_DC = var_E0(arg_10)
  loc_127C3CF:         Call 0.Method_Proc_245_61_127C7BC0 (2, CVar(CLng(var_90)))
  loc_127C40F:         Set var_108 = var_10C(arg_10)
  loc_127C415:         Call 0.Method_Proc_245_61_127C7BC0 (2, CVar(CLng(var_90)), "," & "'")
  loc_127C462:         var_1AC = (FrmList.DispID_41 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(FrmList.DispID_41) & "'")))
  loc_127C467:         var_8C = CStr(var_1AC)
  loc_127C493:       End If
  loc_127C493:     End If
  loc_127C4B2:     Set var_DC = var_E0(arg_10)
  loc_127C4B8:     Call 0.Method_Proc_245_61_127C7BC0 (1, CVar(CLng(var_90)))
  loc_127C4EA:     If (Len(var_94 & CStr(FrmList.DispID_41)) < &HFF) Then
  loc_127C509:       Set var_DC = var_E0(arg_10)
  loc_127C50F:       Call 0.Method_Proc_245_61_127C7BC0 (1, CVar(CLng(var_90)))
  loc_127C548:       Set var_108 = var_10C(arg_10)
  loc_127C54E:       Call 0.Method_Proc_245_61_127C7BC0 (1, CVar(CLng(var_90)), ",")
  loc_127C565:       var_17C = CVar(CVar(var_94) & CStr(FrmList.DispID_41)) 'String
  loc_127C56C:       var_16C = CVar(CStr(var_C8)) 'String
  loc_127C57E:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_127C586:       var_1AC = (FrmList.DispID_41 + var_18C)
  loc_127C58B:       var_94 = CStr(var_1AC)
  loc_127C5AD:     End If
  loc_127C5B1:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_127C5CF:     Set var_DC = var_E0(arg_10)
  loc_127C5D5:     Call 0.Method_Proc_245_61_127C7BC0 (vbNullString, 0)
  loc_127C5DD:     LateIdCallSt
  loc_127C5EF:   Else
  loc_127C5F6:     var_B8 = 0
  loc_127C5FF:     VarIndexSt
  loc_127C603:   End If
  loc_127C603:   ' Referenced from: 127C26B
  loc_127C606: Next var_98 'Integer
  loc_127C613: CRefVarAry
  loc_127C61B: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_127C653:   If CBool(arg_C(var_8E) <> 0) Then
  loc_127C678:     Set var_DC = var_E0(arg_10)
  loc_127C67E:     Call 0.Method_Proc_245_61_127C7BC0 ("ü", 0, CVar(CLng(CInt(arg_C(var_8E)))))
  loc_127C686:     LateIdCallSt
  loc_127C695:   End If
  loc_127C698: Next var_1C0 'Integer
  loc_127C6A5: If (var_8C = vbNullString) Then
  loc_127C6A8:   var_A8 = 0
  loc_127C6C4:   Set var_DC = var_E0(arg_10)
  loc_127C6CA:   Call 0.Method_Proc_245_61_127C7BC0 (1)
  loc_127C6F3:   var_104 = CStr(var_C8)
  loc_127C6FA:   MsgBox(CVar("Select " & var_104), &H40, var_16C, var_17C, var_18C)
  loc_127C720:   Set var_DC = var_E0(arg_10)
  loc_127C726:   Call 0.Method_Proc_245_61_127C7BC0 (FrmList.DispID_41)
  loc_127C745:   Proc_245_61_127C7BC = 0
  loc_127C74B: End If
  loc_127C74E: var_88 = var_8C
  loc_127C754: var_1C2 = arg_10
  loc_127C75D: If (var_1C2 = 1) Then
  loc_127C766:   global_108 = var_94
  loc_127C76D: Else
  loc_127C773:   If (var_1C2 = 2) Then
  loc_127C77C:     global_112 = var_94
  loc_127C780:   End If
  loc_127C780: End If
  loc_127C780: Proc_245_61_127C7BC = var_1C2
  loc_127C786: ' Referenced from: 127C22E
  loc_127C794: Call 0.Method_arg_50 (var_104, 0)
  loc_127C7A9: Proc_183_57_104B0BC(var_104, "FillString")
  loc_127C7B5: Proc_245_61_127C7BC = FrmList.DispID_8001
End Sub

Public Sub Proc_245_62_F2F148
  'Data Table: 58C0E4
  Dim var_CC As Variant
  loc_F2F040: On Error Goto loc_F2F11E
  loc_F2F047: Set var_8C = ()
  loc_F2F064: If (CLng(FrmList.DispID_A) = CLng(global_140)) Then
  loc_F2F06F:   var_A0 = "	"
  loc_F2F075:   Proc_303_0_FBACC8(var_A0)
  loc_F2F07D:   Exit Sub
  loc_F2F07E: End If
  loc_F2F082: Set var_8C = (0)
  loc_F2F099: Set var_A8 = CInt(CLng(FrmList.DispID_A))(var_86)
  loc_F2F0BD: For var_BC =  To CInt((CLng(FrmList.DispID_4) - 1)):  = var_BC 'Integer
  loc_F2F0CA:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F2F0D3:   Set var_8C = (var_CC)
  loc_F2F0F1:   If (CLng(FrmList.DispID_3A) <> 0) Then
  loc_F2F0FB:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F2F104:     Set var_8C = (var_CC)
  loc_F2F112:     Exit For
  loc_F2F115:   End If
  loc_F2F118: Next var_BC 'Integer
  loc_F2F11D: ' Referenced from: F2F112
  loc_F2F11D: Exit Sub
  loc_F2F11E: ' Referenced from: F2F040
  loc_F2F124: Call 0.Method_arg_50 (var_A0)
  loc_F2F12C: var_E4 = "TxtKeyDown"
  loc_F2F139: Proc_183_57_104B0BC(var_A0)
  loc_F2F145: Exit Sub
End Sub

Public Sub Proc_245_63_11E9CD8(arg_C, arg_10) '11E9CD8
  'Data Table: 58C0E4
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As CheckBox
  Dim var_E8 As CheckBox
  loc_11E984C: On Error Goto loc_11E9CAF
  loc_11E9852: var_86 = arg_C
  loc_11E9858: var_88 = var_86
  loc_11E9861: If (var_88 = 1) Then
  loc_11E9880:   Me.Recordset15.CursorLocation = 3
  loc_11E98A9:   Me.Open CVar(arg_10), CVar(MemVar_1F951E0), 3
  loc_11E98B7:   CVarUnk
  loc_11E98BC:   VerifyVarObj
  loc_11E98C8:   Set var_8C = var_B0(var_86)
  loc_11E98CE:   Call 0.Method_Proc_245_63_11E9CD80 (New, 1, -1)
  loc_11E98D6:   LateIdStAd
  loc_11E98F8:   ReDim Preserve global_96(0 To 0)
  loc_11E990F:   global_96(0) = 0
  loc_11E9913: Else
  loc_11E9919:   If (var_88 = 2) Then
  loc_11E9938:     Me.Recordset15.CursorLocation = 3
  loc_11E9961:     Me.Open CVar(arg_10), CVar(MemVar_1F951E0), 3
  loc_11E996F:     CVarUnk
  loc_11E9974:     VerifyVarObj
  loc_11E9980:     Set var_8C = var_B0(var_86)
  loc_11E9986:     Call 0.Method_Proc_245_63_11E9CD80 (New, 1, -1)
  loc_11E998E:     LateIdStAd
  loc_11E99B0:     ReDim Preserve global_100(0 To 0)
  loc_11E99C7:     global_100(0) = 0
  loc_11E99CB:   Else
  loc_11E99D1:     If (var_88 = 3) Then
  loc_11E99F0:       Me.Recordset15.CursorLocation = 3
  loc_11E9A19:       Me.Open CVar(arg_10), CVar(MemVar_1F951E0), 3
  loc_11E9A27:       CVarUnk
  loc_11E9A2C:       VerifyVarObj
  loc_11E9A38:       Set var_8C = var_B0(var_86)
  loc_11E9A3E:       Call 0.Method_Proc_245_63_11E9CD80 (New, 1, -1, var_B0)
  loc_11E9A46:       LateIdStAd
  loc_11E9A68:       ReDim Preserve global_104(0 To 0)
  loc_11E9A7F:       global_104(0) = 0
  loc_11E9A80:     End If
  loc_11E9A80:   End If
  loc_11E9A80: End If
  loc_11E9A93: Set var_8C = var_B0(var_86)
  loc_11E9A99: Call 0.Method_Proc_245_63_11E9CD80 (CVar(CDbl(1700)), var_B0, var_B0)
  loc_11E9AA1: var_B0.Height = var_88
  loc_11E9ABB: Set var_8C = var_B0(var_86)
  loc_11E9AC1: Call 0.Method_Proc_245_63_11E9CD80 (True)
  loc_11E9AC9: var_B0.Visible = var_86
  loc_11E9AE3: Set var_8C = var_B0(var_86)
  loc_11E9AE9: Call 0.Method_Proc_245_63_11E9CD80 (True)
  loc_11E9AF1: var_B0.Enabled = 
  loc_11E9B09: Set var_8C = Me.Check1
  loc_11E9B0F: Call 0.Method_Proc_245_63_11E9CD80 (var_86, var_B0)
  loc_11E9B17: var_B0.Visible = True
  loc_11E9B36: Set var_8C = var_B0(var_86)
  loc_11E9B3C: Call 0.Method_Proc_245_63_11E9CD80 (CVar(CDbl(5200)))
  loc_11E9B44: var_B0.Width = 
  loc_11E9B50: var_9C = 0
  loc_11E9B6C: Set var_8C = var_B0(var_86)
  loc_11E9B72: Call 0.Method_Proc_245_63_11E9CD80 (&H258)
  loc_11E9B7A: LateIdCallSt
  loc_11E9BA5: Set var_8C = var_B0(var_86)
  loc_11E9BAB: Call 0.Method_Proc_245_63_11E9CD80 (0, 2)
  loc_11E9BB3: LateIdCallSt
  loc_11E9BDE: Set var_8C = var_B0(var_86)
  loc_11E9BE4: Call 0.Method_Proc_245_63_11E9CD80 (&HFA0, 1, var_B0)
  loc_11E9BEC: LateIdCallSt
  loc_11E9C0A: Set var_8C = Me.Check1
  loc_11E9C10: Call 0.Method_Proc_245_63_11E9CD80 (var_86, var_B0, CDbl(580))
  loc_11E9C18: var_B0.Width = var_B0
  loc_11E9C37: Set var_8C = var_B0(var_86)
  loc_11E9C3D: Call 0.Method_Proc_245_63_11E9CD80 (0, var_B0)
  loc_11E9C63: Set var_E4 = Me.Check1
  loc_11E9C69: Call 0.Method_Proc_245_63_11E9CD80 (var_86, var_E8)
  loc_11E9C71: var_E8.Height = CDbl((CLng(Check1.DispID_3A) + &H14))
  loc_11E9C94: Set var_8C = Me.Check1
  loc_11E9C9A: Call 0.Method_Proc_245_63_11E9CD80 (var_86, var_B0)
  loc_11E9CA2: var_B0.Value = CInt(0)
  loc_11E9CAE: Exit Sub
  loc_11E9CAF: ' Referenced from: 11E984C
  loc_11E9CB5: Call 0.Method_arg_50 (var_EC)
  loc_11E9CCA: Proc_183_57_104B0BC(var_EC, "GridInitialise")
  loc_11E9CD6: Exit Sub
End Sub

Public Sub Proc_245_64_F51BE4(arg_C, arg_10) 'F51BE4
  'Data Table: 58C0E4
  Dim var_E0 As String
  Dim var_86 As Integer
  loc_F51AD4: On Error Goto loc_F51BB4
  loc_F51AED: Set var_CC = CVar(CLng(arg_C))(1)
  loc_F51AFE: var_E0 = CStr(Check1.DispID_41)
  loc_F51B0F: If (var_E0 = vbNullString) Then
  loc_F51B44:   MsgBox(Trim(arg_10) & " Should not be Blank.", &H40, "Validation Check", var_110, var_130)
  loc_F51B5A:   Set var_CC = ()
  loc_F51B78:   Set var_CC = Check1.DispID_8001(CVar(CLng(arg_C)))
  loc_F51B93:   Set var_CC = Check1.DispID_A(1)
  loc_F51BA3:   var_86 = 0
  loc_F51BA9: Else
  loc_F51BAB:   var_86 = &HFF
  loc_F51BAE: End If
  loc_F51BAE: Proc_245_64_F51BE4 = var_86
  loc_F51BB4: ' Referenced from: F51AD4
  loc_F51BBA: Call 0.Method_arg_50 (var_E0, var_86)
  loc_F51BCF: Proc_183_57_104B0BC(var_E0, "IsNotBlank")
  loc_F51BDB: Proc_245_64_F51BE4 = Check1.DispID_B
End Sub

Public Sub Proc_245_65_1750F20
  'Data Table: 58C0E4
  Dim var_B4 As Variant
  Dim var_A4 As String
  Dim var_F0 As String
  Dim var_124 As String
  Dim var_C4 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_94 As Variant
  Dim var_188 As String
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim unk_58C129 As Connection15
  Dim var_90 As Recordset15
  Dim var_130 As Fields15
  loc_174F204: On Error Goto loc_1750EF7
  loc_174F218: Call 0.Method_arg_90 (var_94, var_98)
  loc_174F220: Call 0.Method_arg_24 (var_86)
  loc_174F22C: For var_9C =  To CInt(var_98): 1 = var_9C 'Integer
  loc_174F245:   Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F24D:   Call 0.Method_arg_20 (var_A0)
  loc_174F255:   Call 0.Method_arg_30 (var_A4)
  loc_174F26B:   var_D4 = Ucase(CVar(var_A4)) 'Variant
  loc_174F29B:   If (var_D4 = Ucase("Title")) Then
  loc_174F2A4:     var_EC = GRepFormName
  loc_174F2B7:     var_A4 = CStr((GRepFormName = "DUELIST"))
  loc_174F2BF:     If (var_EC = var_A4) Then
  loc_174F2CB:       Call 0.Method_arg_50 (var_A4)
  loc_174F2F3:       Set var_94 = CVar(CLng(3))(1)
  loc_174F322:       Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174F32A:       Call 0.Method_arg_20 (var_130)
  loc_174F332:       Call 0.Method_arg_38 ("'" & var_A4 & " More Than " & CStr(Check1.DispID_41) & " Days""'")
  loc_174F355:     Else
  loc_174F35D:       If (var_EC = "DayBook") Then
  loc_174F369:         Call 0.Method_arg_50 (var_A4)
  loc_174F38D:         Set var_94 = CVar(CLng(3))(1)
  loc_174F3C7:         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174F3CF:         Call 0.Method_arg_20 (var_130)
  loc_174F3D7:         Call 0.Method_arg_38 ("'" & var_A4 & " (" & CStr(Check1.DispID_41) & ")" & "'")
  loc_174F3FC:       Else
  loc_174F404:         If (var_EC = "JournalBook") Then
  loc_174F41C:           Set var_94 = CVar(CLng(4))(2)
  loc_174F44F:           If CBool(Trim(CVar(CStr(Check1.DispID_41))) <> vbNullString) Then
  loc_174F46C:             Set var_94 = CVar(CLng(2))(1)
  loc_174F490:             var_168 = (Trim(CVar(CStr(Check1.DispID_41))) + " (")
  loc_174F4A9:             Set var_A0 = CVar(CLng(4))(1)
  loc_174F4C8:             var_1E8 = (var_168 + Trim(CVar(CStr(Check1.DispID_41))))
  loc_174F4D1:             var_208 = (var_1E8 + ")")
  loc_174F4F6:             Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_174F4FE:             Call 0.Method_arg_20 (var_24C)
  loc_174F506:             Call 0.Method_arg_38 (CStr("'" & var_208 & "'"))
  loc_174F535:           Else
  loc_174F54F:             Set var_94 = CVar(CLng(2))(1)
  loc_174F57B:             var_A4 = CStr("'" & Trim(CVar(CStr(Check1.DispID_41))) & "'")
  loc_174F58F:             Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174F597:             Call 0.Method_arg_20 (var_130)
  loc_174F59F:             Call 0.Method_arg_38 (var_A4)
  loc_174F5BD:           End If
  loc_174F5C0:         Else
  loc_174F5C8:           If Not (var_EC = "Annexure") Then
  loc_174F5D3:             If Not (var_EC = "BankReg") Then
  loc_174F5DE:               If Not (var_EC = "CashBook") Then
  loc_174F5E9:                 If Not (var_EC = "BankBook") Then
  loc_174F5F4:                   If Not (var_EC = "Clg") Then
  loc_174F5FF:                     If Not (var_EC = "ClgNot") Then
  loc_174F60A:                       If Not (var_EC = "DailySumm") Then
  loc_174F615:                         If Not (var_EC = "RozNamcha") Then
  loc_174F620:                           If Not (var_EC = "CONTROLLED") Then
  loc_174F62B:                             If Not (var_EC = "DUELIST") Then
  loc_174F636:                               If Not (var_EC = "RefReport") Then
  loc_174F641:                                 If (var_EC = "NonTrans") Then
  loc_174F644:                                 End If
  loc_174F644:                               End If
  loc_174F644:                             End If
  loc_174F644:                           End If
  loc_174F644:                         End If
  loc_174F644:                       End If
  loc_174F644:                     End If
  loc_174F644:                   End If
  loc_174F644:                 End If
  loc_174F644:               End If
  loc_174F644:             End If
  loc_174F64F:             Set var_94 = Me.TEXT
  loc_174F655:             Call 0.Method_Proc_245_65_1750F200 (CInt(&HC))
  loc_174F67E:             If CBool(Trim(CVar(var_A0)) <> vbNullString) Then
  loc_174F68C:               Call 0.Method_arg_50 (var_A4, "'")
  loc_174F6A6:               Set var_94 = Me.TEXT
  loc_174F6AC:               Call 0.Method_Proc_245_65_1750F200 (CInt(&HC), var_A0)
  loc_174F6C3:               var_168 = (CVar(var_A4 & " (") + Trim(CVar(var_A0)))
  loc_174F6CC:               var_1B8 = ("'" & Trim(CVar(CStr(Check1.DispID_41))) + ")")
  loc_174F6D5:               var_1C8 = ("'" & Trim(CVar(CStr(Check1.DispID_41))) & "'" + "'")
  loc_174F6D9:               var_1D8 = var_A0 & CVar(CStr(Check1.DispID_41)) 
  loc_174F6F1:               Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_174F6F9:               Call 0.Method_arg_20 (var_24C)
  loc_174F701:               Call 0.Method_arg_38 (CStr(var_1D8))
  loc_174F72A:             Else
  loc_174F733:               Call 0.Method_arg_50 (var_A4)
  loc_174F756:               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F75E:               Call 0.Method_arg_20 (var_A0)
  loc_174F766:               Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_174F77B:             End If
  loc_174F77E:           Else
  loc_174F787:             Call 0.Method_arg_50 (var_A4)
  loc_174F7AA:             Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F7B2:             Call 0.Method_arg_20 (var_A0)
  loc_174F7BA:             Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_174F7CF:           End If
  loc_174F7CF:         End If
  loc_174F7CF:       End If
  loc_174F7CF:     End If
  loc_174F7D2:   Else
  loc_174F7DA:     var_B4 = "FORDATE"
  loc_174F7F4:     If Not (var_D4 = Ucase(var_B4)) Then
  loc_174F819:       If Not (var_D4 = Ucase("DATE")) Then
  loc_174F83E:         If (var_D4 = Ucase("FROMDATE")) Then
  loc_174F841:         End If
  loc_174F841:       End If
  loc_174F852:       If (GRepFormName = "Annexure") Then
  loc_174F888:         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174F890:         Call 0.Method_arg_20 (var_130)
  loc_174F898:         Call 0.Method_arg_38 ("'Upto Date :   " & Me.TXTE_DATE.Text & "'")
  loc_174F8B2:       Else
  loc_174F8C7:         Set var_94 = CVar(CLng(0))(1)
  loc_174F8EE:         Set var_A0 = CVar(CLng(1))(1)
  loc_174F900:         var_178 = "'From :'+ '"
  loc_174F930:         var_188 = "' + ' To ' + '"
  loc_174F981:         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_1D8)), "dd/mmm/yyyy") & "'"), 1)
  loc_174F989:         Call 0.Method_arg_20 (1 & Format(CVar(CStr(var_B4)), "dd/mmm/yyyy") & var_188, 1, "'")
  loc_174F991:         Call 0.Method_arg_38 (TXTE_DATE.DispID_41)
  loc_174F9BF:       End If
  loc_174F9C2:     Else
  loc_174F9E4:       If (var_D4 = Ucase("PageNo")) Then
  loc_174FA3A:         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174FA42:         Call 0.Method_arg_20 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_174FA4A:         Call 0.Method_arg_38 (TXTE_DATE.DispID_41)
  loc_174FA69:       Else
  loc_174FA8B:         If (var_D4 = Ucase("DT")) Then
  loc_174FAE1:           Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_174FAE9:           Call 0.Method_arg_20 (var_24C)
  loc_174FAF1:           Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("daterfill").Value & "'"))
  loc_174FB10:         Else
  loc_174FB32:           If (var_D4 = Ucase("SepPage")) Then
  loc_174FB54:             var_A0 = Me.Fields.Item("CashBookPage")
  loc_174FB8C:             Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_174FB94:             Call 0.Method_arg_20 (var_24C)
  loc_174FB9C:             Call 0.Method_arg_38 (CStr("'" & Ucase(CVar(var_A0)) & "'"))
  loc_174FBBB:           Else
  loc_174FBDD:             If (var_D4 = Ucase("PageNoIni")) Then
  loc_174FBF5:               Set var_94 = CVar(CLng(3))(1)
  loc_174FC23:               Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174FC2B:               Call 0.Method_arg_20 (var_130)
  loc_174FC33:               Call 0.Method_arg_38 (CStr(Val(CStr(TXTE_DATE.DispID_41))))
  loc_174FC4E:             Else
  loc_174FC70:               If (var_D4 = Ucase("ACNAME")) Then
  loc_174FC79:                 var_278 = GRepFormName
  loc_174FC84:                 If Not (var_278 = "CashBook") Then
  loc_174FC8F:                   If (var_278 = "BankBook") Then
  loc_174FC92:                   End If
  loc_174FCAA:                   Set var_94 = CVar(CLng(4))(1)
  loc_174FCD9:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174FCE1:                   Call 0.Method_arg_20 (var_130)
  loc_174FCE9:                   Call 0.Method_arg_38 ("'" & CStr(TXTE_DATE.DispID_41) & "'")
  loc_174FD06:                 Else
  loc_174FD39:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174FD41:                   Call 0.Method_arg_20 (var_130)
  loc_174FD49:                   Call 0.Method_arg_38 ("'From A/C :               " & Me.TXTACC_CODE.Text & "'")
  loc_174FD60:                 End If
  loc_174FD63:               Else
  loc_174FD85:                 If Not (var_D4 = Ucase("PARTYNAME")) Then
  loc_174FDAA:                   If (var_D4 = Ucase("FORPARTY")) Then
  loc_174FDAD:                   End If
  loc_174FDB7:                   Set var_94 = Me.TXTACC_CODE
  loc_174FDE0:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174FDE8:                   Call 0.Method_arg_20 (var_130)
  loc_174FDF0:                   Call 0.Method_arg_38 ("'For A/c :               " & var_94.Text & "'")
  loc_174FE0A:                 Else
  loc_174FE2C:                   If (var_D4 = Ucase("MyOpBal")) Then
  loc_174FE4A:                     Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174FE52:                     Call 0.Method_arg_20 (var_A0)
  loc_174FE5A:                     Call 0.Method_arg_38 (CStr(global_132))
  loc_174FE6C:                   Else
  loc_174FE8E:                     If (var_D4 = Ucase("VRTOT")) Then
  loc_174FEA9:                       Set var_94 = CVar(CLng(3))(1)
  loc_174FED8:                       Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174FEE0:                       Call 0.Method_arg_20 (var_130)
  loc_174FEE8:                       Call 0.Method_arg_38 ("'" & CStr(TXTACC_CODE.DispID_41) & "'")
  loc_174FF05:                     Else
  loc_174FF27:                       If (var_D4 = Ucase("VRWISETOT")) Then
  loc_174FF42:                         Set var_94 = CVar(CLng(2))(1)
  loc_174FF71:                         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174FF79:                         Call 0.Method_arg_20 (var_130)
  loc_174FF81:                         Call 0.Method_arg_38 ("'" & CStr(TXTACC_CODE.DispID_41) & "'")
  loc_174FF9E:                       Else
  loc_174FFA6:                         var_B4 = "BetweenDate"
  loc_174FFC0:                         If (var_D4 = Ucase(var_B4)) Then
  loc_174FFD8:                           Set var_94 = CVar(CLng(0))(1)
  loc_174FFEA:                           var_178 = "'Upto Date :'+ '"
  loc_1750037:                           Call 0.Method_arg_90 (var_A0, CLng(var_86), var_130, CStr(1 & Format(CVar(CStr(var_B4)), "dd/mmm/yyyy") & "'"))
  loc_175003F:                           Call 0.Method_arg_20 (1, "'")
  loc_1750047:                           Call 0.Method_arg_38 (TXTACC_CODE.DispID_41)
  loc_175006A:                         Else
  loc_175008C:                           If (var_D4 = Ucase("ForParty")) Then
  loc_175009B:                             Set var_94 = Me.Check1
  loc_17500A1:                             Call 0.Method_Proc_245_65_1750F200 (1, var_A0)
  loc_17500BF:                             If (CLng(var_A0.Value) = 0) Then
  loc_1750107:                               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_175010F:                               Call 0.Method_arg_20 (var_A0)
  loc_1750117:                               Call 0.Method_arg_38 (CStr(Trim(Left(CVar("'For Party :" & global_108), &HFF)) & "'"))
  loc_1750134:                             Else
  loc_1750147:                               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_175014F:                               Call 0.Method_arg_20 (var_A0)
  loc_1750157:                               Call 0.Method_arg_38 ("'For Party :                           All'")
  loc_1750163:                             End If
  loc_1750166:                           Else
  loc_1750188:                             If (var_D4 = Ucase("ForDrCr")) Then
  loc_17501A3:                               Set var_94 = CVar(CLng(2))(1)
  loc_17501B4:                               var_A4 = CStr(Check1.DispID_41)
  loc_17501B8:                               var_F0 = "'For Dr/Cr :'+ '" & var_A4
  loc_17501D2:                               Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_17501DA:                               Call 0.Method_arg_20 (var_130)
  loc_17501E2:                               Call 0.Method_arg_38 ("'" & CStr(TXTACC_CODE.DispID_41) & "'")
  loc_17501FC:                             End If
  loc_17501FC:                           End If
  loc_17501FC:                         End If
  loc_17501FC:                       End If
  loc_17501FC:                     End If
  loc_17501FC:                   End If
  loc_17501FC:                 End If
  loc_17501FC:               End If
  loc_17501FC:             End If
  loc_17501FC:           End If
  loc_17501FC:         End If
  loc_17501FC:       End If
  loc_17501FC:     End If
  loc_17501FC:   End If
  loc_17501FF: Next var_9C 'Integer
  loc_175020A: var_27C = GRepFormName
  loc_1750215: If (var_27C = "BudgetVariance") Then
  loc_1750229:   Call 0.Method_arg_90 (var_94, var_98)
  loc_1750231:   Call 0.Method_arg_24 (var_86)
  loc_175023D:   For var_280 =  To CInt(var_98): 1 = var_280 'Integer
  loc_1750256:     Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_175025E:     Call 0.Method_arg_20 (var_A0)
  loc_1750266:     Call 0.Method_arg_30 (var_A4)
  loc_17502AC:     If (Ucase(CVar(var_A4)) = Ucase("ForBudget")) Then
  loc_17502BB:       Set var_94 = Me.Check1
  loc_17502C1:       Call 0.Method_Proc_245_65_1750F200 (1, var_A0)
  loc_17502DF:       If (CLng(var_A0.Value) = 0) Then
  loc_17502F1:         var_B4 = CVar("'For Budget: " & global_108) 'String
  loc_17502F7:         var_C4 = Left(var_B4, &HFF)
  loc_1750327:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_175032F:         Call 0.Method_arg_20 (var_A0)
  loc_1750337:         Call 0.Method_arg_38 (CStr(Trim(var_C4) & "'"))
  loc_1750354:       Else
  loc_1750367:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_175036F:         Call 0.Method_arg_20 (var_A0)
  loc_1750377:         Call 0.Method_arg_38 ("'For Budget:All'")
  loc_1750383:       End If
  loc_1750383:     End If
  loc_1750386:   Next var_280 'Integer
  loc_175038E: Else
  loc_1750396:   If (var_27C = "Budget") Then
  loc_17503AE:     Set var_94 = CVar(CLng(0))(2)
  loc_17503D4:     var_A4 = CStr(var_B4)
  loc_17503D8:     var_F0 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where CStr(FromDate) +'-'+ CStr(ToDate) in ('" & var_A4
  loc_17503E8:     unk_58C129.Execute "'" & CStr(TXTACC_CODE.DispID_41) & "') Order By B.BudgetDrAmt,B.BudgetCrAmt", var_C4, -1
  loc_17503F3:     Set var_90 = var_A0
  loc_1750413:     var_98 = var_90.RecordCount
  loc_1750421:     If (var_98 > 0) Then
  loc_1750433:       var_94 = var_90.Fields
  loc_175043B:       var_A0 = var_94.Item("FromDate")
  loc_175044F:       var_130 = var_90.Fields
  loc_1750457:       var_24C = var_130.Item("ToDate")
  loc_1750484:       var_292 = CByte(DateDiff("m", CVar(var_A0), CVar(var_24C), 1, 1)) 'Byte
  loc_17504A3:       var_292 = CByte((CInt(var_292) + 1)) 'Byte
  loc_17504B8:       Call 0.Method_arg_90 (var_94, var_98, var_86)
  loc_17504C0:       Call 0.Method_arg_24 (1, var_A0)
  loc_17504CC:       For var_296 =  To CInt(var_98):   Check1.DispID_41 = var_296 'Integer
  loc_17504E5:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_17504ED:         Call 0.Method_arg_20 (var_A0)
  loc_17504F5:         Call 0.Method_arg_30 (var_A4)
  loc_175050B:         var_2A8 = Ucase(CVar(var_A4)) 'Variant
  loc_175053B:         If (var_2A8 = Ucase("Year1")) Then
  loc_17505A7:           Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17505AF:           Call 0.Method_arg_20 (CStr(1 & Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy") & "'"), 1)
  loc_17505B7:           Call 0.Method_arg_38 ("'")
  loc_17505D8:         Else
  loc_17505FA:           If (var_2A8 = Ucase("Year2")) Then
  loc_1750678:             Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750680:             Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(1), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1750688:             Call 0.Method_arg_38 ("'")
  loc_17506AB:           Else
  loc_17506CD:             If (var_2A8 = Ucase("Year3")) Then
  loc_175074B:               Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750753:               Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(2), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_175075B:               Call 0.Method_arg_38 ("'")
  loc_175077E:             Else
  loc_17507A0:               If (var_2A8 = Ucase("Year4")) Then
  loc_175081E:                 Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750826:                 Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(3), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_175082E:                 Call 0.Method_arg_38 ("'")
  loc_1750851:               Else
  loc_1750873:                 If (var_2A8 = Ucase("Year5")) Then
  loc_17508F1:                   Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17508F9:                   Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(4), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1750901:                   Call 0.Method_arg_38 ("'")
  loc_1750924:                 Else
  loc_1750946:                   If (var_2A8 = Ucase("Year6")) Then
  loc_17509C4:                     Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17509CC:                     Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(5), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_17509D4:                     Call 0.Method_arg_38 ("'")
  loc_17509F7:                   Else
  loc_1750A19:                     If (var_2A8 = Ucase("Year7")) Then
  loc_1750A97:                       Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750A9F:                       Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(6), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1750AA7:                       Call 0.Method_arg_38 ("'")
  loc_1750ACA:                     Else
  loc_1750AEC:                       If (var_2A8 = Ucase("Year8")) Then
  loc_1750B6A:                         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750B72:                         Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(7), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1750B7A:                         Call 0.Method_arg_38 ("'")
  loc_1750B9D:                       Else
  loc_1750BBF:                         If (var_2A8 = Ucase("Year9")) Then
  loc_1750C3D:                           Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750C45:                           Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(8), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1750C4D:                           Call 0.Method_arg_38 ("'")
  loc_1750C70:                         Else
  loc_1750C92:                           If (var_2A8 = Ucase("Year10")) Then
  loc_1750D10:                             Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750D18:                             Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(9), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1750D20:                             Call 0.Method_arg_38 ("'")
  loc_1750D43:                           Else
  loc_1750D65:                             If (var_2A8 = Ucase("Year11")) Then
  loc_1750DE3:                               Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750DEB:                               Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(&HA), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1750DF3:                               Call 0.Method_arg_38 ("'")
  loc_1750E16:                             Else
  loc_1750E38:                               If (var_2A8 = Ucase("Year12")) Then
  loc_1750EA2:                                 var_A4 = CStr(1 & Format(DateAdd("m", CDbl(&HB), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'")
  loc_1750EB6:                                 Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750EBE:                                 Call 0.Method_arg_20 (var_A4, 1)
  loc_1750EC6:                                 Call 0.Method_arg_38 ("'")
  loc_1750EE6:                               End If
  loc_1750EE6:                             End If
  loc_1750EE6:                           End If
  loc_1750EE6:                         End If
  loc_1750EE6:                       End If
  loc_1750EE6:                     End If
  loc_1750EE6:                   End If
  loc_1750EE6:                 End If
  loc_1750EE6:               End If
  loc_1750EE6:             End If
  loc_1750EE6:           End If
  loc_1750EE6:         End If
  loc_1750EE9:       Next var_296 'Integer
  loc_1750EEE:     End If
  loc_1750EEE:   End If
  loc_1750EEE: End If
  loc_1750EF3: Set var_90 = Nothing
  loc_1750EF6: Exit Sub
  loc_1750EF7: ' Referenced from: 174F204
  loc_1750EFD: Call 0.Method_arg_50 (var_A4)
  loc_1750F05: var_124 = "Formulas"
  loc_1750F12: Proc_183_57_104B0BC(var_A4)
  loc_1750F1E: Exit Sub
End Sub

Public Sub Proc_245_66_19E6FCC
  'Data Table: 58C0E4
  Dim var_A8 As String
  Dim var_AC As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Long
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_160 As String
  loc_19E3DC8: On Error Goto loc_19E6FA1
  loc_19E3DD9: var_A0 = " Where (ACGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ACGROUP.LOGSITE_CODE='HO')"
  loc_19E3DED: var_A4 = " And (ACGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ACGROUP.LOGSITE_CODE='HO')"
  loc_19E3E01: var_90 = " Where (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19E3E15: var_94 = " And (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19E3E29: var_98 = " Where (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19E3E3D: var_9C = " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19E3E4F: Me.TxtDetails.Visible = False
  loc_19E3E5D: var_B0 = GRepFormName
  loc_19E3E68: If Not (var_B0 = "Led") Then
  loc_19E3E73:   If Not (var_B0 = "LedInt") Then
  loc_19E3E7E:     If Not (var_B0 = "LedDeb") Then
  loc_19E3E89:       If Not (var_B0 = "LedCred") Then
  loc_19E3E94:         If (var_B0 = "AcCheckList") Then
  loc_19E3E97:         End If
  loc_19E3E97:       End If
  loc_19E3E97:     End If
  loc_19E3E97:   End If
  loc_19E3EA3:   Me.TxtDetails.Visible = True
  loc_19E3EAE:   var_88 = vbNullString
  loc_19E3EB7:   var_B4 = GRepFormName
  loc_19E3EC2:   If (var_B4 = "LedDeb") Then
  loc_19E3ECC:     var_88 = " WHERE SubGroup.Nature='Customer' AND A.Nature='Customer'" & var_94
  loc_19E3ED6:     var_8C = " WHERE ViewSubgroup.Nature='Customer' " & var_9C
  loc_19E3EDC:   Else
  loc_19E3EE4:     If (var_B4 = "LedCred") Then
  loc_19E3EEE:       var_88 = " WHERE SubGroup.Nature='Supplier' AND A.Nature='Supplier'" & var_94
  loc_19E3EF8:       var_8C = " WHERE ViewSubgroup.Nature='Supplier' " & var_9C
  loc_19E3EFE:     Else
  loc_19E3F01:       var_88 = var_90
  loc_19E3F07:       var_8C = var_98
  loc_19E3F0A:     End If
  loc_19E3F0A:   End If
  loc_19E3F0E:   Set var_B8 = ()
  loc_19E3F14:   var_C8 = CVar(CLng(0)) 'Long
  loc_19E3F19:   var_E8 = 0
  loc_19E3F22:   var_108 = "From Date           "
  loc_19E3F2B:   LateIdCallSt
  loc_19E3F36:   var_C8 = CVar(CLng(0)) 'Long
  loc_19E3F3B:   var_E8 = &H10E
  loc_19E3F47:   LateIdCallSt
  loc_19E3F52:   var_C8 = CVar(CLng(1)) 'Long
  loc_19E3F57:   var_E8 = 0
  loc_19E3F60:   var_108 = "To Date             "
  loc_19E3F69:   LateIdCallSt
  loc_19E3F74:   var_C8 = CVar(CLng(1)) 'Long
  loc_19E3F79:   var_E8 = &H10E
  loc_19E3F85:   LateIdCallSt
  loc_19E3F90:   var_C8 = CVar(CLng(2)) 'Long
  loc_19E3F95:   var_E8 = 0
  loc_19E3F9E:   var_108 = "Account Selection   "
  loc_19E3FA7:   LateIdCallSt
  loc_19E3FB2:   var_C8 = CVar(CLng(2)) 'Long
  loc_19E3FB7:   var_E8 = &H10E
  loc_19E3FC3:   LateIdCallSt
  loc_19E3FCE:   var_C8 = CVar(CLng(3)) 'Long
  loc_19E3FD3:   var_E8 = 0
  loc_19E3FDC:   var_108 = "Form Account        "
  loc_19E3FE5:   LateIdCallSt
  loc_19E3FF0:   var_C8 = CVar(CLng(3)) 'Long
  loc_19E3FF5:   var_E8 = 0
  loc_19E4001:   LateIdCallSt
  loc_19E400C:   var_C8 = CVar(CLng(4)) 'Long
  loc_19E4011:   var_E8 = 0
  loc_19E401A:   var_108 = "To Account          "
  loc_19E4023:   LateIdCallSt
  loc_19E402E:   var_C8 = CVar(CLng(4)) 'Long
  loc_19E4033:   var_E8 = 0
  loc_19E403F:   LateIdCallSt
  loc_19E404A:   var_C8 = CVar(CLng(5)) 'Long
  loc_19E404F:   var_E8 = 0
  loc_19E4058:   var_108 = "To Account          "
  loc_19E4061:   LateIdCallSt
  loc_19E406C:   var_C8 = CVar(CLng(5)) 'Long
  loc_19E4071:   var_E8 = 0
  loc_19E407D:   LateIdCallSt
  loc_19E4088:   var_C8 = CVar(CLng(0)) 'Long
  loc_19E408D:   var_E8 = 1
  loc_19E409B:   var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_19E40A2:   LateIdCallSt
  loc_19E40B0:   var_C8 = CVar(CLng(1)) 'Long
  loc_19E40B5:   var_E8 = 1
  loc_19E40C3:   var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E40CA:   LateIdCallSt
  loc_19E40D8:   var_C8 = CVar(CLng(2)) 'Long
  loc_19E40DD:   var_E8 = 1
  loc_19E40E6:   var_108 = "Selected"
  loc_19E40EF:   LateIdCallSt
  loc_19E40F9:   Set var_B8 = Nothing 
  loc_19E411E:   Me.ListView.Font.ColumnHeaders = 10
  loc_19E4134:   global_142 = CInt(0)
  loc_19E414D:   global_142(CVar(CLng(global_142))).MouseIcon = var_B8
  loc_19E4181:   Set var_AC = 0(&H7D0)
  loc_19E4187:   LateIdCallSt
  loc_19E41A8:   Set var_AC = 1(&H1388)
  loc_19E41AE:   LateIdCallSt
  loc_19E41B9:   var_C8 = 0
  loc_19E41D8:   var_E8 = 1
  loc_19E41E5:   Set var_12C = CLng(ListView.DispID_39)(var_E8)
  loc_19E41FF:   var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(ListView.DispID_39)) + &H64))) 'Single
  loc_19E420E:   1(var_108).Width = CInt(2)
  loc_19E422D:   var_128 = var_E8(var_108).Width
  loc_19E423C:   Call 0.Method_Me0 (var_144, var_128, var_C8, var_B8, var_128)
  loc_19E424E:   var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E425D:   var_E8(var_C8).Left = var_C8
  loc_19E4278:   Set var_AC = var_B8(CVar(CDbl(&H4B)))
  loc_19E427E:   var_AC.Top = var_128
  loc_19E42A2:   Me.var_AC.CursorLocation = 3
  loc_19E42C5:   var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_19E42D6:   Me.Open CVar(" And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & " order by SubGroup.Name"), CVar(MemVar_1F951E0), 0
  loc_19E42EA:   CVarUnk
  loc_19E42EF:   VerifyVarObj
  loc_19E42F5:   Set var_AC = 1(New)
  loc_19E42FB:   LateIdStAd
  loc_19E4312:   var_144 = Me.RecordCount
  loc_19E4320:   If (var_144 > 0) Then
  loc_19E4326:     var_D8 = CVar(CLng(3)) 'Long
  loc_19E436A:     Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E4370:     LateIdCallSt
  loc_19E438B:     var_D8 = CVar(CLng(3)) 'Long
  loc_19E43CF:     Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19E43D5:     LateIdCallSt
  loc_19E43F0:     var_D8 = CVar(CLng(4)) 'Long
  loc_19E4434:     Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E443A:     LateIdCallSt
  loc_19E4455:     var_D8 = CVar(CLng(4)) 'Long
  loc_19E4480:     var_12C = Me.Fields.Item("Code")
  loc_19E4499:     Set var_140 = 2(CVar(CStr(var_12C.Value)))
  loc_19E449F:     LateIdCallSt
  loc_19E44B7:   End If
  loc_19E44D3:   Me.CursorLocation = 3
  loc_19E44EA:   var_D8 = CVar(MemVar_1F951E0) 'Address
  loc_19E44FB:   Me.Open "Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' order by GroupName", var_D8, 0
  loc_19E4509:   CVarUnk
  loc_19E450E:   VerifyVarObj
  loc_19E4514:   Set var_AC = 1(New)
  loc_19E451A:   LateIdStAd
  loc_19E452F:   var_A8 = "SELECT '' as O,NAME as Account,SUBCODE as AccId,GNAME AS GroupName,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS Address From ViewSubgroup " & var_8C
  loc_19E453F:   Call Proc_245_63_11E9CD8(1, " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F95078 & " order by name")
  loc_19E4559:   Call Proc_245_63_11E9CD8(2, "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName")
  loc_19E4574:   var_AC(CVar(CDbl(1500))).Height = -1
  loc_19E458A:   Set var_AC = var_12C(2)
  loc_19E4590:   Call 0.Method_Proc_245_66_19E6FCC0 (False, var_140, var_D8, var_140, var_D8, var_140)
  loc_19E4598:   var_12C.Visible = var_D8
  loc_19E45AF:   Set var_AC = Me.Check1
  loc_19E45B5:   Call 0.Method_Proc_245_66_19E6FCC0 (2, var_12C, 0, var_140)
  loc_19E45BD:   var_12C.Visible = var_D8
  loc_19E45D4:   If (GRepFormName = "AcCheckList") Then
  loc_19E45E5:     Call Proc_245_63_11E9CD8(3, "SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description")
  loc_19E45ED:   End If
  loc_19E45F0: Else
  loc_19E45F8:   If (var_B0 = "MemLed") Then
  loc_19E4601:     Set var_AC = Me.TxtDetails
  loc_19E4607:     var_AC.Visible = True
  loc_19E4612:     var_88 = vbNullString
  loc_19E461B:     var_150 = GRepFormName
  loc_19E4626:     If (var_150 = "LedDeb") Then
  loc_19E4630:       var_88 = " WHERE SubGroup.Nature='Customer' AND A.Nature='Customer'" & var_94
  loc_19E463A:       var_8C = " WHERE ViewSubgroup.Nature='Customer' " & var_9C
  loc_19E4640:     Else
  loc_19E4648:       If (var_150 = "LedCred") Then
  loc_19E4652:         var_88 = " WHERE SubGroup.Nature='Supplier' AND A.Nature='Supplier'" & var_94
  loc_19E465C:         var_8C = " WHERE ViewSubgroup.Nature='Supplier' " & var_9C
  loc_19E4662:       Else
  loc_19E4665:         var_88 = var_90
  loc_19E466B:         var_8C = var_98
  loc_19E466E:       End If
  loc_19E466E:     End If
  loc_19E4672:     Set var_154 = -1(var_AC)
  loc_19E4678:     var_C8 = CVar(CLng(0)) 'Long
  loc_19E467D:     var_E8 = 0
  loc_19E4686:     var_108 = "From Date           "
  loc_19E468F:     LateIdCallSt
  loc_19E469A:     var_C8 = CVar(CLng(0)) 'Long
  loc_19E469F:     var_E8 = &H10E
  loc_19E46AB:     LateIdCallSt
  loc_19E46B6:     var_C8 = CVar(CLng(1)) 'Long
  loc_19E46BB:     var_E8 = 0
  loc_19E46C4:     var_108 = "To Date             "
  loc_19E46CD:     LateIdCallSt
  loc_19E46D8:     var_C8 = CVar(CLng(1)) 'Long
  loc_19E46DD:     var_E8 = &H10E
  loc_19E46E9:     LateIdCallSt
  loc_19E46F4:     var_C8 = CVar(CLng(2)) 'Long
  loc_19E46F9:     var_E8 = 0
  loc_19E4702:     var_108 = "Account Selection   "
  loc_19E470B:     LateIdCallSt
  loc_19E4716:     var_C8 = CVar(CLng(2)) 'Long
  loc_19E471B:     var_E8 = &H10E
  loc_19E4727:     LateIdCallSt
  loc_19E4732:     var_C8 = CVar(CLng(3)) 'Long
  loc_19E4737:     var_E8 = 0
  loc_19E4740:     var_108 = "Form Account        "
  loc_19E4749:     LateIdCallSt
  loc_19E4754:     var_C8 = CVar(CLng(3)) 'Long
  loc_19E4759:     var_E8 = 0
  loc_19E4765:     LateIdCallSt
  loc_19E4770:     var_C8 = CVar(CLng(4)) 'Long
  loc_19E4775:     var_E8 = 0
  loc_19E477E:     var_108 = "To Account          "
  loc_19E4787:     LateIdCallSt
  loc_19E4792:     var_C8 = CVar(CLng(4)) 'Long
  loc_19E4797:     var_E8 = 0
  loc_19E47A3:     LateIdCallSt
  loc_19E47AE:     var_C8 = CVar(CLng(5)) 'Long
  loc_19E47B3:     var_E8 = 0
  loc_19E47BC:     var_108 = "To Account          "
  loc_19E47C5:     LateIdCallSt
  loc_19E47D0:     var_C8 = CVar(CLng(5)) 'Long
  loc_19E47D5:     var_E8 = 0
  loc_19E47E1:     LateIdCallSt
  loc_19E47EC:     var_C8 = CVar(CLng(0)) 'Long
  loc_19E47F1:     var_E8 = 1
  loc_19E47FF:     var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_19E4806:     LateIdCallSt
  loc_19E4814:     var_C8 = CVar(CLng(1)) 'Long
  loc_19E4819:     var_E8 = 1
  loc_19E4827:     var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E482E:     LateIdCallSt
  loc_19E483C:     var_C8 = CVar(CLng(2)) 'Long
  loc_19E4841:     var_E8 = 1
  loc_19E484A:     var_108 = "Selected"
  loc_19E4853:     LateIdCallSt
  loc_19E485D:     Set var_154 = Nothing 
  loc_19E4882:     Me.ListView.Font.ColumnHeaders = 10
  loc_19E4898:     global_142 = CInt(0)
  loc_19E48B1:     global_142(CVar(CLng(global_142))).MouseIcon = var_154
  loc_19E48E5:     Set var_AC = 0(&H7D0)
  loc_19E48EB:     LateIdCallSt
  loc_19E490C:     Set var_AC = 1(&H1388)
  loc_19E4912:     LateIdCallSt
  loc_19E491D:     var_C8 = 0
  loc_19E493C:     var_E8 = 1
  loc_19E4949:     Set var_12C = CLng(ListView.DispID_39)(var_E8)
  loc_19E4963:     var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(ListView.DispID_39)) + &H64))) 'Single
  loc_19E4972:     1(var_108).Width = CInt(2)
  loc_19E4991:     var_128 = var_E8(var_108).Width
  loc_19E49A0:     Call 0.Method_Me0 (var_144, var_128, var_C8, var_154, var_128)
  loc_19E49B2:     var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E49C1:     var_E8(var_C8).Left = var_C8
  loc_19E49DC:     Set var_AC = var_154(CVar(CDbl(&H4B)))
  loc_19E49E2:     var_AC.Top = var_128
  loc_19E4A06:     Me.var_AC.CursorLocation = 3
  loc_19E4A29:     var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_19E4A30:     var_128 = CVar("SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description" & " order by SubGroup.Name") 'String
  loc_19E4A3A:     Me.Open var_128, CVar(MemVar_1F951E0), 0
  loc_19E4A4E:     CVarUnk
  loc_19E4A53:     VerifyVarObj
  loc_19E4A59:     Set var_AC = 1(New)
  loc_19E4A5F:     LateIdStAd
  loc_19E4A76:     var_144 = Me.RecordCount
  loc_19E4A84:     If (var_144 > 0) Then
  loc_19E4A8A:       var_D8 = CVar(CLng(3)) 'Long
  loc_19E4ACE:       Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E4AD4:       LateIdCallSt
  loc_19E4AEF:       var_D8 = CVar(CLng(3)) 'Long
  loc_19E4B33:       Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19E4B39:       LateIdCallSt
  loc_19E4B54:       var_D8 = CVar(CLng(4)) 'Long
  loc_19E4B98:       Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E4B9E:       LateIdCallSt
  loc_19E4BB9:       var_D8 = CVar(CLng(4)) 'Long
  loc_19E4BE4:       var_12C = Me.Fields.Item("Code")
  loc_19E4BFD:       Set var_140 = 2(CVar(CStr(var_12C.Value)))
  loc_19E4C03:       LateIdCallSt
  loc_19E4C1B:     End If
  loc_19E4C37:     Me.CursorLocation = 3
  loc_19E4C4E:     var_D8 = CVar(MemVar_1F951E0) 'Address
  loc_19E4C5F:     Me.Open "Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' order by GroupName", var_D8, 0
  loc_19E4C6D:     CVarUnk
  loc_19E4C72:     VerifyVarObj
  loc_19E4C78:     Set var_AC = 1(New)
  loc_19E4C7E:     LateIdStAd
  loc_19E4C93:     var_A8 = "SELECT '' as O,NAME as Account,SUBCODE as AccId,GNAME AS GroupName,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS Address From ViewSubgroup " & var_8C
  loc_19E4CA3:     Call Proc_245_63_11E9CD8(1, "SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description" & " order by name")
  loc_19E4CBD:     Call Proc_245_63_11E9CD8(2, "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName")
  loc_19E4CD8:     var_AC(CVar(CDbl(1500))).Height = -1
  loc_19E4CEE:     Set var_AC = var_12C(2)
  loc_19E4CF4:     Call 0.Method_Proc_245_66_19E6FCC0 (False, var_140, var_D8, var_140, var_D8, var_140)
  loc_19E4CFC:     var_12C.Visible = var_D8
  loc_19E4D13:     Set var_AC = Me.Check1
  loc_19E4D19:     Call 0.Method_Proc_245_66_19E6FCC0 (2, var_12C, 0, var_140)
  loc_19E4D21:     var_12C.Visible = var_D8
  loc_19E4D38:     If (GRepFormName = "AcCheckList") Then
  loc_19E4D49:       Call Proc_245_63_11E9CD8(3, "SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description")
  loc_19E4D51:     End If
  loc_19E4D54:   Else
  loc_19E4D5C:     If (var_B0 = "Annexure") Then
  loc_19E4D63:       Set var_158 = -1(var_AC)
  loc_19E4D69:       var_C8 = CVar(CLng(0)) 'Long
  loc_19E4D6E:       var_E8 = 0
  loc_19E4D77:       var_108 = "From Date        "
  loc_19E4D80:       LateIdCallSt
  loc_19E4D8B:       var_C8 = CVar(CLng(0)) 'Long
  loc_19E4D90:       var_E8 = &H10E
  loc_19E4D9C:       LateIdCallSt
  loc_19E4DA7:       var_C8 = CVar(CLng(1)) 'Long
  loc_19E4DAC:       var_E8 = 0
  loc_19E4DB5:       var_108 = "UpTo Date        "
  loc_19E4DBE:       LateIdCallSt
  loc_19E4DC9:       var_C8 = CVar(CLng(1)) 'Long
  loc_19E4DCE:       var_E8 = &H10E
  loc_19E4DDA:       LateIdCallSt
  loc_19E4DE5:       var_C8 = CVar(CLng(2)) 'Long
  loc_19E4DEA:       var_E8 = 0
  loc_19E4DF3:       var_108 = "For Account      "
  loc_19E4DFC:       LateIdCallSt
  loc_19E4E07:       var_C8 = CVar(CLng(2)) 'Long
  loc_19E4E0C:       var_E8 = &H10E
  loc_19E4E18:       LateIdCallSt
  loc_19E4E23:       var_C8 = CVar(CLng(3)) 'Long
  loc_19E4E28:       var_E8 = 0
  loc_19E4E31:       var_108 = "Amount Slab Wise "
  loc_19E4E3A:       LateIdCallSt
  loc_19E4E45:       var_C8 = CVar(CLng(3)) 'Long
  loc_19E4E4A:       var_E8 = &H10E
  loc_19E4E56:       LateIdCallSt
  loc_19E4E61:       var_C8 = CVar(CLng(0)) 'Long
  loc_19E4E66:       var_E8 = 1
  loc_19E4E74:       var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_19E4E7B:       LateIdCallSt
  loc_19E4E89:       var_C8 = CVar(CLng(1)) 'Long
  loc_19E4E8E:       var_E8 = 1
  loc_19E4E9C:       var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E4EA3:       LateIdCallSt
  loc_19E4EB1:       var_C8 = CVar(CLng(3)) 'Long
  loc_19E4EB6:       var_E8 = 1
  loc_19E4EBF:       var_108 = "No"
  loc_19E4EC8:       LateIdCallSt
  loc_19E4ED2:       Set var_158 = Nothing 
  loc_19E4EDD:       global_142 = CInt(0)
  loc_19E4EF0:       Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E4F2A:       Set var_AC = 0(&H7D0)
  loc_19E4F30:       LateIdCallSt
  loc_19E4F51:       Set var_AC = 1(&HDAC)
  loc_19E4F57:       LateIdCallSt
  loc_19E4F62:       var_C8 = 0
  loc_19E4F81:       var_E8 = 1
  loc_19E4F8E:       Set var_12C = CLng(Check1.DispID_39)(var_E8)
  loc_19E4FA8:       var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(Check1.DispID_39)) + &H64))) 'Single
  loc_19E4FB7:       1(var_108).Width = CInt(3)
  loc_19E4FD6:       var_128 = var_158(Check1.DispID_A).Width
  loc_19E4FE5:       Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E4FF7:       var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E5006:       var_158(var_C8).Left = var_128
  loc_19E5018:       var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E5021:       Set var_AC = var_E8(var_C8)
  loc_19E5027:       var_AC.Top = var_C8
  loc_19E504B:       Me.var_AC.CursorLocation = 3
  loc_19E5075:       var_128 = CVar("Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' " & var_A4 & " order by GroupName") 'String
  loc_19E507F:       Me.Open var_128, CVar(MemVar_1F951E0), 0
  loc_19E5093:       CVarUnk
  loc_19E5098:       VerifyVarObj
  loc_19E509E:       Set var_AC = 1(New)
  loc_19E50A4:       LateIdStAd
  loc_19E50BB:       var_144 = Me.RecordCount
  loc_19E50C9:       If (var_144 > 0) Then
  loc_19E50CF:         var_D8 = CVar(CLng(2)) 'Long
  loc_19E5113:         Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E5119:         LateIdCallSt
  loc_19E5134:         var_D8 = CVar(CLng(2)) 'Long
  loc_19E5178:         Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19E517E:         LateIdCallSt
  loc_19E51AE:         Set var_AC = CVar(CLng(2))(2)
  loc_19E51D1:         var_160 = "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where GROUPCODE='" & CStr(Check1.DispID_41) & "' " & var_94
  loc_19E51E1:         Call Proc_245_63_11E9CD8(1, var_160 & " Order by Name")
  loc_19E51F9:       End If
  loc_19E51FC:     Else
  loc_19E5204:       If (var_B0 = "DetailedTrial") Then
  loc_19E520B:         Set var_168 = var_D8(var_140)
  loc_19E5211:         var_C8 = CVar(CLng(0)) 'Long
  loc_19E5216:         var_E8 = 0
  loc_19E521F:         var_108 = "From Date      "
  loc_19E5228:         LateIdCallSt
  loc_19E5233:         var_C8 = CVar(CLng(0)) 'Long
  loc_19E5238:         var_E8 = &H10E
  loc_19E5244:         LateIdCallSt
  loc_19E524F:         var_C8 = CVar(CLng(1)) 'Long
  loc_19E5254:         var_E8 = 0
  loc_19E525D:         var_108 = "UpTo Date      "
  loc_19E5266:         LateIdCallSt
  loc_19E5271:         var_C8 = CVar(CLng(1)) 'Long
  loc_19E5276:         var_E8 = &H10E
  loc_19E5282:         LateIdCallSt
  loc_19E528D:         var_C8 = CVar(CLng(0)) 'Long
  loc_19E5292:         var_E8 = 1
  loc_19E52A0:         var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_19E52A7:         LateIdCallSt
  loc_19E52B5:         var_C8 = CVar(CLng(1)) 'Long
  loc_19E52BA:         var_E8 = 1
  loc_19E52C8:         var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E52CF:         LateIdCallSt
  loc_19E52DD:         var_C8 = CVar(CLng(2)) 'Long
  loc_19E52E2:         var_E8 = 0
  loc_19E52EB:         var_108 = "With Op.Bal.   "
  loc_19E52F4:         LateIdCallSt
  loc_19E52FF:         var_C8 = CVar(CLng(2)) 'Long
  loc_19E5304:         var_E8 = &H10E
  loc_19E5310:         LateIdCallSt
  loc_19E531B:         var_C8 = CVar(CLng(2)) 'Long
  loc_19E5320:         var_E8 = 1
  loc_19E5329:         var_108 = "Yes"
  loc_19E5332:         LateIdCallSt
  loc_19E533D:         var_C8 = CVar(CLng(3)) 'Long
  loc_19E5342:         var_E8 = 0
  loc_19E534B:         var_108 = "Datailed       "
  loc_19E5354:         LateIdCallSt
  loc_19E535F:         var_C8 = CVar(CLng(3)) 'Long
  loc_19E5364:         var_E8 = &H10E
  loc_19E5370:         LateIdCallSt
  loc_19E537B:         var_C8 = CVar(CLng(3)) 'Long
  loc_19E5380:         var_E8 = 1
  loc_19E5389:         var_108 = "Yes"
  loc_19E5392:         LateIdCallSt
  loc_19E539C:         Set var_168 = Nothing 
  loc_19E53A7:         global_142 = CInt(0)
  loc_19E53BA:         Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E53F4:         Set var_AC = 0(&H5DC)
  loc_19E53FA:         LateIdCallSt
  loc_19E541B:         Set var_AC = 1(&H5DC)
  loc_19E5421:         LateIdCallSt
  loc_19E542C:         var_C8 = 0
  loc_19E544B:         var_E8 = 1
  loc_19E5458:         Set var_12C = CLng(Check1.DispID_39)(var_E8)
  loc_19E5472:         var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(Check1.DispID_39)) + &H64))) 'Single
  loc_19E5481:         0(var_108).Width = CInt(3)
  loc_19E54A0:         var_128 = var_168(Check1.DispID_A).Width
  loc_19E54AF:         Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E54C1:         var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E54D0:         var_168(var_C8).Left = var_E8
  loc_19E54F1:         CVar(CDbl(&H4B))(CVar(CDbl(&H4B))).Top = var_168
  loc_19E54FC:       Else
  loc_19E5504:         If (var_B0 = "DayBook") Then
  loc_19E550B:           Set var_16C = ()
  loc_19E5511:           var_C8 = CVar(CLng(0)) 'Long
  loc_19E5516:           var_E8 = 0
  loc_19E551F:           var_108 = "From Date         "
  loc_19E5528:           LateIdCallSt
  loc_19E5533:           var_C8 = CVar(CLng(0)) 'Long
  loc_19E5538:           var_E8 = &H10E
  loc_19E5544:           LateIdCallSt
  loc_19E554F:           var_C8 = CVar(CLng(1)) 'Long
  loc_19E5554:           var_E8 = 0
  loc_19E555D:           var_108 = "UpTo Date         "
  loc_19E5566:           LateIdCallSt
  loc_19E5571:           var_C8 = CVar(CLng(1)) 'Long
  loc_19E5576:           var_E8 = &H10E
  loc_19E5582:           LateIdCallSt
  loc_19E558D:           var_C8 = CVar(CLng(2)) 'Long
  loc_19E5592:           var_E8 = 0
  loc_19E559B:           var_108 = "Voucher Wise Total"
  loc_19E55A4:           LateIdCallSt
  loc_19E55AF:           var_C8 = CVar(CLng(2)) 'Long
  loc_19E55B4:           var_E8 = &H10E
  loc_19E55C0:           LateIdCallSt
  loc_19E55CB:           var_C8 = CVar(CLng(0)) 'Long
  loc_19E55D0:           var_E8 = 1
  loc_19E55DE:           var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_19E55E5:           LateIdCallSt
  loc_19E55F3:           var_C8 = CVar(CLng(1)) 'Long
  loc_19E55F8:           var_E8 = 1
  loc_19E5606:           var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E560D:           LateIdCallSt
  loc_19E561B:           var_C8 = CVar(CLng(2)) 'Long
  loc_19E5620:           var_E8 = 1
  loc_19E5629:           var_108 = "No"
  loc_19E5632:           LateIdCallSt
  loc_19E563C:           Set var_16C = Nothing 
  loc_19E5656:           Set var_AC = 0(&H9C4)
  loc_19E565C:           LateIdCallSt
  loc_19E567D:           Set var_AC = 1(&H5DC)
  loc_19E5683:           LateIdCallSt
  loc_19E568E:           var_C8 = 0
  loc_19E56AD:           var_E8 = 1
  loc_19E56BA:           Set var_12C = CLng(Check1.DispID_39)(var_E8)
  loc_19E56D4:           var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(Check1.DispID_39)) + &H64))) 'Single
  loc_19E56E3:           var_16C(var_108).Width = var_108
  loc_19E5702:           var_128 = var_C8(var_E8).Width
  loc_19E5711:           Call 0.Method_Me0 (var_144, var_128, var_16C, var_128, var_E8)
  loc_19E5723:           var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E5732:           var_C8(var_C8).Left = var_16C
  loc_19E5753:           var_128(CVar(CDbl(&H4B))).Top = var_E8
  loc_19E575E:           var_C8 = CVar(CLng(3)) 'Long
  loc_19E5776:           Set var_AC = 0("For Site")
  loc_19E577C:           LateIdCallSt
  loc_19E579C:           Set var_AC = CVar(CLng(3))(&H10E)
  loc_19E57A2:           LateIdCallSt
  loc_19E57B0:           var_C8 = CVar(CLng(3)) 'Long
  loc_19E57C8:           Set var_AC = 1(vbNullString)
  loc_19E57CE:           LateIdCallSt
  loc_19E57E3:           Set global_80 = New 
  loc_19E57F5:           Me.Recordset15.CursorLocation = 3
  loc_19E581D:           Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F951E0), 0
  loc_19E582B:           CVarUnk
  loc_19E5830:           VerifyVarObj
  loc_19E5836:           Set var_AC = Me.DGSite
  loc_19E583C:           LateIdStAd
  loc_19E5851:           global_142 = CInt(0)
  loc_19E5864:           Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E5879:           global_140 = CInt(3)
  loc_19E5884:           global_144 = 0
  loc_19E588B:         Else
  loc_19E5893:           If Not (var_B0 = "CashBook") Then
  loc_19E589E:             If Not (var_B0 = "BankBook") Then
  loc_19E58A9:               If (var_B0 = "RozNamcha") Then
  loc_19E58AC:               End If
  loc_19E58AC:             End If
  loc_19E58AF:             var_88 = vbNullString
  loc_19E58B8:             var_170 = GRepFormName
  loc_19E58C3:             If Not (var_170 = "CashBook") Then
  loc_19E58CE:               If (var_170 = "RozNamcha") Then
  loc_19E58D1:               End If
  loc_19E58D8:               var_88 = " WHERE SubGroup.Nature='Cash' AND A.Nature='Cash'" & var_94
  loc_19E58DE:             Else
  loc_19E58E6:               If (var_170 = "BankBook") Then
  loc_19E58F0:                 var_88 = " WHERE SubGroup.Nature='Bank' AND A.Nature='Bank'" & var_94
  loc_19E58F3:               End If
  loc_19E58F3:             End If
  loc_19E58F7:             Set var_174 = global_140(global_144)
  loc_19E58FD:             var_C8 = CVar(CLng(0)) 'Long
  loc_19E5902:             var_E8 = 0
  loc_19E590B:             var_108 = "From Date        "
  loc_19E5914:             LateIdCallSt
  loc_19E591F:             var_C8 = CVar(CLng(0)) 'Long
  loc_19E5924:             var_E8 = &H10E
  loc_19E5930:             LateIdCallSt
  loc_19E593B:             var_C8 = CVar(CLng(1)) 'Long
  loc_19E5940:             var_E8 = 0
  loc_19E5949:             var_108 = "UpTo Date        "
  loc_19E5952:             LateIdCallSt
  loc_19E595D:             var_C8 = CVar(CLng(1)) 'Long
  loc_19E5962:             var_E8 = &H10E
  loc_19E596E:             LateIdCallSt
  loc_19E5979:             var_C8 = CVar(CLng(2)) 'Long
  loc_19E597E:             var_E8 = 0
  loc_19E5987:             var_108 = "As Per Detail    "
  loc_19E5990:             LateIdCallSt
  loc_19E599B:             var_C8 = CVar(CLng(2)) 'Long
  loc_19E59A0:             var_E8 = &H10E
  loc_19E59AC:             LateIdCallSt
  loc_19E59B7:             var_C8 = CVar(CLng(3)) 'Long
  loc_19E59BC:             var_E8 = 0
  loc_19E59C5:             var_108 = "Starting Page No."
  loc_19E59CE:             LateIdCallSt
  loc_19E59D9:             var_C8 = CVar(CLng(3)) 'Long
  loc_19E59DE:             var_E8 = &H10E
  loc_19E59EA:             LateIdCallSt
  loc_19E59F5:             var_C8 = CVar(CLng(4)) 'Long
  loc_19E59FA:             var_E8 = 0
  loc_19E5A03:             var_108 = "For Account      "
  loc_19E5A0C:             LateIdCallSt
  loc_19E5A17:             var_C8 = CVar(CLng(4)) 'Long
  loc_19E5A1C:             var_E8 = &H10E
  loc_19E5A28:             LateIdCallSt
  loc_19E5A33:             var_C8 = CVar(CLng(0)) 'Long
  loc_19E5A38:             var_E8 = 1
  loc_19E5A46:             var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_19E5A4D:             LateIdCallSt
  loc_19E5A5B:             var_C8 = CVar(CLng(1)) 'Long
  loc_19E5A60:             var_E8 = 1
  loc_19E5A6E:             var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E5A75:             LateIdCallSt
  loc_19E5A83:             var_C8 = CVar(CLng(2)) 'Long
  loc_19E5A88:             var_E8 = 1
  loc_19E5A91:             var_108 = "No"
  loc_19E5A9A:             LateIdCallSt
  loc_19E5AA5:             var_C8 = CVar(CLng(3)) 'Long
  loc_19E5AAA:             var_E8 = 1
  loc_19E5AB3:             var_108 = "1"
  loc_19E5ABC:             LateIdCallSt
  loc_19E5AC7:             var_C8 = CVar(CLng(4)) 'Long
  loc_19E5ACC:             var_E8 = 1
  loc_19E5AD5:             var_108 = vbNullString
  loc_19E5ADE:             LateIdCallSt
  loc_19E5AE8:             Set var_174 = Nothing 
  loc_19E5AF3:             global_142 = CInt(0)
  loc_19E5B06:             Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E5B40:             Set var_AC = 0(&H7D0)
  loc_19E5B46:             LateIdCallSt
  loc_19E5B67:             Set var_AC = 1(&HDAC)
  loc_19E5B6D:             LateIdCallSt
  loc_19E5B78:             var_C8 = 0
  loc_19E5B97:             var_E8 = 1
  loc_19E5BA4:             Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E5BBE:             var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E5BCD:             0(var_108).Width = CInt(4)
  loc_19E5BEC:             var_128 = var_174(DGSite.DispID_A).Width
  loc_19E5BFB:             Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E5C0D:             var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E5C1C:             var_174(var_C8).Left = var_108
  loc_19E5C2E:             var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E5C37:             Set var_AC = var_E8(var_C8)
  loc_19E5C3D:             var_AC.Top = var_C8
  loc_19E5C61:             Me.var_AC.CursorLocation = 3
  loc_19E5C84:             var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_19E5C95:             Me.Open CVar(CStr(Check1.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F951E0), 0
  loc_19E5CA9:             CVarUnk
  loc_19E5CAE:             VerifyVarObj
  loc_19E5CB4:             Set var_AC = 1(New)
  loc_19E5CBA:             LateIdStAd
  loc_19E5CCB:           Else
  loc_19E5CD3:             If Not (var_B0 = "JournalBook") Then
  loc_19E5CDE:               If Not (var_B0 = "DailySumm") Then
  loc_19E5CE9:                 If Not (var_B0 = "Clg") Then
  loc_19E5CF4:                   If (var_B0 = "ClgNot") Then
  loc_19E5CF7:                   End If
  loc_19E5CF7:                 End If
  loc_19E5CF7:               End If
  loc_19E5CFB:               Set var_178 = -1(var_AC)
  loc_19E5D01:               var_C8 = CVar(CLng(0)) 'Long
  loc_19E5D06:               var_E8 = 0
  loc_19E5D0F:               var_108 = "From Date   "
  loc_19E5D18:               LateIdCallSt
  loc_19E5D23:               var_C8 = CVar(CLng(0)) 'Long
  loc_19E5D28:               var_E8 = &H10E
  loc_19E5D34:               LateIdCallSt
  loc_19E5D3F:               var_C8 = CVar(CLng(1)) 'Long
  loc_19E5D44:               var_E8 = 0
  loc_19E5D4D:               var_108 = "UpTo Date   "
  loc_19E5D56:               LateIdCallSt
  loc_19E5D61:               var_C8 = CVar(CLng(1)) 'Long
  loc_19E5D66:               var_E8 = &H10E
  loc_19E5D72:               LateIdCallSt
  loc_19E5D7D:               var_C8 = CVar(CLng(0)) 'Long
  loc_19E5D82:               var_E8 = 1
  loc_19E5D90:               var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_19E5D97:               LateIdCallSt
  loc_19E5DA5:               var_C8 = CVar(CLng(1)) 'Long
  loc_19E5DAA:               var_E8 = 1
  loc_19E5DB8:               var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E5DBF:               LateIdCallSt
  loc_19E5DCD:               var_C8 = CVar(CLng(2)) 'Long
  loc_19E5DD2:               var_E8 = 1
  loc_19E5DDB:               var_108 = vbNullString
  loc_19E5DE4:               LateIdCallSt
  loc_19E5DEE:               Set var_178 = Nothing 
  loc_19E5DF9:               global_142 = CInt(0)
  loc_19E5E0C:               Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E5E46:               Set var_AC = 0(&H6A4)
  loc_19E5E4C:               LateIdCallSt
  loc_19E5E6D:               Set var_AC = 1(&H9C4)
  loc_19E5E73:               LateIdCallSt
  loc_19E5E7E:               var_C8 = 0
  loc_19E5E9D:               var_E8 = 1
  loc_19E5EAA:               Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E5EC4:               var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E5ED3:               0(var_108).Width = CInt(2)
  loc_19E5EF2:               var_128 = var_178(DGSite.DispID_A).Width
  loc_19E5F01:               Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E5F13:               var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E5F22:               var_178(var_C8).Left = var_128
  loc_19E5F34:               var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E5F3D:               Set var_AC = var_E8(var_C8)
  loc_19E5F43:               var_AC.Top = var_C8
  loc_19E5F51:               var_17C = GRepFormName
  loc_19E5F5C:               If (var_17C = "JournalBook") Then
  loc_19E5F7B:                 Me.var_AC.CursorLocation = 3
  loc_19E5F83:                 var_C8 = CVar(CLng(2)) 'Long
  loc_19E5F9B:                 Set var_AC = 0("Voucher Type")
  loc_19E5FA1:                 LateIdCallSt
  loc_19E5FC1:                 Set var_AC = CVar(CLng(2))(&H10E)
  loc_19E5FC7:                 LateIdCallSt
  loc_19E5FD5:                 var_C8 = CVar(CLng(3)) 'Long
  loc_19E5FED:                 Set var_AC = 0("Day Total")
  loc_19E5FF3:                 LateIdCallSt
  loc_19E6013:                 Set var_AC = CVar(CLng(3))(&H10E)
  loc_19E6019:                 LateIdCallSt
  loc_19E6027:                 var_C8 = CVar(CLng(3)) 'Long
  loc_19E603F:                 Set var_AC = 1("No")
  loc_19E6045:                 LateIdCallSt
  loc_19E6057:                 global_142 = CInt(0)
  loc_19E606A:                 Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E607F:                 global_140 = CInt(3)
  loc_19E608A:                 global_144 = 0
  loc_19E60A5:                 var_C8 = "Select DISTINCT V_TYPE AS Code,RTRIM(LTRIM(Description))+' Book' AS Name from Voucher_type WHERE Category='FA' AND V_TYPE<>'F_AO' order by RTRIM(LTRIM(Description))+' Book'"
  loc_19E60B1:                 Me.Open 0, CVar(MemVar_1F951E0), 0
  loc_19E60BF:                 CVarUnk
  loc_19E60C4:                 VerifyVarObj
  loc_19E60CA:                 Set var_AC = 1(New)
  loc_19E60D0:                 LateIdStAd
  loc_19E60E1:                 var_C8 = CVar(CLng(4)) 'Long
  loc_19E60F9:                 Set var_AC = 0("For Site")
  loc_19E60FF:                 LateIdCallSt
  loc_19E611F:                 Set var_AC = CVar(CLng(4))(&H10E)
  loc_19E6125:                 LateIdCallSt
  loc_19E6133:                 var_C8 = CVar(CLng(4)) 'Long
  loc_19E614B:                 Set var_AC = 1(vbNullString)
  loc_19E6151:                 LateIdCallSt
  loc_19E6166:                 Set global_80 = New 
  loc_19E6178:                 Me.Recordset15.CursorLocation = 3
  loc_19E61A0:                 Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F951E0), 0
  loc_19E61AE:                 CVarUnk
  loc_19E61B3:                 VerifyVarObj
  loc_19E61B9:                 Set var_AC = Me.DGSite
  loc_19E61BF:                 LateIdStAd
  loc_19E61D4:                 global_142 = CInt(0)
  loc_19E61E7:                 Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E61FC:                 global_140 = CInt(4)
  loc_19E6207:                 global_144 = 0
  loc_19E620E:               Else
  loc_19E6216:                 If (var_17C = "DailySumm") Then
  loc_19E6235:                   Me.Recordset15.CursorLocation = 3
  loc_19E623D:                   var_C8 = CVar(CLng(2)) 'Long
  loc_19E6255:                   Set var_AC = 0("For Account")
  loc_19E625B:                   LateIdCallSt
  loc_19E627B:                   Set var_AC = CVar(CLng(2))(&H10E)
  loc_19E6281:                   LateIdCallSt
  loc_19E62AA:                   var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_90
  loc_19E62BB:                   Me.Open CVar(CStr(Check1.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F951E0), 0
  loc_19E62CF:                   CVarUnk
  loc_19E62D4:                   VerifyVarObj
  loc_19E62DA:                   Set var_AC = 1(New)
  loc_19E62E0:                   LateIdStAd
  loc_19E62F1:                 Else
  loc_19E62F9:                   If Not (var_17C = "Clg") Then
  loc_19E6304:                     If (var_17C = "ClgNot") Then
  loc_19E6307:                     End If
  loc_19E6323:                     Me.CursorLocation = 3
  loc_19E632B:                     var_C8 = CVar(CLng(2)) 'Long
  loc_19E6343:                     Set var_AC = 0("For Account")
  loc_19E6349:                     LateIdCallSt
  loc_19E6369:                     Set var_AC = CVar(CLng(2))(&H10E)
  loc_19E636F:                     LateIdCallSt
  loc_19E6398:                     var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE Where SubGroup.nature='Bank' AND A.nature='Bank'  " & var_94
  loc_19E63A9:                     Me.Open CVar(CStr(Check1.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F951E0), 0
  loc_19E63BD:                     CVarUnk
  loc_19E63C2:                     VerifyVarObj
  loc_19E63C8:                     Set var_AC = 1(New)
  loc_19E63CE:                     LateIdStAd
  loc_19E63DC:                   End If
  loc_19E63DC:                 End If
  loc_19E63DC:               End If
  loc_19E63DF:             Else
  loc_19E63E7:               If (var_B0 = "BankReg") Then
  loc_19E63EE:                 Set var_180 = -1(var_AC)
  loc_19E63F4:                 var_C8 = CVar(CLng(0)) 'Long
  loc_19E63F9:                 var_E8 = 0
  loc_19E6402:                 var_108 = "From Date"
  loc_19E640B:                 LateIdCallSt
  loc_19E6416:                 var_C8 = CVar(CLng(0)) 'Long
  loc_19E641B:                 var_E8 = &H10E
  loc_19E6427:                 LateIdCallSt
  loc_19E6432:                 var_C8 = CVar(CLng(1)) 'Long
  loc_19E6437:                 var_E8 = 0
  loc_19E6440:                 var_108 = "To Date  "
  loc_19E6449:                 LateIdCallSt
  loc_19E6454:                 var_C8 = CVar(CLng(1)) 'Long
  loc_19E6459:                 var_E8 = &H10E
  loc_19E6465:                 LateIdCallSt
  loc_19E6470:                 var_C8 = CVar(CLng(2)) 'Long
  loc_19E6475:                 var_E8 = 0
  loc_19E647E:                 var_108 = "For Dr/Cr"
  loc_19E6487:                 LateIdCallSt
  loc_19E6492:                 var_C8 = CVar(CLng(2)) 'Long
  loc_19E6497:                 var_E8 = &H10E
  loc_19E64A3:                 LateIdCallSt
  loc_19E64AE:                 var_C8 = CVar(CLng(0)) 'Long
  loc_19E64B3:                 var_E8 = 1
  loc_19E64C1:                 var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_19E64C8:                 LateIdCallSt
  loc_19E64D6:                 var_C8 = CVar(CLng(1)) 'Long
  loc_19E64DB:                 var_E8 = 1
  loc_19E64E9:                 var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E64F0:                 LateIdCallSt
  loc_19E64FE:                 var_C8 = CVar(CLng(2)) 'Long
  loc_19E6503:                 var_E8 = 1
  loc_19E650C:                 var_108 = "All"
  loc_19E6515:                 LateIdCallSt
  loc_19E651F:                 Set var_180 = Nothing 
  loc_19E652A:                 global_142 = CInt(0)
  loc_19E653D:                 Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E6577:                 Set var_AC = 0(&H4B0)
  loc_19E657D:                 LateIdCallSt
  loc_19E659E:                 Set var_AC = 1(&H5DC)
  loc_19E65A4:                 LateIdCallSt
  loc_19E65AF:                 var_C8 = 0
  loc_19E65CE:                 var_E8 = 1
  loc_19E65DB:                 Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E65F5:                 var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E6604:                 1(var_108).Width = CInt(2)
  loc_19E6623:                 var_128 = var_180(DGSite.DispID_A).Width
  loc_19E6632:                 Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E6644:                 var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E6653:                 var_180(var_C8).Left = var_128
  loc_19E6665:                 var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E6674:                 var_E8(var_C8).Top = var_C8
  loc_19E6693:                 Call Proc_245_63_11E9CD8(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where nature='Bank' " & var_94 & " order by name ")
  loc_19E66A2:               Else
  loc_19E66AA:                 If Not (var_B0 = "NonTrans") Then
  loc_19E66B5:                   If (var_B0 = "CONTROLLED") Then
  loc_19E66B8:                   End If
  loc_19E66BC:                   Set var_184 = ()
  loc_19E66C2:                   var_C8 = CVar(CLng(0)) 'Long
  loc_19E66C7:                   var_E8 = 0
  loc_19E66D0:                   var_108 = "From Date"
  loc_19E66D9:                   LateIdCallSt
  loc_19E66E4:                   var_C8 = CVar(CLng(0)) 'Long
  loc_19E66E9:                   var_E8 = &H10E
  loc_19E66F5:                   LateIdCallSt
  loc_19E6700:                   var_C8 = CVar(CLng(1)) 'Long
  loc_19E6705:                   var_E8 = 0
  loc_19E670E:                   var_108 = "To Date  "
  loc_19E6717:                   LateIdCallSt
  loc_19E6722:                   var_C8 = CVar(CLng(1)) 'Long
  loc_19E6727:                   var_E8 = &H10E
  loc_19E6733:                   LateIdCallSt
  loc_19E673E:                   var_C8 = CVar(CLng(0)) 'Long
  loc_19E6743:                   var_E8 = 1
  loc_19E6751:                   var_128 = CVar(CStr(MemVar_1F950F4)) 'String
  loc_19E6758:                   LateIdCallSt
  loc_19E6766:                   var_C8 = CVar(CLng(1)) 'Long
  loc_19E676B:                   var_E8 = 1
  loc_19E6779:                   var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E6780:                   LateIdCallSt
  loc_19E678D:                   Set var_184 = Nothing 
  loc_19E6798:                   global_142 = CInt(0)
  loc_19E67AB:                   Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E67E5:                   Set var_AC = 0(&H4B0)
  loc_19E67EB:                   LateIdCallSt
  loc_19E680C:                   Set var_AC = 1(&H5DC)
  loc_19E6812:                   LateIdCallSt
  loc_19E681D:                   var_C8 = 0
  loc_19E683C:                   var_E8 = 1
  loc_19E6849:                   Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E6863:                   var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E6872:                   1(var_108).Width = CInt(1)
  loc_19E6891:                   var_128 = var_184(DGSite.DispID_A).Width
  loc_19E68A0:                   Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_19E68B2:                   var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E68C1:                   var_184(var_C8).Left = var_128
  loc_19E68D3:                   var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E68E2:                   var_E8(var_C8).Top = var_C8
  loc_19E68F1:                   var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup WHERE AliasYN<> 'Y' AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_19E6901:                   Call Proc_245_63_11E9CD8(1, var_A8 & "' OR LOGSITE_CODE='HO') order by GroupName")
  loc_19E6910:                 Else
  loc_19E6918:                   If (var_B0 = "RefReport") Then
  loc_19E691F:                     Set var_188 = ()
  loc_19E6925:                     var_C8 = CVar(CLng(3)) 'Long
  loc_19E692A:                     var_E8 = 0
  loc_19E6933:                     var_108 = "Pending Only"
  loc_19E693C:                     LateIdCallSt
  loc_19E6947:                     var_C8 = CVar(CLng(3)) 'Long
  loc_19E694C:                     var_E8 = &H10E
  loc_19E6958:                     LateIdCallSt
  loc_19E6963:                     var_C8 = CVar(CLng(3)) 'Long
  loc_19E6968:                     var_E8 = 1
  loc_19E6971:                     var_108 = "Yes"
  loc_19E697A:                     LateIdCallSt
  loc_19E6984:                     Set var_188 = Nothing 
  loc_19E698F:                     global_142 = CInt(3)
  loc_19E69A2:                     Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E69B7:                     global_140 = CInt(3)
  loc_19E69C2:                     global_144 = 1
  loc_19E69DD:                     Call Proc_245_63_11E9CD8(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP  " & var_90 & " Order by Name")
  loc_19E69EC:                   Else
  loc_19E69F4:                     If Not (var_B0 = "AgingDr") Then
  loc_19E69FF:                       If Not (var_B0 = "AgingCr") Then
  loc_19E6A0A:                         If Not (var_B0 = "AgingRepDr") Then
  loc_19E6A15:                           If (var_B0 = "AgingRepCr") Then
  loc_19E6A18:                           End If
  loc_19E6A18:                         End If
  loc_19E6A18:                       End If
  loc_19E6A1C:                       Set var_18C = global_140(global_144)
  loc_19E6A22:                       var_C8 = CVar(CLng(0)) 'Long
  loc_19E6A27:                       var_E8 = 0
  loc_19E6A30:                       var_108 = "UpTo Date"
  loc_19E6A39:                       LateIdCallSt
  loc_19E6A44:                       var_C8 = CVar(CLng(0)) 'Long
  loc_19E6A49:                       var_E8 = &H10E
  loc_19E6A55:                       LateIdCallSt
  loc_19E6A60:                       var_C8 = CVar(CLng(0)) 'Long
  loc_19E6A65:                       var_E8 = 1
  loc_19E6A73:                       var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E6A7A:                       LateIdCallSt
  loc_19E6A87:                       Set var_18C = Nothing 
  loc_19E6A92:                       global_142 = CInt(0)
  loc_19E6AA5:                       Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E6ADF:                       Set var_AC = 0(&H4B0)
  loc_19E6AE5:                       LateIdCallSt
  loc_19E6B06:                       Set var_AC = 1(&H5DC)
  loc_19E6B0C:                       LateIdCallSt
  loc_19E6B17:                       var_C8 = 0
  loc_19E6B36:                       var_E8 = 1
  loc_19E6B43:                       Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E6B5D:                       var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E6B6C:                       1(var_108).Width = CInt(0)
  loc_19E6B8B:                       var_128 = var_18C(DGSite.DispID_A).Width
  loc_19E6B9A:                       Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_19E6BAC:                       var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E6BB5:                       Set var_12C = var_18C(var_C8)
  loc_19E6BBB:                       var_12C.Left = var_E8
  loc_19E6BDC:                       CVar(CDbl(&H4B))(CVar(CDbl(&H4B))).Top = var_18C
  loc_19E6BFB:                       If ((GRepFormName = "AgingDr") Or (GRepFormName = "AgingRepDr")) Then
  loc_19E6C05:                         var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' AND Nature='Customer' " & var_A4
  loc_19E6C15:                         Call Proc_245_63_11E9CD8(1, var_A8 & " order by GroupName")
  loc_19E6C24:                       Else
  loc_19E6C3B:                         If ((GRepFormName = "AgingCr") Or (GRepFormName = "AgingRepCr")) Then
  loc_19E6C45:                           var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' AND  Nature='Supplier' " & var_A4
  loc_19E6C55:                           Call Proc_245_63_11E9CD8(1, var_A8 & " order by GroupName")
  loc_19E6C64:                         Else
  loc_19E6C7B:                           Call Proc_245_63_11E9CD8(1, "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4 & " Order By GroupName")
  loc_19E6C87:                         End If
  loc_19E6C87:                       End If
  loc_19E6C8A:                     Else
  loc_19E6C92:                       If (var_B0 = "DUELIST") Then
  loc_19E6C99:                         Set var_190 = ()
  loc_19E6C9F:                         var_C8 = CVar(CLng(0)) 'Long
  loc_19E6CA4:                         var_E8 = 0
  loc_19E6CAD:                         var_108 = "UpTo Date"
  loc_19E6CB6:                         LateIdCallSt
  loc_19E6CC1:                         var_C8 = CVar(CLng(0)) 'Long
  loc_19E6CC6:                         var_E8 = &H10E
  loc_19E6CD2:                         LateIdCallSt
  loc_19E6CDD:                         var_C8 = CVar(CLng(0)) 'Long
  loc_19E6CE2:                         var_E8 = 1
  loc_19E6CF0:                         var_128 = CVar(CStr(MemVar_1F950EC)) 'String
  loc_19E6CF7:                         LateIdCallSt
  loc_19E6D05:                         var_C8 = CVar(CLng(2)) 'Long
  loc_19E6D0A:                         var_E8 = 0
  loc_19E6D13:                         var_108 = "All/Pending"
  loc_19E6D1C:                         LateIdCallSt
  loc_19E6D27:                         var_C8 = CVar(CLng(2)) 'Long
  loc_19E6D2C:                         var_E8 = &H10E
  loc_19E6D38:                         LateIdCallSt
  loc_19E6D43:                         var_C8 = CVar(CLng(2)) 'Long
  loc_19E6D48:                         var_E8 = 1
  loc_19E6D51:                         var_108 = "Pending"
  loc_19E6D5A:                         LateIdCallSt
  loc_19E6D65:                         var_C8 = CVar(CLng(3)) 'Long
  loc_19E6D6A:                         var_E8 = 0
  loc_19E6D73:                         var_108 = "More Than Days"
  loc_19E6D7C:                         LateIdCallSt
  loc_19E6D87:                         var_C8 = CVar(CLng(3)) 'Long
  loc_19E6D8C:                         var_E8 = &H10E
  loc_19E6D98:                         LateIdCallSt
  loc_19E6DA3:                         var_C8 = CVar(CLng(3)) 'Long
  loc_19E6DA8:                         var_E8 = 1
  loc_19E6DB1:                         var_108 = "0"
  loc_19E6DBA:                         LateIdCallSt
  loc_19E6DC4:                         Set var_190 = Nothing 
  loc_19E6DCF:                         global_142 = CInt(0)
  loc_19E6DE2:                         Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E6DF7:                         global_140 = CInt(2)
  loc_19E6E17:                         var_A8 = "Select '' as O,SubGroup.Name as PartyName,SubGroup.Subcode as Code,RTrim(IsNull(Add1,''))+','+RTrim(IsNull(Add2,''))+','+RTrim(IsNull(CityName,'')) AS NameWithADDR From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where SubGroup.Nature='Customer' " & var_94
  loc_19E6E27:                         Call Proc_245_63_11E9CD8(1, "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4 & " Order by SubGroup.Name")
  loc_19E6E4E:                         Set var_AC = var_12C(1)
  loc_19E6E54:                         Call 0.Method_Proc_245_66_19E6FCC0 (0, 3, CInt(3), 1, CInt(3), DGSite.DispID_A)
  loc_19E6E5C:                         LateIdCallSt
  loc_19E6E6E:                       Else
  loc_19E6E76:                         If Not (var_B0 = "BudgetVariance") Then
  loc_19E6E81:                           If (var_B0 = "Budget") Then
  loc_19E6E84:                           End If
  loc_19E6E88:                           Set var_194 = var_190(var_12C)
  loc_19E6E8E:                           var_C8 = CVar(CLng(0)) 'Long
  loc_19E6E93:                           var_E8 = 0
  loc_19E6E9C:                           var_108 = "Budget Period"
  loc_19E6EA5:                           LateIdCallSt
  loc_19E6EB0:                           var_C8 = CVar(CLng(0)) 'Long
  loc_19E6EB5:                           var_E8 = &H10E
  loc_19E6EC1:                           LateIdCallSt
  loc_19E6ECC:                           var_C8 = CVar(CLng(0)) 'Long
  loc_19E6ED1:                           var_E8 = 1
  loc_19E6EDA:                           var_108 = vbNullString
  loc_19E6EE3:                           LateIdCallSt
  loc_19E6EED:                           Set var_194 = Nothing 
  loc_19E6EF8:                           global_142 = CInt(0)
  loc_19E6F0B:                           Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E6F20:                           global_140 = CInt(0)
  loc_19E6F2B:                           global_144 = 1
  loc_19E6F4B:                           Me.Recordset15.CursorLocation = 3
  loc_19E6F67:                           var_C8 = "Select Distinct CStr(FromDate) + '-' + CStr(ToDate) As Code,CStr(FromDate) + '-' + CStr(ToDate) as NAME From Budget ORDER BY CStr(FromDate) + '-' + CStr(ToDate)"
  loc_19E6F73:                           Me.Open 1, CVar(MemVar_1F951E0), 0
  loc_19E6F81:                           CVarUnk
  loc_19E6F86:                           VerifyVarObj
  loc_19E6F8C:                           Set var_AC = 1(New)
  loc_19E6F92:                           LateIdStAd
  loc_19E6FA0:                         End If
  loc_19E6FA0:                       End If
  loc_19E6FA0:                     End If
  loc_19E6FA0:                   End If
  loc_19E6FA0:                 End If
  loc_19E6FA0:               End If
  loc_19E6FA0:             End If
  loc_19E6FA0:           End If
  loc_19E6FA0:         End If
  loc_19E6FA0:       End If
  loc_19E6FA0:     End If
  loc_19E6FA0:   End If
  loc_19E6FA0: End If
  loc_19E6FA0: Exit Sub
  loc_19E6FA1: ' Referenced from: 19E3DC8
  loc_19E6FA7: Call 0.Method_arg_50 ("SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4, var_AC, -1, global_144, global_140, DGSite.DispID_A, var_194)
  loc_19E6FBC: Proc_183_57_104B0BC("SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4, "Ini_Grid", var_108, var_E8)
  loc_19E6FC8: Exit Sub
End Sub

Public Sub Proc_245_67_153D050
  'Data Table: 58C0E4
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_DC As String
  Dim var_EC As Variant
  Dim unk_58C129 As Connection15
  Dim var_90 As Recordset15
  Dim var_FC As Variant
  Dim var_94 As Recordset15
  Dim var_98 As Recordset15
  Dim var_12C As Variant
  Dim var_BC As Fields15
  Dim var_13C As Variant
  Dim var_10C As Variant
  Dim var_16C As String
  Dim var_170 As Variant
  Dim var_14C As Variant
  Dim var_1B0 As Variant
  Dim var_9C As Recordset15
  Dim var_88 As Recordset15
  Dim var_C2 As Integer
  loc_153C0A4: On Error Goto loc_153D01E
  loc_153C0AD: global_84 = vbNullString
  loc_153C0B4: var_8C = vbNullString
  loc_153C0C3: Set var_BC = Me.Check1
  loc_153C0C9: Call 0.Method_Proc_245_67_153D0500 (1, var_C0)
  loc_153C0E7: If (CLng(var_C0.Value) = 0) Then
  loc_153C105:   Call Proc_245_61_127C7BC(global_96, 1, CByte(1))
  loc_153C110:   global_84 = var_DC
  loc_153C120:   If (global_130 = 0) Then
  loc_153C123:     Exit Sub
  loc_153C124:   End If
  loc_153C124: End If
  loc_153C12F: If (global_84 <> vbNullString) Then
  loc_153C143:   var_8C = " Where SUBCODE IN (" & global_84 & ")"
  loc_153C149: End If
  loc_153C154: If (global_84 <> vbNullString) Then
  loc_153C161:   var_DC = " Where Ledger.SUBCODE IN (" & global_84
  loc_153C168:   var_A0 = var_DC & ")"
  loc_153C16E: End If
  loc_153C179: Set var_BC = Me.TEXT
  loc_153C17F: Call 0.Method_Proc_245_67_153D0500 (CInt(&HC), var_C0)
  loc_153C187: var_EC = CVar(var_C0) 'Address
  loc_153C1A8: If CBool(Trim(var_EC) <> vbNullString) Then
  loc_153C1BC:   Set var_BC = Me.TEXT
  loc_153C1C2:   Call 0.Method_Proc_245_67_153D0500 (CInt(&HC), var_C0, var_DC)
  loc_153C1CA:   " And LEDGER.Site_Code='" = var_C0.Tag
  loc_153C1DA:   var_B8 = var_DC & var_DC & "'"
  loc_153C1EE: Else
  loc_153C1FC:   var_B8 = " And LEDGER.Site_Code='" & MemVar_1F95078 & "'"
  loc_153C202: End If
  loc_153C212: Set var_BC = New
  loc_153C221: Call 0.Method_arg_1A0 (var_BC)
  loc_153C22C: Set var_88 = var_BC
  loc_153C235: Set var_88 = var_C0
  loc_153C263: Me.Connection15.Execute "SELECT SUBCODE,NAME FROM SUBGROUP  " & var_8C & " ORDER BY SUBCODE", var_EC, -1
  loc_153C26E: Set var_90 = var_BC
  loc_153C292: var_DC = "SELECT Ledger.*,LEDGERREF.AGREFTYPE FROM Ledger LEFT JOIN ledgerRef ON (Ledger.V_SNo=ledgerRef.V_SNo) AND (Ledger.DocId = ledgerRef.DocId) " & var_A0
  loc_153C2B0: unk_58C129.Execute var_DC & " " & var_B8 & " ORDER BY Ledger.SUBCODE,Ledger.V_DATE,Ledger.DOCId,Ledger.V_SNO", var_EC, -1
  loc_153C2BB: Set var_94 = var_BC
  loc_153C2E3: var_DC = "SELECT LedgerRef.*  FROM LedgerRef " & var_8C
  loc_153C2F3: unk_58C129.Execute var_DC & " ORDER BY SUBCode,V_DATE,DocId,V_SNO", var_EC, -1
  loc_153C2FE: Set var_98 = var_BC
  loc_153C322: If (var_90.RecordCount <= 0) Then
  loc_153C32B:   Call 0.Method_arg_50 (var_DC, var_BC, var_BC)
  loc_153C34C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_10C, var_14C)
  loc_153C361:   global_130 = 0
  loc_153C364:   Exit Sub
  loc_153C365: End If
  loc_153C379: If (var_94.RecordCount <= 0) Then
  loc_153C382:   Call 0.Method_arg_50 (var_DC, global_130)
  loc_153C3A3:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_10C, var_14C)
  loc_153C3B8:   global_130 = 0
  loc_153C3BB:   Exit Sub
  loc_153C3BC:   ' Referenced from: 153CF03
  loc_153C3BC: End If
  loc_153C3CB: If Not(var_90.EOF) Then
  loc_153C3E2:   If (var_98.RecordCount > 0) Then
  loc_153C3E8:     var_98.MoveFirst
  loc_153C43E:     var_98.Find CStr("SubCode='" & var_90.Fields.Item("subcode").Value & "'"), 0, 1
  loc_153C467:     If (var_98.EOF = 0) Then
  loc_153C46A:       ' Referenced from: 153CAFB
  loc_153C46C:       If &HFF Then
  loc_153C484:         Set var_BC = CVar(CLng(3))(1)
  loc_153C4BB:         var_170 = var_98.Fields.Item("AgRefType")
  loc_153C4F0:         If CBool((CStr(TEXT.DispID_41) = "Yes") And (var_170.Value <> "On Account")) Then
  loc_153C551:           var_16C = "SELECT AgRefNo,SUM(Cr)-SUM(Dr) AS BalanceAmt From ledgerRef "
  loc_153C55F:           var_14C = (CVar(var_8C) + IIf((var_8C = vbNullString), " Where ", " AND "))
  loc_153C56C:           var_1B0 = "AgRefType" & (CStr(TEXT.DispID_41) = "Yes") And (var_170.Value <> "On Account") & " AGREFTYPE IN ('Advance','New Ref','Ag.Ref.') AND AGREFNO='" 
  loc_153C58A:           unk_58C129.Execute CStr(var_1B0 & var_98.Fields.Item("AgRefNo").Value & "' GROUP BY SubCode,AgRefNo"), var_210, -1
  loc_153C595:           Set var_9C = var_170
  loc_153C5D1:           If (var_9C.RecordCount > 0) Then
  loc_153C5DA:             var_D4 = "BalanceAmt"
  loc_153C5FE:             var_12C = 0
  loc_153C610:             If (var_9C.Fields.Item(var_D4).Value = var_12C) Then
  loc_153C613:               GoTo loc_153CA6E
  loc_153C616:             End If
  loc_153C616:           End If
  loc_153C616:         End If
  loc_153C621:         var_88.AddNew var_D4, var_12C
  loc_153C645:         var_EC = CVar(var_98.Fields.Item("DocID")) 'Address
  loc_153C653:         var_88.Collect = "DocID"
  loc_153C67D:         var_EC = CVar(var_98.Fields.Item("V_SNo")) 'Address
  loc_153C68B:         var_88.Collect = "V_SNo"
  loc_153C6C6:         var_10C = Mid(CVar(var_98.Fields.Item("DocID")), 4, 5)
  loc_153C6D8:         var_88.Collect = "V_Type"
  loc_153C714:         var_FC = Right(CVar(var_98.Fields.Item("DocID")), 8)
  loc_153C726:         var_88.Collect = "V_NO"
  loc_153C754:         var_EC = CVar(var_98.Fields.Item("V_DATE")) 'Address
  loc_153C762:         var_88.Collect = "V_DATE"
  loc_153C78C:         var_EC = CVar(var_98.Fields.Item("subcode")) 'Address
  loc_153C79A:         var_88.Collect = "subcode"
  loc_153C7C4:         var_EC = CVar(var_90.Fields.Item("Name")) 'Address
  loc_153C7D2:         var_88.Collect = "Name"
  loc_153C7FC:         var_EC = CVar(var_98.Fields.Item("cr")) 'Address
  loc_153C80A:         var_88.Collect = "cr"
  loc_153C834:         var_EC = CVar(var_98.Fields.Item("dr")) 'Address
  loc_153C842:         var_88.Collect = "dr"
  loc_153C877:         var_220 = var_98.Fields.Item("AgRefType").Value 'Variant
  loc_153C88D:         If Not (var_220 = "Advance") Then
  loc_153C89B:           If (var_220 = "New Ref") Then
  loc_153C89E:           End If
  loc_153C8BD:           var_EC = CVar(var_98.Fields.Item("AgRefType")) 'Address
  loc_153C8CB:           var_88.Collect = "AgRefType"
  loc_153C8FC:           var_FC = Trim(CVar(var_98.Fields.Item("AgRefNo")))
  loc_153C90E:           var_88.Collect = "AgRefNo"
  loc_153C91D:           var_12C = "1"
  loc_153C92C:           var_88.Collect = "RefSort"
  loc_153C931:           var_12C = "1"
  loc_153C940:           var_88.Collect = "GRPSort"
  loc_153C948:         Else
  loc_153C953:           If (var_220 = "Ag.Ref.") Then
  loc_153C975:             var_EC = CVar(var_98.Fields.Item("AgRefType")) 'Address
  loc_153C983:             var_88.Collect = "AgRefType"
  loc_153C9B4:             var_FC = Trim(CVar(var_98.Fields.Item("AgRefNo")))
  loc_153C9C6:             var_88.Collect = "AgRefNo"
  loc_153C9D5:             var_12C = "1"
  loc_153C9E4:             var_88.Collect = "GRPSort"
  loc_153C9E9:             var_12C = "2"
  loc_153C9F8:             var_88.Collect = "RefSort"
  loc_153CA00:           Else
  loc_153CA0B:             If (var_220 = "On Account") Then
  loc_153CA0E:               var_12C = "On Account"
  loc_153CA1D:               var_88.Collect = "AgRefNo"
  loc_153CA22:               var_12C = vbNullString
  loc_153CA31:               var_88.Collect = "AgRefType"
  loc_153CA36:               var_12C = "5"
  loc_153CA45:               var_88.Collect = "GRPSort"
  loc_153CA4A:               var_12C = "1"
  loc_153CA50:               var_D4 = "RefSort"
  loc_153CA59:               var_88.Collect = var_D4
  loc_153CA5E:             End If
  loc_153CA5E:           End If
  loc_153CA5E:         End If
  loc_153CA69:         var_88.Update var_D4, var_12C
  loc_153CA6E:         ' Referenced from: 153C613
  loc_153CA71:         var_98.MoveNext
  loc_153CA87:         If (var_98.EOF = &HFF) Then
  loc_153CA8A:           GoTo loc_153CAFE
  loc_153CA8D:         End If
  loc_153CAF5:         If CBool(var_90.Fields.Item("subcode").Value <> var_98.Fields.Item("subcode").Value) Then
  loc_153CAF8:           GoTo loc_153CAFE
  loc_153CAFB:         End If
  loc_153CAFB:         GoTo loc_153C46A
  loc_153CAFE:         ' Referenced from: 153CAF8
  loc_153CAFE:         ' Referenced from: 153CA8A
  loc_153CAFE:       End If
  loc_153CAFE:     End If
  loc_153CAFE:   End If
  loc_153CB01:   var_94.MoveFirst
  loc_153CB4C:   var_10C = "SubCode='" & var_90.Fields.Item("subcode").Value & "'" 
  loc_153CB50:   var_DC = CStr(var_10C)
  loc_153CB57:   var_94.Find var_DC, 0, 1
  loc_153CB80:   If (var_94.EOF = 0) Then
  loc_153CB83:     ' Referenced from: 153CEF8
  loc_153CB85:     If &HFF Then
  loc_153CB8B:       var_D4 = "AgRefType"
  loc_153CBBA:       var_12C = "AgRefType"
  loc_153CBDE:       var_13C = vbNullString
  loc_153CBE8:       var_14C = IsNull(CVar(var_94.Fields.Item(var_D4))) Or (var_94.Fields.Item(var_12C).Value = var_13C)
  loc_153CC00:       If CBool(var_14C) Then
  loc_153CC0E:         var_88.AddNew var_D4, var_12C
  loc_153CC32:         var_EC = CVar(var_94.Fields.Item("DocID")) 'Address
  loc_153CC40:         var_88.Collect = "DocID"
  loc_153CC6A:         var_EC = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_153CC78:         var_88.Collect = "V_SNo"
  loc_153CCA2:         var_EC = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_153CCB0:         var_88.Collect = "V_Type"
  loc_153CCDA:         var_EC = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_153CCE8:         var_88.Collect = "V_NO"
  loc_153CD12:         var_EC = CVar(var_94.Fields.Item("V_DATE")) 'Address
  loc_153CD20:         var_88.Collect = "V_DATE"
  loc_153CD4A:         var_EC = CVar(var_94.Fields.Item("subcode")) 'Address
  loc_153CD58:         var_88.Collect = "subcode"
  loc_153CD82:         var_EC = CVar(var_90.Fields.Item("Name")) 'Address
  loc_153CD90:         var_88.Collect = "Name"
  loc_153CDBA:         var_EC = CVar(var_94.Fields.Item("AmtCr")) 'Address
  loc_153CDC8:         var_88.Collect = "cr"
  loc_153CDF2:         var_EC = CVar(var_94.Fields.Item("AmtDr")) 'Address
  loc_153CE00:         var_88.Collect = "dr"
  loc_153CE0B:         var_12C = "On Account"
  loc_153CE1A:         var_88.Collect = "AgRefNo"
  loc_153CE1F:         var_12C = vbNullString
  loc_153CE2E:         var_88.Collect = "AgRefType"
  loc_153CE33:         var_12C = "5"
  loc_153CE42:         var_88.Collect = "GRPSort"
  loc_153CE4D:         var_D4 = "RefSort"
  loc_153CE56:         var_88.Collect = var_D4
  loc_153CE66:         var_88.Update var_D4, "1"
  loc_153CE6B:       End If
  loc_153CE6E:       var_94.MoveNext
  loc_153CE84:       If (var_94.EOF = &HFF) Then
  loc_153CE87:         GoTo loc_153CEFB
  loc_153CE8A:       End If
  loc_153CEBA:       var_12C = "subcode"
  loc_153CED6:       var_EC = var_94.Fields.Item(var_12C).Value
  loc_153CEF2:       If CBool(var_90.Fields.Item("subcode").Value <> var_EC) Then
  loc_153CEF5:         GoTo loc_153CEFB
  loc_153CEF8:       End If
  loc_153CEF8:       GoTo loc_153CB83
  loc_153CEFB:       ' Referenced from: 153CEF5
  loc_153CEFB:       ' Referenced from: 153CE87
  loc_153CEFB:     End If
  loc_153CEFB:   End If
  loc_153CEFE:   var_90.MoveNext
  loc_153CF03:   GoTo loc_153C3BC
  loc_153CF06: End If
  loc_153CF1A: If (var_88.RecordCount <= 0) Then
  loc_153CF23:   Call 0.Method_arg_50 (var_DC, var_12C, var_12C, var_12C, var_12C, var_EC)
  loc_153CF3E:   var_EC = "** No Records Found to Print **"
  loc_153CF44:   MsgBox(var_EC, &H40, CVar(var_DC), var_10C, var_14C)
  loc_153CF59:   global_130 = 0
  loc_153CF5C:   Exit Sub
  loc_153CF5D: End If
  loc_153CF73: Set var_BC = var_88 
  loc_153CF7F: var_C2 = CreateFieldDefFile(var_BC, MemVar_1F953B4 & "\FaAgRefNo.ttx", &HFF, global_130, var_EC)
  loc_153CF8F: var_D4 = CVar(var_C2) 'Integer
  loc_153CF92: var_B0 = var_D4 'Variant
  loc_153CFAE: var_DC = MemVar_1F953B4 & "\FaAgRefNo.RPT"
  loc_153CFB7: Call 0.Method_arg_1C (var_DC, var_D4, var_BC, var_C2)
  loc_153CFC2: MemVar_1F951E8 = var_BC
  loc_153CFE5: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_12C, var_13C)
  loc_153CFED: Call 0.Method_arg_2C (var_EC, var_EC)
  loc_153CFFA: Set var_88 = Nothing
  loc_153D002: Set var_90 = Nothing
  loc_153D00A: Set var_94 = Nothing
  loc_153D012: Set var_98 = Nothing
  loc_153D01A: Set var_9C = Nothing
  loc_153D01D: Exit Sub
  loc_153D01E: ' Referenced from: 153C0A4
  loc_153D02C: Call 0.Method_arg_50 (var_DC, 0)
  loc_153D041: Proc_183_57_104B0BC(var_DC, "RefReport")
  loc_153D04D: Exit Sub
End Sub

Public Sub Proc_245_68_17B9C74(arg_C) '17B9C74
  'Data Table: 58C0E4
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_190 As Variant
  Dim var_188 As String
  Dim var_180 As Variant
  Dim var_1B4 As String
  Dim var_1A0 As Variant
  Dim unk_58C129 As Connection15
  Dim var_90 As Variant
  Dim var_170 As Fields15
  Dim var_1D0 As Variant
  Dim var_390 As Variant
  Dim var_14C As Variant
  Dim var_1B0 As Variant
  Dim var_16C As String
  Dim var_200 As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2A0 As Variant
  Dim var_2C0 As Variant
  Dim var_2D0 As String
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_3B0 As Variant
  Dim var_420 As Variant
  Dim var_450 As Variant
  Dim var_470 As Variant
  Dim var_4A0 As String
  Dim var_520 As Variant
  Dim var_530 As Variant
  Dim var_5D0 As String
  Dim var_600 As Variant
  Dim var_630 As Variant
  Dim var_660 As Variant
  Dim var_690 As String
  Dim var_6B0 As Variant
  Dim var_6C0 As Variant
  Dim var_6F0 As String
  Dim var_770 As Variant
  Dim var_780 As String
  Dim var_790 As Variant
  Dim var_7D0 As String
  Dim var_810 As Variant
  Dim var_880 As Variant
  Dim var_930 As String
  Dim var_960 As Variant
  Dim var_1E0 As Variant
  Dim var_300 As Variant
  Dim var_350 As Variant
  Dim var_3A0 As Variant
  Dim var_560 As Variant
  Dim var_5B0 As Variant
  Dim var_7B0 As Variant
  Dim var_800 As Variant
  Dim var_992 As Integer
  Dim var_92 As Integer
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_998 As Fields15
  Dim var_99C As Field20
  Dim var_9A0 As Fields15
  Dim var_9A4 As Field20
  Dim var_9AE As Integer
  loc_17B7E0C: On Error Goto loc_17B9C43
  loc_17B7E24: Set var_170 = CVar(CLng(0))(0)
  loc_17B7E48: Call Proc_245_64_F51BE4(CInt(0), CStr(var_180))
  loc_17B7E5C: If (var_18A = 0) Then
  loc_17B7E64:   global_130 = 0
  loc_17B7E67:   Exit Sub
  loc_17B7E68: End If
  loc_17B7E7D: Set var_170 = CVar(CLng(1))(0)
  loc_17B7EA1: Call Proc_245_64_F51BE4(CInt(1), CStr(var_180))
  loc_17B7EB5: If (var_18A = 0) Then
  loc_17B7EBD:   global_130 = 0
  loc_17B7EC0:   Exit Sub
  loc_17B7EC1: End If
  loc_17B7ED6: Set var_170 = CVar(CLng(2))(0)
  loc_17B7EFA: Call Proc_245_64_F51BE4(CInt(2), CStr(var_180))
  loc_17B7F0E: If (var_18A = 0) Then
  loc_17B7F16:   global_130 = 0
  loc_17B7F19:   Exit Sub
  loc_17B7F1A: End If
  loc_17B7F2F: Set var_170 = CVar(CLng(3))(0)
  loc_17B7F53: Call Proc_245_64_F51BE4(CInt(3), CStr(var_180))
  loc_17B7F67: If (var_18A = 0) Then
  loc_17B7F6F:   global_130 = 0
  loc_17B7F72:   Exit Sub
  loc_17B7F73: End If
  loc_17B7F79: global_84 = vbNullString
  loc_17B7F80: var_9C = vbNullString
  loc_17B7F86: var_A0 = vbNullString
  loc_17B7F95: Set var_170 = Me.Check1
  loc_17B7F9B: Call 0.Method_Proc_245_68_17B9C740 (1, var_190, var_182, global_130, var_18A, TXTE_DATE.DispID_41, global_130)
  loc_17B7FA3: var_18A = var_190.Value
  loc_17B7FB9: If (CLng(var_182) = 0) Then
  loc_17B7FD7:   Call Proc_245_61_127C7BC(global_96, 1, CByte(1))
  loc_17B7FE2:   global_84 = var_188
  loc_17B7FF2:   If (global_130 = 0) Then
  loc_17B7FF5:     Exit Sub
  loc_17B7FF6:   End If
  loc_17B7FF6: End If
  loc_17B800B: Set var_170 = CVar(CLng(0))(1)
  loc_17B8029: Me.TXTS_DATE.Text = CStr(Check1.DispID_41)
  loc_17B8050: Set var_170 = CVar(CLng(1))(1)
  loc_17B8061: var_188 = CStr(TXTS_DATE.DispID_41)
  loc_17B8068: Set var_190 = Me.TXTE_DATE
  loc_17B806E: var_190.Text = var_188
  loc_17B8097: If (Proc_183_48_F06B28(Me, var_188, TXTE_DATE.DispID_41, global_130) = 0) Then
  loc_17B809F:   global_130 = 0
  loc_17B80A2:   Exit Sub
  loc_17B80A3: End If
  loc_17B80AE: Set var_170 = Me.TEXT
  loc_17B80B4: Call 0.Method_Proc_245_68_17B9C740 (CInt(&HC), var_190, global_130, var_18A)
  loc_17B80BC: var_180 = CVar(var_190) 'Address
  loc_17B80DD: If CBool(Trim(var_180) <> vbNullString) Then
  loc_17B80F1:   Set var_170 = Me.TEXT
  loc_17B80F7:   Call 0.Method_Proc_245_68_17B9C740 (CInt(&HC), var_190, var_188, " And LEDGER.LOGSite_Code='")
  loc_17B80FF:   TXTE_DATE.DispID_41 = var_190.Tag
  loc_17B810F:   var_128 = global_130 & var_188 & "'"
  loc_17B8131:   Set var_170 = Me.TEXT
  loc_17B8137:   Call 0.Method_Proc_245_68_17B9C740 (CInt(&HC), var_190, var_188)
  loc_17B813F:   " And LEDGER.LOGSite_Code='" = var_190.Tag
  loc_17B814F:   var_12C = var_18A & var_188 & "'"
  loc_17B8163: Else
  loc_17B8171:   var_128 = " And LEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_17B8185:   var_12C = " And LEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_17B818B: End If
  loc_17B81A0: Set var_170 = CVar(CLng(2))(1)
  loc_17B81CD: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_17B81FA: Set var_170 = CVar(CLng(2))(2)
  loc_17B821A: var_C4 = CStr(Trim(CVar(CStr(TXTACC_CODE.DispID_41))))
  loc_17B8234: If (global_84 <> vbNullString) Then
  loc_17B8248:   var_9C = " AND VIEWLEDGER.PARTY IN (" & global_84 & ")"
  loc_17B824E: End If
  loc_17B8259: If (global_84 <> vbNullString) Then
  loc_17B826A:   var_1B4 = " AND (VIEWSUBGROUP.LOGSITE_CODE='" & MemVar_1F95078 & "' OR VIEWSUBGROUP.LOGSITE_CODE='HO') AND VIEWSUBGROUP.SUBCODE IN ("
  loc_17B827B:   var_A0 = var_1B4 & global_84 & ")"
  loc_17B8287: End If
  loc_17B82AB: unk_58C129.Execute "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_180, -1
  loc_17B82B6: Set var_88 = var_170
  loc_17B82C9: var_120 = vbNullString
  loc_17B8303: If (CStr(TXTACC_CODE.DispID_41) = "No") Then
  loc_17B831A:   var_188 = "SELECT MAINGRCODE,GroupNature FROM ACGROUP WHERE GROUPCODE='" & var_C4
  loc_17B832A:   unk_58C129.Execute var_188 & "' AND ALIASYN='N'", var_180, -1
  loc_17B8335:   Set var_90 = CVar(CLng(3))(1)
  loc_17B8359:   If (var_90.RecordCount > 0) Then
  loc_17B8387:     var_120 = CStr(var_90.Fields.Item("MainGrCode").Value)
  loc_17B83B6:     var_180 = var_90.Fields.Item("GroupNature").Value
  loc_17B83D0:     Set var_90 = New 
  loc_17B83D9:     Me.Recordset15.Sort = "PARTYNAME ASC,GrCode ASC,PARTYCODE ASC"
  loc_17B83E1:     var_1C0 = CStr(var_180)
  loc_17B83EC:     If Not (var_1C0 = "E") Then
  loc_17B83F7:       If (var_1C0 = "R") Then
  loc_17B83FA:       End If
  loc_17B8405:       Proc_183_7_EB17D4(var_180, MemVar_1F950F4)
  loc_17B8415:       Proc_183_7_EB17D4(var_1E0, CVar(Me.TXTS_DATE))
  loc_17B8425:       Proc_183_7_EB17D4(var_300, MemVar_1F950F4)
  loc_17B8435:       Proc_183_7_EB17D4(var_350, CVar(Me.TXTS_DATE))
  loc_17B8445:       Proc_183_7_EB17D4(var_3A0, CVar(Me.TXTE_DATE))
  loc_17B845A:       var_4E0 = "SUBSTRING"
  loc_17B847F:       Proc_183_7_EB17D4(var_560, MemVar_1F950F4)
  loc_17B848F:       Proc_183_7_EB17D4(var_5B0, CVar(Me.TXTS_DATE))
  loc_17B8499:       var_750 = "MID"
  loc_17B84C9:       Proc_183_7_EB17D4(var_7B0, MemVar_1F950F4)
  loc_17B84D9:       Proc_183_7_EB17D4(var_800, CVar(Me.TXTS_DATE))
  loc_17B84E9:       Proc_183_7_EB17D4(var_850, CVar(Me.TXTE_DATE))
  loc_17B8505:       var_14C = "SELECT 1 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE>="
  loc_17B850D:       var_1A0 = var_14C & var_180 
  loc_17B854C:       var_280 = var_1A0 & " AND V_DATE<" & var_1E0 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " 
  loc_17B855F:       var_2C0 = var_280 & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " 
  loc_17B8563:       var_2D0 = "Union SELECT 2 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE>="
  loc_17B8578:       var_330 = var_2C0 & var_2D0 & var_300 & " AND V_DATE BETWEEN " 
  loc_17B85BE:       var_450 = var_330 & var_350 & " AND " & var_3A0 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " 
  loc_17B85D5:       var_4A0 = "Union  SELECT 3 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) As OP_DR,0 AS BALANCECR,0 AS BALANCEDR,0 AS Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B85E1:       var_520 = var_450 & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " & var_4A0 & IIf((MemVar_1F953B0 = "S"), var_4E0, "MID") 
  loc_17B85E5:       var_530 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE>="
  loc_17B8614:       var_600 = var_520 & var_530 & var_560 & " AND V_DATE<" & var_5B0 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) 
  loc_17B863E:       var_690 = "')+3  "
  loc_17B864D:       var_6C0 = var_600 & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & var_690 & CVar(var_128) 
  loc_17B865A:       var_6F0 = "Union  SELECT 4 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B8666:       var_770 = var_6C0 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME " & var_6F0 & IIf((MemVar_1F953B0 = "S"), "SUBSTRING", var_750) 
  loc_17B866A:       var_780 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE>="
  loc_17B869F:       var_880 = var_770 & var_780 & var_7B0 & " AND V_DATE BETWEEN " & var_800 & " AND " & var_850 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" 
  loc_17B86D3:       var_930 = "')+3  "
  loc_17B86E2:       var_960 = var_880 & CVar(var_120) & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & var_930 & CVar(var_128) 
  loc_17B86F3:       var_90.Open var_960 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME", CVar(MemVar_1F951E0), 2
  loc_17B879C:     Else
  loc_17B87A4:       If Not (var_1C0 = "A") Then
  loc_17B87AF:         If (var_1C0 = "L") Then
  loc_17B87B2:         End If
  loc_17B87BD:         Proc_183_7_EB17D4(var_1A0, CVar(Me.TXTS_DATE), 3)
  loc_17B87C6:         var_2A0 = CVar(Me.TXTS_DATE) 'Address
  loc_17B87CD:         Proc_183_7_EB17D4(var_2C0, var_2A0, -1)
  loc_17B87D6:         var_310 = CVar(Me.TXTE_DATE) 'Address
  loc_17B87DD:         Proc_183_7_EB17D4(var_330, var_310)
  loc_17B8817:         Proc_183_7_EB17D4(var_4E0, CVar(Me.TXTS_DATE))
  loc_17B8851:         Proc_183_7_EB17D4(var_6C0, CVar(Me.TXTS_DATE))
  loc_17B8861:         Proc_183_7_EB17D4(var_750, CVar(Me.TXTE_DATE))
  loc_17B887D:         var_13C = "SELECT 1 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE<"
  loc_17B8885:         var_1B0 = var_13C & var_1A0 
  loc_17B888E:         var_1D0 = var_1B0 & " " 
  loc_17B8895:         var_15C = CVar(var_A0) 'String
  loc_17B88C7:         var_260 = var_1D0 & var_15C & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " 
  loc_17B88CB:         var_290 = "Union SELECT 2 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE BETWEEN "
  loc_17B890D:         var_390 = var_260 & var_290 & var_2C0 & " AND " & var_330 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) 
  loc_17B892D:         var_420 = "Union  SELECT 3 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,ISNULL(SUM(AMTCR),0) AS OP_CR,ISNULL(sum(AMTDR),0) As OP_DR,0 AS BALANCECR,0 AS BALANCEDR,0 AS Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B8939:         var_470 = var_390 & "' AND ACGROUP.AliasYN='N'  " & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " & var_420 & IIf((MemVar_1F953B0 = "S"), "SUBSTRING", "MID") 
  loc_17B893D:         var_4A0 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE<"
  loc_17B896F:         var_560 = var_470 & var_4A0 & var_4E0 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) & "'))='" & CVar(var_120) 
  loc_17B8986:         var_5D0 = "')+3  "
  loc_17B8995:         var_5B0 = var_560 & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_128) 
  loc_17B89A2:         var_630 = "Union  SELECT 4 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B89AE:         var_660 = var_5B0 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME " & var_630 & IIf((MemVar_1F953B0 = "S"), "SUBSTRING", "MID") 
  loc_17B89B2:         var_6B0 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE BETWEEN "
  loc_17B89E1:         var_790 = var_660 & var_6B0 & var_6C0 & " AND " & var_750 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) 
  loc_17B8A0B:         var_7D0 = "')+3  "
  loc_17B8A1A:         var_810 = var_790 & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & " AND V_DATE BETWEEN " & CVar(var_128) 
  loc_17B8A2B:         var_90.Open var_810 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME", CVar(MemVar_1F951E0), 2
  loc_17B8AB9:       End If
  loc_17B8AB9:     End If
  loc_17B8AB9:   End If
  loc_17B8ACD:   If (var_90.RecordCount <= 0) Then
  loc_17B8AD6:     Call 0.Method_arg_50 (var_188, 3, -1)
  loc_17B8AF7:     MsgBox("** No Records Found to Print **", &H40, CVar(var_188), var_1B0, var_1D0)
  loc_17B8B0C:     global_130 = 0
  loc_17B8B0F:     Exit Sub
  loc_17B8B10:   End If
  loc_17B8B13:   var_992 = arg_C
  loc_17B8B1C:   If (var_992 = 1) Then
  loc_17B8B25:     var_14C = "Paper Setting"
  loc_17B8B2A:     var_1A0 = var_14C
  loc_17B8B40:     MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_1A0, var_1B0, var_1D0)
  loc_17B8B59:     Set var_190 = var_90
  loc_17B8B62:     Set var_170 = Me 
  loc_17B8B72:     Call 0.Method_arg_16C (var_170, var_190, var_182, var_992)
  loc_17B8B7D:     Set var_90 = var_190
  loc_17B8B83:     var_92 = var_182
  loc_17B8B92:     global_130 = 0
  loc_17B8B95:     GoTo loc_17B9C2A
  loc_17B8B9B:   Else
  loc_17B8BA7:     Call 0.Method_arg_F0 (var_170, global_130, var_92)
  loc_17B8BB2:     MemVar_1F951E8 = var_170
  loc_17B8BD2:     Call 0.Method_arg_64 (var_170, CVar(var_90), var_14C, var_15C)
  loc_17B8BDA:     Call 0.Method_arg_2C (global_130, var_170)
  loc_17B8BE2:   End If
  loc_17B8BE5: Else
  loc_17B8BF5:   Set var_170 = New
  loc_17B8C04:   Call 0.Method_arg_1B4 (var_170, var_190)
  loc_17B8C0F:   Set var_8C = var_170
  loc_17B8C18:   Set var_8C = var_190
  loc_17B8C26:   Set var_90 = New 
  loc_17B8C2F:   Me.Recordset15.Sort = "PARTYNAME ASC"
  loc_17B8C3F:   Proc_183_7_EB17D4(var_1A0, CVar(Me.TXTE_DATE))
  loc_17B8C4F:   Proc_183_7_EB17D4(var_2A0, MemVar_1F950F4)
  loc_17B8C5F:   Proc_183_7_EB17D4(var_310, CVar(Me.TXTE_DATE))
  loc_17B8C7B:   var_13C = "SELECT MAX(ACGROUP.GROUPNAME)As GroupName,MAX(PARTY) AS PARTYCODE,MAX(PARTY_NAME) AS PARTYNAME,MAX(ADD1) AS ADDR1,MAX(ADD2) AS ADDR2,MAX(CITY_NAME) AS CITYNAME,sum(credit)-SUM(DEBIT) As Bal FROM (VIEWLEDGER LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=VIEWLEDGER.PARTY) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=PARTY_LIST.GROUPCODE WHERE V_DATE<"
  loc_17B8CA9:   var_200 = CVar(var_90) & var_1A0 & " " & CVar(var_9C) & " AND PARTY_LIST.GroupNature in ('A','L') AND ALIASYN='N' AND CODE='" & CVar(var_C4) 
  loc_17B8CC9:   var_290 = " Union SELECT MAX(ACGROUP.GROUPNAME)As GroupName,MAX(PARTY) AS PARTYCODE,MAX(PARTY_NAME) AS PARTYNAME,MAX(ADD1) AS ADDR1,MAX(ADD2) AS ADDR2,MAX(CITY_NAME) AS CITYNAME,sum(credit)-SUM(DEBIT) As Bal FROM (VIEWLEDGER LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=VIEWLEDGER.PARTY) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=PARTY_LIST.GROUPCODE WHERE V_DATE BETWEEN "
  loc_17B8CF8:   var_350 = var_200 & "'  " & CVar(var_12C) & " GROUP BY ACGROUP.GROUPNAME,PARTY " & var_290 & var_2A0 & " AND " & var_310 & " " & CVar(var_9C) 
  loc_17B8D27:   var_3B0 = var_350 & " AND PARTY_LIST.GroupNature NOT in ('A','L') AND ALIASYN='N' AND CODE='" & CVar(var_C4) & "' " & CVar(var_12C) & " GROUP BY ACGROUP.GROUPNAME,PARTY" 
  loc_17B8D2F:   var_90.Open var_3B0, CVar(MemVar_1F951E0), 2
  loc_17B8D67:   ' Referenced from:   17B94C8
  loc_17B8D6D:   var_182 = var_90.EOF
  loc_17B8D76:   If Not(var_182) Then
  loc_17B8D7F:     var_13C = "Bal"
  loc_17B8DA3:     var_14C = 0
  loc_17B8DB5:     If CBool(var_90.Fields.Item(var_13C).Value <> var_14C) Then
  loc_17B8DC3:       var_8C.AddNew var_13C, var_14C
  loc_17B8DF3:       var_1A0 = Left(CVar(var_90.Fields.Item("PartyName")), &H23)
  loc_17B8E05:       var_8C.Collect = "ACC_NAME"
  loc_17B8E33:       var_180 = CVar(var_90.Fields.Item("GroupName")) 'Address
  loc_17B8E41:       var_8C.Collect = "AName"
  loc_17B8EB8:       If (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt1").Value) Then
  loc_17B8EDA:         var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B8EE8:         var_8C.Collect = "DEBIT1"
  loc_17B8EF6:       Else
  loc_17B8FAE:         var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt1").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt2").Value)
  loc_17B8FD2:         If CBool(var_240) Then
  loc_17B8FF4:           var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B9002:           var_8C.Collect = "DEBIT2"
  loc_17B9010:         Else
  loc_17B90C8:           var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt2").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt3").Value)
  loc_17B90EC:           If CBool(var_240) Then
  loc_17B910E:             var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B911C:             var_8C.Collect = "DEBIT3"
  loc_17B912A:           Else
  loc_17B91E2:             var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt3").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt4").Value)
  loc_17B9206:             If CBool(var_240) Then
  loc_17B9228:               var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B9236:               var_8C.Collect = "DEBIT4"
  loc_17B9244:             Else
  loc_17B92FC:               var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt4").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt5").Value)
  loc_17B9320:               If CBool(var_240) Then
  loc_17B9342:                 var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B9350:                 var_8C.Collect = "DEBIT5"
  loc_17B935E:               Else
  loc_17B939E:                 var_998 = var_88.Fields
  loc_17B93A6:                 var_99C = var_998.Item("Amt5")
  loc_17B93AE:                 var_1B0 = var_99C.Value
  loc_17B93B6:                 var_1D0 = (Abs(var_90.Fields.Item("Bal").Value) > var_1B0)
  loc_17B93CC:                 var_9A0 = var_90.Fields
  loc_17B93D4:                 var_9A4 = var_9A0.Item("Bal")
  loc_17B943A:                 If CBool(var_1D0 And (Abs(var_9A4.Value) <= var_88.Fields.Item("Amt6").Value)) Then
  loc_17B945C:                   var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B946A:                   var_8C.Collect = "DEBIT6"
  loc_17B9478:                 Else
  loc_17B947B:                   var_13C = "Bal"
  loc_17B9497:                   var_180 = CVar(var_90.Fields.Item(var_13C)) 'Address
  loc_17B949C:                   var_14C = "Debit"
  loc_17B94A5:                   var_8C.Collect = var_14C
  loc_17B94B0:                 End If
  loc_17B94B0:               End If
  loc_17B94B0:             End If
  loc_17B94B0:           End If
  loc_17B94B0:         End If
  loc_17B94B0:       End If
  loc_17B94BB:       var_8C.Update var_13C, var_14C
  loc_17B94C0:     End If
  loc_17B94C3:     var_90.MoveNext
  loc_17B94C8:     GoTo loc_17B8D67
  loc_17B94CB:   End If
  loc_17B94D1:   var_1BC = var_8C.RecordCount
  loc_17B94DF:   If (var_1BC <= 0) Then
  loc_17B94E8:     Call 0.Method_arg_50 (var_188, var_180, var_180, var_180, var_180, var_180)
  loc_17B9509:     MsgBox("** No Records Found to Print **", &H40, CVar(var_188), var_1B0, var_1D0)
  loc_17B951E:     global_130 = 0
  loc_17B9521:     Exit Sub
  loc_17B9522:   End If
  loc_17B9525:   var_9AE = arg_C
  loc_17B952E:   If (var_9AE = 1) Then
  loc_17B953C:     var_1A0 = "Paper Setting"
  loc_17B954C:     var_180 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_17B9552:     MsgBox(var_180, &H40, var_1A0, var_1B0, var_1D0)
  loc_17B956B:     Set var_190 = var_8C
  loc_17B9574:     Set var_170 = Me 
  loc_17B9584:     Call 0.Method_arg_168 (var_170, var_190, var_182, var_9AE, global_130, var_180)
  loc_17B958F:     Set var_8C = var_190
  loc_17B9595:     var_92 = var_182
  loc_17B95A4:     global_130 = 0
  loc_17B95A7:     GoTo loc_17B9C2A
  loc_17B95AD:   Else
  loc_17B95B9:     Call 0.Method_arg_F4 (var_170, global_130, var_92, var_180)
  loc_17B95C4:     MemVar_1F951E8 = var_170
  loc_17B95DC:     Call 0.Method_arg_90 (var_170, var_1BC, var_BE, 1)
  loc_17B95E4:     Call 0.Method_arg_24 (var_180, var_1A0)
  loc_17B95F0:     For var_9B2 = -1 To CInt(var_1BC):     3 = var_9B2 'Integer
  loc_17B9609:       Call 0.Method_arg_90 (var_170, CLng(var_BE), var_190)
  loc_17B9611:       Call 0.Method_arg_20 (var_188)
  loc_17B9619:       Call 0.Method_arg_30 (-1)
  loc_17B962F:       var_9C4 = Ucase(CVar(var_188)) 'Variant
  loc_17B9648:       If (var_9C4 = "P1") Then
  loc_17B9650:         var_14C = "0 - "
  loc_17B9683:         var_1B0 = ("Paper Setting" + Str(CVar(var_88.Fields.Item("Amt1"))))
  loc_17B96A8:         Call 0.Method_arg_90 (var_998, CLng(var_BE))
  loc_17B96B0:         Call 0.Method_arg_20 (var_99C)
  loc_17B96B8:         Call 0.Method_arg_38 (CStr("'" & var_1B0 & "'"))
  loc_17B96D9:       Else
  loc_17B96E4:         If (var_9C4 = "P2") Then
  loc_17B971B:           var_1A0 = (var_88.Fields.Item("Amt1").Value + 1)
  loc_17B972E:           var_16C = " - "
  loc_17B9786:           Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B978E:           Call 0.Method_arg_20 (var_9A4)
  loc_17B9796:           Call 0.Method_arg_38 (CStr("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) & "'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B97C3:         Else
  loc_17B97CE:           If (var_9C4 = "P3") Then
  loc_17B9805:             var_1A0 = (var_88.Fields.Item("Amt2").Value + 1)
  loc_17B9814:             var_15C = " - "
  loc_17B9819:             var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B984B:             var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt3"))))
  loc_17B9870:             Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B9878:             Call 0.Method_arg_20 (var_9A4)
  loc_17B9880:             Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B98AD:           Else
  loc_17B98B8:             If (var_9C4 = "P4") Then
  loc_17B98EF:               var_1A0 = (var_88.Fields.Item("Amt3").Value + 1)
  loc_17B98FE:               var_15C = " - "
  loc_17B9903:               var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B9935:               var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt4"))))
  loc_17B995A:               Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B9962:               Call 0.Method_arg_20 (var_9A4)
  loc_17B996A:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B9997:             Else
  loc_17B99A2:               If (var_9C4 = "P5") Then
  loc_17B99D9:                 var_1A0 = (var_88.Fields.Item("Amt4").Value + 1)
  loc_17B99E8:                 var_15C = " - "
  loc_17B99ED:                 var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B9A1F:                 var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt5"))))
  loc_17B9A44:                 Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B9A4C:                 Call 0.Method_arg_20 (var_9A4)
  loc_17B9A54:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B9A81:               Else
  loc_17B9A8C:                 If (var_9C4 = "P6") Then
  loc_17B9AC3:                   var_1A0 = (var_88.Fields.Item("Amt5").Value + 1)
  loc_17B9AD2:                   var_15C = " - "
  loc_17B9AD7:                   var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B9AEA:                   var_998 = var_88.Fields
  loc_17B9AF2:                   var_99C = var_998.Item("Amt6")
  loc_17B9B09:                   var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_99C)))
  loc_17B9B2E:                   Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B9B36:                   Call 0.Method_arg_20 (var_9A4)
  loc_17B9B3E:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B9B6B:                 Else
  loc_17B9B76:                   If (var_9C4 = "P7") Then
  loc_17B9B79:                     var_14C = "'Above "
  loc_17B9B8D:                     var_170 = var_88.Fields
  loc_17B9BB9:                     var_188 = CStr(var_14C & Str(CVar(var_170.Item("Amt6"))) & "'")
  loc_17B9BCD:                     Call 0.Method_arg_90 (var_998, CLng(var_BE))
  loc_17B9BD5:                     Call 0.Method_arg_20 (var_99C)
  loc_17B9BDD:                     Call 0.Method_arg_38 (var_188)
  loc_17B9BF9:                   End If
  loc_17B9BF9:                 End If
  loc_17B9BF9:               End If
  loc_17B9BF9:             End If
  loc_17B9BF9:           End If
  loc_17B9BF9:         End If
  loc_17B9BF9:       End If
  loc_17B9BFC:     Next var_9B2 'Integer
  loc_17B9C1A:     Call 0.Method_arg_64 (var_170, CVar(var_8C))
  loc_17B9C22:     Call 0.Method_arg_2C (var_14C)
  loc_17B9C2A:   End If
  loc_17B9C2A:   ' Referenced from:   17B95A7
  loc_17B9C2A: End If
  loc_17B9C2A: ' Referenced from: 17B8B95
  loc_17B9C2F: Set var_88 = Nothing
  loc_17B9C37: Set var_8C = Nothing
  loc_17B9C3F: Set var_90 = Nothing
  loc_17B9C42: Exit Sub
  loc_17B9C43: ' Referenced from: 17B7E0C
  loc_17B9C51: Call 0.Method_arg_50 (var_188, 0)
  loc_17B9C66: Proc_183_57_104B0BC(var_188, "Annexure")
  loc_17B9C72: Exit Sub
End Sub

Public Sub Proc_245_69_17B3C84
  'Data Table: 58C0E4
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_178 As String
  Dim var_160 As Variant
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E8 As Variant
  Dim var_15C As Variant
  Dim var_1F8 As Variant
  Dim var_94 As Recordset15
  Dim var_116 As Integer
  Dim var_25C As Fields15
  Dim var_260 As Field20
  Dim var_1D8 As Variant
  Dim var_BC As Double
  Dim var_264 As Recordset15
  Dim var_90 As Recordset15
  Dim Me As Recordset15
  loc_17B1D0C: On Error Goto loc_17B3C52
  loc_17B1D24: Set var_160 = CVar(CLng(0))(0)
  loc_17B1D48: Call Proc_245_64_F51BE4(CInt(0), CStr(var_170))
  loc_17B1D5C: If (var_17A = 0) Then
  loc_17B1D64:   global_130 = 0
  loc_17B1D67:   Exit Sub
  loc_17B1D68: End If
  loc_17B1D73: Set var_160 = Me.TEXT
  loc_17B1D79: Call 0.Method_Proc_245_69_17B3C840 (CInt(&HC), var_180, global_130)
  loc_17B1D81: var_170 = CVar(var_180) 'Address
  loc_17B1DA2: If CBool(Trim(var_170) <> vbNullString) Then
  loc_17B1DB6:   Set var_160 = Me.TEXT
  loc_17B1DBC:   Call 0.Method_Proc_245_69_17B3C840 (CInt(&HC), var_180, var_178)
  loc_17B1DC4:   " And VIEWLEDGER.LOGSite_Code='" = var_180.Tag
  loc_17B1DD4:   var_11C = var_17A & var_178 & "'"
  loc_17B1DE8: Else
  loc_17B1DEF:   var_178 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078
  loc_17B1DF6:   var_11C = var_178 & "'"
  loc_17B1DFC: End If
  loc_17B1E02: global_84 = vbNullString
  loc_17B1E09: var_A0 = vbNullString
  loc_17B1E18: Set var_160 = Me.Check1
  loc_17B1E1E: Call 0.Method_Proc_245_69_17B3C840 (1, var_180)
  loc_17B1E3C: If (CLng(var_180.Value) = 0) Then
  loc_17B1E5A:   Call Proc_245_61_127C7BC(global_96, 1, CByte(1))
  loc_17B1E65:   global_84 = var_178
  loc_17B1E75:   If (global_130 = 0) Then
  loc_17B1E78:     Exit Sub
  loc_17B1E79:   End If
  loc_17B1E79: End If
  loc_17B1E84: If (global_84 <> vbNullString) Then
  loc_17B1E98:   var_A0 = " AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_17B1E9E: End If
  loc_17B1EB3: Set var_160 = CVar(CLng(0))(1)
  loc_17B1ECB: Set var_180 = Me.TXTE_DATE
  loc_17B1ED1: var_180.Text = CStr(Check1.DispID_41)
  loc_17B1EEA: Set var_160 = Me.TXTE_DATE
  loc_17B1F19: If (Proc_183_49_EF3D10(CDate(var_160.Text), "Date Upto") = 0) Then
  loc_17B1F21:   global_130 = 0
  loc_17B1F24:   Exit Sub
  loc_17B1F25: End If
  loc_17B1F39: var_178 = "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_17B1F49: unk_58C129.Execute var_178 & "'", var_170, -1
  loc_17B1F54: Set var_88 = var_160
  loc_17B1F78: If (var_88.RecordCount = 0) Then
  loc_17B1F81:   Call 0.Method_arg_50 (var_178, var_160, global_130)
  loc_17B1F9C:   var_170 = " ** Please Set Ageing Parameters ** "
  loc_17B1FA2:   MsgBox(var_170, &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17B1FB2:   Exit Sub
  loc_17B1FB3: End If
  loc_17B1FBB: If (arg_10 = "Dr") Then
  loc_17B1FC5:   var_A0 = var_A0 & " AND AcGroup.Nature='Customer'"
  loc_17B1FC8: End If
  loc_17B1FD0: If (arg_10 = "Cr") Then
  loc_17B1FDA:   var_A0 = var_A0 & " AND AcGroup.Nature='Supplier'"
  loc_17B1FDD: End If
  loc_17B1FF1: var_178 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,ACGROUP.GroupName FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078
  loc_17B200F: unk_58C129.Execute var_178 & "' OR SUBGROUP.LOGSITE_CODE='HO') " & var_A0 & " ORDER BY SUBGROUP.NAME", var_170, -1
  loc_17B201A: Set var_8C = var_160
  loc_17B2031: var_A4 = vbNullString
  loc_17B2044: Set var_160 = New
  loc_17B2053: Call 0.Method_arg_1B4 (var_160, var_180, var_160)
  loc_17B205E: Set var_90 = var_160
  loc_17B2067: Set var_90 = var_180
  loc_17B2077: Me.Recordset15.Sort = "ACC_NAME ASC"
  loc_17B207C: ' Referenced from: 17B30C5
  loc_17B208B: If Not(var_8C.EOF) Then
  loc_17B2091:   var_E4 = CDbl(0)
  loc_17B2097:   var_EC = CDbl(0)
  loc_17B209D:   var_F4 = CDbl(0)
  loc_17B20A3:   var_FC = CDbl(0)
  loc_17B20A9:   var_104 = CDbl(0)
  loc_17B20AF:   var_10C = CDbl(0)
  loc_17B20B5:   var_114 = CDbl(0)
  loc_17B20C1:   var_B4 = CDbl(0)
  loc_17B2109:   var_1A0 = "SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value & "'=VIEWLEDGER.PARTY AND V_DATE<=" 
  loc_17B2118:   Proc_183_7_EB17D4(var_1D8, CVar(Me.TXTE_DATE), var_1A0, var_258, -1, var_25C, var_B4)
  loc_17B2140:   var_178 = CStr(CDbl(0) & var_1D8 & " " & CVar(var_11C) & vbNullString)
  loc_17B214A:   unk_58C129.Execute var_178, var_114, var_10C
  loc_17B2155:   Set var_94 = var_25C
  loc_17B217B:   ' Referenced from: 17B2D32
  loc_17B218A:   If Not(var_94.EOF) Then
  loc_17B2195:     If (arg_10 = "Dr") Then
  loc_17B21D4:       If (var_94.Fields.Item("Credit").Value > 0) Then
  loc_17B2208:         var_190 = (var_94.Fields.Item("Credit").Value + CVar(var_B4))
  loc_17B220D:         var_B4 = CSng("SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value)
  loc_17B2221:       Else
  loc_17B226B:         var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(Me.TXTE_DATE), 1, 1))
  loc_17B22BB:         If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17B22EF:           var_190 = (CVar(var_E4) + var_94.Fields.Item("Debit").Value)
  loc_17B22F4:           var_E4 = CSng(CVar(Me.TXTE_DATE))
  loc_17B2308:         Else
  loc_17B238A:           If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17B23BE:             var_190 = (CVar(var_EC) + var_94.Fields.Item("Debit").Value)
  loc_17B23C3:             var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17B23D7:           Else
  loc_17B2459:             If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17B248D:               var_190 = (CVar(var_F4) + var_94.Fields.Item("Debit").Value)
  loc_17B2492:               var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17B24A6:             Else
  loc_17B2528:               If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17B255C:                 var_190 = (CVar(var_FC) + var_94.Fields.Item("Debit").Value)
  loc_17B2561:                 var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17B2575:               Else
  loc_17B25F7:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17B262B:                   var_190 = (CVar(var_104) + var_94.Fields.Item("Debit").Value)
  loc_17B2630:                   var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17B2644:                 Else
  loc_17B26C6:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And (CVar(var_116) <= var_88.Fields.Item("Age6").Value)) Then
  loc_17B26FA:                     var_190 = (CVar(var_10C) + var_94.Fields.Item("Debit").Value)
  loc_17B26FF:                     var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B2713:                   Else
  loc_17B2744:                     var_190 = (CVar(var_114) + var_94.Fields.Item("Debit").Value)
  loc_17B2749:                     var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B275A:                   End If
  loc_17B275A:                 End If
  loc_17B275A:               End If
  loc_17B275A:             End If
  loc_17B275A:           End If
  loc_17B275A:         End If
  loc_17B275A:       End If
  loc_17B275D:     Else
  loc_17B2765:       If (arg_10 = "Cr") Then
  loc_17B27A4:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_17B27D8:           var_190 = (var_94.Fields.Item("Debit").Value + CVar(var_B4))
  loc_17B27DD:           var_B4 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B27F1:         Else
  loc_17B283B:           var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(Me.TXTE_DATE), 1, 1))
  loc_17B288B:           If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17B28BF:             var_190 = (CVar(var_E4) + var_94.Fields.Item("Credit").Value)
  loc_17B28C4:             var_E4 = CSng(CVar(Me.TXTE_DATE))
  loc_17B28D8:           Else
  loc_17B295A:             If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17B298E:               var_190 = (CVar(var_EC) + var_94.Fields.Item("Credit").Value)
  loc_17B2993:               var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17B29A7:             Else
  loc_17B2A29:               If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17B2A5D:                 var_190 = (CVar(var_F4) + var_94.Fields.Item("Credit").Value)
  loc_17B2A62:                 var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17B2A76:               Else
  loc_17B2AF8:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17B2B2C:                   var_190 = (CVar(var_FC) + var_94.Fields.Item("Credit").Value)
  loc_17B2B31:                   var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17B2B45:                 Else
  loc_17B2BC7:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17B2BFB:                     var_190 = (CVar(var_104) + var_94.Fields.Item("Credit").Value)
  loc_17B2C00:                     var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17B2C14:                   Else
  loc_17B2C62:                     var_25C = var_88.Fields
  loc_17B2C6A:                     var_260 = var_25C.Item("Age6")
  loc_17B2C7A:                     var_1C0 = (CVar(var_116) <= var_260.Value)
  loc_17B2C96:                     If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And var_1C0) Then
  loc_17B2CCA:                       var_190 = (CVar(var_10C) + var_94.Fields.Item("Credit").Value)
  loc_17B2CCF:                       var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B2CE3:                     Else
  loc_17B2D14:                       var_190 = (CVar(var_114) + var_94.Fields.Item("Credit").Value)
  loc_17B2D19:                       var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B2D2A:                     End If
  loc_17B2D2A:                   End If
  loc_17B2D2A:                 End If
  loc_17B2D2A:               End If
  loc_17B2D2A:             End If
  loc_17B2D2A:           End If
  loc_17B2D2A:         End If
  loc_17B2D2A:       End If
  loc_17B2D2A:     End If
  loc_17B2D2D:     var_94.MoveNext
  loc_17B2D32:     GoTo loc_17B217B
  loc_17B2D35:   End If
  loc_17B2D40:   var_D8(0) = var_E4
  loc_17B2D4C:   var_D8(1) = var_EC
  loc_17B2D58:   var_D8(2) = var_F4
  loc_17B2D64:   var_D8(3) = var_FC
  loc_17B2D70:   var_D8(4) = var_104
  loc_17B2D7C:   var_D8(5) = var_10C
  loc_17B2D88:   var_D8(6) = var_114
  loc_17B2D8C:   var_BC = CDbl(7)
  loc_17B2D8F:   ' Referenced from: 17B2E23
  loc_17B2D96:   If (var_BC <> CDbl(0)) Then
  loc_17B2DA9:     If (var_D8(CLng((var_BC - CDbl(1)))) > CDbl(0)) Then
  loc_17B2DBC:       If (var_B4 >= var_D8(CLng((var_BC - CDbl(1))))) Then
  loc_17B2DCF:         var_B4 = (var_B4 - var_D8(CLng((var_BC - CDbl(1)))))
  loc_17B2DE0:         var_D8(CLng((var_BC - CDbl(1)))) = CDbl(0)
  loc_17B2DE4:       Else
  loc_17B2DF4:         If (var_D8(CLng((var_BC - CDbl(1)))) > var_B4) Then
  loc_17B2E12:           var_D8(CLng((var_BC - CDbl(1)))) = (var_D8(CLng((var_BC - CDbl(1)))) - var_B4)
  loc_17B2E16:           var_B4 = CDbl(0)
  loc_17B2E19:         End If
  loc_17B2E19:       End If
  loc_17B2E19:     End If
  loc_17B2E20:     var_BC = (var_BC - CDbl(1))
  loc_17B2E23:     GoTo loc_17B2D8F
  loc_17B2E26:   End If
  loc_17B2E6B:   var_BC = ((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))
  loc_17B2E76:   var_12C = var_BC
  loc_17B2E86:   var_13C = 0
  loc_17B2EA0:   var_1A0 = Round(var_B4, 2)
  loc_17B2EC3:   If CBool(Not (Round(var_12C, 2) = var_13C) And (var_1A0 = 0)) Then
  loc_17B2EC9:     Set var_264 = var_90 
  loc_17B2ED8:     var_264.AddNew var_12C, var_13C
  loc_17B2EE6:     var_13C = CVar(var_D8(0)) 'Double
  loc_17B2EF4:     var_264.Collect = "DEBIT1"
  loc_17B2F02:     var_13C = CVar(var_D8(1)) 'Double
  loc_17B2F10:     var_264.Collect = "DEBIT2"
  loc_17B2F1E:     var_13C = CVar(var_D8(2)) 'Double
  loc_17B2F2C:     var_264.Collect = "DEBIT3"
  loc_17B2F3A:     var_13C = CVar(var_D8(3)) 'Double
  loc_17B2F48:     var_264.Collect = "DEBIT4"
  loc_17B2F56:     var_13C = CVar(var_D8(4)) 'Double
  loc_17B2F64:     var_264.Collect = "DEBIT5"
  loc_17B2F72:     var_13C = CVar(var_D8(5)) 'Double
  loc_17B2F80:     var_264.Collect = "DEBIT6"
  loc_17B2F8E:     var_13C = CVar(var_D8(6)) 'Double
  loc_17B2F9C:     var_264.Collect = "Debit"
  loc_17B2FE6:     var_13C = CVar(((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))) 'Double
  loc_17B2FF4:     var_264.Collect = "TOTALDR"
  loc_17B2FFC:     var_13C = CVar(var_B4) 'Double
  loc_17B300A:     var_264.Collect = "Credit"
  loc_17B303A:     var_190 = Left(CVar(var_8C.Fields.Item("Name")), &H23)
  loc_17B304C:     var_264.Collect = "ACC_NAME"
  loc_17B305E:     var_12C = "GroupName"
  loc_17B306A:     var_160 = var_8C.Fields
  loc_17B3072:     var_180 = var_160.Item(var_12C)
  loc_17B3086:     var_190 = Left(CVar(var_180), &H23)
  loc_17B308F:     var_13C = "AName"
  loc_17B3098:     var_264.Collect = var_13C
  loc_17B30B2:     var_264.Update var_12C, var_13C
  loc_17B30B9:     Set var_264 = Nothing 
  loc_17B30BD:   End If
  loc_17B30C0:   var_8C.MoveNext
  loc_17B30C5:   GoTo loc_17B207C
  loc_17B30C8: End If
  loc_17B30CE: var_1B0 = var_90.RecordCount
  loc_17B30DC: If (var_1B0 <= 0) Then
  loc_17B30E5:   Call 0.Method_arg_50 (var_178, var_190, var_190, var_13C, var_13C, var_13C, var_13C)
  loc_17B3106:   MsgBox("** No Records Found to Print **", &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17B311B:   global_130 = 0
  loc_17B311E:   Exit Sub
  loc_17B311F: End If
  loc_17B312B: Call 0.Method_arg_D0 (var_160, global_130, var_13C, var_13C, var_13C)
  loc_17B3136: MemVar_1F951E8 = var_160
  loc_17B314E: Call 0.Method_arg_90 (var_160, var_1B0, var_BE, 1)
  loc_17B3156: Call 0.Method_arg_24 (var_13C, var_13C)
  loc_17B3162: For var_268 = var_BC To CInt(var_1B0): var_BC = var_268 'Integer
  loc_17B317B:   Call 0.Method_arg_90 (var_160, CLng(var_BE), var_180)
  loc_17B3183:   Call 0.Method_arg_20 (var_178)
  loc_17B318B:   Call 0.Method_arg_30 (var_BC)
  loc_17B3193:   var_26C = var_178
  loc_17B31A5:   If (var_26C = "title") Then
  loc_17B31B9:     Call 0.Method_Proc_245_69_17B3C840 (CInt(&HC))
  loc_17B31E2:     If (Trim(CVar(var_180)) = vbNullString) Then
  loc_17B31EE:       Call 0.Method_arg_50 (var_178, "'")
  loc_17B3211:       Call 0.Method_arg_90 (Me.TEXT, CLng(var_BE))
  loc_17B3219:       Call 0.Method_arg_20 (var_180)
  loc_17B3221:       Call 0.Method_arg_38 (var_180 & var_178 & "'")
  loc_17B3239:     Else
  loc_17B3242:       Call 0.Method_arg_50 (var_178)
  loc_17B3260:       Set var_160 = Me.TEXT
  loc_17B3266:       Call 0.Method_Proc_245_69_17B3C840 (CInt(&HC), var_180)
  loc_17B327D:       var_1C0 = (CVar("'" & var_178 & " (") + Trim(CVar(var_180)))
  loc_17B3286:       var_1D8 = (var_1C0 + ")")
  loc_17B328F:       var_1E8 = ((Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0) + "'")
  loc_17B32A7:       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B32AF:       Call 0.Method_arg_20 (var_260)
  loc_17B32B7:       Call 0.Method_arg_38 (CStr(Not (Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0)))
  loc_17B32DD:     End If
  loc_17B32E0:   Else
  loc_17B32E8:     If (var_26C = "ACNAME") Then
  loc_17B331E:       Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17B3326:       Call 0.Method_arg_20 (var_25C)
  loc_17B332E:       Call 0.Method_arg_38 ("'For A/C  :   " & Me.TXTACC_CODE.Text & "'")
  loc_17B3348:     Else
  loc_17B3350:       If (var_26C = "DATE") Then
  loc_17B3386:         Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17B338E:         Call 0.Method_arg_20 (var_25C)
  loc_17B3396:         Call 0.Method_arg_38 ("'Upto Date :     " & Me.TXTE_DATE.Text & "'")
  loc_17B33B0:       Else
  loc_17B33B8:         If (var_26C = "P1") Then
  loc_17B33C0:           var_13C = "0 - "
  loc_17B33F3:           var_1A0 = ("'" + Str(CVar(var_88.Fields.Item("Age1"))))
  loc_17B3418:           Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B3420:           Call 0.Method_arg_20 (var_260)
  loc_17B3428:           Call 0.Method_arg_38 (CStr("'" & CVar("'" & Me.TXTE_DATE.Text & " (") & "'"))
  loc_17B3449:         Else
  loc_17B3451:           If (var_26C = "P2") Then
  loc_17B3488:             var_190 = (var_88.Fields.Item("Age1").Value + 1)
  loc_17B349B:             var_15C = " - "
  loc_17B34F3:             Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B34FB:             Call 0.Method_arg_20 (var_274)
  loc_17B3503:             Call 0.Method_arg_38 (CStr("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) & "'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B3530:           Else
  loc_17B3538:             If (var_26C = "P3") Then
  loc_17B356F:               var_190 = (var_88.Fields.Item("Age2").Value + 1)
  loc_17B357E:               var_14C = " - "
  loc_17B3583:               var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B35B5:               var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age3"))))
  loc_17B35DA:               Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B35E2:               Call 0.Method_arg_20 (var_274)
  loc_17B35EA:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B3617:             Else
  loc_17B361F:               If (var_26C = "P4") Then
  loc_17B3656:                 var_190 = (var_88.Fields.Item("Age3").Value + 1)
  loc_17B3665:                 var_14C = " - "
  loc_17B366A:                 var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B369C:                 var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age4"))))
  loc_17B36C1:                 Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B36C9:                 Call 0.Method_arg_20 (var_274)
  loc_17B36D1:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B36FE:               Else
  loc_17B3706:                 If (var_26C = "P5") Then
  loc_17B373D:                   var_190 = (var_88.Fields.Item("Age4").Value + 1)
  loc_17B374C:                   var_14C = " - "
  loc_17B3751:                   var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B3783:                   var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age5"))))
  loc_17B37A8:                   Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B37B0:                   Call 0.Method_arg_20 (var_274)
  loc_17B37B8:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B37E5:                 Else
  loc_17B37ED:                   If (var_26C = "P6") Then
  loc_17B3824:                     var_190 = (var_88.Fields.Item("Age5").Value + 1)
  loc_17B3833:                     var_14C = " - "
  loc_17B3838:                     var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B384B:                     var_25C = var_88.Fields
  loc_17B3853:                     var_260 = var_25C.Item("Age6")
  loc_17B386A:                     var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_260)))
  loc_17B388F:                     Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B3897:                     Call 0.Method_arg_20 (var_274)
  loc_17B389F:                     Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B38CC:                   Else
  loc_17B38D4:                     If (var_26C = "P7") Then
  loc_17B38EB:                       var_160 = var_88.Fields
  loc_17B38F3:                       var_180 = var_160.Item("Age6")
  loc_17B392B:                       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B3933:                       Call 0.Method_arg_20 (var_260)
  loc_17B393B:                       Call 0.Method_arg_38 (CStr("'Above " & Str(CVar(var_180)) & "'"))
  loc_17B395A:                     Else
  loc_17B3962:                       If (var_26C = "P8") Then
  loc_17B396D:                         If (arg_10 = "Dr") Then
  loc_17B3983:                           Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B398B:                           Call 0.Method_arg_20 (var_180)
  loc_17B3993:                           Call 0.Method_arg_38 ("'Total Debit'")
  loc_17B39A2:                         Else
  loc_17B39AA:                           If (arg_10 = "Cr") Then
  loc_17B39C0:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B39C8:                             Call 0.Method_arg_20 (var_180)
  loc_17B39D0:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17B39DC:                           End If
  loc_17B39DC:                         End If
  loc_17B39DF:                       Else
  loc_17B39E7:                         If (var_26C = "P9") Then
  loc_17B39F2:                           If (arg_10 = "Dr") Then
  loc_17B3A08:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B3A10:                             Call 0.Method_arg_20 (var_180)
  loc_17B3A18:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17B3A27:                           Else
  loc_17B3A2F:                             If (arg_10 = "Cr") Then
  loc_17B3A45:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B3A4D:                               Call 0.Method_arg_20 (var_180)
  loc_17B3A55:                               Call 0.Method_arg_38 ("'Total Debit'")
  loc_17B3A61:                             End If
  loc_17B3A61:                           End If
  loc_17B3A64:                         Else
  loc_17B3A6C:                           If (var_26C = "HEADI") Then
  loc_17B3A77:                             If (arg_10 = "Dr") Then
  loc_17B3A8D:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B3A95:                               Call 0.Method_arg_20 (var_180)
  loc_17B3A9D:                               Call 0.Method_arg_38 ("'<----------------------------- AMOUNT DEBITED FROM DAYS ------------------------------>'")
  loc_17B3AAC:                             Else
  loc_17B3AB4:                               If (arg_10 = "Cr") Then
  loc_17B3ACA:                                 Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B3AD2:                                 Call 0.Method_arg_20 (var_180)
  loc_17B3ADA:                                 Call 0.Method_arg_38 ("'<----------------------------- AMOUNT CREDITED FROM DAYS ------------------------------>'")
  loc_17B3AE6:                               End If
  loc_17B3AE6:                             End If
  loc_17B3AE9:                           Else
  loc_17B3AF1:                             If (var_26C = "PageNo") Then
  loc_17B3B47:                               Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B3B4F:                               Call 0.Method_arg_20 (var_260)
  loc_17B3B57:                               Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_17B3B76:                             Else
  loc_17B3B7E:                               If (var_26C = "DT") Then
  loc_17B3B81:                                 var_13C = "'"
  loc_17B3B9B:                                 var_160 = Me.Fields
  loc_17B3BC0:                                 var_178 = CStr(var_13C & var_160.Item("daterfill").Value & "'")
  loc_17B3BD4:                                 Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B3BDC:                                 Call 0.Method_arg_20 (var_260)
  loc_17B3BE4:                                 Call 0.Method_arg_38 (var_178)
  loc_17B3C00:                               End If
  loc_17B3C00:                             End If
  loc_17B3C00:                           End If
  loc_17B3C00:                         End If
  loc_17B3C00:                       End If
  loc_17B3C00:                     End If
  loc_17B3C00:                   End If
  loc_17B3C00:                 End If
  loc_17B3C00:               End If
  loc_17B3C00:             End If
  loc_17B3C00:           End If
  loc_17B3C00:         End If
  loc_17B3C00:       End If
  loc_17B3C00:     End If
  loc_17B3C00:   End If
  loc_17B3C03: Next var_268 'Integer
  loc_17B3C21: Call 0.Method_arg_64 (var_160, CVar(var_90))
  loc_17B3C29: Call 0.Method_arg_2C (var_13C)
  loc_17B3C36: Set var_88 = Nothing
  loc_17B3C3E: Set var_8C = Nothing
  loc_17B3C46: Set var_90 = Nothing
  loc_17B3C4E: Set var_94 = Nothing
  loc_17B3C51: Exit Sub
  loc_17B3C52: ' Referenced from: 17B1D0C
  loc_17B3C60: Call 0.Method_arg_50 (var_178, 0)
  loc_17B3C75: Proc_183_57_104B0BC(var_178, "Aging")
  loc_17B3C81: Exit Sub
End Sub

Public Sub Proc_245_70_127EBAC
  'Data Table: 58C0E4
  Dim var_C8 As Variant
  Dim var_FC As Variant
  Dim var_F4 As String
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim var_130 As Variant
  Dim var_1F0 As String
  Dim var_230 As Variant
  Dim var_360 As Variant
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim var_10C As Variant
  Dim var_A02 As Variant
  loc_127E664: On Error Goto loc_127EB79
  loc_127E67C: Set var_DC = CVar(CLng(0))(0)
  loc_127E6A0: Call Proc_245_64_F51BE4(CInt(0), CStr(var_EC))
  loc_127E6B4: If (var_F6 = 0) Then
  loc_127E6BC:   global_130 = 0
  loc_127E6BF:   Exit Sub
  loc_127E6C0: End If
  loc_127E6D5: Set var_DC = CVar(CLng(1))(0)
  loc_127E6F9: Call Proc_245_64_F51BE4(CInt(1), CStr(var_EC))
  loc_127E70D: If (var_F6 = 0) Then
  loc_127E715:   global_130 = 0
  loc_127E718:   Exit Sub
  loc_127E719: End If
  loc_127E71F: global_84 = vbNullString
  loc_127E726: var_90 = vbNullString
  loc_127E735: Set var_DC = Me.Check1
  loc_127E73B: Call 0.Method_Proc_245_70_127EBAC0 (1, var_FC, var_EE, global_130, var_F6)
  loc_127E743: TXTE_DATE.DispID_41 = var_FC.Value
  loc_127E759: If (CLng(var_EE) = 0) Then
  loc_127E777:   Call Proc_245_61_127C7BC(global_96, 1, CByte(1))
  loc_127E782:   global_84 = var_F4
  loc_127E792:   If (global_130 = 0) Then
  loc_127E795:     Exit Sub
  loc_127E796:   End If
  loc_127E796: End If
  loc_127E7A1: If (global_84 <> vbNullString) Then
  loc_127E7B5:   var_90 = " AND VIEWLEDGER.PARTY IN (" & global_84 & ")"
  loc_127E7BB: End If
  loc_127E7D0: Set var_DC = CVar(CLng(0))(1)
  loc_127E7EE: Me.TXTS_DATE.Text = CStr(Check1.DispID_41)
  loc_127E815: Set var_DC = CVar(CLng(1))(1)
  loc_127E826: var_F4 = CStr(TXTS_DATE.DispID_41)
  loc_127E82D: Set var_FC = Me.TXTE_DATE
  loc_127E833: var_FC.Text = var_F4
  loc_127E85C: If (Proc_183_48_F06B28(Me, var_F4, global_130) = 0) Then
  loc_127E864:   global_130 = 0
  loc_127E867:   Exit Sub
  loc_127E868: End If
  loc_127E87D: Set var_DC = CVar(CLng(2))(1)
  loc_127E89F: If (CStr(TXTE_DATE.DispID_41) = "Debit") Then
  loc_127E8A5:   var_98 = " AND VIEWLEDGER.DEBIT>0 "
  loc_127E8AB: Else
  loc_127E8C0:   Set var_DC = CVar(CLng(2))(1)
  loc_127E8D1:   var_F4 = CStr(TXTE_DATE.DispID_41)
  loc_127E8E2:   If (var_F4 = "Credit") Then
  loc_127E8E8:     var_98 = " AND VIEWLEDGER.Credit>0 "
  loc_127E8EB:   End If
  loc_127E8EB: End If
  loc_127E8F6: Set var_DC = Me.TEXT
  loc_127E8FC: Call 0.Method_Proc_245_70_127EBAC0 (CInt(&HC), var_FC, global_130)
  loc_127E90B: var_10C = Trim(CVar(var_FC))
  loc_127E925: If CBool(var_10C <> vbNullString) Then
  loc_127E939:   Set var_DC = Me.TEXT
  loc_127E93F:   Call 0.Method_Proc_245_70_127EBAC0 (CInt(&HC), var_FC, var_F4)
  loc_127E947:   " And VIEWLEDGER.LOGSite_Code='" = var_FC.Tag
  loc_127E957:   var_94 = var_F6 & var_F4 & "'"
  loc_127E96B: Else
  loc_127E979:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_127E97F: End If
  loc_127E99C: Proc_183_7_EB17D4(var_10C, CVar(Me.TXTS_DATE), "SELECT MAX(VIEWLEDGER.PARTY) AS PARTY_cODE,MAX(SUBGROUP.NAME) AS PARTY_NAME, ", var_380)
  loc_127E9A4: var_11C = -1 & var_10C 
  loc_127E9A8: var_B8 = " AS V_DATE,Sum(DEBIT) AS DR,Sum(CREDIT) AS CR,'' AS v_type, 0 AS v_no,'' AS v_add,'' AS CHQ_NO,'' AS CHQ_DATE,'' AS CLG_DATE,'' AS NARRATION,'Opening Balance' AS Name1 FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = VIEWLEDGER.PARTY WHERE V_DATE<"
  loc_127E9AD: var_130 = var_11C & var_B8 
  loc_127E9BC: Proc_183_7_EB17D4(var_150, CVar(Me.TXTS_DATE), var_130)
  loc_127E9C8: var_C8 = " "
  loc_127E9F7: var_1F0 = "Union SELECT VIEWLEDGER.PARTY AS PARTY_CODE,SUBGROUP.NAME AS PARTY_NAME,V_DATE,DEBIT AS DR,CREDIT AS CR,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,NARR AS NARRATION,SUBGROUP1.NAME AS NAME1 FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = VIEWLEDGER.PARTY) LEFT JOIN SUBGROUP SUBGROUP1 ON VIEWLEDGER.party1=SUBGROUP1.SUBCODE WHERE V_DATE BETWEEN "
  loc_127EA0B: Proc_183_7_EB17D4(var_220, CVar(Me.TXTS_DATE))
  loc_127EA13: var_230 = var_DC & var_150 & var_C8 & CVar(var_90) & " AND SUBGROUP.NATURE='Bank' " & CVar(var_94) & " GROUP BY PARTY " & var_1F0 & var_220 
  loc_127EA2B: Proc_183_7_EB17D4(var_270, CVar(Me.TXTE_DATE))
  loc_127EA75: var_360 = var_230 & " AND " & var_270 & " " & CVar(var_90) & " " & CVar(var_98) & " AND SUBGROUP.NATURE='Bank' " & CVar(var_94) & vbNullString 
  loc_127EA79: var_F4 = CStr(var_360)
  loc_127EA83: unk_58C129.Execute var_F4, TXTE_DATE.DispID_41, 
  loc_127EA8E: Set var_88 = var_DC
  loc_127EAE6: If (var_88.RecordCount <= 0) Then
  loc_127EAEF:   Call 0.Method_arg_50 (var_F4)
  loc_127EB10:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), var_11C, var_130)
  loc_127EB25:   global_130 = 0
  loc_127EB28:   Exit Sub
  loc_127EB29: End If
  loc_127EB35: Call 0.Method_arg_110 (var_DC)
  loc_127EB40: MemVar_1F951E8 = var_DC
  loc_127EB60: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_127EB68: Call 0.Method_arg_2C (var_C8)
  loc_127EB75: Set var_88 = Nothing
  loc_127EB78: Exit Sub
  loc_127EB79: ' Referenced from: 127E664
  loc_127EB7E: global_130 = 0
  loc_127EB87: Call 0.Method_arg_50 (var_F4, global_130)
  loc_127EB9C: Proc_183_57_104B0BC(var_F4, "BankReg")
  loc_127EBA8: Exit Sub
  loc_127EBA9: var_A02 = CVar(global_130) 'Integer
End Sub

Public Sub Proc_245_71_14C1B68
  'Data Table: 58C0E4
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_118 As Variant
  Dim var_110 As String
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_D4 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_F8 As Fields15
  Dim var_170 As Variant
  Dim var_90 As Recordset15
  Dim var_10A As Integer
  Dim var_1F8 As Fields15
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_1E0 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_26C As Variant
  Dim var_270 As Recordset15
  Dim var_8C As Recordset15
  loc_14C0E84: On Error Goto loc_14C1B38
  loc_14C0E9C: Set var_F8 = CVar(CLng(0))(0)
  loc_14C0EC0: Call Proc_245_64_F51BE4(CInt(0), CStr(var_108))
  loc_14C0ED4: If (var_112 = 0) Then
  loc_14C0EDC:   global_130 = 0
  loc_14C0EDF:   Exit Sub
  loc_14C0EE0: End If
  loc_14C0EF5: Set var_F8 = CVar(CLng(1))(0)
  loc_14C0F19: Call Proc_245_64_F51BE4(CInt(1), CStr(var_108))
  loc_14C0F2D: If (var_112 = 0) Then
  loc_14C0F35:   global_130 = 0
  loc_14C0F38:   Exit Sub
  loc_14C0F39: End If
  loc_14C0F3F: global_84 = vbNullString
  loc_14C0F46: var_A0 = vbNullString
  loc_14C0F55: Set var_F8 = Me.Check1
  loc_14C0F5B: Call 0.Method_Proc_245_71_14C1B680 (1, var_118, var_10A, global_130, var_112)
  loc_14C0F63: TXTS_DATE.DispID_41 = var_118.Value
  loc_14C0F79: If (CLng(var_10A) = 0) Then
  loc_14C0F97:   Call Proc_245_61_127C7BC(global_96, 1, CByte(1))
  loc_14C0FA2:   global_84 = var_110
  loc_14C0FB2:   If (global_130 = 0) Then
  loc_14C0FB5:     Exit Sub
  loc_14C0FB6:   End If
  loc_14C0FB6: End If
  loc_14C0FC1: If (global_84 <> vbNullString) Then
  loc_14C0FE6:   var_A0 = " AND SUBGROUP.GROUPCODE IN (" & global_84 & ") AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_14C0FF2: End If
  loc_14C1007: Set var_F8 = CVar(CLng(0))(1)
  loc_14C1025: Me.TXTS_DATE.Text = CStr(Check1.DispID_41)
  loc_14C104C: Set var_F8 = CVar(CLng(1))(1)
  loc_14C105D: var_110 = CStr(TXTS_DATE.DispID_41)
  loc_14C1064: Set var_118 = Me.TXTE_DATE
  loc_14C106A: var_118.Text = var_110
  loc_14C1093: If (Proc_183_48_F06B28(Me, var_110, global_130) = 0) Then
  loc_14C109B:   global_130 = 0
  loc_14C109E:   Exit Sub
  loc_14C109F: End If
  loc_14C10AA: Set var_F8 = Me.TEXT
  loc_14C10B0: Call 0.Method_Proc_245_71_14C1B680 (CInt(&HC), var_118, global_130)
  loc_14C10BF: var_130 = Trim(CVar(var_118))
  loc_14C10D9: If CBool(var_130 <> vbNullString) Then
  loc_14C10ED:   Set var_F8 = Me.TEXT
  loc_14C10F3:   Call 0.Method_Proc_245_71_14C1B680 (CInt(&HC), var_118, var_110)
  loc_14C10FB:   " And LEDGER.Site_Code='" = var_118.Tag
  loc_14C110B:   var_B4 = var_112 & var_110 & "'"
  loc_14C111F: Else
  loc_14C112D:   var_B4 = " And LEDGER.Site_Code='" & MemVar_1F95078 & "'"
  loc_14C1133: End If
  loc_14C1140: var_C4 = "Select SUBGROUP.GroupCode,Name,SubCode,MAX(GroupName) AS GNAME From SubGroup LEFT JOIN AcGroup on AcGroup.GROUPCODE=SUBGROUP.GROUPCODE Where SubCode Not In (Select DISTINCT SubCode From Ledger Where V_Date Between "
  loc_14C1150: Proc_183_7_EB17D4(var_130, CVar(Me.TXTS_DATE), var_C4, var_1E0)
  loc_14C1158: var_140 = -1 & var_130 
  loc_14C1161: var_150 = var_140 & " And " 
  loc_14C1169: var_160 = CVar(Me.TXTE_DATE) 'Address
  loc_14C1170: Proc_183_7_EB17D4(var_170, var_160, var_150)
  loc_14C1194: var_1C0 = var_F8 & var_170 & ") " & CVar(var_A0) & " GROUP BY SubGroup.GroupCode,SubGroup.Name,SubGroup.SubCode" 
  loc_14C1198: var_110 = CStr(var_1C0)
  loc_14C11A2: unk_58C129.Execute var_110, TXTS_DATE.DispID_41, 
  loc_14C11AD: Set var_88 = var_F8
  loc_14C11E3: If (var_88.RecordCount <= 0) Then
  loc_14C11EC:   Call 0.Method_arg_50 (var_110)
  loc_14C120D:   MsgBox("** No Records Found to Print **", &H40, CVar(var_110), var_140, var_150)
  loc_14C1222:   global_130 = 0
  loc_14C1225:   Exit Sub
  loc_14C1226: End If
  loc_14C1236: Set var_F8 = New
  loc_14C1245: Call 0.Method_arg_1A8 (var_F8, var_118)
  loc_14C1250: Set var_8C = var_F8
  loc_14C1259: Set var_8C = var_118
  loc_14C1263: ' Referenced from: 14C1A7E
  loc_14C1272: If Not(Me.Recordset15.EOF) Then
  loc_14C1278:   var_98 = vbNullString
  loc_14C127E:   var_9C = vbNullString
  loc_14C128E:   var_D4 = "Select ISNULL(sum(AmtDr),0)-ISNULL(sum(AmtCr),0) As OpBal  From Ledger Where SubCode='"
  loc_14C12D5:   Proc_183_7_EB17D4(var_160, CVar(Me.TXTS_DATE), " And " & var_88.Fields.Item("subcode").Value & "' And V_DATE<", var_1C0)
  loc_14C12DD:   var_170 = -1 & var_160 
  loc_14C1307:   unk_58C129.Execute CStr(var_170 & " " & CVar(var_B4) & vbNullString), var_1F8, global_130
  loc_14C1312:   Set var_90 = var_1F8
  loc_14C134C:   If (var_90.RecordCount > 0) Then
  loc_14C1389:     var_1F8 = var_90.Fields
  loc_14C13B5:     var_A8 = CSng(IIf(IsNull(CVar(var_90.Fields.Item("OpBal"))), 0, CVar(var_1F8.Item("OpBal"))))
  loc_14C13CC:   End If
  loc_14C13D9:   var_D4 = "SELECT ISNULL(sum(AmtDr),0)-ISNULL(sum(AmtCr),0) AS ClBal FROM Ledger Where SubCode='"
  loc_14C1420:   Proc_183_7_EB17D4(var_160, CVar(Me.TXTE_DATE), "OpBal" & var_88.Fields.Item("subcode").Value & "' And V_Date<=", var_1C0)
  loc_14C1428:   var_170 = -1 & var_160 
  loc_14C1452:   unk_58C129.Execute CStr(var_170 & " " & CVar(var_B4) & vbNullString), var_1F8, var_A8
  loc_14C145D:   Set var_90 = var_1F8
  loc_14C1497:   If (var_90.RecordCount > 0) Then
  loc_14C14C2:     var_10A = IsNull(CVar(var_90.Fields.Item("clbal")))
  loc_14C14D4:     var_1F8 = var_90.Fields
  loc_14C1500:     var_B0 = CSng(IIf(var_10A, 0, CVar(var_1F8.Item("clbal"))))
  loc_14C1517:   End If
  loc_14C1524:   var_D4 = "SELECT subgroup.Name,V_DATE,AMTCR,AMTDR,v_type,v_no FROM LEDGER LEFT JOIN subgroup ON LEDGER.CONTRASUB=subgroup.SubCode WHERE LEDGER.SUBCODE='"
  loc_14C156B:   Proc_183_7_EB17D4(var_160, CVar(Me.TXTS_DATE), var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<", var_1C0, -1)
  loc_14C159D:   unk_58C129.Execute CStr(var_1F8 & var_160 & " AND AMTDR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC"), var_B0, var_10A
  loc_14C15A8:   Set var_90 = var_1F8
  loc_14C15E2:   If (var_90.RecordCount > 0) Then
  loc_14C1624:     var_150 = (CVar(CStr(var_90.Fields.Item("V_DATE").Value)) + Space(1))
  loc_14C163A:     var_1F8 = var_90.Fields
  loc_14C164A:     var_160 = var_1F8.Item("V_Type").Value
  loc_14C1657:     var_180 = (CVar(Me.TXTS_DATE) + CVar(CStr(var_160)))
  loc_14C166B:     var_1A0 = (var_1F8 & var_160 & " AND AMTDR>0 " + Space(1))
  loc_14C1691:     var_1C0 = var_90.Fields.Item("V_NO").Value
  loc_14C169E:     var_214 = (var_1F8 & var_160 & " AND AMTDR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC" + CVar(CStr(var_1C0)))
  loc_14C16B2:     var_234 = (var_214 + Space(1))
  loc_14C16E5:     var_26C = (var_234 + CVar(CStr(var_90.Fields.Item("AmtDr").Value)))
  loc_14C16EA:     var_98 = CStr(var_26C)
  loc_14C1725:   End If
  loc_14C1732:   var_D4 = "SELECT subgroup.Name,V_DATE,AMTcr,AMTDR,v_type,v_no FROM LEDGER LEFT JOIN subgroup ON LEDGER.CONTRASUB=subgroup.SubCode WHERE LEDGER.SUBCODE='"
  loc_14C1779:   Proc_183_7_EB17D4(var_160, CVar(Me.TXTS_DATE), var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<", var_1C0)
  loc_14C1781:   var_170 = -1 & var_160 
  loc_14C17A1:   var_110 = CStr(CVar(CStr(var_160)) & " AND AMTCR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC")
  loc_14C17AB:   unk_58C129.Execute var_110, var_1F8, var_10A
  loc_14C17B6:   Set var_90 = var_1F8
  loc_14C17F0:   If (var_90.RecordCount > 0) Then
  loc_14C17F9:     var_C4 = "V_DATE"
  loc_14C181F:     var_140 = CVar(CStr(var_90.Fields.Item(var_C4).Value)) 'String
  loc_14C1832:     var_150 = (var_140 + Space(1))
  loc_14C183C:     var_D4 = "V_Type"
  loc_14C1865:     var_180 = (CVar(Me.TXTS_DATE) + CVar(CStr(var_90.Fields.Item(var_D4).Value)))
  loc_14C1879:     var_1A0 = (CVar(CStr(var_90.Fields.Item(var_D4).Value)) & " AND AMTCR>0 " + Space(1))
  loc_14C18AC:     var_214 = (CVar(CStr(var_90.Fields.Item(var_D4).Value)) & " AND AMTCR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC" + CVar(CStr(var_90.Fields.Item("V_NO").Value)))
  loc_14C18C0:     var_234 = (var_214 + Space(1))
  loc_14C18F3:     var_26C = (var_234 + CVar(CStr(var_90.Fields.Item("AmtCr").Value)))
  loc_14C18F8:     var_9C = CStr(var_26C)
  loc_14C1933:   End If
  loc_14C1936:   Set var_270 = var_8C 
  loc_14C1945:   var_270.AddNew var_C4, var_D4
  loc_14C1969:   var_108 = CVar(var_88.Fields.Item("Name")) 'Address
  loc_14C1977:   var_270.Collect = "ACCNAME"
  loc_14C19A2:   var_130 = Format(var_A8, "0.00")
  loc_14C19B4:   var_270.Collect = "OpBal"
  loc_14C19E0:   var_130 = Format(var_B0, "0.00")
  loc_14C19E9:   var_E4 = "clbal"
  loc_14C19F2:   var_270.Collect = var_E4
  loc_14C1A01:   var_D4 = CVar(var_98) 'String
  loc_14C1A0E:   var_270.Collect = "LastDrVNo"
  loc_14C1A16:   var_D4 = CVar(var_9C) 'String
  loc_14C1A23:   var_270.Collect = "LastCrVNo"
  loc_14C1A2B:   var_C4 = "GName"
  loc_14C1A37:   var_F8 = var_88.Fields
  loc_14C1A47:   var_108 = CVar(var_F8.Item(var_C4)) 'Address
  loc_14C1A4C:   var_D4 = "GroupName"
  loc_14C1A55:   var_270.Collect = var_D4
  loc_14C1A6B:   var_270.Update var_C4, var_D4
  loc_14C1A72:   Set var_270 = Nothing 
  loc_14C1A79:   var_88.MoveNext
  loc_14C1A7E:   GoTo loc_14C1263
  loc_14C1A81: End If
  loc_14C1A95: If (var_8C.RecordCount <= 0) Then
  loc_14C1A9E:   Call 0.Method_arg_50 (var_110, var_108, var_D4, var_D4, var_130, 1)
  loc_14C1AAC:   var_130 = CVar(var_110) 'String
  loc_14C1ABF:   MsgBox("** No Records Found to Print **", &H40, var_130, var_140, CVar(Me.TXTS_DATE))
  loc_14C1AD4:   global_130 = 0
  loc_14C1AD7:   Exit Sub
  loc_14C1AD8: End If
  loc_14C1AE4: Call 0.Method_arg_10C (var_F8, global_130, 1, var_130)
  loc_14C1AEF: MemVar_1F951E8 = var_F8
  loc_14C1B0F: Call 0.Method_arg_64 (var_F8, CVar(var_8C), var_D4, var_E4)
  loc_14C1B17: Call 0.Method_arg_2C (1, 1)
  loc_14C1B24: Set var_88 = Nothing
  loc_14C1B2C: Set var_8C = Nothing
  loc_14C1B34: Set var_90 = Nothing
  loc_14C1B37: Exit Sub
  loc_14C1B38: ' Referenced from: 14C0E84
  loc_14C1B46: Call 0.Method_arg_50 (var_110, 0)
  loc_14C1B5B: Proc_183_57_104B0BC(var_110, "NonTrans")
  loc_14C1B67: Exit Sub
End Sub

Public Sub Proc_245_72_1270E14
  'Data Table: 58C0E4
  Dim var_C8 As Variant
  Dim var_F4 As String
  Dim var_FC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_B8 As String
  Dim var_160 As Variant
  Dim var_230 As Variant
  Dim var_240 As String
  Dim var_2B0 As Variant
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim var_A02 As Variant
  loc_12708CC: On Error Goto loc_1270DE1
  loc_12708E4: Set var_DC = CVar(CLng(0))(0)
  loc_1270908: Call Proc_245_64_F51BE4(CInt(0), CStr(var_EC))
  loc_127091C: If (var_F6 = 0) Then
  loc_1270924:   global_130 = 0
  loc_1270927:   Exit Sub
  loc_1270928: End If
  loc_127093D: Set var_DC = CVar(CLng(1))(0)
  loc_1270961: Call Proc_245_64_F51BE4(CInt(1), CStr(var_EC))
  loc_1270975: If (var_F6 = 0) Then
  loc_127097D:   global_130 = 0
  loc_1270980:   Exit Sub
  loc_1270981: End If
  loc_1270996: Set var_DC = CVar(CLng(2))(0)
  loc_12709BA: Call Proc_245_64_F51BE4(CInt(2), CStr(var_EC))
  loc_12709CE: If (var_F6 = 0) Then
  loc_12709D6:   global_130 = 0
  loc_12709D9:   Exit Sub
  loc_12709DA: End If
  loc_12709EF: Set var_DC = CVar(CLng(0))(1)
  loc_1270A0D: Me.TXTS_DATE.Text = CStr(TXTS_DATE.DispID_41)
  loc_1270A34: Set var_DC = CVar(CLng(1))(1)
  loc_1270A45: var_F4 = CStr(TXTS_DATE.DispID_41)
  loc_1270A4C: Set var_FC = Me.TXTE_DATE
  loc_1270A52: var_FC.Text = var_F4
  loc_1270A7B: If (Proc_183_48_F06B28(Me, global_130, var_F6, TXTS_DATE.DispID_41, global_130) = 0) Then
  loc_1270A83:   global_130 = 0
  loc_1270A86:   Exit Sub
  loc_1270A87: End If
  loc_1270A92: Set var_DC = Me.TEXT
  loc_1270A98: Call 0.Method_Proc_245_72_1270E140 (CInt(&HC), var_FC, global_130, var_F6)
  loc_1270AC1: If CBool(Trim(CVar(var_FC)) <> vbNullString) Then
  loc_1270AD5:   Set var_DC = Me.TEXT
  loc_1270ADB:   Call 0.Method_Proc_245_72_1270E140 (CInt(&HC), var_FC, var_F4, " And VIEWLEDGER.LOGSite_Code='")
  loc_1270AE3:   TXTS_DATE.DispID_41 = var_FC.Tag
  loc_1270AF3:   var_98 = global_130 & var_F4 & "'"
  loc_1270B07: Else
  loc_1270B15:   var_98 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_1270B1B: End If
  loc_1270B30: Set var_DC = CVar(CLng(2))(1)
  loc_1270B5D: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_1270B8A: Set var_DC = CVar(CLng(2))(2)
  loc_1270B9B: var_10C = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_1270BAA: var_8C = CStr(Trim(var_10C))
  loc_1270BD5: Proc_183_7_EB17D4(var_10C, CVar(Me.TXTS_DATE), CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN "))
  loc_1270BEE: var_150 = CVar(Me.TXTE_DATE) 'Address
  loc_1270BF5: Proc_183_7_EB17D4(var_160, var_150)
  loc_1270C43: Proc_183_7_EB17D4(var_10C, CVar(Me.TXTS_DATE), "SELECT 1 AS TT,", var_2F0)
  loc_1270C4B: var_11C = -1 & var_10C 
  loc_1270C4F: var_B8 = " AS V_DATE,SUM(credit) AS CR,SUM(debit) AS DR,'OP' AS v_type,0 AS v_no,'' AS v_add,'' AS CHQ_NO,NULL AS CHQ_DATE,"
  loc_1270C54: var_130 = CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN ") & var_B8 
  loc_1270C63: Proc_183_7_EB17D4(var_150, CVar(Me.TXTS_DATE), var_130)
  loc_1270C6F: var_C8 = " AS CLG_DATE,'' AS NARRATION,MAX(PARTY_NAME) AS PARTYNAME,MAX(PARTY_LIST.ADD1) AS ADDRESS1,MAX(PARTY_LIST.ADD2) AS ADDRESS2,MAX(CITY_NAME) AS CITYNAME,'Opening Balance' AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE WHERE PARTY='"
  loc_1270C96: Proc_183_7_EB17D4(var_1C0, CVar(Me.TXTS_DATE))
  loc_1270CBA: var_230 = var_DC & var_150 & var_C8 & CVar(var_8C) & "' AND CLG_DATE<" & var_1C0 & " AND CLG_DATE IS NOT NULL " & CVar(var_98) & " GROUP BY VIEWLEDGER.PARTY " 
  loc_1270CBE: var_240 = "UNION SELECT 2 AS TT,V_DATE,credit AS CR,debit AS DR,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,MNARR+' '+NARR AS NARRATION,PARTY_NAME AS PARTYNAME,PARTY_LIST.ADD1 AS ADDRESS1,PARTY_LIST.ADD2 AS ADDRESS2,CITY_NAME AS CITYNAME,SUBGROUP.NAME AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE "
  loc_1270CE0: var_2B0 = var_230 & var_240 & CVar(CStr(var_F6 & var_10C & " AND " & var_DC & var_150 & " AND CLG_DATE IS NOT NULL")) & " " & CVar(var_98) 
  loc_1270CED: var_F4 = CStr(var_2B0 & vbNullString)
  loc_1270CF7: unk_58C129.Execute var_F4, TXTS_DATE.DispID_41, 
  loc_1270D02: Set var_88 = var_DC
  loc_1270D4E: If (var_88.RecordCount <= 0) Then
  loc_1270D57:   Call 0.Method_arg_50 (var_F4)
  loc_1270D78:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN "), var_130)
  loc_1270D8D:   global_130 = 0
  loc_1270D90:   Exit Sub
  loc_1270D91: End If
  loc_1270D9D: Call 0.Method_arg_118 (var_DC)
  loc_1270DA8: MemVar_1F951E8 = var_DC
  loc_1270DC8: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_1270DD0: Call 0.Method_arg_2C (var_C8)
  loc_1270DDD: Set var_88 = Nothing
  loc_1270DE0: Exit Sub
  loc_1270DE1: ' Referenced from: 12708CC
  loc_1270DE6: global_130 = 0
  loc_1270DEF: Call 0.Method_arg_50 (var_F4, global_130)
  loc_1270E04: Proc_183_57_104B0BC(var_F4, "Clg")
  loc_1270E10: Exit Sub
  loc_1270E11: var_A02 = CVar(global_130) 'Integer
End Sub

Public Sub Proc_245_73_11F9200
  'Data Table: 58C0E4
  Dim var_C8 As Long
  Dim var_F4 As String
  Dim var_FC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_B8 As String
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  loc_11F8D84: On Error Goto loc_11F91CD
  loc_11F8D9C: Set var_DC = CVar(CLng(0))(0)
  loc_11F8DC0: Call Proc_245_64_F51BE4(CInt(0), CStr(var_EC))
  loc_11F8DD4: If (var_F6 = 0) Then
  loc_11F8DDC:   global_130 = 0
  loc_11F8DDF:   Exit Sub
  loc_11F8DE0: End If
  loc_11F8DF5: Set var_DC = CVar(CLng(1))(0)
  loc_11F8E19: Call Proc_245_64_F51BE4(CInt(1), CStr(var_EC))
  loc_11F8E2D: If (var_F6 = 0) Then
  loc_11F8E35:   global_130 = 0
  loc_11F8E38:   Exit Sub
  loc_11F8E39: End If
  loc_11F8E4E: Set var_DC = CVar(CLng(2))(0)
  loc_11F8E72: Call Proc_245_64_F51BE4(CInt(2), CStr(var_EC))
  loc_11F8E86: If (var_F6 = 0) Then
  loc_11F8E8E:   global_130 = 0
  loc_11F8E91:   Exit Sub
  loc_11F8E92: End If
  loc_11F8EA7: Set var_DC = CVar(CLng(0))(1)
  loc_11F8EC5: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_11F8EEC: Set var_DC = CVar(CLng(1))(1)
  loc_11F8EFD: var_F4 = CStr(TXTS_DATE.DispID_41)
  loc_11F8F04: Set var_FC = Me.TXTE_DATE
  loc_11F8F0A: var_FC.Text = var_F4
  loc_11F8F33: If (Proc_183_48_F06B28(Me, global_130, var_F6, TXTE_DATE.DispID_41, global_130) = 0) Then
  loc_11F8F3B:   global_130 = 0
  loc_11F8F3E:   Exit Sub
  loc_11F8F3F: End If
  loc_11F8F4A: Set var_DC = Me.TEXT
  loc_11F8F50: Call 0.Method_Proc_245_73_11F92000 (CInt(&HC), var_FC, global_130, var_F6)
  loc_11F8F79: If CBool(Trim(CVar(var_FC)) <> vbNullString) Then
  loc_11F8F8D:   Set var_DC = Me.TEXT
  loc_11F8F93:   Call 0.Method_Proc_245_73_11F92000 (CInt(&HC), var_FC, var_F4, " And VIEWLEDGER.LOGSite_Code='")
  loc_11F8F9B:   TXTE_DATE.DispID_41 = var_FC.Tag
  loc_11F8FAB:   var_98 = global_130 & var_F4 & "'"
  loc_11F8FBF: Else
  loc_11F8FCD:   var_98 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_11F8FD3: End If
  loc_11F8FE8: Set var_DC = CVar(CLng(2))(1)
  loc_11F9015: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_11F9035: var_C8 = 2
  loc_11F9042: Set var_DC = CVar(CLng(2))(var_C8)
  loc_11F9053: var_10C = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_11F907F: var_11C = CVar(" WHERE PARTY='" & CStr(Trim(var_10C)) & "' AND V_date BETWEEN ") 'String
  loc_11F9086: var_EC = CVar(Me.TXTS_DATE) 'Address
  loc_11F908D: Proc_183_7_EB17D4(var_10C, var_EC, var_11C)
  loc_11F9095: var_130 = var_F6 & var_10C 
  loc_11F90AD: Proc_183_7_EB17D4(var_160, CVar(Me.TXTE_DATE))
  loc_11F90B9: var_B8 = " AND CHQ_NO<> '' AND CHQ_NO IS NOT NULL AND CLG_DATE IS NULL"
  loc_11F90F2: var_F4 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,NARR AS NARRATION,PARTY_NAME,PARTY_LIST.ADD1,PARTY_LIST.ADD2,CITY_NAME,SUBGROUP.NAME AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE " & CStr(var_130 & " AND " & var_160 & var_B8)
  loc_11F9109: unk_58C129.Execute var_F4 & " " & var_98, var_EC, -1
  loc_11F9114: Set var_88 = var_DC
  loc_11F913A: If (var_88.RecordCount <= 0) Then
  loc_11F9143:   Call 0.Method_arg_50 (var_F4, var_DC)
  loc_11F9164:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), var_11C, var_130)
  loc_11F9179:   global_130 = 0
  loc_11F917C:   Exit Sub
  loc_11F917D: End If
  loc_11F9189: Call 0.Method_arg_114 (var_DC, global_130)
  loc_11F9194: MemVar_1F951E8 = var_DC
  loc_11F91B4: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_11F91BC: Call 0.Method_arg_2C (var_C8)
  loc_11F91C9: Set var_88 = Nothing
  loc_11F91CC: Exit Sub
  loc_11F91CD: ' Referenced from: 11F8D84
  loc_11F91DB: Call 0.Method_arg_50 (var_F4, 0)
  loc_11F91F0: Proc_183_57_104B0BC(var_F4, "ClgNot")
  loc_11F91FC: Exit Sub
End Sub

Public Sub Proc_245_74_13B4588(arg_C) '13B4588
  'Data Table: 58C0E4
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_108 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim var_E8 As Fields15
  Dim var_C4 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_8C As Recordset15
  Dim var_1DA As Integer
  Dim var_1D8 As Variant
  Dim var_9A As Integer
  loc_13B3C70: On Error Goto loc_13B4558
  loc_13B3C88: Set var_E8 = CVar(CLng(0))(0)
  loc_13B3CAC: Call Proc_245_64_F51BE4(CInt(0), CStr(var_F8))
  loc_13B3CC0: If (var_102 = 0) Then
  loc_13B3CC8:   global_130 = 0
  loc_13B3CCB:   Exit Sub
  loc_13B3CCC: End If
  loc_13B3CE1: Set var_E8 = CVar(CLng(1))(0)
  loc_13B3D05: Call Proc_245_64_F51BE4(CInt(1), CStr(var_F8))
  loc_13B3D19: If (var_102 = 0) Then
  loc_13B3D21:   global_130 = 0
  loc_13B3D24:   Exit Sub
  loc_13B3D25: End If
  loc_13B3D3A: Set var_E8 = CVar(CLng(2))(0)
  loc_13B3D5E: Call Proc_245_64_F51BE4(CInt(2), CStr(var_F8))
  loc_13B3D72: If (var_102 = 0) Then
  loc_13B3D7A:   global_130 = 0
  loc_13B3D7D:   Exit Sub
  loc_13B3D7E: End If
  loc_13B3D93: Set var_E8 = CVar(CLng(0))(1)
  loc_13B3DB1: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_13B3DD8: Set var_E8 = CVar(CLng(1))(1)
  loc_13B3DE9: var_100 = CStr(TXTS_DATE.DispID_41)
  loc_13B3DF0: Set var_108 = Me.TXTE_DATE
  loc_13B3DF6: var_108.Text = var_100
  loc_13B3E1F: If (Proc_183_48_F06B28(Me, global_130, var_102, TXTE_DATE.DispID_41, global_130) = 0) Then
  loc_13B3E27:   global_130 = 0
  loc_13B3E2A:   Exit Sub
  loc_13B3E2B: End If
  loc_13B3E36: Set var_E8 = Me.TEXT
  loc_13B3E3C: Call 0.Method_Proc_245_74_13B45880 (CInt(&HC), var_108, global_130, var_102)
  loc_13B3E65: If CBool(Trim(CVar(var_108)) <> vbNullString) Then
  loc_13B3E79:   Set var_E8 = Me.TEXT
  loc_13B3E7F:   Call 0.Method_Proc_245_74_13B45880 (CInt(&HC), var_108, var_100, " And VIEWLEDGER.LOGSite_Code='")
  loc_13B3E87:   TXTE_DATE.DispID_41 = var_108.Tag
  loc_13B3E97:   var_A0 = global_130 & var_100 & "'"
  loc_13B3EAB: Else
  loc_13B3EB2:   var_100 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078
  loc_13B3EB9:   var_A0 = var_100 & "'"
  loc_13B3EBF: End If
  loc_13B3ECA: Set var_E8 = Me.TEXT
  loc_13B3ED0: Call 0.Method_Proc_245_74_13B45880 (CInt(&HC), var_108)
  loc_13B3ED8: var_F8 = CVar(var_108) 'Address
  loc_13B3EF9: If CBool(Trim(var_F8) <> vbNullString) Then
  loc_13B3F0D:   Set var_E8 = Me.TEXT
  loc_13B3F13:   Call 0.Method_Proc_245_74_13B45880 (CInt(&HC), var_108, var_100)
  loc_13B3F1B:   " And LEDGER.LOGSite_Code='" = var_108.Tag
  loc_13B3F2B:   var_A4 = var_102 & var_100 & "'"
  loc_13B3F3F: Else
  loc_13B3F4D:   var_A4 = " And LEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_13B3F53: End If
  loc_13B3F68: Set var_E8 = CVar(CLng(2))(1)
  loc_13B3F95: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_13B3FD3: var_118 = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_13B3FE2: var_90 = CStr(Trim(var_118))
  loc_13B4015: unk_58C129.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "'", var_F8, -1
  loc_13B4020: Set var_88 = CVar(CLng(2))(2)
  loc_13B4044: If (var_88.RecordCount > 0) Then
  loc_13B4059:   var_E8 = var_88.Fields
  loc_13B40C7:   If CBool((var_E8.Item("GroupNature").Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_13B40DE:     var_100 = "SELECT SUM(CREDIT)-SUM(DEBIT) AS OPBAL from VIEWLEDGER WHERE PARTY='" & var_90
  loc_13B40EC:     var_F8 = CVar(Me.TXTS_DATE) 'Address
  loc_13B40F3:     Proc_183_7_EB17D4(var_118, var_F8, CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_DATE<"), var_188)
  loc_13B40FB:     var_148 = -1 & var_118 
  loc_13B410E:     var_168 = var_148 & " " & CVar(var_A0) 
  loc_13B4125:     unk_58C129.Execute CStr(var_168 & vbNullString), var_E8, var_E8
  loc_13B4130:     Set var_8C = var_E8
  loc_13B4153:   Else
  loc_13B4167:     var_100 = "SELECT SUM(CREDIT)-SUM(DEBIT) AS OPBAL from VIEWLEDGER WHERE PARTY='" & var_90
  loc_13B416E:     var_118 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_dATE>=") 'String
  loc_13B417C:     Proc_183_7_EB17D4(var_F8, MemVar_1F950F4, var_118, var_1D8)
  loc_13B4184:     var_128 = -1 & var_F8 
  loc_13B419C:     Proc_183_7_EB17D4(var_168, CVar(Me.TXTS_DATE), CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_DATE<") & " AND V_DATE<")
  loc_13B41A4:     var_178 = var_E8 & var_168 
  loc_13B41CE:     unk_58C129.Execute CStr(var_178 & " " & CVar(var_A0) & vbNullString), TXTE_DATE.DispID_41, 
  loc_13B41D9:     Set var_8C = var_E8
  loc_13B41FF:   End If
  loc_13B41FF: End If
  loc_13B4213: If (var_8C.RecordCount > 0) Then
  loc_13B4225:   var_E8 = var_8C.Fields
  loc_13B4235:   var_F8 = CVar(var_E8.Item("OpBal")) 'Address
  loc_13B423C:   Proc_183_3_E7DD58(var_118)
  loc_13B4248:   global_132 = CSng(var_118)
  loc_13B4258: Else
  loc_13B425E:   global_132 = CDbl(0)
  loc_13B4261: End If
  loc_13B4264: var_1DA = arg_C
  loc_13B426D: If (var_1DA = 1) Then
  loc_13B4284:   var_100 = "SELECT ISNULL(SUM(AMTDR),0) AS DEB,ISNULL(SUM(AMTCR),0) AS CRED,V_DATE from LEDGER WHERE SUBCODE='" & var_90
  loc_13B428B:   var_128 = CVar(var_100 & "' AND V_DATE BETWEEN ") 'String
  loc_13B4292:   var_F8 = CVar(Me.TXTS_DATE) 'Address
  loc_13B4299:   Proc_183_7_EB17D4(var_118, var_F8, var_128, var_1EC, -1)
  loc_13B42A1:   var_148 = var_E8 & var_118 
  loc_13B42B9:   Proc_183_7_EB17D4(var_178, CVar(Me.TXTE_DATE), var_148 & " AND ", var_1DA)
  loc_13B42EB:   unk_58C129.Execute CStr(global_132 & var_178 & " " & CVar(var_A4) & " GROUP BY V_DATE ORDER BY V_DATE"), global_132, var_F8
  loc_13B42F6:   Set var_88 = var_E8
  loc_13B4332:   If (var_88.RecordCount <= 0) Then
  loc_13B433B:     Call 0.Method_arg_50 (var_100)
  loc_13B435C:     MsgBox("No Records To Print....", &H40, CVar(var_100), var_128, var_148)
  loc_13B4371:     global_130 = 0
  loc_13B4377:   Else
  loc_13B4382:     var_118 = "Paper Setting"
  loc_13B4398:     MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_118, var_128, var_148)
  loc_13B43B7:     Set var_108 = var_88
  loc_13B43C0:     Set var_E8 = Me 
  loc_13B43D0:     Call 0.Method_arg_170 (var_E8, var_108, global_132)
  loc_13B43DB:     Set var_88 = var_108
  loc_13B43E1:     var_9A = var_FA
  loc_13B43F0:     global_130 = 0
  loc_13B43F3:     GoTo loc_13B4547
  loc_13B43F9:   Else
  loc_13B440D:     var_100 = "SELECT V_TYPE,V_NO,V_ADD,V_SNO,PARTY,0 AS OPBAL,DEBIT AS DEB,CREDIT AS CRED,V_DATE,GROUPNATURE from VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY WHERE PARTY='" & var_90
  loc_13B4414:     var_128 = CVar(var_100 & "' AND V_DATE BETWEEN ") 'String
  loc_13B4422:     Proc_183_7_EB17D4(var_118, CVar(Me.TXTS_DATE), var_128, var_1EC, -1)
  loc_13B442A:     var_148 = var_E8 & var_118 
  loc_13B4442:     Proc_183_7_EB17D4(var_178, CVar(Me.TXTE_DATE), var_148 & " AND ", global_130)
  loc_13B444E:     var_C4 = " "
  loc_13B445A:     var_D4 = CVar(var_A0) 'String
  loc_13B4474:     unk_58C129.Execute CStr(var_9A & var_178 & var_C4 & var_D4 & vbNullString), var_FA, global_130
  loc_13B447F:     Set var_88 = var_E8
  loc_13B44BB:     If (var_88.RecordCount <= 0) Then
  loc_13B44C4:       Call 0.Method_arg_50 (var_100)
  loc_13B44E5:       MsgBox("** No Records Found to Print **", &H40, CVar(var_100), var_128, var_148)
  loc_13B44FA:       global_130 = 0
  loc_13B4500:     Else
  loc_13B450C:       Call 0.Method_arg_C0 (var_E8)
  loc_13B4517:       MemVar_1F951E8 = var_E8
  loc_13B4537:       Call 0.Method_arg_64 (var_E8, CVar(var_88), var_C4)
  loc_13B453F:       Call 0.Method_arg_2C (var_D4)
  loc_13B4547:     End If
  loc_13B4547:   End If
  loc_13B4547:   ' Referenced from:   13B43F3
  loc_13B4547: End If
  loc_13B454C: Set var_88 = Nothing
  loc_13B4554: Set var_8C = Nothing
  loc_13B4557: Exit Sub
  loc_13B4558: ' Referenced from: 13B3C70
  loc_13B4566: Call 0.Method_arg_50 (var_100, 0)
  loc_13B457B: Proc_183_57_104B0BC(var_100, "DailySumm")
  loc_13B4587: Exit Sub
End Sub

Public Sub Proc_245_75_1508BD8(arg_C) '1508BD8
  'Data Table: 58C0E4
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_FC As String
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_C0 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_E4 As Fields15
  Dim var_210 As Fields15
  Dim var_254 As Variant
  Dim var_20C As Recordset15
  Dim var_8C As Recordset15
  Dim var_256 As Integer
  Dim var_9A As Integer
  Dim var_F6 As Integer
  loc_1507D5C: On Error Goto loc_1508BA7
  loc_1507D74: Set var_E4 = CVar(CLng(0))(0)
  loc_1507D98: Call Proc_245_64_F51BE4(CInt(0), CStr(var_F4))
  loc_1507DAC: If (var_FE = 0) Then
  loc_1507DB4:   global_130 = 0
  loc_1507DB7:   Exit Sub
  loc_1507DB8: End If
  loc_1507DCD: Set var_E4 = CVar(CLng(1))(0)
  loc_1507DF1: Call Proc_245_64_F51BE4(CInt(1), CStr(var_F4))
  loc_1507E05: If (var_FE = 0) Then
  loc_1507E0D:   global_130 = 0
  loc_1507E10:   Exit Sub
  loc_1507E11: End If
  loc_1507E26: Set var_E4 = CVar(CLng(2))(0)
  loc_1507E4A: Call Proc_245_64_F51BE4(CInt(2), CStr(var_F4))
  loc_1507E5E: If (var_FE = 0) Then
  loc_1507E66:   global_130 = 0
  loc_1507E69:   Exit Sub
  loc_1507E6A: End If
  loc_1507E7F: Set var_E4 = CVar(CLng(0))(1)
  loc_1507E9D: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_1507EC4: Set var_E4 = CVar(CLng(1))(1)
  loc_1507EE2: Me.TXTE_DATE.Text = CStr(TXTS_DATE.DispID_41)
  loc_1507F0B: If (Proc_183_48_F06B28(Me, global_130, var_FE, TXTE_DATE.DispID_41, global_130) = 0) Then
  loc_1507F13:   global_130 = 0
  loc_1507F16:   Exit Sub
  loc_1507F17: End If
  loc_1507F2C: Set var_E4 = CVar(CLng(2))(1)
  loc_1507F53: Set var_104 = Me.TXTACC_CODE
  loc_1507F59: var_104.Text = CStr(Trim(CVar(CStr(TXTE_DATE.DispID_41))))
  loc_1507F86: Set var_E4 = CVar(CLng(2))(2)
  loc_1507FA6: var_90 = CStr(Trim(CVar(CStr(TXTACC_CODE.DispID_41))))
  loc_1507FCA: Set var_E4 = CVar(CLng(4))(2)
  loc_1507FFD: If CBool(Trim(CVar(CStr(TXTACC_CODE.DispID_41))) <> vbNullString) Then
  loc_150801A:   Set var_E4 = CVar(CLng(4))(2)
  loc_150802B:   var_114 = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_1508047:   var_A0 = CStr(" And VIEWLEDGER.Site_Code='" & Trim(var_114) & "'")
  loc_150805D: Else
  loc_150806B:   var_A0 = " And VIEWLEDGER.Site_Code='" & MemVar_1F95078 & "'"
  loc_1508071: End If
  loc_150807E: var_B0 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,NARR,NAME,MNARR,V_SNO,DOCID,VIEWLEDGER.SITE_CODE FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date BETWEEN "
  loc_150808E: Proc_183_7_EB17D4(var_114, CVar(Me.TXTS_DATE), var_B0, var_204, -1, var_E4)
  loc_1508096: var_124 = global_130 & var_114 
  loc_150809F: var_144 = var_124 & " AND " 
  loc_15080AE: Proc_183_7_EB17D4(var_174, CVar(Me.TXTE_DATE), var_144, var_FE)
  loc_15080E5: var_1E4 = TXTE_DATE.DispID_41 & var_174 & " AND V_TYPE='" & CVar(var_90) & "' " & CVar(var_A0) & " ORDER BY V_DATE,V_TYPE,V_NO,V_ADD,V_SNO" 
  loc_15080E9: var_FC = CStr(var_1E4)
  loc_15080F3: unk_58C129.Execute var_FC, global_130, var_FE
  loc_15080FE: Set var_88 = var_E4
  loc_1508138: If (var_88.RecordCount <= 0) Then
  loc_1508141:   Call 0.Method_arg_50 (var_FC)
  loc_1508162:   MsgBox("** No Records Found to Print **", &H40, CVar(var_FC), var_124, var_144)
  loc_1508177:   global_130 = 0
  loc_150817A:   Exit Sub
  loc_150817B: End If
  loc_150818B: Set var_E4 = New
  loc_150819A: Call 0.Method_arg_1B0 (var_E4, var_104)
  loc_15081A5: Set var_8C = var_E4
  loc_15081AE: Set var_8C = var_104
  loc_15081B8: ' Referenced from: 1508A28
  loc_15081BE: var_F6 = Me.Recordset15.EOF
  loc_15081C7: If Not(var_F6) Then
  loc_15081CD:   Set var_20C = var_8C 
  loc_15082EA:   var_254 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_15082EF:   var_94 = CStr(var_254)
  loc_15083A8:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_15083D9:   var_1E4 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_15083DE:   var_94 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_1508438:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_150846A:   var_184 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_150846F:   var_94 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_1508499:   var_C0 = vbNullString
  loc_15084AC:   var_B0 = (var_94 = vbNullString)
  loc_15084BB:   var_144 = (CVar(var_94) + IIf(var_B0, var_C0, "/"))
  loc_15084F8:   var_194 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_1508523:   var_20C.AddNew var_B0, var_C0
  loc_1508550:   var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("V_ADD")), global_130)) 'String
  loc_150855D:   var_20C.Collect = "V_ADD"
  loc_150858B:   var_F4 = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_1508599:   var_20C.Collect = "V_NO"
  loc_15085B4:   var_20C.Collect = "DOCNO"
  loc_15085E1:   var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), CVar(CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))), CVar(var_88.Fields.Item("Name")))) 'String
  loc_15085F9:   var_20C.Collect = "Name"
  loc_1508649:   If (Me.Fields.Item("RepToBy").Value = "Yes") Then
  loc_1508672:     Proc_183_3_E7DD58(var_114, CVar(var_88.Fields.Item("Credit")), Trim(var_114))
  loc_150868C:     If (var_114 > 0) Then
  loc_15086D2:       var_144 = Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), var_114))))), &H2F)
  loc_15086DA:       var_164 = ("To " + var_144)
  loc_15086E8:       var_20C.Collect = "Name"
  loc_1508700:     Else
  loc_1508743:       var_144 = Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), CVar(var_88.Fields.Item("V_NO"))))), &H2F)
  loc_150874B:       var_164 = ("By " + var_144)
  loc_1508759:       var_20C.Collect = "Name"
  loc_150876E:     End If
  loc_150876E:   End If
  loc_1508799:   var_114 = "dd/MMM/yyyy"
  loc_15087BB:   var_20C.Collect = "V_DATE"
  loc_15087EB:   var_F4 = CVar(var_88.Fields.Item("Credit")) 'Address
  loc_15087F9:   var_20C.Collect = "Credit"
  loc_1508823:   var_F4 = CVar(var_88.Fields.Item("Debit")) 'Address
  loc_1508831:   var_20C.Collect = "Debit"
  loc_150885B:   var_F4 = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_1508869:   var_20C.Collect = "V_Type"
  loc_150889A:   Proc_183_3_E7DD58(var_114, CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")))
  loc_15088AC:   var_20C.Collect = "V_SNo"
  loc_15088DA:   var_F4 = CVar(var_88.Fields.Item("mNarr")) 'Address
  loc_15088E8:   var_20C.Collect = "mNarr"
  loc_1508912:   var_F4 = CVar(var_88.Fields.Item("NARR")) 'Address
  loc_1508920:   var_20C.Collect = "NARR"
  loc_1508953:   var_114 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), var_114, Format(CVar(var_88.Fields.Item("V_DATE")), var_114))) 'String
  loc_1508959:   var_124 = Trim(var_114)
  loc_1508975:   If CBool(var_124 <> vbNullString) Then
  loc_1508997:     var_F4 = CVar(var_88.Fields.Item("Chq_No")) 'Address
  loc_15089A5:     var_20C.Collect = "Chq_No"
  loc_15089B0:   End If
  loc_15089DF:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_1508A01:     var_F4 = CVar(var_88.Fields.Item("Chq_Date")) 'Address
  loc_1508A0F:     var_20C.Collect = "Chq_Date"
  loc_1508A1A:   End If
  loc_1508A1C:   Set var_20C = Nothing 
  loc_1508A23:   var_88.MoveNext
  loc_1508A28:   GoTo loc_15081B8
  loc_1508A2B: End If
  loc_1508A3F: If (var_8C.RecordCount > 0) Then
  loc_1508A45:   var_8C.MoveFirst
  loc_1508A4A: End If
  loc_1508A4D: var_256 = arg_C
  loc_1508A56: If (var_256 = 1) Then
  loc_1508A5F:   var_C0 = "Paper Setting"
  loc_1508A74:   var_F4 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_1508A7A:   MsgBox(var_F4, &H40, var_C0, var_124, var_144)
  loc_1508A92:   var_D0 = 1
  loc_1508A9F:   Set var_E4 = CVar(CLng(3))(var_D0)
  loc_1508AC2:   Set var_210 = var_8C
  loc_1508ADB:   Call 0.Method_arg_15C (Me, var_210, CStr(var_F4), var_F6, TXTE_DATE.DispID_41, var_256)
  loc_1508AE6:   Set var_8C = var_210
  loc_1508AEC:   var_9A = var_F6
  loc_1508B03:   global_130 = 0
  loc_1508B06:   GoTo loc_1508B96
  loc_1508B0C: Else
  loc_1508B15:   var_FC = MemVar_1F953B4 & "\FaJRNL.ttx"
  loc_1508B22:   Set var_E4 = var_8C 
  loc_1508B2E:   var_F6 = CreateFieldDefFile(var_E4, var_FC, &HFF, global_130, var_9A, var_F4)
  loc_1508B41:   var_268 = CVar(var_F6) 'Variant
  loc_1508B5B:   Call 0.Method_arg_C4 (var_E4, var_F6, var_F4, 1)
  loc_1508B66:   MemVar_1F951E8 = var_E4
  loc_1508B86:   Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_C0, var_D0)
  loc_1508B8E:   Call 0.Method_arg_2C (1, CVar(var_88.Fields.Item("V_NO")))
  loc_1508B96: End If
  loc_1508B96: ' Referenced from: 1508B06
  loc_1508B9B: Set var_88 = Nothing
  loc_1508BA3: Set var_8C = Nothing
  loc_1508BA6: Exit Sub
  loc_1508BA7: ' Referenced from: 1507D5C
  loc_1508BB5: Call 0.Method_arg_50 (var_FC, 0)
  loc_1508BCA: Proc_183_57_104B0BC(var_FC, "JournalBook")
  loc_1508BD6: Exit Sub
End Sub

Public Sub Proc_245_76_192FA28(arg_C) '192FA28
  'Data Table: 58C0E4
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_14C As String
  Dim var_154 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_AC As Double
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_110 As Variant
  Dim var_180 As Variant
  Dim var_130 As Variant
  Dim var_1A4 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_214 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_8C As Recordset15
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_90 As Recordset15
  Dim var_DC As Double
  Dim var_94 As Recordset15
  Dim var_D4 As Double
  Dim var_E0 As Integer
  Dim var_E2 As Integer
  Dim var_E4 As Integer
  Dim var_E6 As Integer
  Dim var_E8 As Integer
  Dim var_EA As Integer
  Dim var_CC As Double
  Dim Me As Recordset15
  Dim var_238 As Fields15
  Dim var_2A4 As Variant
  Dim var_234 As Variant
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_2A6 As Integer
  Dim var_DE As Integer
  loc_192CE0C: On Error Goto loc_192F9F6
  loc_192CE24: Set var_134 = CVar(CLng(0))(0)
  loc_192CE48: Call Proc_245_64_F51BE4(CInt(0), CStr(var_144))
  loc_192CE5C: If (var_14E = 0) Then
  loc_192CE64:   global_130 = 0
  loc_192CE67:   Exit Sub
  loc_192CE68: End If
  loc_192CE7D: Set var_134 = CVar(CLng(1))(0)
  loc_192CEA1: Call Proc_245_64_F51BE4(CInt(1), CStr(var_144))
  loc_192CEB5: If (var_14E = 0) Then
  loc_192CEBD:   global_130 = 0
  loc_192CEC0:   Exit Sub
  loc_192CEC1: End If
  loc_192CED6: Set var_134 = CVar(CLng(2))(0)
  loc_192CEFA: Call Proc_245_64_F51BE4(CInt(2), CStr(var_144))
  loc_192CF0E: If (var_14E = 0) Then
  loc_192CF16:   global_130 = 0
  loc_192CF19:   Exit Sub
  loc_192CF1A: End If
  loc_192CF2F: Set var_134 = CVar(CLng(3))(0)
  loc_192CF53: Call Proc_245_64_F51BE4(CInt(3), CStr(var_144))
  loc_192CF67: If (var_14E = 0) Then
  loc_192CF6F:   global_130 = 0
  loc_192CF72:   Exit Sub
  loc_192CF73: End If
  loc_192CF88: Set var_134 = CVar(CLng(4))(0)
  loc_192CFAC: Call Proc_245_64_F51BE4(CInt(4), CStr(var_144))
  loc_192CFC0: If (var_14E = 0) Then
  loc_192CFC8:   global_130 = 0
  loc_192CFCB:   Exit Sub
  loc_192CFCC: End If
  loc_192CFE1: Set var_134 = CVar(CLng(0))(1)
  loc_192CFFF: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_192D026: Set var_134 = CVar(CLng(1))(1)
  loc_192D037: var_14C = CStr(TXTS_DATE.DispID_41)
  loc_192D03E: Set var_154 = Me.TXTE_DATE
  loc_192D044: var_154.Text = var_14C
  loc_192D06D: If (Proc_183_48_F06B28(Me, global_130, var_14E, TXTE_DATE.DispID_41, global_130, var_14E, TXTE_DATE.DispID_41) = 0) Then
  loc_192D075:   global_130 = 0
  loc_192D078:   Exit Sub
  loc_192D079: End If
  loc_192D084: Set var_134 = Me.TEXT
  loc_192D08A: Call 0.Method_Proc_245_76_192FA280 (CInt(&HC), var_154, global_130, global_130, var_14E)
  loc_192D092: var_144 = CVar(var_154) 'Address
  loc_192D0B3: If CBool(Trim(var_144) <> vbNullString) Then
  loc_192D0C7:   Set var_134 = Me.TEXT
  loc_192D0CD:   Call 0.Method_Proc_245_76_192FA280 (CInt(&HC), var_154, var_14C, " And VIEWLEDGER.LOGSite_Code='")
  loc_192D0D5:   TXTE_DATE.DispID_41 = var_154.Tag
  loc_192D0E5:   var_F0 = global_130 & var_14C & "'"
  loc_192D0F9: Else
  loc_192D107:   var_F0 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_192D10D: End If
  loc_192D122: Set var_134 = CVar(CLng(4))(1)
  loc_192D14F: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_192D18D: var_164 = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_192D19C: var_B0 = CStr(Trim(var_164))
  loc_192D1AE: var_A0 = vbNullString
  loc_192D1B4: var_A4 = vbNullString
  loc_192D1E1: unk_58C129.Execute "SELECT RepToBy FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_144, -1
  loc_192D1EC: Set var_88 = CVar(CLng(4))(2)
  loc_192D210: If (var_88.RecordCount > 0) Then
  loc_192D222:   var_134 = var_88.Fields
  loc_192D232:   var_144 = CVar(var_134.Item("RepToBy")) 'Address
  loc_192D23B:   var_BC = Proc_183_2_E5AE94(var_144, var_134, CDbl(0))
  loc_192D244: End If
  loc_192D268: unk_58C129.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "'", var_144, -1
  loc_192D273: Set var_88 = var_134
  loc_192D297: If (var_88.RecordCount <= 0) Then
  loc_192D29A:   Exit Sub
  loc_192D29B: End If
  loc_192D2AD: var_134 = var_88.Fields
  loc_192D2B5: var_154 = var_134.Item("GroupNature")
  loc_192D31B: If CBool((var_154.Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_192D322:   var_144 = CVar(Me.TXTS_DATE) 'Address
  loc_192D329:   Proc_183_7_EB17D4(var_164, var_144, var_134)
  loc_192D334:   var_130 = 0
  loc_192D351:   var_14C = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_192D371:   var_1B4 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE<") & var_164 & " " & CVar(var_F0) 
  loc_192D37F:   unk_58C129.Execute CStr(var_1B4), var_1C4, -1
  loc_192D387:   var_134 = var_134.Fields
  loc_192D38F:   var_130 = var_154.Item(var_154)
  loc_192D397:   var_180 = var_180.Value
  loc_192D3A0:   var_AC = CSng(var_1D4)
  loc_192D3C9: Else
  loc_192D3CC:   var_100 = MemVar_1F950F4
  loc_192D3D4:   Proc_183_7_EB17D4(var_144, var_100, var_AC)
  loc_192D3E4:   Proc_183_7_EB17D4(var_1B4, CVar(Me.TXTS_DATE), var_1D4)
  loc_192D3EF:   var_214 = 0
  loc_192D40C:   var_14C = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_192D413:   var_164 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE>=") 'String
  loc_192D41D:   var_110 = " AND V_DATE<"
  loc_192D429:   var_1C4 = var_164 & var_144 & var_110 & var_1B4 
  loc_192D44A:   unk_58C129.Execute CStr(var_1C4 & " " & CVar(var_F0)), var_204, -1
  loc_192D452:   var_134 = var_134.Fields
  loc_192D45A:   var_214 = var_154.Item(var_154)
  loc_192D462:   var_180 = var_180.Value
  loc_192D46B:   var_AC = CSng(var_224)
  loc_192D497: End If
  loc_192D4A7: Set var_134 = New
  loc_192D4B6: Call 0.Method_arg_1B8 (var_134, var_154, var_AC)
  loc_192D4C1: Set var_8C = var_134
  loc_192D4CA: Set var_8C = var_154
  loc_192D4DB: If (var_AC <> CDbl(0)) Then
  loc_192D4E9:   Me.Recordset15.AddNew var_100, var_110
  loc_192D4F2:   var_144 = CVar(Me.TXTS_DATE) 'Address
  loc_192D500:   var_8C.Collect = "V_DATE"
  loc_192D50F:   If (var_AC < CDbl(0)) Then
  loc_192D512:     var_110 = "OPENING BALANCE"
  loc_192D521:     var_8C.Collect = "Name"
  loc_192D52A:     var_110 = CVar(Abs(var_AC)) 'Double
  loc_192D538:     var_8C.Collect = "cr"
  loc_192D540:   Else
  loc_192D540:     var_110 = "OPENING BALANCE"
  loc_192D54F:     var_8C.Collect = "Name1"
  loc_192D558:     var_110 = CVar(Abs(var_AC)) 'Double
  loc_192D55D:     var_100 = "ADJAMT"
  loc_192D566:     var_8C.Collect = var_100
  loc_192D56B:   End If
  loc_192D576:   var_8C.Update var_100, var_110
  loc_192D57B: End If
  loc_192D58F: var_14C = "SELECT VIEWLEDGER.V_ADD,DocID,VIEWLEDGER.Site_Code,VIEWLEDGER.V_NO,subgroup.NAME, VIEWLEDGER.V_DATE, VIEWLEDGER.CREDIT AS AMOUNT, VIEWLEDGER.V_TYPE,VIEWLEDGER.MNARR,VIEWLEDGER.NARR, VIEWLEDGER.V_SNO,VIEWLEDGER.CHQ_NO,CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY='" & var_B0
  loc_192D59D: var_144 = CVar(Me.TXTS_DATE) 'Address
  loc_192D5A4: Proc_183_7_EB17D4(var_164, var_144, CVar(var_14C & "' AND VIEWLEDGER.V_DATE Between "), var_234, -1, var_134, var_110)
  loc_192D5C4: Proc_183_7_EB17D4(var_1C4, CVar(Me.TXTE_DATE), var_110 & var_164 & " And ", var_110, var_110)
  loc_192D5E8: var_224 = var_144 & var_1C4 & " AND CREDIT>0  " & CVar(var_F0) & " ORDER BY V_DATE,V_TYPE,V_NO,v_add,V_SNO" 
  loc_192D5F6: unk_58C129.Execute CStr(var_224), var_224, var_14E
  loc_192D601: Set var_90 = var_134
  loc_192D63D: var_14C = "SELECT VIEWLEDGER.V_ADD,DocID,VIEWLEDGER.Site_Code,VIEWLEDGER.V_NO,subgroup.NAME, VIEWLEDGER.V_DATE, VIEWLEDGER.DEBIT AS AMOUNT, VIEWLEDGER.V_TYPE,VIEWLEDGER.MNARR,VIEWLEDGER.NARR, VIEWLEDGER.V_SNO,VIEWLEDGER.CHQ_NO,CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY='" & var_B0
  loc_192D652: Proc_183_7_EB17D4(var_164, CVar(Me.TXTS_DATE), CVar(var_14C & "' AND VIEWLEDGER.V_DATE Between "), var_234)
  loc_192D65A: var_194 = -1 & var_164 
  loc_192D672: Proc_183_7_EB17D4(var_1C4, CVar(Me.TXTE_DATE), " AND CREDIT>0  " & var_164 & " And ")
  loc_192D67E: var_110 = " AND DEBIT>0  "
  loc_192D6A4: unk_58C129.Execute CStr(var_134 & var_1C4 & var_110 & CVar(var_F0) & " ORDER BY V_DATE,V_TYPE,V_NO,v_add,V_SNO"), TXTE_DATE.DispID_41, 
  loc_192D6AF: Set var_94 = var_134
  loc_192D6E6: If Not(var_90.EOF) Then
  loc_192D715:   var_DC = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_192D722: End If
  loc_192D731: If Not(var_94.EOF) Then
  loc_192D73A:   var_100 = "V_DATE"
  loc_192D760:   var_D4 = CDate(var_94.Fields.Item(var_100).Value)
  loc_192D76D: End If
  loc_192D76F: var_E0 = 0
  loc_192D774: var_E2 = 0
  loc_192D779: var_E4 = 0
  loc_192D77E: var_E6 = 0
  loc_192D783: var_E8 = 0
  loc_192D788: var_EA = 0
  loc_192D78E: var_C0 = vbNullString
  loc_192D794: var_C4 = vbNullString
  loc_192D7AE: var_CC = CDate(Me.TXTS_DATE.Text)
  loc_192D7B7: ' Referenced from: 192F74F
  loc_192D7D5: If Not((var_90.EOF And var_94.EOF)) Then
  loc_192D7E7:   If ((var_D4 = var_CC) Or (var_DC = var_CC)) Then
  loc_192D7F5:     var_8C.AddNew var_100, var_110
  loc_192D801:     If (var_D4 = var_CC) Then
  loc_192D823:       var_144 = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_192D831:       var_8C.Collect = "V_Type"
  loc_192D83F:       var_110 = CDate(var_D4)
  loc_192D84D:       var_8C.Collect = "V_DATE"
  loc_192D871:       var_144 = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_192D87F:       var_8C.Collect = "V_NO"
  loc_192D8A9:       var_144 = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_192D8B7:       var_8C.Collect = "V_SNo"
  loc_192D931:       var_238 = Me.Fields
  loc_192D9DB:       var_2A4 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_94.Fields.Item("DocID")), 1), vbNullString) + IIf((var_238.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_192D9E0:       var_B4 = CStr(var_2A4)
  loc_192DA99:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_192DACA:       var_234 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_94.Fields.Item("V_ADD"))), vbNullString))
  loc_192DACF:       var_B4 = CStr(Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)))
  loc_192DB29:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_192DB5B:       var_1C4 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(CVar(var_94.Fields.Item("V_Type"))))
  loc_192DB60:       var_B4 = CStr(CVar(var_94.Fields.Item("V_ADD")))
  loc_192DBAC:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_192DBE9:       var_1D4 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_94.Fields.Item("V_NO")))))
  loc_192DC19:       var_8C.Collect = "DOCNO"
  loc_192DC32:       If (((var_E0 = 0) Or (var_E4 = 0)) Or (var_E8 = 0)) Then
  loc_192DC5F:         var_144 = CVar(var_94.Fields.Item("Chq_No")) 'Address
  loc_192DC73:         var_14C = Proc_183_2_E5AE94(Trim(var_144), &HFF, CVar(CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))), var_144, var_144, CVar(CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))), var_144)
  loc_192DC88:         If (var_14C <> vbNullString) Then
  loc_192DCCB:           var_1A4 = (var_E8 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_CC, var_EA))))
  loc_192DCD4:           var_1B4 = (CVar(var_94.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_192DD03:           var_130 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("ChqDate")), Str(CVar(var_94.Fields.Item("V_NO"))), var_E6)) 'String
  loc_192DD06:           var_1D4 = (var_E4 + var_130)
  loc_192DD0B:           var_C0 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_192DD2B:         End If
  loc_192DD67:         var_194 = (var_E2 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("mNarr")), CVar(var_C0)))))
  loc_192DD93:         var_1B4 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("NARR")))) 'String
  loc_192DD99:         var_1C4 = Trim(var_1B4)
  loc_192DDA1:         var_1D4 = (CVar(vbNullString & "Ch.No:") + var_1C4)
  loc_192DDA6:         var_C0 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_192DDFE:         If (Len(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")))) <> 0) Then
  loc_192DE29:           var_164 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")))) 'String
  loc_192DE36:           var_8C.Collect = "Name"
  loc_192DE92:           var_8C.Collect = "cr"
  loc_192DEAB:           If (var_BC = "Yes") Then
  loc_192DED6:             var_164 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")), Format(CVar(var_94.Fields.Item("Amount")), "0.00"), 1)) 'String
  loc_192DEF9:             var_1A4 = ("By " + Left(Trim(var_164), &H2F))
  loc_192DF07:             var_8C.Collect = "Name"
  loc_192DF1C:           End If
  loc_192DF3B:           var_120 = CVar(var_AC) 'Double
  loc_192DF66:           var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_192DF6B:           var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_192DF7C:           var_E8 = &HFF
  loc_192DF81:           var_E4 = &HFF
  loc_192DF87:         Else
  loc_192DFA6:           Set var_134 = CVar(CLng(2))(1)
  loc_192DFE3:           If CBool((var_E4 = 0) And (Trim(CVar(CStr(TXTS_DATE.DispID_41))) = "Yes")) Then
  loc_192DFEC:             If (var_E8 = 0) Then
  loc_192E02A:               var_174 = Format(CVar(var_94.Fields.Item("Amount")), "0.00")
  loc_192E03C:               var_8C.Collect = "cr"
  loc_192E06C:               var_120 = CVar(var_AC) 'Double
  loc_192E097:               var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_192E09C:               var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_192E0AB:               var_110 = "As Per Detail"
  loc_192E0BA:               var_8C.Collect = "Name"
  loc_192E0C1:               var_E8 = &HFF
  loc_192E0D9:               Set var_134 = CVar(CLng(2))(1)
  loc_192E10C:               If (Trim(CVar(CStr(TXTS_DATE.DispID_41))) = "Yes") Then
  loc_192E11C:                 var_110 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_192E190:                 unk_58C129.Execute CStr(var_110 & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value), var_1B4, -1
  loc_192E19B:                 Set var_98 = var_238
  loc_192E1BD:               End If
  loc_192E1C0:             Else
  loc_192E1CF:               If Not(var_98.EOF) Then
  loc_192E1FC:                 var_110 = 0
  loc_192E20E:                 If (var_98.Fields.Item("Debit").Value > var_110) Then
  loc_192E23B:                   var_120 = "Debit"
  loc_192E25E:                   Proc_183_4_EAC738(var_1C4, CVar(var_98.Fields.Item(var_120)), var_238, var_E8, var_110)
  loc_192E288:                   var_194 = (1 + CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2), var_AC)))
  loc_192E291:                   var_1A4 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_192E2A7:                   var_1D4 = CVar(Proc_183_16_EAF86C(CStr(var_1C4), &HC, " " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value)) 'String
  loc_192E2AA:                   var_1E4 = (var_120 + var_1D4)
  loc_192E2B3:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_192E2C1:                   var_8C.Collect = "Name"
  loc_192E2F0:                 Else
  loc_192E33D:                   Proc_183_4_EAC738(var_1C4, CVar(var_98.Fields.Item("Credit")), vbNullString)
  loc_192E367:                   var_194 = (CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2))) + CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2))))
  loc_192E370:                   var_1A4 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_192E389:                   var_1E4 = (" " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAF86C(CStr(var_1C4), &HC)))
  loc_192E392:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_192E3A0:                   var_8C.Collect = "Name"
  loc_192E3CC:                 End If
  loc_192E3CF:                 var_98.MoveNext
  loc_192E3D4:               End If
  loc_192E3E5:               If (var_98.EOF = &HFF) Then
  loc_192E3EA:                 var_E4 = &HFF
  loc_192E3ED:               End If
  loc_192E3ED:             End If
  loc_192E3F0:           Else
  loc_192E428:             var_1A4 = (Space(2) + Trim(Mid(var_C0, 1, 36)))
  loc_192E436:             var_8C.Collect = "Name"
  loc_192E483:             var_174 = Format(CVar(var_94.Fields.Item("Amount")), "0.00")
  loc_192E495:             var_8C.Collect = "cr"
  loc_192E4C5:             var_120 = CVar(var_AC) 'Double
  loc_192E4F0:             var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_192E4F5:             var_AC = CSng(Trim(Mid(var_C0, 1, 36)))
  loc_192E52D:             var_C0 = CStr(Trim(Mid(var_C0, &H25, 510)))
  loc_192E53B:             var_E8 = &HFF
  loc_192E540:             var_E4 = &HFF
  loc_192E543:           End If
  loc_192E543:         End If
  loc_192E55B:         If (((Len(var_C0) <= 0) And (var_E4 = &HFF)) And (var_E8 = &HFF)) Then
  loc_192E560:           var_E0 = 0
  loc_192E565:           var_E4 = 0
  loc_192E56A:           var_E8 = 0
  loc_192E570:           var_94.MoveNext
  loc_192E584:           If Not(var_94.EOF) Then
  loc_192E5B3:             var_D4 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_192E5C3:           Else
  loc_192E5DF:             var_D4 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_192E5E9:           End If
  loc_192E5E9:         End If
  loc_192E5EC:       Else
  loc_192E600:         var_C0 = CStr(Trim(var_C0))
  loc_192E63E:         var_1A4 = (Space(2) + Trim(Mid(var_C0, 1, 36)))
  loc_192E64C:         var_8C.Collect = "Name"
  loc_192E69D:         If (Len(CStr(Trim(Mid(var_C0, &H25, 510)))) <= 0) Then
  loc_192E6A2:           var_E0 = 0
  loc_192E6A7:           var_E4 = 0
  loc_192E6AC:           var_E8 = 0
  loc_192E6B2:           var_94.MoveNext
  loc_192E6C6:           If Not(var_94.EOF) Then
  loc_192E6F5:             var_D4 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_192E705:           Else
  loc_192E721:             var_D4 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_192E72B:           End If
  loc_192E72B:         End If
  loc_192E72B:       End If
  loc_192E72B:     End If
  loc_192E732:     If (var_DC = var_CC) Then
  loc_192E754:       var_144 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_192E762:       var_8C.Collect = "vType"
  loc_192E78C:       var_144 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_192E79A:       var_8C.Collect = "VNo"
  loc_192E7A8:       var_110 = CDate(var_DC)
  loc_192E7B6:       var_8C.Collect = "V_DATE"
  loc_192E7DA:       var_144 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_192E7E8:       var_8C.Collect = "VSno"
  loc_192E862:       var_238 = Me.Fields
  loc_192E90C:       var_2A4 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((var_238.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_192E911:       var_B8 = CStr(var_2A4)
  loc_192E9CA:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_192E9FB:       var_234 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_192EA00:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_192EA5A:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_192EA8C:       var_1C4 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_192EA91:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_192EADD:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_192EB1A:       var_1D4 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_192EB4A:       var_8C.Collect = "DocNo1"
  loc_192EB63:       If (((var_E2 = 0) Or (var_E6 = 0)) Or (var_EA = 0)) Then
  loc_192EB90:         var_144 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_192EBA4:         var_14C = Proc_183_2_E5AE94(Trim(var_144), &HFF, CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))), var_144, CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))), var_144, var_144)
  loc_192EBB9:         If (var_14C <> vbNullString) Then
  loc_192EBFC:           var_1A4 = (var_E8 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_D4, var_D4))))
  loc_192EC05:           var_1B4 = (CVar(var_90.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_192EC34:           var_130 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("ChqDate")), Str(CVar(var_90.Fields.Item("V_NO"))), var_E4)) 'String
  loc_192EC37:           var_1D4 = (var_E0 + var_130)
  loc_192EC3C:           var_C4 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_192EC5C:         End If
  loc_192EC98:         var_194 = (CVar(var_90.Fields.Item("V_NO")) + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), CVar(var_C4)))))
  loc_192ECC4:         var_1B4 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR")))) 'String
  loc_192ECCA:         var_1C4 = Trim(var_1B4)
  loc_192ECD2:         var_1D4 = (CVar(vbNullString & "Ch.No:") + var_1C4)
  loc_192ECD7:         var_C4 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_192ED2F:         If (Len(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")))) <> 0) Then
  loc_192ED51:           var_144 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_192ED5F:           var_8C.Collect = "Name1"
  loc_192EDB7:           var_8C.Collect = "ADJAMT"
  loc_192EDD0:           If (var_BC = "Yes") Then
  loc_192EDFB:             var_164 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), Format(CVar(var_90.Fields.Item("Amount")), "0.00"), 1)) 'String
  loc_192EE1E:             var_1A4 = ("To " + Left(Trim(var_164), &H2F))
  loc_192EE2C:             var_8C.Collect = "Name1"
  loc_192EE41:           End If
  loc_192EE60:           var_120 = CVar(var_AC) 'Double
  loc_192EE8B:           var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), "0.00"))
  loc_192EE90:           var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_192EEA3:           var_EA = &HFF
  loc_192EEA8:           var_E6 = &HFF
  loc_192EEAE:         Else
  loc_192EECD:           Set var_134 = CVar(CLng(2))(1)
  loc_192EF0A:           If CBool((var_E6 = 0) And (Trim(CVar(CStr(TXTE_DATE.DispID_41))) = "Yes")) Then
  loc_192EF13:             If (var_EA = 0) Then
  loc_192EF51:               var_174 = Format(CVar(var_90.Fields.Item("Amount")), "0.00")
  loc_192EF63:               var_8C.Collect = "ADJAMT"
  loc_192EF93:               var_120 = CVar(var_AC) 'Double
  loc_192EFBE:               var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), "0.00"))
  loc_192EFC3:               var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_192EFD4:               var_110 = "As Per Detail"
  loc_192EFE3:               var_8C.Collect = "Name1"
  loc_192EFEA:               var_EA = &HFF
  loc_192F002:               Set var_134 = CVar(CLng(2))(1)
  loc_192F035:               If (Trim(CVar(CStr(TXTE_DATE.DispID_41))) = "Yes") Then
  loc_192F045:                 var_110 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_192F0AF:                 var_14C = CStr(var_110 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)
  loc_192F0B9:                 unk_58C129.Execute var_14C, var_1B4, -1
  loc_192F0C4:                 Set var_9C = var_238
  loc_192F0E6:               End If
  loc_192F0E9:             Else
  loc_192F0F8:               If Not(var_9C.EOF) Then
  loc_192F125:                 var_110 = 0
  loc_192F137:                 If (var_9C.Fields.Item("Debit").Value > var_110) Then
  loc_192F164:                   var_120 = "Debit"
  loc_192F187:                   Proc_183_4_EAC738(var_1C4, CVar(var_9C.Fields.Item(var_120)), var_238, var_EA, var_110)
  loc_192F1B1:                   var_194 = (1 + CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2), var_AC)))
  loc_192F1BA:                   var_1A4 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_192F1D0:                   var_1D4 = CVar(Proc_183_16_EAF86C(CStr(var_1C4), &HC, " " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)) 'String
  loc_192F1D3:                   var_1E4 = (var_120 + var_1D4)
  loc_192F1DC:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_192F1EA:                   var_8C.Collect = "Name1"
  loc_192F219:                 Else
  loc_192F266:                   Proc_183_4_EAC738(var_1C4, CVar(var_9C.Fields.Item("Credit")), vbNullString)
  loc_192F290:                   var_194 = (CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2))) + CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2))))
  loc_192F299:                   var_1A4 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_192F2B2:                   var_1E4 = (" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAF86C(CStr(var_1C4), &HC)))
  loc_192F2BB:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_192F2C9:                   var_8C.Collect = "Name1"
  loc_192F2F5:                 End If
  loc_192F2F8:                 var_9C.MoveNext
  loc_192F2FD:               End If
  loc_192F30E:               If (var_9C.EOF = &HFF) Then
  loc_192F313:                 var_E6 = &HFF
  loc_192F316:               End If
  loc_192F316:             End If
  loc_192F319:           Else
  loc_192F351:             var_1A4 = (Space(2) + Trim(Mid(var_C4, 1, 36)))
  loc_192F35F:             var_8C.Collect = "Name1"
  loc_192F39A:             var_C4 = CStr(Trim(Mid(var_C4, &H25, 510)))
  loc_192F3E1:             var_174 = Format(CVar(var_90.Fields.Item("Amount")), "0.00")
  loc_192F3F3:             var_8C.Collect = "ADJAMT"
  loc_192F423:             var_120 = CVar(var_AC) 'Double
  loc_192F431:             var_110 = "0.00"
  loc_192F44E:             var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), var_110))
  loc_192F453:             var_AC = CSng(Trim(Mid(var_C4, 1, 36)))
  loc_192F466:             var_EA = &HFF
  loc_192F46B:             var_E6 = &HFF
  loc_192F46E:           End If
  loc_192F46E:         End If
  loc_192F486:         If (((Len(var_C4) <= 0) And (var_E6 = &HFF)) And (var_EA = &HFF)) Then
  loc_192F48B:           var_E2 = 0
  loc_192F490:           var_E6 = 0
  loc_192F495:           var_EA = 0
  loc_192F49B:           var_90.MoveNext
  loc_192F4AF:           If Not(var_90.EOF) Then
  loc_192F4DE:             var_DC = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_192F4EE:           Else
  loc_192F50A:             var_DC = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_192F514:           End If
  loc_192F514:         End If
  loc_192F517:       Else
  loc_192F52B:         var_C4 = CStr(Trim(var_C4))
  loc_192F561:         var_194 = Trim(Mid(var_C4, 1, 36))
  loc_192F569:         var_1A4 = (Space(2) + var_194)
  loc_192F577:         var_8C.Collect = "Name1"
  loc_192F5A9:         var_174 = Trim(Mid(var_C4, &H25, 510))
  loc_192F5C8:         If (Len(CStr(var_174)) <= 0) Then
  loc_192F5CD:           var_E2 = 0
  loc_192F5D2:           var_E6 = 0
  loc_192F5D7:           var_EA = 0
  loc_192F5DD:           var_90.MoveNext
  loc_192F5E8:           var_146 = var_90.EOF
  loc_192F5F1:           If Not(var_146) Then
  loc_192F5FA:             var_100 = "V_DATE"
  loc_192F620:             var_DC = CDate(var_90.Fields.Item(var_100).Value)
  loc_192F630:           Else
  loc_192F64C:             var_DC = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_192F656:           End If
  loc_192F656:         End If
  loc_192F656:       End If
  loc_192F656:     End If
  loc_192F661:     var_8C.Update var_100, var_110
  loc_192F669:   Else
  loc_192F670:     If (var_D4 <= var_DC) Then
  loc_192F67C:       If (var_D4 = CDate("12:00:00 AM")) Then
  loc_192F682:         var_CC = var_DC
  loc_192F688:       Else
  loc_192F68B:         var_CC = var_D4
  loc_192F68E:       End If
  loc_192F691:     Else
  loc_192F69A:       If (var_DC = CDate("12:00:00 AM")) Then
  loc_192F6A0:         var_CC = var_D4
  loc_192F6A6:       Else
  loc_192F6A9:         var_CC = var_DC
  loc_192F6AC:       End If
  loc_192F6AC:     End If
  loc_192F6B3:     If (var_AC <> CDbl(0)) Then
  loc_192F6C1:       var_8C.AddNew var_100, var_110
  loc_192F6C9:       var_110 = CDate(var_CC)
  loc_192F6D7:       var_8C.Collect = "V_DATE"
  loc_192F6E3:       If (var_AC < CDbl(0)) Then
  loc_192F6E6:         var_110 = "OPENING BALANCE"
  loc_192F6F5:         var_8C.Collect = "Name"
  loc_192F6FE:         var_110 = CVar(Abs(var_AC)) 'Double
  loc_192F70C:         var_8C.Collect = "cr"
  loc_192F714:       Else
  loc_192F714:         var_110 = "OPENING BALANCE"
  loc_192F723:         var_8C.Collect = "Name1"
  loc_192F72C:         var_110 = CVar(Abs(var_AC)) 'Double
  loc_192F731:         var_100 = "ADJAMT"
  loc_192F73A:         var_8C.Collect = var_100
  loc_192F73F:       End If
  loc_192F74A:       var_8C.Update var_100, var_110
  loc_192F74F:     End If
  loc_192F74F:   End If
  loc_192F74F:   GoTo loc_192D7B7
  loc_192F752: End If
  loc_192F766: If (var_8C.RecordCount > 0) Then
  loc_192F76C:   var_8C.MoveFirst
  loc_192F771: End If
  loc_192F785: If (var_8C.RecordCount <= 0) Then
  loc_192F78E:   Call 0.Method_arg_50 (var_14C, var_110, var_110, var_110, var_110, var_110, var_CC)
  loc_192F7AF:   MsgBox("** No Records Found to Print **", &H40, CVar(var_14C), var_174, var_194)
  loc_192F7C4:   global_130 = 0
  loc_192F7C7:   Exit Sub
  loc_192F7C8: End If
  loc_192F7CB: var_2A6 = arg_C
  loc_192F7D4: If (var_2A6 = 1) Then
  loc_192F7F8:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, "Paper Setting", var_174, var_194)
  loc_192F81D:   Set var_134 = CVar(CLng(3))(1)
  loc_192F82E:   var_14C = CStr(TXTE_DATE.DispID_41)
  loc_192F849:   Set var_180 = var_8C
  loc_192F862:   Call 0.Method_arg_164 (Me, var_180, CLng(Val(var_14C)), var_146, Val(var_14C), var_2A6, global_130)
  loc_192F86D:   Set var_8C = var_180
  loc_192F873:   var_DE = var_146
  loc_192F88A:   global_130 = 0
  loc_192F88D:   GoTo loc_192F9C5
  loc_192F893: Else
  loc_192F8A8:   var_134 = Me.Fields
  loc_192F8C0:   var_110 = "No"
  loc_192F8D0:   var_120 = "LedSiteCode"
  loc_192F93C:   var_1D4 = (var_134.Item("LedDivCode").Value = var_110) And (Me.Fields.Item(var_120).Value = "No") And (Me.Fields.Item("LedPrefix").Value = "No")
  loc_192F95A:   If CBool(var_1D4) Then
  loc_192F969:     Call 0.Method_arg_E4 (var_134, global_130, var_DE, var_CC, var_CC)
  loc_192F974:     MemVar_1F951E8 = var_134
  loc_192F97E:   Else
  loc_192F98A:     Call 0.Method_arg_E0 (var_134, var_CC, var_DC)
  loc_192F995:     MemVar_1F951E8 = var_134
  loc_192F99C:   End If
  loc_192F9B5:   Call 0.Method_arg_64 (var_134, CVar(var_8C), var_110, var_120)
  loc_192F9BD:   Call 0.Method_arg_2C (var_DC, var_EA)
  loc_192F9C5: End If
  loc_192F9C5: ' Referenced from: 192F88D
  loc_192F9CA: Set var_88 = Nothing
  loc_192F9D2: Set var_90 = Nothing
  loc_192F9DA: Set var_94 = Nothing
  loc_192F9E2: Set var_98 = Nothing
  loc_192F9EA: Set var_9C = Nothing
  loc_192F9F2: Set var_8C = Nothing
  loc_192F9F5: Exit Sub
  loc_192F9F6: ' Referenced from: 192CE0C
  loc_192FA04: Call 0.Method_arg_50 (var_14C, 0)
  loc_192FA19: Proc_183_57_104B0BC(var_14C, "CashBook")
  loc_192FA25: Exit Sub
End Sub

Public Sub Proc_245_77_1620918(arg_C) '1620918
  'Data Table: 58C0E4
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_114 As String
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_D8 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim unk_58C129 As Connection15
  Dim var_98 As Long
  Dim var_88 As Recordset15
  Dim var_FC As Fields15
  Dim var_B0 As Double
  Dim var_B8 As Long
  Dim var_1E4 As Recordset15
  Dim Me As Recordset15
  Dim var_1E8 As Fields15
  Dim var_26C As Variant
  Dim var_21C As Variant
  Dim var_270 As Recordset15
  Dim var_8C As Recordset15
  Dim var_274 As Recordset15
  Dim var_278 As Recordset15
  Dim var_27E As Integer
  Dim var_8E As Integer
  Dim var_10E As Integer
  loc_161F478: On Error Goto loc_16208E7
  loc_161F490: Set var_FC = CVar(CLng(0))(0)
  loc_161F4B4: Call Proc_245_64_F51BE4(CInt(0), CStr(var_10C))
  loc_161F4C8: If (var_116 = 0) Then
  loc_161F4D0:   global_130 = 0
  loc_161F4D3:   Exit Sub
  loc_161F4D4: End If
  loc_161F4E9: Set var_FC = CVar(CLng(1))(0)
  loc_161F50D: Call Proc_245_64_F51BE4(CInt(1), CStr(var_10C))
  loc_161F521: If (var_116 = 0) Then
  loc_161F529:   global_130 = 0
  loc_161F52C:   Exit Sub
  loc_161F52D: End If
  loc_161F542: Set var_FC = CVar(CLng(0))(1)
  loc_161F560: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_161F587: Set var_FC = CVar(CLng(1))(1)
  loc_161F59F: Set var_11C = Me.TXTE_DATE
  loc_161F5A5: var_11C.Text = CStr(TXTS_DATE.DispID_41)
  loc_161F5CE: If (Proc_183_48_F06B28(Me, global_130, var_116, TXTE_DATE.DispID_41) = 0) Then
  loc_161F5D6:   global_130 = 0
  loc_161F5D9:   Exit Sub
  loc_161F5DA: End If
  loc_161F5EF: Set var_FC = CVar(CLng(3))(2)
  loc_161F600: var_12C = CVar(CStr(TXTE_DATE.DispID_41)) 'String
  loc_161F622: If CBool(Trim(var_12C) <> vbNullString) Then
  loc_161F63D:   Set var_FC = CVar(CLng(3))(2)
  loc_161F659:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & CStr(TXTE_DATE.DispID_41) & "'"
  loc_161F66C: Else
  loc_161F67A:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_161F680: End If
  loc_161F68D: var_C8 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE V_dATE BETWEEN "
  loc_161F69D: Proc_183_7_EB17D4(var_12C, CVar(Me.TXTS_DATE), var_C8, var_1E0, -1)
  loc_161F6BD: Proc_183_7_EB17D4(var_180, CVar(Me.TXTE_DATE), var_FC & var_12C & " AND ", global_130)
  loc_161F6EF: unk_58C129.Execute CStr(global_130 & var_180 & " " & CVar(var_94) & " ORDER BY V_DATE,V_TYPE,V_NO,V_SNo"), var_116, TXTE_DATE.DispID_41
  loc_161F6FA: Set var_88 = var_FC
  loc_161F72C: Set var_FC = New
  loc_161F73B: Call 0.Method_arg_1C0 (var_FC)
  loc_161F746: Set var_8C = var_FC
  loc_161F74F: Set var_8C = var_11C
  loc_161F75E: var_98 = 0
  loc_161F761: ' Referenced from: 1620721
  loc_161F770: If Not(Me.Recordset15.EOF) Then
  loc_161F77C:   If (var_98 = 0) Then
  loc_161F7AB:     var_98 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_161F7B8:   End If
  loc_161F7C1:   var_A0 = vbNullString
  loc_161F7C7:   var_A4 = vbNullString
  loc_161F7CD:   var_A8 = vbNullString
  loc_161F809:   If (Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_No")), var_98) <> vbNullString) Then
  loc_161F84C:     var_170 = (var_98 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_161F851:     var_9C = CStr(CVar(Me.TXTE_DATE))
  loc_161F864:   End If
  loc_161F893:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_161F8B9:     var_114 = var_9C & " Dt: "
  loc_161F8E9:     var_9C = 1 & CStr(Format(CVar(var_88.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_161F901:   End If
  loc_161F929:   var_A0 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("NARR")), 1)
  loc_161F95A:   var_A4 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("mNarr")), var_114)
  loc_161F989:   var_D8 = "dd/MMM/yyyy"
  loc_161F9A8:   var_B0 = CDate(Format(CVar(var_88.Fields.Item("V_DATE")), var_D8))
  loc_161F9E2:   var_B4 = CStr(var_88.Fields.Item("DocID").Value)
  loc_161F9F5:   var_C8 = "V_SNo"
  loc_161FA1B:   var_B8 = CLng(var_88.Fields.Item(var_C8).Value)
  loc_161FA2B:   Set var_1E4 = var_8C 
  loc_161FA3A:   var_1E4.AddNew var_C8, var_D8
  loc_161FA5E:   var_10C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_161FA6C:   var_1E4.Collect = "PDate"
  loc_161FA96:   var_10C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_161FAA4:   var_1E4.Collect = "V_DATE"
  loc_161FACE:   var_10C = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_161FADC:   var_1E4.Collect = "V_Type"
  loc_161FB06:   var_10C = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_161FB14:   var_1E4.Collect = "V_NO"
  loc_161FB3E:   var_10C = CVar(var_88.Fields.Item("V_SNo")) 'Address
  loc_161FB4C:   var_1E4.Collect = "V_SNo"
  loc_161FB7F:   var_12C = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")))) 'String
  loc_161FB8C:   var_1E4.Collect = "subcode"
  loc_161FBC3:   var_12C = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")), var_12C, var_B8, var_B0)) 'String
  loc_161FBD0:   var_1E4.Collect = "Name"
  loc_161FC1A:   var_13C = Format(CVar(var_88.Fields.Item("Credit")), "0.00")
  loc_161FC2C:   var_1E4.Collect = "cr"
  loc_161FC78:   var_13C = Format(CVar(var_88.Fields.Item("Debit")), "0.00")
  loc_161FC8A:   var_1E4.Collect = "dr"
  loc_161FDB4:   var_26C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_161FDB9:   var_A8 = CStr(var_26C)
  loc_161FE72:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161FEA3:   var_21C = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_161FEA8:   var_A8 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_161FF02:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161FF34:   var_190 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_161FF39:   var_A8 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_161FF85:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161FFC2:   var_1A0 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_161FFC7:   var_A8 = CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))
  loc_161FFE9:   var_C8 = "DOCNO"
  loc_161FFF2:   var_1E4.Collect = var_C8
  loc_1620002:   var_1E4.Update var_C8, CVar(var_A8)
  loc_1620009:   Set var_1E4 = Nothing 
  loc_162002B:   If CBool(Trim(var_A0) <> vbNullString) Then
  loc_162002E:     ' Referenced from: 1620301
  loc_1620038:     If (Len(var_A0) > 0) Then
  loc_162003E:       Set var_270 = var_8C 
  loc_1620045:       var_270.MoveLast
  loc_162004D:       var_C8 = "Name"
  loc_1620078:       var_D8 = vbNullString
  loc_162008A:       If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_1620098:         var_270.AddNew var_C8, var_D8
  loc_162009D:       End If
  loc_16200D5:       var_270.Fields.Item("Name").Value = Left(var_A0, &H32)
  loc_1620127:       var_270.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_162017B:       var_270.Fields.Item("PDate").Value = CVar(var_88.Fields.Item("V_DATE"))
  loc_162018F:       var_D8 = CVar(var_B8) 'Long
  loc_162019D:       var_270.Collect = "V_SNo"
  loc_16201A5:       var_D8 = CVar(var_A8) 'String
  loc_16201B2:       var_270.Collect = "DOCNO"
  loc_16201F3:       If (var_88.Fields.Item("V_Type").Value = "OP") Then
  loc_162021B:         var_270.Fields.Item("Val").Value = "1"
  loc_162022A:       Else
  loc_1620230:         var_C8 = "Credit"
  loc_1620261:         var_15C = "2"
  loc_162026A:         var_D8 = 0
  loc_1620274:         var_13C = (var_88.Fields.Item(var_C8).Value > var_D8) 'Variant
  loc_16202A6:         var_270.Fields.Item("Val").Value = IIf(var_13C, var_15C, "3")
  loc_16202C3:       End If
  loc_16202CE:       var_270.Update var_C8, var_D8
  loc_16202D5:       Set var_270 = Nothing 
  loc_16202F7:       var_A0 = CStr(Mid(var_A0, &H33, 300))
  loc_1620301:       GoTo loc_162002E
  loc_1620304:     End If
  loc_1620304:   End If
  loc_1620307:   var_88.MoveNext
  loc_1620312:   var_10E = var_88.EOF
  loc_162031D:   If (var_10E = &HFF) Then
  loc_1620320:     ' Referenced from: 162071E
  loc_162033E:     If CBool(Trim(var_A0) <> vbNullString) Then
  loc_1620341:       ' Referenced from: 16204F6
  loc_162034B:       If (Len(var_A0) > 0) Then
  loc_1620351:         Set var_274 = var_8C 
  loc_1620358:         var_274.MoveLast
  loc_1620360:         var_C8 = "Name"
  loc_162038B:         var_D8 = vbNullString
  loc_162039D:         If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_16203AB:           var_274.AddNew var_C8, var_D8
  loc_16203B0:         End If
  loc_16203E8:         var_274.Fields.Item("Name").Value = Left(var_A0, &H32)
  loc_162041D:         var_274.Fields.Item("DocId").Value = CVar(var_B4)
  loc_1620450:         var_274.Fields.Item("PDate").Value = CDate(var_B0)
  loc_162045F:         var_D8 = CVar(var_B8) 'Long
  loc_162046D:         var_274.Collect = "V_SNo"
  loc_1620475:         var_D8 = CVar(var_A8) 'String
  loc_1620482:         var_274.Collect = "DOCNO"
  loc_1620487:         var_D8 = "4"
  loc_1620490:         var_C8 = "Val"
  loc_16204AC:         var_274.Fields.Item(var_C8).Value = var_D8
  loc_16204C3:         var_274.Update var_C8, var_D8
  loc_16204CA:         Set var_274 = Nothing 
  loc_16204EC:         var_A0 = CStr(Mid(var_A0, &H33, 300))
  loc_16204F6:         GoTo loc_1620341
  loc_16204F9:       End If
  loc_16204F9:     End If
  loc_1620517:     If CBool(Trim(var_A4) <> vbNullString) Then
  loc_162051A:       ' Referenced from: 16206CF
  loc_1620524:       If (Len(var_A4) > 0) Then
  loc_162052A:         Set var_278 = var_8C 
  loc_1620531:         var_278.MoveLast
  loc_1620539:         var_C8 = "Name"
  loc_1620564:         var_D8 = vbNullString
  loc_1620576:         If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_1620584:           var_278.AddNew var_C8, var_D8
  loc_1620589:         End If
  loc_16205C1:         var_278.Fields.Item("Name").Value = Left(var_A4, &H32)
  loc_16205F6:         var_278.Fields.Item("DocId").Value = CVar(var_B4)
  loc_1620629:         var_278.Fields.Item("PDate").Value = CDate(var_B0)
  loc_1620638:         var_D8 = CVar(var_B8) 'Long
  loc_1620646:         var_278.Collect = "V_SNo"
  loc_162064E:         var_D8 = CVar(var_A8) 'String
  loc_162065B:         var_278.Collect = "DOCNO"
  loc_1620660:         var_D8 = "5"
  loc_1620669:         var_C8 = "Val"
  loc_1620685:         var_278.Fields.Item(var_C8).Value = var_D8
  loc_162069C:         var_278.Update var_C8, var_D8
  loc_16206A3:         Set var_278 = Nothing 
  loc_16206C5:         var_A4 = CStr(Mid(var_A4, &H33, 300))
  loc_16206CF:         GoTo loc_162051A
  loc_16206D2:       End If
  loc_16206D2:     End If
  loc_16206D5:   Else
  loc_16206D8:     var_D8 = CVar(var_98) 'Long
  loc_1620713:     If CBool(var_D8 <> var_88.Fields.Item("V_NO").Value) Then
  loc_162071B:       var_98 = 0
  loc_162071E:       GoTo loc_1620320
  loc_1620721:     End If
  loc_1620721:   End If
  loc_1620721:   GoTo loc_161F761
  loc_1620724: End If
  loc_1620738: If (var_88.RecordCount <= 0) Then
  loc_1620741:   Call 0.Method_arg_50 (var_114, var_98, var_D8, var_D8, var_D8, var_D8)
  loc_1620762:   MsgBox("** No Records Found to Print **", &H40, CVar(var_114), var_13C, var_15C)
  loc_1620777:   global_130 = 0
  loc_162077A:   Exit Sub
  loc_162077B: End If
  loc_1620781: global_124 = "DayBook"
  loc_1620788: var_27E = arg_C
  loc_1620791: If (var_27E = 1) Then
  loc_162079A:   var_D8 = "Paper Setting"
  loc_16207AF:   var_10C = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_16207B5:   MsgBox(var_10C, &H40, var_D8, var_13C, var_15C)
  loc_16207CD:   var_E8 = 1
  loc_16207DA:   Set var_FC = CVar(CLng(2))(var_E8)
  loc_16207FD:   Set var_1E8 = var_8C
  loc_1620816:   Call 0.Method_arg_174 (Me, var_1E8, CStr(var_10C), var_10E, TXTE_DATE.DispID_41, var_27E, global_130)
  loc_1620821:   Set var_8C = var_1E8
  loc_1620827:   var_8E = var_10E
  loc_162083E:   global_130 = 0
  loc_1620841:   GoTo loc_16208D6
  loc_1620847: Else
  loc_162084D:   If (var_27E = 0) Then
  loc_1620859:     var_114 = MemVar_1F953B4 & "\FaDayBook.ttx"
  loc_1620866:     Set var_FC = var_8C 
  loc_1620872:     var_10E = CreateFieldDefFile(var_FC, var_114, &HFF, global_130, var_8E, var_D8)
  loc_162089B:     Call 0.Method_arg_FC (var_FC, var_10E, var_10E, var_D8)
  loc_16208A6:     MemVar_1F951E8 = var_FC
  loc_16208C6:     Call 0.Method_arg_64 (var_FC, CVar(var_FC), var_D8, var_E8)
  loc_16208CE:     Call 0.Method_arg_2C (var_D8, var_13C)
  loc_16208D6:   End If
  loc_16208D6:   ' Referenced from: 1620841
  loc_16208D6: End If
  loc_16208DB: Set var_88 = Nothing
  loc_16208E3: Set var_8C = Nothing
  loc_16208E6: Exit Sub
  loc_16208E7: ' Referenced from: 161F478
  loc_16208F5: Call 0.Method_arg_50 (var_114, 0)
  loc_162090A: Proc_183_57_104B0BC(var_114, "DayBook")
  loc_1620916: Exit Sub
End Sub

Public Sub Proc_245_78_15A8130(arg_C) '15A8130
  'Data Table: 58C0E4
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_108 As Variant
  Dim var_C4 As String
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_E4 As String
  Dim var_198 As Variant
  Dim var_1A8 As String
  Dim var_1B8 As Variant
  Dim var_238 As Variant
  Dim var_248 As String
  Dim var_25C As String
  Dim var_260 As String
  Dim var_F8 As Variant
  Dim var_98 As Recordset15
  Dim var_268 As String
  Dim unk_58C129 As Connection15
  Dim var_26C As Recordset15
  Dim var_9C As Recordset15
  Dim var_E8 As Fields15
  Dim var_278 As Recordset15
  Dim var_27E As Integer
  Dim var_A2 As Integer
  Dim var_FA As Integer
  loc_15A6F6C: On Error Goto loc_15A80FF
  loc_15A6F84: Set var_E8 = CVar(CLng(0))(0)
  loc_15A6FA8: Call Proc_245_64_F51BE4(CInt(0), CStr(var_F8))
  loc_15A6FBC: If (var_102 = 0) Then
  loc_15A6FC4:   global_130 = 0
  loc_15A6FC7:   Exit Sub
  loc_15A6FC8: End If
  loc_15A6FDD: Set var_E8 = CVar(CLng(1))(0)
  loc_15A7001: Call Proc_245_64_F51BE4(CInt(1), CStr(var_F8))
  loc_15A7015: If (var_102 = 0) Then
  loc_15A701D:   global_130 = 0
  loc_15A7020:   Exit Sub
  loc_15A7021: End If
  loc_15A7036: Set var_E8 = CVar(CLng(0))(1)
  loc_15A7054: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_15A707B: Set var_E8 = CVar(CLng(1))(1)
  loc_15A7099: Me.TXTE_DATE.Text = CStr(TXTS_DATE.DispID_41)
  loc_15A70C2: If (Proc_183_48_F06B28(Me, global_130, var_102, TXTE_DATE.DispID_41) = 0) Then
  loc_15A70CA:   global_130 = 0
  loc_15A70CD:   Exit Sub
  loc_15A70CE: End If
  loc_15A70E3: Set var_E8 = CVar(CLng(3))(1)
  loc_15A7105: If (CStr(TXTE_DATE.DispID_41) = "Yes") Then
  loc_15A7118:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4, " Where ((V_DATE>=", global_130)
  loc_15A7138:   Proc_183_7_EB17D4(var_148, CVar(Me.TXTS_DATE), global_130 & var_F8 & " AND V_DATE<")
  loc_15A7158:   Proc_183_7_EB17D4(var_188, CVar(Me.TXTS_DATE))
  loc_15A7169:   var_1B8 = var_102 & var_148 & " AND VIEWSUBGROUP.GroupNature IN ('E','R')) OR (V_DATE<" & var_188 & " AND VIEWSUBGROUP.GroupNature NOT IN ('E','R')))" 
  loc_15A719A:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4)
  loc_15A71BA:   Proc_183_7_EB17D4(var_148, CVar(Me.TXTS_DATE))
  loc_15A71DA:   Proc_183_7_EB17D4(var_188, CVar(Me.TXTE_DATE))
  loc_15A71EB:   var_1B8 = " Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN " & var_148 & " AND " & var_188 & " AND VIEWSUBGROUP.GroupNature IN ('E','R')) OR (V_DATE BETWEEN " 
  loc_15A71FA:   Proc_183_7_EB17D4(var_1D8, CVar(Me.TXTS_DATE))
  loc_15A721A:   Proc_183_7_EB17D4(var_228, CVar(Me.TXTE_DATE))
  loc_15A7230:   var_88 = CStr(var_1B8 & var_1D8 & " AND " & var_228 & " AND VIEWSUBGROUP.GroupNature NOT IN ('E','R')))")
  loc_15A7260:   Set var_98 = New 
  loc_15A7278:   Set var_E8 = CVar(CLng(2))(1)
  loc_15A729A:   If (CStr(TXTE_DATE.DispID_41) = "Yes") Then
  loc_15A72BB:     var_100 = "SELECT 1 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE ) LEFT JOIN ACGROUP  AA ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,3) " & CStr(var_1B8)
  loc_15A72C9:     var_260 = var_100 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE Union " & "SELECT 2 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE ) LEFT JOIN ACGROUP  AA ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,3) "
  loc_15A72DE:     Me.Recordset15.Open CVar(var_260 & var_88 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE "), CVar(MemVar_1F951E0), 2
  loc_15A72F4:   Else
  loc_15A7312:     var_100 = "SELECT 2 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE " & var_88
  loc_15A7319:     var_F8 = CVar(var_100 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE ") 'String
  loc_15A7320:     var_98.Open var_F8, CVar(MemVar_1F951E0), 2
  loc_15A732B:   End If
  loc_15A732E: Else
  loc_15A733E:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4, " Where (((V_DATE>=", 3)
  loc_15A7346:   var_118 = -1 & var_F8 
  loc_15A735E:   Proc_183_7_EB17D4(var_148, CVar(Me.TXTS_DATE), " Where ((V_DATE>=" & var_F8 & " AND V_DATE<")
  loc_15A736A:   var_E4 = " AND AA.GroupNature IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE<"
  loc_15A737E:   Proc_183_7_EB17D4(var_188, CVar(Me.TXTS_DATE), 3 & var_148 & var_E4)
  loc_15A7386:   var_198 = -1 & var_188 
  loc_15A738A:   var_1A8 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A73C0:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4)
  loc_15A73E0:   Proc_183_7_EB17D4(var_148, CVar(Me.TXTS_DATE))
  loc_15A73EC:   var_E4 = " AND AA.GroupNature IN ('E','R')  AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE<"
  loc_15A7400:   Proc_183_7_EB17D4(var_188, CVar(Me.TXTS_DATE))
  loc_15A740C:   var_1A8 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A7416:   var_94 = CStr(" Where (((V_DATE>=" & var_F8 & " AND V_DATE<" & var_148 & var_E4 & var_188 & var_1A8)
  loc_15A7442:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4)
  loc_15A7462:   Proc_183_7_EB17D4(var_148, CVar(Me.TXTS_DATE))
  loc_15A7482:   Proc_183_7_EB17D4(var_188, CVar(Me.TXTE_DATE))
  loc_15A748E:   var_1A8 = " AND AA.GroupNature IN ('E','R') AND AA.ALIASYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE BETWEEN "
  loc_15A74A2:   Proc_183_7_EB17D4(var_1D8, CVar(Me.TXTS_DATE))
  loc_15A74C2:   Proc_183_7_EB17D4(var_228, CVar(Me.TXTE_DATE))
  loc_15A74CA:   var_238 = "  Where (((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN " & var_148 & " AND " & var_188 & var_1A8 & var_1D8 & " AND " & var_228 
  loc_15A74CE:   var_248 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A74D8:   var_88 = CStr(var_238 & var_248)
  loc_15A7504:   var_C4 = " Where (((V_DATE>="
  loc_15A7514:   Proc_183_7_EB17D4(var_F8, MemVar_1F950F4)
  loc_15A7525:   var_128 = var_C4 & var_F8 & " AND V_DATE BETWEEN " 
  loc_15A752D:   var_138 = CVar(Me.TXTS_DATE) 'Address
  loc_15A7534:   Proc_183_7_EB17D4(var_148, var_138)
  loc_15A7554:   Proc_183_7_EB17D4(var_188, CVar(Me.TXTE_DATE))
  loc_15A7560:   var_1A8 = " AND AA.GroupNature IN ('E','R') AND AA.ALIASYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE BETWEEN "
  loc_15A7574:   Proc_183_7_EB17D4(var_1D8, CVar(Me.TXTS_DATE))
  loc_15A7594:   Proc_183_7_EB17D4(var_228, CVar(Me.TXTE_DATE))
  loc_15A75A0:   var_248 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A75AA:   var_8C = CStr(var_128 & var_148 & " AND " & var_188 & var_1A8 & var_1D8 & " AND " & var_228 & var_248)
  loc_15A75D9:   var_B4 = CVar(CLng(2)) 'Long
  loc_15A75EB:   Set var_E8 = var_B4(1)
  loc_15A760D:   If (CStr(TXTE_DATE.DispID_41) = "Yes") Then
  loc_15A7624:     var_100 = "SELECT 1 AS TT,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0                    AS BALANCECR,0                    AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) " & CStr(" Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN " & var_148 & " AND " & var_188 & var_1A8)
  loc_15A7632:     var_260 = var_100 & "   AND BB.AliasYN='N'   GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 UNION " & "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) "
  loc_15A7649:     unk_58C129.Execute var_260 & var_88 & "  AND BB.AliasYN='N' GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 ", var_F8, -1
  loc_15A7654:     Set var_9C = var_E8
  loc_15A766D:   Else
  loc_15A7681:     var_100 = "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) " & var_88
  loc_15A7691:     unk_58C129.Execute var_100 & "  AND BB.AliasYN='N' GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 ", var_F8, -1
  loc_15A769C:     Set var_9C = var_E8
  loc_15A76AC:   End If
  loc_15A76C1:   Set var_98 = mDetailTrial(New)
  loc_15A76C4:   ' Referenced from:   15A7AB5
  loc_15A76D3:   If Not(Me.Recordset15.EOF) Then
  loc_15A76D9:     Set var_26C = var_98 
  loc_15A76E8:     var_26C.AddNew var_B4, var_C4
  loc_15A7730:     var_26C.Fields.Item("TT").Value = CVar(var_9C.Fields.Item("TT"))
  loc_15A7766:     var_26C.Fields.Item("GroupName").Value = vbNullString
  loc_15A7797:     var_26C.Fields.Item("GRCODE").Value = vbNullString
  loc_15A77E6:     var_26C.Fields.Item("PARTYCODE").Value = CVar(var_9C.Fields.Item("mgrcodeSUB"))
  loc_15A783A:     var_26C.Fields.Item("PARTYNAME").Value = CVar(var_9C.Fields.Item("GRNameSUB"))
  loc_15A788E:     var_26C.Fields.Item("OP_CR").Value = CVar(var_9C.Fields.Item("OP_CR"))
  loc_15A78E2:     var_26C.Fields.Item("OP_dR").Value = CVar(var_9C.Fields.Item("OP_DR"))
  loc_15A7936:     var_26C.Fields.Item("BALANCECR").Value = CVar(var_9C.Fields.Item("BALANCECR"))
  loc_15A798A:     var_26C.Fields.Item("BALANCEDR").Value = CVar(var_9C.Fields.Item("BALANCEDR"))
  loc_15A79DE:     var_26C.Fields.Item("Bal").Value = CVar(var_9C.Fields.Item("Bal"))
  loc_15A7A32:     var_26C.Fields.Item("mgrcode").Value = CVar(var_9C.Fields.Item("mgrcode"))
  loc_15A7A46:     var_B4 = "GRName"
  loc_15A7A62:     var_F8 = CVar(var_9C.Fields.Item(var_B4)) 'Address
  loc_15A7A6A:     var_C4 = "GRName"
  loc_15A7A86:     var_26C.Fields.Item(var_C4).Value = var_F8
  loc_15A7AA2:     var_26C.Update var_B4, var_C4
  loc_15A7AA9:     Set var_26C = Nothing 
  loc_15A7AB0:     var_9C.MoveNext
  loc_15A7AB5:     GoTo loc_15A76C4
  loc_15A7AB8:   End If
  loc_15A7ABB:   var_B4 = CVar(CLng(2)) 'Long
  loc_15A7AC0:   var_D4 = 1
  loc_15A7ACD:   Set var_E8 = var_B4(var_D4)
  loc_15A7AEF:   If (CStr(TXTE_DATE.DispID_41) = "Yes") Then
  loc_15A7B06:     var_100 = "SELECT 1 AS TT,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0                    AS BALANCECR,0                    AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE " & var_94
  loc_15A7B0D:     var_25C = var_100 & "    GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3 UNION "
  loc_15A7B14:     var_260 = var_25C & "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE "
  loc_15A7B22:     var_268 = var_260 & var_8C & " GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3"
  loc_15A7B2B:     unk_58C129.Execute var_268, var_F8, -1
  loc_15A7B36:     Set var_9C = var_E8
  loc_15A7B4F:   Else
  loc_15A7B63:     var_100 = "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE " & var_8C
  loc_15A7B6A:     var_25C = var_100 & " GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3"
  loc_15A7B73:     unk_58C129.Execute var_25C, var_F8, -1
  loc_15A7B7E:     Set var_9C = var_E8
  loc_15A7B8E:     ' Referenced from:     15A7F7F
  loc_15A7B8E:   End If
  loc_15A7B94:   var_FA = var_9C.EOF
  loc_15A7B9D:   If Not(var_FA) Then
  loc_15A7BA3:     Set var_278 = var_98 
  loc_15A7BB2:     var_278.AddNew var_B4, var_C4
  loc_15A7BFA:     var_278.Fields.Item("TT").Value = CVar(var_9C.Fields.Item("TT"))
  loc_15A7C30:     var_278.Fields.Item("GroupName").Value = vbNullString
  loc_15A7C61:     var_278.Fields.Item("GRCODE").Value = vbNullString
  loc_15A7CB0:     var_278.Fields.Item("PARTYCODE").Value = CVar(var_9C.Fields.Item("mgrcodeSUB"))
  loc_15A7D04:     var_278.Fields.Item("PARTYNAME").Value = CVar(var_9C.Fields.Item("GRNameSUB"))
  loc_15A7D58:     var_278.Fields.Item("OP_CR").Value = CVar(var_9C.Fields.Item("OP_CR"))
  loc_15A7DAC:     var_278.Fields.Item("OP_dR").Value = CVar(var_9C.Fields.Item("OP_DR"))
  loc_15A7E00:     var_278.Fields.Item("BALANCECR").Value = CVar(var_9C.Fields.Item("BALANCECR"))
  loc_15A7E54:     var_278.Fields.Item("BALANCEDR").Value = CVar(var_9C.Fields.Item("BALANCEDR"))
  loc_15A7EA8:     var_278.Fields.Item("Bal").Value = CVar(var_9C.Fields.Item("Bal"))
  loc_15A7EFC:     var_278.Fields.Item("mgrcode").Value = CVar(var_9C.Fields.Item("mgrcode"))
  loc_15A7F10:     var_B4 = "GRName"
  loc_15A7F1C:     var_E8 = var_9C.Fields
  loc_15A7F34:     var_C4 = "GRName"
  loc_15A7F50:     var_278.Fields.Item(var_C4).Value = CVar(var_E8.Item(var_B4))
  loc_15A7F6C:     var_278.Update var_B4, var_C4
  loc_15A7F73:     Set var_278 = Nothing 
  loc_15A7F7A:     var_9C.MoveNext
  loc_15A7F7F:     GoTo loc_15A7B8E
  loc_15A7F82:   End If
  loc_15A7F82: End If
  loc_15A7F96: If (var_98.RecordCount <= 0) Then
  loc_15A7F9F:   Call 0.Method_arg_50 (var_100, var_E8, var_E8)
  loc_15A7FC0:   MsgBox("** No Records Found to Print **", &H40, CVar(var_100), var_128, var_138)
  loc_15A7FD5:   global_130 = 0
  loc_15A7FD8:   Exit Sub
  loc_15A7FD9: End If
  loc_15A7FDC: var_27E = arg_C
  loc_15A7FE5: If (var_27E = 1) Then
  loc_15A7FEE:   var_C4 = "Paper Setting"
  loc_15A8009:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_C4, var_128, var_138)
  loc_15A8022:   Set var_108 = var_98
  loc_15A803B:   Call 0.Method_arg_148 (Me, var_108, var_FA, var_27E)
  loc_15A8046:   Set var_98 = var_108
  loc_15A804C:   var_A2 = var_FA
  loc_15A8056:   GoTo loc_15A80E6
  loc_15A805C: Else
  loc_15A8065:   var_100 = MemVar_1F953B4 & "\FaDetTrial.ttx"
  loc_15A8072:   Set var_E8 = var_98 
  loc_15A807E:   var_FA = CreateFieldDefFile(var_E8, var_100, &HFF, var_A2)
  loc_15A8091:   var_290 = CVar(var_FA) 'Variant
  loc_15A80AB:   Call 0.Method_arg_F8 (var_E8, var_FA, global_130)
  loc_15A80B6:   MemVar_1F951E8 = var_E8
  loc_15A80D6:   Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_C4, var_D4)
  loc_15A80DE:   Call 0.Method_arg_2C (var_E8, var_E8)
  loc_15A80E6: End If
  loc_15A80E6: ' Referenced from: 15A8056
  loc_15A80EB: Set var_9C = Nothing
  loc_15A80F3: Set var_98 = Nothing
  loc_15A80FB: Set var_A0 = Nothing
  loc_15A80FE: Exit Sub
  loc_15A80FF: ' Referenced from: 15A6F6C
  loc_15A810D: Call 0.Method_arg_50 (var_100, 0)
  loc_15A8122: Proc_183_57_104B0BC(var_100, "DetailedTrial")
  loc_15A812E: Exit Sub
End Sub

Public Sub Proc_245_79_1ED3970(arg_C, arg_10) '1ED3970
  'Data Table: 58C0E4
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_160 As String
  Dim var_168 As Variant
  Dim var_158 As Variant
  Dim var_18C As String
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim var_148 As Variant
  Dim var_188 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1B8 As Variant
  Dim var_124 As Variant
  Dim var_1C8 As Variant
  Dim var_144 As Variant
  Dim var_1E0 As Variant
  Dim var_178 As Variant
  Dim var_1E8 As String
  Dim var_1EC As String
  Dim var_194 As Variant
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_260 As Variant
  Dim Me As Variant
  Dim var_2A4 As Variant
  Dim var_100 As Recordset15
  Dim var_EC As Double
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_330 As Recordset15
  Dim var_15A As Integer
  Dim var_162 As Integer
  Dim var_338 As Fields15
  Dim var_33C As Field20
  Dim var_2B4 As Variant
  Dim var_90 As Recordset15
  Dim var_334 As Field20
  Dim var_340 As Recordset15
  Dim var_344 As Recordset15
  Dim var_94 As Recordset15
  Dim var_348 As Recordset15
  Dim var_34C As Recordset15
  Dim var_350 As Recordset15
  Dim var_354 As Recordset15
  Dim var_8C As Recordset15
  Dim var_358 As Recordset15
  Dim var_35C As Recordset15
  Dim var_360 As Recordset15
  Dim var_364 As Recordset15
  Dim var_394 As Variant
  Dim var_3A8 As Recordset15
  Dim var_3AC As Recordset15
  Dim var_3B0 As Recordset15
  Dim var_3B4 As Recordset15
  Dim var_3B8 As Recordset15
  Dim var_3BC As Recordset15
  Dim var_3C0 As Recordset15
  Dim var_3C4 As Recordset15
  Dim var_3C8 As Recordset15
  Dim var_F4 As Double
  Dim var_3CC As Recordset15
  Dim var_3D0 As Recordset15
  Dim var_3D4 As Recordset15
  Dim var_3D8 As Recordset15
  Dim var_3DC As Recordset15
  Dim var_3E0 As Recordset15
  Dim var_3E4 As Recordset15
  Dim var_3E8 As Recordset15
  Dim var_3EC As Recordset15
  Dim var_30C As Variant
  Dim var_3A4 As Variant
  Dim var_4BC As Variant
  Dim var_562 As Integer
  Dim var_1E4 As String
  loc_1EC7058: On Error Goto loc_1EC3945
  loc_1EC7070: Set var_148 = CVar(CLng(0))(0)
  loc_1EC7094: Call Proc_245_64_F51BE4(CInt(0), CStr(var_158))
  loc_1EC70A8: If (var_162 = 0) Then
  loc_1EC70AB:   GoTo loc_1EC38D9
  loc_1EC70AE: End If
  loc_1EC70C3: Set var_148 = CVar(CLng(1))(0)
  loc_1EC70E7: Call Proc_245_64_F51BE4(CInt(1), CStr(var_158))
  loc_1EC70FB: If (var_162 = 0) Then
  loc_1EC70FE:   GoTo loc_1EC38D9
  loc_1EC7101: End If
  loc_1EC7116: Set var_148 = CVar(CLng(2))(0)
  loc_1EC713A: Call Proc_245_64_F51BE4(CInt(2), CStr(var_158))
  loc_1EC714E: If (var_162 = 0) Then
  loc_1EC7151:   GoTo loc_1EC38D9
  loc_1EC7154: End If
  loc_1EC7169: Set var_148 = CVar(CLng(0))(1)
  loc_1EC7187: Me.TXTS_DATE.Text = CStr(TXTACC_CODE1.DispID_41)
  loc_1EC71AE: Set var_148 = CVar(CLng(1))(1)
  loc_1EC71BF: var_160 = CStr(TXTS_DATE.DispID_41)
  loc_1EC71C6: Set var_168 = Me.TXTE_DATE
  loc_1EC71CC: var_168.Text = var_160
  loc_1EC71E9: Set var_148 = Me.TEXT
  loc_1EC71EF: Call 0.Method_Proc_245_79_1ED39700 (CInt(&HC), var_168, var_162, TXTACC_CODE1.DispID_41)
  loc_1EC71F7: var_158 = CVar(var_168) 'Address
  loc_1EC7218: If CBool(Trim(var_158) <> vbNullString) Then
  loc_1EC722C:   Set var_148 = Me.TEXT
  loc_1EC7232:   Call 0.Method_Proc_245_79_1ED39700 (CInt(&HC), var_168, var_160, " And VIEWLEDGER.LOGSite_Code='")
  loc_1EC723A:   var_162 = var_168.Tag
  loc_1EC724A:   var_E4 = TXTACC_CODE1.DispID_41 & var_160 & "'"
  loc_1EC725E: Else
  loc_1EC726C:   var_E4 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078 & "'"
  loc_1EC7272: End If
  loc_1EC7296: unk_58C129.Execute "SELECT RepToBy FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_158, -1
  loc_1EC72A1: Set var_88 = var_148
  loc_1EC72C5: If (var_88.RecordCount > 0) Then
  loc_1EC72D7:   var_148 = var_88.Fields
  loc_1EC72DF:   var_168 = var_148.Item("RepToBy")
  loc_1EC72F0:   var_FC = Proc_183_2_E5AE94(CVar(var_168), var_148)
  loc_1EC72F9: End If
  loc_1EC7301: If (arg_10 = "LedInt") Then
  loc_1EC730F:   Set var_148 = Me.TEXT
  loc_1EC7315:   Call 0.Method_Proc_245_79_1ED39700 (CInt(5), var_168)
  loc_1EC731D:   var_160 = "Enter Interest Rate"
  loc_1EC733E:   If (Proc_183_19_E8E68C(var_168, var_160) = 0) Then
  loc_1EC7341:     GoTo loc_1EC38D9
  loc_1EC7344:   End If
  loc_1EC7344: End If
  loc_1EC7359: Set var_148 = CVar(CLng(2))(1)
  loc_1EC736A: var_98 = CStr(TEXT.DispID_41)
  loc_1EC737B: If (arg_10 = "AcCheckList") Then
  loc_1EC7381:   var_E0 = vbNullString
  loc_1EC738A:   global_92 = vbNullString
  loc_1EC739A:   Set var_148 = Me.Check1
  loc_1EC73A0:   Call 0.Method_Proc_245_79_1ED39700 (3, var_168, var_15A)
  loc_1EC73A8:   var_162 = var_168.Value
  loc_1EC73BE:   If (CLng(var_15A) = 0) Then
  loc_1EC73DC:     Call Proc_245_61_127C7BC(global_104, 3, CByte(1))
  loc_1EC73E7:     global_92 = var_160
  loc_1EC73F7:     If (global_130 = 0) Then
  loc_1EC73FA:       GoTo loc_1EC38D9
  loc_1EC73FD:     End If
  loc_1EC73FD:   End If
  loc_1EC7408:   If (global_92 <> vbNullString) Then
  loc_1EC7415:     var_160 = " AND V_TYPE IN (" & global_92
  loc_1EC741C:     var_E0 = var_160 & ") "
  loc_1EC7422:   End If
  loc_1EC7430:   Set var_148 = Me.TEXT
  loc_1EC7436:   Call 0.Method_Proc_245_79_1ED39700 (CInt(2), var_168, var_160)
  loc_1EC743E:   var_160 = var_168.Text
  loc_1EC745A:   If (CDbl(Val(var_160)) > CDbl(0)) Then
  loc_1EC7464:     var_188 = CVar(var_E0 & " AND VIEWLEDGER.DEBIT+VIEWLEDGER.CREDIT") 'String
  loc_1EC7470:     Set var_148 = Me.TEXT
  loc_1EC7476:     Call 0.Method_Proc_245_79_1ED39700 (&HA, var_168)
  loc_1EC7496:     var_1B4 = var_188 & Trim(CVar(var_168)) & " " 
  loc_1EC74A8:     Set var_194 = Me.TEXT
  loc_1EC74AE:     Call 0.Method_Proc_245_79_1ED39700 (CInt(2), var_1B8, var_160)
  loc_1EC74B6:     var_1B4 = var_1B8.Text
  loc_1EC74CC:     var_E0 = CStr(TXTACC_CODE1.DispID_41 & CVar(Val(var_160)))
  loc_1EC74EA:   End If
  loc_1EC74F5:   Set var_148 = Me.TEXT
  loc_1EC74FB:   Call 0.Method_Proc_245_79_1ED39700 (CInt(3))
  loc_1EC7524:   If CBool(Trim(CVar(var_168)) <> vbNullString) Then
  loc_1EC753C:     Set var_148 = Me.TEXT
  loc_1EC7542:     Call 0.Method_Proc_245_79_1ED39700 (CInt(3), var_168)
  loc_1EC7567:     var_E0 = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC757A:   End If
  loc_1EC7585:   Set var_148 = Me.TEXT
  loc_1EC758B:   Call 0.Method_Proc_245_79_1ED39700 (CInt(4), var_168)
  loc_1EC75B4:   If CBool(Trim(CVar(var_168)) <> vbNullString) Then
  loc_1EC75CC:     Set var_148 = Me.TEXT
  loc_1EC75D2:     Call 0.Method_Proc_245_79_1ED39700 (CInt(4), var_168)
  loc_1EC75F7:     var_E0 = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC760A:   End If
  loc_1EC760A: End If
  loc_1EC760D: var_1CC = var_98
  loc_1EC7618: If (var_1CC = "Selected") Then
  loc_1EC7621:   global_84 = vbNullString
  loc_1EC7628:   var_9C = vbNullString
  loc_1EC7637:   Set var_148 = Me.Check1
  loc_1EC763D:   Call 0.Method_Proc_245_79_1ED39700 (1, var_168)
  loc_1EC7645:   var_15A = var_168.Value
  loc_1EC765B:   If (CLng(var_15A) = 0) Then
  loc_1EC7679:     Call Proc_245_61_127C7BC(global_96, 1, CByte(1))
  loc_1EC7684:     global_84 = var_160
  loc_1EC7694:     If (global_130 = 0) Then
  loc_1EC7697:       GoTo loc_1EC38D9
  loc_1EC769A:     End If
  loc_1EC769A:   End If
  loc_1EC76A5:   If (global_84 <> vbNullString) Then
  loc_1EC76B9:     var_9C = " WHERE SUBCODE IN (" & global_84 & ") "
  loc_1EC76BF:   End If
  loc_1EC76C2:   var_1D0 = arg_10
  loc_1EC76CD:   If (var_1D0 = "LedDeb") Then
  loc_1EC7703:     var_1A4 = (CVar(var_9C) + IIf((var_9C = vbNullString), " Where", " AND"))
  loc_1EC770C:     var_1B4 = (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) + " Nature='Customer'")
  loc_1EC7711:     var_9C = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC7726:   Else
  loc_1EC772E:     If (var_1D0 = "LedCred") Then
  loc_1EC7747:       var_158 = " Where"
  loc_1EC775C:       var_188 = IIf((var_9C = vbNullString), var_158, " AND")
  loc_1EC7764:       var_1A4 = (CVar(var_9C) + var_188)
  loc_1EC776D:       var_1B4 = (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) + " Nature='Supplier'")
  loc_1EC7772:       var_9C = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC7784:     End If
  loc_1EC7784:   End If
  loc_1EC77A8:   unk_58C129.Execute "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME", var_158, -1
  loc_1EC77B3:   Set var_88 = var_148
  loc_1EC77C6: Else
  loc_1EC77CE:   If (var_1CC = "Merge") Then
  loc_1EC77E6:     Set var_148 = CVar(CLng(3))(0)
  loc_1EC780A:     Call Proc_245_64_F51BE4(CInt(3), CStr(var_158))
  loc_1EC781E:     If (var_162 = 0) Then
  loc_1EC7821:       GoTo loc_1EC38D9
  loc_1EC7824:     End If
  loc_1EC7839:     Set var_148 = CVar(CLng(4))(0)
  loc_1EC785D:     Call Proc_245_64_F51BE4(CInt(4), CStr(var_158))
  loc_1EC7871:     If (var_162 = 0) Then
  loc_1EC7874:       GoTo loc_1EC38D9
  loc_1EC7877:     End If
  loc_1EC788C:     Set var_148 = CVar(CLng(3))(1)
  loc_1EC78AA:     Me.TXTACC_CODE.Text = CStr(Check1.DispID_41)
  loc_1EC78D1:     Set var_148 = CVar(CLng(3))(2)
  loc_1EC78EF:     Me.TXTACC_CODE.Tag = CStr(TXTACC_CODE.DispID_41)
  loc_1EC7916:     Set var_148 = CVar(CLng(4))(1)
  loc_1EC7934:     Me.TXTACC_CODE1.Text = CStr(TXTACC_CODE.DispID_41)
  loc_1EC795B:     Set var_148 = CVar(CLng(4))(2)
  loc_1EC7979:     Me.TXTACC_CODE1.Tag = CStr(TXTACC_CODE1.DispID_41)
  loc_1EC79AD:     var_160 = Me.TXTACC_CODE1.Text
  loc_1EC79C5:     If (Me.TXTACC_CODE.Text = var_160) Then
  loc_1EC79CE:       Call 0.Method_arg_50 (var_160, var_162, Check1.DispID_41, var_162)
  loc_1EC79DC:       var_178 = CVar(var_160) 'String
  loc_1EC79E9:       var_158 = " ** Both A/C are Same** "
  loc_1EC79EF:       MsgBox(var_158, &H10, var_178, var_188, CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(Me.TXTACC_CODE)))
  loc_1EC79FF:       GoTo loc_1EC38D9
  loc_1EC7A02:     End If
  loc_1EC7A1F:     var_160 = Me.TXTACC_CODE.Tag
  loc_1EC7A39:     Set var_168 = Me.TXTACC_CODE1
  loc_1EC7A48:     var_1EC = "SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST WHERE SUBCODE IN ('" & var_160 & "','" & var_168.Tag
  loc_1EC7A58:     unk_58C129.Execute var_1EC & "') ORDER BY NAME", var_158, -1
  loc_1EC7A63:     Set var_88 = var_194
  loc_1EC7A84:   Else
  loc_1EC7A8C:     If (var_1CC = "Group(Selected)") Then
  loc_1EC7A95:       global_88 = vbNullString
  loc_1EC7A9C:       var_9C = vbNullString
  loc_1EC7AAB:       Set var_148 = Me.Check1
  loc_1EC7AB1:       Call 0.Method_Proc_245_79_1ED39700 (2, var_168, var_15A, var_194)
  loc_1EC7AB9:       Check1.DispID_41 = var_168.Value
  loc_1EC7ACF:       If (CLng(var_15A) = 0) Then
  loc_1EC7AED:         Call Proc_245_61_127C7BC(global_100, 2, CByte(1))
  loc_1EC7AF8:         global_88 = var_160
  loc_1EC7B08:         If (global_130 = 0) Then
  loc_1EC7B0B:           GoTo loc_1EC38D9
  loc_1EC7B0E:         End If
  loc_1EC7B0E:       End If
  loc_1EC7B19:       If (global_88 <> vbNullString) Then
  loc_1EC7B2D:         var_9C = " WHERE CODE IN (" & global_88 & ") "
  loc_1EC7B33:       End If
  loc_1EC7B57:       unk_58C129.Execute "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME", var_158, -1
  loc_1EC7B62:       Set var_88 = var_148
  loc_1EC7B75:     Else
  loc_1EC7B7D:       If (var_1CC = "Group(Range)") Then
  loc_1EC7B95:         Set var_148 = CVar(CLng(3))(0)
  loc_1EC7BB9:         Call Proc_245_64_F51BE4(CInt(3), CStr(var_158))
  loc_1EC7BCD:         If (var_162 = 0) Then
  loc_1EC7BD0:           GoTo loc_1EC38D9
  loc_1EC7BD3:         End If
  loc_1EC7BE8:         Set var_148 = CVar(CLng(4))(0)
  loc_1EC7C0C:         Call Proc_245_64_F51BE4(CInt(4), CStr(var_158))
  loc_1EC7C20:         If (var_162 = 0) Then
  loc_1EC7C23:           GoTo loc_1EC38D9
  loc_1EC7C26:         End If
  loc_1EC7C3B:         Set var_148 = CVar(CLng(5))(0)
  loc_1EC7C5F:         Call Proc_245_64_F51BE4(CInt(5), CStr(var_158))
  loc_1EC7C73:         If (var_162 = 0) Then
  loc_1EC7C76:           GoTo loc_1EC38D9
  loc_1EC7C79:         End If
  loc_1EC7C8E:         Set var_148 = CVar(CLng(4))(1)
  loc_1EC7CAC:         Me.TXTACC_CODE.Text = CStr(Check1.DispID_41)
  loc_1EC7CD3:         Set var_148 = CVar(CLng(4))(2)
  loc_1EC7CF1:         Me.TXTACC_CODE.Tag = CStr(TXTACC_CODE.DispID_41)
  loc_1EC7D18:         Set var_148 = CVar(CLng(5))(1)
  loc_1EC7D36:         Me.TXTACC_CODE1.Text = CStr(TXTACC_CODE.DispID_41)
  loc_1EC7D5D:         Set var_148 = CVar(CLng(5))(2)
  loc_1EC7D7B:         Me.TXTACC_CODE1.Tag = CStr(TXTACC_CODE1.DispID_41)
  loc_1EC7DA2:         Set var_148 = CVar(CLng(3))(2)
  loc_1EC7DBB:         Set var_168 = Me.TXTACC_CODE
  loc_1EC7DCD:         Set var_194 = Me.TXTACC_CODE1
  loc_1EC7DEC:         var_160 = CStr(var_158)
  loc_1EC7DF7:         var_1E8 = "SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST WHERE CODE='" & var_160 & "' AND NAME BETWEEN '"
  loc_1EC7E1C:         unk_58C129.Execute var_1E8 & var_168.Text & "' AND '" & var_194.Text & "' ORDER BY NAME", var_178, -1
  loc_1EC7E27:         Set var_88 = var_1B8
  loc_1EC7E54:       Else
  loc_1EC7E5C:         If (var_1CC = "City Wise") Then
  loc_1EC7E65:           global_88 = vbNullString
  loc_1EC7E6C:           var_9C = vbNullString
  loc_1EC7E7B:           Set var_148 = Me.Check1
  loc_1EC7E81:           Call 0.Method_Proc_245_79_1ED39700 (2, var_168, var_15A, var_1B8, TXTACC_CODE1.DispID_41, var_162, Check1.DispID_41)
  loc_1EC7E89:           var_162 = var_168.Value
  loc_1EC7E9F:           If (CLng(var_15A) = 0) Then
  loc_1EC7EBD:             Call Proc_245_61_127C7BC(global_100, 2, CByte(1))
  loc_1EC7EC8:             global_88 = var_160
  loc_1EC7ED8:             If (global_130 = 0) Then
  loc_1EC7EDB:               GoTo loc_1EC38D9
  loc_1EC7EDE:             End If
  loc_1EC7EDE:           End If
  loc_1EC7EE9:           If (global_88 <> vbNullString) Then
  loc_1EC7EFD:             var_9C = " WHERE CITYCODE IN (" & global_88 & ") "
  loc_1EC7F03:           End If
  loc_1EC7F06:           var_200 = arg_10
  loc_1EC7F11:           If (var_200 = "LedDeb") Then
  loc_1EC7F47:             var_1A4 = (CVar(var_9C) + IIf((var_9C = vbNullString), " Where", " AND"))
  loc_1EC7F50:             var_1B4 = (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) + " Nature='Customer'")
  loc_1EC7F55:             var_9C = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC7F6A:           Else
  loc_1EC7F72:             If (var_200 = "LedCred") Then
  loc_1EC7F80:               var_178 = " AND"
  loc_1EC7F8B:               var_158 = " Where"
  loc_1EC7FA0:               var_188 = IIf((var_9C = vbNullString), var_158, var_178)
  loc_1EC7FA8:               var_1A4 = (CVar(var_9C) + var_188)
  loc_1EC7FB1:               var_1B4 = (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) + " Nature='Supplier'")
  loc_1EC7FB6:               var_9C = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC7FC8:             End If
  loc_1EC7FC8:           End If
  loc_1EC7FDC:           var_160 = "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C
  loc_1EC7FEC:           unk_58C129.Execute var_160 & " ORDER BY NAME", var_158, -1
  loc_1EC7FF7:           Set var_88 = var_148
  loc_1EC8007:         End If
  loc_1EC8007:       End If
  loc_1EC8007:     End If
  loc_1EC8007:   End If
  loc_1EC8007: End If
  loc_1EC801B: If (var_88.RecordCount <= 0) Then
  loc_1EC8037:   MsgBox("No A/c to Print", 0, var_178, var_188, CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)))
  loc_1EC8047:   GoTo loc_1EC38D9
  loc_1EC804A: End If
  loc_1EC805A: Set var_148 = New
  loc_1EC8069: Call 0.Method_arg_1AC (var_148, var_168, var_148, var_160, Check1.DispID_41)
  loc_1EC8074: Set var_8C = var_148
  loc_1EC807D: Set var_8C = var_168
  loc_1EC808A: var_A0 = vbNullString
  loc_1EC8090: var_A4 = vbNullString
  loc_1EC8093: ' Referenced from: 1EC81FD
  loc_1EC80A2: If Not(Me.Recordset15.EOF) Then
  loc_1EC80F0:   var_210 = (CVar(var_A0) + IIf((Trim(var_A0) = vbNullString), vbNullString, ","))
  loc_1EC80F9:   var_230 = (var_210 + "'")
  loc_1EC812B:   var_270 = (var_230 + Trim(CVar(var_88.Fields.Item("subcode"))))
  loc_1EC8134:   var_290 = (var_270 + "'")
  loc_1EC8139:   var_A0 = CStr(var_290)
  loc_1EC81A3:   var_210 = (CVar(var_A4) + IIf((Trim(var_A4) = vbNullString), vbNullString, ","))
  loc_1EC81D5:   var_260 = (var_210 + Trim(CVar(var_88.Fields.Item("Name"))))
  loc_1EC81DA:   var_A4 = CStr(Trim(CVar(var_88.Fields.Item("subcode"))))
  loc_1EC81F8:   var_88.MoveNext
  loc_1EC81FD:   GoTo loc_1EC8093
  loc_1EC8200: End If
  loc_1EC8206: var_294 = GRepFormName
  loc_1EC8211: If Not (var_294 = "Led") Then
  loc_1EC821C:   If Not (var_294 = "LedInt") Then
  loc_1EC8227:     If (var_294 = "AcCheckList") Then
  loc_1EC822A:     End If
  loc_1EC822A:   End If
  loc_1EC823F:   var_148 = Me.Fields
  loc_1EC8247:   var_168 = var_148.Item("ShowCityName")
  loc_1EC8269:   If (var_168.Value = "Yes") Then
  loc_1EC8280:     var_160 = "SELECT VIEWLEDGER.*,NameWithCity AS NAME FROM VIEWLEDGER LEFT JOIN ViewSubgroup ON VIEWLEDGER.PARTY1=ViewSubgroup.SUBCODE WHERE VIEWLEDGER.PARTY IN (" & var_A0
  loc_1EC8295:     Proc_183_7_EB17D4(var_178, CVar(Me.TXTS_DATE), CVar(var_160 & ") AND VIEWLEDGER.V_DATE Between "), var_2B4, -1, var_148)
  loc_1EC82B5:     Proc_183_7_EB17D4(var_210, CVar(Me.TXTE_DATE), var_162 & var_178 & " And ", Check1.DispID_41)
  loc_1EC82EC:     var_2A4 = var_148 & var_210 & " " & CVar(var_E0) & "  " & CVar(var_E4) & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo" 
  loc_1EC82FA:     unk_58C129.Execute CStr(var_2A4), var_160, var_148
  loc_1EC8305:     Set var_90 = var_148
  loc_1EC8334:   Else
  loc_1EC8348:     var_160 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY IN (" & var_A0
  loc_1EC835D:     Proc_183_7_EB17D4(var_178, CVar(Me.TXTS_DATE), CVar(var_160 & ") AND VIEWLEDGER.V_DATE Between "))
  loc_1EC8376:     var_1C8 = CVar(Me.TXTE_DATE) 'Address
  loc_1EC837D:     Proc_183_7_EB17D4(var_210, var_1C8, var_2B4 & var_178 & " And ")
  loc_1EC8385:     var_230 = -1 & var_210 
  loc_1EC83A1:     var_270 = var_148 & var_210 & " " & CVar(var_E0) & "  " 
  loc_1EC83AB:     var_290 = var_270 & CVar(var_E4) 
  loc_1EC83C2:     unk_58C129.Execute CStr(var_290 & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo"), var_148, 
  loc_1EC83CD:     Set var_90 = var_148
  loc_1EC83F9:   End If
  loc_1EC83F9: End If
  loc_1EC840D: If (var_88.RecordCount > 0) Then
  loc_1EC8413:   var_88.MoveFirst
  loc_1EC8418:   ' Referenced from: 1ED27A9
  loc_1EC8418: End If
  loc_1EC8427: Loop Until Not(var_88.EOF) 'do at: 1EC27AC
  loc_1EC8438: Set var_148 = Me.TEXT
  loc_1EC843E: Call 0.Method_Proc_245_79_1ED39700 (CInt(0), var_168)
  loc_1EC8462: If (CDbl(Val(var_168.Text)) > CDbl(0)) Then
  loc_1EC8472:   var_124 = "SELECT ISNULL(SUM(DEBIT),0)-ISNULL(SUM(CREDIT),0) AS BALANCE FROM VIEWLEDGER WHERE PARTY="
  loc_1EC848E:   var_168 = var_88.Fields.Item("subcode")
  loc_1EC849D:   Proc_183_9_EAB2F0(var_178, CVar(var_168), " ")
  loc_1EC84BD:   Proc_183_7_EB17D4(var_1C8, CVar(Me.TXTE_DATE), var_88.Fields & var_210 & var_178 & " AND V_DATE<=")
  loc_1EC84C5:   var_210 = -1 & var_1C8 
  loc_1EC84C9:   var_160 = CStr(var_210)
  loc_1EC84D3:   unk_58C129.Execute var_160, var_194, 
  loc_1EC84DE:   Set var_100 = var_194
  loc_1EC8512:   If (var_100.RecordCount > 0) Then
  loc_1EC851E:     Set var_148 = Me.TEXT
  loc_1EC8524:     Call 0.Method_Proc_245_79_1ED39700 (8)
  loc_1EC8533:     var_178 = Trim(CVar(var_168))
  loc_1EC853B:     var_2C4 = var_178 'Variant
  loc_1EC8550:     If (var_2C4 = "=") Then
  loc_1EC856D:       var_168 = var_100.Fields.Item("Balance")
  loc_1EC8575:       var_158 = var_168.Value
  loc_1EC858B:       Set var_194 = Me.TEXT
  loc_1EC8591:       Call 0.Method_Proc_245_79_1ED39700 (CInt(0), var_1B8, var_160)
  loc_1EC8599:       var_158 = var_1B8.Text
  loc_1EC85BE:       If CBool(var_168 <> CVar(Val(var_160))) Then
  loc_1EC85C1:         GoTo loc_1EC27A1
  loc_1EC85C4:       End If
  loc_1EC85C7:     Else
  loc_1EC85D2:       If (var_2C4 = "<") Then
  loc_1EC860D:         Set var_194 = Me.TEXT
  loc_1EC8613:         Call 0.Method_Proc_245_79_1ED39700 (CInt(0), var_1B8)
  loc_1EC8640:         If (var_100.Fields.Item("Balance").Value >= CVar(Val(var_1B8.Text))) Then
  loc_1EC8643:           GoTo loc_1EC27A1
  loc_1EC8646:         End If
  loc_1EC8649:       Else
  loc_1EC8654:         If (var_2C4 = "<=") Then
  loc_1EC868F:           Set var_194 = Me.TEXT
  loc_1EC8695:           Call 0.Method_Proc_245_79_1ED39700 (CInt(0), var_1B8)
  loc_1EC86C2:           If (var_100.Fields.Item("Balance").Value > CVar(Val(var_1B8.Text))) Then
  loc_1EC86C5:             GoTo loc_1EC27A1
  loc_1EC86C8:           End If
  loc_1EC86CB:         Else
  loc_1EC86D6:           If (var_2C4 = ">") Then
  loc_1EC8711:             Set var_194 = Me.TEXT
  loc_1EC8717:             Call 0.Method_Proc_245_79_1ED39700 (CInt(0), var_1B8)
  loc_1EC8744:             If (var_100.Fields.Item("Balance").Value <= CVar(Val(var_1B8.Text))) Then
  loc_1EC8747:               GoTo loc_1EC27A1
  loc_1EC874A:             End If
  loc_1EC874D:           Else
  loc_1EC8758:             If (var_2C4 = ">=") Then
  loc_1EC8793:               Set var_194 = Me.TEXT
  loc_1EC8799:               Call 0.Method_Proc_245_79_1ED39700 (CInt(0), var_1B8)
  loc_1EC87C6:               If (var_100.Fields.Item("Balance").Value < CVar(Val(var_1B8.Text))) Then
  loc_1EC87C9:                 GoTo loc_1EC27A1
  loc_1EC87CC:               End If
  loc_1EC87CF:             Else
  loc_1EC87DA:               If (var_2C4 = "<>") Then
  loc_1EC87F7:                 var_168 = var_100.Fields.Item("Balance")
  loc_1EC8815:                 Set var_194 = Me.TEXT
  loc_1EC881B:                 Call 0.Method_Proc_245_79_1ED39700 (CInt(0), var_1B8)
  loc_1EC8848:                 If (var_168.Value = CVar(Val(var_1B8.Text))) Then
  loc_1EC884B:                   GoTo loc_1EC27A1
  loc_1EC884E:                 End If
  loc_1EC884E:               End If
  loc_1EC884E:             End If
  loc_1EC884E:           End If
  loc_1EC884E:         End If
  loc_1EC884E:       End If
  loc_1EC884E:     End If
  loc_1EC884E:   End If
  loc_1EC884E: End If
  loc_1EC885C: Set var_148 = Me.TEXT
  loc_1EC8862: Call 0.Method_Proc_245_79_1ED39700 (CInt(1), var_168)
  loc_1EC8886: If (CDbl(Val(var_168.Text)) > CDbl(0)) Then
  loc_1EC8896:   var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) AS BALANCE FROM VIEWLEDGER WHERE PARTY="
  loc_1EC88B2:   var_168 = var_88.Fields.Item("subcode")
  loc_1EC88C1:   Proc_183_9_EAB2F0(var_178, CVar(var_168), CVar(Val(var_1B8.Text)))
  loc_1EC88E1:   Proc_183_7_EB17D4(var_1C8, CVar(Me.TXTE_DATE), var_88.Fields & var_210 & var_178 & " AND V_DATE<=")
  loc_1EC88E9:   var_210 = -1 & var_1C8 
  loc_1EC88ED:   var_160 = CStr(var_210)
  loc_1EC88F7:   unk_58C129.Execute var_160, var_194, 
  loc_1EC8902:   Set var_100 = var_194
  loc_1EC8936:   If (var_100.RecordCount > 0) Then
  loc_1EC8942:     Set var_148 = Me.TEXT
  loc_1EC8948:     Call 0.Method_Proc_245_79_1ED39700 (9)
  loc_1EC895F:     var_2D4 = Trim(CVar(var_168)) 'Variant
  loc_1EC8974:     If (var_2D4 = "=") Then
  loc_1EC8991:       var_168 = var_100.Fields.Item("Balance")
  loc_1EC8999:       var_158 = var_168.Value
  loc_1EC89AF:       Set var_194 = Me.TEXT
  loc_1EC89B5:       Call 0.Method_Proc_245_79_1ED39700 (CInt(1), var_1B8, var_160)
  loc_1EC89BD:       var_158 = var_1B8.Text
  loc_1EC89E2:       If CBool(var_168 <> CVar(Val(var_160))) Then
  loc_1EC89E5:         GoTo loc_1EC27A1
  loc_1EC89E8:       End If
  loc_1EC89EB:     Else
  loc_1EC89F6:       If (var_2D4 = "<") Then
  loc_1EC8A31:         Set var_194 = Me.TEXT
  loc_1EC8A37:         Call 0.Method_Proc_245_79_1ED39700 (CInt(1), var_1B8)
  loc_1EC8A64:         If (var_100.Fields.Item("Balance").Value >= CVar(Val(var_1B8.Text))) Then
  loc_1EC8A67:           GoTo loc_1EC27A1
  loc_1EC8A6A:         End If
  loc_1EC8A6D:       Else
  loc_1EC8A78:         If (var_2D4 = "<=") Then
  loc_1EC8AB3:           Set var_194 = Me.TEXT
  loc_1EC8AB9:           Call 0.Method_Proc_245_79_1ED39700 (CInt(1), var_1B8)
  loc_1EC8AE6:           If (var_100.Fields.Item("Balance").Value > CVar(Val(var_1B8.Text))) Then
  loc_1EC8AE9:             GoTo loc_1EC27A1
  loc_1EC8AEC:           End If
  loc_1EC8AEF:         Else
  loc_1EC8AFA:           If (var_2D4 = ">") Then
  loc_1EC8B35:             Set var_194 = Me.TEXT
  loc_1EC8B3B:             Call 0.Method_Proc_245_79_1ED39700 (CInt(1), var_1B8)
  loc_1EC8B68:             If (var_100.Fields.Item("Balance").Value <= CVar(Val(var_1B8.Text))) Then
  loc_1EC8B6B:               GoTo loc_1EC27A1
  loc_1EC8B6E:             End If
  loc_1EC8B71:           Else
  loc_1EC8B7C:             If (var_2D4 = ">=") Then
  loc_1EC8BB7:               Set var_194 = Me.TEXT
  loc_1EC8BBD:               Call 0.Method_Proc_245_79_1ED39700 (CInt(1), var_1B8)
  loc_1EC8BEA:               If (var_100.Fields.Item("Balance").Value < CVar(Val(var_1B8.Text))) Then
  loc_1EC8BED:                 GoTo loc_1EC27A1
  loc_1EC8BF0:               End If
  loc_1EC8BF3:             Else
  loc_1EC8BFE:               If (var_2D4 = "<>") Then
  loc_1EC8C39:                 Set var_194 = Me.TEXT
  loc_1EC8C3F:                 Call 0.Method_Proc_245_79_1ED39700 (CInt(1), var_1B8)
  loc_1EC8C6C:                 If (var_100.Fields.Item("Balance").Value = CVar(Val(var_1B8.Text))) Then
  loc_1EC8C6F:                   GoTo loc_1EC27A1
  loc_1EC8C72:                 End If
  loc_1EC8C72:               End If
  loc_1EC8C72:             End If
  loc_1EC8C72:           End If
  loc_1EC8C72:         End If
  loc_1EC8C72:       End If
  loc_1EC8C72:     End If
  loc_1EC8C72:   End If
  loc_1EC8C72: End If
  loc_1EC8C75: var_EC = CDbl(0)
  loc_1EC8CB8: var_A8 = CStr(IIf((var_98 = "Merge"), 0, CVar(var_88.Fields.Item("subcode"))))
  loc_1EC8CD1: If (var_98 <> "Merge") Then
  loc_1EC8CFA:   var_178 = Trim(CVar(var_88.Fields.Item("Name")))
  loc_1EC8D03:   var_A4 = CStr(var_178)
  loc_1EC8D10: End If
  loc_1EC8D29: var_A4 = CStr(Left(var_A4, &H32))
  loc_1EC8D32: var_2D8 = arg_10
  loc_1EC8D3D: If (var_2D8 = "LedDeb") Then
  loc_1EC8D8E:   var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1EC8DC0:   If CBool((var_88.Fields.Item("GroupNature").Value <> "E") And (var_1B8.Value <> "R")) Then
  loc_1EC8DE9:     Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")))
  loc_1EC8DF9:     Proc_183_7_EB17D4(var_1C8, CVar(Me.TXTE_DATE))
  loc_1EC8E04:     var_280 = 0
  loc_1EC8E45:     var_250 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE <=" & var_1C8 & " AND CREDIT >0 " & CVar(var_E4) 
  loc_1EC8E5C:     unk_58C129.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1EC8E64:     var_194 = var_194.Fields
  loc_1EC8E6C:     var_280 = var_1B8.Item(var_1B8)
  loc_1EC8E74:     var_2DC = var_2DC.Value
  loc_1EC8E7D:     var_EC = CSng(var_290)
  loc_1EC8ECF:     Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1EC8ED8:     var_1B4 = CVar(Me.TXTS_DATE) 'Address
  loc_1EC8EDF:     Proc_183_7_EB17D4(var_1C8, var_1B4)
  loc_1EC8EE7:     var_2EC = CVar(var_EC) 'Double
  loc_1EC8EF1:     var_280 = 0
  loc_1EC8F32:     var_250 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE<" & var_1C8 & " AND DEBIT>0 " & CVar(var_E4) 
  loc_1EC8F49:     unk_58C129.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1EC8F51:     var_194 = var_194.Fields
  loc_1EC8F59:     var_280 = var_1B8.Item(var_1B8)
  loc_1EC8F61:     var_2DC = var_2DC.Value
  loc_1EC8F69:     var_2A4 = (var_290 - var_290)
  loc_1EC8F6E:     var_EC = CSng(var_290 & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo")
  loc_1EC8F9D:   Else
  loc_1EC8FC3:     Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1EC8FD3:     Proc_183_7_EB17D4(var_1B4, MemVar_1F950F4, var_2EC)
  loc_1EC8FE3:     Proc_183_7_EB17D4(var_250, CVar(Me.TXTE_DATE))
  loc_1EC8FEE:     var_2FC = 0
  loc_1EC902C:     var_260 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 
  loc_1EC9056:     unk_58C129.Execute CStr(var_260 & " AND CREDIT >0 " & CVar(var_E4) & vbNullString), var_2B4, -1
  loc_1EC905E:     var_194 = var_194.Fields
  loc_1EC9066:     var_2FC = var_1B8.Item(var_1B8)
  loc_1EC906E:     var_2DC = var_2DC.Value
  loc_1EC9077:     var_EC = CSng(var_30C)
  loc_1EC90AC:     var_114 = "subcode"
  loc_1EC90CF:     Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item(var_114)), var_EC)
  loc_1EC90DF:     Proc_183_7_EB17D4(var_1B4, MemVar_1F950F4, var_30C)
  loc_1EC90EF:     Proc_183_7_EB17D4(var_250, CVar(Me.TXTS_DATE))
  loc_1EC90F7:     var_31C = CVar(var_EC) 'Double
  loc_1EC9101:     var_2FC = 0
  loc_1EC9117:     var_124 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1EC915B:     var_2A4 = var_124 & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & " AND DEBIT>0 " & CVar(var_E4) & vbNullString 
  loc_1EC9169:     unk_58C129.Execute CStr(var_2A4), var_2B4, -1
  loc_1EC9171:     var_194 = var_194.Fields
  loc_1EC9179:     var_2FC = var_1B8.Item(var_1B8)
  loc_1EC9181:     var_2DC = var_2DC.Value
  loc_1EC9189:     var_32C = (var_30C - var_30C)
  loc_1EC918E:     var_EC = CSng(var_32C)
  loc_1EC91C0:   End If
  loc_1EC91C7:   If (var_EC < CDbl(0)) Then
  loc_1EC91CD:     Set var_330 = var_8C 
  loc_1EC91DC:     var_330.AddNew var_114, var_124
  loc_1EC91E1:     var_124 = vbNullString
  loc_1EC91F0:     var_330.Collect = "V_Type"
  loc_1EC91F5:     var_124 = 0
  loc_1EC9204:     var_330.Collect = "V_NO"
  loc_1EC9209:     var_124 = vbNullString
  loc_1EC9218:     var_330.Collect = "V_ADD"
  loc_1EC921D:     var_124 = 0
  loc_1EC922C:     var_330.Collect = "V_SNo"
  loc_1EC9231:     var_124 = "Opening Balance"
  loc_1EC9240:     var_330.Collect = "Name"
  loc_1EC926B:     var_188 = Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy")
  loc_1EC927D:     var_330.Collect = "V_DATE"
  loc_1EC92C6:     var_330.Collect = "PDate"
  loc_1EC92DB:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1EC92E9:     var_330.Collect = "cr"
  loc_1EC92F2:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1EC9300:     var_330.Collect = "ADJQTY"
  loc_1EC9305:     var_124 = "0"
  loc_1EC9314:     var_330.Collect = "Val"
  loc_1EC931C:     var_124 = CVar(var_A4) 'String
  loc_1EC9329:     var_330.Collect = "Name1"
  loc_1EC933E:     var_330.Collect = "subcode"
  loc_1EC936B:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy"))) 'String
  loc_1EC9378:     var_330.Collect = "CITY_NAME"
  loc_1EC938A:     var_114 = "Add1"
  loc_1EC93AF:     var_15A = IsNull(CVar(var_88.Fields.Item(var_114)))
  loc_1EC93DA:     var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1EC93E0:     var_124 = "Add1"
  loc_1EC93EC:     var_194 = var_88.Fields
  loc_1EC9405:     var_178 = vbNullString
  loc_1EC9444:     var_1C8 = var_88.Fields.Item("Add2").Value
  loc_1EC944C:     var_210 = (", " + var_1C8)
  loc_1EC9470:     var_260 = Trim(IIf(var_162, vbNullString, var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<"))
  loc_1EC9478:     var_270 = (IIf(var_15A, var_178, CVar(var_194.Item(var_124))) + var_260)
  loc_1EC947F:     var_290 = Trim(var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<" & IIf(var_162, vbNullString, var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<") & " AND DEBIT>0 ")
  loc_1EC9491:     var_330.Collect = "Address1"
  loc_1EC94CD:     var_330.Update var_114, var_124
  loc_1EC94D4:     Set var_330 = Nothing 
  loc_1EC94DB:     var_EC = CDbl(0)
  loc_1EC94DE:   End If
  loc_1EC94EB:   var_124 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY1 WHERE VIEWLEDGER.PARTY="
  loc_1EC9516:   Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_124, var_30C, -1, var_194, var_EC)
  loc_1EC951E:   var_188 = var_290 & var_178 
  loc_1EC9536:   Proc_183_7_EB17D4(var_1C8, CVar(Me.TXTS_DATE), var_188 & " AND VIEWLEDGER.V_DATE BETWEEN ", var_162, var_15A)
  loc_1EC9556:   Proc_183_7_EB17D4(var_260, CVar(Me.TXTE_DATE), var_178 & var_1C8 & " AND ")
  loc_1EC9588:   unk_58C129.Execute CStr(1 & var_260 & " AND VIEWLEDGER.DEBIT>0  " & CVar(var_E4) & " ORDER BY V_DATE,V_TYPE,V_NO"), 1, var_188
  loc_1EC9593:   Set var_90 = var_194
  loc_1EC95C1:   ' Referenced from: 1ECBD4E
  loc_1EC95D0:   If Not(var_90.EOF) Then
  loc_1EC9611:     If (CVar(var_EC) >= var_90.Fields.Item("Debit").Value) Then
  loc_1EC9645:       var_178 = (CVar(var_EC) - var_90.Fields.Item("Debit").Value)
  loc_1EC964A:       var_EC = CSng(var_178)
  loc_1EC965A:     Else
  loc_1EC9663:       var_B0 = vbNullString
  loc_1EC9669:       var_B4 = vbNullString
  loc_1EC966F:       var_B8 = vbNullString
  loc_1EC96BC:       If CBool(Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No"))))) <> vbNullString) Then
  loc_1EC96FF:         var_1B4 = (var_EC + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1EC9704:         var_AC = CStr(CVar(Me.TXTS_DATE))
  loc_1EC9717:       End If
  loc_1EC9746:       If Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) Then
  loc_1EC976C:         var_160 = var_AC & " Dt:   "
  loc_1EC979C:         var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MMM/yyyy"))
  loc_1EC97B4:       End If
  loc_1EC986A:       var_290 = IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), 1))) <> vbNullString), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr"))))), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR"))))))
  loc_1EC9873:       var_B0 = CStr(var_290)
  loc_1EC991B:       var_250 = IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr"))))) <> vbNullString), Trim(CVar(var_90.Fields.Item("NARR"))), vbNullString)
  loc_1EC9924:       var_B4 = CStr(var_250)
  loc_1EC9A32:       var_2B4 = vbNullString
  loc_1EC9A52:       var_30C = IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), var_2B4)
  loc_1EC9A5A:       var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + var_30C)
  loc_1EC9A5F:       var_B8 = CStr(var_32C)
  loc_1EC9B18:       var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EC9B49:       var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1EC9B4E:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1EC9BA8:       var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EC9BDA:       var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1EC9BDF:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1EC9C09:       var_124 = vbNullString
  loc_1EC9C1C:       var_114 = (var_B8 = vbNullString)
  loc_1EC9C2B:       var_1A4 = (CVar(var_B8) + IIf(var_114, var_124, "/"))
  loc_1EC9C68:       var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1EC9C8B:       Set var_340 = var_8C 
  loc_1EC9C9A:       var_340.AddNew var_114, var_124
  loc_1EC9CC7:       var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("V_ADD")))) 'String
  loc_1EC9CD4:       var_340.Collect = "V_ADD"
  loc_1EC9D02:       var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1EC9D10:       var_340.Collect = "V_NO"
  loc_1EC9D41:       var_340.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1EC9D7B:       var_188 = Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))))
  loc_1EC9D8D:       var_340.Collect = "Name"
  loc_1EC9DD9:       var_188 = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EC9DEB:       var_340.Collect = "V_DATE"
  loc_1EC9E1B:       var_158 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_1EC9E29:       var_340.Collect = "cr"
  loc_1EC9E65:       var_178 = (var_90.Fields.Item("Debit").Value - CVar(var_EC))
  loc_1EC9E73:       var_340.Collect = "ADJQTY"
  loc_1EC9EA1:       var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1EC9EAF:       var_340.Collect = "V_Type"
  loc_1EC9ED9:       var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1EC9EE7:       var_340.Collect = "V_SNo"
  loc_1EC9EF5:       var_124 = CVar(var_A4) 'String
  loc_1EC9F02:       var_340.Collect = "Name1"
  loc_1EC9F17:       var_340.Collect = "subcode"
  loc_1EC9F44:       var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_88.Fields.Item("CITY_NAME")), var_178, CVar(var_88.Fields.Item("CITY_NAME")))) 'String
  loc_1EC9F51:       var_340.Collect = "CITY_NAME"
  loc_1EC9F88:       var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1EC9F9A:       var_2DC = var_88.Fields
  loc_1EC9FB3:       var_162 = IsNull(CVar(var_2DC.Item("Add2")))
  loc_1ECA025:       var_210 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ECA051:       var_270 = (IIf(var_15A, vbNullString, CVar(var_88.Fields.Item("Add1"))) + Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO")))))))
  loc_1ECA058:       var_290 = Trim(IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ECA06A:       var_340.Collect = "Address1"
  loc_1ECA0DE:       var_340.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECA152:       var_340.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECA1A5:       If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECA1A8:         var_124 = "1"
  loc_1ECA1B7:         var_340.Collect = "Val"
  loc_1ECA1BF:       Else
  loc_1ECA225:         var_340.Collect = "Val"
  loc_1ECA246:         If (var_FC = "Yes") Then
  loc_1ECA273:           var_124 = 0
  loc_1ECA285:           If (var_90.Fields.Item("Credit").Value > var_124) Then
  loc_1ECA2B0:             var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, 1, 1, var_290)) 'String
  loc_1ECA2D3:             var_1B4 = ("By " + Left(Trim(var_178), &H2F))
  loc_1ECA2E1:             var_340.Collect = "Name"
  loc_1ECA2F9:           Else
  loc_1ECA2FC:             var_114 = "Name"
  loc_1ECA310:             var_168 = var_90.Fields.Item(var_114)
  loc_1ECA32C:             var_124 = "To "
  loc_1ECA344:             var_1B4 = (var_124 + Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_168), "2", var_162, var_15A))), &H2F))
  loc_1ECA352:             var_340.Collect = "Name"
  loc_1ECA367:           End If
  loc_1ECA367:         End If
  loc_1ECA367:       End If
  loc_1ECA372:       var_340.Update var_114, var_124
  loc_1ECA379:       Set var_340 = Nothing 
  loc_1ECA38B:       Set var_148 = Me.TEXT
  loc_1ECA391:       Call 0.Method_Proc_245_79_1ED39700 (CInt(6), var_168, var_160, "2")
  loc_1ECA399:       var_178 = var_168.Text
  loc_1ECA3FD:       If CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) Then
  loc_1ECA403:         Set var_344 = var_8C 
  loc_1ECA40A:         var_344.MoveLast
  loc_1ECA434:         var_344.Fields.Item("Name").Value = "As Per Detail"
  loc_1ECA483:         var_344.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECA4BA:         var_344.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECA4EC:         var_344.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECA4FB:         var_114 = "V_DATE"
  loc_1ECA51E:         var_124 = "dd/MMM/yyyy"
  loc_1ECA523:         var_178 = var_124
  loc_1ECA55B:         var_344.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1ECA57D:         var_344.Update var_114, var_124
  loc_1ECA584:         Set var_344 = Nothing 
  loc_1ECA595:         var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1ECA5C0:         Proc_183_9_EAB2F0(var_178, CVar(var_90.Fields.Item("DocID")), var_124, Trim(Str(CVar(var_90.Fields.Item("V_NO")))), -1, var_2DC)
  loc_1ECA5C8:         var_188 = 1 & var_178 
  loc_1ECA60D:         unk_58C129.Execute CStr(var_188 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value), 1, var_188
  loc_1ECA618:         Set var_94 = var_2DC
  loc_1ECA63A:         ' Referenced from:   1ECB2ED
  loc_1ECA649:         If Not(var_94.EOF) Then
  loc_1ECA655:           var_D8 = vbNullString
  loc_1ECA65B:           var_DC = vbNullString
  loc_1ECA697:           If (Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), 1) <> vbNullString) Then
  loc_1ECA6DA:             var_1B4 = (1 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ECA6DF:             var_D4 = CStr(var_90.Fields.Item("V_SNo").Value)
  loc_1ECA6F2:           End If
  loc_1ECA721:           If Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) Then
  loc_1ECA747:             var_160 = var_D4 & " Dt:   "
  loc_1ECA754:             var_124 = "dd/MM/yy"
  loc_1ECA777:             var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1ECA78F:           End If
  loc_1ECA792:           var_114 = "NARR"
  loc_1ECA7C6:           var_DC = CStr(Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1ECA7D8:           Set var_348 = var_8C 
  loc_1ECA7E7:           var_348.AddNew var_114, var_124
  loc_1ECA828:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECA82B:             var_124 = "1"
  loc_1ECA83A:             var_348.Collect = "Val"
  loc_1ECA842:           Else
  loc_1ECA896:             var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ECA8A8:             var_348.Collect = "Val"
  loc_1ECA8C1:           End If
  loc_1ECA924:           var_348.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECA961:           var_348.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECA9B0:           var_348.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECA9FD:           If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_1ECAA25:             var_348.Fields.Item("Sub").Value = "*"
  loc_1ECAA77:             var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1ECAA7E:             Proc_183_4_EAC738(Trim(Str(CVar(var_90.Fields.Item("V_NO")))), var_1C8, 1, 1)
  loc_1ECAAA8:             var_1A4 = (var_1C8 + CVar(Proc_183_15_EAD490(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1ECAAAC:             var_124 = " "
  loc_1ECAAB1:             var_1B4 = ("3" + var_124)
  loc_1ECAACA:             var_250 = (var_124 + CVar(Proc_183_16_EAF86C(CStr(Trim(Str(CVar(var_90.Fields.Item("V_NO"))))), &HC, "2")))
  loc_1ECAAD3:             var_260 = (IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))) + " Dr")
  loc_1ECAAF7:             var_348.Fields.Item("Name").Value = Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))))
  loc_1ECAB2A:           Else
  loc_1ECAB4F:             var_348.Fields.Item("Sub").Value = "*"
  loc_1ECAB61:             var_114 = "Name"
  loc_1ECAB75:             var_168 = var_94.Fields.Item(var_114)
  loc_1ECABA8:             Proc_183_4_EAC738(Trim(Str(CVar(var_90.Fields.Item("V_NO")))), CVar(var_94.Fields.Item("Credit")))
  loc_1ECABD2:             var_1A4 = (Space(2) + CVar(Proc_183_15_EAD490(CStr(var_168.Value), &H14)))
  loc_1ECABD6:             var_124 = " "
  loc_1ECABDB:             var_1B4 = ("3" + var_124)
  loc_1ECABF4:             var_250 = ("2" + CVar(Proc_183_16_EAF86C(CStr(Trim(Str(CVar(var_90.Fields.Item("V_NO"))))), &HC)))
  loc_1ECABFD:             var_260 = (IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))) + " Cr")
  loc_1ECAC21:             var_348.Fields.Item("Name").Value = Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))))
  loc_1ECAC51:           End If
  loc_1ECAC5C:           var_348.Update var_114, var_124
  loc_1ECAC63:           Set var_348 = Nothing 
  loc_1ECAC75:           Set var_148 = Me.TEXT
  loc_1ECAC7B:           Call 0.Method_Proc_245_79_1ED39700 (CInt(7), var_168)
  loc_1ECAC9A:           If (var_168.Text = "Yes") Then
  loc_1ECACA0:             var_114 = var_D4
  loc_1ECACB0:             var_124 = vbNullString
  loc_1ECACBB:             If CBool(Trim(var_114) <> var_124) Then
  loc_1ECACBE:               ' Referenced from:   1ECAFBE
  loc_1ECACC8:               If (Len(var_D4) > 0) Then
  loc_1ECACCE:                 Set var_34C = var_8C 
  loc_1ECACDD:                 var_34C.AddNew var_114, var_124
  loc_1ECAD0A:                 var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1ECAD2E:                 var_34C.Fields.Item("Name").Value = CVar(Proc_183_15_EAD490(CStr(var_34C.Fields.Item("Name").Value), &H14))
  loc_1ECAD86:                 var_34C.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECADBD:                 var_34C.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECADEE:                 var_34C.Fields.Item("Sub").Value = "*"
  loc_1ECAE5D:                 var_34C.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECAEB0:                 If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECAED8:                   var_34C.Fields.Item("Val").Value = "1"
  loc_1ECAEE7:                 Else
  loc_1ECAEED:                   var_114 = "Credit"
  loc_1ECAF27:                   var_124 = 0
  loc_1ECAF63:                   var_34C.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECAF80:                 End If
  loc_1ECAF8B:                 var_34C.Update var_114, var_124
  loc_1ECAF92:                 Set var_34C = Nothing 
  loc_1ECAFB4:                 var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1ECAFBE:                 GoTo loc_1ECACBE
  loc_1ECAFC1:               End If
  loc_1ECAFC1:             End If
  loc_1ECAFC4:             var_114 = var_DC
  loc_1ECAFD4:             var_124 = vbNullString
  loc_1ECAFDF:             If CBool(Trim(var_114) <> var_124) Then
  loc_1ECAFE2:               ' Referenced from:   1ECB2E2
  loc_1ECAFEC:               If (Len(var_DC) > 0) Then
  loc_1ECAFF2:                 Set var_350 = var_8C 
  loc_1ECB001:                 var_350.AddNew var_114, var_124
  loc_1ECB02E:                 var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1ECB052:                 var_350.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1ECB0AA:                 var_350.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECB0E1:                 var_350.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECB112:                 var_350.Fields.Item("Sub").Value = "*"
  loc_1ECB181:                 var_350.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECB1D4:                 If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECB1FC:                   var_350.Fields.Item("Val").Value = "1"
  loc_1ECB20B:                 Else
  loc_1ECB211:                   var_114 = "Credit"
  loc_1ECB24B:                   var_124 = 0
  loc_1ECB287:                   var_350.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECB2A4:                 End If
  loc_1ECB2AF:                 var_350.Update var_114, var_124
  loc_1ECB2B6:                 Set var_350 = Nothing 
  loc_1ECB2D8:                 var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1ECB2E2:                 GoTo loc_1ECAFE2
  loc_1ECB2E5:               End If
  loc_1ECB2E5:             End If
  loc_1ECB2E5:           End If
  loc_1ECB2E8:           var_94.MoveNext
  loc_1ECB2ED:           GoTo loc_1ECA63A
  loc_1ECB2F0:         End If
  loc_1ECB2F0:       End If
  loc_1ECB30E:       If CBool(Trim(var_AC) <> vbNullString) Then
  loc_1ECB311:         ' Referenced from:   1ECB65D
  loc_1ECB31B:         If (Len(var_AC) > 0) Then
  loc_1ECB321:           Set var_354 = var_8C 
  loc_1ECB328:           var_354.MoveLast
  loc_1ECB330:           var_114 = "Name"
  loc_1ECB35B:           var_124 = vbNullString
  loc_1ECB36D:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ECB37B:             var_354.AddNew var_114, var_124
  loc_1ECB380:           End If
  loc_1ECB3A8:           var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1ECB3CC:           var_354.Fields.Item("Name").Value = (var_90.Fields.Item(var_AC).Value > "Name")
  loc_1ECB424:           var_354.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECB45B:           var_354.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECB48D:           var_354.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECB4FC:           var_354.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECB54F:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECB577:             var_354.Fields.Item("Val").Value = "1"
  loc_1ECB586:           Else
  loc_1ECB58C:             var_114 = "Credit"
  loc_1ECB5C6:             var_124 = 0
  loc_1ECB602:             var_354.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECB61F:           End If
  loc_1ECB62A:           var_354.Update var_114, var_124
  loc_1ECB631:           Set var_354 = Nothing 
  loc_1ECB653:           var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1ECB65D:           GoTo loc_1ECB311
  loc_1ECB660:         End If
  loc_1ECB660:       End If
  loc_1ECB67E:       If CBool(Trim(var_B0) <> vbNullString) Then
  loc_1ECB681:         ' Referenced from:   1ECB9CD
  loc_1ECB68B:         If (Len(var_B0) > 0) Then
  loc_1ECB691:           Set var_358 = var_8C 
  loc_1ECB698:           var_358.MoveLast
  loc_1ECB6A0:           var_114 = "Name"
  loc_1ECB6CB:           var_124 = vbNullString
  loc_1ECB6DD:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ECB6EB:             var_358.AddNew var_114, var_124
  loc_1ECB6F0:           End If
  loc_1ECB718:           var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1ECB73C:           var_358.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1ECB777:           var_358.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECB7A9:           var_358.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECB818:           var_358.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECB86B:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECB893:             var_358.Fields.Item("Val").Value = "1"
  loc_1ECB8A2:           Else
  loc_1ECB91E:             var_358.Fields.Item("Val").Value = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ECB93B:           End If
  loc_1ECB93E:           var_114 = "DocID"
  loc_1ECB962:           var_124 = "DocId"
  loc_1ECB97E:           var_358.Fields.Item(var_124).Value = CVar(var_90.Fields.Item(var_114))
  loc_1ECB99A:           var_358.Update var_114, var_124
  loc_1ECB9A1:           Set var_358 = Nothing 
  loc_1ECB9C3:           var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1ECB9CD:           GoTo loc_1ECB681
  loc_1ECB9D0:         End If
  loc_1ECB9D0:       End If
  loc_1ECB9EE:       If CBool(Trim(var_B4) <> vbNullString) Then
  loc_1ECB9F1:         ' Referenced from:   1ECBD3D
  loc_1ECB9FB:         If (Len(var_B4) > 0) Then
  loc_1ECBA01:           Set var_35C = var_8C 
  loc_1ECBA08:           var_35C.MoveLast
  loc_1ECBA10:           var_114 = "Name"
  loc_1ECBA3B:           var_124 = vbNullString
  loc_1ECBA4D:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ECBA5B:             var_35C.AddNew var_114, var_124
  loc_1ECBA60:           End If
  loc_1ECBA88:           var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1ECBAAC:           var_35C.Fields.Item("Name").Value = (var_90.Fields.Item("Credit").Value > 0)
  loc_1ECBB04:           var_35C.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECBB3B:           var_35C.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECBB6D:           var_35C.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECBBDC:           var_35C.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECBC2F:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECBC57:             var_35C.Fields.Item("Val").Value = "1"
  loc_1ECBC66:           Else
  loc_1ECBC6C:             var_114 = "Credit"
  loc_1ECBCA6:             var_124 = 0
  loc_1ECBCE2:             var_35C.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECBCFF:           End If
  loc_1ECBD0A:           var_35C.Update var_114, var_124
  loc_1ECBD11:           Set var_35C = Nothing 
  loc_1ECBD22:           var_114 = var_B4
  loc_1ECBD33:           var_B4 = CStr(Mid(var_114, &H31, 300))
  loc_1ECBD3D:           GoTo loc_1ECB9F1
  loc_1ECBD40:         End If
  loc_1ECBD40:       End If
  loc_1ECBD43:       var_EC = CDbl(0)
  loc_1ECBD46:     End If
  loc_1ECBD49:     var_90.MoveNext
  loc_1ECBD4E:     GoTo loc_1EC95C1
  loc_1ECBD51:   End If
  loc_1ECBD58:   If (var_EC > CDbl(0)) Then
  loc_1ECBD5E:     Set var_360 = var_8C 
  loc_1ECBD6D:     var_360.AddNew var_114, var_124
  loc_1ECBD72:     var_124 = vbNullString
  loc_1ECBD81:     var_360.Collect = "V_Type"
  loc_1ECBD86:     var_124 = 0
  loc_1ECBD95:     var_360.Collect = "V_NO"
  loc_1ECBD9A:     var_124 = vbNullString
  loc_1ECBDA9:     var_360.Collect = "V_ADD"
  loc_1ECBDAE:     var_124 = 0
  loc_1ECBDBD:     var_360.Collect = "V_SNo"
  loc_1ECBDC2:     var_124 = "Excess Credit"
  loc_1ECBDD1:     var_360.Collect = "Name"
  loc_1ECBDDA:     var_158 = CVar(Me.TXTE_DATE) 'Address
  loc_1ECBDE8:     var_360.Collect = "V_DATE"
  loc_1ECBDF4:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ECBE02:     var_360.Collect = "ADJAMT"
  loc_1ECBE0A:     var_124 = CVar(var_A4) 'String
  loc_1ECBE17:     var_360.Collect = "Name1"
  loc_1ECBE1F:     var_124 = CVar(var_A8) 'String
  loc_1ECBE2C:     var_360.Collect = "subcode"
  loc_1ECBE59:     var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1ECBE84:     var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1ECBE8A:     var_124 = "Add1"
  loc_1ECBEEE:     var_1C8 = var_88.Fields.Item("Add2").Value
  loc_1ECBEF6:     var_210 = (", " + var_1C8)
  loc_1ECBF22:     var_270 = (IIf(var_15A, vbNullString, CVar(var_88.Fields.Item(var_124))) + Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO")))))))
  loc_1ECBF29:     var_290 = Trim(IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ECBF3B:     var_360.Collect = "Address1"
  loc_1ECBF6F:     var_114 = "CITY_NAME"
  loc_1ECBF94:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item(var_114)), var_290, var_162, var_15A, var_124, var_124)) 'String
  loc_1ECBF98:     var_124 = "CITY_NAME"
  loc_1ECBFA1:     var_360.Collect = var_124
  loc_1ECBFBB:     var_360.Update var_114, var_124
  loc_1ECBFC2:     Set var_360 = Nothing 
  loc_1ECBFC6:   End If
  loc_1ECBFC6:   GoTo loc_1EC27A1
  loc_1ECBFC9: End If
  loc_1ECBFD1: Loop Until (var_2D8 = "LedCred") 'do at: 1EBF2DF
  loc_1ECBFFE: var_124 = "E"
  loc_1ECC022: var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1ECC054: If CBool((var_88.Fields.Item("GroupNature").Value <> var_124) And (var_1B8.Value <> "R")) Then
  loc_1ECC076:   var_158 = CVar(var_88.Fields.Item("subcode")) 'Address
  loc_1ECC07D:   Proc_183_9_EAB2F0(var_178, var_158, var_178, var_124)
  loc_1ECC08D:   Proc_183_7_EB17D4(var_1C8, CVar(Me.TXTE_DATE), var_158)
  loc_1ECC098:   var_280 = 0
  loc_1ECC0AE:   var_124 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ECC0F0:   unk_58C129.Execute CStr(var_124 & var_178 & " AND V_DATE <=" & var_1C8 & " AND DEBIT >0 " & CVar(var_E4) & vbNullString), IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString), -1
  loc_1ECC0F8:   var_194 = var_194.Fields
  loc_1ECC0FD:   ' Referenced from: 1EDBFE1
  loc_1ECC100:   var_280 = var_1B8.Item(var_1B8)
  loc_1ECC108:   var_2DC = var_2DC.Value
  loc_1ECC111:   var_EC = CSng(var_290)
  loc_1ECC163:   Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC, var_290)
  loc_1ECC16C:   var_1B4 = CVar(Me.TXTS_DATE) 'Address
  loc_1ECC173:   Proc_183_7_EB17D4(var_1C8, var_1B4, var_124)
  loc_1ECC17B:   var_2EC = CVar(var_EC) 'Double
  loc_1ECC185:   var_280 = 0
  loc_1ECC1C6:   var_250 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE<" & var_1C8 & " AND CREDIT>0 " & CVar(var_E4) 
  loc_1ECC1DD:   unk_58C129.Execute CStr(var_250 & vbNullString), IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString), -1
  loc_1ECC1E5:   var_194 = var_194.Fields
  loc_1ECC1ED:   var_280 = var_1B8.Item(var_1B8)
  loc_1ECC1F5:   var_2DC = var_2DC.Value
  loc_1ECC1FD:   var_2A4 = (var_290 - var_290)
  loc_1ECC202:   var_EC = CSng((Me.Fields.Item("LedSiteCode").Value = "Yes"))
  loc_1ECC231: Else
  loc_1ECC257:   Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ECC267:   Proc_183_7_EB17D4(var_1B4, MemVar_1F950F4, var_2EC)
  loc_1ECC277:   Proc_183_7_EB17D4(var_250, CVar(Me.TXTE_DATE))
  loc_1ECC282:   var_2FC = 0
  loc_1ECC2C0:   var_260 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE BETWEEN " & var_1B4 & " AND " & var_250 
  loc_1ECC2EA:   unk_58C129.Execute CStr(var_260 & " AND DEBIT >0 " & CVar(var_E4) & vbNullString), var_2B4, -1
  loc_1ECC2F2:   Do 'loop at:   1EDC298
  loc_1ECC2F2:   var_194 = var_194.Fields
  loc_1ECC2FA:   var_2FC = var_1B8.Item(var_1B8)
  loc_1ECC302:   var_2DC = var_2DC.Value
  loc_1ECC30B:   var_EC = CSng(var_30C)
  loc_1ECC340:   var_114 = "subcode"
  loc_1ECC363:   Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item(var_114)), var_EC)
  loc_1ECC373:   Proc_183_7_EB17D4(var_1B4, MemVar_1F950F4, var_30C)
  loc_1ECC383:   Proc_183_7_EB17D4(var_250, CVar(Me.TXTS_DATE))
  loc_1ECC38B:   var_31C = CVar(var_EC) 'Double
  loc_1ECC395:   var_2FC = 0
  loc_1ECC3AB:   var_124 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ECC3D0:   Do 'loop at:   1EDC11C
  loc_1ECC3F3:   var_160 = CStr(var_124 & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & " AND CREDIT>0 " & CVar(var_E4) & vbNullString)
  loc_1ECC3FD:   unk_58C129.Execute var_160, var_2B4, -1
  loc_1ECC405:   var_194 = var_194.Fields
  loc_1ECC40D:   var_2FC = var_1B8.Item(var_1B8)
  loc_1ECC415:   var_2DC = var_2DC.Value
  loc_1ECC41D:   var_32C = (var_30C - var_30C)
  loc_1ECC422:   var_EC = CSng(var_32C)
  loc_1ECC433:   ' Referenced from:   1EDC3CD
  loc_1ECC433:   Do 'loop at:   1EDC105
  loc_1ECC433:   
  loc_1ECC433:
  loc_1ECC454: End If
  loc_1ECC45B: If (var_EC < CDbl(0)) Then
  loc_1ECC461:   Set var_364 = var_8C 
  loc_1ECC470:   var_364.AddNew var_114, var_124
  loc_1ECC475:   var_124 = vbNullString
  loc_1ECC484:   var_364.Collect = "V_Type"
  loc_1ECC489:   var_124 = 0
  loc_1ECC498:   var_364.Collect = "V_NO"
  loc_1ECC49D:   var_124 = vbNullString
  loc_1ECC4AC:   var_364.Collect = "V_ADD"
  loc_1ECC4B1:   var_124 = 0
  loc_1ECC4C0:   var_364.Collect = "V_SNo"
  loc_1ECC4C5:   var_124 = "Opening Balance"
  loc_1ECC4D4:   var_364.Collect = "Name"
  loc_1ECC4FF:   var_188 = Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy")
  loc_1ECC511:   var_364.Collect = "V_DATE"
  loc_1ECC526:   var_158 = CVar(Me.TXTS_DATE) 'Address
  loc_1ECC534:   var_364.Collect = "PDate"
  loc_1ECC540:   var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ECC54E:   var_364.Collect = "cr"
  loc_1ECC557:   var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ECC565:   var_364.Collect = "ADJQTY"
  loc_1ECC56A:   var_124 = "0"
  loc_1ECC579:   var_364.Collect = "Val"
  loc_1ECC581:   var_124 = CVar(var_A4) 'String
  loc_1ECC58E:   var_364.Collect = "Name1"
  loc_1ECC5A3:   var_364.Collect = "subcode"
  loc_1ECC5D0:   var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add1")), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("Add1")))) 'String
  loc_1ECC5D6:   var_188 = Trim(var_178)
  loc_1ECC603:   var_260 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add2")), var_188, 1, 1)) 'String
  loc_1ECC61D:   var_194 = var_88.Fields
  loc_1ECC636:   var_1C8 = vbNullString
  loc_1ECC63F:   var_124 = vbNullString
  loc_1ECC68A:   var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ECC6A6:   var_30C = (Trim(var_260) = vbNullString) 'Variant
  loc_1ECC6C3:   var_394 = (IIf((var_188 = var_124), var_1C8, CVar(var_194.Item("Add1"))) + Trim(IIf(var_30C, vbNullString, var_2B4)))
  loc_1ECC6DC:   var_364.Collect = "Address1"
  loc_1ECC718:   var_114 = "CITY_NAME"
  loc_1ECC73D:   var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item(var_114)), Trim(var_394), var_124)) 'String
  loc_1ECC741:   var_124 = "CITY_NAME"
  loc_1ECC74A:   var_364.Collect = var_124
  loc_1ECC764:   var_364.Update var_114, var_124
  loc_1ECC76B:   Set var_364 = Nothing 
  loc_1ECC772:   var_EC = CDbl(0)
  loc_1ECC775: End If
  loc_1ECC782: var_124 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY1 WHERE VIEWLEDGER.PARTY="
  loc_1ECC7AD: Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_124, var_30C, -1)
  loc_1ECC7CD: Proc_183_7_EB17D4(var_1C8, CVar(Me.TXTS_DATE), var_194 & var_178 & " AND VIEWLEDGER.V_DATE BETWEEN ", var_EC)
  loc_1ECC7ED: Proc_183_7_EB17D4(var_260, CVar(Me.TXTE_DATE), var_178 & var_1C8 & " AND ")
  loc_1ECC819: Do 'loop at: 1EDBE68
  loc_1ECC819: Do 'loop at: 1EDC43A
  loc_1ECC81F: unk_58C129.Execute CStr(var_124 & var_260 & " AND VIEWLEDGER.CREDIT>0  " & CVar(var_E4) & " ORDER BY V_DATE,V_TYPE,V_NO"), var_124, 
  loc_1ECC82A: Set var_90 = var_194
  loc_1ECC858: ' Referenced from: 1ECF003
  loc_1ECC867: If Not(var_90.EOF) Then
  loc_1ECC8A8:   If (CVar(var_EC) >= var_90.Fields.Item("Credit").Value) Then
  loc_1ECC8AE:     var_124 = CVar(var_EC) 'Double
  loc_1ECC8B5:     ' Referenced from: 1EDF31F
  loc_1ECC8DC:     var_178 = (var_124 - var_90.Fields.Item("Credit").Value)
  loc_1ECC8E1:     var_EC = CSng(var_178)
  loc_1ECC8F1:   Else
  loc_1ECC8FA:     var_B0 = vbNullString
  loc_1ECC900:     var_B4 = vbNullString
  loc_1ECC906:     var_B8 = vbNullString
  loc_1ECC942:     If (Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No"))) <> vbNullString) Then
  loc_1ECC985:       var_1B4 = (var_EC + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ECC98A:       var_AC = CStr(CVar(Me.TXTS_DATE))
  loc_1ECC99D:     End If
  loc_1ECC9CC:     If Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) Then
  loc_1ECC9F2:       var_160 = var_AC & " Dt:   "
  loc_1ECCA22:       var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_1ECCA3A:     End If
  loc_1ECCAE3:     var_230 = IIf((Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), 1) <> vbNullString), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr"))))), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR"))))))
  loc_1ECCAEC:     var_B0 = CStr(var_230)
  loc_1ECCB7B:     var_160 = Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")))
  loc_1ECCB93:     var_B4 = CStr(IIf((var_160 <> vbNullString), Trim(CVar(var_90.Fields.Item("NARR"))), vbNullString))
  loc_1ECCCC4:     var_30C = IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString)
  loc_1ECCCCC:     var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + var_30C)
  loc_1ECCCD1:     var_B8 = CStr(vbNullString)
  loc_1ECCD8A:     var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ECCDBB:     var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ECCDC0:     var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ECCE1A:     var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ECCE4C:     var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1ECCE51:     var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ECCE7B:     var_124 = vbNullString
  loc_1ECCE8E:     var_114 = (var_B8 = vbNullString)
  loc_1ECCE9D:     var_1A4 = (CVar(var_B8) + IIf(var_114, var_124, "/"))
  loc_1ECCEDA:     var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1ECCEFD:     Set var_3A8 = var_8C 
  loc_1ECCF0C:     var_3A8.AddNew var_114, var_124
  loc_1ECCF39:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("V_ADD")))) 'String
  loc_1ECCF46:     var_3A8.Collect = "V_ADD"
  loc_1ECCF74:     var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1ECCF82:     var_3A8.Collect = "V_NO"
  loc_1ECCFB3:     var_3A8.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1ECCFED:     var_188 = Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))))
  loc_1ECCFFF:     var_3A8.Collect = "Name"
  loc_1ECD05D:     var_3A8.Collect = "V_DATE"
  loc_1ECD08D:     var_158 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_1ECD09B:     var_3A8.Collect = "cr"
  loc_1ECD0D7:     var_178 = (var_90.Fields.Item("Credit").Value - CVar(var_EC))
  loc_1ECD0E5:     var_3A8.Collect = "ADJQTY"
  loc_1ECD113:     var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1ECD121:     var_3A8.Collect = "V_Type"
  loc_1ECD14B:     var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1ECD159:     var_3A8.Collect = "V_SNo"
  loc_1ECD167:     var_124 = CVar(var_A4) 'String
  loc_1ECD174:     var_3A8.Collect = "Name1"
  loc_1ECD189:     var_3A8.Collect = "subcode"
  loc_1ECD1B6:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_88.Fields.Item("CITY_NAME")), var_178, CVar(var_88.Fields.Item("CITY_NAME")))) 'String
  loc_1ECD1C3:     var_3A8.Collect = "CITY_NAME"
  loc_1ECD1FA:     var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add1")), var_178, Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy"), 1)) 'String
  loc_1ECD200:     var_188 = Trim(var_178)
  loc_1ECD214:     var_2DC = var_88.Fields
  loc_1ECD257:     var_210 = CVar(var_88.Fields.Item("Add1")) 'Address
  loc_1ECD2B4:     var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ECD2E5:     var_384 = Trim(IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_2DC.Item("Add2")), 1, var_188))) = vbNullString), vbNullString, vbNullString))
  loc_1ECD2ED:     var_394 = (IIf((var_188 = vbNullString), vbNullString, var_210) + var_384)
  loc_1ECD2F4:     var_3A4 = Trim(var_394)
  loc_1ECD306:     var_3A8.Collect = "Address1"
  loc_1ECD382:     var_3A8.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECD3F6:     var_3A8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECD449:     If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECD44C:       var_124 = "0"
  loc_1ECD45B:       var_3A8.Collect = "Val"
  loc_1ECD463:     Else
  loc_1ECD4C9:       var_3A8.Collect = "Val"
  loc_1ECD4EA:       If (var_FC = "Yes") Then
  loc_1ECD517:         var_124 = 0
  loc_1ECD529:         If (var_90.Fields.Item("Credit").Value > var_124) Then
  loc_1ECD554:           var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, 1)) 'String
  loc_1ECD55F:           var_124 = "By "
  loc_1ECD56F:           var_1A4 = Left(Trim(var_178), &H2F)
  loc_1ECD577:           ' Referenced from:     1EDD506
  loc_1ECD577:           ' Referenced from:     1EDD3CC
  loc_1ECD577:           Do 'loop at:     1EDD456
  loc_1ECD577:           var_1B4 = (var_124 + var_1A4)
  loc_1ECD585:           var_3A8.Collect = "Name"
  loc_1ECD59D:         Else
  loc_1ECD5A0:           var_114 = "Name"
  loc_1ECD5B4:           var_168 = var_90.Fields.Item(var_114)
  loc_1ECD5D0:           var_124 = "To "
  loc_1ECD5E8:           var_1B4 = (var_124 + Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_168), "2", 1))), &H2F))
  loc_1ECD5F6:           var_3A8.Collect = "Name"
  loc_1ECD60B:         End If
  loc_1ECD60B:       End If
  loc_1ECD60B:     End If
  loc_1ECD616:     var_3A8.Update var_114, var_124
  loc_1ECD61D:     Set var_3A8 = Nothing 
  loc_1ECD62F:     Set var_148 = Me.TEXT
  loc_1ECD635:     Call 0.Method_Proc_245_79_1ED39700 (CInt(6), var_168, var_160, "2")
  loc_1ECD63D:     var_3A4 = var_168.Text
  loc_1ECD6A1:     If CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) Then
  loc_1ECD6A7:       Set var_3AC = var_8C 
  loc_1ECD6AE:       var_3AC.MoveLast
  loc_1ECD6D8:       var_3AC.Fields.Item("Name").Value = "As Per Detail"
  loc_1ECD727:       var_3AC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECD75E:       var_3AC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECD790:       var_3AC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECD79F:       var_114 = "V_DATE"
  loc_1ECD7C2:       var_124 = "dd/MMM/yyyy"
  loc_1ECD7C7:       var_178 = var_124
  loc_1ECD7FF:       var_3AC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1ECD821:       var_3AC.Update var_114, var_124
  loc_1ECD828:       Set var_3AC = Nothing 
  loc_1ECD839:       var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1ECD864:       Proc_183_9_EAB2F0(var_178, CVar(var_90.Fields.Item("DocID")), var_124, var_210, -1)
  loc_1ECD8A7:       var_160 = CStr(var_2DC & var_178 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value)
  loc_1ECD8B1:       unk_58C129.Execute var_160, 1, 1
  loc_1ECD8BC:       Set var_94 = var_2DC
  loc_1ECD8DE:       ' Referenced from:   1ECE5A2
  loc_1ECD8ED:       If Not(var_94.EOF) Then
  loc_1ECD8F9:         var_D8 = vbNullString
  loc_1ECD8FF:         var_DC = vbNullString
  loc_1ECD94C:         If CBool(Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), var_178))))) <> vbNullString) Then
  loc_1ECD98F:           var_1B4 = (var_160 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ECD994:           var_D4 = CStr(var_90.Fields.Item("V_SNo").Value)
  loc_1ECD9A7:         End If
  loc_1ECD9D6:         If Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) Then
  loc_1ECD9FC:           var_160 = var_D4 & " Dt:   "
  loc_1ECDA09:           var_124 = "dd/MM/yy"
  loc_1ECDA2C:           var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1ECDA44:         End If
  loc_1ECDA47:         var_114 = "NARR"
  loc_1ECDA7B:         var_DC = CStr(Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1ECDA8D:         Set var_3B0 = var_8C 
  loc_1ECDA9C:         var_3B0.AddNew var_114, var_124
  loc_1ECDADD:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECDAE0:           var_124 = "1"
  loc_1ECDAEF:           var_3B0.Collect = "Val"
  loc_1ECDAF7:         Else
  loc_1ECDB4B:           var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ECDB54:           var_1E0 = "Val"
  loc_1ECDB59:           ' Referenced from:     1EDE80C
  loc_1ECDB5D:           var_3B0.Collect = var_1E0
  loc_1ECDB76:         End If
  loc_1ECDBD9:         var_3B0.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECDC16:         var_3B0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECDC65:         var_3B0.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECDCB2:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_1ECDCDA:           var_3B0.Fields.Item("Sub").Value = "*"
  loc_1ECDD2C:           var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1ECDD33:           Proc_183_4_EAC738(var_210, var_1C8, 1, 1)
  loc_1ECDD5D:           var_1A4 = (var_1C8 + CVar(Proc_183_15_EAD490(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1ECDD61:           Do 'loop at:   1EDDD47
  loc_1ECDD61:           var_124 = " "
  loc_1ECDD66:           var_1B4 = ("3" + var_124)
  loc_1ECDD7F:           var_250 = (var_124 + CVar(Proc_183_16_EAF86C(CStr(var_210), &HC, "2")))
  loc_1ECDD88:           var_260 = (CVar(var_2DC.Item("Add2")) + " Dr")
  loc_1ECDDAC:           var_3B0.Fields.Item("Name").Value = CVar(Proc_183_2_E5AE94(CVar(var_3B0.Fields.Item("Add2")), 1, CVar(Proc_183_15_EAD490(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2)))))
  loc_1ECDDDF:         Else
  loc_1ECDE04:           var_3B0.Fields.Item("Sub").Value = "*"
  loc_1ECDE16:           var_114 = "Name"
  loc_1ECDE2A:           var_168 = var_94.Fields.Item(var_114)
  loc_1ECDE5D:           Proc_183_4_EAC738(var_210, CVar(var_94.Fields.Item("Credit")))
  loc_1ECDE87:           var_1A4 = (Space(2) + CVar(Proc_183_15_EAD490(CStr(var_168.Value), &H14)))
  loc_1ECDE8B:           var_124 = " "
  loc_1ECDE90:           var_1B4 = ("3" + var_124)
  loc_1ECDEA9:           var_250 = ("2" + CVar(Proc_183_16_EAF86C(CStr(var_210), &HC)))
  loc_1ECDEB2:           var_260 = (CVar(var_3B0.Fields.Item("Add2")) + " Cr")
  loc_1ECDED6:           var_3B0.Fields.Item("Name").Value = CVar(Proc_183_2_E5AE94(CVar(var_3B0.Fields.Item("Add2")), 1, CVar(Proc_183_15_EAD490(CStr(var_168.Value), &H14))))
  loc_1ECDF06:         End If
  loc_1ECDF11:         var_3B0.Update var_114, var_124
  loc_1ECDF18:         Set var_3B0 = Nothing 
  loc_1ECDF2A:         Set var_148 = Me.TEXT
  loc_1ECDF30:         Call 0.Method_Proc_245_79_1ED39700 (CInt(7), var_168)
  loc_1ECDF4F:         If (var_168.Text = "Yes") Then
  loc_1ECDF55:           var_114 = var_D4
  loc_1ECDF65:           var_124 = vbNullString
  loc_1ECDF70:           If CBool(Trim(var_114) <> var_124) Then
  loc_1ECDF73:             ' Referenced from:   1ECE273
  loc_1ECDF7D:             If (Len(var_D4) > 0) Then
  loc_1ECDF83:               Set var_3B4 = var_8C 
  loc_1ECDF92:               var_3B4.AddNew var_114, var_124
  loc_1ECDFBF:               var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1ECDFE3:               var_3B4.Fields.Item("Name").Value = CVar(Proc_183_15_EAD490(CStr(var_3B4.Fields.Item("Name").Value), &H14))
  loc_1ECE03B:               var_3B4.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECE049:               Do 'loop at:   1EDDF1C
  loc_1ECE072:               var_3B4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECE0A3:               var_3B4.Fields.Item("Sub").Value = "*"
  loc_1ECE112:               var_3B4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECE165:               If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECE18D:                 var_3B4.Fields.Item("Val").Value = "1"
  loc_1ECE19C:               Else
  loc_1ECE1A2:                 var_114 = "Credit"
  loc_1ECE1DC:                 var_124 = 0
  loc_1ECE218:                 var_3B4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECE235:               End If
  loc_1ECE240:               var_3B4.Update var_114, var_124
  loc_1ECE247:               Set var_3B4 = Nothing 
  loc_1ECE269:               var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1ECE273:               GoTo loc_1ECDF73
  loc_1ECE276:             End If
  loc_1ECE276:           End If
  loc_1ECE279:           var_114 = var_DC
  loc_1ECE289:           var_124 = vbNullString
  loc_1ECE294:           If CBool(Trim(var_114) <> var_124) Then
  loc_1ECE297:             ' Referenced from:   1ECE597
  loc_1ECE2A1:             If (Len(var_DC) > 0) Then
  loc_1ECE2A7:               Set var_3B8 = var_8C 
  loc_1ECE2B6:               var_3B8.AddNew var_114, var_124
  loc_1ECE2E3:               var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1ECE307:               var_3B8.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1ECE35F:               var_3B8.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECE396:               var_3B8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECE3C7:               var_3B8.Fields.Item("Sub").Value = "*"
  loc_1ECE436:               var_3B8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECE489:               If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECE4B1:                 var_3B8.Fields.Item("Val").Value = "1"
  loc_1ECE4C0:               Else
  loc_1ECE4C6:                 var_114 = "Credit"
  loc_1ECE500:                 var_124 = 0
  loc_1ECE53C:                 var_3B8.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECE559:               End If
  loc_1ECE564:               var_3B8.Update var_114, var_124
  loc_1ECE56B:               Set var_3B8 = Nothing 
  loc_1ECE58D:               var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1ECE597:               GoTo loc_1ECE297
  loc_1ECE59A:             End If
  loc_1ECE59A:           End If
  loc_1ECE59A:         End If
  loc_1ECE59D:         var_94.MoveNext
  loc_1ECE5A2:         GoTo loc_1ECD8DE
  loc_1ECE5A5:       End If
  loc_1ECE5A5:     End If
  loc_1ECE5C3:     If CBool(Trim(var_AC) <> vbNullString) Then
  loc_1ECE5C6:       ' Referenced from:   1ECE912
  loc_1ECE5D0:       If (Len(var_AC) > 0) Then
  loc_1ECE5D6:         Set var_3BC = var_8C 
  loc_1ECE5DD:         var_3BC.MoveLast
  loc_1ECE5E5:         var_114 = "Name"
  loc_1ECE610:         var_124 = vbNullString
  loc_1ECE622:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ECE630:           var_3BC.AddNew var_114, var_124
  loc_1ECE635:         End If
  loc_1ECE65D:         var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1ECE681:         var_3BC.Fields.Item("Name").Value = (var_90.Fields.Item(var_AC).Value > "Name")
  loc_1ECE6D9:         var_3BC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECE710:         var_3BC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECE742:         var_3BC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECE7B1:         var_3BC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECE804:         Do 'loop at:   1EDE1B9
  loc_1ECE804:         Do 'loop at:   1EDE4FE
  loc_1ECE804:         Do 'loop at:   1EDE50B
  loc_1ECE804:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECE82C:           var_3BC.Fields.Item("Val").Value = "1"
  loc_1ECE83B:         Else
  loc_1ECE841:           var_114 = "Credit"
  loc_1ECE87B:           var_124 = 0
  loc_1ECE8B7:           var_3BC.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECE8D4:         End If
  loc_1ECE8DF:         var_3BC.Update var_114, var_124
  loc_1ECE8E6:         Set var_3BC = Nothing 
  loc_1ECE908:         var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1ECE912:         GoTo loc_1ECE5C6
  loc_1ECE915:       End If
  loc_1ECE915:     End If
  loc_1ECE933:     If CBool(Trim(var_B0) <> vbNullString) Then
  loc_1ECE936:       ' Referenced from:   1ECEC82
  loc_1ECE940:       If (Len(var_B0) > 0) Then
  loc_1ECE946:         Set var_3C0 = var_8C 
  loc_1ECE94D:         var_3C0.MoveLast
  loc_1ECE955:         var_114 = "Name"
  loc_1ECE980:         var_124 = vbNullString
  loc_1ECE992:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ECE9A0:           var_3C0.AddNew var_114, var_124
  loc_1ECE9A5:         End If
  loc_1ECE9CD:         var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1ECE9F1:         var_3C0.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1ECEA49:         var_3C0.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECEA80:         var_3C0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECEAB2:         var_3C0.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECEB21:         var_3C0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECEB5A:         var_158 = var_90.Fields.Item("V_Type").Value
  loc_1ECEB62:         var_124 = "OP"
  loc_1ECEB74:         ' Referenced from:   1EDEAD8
  loc_1ECEB74:         If (var_158 = var_124) Then
  loc_1ECEB9C:           var_3C0.Fields.Item("Val").Value = "1"
  loc_1ECEBAB:         Else
  loc_1ECEBB1:           var_114 = "Credit"
  loc_1ECEBEB:           var_124 = 0
  loc_1ECEC27:           var_3C0.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECEC44:         End If
  loc_1ECEC4F:         var_3C0.Update var_114, var_124
  loc_1ECEC56:         Set var_3C0 = Nothing 
  loc_1ECEC78:         var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1ECEC82:         GoTo loc_1ECE936
  loc_1ECEC85:       End If
  loc_1ECEC85:     End If
  loc_1ECECA3:     If CBool(Trim(var_B4) <> vbNullString) Then
  loc_1ECECA6:       ' Referenced from:   1ECEFF2
  loc_1ECECB0:       If (Len(var_B4) > 0) Then
  loc_1ECECB6:         Set var_3C4 = var_8C 
  loc_1ECECBD:         var_3C4.MoveLast
  loc_1ECECC5:         var_114 = "Name"
  loc_1ECECF0:         var_124 = vbNullString
  loc_1ECED02:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ECED10:           var_3C4.AddNew var_114, var_124
  loc_1ECED15:         End If
  loc_1ECED3D:         var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1ECED61:         var_3C4.Fields.Item("Name").Value = (var_90.Fields.Item(var_B4).Value > "Name")
  loc_1ECEDB9:         var_3C4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECEDF0:         var_3C4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECEE22:         var_3C4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECEE91:         var_3C4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECEECA:         var_158 = var_90.Fields.Item("V_Type").Value
  loc_1ECEED2:         var_124 = "OP"
  loc_1ECEEE4:         ' Referenced from:   1EDEE48
  loc_1ECEEE4:         If (var_158 = var_124) Then
  loc_1ECEF0C:           var_3C4.Fields.Item("Val").Value = "1"
  loc_1ECEF1B:         Else
  loc_1ECEF21:           var_114 = "Credit"
  loc_1ECEF5B:           var_124 = 0
  loc_1ECEF97:           var_3C4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECEFB4:         End If
  loc_1ECEFBF:         var_3C4.Update var_114, var_124
  loc_1ECEFC6:         Set var_3C4 = Nothing 
  loc_1ECEFD7:         var_114 = var_B4
  loc_1ECEFE8:         var_B4 = CStr(Mid(var_114, &H31, 300))
  loc_1ECEFF2:         GoTo loc_1ECECA6
  loc_1ECEFF5:       End If
  loc_1ECEFF5:     End If
  loc_1ECEFF8:     var_EC = CDbl(0)
  loc_1ECEFFB:   End If
  loc_1ECEFFE:   var_90.MoveNext
  loc_1ECF003:   GoTo loc_1ECC858
  loc_1ECF006: End If
  loc_1ECF00D: Loop Until (var_EC > CDbl(0)) 'do at: 1EBF2DC
  loc_1ECF013: Set var_3C8 = var_8C 
  loc_1ECF022: var_3C8.AddNew var_114, var_124
  loc_1ECF027: var_124 = vbNullString
  loc_1ECF036: var_3C8.Collect = "V_Type"
  loc_1ECF03B: var_124 = 0
  loc_1ECF04A: var_3C8.Collect = "V_NO"
  loc_1ECF04F: var_124 = vbNullString
  loc_1ECF05E: var_3C8.Collect = "V_ADD"
  loc_1ECF063: var_124 = 0
  loc_1ECF072: var_3C8.Collect = "V_SNo"
  loc_1ECF077: var_124 = "Excess Debit"
  loc_1ECF086: var_3C8.Collect = "Name"
  loc_1ECF0C3: var_3C8.Collect = "V_DATE"
  loc_1ECF0D8: var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ECF0E6: var_3C8.Collect = "ADJAMT"
  loc_1ECF0EE: var_124 = CVar(var_A4) 'String
  loc_1ECF0FB: var_3C8.Collect = "Name1"
  loc_1ECF103: var_124 = CVar(var_A8) 'String
  loc_1ECF110: var_3C8.Collect = "subcode"
  loc_1ECF13D: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add1")), var_124, var_124, var_124, Format(CVar(Me.TXTE_DATE), "dd/MMM/yyyy"), 1, 1)) 'String
  loc_1ECF176: var_270 = Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add2")), var_124, var_124, var_124)))
  loc_1ECF1A3: var_1C8 = vbNullString
  loc_1ECF1AC: var_124 = vbNullString
  loc_1ECF1F7: var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ECF213: var_30C = (var_270 = vbNullString) 'Variant
  loc_1ECF230: var_394 = (IIf((Trim(var_178) = var_124), var_1C8, CVar(var_88.Fields.Item("Add1"))) + Trim(IIf(var_30C, vbNullString, vbNullString)))
  loc_1ECF249: var_3C8.Collect = "Address1"
  loc_1ECF285: var_114 = "CITY_NAME"
  loc_1ECF2AA: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item(var_114)), Trim(var_394), var_124)) 'String
  loc_1ECF2AE: var_124 = "CITY_NAME"
  loc_1ECF2B7: var_3C8.Collect = var_124
  loc_1ECF2D1: var_3C8.Update var_114, var_124
  loc_1ECF2D8: Set var_3C8 = Nothing 
  loc_1ECF2DC: GoTo loc_1EC27A1
  loc_1ECF2E7: Loop Until (arg_10 <> "AcCheckList") 'do at: 1EBFC98
  loc_1ECF32D: Do 'loop at: 1ED4F9D
  loc_1ECF338: var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1ECF36A: Loop Until CBool((var_88.Fields.Item("GroupNature").Value <> "E") And (var_1B8.Value <> "R")) 'do at: 1EBF463
  loc_1ECF393: Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_178)
  loc_1ECF39C: var_1B4 = CVar(Me.TXTS_DATE) 'Address
  loc_1ECF3A3: Proc_183_7_EB17D4(var_1C8, var_1B4)
  loc_1ECF3B5: var_280 = 0
  loc_1ECF3CB: var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ECF3F6: var_250 = "E" & var_178 & " AND V_DATE<" & var_1C8 & "  " & CVar(var_E4) 
  loc_1ECF40D: unk_58C129.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1ECF415: var_194 = var_194.Fields
  loc_1ECF41D: var_280 = var_1B8.Item(var_1B8)
  loc_1ECF425: var_2DC = var_2DC.Value
  loc_1ECF42D: var_2A4 = (Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)) + Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ECF432: var_EC = CSng(var_88.Fields.Item("Add2").Value)
  loc_1ECF460: GoTo loc_1EBF57C
  loc_1ECF489: Proc_183_9_EAB2F0(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ECF499: Proc_183_7_EB17D4(var_1B4, MemVar_1F950F4, CVar(var_EC))
  loc_1ECF4A9: Proc_183_7_EB17D4(var_250, CVar(Me.TXTS_DATE))
  loc_1ECF4B1: var_31C = CVar(var_EC) 'Double
  loc_1ECF4BB: var_2FC = 0
  loc_1ECF4D1: var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ECF523: unk_58C129.Execute CStr("E" & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & "  " & CVar(var_E4) & vbNullString), vbNullString, -1
  loc_1ECF52B: var_194 = var_194.Fields
  loc_1ECF533: var_2FC = var_1B8.Item(var_1B8)
  loc_1ECF53B: var_2DC = var_2DC.Value
  loc_1ECF543: var_32C = (var_30C + var_30C)
  loc_1ECF548: var_EC = CSng(vbNullString)
  loc_1ECF584: Loop Until (arg_10 = "LedInt") 'do at: 1EBF8B2
  loc_1ECF59B: Loop Until (var_90.RecordCount > 0) 'do at: 1EBF84F
  loc_1ECF5A1: var_90.MoveFirst
  loc_1ECF5F7: var_90.Find CStr("Party='" & var_88.Fields.Item("subcode").Value & "'"), 0, 1
  loc_1ECF620: Loop Until (var_90.EOF = 0) 'do at: 1EBF7E9
  loc_1ECF62A: Loop Until (var_EC = CDbl(0)) 'do at: 1EBF635
  loc_1ECF630: var_90.MoveNext
  loc_1ECF646: Loop Until (var_90.EOF = &HFF) 'do at: 1EBF6AF
  loc_1ECF698: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), "dd/MMM/yyyy"))
  loc_1ECF6AC: GoTo loc_1EBF7D4
  loc_1ECF6D1: var_178 = var_90.Fields.Item("Party").Value
  loc_1ECF6DF: var_124 = "subcode"
  loc_1ECF6EB: var_194 = var_88.Fields
  loc_1ECF6F3: ' Referenced from: 1EDF6EA
  loc_1ECF717: Loop Until (var_178 = var_194.Item(var_124).Value) 'do at: 1EBF771
  loc_1ECF71D: var_114 = "V_DATE"
  loc_1ECF75F: var_F4 = CDate(Format(CVar(var_90.Fields.Item(var_114)), "dd/MMM/yyyy"))
  loc_1ECF76E: GoTo loc_1EBF7D4
  loc_1ECF7C0: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), "dd/MMM/yyyy"))
  loc_1ECF7DB: Loop Until (var_EC = CDbl(0)) 'do at: 1EBF7E6
  loc_1ECF7E1: var_90.MovePrevious
  loc_1ECF7E6: GoTo loc_1EBF84C
  loc_1ECF838: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), "dd/MMM/yyyy"))
  loc_1ECF83E: ' Referenced from: 1EDF7EE
  loc_1ECF83E: ' Referenced from: 1EDF7C2
  loc_1ECF83E: Do 'loop at: 1EDF80F
  loc_1ECF841: Do 'loop at: 1EDF6FF
  loc_1ECF841: 
  loc_1ECF841:
  loc_1ECF84C: GoTo loc_1EBF8B2
  loc_1ECF883: var_124 = "dd/MMM/yyyy"
  loc_1ECF89E: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), var_124))
  loc_1ECF8B9: Loop Until (var_EC <> CDbl(0)) 'do at: 1EBFC98
  loc_1ECF8BF: Set var_3CC = var_8C 
  loc_1ECF8CE: var_3CC.AddNew var_114, var_124
  loc_1ECF8D3: var_124 = vbNullString
  loc_1ECF8E2: var_3CC.Collect = "V_Type"
  loc_1ECF8E7: var_124 = 0
  loc_1ECF8F6: var_3CC.Collect = "V_NO"
  loc_1ECF8FB: var_124 = vbNullString
  loc_1ECF90A: var_3CC.Collect = "V_ADD"
  loc_1ECF90F: var_124 = 0
  loc_1ECF91E: var_3CC.Collect = "V_SNo"
  loc_1ECF923: var_124 = "OPENING BALANCE"
  loc_1ECF932: var_3CC.Collect = "Name"
  loc_1ECF95D: var_188 = Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy")
  loc_1ECF96F: var_3CC.Collect = "V_DATE"
  loc_1ECF99B: var_188 = IIf((var_EC > CDbl(0)), CVar(Abs(var_EC)), 0)
  loc_1ECF9AD: var_3CC.Collect = "cr"
  loc_1ECF9B2: ' Referenced from: 1EDF92D
  loc_1ECF9B2: ' Referenced from: 1EDF8BE
  loc_1ECF9B2: ' Referenced from: 1EDF83E
  loc_1ECF9B2: ' Referenced from: 1EDF6A1
  loc_1ECF9B2: Do 'loop at: 1EDF94E
  loc_1ECF9B2: 
  loc_1ECF9B2:
  loc_1ECF9D8: var_188 = IIf((var_EC < CDbl(0)), CVar(Abs(var_EC)), 0)
  loc_1ECF9EA: var_3CC.Collect = "ADJAMT"
  loc_1ECF9FA: var_124 = "1"
  loc_1ECFA09: var_3CC.Collect = "Val"
  loc_1ECFA11: var_124 = CVar(var_A4) 'String
  loc_1ECFA1E: var_3CC.Collect = "Name1"
  loc_1ECFA4B: var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1ECFA76: var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1ECFA7C: var_124 = "Add1"
  loc_1ECFA9C: var_144 = " "
  loc_1ECFAE8: var_210 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ECFB14: var_270 = (IIf(var_15A, var_144, CVar(var_88.Fields.Item(var_124))) + Trim(IIf(var_162, " ", "E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<")))
  loc_1ECFB1B: var_290 = Trim("E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<" & IIf(var_162, " ", "E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<") & "  ")
  loc_1ECFB2D: var_3CC.Collect = "Address1"
  loc_1ECFB86: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), var_290, var_162, var_15A, var_124, var_124)) 'String
  loc_1ECFB93: var_3CC.Collect = "CITY_NAME"
  loc_1ECFBA5: var_124 = CVar(var_A8) 'String
  loc_1ECFBB2: var_3CC.Collect = "subcode"
  loc_1ECFC05: var_3CC.Fields.Item("PDate").Value = Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy")
  loc_1ECFC24: Loop Until (arg_10 = "LedInt") 'do at: 1EBFC82
  loc_1ECFC31: var_124 = "dd/MMM/yyyy"
  loc_1ECFC3F: var_114 = var_F4
  loc_1ECFC47: var_178 = Format(var_114, var_124)
  loc_1ECFC64: Do 'loop at: 1EDFBDC
  loc_1ECFC6F: var_3CC.Fields.Item("NextDate").Value = var_178
  loc_1ECFC8D: var_3CC.Update var_114, var_124
  loc_1ECFC94: Set var_3CC = Nothing 
  loc_1ECFCAC: Loop Until (var_90.RecordCount > 0) 'do at: 1EC27A1
  loc_1ECFCB2: var_90.MoveFirst
  loc_1ECFD08: var_90.Find CStr("Party='" & var_88.Fields.Item("subcode").Value & "'"), 0, 1
  loc_1ECFD0D: Do 'loop at: 1EDFC77
  loc_1ECFD10: Do 'loop at: 1EDFC6C
  loc_1ECFD10: 
  loc_1ECFD10:
  loc_1ECFD31: Loop Until (var_90.EOF = 0) 'do at: 1EC27A1
  loc_1ECFD36: Loop Until &HFF 'do at: 1EC27A1
  loc_1ECFDB7: Loop Until CBool((arg_10 = "LedInt") And (var_88.Fields.Item("subcode").Value = var_90.Fields.Item("Party").Value)) 'do at: 1EBFF80
  loc_1ECFDCE: Loop Until (var_90.RecordCount > 0) 'do at: 1EBFF80
  loc_1ECFDD4: var_90.MoveNext
  loc_1ECFDEA: Loop Until (var_90.EOF = &HFF) 'do at: 1EBFE53
  loc_1ECFE02: Do 'loop at: 1EDFDF4
  loc_1ECFE3C: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), "dd/MMM/yyyy"))
  loc_1ECFE50: GoTo loc_1EBFF78
  loc_1ECFEBB: Loop Until (var_90.Fields.Item("Party").Value = var_88.Fields.Item("subcode").Value) 'do at: 1EBFF15
  loc_1ECFEC1: var_114 = "V_DATE"
  loc_1ECFF03: var_F4 = CDate(Format(CVar(var_90.Fields.Item(var_114)), "dd/MMM/yyyy"))
  loc_1ECFF12: GoTo loc_1EBFF78
  loc_1ECFF49: var_124 = "dd/MMM/yyyy"
  loc_1ECFF51: Do 'loop at: 1EDFEE9
  loc_1ECFF64: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), var_124))
  loc_1ECFF7B: var_90.MovePrevious
  loc_1ECFF83: Set var_3D0 = var_8C 
  loc_1ECFF92: var_3D0.AddNew var_114, var_124
  loc_1ECFFBF: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("V_ADD")), var_F4, 1, 1, var_F4, 1, 1)) 'String
  loc_1ECFFCC: var_3D0.Collect = "V_ADD"
  loc_1ECFFFA: var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1ED0008: var_3D0.Collect = "V_NO"
  loc_1ED001C: var_B0 = vbNullString
  loc_1ED0022: var_B4 = vbNullString
  loc_1ED0028: var_B8 = vbNullString
  loc_1ED0075: Loop Until CBool(Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(var_90.Fields.Item("Chq_No")), CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(var_90.Fields.Item("Chq_No")), var_178, var_F4, 1)), var_F4, 1))) <> vbNullString) 'do at: 1EC00D0
  loc_1ED00A1: Do 'loop at: 1EE0039
  loc_1ED00B8: var_1B4 = (var_144 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"), 1))))
  loc_1ED00FF: Loop Until Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) 'do at: 1EC016D
  loc_1ED0111: Do 'loop at: 1EE00A9
  loc_1ED0155: var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_1ED0181: Do 'loop at: 1EE0119
  loc_1ED0216: var_230 = IIf((Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), 1, CStr(CVar(var_88.Fields.Item("Add2"))) & " Dt: ") <> vbNullString), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")), 1))), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR"))))))
  loc_1ED021F: var_B0 = CStr(var_230)
  loc_1ED02B6: var_160 = Proc_183_2_E5AE94(CVar(var_90.Fields.Item("mNarr")))
  loc_1ED02CE: var_B4 = CStr(IIf((var_160 <> vbNullString), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("NARR"))))), vbNullString))
  loc_1ED02D1: Do 'loop at: 1EE0269
  loc_1ED02D1: 
  loc_1ED02D1:
  loc_1ED0409: var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_1ED040E: var_B8 = CStr(vbNullString)
  loc_1ED048F: var_230 = Trim(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ED04C7: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED04D0: var_260 = vbNullString
  loc_1ED04E6: var_250 = (Me.Fields.Item("LedPrefix").Value = "Yes") 'Variant
  loc_1ED04F0: ' Referenced from: 1ED3BB8
  loc_1ED04F8: var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf(var_250, var_230, var_260))
  loc_1ED04FD: var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ED0557: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED0589: var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1ED058E: var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ED05DA: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED0617: var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1ED065D: var_3D0.Fields.Item("DocNo").Value = CVar(CStr(var_230))
  loc_1ED0697: var_188 = Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")))))
  loc_1ED06A9: var_3D0.Collect = "Name"
  loc_1ED06F5: var_188 = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED0707: var_3D0.Collect = "V_DATE"
  loc_1ED0737: var_158 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_1ED0745: var_3D0.Collect = "cr"
  loc_1ED076F: var_158 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_1ED077D: var_3D0.Collect = "ADJAMT"
  loc_1ED07A7: var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1ED07B5: var_3D0.Collect = "V_Type"
  loc_1ED07DF: var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1ED07ED: var_3D0.Collect = "V_SNo"
  loc_1ED0834: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EC084E
  loc_1ED0837: var_124 = "1"
  loc_1ED0846: var_3D0.Collect = "Val"
  loc_1ED084B: GoTo loc_1EC09F6
  loc_1ED08B4: var_3D0.Collect = "Val"
  loc_1ED08D5: Loop Until (var_FC = "Yes") 'do at: 1EC09F6
  loc_1ED0902: var_124 = 0
  loc_1ED0914: Loop Until (var_90.Fields.Item("Credit").Value > var_124) 'do at: 1EC0988
  loc_1ED093F: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))) 'String
  loc_1ED0945: var_188 = Trim(var_178)
  loc_1ED0962: var_1B4 = ("By " + Left(var_188, &H2F))
  loc_1ED0970: var_3D0.Collect = "Name"
  loc_1ED0985: GoTo loc_1EC09F6
  loc_1ED09D3: var_1B4 = ("To " + Left(Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), "2", CVar(var_90.Fields.Item("Name")), Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")), "2", CVar(var_90.Fields.Item("Name")), var_188)))))), &H2F))
  loc_1ED09E1: var_3D0.Collect = "Name"
  loc_1ED09F9: var_124 = CVar(var_A4) 'String
  loc_1ED0A06: var_3D0.Collect = "Name1"
  loc_1ED0A1B: var_3D0.Collect = "subcode"
  loc_1ED0A62: var_2DC = var_88.Fields
  loc_1ED0AA5: var_210 = CVar(var_88.Fields.Item("Add1")) 'Address
  loc_1ED0ACB: var_230 = IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Add1")), CVar(var_A8), CVar(var_A8), "2"))) = vbNullString), vbNullString, var_210)
  loc_1ED0AF2: var_33C = var_88.Fields.Item("Add2")
  loc_1ED0B02: var_2B4 = (", " + var_33C.Value)
  loc_1ED0B33: var_384 = Trim(IIf((Trim(CVar(Proc_183_2_E5AE94(CVar(var_2DC.Item("Add2")), 1, 1))) = vbNullString), vbNullString, vbNullString))
  loc_1ED0B3B: var_394 = (var_230 + var_384)
  loc_1ED0B54: var_3D0.Collect = "Address1"
  loc_1ED0BB5: var_178 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("CITY_NAME")), Trim(var_394))) 'String
  loc_1ED0BC2: var_3D0.Collect = "CITY_NAME"
  loc_1ED0C14: var_3D0.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED0C88: var_3D0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED0CA7: Loop Until (arg_10 = "LedInt") 'do at: 1EC0D05
  loc_1ED0CB4: var_124 = "dd/MMM/yyyy"
  loc_1ED0CC2: var_114 = var_F4
  loc_1ED0CCA: var_178 = Format(var_114, var_124)
  loc_1ED0CEA: var_168 = var_3D0.Fields.Item("NextDate")
  loc_1ED0CF2: var_168.Value = var_178
  loc_1ED0D10: var_3D0.Update var_114, var_124
  loc_1ED0D17: Set var_3D0 = Nothing 
  loc_1ED0D29: Set var_148 = Me.TEXT
  loc_1ED0D2F: Call 0.Method_Proc_245_79_1ED39700 (CInt(6), var_168, var_160, 1, 1)
  loc_1ED0D37: 1 = var_168.Text
  loc_1ED0D9B: Loop Until CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) 'do at: 1EC1C8E
  loc_1ED0DA1: Set var_3D4 = var_8C 
  loc_1ED0DA8: var_3D4.MoveLast
  loc_1ED0DD2: var_3D4.Fields.Item("Name").Value = "As Per Detail"
  loc_1ED0E21: var_3D4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED0E58: var_3D4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED0E8A: var_3D4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED0E99: var_114 = "V_DATE"
  loc_1ED0EBC: var_124 = "dd/MMM/yyyy"
  loc_1ED0EC1: var_178 = var_124
  loc_1ED0EF9: var_3D4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1ED0F1B: var_3D4.Update var_114, var_124
  loc_1ED0F22: Set var_3D4 = Nothing 
  loc_1ED0F33: var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1ED0F5E: Proc_183_9_EAB2F0(var_178, CVar(var_90.Fields.Item("DocID")), var_124, var_210, -1, var_2DC)
  loc_1ED0FAB: unk_58C129.Execute CStr(1 & var_178 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value), 1, 1
  loc_1ED0FB6: Set var_94 = var_2DC
  loc_1ED0FE7: Loop Until Not(var_94.EOF) 'do at: 1EC1C8E
  loc_1ED0FF3: var_D8 = vbNullString
  loc_1ED0FF9: var_DC = vbNullString
  loc_1ED1035: Loop Until (Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), var_178) <> vbNullString) 'do at: 1EC1090
  loc_1ED1078: var_1B4 = (Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))) + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ED10BF: Loop Until Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) 'do at: 1EC112D
  loc_1ED10F2: var_124 = "dd/MM/yy"
  loc_1ED1115: var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1ED1130: var_114 = "NARR"
  loc_1ED1164: var_DC = CStr(Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1ED1176: Set var_3D8 = var_8C 
  loc_1ED1185: var_3D8.AddNew var_114, var_124
  loc_1ED11C6: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EC11E0
  loc_1ED11C9: var_124 = "1"
  loc_1ED11D8: var_3D8.Collect = "Val"
  loc_1ED11DD: GoTo loc_1EC125F
  loc_1ED1234: var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ED1246: var_3D8.Collect = "Val"
  loc_1ED12C2: var_3D8.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED12FF: var_3D8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED134E: var_3D8.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED139B: Loop Until (var_94.Fields.Item("Debit").Value > 0) 'do at: 1EC14C8
  loc_1ED139E: var_124 = "*"
  loc_1ED13C3: var_3D8.Fields.Item("Sub").Value = var_124
  loc_1ED1415: var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1ED141C: Proc_183_4_EAC738(var_210, var_1C8, 1, 1)
  loc_1ED1446: var_1A4 = (var_124 + CVar(Proc_183_15_EAD490(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2), var_1C8)))
  loc_1ED144F: var_1B4 = ("3" + " ")
  loc_1ED1468: var_250 = (CStr(var_90.Fields.Item("V_SNo").Value) & " Dt: " + CVar(Proc_183_16_EAF86C(CStr(var_210), &HC, "2")))
  loc_1ED1471: var_260 = (CVar(var_2DC.Item("Add2")) + " Dr")
  loc_1ED1495: var_3D8.Fields.Item("Name").Value = CVar(Proc_183_2_E5AE94(CVar(var_3D8.Fields.Item("Add2")), 1, 1))
  loc_1ED14C5: GoTo loc_1EC15EF
  loc_1ED14ED: var_3D8.Fields.Item("Sub").Value = "*"
  loc_1ED14FF: var_114 = "Name"
  loc_1ED1513: var_168 = var_94.Fields.Item(var_114)
  loc_1ED1546: Proc_183_4_EAC738(var_210, CVar(var_94.Fields.Item("Credit")))
  loc_1ED1570: var_1A4 = (Space(2) + CVar(Proc_183_15_EAD490(CStr(var_168.Value), &H14)))
  loc_1ED1574: var_124 = " "
  loc_1ED1579: var_1B4 = ("3" + var_124)
  loc_1ED1592: var_250 = ("2" + CVar(Proc_183_16_EAF86C(CStr(var_210), &HC)))
  loc_1ED159B: var_260 = (CVar(var_3D8.Fields.Item("Add2")) + " Cr")
  loc_1ED15B7: var_334 = var_3D8.Fields.Item("Name")
  loc_1ED15BF: var_334.Value = CVar(Proc_183_2_E5AE94(CVar(var_3D8.Fields.Item("Add2")), 1, 1))
  loc_1ED15FA: var_3D8.Update var_114, var_124
  loc_1ED1601: Set var_3D8 = Nothing 
  loc_1ED1613: Set var_148 = Me.TEXT
  loc_1ED1619: Call 0.Method_Proc_245_79_1ED39700 (CInt(7), var_168)
  loc_1ED1621: var_160 = var_168.Text
  loc_1ED1638: Loop Until (var_160 = "Yes") 'do at: 1EC1C83
  loc_1ED163E: var_114 = var_D4
  loc_1ED164E: var_124 = vbNullString
  loc_1ED1659: Loop Until CBool(Trim(var_114) <> var_124) 'do at: 1EC195F
  loc_1ED1666: Loop Until (Len(var_D4) > 0) 'do at: 1EC195F
  loc_1ED166C: Set var_3DC = var_8C 
  loc_1ED167B: var_3DC.AddNew var_114, var_124
  loc_1ED16A8: var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1ED16CC: var_3DC.Fields.Item("Name").Value = CVar(Proc_183_15_EAD490(CStr(var_3DC.Fields.Item("Name").Value), &H14))
  loc_1ED1724: var_3DC.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED175B: var_3DC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED178C: var_3DC.Fields.Item("Sub").Value = "*"
  loc_1ED17FB: var_3DC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED184E: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EC1885
  loc_1ED1876: var_3DC.Fields.Item("Val").Value = "1"
  loc_1ED1882: GoTo loc_1EC191E
  loc_1ED188B: var_114 = "Credit"
  loc_1ED18C5: var_124 = 0
  loc_1ED1901: var_3DC.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED1929: var_3DC.Update var_114, var_124
  loc_1ED1930: Set var_3DC = Nothing 
  loc_1ED1952: var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1ED195C: GoTo loc_1EC165C
  loc_1ED1962: var_114 = var_DC
  loc_1ED1972: var_124 = vbNullString
  loc_1ED197D: Loop Until CBool(Trim(var_114) <> var_124) 'do at: 1EC1C83
  loc_1ED198A: Loop Until (Len(var_DC) > 0) 'do at: 1EC1C83
  loc_1ED1990: Set var_3E0 = var_8C 
  loc_1ED199F: var_3E0.AddNew var_114, var_124
  loc_1ED19CC: var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1ED19F0: var_3E0.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1ED1A48: var_3E0.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED1A7F: var_3E0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED1AB0: var_3E0.Fields.Item("Sub").Value = "*"
  loc_1ED1B1F: var_3E0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED1B72: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EC1BA9
  loc_1ED1B9A: var_3E0.Fields.Item("Val").Value = "1"
  loc_1ED1BA6: GoTo loc_1EC1C42
  loc_1ED1BAF: var_114 = "Credit"
  loc_1ED1BC3: var_168 = var_90.Fields.Item(var_114)
  loc_1ED1BE9: var_124 = 0
  loc_1ED1C25: var_3E0.Fields.Item("Val").Value = IIf((var_168.Value > var_124), "3", "2")
  loc_1ED1C4D: var_3E0.Update var_114, var_124
  loc_1ED1C54: Set var_3E0 = Nothing 
  loc_1ED1C76: var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1ED1C80: GoTo loc_1EC1980
  loc_1ED1C86: var_94.MoveNext
  loc_1ED1C8B: GoTo loc_1EC0FD8
  loc_1ED1C9C: Set var_148 = Me.TEXT
  loc_1ED1CA2: Call 0.Method_Proc_245_79_1ED39700 (CInt(&HB), var_168, var_160, 1)
  loc_1ED1CAA: 1 = var_168.Text
  loc_1ED1CC1: Loop Until (var_160 = "Yes") 'do at: 1EC2714
  loc_1ED1CE2: Loop Until CBool(Trim(var_AC) <> vbNullString) 'do at: 1EC2034
  loc_1ED1CEF: Loop Until (Len(var_AC) > 0) 'do at: 1EC2034
  loc_1ED1CF5: Set var_3E4 = var_8C 
  loc_1ED1CFC: var_3E4.MoveLast
  loc_1ED1D04: var_114 = "Name"
  loc_1ED1D2F: var_124 = vbNullString
  loc_1ED1D41: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1EC1D54
  loc_1ED1D4F: var_3E4.AddNew var_114, var_124
  loc_1ED1D7C: var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1ED1DA0: var_3E4.Fields.Item("Name").Value = (var_3E4.Fields.Item("Name").Value > "Name")
  loc_1ED1DF8: var_3E4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED1E2F: var_3E4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED1E61: var_3E4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED1ED0: var_3E4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED1F23: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EC1F5A
  loc_1ED1F4B: var_3E4.Fields.Item("Val").Value = "1"
  loc_1ED1F57: GoTo loc_1EC1FF3
  loc_1ED1F60: var_114 = "Credit"
  loc_1ED1F9A: var_124 = 0
  loc_1ED1FD6: var_3E4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED1FFE: var_3E4.Update var_114, var_124
  loc_1ED2005: Set var_3E4 = Nothing 
  loc_1ED2027: var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1ED2031: GoTo loc_1EC1CE5
  loc_1ED2052: Loop Until CBool(Trim(var_B0) <> vbNullString) 'do at: 1EC23A4
  loc_1ED205F: Loop Until (Len(var_B0) > 0) 'do at: 1EC23A4
  loc_1ED2065: Set var_3E8 = var_8C 
  loc_1ED206C: var_3E8.MoveLast
  loc_1ED2074: var_114 = "Name"
  loc_1ED209F: var_124 = vbNullString
  loc_1ED20B1: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1EC20C4
  loc_1ED20BF: var_3E8.AddNew var_114, var_124
  loc_1ED20EC: var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1ED2110: var_3E8.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1ED2168: var_3E8.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED219F: var_3E8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED21D1: var_3E8.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED2240: var_3E8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED2293: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EC22CA
  loc_1ED22BB: var_3E8.Fields.Item("Val").Value = "1"
  loc_1ED22C7: GoTo loc_1EC2363
  loc_1ED22D0: var_114 = "Credit"
  loc_1ED230A: var_124 = 0
  loc_1ED2346: var_3E8.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED236E: var_3E8.Update var_114, var_124
  loc_1ED2375: Set var_3E8 = Nothing 
  loc_1ED2397: var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1ED23A1: GoTo loc_1EC2055
  loc_1ED23C2: Loop Until CBool(Trim(var_B4) <> vbNullString) 'do at: 1EC2714
  loc_1ED23CF: Loop Until (Len(var_B4) > 0) 'do at: 1EC2714
  loc_1ED23D5: Set var_3EC = var_8C 
  loc_1ED23DC: var_3EC.MoveLast
  loc_1ED23E4: var_114 = "Name"
  loc_1ED240F: var_124 = vbNullString
  loc_1ED2421: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1EC2434
  loc_1ED242F: var_3EC.AddNew var_114, var_124
  loc_1ED245C: var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1ED2480: var_3EC.Fields.Item("Name").Value = (var_90.Fields.Item(var_B4).Value > "Name")
  loc_1ED24D8: var_3EC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED250F: var_3EC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED2541: var_3EC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED25B0: var_3EC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED2603: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EC263A
  loc_1ED262B: var_3EC.Fields.Item("Val").Value = "1"
  loc_1ED2637: GoTo loc_1EC26D3
  loc_1ED2640: var_114 = "Credit"
  loc_1ED2671: var_1A4 = "3"
  loc_1ED267A: var_124 = 0
  loc_1ED2684: var_188 = (var_90.Fields.Item(var_114).Value > var_124) 'Variant
  loc_1ED268E: var_1C8 = IIf(var_188, var_1A4, "2")
  loc_1ED26B6: var_3EC.Fields.Item("Val").Value = var_1C8
  loc_1ED26DE: var_3EC.Update var_114, var_124
  loc_1ED26E5: Set var_3EC = Nothing 
  loc_1ED2707: var_B4 = CStr(Mid(var_B4, &H31, 300))
  loc_1ED2711: GoTo loc_1EC23C5
  loc_1ED2717: var_90.MoveNext
  loc_1ED272A: Loop Until var_90.EOF 'do at: 1EC2730
  loc_1ED272D: GoTo loc_1EC27A1
  loc_1ED274A: var_168 = var_90.Fields.Item("Party")
  loc_1ED2774: var_1B8 = var_88.Fields.Item("subcode")
  loc_1ED2798: Loop Until CBool(var_168.Value <> var_1B8.Value) 'do at: 1EC279E
  loc_1ED279B: GoTo loc_1EC27A1
  loc_1ED279E: GoTo loc_1EBFD34
  loc_1ED27A4: var_88.MoveNext
  loc_1ED27A9: GoTo loc_1EC8418
  loc_1ED27B8: Me.FrDetail.Visible = False
  loc_1ED27C6: var_190 = var_8C.RecordCount
  loc_1ED27D4: Loop Until (var_190 <= 0) 'do at: 1EC2811
  loc_1ED27DD: Call 0.Method_arg_50 (var_160, 1, 1, 1, 1)
  loc_1ED27EB: var_178 = CVar(var_160) 'String
  loc_1ED27FE: MsgBox("** No Records Found to Print **", &H40, var_178, var_188, var_1A4)
  loc_1ED280E: GoTo loc_1EC38D9
  loc_1ED2827: Set var_148 = var_8C 
  loc_1ED2833: var_15A = CreateFieldDefFile(var_148, MemVar_1F953B4 & "\FaLEDGER.ttx", &HFF, 1)
  loc_1ED2843: var_114 = CVar(var_15A) 'Integer
  loc_1ED2846: var_C8 = var_114 'Variant
  loc_1ED2863: Loop Until ((arg_10 = "LedDeb") And (arg_C = 1)) 'do at: 1EC2B1A
  loc_1ED287D: Call 0.Method_arg_1C (MemVar_1F953B4 & "\FaTAGADALET.RPT", var_114, var_148, var_15A)
  loc_1ED2888: MemVar_1F951E8 = var_148
  loc_1ED28AD: Set var_148 = Me.TxtHeader
  loc_1ED28B3: Call 0.Method_Proc_245_79_1ED39700 (0, var_168, "UPDATE FaEnviro SET TagadaHeader1=", var_55C, -1)
  loc_1ED28C2: Proc_183_9_EAB2F0(var_178, CVar(var_168), var_560, 1)
  loc_1ED28CA: var_188 = 1 & var_178 
  loc_1ED28D3: var_1A4 = var_188 & ",TagadaHeader2=" 
  loc_1ED28E0: Set var_194 = Me.TxtHeader
  loc_1ED28E6: Call 0.Method_Proc_245_79_1ED39700 (1, var_1B8, var_1A4)
  loc_1ED28F5: Proc_183_9_EAB2F0(var_1C8, CVar(var_1B8))
  loc_1ED2913: Set var_2DC = Me.TxtHeader
  loc_1ED2919: Call 0.Method_Proc_245_79_1ED39700 (2, var_334)
  loc_1ED2928: Proc_183_9_EAB2F0(CVar(Proc_183_2_E5AE94(CVar(var_2DC.Item("Add2")), 1, 1)), CVar(var_334))
  loc_1ED2946: Set var_338 = Me.TxtHeader
  loc_1ED294C: Call 0.Method_Proc_245_79_1ED39700 (3, var_33C)
  loc_1ED295B: Proc_183_9_EAB2F0(vbNullString, CVar(var_33C))
  loc_1ED2963: var_30C = 1 & var_1C8 & ",TagadaHeader3=" & CVar(Proc_183_2_E5AE94(CVar(var_2DC.Item("Add2")), 1, 1)) & ",TagadaHeader4=" & vbNullString 
  loc_1ED2979: Set var_3F0 = Me.TxtHeader
  loc_1ED297F: Call 0.Method_Proc_245_79_1ED39700 (4, var_3F4)
  loc_1ED298E: Proc_183_9_EAB2F0(var_384, CVar(var_3F4))
  loc_1ED29AC: Set var_3F8 = Me.TxtFooter
  loc_1ED29B2: Call 0.Method_Proc_245_79_1ED39700 (0, var_3FC)
  loc_1ED29C1: Proc_183_9_EAB2F0(var_41C, CVar(var_3FC))
  loc_1ED29DF: Set var_440 = Me.TxtFooter
  loc_1ED29E5: Call 0.Method_Proc_245_79_1ED39700 (1, var_444)
  loc_1ED29F4: Proc_183_9_EAB2F0(var_464, CVar(var_444))
  loc_1ED2A12: Set var_488 = Me.TxtFooter
  loc_1ED2A18: Call 0.Method_Proc_245_79_1ED39700 (2, var_48C)
  loc_1ED2A27: Proc_183_9_EAB2F0(var_4AC, CVar(var_48C))
  loc_1ED2A2F: var_4BC = var_30C & ",TagadaHeader5=" & var_384 & ",TagadaFooter1=" & var_41C & ",TagadaFooter2=" & var_464 & ",TagadaFooter3=" & var_4AC 
  loc_1ED2A45: Set var_4D0 = Me.TxtFooter
  loc_1ED2A4B: Call 0.Method_Proc_245_79_1ED39700 (3, var_4D4)
  loc_1ED2A5A: Proc_183_9_EAB2F0(var_4F4, CVar(var_4D4))
  loc_1ED2A78: Set var_518 = Me.TxtFooter
  loc_1ED2A7E: Call 0.Method_Proc_245_79_1ED39700 (4, var_51C)
  loc_1ED2A8D: Proc_183_9_EAB2F0(var_53C, CVar(var_51C))
  loc_1ED2A99: var_160 = CStr(var_4BC & ",TagadaFooter4=" & var_4F4 & ",TagadaFooter5=" & var_53C)
  loc_1ED2AA3: unk_58C129.Execute var_160, 1, 
  loc_1ED2B17: GoTo loc_1EC2E12
  loc_1ED2B20: Call 0.Method_arg_50 (var_160)
  loc_1ED2B57: Loop Until (MsgBox("Do You Want Each A/C on Separate Page", &H124, CVar(var_160), var_188, var_1A4) = 6) 'do at: 1EC2B63
  loc_1ED2B5D: var_D0 = "Y"
  loc_1ED2B60: GoTo loc_1EC2B69
  loc_1ED2B66: var_D0 = "N"
  loc_1ED2B75: Loop Until (arg_C = 1) 'do at: 1EC2CAC
  loc_1ED2B7B: var_568 = arg_10
  loc_1ED2B86: Loop Until Not (var_568 = "Led") 'do at: 1EC2B94
  loc_1ED2B91: Loop Until (var_568 = "AcCheckList") 'do at: 1EC2C3B
  loc_1ED2BAA: var_114 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_1ED2BB5: MsgBox(var_114, &H40, "Paper Setting", var_188, var_1A4)
  loc_1ED2BD3: Set var_148 = Me.TEXT
  loc_1ED2BD9: Call 0.Method_Proc_245_79_1ED39700 (CInt(&HD), var_168)
  loc_1ED2BF9: Set var_1B8 = var_148
  loc_1ED2C02: Set var_194 = Me 
  loc_1ED2C12: Call 0.Method_arg_154 (var_194, var_1B8, var_D0)
  loc_1ED2C34: GoTo loc_1EC38D9
  loc_1ED2C37: Exit Sub
  loc_1ED2C38: GoTo loc_1EC2CA9
  loc_1ED2C43: Loop Until (var_568 = "LedInt") 'do at: 1EC2C67
  loc_1ED2C52: Call 0.Method_arg_CC (var_148, var_15A, var_168.Text)
  loc_1ED2C5D: MemVar_1F951E8 = var_148
  loc_1ED2C64: GoTo loc_1EC2CA9
  loc_1ED2C6F: Loop Until Not (var_568 = "LedDeb") 'do at: 1EC2C7D
  loc_1ED2C7A: Loop Until (var_568 = "LedCred") 'do at: 1EC2CA9
  loc_1ED2C94: Call 0.Method_arg_1C (MemVar_1F953B4 & "\FaTAGADADR.RPT", var_114, var_148)
  loc_1ED2C9F: MemVar_1F951E8 = var_148
  loc_1ED2CA9: GoTo loc_1EC2E12
  loc_1ED2CAF: var_56C = arg_10
  loc_1ED2CBA: Loop Until Not (var_56C = "Led") 'do at: 1EC2CC8
  loc_1ED2CC5: Loop Until (var_56C = "AcCheckList") 'do at: 1EC2D2C
  loc_1ED2CDE: Set var_148 = var_1B8 
  loc_1ED2CEA: var_15A = CreateFieldDefFile(var_148, MemVar_1F953B4 & "\FaLedger.ttx", &HFF)
  loc_1ED2CFD: var_C8 = CVar(var_15A) 'Variant
  loc_1ED2D17: Call 0.Method_arg_C8 (var_148, var_15A)
  loc_1ED2D22: MemVar_1F951E8 = var_148
  loc_1ED2D29: GoTo loc_1EC2E12
  loc_1ED2D34: Loop Until (var_56C = "LedInt") 'do at: 1EC2D9B
  loc_1ED2D4D: Set var_148 = var_148 
  loc_1ED2D59: var_15A = CreateFieldDefFile(var_148, MemVar_1F953B4 & "\FaINTEREST.ttx", &HFF)
  loc_1ED2D6C: var_C8 = CVar(var_15A) 'Variant
  loc_1ED2D86: Call 0.Method_arg_CC (var_148, var_15A)
  loc_1ED2D91: MemVar_1F951E8 = var_148
  loc_1ED2D98: GoTo loc_1EC2E12
  loc_1ED2DA3: Loop Until Not (var_56C = "LedDeb") 'do at: 1EC2DB1
  loc_1ED2DAE: Loop Until (var_56C = "LedCred") 'do at: 1EC2E12
  loc_1ED2DBA: var_160 = MemVar_1F953B4 & "\FaTAGADADR.ttx"
  loc_1ED2DC0: var_18C = var_160
  loc_1ED2DC7: Set var_148 = var_148 
  loc_1ED2DD3: var_15A = CreateFieldDefFile(var_148, var_18C, &HFF)
  loc_1ED2DDD: Set var_8C = var_148
  loc_1ED2DE6: var_C8 = CVar(var_15A) 'Variant
  loc_1ED2E00: Call 0.Method_arg_120 (var_148, var_15A)
  loc_1ED2E0B: MemVar_1F951E8 = var_148
  loc_1ED2E23: Call 0.Method_arg_90 (var_148, var_190, var_F6)
  loc_1ED2E2B: Call 0.Method_arg_24 (1, var_15A)
  loc_1ED2E37: For var_570 =  To CInt(var_190): var_562 = var_570 'Integer
  loc_1ED2E50:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1ED2E58:   Call 0.Method_arg_20 (var_168)
  loc_1ED2E60:   Call 0.Method_arg_30 (var_160)
  loc_1ED2E68:   var_574 = var_160
  loc_1ED2E7A:   Loop Until (var_574 = "TITLE") 'do at: 1EC2FA4
  loc_1ED2E88:   Set var_148 = Me.TEXT
  loc_1ED2E8E:   Call 0.Method_Proc_245_79_1ED39700 (CInt(&HC))
  loc_1ED2EB7:   Loop Until CBool(Trim(CVar(var_168)) <> vbNullString) 'do at: 1EC2F50
  loc_1ED2EC3:   Call 0.Method_arg_50 (var_160, "'")
  loc_1ED2ECF:   var_1E4 = var_160 & " ("
  loc_1ED2EE6:   Call 0.Method_Proc_245_79_1ED39700 (CInt(&HC), var_168, var_18C)
  loc_1ED2EEE:   var_1E4 = Me.TEXT.Text
  loc_1ED2F1C:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED2F24:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED2F2C:   Call 0.Method_arg_38 (var_168 & var_18C & ")" & "'")
  loc_1ED2F4D:   GoTo loc_1EC2FA1
  loc_1ED2F59:   Call 0.Method_arg_50 (var_160)
  loc_1ED2F7C:   Call 0.Method_arg_90 (Me.TEXT, CLng(var_F6))
  loc_1ED2F84:   Call 0.Method_arg_20 (var_168)
  loc_1ED2F8C:   Call 0.Method_arg_38 ("'" & var_160 & "'")
  loc_1ED2FA1:   GoTo loc_1EC383D
  loc_1ED2FAC:   Loop Until (var_574 = "DT") 'do at: 1EC3034
  loc_1ED2FD9:   Set var_168 = Me.TXTE_DATE
  loc_1ED3002:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED300A:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED3012:   Call 0.Method_arg_38 ("'From : " & Me.TXTS_DATE.Text & " To : " & var_168.Text & "'")
  loc_1ED3031:   GoTo loc_1EC383D
  loc_1ED303C:   Loop Until (var_574 = "INT_RATE") 'do at: 1EC30C4
  loc_1ED3047:   Loop Until (arg_10 = "LedInt") 'do at: 1EC30C1
  loc_1ED305B:   Set var_148 = Me.TEXT
  loc_1ED3061:   Call 0.Method_Proc_245_79_1ED39700 (CInt(5), var_168)
  loc_1ED3096:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED309E:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED30A6:   Call 0.Method_arg_38 (vbNullString & CStr(Val(var_168.Text)) & vbNullString)
  loc_1ED30C1:   GoTo loc_1EC383D
  loc_1ED30CC:   Loop Until (var_574 = "END_DATE") 'do at: 1EC3170
  loc_1ED30D7:   Loop Until (arg_10 = "LedInt") 'do at: 1EC316D
  loc_1ED30E1:   Set var_148 = Me.TXTE_DATE
  loc_1ED3100:   var_178 = "YYYY,MM,DD"
  loc_1ED313B:   Call 0.Method_arg_90 (var_168, CLng(var_F6), var_194)
  loc_1ED3143:   Call 0.Method_arg_20 (CStr(1 & Format(CDate(CDate(var_148.Text)), var_178) & "#)"), 1)
  loc_1ED314B:   Call 0.Method_arg_38 ("DATE(#")
  loc_1ED316D:   GoTo loc_1EC383D
  loc_1ED3178:   Loop Until (var_574 = "SEPRATEPAGE") 'do at: 1EC31C2
  loc_1ED319C:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1ED31A4:   Call 0.Method_arg_20 (var_168)
  loc_1ED31AC:   Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1ED31BF:   GoTo loc_1EC383D
  loc_1ED31CA:   Loop Until (var_574 = "PrintVrNo") 'do at: 1EC323B
  loc_1ED31DE:   Set var_148 = Me.TEXT
  loc_1ED31E4:   Call 0.Method_Proc_245_79_1ED39700 (CInt(&HD), var_168)
  loc_1ED320F:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED3217:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED321F:   Call 0.Method_arg_38 ("'" & var_168.Text & "'")
  loc_1ED3238:   GoTo loc_1EC383D
  loc_1ED3243:   Loop Until (var_574 = "DRCRTYPE") 'do at: 1EC32C6
  loc_1ED3249:   var_578 = arg_10
  loc_1ED3254:   Loop Until (var_578 = "LedDeb") 'do at: 1EC3289
  loc_1ED326A:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1ED3272:   Call 0.Method_arg_20 (var_168)
  loc_1ED327A:   Call 0.Method_arg_38 ("'DR'")
  loc_1ED3286:   GoTo loc_1EC32C3
  loc_1ED3291:   Loop Until (var_578 = "LedCred") 'do at: 1EC32C3
  loc_1ED32A7:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1ED32AF:   Call 0.Method_arg_20 (var_168)
  loc_1ED32B7:   Call 0.Method_arg_38 ("'CR'")
  loc_1ED32C3:   GoTo loc_1EC383D
  loc_1ED32CE:   Loop Until (var_574 = "TagadaHeader1") 'do at: 1EC3336
  loc_1ED32DA:   Set var_148 = Me.TxtHeader
  loc_1ED32E0:   Call 0.Method_Proc_245_79_1ED39700 (0)
  loc_1ED32EF:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED330B:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED3313:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED331B:   Call 0.Method_arg_38 (var_168)
  loc_1ED3333:   GoTo loc_1EC383D
  loc_1ED333E:   Loop Until (var_574 = "TagadaHeader2") 'do at: 1EC33A6
  loc_1ED334A:   Set var_148 = Me.TxtHeader
  loc_1ED3350:   Call 0.Method_Proc_245_79_1ED39700 (1)
  loc_1ED335F:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED337B:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED3383:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED338B:   Call 0.Method_arg_38 (var_168)
  loc_1ED33A3:   GoTo loc_1EC383D
  loc_1ED33AE:   Loop Until (var_574 = "TagadaHeader3") 'do at: 1EC3416
  loc_1ED33BA:   Set var_148 = Me.TxtHeader
  loc_1ED33C0:   Call 0.Method_Proc_245_79_1ED39700 (2)
  loc_1ED33CF:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED33EB:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED33F3:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED33FB:   Call 0.Method_arg_38 (var_168)
  loc_1ED3413:   GoTo loc_1EC383D
  loc_1ED341E:   Loop Until (var_574 = "TagadaHeader4") 'do at: 1EC3486
  loc_1ED342A:   Set var_148 = Me.TxtHeader
  loc_1ED3430:   Call 0.Method_Proc_245_79_1ED39700 (3)
  loc_1ED343F:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED345B:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED3463:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED346B:   Call 0.Method_arg_38 (var_168)
  loc_1ED3483:   GoTo loc_1EC383D
  loc_1ED348E:   Loop Until (var_574 = "TagadaHeader5") 'do at: 1EC34F6
  loc_1ED349A:   Set var_148 = Me.TxtHeader
  loc_1ED34A0:   Call 0.Method_Proc_245_79_1ED39700 (4)
  loc_1ED34AF:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED34CB:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED34D3:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED34DB:   Call 0.Method_arg_38 (var_168)
  loc_1ED34F3:   GoTo loc_1EC383D
  loc_1ED34FE:   Loop Until (var_574 = "TagadaFooter1") 'do at: 1EC3566
  loc_1ED350A:   Set var_148 = Me.TxtFooter
  loc_1ED3510:   Call 0.Method_Proc_245_79_1ED39700 (0)
  loc_1ED351F:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED353B:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED3543:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED354B:   Call 0.Method_arg_38 (var_168)
  loc_1ED3563:   GoTo loc_1EC383D
  loc_1ED356E:   Loop Until (var_574 = "TagadaFooter2") 'do at: 1EC35D6
  loc_1ED357A:   Set var_148 = Me.TxtFooter
  loc_1ED3580:   Call 0.Method_Proc_245_79_1ED39700 (1)
  loc_1ED358F:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED35AB:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED35B3:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED35BB:   Call 0.Method_arg_38 (var_168)
  loc_1ED35D3:   GoTo loc_1EC383D
  loc_1ED35DE:   Loop Until (var_574 = "TagadaFooter3") 'do at: 1EC3646
  loc_1ED35EA:   Set var_148 = Me.TxtFooter
  loc_1ED35F0:   Call 0.Method_Proc_245_79_1ED39700 (2)
  loc_1ED35FF:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED361B:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED3623:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED362B:   Call 0.Method_arg_38 (var_168)
  loc_1ED3643:   GoTo loc_1EC383D
  loc_1ED364E:   Loop Until (var_574 = "TagadaFooter4") 'do at: 1EC36B6
  loc_1ED365A:   Set var_148 = Me.TxtFooter
  loc_1ED3660:   Call 0.Method_Proc_245_79_1ED39700 (3)
  loc_1ED366F:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED368B:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED3693:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED369B:   Call 0.Method_arg_38 (var_168)
  loc_1ED36B3:   GoTo loc_1EC383D
  loc_1ED36BE:   Loop Until (var_574 = "TagadaFooter5") 'do at: 1EC3726
  loc_1ED36CA:   Set var_148 = Me.TxtFooter
  loc_1ED36D0:   Call 0.Method_Proc_245_79_1ED39700 (4)
  loc_1ED36DF:   Proc_183_9_EAB2F0(var_178, CVar(var_168))
  loc_1ED36FB:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED3703:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED370B:   Call 0.Method_arg_38 (var_168)
  loc_1ED3723:   GoTo loc_1EC383D
  loc_1ED372E:   Loop Until (var_574 = "PageNo") 'do at: 1EC37B3
  loc_1ED3784:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED378C:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED3794:   Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_1ED37B0:   GoTo loc_1EC383D
  loc_1ED37BB:   Loop Until (var_574 = "Date1") 'do at: 1EC383D
  loc_1ED37BE:   var_124 = "'"
  loc_1ED37D8:   var_148 = Me.Fields
  loc_1ED37F4:   var_134 = "'"
  loc_1ED37FD:   var_160 = CStr(var_124 & var_148.Item("daterfill").Value & var_134)
  loc_1ED3811:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED3819:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED3821:   Call 0.Method_arg_38 (var_160)
  loc_1ED3840: Next var_570 'Integer
  loc_1ED385E: Call 0.Method_arg_64 (var_148, CVar(var_8C))
  loc_1ED3866: Call 0.Method_arg_2C (var_124)
  loc_1ED3874: Call 0.Method_arg_150 (var_134)
  loc_1ED3887: Loop Until (arg_10 = "Led") 'do at: 1EC38B2
  loc_1ED3890: Call 0.Method_arg_50 (var_160)
  loc_1ED38A7: Call Proc_245_92_14984AC(MemVar_1F951E8, arg_C)
  loc_1ED38AF: GoTo loc_1EC38D9
  loc_1ED38B8: Call 0.Method_arg_50 (var_160, var_160)
  loc_1ED38D1: Call Proc_245_92_14984AC(MemVar_1F951E8, 0, var_160)
  loc_1ED38DE: Set var_88 = Nothing
  loc_1ED38E6: Set var_90 = Nothing
  loc_1ED38EE: Set var_8C = Nothing
  loc_1ED38F6: Set var_94 = Nothing
  loc_1ED38FE: Set var_100 = Nothing
  loc_1ED3906: Set var_104 = Nothing
  loc_1ED3916: Me.TXTACC_CODE.Text = vbNullString
  loc_1ED392B: Me.TXTACC_CODE1.Text = vbNullString
  loc_1ED3938: MemVar_1F951E8 = Nothing
  loc_1ED3944: Exit Sub
  loc_1ED394B: Call 0.Method_arg_50 (var_160, 0)
  loc_1ED3960: Proc_183_57_104B0BC(var_160, "Led")
  loc_1ED396C: Exit Sub
End Sub

Public Sub Proc_245_80_1774DC4
  'Data Table: 58C0E4
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_16C As String
  Dim var_130 As Variant
  Dim var_1F8 As Variant
  Dim var_228 As Variant
  Dim var_150 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim unk_58C129 As Connection15
  Dim var_218 As Variant
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_A0 As Recordset15
  Dim var_154 As Fields15
  Dim var_166 As Integer
  Dim var_30C As Fields15
  Dim var_194 As Variant
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_A8 As Recordset15
  Dim var_184 As Variant
  Dim var_318 As Variant
  Dim var_238 As Variant
  Dim var_320 As Recordset15
  Dim var_16E As Integer
  Dim var_A4 As Recordset15
  Dim var_334 As Recordset15
  Dim var_FC As Double
  Dim var_8C As Recordset15
  loc_1772FDC: On Error Goto loc_1774D91
  loc_1772FF4: Set var_154 = CVar(CLng(0))(0)
  loc_1773018: Call Proc_245_64_F51BE4(CInt(0), CStr(var_164))
  loc_177302C: If (var_16E = 0) Then
  loc_1773034:   global_130 = 0
  loc_1773037:   Exit Sub
  loc_1773038: End If
  loc_1773043: Set var_154 = Me.TEXT
  loc_1773049: Call 0.Method_Proc_245_80_1774DC40 (CInt(&HC), var_174, global_130)
  loc_1773058: var_184 = Trim(CVar(var_174))
  loc_1773072: If CBool(var_184 <> vbNullString) Then
  loc_1773086:   Set var_154 = Me.TEXT
  loc_177308C:   Call 0.Method_Proc_245_80_1774DC40 (CInt(&HC), var_174, var_16C)
  loc_1773094:   " And VIEWLEDGER.Site_Code='" = var_174.Tag
  loc_17730A4:   var_100 = var_16E & var_16C & "'"
  loc_17730B8: Else
  loc_17730BF:   var_16C = " And VIEWLEDGER.Site_Code='" & MemVar_1F95078
  loc_17730C6:   var_100 = var_16C & "'"
  loc_17730CC: End If
  loc_17730D8: Set var_154 = Me.Check1
  loc_17730DE: Call 0.Method_Proc_245_80_1774DC40 (1, var_174)
  loc_17730FC: If (CLng(var_174.Value) = 0) Then
  loc_177311A:   Call Proc_245_61_127C7BC(global_96, 1, CByte(1))
  loc_1773125:   global_84 = var_16C
  loc_1773135:   If (global_130 = 0) Then
  loc_1773138:     Exit Sub
  loc_1773139:   End If
  loc_1773139: End If
  loc_177314E: Set var_154 = CVar(CLng(3))(1)
  loc_1773170: If (CStr(Check1.DispID_41) = vbNullString) Then
  loc_177318C:   MsgBox("Specify More Than Days", 0, var_184, var_194, var_1A8)
  loc_17731A1:   global_130 = 0
  loc_17731A4:   Exit Sub
  loc_17731A5: End If
  loc_17731B2: Call Proc_245_82_11EB060(New, var_154, global_130)
  loc_17731BA: Set var_8C = var_154
  loc_17731C8: If (global_84 = vbNullString) Then
  loc_17731DB:   var_164 = "Supplier"
  loc_177320D:   Set var_154 = CVar(CLng(0))(1)
  loc_1773224:   Proc_183_7_EB17D4(var_238, CVar(CStr(Check1.DispID_41)))
  loc_1773236:   var_150 = "Select SG.SubCode,SG.Name,SG.Add1,SG.Add2,C.CityName,SG.ConPerson,SG.PIN,SG.EMail,SG.PhoneO,VIEWLEDGER.* From (SubGroup SG Left Join City C on SG.CityCode=C.CityCode) LEFT JOIN VIEWLEDGER ON VIEWLEDGER.PARTY=SG.SUBCODE Where SG.Nature='"
  loc_1773257:   var_268 = var_150 & IIf((GRepFormName = "DueListCreditorOverLay"), var_164, "Customer") & "' AND VIEWLEDGER.V_DATE<=" & var_238 & "  " 
  loc_1773278:   unk_58C129.Execute CStr(var_268 & CVar(var_100) & " Order By Name,SG.SUBCODE,VIEWLEDGER.V_DATE,VIEWLEDGER.DOCID"), var_2C8, -1
  loc_1773283:   Set var_A0 = var_174
  loc_17732C5:   unk_58C129.Execute "Select SubCode+'-'+DocId1+'-'+ LTRIM(RTRIM(V_SNo1)) AS SCODE,SUBCODE,DocId1,V_SNo1,SUM(CR) AS ADJCr  FROM LEDGERADJ GROUP BY SUBCODE,DocId1,V_SNo1", var_164, -1
  loc_17732D0:   Set var_A4 = var_154
  loc_17732EF:   unk_58C129.Execute "Select SubCode+'-'+DocId2+'-'+ LTRIM(RTRIM(V_SNo2)) AS SCODE,SUBCODE,DocId2,V_SNo2,SUM(CR) AS ADJDr  FROM LEDGERADJ GROUP BY SUBCODE,DocId2,V_SNo2", var_164, -1
  loc_17732FA:   Set var_A8 = var_154
  loc_1773306: Else
  loc_1773316:   var_164 = "Supplier"
  loc_1773336:   var_1F8 = CVar(CLng(0)) 'Long
  loc_1773348:   Set var_154 = var_1F8(1)
  loc_177335F:   Proc_183_7_EB17D4(var_268, CVar(CStr(Check1.DispID_41)), var_154, var_154)
  loc_1773371:   var_150 = "Select SG.SubCode,SG.Name,SG.Add1,SG.Add2,C.CityName,SG.ConPerson,SG.PIN,SG.EMail,SG.PhoneO,VIEWLEDGER.* From (SubGroup SG Left Join City C on SG.CityCode=C.CityCode) LEFT JOIN VIEWLEDGER ON VIEWLEDGER.PARTY=SG.SUBCODE Where SG.Nature='"
  loc_177338F:   var_218 = var_150 & IIf((GRepFormName = "DueListCreditorOverLay"), var_164, "Customer") & "' AND SG.SUBCODE IN (" & CVar(global_84) 
  loc_17733BB:   var_2E8 = var_218 & ") AND VIEWLEDGER.V_DATE<=" & var_268 & " " & CVar(var_100) & " Order By Name,SG.SUBCODE,VIEWLEDGER.V_DATE,VIEWLEDGER.DOCID" 
  loc_17733C9:   unk_58C129.Execute CStr(var_2E8), var_308, -1
  loc_17733D4:   Set var_A0 = var_174
  loc_177341B:   var_16C = "Select SubCode+'-'+DocId1+'-'+ LTRIM(RTRIM(V_SNo1)) AS SCODE,SUBCODE,DocId1,V_SNo1,SUM(CR) AS ADJCr  FROM LEDGERADJ WHERE SUBCODE IN (" & global_84
  loc_177342B:   unk_58C129.Execute CStr(var_2E8) & ") GROUP BY SUBCODE,DocId1,V_SNo1", var_164, -1
  loc_1773436:   Set var_A4 = var_154
  loc_177345D:   var_16C = "Select SubCode+'-'+DocId2+'-'+ LTRIM(RTRIM(V_SNo2)) AS SCODE,SUBCODE,DocId2,V_SNo2,SUM(CR) AS ADJDr  FROM LEDGERADJ WHERE SUBCODE IN (" & global_84
  loc_177346D:   unk_58C129.Execute CStr(var_2E8) & ") GROUP BY SUBCODE,DocId2,V_SNo2", var_164, -1
  loc_1773478:   Set var_A8 = var_154
  loc_1773488:   ' Referenced from:   17749C1
  loc_1773488: End If
  loc_1773497: If Not(var_A0.EOF) Then
  loc_17734ED:   var_184 = vbNullString
  loc_1773511:   var_BC = CStr(Trim(IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name")))))
  loc_1773555:   var_C0 = CStr(var_A0.Fields.Item("Party").Value)
  loc_1773565:   var_D8 = CDbl(0)
  loc_177356B:   var_E0 = CDbl(0)
  loc_1773571:   var_108 = CDbl(0)
  loc_1773577:   var_110 = CDbl(0)
  loc_177357A:   ' Referenced from: 17749BE
  loc_17735B7:   If (var_A0.Fields.Item("Party").Value = CVar(var_C0)) Then
  loc_17735EC:     Proc_183_3_E7DD58(var_184, CVar(var_A0.Fields.Item("Debit")), CDbl(0), CDbl(0), var_110, var_108, var_E0)
  loc_1773606:     If (var_184 > 0) Then
  loc_177361D:       If (var_A8.RecordCount > 0) Then
  loc_1773623:         var_A8.MoveFirst
  loc_1773628:       End If
  loc_1773665:       var_130 = "-"
  loc_177366A:       var_184 = (var_A0.Fields.Item("subcode").Value + 0)
  loc_1773698:       var_1A8 = (var_184 + var_A0.Fields.Item("DocID").Value)
  loc_177369C:       var_150 = "-"
  loc_17736A1:       var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name"))) + vbNullString)
  loc_17736D3:       var_238 = (Trim(IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name")))) + Trim(CVar(var_A0.Fields.Item("V_SNo"))))
  loc_17736EB:       var_A8.Find CStr("SCODE='" & var_238 & "'"), 0, 1
  loc_177371D:       var_166 = var_A8.EOF
  loc_1773728:       If (var_166 = 0) Then
  loc_1773751:         Proc_183_3_E7DD58(var_184, CVar(var_A8.Fields.Item("ADJDR")), var_1F8, var_D8, var_166)
  loc_177375A:         var_C8 = CSng(var_184)
  loc_1773767:       End If
  loc_1773786:       var_120 = CVar(CLng(2)) 'Long
  loc_1773798:       Set var_154 = var_120(1)
  loc_17737B1:       var_258 = (CStr(Check1.DispID_41) = "Pending")
  loc_17737D4:       var_1A8 = Format(CVar(var_A0.Fields.Item("Debit")), "0.00")
  loc_1773804:       var_228 = (1 - Format(var_C8, "0.00"))
  loc_1773833:       If CBool(1 And (Trim(CVar(var_A0.Fields.Item("V_SNo"))) = 0)) Then
  loc_1773836:         GoTo loc_177499F
  loc_1773839:       End If
  loc_177383C:       Set var_320 = var_8C 
  loc_177384B:       var_320.AddNew var_120, 0
  loc_1773893:       var_320.Fields.Item("VDATE1").Value = CVar(var_A0.Fields.Item("V_DATE"))
  loc_17738E7:       var_320.Fields.Item("VNO1").Value = CVar(var_A0.Fields.Item("V_NO"))
  loc_177393B:       var_320.Fields.Item("VTYPE1").Value = CVar(var_A0.Fields.Item("V_Type"))
  loc_177398F:       var_320.Fields.Item("VSNO1").Value = CVar(var_A0.Fields.Item("V_SNo"))
  loc_17739E3:       var_320.Fields.Item("VADD1").Value = CVar(var_A0.Fields.Item("V_ADD"))
  loc_1773A37:       var_320.Fields.Item("Dr").Value = CVar(var_A0.Fields.Item("Debit"))
  loc_1773A6A:       var_164 = var_A0.Fields.Item("Debit").Value
  loc_1773A79:       var_184 = (var_164 - CVar(var_C8))
  loc_1773A9D:       var_320.Fields.Item("PendDr").Value = CVar(var_A0.Fields.Item("Debit"))
  loc_1773AE1:       Set var_30C = CVar(CLng(0))(1)
  loc_1773B3F:       var_320.Fields.Item("AgeDr").Value = DateDiff("D", CVar(var_A0.Fields.Item("V_DATE")), CDate(CDate(CStr(var_164))), 1, 1)
  loc_1773BA0:       var_320.Fields.Item("SUBCODE").Value = CVar(var_A0.Fields.Item("Party"))
  loc_1773BF4:       var_320.Fields.Item("NAME").Value = CVar(var_A0.Fields.Item("Name"))
  loc_1773C58:       var_16E = IsNull(CVar(var_A0.Fields.Item("Add2")))
  loc_1773CA0:       var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Add1"))), vbNullString, CVar(var_A0.Fields.Item("Add1"))) + ",")
  loc_1773CD5:       var_1F8 = var_16E
  loc_1773CE4:       var_268 = ("0.00" + IIf(var_1F8, vbNullString, CVar(var_A0.Fields.Item("Add2"))))
  loc_1773D08:       var_320.Fields.Item("ADDRESS").Value = "SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"
  loc_1773DC2:       var_320.Fields.Item("CITY_NAME").Value = IIf(IsNull(CVar(var_A0.Fields.Item("CityName"))), vbNullString, CVar(var_A0.Fields.Item("CityName")))
  loc_1773E6A:       var_320.Fields.Item("ConPerson").Value = IIf(IsNull(CVar(var_A0.Fields.Item("ConPerson"))), vbNullString, CVar(var_A0.Fields.Item("ConPerson")))
  loc_1773F12:       var_320.Fields.Item("PIN").Value = IIf(IsNull(CVar(var_A0.Fields.Item("Pin"))), vbNullString, CVar(var_A0.Fields.Item("Pin")))
  loc_1773F57:       var_166 = IsNull(CVar(var_A0.Fields.Item("Email")))
  loc_1773F92:       var_1A8 = IIf(var_166, vbNullString, CVar(var_A0.Fields.Item("Email")))
  loc_1773FBA:       var_320.Fields.Item("EMail").Value = var_1A8
  loc_1774022:       var_320.Fields.Item("NARRATION1").Value = CVar(Proc_183_2_E5AE94(CVar(var_A0.Fields.Item("mNarr")), var_166, var_166, var_166, var_166, var_16E))
  loc_177403A:       var_120 = "NARR"
  loc_177405F:       var_184 = CVar(Proc_183_2_E5AE94(CVar(var_A0.Fields.Item(var_120)), var_166, Check1.DispID_41, var_1A8)) 'String
  loc_1774066:       var_130 = "NARRATION2"
  loc_1774082:       var_320.Fields.Item(var_130).Value = var_184
  loc_17740A2:       var_320.Update var_120, var_130
  loc_17740A9:       Set var_320 = Nothing 
  loc_17740B0:     Else
  loc_17740D6:       Proc_183_3_E7DD58(var_184, CVar(var_A0.Fields.Item("Credit")), 1)
  loc_17740F0:       If (var_184 > 0) Then
  loc_1774107:         If (var_A4.RecordCount > 0) Then
  loc_177410D:           var_A4.MoveFirst
  loc_1774112:         End If
  loc_177414F:         var_130 = "-"
  loc_1774154:         var_184 = (var_A0.Fields.Item("subcode").Value + 0)
  loc_1774182:         var_1A8 = (var_184 + var_A0.Fields.Item("DocID").Value)
  loc_1774186:         var_150 = "-"
  loc_177418B:         var_1C8 = (var_1A8 + vbNullString)
  loc_17741BD:         var_238 = ("0.00" + Trim(CVar(var_A0.Fields.Item("V_SNo"))))
  loc_17741D5:         var_A4.Find CStr("SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"), 0, 1
  loc_1774212:         If (var_A4.EOF = 0) Then
  loc_177423B:           Proc_183_3_E7DD58(var_184, CVar(var_A4.Fields.Item("ADJCR")), var_1F8)
  loc_1774244:           var_D0 = CSng(var_184)
  loc_1774251:         End If
  loc_1774270:         var_120 = CVar(CLng(2)) 'Long
  loc_1774282:         Set var_154 = var_120(1)
  loc_177429B:         var_258 = (CStr(Check1.DispID_41) = "Pending")
  loc_17742BE:         var_1A8 = Format(CVar(var_A0.Fields.Item("Credit")), "0.00")
  loc_17742EE:         var_228 = (1 - Format(var_D0, "0.00"))
  loc_177431D:         If CBool(1 And (Trim(CVar(var_A0.Fields.Item("V_SNo"))) = 0)) Then
  loc_1774320:           GoTo loc_177499F
  loc_1774323:         End If
  loc_1774326:         Set var_334 = var_8C 
  loc_1774335:         var_334.AddNew var_120, 0
  loc_177437D:         var_334.Fields.Item("VDATE2").Value = CVar(var_A0.Fields.Item("V_DATE"))
  loc_17743D1:         var_334.Fields.Item("VNO2").Value = CVar(var_A0.Fields.Item("V_NO"))
  loc_1774425:         var_334.Fields.Item("VTYPE2").Value = CVar(var_A0.Fields.Item("V_Type"))
  loc_1774479:         var_334.Fields.Item("VSNO2").Value = CVar(var_A0.Fields.Item("V_SNo"))
  loc_17744CD:         var_334.Fields.Item("VADD2").Value = CVar(var_A0.Fields.Item("V_ADD"))
  loc_1774521:         var_334.Fields.Item("Cr").Value = CVar(var_A0.Fields.Item("Credit"))
  loc_1774554:         var_164 = var_A0.Fields.Item("Credit").Value
  loc_1774563:         var_184 = (var_164 - CVar(var_D0))
  loc_1774587:         var_334.Fields.Item("PendCr").Value = CVar(var_A0.Fields.Item("Credit"))
  loc_17745CB:         Set var_30C = CVar(CLng(0))(1)
  loc_1774629:         var_334.Fields.Item("AgeCr").Value = DateDiff("D", CVar(var_A0.Fields.Item("V_DATE")), CDate(CDate(CStr(var_164))), 1, 1)
  loc_177468A:         var_334.Fields.Item("SUBCODE").Value = CVar(var_A0.Fields.Item("Party"))
  loc_17746DE:         var_334.Fields.Item("NAME").Value = CVar(var_A0.Fields.Item("Name"))
  loc_1774742:         var_16E = IsNull(CVar(var_A0.Fields.Item("Add2")))
  loc_177478A:         var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Add1"))), vbNullString, CVar(var_A0.Fields.Item("Add1"))) + ",")
  loc_17747CE:         var_268 = ("0.00" + IIf(var_16E, vbNullString, CVar(var_A0.Fields.Item("Add2"))))
  loc_17747D6:         var_258 = "ADDRESS"
  loc_17747F2:         var_334.Fields.Item(var_258).Value = "SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"
  loc_1774849:         var_166 = IsNull(CVar(var_A0.Fields.Item("CityName")))
  loc_177486B:         var_194 = CVar(var_A0.Fields.Item("CityName")) 'Address
  loc_1774884:         var_1A8 = IIf(var_166, vbNullString, var_194)
  loc_17748AC:         var_334.Fields.Item("CITY_NAME").Value = var_1A8
  loc_17748F1:         var_184 = CVar(Proc_183_2_E5AE94(CVar(var_A0.Fields.Item("mNarr")), var_166, var_16E, var_166, Check1.DispID_41, var_1A8)) 'String
  loc_1774914:         var_334.Fields.Item("NARRATION1").Value = var_184
  loc_177492C:         var_120 = "NARR"
  loc_1774958:         var_130 = "NARRATION2"
  loc_1774974:         var_334.Fields.Item(var_130).Value = CVar(Proc_183_2_E5AE94(CVar(var_A0.Fields.Item(var_120)), 1, 1, var_258))
  loc_1774994:         var_334.Update var_120, var_130
  loc_177499B:         Set var_334 = Nothing 
  loc_177499F:         ' Referenced from:   1774320
  loc_177499F:       End If
  loc_177499F:       ' Referenced from: 1773836
  loc_177499F:     End If
  loc_17749A2:     var_A0.MoveNext
  loc_17749B8:     If (var_A0.EOF = &HFF) Then
  loc_17749BB:       GoTo loc_17749C1
  loc_17749BE:     End If
  loc_17749BE:     GoTo loc_177357A
  loc_17749C1:     ' Referenced from: 17749BB
  loc_17749C1:   End If
  loc_17749C1:   GoTo loc_1773488
  loc_17749C4: End If
  loc_17749D8: If (var_A0.RecordCount > 0) Then
  loc_17749DE:   var_A0.MoveFirst
  loc_17749E3:   ' Referenced from: 1774C2D
  loc_17749E3: End If
  loc_17749F2: If Not(var_A0.EOF) Then
  loc_1774A20:   var_F4 = CStr(var_A0.Fields.Item("Party").Value)
  loc_1774A30:   var_FC = CDbl(0)
  loc_1774A3F:   var_8C.Filter = 0
  loc_1774A58:   If (var_8C.RecordCount > 0) Then
  loc_1774A5E:     var_8C.MoveFirst
  loc_1774A63:     ' Referenced from: 1774B52
  loc_1774A63:   End If
  loc_1774A72:   If Not(var_8C.EOF) Then
  loc_1774AB0:     var_140 = "AgeDr"
  loc_1774ACC:     var_1A8 = var_8C.Fields.Item(var_140).Value
  loc_1774AE9:     Set var_318 = CVar(CLng(3))(1)
  loc_1774B2A:     If CBool((var_8C.Fields.Item("subcode").Value = CVar(var_F4)) And (var_1A8 >= CVar(Val(CStr(Check1.DispID_41))))) Then
  loc_1774B34:       var_FC = (var_FC + CDbl(1))
  loc_1774B3E:       If (var_FC > CDbl(0)) Then
  loc_1774B41:         GoTo loc_1774C25
  loc_1774B47:       Else
  loc_1774B4A:       Else
  loc_1774B4A:       End If
  loc_1774B4D:       var_8C.MoveNext
  loc_1774B52:       GoTo loc_1774A63
  loc_1774B55:     End If
  loc_1774B5C:     If (var_FC = CDbl(0)) Then
  loc_1774B5F:       GoTo loc_1774B68
  loc_1774B65:     Else
  loc_1774B68:     Else
  loc_1774B68:       ' Referenced from:     1774B5F
  loc_1774B68:     End If
  loc_1774B6B:     var_130 = CVar(var_F4) 'String
  loc_1774BA5:     If (var_130 = var_A0.Fields.Item("Party").Value) Then
  loc_1774BBC:       If (var_8C.RecordCount > 0) Then
  loc_1774BC2:         var_8C.MoveFirst
  loc_1774BC7:       End If
  loc_1774BCE:       var_16C = "SubCode='" & var_F4
  loc_1774BDC:       var_8C.Filter = CVar(var_16C & "'")
  loc_1774BF8:       If (var_8C.EOF = 0) Then
  loc_1774BFB:         ' Referenced from:   1774C22
  loc_1774C0A:         If Not(var_8C.EOF) Then
  loc_1774C15:           var_8C.Delete
  loc_1774C1D:           var_8C.MoveNext
  loc_1774C22:           GoTo loc_1774BFB
  loc_1774C25:         End If
  loc_1774C25:         ' Referenced from: 1774B41
  loc_1774C25:       End If
  loc_1774C25:     End If
  loc_1774C25:   End If
  loc_1774C28:   var_A0.MoveNext
  loc_1774C2D:   GoTo loc_17749E3
  loc_1774C30: End If
  loc_1774C3C: var_8C.Filter = 0
  loc_1774C46: Set var_A0 = Nothing
  loc_1774C4E: Set var_A4 = Nothing
  loc_1774C56: Set var_A8 = Nothing
  loc_1774C5E: Set var_AC = Nothing
  loc_1774C66: Set var_B0 = Nothing
  loc_1774C7D: If (var_8C.RecordCount <= 0) Then
  loc_1774C86:   Call 0.Method_arg_50 (var_16C, 1, var_FC, var_FC)
  loc_1774CA7:   MsgBox("** No Records Found to Print **", &H40, CVar(var_16C), var_194, var_1A8)
  loc_1774CBC:   global_130 = 0
  loc_1774CBF: End If
  loc_1774CC5: Call 0.Method_arg_50 (var_16C, global_130, var_D0)
  loc_1774CE2: global_120 = CStr(Ucase(CVar(var_16C)))
  loc_1774D06: Set var_154 = var_8C 
  loc_1774D12: var_166 = CreateFieldDefFile(var_154, MemVar_1F953B4 & "\FaDueList.ttx", &HFF)
  loc_1774D22: var_120 = CVar(var_166) 'Integer
  loc_1774D25: var_9C = var_120 'Variant
  loc_1774D41: var_16C = MemVar_1F953B4 & "\FaDueList.RPT"
  loc_1774D4A: Call 0.Method_arg_1C (var_16C, var_120, var_154)
  loc_1774D55: MemVar_1F951E8 = var_154
  loc_1774D78: Call 0.Method_arg_64 (var_154, CVar(var_154), var_130, var_140)
  loc_1774D80: Call 0.Method_arg_2C (var_166, 1)
  loc_1774D8D: Set var_8C = Nothing
  loc_1774D90: Exit Sub
  loc_1774D91: ' Referenced from: 1772FDC
  loc_1774D9F: Call 0.Method_arg_50 (var_16C, 0)
  loc_1774DB4: Proc_183_57_104B0BC(var_16C, "DUELIST")
  loc_1774DC0: Exit Sub
End Sub

Public Sub Proc_245_81_147F83C(arg_C) '147F83C
  'Data Table: 58C0E4
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_118 As String
  Dim var_120 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_DC As Variant
  Dim var_154 As Variant
  Dim var_FC As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim unk_58C129 As Connection15
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_94 As Recordset15
  Dim var_100 As Fields15
  Dim var_22C As Recordset15
  Dim var_130 As Variant
  Dim var_88 As Recordset15
  Dim var_90 As Recordset15
  Dim var_230 As Recordset15
  Dim var_8C As Recordset15
  Dim var_232 As Integer
  Dim var_A2 As Integer
  Dim var_112 As Integer
  loc_147EC4C: On Error Goto loc_147F80B
  loc_147EC64: Set var_100 = CVar(CLng(0))(0)
  loc_147EC88: Call Proc_245_64_F51BE4(CInt(0), CStr(var_110))
  loc_147EC9C: If (var_11A = 0) Then
  loc_147ECA4:   global_130 = 0
  loc_147ECA7:   Exit Sub
  loc_147ECA8: End If
  loc_147ECBD: Set var_100 = CVar(CLng(1))(0)
  loc_147ECE1: Call Proc_245_64_F51BE4(CInt(1), CStr(var_110))
  loc_147ECF5: If (var_11A = 0) Then
  loc_147ECFD:   global_130 = 0
  loc_147ED00:   Exit Sub
  loc_147ED01: End If
  loc_147ED16: Set var_100 = CVar(CLng(0))(1)
  loc_147ED34: Me.TXTS_DATE.Text = CStr(TXTS_DATE.DispID_41)
  loc_147ED5B: Set var_100 = CVar(CLng(1))(1)
  loc_147ED6C: var_118 = CStr(TXTS_DATE.DispID_41)
  loc_147ED73: Set var_120 = Me.TXTE_DATE
  loc_147ED79: var_120.Text = var_118
  loc_147EDA2: If (Proc_183_48_F06B28(Me, global_130, var_11A, TXTS_DATE.DispID_41) = 0) Then
  loc_147EDAA:   global_130 = 0
  loc_147EDAD:   Exit Sub
  loc_147EDAE: End If
  loc_147EDB9: Set var_100 = Me.TEXT
  loc_147EDBF: Call 0.Method_Proc_245_81_147F83C0 (CInt(&HC), var_120, global_130)
  loc_147EDCE: var_130 = Trim(CVar(var_120))
  loc_147EDE8: If CBool(var_130 <> vbNullString) Then
  loc_147EDFC:   Set var_100 = Me.TEXT
  loc_147EE02:   Call 0.Method_Proc_245_81_147F83C0 (CInt(&HC), var_120, var_118, " And VIEWLEDGER.LOGSite_Code='")
  loc_147EE0A:   global_130 = var_120.Tag
  loc_147EE1A:   var_BC = var_11A & var_118 & "'"
  loc_147EE2E: Else
  loc_147EE35:   var_118 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078
  loc_147EE3C:   var_BC = var_118 & "'"
  loc_147EE42: End If
  loc_147EE4E: Set var_100 = Me.Check1
  loc_147EE54: Call 0.Method_Proc_245_81_147F83C0 (1, var_120)
  loc_147EE72: If (CLng(var_120.Value) = 0) Then
  loc_147EE90:   Call Proc_245_61_127C7BC(global_96, 1, CByte(1))
  loc_147EE9B:   global_84 = var_118
  loc_147EEAB:   If (global_130 = 0) Then
  loc_147EEAE:     GoTo loc_147F7EA
  loc_147EEB1:   End If
  loc_147EEB1: End If
  loc_147EEBC: If (global_84 <> vbNullString) Then
  loc_147EED0:   var_A8 = " AND GROUPCODE IN (" & global_84 & ") "
  loc_147EED6: End If
  loc_147EEE3: Call Proc_245_83_1025934(New, var_100)
  loc_147EEEB: Set var_8C = var_100
  loc_147EEFB: var_CC = "SELECT SUM(CREDIT)-SUM(DEBIT) AS BALANCE FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date<"
  loc_147EF0B: Proc_183_7_EB17D4(var_130, CVar(Me.TXTS_DATE), global_96, var_1D4)
  loc_147EF13: var_140 = -1 & var_130 
  loc_147EF2F: var_174 = var_140 & " " & CVar(var_A8) & " " 
  loc_147EF50: unk_58C129.Execute CStr(var_174 & CVar(var_BC) & vbNullString), var_100, CStr(var_174 & CVar(var_BC) & vbNullString)
  loc_147EF5B: Set var_94 = var_100
  loc_147EF86: var_CC = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY WHERE V_dATE BETWEEN "
  loc_147EF96: Proc_183_7_EB17D4(var_130, CVar(Me.TXTS_DATE), var_CC, var_1F4)
  loc_147EF9E: var_140 = -1 & var_130 
  loc_147EFB6: Proc_183_7_EB17D4(var_174, CVar(Me.TXTE_DATE), var_140 & " AND ")
  loc_147EFE8: unk_58C129.Execute CStr(var_100 & var_174 & " " & CVar(var_BC) & " ORDER BY DOCID"), TXTS_DATE.DispID_41, 
  loc_147EFF3: Set var_90 = var_100
  loc_147F032: Proc_183_7_EB17D4(var_130, CVar(Me.TXTS_DATE), "SELECT DISTINCT DOCID FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date BETWEEN ")
  loc_147F043: var_154 = var_224 & var_130 & " AND " 
  loc_147F052: Proc_183_7_EB17D4(var_174, CVar(Me.TXTE_DATE), var_154)
  loc_147F05A: var_194 = -1 & var_174 
  loc_147F06A: var_FC = CVar(var_A8) 'String
  loc_147F097: unk_58C129.Execute CStr(var_100 & var_174 & " " & var_FC & " " & CVar(var_BC) & " ORDER BY DOCID"), var_100, 
  loc_147F0A2: Set var_88 = var_100
  loc_147F0DC: If (var_94.RecordCount > 0) Then
  loc_147F0E5:   var_CC = "Balance"
  loc_147F109:   var_DC = 0
  loc_147F11B:   If CBool(var_94.Fields.Item(var_CC).Value <> var_DC) Then
  loc_147F121:     Set var_22C = var_8C 
  loc_147F130:     var_22C.AddNew var_CC, var_DC
  loc_147F139:     var_110 = CVar(Me.TXTS_DATE) 'Address
  loc_147F147:     var_22C.Collect = "V_DATE"
  loc_147F18B:     If (var_94.Fields.Item("Balance").Value > 0) Then
  loc_147F1B8:       var_130 = Abs(var_94.Fields.Item("Balance").Value)
  loc_147F1C6:       var_22C.Collect = "Credit"
  loc_147F1D5:       var_DC = 0
  loc_147F1E4:       var_22C.Collect = "Debit"
  loc_147F1EC:     Else
  loc_147F1EC:       var_DC = 0
  loc_147F1FB:       var_22C.Collect = "Credit"
  loc_147F22A:       var_130 = Abs(var_94.Fields.Item("Balance").Value)
  loc_147F238:       var_22C.Collect = "Debit"
  loc_147F247:     End If
  loc_147F247:     var_DC = "OP"
  loc_147F256:     var_22C.Collect = "V_Type"
  loc_147F25B:     var_DC = 0
  loc_147F26A:     var_22C.Collect = "V_NO"
  loc_147F26F:     var_DC = vbNullString
  loc_147F27E:     var_22C.Collect = "V_ADD"
  loc_147F289:     var_CC = "Chq_No"
  loc_147F292:     var_22C.Collect = var_CC
  loc_147F2A2:     var_22C.Update var_CC, vbNullString
  loc_147F2A9:     Set var_22C = Nothing 
  loc_147F2AD:     ' Referenced from: 147F67B
  loc_147F2AD:   End If
  loc_147F2AD: End If
  loc_147F2BC: If Not(var_88.EOF) Then
  loc_147F2C2:   var_90.MoveFirst
  loc_147F308:   var_EC = "'"
  loc_147F30D:   var_140 = "DocId='" & var_88.Fields.Item("DocID").Value & var_EC 
  loc_147F311:   var_118 = CStr(var_140)
  loc_147F318:   var_90.Find var_118, 0, 1
  loc_147F35B:   var_A0 = CStr(var_88.Fields.Item("DocID").Value)
  loc_147F379:   If (var_90.EOF = 0) Then
  loc_147F37C:     ' Referenced from: 147F670
  loc_147F37F:     var_DC = CVar(var_A0) 'String
  loc_147F389:     var_CC = "DocID"
  loc_147F3B9:     If (var_DC = var_90.Fields.Item(var_CC).Value) Then
  loc_147F3BF:       Set var_230 = var_8C 
  loc_147F3CE:       var_230.AddNew var_CC, var_DC
  loc_147F3F2:       var_110 = CVar(var_90.Fields.Item("V_DATE")) 'Address
  loc_147F400:       var_230.Collect = "V_DATE"
  loc_147F42A:       var_110 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_147F438:       var_230.Collect = "Credit"
  loc_147F462:       var_110 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_147F470:       var_230.Collect = "Debit"
  loc_147F49A:       var_110 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_147F4A8:       var_230.Collect = "V_Type"
  loc_147F4D2:       var_110 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_147F4E0:       var_230.Collect = "V_NO"
  loc_147F50A:       var_110 = CVar(var_90.Fields.Item("V_ADD")) 'Address
  loc_147F518:       var_230.Collect = "V_ADD"
  loc_147F542:       var_110 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_147F550:       var_230.Collect = "Chq_No"
  loc_147F57A:       var_110 = CVar(var_90.Fields.Item("Chq_Date")) 'Address
  loc_147F588:       var_230.Collect = "Chq_Date"
  loc_147F5B2:       var_110 = CVar(var_90.Fields.Item("NARR")) 'Address
  loc_147F5C0:       var_230.Collect = "NARR"
  loc_147F5EA:       var_110 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_147F5F8:       var_230.Collect = "Name"
  loc_147F606:       var_CC = "mNarr"
  loc_147F622:       var_110 = CVar(var_90.Fields.Item(var_CC)) 'Address
  loc_147F627:       var_DC = "mNarr"
  loc_147F630:       var_230.Collect = var_DC
  loc_147F646:       var_230.Update var_CC, var_DC
  loc_147F64D:       Set var_230 = Nothing 
  loc_147F654:       var_90.MoveNext
  loc_147F65F:       var_112 = var_90.EOF
  loc_147F66A:       If (var_112 = &HFF) Then
  loc_147F66D:         GoTo loc_147F673
  loc_147F670:       End If
  loc_147F670:       GoTo loc_147F37C
  loc_147F673:       ' Referenced from: 147F66D
  loc_147F673:     End If
  loc_147F673:   End If
  loc_147F676:   var_88.MoveNext
  loc_147F67B:   GoTo loc_147F2AD
  loc_147F67E: End If
  loc_147F692: If (var_8C.RecordCount <= 0) Then
  loc_147F69B:   Call 0.Method_arg_50 (var_118, var_110, var_110, var_110, var_110, var_110, var_110)
  loc_147F6BC:   MsgBox("** No Records Found to Print **", &H40, CVar(var_118), var_140, var_154)
  loc_147F6D1:   global_130 = 0
  loc_147F6D4:   Exit Sub
  loc_147F6D5: End If
  loc_147F6D8: var_232 = arg_C
  loc_147F6E1: If (var_232 = 1) Then
  loc_147F6EA:   var_DC = "Paper Setting"
  loc_147F6FF:   var_110 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_147F705:   MsgBox(var_110, &H40, var_DC, var_140, var_154)
  loc_147F71E:   Set var_120 = var_8C
  loc_147F737:   Call 0.Method_arg_160 (Me, var_120, var_112, var_232, global_130, var_110)
  loc_147F742:   Set var_8C = var_120
  loc_147F748:   var_A2 = var_112
  loc_147F757:   global_130 = 0
  loc_147F75A:   GoTo loc_147F7EA
  loc_147F760: Else
  loc_147F769:   var_118 = MemVar_1F953B4 & "\FaControlLed.ttx"
  loc_147F776:   Set var_100 = var_8C 
  loc_147F782:   var_112 = CreateFieldDefFile(var_100, var_118, &HFF, global_130, var_A2, var_110)
  loc_147F795:   var_B8 = CVar(var_112) 'Variant
  loc_147F7AF:   Call 0.Method_arg_11C (var_100, var_112, var_110, var_110)
  loc_147F7BA:   MemVar_1F951E8 = var_100
  loc_147F7DA:   Call 0.Method_arg_64 (var_100, CVar(var_100), var_DC, var_EC)
  loc_147F7E2:   Call 0.Method_arg_2C (var_110, var_FC)
  loc_147F7EA: End If
  loc_147F7EA: ' Referenced from: 147F75A
  loc_147F7EA: ' Referenced from: 147EEAE
  loc_147F7EF: Set var_88 = Nothing
  loc_147F7F7: Set var_8C = Nothing
  loc_147F7FF: Set var_90 = Nothing
  loc_147F807: Set var_94 = Nothing
  loc_147F80A: Exit Sub
  loc_147F80B: ' Referenced from: 147EC4C
  loc_147F819: Call 0.Method_arg_50 (var_118, 0)
  loc_147F82E: Proc_183_57_104B0BC(var_118, "ControlLed")
  loc_147F83A: Exit Sub
End Sub

Public Sub Proc_245_82_11EB060(arg_C) '11EB060
  'Data Table: 58C0E4
  Dim var_8C As Recordset15
  loc_11EABC1: Set var_8C = arg_C 
  loc_11EABE9: var_8C.Fields.Append "VDATE1", 7, 0
  loc_11EAC15: var_8C.Fields.Append "VNO1", 3, 0
  loc_11EAC41: var_8C.Fields.Append "VTYPE1", &HC8, 5
  loc_11EAC6D: var_8C.Fields.Append "VSNO1", 3, 0
  loc_11EAC99: var_8C.Fields.Append "VADD1", &HC8, 5
  loc_11EACC5: var_8C.Fields.Append "VDATE2", 7, 0
  loc_11EACF1: var_8C.Fields.Append "VNO2", 3, 0
  loc_11EAD1D: var_8C.Fields.Append "VTYPE2", &HC8, 5
  loc_11EAD49: var_8C.Fields.Append "VSNO2", 3, 0
  loc_11EAD75: var_8C.Fields.Append "VADD2", &HC8, 5
  loc_11EADA1: var_8C.Fields.Append "Cr", 5, 0
  loc_11EADCD: var_8C.Fields.Append "Dr", 5, 0
  loc_11EADF9: var_8C.Fields.Append "PendCr", 5, 0
  loc_11EAE25: var_8C.Fields.Append "PendDr", 5, 0
  loc_11EAE51: var_8C.Fields.Append "AgeCr", 3, 0
  loc_11EAE7D: var_8C.Fields.Append "AgeDr", 3, 0
  loc_11EAEA9: var_8C.Fields.Append "SUBCODE", &HC8, &HA
  loc_11EAED5: var_8C.Fields.Append "NAME", &HC8, &H32
  loc_11EAF01: var_8C.Fields.Append "ADDRESS", &HC8, &H96
  loc_11EAF2D: var_8C.Fields.Append "CITY_NAME", &HC8, &H32
  loc_11EAF59: var_8C.Fields.Append "ConPerson", &HC8, &H32
  loc_11EAF85: var_8C.Fields.Append "PIN", &HC8, 6
  loc_11EAFB1: var_8C.Fields.Append "EMail", &HC8, &H32
  loc_11EAFDD: var_8C.Fields.Append "NARRATION1", &HC8, &HFF
  loc_11EB009: var_8C.Fields.Append "NARRATION2", &HC8, &HFF
  loc_11EB019: var_8C.CursorType = 3
  loc_11EB026: var_8C.LockType = 3
  loc_11EB045: var_8C.Open var_A0, var_B0, -1
  loc_11EB04C: Set var_8C = Nothing 
  loc_11EB053: Set var_88 = arg_C 
  loc_11EB057: Proc_245_82_11EB060 = -1
  loc_11EB05D: -1 = -1
End Sub

Public Sub Proc_245_83_1025934(arg_C) '1025934
  'Data Table: 58C0E4
  Dim var_8C As Recordset15
  loc_10256FD: Set var_8C = arg_C 
  loc_1025725: var_8C.Fields.Append "V_DATE", 7, 0
  loc_1025751: var_8C.Fields.Append "credit", 5, 0
  loc_102577D: var_8C.Fields.Append "debit", 5, 0
  loc_10257A9: var_8C.Fields.Append "v_type", &HC8, 5
  loc_10257D5: var_8C.Fields.Append "v_no", 3, 0
  loc_1025801: var_8C.Fields.Append "v_add", &HC8, 5
  loc_102582D: var_8C.Fields.Append "Chq_No", &HC8, &H14
  loc_1025859: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_1025885: var_8C.Fields.Append "NARR", &HC8, &HFF
  loc_10258B1: var_8C.Fields.Append "NAME", &HC8, &H32
  loc_10258DD: var_8C.Fields.Append "MNARR", &HC8, &HFF
  loc_10258ED: var_8C.CursorType = 3
  loc_10258FA: var_8C.LockType = 3
  loc_1025919: var_8C.Open var_A0, var_B0, -1
  loc_1025920: Set var_8C = Nothing 
  loc_1025927: Set var_88 = arg_C 
  loc_102592B: Proc_245_83_1025934 = -1
End Sub

Public Sub Proc_245_84_191EDCC(arg_C) '191EDCC
  'Data Table: 58C0E4
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_150 As String
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_AC As Double
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim var_138 As Variant
  Dim var_114 As Variant
  Dim var_184 As Variant
  Dim var_1A8 As Variant
  Dim var_1E8 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_238 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_8C As Recordset15
  Dim var_218 As Variant
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_90 As Recordset15
  Dim var_D8 As Double
  Dim var_94 As Recordset15
  Dim var_D0 As Double
  Dim var_DC As Integer
  Dim var_DE As Integer
  Dim var_E0 As Integer
  Dim var_E2 As Integer
  Dim var_E4 As Integer
  Dim var_E6 As Integer
  Dim var_C8 As Double
  Dim Me As Recordset15
  Dim var_26C As Fields15
  Dim var_258 As Variant
  Dim var_2A8 As Variant
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_2AA As Integer
  Dim var_DA As Integer
  Dim var_14A As Integer
  loc_191C2A0: On Error Goto loc_191ED9A
  loc_191C2B8: Set var_138 = CVar(CLng(0))(0)
  loc_191C2DC: Call Proc_245_64_F51BE4(CInt(0), CStr(var_148))
  loc_191C2F0: If (var_152 = 0) Then
  loc_191C2F8:   global_130 = 0
  loc_191C2FB:   Exit Sub
  loc_191C2FC: End If
  loc_191C311: Set var_138 = CVar(CLng(1))(0)
  loc_191C335: Call Proc_245_64_F51BE4(CInt(1), CStr(var_148))
  loc_191C349: If (var_152 = 0) Then
  loc_191C351:   global_130 = 0
  loc_191C354:   Exit Sub
  loc_191C355: End If
  loc_191C36A: Set var_138 = CVar(CLng(2))(0)
  loc_191C38E: Call Proc_245_64_F51BE4(CInt(2), CStr(var_148))
  loc_191C3A2: If (var_152 = 0) Then
  loc_191C3AA:   global_130 = 0
  loc_191C3AD:   Exit Sub
  loc_191C3AE: End If
  loc_191C3C3: Set var_138 = CVar(CLng(3))(0)
  loc_191C3E7: Call Proc_245_64_F51BE4(CInt(3), CStr(var_148))
  loc_191C3FB: If (var_152 = 0) Then
  loc_191C403:   global_130 = 0
  loc_191C406:   Exit Sub
  loc_191C407: End If
  loc_191C41C: Set var_138 = CVar(CLng(4))(0)
  loc_191C440: Call Proc_245_64_F51BE4(CInt(4), CStr(var_148))
  loc_191C454: If (var_152 = 0) Then
  loc_191C45C:   global_130 = 0
  loc_191C45F:   Exit Sub
  loc_191C460: End If
  loc_191C475: Set var_138 = CVar(CLng(0))(1)
  loc_191C493: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_191C4BA: Set var_138 = CVar(CLng(1))(1)
  loc_191C4CB: var_150 = CStr(TXTS_DATE.DispID_41)
  loc_191C4D2: Set var_158 = Me.TXTE_DATE
  loc_191C4D8: var_158.Text = var_150
  loc_191C501: If (Proc_183_48_F06B28(Me, global_130, var_152, TXTE_DATE.DispID_41, global_130, var_152, TXTE_DATE.DispID_41) = 0) Then
  loc_191C509:   global_130 = 0
  loc_191C50C:   Exit Sub
  loc_191C50D: End If
  loc_191C518: Set var_138 = Me.TEXT
  loc_191C51E: Call 0.Method_Proc_245_84_191EDCC0 (CInt(&HC), var_158, global_130, global_130, var_152)
  loc_191C526: var_148 = CVar(var_158) 'Address
  loc_191C547: If CBool(Trim(var_148) <> vbNullString) Then
  loc_191C55B:   Set var_138 = Me.TEXT
  loc_191C561:   Call 0.Method_Proc_245_84_191EDCC0 (CInt(&HC), var_158, var_150, " And VIEWLEDGER.Site_Code='")
  loc_191C569:   TXTE_DATE.DispID_41 = var_158.Tag
  loc_191C579:   var_EC = global_130 & var_150 & "'"
  loc_191C58D: Else
  loc_191C59B:   var_EC = " And VIEWLEDGER.Site_Code='" & MemVar_1F95078 & "'"
  loc_191C5A1: End If
  loc_191C5B6: Set var_138 = CVar(CLng(4))(1)
  loc_191C5E3: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_191C621: var_168 = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_191C630: var_B0 = CStr(Trim(var_168))
  loc_191C642: var_A0 = vbNullString
  loc_191C648: var_A4 = vbNullString
  loc_191C64E: var_AC = CDbl(0)
  loc_191C675: unk_58C129.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "'", var_148, -1
  loc_191C680: Set var_88 = CVar(CLng(4))(2)
  loc_191C6A4: If (var_88.RecordCount <= 0) Then
  loc_191C6A7:   Exit Sub
  loc_191C6A8: End If
  loc_191C6BA: var_138 = var_88.Fields
  loc_191C6C2: var_158 = var_138.Item("GroupNature")
  loc_191C728: If CBool((var_158.Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191C72F:   var_148 = CVar(Me.TXTS_DATE) 'Address
  loc_191C736:   Proc_183_7_EB17D4(var_168, var_148, var_138)
  loc_191C741:   var_1E8 = 0
  loc_191C75E:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191C77E:   var_1B8 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE<") & var_168 & " " & CVar(var_EC) 
  loc_191C795:   unk_58C129.Execute CStr(var_1B8 & vbNullString), var_1D8, -1
  loc_191C79D:   var_138 = var_138.Fields
  loc_191C7A5:   var_1E8 = var_158.Item(var_158)
  loc_191C7AD:   var_184 = var_184.Value
  loc_191C7B6:   var_AC = CSng(var_1F8)
  loc_191C7E1: Else
  loc_191C7E4:   var_104 = MemVar_1F950F4
  loc_191C7EC:   Proc_183_7_EB17D4(var_148, var_104, var_AC, var_1F8)
  loc_191C7FC:   Proc_183_7_EB17D4(var_1B8, CVar(Me.TXTS_DATE), var_AC)
  loc_191C807:   var_238 = 0
  loc_191C824:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191C82B:   var_168 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE>=") 'String
  loc_191C835:   var_114 = " AND V_DATE<"
  loc_191C86B:   unk_58C129.Execute CStr(var_168 & var_148 & var_114 & var_1B8 & " " & CVar(var_EC) & vbNullString), var_228, -1
  loc_191C873:   var_138 = var_138.Fields
  loc_191C87B:   var_238 = var_158.Item(var_158)
  loc_191C883:   var_184 = var_184.Value
  loc_191C88C:   var_AC = CSng(var_248)
  loc_191C8BA: End If
  loc_191C8CA: Set var_138 = New
  loc_191C8D9: Call 0.Method_arg_1B8 (var_138, var_158, var_AC)
  loc_191C8E4: Set var_8C = var_138
  loc_191C8ED: Set var_8C = var_158
  loc_191C8FE: If (var_AC <> CDbl(0)) Then
  loc_191C90C:   Me.Recordset15.AddNew var_104, var_114
  loc_191C915:   var_148 = CVar(Me.TXTS_DATE) 'Address
  loc_191C923:   var_8C.Collect = "V_DATE"
  loc_191C932:   If (var_AC < CDbl(0)) Then
  loc_191C935:     var_114 = "OPENING BALANCE"
  loc_191C944:     var_8C.Collect = "Name"
  loc_191C94D:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191C95B:     var_8C.Collect = "cr"
  loc_191C963:   Else
  loc_191C963:     var_114 = "OPENING BALANCE"
  loc_191C972:     var_8C.Collect = "Name1"
  loc_191C97B:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191C980:     var_104 = "ADJAMT"
  loc_191C989:     var_8C.Collect = var_104
  loc_191C98E:   End If
  loc_191C999:   var_8C.Update var_104, var_114
  loc_191C99E: End If
  loc_191C9AB: var_104 = "SELECT VIEWLEDGER.V_Date,subgroup.NAME,Max(VIEWLEDGER.V_Type) V_Type,Max(VIEWLEDGER.V_No) V_No,Max(VIEWLEDGER.V_Sno) V_Sno,Max(VIEWLEDGER.DocID) DocID ,Max(VIEWLEDGER.Site_Code) Site_Code,Max(VIEWLEDGER.V_ADD) V_ADD,Max(VIEWLEDGER.Chq_No) Chq_No,Sum(VIEWLEDGER.Credit) Credit,Max(CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE V_DATE Between "
  loc_191C9B4: var_148 = CVar(Me.TXTS_DATE) 'Address
  loc_191C9BB: Proc_183_7_EB17D4(var_168, var_148, var_104, var_268, -1, var_138, var_114)
  loc_191C9C7: var_114 = " And "
  loc_191C9DB: Proc_183_7_EB17D4(var_1B8, CVar(Me.TXTE_DATE), var_114 & var_168 & var_114, var_114, var_114)
  loc_191CA12: var_248 = var_148 & var_1B8 & " AND CREDIT>0 AND PARTY<>'" & CVar(var_B0) & "' " & CVar(var_EC) & " GROUP BY V_DATE,Name" 
  loc_191CA20: unk_58C129.Execute CStr(var_248), var_248, var_152
  loc_191CA2B: Set var_94 = var_138
  loc_191CA5E: var_104 = "SELECT VIEWLEDGER.V_Date,subgroup.NAME,Max(VIEWLEDGER.V_Type) V_Type,Max(VIEWLEDGER.V_No) V_No,Max(VIEWLEDGER.V_Sno) V_Sno,Max(VIEWLEDGER.DocID) DocID ,Max(VIEWLEDGER.Site_Code) Site_Code,Max(VIEWLEDGER.V_ADD) V_ADD,Max(VIEWLEDGER.Chq_No) Chq_No,Sum(VIEWLEDGER.Debit) Debit,Max(CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE V_DATE Between "
  loc_191CA6E: Proc_183_7_EB17D4(var_168, CVar(Me.TXTS_DATE), var_104, var_268)
  loc_191CA76: var_178 = -1 & var_168 
  loc_191CA7A: var_114 = " And "
  loc_191CA8E: Proc_183_7_EB17D4(var_1B8, CVar(Me.TXTE_DATE), var_114 & var_168 & var_114)
  loc_191CAD3: unk_58C129.Execute CStr(var_138 & var_1B8 & " AND DEBIT>0 AND PARTY<>'" & CVar(var_B0) & "' " & CVar(var_EC) & " GROUP BY V_DATE,Name"), TXTE_DATE.DispID_41, 
  loc_191CADE: Set var_90 = var_138
  loc_191CB13: If Not(var_90.EOF) Then
  loc_191CB42:   var_D8 = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_191CB4F: End If
  loc_191CB5E: If Not(var_94.EOF) Then
  loc_191CB67:   var_104 = "V_DATE"
  loc_191CB8D:   var_D0 = CDate(var_94.Fields.Item(var_104).Value)
  loc_191CB9A: End If
  loc_191CB9C: var_DC = 0
  loc_191CBA1: var_DE = 0
  loc_191CBA6: var_E0 = 0
  loc_191CBAB: var_E2 = 0
  loc_191CBB0: var_E4 = 0
  loc_191CBB5: var_E6 = 0
  loc_191CBBB: var_BC = vbNullString
  loc_191CBC1: var_C0 = vbNullString
  loc_191CBDB: var_C8 = CDate(Me.TXTS_DATE.Text)
  loc_191CBE4: ' Referenced from: 191E7FF
  loc_191CC02: If Not((var_90.EOF And var_94.EOF)) Then
  loc_191CC14:   If ((var_D0 = var_C8) Or (var_D8 = var_C8)) Then
  loc_191CC22:     var_8C.AddNew var_104, var_114
  loc_191CC2E:     If (var_D0 = var_C8) Then
  loc_191CC50:       var_148 = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_191CC5E:       var_8C.Collect = "V_Type"
  loc_191CC6C:       var_114 = CDate(var_D0)
  loc_191CC7A:       var_8C.Collect = "V_DATE"
  loc_191CC9E:       var_148 = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_191CCAC:       var_8C.Collect = "V_NO"
  loc_191CCD6:       var_148 = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_191CCE4:       var_8C.Collect = "V_SNo"
  loc_191CD5E:       var_26C = Me.Fields
  loc_191CE08:       var_2A8 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_94.Fields.Item("DocID")), 1), vbNullString) + IIf((var_26C.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_191CE0D:       var_B4 = CStr(var_2A8)
  loc_191CEC6:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_191CEF7:       var_248 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_94.Fields.Item("V_ADD"))), vbNullString))
  loc_191CEFC:       var_B4 = CStr(Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)))
  loc_191CF56:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_191CF88:       var_1C8 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(CVar(var_94.Fields.Item("V_Type"))))
  loc_191CF8D:       var_B4 = CStr(CVar(var_94.Fields.Item("V_ADD")))
  loc_191CFB7:       var_114 = vbNullString
  loc_191CFD9:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), var_114, "/"))
  loc_191D016:       var_1D8 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_94.Fields.Item("V_NO")))))
  loc_191D01B:       var_B4 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_191D04A:       If (((var_DC = 0) Or (var_E0 = 0)) Or (var_E4 = 0)) Then
  loc_191D077:         var_148 = CVar(var_94.Fields.Item("Chq_No")) 'Address
  loc_191D0A0:         If (Proc_183_2_E5AE94(Trim(var_148), &HFF, var_148, var_148, var_114, var_148, var_C8) <> vbNullString) Then
  loc_191D0E3:           var_1A8 = (var_E2 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_E6, var_E4))))
  loc_191D0EC:           var_1B8 = (CVar(var_94.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_191D10F:           var_1C8 = CVar(var_94.Fields.Item("ChqDate")) 'Address
  loc_191D11E:           var_1D8 = (var_DE + CVar(Proc_183_2_E5AE94(var_1C8, Str(CVar(var_94.Fields.Item("V_NO"))), var_E0)))
  loc_191D123:           var_BC = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_191D143:         End If
  loc_191D17E:         If (Len(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")))) <> 0) Then
  loc_191D1A9:           var_168 = CVar(Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Name")))) 'String
  loc_191D1B6:           var_8C.Collect = "Name"
  loc_191D200:           var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191D212:           var_8C.Collect = "cr"
  loc_191D225:           var_E4 = &HFF
  loc_191D22A:           var_E0 = &HFF
  loc_191D230:         Else
  loc_191D24F:           Set var_138 = CVar(CLng(2))(1)
  loc_191D28C:           If CBool((var_E0 = 0) And (Trim(CVar(CStr(TXTS_DATE.DispID_41))) = "Yes")) Then
  loc_191D295:             If (var_E4 = 0) Then
  loc_191D2D3:               var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191D2E5:               var_8C.Collect = "cr"
  loc_191D2F6:               var_114 = "As Per Detail"
  loc_191D305:               var_8C.Collect = "Name"
  loc_191D30C:               var_E4 = &HFF
  loc_191D324:               Set var_138 = CVar(CLng(2))(1)
  loc_191D357:               If (Trim(CVar(CStr(TXTS_DATE.DispID_41))) = "Yes") Then
  loc_191D367:                 var_114 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_191D3DB:                 unk_58C129.Execute CStr(var_114 & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value), Str(CVar(var_94.Fields.Item("V_NO"))), -1
  loc_191D3E6:                 Set var_98 = var_26C
  loc_191D408:               End If
  loc_191D40B:             Else
  loc_191D41A:               If Not(var_98.EOF) Then
  loc_191D447:                 var_114 = 0
  loc_191D459:                 If (var_98.Fields.Item("Debit").Value > var_114) Then
  loc_191D4A9:                   Proc_183_4_EAC738(var_1C8, CVar(var_98.Fields.Item("Debit")), var_26C, var_E4, var_114)
  loc_191D4D3:                   var_198 = (1 + CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H16, Space(2), var_178)))
  loc_191D4DC:                   var_1A8 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_191D4F2:                   var_1D8 = CVar(Proc_183_16_EAF86C(CStr(var_1C8), &HC, " " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value)) 'String
  loc_191D4F5:                   var_1F8 = (1 + var_1D8)
  loc_191D4FE:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_191D50C:                   var_8C.Collect = "Name"
  loc_191D53B:                 Else
  loc_191D588:                   Proc_183_4_EAC738(var_1C8, CVar(var_98.Fields.Item("Credit")), vbNullString)
  loc_191D5B2:                   var_198 = (var_E0 + CVar(Proc_183_15_EAD490(CStr(var_98.Fields.Item("Name").Value), &H16, Space(2))))
  loc_191D5BB:                   var_1A8 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_191D5D4:                   var_1F8 = (" " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAF86C(CStr(var_1C8), &HC)))
  loc_191D5DD:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_191D5EB:                   var_8C.Collect = "Name"
  loc_191D617:                 End If
  loc_191D61A:                 var_98.MoveNext
  loc_191D61F:               End If
  loc_191D630:               If (var_98.EOF = &HFF) Then
  loc_191D635:                 var_E0 = &HFF
  loc_191D638:               End If
  loc_191D638:             End If
  loc_191D63B:           Else
  loc_191D676:             var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191D688:             var_8C.Collect = "cr"
  loc_191D6C2:             var_BC = CStr(Trim(Mid(var_BC, &H25, 510)))
  loc_191D6D0:             var_E4 = &HFF
  loc_191D6D5:             var_E0 = &HFF
  loc_191D6D8:           End If
  loc_191D6D8:         End If
  loc_191D6F0:         If (((Len(var_BC) <= 0) And (var_E0 = &HFF)) And (var_E4 = &HFF)) Then
  loc_191D6F5:           var_DC = 0
  loc_191D6FB:           var_94.MoveNext
  loc_191D70F:           If Not(var_94.EOF) Then
  loc_191D73E:             var_D0 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_191D74E:           Else
  loc_191D76A:             var_D0 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_191D774:           End If
  loc_191D774:         End If
  loc_191D777:       Else
  loc_191D7B6:         If (Len(CStr(Trim(Mid(var_BC, &H25, 510)))) <= 0) Then
  loc_191D7BB:           var_DC = 0
  loc_191D7C0:           var_E0 = 0
  loc_191D7C5:           var_E4 = 0
  loc_191D7CB:           var_94.MoveNext
  loc_191D7DF:           If Not(var_94.EOF) Then
  loc_191D80E:             var_D0 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_191D81E:           Else
  loc_191D83A:             var_D0 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_191D844:           End If
  loc_191D844:         End If
  loc_191D844:       End If
  loc_191D844:     End If
  loc_191D84B:     If (var_D8 = var_C8) Then
  loc_191D86D:       var_148 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_191D87B:       var_8C.Collect = "vType"
  loc_191D8A5:       var_148 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_191D8B3:       var_8C.Collect = "VNo"
  loc_191D8C1:       var_114 = CDate(var_D8)
  loc_191D8CF:       var_8C.Collect = "V_DATE"
  loc_191D8F3:       var_148 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_191D901:       var_8C.Collect = "VSno"
  loc_191D97B:       var_26C = Me.Fields
  loc_191DA25:       var_2A8 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((var_26C.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_191DA2A:       var_B8 = CStr(var_2A8)
  loc_191DAE3:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_191DB0C:       var_228 = IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString)
  loc_191DB14:       var_248 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + var_228)
  loc_191DB19:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_191DB73:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_191DBA5:       var_1C8 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_191DBAA:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_191DBD4:       var_114 = vbNullString
  loc_191DBF6:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), var_114, "/"))
  loc_191DC33:       var_1D8 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_191DC38:       var_B8 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_191DC67:       If (((var_DE = 0) Or (var_E2 = 0)) Or (var_E6 = 0)) Then
  loc_191DC94:         var_148 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_191DCBD:         If (Proc_183_2_E5AE94(Trim(var_148), &HFF, var_148, var_114, var_148, var_148, var_D0) <> vbNullString) Then
  loc_191DD00:           var_1A8 = (var_E0 + Trim(CVar(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_D0, var_E4))))
  loc_191DD09:           var_1B8 = (CVar(var_90.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_191DD2C:           var_1C8 = CVar(var_90.Fields.Item("ChqDate")) 'Address
  loc_191DD3B:           var_1D8 = (var_D0 + CVar(Proc_183_2_E5AE94(var_1C8, Str(CVar(var_90.Fields.Item("V_NO"))), var_DC)))
  loc_191DD40:           var_C0 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_191DD60:         End If
  loc_191DD9B:         If (Len(Proc_183_2_E5AE94(CVar(var_90.Fields.Item("Name")))) <> 0) Then
  loc_191DDBD:           var_148 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_191DDCB:           var_8C.Collect = "Name1"
  loc_191DE11:           var_178 = Format(CVar(var_90.Fields.Item("Debit")), "0.00")
  loc_191DE23:           var_8C.Collect = "ADJAMT"
  loc_191DE36:           var_E6 = &HFF
  loc_191DE3B:           var_E2 = &HFF
  loc_191DE41:         Else
  loc_191DE60:           Set var_138 = CVar(CLng(2))(1)
  loc_191DE9D:           If CBool((var_E2 = 0) And (Trim(CVar(CStr(TXTE_DATE.DispID_41))) = "Yes")) Then
  loc_191DEA6:             If (var_E6 = 0) Then
  loc_191DEE4:               var_178 = Format(CVar(var_90.Fields.Item("Debit")), "0.00")
  loc_191DEF6:               var_8C.Collect = "ADJAMT"
  loc_191DF07:               var_114 = "As Per Detail"
  loc_191DF16:               var_8C.Collect = "Name1"
  loc_191DF1D:               var_E6 = &HFF
  loc_191DF35:               Set var_138 = CVar(CLng(2))(1)
  loc_191DF68:               If (Trim(CVar(CStr(TXTE_DATE.DispID_41))) = "Yes") Then
  loc_191DF78:                 var_114 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_191DFEC:                 unk_58C129.Execute CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value), Str(CVar(var_90.Fields.Item("V_NO"))), -1
  loc_191DFF7:                 Set var_9C = var_26C
  loc_191E019:               End If
  loc_191E01C:             Else
  loc_191E02B:               If Not(var_9C.EOF) Then
  loc_191E058:                 var_114 = 0
  loc_191E06A:                 If (var_9C.Fields.Item("Debit").Value > var_114) Then
  loc_191E0BA:                   Proc_183_4_EAC738(var_1C8, CVar(var_9C.Fields.Item("Debit")), var_26C, var_E6, var_114)
  loc_191E0E4:                   var_198 = (1 + CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H16, Space(2), var_178)))
  loc_191E0ED:                   var_1A8 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_191E103:                   var_1D8 = CVar(Proc_183_16_EAF86C(CStr(var_1C8), &HC, " " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)) 'String
  loc_191E106:                   var_1F8 = (1 + var_1D8)
  loc_191E10F:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_191E11D:                   var_8C.Collect = "Name1"
  loc_191E14C:                 Else
  loc_191E199:                   Proc_183_4_EAC738(var_1C8, CVar(var_9C.Fields.Item("Credit")), vbNullString)
  loc_191E1C3:                   var_198 = (var_E2 + CVar(Proc_183_15_EAD490(CStr(var_9C.Fields.Item("Name").Value), &H16, Space(2))))
  loc_191E1CC:                   var_1A8 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_191E1E2:                   var_1D8 = CVar(Proc_183_16_EAF86C(CStr(var_1C8), &HC)) 'String
  loc_191E1E5:                   var_1F8 = (" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value + var_1D8)
  loc_191E1EE:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_191E1FC:                   var_8C.Collect = "Name1"
  loc_191E228:                 End If
  loc_191E22B:                 var_9C.MoveNext
  loc_191E230:               End If
  loc_191E241:               If (var_9C.EOF = &HFF) Then
  loc_191E246:                 var_E2 = &HFF
  loc_191E249:               End If
  loc_191E249:             End If
  loc_191E24C:           Else
  loc_191E275:             var_C0 = CStr(Trim(Mid(var_C0, &H25, 510)))
  loc_191E2A7:             var_114 = "0.00"
  loc_191E2BC:             var_178 = Format(CVar(var_90.Fields.Item("Debit")), var_114)
  loc_191E2CE:             var_8C.Collect = "ADJAMT"
  loc_191E2E1:             var_E6 = &HFF
  loc_191E2E6:             var_E2 = &HFF
  loc_191E2E9:           End If
  loc_191E2E9:         End If
  loc_191E301:         If (((Len(var_C0) <= 0) And (var_E2 = &HFF)) And (var_E6 = &HFF)) Then
  loc_191E306:           var_DE = 0
  loc_191E30C:           var_90.MoveNext
  loc_191E320:           If Not(var_90.EOF) Then
  loc_191E34F:             var_D8 = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_191E35F:           Else
  loc_191E37B:             var_D8 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_191E385:           End If
  loc_191E385:         End If
  loc_191E388:       Else
  loc_191E3C7:         If (Len(CStr(Trim(Mid(var_C0, &H25, 510)))) <= 0) Then
  loc_191E3CC:           var_DE = 0
  loc_191E3D1:           var_E2 = 0
  loc_191E3D6:           var_E6 = 0
  loc_191E3DC:           var_90.MoveNext
  loc_191E3E7:           var_14A = var_90.EOF
  loc_191E3F0:           If Not(var_14A) Then
  loc_191E3F9:             var_104 = "V_DATE"
  loc_191E41F:             var_D8 = CDate(var_90.Fields.Item(var_104).Value)
  loc_191E42F:           Else
  loc_191E44B:             var_D8 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_191E455:           End If
  loc_191E455:         End If
  loc_191E455:       End If
  loc_191E455:     End If
  loc_191E460:     var_8C.Update var_104, var_114
  loc_191E468:   Else
  loc_191E482:     var_158 = var_88.Fields.Item("GroupNature")
  loc_191E48A:     var_148 = var_158.Value
  loc_191E4E8:     If CBool((var_148 = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191E4F6:       Proc_183_7_EB17D4(var_148, var_C8, var_D8, var_D8, var_E6, var_E2)
  loc_191E501:       var_218 = 0
  loc_191E51E:       var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191E525:       var_168 = CVar(CStr("A" & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE<=") 'String
  loc_191E53E:       var_1A8 = var_168 & var_148 & " " & CVar(var_EC) 
  loc_191E555:       unk_58C129.Execute CStr(var_1A8 & vbNullString), var_1C8, -1
  loc_191E55D:       var_138 = var_138.Fields
  loc_191E565:       var_218 = var_158.Item(var_158)
  loc_191E56D:       var_184 = var_184.Value
  loc_191E576:       var_AC = CSng(var_1D8)
  loc_191E59F:     Else
  loc_191E5A2:       var_104 = MemVar_1F950F4
  loc_191E5AA:       Proc_183_7_EB17D4(var_148, var_104, var_AC, var_1D8, var_DE)
  loc_191E5BA:       Proc_183_7_EB17D4(var_1A8, var_C8, var_D8, var_D8)
  loc_191E5C5:       var_258 = 0
  loc_191E5E2:       var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191E5E9:       var_168 = CVar(CStr(" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE>=") 'String
  loc_191E5F3:       var_114 = " AND V_DATE<="
  loc_191E608:       var_1C8 = var_168 & var_148 & var_114 & var_1A8 & " " 
  loc_191E612:       var_1D8 = var_1C8 & CVar(var_EC) 
  loc_191E629:       unk_58C129.Execute CStr(var_1D8 & vbNullString), vbNullString, -1
  loc_191E631:       var_138 = var_138.Fields
  loc_191E639:       var_258 = var_158.Item(var_158)
  loc_191E641:       var_184 = var_184.Value
  loc_191E64A:       var_AC = CSng(var_228)
  loc_191E676:     End If
  loc_191E67D:     If (var_AC <> CDbl(0)) Then
  loc_191E68B:       var_8C.AddNew var_104, var_114
  loc_191E693:       var_114 = CDate(var_C8)
  loc_191E6A1:       var_8C.Collect = "V_DATE"
  loc_191E6AD:       If (var_AC > CDbl(0)) Then
  loc_191E6B0:         var_114 = "CLOSING BALANCE"
  loc_191E6BF:         var_8C.Collect = "Name"
  loc_191E6C8:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191E6D6:         var_8C.Collect = "cr"
  loc_191E6DE:       Else
  loc_191E6DE:         var_114 = "CLOSING BALANCE"
  loc_191E6ED:         var_8C.Collect = "Name1"
  loc_191E6F6:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191E6FB:         var_104 = "ADJAMT"
  loc_191E704:         var_8C.Collect = var_104
  loc_191E709:       End If
  loc_191E714:       var_8C.Update var_104, var_114
  loc_191E719:     End If
  loc_191E720:     If (var_D0 <= var_D8) Then
  loc_191E72C:       If (var_D0 = CDate("12:00:00 AM")) Then
  loc_191E732:         var_C8 = var_D8
  loc_191E738:       Else
  loc_191E73B:         var_C8 = var_D0
  loc_191E73E:       End If
  loc_191E741:     Else
  loc_191E74A:       If (var_D8 = CDate("12:00:00 AM")) Then
  loc_191E750:         var_C8 = var_D0
  loc_191E756:       Else
  loc_191E759:         var_C8 = var_D8
  loc_191E75C:       End If
  loc_191E75C:     End If
  loc_191E763:     If (var_AC <> CDbl(0)) Then
  loc_191E771:       var_8C.AddNew var_104, var_114
  loc_191E779:       var_114 = CDate(var_C8)
  loc_191E787:       var_8C.Collect = "V_DATE"
  loc_191E793:       If (var_AC < CDbl(0)) Then
  loc_191E796:         var_114 = "OPENING BALANCE"
  loc_191E7A5:         var_8C.Collect = "Name"
  loc_191E7AE:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191E7BC:         var_8C.Collect = "cr"
  loc_191E7C4:       Else
  loc_191E7C4:         var_114 = "OPENING BALANCE"
  loc_191E7D3:         var_8C.Collect = "Name1"
  loc_191E7DC:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191E7E1:         var_104 = "ADJAMT"
  loc_191E7EA:         var_8C.Collect = var_104
  loc_191E7EF:       End If
  loc_191E7FA:       var_8C.Update var_104, var_114
  loc_191E7FF:     End If
  loc_191E7FF:   End If
  loc_191E7FF:   GoTo loc_191CBE4
  loc_191E802: End If
  loc_191E81C: var_158 = var_88.Fields.Item("GroupNature")
  loc_191E824: var_148 = var_158.Value
  loc_191E82C: var_114 = "A"
  loc_191E882: If CBool((var_148 = var_114) Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191E890:   Proc_183_7_EB17D4(var_148, var_C8, var_114, var_114, var_114, var_114)
  loc_191E89B:   var_218 = 0
  loc_191E8B8:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191E8BF:   var_168 = CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE<=") 'String
  loc_191E8C9:   var_114 = " "
  loc_191E8D8:   var_1A8 = var_168 & var_148 & var_114 & CVar(var_EC) 
  loc_191E8EF:   unk_58C129.Execute CStr(var_1A8 & vbNullString), var_1C8, -1
  loc_191E8F7:   var_138 = var_138.Fields
  loc_191E8FF:   var_218 = var_158.Item(var_158)
  loc_191E907:   var_184 = var_184.Value
  loc_191E910:   var_AC = CSng(var_1D8)
  loc_191E939: Else
  loc_191E93C:   var_104 = MemVar_1F950F4
  loc_191E944:   Proc_183_7_EB17D4(var_148, var_104, var_AC, var_1D8, var_114)
  loc_191E954:   Proc_183_7_EB17D4(var_1A8, var_C8, var_C8, var_C8)
  loc_191E95F:   var_258 = 0
  loc_191E97C:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191E983:   var_168 = CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE>=") 'String
  loc_191E989:   var_178 = var_168 & var_148 
  loc_191E98D:   var_114 = " AND V_DATE<="
  loc_191E992:   var_198 = var_178 & var_114 
  loc_191E9C3:   unk_58C129.Execute CStr(var_198 & var_1A8 & " " & CVar(var_EC) & vbNullString), vbNullString, -1
  loc_191E9CB:   var_138 = var_138.Fields
  loc_191E9D3:   var_258 = var_158.Item(var_158)
  loc_191E9DB:   var_184 = var_184.Value
  loc_191E9E4:   var_AC = CSng(var_228)
  loc_191EA10: End If
  loc_191EA17: If (var_AC <> CDbl(0)) Then
  loc_191EA25:   var_8C.AddNew var_104, var_114
  loc_191EA2D:   var_114 = CDate(var_C8)
  loc_191EA3B:   var_8C.Collect = "V_DATE"
  loc_191EA47:   If (var_AC > CDbl(0)) Then
  loc_191EA4A:     var_114 = "CLOSING BALANCE"
  loc_191EA59:     var_8C.Collect = "Name"
  loc_191EA62:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191EA70:     var_8C.Collect = "cr"
  loc_191EA78:   Else
  loc_191EA78:     var_114 = "CLOSING BALANCE"
  loc_191EA87:     var_8C.Collect = "Name1"
  loc_191EA90:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191EA95:     var_104 = "ADJAMT"
  loc_191EA9E:     var_8C.Collect = var_104
  loc_191EAA3:   End If
  loc_191EAAE:   var_8C.Update var_104, var_114
  loc_191EAB3: End If
  loc_191EAC7: If (var_8C.RecordCount > 0) Then
  loc_191EACD:   var_8C.MoveFirst
  loc_191EAD2: End If
  loc_191EAE6: If (var_8C.RecordCount <= 0) Then
  loc_191EAEF:   Call 0.Method_arg_50 (CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value), var_114, var_114, var_114, var_114, var_114)
  loc_191EB10:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)), var_178, var_198)
  loc_191EB25:   global_130 = 0
  loc_191EB28:   Exit Sub
  loc_191EB29: End If
  loc_191EB2C: var_2AA = arg_C
  loc_191EB35: If (var_2AA = 1) Then
  loc_191EB59:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, "Paper Setting", var_178, var_198)
  loc_191EB7E:   Set var_138 = CVar(CLng(3))(1)
  loc_191EBAA:   Set var_184 = var_8C
  loc_191EBC3:   Call 0.Method_arg_1E4 (Me, var_184, CLng(Val(CStr(TXTE_DATE.DispID_41))), var_14A, Val(CStr(TXTE_DATE.DispID_41)), var_2AA)
  loc_191EBCE:   Set var_8C = var_184
  loc_191EBD4:   var_DA = var_14A
  loc_191EBEB:   global_130 = 0
  loc_191EBEE:   GoTo loc_191ED69
  loc_191EBF4: Else
  loc_191EBFD:   var_150 = MemVar_1F953B4 & "\FaRozNamch.ttx"
  loc_191EC0A:   Set var_138 = var_8C 
  loc_191EC16:   var_14A = CreateFieldDefFile(var_138, var_150, &HFF, global_130, var_DA, global_130)
  loc_191EC20:   Set var_8C = var_138
  loc_191EC29:   var_2C4 = CVar(var_14A) 'Variant
  loc_191EC4C:   var_138 = Me.Fields
  loc_191EC64:   var_114 = "No"
  loc_191EC74:   var_124 = "LedSiteCode"
  loc_191ECE0:   var_1D8 = (var_138.Item("LedDivCode").Value = var_114) And (Me.Fields.Item(var_124).Value = "No") And (Me.Fields.Item("LedPrefix").Value = "No")
  loc_191ECFE:   If CBool(var_1D8) Then
  loc_191ED0D:     Call 0.Method_arg_EC (var_138, var_14A, var_AC, var_228)
  loc_191ED18:     MemVar_1F951E8 = var_138
  loc_191ED22:   Else
  loc_191ED2E:     Call 0.Method_arg_E8 (var_138, var_C8)
  loc_191ED39:     MemVar_1F951E8 = var_138
  loc_191ED40:   End If
  loc_191ED59:   Call 0.Method_arg_64 (var_138, CVar(var_8C), var_114)
  loc_191ED61:   Call 0.Method_arg_2C (var_124, var_C8)
  loc_191ED69: End If
  loc_191ED69: ' Referenced from: 191EBEE
  loc_191ED6E: Set var_88 = Nothing
  loc_191ED76: Set var_90 = Nothing
  loc_191ED7E: Set var_94 = Nothing
  loc_191ED86: Set var_98 = Nothing
  loc_191ED8E: Set var_9C = Nothing
  loc_191ED96: Set var_8C = Nothing
  loc_191ED99: Exit Sub
  loc_191ED9A: ' Referenced from: 191C2A0
  loc_191EDA8: Call 0.Method_arg_50 (var_150, 0)
  loc_191EDBD: Proc_183_57_104B0BC(var_150, "RozNamcha")
  loc_191EDC9: Exit Sub
End Sub

Public Sub Proc_245_85_196E2B0
  'Data Table: 58C0E4
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_BC As Recordset15
  Dim var_10C As Fields15
  Dim var_11C As Variant
  Dim var_E8 As Variant
  Dim var_B8 As Recordset15
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_16C As Recordset15
  Dim var_144 As Variant
  Dim var_C4 As Double
  Dim var_154 As Variant
  Dim var_1A4 As Variant
  Dim var_21C As Variant
  Dim unk_58C129 As Connection15
  Dim var_C8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_244 As Recordset15
  loc_196B570: On Error Goto loc_196E27D
  loc_196B588: Set var_10C = CVar(CLng(0))(0)
  loc_196B5AC: Call Proc_245_64_F51BE4(CInt(0), CStr(var_11C))
  loc_196B5C0: If (var_126 = 0) Then
  loc_196B5C8:   global_130 = 0
  loc_196B5CB:   Exit Sub
  loc_196B5CC: End If
  loc_196B5D3: var_124 = var_8C & " Where Convert(Varchar(11),FromDate,103) +'-'+ Convert(Varchar(11),ToDate,103) in ('"
  loc_196B5EB: Set var_10C = CVar(CLng(0))(2)
  loc_196B626: Call Proc_245_87_11610C0(New, var_10C, global_130)
  loc_196B62E: Set var_B8 = var_10C
  loc_196B638: var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) " & var_124 & CStr(TXTE_DATE.DispID_41) & "') "
  loc_196B65B: Me.Connection15.Execute var_124 & " Order By B.BudgetCrAmt,B.BudgetDrAmt", var_11C, -1
  loc_196B666: Set var_BC = var_10C
  loc_196B6C5: var_AC = CStr(Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("FromDate"))), "DD/MM/YYYY"))
  loc_196B72C: var_B0 = CStr(Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("ToDate"))), "DD/MM/YYYY"))
  loc_196B751: If (var_BC.RecordCount > 0) Then
  loc_196B754:   ' Referenced from: 196E10B
  loc_196B763:   If Not(var_BC.EOF) Then
  loc_196B76C:     var_D8 = "BudgetCRAmt"
  loc_196B790:     var_E8 = 0
  loc_196B7A2:     If (var_BC.Fields.Item(var_D8).Value > var_E8) Then
  loc_196B7A8:       Set var_16C = var_B8 
  loc_196B7B7:       var_B8.AddNew var_D8, var_E8
  loc_196B81B:       var_F8 = "-"
  loc_196B820:       var_164 = (Format(CVar(var_BC.Fields.Item("FromDate")), "DD/MM/YYYY") + 2)
  loc_196B83C:       var_184 = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196B84B:       var_1C4 = (1 + Format(var_184, "DD/MM/YYYY"))
  loc_196B859:       var_16C.Collect = "BudgetPeriod"
  loc_196B897:       var_11C = CVar(var_BC.Fields.Item("FromDate")) 'Address
  loc_196B8A5:       var_16C.Collect = "FromDate"
  loc_196B8CF:       var_11C = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196B8DD:       var_16C.Collect = "ToDate"
  loc_196B910:       var_124 = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), var_1C4, 1, Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("ToDate"))), "DD/MM/YYYY"), 1)
  loc_196B921:       If (var_124 <> vbNullString) Then
  loc_196B943:         var_11C = CVar(var_BC.Fields.Item("AcCode")) 'Address
  loc_196B951:         var_16C.Collect = "AcCode"
  loc_196B984:         var_144 = CVar(Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcName")), CVar(var_BC.Fields.Item("AcName")), 1, 1)) 'String
  loc_196B991:         var_16C.Collect = "AcName"
  loc_196B9A3:       Else
  loc_196B9DC:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_144, 1) <> vbNullString) Then
  loc_196B9FE:           var_11C = CVar(var_BC.Fields.Item("AcGroupCode")) 'Address
  loc_196BA0C:           var_16C.Collect = "AcGroupCode"
  loc_196BA3F:           var_144 = CVar(Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupName")), CVar(var_BC.Fields.Item("AcGroupName")), 1)) 'String
  loc_196BA4C:           var_16C.Collect = "AcGroupName"
  loc_196BA5B:         End If
  loc_196BA5B:       End If
  loc_196BA7A:       var_11C = CVar(var_BC.Fields.Item("BudgetCRAmt")) 'Address
  loc_196BA88:       var_16C.Collect = "BudgetedAmt"
  loc_196BAA2:       var_16C.Collect = "BudgetCrDr"
  loc_196BAE6:       If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), CDbl(0), "Cr", CVar(var_BC.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196BAF6:         var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196BB0D:         var_10C = var_BC.Fields
  loc_196BB25:         var_144 = "Cr" & var_10C.Item("AcCode").Value 
  loc_196BB58:         Proc_183_7_EB17D4(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_23C, -1)
  loc_196BB93:         Proc_183_7_EB17D4(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196BBB2:         unk_58C129.Execute CStr(var_144 & var_1EC & "'"), 1, var_10C
  loc_196BBBD:         Set var_C8 = var_240
  loc_196BBFF:         If (var_C8.RecordCount > 0) Then
  loc_196BC21:           var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196BC28:           Proc_183_3_E7DD58(var_144)
  loc_196BC31:           var_C4 = CSng(var_144)
  loc_196BC3E:         End If
  loc_196BC41:       Else
  loc_196BC7A:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196BC8A:           var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196BCB1:           var_11C = var_BC.Fields.Item("AcGroupCode").Value
  loc_196BCB9:           var_144 = "Cr" & var_11C 
  loc_196BCEC:           Proc_183_7_EB17D4(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_23C)
  loc_196BCF4:           var_1A4 = -1 & var_184 
  loc_196BD27:           Proc_183_7_EB17D4(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196BD38:           var_21C = var_240 & var_1EC & vbNullString 
  loc_196BD46:           unk_58C129.Execute CStr(var_21C), var_11C, 
  loc_196BD51:           Set var_C8 = var_240
  loc_196BD93:           If (var_C8.RecordCount > 0) Then
  loc_196BDB5:             var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196BDBC:             Proc_183_3_E7DD58(var_144)
  loc_196BDC5:             var_C4 = CSng(var_144)
  loc_196BDD2:           End If
  loc_196BDD2:         End If
  loc_196BDD2:       End If
  loc_196BDD6:       var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196BDE4:       var_16C.Collect = "ActualAmt"
  loc_196BE25:       If (var_16C.Fields.Item("ActualAmt").Value > 0) Then
  loc_196BE4C:         var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_196BE5E:         var_16C.Collect = "ActualCrDr"
  loc_196BEC2:         var_154 = (var_16C.Fields.Item("ActualAmt").Value - var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196BED0:         var_16C.Collect = "Varience"
  loc_196BF3B:         var_154 = (var_16C.Fields.Item("ActualAmt").Value - var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196BF69:         var_184 = (var_154 / var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196BF72:         var_1A4 = (var_184 * 100)
  loc_196BF80:         var_16C.Collect = "VariencePer"
  loc_196BF9D:       End If
  loc_196BFAC:       var_16C.Collect = "GroupType"
  loc_196BFEA:       If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), "CrGroup", var_1A4, var_154) <> vbNullString) Then
  loc_196BFF4:         var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196BFFB:         var_12C = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), "CrGroup", var_1A4, var_154) & "-"
  loc_196C036:         var_154 = CVar(CStr(TXTE_DATE.DispID_41) & var_B0 & "') And B.AcCode='") & var_BC.Fields.Item("AcCode").Value 
  loc_196C03A:         var_E8 = "' Order By B.BudgetCrAmt"
  loc_196C044:         var_88 = CStr(var_154 & var_E8)
  loc_196C065:       Else
  loc_196C09E:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) <> vbNullString) Then
  loc_196C0A8:           var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196C0AF:           var_12C = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) & "-"
  loc_196C0D2:           var_10C = var_BC.Fields
  loc_196C0E2:           var_11C = var_10C.Item("AcGroupCode").Value
  loc_196C0F8:           var_88 = CStr(CVar(CStr(TXTE_DATE.DispID_41) & var_B0 & "') And B.AcGroupCode='") & var_11C & "' Order By B.BudgetCrAmt")
  loc_196C116:         End If
  loc_196C116:       End If
  loc_196C12C:       unk_58C129.Execute var_88, var_11C, -1
  loc_196C137:       Set var_B4 = var_10C
  loc_196C154:       If (var_B4.RecordCount > 0) Then
  loc_196C193:         If (var_B4.Fields.Item("BudgetCRAmt").Value > 0) Then
  loc_196C1B5:           var_11C = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_196C1C3:           var_16C.Collect = "PreBudgetedAmt"
  loc_196C1DD:           var_16C.Collect = "PreBudgetCrDr"
  loc_196C1E5:           var_C4 = CDbl(0)
  loc_196C221:           If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Cr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196C231:             var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196C248:             var_10C = var_B4.Fields
  loc_196C258:             var_11C = var_10C.Item("AcCode").Value
  loc_196C260:             var_144 = "Cr" & var_11C 
  loc_196C293:             Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_196C2CE:             Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196C2E4:             unk_58C129.Execute CStr(var_10C & var_1EC), var_C4, var_11C
  loc_196C2EF:             Set var_C8 = var_240
  loc_196C32F:             If (var_C8.RecordCount > 0) Then
  loc_196C351:               var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196C358:               Proc_183_3_E7DD58(var_144)
  loc_196C361:               var_C4 = CSng(var_144)
  loc_196C36E:             End If
  loc_196C371:           Else
  loc_196C3AA:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196C3BA:               var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196C3E1:               var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196C3E9:               var_144 = "Cr" & var_11C 
  loc_196C41C:               Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196C424:               var_1A4 = -1 & var_184 
  loc_196C457:               Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196C46D:               unk_58C129.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196C478:               Set var_C8 = var_240
  loc_196C4B8:               If (var_C8.RecordCount > 0) Then
  loc_196C4DA:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196C4E1:                 Proc_183_3_E7DD58(var_144)
  loc_196C4EA:                 var_C4 = CSng(var_144)
  loc_196C4F7:               End If
  loc_196C4F7:             End If
  loc_196C4F7:           End If
  loc_196C4FB:           var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196C509:           var_16C.Collect = "PreActualAmt"
  loc_196C54A:           If (var_16C.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196C571:             var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_196C583:             var_16C.Collect = "PreActualCrDr"
  loc_196C5E7:             var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196C5F5:             var_16C.Collect = "PreVarience"
  loc_196C660:             var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196C68E:             var_184 = (var_154 / var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196C697:             var_1A4 = (var_184 * 100)
  loc_196C6A5:             var_16C.Collect = "PreVariencePer"
  loc_196C6C2:           End If
  loc_196C6C5:         Else
  loc_196C701:           If (var_B4.Fields.Item("BudgetDrAmt").Value > 0) Then
  loc_196C723:             var_11C = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_196C731:             var_16C.Collect = "PreBudgetedAmt"
  loc_196C74B:             var_16C.Collect = "PreBudgetCrDr"
  loc_196C753:             var_C4 = CDbl(0)
  loc_196C78F:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_B4.Fields.Item("AcCode")), var_1A4) <> vbNullString) Then
  loc_196C79F:               var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196C7C6:               var_11C = var_B4.Fields.Item("AcCode").Value
  loc_196C7CE:               var_144 = "Dr" & var_11C 
  loc_196C7D7:               var_154 = var_144 & "' And L.V_Date Between " 
  loc_196C801:               Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_154, var_21C, -1, var_240)
  loc_196C83C:               Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_154 & var_184 & " And ", var_154)
  loc_196C852:               unk_58C129.Execute CStr("Dr" & var_1EC), var_C4, var_11C
  loc_196C85D:               Set var_C8 = var_240
  loc_196C89D:               If (var_C8.RecordCount > 0) Then
  loc_196C8BF:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196C8C6:                 Proc_183_3_E7DD58(var_144)
  loc_196C8CF:                 var_C4 = CSng(var_144)
  loc_196C8DC:               End If
  loc_196C8DF:             Else
  loc_196C918:               If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196C928:                 var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196C94F:                 var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196C957:                 var_144 = "Dr" & var_11C 
  loc_196C98A:                 Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196C992:                 var_1A4 = -1 & var_184 
  loc_196C9C5:                 Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_144 & "') And L.V_Date Between " & var_184 & " And ")
  loc_196C9DB:                 unk_58C129.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196C9E6:                 Set var_C8 = var_240
  loc_196CA26:                 If (var_C8.RecordCount > 0) Then
  loc_196CA48:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196CA4F:                   Proc_183_3_E7DD58(var_144)
  loc_196CA58:                   var_C4 = CSng(var_144)
  loc_196CA65:                 End If
  loc_196CA65:               End If
  loc_196CA65:             End If
  loc_196CA69:             var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196CA77:             var_16C.Collect = "PreActualAmt"
  loc_196CAB8:             If (var_16C.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196CADF:               var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_196CAF1:               var_16C.Collect = "PreActualCrDr"
  loc_196CB55:               var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196CB63:               var_16C.Collect = "PreVarience"
  loc_196CBCE:               var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196CC05:               var_1A4 = ((var_154 / var_16C.Fields.Item("PreBudgetedAmt").Value) * 100)
  loc_196CC13:               var_16C.Collect = "PreVariencePer"
  loc_196CC30:             End If
  loc_196CC30:           End If
  loc_196CC30:         End If
  loc_196CC30:       End If
  loc_196CC32:       Set var_16C = Nothing 
  loc_196CC39:     Else
  loc_196CC3F:       var_D8 = "BudgetDrAmt"
  loc_196CC63:       var_E8 = 0
  loc_196CC75:       If (var_BC.Fields.Item(var_D8).Value > var_E8) Then
  loc_196CC7B:         Set var_244 = var_B8 
  loc_196CC8A:         var_B8.AddNew var_D8, var_E8
  loc_196CCE6:         var_154 = Format(CVar(var_BC.Fields.Item("FromDate")), "DD/MM/YYYY")
  loc_196CCEE:         var_F8 = "-"
  loc_196CCF3:         var_164 = (var_154 + "PreBudgetedAmt")
  loc_196CD06:         var_1A4 = "DD/MM/YYYY"
  loc_196CD0F:         var_184 = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196CD1E:         var_1C4 = (1 + Format(var_184, var_1A4))
  loc_196CD2C:         var_244.Collect = "BudgetPeriod"
  loc_196CD6A:         var_11C = CVar(var_BC.Fields.Item("FromDate")) 'Address
  loc_196CD78:         var_244.Collect = "FromDate"
  loc_196CDA2:         var_11C = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196CDB0:         var_244.Collect = "ToDate"
  loc_196CDE3:         var_124 = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("ToDate")), 1, var_16C.Fields.Item("PreBudgetedAmt").Value, 1)
  loc_196CDF4:         If (var_124 <> vbNullString) Then
  loc_196CE16:           var_11C = CVar(var_BC.Fields.Item("AcCode")) 'Address
  loc_196CE24:           var_244.Collect = "AcCode"
  loc_196CE57:           var_144 = CVar(Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcName")), CVar(var_BC.Fields.Item("AcName")), 1, var_1A4)) 'String
  loc_196CE64:           var_244.Collect = "AcName"
  loc_196CE76:         Else
  loc_196CEAF:           If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_144, var_154) <> vbNullString) Then
  loc_196CED1:             var_11C = CVar(var_BC.Fields.Item("AcGroupCode")) 'Address
  loc_196CEDF:             var_244.Collect = "AcGroupCode"
  loc_196CF12:             var_144 = CVar(Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupName")), CVar(var_BC.Fields.Item("AcGroupName")), var_154)) 'String
  loc_196CF1F:             var_244.Collect = "AcGroupName"
  loc_196CF2E:           End If
  loc_196CF2E:         End If
  loc_196CF4D:         var_11C = CVar(var_BC.Fields.Item("BudgetDrAmt")) 'Address
  loc_196CF5B:         var_244.Collect = "BudgetedAmt"
  loc_196CF75:         var_244.Collect = "BudgetCrDr"
  loc_196CF7D:         var_C4 = CDbl(0)
  loc_196CFB9:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_BC.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196CFC9:           var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196CFF8:           var_144 = "Dr" & var_BC.Fields.Item("AcCode").Value 
  loc_196D02B:           Proc_183_7_EB17D4(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_196D066:           Proc_183_7_EB17D4(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196D07C:           unk_58C129.Execute CStr(var_144 & var_1EC), "Dr", var_C4
  loc_196D087:           Set var_C8 = var_240
  loc_196D0C7:           If (var_C8.RecordCount > 0) Then
  loc_196D0E9:             var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196D0F0:             Proc_183_3_E7DD58(var_144)
  loc_196D0F9:             var_C4 = CSng(var_144)
  loc_196D106:           End If
  loc_196D109:         Else
  loc_196D142:           If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196D152:             var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196D179:             var_11C = var_BC.Fields.Item("AcGroupCode").Value
  loc_196D181:             var_144 = "Dr" & var_11C 
  loc_196D1B4:             Proc_183_7_EB17D4(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196D1BC:             var_1A4 = -1 & var_184 
  loc_196D1EF:             Proc_183_7_EB17D4(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196D205:             unk_58C129.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196D210:             Set var_C8 = var_240
  loc_196D250:             If (var_C8.RecordCount > 0) Then
  loc_196D272:               var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196D279:               Proc_183_3_E7DD58(var_144)
  loc_196D282:               var_C4 = CSng(var_144)
  loc_196D28F:             End If
  loc_196D28F:           End If
  loc_196D28F:         End If
  loc_196D293:         var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196D2A1:         var_244.Collect = "ActualAmt"
  loc_196D2E2:         If (var_244.Fields.Item("ActualAmt").Value > 0) Then
  loc_196D309:           var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_196D31B:           var_244.Collect = "ActualCrDr"
  loc_196D37F:           var_154 = (var_244.Fields.Item("ActualAmt").Value - var_244.Fields.Item("BudgetedAmt").Value)
  loc_196D38D:           var_244.Collect = "Varience"
  loc_196D3F8:           var_154 = (var_244.Fields.Item("ActualAmt").Value - var_244.Fields.Item("BudgetedAmt").Value)
  loc_196D426:           var_184 = (var_154 / var_244.Fields.Item("BudgetedAmt").Value)
  loc_196D42F:           var_1A4 = (var_184 * 100)
  loc_196D43D:           var_244.Collect = "VariencePer"
  loc_196D45A:         End If
  loc_196D469:         var_244.Collect = "GroupType"
  loc_196D4A7:         If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), "DrGroup", var_1A4, var_154) <> vbNullString) Then
  loc_196D4B1:           var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196D4B8:           var_12C = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcCode")), "DrGroup", var_1A4, var_154) & "-"
  loc_196D4F3:           var_154 = CVar(CStr(TXTE_DATE.DispID_41) & var_B0 & "') And B.AcCode='") & var_BC.Fields.Item("AcCode").Value 
  loc_196D4F7:           var_E8 = "'"
  loc_196D501:           var_88 = CStr(var_154 & var_E8)
  loc_196D522:         Else
  loc_196D55B:           If (Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) <> vbNullString) Then
  loc_196D565:             var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196D56C:             var_12C = Proc_183_2_E5AE94(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) & "-"
  loc_196D58F:             var_10C = var_BC.Fields
  loc_196D59F:             var_11C = var_10C.Item("AcGroupCode").Value
  loc_196D5B5:             var_88 = CStr(CVar(CStr(TXTE_DATE.DispID_41) & var_B0 & "') And B.AcGroupCode='") & var_11C & "'")
  loc_196D5D3:           End If
  loc_196D5D3:         End If
  loc_196D5E9:         unk_58C129.Execute var_88, var_11C, -1
  loc_196D5F4:         Set var_B4 = var_10C
  loc_196D611:         If (var_B4.RecordCount > 0) Then
  loc_196D650:           If (var_B4.Fields.Item("BudgetDrAmt").Value > 0) Then
  loc_196D672:             var_11C = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_196D680:             var_244.Collect = "PreBudgetedAmt"
  loc_196D69A:             var_244.Collect = "PreBudgetCrDr"
  loc_196D6A2:             var_C4 = CDbl(0)
  loc_196D6DE:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196D6EE:               var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196D705:               var_10C = var_B4.Fields
  loc_196D715:               var_11C = var_10C.Item("AcCode").Value
  loc_196D71D:               var_144 = "Dr" & var_11C 
  loc_196D750:               Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_196D78B:               Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196D7A1:               unk_58C129.Execute CStr(var_10C & var_1EC), var_C4, var_11C
  loc_196D7AC:               Set var_C8 = var_240
  loc_196D7EC:               If (var_C8.RecordCount > 0) Then
  loc_196D80E:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196D815:                 Proc_183_3_E7DD58(var_144)
  loc_196D81E:                 var_C4 = CSng(var_144)
  loc_196D82B:               End If
  loc_196D82E:             Else
  loc_196D867:               If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196D877:                 var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196D89E:                 var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196D8A6:                 var_144 = "Dr" & var_11C 
  loc_196D8D9:                 Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196D8E1:                 var_1A4 = -1 & var_184 
  loc_196D914:                 Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196D92A:                 unk_58C129.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196D935:                 Set var_C8 = var_240
  loc_196D975:                 If (var_C8.RecordCount > 0) Then
  loc_196D997:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196D99E:                   Proc_183_3_E7DD58(var_144)
  loc_196D9A7:                   var_C4 = CSng(var_144)
  loc_196D9B4:                 End If
  loc_196D9B4:               End If
  loc_196D9B4:             End If
  loc_196D9B8:             var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196D9C6:             var_244.Collect = "PreActualAmt"
  loc_196DA07:             If (var_244.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196DA2E:               var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_196DA40:               var_244.Collect = "PreActualCrDr"
  loc_196DAA4:               var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_196DAB2:               var_244.Collect = "PreVarience"
  loc_196DB1D:               var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_196DB4B:               var_184 = (var_154 / var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_196DB54:               var_1A4 = (var_184 * 100)
  loc_196DB62:               var_244.Collect = "PreVariencePer"
  loc_196DB7F:             End If
  loc_196DB82:           Else
  loc_196DBBE:             If (var_B4.Fields.Item("BudgetCRAmt").Value > 0) Then
  loc_196DBE0:               var_11C = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_196DBEE:               var_244.Collect = "PreBudgetedAmt"
  loc_196DC08:               var_244.Collect = "PreBudgetCrDr"
  loc_196DC10:               var_C4 = CDbl(0)
  loc_196DC3B:               var_124 = Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Cr", CVar(var_B4.Fields.Item("AcCode")), var_1A4)
  loc_196DC4C:               If (var_124 <> vbNullString) Then
  loc_196DC5C:                 var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196DC83:                 var_11C = var_B4.Fields.Item("AcCode").Value
  loc_196DC8B:                 var_144 = "Cr" & var_11C 
  loc_196DC94:                 var_154 = var_144 & "' And L.V_Date Between " 
  loc_196DCBE:                 Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_154, var_21C, -1, var_240)
  loc_196DCF9:                 Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_154 & var_184 & " And ", var_154)
  loc_196DD0F:                 unk_58C129.Execute CStr("Cr" & var_1EC), var_C4, var_11C
  loc_196DD1A:                 Set var_C8 = var_240
  loc_196DD5A:                 If (var_C8.RecordCount > 0) Then
  loc_196DD7C:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196DD83:                   Proc_183_3_E7DD58(var_144)
  loc_196DD8C:                   var_C4 = CSng(var_144)
  loc_196DD99:                 End If
  loc_196DD9C:               Else
  loc_196DDD5:                 If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196DDE5:                   var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196DE0C:                   var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196DE14:                   var_144 = "Cr" & var_11C 
  loc_196DE47:                   Proc_183_7_EB17D4(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196DE4F:                   var_1A4 = -1 & var_184 
  loc_196DE82:                   Proc_183_7_EB17D4(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_144 & "') And L.V_Date Between " & var_184 & " And ")
  loc_196DE8E:                   var_124 = CStr(var_240 & var_1EC)
  loc_196DE98:                   unk_58C129.Execute var_124, var_11C, 
  loc_196DEA3:                   Set var_C8 = var_240
  loc_196DEE3:                   If (var_C8.RecordCount > 0) Then
  loc_196DF05:                     var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196DF0C:                     Proc_183_3_E7DD58(var_144)
  loc_196DF15:                     var_C4 = CSng(var_144)
  loc_196DF22:                   End If
  loc_196DF22:                 End If
  loc_196DF22:               End If
  loc_196DF26:               var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196DF34:               var_244.Collect = "PreActualAmt"
  loc_196DF75:               If (var_244.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196DF9C:                 var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_196DFAE:                 var_244.Collect = "PreActualCrDr"
  loc_196E012:                 var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_196E020:                 var_244.Collect = "PreVarience"
  loc_196E03D:                 var_D8 = "PreActualAmt"
  loc_196E067:                 var_E8 = "PreBudgetedAmt"
  loc_196E08B:                 var_154 = (var_244.Fields.Item(var_D8).Value - var_244.Fields.Item(var_E8).Value)
  loc_196E095:                 var_F8 = "PreBudgetedAmt"
  loc_196E0B1:                 var_164 = var_244.Fields.Item(var_F8).Value
  loc_196E0C2:                 var_1A4 = ((var_154 / var_164) * 100)
  loc_196E0D0:                 var_244.Collect = "PreVariencePer"
  loc_196E0ED:               End If
  loc_196E0ED:             End If
  loc_196E0ED:           End If
  loc_196E0ED:         End If
  loc_196E0EF:         Set var_244 = Nothing 
  loc_196E0F3:       End If
  loc_196E0F3:     End If
  loc_196E0F6:     var_BC.MoveNext
  loc_196E106:     var_B8.Update var_D8, var_E8
  loc_196E10B:     GoTo loc_196B754
  loc_196E10E:   End If
  loc_196E10E: End If
  loc_196E122: If (var_B8.RecordCount <= 0) Then
  loc_196E12B:   Call 0.Method_arg_50 (var_124, var_1A4, var_154, var_154)
  loc_196E141:   var_D8 = "** No Records Found to Print **"
  loc_196E14C:   MsgBox(var_D8, &H40, CVar(var_124), var_154, var_164)
  loc_196E161:   global_130 = 0
  loc_196E164:   Exit Sub
  loc_196E165: End If
  loc_196E16B: global_124 = "FABudgetVarience"
  loc_196E175: Call 0.Method_arg_50 (var_124, global_130, var_E8)
  loc_196E192: global_120 = CStr(Ucase(CVar(var_124)))
  loc_196E1A9: If (global_130 = 0) Then
  loc_196E1AC:   Exit Sub
  loc_196E1AD: End If
  loc_196E1D4: Set var_10C = var_B8 
  loc_196E1DB: CreateFieldDefFile(var_10C, MemVar_1F953B4 & "\" & global_124 & ".ttx", &HFF)
  loc_196E206: var_124 = MemVar_1F953B4 & "\"
  loc_196E220: Call 0.Method_arg_1C (var_124 & global_124 & ".RPT", var_D8, var_10C)
  loc_196E22B: MemVar_1F951E8 = var_10C
  loc_196E254: Call 0.Method_arg_64 (var_10C, CVar(var_10C), var_E8)
  loc_196E25C: Call 0.Method_arg_2C (var_F8, var_C4)
  loc_196E269: Set var_B4 = Nothing
  loc_196E271: Set var_B8 = Nothing
  loc_196E279: Set var_BC = Nothing
  loc_196E27C: Exit Sub
  loc_196E27D: ' Referenced from: 196B570
  loc_196E28B: Call 0.Method_arg_50 (var_124, 0)
  loc_196E2A0: Proc_183_57_104B0BC(var_124, "FaBudgetVariance")
  loc_196E2AC: Exit Sub
End Sub

Public Sub Proc_245_86_17DCEF0
  'Data Table: 58C0E4
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_120 As Variant
  Dim var_118 As String
  Dim unk_58C129 As Connection15
  Dim var_B4 As Recordset15
  Dim var_100 As Variant
  Dim var_DC As Variant
  Dim var_9E As Integer
  Dim var_AA As Integer
  Dim var_B0 As Recordset15
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_178 As Variant
  Dim var_1B8 As Variant
  Dim var_140 As Recordset15
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_198 As Variant
  Dim var_1F0 As Variant
  Dim var_B8 As Recordset15
  Dim var_A8 As Double
  Dim var_230 As Variant
  Dim var_2BC As Recordset15
  loc_17DADC8: On Error Goto loc_17DCEC0
  loc_17DADE0: Set var_100 = CVar(CLng(0))(0)
  loc_17DAE04: Call Proc_245_64_F51BE4(CInt(0), CStr(var_110))
  loc_17DAE18: If (var_11A = 0) Then
  loc_17DAE20:   global_130 = 0
  loc_17DAE23:   Exit Sub
  loc_17DAE24: End If
  loc_17DAE30: Set var_100 = Me.Check1
  loc_17DAE36: Call 0.Method_Proc_245_86_17DCEF00 (1, var_120, var_112)
  loc_17DAE3E: global_130 = var_120.Value
  loc_17DAE54: If (CLng(var_112) = 0) Then
  loc_17DAE5E:   var_118 = var_8C & " Where CStr(FromDate) +'-'+ CStr(ToDate) in ('"
  loc_17DAE76:   Set var_100 = CVar(CLng(0))(2)
  loc_17DAE92:   var_8C = var_118 & CStr(Check1.DispID_41) & "') "
  loc_17DAEA4: End If
  loc_17DAEB1: Call Proc_245_88_1273210(New, var_100)
  loc_17DAEB9: Set var_B0 = var_100
  loc_17DAED0: var_118 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) " & var_8C
  loc_17DAEE0: unk_58C129.Execute var_118 & " Order By B.BudgetDrAmt,B.BudgetCrAmt", var_110, -1
  loc_17DAEEB: Set var_B4 = var_100
  loc_17DAF0F: If (var_B4.RecordCount > 0) Then
  loc_17DAF12:   ' Referenced from: 17DCD77
  loc_17DAF21:   If Not(var_B4.EOF) Then
  loc_17DAF2A:     var_CC = "BudgetCRAmt"
  loc_17DAF4E:     var_DC = 0
  loc_17DAF60:     If (var_B4.Fields.Item(var_CC).Value > var_DC) Then
  loc_17DAF65:       var_9E = 0
  loc_17DAF70:       Set var_140 = var_B0 
  loc_17DAF7F:       var_B0.AddNew var_CC, var_DC
  loc_17DAFE3:       var_EC = "-"
  loc_17DAFE8:       var_160 = (Format(CVar(var_B4.Fields.Item("FromDate")), "DD/MM/YYYY") + 2)
  loc_17DB004:       var_178 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DB013:       var_1B8 = (1 + Format(var_178, "DD/MM/YYYY"))
  loc_17DB021:       var_140.Collect = "BudgetPeriod"
  loc_17DB05F:       var_110 = CVar(var_B4.Fields.Item("FromDate")) 'Address
  loc_17DB06D:       var_140.Collect = "FromDate"
  loc_17DB097:       var_110 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DB0A5:       var_140.Collect = "ToDate"
  loc_17DB0D8:       var_118 = Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), var_1B8, 1, var_160, 1)
  loc_17DB0E9:       If (var_118 <> vbNullString) Then
  loc_17DB10B:         var_110 = CVar(var_B4.Fields.Item("AcCode")) 'Address
  loc_17DB119:         var_140.Collect = "AcCode"
  loc_17DB14C:         var_13C = CVar(Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcName")), CVar(var_B4.Fields.Item("AcName")), 1, 0)) 'String
  loc_17DB159:         var_140.Collect = "AcName"
  loc_17DB16B:       Else
  loc_17DB1A4:         If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_13C, var_9E) <> vbNullString) Then
  loc_17DB1C6:           var_110 = CVar(var_B4.Fields.Item("AcGroupCode")) 'Address
  loc_17DB1D4:           var_140.Collect = "AcGroupCode"
  loc_17DB1EE:           var_100 = var_B4.Fields
  loc_17DB207:           var_13C = CVar(Proc_183_2_E5AE94(CVar(var_100.Item("AcGroupName")), CVar(var_100.Item("AcGroupName")), var_100)) 'String
  loc_17DB214:           var_140.Collect = "AcGroupName"
  loc_17DB223:         End If
  loc_17DB223:       End If
  loc_17DB242:       var_110 = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_17DB250:       var_140.Collect = "BudgetedAmt"
  loc_17DB26A:       var_140.Collect = "BudgetCrDr"
  loc_17DB2A8:       If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), "Cr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_17DB2B8:         var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DB2E7:         var_13C = "Cr" & var_B4.Fields.Item("AcCode").Value 
  loc_17DB31A:         Proc_183_7_EB17D4(var_178, CVar(var_B4.Fields.Item("FromDate")), var_13C & "' And L.V_Date Between ", var_230, -1)
  loc_17DB355:         Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DB374:         unk_58C129.Execute CStr(var_13C & var_1E0 & vbNullString), var_11A, Check1.DispID_41
  loc_17DB37F:         Set var_B8 = var_234
  loc_17DB3C1:         If (var_B8.RecordCount > 0) Then
  loc_17DB3EF:           var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DB3FF:         Else
  loc_17DB402:           var_A8 = CDbl(0)
  loc_17DB405:         End If
  loc_17DB408:       Else
  loc_17DB441:         If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DB451:           var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DB4B3:           Proc_183_7_EB17D4(var_178, CVar(var_B4.Fields.Item("FromDate")), "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And L.V_Date Between ", var_230)
  loc_17DB4BB:           var_198 = -1 & var_178 
  loc_17DB4EE:           Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DB50D:           unk_58C129.Execute CStr(var_234 & var_1E0 & vbNullString), var_A8, 
  loc_17DB518:           Set var_B8 = var_234
  loc_17DB55A:           If (var_B8.RecordCount > 0) Then
  loc_17DB588:             var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DB598:           Else
  loc_17DB59B:             var_A8 = CDbl(0)
  loc_17DB59E:           End If
  loc_17DB59E:         End If
  loc_17DB59E:       End If
  loc_17DB5A2:       var_DC = CVar(Abs(var_A8)) 'Double
  loc_17DB5B0:       var_140.Collect = "ActualAmt"
  loc_17DB5F1:       If (var_140.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DB618:         var_150 = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DB62A:         var_140.Collect = "ActualCrDr"
  loc_17DB63A:       End If
  loc_17DB676:       If (var_140.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DB6CD:         var_150 = (var_140.Fields.Item("ActualAmt").Value - var_140.Fields.Item("BudgetedAmt").Value)
  loc_17DB704:         var_198 = ((var_150 / var_140.Fields.Item("BudgetedAmt").Value) * 100)
  loc_17DB712:         var_140.Collect = "VariencePer"
  loc_17DB72F:       End If
  loc_17DB72F:       var_DC = "CrGroup"
  loc_17DB73E:       var_140.Collect = "Flag"
  loc_17DB778:       var_9E = CInt(Trim(CVar(var_B4.Fields.Item("FrMth"))))
  loc_17DB7B4:       var_AA = CInt(Trim(CVar(var_B4.Fields.Item("FrYear"))))
  loc_17DB7F3:       For var_238 = &HD To CInt((var_B0.Fields.Count - 1)) Step 2: var_A0 = var_238 'Integer
  loc_17DB8BD:         If (Ucase(Format(DateAdd("m", CDbl(CByte(0)), CVar(var_B4.Fields.Item("FromDate"))), "MMM/yy")) = Ucase(Trim(CVar(var_B0.Fields.Item(CVar(var_A0)).Name)))) Then
  loc_17DB8F9:           If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), 1, 1, &HD, var_AA, var_9E) <> vbNullString) Then
  loc_17DB909:             var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DB941:             var_150 = "MMM/yy" & var_B4.Fields.Item("AcCode").Value & "' And MONTH(L.V_Date)=" 
  loc_17DB95E:             var_198 = var_150 & CVar(var_9E) & " And Year(L.V_Date)=" & CVar(var_AA) 
  loc_17DB991:             Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_198 & " And L.V_Date Between ", var_2B8, -1, var_234)
  loc_17DB9CC:             Proc_183_7_EB17D4(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ", "MMM/yy")
  loc_17DB9EB:             unk_58C129.Execute CStr(var_198 & var_268 & vbNullString), var_150, "MMM/yy"
  loc_17DB9F6:             Set var_B8 = var_234
  loc_17DBA40:             If (var_B8.RecordCount > 0) Then
  loc_17DBA6E:               var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DBA7E:             Else
  loc_17DBA81:               var_A8 = CDbl(0)
  loc_17DBA84:             End If
  loc_17DBAAD:             var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DBAF6:             If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DBB2F:               var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DBB49:               var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DBB60:             End If
  loc_17DBB63:           Else
  loc_17DBB9C:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DBBAC:               var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DBBF7:               var_178 = "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E) & " And Year(L.V_Date)=" 
  loc_17DBC34:               Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_178 & CVar(var_AA) & " And L.V_Date Between ", var_2B8)
  loc_17DBC3C:               var_1F0 = -1 & var_1E0 
  loc_17DBC68:               var_230 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DBC6F:               Proc_183_7_EB17D4(var_268, var_230, CDbl(0) & var_1E0 & " And ")
  loc_17DBC8E:               unk_58C129.Execute CStr(var_234 & var_268 & vbNullString), var_A8, 
  loc_17DBC99:               Set var_B8 = var_234
  loc_17DBCE3:               If (var_B8.RecordCount > 0) Then
  loc_17DBD11:                 var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DBD21:               Else
  loc_17DBD24:                 var_A8 = CDbl(0)
  loc_17DBD27:               End If
  loc_17DBD50:               var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DBD99:               If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DBDD2:                 var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DBDEC:                 var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DBE03:               End If
  loc_17DBE03:             End If
  loc_17DBE03:           End If
  loc_17DBE09:           If (var_9E = &HC) Then
  loc_17DBE0E:             var_9E = 0
  loc_17DBE17:             var_AA = (var_AA + 1)
  loc_17DBE1A:           End If
  loc_17DBE20:           var_9E = (var_9E + 1)
  loc_17DBE23:         End If
  loc_17DBE2E:         var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_17DBE35:       Next var_238 'Integer
  loc_17DBE3C:       Set var_140 = Nothing 
  loc_17DBE43:     Else
  loc_17DBE49:       var_CC = "BudgetDrAmt"
  loc_17DBE6D:       var_DC = 0
  loc_17DBE7F:       If (var_B4.Fields.Item(var_CC).Value > var_DC) Then
  loc_17DBE84:         var_9E = 0
  loc_17DBE89:         var_AA = 0
  loc_17DBE8F:         Set var_2BC = var_B0 
  loc_17DBE9E:         var_B0.AddNew var_CC, var_DC
  loc_17DBF02:         var_EC = "-"
  loc_17DBF07:         var_160 = (Format(CVar(var_B4.Fields.Item("FromDate")), "DD/MM/YYYY") + "Dr")
  loc_17DBF23:         var_178 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DBF32:         var_1B8 = (1 + Format(var_178, "DD/MM/YYYY"))
  loc_17DBF40:         var_2BC.Collect = "BudgetPeriod"
  loc_17DBF7E:         var_110 = CVar(var_B4.Fields.Item("FromDate")) 'Address
  loc_17DBF8C:         var_2BC.Collect = "FromDate"
  loc_17DBFB6:         var_110 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DBFC4:         var_2BC.Collect = "ToDate"
  loc_17DBFF7:         var_118 = Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("FromDate")), 1)
  loc_17DC008:         If (var_118 <> vbNullString) Then
  loc_17DC02A:           var_110 = CVar(var_B4.Fields.Item("AcCode")) 'Address
  loc_17DC038:           var_2BC.Collect = "AcCode"
  loc_17DC06B:           var_13C = CVar(Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcName")), CVar(var_B4.Fields.Item("AcName")), "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E), 1)) 'String
  loc_17DC078:           var_2BC.Collect = "AcName"
  loc_17DC08A:         Else
  loc_17DC0C3:           If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_13C, 1) <> vbNullString) Then
  loc_17DC0E5:             var_110 = CVar(var_B4.Fields.Item("AcGroupCode")) 'Address
  loc_17DC0F3:             var_2BC.Collect = "AcGroupCode"
  loc_17DC126:             var_13C = CVar(Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupName")), CVar(var_B4.Fields.Item("AcGroupName")))) 'String
  loc_17DC133:             var_2BC.Collect = "AcGroupName"
  loc_17DC142:           End If
  loc_17DC142:         End If
  loc_17DC161:         var_110 = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_17DC16F:         var_2BC.Collect = "BudgetedAmt"
  loc_17DC189:         var_2BC.Collect = "BudgetCrDr"
  loc_17DC1C7:         If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), "Dr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_17DC1D7:           var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as AmtDr From Ledger L Where SubCode='"
  loc_17DC206:           var_13C = "Dr" & var_B4.Fields.Item("AcCode").Value 
  loc_17DC239:           Proc_183_7_EB17D4(var_178, CVar(var_B4.Fields.Item("FromDate")), var_13C & "' And L.V_Date Between ", var_230, -1)
  loc_17DC274:           Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DC293:           unk_58C129.Execute CStr(var_13C & var_1E0 & vbNullString), var_AA, var_9E
  loc_17DC29E:           Set var_B8 = var_234
  loc_17DC2E0:           If (var_B8.RecordCount > 0) Then
  loc_17DC30E:             var_A8 = CSng(var_B8.Fields.Item("AmtDr").Value)
  loc_17DC31E:           Else
  loc_17DC321:             var_A8 = CDbl(0)
  loc_17DC324:           End If
  loc_17DC327:         Else
  loc_17DC360:           If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DC370:             var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as AmtDr From Ledger L Where L.GroupCode ='"
  loc_17DC3D2:             Proc_183_7_EB17D4(var_178, CVar(var_B4.Fields.Item("FromDate")), "Dr" & var_B4.Fields.Item("AcGroupCode").Value & "' And L.V_Date Between ", var_230)
  loc_17DC3DA:             var_198 = -1 & var_178 
  loc_17DC40D:             Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DC42C:             unk_58C129.Execute CStr(var_234 & var_1E0 & vbNullString), var_A8, 
  loc_17DC437:             Set var_B8 = var_234
  loc_17DC479:             If (var_B8.RecordCount > 0) Then
  loc_17DC4A7:               var_A8 = CSng(var_B8.Fields.Item("AmtDr").Value)
  loc_17DC4B7:             Else
  loc_17DC4BA:               var_A8 = CDbl(0)
  loc_17DC4BD:             End If
  loc_17DC4BD:           End If
  loc_17DC4BD:         End If
  loc_17DC4C1:         var_DC = CVar(Abs(var_A8)) 'Double
  loc_17DC4CF:         var_2BC.Collect = "ActualAmt"
  loc_17DC510:         If (var_2BC.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DC537:           var_150 = IIf((var_A8 > CDbl(0)), "Dr", "Cr")
  loc_17DC549:           var_2BC.Collect = "ActualCrDr"
  loc_17DC559:         End If
  loc_17DC595:         If (var_2BC.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DC5EC:           var_150 = (var_2BC.Fields.Item("ActualAmt").Value - var_2BC.Fields.Item("BudgetedAmt").Value)
  loc_17DC623:           var_198 = ((var_150 / var_2BC.Fields.Item("BudgetedAmt").Value) * 100)
  loc_17DC631:           var_2BC.Collect = "VariencePer"
  loc_17DC64E:         End If
  loc_17DC64E:         var_DC = "DrGroup"
  loc_17DC65D:         var_2BC.Collect = "Flag"
  loc_17DC697:         var_9E = CInt(Trim(CVar(var_B4.Fields.Item("FrMth"))))
  loc_17DC6D3:         var_AA = CInt(Trim(CVar(var_B4.Fields.Item("FrYear"))))
  loc_17DC712:         For var_2C0 = &HD To CInt((var_B0.Fields.Count - 1)) Step 2:   var_A0 = var_2C0 'Integer
  loc_17DC7DC:           If (Ucase(Format(DateAdd("m", CDbl(CByte(0)), CVar(var_B4.Fields.Item("FromDate"))), "MMM/yy")) = Ucase(Trim(CVar(var_B0.Fields.Item(CVar(var_A0)).Name)))) Then
  loc_17DC818:             If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcCode")), 1, 1, &HD, var_AA, var_9E) <> vbNullString) Then
  loc_17DC828:               var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DC860:               var_150 = "MMM/yy" & var_B4.Fields.Item("AcCode").Value & "' And MONTH(L.V_Date)=" 
  loc_17DC87D:               var_198 = var_150 & CVar(var_9E) & " And Year(L.V_Date)=" & CVar(var_AA) 
  loc_17DC8B0:               Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_198 & " And L.V_Date Between ", var_2B8, -1, var_234)
  loc_17DC8EB:               Proc_183_7_EB17D4(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ", "MMM/yy")
  loc_17DC90A:               unk_58C129.Execute CStr(var_198 & var_268 & vbNullString), var_150, "MMM/yy"
  loc_17DC915:               Set var_B8 = var_234
  loc_17DC95F:               If (var_B8.RecordCount > 0) Then
  loc_17DC98D:                 var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DC99D:               Else
  loc_17DC9A0:                 var_A8 = CDbl(0)
  loc_17DC9A3:               End If
  loc_17DC9CC:               var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DCA15:               If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DCA4E:                 var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DCA68:                 var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Dr", "Cr")
  loc_17DCA7F:               End If
  loc_17DCA82:             Else
  loc_17DCABB:               If (Proc_183_2_E5AE94(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DCACB:                 var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DCB0D:                 var_160 = "Dr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E) 
  loc_17DCB53:                 Proc_183_7_EB17D4(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_160 & " And Year(L.V_Date)=" & CVar(var_AA) & " And L.V_Date Between ", var_2B8)
  loc_17DCB5B:                 var_1F0 = -1 & var_1E0 
  loc_17DCB8E:                 Proc_183_7_EB17D4(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ")
  loc_17DCBA3:                 var_118 = CStr(var_234 & var_268 & vbNullString)
  loc_17DCBAD:                 unk_58C129.Execute var_118, var_A8, 
  loc_17DCBB8:                 Set var_B8 = var_234
  loc_17DCC02:                 If (var_B8.RecordCount > 0) Then
  loc_17DCC30:                   var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DCC40:                 Else
  loc_17DCC43:                   var_A8 = CDbl(0)
  loc_17DCC46:                 End If
  loc_17DCC6F:                 var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DCCB8:                 If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DCCBB:                   var_EC = "Cr"
  loc_17DCCC6:                   var_DC = "Dr"
  loc_17DCCD8:                   var_CC = (var_A8 > CDbl(0))
  loc_17DCCDF:                   var_150 = IIf(var_CC, var_DC, var_EC)
  loc_17DCCF1:                   var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DCD0B:                   var_B0.Fields.Item(CVar(var_9E)).Value = var_150
  loc_17DCD22:                 End If
  loc_17DCD22:               End If
  loc_17DCD22:             End If
  loc_17DCD28:             If (var_9E = &HC) Then
  loc_17DCD2D:               var_9E = 0
  loc_17DCD36:               var_AA = (var_AA + 1)
  loc_17DCD39:             End If
  loc_17DCD3F:             var_9E = (var_9E + 1)
  loc_17DCD42:           End If
  loc_17DCD4D:           var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_17DCD54:         Next var_2C0 'Integer
  loc_17DCD5B:         Set var_2BC = Nothing 
  loc_17DCD5F:       End If
  loc_17DCD5F:     End If
  loc_17DCD62:     var_B4.MoveNext
  loc_17DCD72:     var_B0.Update var_CC, var_DC
  loc_17DCD77:     GoTo loc_17DAF12
  loc_17DCD7A:   End If
  loc_17DCD7A: End If
  loc_17DCD8E: If (var_B0.RecordCount <= 0) Then
  loc_17DCD97:   Call 0.Method_arg_50 (var_118)
  loc_17DCDAD:   var_CC = "** No Records Found to Print **"
  loc_17DCDB8:   MsgBox(var_CC, &H40, CVar(var_118), var_150, var_160)
  loc_17DCDCD:   global_130 = 0
  loc_17DCDD0:   Exit Sub
  loc_17DCDD1: End If
  loc_17DCDD7: global_124 = "FABudgetRep"
  loc_17DCDE4: If (global_130 = 0) Then
  loc_17DCDE7:   Exit Sub
  loc_17DCDE8: End If
  loc_17DCE0F: Set var_100 = var_B0 
  loc_17DCE16: CreateFieldDefFile(var_100, MemVar_1F953B4 & "\" & global_124 & ".ttx")
  loc_17DCE41: var_118 = MemVar_1F953B4 & "\"
  loc_17DCE5B: Call 0.Method_arg_1C (var_118 & global_124 & ".RPT", var_CC, var_100)
  loc_17DCE66: MemVar_1F951E8 = var_100
  loc_17DCE8F: Call 0.Method_arg_64 (var_100, CVar(var_100), var_DC)
  loc_17DCE97: Call 0.Method_arg_2C (var_EC, &HFF)
  loc_17DCEA4: Set var_B0 = Nothing
  loc_17DCEAC: Set var_B4 = Nothing
  loc_17DCEB4: Set var_B8 = Nothing
  loc_17DCEBC: Set var_B4 = Nothing
  loc_17DCEBF: Exit Sub
  loc_17DCEC0: ' Referenced from: 17DADC8
  loc_17DCECE: Call 0.Method_arg_50 (var_118, 0)
  loc_17DCEE3: Proc_183_57_104B0BC(var_118, "FaBudget")
  loc_17DCEEF: Exit Sub
End Sub

Public Sub Proc_245_87_11610C0(arg_C) '11610C0
  'Data Table: 58C0E4
  Dim var_8C As Recordset15
  loc_1160CFD: Set var_8C = arg_C 
  loc_1160D25: var_8C.Fields.Append "BudgetPeriod", &HC8, &H19
  loc_1160D51: var_8C.Fields.Append "FromDate", &H85, 0
  loc_1160D7D: var_8C.Fields.Append "ToDate", &H85, 0
  loc_1160DA9: var_8C.Fields.Append "AcGroupCode", &HC8, 8
  loc_1160DD5: var_8C.Fields.Append "AcGroupName", &HC8, &H32
  loc_1160E01: var_8C.Fields.Append "AcCode", &HC8, 8
  loc_1160E2D: var_8C.Fields.Append "AcName", &HC8, &H32
  loc_1160E59: var_8C.Fields.Append "BudgetedAmt", 5, 0
  loc_1160E85: var_8C.Fields.Append "BudgetCrDr", &HC8, 2
  loc_1160EB1: var_8C.Fields.Append "ActualAmt", 5, 0
  loc_1160EDD: var_8C.Fields.Append "ActualCrDr", &HC8, 2
  loc_1160F09: var_8C.Fields.Append "Varience", 5, 0
  loc_1160F35: var_8C.Fields.Append "VariencePer", 5, 0
  loc_1160F61: var_8C.Fields.Append "PreBudgetedAmt", 5, 0
  loc_1160F8D: var_8C.Fields.Append "PreBudgetCrDr", &HC8, 2
  loc_1160FB9: var_8C.Fields.Append "PreActualAmt", 5, 0
  loc_1160FE5: var_8C.Fields.Append "PreActualCrDr", &HC8, 2
  loc_1161011: var_8C.Fields.Append "PreVarience", 5, 0
  loc_116103D: var_8C.Fields.Append "PreVariencePer", 5, 0
  loc_1161069: var_8C.Fields.Append "GroupType", &HC8, 7
  loc_1161079: var_8C.CursorType = 3
  loc_1161086: var_8C.LockType = 3
  loc_11610A5: var_8C.Open var_A0, var_B0, -1
  loc_11610AC: Set var_8C = Nothing 
  loc_11610B3: Set var_88 = arg_C 
  loc_11610B7: Proc_245_87_11610C0 = -1
End Sub

Public Sub Proc_245_88_1273210(arg_C) '1273210
  'Data Table: 58C0E4
  Dim var_94 As Recordset15
  Dim var_98 As Fields
  Dim var_A8 As Variant
  Dim var_F4 As String
  Dim unk_58C129 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As String
  Dim var_EC As Variant
  loc_1272C89: Set var_94 = arg_C 
  loc_1272CB1: var_94.Fields.Append "BudgetPeriod", &HC8, &H19
  loc_1272CDD: var_94.Fields.Append "FromDate", &H85, 0
  loc_1272D09: var_94.Fields.Append "ToDate", &H85, 0
  loc_1272D35: var_94.Fields.Append "AcGroupCode", &HC8, 8
  loc_1272D61: var_94.Fields.Append "AcGroupName", &HC8, &H32
  loc_1272D8D: var_94.Fields.Append "AcCode", &HC8, 8
  loc_1272DB9: var_94.Fields.Append "AcName", &HC8, &H32
  loc_1272DE5: var_94.Fields.Append "BudgetedAmt", 5, 0
  loc_1272E11: var_94.Fields.Append "BudgetCrDr", &HC8, 2
  loc_1272E3D: var_94.Fields.Append "ActualAmt", 5, 0
  loc_1272E69: var_94.Fields.Append "ActualCrDr", &HC8, 2
  loc_1272E95: var_94.Fields.Append "VariencePer", 5, 0
  loc_1272EC1: var_94.Fields.Append "Flag", &HC8, 7
  loc_1272EDE: Set var_98 = CVar(CLng(0))(2)
  loc_1272F08: var_F4 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where CStr(FromDate) +'-'+ CStr(ToDate) in ('" & CStr(var_EC)
  loc_1272F18: unk_58C129.Execute var_F4 & "') Order By B.BudgetDrAmt,B.BudgetCrAmt", var_118, -1
  loc_1272F23: Set var_90 = var_11C
  loc_1272F51: If (var_90.RecordCount > 0) Then
  loc_1272F5B:   For var_124 = 1 To &HC: var_8A = var_124 'Integer
  loc_1272F67:     If (var_8A = 1) Then
  loc_1272FD2:       var_94.Fields.Append CStr(Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy")), 5, 0
  loc_127305B:       var_94.Fields.Append CStr("mCrDr" & Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy")), &HC8, 2
  loc_1273078:     Else
  loc_12730A9:       var_118 = DateAdd("m", CDbl((var_8A - 1)), CVar(var_90.Fields.Item("FromDate")))
  loc_12730F6:       var_94.Fields.Append CStr(Format("MMM/yy", "MMM/yy")), 5, 0
  loc_1273113:       var_A8 = "FromDate"
  loc_1273141:       var_118 = DateAdd("m", CDbl((var_8A - 1)), CVar(var_90.Fields.Item(var_A8)))
  loc_1273150:       var_BC = "MMM/yy"
  loc_1273197:       var_94.Fields.Append CStr("mCrDr" & Format("MMM/yy", var_BC)), &HC8, 2
  loc_12731B3:     End If
  loc_12731B6:   Next var_124 'Integer
  loc_12731BB: End If
  loc_12731C3: var_94.CursorType = 3
  loc_12731D0: var_94.LockType = 3
  loc_12731EF: var_94.Open var_A8, var_BC, -1
  loc_12731F6: Set var_94 = Nothing 
  loc_12731FD: Set var_88 = arg_C 
  loc_1273206: Set var_90 = Nothing
  loc_1273209: Proc_245_88_1273210 = -1
End Sub

Public Sub Proc_245_89_17F0220
  'Data Table: 58C0E4
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_178 As String
  Dim var_160 As Variant
  Dim unk_58C129 As Connection15
  Dim var_88 As Recordset15
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E8 As Variant
  Dim var_15C As Variant
  Dim var_1F8 As Variant
  Dim var_94 As Recordset15
  Dim var_116 As Integer
  Dim var_25C As Fields15
  Dim var_260 As Field20
  Dim var_1D8 As Variant
  Dim var_BC As Double
  Dim var_264 As Recordset15
  Dim var_90 As Recordset15
  Dim var_172 As Integer
  Dim Me As Recordset15
  loc_17EE098: On Error Goto loc_17F01EE
  loc_17EE0B0: Set var_160 = CVar(CLng(0))(0)
  loc_17EE0D4: Call Proc_245_64_F51BE4(CInt(0), CStr(var_170))
  loc_17EE0E8: If (var_17A = 0) Then
  loc_17EE0F0:   global_130 = 0
  loc_17EE0F3:   Exit Sub
  loc_17EE0F4: End If
  loc_17EE0FF: Set var_160 = Me.TEXT
  loc_17EE105: Call 0.Method_Proc_245_89_17F02200 (CInt(&HC), var_180, global_130)
  loc_17EE10D: var_170 = CVar(var_180) 'Address
  loc_17EE12E: If CBool(Trim(var_170) <> vbNullString) Then
  loc_17EE142:   Set var_160 = Me.TEXT
  loc_17EE148:   Call 0.Method_Proc_245_89_17F02200 (CInt(&HC), var_180, var_178)
  loc_17EE150:   " And VIEWLEDGER.LOGSite_Code='" = var_180.Tag
  loc_17EE160:   var_11C = var_17A & var_178 & "'"
  loc_17EE174: Else
  loc_17EE17B:   var_178 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F95078
  loc_17EE182:   var_11C = var_178 & "'"
  loc_17EE188: End If
  loc_17EE18E: global_84 = vbNullString
  loc_17EE195: var_A0 = vbNullString
  loc_17EE1A4: Set var_160 = Me.Check1
  loc_17EE1AA: Call 0.Method_Proc_245_89_17F02200 (1, var_180)
  loc_17EE1C8: If (CLng(var_180.Value) = 0) Then
  loc_17EE1E6:   Call Proc_245_61_127C7BC(global_96, 1, CByte(1))
  loc_17EE1F1:   global_84 = var_178
  loc_17EE201:   If (global_130 = 0) Then
  loc_17EE204:     Exit Sub
  loc_17EE205:   End If
  loc_17EE205: End If
  loc_17EE210: If (global_84 <> vbNullString) Then
  loc_17EE224:   var_A0 = " AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_17EE22A: End If
  loc_17EE23F: Set var_160 = CVar(CLng(0))(1)
  loc_17EE25D: Me.TXTE_DATE.Text = CStr(Check1.DispID_41)
  loc_17EE276: Set var_160 = Me.TXTE_DATE
  loc_17EE2A5: If (Proc_183_49_EF3D10(CDate(var_160.Text), "Date Upto") = 0) Then
  loc_17EE2AD:   global_130 = 0
  loc_17EE2B0:   Exit Sub
  loc_17EE2B1: End If
  loc_17EE2C5: var_178 = "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_17EE2D5: unk_58C129.Execute var_178 & "'", var_170, -1
  loc_17EE2E0: Set var_88 = var_160
  loc_17EE304: If (var_88.RecordCount = 0) Then
  loc_17EE30D:   Call 0.Method_arg_50 (var_178, var_160, global_130)
  loc_17EE328:   var_170 = " ** Please Set Ageing Parameters ** "
  loc_17EE32E:   MsgBox(var_170, &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17EE33E:   Exit Sub
  loc_17EE33F: End If
  loc_17EE347: If (arg_10 = "Dr") Then
  loc_17EE351:   var_A0 = var_A0 & " AND AcGroup.Nature='Customer'"
  loc_17EE354: End If
  loc_17EE35C: If (arg_10 = "Cr") Then
  loc_17EE366:   var_A0 = var_A0 & " AND AcGroup.Nature='Supplier'"
  loc_17EE369: End If
  loc_17EE37D: var_178 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,SUBGROUP.CONPERSON,ACGROUP.GroupName FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078
  loc_17EE39B: unk_58C129.Execute var_178 & "' OR SUBGROUP.LOGSITE_CODE='HO') " & var_A0 & " ORDER BY SUBGROUP.NAME", var_170, -1
  loc_17EE3A6: Set var_8C = var_160
  loc_17EE3BD: var_A4 = vbNullString
  loc_17EE3D5: Set var_90 = mAgeingReport(New)
  loc_17EE3DE: Me.Recordset15.Sort = "ACC_NAME ASC"
  loc_17EE3E3: ' Referenced from: 17EF478
  loc_17EE3F2: If Not(var_8C.EOF) Then
  loc_17EE3F8:   var_E4 = CDbl(0)
  loc_17EE3FE:   var_EC = CDbl(0)
  loc_17EE404:   var_F4 = CDbl(0)
  loc_17EE40A:   var_FC = CDbl(0)
  loc_17EE410:   var_104 = CDbl(0)
  loc_17EE416:   var_10C = CDbl(0)
  loc_17EE41C:   var_114 = CDbl(0)
  loc_17EE428:   var_B4 = CDbl(0)
  loc_17EE470:   var_1A0 = "SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value & "'=VIEWLEDGER.PARTY AND V_DATE<=" 
  loc_17EE47F:   Proc_183_7_EB17D4(var_1D8, CVar(Me.TXTE_DATE), var_1A0, var_258, -1, var_25C, var_B4)
  loc_17EE4A7:   var_178 = CStr(CDbl(0) & var_1D8 & " " & CVar(var_11C) & vbNullString)
  loc_17EE4B1:   unk_58C129.Execute var_178, var_114, var_10C
  loc_17EE4BC:   Set var_94 = var_25C
  loc_17EE4E2:   ' Referenced from: 17EF099
  loc_17EE4F1:   If Not(var_94.EOF) Then
  loc_17EE4FC:     If (arg_10 = "Dr") Then
  loc_17EE53B:       If (var_94.Fields.Item("Credit").Value > 0) Then
  loc_17EE56F:         var_190 = (var_94.Fields.Item("Credit").Value + CVar(var_B4))
  loc_17EE574:         var_B4 = CSng("SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value)
  loc_17EE588:       Else
  loc_17EE5D2:         var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(Me.TXTE_DATE), 1, 1))
  loc_17EE622:         If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17EE656:           var_190 = (CVar(var_E4) + var_94.Fields.Item("Debit").Value)
  loc_17EE65B:           var_E4 = CSng(CVar(Me.TXTE_DATE))
  loc_17EE66F:         Else
  loc_17EE6F1:           If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17EE725:             var_190 = (CVar(var_EC) + var_94.Fields.Item("Debit").Value)
  loc_17EE72A:             var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17EE73E:           Else
  loc_17EE7C0:             If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17EE7F4:               var_190 = (CVar(var_F4) + var_94.Fields.Item("Debit").Value)
  loc_17EE7F9:               var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17EE80D:             Else
  loc_17EE88F:               If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17EE8C3:                 var_190 = (CVar(var_FC) + var_94.Fields.Item("Debit").Value)
  loc_17EE8C8:                 var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17EE8DC:               Else
  loc_17EE95E:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17EE992:                   var_190 = (CVar(var_104) + var_94.Fields.Item("Debit").Value)
  loc_17EE997:                   var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17EE9AB:                 Else
  loc_17EEA2D:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And (CVar(var_116) <= var_88.Fields.Item("Age6").Value)) Then
  loc_17EEA61:                     var_190 = (CVar(var_10C) + var_94.Fields.Item("Debit").Value)
  loc_17EEA66:                     var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17EEA7A:                   Else
  loc_17EEAAB:                     var_190 = (CVar(var_114) + var_94.Fields.Item("Debit").Value)
  loc_17EEAB0:                     var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17EEAC1:                   End If
  loc_17EEAC1:                 End If
  loc_17EEAC1:               End If
  loc_17EEAC1:             End If
  loc_17EEAC1:           End If
  loc_17EEAC1:         End If
  loc_17EEAC1:       End If
  loc_17EEAC4:     Else
  loc_17EEACC:       If (arg_10 = "Cr") Then
  loc_17EEB0B:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_17EEB3F:           var_190 = (var_94.Fields.Item("Debit").Value + CVar(var_B4))
  loc_17EEB44:           var_B4 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17EEB58:         Else
  loc_17EEBA2:           var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(Me.TXTE_DATE), 1, 1))
  loc_17EEBF2:           If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17EEC26:             var_190 = (CVar(var_E4) + var_94.Fields.Item("Credit").Value)
  loc_17EEC2B:             var_E4 = CSng(CVar(Me.TXTE_DATE))
  loc_17EEC3F:           Else
  loc_17EECC1:             If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17EECF5:               var_190 = (CVar(var_EC) + var_94.Fields.Item("Credit").Value)
  loc_17EECFA:               var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17EED0E:             Else
  loc_17EED90:               If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17EEDC4:                 var_190 = (CVar(var_F4) + var_94.Fields.Item("Credit").Value)
  loc_17EEDC9:                 var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17EEDDD:               Else
  loc_17EEE5F:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17EEE93:                   var_190 = (CVar(var_FC) + var_94.Fields.Item("Credit").Value)
  loc_17EEE98:                   var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17EEEAC:                 Else
  loc_17EEF2E:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17EEF62:                     var_190 = (CVar(var_104) + var_94.Fields.Item("Credit").Value)
  loc_17EEF67:                     var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17EEF7B:                   Else
  loc_17EEFC9:                     var_25C = var_88.Fields
  loc_17EEFD1:                     var_260 = var_25C.Item("Age6")
  loc_17EEFE1:                     var_1C0 = (CVar(var_116) <= var_260.Value)
  loc_17EEFFD:                     If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And var_1C0) Then
  loc_17EF031:                       var_190 = (CVar(var_10C) + var_94.Fields.Item("Credit").Value)
  loc_17EF036:                       var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17EF04A:                     Else
  loc_17EF07B:                       var_190 = (CVar(var_114) + var_94.Fields.Item("Credit").Value)
  loc_17EF080:                       var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17EF091:                     End If
  loc_17EF091:                   End If
  loc_17EF091:                 End If
  loc_17EF091:               End If
  loc_17EF091:             End If
  loc_17EF091:           End If
  loc_17EF091:         End If
  loc_17EF091:       End If
  loc_17EF091:     End If
  loc_17EF094:     var_94.MoveNext
  loc_17EF099:     GoTo loc_17EE4E2
  loc_17EF09C:   End If
  loc_17EF0A7:   var_D8(0) = var_E4
  loc_17EF0B3:   var_D8(1) = var_EC
  loc_17EF0BF:   var_D8(2) = var_F4
  loc_17EF0CB:   var_D8(3) = var_FC
  loc_17EF0D7:   var_D8(4) = var_104
  loc_17EF0E3:   var_D8(5) = var_10C
  loc_17EF0EF:   var_D8(6) = var_114
  loc_17EF0F3:   var_BC = CDbl(7)
  loc_17EF0F6:   ' Referenced from: 17EF18A
  loc_17EF0FD:   If (var_BC <> CDbl(0)) Then
  loc_17EF110:     If (var_D8(CLng((var_BC - CDbl(1)))) > CDbl(0)) Then
  loc_17EF123:       If (var_B4 >= var_D8(CLng((var_BC - CDbl(1))))) Then
  loc_17EF136:         var_B4 = (var_B4 - var_D8(CLng((var_BC - CDbl(1)))))
  loc_17EF147:         var_D8(CLng((var_BC - CDbl(1)))) = CDbl(0)
  loc_17EF14B:       Else
  loc_17EF15B:         If (var_D8(CLng((var_BC - CDbl(1)))) > var_B4) Then
  loc_17EF179:           var_D8(CLng((var_BC - CDbl(1)))) = (var_D8(CLng((var_BC - CDbl(1)))) - var_B4)
  loc_17EF17D:           var_B4 = CDbl(0)
  loc_17EF180:         End If
  loc_17EF180:       End If
  loc_17EF180:     End If
  loc_17EF187:     var_BC = (var_BC - CDbl(1))
  loc_17EF18A:     GoTo loc_17EF0F6
  loc_17EF18D:   End If
  loc_17EF1D2:   var_BC = ((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))
  loc_17EF1DD:   var_12C = var_BC
  loc_17EF1ED:   var_13C = 0
  loc_17EF207:   var_1A0 = Round(var_B4, 2)
  loc_17EF22A:   If CBool(Not (Round(var_12C, 2) = var_13C) And (var_1A0 = 0)) Then
  loc_17EF230:     Set var_264 = var_90 
  loc_17EF23F:     var_264.AddNew var_12C, var_13C
  loc_17EF24D:     var_13C = CVar(var_D8(0)) 'Double
  loc_17EF25B:     var_264.Collect = "DEBIT1"
  loc_17EF269:     var_13C = CVar(var_D8(1)) 'Double
  loc_17EF277:     var_264.Collect = "DEBIT2"
  loc_17EF285:     var_13C = CVar(var_D8(2)) 'Double
  loc_17EF293:     var_264.Collect = "DEBIT3"
  loc_17EF2A1:     var_13C = CVar(var_D8(3)) 'Double
  loc_17EF2AF:     var_264.Collect = "DEBIT4"
  loc_17EF2BD:     var_13C = CVar(var_D8(4)) 'Double
  loc_17EF2CB:     var_264.Collect = "DEBIT5"
  loc_17EF2D9:     var_13C = CVar(var_D8(5)) 'Double
  loc_17EF2E7:     var_264.Collect = "DEBIT6"
  loc_17EF2F5:     var_13C = CVar(var_D8(6)) 'Double
  loc_17EF303:     var_264.Collect = "Debit"
  loc_17EF34D:     var_13C = CVar(((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))) 'Double
  loc_17EF35B:     var_264.Collect = "TOTALDR"
  loc_17EF363:     var_13C = CVar(var_B4) 'Double
  loc_17EF371:     var_264.Collect = "Credit"
  loc_17EF3A1:     var_190 = Left(CVar(var_8C.Fields.Item("Name")), &H23)
  loc_17EF3B3:     var_264.Collect = "ACC_NAME"
  loc_17EF3ED:     var_190 = Left(CVar(var_8C.Fields.Item("ConPerson")), &H32)
  loc_17EF3FF:     var_264.Collect = "CON_PER"
  loc_17EF411:     var_12C = "GroupName"
  loc_17EF425:     var_180 = var_8C.Fields.Item(var_12C)
  loc_17EF439:     var_190 = Left(CVar(var_180), &H23)
  loc_17EF442:     var_13C = "AName"
  loc_17EF44B:     var_264.Collect = var_13C
  loc_17EF465:     var_264.Update var_12C, var_13C
  loc_17EF46C:     Set var_264 = Nothing 
  loc_17EF470:   End If
  loc_17EF473:   var_8C.MoveNext
  loc_17EF478:   GoTo loc_17EE3E3
  loc_17EF47B: End If
  loc_17EF481: var_1B0 = var_90.RecordCount
  loc_17EF48F: If (var_1B0 <= 0) Then
  loc_17EF498:   Call 0.Method_arg_50 (var_178, var_190, var_190, var_190, var_13C, var_13C, var_13C)
  loc_17EF4B9:   MsgBox("** No Records Found to Print **", &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17EF4CE:   global_130 = 0
  loc_17EF4D1:   Exit Sub
  loc_17EF4D2: End If
  loc_17EF4E8: Set var_160 = var_90 
  loc_17EF4F4: var_172 = CreateFieldDefFile(var_160, MemVar_1F953B4 & "\AGEINGREPORT.ttx", &HFF, global_130, var_13C, var_13C)
  loc_17EF4FE: Set var_90 = var_160
  loc_17EF504: var_12C = CVar(var_172) 'Integer
  loc_17EF507: var_274 = var_12C 'Variant
  loc_17EF523: var_178 = MemVar_1F953B4 & "\AGEINGREPORT.RPT"
  loc_17EF52C: Call 0.Method_arg_1C (var_178, var_12C, var_160, var_172, var_13C)
  loc_17EF537: MemVar_1F951E8 = var_160
  loc_17EF552: Call 0.Method_arg_90 (var_160, var_1B0, var_BE, 1)
  loc_17EF55A: Call 0.Method_arg_24 (var_13C, var_13C)
  loc_17EF566: For var_278 = var_BC To CInt(var_1B0): var_13C = var_278 'Integer
  loc_17EF57F:   Call 0.Method_arg_90 (var_160, CLng(var_BE), var_180)
  loc_17EF587:   Call 0.Method_arg_20 (var_178)
  loc_17EF58F:   Call 0.Method_arg_30 (var_BC)
  loc_17EF5A5:   var_288 = Ucase(CVar(var_178)) 'Variant
  loc_17EF5D5:   If (var_288 = Ucase("title")) Then
  loc_17EF5E9:     Call 0.Method_Proc_245_89_17F02200 (CInt(&HC))
  loc_17EF612:     If (Trim(CVar(var_180)) = vbNullString) Then
  loc_17EF61E:       Call 0.Method_arg_50 (var_178, "'")
  loc_17EF641:       Call 0.Method_arg_90 (Me.TEXT, CLng(var_BE))
  loc_17EF649:       Call 0.Method_arg_20 (var_180)
  loc_17EF651:       Call 0.Method_arg_38 (var_180 & var_178 & "'")
  loc_17EF669:     Else
  loc_17EF672:       Call 0.Method_arg_50 (var_178)
  loc_17EF690:       Set var_160 = Me.TEXT
  loc_17EF696:       Call 0.Method_Proc_245_89_17F02200 (CInt(&HC), var_180)
  loc_17EF6AD:       var_1C0 = (CVar("'" & var_178 & " (") + Trim(CVar(var_180)))
  loc_17EF6B6:       var_1D8 = (var_1C0 + ")")
  loc_17EF6BF:       var_1E8 = ((Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0) + "'")
  loc_17EF6D7:       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17EF6DF:       Call 0.Method_arg_20 (var_260)
  loc_17EF6E7:       Call 0.Method_arg_38 (CStr(Not (Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0)))
  loc_17EF70D:     End If
  loc_17EF710:   Else
  loc_17EF732:     If (var_288 = Ucase("ACNAME")) Then
  loc_17EF768:       Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17EF770:       Call 0.Method_arg_20 (var_25C)
  loc_17EF778:       Call 0.Method_arg_38 ("'For A/C  :   " & Me.TXTACC_CODE.Text & "'")
  loc_17EF792:     Else
  loc_17EF7B4:       If (var_288 = Ucase("DATE")) Then
  loc_17EF7EA:         Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17EF7F2:         Call 0.Method_arg_20 (var_25C)
  loc_17EF7FA:         Call 0.Method_arg_38 ("'Upto Date :     " & Me.TXTE_DATE.Text & "'")
  loc_17EF814:       Else
  loc_17EF836:         If (var_288 = Ucase("P1")) Then
  loc_17EF83E:           var_13C = "0 - "
  loc_17EF871:           var_1A0 = ("'" + Str(CVar(var_88.Fields.Item("Age1"))))
  loc_17EF896:           Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17EF89E:           Call 0.Method_arg_20 (var_260)
  loc_17EF8A6:           Call 0.Method_arg_38 (CStr("'" & CVar("'" & Me.TXTE_DATE.Text & " (") & "'"))
  loc_17EF8C7:         Else
  loc_17EF8E9:           If (var_288 = Ucase("P2")) Then
  loc_17EF920:             var_190 = (var_88.Fields.Item("Age1").Value + 1)
  loc_17EF933:             var_15C = " - "
  loc_17EF98B:             Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17EF993:             Call 0.Method_arg_20 (var_290)
  loc_17EF99B:             Call 0.Method_arg_38 (CStr("'" & Str(Ucase("P2")) & "'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17EF9C8:           Else
  loc_17EF9EA:             If (var_288 = Ucase("P3")) Then
  loc_17EFA21:               var_190 = (var_88.Fields.Item("Age2").Value + 1)
  loc_17EFA30:               var_14C = " - "
  loc_17EFA35:               var_1C0 = (Str(Ucase("P3")) + "'")
  loc_17EFA67:               var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age3"))))
  loc_17EFA8C:               Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17EFA94:               Call 0.Method_arg_20 (var_290)
  loc_17EFA9C:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17EFAC9:             Else
  loc_17EFAEB:               If (var_288 = Ucase("P4")) Then
  loc_17EFB22:                 var_190 = (var_88.Fields.Item("Age3").Value + 1)
  loc_17EFB31:                 var_14C = " - "
  loc_17EFB36:                 var_1C0 = (Str(Ucase("P4")) + "'")
  loc_17EFB68:                 var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age4"))))
  loc_17EFB8D:                 Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17EFB95:                 Call 0.Method_arg_20 (var_290)
  loc_17EFB9D:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17EFBCA:               Else
  loc_17EFBEC:                 If (var_288 = Ucase("P5")) Then
  loc_17EFC23:                   var_190 = (var_88.Fields.Item("Age4").Value + 1)
  loc_17EFC32:                   var_14C = " - "
  loc_17EFC37:                   var_1C0 = (Str(Ucase("P5")) + "'")
  loc_17EFC69:                   var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age5"))))
  loc_17EFC8E:                   Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17EFC96:                   Call 0.Method_arg_20 (var_290)
  loc_17EFC9E:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17EFCCB:                 Else
  loc_17EFCED:                   If (var_288 = Ucase("P6")) Then
  loc_17EFD24:                     var_190 = (var_88.Fields.Item("Age5").Value + 1)
  loc_17EFD33:                     var_14C = " - "
  loc_17EFD38:                     var_1C0 = (Str(Ucase("P6")) + "'")
  loc_17EFD4B:                     var_25C = var_88.Fields
  loc_17EFD53:                     var_260 = var_25C.Item("Age6")
  loc_17EFD6A:                     var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_260)))
  loc_17EFD8F:                     Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17EFD97:                     Call 0.Method_arg_20 (var_290)
  loc_17EFD9F:                     Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17EFDCC:                   Else
  loc_17EFDEE:                     If (var_288 = Ucase("P7")) Then
  loc_17EFE05:                       var_160 = var_88.Fields
  loc_17EFE0D:                       var_180 = var_160.Item("Age6")
  loc_17EFE45:                       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17EFE4D:                       Call 0.Method_arg_20 (var_260)
  loc_17EFE55:                       Call 0.Method_arg_38 (CStr("'Above " & Str(CVar(var_180)) & "'"))
  loc_17EFE74:                     Else
  loc_17EFE96:                       If (var_288 = Ucase("P8")) Then
  loc_17EFEA1:                         If (arg_10 = "Dr") Then
  loc_17EFEB7:                           Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17EFEBF:                           Call 0.Method_arg_20 (var_180)
  loc_17EFEC7:                           Call 0.Method_arg_38 ("'Total Debit'")
  loc_17EFED6:                         Else
  loc_17EFEDE:                           If (arg_10 = "Cr") Then
  loc_17EFEF4:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17EFEFC:                             Call 0.Method_arg_20 (var_180)
  loc_17EFF04:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17EFF10:                           End If
  loc_17EFF10:                         End If
  loc_17EFF13:                       Else
  loc_17EFF35:                         If (var_288 = Ucase("P9")) Then
  loc_17EFF40:                           If (arg_10 = "Dr") Then
  loc_17EFF56:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17EFF5E:                             Call 0.Method_arg_20 (var_180)
  loc_17EFF66:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17EFF75:                           Else
  loc_17EFF7D:                             If (arg_10 = "Cr") Then
  loc_17EFF93:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17EFF9B:                               Call 0.Method_arg_20 (var_180)
  loc_17EFFA3:                               Call 0.Method_arg_38 ("'Total Debit'")
  loc_17EFFAF:                             End If
  loc_17EFFAF:                           End If
  loc_17EFFB2:                         Else
  loc_17EFFD4:                           If (var_288 = Ucase("HEADI")) Then
  loc_17EFFDF:                             If (arg_10 = "Dr") Then
  loc_17EFFF5:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17EFFFD:                               Call 0.Method_arg_20 (var_180)
  loc_17F0005:                               Call 0.Method_arg_38 ("'<----------------------------- AMOUNT DEBITED FROM DAYS ------------------------------>'")
  loc_17F0014:                             Else
  loc_17F001C:                               If (arg_10 = "Cr") Then
  loc_17F0032:                                 Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F003A:                                 Call 0.Method_arg_20 (var_180)
  loc_17F0042:                                 Call 0.Method_arg_38 ("'<----------------------------- AMOUNT CREDITED FROM DAYS ------------------------------>'")
  loc_17F004E:                               End If
  loc_17F004E:                             End If
  loc_17F0051:                           Else
  loc_17F0073:                             If (var_288 = Ucase("PageNo")) Then
  loc_17F00C9:                               Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F00D1:                               Call 0.Method_arg_20 (var_260)
  loc_17F00D9:                               Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_17F00F8:                             Else
  loc_17F011A:                               If (var_288 = Ucase("DT")) Then
  loc_17F011D:                                 var_13C = "'"
  loc_17F0137:                                 var_160 = Me.Fields
  loc_17F015C:                                 var_178 = CStr(var_13C & var_160.Item("daterfill").Value & "'")
  loc_17F0170:                                 Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F0178:                                 Call 0.Method_arg_20 (var_260)
  loc_17F0180:                                 Call 0.Method_arg_38 (var_178)
  loc_17F019C:                               End If
  loc_17F019C:                             End If
  loc_17F019C:                           End If
  loc_17F019C:                         End If
  loc_17F019C:                       End If
  loc_17F019C:                     End If
  loc_17F019C:                   End If
  loc_17F019C:                 End If
  loc_17F019C:               End If
  loc_17F019C:             End If
  loc_17F019C:           End If
  loc_17F019C:         End If
  loc_17F019C:       End If
  loc_17F019C:     End If
  loc_17F019C:   End If
  loc_17F019F: Next var_278 'Integer
  loc_17F01BD: Call 0.Method_arg_64 (var_160, CVar(var_90))
  loc_17F01C5: Call 0.Method_arg_2C (var_13C)
  loc_17F01D2: Set var_88 = Nothing
  loc_17F01DA: Set var_8C = Nothing
  loc_17F01E2: Set var_90 = Nothing
  loc_17F01EA: Set var_94 = Nothing
  loc_17F01ED: Exit Sub
  loc_17F01EE: ' Referenced from: 17EE098
  loc_17F01FC: Call 0.Method_arg_50 (var_178, 0)
  loc_17F0211: Proc_183_57_104B0BC(var_178, "AgeingReport")
  loc_17F021D: Exit Sub
End Sub

Public Sub Proc_245_90_EB0E2C(arg_C) 'EB0E2C
  'Data Table: 58C0E4
  loc_EB0D95: If (CInt(arg_C) = 1) Then
  loc_EB0D9F:   var_86 = CByte(5) 'Byte
  loc_EB0DA6: Else
  loc_EB0DAF:   If (CInt(arg_C) = 2) Then
  loc_EB0DB9:     var_86 = CByte(&H1D) 'Byte
  loc_EB0DC0:   Else
  loc_EB0DC9:     If (CInt(arg_C) = 3) Then
  loc_EB0DD3:       var_86 = CByte(8) 'Byte
  loc_EB0DDA:     Else
  loc_EB0DE3:       If (CInt(arg_C) = 4) Then
  loc_EB0DED:         var_86 = CByte(&HE) 'Byte
  loc_EB0DF4:       Else
  loc_EB0DFD:         If (CInt(arg_C) = 5) Then
  loc_EB0E07:           var_86 = CByte(&H1F) 'Byte
  loc_EB0E0E:         Else
  loc_EB0E17:           If (CInt(arg_C) = 6) Then
  loc_EB0E21:             var_86 = CByte(0) 'Byte
  loc_EB0E25:           End If
  loc_EB0E25:         End If
  loc_EB0E25:       End If
  loc_EB0E25:     End If
  loc_EB0E25:   End If
  loc_EB0E25: End If
  loc_EB0E25: Proc_245_90_EB0E2C = 
End Sub

Public Sub Proc_245_91_F3AE18
  'Data Table: 58C0E4
  Dim var_B0 As Variant
  Dim var_B4 As TextBox
  loc_F3AD12: Set var_B4 = (CVar("Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Microsoft Mail(*.MAPI)|*.MAPI|"))
  loc_F3AD30: Set var_B4 = TXTE_DATE.DispID_3("Select File Name")
  loc_F3AD42: Set var_B4 = (TXTE_DATE.DispID_2)
  loc_F3AD48: Call {F6710AD1-FE03-43A4-A134C278D02A233A}.DispID_1F
  loc_F3AD57: Set var_B4 = ()
  loc_F3AD76: If (CStr(TXTE_DATE.DispID_1) <> vbNullString) Then
  loc_F3AD92:   Set var_C8 = global_192.ExportOptions 
  loc_F3AD9E:   Call 0.Method_arg_2C (1)
  loc_F3ADAA:   Set var_B4 = (var_CC)
  loc_F3ADBE:   Call Proc_245_90_EB0E2C(CByte(CInt(TXTE_DATE.DispID_17)))
  loc_F3ADCB:   Call 0.Method_arg_24 (CLng(var_CC))
  loc_F3ADDA:   Set var_B4 = ()
  loc_F3ADEE:   Call 0.Method_arg_3C (CStr(TXTE_DATE.DispID_1))
  loc_F3ADFE:   Set var_C8 = Nothing 
  loc_F3AE02:   var_B0 = False
  loc_F3AE0F:   Call global_192.Export
  loc_F3AE15: End If
  loc_F3AE15: Exit Sub
End Sub

Public Sub Proc_245_92_14984AC(arg_C, arg_10, arg_14, arg_18) '14984AC
  'Data Table: 58C0E4
  Dim var_CC As Long
  Dim var_FC As String
  Dim var_DC As Variant
  Dim var_11C As String
  Dim var_12C As Variant
  Dim var_A4 As String
  Dim var_10C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_18C As String
  Dim var_184 As TextBox
  loc_1497874: On Error Goto loc_1498471
  loc_149787D: If (arg_10 = 1) Then
  loc_1497886:   Call 0.Method_arg_7C (var_C8)
  loc_149788E:   var_CC = var_C8
  loc_149789A:   If (var_CC = &H10C) Then
  loc_14978BE:     MsgBox("Please Set 132 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_12C, var_14C)
  loc_14978D1:   Else
  loc_14978DA:     If (var_CC = &H107) Then
  loc_14978FE:       MsgBox("Please Set 80 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_12C, var_14C)
  loc_1497911:     Else
  loc_149791A:       If (var_CC = 9) Then
  loc_149793E:         MsgBox("Please Set A4 Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_12C, var_14C)
  loc_1497951:       Else
  loc_1497957:         Call 0.Method_arg_7C (var_C8)
  loc_1497989:         var_12C = ("Paper Size No. is " + Str(CVar(var_C8)))
  loc_149798D:         MsgBox(var_12C, &H40, "Paper Setting", var_15C, var_17C)
  loc_14979A1:       End If
  loc_14979A1:     End If
  loc_14979A1:   End If
  loc_14979A5:   var_BA = CByte(0) 'Byte
  loc_14979B5:   Call 0.Method_Proc_245_92_14984AC8 ("C:\REPTMP", var_17E)
  loc_14979C0:   If (var_17E = 0) Then
  loc_14979CF:     Call 0.Method_arg_74 ("C:\REPTMP", var_184)
  loc_14979D7:     ' Referenced from: 1497B7E
  loc_14979D7:   End If
  loc_14979D9:   If &HFF Then
  loc_14979E5:     If (CInt(var_BA) >= &H64) Then
  loc_14979F3:       For var_188 = CByte(1) To CByte(&H64): var_BA = var_188 'Byte
  loc_1497A1C:         var_12C = ("C:\REPTMP\REP" + Trim(Str(var_BA)))
  loc_1497A51:         var_A4 = var_18C
  loc_1497A5C:         var_10C = (Trim(CStr(var_12C)) + ".TXT")
  loc_1497A6A:         Call 0.Method_Proc_245_92_14984AC4 (CStr(Trim(Str(var_BA))), var_17E, var_A4)
  loc_1497A80:         If var_17E Then
  loc_1497AA2:           var_A4 = var_18C
  loc_1497AAD:           var_10C = (Trim(var_A4) + ".TXT")
  loc_1497ABB:           Call 0.Method_arg_5C (CStr(Trim(Str(var_BA))), 0)
  loc_1497ACE:         End If
  loc_1497AD1:       Next var_188 'Byte
  loc_1497ADB:       var_BA = CByte(1) 'Byte
  loc_1497ADF:     End If
  loc_1497B02:     var_12C = ("C:\REPTMP\REP" + Trim(Str(var_BA)))
  loc_1497B37:     var_A4 = var_18C
  loc_1497B42:     var_10C = (Trim(CStr(var_12C)) + ".TXT")
  loc_1497B50:     Call 0.Method_Proc_245_92_14984AC4 (CStr(Trim(Str(var_BA))), var_17E)
  loc_1497B66:     If var_17E Then
  loc_1497B74:       var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_1497B7B:     Else
  loc_1497B7E:     Else
  loc_1497B7E:       GoTo loc_14979D7
  loc_1497B81:     End If
  loc_1497B81:   End If
  loc_1497B9E:   var_A4 = var_18C
  loc_1497BA9:   var_10C = (Trim(var_A4) + ".TXT")
  loc_1497BB7:   Call 0.Method_arg_DC (var_184, CStr(Trim(Str(var_BA))))
  loc_1497BBF:   Call 0.Method_arg_3C (var_A4)
  loc_1497BDB:   If (arg_18 = &HFF) Then
  loc_1497BE9:     Call 0.Method_arg_DC (var_184)
  loc_1497BF1:     Call 0.Method_arg_24 (&HA)
  loc_1497BFC:   Else
  loc_1497C07:     Call 0.Method_arg_DC (var_184)
  loc_1497C0F:     Call 0.Method_arg_24 (8)
  loc_1497C17:   End If
  loc_1497C1F:   Call 0.Method_arg_DC (var_184)
  loc_1497C27:   Call 0.Method_arg_64 (&H3C)
  loc_1497C3A:   Call 0.Method_arg_DC (var_184)
  loc_1497C42:   Call 0.Method_arg_2C (1)
  loc_1497C58:   Call 0.Method_arg_90 (var_184, var_C8)
  loc_1497C60:   Call 0.Method_arg_24 (var_C2)
  loc_1497C6C:   For var_194 =  To CInt(var_C8): 1 = var_194 'Integer
  loc_1497C82:     Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497C8A:     Call 0.Method_arg_20 (var_198)
  loc_1497C92:     Call 0.Method_arg_30 (var_18C)
  loc_1497CA8:     var_1A8 = Ucase(CVar(var_18C)) 'Variant
  loc_1497CD8:     If (var_1A8 = Ucase("comp_name")) Then
  loc_1497CF5:       var_10C = (Chr(&H1B) + "W1")
  loc_1497D01:       var_12C = Chr(&H1B)
  loc_1497D09:       var_14C = (Ucase("comp_name") + var_12C)
  loc_1497D12:       var_15C = ("Paper Setting" + "W1")
  loc_1497D26:       var_1B8 = (var_15C + Chr(&H1B))
  loc_1497D2F:       var_1C8 = (var_1B8 + "E")
  loc_1497D43:       var_1E8 = (var_1C8 + Chr(&H1B))
  loc_1497D4C:       var_1F8 = (var_1E8 + "G")
  loc_1497D56:       var_208 = (var_1F8 + CVar(MemVar_1F95130))
  loc_1497D6A:       var_228 = (var_208 + Chr(&H1B))
  loc_1497D73:       var_248 = (var_228 + "H")
  loc_1497D87:       var_268 = (var_248 + Chr(&H1B))
  loc_1497D90:       var_288 = (var_268 + "F")
  loc_1497DA4:       var_2A8 = (var_288 + Chr(&H1B))
  loc_1497DAD:       var_2C8 = (var_2A8 + "W0")
  loc_1497DC1:       var_2E8 = (var_2C8 + Chr(&H1B))
  loc_1497DCA:       var_308 = (var_2E8 + "W0")
  loc_1497DEC:       Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497DF4:       Call 0.Method_arg_20 (var_198)
  loc_1497DFC:       Call 0.Method_arg_38 (CStr("'" & var_308 & "'"))
  loc_1497E45:     Else
  loc_1497E67:       If (var_1A8 = Ucase("comp_add1")) Then
  loc_1497E88:         Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497E90:         Call 0.Method_arg_20 (var_198)
  loc_1497E98:         Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1497EAE:       Else
  loc_1497ED0:         If (var_1A8 = Ucase("comp_pin")) Then
  loc_1497EF1:           Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497EF9:           Call 0.Method_arg_20 (var_198)
  loc_1497F01:           Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1497F17:         Else
  loc_1497F39:           If (var_1A8 = Ucase("comp_GSTIN")) Then
  loc_1497F43:             var_18C = "'" & MemVar_1F95154
  loc_1497F5A:             Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497F62:             Call 0.Method_arg_20 (var_198)
  loc_1497F6A:             Call 0.Method_arg_38 (var_18C & "'")
  loc_1497F7D:           End If
  loc_1497F7D:         End If
  loc_1497F7D:       End If
  loc_1497F7D:     End If
  loc_1497F80:   Next var_194 'Integer
  loc_1497F8D:   Call 0.Method_arg_D8 (False)
  loc_1497FAF:   var_A4 = var_18C
  loc_1497FC9:   var_10C = (Trim(var_A4) + ".TXT")
  loc_1497FD7:   Call 0.Method_arg_7C (CStr(Ucase("comp_GSTIN")), 8, 0)
  loc_1497FE2:   Set var_C0 = var_184
  loc_149800D:   Call 0.Method_arg_38 (CStr(Chr(&HC)), 0)
  loc_149801B:   Call 0.Method_Proc_245_92_14984ACC (var_184)
  loc_1498038:   Call 0.Method_arg_7C ("C:\REPTMP\REPPRINT.BAT", 2, &HFF)
  loc_1498043:   Set var_C0 = var_184
  loc_1498050:   var_18C = "TYPE &H23>" & MemVar_1F953B8
  loc_1498056:   Call 0.Method_arg_38 (var_18C, 0)
  loc_1498061:   Call 0.Method_Proc_245_92_14984ACC (var_184)
  loc_149806E:   If (MemVar_1F953BC = "Y") Then
  loc_149807D:     Call 0.Method_Proc_245_92_14984AC4 ("C:\REPTMP\REPPRINT.PIF")
  loc_1498088:     If (var_17E = 0) Then
  loc_14980A4:       MsgBox("C:\REPTMP\REPPRINT.PIF File Not Exist", 0, Ucase("comp_GSTIN"), var_12C, "Paper Setting")
  loc_14980B4:       Exit Sub
  loc_14980B5:     End If
  loc_14980D2:     var_A4 = var_18C
  loc_14980E2:     var_10C = ("C:\REPTMP\REPPRINT.PIF " + Trim(var_A4))
  loc_14980EB:     var_12C = (Ucase("comp_GSTIN") + ".TXT")
  loc_14980F8:     var_B4 = CVar(Shell(var_12C, 0)) 'Variant
  loc_149810B:   Else
  loc_1498117:     Call 0.Method_Proc_245_92_14984AC4 ("C:\REPTMP\REPPRINT.BAT", var_17E)
  loc_1498122:     If (var_17E = 0) Then
  loc_149813E:       MsgBox("C:\REPTMP\REPPRINT.BAT File Not Exist", 0, Ucase("comp_GSTIN"), var_12C, "Paper Setting")
  loc_149814E:       Exit Sub
  loc_149814F:     End If
  loc_149816C:     var_A4 = var_18C
  loc_1498174:     var_FC = "C:\REPTMP\REPPRINT.BAT "
  loc_149817C:     var_10C = (var_FC + Trim(var_A4))
  loc_1498180:     var_11C = ".TXT"
  loc_1498185:     var_12C = (Ucase("comp_GSTIN") + var_11C)
  loc_1498192:     var_B4 = CVar(Shell(var_12C, 0)) 'Variant
  loc_14981A2:   End If
  loc_14981A5: Else
  loc_14981AC:   var_18C = "* " & arg_14
  loc_14981B7:   Proc_183_13_F04C74(var_18C & " * ")
  loc_14981D1:   Call 0.Method_arg_90 (var_184, var_C8, var_C2)
  loc_14981D9:   Call 0.Method_arg_24 (1)
  loc_14981E5:   For var_34C =  To CInt(var_C8):   var_17E = var_34C 'Integer
  loc_14981FB:     Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1498203:     Call 0.Method_arg_20 (var_198)
  loc_149820B:     Call 0.Method_arg_30 (var_18C)
  loc_1498221:     var_35C = Ucase(CVar(var_18C)) 'Variant
  loc_1498251:     If (var_35C = Ucase("comp_name")) Then
  loc_1498272:       Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_149827A:       Call 0.Method_arg_20 (var_198)
  loc_1498282:       Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1498298:     Else
  loc_14982BA:       If (var_35C = Ucase("comp_add1")) Then
  loc_14982DB:         Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_14982E3:         Call 0.Method_arg_20 (var_198)
  loc_14982EB:         Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1498301:       Else
  loc_1498323:         If (var_35C = Ucase("comp_pin")) Then
  loc_1498344:           Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_149834C:           Call 0.Method_arg_20 (var_198)
  loc_1498354:           Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_149836A:         Else
  loc_149837B:           var_10C = Ucase("comp_GSTIN")
  loc_149838C:           If (var_35C = var_10C) Then
  loc_14983AD:             Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_14983B5:             Call 0.Method_arg_20 (var_198)
  loc_14983BD:             Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_14983D0:           End If
  loc_14983D0:         End If
  loc_14983D0:       End If
  loc_14983D0:     End If
  loc_14983D3:   Next var_34C 'Integer
  loc_14983DE:   If (arg_10 = 0) Then
  loc_14983E8:     var_18C = "* " & arg_14
  loc_14983F5:     Call 0.Method_arg_54 (var_18C & " *")
  loc_1498407:     global_192 = arg_C
  loc_149840E:     var_DC = CVar(arg_C) 'Address
  loc_1498417:     Set var_184 = (var_DC)
  loc_1498429:     Set var_184 = (TXTE_DATE.DispID_FA)
  loc_149842F:     Call {F6710AD1-FE03-43A4-A134C278D02A233A}.DispID_109
  loc_149843D:   Else
  loc_1498454:     Call 0.Method_Me8 (var_DC, var_FC, var_11C)
  loc_1498459:   End If
  loc_1498459: End If
  loc_149845E: IStAdFunc
  loc_1498464: var_B4 = Nothing 'Address
  loc_149846D: Set var_B8 = Nothing
  loc_1498470: Exit Sub
  loc_1498471: ' Referenced from: 1497874
  loc_1498479: Set var_184 = Err()
  loc_149847F: Call 0.Method_arg_2C (var_18C, Nothing)
  loc_1498498: MsgBox(CVar(var_18C), &H10, var_10C, var_12C, "Paper Setting")
  loc_14984AB: Exit Sub
End Sub
