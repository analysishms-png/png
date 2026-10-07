VERSION 5.00
Begin VB.Form HallMenuItemEntry
  Caption = " Menu Item Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11250
  ClientHeight = 7935
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
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6045
    Top = 1485
    Width = 1485
    Height = 285
    TabIndex = 2
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 4950
    Width = 1515
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin DataGrid DGUnit
    Left = 11490
    Top = 5730
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGRest
    Left = 12000
    Top = 5055
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGItemCat
    Left = 12225
    Top = 4170
    Width = 4410
    Height = 2460
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin DataGrid DGItemGroup
    Left = 12390
    Top = 3480
    Width = 4665
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGHelp
    Left = 12735
    Top = 2595
    Width = 4230
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11250
    Height = 450
    TabIndex = 46
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 4635
    Width = 3855
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 255
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 3375
    Width = 1275
    Height = 285
    TabIndex = 8
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
  Begin DataGrid DGDispCode
    Left = 13350
    Top = 1875
    Width = 1605
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSFlexGrid FGPoint
    Left = 12915
    Top = 585
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 38
  End
  Begin Frame Frame1
    Left = 4545
    Top = 7455
    Width = 5640
    Height = 1680
    Visible = 0   'False
    TabIndex = 33
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 465
      Width = 3855
      Height = 255
      TabIndex = 34
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin CommandButton Command2
      Caption = "&Cancel"
      Index = 1
      Left = 4065
      Top = 1155
      Width = 1215
      Height = 360
      TabIndex = 37
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
    Begin CommandButton Command2
      Caption = "&Print"
      Index = 0
      Left = 2775
      Top = 1155
      Width = 1215
      Height = 360
      TabIndex = 36
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
    Begin Label LblName
      Caption = "Restaurant"
      Index = 4
      ForeColor = &H0&
      Left = 270
      Top = 465
      Width = 930
      Height = 240
      TabIndex = 35
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin CommandButton Command1z
    Caption = "&Consumption"
    BackColor = &HE0E0E0&
    Left = 9720
    Top = 5865
    Width = 1560
    Height = 1020
    Visible = 0   'False
    TabIndex = 32
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8000000F&
  End
  Begin CheckBox Check1
    Caption = "Carry Last Information"
    ForeColor = &H80&
    Left = 3660
    Top = 5370
    Width = 3075
    Height = 330
    TabIndex = 31
    Value = 1
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
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 1485
    Width = 1275
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 4005
    Width = 1275
    Height = 285
    TabIndex = 10
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 3690
    Width = 1275
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 2430
    Width = 3855
    Height = 285
    TabIndex = 5
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 2745
    Width = 1275
    Height = 285
    TabIndex = 6
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 3060
    Width = 1275
    Height = 285
    TabIndex = 7
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 4320
    Width = 3855
    Height = 285
    TabIndex = 11
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 1800
    Width = 3855
    Height = 285
    TabIndex = 3
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 1170
    Width = 3855
    Height = 285
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3675
    Top = 2115
    Width = 1275
    Height = 285
    TabIndex = 4
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
  Begin BtnEnh Command1
    Left = 4965
    Top = 3930
    Width = 2550
    Height = 375
    TabIndex = 47
  End
  Begin Label LblLedgerAc
    Caption = "HSN Code"
    Index = 8
    ForeColor = &HFF0000&
    Left = 5025
    Top = 1500
    Width = 960
    Height = 240
    TabIndex = 49
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
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2025
    Top = 4980
    Width = 585
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 150
    Top = 8430
    Width = 2520
    Height = 255
    TabIndex = 45
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
    Left = 135
    Top = 8760
    Width = 2430
    Height = 285
    TabIndex = 44
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 43
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
    Caption = "Specification"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2025
    Top = 4635
    Width = 1245
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
  Begin Label LblName
    Caption = "Service Charge"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2025
    Top = 3375
    Width = 1470
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
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 5025
    Top = 3390
    Width = 885
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
  Begin Label LblLedgerAc
    Caption = "Disp.Code"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2025
    Top = 1485
    Width = 960
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
  Begin Label LblName
    Caption = "Applicable Date"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2025
    Top = 4005
    Width = 1515
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
  Begin Label LblLedgerAc
    Caption = "Sale Rate"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2025
    Top = 3690
    Width = 930
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
    Caption = "(Y)es/(N)o"
    Index = 0
    ForeColor = &H80&
    Left = 5025
    Top = 3075
    Width = 885
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
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &H80&
    Left = 5025
    Top = 2760
    Width = 885
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
  Begin Label LblName
    Caption = "Item Category"
    Index = 12
    ForeColor = &HFF0000&
    Left = 2025
    Top = 2430
    Width = 1335
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
  Begin Label LblLedgerAc
    Caption = "Rate Edit"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2025
    Top = 2745
    Width = 855
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
  Begin Label LblName
    Caption = "Disc Applicable"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2025
    Top = 3060
    Width = 1470
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
  Begin Label LblName
    Caption = "Kitchen"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2025
    Top = 4320
    Width = 720
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
  Begin Label LblName
    Caption = "Item Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2025
    Top = 1800
    Width = 1035
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
  Begin Label LblLedgerAc
    Caption = "Item Group"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2025
    Top = 1170
    Width = 1065
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
  End
  Begin Label LblLedgerAc
    Caption = "Unit"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2025
    Top = 2115
    Width = 375
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
End

Attribute VB_Name = "HallMenuItemEntry"


Private Sub DGDispCode_UnknownEvent_9 'F3F014
  'Data Table: 4ECF44
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3EF0B: Me.DGDispCode.Visible = False
  loc_F3EF2A: If (Me.RecordCount > 0) Then
  loc_F3EF69:   Set var_B4 = Me.Txt
  loc_F3EF6F:   Call 0.Method_DGDispCode_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F3EF77:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3EFAA:   var_B0 = Me.Fields.Item("DispCode")
  loc_F3EFC9:   Set var_B4 = Me.Txt
  loc_F3EFCF:   Call 0.Method_DGDispCode_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F3EFD7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3EFED: End If
  loc_F3EFF8: Set var_A8 = Me.Txt
  loc_F3EFFE: Call 0.Method_DGDispCode_UnknownEvent_90 (CInt(&HA))
  loc_F3F006: var_B0.SetFocus
  loc_F3F012: Exit Sub
End Sub

Private Sub DGDispCode_UnknownEvent_1F 'E74DEC
  'Data Table: 4ECF44
  loc_E74DAA: Proc_6_153_E91D24(Me.DGDispCode, arg_14)
  loc_E74DC1: Set var_8C = Me.FGPoint
  loc_E74DDD: Proc_6_138_106E830(Me.DGDispCode, global_88, CInt(&HA))
  loc_E74DEB: Exit Sub
End Sub

Private Sub Form_Load() '11E58EC
  'Data Table: 4ECF44
  Dim var_88 As Variant
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_4ECF4A As Connection15
  Dim var_B8 As Variant
  loc_11E5470: On Error Goto loc_11E58A8
  loc_11E547A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11E548D: Me.Check1.BackColor = CLng(MemVar_1F951B4)
  loc_11E54A4: Me.LblUser.Left = CDbl(13500)
  loc_11E54BB: Me.LblUser.Top = CDbl(7800)
  loc_11E54D2: Me.LblLDt.Top = CDbl(8160)
  loc_11E54E3: Set var_88 = Me.LblLDt
  loc_11E54E9: var_88.Left = CDbl(13500)
  loc_11E54F1: Call Proc_118_46_109DE84()
  loc_11E5511: var_90 = "SELECT Code,Name,ItemGroup,RestCode FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RestCode='"
  loc_11E552B: unk_4ECF4A.Execute var_90 & global_52 & "' And DispCode<>9999 ORDER BY Name", var_B8, -1
  loc_11E553C: Set global_68 = var_88
  loc_11E555E: CVarUnk
  loc_11E5563: VerifyVarObj
  loc_11E556F: LateIdStAd
  loc_11E5598: var_90 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RestType='Kitchen' ORDER BY Name"
  loc_11E55A1: unk_4ECF4A.Execute var_90, var_B8, -1
  loc_11E55B2: Set global_76 = Me.DGHelp
  loc_11E55D0: CVarUnk
  loc_11E55D5: VerifyVarObj
  loc_11E55E1: LateIdStAd
  loc_11E5613: unk_4ECF4A.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_11E5642: CVarUnk
  loc_11E5647: VerifyVarObj
  loc_11E5653: LateIdStAd
  loc_11E567C: var_90 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RestCode  ='"
  loc_11E5696: unk_4ECF4A.Execute var_90 & global_52 & "' and status='Active' ORDER BY Name", var_B8, -1
  loc_11E56C9: CVarUnk
  loc_11E56CE: VerifyVarObj
  loc_11E56DA: LateIdStAd
  loc_11E5703: var_90 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RestCode  ='"
  loc_11E571D: unk_4ECF4A.Execute var_90 & global_52 & "' And status='Active' And (cattype is not NULL and cattype<>'') ORDER BY Name", var_B8, -1
  loc_11E5750: CVarUnk
  loc_11E5755: VerifyVarObj
  loc_11E5761: LateIdStAd
  loc_11E578A: var_90 = "SELECT DispCode as COde,DispCode FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Type IN ('Finish')  And DispCode<>9999 and RestCode ='"
  loc_11E57A4: unk_4ECF4A.Execute var_90 & global_52 & "' ORDER BY DispCode", var_B8, -1
  loc_11E57D7: CVarUnk
  loc_11E57DC: VerifyVarObj
  loc_11E57E8: LateIdStAd
  loc_11E580A: var_8C = "SELECT I.Code,I.Name,I.CommodityCode,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,IG.Name as ItemGrpName,I.TYPE,DispCode,I.RestCode,I.kitchen,I.Status,K.Name as KitchenName,I.DiscApp, I.Specification AS Specification,I.SITE_CODE,I.LOGSITE_CODE  FROM (((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join Depart K on K.Code=I.Kitchen) Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_11E582B: unk_4ECF4A.Execute var_8C & "' or I.LOGSITE_CODE='HO') AND I.RestCode='" & global_52 & "' And DispCode<>9999 ORDER BY I.Name", var_B8, -1
  loc_11E5861: Set var_88 = Me
  loc_11E586A: var_8C = "INI"
  loc_11E5878: Call Proc_118_41_EC1C2C(Proc_5_1_100EC1C(var_8C, var_88, Me.DGDispCode, var_88, var_88, Me.DGItemCat, var_88, var_88), Me.DGItemGroup, var_88, var_88)
  loc_11E588C: Call 0.Method_arg_160 (var_88, Me.DGUnit, var_88)
  loc_11E589A: Call 0.Method_arg_164 (var_88, var_88)
  loc_11E58A2: Call Proc_118_43_145038C(Me.DGRest)
  loc_11E58A7: Exit Sub
  loc_11E58A8: ' Referenced from: 11E5470
  loc_11E58B0: Set var_88 = Err()
  loc_11E58B6: Call 0.Method_arg_2C (var_8C)
  loc_11E58D7: MsgBox(CVar(var_8C), &H40, "Information", var_F0, var_110)
  loc_11E58EA: Exit Sub
  loc_11E58EB: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8208
  'Data Table: 4ECF44
  Dim var_8C As Label
  loc_ED8166: Call 0.Method_arg_50 (var_88)
  loc_ED8178: Me.LblFormCaption.Caption = var_88
  loc_ED8191: Me.LblFormCaption.Left = CDbl(0)
  loc_ED819D: Set var_A0 = Me.TopCtrl1
  loc_ED81A3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED81B0: Set var_8C = Me.TopCtrl1
  loc_ED81B6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED81D0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED81EB: Call 0.Method_arg_100 (var_B8)
  loc_ED81FD: Me.LblFormCaption.Width = var_B8
  loc_ED8205: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8341C
  'Data Table: 4ECF44
  loc_E833B7: Set global_64 = Nothing
  loc_E833C9: Set global_68 = Nothing
  loc_E833DB: Set global_76 = Nothing
  loc_E833ED: Set global_72 = Nothing
  loc_E833FF: Set global_80 = Nothing
  loc_E83411: Set global_88 = Nothing
  loc_E83418: Exit Sub
End Sub

Private Sub Form_Activate() 'E47218
  'Data Table: 4ECF44
  loc_E471E8: On Error Goto loc_E47212
  loc_E471EF: Set var_88 = Me.TopCtrl1
  loc_E471F5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4720A: If (CLng(CInt()) = &H2D) Then
  loc_E4720D:   Call TopCtrl1_UnknownEvent_15()
  loc_E47212:   ' Referenced from: E471E8
  loc_E47212: End If
  loc_E47212: Proc_6_60_E63754()
  loc_E47217: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29000
  'Data Table: 4ECF44
  loc_E28FD8: On Error Goto loc_E28FF7
  loc_E28FEF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28FF7: ' Referenced from: E28FD8
  loc_E28FF7: Proc_6_60_E63754(Shift)
  loc_E28FFC: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F3D5F4
  'Data Table: 4ECF44
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D4EB: Me.DGItemCat.Visible = False
  loc_F3D50A: If (Me.RecordCount > 0) Then
  loc_F3D549:   Set var_B4 = Me.Txt
  loc_F3D54F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3D557:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3D58A:   var_B0 = Me.Fields.Item("Name")
  loc_F3D5A9:   Set var_B4 = Me.Txt
  loc_F3D5AF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3D5B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3D5CD: End If
  loc_F3D5D8: Set var_A8 = Me.Txt
  loc_F3D5DE: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6))
  loc_F3D5E6: var_B0.SetFocus
  loc_F3D5F2: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E728EC
  'Data Table: 4ECF44
  loc_E728AA: Proc_6_153_E91D24(Me.DGItemCat, arg_14)
  loc_E728C1: Set var_8C = Me.FGPoint
  loc_E728DD: Proc_6_138_106E830(Me.DGItemCat, global_80, CInt(6))
  loc_E728EB: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3ACB4
  'Data Table: 4ECF44
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3ABAB: Me.DGHelp.Visible = False
  loc_F3ABCA: If (Me.RecordCount > 0) Then
  loc_F3AC09:   Set var_B4 = Me.Txt
  loc_F3AC0F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3AC17:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3AC4A:   var_B0 = Me.Fields.Item("Name")
  loc_F3AC69:   Set var_B4 = Me.Txt
  loc_F3AC6F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3AC77:   var_B8.Text = CStr(var_B0.Value)
  loc_F3AC8D: End If
  loc_F3AC98: Set var_A8 = Me.Txt
  loc_F3AC9E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F3ACA6: var_B0.SetFocus
  loc_F3ACB2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E75604
  'Data Table: 4ECF44
  loc_E755C2: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E755D9: Set var_8C = Me.FGPoint
  loc_E755F5: Proc_6_138_106E830(Me.DGHelp, global_68, CInt(0))
  loc_E75603: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F4A434
  'Data Table: 4ECF44
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A32B: Me.DGItemGroup.Visible = False
  loc_F4A34A: If (Me.RecordCount > 0) Then
  loc_F4A389:   Set var_B4 = Me.Txt
  loc_F4A38F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4A397:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4A3CA:   var_B0 = Me.Fields.Item("Name")
  loc_F4A3E9:   Set var_B4 = Me.Txt
  loc_F4A3EF:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4A3F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4A40D: End If
  loc_F4A418: Set var_A8 = Me.Txt
  loc_F4A41E: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2))
  loc_F4A426: var_B0.SetFocus
  loc_F4A432: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E72B3C
  'Data Table: 4ECF44
  loc_E72AFA: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E72B11: Set var_8C = Me.FGPoint
  loc_E72B2D: Proc_6_138_106E830(Me.DGItemGroup, global_72, CInt(2))
  loc_E72B3B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF7028
  'Data Table: 4ECF44
  loc_EF6F68: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_EF6F6B:   Call DGUnit_UnknownEvent_9()
  loc_EF6F70: End If
  loc_EF6F8C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF6F8F:   Call DGHelp_UnknownEvent_9()
  loc_EF6F94: End If
  loc_EF6FB0: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF6FB3:   Call DGRest_UnknownEvent_9()
  loc_EF6FB8: End If
  loc_EF6FD4: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF6FD7:   Call DGItemCat_UnknownEvent_9()
  loc_EF6FDC: End If
  loc_EF6FF8: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF6FFB:   Call DGItemGroup_UnknownEvent_9()
  loc_EF7000: End If
  loc_EF701C: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_EF701F:   Call DGDispCode_UnknownEvent_9()
  loc_EF7024: End If
  loc_EF7024: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 '1032448
  'Data Table: 4ECF44
  Dim var_9C As String
  Dim unk_4ECF4A As Connection15
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_F8 As Variant
  Dim var_98 As String
  loc_1032220: Set var_8C = New FrmConsumMast
  loc_1032241: Set var_90 = Me.Frame1
  loc_1032247: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94, var_98, "Select Count(*) From BOM Where FinItem+RestCode='")
  loc_103224F: var_C4 = FrmConsumMast.Frame1.Tag
  loc_1032258: var_9C = -1 & var_98
  loc_1032272: unk_4ECF4A.Execute var_9C & global_52 & "'", var_C8, 
  loc_10322B1: var_94 = var_C8.Fields.Item(0)
  loc_10322D3: If (var_94.Value > 0) Then
  loc_10322E3:   Me.Global.Load var_8C
  loc_10322F9:   Set var_90 = Me.Txt
  loc_10322FF:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94)
  loc_1032307:   var_98 = var_94.Tag
  loc_1032316:   var_C4 = CVar(var_98 & global_52) 'String
  loc_103231D:   Call var_8C.SEARCHBACK
  loc_1032333:   Call var_8C.TopCtrl1_eEdit
  loc_103233C: Else
  loc_103233F:   Call var_8C.TopCtrl1_eAdd
  loc_1032345:   var_B4 = 0
  loc_1032356:   Set var_90 = Me.Txt
  loc_103235C:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94)
  loc_1032364:   var_C4 = CVar(var_94) 'Address
  loc_103236C:   LateMemCallSt
  loc_1032386:   Set var_90 = Me.Txt
  loc_103238C:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94, var_98, var_8C)
  loc_1032394:   var_C4 = var_94.Tag
  loc_103239C:   var_C4 = CVar(var_98) 'String
  loc_10323B1:   var_8C.Txt.Tag = 0
  loc_1032422:   IIf((global_52 = MemVar_1F95078 & "BANQ"), "BANQUET", "OUTDOOR").Tag = CVar(global_52)
  loc_1032429:   var_B4 = 0
  loc_103242F:   var_F8 = True
  loc_1032436:   Call var_8C.Txt_Validate
  loc_103243C: End If
  loc_103243F: Call var_8C.Show
  loc_1032445: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_9 'F4ADD4
  'Data Table: 4ECF44
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4ACCB: Me.DGUnit.Visible = False
  loc_F4ACEA: If (Me.RecordCount > 0) Then
  loc_F4AD29:   Set var_B4 = Me.Txt
  loc_F4AD2F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4AD37:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4AD6A:   var_B0 = Me.Fields.Item("Name")
  loc_F4AD89:   Set var_B4 = Me.Txt
  loc_F4AD8F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4AD97:   var_B8.Text = CStr(var_B0.Value)
  loc_F4ADAD: End If
  loc_F4ADB8: Set var_A8 = Me.Txt
  loc_F4ADBE: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1))
  loc_F4ADC6: var_B0.SetFocus
  loc_F4ADD2: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_1F 'E72FDC
  'Data Table: 4ECF44
  loc_E72F9A: Proc_6_153_E91D24(Me.DGUnit, arg_14)
  loc_E72FB1: Set var_8C = Me.FGPoint
  loc_E72FCD: Proc_6_138_106E830(Me.DGUnit, global_84, CInt(1))
  loc_E72FDB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10056C8
  'Data Table: 4ECF44
  Dim var_88 As Variant
  Dim var_90 As TextBox
  loc_10054C4: On Error Goto loc_1005685
  loc_10054C7: Call Proc_118_42_F83224()
  loc_10054E7: If (Me.Check1.Value = 1) Then
  loc_10054EA:   Call Proc_118_43_145038C()
  loc_10054EF: End If
  loc_10054FD: Set var_88 = Me.Txt
  loc_1005503: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_90)
  loc_100550B: var_90.Text = vbNullString
  loc_1005525: Set var_88 = Me.Txt
  loc_100552B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_1005533: var_90.Tag = vbNullString
  loc_100554D: Set var_88 = Me.Txt
  loc_1005553: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_100555B: var_90.Text = vbNullString
  loc_1005575: Set var_88 = Me.Txt
  loc_100557B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_1005583: var_90.Text = vbNullString
  loc_100559D: Set var_88 = Me.Txt
  loc_10055A3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_10055AB: var_90.Tag = vbNullString
  loc_10055C5: Set var_88 = Me.Txt
  loc_10055CB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_90)
  loc_10055D3: var_90.Text = vbNullString
  loc_10055ED: Set var_88 = Me.Txt
  loc_10055F3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_90)
  loc_10055FB: var_90.Tag = vbNullString
  loc_100561C: var_94 = "ADD"
  loc_100562A: Call Proc_118_41_EC1C2C(Proc_5_1_100EC1C(var_94, Me))
  loc_1005640: Set var_88 = Me.Txt
  loc_1005646: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_100564E: var_90.SetFocus
  loc_1005667: Me.LblUser.Caption = vbNullString
  loc_100567C: Me.LblLDt.Caption = vbNullString
  loc_1005684: Exit Sub
  loc_1005685: ' Referenced from: 10054C4
  loc_100568D: Set var_88 = Err()
  loc_1005693: Call 0.Method_arg_2C (var_94)
  loc_10056B4: MsgBox(CVar(var_94), &H40, "Information", var_E4, var_104)
  loc_10056C7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBC2CC
  'Data Table: 4ECF44
  loc_EBC238: On Error Goto loc_EBC2C3
  loc_EBC272: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBC281:   Set var_110 = Me
  loc_EBC298:   Call Proc_118_41_EC1C2C(Proc_5_1_100EC1C("INI", var_110))
  loc_EBC2A3:   Call Proc_118_43_145038C(global_64)
  loc_EBC2AB: Else
  loc_EBC2B1:   Call 0.Method_arg_1E8 (var_110)
  loc_EBC2B9:   Call var_110.SetFocus
  loc_EBC2C2: End If
  loc_EBC2C2: Exit Sub
  loc_EBC2C3: ' Referenced from: EBC238
  loc_EBC2C3: Proc_6_60_E63754()
  loc_EBC2C8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '133BF28
  'Data Table: 4ECF44
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4ECF4A As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_133B77C: On Error Goto loc_133BECF
  loc_133B78D: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_133B790:   Exit Sub
  loc_133B791: End If
  loc_133B7C3: var_D4 = "Catalog"
  loc_133B80B: If (Proc_6_108_101061C(MemVar_1F95044, "CATALOGMAST", "ITEMCODE", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_133B80E:   Exit Sub
  loc_133B80F: End If
  loc_133B841: var_D4 = "Hall Booking"
  loc_133B889: If (Proc_6_108_101061C(MemVar_1F95044, "HallBook1", "ITEM", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_133B88C:   Exit Sub
  loc_133B88D: End If
  loc_133B907: If (Proc_6_108_101061C(MemVar_1F95044, "KOT", "ITEM", CStr(Me.Fields.Item("Code").Value), 0, "KOT") = 0) Then
  loc_133B90A:   Exit Sub
  loc_133B90B: End If
  loc_133B985: If (Proc_6_108_101061C(MemVar_1F95044, "STOCK", "ITEM", CStr(Me.Fields.Item("Code").Value), 0, "STOCK", 0) = 0) Then
  loc_133B988:   Exit Sub
  loc_133B989: End If
  loc_133B9C0: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_133B9C5:   var_96 = 0
  loc_133B9D1:   unk_4ECF4A.BeginTrans var_D0
  loc_133B9D8:   var_96 = &HFF
  loc_133B9EC:   var_94 = Me.Bookmark 'Variant
  loc_133BA46:   unk_4ECF4A.Execute CStr("Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_133BA91:   var_168 = 0
  loc_133BAA4:   var_160 = 0
  loc_133BAAF:   var_15C = 0
  loc_133BAC2:   var_154 = 0
  loc_133BACD:   var_150 = 0
  loc_133BAE0:   var_148 = 0
  loc_133BB29:   Proc_154_5_10E3BD4(MemVar_1F95044, "ItemMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_133BBA7:   unk_4ECF4A.Execute CStr("Delete From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_133BBF2:   var_168 = 0
  loc_133BC05:   var_160 = 0
  loc_133BC10:   var_15C = 0
  loc_133BC23:   var_154 = 0
  loc_133BC2E:   var_150 = 0
  loc_133BC41:   var_148 = 0
  loc_133BC8A:   Proc_154_5_10E3BD4(MemVar_1F95044, "ItemRate", "ItemCode", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_133BCFA:   var_118 = "Delete From STOCK Where ITEM='" & Me.Fields.Item("Code").Value & "'" 
  loc_133BD08:   unk_4ECF4A.Execute CStr(var_118), var_138, -1
  loc_133BD53:   var_168 = 0
  loc_133BD66:   var_160 = 0
  loc_133BD71:   var_15C = 0
  loc_133BD84:   var_154 = 0
  loc_133BD8F:   var_150 = 0
  loc_133BDA2:   var_148 = 0
  loc_133BDE2:   var_B4 = "STOCK"
  loc_133BDEB:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Item", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_133BE19:   unk_4ECF4A.CommitTrans
  loc_133BE20:   var_96 = 0
  loc_133BE2E:   Me.Requery -1
  loc_133BE3E:   Me.Requery -1
  loc_133BE4E:   Me.Requery -1
  loc_133BE6E:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_133BE7B:     Me.Bookmark = var_94
  loc_133BE83:   Else
  loc_133BE97:     If (Me.EOF = 0) Then
  loc_133BEA0:       Me.MoveLast
  loc_133BEA5:     End If
  loc_133BEA5:   End If
  loc_133BEA5:   Call Proc_118_43_145038C(var_96, var_148, 0, var_150, var_154)
  loc_133BEC6:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_133BECE: End If
  loc_133BECE: Exit Sub
  loc_133BECF: ' Referenced from: 133B77C
  loc_133BED5: If (var_96 = &HFF) Then
  loc_133BEDE:   unk_4ECF4A.RollbackTrans
  loc_133BEE3: End If
  loc_133BEEB: Set var_9C = Err()
  loc_133BEF1: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_133BF12: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_133BF25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA79A0
  'Data Table: 4ECF44
  Dim Me As Variant
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FA781C: On Error Goto loc_FA795A
  loc_FA782D: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_FA7830:   Exit Sub
  loc_FA7831: End If
  loc_FA7848: If (Me.RecordCount > 0) Then
  loc_FA786E:   Call Proc_118_41_EC1C2C(Proc_5_1_100EC1C("EDIT", Me))
  loc_FA7887:   Set var_90 = Me.Txt
  loc_FA788D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_98)
  loc_FA7895:   var_8C = var_98.Text
  loc_FA78BA:   Set var_90 = Me.Txt
  loc_FA78C0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA78C8:   var_98.SetFocus
  loc_FA78E1:   Set var_90 = Me.Txt
  loc_FA78E7:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98, 0)
  loc_FA78EF:   var_98.Enabled = CInt(var_8C)
  loc_FA78FE: Else
  loc_FA791F:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FA792F: End If
  loc_FA793C: Me.LblUser.Caption = vbNullString
  loc_FA7951: Me.LblLDt.Caption = vbNullString
  loc_FA7959: Exit Sub
  loc_FA795A: ' Referenced from: FA781C
  loc_FA7962: Set var_90 = Err()
  loc_FA7968: Call 0.Method_arg_2C (var_8C)
  loc_FA7989: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FA799C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B400
  'Data Table: 4ECF44
  loc_E1B3F5: Me.Global.Unload Me
  loc_E1B3FD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28030
  'Data Table: 4ECF44
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F27F30: On Error Goto loc_F27FCB
  loc_F27F3C: var_88 = Me.RecordCount
  loc_F27F4A: If (var_88 <= 0) Then
  loc_F27F53:   var_B8 = "Information"
  loc_F27F6E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F27F7E:   Exit Sub
  loc_F27F7F: End If
  loc_F27F89: var_10C = "SELECT I.Code as SearchCode,I.Name,IsNull(I.CommodityCode,'') HSNCode,I.Unit,IG.Name as ItemGroup,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.TYPE,convert(varchar(8),I.Dispcode,103) as DispCode,convert(varchar(50),I.SaleRate,103) as SaleRate,K.Name as KitchenName FROM (((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)Left Join Depart K on K.Code=I.Kitchen) Where I.RestCode='" & global_52
  loc_F27F90: MemVar_1F950E4 = var_10C & "' And I.DispCode<>9999 OR IG.RestCode LIKE 'K0 AND Choose_Limit >= 0 Order by I.Name"
  loc_F27F9A: var_10C = "3000,1000,1000,2000,2000,1000,1000,800,1000,1000,2000"
  loc_F27FA0: Proc_6_126_F1C850(var_10C)
  loc_F27FAE: MemVar_1F95120 = Me
  loc_F27FC5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F27FCA: Exit Sub
  loc_F27FCB: ' Referenced from: F27F30
  loc_F27FD3: Set var_110 = Err()
  loc_F27FD9: Call 0.Method_arg_1C (var_88)
  loc_F27FEA: If (var_88 <> 0) Then
  loc_F27FF5:   Set var_110 = Err()
  loc_F27FFB:   Call 0.Method_arg_2C (var_10C)
  loc_F2801C:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2802F: End If
  loc_F2802F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3DDA8
  'Data Table: 4ECF44
  loc_E3DD98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DDA0: Call Proc_118_43_145038C(global_64)
  loc_E3DDA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3E288
  'Data Table: 4ECF44
  loc_E3E278: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E280: Call Proc_118_43_145038C(global_64)
  loc_E3E285: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3EB28
  'Data Table: 4ECF44
  loc_E3EB18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3EB20: Call Proc_118_43_145038C(global_64)
  loc_E3EB25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3DF88
  'Data Table: 4ECF44
  loc_E3DF78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DF80: Call Proc_118_43_145038C(global_64)
  loc_E3DF85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '111E350
  'Data Table: 4ECF44
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4ECF4A As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  Dim var_140 As TextBox
  Dim var_F4 As Variant
  loc_111E010: On Error Goto loc_111E304
  loc_111E027: var_A0 = "SELECT Distinct I.Code,I.Name,I.DISPCODE,I.Unit,I.ItemGroup,ItemRate.Rate as SaleRate,IG.Type,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,ISNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode left Join TaxStru T On IC.TaxStru=T.Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_111E048: unk_4ECF4A.Execute var_A0 & "' or I.LOGSITE_CODE='HO') AND I.RestCode='" & global_52 & "' And I.DispCode<>9999 order by I.Name", var_CC, -1
  loc_111E053: Set var_88 = var_D0
  loc_111E06D: var_D4 = var_88.RecordCount
  loc_111E07B: If (var_D4 = 0) Then
  loc_111E097:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_111E0A7:   Exit Sub
  loc_111E0A8: End If
  loc_111E0BE: Set var_D0 = var_88 
  loc_111E0CA: var_136 = CreateFieldDefFile(var_D0, MemVar_1F950B4 & "\HallItem.ttx")
  loc_111E0D4: Set var_88 = var_D0
  loc_111E0DA: var_BC = CVar(var_136) 'Integer
  loc_111E0DD: var_98 = var_BC 'Variant
  loc_111E0F9: var_A0 = MemVar_1F950B4 & "\HallItem.RPT"
  loc_111E102: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_111E10D: MemVar_1F951E8 = var_D0
  loc_111E128: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_111E130: Call 0.Method_arg_24 (var_136, &HFF)
  loc_111E13C: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_111E155:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_111E15D:   Call 0.Method_arg_20 (var_140)
  loc_111E165:   Call 0.Method_arg_30 (var_A0)
  loc_111E17B:   var_150 = Ucase(CVar(var_A0)) 'Variant
  loc_111E1AB:   If (var_150 = Ucase("Title")) Then
  loc_111E1C1:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_111E1C9:     Call 0.Method_arg_20 (var_140)
  loc_111E1D1:     Call 0.Method_arg_38 ("'Menu Item Entry'")
  loc_111E1E0:   Else
  loc_111E202:     If (var_150 = Ucase("RestName")) Then
  loc_111E216:       Set var_D0 = Me.Txt
  loc_111E21C:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB), var_140)
  loc_111E224:       var_A0 = var_140.Text
  loc_111E22D:       var_A4 = "'" & var_A0
  loc_111E247:       Call 0.Method_arg_90 (var_154, CLng(var_9A))
  loc_111E24F:       Call 0.Method_arg_20 (var_158)
  loc_111E257:       Call 0.Method_arg_38 (var_A4 & "'")
  loc_111E270:     End If
  loc_111E270:   End If
  loc_111E273: Next var_13A 'Integer
  loc_111E291: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_111E299: Call 0.Method_arg_2C (var_E4)
  loc_111E2A7: Call 0.Method_arg_150 (var_104)
  loc_111E2B2: Call 0.Method_arg_50 (var_A0)
  loc_111E2BC: Set var_140 = Nothing
  loc_111E2D6: Set var_D0 = MemVar_1F951E8 
  loc_111E2E2: Proc_6_99_1484404(var_D0, 0, var_A0)
  loc_111E2ED: MemVar_1F951E8 = var_D0
  loc_111E300: Set var_88 = Nothing
  loc_111E303: Exit Sub
  loc_111E304: ' Referenced from: 111E010
  loc_111E30C: Set var_D0 = Err()
  loc_111E312: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_111E31D: Call 0.Method_arg_50 (var_A4)
  loc_111E339: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_114, var_134)
  loc_111E34C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E73800
  'Data Table: 4ECF44
  Dim Me As Recordset15
  loc_E737A7: Me.Requery -1
  loc_E737B7: Me.Requery -1
  loc_E737C7: Me.Requery -1
  loc_E737D7: Me.Requery -1
  loc_E737E7: Me.Requery -1
  loc_E737F7: Me.Requery -1
  loc_E737FC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15C6FF0
  'Data Table: 4ECF44
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim unk_4ECF4A As Connection15
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_F0 As String
  Dim var_100 As Variant
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_94 As Double
  Dim var_168 As TextBox
  Dim var_1B4 As TextBox
  Dim var_200 As TextBox
  Dim var_24C As TextBox
  Dim var_348 As TextBox
  Dim var_4A4 As TextBox
  Dim var_160 As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_260 As Variant
  Dim var_2C8 As Variant
  Dim var_36C As Variant
  Dim var_3AC As Variant
  Dim var_47C As Variant
  Dim var_49C As Variant
  Dim var_5C8 As Variant
  Dim var_658 As Double
  Dim var_16C As String
  Dim var_120 As Fields15
  Dim var_164 As Field20
  Dim var_EC As Variant
  loc_15C5E1C: On Error Goto loc_15C6F9C
  loc_15C5E23: var_86 = CByte(0) 'Byte
  loc_15C5E32: Set var_98 = Me.Txt
  loc_15C5E38: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15C5E61: If (Proc_183_19_E8E68C(var_9C, "Name") = 0) Then
  loc_15C5E6B:   Call Txt_GotFocus()
  loc_15C5E70:   Exit Sub
  loc_15C5E71: End If
  loc_15C5E7C: Set var_98 = Me.Txt
  loc_15C5E82: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_15C5EAB: If (Proc_183_19_E8E68C(var_9C, "Unit") = 0) Then
  loc_15C5EB5:   Call Txt_GotFocus()
  loc_15C5EBA:   Exit Sub
  loc_15C5EBB: End If
  loc_15C5EC6: Set var_98 = Me.Txt
  loc_15C5ECC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, CInt(1))
  loc_15C5EF5: If (Proc_183_19_E8E68C(var_9C, "Item Group Name") = 0) Then
  loc_15C5EFF:   Call Txt_GotFocus()
  loc_15C5F04:   Exit Sub
  loc_15C5F05: End If
  loc_15C5F10: Set var_98 = Me.Txt
  loc_15C5F16: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, CInt(2))
  loc_15C5F3F: If (Proc_183_19_E8E68C(var_9C, "Item Category") = 0) Then
  loc_15C5F49:   Call Txt_GotFocus()
  loc_15C5F4E:   Exit Sub
  loc_15C5F4F: End If
  loc_15C5F5A: Set var_98 = Me.Txt
  loc_15C5F60: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C, CInt(6))
  loc_15C5F89: If (Proc_183_19_E8E68C(var_9C, "Kitchen") = 0) Then
  loc_15C5F93:   Call Txt_GotFocus()
  loc_15C5F98:   Exit Sub
  loc_15C5F99: End If
  loc_15C5FA4: Set var_98 = Me.Txt
  loc_15C5FAA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_9C, CInt(3))
  loc_15C5FD3: If (Proc_183_19_E8E68C(var_9C, "Service Charge") = 0) Then
  loc_15C5FDD:   Call Txt_GotFocus()
  loc_15C5FE2:   Exit Sub
  loc_15C5FE3: End If
  loc_15C5FE6: Call Proc_118_44_12A7B80(var_A6, CInt(8))
  loc_15C5FF1: If (var_A6 = &HFF) Then
  loc_15C5FF4:   Exit Sub
  loc_15C5FF5: End If
  loc_15C5FF9: Set var_98 = Me.TopCtrl1
  loc_15C5FFF: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_15C6018: If (CStr(var_9C) = "Add") Then
  loc_15C6021:   var_DC = 0
  loc_15C603E:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F95070
  loc_15C604E:   unk_4ECF4A.Execute CStr(var_9C) & "'", var_B8, -1
  loc_15C6056:   var_98 = var_98.Fields
  loc_15C605E:   var_DC = var_9C.Item(var_9C)
  loc_15C6066:   var_A0 = var_A0.Value
  loc_15C609F:   var_100 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_15C60CD:   var_110 = (1 + Format(CStr(var_EC), "000000"))
  loc_15C60D8:   global_96 = CStr(var_110)
  loc_15C60ED: Else
  loc_15C6102:   var_98 = Me.Fields
  loc_15C6112:   var_B8 = var_98.Item("Code").Value
  loc_15C6121:   global_96 = CStr(var_B8)
  loc_15C6132: End If
  loc_15C613B: unk_4ECF4A.BeginTrans var_114
  loc_15C6144: var_86 = CByte(1) 'Byte
  loc_15C615F: var_A4 = "Select Rate,Appdate From ItemRate Where ItemCode='" & global_96
  loc_15C6170: var_F0 = var_A4 & "' And RestCode='" & global_52
  loc_15C6180: unk_4ECF4A.Execute var_F0 & "' Order By AppDate Desc ", var_B8, -1
  loc_15C618B: Set var_8C = var_98
  loc_15C61B3: If (var_8C.RecordCount > 0) Then
  loc_15C61CD:   var_9C = var_8C.Fields.Item("Rate")
  loc_15C61FA:   var_94 = CSng(Format(CVar(var_9C), "0.00"))
  loc_15C620C: Else
  loc_15C621A:   Set var_98 = Me.Txt
  loc_15C6220:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C, var_A4, var_94, 1)
  loc_15C6228:   1 = var_9C.Text
  loc_15C6235:   var_94 = Val(var_A4)
  loc_15C6242: End If
  loc_15C624C: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_15C6265: If (CStr(Me.TopCtrl1) = "Add") Then
  loc_15C6276:   Set var_98 = Me.Txt
  loc_15C627C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_F0)
  loc_15C6284:   1 = var_9C.Text
  loc_15C6294:   Set var_A0 = Me.Txt
  loc_15C629A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_120)
  loc_15C62A9:   var_EC = Trim(CVar(var_120))
  loc_15C62BC:   Set var_164 = Me.Txt
  loc_15C62C2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168, var_16C)
  loc_15C62CA:   var_100 = var_168.Text
  loc_15C62DD:   Set var_1B0 = Me.Txt
  loc_15C62E3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_15C62FE:   Set var_1FC = Me.Txt
  loc_15C6304:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_15C631F:   Set var_248 = Me.Txt
  loc_15C6325:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_24C)
  loc_15C633D:   Set var_294 = Me.Txt
  loc_15C6343:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298)
  loc_15C6367:   Set var_2EC = Me.Txt
  loc_15C636D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2F0)
  loc_15C6394:   Set var_344 = Me.Txt
  loc_15C639A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_348)
  loc_15C63B5:   Proc_6_7_F26918(var_42C, Date)
  loc_15C63C8:   Set var_4A0 = Me.Txt
  loc_15C63CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_4A4)
  loc_15C63E6:   Set var_52C = Me.Txt
  loc_15C63EC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_530)
  loc_15C6410:   Set var_584 = Me.Txt
  loc_15C6416:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_588)
  loc_15C6453:   var_A4 = "Insert Into ItemMast (Code,Name,CommodityCode,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Status,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,SChrgApp,Specification,LOGSITE_CODE) " & " Values ('"
  loc_15C64AA:   var_1AC = CVar(var_A4 & global_96 & "','" & var_F0 & "','") & var_EC & "','" & CVar(global_52) & "'," & CVar(var_16C) & ",'" 
  loc_15C64C7:   var_224 = var_1AC & CVar(var_1B4.Text) & "','" & CVar(var_200.Tag) 
  loc_15C650D:   var_36C = var_224 & "','" & CVar(var_24C.Tag) & "','" & Left(CVar(var_298), 1) & "','" & Left(CVar(var_2F0), 1) & "','" & CVar(var_348.Text) 
  loc_15C6559:   var_47C = var_36C & "', '" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_42C & ",'A','" & CVar(global_56) 
  loc_15C65A0:   var_5C8 = var_47C & "','" & CVar(var_4A4.Tag) & "'," & CVar(var_94) & ",'" & Left(CVar(var_530), 1) & "','" & StrConv(Trim(CVar(var_588)), 3, 0) 
  loc_15C65CA:   unk_4ECF4A.Execute CStr(var_5C8 & "','" & CVar(MemVar_1F95078) & "')"), var_64C, -1
  loc_15C668C:   Set var_98 = Me.Txt
  loc_15C6692:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C, var_A4)
  loc_15C669A:   var_650 = var_9C.Text
  loc_15C66B1:   If (var_A4 <> vbNullString) Then
  loc_15C66C2:     Set var_98 = Me.Txt
  loc_15C66C8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C)
  loc_15C66EB:     Set var_A0 = Me.Txt
  loc_15C66F1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_120)
  loc_15C6700:     Proc_6_7_F26918(var_EC, CVar(var_120))
  loc_15C6710:     Proc_6_7_F26918(var_1AC, MemVar_1F950EC)
  loc_15C6729:     var_A4 = "Insert Into Itemrate(ItemCode,RestCode,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('"
  loc_15C673A:     var_F0 = var_A4 & global_96 & "','"
  loc_15C678A:     var_17C = CVar(var_F0 & global_52 & "'," & CStr(Val(var_9C.Text)) & ",") & var_EC & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_15C67C4:     unk_4ECF4A.Execute CStr(var_17C & "'," & var_1AC & ",'A','" & CVar(MemVar_1F95078) & "')"), var_224, -1
  loc_15C680A:   End If
  loc_15C680D: Else
  loc_15C681B:   Set var_98 = Me.Txt
  loc_15C6821:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_15C6829:   var_164 = var_9C.Text
  loc_15C6839:   Set var_A0 = Me.Txt
  loc_15C683F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_120)
  loc_15C684E:   var_EC = Trim(CVar(var_120))
  loc_15C6861:   Set var_164 = Me.Txt
  loc_15C6867:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168, var_F0)
  loc_15C686F:   var_658 = var_168.Text
  loc_15C6882:   Set var_1B0 = Me.Txt
  loc_15C6888:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_15C68A3:   Set var_1FC = Me.Txt
  loc_15C68A9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_15C68C4:   Set var_248 = Me.Txt
  loc_15C68CA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_24C)
  loc_15C68E2:   Set var_294 = Me.Txt
  loc_15C68E8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298)
  loc_15C690C:   Set var_2EC = Me.Txt
  loc_15C6912:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2F0)
  loc_15C6939:   Set var_344 = Me.Txt
  loc_15C693F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_348)
  loc_15C695A:   Proc_6_7_F26918(var_42C, Date)
  loc_15C696D:   Set var_4A0 = Me.Txt
  loc_15C6973:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_4A4)
  loc_15C698B:   Set var_52C = Me.Txt
  loc_15C6991:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_530)
  loc_15C69B5:   Set var_584 = Me.Txt
  loc_15C69BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_588)
  loc_15C6A24:   var_160 = CVar("UPDATE ItemMast SET Name='" & var_A4 & "',CommodityCode='") & var_EC & "',RestCode='" & CVar(global_52) & "',DispCode=" 
  loc_15C6A37:   var_1AC = var_160 & CVar(var_F0) & ",Unit='" 
  loc_15C6A64:   var_260 = CVar(var_24C.Tag) 'String
  loc_15C6A77:   var_2C8 = var_1AC & CVar(var_1B4.Text) & "',ItemGroup='" & CVar(var_200.Tag) & "',ItemCatCode='" & var_260 & "',DiscApp='" & Left(CVar(var_298), 1) 
  loc_15C6AAD:   var_3AC = var_2C8 & "',RateEdit='" & Left(CVar(var_2F0), 1) & "',Status='" & CVar(var_348.Text) & "',SITE_CODE='" & CVar(MemVar_1F95070) 
  loc_15C6AEF:   var_49C = var_3AC & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_42C & " ,U_AE='E',TYPE='" & CVar(global_56) & "',Kitchen='" 
  loc_15C6B2D:   var_5C8 = var_49C & CVar(var_4A4.Tag) & "',SaleRate=" & CVar(var_94) & ",SChrgApp='" & Left(CVar(var_530), 1) & "',Specification='" & StrConv(Trim(CVar(var_588)), 3, 0) 
  loc_15C6B5A:   unk_4ECF4A.Execute CStr(var_5C8 & "' WHERE Code='" & CVar(global_96) & "'"), var_64C, -1
  loc_15C6C16:   Set var_98 = Me.Txt
  loc_15C6C1C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C, var_A4)
  loc_15C6C24:   var_650 = var_9C.Text
  loc_15C6C31:   var_658 = Val(var_A4)
  loc_15C6C3F:   Set var_A0 = Me.Txt
  loc_15C6C45:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_120)
  loc_15C6C4D:   var_B8 = CVar(var_120) 'Address
  loc_15C6C54:   Proc_6_7_F26918(var_EC, var_B8)
  loc_15C6C64:   Proc_6_7_F26918(var_1AC, MemVar_1F950EC)
  loc_15C6CAB:   var_160 = CVar("Update ItemRate Set Rate=" & CStr(var_658) & ",AppDate=") & var_EC & ",Site_Code='" & CVar(MemVar_1F95070) & "',U_name='" 
  loc_15C6CE4:   var_214 = var_160 & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_1AC & ",U_AE='E' Where ItemCode='" & CVar(global_96) & "' And RestCode='" 
  loc_15C6D08:   unk_4ECF4A.Execute CStr(var_214 & CVar(global_52) & "'"), var_260, -1
  loc_15C6D48: End If
  loc_15C6D75: Set var_98 = Me.Txt
  loc_15C6D7B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4, "Select Count(*) From UnitMast Where Name='", var_B8, -1, var_A0)
  loc_15C6D9C: unk_4ECF4A.Execute 0 & var_A4 & "'", var_164, var_EC
  loc_15C6DB4:  = var_A0.Fields.Value
  loc_15C6DE1: If (var_9C.Text.Item(var_658) <= 0) Then
  loc_15C6E09:   Set var_98 = Me.Txt
  loc_15C6E0F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('")
  loc_15C6E17:   var_160 = var_9C.Text
  loc_15C6E20:   var_F0 = -1 & var_A4
  loc_15C6E43:   var_EC = CVar(0 & var_A4 & "'" & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_15C6E49:   var_CC = MemVar_1F950EC
  loc_15C6E51:   Proc_6_7_F26918(var_B8, var_CC)
  loc_15C6E59:   var_100 = var_EC & var_B8 
  loc_15C6E62:   var_110 = var_100 & ",'A','" 
  loc_15C6E83:   unk_4ECF4A.Execute CStr(var_110 & CVar(MemVar_1F95078) & "')"), var_A0, 
  loc_15C6EB5: End If
  loc_15C6EBB: unk_4ECF4A.CommitTrans
  loc_15C6EC4: var_86 = CByte(0) 'Byte
  loc_15C6ED3: Me.Requery -1
  loc_15C6EE3: Me.Requery -1
  loc_15C6EF3: Me.Requery -1
  loc_15C6F03: Me.Requery -1
  loc_15C6F30: Me.Find "Code='" & global_96 & "'", 0, 1
  loc_15C6F40: Set var_98 = Me.TopCtrl1
  loc_15C6F46: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_CC)
  loc_15C6F5F: If (CStr() = "Add") Then
  loc_15C6F62:   Call TopCtrl1_UnknownEvent_A()
  loc_15C6F67:   Exit Sub
  loc_15C6F68: End If
  loc_15C6F7D: var_A4 = "INI"
  loc_15C6F8B: Call Proc_118_41_EC1C2C(Proc_5_1_100EC1C(var_A4, Me))
  loc_15C6F96: Call Proc_118_43_145038C(global_64)
  loc_15C6F9B: Exit Sub
  loc_15C6F9C: ' Referenced from: 15C5E1C
  loc_15C6FA5: If (CInt(var_86) = 1) Then
  loc_15C6FAE:   unk_4ECF4A.RollbackTrans
  loc_15C6FB3: End If
  loc_15C6FBB: Set var_98 = Err()
  loc_15C6FC1: Call 0.Method_arg_2C (var_A4)
  loc_15C6FDA: MsgBox(CVar(var_A4), &H10, var_EC, var_100, var_110)
  loc_15C6FED: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1522F8C
  'Data Table: 4ECF44
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_BC As Variant
  Dim var_90 As Variant
  Dim var_C8 As Variant
  Dim var_104 As Variant
  Dim var_88 As Variant
  Dim var_A8 As String
  Dim var_110 As String
  Dim unk_4ECF4A As Connection15
  loc_1522032: Set var_88 = Me.Txt
  loc_1522038: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1522046: Proc_6_74_E23240(var_8C)
  loc_1522052: Call Proc_118_45_FB4CE4(var_8C)
  loc_1522057: On Error Goto loc_1522F46
  loc_152205D: var_92 = Index
  loc_1522068: If (var_92 = CInt(0)) Then
  loc_152207A:   Me.Filter = 0
  loc_152208A:   Me.Requery -1
  loc_15220A0:   Set var_88 = Me.Txt
  loc_15220A6:   Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C, var_A8)
  loc_15220AE:   "ItemGroup='" = var_8C.Tag
  loc_15220C8:   Me.Filter = CVar(var_92 & var_A8 & "'")
  loc_15220F5:   If (Me.RecordCount > 0) Then
  loc_1522103:     Set var_8C = Me.FGPoint
  loc_152211B:     Proc_6_137_1192FDC(Me.DGHelp, global_68)
  loc_1522129:   End If
  loc_152212C: Else
  loc_1522134:   If (var_92 = CInt(2)) Then
  loc_1522146:     Me.Filter = 0
  loc_1522162:     If (Me.RecordCount > 0) Then
  loc_1522170:       Set var_8C = Me.FGPoint
  loc_1522188:       Proc_6_137_1192FDC(Me.DGItemGroup, global_72, Index)
  loc_1522196:     End If
  loc_15221E4:     Set var_88 = Me.Txt
  loc_15221EA:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15221F2:     var_8C = var_8C.Text
  loc_152220A:     If (Index Or (var_A8 = vbNullString)) Then
  loc_152220D:       Exit Sub
  loc_152220E:     End If
  loc_152221B:     Set var_88 = Me.Txt
  loc_1522221:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1522229:     var_A8 = var_8C.Text
  loc_152223B:     var_A4 = "Name"
  loc_1522276:     If CBool(CVar(var_A8) <> Me.Fields.Item(var_A4).Value) Then
  loc_152227F:       Me.MoveFirst
  loc_15222A2:       Set var_88 = Me.Txt
  loc_15222A8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_15222B0:       0 = var_8C.Text
  loc_15222C9:       Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_15222DE:     End If
  loc_15222E1:   Else
  loc_15222E9:     If (var_92 = CInt(6)) Then
  loc_1522303:       If (Me.RecordCount > 0) Then
  loc_1522311:         Set var_8C = Me.FGPoint
  loc_1522329:         Proc_6_137_1192FDC(Me.DGItemCat, global_80)
  loc_1522337:       End If
  loc_1522385:       Set var_88 = Me.Txt
  loc_152238B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1522393:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15223AB:       If (Index Or (var_A8 = vbNullString)) Then
  loc_15223AE:         Exit Sub
  loc_15223AF:       End If
  loc_15223BC:       Set var_88 = Me.Txt
  loc_15223C2:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15223CA:       var_A8 = var_8C.Text
  loc_15223DC:       var_A4 = "Name"
  loc_1522417:       If CBool(CVar(var_A8) <> Me.Fields.Item(var_A4).Value) Then
  loc_1522420:         Me.MoveFirst
  loc_1522443:         Set var_88 = Me.Txt
  loc_1522449:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1522451:         0 = var_8C.Text
  loc_152246A:         Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_152247F:       End If
  loc_1522482:     Else
  loc_152248A:       If (var_92 = CInt(1)) Then
  loc_15224A4:         If (Me.RecordCount > 0) Then
  loc_15224B2:           Set var_8C = Me.FGPoint
  loc_15224CA:           Proc_6_137_1192FDC(Me.DGUnit, global_84)
  loc_15224D8:         End If
  loc_1522526:         Set var_88 = Me.Txt
  loc_152252C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1522534:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_152254C:         If (Index Or (var_A8 = vbNullString)) Then
  loc_152254F:           Exit Sub
  loc_1522550:         End If
  loc_152255D:         Set var_88 = Me.Txt
  loc_1522563:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_152256B:         var_A8 = var_8C.Text
  loc_152257D:         var_A4 = "Name"
  loc_1522594:         var_C8 = Me.Fields.Item(var_A4)
  loc_15225B8:         If CBool(CVar(var_A8) <> var_C8.Value) Then
  loc_15225C1:           Me.MoveFirst
  loc_15225E4:           Set var_88 = Me.Txt
  loc_15225EA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_15225F2:           0 = var_8C.Text
  loc_152260B:           Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1522620:         End If
  loc_1522623:       Else
  loc_152262B:         If Not (var_92 = CInt(4)) Then
  loc_1522636:           If Not (var_92 = CInt(5)) Then
  loc_1522641:             If (var_92 = CInt(8)) Then
  loc_1522644:             End If
  loc_1522644:           End If
  loc_1522653:           Set var_88 = Me.Txt
  loc_1522659:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1522661:           var_8C.SelStart = 0
  loc_152267A:           Set var_88 = Me.Txt
  loc_1522680:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_152269B:           Set var_90 = Me.Txt
  loc_15226A1:           Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_15226A9:           var_C8.SelLength = Len(var_8C.Text)
  loc_15226C9:           Set var_88 = Me.Txt
  loc_15226CF:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15226E9:           Set var_90 = Me.Txt
  loc_15226EF:           Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_15226F7:           var_C8.Tag = var_8C.Text
  loc_152270D:         Else
  loc_1522715:           If (var_92 = CInt(7)) Then
  loc_1522725:             Set var_88 = Me.Txt
  loc_152272B:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1522746:             Set var_90 = Me.Txt
  loc_152274C:             Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1522754:             var_C8.SelLength = Len(var_8C.Text)
  loc_1522774:             Set var_88 = Me.Txt
  loc_152277A:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1522782:             var_A8 = var_8C.Text
  loc_1522794:             Set var_90 = Me.Txt
  loc_152279A:             Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_15227A2:             var_C8.Tag = var_A8
  loc_15227B8:           Else
  loc_15227C0:             If (var_92 = CInt(3)) Then
  loc_15227D1:               Set var_88 = Me.Txt
  loc_15227D7:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15227F6:               Me.DGRest.Left = CVar(var_8C.Left)
  loc_1522812:               Set var_90 = Me.Txt
  loc_1522818:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_C8)
  loc_1522833:               Set var_88 = Me.Txt
  loc_1522839:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_1522851:               var_A4 = CVar(((var_8C.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_152285A:               Set var_104 = Me.DGRest
  loc_1522860:               var_104.Top = CVar(var_8C.Left)
  loc_1522881:               Me.Filter = 0
  loc_1522892:               Me.Filter = "RestType='Kitchen'"
  loc_15228AE:               If (Me.RecordCount > 0) Then
  loc_15228BC:                 Set var_8C = Me.FGPoint
  loc_15228D4:                 Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_15228E2:               End If
  loc_1522930:               Set var_88 = Me.Txt
  loc_1522936:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_152293E:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1522956:               If (Index Or (var_A8 = vbNullString)) Then
  loc_1522959:                 Exit Sub
  loc_152295A:               End If
  loc_1522967:               Set var_88 = Me.Txt
  loc_152296D:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1522975:               var_A8 = var_8C.Text
  loc_1522987:               var_A4 = "Name"
  loc_1522996:               var_90 = Me.Fields
  loc_15229C2:               If CBool(CVar(var_A8) <> var_90.Item(var_A4).Value) Then
  loc_15229CB:                 Me.MoveFirst
  loc_15229EE:                 Set var_88 = Me.Txt
  loc_15229F4:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_15229FC:                 0 = var_8C.Text
  loc_1522A15:                 Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1522A2A:               End If
  loc_1522A3D:               Me.DGRest.Tag = CVar(CStr(Index))
  loc_1522A4B:             Else
  loc_1522A53:               If (var_92 = CInt(&HB)) Then
  loc_1522A64:                 Set var_8C = Me.Txt
  loc_1522A6A:                 Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_1522A90:                 var_A4 = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_1522A9F:                 Me.DGRest.Left = var_A4
  loc_1522ABD:                 Set var_8C = Me.Txt
  loc_1522AC3:                 Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_1522ADE:                 Set var_C8 = Me.Txt
  loc_1522AE4:                 Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_104)
  loc_1522B12:                 var_A4 = CVar((((Me.Frame1.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_1522B21:                 Me.DGRest.Top = var_A4
  loc_1522B44:                 Me.Filter = 0
  loc_1522B55:                 Me.Filter = "RestType='Banquet'"
  loc_1522B71:                 If (Me.RecordCount > 0) Then
  loc_1522B7F:                   Set var_8C = Me.FGPoint
  loc_1522B97:                   Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_1522BA5:                 End If
  loc_1522BF3:                 Set var_88 = Me.Txt
  loc_1522BF9:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1522C01:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1522C19:                 If (Index Or (var_A8 = vbNullString)) Then
  loc_1522C1C:                   Exit Sub
  loc_1522C1D:                 End If
  loc_1522C2A:                 Set var_88 = Me.Txt
  loc_1522C30:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1522C38:                 var_A8 = var_8C.Text
  loc_1522C4A:                 var_A4 = "Name"
  loc_1522C61:                 var_C8 = Me.Fields.Item(var_A4)
  loc_1522C85:                 If CBool(CVar(var_A8) <> var_C8.Value) Then
  loc_1522C8E:                   Me.MoveFirst
  loc_1522CB1:                   Set var_88 = Me.Txt
  loc_1522CB7:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1522CBF:                   0 = var_8C.Text
  loc_1522CD8:                   Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1522CED:                 End If
  loc_1522CF2:                 var_BC = CVar(CStr(Index)) 'String
  loc_1522D00:                 Me.DGRest.Tag = var_BC
  loc_1522D0E:               Else
  loc_1522D16:                 If (var_92 = CInt(9)) Then
  loc_1522D26:                   Set var_88 = Me.Txt
  loc_1522D2C:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1522D47:                   Set var_90 = Me.Txt
  loc_1522D4D:                   Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1522D55:                   var_C8.SelLength = Len(var_8C.Text)
  loc_1522D75:                   Set var_88 = Me.Txt
  loc_1522D7B:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1522D95:                   Set var_90 = Me.Txt
  loc_1522D9B:                   Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1522DA3:                   var_C8.Tag = var_8C.Text
  loc_1522DB9:                 Else
  loc_1522DC1:                   If (var_92 = CInt(&HA)) Then
  loc_1522DD2:                     Set var_88 = Me.Txt
  loc_1522DD8:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_1522DF7:                     Me.DGDispCode.Left = CVar(var_8C.Left)
  loc_1522E13:                     Set var_90 = Me.Txt
  loc_1522E19:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_C8)
  loc_1522E3A:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_1522E52:                     var_A4 = CVar(((var_8C.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1522E61:                     Me.DGDispCode.Top = CVar(var_8C.Left)
  loc_1522E87:                     var_A8 = "SELECT DispCode as COde,DispCode FROM ItemMast Where Logsite_Code in ('" & MemVar_1F95078
  loc_1522E9F:                     var_110 = var_A8 & "','HO') And Type IN ('Finish')  And DispCode<>9999 and RestCode ='" & global_52 & "' ORDER BY DispCode"
  loc_1522EA8:                     unk_4ECF4A.Execute var_110, var_BC, -1
  loc_1522EDB:                     CVarUnk
  loc_1522EE0:                     VerifyVarObj
  loc_1522EE6:                     Set var_88 = Me.DGDispCode
  loc_1522EEC:                     LateIdStAd
  loc_1522F11:                     If (Me.RecordCount > 0) Then
  loc_1522F37:                       Proc_6_137_1192FDC(Me.DGDispCode, Me.Txt, Index, Me.FGPoint)
  loc_1522F45:                     End If
  loc_1522F45:                   End If
  loc_1522F45:                 End If
  loc_1522F45:               End If
  loc_1522F45:             End If
  loc_1522F45:           End If
  loc_1522F45:         End If
  loc_1522F45:       End If
  loc_1522F45:     End If
  loc_1522F45:   End If
  loc_1522F45: End If
  loc_1522F45: Exit Sub
  loc_1522F46: ' Referenced from: 1522057
  loc_1522F54: Call 0.Method_arg_2C (var_A8, Err())
  loc_1522F75: MsgBox(CVar(var_A8), &H40, "Information", var_E8, var_130)
  loc_1522F88: Exit Sub
  loc_1522F89: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13580E4
  'Data Table: 4ECF44
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_94 As DataGrid
  Dim var_9C As DataGrid
  loc_13578D2: If (CLng(Shift) = &H1B) Then
  loc_13578D5:   Call Proc_118_45_FB4CE4()
  loc_13578DA:   Exit Sub
  loc_13578DB: End If
  loc_13578DE: var_88 = KeyCode
  loc_13578E9: If (var_88 = CInt(0)) Then
  loc_135790E:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_135792E:     Set var_9C = Me.FGPoint
  loc_135795C:     Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift)
  loc_1357970:   End If
  loc_13579C9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13579EF:     Proc_6_138_106E830(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 0)
  loc_13579FD:   End If
  loc_1357A00: Else
  loc_1357A08:   If (var_88 = CInt(2)) Then
  loc_1357A33:     Set var_9C = Nothing
  loc_1357A65:     Proc_6_69_134A630(Me.DGItemGroup, Me.Txt, CInt(2), global_72, Shift, 0, 1)
  loc_1357AD4:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1357ADB:       Set var_9C = Me.DGItemGroup
  loc_1357AFA:       Proc_6_138_106E830(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_1357B08:     End If
  loc_1357B0B:   Else
  loc_1357B13:     If (var_88 = CInt(6)) Then
  loc_1357B6C:       Proc_6_69_134A630(Me.DGItemCat, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_1357BDB:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1357C01:         Proc_6_138_106E830(Me.DGItemCat, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1357C0F:       End If
  loc_1357C12:     Else
  loc_1357C1A:       If Not (var_88 = CInt(3)) Then
  loc_1357C25:         If (var_88 = CInt(&HB)) Then
  loc_1357C28:         End If
  loc_1357C7E:         Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1357CED:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1357CFB:           Set var_94 = Me.FGPoint
  loc_1357D13:           Proc_6_138_106E830(Me.DGRest, global_76, KeyCode, var_94, Me.FGPoint, 0)
  loc_1357D21:         End If
  loc_1357D24:       Else
  loc_1357D2C:         If (var_88 = CInt(&HA)) Then
  loc_1357D39:           Set var_90 = Me.Txt
  loc_1357D3F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, 1)
  loc_1357D5A:           Proc_6_41_FA1734(var_94, Shift, 4, 0)
  loc_1357D88:           If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_1357DA8:             Set var_9C = Me.FGPoint
  loc_1357DD6:             Proc_6_79_11AD564(Me.DGDispCode, Me.Txt, KeyCode, global_88, Shift, 0)
  loc_1357DEA:           End If
  loc_1357E43:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1357E69:             Proc_6_138_106E830(Me.DGDispCode, global_88, KeyCode, Me.FGPoint, 1)
  loc_1357E77:           End If
  loc_1357E7A:         Else
  loc_1357E82:           If (var_88 = CInt(1)) Then
  loc_1357EA2:             Set var_9C = Me.FGPoint
  loc_1357ED0:             Proc_6_79_11AD564(Me.DGUnit, Me.Txt, KeyCode, global_84, Shift, 0, 1)
  loc_1357F3D:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1357F44:               Set var_9C = Me.DGUnit
  loc_1357F63:               Proc_6_138_106E830(var_9C, global_84, KeyCode, Me.FGPoint, var_9C, 0)
  loc_1357F71:             End If
  loc_1357F71:           End If
  loc_1357F71:         End If
  loc_1357F71:       End If
  loc_1357F71:     End If
  loc_1357F71:   End If
  loc_1357F71: End If
  loc_1357FA2: Set var_9C = Me.DGRest
  loc_1358018: If ((((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGDispCode.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGItemCat.Visible) = 0)) And (CBool(Me.DGUnit.Visible) = 0)) Then
  loc_1358039:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HD))) Then
  loc_1358046:     Call Txt_Validate(CInt(3))
  loc_1358050:     Call Proc_118_47_E82B14(0, var_86, var_9C, 0)
  loc_1358058:   Else
  loc_1358076:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_135807F:       Call Txt_Validate(KeyCode)
  loc_135808A:       If (var_86 = &HFF) Then
  loc_135808D:         Exit Sub
  loc_135808E:       End If
  loc_1358094:       Proc_6_75_E5335C(Shift, arg_14, var_86)
  loc_135809C:     Else
  loc_13580B1:       If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13580BA:         Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_13580C2:       Else
  loc_13580D5:         If ((CLng(Shift) = &H26) And (KeyCode <> CInt(2))) Then
  loc_13580DE:           Proc_6_76_E533C8(Shift, arg_14)
  loc_13580E3:         End If
  loc_13580E3:       End If
  loc_13580E3:     End If
  loc_13580E3:   End If
  loc_13580E3: End If
  loc_13580E3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '119B5B4
  'Data Table: 4ECF44
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_119B1AB: Proc_6_58_E06050(arg_10)
  loc_119B1B6: Proc_6_133_E7FB08(var_94)
  loc_119B1BF: arg_10 = CInt(var_94)
  loc_119B1C8: var_96 = KeyAscii
  loc_119B1D3: If (var_96 = CInt(&HA)) Then
  loc_119B1E0:   Set var_9C = Me.Txt
  loc_119B1E6:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_119B201:   Proc_6_42_129B55C(var_A0, arg_10, 4)
  loc_119B210: Else
  loc_119B218:   If (var_96 = CInt(2)) Then
  loc_119B237:     If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_119B264:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_119B296:       Proc_6_138_106E830(Me.DGItemGroup, global_72, KeyAscii, Me.FGPoint)
  loc_119B2A4:     End If
  loc_119B2A7:   Else
  loc_119B2AF:     If Not (var_96 = CInt(3)) Then
  loc_119B2BA:       If (var_96 = CInt(&HB)) Then
  loc_119B2BD:       End If
  loc_119B2D9:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_119B306:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_119B338:         Proc_6_138_106E830(Me.DGRest, global_76, KeyAscii, Me.FGPoint, 0)
  loc_119B346:       End If
  loc_119B349:     Else
  loc_119B351:       If (var_96 = CInt(6)) Then
  loc_119B370:         If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_119B39D:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_119B3B7:           Set var_A0 = Me.FGPoint
  loc_119B3CF:           Proc_6_138_106E830(Me.DGItemCat, global_80, KeyAscii, var_A0, 0)
  loc_119B3DD:         End If
  loc_119B3E0:       Else
  loc_119B3E8:         If (var_96 = CInt(7)) Then
  loc_119B3F5:           Set var_9C = Me.Txt
  loc_119B3FB:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_119B416:           Proc_6_42_129B55C(var_A0, arg_10, 8, 2)
  loc_119B425:         Else
  loc_119B42D:           If Not (var_96 = CInt(4)) Then
  loc_119B438:             If Not (var_96 = CInt(5)) Then
  loc_119B443:               If (var_96 = CInt(8)) Then
  loc_119B446:               End If
  loc_119B446:             End If
  loc_119B46F:             If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_119B47F:               Set var_9C = Me.Txt
  loc_119B485:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_119B48D:               var_A0.Text = 0
  loc_119B49C:             Else
  loc_119B4C5:               If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_119B4D5:                 Set var_9C = Me.Txt
  loc_119B4DB:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_119B4E3:                 var_A0.Text = arg_10
  loc_119B4EF:               End If
  loc_119B4EF:             End If
  loc_119B4F1:             arg_10 = 0
  loc_119B4F7:           Else
  loc_119B4FF:             If (var_96 = CInt(&HD)) Then
  loc_119B52B:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_119B53B:                 Set var_9C = Me.Txt
  loc_119B541:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Active")
  loc_119B549:                 var_A0.Text = arg_10
  loc_119B558:               Else
  loc_119B581:                 If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_119B591:                   Set var_9C = Me.Txt
  loc_119B597:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_119B59F:                   var_A0.Text = "Non Active"
  loc_119B5AB:                 End If
  loc_119B5AB:               End If
  loc_119B5AD:               arg_10 = 0
  loc_119B5B0:             End If
  loc_119B5B0:           End If
  loc_119B5B0:         End If
  loc_119B5B0:       End If
  loc_119B5B0:     End If
  loc_119B5B0:   End If
  loc_119B5B0: End If
  loc_119B5B0: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10154D8
  'Data Table: 4ECF44
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  loc_10152BB: var_86 = KeyCode
  loc_10152C6: If (var_86 = CInt(0)) Then
  loc_10152EC:   Set var_A0 = Me.Txt
  loc_10152F2:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_10152FA:   (CBool(Me.DGHelp.Visible) = &HFF) = var_A4.Text
  loc_1015317:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_1015324:     var_A8 = "Name"
  loc_101533F:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_68)
  loc_1015352:     Set var_A4 = Me.DGHelp
  loc_1015359:     Set var_A0 = Me.FGPoint
  loc_1015371:     Proc_6_138_106E830(var_A4, global_68, KeyCode)
  loc_101537F:   End If
  loc_1015382: Else
  loc_101538A:   If (var_86 = CInt(&HA)) Then
  loc_10153B0:     Set var_A0 = Me.Txt
  loc_10153B6:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGDispCode.Visible) = &HFF))
  loc_10153BE:     var_A0 = var_A4.Text
  loc_10153DB:     If (Shift And (var_A8 <> vbNullString)) Then
  loc_10153E8:       var_A8 = "DispCode"
  loc_1015403:       Proc_6_80_FF1F20(Me.Txt, KeyCode, global_88)
  loc_1015435:       Proc_6_138_106E830(Me.DGDispCode, global_88, KeyCode, Me.FGPoint)
  loc_1015443:     End If
  loc_1015446:   Else
  loc_101544E:     If (var_86 = CInt(1)) Then
  loc_101546D:       If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_101547A:         var_A8 = "Name"
  loc_1015495:         Proc_6_80_FF1F20(Me.Txt, KeyCode, global_84, Shift)
  loc_10154C7:         Proc_6_138_106E830(Me.DGUnit, global_84, KeyCode, Me.FGPoint)
  loc_10154D5:       End If
  loc_10154D5:     End If
  loc_10154D5:   End If
  loc_10154D5: End If
  loc_10154D5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46ED4
  'Data Table: 4ECF44
  loc_E46EB2: Set var_88 = Me.Txt
  loc_E46EB8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46EC6: Proc_6_73_E23294(var_8C)
  loc_E46ED2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1419510
  'Data Table: 4ECF44
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  loc_1418A84: On Error Goto loc_14194CC
  loc_1418A8A: var_86 = Cancel
  loc_1418A95: If (var_86 = CInt(9)) Then
  loc_1418AA2:   Set var_8C = Me.Txt
  loc_1418AA8:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1418AC8:   Set var_98 = Me.Txt
  loc_1418ACE:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1418AD6:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_1418AF7:   Set var_8C = Me.Txt
  loc_1418AFD:   Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_1418B05:   var_A0 = var_90.Text
  loc_1418B1C:   If (var_A0 = vbNullString) Then
  loc_1418B40:     MsgBox("First Enter Sale Rate", &H40, "Validation", var_100, var_120)
  loc_1418B52:     arg_10 = &HFF
  loc_1418B60:     Set var_8C = Me.Txt
  loc_1418B66:     Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_1418B6E:     var_90.SetFocus
  loc_1418B7A:     Exit Sub
  loc_1418B7B:   End If
  loc_1418B89:   Set var_8C = Me.Txt
  loc_1418B8F:   Call 0.Method_Txt_Validate0 (CInt(7), var_90, var_A0)
  loc_1418B97:   arg_10 = var_90.Text
  loc_1418BB2:   Set var_94 = Me.Txt
  loc_1418BB8:   Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_124)
  loc_1418BC0:   (var_A0 <> vbNullString) = var_98.Text
  loc_1418BE0:   If (var_86 And (var_124 = vbNullString)) Then
  loc_1418C04:     MsgBox("First Enter App. Date", &H40, "Validation", var_100, var_120)
  loc_1418C16:     arg_10 = &HFF
  loc_1418C19:     Exit Sub
  loc_1418C1A:   End If
  loc_1418C1D: Else
  loc_1418C25:   If (var_86 = CInt(&HA)) Then
  loc_1418C2B:     Call Proc_118_44_12A7B80(var_126)
  loc_1418C36:     If (var_126 = &HFF) Then
  loc_1418C3B:       arg_10 = &HFF
  loc_1418C3E:       Exit Sub
  loc_1418C3F:     End If
  loc_1418C42:   Else
  loc_1418C4A:     If (var_86 = CInt(7)) Then
  loc_1418C57:       Set var_8C = Me.Txt
  loc_1418C5D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1418C97:       Set var_94 = Me.Txt
  loc_1418C9D:       Call 0.Method_Txt_Validate0 (Cancel, var_98, CStr(Format(CVar(var_90), "0.00")), 1)
  loc_1418CA5:       var_98.Text = 1
  loc_1418CC2:     Else
  loc_1418CCA:       If (var_86 = CInt(0)) Then
  loc_1418CD0:         Call Proc_118_44_12A7B80(var_126, arg_10)
  loc_1418CDB:         If (var_126 = &HFF) Then
  loc_1418CE0:           arg_10 = &HFF
  loc_1418CE3:           Exit Sub
  loc_1418CE4:         End If
  loc_1418CEF:         Set var_8C = Me.Txt
  loc_1418CF5:         Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1418CFD:         var_A0 = "Item Name"
  loc_1418D1E:         If (Proc_6_27_EA61EC(var_90, var_A0) = 0) Then
  loc_1418D2C:           Set var_8C = Me.Txt
  loc_1418D32:           Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1418D3A:           var_90.SetFocus
  loc_1418D48:           arg_10 = &HFF
  loc_1418D4B:           Exit Sub
  loc_1418D4C:         End If
  loc_1418D4F:       Else
  loc_1418D57:         If (var_86 = CInt(2)) Then
  loc_1418DA8:           Set var_8C = Me.Txt
  loc_1418DAE:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1418DB6:           arg_10 = var_90.Text
  loc_1418DCE:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1418DD1:             Exit Sub
  loc_1418DD2:           End If
  loc_1418E0D:           Set var_94 = Me.Txt
  loc_1418E13:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1418E1B:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1418E6C:           Set var_94 = Me.Txt
  loc_1418E72:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1418E7A:           var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1418EAA:           var_90 = Me.Fields.Item("Type")
  loc_1418EBB:           var_A0 = Proc_6_38_E69628(CVar(var_90))
  loc_1418EC1:           global_56 = var_A0
  loc_1418ED1:         Else
  loc_1418ED9:           If (var_86 = CInt(6)) Then
  loc_1418F2A:             Set var_8C = Me.Txt
  loc_1418F30:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0)
  loc_1418F38:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1418F50:             If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1418F53:               Exit Sub
  loc_1418F54:             End If
  loc_1418F8F:             Set var_94 = Me.Txt
  loc_1418F95:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1418F9D:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1418FD0:             var_90 = Me.Fields.Item("Code")
  loc_1418FEE:             Set var_94 = Me.Txt
  loc_1418FF4:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1418FFC:             var_98.Tag = CStr(var_90.Value)
  loc_1419015:           Else
  loc_141901D:             If Not (var_86 = CInt(3)) Then
  loc_1419028:               If (var_86 = CInt(&HB)) Then
  loc_141902B:               End If
  loc_1419079:               Set var_8C = Me.Txt
  loc_141907F:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_141909F:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_14190AF:                 Set var_8C = Me.Txt
  loc_14190B5:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14190BD:                 var_90.Text = vbNullString
  loc_14190D6:                 Set var_8C = Me.Txt
  loc_14190DC:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14190E4:                 var_90.Tag = vbNullString
  loc_14190F0:                 Exit Sub
  loc_14190F1:               End If
  loc_141912C:               Set var_94 = Me.Txt
  loc_1419132:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_141913A:               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_141916D:               var_90 = Me.Fields.Item("Code")
  loc_141918B:               Set var_94 = Me.Txt
  loc_1419191:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1419199:               var_98.Tag = CStr(var_90.Value)
  loc_14191B2:             Else
  loc_14191BA:               If (var_86 = CInt(1)) Then
  loc_141920B:                 Set var_8C = Me.Txt
  loc_1419211:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1419231:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1419241:                   Set var_8C = Me.Txt
  loc_1419247:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_141924F:                   var_90.Text = vbNullString
  loc_1419268:                   Set var_8C = Me.Txt
  loc_141926E:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1419276:                   var_90.Tag = vbNullString
  loc_1419282:                   Exit Sub
  loc_1419283:                 End If
  loc_141929A:                 If (Me.AbsolutePosition > 0) Then
  loc_14192D8:                   Set var_94 = Me.Txt
  loc_14192DE:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14192E6:                   var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1419319:                   var_90 = Me.Fields.Item("Code")
  loc_141932A:                   var_A0 = CStr(var_90.Value)
  loc_1419337:                   Set var_94 = Me.Txt
  loc_141933D:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1419345:                   var_98.Tag = var_A0
  loc_141935B:                 End If
  loc_141935E:               Else
  loc_1419366:                 If Not (var_86 = CInt(4)) Then
  loc_1419371:                   If Not (var_86 = CInt(5)) Then
  loc_141937C:                     If (var_86 = CInt(8)) Then
  loc_141937F:                     End If
  loc_141937F:                   End If
  loc_1419389:                   Set var_8C = Me.Txt
  loc_141938F:                   Call 0.Method_Txt_Validate0 (Cancel)
  loc_14193CA:                   If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_14193DA:                     Set var_8C = Me.Txt
  loc_14193E0:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14193E8:                     var_90.Text = "Yes"
  loc_14193F7:                   Else
  loc_1419404:                     Set var_8C = Me.Txt
  loc_141940A:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1419412:                     var_90.Text = "No"
  loc_141941E:                   End If
  loc_1419421:                 Else
  loc_1419429:                   If (var_86 = CInt(&HD)) Then
  loc_1419436:                     Set var_8C = Me.Txt
  loc_141943C:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_141945B:                     var_100 = Ucase(Left(CVar(var_90), 1))
  loc_1419477:                     If (var_100 = "Active") Then
  loc_1419487:                       Set var_8C = Me.Txt
  loc_141948D:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1419495:                       var_90.Text = "Active"
  loc_14194A4:                     Else
  loc_14194B1:                       Set var_8C = Me.Txt
  loc_14194B7:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14194BF:                       var_90.Text = "Non Active"
  loc_14194CB:                     End If
  loc_14194CB:                   End If
  loc_14194CB:                 End If
  loc_14194CB:               End If
  loc_14194CB:             End If
  loc_14194CB:           End If
  loc_14194CB:         End If
  loc_14194CB:       End If
  loc_14194CB:     End If
  loc_14194CB:   End If
  loc_14194CB: End If
  loc_14194CB: Exit Sub
  loc_14194CC: ' Referenced from: 1418A84
  loc_14194D4: Set var_8C = Err()
  loc_14194DA: Call 0.Method_arg_2C (var_A0)
  loc_14194FB: MsgBox(CVar(var_A0), &H40, "Information", var_100, var_120)
  loc_141950E: Exit Sub
  loc_141950F: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9F7AC
  'Data Table: 4ECF44
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9F64F: Me.DGRest.Visible = False
  loc_F9F66E: If (Me.RecordCount > 0) Then
  loc_F9F6C0:   Set var_CC = Me.Txt
  loc_F9F6C6:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9F6CE:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9F726:   Set var_B4 = Me.DGRest
  loc_F9F73D:   Set var_CC = Me.Txt
  loc_F9F743:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9F74B:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9F76B: End If
  loc_F9F789: Set var_B0 = Me.Txt
  loc_F9F78F: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9F797: var_B4.SetFocus
  loc_F9F7AB: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9BA98
  'Data Table: 4ECF44
  loc_E9BA36: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E9BA60: Set var_A8 = Me.FGPoint
  loc_E9BA81: Proc_6_138_106E830(Me.DGRest, global_76, CInt(CStr(Me.DGRest.Tag)))
  loc_E9BA97: Exit Sub
End Sub

Public Function global_52Get() '4EE2C0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4EE2CF
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC1274
  'Data Table: 4ECF44
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC11EA: On Error Goto loc_EC122F
  loc_EC11F3: Me.MoveFirst
  loc_EC120D: var_8C = "code='" & MyValue
  loc_EC121D: Me.Find var_8C & "'", 0, 1
  loc_EC1229: Call Proc_118_43_145038C(var_A0)
  loc_EC122E: Exit Sub
  loc_EC122F: ' Referenced from: EC11EA
  loc_EC1237: Set var_A4 = Err()
  loc_EC123D: Call 0.Method_arg_2C (var_8C)
  loc_EC125E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC1271: Exit Sub
  loc_EC1272: Exit Sub
End Sub

Public Sub Proc_118_41_EC1C2C(arg_C) 'EC1C2C
  'Data Table: 4ECF44
  Dim var_98 As TextBox
  loc_EC1B92: Set var_8C = Me.Txt
  loc_EC1B98: Call 0.Method_Proc_118_41_EC1C2CC (var_8E, var_86)
  loc_EC1BA8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC1BBE:   Set var_8C = Me.Txt
  loc_EC1BC4:   Call 0.Method_Proc_118_41_EC1C2C0 (CInt(var_86), var_98)
  loc_EC1BCC:   var_98.Enabled = arg_C
  loc_EC1BDB: Next var_92 'Byte
  loc_EC1BEE: Set var_8C = Me.Command1
  loc_EC1BF4: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_EC1C0E: Set var_8C = Me.Txt
  loc_EC1C14: Call 0.Method_Proc_118_41_EC1C2C0 (CInt(&HB), var_98)
  loc_EC1C1C: var_98.Enabled = Not(arg_C)
  loc_EC1C28: Exit Sub
  loc_EC1C29: Exit Sub
End Sub

Public Sub Proc_118_42_F83224
  'Data Table: 4ECF44
  Dim var_94 As TextBox
  loc_F830DA: Set var_90 = Me.Txt
  loc_F830E0: Call 0.Method_Proc_118_42_F832240 (CInt(1), var_94)
  loc_F830F0: var_8C = var_94.Text
  loc_F83108: Set var_90 = Me.Txt
  loc_F8310E: Call 0.Method_Proc_118_42_F83224C (var_9A, var_86)
  loc_F8311E: For var_9E =  To CByte((var_9A - 1)): CByte(0) = var_9E 'Byte
  loc_F83134:   Set var_90 = Me.Txt
  loc_F8313A:   Call 0.Method_Proc_118_42_F832240 (CInt(var_86), var_94)
  loc_F83142:   var_94.Text = vbNullString
  loc_F8315E:   Set var_90 = Me.Txt
  loc_F83164:   Call 0.Method_Proc_118_42_F832240 (CInt(var_86), var_94)
  loc_F8316C:   var_94.Tag = vbNullString
  loc_F8317B: Next var_9E 'Byte
  loc_F8318F: Set var_90 = Me.Txt
  loc_F83195: Call 0.Method_Proc_118_42_F832240 (CInt(4), var_94)
  loc_F8319D: var_94.Text = "No"
  loc_F831B7: Set var_90 = Me.Txt
  loc_F831BD: Call 0.Method_Proc_118_42_F832240 (CInt(5), var_94)
  loc_F831C5: var_94.Text = "No"
  loc_F831DF: Set var_90 = Me.Txt
  loc_F831E5: Call 0.Method_Proc_118_42_F832240 (CInt(&HD), var_94)
  loc_F831ED: var_94.Text = "Active"
  loc_F83207: Set var_90 = Me.Txt
  loc_F8320D: Call 0.Method_Proc_118_42_F832240 (CInt(1), var_94)
  loc_F83215: var_94.Text = var_8C
  loc_F83221: Exit Sub
  loc_F83222: CExtInstUnk
End Sub

Public Sub Proc_118_43_145038C
  'Data Table: 4ECF44
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim unk_4ECF4A As Connection15
  Dim var_8C As Recordset15
  Dim var_120 As Fields15
  Dim var_124 As TextBox
  Dim var_11C As Variant
  Dim var_88 As Recordset15
  loc_144F86C: On Error Goto loc_1450384
  loc_144F875: Proc_183_45_E5CCA8(global_64)
  loc_144F891: If (Me.RecordCount <= 0) Then
  loc_144F894:   Call Proc_118_42_F83224()
  loc_144F89C: Else
  loc_144F8F2:   unk_4ECF4A.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1
  loc_144F8FD:   Set var_8C = var_120
  loc_144F951:   var_120 = var_8C.Fields
  loc_144F9BA:   var_188 = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_120.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_144F9FF:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_Name")), var_188)))
  loc_144FA79:   var_124 = var_8C.Fields.Item("U_AE")
  loc_144FAC2:   var_178 = "Created By :   "
  loc_144FADA:   var_188 = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), var_178, IIf((Proc_6_38_E69628(CVar(var_124)) = "E"), "Last Update :   ", "entdt :   "))
  loc_144FB1F:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_EntDt")))))
  loc_144FB8B:   global_56 = CStr(Me.Fields.Item("Type").Value)
  loc_144FBD0:   global_96 = CStr(Me.Fields.Item("Name").Value)
  loc_144FC1D:   Set var_120 = Me.Txt
  loc_144FC23:   Call 0.Method_Proc_118_43_145038C0 (CInt(0), var_124)
  loc_144FC2B:   var_124.Text = CStr(Me.Fields.Item("Name").Value)
  loc_144FC7D:   Set var_120 = Me.Txt
  loc_144FC83:   Call 0.Method_Proc_118_43_145038C0 (CInt(&HA), var_124)
  loc_144FC8B:   var_124.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_144FCDD:   Set var_120 = Me.Txt
  loc_144FCE3:   Call 0.Method_Proc_118_43_145038C0 (CInt(0), var_124)
  loc_144FCEB:   var_124.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_144FD3A:   Set var_120 = Me.Txt
  loc_144FD40:   Call 0.Method_Proc_118_43_145038C0 (CInt(1), var_124)
  loc_144FD48:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_144FD95:   Set var_120 = Me.Txt
  loc_144FD9B:   Call 0.Method_Proc_118_43_145038C0 (CInt(&HE), var_124)
  loc_144FDA3:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CommodityCode")))
  loc_144FDF0:   Set var_120 = Me.Txt
  loc_144FDF6:   Call 0.Method_Proc_118_43_145038C0 (CInt(2), var_124)
  loc_144FDFE:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGrpName")))
  loc_144FE4B:   Set var_120 = Me.Txt
  loc_144FE51:   Call 0.Method_Proc_118_43_145038C0 (CInt(2), var_124)
  loc_144FE59:   var_124.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGroup")))
  loc_144FEA6:   Set var_120 = Me.Txt
  loc_144FEAC:   Call 0.Method_Proc_118_43_145038C0 (CInt(6), var_124)
  loc_144FEB4:   var_124.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCatCode")))
  loc_144FF01:   Set var_120 = Me.Txt
  loc_144FF07:   Call 0.Method_Proc_118_43_145038C0 (CInt(6), var_124)
  loc_144FF0F:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCategory")))
  loc_144FF5C:   Set var_120 = Me.Txt
  loc_144FF62:   Call 0.Method_Proc_118_43_145038C0 (CInt(4), var_124)
  loc_144FF6A:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Disc")))
  loc_144FFB7:   Set var_120 = Me.Txt
  loc_144FFBD:   Call 0.Method_Proc_118_43_145038C0 (CInt(8), var_124)
  loc_144FFC5:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SChrApp")))
  loc_1450012:   Set var_120 = Me.Txt
  loc_1450018:   Call 0.Method_Proc_118_43_145038C0 (CInt(5), var_124)
  loc_1450020:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("REdit")))
  loc_145006D:   Set var_120 = Me.Txt
  loc_1450073:   Call 0.Method_Proc_118_43_145038C0 (CInt(3), var_124)
  loc_145007B:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("KitchenName")))
  loc_14500C8:   Set var_120 = Me.Txt
  loc_14500CE:   Call 0.Method_Proc_118_43_145038C0 (CInt(3), var_124)
  loc_14500D6:   var_124.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")))
  loc_1450123:   Set var_120 = Me.Txt
  loc_1450129:   Call 0.Method_Proc_118_43_145038C0 (CInt(&HC), var_124)
  loc_1450131:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Specification")))
  loc_1450184:   Call 0.Method_Proc_118_43_145038C0 (CInt(&HD), var_124)
  loc_145018C:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Status")))
  loc_14501F5:   var_11C = "Select Rate,Appdate From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "' And RestCode='" & CVar(global_52) 
  loc_145020C:   unk_4ECF4A.Execute CStr(var_11C & "' Order By AppDate Desc "), var_178, -1
  loc_1450217:   Set var_88 = Me.Txt
  loc_1450249:   If (var_88.RecordCount > 0) Then
  loc_145029E:     Set var_120 = Me.Txt
  loc_14502A4:     Call 0.Method_Proc_118_43_145038C0 (CInt(7), var_124, CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_14502AC:     var_124.Text = 1
  loc_14502E0:     var_A8 = var_88.Fields.Item("AppDate")
  loc_14502FF:     Set var_120 = Me.Txt
  loc_1450305:     Call 0.Method_Proc_118_43_145038C0 (CInt(9), var_124, CStr(var_A8.Value))
  loc_145030D:     var_124.Text = 1
  loc_1450326:   Else
  loc_1450334:     Set var_94 = Me.Txt
  loc_145033A:     Call 0.Method_Proc_118_43_145038C0 (CInt(7), var_A8)
  loc_1450342:     var_A8.Text = vbNullString
  loc_145035C:     Set var_94 = Me.Txt
  loc_1450362:     Call 0.Method_Proc_118_43_145038C0 (CInt(9), var_A8)
  loc_145036A:     var_A8.Text = vbNullString
  loc_1450376:   End If
  loc_1450376: End If
  loc_1450376: Call Proc_118_45_FB4CE4(var_120)
  loc_1450380: Set var_88 = Nothing
  loc_1450383: Exit Sub
  loc_1450384: ' Referenced from: 144F86C
  loc_1450384: Proc_6_60_E63754()
  loc_1450389: Exit Sub
End Sub

Public Sub Proc_118_44_12A7B80
  'Data Table: 4ECF44
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_AC As String
  Dim var_B0 As TextBox
  Dim unk_4ECF4A As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim var_B4 As String
  Dim var_A0 As Variant
  loc_12A7597: If (Me.RecordCount = 0) Then
  loc_12A759A:   Proc_118_44_12A7B80 = 
  loc_12A75A0: End If
  loc_12A75A4: Set var_90 = Me.TopCtrl1
  loc_12A75AA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12A75C3: If (CStr() = "Add") Then
  loc_12A75FA:   var_AC = "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='" & global_52
  loc_12A7612:   Set var_90 = Me.Txt
  loc_12A7618:   Call 0.Method_Proc_118_44_12A7B800 (CInt(0), var_B0, var_B4, var_AC & "' and Name='", var_A0, -1)
  loc_12A7639:   unk_4ECF4A.Execute var_D8 & var_B4 & "'", 0, var_EC
  loc_12A7649:    = var_D8.Item()
  loc_12A7651:    = var_EC.Value
  loc_12A7686:   If (var_B0.Text.Fields > 0) Then
  loc_12A76A4:     var_A0 = "Duplicate Name"
  loc_12A76AA:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_12A76C5:     Set var_90 = Me.Txt
  loc_12A76CB:     Call 0.Method_Proc_118_44_12A7B800 (CInt(0))
  loc_12A76D3:     var_B0.SetFocus
  loc_12A76E4:     Proc_118_44_12A7B80 = &HFF
  loc_12A76EA:   End If
  loc_12A76F8:   Set var_90 = Me.Txt
  loc_12A76FE:   Call 0.Method_Proc_118_44_12A7B800 (CInt(&HA), var_B0)
  loc_12A771D:   If (var_B0.Text <> vbNullString) Then
  loc_12A774A:     var_A8 = "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='"
  loc_12A776C:     Set var_90 = Me.Txt
  loc_12A7772:     Call 0.Method_Proc_118_44_12A7B800 (CInt(&HA), var_B0, var_B4, var_A8 & global_52 & "' and DispCode=", var_A0, -1)
  loc_12A7793:     unk_4ECF4A.Execute var_D8 & var_B4 & vbNullString, 0, var_EC
  loc_12A77A3:      = var_D8.Item(var_B0)
  loc_12A77AB:      = var_EC.Value
  loc_12A77E0:     If (var_B0.Text.Fields > 0) Then
  loc_12A77FE:       var_A0 = "Duplicate Disp Code"
  loc_12A7804:       MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_12A781F:       Set var_90 = Me.Txt
  loc_12A7825:       Call 0.Method_Proc_118_44_12A7B800 (CInt(&HA))
  loc_12A782D:       var_B0.SetFocus
  loc_12A783E:       Proc_118_44_12A7B80 = &HFF
  loc_12A7844:     End If
  loc_12A7844:   End If
  loc_12A7847: Else
  loc_12A7882:   Set var_90 = Me.Txt
  loc_12A7888:   Call 0.Method_Proc_118_44_12A7B800 (CInt(0), var_B0, var_A8, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_12A78BA:   unk_4ECF4A.Execute var_D8 & var_A8 & "' And Name<>'" & global_96 & "'", 0, var_EC
  loc_12A78CA:    = var_D8.Item(var_B0)
  loc_12A78D2:    = var_EC.Value
  loc_12A7907:   If (var_B0.Text.Fields > 0) Then
  loc_12A7925:     var_A0 = "Duplicate Name"
  loc_12A792B:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_12A7946:     Set var_90 = Me.Txt
  loc_12A794C:     Call 0.Method_Proc_118_44_12A7B800 (CInt(0))
  loc_12A7954:     var_B0.SetFocus
  loc_12A7965:     Proc_118_44_12A7B80 = &HFF
  loc_12A796B:   End If
  loc_12A7979:   Set var_90 = Me.Txt
  loc_12A797F:   Call 0.Method_Proc_118_44_12A7B800 (CInt(&HA), var_B0)
  loc_12A799E:   If (var_B0.Text <> vbNullString) Then
  loc_12A79DC:     Set var_90 = Me.Txt
  loc_12A79E2:     Call 0.Method_Proc_118_44_12A7B800 (CInt(&HA), var_B0, var_A8, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1)
  loc_12A7A19:     unk_4ECF4A.Execute var_D8 & var_A8 & " And DispCode<> " & CStr(global_60) & vbNullString, 0, var_EC
  loc_12A7A29:      = var_D8.Item(var_B0)
  loc_12A7A31:      = var_EC.Value
  loc_12A7A68:     If (var_B0.Text.Fields > 0) Then
  loc_12A7A8C:       MsgBox("Duplicate Disp Code", &H40, "Information", var_11C, var_13C)
  loc_12A7AA7:       Set var_90 = Me.Txt
  loc_12A7AAD:       Call 0.Method_Proc_118_44_12A7B800 (CInt(&HA))
  loc_12A7AB5:       var_B0.SetFocus
  loc_12A7AC6:       Proc_118_44_12A7B80 = &HFF
  loc_12A7ACC:     End If
  loc_12A7ACC:   End If
  loc_12A7ACC: End If
  loc_12A7ADA: Set var_90 = Me.Txt
  loc_12A7AE0: Call 0.Method_Proc_118_44_12A7B800 (CInt(&HA), var_B0)
  loc_12A7AFF: If (var_B0.Text = "9999") Then
  loc_12A7B30:   MsgBox(CVar("This Code is reserved for special items" & vbCrLf & vbCrLf & "Please choose another code"), &H40, "HMS", var_11C, var_13C)
  loc_12A7B52:   Set var_90 = Me.Txt
  loc_12A7B58:   Call 0.Method_Proc_118_44_12A7B800 (CInt(&HA), var_B0)
  loc_12A7B60:   var_B0.SetFocus
  loc_12A7B71:   Proc_118_44_12A7B80 = &HFF
  loc_12A7B77: End If
  loc_12A7B77: Proc_118_44_12A7B80 = var_B0
End Sub

Public Sub Proc_118_45_FB4CE4
  'Data Table: 4ECF44
  loc_FB4B50: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FB4B62:   Me.DGHelp.Visible = False
  loc_FB4B6A: End If
  loc_FB4B86: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_FB4B98:   Me.DGRest.Visible = False
  loc_FB4BA0: End If
  loc_FB4BBC: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_FB4BCE:   Me.DGItemGroup.Visible = False
  loc_FB4BD6: End If
  loc_FB4BF2: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_FB4C04:   Me.DGItemCat.Visible = False
  loc_FB4C0C: End If
  loc_FB4C28: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_FB4C3A:   Me.DGUnit.Visible = False
  loc_FB4C42: End If
  loc_FB4C5D: If (Me.Frame1.Visible = &HFF) Then
  loc_FB4C6F:   Me.DGUnit.Visible = False
  loc_FB4C77: End If
  loc_FB4C93: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB4CA5:   Me.FGPoint.Visible = False
  loc_FB4CAD: End If
  loc_FB4CC9: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_FB4CDB:   Me.DGDispCode.Visible = False
  loc_FB4CE3: End If
  loc_FB4CE3: Exit Sub
End Sub

Public Sub Proc_118_46_109DE84
  'Data Table: 4ECF44
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_109DBBC: On Error Goto loc_109DE7C
  loc_109DBCD: Set var_88 = Me.Txt
  loc_109DBD3: Call 0.Method_Proc_118_46_109DE840 (CInt(0), var_8C)
  loc_109DBF2: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_109DC0E: Set var_B4 = Me.Txt
  loc_109DC14: Call 0.Method_Proc_118_46_109DE840 (CInt(0), var_B8)
  loc_109DC2F: Set var_88 = Me.Txt
  loc_109DC35: Call 0.Method_Proc_118_46_109DE840 (CInt(0), var_8C)
  loc_109DC4D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109DC5C: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_109DC7C: Set var_88 = Me.Txt
  loc_109DC82: Call 0.Method_Proc_118_46_109DE840 (CInt(6), var_8C)
  loc_109DCA1: Me.DGItemCat.Left = CVar(var_8C.Left)
  loc_109DCBD: Set var_B4 = Me.Txt
  loc_109DCC3: Call 0.Method_Proc_118_46_109DE840 (CInt(6), var_B8)
  loc_109DCDE: Set var_88 = Me.Txt
  loc_109DCE4: Call 0.Method_Proc_118_46_109DE840 (CInt(6), var_8C)
  loc_109DCFC: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_109DD0B: Me.DGItemCat.Top = CVar(var_8C.Left)
  loc_109DD2B: Set var_88 = Me.Txt
  loc_109DD31: Call 0.Method_Proc_118_46_109DE840 (CInt(2), var_8C)
  loc_109DD50: Me.DGItemGroup.Left = CVar(var_8C.Left)
  loc_109DD6C: Set var_B4 = Me.Txt
  loc_109DD72: Call 0.Method_Proc_118_46_109DE840 (CInt(2), var_B8)
  loc_109DD8D: Set var_88 = Me.Txt
  loc_109DD93: Call 0.Method_Proc_118_46_109DE840 (CInt(2), var_8C)
  loc_109DDAB: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109DDBA: Me.DGItemGroup.Top = CVar(var_8C.Left)
  loc_109DDDA: Set var_88 = Me.Txt
  loc_109DDE0: Call 0.Method_Proc_118_46_109DE840 (CInt(1), var_8C)
  loc_109DDFF: Me.DGUnit.Left = CVar(var_8C.Left)
  loc_109DE1B: Set var_B4 = Me.Txt
  loc_109DE21: Call 0.Method_Proc_118_46_109DE840 (CInt(1), var_B8)
  loc_109DE3C: Set var_88 = Me.Txt
  loc_109DE42: Call 0.Method_Proc_118_46_109DE840 (CInt(1), var_8C)
  loc_109DE5A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109DE69: Me.DGUnit.Top = CVar(var_8C.Left)
  loc_109DE7B: Exit Sub
  loc_109DE7C: ' Referenced from: 109DBBC
  loc_109DE7C: Proc_6_60_E63754()
  loc_109DE81: Exit Sub
End Sub

Public Sub Proc_118_47_E82B14
  'Data Table: 4ECF44
  loc_E82AB4: Call Proc_118_45_FB4CE4()
  loc_E82AF0: If (MsgBox("Save Menu Item ?", 4, "Save", var_E4, var_104) = 6) Then
  loc_E82AF3:   Call TopCtrl1_UnknownEvent_16()
  loc_E82AFB: Else
  loc_E82B01:   Call 0.Method_arg_1E8 (var_108)
  loc_E82B09:   Call var_108.SetFocus
  loc_E82B12: End If
  loc_E82B12: Exit Sub
End Sub
