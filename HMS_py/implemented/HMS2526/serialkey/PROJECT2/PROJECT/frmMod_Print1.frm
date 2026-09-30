VERSION 5.00
Begin VB.Form frmMod_Print1
  Caption = "Printing Setup"
  BackColor = &HFF8080&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11325
  ClientHeight = 6870
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6420
    Width = 11325
    Height = 450
    Visible = 0   'False
    TabIndex = 10
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1725
    Top = 2130
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin DataGrid DgModDesc
    Left = 885
    Top = 6480
    Width = 6960
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin DataGrid DGModType
    Left = 870
    Top = 5745
    Width = 5835
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin Frame FrmList
    Left = 8295
    Top = 6795
    Width = 3060
    Height = 1725
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 60
      Width = 2970
      Height = 1815
      TabStop = 0   'False
      TabIndex = 1
    End
  End
  Begin MSFlexGrid FGrid
    Left = 1710
    Top = 1875
    Width = 13215
    Height = 3300
    TabIndex = 4
  End
  Begin MSFlexGrid FGPoint
    Left = 12105
    Top = 6780
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 6
  End
  Begin BtnEnh CmdCancel
    Left = 6960
    Top = 5295
    Width = 1455
    Height = 1110
    TabIndex = 8
  End
  Begin BtnEnh CmdSave
    Left = 5100
    Top = 5325
    Width = 1485
    Height = 1095
    TabIndex = 9
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -30
    Width = 180
    Height = 540
    TabIndex = 7
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
End

Attribute VB_Name = "frmMod_Print1"

Private global_64 As Integer
Private global_56 As Integer

Private Sub DGModType_UnknownEvent_9 'F6B960
  'Data Table: 45FAB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_F6B843: Me.DGModType.Visible = False
  loc_F6B862: If (Me.RecordCount > 0) Then
  loc_F6B89F:   Set var_B4 = Me.TxtGrid
  loc_F6B8A5:   Call 0.Method_DGModType_UnknownEvent_90 (0, var_B8)
  loc_F6B8AD:   var_B8.Text = CStr(Me.Fields.Item("ModType").Value)
  loc_F6B8D6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F6B8DE:   var_EC = CVar(CLng(0)) 'Long
  loc_F6B900:   var_B0 = Me.Fields.Item("ModType")
  loc_F6B911:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_F6B919:   Set var_B8 = Me.FGrid
  loc_F6B91F:   LateIdCallSt
  loc_F6B93B: End If
  loc_F6B944: Set var_A8 = Me.TxtGrid
  loc_F6B94A: Call 0.Method_DGModType_UnknownEvent_90 (0, var_B0, var_B8)
  loc_F6B952: var_B0.SetFocus
  loc_F6B95E: Exit Sub
End Sub

Private Sub DGModType_UnknownEvent_1F 'E75C60
  'Data Table: 45FAB0
  loc_E75C1E: Proc_6_153_E91D24(Me.DGModType, arg_14)
  loc_E75C35: Set var_8C = Me.FGPoint
  loc_E75C4F: Proc_6_138_106E830(Me.DGModType, global_72, 0)
  loc_E75C5D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E13150
  'Data Table: 45FAB0
  Dim Me As Recordset15
  loc_E13138: Call Proc_317_27_10F2418()
  loc_E13148: Me.Requery -1
  loc_E1314D: Exit Sub
End Sub

Private Sub Form_Load() '12321B8
  'Data Table: 45FAB0
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim unk_45FAB4 As Connection15
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_114 As Variant
  Dim var_E4 As Integer
  Dim var_128 As String
  Dim unk_45FADB As Connection15
  Dim var_134 As Recordset15
  Dim var_138 As Fields15
  Dim var_13C As Field20
  Dim var_16C As Variant
  loc_1231CB8: On Error Goto loc_1232172
  loc_1231CC2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1231CDA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1231CE2: Call Proc_317_28_105ACCC()
  loc_1231CF4: Set var_AC = Me.FGrid
  loc_1231CFA: var_AC.Rows = 1
  loc_1231D06: var_86 = CByte(1) 'Byte
  loc_1231D2E: unk_45FAB4.Execute "SELECT printersetup.* FROM PrinterSetup WHERE PrinterSetup.SITE_CODE='" & MemVar_1F95078 & "'", var_C4, -1
  loc_1231D3F: Set global_52 = var_AC
  loc_1231D6B: If (Me.RecordCount > 0) Then
  loc_1231D6E:   ' Referenced from: 12320A6
  loc_1231D80:   If Not(Me.EOF) Then
  loc_1231D87:     Set var_D4 = Me.FGrid
  loc_1231D8A:     var_98 = vbNullString
  loc_1231D94:     Set var_AC = Me.FGrid
  loc_1231DE2:     var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ModType")), CVar(CLng(0)), CVar(CLng(var_86)))) 'String
  loc_1231DE9:     LateIdCallSt
  loc_1231E38:     var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ModDescription")), CVar(CLng(1)), CVar(CLng(var_86)), var_D4)) 'String
  loc_1231E3F:     LateIdCallSt
  loc_1231E8E:     var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("modCODE")), CVar(CLng(2)), CVar(CLng(var_86)), var_D4, var_114)) 'String
  loc_1231E95:     LateIdCallSt
  loc_1231EE4:     var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Printer")), CVar(CLng(3)), CVar(CLng(var_86)), var_D4, var_114)) 'String
  loc_1231EEB:     LateIdCallSt
  loc_1231F3A:     var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("AutoPrint")), CVar(CLng(4)), CVar(CLng(var_86)), var_D4, var_114)) 'String
  loc_1231F41:     LateIdCallSt
  loc_1231F90:     var_114 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")), CVar(CLng(5)), CVar(CLng(var_86)), var_D4, var_114)) 'String
  loc_1231F97:     LateIdCallSt
  loc_1231FCB:     var_C4 = CVar(Me.Fields.Item("RestCode")) 'Address
  loc_1231FEF:     var_E4 = 0
  loc_1232016:     var_128 = "Select Max(Name) From Depart Where Code='" & Proc_6_38_E69628(var_C4, var_D4, var_114, var_114) & "' And LogSite_Code='"
  loc_123202D:     unk_45FADB.Execute var_128 & MemVar_1F95078 & "'", var_114, -1
  loc_1232035:     var_134 = var_134.Fields
  loc_123203D:     var_E4 = var_138.Item(var_138)
  loc_1232045:     var_13C = var_13C.Value
  loc_1232052:     var_16C = CVar(Proc_6_38_E69628(var_14C, var_14C, CVar(CLng(6)), CVar(CLng(var_86)))) 'String
  loc_1232059:     LateIdCallSt
  loc_1232088:     Set var_D4 = Nothing 
  loc_1232092:     Me.MoveNext
  loc_12320A2:     var_86 = CByte((CInt(var_86) + 1)) 'Byte
  loc_12320A6:     GoTo loc_1231D6E
  loc_12320A9:   End If
  loc_12320AC: Else
  loc_12320AC:   var_98 = vbNullString
  loc_12320B6:   Set var_AC = Me.FGrid
  loc_12320C7: End If
  loc_12320C7: var_98 = 1
  loc_12320D4: Set var_AC = Me.FGrid
  loc_12320DA: var_AC.FixedRows = var_98
  loc_12320E2: Call Proc_317_27_10F2418(FGrid.DispID_10000, var_98, var_D4, var_16C)
  loc_12320FB: var_B0 = "Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F95078
  loc_123210B: unk_45FAB4.Execute var_B0 & "'", var_C4, -1
  loc_123211C: Set global_68 = var_AC
  loc_123213A: CVarUnk
  loc_123213F: VerifyVarObj
  loc_1232145: Set var_AC = Me.DgModDesc
  loc_123214B: LateIdStAd
  loc_1232163: Set var_AC = Me.TopCtrl1
  loc_1232169: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005("Add")
  loc_1232171: Exit Sub
  loc_1232172: ' Referenced from: 1231CB8
  loc_1232180: Call 0.Method_arg_2C (var_B0, Err(), global_68, Err())
  loc_12321A1: MsgBox(CVar(var_B0), &H40, "Information", var_14C, var_16C)
  loc_12321B4: Exit Sub
  loc_12321B5: Exit Sub
End Sub

Private Sub Form_Resize() 'E86850
  'Data Table: 45FAB0
  loc_E867E6: Call 0.Method_arg_50 (var_88)
  loc_E867F8: Me.LblFormCaption.Caption = var_88
  loc_E86811: Me.LblFormCaption.Left = CDbl(0)
  loc_E86827: Me.LblFormCaption.Top = CDbl(0)
  loc_E86835: Call 0.Method_arg_100 (var_90)
  loc_E86847: Me.LblFormCaption.Width = var_90
  loc_E8684F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E51934
  'Data Table: 45FAB0
  loc_E51907: Set global_52 = Nothing
  loc_E51919: Set global_72 = Nothing
  loc_E5192B: Set global_68 = Nothing
  loc_E51932: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89968
  'Data Table: 45FAB0
  loc_E89904: On Error Goto loc_E89924
  loc_E8991B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E89923: Exit Sub
  loc_E89924: ' Referenced from: E89904
  loc_E8992C: Set var_88 = Err()
  loc_E89932: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89953: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89966: Exit Sub
  loc_E89967: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E656CC
  'Data Table: 45FAB0
  loc_E6569C: If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_E6569F:   Call DGModType_UnknownEvent_9()
  loc_E656A4: End If
  loc_E656C0: If (CBool(Me.DgModDesc.Visible) = &HFF) Then
  loc_E656C3:   Call DgModDesc_UnknownEvent_9()
  loc_E656C8: End If
  loc_E656C8: Exit Sub
  loc_E656C9: StAryRecMove
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1243528
  'Data Table: 45FAB0
  Dim var_88 As MSFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_1243007: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1243010: Set var_9C = Me.FGrid
  loc_1243046: Set var_104 = Me.TxtGrid
  loc_124304C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_1243054: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_1243081: Set var_88 = Me.TxtGrid
  loc_1243087: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_124308F: var_9C.MaxLength = 0
  loc_12430A7: If (Index = 0) Then
  loc_12430BD:   var_114 = CLng(Me.FGrid.Col)
  loc_12430CD:   If (var_114 = CLng(0)) Then
  loc_12430E7:     If (Me.RecordCount > 0) Then
  loc_124310D:       Proc_6_137_1192FDC(Me.DGModType, global_72, Index, Me.FGPoint)
  loc_124311B:     End If
  loc_1243124:     var_118 = Me.RecordCount
  loc_124313B:     var_11A = Me.EOF
  loc_124314F:     var_11C = Me.BOF
  loc_124316F:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12431AB:     If (CVar(CLng(0)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12431AE:       Exit Sub
  loc_12431AF:     End If
  loc_12431C2:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12431CA:     var_DC = CVar(CLng(0)) 'Long
  loc_12431FD:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1243206:       Me.MoveFirst
  loc_124321E:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1243226:       var_DC = CVar(CLng(0)) 'Long
  loc_124326A:       Me.Find "Modtype='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_124329A:       If (Me.EOF = &HFF) Then
  loc_12432A3:         Me.MoveFirst
  loc_12432A8:       End If
  loc_12432A8:     End If
  loc_12432AB:   Else
  loc_12432B2:     If (var_114 = CLng(1)) Then
  loc_12432C4:       Me.Filter = 0
  loc_12432F6:       var_AC = Me.FGrid.TextMatrix)
  loc_1243316:       Me.Filter = CVar(CVar(CLng(5)) & CStr(var_AC) & "'")
  loc_1243349:       If (Me.RecordCount > 0) Then
  loc_124336F:         Proc_6_137_1192FDC(Me.DgModDesc, global_68, Index, Me.FGPoint, CVar(CLng(Me.FGrid.Row)), "RestCode='", var_134, var_AC)
  loc_124337D:       End If
  loc_1243386:       var_118 = Me.RecordCount
  loc_124339D:       var_11A = Me.EOF
  loc_12433B1:       var_11C = Me.BOF
  loc_12433D1:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_124340D:       If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1243410:         Exit Sub
  loc_1243411:       End If
  loc_1243424:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_124342C:       var_DC = CVar(CLng(1)) 'Long
  loc_124345F:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1243468:         Me.MoveFirst
  loc_1243480:         var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1243488:         var_DC = CVar(CLng(1)) 'Long
  loc_12434CC:         Me.Find "ModuleDescription='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_12434FC:         If (Me.EOF = &HFF) Then
  loc_1243505:           Me.MoveFirst
  loc_124350A:         End If
  loc_124350A:       End If
  loc_124350D:     Else
  loc_1243514:       If (var_114 = CLng(3)) Then
  loc_1243517:         GoTo loc_1243524
  loc_124351A:       End If
  loc_1243521:       If (var_114 = CLng(4)) Then
  loc_1243524:         ' Referenced from:     1243517
  loc_1243524:       End If
  loc_1243524:     End If
  loc_1243524:   End If
  loc_1243524: End If
  loc_1243524: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1221ACC
  'Data Table: 45FAB0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim var_E0 As Variant
  Dim var_98 As DataGrid
  loc_12215DB: var_86 = Shift
  loc_12215E8: If (CLng(Shift) = &H1B) Then
  loc_12215F7:   Set var_8C = Me.TxtGrid
  loc_12215FD:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1221616:   Set var_98 = Me.TxtGrid
  loc_122161C:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_1221624:   var_9C.Text = var_90.Tag
  loc_1221640:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1221649:   Set var_8C = Me.FGrid
  loc_1221665:   Set var_8C = Me.TxtGrid
  loc_122166B:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_1221673:   var_90.Visible = FGrid.DispID_8001
  loc_122167F:   Exit Sub
  loc_1221680: End If
  loc_12216A3: If (CLng(Me.FGrid.Col) = CLng(0)) Then
  loc_12216FC:   Proc_6_69_134A630(Me.DGModType, Me.TxtGrid, KeyCode, global_72, Shift, &HFF, 1)
  loc_122171C:   If (CLng(Shift) = &HD) Then
  loc_1221727:     Call Proc_317_32_128E110(0, var_B4, Nothing, Me.FGPoint)
  loc_1221732:     If (var_B4 = &HFF) Then
  loc_1221740:       Set var_9C = Me.TxtGrid
  loc_1221769:       Set var_90 = var_9C
  loc_1221778:       Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 5, 0)
  loc_1221788:     End If
  loc_1221788:   End If
  loc_1221795:   Set var_98 = Me.TxtGrid
  loc_122179B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D0, 0, 0)
  loc_12217A3:   0 = var_9C.Height
  loc_12217B5:   Set var_8C = Me.TxtGrid
  loc_12217BB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_CC)
  loc_12217C3:   var_B0 = var_90.Top
  loc_12217CF:   var_E0 = CVar((var_CC + var_D0)) 'Single
  loc_12217DE:   Me.DGModType.Top = var_E0
  loc_12217FD:   Set var_8C = Me.TxtGrid
  loc_1221803:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_CC)
  loc_122180B:   arg_14 = var_90.Left
  loc_1221822:   Me.DGModType.Left = CVar(var_CC)
  loc_1221833: Else
  loc_122183A:   If (var_B0 = CLng(1)) Then
  loc_122185A:     Set var_9C = Me.FGPoint
  loc_1221893:     Proc_6_69_134A630(Me.DgModDesc, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_12218B3:     If (CLng(Shift) = &HD) Then
  loc_12218BE:       Call Proc_317_32_128E110(0, var_B4, 1, Nothing)
  loc_12218C9:       If (var_B4 = &HFF) Then
  loc_12218D7:         Set var_9C = Me.TxtGrid
  loc_1221900:         Set var_90 = var_9C
  loc_122190F:         Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 5)
  loc_122191F:       End If
  loc_122191F:     End If
  loc_122192C:     Set var_98 = Me.TxtGrid
  loc_1221932:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D0, 0, 0)
  loc_122193A:     0 = var_9C.Height
  loc_122194C:     Set var_8C = Me.TxtGrid
  loc_1221952:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_CC)
  loc_122195A:     var_9C = var_90.Top
  loc_1221966:     var_E0 = CVar((var_CC + var_D0)) 'Single
  loc_1221975:     Me.DgModDesc.Top = CVar(var_CC)
  loc_1221994:     Set var_8C = Me.TxtGrid
  loc_122199A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_CC)
  loc_12219A2:     0 = var_90.Left
  loc_12219B9:     Me.DgModDesc.Left = CVar(var_CC)
  loc_12219CA:   Else
  loc_12219D1:     If (var_B0 = CLng(3)) Then
  loc_12219DE:       If (CLng(Shift) = &HD) Then
  loc_12219E7:         Call Proc_317_32_128E110(KeyCode, var_B2)
  loc_12219F2:         If (var_B2 = &HFF) Then
  loc_1221A38:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56)
  loc_1221A48:         End If
  loc_1221A48:       End If
  loc_1221A4B:     Else
  loc_1221A52:       If (var_B0 = CLng(4)) Then
  loc_1221A5F:         If (CLng(Shift) = &HD) Then
  loc_1221A68:           Call Proc_317_32_128E110(KeyCode, var_B2, 5, 0)
  loc_1221A73:           If (var_B2 = &HFF) Then
  loc_1221AB9:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 5)
  loc_1221AC9:           End If
  loc_1221AC9:         End If
  loc_1221AC9:       End If
  loc_1221AC9:     End If
  loc_1221AC9:   End If
  loc_1221AC9: End If
  loc_1221AC9: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1031CB4
  'Data Table: 45FAB0
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_BC As TextBox
  Dim arg_10 As Integer
  Dim arg_3844 As Variant
  loc_1031A7C: On Error Goto loc_1031CAB
  loc_1031A82: Proc_6_58_E06050(arg_10)
  loc_1031AA2: var_88 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_1031ABF: var_B0 = CLng(Me.FGrid.Col)
  loc_1031ACF: If (var_B0 = CLng(0)) Then
  loc_1031AEE:   If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_1031B00:     var_B4 = "ModType"
  loc_1031B1B:     Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_1031B4D:     Proc_6_138_106E830(Me.DGModType, global_72, KeyAscii, Me.FGPoint)
  loc_1031B5B:   End If
  loc_1031B5E: Else
  loc_1031B65:   If (var_B0 = CLng(1)) Then
  loc_1031B84:     If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_1031B96:       var_B4 = "ModuleDescription"
  loc_1031BB1:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_68, arg_10, var_B4)
  loc_1031BCB:       Set var_BC = Me.FGPoint
  loc_1031BE3:       Proc_6_138_106E830(Me.DgModDesc, global_68, KeyAscii, var_BC)
  loc_1031BF1:     End If
  loc_1031BF4:   Else
  loc_1031BFB:     If (var_B0 = CLng(4)) Then
  loc_1031C27:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1031C36:         Set var_AC = Me.TxtGrid
  loc_1031C3C:         Call 0.Method_TxtGrid_KeyPress0 (0, var_BC, "Yes", 0)
  loc_1031C44:         var_BC.Text = var_B4
  loc_1031C53:       Else
  loc_1031C7C:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1031C8B:           Set var_AC = Me.TxtGrid
  loc_1031C91:           Call 0.Method_TxtGrid_KeyPress0 (0, var_BC, "No")
  loc_1031C99:           var_BC.Text = 0
  loc_1031CA5:         End If
  loc_1031CA5:       End If
  loc_1031CA7:       arg_10 = 0
  loc_1031CAA:     End If
  loc_1031CAA:   End If
  loc_1031CAA: End If
  loc_1031CAA: Exit Sub
  loc_1031CAB: ' Referenced from: 1031A7C
  loc_1031CAB: Proc_6_60_E63754(arg_10)
  loc_1031CB0: Exit Sub
  loc_1031CB1: arg_3844 = CVar(var_B0) 'Long
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F617D8
  'Data Table: 45FAB0
  Dim var_A0 As Long
  loc_F616A8: On Error Goto loc_F617D2
  loc_F616B7: If (KeyCode = 0) Then
  loc_F616CD:   var_A0 = CLng(Me.FGrid.Col)
  loc_F616DD:   If (var_A0 = CLng(0)) Then
  loc_F61703:     If ((Shift <> &HD) And (CBool(Me.DGModType.Visible) = 0)) Then
  loc_F61714:       Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_F61743:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_72, Shift, "ModType")
  loc_F61752:     End If
  loc_F61755:   Else
  loc_F6175C:     If (var_A0 = CLng(1)) Then
  loc_F61782:       If ((Shift <> &HD) And (CBool(Me.DgModDesc.Visible) = 0)) Then
  loc_F61793:         Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_F617C2:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "ModuleDescription", &HFF)
  loc_F617D1:       End If
  loc_F617D1:     End If
  loc_F617D1:   End If
  loc_F617D1: End If
  loc_F617D1: Exit Sub
  loc_F617D2: ' Referenced from: F616A8
  loc_F617D2: Proc_6_60_E63754(0, &HFF, 0)
  loc_F617D7: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E1AC00
  'Data Table: 45FAB0
  Dim arg_10 As Integer
  loc_E1ABE4: On Error Goto loc_E1ABFA
  loc_E1ABED: Call Proc_317_32_128E110(Cancel)
  loc_E1ABF6: arg_10 = Not(var_86)
  loc_E1ABF9: Exit Sub
  loc_E1ABFA: ' Referenced from: E1ABE4
  loc_E1ABFA: Proc_6_60_E63754(arg_10)
  loc_E1ABFF: Exit Sub
End Sub

Private Sub DgModDesc_UnknownEvent_9 'FC3D50
  'Data Table: 45FAB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC3BBB: Me.DgModDesc.Visible = False
  loc_FC3BDA: If (Me.RecordCount > 0) Then
  loc_FC3C17:   Set var_B4 = Me.TxtGrid
  loc_FC3C1D:   Call 0.Method_DgModDesc_UnknownEvent_90 (0, var_B8)
  loc_FC3C25:   var_B8.Text = CStr(Me.Fields.Item("ModuleDescription").Value)
  loc_FC3C4E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC3C56:   var_EC = CVar(CLng(1)) 'Long
  loc_FC3C89:   var_11C = CVar(CStr(Me.Fields.Item("ModuleDescription").Value)) 'String
  loc_FC3C91:   Set var_B8 = Me.FGrid
  loc_FC3C97:   LateIdCallSt
  loc_FC3CC6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC3CCE:   var_EC = CVar(CLng(2)) 'Long
  loc_FC3CF0:   var_B0 = Me.Fields.Item("modCODE")
  loc_FC3D01:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC3D09:   Set var_B8 = Me.FGrid
  loc_FC3D0F:   LateIdCallSt
  loc_FC3D2B: End If
  loc_FC3D34: Set var_A8 = Me.TxtGrid
  loc_FC3D3A: Call 0.Method_DgModDesc_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC3D42: var_B0.SetFocus
  loc_FC3D4E: Exit Sub
End Sub

Private Sub DgModDesc_UnknownEvent_1F 'E76350
  'Data Table: 45FAB0
  loc_E7630E: Proc_6_153_E91D24(Me.DgModDesc, arg_14)
  loc_E76325: Set var_8C = Me.FGPoint
  loc_E7633F: Proc_6_138_106E830(Me.DgModDesc, global_68, 0)
  loc_E7634D: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 '1186834
  'Data Table: 45FAB0
  Dim unk_45FAB4 As Connection15
  Dim var_88 As Integer
  Dim var_90 As String
  Dim var_94 As String
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_260 As Variant
  Dim var_2C0 As Variant
  Dim var_264 As String
  loc_11864CC: On Error Goto loc_1186817
  loc_11864D8: unk_45FAB4.BeginTrans var_8C
  loc_11864DF: var_88 = &HFF
  loc_1186506: unk_45FAB4.Execute "DELETE FROM PRINTERSETUP WHERE SITE_CODE='" & MemVar_1F95078 & "'", var_B4, -1
  loc_118653D: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_1186547:   var_A4 = CVar(CLng(var_86)) 'Long
  loc_118654F:   var_DC = CVar(CLng(0)) 'Long
  loc_1186569:   var_90 = CStr(Me.FGrid.TextMatrix))
  loc_1186575:   var_FC = CVar(CLng(var_86)) 'Long
  loc_118657D:   var_11C = CVar(CLng(1)) 'Long
  loc_1186597:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_11865A4:   var_150 = CVar(CLng(var_86)) 'Long
  loc_11865EA:   If (CVar(CLng(3)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_11865F1:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_11865F9:     var_DC = CVar(CLng(0)) 'Long
  loc_1186618:     var_FC = CVar(CLng(var_86)) 'Long
  loc_1186620:     var_11C = CVar(CLng(1)) 'Long
  loc_118663F:     var_150 = CVar(CLng(var_86)) 'Long
  loc_1186647:     var_170 = CVar(CLng(2)) 'Long
  loc_1186666:     var_1BC = CVar(CLng(var_86)) 'Long
  loc_118666E:     var_1DC = CVar(CLng(3)) 'Long
  loc_11866A4:     var_260 = Me.FGrid.TextMatrix)
  loc_11866CB:     var_2C0 = Me.FGrid.TextMatrix)
  loc_11866E5:     Proc_6_7_F26918(var_2F4, Date, var_2C0, CVar(CLng(5)), CVar(CLng(var_86)), var_260, CVar(CLng(4)), CVar(CLng(var_86)))
  loc_1186702:     var_94 = "Insert into PrinterSetup (ModType,ModDescription,ModCode,Printer,AutoPrint,RestCode,Site_Code,U_EntDt,U_AE) values('" & CStr(Me.FGrid.TextMatrix))
  loc_118673F:     var_264 = var_94 & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','"
  loc_118678E:     unk_45FAB4.Execute CStr(CVar(var_264 & CStr(var_260) & "','" & CStr(var_2C0) & "','" & MemVar_1F95078 & "',") & var_2F4 & ",'A')"), var_358, -1
  loc_11867EA:   End If
  loc_11867ED: Next var_BC 'Integer
  loc_11867F4: var_88 = 0
  loc_11867FD: unk_45FAB4.CommitTrans
  loc_118680F: Me.Global.Unload Me
  loc_1186817: ' Referenced from: 11864CC
  loc_118681D: If (var_88 = &HFF) Then
  loc_1186826:   unk_45FAB4.RollbackTrans
  loc_118682B: End If
  loc_118682B: Proc_6_60_E63754(var_88)
  loc_1186830: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60AC4
  'Data Table: 45FAB0
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E60A8F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60AA2: Set var_A8 = Me.TxtGrid
  loc_E60AA8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60AB0: var_AC.Visible = False
  loc_E60ABC: Call Proc_317_30_EF5E08()
  loc_E60AC1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6C1B0
  'Data Table: 45FAB0
  Dim var_88 As MSFlexGrid
  Dim var_9C As TextBox
  loc_E6C160: Call Proc_317_31_E3FF50()
  loc_E6C184: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6C192:   Set var_88 = Me.TxtGrid
  loc_E6C198:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6C1A0:   var_9C.Visible = False
  loc_E6C1AC: End If
  loc_E6C1AC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1062C18
  'Data Table: 45FAB0
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10629A0: Set var_88 = Me.TopCtrl1
  loc_10629A6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10629EB: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10629F4:   Call Form_KeyDown(Cancel, arg_10)
  loc_10629F9: End If
  loc_10629FD: Set var_88 = Me.TopCtrl1
  loc_1062A03: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1062A1C: If (CStr() = "Browse") Then
  loc_1062A1F:   Exit Sub
  loc_1062A20: End If
  loc_1062A94: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1062A9F:   var_9C = "+{Tab}"
  loc_1062AA5:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1062AAF:   Cancel = 0
  loc_1062AB2: End If
  loc_1062AB8: global_64 = Cancel
  loc_1062ADE: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1062B02: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1062B18:   var_DC = CLng(Me.FGrid.Col)
  loc_1062B28:   If Not (var_DC = CLng(1)) Then
  loc_1062B32:     If Not (var_DC = CLng(0)) Then
  loc_1062B3C:       If (var_DC = CLng(3)) Then
  loc_1062B3F:       End If
  loc_1062B3F:     End If
  loc_1062B52:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1062B6A:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1062B6F:     var_11C = vbNullString
  loc_1062B79:     Set var_B4 = Me.FGrid
  loc_1062B7F:     LateIdCallSt
  loc_1062B9A:   Else
  loc_1062BA1:     If (var_DC = CLng(4)) Then
  loc_1062BB7:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1062BCF:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1062BD4:       var_11C = "Yes"
  loc_1062BDE:       Set var_B4 = Me.FGrid
  loc_1062BE4:       LateIdCallSt
  loc_1062BFC:     End If
  loc_1062BFC:   End If
  loc_1062BFC:   GoTo loc_1062BFF
  loc_1062BFF:   ' Referenced from: 1062BFC
  loc_1062BFF: End If
  loc_1062C05: If (Cancel = &HD) Then
  loc_1062C0D:   global_56 = 0
  loc_1062C10: End If
  loc_1062C12: Cancel = 0
  loc_1062C15: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E130C0
  'Data Table: 45FAB0
  loc_E130B1: Call FGrid_UnknownEvent_C()
  loc_E130BB: global_56 = 0
  loc_E130BE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11745D4
  'Data Table: 45FAB0
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CC As Integer
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  loc_117420C: Set var_88 = Me.TopCtrl1
  loc_1174212: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_117422B: If (CStr() = "Browse") Then
  loc_117422E:   Exit Sub
  loc_117422F: End If
  loc_1174242: var_A0 = CLng(Me.FGrid.Col)
  loc_1174252: If Not (var_A0 = CLng(0)) Then
  loc_117425C:   If (var_A0 = CLng(1)) Then
  loc_117425F:   End If
  loc_117429D:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_11742B2: Else
  loc_11742B9:   If (var_A0 = CLng(3)) Then
  loc_11742C0:     Set var_B4 = Me.FGrid
  loc_11742E4:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11742ED:     var_CC = Asc(var_9C)
  loc_1174311:     Set var_A4 = var_B4
  loc_1174323:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0, var_CC)
  loc_117434B:     Set var_88 = Me.TxtGrid
  loc_1174351:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0, var_CC)
  loc_1174359:     0 = var_A4.Text
  loc_1174372:     If (Len(var_9C) <= 1) Then
  loc_1174381:       Set var_88 = Me.TxtGrid
  loc_1174387:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_117438F:       Cancel = var_A4.Text
  loc_11743A0:       Set var_A8 = Me.TxtGrid
  loc_11743A6:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11743AE:       var_B4.Text = 0
  loc_11743C1:     End If
  loc_11743CD:     Set var_88 = Me.TxtGrid
  loc_11743D3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11743ED:     Set var_A8 = Me.TxtGrid
  loc_11743F3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_11743FB:     var_B4.SelStart = Len(var_A4.Text)
  loc_1174411:   Else
  loc_1174418:     If (var_A0 = CLng(4)) Then
  loc_117441F:       Set var_B4 = Me.FGrid
  loc_1174443:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1174470:       Set var_A4 = var_B4
  loc_1174482:       Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_11744AA:       Set var_88 = Me.TxtGrid
  loc_11744B0:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_11744B8:       0 = var_A4.Text
  loc_11744D1:       If (Len(var_9C) <= 1) Then
  loc_11744E0:         Set var_88 = Me.TxtGrid
  loc_11744E6:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11744EE:         var_CC = var_A4.Text
  loc_117451F:         If (Left(CVar(var_9C), 1) = "N") Then
  loc_117452E:           Set var_88 = Me.TxtGrid
  loc_1174534:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_117453C:           var_A4.Text = "No"
  loc_117454B:         Else
  loc_1174557:           Set var_88 = Me.TxtGrid
  loc_117455D:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1174565:           var_A4.Text = "Yes"
  loc_1174571:         End If
  loc_1174571:       End If
  loc_117457D:       Set var_88 = Me.TxtGrid
  loc_1174583:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_117459D:       Set var_A8 = Me.TxtGrid
  loc_11745A3:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_11745AB:       var_B4.SelStart = Len(var_A4.Text)
  loc_11745BE:     End If
  loc_11745BE:   End If
  loc_11745BE: End If
  loc_11745C8: If (CLng(Cancel) <> &HD) Then
  loc_11745D0:   global_56 = &HFF
  loc_11745D3: End If
  loc_11745D3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FD8618
  'Data Table: 45FAB0
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FD8450: Set var_8C = Me.TopCtrl1
  loc_FD8456: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FD846F: If (CStr() = "Browse") Then
  loc_FD8472:   Exit Sub
  loc_FD8473: End If
  loc_FD8490: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD8493:   Exit Sub
  loc_FD8494: End If
  loc_FD84A5: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FD84C7:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD8501:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FD8523:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD8539:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD8542:         Set var_114 = Me.FGrid
  loc_FD855D:       Else
  loc_FD8570:         Me.FGrid.Rows = 1
  loc_FD858D:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD8595:         Set var_114 = Me.FGrid
  loc_FD85C4:         Me.FGrid.FixedRows = 1
  loc_FD85CC:       End If
  loc_FD85CC:     End If
  loc_FD85CF:   Else
  loc_FD85F0:     MsgBox("No Entries To Delete", &H10, "Delete !", var_F0, var_110)
  loc_FD8600:   End If
  loc_FD8604:   Set var_8C = Me.FGrid
  loc_FD8615: End If
  loc_FD8615: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D380
  'Data Table: 45FAB0
  loc_E1D377: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D37F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3FE8C
  'Data Table: 45FAB0
  Dim var_8C As TextBox
  loc_E3FE60: Call Proc_317_30_EF5E08()
  loc_E3FE70: Set var_88 = Me.TxtGrid
  loc_E3FE76: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3FE7E: var_8C.Visible = False
  loc_E3FE8A: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E168E4
  'Data Table: 45FAB0
  loc_E168D9: Me.Global.Unload Me
  loc_E168E1: Exit Sub
  loc_E168E2: Set arg_3800 = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EDCA00
  'Data Table: 45FAB0
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As String
  loc_EDC95E: On Error Goto loc_EDC9BB
  loc_EDC967: Me.MoveFirst
  loc_EDC99B: var_E8 = "SYear='" & Year(MyValue) & "'" 
  loc_EDC99F: var_EC = CStr(var_E8)
  loc_EDC9A9: Me.Find var_EC, 0, 1
  loc_EDC9BA: Exit Sub
  loc_EDC9BB: ' Referenced from: EDC95E
  loc_EDC9C3: Set var_100 = Err()
  loc_EDC9C9: Call 0.Method_arg_2C (var_EC)
  loc_EDC9EA: MsgBox(CVar(var_EC), &H40, "Information", var_E8, var_110)
  loc_EDC9FD: Exit Sub
  loc_EDC9FE: Exit Sub
End Sub

Public Sub Proc_317_26_F20AE0(arg_C) 'F20AE0
  'Data Table: 45FAB0
  Dim var_8C As Recordset15
  loc_F209DD: Set var_8C = arg_C 
  loc_F20A05: var_8C.Fields.Append "ModType", &HC8, &H19
  loc_F20A31: var_8C.Fields.Append "Mod_Type", &HC8, &H19
  loc_F20A5D: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F20A89: var_8C.Fields.Append "Departname", &HC8, &H32
  loc_F20A99: var_8C.CursorType = 3
  loc_F20AA6: var_8C.LockType = 3
  loc_F20AC5: var_8C.Open var_A0, var_B0, -1
  loc_F20ACC: Set var_8C = Nothing 
  loc_F20AD3: Set var_88 = arg_C 
  loc_F20AD7: Proc_317_26_F20AE0 = -1
  loc_F20ADD: -1 = &H20
End Sub

Public Sub Proc_317_27_10F2418
  'Data Table: 45FAB0
  Dim var_90 As String
  Dim var_98 As String
  Dim var_88 As Recordset15
  Dim var_C4 As Recordset15
  Dim var_AC As String
  Dim var_8C As Fields15
  Dim var_BC As Variant
  Dim var_F0 As Variant
  Dim var_D4 As String
  Dim var_DC As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim unk_45FADB As Connection15
  Dim var_108 As Field20
  loc_10F213A: Call Proc_317_26_F20AE0(New)
  loc_10F2145: Set global_72 = var_8C
  loc_10F216E: var_98 = "Select Distinct ModType,PrintMast.RestCode from " & MemVar_1F951D8 & ".PrintMast WHERE PrintMast.SITE_CODE='" & MemVar_1F95078
  loc_10F217E: Me.Connection15.Execute var_98 & "'", var_BC, -1
  loc_10F2189: Set var_88 = var_8C
  loc_10F219D: ' Referenced from: 10F23E4
  loc_10F21AC: If Not(var_88.EOF) Then
  loc_10F21B5:   Set var_C4 = global_72 
  loc_10F21C4:   var_C4.AddNew var_AC, var_D4
  loc_10F21D8:   var_8C = var_88.Fields
  loc_10F2214:   var_C4.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Item("ModType")), var_8C))
  loc_10F2274:   var_C4.Fields.Item("Mod_Type").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_10F22B1:   var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RestCode")))) 'String
  loc_10F22B8:   var_D4 = "RestCode"
  loc_10F22C4:   var_DC = var_C4.Fields
  loc_10F22CC:   var_E0 = var_DC.Item(var_D4)
  loc_10F22D4:   var_E0.Value = var_F0
  loc_10F230B:   var_AC = "RestCode"
  loc_10F2317:   var_8C = var_88.Fields
  loc_10F2330:   var_90 = Proc_6_38_E69628(CVar(var_8C.Item(var_AC)), "Select Max(Name) From Depart Where Code='", var_F0, -1, var_DC)
  loc_10F2349:   var_F4 = var_E0 & "Select Distinct ModType,PrintMast.RestCode from " & MemVar_1F951D8 & "' And LogSite_Code='" & MemVar_1F95078 & "'"
  loc_10F2352:   unk_45FADB.Execute var_F4, 0, var_108
  loc_10F2362:    = var_E0.Item(var_8C)
  loc_10F236A:    = var_108.Value
  loc_10F239A:   var_C4.Fields.Item("Departname").Value = CVar(Proc_6_38_E69628(var_DC.Fields))
  loc_10F23D1:   var_C4.Update var_AC, var_D4
  loc_10F23D8:   Set var_C4 = Nothing 
  loc_10F23DF:   var_88.MoveNext
  loc_10F23E4:   GoTo loc_10F219D
  loc_10F23E7: End If
  loc_10F23F0: CVarUnk
  loc_10F23F5: VerifyVarObj
  loc_10F23FB: Set var_8C = Me.DGModType
  loc_10F2401: LateIdStAd
  loc_10F2414: Set var_88 = Nothing
  loc_10F2417: Exit Sub
End Sub

Public Sub Proc_317_28_105ACCC
  'Data Table: 45FAB0
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  loc_105AA44: Set var_8C = Me.FGrid
  loc_105AA47: var_9C = 0
  loc_105AA53: var_BC = CVar(CLng(0)) 'Long
  loc_105AA58: var_DC = "Module Type"
  loc_105AA61: LateIdCallSt
  loc_105AA6C: var_9C = CVar(CLng(0)) 'Long
  loc_105AA71: var_BC = &H3E8
  loc_105AA7D: LateIdCallSt
  loc_105AA88: var_9C = CVar(CLng(0)) 'Long
  loc_105AA93: var_BC = CVar(CInt(1)) 'Integer
  loc_105AA9A: LateIdCallSt
  loc_105AAA2: var_9C = 0
  loc_105AAAE: var_BC = CVar(CLng(1)) 'Long
  loc_105AAB3: var_DC = "Description"
  loc_105AABC: LateIdCallSt
  loc_105AAC7: var_9C = CVar(CLng(1)) 'Long
  loc_105AACC: var_BC = &H1194
  loc_105AAD8: LateIdCallSt
  loc_105AAE3: var_9C = CVar(CLng(1)) 'Long
  loc_105AAEE: var_BC = CVar(CInt(1)) 'Integer
  loc_105AAF5: LateIdCallSt
  loc_105AAFD: var_9C = 0
  loc_105AB09: var_BC = CVar(CLng(2)) 'Long
  loc_105AB0E: var_DC = "ModuleCode"
  loc_105AB17: LateIdCallSt
  loc_105AB22: var_9C = CVar(CLng(2)) 'Long
  loc_105AB27: var_BC = 0
  loc_105AB33: LateIdCallSt
  loc_105AB3E: var_9C = CVar(CLng(2)) 'Long
  loc_105AB49: var_BC = CVar(CInt(1)) 'Integer
  loc_105AB50: LateIdCallSt
  loc_105AB58: var_9C = 0
  loc_105AB64: var_BC = CVar(CLng(3)) 'Long
  loc_105AB69: var_DC = "Printer"
  loc_105AB72: LateIdCallSt
  loc_105AB7D: var_9C = CVar(CLng(3)) 'Long
  loc_105AB82: var_BC = &HFD2
  loc_105AB8E: LateIdCallSt
  loc_105AB99: var_9C = CVar(CLng(3)) 'Long
  loc_105ABA4: var_BC = CVar(CInt(1)) 'Integer
  loc_105ABAB: LateIdCallSt
  loc_105ABB3: var_9C = 0
  loc_105ABBF: var_BC = CVar(CLng(4)) 'Long
  loc_105ABC4: var_DC = "AutoPrintYN"
  loc_105ABCD: LateIdCallSt
  loc_105ABD8: var_9C = CVar(CLng(4)) 'Long
  loc_105ABDD: var_BC = &H3E8
  loc_105ABE9: LateIdCallSt
  loc_105ABF4: var_9C = CVar(CLng(4)) 'Long
  loc_105ABFF: var_BC = CVar(CInt(1)) 'Integer
  loc_105AC06: LateIdCallSt
  loc_105AC0E: var_9C = 0
  loc_105AC1A: var_BC = CVar(CLng(5)) 'Long
  loc_105AC1F: var_DC = "Printer Port"
  loc_105AC28: LateIdCallSt
  loc_105AC33: var_9C = CVar(CLng(5)) 'Long
  loc_105AC38: var_BC = 0
  loc_105AC44: LateIdCallSt
  loc_105AC4F: var_9C = CVar(CLng(5)) 'Long
  loc_105AC5A: var_BC = CVar(CInt(1)) 'Integer
  loc_105AC61: LateIdCallSt
  loc_105AC69: var_9C = 0
  loc_105AC75: var_BC = CVar(CLng(6)) 'Long
  loc_105AC7A: var_DC = "Restaurant Name"
  loc_105AC83: LateIdCallSt
  loc_105AC8E: var_9C = CVar(CLng(6)) 'Long
  loc_105AC93: var_BC = &H9C4
  loc_105AC9F: LateIdCallSt
  loc_105ACAA: var_9C = CVar(CLng(6)) 'Long
  loc_105ACB5: var_BC = CVar(CInt(1)) 'Integer
  loc_105ACBC: LateIdCallSt
  loc_105ACC6: Set var_8C = Nothing 
  loc_105ACCA: Exit Sub
End Sub

Public Sub Proc_317_29_E8F248
  'Data Table: 45FAB0
  Dim var_98 As Long
  Dim var_AC As MSFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_E8F1DF: Me.FGrid.FixedRows = 1
  loc_E8F1FA: Me.FGrid.Rows = 2
  loc_E8F209: For var_B0 = 0 To 4: var_86 = var_B0 'Byte
  loc_E8F20F:   var_98 = 1
  loc_E8F21D:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_E8F222:   var_E0 = vbNullString
  loc_E8F22C:   Set var_AC = Me.FGrid
  loc_E8F232:   LateIdCallSt
  loc_E8F240: Next var_B0 'Byte
  loc_E8F246: Exit Sub
End Sub

Public Sub Proc_317_30_EF5E08
  'Data Table: 45FAB0
  loc_EF5D4C: If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_EF5D5E:   Me.DGModType.Visible = False
  loc_EF5D66: End If
  loc_EF5D82: If (CBool(Me.DgModDesc.Visible) = &HFF) Then
  loc_EF5D94:   Me.DgModDesc.Visible = False
  loc_EF5D9C: End If
  loc_EF5DB7: If (Me.FrmList.Visible = &HFF) Then
  loc_EF5DC6:   Me.FrmList.Visible = False
  loc_EF5DCE: End If
  loc_EF5DEA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF5DFC:   Me.FGPoint.Visible = False
  loc_EF5E04: End If
  loc_EF5E04: Exit Sub
End Sub

Public Sub Proc_317_31_E3FF50
  'Data Table: 45FAB0
  loc_E3FF2C: Set var_88 = Me.TopCtrl1
  loc_E3FF32: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E3FF4B: If (CStr() = "Browse") Then
  loc_E3FF4E:   Exit Sub
  loc_E3FF4F: End If
  loc_E3FF4F: Exit Sub
End Sub

Public Sub Proc_317_32_128E110(arg_C) '128E110
  'Data Table: 45FAB0
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_124 As Variant
  Dim Me As Recordset15
  Dim var_138 As Variant
  Dim var_B0 As String
  loc_128DB3C: If (arg_C = 0) Then
  loc_128DB62:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_128DB72:     Set var_94 = Me.TxtGrid
  loc_128DB78:     Call 0.Method_Proc_317_32_128E1100 (arg_C, var_AC, var_B0)
  loc_128DB80:     var_A8 = var_AC.Text
  loc_128DB97:     If (var_B0 = vbNullString) Then
  loc_128DBAD:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128DBB5:       var_E0 = CVar(CLng(1)) 'Long
  loc_128DBBA:       var_100 = vbNullString
  loc_128DBC4:       Set var_AC = Me.FGrid
  loc_128DBCA:       LateIdCallSt
  loc_128DBEF:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128DBF7:       var_E0 = CVar(CLng(2)) 'Long
  loc_128DBFC:       var_100 = vbNullString
  loc_128DC06:       Set var_AC = Me.FGrid
  loc_128DC0C:       LateIdCallSt
  loc_128DC21:     Else
  loc_128DC4E:       Set var_94 = Me.TxtGrid
  loc_128DC54:       Call 0.Method_Proc_317_32_128E1100 (arg_C, var_AC, var_B0, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_AC, var_100)
  loc_128DC5C:       var_E0 = var_AC.Text
  loc_128DC64:       var_124 = CVar(var_B0) 'String
  loc_128DC72:       LateIdCallSt
  loc_128DC96:       var_124 = Me.FGrid.Row
  loc_128DCAF:       var_C0 = "modCODE"
  loc_128DCC6:       var_AC = Me.Fields.Item(var_C0)
  loc_128DCD7:       var_138 = CVar(Proc_6_38_E69628(CVar(var_AC), CVar(CLng(2)), CVar(CLng(var_124)), Me.FGrid, var_124, var_C0)) 'String
  loc_128DCDF:       Set var_128 = Me.FGrid
  loc_128DCE5:       LateIdCallSt
  loc_128DCFF:     End If
  loc_128DD02:   Else
  loc_128DD09:     If (var_A8 = CLng(0)) Then
  loc_128DD19:       Set var_94 = Me.TxtGrid
  loc_128DD1F:       Call 0.Method_Proc_317_32_128E1100 (arg_C, var_AC, var_B0, var_128, var_138)
  loc_128DD27:       var_AC = var_AC.Text
  loc_128DD3E:       If (var_B0 = vbNullString) Then
  loc_128DD54:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128DD5C:         var_E0 = CVar(CLng(0)) 'Long
  loc_128DD61:         var_100 = vbNullString
  loc_128DD6B:         Set var_AC = Me.FGrid
  loc_128DD71:         LateIdCallSt
  loc_128DD96:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128DD9E:         var_E0 = CVar(CLng(6)) 'Long
  loc_128DDA3:         var_100 = vbNullString
  loc_128DDAD:         Set var_AC = Me.FGrid
  loc_128DDB3:         LateIdCallSt
  loc_128DDD8:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128DDE0:         var_E0 = CVar(CLng(5)) 'Long
  loc_128DDE5:         var_100 = vbNullString
  loc_128DDEF:         Set var_AC = Me.FGrid
  loc_128DDF5:         LateIdCallSt
  loc_128DE0A:       Else
  loc_128DE37:         Set var_94 = Me.TxtGrid
  loc_128DE3D:         Call 0.Method_Proc_317_32_128E1100 (arg_C, var_AC, var_B0, CVar(CLng(0)), CVar(CLng(Me.FGrid.Row)), var_AC, var_100)
  loc_128DE45:         var_E0 = var_AC.Text
  loc_128DE4D:         var_124 = CVar(var_B0) 'String
  loc_128DE5B:         LateIdCallSt
  loc_128DE7F:         var_124 = Me.FGrid.Row
  loc_128DE98:         var_C0 = "DEPARTNAME"
  loc_128DEC0:         var_138 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_C0)), CVar(CLng(6)), CVar(CLng(var_124)), Me.FGrid, var_124, var_C0)) 'String
  loc_128DECE:         LateIdCallSt
  loc_128DF22:         var_AC = Me.Fields.Item("RestCode")
  loc_128DF33:         var_138 = CVar(Proc_6_38_E69628(CVar(var_AC), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_138)) 'String
  loc_128DF3B:         Set var_128 = Me.FGrid
  loc_128DF41:         LateIdCallSt
  loc_128DF5B:       End If
  loc_128DF5E:     Else
  loc_128DF65:       If (var_A8 = CLng(3)) Then
  loc_128DF95:         Set var_94 = Me.TxtGrid
  loc_128DF9B:         Call 0.Method_Proc_317_32_128E1100 (arg_C, var_AC, var_B0, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_128)
  loc_128DFA3:         var_138 = var_AC.Text
  loc_128DFAB:         var_124 = CVar(var_B0) 'String
  loc_128DFB3:         Set var_128 = Me.FGrid
  loc_128DFB9:         LateIdCallSt
  loc_128DFD6:       Else
  loc_128DFDD:         If (var_A8 = CLng(4)) Then
  loc_128E00D:           Set var_94 = Me.TxtGrid
  loc_128E013:           Call 0.Method_Proc_317_32_128E1100 (arg_C, var_AC, var_B0, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), var_128)
  loc_128E01B:           var_124 = var_AC.Text
  loc_128E023:           var_124 = CVar(var_B0) 'String
  loc_128E02B:           Set var_128 = Me.FGrid
  loc_128E031:           LateIdCallSt
  loc_128E064:           var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_128E069:           var_E0 = 1
  loc_128E0A0:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_128E0B8:             var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_128E0C0:             Set var_AC = Me.FGrid
  loc_128E0DC:           End If
  loc_128E0DC:         End If
  loc_128E0DC:       End If
  loc_128E0DC:     End If
  loc_128E0DC:   End If
  loc_128E0DC: End If
  loc_128E0EF: Set var_94 = Me.TxtGrid
  loc_128E0F5: Call 0.Method_Proc_317_32_128E1100 (0, var_AC, 0, &HFF, FGrid.DispID_10000, var_124, var_E0)
  loc_128E0FD: var_AC.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_128E109: Proc_317_32_128E110 = var_128
End Sub
