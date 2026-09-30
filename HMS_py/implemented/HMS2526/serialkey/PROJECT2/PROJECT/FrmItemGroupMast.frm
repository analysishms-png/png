VERSION 5.00
Begin VB.Form FrmItemGroupMast
  Caption = "Item Group Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 8880
  ClientHeight = 8430
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 15
  End
  Begin Frame FrmList
    BackColor = &H800000&
    Left = 9840
    Top = 1920
    Width = 1935
    Height = 1785
    Visible = 0   'False
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 240
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin PictureBox Picture3
    Picture = "FrmItemGroupMast.frx":0
    Left = 12120
    Top = 2160
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 11
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGHelp
    Left = 9720
    Top = 3840
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin DataGrid DGRest
    Left = 9720
    Top = 2760
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3900
    Top = 2880
    Width = 3555
    Height = 285
    TabIndex = 2
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3900
    Top = 2250
    Width = 3555
    Height = 285
    Visible = 0   'False
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3900
    Top = 2565
    Width = 3555
    Height = 285
    TabIndex = 1
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
  Begin MSFlexGrid FGPoint
    Left = 8760
    Top = 2280
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 10
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4440
    Top = 6240
    Width = 2790
    Height = 285
    TabIndex = 14
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
    Left = 1065
    Top = 6240
    Width = 2880
    Height = 255
    TabIndex = 13
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
    Left = 3900
    Top = 720
    Width = 180
    Height = 540
    TabIndex = 12
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
  Begin Label Label1
    Caption = "Type"
    Index = 1
    ForeColor = &HC00000&
    Left = 2655
    Top = 2880
    Width = 465
    Height = 240
    TabIndex = 7
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
    Left = 2655
    Top = 2250
    Width = 1185
    Height = 240
    Visible = 0   'False
    TabIndex = 5
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
    Caption = "Item Group"
    Index = 0
    ForeColor = &HC00000&
    Left = 2655
    Top = 2565
    Width = 1065
    Height = 240
    TabIndex = 3
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

Attribute VB_Name = "FrmItemGroupMast"


Private Sub Form_Load() '12AAF30
  'Data Table: 491E68
  Dim var_88 As Label
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_491E81 As Connection15
  Dim var_E0 As String
  loc_12AA920: On Error Goto loc_12AAEE9
  loc_12AA932: Me.LblUser.Left = CDbl(13500)
  loc_12AA949: Me.LblUser.Top = CDbl(7800)
  loc_12AA960: Me.LblLDt.Top = CDbl(8160)
  loc_12AA977: Me.LblLDt.Left = CDbl(13500)
  loc_12AA986: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12AA999: Set var_88 = Me.Txt
  loc_12AA99F: Call 0.Method_Form_Load0 (CInt(2), var_8C)
  loc_12AA9BE: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_12AA9DA: Set var_B4 = Me.Txt
  loc_12AA9E0: Call 0.Method_Form_Load0 (CInt(2), var_B8)
  loc_12AA9FB: Set var_88 = Me.Txt
  loc_12AAA01: Call 0.Method_Form_Load0 (CInt(2), var_8C)
  loc_12AAA19: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_12AAA28: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_12AAA48: Set var_88 = Me.Txt
  loc_12AAA4E: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_12AAA6D: Me.DGRest.Left = CVar(var_8C.Left)
  loc_12AAA89: Set var_B4 = Me.Txt
  loc_12AAA8F: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_12AAAAA: Set var_88 = Me.Txt
  loc_12AAAB0: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_12AAAC8: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_12AAAD7: Me.DGRest.Top = CVar(var_8C.Left)
  loc_12AAAF3: Set var_88 = Me.TopCtrl1
  loc_12AAAF9: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_12AAB07: Call 0.Method_arg_50 (var_C4)
  loc_12AAB0F: var_D4 = CVar(var_C4) 'String
  loc_12AAB1D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_12AAB33: If (global_56 = "Banquet") Then
  loc_12AAB4A:   var_C4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE (Itemgrp.LOGSITE_CODE='" & MemVar_1F95078
  loc_12AAB51:   var_D8 = var_C4 & "' or itemgrp.LOGSITE_CODE='HO') AND ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType='Banquet' ORDER BY ItemGrp.Name"
  loc_12AAB5A:   unk_491E81.Execute var_D8, var_D4, -1
  loc_12AAB6B:   Set global_64 = Me.TopCtrl1
  loc_12AAB89:   CVarUnk
  loc_12AAB8E:   VerifyVarObj
  loc_12AAB94:   Set var_88 = Me.DGHelp
  loc_12AAB9A:   LateIdStAd
  loc_12AABBC:   var_C4 = "SELECT IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F95078
  loc_12AABD4:   var_E0 = var_C4 & "' or IG.LOGSITE_CODE='HO') and IG.TYPE " & global_52 & "  And IG.Code <>'MISC' and Resttype='Banquet'  ORDER BY IG.Name"
  loc_12AABDD:   unk_491E81.Execute var_E0, var_D4, -1
  loc_12AABEE:   Set global_60 = var_88
  loc_12AAC0A: Else
  loc_12AAC1E:   var_C4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE (ITEMGRP.LOGSITE_CODE='" & MemVar_1F95078
  loc_12AAC25:   var_D8 = var_C4 & "' or ITEMGRP.LOGSITE_CODE='HO') AND ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType in ('Outlet','Room Service','Production')  ORDER BY ItemGrp.Name"
  loc_12AAC2E:   unk_491E81.Execute var_D8, var_D4, -1
  loc_12AAC3F:   Set global_64 = var_88
  loc_12AAC5D:   CVarUnk
  loc_12AAC62:   VerifyVarObj
  loc_12AAC68:   Set var_88 = Me.DGHelp
  loc_12AAC6E:   LateIdStAd
  loc_12AAC90:   var_C4 = "SELECT IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName,IG.SITE_CODE,IG.LOGSITE_CODE FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F95078
  loc_12AACA8:   var_E0 = var_C4 & "' or IG.LOGSITE_CODE='HO') AND IG.TYPE " & global_52 & "  And IG.Code <>'MISC' and Resttype in ('Outlet','Room Service','Production')  ORDER BY IG.Name"
  loc_12AACB1:   unk_491E81.Execute var_E0, var_D4, -1
  loc_12AACC2:   Set global_60 = var_88
  loc_12AACDB: End If
  loc_12AACE6: If (global_52 = "='Finish'") Then
  loc_12AACF4:   If (global_56 = "Banquet") Then
  loc_12AACFD:     Call 0.Method_arg_54 ("Menu Category Master", var_88, var_88, global_64, var_88)
  loc_12AAD0E:     Set var_88 = Me.LblName
  loc_12AAD14:     Call 0.Method_Form_Load0 (1, var_8C, "Venue Name", var_88)
  loc_12AAD1C:     var_8C.Caption = var_88
  loc_12AAD43:     var_D8 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Banquet') Order by Name"
  loc_12AAD4C:     unk_491E81.Execute var_D8, var_D4, -1
  loc_12AAD5D:     Set global_68 = var_88
  loc_12AAD75:   Else
  loc_12AAD7B:     Call 0.Method_arg_54 ("Menu Group Master", var_88)
  loc_12AAD92:     Call 0.Method_Form_Load0 (1, var_8C, "Outlet Name")
  loc_12AAD9A:     var_8C.Caption = global_64
  loc_12AADC1:     var_D8 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Outlet','Room Service','Production') Order by Name"
  loc_12AADCA:     unk_491E81.Execute var_D8, var_D4, -1
  loc_12AADDB:     Set global_68 = Me.LblName
  loc_12AADF0:   End If
  loc_12AADF3: Else
  loc_12AADFF:   Set var_88 = Me.LblName
  loc_12AAE05:   Call 0.Method_Form_Load0 (1, var_8C, "Depart Name")
  loc_12AAE0D:   var_8C.Caption = var_88
  loc_12AAE1F:   Call 0.Method_arg_54 ("Item Group Entry")
  loc_12AAE3F:   var_D8 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' Order by Name"
  loc_12AAE48:   unk_491E81.Execute var_D8, var_D4, -1
  loc_12AAE59:   Set global_68 = var_88
  loc_12AAE6E: End If
  loc_12AAE77: CVarUnk
  loc_12AAE7C: VerifyVarObj
  loc_12AAE82: Set var_88 = Me.DGRest
  loc_12AAE88: LateIdStAd
  loc_12AAEA2: Set var_88 = Me
  loc_12AAEAB: var_C4 = "INI"
  loc_12AAEB9: Call Proc_25_34_E6FBD8(Proc_5_1_100EC1C(var_C4, var_88, global_60, var_88), global_68)
  loc_12AAECD: Call 0.Method_arg_160 (var_88, var_88)
  loc_12AAEDB: Call 0.Method_arg_164 (var_88)
  loc_12AAEE3: Call Proc_25_36_124AA18(var_88)
  loc_12AAEE8: Exit Sub
  loc_12AAEE9: ' Referenced from: 12AA920
  loc_12AAEF1: Set var_88 = Err()
  loc_12AAEF7: Call 0.Method_arg_2C (var_C4)
  loc_12AAF18: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_12AAF2B: Exit Sub
  loc_12AAF2C: Exit Sub
End Sub

Private Sub Form_Resize() 'EF5138
  'Data Table: 491E68
  Dim var_8C As Label
  loc_EF5076: Call 0.Method_arg_50 (var_88)
  loc_EF5088: Me.LblFormCaption.Caption = var_88
  loc_EF50A1: Me.LblFormCaption.Left = CDbl(0)
  loc_EF50AD: Set var_A0 = Me.TopCtrl1
  loc_EF50B3: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EF50C0: Set var_8C = Me.TopCtrl1
  loc_EF50C6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_EF50E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_EF50FB: Call 0.Method_arg_100 (var_B8)
  loc_EF510D: Me.LblFormCaption.Width = var_B8
  loc_EF5120: If (global_56 = "Banquet") Then
  loc_EF5123:   Exit Sub
  loc_EF5124: End If
  loc_EF512F: If (global_52 = "='Finish'") Then
  loc_EF5132:   GoTo loc_EF5135
  loc_EF5135:   ' Referenced from: EF5132
  loc_EF5135: End If
  loc_EF5135: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E53A1C
  'Data Table: 491E68
  loc_E539EF: Set global_60 = Nothing
  loc_E53A01: Set global_64 = Nothing
  loc_E53A13: Set global_68 = Nothing
  loc_E53A1A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8C718
  'Data Table: 491E68
  loc_E8C6B4: On Error Goto loc_E8C6D4
  loc_E8C6CB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8C6D3: Exit Sub
  loc_E8C6D4: ' Referenced from: E8C6B4
  loc_E8C6DC: Set var_88 = Err()
  loc_E8C6E2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8C703: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8C716: Exit Sub
  loc_E8C717: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63F14
  'Data Table: 491E68
  loc_E63EE4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E63EE7:   Call DGHelp_UnknownEvent_9()
  loc_E63EEC: End If
  loc_E63F08: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E63F0B:   Call DGRest_UnknownEvent_9()
  loc_E63F10: End If
  loc_E63F10: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3B394
  'Data Table: 491E68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B28B: Me.DGHelp.Visible = False
  loc_F3B2AA: If (Me.RecordCount > 0) Then
  loc_F3B2E9:   Set var_B4 = Me.Txt
  loc_F3B2EF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3B2F7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3B32A:   var_B0 = Me.Fields.Item("Code")
  loc_F3B349:   Set var_B4 = Me.Txt
  loc_F3B34F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3B357:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3B36D: End If
  loc_F3B378: Set var_A8 = Me.Txt
  loc_F3B37E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2))
  loc_F3B386: var_B0.SetFocus
  loc_F3B392: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6FAAC
  'Data Table: 491E68
  loc_E6FA6A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E6FA81: Set var_8C = Me.FGPoint
  loc_E6FA9D: Proc_6_138_106E830(Me.DGHelp, global_64, CInt(2))
  loc_E6FAAB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F8CD84
  'Data Table: 491E68
  Dim var_88 As Variant
  Dim var_94 As TextBox
  Dim Me As Recordset15
  Dim var_C0 As TextBox
  loc_F8CC28: On Error Goto loc_F8CD7E
  loc_F8CC38: Me.LblUser.Caption = vbNullString
  loc_F8CC4D: Me.LblLDt.Caption = vbNullString
  loc_F8CC78: Call Proc_25_34_E6FBD8(Proc_5_1_100EC1C("ADD", Me))
  loc_F8CC83: Call Proc_25_35_EAC8E0(global_60)
  loc_F8CC93: Set var_88 = Me.Txt
  loc_F8CC99: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_F8CCA1: var_94.SetFocus
  loc_F8CCC4: If (Me.RecordCount > 0) Then
  loc_F8CD00:   Set var_BC = Me.Txt
  loc_F8CD06:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_F8CD0E:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_F8CD3C:   var_94 = Me.Fields.Item("Code")
  loc_F8CD5B:   Set var_BC = Me.Txt
  loc_F8CD61:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_F8CD69:   var_C0.Tag = Proc_6_38_E69628(CVar(var_94))
  loc_F8CD7D: End If
  loc_F8CD7D: Exit Sub
  loc_F8CD7E: ' Referenced from: F8CC28
  loc_F8CD7E: Proc_6_60_E63754(var_94)
  loc_F8CD83: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC69FC
  'Data Table: 491E68
  loc_EC6964: On Error Goto loc_EC69F4
  loc_EC699E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC69AD:   Set var_10C = Me
  loc_EC69C4:   Call Proc_25_34_E6FBD8(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC69CF:   Call Proc_25_38_EF3AF8(global_60)
  loc_EC69D4:   Call Proc_25_36_124AA18()
  loc_EC69DC: Else
  loc_EC69E2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC69EA:   Call var_10C.SetFocus
  loc_EC69F3: End If
  loc_EC69F3: Exit Sub
  loc_EC69F4: ' Referenced from: EC6964
  loc_EC69F4: Proc_6_60_E63754()
  loc_EC69F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112CCDC
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_491E81 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112C994: On Error Goto loc_112CC8C
  loc_112C9A5: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_112C9A8:   Exit Sub
  loc_112C9A9: End If
  loc_112C9DB: var_D0 = "Item Master"
  loc_112CA23: If (Proc_6_108_101061C(MemVar_1F95044, "ItemMast", "ItemGroup", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112CA26:   Exit Sub
  loc_112CA27: End If
  loc_112CA5E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112CA6A:   unk_491E81.BeginTrans var_CC
  loc_112CA80:   var_94 = Me.Bookmark 'Variant
  loc_112CACC:   var_114 = "Delete From ItemGrp Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112CADA:   unk_491E81.Execute CStr(var_114), var_134, -1
  loc_112CB25:   var_164 = 0
  loc_112CB38:   var_15C = 0
  loc_112CB43:   var_158 = 0
  loc_112CB56:   var_150 = 0
  loc_112CB61:   var_14C = 0
  loc_112CB74:   var_144 = 0
  loc_112CBB4:   var_B0 = "ItemGrp"
  loc_112CBBD:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112CBEB:   unk_491E81.CommitTrans
  loc_112CBFB:   Me.Requery -1
  loc_112CC0B:   Me.Requery -1
  loc_112CC2B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112CC38:     Me.Bookmark = var_94
  loc_112CC40:   Else
  loc_112CC54:     If (Me.EOF = 0) Then
  loc_112CC5D:       Me.MoveLast
  loc_112CC62:     End If
  loc_112CC62:   End If
  loc_112CC62:   Call Proc_25_36_124AA18(var_144, 0, var_14C, var_150)
  loc_112CC83:   Proc_5_0_1107AD0(&HFF, Me, global_60, 0)
  loc_112CC8B: End If
  loc_112CC8B: Exit Sub
  loc_112CC8C: ' Referenced from: 112C994
  loc_112CC92: unk_491E81.RollbackTrans
  loc_112CC9F: Set var_98 = Err()
  loc_112CCA5: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112CCC6: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112CCD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F1590C
  'Data Table: 491E68
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F15814: On Error Goto loc_F15903
  loc_F15825: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_F15828:   Exit Sub
  loc_F15829: End If
  loc_F1584C: Call Proc_25_34_E6FBD8(Proc_5_1_100EC1C("EDIT", Me))
  loc_F15865: Set var_8C = Me.Txt
  loc_F1586B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F1587E: global_76 = var_94.Text
  loc_F15899: Set var_8C = Me.Txt
  loc_F1589F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F158A7: var_94.Enabled = False
  loc_F158BE: Set var_8C = Me.Txt
  loc_F158C4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F158CC: var_94.SetFocus
  loc_F158E5: Me.LblUser.Caption = vbNullString
  loc_F158FA: Me.LblLDt.Caption = vbNullString
  loc_F15902: Exit Sub
  loc_F15903: ' Referenced from: F15814
  loc_F15903: Proc_6_60_E63754(global_60)
  loc_F15908: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B9A4
  'Data Table: 491E68
  loc_E1B999: Me.Global.Unload Me
  loc_E1B9A1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F8B684
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F8B530: On Error Goto loc_F8B61C
  loc_F8B53C: var_88 = Me.RecordCount
  loc_F8B54A: If (var_88 <= 0) Then
  loc_F8B553:   var_B8 = "Information"
  loc_F8B56E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F8B57E:   Exit Sub
  loc_F8B57F: End If
  loc_F8B58A: If (global_56 = "Banquet") Then
  loc_F8B594:   var_10C = "Select IG.Code As SearchCode,IG.Name,D.Name As DepartName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE IG.LOGSITE_CODE IN ('HO','" & MemVar_1F95078
  loc_F8B5AC:   MemVar_1F950E4 = var_10C & "') AND  IG.TYPE " & global_52 & "  And IG.Code <>'MISC' and Resttype in ('Banquet')  ORDER BY D.Name,IG.Name"
  loc_F8B5BC: Else
  loc_F8B5C3:   var_10C = "Select IG.Code As SearchCode,IG.Name,D.Name As DepartName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE IG.LOGSITE_CODE IN ('HO','" & MemVar_1F95078
  loc_F8B5DB:   MemVar_1F950E4 = var_10C & "') AND IG.TYPE " & global_52 & "  And IG.Code <>'MISC' and Resttype in ('Outlet','Room Service','Production')  ORDER BY D.Name,IG.Name"
  loc_F8B5E8: End If
  loc_F8B5EE: MemVar_1F95120 = Me
  loc_F8B5F5: var_10C = "3000,2000"
  loc_F8B5FB: Proc_6_126_F1C850(var_10C, MemVar_1F950E4)
  loc_F8B616: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F8B61B: Exit Sub
  loc_F8B61C: ' Referenced from: F8B530
  loc_F8B624: Set var_118 = Err()
  loc_F8B62A: Call 0.Method_arg_1C (var_88)
  loc_F8B63B: If (var_88 <> 0) Then
  loc_F8B646:   Set var_118 = Err()
  loc_F8B64C:   Call 0.Method_arg_2C (var_10C)
  loc_F8B66D:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F8B680: End If
  loc_F8B680: Exit Sub
  loc_F8B681: StUdtVar
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35D08
  'Data Table: 491E68
  Dim MemVar_62BD8C As Currency
  loc_E35CF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35D00: Call Proc_25_36_124AA18(global_60)
  loc_E35D05: Exit Sub
  loc_E35D06: MemVar_62BD8C = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35A08
  'Data Table: 491E68
  loc_E359F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35A00: Call Proc_25_36_124AA18(global_60)
  loc_E35A05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E35A68
  'Data Table: 491E68
  loc_E35A58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35A60: Call Proc_25_36_124AA18(global_60)
  loc_E35A65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E35AC8
  'Data Table: 491E68
  loc_E35AB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35AC0: Call Proc_25_36_124AA18(global_60)
  loc_E35AC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1086694
  'Data Table: 491E68
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_491E81 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10863FC: On Error Goto loc_108664B
  loc_1086416: var_A0 = "select IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE IG.TYPE " & global_52
  loc_1086426: unk_491E81.Execute var_A0 & "  And iG.Code <>'MISC' and Resttype='Outlet'   ORDER BY IG.Name", var_C4, -1
  loc_1086431: Set var_88 = var_C8
  loc_1086447: var_CC = var_88.RecordCount
  loc_1086455: If (var_CC = 0) Then
  loc_1086471:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1086481:   Exit Sub
  loc_1086482: End If
  loc_1086491: var_A4 = MemVar_1F950B4 & "\ItemGrp.ttx"
  loc_1086498: Set var_C8 = var_88 
  loc_10864A4: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10864AE: Set var_88 = var_C8
  loc_10864B4: var_B4 = CVar(var_12E) 'Integer
  loc_10864B7: var_98 = var_B4 'Variant
  loc_10864D3: var_A0 = MemVar_1F950B4 & "\ItemGrp.RPT"
  loc_10864DC: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10864E7: MemVar_1F951E8 = var_C8
  loc_1086502: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108650A: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1086516: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108652F:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1086537:   Call 0.Method_arg_20 (var_138)
  loc_108653F:   Call 0.Method_arg_30 (var_A0)
  loc_1086585:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108659B:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10865A3:     Call 0.Method_arg_20 (var_138)
  loc_10865AB:     Call 0.Method_arg_38 ("'Item Group Master'")
  loc_10865B7:   End If
  loc_10865BA: Next var_132 'Integer
  loc_10865D8: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10865E0: Call 0.Method_arg_2C (var_DC)
  loc_10865EE: Call 0.Method_arg_150 (var_FC)
  loc_10865F9: Call 0.Method_arg_50 (var_A0)
  loc_1086603: Set var_138 = Nothing
  loc_108661D: Set var_C8 = MemVar_1F951E8 
  loc_1086629: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1086634: MemVar_1F951E8 = var_C8
  loc_1086647: Set var_88 = Nothing
  loc_108664A: Exit Sub
  loc_108664B: ' Referenced from: 10863FC
  loc_1086653: Set var_C8 = Err()
  loc_1086659: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1086664: Call 0.Method_arg_50 (var_A4)
  loc_1086680: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1086693: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E246EC
  'Data Table: 491E68
  Dim Me As Recordset15
  loc_E246D3: Me.Requery -1
  loc_E246E3: Me.Requery -1
  loc_E246E8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12BA06C
  'Data Table: 491E68
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_491E81 As Connection15
  Dim var_90 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_130 As String
  Dim var_128 As TextBox
  Dim var_164 As Variant
  Dim var_118 As String
  Dim var_12C As String
  Dim var_B0 As Variant
  loc_12B9A80: On Error Goto loc_12BA01A
  loc_12B9A87: var_86 = CByte(0) 'Byte
  loc_12B9A96: Set var_90 = Me.Txt
  loc_12B9A9C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_12B9AC5: If (Proc_6_27_EA61EC(var_94, "Item Group") = 0) Then
  loc_12B9ACF:   Call Txt_GotFocus()
  loc_12B9AD4:   Exit Sub
  loc_12B9AD5: End If
  loc_12B9AE0: If (global_52 = "<>'Finish'") Then
  loc_12B9AEE:   Set var_90 = Me.Txt
  loc_12B9AF4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94)
  loc_12B9B1D:   If (Proc_6_27_EA61EC(var_94, "Type") = 0) Then
  loc_12B9B27:     Call Txt_GotFocus()
  loc_12B9B2C:     Exit Sub
  loc_12B9B2D:   End If
  loc_12B9B2D: End If
  loc_12B9B38: If (global_52 = "='Finish'") Then
  loc_12B9B49:   Set var_90 = Me.Txt
  loc_12B9B4F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, "Finish")
  loc_12B9B57:   var_94.Text = CInt(3)
  loc_12B9B63: End If
  loc_12B9B66: Call Proc_25_37_10F7714(var_9E, CInt(2))
  loc_12B9B71: If (var_9E = &HFF) Then
  loc_12B9B74:   Exit Sub
  loc_12B9B75: End If
  loc_12B9B79: Set var_90 = Me.TopCtrl1
  loc_12B9B7F: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12B9B98: If (CStr() = "Add") Then
  loc_12B9BA1:   var_D4 = 0
  loc_12B9BBE:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp Where ISNUmeric(substring(Code,3,4))=1 and SITE_CODE='" & MemVar_1F95070
  loc_12B9BC5:   var_B4 = CStr() & "' AND Code <>'MISC'"
  loc_12B9BCE:   unk_491E81.Execute var_B4, var_B0, -1
  loc_12B9BD6:   var_90 = var_90.Fields
  loc_12B9BDE:   var_D4 = var_94.Item(var_94)
  loc_12B9BE6:   var_98 = var_98.Value
  loc_12B9C1F:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_12B9C45:   var_E4 = Format(CStr(var_E4), "0000")
  loc_12B9C4D:   var_108 = (1 + var_E4)
  loc_12B9C58:   global_72 = CStr(var_108)
  loc_12B9C6D: Else
  loc_12B9C8A:   var_94 = Me.Fields.Item("Code")
  loc_12B9CA1:   global_72 = CStr(var_94.Value)
  loc_12B9CB2: End If
  loc_12B9CBB: unk_491E81.BeginTrans var_10C
  loc_12B9CC4: var_86 = CByte(1) 'Byte
  loc_12B9CCC: Set var_90 = Me.TopCtrl1
  loc_12B9CD2: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12B9CEB: If (CStr(var_F8) = "Add") Then
  loc_12B9D05:   var_9C = "Insert Into ItemGrp(Code,Name,Type,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_72
  loc_12B9D0C:   var_E8 = var_9C & "','"
  loc_12B9D1D:   Set var_90 = Me.Txt
  loc_12B9D23:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_B4, var_E8)
  loc_12B9D2B:   var_1A8 = var_94.Text
  loc_12B9D34:   var_110 = -1 & var_B4
  loc_12B9D3B:   var_11C = var_110 & "','"
  loc_12B9D4C:   Set var_98 = Me.Txt
  loc_12B9D52:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_114, var_118)
  loc_12B9D5A:   var_11C = var_114.Text
  loc_12B9D6A:   var_130 = var_1AC & var_118 & "','"
  loc_12B9D7B:   Set var_124 = Me.Txt
  loc_12B9D81:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_128, var_12C)
  loc_12B9D89:   var_130 = var_128.Tag
  loc_12B9DC6:   Proc_6_7_F26918(var_E4, Date)
  loc_12B9DE1:   var_164 = CVar(var_E4 & var_12C & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_E4 & ",'A','" & CVar(MemVar_1F95078) 
  loc_12B9DF8:   unk_491E81.Execute CStr(var_164 & "' )"), , 
  loc_12B9E45: Else
  loc_12B9E63:   Set var_90 = Me.Txt
  loc_12B9E69:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_9C, "UPDATE ItemGrp SET Name='")
  loc_12B9E71:   var_1A8 = var_94.Text
  loc_12B9E7A:   var_B4 = -1 & var_9C
  loc_12B9E81:   var_110 = var_B4 & "',Type='"
  loc_12B9E92:   Set var_98 = Me.Txt
  loc_12B9E98:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_114, var_E8)
  loc_12B9EA0:   var_110 = var_114.Text
  loc_12B9ECC:   var_F8 = CVar(var_124 & var_E8 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_12B9EDD:   Proc_6_7_F26918(var_E4, Date)
  loc_12B9EE5:   var_108 = var_F8 & var_E4 
  loc_12B9EE9:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_12B9F12:   unk_491E81.Execute CStr(var_108 & var_C4 & CVar(global_72) & "'"), , 
  loc_12B9F4E: End If
  loc_12B9F54: unk_491E81.CommitTrans
  loc_12B9F5D: var_86 = CByte(0) 'Byte
  loc_12B9F6C: Me.Requery -1
  loc_12B9F7C: Me.Requery -1
  loc_12B9FA9: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_12B9FB9: Set var_90 = Me.TopCtrl1
  loc_12B9FBF: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12B9FD8: If (CStr() = "Add") Then
  loc_12B9FDB:   Call TopCtrl1_UnknownEvent_A()
  loc_12B9FE0:   Exit Sub
  loc_12B9FE1: End If
  loc_12B9FF6: var_9C = "INI"
  loc_12BA004: Call Proc_25_34_E6FBD8(Proc_5_1_100EC1C(var_9C, Me))
  loc_12BA00F: Call Proc_25_38_EF3AF8(global_60)
  loc_12BA014: Call Proc_25_36_124AA18()
  loc_12BA019: Exit Sub
  loc_12BA01A: ' Referenced from: 12B9A80
  loc_12BA023: If (CInt(var_86) = 1) Then
  loc_12BA02C:   unk_491E81.RollbackTrans
  loc_12BA031: End If
  loc_12BA039: Set var_90 = Err()
  loc_12BA03F: Call 0.Method_arg_2C (var_9C)
  loc_12BA058: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12BA06B: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5C59C
  'Data Table: 491E68
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5C4BE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5C4C5:   Set var_A8 = Me.ListView
  loc_F5C50F:   Set var_C0 = Me.Txt
  loc_F5C515:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5C51D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5C53D: End If
  loc_F5C549: Me.FrmList.Visible = False
  loc_F5C579: Set var_9C = Me.Txt
  loc_F5C57F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5C587: var_A8.SetFocus
  loc_F5C59B: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F37F54
  'Data Table: 491E68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F37E4B: Me.DGRest.Visible = False
  loc_F37E6A: If (Me.RecordCount > 0) Then
  loc_F37EA9:   Set var_B4 = Me.Txt
  loc_F37EAF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F37EB7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F37EEA:   var_B0 = Me.Fields.Item("Code")
  loc_F37F09:   Set var_B4 = Me.Txt
  loc_F37F0F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F37F17:   var_B8.Tag = CStr(var_B0.Value)
  loc_F37F2D: End If
  loc_F37F38: Set var_A8 = Me.Txt
  loc_F37F3E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F37F46: var_B0.SetFocus
  loc_F37F52: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6FB40
  'Data Table: 491E68
  loc_E6FAFE: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E6FB15: Set var_8C = Me.FGPoint
  loc_E6FB31: Proc_6_138_106E830(Me.DGRest, global_68, CInt(1))
  loc_E6FB3F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1257650
  'Data Table: 491E68
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_125710A: Set var_88 = Me.Txt
  loc_1257110: Call 0.Method_Txt_GotFocus0 (Index)
  loc_125711E: Proc_6_74_E23240(var_8C)
  loc_125712A: Call Proc_25_38_EF3AF8(var_8C)
  loc_1257132: var_92 = Index
  loc_125713D: If (var_92 = CInt(1)) Then
  loc_1257157:   If (Me.RecordCount > 0) Then
  loc_1257165:     Set var_8C = Me.FGPoint
  loc_125717D:     Proc_6_137_1192FDC(Me.DGRest, global_68, Index)
  loc_125718B:   End If
  loc_12571D9:   Set var_88 = Me.Txt
  loc_12571DF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12571E7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12571FF:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_125720F:     Set var_88 = Me.Txt
  loc_1257215:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_125721D:     var_8C.Tag = vbNullString
  loc_1257229:     Exit Sub
  loc_125722A:   End If
  loc_1257237:   Set var_88 = Me.Txt
  loc_125723D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1257245:   var_A0 = var_8C.Text
  loc_1257257:   var_B0 = "Name"
  loc_1257292:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_125729B:     Me.MoveFirst
  loc_12572BE:     Set var_88 = Me.Txt
  loc_12572C4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_12572CC:     0 = var_8C.Text
  loc_12572E5:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_12572FA:   End If
  loc_12572FD: Else
  loc_1257305:   If (var_92 = CInt(2)) Then
  loc_125731F:     If (Me.RecordCount > 0) Then
  loc_125732D:       Set var_8C = Me.FGPoint
  loc_1257345:       Proc_6_137_1192FDC(Me.DGHelp, global_64)
  loc_1257353:     End If
  loc_12573A1:     Set var_88 = Me.Txt
  loc_12573A7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12573AF:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12573C7:     If (Index Or (var_A0 = vbNullString)) Then
  loc_12573D7:       Set var_88 = Me.Txt
  loc_12573DD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12573E5:       var_8C.Tag = vbNullString
  loc_12573F1:       Exit Sub
  loc_12573F2:     End If
  loc_12573FF:     Set var_88 = Me.Txt
  loc_1257405:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_125740D:     var_A0 = var_8C.Text
  loc_125741F:     var_B0 = "Name"
  loc_1257436:     var_B4 = Me.Fields.Item(var_B0)
  loc_125745A:     If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_1257463:       Me.MoveFirst
  loc_1257486:       Set var_88 = Me.Txt
  loc_125748C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1257494:       0 = var_8C.Text
  loc_12574AD:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_12574C2:     End If
  loc_12574C5:   Else
  loc_12574CD:     If (var_92 = CInt(3)) Then
  loc_12574DF:       Set var_88 = Me.Txt
  loc_12574E5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12574ED:       var_8C.SelStart = 0
  loc_1257506:       Set var_88 = Me.Txt
  loc_125750C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1257514:       var_A0 = var_8C.Text
  loc_1257527:       Set var_90 = Me.Txt
  loc_125752D:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1257535:       var_B4.SelLength = Len(var_A0)
  loc_1257555:       ReDim var_F0(0 To 3)
  loc_125756C:       var_F0(0) = "Semi Finish"
  loc_125757B:       var_F0(1) = "Consumables"
  loc_125758A:       var_F0(2) = "Raw Material"
  loc_1257599:       var_F0(3) = "Store Item"
  loc_12575B0:       global_80 = Array(var_F0)
  loc_12575BB:       Set var_B4 = Me.ListView
  loc_12575D6:       Set var_8C = Me.Txt
  loc_12575F0:       Set global_96 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_125760E:       Set var_88 = Me.Txt
  loc_1257614:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_125761C:       global_80 = var_8C.Text
  loc_125762E:       Set var_90 = Me.Txt
  loc_1257634:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_125763C:       var_B4.Tag = 4
  loc_125764F:     End If
  loc_125764F:   End If
  loc_125764F: End If
  loc_125764F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '120A65C
  'Data Table: 491E68
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_90 As DataGrid
  Dim var_FC As Variant
  Dim var_A0 As Frame
  loc_120A1BE: If (CLng(Shift) = &H1B) Then
  loc_120A1C1:   Call Proc_25_38_EF3AF8()
  loc_120A1C6:   Exit Sub
  loc_120A1C7: End If
  loc_120A1CA: var_88 = KeyCode
  loc_120A1D5: If (var_88 = CInt(2)) Then
  loc_120A1FA:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_120A21A:     Set var_A0 = Me.FGPoint
  loc_120A24C:     Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(2), global_64, Shift)
  loc_120A260:   End If
  loc_120A2B9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_120A2DF:     Proc_6_138_106E830(Me.DGHelp, global_64, KeyCode, Me.FGPoint, 0)
  loc_120A2ED:   End If
  loc_120A2F0: Else
  loc_120A2F8:   If (var_88 = CInt(1)) Then
  loc_120A306:     Set var_B0 = Me.Txt
  loc_120A318:     Set var_A8 = Me.FGPoint
  loc_120A323:     Set var_A0 = Nothing
  loc_120A351:     Proc_6_69_134A630(Me.DGRest, var_B0, KeyCode, global_68, Shift, 0, 1)
  loc_120A370:     var_8C = Me.RecordCount
  loc_120A3C0:     If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_120A3C7:       Set var_A0 = Me.DGRest
  loc_120A3CE:       Set var_94 = Me.FGPoint
  loc_120A3E6:       Proc_6_138_106E830(var_A0, global_68, KeyCode, var_94, var_A0, var_A8)
  loc_120A3F4:     End If
  loc_120A3F7:   Else
  loc_120A3FF:     If (var_88 = CInt(3)) Then
  loc_120A424:       Set var_90 = Me.Txt
  loc_120A42A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 0)
  loc_120A432:       1 = var_94.Left
  loc_120A444:       Set var_A0 = Me.Txt
  loc_120A44A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_120A452:       var_A0 = var_A8.Top
  loc_120A464:       Set var_AC = Me.Txt
  loc_120A46A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_BC)
  loc_120A472:       0 = var_B0.Height
  loc_120A484:       Set var_B4 = Me.Txt
  loc_120A48A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_120A492:       var_C4 = var_C0.Width
  loc_120A4DA:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_120A4FE:     End If
  loc_120A4FE:   End If
  loc_120A4FE: End If
  loc_120A554: If (((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRest.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_120A56A:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_120A573:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_8C), CInt((var_B8 + var_BC)))
  loc_120A578:   End If
  loc_120A5C3:   var_FC = ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And IIf((global_52 = "='Finish'"), (KeyCode <> CInt(2)), (KeyCode <> CInt(3)))
  loc_120A5D6:   If CBool(var_FC) Then
  loc_120A5DF:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_C4))
  loc_120A5E4:   End If
  loc_120A62F:   var_FC = ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And IIf((global_52 = "='Finish'"), (KeyCode = CInt(2)), (KeyCode = CInt(3)))
  loc_120A642:   If CBool(var_FC) Then
  loc_120A64D:     Call Txt_Validate(KeyCode)
  loc_120A655:     Call Proc_25_39_E90964(KeyCode, 0)
  loc_120A65A:   End If
  loc_120A65A: End If
  loc_120A65A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEF16C
  'Data Table: 491E68
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EEF0AA: Proc_6_133_E7FB08(var_94)
  loc_EEF0BF: If (CInt(var_94) = &HD) Then
  loc_EEF0C4:   arg_10 = 0
  loc_EEF0C7: End If
  loc_EEF0CA: Proc_6_58_E06050(arg_10, arg_10)
  loc_EEF0DD: If (KeyAscii = CInt(1)) Then
  loc_EEF0FC:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EEF129:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_EEF15B:     Proc_6_138_106E830(Me.DGRest, global_68, KeyAscii, Me.FGPoint)
  loc_EEF169:   End If
  loc_EEF169: End If
  loc_EEF169: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F2A2F4
  'Data Table: 491E68
  Dim var_86 As Integer
  loc_F2A1F3: var_86 = KeyCode
  loc_F2A1FE: If (var_86 = CInt(2)) Then
  loc_F2A21D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F2A22A:     var_A4 = "Name"
  loc_F2A249:     Proc_6_80_FF1F20(Me.Txt, CInt(2), global_64)
  loc_F2A27B:     Proc_6_138_106E830(Me.DGHelp, global_64, KeyCode, Me.FGPoint)
  loc_F2A289:   End If
  loc_F2A28C: Else
  loc_F2A294:   If (var_86 = CInt(3)) Then
  loc_F2A2B2:     If (Me.FrmList.Visible = &HFF) Then
  loc_F2A2E1:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F2A2F1:     End If
  loc_F2A2F1:   End If
  loc_F2A2F1: End If
  loc_F2A2F1: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E51494
  'Data Table: 491E68
  loc_E51472: Set var_88 = Me.Txt
  loc_E51478: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E51486: Proc_6_73_E23294(var_8C)
  loc_E51492: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1123B94
  'Data Table: 491E68
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim unk_491E81 As Connection15
  Dim var_D4 As String
  Dim var_C4 As Variant
  loc_112383B: var_86 = Cancel
  loc_1123846: If (var_86 = CInt(2)) Then
  loc_112384C:   Call Proc_25_37_10F7714(var_88)
  loc_1123857:   If (var_88 = &HFF) Then
  loc_112385C:     arg_10 = &HFF
  loc_112385F:     Exit Sub
  loc_1123860:   End If
  loc_1123863: Else
  loc_112386B:   If (var_86 = CInt(1)) Then
  loc_112388E:     var_88 = Me.EOF
  loc_11238BC:     Set var_94 = Me.Txt
  loc_11238C2:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_11238CA:     ((Me.RecordCount = 0) Or ((var_88 = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_11238E2:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_11238F2:       Set var_94 = Me.Txt
  loc_11238F8:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1123900:       var_98.Tag = vbNullString
  loc_112390C:       Exit Sub
  loc_112390D:     End If
  loc_1123948:     Set var_B0 = Me.Txt
  loc_112394E:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1123956:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1123981:     var_94 = Me.Fields
  loc_1123991:     var_C4 = var_94.Item("Code").Value
  loc_11239A7:     Set var_B0 = Me.Txt
  loc_11239AD:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11239B5:     var_B4.Tag = CStr(var_C4)
  loc_11239D6:     If (global_56 = "Banquet") Then
  loc_11239EF:       unk_491E81.Execute "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType='Banquet' ORDER BY ItemGrp.Name", var_C4, -1
  loc_1123A00:       Set global_64 = var_94
  loc_1123A17:       CVarUnk
  loc_1123A1C:       VerifyVarObj
  loc_1123A22:       Set var_94 = Me.DGHelp
  loc_1123A28:       LateIdStAd
  loc_1123A39:     Else
  loc_1123A46:       var_D4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType in ('Outlet','Room Service','Production')  AND RestCode='"
  loc_1123A68:       var_98 = Me.Fields.Item("Code")
  loc_1123A85:       var_9C = CStr(var_D4 & var_98.Value & "' ORDER BY ItemGrp.Name")
  loc_1123A8F:       unk_491E81.Execute var_9C, var_124, -1
  loc_1123AA0:       Set global_64 = var_B0
  loc_1123AC6:       CVarUnk
  loc_1123ACB:       VerifyVarObj
  loc_1123AD1:       Set var_94 = Me.DGHelp
  loc_1123AD7:       LateIdStAd
  loc_1123AE5:     End If
  loc_1123AE8:   Else
  loc_1123AF0:     If (var_86 = CInt(3)) Then
  loc_1123AF6:       Call Proc_25_37_10F7714(var_88, var_94, global_64, var_B0)
  loc_1123B01:       If (var_88 = &HFF) Then
  loc_1123B06:         arg_10 = &HFF
  loc_1123B09:         Exit Sub
  loc_1123B0A:       End If
  loc_1123B17:       Set var_94 = Me.Txt
  loc_1123B1D:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, arg_10)
  loc_1123B25:       var_94 = var_98.Text
  loc_1123B3C:       If (var_9C <> vbNullString) Then
  loc_1123B6F:         Set var_B0 = Me.Txt
  loc_1123B75:         Call 0.Method_Txt_Validate0 (Cancel, var_B4, Me.ListView.SelectedItem.Text)
  loc_1123B7D:         var_B4.Text = global_64
  loc_1123B93:       End If
  loc_1123B93:     End If
  loc_1123B93:   End If
  loc_1123B93: End If
  loc_1123B93: Exit Sub
End Sub

Public Function global_52Get() '492B88
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '492B97
  global_52 = Value
End Sub

Public Function global_56Get() '492BA6
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '492BB5
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6674
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC65EA: On Error Goto loc_EC662F
  loc_EC65F3: Me.MoveFirst
  loc_EC660D: var_8C = "code='" & MyValue
  loc_EC661D: Me.Find var_8C & "'", 0, 1
  loc_EC6629: Call Proc_25_36_124AA18(var_A0)
  loc_EC662E: Exit Sub
  loc_EC662F: ' Referenced from: EC65EA
  loc_EC6637: Set var_A4 = Err()
  loc_EC663D: Call 0.Method_arg_2C (var_8C)
  loc_EC665E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6671: Exit Sub
  loc_EC6672: Exit Sub
End Sub

Public Sub Proc_25_34_E6FBD8(arg_C) 'E6FBD8
  'Data Table: 491E68
  Dim var_98 As TextBox
  loc_E6FB8A: Set var_8C = Me.Txt
  loc_E6FB90: Call 0.Method_Proc_25_34_E6FBD8C (var_8E, var_86)
  loc_E6FB9D: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E6FBB3:   Set var_8C = Me.Txt
  loc_E6FBB9:   Call 0.Method_Proc_25_34_E6FBD80 (CInt(var_86), var_98)
  loc_E6FBC1:   var_98.Enabled = arg_C
  loc_E6FBD0: Next var_92 'Byte
  loc_E6FBD6: Exit Sub
End Sub

Public Sub Proc_25_35_EAC8E0
  'Data Table: 491E68
  Dim var_98 As TextBox
  loc_EAC856: global_76 = vbNullString
  loc_EAC868: Set var_8C = Me.Txt
  loc_EAC86E: Call 0.Method_Proc_25_35_EAC8E0C (var_8E, var_86)
  loc_EAC87B: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_EAC891:   Set var_8C = Me.Txt
  loc_EAC897:   Call 0.Method_Proc_25_35_EAC8E00 (CInt(var_86), var_98)
  loc_EAC89F:   var_98.Text = vbNullString
  loc_EAC8BB:   Set var_8C = Me.Txt
  loc_EAC8C1:   Call 0.Method_Proc_25_35_EAC8E00 (CInt(var_86), var_98)
  loc_EAC8C9:   var_98.Tag = vbNullString
  loc_EAC8D8: Next var_92 'Byte
  loc_EAC8DE: Exit Sub
End Sub

Public Sub Proc_25_36_124AA18
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_491E81 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_124A50C: On Error Goto loc_124A9D2
  loc_124A526: If (Me.RecordCount > 0) Then
  loc_124A57F:   unk_491E81.Execute CStr("Select U_Name,U_AE,U_EntDt From itemgrp where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_124A58A:   Set var_88 = var_11C
  loc_124A5DE:   var_11C = var_88.Fields
  loc_124A647:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_124A68C:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_124A706:   var_120 = var_88.Fields.Item("U_AE")
  loc_124A71F:   var_118 = "entdt : "
  loc_124A72A:   var_F4 = "Last Update : "
  loc_124A767:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120)) = "E"), var_F4, var_118))
  loc_124A7AC:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_124A7E4: End If
  loc_124A7EA: Proc_183_45_E5CCA8(global_60)
  loc_124A806: If (Me.RecordCount <= 0) Then
  loc_124A809:   Call Proc_25_35_EAC8E0()
  loc_124A811: Else
  loc_124A845:   global_72 = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_124A892:   Set var_11C = Me.Txt
  loc_124A898:   Call 0.Method_Proc_25_36_124AA180 (CInt(2), var_120)
  loc_124A8A0:   var_120.Text = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_124A8F2:   Set var_11C = Me.Txt
  loc_124A8F8:   Call 0.Method_Proc_25_36_124AA180 (CInt(2), var_120)
  loc_124A900:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_124A94F:   Set var_11C = Me.Txt
  loc_124A955:   Call 0.Method_Proc_25_36_124AA180 (CInt(1), var_120)
  loc_124A95D:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_124A99F:   var_F8 = CStr(Me.Fields.Item("Type").Value)
  loc_124A9AD:   Set var_11C = Me.Txt
  loc_124A9B3:   Call 0.Method_Proc_25_36_124AA180 (CInt(3), var_120)
  loc_124A9BB:   var_120.Text = var_F8
  loc_124A9D1: End If
  loc_124A9D1: Exit Sub
  loc_124A9D2: ' Referenced from: 124A50C
  loc_124A9DA: Set var_90 = Err()
  loc_124A9E0: Call 0.Method_arg_2C (var_F8)
  loc_124AA01: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_124AA14: Exit Sub
End Sub

Public Sub Proc_25_37_10F7714
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_491E81 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_C0 As String
  loc_10F7437: If (Me.RecordCount = 0) Then
  loc_10F743A:   Proc_25_37_10F7714 = 
  loc_10F7440: End If
  loc_10F7444: Set var_90 = Me.TopCtrl1
  loc_10F744A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F7463: If (CStr() = "Add") Then
  loc_10F746C:   var_F4 = 0
  loc_10F74A1:   Set var_90 = Me.Txt
  loc_10F74A7:   Call 0.Method_Proc_25_37_10F77140 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10F74D0:   Set var_B8 = Me.Txt
  loc_10F74D6:   Call 0.Method_Proc_25_37_10F77140 (CInt(1), var_BC, var_C0, var_E4 & var_AC & "' And RestCode='")
  loc_10F74DE:   var_F4 = var_BC.Tag
  loc_10F74E7:   var_C8 = var_F8 & var_C0
  loc_10F74F7:   unk_491E81.Execute var_C8 & "'", var_108, 
  loc_10F74FF:    = var_A8.Text.Fields
  loc_10F7507:    = var_E4.Item()
  loc_10F750F:    = var_F8.Value
  loc_10F754A:   If (var_108 > 0) Then
  loc_10F7558:     var_108 = "Information"
  loc_10F7568:     var_A0 = "Duplicate Name"
  loc_10F756E:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F7589:     Set var_90 = Me.Txt
  loc_10F758F:     Call 0.Method_Proc_25_37_10F77140 (CInt(2))
  loc_10F7597:     var_A8.SetFocus
  loc_10F75A8:     Proc_25_37_10F7714 = &HFF
  loc_10F75AE:   End If
  loc_10F75B1: Else
  loc_10F75B7:   var_F4 = 0
  loc_10F75EC:   Set var_90 = Me.Txt
  loc_10F75F2:   Call 0.Method_Proc_25_37_10F77140 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (Name='", var_A0, -1)
  loc_10F762C:   Set var_B8 = Me.Txt
  loc_10F7632:   Call 0.Method_Proc_25_37_10F77140 (CInt(1), var_BC, var_C8, var_E4 & var_AC & "' And Name<>'" & global_76 & "') And RestCode='")
  loc_10F763A:   var_F4 = var_BC.Tag
  loc_10F7653:   unk_491E81.Execute var_F8 & var_C8 & "'", var_108, var_A8
  loc_10F765B:    = var_A8.Text.Fields
  loc_10F7663:    = var_E4.Item()
  loc_10F766B:    = var_F8.Value
  loc_10F76AA:   If (var_108 > 0) Then
  loc_10F76CE:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F76E9:     Set var_90 = Me.Txt
  loc_10F76EF:     Call 0.Method_Proc_25_37_10F77140 (CInt(2))
  loc_10F76F7:     var_A8.SetFocus
  loc_10F7708:     Proc_25_37_10F7714 = &HFF
  loc_10F770E:   End If
  loc_10F770E: End If
  loc_10F770E: Proc_25_37_10F7714 = var_A8
End Sub

Public Sub Proc_25_38_EF3AF8
  'Data Table: 491E68
  loc_EF3A3C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF3A4E:   Me.DGHelp.Visible = False
  loc_EF3A56: End If
  loc_EF3A72: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF3A84:   Me.DGRest.Visible = False
  loc_EF3A8C: End If
  loc_EF3AA7: If (Me.FrmList.Visible = &HFF) Then
  loc_EF3AB6:   Me.FrmList.Visible = False
  loc_EF3ABE: End If
  loc_EF3ADA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF3AEC:   Me.FGPoint.Visible = False
  loc_EF3AF4: End If
  loc_EF3AF4: Exit Sub
End Sub

Public Sub Proc_25_39_E90964(arg_C) 'E90964
  'Data Table: 491E68
  Dim var_10C As TextBox
  loc_E908F8: Call Proc_25_38_EF3AF8()
  loc_E90934: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E90937:   Call TopCtrl1_UnknownEvent_16()
  loc_E9093F: Else
  loc_E90949:   Set var_108 = Me.Txt
  loc_E9094F:   Call 0.Method_Proc_25_39_E909640 (arg_C)
  loc_E90957:   var_10C.SetFocus
  loc_E90963: End If
  loc_E90963: Exit Sub
End Sub
