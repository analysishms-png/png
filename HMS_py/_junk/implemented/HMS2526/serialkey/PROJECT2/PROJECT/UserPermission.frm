VERSION 5.00
Begin VB.Form UserPermission
  Caption = "User Permissions"
  BackColor = &HFFC0C0&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  Icon = "UserPermission.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 16155
  ClientHeight = 10155
  LockControls = -1  'True
  WhatsThisHelp = -1  'True
  PaletteMode = 1
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 9705
    Width = 16155
    Height = 450
    Visible = 0   'False
    TabIndex = 49
  End
  Begin BtnEnh BtnEnh
    Index = 0
    Left = 5925
    Top = 1875
    Width = 1020
    Height = 645
    TabIndex = 24
  End
  Begin BtnEnh BtnEnh1
    Left = 7095
    Top = 705
    Width = 2790
    Height = 855
    Visible = 0   'False
    TabIndex = 23
  End
  Begin CommandButton CmdCopyUser
    Caption = "Copy User Permission"
    BackColor = &H8080&
    Left = 5925
    Top = 6915
    Width = 1035
    Height = 630
    TabIndex = 21
    TabStop = 0   'False
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Frame FrCopyUserPermission
    Caption = "Copy User Permission"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 6975
    Top = 6465
    Width = 5940
    Height = 1815
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CommandButton CmdCopyUserPerm
      Caption = "COPY"
      BackColor = &HC0FFFF&
      Left = 4485
      Top = 795
      Width = 1065
      Height = 735
      TabIndex = 12
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin DataCombo DCFirm
      Left = 1725
      Top = 315
      Width = 4125
      Height = 330
      TabIndex = 13
    End
    Begin DataCombo DCYear
      Left = 1740
      Top = 660
      Width = 2535
      Height = 330
      TabIndex = 14
    End
    Begin DataCombo DSUserName
      Left = 1740
      Top = 1005
      Width = 2535
      Height = 330
      TabIndex = 15
    End
    Begin DataCombo DDUserName
      Left = 1740
      Top = 1350
      Width = 2535
      Height = 330
      TabIndex = 16
    End
    Begin Label Label6
      Caption = "Firm Name"
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 360
      Width = 1605
      Height = 225
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
    Begin Label Label7
      Caption = "Financial Year"
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 705
      Width = 1620
      Height = 240
      TabIndex = 19
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
    Begin Label Label8
      Caption = "Desti. User Name"
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1395
      Width = 1620
      Height = 240
      TabIndex = 18
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
    Begin Label Label9
      Caption = "Source User Name"
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1050
      Width = 1800
      Height = 225
      TabIndex = 17
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
  End
  Begin DataCombo dUserName
    Left = 1620
    Top = 570
    Width = 4245
    Height = 315
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 90
    Top = 1890
    Width = 5835
    Height = 6660
    TabIndex = 5
  End
  Begin DataCombo dFirm
    Left = 1620
    Top = 900
    Width = 4245
    Height = 315
    TabIndex = 1
  End
  Begin DataCombo dYear
    Left = 1620
    Top = 1230
    Width = 4245
    Height = 315
    TabIndex = 2
  End
  Begin DataCombo dSection
    Left = 1620
    Top = 1560
    Width = 4245
    Height = 315
    TabIndex = 3
  End
  Begin DataCombo dSubSection
    Left = 11055
    Top = 9465
    Width = 4245
    Height = 315
    Visible = 0   'False
    TabIndex = 4
  End
  Begin BtnEnh BtnEnh
    Index = 1
    Left = 5925
    Top = 2505
    Width = 1020
    Height = 645
    TabIndex = 25
  End
  Begin BtnEnh BtnEnh
    Index = 2
    Left = 5925
    Top = 3135
    Width = 1020
    Height = 645
    TabIndex = 26
  End
  Begin BtnEnh BtnEnh
    Index = 3
    Left = 5925
    Top = 3795
    Width = 1020
    Height = 645
    TabIndex = 27
  End
  Begin BtnEnh BtnEnh
    Index = 4
    Left = 5925
    Top = 4425
    Width = 1020
    Height = 645
    TabIndex = 28
  End
  Begin BtnEnh BtnEnh
    Index = 5
    Left = 5925
    Top = 5055
    Width = 1020
    Height = 645
    TabIndex = 29
  End
  Begin BtnEnh BtnEnhPrintuser
    Left = 5925
    Top = 5685
    Width = 1020
    Height = 645
    TabIndex = 30
  End
  Begin BtnEnh BtnEnhExit
    Left = 5910
    Top = 6270
    Width = 1050
    Height = 645
    TabIndex = 31
  End
  Begin SSTab SSTabSection
    Left = 7035
    Top = 2220
    Width = 3660
    Height = 4200
    Visible = 0   'False
    TabIndex = 32
    Begin TextBox Txt
      Index = 9
      ForeColor = &HC00000&
      Left = 2445
      Top = 2235
      Width = 615
      Height = 285
      TabIndex = 54
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 8
      ForeColor = &HC00000&
      Left = 2445
      Top = 1920
      Width = 615
      Height = 285
      TabIndex = 52
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 7
      ForeColor = &HC00000&
      Left = 2445
      Top = 1605
      Width = 615
      Height = 285
      TabIndex = 39
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 6
      ForeColor = &HC00000&
      Left = -73215
      Top = 1200
      Width = 975
      Height = 285
      TabIndex = 40
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 0
      ForeColor = &HC00000&
      Left = 2445
      Top = 975
      Width = 615
      Height = 285
      TabIndex = 37
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
      Appearance = 0 'Flat
    End
    Begin Frame FrmList
      BackColor = &HFF0000&
      Left = 9405
      Top = 3570
      Width = 1260
      Height = 1830
      Visible = 0   'False
      TabIndex = 41
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 135
        Top = 105
        Width = 1245
        Height = 1830
        TabStop = 0   'False
        TabIndex = 42
      End
    End
    Begin TextBox Txt
      Index = 1
      ForeColor = &HC00000&
      Left = -72315
      Top = 990
      Width = 615
      Height = 285
      TabIndex = 33
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      ForeColor = &HC00000&
      Left = -72315
      Top = 1305
      Width = 615
      Height = 285
      TabIndex = 34
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 3
      ForeColor = &HC00000&
      Left = -72315
      Top = 1620
      Width = 615
      Height = 285
      TabIndex = 35
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 4
      ForeColor = &HC00000&
      Left = 2445
      Top = 1290
      Width = 615
      Height = 285
      TabIndex = 38
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 5
      ForeColor = &HC00000&
      Left = -72315
      Top = 1935
      Width = 615
      Height = 285
      TabIndex = 36
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Refund Cash Card Amt."
      Index = 9
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 2250
      Width = 2205
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Free Item Allow"
      Index = 8
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 1935
      Width = 1515
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Change KOT Item/Qty"
      Index = 6
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 1620
      Width = 2055
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "FacilityBilling"
      Index = 5
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74655
      Top = 1200
      Width = 1305
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Discount Allow Upto"
      Index = 7
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 975
      Width = 1905
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Cancel Guest Bill"
      Index = 0
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74580
      Top = 1005
      Width = 1635
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
      Caption = "Change Room Dtl"
      Index = 1
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74580
      Top = 1320
      Width = 1665
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
      Caption = "Delete Guest Charges"
      Index = 2
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74580
      Top = 1635
      Width = 2055
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Settlement Allow"
      Index = 3
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 1305
      Width = 1635
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
      Caption = "Change Guest Charges"
      Index = 4
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74580
      Top = 1950
      Width = 2175
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
      Appearance = 0 'Flat
    End
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 22
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
  Begin Label Label5
    Caption = "Sub Section"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 9735
    Top = 9480
    Width = 1665
    Height = 270
    Visible = 0   'False
    TabIndex = 10
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
  Begin Label Label4
    Caption = "Section"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 300
    Top = 1575
    Width = 1665
    Height = 270
    TabIndex = 9
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
  Begin Label Label3
    Caption = "Financial Year"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 300
    Top = 1245
    Width = 1665
    Height = 270
    TabIndex = 8
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
  Begin Label Label2
    Caption = "Firm Name"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 300
    Top = 915
    Width = 1665
    Height = 270
    TabIndex = 7
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
    Caption = "User Name"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 300
    Top = 585
    Width = 1665
    Height = 270
    TabIndex = 6
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

Attribute VB_Name = "UserPermission"


Private Sub DCFirm_UnknownEvent_8 'E9A70C
  'Data Table: 509EA0
  loc_E9A6BD: var_B0 = "Code"
  loc_E9A6EB: Proc_6_139_EFA09C("Select CYear as Name ,Comp_Code as Code From Company Where Comp_CODE='" & CStr(Me.DCFirm.BoundText) & "'", Me.DCYear, "Name")
  loc_E9A709: Exit Sub
End Sub

Private Sub DCFirm_UnknownEvent_9 'E550B0
  'Data Table: 509EA0
  loc_E55084: Me.DCYear.Text = vbNullString
  loc_E5509C: Me.DCYear.BoundText = vbNullString
  loc_E550A7: Call DCYear_UnknownEvent_9()
  loc_E550AC: Exit Sub
End Sub

Private Sub DSUserName_UnknownEvent_8 'E9B3CC
  'Data Table: 509EA0
  Dim var_A0 As String
  loc_E9B37D: var_B0 = "Code"
  loc_E9B3A0: var_A0 = "Select User_Name as Name ,User_Name as Code From UserMast Where ActiveYN='Y' And User_Name<>'SA' And User_Name<>'" & CStr(Me.DSUserName.BoundText)
  loc_E9B3AB: Proc_6_139_EFA09C(var_A0 & "' Order By User_Name", Me.DDUserName, "Name")
  loc_E9B3C9: Exit Sub
End Sub

Private Sub DSUserName_UnknownEvent_9 'E483FC
  'Data Table: 509EA0
  loc_E483D8: Me.DDUserName.Text = vbNullString
  loc_E483F0: Me.DDUserName.BoundText = vbNullString
  loc_E483F8: Exit Sub
  loc_E483F9: StAryRecCopy
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E574D8
  'Data Table: 509EA0
  loc_E574AA: Set var_88 = Me.Txt
  loc_E574B0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E574BE: Proc_6_74_E23240(var_8C)
  loc_E574CA: Call Proc_151_31_DFD284(var_8C)
  loc_E574D5: Exit Sub
  loc_E574D6: Index.global_10240 = 
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E6B0C8
  'Data Table: 509EA0
  Dim var_86 As Integer
  loc_E6B07A: If (CLng(Shift) = &H1B) Then
  loc_E6B07D:   Call Proc_151_31_DFD284()
  loc_E6B082:   Exit Sub
  loc_E6B083: End If
  loc_E6B086: var_86 = KeyCode
  loc_E6B09E: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E6B0A7:   Proc_6_75_E5335C(Shift, arg_14)
  loc_E6B0AC: End If
  loc_E6B0B6: If (CLng(Shift) = &H26) Then
  loc_E6B0BF:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E6B0C4: End If
  loc_E6B0C4: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FFED40
  'Data Table: 509EA0
  Dim var_86 As Integer
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_FFEB3F: Proc_6_58_E06050(arg_10)
  loc_FFEB47: var_86 = KeyAscii
  loc_FFEB52: If Not (var_86 = CInt(1)) Then
  loc_FFEB5D:   If Not (var_86 = CInt(2)) Then
  loc_FFEB68:     If Not (var_86 = CInt(3)) Then
  loc_FFEB73:       If Not (var_86 = CInt(5)) Then
  loc_FFEB7E:         If Not (var_86 = CInt(4)) Then
  loc_FFEB87:           If Not (var_86 = 7) Then
  loc_FFEB90:             If Not (var_86 = 8) Then
  loc_FFEB99:               If (var_86 = 9) Then
  loc_FFEB9C:               End If
  loc_FFEB9C:             End If
  loc_FFEB9C:           End If
  loc_FFEB9C:         End If
  loc_FFEB9C:       End If
  loc_FFEB9C:     End If
  loc_FFEB9C:   End If
  loc_FFEBC5:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_FFEBD5:     Set var_CC = Me.Txt
  loc_FFEBDB:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_FFEBE3:     var_D0.Text = "Yes"
  loc_FFEBF2:   Else
  loc_FFEC1B:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_FFEC2B:       Set var_CC = Me.Txt
  loc_FFEC31:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_FFEC39:       var_D0.Text = "No"
  loc_FFEC45:     End If
  loc_FFEC45:   End If
  loc_FFEC47:   arg_10 = 0
  loc_FFEC4D: Else
  loc_FFEC55:   If (var_86 = CInt(0)) Then
  loc_FFEC5C:     Set var_D0 = Me.Txt
  loc_FFEC75:     Proc_6_42_129B55C(var_D0, KeyAscii, 2)
  loc_FFEC84:   Else
  loc_FFEC8C:     If (var_86 = CInt(6)) Then
  loc_FFECB8:       If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_FFECC8:         Set var_CC = Me.Txt
  loc_FFECCE:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Auto")
  loc_FFECD6:         var_D0.Text = 2
  loc_FFECE5:       Else
  loc_FFED0E:         If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_FFED1E:           Set var_CC = Me.Txt
  loc_FFED24:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Semi")
  loc_FFED2C:           var_D0.Text = arg_10
  loc_FFED38:         End If
  loc_FFED38:       End If
  loc_FFED3A:       arg_10 = 0
  loc_FFED3D:     End If
  loc_FFED3D:   End If
  loc_FFED3D: End If
  loc_FFED3D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00ACC
  'Data Table: 509EA0
  Dim var_86 As Integer
  loc_E00AC7: var_86 = KeyCode
  loc_E00ACA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4700C
  'Data Table: 509EA0
  loc_E46FEA: Set var_88 = Me.Txt
  loc_E46FF0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46FFE: Proc_6_73_E23294(var_8C)
  loc_E4700A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FE3780
  'Data Table: 509EA0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  loc_FE35B0: On Error Resume Next
  loc_FE35B5: Call Proc_151_31_DFD284()
  loc_FE35BF: var_86 = Cancel
  loc_FE35CC: If Not (var_86 = CInt(1)) Then
  loc_FE35D7:   If Not (var_86 = CInt(2)) Then
  loc_FE35E2:     If Not (var_86 = CInt(3)) Then
  loc_FE35ED:       If Not (var_86 = CInt(5)) Then
  loc_FE35F8:         If Not (var_86 = CInt(4)) Then
  loc_FE3601:           If Not (var_86 = 7) Then
  loc_FE360A:             If Not (var_86 = 8) Then
  loc_FE3613:               If (var_86 = 9) Then
  loc_FE3616:               End If
  loc_FE3616:             End If
  loc_FE3616:           End If
  loc_FE3616:         End If
  loc_FE3616:       End If
  loc_FE3616:     End If
  loc_FE3616:   End If
  loc_FE3622:   Set var_8C = Me.Txt
  loc_FE3628:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE3663:   If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_FE3675:     Set var_8C = Me.Txt
  loc_FE367B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE3683:     var_90.Text = "Yes"
  loc_FE3692:   Else
  loc_FE36A3:     Set var_8C = Me.Txt
  loc_FE36A9:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE36B1:     var_90.Text = "No"
  loc_FE36BD:   End If
  loc_FE36C2: Else
  loc_FE36CC:   If (var_86 = CInt(6)) Then
  loc_FE36DB:     Set var_8C = Me.Txt
  loc_FE36E1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE371C:     If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_FE372E:       Set var_8C = Me.Txt
  loc_FE3734:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE373C:       var_90.Text = "Auto"
  loc_FE374B:     Else
  loc_FE375C:       Set var_8C = Me.Txt
  loc_FE3762:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE376A:       var_90.Text = "Semi"
  loc_FE3776:     End If
  loc_FE3778:   End If
  loc_FE3778: End If
  loc_FE377C: Exit Sub
End Sub

Private Sub dFirm_UnknownEvent_8 'ED8A6C
  'Data Table: 509EA0
  loc_ED89E0: Me.dYear.BoundText = vbNullString
  loc_ED89F8: Me.dYear.Text = vbNullString
  loc_ED8A1D: var_D0 = "Code"
  loc_ED8A4B: Proc_6_139_EFA09C("Select CYear as Name ,Comp_Code as Code From Company Where Comp_cODE='" & CStr(Me.dFirm.BoundText) & "'", Me.dYear, "Name")
  loc_ED8A69: Exit Sub
End Sub

Private Sub dFirm_UnknownEvent_B 'E26BD4
  'Data Table: 509EA0
  loc_E26BBA: If (CLng(Cancel) = &HD) Then
  loc_E26BCB:   Proc_303_0_FBACC8("	")
  loc_E26BD3: End If
  loc_E26BD3: Exit Sub
End Sub

Private Sub BtnEnh_UnknownEvent_9 '18F8894
  'Data Table: 509EA0
  Dim var_A2 As Integer
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_134 As Variant
  Dim var_164 As String
  Dim var_180 As Double
  Dim var_DC As Variant
  Dim var_168 As String
  Dim var_16C As String
  Dim var_170 As String
  Dim unk_509ECB As Connection15
  Dim var_120 As Variant
  Dim var_174 As Variant
  Dim var_144 As Variant
  Dim var_184 As String
  Dim var_188 As String
  Dim var_194 As String
  Dim var_88 As Recordset15
  Dim var_9E As Integer
  Dim var_1AC As Variant
  Dim var_11C As Variant
  Dim var_1CC As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_178 As Variant
  Dim var_154 As Variant
  Dim var_260 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_410 As Variant
  Dim var_420 As Variant
  Dim var_464 As Variant
  Dim var_488 As Variant
  Dim var_4CC As Variant
  Dim var_4E0 As Variant
  Dim var_214 As String
  Dim var_218 As String
  Dim var_36C As Variant
  Dim var_38C As Variant
  Dim var_3AC As Variant
  Dim var_430 As Variant
  Dim var_440 As Variant
  Dim var_460 As Variant
  Dim var_498 As Variant
  Dim var_4C8 As Variant
  Dim var_500 As Variant
  Dim var_98 As Recordset15
  Dim var_478 As Fields15
  Dim var_1F0 As Variant
  Dim var_550 As Fields15
  Dim var_4F0 As Variant
  Dim var_23C As Variant
  Dim var_558 As Fields15
  Dim var_544 As Variant
  Dim var_56C As Variant
  Dim var_590 As Fields15
  Dim var_594 As Field20
  Dim var_5B4 As Variant
  Dim var_5C4 As Variant
  Dim var_548 As Field20
  Dim var_5A4 As Variant
  Dim var_5D8 As Fields15
  Dim var_5DC As Variant
  Dim var_5EC As Variant
  Dim var_5FC As Variant
  Dim var_A0 As Integer
  Dim var_5D4 As Variant
  Dim var_660 As Variant
  Dim var_6E0 As Variant
  Dim var_60C As Variant
  Dim var_680 As Variant
  Dim var_690 As Variant
  Dim var_700 As Variant
  Dim var_34C As Variant
  Dim var_670 As Variant
  Dim var_6B0 As Variant
  Dim var_6F0 As Variant
  Dim BtnEnh_UnknownEvent_94 As Variant
  loc_18F5F28: On Error Goto loc_18F8842
  loc_18F5F30: var_A2 = Cancel
  loc_18F5F3B: If (var_A2 = 0) Then
  loc_18F5F68:   For var_BC = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_8E = var_BC 'Byte
  loc_18F5F82:     Me.FGrid.Col = CVar(CLng(7))
  loc_18F5FA0:     Me.FGrid.Row = CVar(CLng(var_8E))
  loc_18F5FBA:     Me.FGrid.CellFontName = "wingdings"
  loc_18F5FD6:     Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_18F5FF2:     Me.FGrid.Col = CVar(CLng(5))
  loc_18F6018:     If (CBool(Me.FGrid.CellFontBold) = &HFF) Then
  loc_18F602F:       Me.FGrid.Col = CVar(CLng(7))
  loc_18F604C:       Me.FGrid.CellForeColor = &HFF
  loc_18F6057:     Else
  loc_18F606D:       Me.FGrid.Col = CVar(CLng(7))
  loc_18F608A:       Me.FGrid.CellForeColor = &HFF00FF
  loc_18F6092:     End If
  loc_18F609B:     var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F60B3:     var_EC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_18F60B8:     var_10C = "þ"
  loc_18F60C2:     Set var_120 = Me.FGrid
  loc_18F60C8:     LateIdCallSt
  loc_18F60DF:   Next var_BC 'Byte
  loc_18F60E8: Else
  loc_18F60F0:   If (var_A2 = 1) Then
  loc_18F611D:     For var_124 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):   var_8E = var_124 'Byte
  loc_18F6139:       Me.FGrid.Row = CVar(CLng(var_8E))
  loc_18F6155:       Me.FGrid.Col = CVar(CLng(5))
  loc_18F617B:       If (CBool(Me.FGrid.CellFontBold) = 0) Then
  loc_18F6185:         var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F618D:         var_EC = CVar(CLng(&HB)) 'Long
  loc_18F61D3:         If CBool(Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) <> "R") Then
  loc_18F61EA:           Me.FGrid.Col = CVar(CLng(8))
  loc_18F6204:           Me.FGrid.CellFontName = "wingdings"
  loc_18F6220:           Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_18F623D:           Me.FGrid.CellForeColor = &HFF0000
  loc_18F624C:           var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6254:           var_EC = CVar(CLng(8)) 'Long
  loc_18F6259:           var_10C = "þ"
  loc_18F6263:           Set var_A8 = Me.FGrid
  loc_18F6269:           LateIdCallSt
  loc_18F6274:         End If
  loc_18F6276:       End If
  loc_18F627D:     Next var_124 'Byte
  loc_18F6286:   Else
  loc_18F628E:     If (var_A2 = 2) Then
  loc_18F62BB:       For var_158 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):     var_8E = var_158 'Byte
  loc_18F62D7:         Me.FGrid.Row = CVar(CLng(var_8E))
  loc_18F62F3:         Me.FGrid.Col = CVar(CLng(5))
  loc_18F6319:         If (CBool(Me.FGrid.CellFontBold) = 0) Then
  loc_18F6323:           var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F632B:           var_EC = CVar(CLng(&HB)) 'Long
  loc_18F6371:           If CBool(Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) <> "R") Then
  loc_18F6388:             Me.FGrid.Col = CVar(CLng(9))
  loc_18F63A2:             Me.FGrid.CellFontName = "wingdings"
  loc_18F63BE:             Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_18F63DB:             Me.FGrid.CellForeColor = &HFF0000
  loc_18F63EA:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F63F2:             var_EC = CVar(CLng(9)) 'Long
  loc_18F63F7:             var_10C = "þ"
  loc_18F6401:             Set var_A8 = Me.FGrid
  loc_18F6407:             LateIdCallSt
  loc_18F6412:           End If
  loc_18F6414:         End If
  loc_18F641B:       Next var_158 'Byte
  loc_18F6424:     Else
  loc_18F642C:       If (var_A2 = 3) Then
  loc_18F6459:         For var_15C = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):       var_8E = var_15C 'Byte
  loc_18F6475:           Me.FGrid.Row = CVar(CLng(var_8E))
  loc_18F6491:           Me.FGrid.Col = CVar(CLng(5))
  loc_18F64B7:           If (CBool(Me.FGrid.CellFontBold) = 0) Then
  loc_18F64C1:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F64C9:             var_EC = CVar(CLng(&HB)) 'Long
  loc_18F64ED:             var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_18F650F:             If CBool(Left(var_134, 1) <> "R") Then
  loc_18F6526:               Me.FGrid.Col = CVar(CLng(&HA))
  loc_18F6540:               Me.FGrid.CellFontName = "wingdings"
  loc_18F655C:               Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_18F6579:               Me.FGrid.CellForeColor = &HFF0000
  loc_18F6588:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6590:               var_EC = CVar(CLng(&HA)) 'Long
  loc_18F6595:               var_10C = "þ"
  loc_18F659F:               Set var_A8 = Me.FGrid
  loc_18F65A5:               LateIdCallSt
  loc_18F65B0:             End If
  loc_18F65B2:           End If
  loc_18F65B9:         Next var_15C 'Byte
  loc_18F65C2:       Else
  loc_18F65CA:         If (var_A2 = 4) Then
  loc_18F65F7:           For var_160 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):         var_8E = var_160 'Byte
  loc_18F6604:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F660C:             var_EC = CVar(CLng(7)) 'Long
  loc_18F6611:             var_10C = "o"
  loc_18F661B:             Set var_A8 = Me.FGrid
  loc_18F6621:             LateIdCallSt
  loc_18F6633:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F663B:             var_EC = CVar(CLng(&HB)) 'Long
  loc_18F6666:             If (CStr(Me.FGrid.TextMatrix)) = "E") Then
  loc_18F6670:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6678:               var_EC = CVar(CLng(8)) 'Long
  loc_18F667D:               var_10C = "o"
  loc_18F6687:               Set var_A8 = Me.FGrid
  loc_18F668D:               LateIdCallSt
  loc_18F6698:             End If
  loc_18F669F:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F66A7:             var_EC = CVar(CLng(&HB)) 'Long
  loc_18F66D2:             If (CStr(Me.FGrid.TextMatrix)) = "E") Then
  loc_18F66DC:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F66E4:               var_EC = CVar(CLng(9)) 'Long
  loc_18F66E9:               var_10C = "o"
  loc_18F66F3:               Set var_A8 = Me.FGrid
  loc_18F66F9:               LateIdCallSt
  loc_18F6704:             End If
  loc_18F670B:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6713:             var_EC = CVar(CLng(&HB)) 'Long
  loc_18F673E:             If (CStr(Me.FGrid.TextMatrix)) = "E") Then
  loc_18F6748:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6750:               var_EC = CVar(CLng(&HA)) 'Long
  loc_18F6755:               var_10C = "o"
  loc_18F675F:               Set var_A8 = Me.FGrid
  loc_18F6765:               LateIdCallSt
  loc_18F6770:             End If
  loc_18F6775:           Next var_160 'Byte
  loc_18F677E:         Else
  loc_18F6786:           If (var_A2 = 5) Then
  loc_18F67AE:             If (CStr(Me.dUserName.BoundText) = "SA") Then
  loc_18F67B3:               Exit Sub
  loc_18F67B4:             End If
  loc_18F67D6:             var_DC = 0
  loc_18F67FF:             var_170 = "SELECT Comp_Code FROM Company WHERE Cast(Comp_Code As Integer)=" & CStr(Val(CStr(Me.dYear.BoundText))) & vbNullString
  loc_18F6808:             unk_509ECB.Execute var_170, var_134, -1
  loc_18F6810:             var_120 = var_120.Fields
  loc_18F6818:             var_DC = var_174.Item(var_174)
  loc_18F6820:             var_144 = CVar(var_178) 'Address
  loc_18F6830:             var_8C = CStr(Trim(var_144))
  loc_18F686B:             Set var_120 = Me.dUserName
  loc_18F6871:             var_134 = var_120.BoundText
  loc_18F68B6:             var_188 = "Delete From MenuHelp Where Opt1=" & CStr(Me.dSection.BoundText) & " And (UserName='" & CStr(var_134) & "' And Cast(CompCode As Integer)="
  loc_18F68D2:             unk_509ECB.Execute var_188 & CStr(Val(var_8C)) & ")", var_144, -1
  loc_18F6928:             For var_198 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):           var_8E = var_198 'Byte
  loc_18F6938:               var_180 = Val(var_8C)
  loc_18F6940:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F697C:               var_168 = "SELECT [Option],Menu_Index,OutletCode,Module_Name FROM MenuHelp WHERE UserName='SA' And Cast(CompCode As Integer)=" & CStr(var_180)
  loc_18F6997:               unk_509ECB.Execute var_168 & " AND Code=" & CStr(Me.FGrid.TextMatrix)), var_134, -1
  loc_18F69A2:               Set var_88 = var_120
  loc_18F69D6:               If (var_88.RecordCount > 0) Then
  loc_18F6A06:                 var_9C = CStr(var_88.Fields.Item("Option").Value)
  loc_18F6A18:                 var_CC = "Menu_Index"
  loc_18F6A2C:                 var_120 = var_88.Fields.Item(var_CC)
  loc_18F6A3B:                 Proc_6_39_E7D3A0(var_134, CVar(var_120), var_120, CVar(var_120), CVar(CLng(6)), var_CC, var_180)
  loc_18F6A44:                 var_9E = CInt(var_134)
  loc_18F6A51:               End If
  loc_18F6A62:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6A6A:               var_EC = CVar(CLng(8)) 'Long
  loc_18F6ABC:               var_1CC = (CVar(vbNullString) + IIf((CStr(Me.FGrid.TextMatrix)) = "þ"), "A", "*"))
  loc_18F6AE0:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6AE8:               var_EC = CVar(CLng(9)) 'Long
  loc_18F6B3A:               var_1CC = (CVar(CStr(var_1CC)) + IIf((CStr(Me.FGrid.TextMatrix)) = "þ"), "E", "*"))
  loc_18F6B5E:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6B66:               var_EC = CVar(CLng(&HA)) 'Long
  loc_18F6BB8:               var_1CC = (CVar(CStr(var_1CC)) + IIf((CStr(Me.FGrid.TextMatrix)) = "þ"), "D", "*"))
  loc_18F6BDC:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6BE4:               var_EC = CVar(CLng(7)) 'Long
  loc_18F6C36:               var_1CC = (CVar(CStr(var_1CC)) + IIf((CStr(Me.FGrid.TextMatrix)) = "þ"), "P", "*"))
  loc_18F6C5A:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6C62:               var_EC = CVar(CLng(7)) 'Long
  loc_18F6C8D:               If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_18F6CAA:                 var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6CB2:                 var_EC = CVar(CLng(1)) 'Long
  loc_18F6CD2:                 var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F6CDA:                 var_1AC = CVar(CLng(2)) 'Long
  loc_18F6CE9:                 var_144 = Me.FGrid.TextMatrix)
  loc_18F6CFA:                 var_1E0 = CVar(CLng(var_8E)) 'Long
  loc_18F6D02:                 var_200 = CVar(CLng(3)) 'Long
  loc_18F6D0B:                 Set var_178 = Me.FGrid
  loc_18F6D11:                 var_154 = var_178.TextMatrix)
  loc_18F6D39:                 var_1CC = Me.FGrid.TextMatrix)
  loc_18F6D61:                 var_2C0 = Me.FGrid.TextMatrix)
  loc_18F6D9A:                 Proc_6_17_EAAE40(var_34C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8E)), var_2C0, CVar(CLng(6)), CVar(CLng(var_8E)), var_1CC)
  loc_18F6DBB:                 var_420 = Me.FGrid.TextMatrix)
  loc_18F6DE6:                 var_488 = CVar(var_88.Fields.Item("OutletCode")) 'Address
  loc_18F6E2D:                 var_164 = "insert into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,Flag,OutletCode,Module_Name) Values ('" & var_8C
  loc_18F6E6A:                 var_214 = var_164 & "','" & CStr(Me.dUserName.BoundText) & "'," & CStr(Me.FGrid.TextMatrix)) & "," & CStr(var_144) & ","
  loc_18F6EB9:                 var_36C = CVar(var_214 & CStr(var_154) & "," & CStr(var_1CC) & "," & CStr(var_2C0) & "," & CStr(var_9E) & ",") & var_34C 
  loc_18F6EF0:                 var_498 = CVar(Proc_6_38_E69628(var_488, var_420, CVar(CLng(&HB)), CVar(CLng(var_8E)), CVar(CLng(4)), CVar(CLng(var_8E)))) 'String
  loc_18F6F03:                 var_500 = var_36C & ",'" & CVar(CStr(var_1CC)) & "','" & CVar(CStr(var_420)) & "','" & var_498 & "','" & var_88.Fields.Item("Module_name").Value 
  loc_18F6F1A:                 unk_509ECB.Execute CStr(var_500 & "')"), var_544, -1
  loc_18F6FAB:                 var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6FB3:                 var_EC = CVar(CLng(1)) 'Long
  loc_18F6FDE:                 If (CStr(Me.FGrid.TextMatrix)) <> "0") Then
  loc_18F6FE8:                   var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F6FF0:                   var_EC = CVar(CLng(1)) 'Long
  loc_18F700F:                   Set var_120 = Me.dUserName
  loc_18F7015:                   var_134 = var_120.BoundText
  loc_18F702F:                   var_11C = 0
  loc_18F7057:                   var_16C = "Select Count(*) From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix)) & " And Opt2=0 And Opt3=0 And Opt4=0  And UserName='"
  loc_18F7085:                   unk_509ECB.Execute var_16C & CStr(var_134) & "' And Cast(CompCode As Integer)=" & CStr(Val(var_8C)) & vbNullString, var_144, -1
  loc_18F708D:                   var_174 = var_174.Fields
  loc_18F7095:                   var_11C = var_178.Item(var_178)
  loc_18F709D:                   var_260 = var_260.Value
  loc_18F70DA:                   If (var_154 = 0) Then
  loc_18F70E4:                     var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F70EC:                     var_EC = CVar(CLng(1)) 'Long
  loc_18F710F:                     var_180 = Val(var_8C)
  loc_18F712A:                     var_168 = "Select OPT1,OPT2,OPT3,OPT4,Code,[Option],Flag,OutletCode,Module_Name From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix))
  loc_18F713D:                     var_184 = var_168 & " And Opt2=0 And Opt3=0 And Opt4=0 And UserName='SA' And Cast(CompCode As Integer)=" & CStr(var_180)
  loc_18F714D:                     unk_509ECB.Execute var_184 & vbNullString, var_134, -1
  loc_18F7158:                     Set var_98 = var_120
  loc_18F718E:                     If (var_98.RecordCount > 0) Then
  loc_18F71A7:                       var_164 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,Flag,OutletCode,Module_Name) Values ('" & var_8C
  loc_18F71BB:                       var_B8 = Me.dUserName.BoundText
  loc_18F71D7:                       var_CC = "Opt1"
  loc_18F71E3:                       var_120 = var_98.Fields
  loc_18F71FB:                       var_154 = CVar(var_164 & "','" & CStr(var_B8) & "',") & var_120.Item(var_CC).Value 
  loc_18F7204:                       var_1CC = var_154 & "," 
  loc_18F720E:                       var_EC = "Opt2"
  loc_18F7222:                       var_260 = var_98.Fields.Item(var_EC)
  loc_18F72A0:                       var_3AC = var_1CC & var_260.Value & "," & var_98.Fields.Item("Opt3").Value & "," & var_98.Fields.Item("Opt4").Value 
  loc_18F72DB:                       var_1F0 = ",-1,"
  loc_18F730A:                       Proc_6_17_EAAE40(var_488, CVar(var_98.Fields.Item("Option")), var_3AC & "," & var_98.Fields.Item("Code").Value & var_1F0, var_5D4, -1, var_5D8, var_120)
  loc_18F733E:                       var_4C8 = CVar(var_98.Fields.Item("Flag")) 'Address
  loc_18F737F:                       var_56C = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("OutletCode")), var_CC & CVar(Proc_6_38_E69628(var_4C8, var_180 & var_488 & ",Null,'", var_B8, var_EC)) & "','")) 'String
  loc_18F73D0:                       unk_509ECB.Execute CStr(var_154 & var_56C & "','" & var_98.Fields.Item("Module_name").Value & "')"), var_180, 
  loc_18F744C:                     End If
  loc_18F744E:                   End If
  loc_18F7450:                 End If
  loc_18F7459:                 var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7461:                 var_EC = CVar(CLng(2)) 'Long
  loc_18F748C:                 If (CStr(Me.FGrid.TextMatrix)) <> "0") Then
  loc_18F7496:                   var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F749E:                   var_EC = CVar(CLng(1)) 'Long
  loc_18F74BE:                   var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F74C6:                   var_1AC = CVar(CLng(2)) 'Long
  loc_18F74E5:                   Set var_174 = Me.dUserName
  loc_18F74EB:                   var_144 = var_174.BoundText
  loc_18F7505:                   var_1F0 = 0
  loc_18F7538:                   var_184 = "Select Count(*) From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix)) & " And Opt2=" & CStr(Me.FGrid.TextMatrix))
  loc_18F755D:                   var_214 = var_184 & " And Opt3=0 And Opt4=0  And UserName='" & CStr(var_144) & "' And Cast(CompCode As Integer)=" & CStr(Val(var_8C))
  loc_18F756D:                   unk_509ECB.Execute var_214 & vbNullString, var_154, -1
  loc_18F7575:                   var_178 = var_178.Fields
  loc_18F757D:                   var_1F0 = var_260.Item(var_260)
  loc_18F7585:                   var_2B0 = var_2B0.Value
  loc_18F75CC:                   If (var_1CC = 0) Then
  loc_18F75D6:                     var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F75DE:                     var_EC = CVar(CLng(1)) 'Long
  loc_18F75FE:                     var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F7606:                     var_1AC = CVar(CLng(2)) 'Long
  loc_18F7629:                     var_180 = Val(var_8C)
  loc_18F7644:                     var_168 = "Select OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],Flag,OutletCode,Module_Name From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix))
  loc_18F765D:                     var_188 = var_168 & " And Opt2=" & CStr(Me.FGrid.TextMatrix)) & " And Opt3=0 And Opt4=0 And UserName='SA' And Cast(CompCode As Integer)="
  loc_18F7679:                     unk_509ECB.Execute var_188 & CStr(var_180) & vbNullString, var_144, -1
  loc_18F7684:                     Set var_98 = var_174
  loc_18F76C4:                     If (var_98.RecordCount > 0) Then
  loc_18F76DD:                       var_164 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,flag,OutletCode,Module_Name) Values ('" & var_8C
  loc_18F76F1:                       var_B8 = Me.dUserName.BoundText
  loc_18F7721:                       var_174 = var_98.Fields.Item("Opt1")
  loc_18F7729:                       var_134 = var_174.Value
  loc_18F773A:                       var_1CC = CVar(var_164 & "','" & CStr(var_B8) & "',") & var_134 & "," 
  loc_18F7744:                       var_EC = "Opt2"
  loc_18F7760:                       var_2C0 = var_98.Fields.Item(var_EC).Value
  loc_18F777B:                       var_10C = "Opt3"
  loc_18F7787:                       var_2B0 = var_98.Fields
  loc_18F77B2:                       var_1AC = "Opt4"
  loc_18F780D:                       var_430 = var_1CC & var_2C0 & "," & var_2B0.Item(var_10C).Value & "," & var_98.Fields.Item(var_1AC).Value & "," & var_98.Fields.Item("Code").Value 
  loc_18F7877:                       Proc_6_17_EAAE40(var_4C8, CVar(var_98.Fields.Item("Option")), var_430 & "," & var_98.Fields.Item("Menu_Index").Value & ",", var_60C, -1, var_610, var_174)
  loc_18F78B4:                       var_544 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Flag")), var_180 & var_4C8 & ",Null,'", var_134, var_1AC)) 'String
  loc_18F78F8:                       var_5C4 = var_B8 & CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("OutletCode")), var_10C & var_544 & "','")) & "','" 
  loc_18F793D:                       unk_509ECB.Execute CStr(var_5C4 & var_98.Fields.Item("Module_name").Value & "')"), var_EC, 
  loc_18F79C3:                     End If
  loc_18F79C5:                   End If
  loc_18F79C7:                 End If
  loc_18F79D0:                 var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F79D8:                 var_EC = CVar(CLng(3)) 'Long
  loc_18F7A03:                 If (CStr(Me.FGrid.TextMatrix)) <> "0") Then
  loc_18F7A0D:                   var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7A15:                   var_EC = CVar(CLng(1)) 'Long
  loc_18F7A35:                   var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F7A3D:                   var_1AC = CVar(CLng(2)) 'Long
  loc_18F7A5D:                   var_1E0 = CVar(CLng(var_8E)) 'Long
  loc_18F7A65:                   var_200 = CVar(CLng(3)) 'Long
  loc_18F7A84:                   Set var_178 = Me.dUserName
  loc_18F7A8A:                   var_154 = var_178.BoundText
  loc_18F7AA4:                   var_23C = 0
  loc_18F7AD7:                   var_184 = "Select Count(*) From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix)) & " And Opt2=" & CStr(Me.FGrid.TextMatrix))
  loc_18F7B02:                   var_218 = var_184 & " And Opt3=" & CStr(Me.FGrid.TextMatrix)) & " And Opt4=0  And UserName='" & CStr(var_154) & "' And Cast(CompCode As Integer)="
  loc_18F7B1E:                   unk_509ECB.Execute var_218 & CStr(Val(var_8C)) & vbNullString, var_1CC, -1
  loc_18F7B26:                   var_260 = var_260.Fields
  loc_18F7B2E:                   var_23C = var_2B0.Item(var_2B0)
  loc_18F7B36:                   var_31C = var_31C.Value
  loc_18F7B87:                   If (var_2C0 = 0) Then
  loc_18F7B91:                     var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7B99:                     var_EC = CVar(CLng(1)) 'Long
  loc_18F7BB9:                     var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F7BC1:                     var_1AC = CVar(CLng(2)) 'Long
  loc_18F7BE1:                     var_1E0 = CVar(CLng(var_8E)) 'Long
  loc_18F7BE9:                     var_200 = CVar(CLng(3)) 'Long
  loc_18F7C0C:                     var_180 = Val(var_8C)
  loc_18F7C27:                     var_168 = "Select OPT1,OPT2,OPT3,OPT4,Code,[Option],Flag,OutletCode,Module_Name From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix))
  loc_18F7C52:                     var_194 = var_168 & " And Opt2=" & CStr(Me.FGrid.TextMatrix)) & " And Opt3=" & CStr(Me.FGrid.TextMatrix)) & " And Opt4=0 And UserName='SA' And Cast(CompCode As Integer)="
  loc_18F7C6E:                     unk_509ECB.Execute var_194 & CStr(var_180) & vbNullString, var_154, -1
  loc_18F7C79:                     Set var_98 = var_178
  loc_18F7CB5:                     var_19C = var_98.RecordCount
  loc_18F7CC3:                     If (var_19C > 0) Then
  loc_18F7CDC:                       var_164 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,flag,OutletCode,Module_Name) Values ('" & var_8C
  loc_18F7D03:                       var_144 = CVar(var_164 & "','" & CStr(Me.dUserName.BoundText) & "',") 'String
  loc_18F7D18:                       var_120 = var_98.Fields
  loc_18F7D20:                       var_174 = var_120.Item("Opt1")
  loc_18F7D28:                       var_134 = var_174.Value
  loc_18F7D30:                       var_154 = var_144 & var_134 
  loc_18F7D4F:                       var_178 = var_98.Fields
  loc_18F7D57:                       var_260 = var_178.Item("Opt2")
  loc_18F7D8E:                       var_31C = var_98.Fields.Item("Opt3")
  loc_18F7D96:                       var_34C = var_31C.Value
  loc_18F7DA7:                       var_36C = var_154 & "," & var_260.Value & "," & var_34C & "," 
  loc_18F7DB1:                       var_1AC = "Opt4"
  loc_18F7DC5:                       var_464 = var_98.Fields.Item(var_1AC)
  loc_18F7DCD:                       var_38C = var_464.Value
  loc_18F7DD5:                       var_3AC = var_36C & var_38C 
  loc_18F7DE8:                       var_1E0 = "Code"
  loc_18F7DFC:                       var_4CC = var_98.Fields.Item(var_1E0)
  loc_18F7E1F:                       var_200 = "Menu_Index"
  loc_18F7E33:                       var_548 = var_98.Fields.Item(var_200)
  loc_18F7E3B:                       var_460 = var_548.Value
  loc_18F7E67:                       var_554 = var_98.Fields.Item("Option")
  loc_18F7E76:                       Proc_6_17_EAAE40(var_4C8, CVar(var_554), var_3AC & "," & var_4CC.Value & "," & var_460 & ",", var_60C, -1, var_610, var_178)
  loc_18F7EA2:                       var_55C = var_98.Fields.Item("Flag")
  loc_18F7EB3:                       var_544 = CVar(Proc_6_38_E69628(CVar(var_55C), var_180 & var_4C8 & ",Null,'", var_144, var_200)) 'String
  loc_18F7EDA:                       var_594 = var_98.Fields.Item("OutletCode")
  loc_18F7EEB:                       var_5A4 = CVar(Proc_6_38_E69628(CVar(var_594), var_1E0 & var_544 & "','")) 'String
  loc_18F7F15:                       var_5DC = var_98.Fields.Item("Module_name")
  loc_18F7F25:                       var_5EC = var_134 & var_5A4 & "','" & var_5DC.Value 
  loc_18F7F3C:                       unk_509ECB.Execute CStr(var_5EC & "')"), var_1AC, 
  loc_18F7FC2:                     End If
  loc_18F7FC4:                   End If
  loc_18F7FC6:                 End If
  loc_18F7FC8:               End If
  loc_18F7FCF:             Next var_198 'Byte
  loc_18F7FE1:             var_B8 = Me.dUserName.BoundText
  loc_18F7FFA:             If (CStr(var_B8) <> vbNullString) Then
  loc_18F8008:               unk_509ECB.BeginTrans var_19C
  loc_18F8042:               Proc_6_17_EAAE40(var_B8, MemVar_1F95078, "Select Count(*) From UserPermission  WHERE LogSITE_CODE=", var_36C, -1, var_120)
  loc_18F8062:               Proc_6_17_EAAE40(var_154, MemVar_1F95128, var_174 & var_B8 & " And Compcode=", 0)
  loc_18F8073:               var_2C0 = var_178 & var_154 & " And UserName=" 
  loc_18F808F:               Proc_6_17_EAAE40(var_34C, CVar(CStr(Me.dUserName.BoundText)), var_2C0)
  loc_18F80A5:               unk_509ECB.Execute CStr(var_38C & var_34C), &HFF, 
  loc_18F80AD:                = var_120.Fields
  loc_18F80B5:                = var_174.Item()
  loc_18F80BD:                = var_178.Value
  loc_18F80C8:               Proc_6_39_E7D3A0(var_3AC)
  loc_18F8103:               If (var_3AC = 0) Then
  loc_18F8113:                 Proc_6_17_EAAE40(var_B8, MemVar_1F95128)
  loc_18F8130:                 Proc_6_17_EAAE40(var_2C0, CVar(CStr(Me.dUserName.BoundText)))
  loc_18F8140:                 Proc_6_17_EAAE40(var_34C, MemVar_1F95070)
  loc_18F8150:                 Proc_6_17_EAAE40(var_38C, MemVar_1F95078)
  loc_18F8163:                 Set var_120 = Me.Txt
  loc_18F8169:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(0), var_174)
  loc_18F8171:                 var_164 = var_174.Text
  loc_18F818C:                 Set var_178 = Me.Txt
  loc_18F8192:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(1), var_260)
  loc_18F81A1:                 Proc_6_17_EAAE40(var_460, CVar(var_260))
  loc_18F81B1:                 Set var_2B0 = Me.Txt
  loc_18F81B7:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(2), var_31C)
  loc_18F81C6:                 Proc_6_17_EAAE40(var_4C8, CVar(var_31C))
  loc_18F81D6:                 Set var_410 = Me.Txt
  loc_18F81DC:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(3), var_464)
  loc_18F81EB:                 Proc_6_17_EAAE40(var_544, CVar(var_464))
  loc_18F81FB:                 Set var_478 = Me.Txt
  loc_18F8201:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(5), var_4CC)
  loc_18F8210:                 Proc_6_17_EAAE40(var_5A4, CVar(var_4CC))
  loc_18F8220:                 Set var_4E0 = Me.Txt
  loc_18F8226:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(4), var_548)
  loc_18F8235:                 Proc_6_17_EAAE40(var_5EC, CVar(var_548))
  loc_18F8243:                 Set var_550 = Me.Txt
  loc_18F8249:                 Call 0.Method_BtnEnh_UnknownEvent_90 (7, var_554)
  loc_18F8258:                 Proc_6_17_EAAE40(var_630, CVar(var_554))
  loc_18F8266:                 Set var_558 = Me.Txt
  loc_18F826C:                 Call 0.Method_BtnEnh_UnknownEvent_90 (8, var_55C)
  loc_18F8274:                 var_660 = CVar(var_55C) 'Address
  loc_18F827B:                 Proc_6_17_EAAE40(var_670, var_660)
  loc_18F8289:                 Set var_590 = Me.Txt
  loc_18F828F:                 Call 0.Method_BtnEnh_UnknownEvent_90 (9, var_594)
  loc_18F829E:                 Proc_6_17_EAAE40(var_6B0, CVar(var_594))
  loc_18F82AE:                 Set var_5D8 = Me.Txt
  loc_18F82B4:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(6), var_5DC)
  loc_18F82BC:                 var_6E0 = CVar(var_5DC) 'Address
  loc_18F82C3:                 Proc_6_17_EAAE40(var_6F0, var_6E0)
  loc_18F82D5:                 var_DC = "Insert Into UserPermission(CompCode,UserName,Site_Code,LogSite_Code,POSDiscountAllowUpto,CancelGuestBill,ChangeRoomDtl,DeleteGuestCharges,ChangeGuestCharges,POSSettlementYN,EditItemInKOT,FreeItemAllow,RefundCashCardAmt,FacilityBilling) Values ("
  loc_18F82DD:                 var_134 = var_DC & var_B8 
  loc_18F82ED:                 var_32C = var_134 & "," & var_2C0 
  loc_18F8306:                 var_36C = var_32C & "," & var_34C & "," 
  loc_18F8321:                 var_420 = var_36C & var_38C & "," & CVar(Val(var_164)) 
  loc_18F8331:                 var_488 = var_420 & "," & var_460 
  loc_18F8341:                 var_4F0 = var_488 & "," & var_4C8 
  loc_18F8351:                 var_56C = var_4F0 & "," & var_544 
  loc_18F8361:                 var_5B4 = var_56C & "," & var_5A4 
  loc_18F8371:                 var_5FC = var_5B4 & "," & var_5EC 
  loc_18F839A:                 var_690 = var_5FC & "," & var_630 & "," & var_670 & "," 
  loc_18F83B1:                 var_700 = var_690 & var_6B0 & "," & var_6F0 
  loc_18F83C8:                 unk_509ECB.Execute CStr(var_700 & ")"), var_720, -1
  loc_18F8461:               Else
  loc_18F8473:                 Set var_A8 = Me.Txt
  loc_18F8479:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(0), var_120, var_164)
  loc_18F8481:                 var_610 = var_120.Text
  loc_18F848E:                 var_180 = Val(var_164)
  loc_18F849C:                 Set var_174 = Me.Txt
  loc_18F84A2:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(1), var_178, var_180)
  loc_18F84B1:                 Proc_6_17_EAAE40(var_134, CVar(var_178))
  loc_18F84C1:                 Set var_260 = Me.Txt
  loc_18F84C7:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(2), var_2B0)
  loc_18F84D6:                 Proc_6_17_EAAE40(var_32C, CVar(var_2B0))
  loc_18F84E6:                 Set var_31C = Me.Txt
  loc_18F84EC:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(3), var_410)
  loc_18F84FB:                 Proc_6_17_EAAE40(var_36C, CVar(var_410))
  loc_18F850B:                 Set var_464 = Me.Txt
  loc_18F8511:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(5), var_478)
  loc_18F8520:                 Proc_6_17_EAAE40(var_420, CVar(var_478))
  loc_18F8530:                 Set var_4CC = Me.Txt
  loc_18F8536:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(4), var_4E0)
  loc_18F8545:                 Proc_6_17_EAAE40(var_488, CVar(var_4E0))
  loc_18F8553:                 Set var_548 = Me.Txt
  loc_18F8559:                 Call 0.Method_BtnEnh_UnknownEvent_90 (7, var_550)
  loc_18F8568:                 Proc_6_17_EAAE40(var_4F0, CVar(var_550))
  loc_18F8576:                 Set var_554 = Me.Txt
  loc_18F857C:                 Call 0.Method_BtnEnh_UnknownEvent_90 (8, var_558)
  loc_18F858B:                 Proc_6_17_EAAE40(var_56C, CVar(var_558))
  loc_18F8599:                 Set var_55C = Me.Txt
  loc_18F859F:                 Call 0.Method_BtnEnh_UnknownEvent_90 (9, var_590)
  loc_18F85AE:                 Proc_6_17_EAAE40(var_5B4, CVar(var_590))
  loc_18F85BE:                 Set var_594 = Me.Txt
  loc_18F85C4:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(6), var_5D8)
  loc_18F85D3:                 Proc_6_17_EAAE40(var_5FC, CVar(var_5D8))
  loc_18F85E3:                 Proc_6_17_EAAE40(var_630, MemVar_1F95070)
  loc_18F85F3:                 Proc_6_17_EAAE40(var_660, MemVar_1F95078)
  loc_18F8603:                 Proc_6_17_EAAE40(var_690, MemVar_1F95128)
  loc_18F8620:                 Proc_6_17_EAAE40(var_6E0, CVar(CStr(Me.dUserName.BoundText)))
  loc_18F8654:                 var_1CC = CVar("Update UserPermission Set POSDiscountAllowUpto=" & CStr(var_180) & ",CancelGuestBill=") & var_134 & ",ChangeRoomDtl=" 
  loc_18F8684:                 var_440 = var_1CC & var_32C & ",DeleteGuestCharges=" & var_36C & ",ChangeGuestCharges=" & var_420 & ",POSSettlementYN=" 
  loc_18F86BB:                 var_5C4 = var_440 & var_488 & ",EditItemInKOT=" & var_4F0 & ",FreeItemAllow=" & var_56C & ",RefundCashCardAmt=" & var_5B4 
  loc_18F86F4:                 var_680 = var_5C4 & ",FacilityBilling=" & var_5FC & ",Site_Code=" & var_630 & " WHERE LogSITE_CODE=" & var_660 & " And Compcode=" 
  loc_18F8719:                 unk_509ECB.Execute CStr(var_680 & var_690 & " And UserName=" & var_6E0), var_700, -1
  loc_18F87AF:               End If
  loc_18F87B9:               unk_509ECB.CommitTrans
  loc_18F87C2:               var_A0 = 0
  loc_18F87C5:             End If
  loc_18F87D3:             BtnEnh_UnknownEvent_94 = Me.FGrid.Text
  loc_18F87F0:             Me.dSection.BoundText = vbNullString
  loc_18F880A:             Me.dSection.Text = vbNullString
  loc_18F8818:             Set var_A8 = Me.dSection
  loc_18F8829:           End If
  loc_18F8829:         End If
  loc_18F8829:       End If
  loc_18F8829:     End If
  loc_18F8829:   End If
  loc_18F8829: End If
  loc_18F8832: Set var_88 = Nothing
  loc_18F883C: Set var_98 = Nothing
  loc_18F8841: Exit Sub
  loc_18F8842: ' Referenced from: 18F5F28
  loc_18F884C: Set var_A8 = Err()
  loc_18F8852: Call 0.Method_arg_1C (var_19C, dSection.DispID_8001, BtnEnh_UnknownEvent_94, var_A0)
  loc_18F8863: If (var_19C = &H17D) Then
  loc_18F8868:   Resume Next
  loc_18F886F: Else
  loc_18F8877:   If (var_A0 = &HFF) Then
  loc_18F8882:     unk_509ECB.RollbackTrans
  loc_18F8889:     Proc_6_60_E63754(var_610, var_180)
  loc_18F888E:   End If
  loc_18F888E: End If
  loc_18F8892: Exit Sub
End Sub

Private Sub BtnEnhExit_UnknownEvent_9 'E16178
  'Data Table: 509EA0
  Dim arg_28FF As Double
  loc_E1616D: Me.Global.Unload Me
  loc_E16175: Exit Sub
  loc_E16176: arg_28FF = 
End Sub

Private Sub BtnEnhPrintuser_UnknownEvent_9 '105B7A0
  'Data Table: 509EA0
  Dim var_D4 As Double
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_509ECB As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_13A As Integer
  Dim var_C8 As Variant
  Dim arg_2800 As Integer
  loc_105B540: On Error Goto loc_105B776
  loc_105B567: var_A4 = "Select UserName,[OPTION],[ADD]=Case When SubString(IsNull(Param_Str,''),1,1)='A' Then 'A' ELSE '' END,[EDIT]=Case When SubString(IsNull(Param_Str,''),2,1)='E' Then 'E' ELSE '' END,[DELETE]=Case When SubString(IsNull(Param_Str,''),3,1)='D' Then 'D' ELSE '' END,[PRINT]=Case When SubString(IsNull(Param_Str,''),4,1)='P' Then 'P' ELSE '' END,UserMast.ActiveYN,OPT1,OPT2,OPT3,OPT4,Menu_Index From MenuHelp Inner Join UserMast On MenuHelp.UserName=UserMast.User_Name Where Cast(CompCode As Int)=" & CStr(Val(MemVar_1F95128))
  loc_105B577: unk_509ECB.Execute var_A4 & " And Flag<>'V' Order By UserName,OPT1,OPT2,OPT3,OPT4", var_C8, -1
  loc_105B582: Set var_88 = var_CC
  loc_105B59A: var_D8 = var_88.RecordCount
  loc_105B5A8: If (var_D8 = 0) Then
  loc_105B5C4:   MsgBox("No Record Present For Printing", 0, var_F8, var_118, var_138)
  loc_105B5D4:   Exit Sub
  loc_105B5D5: End If
  loc_105B5EB: Set var_CC = var_88 
  loc_105B5F7: var_13A = CreateFieldDefFile(var_CC, MemVar_1F950B4 & "\UserPermissionReport.ttx", &HFF)
  loc_105B601: Set var_88 = var_CC
  loc_105B607: var_B8 = CVar(var_13A) 'Integer
  loc_105B60A: var_98 = var_B8 'Variant
  loc_105B626: var_A0 = MemVar_1F950B4 & "\UserPermissionReport.RPT"
  loc_105B62F: Call 0.Method_arg_1C (var_A0, var_B8, var_CC)
  loc_105B63A: MemVar_1F951E8 = var_CC
  loc_105B655: Call 0.Method_arg_90 (var_CC, var_D8, var_9A, 1)
  loc_105B65D: Call 0.Method_arg_24 (var_13A, var_CC)
  loc_105B669: For var_13E =  To CInt(var_D8): var_D4 = var_13E 'Integer
  loc_105B682:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_105B68A:   Call 0.Method_arg_20 (var_144)
  loc_105B692:   Call 0.Method_arg_30 (var_A0)
  loc_105B6D8:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_105B6EE:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_105B6F6:     Call 0.Method_arg_20 (var_144)
  loc_105B6FE:     Call 0.Method_arg_38 ("'User Permission Report'")
  loc_105B70A:   End If
  loc_105B70D: Next var_13E 'Integer
  loc_105B72B: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_105B733: Call 0.Method_arg_2C (var_E8)
  loc_105B741: Call 0.Method_arg_150 (var_108)
  loc_105B74C: Call 0.Method_arg_50 (var_A0)
  loc_105B765: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_105B772: Set var_88 = Nothing
  loc_105B775: Exit Sub
  loc_105B776: ' Referenced from: 105B540
  loc_105B77C: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_105B791: Proc_183_57_104B0BC(var_A0, "UserPermissionReport")
  loc_105B79D: Exit Sub
  loc_105B79E: arg_2800 = &HFF
End Sub

Private Sub CmdCopyUser_Click() 'F1861C
  'Data Table: 509EA0
  Dim arg_28FF As Variant
  loc_F18543: If (Me.FrCopyUserPermission.Visible = 0) Then
  loc_F18565:   Me.FrCopyUserPermission.Caption = Me.CmdCopyUser.Caption
  loc_F18584:   Me.DCFirm.Text = vbNullString
  loc_F1859C:   Me.DCFirm.BoundText = vbNullString
  loc_F185A9:   Call DCFirm_UnknownEvent_9()
  loc_F185B8:   var_BC = "Code"
  loc_F185D3:   var_90 = "Select Distinct Comp_Name+CYear as Name ,cOMP_cODE as Code From Company"
  loc_F185D9:   Proc_6_139_EFA09C(Me.CmdCopyUser.Caption, Me.DCFirm, "Name")
  loc_F185FA:   Me.FrCopyUserPermission.Visible = True
  loc_F18605: Else
  loc_F18611:   Me.FrCopyUserPermission.Visible = False
  loc_F18619: End If
  loc_F18619: Exit Sub
  loc_F1861A: arg_28FF = CVar(var_BC) 'Integer
End Sub

Private Sub CmdCopyUserPerm_Click() '13D8274
  'Data Table: 509EA0
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_140 As Double
  Dim var_104 As Variant
  Dim var_94 As String
  Dim var_CC As String
  Dim unk_509ECB As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Fields15
  Dim var_108 As Field20
  Dim var_118 As Variant
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_EC As Variant
  Dim var_170 As Variant
  Dim var_1B0 As Variant
  Dim var_258 As Variant
  Dim var_360 As Variant
  Dim var_4F0 As Variant
  loc_13D79BE: var_94 = "Firm Name"
  loc_13D79DF: If (Proc_6_27_EA61EC(Me.DCFirm) = 0) Then
  loc_13D79E6:   Set var_90 = Me.DCFirm
  loc_13D79F7:   Exit Sub
  loc_13D79F8: End If
  loc_13D7A23: If (Proc_6_27_EA61EC(Me.DCYear, "Financial Year") = 0) Then
  loc_13D7A2A:   Set var_90 = Me.DCYear
  loc_13D7A3B:   Exit Sub
  loc_13D7A3C: End If
  loc_13D7A67: If (Proc_6_27_EA61EC(Me.DSUserName, "Source User Name", DCYear.DispID_8001) = 0) Then
  loc_13D7A6E:   Set var_90 = Me.DSUserName
  loc_13D7A7F:   Exit Sub
  loc_13D7A80: End If
  loc_13D7AAB: If (Proc_6_27_EA61EC(Me.DDUserName, "Desti. User Name", DSUserName.DispID_8001) = 0) Then
  loc_13D7AB2:   Set var_90 = Me.DDUserName
  loc_13D7AC3:   Exit Sub
  loc_13D7AC4: End If
  loc_13D7AFA: var_104 = 0
  loc_13D7B2E: var_CC = "Select Count(*) From MenuHelp Where UserName='" & CStr(Me.DDUserName.BoundText) & "' And Cast(CompCode As Integer)=" & CStr(Val(CStr(Me.DCYear.BoundText)))
  loc_13D7B37: unk_509ECB.Execute var_CC, var_EC, -1
  loc_13D7B3F: var_F0 = var_F0.Fields
  loc_13D7B47: var_104 = var_F4.Item(var_F4)
  loc_13D7B4F: var_108 = var_108.Value
  loc_13D7B86: If (var_118 > 1) Then
  loc_13D7BB0:   var_EC = StrConv(CVar(CStr(Me.DDUserName.Text)), 3, 0)
  loc_13D7C04:   If (MsgBox(var_EC & " already have User Permissions." & vbCrLf & "Do You want to overwrite User Permissions?", &H124, var_170, var_190, var_1B0) = 7) Then
  loc_13D7C07:     Exit Sub
  loc_13D7C08:   End If
  loc_13D7C08: End If
  loc_13D7C14: Me.CmdCopyUserPerm.Enabled = False
  loc_13D7C2B: Me.DCFirm.Enabled = False
  loc_13D7C42: Me.DCYear.Enabled = False
  loc_13D7C59: Me.DSUserName.Enabled = False
  loc_13D7C70: Me.DDUserName.Enabled = False
  loc_13D7C7A: var_8A = &HFF
  loc_13D7C86: unk_509ECB.BeginTrans var_1B4
  loc_13D7CE6: var_CC = "Delete From MenuHelp Where UserName='" & CStr(Me.DDUserName.BoundText) & "' And Cast(CompCode As Integer)=" & CStr(Val(CStr(Me.DCYear.BoundText)))
  loc_13D7CEF: unk_509ECB.Execute var_CC, var_EC, -1
  loc_13D7D42: var_140 = Val(CStr(Me.DCYear.BoundText))
  loc_13D7D70: var_CC = "Select * From MenuHelp Where UserName='" & CStr(Me.DSUserName.BoundText) & "' And Cast(CompCode As Integer)=" & CStr(var_140)
  loc_13D7D79: unk_509ECB.Execute var_CC, var_EC, -1
  loc_13D7D84: Set var_88 = var_F0
  loc_13D7DA8: ' Referenced from: 13D8132
  loc_13D7DB7: If Not(var_88.EOF) Then
  loc_13D7DC7:   var_104 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,flag,OutletCode,Module_Name) Values ('"
  loc_13D7DEE:   var_A8 = var_88.Fields.Item("CompCode").Value
  loc_13D7DF6:   var_BC = var_104 & var_A8 
  loc_13D7DFF:   var_EC = var_BC & "','" 
  loc_13D7E07:   Set var_F0 = Me.DDUserName
  loc_13D7E0D:   var_118 = var_F0.BoundText
  loc_13D7EBD:   var_258 = var_EC & CVar(CStr(var_118)) & "'," & var_88.Fields.Item("Opt1").Value & "," & var_88.Fields.Item("Opt2").Value & "," & var_88.Fields.Item("Opt3").Value 
  loc_13D7F62:   var_360 = var_258 & "," & var_88.Fields.Item("Opt4").Value & "," & var_88.Fields.Item("Code").Value & "," & var_88.Fields.Item("Menu_Index").Value 
  loc_13D7F95:   Proc_6_17_EAAE40(var_3B8, CVar(var_88.Fields.Item("Option")), var_360 & ",", var_598, -1, var_59C, var_F0)
  loc_13D7FD0:   Proc_6_17_EAAE40(var_420, CVar(var_88.Fields.Item("param_str")), var_140 & var_3B8 & ",", var_A8)
  loc_13D8045:   var_4F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("OutletCode")), var_A8 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Flag")), var_F0 & var_420 & ",'", var_140)) & "','")) 'String
  loc_13D8096:   unk_509ECB.Execute CStr(var_8A & var_4F0 & "','" & var_88.Fields.Item("Module_name").Value & "')"), , 
  loc_13D812D:   var_88.MoveNext
  loc_13D8132:   GoTo loc_13D7DA8
  loc_13D8135: End If
  loc_13D813B: unk_509ECB.CommitTrans
  loc_13D8151: Me.CmdCopyUserPerm.Enabled = True
  loc_13D8167: Me.DCFirm.Enabled = True
  loc_13D817D: Me.DCYear.Enabled = True
  loc_13D8193: Me.DSUserName.Enabled = True
  loc_13D81A9: Me.DDUserName.Enabled = True
  loc_13D81CA: MsgBox("User Permission copied successfully.", &H40, var_BC, var_EC, var_118)
  loc_13D81DF: Call DSUserName_UnknownEvent_9()
  loc_13D81E9: Set var_88 = Nothing
  loc_13D81EC: Exit Sub
  loc_13D81F3: If (0 = &HFF) Then
  loc_13D81FC:   unk_509ECB.RollbackTrans
  loc_13D8201: End If
  loc_13D820D: Me.CmdCopyUserPerm.Enabled = True
  loc_13D8223: Me.DCFirm.Enabled = True
  loc_13D8239: Me.DCYear.Enabled = True
  loc_13D824F: Me.DSUserName.Enabled = True
  loc_13D8265: Me.DDUserName.Enabled = True
  loc_13D826D: Proc_6_60_E63754(0)
  loc_13D8272: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '13AC834
  'Data Table: 509EA0
  Dim var_94 As MSHFlexGrid
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_134 As Variant
  Dim var_154 As Long
  Dim var_1E8 As Boolean
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Single
  Dim var_86 As Integer
  Dim var_144 As Variant
  loc_13ABF8D: If ((((CLng(Me.FGrid.Col) = CLng(7)) Or (CLng(Me.FGrid.Col) = CLng(8))) Or (CLng(Me.FGrid.Col) = CLng(9))) Or (CLng(Me.FGrid.Col) = CLng(&HA))) Then
  loc_13ABFA3:   var_134 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13ABFA8:   var_154 = 8
  loc_13ABFDE:   var_1E8 = (CLng(Me.FGrid.Col) > CLng(7))
  loc_13ABFF5:   var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC073:   If CBool(CVar(CLng(7)) And (CStr(Me.FGrid.TextMatrix)) = "o") Or (Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "R")) Then
  loc_13AC076:     Exit Sub
  loc_13AC077:   End If
  loc_13AC08A:   var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC0A2:   var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13AC0D9:   If (CStr(Me.FGrid.TextMatrix)) = "o") Then
  loc_13AC0FE:     Me.FGrid.Col = CVar(CLng(Me.FGrid.Col))
  loc_13AC11D:     Me.FGrid.CellFontName = "wingdings"
  loc_13AC137:     Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_13AC15C:     If (CLng(Me.FGrid.Col) = CLng(7)) Then
  loc_13AC15F:       GoTo loc_13AC17D
  loc_13AC162:     End If
  loc_13AC175:     Me.FGrid.CellForeColor = &HFF0000
  loc_13AC17D:     ' Referenced from: 13AC15F
  loc_13AC190:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC1A8:     var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13AC1AD:     var_134 = "þ"
  loc_13AC1B7:     Set var_BC = Me.FGrid
  loc_13AC1BD:     LateIdCallSt
  loc_13AC1E9:     Me.FGrid.CellAlignment = CVar(CInt(4))
  loc_13AC1F4:   Else
  loc_13AC207:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC21F:     var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13AC256:     If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_13AC26C:       var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC284:       var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13AC289:       var_134 = "o"
  loc_13AC293:       Set var_BC = Me.FGrid
  loc_13AC299:       LateIdCallSt
  loc_13AC2CE:       If (CLng(Me.FGrid.Col) = CLng(7)) Then
  loc_13AC2E4:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC2EC:         var_110 = CVar(CLng(8)) 'Long
  loc_13AC31F:         If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_13AC335:           var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC33D:           var_110 = CVar(CLng(8)) 'Long
  loc_13AC342:           var_134 = "o"
  loc_13AC34C:           Set var_A8 = Me.FGrid
  loc_13AC352:           LateIdCallSt
  loc_13AC364:         End If
  loc_13AC377:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC37F:         var_110 = CVar(CLng(9)) 'Long
  loc_13AC3B2:         If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_13AC3C8:           var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC3D0:           var_110 = CVar(CLng(9)) 'Long
  loc_13AC3D5:           var_134 = "o"
  loc_13AC3DF:           Set var_A8 = Me.FGrid
  loc_13AC3E5:           LateIdCallSt
  loc_13AC3F7:         End If
  loc_13AC40A:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC412:         var_110 = CVar(CLng(&HA)) 'Long
  loc_13AC445:         If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_13AC45B:           var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC463:           var_110 = CVar(CLng(&HA)) 'Long
  loc_13AC468:           var_134 = "o"
  loc_13AC472:           Set var_A8 = Me.FGrid
  loc_13AC478:           LateIdCallSt
  loc_13AC48A:         End If
  loc_13AC48A:       End If
  loc_13AC48A:     End If
  loc_13AC48A:   End If
  loc_13AC48A: End If
  loc_13AC48D: var_8C = CDbl(0)
  loc_13AC4AD: If (CLng(Me.FGrid.ColSel) = CLng(7)) Then
  loc_13AC4EF:   For var_1FC = CInt(CLng(Me.FGrid.RowSel)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_1FC 'Integer
  loc_13AC508:     Me.FGrid.Row = CVar(CLng(var_86))
  loc_13AC522:     Me.FGrid.Col = CVar(CLng(5))
  loc_13AC546:     If (CBool(Me.FGrid.CellFontBold) = &HFF) Then
  loc_13AC54D:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AC555:       var_110 = CVar(CLng(7)) 'Long
  loc_13AC56F:       var_90 = CStr(Me.FGrid.TextMatrix))
  loc_13AC57F:       var_8C = (var_8C + CDbl(1))
  loc_13AC588:       var_86 = (var_86 + 1)
  loc_13AC59E:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_13AC5A6:     End If
  loc_13AC5AD:     If (var_8C = CDbl(1)) Then
  loc_13AC5B4:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AC5BC:       var_110 = CVar(CLng(7)) 'Long
  loc_13AC5CC:       Set var_94 = Me.FGrid
  loc_13AC5D2:       LateIdCallSt
  loc_13AC5E5:       If (var_90 = "o") Then
  loc_13AC5EC:         var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AC5F4:         var_110 = CVar(CLng(8)) 'Long
  loc_13AC614:         var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13AC61C:         var_134 = vbNullString
  loc_13AC62A:         var_144 = CVar(CLng(var_86)) 'Long
  loc_13AC675:         If CBool(CVar(CLng(8)) And (CStr(Me.FGrid.TextMatrix)) = "þ")) Then
  loc_13AC67C:           var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AC684:           var_110 = CVar(CLng(8)) 'Long
  loc_13AC689:           var_134 = "o"
  loc_13AC693:           Set var_94 = Me.FGrid
  loc_13AC699:           LateIdCallSt
  loc_13AC6A4:         End If
  loc_13AC6A8:         var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AC6B0:         var_110 = CVar(CLng(9)) 'Long
  loc_13AC6D0:         var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13AC6D8:         var_134 = vbNullString
  loc_13AC6E6:         var_144 = CVar(CLng(var_86)) 'Long
  loc_13AC731:         If CBool(CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = "þ")) Then
  loc_13AC738:           var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AC740:           var_110 = CVar(CLng(9)) 'Long
  loc_13AC745:           var_134 = "o"
  loc_13AC74F:           Set var_94 = Me.FGrid
  loc_13AC755:           LateIdCallSt
  loc_13AC760:         End If
  loc_13AC764:         var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AC76C:         var_110 = CVar(CLng(&HA)) 'Long
  loc_13AC78C:         var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13AC794:         var_134 = vbNullString
  loc_13AC7A2:         var_144 = CVar(CLng(var_86)) 'Long
  loc_13AC7ED:         If CBool(CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = "þ")) Then
  loc_13AC7F4:           var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AC7FC:           var_110 = CVar(CLng(&HA)) 'Long
  loc_13AC801:           var_134 = "o"
  loc_13AC80B:           Set var_94 = Me.FGrid
  loc_13AC811:           LateIdCallSt
  loc_13AC81C:         End If
  loc_13AC81C:       End If
  loc_13AC81C:     End If
  loc_13AC823:     If (var_8C > CDbl(1)) Then
  loc_13AC826:       GoTo loc_13AC831
  loc_13AC829:     End If
  loc_13AC82C:   Next var_1FC 'Integer
  loc_13AC831:   ' Referenced from: 13AC826
  loc_13AC831: End If
  loc_13AC831: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'E0C330
  'Data Table: 509EA0
  loc_E0C326: If (CLng(Index) = &H20) Then
  loc_E0C329:   Call FGrid_UnknownEvent_9()
  loc_E0C32E: End If
  loc_E0C32E: Exit Sub
End Sub

Private Sub Form_Load() 'F60258
  'Data Table: 509EA0
  Dim var_A8 As Variant
  loc_F60147: Me.SSTabSection.BackColor = CVar(CLng(MemVar_1F951B4))
  loc_F60156: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F6016E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_F60184: Me.FrCopyUserPermission.BackColor = CLng(MemVar_1F951B8)
  loc_F60196: Set var_A8 = Me.TopCtrl1
  loc_F6019C: Call {C25E4434-8C28-414A-9B911155EADDC28A}.DispID_68030005("Add")
  loc_F601AE: Set global_52 = New 
  loc_F601C3: Me.TopCtrl1.CursorLocation = 3
  loc_F601D3: Proc_6_17_EAAE40(var_BC)
  loc_F6021A: Me.Recordset15.Open CVar("Select * From UserPermission WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' And Compcode=") & var_BC & ")", CVar(MemVar_1F95044), 2
  loc_F6022D: Call Proc_151_37_1111B84(3, -1)
  loc_F60232: Call Proc_151_29_13671A0(MemVar_1F95128)
  loc_F60246: Me.dSubSection.Enabled = False
  loc_F6024E: Exit Sub
  loc_F6024F: Proc_6_60_E63754()
  loc_F60254: Exit Sub
End Sub

Private Sub Form_Resize() 'E7569C
  'Data Table: 509EA0
  loc_E75646: Call 0.Method_arg_50 (var_88)
  loc_E75658: Me.LblFormCaption.Caption = var_88
  loc_E75671: Me.LblFormCaption.Left = CDbl(0)
  loc_E7567F: Call 0.Method_arg_100 (var_90)
  loc_E75691: Me.LblFormCaption.Width = var_90
  loc_E75699: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B6D0
  'Data Table: 509EA0
  loc_E2B6A8: On Error Goto loc_E2B6C8
  loc_E2B6BF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B6C7: Exit Sub
  loc_E2B6C8: ' Referenced from: E2B6A8
  loc_E2B6C8: Proc_6_60_E63754(Shift)
  loc_E2B6CD: Exit Sub
End Sub

Private Sub dUserName_UnknownEvent_B 'E26C84
  'Data Table: 509EA0
  loc_E26C6A: If (CLng(KeyCode) = &HD) Then
  loc_E26C7B:   Proc_303_0_FBACC8("	")
  loc_E26C83: End If
  loc_E26C83: Exit Sub
End Sub

Private Sub dUserName_UnknownEvent_11 'DFFFDC
  'Data Table: 509EA0
  loc_DFFFD4: Call Proc_151_29_13671A0()
  loc_DFFFD9: Exit Sub
End Sub

Private Sub dYear_UnknownEvent_B 'E26EEC
  'Data Table: 509EA0
  loc_E26ED2: If (CLng(KeyCode) = &HD) Then
  loc_E26EE3:   Proc_303_0_FBACC8("	")
  loc_E26EEB: End If
  loc_E26EEB: Exit Sub
End Sub

Private Sub dSection_UnknownEvent_B 'E26C2C
  'Data Table: 509EA0
  loc_E26C12: If (CLng(KeyCode) = &HD) Then
  loc_E26C23:   Proc_303_0_FBACC8("	")
  loc_E26C2B: End If
  loc_E26C2B: Exit Sub
End Sub

Private Sub dSection_UnknownEvent_11 '10222DC
  'Data Table: 509EA0
  Dim var_8C As Variant
  Dim var_C0 As Boolean
  Dim var_B0 As Variant
  Dim var_D0 As Boolean
  loc_10220CC: For var_A0 = 0 To (CInt(Me.SSTabSection.Tabs) - 1): var_86 = var_A0 'Integer
  loc_10220D9:   var_C0 = False
  loc_10220E2:   Set var_8C = Me.SSTabSection
  loc_10220E8:   LateIdCallSt
  loc_10220F6: Next var_A0 'Integer
  loc_1022117: If (CBool(Me.SSTabSection.Visible) = &HFF) Then
  loc_1022129:   Me.SSTabSection.Visible = False
  loc_1022131: End If
  loc_102214B: Set var_E4 = Me.BtnEnh1
  loc_1022151: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(CStr(Me.dSection.Text)))
  loc_102216C: Set var_8C = Me.BtnEnh1
  loc_1022172: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_102219D: If (CStr(Me.dSection.Text) = "Front Office") Then
  loc_10221AE:   Me.SSTabSection.Visible = True
  loc_10221B6:   var_B0 = 1
  loc_10221BC:   var_D0 = True
  loc_10221C4:   Set var_8C = Me.SSTabSection
  loc_10221CA:   LateIdCallSt
  loc_10221E5:   Me.SSTabSection.Tab = 1
  loc_10221ED: End If
  loc_1022210: If (CStr(Me.dSection.Text) = "Point Of Sale") Then
  loc_1022221:   Me.SSTabSection.Visible = True
  loc_1022229:   var_B0 = 0
  loc_102222F:   var_D0 = True
  loc_1022237:   Set var_8C = Me.SSTabSection
  loc_102223D:   LateIdCallSt
  loc_1022258:   Me.SSTabSection.Tab = 0
  loc_1022260: End If
  loc_1022283: If (CStr(Me.dSection.Text) = "Members Mgmt") Then
  loc_1022294:   Me.SSTabSection.Visible = True
  loc_102229C:   var_B0 = 2
  loc_10222A2:   var_D0 = True
  loc_10222AA:   Set var_8C = Me.SSTabSection
  loc_10222B0:   LateIdCallSt
  loc_10222BB:   var_B0 = 2
  loc_10222C5:   Set var_8C = Me.SSTabSection
  loc_10222CB:   var_8C.Tab = var_B0
  loc_10222D3: End If
  loc_10222D3: Call Proc_151_36_13D9740(var_8C, var_D0, var_B0, var_8C, var_D0)
  loc_10222D8: Exit Sub
End Sub

Private Sub DCYear_UnknownEvent_8 'E9B18C
  'Data Table: 509EA0
  Dim var_A0 As String
  loc_E9B13D: var_B0 = "Code"
  loc_E9B160: var_A0 = "Select Distinct UserName as Name ,UserName as Code From MenuHelp Left Join UserMast On MenuHelp.UserName=UserMast.User_Name Where UserMast.ActiveYN='Y' And UserMast.User_Name<>'SA' And CompCODE='" & CStr(Me.DCFirm.BoundText)
  loc_E9B16B: Proc_6_139_EFA09C(var_A0 & "' Order By UserName", Me.DSUserName, "Name")
  loc_E9B189: Exit Sub
End Sub

Private Sub DCYear_UnknownEvent_9 'E55270
  'Data Table: 509EA0
  loc_E55244: Me.DSUserName.Text = vbNullString
  loc_E5525C: Me.DSUserName.BoundText = vbNullString
  loc_E55267: Call DSUserName_UnknownEvent_9()
  loc_E5526C: Exit Sub
End Sub

Public Sub Proc_151_29_13671A0
  'Data Table: 509EA0
  Dim var_A4 As Variant
  Dim var_BC As Variant
  Dim var_D8 As Fields15
  Dim var_144 As TextBox
  Dim var_EC As TextBox
  loc_136695C: On Error Goto loc_136719A
  loc_136696D: Me.Recordset15.Requery -1
  loc_136697F: var_A4 = Me.dUserName.BoundText
  loc_136699F: Me.var_A4.Filter = CVar("UserName='" & CStr(var_A4) & "'")
  loc_13669CF: If (Me.Recordset15.RecordCount > 0) Then
  loc_1366A54:   var_13C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CancelGuestBill"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("CancelGuestBill"))))
  loc_1366A6B:   Set var_140 = Me.Txt
  loc_1366A71:   Call 0.Method_Proc_151_29_13671A00 (CInt(1), var_144)
  loc_1366A79:   var_144.Text = CStr(var_13C)
  loc_1366B23:   var_13C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChangeRoomDtl"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ChangeRoomDtl"))))
  loc_1366B3A:   Set var_140 = Me.Txt
  loc_1366B40:   Call 0.Method_Proc_151_29_13671A00 (CInt(2), var_144)
  loc_1366B48:   var_144.Text = CStr(var_13C)
  loc_1366BF2:   var_13C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("DeleteGuestCharges"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("DeleteGuestCharges"))))
  loc_1366C09:   Set var_140 = Me.Txt
  loc_1366C0F:   Call 0.Method_Proc_151_29_13671A00 (CInt(3), var_144)
  loc_1366C17:   var_144.Text = CStr(var_13C)
  loc_1366CC1:   var_13C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChangeGuestCharges"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ChangeGuestCharges"))))
  loc_1366CD8:   Set var_140 = Me.Txt
  loc_1366CDE:   Call 0.Method_Proc_151_29_13671A00 (CInt(5), var_144)
  loc_1366CE6:   var_144.Text = CStr(var_13C)
  loc_1366D90:   var_13C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("POSSettlementYN"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("POSSettlementYN"))))
  loc_1366DA7:   Set var_140 = Me.Txt
  loc_1366DAD:   Call 0.Method_Proc_151_29_13671A00 (CInt(4), var_144)
  loc_1366DB5:   var_144.Text = CStr(var_13C)
  loc_1366E5F:   var_13C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EditItemInKOT"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("EditItemInKOT"))))
  loc_1366E74:   Set var_140 = Me.Txt
  loc_1366E7A:   Call 0.Method_Proc_151_29_13671A00 (7, var_144)
  loc_1366E82:   var_144.Text = CStr(var_13C)
  loc_1366F2C:   var_13C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FreeItemAllow"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("FreeItemAllow"))))
  loc_1366F41:   Set var_140 = Me.Txt
  loc_1366F47:   Call 0.Method_Proc_151_29_13671A00 (8, var_144)
  loc_1366F4F:   var_144.Text = CStr(var_13C)
  loc_1366FC5:   var_EC = Me.Recordset15.Fields.Item("RefundCashCardAmt")
  loc_1366FCD:   var_BC = CVar(var_EC) 'Address
  loc_136700E:   Set var_140 = Me.Txt
  loc_1367014:   Call 0.Method_Proc_151_29_13671A00 (9, var_144)
  loc_136701C:   var_144.Text = CStr(IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RefundCashCardAmt"))) = vbNullString), "No", Trim(var_BC)))
  loc_1367069:   var_A4 = CVar(Me.Recordset15.Fields.Item("POSDiscountAllowUpto")) 'Address
  loc_1367070:   Proc_6_39_E7D3A0(var_BC)
  loc_1367087:   Set var_D8 = Me.Txt
  loc_136708D:   Call 0.Method_Proc_151_29_13671A00 (CInt(0), var_EC)
  loc_1367095:   var_EC.Text = CStr(var_BC)
  loc_13670D2:   var_A4 = CVar(Me.Recordset15.Fields.Item("FacilityBilling")) 'Address
  loc_1367146:   Set var_140 = Me.Txt
  loc_136714C:   Call 0.Method_Proc_151_29_13671A00 (CInt(6), var_144)
  loc_1367154:   var_144.Text = CStr(IIf((Proc_6_38_E69628(var_A4) = vbNullString), "Semi", Trim(CVar(Me.Recordset15.Fields.Item("FacilityBilling")))))
  loc_1367181:   Set var_88 = Nothing
  loc_1367189:   Set var_90 = Nothing
  loc_136718F: Else
  loc_136718F:   Call Proc_151_30_E9A968(var_A4)
  loc_1367194: End If
  loc_1367194: Call Proc_151_31_DFD284()
  loc_1367199: Exit Sub
  loc_136719A: ' Referenced from: 136695C
  loc_136719A: Proc_6_60_E63754()
  loc_136719F: Exit Sub
End Sub

Public Sub Proc_151_30_E9A968
  'Data Table: 509EA0
  Dim var_98 As TextBox
  loc_E9A8EE: Set var_8C = Me.Txt
  loc_E9A8F4: Call 0.Method_Proc_151_30_E9A968C (var_8E, var_86)
  loc_E9A904: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9A91A:   Set var_8C = Me.Txt
  loc_E9A920:   Call 0.Method_Proc_151_30_E9A9680 (CInt(var_86), var_98)
  loc_E9A928:   var_98.Text = vbNullString
  loc_E9A944:   Set var_8C = Me.Txt
  loc_E9A94A:   Call 0.Method_Proc_151_30_E9A9680 (CInt(var_86), var_98)
  loc_E9A952:   var_98.Tag = vbNullString
  loc_E9A961: Next var_92 'Byte
  loc_E9A967: Exit Sub
End Sub

Public Sub Proc_151_31_DFD284
  'Data Table: 509EA0
  loc_DFD280: Exit Sub
End Sub

Public Sub Proc_151_32_EF2AF8(arg_C) 'EF2AF8
  'Data Table: 509EA0
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  Dim MeFF As Double
  loc_EF2A3D: Randomize(var_B0)
  loc_EF2A5E: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EF2A6E: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EF2A87: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EF2AC3:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EF2ACB:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EF2AD0:   var_8C = CStr(var_10C)
  loc_EF2AE4: Next var_B8 'Integer
  loc_EF2AEC: var_88 = var_8C
  loc_EF2AEF: Proc_151_32_EF2AF8 = 
  loc_EF2AF5: MeFF = 
End Sub

Public Sub Proc_151_33_EFFDDC(arg_C) 'EFFDDC
  'Data Table: 509EA0
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EFFD16: If (arg_C = vbNullString) Then
  loc_EFFD1C:   var_88 = vbNullString
  loc_EFFD1F:   Proc_151_33_EFFDDC = 
  loc_EFFD25: End If
  loc_EFFD49: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EFFD68: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EFFD8B:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EFFDA7:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EFFDAF:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EFFDB4:   var_8C = CStr(var_108)
  loc_EFFDC8: Next var_B8 'Integer
  loc_EFFDD0: var_88 = var_8C
  loc_EFFDD3: Proc_151_33_EFFDDC = 
End Sub

Public Sub Proc_151_34_E7E2DC(arg_C) 'E7E2DC
  'Data Table: 509EA0
  Dim var_8A As Integer
  Dim unk_509ECB As Connection15
  loc_E7E280: On Error Goto loc_E7E2C1
  loc_E7E283: Call Proc_151_31_DFD284()
  loc_E7E28B: var_8A = arg_C
  loc_E7E294: If (var_8A = 0) Then
  loc_E7E2B0:   MsgBox("Change saved Successfully", &H40, var_CC, var_EC, var_10C)
  loc_E7E2C0: End If
  loc_E7E2C0: Exit Sub
  loc_E7E2C1: ' Referenced from: E7E280
  loc_E7E2C7: If (var_86 = &HFF) Then
  loc_E7E2D0:   unk_509ECB.RollbackTrans
  loc_E7E2D5: End If
  loc_E7E2D5: Proc_6_60_E63754(var_8A)
  loc_E7E2DA: Exit Sub
End Sub

Public Sub Proc_151_35_105B220
  'Data Table: 509EA0
  Dim var_D4 As Double
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_509ECB As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_13A As Integer
  Dim var_C8 As Variant
  loc_105AFC0: On Error Goto loc_105B1F6
  loc_105AFE7: var_A4 = "Select UserName,[OPTION],[ADD]=Case When SubString(IsNull(Param_Str,''),1,1)='A' Then 'A' ELSE '' END,[EDIT]=Case When SubString(IsNull(Param_Str,''),2,1)='E' Then 'E' ELSE '' END,[DELETE]=Case When SubString(IsNull(Param_Str,''),3,1)='D' Then 'D' ELSE '' END,[PRINT]=Case When SubString(IsNull(Param_Str,''),4,1)='P' Then 'P' ELSE '' END,UserMast.ActiveYN,OPT1,OPT2,OPT3,OPT4,Menu_Index From MenuHelp Inner Join UserMast On MenuHelp.UserName=UserMast.User_Name Where Cast(CompCode As Int)=" & CStr(Val(MemVar_1F95128))
  loc_105AFF7: unk_509ECB.Execute var_A4 & " And Flag<>'V' Order By UserName,OPT1,OPT2,OPT3,OPT4", var_C8, -1
  loc_105B002: Set var_88 = var_CC
  loc_105B01A: var_D8 = var_88.RecordCount
  loc_105B028: If (var_D8 = 0) Then
  loc_105B044:   MsgBox("No Record Present For Printing", 0, var_F8, var_118, var_138)
  loc_105B054:   Exit Sub
  loc_105B055: End If
  loc_105B06B: Set var_CC = var_88 
  loc_105B077: var_13A = CreateFieldDefFile(var_CC, MemVar_1F950B4 & "\UserPermissionReport.ttx", &HFF)
  loc_105B081: Set var_88 = var_CC
  loc_105B087: var_B8 = CVar(var_13A) 'Integer
  loc_105B08A: var_98 = var_B8 'Variant
  loc_105B0A6: var_A0 = MemVar_1F950B4 & "\UserPermissionReport.RPT"
  loc_105B0AF: Call 0.Method_arg_1C (var_A0, var_B8, var_CC)
  loc_105B0BA: MemVar_1F951E8 = var_CC
  loc_105B0D5: Call 0.Method_arg_90 (var_CC, var_D8, var_9A, 1)
  loc_105B0DD: Call 0.Method_arg_24 (var_13A, var_CC)
  loc_105B0E9: For var_13E =  To CInt(var_D8): var_D4 = var_13E 'Integer
  loc_105B102:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_105B10A:   Call 0.Method_arg_20 (var_144)
  loc_105B112:   Call 0.Method_arg_30 (var_A0)
  loc_105B158:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_105B16E:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_105B176:     Call 0.Method_arg_20 (var_144)
  loc_105B17E:     Call 0.Method_arg_38 ("'User Permission Report'")
  loc_105B18A:   End If
  loc_105B18D: Next var_13E 'Integer
  loc_105B1AB: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_105B1B3: Call 0.Method_arg_2C (var_E8)
  loc_105B1C1: Call 0.Method_arg_150 (var_108)
  loc_105B1CC: Call 0.Method_arg_50 (var_A0)
  loc_105B1E5: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_105B1F2: Set var_88 = Nothing
  loc_105B1F5: Exit Sub
  loc_105B1F6: ' Referenced from: 105AFC0
  loc_105B1FC: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_105B211: Proc_183_57_104B0BC(var_A0, "UserPermissionReport")
  loc_105B21D: Exit Sub
End Sub

Public Sub Proc_151_36_13D9740
  'Data Table: 509EA0
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_C4 As String
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_F0 As Variant
  Dim var_98 As Variant
  Dim var_100 As String
  Dim var_114 As String
  Dim var_13C As String
  Dim var_180 As String
  Dim unk_509ECB As Connection15
  Dim var_19C As Variant
  Dim var_1E4 As Variant
  Dim var_204 As String
  Dim var_90 As Single
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_1AC As Variant
  Dim var_278 As Variant
  Dim var_88 As Recordset15
  Dim var_1D0 As Integer
  loc_13D8E04: On Error Goto loc_13D96F5
  loc_13D8E0B: Set var_88 = New 
  loc_13D8E12: Set var_98 = Me.dSection
  loc_13D8E9A: If ((((CStr(Me.dSection.BoundText) <> vbNullString) And (CStr(Me.dFirm.BoundText) <> vbNullString)) And (CStr(Me.dYear.BoundText) <> vbNullString)) And (CStr(Me.dUserName.BoundText) <> vbNullString)) Then
  loc_13D8EC7:   Set var_C8 = Me.dYear
  loc_13D8ECD:   var_D8 = var_C8.BoundText
  loc_13D8F4E:   var_C4 = "Select distinct U.Opt1,U.Opt2,U.Opt3,U.Opt4,U.[option] as [Module Name],U.Code,Case right(M.param_str,1) When 'P' Then 'þ' Else 'o' End as Allow,Case U.Flag When 'E' then Case left(M.param_str,1) When 'A' Then 'þ' Else 'o' End Else '' End as Ins,Case U.Flag When 'E' Then Case SubString(M.param_str,2,1) When 'E' Then 'þ' else 'o' End Else '' End as Edit,Case U.Flag When 'E' Then Case SubString(M.param_str,3,1) When 'D' Then 'þ' Else 'o' End Else '' End as Del,U.Flag,U.OutletCode From UserModule U Left Join MenuHelp M on M.Code=U.Code Where U.Opt1=" & CStr(Me.dSection.BoundText)
  loc_13D8F67:   var_100 = var_C4 & " AND U.Opt2>0 And IsNull(U.flag,'')<>'' And ((UserName='" & CStr(Me.dUserName.BoundText) & "' Or UserName is Null) And (Cast(CompCode As Integer)="
  loc_13D8F88:   var_114 = var_100 & CStr(Val(CStr(var_D8))) & " or CompCode is Null)) " & " Union " & " Select distinct U.Opt1,U.Opt2,U.Opt3,U.Opt4,U.[option] as [Module Name],U.Code,'o' as Allow,Case U.Flag When 'E' Then 'o' Else '' End as Ins,Case U.Flag When 'E' Then 'o' Else '' End as Edit,Case U.Flag When 'E' Then 'o' Else '' End as Del,U.Flag,U.OutletCode From UserModule U Inner Join MenuHelp M on M.Code=U.Code Where M.UserName='"
  loc_13D8FA8:   var_13C = var_114 & MemVar_1F950C8 & "' And U.Flag<>'V' AND U.Opt1=" & CStr(Me.dSection.BoundText) & " AND U.Opt2>0 AND IsNull(U.flag,'')<>'' And U.Code Not In(Select U.Code From UserModule U Left Join MenuHelp M on M.Code=U.Code Where U.Opt1="
  loc_13D8FCC:   var_180 = var_13C & CStr(Me.dSection.BoundText) & " And IsNull(U.Flag,'')<>'' And ((UserName='" & CStr(Me.dUserName.BoundText) & "' Or UserName is Null) And (Cast(CompCode As Integer)="
  loc_13D8FE8:   unk_509ECB.Execute var_180 & CStr(Val(CStr(Me.dYear.BoundText))) & " or CompCode is Null))) Order By U.Code", var_1AC, -1
  loc_13D8FF3:   Set var_88 = var_1B0
  loc_13D9058: Else
  loc_13D9058:   Exit Sub
  loc_13D9059: End If
  loc_13D9068: Me.FGrid.Redraw = False
  loc_13D9074: Set var_1D4 = Me.FGrid
  loc_13D907D: CVarUnk
  loc_13D9082: VerifyVarObj
  loc_13D9087: LateIdStAd
  loc_13D9095: var_19C = CVar(CLng(0)) 'Long
  loc_13D909A: var_1E4 = &H1C2
  loc_13D90A6: LateIdCallSt
  loc_13D90AE: var_19C = 0
  loc_13D90BA: var_1E4 = CVar(CLng(0)) 'Long
  loc_13D90BF: var_204 = "Sno"
  loc_13D90C8: LateIdCallSt
  loc_13D90D3: var_19C = CVar(CLng(1)) 'Long
  loc_13D90D8: var_1E4 = 0
  loc_13D90E4: LateIdCallSt
  loc_13D90EF: var_19C = CVar(CLng(2)) 'Long
  loc_13D90F4: var_1E4 = 0
  loc_13D9100: LateIdCallSt
  loc_13D910B: var_19C = CVar(CLng(3)) 'Long
  loc_13D9110: var_1E4 = 0
  loc_13D911C: LateIdCallSt
  loc_13D9127: var_19C = CVar(CLng(4)) 'Long
  loc_13D912C: var_1E4 = 0
  loc_13D9138: LateIdCallSt
  loc_13D9143: var_19C = CVar(CLng(5)) 'Long
  loc_13D9148: var_1E4 = &HBB8
  loc_13D9154: LateIdCallSt
  loc_13D915F: var_19C = CVar(CLng(6)) 'Long
  loc_13D9164: var_1E4 = 0
  loc_13D9170: LateIdCallSt
  loc_13D917B: var_19C = CVar(CLng(7)) 'Long
  loc_13D9180: var_1E4 = &H226
  loc_13D918C: LateIdCallSt
  loc_13D9197: var_19C = CVar(CLng(8)) 'Long
  loc_13D919C: var_1E4 = &H1F4
  loc_13D91A8: LateIdCallSt
  loc_13D91B3: var_19C = CVar(CLng(9)) 'Long
  loc_13D91B8: var_1E4 = &H1F4
  loc_13D91C4: LateIdCallSt
  loc_13D91CF: var_19C = CVar(CLng(&HA)) 'Long
  loc_13D91D4: var_1E4 = &H1F4
  loc_13D91E0: LateIdCallSt
  loc_13D91EB: var_19C = CVar(CLng(&HB)) 'Long
  loc_13D91F0: var_1E4 = 0
  loc_13D91FC: LateIdCallSt
  loc_13D920C: var_19C = CVar(CLng((CInt(&HB) + 1))) 'Long
  loc_13D9211: var_1E4 = 0
  loc_13D921D: LateIdCallSt
  loc_13D9256: For var_218 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_218 'Integer
  loc_13D926E:   Me.FGrid.Col = CVar(CLng(7))
  loc_13D9289:   Me.FGrid.Row = CVar(CLng(var_8A))
  loc_13D92A1:   Me.FGrid.CellFontName = "wingdings"
  loc_13D92BB:   Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_13D92EF:   Proc_6_17_EAAE40(var_D8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8A)), 1, CDbl(0), Nothing, CVar(CLng(5)))
  loc_13D92F8:   var_228 = CVar(CLng(var_8A)) 'Long
  loc_13D9300:   var_248 = CVar(CLng(6)) 'Long
  loc_13D934D:   var_278 = "SELECT Menu_Index,Flag FROM MenuHelp WHERE [Option]=" & var_D8 & " AND Code=" & CVar(CStr(Me.FGrid.TextMatrix))) & " AND UserName='SA'" 
  loc_13D935B:   unk_509ECB.Execute CStr(var_278), var_298, -1
  loc_13D9366:   Set var_88 = var_C8
  loc_13D93A0:   If (var_88.RecordCount > 0) Then
  loc_13D93CD:     var_1D0 = -1
  loc_13D93F6:     var_D8 = CVar(var_88.Fields.Item("Flag")) 'Address
  loc_13D93FD:     var_F0 = Trim(var_D8)
  loc_13D9427:     If CBool((var_88.Fields.Item("Menu_Index").Value = var_1D0) And (var_F0 = "N")) Then
  loc_13D943C:       Me.FGrid.Col = CVar(CLng(5))
  loc_13D944B:       var_90 = (var_90 + CDbl(1))
  loc_13D9451:       var_19C = CVar(CLng(0)) 'Long
  loc_13D945C:       var_1E4 = CVar(CInt(4)) 'Integer
  loc_13D9464:       Set var_98 = Me.FGrid
  loc_13D946A:       LateIdCallSt
  loc_13D9479:       var_19C = CVar(CLng(var_8A)) 'Long
  loc_13D9481:       var_1E4 = CVar(CLng(0)) 'Long
  loc_13D948B:       var_AC = CStr(CDbl(0))
  loc_13D9492:       var_A8 = CVar(var_AC & ".") 'String
  loc_13D949A:       Set var_98 = Me.FGrid
  loc_13D94A0:       LateIdCallSt
  loc_13D94BF:       Me.FGrid.CellFontBold = True
  loc_13D94DA:       Me.FGrid.CellForeColor = &HFF
  loc_13D94F4:       Me.FGrid.Col = CVar(CLng(7))
  loc_13D950F:       Me.FGrid.CellForeColor = &HFF
  loc_13D953C:       For var_2A0 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_8C = var_2A0 'Integer
  loc_13D9555:         Me.FGrid.Col = CVar(CLng(var_8C))
  loc_13D9570:         Me.FGrid.CellBackColor = &HD1EFED
  loc_13D957B:         var_19C = CVar(CLng(7)) 'Long
  loc_13D9586:         var_1E4 = CVar(CInt(4)) 'Integer
  loc_13D958E:         Set var_98 = Me.FGrid
  loc_13D9594:         LateIdCallSt
  loc_13D95A2:       Next var_2A0 'Integer
  loc_13D95AA:     Else
  loc_13D95BD:       Me.FGrid.CellForeColor = &HFF00FF
  loc_13D95C5:     End If
  loc_13D95C5:   End If
  loc_13D95D9:   Me.FGrid.CellAlignment = CVar(CInt(4))
  loc_13D95EC:   For var_2A4 = CInt(8) To CInt(&HA): var_8C = var_2A4 'Integer
  loc_13D9605:     Me.FGrid.Col = CVar(CLng(var_8C))
  loc_13D9620:     Me.FGrid.Row = CVar(CLng(var_8A))
  loc_13D9638:     Me.FGrid.CellFontName = "wingdings"
  loc_13D9652:     Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_13D966D:     Me.FGrid.CellForeColor = &HFF0000
  loc_13D9689:     Me.FGrid.CellAlignment = CVar(CInt(4))
  loc_13D9694:   Next var_2A4 'Integer
  loc_13D969C: Next var_218 'Integer
  loc_13D96B4: Me.FGrid.Row = 1
  loc_13D96CE: Me.FGrid.Col = CVar(CLng(7))
  loc_13D96E4: Me.FGrid.Redraw = True
  loc_13D96F1: Set var_88 = Nothing
  loc_13D96F4: Exit Sub
  loc_13D96F5: ' Referenced from: 13D8E04
  loc_13D96FD: Set var_98 = Err()
  loc_13D9703: Call 0.Method_arg_2C (var_AC)
  loc_13D970E: Call 0.Method_arg_50 (var_C4)
  loc_13D972A: MsgBox(CVar(var_AC), &H10, CVar(var_C4), var_D8, var_F0)
  loc_13D973D: Exit Sub
End Sub

Public Sub Proc_151_37_1111B84
  'Data Table: 509EA0
  Dim var_88 As String
  Dim var_90 As String
  Dim var_C8 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_111184A: var_94 = "Code"
  loc_1111853: var_90 = "Name"
  loc_111186B: Proc_6_139_EFA09C("Select User_Name as Name ,User_Name as Code From UserMast WHERE ActiveYN='Y' And User_Name <>'SA' Order By User_Name", Me.dUserName)
  loc_111188A: var_94 = "Code"
  loc_11118A5: var_88 = "Select Distinct Comp_Name+' ' +cyEAR as Name ,Comp_CODE as Code From Company"
  loc_11118AB: Proc_6_139_EFA09C("Select User_Name as Name ,User_Name as Code From UserMast WHERE ActiveYN='Y' And User_Name <>'SA' Order By User_Name", Me.dFirm, "Name")
  loc_111190B: Proc_6_139_EFA09C("Select CYear as Name ,Comp_Code as Code From Company Where Comp_CODE='" & CStr(Me.dFirm.BoundText) & "'", Me.dYear, "Name", "Code")
  loc_111194E: var_88 = "Select DISTINCT replace([option],'&','') as Name ,Opt1 as Code From UserModule Where FLAG<>'V' AND Opt2=0 and Opt3=0 and Opt4=0 and [Option]<>'-' AND [Option] NOT IN ('-','Exit') ORDER BY OPT1"
  loc_1111954: Proc_6_139_EFA09C(CStr(Me.dFirm.BoundText), Me.dSection, "Name", "Code")
  loc_111197C: Me.FGrid.Cols = &HC
  loc_1111984: var_C8 = CVar(CLng(0)) 'Long
  loc_1111989: var_E8 = &H190
  loc_1111995: LateIdCallSt
  loc_11119A0: var_C8 = CVar(CLng(1)) 'Long
  loc_11119A5: var_E8 = 0
  loc_11119B1: LateIdCallSt
  loc_11119BC: var_C8 = CVar(CLng(2)) 'Long
  loc_11119C1: var_E8 = 0
  loc_11119CD: LateIdCallSt
  loc_11119D8: var_C8 = CVar(CLng(3)) 'Long
  loc_11119DD: var_E8 = 0
  loc_11119E9: LateIdCallSt
  loc_11119F4: var_C8 = CVar(CLng(4)) 'Long
  loc_11119F9: var_E8 = 0
  loc_1111A05: LateIdCallSt
  loc_1111A10: var_C8 = CVar(CLng(5)) 'Long
  loc_1111A15: var_E8 = &HBB8
  loc_1111A21: LateIdCallSt
  loc_1111A29: var_C8 = 0
  loc_1111A35: var_E8 = CVar(CLng(5)) 'Long
  loc_1111A3A: var_108 = "Module"
  loc_1111A43: LateIdCallSt
  loc_1111A4E: var_C8 = CVar(CLng(6)) 'Long
  loc_1111A53: var_E8 = 0
  loc_1111A5F: LateIdCallSt
  loc_1111A6A: var_C8 = CVar(CLng(7)) 'Long
  loc_1111A6F: var_E8 = &H1F4
  loc_1111A7B: LateIdCallSt
  loc_1111A83: var_C8 = 0
  loc_1111A8F: var_E8 = CVar(CLng(7)) 'Long
  loc_1111A94: var_108 = "Allow"
  loc_1111A9D: LateIdCallSt
  loc_1111AA8: var_C8 = CVar(CLng(8)) 'Long
  loc_1111AAD: var_E8 = &H1F4
  loc_1111AB9: LateIdCallSt
  loc_1111AC1: var_C8 = 0
  loc_1111ACD: var_E8 = CVar(CLng(8)) 'Long
  loc_1111AD2: var_108 = "Ins"
  loc_1111ADB: LateIdCallSt
  loc_1111AE6: var_C8 = CVar(CLng(9)) 'Long
  loc_1111AEB: var_E8 = &H1F4
  loc_1111AF7: LateIdCallSt
  loc_1111AFF: var_C8 = 0
  loc_1111B0B: var_E8 = CVar(CLng(9)) 'Long
  loc_1111B10: var_108 = "Edit"
  loc_1111B19: LateIdCallSt
  loc_1111B24: var_C8 = CVar(CLng(&HA)) 'Long
  loc_1111B29: var_E8 = &H1F4
  loc_1111B35: LateIdCallSt
  loc_1111B3D: var_C8 = 0
  loc_1111B49: var_E8 = CVar(CLng(&HA)) 'Long
  loc_1111B4E: var_108 = "Del"
  loc_1111B57: LateIdCallSt
  loc_1111B62: var_C8 = CVar(CLng(&HB)) 'Long
  loc_1111B67: var_E8 = 0
  loc_1111B73: LateIdCallSt
  loc_1111B7D: Set var_B8 = Nothing 
  loc_1111B81: Exit Sub
End Sub
