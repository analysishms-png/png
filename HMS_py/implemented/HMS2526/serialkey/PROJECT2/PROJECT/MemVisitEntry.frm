VERSION 5.00
Begin VB.Form MemVisitEntry
  Caption = "Member Visit Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  Begin BtnEnh CmdOutAll
    Left = 14610
    Top = 6240
    Width = 2085
    Height = 420
    TabIndex = 6
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 14595
    Top = 4500
    Width = 2085
    Height = 1725
    TabIndex = 5
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 14610
    Top = 2745
    Width = 2085
    Height = 1725
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 15525
    Top = 90
    Width = 1350
    Height = 285
    TabIndex = 1
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
  Begin MSHFlexGrid GridSel
    Left = -15
    Top = 0
    Width = 14505
    Height = 7005
    TabIndex = 0
  End
  Begin BtnEnh CmdExit
    Left = 14595
    Top = 6645
    Width = 2100
    Height = 420
    TabIndex = 7
  End
  Begin Image ImgPhoto
    Left = 14610
    Top = 435
    Width = 2265
    Height = 2280
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Member Photo"
    ForeColor = &H80&
    Left = 15075
    Top = 1500
    Width = 1275
    Height = 240
    TabIndex = 3
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
  Begin Label Lbl
    Caption = "For Date :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 14565
    Top = 120
    Width = 930
    Height = 240
    TabIndex = 2
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

Attribute VB_Name = "MemVisitEntry"


Private Sub CmdOutAll_UnknownEvent_9 'F7DFA0
  'Data Table: 42CADC
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_168 As Variant
  Dim unk_42CAEC As Connection15
  loc_F7DE93: var_B8 = "Member Visit Entry"
  loc_F7DEC8: If (MsgBox(CVar("R U Sure ???" & vbCrLf & "ALL MEMBERS ARE OUT."), &H44, var_B8, var_D8, var_F8) = 6) Then
  loc_F7DED6:   Proc_183_7_EB17D4(var_B8)
  loc_F7DEE6:   Proc_183_8_EB1634(var_118)
  loc_F7DF3B:   var_168 = "Update MemVisitEntry Set OUTDate=" & var_B8 & ", U_EntDt=" & var_118 & ", OUTTime='" & Left(CVar(Proc_6_16_EF358C(CVar(Proc_6_14_EF402C(CVar(Proc_6_15_EF37AC()))))), 5) 
  loc_F7DF65:   unk_42CAEC.Execute CStr(var_168 & "' Where Logsite_Code='" & CVar(MemVar_1F95078) & "' And OUTDate IS NULL"), var_1E8, -1
  loc_F7DF95:   Call Proc_276_6_11A4B04(var_1EC)
  loc_F7DF9A:   Call Proc_276_9_123D6F0()
  loc_F7DF9F: End If
  loc_F7DF9F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EB5D04
  'Data Table: 42CADC
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  loc_EB5C7F: var_86 = KeyAscii
  loc_EB5C8A: If (var_86 = CInt(0)) Then
  loc_EB5C93:   If (arg_10 = &HD) Then
  loc_EB5C98:     arg_10 = 0
  loc_EB5CA8:     Set var_8C = Me.Txt
  loc_EB5CAE:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, var_94)
  loc_EB5CB6:     arg_10 = var_90.Text
  loc_EB5CD4:     Set var_9C = Me.Txt
  loc_EB5CDA:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_EB5CE2:     var_A0.Text = Proc_6_34_14EEAAC(var_94)
  loc_EB5CF9:     Call Proc_276_6_11A4B04(var_86)
  loc_EB5CFE:     Call Proc_276_9_123D6F0()
  loc_EB5D03:   End If
  loc_EB5D03: End If
  loc_EB5D03: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E0C000
  'Data Table: 42CADC
  loc_E0BFFA: If (Cancel = CInt(0)) Then
  loc_E0BFFD: End If
  loc_E0BFFD: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 'EB1228
  'Data Table: 42CADC
  loc_EB119C: On Error Goto loc_EB1222
  loc_EB11A5: var_88 = global_52
  loc_EB11B0: If (var_88 = "SmartCard_ACR") Then
  loc_EB11B9:   Call Proc_276_8_F4E204(Cancel)
  loc_EB11C1: Else
  loc_EB11C9:   If (var_88 = "NBSD_Mifare") Then
  loc_EB11E5:     MsgBox("Procedure Not Defined!", &H40, var_CC, var_EC, var_10C)
  loc_EB11F8:   Else
  loc_EB1211:     MsgBox("Smart Card Interface Not Defined!", &H40, var_CC, var_EC, var_10C)
  loc_EB1221:   End If
  loc_EB1221: End If
  loc_EB1221: Exit Sub
  loc_EB1222: ' Referenced from: EB119C
  loc_EB1222: Proc_6_60_E63754()
  loc_EB1227: Exit Sub
End Sub

Private Sub Form_Load() 'FB342C
  'Data Table: 42CADC
  Dim var_AC As Variant
  Dim unk_42CAEC As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_CC As TextBox
  loc_FB32A3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_FB32BB: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_FB32D6: Me.GridSel.Height = CVar(CDbl(7000))
  loc_FB32EB: Set var_AC = Me.GridSel
  loc_FB32F1: var_AC.Width = CVar(CDbl(14500))
  loc_FB331D: unk_42CAEC.Execute "Select * From MemEnviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_C4, -1
  loc_FB3328: Set var_88 = var_AC
  loc_FB334C: If (var_88.RecordCount > 0) Then
  loc_FB335E:   var_AC = var_88.Fields
  loc_FB3366:   var_CC = var_AC.Item("Interface")
  loc_FB337D:   global_52 = Proc_6_38_E69628(CVar(var_CC))
  loc_FB338D: Else
  loc_FB33A6:   MsgBox("Member EnvironMent Settings NOT SET!", 0, var_DC, var_FC, var_11C)
  loc_FB33B6: End If
  loc_FB33B6: Call Proc_276_6_11A4B04(var_AC)
  loc_FB33F5: Set var_AC = Me.Txt
  loc_FB33FB: Call 0.Method_Form_Load0 (CInt(0), var_CC, CStr(Format(Date, "dd/MMM/yyyy")))
  loc_FB3403: var_CC.Text = 1
  loc_FB341B: Call Proc_276_9_123D6F0(1)
  loc_FB3425: Set var_88 = Nothing
  loc_FB3428: Exit Sub
  loc_FB3429: ThisVCallI2
End Sub

Private Sub CmdExit_UnknownEvent_9 'E163D8
  'Data Table: 42CADC
  loc_E163CD: Me.Global.Unload Me
  loc_E163D5: Exit Sub
End Sub

Public Sub Proc_276_6_11A4B04
  'Data Table: 42CADC
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11A46EA: Me.GridSel.Rows = 1
  loc_11A46FE: Me.GridSel.Cols = 9
  loc_11A4703: var_98 = 0
  loc_11A470F: var_BC = CVar(CLng(0)) 'Long
  loc_11A4714: var_DC = "SNo"
  loc_11A471D: LateIdCallSt
  loc_11A4728: var_98 = CVar(CLng(0)) 'Long
  loc_11A472D: var_BC = &H1F4
  loc_11A4739: LateIdCallSt
  loc_11A4741: var_98 = 0
  loc_11A474D: var_BC = CVar(CLng(1)) 'Long
  loc_11A4752: var_DC = "Member Code"
  loc_11A475B: LateIdCallSt
  loc_11A4766: var_98 = CVar(CLng(1)) 'Long
  loc_11A476B: var_BC = 0
  loc_11A4777: LateIdCallSt
  loc_11A477F: var_98 = 0
  loc_11A478B: var_BC = CVar(CLng(2)) 'Long
  loc_11A4790: var_DC = "Card No"
  loc_11A4799: LateIdCallSt
  loc_11A47A4: var_98 = CVar(CLng(2)) 'Long
  loc_11A47AF: var_BC = CVar(CInt(4)) 'Integer
  loc_11A47B6: LateIdCallSt
  loc_11A47C1: var_98 = CVar(CLng(2)) 'Long
  loc_11A47CC: var_BC = CVar(CInt(4)) 'Integer
  loc_11A47D3: LateIdCallSt
  loc_11A47DE: var_98 = CVar(CLng(2)) 'Long
  loc_11A47E3: var_BC = &H3E8
  loc_11A47EF: LateIdCallSt
  loc_11A47F7: var_98 = 0
  loc_11A4803: var_BC = CVar(CLng(3)) 'Long
  loc_11A4808: var_DC = "Member Name"
  loc_11A4811: LateIdCallSt
  loc_11A481C: var_98 = CVar(CLng(3)) 'Long
  loc_11A4827: var_BC = CVar(CInt(1)) 'Integer
  loc_11A482E: LateIdCallSt
  loc_11A4839: var_98 = CVar(CLng(3)) 'Long
  loc_11A4844: var_BC = CVar(CInt(1)) 'Integer
  loc_11A484B: LateIdCallSt
  loc_11A4856: var_98 = CVar(CLng(3)) 'Long
  loc_11A485B: var_BC = &HC80
  loc_11A4867: LateIdCallSt
  loc_11A486F: var_98 = 0
  loc_11A487B: var_BC = CVar(CLng(4)) 'Long
  loc_11A4880: var_DC = "Address"
  loc_11A4889: LateIdCallSt
  loc_11A4894: var_98 = CVar(CLng(4)) 'Long
  loc_11A489F: var_BC = CVar(CInt(1)) 'Integer
  loc_11A48A6: LateIdCallSt
  loc_11A48B1: var_98 = CVar(CLng(4)) 'Long
  loc_11A48BC: var_BC = CVar(CInt(1)) 'Integer
  loc_11A48C3: LateIdCallSt
  loc_11A48CE: var_98 = CVar(CLng(4)) 'Long
  loc_11A48D3: var_BC = &H1450
  loc_11A48DF: LateIdCallSt
  loc_11A48E7: var_98 = 0
  loc_11A48F3: var_BC = CVar(CLng(5)) 'Long
  loc_11A48F8: var_DC = "IN DATE"
  loc_11A4901: LateIdCallSt
  loc_11A490C: var_98 = CVar(CLng(5)) 'Long
  loc_11A4917: var_BC = CVar(CInt(1)) 'Integer
  loc_11A491E: LateIdCallSt
  loc_11A4929: var_98 = CVar(CLng(5)) 'Long
  loc_11A4934: var_BC = CVar(CInt(1)) 'Integer
  loc_11A493B: LateIdCallSt
  loc_11A4946: var_98 = CVar(CLng(5)) 'Long
  loc_11A494B: var_BC = &H4B0
  loc_11A4957: LateIdCallSt
  loc_11A495F: var_98 = 0
  loc_11A496B: var_BC = CVar(CLng(6)) 'Long
  loc_11A4970: var_DC = "IN TIME"
  loc_11A4979: LateIdCallSt
  loc_11A4984: var_98 = CVar(CLng(6)) 'Long
  loc_11A498F: var_BC = CVar(CInt(4)) 'Integer
  loc_11A4996: LateIdCallSt
  loc_11A49A1: var_98 = CVar(CLng(6)) 'Long
  loc_11A49AC: var_BC = CVar(CInt(4)) 'Integer
  loc_11A49B3: LateIdCallSt
  loc_11A49BE: var_98 = CVar(CLng(6)) 'Long
  loc_11A49C3: var_BC = &H384
  loc_11A49CF: LateIdCallSt
  loc_11A49D7: var_98 = 0
  loc_11A49E3: var_BC = CVar(CLng(7)) 'Long
  loc_11A49E8: var_DC = "OUT DATE"
  loc_11A49F1: LateIdCallSt
  loc_11A49FC: var_98 = CVar(CLng(7)) 'Long
  loc_11A4A07: var_BC = CVar(CInt(1)) 'Integer
  loc_11A4A0E: LateIdCallSt
  loc_11A4A19: var_98 = CVar(CLng(7)) 'Long
  loc_11A4A24: var_BC = CVar(CInt(1)) 'Integer
  loc_11A4A2B: LateIdCallSt
  loc_11A4A36: var_98 = CVar(CLng(7)) 'Long
  loc_11A4A3B: var_BC = &H4B0
  loc_11A4A47: LateIdCallSt
  loc_11A4A4F: var_98 = 0
  loc_11A4A5B: var_BC = CVar(CLng(8)) 'Long
  loc_11A4A60: var_DC = "OUT TIME"
  loc_11A4A69: LateIdCallSt
  loc_11A4A74: var_98 = CVar(CLng(8)) 'Long
  loc_11A4A7F: var_BC = CVar(CInt(4)) 'Integer
  loc_11A4A86: LateIdCallSt
  loc_11A4A91: var_98 = CVar(CLng(8)) 'Long
  loc_11A4A9C: var_BC = CVar(CInt(4)) 'Integer
  loc_11A4AA3: LateIdCallSt
  loc_11A4AAE: var_98 = CVar(CLng(8)) 'Long
  loc_11A4AB3: var_BC = &H47E
  loc_11A4ABF: LateIdCallSt
  loc_11A4AC7: var_98 = "1"
  loc_11A4AD1: Set var_AC = Me.GridSel
  loc_11A4AF5: Me.GridSel.FixedRows = 1
  loc_11A4AFF: Set var_88 = Nothing 
  loc_11A4B03: Exit Sub
End Sub

Public Sub Proc_276_7_118791C(arg_C, arg_10, arg_14) '118791C
  'Data Table: 42CADC
  Dim var_94 As String
  Dim unk_42CAEC As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Variant
  Dim var_14C As Variant
  Dim var_1AC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_19C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_C8 As Fields15
  loc_118759F: var_88 = arg_C
  loc_11875BD: var_94 = "Select * From MemVisitEntry Where SerialNo=(Select Top 1 SerialNo From MemVisitEntry Where LogSite_Code='" & MemVar_1F95078 & "' And MemCode='"
  loc_11875E2: unk_42CAEC.Execute var_94 & var_88 & "' And CardRegId='" & arg_10 & "' Order By SerialNo Desc) And INDate IS NOT NULL And OUTDate IS NULL", var_C4, -1
  loc_1187623: If (Ucase(arg_14) = "IN") Then
  loc_118763A:   If (var_C8.RecordCount > 0) Then
  loc_1187656:     MsgBox("Member Is Already IN", &H10, var_E8, var_10C, var_12C)
  loc_118766B:     Set var_8C = Nothing
  loc_118766E:     Exit Sub
  loc_118766F:   End If
  loc_118767A:   Proc_183_7_EB17D4(var_E8)
  loc_118768F:   var_14C = CVar(Proc_6_16_EF358C(CVar(Proc_6_15_EF37AC(var_C8)))) 'String
  loc_118769F:   var_1AC = CVar(Proc_6_14_EF402C()) 'String
  loc_11876A5:   Proc_183_8_EB1634(var_1BC)
  loc_11876C5:   var_10C = CVar("Insert into MemVisitEntry(MemCode,INDate,INTime,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,CardRegId) Values('" & var_88 & "',") 'String
  loc_11876CB:   var_12C = var_10C & var_E8 
  loc_118771A:   var_22C = var_12C & ",'" & Left(var_14C, 5) & "','A','" & CVar(MemVar_1F950C8) & "'," & var_1BC & ",'" & CVar(MemVar_1F95070) & "','" 
  loc_1187724:   var_24C = var_22C & CVar(MemVar_1F95078) 
  loc_118774E:   unk_42CAEC.Execute CStr(var_24C & "','" & CVar(arg_10) & "')"), var_2CC, -1
  loc_1187791: Else
  loc_11877AF:   If (Ucase(arg_14) = "OUT") Then
  loc_11877C6:     If (var_8C.RecordCount = 0) Then
  loc_11877E2:       MsgBox("Member Is Not IN", &H10, var_E8, var_10C, var_12C)
  loc_11877F7:       Set var_8C = Nothing
  loc_11877FA:       Exit Sub
  loc_11877FB:     End If
  loc_1187806:     Proc_183_7_EB17D4(var_E8, CVar(Proc_6_15_EF37AC(var_C8)))
  loc_1187816:     Proc_183_8_EB1634(var_14C)
  loc_1187892:     var_19C = "Update MemVisitEntry Set OUTDate=" & var_E8 & ", U_EntDt=" & var_14C & ", OUTTime='" & Left(CVar(Proc_6_16_EF358C(CVar(Proc_6_14_EF402C(var_1AC)))), 5) 
  loc_11878BE:     var_22C = var_19C & "' Where SerialNo=" & var_8C.Fields.Item("SerialNo").Value & " and Logsite_Code='" & CVar(MemVar_1F95078) & "'" 
  loc_11878CC:     unk_42CAEC.Execute CStr(var_22C), var_24C, -1
  loc_1187908:   End If
  loc_1187908: End If
  loc_1187908: Call Proc_276_6_11A4B04(var_2D4)
  loc_118790D: Call Proc_276_9_123D6F0()
  loc_1187917: Set var_8C = Nothing
  loc_118791A: Exit Sub
End Sub

Public Sub Proc_276_8_F4E204(arg_C) 'F4E204
  'Data Table: 42CADC
  Dim var_13A As Integer
  loc_F4E16A: If (Proc_275_12_130B494(2, 0, var_88, 0, 0) = &HFF) Then
  loc_F4E18E:   MsgBox("Card Varified", &H40, "Membership Varification", var_118, var_138)
  loc_F4E1A1:   var_13A = arg_C
  loc_F4E1AC:   If (var_13A = CInt(0)) Then
  loc_F4E1BE:     Call Proc_276_7_118791C(var_8C, var_88, "IN")
  loc_F4E1C9:   Else
  loc_F4E1D1:     If (var_13A = CInt(1)) Then
  loc_F4E1E3:       Call Proc_276_7_118791C(var_8C, var_88, "OUT")
  loc_F4E1EB:     End If
  loc_F4E1EB:   End If
  loc_F4E1F4:   Call Proc_276_10_108229C(var_88, var_13A, 0, 0)
  loc_F4E1FC: End If
  loc_F4E1FE: var_14C = Nothing 'Address
  loc_F4E202: Exit Sub
End Sub

Public Sub Proc_276_9_123D6F0
  'Data Table: 42CADC
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_148 As String
  Dim unk_42CAEC As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_16C As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_158 As Variant
  Dim var_94 As MSHFlexGrid
  loc_123D1E1: var_D4 = "Select S.Name MemName,S.CardNo, S.Addr Address, M.* From (MemVisitEntry M Left Join SmartCardRegistration S On M.CardRegId=S.Code) Where Cast(Convert(Varchar(10),M.U_EntDt,120) As DateTime)="
  loc_123D1F1: Set var_90 = Me.Txt
  loc_123D1F7: Call 0.Method_Proc_276_9_123D6F00 (CInt(0), var_94, var_D4)
  loc_123D211: Proc_6_7_F26918(var_C4, Trim(CVar(var_94)), var_168)
  loc_123D219: var_E4 = -1 & var_C4 
  loc_123D243: unk_42CAEC.Execute CStr(var_E4 & " And M.LogSite_Code='" & CVar(MemVar_1F95078) & "' Order By M.INDate,M.INTime"), var_16C, 
  loc_123D24E: Set var_88 = var_16C
  loc_123D282: If (var_88.RecordCount = 0) Then
  loc_123D298:   Me.GridSel.Rows = 2
  loc_123D2B3:   Me.GridSel.FixedRows = 1
  loc_123D2BB:   Exit Sub
  loc_123D2BC: End If
  loc_123D2CF: Me.GridSel.Row = 1
  loc_123D2D7: ' Referenced from: 123D6BF
  loc_123D2E6: If Not(var_88.EOF) Then
  loc_123D2ED:   Set var_178 = Me.GridSel
  loc_123D303:   var_F4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_123D338:   var_C4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")), CVar(CLng(2)))) 'String
  loc_123D33F:   LateIdCallSt
  loc_123D39F:   var_C4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MemName")), CVar(CLng(3)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_123D3A6:   LateIdCallSt
  loc_123D40D:   LateIdCallSt
  loc_123D44D:   var_148 = Proc_6_38_E69628(CVar(var_88.Fields.Item("INDate")), var_178, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Address")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_178)), CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Address")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_178)))
  loc_123D463:   var_114 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_123D49E:   LateIdCallSt
  loc_123D507:   var_C4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("INTime")), CVar(CLng(6)), CVar(CLng(Me.GridSel.Row)), var_178, CVar(CStr(Format(CVar(var_148), "dd/mmm/yyyy"))), 1)) 'String
  loc_123D50E:   LateIdCallSt
  loc_123D564:   var_114 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_123D56C:   var_158 = CVar(CLng(7)) 'Long
  loc_123D58F:   var_E4 = Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("OUTDate")), var_178, "dd/mmm/yyyy", 1, CVar(CLng(5)))), "dd/mmm/yyyy")
  loc_123D59F:   LateIdCallSt
  loc_123D608:   var_C4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("OUTTime")), CVar(CLng(8)), CVar(CLng(Me.GridSel.Row)), var_178, CVar(CStr(var_E4)), 1, 1)) 'String
  loc_123D60F:   LateIdCallSt
  loc_123D629:   Set var_178 = Nothing 
  loc_123D630:   var_88.MoveNext
  loc_123D646:   If (var_88.EOF = 0) Then
  loc_123D664:     var_B4 = CVar(CStr((CLng(Me.GridSel.Row) + 1))) 'String
  loc_123D66C:     Set var_94 = Me.GridSel
  loc_123D6A1:     var_D4 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_123D6B0:     Me.GridSel.Row = "OUTTime"
  loc_123D6BF:   End If
  loc_123D6BF:   GoTo loc_123D2D7
  loc_123D6C2: End If
  loc_123D6D5: Me.GridSel.FixedRows = 1
  loc_123D6E2: Set var_88 = Nothing
  loc_123D6EA: Set var_8C = Nothing
  loc_123D6ED: Exit Sub
End Sub

Public Sub Proc_276_10_108229C(arg_C) '108229C
  'Data Table: 42CADC
  Dim var_CC As Variant
  Dim unk_42CAEC As Connection15
  Dim var_B8 As Variant
  Dim var_BC As Fields15
  Dim var_D0 As Variant
  Dim var_A4 As Variant
  Dim var_100 As Variant
  Dim var_F0 As Variant
  Dim var_B4 As Variant
  loc_1082026: var_CC = 0
  loc_1082053: unk_42CAEC.Execute "Select IsNull(Max(PicPath),'') From MemberFamily Where CardRegId='" & arg_C & "'", var_B4, -1
  loc_1082063: var_CC = var_BC.Item(var_BC)
  loc_108206B: var_D0 = var_D0.Value
  loc_1082074: var_8C = CStr(var_E0)
  loc_108209B: var_100 = IsNull(var_8C)
  loc_10820A2: var_CC = var_8C
  loc_10820B2: var_F0 = vbNullString
  loc_10820C9: If CBool(var_100 Or (Trim(var_CC) = var_F0)) Then
  loc_10820EA:   Me.Global.LoadPicture var_A4, var_CC, var_F0, var_100, var_120
  loc_10820FF:   Me.ImgPhoto.Picture = var_B8.Fields
  loc_1082118:   Me.ImgPhoto.Tag = vbNullString
  loc_1082123: Else
  loc_1082126:   var_A4 = var_8C
  loc_1082136:   var_F0 = var_8C
  loc_1082161:   var_CC = "DAT"
  loc_1082189:   var_100 = "AVI"
  loc_10821A8:   If CBool((Ucase(Right(Trim(var_A4), 3)) = var_CC) Or (Ucase(Right(Trim(var_F0), 3)) = var_100)) Then
  loc_10821B7:     Me.ImgPhoto.Visible = False
  loc_10821C2:   Else
  loc_10821CF:     Me.ImgPhoto.Tag = var_8C
  loc_10821E3:     Call 0.Method_Proc_276_10_108229C4 (var_8C, var_182)
  loc_10821EB:     If var_182 Then
  loc_1082208:       Set var_B8 = Me.ImgPhoto
  loc_1082220:       Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A4, var_CC, var_F0, var_100
  loc_1082235:       Me.ImgPhoto.Picture = var_BC
  loc_108224A:       Set var_B8 = Me.ImgPhoto
  loc_1082250:       var_B8.Refresh
  loc_108225B:     Else
  loc_1082279:       Me.Global.LoadPicture var_A4, var_CC, var_F0, var_100, var_120
  loc_108228E:       Me.ImgPhoto.Picture = var_B8
  loc_108229A:     End If
  loc_108229A:   End If
  loc_108229A: End If
  loc_108229A: Exit Sub
  loc_108229B: var_B8 = var_BC
End Sub
