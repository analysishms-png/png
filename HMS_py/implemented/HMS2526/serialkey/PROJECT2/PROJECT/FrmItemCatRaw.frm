VERSION 5.00
Begin VB.Form FrmItemCatRaw
  Caption = "Category/Charge Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmItemCatRaw.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 9300
  ClientHeight = 6345
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9300
    Height = 450
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2820
    Top = 2955
    Width = 1935
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin PictureBox Picture4
    Picture = "FrmItemCatRaw.frx":442
    Left = 9870
    Top = 8595
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 28
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture2
    Picture = "FrmItemCatRaw.frx":790
    Left = 9870
    Top = 8340
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 27
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "FrmItemCatRaw.frx":ADE
    Left = 9870
    Top = 8100
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 26
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture3
    Picture = "FrmItemCatRaw.frx":E2C
    Left = 9870
    Top = 7260
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 25
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGSaleAc
    Left = 7710
    Top = 4995
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4755
    Top = 2010
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin DataGrid DGSaleTax
    Left = 7560
    Top = 4470
    Width = 4230
    Height = 1650
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 10170
    Top = 795
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 21
    End
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4755
    Top = 2010
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &HC00000&
    Left = 2820
    Top = 2010
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2820
    Top = 1380
    Width = 4300
    Height = 285
    TabIndex = 0
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2820
    Top = 2325
    Width = 4300
    Height = 285
    TabIndex = 6
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2820
    Top = 2640
    Width = 4300
    Height = 285
    TabIndex = 7
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
    Left = 2490
    Top = 8415
    Width = 1290
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 2
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2820
    Top = 1695
    Width = 4300
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin MSFlexGrid FGPoint
    Left = 7230
    Top = 1410
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGHelp
    Left = 8055
    Top = 3510
    Width = 4230
    Height = 2655
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin DataGrid DGRest
    Left = 8460
    Top = 2835
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4380
    Top = 5175
    Width = 2790
    Height = 285
    TabIndex = 32
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
    Left = 1005
    Top = 5175
    Width = 2880
    Height = 255
    TabIndex = 31
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 30
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
    Caption = "Type"
    Index = 6
    ForeColor = &HC00000&
    Left = 1170
    Top = 2955
    Width = 465
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
  Begin Label Label2
    Caption = "Type"
    ForeColor = &HC00000&
    Left = 4215
    Top = 2010
    Width = 465
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
  Begin Label LblCatType
    Caption = "Type"
    ForeColor = &HC00000&
    Left = 4215
    Top = 2010
    Width = 420
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblName
    Caption = "Category/Charge"
    Index = 5
    ForeColor = &HC00000&
    Left = 1170
    Top = 2010
    Width = 1605
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
  End
  Begin Label LblName
    Caption = "Department"
    Index = 1
    ForeColor = &HC00000&
    Left = 1170
    Top = 1380
    Width = 1110
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &H0&
    Left = 3870
    Top = 8430
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
  Begin Label LblName
    Caption = "Post in Account"
    Index = 4
    ForeColor = &HC00000&
    Left = 1170
    Top = 2325
    Width = 1470
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
  Begin Label LblName
    Caption = "Tax Structure"
    Index = 3
    ForeColor = &HC00000&
    Left = 1170
    Top = 2640
    Width = 1290
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
  Begin Label LblName
    Caption = "Round Off"
    Index = 2
    ForeColor = &H0&
    Left = 765
    Top = 8415
    Width = 855
    Height = 240
    Visible = 0   'False
    TabIndex = 12
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
    Index = 0
    ForeColor = &HC00000&
    Left = 1170
    Top = 1695
    Width = 555
    Height = 240
    TabIndex = 9
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

Attribute VB_Name = "FrmItemCatRaw"


Private Sub Form_Load() '1308770
  'Data Table: 4DBD68
  Dim var_88 As Variant
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim unk_4DBD80 As Connection15
  Dim var_D8 As Recordset15
  Dim var_10C As String
  Dim var_110 As String
  loc_130805C: On Error Goto loc_1308729
  loc_130806E: Me.LblUser.Left = CDbl(13500)
  loc_1308085: Me.LblUser.Top = CDbl(7800)
  loc_130809C: Me.LblLDt.Top = CDbl(8160)
  loc_13080B3: Me.LblLDt.Left = CDbl(13500)
  loc_13080C2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13080D5: Set var_88 = Me.Txt
  loc_13080DB: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_13080FA: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1308116: Set var_B4 = Me.Txt
  loc_130811C: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_1308137: Set var_88 = Me.Txt
  loc_130813D: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_1308155: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1308164: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1308180: Set var_88 = Me.TopCtrl1
  loc_1308186: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1308194: Call 0.Method_arg_50 (var_C4)
  loc_130819C: var_D4 = CVar(var_C4) 'String
  loc_13081A4: Set var_88 = Me.TopCtrl1
  loc_13081AA: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_13081C3: Set var_88 = Me.Txt
  loc_13081C9: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_13081E8: Me.DGRest.Left = CVar(var_8C.Left)
  loc_1308204: Set var_B4 = Me.Txt
  loc_130820A: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_1308225: Set var_88 = Me.Txt
  loc_130822B: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1308243: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1308252: Me.DGRest.Top = CVar(var_8C.Left)
  loc_1308272: Set var_88 = Me.Txt
  loc_1308278: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1308297: Me.DGSaleAc.Left = CVar(var_8C.Left)
  loc_13082B3: Set var_B4 = Me.Txt
  loc_13082B9: Call 0.Method_Form_Load0 (CInt(3), var_B8)
  loc_13082D4: Set var_88 = Me.Txt
  loc_13082DA: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_13082F2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1308301: Me.DGSaleAc.Top = CVar(var_8C.Left)
  loc_1308321: Set var_88 = Me.Txt
  loc_1308327: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1308346: Me.DGSaleTax.Left = CVar(var_8C.Left)
  loc_1308362: Set var_B4 = Me.Txt
  loc_1308368: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_1308383: Set var_88 = Me.Txt
  loc_1308389: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_13083A1: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13083B0: Me.DGSaleTax.Top = CVar(var_8C.Left)
  loc_13083DF: Proc_6_17_EAAE40(var_D4, MemVar_1F95078, "Select ShowAllAcInPurcahseCategoryYN From Enviro WHERE LOGSITE_CODE=")
  loc_13083F5: unk_4DBD80.Execute CStr(var_108 & var_D4), -1, var_88
  loc_1308400: Set var_D8 = var_88
  loc_1308426: If (var_D8.RecordCount > 0) Then
  loc_1308438:   var_88 = var_D8.Fields
  loc_1308448:   var_D4 = CVar(var_88.Item("ShowAllAcInPurcahseCategoryYN")) 'Address
  loc_1308462:   If (Proc_6_38_E69628(var_D4) = "Yes") Then
  loc_1308480:     var_10C = "Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','250','260','270','280','040') Order by Name"
  loc_1308489:     unk_4DBD80.Execute var_10C, var_D4, -1
  loc_130849A:     Set global_60 = var_88
  loc_13084B2:   Else
  loc_13084CD:     var_10C = "Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','280','040') Order by Name"
  loc_13084D6:     unk_4DBD80.Execute var_10C, var_D4, -1
  loc_13084E7:     Set global_60 = var_88
  loc_13084FC:   End If
  loc_1308505:   CVarUnk
  loc_130850A:   VerifyVarObj
  loc_1308510:   Set var_88 = Me.DGSaleAc
  loc_1308516:   LateIdStAd
  loc_1308524: End If
  loc_1308546: var_110 = "SELECT Code,Name FROM ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RestCode='" & MemVar_1F95078
  loc_1308556: unk_4DBD80.Execute var_110 & "PURC' ORDER BY Name", var_D4, -1
  loc_1308589: CVarUnk
  loc_130858E: VerifyVarObj
  loc_1308594: Set var_88 = Me.DGHelp
  loc_130859A: LateIdStAd
  loc_13085BC: var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,ShortName,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,IC.TaxStruType,IC.U_Name As IUName,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name As RestName,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code where (IC.LOGSITE_CODE='" & MemVar_1F95078
  loc_13085CC: unk_4DBD80.Execute var_C4 & "' or IC.LOGSITE_CODE='HO') and resttype='Store' ORDER BY D.Name,IC.Name", var_D4, -1
  loc_130860D: var_10C = "Select distinct Code As Code,Name From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_1308616: unk_4DBD80.Execute var_10C, var_D4, -1
  loc_1308645: CVarUnk
  loc_130864A: VerifyVarObj
  loc_1308656: LateIdStAd
  loc_130867F: var_10C = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestType='Store' Order by Name"
  loc_1308688: unk_4DBD80.Execute var_10C, var_D4, -1
  loc_13086B7: CVarUnk
  loc_13086BC: VerifyVarObj
  loc_13086C2: Set var_88 = Me.DGRest
  loc_13086C8: LateIdStAd
  loc_13086E2: Set var_88 = Me
  loc_13086EB: var_C4 = "INI"
  loc_13086F9: Call Proc_86_34_E78544(Proc_5_1_100EC1C(var_C4, var_88, var_88, var_88, Me.DGSaleTax, var_88, var_88, var_88), var_88, var_88, var_88, var_88)
  loc_130870D: Call 0.Method_arg_160 (var_88, var_88, var_88)
  loc_130871B: Call 0.Method_arg_164 (var_88, global_60)
  loc_1308723: Call Proc_86_36_13D4684(var_88)
  loc_1308728: Exit Sub
  loc_1308729: ' Referenced from: 130805C
  loc_1308731: Set var_88 = Err()
  loc_1308737: Call 0.Method_arg_2C (var_C4)
  loc_1308758: MsgBox(CVar(var_C4), &H40, "Information", var_108, var_128)
  loc_130876B: Exit Sub
  loc_130876C: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8D48
  'Data Table: 4DBD68
  Dim var_8C As Label
  loc_ED8CA6: Call 0.Method_arg_50 (var_88)
  loc_ED8CB8: Me.LblFormCaption.Caption = var_88
  loc_ED8CD1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED8CDD: Set var_A0 = Me.TopCtrl1
  loc_ED8CE3: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8CF0: Set var_8C = Me.TopCtrl1
  loc_ED8CF6: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8D10: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED8D2B: Call 0.Method_arg_100 (var_B8)
  loc_ED8D3D: Me.LblFormCaption.Width = var_B8
  loc_ED8D45: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C518
  'Data Table: 4DBD68
  loc_E6C4C7: Set global_52 = Nothing
  loc_E6C4D9: Set global_60 = Nothing
  loc_E6C4EB: Set global_64 = Nothing
  loc_E6C4FD: Set global_68 = Nothing
  loc_E6C50F: Set global_56 = Nothing
  loc_E6C516: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8C060
  'Data Table: 4DBD68
  loc_E8BFFC: On Error Goto loc_E8C01C
  loc_E8C013: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8C01B: Exit Sub
  loc_E8C01C: ' Referenced from: E8BFFC
  loc_E8C024: Set var_88 = Err()
  loc_E8C02A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8C04B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8C05E: Exit Sub
  loc_E8C05F: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F41534
  'Data Table: 4DBD68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4142B: Me.DGHelp.Visible = False
  loc_F4144A: If (Me.RecordCount > 0) Then
  loc_F41489:   Set var_B4 = Me.Txt
  loc_F4148F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41497:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F414CA:   var_B0 = Me.Fields.Item("Code")
  loc_F414E9:   Set var_B4 = Me.Txt
  loc_F414EF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F414F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4150D: End If
  loc_F41518: Set var_A8 = Me.Txt
  loc_F4151E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F41526: var_B0.SetFocus
  loc_F41532: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E7019C
  'Data Table: 4DBD68
  loc_E7015A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E70171: Set var_8C = Me.FGPoint
  loc_E7018D: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E7019B: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_9 'F40354
  'Data Table: 4DBD68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4024B: Me.DGSaleTax.Visible = False
  loc_F4026A: If (Me.RecordCount > 0) Then
  loc_F402A9:   Set var_B4 = Me.Txt
  loc_F402AF:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F402B7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F402EA:   var_B0 = Me.Fields.Item("Code")
  loc_F40309:   Set var_B4 = Me.Txt
  loc_F4030F:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F40317:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4032D: End If
  loc_F40338: Set var_A8 = Me.Txt
  loc_F4033E: Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4))
  loc_F40346: var_B0.SetFocus
  loc_F40352: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_1F 'E71794
  'Data Table: 4DBD68
  loc_E71752: Proc_6_153_E91D24(Me.DGSaleTax, arg_14)
  loc_E71769: Set var_8C = Me.FGPoint
  loc_E71785: Proc_6_138_106E830(Me.DGSaleTax, global_64, CInt(4))
  loc_E71793: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_9 'F40094
  'Data Table: 4DBD68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3FF8B: Me.DGSaleAc.Visible = False
  loc_F3FFAA: If (Me.RecordCount > 0) Then
  loc_F3FFE9:   Set var_B4 = Me.Txt
  loc_F3FFEF:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3FFF7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4002A:   var_B0 = Me.Fields.Item("Code")
  loc_F40049:   Set var_B4 = Me.Txt
  loc_F4004F:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F40057:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4006D: End If
  loc_F40078: Set var_A8 = Me.Txt
  loc_F4007E: Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3))
  loc_F40086: var_B0.SetFocus
  loc_F40092: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_1F 'E71544
  'Data Table: 4DBD68
  loc_E71502: Proc_6_153_E91D24(Me.DGSaleAc, arg_14)
  loc_E71519: Set var_8C = Me.FGPoint
  loc_E71535: Proc_6_138_106E830(Me.DGSaleAc, global_60, CInt(3))
  loc_E71543: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAC044
  'Data Table: 4DBD68
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EABFB8: On Error Goto loc_EAC03E
  loc_EABFDE: Call Proc_86_34_E78544(Proc_5_1_100EC1C("ADD", Me))
  loc_EABFE9: Call Proc_86_35_EE258C(global_52)
  loc_EABFF9: Set var_8C = Me.Txt
  loc_EABFFF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAC007: var_94.SetFocus
  loc_EAC020: Me.LblUser.Caption = vbNullString
  loc_EAC035: Me.LblLDt.Caption = vbNullString
  loc_EAC03D: Exit Sub
  loc_EAC03E: ' Referenced from: EABFB8
  loc_EAC03E: Proc_6_60_E63754(var_94)
  loc_EAC043: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC1B3C
  'Data Table: 4DBD68
  loc_EC1AA4: On Error Goto loc_EC1B34
  loc_EC1ADE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC1AED:   Set var_110 = Me
  loc_EC1B04:   Call Proc_86_34_E78544(Proc_5_1_100EC1C("INI", var_110))
  loc_EC1B0F:   Call Proc_86_38_F6D2B4(global_52)
  loc_EC1B14:   Call Proc_86_36_13D4684()
  loc_EC1B1C: Else
  loc_EC1B22:   Call 0.Method_arg_1E8 (var_110)
  loc_EC1B2A:   Call var_110.SetFocus
  loc_EC1B33: End If
  loc_EC1B33: Exit Sub
  loc_EC1B34: ' Referenced from: EC1AA4
  loc_EC1B34: Proc_6_60_E63754()
  loc_EC1B39: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '128C820
  'Data Table: 4DBD68
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_A4 As String
  Dim unk_4DBD80 As Connection15
  Dim var_98 As Recordset15
  Dim var_118 As Variant
  Dim var_C8 As Variant
  loc_128C270: On Error Goto loc_128C7D0
  loc_128C281: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_128C284:   Exit Sub
  loc_128C285: End If
  loc_128C293: Set var_9C = Me.Txt
  loc_128C299: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_A0)
  loc_128C2B8: If (var_A0.Text = "Category") Then
  loc_128C2D0:   var_9C = Me.Fields
  loc_128C2E0:   var_C8 = var_9C.Item("Code").Value
  loc_128C2ED:   var_D4 = "Item Master"
  loc_128C335:   If (Proc_6_108_101061C(MemVar_1F95044, "ItemMast", "ItemCatCode", CStr(var_C8)) = 0) Then
  loc_128C338:     Exit Sub
  loc_128C339:   End If
  loc_128C339: End If
  loc_128C360: unk_4DBD80.Execute "Select Code From RevMast Where Name='" & global_72 & "'", var_C8, -1
  loc_128C36B: Set var_98 = var_9C
  loc_128C381: var_D0 = var_98.RecordCount
  loc_128C38F: If (var_D0 > 0) Then
  loc_128C3D7:   var_118 = "Select Count(*) from PayCharge Where PayType='" & var_98.Fields.Item(0).Value & "'" 
  loc_128C3E5:   unk_4DBD80.Execute CStr(var_118), var_138, -1
  loc_128C446:   If (var_13C.Fields.Item(0).Value > 0) Then
  loc_128C46A:     MsgBox("Related Record Exist, Entry Can't Be Deleted", &H40, "Validation Check", var_118, var_138)
  loc_128C47A:     Exit Sub
  loc_128C47B:   End If
  loc_128C47B: End If
  loc_128C4B2: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_128C4BE:   unk_4DBD80.BeginTrans var_D0
  loc_128C4D4:   var_94 = Me.Bookmark 'Variant
  loc_128C520:   var_118 = "Delete From ItemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_128C52E:   unk_4DBD80.Execute CStr(var_118), var_138, -1
  loc_128C56F:   var_C8 = Me.Fields.Item("Code").Value
  loc_128C579:   var_168 = 0
  loc_128C58C:   var_160 = 0
  loc_128C597:   var_15C = 0
  loc_128C5AA:   var_154 = 0
  loc_128C5B5:   var_150 = 0
  loc_128C5C8:   var_148 = 0
  loc_128C611:   Proc_154_5_10E3BD4(MemVar_1F95044, "ItemCatMast", "Code", &HC8, CStr(var_C8), 0, 0, 0)
  loc_128C660:   unk_4DBD80.Execute "Delete From RevMast Where Name='" & global_72 & "'", var_C8, -1
  loc_128C677:   var_160 = 0
  loc_128C68A:   var_15C = 0
  loc_128C695:   var_154 = 0
  loc_128C6A8:   var_150 = 0
  loc_128C6B3:   var_148 = 0
  loc_128C6C6:   var_144 = 0
  loc_128C704:   var_A4 = "RevMast"
  loc_128C70D:   Proc_154_5_10E3BD4(MemVar_1F95044, var_A4, "Name", &HC8, global_72, 0, 0, 0)
  loc_128C72F:   unk_4DBD80.CommitTrans
  loc_128C73F:   Me.Requery -1
  loc_128C74F:   Me.Requery -1
  loc_128C76F:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_128C77C:     Me.Bookmark = var_94
  loc_128C784:   Else
  loc_128C798:     If (Me.EOF = 0) Then
  loc_128C7A1:       Me.MoveLast
  loc_128C7A6:     End If
  loc_128C7A6:   End If
  loc_128C7A6:   Call Proc_86_36_13D4684(var_144, 0, var_148, var_150)
  loc_128C7C7:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_128C7CF: End If
  loc_128C7CF: Exit Sub
  loc_128C7D0: ' Referenced from: 128C270
  loc_128C7D6: unk_4DBD80.RollbackTrans
  loc_128C7E3: Set var_9C = Err()
  loc_128C7E9: Call 0.Method_arg_2C (var_A4, 0, var_154)
  loc_128C80A: MsgBox(CVar(var_A4), &H30, " Deletion Error ", var_118, var_138)
  loc_128C81D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F3194C
  'Data Table: 4DBD68
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F31830: On Error Goto loc_F31946
  loc_F31841: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F31844:   Exit Sub
  loc_F31845: End If
  loc_F31868: Call Proc_86_34_E78544(Proc_5_1_100EC1C("EDIT", Me))
  loc_F31881: Set var_8C = Me.Txt
  loc_F31887: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F3189A: global_80 = var_94.Text
  loc_F318B5: Set var_8C = Me.Txt
  loc_F318BB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F318C3: var_94.Enabled = False
  loc_F318DC: Set var_8C = Me.Txt
  loc_F318E2: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F318EA: var_94.Enabled = False
  loc_F31901: Set var_8C = Me.Txt
  loc_F31907: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F3190F: var_94.SetFocus
  loc_F31928: Me.LblUser.Caption = vbNullString
  loc_F3193D: Me.LblLDt.Caption = vbNullString
  loc_F31945: Exit Sub
  loc_F31946: ' Referenced from: F31830
  loc_F31946: Proc_6_60_E63754(global_52)
  loc_F3194B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A100
  'Data Table: 4DBD68
  loc_E1A0F5: Me.Global.Unload Me
  loc_E1A0FD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F27738
  'Data Table: 4DBD68
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F27638: On Error Goto loc_F276D0
  loc_F27644: var_88 = Me.RecordCount
  loc_F27652: If (var_88 <= 0) Then
  loc_F2765B:   var_B8 = "Information"
  loc_F27676:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F27686:   Exit Sub
  loc_F27687: End If
  loc_F2768E: var_10C = "SELECT distinct IC.Code AS SearchCode,IC.Name AS ItemCategory,IC.Flag,IC.CatType As Type,VS.Name As PurchaseAc,TaxStru.Name As TaxStructure,IC.TaxStruType As Type FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code Where (IC.LOGSITE_CODE='" & MemVar_1F95078
  loc_F27695: MemVar_1F950E4 = var_10C & "' or IC.LOGSITE_CODE='HO') AND D.RestType='Store' ORDER BY IC.Name"
  loc_F276A2: MemVar_1F95120 = Me
  loc_F276A9: var_10C = "3000,1000,1400,2780,1800,1500"
  loc_F276AF: Proc_6_126_F1C850(var_10C)
  loc_F276CA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F276CF: Exit Sub
  loc_F276D0: ' Referenced from: F27638
  loc_F276D8: Set var_110 = Err()
  loc_F276DE: Call 0.Method_arg_1C (var_88)
  loc_F276EF: If (var_88 <> 0) Then
  loc_F276FA:   Set var_110 = Err()
  loc_F27700:   Call 0.Method_arg_2C (var_10C)
  loc_F27721:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F27734: End If
  loc_F27734: Exit Sub
  loc_F27735: If MemVar_1F950E4 Then Exit Sub
  loc_F27735: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E39308
  'Data Table: 4DBD68
  loc_E392F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39300: Call Proc_86_36_13D4684(global_52)
  loc_E39305: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39728
  'Data Table: 4DBD68
  loc_E39718: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39720: Call Proc_86_36_13D4684(global_52)
  loc_E39725: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E397E8
  'Data Table: 4DBD68
  loc_E397D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E397E0: Call Proc_86_36_13D4684(global_52)
  loc_E397E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3CD88
  'Data Table: 4DBD68
  loc_E3CD78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CD80: Call Proc_86_36_13D4684(global_52)
  loc_E3CD85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '109E788
  'Data Table: 4DBD68
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4DBD80 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  Dim var_F4 As Variant
  loc_109E4E0: On Error Goto loc_109E73E
  loc_109E4F7: var_A0 = "SELECT IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.Flag,IC.CatType As Type,D.Name As Outlet,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name as OutLetName  FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode)Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code WHERE (IC.LOGSITE_CODE='" & MemVar_1F95078
  loc_109E515: unk_4DBD80.Execute var_A0 & "' or IC.LOGSITE_CODE='HO') AND d.code='" & MemVar_1F95078 & "PURC'  ORDER BY IC.Name", var_CC, -1
  loc_109E520: Set var_88 = var_D0
  loc_109E53A: var_D4 = var_88.RecordCount
  loc_109E548: If (var_D4 = 0) Then
  loc_109E564:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_109E574:   Exit Sub
  loc_109E575: End If
  loc_109E584: var_A4 = MemVar_1F950B4 & "\ItemCatMast.ttx"
  loc_109E58B: Set var_D0 = var_88 
  loc_109E597: var_136 = CreateFieldDefFile(var_D0, var_A4)
  loc_109E5A1: Set var_88 = var_D0
  loc_109E5A7: var_BC = CVar(var_136) 'Integer
  loc_109E5AA: var_98 = var_BC 'Variant
  loc_109E5C6: var_A0 = MemVar_1F950B4 & "\ItemCatMast.RPT"
  loc_109E5CF: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_109E5DA: MemVar_1F951E8 = var_D0
  loc_109E5F5: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_109E5FD: Call 0.Method_arg_24 (var_136, &HFF)
  loc_109E609: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_109E622:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_109E62A:   Call 0.Method_arg_20 (var_140)
  loc_109E632:   Call 0.Method_arg_30 (var_A0)
  loc_109E678:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_109E68E:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_109E696:     Call 0.Method_arg_20 (var_140)
  loc_109E69E:     Call 0.Method_arg_38 ("'Item Category Master'")
  loc_109E6AA:   End If
  loc_109E6AD: Next var_13A 'Integer
  loc_109E6CB: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_109E6D3: Call 0.Method_arg_2C (var_E4)
  loc_109E6E1: Call 0.Method_arg_150 (var_104)
  loc_109E6EC: Call 0.Method_arg_50 (var_A0)
  loc_109E6F6: Set var_140 = Nothing
  loc_109E710: Set var_D0 = MemVar_1F951E8 
  loc_109E71C: Proc_6_99_1484404(var_D0, 0, var_A0)
  loc_109E727: MemVar_1F951E8 = var_D0
  loc_109E73A: Set var_88 = Nothing
  loc_109E73D: Exit Sub
  loc_109E73E: ' Referenced from: 109E4E0
  loc_109E746: Set var_D0 = Err()
  loc_109E74C: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_109E757: Call 0.Method_arg_50 (var_A4)
  loc_109E773: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_114, var_134)
  loc_109E786: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E58208
  'Data Table: 4DBD68
  Dim Me As Recordset15
  Dim arg_70FF As Double
  loc_E581CF: Me.Requery -1
  loc_E581DF: Me.Requery -1
  loc_E581EF: Me.Requery -1
  loc_E581FF: Me.Requery -1
  loc_E58204: Exit Sub
  loc_E58205: arg_70FF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1513450
  'Data Table: 4DBD68
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_C4 As String
  Dim unk_4DBD80 As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Field20
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_130 As Variant
  Dim var_134 As TextBox
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_1C8 As TextBox
  Dim var_20C As Variant
  Dim var_214 As TextBox
  Dim var_238 As Variant
  Dim var_270 As Variant
  Dim var_290 As Variant
  Dim var_2B8 As TextBox
  Dim var_304 As TextBox
  Dim var_3B8 As Variant
  Dim var_3D8 As Variant
  Dim var_3E0 As TextBox
  Dim var_464 As Variant
  Dim var_120 As String
  Dim var_138 As String
  Dim var_218 As String
  Dim var_F4 As Variant
  Dim var_170 As TextBox
  Dim var_190 As Variant
  Dim var_260 As TextBox
  Dim var_280 As Variant
  loc_151264C: On Error Goto loc_15133FC
  loc_1512653: var_86 = CByte(0) 'Byte
  loc_1512662: Set var_A0 = Me.Txt
  loc_1512668: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1512691: If (Proc_6_27_EA61EC(var_A4, "Name") = 0) Then
  loc_151269B:   Call Txt_GotFocus()
  loc_15126A0:   Exit Sub
  loc_15126A1: End If
  loc_15126AC: Set var_A0 = Me.Txt
  loc_15126B2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_15126DB: If (Proc_6_27_EA61EC(var_A4, "Outlet Name") = 0) Then
  loc_15126E5:   Call Txt_GotFocus()
  loc_15126EA:   Exit Sub
  loc_15126EB: End If
  loc_15126F6: Set var_A0 = Me.Txt
  loc_15126FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, CInt(1))
  loc_1512725: If (Proc_6_27_EA61EC(var_A4, "Post in A/c") = 0) Then
  loc_151272F:   Call Txt_GotFocus()
  loc_1512734:   Exit Sub
  loc_1512735: End If
  loc_1512740: Set var_A0 = Me.Txt
  loc_1512746: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, CInt(3))
  loc_151276F: If (Proc_6_27_EA61EC(var_A4, "Tax Structure") = 0) Then
  loc_1512779:   Call Txt_GotFocus()
  loc_151277E:   Exit Sub
  loc_151277F: End If
  loc_151278A: Set var_A0 = Me.Txt
  loc_1512790: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4, CInt(4))
  loc_15127B9: If (Proc_6_27_EA61EC(var_A4, "Type") = 0) Then
  loc_15127C3:   Call Txt_GotFocus()
  loc_15127C8:   Exit Sub
  loc_15127C9: End If
  loc_15127CC: Call Proc_86_37_1087544(var_AE, CInt(8))
  loc_15127D7: If (var_AE = &HFF) Then
  loc_15127DA:   Exit Sub
  loc_15127DB: End If
  loc_15127DF: Set var_A0 = Me.TopCtrl1
  loc_15127E5: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_15127FE: If (CStr(var_A4) = "Add") Then
  loc_1512807:   var_E4 = 0
  loc_1512824:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE isnumeric(SUBSTRING(Code,3,4))=1 and U_Name<>'Analysis' and SITE_CODE='" & MemVar_1F95070
  loc_1512834:   unk_4DBD80.Execute CStr(var_A4) & "'", var_C0, -1
  loc_151283C:   var_A0 = var_A0.Fields
  loc_1512844:   var_E4 = var_A4.Item(var_A4)
  loc_151284C:   var_A8 = var_A8.Value
  loc_1512885:   var_108 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_15128AB:   var_F4 = Format(CStr(var_F4), "0000")
  loc_15128B3:   var_118 = (1 + var_F4)
  loc_15128BE:   global_76 = CStr(var_118)
  loc_15128D3: Else
  loc_15128F0:   var_A4 = Me.Fields.Item("Code")
  loc_1512907:   global_76 = CStr(var_A4.Value)
  loc_1512918: End If
  loc_1512921: unk_4DBD80.BeginTrans var_11C
  loc_151292A: var_86 = CByte(1) 'Byte
  loc_1512932: Set var_A0 = Me.TopCtrl1
  loc_1512938: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1512951: If (CStr(var_108) = "Add") Then
  loc_1512968:   var_AC = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,TaxStruType,Flag,CatType,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,SITE_CODE,LOGSITE_CODE)"
  loc_151296F:   var_C4 = var_AC & " Values('"
  loc_1512979:   var_F8 = var_C4 & global_76
  loc_1512991:   Set var_A0 = Me.Txt
  loc_1512997:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_120, CVar(var_F8 & "',"))
  loc_151299F:   var_4C8 = var_A4.Text
  loc_15129A7:   var_C0 = CVar(var_120) 'String
  loc_15129AD:   Proc_6_17_EAAE40(var_F4, var_C0, -1)
  loc_15129BE:   var_130 = var_4CC & var_F4 & ",'" 
  loc_15129D0:   Set var_A8 = Me.Txt
  loc_15129D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134, var_138)
  loc_15129DE:   var_130 = var_134.Tag
  loc_1512A01:   Set var_16C = Me.Txt
  loc_1512A07:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_170)
  loc_1512A16:   Proc_6_17_EAAE40(var_190, CVar(var_170))
  loc_1512A39:   Set var_1C4 = Me.Txt
  loc_1512A3F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1C8)
  loc_1512A6D:   Set var_210 = Me.Txt
  loc_1512A73:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_214)
  loc_1512AA4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_260)
  loc_1512ABB:   var_290 = var_F4 & CVar(var_138) & "'," & var_190 & ",'" & CVar(var_1C8.Tag) & "','" & CVar(var_214.Tag) & "','" & Trim(CVar(var_260)) 
  loc_1512AD6:   Set var_2B4 = Me.Txt
  loc_1512ADC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2B8)
  loc_1512B0A:   Set var_300 = Me.Txt
  loc_1512B10:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_304)
  loc_1512B51:   Proc_6_7_F26918(var_3A8, Date)
  loc_1512B62:   var_3D8 = var_290 & "','" & CVar(var_2B8.Text) & "','" & CVar(var_304.Text) & "','Y','" & CVar(MemVar_1F950C8) & "'," & var_3A8 & ",'A','" 
  loc_1512B74:   Set var_3DC = Me.Txt
  loc_1512B7A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3E0)
  loc_1512BA9:   var_464 = var_3D8 & CVar(var_3E0.Text) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_1512BCA:   unk_4DBD80.Execute CStr(var_464 & CVar(MemVar_1F95078) & "')"), , 
  loc_1512C67:   Set var_A0 = Me.Txt
  loc_1512C6D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_1512C81:   Call Proc_86_40_F65CE0(var_A4.Text)
  loc_1512CAA:   var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_F8
  loc_1512CBE:   var_F8 = global_104 & " - "
  loc_1512CCF:   Set var_A0 = Me.Txt
  loc_1512CD5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_C4, var_F8, var_AC & "','")
  loc_1512CDD:   var_270 = var_A4.Text
  loc_1512CE6:   var_138 = -1 & var_C4
  loc_1512D1E:   var_F4 = CVar(Me.Txt & var_138 & "','" & global_104 & "','Y','Amount','Detail','PUR','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_1512D24:   Proc_6_104_ED68A8(var_C0, var_F4)
  loc_1512D47:   Set var_A8 = Me.Txt
  loc_1512D4D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134)
  loc_1512D60:   var_148 = var_F8 & var_C0 & ",'A','C','" & CVar(var_134.Tag) 
  loc_1512D7B:   Set var_16C = Me.Txt
  loc_1512D81:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_1512DAF:   Set var_1C4 = Me.Txt
  loc_1512DB5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_1512DE3:   Set var_210 = Me.Txt
  loc_1512DE9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_1512E0F:   var_238 = var_148 & "','" & CVar(var_170.Tag) & "','" & CVar(var_1C8.Text) & "','" & CVar(var_214.Tag) & "','" & CVar(MemVar_1F95078) 
  loc_1512E26:   unk_4DBD80.Execute CStr(var_238 & "')"), , 
  loc_1512E8D: Else
  loc_1512EAA:   Set var_A0 = Me.Txt
  loc_1512EB0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, "UPDATE ItemCatMast SET Name=")
  loc_1512EB8:   var_C0 = CVar(var_A4) 'Address
  loc_1512EBF:   Proc_6_17_EAAE40(var_F4, var_C0, var_464)
  loc_1512EC7:   var_108 = -1 & var_F4 
  loc_1512EDF:   Set var_A8 = Me.Txt
  loc_1512EE5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_134)
  loc_1512EF4:   Proc_6_17_EAAE40(var_148, CVar(var_134))
  loc_1512F05:   var_168 = var_F8 & var_C0 & ",RoundOff=" & var_148 & ",AcName='" 
  loc_1512F17:   Set var_16C = Me.Txt
  loc_1512F1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_170, var_AC)
  loc_1512F25:   var_168 = var_170.Tag
  loc_1512F4B:   Set var_1C4 = Me.Txt
  loc_1512F51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1C8)
  loc_1512F7C:   Set var_210 = Me.Txt
  loc_1512F82:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_214)
  loc_1512FBA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_260)
  loc_1512FCD:   var_280 = var_3DC & CVar(var_AC) & "',TaxStru='" & CVar(var_1C8.Tag) & "',TaxStruType='" & Trim(CVar(var_214)) & "',Flag='" & CVar(var_260.Text) 
  loc_1512FD6:   var_290 = var_280 & "',CatType='" 
  loc_1512FE8:   Set var_2B4 = Me.Txt
  loc_1512FEE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2B8)
  loc_151301C:   Set var_300 = Me.Txt
  loc_1513022:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_304)
  loc_151306C:   Proc_6_7_F26918(var_3A8, Date)
  loc_1513074:   var_3B8 = var_290 & CVar(var_2B8.Text) & "',DrCr='" & CVar(var_304.Text) & "'," & " U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_3A8 
  loc_15130B4:   unk_4DBD80.Execute CStr(var_3B8 & " ,U_AE='E',SITE_CODE='" & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(global_76) & "'"), , 
  loc_1513146:   var_C4 = global_104 & " - "
  loc_1513157:   Set var_A0 = Me.Txt
  loc_151315D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, var_1C8.Tag)
  loc_1513165:   "Update RevMast Set Name='" = var_A4.Text
  loc_1513172:   var_120 = -1 & var_290 & var_AC
  loc_151318A:   var_218 = var_2B8.Text & "',ShortName='" & global_104 & "',SysYN='Y',AppMode='Amount',FlagAMR='Detail',FlagType='PUR',Site_Code='"
  loc_15131A6:   var_F4 = CVar(var_218 & MemVar_1F95070 & "',U_Name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_15131AC:   Proc_6_104_ED68A8(var_C0, var_F4)
  loc_15131B4:   var_108 = Me.Txt & var_C0 
  loc_15131B8:   var_D4 = ",U_AE='E',FieldType='C',DeskCode='"
  loc_15131BD:   var_118 = var_108 & var_D4 
  loc_15131CF:   Set var_A8 = Me.Txt
  loc_15131D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134)
  loc_1513203:   Set var_16C = Me.Txt
  loc_1513209:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_1513237:   Set var_1C4 = Me.Txt
  loc_151323D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_151326B:   Set var_210 = Me.Txt
  loc_1513271:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_1513284:   var_20C = var_118 & CVar(var_134.Tag) & "',TaxStru='" & CVar(var_170.Tag) & "',Type='" & CVar(var_1C8.Text) & "',AcCode='" & CVar(var_214.Tag) 
  loc_15132B6:   var_280 = var_20C & "' Where (LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO') AND Name='" & CVar(global_72) & "'" 
  loc_15132C4:   unk_4DBD80.Execute CStr(var_280), , 
  loc_1513328: End If
  loc_151332E: unk_4DBD80.CommitTrans
  loc_1513337: var_86 = CByte(0) 'Byte
  loc_1513346: Me.Requery -1
  loc_1513356: Me.Requery -1
  loc_1513383: Me.Find "Code='" & global_76 & "'", 0, 1
  loc_1513393: Set var_A0 = Me.TopCtrl1
  loc_1513399: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_15133B2: If (CStr() = "Add") Then
  loc_15133B5:   Call TopCtrl1_UnknownEvent_A()
  loc_15133BA:   Exit Sub
  loc_15133BB: End If
  loc_15133D0: var_AC = "INI"
  loc_15133DE: Call Proc_86_34_E78544(Proc_5_1_100EC1C(var_AC, Me))
  loc_15133E9: Call Proc_86_38_F6D2B4(global_52)
  loc_15133EE: Call Proc_86_36_13D4684()
  loc_15133F8: Set var_94 = Nothing
  loc_15133FB: Exit Sub
  loc_15133FC: ' Referenced from: 151264C
  loc_1513405: If (CInt(var_86) = 1) Then
  loc_151340E:   unk_4DBD80.RollbackTrans
  loc_1513413: End If
  loc_151341B: Set var_A0 = Err()
  loc_1513421: Call 0.Method_arg_2C (var_AC)
  loc_151343A: MsgBox(CVar(var_AC), &H10, var_F4, var_108, var_118)
  loc_151344D: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EADB04
  'Data Table: 4DBD68
  loc_EADA8C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EADA8F:   Call DGHelp_UnknownEvent_9()
  loc_EADA94: End If
  loc_EADAB0: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_EADAB3:   Call DGSaleAc_UnknownEvent_9()
  loc_EADAB8: End If
  loc_EADAD4: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_EADAD7:   Call DGSaleTax_UnknownEvent_9()
  loc_EADADC: End If
  loc_EADAF8: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EADAFB:   Call DGRest_UnknownEvent_9()
  loc_EADB00: End If
  loc_EADB00: Exit Sub
  loc_EADB01: StAryRecMove
End Sub

Private Sub Txt_GotFocus(Index As Integer) '14322B0
  'Data Table: 4DBD68
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_14317EA: Set var_88 = Me.Txt
  loc_14317F0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_14317FE: Proc_6_74_E23240(var_8C)
  loc_143180A: Call Proc_86_38_F6D2B4(var_8C)
  loc_1431812: var_92 = Index
  loc_143181D: If (var_92 = CInt(1)) Then
  loc_1431837:   If (Me.RecordCount > 0) Then
  loc_1431845:     Set var_8C = Me.FGPoint
  loc_143185D:     Proc_6_137_1192FDC(Me.DGRest, global_68, Index)
  loc_143186B:   End If
  loc_14318B9:   Set var_88 = Me.Txt
  loc_14318BF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14318C7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14318DF:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_14318EF:     Set var_88 = Me.Txt
  loc_14318F5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14318FD:     var_8C.Tag = vbNullString
  loc_1431909:     Exit Sub
  loc_143190A:   End If
  loc_1431917:   Set var_88 = Me.Txt
  loc_143191D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1431925:   var_A0 = var_8C.Text
  loc_1431937:   var_B0 = "Name"
  loc_1431972:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_143197B:     Me.MoveFirst
  loc_143199E:     Set var_88 = Me.Txt
  loc_14319A4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_14319AC:     0 = var_8C.Text
  loc_14319C5:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_14319DA:   End If
  loc_14319DD: Else
  loc_14319E5:   If (var_92 = CInt(3)) Then
  loc_14319FF:     If (Me.RecordCount > 0) Then
  loc_1431A0D:       Set var_8C = Me.FGPoint
  loc_1431A25:       Proc_6_137_1192FDC(Me.DGSaleAc, global_60)
  loc_1431A33:     End If
  loc_1431A81:     Set var_88 = Me.Txt
  loc_1431A87:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1431A8F:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1431AA7:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1431AB7:       Set var_88 = Me.Txt
  loc_1431ABD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1431AC5:       var_8C.Tag = vbNullString
  loc_1431AD1:       Exit Sub
  loc_1431AD2:     End If
  loc_1431ADF:     Set var_88 = Me.Txt
  loc_1431AE5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1431AED:     var_A0 = var_8C.Text
  loc_1431AFF:     var_B0 = "Name"
  loc_1431B3A:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1431B43:       Me.MoveFirst
  loc_1431B66:       Set var_88 = Me.Txt
  loc_1431B6C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1431B74:       0 = var_8C.Text
  loc_1431B8D:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1431BA2:     End If
  loc_1431BA5:   Else
  loc_1431BAD:     If (var_92 = CInt(4)) Then
  loc_1431BC7:       If (Me.RecordCount > 0) Then
  loc_1431BD5:         Set var_8C = Me.FGPoint
  loc_1431BED:         Proc_6_137_1192FDC(Me.DGSaleTax, global_64)
  loc_1431BFB:       End If
  loc_1431C49:       Set var_88 = Me.Txt
  loc_1431C4F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1431C57:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1431C6F:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1431C7F:         Set var_88 = Me.Txt
  loc_1431C85:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1431C8D:         var_8C.Tag = vbNullString
  loc_1431C99:         Exit Sub
  loc_1431C9A:       End If
  loc_1431CA7:       Set var_88 = Me.Txt
  loc_1431CAD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1431CB5:       var_A0 = var_8C.Text
  loc_1431CC7:       var_B0 = "Name"
  loc_1431CDE:       var_B4 = Me.Fields.Item(var_B0)
  loc_1431D02:       If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_1431D0B:         Me.MoveFirst
  loc_1431D2E:         Set var_88 = Me.Txt
  loc_1431D34:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1431D3C:         0 = var_8C.Text
  loc_1431D55:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1431D6A:       End If
  loc_1431D6D:     Else
  loc_1431D75:       If (var_92 = CInt(0)) Then
  loc_1431D8F:         If (Me.RecordCount > 0) Then
  loc_1431D9D:           Set var_8C = Me.FGPoint
  loc_1431DB5:           Proc_6_137_1192FDC(Me.DGHelp, global_56)
  loc_1431DC3:         End If
  loc_1431DC6:       Else
  loc_1431DCE:         If (var_92 = CInt(2)) Then
  loc_1431DE0:           Set var_88 = Me.Txt
  loc_1431DE6:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_1431DEE:           var_8C.SelStart = Index
  loc_1431E07:           Set var_88 = Me.Txt
  loc_1431E0D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1431E28:           Set var_90 = Me.Txt
  loc_1431E2E:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1431E36:           var_B4.SelLength = Len(var_8C.Text)
  loc_1431E56:           Set var_88 = Me.Txt
  loc_1431E5C:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1431E64:           var_A0 = var_8C.Text
  loc_1431E76:           Set var_90 = Me.Txt
  loc_1431E7C:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1431E84:           var_B4.Tag = var_A0
  loc_1431E9A:         Else
  loc_1431EA2:           If (var_92 = CInt(5)) Then
  loc_1431EB2:             ReDim var_F0(0 To 1)
  loc_1431EC9:             var_F0(0) = "Category"
  loc_1431ED8:             var_F0(1) = "Charge"
  loc_1431EEF:             global_84 = Array(var_F0)
  loc_1431EFA:             Set var_B4 = Me.ListView
  loc_1431F15:             Set var_8C = Me.Txt
  loc_1431F2F:             Set global_100 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_84)
  loc_1431F4D:             Set var_88 = Me.Txt
  loc_1431F53:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1431F5B:             2 = var_8C.Text
  loc_1431F6D:             Set var_90 = Me.Txt
  loc_1431F73:             Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_1431F7B:             var_B4.Tag = global_84
  loc_1431F91:           Else
  loc_1431F99:             If (var_92 = CInt(6)) Then
  loc_1431FA9:               ReDim var_F0(0 To 5)
  loc_1431FC0:               var_F0(0) = "Semi Finish"
  loc_1431FCF:               var_F0(1) = "Consumables"
  loc_1431FDE:               var_F0(2) = "Others"
  loc_1431FED:               var_F0(3) = "Raw Material"
  loc_1431FFC:               var_F0(4) = "Store Item"
  loc_143200B:               var_F0(5) = "Expense/Income"
  loc_1432022:               global_84 = Array(var_F0)
  loc_143202D:               Set var_B4 = Me.ListView
  loc_1432048:               Set var_8C = Me.Txt
  loc_1432062:               Set global_100 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_84)
  loc_1432080:               Set var_88 = Me.Txt
  loc_1432086:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143208E:               6 = var_8C.Text
  loc_14320A0:               Set var_90 = Me.Txt
  loc_14320A6:               Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_14320AE:               var_B4.Tag = global_84
  loc_14320C4:             Else
  loc_14320CC:               If (var_92 = CInt(7)) Then
  loc_14320DC:                 ReDim var_F0(0 To 1)
  loc_14320F3:                 var_F0(0) = "Dr"
  loc_1432102:                 var_F0(1) = "Cr"
  loc_1432119:                 global_84 = Array(var_F0)
  loc_1432124:                 Set var_B4 = Me.ListView
  loc_143213F:                 Set var_8C = Me.Txt
  loc_1432159:                 Set global_100 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_84)
  loc_1432177:                 Set var_88 = Me.Txt
  loc_143217D:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1432185:                 2 = var_8C.Text
  loc_1432197:                 Set var_90 = Me.Txt
  loc_143219D:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_14321A5:                 var_B4.Tag = global_84
  loc_14321BB:               Else
  loc_14321C3:                 If (var_92 = CInt(8)) Then
  loc_14321D3:                   ReDim var_F0(0 To 1)
  loc_14321EA:                   var_F0(0) = "Registered"
  loc_14321F9:                   var_F0(1) = "Unregistered"
  loc_1432210:                   global_84 = Array(var_F0)
  loc_143221B:                   Set var_B4 = Me.ListView
  loc_1432236:                   Set var_8C = Me.Txt
  loc_1432250:                   Set global_100 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_84)
  loc_143226E:                   Set var_88 = Me.Txt
  loc_1432274:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143227C:                   2 = var_8C.Text
  loc_143228E:                   Set var_90 = Me.Txt
  loc_1432294:                   Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_143229C:                   var_B4.Tag = global_84
  loc_14322AF:                 End If
  loc_14322AF:               End If
  loc_14322AF:             End If
  loc_14322AF:           End If
  loc_14322AF:         End If
  loc_14322AF:       End If
  loc_14322AF:     End If
  loc_14322AF:   End If
  loc_14322AF: End If
  loc_14322AF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '143C094
  'Data Table: 4DBD68
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Variant
  Dim var_9C As DataGrid
  Dim var_A8 As Frame
  loc_143B5BA: If (CLng(Shift) = &H1B) Then
  loc_143B5BD:   Call Proc_86_38_F6D2B4()
  loc_143B5C2:   Exit Sub
  loc_143B5C3: End If
  loc_143B5C6: var_88 = KeyCode
  loc_143B5D1: If (var_88 = CInt(0)) Then
  loc_143B5F1:   Set var_9C = Me.FGPoint
  loc_143B623:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_143B690:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_143B6B6:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_143B6C4:   End If
  loc_143B6C7: Else
  loc_143B6CF:   If (var_88 = CInt(1)) Then
  loc_143B6FA:     Set var_9C = Nothing
  loc_143B728:     Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_68, Shift, 0, 1)
  loc_143B797:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_143B79E:       Set var_9C = Me.DGRest
  loc_143B7BD:       Proc_6_138_106E830(var_9C, global_68, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_143B7CB:     End If
  loc_143B7CE:   Else
  loc_143B7D6:     If (var_88 = CInt(3)) Then
  loc_143B82F:       Proc_6_69_134A630(Me.DGSaleAc, Me.Txt, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_143B89E:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_143B8C4:         Proc_6_138_106E830(Me.DGSaleAc, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_143B8D2:       End If
  loc_143B8D5:     Else
  loc_143B8DD:       If (var_88 = CInt(4)) Then
  loc_143B8EB:         Set var_AC = Me.Txt
  loc_143B8FD:         Set var_A4 = Me.FGPoint
  loc_143B936:         Proc_6_69_134A630(Me.DGSaleTax, var_AC, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_143B955:         var_B0 = Me.RecordCount
  loc_143B9A5:         If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_143B9B3:           Set var_90 = Me.FGPoint
  loc_143B9CB:           Proc_6_138_106E830(Me.DGSaleTax, global_64, KeyCode, var_90, var_A4, 0)
  loc_143B9D9:         End If
  loc_143B9DC:       Else
  loc_143B9E4:         If (var_88 = CInt(6)) Then
  loc_143BA09:           Set var_8C = Me.Txt
  loc_143BA0F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_143BA17:           1 = var_90.Left
  loc_143BA29:           Set var_9C = Me.Txt
  loc_143BA2F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_143BA37:           var_9C = var_A4.Top
  loc_143BA49:           Set var_A8 = Me.Txt
  loc_143BA4F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_143BA57:           0 = var_AC.Height
  loc_143BA69:           Set var_B4 = Me.Txt
  loc_143BA6F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_143BA77:           var_C4 = var_C0.Width
  loc_143BABF:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_143BAE6:         Else
  loc_143BAEE:           If (var_88 = CInt(7)) Then
  loc_143BB13:             Set var_8C = Me.Txt
  loc_143BB19:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_143BB21:             CInt((var_B8 + var_BC)) = var_90.Left
  loc_143BB33:             Set var_9C = Me.Txt
  loc_143BB39:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_143BB41:             CInt(var_C4) = var_A4.Top
  loc_143BB53:             Set var_A8 = Me.Txt
  loc_143BB59:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_143BB61:             1530 = var_AC.Height
  loc_143BB73:             Set var_B4 = Me.Txt
  loc_143BB79:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_143BB81:             var_C4 = var_C0.Width
  loc_143BBC9:             Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_143BBF0:           Else
  loc_143BBF8:             If (var_88 = CInt(8)) Then
  loc_143BC1D:               Set var_8C = Me.Txt
  loc_143BC23:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_143BC2B:               CInt((var_B8 + var_BC)) = var_90.Left
  loc_143BC3D:               Set var_9C = Me.Txt
  loc_143BC43:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_143BC4B:               CInt(var_C4) = var_A4.Top
  loc_143BC5D:               Set var_A8 = Me.Txt
  loc_143BC63:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_143BC6B:               510 = var_AC.Height
  loc_143BC7D:               Set var_B4 = Me.Txt
  loc_143BC83:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_143BC8B:               var_C4 = var_C0.Width
  loc_143BCD3:               Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_143BCFA:             Else
  loc_143BD02:               If (var_88 = CInt(5)) Then
  loc_143BD27:                 Set var_8C = Me.Txt
  loc_143BD2D:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_143BD35:                 CInt((var_B8 + var_BC)) = var_90.Left
  loc_143BD47:                 Set var_9C = Me.Txt
  loc_143BD4D:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_143BD55:                 CInt(var_C4) = var_A4.Top
  loc_143BD67:                 Set var_A8 = Me.Txt
  loc_143BD6D:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_143BD75:                 510 = var_AC.Height
  loc_143BD87:                 Set var_B4 = Me.Txt
  loc_143BD8D:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_143BD95:                 var_C4 = var_C0.Width
  loc_143BDDD:                 Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_143BE01:               End If
  loc_143BE01:             End If
  loc_143BE01:           End If
  loc_143BE01:         End If
  loc_143BE01:       End If
  loc_143BE01:     End If
  loc_143BE01:   End If
  loc_143BE01: End If
  loc_143BE8D: If (((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGSaleAc.Visible) = 0)) And (CBool(Me.DGSaleTax.Visible) = 0)) And (CBool(Me.DGRest.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_143BE98:   If (KeyCode = CInt(5)) Then
  loc_143BEB3:     Set var_90 = Me.ListView.SelectedItem
  loc_143BED3:     If (var_90.Text = "Category") Then
  loc_143BEE2:       Me.LblCatType.Visible = True
  loc_143BEF7:       Set var_8C = Me.Txt
  loc_143BEFD:       Call 0.Method_Txt_KeyDown0 (CInt(6), var_90, &HFF, CInt(var_B0))
  loc_143BF05:       var_90.Visible = CInt((var_B8 + var_BC))
  loc_143BF14:     Else
  loc_143BF20:       Me.LblCatType.Visible = False
  loc_143BF35:       Set var_8C = Me.Txt
  loc_143BF3B:       Call 0.Method_Txt_KeyDown0 (CInt(6), var_90, 0)
  loc_143BF43:       var_90.Visible = CInt(var_C4)
  loc_143BF4F:     End If
  loc_143BF4F:   End If
  loc_143BF57:   If (KeyCode = CInt(5)) Then
  loc_143BF72:     Set var_90 = Me.ListView.SelectedItem
  loc_143BF92:     If (var_90.Text = "Charge") Then
  loc_143BFA1:       Me.Label2.Visible = True
  loc_143BFB6:       Set var_8C = Me.Txt
  loc_143BFBC:       Call 0.Method_Txt_KeyDown0 (CInt(7), var_90, &HFF)
  loc_143BFC4:       var_90.Visible = True
  loc_143BFD3:     Else
  loc_143BFDF:       Me.Label2.Visible = False
  loc_143BFF4:       Set var_8C = Me.Txt
  loc_143BFFA:       Call 0.Method_Txt_KeyDown0 (CInt(7), var_90)
  loc_143C002:       var_90.Visible = False
  loc_143C00E:     End If
  loc_143C00E:   End If
  loc_143C021:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_143C02A:     Proc_6_76_E533C8(Shift, arg_14)
  loc_143C02F:   End If
  loc_143C04D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(8))) Then
  loc_143C056:     Proc_6_75_E5335C(Shift, arg_14)
  loc_143C05B:   End If
  loc_143C079:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(8))) Then
  loc_143C084:     Call Txt_Validate(KeyCode)
  loc_143C08C:     Call Proc_86_39_E937CC(KeyCode, 0)
  loc_143C091:   End If
  loc_143C091: End If
  loc_143C091: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '109241C
  'Data Table: 4DBD68
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As DataGrid
  Dim var_94 As Variant
  loc_1092172: Proc_6_133_E7FB08(var_94)
  loc_1092187: If (CInt(var_94) = &HD) Then
  loc_109218C:   arg_10 = 0
  loc_109218F: End If
  loc_1092192: Proc_6_58_E06050(arg_10, arg_10)
  loc_109219A: var_96 = KeyAscii
  loc_10921A5: If (var_96 = CInt(2)) Then
  loc_10921D1:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_10921E1:     Set var_CC = Me.Txt
  loc_10921E7:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_10921EF:     var_D0.Text = var_96
  loc_10921FE:   Else
  loc_1092227:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1092237:       Set var_CC = Me.Txt
  loc_109223D:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_1092245:       var_D0.Text = arg_10
  loc_1092251:     End If
  loc_1092251:   End If
  loc_1092253:   arg_10 = 0
  loc_1092259: Else
  loc_1092261:   If (var_96 = CInt(3)) Then
  loc_1092280:     If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_1092292:       var_D4 = "Name"
  loc_10922AD:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_10922DF:       Proc_6_138_106E830(Me.DGSaleAc, global_60, KeyAscii, Me.FGPoint)
  loc_10922ED:     End If
  loc_10922F0:   Else
  loc_10922F8:     If (var_96 = CInt(1)) Then
  loc_1092317:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1092344:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1092376:         Proc_6_138_106E830(Me.DGRest, global_68, KeyAscii, Me.FGPoint, 0)
  loc_1092384:       End If
  loc_1092387:     Else
  loc_109238F:       If (var_96 = CInt(4)) Then
  loc_10923AE:         If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_10923DB:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_109240D:           Proc_6_138_106E830(Me.DGSaleTax, global_64, KeyAscii, Me.FGPoint, 0)
  loc_109241B:         End If
  loc_109241B:       End If
  loc_109241B:     End If
  loc_109241B:   End If
  loc_109241B: End If
  loc_109241B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F438F4
  'Data Table: 4DBD68
  Dim var_86 As Integer
  loc_F437DF: var_86 = KeyCode
  loc_F437EA: If (var_86 = CInt(0)) Then
  loc_F43809:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F43816:     var_A4 = "Name"
  loc_F43835:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_F43867:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F43875:   End If
  loc_F43878: Else
  loc_F43880:   If Not (var_86 = CInt(6)) Then
  loc_F4388B:     If Not (var_86 = CInt(7)) Then
  loc_F43896:       If (var_86 = CInt(8)) Then
  loc_F43899:       End If
  loc_F43899:     End If
  loc_F438B4:     If (Me.FrmList.Visible = &HFF) Then
  loc_F438E3:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F438F3:     End If
  loc_F438F3:   End If
  loc_F438F3: End If
  loc_F438F3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46CCC
  'Data Table: 4DBD68
  loc_E46CAA: Set var_88 = Me.Txt
  loc_E46CB0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46CBE: Proc_6_73_E23294(var_8C)
  loc_E46CCA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1355EF8
  'Data Table: 4DBD68
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As Variant
  Dim var_B0 As TextBox
  loc_13556D7: var_86 = Cancel
  loc_13556E2: If (var_86 = CInt(0)) Then
  loc_13556E8:   Call Proc_86_37_1087544(var_88)
  loc_13556F3:   If (var_88 = &HFF) Then
  loc_13556F8:     arg_10 = &HFF
  loc_13556FB:     Exit Sub
  loc_13556FC:   End If
  loc_13556FF: Else
  loc_1355707:   If (var_86 = CInt(1)) Then
  loc_1355758:     Set var_94 = Me.Txt
  loc_135575E:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1355766:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_135577E:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_135578E:       Set var_94 = Me.Txt
  loc_1355794:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_135579C:       var_98.Tag = vbNullString
  loc_13557A8:       Exit Sub
  loc_13557A9:     End If
  loc_13557E4:     Set var_B0 = Me.Txt
  loc_13557EA:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13557F2:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1355843:     Set var_B0 = Me.Txt
  loc_1355849:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1355851:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1355884:     var_98 = Me.Fields.Item("ShortName")
  loc_1355895:     var_9C = CStr(var_98.Value)
  loc_135589B:     global_104 = var_9C
  loc_13558AF:   Else
  loc_13558B7:     If (var_86 = CInt(3)) Then
  loc_1355908:       Set var_94 = Me.Txt
  loc_135590E:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1355916:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_135592E:       If (var_86 Or (var_9C = vbNullString)) Then
  loc_135593E:         Set var_94 = Me.Txt
  loc_1355944:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_135594C:         var_98.Tag = vbNullString
  loc_1355958:         Exit Sub
  loc_1355959:       End If
  loc_1355994:       Set var_B0 = Me.Txt
  loc_135599A:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13559A2:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13559D5:       var_98 = Me.Fields.Item("Code")
  loc_13559F3:       Set var_B0 = Me.Txt
  loc_13559F9:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1355A01:       var_B4.Tag = CStr(var_98.Value)
  loc_1355A1A:     Else
  loc_1355A22:       If (var_86 = CInt(4)) Then
  loc_1355A73:         Set var_94 = Me.Txt
  loc_1355A79:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1355A99:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_1355AA9:           Set var_94 = Me.Txt
  loc_1355AAF:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1355AB7:           var_98.Tag = vbNullString
  loc_1355AC3:           Exit Sub
  loc_1355AC4:         End If
  loc_1355AFF:         Set var_B0 = Me.Txt
  loc_1355B05:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1355B0D:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1355B40:         var_98 = Me.Fields.Item("Code")
  loc_1355B5E:         Set var_B0 = Me.Txt
  loc_1355B64:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1355B6C:         var_B4.Tag = CStr(var_98.Value)
  loc_1355B85:       Else
  loc_1355B8D:         If (var_86 = CInt(2)) Then
  loc_1355B9A:           Set var_94 = Me.Txt
  loc_1355BA0:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_1355BDB:           If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_1355BEB:             Set var_94 = Me.Txt
  loc_1355BF1:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1355BF9:             var_98.Text = "Yes"
  loc_1355C08:           Else
  loc_1355C15:             Set var_94 = Me.Txt
  loc_1355C1B:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1355C23:             var_98.Text = "No"
  loc_1355C2F:           End If
  loc_1355C32:         Else
  loc_1355C3A:           If (var_86 = CInt(5)) Then
  loc_1355C4B:             Set var_94 = Me.Txt
  loc_1355C51:             Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_1355C70:             If (var_98.Text = "Category") Then
  loc_1355C7F:               Me.LblCatType.Visible = True
  loc_1355C94:               Set var_94 = Me.Txt
  loc_1355C9A:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_1355CA2:               var_98.Visible = True
  loc_1355CBA:               Me.Label2.Visible = False
  loc_1355CCF:               Set var_94 = Me.Txt
  loc_1355CD5:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_1355CDD:               var_98.Visible = False
  loc_1355CEC:             Else
  loc_1355CF8:               Me.Label2.Visible = True
  loc_1355D0D:               Set var_94 = Me.Txt
  loc_1355D13:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_1355D1B:               var_98.Visible = True
  loc_1355D33:               Me.LblCatType.Visible = False
  loc_1355D48:               Set var_94 = Me.Txt
  loc_1355D4E:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_1355D56:               var_98.Visible = False
  loc_1355D62:             End If
  loc_1355D65:           Else
  loc_1355D6D:             If (var_86 = CInt(7)) Then
  loc_1355D7E:               Set var_94 = Me.Txt
  loc_1355D84:               Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_1355DA3:               If (var_98.Text = "Charge") Then
  loc_1355DD7:                 Set var_98 = Me.Txt
  loc_1355DDD:                 Call 0.Method_Txt_Validate0 (CInt(7), var_B0)
  loc_1355DE5:                 var_B0.Text = Me.ListView.SelectedItem.Default
  loc_1355DFB:               End If
  loc_1355DFE:             Else
  loc_1355E06:               If (var_86 = CInt(6)) Then
  loc_1355E17:                 Set var_94 = Me.Txt
  loc_1355E1D:                 Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_1355E3C:                 If (var_98.Text = "Category") Then
  loc_1355E70:                   Set var_98 = Me.Txt
  loc_1355E76:                   Call 0.Method_Txt_Validate0 (CInt(6), var_B0)
  loc_1355E7E:                   var_B0.Text = Me.ListView.SelectedItem.Default
  loc_1355E94:                 End If
  loc_1355E97:               Else
  loc_1355E9F:                 If (var_86 = CInt(8)) Then
  loc_1355ED3:                   Set var_98 = Me.Txt
  loc_1355ED9:                   Call 0.Method_Txt_Validate0 (CInt(8), var_B0)
  loc_1355EE1:                   var_B0.Text = Me.ListView.SelectedItem.Default
  loc_1355EF7:                 End If
  loc_1355EF7:               End If
  loc_1355EF7:             End If
  loc_1355EF7:           End If
  loc_1355EF7:         End If
  loc_1355EF7:       End If
  loc_1355EF7:     End If
  loc_1355EF7:   End If
  loc_1355EF7: End If
  loc_1355EF7: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8840C
  'Data Table: 4DBD68
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F882C8: On Error Goto loc_F883A6
  loc_F882CF: Set var_A4 = Me.ListView
  loc_F88319: Set var_BC = Me.Txt
  loc_F8831F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F88327: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F88353: Me.FrmList.Visible = False
  loc_F8836D: var_A0 = CStr(Me.ListView.Tag)
  loc_F88375: var_C8 = Val(var_A0)
  loc_F88383: Set var_9C = Me.Txt
  loc_F88389: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F88391: var_A4.SetFocus
  loc_F883A5: Exit Sub
  loc_F883A6: ' Referenced from: F882C8
  loc_F883AE: Set var_88 = Err()
  loc_F883B4: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F883C5: If (var_CC <> 0) Then
  loc_F883D0:   Set var_88 = Err()
  loc_F883D6:   Call 0.Method_arg_2C (var_A0)
  loc_F883F7:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F8840A: End If
  loc_F8840A: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F3F6F4
  'Data Table: 4DBD68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F5EB: Me.DGRest.Visible = False
  loc_F3F60A: If (Me.RecordCount > 0) Then
  loc_F3F649:   Set var_B4 = Me.Txt
  loc_F3F64F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3F657:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3F68A:   var_B0 = Me.Fields.Item("Code")
  loc_F3F6A9:   Set var_B4 = Me.Txt
  loc_F3F6AF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3F6B7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3F6CD: End If
  loc_F3F6D8: Set var_A8 = Me.Txt
  loc_F3F6DE: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F3F6E6: var_B0.SetFocus
  loc_F3F6F2: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E705A8
  'Data Table: 4DBD68
  loc_E70566: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E7057D: Set var_8C = Me.FGPoint
  loc_E70599: Proc_6_138_106E830(Me.DGRest, global_68, CInt(1))
  loc_E705A7: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC1CF4
  'Data Table: 4DBD68
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC1C6A: On Error Goto loc_EC1CAF
  loc_EC1C73: Me.MoveFirst
  loc_EC1C8D: var_8C = "code='" & MyValue
  loc_EC1C9D: Me.Find var_8C & "'", 0, 1
  loc_EC1CA9: Call Proc_86_36_13D4684(var_A0)
  loc_EC1CAE: Exit Sub
  loc_EC1CAF: ' Referenced from: EC1C6A
  loc_EC1CB7: Set var_A4 = Err()
  loc_EC1CBD: Call 0.Method_arg_2C (var_8C)
  loc_EC1CDE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC1CF1: Exit Sub
  loc_EC1CF2: Exit Sub
End Sub

Public Sub Proc_86_34_E78544(arg_C) 'E78544
  'Data Table: 4DBD68
  Dim var_98 As TextBox
  loc_E784F2: Set var_8C = Me.Txt
  loc_E784F8: Call 0.Method_Proc_86_34_E78544C (var_8E, var_86)
  loc_E78508: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7851E:   Set var_8C = Me.Txt
  loc_E78524:   Call 0.Method_Proc_86_34_E785440 (CInt(var_86), var_98)
  loc_E7852C:   var_98.Enabled = arg_C
  loc_E7853B: Next var_92 'Byte
  loc_E78541: Exit Sub
End Sub

Public Sub Proc_86_35_EE258C
  'Data Table: 4DBD68
  Dim var_98 As TextBox
  loc_EE24CE: global_80 = vbNullString
  loc_EE24D8: global_104 = vbNullString
  loc_EE24EA: Set var_8C = Me.Txt
  loc_EE24F0: Call 0.Method_Proc_86_35_EE258CC (var_8E, var_86)
  loc_EE2500: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE2516:   Set var_8C = Me.Txt
  loc_EE251C:   Call 0.Method_Proc_86_35_EE258C0 (CInt(var_86), var_98)
  loc_EE2524:   var_98.Text = vbNullString
  loc_EE2540:   Set var_8C = Me.Txt
  loc_EE2546:   Call 0.Method_Proc_86_35_EE258C0 (CInt(var_86), var_98)
  loc_EE254E:   var_98.Tag = vbNullString
  loc_EE255D: Next var_92 'Byte
  loc_EE2571: Set var_8C = Me.Txt
  loc_EE2577: Call 0.Method_Proc_86_35_EE258C0 (CInt(7), var_98)
  loc_EE257F: var_98.Text = "Cr"
  loc_EE258B: Exit Sub
End Sub

Public Sub Proc_86_36_13D4684
  'Data Table: 4DBD68
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4DBD80 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_120 As String
  Dim var_11C As TextBox
  loc_13D3CF4: On Error Goto loc_13D463F
  loc_13D3CFD: Proc_183_45_E5CCA8(global_52)
  loc_13D3D58: unk_4DBD80.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemCatMast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_13D3D63: Set var_88 = var_118
  loc_13D3DB7: var_118 = var_88.Fields
  loc_13D3E20: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13D3E65: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_13D3EDF: var_11C = var_88.Fields.Item("U_AE")
  loc_13D3EF8: var_114 = "entdt : "
  loc_13D3F03: var_F0 = "Last Update : "
  loc_13D3F40: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_13D3F85: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_13D3FD4: If (Me.RecordCount <= 0) Then
  loc_13D3FD7:   Call Proc_86_35_EE258C()
  loc_13D3FDF: Else
  loc_13D401B:   Set var_118 = Me.Txt
  loc_13D4021:   Call 0.Method_Proc_86_36_13D46840 (CInt(0), var_11C)
  loc_13D4029:   var_11C.Text = CStr(Me.Fields.Item("ItemCat").Value)
  loc_13D407B:   Set var_118 = Me.Txt
  loc_13D4081:   Call 0.Method_Proc_86_36_13D46840 (CInt(0), var_11C)
  loc_13D4089:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13D40D8:   Set var_118 = Me.Txt
  loc_13D40DE:   Call 0.Method_Proc_86_36_13D46840 (CInt(1), var_11C)
  loc_13D40E6:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_13D4133:   Set var_118 = Me.Txt
  loc_13D4139:   Call 0.Method_Proc_86_36_13D46840 (CInt(1), var_11C)
  loc_13D4141:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_13D418E:   Set var_118 = Me.Txt
  loc_13D4194:   Call 0.Method_Proc_86_36_13D46840 (CInt(2), var_11C)
  loc_13D419C:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")))
  loc_13D41E9:   Set var_118 = Me.Txt
  loc_13D41EF:   Call 0.Method_Proc_86_36_13D46840 (CInt(3), var_11C)
  loc_13D41F7:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAc")))
  loc_13D4244:   Set var_118 = Me.Txt
  loc_13D424A:   Call 0.Method_Proc_86_36_13D46840 (CInt(3), var_11C)
  loc_13D4252:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("AcName")))
  loc_13D429F:   Set var_118 = Me.Txt
  loc_13D42A5:   Call 0.Method_Proc_86_36_13D46840 (CInt(4), var_11C)
  loc_13D42AD:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStructure")))
  loc_13D42FA:   Set var_118 = Me.Txt
  loc_13D4300:   Call 0.Method_Proc_86_36_13D46840 (CInt(4), var_11C)
  loc_13D4308:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruCode")))
  loc_13D4355:   Set var_118 = Me.Txt
  loc_13D435B:   Call 0.Method_Proc_86_36_13D46840 (CInt(8), var_11C)
  loc_13D4363:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruType")))
  loc_13D43B0:   Set var_118 = Me.Txt
  loc_13D43B6:   Call 0.Method_Proc_86_36_13D46840 (CInt(5), var_11C)
  loc_13D43BE:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Flag")))
  loc_13D440B:   Set var_118 = Me.Txt
  loc_13D4411:   Call 0.Method_Proc_86_36_13D46840 (CInt(6), var_11C)
  loc_13D4419:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CatType")))
  loc_13D4466:   Set var_118 = Me.Txt
  loc_13D446C:   Call 0.Method_Proc_86_36_13D46840 (CInt(7), var_11C)
  loc_13D4474:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DrCr")))
  loc_13D44A5:   var_A0 = Me.Fields.Item("ShortName")
  loc_13D44D7:   var_120 = CStr(var_A0.Value) & " - "
  loc_13D44E8:   Set var_8C = Me.Txt
  loc_13D44EE:   Call 0.Method_Proc_86_36_13D46840 (CInt(0), var_A0)
  loc_13D4505:   global_72 = Proc_6_38_E69628(CVar(var_11C)) & var_A0.Text
  loc_13D4527:   Set var_8C = Me.Txt
  loc_13D452D:   Call 0.Method_Proc_86_36_13D46840 (CInt(5), var_A0)
  loc_13D4535:   var_F4 = var_A0.Text
  loc_13D454C:   If (var_F4 = "Category") Then
  loc_13D455B:     Me.LblCatType.Visible = True
  loc_13D4570:     Set var_8C = Me.Txt
  loc_13D4576:     Call 0.Method_Proc_86_36_13D46840 (CInt(6), var_A0)
  loc_13D457E:     var_A0.Visible = True
  loc_13D4596:     Me.Label2.Visible = False
  loc_13D45AB:     Set var_8C = Me.Txt
  loc_13D45B1:     Call 0.Method_Proc_86_36_13D46840 (CInt(7), var_A0)
  loc_13D45B9:     var_A0.Visible = False
  loc_13D45C8:   Else
  loc_13D45D4:     Me.Label2.Visible = True
  loc_13D45E9:     Set var_8C = Me.Txt
  loc_13D45EF:     Call 0.Method_Proc_86_36_13D46840 (CInt(7), var_A0)
  loc_13D45F7:     var_A0.Visible = True
  loc_13D460F:     Me.LblCatType.Visible = False
  loc_13D4624:     Set var_8C = Me.Txt
  loc_13D462A:     Call 0.Method_Proc_86_36_13D46840 (CInt(6), var_A0)
  loc_13D4632:     var_A0.Visible = False
  loc_13D463E:   End If
  loc_13D463E: End If
  loc_13D463E: Exit Sub
  loc_13D463F: ' Referenced from: 13D3CF4
  loc_13D4647: Set var_8C = Err()
  loc_13D464D: Call 0.Method_arg_2C (var_F4)
  loc_13D466E: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_13D4681: Exit Sub
End Sub

Public Sub Proc_86_37_1087544
  'Data Table: 4DBD68
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4DBD80 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_10872D7: If (Me.RecordCount = 0) Then
  loc_10872DA:   Proc_86_37_1087544 = 
  loc_10872E0: End If
  loc_10872E4: Set var_90 = Me.TopCtrl1
  loc_10872EA: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1087303: If (CStr() = "Add") Then
  loc_1087341:   Set var_90 = Me.Txt
  loc_1087347:   Call 0.Method_Proc_86_37_10875440 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1087368:   unk_4DBD80.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1087378:    = var_D0.Item()
  loc_1087380:    = var_E4.Value
  loc_10873B1:   If (var_A8.Text.Fields > 0) Then
  loc_10873CF:     var_A0 = "Duplicate Name"
  loc_10873D5:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10873F0:     Set var_90 = Me.Txt
  loc_10873F6:     Call 0.Method_Proc_86_37_10875440 (CInt(0))
  loc_10873FE:     var_A8.SetFocus
  loc_108740F:     Proc_86_37_1087544 = &HFF
  loc_1087415:   End If
  loc_1087418: Else
  loc_1087453:   Set var_90 = Me.Txt
  loc_1087459:   Call 0.Method_Proc_86_37_10875440 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108748B:   unk_4DBD80.Execute var_D0 & var_AC & "' And Name<>'" & global_80 & "'", 0, var_E4
  loc_108749B:    = var_D0.Item(var_A8)
  loc_10874A3:    = var_E4.Value
  loc_10874D8:   If (var_A8.Text.Fields > 0) Then
  loc_10874FC:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1087517:     Set var_90 = Me.Txt
  loc_108751D:     Call 0.Method_Proc_86_37_10875440 (CInt(0))
  loc_1087525:     var_A8.SetFocus
  loc_1087536:     Proc_86_37_1087544 = &HFF
  loc_108753C:   End If
  loc_108753C: End If
  loc_108753C: Proc_86_37_1087544 = var_A8
End Sub

Public Sub Proc_86_38_F6D2B4
  'Data Table: 4DBD68
  loc_F6D18C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F6D19E:   Me.DGHelp.Visible = False
  loc_F6D1A6: End If
  loc_F6D1C2: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_F6D1D4:   Me.DGSaleAc.Visible = False
  loc_F6D1DC: End If
  loc_F6D1F8: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_F6D20A:   Me.DGSaleTax.Visible = False
  loc_F6D212: End If
  loc_F6D22E: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6D240:   Me.DGRest.Visible = False
  loc_F6D248: End If
  loc_F6D263: If (Me.FrmList.Visible = &HFF) Then
  loc_F6D272:   Me.FrmList.Visible = False
  loc_F6D27A: End If
  loc_F6D296: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6D2A8:   Me.FGPoint.Visible = False
  loc_F6D2B0: End If
  loc_F6D2B0: Exit Sub
End Sub

Public Sub Proc_86_39_E937CC(arg_C) 'E937CC
  'Data Table: 4DBD68
  Dim var_10C As TextBox
  loc_E93760: Call Proc_86_38_F6D2B4()
  loc_E9379C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9379F:   Call TopCtrl1_UnknownEvent_16()
  loc_E937A7: Else
  loc_E937B1:   Set var_108 = Me.Txt
  loc_E937B7:   Call 0.Method_Proc_86_39_E937CC0 (arg_C)
  loc_E937BF:   var_10C.SetFocus
  loc_E937CB: End If
  loc_E937CB: Exit Sub
End Sub

Public Sub Proc_86_40_F65CE0(arg_C) 'F65CE0
  'Data Table: 4DBD68
  Dim var_128 As Integer
  Dim var_8C As String
  Dim var_CC As Variant
  Dim unk_4DBD80 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  Dim var_12C As Field20
  Dim var_100 As String
  Dim var_13C As Variant
  loc_F65BE9: var_128 = 0
  loc_F65C06: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),1)+1 AS MyCode From RevMast WHERE SITE_CODE='" & MemVar_1F95070
  loc_F65C2A: unk_4DBD80.Execute CStr(CVar(var_8C & "' AND isnumeric(SUBSTRING(Code,4,1))=1 and SUBSTRING(Code,3,1) ='") & Left(arg_C, 1) & "'"), var_110, -1
  loc_F65C32: var_114 = var_114.Fields
  loc_F65C3A: var_128 = var_118.Item(var_118)
  loc_F65C42: var_12C = var_12C.Value
  loc_F65C95: var_CC = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) + Left(arg_C, 1))
  loc_F65CA3: var_100 = "000"
  loc_F65CC1: var_13C = (1 + Format(CStr(var_13C), var_100))
  loc_F65CC6: var_88 = CStr(var_13C)
  loc_F65CD8: Proc_86_40_F65CE0 = 1
  loc_F65CDE: Set var_1000 = CVar(var_8C & "' AND isnumeric(SUBSTRING(Code,4,1))=1 and SUBSTRING(Code,3,1) ='") & Left(arg_C, 1)
End Sub
