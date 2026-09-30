VERSION 5.00
Begin VB.Form resGroup
  Caption = "Group Reservation"
  BackColor = &HBFEAD0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8430
  ClientHeight = 5115
  Begin MSHFlexGrid MSHFlexGrid1
    Left = 345
    Top = 4905
    Width = 7890
    Height = 2025
    Visible = 0   'False
    TabIndex = 53
  End
  Begin Frame FrmSoftBlock
    Caption = "frBlock"
    BackColor = &HBFEAD0&
    ForeColor = &H80000008&
    Left = 8460
    Top = 5445
    Width = 7920
    Height = 4905
    Visible = 0   'False
    TabIndex = 49
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin CommandButton Command3
      Caption = "Exit/Done"
      Left = 360
      Top = 4275
      Width = 1665
      Height = 420
      TabIndex = 50
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
    Begin MSHFlexGrid FGrid1
      Left = 0
      Top = 90
      Width = 7920
      Height = 4155
      TabIndex = 51
    End
    Begin Shape Shape3
      Left = 0
      Top = 4140
      Width = 7920
      Height = 765
    End
  End
  Begin Frame FrmBlock
    Caption = "frBlock"
    BackColor = &HBFEAD0&
    ForeColor = &H80000008&
    Left = 8445
    Top = 480
    Width = 7920
    Height = 4905
    Visible = 0   'False
    TabIndex = 43
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HC0C0C0&
      ForeColor = &H80000012&
      Left = 105
      Top = 525
      Width = 765
      Height = 240
      Visible = 0   'False
      TabIndex = 52
      BorderStyle = 0 'None
      MultiLine = -1  'True
      MaxLength = 150
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdSoftBlock
      Caption = "Soft Blocking"
      Left = 5865
      Top = 4275
      Width = 1665
      Height = 420
      TabIndex = 47
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
    Begin CommandButton CmdPrint
      Caption = "Print"
      Left = 3120
      Top = 4275
      Width = 1665
      Height = 420
      TabIndex = 46
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
    Begin CommandButton CmdExit
      Caption = "Exit/Done"
      Left = 360
      Top = 4275
      Width = 1665
      Height = 420
      TabIndex = 45
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
    Begin MSHFlexGrid FGrid
      Left = 0
      Top = 30
      Width = 7920
      Height = 4155
      TabIndex = 44
    End
    Begin Shape Shape2
      Left = 0
      Top = 4140
      Width = 7920
      Height = 765
    End
  End
  Begin CommandButton CmdBlock
    Caption = "Blocking"
    Left = 5850
    Top = 4065
    Width = 1635
    Height = 465
    TabIndex = 48
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
  Begin DataGrid DGBusiness
    Left = 1245
    Top = 6720
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGMarketSeg
    Left = 915
    Top = 6525
    Width = 3990
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGTravelAg
    Left = 600
    Top = 6315
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGHelp
    Left = 270
    Top = 5550
    Width = 7815
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 42
  End
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    Left = 5730
    Top = 2550
    Width = 1410
    Height = 255
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    Left = 5715
    Top = 2280
    Width = 1425
    Height = 255
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 2295
    Width = 2295
    Height = 255
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin DataGrid DGCity
    Left = 2730
    Top = 7365
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 2835
    Width = 2295
    Height = 255
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 3105
    Width = 2295
    Height = 255
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 3375
    Width = 2295
    Height = 255
    Enabled = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 4455
    Width = 2295
    Height = 255
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 5
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 4185
    Width = 2295
    Height = 255
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 3915
    Width = 2295
    Height = 255
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 3645
    Width = 2295
    Height = 255
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 2565
    Width = 2295
    Height = 255
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 4500
    Top = 2025
    Width = 975
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 7
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 4500
    Top = 1485
    Width = 975
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 2025
    Width = 2190
    Height = 255
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 1755
    Width = 2295
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 1485
    Width = 2190
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 1215
    Width = 3180
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 945
    Width = 3180
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2295
    Top = 675
    Width = 3180
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8430
    Height = 375
    TabIndex = 0
  End
  Begin MaskEdBox MTxt
    Index = 1
    Left = 7230
    Top = 2280
    Width = 585
    Height = 255
    TabIndex = 19
  End
  Begin MaskEdBox MTxt
    Index = 0
    Left = 7230
    Top = 2550
    Width = 585
    Height = 255
    TabIndex = 21
  End
  Begin Label Lbl
    Caption = "Arr Date"
    Index = 4
    ForeColor = &H0&
    Left = 4635
    Top = 2310
    Width = 735
    Height = 240
    TabIndex = 41
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Dep Date"
    Index = 3
    ForeColor = &H0&
    Left = 4635
    Top = 2580
    Width = 870
    Height = 240
    TabIndex = 40
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape1
    Left = 390
    Top = 585
    Width = 7890
    Height = 4230
    BorderWidth = 2
  End
  Begin Label Lbl
    Caption = "Comments3"
    Index = 2
    ForeColor = &H0&
    Left = 585
    Top = 3345
    Width = 1065
    Height = 240
    TabIndex = 39
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Comments2"
    Index = 1
    ForeColor = &H0&
    Left = 585
    Top = 3075
    Width = 1065
    Height = 240
    TabIndex = 38
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Comments1"
    Index = 0
    ForeColor = &H0&
    Left = 585
    Top = 2805
    Width = 1065
    Height = 240
    TabIndex = 37
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Group Type"
    Index = 17
    ForeColor = &H0&
    Left = 585
    Top = 4425
    Width = 1080
    Height = 240
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Business Source"
    Index = 19
    ForeColor = &H0&
    Left = 585
    Top = 4155
    Width = 1515
    Height = 240
    TabIndex = 31
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Market Segments"
    Index = 20
    ForeColor = &H0&
    Left = 585
    Top = 3885
    Width = 1575
    Height = 240
    TabIndex = 30
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Travel Agency"
    Index = 22
    ForeColor = &H0&
    Left = 585
    Top = 3615
    Width = 1320
    Height = 240
    TabIndex = 29
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 9
    ForeColor = &H0&
    Left = 585
    Top = 2265
    Width = 1365
    Height = 240
    TabIndex = 28
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &H0&
    Left = 585
    Top = 2535
    Width = 1125
    Height = 255
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Country/Type"
    Index = 13
    ForeColor = &H0&
    Left = 585
    Top = 1995
    Width = 1215
    Height = 240
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "State"
    Index = 12
    ForeColor = &H0&
    Left = 585
    Top = 1725
    Width = 465
    Height = 240
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "City/Zip"
    Index = 11
    ForeColor = &H0&
    Left = 585
    Top = 1455
    Width = 675
    Height = 240
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Index = 6
    ForeColor = &H0&
    Left = 585
    Top = 915
    Width = 765
    Height = 240
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Name"
    Index = 5
    ForeColor = &H0&
    Left = 585
    Top = 645
    Width = 555
    Height = 240
    TabIndex = 22
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "resGroup"

Private MasterFormExit As Integer

Private Sub CmdBlock_Click() 'FAFDC0
  'Data Table: 4EB7B0
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_FAFC42: Set var_88 = Me.Txt
  loc_FAFC48: Call 0.Method_CmdBlock_Click0 (CInt(&H11), var_8C)
  loc_FAFC6B: Set var_94 = Me.Txt
  loc_FAFC71: Call 0.Method_CmdBlock_Click0 (CInt(&H12), var_98)
  loc_FAFC99: If ((var_8C.Text <> vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_FAFCA7:   Set var_88 = Me.Txt
  loc_FAFCAD:   Call 0.Method_CmdBlock_Click0 (CInt(&H11))
  loc_FAFCBD:   Set var_94 = Me.Txt
  loc_FAFCC3:   Call 0.Method_CmdBlock_Click0 (CInt(&H12), var_98)
  loc_FAFD24:   Me.FrmBlock.Top = Me.Shape1.Top
  loc_FAFD49:   Set var_8C = Me.FrmBlock
  loc_FAFD4F:   var_8C.Left = Me.Shape1.Left
  loc_FAFD67:   Me.FrmBlock.Visible = True
  loc_FAFD6F:   Call Proc_67_49_10BFCD8(CInt(DateDiff("d", CVar(var_8C), CVar(var_98), 1, 1)))
  loc_FAFD82:   Set var_88 = Me.Txt
  loc_FAFD88:   Call 0.Method_CmdBlock_Click0 (CInt(&H11), var_8C)
  loc_FAFD98:   var_9C = "RoomType"
  loc_FAFDAC:   Call Proc_67_51_136A5E0(CDate(var_8C.Text), 1)
  loc_FAFDBF: End If
  loc_FAFDBF: Exit Sub
End Sub

Private Sub Form_Load() '11B2F90
  'Data Table: 4EB7B0
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C4 As DataGrid
  Dim Me As Recordset15
  loc_11B2B54: On Error Goto loc_11B2F88
  loc_11B2B6F: Proc_6_23_DFC5B8(Me, 6120)
  loc_11B2B85: Set var_88 = Me.Txt
  loc_11B2B8B: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_11B2BAA: Me.DGCity.Left = CVar(var_90.Left)
  loc_11B2BC6: Set var_B8 = Me.Txt
  loc_11B2BCC: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_11B2BD4: var_C0 = var_BC.Height
  loc_11B2BE7: Set var_88 = Me.Txt
  loc_11B2BED: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_11B2BF5: var_94 = var_90.Top
  loc_11B2C05: var_A4 = CVar(((var_94 + var_C0) + CDbl(&H1E))) 'Single
  loc_11B2C0E: Set var_C4 = Me.DGCity
  loc_11B2C14: var_C4.Top = CVar(var_90.Left)
  loc_11B2C30: Set global_64 = New 
  loc_11B2C42: Me.var_C4.CursorLocation = 3
  loc_11B2C6A: Me.Open "Select CITYCODE AS Code,CITYNAME AS Name From CITY Order by CITYName", CVar(MemVar_1F95044), 2
  loc_11B2C78: CVarUnk
  loc_11B2C7D: VerifyVarObj
  loc_11B2C83: Set var_88 = Me.DGCity
  loc_11B2C89: LateIdStAd
  loc_11B2CA1: Set global_68 = New 
  loc_11B2CB3: Me.DGCity.CursorLocation = 3
  loc_11B2CDB: Me.Open "Select SubCode AS Code,Name From SubGroup Where CompanyType='Travel Agency' Order by Name", CVar(MemVar_1F95044), 2
  loc_11B2CE9: CVarUnk
  loc_11B2CEE: VerifyVarObj
  loc_11B2CF4: Set var_88 = Me.DGTravelAg
  loc_11B2CFA: LateIdStAd
  loc_11B2D12: Set global_72 = New 
  loc_11B2D24: Me.DGTravelAg.CursorLocation = 3
  loc_11B2D4C: Me.Open "Select Code,Name FROM MarketSeg ORDER BY Name", CVar(MemVar_1F95044), 2
  loc_11B2D5A: CVarUnk
  loc_11B2D5F: VerifyVarObj
  loc_11B2D65: Set var_88 = Me.DGMarketSeg
  loc_11B2D6B: LateIdStAd
  loc_11B2D95: Me.DGMarketSeg.CursorLocation = 3
  loc_11B2DBD: Me.Open "SELECT Code,Name FROM BussSource ORDER BY Name", CVar(MemVar_1F95044), 2
  loc_11B2DCB: CVarUnk
  loc_11B2DD0: VerifyVarObj
  loc_11B2DD6: Set var_88 = Me.DGBusiness
  loc_11B2DDC: LateIdStAd
  loc_11B2E06: Me.DGBusiness.CursorLocation = 3
  loc_11B2E41: Set var_88 = Me.Txt
  loc_11B2E47: Call 0.Method_Form_Load0 (CInt(0), var_90, var_94, 3, -1, var_88, New)
  loc_11B2E4F: 3 = var_90.Left
  loc_11B2E66: Me.DGHelp.Left = CVar(var_94)
  loc_11B2E82: Set var_B8 = Me.Txt
  loc_11B2E88: Call 0.Method_Form_Load0 (CInt(0), var_BC, var_C0, -1, var_88)
  loc_11B2E90: global_72 = var_BC.Height
  loc_11B2EA3: Set var_88 = Me.Txt
  loc_11B2EA9: Call 0.Method_Form_Load0 (CInt(0), var_90, var_94)
  loc_11B2EB1: 3 = var_90.Top
  loc_11B2EBD: var_A4 = CVar((var_94 + var_C0)) 'Single
  loc_11B2EC6: Set var_C4 = Me.DGHelp
  loc_11B2ECC: var_C4.Top = CVar(var_94)
  loc_11B2EFA: Me.var_C4.CursorLocation = 3
  loc_11B2F22: ELECT CODE AS SearchCode,GroupProf.* FROM GroupProf ORDER BY NAME", CVar(MemVar_1F95044), 2 "SELECT CODE AS SearchCode,GroupProf.Name,GroupProf.ConName FROM GroupProf ORDER BY NAME", CVar(MemVar_1F95044), 2
  loc_11B2F30: CVarUnk
  loc_11B2F35: VerifyVarObj
  loc_11B2F3B: Set var_88 = Me.DGHelp
  loc_11B2F41: LateIdStAd
  loc_11B2F5B: Set var_88 = Me
  loc_11B2F72: Call Proc_67_54_F1362C(Proc_5_1_100EC1C("INI", var_88, New, var_88, New), 3, -1)
  loc_11B2F7D: Call Proc_67_56_EF8168(-1)
  loc_11B2F82: Call Proc_67_57_144C96C(var_88)
  loc_11B2F87: Exit Sub
  loc_11B2F88: ' Referenced from: 11B2B54
  loc_11B2F88: Proc_6_60_E63754()
  loc_11B2F8D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7B7C0
  'Data Table: 4EB7B0
  loc_E7B767: Set global_64 = Nothing
  loc_E7B779: Set global_76 = Nothing
  loc_E7B78B: Set global_68 = Nothing
  loc_E7B79D: Set global_72 = Nothing
  loc_E7B7AF: Set global_60 = Nothing
  loc_E7B7BB: MasterFormExit = 0
  loc_E7B7BE: Exit Sub
End Sub

Private Sub Form_Activate() 'E4F1A8
  'Data Table: 4EB7B0
  loc_E4F178: On Error Goto loc_E4F1A2
  loc_E4F17F: Set var_88 = Me.TopCtrl1
  loc_E4F185: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E4F19A: If (CLng(CInt()) = &H2D) Then
  loc_E4F19D:   Call TopCtrl1_UnknownEvent_1D()
  loc_E4F1A2:   ' Referenced from: E4F178
  loc_E4F1A2: End If
  loc_E4F1A2: Proc_6_60_E63754()
  loc_E4F1A7: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25264
  'Data Table: 4EB7B0
  loc_E25249: If (MasterFormExit = &HFF) Then
  loc_E25259:   Me.Global.Unload Me
  loc_E25261: End If
  loc_E25261: Exit Sub
  loc_E25262: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A420
  'Data Table: 4EB7B0
  loc_E2A3F8: On Error Goto loc_E2A418
  loc_E2A40F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A417: Exit Sub
  loc_E2A418: ' Referenced from: E2A3F8
  loc_E2A418: Proc_6_60_E63754(Shift)
  loc_E2A41D: Exit Sub
End Sub

Private Sub CmdSoftBlock_Click() 'EE16C0
  'Data Table: 4EB7B0
  Dim var_88 As Variant
  Dim var_90 As Variant
  loc_EE1604: Call Proc_67_50_10C86E8()
  loc_EE1615: Me.FrmSoftBlock.Visible = True
  loc_EE163C: Me.FrmSoftBlock.Left = Me.Shape1.Left
  loc_EE1661: Set var_90 = Me.FrmSoftBlock
  loc_EE1667: var_90.Top = Me.Shape1.Top
  loc_EE1681: Set var_88 = Me.Txt
  loc_EE1687: Call 0.Method_CmdSoftBlock_Click0 (CInt(&H11), var_90)
  loc_EE1697: var_A4 = "RoomNo"
  loc_EE16AB: Call Proc_67_58_143E2AC(CDate(var_90.Text), 1)
  loc_EE16BE: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E174C4
  'Data Table: 4EB7B0
  loc_E174B8: Me.FrmBlock.Visible = False
  loc_E174C0: Exit Sub
  loc_E174C1: Exit Sub
End Sub

Private Sub Command3_Click() 'E175A8
  'Data Table: 4EB7B0
  loc_E1759C: Me.FrmSoftBlock.Visible = False
  loc_E175A4: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F45E14
  'Data Table: 4EB7B0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F45D0B: Me.DGHelp.Visible = False
  loc_F45D2A: If (Me.RecordCount > 0) Then
  loc_F45D69:   Set var_B4 = Me.Txt
  loc_F45D6F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F45D77:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F45DAA:   var_B0 = Me.Fields.Item("Name")
  loc_F45DC9:   Set var_B4 = Me.Txt
  loc_F45DCF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F45DD7:   var_B8.Text = CStr(var_B0.Value)
  loc_F45DED: End If
  loc_F45DF8: Set var_A8 = Me.Txt
  loc_F45DFE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HD))
  loc_F45E06: var_B0.SetFocus
  loc_F45E12: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E3EE88
  'Data Table: 4EB7B0
  Dim var_8C As TextBox
  loc_E3EE67: Set var_88 = Me.TxtGrid
  loc_E3EE6D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E3EE75: var_8C.Visible = False
  loc_E3EE81: Call Proc_67_56_EF8168()
  loc_E3EE86: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'DFDFB8
  'Data Table: 4EB7B0
  loc_DFDFB4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E002B4
  'Data Table: 4EB7B0
  loc_E002AC: Call Proc_67_52_E31CE0()
  loc_E002B1: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '1020A60
  'Data Table: 4EB7B0
  Dim var_98 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim arg_C As Integer
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_1020840: Set var_88 = Me.TopCtrl1
  loc_1020846: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1020896: If CBool(( = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_102089F:   Call Form_KeyDown(arg_C, arg_10)
  loc_10208A4: End If
  loc_10208A8: Set var_88 = Me.TopCtrl1
  loc_10208AE: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10208C3: If ( = "Browse") Then
  loc_10208C6:   Exit Sub
  loc_10208C7: End If
  loc_102093B: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1020946:   var_DC = "+{Tab}"
  loc_102094C:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1020956:   arg_C = 0
  loc_102095C: Else
  loc_10209B3:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10209B6:   End If
  loc_10209B6: End If
  loc_10209D9: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10209FD: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_1020A13:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1020A2B:   var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1020A30:   var_118 = vbNullString
  loc_1020A3A:   Set var_E4 = Me.FGrid
  loc_1020A40:   LateIdCallSt
  loc_1020A58: End If
  loc_1020A5A: arg_C = 0
  loc_1020A5D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E04ED0
  'Data Table: 4EB7B0
  loc_E04EC9: Call FGrid_UnknownEvent_C()
  loc_E04ECE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'EC7D60
  'Data Table: 4EB7B0
  Dim var_88 As MSHFlexGrid
  loc_EC7CCC: Set var_88 = Me.TopCtrl1
  loc_EC7CD2: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_EC7CE7: If ( = "Browse") Then
  loc_EC7CEA:   Exit Sub
  loc_EC7CEB: End If
  loc_EC7D0A: If (CLng(Me.FGrid.Col) >= 3) Then
  loc_EC7D4B:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EC7D5D: End If
  loc_EC7D5D: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '105015C
  'Data Table: 4EB7B0
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_104FF00: Set var_90 = Me.TopCtrl1
  loc_104FF06: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_104FF1B: If ( = "Browse") Then
  loc_104FF1E:   Exit Sub
  loc_104FF1F: End If
  loc_104FF3C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104FF3F:   Exit Sub
  loc_104FF40: End If
  loc_104FF51: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_104FF73:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104FFAD:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_104FFCF:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104FFE5:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104FFEE:         Set var_114 = Me.FGrid
  loc_1050009:       Else
  loc_105001C:         Me.FGrid.Rows = 1
  loc_1050042:         var_B0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_105004A:         Set var_114 = Me.FGrid
  loc_1050077:         Me.FGrid.FixedRows = 1
  loc_105007F:       End If
  loc_1050083:       Set var_90 = Me.TopCtrl1
  loc_1050089:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(FGrid.DispID_10000)
  loc_105009E:       If (var_B0 = "Add") Then
  loc_10500C6:         For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_10500D0:           var_A0 = CVar(CLng(var_86)) 'Long
  loc_10500D8:           var_E0 = CVar(CLng(0)) 'Long
  loc_10500E2:           var_B0 = CVar(CStr(var_86)) 'String
  loc_10500EA:           Set var_90 = Me.FGrid
  loc_10500F0:           LateIdCallSt
  loc_1050101:         Next var_120 'Integer
  loc_1050106:       End If
  loc_1050106:     End If
  loc_1050109:   Else
  loc_105012A:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_105013A:   End If
  loc_105013E:   Set var_90 = Me.FGrid
  loc_105014F: End If
  loc_1050154: Set var_8C = Nothing
  loc_1050157: Exit Sub
  loc_1050158: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41854
  'Data Table: 4EB7B0
  Dim var_8C As TextBox
  loc_E41828: Call Proc_67_56_EF8168()
  loc_E41838: Set var_88 = Me.TxtGrid
  loc_E4183E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41846: var_8C.Visible = False
  loc_E41852: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7F88C
  'Data Table: 4EB7B0
  Dim var_94 As TextBox
  loc_E7F828: On Error Goto loc_E7F884
  loc_E7F84E: Call Proc_67_54_F1362C(Proc_5_1_100EC1C("ADD", Me))
  loc_E7F859: Call Proc_67_55_E9F228(global_60)
  loc_E7F869: Set var_8C = Me.Txt
  loc_E7F86F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E7F877: var_94.SetFocus
  loc_E7F883: Exit Sub
  loc_E7F884: ' Referenced from: E7F828
  loc_E7F884: Proc_6_60_E63754(var_94)
  loc_E7F889: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F1327C
  'Data Table: 4EB7B0
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F13194: On Error Goto loc_F13239
  loc_F131AE: If (Me.RecordCount > 0) Then
  loc_F131C6:   var_8C = "EDIT"
  loc_F131D4:   Call Proc_67_54_F1362C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F131EA:   Set var_90 = Me.Txt
  loc_F131F0:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F131F8:   var_98.SetFocus
  loc_F13207: Else
  loc_F13228:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F13238: End If
  loc_F13238: Exit Sub
  loc_F13239: ' Referenced from: F13194
  loc_F13241: Set var_90 = Err()
  loc_F13247: Call 0.Method_arg_2C (var_8C)
  loc_F13268: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F1327B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'FE68B4
  'Data Table: 4EB7B0
  Dim var_96 As Integer
  Dim unk_4EB7BD As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_FE66E4: On Error Goto loc_FE685C
  loc_FE671E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_FE6723:   var_96 = 0
  loc_FE672F:   unk_4EB7BD.BeginTrans var_11C
  loc_FE6736:   var_96 = &HFF
  loc_FE674A:   var_94 = Me.Bookmark 'Variant
  loc_FE6796:   var_F8 = "Delete From GROUPPROF Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_FE679A:   var_128 = CStr(var_F8)
  loc_FE67A4:   unk_4EB7BD.Execute var_128, var_118, -1
  loc_FE67C6:   unk_4EB7BD.CommitTrans
  loc_FE67CD:   var_96 = 0
  loc_FE67DB:   Me.Requery -1
  loc_FE67FB:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_FE6808:     Me.Bookmark = var_94
  loc_FE6810:   Else
  loc_FE6824:     If (Me.EOF = 0) Then
  loc_FE682D:       Me.MoveLast
  loc_FE6832:     End If
  loc_FE6832:   End If
  loc_FE6832:   Call Proc_67_57_144C96C(var_96, var_12C)
  loc_FE6853:   Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_FE685B: End If
  loc_FE685B: Exit Sub
  loc_FE685C: ' Referenced from: FE66E4
  loc_FE6862: If (var_96 = &HFF) Then
  loc_FE686B:   unk_4EB7BD.RollbackTrans
  loc_FE6870: End If
  loc_FE6878: Set var_120 = Err()
  loc_FE687E: Call 0.Method_arg_2C (var_128, 0)
  loc_FE689F: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_FE68B2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E178A0
  'Data Table: 4EB7B0
  loc_E17895: Me.Global.Unload Me
  loc_E1789D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E32408
  'Data Table: 4EB7B0
  loc_E323F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32400: Call Proc_67_57_144C96C(global_60)
  loc_E32405: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E325E8
  'Data Table: 4EB7B0
  Dim arg_3800 As String
  loc_E325D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E325E0: Call Proc_67_57_144C96C(global_60)
  loc_E325E5: Exit Sub
  loc_E325E6: arg_3800 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E32528
  'Data Table: 4EB7B0
  loc_E32518: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32520: Call Proc_67_57_144C96C(global_60)
  loc_E32525: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E324C8
  'Data Table: 4EB7B0
  loc_E324B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E324C0: Call Proc_67_57_144C96C(global_60)
  loc_E324C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '139D120
  'Data Table: 4EB7B0
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim unk_4EB7BD As Connection15
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim var_94 As Field20
  Dim var_98 As String
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim Me As Recordset15
  Dim var_104 As String
  Dim var_BC As Variant
  Dim var_1B8 As TextBox
  Dim var_420 As TextBox
  Dim var_47C As TextBox
  Dim var_4D8 As TextBox
  Dim var_368 As Variant
  Dim var_5A4 As Variant
  loc_139C9AC: On Error Goto loc_139D0CB
  loc_139C9B3: var_86 = CByte(0) 'Byte
  loc_139C9C2: Set var_8C = Me.Txt
  loc_139C9C8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_139C9F1: If (Proc_6_27_EA61EC(var_90, "Name1") = 0) Then
  loc_139C9FB:   Call Txt_GotFocus()
  loc_139CA00:   Exit Sub
  loc_139CA01: End If
  loc_139CA05: Set var_8C = Me.TopCtrl1
  loc_139CA0B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(CInt(0))
  loc_139CA20: If (var_90 = "Add") Then
  loc_139CA29:   var_DC = 0
  loc_139CA48:   unk_4EB7BD.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,2,7) AS INT)),1)+1 AS MyCode From GROUPPROF", var_BC, -1
  loc_139CA50:   var_8C = var_8C.Fields
  loc_139CA58:   var_DC = var_90.Item(var_90)
  loc_139CA60:   var_94 = var_94.Value
  loc_139CA93:   var_EC = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_139CAB9:   var_CC = Format(CStr(var_CC), "0000000")
  loc_139CAC1:   var_FC = (1 + var_CC)
  loc_139CACC:   intStaId = CStr(var_FC)
  loc_139CAE1: Else
  loc_139CAFE:   var_90 = Me.Fields.Item("SearchCode")
  loc_139CB06:   var_BC = var_90.Value
  loc_139CB15:   intStaId = CStr(var_BC)
  loc_139CB26: End If
  loc_139CB2F: unk_4EB7BD.BeginTrans var_100
  loc_139CB38: var_86 = CByte(1) 'Byte
  loc_139CB5A: var_104 = "Delete From GroupProf Where Code='" & intStaId & "'"
  loc_139CB63: unk_4EB7BD.Execute var_104, var_BC, -1
  loc_139CB86: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_90, Me.Txt)
  loc_139CB95: Proc_6_17_EAAE40(var_CC, CVar(var_90), 1)
  loc_139CBA5: Set var_94 = Me.Txt
  loc_139CBAB: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_118)
  loc_139CBBA: Proc_6_17_EAAE40(var_138, CVar(var_118))
  loc_139CBCA: Set var_15C = Me.Txt
  loc_139CBD0: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_160)
  loc_139CBDF: Proc_6_17_EAAE40(var_180, CVar(var_160))
  loc_139CBF2: Set var_1B4 = Me.Txt
  loc_139CBF8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_1B8, var_104)
  loc_139CC00: var_EC = var_1B8.Tag
  loc_139CC0E: Proc_6_17_EAAE40(var_1D8, CVar(var_104))
  loc_139CC1E: Set var_20C = Me.Txt
  loc_139CC24: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_210)
  loc_139CC33: Proc_6_17_EAAE40(var_230, CVar(var_210))
  loc_139CC43: Set var_264 = Me.Txt
  loc_139CC49: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_268)
  loc_139CC58: Proc_6_17_EAAE40(var_288, CVar(var_268))
  loc_139CC68: Set var_2BC = Me.Txt
  loc_139CC6E: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_2C0)
  loc_139CC7D: Proc_6_17_EAAE40(var_2E0, CVar(var_2C0))
  loc_139CC8D: Set var_314 = Me.Txt
  loc_139CC93: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_318)
  loc_139CCA2: Proc_6_17_EAAE40(var_338, CVar(var_318))
  loc_139CCB2: Set var_36C = Me.Txt
  loc_139CCB8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_370)
  loc_139CCC7: Proc_6_17_EAAE40(var_390, CVar(var_370))
  loc_139CCD7: Set var_3C4 = Me.Txt
  loc_139CCDD: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HC), var_3C8)
  loc_139CCEC: Proc_6_17_EAAE40(var_3E8, CVar(var_3C8))
  loc_139CCFF: Set var_41C = Me.Txt
  loc_139CD05: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HD), var_420)
  loc_139CD1B: Proc_6_17_EAAE40(var_444, CVar(var_420.Tag))
  loc_139CD2E: Set var_478 = Me.Txt
  loc_139CD34: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HF), var_47C)
  loc_139CD4A: Proc_6_17_EAAE40(var_4A0, CVar(var_47C.Tag))
  loc_139CD5D: Set var_4D4 = Me.Txt
  loc_139CD63: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HE), var_4D8)
  loc_139CD79: Proc_6_17_EAAE40(var_4FC, CVar(var_4D8.Tag))
  loc_139CD89: Set var_530 = Me.Txt
  loc_139CD8F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H10), var_534)
  loc_139CD9E: Proc_6_17_EAAE40(var_554, CVar(var_534))
  loc_139CDB1: Proc_6_7_F26918(var_624, Date)
  loc_139CDBA: Set var_658 = Me.TopCtrl1
  loc_139CDC0: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_CC)
  loc_139CE12: var_98 = "Insert Into GroupProf (Code,Name,Add1,Add2,City,Type,ConName,PhoneNo,Comments1,Comments2,Comments3,TravelAgency,MarketSeg,BusSource,GroupType,Site_Code,U_Name,U_EntDt,U_AE) Values ('" & intStaId
  loc_139CE19: var_EC = CVar(var_98 & "',") 'String
  loc_139CE1F: var_FC = var_EC & var_CC 
  loc_139CE23: var_AC = ","
  loc_139CE98: var_368 = var_FC & var_AC & var_138 & "," & var_180 & "," & var_1D8 & "," & var_230 & "," & var_288 & "," & var_2E0 & "," & var_338 & "," 
  loc_139CF02: var_5A4 = var_368 & var_390 & "," & var_3E8 & "," & var_444 & "," & var_4A0 & "," & var_4FC & "," & var_554 & ",'" & CVar(MemVar_1F95078) 
  loc_139CF4C: unk_4EB7BD.Execute CStr(var_5A4 & "','" & CVar(MemVar_1F950C8) & "'," & var_624 & ",'" & IIf((var_678 = "Add"), "A", "E") & "')"), var_73C, -1
  loc_139D01E: unk_4EB7BD.CommitTrans
  loc_139D027: var_86 = CByte(0) 'Byte
  loc_139D036: Me.Requery -1
  loc_139D063: Me.Find "SearchCode='" & intStaId & "'", 0, 1
  loc_139D073: Set var_8C = Me.TopCtrl1
  loc_139D079: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_AC)
  loc_139D08E: If (var_740 = "Add") Then
  loc_139D091:   Call TopCtrl1_UnknownEvent_11()
  loc_139D096:   Exit Sub
  loc_139D097: End If
  loc_139D0AC: var_98 = "INI"
  loc_139D0BA: Call Proc_67_54_F1362C(Proc_5_1_100EC1C(var_98, Me))
  loc_139D0C5: Call Proc_67_57_144C96C(global_60)
  loc_139D0CA: Exit Sub
  loc_139D0CB: ' Referenced from: 139C9AC
  loc_139D0D4: If (CInt(var_86) = 1) Then
  loc_139D0DD:   unk_4EB7BD.RollbackTrans
  loc_139D0E2: End If
  loc_139D0EA: Set var_8C = Err()
  loc_139D0F0: Call 0.Method_arg_2C (var_98)
  loc_139D109: MsgBox(CVar(var_98), &H10, var_CC, var_EC, var_FC)
  loc_139D11C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'E9F458
  'Data Table: 4EB7B0
  loc_E9F3E0: On Error Goto loc_E9F451
  loc_E9F41A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9F440:   Call Proc_67_54_F1362C(Proc_5_1_100EC1C("INI", Me))
  loc_E9F44B:   Call Proc_67_57_144C96C(global_60)
  loc_E9F450: End If
  loc_E9F450: Exit Sub
  loc_E9F451: ' Referenced from: E9F3E0
  loc_E9F451: Proc_6_60_E63754()
  loc_E9F456: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB45DC
  'Data Table: 4EB7B0
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB454C: On Error Goto loc_EB45D6
  loc_EB4566: If (Me.RecordCount <= 0) Then
  loc_EB456F:   var_B8 = "Information"
  loc_EB458A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB459A:   Exit Sub
  loc_EB459B: End If
  loc_EB459E: MemVar_1F950E4 = "Select Code As SearchCode,GROUPPROF.Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GroupProf Left Join City on City.CityCode=GroupProf.City Order by GroupProf.Name"
  loc_EB45A8: MemVar_1F95120 = Me
  loc_EB45B5: Proc_6_126_F1C850("3200,2500,2500,2400")
  loc_EB45D0: Call 0.Method_arg_2B0 (1)
  loc_EB45D5: Exit Sub
  loc_EB45D6: ' Referenced from: EB454C
  loc_EB45D6: Proc_6_60_E63754(var_B8)
  loc_EB45DB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E59340
  'Data Table: 4EB7B0
  Dim Me As Recordset15
  loc_E59307: Me.Requery -1
  loc_E59317: Me.Requery -1
  loc_E59327: Me.Requery -1
  loc_E59337: Me.Requery -1
  loc_E5933C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1378B34
  'Data Table: 4EB7B0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  loc_13782B6: Set var_88 = Me.Txt
  loc_13782BC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13782CA: Proc_6_74_E23240(var_8C)
  loc_13782D6: Call Proc_67_56_EF8168(var_8C)
  loc_13782DE: var_92 = Index
  loc_13782E9: If (var_92 = CInt(0)) Then
  loc_137833A:   Set var_88 = Me.Txt
  loc_1378340:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1378348:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1378360:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_1378363:     Exit Sub
  loc_1378364:   End If
  loc_1378371:   Set var_88 = Me.Txt
  loc_1378377:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_137837F:   var_A0 = var_8C.Text
  loc_1378391:   var_B0 = "Name"
  loc_13783CC:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_13783D5:     Me.MoveFirst
  loc_13783F8:     Set var_88 = Me.Txt
  loc_13783FE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1378406:     0 = var_8C.Text
  loc_137841F:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1378434:   End If
  loc_1378437: Else
  loc_137843F:   If (var_92 = CInt(3)) Then
  loc_1378490:     Set var_88 = Me.Txt
  loc_1378496:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13784B6:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_13784B9:       Exit Sub
  loc_13784BA:     End If
  loc_13784C7:     Set var_88 = Me.Txt
  loc_13784CD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13784D5:     var_A0 = var_8C.Text
  loc_13784E7:     var_B0 = "Name"
  loc_1378522:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_137852B:       Me.MoveFirst
  loc_137854E:       Set var_88 = Me.Txt
  loc_1378554:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_137855C:       0 = var_8C.Text
  loc_1378575:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_137858A:     End If
  loc_137858D:   Else
  loc_1378595:     If (var_92 = CInt(&HD)) Then
  loc_13785A6:       Set var_88 = Me.Txt
  loc_13785AC:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_13785C1:       var_B0 = CVar((var_8C.Left + CDbl(2500))) 'Single
  loc_13785D0:       Me.DGTravelAg.Left = var_B0
  loc_13785EC:       Set var_88 = Me.Txt
  loc_13785F2:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_1378607:       var_B0 = CVar((var_8C.Top - CDbl(1500))) 'Single
  loc_1378616:       Me.DGTravelAg.Top = var_B0
  loc_1378672:       Set var_88 = Me.Txt
  loc_1378678:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378698:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_137869B:         Exit Sub
  loc_137869C:       End If
  loc_13786A9:       Set var_88 = Me.Txt
  loc_13786AF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13786B7:       var_A0 = var_8C.Text
  loc_13786C9:       var_B0 = "Name"
  loc_1378704:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_137870D:         Me.MoveFirst
  loc_1378730:         Set var_88 = Me.Txt
  loc_1378736:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_137873E:         0 = var_8C.Text
  loc_1378757:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_137876C:       End If
  loc_137876F:     Else
  loc_1378777:       If (var_92 = CInt(&HE)) Then
  loc_1378788:         Set var_88 = Me.Txt
  loc_137878E:         Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_13787A3:         var_B0 = CVar((var_8C.Left + CDbl(2500))) 'Single
  loc_13787B2:         Me.DGBusiness.Left = var_B0
  loc_13787CE:         Set var_88 = Me.Txt
  loc_13787D4:         Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_13787E9:         var_B0 = CVar((var_8C.Top - CDbl(1500))) 'Single
  loc_13787F8:         Me.DGBusiness.Top = var_B0
  loc_1378854:         Set var_88 = Me.Txt
  loc_137885A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_137887A:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_137887D:           Exit Sub
  loc_137887E:         End If
  loc_137888B:         Set var_88 = Me.Txt
  loc_1378891:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378899:         var_A0 = var_8C.Text
  loc_13788AB:         var_B0 = "Name"
  loc_13788E6:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_13788EF:           Me.MoveFirst
  loc_1378912:           Set var_88 = Me.Txt
  loc_1378918:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1378920:           0 = var_8C.Text
  loc_1378939:           Me.Find 1 & var_A0 & "'", var_B0, 
  loc_137894E:         End If
  loc_1378951:       Else
  loc_1378959:         If (var_92 = CInt(&HF)) Then
  loc_137896A:           Set var_88 = Me.Txt
  loc_1378970:           Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_1378985:           var_B0 = CVar((var_8C.Left + CDbl(2500))) 'Single
  loc_1378994:           Me.DGMarketSeg.Left = var_B0
  loc_13789B0:           Set var_88 = Me.Txt
  loc_13789B6:           Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_13789CB:           var_B0 = CVar((var_8C.Top - CDbl(1500))) 'Single
  loc_13789DA:           Me.DGMarketSeg.Top = var_B0
  loc_1378A36:           Set var_88 = Me.Txt
  loc_1378A3C:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378A5C:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1378A5F:             Exit Sub
  loc_1378A60:           End If
  loc_1378A6D:           Set var_88 = Me.Txt
  loc_1378A73:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378A7B:           var_A0 = var_8C.Text
  loc_1378A8D:           var_B0 = "Name"
  loc_1378AC8:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1378AD1:             Me.MoveFirst
  loc_1378AF4:             Set var_88 = Me.Txt
  loc_1378AFA:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1378B02:             0 = var_8C.Text
  loc_1378B1B:             Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1378B30:           End If
  loc_1378B30:         End If
  loc_1378B30:       End If
  loc_1378B30:     End If
  loc_1378B30:   End If
  loc_1378B30: End If
  loc_1378B30: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11654F4
  'Data Table: 4EB7B0
  Dim var_88 As Integer
  Dim var_9C As DataGrid
  Dim var_DC As Variant
  Dim var_A0 As DataGrid
  Dim var_EC As Variant
  loc_1165152: If (CLng(Shift) = &H1B) Then
  loc_1165155:   Call Proc_67_56_EF8168()
  loc_116515A:   Exit Sub
  loc_116515B: End If
  loc_116515E: var_88 = KeyCode
  loc_1165169: If (var_88 = CInt(0)) Then
  loc_1165184:   Set var_A0 = Nothing
  loc_116518F:   Set var_9C = Nothing
  loc_11651C1:   Proc_6_69_134A630(Me.DGHelp, Me.Txt, CInt(0), global_80, Shift, 0)
  loc_11651D8: Else
  loc_11651E0:   If (var_88 = CInt(3)) Then
  loc_11651FB:     Set var_A0 = Nothing
  loc_1165238:     Proc_6_69_134A630(Me.DGCity, Me.Txt, CInt(3), global_64, Shift, 0, 1, Nothing)
  loc_116524F:   Else
  loc_1165257:     If (var_88 = CInt(&HD)) Then
  loc_1165272:       Set var_A0 = Nothing
  loc_11652AF:       Proc_6_69_134A630(Me.DGTravelAg, Me.Txt, CInt(&HD), global_68, Shift, 0, 1, Nothing)
  loc_11652C6:     Else
  loc_11652CE:       If (var_88 = CInt(&HE)) Then
  loc_11652E9:         Set var_A0 = Nothing
  loc_1165326:         Proc_6_69_134A630(Me.DGBusiness, Me.Txt, CInt(&HE), global_76, Shift, 0, 1, Nothing)
  loc_116533D:       Else
  loc_1165345:         If (var_88 = CInt(&HF)) Then
  loc_1165360:           Set var_A0 = Nothing
  loc_116539D:           Proc_6_69_134A630(Me.DGMarketSeg, Me.Txt, CInt(&HF), global_72, Shift, 0, 1, Nothing)
  loc_11653B1:         End If
  loc_11653B1:       End If
  loc_11653B1:     End If
  loc_11653B1:   End If
  loc_11653B1: End If
  loc_11653E8: var_DC = Me.DGHelp.Visible
  loc_11653F9: Set var_A0 = Me.DGBusiness
  loc_11653FF: var_EC = var_A0.Visible
  loc_116543D: If (((((CBool(Me.DGCity.Visible) = 0) And (CBool(Me.DGTravelAg.Visible) = 0)) And (CBool(var_DC) = 0)) And (CBool(var_EC) = 0)) And (CBool(Me.DGMarketSeg.Visible) = 0)) Then
  loc_116545E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H10))) Then
  loc_1165467:     Call Txt_Validate(KeyCode)
  loc_1165472:     If (var_86 = &HFF) Then
  loc_1165475:       Exit Sub
  loc_1165476:     End If
  loc_11654AD:     If (MsgBox("Save Record ?", 4, "Save Data", var_DC, var_EC) = 6) Then
  loc_11654B0:       Call TopCtrl1_UnknownEvent_19()
  loc_11654B5:     End If
  loc_11654B5:     Exit Sub
  loc_11654B6:   End If
  loc_11654CB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11654D4:     Proc_6_75_E5335C(Shift, arg_14, var_86, var_A0, 0, var_A0)
  loc_11654D9:   End If
  loc_11654E3:   If (CLng(Shift) = &H26) Then
  loc_11654EC:     Proc_6_76_E533C8(Shift, arg_14, 0, var_A0)
  loc_11654F1:   End If
  loc_11654F1: End If
  loc_11654F1: Exit Sub
  loc_11654F2: 0(var_A0) = 0
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '101A460
  'Data Table: 4EB7B0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_101A237: Proc_6_58_E06050(arg_10)
  loc_101A242: Proc_6_133_E7FB08(var_94)
  loc_101A24B: arg_10 = CInt(var_94)
  loc_101A254: var_96 = KeyAscii
  loc_101A25F: If (var_96 = CInt(0)) Then
  loc_101A27E:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_101A2AB:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_101A2BA:   End If
  loc_101A2BD: Else
  loc_101A2C5:   If (var_96 = CInt(3)) Then
  loc_101A2E4:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_101A311:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_101A320:     End If
  loc_101A323:   Else
  loc_101A32B:     If (var_96 = CInt(&HD)) Then
  loc_101A34A:       If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_101A37B:         Proc_6_89_1470B00(Me.Txt, CInt(&HD), global_68, arg_10, "Name", 0)
  loc_101A38A:       End If
  loc_101A38D:     Else
  loc_101A395:       If (var_96 = CInt(&HE)) Then
  loc_101A3B4:         If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_101A3E5:           Proc_6_89_1470B00(Me.Txt, CInt(&HE), global_76, arg_10, "Name", 0)
  loc_101A3F4:         End If
  loc_101A3F7:       Else
  loc_101A3FF:         If (var_96 = CInt(&HF)) Then
  loc_101A41E:           If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_101A44F:             Proc_6_89_1470B00(Me.Txt, CInt(&HF), global_72, arg_10, "Name", 0)
  loc_101A45E:           End If
  loc_101A45E:         End If
  loc_101A45E:       End If
  loc_101A45E:     End If
  loc_101A45E:   End If
  loc_101A45E: End If
  loc_101A45E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '104A3AC
  'Data Table: 4EB7B0
  Dim var_86 As Integer
  loc_104A14B: var_86 = KeyCode
  loc_104A156: If (var_86 = CInt(0)) Then
  loc_104A175:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_104A189:     var_A8 = "Name"
  loc_104A1B1:     Proc_6_68_12A2818(Me.DGHelp, Me.Txt, CInt(0), global_80)
  loc_104A1C4:   End If
  loc_104A1C7: Else
  loc_104A1CF:   If (var_86 = CInt(3)) Then
  loc_104A1EE:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_104A202:       var_A8 = "Name"
  loc_104A22A:       Proc_6_68_12A2818(Me.DGCity, Me.Txt, CInt(3), global_64, Shift)
  loc_104A23D:     End If
  loc_104A240:   Else
  loc_104A248:     If (var_86 = CInt(&HD)) Then
  loc_104A267:       If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_104A27B:         var_A8 = "Name"
  loc_104A2A3:         Proc_6_68_12A2818(Me.DGTravelAg, Me.Txt, CInt(&HD), global_68, Shift)
  loc_104A2B6:       End If
  loc_104A2B9:     Else
  loc_104A2C1:       If (var_86 = CInt(&HE)) Then
  loc_104A2E0:         If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_104A31C:           Proc_6_68_12A2818(Me.DGBusiness, Me.Txt, CInt(&HE), global_76, Shift, "Name")
  loc_104A32F:         End If
  loc_104A332:       Else
  loc_104A33A:         If (var_86 = CInt(&HF)) Then
  loc_104A359:           If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_104A395:             Proc_6_68_12A2818(Me.DGMarketSeg, Me.Txt, CInt(&HF), global_72, Shift, "Name")
  loc_104A3A8:           End If
  loc_104A3A8:         End If
  loc_104A3A8:       End If
  loc_104A3A8:     End If
  loc_104A3A8:   End If
  loc_104A3A8: End If
  loc_104A3A8: Exit Sub
  loc_104A3A9: ThisVCallHidden
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A74C
  'Data Table: 4EB7B0
  loc_E4A72A: Set var_88 = Me.Txt
  loc_E4A730: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A73E: Proc_6_73_E23294(var_8C)
  loc_E4A74A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1387DDC
  'Data Table: 4EB7B0
  Dim var_8A As Integer
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As String
  Dim unk_4EB7BD As Connection15
  Dim var_12C As Recordset15
  Dim var_130 As Variant
  Dim var_144 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_90 As Fields15
  Dim var_180 As String
  Dim var_88 As Recordset15
  loc_1387537: var_8A = Cancel
  loc_1387542: If (var_8A = CInt(0)) Then
  loc_1387571:   Set var_90 = Me.Txt
  loc_1387577:   Call 0.Method_Txt_Validate0 (CInt(0), var_94, "Select Count(*) from GroupProf where UPPER(Name)='", var_128, -1, var_12C)
  loc_1387586:   var_B4 = Ucase(CVar(var_94))
  loc_1387591:   var_C4 = Trim(var_B4)
  loc_1387599:   var_E4 = var_130 & var_C4 
  loc_13875A6:   var_108 = CStr(var_E4 & "'")
  loc_13875B0:   unk_4EB7BD.Execute var_108, 0, var_144
  loc_13875C0:    = var_130.Item(var_8A)
  loc_13875C8:    = var_144.Value
  loc_13875F7:   If (var_12C.Fields > 0) Then
  loc_1387613:     MsgBox("Duplicate Name ", 0, var_B4, var_C4, var_E4)
  loc_1387625:     arg_10 = &HFF
  loc_1387628:     Exit Sub
  loc_1387629:   End If
  loc_138762C: Else
  loc_1387634:   If (var_8A = CInt(3)) Then
  loc_1387685:     Set var_90 = Me.Txt
  loc_138768B:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_108)
  loc_1387693:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_13876AB:     If (arg_10 Or (var_108 = vbNullString)) Then
  loc_13876AE:       Exit Sub
  loc_13876AF:     End If
  loc_13876EA:     Set var_12C = Me.Txt
  loc_13876F0:     Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_13876F8:     var_130.Text = CStr(Me.Fields.Item("Name").Value)
  loc_138772B:     var_94 = Me.Fields.Item("Code")
  loc_138773C:     var_108 = CStr(var_94.Value)
  loc_1387749:     Set var_12C = Me.Txt
  loc_138774F:     Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1387757:     var_130.Tag = var_108
  loc_138778A:     Set var_90 = Me.Txt
  loc_1387790:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_108, "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='")
  loc_1387798:     var_A4 = var_94.Tag
  loc_13877A1:     var_180 = -1 & var_108
  loc_13877B1:     unk_4EB7BD.Execute var_180 & "'", var_12C, 
  loc_13877BC:     Set var_88 = var_12C
  loc_13877E8:     If (var_88.RecordCount > 0) Then
  loc_1387821:       Set var_12C = Me.Txt
  loc_1387827:       Call 0.Method_Txt_Validate0 (CInt(3), var_130)
  loc_138782F:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_1387879:       Set var_12C = Me.Txt
  loc_138787F:       Call 0.Method_Txt_Validate0 (CInt(4), var_130)
  loc_1387887:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Zipcode")))
  loc_13878D1:       Set var_12C = Me.Txt
  loc_13878D7:       Call 0.Method_Txt_Validate0 (CInt(5), var_130)
  loc_13878DF:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateName")))
  loc_1387929:       Set var_12C = Me.Txt
  loc_138792F:       Call 0.Method_Txt_Validate0 (CInt(6), var_130)
  loc_1387937:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CountryName")))
  loc_1387962:       var_94 = var_88.Fields.Item("CountryType")
  loc_1387981:       Set var_12C = Me.Txt
  loc_1387987:       Call 0.Method_Txt_Validate0 (CInt(7), var_130)
  loc_138798F:       var_130.Text = Proc_6_38_E69628(CVar(var_94))
  loc_13879A3:     End If
  loc_13879A6:   Else
  loc_13879AE:     If (var_8A = CInt(&HD)) Then
  loc_13879FF:       Set var_90 = Me.Txt
  loc_1387A05:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1387A25:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1387A28:         Exit Sub
  loc_1387A29:       End If
  loc_1387A64:       Set var_12C = Me.Txt
  loc_1387A6A:       Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1387A72:       var_130.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1387AA5:       var_94 = Me.Fields.Item("Code")
  loc_1387AC3:       Set var_12C = Me.Txt
  loc_1387AC9:       Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1387AD1:       var_130.Tag = CStr(var_94.Value)
  loc_1387AEA:     Else
  loc_1387AF2:       If (var_8A = CInt(&HE)) Then
  loc_1387B43:         Set var_90 = Me.Txt
  loc_1387B49:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1387B69:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1387B6C:           Exit Sub
  loc_1387B6D:         End If
  loc_1387BA8:         Set var_12C = Me.Txt
  loc_1387BAE:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1387BB6:         var_130.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1387BE9:         var_94 = Me.Fields.Item("Code")
  loc_1387C07:         Set var_12C = Me.Txt
  loc_1387C0D:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1387C15:         var_130.Tag = CStr(var_94.Value)
  loc_1387C2E:       Else
  loc_1387C36:         If (var_8A = CInt(&HF)) Then
  loc_1387C87:           Set var_90 = Me.Txt
  loc_1387C8D:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1387CAD:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1387CB0:             Exit Sub
  loc_1387CB1:           End If
  loc_1387CEC:           Set var_12C = Me.Txt
  loc_1387CF2:           Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1387CFA:           var_130.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1387D2D:           var_94 = Me.Fields.Item("Code")
  loc_1387D4B:           Set var_12C = Me.Txt
  loc_1387D51:           Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1387D59:           var_130.Tag = CStr(var_94.Value)
  loc_1387D72:         Else
  loc_1387D7A:           If Not (var_8A = CInt(&H11)) Then
  loc_1387D85:             If (var_8A = CInt(&H12)) Then
  loc_1387D88:             End If
  loc_1387D92:             Set var_90 = Me.Txt
  loc_1387D98:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_1387DB8:             Set var_130 = Me.Txt
  loc_1387DBE:             Call 0.Method_Txt_Validate0 (Cancel, var_144)
  loc_1387DC6:             var_144.Text = Proc_6_33_15125B8(var_94)
  loc_1387DD9:           End If
  loc_1387DD9:         End If
  loc_1387DD9:       End If
  loc_1387DD9:     End If
  loc_1387DD9:   End If
  loc_1387DD9: End If
  loc_1387DD9: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'EF435C
  'Data Table: 4EB7B0
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_10C As TextBox
  loc_EF42A0: Call Proc_67_56_EF8168()
  loc_EF42B1: If (Index = 0) Then
  loc_EF42D0:   Set var_A0 = Me.FGrid
  loc_EF4306:   Set var_108 = Me.TxtGrid
  loc_EF430C:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_EF4314:   var_10C.Tag = CVar(CLng(var_A0.Col))
  loc_EF4341:   Set var_8C = Me.TxtGrid
  loc_EF4347:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_EF434F:   var_A0.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_EF435B: End If
  loc_EF435B: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F972A8
  'Data Table: 4EB7B0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_F97143: var_86 = KeyCode
  loc_F9714C: If (var_86 = 0) Then
  loc_F97159:   If (CLng(Shift) = &H1B) Then
  loc_F97169:     Set var_8C = Me.TxtGrid
  loc_F9716F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F97189:     Set var_98 = Me.TxtGrid
  loc_F9718F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F97197:     var_9C.Text = var_90.Tag
  loc_F971AA:     Call Proc_67_56_EF8168(var_86)
  loc_F971B3:     Set var_8C = Me.FGrid
  loc_F971D0:     Set var_8C = Me.TxtGrid
  loc_F971D6:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F971DE:     var_90.Visible = False
  loc_F971EA:     Exit Sub
  loc_F971EB:   End If
  loc_F97221:   If ((CLng(Shift) = &HD) Or ((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28))) Then
  loc_F9722A:     Call Proc_67_53_F749A0(KeyCode, var_9E)
  loc_F97235:     If (var_9E = &HFF) Then
  loc_F97292:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, 0, CByte(CLng(Me.FGrid.Cols)))
  loc_F972A7:     End If
  loc_F972A7:   End If
  loc_F972A7: End If
  loc_F972A7: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E7B424
  'Data Table: 4EB7B0
  Dim arg_10 As Integer
  loc_E7B3CF: Proc_6_58_E06050(arg_10)
  loc_E7B3DA: Proc_6_133_E7FB08(var_94)
  loc_E7B3F3: Set var_98 = Me.TxtGrid
  loc_E7B3F9: Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_9C)
  loc_E7B414: Proc_6_42_129B55C(var_9C, CInt(var_94), 8)
  loc_E7B420: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E233E4
  'Data Table: 4EB7B0
  Dim arg_10 As Integer
  loc_E233CC: If (Cancel = 0) Then
  loc_E233D5:   Call Proc_67_53_F749A0(Cancel, var_88)
  loc_E233DE:   arg_10 = Not(var_88)
  loc_E233E1: End If
  loc_E233E1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'FAFBE8
  'Data Table: 4EB7B0
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_114 As String
  loc_FAFA67: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FAFA7F: var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FAFAB6: If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_FAFACC:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FAFAE4:   var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FAFAE9:   var_114 = "****"
  loc_FAFAF3:   Set var_F0 = Me.FGrid1
  loc_FAFAF9:   LateIdCallSt
  loc_FAFB14: Else
  loc_FAFB27:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FAFB3F:   var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FAFB76:   If (CStr(Me.FGrid1.TextMatrix)) = "****") Then
  loc_FAFB8C:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FAFBA4:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FAFBA9:     var_114 = vbNullString
  loc_FAFBB3:     Set var_F0 = Me.FGrid1
  loc_FAFBB9:     LateIdCallSt
  loc_FAFBD1:   End If
  loc_FAFBD1: End If
  loc_FAFBD5: Set var_88 = Me.FGrid1
  loc_FAFBE6: Exit Sub
End Sub

Private Sub DGBusiness_UnknownEvent_9 'F45894
  'Data Table: 4EB7B0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4578B: Me.DGBusiness.Visible = False
  loc_F457AA: If (Me.RecordCount > 0) Then
  loc_F457E9:   Set var_B4 = Me.Txt
  loc_F457EF:   Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F457F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4582A:   var_B0 = Me.Fields.Item("Name")
  loc_F45849:   Set var_B4 = Me.Txt
  loc_F4584F:   Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F45857:   var_B8.Text = CStr(var_B0.Value)
  loc_F4586D: End If
  loc_F45878: Set var_A8 = Me.Txt
  loc_F4587E: Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE))
  loc_F45886: var_B0.SetFocus
  loc_F45892: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'F3CC54
  'Data Table: 4EB7B0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3CB4B: Me.DGCity.Visible = False
  loc_F3CB6A: If (Me.RecordCount > 0) Then
  loc_F3CBA9:   Set var_B4 = Me.Txt
  loc_F3CBAF:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3CBB7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3CBEA:   var_B0 = Me.Fields.Item("Name")
  loc_F3CC09:   Set var_B4 = Me.Txt
  loc_F3CC0F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3CC17:   var_B8.Text = CStr(var_B0.Value)
  loc_F3CC2D: End If
  loc_F3CC38: Set var_A8 = Me.Txt
  loc_F3CC3E: Call 0.Method_DGCity_UnknownEvent_90 (CInt(3))
  loc_F3CC46: var_B0.SetFocus
  loc_F3CC52: Exit Sub
End Sub

Private Sub DGTravelAg_UnknownEvent_9 'F4A174
  'Data Table: 4EB7B0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A06B: Me.DGTravelAg.Visible = False
  loc_F4A08A: If (Me.RecordCount > 0) Then
  loc_F4A0C9:   Set var_B4 = Me.Txt
  loc_F4A0CF:   Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4A0D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4A10A:   var_B0 = Me.Fields.Item("Name")
  loc_F4A129:   Set var_B4 = Me.Txt
  loc_F4A12F:   Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4A137:   var_B8.Text = CStr(var_B0.Value)
  loc_F4A14D: End If
  loc_F4A158: Set var_A8 = Me.Txt
  loc_F4A15E: Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD))
  loc_F4A166: var_B0.SetFocus
  loc_F4A172: Exit Sub
End Sub

Public Function MasterFormExitGet() '4ECA30
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4ECA3F
  MasterFormExit = Value
End Sub

Public Function intStaIdGet() '4ECA4E
  intStaIdGet = intStaId
End Function

Public Sub intStaIdPut(Value) '4ECA5D
  intStaId = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96508
  'Data Table: 4EB7B0
  Dim Me As Recordset15
  Dim arg_2900 As String
  loc_E96496: On Error Goto loc_E964FF
  loc_E9649F: Me.MoveFirst
  loc_E964C9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E964F1: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E964F9: Call Proc_67_57_144C96C(0)
  loc_E964FE: Exit Sub
  loc_E964FF: ' Referenced from: E96496
  loc_E964FF: Proc_6_60_E63754(var_A0)
  loc_E96504: Exit Sub
  loc_E96505: arg_2900 = 
End Sub

Public Sub Proc_67_49_10BFCD8
  'Data Table: 4EB7B0
  Dim var_88 As Long
  Dim var_E0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As String
  loc_10BFA09: var_88 = &H20D
  loc_10BFA10: Set var_90 = Me.FGrid
  loc_10BFA1E: Set var_94 = Me.Txt
  loc_10BFA24: Call 0.Method_Proc_67_49_10BFCD80 (CInt(&H11), var_98)
  loc_10BFA34: Set var_9C = Me.Txt
  loc_10BFA3A: Call 0.Method_Proc_67_49_10BFCD80 (CInt(&H12), var_A0)
  loc_10BFA6B: var_F0 = (3 + DateDiff("d", CVar(var_98), CVar(var_A0), 1, 1))
  loc_10BFA74: var_110 = (var_F0 + 1)
  loc_10BFA7A: var_120 = CVar(CLng(var_110)) 'Long
  loc_10BFA9B: var_E0 = 3
  loc_10BFAAF: var_E0 = CVar(CLng(0)) 'Long
  loc_10BFAB4: var_120 = &HFA
  loc_10BFAC0: LateIdCallSt
  loc_10BFAC8: var_E0 = 0
  loc_10BFAD4: var_120 = CVar(CLng(0)) 'Long
  loc_10BFAD9: var_140 = "SNo"
  loc_10BFAE2: LateIdCallSt
  loc_10BFAED: var_E0 = CVar(CLng(0)) 'Long
  loc_10BFAF2: var_120 = 0
  loc_10BFAFE: LateIdCallSt
  loc_10BFB06: var_E0 = 0
  loc_10BFB12: var_120 = CVar(CLng(1)) 'Long
  loc_10BFB17: var_140 = "Room Type"
  loc_10BFB20: LateIdCallSt
  loc_10BFB2B: var_E0 = CVar(CLng(1)) 'Long
  loc_10BFB36: var_120 = CVar(CInt(1)) 'Integer
  loc_10BFB3D: LateIdCallSt
  loc_10BFB48: var_E0 = CVar(CLng(1)) 'Long
  loc_10BFB4D: var_120 = &H640
  loc_10BFB59: LateIdCallSt
  loc_10BFB61: var_E0 = 0
  loc_10BFB6D: var_120 = CVar(CLng(2)) 'Long
  loc_10BFB7B: LateIdCallSt
  loc_10BFB86: var_E0 = CVar(CLng(2)) 'Long
  loc_10BFB91: var_120 = CVar(CInt(1)) 'Integer
  loc_10BFB98: LateIdCallSt
  loc_10BFBA3: var_E0 = CVar(CLng(2)) 'Long
  loc_10BFBA8: var_120 = 0
  loc_10BFBB4: LateIdCallSt
  loc_10BFBCC: Set var_94 = Me.Txt
  loc_10BFBD2: Call 0.Method_Proc_67_49_10BFCD80 (CInt(&H11), var_98, var_8A, 3, var_90, var_120, var_E0)
  loc_10BFBE2: Set var_9C = Me.Txt
  loc_10BFBE8: Call 0.Method_Proc_67_49_10BFCD80 (CInt(&H12), var_A0, var_90, var_120, var_E0)
  loc_10BFC19: var_F0 = (3 + DateDiff("d", CVar(var_98), CVar(var_A0), 1, 1))
  loc_10BFC31: For var_154 = "Room Type Code" To CByte(var_F0): var_90 = var_154 'Byte
  loc_10BFC37:   var_E0 = 0
  loc_10BFC45:   var_120 = CVar(CLng(var_8A)) 'Long
  loc_10BFC57:   var_B0 = CVar("Day" & CStr(var_8A)) 'String
  loc_10BFC5E:   LateIdCallSt
  loc_10BFC71:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10BFC7C:   var_120 = CVar(CInt(4)) 'Integer
  loc_10BFC83:   LateIdCallSt
  loc_10BFC90:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10BFC9B:   var_120 = CVar(CInt(4)) 'Integer
  loc_10BFCA2:   LateIdCallSt
  loc_10BFCAF:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10BFCBE:   LateIdCallSt
  loc_10BFCC9: Next var_154 'Byte
  loc_10BFCD1: Set var_90 = Nothing 
  loc_10BFCD5: Exit Sub
  loc_10BFCD6: VCallFPR8
End Sub

Public Sub Proc_67_50_10C86E8
  'Data Table: 4EB7B0
  Dim var_88 As Long
  Dim var_E0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As String
  loc_10C840D: var_88 = &H249
  loc_10C8414: Set var_90 = Me.FGrid1
  loc_10C8422: Set var_94 = Me.Txt
  loc_10C8428: Call 0.Method_Proc_67_50_10C86E80 (CInt(&H11), var_98)
  loc_10C8438: Set var_9C = Me.Txt
  loc_10C843E: Call 0.Method_Proc_67_50_10C86E80 (CInt(&H12), var_A0)
  loc_10C846F: var_F0 = (5 + DateDiff("d", CVar(var_98), CVar(var_A0), 1, 1))
  loc_10C8478: var_110 = (var_F0 + 1)
  loc_10C847E: var_120 = CVar(CLng(var_110)) 'Long
  loc_10C849F: var_E0 = 0
  loc_10C84AB: var_120 = CVar(CLng(1)) 'Long
  loc_10C84B0: var_140 = "SNo"
  loc_10C84B9: LateIdCallSt
  loc_10C84C4: var_E0 = CVar(CLng(1)) 'Long
  loc_10C84C9: var_120 = 0
  loc_10C84D5: LateIdCallSt
  loc_10C84DD: var_E0 = 0
  loc_10C84E9: var_120 = CVar(CLng(2)) 'Long
  loc_10C84EE: var_140 = "Type"
  loc_10C84F7: LateIdCallSt
  loc_10C8502: var_E0 = CVar(CLng(2)) 'Long
  loc_10C850D: var_120 = CVar(CInt(1)) 'Integer
  loc_10C8514: LateIdCallSt
  loc_10C851F: var_E0 = CVar(CLng(2)) 'Long
  loc_10C852A: var_120 = CVar(CInt(1)) 'Integer
  loc_10C8531: LateIdCallSt
  loc_10C853C: var_E0 = CVar(CLng(2)) 'Long
  loc_10C8541: var_120 = &H3E8
  loc_10C854D: LateIdCallSt
  loc_10C8555: var_E0 = 0
  loc_10C8561: var_120 = CVar(CLng(3)) 'Long
  loc_10C8566: var_140 = "Rate"
  loc_10C856F: LateIdCallSt
  loc_10C857A: var_E0 = CVar(CLng(3)) 'Long
  loc_10C8585: var_120 = CVar(CInt(7)) 'Integer
  loc_10C858C: LateIdCallSt
  loc_10C8597: var_E0 = CVar(CLng(3)) 'Long
  loc_10C85A2: var_120 = CVar(CInt(7)) 'Integer
  loc_10C85A9: LateIdCallSt
  loc_10C85B4: var_E0 = CVar(CLng(3)) 'Long
  loc_10C85B9: var_120 = &H1F4
  loc_10C85C5: LateIdCallSt
  loc_10C85DD: Set var_94 = Me.Txt
  loc_10C85E3: Call 0.Method_Proc_67_50_10C86E80 (CInt(&H11), var_98, var_8A, 5, var_90, var_120, var_E0)
  loc_10C85F3: Set var_9C = Me.Txt
  loc_10C85F9: Call 0.Method_Proc_67_50_10C86E80 (CInt(&H12), var_A0, var_90, var_120, var_E0)
  loc_10C862A: var_F0 = (5 + DateDiff("d", CVar(var_98), CVar(var_A0), 1, 1))
  loc_10C8642: For var_154 = var_120 To CByte(var_F0): var_90 = var_154 'Byte
  loc_10C8648:   var_E0 = 0
  loc_10C8656:   var_120 = CVar(CLng(var_8A)) 'Long
  loc_10C8668:   var_B0 = CVar("Day" & CStr(var_8A)) 'String
  loc_10C866F:   LateIdCallSt
  loc_10C8682:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10C868D:   var_120 = CVar(CInt(4)) 'Integer
  loc_10C8694:   LateIdCallSt
  loc_10C86A1:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10C86AC:   var_120 = CVar(CInt(1)) 'Integer
  loc_10C86B3:   LateIdCallSt
  loc_10C86C0:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_10C86CF:   LateIdCallSt
  loc_10C86DA: Next var_154 'Byte
  loc_10C86E2: Set var_90 = Nothing 
  loc_10C86E6: Exit Sub
End Sub

Public Sub Proc_67_51_136A5E0(arg_C, arg_10, arg_14) '136A5E0
  'Data Table: 4EB7B0
  Dim unk_4EB7BD As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_DC As Field20
  Dim var_A0 As Double
  Dim var_AA As Integer
  Dim var_D0 As Variant
  Dim var_118 As Variant
  Dim var_AC As Integer
  Dim var_AE As Integer
  Dim var_A8 As Double
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_108 As Variant
  Dim var_90 As Long
  Dim var_150 As Variant
  Dim var_E0 As TextBox
  Dim Proc_67_51_136A5E02 As Variant
  Dim var_E4 As Fields15
  Dim var_E8 As Field20
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  loc_1369DA8: If (arg_14 = "RoomType") Then
  loc_1369DAE:   var_98 = "Select RC.Code,RC.Name,RC.NoRooms,RL.Rate2 From RoomCat RC Left Join RateList RL on RC.Code=RL.RoomCat Where RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By RC.Name"
  loc_1369DC7:   unk_4EB7BD.Execute "Select Sum(NoRooms) As tNoRooms From RoomCat Where InclCount='Y'", var_D0, -1
  loc_1369DD2:   Set var_88 = var_D4
  loc_1369DEF:   If (var_88.RecordCount > 0) Then
  loc_1369E0C:     var_DC = var_88.Fields.Item("tNoRooms")
  loc_1369E1D:     var_A0 = CSng(var_DC.Value)
  loc_1369E2A:   End If
  loc_1369E2A:   GoTo loc_1369E2D
  loc_1369E2D:   ' Referenced from: 1369E2A
  loc_1369E2D: End If
  loc_1369E31: Set var_E0 = Me.FGrid
  loc_1369E3A: If (arg_10 = 1) Then
  loc_1369E4F:   Set var_D4 = Me.Txt
  loc_1369E55:   Call 0.Method_Proc_67_51_136A5E00 (CInt(&H11), var_DC, CInt(3))
  loc_1369E65:   Set var_E4 = Me.Txt
  loc_1369E6B:   Call 0.Method_Proc_67_51_136A5E00 (CInt(&H12), var_E8)
  loc_1369E9C:   var_118 = (3 + DateDiff("d", CVar(var_DC), CVar(var_E8), 1, 1))
  loc_1369EA1:   var_AC = CInt(var_118)
  loc_1369EB8:   var_AE = 1
  loc_1369EBE: Else
  loc_1369EC2:   var_AA = CInt(&H20)
  loc_1369EC9:   var_AC = CInt(3)
  loc_1369ECE:   var_AE = &HFF
  loc_1369ED1: End If
  loc_1369EE0: For var_120 = CLng(var_AA) To CLng(var_AC) Step CLng(var_AE): var_90 = var_120 'Long
  loc_1369EEE:   If (var_90 = CLng(var_AA)) Then
  loc_1369EF4:     var_A8 = arg_C
  loc_1369EFA:   Else
  loc_1369F16:     var_A8 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_A8)))
  loc_1369F20:   End If
  loc_1369F20:   var_140 = 0
  loc_1369F58:   var_118 = CVar(CStr(Format(CDate(var_A8), "DDD"))) 'String
  loc_1369F5F:   LateIdCallSt
  loc_1369F72:   var_140 = 1
  loc_1369FAB:   var_108 = CVar(CStr(Format(var_A8, "dd/MM"))) 'String
  loc_1369FB2:   LateIdCallSt
  loc_1369FC3:   var_140 = 2
  loc_1369FFC:   var_108 = CVar(CStr(Format(var_A8, "dd/MM/yy"))) 'String
  loc_136A003:   LateIdCallSt
  loc_136A017: Next var_120 'Long
  loc_136A02F: Me.FGrid.Rows = 4
  loc_136A03C: var_90 = 3
  loc_136A049: var_130 = CVar(CLng(0)) 'Long
  loc_136A059: var_D0 = CVar(CStr((var_90 - 1))) 'String
  loc_136A060: LateIdCallSt
  loc_136A075: var_130 = CVar(CLng(1)) 'Long
  loc_136A07A: var_150 = "<<Total>>"
  loc_136A083: LateIdCallSt
  loc_136A09A: var_150 = vbNullString
  loc_136A0A3: LateIdCallSt
  loc_136A0BC: Set var_D4 = Me.Txt
  loc_136A0C2: Call 0.Method_Proc_67_51_136A5E00 (CInt(&H11), var_DC, var_94, CLng(3), var_E0, var_150, CVar(CLng(2)))
  loc_136A0D2: Set var_E4 = Me.Txt
  loc_136A0D8: Call 0.Method_Proc_67_51_136A5E00 (CInt(&H12), var_E8, var_90, var_E0, var_150)
  loc_136A109: var_118 = (3 + DateDiff("d", CVar(var_DC), CVar(var_E8), 1, 1))
  loc_136A121: For var_178 = var_90 To CLng(var_118): var_130 = var_178 'Long
  loc_136A136:   var_C0 = &HE69839
  loc_136A147:   var_C0 = &HFFFF
  loc_136A158:   var_C0 = True
  loc_136A177:   var_D0 = CVar(CStr(var_A0)) 'String
  loc_136A17E:   LateIdCallSt
  loc_136A18C: Next var_178 'Long
  loc_136A19A: var_90 = (var_90 + 1)
  loc_136A1B3: unk_4EB7BD.Execute var_98, var_D0, -1
  loc_136A1BE: Set var_88 = var_D4
  loc_136A1DB: If (var_88.RecordCount > 0) Then
  loc_136A1DE:   ' Referenced from: 136A4F3
  loc_136A1ED:   If Not(var_88.EOF) Then
  loc_136A1F0:     var_C0 = vbNullString
  loc_136A1F9:     Proc_67_51_136A5E02 = var_E0.Name
  loc_136A20B:     var_130 = CVar(CLng(0)) 'Long
  loc_136A21B:     var_D0 = CVar(CStr((var_90 - 1))) 'String
  loc_136A222:     LateIdCallSt
  loc_136A26E:     var_E8 = var_88.Fields.Item("Rate2")
  loc_136A29C:     var_1A0 = CVar(Proc_6_45_EADFB8(CStr(var_88.Fields.Item("Name").Value), &HF, CVar(CLng(1)), var_90, var_E0, var_88.Fields.Item("Name").Value)) 'String
  loc_136A2CC:     var_1C0 = CVar(CStr(1 & Format(CVar(CStr(var_E8.Value)), "0.00"))) 'String
  loc_136A2D3:     LateIdCallSt
  loc_136A325:     var_DC = var_88.Fields.Item("Code")
  loc_136A33D:     LateIdCallSt
  loc_136A36A:     Call 0.Method_Proc_67_51_136A5E00 (CInt(&H11), var_DC, var_94, CLng(3), var_E0, CVar(CStr(var_DC.Value)), CVar(CLng(2)))
  loc_136A37A:     Set var_E4 = Me.Txt
  loc_136A380:     Call 0.Method_Proc_67_51_136A5E00 (CInt(&H12), var_E8, var_90, var_E0, var_1C0)
  loc_136A39F:     var_D0 = CVar(var_DC) 'Address
  loc_136A3B1:     var_118 = (3 + DateDiff("d", var_D0, CVar(var_E8), 1, 1))
  loc_136A3C9:     For var_1D8 = var_1A0 To CLng("0.00"): 1 = var_1D8 'Long
  loc_136A3D9:       var_130 = CVar(CLng(2)) 'Long
  loc_136A411:       Proc_6_7_F26918("0.00", CVar(CStr(Txt.DispID_41)), var_94, 2, Txt.DispID_41)
  loc_136A435:       var_190 = CVar("Select Sum(NoofRooms) As tRoomBusy From Booking Where RoomCat='" & CStr(var_D0) & "' And RoomType='RO' And ") 'String
  loc_136A452:       unk_4EB7BD.Execute CStr(var_190 & "0.00" & " Between ArrDate And DepDate"), var_1C0, -1
  loc_136A493:       If (Me.Txt.RecordCount > 0) Then
  loc_136A4A4:         var_140 = vbNullString
  loc_136A4AD:         LateIdCallSt
  loc_136A4B8:       Else
  loc_136A4C6:         var_140 = vbNullString
  loc_136A4CF:         LateIdCallSt
  loc_136A4D7:       End If
  loc_136A4DA:     Next var_1D8 'Long
  loc_136A4E8:     var_90 = (var_90 + 1)
  loc_136A4EE:     var_88.MoveNext
  loc_136A4F3:     GoTo loc_136A1DE
  loc_136A4F6:   End If
  loc_136A509:   Me.FGrid.FixedRows = 4
  loc_136A511: End If
  loc_136A513: Set var_E0 = Nothing 
  loc_136A517: var_C0 = 2
  loc_136A520: var_140 = 0
  loc_136A52D: Set var_D4 = Me.FGrid
  loc_136A533: LateIdCallSt
  loc_136A54C: Me.FGrid.Redraw = True
  loc_136A55D: If (var_90 = 1) Then
  loc_136A573:   Me.FGrid.Rows = 4
  loc_136A58E:   Me.FGrid.FixedRows = 4
  loc_136A596: End If
  loc_136A5A9: Me.FGrid.Row = 4
  loc_136A5C4: Me.FGrid.Col = 3
  loc_136A5D1: Set var_88 = Nothing
  loc_136A5D9: Set var_8C = Nothing
  loc_136A5DC: Exit Sub
End Sub

Public Sub Proc_67_52_E31CE0
  'Data Table: 4EB7B0
  loc_E31CC0: Set var_88 = Me.TopCtrl1
  loc_E31CC6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E31CDB: If ( = "Browse") Then
  loc_E31CDE:   Exit Sub
  loc_E31CDF: End If
  loc_E31CDF: Exit Sub
End Sub

Public Sub Proc_67_53_F749A0(arg_C) 'F749A0
  'Data Table: 4EB7B0
  Dim var_9C As TextBox
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  loc_F74890: If (arg_C = 0) Then
  loc_F7489D:   Set var_98 = Me.TxtGrid
  loc_F748A3:   Call 0.Method_Proc_67_53_F749A00 (arg_C, var_9C)
  loc_F748BB:   If Not(IsNumeric(CVar(var_9C))) Then
  loc_F748CF:     Set var_98 = Me.TxtGrid
  loc_F748D5:     Call 0.Method_Proc_67_53_F749A00 (arg_C, var_9C)
  loc_F748DD:     var_9C.Text = CStr(0)
  loc_F748EC:   End If
  loc_F748F9:   Set var_98 = Me.TxtGrid
  loc_F748FF:   Call 0.Method_Proc_67_53_F749A00 (arg_C, var_9C)
  loc_F7491F:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74937:   var_138 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_F74963:   var_158 = CVar(CStr(Format(CVar(var_9C.Text), "0"))) 'String
  loc_F7496B:   Set var_16C = Me.FGrid
  loc_F74971:   LateIdCallSt
  loc_F74995: End If
  loc_F7499A: Proc_67_53_F749A0 = &HFF
End Sub

Public Sub Proc_67_54_F1362C(arg_C) 'F1362C
  'Data Table: 4EB7B0
  Dim var_98 As TextBox
  loc_F1353E: Set var_8C = Me.Txt
  loc_F13544: Call 0.Method_Proc_67_54_F1362CC (var_8E, var_86)
  loc_F13554: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1356A:   Set var_8C = Me.Txt
  loc_F13570:   Call 0.Method_Proc_67_54_F1362C0 (CInt(var_86), var_98)
  loc_F13578:   var_98.Enabled = arg_C
  loc_F13587: Next var_92 'Byte
  loc_F1359A: Set var_8C = Me.Txt
  loc_F135A0: Call 0.Method_Proc_67_54_F1362C0 (CInt(5), var_98)
  loc_F135A8: var_98.Enabled = False
  loc_F135C1: Set var_8C = Me.Txt
  loc_F135C7: Call 0.Method_Proc_67_54_F1362C0 (CInt(4), var_98)
  loc_F135CF: var_98.Enabled = False
  loc_F135E8: Set var_8C = Me.Txt
  loc_F135EE: Call 0.Method_Proc_67_54_F1362C0 (CInt(6), var_98)
  loc_F135F6: var_98.Enabled = False
  loc_F1360F: Set var_8C = Me.Txt
  loc_F13615: Call 0.Method_Proc_67_54_F1362C0 (CInt(7), var_98)
  loc_F1361D: var_98.Enabled = False
  loc_F13629: Exit Sub
End Sub

Public Sub Proc_67_55_E9F228
  'Data Table: 4EB7B0
  Dim var_98 As TextBox
  loc_E9F1AE: Set var_8C = Me.Txt
  loc_E9F1B4: Call 0.Method_Proc_67_55_E9F228C (var_8E, var_86)
  loc_E9F1C4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9F1DA:   Set var_8C = Me.Txt
  loc_E9F1E0:   Call 0.Method_Proc_67_55_E9F2280 (CInt(var_86), var_98)
  loc_E9F1E8:   var_98.Text = vbNullString
  loc_E9F204:   Set var_8C = Me.Txt
  loc_E9F20A:   Call 0.Method_Proc_67_55_E9F2280 (CInt(var_86), var_98)
  loc_E9F212:   var_98.Tag = vbNullString
  loc_E9F221: Next var_92 'Byte
  loc_E9F227: Exit Sub
End Sub

Public Sub Proc_67_56_EF8168
  'Data Table: 4EB7B0
  loc_EF80A8: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EF80BA:   Me.DGCity.Visible = False
  loc_EF80C2: End If
  loc_EF80DE: If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_EF80F0:   Me.DGTravelAg.Visible = False
  loc_EF80F8: End If
  loc_EF8114: If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_EF8126:   Me.DGBusiness.Visible = False
  loc_EF812E: End If
  loc_EF814A: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_EF815C:   Me.DGMarketSeg.Visible = False
  loc_EF8164: End If
  loc_EF8164: Exit Sub
  loc_EF8165: Exit Sub
End Sub

Public Sub Proc_67_57_144C96C
  'Data Table: 4EB7B0
  Dim Me As Recordset15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_C4 As String
  Dim var_B0 As TextBox
  Dim var_C0 As Variant
  Dim var_C8 As String
  Dim unk_4EB7BD As Connection15
  Dim var_88 As Recordset15
  loc_144BE20: On Error Goto loc_144C963
  loc_144BE3A: If (Me.RecordCount > 0) Then
  loc_144BE43:   Set var_90 = global_60 
  loc_144BE80:   Set var_AC = Me.Txt
  loc_144BE86:   Call 0.Method_Proc_67_57_144C96C0 (CInt(0), var_B0)
  loc_144BE8E:   var_B0.Tag = CStr(var_90.Fields.Item("Code").Value)
  loc_144BEDD:   Set var_AC = Me.Txt
  loc_144BEE3:   Call 0.Method_Proc_67_57_144C96C0 (CInt(0), var_B0)
  loc_144BEEB:   var_B0.Text = CStr(var_90.Fields.Item("Name").Value)
  loc_144BF3A:   Set var_AC = Me.Txt
  loc_144BF40:   Call 0.Method_Proc_67_57_144C96C0 (CInt(1), var_B0)
  loc_144BF48:   var_B0.Text = CStr(var_90.Fields.Item("Add1").Value)
  loc_144BF97:   Set var_AC = Me.Txt
  loc_144BF9D:   Call 0.Method_Proc_67_57_144C96C0 (CInt(2), var_B0)
  loc_144BFA5:   var_B0.Text = CStr(var_90.Fields.Item("Add2").Value)
  loc_144BFF1:   Set var_AC = Me.Txt
  loc_144BFF7:   Call 0.Method_Proc_67_57_144C96C0 (CInt(7), var_B0)
  loc_144BFFF:   var_B0.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("Type")))
  loc_144C049:   Set var_AC = Me.Txt
  loc_144C04F:   Call 0.Method_Proc_67_57_144C96C0 (CInt(9), var_B0)
  loc_144C057:   var_B0.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("ConName")))
  loc_144C0A4:   Set var_AC = Me.Txt
  loc_144C0AA:   Call 0.Method_Proc_67_57_144C96C0 (CInt(8), var_B0)
  loc_144C0B2:   var_B0.Text = CStr(var_90.Fields.Item("PhoneNo").Value)
  loc_144C101:   Set var_AC = Me.Txt
  loc_144C107:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&HA), var_B0)
  loc_144C10F:   var_B0.Text = CStr(var_90.Fields.Item("Comments1").Value)
  loc_144C15E:   Set var_AC = Me.Txt
  loc_144C164:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&HB), var_B0)
  loc_144C16C:   var_B0.Text = CStr(var_90.Fields.Item("Comments2").Value)
  loc_144C1BB:   Set var_AC = Me.Txt
  loc_144C1C1:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&HC), var_B0)
  loc_144C1C9:   var_B0.Text = CStr(var_90.Fields.Item("Comments3").Value)
  loc_144C1F9:   var_A8 = var_90.Fields.Item("City")
  loc_144C20A:   var_C4 = CStr(var_A8.Value)
  loc_144C218:   Set var_AC = Me.Txt
  loc_144C21E:   Call 0.Method_Proc_67_57_144C96C0 (CInt(3), var_B0)
  loc_144C226:   var_B0.Tag = var_C4
  loc_144C25A:   Set var_94 = Me.Txt
  loc_144C260:   Call 0.Method_Proc_67_57_144C96C0 (CInt(3), var_A8, var_C4, "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='")
  loc_144C268:   var_C0 = var_A8.Tag
  loc_144C271:   var_C8 = -1 & var_C4
  loc_144C281:   unk_4EB7BD.Execute var_C8 & "'", var_AC, 
  loc_144C28C:   Set var_88 = var_AC
  loc_144C2B8:   If (var_88.RecordCount > 0) Then
  loc_144C2F1:     Set var_AC = Me.Txt
  loc_144C2F7:     Call 0.Method_Proc_67_57_144C96C0 (CInt(3), var_B0)
  loc_144C2FF:     var_B0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_144C349:     Set var_AC = Me.Txt
  loc_144C34F:     Call 0.Method_Proc_67_57_144C96C0 (CInt(4), var_B0)
  loc_144C357:     var_B0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Zipcode")))
  loc_144C3A1:     Set var_AC = Me.Txt
  loc_144C3A7:     Call 0.Method_Proc_67_57_144C96C0 (CInt(5), var_B0)
  loc_144C3AF:     var_B0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateName")))
  loc_144C3DA:     var_A8 = var_88.Fields.Item("CountryName")
  loc_144C3F9:     Set var_AC = Me.Txt
  loc_144C3FF:     Call 0.Method_Proc_67_57_144C96C0 (CInt(6), var_B0)
  loc_144C407:     var_B0.Text = Proc_6_38_E69628(CVar(var_A8))
  loc_144C41E:   Else
  loc_144C42C:     Set var_94 = Me.Txt
  loc_144C432:     Call 0.Method_Proc_67_57_144C96C0 (CInt(3), var_A8)
  loc_144C43A:     var_A8.Text = vbNullString
  loc_144C454:     Set var_94 = Me.Txt
  loc_144C45A:     Call 0.Method_Proc_67_57_144C96C0 (CInt(4), var_A8)
  loc_144C462:     var_A8.Text = vbNullString
  loc_144C47C:     Set var_94 = Me.Txt
  loc_144C482:     Call 0.Method_Proc_67_57_144C96C0 (CInt(5), var_A8)
  loc_144C48A:     var_A8.Text = vbNullString
  loc_144C4A4:     Set var_94 = Me.Txt
  loc_144C4AA:     Call 0.Method_Proc_67_57_144C96C0 (CInt(6), var_A8)
  loc_144C4B2:     var_A8.Text = vbNullString
  loc_144C4BE:   End If
  loc_144C4D8:   var_A8 = var_90.Fields.Item("TravelAgency")
  loc_144C4E9:   var_C4 = CStr(var_A8.Value)
  loc_144C4F7:   Set var_AC = Me.Txt
  loc_144C4FD:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&HD), var_B0)
  loc_144C505:   var_B0.Tag = var_C4
  loc_144C539:   Set var_94 = Me.Txt
  loc_144C53F:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&HD), var_A8, var_C4, "SELECT SubGroup.Name AS TravelAgName FROM SubGroup WHERE SubCode='")
  loc_144C547:   var_C0 = var_A8.Tag
  loc_144C550:   var_C8 = -1 & var_C4
  loc_144C560:   unk_4EB7BD.Execute var_C8 & "'", var_AC, 
  loc_144C56B:   Set var_88 = var_AC
  loc_144C597:   If (var_88.RecordCount > 0) Then
  loc_144C5B4:     var_A8 = var_88.Fields.Item("TravelAgName")
  loc_144C5D3:     Set var_AC = Me.Txt
  loc_144C5D9:     Call 0.Method_Proc_67_57_144C96C0 (CInt(&HD), var_B0)
  loc_144C5E1:     var_B0.Text = CStr(var_A8.Value)
  loc_144C5FA:   Else
  loc_144C608:     Set var_94 = Me.Txt
  loc_144C60E:     Call 0.Method_Proc_67_57_144C96C0 (CInt(&HD), var_A8)
  loc_144C616:     var_A8.Text = vbNullString
  loc_144C622:   End If
  loc_144C63C:   var_A8 = var_90.Fields.Item("BusSource")
  loc_144C64D:   var_C4 = CStr(var_A8.Value)
  loc_144C65B:   Set var_AC = Me.Txt
  loc_144C661:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&HE), var_B0)
  loc_144C669:   var_B0.Tag = var_C4
  loc_144C69D:   Set var_94 = Me.Txt
  loc_144C6A3:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&HE), var_A8, var_C4, "SELECT BussSource.Name AS BussSourceName FROM BussSource WHERE CODE='")
  loc_144C6AB:   var_C0 = var_A8.Tag
  loc_144C6B4:   var_C8 = -1 & var_C4
  loc_144C6C4:   unk_4EB7BD.Execute var_C8 & "'", var_AC, 
  loc_144C6CF:   Set var_88 = var_AC
  loc_144C6FB:   If (var_88.RecordCount > 0) Then
  loc_144C718:     var_A8 = var_88.Fields.Item("BussSourcename")
  loc_144C737:     Set var_AC = Me.Txt
  loc_144C73D:     Call 0.Method_Proc_67_57_144C96C0 (CInt(&HE), var_B0)
  loc_144C745:     var_B0.Text = CStr(var_A8.Value)
  loc_144C75E:   Else
  loc_144C76C:     Set var_94 = Me.Txt
  loc_144C772:     Call 0.Method_Proc_67_57_144C96C0 (CInt(&HE), var_A8)
  loc_144C77A:     var_A8.Text = vbNullString
  loc_144C786:   End If
  loc_144C7A0:   var_A8 = var_90.Fields.Item("MarketSeg")
  loc_144C7B1:   var_C4 = CStr(var_A8.Value)
  loc_144C7BF:   Set var_AC = Me.Txt
  loc_144C7C5:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&HF), var_B0)
  loc_144C7CD:   var_B0.Tag = var_C4
  loc_144C801:   Set var_94 = Me.Txt
  loc_144C807:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&HF), var_A8, var_C4, "SELECT MarketSeg.Name AS MarketSegName FROM MarketSeg WHERE Code='")
  loc_144C80F:   var_C0 = var_A8.Tag
  loc_144C818:   var_C8 = -1 & var_C4
  loc_144C828:   unk_4EB7BD.Execute var_C8 & "'", var_AC, 
  loc_144C833:   Set var_88 = var_AC
  loc_144C85F:   If (var_88.RecordCount > 0) Then
  loc_144C87C:     var_A8 = var_88.Fields.Item("MarketSegName")
  loc_144C89B:     Set var_AC = Me.Txt
  loc_144C8A1:     Call 0.Method_Proc_67_57_144C96C0 (CInt(&HF), var_B0)
  loc_144C8A9:     var_B0.Text = CStr(var_A8.Value)
  loc_144C8C2:   Else
  loc_144C8D0:     Set var_94 = Me.Txt
  loc_144C8D6:     Call 0.Method_Proc_67_57_144C96C0 (CInt(&HF), var_A8)
  loc_144C8DE:     var_A8.Text = vbNullString
  loc_144C8EA:   End If
  loc_144C923:   Set var_AC = Me.Txt
  loc_144C929:   Call 0.Method_Proc_67_57_144C96C0 (CInt(&H10), var_B0)
  loc_144C931:   var_B0.Text = CStr(var_90.Fields.Item("GroupType").Value)
  loc_144C949:   Set var_90 = Nothing 
  loc_144C950: Else
  loc_144C950:   Call Proc_67_55_E9F228()
  loc_144C955: End If
  loc_144C955: Call Proc_67_56_EF8168()
  loc_144C95F: Set var_88 = Nothing
  loc_144C962: Exit Sub
  loc_144C963: ' Referenced from: 144BE20
  loc_144C963: Proc_6_60_E63754()
  loc_144C968: Exit Sub
End Sub

Public Sub Proc_67_58_143E2AC(arg_C, arg_10) '143E2AC
  'Data Table: 4EB7B0
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_B6 As Integer
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_B8 As Integer
  Dim var_BA As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_140 As String
  Dim unk_4EB7BD As Connection15
  Dim var_138 As String
  Dim var_EC As Variant
  Dim var_124 As Variant
  Dim var_1C0 As Variant
  Dim var_B4 As Double
  Dim var_1D0 As Variant
  Dim var_258 As Variant
  Dim var_E4 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_1A0 As Variant
  Dim var_238 As Variant
  Dim var_278 As Variant
  Dim var_190 As Variant
  Dim var_C4 As Recordset15
  Dim var_F0 As Variant
  loc_143D7E3: Me.FGrid1.FixedCols = 0
  loc_143D7FE: Me.FGrid1.FixedRows = 1
  loc_143D819: Me.FGrid1.RowHeightMin = &H1F4
  loc_143D830: Me.FGrid1.Redraw = False
  loc_143D83E: If (arg_10 = 1) Then
  loc_143D845:   var_B6 = CInt(5)
  loc_143D853:   Set var_E8 = Me.Txt
  loc_143D859:   Call 0.Method_Proc_67_58_143E2AC0 (CInt(&H11), var_EC)
  loc_143D869:   Set var_F0 = Me.Txt
  loc_143D86F:   Call 0.Method_Proc_67_58_143E2AC0 (CInt(&H12), var_F4)
  loc_143D8A0:   var_134 = (5 + DateDiff("d", CVar(var_EC), CVar(var_F4), 1, 1))
  loc_143D8A5:   var_B8 = CInt(var_134)
  loc_143D8D0:   Set var_E8 = Me.Txt
  loc_143D8D6:   Call 0.Method_Proc_67_58_143E2AC0 (CInt(&H11), var_EC, arg_C)
  loc_143D8E6:   Set var_F0 = Me.Txt
  loc_143D8EC:   Call 0.Method_Proc_67_58_143E2AC0 (CInt(&H12), var_F4, 1)
  loc_143D90C:   var_104 = CVar(var_EC) 'Address
  loc_143D91E:   var_134 = (CDate(arg_C) + DateDiff("d", var_104, CVar(var_F4), 1, 1))
  loc_143D924:   var_94 = CDate(var_134)
  loc_143D93C: Else
  loc_143D940:   var_B6 = CInt(&H22)
  loc_143D947:   var_B8 = CInt(5)
  loc_143D94C:   var_BA = &HFF
  loc_143D957:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_143D962:   var_94 = CDate((arg_C + CDbl(1)))
  loc_143D965: End If
  loc_143D983: Call Proc_67_59_FF06AC(CStr(arg_C), var_138, "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.ShortName as Category,RL.Rate2 as Rate from (RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat)Left Join RateList RL on RC.Code=RL.RoomCat Where R.Type='RO' And R.Type='RO' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} APPEND ({SELECT r.Code as RoomNo, ", var_104, -1, var_E8, var_94)
  loc_143D993: var_140 = arg_C & var_138 & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code)Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOcc RO on RO.Docid=GF.DocId Where R.Type='RO' or r.Type is Null And (RO.Type<>'C') Group By r.Type,B.RoomCat,r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_143D99C: unk_4EB7BD.Execute var_140, var_BA, var_B8
  loc_143D9BF: CVarUnk
  loc_143D9C4: VerifyVarObj
  loc_143D9CA: Set var_E8 = Me.FGrid1
  loc_143D9D0: LateIdStAd
  loc_143DA05: For var_148 = 1 To (CLng(Me.FGrid1.Rows) - 1): var_A0 = var_148 'Long
  loc_143DA24:   Call 0.Method_Proc_67_58_143E2AC0 (CInt(&H11), var_EC, var_A4, 5, 1, Me.Txt)
  loc_143DA34:   Set var_F0 = Me.Txt
  loc_143DA3A:   Call 0.Method_Proc_67_58_143E2AC0 (CInt(&H12), var_F4, Me.Txt, var_B6)
  loc_143DA6A:   var_134 = (5 + DateDiff("d", CVar(var_EC), CVar(var_F4), 1, 1))
  loc_143DA82:   For var_150 = var_B8 To CLng(var_134): var_94 = var_150 'Long
  loc_143DACC:     If (InStr(var_A4, CStr(Me.FGrid1.TextMatrix)), "*", 0) <> 0) Then
  loc_143DAE0:       Me.FGrid1.Row = var_A0
  loc_143DAF9:       Me.FGrid1.Col = var_A4
  loc_143DB14:       Me.FGrid1.CellBackColor = &HFF00
  loc_143DB2F:       Me.FGrid1.CellForeColor = 0
  loc_143DB47:       Me.FGrid1.CellFontName = "Arial Narrow"
  loc_143DB61:       Me.FGrid1.CellFontSize = CVar(CDbl(8))
  loc_143DBC8:       var_134 = CVar((Len(CStr(Me.FGrid1.TextMatrix))) - 1)) 'Long
  loc_143DBE4:       var_1C0 = CVar(CStr(Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, var_134))) 'String
  loc_143DBEC:       Set var_F0 = Me.FGrid1
  loc_143DBF2:       LateIdCallSt
  loc_143DC18:     Else
  loc_143DC4C:       If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_143DC60:         Me.FGrid1.Row = var_A0
  loc_143DC79:         Me.FGrid1.Col = var_A4
  loc_143DC94:         Me.FGrid1.CellBackColor = &HE69839
  loc_143DCAF:         Me.FGrid1.CellForeColor = &HFFFFFF
  loc_143DCC7:         Me.FGrid1.CellFontName = "Arial Narrow"
  loc_143DCE1:         Me.FGrid1.CellFontSize = CVar(CDbl(8))
  loc_143DCE9:       End If
  loc_143DCE9:     End If
  loc_143DCEC:   Next var_150 'Long
  loc_143DCF4: Next var_148 'Long
  loc_143DD08: For var_1D8 = CLng(var_B6) To CLng(var_B8) Step CLng(var_BA): var_A0 = var_1D8 'Long
  loc_143DD16:   If (var_A0 = CLng(var_B6)) Then
  loc_143DD1C:     var_B4 = arg_C
  loc_143DD22:   Else
  loc_143DD3E:     var_B4 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B4)))
  loc_143DD48:   End If
  loc_143DD48:   var_1D0 = 1
  loc_143DD5A:   var_258 = CVar((var_A0 - 4)) 'Long
  loc_143DD8B:   var_134 = (Format(CDate(var_B4), "DDD") + vbCr)
  loc_143DDAF:   var_1C0 = Format(var_B4, "dd/MM")
  loc_143DDB7:   var_1E8 = (1 + var_1C0)
  loc_143DDCB:   var_208 = (var_1E8 + Space(5))
  loc_143DDEF:   var_228 = Format(var_B4, "dd/MM/yy")
  loc_143DDF7:   var_238 = (1 + var_228)
  loc_143DDFC:   var_278 = CVar(CStr(var_238)) 'String
  loc_143DE04:   Set var_E8 = Me.FGrid1
  loc_143DE0A:   LateIdCallSt
  loc_143DE3B:   var_D4 = CVar((var_A0 - 4)) 'Long
  loc_143DE40:   var_160 = 1
  loc_143DE49:   var_180 = &H1F4
  loc_143DE56:   Set var_E8 = Me.FGrid1
  loc_143DE5C:   LateIdCallSt
  loc_143DE6A: Next var_1D8 'Long
  loc_143DE9C: var_1A0 = arg_C
  loc_143DEA4: Proc_6_7_F26918(var_1C0)
  loc_143DEB4: Proc_6_7_F26918(var_208, var_94)
  loc_143DED7: var_190 = "Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") & ",FromDate,Todate) as Days,Reasons From RoomBlockOut Where Type='O' And FromDate Between " 
  loc_143DEFC: unk_4EB7BD.Execute CStr(var_190 & var_1C0 & " And " & var_208), var_228, -1
  loc_143DF07: Set var_C4 = var_E8
  loc_143DF3F: If (var_C4.RecordCount > 0) Then
  loc_143DF42:   ' Referenced from: 143E1B4
  loc_143DF51:   If Not(var_C4.EOF) Then
  loc_143DF7B:     For var_298 = 1 To (CLng(Me.FGrid1.Rows) - 1): var_A0 = var_298 'Long
  loc_143DF88:       var_E4 = 0
  loc_143DFE8:       If (CVar(CStr(Me.FGrid1.TextMatrix))) = var_C4.Fields.Item(0).Value) Then
  loc_143E029:         For var_2A0 = 0 To CLng(var_C4.Fields.Item(2).Value): var_A4 = var_2A0 'Long
  loc_143E07E:           var_124 = (DateDiff("d", arg_C, var_C4.Fields.Item(1).Value, 1, 1) + 1)
  loc_143E087:           var_134 = (CVar(CStr(Me.FGrid1.TextMatrix))) + 4)
  loc_143E092:           var_190 = ("Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") + CVar(var_A4))
  loc_143E0A7:           Me.FGrid1.Col = CVar(CLng(var_190))
  loc_143E0D3:           Me.FGrid1.Row = var_A0
  loc_143E0EE:           Me.FGrid1.CellBackColor = &H40C0
  loc_143E109:           Me.FGrid1.CellForeColor = &HFFFF
  loc_143E121:           Me.FGrid1.CellFontName = "Webdings"
  loc_143E158:           var_114 = ("@  " + var_C4.Fields.Item(3).Value)
  loc_143E16B:           Me.FGrid1.Text = CVar(CStr(DateDiff("d", arg_C, var_C4.Fields.Item(1).Value, 1, 1)))
  loc_143E194:           Me.FGrid1.CellFontSize = CVar(CDbl(&H14))
  loc_143E19F:         Next var_2A0 'Long
  loc_143E1A4:       End If
  loc_143E1A7:     Next var_298 'Long
  loc_143E1AF:     var_C4.MoveNext
  loc_143E1B4:     GoTo loc_143DF42
  loc_143E1B7:   End If
  loc_143E1B7: End If
  loc_143E1B7: var_D4 = 0
  loc_143E1C0: var_160 = &H1F4
  loc_143E1CD: Set var_E8 = Me.FGrid1
  loc_143E1D3: LateIdCallSt
  loc_143E1DE: var_D4 = 0
  loc_143E1E7: var_160 = 1
  loc_143E1F0: var_180 = 0
  loc_143E1FD: Set var_E8 = Me.FGrid1
  loc_143E203: LateIdCallSt
  loc_143E221: Me.FGrid1.FixedCols = 4
  loc_143E23C: Me.FGrid1.Col = 5
  loc_143E257: Me.FGrid1.Row = 1
  loc_143E25F: var_D4 = 0
  loc_143E268: var_160 = False
  loc_143E271: Set var_E8 = Me.FGrid1
  loc_143E277: LateIdCallSt
  loc_143E290: Me.FGrid1.Redraw = True
  loc_143E29D: Set var_98 = Nothing
  loc_143E2A5: Set var_9C = Nothing
  loc_143E2A8: Exit Sub
End Sub

Public Sub Proc_67_59_FF06AC(arg_C) 'FF06AC
  'Data Table: 4EB7B0
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_104 As String
  Dim var_134 As Date
  Dim var_174 As Variant
  Dim var_194 As Date
  Dim var_1C4 As String
  Dim var_1F4 As Date
  Dim var_21C As String
  loc_FF0526: Set var_94 = Me.Txt
  loc_FF052C: Call 0.Method_Proc_67_59_FF06AC0 (CInt(&H11), var_98)
  loc_FF053C: Set var_9C = Me.Txt
  loc_FF0542: Call 0.Method_Proc_67_59_FF06AC0 (CInt(&H12), var_A0)
  loc_FF0554: var_C0 = CVar(var_A0) 'Address
  loc_FF057E: For var_D4 = 0 To CInt(DateDiff("d", CVar(var_98), var_C0, 1, 1)): var_8A = var_D4 'Integer
  loc_FF0599:   var_B0 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_FF05A0:   Proc_6_7_F26918(var_C0, CVar(var_98))
  loc_FF05AC:   var_104 = " and B.ArrDate+B.NoDays-1>="
  loc_FF05C0:   var_134 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_FF05C7:   Proc_6_7_F26918(var_144, var_134)
  loc_FF05D8:   var_174 = CVar(var_88 & "Max(Case When RO.ChkInDate is null Then Case When B.ArrDate<=") & var_C0 & var_104 & var_144 & " Then B.GuestName Else '' End Else Case When Ro.ChkInDate<=" 
  loc_FF05E7:   var_194 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_FF05EE:   Proc_6_7_F26918(var_1A4, var_194)
  loc_FF05FA:   var_1C4 = " and RO.DEPDATE-1>="
  loc_FF060E:   var_1F4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_FF0615:   Proc_6_7_F26918(var_204, var_1F4)
  loc_FF062D:   var_21C = " Then case RO.tYPE When 'O' then ''Else B.GuestName +'#*' end Else '' End End ) as Day" & CStr(var_8A)
  loc_FF063C:   var_88 = CStr(var_174 & var_1A4 & var_1C4 & var_204 & CVar(var_21C & ","))
  loc_FF0670: Next var_D4 'Integer
  loc_FF067F: var_B0 = CVar((Len(var_88) - 1)) 'Long
  loc_FF069C: var_88 = CStr(Mid(var_88, 1, CVar(var_98)))
  loc_FF06A6: Proc_67_59_FF06AC = 
End Sub
