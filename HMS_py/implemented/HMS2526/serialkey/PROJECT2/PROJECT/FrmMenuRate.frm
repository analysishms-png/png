VERSION 5.00
Begin VB.Form FrmMenuRate
  Caption = "Item Rate Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 5 'Sizable ToolWindow
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 510
  ClientWidth = 11670
  ClientHeight = 7185
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  ShowInTaskbar = 0   'False
  Begin DataGrid DGItem
    Left = 6135
    Top = 3285
    Width = 5100
    Height = 2235
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin CommandButton CmdFillLastDetail
    Caption = "Fill &Last Detail"
    BackColor = &HC0FFFF&
    Left = 6090
    Top = 1935
    Width = 1800
    Height = 405
    TabIndex = 25
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8080FF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin CheckBox ChkParty
    Caption = "Party Name"
    BackColor = &HFFC0C0&
    ForeColor = &H800000&
    Left = 45
    Top = 2070
    Width = 1515
    Height = 255
    TabIndex = 5
    TabStop = 0   'False
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
  Begin DataGrid DGParty
    Left = 1170
    Top = 4950
    Width = 5340
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &H800000&
    Left = 1800
    Top = 2070
    Width = 3990
    Height = 240
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11670
    Height = 480
    TabIndex = 23
  End
  Begin CommandButton Command1
    Caption = "Delete Previous Item rate"
    Left = 1170
    Top = 7575
    Width = 3015
    Height = 375
    Visible = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGItemCat
    Left = 4230
    Top = 4245
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin MSFlexGrid FGPoint
    Left = 12120
    Top = 6240
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 21
  End
  Begin DataGrid DGRest
    Left = 840
    Top = 4260
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGItemGrp
    Left = 1980
    Top = 3720
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 8205
    Top = 165
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &H800000&
    Left = 1800
    Top = 795
    Width = 3990
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &H800000&
    Left = 1800
    Top = 1815
    Width = 1335
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 7
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &H800000&
    Left = 4725
    Top = 1560
    Width = 1065
    Height = 240
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &H800000&
    Left = 1800
    Top = 1305
    Width = 3990
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 40
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
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
    ForeColor = &H800000&
    Left = 1800
    Top = 1560
    Width = 1335
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &H800000&
    Left = 1800
    Top = 1050
    Width = 3990
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdFillDetail
    Caption = "&Fill Detail"
    BackColor = &HC0FFFF&
    Left = 6090
    Top = 795
    Width = 1335
    Height = 525
    TabIndex = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8080FF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 2520
    Width = 11700
    Height = 4830
    TabIndex = 9
  End
  Begin Label Label1
    Caption = "(P)ercent/(A)mount"
    Index = 6
    ForeColor = &H800000&
    Left = 3180
    Top = 1800
    Width = 2010
    Height = 240
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
  Begin Label Label1
    Caption = "Outlet Name"
    Index = 5
    ForeColor = &H800000&
    Left = 330
    Top = 810
    Width = 1185
    Height = 240
    TabIndex = 17
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
    Caption = "Incr. Type"
    Index = 4
    ForeColor = &H800000&
    Left = 330
    Top = 1830
    Width = 975
    Height = 240
    TabIndex = 14
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
    Caption = "Incr. Value"
    Index = 3
    ForeColor = &H800000&
    Left = 3570
    Top = 1560
    Width = 1050
    Height = 240
    TabIndex = 13
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
    Caption = "Item Category"
    Index = 2
    ForeColor = &H800000&
    Left = 330
    Top = 1320
    Width = 1410
    Height = 240
    TabIndex = 12
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
    Caption = "App. Date"
    Index = 1
    ForeColor = &H800000&
    Left = 330
    Top = 1575
    Width = 975
    Height = 240
    TabIndex = 11
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
    Caption = "Item Group"
    Index = 0
    ForeColor = &H800000&
    Left = 330
    Top = 1065
    Width = 1080
    Height = 240
    TabIndex = 10
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

Attribute VB_Name = "FrmMenuRate"

Private global_84 As Integer
Private global_86 As Integer

Private Sub ChkParty_Click() 'FF2C7C
  'Data Table: 4BDD94
  Dim var_88 As Variant
  Dim var_90 As TextBox
  loc_FF2A9B: If (Me.ChkParty.Value = 1) Then
  loc_FF2AAB:   Set var_88 = Me.Txt
  loc_FF2AB1:   Call 0.Method_ChkParty_Click0 (CInt(6), var_90)
  loc_FF2AB9:   var_90.Enabled = True
  loc_FF2AD1:   Me.CmdFillLastDetail.Enabled = True
  loc_FF2AE5:   Me.CmdFillDetail.Enabled = False
  loc_FF2AFA:   Set var_88 = Me.Txt
  loc_FF2B00:   Call 0.Method_ChkParty_Click0 (CInt(0), var_90)
  loc_FF2B08:   var_90.Enabled = False
  loc_FF2B21:   Set var_88 = Me.Txt
  loc_FF2B27:   Call 0.Method_ChkParty_Click0 (CInt(1), var_90)
  loc_FF2B2F:   var_90.Enabled = False
  loc_FF2B48:   Set var_88 = Me.Txt
  loc_FF2B4E:   Call 0.Method_ChkParty_Click0 (CInt(2), var_90)
  loc_FF2B56:   var_90.Enabled = False
  loc_FF2B65: Else
  loc_FF2B72:   Set var_88 = Me.Txt
  loc_FF2B78:   Call 0.Method_ChkParty_Click0 (CInt(6), var_90)
  loc_FF2B80:   var_90.Enabled = False
  loc_FF2B98:   Me.CmdFillLastDetail.Enabled = False
  loc_FF2BAC:   Me.CmdFillDetail.Enabled = True
  loc_FF2BC1:   Set var_88 = Me.Txt
  loc_FF2BC7:   Call 0.Method_ChkParty_Click0 (CInt(0), var_90)
  loc_FF2BCF:   var_90.Enabled = True
  loc_FF2BE8:   Set var_88 = Me.Txt
  loc_FF2BEE:   Call 0.Method_ChkParty_Click0 (CInt(1), var_90)
  loc_FF2BF6:   var_90.Enabled = True
  loc_FF2C0F:   Set var_88 = Me.Txt
  loc_FF2C15:   Call 0.Method_ChkParty_Click0 (CInt(2), var_90)
  loc_FF2C1D:   var_90.Enabled = True
  loc_FF2C37:   Set var_88 = Me.Txt
  loc_FF2C3D:   Call 0.Method_ChkParty_Click0 (CInt(6), var_90)
  loc_FF2C45:   var_90.Text = vbNullString
  loc_FF2C5F:   Set var_88 = Me.Txt
  loc_FF2C65:   Call 0.Method_ChkParty_Click0 (CInt(6), var_90)
  loc_FF2C6D:   var_90.Tag = vbNullString
  loc_FF2C79: End If
  loc_FF2C79: Exit Sub
End Sub

Private Sub CmdFillDetail_Click() '14793CC
  'Data Table: 4BDD94
  Dim var_AC As Variant
  Dim var_B8 As String
  Dim var_C8 As String
  Dim var_C0 As Variant
  Dim var_D4 As TextBox
  Dim var_F0 As Variant
  Dim var_88 As Variant
  Dim var_B4 As String
  Dim var_C4 As String
  Dim unk_4BDDA8 As Connection15
  Dim var_9A As Integer
  Dim var_98 As Recordset15
  Dim var_94 As Recordset15
  Dim var_128 As Variant
  Dim var_110 As Variant
  Dim var_100 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_17C As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_148 As Variant
  Dim var_B0 As Fields15
  Dim var_1D0 As Variant
  loc_14787E8: Set var_88 = Err()
  loc_14787EE: Call 0.Method_arg_1C (var_8C)
  loc_14787FA: OnGoto
  loc_147883A: If (Proc_6_27_EA61EC(var_AC, var_B4, CmdFillDetail_Click300(-180)) = 0) Then
  loc_147883D:   Exit Sub
  loc_147883E: End If
  loc_147884C: Set var_88 = Me.Txt
  loc_1478852: Call 0.Method_CmdFillDetail_Click0 (CInt(1), var_AC, var_B4)
  loc_147885A: MemVar_BCB8C300(MemVar_4013CC) = var_AC.Text
  loc_1478871: If (var_B4 <> vbNullString) Then
  loc_1478882:   Set var_88 = Me.Txt
  loc_1478888:   Call 0.Method_CmdFillDetail_Click0 (CInt(2), var_AC, var_B4)
  loc_1478890:   arg_1903 = var_AC.Text
  loc_14788A7:   If (var_B4 <> vbNullString) Then
  loc_14788B1:     var_B8 = var_A0 & "Where ItemCatCode='"
  loc_14788C2:     Set var_88 = Me.Txt
  loc_14788C8:     Call 0.Method_CmdFillDetail_Click0 (CInt(2), var_AC, var_B4)
  loc_14788D0:     var_B8 = var_AC.Tag
  loc_14788F1:     Set var_B0 = Me.Txt
  loc_14788F7:     Call 0.Method_CmdFillDetail_Click0 (CInt(1), var_C0)
  loc_1478920:     Set var_D0 = Me.Txt
  loc_1478926:     Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_D4)
  loc_147893E:     var_A0 = CInt(var_8C) & var_B4 & "' And ItemGroup='" & var_C0.Tag & "' And RestCode='" & var_D4.Tag & "'"
  loc_1478968:   Else
  loc_1478980:     Set var_88 = Me.Txt
  loc_1478986:     Call 0.Method_CmdFillDetail_Click0 (CInt(1), var_AC)
  loc_14789AF:     Set var_B0 = Me.Txt
  loc_14789B5:     Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_C0)
  loc_14789CD:     var_A0 = var_A0 & "Where ItemGroup='" & var_AC.Tag & "' And RestCode='" & var_C0.Tag & "'"
  loc_14789EA:   End If
  loc_14789ED: Else
  loc_14789FB:   Set var_88 = Me.Txt
  loc_1478A01:   Call 0.Method_CmdFillDetail_Click0 (CInt(2), var_AC)
  loc_1478A20:   If (var_AC.Text <> vbNullString) Then
  loc_1478A3B:     Set var_88 = Me.Txt
  loc_1478A41:     Call 0.Method_CmdFillDetail_Click0 (CInt(2), var_AC)
  loc_1478A6A:     Set var_B0 = Me.Txt
  loc_1478A70:     Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_C0)
  loc_1478A88:     var_A0 = var_A0 & "Where ItemCatCode='" & var_AC.Tag & "' And RestCode='" & var_C0.Tag & "'"
  loc_1478AA8:   Else
  loc_1478AB9:     Set var_88 = Me.Txt
  loc_1478ABF:     Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_AC)
  loc_1478AD7:     var_A0 = "Where RestCode='" & var_AC.Tag & "'"
  loc_1478AE8:   End If
  loc_1478AE8: End If
  loc_1478AF5: Set var_88 = Me.FGrid
  loc_1478AFB: var_88.Rows = 1
  loc_1478B17: var_B4 = "Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast " & var_A0
  loc_1478B2C: var_C4 = var_B4 & " And DispCode <>9999 And IsNull(ActiveYN,'')<>'No' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Code "
  loc_1478B35: unk_4BDDA8.Execute var_C4, var_110, -1
  loc_1478B40: Set var_94 = var_88
  loc_1478B78: Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_AC, var_B4, "Select ItemCode,Rate,AppDate From ItemRate Where RestCode='")
  loc_1478B80: var_110 = var_AC.Tag
  loc_1478B89: var_B8 = -1 & var_B4
  loc_1478B9E: var_C8 = var_B4 & " And DispCode <>9999 And IsNull(ActiveYN,'')<>'No' AND (LOGSITE_CODE='" & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By AppDate Desc,ItemCode "
  loc_1478BA7: unk_4BDDA8.Execute var_C8, var_B0, Me.Txt
  loc_1478BB2: Set var_98 = var_B0
  loc_1478BD0: var_9A = 1
  loc_1478BE7: If (var_98.RecordCount <= 0) Then
  loc_1478BFE:   If (var_94.RecordCount > 0) Then
  loc_1478C01:     ' Referenced from: 1478E26
  loc_1478C10:     If Not(var_94.EOF) Then
  loc_1478C13:       var_F0 = vbNullString
  loc_1478C1D:       Set var_88 = Me.FGrid
  loc_1478C32:       Set var_118 = Me.FGrid
  loc_1478C39:       var_F0 = CVar(CLng(var_9A)) 'Long
  loc_1478C41:       var_128 = CVar(CLng(0)) 'Long
  loc_1478C4B:       var_110 = CVar(CStr(var_9A)) 'String
  loc_1478C52:       LateIdCallSt
  loc_1478C96:       var_158 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_9A)), var_118, CVar(var_94.Fields.Item("DispCode")))) 'String
  loc_1478C9D:       LateIdCallSt
  loc_1478CB3:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_1478CBB:       var_138 = CVar(CLng(2)) 'Long
  loc_1478CEB:       var_158 = CVar(CStr(var_94.Fields.Item("ItemCode").Value)) 'String
  loc_1478CF2:       LateIdCallSt
  loc_1478D33:       var_AC = var_94.Fields.Item("ItemName")
  loc_1478D44:       var_158 = CVar(CStr(var_AC.Value)) 'String
  loc_1478D4B:       LateIdCallSt
  loc_1478D6F:       Set var_88 = Me.Txt
  loc_1478D75:       Call 0.Method_CmdFillDetail_Click0 (CInt(4), var_AC, var_B4, var_118, var_158, CVar(CLng(3)), CVar(CLng(var_9A)))
  loc_1478D7D:       var_118 = var_AC.Text
  loc_1478D94:       If (var_B4 = "Amount") Then
  loc_1478DB6:         Set var_88 = Me.Txt
  loc_1478DBC:         Call 0.Method_CmdFillDetail_Click0 (CInt(5), var_AC, var_B4, CVar(CLng(4)), CVar(CLng(var_9A)), var_158)
  loc_1478DC4:         var_138 = var_AC.Text
  loc_1478DCC:         var_110 = CVar(var_B4) 'String
  loc_1478DD3:         LateIdCallSt
  loc_1478DE8:       Else
  loc_1478DEC:         var_F0 = CVar(CLng(var_9A)) 'Long
  loc_1478DF4:         var_128 = CVar(CLng(4)) 'Long
  loc_1478DFD:         var_110 = CVar(CStr(0)) 'String
  loc_1478E04:         LateIdCallSt
  loc_1478E0F:       End If
  loc_1478E11:       Set var_118 = Nothing 
  loc_1478E1B:       var_9A = (var_9A + 1)
  loc_1478E21:       var_94.MoveNext
  loc_1478E26:       GoTo loc_1478C01
  loc_1478E29:     End If
  loc_1478E29:   End If
  loc_1478E29:   GoTo loc_1479284
  loc_1478E2C:   ' Referenced from: 1479281
  loc_1478E2C: End If
  loc_1478E3B: If Not(var_94.EOF) Then
  loc_1478E3E:   var_F0 = vbNullString
  loc_1478E48:   Set var_88 = Me.FGrid
  loc_1478E5D:   Set var_16C = Me.FGrid
  loc_1478E64:   var_F0 = CVar(CLng(var_9A)) 'Long
  loc_1478E76:   var_110 = CVar(CStr(var_9A)) 'String
  loc_1478E7D:   LateIdCallSt
  loc_1478E9C:   var_F0 = "DispCode"
  loc_1478EC1:   var_158 = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item(var_F0)), CVar(CLng(1)), CVar(CLng(var_9A)), var_16C, CVar(var_94.Fields.Item(var_F0)), CVar(CLng(0)), var_F0)) 'String
  loc_1478EC8:   LateIdCallSt
  loc_1478EDE:   var_100 = CVar(CLng(var_9A)) 'Long
  loc_1478EE6:   var_138 = CVar(CLng(2)) 'Long
  loc_1478F16:   var_158 = CVar(CStr(var_94.Fields.Item("ItemCode").Value)) 'String
  loc_1478F1D:   LateIdCallSt
  loc_1478F37:   var_100 = CVar(CLng(var_9A)) 'Long
  loc_1478F6F:   var_158 = CVar(CStr(var_94.Fields.Item("ItemName").Value)) 'String
  loc_1478F76:   LateIdCallSt
  loc_1478F8F:   var_98.MoveFirst
  loc_1478FC1:   var_AC = var_94.Fields.Item("ItemCode")
  loc_1478FD1:   var_158 = "ItemCode='" & var_AC.Value 
  loc_1478FDE:   var_B4 = CStr(var_158 & "'")
  loc_1478FE5:   var_98.Find var_B4, 0, 1
  loc_1479020:   If ((var_98.EOF = 0) And (var_98.BOF = 0)) Then
  loc_1479031:     Set var_88 = Me.Txt
  loc_1479037:     Call 0.Method_CmdFillDetail_Click0 (CInt(4), var_AC, var_B4, CVar(CLng(3)), var_16C, var_158)
  loc_147903F:     var_138 = var_AC.Text
  loc_1479056:     If (var_B4 = "Amount") Then
  loc_147905D:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_147909F:       Set var_B0 = Me.Txt
  loc_14790A5:       Call 0.Method_CmdFillDetail_Click0 (CInt(5), var_C0, var_98.Fields.Item("Rate").Value, CVar(CLng(4)), var_100)
  loc_14790B4:       Proc_6_39_E7D3A0(var_158, CVar(var_C0), var_100)
  loc_14790BC:       var_190 = (var_16C + var_158)
  loc_14790C1:       var_1A0 = CVar(CStr(var_190)) 'String
  loc_14790C8:       LateIdCallSt
  loc_14790E9:     Else
  loc_14790ED:       var_148 = CVar(CLng(var_9A)) 'Long
  loc_1479114:       var_AC = var_98.Fields.Item("Rate")
  loc_147911C:       var_190 = var_AC.Value
  loc_147915C:       Set var_D0 = Me.Txt
  loc_1479162:       Call 0.Method_CmdFillDetail_Click0 (CInt(5), var_D4, var_B4, var_98.Fields.Item("Rate").Value, var_190, CVar(CLng(4)))
  loc_147916A:       var_148 = var_D4.Text
  loc_1479184:       var_17C = ((var_16C * CVar(Val(var_B4))) / 100)
  loc_1479188:       var_1A0 = (var_1A0 + var_17C)
  loc_147918D:       var_1D0 = CVar(CStr(var_1A0)) 'String
  loc_1479194:       LateIdCallSt
  loc_14791B9:     End If
  loc_14791BC:   Else
  loc_14791CA:     Set var_88 = Me.Txt
  loc_14791D0:     Call 0.Method_CmdFillDetail_Click0 (CInt(4), var_AC, var_B4, var_16C)
  loc_14791D8:     var_1D0 = var_AC.Text
  loc_14791EF:     If (var_B4 = "Amount") Then
  loc_14791F6:       var_F0 = CVar(CLng(var_9A)) 'Long
  loc_1479211:       Set var_88 = Me.Txt
  loc_1479217:       Call 0.Method_CmdFillDetail_Click0 (CInt(5), var_AC, var_B4, CVar(CLng(4)))
  loc_147921F:       var_F0 = var_AC.Text
  loc_1479227:       var_110 = CVar(var_B4) 'String
  loc_147922E:       LateIdCallSt
  loc_1479243:     Else
  loc_1479247:       var_F0 = CVar(CLng(var_9A)) 'Long
  loc_147924F:       var_128 = CVar(CLng(4)) 'Long
  loc_1479258:       var_110 = CVar(CStr(0)) 'String
  loc_147925F:       LateIdCallSt
  loc_147926A:     End If
  loc_147926A:   End If
  loc_147926C:   Set var_16C = Nothing 
  loc_1479276:   var_9A = (var_9A + 1)
  loc_147927C:   var_94.MoveNext
  loc_1479281:   GoTo loc_1478E2C
  loc_1479284:   ' Referenced from: 1478E29
  loc_1479284: End If
  loc_147928A: var_8C = var_94.RecordCount
  loc_1479298: If (var_8C > 0) Then
  loc_14792AE:   Me.FGrid.FixedRows = 1
  loc_14792B6: End If
  loc_14792BC: If (var_9A = 1) Then
  loc_14792D2:   Me.FGrid.Rows = 1
  loc_14792EF:   var_158 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_14792F7:   Set var_AC = Me.FGrid
  loc_1479326:   Me.FGrid.FixedRows = 1
  loc_147933C:   var_F0 = "* Nothing To Examine *"
  loc_1479341:   var_110 = var_F0
  loc_1479347:   MsgBox(var_110, 0, var_158, var_17C, var_190)
  loc_1479357: End If
  loc_1479357: Exit Sub
  loc_1479360: Set var_88 = Err()
  loc_1479366: Call 0.Method_arg_1C (var_8C, FGrid.DispID_10000, var_158, var_9A, var_16C, var_110)
  loc_1479373: Set var_AC = Err()
  loc_1479379: Call 0.Method_arg_2C (var_B4 & " And DispCode <>9999 And IsNull(ActiveYN,'')<>'No' AND (LOGSITE_CODE='", var_128, var_F0, var_16C)
  loc_14793AA: MsgBox(CVar(CStr(var_8C) & " : " & CStr(var_8C) & " And DispCode <>9999 And IsNull(ActiveYN,'')<>'No' AND (LOGSITE_CODE='"), &H10, "Message ", var_17C, var_190)
  loc_14793CA: Exit Sub
End Sub

Private Sub CmdFillLastDetail_Click() 'FF4920
  'Data Table: 4BDD94
  Dim var_98 As String
  Dim var_90 As Variant
  Dim var_A4 As String
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_4BDDA8 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_FF475F: Set var_8C = Me.Txt
  loc_FF4765: Call 0.Method_CmdFillLastDetail_Click0 (CInt(6))
  loc_FF478E: If (Proc_6_27_EA61EC(var_90, "Party Name") = 0) Then
  loc_FF4791:   Exit Sub
  loc_FF4792: End If
  loc_FF47A6: var_98 = "Select Top 1 IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'') SearchCode,D.Name As Department,Convert(varchar(11),AppDate,106) Appdate,IsNull(S.Name,'') Party From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Where (IR.LOGSITE_CODE='" & MemVar_1F95078
  loc_FF47BE: Set var_8C = Me.Txt
  loc_FF47C4: Call 0.Method_CmdFillLastDetail_Click0 (CInt(0), var_90, var_9C, "Party Name" & "' or IR.LOGSITE_CODE='HO') And IR.RestCode='")
  loc_FF47CC: var_D8 = var_90.Tag
  loc_FF47D5: var_A4 = -1 & var_9C
  loc_FF47DC: var_B0 = var_A4 & "' And IR.Party='"
  loc_FF47ED: Set var_94 = Me.Txt
  loc_FF47F3: Call 0.Method_CmdFillLastDetail_Click0 (CInt(6), var_A8, var_AC)
  loc_FF47FB: var_B0 = var_A8.Tag
  loc_FF4814: unk_4BDDA8.Execute var_DC & var_AC & "' Order By Appdate desc", var_90, 
  loc_FF481F: Set var_88 = var_DC
  loc_FF4859: If (var_88.RecordCount > 0) Then
  loc_FF488A:   Call SEARCHBACK(CStr(var_88.Fields.Item("SearchCode").Value))
  loc_FF489F: Else
  loc_FF48B2:   Me.FGrid.Rows = 1
  loc_FF48D8:   var_D8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_FF48E0:   Set var_90 = Me.FGrid
  loc_FF490D:   Me.FGrid.FixedRows = 1
  loc_FF4915: End If
  loc_FF491A: Set var_88 = Nothing
  loc_FF491D: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED4CA8
  'Data Table: 4BDD94
  loc_ED4C0C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_ED4C0F:   Call DGItem_UnknownEvent_9()
  loc_ED4C14: End If
  loc_ED4C30: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_ED4C33:   Call DGRest_UnknownEvent_9()
  loc_ED4C38: End If
  loc_ED4C54: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_ED4C57:   Call DGItemCat_UnknownEvent_9()
  loc_ED4C5C: End If
  loc_ED4C78: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_ED4C7B:   Call DGItemGrp_UnknownEvent_9()
  loc_ED4C80: End If
  loc_ED4C9C: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_ED4C9F:   Call DGParty_UnknownEvent_9()
  loc_ED4CA4: End If
  loc_ED4CA4: Exit Sub
  loc_ED4CA5: StAryRecMove
End Sub

Private Sub Form_Load() '12F2D68
  'Data Table: 4BDD94
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As DataGrid
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim Me As Recordset15
  Dim var_E0 As String
  Dim var_DC As Variant
  loc_12F2674: On Error Goto loc_12F2D61
  loc_12F2683: Set var_8C = Me.Txt
  loc_12F2689: Call 0.Method_Form_LoadC (var_8E, var_86)
  loc_12F2697: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_12F26AC:   Set var_8C = Me.Txt
  loc_12F26B2:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_12F26BA:   var_98.BackColor = -2147483643
  loc_12F26D5:   Set var_8C = Me.Txt
  loc_12F26DB:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_12F26E3:   var_98.ForeColor = &HC00000
  loc_12F26FE:   Set var_8C = Me.Txt
  loc_12F2704:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_12F270C:   var_98.BackColor = -2147483643
  loc_12F2727:   Set var_8C = Me.Txt
  loc_12F272D:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_12F2735:   var_98.ForeColor = &HC00000
  loc_12F2744: Next var_92 'Integer
  loc_12F2757: Set var_8C = Me.Txt
  loc_12F275D: Call 0.Method_Form_Load0 (CInt(0), var_98)
  loc_12F277C: Me.DGRest.Left = CVar(var_98.Left)
  loc_12F2798: Set var_C0 = Me.Txt
  loc_12F279E: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_12F27B9: Set var_8C = Me.Txt
  loc_12F27BF: Call 0.Method_Form_Load0 (CInt(0), var_98)
  loc_12F27D7: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_12F27E6: Me.DGRest.Top = CVar(var_98.Left)
  loc_12F2806: Set var_8C = Me.Txt
  loc_12F280C: Call 0.Method_Form_Load0 (CInt(2), var_98)
  loc_12F282B: Me.DGItemCat.Left = CVar(var_98.Left)
  loc_12F2847: Set var_C0 = Me.Txt
  loc_12F284D: Call 0.Method_Form_Load0 (CInt(2), var_C4)
  loc_12F2868: Set var_8C = Me.Txt
  loc_12F286E: Call 0.Method_Form_Load0 (CInt(2), var_98)
  loc_12F2886: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_12F2895: Me.DGItemCat.Top = CVar(var_98.Left)
  loc_12F28B5: Set var_8C = Me.Txt
  loc_12F28BB: Call 0.Method_Form_Load0 (CInt(1), var_98)
  loc_12F28DA: Me.DGItemGrp.Left = CVar(var_98.Left)
  loc_12F28F6: Set var_C0 = Me.Txt
  loc_12F28FC: Call 0.Method_Form_Load0 (CInt(1), var_C4)
  loc_12F2917: Set var_8C = Me.Txt
  loc_12F291D: Call 0.Method_Form_Load0 (CInt(1), var_98)
  loc_12F2935: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_12F2944: Me.DGItemGrp.Top = CVar(var_98.Left)
  loc_12F2964: Set var_8C = Me.Txt
  loc_12F296A: Call 0.Method_Form_Load0 (CInt(6), var_98)
  loc_12F2989: Me.DGParty.Left = CVar(var_98.Left)
  loc_12F29A5: Set var_C0 = Me.Txt
  loc_12F29AB: Call 0.Method_Form_Load0 (CInt(6), var_C4)
  loc_12F29C6: Set var_8C = Me.Txt
  loc_12F29CC: Call 0.Method_Form_Load0 (CInt(6), var_98)
  loc_12F29E4: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_12F29ED: Set var_CC = Me.DGParty
  loc_12F29F3: var_CC.Top = CVar(var_98.Left)
  loc_12F2A0F: Set global_76 = New 
  loc_12F2A21: Me.var_CC.CursorLocation = 3
  loc_12F2A3D: var_AC = "Select I.Code,I.Name as Name,I.DispCode,I.RestCode OutletCode From ItemMast I Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No' Order by I.Name"
  loc_12F2A49: Me.Open var_AC, CVar(MemVar_1F95044), 3
  loc_12F2A57: CVarUnk
  loc_12F2A5C: VerifyVarObj
  loc_12F2A62: Set var_8C = Me.DGItem
  loc_12F2A68: LateIdStAd
  loc_12F2A80: Set global_60 = New 
  loc_12F2A92: Me.DGItem.CursorLocation = 3
  loc_12F2ABC: var_DC = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order By Name") 'String
  loc_12F2AC6: Me.Open var_DC, CVar(MemVar_1F95044), 2
  loc_12F2ADA: CVarUnk
  loc_12F2ADF: VerifyVarObj
  loc_12F2AE5: Set var_8C = Me.DGRest
  loc_12F2AEB: LateIdStAd
  loc_12F2B03: Set global_52 = New 
  loc_12F2B15: Me.DGRest.CursorLocation = 3
  loc_12F2B49: Me.Open CVar("Select Code,Name,RestCode From ItemCatMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')"), CVar(MemVar_1F95044), 2
  loc_12F2B5D: CVarUnk
  loc_12F2B62: VerifyVarObj
  loc_12F2B68: Set var_8C = Me.DGItemCat
  loc_12F2B6E: LateIdStAd
  loc_12F2B98: Me.DGItemCat.CursorLocation = 3
  loc_12F2BC2: var_DC = CVar("Select Code,Name,RestCode From ItemGrp where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_12F2BCC: Me.Open var_DC, CVar(MemVar_1F95044), 2
  loc_12F2BE0: CVarUnk
  loc_12F2BE5: VerifyVarObj
  loc_12F2BEB: Set var_8C = Me.DGItemGrp
  loc_12F2BF1: LateIdStAd
  loc_12F2C1B: Me.DGItemGrp.CursorLocation = 3
  loc_12F2C45: var_DC = CVar("Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate') Order By Name") 'String
  loc_12F2C63: CVarUnk
  loc_12F2C68: VerifyVarObj
  loc_12F2C6E: Set var_8C = Me.DGParty
  loc_12F2C74: LateIdStAd
  loc_12F2C9E: Me.DGParty.CursorLocation = 3
  loc_12F2CC1: var_E0 = "Select Distinct IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'') SearchCode,D.Name As Department,Convert(varchar(11),AppDate,106) Appdate,IsNull(S.Name,'') Party From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Inner Join ItemMast I On I.Code=IR.ItemCode And I.RestCode=IR.RestCode Where (IR.LOGSITE_CODE='" & MemVar_1F95078
  loc_12F2CC8: var_DC = CVar("Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or IR.LOGSITE_CODE='HO')") 'String
  loc_12F2CD2: r_DC, CVar(MemVar_1F95044), 3 var_DC, CVar(MemVar_1F95044), 2
  loc_12F2D00: Call Proc_69_49_F47DBC(Proc_5_1_100EC1C("INI", Me, New, 3, -1, Me, New, 1), -1, Me, New)
  loc_12F2D0B: Call Proc_69_51_10195D8(3, -1)
  loc_12F2D28: Proc_6_23_DFC5B8(Me, 7590, 8600)
  loc_12F2D49: Call 0.Method_Form_Load0 (CInt(3), var_98, CStr(MemVar_1F950EC))
  loc_12F2D51: var_98.Text = Me.Txt
  loc_12F2D60: Exit Sub
  loc_12F2D61: ' Referenced from: 12F2674
  loc_12F2D61: Proc_6_60_E63754(global_52)
  loc_12F2D66: Exit Sub
End Sub

Private Sub Form_Resize() 'DFE4CC
  'Data Table: 4BDD94
  loc_DFE4C8: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C7E8
  'Data Table: 4BDD94
  loc_E6C797: Set global_76 = Nothing
  loc_E6C7A9: Set global_60 = Nothing
  loc_E6C7BB: Set global_52 = Nothing
  loc_E6C7CD: Set global_56 = Nothing
  loc_E6C7DF: Set global_64 = Nothing
  loc_E6C7E6: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E00FDC
  'Data Table: 4BDD94
  loc_E00FD0: On Error Goto loc_E00FD4
  loc_E00FD3: Exit Sub
  loc_E00FD4: ' Referenced from: E00FD0
  loc_E00FD4: Proc_6_60_E63754()
  loc_E00FD9: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F4BE54
  'Data Table: 4BDD94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4BD4B: Me.DGItemCat.Visible = False
  loc_F4BD6A: If (Me.RecordCount > 0) Then
  loc_F4BDA9:   Set var_B4 = Me.Txt
  loc_F4BDAF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4BDB7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4BDEA:   var_B0 = Me.Fields.Item("Name")
  loc_F4BE09:   Set var_B4 = Me.Txt
  loc_F4BE0F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4BE17:   var_B8.Text = CStr(var_B0.Value)
  loc_F4BE2D: End If
  loc_F4BE38: Set var_A8 = Me.Txt
  loc_F4BE3E: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2))
  loc_F4BE46: var_B0.SetFocus
  loc_F4BE52: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'EA680C
  'Data Table: 4BDD94
  Dim var_A8 As Variant
  loc_EA678C: Set var_88 = Me.DGItemCat
  loc_EA67B6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA67BE: Set var_BC = Me.DGItemCat
  loc_EA67FA: Proc_6_138_106E830(Me.DGItemCat, global_52, CInt(2), Me.FGPoint)
  loc_EA6808: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5EE44
  'Data Table: 4BDD94
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5EE0F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5EE22: Set var_A8 = Me.TxtGrid
  loc_E5EE28: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5EE30: var_AC.Visible = False
  loc_E5EE3C: Call Proc_69_50_F6FFAC()
  loc_E5EE41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68860
  'Data Table: 4BDD94
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6881C: Set var_88 = Me.TxtGrid
  loc_E68822: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6883C: If (var_8C.Visible = 0) Then
  loc_E68855:   Me.FGrid.BackColorSel = CVar(CLng(global_68))
  loc_E6885D: End If
  loc_E6885D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1FC20
  'Data Table: 4BDD94
  loc_E1FC17: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FC1F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF08C
  'Data Table: 4BDD94
  loc_DFF084: Call Proc_69_46_DFBE68()
  loc_DFF089: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116E33C
  'Data Table: 4BDD94
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As Variant
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_116DF74: Set var_88 = Me.TopCtrl1
  loc_116DF7A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_116DF93: If (CStr() = "Browse") Then
  loc_116DF96:   Exit Sub
  loc_116DF97: End If
  loc_116E00B: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_116E016:   var_9C = "+{Tab}"
  loc_116E01C:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_116E026:   KeyCode = 0
  loc_116E02C: Else
  loc_116E083:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_116E086:   End If
  loc_116E086: End If
  loc_116E08C: global_84 = KeyCode
  loc_116E0B2: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_116E0D6: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_116E0EC:   var_DC = CLng(Me.FGrid.Col)
  loc_116E0FC:   If (var_DC = CLng(1)) Then
  loc_116E11A:     If (Me.ChkParty.Value <> 1) Then
  loc_116E11D:       Exit Sub
  loc_116E11E:     End If
  loc_116E131:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116E149:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116E14E:     var_11C = vbNullString
  loc_116E158:     Set var_B4 = Me.FGrid
  loc_116E15E:     LateIdCallSt
  loc_116E179:   Else
  loc_116E180:     If (var_DC = CLng(3)) Then
  loc_116E19E:       If (Me.ChkParty.Value <> 1) Then
  loc_116E1A1:         Exit Sub
  loc_116E1A2:       End If
  loc_116E1B5:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116E1CD:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116E1D2:       var_11C = vbNullString
  loc_116E1DC:       Set var_B4 = Me.FGrid
  loc_116E1E2:       LateIdCallSt
  loc_116E20D:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116E215:       var_FC = CVar(CLng(2)) 'Long
  loc_116E21A:       var_11C = vbNullString
  loc_116E224:       Set var_A0 = Me.FGrid
  loc_116E22A:       LateIdCallSt
  loc_116E24F:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116E257:       var_FC = CVar(CLng(1)) 'Long
  loc_116E25C:       var_11C = vbNullString
  loc_116E266:       Set var_A0 = Me.FGrid
  loc_116E26C:       LateIdCallSt
  loc_116E291:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116E299:       var_FC = CVar(CLng(4)) 'Long
  loc_116E29E:       var_11C = vbNullString
  loc_116E2A8:       Set var_A0 = Me.FGrid
  loc_116E2AE:       LateIdCallSt
  loc_116E2C3:     Else
  loc_116E2CA:       If (var_DC = CLng(4)) Then
  loc_116E2E0:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116E2F8:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116E2FD:         var_11C = vbNullString
  loc_116E307:         Set var_B4 = Me.FGrid
  loc_116E30D:         LateIdCallSt
  loc_116E325:       End If
  loc_116E325:     End If
  loc_116E325:   End If
  loc_116E325: End If
  loc_116E32B: If (KeyCode = &HD) Then
  loc_116E333:   global_86 = 0
  loc_116E336: End If
  loc_116E338: KeyCode = 0
  loc_116E33B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10888
  'Data Table: 4BDD94
  loc_E10879: Call FGrid_UnknownEvent_C()
  loc_E10883: global_86 = 0
  loc_E10886: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10CB13C
  'Data Table: 4BDD94
  Dim var_88 As Variant
  Dim var_9C As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_10CAE5B: var_9C = CLng(Me.FGrid.Col)
  loc_10CAE6B: If (var_9C = CLng(3)) Then
  loc_10CAE89:   If (Me.ChkParty.Value <> 1) Then
  loc_10CAE8C:     Exit Sub
  loc_10CAE8D:   End If
  loc_10CAEBE:   var_CE = Asc(CStr(Ucase(Chr(CLng(KeyCode)))))
  loc_10CAEF4:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_10CAF13: Else
  loc_10CAF1A:   If (var_9C = CLng(1)) Then
  loc_10CAF38:     If (Me.ChkParty.Value <> 1) Then
  loc_10CAF3B:       Exit Sub
  loc_10CAF3C:     End If
  loc_10CAF57:     If (((KeyCode >= &H41) And (KeyCode <= &H5A)) Or ((KeyCode >= &H61) And (KeyCode <= &H7A))) Then
  loc_10CAF6C:       Me.FGrid.Col = CVar(CLng(3))
  loc_10CAF74:     End If
  loc_10CAFB2:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode)
  loc_10CAFC7:   Else
  loc_10CAFCE:     If (var_9C = CLng(4)) Then
  loc_10CAFD5:       Set var_C8 = Me.FGrid
  loc_10CAFF9:       var_B4 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_10CB002:       var_CE = Asc(var_B4)
  loc_10CB026:       Set var_B8 = var_C8
  loc_10CB038:       Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, &HFF, var_CE, 0)
  loc_10CB060:       Set var_88 = Me.TxtGrid
  loc_10CB066:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4, var_CE, 0)
  loc_10CB087:       If (Len(var_B4) <= 1) Then
  loc_10CB096:         Set var_88 = Me.TxtGrid
  loc_10CB09C:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4)
  loc_10CB0A4:         0 = var_B8.Text
  loc_10CB0B5:         Set var_BC = Me.TxtGrid
  loc_10CB0BB:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8, var_B4)
  loc_10CB0C3:         var_C8.Text = var_B8.Text
  loc_10CB0D6:       End If
  loc_10CB0E2:       Set var_88 = Me.TxtGrid
  loc_10CB0E8:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_10CB102:       Set var_BC = Me.TxtGrid
  loc_10CB108:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_10CB110:       var_C8.SelStart = Len(var_B8.Text)
  loc_10CB123:     End If
  loc_10CB123:   End If
  loc_10CB123: End If
  loc_10CB12D: If (CLng(KeyCode) <> &HD) Then
  loc_10CB135:   global_86 = &HFF
  loc_10CB138: End If
  loc_10CB138: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E66A9C
  'Data Table: 4BDD94
  Dim var_88 As MSHFlexGrid
  loc_E66A54: Set var_88 = Me.TopCtrl1
  loc_E66A5A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E66A73: If (CStr() = "Browse") Then
  loc_E66A76:   Exit Sub
  loc_E66A77: End If
  loc_E66A94: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E66A97:   Exit Sub
  loc_E66A98: End If
  loc_E66A98: Exit Sub
  loc_E66A99: Exit Sub
  loc_E66A9A: CopyBytes 7423
End Sub

Private Sub FGrid_UnknownEvent_12 'E9C5D0
  'Data Table: 4BDD94
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9C573: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9C58B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9C5B3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9C5CE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1FE00
  'Data Table: 4BDD94
  loc_E1FDF7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1FDFF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1FD60
  'Data Table: 4BDD94
  loc_E1FD57: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FD5F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43E38
  'Data Table: 4BDD94
  Dim var_8C As TextBox
  loc_E43E0C: Call Proc_69_50_F6FFAC()
  loc_E43E1C: Set var_88 = Me.TxtGrid
  loc_E43E22: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43E2A: var_8C.Visible = False
  loc_E43E36: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11AF048
  'Data Table: 4BDD94
  Dim var_A0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_E0 As Variant
  Dim var_90 As Variant
  Dim var_10C As String
  Dim var_108 As Variant
  Dim var_110 As Long
  Dim Me As Recordset15
  Dim var_104 As TextBox
  loc_11AEC2E: Set var_88 = Me.TxtGrid
  loc_11AEC34: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_11AEC42: Proc_6_74_E23240(var_8C)
  loc_11AEC4E: Call Proc_69_50_F6FFAC(var_8C)
  loc_11AEC66: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11AEC81: var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11AEC8A: Set var_8C = Me.FGrid
  loc_11AECB3: var_10C = CStr(Me.FGrid.TextMatrix))
  loc_11AECC0: Set var_104 = Me.TxtGrid
  loc_11AECC6: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_10C)
  loc_11AECCE: var_108.Tag = CVar(CLng(var_8C.Col))
  loc_11AECFA: Set var_88 = Me.TxtGrid
  loc_11AED00: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_11AED08: var_8C.MaxLength = 0
  loc_11AED27: var_110 = CLng(Me.FGrid.Col)
  loc_11AED37: If (var_110 = CLng(1)) Then
  loc_11AED4B:   Set var_88 = Me.Txt
  loc_11AED51:   Call 0.Method_TxtGrid_GotFocus0 (CInt(0), var_8C, var_10C)
  loc_11AED59:   "OutletCode='" = var_8C.Tag
  loc_11AED73:   Me.Filter = CVar(var_110 & var_10C & "'")
  loc_11AED8C: Else
  loc_11AED93:   If (var_110 = CLng(3)) Then
  loc_11AEDA2:     Set var_88 = Me.TxtGrid
  loc_11AEDA8:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_11AEDC7:     Me.DGItem.Left = CVar(var_8C.Left)
  loc_11AEDE1:     Set var_90 = Me.TxtGrid
  loc_11AEDE7:     Call 0.Method_TxtGrid_GotFocus0 (0, var_104)
  loc_11AEE00:     Set var_88 = Me.TxtGrid
  loc_11AEE06:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_11AEE1A:     var_A0 = CVar((var_8C.Top + var_104.Height)) 'Single
  loc_11AEE29:     Me.DGItem.Top = CVar(var_8C.Left)
  loc_11AEE52:     If (Me.RecordCount > 0) Then
  loc_11AEE60:       Set var_8C = Me.FGPoint
  loc_11AEE78:       Proc_6_137_1192FDC(Me.DGItem, global_76, Index)
  loc_11AEE86:     End If
  loc_11AEE97:     Set var_88 = Me.Txt
  loc_11AEE9D:     Call 0.Method_TxtGrid_GotFocus0 (CInt(0), var_8C, var_10C)
  loc_11AEEA5:     "OutletCode='" = var_8C.Tag
  loc_11AEEBF:     Me.Filter = CVar(var_8C & var_10C & "'")
  loc_11AEEDE:     var_118 = Me.RecordCount
  loc_11AEEF5:     var_11E = Me.EOF
  loc_11AEF09:     var_120 = Me.BOF
  loc_11AEF29:     var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11AEF65:     If (CVar(CLng(2)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_11AEF68:       Exit Sub
  loc_11AEF69:     End If
  loc_11AEF6F:     Me.MoveFirst
  loc_11AEF87:     var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11AEF8F:     var_E0 = CVar(CLng(2)) 'Long
  loc_11AEFD3:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_11AF003:     If (Me.EOF = &HFF) Then
  loc_11AF00C:       Me.MoveFirst
  loc_11AF011:     End If
  loc_11AF01A:     CVarUnk
  loc_11AF01F:     VerifyVarObj
  loc_11AF025:     Set var_88 = Me.DGItem
  loc_11AF02B:     LateIdStAd
  loc_11AF03C:   Else
  loc_11AF043:     If (var_110 = CLng(4)) Then
  loc_11AF046:     End If
  loc_11AF046:   End If
  loc_11AF046: End If
  loc_11AF046: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '114616C
  'Data Table: 4BDD94
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_1145DE3: var_86 = Shift
  loc_1145DE6: On Error Goto loc_1146165
  loc_1145DF3: If (CLng(Shift) = &H1B) Then
  loc_1145E03:   Set var_8C = Me.TxtGrid
  loc_1145E09:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1145E23:   Set var_98 = Me.TxtGrid
  loc_1145E29:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1145E31:   var_9C.Text = var_90.Tag
  loc_1145E4D:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1145E52:   Call Proc_69_50_F6FFAC(arg_14)
  loc_1145E5B:   Set var_8C = Me.FGrid
  loc_1145E78:   Set var_8C = Me.TxtGrid
  loc_1145E7E:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1145E86:   var_90.Visible = FGrid.DispID_8001
  loc_1145E92:   Exit Sub
  loc_1145E93: End If
  loc_1145EA6: var_B0 = CLng(Me.FGrid.Col)
  loc_1145EB6: If (var_B0 = CLng(3)) Then
  loc_1145ED6:   Set var_9C = Me.FGPoint
  loc_1145EE1:   Set var_98 = Nothing
  loc_1145F0F:   Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_1145F7E:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1145F85:     Set var_98 = Me.DGItem
  loc_1145FA4:     Proc_6_138_106E830(var_98, global_76, KeyCode, Me.FGPoint, 1)
  loc_1145FB2:   End If
  loc_1145FBC:   If (CLng(Shift) = &HD) Then
  loc_1145FC5:     Call Proc_69_47_146FE8C(KeyCode, var_B2, var_98, var_9C)
  loc_1145FD0:     If (var_B2 = &HFF) Then
  loc_114601D:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(4) + 1)))
  loc_114602D:     End If
  loc_114602D:   End If
  loc_1146030: Else
  loc_1146037:   If (var_B0 = CLng(1)) Then
  loc_1146044:     If (CLng(Shift) = &HD) Then
  loc_114604D:       Call Proc_69_47_146FE8C(KeyCode, var_B2, 0, 0)
  loc_1146058:       If (var_B2 = &HFF) Then
  loc_114609E:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, 4, 0)
  loc_11460AE:       End If
  loc_11460AE:     End If
  loc_11460B1:   Else
  loc_11460B8:     If (var_B0 = CLng(4)) Then
  loc_11460FB:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_1146104:         Call Proc_69_47_146FE8C(KeyCode, var_B2, 0, 0)
  loc_114610F:         If (var_B2 = &HFF) Then
  loc_1146155:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, 4, 0)
  loc_1146165:         End If
  loc_1146165:       End If
  loc_1146165:       ' Referenced from: 1145DE6
  loc_1146165:     End If
  loc_1146165:   End If
  loc_1146165: End If
  loc_1146165: Proc_6_60_E63754(0, 0, 0)
  loc_114616A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FCEB98
  'Data Table: 4BDD94
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As Variant
  Dim var_94 As Variant
  Dim var_A0 As Long
  loc_FCE9DB: Proc_6_58_E06050(arg_10)
  loc_FCE9E6: Proc_6_133_E7FB08(var_94)
  loc_FCE9EF: arg_10 = CInt(var_94)
  loc_FCE9F8: var_96 = KeyAscii
  loc_FCEA01: If (var_96 = 0) Then
  loc_FCEA17:   var_A0 = CLng(Me.FGrid.Col)
  loc_FCEA27:   If (var_A0 = CLng(1)) Then
  loc_FCEA45:     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_FCEA5A:       Me.FGrid.Col = CVar(CLng(3))
  loc_FCEA7E:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FCEAAB:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_76, arg_10, "Name")
  loc_FCEABA:       End If
  loc_FCEABA:     End If
  loc_FCEABD:   Else
  loc_FCEAC4:     If (var_A0 = CLng(3)) Then
  loc_FCEAE3:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FCEB10:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_76, arg_10, "Name", 0)
  loc_FCEB2A:         Set var_CC = Me.FGPoint
  loc_FCEB42:         Proc_6_138_106E830(Me.DGItem, global_76, KeyAscii, var_CC, 0)
  loc_FCEB50:       End If
  loc_FCEB53:     Else
  loc_FCEB5A:       If (var_A0 = CLng(4)) Then
  loc_FCEB67:         Set var_9C = Me.TxtGrid
  loc_FCEB6D:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_CC, var_A0)
  loc_FCEB88:         Proc_6_42_129B55C(var_CC, arg_10, 8, 2)
  loc_FCEB94:       End If
  loc_FCEB94:     End If
  loc_FCEB94:   End If
  loc_FCEB94: End If
  loc_FCEB94: Exit Sub
  loc_FCEB95: Set var_90 = var_96
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC81E0
  'Data Table: 4BDD94
  loc_EC813C: On Error Goto loc_EC81D8
  loc_EC8162: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_EC8188:   If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EC8199:     Call TxtGrid_KeyDown(KeyCode, global_84)
  loc_EC81AD:     var_A4 = "Name"
  loc_EC81C8:     Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_EC81D7:   End If
  loc_EC81D7: End If
  loc_EC81D7: Exit Sub
  loc_EC81D8: ' Referenced from: EC813C
  loc_EC81D8: Proc_6_60_E63754(var_A4, &HFF)
  loc_EC81DD: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24938
  'Data Table: 4BDD94
  Dim arg_10 As Integer
  loc_E24920: If (Cancel = 0) Then
  loc_E24929:   Call Proc_69_47_146FE8C(Cancel, var_88)
  loc_E24932:   arg_10 = Not(var_88)
  loc_E24935: End If
  loc_E24935: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7EC0C
  'Data Table: 4BDD94
  Dim var_94 As TextBox
  loc_E7EBA8: On Error Goto loc_E7EC04
  loc_E7EBCE: Call Proc_69_49_F47DBC(Proc_5_1_100EC1C("ADD", Me))
  loc_E7EBD9: Call Proc_69_48_F1F04C(global_72)
  loc_E7EBE9: Set var_8C = Me.Txt
  loc_E7EBEF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3))
  loc_E7EBF7: var_94.SetFocus
  loc_E7EC03: Exit Sub
  loc_E7EC04: ' Referenced from: E7EBA8
  loc_E7EC04: Proc_6_60_E63754(var_94)
  loc_E7EC09: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18FC8
  'Data Table: 4BDD94
  loc_E18FBD: Me.Global.Unload Me
  loc_E18FC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23D90
  'Data Table: 4BDD94
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F23C90: On Error Goto loc_F23D28
  loc_F23C9C: var_88 = Me.RecordCount
  loc_F23CAA: If (var_88 <= 0) Then
  loc_F23CB3:   var_B8 = "Information"
  loc_F23CCE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23CDE:   Exit Sub
  loc_F23CDF: End If
  loc_F23CE6: var_10C = "Select Distinct IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'') SearchCode,D.Name As Department,Convert(varchar(11),AppDate,106) Appdate,IsNull(S.Name,'') Party From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Where (IR.LOGSITE_CODE='" & MemVar_1F95078
  loc_F23CED: MemVar_1F950E4 = var_10C & "' or IR.LOGSITE_CODE='HO')"
  loc_F23CFA: MemVar_1F95120 = Me
  loc_F23D01: var_10C = "3000,1200,3000"
  loc_F23D07: Proc_6_126_F1C850(var_10C)
  loc_F23D22: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F23D27: Exit Sub
  loc_F23D28: ' Referenced from: F23C90
  loc_F23D30: Set var_110 = Err()
  loc_F23D36: Call 0.Method_arg_1C (var_88)
  loc_F23D47: If (var_88 <> 0) Then
  loc_F23D52:   Set var_110 = Err()
  loc_F23D58:   Call 0.Method_arg_2C (var_10C)
  loc_F23D79:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F23D8C: End If
  loc_F23D8C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E65F14
  'Data Table: 4BDD94
  Dim Me As Recordset15
  loc_E65ECB: Me.Requery -1
  loc_E65EDB: Me.Requery -1
  loc_E65EEB: Me.Requery -1
  loc_E65EFB: Me.Requery -1
  loc_E65F0B: Me.Requery -1
  loc_E65F10: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1351AE0
  'Data Table: 4BDD94
  Dim var_8C As Variant
  Dim unk_4BDDA8 As Connection15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_98 As TextBox
  Dim var_10C As TextBox
  Dim var_1BC As Variant
  Dim var_F8 As String
  Dim var_100 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_184 As String
  Dim var_1A8 As Recordset15
  Dim var_1AC As Fields15
  Dim var_1C0 As Field20
  Dim var_31C As Double
  Dim var_194 As Variant
  Dim var_94 As Variant
  Dim var_1A4 As Variant
  Dim var_108 As TextBox
  Dim var_11C As Variant
  Dim var_FC As String
  Dim var_110 As String
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_260 As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  loc_1351358: On Error Goto loc_1351A56
  loc_1351376: If (Me.ChkParty.Value = 1) Then
  loc_1351384:   Set var_8C = Me.Txt
  loc_135138A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6))
  loc_135139B:   Set var_98 = var_94
  loc_13513B3:   If (Proc_6_27_EA61EC(var_98, "Party Name") = 0) Then
  loc_13513B6:     Exit Sub
  loc_13513B7:   End If
  loc_13513B7: End If
  loc_13513C0: unk_4BDDA8.BeginTrans var_A0
  loc_13513C9: var_88 = CByte(1) 'Byte
  loc_13513F2: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B4 'Integer
  loc_13513FC:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_1351404:   var_E4 = CVar(CLng(2)) 'Long
  loc_1351413:   var_B0 = Me.FGrid.TextMatrix)
  loc_135142D:   Set var_94 = Me.Txt
  loc_1351433:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_FC, var_B0)
  loc_135143B:   var_E4 = var_98.Tag
  loc_135144E:   Set var_108 = Me.Txt
  loc_1351454:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_10C, var_110)
  loc_135145C:   var_C4 = var_10C.Tag
  loc_135146C:   Set var_11C = Me.Txt
  loc_1351472:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120)
  loc_1351481:   Proc_6_7_F26918(var_140, CVar(var_120))
  loc_135148C:   var_1BC = 0
  loc_13514C9:   var_118 = "Select count(*) From ItemRate Where ItemCode='" & CStr(var_B0) & "' And RestCode='" & var_FC & "' And Party='" & var_110
  loc_13514E3:   var_184 = CStr(CVar(var_118 & "' And AppDate=") & var_140 & vbNullString)
  loc_13514ED:   unk_4BDDA8.Execute var_184, var_1A4, -1
  loc_13514F5:   var_1A8 = var_1A8.Fields
  loc_13514FD:   var_1BC = var_1AC.Item(var_1AC)
  loc_1351505:   var_1C0 = var_1C0.Value
  loc_1351552:   If (var_1D0 > 0) Then
  loc_1351583:     var_31C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1351594:     Proc_6_7_F26918(var_140, Date, var_31C, CVar(CLng(4)))
  loc_135159D:     var_194 = CVar(CLng(var_86)) 'Long
  loc_13515B4:     var_1A4 = Me.FGrid.TextMatrix)
  loc_13515CE:     Set var_98 = Me.Txt
  loc_13515D4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_108, var_118, var_1A4, CVar(CLng(2)))
  loc_13515DC:     var_194 = var_108.Tag
  loc_13515EF:     Set var_10C = Me.Txt
  loc_13515F5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_11C, var_184, CVar(CLng(var_86)))
  loc_13515FD:     var_1D0 = var_11C.Tag
  loc_135160D:     Set var_120 = Me.Txt
  loc_1351613:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A8)
  loc_1351622:     Proc_6_7_F26918(var_2C0, CVar(var_1A8))
  loc_1351647:     var_100 = "Update ItemRate Set Rate=" & CStr(var_31C) & ",Site_Code='"
  loc_135165C:     var_114 = var_100 & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8
  loc_1351663:     var_150 = CVar(var_114 & "',U_EntDt=") 'String
  loc_1351699:     var_260 = var_150 & var_140 & ",U_AE='E' Where ItemCode='" & CVar(CStr(var_1A4)) & "' And RestCode='" & CVar(var_118) & "' And Party='" 
  loc_13516CA:     unk_4BDDA8.Execute CStr(var_260 & CVar(var_184) & "' And AppDate=" & var_2C0 & vbNullString), var_314, -1
  loc_1351725:   Else
  loc_1351729:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_1351740:     var_B0 = Me.FGrid.TextMatrix)
  loc_135175A:     Set var_94 = Me.Txt
  loc_1351760:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_100, var_B0, CVar(CLng(2)))
  loc_1351768:     var_C4 = var_98.Tag
  loc_135177B:     Set var_108 = Me.Txt
  loc_1351781:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_10C, var_114)
  loc_1351789:     var_1AC = var_10C.Tag
  loc_13517A3:     Set var_11C = Me.FGrid
  loc_13517BC:     var_31C = Val(CStr(var_11C.TextMatrix)))
  loc_13517CA:     Set var_120 = Me.Txt
  loc_13517D0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A8, var_31C, CVar(CLng(4)))
  loc_13517DF:     Proc_6_7_F26918(var_150, CVar(var_1A8), CVar(CLng(var_86)))
  loc_13517F2:     Proc_6_7_F26918(var_260, Date)
  loc_1351812:     var_F8 = CStr(var_B0)
  loc_1351816:     var_FC = "Insert Into Itemrate(ItemCode,RestCode,Party,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,lOGSITE_CODE)" & " Values('" & var_F8
  loc_135186E:     var_1F0 = CVar(var_FC & "','" & var_100 & "','" & var_114 & "'," & CStr(var_31C) & ",") & var_150 & ",'" & CVar(MemVar_1F95070) & "','" 
  loc_13518B2:     unk_4BDDA8.Execute CStr(var_1F0 & CVar(MemVar_1F950C8) & "'," & var_260 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_2C0, -1
  loc_1351910:   End If
  loc_1351913: Next var_B4 'Integer
  loc_135191E: unk_4BDDA8.CommitTrans
  loc_1351927: var_88 = CByte(0) 'Byte
  loc_1351936: Me.Requery -1
  loc_1351949: Set var_8C = Me.Txt
  loc_135194F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_1351967: Set var_98 = Me.Txt
  loc_135196D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_1351991: var_140 = Format(CVar(var_108), "dd/mm/yyyy")
  loc_13519A4: Set var_10C = Me.Txt
  loc_13519AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_11C, var_F8)
  loc_13519B2: 1 = var_11C.Tag
  loc_13519CD: var_150 = CVar(var_94.Tag) 'String
  loc_13519D3: var_160 = (var_150 + var_140)
  loc_13519DD: var_1A4 = (CVar(var_FC & "','" & var_100 & "','" & var_114 & "'," & CStr(var_31C) & ",") + CVar(var_F8))
  loc_13519F8: Me.Find CStr("SearchCode ='" & CVar(var_FC & "','" & var_100 & "','" & var_114 & "'," & CStr(var_31C) & ",") & var_150 & ",'" & "'"), 0, 1
  loc_1351A45: Call Proc_69_49_F47DBC(Proc_5_1_100EC1C("INI", Me, global_72), var_F4)
  loc_1351A50: Call Proc_69_45_121D64C(1)
  loc_1351A55: Exit Sub
  loc_1351A56: ' Referenced from: 1351358
  loc_1351A5F: If (CInt(var_88) = 1) Then
  loc_1351A68:   unk_4BDDA8.RollbackTrans
  loc_1351A6D: End If
  loc_1351A75: Set var_8C = Err()
  loc_1351A7B: Call 0.Method_arg_1C (var_A0)
  loc_1351A88: Set var_94 = Err()
  loc_1351A8E: Call 0.Method_arg_2C (var_F8)
  loc_1351ABF: MsgBox(CVar(CStr(var_A0) & " : " & var_F8), &H10, "Message ", var_140, var_150)
  loc_1351ADF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1335DDC
  'Data Table: 4BDD94
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_1335626: Set var_88 = Me.Txt
  loc_133562C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_133563A: Proc_6_74_E23240(var_8C)
  loc_1335646: Call Proc_69_50_F6FFAC(var_8C)
  loc_133564E: var_92 = Index
  loc_1335659: If (var_92 = CInt(0)) Then
  loc_1335673:   If (Me.RecordCount > 0) Then
  loc_1335681:     Set var_8C = Me.FGPoint
  loc_1335699:     Proc_6_137_1192FDC(Me.DGRest, global_60, Index)
  loc_13356A7:   End If
  loc_13356F5:   Set var_88 = Me.Txt
  loc_13356FB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1335703:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133571B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_133571E:     Exit Sub
  loc_133571F:   End If
  loc_133572C:   Set var_88 = Me.Txt
  loc_1335732:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133573A:   var_A0 = var_8C.Text
  loc_1335742:   var_D4 = CVar(var_A0) 'String
  loc_1335787:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1335790:     Me.MoveFirst
  loc_13357B5:     Set var_88 = Me.Txt
  loc_13357BB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13357C3:     0 = var_8C.Text
  loc_13357D1:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_13357E7:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_13357FF:   End If
  loc_1335802: Else
  loc_133580A:   If (var_92 = CInt(2)) Then
  loc_133581C:     Me.Filter = 0
  loc_1335832:     Set var_88 = Me.Txt
  loc_1335838:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1335840:     var_A0 = var_8C.Tag
  loc_133585A:     Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_1335887:     If (Me.RecordCount > 0) Then
  loc_1335895:       Set var_8C = Me.FGPoint
  loc_13358AD:       Proc_6_137_1192FDC(Me.DGItemCat, global_52)
  loc_13358BB:     End If
  loc_1335909:     Set var_88 = Me.Txt
  loc_133590F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1335917:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133592F:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1335932:       Exit Sub
  loc_1335933:     End If
  loc_1335940:     Set var_88 = Me.Txt
  loc_1335946:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133594E:     var_A0 = var_8C.Text
  loc_1335956:     var_D4 = CVar(var_A0) 'String
  loc_133599B:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13359A4:       Me.MoveFirst
  loc_13359C9:       Set var_88 = Me.Txt
  loc_13359CF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13359D7:       0 = var_8C.Text
  loc_13359E5:       Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_13359FB:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1335A13:     End If
  loc_1335A16:   Else
  loc_1335A1E:     If (var_92 = CInt(1)) Then
  loc_1335A30:       Me.Filter = 0
  loc_1335A46:       Set var_88 = Me.Txt
  loc_1335A4C:       Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1335A54:       var_A0 = var_8C.Tag
  loc_1335A6E:       Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_1335A9B:       If (Me.RecordCount > 0) Then
  loc_1335AA9:         Set var_8C = Me.FGPoint
  loc_1335AC1:         Proc_6_137_1192FDC(Me.DGItemGrp, global_56)
  loc_1335ACF:       End If
  loc_1335B1D:       Set var_88 = Me.Txt
  loc_1335B23:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1335B2B:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1335B43:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1335B46:         Exit Sub
  loc_1335B47:       End If
  loc_1335B54:       Set var_88 = Me.Txt
  loc_1335B5A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1335B62:       var_A0 = var_8C.Text
  loc_1335B6A:       var_D4 = CVar(var_A0) 'String
  loc_1335BAF:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1335BB8:         Me.MoveFirst
  loc_1335BDD:         Set var_88 = Me.Txt
  loc_1335BE3:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1335BEB:         0 = var_8C.Text
  loc_1335BF9:         Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_1335C0F:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1335C27:       End If
  loc_1335C2A:     Else
  loc_1335C32:       If (var_92 = CInt(6)) Then
  loc_1335C4C:         If (Me.RecordCount > 0) Then
  loc_1335C5A:           Set var_8C = Me.FGPoint
  loc_1335C72:           Proc_6_137_1192FDC(Me.DGParty, global_64)
  loc_1335C80:         End If
  loc_1335CCE:         Set var_88 = Me.Txt
  loc_1335CD4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1335CDC:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1335CF4:         If (Index Or (var_A0 = vbNullString)) Then
  loc_1335CF7:           Exit Sub
  loc_1335CF8:         End If
  loc_1335D05:         Set var_88 = Me.Txt
  loc_1335D0B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1335D13:         var_A0 = var_8C.Text
  loc_1335D1B:         var_D4 = CVar(var_A0) 'String
  loc_1335D60:         If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1335D69:           Me.MoveFirst
  loc_1335D8E:           Set var_88 = Me.Txt
  loc_1335D94:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1335D9C:           0 = var_8C.Text
  loc_1335DAA:           Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_1335DC0:           Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1335DD8:         End If
  loc_1335DD8:       End If
  loc_1335DD8:     End If
  loc_1335DD8:   End If
  loc_1335DD8: End If
  loc_1335DD8: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1221034
  'Data Table: 4BDD94
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_1220B52: If (CLng(Shift) = &H1B) Then
  loc_1220B55:   Call Proc_69_50_F6FFAC()
  loc_1220B5A:   Exit Sub
  loc_1220B5B: End If
  loc_1220B5E: var_86 = KeyCode
  loc_1220B69: If (var_86 = CInt(0)) Then
  loc_1220B89:   Set var_9C = Me.FGPoint
  loc_1220B94:   Set var_98 = Nothing
  loc_1220BC2:   Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_1220C31:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1220C57:     Proc_6_138_106E830(Me.DGRest, global_60, KeyCode, Me.FGPoint, 1)
  loc_1220C65:   End If
  loc_1220C68: Else
  loc_1220C70:   If (var_86 = CInt(2)) Then
  loc_1220C9B:     Set var_98 = Nothing
  loc_1220CC9:     Proc_6_69_134A630(Me.DGItemCat, Me.Txt, KeyCode, global_52, Shift, 0, 1)
  loc_1220D38:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1220D3F:       Set var_98 = Me.DGItemCat
  loc_1220D5E:       Proc_6_138_106E830(var_98, global_52, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_1220D6C:     End If
  loc_1220D6F:   Else
  loc_1220D77:     If (var_86 = CInt(1)) Then
  loc_1220DD0:       Proc_6_69_134A630(Me.DGItemGrp, Me.Txt, KeyCode, global_56, Shift, 0, 1, Nothing)
  loc_1220E3F:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1220E65:         Proc_6_138_106E830(Me.DGItemGrp, global_56, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1220E73:       End If
  loc_1220E76:     Else
  loc_1220E7E:       If (var_86 = CInt(6)) Then
  loc_1220ED7:         Proc_6_69_134A630(Me.DGParty, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1220F46:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1220F6C:           Proc_6_138_106E830(Me.DGParty, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1220F7A:         End If
  loc_1220F7A:       End If
  loc_1220F7A:     End If
  loc_1220F7A:   End If
  loc_1220F7A: End If
  loc_1220FAB: Set var_98 = Me.DGParty
  loc_1220FC2: Set var_9C = Me.DGRest
  loc_1220FEB: If ((((CBool(Me.DGItemCat.Visible) = 0) And (CBool(Me.DGItemGrp.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_1221001:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_122100A:     Proc_6_76_E533C8(Shift, arg_14, 0, var_98)
  loc_122100F:   End If
  loc_1221024:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_122102D:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_1221032:   End If
  loc_1221032: End If
  loc_1221032: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11345E4
  'Data Table: 4BDD94
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_1134267: Proc_6_58_E06050(arg_10)
  loc_1134272: Proc_6_133_E7FB08(var_94)
  loc_113427B: arg_10 = CInt(var_94)
  loc_1134284: var_96 = KeyAscii
  loc_113428F: If (var_96 = CInt(0)) Then
  loc_11342AE:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_11342DB:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_113430D:     Proc_6_138_106E830(Me.DGRest, global_60, KeyAscii, Me.FGPoint)
  loc_113431B:   End If
  loc_113431E: Else
  loc_1134326:   If (var_96 = CInt(2)) Then
  loc_1134345:     If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1134372:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_11343A4:       Proc_6_138_106E830(Me.DGItemCat, global_52, KeyAscii, Me.FGPoint, 0)
  loc_11343B2:     End If
  loc_11343B5:   Else
  loc_11343BD:     If (var_96 = CInt(1)) Then
  loc_11343DC:       If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_1134409:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_113443B:         Proc_6_138_106E830(Me.DGItemGrp, global_56, KeyAscii, Me.FGPoint, 0)
  loc_1134449:       End If
  loc_113444C:     Else
  loc_1134454:       If (var_96 = CInt(6)) Then
  loc_1134473:         If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_11344A0:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_11344BA:           Set var_A8 = Me.FGPoint
  loc_11344D2:           Proc_6_138_106E830(Me.DGParty, global_64, KeyAscii, var_A8, 0)
  loc_11344E0:         End If
  loc_11344E3:       Else
  loc_11344EB:         If (var_96 = CInt(4)) Then
  loc_1134517:           If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_1134527:             Set var_9C = Me.Txt
  loc_113452D:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Amount", 0)
  loc_1134535:             var_A8.Text = var_96
  loc_1134544:           Else
  loc_113456D:             If (Ucase(Chr(CLng(arg_10))) = "P") Then
  loc_113457D:               Set var_9C = Me.Txt
  loc_1134583:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Percent")
  loc_113458B:               var_A8.Text = arg_10
  loc_1134597:             End If
  loc_1134597:           End If
  loc_1134599:           arg_10 = 0
  loc_113459F:         Else
  loc_11345A7:           If (var_96 = CInt(5)) Then
  loc_11345B4:             Set var_9C = Me.Txt
  loc_11345BA:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_11345D5:             Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_11345E1:           End If
  loc_11345E1:         End If
  loc_11345E1:       End If
  loc_11345E1:     End If
  loc_11345E1:   End If
  loc_11345E1: End If
  loc_11345E1: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C1B4
  'Data Table: 4BDD94
  loc_E4C192: Set var_88 = Me.Txt
  loc_E4C198: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C1A6: Proc_6_73_E23294(var_8C)
  loc_E4C1B2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '139C950
  'Data Table: 4BDD94
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_A0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_9C As TextBox
  loc_139C053: var_86 = Cancel
  loc_139C05E: If (var_86 = CInt(3)) Then
  loc_139C06E:   Set var_8C = Me.Txt
  loc_139C074:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C093:   If (var_90.Text <> vbNullString) Then
  loc_139C0A0:     Set var_8C = Me.Txt
  loc_139C0A6:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C0C6:     Set var_9C = Me.Txt
  loc_139C0CC:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_139C0D4:     var_A0.Text = Proc_6_33_15125B8(var_90)
  loc_139C0EA:   Else
  loc_139C0FC:     Set var_8C = Me.Txt
  loc_139C102:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C10A:     var_90.Text = CStr(MemVar_1F950EC)
  loc_139C119:   End If
  loc_139C126:   Set var_8C = Me.Txt
  loc_139C12C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C14C:   If (CDate(var_90.Text) < MemVar_1F950EC) Then
  loc_139C176:     MsgBox("App. Date should be Equal_to or Greater_than " & CDate(MemVar_1F950EC) & ".", &H40, var_110, var_130, var_150)
  loc_139C18A:     arg_10 = &HFF
  loc_139C18D:     Exit Sub
  loc_139C18E:   End If
  loc_139C191: Else
  loc_139C199:   If (var_86 = CInt(0)) Then
  loc_139C1A7:     Set var_8C = Me.Txt
  loc_139C1AD:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_139C1B5:     var_94 = "Rest Name"
  loc_139C1D6:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_139C1DB:       arg_10 = &HFF
  loc_139C1DE:       Exit Sub
  loc_139C1DF:     End If
  loc_139C22D:     Set var_8C = Me.Txt
  loc_139C233:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_139C253:     If (var_90.Text Or (var_94 = vbNullString)) Then
  loc_139C263:       Set var_8C = Me.Txt
  loc_139C269:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C271:       var_90.Text = vbNullString
  loc_139C28A:       Set var_8C = Me.Txt
  loc_139C290:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C298:       var_90.Tag = vbNullString
  loc_139C2A7:     Else
  loc_139C2E2:       Set var_98 = Me.Txt
  loc_139C2E8:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139C2F0:       var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_139C323:       var_90 = Me.Fields.Item("Code")
  loc_139C334:       var_94 = CStr(var_90.Value)
  loc_139C341:       Set var_98 = Me.Txt
  loc_139C347:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139C34F:       var_9C.Tag = var_94
  loc_139C365:     End If
  loc_139C368:   Else
  loc_139C370:     If (var_86 = CInt(2)) Then
  loc_139C3C1:       Set var_8C = Me.Txt
  loc_139C3C7:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_139C3CF:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_139C3E7:       If (var_86 Or (var_94 = vbNullString)) Then
  loc_139C3F7:         Set var_8C = Me.Txt
  loc_139C3FD:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C405:         var_90.Text = vbNullString
  loc_139C41E:         Set var_8C = Me.Txt
  loc_139C424:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C42C:         var_90.Tag = vbNullString
  loc_139C43B:       Else
  loc_139C476:         Set var_98 = Me.Txt
  loc_139C47C:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139C484:         var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_139C4B7:         var_90 = Me.Fields.Item("Code")
  loc_139C4D5:         Set var_98 = Me.Txt
  loc_139C4DB:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139C4E3:         var_9C.Tag = CStr(var_90.Value)
  loc_139C4F9:       End If
  loc_139C4FC:     Else
  loc_139C504:       If (var_86 = CInt(1)) Then
  loc_139C555:         Set var_8C = Me.Txt
  loc_139C55B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C57B:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_139C58B:           Set var_8C = Me.Txt
  loc_139C591:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C599:           var_90.Text = vbNullString
  loc_139C5B2:           Set var_8C = Me.Txt
  loc_139C5B8:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C5C0:           var_90.Tag = vbNullString
  loc_139C5CF:         Else
  loc_139C60A:           Set var_98 = Me.Txt
  loc_139C610:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139C618:           var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_139C64B:           var_90 = Me.Fields.Item("Code")
  loc_139C669:           Set var_98 = Me.Txt
  loc_139C66F:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139C677:           var_9C.Tag = CStr(var_90.Value)
  loc_139C68D:         End If
  loc_139C690:       Else
  loc_139C698:         If (var_86 = CInt(6)) Then
  loc_139C6E9:           Set var_8C = Me.Txt
  loc_139C6EF:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C70F:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_139C71F:             Set var_8C = Me.Txt
  loc_139C725:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C72D:             var_90.Text = vbNullString
  loc_139C746:             Set var_8C = Me.Txt
  loc_139C74C:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C754:             var_90.Tag = vbNullString
  loc_139C763:           Else
  loc_139C79E:             Set var_98 = Me.Txt
  loc_139C7A4:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139C7AC:             var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_139C7DF:             var_90 = Me.Fields.Item("Code")
  loc_139C7FD:             Set var_98 = Me.Txt
  loc_139C803:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139C80B:             var_9C.Tag = CStr(var_90.Value)
  loc_139C821:           End If
  loc_139C824:         Else
  loc_139C82C:           If (var_86 = CInt(4)) Then
  loc_139C839:             Set var_8C = Me.Txt
  loc_139C83F:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_139C87A:             If (Ucase(Left(CVar(var_90), 1)) = "P") Then
  loc_139C88A:               Set var_8C = Me.Txt
  loc_139C890:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C898:               var_90.Text = "Percent"
  loc_139C8A7:             Else
  loc_139C8B4:               Set var_8C = Me.Txt
  loc_139C8BA:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C8C2:               var_90.Text = "Amount"
  loc_139C8CE:             End If
  loc_139C8D1:           Else
  loc_139C8D9:             If (var_86 = CInt(5)) Then
  loc_139C8E6:               Set var_8C = Me.Txt
  loc_139C8EC:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139C926:               Set var_98 = Me.Txt
  loc_139C92C:               Call 0.Method_Txt_Validate0 (Cancel, var_9C, CStr(Format(CVar(var_90), "0.00")))
  loc_139C934:               var_9C.Text = 1
  loc_139C94E:             End If
  loc_139C94E:           End If
  loc_139C94E:         End If
  loc_139C94E:       End If
  loc_139C94E:     End If
  loc_139C94E:   End If
  loc_139C94E: End If
  loc_139C94E: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F3BFF4
  'Data Table: 4BDD94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3BEEB: Me.DGRest.Visible = False
  loc_F3BF0A: If (Me.RecordCount > 0) Then
  loc_F3BF49:   Set var_B4 = Me.Txt
  loc_F3BF4F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3BF57:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3BF8A:   var_B0 = Me.Fields.Item("Name")
  loc_F3BFA9:   Set var_B4 = Me.Txt
  loc_F3BFAF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3BFB7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3BFCD: End If
  loc_F3BFD8: Set var_A8 = Me.Txt
  loc_F3BFDE: Call 0.Method_DGRest_UnknownEvent_90 (CInt(0))
  loc_F3BFE6: var_B0.SetFocus
  loc_F3BFF2: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'EA6D68
  'Data Table: 4BDD94
  Dim var_A8 As Variant
  loc_EA6CE8: Set var_88 = Me.DGRest
  loc_EA6D12: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6D1A: Set var_BC = Me.DGRest
  loc_EA6D56: Proc_6_138_106E830(Me.DGRest, global_60, CInt(0), Me.FGPoint)
  loc_EA6D64: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4C694
  'Data Table: 4BDD94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C58B: Me.DGParty.Visible = False
  loc_F4C5AA: If (Me.RecordCount > 0) Then
  loc_F4C5E9:   Set var_B4 = Me.Txt
  loc_F4C5EF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4C5F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4C62A:   var_B0 = Me.Fields.Item("Name")
  loc_F4C649:   Set var_B4 = Me.Txt
  loc_F4C64F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4C657:   var_B8.Text = CStr(var_B0.Value)
  loc_F4C66D: End If
  loc_F4C678: Set var_A8 = Me.Txt
  loc_F4C67E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(6))
  loc_F4C686: var_B0.SetFocus
  loc_F4C692: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA6CA4
  'Data Table: 4BDD94
  Dim var_A8 As Variant
  loc_EA6C24: Set var_88 = Me.DGParty
  loc_EA6C4E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6C56: Set var_BC = Me.DGParty
  loc_EA6C92: Proc_6_138_106E830(Me.DGParty, global_64, CInt(6), Me.FGPoint)
  loc_EA6CA0: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '1049BA8
  'Data Table: 4BDD94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_104995F: Me.DGItem.Visible = False
  loc_104997E: If (Me.RecordCount > 0) Then
  loc_10499BB:   Set var_B4 = Me.TxtGrid
  loc_10499C1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10499C9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10499F2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10499FA:   var_EC = CVar(CLng(3)) 'Long
  loc_1049A2D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1049A35:   Set var_B8 = Me.FGrid
  loc_1049A3B:   LateIdCallSt
  loc_1049A6A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1049A72:   var_EC = CVar(CLng(2)) 'Long
  loc_1049AA5:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1049AAD:   Set var_B8 = Me.FGrid
  loc_1049AB3:   LateIdCallSt
  loc_1049AEA:   var_EC = CVar(CLng(1)) 'Long
  loc_1049B0C:   var_B0 = Me.Fields.Item("DispCode")
  loc_1049B1D:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_1049B25:   Set var_B8 = Me.FGrid
  loc_1049B2B:   LateIdCallSt
  loc_1049B4F:   Call Proc_69_47_146FE8C(0, var_130, var_B8, var_11C, var_EC, CVar(CLng(Me.FGrid.Row)), var_B8)
  loc_1049B54: End If
  loc_1049B60: Set var_A8 = Me.TxtGrid
  loc_1049B66: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_11C, var_EC)
  loc_1049B6E: var_A4 = var_B0.Visible
  loc_1049B80: If (var_12E = &HFF) Then
  loc_1049B8C:   Set var_A8 = Me.TxtGrid
  loc_1049B92:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_1049B9A:   var_B0.SetFocus
  loc_1049BA6: End If
  loc_1049BA6: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_9 'F50F74
  'Data Table: 4BDD94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F50E6B: Me.DGItemGrp.Visible = False
  loc_F50E8A: If (Me.RecordCount > 0) Then
  loc_F50EC9:   Set var_B4 = Me.Txt
  loc_F50ECF:   Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F50ED7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F50F0A:   var_B0 = Me.Fields.Item("Name")
  loc_F50F29:   Set var_B4 = Me.Txt
  loc_F50F2F:   Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F50F37:   var_B8.Text = CStr(var_B0.Value)
  loc_F50F4D: End If
  loc_F50F58: Set var_A8 = Me.Txt
  loc_F50F5E: Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1))
  loc_F50F66: var_B0.SetFocus
  loc_F50F72: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_1F 'EA6994
  'Data Table: 4BDD94
  Dim var_A8 As Variant
  loc_EA6914: Set var_88 = Me.DGItemGrp
  loc_EA693E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6946: Set var_BC = Me.DGItemGrp
  loc_EA6982: Proc_6_138_106E830(Me.DGItemGrp, global_56, CInt(1), Me.FGPoint)
  loc_EA6990: Exit Sub
  loc_EA6991: DGItemGrp.DispID_1B = var_A8
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6914
  'Data Table: 4BDD94
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC688A: On Error Goto loc_EC68CF
  loc_EC6893: Me.MoveFirst
  loc_EC68AD: var_8C = "Searchcode='" & MyValue
  loc_EC68BD: Me.Find var_8C & "'", 0, 1
  loc_EC68C9: Call Proc_69_45_121D64C(var_A0)
  loc_EC68CE: Exit Sub
  loc_EC68CF: ' Referenced from: EC688A
  loc_EC68D7: Set var_A4 = Err()
  loc_EC68DD: Call 0.Method_arg_2C (var_8C)
  loc_EC68FE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6911: Exit Sub
  loc_EC6912: Exit Sub
End Sub

Public Sub Proc_69_45_121D64C
  'Data Table: 4BDD94
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim unk_4BDDA8 As Connection15
  Dim var_88 As Recordset15
  Dim var_128 As TextBox
  Dim var_BC As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  loc_121D174: On Error Goto loc_121D645
  loc_121D179: var_8A = 1
  loc_121D193: If (Me.RecordCount > 0) Then
  loc_121D1AA:   var_94 = "Select D.Name As OutletName,IsNull(S.Name,'') PartyName,IR.RestCode,IR.Party,IR.ItemCode,I.Name ItemName,I.DispCode,IR.Rate,IR.Appdate From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Inner Join ItemMast I On I.Code=IR.ItemCode And I.RestCode=IR.RestCode Where (IR.LOGSITE_CODE='" & MemVar_1F95078
  loc_121D1B1:   var_CC = CVar(var_94 & "' or IR.LOGSITE_CODE='HO') And IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'')='") 'String
  loc_121D1F8:   unk_4BDDA8.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "' Order BY I.Name"), var_120, -1
  loc_121D203:   Set var_88 = var_124
  loc_121D237:   If (var_88.RecordCount > 0) Then
  loc_121D23A:     Call Proc_69_48_F1F04C(var_124)
  loc_121D278:     Set var_124 = Me.Txt
  loc_121D27E:     Call 0.Method_Proc_69_45_121D64C0 (CInt(0), var_128)
  loc_121D286:     var_128.Tag = CStr(var_88.Fields.Item("RestCode").Value)
  loc_121D2D5:     Set var_124 = Me.Txt
  loc_121D2DB:     Call 0.Method_Proc_69_45_121D64C0 (CInt(0), var_128)
  loc_121D2E3:     var_128.Text = CStr(var_88.Fields.Item("OutLetName").Value)
  loc_121D332:     Set var_124 = Me.Txt
  loc_121D338:     Call 0.Method_Proc_69_45_121D64C0 (CInt(6), var_128)
  loc_121D340:     var_128.Tag = CStr(var_88.Fields.Item("Party").Value)
  loc_121D38F:     Set var_124 = Me.Txt
  loc_121D395:     Call 0.Method_Proc_69_45_121D64C0 (CInt(6), var_128)
  loc_121D39D:     var_128.Text = CStr(var_88.Fields.Item("PartyName").Value)
  loc_121D405:     Set var_124 = Me.Txt
  loc_121D40B:     Call 0.Method_Proc_69_45_121D64C0 (CInt(3), var_128, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/yyyy")))
  loc_121D413:     var_128.Text = 1
  loc_121D42D:     ' Referenced from: 121D60C
  loc_121D43C:     If Not(var_88.EOF) Then
  loc_121D446:       var_A8 = vbNullString
  loc_121D45B:       var_A8 = CVar(CLng(var_8A)) 'Long
  loc_121D46D:       var_BC = CVar(CStr(var_8A)) 'String
  loc_121D474:       LateIdCallSt
  loc_121D4B8:       var_CC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_8A)), Me.FGrid, CVar(var_88.Fields.Item("DispCode")), CVar(CLng(0)))) 'String
  loc_121D4BF:       LateIdCallSt
  loc_121D4D5:       var_EC = CVar(CLng(var_8A)) 'Long
  loc_121D4DD:       var_140 = CVar(CLng(2)) 'Long
  loc_121D50D:       var_CC = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_121D514:       LateIdCallSt
  loc_121D52E:       var_EC = CVar(CLng(var_8A)) 'Long
  loc_121D536:       var_140 = CVar(CLng(3)) 'Long
  loc_121D566:       var_CC = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_121D56D:       LateIdCallSt
  loc_121D5A3:       var_110 = CVar(CLng(var_8A)) 'Long
  loc_121D5AB:       var_150 = CVar(CLng(4)) 'Long
  loc_121D5BA:       var_EC = "0.00"
  loc_121D5BF:       var_CC = var_EC
  loc_121D5D8:       var_FC = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), var_CC))) 'String
  loc_121D5DF:       LateIdCallSt
  loc_121D5F7:       Set var_130 = Nothing 
  loc_121D601:       var_8A = (var_8A + 1)
  loc_121D607:       var_88.MoveNext
  loc_121D60C:       GoTo loc_121D42D
  loc_121D60F:     End If
  loc_121D611:     var_8A = 0
  loc_121D627:     Me.FGrid.FixedRows = 1
  loc_121D62F:   End If
  loc_121D632: Else
  loc_121D632:   Call Proc_69_48_F1F04C(var_8A, var_8A, var_130, var_FC, 1, 1, var_150)
  loc_121D637: End If
  loc_121D637: Call Proc_69_50_F6FFAC(var_110, var_130, var_CC)
  loc_121D641: Set var_88 = Nothing
  loc_121D644: Exit Sub
  loc_121D645: ' Referenced from: 121D174
  loc_121D645: Proc_6_60_E63754(var_140, var_EC)
  loc_121D64A: Exit Sub
End Sub

Public Sub Proc_69_46_DFBE68
  'Data Table: 4BDD94
  loc_DFBE64: Exit Sub
End Sub

Public Sub Proc_69_47_146FE8C(arg_C) '146FE8C
  'Data Table: 4BDD94
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_138 As Variant
  Dim var_15C As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_190 As MSHFlexGrid
  Dim var_1A0 As Variant
  Dim var_AC As String
  Dim var_1C0 As Variant
  Dim var_148 As Variant
  Dim var_88 As Integer
  loc_146F2B3: var_A0 = CLng(Me.FGrid.Col)
  loc_146F2C3: If (var_A0 = CLng(1)) Then
  loc_146F2DD:   If (Me.RecordCount > 0) Then
  loc_146F2E6:     Me.MoveFirst
  loc_146F2EB:   End If
  loc_146F302:   If (Me.RecordCount > 0) Then
  loc_146F312:     Set var_8C = Me.TxtGrid
  loc_146F318:     Call 0.Method_Proc_69_47_146FE8C0 (arg_C, var_A8)
  loc_146F320:     var_AC = var_A8.Text
  loc_146F32D:     var_CC = Val(var_AC)
  loc_146F353:     Me.Find "DispCode=" & CStr(var_CC), 0, 1
  loc_146F368:   End If
  loc_146F3B6:   Set var_8C = Me.TxtGrid
  loc_146F3BC:   Call 0.Method_Proc_69_47_146FE8C0 (arg_C, var_A8, var_AC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_146F3C4:   var_C4 = var_A8.Text
  loc_146F3DC:   If (var_CC Or (var_AC = vbNullString)) Then
  loc_146F3F2:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F3FA:     var_F0 = CVar(CLng(3)) 'Long
  loc_146F3FF:     var_110 = vbNullString
  loc_146F409:     Set var_A8 = Me.FGrid
  loc_146F40F:     LateIdCallSt
  loc_146F434:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F43C:     var_F0 = CVar(CLng(2)) 'Long
  loc_146F441:     var_110 = vbNullString
  loc_146F44B:     Set var_A8 = Me.FGrid
  loc_146F451:     LateIdCallSt
  loc_146F476:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F47E:     var_F0 = CVar(CLng(1)) 'Long
  loc_146F483:     var_110 = vbNullString
  loc_146F48D:     Set var_A8 = Me.FGrid
  loc_146F493:     LateIdCallSt
  loc_146F4B8:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F4C0:     var_F0 = CVar(CLng(4)) 'Long
  loc_146F4C5:     var_110 = vbNullString
  loc_146F4CF:     Set var_A8 = Me.FGrid
  loc_146F4D5:     LateIdCallSt
  loc_146F4EA:   Else
  loc_146F4F0:     var_E0 = CVar(global_80) 'String
  loc_146F519:     var_9C = Me.Fields.Item("Code").Value
  loc_146F52B:     var_100 = CVar(global_80) 'String
  loc_146F554:     var_148 = Me.Fields.Item("Code").Value
  loc_146F595:     var_AC = CStr(Me.FGrid.TextMatrix))
  loc_146F5CA:     If CBool(CVar(CLng(Me.FGrid.Row)) Or CVar(CLng(2)) And (var_AC = vbNullString)) Then
  loc_146F5E0:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F5E8:       var_100 = CVar(CLng(3)) 'Long
  loc_146F61B:       var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_146F623:       Set var_138 = Me.FGrid
  loc_146F629:       LateIdCallSt
  loc_146F658:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F660:       var_100 = CVar(CLng(2)) 'Long
  loc_146F693:       var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_146F69B:       Set var_138 = Me.FGrid
  loc_146F6A1:       LateIdCallSt
  loc_146F6D0:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F6D8:       var_100 = CVar(CLng(1)) 'Long
  loc_146F70B:       var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_146F713:       Set var_138 = Me.FGrid
  loc_146F719:       LateIdCallSt
  loc_146F749:       var_88 = CInt(CLng(Me.FGrid.Row))
  loc_146F756:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_146F768:       var_9C = CVar(CStr(var_88)) 'String
  loc_146F770:       Set var_8C = Me.FGrid
  loc_146F776:       LateIdCallSt
  loc_146F799:       var_8C = Me.Fields
  loc_146F7A1:       var_A8 = var_8C.Item("Code")
  loc_146F7FD:       Call Proc_69_52_FF4044(CStr(var_A8.Value), CStr(MemVar_1F950EC), CStr(Me.Fields.Item("OutletCode").Value), vbNullString, var_CC, var_8C, var_A8.Value, CVar(CLng(0)))
  loc_146F815:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F81D:       var_17C = CVar(CLng(4)) 'Long
  loc_146F84A:       var_1C0 = CVar(CStr(Format(CVar(var_CC), "0.00"))) 'String
  loc_146F852:       Set var_190 = Me.FGrid
  loc_146F858:       LateIdCallSt
  loc_146F88B:     End If
  loc_146F88B:   End If
  loc_146F88E: Else
  loc_146F895:   If (var_A0 = CLng(3)) Then
  loc_146F8E6:     Set var_8C = Me.TxtGrid
  loc_146F8EC:     Call 0.Method_Proc_69_47_146FE8C0 (arg_C, var_A8, var_AC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_190, var_1C0, 1)
  loc_146F8F4:     1 = var_A8.Text
  loc_146F90C:     If (var_17C Or (var_AC = vbNullString)) Then
  loc_146F922:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F92A:       var_F0 = CVar(CLng(3)) 'Long
  loc_146F92F:       var_110 = vbNullString
  loc_146F939:       Set var_A8 = Me.FGrid
  loc_146F93F:       LateIdCallSt
  loc_146F964:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F96C:       var_F0 = CVar(CLng(2)) 'Long
  loc_146F971:       var_110 = vbNullString
  loc_146F97B:       Set var_A8 = Me.FGrid
  loc_146F981:       LateIdCallSt
  loc_146F9A6:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F9AE:       var_F0 = CVar(CLng(1)) 'Long
  loc_146F9B3:       var_110 = vbNullString
  loc_146F9BD:       Set var_A8 = Me.FGrid
  loc_146F9C3:       LateIdCallSt
  loc_146F9E8:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F9F0:       var_F0 = CVar(CLng(4)) 'Long
  loc_146F9F5:       var_110 = vbNullString
  loc_146F9FF:       Set var_A8 = Me.FGrid
  loc_146FA05:       LateIdCallSt
  loc_146FA1A:     Else
  loc_146FA20:       var_E0 = CVar(global_80) 'String
  loc_146FA49:       var_9C = Me.Fields.Item("Code").Value
  loc_146FA5B:       var_100 = CVar(global_80) 'String
  loc_146FA84:       var_148 = Me.Fields.Item("Code").Value
  loc_146FAC5:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_146FAFA:       If CBool(CVar(CLng(Me.FGrid.Row)) Or CVar(CLng(2)) And (var_AC = vbNullString)) Then
  loc_146FB10:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FB18:         var_100 = CVar(CLng(3)) 'Long
  loc_146FB4B:         var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_146FB53:         Set var_138 = Me.FGrid
  loc_146FB59:         LateIdCallSt
  loc_146FB88:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FB90:         var_100 = CVar(CLng(2)) 'Long
  loc_146FBC3:         var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_146FBCB:         Set var_138 = Me.FGrid
  loc_146FBD1:         LateIdCallSt
  loc_146FC00:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FC08:         var_100 = CVar(CLng(1)) 'Long
  loc_146FC3B:         var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_146FC43:         Set var_138 = Me.FGrid
  loc_146FC49:         LateIdCallSt
  loc_146FC79:         var_88 = CInt(CLng(Me.FGrid.Row))
  loc_146FC86:         var_C4 = CVar(CLng(var_88)) 'Long
  loc_146FC98:         var_9C = CVar(CStr(var_88)) 'String
  loc_146FCA0:         Set var_8C = Me.FGrid
  loc_146FCA6:         LateIdCallSt
  loc_146FCC9:         var_8C = Me.Fields
  loc_146FCD1:         var_A8 = var_8C.Item("Code")
  loc_146FD2D:         Call Proc_69_52_FF4044(CStr(var_A8.Value), CStr(MemVar_1F950EC), CStr(Me.Fields.Item("OutletCode").Value), vbNullString, var_CC, var_8C, var_A8.Value, CVar(CLng(0)))
  loc_146FD45:         var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FD4D:         var_17C = CVar(CLng(4)) 'Long
  loc_146FD7A:         var_1C0 = CVar(CStr(Format(CVar(var_CC), "0.00"))) 'String
  loc_146FD82:         Set var_190 = Me.FGrid
  loc_146FD88:         LateIdCallSt
  loc_146FDBB:       End If
  loc_146FDBB:     End If
  loc_146FDBE:   Else
  loc_146FDC5:     If (var_A0 = CLng(4)) Then
  loc_146FDD4:       Set var_8C = Me.TxtGrid
  loc_146FDDA:       Call 0.Method_Proc_69_47_146FE8C0 (0, var_A8, var_AC, var_190, var_1C0, 1, 1)
  loc_146FDE2:       var_17C = var_A8.Text
  loc_146FE05:       var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FE1D:       var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_146FE4A:       var_1A0 = CVar(CStr(Format(CVar(Val(var_AC)), "0.00"))) 'String
  loc_146FE52:       Set var_15C = Me.FGrid
  loc_146FE58:       LateIdCallSt
  loc_146FE7F:     End If
  loc_146FE7F:   End If
  loc_146FE7F: End If
  loc_146FE84: Proc_69_47_146FE8C = &HFF
End Sub

Public Sub Proc_69_48_F1F04C
  'Data Table: 4BDD94
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1EF5A: Set var_8C = Me.Txt
  loc_F1EF60: Call 0.Method_Proc_69_48_F1F04CC (var_8E, var_86)
  loc_F1EF70: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1EF86:   Set var_8C = Me.Txt
  loc_F1EF8C:   Call 0.Method_Proc_69_48_F1F04C0 (CInt(var_86), var_98)
  loc_F1EF94:   var_98.Text = vbNullString
  loc_F1EFB0:   Set var_8C = Me.Txt
  loc_F1EFB6:   Call 0.Method_Proc_69_48_F1F04C0 (CInt(var_86), var_98)
  loc_F1EFBE:   var_98.Tag = vbNullString
  loc_F1EFCD: Next var_92 'Byte
  loc_F1EFE6: Me.FGrid.Rows = 1
  loc_F1F00C: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F1F014: Set var_98 = Me.FGrid
  loc_F1F041: Me.FGrid.FixedRows = 1
  loc_F1F049: Exit Sub
End Sub

Public Sub Proc_69_49_F47DBC(arg_C) 'F47DBC
  'Data Table: 4BDD94
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F47CAA: Set var_8C = Me.Txt
  loc_F47CB0: Call 0.Method_Proc_69_49_F47DBCC (var_8E, var_86)
  loc_F47CC0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F47CD6:   Set var_8C = Me.Txt
  loc_F47CDC:   Call 0.Method_Proc_69_49_F47DBC0 (CInt(var_86), var_98)
  loc_F47CE4:   var_98.Enabled = arg_C
  loc_F47CF3: Next var_92 'Byte
  loc_F47D06: Me.CmdFillDetail.Enabled = arg_C
  loc_F47D2A: Set var_98 = Me.TopCtrl1
  loc_F47D30: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000C((Me.ChkParty.Value = 1))
  loc_F47D4E: If ( And (CStr() <> "Browse")) Then
  loc_F47D5D:   Me.CmdFillLastDetail.Enabled = True
  loc_F47D68: Else
  loc_F47D74:   Me.CmdFillLastDetail.Enabled = False
  loc_F47D7C: End If
  loc_F47D89: Me.ChkParty.Enabled = arg_C
  loc_F47D9E: Set var_8C = Me.Txt
  loc_F47DA4: Call 0.Method_Proc_69_49_F47DBC0 (CInt(6), var_98)
  loc_F47DAC: var_98.Enabled = False
  loc_F47DB8: Exit Sub
End Sub

Public Sub Proc_69_50_F6FFAC
  'Data Table: 4BDD94
  loc_F6FE80: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F6FE92:   Me.DGItem.Visible = False
  loc_F6FE9A: End If
  loc_F6FEB6: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6FEC8:   Me.DGRest.Visible = False
  loc_F6FED0: End If
  loc_F6FEEC: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_F6FEFE:   Me.DGItemCat.Visible = False
  loc_F6FF06: End If
  loc_F6FF22: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_F6FF34:   Me.DGItemGrp.Visible = False
  loc_F6FF3C: End If
  loc_F6FF58: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F6FF6A:   Me.DGParty.Visible = False
  loc_F6FF72: End If
  loc_F6FF8E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6FFA0:   Me.FGPoint.Visible = False
  loc_F6FFA8: End If
  loc_F6FFA8: Exit Sub
End Sub

Public Sub Proc_69_51_10195D8
  'Data Table: 4BDD94
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_10193BE: Me.FGrid.Left = CVar(CDbl(&H23))
  loc_10193D9: Me.FGrid.Top = CVar(CDbl(2520))
  loc_10193F4: Me.FGrid.Width = CVar(CDbl(7700))
  loc_101940F: Me.FGrid.Height = CVar(CDbl(5800))
  loc_101941B: Set var_AC = Me.FGrid
  loc_101942A: var_AC.Cols = 5
  loc_1019443: global_68 = CStr(CLng(var_AC.BackColor))
  loc_1019450: var_94 = CVar(CLng(0)) 'Long
  loc_1019455: var_D0 = &H190
  loc_1019461: LateIdCallSt
  loc_1019469: var_94 = 0
  loc_1019475: var_D0 = CVar(CLng(1)) 'Long
  loc_101947A: var_F0 = "Code"
  loc_1019483: LateIdCallSt
  loc_101948E: var_94 = CVar(CLng(1)) 'Long
  loc_1019499: var_D0 = CVar(CInt(1)) 'Integer
  loc_10194A0: LateIdCallSt
  loc_10194AB: var_94 = CVar(CLng(1)) 'Long
  loc_10194B0: var_D0 = &H5DC
  loc_10194BC: LateIdCallSt
  loc_10194C7: var_94 = CVar(CLng(2)) 'Long
  loc_10194CC: var_D0 = 0
  loc_10194D8: LateIdCallSt
  loc_10194E0: var_94 = 0
  loc_10194EC: var_D0 = CVar(CLng(3)) 'Long
  loc_10194F1: var_F0 = "Item Name"
  loc_10194FA: LateIdCallSt
  loc_1019505: var_94 = CVar(CLng(3)) 'Long
  loc_1019510: var_D0 = CVar(CInt(1)) 'Integer
  loc_1019517: LateIdCallSt
  loc_1019522: var_94 = CVar(CLng(3)) 'Long
  loc_101952D: var_D0 = CVar(CInt(1)) 'Integer
  loc_1019534: LateIdCallSt
  loc_101953F: var_94 = CVar(CLng(3)) 'Long
  loc_1019544: var_D0 = &HDAC
  loc_1019550: LateIdCallSt
  loc_1019558: var_94 = 0
  loc_1019564: var_D0 = CVar(CLng(4)) 'Long
  loc_1019569: var_F0 = "Rate"
  loc_1019572: LateIdCallSt
  loc_101957D: var_94 = CVar(CLng(4)) 'Long
  loc_1019588: var_D0 = CVar(CInt(7)) 'Integer
  loc_101958F: LateIdCallSt
  loc_101959A: var_94 = CVar(CLng(4)) 'Long
  loc_10195A5: var_D0 = CVar(CInt(7)) 'Integer
  loc_10195AC: LateIdCallSt
  loc_10195B7: var_94 = CVar(CLng(4)) 'Long
  loc_10195BC: var_D0 = &H5DC
  loc_10195C8: LateIdCallSt
  loc_10195D2: Set var_AC = Nothing 
  loc_10195D6: Exit Sub
End Sub

Public Sub Proc_69_52_FF4044(arg_C, arg_10, arg_14, arg_18) 'FF4044
  'Data Table: 4BDD94
  Dim var_D4 As Variant
  Dim var_154 As Variant
  Dim unk_4BDDA8 As Connection15
  Dim var_90 As Recordset15
  Dim var_19C As Fields15
  Dim var_8C As Double
  loc_FF3E9D: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_FF3ECB: var_154 = var_198 & var_B4 & " And RestCode='" & CVar(arg_14) & "' And Party='" & CVar(arg_18) 
  loc_FF3EE2: unk_4BDDA8.Execute CStr(var_154 & "' Order by Appdate Desc"), -1, var_19C
  loc_FF3EED: Set var_90 = var_19C
  loc_FF3F23: If (var_90.RecordCount > 0) Then
  loc_FF3F38:   var_19C = var_90.Fields
  loc_FF3F48:   var_B4 = var_19C.Item("Rate").Value
  loc_FF3F51:   var_8C = CSng(var_B4)
  loc_FF3F61: Else
  loc_FF3F8A:   Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="), var_154)
  loc_FF3F92:   var_D4 = -1 & var_B4 
  loc_FF3FBC:   unk_4BDDA8.Execute CStr(var_198 & var_B4 & " And RestCode='" & CVar(arg_14) & "' And Party='' Order by Appdate Desc"), var_19C, var_8C
  loc_FF3FC7:   Set var_90 = var_19C
  loc_FF3FF9:   If (var_90.RecordCount > 0) Then
  loc_FF4027:     var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_FF4037:   Else
  loc_FF403A:     var_8C = CDbl(0)
  loc_FF403D:   End If
  loc_FF403D: End If
  loc_FF403D: Proc_69_52_FF4044 = var_8C
End Sub
