VERSION 5.00
Begin VB.Form FrmItemCatMast
  Caption = "Category/Charge Master"
  BackColor = &HFFC0C0&
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
  ClientWidth = 12855
  ClientHeight = 8805
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12855
    Height = 450
    TabIndex = 31
  End
  Begin PictureBox Picture4
    Picture = "FrmItemCatMast.frx":0
    Left = 11565
    Top = 1905
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 26
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture2
    Picture = "FrmItemCatMast.frx":34E
    Left = 11565
    Top = 1635
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 25
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "FrmItemCatMast.frx":69C
    ForeColor = &HC00000&
    Left = 10470
    Top = 1005
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 24
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture3
    Picture = "FrmItemCatMast.frx":9EA
    Left = 11565
    Top = 555
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 23
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin MSFlexGrid FGPoint
    Left = 8760
    Top = 2280
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGRest
    Left = 7560
    Top = 4680
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin DataGrid DGSaleTax
    Left = 8040
    Top = 6465
    Width = 4230
    Height = 1650
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGHelp
    Left = 8010
    Top = 2445
    Width = 5175
    Height = 1590
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5025
    Top = 2940
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 13
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
  Begin DataGrid DGSaleAc
    Left = 7785
    Top = 3945
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin Frame FrmList
    ForeColor = &HC00000&
    Left = 8160
    Top = 1860
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 120
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 19
    End
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5025
    Top = 2940
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 13
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
    Left = 3090
    Top = 2940
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
    Left = 3090
    Top = 2310
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
    Left = 3090
    Top = 3255
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
    Left = 3090
    Top = 3570
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
    ForeColor = &HC00000&
    Left = 9750
    Top = 1350
    Width = 1290
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 2
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3090
    Top = 2625
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
  Begin Label LblCatType
    Caption = "Type"
    ForeColor = &HC00000&
    Left = 4545
    Top = 2970
    Width = 465
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 29
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4440
    Top = 5760
    Width = 2790
    Height = 285
    TabIndex = 28
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
    Left = 1065
    Top = 5760
    Width = 2880
    Height = 255
    TabIndex = 27
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
  Begin Label Label2
    Caption = "Type"
    ForeColor = &HC00000&
    Left = 4545
    Top = 2985
    Width = 435
    Height = 210
    TabIndex = 21
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
  Begin Label LblName
    Caption = "Category/Charge"
    Index = 5
    ForeColor = &HC00000&
    Left = 1425
    Top = 2940
    Width = 1605
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
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1425
    Top = 2310
    Width = 1185
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &HC00000&
    Left = 11595
    Top = 1095
    Width = 885
    Height = 240
    Visible = 0   'False
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
  Begin Label LblName
    Caption = "Post in Account"
    Index = 4
    ForeColor = &HC00000&
    Left = 1425
    Top = 3255
    Width = 1470
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
    Caption = "Tax Structure"
    Index = 3
    ForeColor = &HC00000&
    Left = 1425
    Top = 3570
    Width = 1290
    Height = 240
    TabIndex = 12
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
    ForeColor = &HC00000&
    Left = 8085
    Top = 1350
    Width = 945
    Height = 240
    Visible = 0   'False
    TabIndex = 11
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
    Caption = "Category Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1425
    Top = 2625
    Width = 1485
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FrmItemCatMast"


Private Sub Form_Load() '1325E60
  'Data Table: 4E2D9C
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_4E2DB6 As Connection15
  loc_13256DC: On Error Goto loc_1325E1A
  loc_13256EE: Me.LblUser.Left = CDbl(13500)
  loc_1325705: Me.LblUser.Top = CDbl(7800)
  loc_132571C: Me.LblLDt.Top = CDbl(8160)
  loc_1325733: Me.LblLDt.Left = CDbl(13500)
  loc_1325742: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1325755: Set var_88 = Me.Txt
  loc_132575B: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_132577A: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1325796: Set var_B4 = Me.Txt
  loc_132579C: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_13257B7: Set var_88 = Me.Txt
  loc_13257BD: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_13257D5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13257E4: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1325800: Set var_88 = Me.TopCtrl1
  loc_1325806: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1325814: Call 0.Method_arg_50 (var_C4)
  loc_132581C: var_D4 = CVar(var_C4) 'String
  loc_1325824: Set var_88 = Me.TopCtrl1
  loc_132582A: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_1325843: Set var_88 = Me.Txt
  loc_1325849: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1325868: Me.DGRest.Left = CVar(var_8C.Left)
  loc_1325884: Set var_B4 = Me.Txt
  loc_132588A: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_13258A5: Set var_88 = Me.Txt
  loc_13258AB: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_13258C3: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13258D2: Me.DGRest.Top = CVar(var_8C.Left)
  loc_13258F2: Set var_88 = Me.Txt
  loc_13258F8: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1325917: Me.DGSaleAc.Left = CVar(var_8C.Left)
  loc_1325933: Set var_B4 = Me.Txt
  loc_1325939: Call 0.Method_Form_Load0 (CInt(3), var_B8)
  loc_1325954: Set var_88 = Me.Txt
  loc_132595A: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1325972: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1325981: Me.DGSaleAc.Top = CVar(var_8C.Left)
  loc_13259A1: Set var_88 = Me.Txt
  loc_13259A7: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_13259C6: Me.DGSaleTax.Left = CVar(var_8C.Left)
  loc_13259E2: Set var_B4 = Me.Txt
  loc_13259E8: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_1325A09: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1325A21: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1325A30: Me.DGSaleTax.Top = CVar(var_8C.Left)
  loc_1325A4D: If (global_52 = "Banquet") Then
  loc_1325A6B:   var_D8 = "SELECT ItemCatMast.Code, ItemCatMast.Name FROM ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  AND ItemCatMast.RestCode='"
  loc_1325A82:   unk_4E2DB6.Execute var_D8 & MemVar_1F95078 & "BANQ' ORDER BY ItemCatMast.Name", var_D4, -1
  loc_1325A93:   Set global_60 = Me.Txt
  loc_1325AB5:   CVarUnk
  loc_1325ABA:   VerifyVarObj
  loc_1325AC0:   Set var_88 = Me.DGHelp
  loc_1325AC6:   LateIdStAd
  loc_1325AD7: Else
  loc_1325AEB:   var_C4 = "SELECT ItemCatMast.Code, ItemCatMast.Name, Depart.Name as DepartmentName FROM ItemCatMast LEFT JOIN Depart ON ItemCatMast.RestCode = Depart.Code WHERE (ItemcatMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_1325AFB:   unk_4E2DB6.Execute var_C4 & "' or ItemCatMast.LOGSITE_CODE='HO') ORDER BY ItemCatMast.Name", var_D4, -1
  loc_1325B0C:   Set global_60 = var_88
  loc_1325B2A:   CVarUnk
  loc_1325B2F:   VerifyVarObj
  loc_1325B35:   Set var_88 = Me.DGHelp
  loc_1325B3B:   LateIdStAd
  loc_1325B49: End If
  loc_1325B54: If (global_52 = "Banquet") Then
  loc_1325B6B:   var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,ShortName,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,IC.U_Name As IUName,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name As RestName,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code Where (IC.LOGSITE_CODE='" & MemVar_1F95078
  loc_1325B7B:   unk_4E2DB6.Execute var_C4 & "' or IC.LOGSITE_CODE='HO')  and RestType in ('Banquet') and D.OutletYN='Y' ORDER BY D.Name,IC.Name", var_D4, -1
  loc_1325B8C:   Set global_56 = var_88
  loc_1325BA4: Else
  loc_1325BB8:   var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,ShortName,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,IC.U_Name As IUName,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name As RestName,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code Where (IC.LOGSITE_CODE='" & MemVar_1F95078
  loc_1325BC8:   unk_4E2DB6.Execute var_C4 & "' or IC.LOGSITE_CODE='HO') AND RestType not in ('Banquet') and D.OutletYN='Y' ORDER BY D.Name,IC.Name", var_D4, -1
  loc_1325BD9:   Set global_56 = var_88
  loc_1325BEE: End If
  loc_1325C09: var_D8 = "Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and  (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Left(MainGrCodeS,3) IN ('230','240','250','260','270','280') Order by Name"
  loc_1325C12: unk_4E2DB6.Execute var_D8, var_D4, -1
  loc_1325C23: Set global_64 = var_88
  loc_1325C41: CVarUnk
  loc_1325C46: VerifyVarObj
  loc_1325C52: LateIdStAd
  loc_1325C7B: var_D8 = "Select distinct Code As Code,Name From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_1325C84: unk_4E2DB6.Execute var_D8, var_D4, -1
  loc_1325C95: Set global_68 = Me.DGSaleAc
  loc_1325CB3: CVarUnk
  loc_1325CB8: VerifyVarObj
  loc_1325CC4: LateIdStAd
  loc_1325CDD: If (global_52 = "Banquet") Then
  loc_1325CFB:   var_D8 = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Depart.RestType='Banquet' and OutletYN='Y' Order by Name"
  loc_1325D04:   unk_4E2DB6.Execute var_D8, var_D4, -1
  loc_1325D15:   Set global_72 = Me.DGSaleTax
  loc_1325D33:   CVarUnk
  loc_1325D38:   VerifyVarObj
  loc_1325D3E:   Set var_88 = Me.DGRest
  loc_1325D44:   LateIdStAd
  loc_1325D55: Else
  loc_1325D70:   var_D8 = "Select Code,Name,ShortName From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  AND RestType<>'Banquet' and OutletYN='Y' Order by Name"
  loc_1325D79:   unk_4E2DB6.Execute var_D8, var_D4, -1
  loc_1325D8A:   Set global_72 = var_88
  loc_1325DA8:   CVarUnk
  loc_1325DAD:   VerifyVarObj
  loc_1325DB3:   Set var_88 = Me.DGRest
  loc_1325DB9:   LateIdStAd
  loc_1325DC7: End If
  loc_1325DD3: Set var_88 = Me
  loc_1325DDC: var_C4 = "INI"
  loc_1325DEA: Call Proc_51_36_E7AD0C(Proc_5_1_100EC1C(var_C4, var_88, global_56, var_88, global_72, var_88, var_88, global_72), var_88, var_88, global_68, var_88)
  loc_1325DFE: Call 0.Method_arg_160 (var_88, var_88, global_64)
  loc_1325E0C: Call 0.Method_arg_164 (var_88, var_88)
  loc_1325E14: Call Proc_51_38_14031A0(var_88)
  loc_1325E19: Exit Sub
  loc_1325E1A: ' Referenced from: 13256DC
  loc_1325E22: Set var_88 = Err()
  loc_1325E28: Call 0.Method_arg_2C (var_C4)
  loc_1325E49: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_1325E5C: Exit Sub
  loc_1325E5D: Exit Sub
End Sub

Private Sub Form_Resize() 'F16188
  'Data Table: 4E2D9C
  Dim var_8C As Label
  Dim var_A0 As TextBox
  loc_F1609E: Call 0.Method_arg_50 (var_88)
  loc_F160B0: Me.LblFormCaption.Caption = var_88
  loc_F160C9: Me.LblFormCaption.Left = CDbl(0)
  loc_F160D5: Set var_A0 = Me.TopCtrl1
  loc_F160DB: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_F160E8: Set var_8C = Me.TopCtrl1
  loc_F160EE: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_F16108: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_F16123: Call 0.Method_arg_100 (var_B8)
  loc_F16135: Me.LblFormCaption.Width = var_B8
  loc_F16148: If (global_52 = "Banquet") Then
  loc_F1614B:   Exit Sub
  loc_F1614C: End If
  loc_F1615A: Set var_8C = Me.Txt
  loc_F16160: Call 0.Method_Form_Resize0 (CInt(5), var_A0)
  loc_F1617F: If (var_A0.Text = "Category") Then
  loc_F16182:   GoTo loc_F16185
  loc_F16185:   ' Referenced from: F16182
  loc_F16185: End If
  loc_F16185: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6D208
  'Data Table: 4E2D9C
  loc_E6D1B7: Set global_56 = Nothing
  loc_E6D1C9: Set global_64 = Nothing
  loc_E6D1DB: Set global_68 = Nothing
  loc_E6D1ED: Set global_72 = Nothing
  loc_E6D1FF: Set global_60 = Nothing
  loc_E6D206: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8BB00
  'Data Table: 4E2D9C
  loc_E8BA9C: On Error Goto loc_E8BABC
  loc_E8BAB3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8BABB: Exit Sub
  loc_E8BABC: ' Referenced from: E8BA9C
  loc_E8BAC4: Set var_88 = Err()
  loc_E8BACA: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8BAEB: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8BAFE: Exit Sub
  loc_E8BAFF: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3F2D4
  'Data Table: 4E2D9C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F1CB: Me.DGHelp.Visible = False
  loc_F3F1EA: If (Me.RecordCount > 0) Then
  loc_F3F229:   Set var_B4 = Me.Txt
  loc_F3F22F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3F237:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3F26A:   var_B0 = Me.Fields.Item("Code")
  loc_F3F289:   Set var_B4 = Me.Txt
  loc_F3F28F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3F297:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3F2AD: End If
  loc_F3F2B8: Set var_A8 = Me.Txt
  loc_F3F2BE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F3F2C6: var_B0.SetFocus
  loc_F3F2D2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6FCFC
  'Data Table: 4E2D9C
  loc_E6FCBA: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E6FCD1: Set var_8C = Me.FGPoint
  loc_E6FCED: Proc_6_138_106E830(Me.DGHelp, global_60, CInt(0))
  loc_E6FCFB: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_9 'F4AF34
  'Data Table: 4E2D9C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4AE2B: Me.DGSaleTax.Visible = False
  loc_F4AE4A: If (Me.RecordCount > 0) Then
  loc_F4AE89:   Set var_B4 = Me.Txt
  loc_F4AE8F:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4AE97:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4AECA:   var_B0 = Me.Fields.Item("Code")
  loc_F4AEE9:   Set var_B4 = Me.Txt
  loc_F4AEEF:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4AEF7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4AF0D: End If
  loc_F4AF18: Set var_A8 = Me.Txt
  loc_F4AF1E: Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4))
  loc_F4AF26: var_B0.SetFocus
  loc_F4AF32: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_1F 'E6FFE0
  'Data Table: 4E2D9C
  loc_E6FF9E: Proc_6_153_E91D24(Me.DGSaleTax, arg_14)
  loc_E6FFB5: Set var_8C = Me.FGPoint
  loc_E6FFD1: Proc_6_138_106E830(Me.DGSaleTax, global_68, CInt(4))
  loc_E6FFDF: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_9 'F4C954
  'Data Table: 4E2D9C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C84B: Me.DGSaleAc.Visible = False
  loc_F4C86A: If (Me.RecordCount > 0) Then
  loc_F4C8A9:   Set var_B4 = Me.Txt
  loc_F4C8AF:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4C8B7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4C8EA:   var_B0 = Me.Fields.Item("Code")
  loc_F4C909:   Set var_B4 = Me.Txt
  loc_F4C90F:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4C917:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4C92D: End If
  loc_F4C938: Set var_A8 = Me.Txt
  loc_F4C93E: Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3))
  loc_F4C946: var_B0.SetFocus
  loc_F4C952: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_1F 'E6FEB8
  'Data Table: 4E2D9C
  loc_E6FE76: Proc_6_153_E91D24(Me.DGSaleAc, arg_14)
  loc_E6FE8D: Set var_8C = Me.FGPoint
  loc_E6FEA9: Proc_6_138_106E830(Me.DGSaleAc, global_64, CInt(3))
  loc_E6FEB7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAAFDC
  'Data Table: 4E2D9C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAAF50: On Error Goto loc_EAAFD6
  loc_EAAF60: Me.LblUser.Caption = vbNullString
  loc_EAAF75: Me.LblLDt.Caption = vbNullString
  loc_EAAFA0: Call Proc_51_36_E7AD0C(Proc_5_1_100EC1C("ADD", Me))
  loc_EAAFAB: Call Proc_51_37_EE2B74(global_56)
  loc_EAAFBB: Set var_88 = Me.Txt
  loc_EAAFC1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAAFC9: var_94.SetFocus
  loc_EAAFD5: Exit Sub
  loc_EAAFD6: ' Referenced from: EAAF50
  loc_EAAFD6: Proc_6_60_E63754(var_94)
  loc_EAAFDB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC48BC
  'Data Table: 4E2D9C
  loc_EC4824: On Error Goto loc_EC48B4
  loc_EC485E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC486D:   Set var_110 = Me
  loc_EC4884:   Call Proc_51_36_E7AD0C(Proc_5_1_100EC1C("INI", var_110))
  loc_EC488F:   Call Proc_51_40_F6C850(global_56)
  loc_EC4894:   Call Proc_51_38_14031A0()
  loc_EC489C: Else
  loc_EC48A2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC48AA:   Call var_110.SetFocus
  loc_EC48B3: End If
  loc_EC48B3: Exit Sub
  loc_EC48B4: ' Referenced from: EC4824
  loc_EC48B4: Proc_6_60_E63754()
  loc_EC48B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '128DAB0
  'Data Table: 4E2D9C
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_A4 As String
  Dim unk_4E2DB6 As Connection15
  Dim var_98 As Recordset15
  Dim var_118 As Variant
  Dim var_C8 As Variant
  loc_128D500: On Error Goto loc_128DA60
  loc_128D511: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_128D514:   Exit Sub
  loc_128D515: End If
  loc_128D523: Set var_9C = Me.Txt
  loc_128D529: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_A0)
  loc_128D548: If (var_A0.Text = "Category") Then
  loc_128D560:   var_9C = Me.Fields
  loc_128D570:   var_C8 = var_9C.Item("Code").Value
  loc_128D57D:   var_D4 = "Item Master"
  loc_128D5C5:   If (Proc_6_108_101061C(MemVar_1F95044, "ItemMast", "ItemCatCode", CStr(var_C8)) = 0) Then
  loc_128D5C8:     Exit Sub
  loc_128D5C9:   End If
  loc_128D5C9: End If
  loc_128D5F0: unk_4E2DB6.Execute "Select Code From RevMast Where Name='" & global_76 & "'", var_C8, -1
  loc_128D5FB: Set var_98 = var_9C
  loc_128D611: var_D0 = var_98.RecordCount
  loc_128D61F: If (var_D0 > 0) Then
  loc_128D667:   var_118 = "Select Count(*) from PayCharge Where PayType='" & var_98.Fields.Item(0).Value & "'" 
  loc_128D675:   unk_4E2DB6.Execute CStr(var_118), var_138, -1
  loc_128D6D6:   If (var_13C.Fields.Item(0).Value > 0) Then
  loc_128D6FA:     MsgBox("Related Record Exist, Entry Can't Be Deleted", &H40, "Validation Check", var_118, var_138)
  loc_128D70A:     Exit Sub
  loc_128D70B:   End If
  loc_128D70B: End If
  loc_128D742: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_128D74E:   unk_4E2DB6.BeginTrans var_D0
  loc_128D764:   var_94 = Me.Bookmark 'Variant
  loc_128D7B0:   var_118 = "Delete From ItemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_128D7BE:   unk_4E2DB6.Execute CStr(var_118), var_138, -1
  loc_128D7FF:   var_C8 = Me.Fields.Item("Code").Value
  loc_128D809:   var_168 = 0
  loc_128D81C:   var_160 = 0
  loc_128D827:   var_15C = 0
  loc_128D83A:   var_154 = 0
  loc_128D845:   var_150 = 0
  loc_128D858:   var_148 = 0
  loc_128D8A1:   Proc_154_5_10E3BD4(MemVar_1F95044, "ItemCatMast", "Code", &HC8, CStr(var_C8), 0, 0, 0)
  loc_128D8F0:   unk_4E2DB6.Execute "Delete From RevMast Where Name='" & global_76 & "'", var_C8, -1
  loc_128D907:   var_160 = 0
  loc_128D91A:   var_15C = 0
  loc_128D925:   var_154 = 0
  loc_128D938:   var_150 = 0
  loc_128D943:   var_148 = 0
  loc_128D956:   var_144 = 0
  loc_128D994:   var_A4 = "RevMast"
  loc_128D99D:   Proc_154_5_10E3BD4(MemVar_1F95044, var_A4, "Name", &HC8, global_76, 0, 0, 0)
  loc_128D9BF:   unk_4E2DB6.CommitTrans
  loc_128D9CF:   Me.Requery -1
  loc_128D9DF:   Me.Requery -1
  loc_128D9FF:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_128DA0C:     Me.Bookmark = var_94
  loc_128DA14:   Else
  loc_128DA28:     If (Me.EOF = 0) Then
  loc_128DA31:       Me.MoveLast
  loc_128DA36:     End If
  loc_128DA36:   End If
  loc_128DA36:   Call Proc_51_38_14031A0(var_144, 0, var_148, var_150)
  loc_128DA57:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_128DA5F: End If
  loc_128DA5F: Exit Sub
  loc_128DA60: ' Referenced from: 128D500
  loc_128DA66: unk_4E2DB6.RollbackTrans
  loc_128DA73: Set var_9C = Err()
  loc_128DA79: Call 0.Method_arg_2C (var_A4, 0, var_154)
  loc_128DA9A: MsgBox(CVar(var_A4), &H30, " Deletion Error ", var_118, var_138)
  loc_128DAAD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F3317C
  'Data Table: 4E2D9C
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F33060: On Error Goto loc_F33176
  loc_F33071: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_F33074:   Exit Sub
  loc_F33075: End If
  loc_F33098: Call Proc_51_36_E7AD0C(Proc_5_1_100EC1C("EDIT", Me))
  loc_F330B1: Set var_8C = Me.Txt
  loc_F330B7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F330CA: global_100 = var_94.Text
  loc_F330E5: Set var_8C = Me.Txt
  loc_F330EB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F330F3: var_94.Enabled = False
  loc_F3310C: Set var_8C = Me.Txt
  loc_F33112: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F3311A: var_94.Enabled = False
  loc_F33131: Set var_8C = Me.Txt
  loc_F33137: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F3313F: var_94.SetFocus
  loc_F33158: Me.LblUser.Caption = vbNullString
  loc_F3316D: Me.LblLDt.Caption = vbNullString
  loc_F33175: Exit Sub
  loc_F33176: ' Referenced from: F33060
  loc_F33176: Proc_6_60_E63754(global_56)
  loc_F3317B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A444
  'Data Table: 4E2D9C
  loc_E1A439: Me.Global.Unload Me
  loc_E1A441: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F5FB3C
  'Data Table: 4E2D9C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F5FA18: On Error Goto loc_F5FAD6
  loc_F5FA24: var_88 = Me.RecordCount
  loc_F5FA32: If (var_88 <= 0) Then
  loc_F5FA3B:   var_B8 = "Information"
  loc_F5FA56:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F5FA66:   Exit Sub
  loc_F5FA67: End If
  loc_F5FA72: If (global_52 = "Banquet") Then
  loc_F5FA7C:   var_10C = "SELECT distinct IC.Code AS SearchCode,'Banquet' As Outlet,IC.Name AS ItemCategory,IC.CatType As Type,IC.RoundOff,IC.Flag,VS.Name As SaleAc,TaxStru.Name As TaxStructure FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Where IC.RestCode='" & MemVar_1F95078
  loc_F5FA83:   MemVar_1F950E4 = var_10C & "BANQ' ORDER BY IC.Name"
  loc_F5FA8D: Else
  loc_F5FA94:   var_10C = "SELECT distinct IC.Code AS SearchCode,D.Name As Outlet,IC.Name AS ItemCategory,IC.CatType As Type,IC.RoundOff,IC.Flag,VS.Name As SaleAc,TaxStru.Name As TaxStructure FROM ((ItemCatMast IC Inner Join ViewSubGroup VS On IC.AcName=VS.SubCode) Inner Join TaxStru On IC.TaxStru=TaxStru.Code) Inner Join Depart D On IC.RestCode=D.Code Where (IC.LogSite_Code='" & MemVar_1F95078
  loc_F5FA9B:   MemVar_1F950E4 = var_10C & "' OR IC.LogSite_Code='HO') and  RestType not in ('Banquet') and D.OutletYN='Y' ORDER BY IC.Name"
  loc_F5FAA2: End If
  loc_F5FAA8: MemVar_1F95120 = Me
  loc_F5FAAF: var_10C = "2000,3000,1200,550,1000,2500,2500"
  loc_F5FAB5: Proc_6_126_F1C850(var_10C, MemVar_1F950E4)
  loc_F5FAD0: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5FAD5: Exit Sub
  loc_F5FAD6: ' Referenced from: F5FA18
  loc_F5FADE: Set var_110 = Err()
  loc_F5FAE4: Call 0.Method_arg_1C (var_88)
  loc_F5FAF5: If (var_88 <> 0) Then
  loc_F5FB00:   Set var_110 = Err()
  loc_F5FB06:   Call 0.Method_arg_2C (var_10C)
  loc_F5FB27:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F5FB3A: End If
  loc_F5FB3A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35048
  'Data Table: 4E2D9C
  loc_E35038: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35040: Call Proc_51_38_14031A0(global_56)
  loc_E35045: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34E68
  'Data Table: 4E2D9C
  loc_E34E58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34E60: Call Proc_51_38_14031A0(global_56)
  loc_E34E65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34EC8
  'Data Table: 4E2D9C
  loc_E34EB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34EC0: Call Proc_51_38_14031A0(global_56)
  loc_E34EC5: Exit Sub
  loc_E34EC6: arg_2478 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34F28
  'Data Table: 4E2D9C
  loc_E34F18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34F20: Call Proc_51_38_14031A0(global_56)
  loc_E34F25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '107492C
  'Data Table: 4E2D9C
  Dim unk_4E2DB6 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_10746AC: On Error Goto loc_10748E3
  loc_10746C5: unk_4E2DB6.Execute "SELECT IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.Flag,IC.CatType As Type,D.Name As Outlet,VS.Name As SaleAc,TaxStru.Name As TaxStructure,D.Name as OutLetName  FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode)Left Join TaxStru On IC.TaxStru=TaxStru.Code) Left Join Depart D On IC.RestCode=D.Code ORDER BY IC.Name", var_BC, -1
  loc_10746D0: Set var_88 = var_C0
  loc_10746DF: var_C4 = var_88.RecordCount
  loc_10746ED: If (var_C4 = 0) Then
  loc_1074709:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1074719:   Exit Sub
  loc_107471A: End If
  loc_1074729: var_12C = MemVar_1F950B4 & "\ItemCatMast.ttx"
  loc_1074730: Set var_C0 = var_88 
  loc_107473C: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1074746: Set var_88 = var_C0
  loc_107474C: var_AC = CVar(var_12E) 'Integer
  loc_107474F: var_98 = var_AC 'Variant
  loc_107476B: var_128 = MemVar_1F950B4 & "\ItemCatMast.RPT"
  loc_1074774: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_107477F: MemVar_1F951E8 = var_C0
  loc_107479A: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10747A2: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10747AE: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10747C7:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10747CF:   Call 0.Method_arg_20 (var_138)
  loc_10747D7:   Call 0.Method_arg_30 (var_128)
  loc_107481D:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1074833:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107483B:     Call 0.Method_arg_20 (var_138)
  loc_1074843:     Call 0.Method_arg_38 ("'Item Category Master'")
  loc_107484F:   End If
  loc_1074852: Next var_132 'Integer
  loc_1074870: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1074878: Call 0.Method_arg_2C (var_D4)
  loc_1074886: Call 0.Method_arg_150 (var_F4)
  loc_1074891: Call 0.Method_arg_50 (var_128)
  loc_107489B: Set var_138 = Nothing
  loc_10748B5: Set var_C0 = MemVar_1F951E8 
  loc_10748C1: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_10748CC: MemVar_1F951E8 = var_C0
  loc_10748DF: Set var_88 = Nothing
  loc_10748E2: Exit Sub
  loc_10748E3: ' Referenced from: 10746AC
  loc_10748EB: Set var_C0 = Err()
  loc_10748F1: Call 0.Method_arg_2C (var_128, &HFF)
  loc_10748FC: Call 0.Method_arg_50 (var_12C)
  loc_1074918: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_107492B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E56494
  'Data Table: 4E2D9C
  Dim Me As Recordset15
  loc_E5645B: Me.Requery -1
  loc_E5646B: Me.Requery -1
  loc_E5647B: Me.Requery -1
  loc_E5648B: Me.Requery -1
  loc_E56490: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15895E8
  'Data Table: 4E2D9C
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_C4 As String
  Dim unk_4E2DB6 As Connection15
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
  Dim var_1EC As Variant
  Dim var_214 As TextBox
  Dim var_228 As Variant
  Dim var_258 As Variant
  Dim var_260 As TextBox
  Dim var_274 As Variant
  Dim var_284 As Variant
  Dim var_2AC As TextBox
  Dim var_380 As Variant
  Dim var_388 As TextBox
  Dim var_3CC As Variant
  Dim var_44C As Variant
  Dim var_120 As String
  Dim var_138 As String
  Dim var_1CC As String
  Dim var_218 As String
  Dim var_4B8 As String
  Dim var_170 As TextBox
  Dim var_190 As Variant
  loc_158857C: On Error Goto loc_1589596
  loc_1588583: var_86 = CByte(0) 'Byte
  loc_1588592: Set var_A0 = Me.Txt
  loc_1588598: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15885C1: If (Proc_6_27_EA61EC(var_A4, "Name") = 0) Then
  loc_15885CB:   Call Txt_GotFocus()
  loc_15885D0:   Exit Sub
  loc_15885D1: End If
  loc_15885DC: Set var_A0 = Me.Txt
  loc_15885E2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_158860B: If (Proc_6_27_EA61EC(var_A4, "Outlet Name") = 0) Then
  loc_1588615:   Call Txt_GotFocus()
  loc_158861A:   Exit Sub
  loc_158861B: End If
  loc_1588626: Set var_A0 = Me.Txt
  loc_158862C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, CInt(1))
  loc_1588655: If (Proc_6_27_EA61EC(var_A4, "Post in A/c") = 0) Then
  loc_158865F:   Call Txt_GotFocus()
  loc_1588664:   Exit Sub
  loc_1588665: End If
  loc_1588670: Set var_A0 = Me.Txt
  loc_1588676: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, CInt(1))
  loc_158869F: If (Proc_6_27_EA61EC(var_A4, "Tax Structure") = 0) Then
  loc_15886A9:   Call Txt_GotFocus()
  loc_15886AE:   Exit Sub
  loc_15886AF: End If
  loc_15886B2: Call Proc_51_39_10F739C(var_AE, CInt(1))
  loc_15886BD: If (var_AE = &HFF) Then
  loc_15886C0:   Exit Sub
  loc_15886C1: End If
  loc_15886C5: Set var_A0 = Me.TopCtrl1
  loc_15886CB: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_15886E4: If (CStr(var_A4) = "Add") Then
  loc_15886ED:   var_E4 = 0
  loc_158870A:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE isnumeric(SUBSTRING(Code,3,4) )=1 and SITE_CODE='" & MemVar_1F95070
  loc_158871A:   unk_4E2DB6.Execute CStr(var_A4) & "'", var_C0, -1
  loc_1588722:   var_A0 = var_A0.Fields
  loc_158872A:   var_E4 = var_A4.Item(var_A4)
  loc_1588732:   var_A8 = var_A8.Value
  loc_158876B:   var_108 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1588791:   var_F4 = Format(CStr(var_F4), "0000")
  loc_1588799:   var_118 = (1 + var_F4)
  loc_15887A4:   global_96 = CStr(var_118)
  loc_15887B9: Else
  loc_15887D6:   var_A4 = Me.Fields.Item("Code")
  loc_15887ED:   global_96 = CStr(var_A4.Value)
  loc_15887FE: End If
  loc_1588807: unk_4E2DB6.BeginTrans var_11C
  loc_1588810: var_86 = CByte(1) 'Byte
  loc_1588818: Set var_A0 = Me.TopCtrl1
  loc_158881E: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1588826: var_AC = CStr(var_108)
  loc_1588837: If (var_AC = "Add") Then
  loc_158884B:   Set var_A0 = Me.Txt
  loc_1588851:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC)
  loc_1588865:   Call Proc_51_42_F7223C(var_AC)
  loc_158886D:   var_9C = var_A4.Text
  loc_158888E:   var_AC = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,Flag,CatType,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,RevCode,SITE_CODE,LOGSITE_CODE)"
  loc_1588895:   var_C4 = var_AC & " Values('"
  loc_15888B7:   Set var_A0 = Me.Txt
  loc_15888BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_120, CVar(var_C4 & global_96 & "',"))
  loc_15888C5:   var_4B0 = var_A4.Text
  loc_15888D3:   Proc_6_17_EAAE40(var_F4, CVar(var_120), -1)
  loc_15888E4:   var_130 = var_4B4 & var_F4 & ",'" 
  loc_15888F6:   Set var_A8 = Me.Txt
  loc_15888FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134, var_138)
  loc_1588904:   var_130 = var_134.Tag
  loc_1588927:   Set var_16C = Me.Txt
  loc_158892D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_170)
  loc_158893C:   Proc_6_17_EAAE40(var_190, CVar(var_170))
  loc_158895F:   Set var_1C4 = Me.Txt
  loc_1588965:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1C8)
  loc_1588993:   Set var_210 = Me.Txt
  loc_1588999:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_214)
  loc_15889CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_260)
  loc_15889E0:   var_284 = var_F4 & CVar(var_138) & "'," & var_190 & ",'" & CVar(var_1C8.Tag) & "','" & CVar(var_214.Tag) & "','" & CVar(var_260.Text) 
  loc_15889FB:   Set var_2A8 = Me.Txt
  loc_1588A01:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2AC)
  loc_1588A42:   Proc_6_7_F26918(var_350, Date)
  loc_1588A65:   Set var_384 = Me.Txt
  loc_1588A6B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_388)
  loc_1588A87:   var_3CC = var_284 & "','" & CVar(var_2AC.Text) & "','Y','" & CVar(MemVar_1F950C8) & "'," & var_350 & ",'A','" & CVar(var_388.Text) & "','" 
  loc_1588AAD:   var_44C = var_3CC & CVar(var_9C) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_1588ACE:   unk_4E2DB6.Execute CStr(var_44C & CVar(MemVar_1F95078) & "')"), , 
  loc_1588B68:   var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_9C
  loc_1588B6F:   var_120 = var_AC & "','"
  loc_1588B7C:   var_F8 = global_124 & " - "
  loc_1588B8D:   Set var_A0 = Me.Txt
  loc_1588B93:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_C4, var_C4 & global_96)
  loc_1588B9B:   var_120 = var_A4.Text
  loc_1588BA8:   var_1CC = -1 & var_284 & var_C4
  loc_1588BDC:   var_108 = CVar(var_1C8.Tag & "','" & global_124 & "','Y','Amount','Detail','POS','" & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',") 'String
  loc_1588BED:   Proc_6_7_F26918(var_F4, Date)
  loc_1588BFE:   var_130 = var_108 & var_F4 & ",'A','C','" 
  loc_1588C10:   Set var_A8 = Me.Txt
  loc_1588C16:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134, var_4BC)
  loc_1588C1E:   var_130 = var_134.Tag
  loc_1588C26:   var_148 = CVar(var_4BC) 'String
  loc_1588C44:   Set var_16C = Me.Txt
  loc_1588C4A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_1588C78:   Set var_1C4 = Me.Txt
  loc_1588C7E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_1588CAC:   Set var_210 = Me.Txt
  loc_1588CB2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_1588CD8:   var_258 = Me.Txt & var_148 & "','" & CVar(var_170.Tag) & "','" & CVar(var_1C8.Text) & "','" & CVar(var_214.Tag) & "','" & CVar(MemVar_1F95078) 
  loc_1588CEF:   unk_4E2DB6.Execute CStr(var_258 & "')"), , 
  loc_1588D58: Else
  loc_1588D75:   Set var_A0 = Me.Txt
  loc_1588D7B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, "UPDATE ItemCatMast SET Name=")
  loc_1588D83:   var_C0 = CVar(var_A4) 'Address
  loc_1588D8A:   Proc_6_17_EAAE40(var_F4, var_C0, var_44C)
  loc_1588D92:   var_108 = -1 & var_F4 
  loc_1588DAA:   Set var_A8 = Me.Txt
  loc_1588DB0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_134)
  loc_1588DBF:   Proc_6_17_EAAE40(var_148, CVar(var_134))
  loc_1588DD0:   var_168 = var_108 & ",RoundOff=" & var_148 & ",AcName='" 
  loc_1588DE2:   Set var_16C = Me.Txt
  loc_1588DE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_170, var_AC)
  loc_1588DF0:   var_168 = var_170.Tag
  loc_1588E16:   Set var_1C4 = Me.Txt
  loc_1588E1C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1C8)
  loc_1588E4A:   Set var_210 = Me.Txt
  loc_1588E50:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_214)
  loc_1588E7E:   Set var_25C = Me.Txt
  loc_1588E84:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_260)
  loc_1588E97:   var_274 = var_384 & CVar(var_AC) & "',TaxStru='" & CVar(var_1C8.Tag) & "',Flag='" & CVar(var_214.Text) & "',CatType='" & CVar(var_260.Text) 
  loc_1588EB2:   Set var_2A8 = Me.Txt
  loc_1588EB8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2AC)
  loc_1588F02:   Proc_6_7_F26918(var_350, Date)
  loc_1588F13:   var_380 = var_274 & "',DrCr='" & CVar(var_2AC.Text) & "'," & " U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_350 & " ,U_AE='E',RevCode='" 
  loc_1588F5D:   unk_4E2DB6.Execute CStr(var_380 & global_80 & "',SITE_CODE='" & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(global_96) & "'"), , 
  loc_1588FD5:   var_E4 = 0
  loc_1588FF5:   var_AC = "Select Count(*) From RevMast Where Name='" & global_76
  loc_1589005:   unk_4E2DB6.Execute var_AC & "'", var_C0, -1
  loc_158900D:   var_A0 = var_A0.Fields
  loc_1589015:   var_E4 = var_A4.Item(var_A4)
  loc_158901D:   var_A8 = var_A8.Value
  loc_1589044:   If (var_F4 = 0) Then
  loc_1589058:     Set var_A0 = Me.Txt
  loc_158905E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC)
  loc_1589072:     Call Proc_51_42_F7223C(var_AC)
  loc_158907A:     var_9C = var_A4.Text
  loc_15890A2:     var_C4 = "Update ItemCatMast SET RevCode='" & var_9C & "' Where Code='"
  loc_15890BC:     unk_4E2DB6.Execute var_C4 & global_96 & "'", var_C0, -1
  loc_15890E6:     var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_9C
  loc_15890FA:     var_F8 = global_124 & " - "
  loc_1589111:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_C4, var_C4 & global_96, var_AC & "','")
  loc_1589119:     var_284 = var_A4.Text
  loc_1589122:     var_138 = -1 & var_C4
  loc_1589153:     var_4B8 = var_25C & var_2AC.Text & "','" & global_124 & "','Y','Amount','Detail','POS','" & MemVar_1F95078 & "','" & MemVar_1F950C8
  loc_1589168:     Proc_6_7_F26918(var_F4, CVar(Proc_6_14_EF402C(CVar(var_4B8 & "',"), Me.Txt)))
  loc_158918B:     Set var_A8 = Me.Txt
  loc_1589191:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134)
  loc_15891BF:     Set var_16C = Me.Txt
  loc_15891C5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_15891F3:     Set var_1C4 = Me.Txt
  loc_15891F9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_1589227:     Set var_210 = Me.Txt
  loc_158922D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_1589240:     var_228 = var_F4 & var_F4 & ",'A','C','" & CVar(var_134.Tag) & "','" & CVar(var_170.Tag) & "','" & CVar(var_1C8.Text) & "','" & CVar(var_214.Tag) 
  loc_158926A:     unk_4E2DB6.Execute CStr(var_228 & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_15892D3:   Else
  loc_15892ED:     var_C4 = global_124 & " - "
  loc_15892FE:     Set var_A0 = Me.Txt
  loc_1589304:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, var_C4)
  loc_158930C:     "Update RevMast Set Name='" = var_A4.Text
  loc_1589319:     var_120 = -1 & var_284 & var_AC
  loc_1589331:     var_218 = var_AC & "','" & "',ShortName='" & global_124 & "',SysYN='Y',AppMode='Amount',FlagAMR='Detail',FlagType='POS',Site_Code='"
  loc_158934D:     var_108 = CVar(var_218 & MemVar_1F95070 & "',U_Name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_158935B:     Proc_6_7_F26918(var_F4, CVar(Proc_6_14_EF402C(var_108)))
  loc_1589363:     var_118 = var_25C & var_F4 
  loc_1589367:     var_D4 = ",U_AE='E',FieldType='C',DeskCode='"
  loc_158937E:     Set var_A8 = Me.Txt
  loc_1589384:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_134)
  loc_15893B2:     Set var_16C = Me.Txt
  loc_15893B8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_15893E6:     Set var_1C4 = Me.Txt
  loc_15893EC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8)
  loc_1589408:     var_1EC = var_118 & var_D4 & CVar(var_134.Tag) & "',TaxStru='" & CVar(var_170.Tag) & "',Type='" & CVar(var_1C8.Text) & "',AcCode='" 
  loc_158941A:     Set var_210 = Me.Txt
  loc_1589420:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_214)
  loc_1589460:     unk_4E2DB6.Execute CStr(var_1EC & CVar(var_214.Tag) & "' Where Name='" & CVar(global_76) & "'"), , 
  loc_15894C2:   End If
  loc_15894C2: End If
  loc_15894C8: unk_4E2DB6.CommitTrans
  loc_15894D1: var_86 = CByte(0) 'Byte
  loc_15894E0: Me.Requery -1
  loc_15894F0: Me.Requery -1
  loc_158951D: Me.Find "Code='" & global_96 & "'", 0, 1
  loc_158952D: Set var_A0 = Me.TopCtrl1
  loc_1589533: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_158954C: If (CStr() = "Add") Then
  loc_158954F:   Call TopCtrl1_UnknownEvent_A()
  loc_1589554:   Exit Sub
  loc_1589555: End If
  loc_158956A: var_AC = "INI"
  loc_1589578: Call Proc_51_36_E7AD0C(Proc_5_1_100EC1C(var_AC, Me))
  loc_1589583: Call Proc_51_40_F6C850(global_56)
  loc_1589588: Call Proc_51_38_14031A0()
  loc_1589592: Set var_94 = Nothing
  loc_1589595: Exit Sub
  loc_1589596: ' Referenced from: 158857C
  loc_158959F: If (CInt(var_86) = 1) Then
  loc_15895A8:   unk_4E2DB6.RollbackTrans
  loc_15895AD: End If
  loc_15895B5: Set var_A0 = Err()
  loc_15895BB: Call 0.Method_arg_2C (var_AC)
  loc_15895D4: MsgBox(CVar(var_AC), &H10, var_F4, var_108, var_118)
  loc_15895E7: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAEC8C
  'Data Table: 4E2D9C
  loc_EAEC14: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EAEC17:   Call DGRest_UnknownEvent_9()
  loc_EAEC1C: End If
  loc_EAEC38: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EAEC3B:   Call DGHelp_UnknownEvent_9()
  loc_EAEC40: End If
  loc_EAEC5C: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_EAEC5F:   Call DGSaleAc_UnknownEvent_9()
  loc_EAEC64: End If
  loc_EAEC80: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_EAEC83:   Call DGSaleTax_UnknownEvent_9()
  loc_EAEC88: End If
  loc_EAEC88: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '144A67C
  'Data Table: 4E2D9C
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1449B56: Set var_88 = Me.Txt
  loc_1449B5C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1449B6A: Proc_6_74_E23240(var_8C)
  loc_1449B76: Call Proc_51_40_F6C850(var_8C)
  loc_1449B7E: var_92 = Index
  loc_1449B89: If (var_92 = CInt(0)) Then
  loc_1449BA3:   If (Me.RecordCount > 0) Then
  loc_1449BB1:     Set var_8C = Me.FGPoint
  loc_1449BC9:     Proc_6_137_1192FDC(Me.DGHelp, global_60, Index)
  loc_1449BD7:   End If
  loc_1449BDA: Else
  loc_1449BE2:   If (var_92 = CInt(1)) Then
  loc_1449BFC:     If (Me.RecordCount > 0) Then
  loc_1449C0A:       Set var_8C = Me.FGPoint
  loc_1449C22:       Proc_6_137_1192FDC(Me.DGRest, global_72, Index)
  loc_1449C30:     End If
  loc_1449C7E:     Set var_88 = Me.Txt
  loc_1449C84:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1449C8C:     var_8C = var_8C.Text
  loc_1449CA4:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1449CB4:       Set var_88 = Me.Txt
  loc_1449CBA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1449CC2:       var_8C.Tag = vbNullString
  loc_1449CCE:       Exit Sub
  loc_1449CCF:     End If
  loc_1449CDC:     Set var_88 = Me.Txt
  loc_1449CE2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1449CEA:     var_A0 = var_8C.Text
  loc_1449CFC:     var_B0 = "Name"
  loc_1449D37:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1449D40:       Me.MoveFirst
  loc_1449D63:       Set var_88 = Me.Txt
  loc_1449D69:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1449D71:       0 = var_8C.Text
  loc_1449D8A:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1449D9F:     End If
  loc_1449DA2:   Else
  loc_1449DAA:     If (var_92 = CInt(3)) Then
  loc_1449DC4:       If (Me.RecordCount > 0) Then
  loc_1449DD2:         Set var_8C = Me.FGPoint
  loc_1449DEA:         Proc_6_137_1192FDC(Me.DGSaleAc, global_64)
  loc_1449DF8:       End If
  loc_1449E46:       Set var_88 = Me.Txt
  loc_1449E4C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1449E54:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1449E6C:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1449E7C:         Set var_88 = Me.Txt
  loc_1449E82:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1449E8A:         var_8C.Tag = vbNullString
  loc_1449E96:         Exit Sub
  loc_1449E97:       End If
  loc_1449EA4:       Set var_88 = Me.Txt
  loc_1449EAA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1449EB2:       var_A0 = var_8C.Text
  loc_1449EC4:       var_B0 = "Name"
  loc_1449EFF:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1449F08:         Me.MoveFirst
  loc_1449F2B:         Set var_88 = Me.Txt
  loc_1449F31:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1449F39:         0 = var_8C.Text
  loc_1449F52:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1449F67:       End If
  loc_1449F6A:     Else
  loc_1449F72:       If (var_92 = CInt(4)) Then
  loc_1449F8C:         If (Me.RecordCount > 0) Then
  loc_1449F9A:           Set var_8C = Me.FGPoint
  loc_1449FB2:           Proc_6_137_1192FDC(Me.DGSaleTax, global_68)
  loc_1449FC0:         End If
  loc_144A00E:         Set var_88 = Me.Txt
  loc_144A014:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_144A01C:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_144A034:         If (Index Or (var_A0 = vbNullString)) Then
  loc_144A044:           Set var_88 = Me.Txt
  loc_144A04A:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_144A052:           var_8C.Tag = vbNullString
  loc_144A05E:           Exit Sub
  loc_144A05F:         End If
  loc_144A06C:         Set var_88 = Me.Txt
  loc_144A072:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_144A07A:         var_A0 = var_8C.Text
  loc_144A08C:         var_B0 = "Name"
  loc_144A0A3:         var_B4 = Me.Fields.Item(var_B0)
  loc_144A0C7:         If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_144A0D0:           Me.MoveFirst
  loc_144A0F3:           Set var_88 = Me.Txt
  loc_144A0F9:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_144A101:           0 = var_8C.Text
  loc_144A11A:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_144A12F:         End If
  loc_144A132:       Else
  loc_144A13A:         If (var_92 = CInt(2)) Then
  loc_144A14C:           Set var_88 = Me.Txt
  loc_144A152:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_144A15A:           var_8C.SelStart = 0
  loc_144A173:           Set var_88 = Me.Txt
  loc_144A179:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_144A194:           Set var_90 = Me.Txt
  loc_144A19A:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_144A1A2:           var_B4.SelLength = Len(var_8C.Text)
  loc_144A1C2:           Set var_88 = Me.Txt
  loc_144A1C8:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_144A1D0:           var_A0 = var_8C.Text
  loc_144A1E2:           Set var_90 = Me.Txt
  loc_144A1E8:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_144A1F0:           var_B4.Tag = var_A0
  loc_144A206:         Else
  loc_144A20E:           If (var_92 = CInt(5)) Then
  loc_144A21E:             ReDim var_F0(0 To 1)
  loc_144A235:             var_F0(0) = "Category"
  loc_144A244:             var_F0(1) = "Charge"
  loc_144A25B:             global_104 = Array(var_F0)
  loc_144A266:             Set var_B4 = Me.ListView
  loc_144A281:             Set var_8C = Me.Txt
  loc_144A29B:             Set global_120 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_144A2B9:             Set var_88 = Me.Txt
  loc_144A2BF:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_144A2C7:             global_104 = var_8C.Text
  loc_144A2D9:             Set var_90 = Me.Txt
  loc_144A2DF:             Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_144A2E7:             var_B4.Tag = 2
  loc_144A2FD:           Else
  loc_144A305:             If (var_92 = CInt(6)) Then
  loc_144A313:               If (global_52 = "Banquet") Then
  loc_144A323:                 ReDim var_F0(0 To 7)
  loc_144A33A:                 var_F0(0) = "Food"
  loc_144A349:                 var_F0(1) = "Liquor"
  loc_144A358:                 var_F0(2) = "Confectionary"
  loc_144A367:                 var_F0(3) = "Beverage"
  loc_144A376:                 var_F0(4) = "Miscellaneous"
  loc_144A385:                 var_F0(5) = "Tobacco"
  loc_144A394:                 var_F0(6) = "Other Items  (Non Eatable)"
  loc_144A3A3:                 var_F0(7) = "Hall Rent"
  loc_144A3BA:                 global_104 = Array(var_F0)
  loc_144A3C5:                 Set var_B4 = Me.ListView
  loc_144A3E0:                 Set var_8C = Me.Txt
  loc_144A3FA:                 Set global_120 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_104)
  loc_144A418:                 Set var_88 = Me.Txt
  loc_144A41E:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_144A426:                 8 = var_8C.Text
  loc_144A438:                 Set var_90 = Me.Txt
  loc_144A43E:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_144A446:                 var_B4.Tag = global_104
  loc_144A45C:               Else
  loc_144A469:                 ReDim var_F0(0 To 5)
  loc_144A480:                 var_F0(0) = "Food"
  loc_144A48F:                 var_F0(1) = "Liquor"
  loc_144A49E:                 var_F0(2) = "Confectionary"
  loc_144A4AD:                 var_F0(3) = "Beverage"
  loc_144A4BC:                 var_F0(4) = "Miscellaneous"
  loc_144A4CB:                 var_F0(5) = "Tobacco"
  loc_144A4E2:                 global_104 = Array(var_F0)
  loc_144A4ED:                 Set var_B4 = Me.ListView
  loc_144A508:                 Set var_8C = Me.Txt
  loc_144A522:                 Set global_120 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_104)
  loc_144A540:                 Set var_88 = Me.Txt
  loc_144A546:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_144A54E:                 6 = var_8C.Text
  loc_144A560:                 Set var_90 = Me.Txt
  loc_144A566:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_144A56E:                 var_B4.Tag = global_104
  loc_144A581:               End If
  loc_144A584:             Else
  loc_144A58C:               If (var_92 = CInt(7)) Then
  loc_144A59C:                 ReDim var_F0(0 To 1)
  loc_144A5B3:                 var_F0(0) = "Dr"
  loc_144A5C2:                 var_F0(1) = "Cr"
  loc_144A5D9:                 global_104 = Array(var_F0)
  loc_144A5E4:                 Set var_B4 = Me.ListView
  loc_144A5FF:                 Set var_8C = Me.Txt
  loc_144A619:                 Set global_120 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_104)
  loc_144A637:                 Set var_88 = Me.Txt
  loc_144A63D:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_144A645:                 2 = var_8C.Text
  loc_144A657:                 Set var_90 = Me.Txt
  loc_144A65D:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_144A665:                 var_B4.Tag = global_104
  loc_144A678:               End If
  loc_144A678:             End If
  loc_144A678:           End If
  loc_144A678:         End If
  loc_144A678:       End If
  loc_144A678:     End If
  loc_144A678:   End If
  loc_144A678: End If
  loc_144A678: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1405C38
  'Data Table: 4E2D9C
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Variant
  Dim var_9C As DataGrid
  Dim var_A8 As Frame
  loc_140521A: If (CLng(Shift) = &H1B) Then
  loc_140521D:   Call Proc_51_40_F6C850()
  loc_1405222:   Exit Sub
  loc_1405223: End If
  loc_1405226: var_88 = KeyCode
  loc_1405231: If (var_88 = CInt(0)) Then
  loc_1405251:   Set var_9C = Me.FGPoint
  loc_1405283:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_60, Shift)
  loc_14052F0:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1405316:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint, 0)
  loc_1405324:   End If
  loc_1405327: Else
  loc_140532F:   If (var_88 = CInt(1)) Then
  loc_140535A:     Set var_9C = Nothing
  loc_1405388:     Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_72, Shift, 0, 1)
  loc_14053F7:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14053FE:       Set var_9C = Me.DGRest
  loc_140541D:       Proc_6_138_106E830(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_140542B:     End If
  loc_140542E:   Else
  loc_1405436:     If (var_88 = CInt(3)) Then
  loc_140548F:       Proc_6_69_134A630(Me.DGSaleAc, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_14054FE:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1405524:         Proc_6_138_106E830(Me.DGSaleAc, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1405532:       End If
  loc_1405535:     Else
  loc_140553D:       If (var_88 = CInt(4)) Then
  loc_140554B:         Set var_AC = Me.Txt
  loc_140555D:         Set var_A4 = Me.FGPoint
  loc_1405596:         Proc_6_69_134A630(Me.DGSaleTax, var_AC, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_14055B5:         var_B0 = Me.RecordCount
  loc_1405605:         If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1405613:           Set var_90 = Me.FGPoint
  loc_140562B:           Proc_6_138_106E830(Me.DGSaleTax, global_68, KeyCode, var_90, var_A4, 0)
  loc_1405639:         End If
  loc_140563C:       Else
  loc_1405644:         If (var_88 = CInt(6)) Then
  loc_1405652:           If (global_52 = "Banquet") Then
  loc_1405677:             Set var_8C = Me.Txt
  loc_140567D:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_1405685:             1 = var_90.Left
  loc_1405697:             Set var_9C = Me.Txt
  loc_140569D:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_14056A5:             var_9C = var_A4.Top
  loc_14056B7:             Set var_A8 = Me.Txt
  loc_14056BD:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_14056C5:             0 = var_AC.Height
  loc_14056D7:             Set var_B4 = Me.Txt
  loc_14056DD:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_14056E5:             var_C4 = var_C0.Width
  loc_140572D:             Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1405754:           Else
  loc_1405776:             Set var_8C = Me.Txt
  loc_140577C:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_1405784:             CInt((var_B8 + var_BC)) = var_90.Left
  loc_1405796:             Set var_9C = Me.Txt
  loc_140579C:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_14057A4:             CInt(var_C4) = var_A4.Top
  loc_14057B6:             Set var_A8 = Me.Txt
  loc_14057BC:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_14057C4:             2160 = var_AC.Height
  loc_14057D6:             Set var_B4 = Me.Txt
  loc_14057DC:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_14057E4:             var_C4 = var_C0.Width
  loc_140582C:             Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1405850:           End If
  loc_1405853:         Else
  loc_140585B:           If (var_88 = CInt(7)) Then
  loc_1405880:             Set var_8C = Me.Txt
  loc_1405886:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_140588E:             CInt((var_B8 + var_BC)) = var_90.Left
  loc_14058A0:             Set var_9C = Me.Txt
  loc_14058A6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_14058AE:             CInt(var_C4) = var_A4.Top
  loc_14058C0:             Set var_A8 = Me.Txt
  loc_14058C6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_14058CE:             1620 = var_AC.Height
  loc_14058E0:             Set var_B4 = Me.Txt
  loc_14058E6:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_14058EE:             var_C4 = var_C0.Width
  loc_1405936:             Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_140595D:           Else
  loc_1405965:             If (var_88 = CInt(5)) Then
  loc_140598A:               Set var_8C = Me.Txt
  loc_1405990:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_1405998:               CInt((var_B8 + var_BC)) = var_90.Left
  loc_14059AA:               Set var_9C = Me.Txt
  loc_14059B0:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_14059B8:               CInt(var_C4) = var_A4.Top
  loc_14059CA:               Set var_A8 = Me.Txt
  loc_14059D0:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_14059D8:               680 = var_AC.Height
  loc_14059EA:               Set var_B4 = Me.Txt
  loc_14059F0:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_14059F8:               var_C4 = var_C0.Width
  loc_1405A40:               Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1405A64:             End If
  loc_1405A64:           End If
  loc_1405A64:         End If
  loc_1405A64:       End If
  loc_1405A64:     End If
  loc_1405A64:   End If
  loc_1405A64: End If
  loc_1405AF0: If (((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGSaleAc.Visible) = 0)) And (CBool(Me.DGSaleTax.Visible) = 0)) And (CBool(Me.DGRest.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_1405AFB:   If (KeyCode = CInt(5)) Then
  loc_1405B16:     Set var_90 = Me.ListView.SelectedItem
  loc_1405B36:     If (var_90.Text = "Category") Then
  loc_1405B45:       Me.LblCatType.Visible = True
  loc_1405B5A:       Set var_8C = Me.Txt
  loc_1405B60:       Call 0.Method_Txt_KeyDown0 (CInt(6), var_90, &HFF, CInt(var_B0))
  loc_1405B68:       var_90.Visible = CInt((var_B8 + var_BC))
  loc_1405B77:     Else
  loc_1405B83:       Me.LblCatType.Visible = False
  loc_1405B98:       Set var_8C = Me.Txt
  loc_1405B9E:       Call 0.Method_Txt_KeyDown0 (CInt(6), var_90, 0)
  loc_1405BA6:       var_90.Visible = CInt(var_C4)
  loc_1405BB2:     End If
  loc_1405BB2:   End If
  loc_1405BC5:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_1405BCE:     Proc_6_76_E533C8(Shift, arg_14)
  loc_1405BD3:   End If
  loc_1405BF1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(4))) Then
  loc_1405BFA:     Proc_6_75_E5335C(Shift, arg_14)
  loc_1405BFF:   End If
  loc_1405C1D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_1405C28:     Call Txt_Validate(KeyCode)
  loc_1405C30:     Call Proc_51_41_E90F04(KeyCode, 0)
  loc_1405C35:   End If
  loc_1405C35: End If
  loc_1405C35: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1091530
  'Data Table: 4E2D9C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As DataGrid
  Dim var_94 As Variant
  loc_1091286: Proc_6_133_E7FB08(var_94)
  loc_109129B: If (CInt(var_94) = &HD) Then
  loc_10912A0:   arg_10 = 0
  loc_10912A3: End If
  loc_10912A6: Proc_6_58_E06050(arg_10, arg_10)
  loc_10912AE: var_96 = KeyAscii
  loc_10912B9: If (var_96 = CInt(2)) Then
  loc_10912E5:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_10912F5:     Set var_CC = Me.Txt
  loc_10912FB:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_1091303:     var_D0.Text = var_96
  loc_1091312:   Else
  loc_109133B:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_109134B:       Set var_CC = Me.Txt
  loc_1091351:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_1091359:       var_D0.Text = arg_10
  loc_1091365:     End If
  loc_1091365:   End If
  loc_1091367:   arg_10 = 0
  loc_109136D: Else
  loc_1091375:   If (var_96 = CInt(3)) Then
  loc_1091394:     If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_10913A6:       var_D4 = "Name"
  loc_10913C1:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10)
  loc_10913F3:       Proc_6_138_106E830(Me.DGSaleAc, global_64, KeyAscii, Me.FGPoint)
  loc_1091401:     End If
  loc_1091404:   Else
  loc_109140C:     If (var_96 = CInt(1)) Then
  loc_109142B:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1091458:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_109148A:         Proc_6_138_106E830(Me.DGRest, global_72, KeyAscii, Me.FGPoint, 0)
  loc_1091498:       End If
  loc_109149B:     Else
  loc_10914A3:       If (var_96 = CInt(4)) Then
  loc_10914C2:         If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_10914EF:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1091521:           Proc_6_138_106E830(Me.DGSaleTax, global_68, KeyAscii, Me.FGPoint, 0)
  loc_109152F:         End If
  loc_109152F:       End If
  loc_109152F:     End If
  loc_109152F:   End If
  loc_109152F: End If
  loc_109152F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC2B00
  'Data Table: 4E2D9C
  loc_EC2A72: If (KeyCode = CInt(0)) Then
  loc_EC2A91:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC2A9E:     var_A4 = "Name"
  loc_EC2ABD:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_60)
  loc_EC2AEF:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_EC2AFD:   End If
  loc_EC2AFD: End If
  loc_EC2AFD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C0E4
  'Data Table: 4E2D9C
  loc_E4C0C2: Set var_88 = Me.Txt
  loc_E4C0C8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C0D6: Proc_6_73_E23294(var_8C)
  loc_E4C0E2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13207AC
  'Data Table: 4E2D9C
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim unk_4E2DB6 As Connection15
  Dim var_C4 As Variant
  loc_1320037: var_86 = Cancel
  loc_1320042: If (var_86 = CInt(0)) Then
  loc_1320048:   Call Proc_51_39_10F739C(var_88)
  loc_1320053:   If (var_88 = &HFF) Then
  loc_1320058:     arg_10 = &HFF
  loc_132005B:     Exit Sub
  loc_132005C:   End If
  loc_132005F: Else
  loc_1320067:   If (var_86 = CInt(1)) Then
  loc_13200B8:     Set var_94 = Me.Txt
  loc_13200BE:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_13200C6:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_13200DE:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_13200EE:       Set var_94 = Me.Txt
  loc_13200F4:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13200FC:       var_98.Tag = vbNullString
  loc_1320108:       Exit Sub
  loc_1320109:     End If
  loc_1320144:     Set var_B0 = Me.Txt
  loc_132014A:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1320152:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13201A3:     Set var_B0 = Me.Txt
  loc_13201A9:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13201B1:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13201E4:     var_98 = Me.Fields.Item("ShortName")
  loc_13201F5:     var_9C = CStr(var_98.Value)
  loc_13201FB:     global_124 = var_9C
  loc_1320229:     Set var_94 = Me.Txt
  loc_132022F:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, "SELECT ItemCatMast.Code, ItemCatMast.Name, Depart.Name as DepartmentName FROM ItemCatMast LEFT JOIN Depart ON ItemCatMast.RestCode = Depart.Code WHERE DEPART.CODE='")
  loc_1320237:     var_C4 = var_98.Tag
  loc_1320240:     var_C8 = -1 & var_9C
  loc_1320250:     unk_4E2DB6.Execute var_C8 & "' ORDER BY ItemCatMast.Name", var_B0, var_86
  loc_1320261:     Set global_60 = var_B0
  loc_1320285:     CVarUnk
  loc_132028A:     VerifyVarObj
  loc_1320290:     Set var_94 = Me.DGHelp
  loc_1320296:     LateIdStAd
  loc_13202A7:   Else
  loc_13202AF:     If (var_86 = CInt(3)) Then
  loc_1320306:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_132030E:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1320326:       If (Me.Txt Or (var_9C = vbNullString)) Then
  loc_1320336:         Set var_94 = Me.Txt
  loc_132033C:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1320344:         var_98.Tag = vbNullString
  loc_1320350:         Exit Sub
  loc_1320351:       End If
  loc_132038C:       Set var_B0 = Me.Txt
  loc_1320392:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132039A:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13203CD:       var_98 = Me.Fields.Item("Code")
  loc_13203DE:       var_9C = CStr(var_98.Value)
  loc_13203EB:       Set var_B0 = Me.Txt
  loc_13203F1:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13203F9:       var_B4.Tag = var_9C
  loc_1320412:     Else
  loc_132041A:       If (var_86 = CInt(4)) Then
  loc_132046B:         Set var_94 = Me.Txt
  loc_1320471:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1320479:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1320491:         If (global_60 Or (var_9C = vbNullString)) Then
  loc_13204A1:           Set var_94 = Me.Txt
  loc_13204A7:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13204AF:           var_98.Tag = vbNullString
  loc_13204BB:           Exit Sub
  loc_13204BC:         End If
  loc_13204F7:         Set var_B0 = Me.Txt
  loc_13204FD:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1320505:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1320538:         var_98 = Me.Fields.Item("Code")
  loc_1320556:         Set var_B0 = Me.Txt
  loc_132055C:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1320564:         var_B4.Tag = CStr(var_98.Value)
  loc_132057D:       Else
  loc_1320585:         If (var_86 = CInt(2)) Then
  loc_1320592:           Set var_94 = Me.Txt
  loc_1320598:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_13205D3:           If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_13205E3:             Set var_94 = Me.Txt
  loc_13205E9:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13205F1:             var_98.Text = "Yes"
  loc_1320600:           Else
  loc_132060D:             Set var_94 = Me.Txt
  loc_1320613:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_132061B:             var_98.Text = "No"
  loc_1320627:           End If
  loc_132062A:         Else
  loc_1320632:           If (var_86 = CInt(5)) Then
  loc_1320643:             Set var_94 = Me.Txt
  loc_1320649:             Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_1320668:             If (var_98.Text = "Category") Then
  loc_1320677:               Me.LblCatType.Visible = True
  loc_132068C:               Set var_94 = Me.Txt
  loc_1320692:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_132069A:               var_98.Visible = True
  loc_13206B2:               Me.Label2.Visible = False
  loc_13206C7:               Set var_94 = Me.Txt
  loc_13206CD:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_13206D5:               var_98.Visible = False
  loc_13206EF:               Set var_94 = Me.Txt
  loc_13206F5:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_13206FD:               var_98.Text = "Cr"
  loc_132070C:             Else
  loc_1320718:               Me.Label2.Visible = True
  loc_132072D:               Set var_94 = Me.Txt
  loc_1320733:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_132073B:               var_98.Visible = True
  loc_1320753:               Me.LblCatType.Visible = False
  loc_1320768:               Set var_94 = Me.Txt
  loc_132076E:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_1320776:               var_98.Visible = False
  loc_1320790:               Set var_94 = Me.Txt
  loc_1320796:               Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_132079E:               var_98.Text = "Cr"
  loc_13207AA:             End If
  loc_13207AA:           End If
  loc_13207AA:         End If
  loc_13207AA:       End If
  loc_13207AA:     End If
  loc_13207AA:   End If
  loc_13207AA: End If
  loc_13207AA: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5D244
  'Data Table: 4E2D9C
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5D166: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5D16D:   Set var_A8 = Me.ListView
  loc_F5D1B7:   Set var_C0 = Me.Txt
  loc_F5D1BD:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5D1C5:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5D1E5: End If
  loc_F5D1F1: Me.FrmList.Visible = False
  loc_F5D221: Set var_9C = Me.Txt
  loc_F5D227: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5D22F: var_A8.SetFocus
  loc_F5D243: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F4E0B4
  'Data Table: 4E2D9C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4DFAB: Me.DGRest.Visible = False
  loc_F4DFCA: If (Me.RecordCount > 0) Then
  loc_F4E009:   Set var_B4 = Me.Txt
  loc_F4E00F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4E017:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4E04A:   var_B0 = Me.Fields.Item("Code")
  loc_F4E069:   Set var_B4 = Me.Txt
  loc_F4E06F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4E077:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4E08D: End If
  loc_F4E098: Set var_A8 = Me.Txt
  loc_F4E09E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F4E0A6: var_B0.SetFocus
  loc_F4E0B2: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6FD90
  'Data Table: 4E2D9C
  loc_E6FD4E: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E6FD65: Set var_8C = Me.FGPoint
  loc_E6FD81: Proc_6_138_106E830(Me.DGRest, global_72, CInt(1))
  loc_E6FD8F: Exit Sub
End Sub

Public Function global_52Get() '4E4064
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4E4073
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC46F4
  'Data Table: 4E2D9C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC466A: On Error Goto loc_EC46AF
  loc_EC4673: Me.MoveFirst
  loc_EC468D: var_8C = "code='" & MyValue
  loc_EC469D: Me.Find var_8C & "'", 0, 1
  loc_EC46A9: Call Proc_51_38_14031A0(var_A0)
  loc_EC46AE: Exit Sub
  loc_EC46AF: ' Referenced from: EC466A
  loc_EC46B7: Set var_A4 = Err()
  loc_EC46BD: Call 0.Method_arg_2C (var_8C)
  loc_EC46DE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC46F1: Exit Sub
  loc_EC46F2: Exit Sub
End Sub

Public Sub Proc_51_36_E7AD0C(arg_C) 'E7AD0C
  'Data Table: 4E2D9C
  Dim var_98 As TextBox
  Dim arg_24FF As Double
  loc_E7ACBA: Set var_8C = Me.Txt
  loc_E7ACC0: Call 0.Method_Proc_51_36_E7AD0CC (var_8E, var_86)
  loc_E7ACD0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7ACE6:   Set var_8C = Me.Txt
  loc_E7ACEC:   Call 0.Method_Proc_51_36_E7AD0C0 (CInt(var_86), var_98)
  loc_E7ACF4:   var_98.Enabled = arg_C
  loc_E7AD03: Next var_92 'Byte
  loc_E7AD09: Exit Sub
  loc_E7AD0A: arg_24FF = 
End Sub

Public Sub Proc_51_37_EE2B74
  'Data Table: 4E2D9C
  Dim var_98 As TextBox
  loc_EE2AB6: global_100 = vbNullString
  loc_EE2AC0: global_124 = vbNullString
  loc_EE2AD2: Set var_8C = Me.Txt
  loc_EE2AD8: Call 0.Method_Proc_51_37_EE2B74C (var_8E, var_86)
  loc_EE2AE8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE2AFE:   Set var_8C = Me.Txt
  loc_EE2B04:   Call 0.Method_Proc_51_37_EE2B740 (CInt(var_86), var_98)
  loc_EE2B0C:   var_98.Text = vbNullString
  loc_EE2B28:   Set var_8C = Me.Txt
  loc_EE2B2E:   Call 0.Method_Proc_51_37_EE2B740 (CInt(var_86), var_98)
  loc_EE2B36:   var_98.Tag = vbNullString
  loc_EE2B45: Next var_92 'Byte
  loc_EE2B59: Set var_8C = Me.Txt
  loc_EE2B5F: Call 0.Method_Proc_51_37_EE2B740 (CInt(7), var_98)
  loc_EE2B67: var_98.Text = "Dr"
  loc_EE2B73: Exit Sub
End Sub

Public Sub Proc_51_38_14031A0
  'Data Table: 4E2D9C
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim unk_4E2DB6 As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_120 As Fields15
  Dim var_128 As String
  Dim var_124 As TextBox
  Dim var_88 As Recordset15
  loc_1402794: On Error Goto loc_140315C
  loc_140279D: Proc_183_45_E5CCA8(global_56)
  loc_14027B9: If (Me.RecordCount > 0) Then
  loc_1402812:   unk_4E2DB6.Execute CStr("Select U_Name,U_AE,U_EntDt From itemcatmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1
  loc_140281D:   Set var_8C = var_120
  loc_1402871:   var_120 = var_8C.Fields
  loc_14028DA:   var_188 = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_140291F:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_Name")), var_188)))
  loc_1402999:   var_124 = var_8C.Fields.Item("U_AE")
  loc_14029B2:   var_11C = "entdt : "
  loc_14029BD:   var_F8 = "Last Update : "
  loc_14029FA:   var_188 = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124)) = "E"), var_F8, var_11C))
  loc_1402A3F:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_EntDt")))))
  loc_1402A77: End If
  loc_1402A8E: If (Me.RecordCount <= 0) Then
  loc_1402A91:   Call Proc_51_37_EE2B74()
  loc_1402A99: Else
  loc_1402AD5:   Set var_120 = Me.Txt
  loc_1402ADB:   Call 0.Method_Proc_51_38_14031A00 (CInt(0), var_124)
  loc_1402AE3:   var_124.Text = CStr(Me.Fields.Item("ItemCat").Value)
  loc_1402B35:   Set var_120 = Me.Txt
  loc_1402B3B:   Call 0.Method_Proc_51_38_14031A00 (CInt(0), var_124)
  loc_1402B43:   var_124.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1402B92:   Set var_120 = Me.Txt
  loc_1402B98:   Call 0.Method_Proc_51_38_14031A00 (CInt(1), var_124)
  loc_1402BA0:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_1402BED:   Set var_120 = Me.Txt
  loc_1402BF3:   Call 0.Method_Proc_51_38_14031A00 (CInt(1), var_124)
  loc_1402BFB:   var_124.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_1402C48:   Set var_120 = Me.Txt
  loc_1402C4E:   Call 0.Method_Proc_51_38_14031A00 (CInt(2), var_124)
  loc_1402C56:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")))
  loc_1402CA3:   Set var_120 = Me.Txt
  loc_1402CA9:   Call 0.Method_Proc_51_38_14031A00 (CInt(3), var_124)
  loc_1402CB1:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAc")))
  loc_1402CFE:   Set var_120 = Me.Txt
  loc_1402D04:   Call 0.Method_Proc_51_38_14031A00 (CInt(3), var_124)
  loc_1402D0C:   var_124.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("AcName")))
  loc_1402D59:   Set var_120 = Me.Txt
  loc_1402D5F:   Call 0.Method_Proc_51_38_14031A00 (CInt(4), var_124)
  loc_1402D67:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStructure")))
  loc_1402DB4:   Set var_120 = Me.Txt
  loc_1402DBA:   Call 0.Method_Proc_51_38_14031A00 (CInt(4), var_124)
  loc_1402DC2:   var_124.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruCode")))
  loc_1402E0F:   Set var_120 = Me.Txt
  loc_1402E15:   Call 0.Method_Proc_51_38_14031A00 (CInt(5), var_124)
  loc_1402E1D:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Flag")))
  loc_1402E6A:   Set var_120 = Me.Txt
  loc_1402E70:   Call 0.Method_Proc_51_38_14031A00 (CInt(6), var_124)
  loc_1402E78:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CatType")))
  loc_1402EC5:   Set var_120 = Me.Txt
  loc_1402ECB:   Call 0.Method_Proc_51_38_14031A00 (CInt(7), var_124)
  loc_1402ED3:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DrCr")))
  loc_1402F04:   var_A8 = Me.Fields.Item("ShortName")
  loc_1402F0C:   var_B8 = var_A8.Value
  loc_1402F36:   var_128 = CStr(var_B8) & " - "
  loc_1402F4D:   Call 0.Method_Proc_51_38_14031A00 (CInt(0), var_A8)
  loc_1402F8F:   var_FC = "Select Code from Revmast where Name ='" & Proc_6_38_E69628(CVar(var_124)) & var_A8.Text
  loc_1402FAD:   unk_4E2DB6.Execute var_FC & "' and site_code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_1402FB8:   Set var_88 = Me.Txt
  loc_1402FE0:   If (var_88.RecordCount > 0) Then
  loc_1402FFA:     var_A8 = var_88.Fields.Item("Code")
  loc_1403011:     global_80 = CVar(Proc_6_38_E69628(CVar(var_A8)))
  loc_1403022:   Else
  loc_140302A:     global_80 = vbNullString
  loc_140302E:   End If
  loc_1403033:   Set var_88 = Nothing
  loc_1403044:   Set var_94 = Me.Txt
  loc_140304A:   Call 0.Method_Proc_51_38_14031A00 (CInt(5), var_A8, var_FC)
  loc_1403052:   global_80 = var_A8.Text
  loc_1403069:   If (var_FC = "Category") Then
  loc_1403078:     Me.LblCatType.Visible = True
  loc_140308D:     Set var_94 = Me.Txt
  loc_1403093:     Call 0.Method_Proc_51_38_14031A00 (CInt(6), var_A8)
  loc_140309B:     var_A8.Visible = True
  loc_14030B3:     Me.Label2.Visible = False
  loc_14030C8:     Set var_94 = Me.Txt
  loc_14030CE:     Call 0.Method_Proc_51_38_14031A00 (CInt(7), var_A8)
  loc_14030D6:     var_A8.Visible = False
  loc_14030E5:   Else
  loc_14030F1:     Me.Label2.Visible = True
  loc_1403106:     Set var_94 = Me.Txt
  loc_140310C:     Call 0.Method_Proc_51_38_14031A00 (CInt(7), var_A8)
  loc_1403114:     var_A8.Visible = True
  loc_140312C:     Me.LblCatType.Visible = False
  loc_1403141:     Set var_94 = Me.Txt
  loc_1403147:     Call 0.Method_Proc_51_38_14031A00 (CInt(6), var_A8)
  loc_140314F:     var_A8.Visible = False
  loc_140315B:   End If
  loc_140315B: End If
  loc_140315B: Exit Sub
  loc_140315C: ' Referenced from: 1402794
  loc_1403164: Set var_94 = Err()
  loc_140316A: Call 0.Method_arg_2C (var_FC)
  loc_140318B: MsgBox(CVar(var_FC), &H40, "Information", var_F8, var_11C)
  loc_140319E: Exit Sub
End Sub

Public Sub Proc_51_39_10F739C
  'Data Table: 4E2D9C
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_4E2DB6 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10F70BF: If (Me.RecordCount = 0) Then
  loc_10F70C2:   Proc_51_39_10F739C = 
  loc_10F70C8: End If
  loc_10F70CC: Set var_90 = Me.TopCtrl1
  loc_10F70D2: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F70EB: If (CStr() = "Add") Then
  loc_10F70F4:   var_F4 = 0
  loc_10F7129:   Set var_90 = Me.Txt
  loc_10F712F:   Call 0.Method_Proc_51_39_10F739C0 (CInt(1), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_10F7158:   Set var_B8 = Me.Txt
  loc_10F715E:   Call 0.Method_Proc_51_39_10F739C0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F7166:   var_F4 = var_BC.Text
  loc_10F717F:   unk_4E2DB6.Execute var_F8 & var_C0 & "'", var_108, 
  loc_10F7187:    = var_A8.Tag.Fields
  loc_10F718F:    = var_E4.Item()
  loc_10F7197:    = var_F8.Value
  loc_10F71D2:   If (var_108 > 0) Then
  loc_10F71E0:     var_108 = "Information"
  loc_10F71F0:     var_A0 = "Duplicate Name"
  loc_10F71F6:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F7211:     Set var_90 = Me.Txt
  loc_10F7217:     Call 0.Method_Proc_51_39_10F739C0 (CInt(0))
  loc_10F721F:     var_A8.SetFocus
  loc_10F7230:     Proc_51_39_10F739C = &HFF
  loc_10F7236:   End If
  loc_10F7239: Else
  loc_10F723F:   var_F4 = 0
  loc_10F7274:   Set var_90 = Me.Txt
  loc_10F727A:   Call 0.Method_Proc_51_39_10F739C0 (CInt(1), var_A8, var_AC, "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_10F72A3:   Set var_B8 = Me.Txt
  loc_10F72A9:   Call 0.Method_Proc_51_39_10F739C0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F72B1:   var_F4 = var_BC.Text
  loc_10F72DB:   unk_4E2DB6.Execute var_F8 & var_C0 & "' And Name<>'" & global_100 & "'", var_108, var_A8
  loc_10F72E3:    = var_A8.Tag.Fields
  loc_10F72EB:    = var_E4.Item()
  loc_10F72F3:    = var_F8.Value
  loc_10F7332:   If (var_108 > 0) Then
  loc_10F7356:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F7371:     Set var_90 = Me.Txt
  loc_10F7377:     Call 0.Method_Proc_51_39_10F739C0 (CInt(0))
  loc_10F737F:     var_A8.SetFocus
  loc_10F7390:     Proc_51_39_10F739C = &HFF
  loc_10F7396:   End If
  loc_10F7396: End If
  loc_10F7396: Proc_51_39_10F739C = var_A8
End Sub

Public Sub Proc_51_40_F6C850
  'Data Table: 4E2D9C
  loc_F6C728: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F6C73A:   Me.DGHelp.Visible = False
  loc_F6C742: End If
  loc_F6C75E: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_F6C770:   Me.DGSaleAc.Visible = False
  loc_F6C778: End If
  loc_F6C794: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_F6C7A6:   Me.DGSaleTax.Visible = False
  loc_F6C7AE: End If
  loc_F6C7CA: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6C7DC:   Me.DGRest.Visible = False
  loc_F6C7E4: End If
  loc_F6C7FF: If (Me.FrmList.Visible = &HFF) Then
  loc_F6C80E:   Me.FrmList.Visible = False
  loc_F6C816: End If
  loc_F6C832: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6C844:   Me.FGPoint.Visible = False
  loc_F6C84C: End If
  loc_F6C84C: Exit Sub
End Sub

Public Sub Proc_51_41_E90F04(arg_C) 'E90F04
  'Data Table: 4E2D9C
  Dim var_10C As TextBox
  loc_E90E98: Call Proc_51_40_F6C850()
  loc_E90ED4: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E90ED7:   Call TopCtrl1_UnknownEvent_16()
  loc_E90EDF: Else
  loc_E90EE9:   Set var_108 = Me.Txt
  loc_E90EEF:   Call 0.Method_Proc_51_41_E90F040 (arg_C)
  loc_E90EF7:   var_10C.SetFocus
  loc_E90F03: End If
  loc_E90F03: Exit Sub
End Sub

Public Sub Proc_51_42_F7223C(arg_C) 'F7223C
  'Data Table: 4E2D9C
  Dim var_148 As Integer
  Dim var_8C As String
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim unk_4E2DB6 As Connection15
  Dim var_134 As Recordset15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  Dim var_130 As Variant
  loc_F72139: var_148 = 0
  loc_F72156: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE Site_Code='" & MemVar_1F95070
  loc_F72169: var_CC = (CVar(MemVar_1F95070) + Left(arg_C, 1))
  loc_F72184: unk_4E2DB6.Execute CStr(CVar(var_8C & "' and isnumeric(SUBSTRING(Code,4,3))=1 and SUBSTRING(Code,1,3) ='") & var_CC & "'"), var_130, -1
  loc_F7218C: var_134 = var_134.Fields
  loc_F72194: var_148 = var_138.Item(var_138)
  loc_F7219C: var_14C = var_14C.Value
  loc_F721F1: var_DC = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) + Left(arg_C, 1))
  loc_F7221D: var_130 = (1 + Format(CStr(var_15C), "000"))
  loc_F72222: var_88 = CStr(var_130)
  loc_F72234: Proc_51_42_F7223C = 1
End Sub
