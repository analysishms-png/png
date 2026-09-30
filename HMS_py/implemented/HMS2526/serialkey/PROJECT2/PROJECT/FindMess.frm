VERSION 5.00
Begin VB.Form FindMess
  BackColor = &H80C0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 10995
  ClientHeight = 5715
  StartUpPosition = 1 'CenterOwner
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 345
    Top = 675
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 1
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
  Begin MSHFlexGrid GridSel
    Left = 30
    Top = 0
    Width = 10965
    Height = 5685
    TabIndex = 0
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
  End
End

Attribute VB_Name = "FindMess"


Private Sub SA_Click() 'F15F14
  'Data Table: 4257CC
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F15E49: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F15E88:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_F15E9C: Next var_A4 'Integer
  loc_F15EAB: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F15EE5: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F15EF6: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F15EFF: Set var_90 = Me.GridSel
  loc_F15F10: Exit Sub
End Sub

Private Sub FSR_Click() 'FB89D4
  'Data Table: 4257CC
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB8913: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB891C: var_16C = var_14C & " =  '" 
  loc_FB8933: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB897C: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB89C2: Set var_100 = Me.GridSel
  loc_FB89D3: Exit Sub
End Sub

Private Sub FNSR_Click() 'FB7E4C
  'Data Table: 4257CC
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB7D8B: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB7D94: var_16C = var_14C & " <>  '" 
  loc_FB7DAB: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB7DF4: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB7E3A: Set var_100 = Me.GridSel
  loc_FB7E4B: Exit Sub
End Sub

Private Sub RF_Click() 'E3AE68
  'Data Table: 4257CC
  Dim Me As Recordset15
  loc_E3AE4B: Me.Filter = 0
  loc_E3AE54: Set var_98 = Me.GridSel
  loc_E3AE65: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB1718
  'Data Table: 4257CC
  Dim var_88 As TextBox
  loc_EB1687: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_EB168E:   Set var_88 = Me.GridSel
  loc_EB16AB:   Me.TxtSearch.Visible = False
  loc_EB16B3: End If
  loc_EB16BD: If (CLng(KeyCode) = &H2E) Then
  loc_EB16CD:   Me.TxtSearch.Text = vbNullString
  loc_EB16D5: End If
  loc_EB16EA: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB16F1:   Set var_88 = Me.GridSel
  loc_EB170E:   Me.TxtSearch.Visible = False
  loc_EB1716: End If
  loc_EB1716: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EF1A24
  'Data Table: 4257CC
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EF19C2: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EF19CA: var_C8 = "15595518"
  loc_EF19D3: var_C4 = "16777152"
  loc_EF19FB: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EF1A1F: KeyAscii = 0
  loc_EF1A22: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E562C0
  'Data Table: 4257CC
  Dim var_88 As TextBox
  loc_E5628D: Me.TxtSearch.Text = vbNullString
  loc_E56299: Set var_88 = Me.GridSel
  loc_E562B6: Me.TxtSearch.Visible = False
  loc_E562BE: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E560F0
  'Data Table: 4257CC
  Dim var_88 As TextBox
  loc_E560BD: Me.TxtSearch.Text = vbNullString
  loc_E560C9: Set var_88 = Me.GridSel
  loc_E560E6: Me.TxtSearch.Visible = False
  loc_E560EE: Exit Sub
End Sub

Private Sub Form_Load() '11ABED4
  'Data Table: 4257CC
  Dim var_9C As Variant
  Dim unk_4257E1 As Connection15
  Dim unk_4257E4 As Connection15
  Dim MemVar_1F953AC As Integer
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_AC As Variant
  Dim var_8C As Double
  loc_11ABAC0: On Error Goto loc_11ABE74
  loc_11ABAC3: var_9C = vbNullString
  loc_11ABAC8: ImpAdStVarCopy
  loc_11ABAD2: If (MemVar_1F953AC = &HFF) Then
  loc_11ABAEB:   unk_4257E1.Execute MemVar_1F950E4, var_AC, -1
  loc_11ABAFC:   Set global_52 = var_B0
  loc_11ABB0D: Else
  loc_11ABB23:   unk_4257E4.Execute MemVar_1F950E4, var_AC, -1
  loc_11ABB34:   Set global_52 = var_B0
  loc_11ABB42: End If
  loc_11ABB44: MemVar_1F953AC = 0
  loc_11ABB50: CVarUnk
  loc_11ABB55: VerifyVarObj
  loc_11ABB5B: Set var_B0 = Me.GridSel
  loc_11ABB61: LateIdStAd
  loc_11ABB6F: var_9C = 0
  loc_11ABB78: var_D4 = 0
  loc_11ABB85: Set var_B0 = Me.GridSel
  loc_11ABB8B: LateIdCallSt
  loc_11ABBAD: If (Me.RecordCount > 0) Then
  loc_11ABBBD:   If (UBound(MemVar_1F95008, 1) = 0) Then
  loc_11ABBC0:     ' Referenced from: 11ABE96
  loc_11ABBEA:     var_C4 = CVar((Me.Fields.Count - 1)) 'Long
  loc_11ABBF1:     For var_118 = 1 To var_C4: var_F8 = var_118 'Variant
  loc_11ABC2F:       If (Me.Fields.Item(var_F8).ActualSize = 0) Then
  loc_11ABC37:         var_9C = CVar(CLng(var_F8)) 'Long
  loc_11ABC6D:         var_D4 = CVar((Me.Fields.Item(var_F8).DefinedSize * &H78)) 'Long
  loc_11ABC76:         Set var_11C = Me.GridSel
  loc_11ABC7C:         LateIdCallSt
  loc_11ABC90:       Else
  loc_11ABC95:         var_9C = CVar(CLng(var_F8)) 'Long
  loc_11ABCBD:         var_E8 = Me.Fields.Item(var_F8).ActualSize
  loc_11ABCCB:         var_D4 = CVar((var_E8 * &H78)) 'Long
  loc_11ABCD4:         Set var_11C = Me.GridSel
  loc_11ABCDA:         LateIdCallSt
  loc_11ABCEB:       End If
  loc_11ABCF0:       var_9C = CVar(CLng(var_F8)) 'Long
  loc_11ABD15:       var_8C = (var_8C + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_11ABD21:     Next var_118 'Variant
  loc_11ABD2A:   Else
  loc_11ABD3D:     For var_13C = 1 To CVar(UBound(MemVar_1F95008, 1)):   var_F8 = var_13C 'Variant
  loc_11ABD48:       var_9C = CVar(CLng(var_F8)) 'Long
  loc_11ABD61:       Set var_B0 = Me.GridSel
  loc_11ABD67:       LateIdCallSt
  loc_11ABD83:       var_8C = (var_8C + CDbl(MemVar_1F95008(CLng(var_F8))))
  loc_11ABD89:     Next var_13C 'Variant
  loc_11ABD8F:   End If
  loc_11ABD8F: End If
  loc_11ABD97: If (var_8C > CDbl(11085)) Then
  loc_11ABDAD:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11ABDBD:   Call 0.Method_Me4 (CDbl(11085))
  loc_11ABDC5: Else
  loc_11ABDCD:   var_9C = CVar((var_8C + CDbl(350))) 'Single
  loc_11ABDDC:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11ABDF0:   Call 0.Method_Me4 ((var_8C + CDbl(500)))
  loc_11ABDF5: End If
  loc_11ABE14: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_11ABE17:   var_9C = vbNullString
  loc_11ABE21:   Set var_B0 = Me.GridSel
  loc_11ABE32: End If
  loc_11ABE32: Call GridSel_UnknownEvent_0()
  loc_11ABE37: var_9C = 1
  loc_11ABE44: Set var_B0 = Me.GridSel
  loc_11ABE4A: var_B0.Col = var_9C
  loc_11ABE5B: Call 0.Method_arg_160 (var_B0, GridSel.DispID_10000)
  loc_11ABE67: Call 0.Method_arg_164 (var_B0)
  loc_11ABE73: Exit Sub
  loc_11ABE74: ' Referenced from: 11ABAC0
  loc_11ABE7C: Set var_B0 = Err()
  loc_11ABE82: Call 0.Method_arg_1C (var_E8)
  loc_11ABE93: If (var_E8 = 9) Then
  loc_11ABE96:   GoTo loc_11ABBC0
  loc_11ABE99: End If
  loc_11ABEAF: Set var_B0 = Err()
  loc_11ABEB5: Call 0.Method_arg_2C (var_144, 0, var_154)
  loc_11ABEC0: MsgBox(CVar(var_144), var_164, var_174, var_9C, )
  loc_11ABED3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '102F948
  'Data Table: 4257CC
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim Me As Recordset15
  loc_102F732: If ((CLng(KeyCode) = &H1B) And (Me.TxtSearch.Visible = 0)) Then
  loc_102F742:   Me.Global.Unload Me
  loc_102F74A: End If
  loc_102F75B: If ((CLng(KeyCode) = &H53) And (Shift = 2)) Then
  loc_102F77F:   For var_A8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A8 'Integer
  loc_102F7BE:     var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_102F7D2:   Next var_A8 'Integer
  loc_102F7E1:   var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_102F7FE:   var_88 = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_102F81B:   Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_102F82C:   Me.Sort = var_88
  loc_102F835:   Set var_90 = Me.GridSel
  loc_102F849: Else
  loc_102F85A:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_102F87E:     For var_E8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF:   var_8A = var_E8 'Integer
  loc_102F8BD:       var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_102F8D1:     Next var_E8 'Integer
  loc_102F8E0:     var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_102F91A:     Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_102F92B:     Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_102F934:     Set var_90 = Me.GridSel
  loc_102F945:   End If
  loc_102F945: End If
  loc_102F945: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E1DE70
  'Data Table: 4257CC
  loc_E1DE67: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_E1DE6F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_9 '10CE8F8
  'Data Table: 4257CC
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_114 As Variant
  Dim unk_4257E1 As Connection15
  loc_10CE63F: If (CLng(Me.GridSel.Col) = (CLng(Me.GridSel.Cols) - 1)) Then
  loc_10CE655:   var_BC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10CE664:   var_AC = Me.GridSel.Col
  loc_10CE66D:   var_DC = CVar(CLng(var_AC)) 'Long
  loc_10CE67C:   var_100 = Me.GridSel.TextMatrix)
  loc_10CE6A4:   If (CStr(var_100) = vbNullString) Then
  loc_10CE6D6:     If (MsgBox("Are you sure to mark this as Delivered...", &H24, var_AC, var_100, var_114) = 6) Then
  loc_10CE6FB:       Me.GridSel.Col = CVar(CLng(Me.GridSel.Col))
  loc_10CE71A:       Me.GridSel.CellFontName = "wingdings"
  loc_10CE734:       Me.GridSel.CellFontSize = CVar(CDbl(&H12))
  loc_10CE74F:       Me.GridSel.CellForeColor = &HFF
  loc_10CE76A:       var_BC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10CE779:       var_AC = Me.GridSel.Col
  loc_10CE782:       var_DC = CVar(CLng(var_AC)) 'Long
  loc_10CE791:       Set var_F0 = Me.GridSel
  loc_10CE797:       LateIdCallSt
  loc_10CE7EA:       Proc_6_17_EAAE40(var_AC, CVar(Me.Fields.Item("SearchCode")), "Update GuestMessage set Solved='Y' where Docid=", var_144, -1, var_F0)
  loc_10CE7F6:       var_DC = vbNullString
  loc_10CE809:       unk_4257E1.Execute CStr(var_F0 & var_AC & var_DC), "ü", var_DC
  loc_10CE825:     End If
  loc_10CE828:   Else
  loc_10CE83B:     var_BC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10CE84A:     var_AC = Me.GridSel.Col
  loc_10CE853:     var_DC = CVar(CLng(var_AC)) 'Long
  loc_10CE868:     LateIdCallSt
  loc_10CE895:     var_BC = "SearchCode"
  loc_10CE8BB:     Proc_6_17_EAAE40(var_AC, CVar(Me.Fields.Item(var_BC)), "Update GuestMessage set Solved='N' where Docid=", var_144, -1, Me.GridSel, Me.GridSel)
  loc_10CE8C7:     var_DC = vbNullString
  loc_10CE8DA:     unk_4257E1.Execute CStr(vbNullString & var_AC & var_DC), var_DC, var_BC
  loc_10CE8F6:   End If
  loc_10CE8F6: End If
  loc_10CE8F6: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C 'EECBF8
  'Data Table: 4257CC
  Dim Me As Recordset15
  loc_EECB9A: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EECBA2: var_C8 = "15595518"
  loc_EECBAB: var_C4 = "16777152"
  loc_EECBD3: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, KeyCode)
  loc_EECBF5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E3B348
  'Data Table: 4257CC
  loc_E3B322: If (KeyCode = 2) Then
  loc_E3B33D:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3B345: End If
  loc_E3B345: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E1DEC0
  'Data Table: 4257CC
  loc_E1DEB7: Me.GridSel.CellBackColor = CVar(CLng("15595518"))
  loc_E1DEBF: Exit Sub
End Sub

Private Sub SD_Click() 'F17FFC
  'Data Table: 4257CC
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F17F31: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F17F70:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_F17F84: Next var_A4 'Integer
  loc_F17F93: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F17FCD: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F17FDE: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F17FE7: Set var_90 = Me.GridSel
  loc_F17FF8: Exit Sub
End Sub

Public Sub Proc_134_16_E52E44
  'Data Table: 4257CC
  loc_E52E26: If (var_94.Visible = True) Then
  loc_E52E31:   var_94.Visible = False
  loc_E52E38: Else
  loc_E52E3F:   var_94.Visible = True
  loc_E52E43: End If
  loc_E52E43: Exit Sub
End Sub
