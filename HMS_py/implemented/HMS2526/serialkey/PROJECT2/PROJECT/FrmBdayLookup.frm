VERSION 5.00
Begin VB.Form FrmBdayLookup
  Caption = "Form1"
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
  ClientWidth = 11925
  ClientHeight = 7860
  Begin BtnEnh Command1
    Left = 60
    Top = 8760
    Width = 1065
    Height = 420
    TabIndex = 15
  End
  Begin BtnEnh CmdFill
    Left = 3945
    Top = 30
    Width = 1575
    Height = 765
    TabIndex = 13
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7410
    Width = 11925
    Height = 450
    Visible = 0   'False
    TabIndex = 11
  End
  Begin Frame FrmList
    Left = 2865
    Top = 7740
    Width = 1890
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 30
      Top = 15
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1935
    Top = 60
    Width = 1695
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    Locked = -1  'True
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
    Left = 1935
    Top = 375
    Width = 1695
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 1935
    Top = 690
    Width = 1695
    Height = 285
    TabIndex = 2
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
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 795
    Top = 2400
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin PictureBox Picture1
    BackColor = &HE0E0E0&
    Picture = "FrmBdayLookup.frx":0
    Left = 45
    Top = 5685
    Width = 3690
    Height = 3075
    Visible = 0   'False
    TabIndex = 5
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin MSHFlexGrid GridSel
    Left = 45
    Top = 1080
    Width = 15315
    Height = 7680
    TabIndex = 3
  End
  Begin BtnEnh CmdExit
    Left = 7395
    Top = 30
    Width = 1575
    Height = 765
    TabIndex = 12
  End
  Begin BtnEnh CmdPrint
    Left = 5685
    Top = 30
    Width = 1575
    Height = 765
    TabIndex = 14
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 180
    Top = 390
    Width = 1080
    Height = 240
    TabIndex = 8
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
    Caption = "B'Day/Anniversary"
    Index = 0
    ForeColor = &HFF0000&
    Left = 180
    Top = 75
    Width = 1815
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
    Caption = "To Date"
    Index = 2
    ForeColor = &HFF0000&
    Left = 180
    Top = 690
    Width = 825
    Height = 240
    TabIndex = 6
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
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu FSR
      Index = 0
      Caption = "Filter Same Records"
    End
    Begin Menu FNSR
      Index = 1
      Caption = "Filter Not Same Records"
    End
    Begin Menu RF
      Index = 2
      Caption = "Remove Filter"
    End
    Begin Menu SA
      Index = 3
      Caption = "Sort Ascending"
    End
    Begin Menu SD
      Index = 4
      Caption = "Sort Descending"
    End
    Begin Menu RR
      Index = 5
      Caption = "Remove Row"
    End
  End
End

Attribute VB_Name = "FrmBdayLookup"


Private Sub RR_Click() 'EB4854
  'Data Table: 485AC0
  Dim var_A8 As Variant
  Dim var_C8 As Long
  loc_EB47E7: If (CLng(Me.GridSel.Row) >= 1) Then
  loc_EB47FD:   var_A8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_EB4802:   var_C8 = 0
  loc_EB480F:   Set var_DC = Me.GridSel
  loc_EB4815:   LateIdCallSt
  loc_EB482A: Else
  loc_EB4843:   MsgBox("No Entries To Remove", &H10, var_EC, var_FC, var_10C)
  loc_EB4853: End If
  loc_EB4853: Exit Sub
End Sub

Private Sub SD_Click() 'F16A0C
  'Data Table: 485AC0
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F16941: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F16980:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_F16994: Next var_A4 'Integer
  loc_F169A3: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F169DD: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F169EE: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F169F7: Set var_90 = Me.GridSel
  loc_F16A08: Exit Sub
End Sub

Private Sub SA_Click() 'F16C7C
  'Data Table: 485AC0
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F16BB1: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F16BF0:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_F16C04: Next var_A4 'Integer
  loc_F16C13: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F16C4D: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F16C5E: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F16C67: Set var_90 = Me.GridSel
  loc_F16C78: Exit Sub
End Sub

Private Sub FSR_Click() 'FB8410
  'Data Table: 485AC0
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB834F: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB8358: var_16C = var_14C & " =  '" 
  loc_FB836F: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB83B8: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB83FE: Set var_100 = Me.GridSel
  loc_FB840F: Exit Sub
End Sub

Private Sub FNSR_Click() 'FB8038
  'Data Table: 485AC0
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB7F77: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB7F80: var_16C = var_14C & " <>  '" 
  loc_FB7F97: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB7FE0: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB8026: Set var_100 = Me.GridSel
  loc_FB8037: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E16638
  'Data Table: 485AC0
  loc_E1662D: Me.Global.Unload Me
  loc_E16635: Exit Sub
End Sub

Private Sub CmdPrint_UnknownEvent_9 '140B1A0
  'Data Table: 485AC0
  Dim var_96 As Integer
  Dim var_9C As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_16C As Recordset15
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_128 As Variant
  Dim var_170 As String
  loc_140A76D: Call Proc_187_30_10B7E5C(New)
  loc_140A775: Set var_88 = var_9C
  loc_140A77A: var_96 = 0
  loc_140A789: Set var_9C = Me.GridSel
  loc_140A7A4: For var_B4 = 1 To (CLng(Me.GridSel.Rows) - 1): var_8C = var_B4 'Long
  loc_140A7DB:   var_E4 = CVar(CLng(1)) 'Long
  loc_140A827:   If CBool(var_E4 And (Trim(CVar(CStr(Me.GridSel.TextMatrix)))) <> vbNullString)) Then
  loc_140A82D:     Set var_16C = var_88 
  loc_140A83C:     var_16C.AddNew var_C4, var_D4
  loc_140A866:     var_16C.Fields.Item("mLine").Value = vbNullString
  loc_140A8D6:     var_16C.Fields.Item("GuestName").Value = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H32, CVar(CLng(1)), var_8C, var_8C))
  loc_140A933:     var_128 = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &HA, CVar(CLng(2)), var_8C, (CLng(Me.GridSel.RowHeight)) <> 0))) 'String
  loc_140A956:     var_16C.Fields.Item("GuestType").Value = var_128
  loc_140A9D6:     var_16C.Fields.Item("Address1").Value = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H32, CVar(CLng(3)), var_8C))
  loc_140AA56:     var_16C.Fields.Item("Address2").Value = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H32, CVar(CLng(4)), var_8C))
  loc_140AA7C:     var_D4 = CVar(CLng(5)) 'Long
  loc_140AAE4:     var_16C.Fields.Item("BirthDay").Value = Format(Trim(CVar(CStr(Me.GridSel.TextMatrix)))), "dd/mmm/yyyy")
  loc_140AB09:     var_D4 = CVar(CLng(6)) 'Long
  loc_140AB71:     var_16C.Fields.Item("Anniversary").Value = Format(Trim(CVar(CStr(Me.GridSel.TextMatrix)))), "dd/mmm/yyyy")
  loc_140ABCD:     var_128 = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H18, CVar(CLng(7)), var_8C, 1, 1, CVar(CLng(7)), var_8C)) 'String
  loc_140ABF0:     var_16C.Fields.Item("MobileNo").Value = var_128
  loc_140AC70:     var_16C.Fields.Item("PhoneNo").Value = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H23, CVar(CLng(8)), var_8C, 1, 1))
  loc_140ACCD:     var_128 = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H32, CVar(CLng(9)), var_8C, CVar(CLng(9)))) 'String
  loc_140ACF0:     var_16C.Fields.Item("EmailId").Value = var_128
  loc_140AD70:     var_16C.Fields.Item("FaxNo").Value = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H18, CVar(CLng(&HA)), var_8C))
  loc_140ADF0:     var_16C.Fields.Item("City").Value = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H23, CVar(CLng(&HB)), var_8C))
  loc_140AE70:     var_16C.Fields.Item("State").Value = CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H1E, CVar(CLng(&HC)), var_8C))
  loc_140AEB0:     var_108 = CVar(CStr(Me.GridSel.TextMatrix))) 'String
  loc_140AEB6:     var_118 = Trim(var_108)
  loc_140AECD:     var_128 = CVar(Proc_6_45_EADFB8(CStr(var_118), &H1E, CVar(CLng(&HD)), var_8C)) 'String
  loc_140AEF0:     var_16C.Fields.Item("Nation").Value = var_128
  loc_140AF0C:     var_D4 = "*"
  loc_140AF29:     var_F8 = var_16C.Fields.Item("Mark")
  loc_140AF31:     var_F8.Value = var_D4
  loc_140AF3F:     Set var_16C = Nothing 
  loc_140AF45:     var_96 = &HFF
  loc_140AF48:   End If
  loc_140AF4B: Next var_B4 'Long
  loc_140AF56: If (var_96 = 0) Then
  loc_140AF67:   var_C4 = "No Data to print Lables"
  loc_140AF72:   MsgBox(var_C4, &H40, var_108, var_118, var_128)
  loc_140AF82:   Exit Sub
  loc_140AF83: End If
  loc_140AF89: Call 0.Method_arg_50 (var_170)
  loc_140AF91: var_94 = var_170
  loc_140AF97: var_90 = "GuestBDayAnniversaryLookup"
  loc_140AFBE: Set var_9C = var_88 
  loc_140AFC5: CreateFieldDefFile(var_9C, MemVar_1F950B4 & "\" & var_90 & ".ttx")
  loc_140AFF3: var_170 = "\" & var_90
  loc_140B007: Call 0.Method_arg_1C (MemVar_1F950B4 & var_170 & ".RPT", var_C4)
  loc_140B012: MemVar_1F951E8 = var_9C
  loc_140B03B: Call 0.Method_arg_64 (var_9C, CVar(var_9C), var_D4)
  loc_140B043: Call 0.Method_arg_2C (var_E4, var_9C)
  loc_140B051: Call 0.Method_arg_150 (&HFF)
  loc_140B06A: Call 0.Method_arg_90 (var_9C, var_188)
  loc_140B072: Call 0.Method_arg_24 (var_8C)
  loc_140B07D: For var_190 =  To var_188: 1 = var_190 'Long
  loc_140B095:   Call 0.Method_arg_90 (var_9C, var_8C)
  loc_140B09D:   Call 0.Method_arg_20 (var_F8)
  loc_140B0A5:   Call 0.Method_arg_30 (var_170)
  loc_140B0EB:   If (Ucase(CVar(var_170)) = Ucase("Title")) Then
  loc_140B10E:     var_170 = Replace(var_94, "'", ",", 1, -1, 0)
  loc_140B12B:     Call 0.Method_arg_90 (var_9C, var_8C)
  loc_140B133:     Call 0.Method_arg_20 (var_F8)
  loc_140B13B:     Call 0.Method_arg_38 ("'" & var_170 & "'")
  loc_140B150:   End If
  loc_140B153: Next var_190 'Long
  loc_140B15B: Call 0.Method_arg_2B4 ()
  loc_140B166: Set var_F8 = Me
  loc_140B17C: Set var_9C = MemVar_1F951E8 
  loc_140B188: Proc_6_99_1484404(var_9C, 0, var_94)
  loc_140B193: MemVar_1F951E8 = var_9C
  loc_140B19E: Exit Sub
End Sub

Private Sub RF_Click() 'E2E928
  'Data Table: 485AC0
  Dim Me As Recordset15
  loc_E2E90B: Me.Filter = 0
  loc_E2E914: Set var_98 = Me.GridSel
  loc_E2E925: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 'FA4E60
  'Data Table: 485AC0
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_FA4CF7: Set var_88 = Me.Txt
  loc_FA4CFD: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_FA4D26: If (Proc_6_27_EA61EC(var_8C, "B'Day/Anniversary") = 0) Then
  loc_FA4D29:   Exit Sub
  loc_FA4D2A: End If
  loc_FA4D35: Set var_88 = Me.Txt
  loc_FA4D3B: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_FA4D64: If (Proc_6_27_EA61EC(var_8C, "From Date") = 0) Then
  loc_FA4D67:   Exit Sub
  loc_FA4D68: End If
  loc_FA4D73: Set var_88 = Me.Txt
  loc_FA4D79: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_8C)
  loc_FA4DA2: If (Proc_6_27_EA61EC(var_8C, "To Date") = 0) Then
  loc_FA4DA5:   Exit Sub
  loc_FA4DA6: End If
  loc_FA4DB4: Set var_90 = Me.Txt
  loc_FA4DBA: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_98)
  loc_FA4DD5: Set var_88 = Me.Txt
  loc_FA4DDB: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_FA4E05: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_FA4E21:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_FA4E3C:   Set var_88 = Me.Txt
  loc_FA4E42:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_FA4E4A:   var_8C.SetFocus
  loc_FA4E56:   Exit Sub
  loc_FA4E57: End If
  loc_FA4E57: Call Proc_187_28_1118F38(var_8C)
  loc_FA4E5C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10B6818
  'Data Table: 485AC0
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_E0 As TextBox
  loc_10B6558: On Error Goto loc_10B67D2
  loc_10B6565: Set var_88 = Me.Txt
  loc_10B656B: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10B6579: Proc_6_74_E23240(var_8C)
  loc_10B6585: Call Proc_187_29_E4E57C(var_8C)
  loc_10B658D: var_92 = Index
  loc_10B6598: If (var_92 = CInt(0)) Then
  loc_10B65A8:   ReDim var_98(0 To 1)
  loc_10B65BF:   var_98(0) = "BirthDay"
  loc_10B65CE:   var_98(1) = "Anniversary"
  loc_10B65E2:   var_D8 = Array(var_98) 'Variant
  loc_10B65EA:   Set var_E0 = Me.ListView
  loc_10B6602:   Set var_8C = Me.Txt
  loc_10B661C:   Set global_56 = Proc_6_66_F0048C(var_E0, var_8C, Index)
  loc_10B663A:   Set var_88 = Me.Txt
  loc_10B6640:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_E8)
  loc_10B6648:   var_D8 = var_8C.Text
  loc_10B665A:   Set var_90 = Me.Txt
  loc_10B6660:   Call 0.Method_Txt_GotFocus0 (Index, var_E0, var_E8)
  loc_10B6668:   var_E0.Tag = 2
  loc_10B667E: Else
  loc_10B6686:   If (var_92 = CInt(1)) Then
  loc_10B6696:     Set var_88 = Me.Txt
  loc_10B669C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10B66B7:     Set var_90 = Me.Txt
  loc_10B66BD:     Call 0.Method_Txt_GotFocus0 (Index, var_E0)
  loc_10B66C5:     var_E0.SelLength = Len(var_8C.Text)
  loc_10B66E5:     Set var_88 = Me.Txt
  loc_10B66EB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10B6705:     Set var_90 = Me.Txt
  loc_10B670B:     Call 0.Method_Txt_GotFocus0 (Index, var_E0)
  loc_10B6713:     var_E0.Tag = var_8C.Text
  loc_10B6729:   Else
  loc_10B6731:     If (var_92 = CInt(2)) Then
  loc_10B6741:       Set var_88 = Me.Txt
  loc_10B6747:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10B6762:       Set var_90 = Me.Txt
  loc_10B6768:       Call 0.Method_Txt_GotFocus0 (Index, var_E0)
  loc_10B6770:       var_E0.SelLength = Len(var_8C.Text)
  loc_10B6790:       Set var_88 = Me.Txt
  loc_10B6796:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10B679E:       var_E8 = var_8C.Text
  loc_10B67B0:       Set var_90 = Me.Txt
  loc_10B67B6:       Call 0.Method_Txt_GotFocus0 (Index, var_E0)
  loc_10B67BE:       var_E0.Tag = var_E8
  loc_10B67D1:     End If
  loc_10B67D1:   End If
  loc_10B67D1: End If
  loc_10B67D1: Exit Sub
  loc_10B67D2: ' Referenced from: 10B6558
  loc_10B67DA: Set var_88 = Err()
  loc_10B67E0: Call 0.Method_arg_2C (var_E8)
  loc_10B6801: MsgBox(CVar(var_E8), &H40, "Information", var_108, var_128)
  loc_10B6814: Exit Sub
  loc_10B6815: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FF1644
  'Data Table: 485AC0
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim var_8C As Frame
  Dim Txt_KeyDown8FF As Integer
  loc_FF1482: If (CLng(Shift) = &H1B) Then
  loc_FF1485:   Call Proc_187_29_E4E57C()
  loc_FF148A:   Exit Sub
  loc_FF148B: End If
  loc_FF1499: If (KeyCode = CInt(0)) Then
  loc_FF14BE:   Set var_8C = Me.Txt
  loc_FF14C4:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_FF14CC:   var_94 = var_90.Left
  loc_FF14DE:   Set var_98 = Me.Txt
  loc_FF14E4:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_FF14EC:   var_A0 = var_9C.Top
  loc_FF14FE:   Set var_A4 = Me.Txt
  loc_FF1504:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_FF150C:   var_AC = var_A8.Height
  loc_FF151E:   Set var_B0 = Me.Txt
  loc_FF1524:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_FF152C:   var_B8 = var_B4.Width
  loc_FF1574:   Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_FF1598: End If
  loc_FF15B3: If (Me.FrmList.Visible = 0) Then
  loc_FF15DD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(1)) Or (KeyCode = CInt(2)))) Then
  loc_FF15E6:     Call Txt_Validate(KeyCode)
  loc_FF15F1:     If (var_86 = &HFF) Then
  loc_FF15F4:       Exit Sub
  loc_FF15F5:     End If
  loc_FF15FB:     Proc_6_75_E5335C(Shift, arg_14, var_86, CInt(var_94))
  loc_FF1603:   Else
  loc_FF1618:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FF1621:       Proc_6_75_E5335C(Shift, arg_14, CInt((var_A0 + var_AC)))
  loc_FF1629:     Else
  loc_FF1633:       If (CLng(Shift) = &H26) Then
  loc_FF163C:         Proc_6_76_E533C8(Shift, arg_14, CInt(var_B8))
  loc_FF1641:       End If
  loc_FF1641:     End If
  loc_FF1641:   End If
  loc_FF1641: End If
  loc_FF1641: Exit Sub
  loc_FF1642: Txt_KeyDown8FF = 520
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E258EC
  'Data Table: 485AC0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E258CB: Proc_6_58_E06050(arg_10)
  loc_E258D6: Proc_6_133_E7FB08(var_94)
  loc_E258DF: arg_10 = CInt(var_94)
  loc_E258E8: var_96 = KeyAscii
  loc_E258EB: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EA54
  'Data Table: 485AC0
  loc_E4EA32: Set var_88 = Me.Txt
  loc_E4EA38: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EA46: Proc_6_73_E23294(var_8C)
  loc_E4EA52: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FA0228
  'Data Table: 485AC0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_98 As TextBox
  Dim var_9C As String
  Dim var_A0 As TextBox
  loc_FA00C0: On Error Goto loc_FA01E1
  loc_FA00C6: var_86 = Cancel
  loc_FA00D1: If (var_86 = CInt(0)) Then
  loc_FA00E1:   Set var_8C = Me.Txt
  loc_FA00E7:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FA0101:   Set var_94 = Me.Txt
  loc_FA0107:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_FA010F:   var_98.Text = var_90.Text
  loc_FA0125: Else
  loc_FA012D:   If (var_86 = CInt(1)) Then
  loc_FA013A:     Set var_8C = Me.Txt
  loc_FA0140:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FA0160:     Set var_98 = Me.Txt
  loc_FA0166:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_FA016E:     var_A0.Text = Proc_6_33_15125B8(var_90)
  loc_FA0184:   Else
  loc_FA018C:     If (var_86 = CInt(2)) Then
  loc_FA0199:       Set var_8C = Me.Txt
  loc_FA019F:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FA01B2:       var_9C = Proc_6_33_15125B8(var_90)
  loc_FA01BF:       Set var_98 = Me.Txt
  loc_FA01C5:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_FA01CD:       var_A0.Text = var_9C
  loc_FA01E0:     End If
  loc_FA01E0:   End If
  loc_FA01E0: End If
  loc_FA01E0: Exit Sub
  loc_FA01E1: ' Referenced from: FA00C0
  loc_FA01E9: Set var_8C = Err()
  loc_FA01EF: Call 0.Method_arg_2C (var_9C)
  loc_FA0210: MsgBox(CVar(var_9C), &H40, "Information", var_F0, var_110)
  loc_FA0223: Exit Sub
  loc_FA0224: Exit Sub
  loc_FA0225: If var_86 Then Exit Sub
  loc_FA0225: End If
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB2348
  'Data Table: 485AC0
  Dim var_88 As TextBox
  loc_EB22B7: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_EB22BE:   Set var_88 = Me.GridSel
  loc_EB22DB:   Me.TxtSearch.Visible = False
  loc_EB22E3: End If
  loc_EB22ED: If (CLng(KeyCode) = &H2E) Then
  loc_EB22FD:   Me.TxtSearch.Text = vbNullString
  loc_EB2305: End If
  loc_EB231A: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB2321:   Set var_88 = Me.GridSel
  loc_EB233E:   Me.TxtSearch.Visible = False
  loc_EB2346: End If
  loc_EB2346: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EF0210
  'Data Table: 485AC0
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EF01AE: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EF01B6: var_C8 = "15595518"
  loc_EF01BF: var_C4 = "16777152"
  loc_EF01E7: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EF020B: KeyAscii = 0
  loc_EF020E: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E56C44
  'Data Table: 485AC0
  Dim var_88 As TextBox
  loc_E56C11: Me.TxtSearch.Text = vbNullString
  loc_E56C1D: Set var_88 = Me.GridSel
  loc_E56C3A: Me.TxtSearch.Visible = False
  loc_E56C42: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E5641C
  'Data Table: 485AC0
  Dim var_88 As TextBox
  loc_E563E9: Me.TxtSearch.Text = vbNullString
  loc_E563F5: Set var_88 = Me.GridSel
  loc_E56412: Me.TxtSearch.Visible = False
  loc_E5641A: Exit Sub
End Sub

Private Sub Form_Load() '11BB87C
  'Data Table: 485AC0
  Dim var_A8 As Variant
  Dim var_94 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim unk_485AD2 As Connection15
  Dim var_FC As Variant
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_90 As Double
  loc_11BB468: On Error Goto loc_11BB81B
  loc_11BB481: Proc_6_23_DFC5B8(Me, 0)
  loc_11BB490: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11BB4A2: Set var_94 = Me.GridSel
  loc_11BB4A8: var_94.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_11BB4B5: ImpAdStVarCopy
  loc_11BB4C0: var_BC = "Select '',AA.Name As GuestName,AA.Type As GuestType,AA.Add1 As Address1,AA.Add2 As Address2, AA.Bday As BirthDay,AA.Aday as Anniversary," & "AA.MobileNo,AA.PhoneNo,AA.EmailId,AA.FaxNo,AA.CityName As City,AA.StateName As State,AA.CountryName As Nation from (Select Bday= case when dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate)< getdate() then "
  loc_11BB4C7: var_C0 = var_BC & "dateadd(yy,datediff(yy,guestprof.Birthdate,getdate())+1,guestprof.Birthdate) Else "
  loc_11BB4D5: var_C8 = var_C0 & "dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate) end, " & "Aday=case when dateadd(yy,datediff(yy,guestprof.Anniversary,getdate()),guestprof.Anniversary)< getdate() then "
  loc_11BB4DC: var_CC = var_C8 & "dateadd(yy,datediff(yy,guestprof.Anniversary,getdate())+1,guestprof.Anniversary) Else "
  loc_11BB4EA: var_D4 = var_CC & "dateadd(yy,datediff(yy,guestprof.Anniversary,getdate()),guestprof.Anniversary) end, " & "guestprof.* from GuestProf)as AA Where (AA.LOGSITE_CODE='"
  loc_11BB511: var_BC = "2200,800,2200,2200,1200,1200,1000,1000,2000,1000,1000,1000,1000"
  loc_11BB517: Proc_6_126_F1C850(var_BC, vbNullString)
  loc_11BB535: unk_485AD2.Execute var_D4 & MemVar_1F95078 & "' or AA.LOGSITE_CODE='HO')", var_E8, -1
  loc_11BB546: Set global_52 = var_94
  loc_11BB55D: CVarUnk
  loc_11BB562: VerifyVarObj
  loc_11BB568: Set var_94 = Me.GridSel
  loc_11BB56E: LateIdStAd
  loc_11BB57C: var_A8 = 0
  loc_11BB585: var_FC = 0
  loc_11BB592: Set var_94 = Me.GridSel
  loc_11BB598: LateIdCallSt
  loc_11BB5BA: If (Me.RecordCount > 0) Then
  loc_11BB5CA:   If (UBound(MemVar_1F95008, 1) = 0) Then
  loc_11BB5CD:     ' Referenced from: 11BB83D
  loc_11BB5F7:     var_B8 = CVar((Me.Fields.Count - 1)) 'Long
  loc_11BB5FE:     For var_140 = 1 To var_B8: var_120 = var_140 'Variant
  loc_11BB63C:       If (Me.Fields.Item(var_120).ActualSize = 0) Then
  loc_11BB644:         var_A8 = CVar(CLng(var_120)) 'Long
  loc_11BB67A:         var_FC = CVar((Me.Fields.Item(var_120).DefinedSize * &H78)) 'Long
  loc_11BB683:         Set var_144 = Me.GridSel
  loc_11BB689:         LateIdCallSt
  loc_11BB69D:       Else
  loc_11BB6A2:         var_A8 = CVar(CLng(var_120)) 'Long
  loc_11BB6CA:         var_110 = Me.Fields.Item(var_120).ActualSize
  loc_11BB6D8:         var_FC = CVar((var_110 * &H78)) 'Long
  loc_11BB6E1:         Set var_144 = Me.GridSel
  loc_11BB6E7:         LateIdCallSt
  loc_11BB6F8:       End If
  loc_11BB6FD:       var_A8 = CVar(CLng(var_120)) 'Long
  loc_11BB722:       var_90 = (var_90 + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_11BB72E:     Next var_140 'Variant
  loc_11BB737:   Else
  loc_11BB74A:     For var_164 = 1 To CVar(UBound(MemVar_1F95008, 1)):   var_120 = var_164 'Variant
  loc_11BB755:       var_A8 = CVar(CLng(var_120)) 'Long
  loc_11BB76E:       Set var_94 = Me.GridSel
  loc_11BB774:       LateIdCallSt
  loc_11BB790:       var_90 = (var_90 + CDbl(MemVar_1F95008(CLng(var_120))))
  loc_11BB796:     Next var_164 'Variant
  loc_11BB79C:   End If
  loc_11BB79C: End If
  loc_11BB7BB: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_11BB7BE:   var_A8 = vbNullString
  loc_11BB7C8:   Set var_94 = Me.GridSel
  loc_11BB7D9: End If
  loc_11BB7D9: Call GridSel_UnknownEvent_0()
  loc_11BB7DE: var_A8 = 1
  loc_11BB7EB: Set var_94 = Me.GridSel
  loc_11BB7F1: var_94.Col = var_A8
  loc_11BB802: Call 0.Method_arg_160 (var_94, GridSel.DispID_10000)
  loc_11BB80E: Call 0.Method_arg_164 (var_94)
  loc_11BB81A: Exit Sub
  loc_11BB81B: ' Referenced from: 11BB468
  loc_11BB823: Set var_94 = Err()
  loc_11BB829: Call 0.Method_arg_1C (var_110)
  loc_11BB83A: If (var_110 = 9) Then
  loc_11BB83D:   GoTo loc_11BB5CD
  loc_11BB840: End If
  loc_11BB856: Set var_94 = Err()
  loc_11BB85C: Call 0.Method_arg_2C (var_BC, 0, var_178)
  loc_11BB867: MsgBox(CVar(var_BC), var_188, var_198, var_A8, )
  loc_11BB87A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '101B070
  'Data Table: 485AC0
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_101AE61: If ((CLng(KeyCode) = &H53) And (Shift = 2)) Then
  loc_101AE85:   For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_101AEC4:     var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_101AED8:   Next var_A4 'Integer
  loc_101AEE7:   var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_101AF04:   var_88 = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_101AF21:   Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_101AF32:   Me.Sort = var_88
  loc_101AF3B:   Set var_90 = Me.GridSel
  loc_101AF4F: Else
  loc_101AF60:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_101AF84:     For var_E4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF:   var_8A = var_E4 'Integer
  loc_101AFC3:       var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_101AFD7:     Next var_E4 'Integer
  loc_101AFE6:     var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_101B020:     Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_101B031:     Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_101B03A:     Set var_90 = Me.GridSel
  loc_101B04E:   Else
  loc_101B05F:     If ((CLng(KeyCode) = &H52) And (Shift = 2)) Then
  loc_101B067:       Call RR_Click()
  loc_101B06C:     End If
  loc_101B06C:   End If
  loc_101B06C: End If
  loc_101B06C: Exit Sub
  loc_101B06D: DOC
End Sub

Private Sub Command1_UnknownEvent_9 'E63448
  'Data Table: 485AC0
  loc_E63417: If (Me.Picture1.Visible = &HFF) Then
  loc_E63426:   Me.Picture1.Visible = False
  loc_E63431: Else
  loc_E6343D:   Me.Picture1.Visible = True
  loc_E63445: End If
  loc_E63445: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F888EC
  'Data Table: 485AC0
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F887A8: On Error Goto loc_F88886
  loc_F887AF: Set var_A4 = Me.ListView
  loc_F887F9: Set var_BC = Me.Txt
  loc_F887FF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F88807: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F88833: Me.FrmList.Visible = False
  loc_F8884D: var_A0 = CStr(Me.ListView.Tag)
  loc_F88855: var_C8 = Val(var_A0)
  loc_F88863: Set var_9C = Me.Txt
  loc_F88869: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F88871: var_A4.SetFocus
  loc_F88885: Exit Sub
  loc_F88886: ' Referenced from: F887A8
  loc_F8888E: Set var_88 = Err()
  loc_F88894: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F888A5: If (var_CC <> 0) Then
  loc_F888B0:   Set var_88 = Err()
  loc_F888B6:   Call 0.Method_arg_2C (var_A0)
  loc_F888D7:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F888EA: End If
  loc_F888EA: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E1EE10
  'Data Table: 485AC0
  loc_E1EE07: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_E1EE0F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'E0BEF0
  'Data Table: 485AC0
  loc_E0BEE6: If (CLng(KeyCode) = &HD) Then
  loc_E0BEE9:   Call GridSel_UnknownEvent_B()
  loc_E0BEEE: End If
  loc_E0BEEE: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_B 'DFDAA4
  'Data Table: 485AC0
  loc_DFDAA0: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C 'EED018
  'Data Table: 485AC0
  Dim Me As Recordset15
  loc_EECFBA: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EECFC2: var_C8 = "15595518"
  loc_EECFCB: var_C4 = "16777152"
  loc_EECFF3: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, KeyCode)
  loc_EED015: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E2E808
  'Data Table: 485AC0
  loc_E2E7E2: If (KeyCode = 2) Then
  loc_E2E7FD:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E2E805: End If
  loc_E2E805: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E1F400
  'Data Table: 485AC0
  loc_E1F3F7: Me.GridSel.CellBackColor = CVar(CLng("15595518"))
  loc_E1F3FF: Exit Sub
End Sub

Public Sub Proc_187_28_1118F38
  'Data Table: 485AC0
  Dim var_8C As String
  Dim var_90 As String
  Dim var_98 As String
  Dim var_9C As String
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_1A0 As Variant
  Dim unk_485AD2 As Connection15
  Dim var_A4 As MSHFlexGrid
  loc_1118C23: var_8C = "Select '',AA.Name As GuestName,AA.Type As GuestType,AA.Add1 As Address1,AA.Add2 As Address2, AA.Bday As BirthDay,AA.Aday as Anniversary," & "AA.MobileNo,AA.PhoneNo,AA.EmailId,AA.FaxNo,AA.CityName As City,AA.StateName As State,AA.CountryName As Nation from (Select Bday= case when dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate)< getdate() then "
  loc_1118C2A: var_90 = var_8C & "dateadd(yy,datediff(yy,guestprof.Birthdate,getdate())+1,guestprof.Birthdate) Else "
  loc_1118C38: var_98 = var_90 & "dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate) end, " & "Aday=case when dateadd(yy,datediff(yy,guestprof.Anniversary,getdate()),guestprof.Anniversary)< getdate() then "
  loc_1118C3F: var_9C = var_98 & "dateadd(yy,datediff(yy,guestprof.Anniversary,getdate())+1,guestprof.Anniversary) Else "
  loc_1118C4D: var_88 = var_9C & "dateadd(yy,datediff(yy,guestprof.Anniversary,getdate()),guestprof.Anniversary) end, " & "guestprof.* from GuestProf)as AA"
  loc_1118C6A: Set var_A4 = Me.Txt
  loc_1118C70: Call 0.Method_Proc_187_28_1118F380 (CInt(0))
  loc_1118C7F: var_C8 = Trim(CVar(var_A8))
  loc_1118C99: If (var_C8 = "BirthDay") Then
  loc_1118CB7:   Call 0.Method_Proc_187_28_1118F380 (CInt(1), var_A8)
  loc_1118CBF:   var_B8 = CVar(var_A8) 'Address
  loc_1118CC6:   Proc_6_7_F26918(var_C8, var_B8)
  loc_1118CE6:   Set var_10C = Me.Txt
  loc_1118CEC:   Call 0.Method_Proc_187_28_1118F380 (CInt(2), var_110)
  loc_1118CFB:   Proc_6_7_F26918(var_130, CVar(var_110))
  loc_1118D1F:   var_1A0 = CVar(var_88 & " WHERE AA.Bday Between ") & var_C8 & " And " & var_130 & " And (AA.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or AA.LOGSITE_CODE='HO') Order By AA.Bday" 
  loc_1118D24:   var_88 = CStr(var_1A0)
  loc_1118D5D:   unk_485AD2.Execute var_88, var_B8, -1
  loc_1118D6E:   Set global_52 = Me.Txt
  loc_1118D7F: Else
  loc_1118D8A:   Set var_A4 = Me.Txt
  loc_1118D90:   Call 0.Method_Proc_187_28_1118F380 (CInt(0), var_A8)
  loc_1118D9F:   var_C8 = Trim(CVar(var_A8))
  loc_1118DB9:   If (var_C8 = "Anniversary") Then
  loc_1118DD1:     Set var_A4 = Me.Txt
  loc_1118DD7:     Call 0.Method_Proc_187_28_1118F380 (CInt(1), var_A8, CVar(var_88 & " WHERE AA.Aday Between "))
  loc_1118DDF:     var_B8 = CVar(var_A8) 'Address
  loc_1118DE6:     Proc_6_7_F26918(var_C8, var_B8)
  loc_1118E06:     Set var_10C = Me.Txt
  loc_1118E0C:     Call 0.Method_Proc_187_28_1118F380 (CInt(2), var_110)
  loc_1118E1B:     Proc_6_7_F26918(var_130, CVar(var_110))
  loc_1118E3F:     var_1A0 = var_A4 & var_C8 & " And " & var_130 & " And (AA.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or AA.LOGSITE_CODE='HO') Order By AA.Aday" 
  loc_1118E7D:     unk_485AD2.Execute CStr(var_1A0), var_B8, -1
  loc_1118E8E:     Set global_52 = var_A4
  loc_1118E9C:   End If
  loc_1118E9C: End If
  loc_1118EA5: CVarUnk
  loc_1118EAA: VerifyVarObj
  loc_1118EB0: Set var_A4 = Me.GridSel
  loc_1118EB6: LateIdStAd
  loc_1118EC8: Set var_A4 = Me.GridSel
  loc_1118EF8: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_1118EFB:   var_D8 = vbNullString
  loc_1118F05:   Set var_A4 = Me.GridSel
  loc_1118F16: End If
  loc_1118F16: Call GridSel_UnknownEvent_0()
  loc_1118F2E: Me.GridSel.Col = 1
  loc_1118F36: Exit Sub
End Sub

Public Sub Proc_187_29_E4E57C
  'Data Table: 485AC0
  loc_E4E563: If (Me.FrmList.Visible = &HFF) Then
  loc_E4E572:   Me.FrmList.Visible = False
  loc_E4E57A: End If
  loc_E4E57A: Exit Sub
End Sub

Public Sub Proc_187_30_10B7E5C(arg_C) '10B7E5C
  'Data Table: 485AC0
  Dim var_8C As Recordset15
  loc_10B7B75: Set var_8C = arg_C 
  loc_10B7B9D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10B7BC9: var_8C.Fields.Append "GuestName", &HC8, &H32
  loc_10B7BF5: var_8C.Fields.Append "GuestType", &HC8, &HA
  loc_10B7C21: var_8C.Fields.Append "Address1", &HC8, &H32
  loc_10B7C4D: var_8C.Fields.Append "Address2", &HC8, &H32
  loc_10B7C79: var_8C.Fields.Append "BirthDay", &HC8, &HC
  loc_10B7CA5: var_8C.Fields.Append "Anniversary", &HC8, &HC
  loc_10B7CD1: var_8C.Fields.Append "MobileNo", &HC8, &H18
  loc_10B7CFD: var_8C.Fields.Append "PhoneNo", &HC8, &H23
  loc_10B7D29: var_8C.Fields.Append "EmailId", &HC8, &H32
  loc_10B7D55: var_8C.Fields.Append "FaxNo", &HC8, &H18
  loc_10B7D81: var_8C.Fields.Append "City", &HC8, &H23
  loc_10B7DAD: var_8C.Fields.Append "State", &HC8, &H1E
  loc_10B7DD9: var_8C.Fields.Append "Nation", &HC8, &H1E
  loc_10B7E05: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10B7E15: var_8C.CursorType = 3
  loc_10B7E22: var_8C.LockType = 3
  loc_10B7E41: var_8C.Open var_A0, var_B0, -1
  loc_10B7E48: Set var_8C = Nothing 
  loc_10B7E4F: Set var_88 = arg_C 
  loc_10B7E53: Proc_187_30_10B7E5C = -1
End Sub
