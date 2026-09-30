VERSION 5.00
Begin VB.Form FAFind
  BackColor = &HFFFFFF&
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
  ClientWidth = 11640
  ClientHeight = 5925
  LockControls = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 1 'CenterOwner
  Begin PictureBox Picture1
    BackColor = &HE0E0E0&
    Picture = "FAFind.frx":0
    Left = 0
    Top = 2520
    Width = 3690
    Height = 3075
    Visible = 0   'False
    TabIndex = 3
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
  Begin CommandButton Command1
    Caption = "Help.?"
    Left = 15
    Top = 5610
    Width = 885
    Height = 300
    TabIndex = 2
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
  Begin TextBox TxtSearch
    BackColor = &HFFC0C0&
    Left = 345
    Top = 675
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid GridSel
    Left = 0
    Top = 0
    Width = 11625
    Height = 5575
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

Attribute VB_Name = "FAFind"


Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB0AE8
  'Data Table: 42B138
  Dim var_88 As TextBox
  loc_EB0A57: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_EB0A5E:   Set var_88 = Me.GridSel
  loc_EB0A7B:   Me.TxtSearch.Visible = False
  loc_EB0A83: End If
  loc_EB0A8D: If (CLng(KeyCode) = &H2E) Then
  loc_EB0A9D:   Me.TxtSearch.Text = vbNullString
  loc_EB0AA5: End If
  loc_EB0ABA: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB0AC1:   Set var_88 = Me.GridSel
  loc_EB0ADE:   Me.TxtSearch.Visible = False
  loc_EB0AE6: End If
  loc_EB0AE6: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EF0D94
  'Data Table: 42B138
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EF0D32: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EF0D3A: var_C8 = "16777215"
  loc_EF0D43: var_C4 = "16761024"
  loc_EF0D6B: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EF0D8F: KeyAscii = 0
  loc_EF0D92: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E573F8
  'Data Table: 42B138
  Dim var_88 As TextBox
  loc_E573C5: Me.TxtSearch.Text = vbNullString
  loc_E573D1: Set var_88 = Me.GridSel
  loc_E573EE: Me.TxtSearch.Visible = False
  loc_E573F6: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E56FE4
  'Data Table: 42B138
  Dim var_88 As TextBox
  loc_E56FB1: Me.TxtSearch.Text = vbNullString
  loc_E56FBD: Set var_88 = Me.GridSel
  loc_E56FDA: Me.TxtSearch.Visible = False
  loc_E56FE2: Exit Sub
End Sub

Private Sub SD_Click() 'F1FB9C
  'Data Table: 42B138
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F1FAC9: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F1FB0F:   var_88 = var_88 & "[" & Me.Fields.Item(CVar(var_8A)).Name & "] Desc ,"
  loc_F1FB25: Next var_A4 'Integer
  loc_F1FB34: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F1FB6E: Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_F1FB7F: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F1FB88: Set var_90 = Me.GridSel
  loc_F1FB99: Exit Sub
  loc_F1FB9A: CExtInstUnk
End Sub

Private Sub Command1_Click() 'E631C8
  'Data Table: 42B138
  Dim var_3F01 As Double
  loc_E63197: If (Me.Picture1.Visible = &HFF) Then
  loc_E631A6:   Me.Picture1.Visible = False
  loc_E631B1: Else
  loc_E631BD:   Me.Picture1.Visible = True
  loc_E631C5: End If
  loc_E631C5: Exit Sub
  loc_E631C6: var_3F01 = 
End Sub

Private Sub FNSR_Click() 'FCA958
  'Data Table: 42B138
  Dim Me As Recordset15
  Dim var_120 As MSHFlexGrid
  Dim var_11C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1C4 As Variant
  loc_FCA85C: var_11C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + "[")
  loc_FCA894: var_16C = (var_11C + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FCA89D: var_18C = var_16C & "] <>  '" 
  loc_FCA8B4: var_1C4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FCA8FD: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FCA945: Set var_120 = Me.GridSel
  loc_FCA956: Exit Sub
End Sub

Private Sub SA_Click() 'F1F548
  'Data Table: 42B138
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F1F475: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F1F4BB:   var_88 = var_88 & "[" & Me.Fields.Item(CVar(var_8A)).Name & "],"
  loc_F1F4D1: Next var_A4 'Integer
  loc_F1F4E0: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F1F51A: Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_F1F52B: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F1F534: Set var_90 = Me.GridSel
  loc_F1F545: Exit Sub
End Sub

Private Sub FSR_Click() 'FC9F6C
  'Data Table: 42B138
  Dim Me As Recordset15
  Dim var_120 As MSHFlexGrid
  Dim var_11C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1C4 As Variant
  loc_FC9E70: var_11C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + "[")
  loc_FC9EA8: var_16C = (var_11C + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FC9EB1: var_18C = var_16C & "] =  '" 
  loc_FC9EC8: var_1C4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FC9F11: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FC9F59: Set var_120 = Me.GridSel
  loc_FC9F6A: Exit Sub
End Sub

Private Sub RF_Click() 'E3BE88
  'Data Table: 42B138
  Dim Me As Recordset15
  loc_E3BE6B: Me.Filter = 0
  loc_E3BE74: Set var_98 = Me.GridSel
  loc_E3BE85: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E1F2C0
  'Data Table: 42B138
  loc_E1F2B7: Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_E1F2BF: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) 'E0B230
  'Data Table: 42B138
  loc_E0B226: If (CLng(Index) = &HD) Then
  loc_E0B229:   Call GridSel_UnknownEvent_B()
  loc_E0B22E: End If
  loc_E0B22E: Exit Sub
  loc_E0B22F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_B 'F7684C
  'Data Table: 42B138
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim MemVar_1F95110 As Variant
  loc_F76710: var_94 = 1
  loc_F76719: var_B4 = 0
  loc_F76737: var_DC = CStr(Me.GridSel.TextMatrix))
  loc_F76748: If (var_DC <> vbNullString) Then
  loc_F7675E:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_F7678B:   Call unk_42B14D.SEARCHBACK
  loc_F767A5:   Set var_C8 = 0(CVar(CStr(Me.GridSel.TextMatrix))))
  loc_F767B4:   var_94 = CVar(CLng(unk_42B14D.GridSel.Row)) 'Long
  loc_F767B9:   var_B4 = 0
  loc_F767CC:   var_F0 = Me.GridSel.TextMatrix)
  loc_F767D7:   var_100 = CVar(CStr(var_F0)) 'String
  loc_F767DA:   MemVar_1F95110 = var_100
  loc_F767EF: Else
  loc_F767EF:   var_94 = vbNullString
  loc_F767F4:   ImpAdStVarCopy
  loc_F767F8: End If
  loc_F76805: Me.Global.Unload Me
  loc_F7680D: Exit Sub
  loc_F76816: Set var_C8 = Err()
  loc_F7681C: Call 0.Method_arg_2C (var_DC, var_94, MemVar_1F95110, var_B4)
  loc_F76835: MsgBox(CVar(var_DC), &H40, var_F0, var_100, var_120)
  loc_F76848: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_C(Index As Integer) 'EED960
  'Data Table: 42B138
  Dim Me As Recordset15
  loc_EED902: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EED90A: var_C8 = "16777215"
  loc_EED913: var_C4 = "16761024"
  loc_EED93B: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, Index)
  loc_EED95D: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E3BD68
  'Data Table: 42B138
  loc_E3BD42: If (Index = 2) Then
  loc_E3BD5D:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3BD65: End If
  loc_E3BD65: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E1D830
  'Data Table: 42B138
  loc_E1D827: Me.GridSel.CellBackColor = CVar(CLng("16777215"))
  loc_E1D82F: Exit Sub
End Sub

Private Sub Form_Load() '1227504
  'Data Table: 42B138
  Dim var_9C As Variant
  Dim var_A4 As String
  Dim var_C8 As Variant
  Dim unk_42B155 As Connection15
  Dim MemVar_1F953AC As Integer
  Dim var_F0 As Variant
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_D0 As Field20
  Dim var_8C As Double
  loc_1227024: On Error Goto loc_12274A3
  loc_1227027: var_9C = vbNullString
  loc_122702C: ImpAdStVarCopy
  loc_122703C: var_A0 = Form.Caption
  loc_1227045: var_A4 = "Find :- {" & var_A0
  loc_1227052: Call 0.Method_arg_54 (var_A4 & "}")
  loc_122706A: If (global_52 Is Nothing) Then
  loc_1227073:   If (MemVar_1F953AC = &HFF) Then
  loc_1227080:     var_C8 = var_B8.Execute
  loc_1227092:     Set global_52 = var_C8
  loc_122709F:   Else
  loc_12270B5:     unk_42B155.Execute MemVar_1F950E4, var_C8, -1
  loc_12270C6:     Set global_52 = var_CC
  loc_12270D4:   End If
  loc_12270D6:   MemVar_1F953AC = 0
  loc_12270E2:   var_C8 = CVar(global_52) 'Address
  loc_12270E7:   VerifyVarObj
  loc_12270ED:   Set var_CC = Me.GridSel
  loc_12270F3:   LateIdStAd
  loc_1227104: Else
  loc_1227107:   var_CC = FindRecSet
  loc_1227112:   CVarUnk
  loc_1227117:   VerifyVarObj
  loc_122711D:   Set var_D0 = Me.GridSel
  loc_1227123:   LateIdStAd
  loc_1227135: End If
  loc_1227135: var_9C = 0
  loc_122713E: var_F0 = &H1C2
  loc_122714B: Set var_CC = Me.GridSel
  loc_1227151: LateIdCallSt
  loc_122715C: var_9C = 0
  loc_1227165: var_F0 = 0
  loc_1227172: Set var_CC = Me.GridSel
  loc_1227178: LateIdCallSt
  loc_122719A: If (Me.RecordCount > 0) Then
  loc_12271AA:   If (UBound(MemVar_1F95008, 1) = 0) Then
  loc_12271AD:     ' Referenced from: 12274C5
  loc_12271D7:     var_E0 = CVar((Me.Fields.Count - 1)) 'Long
  loc_12271DE:     For var_134 = 1 To var_E0: var_114 = var_134 'Variant
  loc_122721C:       If (Me.Fields.Item(var_114).ActualSize = 0) Then
  loc_1227224:         var_9C = CVar(CLng(var_114)) 'Long
  loc_122725A:         var_F0 = CVar((Me.Fields.Item(var_114).DefinedSize * &H78)) 'Long
  loc_1227263:         Set var_138 = Me.GridSel
  loc_1227269:         LateIdCallSt
  loc_122727D:       Else
  loc_1227282:         var_9C = CVar(CLng(var_114)) 'Long
  loc_12272AA:         var_104 = Me.Fields.Item(var_114).ActualSize
  loc_12272B8:         var_F0 = CVar((var_104 * &H78)) 'Long
  loc_12272C1:         Set var_138 = Me.GridSel
  loc_12272C7:         LateIdCallSt
  loc_12272D8:       End If
  loc_12272DD:       var_9C = CVar(CLng(var_114)) 'Long
  loc_122730E:       If (CDbl((var_8C + CDbl(CLng(Me.GridSel.ColWidth))))) <= CDbl(11085)) Then
  loc_1227316:         var_9C = CVar(CLng(var_114)) 'Long
  loc_122733B:         var_8C = (var_8C + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_1227344:       End If
  loc_1227347:     Next var_134 'Variant
  loc_1227350:   Else
  loc_1227363:     For var_158 = 1 To CVar(UBound(MemVar_1F95008, 1)):   var_114 = var_158 'Variant
  loc_122736E:       var_9C = CVar(CLng(var_114)) 'Long
  loc_1227387:       Set var_CC = Me.GridSel
  loc_122738D:       LateIdCallSt
  loc_12273AF:       If (CDbl((var_8C + CDbl(MemVar_1F95008(CLng(var_114))))) <= CDbl(11085)) Then
  loc_12273C0:         var_8C = (var_8C + CDbl(MemVar_1F95008(CLng(var_114))))
  loc_12273C3:       End If
  loc_12273C6:     Next var_158 'Variant
  loc_12273CC:   End If
  loc_12273CC: End If
  loc_12273D4: var_9C = CVar((var_8C + CDbl(270))) 'Single
  loc_12273E3: Me.GridSel.Width = var_9C
  loc_12273F7: Call 0.Method_Me4 ((var_8C + CDbl(360)))
  loc_122740F: Me.GridSel.Height = CVar(CDbl(5575))
  loc_122741F: Call 0.Method_MeC (CDbl(6300))
  loc_1227443: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_1227446:   var_9C = vbNullString
  loc_1227450:   Set var_CC = Me.GridSel
  loc_1227461: End If
  loc_1227461: Call GridSel_UnknownEvent_0()
  loc_1227466: var_9C = 1
  loc_1227473: Set var_CC = Me.GridSel
  loc_1227479: var_CC.Col = var_9C
  loc_122748A: Call 0.Method_arg_160 (var_CC, GridSel.DispID_10000)
  loc_1227496: Call 0.Method_arg_164 (var_CC)
  loc_12274A2: Exit Sub
  loc_12274A3: ' Referenced from: 1227024
  loc_12274AB: Set var_CC = Err()
  loc_12274B1: Call 0.Method_arg_1C (var_104)
  loc_12274C2: If (var_104 = 9) Then
  loc_12274C5:   GoTo loc_12271AD
  loc_12274C8: End If
  loc_12274DE: Set var_CC = Err()
  loc_12274E4: Call 0.Method_arg_2C (var_A0, 0, var_16C)
  loc_12274EF: MsgBox(CVar(var_A0), var_17C, var_18C, var_9C, )
  loc_1227502: Exit Sub
  loc_1227503: Result  End Sub 'Long
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E106D4
  'Data Table: 42B138
  loc_E106CB: Set global_52 = Nothing
  loc_E106D2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '103BBF4
  'Data Table: 42B138
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim Me As Recordset15
  loc_103B9CE: If ((CLng(KeyCode) = &H1B) And (Me.TxtSearch.Visible = 0)) Then
  loc_103B9DE:   Me.Global.Unload Me
  loc_103B9E6: End If
  loc_103B9F7: If ((CLng(KeyCode) = &H53) And (Shift = 2)) Then
  loc_103BA1B:   For var_A8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A8 'Integer
  loc_103BA61:     var_88 = var_88 & "[" & Me.Fields.Item(CVar(var_8A)).Name & "],"
  loc_103BA77:   Next var_A8 'Integer
  loc_103BA86:   var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_103BAA3:   var_88 = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_103BAC0:   Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_103BAD1:   Me.Sort = var_88
  loc_103BADA:   Set var_90 = Me.GridSel
  loc_103BAEE: Else
  loc_103BAFF:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_103BB23:     For var_EC = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF:   var_8A = var_EC 'Integer
  loc_103BB69:       var_88 = var_88 & "[" & Me.Fields.Item(CVar(var_8A)).Name & "] Desc ,"
  loc_103BB7F:     Next var_EC 'Integer
  loc_103BB8E:     var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_103BBC8:     Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_103BBD9:     Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_103BBE2:     Set var_90 = Me.GridSel
  loc_103BBF3:   End If
  loc_103BBF3: End If
  loc_103BBF3: Exit Sub
End Sub

Public Property Let FindRecSet(mFindRst) 'E10914
  'Data Table: 42B138
  loc_E1090D: Set global_52 = mFindRst
  loc_E10911: Exit Sub
End Sub

Public Property Get FindRecSet() 'E108CC
  'Data Table: 42B138
  loc_E108C0: Set var_88 = global_52 
  loc_E108C4: FindRecSet = 
End Sub
