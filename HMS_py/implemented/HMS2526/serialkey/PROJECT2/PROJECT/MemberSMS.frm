VERSION 5.00
Begin VB.Form MemberSMS
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
  ClientWidth = 11640
  ClientHeight = 6015
  StartUpPosition = 1 'CenterOwner
  Begin CommandButton Command2
    Caption = "Generate SMS.csv"
    Left = 885
    Top = 5715
    Width = 2145
    Height = 300
    TabIndex = 4
  End
  Begin PictureBox Picture1
    BackColor = &HE0E0E0&
    Picture = "MemberSMS.frx":0
    Left = 0
    Top = 2610
    Width = 3690
    Height = 3075
    Visible = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin CommandButton Command1
    Caption = "Help.?"
    Left = 0
    Top = 5715
    Width = 885
    Height = 300
    TabIndex = 2
  End
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
    Left = 15
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

Attribute VB_Name = "MemberSMS"


Private Sub Form_Load() '11A802C
  'Data Table: 42D3A4
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim unk_42D3D0 As Connection15
  Dim MemVar_1F953AC As Integer
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_8C As Double
  loc_11A7C24: On Error Goto loc_11A7FC9
  loc_11A7C27: var_9C = vbNullString
  loc_11A7C2C: ImpAdStVarCopy
  loc_11A7C36: If (MemVar_1F953AC = &HFF) Then
  loc_11A7C43:   var_BC = var_AC.Execute
  loc_11A7C55:   Set global_52 = var_BC
  loc_11A7C62: Else
  loc_11A7C78:   unk_42D3D0.Execute MemVar_1F950E4, var_BC, -1
  loc_11A7C89:   Set global_52 = var_C0
  loc_11A7C97: End If
  loc_11A7C99: MemVar_1F953AC = 0
  loc_11A7CA5: CVarUnk
  loc_11A7CAA: VerifyVarObj
  loc_11A7CB0: Set var_C0 = Me.GridSel
  loc_11A7CB6: LateIdStAd
  loc_11A7CC4: var_9C = 0
  loc_11A7CCD: var_E4 = 0
  loc_11A7CDA: Set var_C0 = Me.GridSel
  loc_11A7CE0: LateIdCallSt
  loc_11A7D02: If (Me.RecordCount > 0) Then
  loc_11A7D12:   If (UBound(MemVar_1F95008, 1) = 0) Then
  loc_11A7D15:     ' Referenced from: 11A7FEB
  loc_11A7D3F:     var_D4 = CVar((Me.Fields.Count - 1)) 'Long
  loc_11A7D46:     For var_128 = 1 To var_D4: var_108 = var_128 'Variant
  loc_11A7D84:       If (Me.Fields.Item(var_108).ActualSize = 0) Then
  loc_11A7D8C:         var_9C = CVar(CLng(var_108)) 'Long
  loc_11A7DC2:         var_E4 = CVar((Me.Fields.Item(var_108).DefinedSize * &H78)) 'Long
  loc_11A7DCB:         Set var_12C = Me.GridSel
  loc_11A7DD1:         LateIdCallSt
  loc_11A7DE5:       Else
  loc_11A7DEA:         var_9C = CVar(CLng(var_108)) 'Long
  loc_11A7E12:         var_F8 = Me.Fields.Item(var_108).ActualSize
  loc_11A7E20:         var_E4 = CVar((var_F8 * &H78)) 'Long
  loc_11A7E29:         Set var_12C = Me.GridSel
  loc_11A7E2F:         LateIdCallSt
  loc_11A7E40:       End If
  loc_11A7E45:       var_9C = CVar(CLng(var_108)) 'Long
  loc_11A7E6A:       var_8C = (var_8C + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_11A7E76:     Next var_128 'Variant
  loc_11A7E7F:   Else
  loc_11A7E92:     For var_14C = 1 To CVar(UBound(MemVar_1F95008, 1)):   var_108 = var_14C 'Variant
  loc_11A7E9D:       var_9C = CVar(CLng(var_108)) 'Long
  loc_11A7EB6:       Set var_C0 = Me.GridSel
  loc_11A7EBC:       LateIdCallSt
  loc_11A7ED8:       var_8C = (var_8C + CDbl(MemVar_1F95008(CLng(var_108))))
  loc_11A7EDE:     Next var_14C 'Variant
  loc_11A7EE4:   End If
  loc_11A7EE4: End If
  loc_11A7EEC: If (var_8C > CDbl(11085)) Then
  loc_11A7F02:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11A7F12:   Call 0.Method_Me4 (CDbl(11085))
  loc_11A7F1A: Else
  loc_11A7F22:   var_9C = CVar((var_8C + CDbl(350))) 'Single
  loc_11A7F31:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11A7F45:   Call 0.Method_Me4 ((var_8C + CDbl(500)))
  loc_11A7F4A: End If
  loc_11A7F69: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_11A7F6C:   var_9C = vbNullString
  loc_11A7F76:   Set var_C0 = Me.GridSel
  loc_11A7F87: End If
  loc_11A7F87: Call GridSel_UnknownEvent_0()
  loc_11A7F8C: var_9C = 1
  loc_11A7F99: Set var_C0 = Me.GridSel
  loc_11A7F9F: var_C0.Col = var_9C
  loc_11A7FB0: Call 0.Method_arg_160 (var_C0, GridSel.DispID_10000)
  loc_11A7FBC: Call 0.Method_arg_164 (var_C0)
  loc_11A7FC8: Exit Sub
  loc_11A7FC9: ' Referenced from: 11A7C24
  loc_11A7FD1: Set var_C0 = Err()
  loc_11A7FD7: Call 0.Method_arg_1C (var_F8)
  loc_11A7FE8: If (var_F8 = 9) Then
  loc_11A7FEB:   GoTo loc_11A7D15
  loc_11A7FEE: End If
  loc_11A8004: Set var_C0 = Err()
  loc_11A800A: Call 0.Method_arg_2C (var_154, 0, var_164)
  loc_11A8015: MsgBox(CVar(var_154), var_174, var_184, var_9C, )
  loc_11A8028: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '1031298
  'Data Table: 42D3A4
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim Me As Recordset15
  loc_1031082: If ((CLng(KeyCode) = &H1B) And (Me.TxtSearch.Visible = 0)) Then
  loc_1031092:   Me.Global.Unload Me
  loc_103109A: End If
  loc_10310AB: If ((CLng(KeyCode) = &H53) And (Shift = 2)) Then
  loc_10310CF:   For var_A8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A8 'Integer
  loc_103110E:     var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_1031122:   Next var_A8 'Integer
  loc_1031131:   var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_103114E:   var_88 = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_103116B:   Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_103117C:   Me.Sort = var_88
  loc_1031185:   Set var_90 = Me.GridSel
  loc_1031199: Else
  loc_10311AA:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_10311CE:     For var_E8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF:   var_8A = var_E8 'Integer
  loc_103120D:       var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_1031221:     Next var_E8 'Integer
  loc_1031230:     var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_103126A:     Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_103127B:     Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_1031284:     Set var_90 = Me.GridSel
  loc_1031295:   End If
  loc_1031295: End If
  loc_1031295: Exit Sub
End Sub

Private Sub SD_Click() 'F18C2C
  'Data Table: 42D3A4
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F18B61: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F18BA0:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_F18BB4: Next var_A4 'Integer
  loc_F18BC3: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F18BFD: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F18C0E: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F18C17: Set var_90 = Me.GridSel
  loc_F18C28: Exit Sub
End Sub

Private Sub SA_Click() 'F18134
  'Data Table: 42D3A4
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F18069: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F180A8:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_F180BC: Next var_A4 'Integer
  loc_F180CB: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F18105: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F18116: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F1811F: Set var_90 = Me.GridSel
  loc_F18130: Exit Sub
  loc_F18131: StAryRecMove
End Sub

Private Sub FSR_Click() 'FB6EEC
  'Data Table: 42D3A4
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB6E2B: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB6E34: var_16C = var_14C & " =  '" 
  loc_FB6E4B: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB6E94: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB6EDA: Set var_100 = Me.GridSel
  loc_FB6EEB: Exit Sub
End Sub

Private Sub FNSR_Click() 'FB6928
  'Data Table: 42D3A4
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB6867: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB6870: var_16C = var_14C & " <>  '" 
  loc_FB6887: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB68D0: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB6916: Set var_100 = Me.GridSel
  loc_FB6927: Exit Sub
End Sub

Private Sub RF_Click() 'E3E468
  'Data Table: 42D3A4
  Dim Me As Recordset15
  loc_E3E44B: Me.Filter = 0
  loc_E3E454: Set var_98 = Me.GridSel
  loc_E3E465: Exit Sub
End Sub

Private Sub Command1_Click() 'E5F1C8
  'Data Table: 42D3A4
  loc_E5F197: If (Me.Picture1.Visible = &HFF) Then
  loc_E5F1A6:   Me.Picture1.Visible = False
  loc_E5F1B1: Else
  loc_E5F1BD:   Me.Picture1.Visible = True
  loc_E5F1C5: End If
  loc_E5F1C5: Exit Sub
End Sub

Private Sub Command2_Click() '10E946C
  'Data Table: 42D3A4
  Dim var_9C As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim var_98 As Recordset15
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As String
  Dim var_180 As String
  loc_10E91A4: var_9C = Me.Global.App
  loc_10E91B8: var_90 = App.Path & "\SMS.CSV"
  loc_10E91C5: Set var_88 = New 
  loc_10E91D5: Call 0.Method_arg_78 (var_90, &HFF)
  loc_10E91E0: Set var_8C = var_9C
  loc_10E91EB: Set var_8C = Nothing
  loc_10E9203: Call 0.Method_arg_7C (var_90, 8, 0, 0)
  loc_10E920E: Set var_8C = var_9C
  loc_10E9238: Me.Connection15.Execute "Select * from Enviro where Logsite_code='" & MemVar_1F95078 & "'", var_C4, -1
  loc_10E9243: Set var_98 = var_9C
  loc_10E9278: For var_C8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_92 = var_C8 'Integer
  loc_10E9294:   Set var_9C = Me.GridSel
  loc_10E92C7:   If CBool(Trim(CVar(CStr(var_9C.TextMatrix)))) <> vbNullString) Then
  loc_10E92E9:     var_108 = CVar(var_98.Fields.Item("SMSMessage")) 'Address
  loc_10E9311:     var_118 = Me.GridSel.TextMatrix)
  loc_10E931C:     var_138 = CVar(CStr(var_118)) 'String
  loc_10E9341:     var_9C = var_98.Fields
  loc_10E9384:     var_14C = Replace(Proc_6_38_E69628(var_108, 0, CVar(CLng(var_92)), 1), ",", " ", 1, -1, 0)
  loc_10E93B2:     var_180 = Replace(Proc_6_38_E69628(Trim(var_138), 0, CVar(CLng(var_92)), var_9C), ",", vbNullString, 1, -1, 0)
  loc_10E93BC:     Call 0.Method_arg_3C (Proc_6_38_E69628(CVar(var_9C.Item("MobileNo")), var_9C) & ", " & var_14C & ", " & var_180, 0)
  loc_10E93F0:   End If
  loc_10E93F3: Next var_C8 'Integer
  loc_10E93FB: Call 0.Method_Command2_ClickC ()
  loc_10E942B: var_9C = Me.Global.App
  loc_10E943F: MsgBox(CVar("Process Completed! " & vbCrLf & "SMS.csv is located on " & App.Path), 0, var_108, var_118, var_138)
  loc_10E9460: Set var_8C = Nothing
  loc_10E9468: Set var_88 = Nothing
  loc_10E946B: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB0BB8
  'Data Table: 42D3A4
  Dim var_88 As TextBox
  loc_EB0B27: If (Proc_183_12_E7AF74(KeyCode) = &HFF) Then
  loc_EB0B2E:   Set var_88 = Me.GridSel
  loc_EB0B4B:   Me.TxtSearch.Visible = False
  loc_EB0B53: End If
  loc_EB0B5D: If (CLng(KeyCode) = &H2E) Then
  loc_EB0B6D:   Me.TxtSearch.Text = vbNullString
  loc_EB0B75: End If
  loc_EB0B8A: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB0B91:   Set var_88 = Me.GridSel
  loc_EB0BAE:   Me.TxtSearch.Visible = False
  loc_EB0BB6: End If
  loc_EB0BB6: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EF206C
  'Data Table: 42D3A4
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EF200A: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EF2012: var_C8 = "15595518"
  loc_EF201B: var_C4 = "16777152"
  loc_EF2043: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EF2067: KeyAscii = 0
  loc_EF206A: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E56660
  'Data Table: 42D3A4
  Dim var_88 As TextBox
  loc_E5662D: Me.TxtSearch.Text = vbNullString
  loc_E56639: Set var_88 = Me.GridSel
  loc_E56656: Me.TxtSearch.Visible = False
  loc_E5665E: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E58448
  'Data Table: 42D3A4
  Dim var_88 As TextBox
  loc_E58415: Me.TxtSearch.Text = vbNullString
  loc_E58421: Set var_88 = Me.GridSel
  loc_E5843E: Me.TxtSearch.Visible = False
  loc_E58446: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E1E730
  'Data Table: 42D3A4
  loc_E1E727: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_E1E72F: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) 'E0B2FC
  'Data Table: 42D3A4
  loc_E0B2F2: If (CLng(Index) = &HD) Then
  loc_E0B2F5:   Call GridSel_UnknownEvent_B()
  loc_E0B2FA: End If
  loc_E0B2FA: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_B 'F76CE4
  'Data Table: 42D3A4
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim MemVar_1F95110 As Variant
  loc_F76BA8: var_94 = 1
  loc_F76BB1: var_B4 = 0
  loc_F76BCF: var_DC = CStr(Me.GridSel.TextMatrix))
  loc_F76BE0: If (var_DC <> vbNullString) Then
  loc_F76BF6:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_F76C23:   Call unk_42D3DC.SEARCHBACK
  loc_F76C3D:   Set var_C8 = 0(CVar(CStr(Me.GridSel.TextMatrix))))
  loc_F76C4C:   var_94 = CVar(CLng(unk_42D3DC.GridSel.Row)) 'Long
  loc_F76C51:   var_B4 = 0
  loc_F76C64:   var_F0 = Me.GridSel.TextMatrix)
  loc_F76C6F:   var_100 = CVar(CStr(var_F0)) 'String
  loc_F76C72:   MemVar_1F95110 = var_100
  loc_F76C87: Else
  loc_F76C87:   var_94 = vbNullString
  loc_F76C8C:   ImpAdStVarCopy
  loc_F76C90: End If
  loc_F76C9D: Me.Global.Unload Me
  loc_F76CA5: Exit Sub
  loc_F76CAE: Set var_C8 = Err()
  loc_F76CB4: Call 0.Method_arg_2C (var_DC, var_94, MemVar_1F95110, var_B4)
  loc_F76CCD: MsgBox(CVar(var_DC), &H40, var_F0, var_100, var_120)
  loc_F76CE0: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_C(Index As Integer) 'EEBB78
  'Data Table: 42D3A4
  Dim Me As Recordset15
  loc_EEBB1A: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EEBB22: var_C8 = "15595518"
  loc_EEBB2B: var_C4 = "16777152"
  loc_EEBB53: Proc_183_11_113DA88(Me.TxtSearch, Me.GridSel, global_52, Index)
  loc_EEBB75: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E3E648
  'Data Table: 42D3A4
  loc_E3E622: If (Index = 2) Then
  loc_E3E63D:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3E645: End If
  loc_E3E645: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E1D6A0
  'Data Table: 42D3A4
  loc_E1D697: Me.GridSel.CellBackColor = CVar(CLng("15595518"))
  loc_E1D69F: Exit Sub
End Sub
