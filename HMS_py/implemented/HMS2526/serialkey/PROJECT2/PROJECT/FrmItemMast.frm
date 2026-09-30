VERSION 5.00
Begin VB.Form FrmItemMast
  Caption = "Item Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmItemMast.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8880
  ClientHeight = 8505
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2895
    Width = 3480
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
  Begin DataGrid DGRest
    Left = 7920
    Top = 2520
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2580
    Width = 3480
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 20
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
    Left = 12360
    Top = 2070
    Width = 1935
    Height = 1785
    Visible = 0   'False
    TabIndex = 6
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
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 7
    End
  End
  Begin DataGrid DGHelp
    Left = 8280
    Top = 1680
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2265
    Width = 4680
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
  Begin MSFlexGrid FGPoint
    Left = 9570
    Top = 5100
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGBarCode
    Left = 8520
    Top = 720
    Width = 3855
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin Label LblName
    Caption = "Bar Code"
    Index = 2
    ForeColor = &HC00000&
    Left = 2160
    Top = 2895
    Width = 885
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 13
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
    TabIndex = 12
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
    TabIndex = 11
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
  Begin Label LblName
    Caption = "HSN Code"
    Index = 1
    ForeColor = &HC00000&
    Left = 2160
    Top = 2595
    Width = 960
    Height = 240
    TabIndex = 10
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
    ForeColor = &HC00000&
    Left = 2160
    Top = 2265
    Width = 1035
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

Attribute VB_Name = "FrmItemMast"


Private Sub DGHelp_UnknownEvent_9 'F50054
  'Data Table: 474430
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4FF4B: Me.DGHelp.Visible = False
  loc_F4FF6A: If (Me.RecordCount > 0) Then
  loc_F4FFA9:   Set var_B4 = Me.Txt
  loc_F4FFAF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4FFB7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4FFEA:   var_B0 = Me.Fields.Item("Code")
  loc_F50009:   Set var_B4 = Me.Txt
  loc_F5000F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F50017:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5002D: End If
  loc_F50038: Set var_A8 = Me.Txt
  loc_F5003E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_F50046: var_B0.SetFocus
  loc_F50052: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E73E50
  'Data Table: 474430
  loc_E73E0E: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E73E25: Set var_8C = Me.FGPoint
  loc_E73E41: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(1))
  loc_E73E4F: Exit Sub
End Sub

Private Sub Form_Load() '107A528
  'Data Table: 474430
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_474443 As Connection15
  loc_107A2A0: On Error Goto loc_107A4E4
  loc_107A2B2: Me.LblUser.Left = CDbl(13500)
  loc_107A2C9: Me.LblUser.Top = CDbl(7800)
  loc_107A2E0: Me.LblLDt.Top = CDbl(8160)
  loc_107A2F7: Me.LblLDt.Left = CDbl(13500)
  loc_107A306: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_107A319: Set var_88 = Me.Txt
  loc_107A31F: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_107A33E: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_107A35A: Set var_B4 = Me.Txt
  loc_107A360: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_107A37B: Set var_88 = Me.Txt
  loc_107A381: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_107A399: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_107A3A8: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_107A3C4: Set var_88 = Me.TopCtrl1
  loc_107A3CA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_107A3D8: Call 0.Method_arg_50 (var_C4)
  loc_107A3E0: var_D4 = CVar(var_C4) 'String
  loc_107A3EE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_107A414: var_D8 = "SELECT Q.Code,Q.Name FROM (SELECT Code,Name,LogSite_Code FROM Item)Q WHERE (Q.LOGSITE_CODE='" & MemVar_1F95078 & "' or Q.LOGSITE_CODE='HO') ORDER BY Q.Name"
  loc_107A41D: unk_474443.Execute var_D8, var_D4, -1
  loc_107A44C: CVarUnk
  loc_107A451: VerifyVarObj
  loc_107A457: Set var_88 = Me.DGHelp
  loc_107A45D: LateIdStAd
  loc_107A47F: var_C4 = "SELECT I.Code,I.Name Item,IsNull(I.CommodityCode,'') CommodityCode,I.BarCode,I.SITE_CODE,I.LOGSITE_CODE FROM Item I WHERE (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_107A48F: unk_474443.Execute var_C4 & "' or I.LOGSITE_CODE='HO') ORDER BY I.Name", var_D4, -1
  loc_107A4A0: Set global_52 = var_88
  loc_107A4BA: Call Proc_228_27_E740A4(0, var_88, var_88)
  loc_107A4C8: Call 0.Method_arg_160 (var_88, Me.TopCtrl1)
  loc_107A4D6: Call 0.Method_arg_164 (var_88)
  loc_107A4DE: Call Proc_228_29_124C084(var_88)
  loc_107A4E3: Exit Sub
  loc_107A4E4: ' Referenced from: 107A2A0
  loc_107A4EC: Set var_88 = Err()
  loc_107A4F2: Call 0.Method_arg_2C (var_C4)
  loc_107A513: MsgBox(CVar(var_C4), &H40, "Information", var_FC, var_11C)
  loc_107A526: Exit Sub
  loc_107A527: Exit Sub
End Sub

Private Sub Form_Resize() 'ED66D8
  'Data Table: 474430
  Dim var_8C As Label
  loc_ED6636: Call 0.Method_arg_50 (var_88)
  loc_ED6648: Me.LblFormCaption.Caption = var_88
  loc_ED6661: Me.LblFormCaption.Left = CDbl(0)
  loc_ED666D: Set var_A0 = Me.TopCtrl1
  loc_ED6673: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6680: Set var_8C = Me.TopCtrl1
  loc_ED6686: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED66A0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED66BB: Call 0.Method_arg_100 (var_B8)
  loc_ED66CD: Me.LblFormCaption.Width = var_B8
  loc_ED66D5: Exit Sub
  loc_ED66D6: Set var_478C = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2B2DC
  'Data Table: 474430
  loc_E2B2BF: Set global_52 = Nothing
  loc_E2B2D1: Set global_56 = Nothing
  loc_E2B2D8: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E88CA4
  'Data Table: 474430
  loc_E88C40: On Error Goto loc_E88C60
  loc_E88C57: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E88C5F: Exit Sub
  loc_E88C60: ' Referenced from: E88C40
  loc_E88C68: Set var_88 = Err()
  loc_E88C6E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E88C8F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E88CA2: Exit Sub
  loc_E88CA3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '113E230
  'Data Table: 474430
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_A0 As String
  Dim unk_474443 As Connection15
  loc_113DEC2: Set var_88 = Me.Txt
  loc_113DEC8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_113DED6: Proc_6_74_E23240(var_8C)
  loc_113DEE2: Call Proc_228_31_EBBDB4(var_8C)
  loc_113DEEA: var_92 = Index
  loc_113DEF5: If (var_92 = CInt(1)) Then
  loc_113DF0F:   If (Me.RecordCount > 0) Then
  loc_113DF1D:     Set var_8C = Me.FGPoint
  loc_113DF35:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_113DF43:   End If
  loc_113DF91:   Set var_88 = Me.Txt
  loc_113DF97:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_113DF9F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_113DFB7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_113DFC7:     Set var_88 = Me.Txt
  loc_113DFCD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_113DFD5:     var_8C.Tag = vbNullString
  loc_113DFE1:     Exit Sub
  loc_113DFE2:   End If
  loc_113DFEF:   Set var_88 = Me.Txt
  loc_113DFF5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_113DFFD:   var_A0 = var_8C.Text
  loc_113E00F:   var_B0 = "Name"
  loc_113E026:   var_B4 = Me.Fields.Item(var_B0)
  loc_113E02E:   var_C4 = var_B4.Value
  loc_113E04A:   If CBool(CVar(var_A0) <> var_C4) Then
  loc_113E053:     Me.MoveFirst
  loc_113E076:     Set var_88 = Me.Txt
  loc_113E07C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_113E084:     0 = var_8C.Text
  loc_113E09D:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_113E0B2:   End If
  loc_113E0B5: Else
  loc_113E0BD:   If (var_92 = CInt(3)) Then
  loc_113E0CE:     Set var_88 = Me.Txt
  loc_113E0D4:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_113E0F3:     Me.DGBarCode.Left = CVar(var_8C.Left)
  loc_113E10F:     Set var_90 = Me.Txt
  loc_113E115:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_B4)
  loc_113E136:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_113E14E:     var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_113E15D:     Me.DGBarCode.Top = CVar(var_8C.Left)
  loc_113E183:     var_A0 = "Select Q.Code,Q.BarCode From (SELECT BarCode as COde,BarCode,LogSite_Code FROM Item)Q  Where (Q.LOGSITE_CODE='" & MemVar_1F95078
  loc_113E193:     unk_474443.Execute var_A0 & "' or Q.LOGSITE_CODE='HO') ORDER BY Q.BarCode", var_C4, -1
  loc_113E1C2:     CVarUnk
  loc_113E1C7:     VerifyVarObj
  loc_113E1CD:     Set var_88 = Me.DGBarCode
  loc_113E1D3:     LateIdStAd
  loc_113E1F8:     If (Me.RecordCount > 0) Then
  loc_113E21E:       Proc_6_137_1192FDC(Me.DGBarCode, Me.Txt, Index, Me.FGPoint)
  loc_113E22C:     End If
  loc_113E22C:   End If
  loc_113E22C: End If
  loc_113E22C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10E1414
  'Data Table: 474430
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10E1112: If (CLng(Shift) = &H1B) Then
  loc_10E1115:   Call Proc_228_31_EBBDB4()
  loc_10E111A:   Exit Sub
  loc_10E111B: End If
  loc_10E111E: var_88 = KeyCode
  loc_10E1129: If (var_88 = CInt(1)) Then
  loc_10E114E:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_10E116E:     Set var_A0 = Me.FGPoint
  loc_10E11A0:     Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(1), global_56, Shift)
  loc_10E11B4:   End If
  loc_10E120D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10E1233:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_10E1241:   End If
  loc_10E1244: Else
  loc_10E124C:   If (var_88 = CInt(3)) Then
  loc_10E1271:     If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_10E1291:       Set var_A0 = Me.FGPoint
  loc_10E12BF:       Proc_6_79_11AD564(Me.DGBarCode, Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_10E12D3:     End If
  loc_10E132C:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10E1333:       Set var_A0 = Me.DGBarCode
  loc_10E1352:       Proc_6_138_106E830(var_A0, global_60, KeyCode, Me.FGPoint, var_A0)
  loc_10E1360:     End If
  loc_10E1360:   End If
  loc_10E1360: End If
  loc_10E139B: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGBarCode.Visible) = 0)) Then
  loc_10E13BC:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_10E13C2:     Call Proc_228_32_E8F71C(KeyCode, 0, 1)
  loc_10E13CA:   Else
  loc_10E13DF:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10E13E8:       Proc_6_75_E5335C(Shift, arg_14, var_A0)
  loc_10E13F0:     Else
  loc_10E1403:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_10E140C:         Proc_6_76_E533C8(Shift, arg_14)
  loc_10E1411:       End If
  loc_10E1411:     End If
  loc_10E1411:   End If
  loc_10E1411: End If
  loc_10E1411: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E48534
  'Data Table: 474430
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E48506: Proc_6_133_E7FB08(var_94)
  loc_E4851B: If (CInt(var_94) = &HD) Then
  loc_E48520:   arg_10 = 0
  loc_E48523: End If
  loc_E48526: Proc_6_58_E06050(arg_10, arg_10)
  loc_E4852E: var_96 = KeyAscii
  loc_E48531: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F8C6F8
  'Data Table: 474430
  Dim var_86 As Integer
  Dim var_AC As TextBox
  loc_F8C59B: var_86 = KeyCode
  loc_F8C5A6: If (var_86 = CInt(1)) Then
  loc_F8C5C5:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F8C5D2:     var_A4 = "Name"
  loc_F8C5F1:     Proc_6_80_FF1F20(Me.Txt, CInt(1), global_56)
  loc_F8C604:     Set var_AC = Me.DGHelp
  loc_F8C623:     Proc_6_138_106E830(var_AC, global_56, KeyCode, Me.FGPoint)
  loc_F8C631:   End If
  loc_F8C634: Else
  loc_F8C63C:   If (var_86 = CInt(3)) Then
  loc_F8C662:     Set var_A8 = Me.Txt
  loc_F8C668:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_AC, var_A4, (CBool(Me.DGBarCode.Visible) = &HFF))
  loc_F8C670:     Shift = var_AC.Text
  loc_F8C68D:     If (var_A4 And (var_A4 <> vbNullString)) Then
  loc_F8C69A:       var_A4 = "BarCode"
  loc_F8C6B5:       Proc_6_80_FF1F20(Me.Txt, KeyCode, global_60)
  loc_F8C6E7:       Proc_6_138_106E830(Me.DGBarCode, global_60, KeyCode, Me.FGPoint)
  loc_F8C6F5:     End If
  loc_F8C6F5:   End If
  loc_F8C6F5: End If
  loc_F8C6F5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48594
  'Data Table: 474430
  loc_E48572: Set var_88 = Me.Txt
  loc_E48578: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48586: Proc_6_73_E23294(var_8C)
  loc_E48592: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E62E4C
  'Data Table: 474430
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E62DFF: var_86 = Cancel
  loc_E62E0A: If (var_86 = CInt(1)) Then
  loc_E62E10:   Call Proc_228_30_1264024(var_88)
  loc_E62E1B:   If (var_88 = &HFF) Then
  loc_E62E20:     arg_10 = &HFF
  loc_E62E23:     Exit Sub
  loc_E62E24:   End If
  loc_E62E27: Else
  loc_E62E2F:   If (var_86 = CInt(3)) Then
  loc_E62E35:     Call Proc_228_30_1264024(var_88, arg_10)
  loc_E62E40:     If (var_88 = &HFF) Then
  loc_E62E45:       arg_10 = &HFF
  loc_E62E48:       Exit Sub
  loc_E62E49:     End If
  loc_E62E49:   End If
  loc_E62E49: End If
  loc_E62E49: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAB93C
  'Data Table: 474430
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EAB8B0: On Error Goto loc_EAB936
  loc_EAB8D6: Call Proc_228_27_E740A4(Proc_5_1_100EC1C("ADD", Me))
  loc_EAB8E1: Call Proc_228_28_EA9AC8(global_52)
  loc_EAB8F1: Set var_8C = Me.Txt
  loc_EAB8F7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAB8FF: var_94.SetFocus
  loc_EAB918: Me.LblUser.Caption = vbNullString
  loc_EAB92D: Me.LblLDt.Caption = vbNullString
  loc_EAB935: Exit Sub
  loc_EAB936: ' Referenced from: EAB8B0
  loc_EAB936: Proc_6_60_E63754(var_94)
  loc_EAB93B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC047C
  'Data Table: 474430
  loc_EC03E4: On Error Goto loc_EC0474
  loc_EC041E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC042D:   Set var_10C = Me
  loc_EC0444:   Call Proc_228_27_E740A4(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC044F:   Call Proc_228_31_EBBDB4(global_52)
  loc_EC0454:   Call Proc_228_29_124C084()
  loc_EC045C: Else
  loc_EC0462:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC046A:   Call var_10C.SetFocus
  loc_EC0473: End If
  loc_EC0473: Exit Sub
  loc_EC0474: ' Referenced from: EC03E4
  loc_EC0474: Proc_6_60_E63754()
  loc_EC0479: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112D464
  'Data Table: 474430
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_474443 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112D11C: On Error Goto loc_112D414
  loc_112D12D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_112D130:   Exit Sub
  loc_112D131: End If
  loc_112D163: var_D0 = "Item Master"
  loc_112D1AB: If (Proc_6_108_101061C(MemVar_1F95044, "ItemMast", "Code", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112D1AE:   Exit Sub
  loc_112D1AF: End If
  loc_112D1E6: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112D1F2:   unk_474443.BeginTrans var_CC
  loc_112D208:   var_94 = Me.Bookmark 'Variant
  loc_112D254:   var_114 = "Delete From Item Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112D262:   unk_474443.Execute CStr(var_114), var_134, -1
  loc_112D2AD:   var_164 = 0
  loc_112D2C0:   var_15C = 0
  loc_112D2CB:   var_158 = 0
  loc_112D2DE:   var_150 = 0
  loc_112D2E9:   var_14C = 0
  loc_112D2FC:   var_144 = 0
  loc_112D33C:   var_B0 = "Item"
  loc_112D345:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112D373:   unk_474443.CommitTrans
  loc_112D383:   Me.Requery -1
  loc_112D393:   Me.Requery -1
  loc_112D3B3:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112D3C0:     Me.Bookmark = var_94
  loc_112D3C8:   Else
  loc_112D3DC:     If (Me.EOF = 0) Then
  loc_112D3E5:       Me.MoveLast
  loc_112D3EA:     End If
  loc_112D3EA:   End If
  loc_112D3EA:   Call Proc_228_29_124C084(var_144, 0, var_14C, var_150)
  loc_112D40B:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_112D413: End If
  loc_112D413: Exit Sub
  loc_112D414: ' Referenced from: 112D11C
  loc_112D41A: unk_474443.RollbackTrans
  loc_112D427: Set var_98 = Err()
  loc_112D42D: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112D44E: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112D461: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F1D390
  'Data Table: 474430
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F1D28C: On Error Goto loc_F1D389
  loc_F1D29D: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F1D2A0:   Exit Sub
  loc_F1D2A1: End If
  loc_F1D2C4: Call Proc_228_27_E740A4(Proc_5_1_100EC1C("EDIT", Me))
  loc_F1D2DD: Set var_8C = Me.Txt
  loc_F1D2E3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F1D2F6: global_72 = var_94.Text
  loc_F1D312: Set var_8C = Me.Txt
  loc_F1D318: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_F1D32B: global_64 = var_94.Text
  loc_F1D346: Me.LblUser.Caption = vbNullString
  loc_F1D35B: Me.LblLDt.Caption = vbNullString
  loc_F1D36E: Set var_8C = Me.Txt
  loc_F1D374: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F1D37C: var_94.SetFocus
  loc_F1D388: Exit Sub
  loc_F1D389: ' Referenced from: F1D28C
  loc_F1D389: Proc_6_60_E63754(global_52)
  loc_F1D38E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B368
  'Data Table: 474430
  loc_E1B35D: Me.Global.Unload Me
  loc_E1B365: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F19110
  'Data Table: 474430
  Dim Me As Recordset15
  loc_F19020: On Error Goto loc_F190AA
  loc_F1902C: var_88 = Me.RecordCount
  loc_F1903A: If (var_88 <= 0) Then
  loc_F1905E:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F1906E:   Exit Sub
  loc_F1906F: End If
  loc_F19072: MemVar_1F950E4 = "SELECT I.Code AS SEARCHCODE,I.Name,I.CommodityCode HSNCode,I.BarCode From Item I ORDER BY I.Name"
  loc_F1907C: MemVar_1F95120 = Me
  loc_F19083: var_10C = "3900,1500,2000"
  loc_F19089: Proc_6_126_F1C850(var_10C)
  loc_F190A4: Call 0.Method_arg_2B0 (1)
  loc_F190A9: Exit Sub
  loc_F190AA: ' Referenced from: F19020
  loc_F190B2: Set var_110 = Err()
  loc_F190B8: Call 0.Method_arg_1C (var_88)
  loc_F190C9: If (var_88 <> 0) Then
  loc_F190D4:   Set var_110 = Err()
  loc_F190DA:   Call 0.Method_arg_2C (var_10C)
  loc_F190FB:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F1910E: End If
  loc_F1910E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3D808
  'Data Table: 474430
  loc_E3D7F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D800: Call Proc_228_29_124C084(global_52)
  loc_E3D805: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3AB68
  'Data Table: 474430
  loc_E3AB58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3AB60: Call Proc_228_29_124C084(global_52)
  loc_E3AB65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3D748
  'Data Table: 474430
  loc_E3D738: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D740: Call Proc_228_29_124C084(global_52)
  loc_E3D745: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3D7A8
  'Data Table: 474430
  loc_E3D798: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D7A0: Call Proc_228_29_124C084(global_52)
  loc_E3D7A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1074374
  'Data Table: 474430
  Dim unk_474443 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_10740F4: On Error Goto loc_107432B
  loc_107410D: unk_474443.Execute "select I.Code,I.Name,I.U_Name,I.U_AE,I.U_Entdt,IsNull(I.BarCode,'') BarCode,IsNull(I.CommodityCode,'') HSNCode FROM Item I ORDER BY I.Name", var_BC, -1
  loc_1074118: Set var_88 = var_C0
  loc_1074127: var_C4 = var_88.RecordCount
  loc_1074135: If (var_C4 = 0) Then
  loc_1074151:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1074161:   Exit Sub
  loc_1074162: End If
  loc_1074171: var_12C = MemVar_1F950B4 & "\ItemMast.ttx"
  loc_1074178: Set var_C0 = var_88 
  loc_1074184: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_107418E: Set var_88 = var_C0
  loc_1074194: var_AC = CVar(var_12E) 'Integer
  loc_1074197: var_98 = var_AC 'Variant
  loc_10741B3: var_128 = MemVar_1F950B4 & "\ItemMast.RPT"
  loc_10741BC: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_10741C7: MemVar_1F951E8 = var_C0
  loc_10741E2: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10741EA: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10741F6: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_107420F:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1074217:   Call 0.Method_arg_20 (var_138)
  loc_107421F:   Call 0.Method_arg_30 (var_128)
  loc_1074265:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_107427B:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1074283:     Call 0.Method_arg_20 (var_138)
  loc_107428B:     Call 0.Method_arg_38 ("'Item List'")
  loc_1074297:   End If
  loc_107429A: Next var_132 'Integer
  loc_10742B8: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_10742C0: Call 0.Method_arg_2C (var_D4)
  loc_10742CE: Call 0.Method_arg_150 (var_F4)
  loc_10742D9: Call 0.Method_arg_50 (var_128)
  loc_10742E3: Set var_138 = Nothing
  loc_10742FD: Set var_C0 = MemVar_1F951E8 
  loc_1074309: Proc_6_99_1484404(var_C0, 0, var_128)
  loc_1074314: MemVar_1F951E8 = var_C0
  loc_1074327: Set var_88 = Nothing
  loc_107432A: Exit Sub
  loc_107432B: ' Referenced from: 10740F4
  loc_1074333: Set var_C0 = Err()
  loc_1074339: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1074344: Call 0.Method_arg_50 (var_12C)
  loc_1074360: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1074373: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0C154
  'Data Table: 474430
  Dim Me As Recordset15
  loc_E0C14B: Me.Requery -1
  loc_E0C150: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1357804
  'Data Table: 474430
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_474443 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_11C As Variant
  Dim var_120 As TextBox
  Dim var_168 As TextBox
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_2CC As Variant
  Dim var_140 As Variant
  Dim var_25C As Variant
  loc_1357048: On Error Goto loc_13577AF
  loc_135704F: var_86 = CByte(0) 'Byte
  loc_135705E: Set var_90 = Me.Txt
  loc_1357064: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_135708D: If (Proc_6_27_EA61EC(var_94, "Item") = 0) Then
  loc_1357097:   Call Txt_GotFocus(CInt(1))
  loc_135709C:   Exit Sub
  loc_135709D: End If
  loc_13570A0: Call Proc_228_30_1264024(var_9E)
  loc_13570AB: If (var_9E = &HFF) Then
  loc_13570AE:   Exit Sub
  loc_13570AF: End If
  loc_13570B3: Set var_90 = Me.TopCtrl1
  loc_13570B9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_13570D2: If (CStr() = "Add") Then
  loc_13570DB:   var_D4 = 0
  loc_13570F8:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F95070
  loc_13570FF:   var_B4 = CStr() & "'"
  loc_1357108:   unk_474443.Execute var_B4, var_B0, -1
  loc_1357110:   var_90 = var_90.Fields
  loc_1357118:   var_D4 = var_94.Item(var_94)
  loc_1357120:   var_98 = var_98.Value
  loc_1357129:   var_E8 = CStr(var_E4)
  loc_1357159:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1357187:   var_108 = (1 + Format(var_E8, "000000"))
  loc_1357192:   global_68 = CStr(var_108)
  loc_13571A7: Else
  loc_13571C4:   var_94 = Me.Fields.Item("Code")
  loc_13571DB:   global_68 = CStr(var_94.Value)
  loc_13571EC: End If
  loc_13571F7: Set var_90 = Me.Txt
  loc_13571FD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, 1)
  loc_135720C: var_E4 = Trim(CVar(var_94))
  loc_1357226: If (var_E4 = vbNullString) Then
  loc_135723A:   Set var_90 = Me.Txt
  loc_1357240:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, global_68)
  loc_1357248:   var_94.Text = var_F8
  loc_1357254: End If
  loc_135725D: unk_474443.BeginTrans var_10C
  loc_1357266: var_86 = CByte(1) 'Byte
  loc_135726E: Set var_90 = Me.TopCtrl1
  loc_1357274: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E4)
  loc_135728D: If (CStr() = "Add") Then
  loc_13572AE:   var_F8 = CVar("Insert Into Item(Code,Name,BarCode,CommodityCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_68 & "','") 'String
  loc_13572BF:   Set var_90 = Me.Txt
  loc_13572C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_B4, var_F8)
  loc_13572CD:   var_2F0 = var_94.Text
  loc_13572E3:   var_108 = -1 & Trim(CVar(var_B4)) 
  loc_13572EC:   var_11C = var_108 & "','" 
  loc_13572FE:   Set var_98 = Me.Txt
  loc_1357304:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120, var_E8)
  loc_135730C:   var_11C = var_120.Text
  loc_135733D:   Set var_164 = Me.Txt
  loc_1357343:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_1357387:   var_21C = var_2F4 & Trim(CVar(var_E8)) & "','" & Trim(CVar(var_168.Text)) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_1357397:   var_24C = Date
  loc_13573A2:   Proc_6_7_F26918(var_25C, var_24C)
  loc_13573C6:   var_2CC = var_21C & "'," & var_25C & ",'A','" & CVar(MemVar_1F95078) & "' )" 
  loc_13573D4:   unk_474443.Execute CStr(var_2CC), , 
  loc_1357427: Else
  loc_1357444:   Set var_90 = Me.Txt
  loc_135744A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "UPDATE Item SET Name='")
  loc_1357479:   Set var_98 = Me.Txt
  loc_135747F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120, var_2CC & Trim(CVar(var_94)) & "',BarCode='")
  loc_1357496:   var_140 = -1 & Trim(CVar(var_120)) 
  loc_13574AE:   Set var_164 = Me.Txt
  loc_13574B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_13574F1:   var_1FC = Trim(CVar(var_E8)) & "',CommodityCode='" & Trim(CVar(var_168)) & "',SITE_CODE='" & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) 
  loc_135750C:   Proc_6_7_F26918(var_24C, Date)
  loc_1357541:   unk_474443.Execute CStr(var_1FC & "',U_EntDt=" & var_24C & " ,U_AE='E' WHERE Code='" & CVar(global_68) & "'"), var_2F4, 
  loc_1357592:   var_C4 = "UPDATE ItemMast SET Name='"
  loc_13575A2:   Set var_90 = Me.Txt
  loc_13575A8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_C4)
  loc_13575B7:   var_E4 = Trim(CVar(var_94))
  loc_13575BF:   var_F8 = var_2CC & var_E4 
  loc_13575C8:   var_108 = var_F8 & "',BarCode='" 
  loc_13575D7:   Set var_98 = Me.Txt
  loc_13575DD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120, var_108)
  loc_13575F4:   var_140 = -1 & Trim(CVar(var_120)) 
  loc_135760C:   Set var_164 = Me.Txt
  loc_1357612:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_135764F:   var_1FC = Trim(CVar(var_E8)) & "',CommodityCode='" & Trim(CVar(var_168)) & "',SITE_CODE='" & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) 
  loc_135766A:   Proc_6_7_F26918(var_24C, Date)
  loc_135769F:   unk_474443.Execute CStr(var_1FC & "',U_EntDt=" & var_24C & " ,U_AE='E' WHERE Code='" & CVar(global_68) & "'"), var_2F4, 
  loc_13576E3: End If
  loc_13576E9: unk_474443.CommitTrans
  loc_13576F2: var_86 = CByte(0) 'Byte
  loc_1357701: Me.Requery -1
  loc_1357711: Me.Requery -1
  loc_135773E: Me.Find "Code='" & global_68 & "'", 0, 1
  loc_135774E: Set var_90 = Me.TopCtrl1
  loc_1357754: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_135776D: If (CStr() = "Add") Then
  loc_1357770:   Call TopCtrl1_UnknownEvent_A()
  loc_1357775:   Exit Sub
  loc_1357776: End If
  loc_135778B: var_9C = "INI"
  loc_1357799: Call Proc_228_27_E740A4(Proc_5_1_100EC1C(var_9C, Me))
  loc_13577A4: Call Proc_228_31_EBBDB4(global_52)
  loc_13577A9: Call Proc_228_29_124C084()
  loc_13577AE: Exit Sub
  loc_13577AF: ' Referenced from: 1357048
  loc_13577B8: If (CInt(var_86) = 1) Then
  loc_13577C1:   unk_474443.RollbackTrans
  loc_13577C6: End If
  loc_13577CE: Set var_90 = Err()
  loc_13577D4: Call 0.Method_arg_2C (var_9C)
  loc_13577ED: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_1357800: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3B044
  'Data Table: 474430
  loc_E3B038: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3B03B:   Call DGHelp_UnknownEvent_9()
  loc_E3B040: End If
  loc_E3B040: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC0554
  'Data Table: 474430
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC04CA: On Error Goto loc_EC050F
  loc_EC04D3: Me.MoveFirst
  loc_EC04ED: var_8C = "code='" & MyValue
  loc_EC04FD: Me.Find var_8C & "'", 0, 1
  loc_EC0509: Call Proc_228_29_124C084(var_A0)
  loc_EC050E: Exit Sub
  loc_EC050F: ' Referenced from: EC04CA
  loc_EC0517: Set var_A4 = Err()
  loc_EC051D: Call 0.Method_arg_2C (var_8C)
  loc_EC053E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC0551: Exit Sub
  loc_EC0552: Exit Sub
End Sub

Public Sub Proc_228_27_E740A4(arg_C) 'E740A4
  'Data Table: 474430
  Dim var_98 As TextBox
  loc_E74056: Set var_8C = Me.Txt
  loc_E7405C: Call 0.Method_Proc_228_27_E740A4C (var_8E, var_86)
  loc_E74069: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E7407F:   Set var_8C = Me.Txt
  loc_E74085:   Call 0.Method_Proc_228_27_E740A40 (CInt(var_86), var_98)
  loc_E7408D:   var_98.Enabled = arg_C
  loc_E7409C: Next var_92 'Byte
  loc_E740A2: Exit Sub
End Sub

Public Sub Proc_228_28_EA9AC8
  'Data Table: 474430
  Dim var_98 As TextBox
  loc_EA9A3E: global_72 = vbNullString
  loc_EA9A50: Set var_8C = Me.Txt
  loc_EA9A56: Call 0.Method_Proc_228_28_EA9AC8C (var_8E, var_86)
  loc_EA9A63: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_EA9A79:   Set var_8C = Me.Txt
  loc_EA9A7F:   Call 0.Method_Proc_228_28_EA9AC80 (CInt(var_86), var_98)
  loc_EA9A87:   var_98.Text = vbNullString
  loc_EA9AA3:   Set var_8C = Me.Txt
  loc_EA9AA9:   Call 0.Method_Proc_228_28_EA9AC80 (CInt(var_86), var_98)
  loc_EA9AB1:   var_98.Tag = vbNullString
  loc_EA9AC0: Next var_92 'Byte
  loc_EA9AC6: Exit Sub
End Sub

Public Sub Proc_228_29_124C084
  'Data Table: 474430
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_474443 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_124BB74: On Error Goto loc_124C03F
  loc_124BB8E: If (Me.RecordCount > 0) Then
  loc_124BBE7:   unk_474443.Execute CStr("Select U_Name,U_AE,U_EntDt From Item where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_124BBF2:   Set var_88 = var_11C
  loc_124BC46:   var_11C = var_88.Fields
  loc_124BCAF:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_124BCF4:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_124BD6E:   var_120 = var_88.Fields.Item("U_AE")
  loc_124BD87:   var_118 = "entdt : "
  loc_124BD92:   var_F4 = "Last Update : "
  loc_124BDCF:   var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120)) = "E"), var_F4, var_118))
  loc_124BE14:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_124BE4C: End If
  loc_124BE52: Proc_183_45_E5CCA8(global_52)
  loc_124BE6E: If (Me.RecordCount <= 0) Then
  loc_124BE71:   Call Proc_228_28_EA9AC8()
  loc_124BE79: Else
  loc_124BEAD:   global_68 = CStr(Me.Fields.Item("Item").Value)
  loc_124BEFA:   Set var_11C = Me.Txt
  loc_124BF00:   Call 0.Method_Proc_228_29_124C0840 (CInt(1), var_120)
  loc_124BF08:   var_120.Text = CStr(Me.Fields.Item("Item").Value)
  loc_124BF5A:   Set var_11C = Me.Txt
  loc_124BF60:   Call 0.Method_Proc_228_29_124C0840 (CInt(1), var_120)
  loc_124BF68:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_124BFBA:   Set var_11C = Me.Txt
  loc_124BFC0:   Call 0.Method_Proc_228_29_124C0840 (CInt(2), var_120)
  loc_124BFC8:   var_120.Text = CStr(Me.Fields.Item("CommodityCode").Value)
  loc_124C00C:   var_F8 = CStr(Me.Fields.Item("BarCode").Value)
  loc_124C01A:   Set var_11C = Me.Txt
  loc_124C020:   Call 0.Method_Proc_228_29_124C0840 (CInt(3), var_120)
  loc_124C028:   var_120.Text = var_F8
  loc_124C03E: End If
  loc_124C03E: Exit Sub
  loc_124C03F: ' Referenced from: 124BB74
  loc_124C047: Set var_90 = Err()
  loc_124C04D: Call 0.Method_arg_2C (var_F8)
  loc_124C06E: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_124C081: Exit Sub
  loc_124C082: Exit Sub
End Sub

Public Sub Proc_228_30_1264024
  'Data Table: 474430
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_474443 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_A0 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_AC As String
  Dim var_154 As Variant
  loc_1263AEF: If (Me.RecordCount = 0) Then
  loc_1263AF2:   Proc_228_30_1264024 = 
  loc_1263AF8: End If
  loc_1263AFC: Set var_90 = Me.TopCtrl1
  loc_1263B02: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1263B1B: If (CStr() = "Add") Then
  loc_1263B48:   var_B0 = "Select Count(*) From (SELECT Code,Name,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F95078 & "' or Q.LOGSITE_CODE='HO') and Q.Name='"
  loc_1263B59:   Set var_90 = Me.Txt
  loc_1263B5F:   Call 0.Method_Proc_228_30_12640240 (CInt(1), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1263B67:   var_CC = var_A8.Text
  loc_1263B80:   unk_474443.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1263B90:    = var_D0.Item()
  loc_1263B98:    = var_E4.Value
  loc_1263BC9:   If (var_CC.Fields > 0) Then
  loc_1263BED:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1263C08:     Set var_90 = Me.Txt
  loc_1263C0E:     Call 0.Method_Proc_228_30_12640240 (CInt(1))
  loc_1263C16:     var_A8.SetFocus
  loc_1263C27:     Proc_228_30_1264024 = &HFF
  loc_1263C2D:   End If
  loc_1263C38:   Set var_90 = Me.Txt
  loc_1263C3E:   Call 0.Method_Proc_228_30_12640240 (CInt(3), var_A8)
  loc_1263C67:   If CBool(Trim(CVar(var_A8)) <> vbNullString) Then
  loc_1263C94:     var_114 = CVar("Select Count(*) From (SELECT BarCode as Code,BarCode,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F95078 & "' or Q.LOGSITE_CODE='HO') and Q.BarCode='") 'String
  loc_1263CA2:     Set var_90 = Me.Txt
  loc_1263CA8:     Call 0.Method_Proc_228_30_12640240 (CInt(3), var_A8, var_114, var_154, -1, var_CC)
  loc_1263CBF:     var_134 = var_D0 & Trim(CVar(var_A8)) 
  loc_1263CCC:     var_AC = CStr(var_134 & "'")
  loc_1263CD6:     unk_474443.Execute var_AC, 0, var_E4
  loc_1263CE6:      = var_D0.Item(var_A8)
  loc_1263CEE:      = var_E4.Value
  loc_1263D21:     If (var_CC.Fields > 0) Then
  loc_1263D3F:       var_A0 = "Duplicate Bar Code"
  loc_1263D45:       MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1263D60:       Set var_90 = Me.Txt
  loc_1263D66:       Call 0.Method_Proc_228_30_12640240 (CInt(3))
  loc_1263D6E:       var_A8.SetFocus
  loc_1263D7F:       Proc_228_30_1264024 = &HFF
  loc_1263D85:     End If
  loc_1263D85:   End If
  loc_1263D88: Else
  loc_1263DB2:   var_B0 = "Select Count(*) From (SELECT Code,Name,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F95078 & "' or Q.LOGSITE_CODE='HO') and (Q.Name='"
  loc_1263DC3:   Set var_90 = Me.Txt
  loc_1263DC9:   Call 0.Method_Proc_228_30_12640240 (CInt(1), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1263DD1:   var_CC = var_A8.Text
  loc_1263DFB:   unk_474443.Execute var_D0 & var_AC & "' And Q.Name<>'" & global_72 & "')", 0, var_E4
  loc_1263E0B:    = var_D0.Item(var_A8)
  loc_1263E13:    = var_E4.Value
  loc_1263E48:   If (var_CC.Fields > 0) Then
  loc_1263E6C:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1263E87:     Set var_90 = Me.Txt
  loc_1263E8D:     Call 0.Method_Proc_228_30_12640240 (CInt(1))
  loc_1263E95:     var_A8.SetFocus
  loc_1263EA6:     Proc_228_30_1264024 = &HFF
  loc_1263EAC:   End If
  loc_1263EB7:   Set var_90 = Me.Txt
  loc_1263EBD:   Call 0.Method_Proc_228_30_12640240 (CInt(3), var_A8)
  loc_1263EE6:   If CBool(Trim(CVar(var_A8)) <> vbNullString) Then
  loc_1263F13:     var_114 = CVar("Select Count(*) From (SELECT BarCode as COde,BarCode,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F95078 & "' or Q.LOGSITE_CODE='HO') and Q.BarCode='") 'String
  loc_1263F21:     Set var_90 = Me.Txt
  loc_1263F27:     Call 0.Method_Proc_228_30_12640240 (CInt(3), var_A8, var_114, var_174, -1, var_CC)
  loc_1263F3E:     var_134 = var_D0 & Trim(CVar(var_A8)) 
  loc_1263F6B:     unk_474443.Execute CStr(var_134 & "' and Q.BarCode<> '" & CVar(global_64) & "'"), 0, var_E4
  loc_1263F7B:      = var_D0.Item(var_A8)
  loc_1263F83:      = var_E4.Value
  loc_1263FBA:     If (var_CC.Fields > 0) Then
  loc_1263FDE:       MsgBox("Duplicate Bar Code", &H40, "Information", var_114, var_134)
  loc_1263FF9:       Set var_90 = Me.Txt
  loc_1263FFF:       Call 0.Method_Proc_228_30_12640240 (CInt(3))
  loc_1264007:       var_A8.SetFocus
  loc_1264018:       Proc_228_30_1264024 = &HFF
  loc_126401E:     End If
  loc_126401E:   End If
  loc_126401E: End If
  loc_126401E: Proc_228_30_1264024 = var_A8
End Sub

Public Sub Proc_228_31_EBBDB4
  'Data Table: 474430
  loc_EBBD2C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBBD3E:   Me.DGHelp.Visible = False
  loc_EBBD46: End If
  loc_EBBD62: If (CBool(Me.DGBarCode.Visible) = &HFF) Then
  loc_EBBD74:   Me.DGBarCode.Visible = False
  loc_EBBD7C: End If
  loc_EBBD98: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBBDAA:   Me.FGPoint.Visible = False
  loc_EBBDB2: End If
  loc_EBBDB2: Exit Sub
End Sub

Public Sub Proc_228_32_E8F71C(arg_C) 'E8F71C
  'Data Table: 474430
  Dim var_10C As TextBox
  loc_E8F6B0: Call Proc_228_31_EBBDB4()
  loc_E8F6EC: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8F6EF:   Call TopCtrl1_UnknownEvent_16()
  loc_E8F6F7: Else
  loc_E8F701:   Set var_108 = Me.Txt
  loc_E8F707:   Call 0.Method_Proc_228_32_E8F71C0 (arg_C)
  loc_E8F70F:   var_10C.SetFocus
  loc_E8F71B: End If
  loc_E8F71B: Exit Sub
End Sub
