VERSION 5.00
Begin VB.Form FrmPayTypeMast
  Caption = "Payment Type Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11880
  ClientHeight = 8595
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 17445
    Top = 4140
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 165
      Top = 60
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 19710
    Top = 4080
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 32
  End
  Begin DataGrid DGHelp
    Left = 17790
    Top = 2400
    Width = 4230
    Height = 2655
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
End
Begin DataGrid DGLedgerAc
  Left = 17895
  Top = 1860
  Width = 4230
  Height = 2760
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 5
End
Begin DataGrid DGTaxMast
  Left = 17805
  Top = 1230
  Width = 4230
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 23
End
Begin Frame FrDepart
  Left = 90
  Top = 2790
  Width = 5235
  Height = 630
  TabIndex = 37
  BorderStyle = 0 'None
  Begin BtnEnh ChkOutLet
    Index = 0
    Left = 60
    Top = 60
    Width = 2595
    Height = 480
    TabIndex = 38
  End
  Begin BtnEnh ChkBanq
    Left = 2655
    Top = 60
    Width = 2595
    Height = 480
    Visible = 0   'False
    TabIndex = 39
  End
End
Begin MainCtrl TopCtrl1
  Left = 0
  Top = 0
  Width = 11880
  Height = 450
  TabIndex = 36
End
End

Attribute VB_Name = "FrmPayTypeMast"

Private global_104 As Integer

Private Sub FGPoint_UnknownEvent_9 'EAE6F8
  'Data Table: 50F338
  loc_EAE680: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EAE683:   Call DGHelp_UnknownEvent_9()
  loc_EAE688: End If
  loc_EAE6A4: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_EAE6A7:   Call DGLedgerAc_UnknownEvent_9()
  loc_EAE6AC: End If
  loc_EAE6C8: If (CBool(().Visible) = &HFF) Then
  loc_EAE6CB:   Call DGBank_UnknownEvent_9()
  loc_EAE6D0: End If
  loc_EAE6EC: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_EAE6EF:   Call DGTaxMast_UnknownEvent_9()
  loc_EAE6F4: End If
  loc_EAE6F4: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_9 'FE7590
  'Data Table: 50F338
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As DataGrid
  Dim var_A4 As Variant
  loc_FE73CB: Me.DGTaxMast.Visible = False
  loc_FE73EA: If (Me.RecordCount > 0) Then
  loc_FE7427:   Set var_B4 = var_B8(0)
  loc_FE742D:   Call 0.Method_DGTaxMast_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_FE7435:   var_B8.Text = 
  loc_FE7455:   ().InsertRows , 
  loc_FE74A7:   LateIdCallSt
  loc_FE74CD:   CVar(CLng())(CVar(CLng(3))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_FE74D6:   var_A4 = CVar(CLng()) 'Long
  loc_FE7500:   var_B0 = Me.Fields.Item("Code")
  loc_FE7519:   Set var_B8 = CVar(CLng(2))(CVar(CStr(var_B0.Value)))
  loc_FE751F:   LateIdCallSt
  loc_FE753B: End If
  loc_FE7547: Set var_A8 = var_B0(0)
  loc_FE754D: Call 0.Method_DGTaxMast_UnknownEvent_90 (var_12E, var_B8)
  loc_FE7555: var_A4 = var_B0.Visible
  loc_FE7567: If (var_12E = &HFF) Then
  loc_FE7573:   Set var_A8 = var_B0(0)
  loc_FE7579:   Call 0.Method_DGTaxMast_UnknownEvent_90 ()
  loc_FE7581:   var_B0.SetFocus
  loc_FE758D: End If
  loc_FE758D: Exit Sub
End Sub

Private Sub DGTaxMast_UnknownEvent_1F 'E6EC38
  'Data Table: 50F338
  loc_E6EBF6: Proc_6_153_E91D24(Me.DGTaxMast, arg_14)
  loc_E6EC0D: Set var_8C = Me.FGPoint
  loc_E6EC27: Proc_6_138_106E830(Me.DGTaxMast, global_72, 0)
  loc_E6EC35: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F144
  'Data Table: 50F338
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E5F10F: (CVar(CLng("14737632"))).BackColorSel = 
  loc_E5F122: Set var_A8 = var_AC(0)
  loc_E5F128: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E5F130: var_AC.Visible = 
  loc_E5F13C: Call Proc_17_56_F6BF68()
  loc_E5F141: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F0E0
  'Data Table: 50F338
  loc_E1F0D7: (CVar(CLng("16777215"))).CellBackColor = 
  loc_E1F0DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00E84
  'Data Table: 50F338
  loc_E00E7C: Call Proc_17_58_E412D8()
  loc_E00E81: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10666C8
  'Data Table: 50F338
  Dim var_9C As String
  Dim KeyCode As Integer
  Dim var_B0 As Variant
  Dim var_EC As Long
  loc_106644C: Set var_88 = Me.TopCtrl1
  loc_1066452: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_106646B: If (CStr() = "Browse") Then
  loc_106646E:   Exit Sub
  loc_106646F: End If
  loc_1066473: Set var_A0 = ()
  loc_1066479: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_1066486: Set var_B4 = ()
  loc_106648C: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_10664A3: Set var_88 = ((CLng(KeyCode) = &H26))
  loc_10664A9: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B()
  loc_10664E3: If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_10664F3:   Set var_88 = (CVar(CLng("16777215")))
  loc_10664F9:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_26()
  loc_1066509:   var_9C = "+{Tab}"
  loc_106650F:   Proc_303_0_FBACC8(CStr())
  loc_1066519:   KeyCode = 0
  loc_106651F: Else
  loc_1066523:   Set var_A0 = 0(KeyCode)
  loc_1066529:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_1066540:   Set var_88 = ((CLng(KeyCode) = &H28))
  loc_1066546:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B()
  loc_1066576:   If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1066586:     Set var_88 = (CVar(CLng("16777215")))
  loc_106658C:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_26()
  loc_1066596:     KeyCode = 0
  loc_1066599:   End If
  loc_1066599: End If
  loc_106659D: Set var_88 = (KeyCode)
  loc_10665A3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_10665B6: Set var_A0 = (CVar(CStr(CLng())))
  loc_10665BC: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B()
  loc_10665E0: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10665E7:   Set var_88 = ()
  loc_10665ED:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_B()
  loc_10665F6:   var_EC = CLng()
  loc_1066606:   If Not (var_EC = CLng(3)) Then
  loc_1066610:     If Not (var_EC = CLng(1)) Then
  loc_106661A:       If Not (var_EC = CLng(4)) Then
  loc_1066624:         If Not (var_EC = CLng(5)) Then
  loc_106662E:           If Not (var_EC = CLng(6)) Then
  loc_1066638:             If Not (var_EC = CLng(8)) Then
  loc_1066642:               If Not (var_EC = CLng(&HA)) Then
  loc_106664C:                 If Not (var_EC = CLng(7)) Then
  loc_1066656:                   If (var_EC = CLng(9)) Then
  loc_1066659:                   End If
  loc_1066659:                 End If
  loc_1066659:               End If
  loc_1066659:             End If
  loc_1066659:           End If
  loc_1066659:         End If
  loc_1066659:       End If
  loc_1066659:     End If
  loc_106665D:     Set var_88 = (var_EC)
  loc_1066663:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_1066675:     Set var_A0 = (CVar(CLng()))
  loc_106667B:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_B()
  loc_1066693:     Set var_B4 = CVar(CLng())(vbNullString)
  loc_1066699:     LateIdCallSt
  loc_10666B1:   End If
  loc_10666B1: End If
  loc_10666B7: If (KeyCode = &HD) Then
  loc_10666BF:   global_104 = 0
  loc_10666C2: End If
  loc_10666C4: KeyCode = 0
  loc_10666C7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10CC0
  'Data Table: 50F338
  loc_E10CB1: Call FGrid_UnknownEvent_C()
  loc_E10CBB: global_104 = 0
  loc_E10CBE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '111799C
  'Data Table: 50F338
  Dim var_9C As String
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1117650: Set var_88 = Me.TopCtrl1
  loc_1117656: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_111766F: If (CStr() = "Browse") Then
  loc_1117672:   Exit Sub
  loc_1117673: End If
  loc_1117677: Set var_88 = ()
  loc_111767D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_B()
  loc_1117686: var_A0 = CLng()
  loc_1117696: If Not (var_A0 = CLng(3)) Then
  loc_11176A0:   If Not (var_A0 = CLng(5)) Then
  loc_11176AA:     If Not (var_A0 = CLng(7)) Then
  loc_11176B4:       If (var_A0 = CLng(9)) Then
  loc_11176B7:       End If
  loc_11176B7:     End If
  loc_11176B7:   End If
  loc_11176BB:   Set var_C4 = (var_A0)
  loc_11176DF:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_111770C:   Set var_B4 = var_C4
  loc_111771E:   Proc_6_63_110B734(Me, var_B4, (), 0)
  loc_1117746:   Set var_88 = var_B4(0)
  loc_111774C:   Call 0.Method_FGrid_UnknownEvent_C0 (var_9C, 0, Asc(var_9C))
  loc_1117754:   0 = var_B4.Text
  loc_111776D:   If (Len(var_9C) <= 1) Then
  loc_111777C:     Set var_88 = var_B4(0)
  loc_1117782:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_111778A:     var_CA = var_B4.Text
  loc_111779B:     Set var_B8 = var_C4(0)
  loc_11177A1:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_11177A9:     var_C4.Text = 
  loc_11177BC:   End If
  loc_11177C8:   Set var_88 = var_B4(0)
  loc_11177CE:   Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_11177D6:    = var_B4.Text
  loc_11177E8:   Set var_B8 = var_C4(0)
  loc_11177EE:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_9C))
  loc_11177F6:   var_C4.SelStart = 
  loc_111780C: Else
  loc_1117813:   If Not (var_A0 = CLng(1)) Then
  loc_111781D:     If Not (var_A0 = CLng(4)) Then
  loc_1117827:       If Not (var_A0 = CLng(8)) Then
  loc_1117831:         If (var_A0 = CLng(&HA)) Then
  loc_1117834:         End If
  loc_1117834:       End If
  loc_1117834:     End If
  loc_1117838:     Set var_C4 = ()
  loc_111785C:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1117889:     Set var_B4 = var_C4
  loc_111789B:     Proc_6_63_110B734(Me, var_B4, (), 0)
  loc_11178C3:     Set var_88 = var_B4(0)
  loc_11178C9:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C, &HFF, Asc(var_9C))
  loc_11178D1:     0 = var_B4.Text
  loc_11178EA:     If (Len(var_9C) <= 1) Then
  loc_11178F9:       Set var_88 = var_B4(0)
  loc_11178FF:       Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_1117907:       var_CA = var_B4.Text
  loc_1117918:       Set var_B8 = var_C4(0)
  loc_111791E:       Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_1117926:       var_C4.Text = 
  loc_1117939:     End If
  loc_1117945:     Set var_88 = var_B4(0)
  loc_111794B:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_1117953:      = var_B4.Text
  loc_1117965:     Set var_B8 = var_C4(0)
  loc_111796B:     Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_9C))
  loc_1117973:     var_C4.SelStart = 
  loc_1117986:   End If
  loc_1117986: End If
  loc_1117990: If (CLng(KeyCode) <> &HD) Then
  loc_1117998:   global_104 = &HFF
  loc_111799B: End If
  loc_111799B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10317A4
  'Data Table: 50F338
  Dim var_B4 As Variant
  loc_1031570: Set var_90 = Me.TopCtrl1
  loc_1031576: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103158F: If (CStr() = "Browse") Then
  loc_1031592:   Exit Sub
  loc_1031593: End If
  loc_1031597: Set var_90 = ()
  loc_103159D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_D()
  loc_10315B0: If (CLng() = CLng(0)) Then
  loc_10315B3:   Exit Sub
  loc_10315B4: End If
  loc_10315C5: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_10315CC:   Set var_90 = ()
  loc_10315D2:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_10315E7:   If (CLng() >= 1) Then
  loc_1031621:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1031628:       Set var_90 = ()
  loc_103162E:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_1031643:       If (CLng() > 2) Then
  loc_103164A:         Set var_90 = ()
  loc_1031650:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_A()
  loc_1031662:         Set var_118 = (CVar(CLng()))
  loc_1031668:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_10000()
  loc_103167D:       Else
  loc_103168A:         Set var_90 = (1)
  loc_1031690:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_103169C:         Set var_90 = ()
  loc_10316A2:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_10316B5:         Set var_118 = (CVar(CStr(CLng())))
  loc_10316BB:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_10000()
  loc_10316DE:         Set var_90 = (1)
  loc_10316E4:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6()
  loc_10316EC:       End If
  loc_10316F5:       Set var_90 = 1(var_86)
  loc_10316FB:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4()
  loc_1031711:       For var_11C =  To CInt((CLng() - 1)):  = var_11C 'Integer
  loc_103171B:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_1031735:         Set var_90 = CVar(CLng(0))(CVar(CStr(var_86)))
  loc_103173B:         LateIdCallSt
  loc_103174C:       Next var_11C 'Integer
  loc_1031751:     End If
  loc_1031754:   Else
  loc_1031775:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_1031785:   End If
  loc_1031789:   Set var_90 = ()
  loc_103178F:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001()
  loc_103179A: End If
  loc_103179F: Set var_8C = Nothing
  loc_10317A2: Exit Sub
  loc_10317A3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1ED20
  'Data Table: 50F338
  loc_E1ED11: Set var_A8 = (CVar(CLng("14737632")))
  loc_E1ED17: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_26()
  loc_E1ED1F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EF00
  'Data Table: 50F338
  loc_E1EEF1: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1EEF7: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_26()
  loc_E1EEFF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E404CC
  'Data Table: 50F338
  Dim var_8C As TextBox
  loc_E404A0: Call Proc_17_56_F6BF68()
  loc_E404B0: Set var_88 = var_8C(0)
  loc_E404B6: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E404BE: var_8C.Visible = 
  loc_E404CA: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '128CE68
  'Data Table: 50F338
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_104 As TextBox
  loc_128C8A0: Call Proc_17_56_F6BF68()
  loc_128C8B2: Set var_A8 = (CVar(CLng("16777215")))
  loc_128C8C4: Set var_A8 = (FrmList.DispID_26)
  loc_128C8DC: Set var_BC = (CVar(CLng(FrmList.DispID_A)))
  loc_128C8F4: Set var_F0 = (CVar(CLng(FrmList.DispID_B)))
  loc_128C912: Set var_104 = var_108(Index)
  loc_128C918: Call 0.Method_TxtGrid_GotFocus0 (CStr(FrmList.DispID_41))
  loc_128C920: var_108.Tag = 
  loc_128C942: Set var_A8 = ()
  loc_128C951: var_110 = CLng(FrmList.DispID_B)
  loc_128C961: If (var_110 = CLng(3)) Then
  loc_128C97B:   If (Me.RecordCount > 0) Then
  loc_128C989:     Set var_BC = Me.FGPoint
  loc_128C9A1:     Proc_6_137_1192FDC(Me.DGTaxMast, global_72, Index)
  loc_128C9AF:   End If
  loc_128C9F0:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_128C9F3:     Exit Sub
  loc_128C9F4:   End If
  loc_128CA42:   If (CStr(CVar(CLng(var_110(CVar(CLng(var_110(var_BC).Row))(CVar(CLng(3)))).Row))(CVar(CLng(3))).TextMatrix)) <> vbNullString) Then
  loc_128CA4B:     Me.MoveFirst
  loc_128CA74:     Set var_BC = CVar(CLng(().Row))(CVar(CLng(2)))
  loc_128CA7A:     var_CC = var_BC.TextMatrix)
  loc_128CAAF:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_128CADF:     If (Me.EOF = &HFF) Then
  loc_128CAE8:       Me.MoveFirst
  loc_128CAED:     End If
  loc_128CAED:   End If
  loc_128CAF0: Else
  loc_128CAF7:   If (var_110 = CLng(1)) Then
  loc_128CB09:     Set var_A8 = var_BC(Index)
  loc_128CB0F:     Call 0.Method_TxtGrid_GotFocus0 (&HB, var_130)
  loc_128CB17:     var_BC.MaxLength = var_CC
  loc_128CB26:   Else
  loc_128CB2D:     If (var_110 = CLng(4)) Then
  loc_128CB3F:       Set var_A8 = var_BC(Index)
  loc_128CB45:       Call 0.Method_TxtGrid_GotFocus0 (7)
  loc_128CB4D:       var_BC.MaxLength = 
  loc_128CB5C:     Else
  loc_128CB63:       If (var_110 = CLng(5)) Then
  loc_128CB7D:         If (Me.RecordCount > 0) Then
  loc_128CB8B:           Set var_BC = Me.FGPoint
  loc_128CBA3:           Proc_6_137_1192FDC((), global_68)
  loc_128CBB1:         End If
  loc_128CBF2:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_128CBF5:           Exit Sub
  loc_128CBF6:         End If
  loc_128CC44:         If (CStr(CVar(CLng(CVar(CLng(var_BC(Index).Row))(CVar(CLng(5)))(Index).Row))(CVar(CLng(5))).TextMatrix)) <> vbNullString) Then
  loc_128CC4D:           Me.MoveFirst
  loc_128CC76:           Set var_BC = CVar(CLng(().Row))(CVar(CLng(6)))
  loc_128CC7C:           var_CC = var_BC.TextMatrix)
  loc_128CC9D:           var_10C = CStr(var_CC)
  loc_128CCB1:           Me.Find "Code ='" & var_10C & "'", 0, 1
  loc_128CCE1:           If (Me.EOF = &HFF) Then
  loc_128CCEA:             Me.MoveFirst
  loc_128CCEF:           End If
  loc_128CCEF:         End If
  loc_128CCF2:       Else
  loc_128CCF9:         If Not (var_110 = CLng(8)) Then
  loc_128CD03:           If (var_110 = CLng(&HA)) Then
  loc_128CD06:           End If
  loc_128CD15:           Set var_A8 = var_BC(Index)
  loc_128CD1B:           Call 0.Method_TxtGrid_GotFocus0 (&HA, var_130)
  loc_128CD23:           var_BC.MaxLength = var_CC
  loc_128CD32:         Else
  loc_128CD39:           If (var_110 = CLng(9)) Then
  loc_128CD4B:             Set var_A8 = var_BC(Index)
  loc_128CD51:             Call 0.Method_TxtGrid_GotFocus0 (7)
  loc_128CD59:             var_BC.MaxLength = 
  loc_128CD72:             ReDim var_134(0 To 1)
  loc_128CD89:             var_134(0) = "<="
  loc_128CD98:             var_134(1) = "Between"
  loc_128CDAF:             global_76 = Array(var_134)
  loc_128CDBA:             Set var_104 = Me.ListView
  loc_128CDD5:             Set var_BC = (global_76)
  loc_128CDEF:             Set global_92 = Proc_6_66_F0048C(var_104, var_BC, Index)
  loc_128CE0D:             Set var_A8 = var_BC(Index)
  loc_128CE13:             Call 0.Method_TxtGrid_GotFocus0 (var_10C, global_76)
  loc_128CE1B:             2 = var_BC.Text
  loc_128CE2D:             Set var_F0 = var_104(Index)
  loc_128CE33:             Call 0.Method_TxtGrid_GotFocus0 (var_10C)
  loc_128CE3B:             var_104.Tag = 
  loc_128CE5D:             Me.FrmList.Top = CDbl(5000)
  loc_128CE65:           End If
  loc_128CE65:         End If
  loc_128CE65:       End If
  loc_128CE65:     End If
  loc_128CE65:   End If
  loc_128CE65: End If
  loc_128CE65: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '138B488
  'Data Table: 50F338
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_88 As Variant
  Dim var_AC As Long
  Dim var_94 As TextBox
  Dim var_C4 As Variant
  Dim var_D8 As TextBox
  Dim var_E0 As Variant
  Dim var_F4 As TextBox
  loc_138ABDC: On Error Goto loc_138B482
  loc_138ABE9: If (CLng(Shift) = &H1B) Then
  loc_138ABF9:   Set var_88 = var_8C(KeyCode)
  loc_138ABFF:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_138AC07:    = var_8C.Tag
  loc_138AC19:   Set var_94 = var_98(KeyCode)
  loc_138AC1F:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_138AC27:   var_98.Text = 
  loc_138AC43:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_138AC48:   Call Proc_17_56_F6BF68(arg_14)
  loc_138AC51:   Set var_88 = ()
  loc_138AC6E:   Set var_88 = var_8C(KeyCode)
  loc_138AC74:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_138AC7C:   var_8C.Visible = ListView.DispID_8001
  loc_138AC88:   Exit Sub
  loc_138AC89: End If
  loc_138ACAC: If (CLng(().MousePointer) = CLng(3)) Then
  loc_138ACBB:   Set var_8C = var_94(0)
  loc_138ACC1:   Call 0.Method_TxtGrid_KeyDown0 (var_B4)
  loc_138ACC9:   var_AC = var_94.Left
  loc_138ACDB:    = (var_B0).Left
  loc_138ACE7:   var_C4 = CVar((var_B0 + var_B4)) 'Single
  loc_138ACF6:   Me.DGTaxMast.Left = var_C4
  loc_138AD12:   Set var_8C = var_94(0)
  loc_138AD18:   Call 0.Method_TxtGrid_KeyDown0 (var_B4)
  loc_138AD20:    = var_94.Top
  loc_138AD31:   Set var_98 = var_D8(0)
  loc_138AD37:   Call 0.Method_TxtGrid_KeyDown0 (var_DC)
  loc_138AD3F:    = var_D8.Height
  loc_138AD51:    = (var_B0).Top
  loc_138AD61:   var_C4 = CVar(((var_B0 + var_B4) + var_DC)) 'Single
  loc_138AD70:   Me.DGTaxMast.Top = var_C4
  loc_138AD88:   Set var_D8 = Me.DGTaxMast
  loc_138ADAC:   Set var_94 = Nothing
  loc_138ADDA:   Proc_6_69_134A630(var_D8, (), KeyCode, global_72, Shift)
  loc_138ADFA:   If (CLng(Shift) = &HD) Then
  loc_138AE03:     Call Proc_17_59_1355674(KeyCode, var_E2, &HFF, 1)
  loc_138AE0E:     If (var_E2 = &HFF) Then
  loc_138AE47:       Set var_8C = (0)
  loc_138AE56:       Proc_6_62_1254E68(Me.FGPoint(Me.FGPoint(var_94)), var_8C, KeyCode, Shift, global_104)
  loc_138AE66:     End If
  loc_138AE66:   End If
  loc_138AE69: Else
  loc_138AE70:   If (var_AC = CLng(1)) Then
  loc_138AE82:     Set var_88 = var_8C(KeyCode)
  loc_138AE88:     Call 0.Method_TxtGrid_KeyDown0 (&HB, CByte(6), 0)
  loc_138AE90:     var_8C.MaxLength = 0
  loc_138AEA6:     If (CLng(Shift) = &HD) Then
  loc_138AEAF:       Call Proc_17_59_1355674(KeyCode, var_E2)
  loc_138AEBA:       If (var_E2 = &HFF) Then
  loc_138AEF3:         Set var_8C = ()
  loc_138AF02:         Proc_6_62_1254E68((0), var_8C, KeyCode, Shift, global_104)
  loc_138AF12:       End If
  loc_138AF12:     End If
  loc_138AF15:   Else
  loc_138AF1C:     If (var_AC = CLng(4)) Then
  loc_138AF2E:       Set var_88 = var_8C(KeyCode)
  loc_138AF34:       Call 0.Method_TxtGrid_KeyDown0 (7, CByte(6), 0)
  loc_138AF3C:       var_8C.MaxLength = 0
  loc_138AF52:       If (CLng(Shift) = &HD) Then
  loc_138AF5B:         Call Proc_17_59_1355674(KeyCode, var_E2)
  loc_138AF66:         If (var_E2 = &HFF) Then
  loc_138AF6D:           Set var_94 = (0)
  loc_138AFAE:           Proc_6_62_1254E68(var_94, (), KeyCode, Shift, global_104)
  loc_138AFBE:         End If
  loc_138AFBE:       End If
  loc_138AFC1:     Else
  loc_138AFC8:       If (var_AC = CLng(5)) Then
  loc_138AFD7:         Set var_8C = var_94(0)
  loc_138AFDD:         Call 0.Method_TxtGrid_KeyDown0 (var_B4, CByte(6), 0)
  loc_138AFE5:         0 = var_94.Left
  loc_138AFF7:          = 0(var_B0).Left
  loc_138B003:         var_C4 = CVar((var_B0 + var_B4)) 'Single
  loc_138B012:         (var_C4).Left = 
  loc_138B02E:         Set var_8C = var_94(0)
  loc_138B034:         Call 0.Method_TxtGrid_KeyDown0 (var_B4)
  loc_138B03C:          = var_94.Top
  loc_138B04D:         Set var_98 = var_D8(0)
  loc_138B053:         Call 0.Method_TxtGrid_KeyDown0 (var_DC)
  loc_138B05B:          = var_D8.Height
  loc_138B06D:          = (var_B0).Top
  loc_138B07D:         var_C4 = CVar(((var_B0 + var_B4) + var_DC)) 'Single
  loc_138B08C:         (var_C4).Top = 
  loc_138B0AB:         Set var_E0 = ()
  loc_138B0C8:         Set var_94 = Nothing
  loc_138B0F6:         Proc_6_69_134A630((), var_E0, KeyCode, global_68, Shift)
  loc_138B116:         If (CLng(Shift) = &HD) Then
  loc_138B11F:           Call Proc_17_59_1355674(KeyCode, var_E2, &HFF, 1)
  loc_138B12A:           If (var_E2 = &HFF) Then
  loc_138B163:             Set var_8C = (0)
  loc_138B172:             Proc_6_62_1254E68(Me.FGPoint(Me.FGPoint(var_94)), var_8C, KeyCode, Shift, global_104)
  loc_138B182:           End If
  loc_138B182:         End If
  loc_138B185:       Else
  loc_138B18C:         If (var_AC = CLng(8)) Then
  loc_138B19E:           Set var_88 = var_8C(KeyCode)
  loc_138B1A4:           Call 0.Method_TxtGrid_KeyDown0 (&HA, CByte(6), 0)
  loc_138B1AC:           var_8C.MaxLength = 0
  loc_138B1C2:           If (CLng(Shift) = &HD) Then
  loc_138B1CB:             Call Proc_17_59_1355674(KeyCode, var_E2)
  loc_138B1D6:             If (var_E2 = &HFF) Then
  loc_138B20F:               Set var_8C = ()
  loc_138B21E:               Proc_6_62_1254E68((0), var_8C, KeyCode, Shift, global_104)
  loc_138B22E:             End If
  loc_138B22E:           End If
  loc_138B231:         Else
  loc_138B238:           If (var_AC = CLng(&HA)) Then
  loc_138B24A:             Set var_88 = var_8C(KeyCode)
  loc_138B250:             Call 0.Method_TxtGrid_KeyDown0 (&HA, CByte(6), 0)
  loc_138B258:             var_8C.MaxLength = 0
  loc_138B26E:             If (CLng(Shift) = &HD) Then
  loc_138B277:               Call Proc_17_59_1355674(KeyCode, var_E2)
  loc_138B282:               If (var_E2 = &HFF) Then
  loc_138B290:                 Set var_98 = ()
  loc_138B2BB:                 Set var_8C = var_98
  loc_138B2CA:                 Proc_6_62_1254E68((0), var_8C, KeyCode, Shift, global_104)
  loc_138B2DA:               End If
  loc_138B2DA:             End If
  loc_138B2DD:           Else
  loc_138B2E4:             If (var_AC = CLng(9)) Then
  loc_138B2F6:               Set var_88 = var_8C(KeyCode)
  loc_138B2FC:               Call 0.Method_TxtGrid_KeyDown0 (7, CByte(9), 0)
  loc_138B304:               var_8C.MaxLength = 0
  loc_138B332:               Set var_88 = var_8C(KeyCode)
  loc_138B338:               Call 0.Method_TxtGrid_KeyDown0 (var_B0)
  loc_138B340:                = var_8C.Left
  loc_138B352:               Set var_94 = var_98(KeyCode)
  loc_138B358:               Call 0.Method_TxtGrid_KeyDown0 (var_B4)
  loc_138B360:                = var_98.Top
  loc_138B372:               Set var_D8 = var_E0(KeyCode)
  loc_138B378:               Call 0.Method_TxtGrid_KeyDown0 (var_DC)
  loc_138B380:                = var_E0.Height
  loc_138B392:               Set var_EC = var_F4(KeyCode)
  loc_138B398:               Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_138B3A0:                = var_F4.Width
  loc_138B3E8:               Proc_6_65_1194DE4(Me.FrmList, Me.ListView, (0), KeyCode, Shift)
  loc_138B416:               If (CLng(Shift) = &HD) Then
  loc_138B41F:                 Call Proc_17_59_1355674(KeyCode, var_E2, arg_14, CInt(var_B0))
  loc_138B42A:                 If (var_E2 = &HFF) Then
  loc_138B431:                   Set var_94 = CInt(var_F8)(CInt((var_B4 + var_DC)))
  loc_138B472:                   Proc_6_62_1254E68(var_94, (1560), KeyCode, Shift, global_104)
  loc_138B482:                 End If
  loc_138B482:               End If
  loc_138B482:             End If
  loc_138B482:           End If
  loc_138B482:         End If
  loc_138B482:       End If
  loc_138B482:       ' Referenced from: 138ABDC
  loc_138B482:     End If
  loc_138B482:   End If
  loc_138B482: End If
  loc_138B482: Proc_6_60_E63754(CByte(9), 0)
  loc_138B487: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FB4EC0
  'Data Table: 50F338
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_FB4D1F: Proc_6_58_E06050(arg_10)
  loc_FB4D27: var_86 = KeyAscii
  loc_FB4D30: If (var_86 = 0) Then
  loc_FB4D46:   var_A0 = CLng((var_86).Col)
  loc_FB4D56:   If (var_A0 = CLng(3)) Then
  loc_FB4D75:     If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_FB4D87:       var_A4 = "Name"
  loc_FB4DA2:       Proc_6_89_1470B00((var_A0), KeyAscii, global_72)
  loc_FB4DBC:       Set var_AC = Me.FGPoint
  loc_FB4DD4:       Proc_6_138_106E830(Me.DGTaxMast, global_72, KeyAscii, var_AC)
  loc_FB4DE2:     End If
  loc_FB4DE5:   Else
  loc_FB4DEC:     If (var_A0 = CLng(4)) Then
  loc_FB4DF9:       Set var_8C = var_AC(KeyAscii)
  loc_FB4DFF:       Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A4)
  loc_FB4E1A:       Proc_6_42_129B55C(var_AC, arg_10, 2)
  loc_FB4E29:     Else
  loc_FB4E30:       If (var_A0 = CLng(5)) Then
  loc_FB4E4F:         If (CBool(0(4).Visible) = &HFF) Then
  loc_FB4E7C:           Proc_6_89_1470B00((), KeyAscii, global_68)
  loc_FB4E96:           Set var_AC = Me.FGPoint
  loc_FB4EAE:           Proc_6_138_106E830("Name"(arg_10), global_68, KeyAscii)
  loc_FB4EBC:         End If
  loc_FB4EBC:       End If
  loc_FB4EBC:     End If
  loc_FB4EBC:   End If
  loc_FB4EBC: End If
  loc_FB4EBC: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FCE384
  'Data Table: 50F338
  Dim var_9C As Long
  loc_FCE1C8: On Error Goto loc_FCE37C
  loc_FCE1DE: var_9C = CLng(().MousePointer)
  loc_FCE1EE: If (var_9C = CLng(3)) Then
  loc_FCE214:   If ((Shift <> &HD) And (CBool(Me.DGTaxMast.Visible) = 0)) Then
  loc_FCE222:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FCE236:     var_A4 = "Name"
  loc_FCE251:     Proc_6_89_1470B00(var_9C(0), KeyCode, global_72)
  loc_FCE260:   End If
  loc_FCE263: Else
  loc_FCE26A:   If (var_9C = CLng(5)) Then
  loc_FCE290:     If (var_A4 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_FCE29E:       Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FCE2B2:       var_A4 = "Name"
  loc_FCE2CD:       Proc_6_89_1470B00(&HFF(0), KeyCode, global_68)
  loc_FCE2DC:     End If
  loc_FCE2DF:   Else
  loc_FCE2E6:     If (var_9C = CLng(7)) Then
  loc_FCE30B:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_FCE31C:         Call TxtGrid_KeyDown(KeyCode, global_96)
  loc_FCE321:       End If
  loc_FCE33C:       If (Me.FrmList.Visible = &HFF) Then
  loc_FCE36B:         Proc_6_64_F299E8(Me.ListView, Shift(0), KeyCode, Shift)
  loc_FCE37B:       End If
  loc_FCE37B:     End If
  loc_FCE37B:   End If
  loc_FCE37B: End If
  loc_FCE37B: Exit Sub
  loc_FCE37C: ' Referenced from: FCE1C8
  loc_FCE37C: Proc_6_60_E63754(global_92, var_A4)
  loc_FCE381: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E59F20
  'Data Table: 50F338
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E59EE3: var_86 = Cancel
  loc_E59EEC: If (var_86 = 0) Then
  loc_E59EF5:   Call Proc_17_59_1355674(Cancel, var_88)
  loc_E59EFE:   arg_10 = Not(var_88)
  loc_E59F01: End If
  loc_E59F14: var_A0 = CLng(var_86(arg_10).MousePointer)
  loc_E59F1D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFB214
  'Data Table: 50F338
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFB148: On Error Goto loc_EFB1CE
  loc_EFB158: (vbNullString).Caption = 
  loc_EFB16D: (vbNullString).Caption = 
  loc_EFB175: Call Proc_17_52_F92544()
  loc_EFB18F: var_8C = "ADD"
  loc_EFB19D: Call Proc_17_51_E8ADA0(Proc_5_1_100EC1C(var_8C, Me))
  loc_EFB1B3: Set var_88 = var_94(CInt(0))
  loc_EFB1B9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (global_52)
  loc_EFB1C1: var_94.SetFocus
  loc_EFB1CD: Exit Sub
  loc_EFB1CE: ' Referenced from: EFB148
  loc_EFB1D6: Set var_88 = Err()
  loc_EFB1DC: Call 0.Method_arg_2C (var_8C)
  loc_EFB1FD: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFB210: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBFADC
  'Data Table: 50F338
  loc_EBFA44: On Error Goto loc_EBFAD4
  loc_EBFA7E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBFA81:   Call Proc_17_56_F6BF68()
  loc_EBFA92:   Set var_110 = Me
  loc_EBFAA9:   Call Proc_17_51_E8ADA0(Proc_5_1_100EC1C("INI", var_110))
  loc_EBFAB4:   Call Proc_17_53_14AA488(global_52)
  loc_EBFABC: Else
  loc_EBFAC2:   Call 0.Method_arg_1E8 (var_110)
  loc_EBFACA:   Call var_110.SetFocus
  loc_EBFAD3: End If
  loc_EBFAD3: Exit Sub
  loc_EBFAD4: ' Referenced from: EBFA44
  loc_EBFAD4: Proc_6_60_E63754()
  loc_EBFAD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1292B78
  'Data Table: 50F338
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_50F342 As Connection15
  Dim var_9C As Recordset15
  Dim var_96 As Integer
  loc_12925BC: On Error Goto loc_1292B1F
  loc_12925CD: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_12925D0:   Exit Sub
  loc_12925D1: End If
  loc_1292610: var_E4 = "select SysYN From REVMAST Where Code='" & Me.Fields.Item("Code").Value 
  loc_1292619: var_104 = var_E4 & "'" 
  loc_1292627: unk_50F342.Execute CStr(var_104), var_128, -1
  loc_1292632: Set var_9C = var_12C
  loc_1292652: var_130 = var_9C.RecordCount
  loc_1292660: If (var_130 > 0) Then
  loc_129269F:   If (var_9C.Fields.Item("SysYN").Value = "Y") Then
  loc_12926BB:     MsgBox("SYSTEM ENTRY CAN'T BE DELETED", 0, var_E4, var_104, var_128)
  loc_12926CB:     Exit Sub
  loc_12926CC:   End If
  loc_12926CC: End If
  loc_12926FE: var_13C = "Payment Entry"
  loc_1292746: If (Proc_6_108_101061C(MemVar_1F95044, "PayCharge", "PayCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1292749:   Exit Sub
  loc_129274A: End If
  loc_1292781: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_104, var_128) = 6) Then
  loc_1292786:   var_96 = 0
  loc_1292792:   unk_50F342.BeginTrans var_130
  loc_1292799:   var_96 = &HFF
  loc_12927AD:   var_94 = Me.Bookmark 'Variant
  loc_1292807:   unk_50F342.Execute CStr("Delete From REVMAST Where Code='" & Me.Fields.Item("Code").Value & "'"), var_128, -1
  loc_1292852:   var_16C = 0
  loc_1292865:   var_164 = 0
  loc_1292870:   var_160 = 0
  loc_1292883:   var_158 = 0
  loc_129288E:   var_154 = 0
  loc_12928A1:   var_14C = 0
  loc_12928EA:   Proc_154_5_10E3BD4(MemVar_1F951E0, "RevMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_129295A:   var_104 = "Delete From DepartPay Where PayCode='" & Me.Fields.Item("Code").Value & "'" 
  loc_1292968:   unk_50F342.Execute CStr(var_104), var_128, -1
  loc_12929B3:   var_16C = 0
  loc_12929C6:   var_164 = 0
  loc_12929D1:   var_160 = 0
  loc_12929E4:   var_158 = 0
  loc_12929EF:   var_154 = 0
  loc_1292A02:   var_14C = 0
  loc_1292A42:   var_108 = "DepartPay"
  loc_1292A4B:   Proc_154_5_10E3BD4(MemVar_1F951E0, var_108, "PayCode", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1292A79:   unk_50F342.CommitTrans
  loc_1292A80:   var_96 = 0
  loc_1292A8E:   Me.Requery -1
  loc_1292A9E:   Me.Requery -1
  loc_1292ABE:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1292ACB:     Me.Bookmark = var_94
  loc_1292AD3:   Else
  loc_1292AE7:     If (Me.EOF = 0) Then
  loc_1292AF0:       Me.MoveLast
  loc_1292AF5:     End If
  loc_1292AF5:   End If
  loc_1292AF5:   Call Proc_17_53_14AA488(var_96, var_14C, 0, var_154, var_158)
  loc_1292B16:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_1292B1E: End If
  loc_1292B1E: Exit Sub
  loc_1292B1F: ' Referenced from: 12925BC
  loc_1292B25: If (var_96 = &HFF) Then
  loc_1292B2E:   unk_50F342.RollbackTrans
  loc_1292B33: End If
  loc_1292B3B: Set var_A0 = Err()
  loc_1292B41: Call 0.Method_arg_2C (var_108, 0, var_160)
  loc_1292B62: MsgBox(CVar(var_108), &H30, " Deletion Error ", var_104, var_128)
  loc_1292B75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6120C
  'Data Table: 50F338
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F610E8: On Error Goto loc_F611C9
  loc_F610F8: (vbNullString).Caption = 
  loc_F6110D: (vbNullString).Caption = 
  loc_F61123: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F61126:   Exit Sub
  loc_F61127: End If
  loc_F6113E: If (Me.RecordCount > 0) Then
  loc_F61156:   var_90 = "EDIT"
  loc_F61164:   Call Proc_17_51_E8ADA0(Proc_5_1_100EC1C(var_90, Me))
  loc_F6117A:   Set var_88 = var_98(CInt(0))
  loc_F61180:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (global_52)
  loc_F61188:   var_98.SetFocus
  loc_F61197: Else
  loc_F611B8:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F611C8: End If
  loc_F611C8: Exit Sub
  loc_F611C9: ' Referenced from: F610E8
  loc_F611D1: Set var_88 = Err()
  loc_F611D7: Call 0.Method_arg_2C (var_90)
  loc_F611F8: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F6120B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17C7C
  'Data Table: 50F338
  loc_E17C71: Me.Global.Unload Me
  loc_E17C79: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F24E38
  'Data Table: 50F338
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F24D38: On Error Goto loc_F24DD0
  loc_F24D44: var_88 = Me.RecordCount
  loc_F24D52: If (var_88 <= 0) Then
  loc_F24D5B:   var_B8 = "Information"
  loc_F24D76:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F24D86:   Exit Sub
  loc_F24D87: End If
  loc_F24D95: MemVar_1F950E4 = "Select REVMAST.Code As SearchCode,REVMAST.Name FROM REVMAST WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and PayType<>'' AND PayType IS NOT NULL Order by REVMAST.Name"
  loc_F24D9F: var_10C = "3000"
  loc_F24DA5: Proc_6_126_F1C850(var_10C)
  loc_F24DB3: MemVar_1F95120 = Me
  loc_F24DCA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F24DCF: Exit Sub
  loc_F24DD0: ' Referenced from: F24D38
  loc_F24DD8: Set var_110 = Err()
  loc_F24DDE: Call 0.Method_arg_1C (var_88)
  loc_F24DEF: If (var_88 <> 0) Then
  loc_F24DFA:   Set var_110 = Err()
  loc_F24E00:   Call 0.Method_arg_2C (var_10C)
  loc_F24E21:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F24E34: End If
  loc_F24E34: Exit Sub
  loc_F24E36: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E335A8
  'Data Table: 50F338
  loc_E33598: Proc_5_0_1107AD0(&HFF, Me)
  loc_E335A0: Call Proc_17_53_14AA488(global_52)
  loc_E335A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33488
  'Data Table: 50F338
  loc_E33478: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33480: Call Proc_17_53_14AA488(global_52)
  loc_E33485: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E334E8
  'Data Table: 50F338
  loc_E334D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E334E0: Call Proc_17_53_14AA488(global_52)
  loc_E334E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33548
  'Data Table: 50F338
  loc_E33538: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33540: Call Proc_17_53_14AA488(global_52)
  loc_E33545: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10898C8
  'Data Table: 50F338
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_50F342 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1089630: On Error Goto loc_108987C
  loc_1089647: var_A0 = "SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName FROM REVMAST P Left join Subgroup S on S.SubCode=P.ACCode WHERE (P.LOGSITE_CODE='" & MemVar_1F95078
  loc_1089657: unk_50F342.Execute var_A0 & "' or P.LOGSITE_CODE='HO') and PayType<>'' AND PayType IS NOT NULL", var_C4, -1
  loc_1089662: Set var_88 = var_C8
  loc_1089678: var_CC = var_88.RecordCount
  loc_1089686: If (var_CC = 0) Then
  loc_10896A2:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10896B2:   Exit Sub
  loc_10896B3: End If
  loc_10896C2: var_A4 = MemVar_1F950B4 & "\PayTypeMast.ttx"
  loc_10896C9: Set var_C8 = var_88 
  loc_10896D5: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10896DF: Set var_88 = var_C8
  loc_10896E5: var_B4 = CVar(var_12E) 'Integer
  loc_10896E8: var_98 = var_B4 'Variant
  loc_1089704: var_A0 = MemVar_1F950B4 & "\PayTypeMast.RPT"
  loc_108970D: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1089718: MemVar_1F951E8 = var_C8
  loc_1089733: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108973B: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1089747: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1089760:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1089768:   Call 0.Method_arg_20 (var_138)
  loc_1089770:   Call 0.Method_arg_30 (var_A0)
  loc_10897B6:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10897CC:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10897D4:     Call 0.Method_arg_20 (var_138)
  loc_10897DC:     Call 0.Method_arg_38 ("'Pay Type Master'")
  loc_10897E8:   End If
  loc_10897EB: Next var_132 'Integer
  loc_1089809: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1089811: Call 0.Method_arg_2C (var_DC)
  loc_108981F: Call 0.Method_arg_150 (var_FC)
  loc_108982A: Call 0.Method_arg_50 (var_A0)
  loc_1089834: Set var_138 = Nothing
  loc_108984E: Set var_C8 = MemVar_1F951E8 
  loc_108985A: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1089865: MemVar_1F951E8 = var_C8
  loc_1089878: Set var_88 = Nothing
  loc_108987B: Exit Sub
  loc_108987C: ' Referenced from: 1089630
  loc_1089884: Set var_C8 = Err()
  loc_108988A: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1089895: Call 0.Method_arg_50 (var_A4)
  loc_10898B1: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10898C4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E57558
  'Data Table: 50F338
  Dim Me As Recordset15
  loc_E5751F: Me.Requery -1
  loc_E5752F: Me.Requery -1
  loc_E5753F: Me.Requery -1
  loc_E5754F: Me.Requery -1
  loc_E57554: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15472B0
  'Data Table: 50F338
  Dim var_98 As Variant
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_AC As String
  Dim unk_50F342 As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_B8 As String
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_140 As TextBox
  Dim var_174 As TextBox
  Dim var_190 As Variant
  Dim var_208 As TextBox
  Dim var_214 As TextBox
  Dim var_248 As Variant
  Dim var_238 As Variant
  Dim var_2C0 As Variant
  Dim var_120 As String
  Dim var_128 As String
  Dim var_288 As Variant
  Dim var_2D0 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_340 As Variant
  Dim var_C8 As Variant
  Dim var_364 As Variant
  Dim var_4B0 As Variant
  Dim var_1A0 As Variant
  Dim var_1D0 As Variant
  Dim var_430 As Variant
  Dim var_470 As Variant
  Dim var_4D0 As Variant
  Dim var_124 As String
  Dim var_F8 As Variant
  Dim var_78C As Double
  Dim var_794 As Double
  Dim var_79C As Double
  Dim var_510 As Variant
  loc_15463CC: On Error Goto loc_154725C
  loc_15463D3: var_86 = CByte(0) 'Byte
  loc_15463E2: Set var_94 = var_98(CInt(0))
  loc_15463E8: Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_15463F0: var_A0 = "Name"
  loc_1546411: If (Proc_183_19_E8E68C(var_98) = 0) Then
  loc_154641B:   Call Txt_GotFocus()
  loc_1546420:   Exit Sub
  loc_1546421: End If
  loc_154642F: Set var_94 = var_98(CInt(3))
  loc_1546435: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, CInt(0))
  loc_1546458: Set var_9C = var_A8(CInt(3))
  loc_154645E: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_AC)
  loc_1546466: (var_98.Text <> "Company") = var_A8.Text
  loc_1546482: Set var_B0 = var_B4(CInt(3))
  loc_1546488: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8)
  loc_1546490: ( And (var_AC <> "Staff")) = var_B4.Text
  loc_15464B6: If ( And (var_B8 <> "Member")) Then
  loc_15464C4:   Set var_94 = var_98(CInt(2))
  loc_15464CA:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_15464D2:   var_A0 = "Ledger A/C"
  loc_15464F3:   If (Proc_183_19_E8E68C(var_98) = 0) Then
  loc_15464FD:     Call Txt_GotFocus()
  loc_1546502:     Exit Sub
  loc_1546503:   End If
  loc_1546506: Else
  loc_1546514:   Set var_94 = var_98(CInt(2))
  loc_154651A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (vbNullString, CInt(2))
  loc_1546522:   var_98.Tag = var_A0
  loc_154652E: End If
  loc_1546532: Set var_94 = Me.TopCtrl1
  loc_1546538: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1546551: If (CStr() = "Add") Then
  loc_154655A:   var_E8 = 0
  loc_1546577:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From REVMAST WHERE SITE_CODE='" & MemVar_1F95070
  loc_154657E:   var_AC = CStr() & "' AND  SYSYN<>'Y'"
  loc_1546587:   unk_50F342.Execute var_AC, var_C8, -1
  loc_154658F:   var_94 = var_94.Fields
  loc_1546597:   var_E8 = var_98.Item(var_98)
  loc_154659F:   var_9C = var_9C.Value
  loc_15465D8:   var_108 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1546606:   var_118 = (1 + Format(CStr(var_F8), "0000"))
  loc_1546611:   global_100 = CStr(var_118)
  loc_1546626: Else
  loc_1546643:   var_98 = Me.Fields.Item("Code")
  loc_154665A:   global_100 = CStr(var_98.Value)
  loc_154666B: End If
  loc_1546674: unk_50F342.BeginTrans var_11C
  loc_154667D: var_86 = CByte(1) 'Byte
  loc_1546685: Set var_94 = Me.TopCtrl1
  loc_154668B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_15466A4: If (CStr(var_108) = "Add") Then
  loc_15466B5:   Set var_94 = var_98(CInt(0))
  loc_15466BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_AC)
  loc_15466C3:   var_F8 = var_98.Text
  loc_15466D6:   Set var_9C = var_A8(CInt(1))
  loc_15466DC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_124)
  loc_15466E4:    = var_A8.Text
  loc_15466F7:   Set var_B0 = var_B4(CInt(2))
  loc_15466FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_130)
  loc_1546705:    = var_B4.Tag
  loc_1546718:   Set var_13C = var_140(CInt(3))
  loc_154671E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_144)
  loc_1546726:    = var_140.Text
  loc_154672E:   var_C8 = Date
  loc_1546739:   Proc_6_7_F26918(var_F8)
  loc_154674C:   Set var_170 = var_174(CInt(3))
  loc_1546752:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_178)
  loc_154675A:   var_C8 = var_174.Text
  loc_154676A:   Set var_17C = var_180(CInt(5))
  loc_1546770:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546778:   var_190 = CVar(var_180) 'Address
  loc_154677F:   Proc_6_39_E7D3A0(var_1A0)
  loc_15467AE:   Set var_204 = var_208(CInt(3))
  loc_15467B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_20C)
  loc_15467BC:   var_190 = var_208.Text
  loc_15467CF:   Set var_210 = var_214(CInt(4))
  loc_15467D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_218)
  loc_15467DD:    = var_214.Tag
  loc_1546820:   Set var_2AC = var_2B0(CInt(6))
  loc_1546826:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546851:   var_A0 = "Insert Into REVMAST (Code,Name,ShortName,ACCode,PayType,Site_Code,SysYN,FieldType,U_Name,U_EntDt,U_AE,TYPE,BankCommPer,BankCommAc,ACPosting,LogSite_Code) Values ('" & global_100
  loc_1546858:   var_B8 = var_A0 & "','"
  loc_154685F:   var_120 = var_B8 & var_AC
  loc_1546866:   var_128 = var_120 & "','"
  loc_15468AC:   var_108 = CVar(var_128 & var_124 & "','" & var_130 & "','" & var_144 & "','" & MemVar_1F95078 & "','N','P','" & MemVar_1F950C8 & "',") 'String
  loc_15468D2:   var_288 = var_108 & var_F8 & ",'A','Dr'," & IIf((var_178 = "Credit Card"), var_1A0, 0) & ",'" & IIf((var_20C = "Credit Card"), CVar(Proc_6_38_E69628(CVar(var_218))), vbNullString) 
  loc_15468E2:   var_2D0 = CVar(Proc_6_38_E69628(CVar(var_2B0))) 'String
  loc_1546901:   var_340 = var_288 & "','" & var_2D0 & "','" & CVar(MemVar_1F95078) & "')" 
  loc_154690F:   unk_50F342.Execute CStr(var_340), var_364, -1
  loc_15469A2: Else
  loc_15469AD:   Set var_94 = var_98(CInt(0))
  loc_15469B3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_368)
  loc_15469BB:   var_C8 = CVar(var_98) 'Address
  loc_15469C2:   Proc_6_17_EAAE40(var_F8)
  loc_15469D5:   Set var_9C = var_A8(CInt(2))
  loc_15469DB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0)
  loc_15469E3:   var_C8 = var_A8.Tag
  loc_15469F6:   Set var_B0 = var_B4(CInt(3))
  loc_15469FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_AC)
  loc_1546A04:    = var_B4.Text
  loc_1546A17:   Set var_13C = var_140(CInt(1))
  loc_1546A1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_B8)
  loc_1546A25:    = var_140.Text
  loc_1546A2D:   var_2C0 = Date
  loc_1546A38:   Proc_6_7_F26918(var_2D0)
  loc_1546A4B:   Set var_170 = var_174(CInt(3))
  loc_1546A51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_120)
  loc_1546A59:   var_2C0 = var_174.Text
  loc_1546A69:   Set var_17C = var_180(CInt(5))
  loc_1546A6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546A77:   var_320 = CVar(var_180) 'Address
  loc_1546A7E:   Proc_6_39_E7D3A0(var_340)
  loc_1546AAD:   Set var_204 = var_208(CInt(3))
  loc_1546AB3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_124)
  loc_1546ABB:   var_320 = var_208.Text
  loc_1546ACE:   Set var_210 = var_214(CInt(4))
  loc_1546AD4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_128)
  loc_1546ADC:    = var_214.Tag
  loc_1546B1F:   Set var_2AC = var_2B0(CInt(6))
  loc_1546B25:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1546B3F:   var_4B0 = global_100
  loc_1546B47:   Proc_6_17_EAAE40(var_4C0)
  loc_1546B61:   var_108 = "UPDATE REVMAST SET Name=" & var_F8 
  loc_1546B7D:   var_190 = var_108 & ",SITE_CODE='" & CVar(MemVar_1F95070) & "',ACCode='" 
  loc_1546B90:   var_1D0 = var_190 & CVar(var_A0) & "',PayType='" 
  loc_1546BAA:   var_248 = CVar(var_B8) 'String
  loc_1546BD9:   var_300 = var_1D0 & CVar(var_AC) & "',ShortName='" & var_248 & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_2D0 & " ,U_AE='E',TYPE='Dr',FieldType='P',BankCommPer=" 
  loc_1546BF0:   var_430 = var_300 & IIf((var_120 = "Credit Card"), var_340, 0) & ",BankCOmmAc='" & IIf((var_124 = "Credit Card"), CVar(Proc_6_38_E69628(CVar(var_128))), vbNullString) 
  loc_1546C00:   var_470 = CVar(Proc_6_38_E69628(CVar(var_2B0))) 'String
  loc_1546C2A:   unk_50F342.Execute CStr(var_430 & "',ACposting='" & var_470 & "' WHERE Code=" & var_4C0 & vbNullString), var_510, -1
  loc_1546CB8: End If
  loc_1546CDF: unk_50F342.Execute "Delete from CreditCardhistory where RevCode='" & global_100 & "'", var_C8, -1
  loc_1546D02: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_4(CByte(1)(var_8E))
  loc_1546D19: For var_514 =  To CByte((CLng(var_368) - 1)): var_4B0 = var_514 'Byte
  loc_1546D35:   Set var_94 = CVar(CLng(var_8E))(CVar(CLng(1)))
  loc_1546D3B:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_1546D64:   Set var_98 = CVar(CLng(var_8E))(CVar(CLng(1)))
  loc_1546D6A:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41((CStr() <> vbNullString))
  loc_1546D94:   Set var_9C = CVar(CLng(var_8E))(CVar(CLng(3)))
  loc_1546D9A:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41(( And (CStr() <> vbNullString)))
  loc_1546DC4:   Set var_A8 = CVar(CLng(var_8E))(CVar(CLng(4)))
  loc_1546DCA:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41(( And (CStr() <> vbNullString)))
  loc_1546DF4:   Set var_B0 = CVar(CLng(var_8E))(CVar(CLng(5)))
  loc_1546DFA:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41(( And (CStr() <> vbNullString)))
  loc_1546E35:   If ( And (CStr() <> vbNullString)) Then
  loc_1546E3D:     var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1546E4E:     Set var_94 = var_D8(CVar(CLng(1)))
  loc_1546E54:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_1546E5F:     var_F8 = CVar(CStr()) 'String
  loc_1546E65:     Proc_6_7_F26918(var_108)
  loc_1546E78:     Proc_6_17_EAAE40(var_190, global_100)
  loc_1546E93:     Set var_98 = CVar(CLng(var_8E))(CVar(CLng(2)))
  loc_1546E99:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41(var_F8)
  loc_1546EBB:     Set var_9C = CVar(CLng(var_8E))(CVar(CLng(6)))
  loc_1546EC1:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_1546EE3:     Set var_A8 = CVar(CLng(var_8E))(CVar(CLng(4)))
  loc_1546EE9:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_1546EFC:     var_78C = Val(CStr())
  loc_1546F15:     Set var_B0 = CVar(CLng(var_8E))(CVar(CLng(8)))
  loc_1546F1B:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41(var_78C)
  loc_1546F2E:     var_794 = Val(CStr())
  loc_1546F47:     Set var_B4 = CVar(CLng(var_8E))(CVar(CLng(9)))
  loc_1546F4D:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41(var_794)
  loc_1546F79:     Set var_13C = CVar(CLng(var_8E))(CVar(CLng(&HA)))
  loc_1546F7F:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_41()
  loc_1546F92:     var_79C = Val(CStr())
  loc_1546FA3:     Proc_6_7_F26918(var_430, Date)
  loc_1546FAC:     Set var_140 = Me.TopCtrl1
  loc_1546FB2:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_79C)
  loc_1546FF6:     var_238 = "Insert into CreditCardhistory (AppDate,RevCode,TaxStru,CommAc,CommPer,Limit,CompOperator,Limit1,U_EntDt,U_AE,U_Name,Site_Code,LogSite_Code) values("
  loc_1546FFE:     var_118 = var_238 & var_108 
  loc_154705E:     var_300 = var_118 & "," & var_190 & ",'" & CVar(CStr(var_1D0)) & "','" & CVar(CStr(var_248)) & "'," & CVar(var_78C) & ",'" & CVar(var_794) 
  loc_15470A5:     var_4D0 = var_300 & "','" & CVar(Proc_6_38_E69628(CVar(CStr()))) & "','" & CVar(var_79C) & "'," & var_430 & ",'" & IIf((CStr(var_470) = "Add"), "A", "E") 
  loc_15470F5:     unk_50F342.Execute CStr(var_4D0 & "','" & CVar(MemVar_1F950C8) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_784, -1
  loc_1547181:   End If
  loc_1547184: Next var_514 'Byte
  loc_1547190: Call Proc_17_50_105F44C(global_100)
  loc_154719B: unk_50F342.CommitTrans
  loc_15471A4: var_86 = CByte(0) 'Byte
  loc_15471B3: Me.Requery -1
  loc_15471C3: Me.Requery -1
  loc_15471F0: Me.Find "Code='" & global_100 & "'", 0, 1
  loc_1547200: Set var_94 = Me.TopCtrl1
  loc_1547206: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D8)
  loc_154721F: If (CStr() = "Add") Then
  loc_1547222:   Call TopCtrl1_UnknownEvent_A()
  loc_1547227:   Exit Sub
  loc_1547228: End If
  loc_154723D: var_A0 = "INI"
  loc_154724B: Call Proc_17_51_E8ADA0(Proc_5_1_100EC1C(var_A0, Me))
  loc_1547256: Call Proc_17_53_14AA488(global_52)
  loc_154725B: Exit Sub
  loc_154725C: ' Referenced from: 15463CC
  loc_1547265: If (CInt(var_86) = 1) Then
  loc_154726E:   unk_50F342.RollbackTrans
  loc_1547273: End If
  loc_154727B: Set var_94 = Err()
  loc_1547281: Call 0.Method_arg_2C (var_A0)
  loc_154729A: MsgBox(CVar(var_A0), &H10, var_F8, var_108, var_118)
  loc_15472AD: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'F3D1D4
  'Data Table: 50F338
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D0CB: Me.DGLedgerAc.Visible = False
  loc_F3D0EA: If (Me.RecordCount > 0) Then
  loc_F3D129:   Set var_B4 = var_B8(CInt(2))
  loc_F3D12F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F3D137:   var_B8.Tag = 
  loc_F3D16A:   var_B0 = Me.Fields.Item("Name")
  loc_F3D189:   Set var_B4 = var_B8(CInt(2))
  loc_F3D18F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F3D197:   var_B8.Text = 
  loc_F3D1AD: End If
  loc_F3D1B8: Set var_A8 = var_B0(CInt(2))
  loc_F3D1BE: Call 0.Method_DGLedgerAc_UnknownEvent_90 ()
  loc_F3D1C6: var_B0.SetFocus
  loc_F3D1D2: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'E6ED60
  'Data Table: 50F338
  loc_E6ED1E: Proc_6_153_E91D24(Me.DGLedgerAc, arg_14)
  loc_E6ED35: Set var_8C = Me.FGPoint
  loc_E6ED51: Proc_6_138_106E830(Me.DGLedgerAc, global_60, CInt(2))
  loc_E6ED5F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12A6EA8
  'Data Table: 50F338
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Variant
  Dim var_B4 As Variant
  loc_12A68B2: Set var_88 = var_8C(Index)
  loc_12A68B8: Call 0.Method_Txt_GotFocus0 ()
  loc_12A68C6: Proc_6_74_E23240(var_8C)
  loc_12A68D2: Call Proc_17_56_F6BF68()
  loc_12A68D7: On Error Goto loc_12A6E62
  loc_12A68DD: var_92 = Index
  loc_12A68E8: If (var_92 = CInt(0)) Then
  loc_12A6902:   If (Me.RecordCount > 0) Then
  loc_12A6910:     Set var_8C = Me.FGPoint
  loc_12A6928:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_12A6936:   End If
  loc_12A6984:   Set var_88 = var_8C(Index)
  loc_12A698A:   Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12A6992:   var_8C = var_8C.Text
  loc_12A69AA:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_12A69AD:     Exit Sub
  loc_12A69AE:   End If
  loc_12A69BB:   Set var_88 = var_8C(Index)
  loc_12A69C1:   Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12A69C9:    = var_8C.Text
  loc_12A69DB:   var_B0 = "Name"
  loc_12A6A16:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12A6A1F:     Me.MoveFirst
  loc_12A6A42:     Set var_88 = var_8C(Index)
  loc_12A6A48:     Call 0.Method_Txt_GotFocus0 (var_A0, "Name ='", 0)
  loc_12A6A50:     1 = var_8C.Text
  loc_12A6A69:     Me.Find var_B0 & var_A0 & "'", , 
  loc_12A6A7E:   End If
  loc_12A6A81: Else
  loc_12A6A89:   If (var_92 = CInt(2)) Then
  loc_12A6AA3:     If (Me.RecordCount > 0) Then
  loc_12A6AB1:       Set var_8C = Me.FGPoint
  loc_12A6AC9:       Proc_6_137_1192FDC(Me.DGLedgerAc, global_60)
  loc_12A6AD7:     End If
  loc_12A6AE0:     var_98 = Me.RecordCount
  loc_12A6B25:     Set var_88 = var_8C(Index)
  loc_12A6B2B:     Call 0.Method_Txt_GotFocus0 (var_A0, ((var_98 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12A6B33:     Index = var_8C.Text
  loc_12A6B4B:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12A6B4E:       Exit Sub
  loc_12A6B4F:     End If
  loc_12A6B5C:     Set var_88 = var_8C(Index)
  loc_12A6B62:     Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12A6B6A:      = var_8C.Text
  loc_12A6B7C:     var_B0 = "Name"
  loc_12A6BB7:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12A6BC0:       Me.MoveFirst
  loc_12A6BE3:       Set var_88 = var_8C(Index)
  loc_12A6BE9:       Call 0.Method_Txt_GotFocus0 (var_A0, "Name ='", 0)
  loc_12A6BF1:       1 = var_8C.Text
  loc_12A6C0A:       Me.Find var_B0 & var_A0 & "'", , 
  loc_12A6C1F:     End If
  loc_12A6C22:   Else
  loc_12A6C2A:     If (var_92 = CInt(3)) Then
  loc_12A6C3A:       ReDim var_F0(0 To &HC)
  loc_12A6C51:       var_F0(0) = "Cash"
  loc_12A6C60:       var_F0(1) = "Cheque"
  loc_12A6C6F:       var_F0(2) = "Complementary"
  loc_12A6C7E:       var_F0(3) = "Company"
  loc_12A6C8D:       var_F0(4) = "Cash Card"
  loc_12A6C9C:       var_F0(5) = "Credit Card"
  loc_12A6CAB:       var_F0(6) = "Hold"
  loc_12A6CBA:       var_F0(7) = "Member"
  loc_12A6CC9:       var_F0(8) = "Other"
  loc_12A6CD8:       var_F0(9) = "Room"
  loc_12A6CE7:       var_F0(&HA) = "Staff"
  loc_12A6CF6:       var_F0(&HB) = "UPI"
  loc_12A6D05:       var_F0(&HC) = "Void"
  loc_12A6D1C:       global_76 = Array(var_F0)
  loc_12A6D27:       Set var_B4 = Me.ListView
  loc_12A6D42:       Set var_8C = (global_76)
  loc_12A6D5C:       Set global_92 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_12A6D7A:       Set var_88 = var_8C(Index)
  loc_12A6D80:       Call 0.Method_Txt_GotFocus0 (var_A0, global_76)
  loc_12A6D88:       &HD = var_8C.Text
  loc_12A6D9A:       Set var_90 = var_B4(Index)
  loc_12A6DA0:       Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_12A6DA8:       var_B4.Tag = 
  loc_12A6DC9:       Set var_88 = var_8C(CInt(3))
  loc_12A6DCF:       Call 0.Method_Txt_GotFocus0 (var_98)
  loc_12A6DD7:        = var_8C.Left
  loc_12A6DE9:       Me.FrmList.Left = var_98
  loc_12A6E05:       Set var_90 = var_B4(CInt(3))
  loc_12A6E0B:       Call 0.Method_Txt_GotFocus0 (var_1B8)
  loc_12A6E13:        = var_B4.Height
  loc_12A6E26:       Set var_88 = var_8C(CInt(3))
  loc_12A6E2C:       Call 0.Method_Txt_GotFocus0 (var_98)
  loc_12A6E34:        = var_8C.Top
  loc_12A6E4F:       Me.FrmList.Top = ((var_98 + var_1B8) + CDbl(&H1E))
  loc_12A6E61:     End If
  loc_12A6E61:   End If
  loc_12A6E61: End If
  loc_12A6E61: Exit Sub
  loc_12A6E62: ' Referenced from: 12A68D7
  loc_12A6E6A: Set var_88 = Err()
  loc_12A6E70: Call 0.Method_arg_2C (var_A0)
  loc_12A6E91: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_1C8)
  loc_12A6EA4: Exit Sub
  loc_12A6EA5: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12B657C
  'Data Table: 50F338
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Variant
  Dim var_9C As Frame
  Dim var_110 As Variant
  loc_12B5F76: If (CLng(Shift) = &H1B) Then
  loc_12B5F79:   Call Proc_17_56_F6BF68()
  loc_12B5F7E:   Exit Sub
  loc_12B5F7F: End If
  loc_12B5F82: var_86 = KeyCode
  loc_12B5F8D: If (var_86 = CInt(0)) Then
  loc_12B5FA8:   Set var_9C = Nothing
  loc_12B5FDA:   Proc_6_79_11AD564(Me.DGHelp, (var_86), CInt(0), global_56, Shift)
  loc_12B6045:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12B606B:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_12B6079:   End If
  loc_12B607C: Else
  loc_12B6084:   If (var_86 = CInt(2)) Then
  loc_12B6092:     Set var_B0 = 1(0)
  loc_12B609F:     Set var_A4 = Nothing
  loc_12B60AA:     Set var_9C = Nothing
  loc_12B60DC:     Proc_6_69_134A630(Me.DGLedgerAc, var_B0, CInt(2), global_60, Shift, 0)
  loc_12B60F9:     var_AC = Me.RecordCount
  loc_12B6149:     If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12B6150:       Set var_9C = Me.DGLedgerAc
  loc_12B6157:       Set var_90 = Me.FGPoint
  loc_12B616F:       Proc_6_138_106E830(var_9C, global_60, KeyCode, var_90, 1)
  loc_12B617D:     End If
  loc_12B6180:   Else
  loc_12B6188:     If (var_86 = CInt(3)) Then
  loc_12B61AD:       Set var_8C = var_90(KeyCode)
  loc_12B61B3:       Call 0.Method_Txt_KeyDown0 (var_AC, 0)
  loc_12B61BB:       var_9C = var_90.Left
  loc_12B61CD:       Set var_9C = var_A4(KeyCode)
  loc_12B61D3:       Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_12B61DB:       0 = var_A4.Top
  loc_12B61ED:       Set var_A8 = var_B0(KeyCode)
  loc_12B61F3:       Call 0.Method_Txt_KeyDown0 (var_B8)
  loc_12B61FB:        = var_B0.Height
  loc_12B620D:       Set var_BC = var_C0(KeyCode)
  loc_12B6213:       Call 0.Method_Txt_KeyDown0 (var_C4)
  loc_12B621B:        = var_C0.Width
  loc_12B6267:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, var_A4(var_9C), KeyCode, Shift)
  loc_12B62C6:       Set var_8C = var_90(KeyCode)
  loc_12B62CC:       Call 0.Method_Txt_KeyDown0 (var_E0, (((((Shift = &HD) Or (CLng(Shift) = &H26)) Or (Shift = &H10)) Or (CLng(Shift) = &H28)) Or (CLng(Shift) = 9)), arg_14, CInt(var_AC))
  loc_12B62D4:       CInt(((var_B4 + var_B8) + CDbl(&H19))) = var_90.Text
  loc_12B62EC:       If (CInt(var_C4) And (var_E0 = "Credit Card")) Then
  loc_12B62FB:         3380(&HFF).Visible = 
  loc_12B6306:       Else
  loc_12B6312:         (0).Visible = 
  loc_12B631A:       End If
  loc_12B631D:     Else
  loc_12B6325:       If (var_86 = CInt(5)) Then
  loc_12B6332:         Set var_8C = var_90(KeyCode)
  loc_12B6338:         Call 0.Method_Txt_KeyDown0 ()
  loc_12B6353:         Proc_6_41_FA1734(var_90, Shift)
  loc_12B635F:       End If
  loc_12B635F:     End If
  loc_12B635F:   End If
  loc_12B635F: End If
  loc_12B6379: Set var_90 = Me.DGLedgerAc
  loc_12B6399: var_92 = Me.FrmList.Visible
  loc_12B63AF: var_110 = 2((((CBool(Me.DGHelp.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (var_92 = 0))).Visible
  loc_12B63D0: If (2 And (CBool(var_110) = 0)) Then
  loc_12B63F6:   Set var_8C = var_90(CInt(4))
  loc_12B63FC:   Call 0.Method_Txt_KeyDown0 (var_92)
  loc_12B6404:   ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) = var_90.Visible
  loc_12B6420:   If (( And (var_92 = 0)) And (KeyCode = CInt(3))) Then
  loc_12B6426:     Call Proc_17_55_10BA71C(var_92)
  loc_12B6431:     If (var_92 = &HFF) Then
  loc_12B6441:       Set var_8C = var_90(KeyCode)
  loc_12B6447:       Call 0.Method_Txt_KeyDown0 (vbNullString)
  loc_12B644F:       var_90.Text = 
  loc_12B645B:       Exit Sub
  loc_12B645C:     End If
  loc_12B6493:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_12B6496:       Call TopCtrl1_UnknownEvent_16()
  loc_12B649B:     End If
  loc_12B649B:     Exit Sub
  loc_12B649C:   End If
  loc_12B64BA:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_12B64C0:     Call Proc_17_55_10BA71C(var_92)
  loc_12B64CB:     If (var_92 = &HFF) Then
  loc_12B64DB:       Set var_8C = var_90(KeyCode)
  loc_12B64E1:       Call 0.Method_Txt_KeyDown0 (vbNullString)
  loc_12B64E9:       var_90.Text = 
  loc_12B64F5:       Exit Sub
  loc_12B64F6:     End If
  loc_12B652D:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_12B6530:       Call TopCtrl1_UnknownEvent_16()
  loc_12B6535:     End If
  loc_12B6535:     Exit Sub
  loc_12B6536:   End If
  loc_12B654B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12B6554:     Proc_6_75_E5335C(Shift)
  loc_12B6559:   End If
  loc_12B656C:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12B6575:     Proc_6_76_E533C8(Shift, arg_14)
  loc_12B657A:   End If
  loc_12B657A: End If
  loc_12B657A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FAAE7C
  'Data Table: 50F338
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_FAACFA: Proc_6_133_E7FB08(var_94)
  loc_FAAD03: arg_10 = CInt(var_94)
  loc_FAAD0C: Proc_6_58_E06050(arg_10, arg_10)
  loc_FAAD14: var_96 = KeyAscii
  loc_FAAD1F: If (var_96 = CInt(2)) Then
  loc_FAAD3E:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_FAAD45:     Set var_A8 = arg_10(var_96)
  loc_FAAD50:     var_A0 = "Name"
  loc_FAAD6B:     Proc_6_89_1470B00(var_A8, KeyAscii, global_60)
  loc_FAAD7A:   End If
  loc_FAAD7D: Else
  loc_FAAD85:   If (var_96 = CInt(5)) Then
  loc_FAAD92:     Set var_9C = var_A8(KeyAscii)
  loc_FAAD98:     Call 0.Method_Txt_KeyPress0 (arg_10, var_A0)
  loc_FAADB3:     Proc_6_42_129B55C(var_A8, arg_10, 2)
  loc_FAADC2:   Else
  loc_FAADCA:     If (var_96 = CInt(6)) Then
  loc_FAADF6:       If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_FAAE06:         Set var_9C = var_A8(KeyAscii)
  loc_FAAE0C:         Call 0.Method_Txt_KeyPress0 ("Detailed", 2)
  loc_FAAE14:         var_A8.Text = 0
  loc_FAAE23:       Else
  loc_FAAE4C:         If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_FAAE5C:           Set var_9C = var_A8(KeyAscii)
  loc_FAAE62:           Call 0.Method_Txt_KeyPress0 ("Summarize")
  loc_FAAE6A:           var_A8.Text = 
  loc_FAAE76:         End If
  loc_FAAE76:       End If
  loc_FAAE78:       arg_10 = 0
  loc_FAAE7B:     End If
  loc_FAAE7B:   End If
  loc_FAAE7B: End If
  loc_FAAE7B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FC1454
  'Data Table: 50F338
  Dim var_86 As Integer
  loc_FC12AB: var_86 = KeyCode
  loc_FC12B6: If (var_86 = CInt(0)) Then
  loc_FC12D5:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FC12E2:     var_A4 = "Name"
  loc_FC1301:     Proc_6_80_FF1F20((var_86), CInt(0), global_56)
  loc_FC131B:     Set var_A8 = Me.FGPoint
  loc_FC1333:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode)
  loc_FC1341:   End If
  loc_FC1344: Else
  loc_FC134C:   If (var_86 = CInt(2)) Then
  loc_FC136B:     If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_FC137F:       var_A4 = "Name"
  loc_FC13A7:       Proc_6_68_12A2818(Me.DGLedgerAc, Shift(var_A8), CInt(2), global_60)
  loc_FC13DD:       Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint)
  loc_FC13EB:     End If
  loc_FC13EE:   Else
  loc_FC13F6:     If (var_86 = CInt(3)) Then
  loc_FC1414:       If (Me.FrmList.Visible = &HFF) Then
  loc_FC1443:         Proc_6_64_F299E8(Me.ListView, var_A4(Shift), KeyCode)
  loc_FC1453:       End If
  loc_FC1453:     End If
  loc_FC1453:   End If
  loc_FC1453: End If
  loc_FC1453: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C89C
  'Data Table: 50F338
  loc_E4C87A: Set var_88 = var_8C(Index)
  loc_E4C880: Call 0.Method_Txt_LostFocus0 ()
  loc_E4C88E: Proc_6_73_E23294(var_8C)
  loc_E4C89A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '114EE20
  'Data Table: 50F338
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C4 As TextBox
  loc_114EA7B: var_86 = Cancel
  loc_114EA86: If (var_86 = CInt(0)) Then
  loc_114EA8C:   Call Proc_17_55_10BA71C(var_88)
  loc_114EA97:   If (var_88 = &HFF) Then
  loc_114EA9C:     arg_10 = &HFF
  loc_114EA9F:     Exit Sub
  loc_114EAA0:   End If
  loc_114EAA4:   Set var_8C = Me.TopCtrl1
  loc_114EAAA:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_114EAB2:   var_A0 = CStr(var_86)
  loc_114EAC3:   If (var_A0 = "Add") Then
  loc_114EAD3:     ("User Defined").Caption = 
  loc_114EADB:   End If
  loc_114EADE: Else
  loc_114EAE6:   If (var_86 = CInt(2)) Then
  loc_114EB37:     Set var_8C = var_AC(Cancel)
  loc_114EB3D:     Call 0.Method_Txt_Validate0 (var_A0)
  loc_114EB45:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_114EB5D:     If ( Or (var_A0 = vbNullString)) Then
  loc_114EB60:       Exit Sub
  loc_114EB61:     End If
  loc_114EB9C:     Set var_C0 = var_C4(Cancel)
  loc_114EBA2:     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_114EBAA:     var_C4.Text = 
  loc_114EBDD:     var_AC = Me.Fields.Item("Code")
  loc_114EBEE:     var_A0 = CStr(var_AC.Value)
  loc_114EBFB:     Set var_C0 = var_C4(Cancel)
  loc_114EC01:     Call 0.Method_Txt_Validate0 (var_A0)
  loc_114EC09:     var_C4.Tag = 
  loc_114EC22:   Else
  loc_114EC2A:     If (var_86 = CInt(4)) Then
  loc_114EC4D:       var_88 = Me.EOF
  loc_114EC7B:       Set var_8C = var_AC(Cancel)
  loc_114EC81:       Call 0.Method_Txt_Validate0 (var_A0)
  loc_114EC89:       ((Me.RecordCount = 0) Or ((var_88 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_114ECA1:       If ( Or (var_A0 = vbNullString)) Then
  loc_114ECA4:         Exit Sub
  loc_114ECA5:       End If
  loc_114ECE0:       Set var_C0 = var_C4(Cancel)
  loc_114ECE6:       Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_114ECEE:       var_C4.Text = 
  loc_114ED21:       var_AC = Me.Fields.Item("Code")
  loc_114ED32:       var_A0 = CStr(var_AC.Value)
  loc_114ED3F:       Set var_C0 = var_C4(Cancel)
  loc_114ED45:       Call 0.Method_Txt_Validate0 (var_A0)
  loc_114ED4D:       var_C4.Tag = 
  loc_114ED66:     Else
  loc_114ED6E:       If (var_86 = CInt(3)) Then
  loc_114ED7E:         Set var_8C = var_AC(Cancel)
  loc_114ED84:         Call 0.Method_Txt_Validate0 (var_A0)
  loc_114ED8C:          = var_AC.Text
  loc_114EDA3:         If (var_A0 <> vbNullString) Then
  loc_114EDD6:           Set var_C0 = var_C4(Cancel)
  loc_114EDDC:           Call 0.Method_Txt_Validate0 (Me.ListView.SelectedItem.Text)
  loc_114EDE4:           var_C4.Text = 
  loc_114EDFA:         End If
  loc_114EDFD:       Else
  loc_114EE05:         If (var_86 = CInt(1)) Then
  loc_114EE0B:           Call Proc_17_54_106EAE8(var_88)
  loc_114EE16:           If (var_88 = &HFF) Then
  loc_114EE1B:             arg_10 = &HFF
  loc_114EE1E:             Exit Sub
  loc_114EE1F:           End If
  loc_114EE1F:         End If
  loc_114EE1F:       End If
  loc_114EE1F:     End If
  loc_114EE1F:   End If
  loc_114EE1F: End If
  loc_114EE1F: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5DEEC
  'Data Table: 50F338
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  loc_F5DE0E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5DE15:   Set var_A8 = Me.ListView
  loc_F5DE2B:   var_CC = Val(CStr(var_A8.Tag))
  loc_F5DE5F:   Set var_C0 = var_C4(CInt(var_CC))
  loc_F5DE65:   Call 0.Method_ListView_UnknownEvent_130 (Me.ListView.SelectedItem.Text)
  loc_F5DE6D:   var_C4.Text = var_CC
  loc_F5DE8D: End If
  loc_F5DE99: Me.FrmList.Visible = False
  loc_F5DEBB: var_CC = Val(CStr(Me.ListView.Tag))
  loc_F5DEC9: Set var_9C = var_A8(CInt(var_CC))
  loc_F5DECF: Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_F5DED7: var_A8.SetFocus
  loc_F5DEEB: Exit Sub
End Sub

Private Sub Form_Load() '114B334
  'Data Table: 50F338
  Dim var_90 As Variant
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_50F342 As Connection15
  Dim var_C8 As Variant
  loc_114AF9C: On Error Goto loc_114B2F0
  loc_114AFAE: (CDbl(13500)).Left = 
  loc_114AFC5: (CDbl(7800)).Top = 
  loc_114AFDC: (CDbl(8160)).Top = 
  loc_114AFF3: (CDbl(13500)).Left = 
  loc_114B002: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_114B015: Me.FrDepart.BackColor = CLng(MemVar_1F951B4)
  loc_114B02A: Set var_90 = (CVar(CLng(MemVar_1F951B8)))
  loc_114B040: Set var_90 = FrDepart.DispID_12(CLng(MemVar_1F951B4))
  loc_114B046: var_90.BackColor = 
  loc_114B04E: Call Proc_17_57_1226A88()
  loc_114B06E: var_B8 = "SELECT Code,Name FROM REVMAST WHERE PayType<>'' AND PayType IS NOT NULL AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  ORDER BY Name"
  loc_114B077: unk_50F342.Execute var_B8, var_C8, -1
  loc_114B088: Set global_56 = var_90
  loc_114B0A6: CVarUnk
  loc_114B0AB: VerifyVarObj
  loc_114B0B7: LateIdStAd
  loc_114B0E0: var_B8 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_114B0E9: unk_50F342.Execute var_B8, var_C8, -1
  loc_114B118: CVarUnk
  loc_114B11D: VerifyVarObj
  loc_114B129: LateIdStAd
  loc_114B152: var_B8 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_114B15B: unk_50F342.Execute var_B8, var_C8, -1
  loc_114B18A: CVarUnk
  loc_114B18F: VerifyVarObj
  loc_114B19B: LateIdStAd
  loc_114B1CD: unk_50F342.Execute "SELECT Distinct Code,Name FROM taxstru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C8, -1
  loc_114B1FC: CVarUnk
  loc_114B201: VerifyVarObj
  loc_114B20D: LateIdStAd
  loc_114B22F: var_B4 = "SELECT P.*,P.Code as SearchCode,S.SubCode as LedgerCode,S.Name as LedgerName,PayType AS CCARD FROM REVMAST P Left join Subgroup S on S.SubCode=P.ACCode WHERE PayType<>'' AND PayType IS NOT NULL AND (P.LOGSITE_CODE='" & MemVar_1F95078
  loc_114B23F: unk_50F342.Execute var_B4 & "' or P.LOGSITE_CODE='HO') order by P.Name", var_C8, -1
  loc_114B271: Set var_90 = Me
  loc_114B27A: var_B4 = "INI"
  loc_114B288: Call Proc_17_51_E8ADA0(Proc_5_1_100EC1C(var_B4, var_90, Me.DGTaxMast, var_90, var_90, var_90(Me.DGLedgerAc), var_90), var_90, var_90, Me.DGHelp)
  loc_114B2A9: unk_50F342.Execute "Select [Option] Name,Flag,module_name from MenuHelp Where [Option] ='Banquet' and Flag='N'", var_C8, -1
  loc_114B2D1: If (var_90.RecordCount > 0) Then
  loc_114B2DC:   Set var_90 = Me.ChkBanq
  loc_114B2E2:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010007(True)
  loc_114B2EA: End If
  loc_114B2EA: Call Proc_17_53_14AA488(var_90, var_90, var_90)
  loc_114B2EF: Exit Sub
  loc_114B2F0: ' Referenced from: 114AF9C
  loc_114B2F8: Set var_90 = Err()
  loc_114B2FE: Call 0.Method_arg_2C (var_B4, global_56)
  loc_114B31F: MsgBox(CVar(var_B4), &H40, "Information", var_F4, var_114)
  loc_114B332: Exit Sub
  loc_114B333: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4AB8
  'Data Table: 50F338
  Dim var_8C As Label
  Dim var_B4 As Label
  loc_ED4A16: Call 0.Method_arg_50 (var_88)
  loc_ED4A28: (var_88).Caption = 
  loc_ED4A41: (CDbl(0)).Left = 
  loc_ED4A4D: Set var_A0 = Me.TopCtrl1
  loc_ED4A53: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4A60: Set var_8C = Me.TopCtrl1
  loc_ED4A66: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4A7A: Set var_B4 = ((CDbl() + CDbl(var_B0)))
  loc_ED4A80: var_B4.Top = 
  loc_ED4A9B: Call 0.Method_arg_100 (var_B8)
  loc_ED4AAD: (var_B8).Width = 
  loc_ED4AB5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E53C38
  'Data Table: 50F338
  loc_E53C0B: Set global_52 = Nothing
  loc_E53C1D: Set global_56 = Nothing
  loc_E53C2F: Set global_60 = Nothing
  loc_E53C36: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A5EC
  'Data Table: 50F338
  loc_E2A5C4: On Error Goto loc_E2A5E4
  loc_E2A5DB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A5E3: Exit Sub
  loc_E2A5E4: ' Referenced from: E2A5C4
  loc_E2A5E4: Proc_6_60_E63754(Shift)
  loc_E2A5E9: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F39554
  'Data Table: 50F338
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3944B: Me.DGHelp.Visible = False
  loc_F3946A: If (Me.RecordCount > 0) Then
  loc_F394A9:   Set var_B4 = var_B8(CInt(0))
  loc_F394AF:   Call 0.Method_DGHelp_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F394B7:   var_B8.Tag = 
  loc_F394EA:   var_B0 = Me.Fields.Item("Name")
  loc_F39509:   Set var_B4 = var_B8(CInt(0))
  loc_F3950F:   Call 0.Method_DGHelp_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F39517:   var_B8.Text = 
  loc_F3952D: End If
  loc_F39538: Set var_A8 = var_B0(CInt(0))
  loc_F3953E: Call 0.Method_DGHelp_UnknownEvent_90 ()
  loc_F39546: var_B0.SetFocus
  loc_F39552: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70DC0
  'Data Table: 50F338
  loc_E70D7E: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E70D95: Set var_8C = Me.FGPoint
  loc_E70DB1: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E70DBF: Exit Sub
End Sub

Private Sub DGBank_UnknownEvent_9 'FE79D8
  'Data Table: 50F338
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSFlexGrid
  Dim var_A4 As Variant
  loc_FE7813: (False).Visible = 
  loc_FE7832: If (Me.RecordCount > 0) Then
  loc_FE786F:   Set var_B4 = var_B8(0)
  loc_FE7875:   Call 0.Method_DGBank_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_FE787D:   var_B8.Text = 
  loc_FE78EF:   LateIdCallSt
  loc_FE791E:   var_A4 = CVar(CLng(CVar(CLng(().Row))(CVar(CLng(5))(CVar(CStr(Me.Fields.Item("Name").Value)))).Row)) 'Long
  loc_FE7948:   var_B0 = Me.Fields.Item("Code")
  loc_FE7961:   Set var_B8 = CVar(CLng(6))(CVar(CStr(var_B0.Value)))
  loc_FE7967:   LateIdCallSt
  loc_FE7983: End If
  loc_FE798F: Set var_A8 = var_B0(0)
  loc_FE7995: Call 0.Method_DGBank_UnknownEvent_90 (var_12E, var_B8)
  loc_FE799D: var_A4 = var_B0.Visible
  loc_FE79AF: If (var_12E = &HFF) Then
  loc_FE79BB:   Set var_A8 = var_B0(0)
  loc_FE79C1:   Call 0.Method_DGBank_UnknownEvent_90 ()
  loc_FE79C9:   var_B0.SetFocus
  loc_FE79D5: End If
  loc_FE79D5: Exit Sub
End Sub

Private Sub DGBank_UnknownEvent_1F 'E71BA0
  'Data Table: 50F338
  loc_E71B5E: Proc_6_153_E91D24((), arg_14)
  loc_E71B75: Set var_8C = Me.FGPoint
  loc_E71B8F: Proc_6_138_106E830((arg_18), global_68)
  loc_E71B9D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF914
  'Data Table: 50F338
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBF88A: On Error Goto loc_EBF8CF
  loc_EBF893: Me.MoveFirst
  loc_EBF8AD: var_8C = "code='" & MyValue
  loc_EBF8BD: Me.Find var_8C & "'", 0, 1
  loc_EBF8C9: Call Proc_17_53_14AA488(var_A0)
  loc_EBF8CE: Exit Sub
  loc_EBF8CF: ' Referenced from: EBF88A
  loc_EBF8D7: Set var_A4 = Err()
  loc_EBF8DD: Call 0.Method_arg_2C (var_8C)
  loc_EBF8FE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF911: Exit Sub
  loc_EBF912: Exit Sub
End Sub

Public Sub Proc_17_49_12159C0
  'Data Table: 50F338
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_D8 As String
  Dim unk_50F342 As Connection15
  Dim var_86 As Integer
  Dim var_8C As Recordset15
  Dim var_94 As Fields15
  Dim var_E8 As Variant
  Dim var_100 As Variant
  Dim var_104 As Frame
  Dim var_90 As Recordset15
  loc_1215512: Set var_94 = Me.ChkOutLet
  loc_1215518: Call 0.Method_Proc_17_49_12159C00 (0, var_98)
  loc_1215520: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_1215536: Set var_94 = Me.ChkBanq
  loc_121553C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_69(0)
  loc_1215550: Set var_94 = Me.ChkOutLet
  loc_1215556: Call 0.Method_Proc_17_49_12159C0C (var_BA, var_86)
  loc_1215564: For var_BE =  To (var_BA - 1): 1 = var_BE 'Integer
  loc_1215574:   Set var_94 = Me.ChkOutLet
  loc_121557A:   Call 0.Method_Proc_17_49_12159C00 (var_86)
  loc_121558B:   Me.ChkOutLet.Unload var_98
  loc_121559A: Next var_BE 'Integer
  loc_12155BD: Set var_94 = var_98(CInt(0))
  loc_12155C3: Call 0.Method_Proc_17_49_12159C00 (var_C8, "Select D.Name,D.Code,Case When IsNull(DP.PayCode,'')<>'' Then 1 Else 0 End Value from Depart D Left Join (Select RestCode,PayCode,LogSite_Code From DepartPay Where PayCode='", var_E8)
  loc_12155CB: -1 = var_98.Tag
  loc_12155E9: var_D8 = var_C4 & var_C8 & "' And LogSite_Code='" & MemVar_1F95078 & "') DP On D.Code=DP.RestCode And D.LogSite_Code=DP.LogSite_Code Where D.RestType In ('Outlet','FOM','Room Service') order by D.RestType"
  loc_12155F2: unk_50F342.Execute var_D8, , 
  loc_12155FD: Set var_8C = var_C4
  loc_121561B: var_86 = 0
  loc_1215632: If (var_8C.RecordCount > 0) Then
  loc_1215642:   Set var_94 = Me.ChkOutLet
  loc_1215648:   Call 0.Method_Proc_17_49_12159C00 (0, var_98)
  loc_1215650:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(True)
  loc_121565C:   ' Referenced from: 12158DA
  loc_121565C: End If
  loc_121566B: If Not(var_8C.EOF) Then
  loc_121569C:   Set var_C4 = Me.ChkOutLet
  loc_12156A2:   Call 0.Method_Proc_17_49_12159C00 (var_86, var_F0)
  loc_12156AA:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_FFFFFDFA(CVar(var_8C.Fields.Item("Name")))
  loc_12156E6:   var_100 = CVar(CStr(var_8C.Fields.Item("Code").Value)) 'String
  loc_12156F4:   Set var_C4 = Me.ChkOutLet
  loc_12156FA:   Call 0.Method_Proc_17_49_12159C00 (var_86, var_F0)
  loc_1215702:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B(var_100)
  loc_1215730:   var_98 = var_8C.Fields.Item("Value")
  loc_1215738:   var_E8 = CVar(var_98) 'Address
  loc_1215747:   Set var_C4 = Me.ChkOutLet
  loc_121574D:   Call 0.Method_Proc_17_49_12159C00 (var_86, var_F0)
  loc_1215755:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_69(var_E8)
  loc_1215769:   var_8C.MoveNext
  loc_1215774:   var_86 = (var_86 + 1)
  loc_1215788:   If (var_8C.EOF = 0) Then
  loc_1215795:     Set var_94 = Me.ChkOutLet
  loc_121579B:     Call 0.Method_Proc_17_49_12159C00 (var_86, var_98)
  loc_12157AC:     Me.ChkOutLet.Load var_98
  loc_12157C6:     Set var_94 = Me.ChkOutLet
  loc_12157CC:     Call 0.Method_Proc_17_49_12159C00 (var_86, var_98, True)
  loc_12157D4:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(var_86)
  loc_12157ED:     Set var_C4 = Me.ChkOutLet
  loc_12157F3:     Call 0.Method_Proc_17_49_12159C00 ((var_86 - 1), var_F0)
  loc_12157FB:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006(var_86)
  loc_1215811:     Set var_94 = Me.ChkOutLet
  loc_1215817:     Call 0.Method_Proc_17_49_12159C00 ((var_86 - 1))
  loc_121581F:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(var_98)
  loc_1215832:     var_A8 = CVar(((CDbl() + CDbl(var_100)) + CDbl(&H2D))) 'Single
  loc_1215841:     Set var_104 = Me.ChkOutLet
  loc_1215847:     Call 0.Method_Proc_17_49_12159C00 (var_86, var_108)
  loc_121584F:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(True)
  loc_1215874:     Set var_C4 = Me.ChkOutLet
  loc_121587A:     Call 0.Method_Proc_17_49_12159C00 (var_86)
  loc_1215882:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006(var_F0)
  loc_1215895:     Set var_94 = Me.ChkOutLet
  loc_121589B:     Call 0.Method_Proc_17_49_12159C00 (var_86)
  loc_12158A3:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(var_98)
  loc_12158C1:     Me.FrDepart.Height = ((CDbl() + CDbl(var_100)) + CDbl(&H64))
  loc_12158DA:   End If
  loc_12158DA:   GoTo loc_121565C
  loc_12158DD: End If
  loc_12158FB: Set var_94 = var_98(CInt(0))
  loc_1215901: Call 0.Method_Proc_17_49_12159C00 (var_C8, "select Restcode,Paycode,Case When IsNull(PayCode,'')<>'' Then 1 Else 0 End Value from DepartPay where restcode='banq'and PayCode='", var_E8)
  loc_1215909: -1 = var_98.Tag
  loc_1215922: unk_50F342.Execute var_C4 & var_C8 & "'", , 
  loc_121592D: Set var_90 = var_C4
  loc_1215959: If (var_90.RecordCount > 0) Then
  loc_1215964:   Set var_94 = Me.ChkBanq
  loc_121596A:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010007(True)
  loc_121599A:   Set var_C4 = Me.ChkBanq
  loc_12159A0:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_69(CVar(var_90.Fields.Item("Value")))
  loc_12159AF: End If
  loc_12159B4: Set var_8C = Nothing
  loc_12159BC: Set var_90 = Nothing
  loc_12159BF: Exit Sub
End Sub

Public Sub Proc_17_50_105F44C(arg_C) '105F44C
  'Data Table: 50F338
  Dim var_8C As String
  Dim var_94 As String
  Dim unk_50F342 As Connection15
  Dim var_D8 As String
  Dim var_108 As Variant
  Dim var_E8 As Variant
  Dim var_168 As Variant
  Dim var_F8 As Variant
  Dim var_B8 As Variant
  loc_105F23E: unk_50F342.Execute "Delete From DepartPay Where PayCode='" & arg_C & "' And LogSite_Code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_105F266: Call 0.Method_Proc_17_50_105F44C8 (var_BE, var_86)
  loc_105F271: For var_C2 = Me.ChkOutLet To var_BE: 0 = var_C2 'Integer
  loc_105F287:   Call 0.Method_Proc_17_50_105F44C0 (var_86, var_C8)
  loc_105F28F:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_69(Me.ChkOutLet)
  loc_105F2A4:   If (CInt() = 1) Then
  loc_105F2C1:     Set var_BC = Me.ChkOutLet
  loc_105F2C7:     Call 0.Method_Proc_17_50_105F44C0 (var_86, var_C8, "Insert Into DepartPay(RestCode,PayCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('")
  loc_105F2CF:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B(var_18C)
  loc_105F2D7:     var_8C = CStr(-1)
  loc_105F305:     var_D8 = var_190 & "Delete From DepartPay Where PayCode='" & arg_C & "','" & arg_C & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8
  loc_105F314:     var_E8 = CVar(Proc_6_14_EF402C(CVar(var_D8 & "',"))) 'String
  loc_105F31A:     Proc_183_8_EB1634(var_F8)
  loc_105F33E:     var_168 = var_E8 & var_F8 & ",'A','" & CVar(MemVar_1F95078) & "')" 
  loc_105F34C:     unk_50F342.Execute CStr(var_168), , 
  loc_105F384:   End If
  loc_105F387: Next var_C2 'Integer
  loc_105F396: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_69()
  loc_105F3A7: If (CInt() = 1) Then
  loc_105F3CC:   var_94 = "Insert Into DepartPay(RestCode,PayCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('BANQ','" & arg_C & "','" & MemVar_1F95070
  loc_105F3EF:   Proc_183_8_EB1634(var_E8, CVar(Proc_6_14_EF402C(CVar(var_94 & "','" & MemVar_1F950C8 & "',"), var_168)))
  loc_105F3F7:   var_108 = -1 & var_E8 
  loc_105F421:   unk_50F342.Execute CStr(CVar(var_D8 & "',") & ",'A','" & CVar(MemVar_1F95078) & "')"), Me.ChkBanq, 
  loc_105F44B: End If
  loc_105F44B: Exit Sub
End Sub

Public Sub Proc_17_51_E8ADA0(arg_C) 'E8ADA0
  'Data Table: 50F338
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E8AD3A: Set var_8C = var_86(var_8E)
  loc_E8AD40: Call 0.Method_Proc_17_51_E8ADA0C (CByte(0))
  loc_E8AD50: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_E8AD66:   Set var_8C = var_98(CInt(var_86))
  loc_E8AD6C:   Call 0.Method_Proc_17_51_E8ADA00 (arg_C)
  loc_E8AD74:   var_98.Enabled = 
  loc_E8AD83: Next var_92 'Byte
  loc_E8AD96: Me.FrDepart.Enabled = arg_C
  loc_E8AD9E: Exit Sub
End Sub

Public Sub Proc_17_52_F92544
  'Data Table: 50F338
  Dim var_98 As TextBox
  loc_F923E6: Set var_8C = var_86(var_8E)
  loc_F923EC: Call 0.Method_Proc_17_52_F92544C (CByte(0))
  loc_F923FC: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_F92412:   Set var_8C = var_98(CInt(var_86))
  loc_F92418:   Call 0.Method_Proc_17_52_F925440 (vbNullString)
  loc_F92420:   var_98.Text = 
  loc_F9243C:   Set var_8C = var_98(CInt(var_86))
  loc_F92442:   Call 0.Method_Proc_17_52_F925440 (vbNullString)
  loc_F9244A:   var_98.Tag = 
  loc_F92459: Next var_92 'Byte
  loc_F9246C: Set var_8C = (1)
  loc_F92472: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_F9247E: Set var_8C = ()
  loc_F92484: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_F9249D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_10000()
  loc_F924C0: Set var_8C = (1)
  loc_F924C6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6()
  loc_F924DC: Set var_8C = Me.ChkOutLet
  loc_F924E2: Call 0.Method_Proc_17_52_F925448 (var_8E, var_86)
  loc_F924EF: For var_DC =  To CByte(var_8E): CByte(0) = var_DC 'Byte
  loc_F92508:   Set var_8C = Me.ChkOutLet
  loc_F9250E:   Call 0.Method_Proc_17_52_F925440 (CInt(var_86), (CVar(CStr(CLng()))))
  loc_F92516:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_69(0)
  loc_F92525: Next var_DC 'Byte
  loc_F92535: Set var_8C = Me.ChkBanq
  loc_F9253B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_69(0)
  loc_F92543: Exit Sub
End Sub

Public Sub Proc_17_53_14AA488
  'Data Table: 50F338
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim unk_50F342 As Connection15
  Dim var_8C As Recordset15
  Dim var_120 As Variant
  Dim var_138 As Variant
  Dim var_10C As Variant
  Dim var_124 As TextBox
  loc_14A97E8: On Error Goto loc_14AA444
  loc_14A97F1: Proc_183_45_E5CCA8(global_52)
  loc_14A980D: If (Me.RecordCount > 0) Then
  loc_14A9866:   unk_50F342.Execute CStr("Select U_Name,U_AE,U_EntDt From revmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_11C, -1
  loc_14A9871:   Set var_8C = var_120
  loc_14A98C5:   var_120 = var_8C.Fields
  loc_14A992E:   var_188 = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14A9973:   (CStr(var_120 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_Name")), var_188)))).Caption = 
  loc_14A99ED:   var_124 = var_8C.Fields.Item("U_AE")
  loc_14A9A4E:   var_188 = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124)) = "E"), "Last Update : ", "entdt : "))
  loc_14A9A93:   (CStr(var_188 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_EntDt")))))).Caption = 
  loc_14A9ACB: End If
  loc_14A9AE2: If (Me.RecordCount <= 0) Then
  loc_14A9AE5:   Call Proc_17_52_F92544()
  loc_14A9AED: Else
  loc_14A9B21:   global_100 = CStr(Me.Fields.Item("Name").Value)
  loc_14A9B6E:   Set var_120 = var_124(CInt(0))
  loc_14A9B74:   Call 0.Method_Proc_17_53_14AA4880 (CStr(Me.Fields.Item("Name").Value))
  loc_14A9B7C:   var_124.Text = 
  loc_14A9BCE:   Set var_120 = var_124(CInt(0))
  loc_14A9BD4:   Call 0.Method_Proc_17_53_14AA4880 (CStr(Me.Fields.Item("Code").Value))
  loc_14A9BDC:   var_124.Tag = 
  loc_14A9C2E:   Set var_120 = var_124(CInt(1))
  loc_14A9C34:   Call 0.Method_Proc_17_53_14AA4880 (CStr(Me.Fields.Item("ShortName").Value))
  loc_14A9C3C:   var_124.Text = 
  loc_14A9C8B:   Set var_120 = var_124(CInt(2))
  loc_14A9C91:   Call 0.Method_Proc_17_53_14AA4880 (Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerName"))))
  loc_14A9C99:   var_124.Text = 
  loc_14A9CE6:   Set var_120 = var_124(CInt(2))
  loc_14A9CEC:   Call 0.Method_Proc_17_53_14AA4880 (Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerCode"))))
  loc_14A9CF4:   var_124.Tag = 
  loc_14A9D41:   Set var_120 = var_124(CInt(3))
  loc_14A9D47:   Call 0.Method_Proc_17_53_14AA4880 (Proc_6_38_E69628(CVar(Me.Fields.Item("CCARD"))))
  loc_14A9D4F:   var_124.Text = 
  loc_14A9D7D:   var_A8 = Me.Fields.Item("ACPosting")
  loc_14A9D8E:   var_FC = Proc_6_38_E69628(CVar(var_A8))
  loc_14A9D9C:   Set var_120 = var_124(CInt(6))
  loc_14A9DA2:   Call 0.Method_Proc_17_53_14AA4880 (var_FC)
  loc_14A9DAA:   var_124.Text = 
  loc_14A9DCC:   Set var_94 = var_A8(CInt(3))
  loc_14A9DD2:   Call 0.Method_Proc_17_53_14AA4880 (var_FC)
  loc_14A9DDA:    = var_A8.Text
  loc_14A9DF1:   If (var_FC = "Credit Card") Then
  loc_14A9E00:     (&HFF).Visible = 
  loc_14A9E0B:   Else
  loc_14A9E17:     (0).Visible = 
  loc_14A9E1F:   End If
  loc_14A9E59:   var_11C = "System Defined"
  loc_14A9E86:   Set var_120 = (CStr(IIf((Me.Fields.Item("SysYN").Value = "Y"), var_11C, "User Defined")))
  loc_14A9E8C:   var_120.Caption = 
  loc_14A9EB7:   Set var_94 = (1)
  loc_14A9EBD:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_14A9EC9:   Set var_94 = ()
  loc_14A9ECF:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_4()
  loc_14A9EE2:   Set var_A8 = (CVar(CStr(CLng())))
  loc_14A9EE8:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_10000()
  loc_14A9F0B:   Set var_94 = (1)
  loc_14A9F11:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6()
  loc_14A9F26:   Set var_94 = (1)
  loc_14A9F2C:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_14A9F41:   var_C8 = "Select SubGroup.Name,TaxStru.Name as Tstru,TaxStru,CommAc,CommPer,AppDate,CreditCardHistory.Limit,CreditCardHistory.CompOperator,CreditCardHistory.Limit1 from (CreditCardHistory inner join SubGroup on SubGroup.SubCode=CreditCardHistory.CommAc) inner join TaxStru on Taxstru.Code=CreditCardHistory.TaxStru  where Sno=1 and Revcode='"
  loc_14A9F80:   var_FC = CStr(var_C8 & Me.Fields.Item("Code").Value & "'")
  loc_14A9F8A:   unk_50F342.Execute var_FC, var_11C, -1
  loc_14A9F95:   Set var_88 = var_120
  loc_14A9FC6:   If (Me.Recordset15.RecordCount > 0) Then
  loc_14A9FC9:     ' Referenced from:   14AA433
  loc_14A9FDB:     If Not(Me.Recordset15.EOF) Then
  loc_14A9FE2:       Set var_1E8 = (var_120)
  loc_14A9FE8:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_14AA002:       Set var_94 = CVar(CLng())(CVar(CLng(0)))
  loc_14AA008:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A()
  loc_14AA01A:       LateIdCallSt
  loc_14AA031:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA03A:       var_C8 = CVar(CLng(CVar(CStr(CLng())))) 'Long
  loc_14AA042:       var_10C = CVar(CLng(1)) 'Long
  loc_14AA07C:       LateIdCallSt
  loc_14AA097:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA0A0:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("AppDate").Value)))) 'Long
  loc_14AA0A8:       var_10C = CVar(CLng(3)) 'Long
  loc_14AA0E2:       LateIdCallSt
  loc_14AA0FD:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA106:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("TStru").Value)))) 'Long
  loc_14AA10E:       var_10C = CVar(CLng(4)) 'Long
  loc_14AA148:       LateIdCallSt
  loc_14AA163:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA16C:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("CommPer").Value)))) 'Long
  loc_14AA174:       var_10C = CVar(CLng(2)) 'Long
  loc_14AA1AE:       LateIdCallSt
  loc_14AA1C9:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA1D2:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("TaxStru").Value)))) 'Long
  loc_14AA1DA:       var_10C = CVar(CLng(6)) 'Long
  loc_14AA214:       LateIdCallSt
  loc_14AA22F:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA238:       var_C8 = CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("CommAc").Value)))) 'Long
  loc_14AA240:       var_10C = CVar(CLng(5)) 'Long
  loc_14AA27A:       LateIdCallSt
  loc_14AA2B4:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA2F9:       LateIdCallSt
  loc_14AA314:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA325:       var_10C = CVar(CLng(9)) 'Long
  loc_14AA355:       var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompOperator")), var_10C, CVar(CLng(CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("Limit")), "0.00"))))), 1, 1, CVar(CLng(8)), CVar(CLng(CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))))) 'String
  loc_14AA35C:       LateIdCallSt
  loc_14AA392:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA39B:       var_E8 = CVar(CLng(var_F8)) 'Long
  loc_14AA3A3:       var_138 = CVar(CLng(&HA)) 'Long
  loc_14AA3B2:       var_C8 = "0.00"
  loc_14AA3C7:       var_F8 = Format(CVar(Me.Recordset15.Fields.Item("Limit1")), var_C8)
  loc_14AA3D7:       LateIdCallSt
  loc_14AA3F8:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_10000(vbNullString)
  loc_14AA403:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(var_1E8)
  loc_14AA412:       var_A4 = CVar((CLng(CVar(CStr(var_F8))) + 1)) 'Long
  loc_14AA41A:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_A(vbNullString)
  loc_14AA424:       Set var_1E8 = Nothing 
  loc_14AA42E:       Me.Recordset15.MoveNext
  loc_14AA433:       GoTo loc_14A9FC9
  loc_14AA436:     End If
  loc_14AA436:   End If
  loc_14AA436: End If
  loc_14AA43B: Set var_88 = Nothing
  loc_14AA43E: Call Proc_17_49_12159C0(1, 1, var_138, var_E8, var_10C)
  loc_14AA443: Exit Sub
  loc_14AA444: ' Referenced from: 14A97E8
  loc_14AA44C: Set var_94 = Err()
  loc_14AA452: Call 0.Method_arg_2C (var_FC, var_C8, var_10C)
  loc_14AA473: MsgBox(CVar(var_FC), &H40, "Information", var_F8, var_11C)
  loc_14AA486: Exit Sub
End Sub

Public Sub Proc_17_54_106EAE8
  'Data Table: 50F338
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim var_AC As String
  Dim unk_50F342 As Connection15
  Dim var_C0 As Recordset15
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  loc_106E888: Set var_8C = Me.TopCtrl1
  loc_106E88E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_106E896: var_A0 = CStr()
  loc_106E8A7: If (var_A0 = "Add") Then
  loc_106E8D7:   Set var_8C = var_A4(CInt(1))
  loc_106E8DD:   Call 0.Method_Proc_17_54_106EAE80 (var_A0, "Select Count(*) From RevMast Where ShortName='", var_9C, -1, var_C0)
  loc_106E8E5:   var_C4 = var_A4.Text
  loc_106E8F5:   var_AC = 0 & var_A0 & "'"
  loc_106E8FE:   unk_50F342.Execute var_AC, var_D8, var_E8
  loc_106E906:    = var_C0.Fields
  loc_106E90E:    = var_C4.Item()
  loc_106E916:    = var_D8.Value
  loc_106E943:   If (var_E8 > 0) Then
  loc_106E951:     var_E8 = "Information"
  loc_106E961:     var_9C = "Duplicate Short Name"
  loc_106E967:     MsgBox(var_9C, &H40, var_E8, var_108, var_128)
  loc_106E982:     Set var_8C = var_A4(CInt(1))
  loc_106E988:     Call 0.Method_Proc_17_54_106EAE80 ()
  loc_106E990:     var_A4.SetFocus
  loc_106E9A1:     Proc_17_54_106EAE8 = &HFF
  loc_106E9A7:   End If
  loc_106E9AA: Else
  loc_106E9D7:   Set var_8C = var_A4(CInt(1))
  loc_106E9DD:   Call 0.Method_Proc_17_54_106EAE80 (var_A0, "Select Count(*) From RevMast Where ShortName='", var_9C, -1, var_D8)
  loc_106EA06:   Set var_C0 = var_C4(CInt(0))
  loc_106EA0C:   Call 0.Method_Proc_17_54_106EAE80 (var_AC, 0 & var_A0 & "' And Code<>'")
  loc_106EA2D:   unk_50F342.Execute var_E8 & var_AC & "'", , 
  loc_106EA35:    = var_D8.Fields
  loc_106EA3D:    = var_A4.Text.Item()
  loc_106EA45:    = var_C4.Tag.Value
  loc_106EA7C:   If (var_E8 > 0) Then
  loc_106EAA0:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_106EABB:     Set var_8C = var_A4(CInt(1))
  loc_106EAC1:     Call 0.Method_Proc_17_54_106EAE80 ()
  loc_106EAC9:     var_A4.SetFocus
  loc_106EADA:     Proc_17_54_106EAE8 = &HFF
  loc_106EAE0:   End If
  loc_106EAE0: End If
  loc_106EAE0: Proc_17_54_106EAE8 = 
End Sub

Public Sub Proc_17_55_10BA71C
  'Data Table: 50F338
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_50F342 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_114 As Variant
  Dim var_A0 As Variant
  Dim var_134 As Variant
  Dim var_AC As String
  loc_10BA48F: If (Me.RecordCount = 0) Then
  loc_10BA492:   Proc_17_55_10BA71C = 
  loc_10BA498: End If
  loc_10BA49C: Set var_90 = Me.TopCtrl1
  loc_10BA4A2: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10BA4BB: If (CStr() = "Add") Then
  loc_10BA4F9:   Set var_90 = var_A8(CInt(0))
  loc_10BA4FF:   Call 0.Method_Proc_17_55_10BA71C0 (var_AC, "Select Count(*) From REVMAST Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1, var_CC)
  loc_10BA507:   var_D0 = var_A8.Text
  loc_10BA520:   unk_50F342.Execute 0 & var_AC & "'", var_E4, var_F4
  loc_10BA528:    = var_CC.Fields
  loc_10BA530:    = var_D0.Item()
  loc_10BA538:    = var_E4.Value
  loc_10BA569:   If (var_F4 > 0) Then
  loc_10BA577:     var_F4 = "Information"
  loc_10BA58D:     MsgBox("Duplicate  Name", &H40, var_F4, var_114, var_134)
  loc_10BA5A8:     Set var_90 = var_A8(CInt(0))
  loc_10BA5AE:     Call 0.Method_Proc_17_55_10BA71C0 ()
  loc_10BA5B6:     var_A8.SetFocus
  loc_10BA5C7:     Proc_17_55_10BA71C = &HFF
  loc_10BA5CD:   End If
  loc_10BA5D0: Else
  loc_10BA5FA:   var_114 = CVar("Select Count(*) From REVMAST Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name=") 'String
  loc_10BA608:   Set var_90 = var_A8(CInt(0))
  loc_10BA60E:   Call 0.Method_Proc_17_55_10BA71C0 (var_114, var_184, -1, var_CC)
  loc_10BA61D:   Proc_6_17_EAAE40(var_F4, CVar(var_A8), var_D0)
  loc_10BA625:   var_134 = 0 & var_F4 
  loc_10BA640:   Proc_6_17_EAAE40(var_154, global_100, var_134 & "And Name <>")
  loc_10BA65F:   unk_50F342.Execute CStr(var_E4 & var_154 & vbNullString), var_1A4, 
  loc_10BA667:    = var_CC.Fields
  loc_10BA66F:    = var_D0.Item()
  loc_10BA677:    = var_E4.Value
  loc_10BA6B0:   If (var_1A4 > 0) Then
  loc_10BA6D4:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10BA6EF:     Set var_90 = var_A8(CInt(0))
  loc_10BA6F5:     Call 0.Method_Proc_17_55_10BA71C0 ()
  loc_10BA6FD:     var_A8.SetFocus
  loc_10BA70E:     Proc_17_55_10BA71C = &HFF
  loc_10BA714:   End If
  loc_10BA714: End If
  loc_10BA714: Proc_17_55_10BA71C = 
End Sub

Public Sub Proc_17_56_F6BF68
  'Data Table: 50F338
  loc_F6BE40: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F6BE52:   Me.DGHelp.Visible = False
  loc_F6BE5A: End If
  loc_F6BE76: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F6BE88:   Me.DGLedgerAc.Visible = False
  loc_F6BE90: End If
  loc_F6BEAC: If (CBool(().Visible) = &HFF) Then
  loc_F6BEBE:   (False).Visible = 
  loc_F6BEC6: End If
  loc_F6BEE2: If (CBool(Me.DGTaxMast.Visible) = &HFF) Then
  loc_F6BEF4:   Me.DGTaxMast.Visible = False
  loc_F6BEFC: End If
  loc_F6BF17: If (Me.FrmList.Visible = &HFF) Then
  loc_F6BF26:   Me.FrmList.Visible = False
  loc_F6BF2E: End If
  loc_F6BF4A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6BF5C:   Me.FGPoint.Visible = False
  loc_F6BF64: End If
  loc_F6BF64: Exit Sub
End Sub

Public Sub Proc_17_57_1226A88
  'Data Table: 50F338
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_122658A: Set var_88 = var_8C(CInt(0))
  loc_1226590: Call 0.Method_Proc_17_57_1226A880 (var_90)
  loc_1226598:  = var_8C.Left
  loc_12265AF: Me.DGHelp.Left = CVar(var_90)
  loc_12265CB: Set var_B4 = var_B8(CInt(0))
  loc_12265D1: Call 0.Method_Proc_17_57_1226A880 (var_BC)
  loc_12265D9:  = var_B8.Height
  loc_12265EC: Set var_88 = var_8C(CInt(0))
  loc_12265F2: Call 0.Method_Proc_17_57_1226A880 (var_90)
  loc_12265FA:  = var_8C.Top
  loc_122660A: var_A0 = CVar(((var_90 + var_BC) + CDbl(&H1E))) 'Single
  loc_1226619: Me.DGHelp.Top = CVar(var_90)
  loc_1226639: Set var_88 = var_8C(CInt(2))
  loc_122663F: Call 0.Method_Proc_17_57_1226A880 (var_90)
  loc_1226647:  = var_8C.Left
  loc_122665E: Me.DGLedgerAc.Left = CVar(var_90)
  loc_122667A: Set var_B4 = var_B8(CInt(2))
  loc_1226680: Call 0.Method_Proc_17_57_1226A880 (var_BC)
  loc_1226688:  = var_B8.Height
  loc_122669B: Set var_88 = var_8C(CInt(2))
  loc_12266A1: Call 0.Method_Proc_17_57_1226A880 (var_90)
  loc_12266A9:  = var_8C.Top
  loc_12266B9: var_A0 = CVar(((var_90 + var_BC) + CDbl(&H1E))) 'Single
  loc_12266C8: Me.DGLedgerAc.Top = CVar(var_90)
  loc_12266DE: Set var_C4 = ()
  loc_12266E1: var_A0 = &HB
  loc_12266F5: var_A0 = CVar(CLng(0)) 'Long
  loc_12266FA: var_D4 = &H226
  loc_1226706: LateIdCallSt
  loc_122670E: var_A0 = 0
  loc_122671A: var_D4 = CVar(CLng(0)) 'Long
  loc_122671F: var_F4 = "S.No"
  loc_1226728: LateIdCallSt
  loc_1226733: var_A0 = CVar(CLng(2)) 'Long
  loc_1226738: var_D4 = 0
  loc_1226744: LateIdCallSt
  loc_122674F: var_A0 = CVar(CLng(3)) 'Long
  loc_1226754: var_D4 = &H802
  loc_1226760: LateIdCallSt
  loc_1226768: var_A0 = 0
  loc_1226774: var_D4 = CVar(CLng(3)) 'Long
  loc_1226779: var_F4 = "Tax Structure"
  loc_1226782: LateIdCallSt
  loc_122678D: var_A0 = CVar(CLng(3)) 'Long
  loc_1226798: var_D4 = CVar(CInt(1)) 'Integer
  loc_122679F: LateIdCallSt
  loc_12267AA: var_A0 = CVar(CLng(1)) 'Long
  loc_12267AF: var_D4 = &H4B0
  loc_12267BB: LateIdCallSt
  loc_12267C3: var_A0 = 0
  loc_12267CF: var_D4 = CVar(CLng(1)) 'Long
  loc_12267D4: var_F4 = "App Date"
  loc_12267DD: LateIdCallSt
  loc_12267E8: var_A0 = CVar(CLng(1)) 'Long
  loc_12267F3: var_D4 = CVar(CInt(1)) 'Integer
  loc_12267FA: LateIdCallSt
  loc_1226805: var_A0 = CVar(CLng(4)) 'Long
  loc_122680A: var_D4 = &H3E8
  loc_1226816: LateIdCallSt
  loc_1226821: var_A0 = CVar(CLng(4)) 'Long
  loc_122682C: var_D4 = CVar(CInt(7)) 'Integer
  loc_1226833: LateIdCallSt
  loc_122683B: var_A0 = 0
  loc_1226847: var_D4 = CVar(CLng(4)) 'Long
  loc_122684C: var_F4 = "Comm %"
  loc_1226855: LateIdCallSt
  loc_1226860: var_A0 = CVar(CLng(5)) 'Long
  loc_1226865: var_D4 = &H79E
  loc_1226871: LateIdCallSt
  loc_122687C: var_A0 = CVar(CLng(5)) 'Long
  loc_1226887: var_D4 = CVar(CInt(7)) 'Integer
  loc_122688E: LateIdCallSt
  loc_1226896: var_A0 = 0
  loc_12268A2: var_D4 = CVar(CLng(5)) 'Long
  loc_12268A7: var_F4 = "Bank Comm A/C"
  loc_12268B0: LateIdCallSt
  loc_12268BB: var_A0 = CVar(CLng(7)) 'Long
  loc_12268C0: var_D4 = 0
  loc_12268CC: LateIdCallSt
  loc_12268D4: var_A0 = 0
  loc_12268E0: var_D4 = CVar(CLng(7)) 'Long
  loc_12268E5: var_F4 = "Apply On"
  loc_12268EE: LateIdCallSt
  loc_12268F9: var_A0 = CVar(CLng(7)) 'Long
  loc_1226904: var_D4 = CVar(CInt(1)) 'Integer
  loc_122690B: LateIdCallSt
  loc_1226916: var_A0 = CVar(CLng(8)) 'Long
  loc_122691B: var_D4 = &H320
  loc_1226927: LateIdCallSt
  loc_1226932: var_A0 = CVar(CLng(8)) 'Long
  loc_122693D: var_D4 = CVar(CInt(7)) 'Integer
  loc_1226944: LateIdCallSt
  loc_122694C: var_A0 = 0
  loc_1226958: var_D4 = CVar(CLng(8)) 'Long
  loc_122695D: var_F4 = "L. Limit"
  loc_1226966: LateIdCallSt
  loc_1226971: var_A0 = CVar(CLng(9)) 'Long
  loc_1226976: var_D4 = &H4C4
  loc_1226982: LateIdCallSt
  loc_122698D: var_A0 = CVar(CLng(9)) 'Long
  loc_1226998: var_D4 = CVar(CInt(1)) 'Integer
  loc_122699F: LateIdCallSt
  loc_12269A7: var_A0 = 0
  loc_12269B3: var_D4 = CVar(CLng(9)) 'Long
  loc_12269B8: var_F4 = "Comparison Operator"
  loc_12269C1: LateIdCallSt
  loc_12269CC: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12269D1: var_D4 = &H352
  loc_12269DD: LateIdCallSt
  loc_12269E8: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12269F3: var_D4 = CVar(CInt(7)) 'Integer
  loc_12269FA: LateIdCallSt
  loc_1226A02: var_A0 = 0
  loc_1226A0E: var_D4 = CVar(CLng(&HA)) 'Long
  loc_1226A13: var_F4 = "U. Limit"
  loc_1226A1C: LateIdCallSt
  loc_1226A27: var_A0 = CVar(CLng(6)) 'Long
  loc_1226A2C: var_D4 = 0
  loc_1226A38: LateIdCallSt
  loc_1226A43: var_A0 = CVar(CLng(6)) 'Long
  loc_1226A4E: var_D4 = CVar(CInt(1)) 'Integer
  loc_1226A55: LateIdCallSt
  loc_1226A5D: var_A0 = 0
  loc_1226A69: var_D4 = CVar(CLng(6)) 'Long
  loc_1226A6E: var_F4 = "Condition"
  loc_1226A77: LateIdCallSt
  loc_1226A81: Set var_C4 = Nothing 
  loc_1226A85: Exit Sub
End Sub

Public Sub Proc_17_58_E412D8
  'Data Table: 50F338
  loc_E412B4: Set var_88 = Me.TopCtrl1
  loc_E412BA: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E412D3: If (CStr() = "Browse") Then
  loc_E412D6:   Exit Sub
  loc_E412D7: End If
  loc_E412D7: Exit Sub
End Sub

Public Sub Proc_17_59_1355674(arg_C) '1355674
  'Data Table: 50F338
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_114 As ListView
  Dim var_D0 As Variant
  Dim var_138 As Variant
  Dim var_174 As Double
  loc_1354E83: If (CLng(().MousePointer) = CLng(3)) Then
  loc_1354ED4:   Set var_8C = var_AC(arg_C)
  loc_1354EDA:   Call 0.Method_Proc_17_59_13556740 (var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1354EE2:   var_A0 = var_AC.Text
  loc_1354EFA:   If ( Or (var_B0 = vbNullString)) Then
  loc_1354F2D:     LateIdCallSt
  loc_1354F52:     var_C0 = CVar(CLng(CVar(CLng(().MouseIcon))(CVar(CLng(3))(vbNullString)).MouseIcon)) 'Long
  loc_1354F69:     Set var_AC = CVar(CLng(2))(vbNullString)
  loc_1354F6F:     LateIdCallSt
  loc_1354F84:   Else
  loc_1354FE0:     LateIdCallSt
  loc_1355006:     var_9C = CVar(CLng("Name"(Me.Fields.Item("Name")).MouseIcon))(CVar(CLng(3))(CVar(CStr(Me.Fields.Item("Name").Value)))).MouseIcon
  loc_135500F:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1355039:     var_AC = Me.Fields.Item("Code")
  loc_1355052:     Set var_138 = CVar(CLng(2))(CVar(CStr(var_AC.Value)))
  loc_1355058:     LateIdCallSt
  loc_1355074:   End If
  loc_1355077: Else
  loc_135507E:   If (var_A0 = CLng(1)) Then
  loc_13550AA:     Set var_8C = var_AC(0)
  loc_13550B0:     Call 0.Method_Proc_17_59_13556740 (CVar(CLng(1)))
  loc_13550CB:     Set var_13C = CVar(CLng(var_D0(var_D0(var_138)).MouseIcon))(CVar(Proc_6_33_15125B8(var_AC)))
  loc_13550D1:     LateIdCallSt
  loc_13550EE:   Else
  loc_13550F5:     If (var_A0 = CLng(4)) Then
  loc_1355104:       Set var_8C = var_AC(0)
  loc_135510A:       Call 0.Method_Proc_17_59_13556740 (var_B0)
  loc_1355112:       var_13C = var_AC.Text
  loc_135511F:       var_174 = Val(var_B0)
  loc_1355135:       var_E0 = CVar(CLng((var_174).MouseIcon)) 'Long
  loc_135513D:       var_100 = CVar(CLng(4)) 'Long
  loc_1355172:       Set var_138 = 1(CVar(CStr(Format(CVar(var_174), "0.0000"))))
  loc_1355178:       LateIdCallSt
  loc_135519E:     Else
  loc_13551A5:       If (var_A0 = CLng(5)) Then
  loc_13551F6:         Set var_8C = var_AC(arg_C)
  loc_13551FC:         Call 0.Method_Proc_17_59_13556740 (var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_138)
  loc_1355204:         1 = var_AC.Text
  loc_135521C:         If (var_100 Or (var_B0 = vbNullString)) Then
  loc_135524F:           LateIdCallSt
  loc_1355274:           var_C0 = CVar(CLng(CVar(CLng((CVar(CLng(5))).MouseIcon))(CVar(CLng(5))(vbNullString)).MouseIcon)) 'Long
  loc_135528B:           Set var_AC = CVar(CLng(6))(vbNullString)
  loc_1355291:           LateIdCallSt
  loc_13552A6:         Else
  loc_1355302:           LateIdCallSt
  loc_1355322:           Set var_114 = CVar(CLng("Name"(Me.Fields.Item("Name")).MouseIcon))(CVar(CLng(5))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_1355331:           var_D0 = CVar(CLng(var_114.MouseIcon)) 'Long
  loc_135535B:           var_AC = Me.Fields.Item("Code")
  loc_1355374:           Set var_138 = CVar(CLng(6))(CVar(CStr(var_AC.Value)))
  loc_135537A:           LateIdCallSt
  loc_1355396:         End If
  loc_1355399:       Else
  loc_13553A0:         If Not (var_A0 = CLng(8)) Then
  loc_13553AA:           If (var_A0 = CLng(&HA)) Then
  loc_13553AD:           End If
  loc_13553B9:           Set var_8C = var_AC(0)
  loc_13553BF:           Call 0.Method_Proc_17_59_13556740 (var_B0, var_138)
  loc_13553C7:           var_D0 = var_AC.Text
  loc_13553D4:           var_174 = Val(var_B0)
  loc_13553F3:           Set var_138 = (CVar(CLng((var_174).MouseIcon)))
  loc_1355402:           var_100 = CVar(CLng(var_138.MousePointer)) 'Long
  loc_1355437:           Set var_13C = 1(CVar(CStr(Format(CVar(var_174), "0.00"))))
  loc_135543D:           LateIdCallSt
  loc_1355467:         Else
  loc_135546E:           If (var_A0 = CLng(7)) Then
  loc_135547E:             Set var_8C = var_AC(arg_C)
  loc_1355484:             Call 0.Method_Proc_17_59_13556740 (var_B0, var_13C)
  loc_135548C:             1 = var_AC.Text
  loc_13554A3:             If (var_B0 <> vbNullString) Then
  loc_13554BE:               Set var_AC = Me.ListView.SelectedItem
  loc_13554C4:               var_B0 = var_AC.Text
  loc_13554D6:               Set var_114 = var_138(arg_C)
  loc_13554DC:               Call 0.Method_Proc_17_59_13556740 (var_B0)
  loc_13554E4:               var_138.Text = var_100
  loc_13554FA:             End If
  loc_135550D:             var_C0 = CVar(CLng(().MouseIcon)) 'Long
  loc_1355527:             Set var_8C = var_AC(arg_C)
  loc_135552D:             Call 0.Method_Proc_17_59_13556740 (var_B0, CVar(CLng(7)))
  loc_1355535:             var_C0 = var_AC.Text
  loc_1355545:             Set var_138 = (CVar(var_B0))
  loc_135554B:             LateIdCallSt
  loc_1355568:           Else
  loc_135556F:             If (var_A0 = CLng(9)) Then
  loc_135557F:               Set var_8C = var_AC(arg_C)
  loc_1355585:               Call 0.Method_Proc_17_59_13556740 (var_B0)
  loc_135558D:               var_138 = var_AC.Text
  loc_13555A4:               If (var_B0 <> vbNullString) Then
  loc_13555BF:                 Set var_AC = Me.ListView.SelectedItem
  loc_13555C5:                 var_B0 = var_AC.Text
  loc_13555D7:                 Set var_114 = var_138(arg_C)
  loc_13555DD:                 Call 0.Method_Proc_17_59_13556740 (var_B0)
  loc_13555E5:                 var_138.Text = 
  loc_13555FB:               End If
  loc_135560E:               var_C0 = CVar(CLng(().MouseIcon)) 'Long
  loc_1355628:               Set var_8C = var_AC(arg_C)
  loc_135562E:               Call 0.Method_Proc_17_59_13556740 (var_B0, CVar(CLng(9)))
  loc_1355636:               var_C0 = var_AC.Text
  loc_1355646:               Set var_138 = (CVar(var_B0))
  loc_135564C:               LateIdCallSt
  loc_1355666:             End If
  loc_1355666:           End If
  loc_1355666:         End If
  loc_1355666:       End If
  loc_1355666:     End If
  loc_1355666:   End If
  loc_1355666: End If
  loc_135566B: Proc_17_59_1355674 = &HFF
End Sub
