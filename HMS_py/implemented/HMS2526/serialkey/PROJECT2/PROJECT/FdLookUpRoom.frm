VERSION 5.00
Begin VB.Form FdLookUpRoom
  Caption = "Look Up Room"
  BackColor = &HF5E7ED&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11460
  ClientHeight = 7170
  BeginProperty Font
    Name = "Times New Roman"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Text1
    Left = 285
    Top = 4410
    Width = 1590
    Height = 315
    Visible = 0   'False
    TabIndex = 5
  End
  Begin TextBox Text3
    BackColor = &HFFFFFF&
    Left = 810
    Top = 1290
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    Tag = "2,0"
    Alignment = 2 'Center
    MaxLength = 1
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid1
    Left = 2475
    Top = -45
    Width = 11415
    Height = 6075
    TabIndex = 3
  End
  Begin TopCtrl TopCtrl1
    Left = 255
    Top = 4380
    Width = 1185
    Height = 375
    Visible = 0   'False
    TabIndex = 4
  End
  Begin Label Label1
    Caption = "(C)lean"
    Index = 1
    ForeColor = &HC00000&
    Left = 525
    Top = 6285
    Width = 705
    Height = 240
    TabIndex = 1
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "(O)ut Of Order "
    Index = 2
    ForeColor = &HC00000&
    Left = 2835
    Top = 6285
    Width = 1380
    Height = 240
    TabIndex = 10
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "(D)irty"
    Index = 0
    ForeColor = &HC00000&
    Left = 1740
    Top = 6285
    Width = 585
    Height = 240
    TabIndex = 9
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 2
    BackColor = &HDAFCFE&
    ForeColor = &H80000008&
    Left = 1335
    Top = 6270
    Width = 285
    Height = 270
    TabIndex = 8
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 1
    BackColor = &HA2A2FF&
    ForeColor = &H80000008&
    Left = 2430
    Top = 6270
    Width = 285
    Height = 270
    TabIndex = 7
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 0
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 120
    Top = 6270
    Width = 285
    Height = 270
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label LBLRoomName
    BackColor = &HE7E6B8&
    ForeColor = &HC00000&
    Left = 45
    Top = 6225
    Width = 11340
    Height = 360
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "FdLookUpRoom"

Private global_78 As Integer

Private Sub Fgrid1_UnknownEvent_9 'EDFD34
  'Data Table: 429980
  Dim var_98 As Variant
  Dim var_AC As Long
  loc_EDFC9F: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_EDFCA2:   Exit Sub
  loc_EDFCA3: End If
  loc_EDFCBE: If (Me.Text3.Visible = &HFF) Then
  loc_EDFCCD:   Me.Text3.Visible = False
  loc_EDFCD5: End If
  loc_EDFCDF: var_98 = Me.FGrid1.Rows
  loc_EDFCEE: var_AC = 1
  loc_EDFD2F: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_EDFD32:   Exit Sub
  loc_EDFD33: End If
  loc_EDFD33: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E5CBA8
  'Data Table: 429980
  loc_E5CB6E: If (KeyCode = &HD) Then
  loc_E5CB9C:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5CB9F:     Call Fgrid1_UnknownEvent_9()
  loc_E5CBA4:   End If
  loc_E5CBA4: End If
  loc_E5CBA4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '116E720
  'Data Table: 429980
  Dim var_8E As Integer
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_13C As String
  Dim var_150 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_12C As Variant
  Dim unk_42998A As Connection15
  loc_116E3BB: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_116E3D2:   var_8E = CInt(CLng(Me.FGrid1.Col))
  loc_116E3DE: Else
  loc_116E41D:   var_8E = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_116E431: End If
  loc_116E444: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_116E44D: var_EC = CVar(CLng(var_8E)) 'Long
  loc_116E478: var_12C = Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_116E480: var_13C = "OCCUPIED"
  loc_116E48E: Set var_150 = Me.FGrid1
  loc_116E494: var_160 = var_150.Row
  loc_116E49D: var_170 = CVar(CLng(var_160)) 'Long
  loc_116E50B: If CBool(CVar(CLng(var_8E)) And (Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))) <> "OUT OF ORDER")) Then
  loc_116E521:   var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_116E52D:   var_EC = CVar(CLng((var_8E - 1))) 'Long
  loc_116E55F:   var_13C = "SELECT RoomCat.Name, RoomCat.Code FROM RoomMast LEFT JOIN RoomCat ON RoomMast.RoomCat = RoomCat.Code where rOOMmaST.CODE='"
  loc_116E56B:   var_170 = "'"
  loc_116E57E:   unk_42998A.Execute CStr(var_13C & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & var_170), var_160, -1
  loc_116E589:   Set var_8C = var_150
  loc_116E5C0:   If (Me.Recordset15.RecordCount > 0) Then
  loc_116E5CD:     var_BC = Me.FGrid1.Col
  loc_116E5E9:     var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_116E605:     var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_116E60E:     Set var_150 = Me.FGrid1
  loc_116E614:     var_10C = var_150.TextMatrix)
  loc_116E625:     var_12C = Trim(CVar(CStr(var_10C)))
  loc_116E637:     fdWalkInEntry.PRoomNo = CStr(var_12C)
  loc_116E658:     var_CC = "Code"
  loc_116E689:     fdWalkInEntry.PRoomTypeCode = Proc_6_38_E69628(CVar(Me.var_10C.Fields.Item(var_CC)), var_EC, var_CC, var_BC, var_150, var_EC, var_CC)
  loc_116E69A:     var_CC = "Name"
  loc_116E6CB:     fdWalkInEntry.PRoomTypeName = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_CC)), var_170, (var_12C <> var_13C), var_EC)
  loc_116E6E2:     Call 0.Method_arg_1C4 ("Online", var_CC)
  loc_116E6F5:     Call 0.Method_arg_2B0 (var_CC, var_DC)
  loc_116E700:     Call fdWalkInEntry.TopCtrl1_UnknownEvent_A()
  loc_116E70A:     global_78 = &HFF
  loc_116E70D:   End If
  loc_116E70D: End If
  loc_116E712: Set var_88 = Nothing
  loc_116E71A: Set var_8C = Nothing
  loc_116E71D: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'E5CAB8
  'Data Table: 429980
  loc_E5CA7E: If (KeyCode = &HD) Then
  loc_E5CAAC:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5CAAF:     Call Fgrid1_UnknownEvent_9()
  loc_E5CAB4:   End If
  loc_E5CAB4: End If
  loc_E5CAB4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '14285E8
  'Data Table: 429980
  Dim var_168 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As MSHFlexGrid
  Dim var_118 As Variant
  Dim unk_42998A As Connection15
  Dim var_88 As Recordset15
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_288 As Variant
  Dim var_2C0 As Variant
  Dim var_2E0 As Variant
  loc_1427BCF: var_168 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_1427BE6: var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1427C07: Set var_108 = Me.FGrid1
  loc_1427C0D: var_118 = var_108.TextMatrix)
  loc_1427C52: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_118))) <> vbNullString)) Then
  loc_1427C68:   var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1427CC3:   unk_42998A.Execute "Select Name from roommast where code='" & CStr(Me.FGrid1.TextMatrix)) & "'", var_118, -1
  loc_1427CCE:   Set var_88 = var_108
  loc_1427D04:   If (var_88.RecordCount > 0) Then
  loc_1427D42:     var_118 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), var_108, var_C4, CVar(CLng(Me.FGrid1.Col)))) & Space(5) 
  loc_1427D59:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1427D77:     var_104 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1427DB3:     var_1CC = var_104 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1427DCA:     var_168 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1427DE8:     var_214 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_1427E24:     var_288 = var_214 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1427E3B:     var_2C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1427E59:     var_2E0 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_1427E93:     Me.LBLRoomName.Caption = CStr(var_2E0 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1427EEB:   End If
  loc_1427EF5:   Me.LBLRoomName.Refresh
  loc_1427F00: Else
  loc_1427F25:   var_168 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_1427F3C:   var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1427F5D:   Set var_108 = Me.FGrid1
  loc_1427F63:   var_118 = var_108.TextMatrix)
  loc_1427FA8:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_118))) <> vbNullString)) Then
  loc_1427FBE:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1427FDC:     var_F4 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_142801F:     unk_42998A.Execute "Select Name from roommast where code='" & CStr(Me.FGrid1.TextMatrix)) & "'", var_118, -1
  loc_142802A:     Set var_88 = var_108
  loc_1428060:     If (var_88.RecordCount > 0) Then
  loc_1428066:       var_D4 = "Name"
  loc_142808B:       var_C4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_D4)), var_108, var_C4, CVar(CLng(Me.FGrid1.Col)), var_D4, var_D4, var_168)) 'String
  loc_142809E:       var_118 = var_C4 & Space(5) 
  loc_14280B5:       var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14280D3:       var_104 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_142810F:       var_1CC = var_104 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1428126:       var_168 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1428144:       var_214 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1428180:       var_288 = var_214 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1428197:       var_2C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14281B5:       var_2E0 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_14281EF:       Me.LBLRoomName.Caption = CStr(var_2E0 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1428247:     End If
  loc_1428251:     Me.LBLRoomName.Refresh
  loc_142825C:   Else
  loc_1428281:     var_168 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_1428298:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14282B9:     Set var_108 = Me.FGrid1
  loc_14282BF:     var_118 = var_108.TextMatrix)
  loc_1428304:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_118))) <> vbNullString)) Then
  loc_142831A:       var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1428338:       var_F4 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_142837B:       unk_42998A.Execute "Select Name from roommast where code='" & CStr(Me.FGrid1.TextMatrix)) & "'", var_118, -1
  loc_1428386:       Set var_88 = var_108
  loc_14283BC:       If (var_88.RecordCount > 0) Then
  loc_14283C2:         var_D4 = "Name"
  loc_14283E7:         var_C4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_D4)), var_108, var_C4, CVar(CLng(Me.FGrid1.Col)), var_D4, var_D4, var_168)) 'String
  loc_14283FA:         var_118 = var_C4 & Space(5) 
  loc_1428411:         var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_142842F:         var_104 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_142846B:         var_1CC = var_104 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1428482:         var_168 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14284A0:         var_214 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_14284DC:         var_288 = var_214 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14284F3:         var_2C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1428511:         var_2E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_142854B:         Me.LBLRoomName.Caption = CStr(var_2E0 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_14285A3:       End If
  loc_14285AD:       Me.LBLRoomName.Refresh
  loc_14285B8:     Else
  loc_14285C5:       Me.LBLRoomName.Caption = vbNullString
  loc_14285D7:       Me.LBLRoomName.Refresh
  loc_14285DF:     End If
  loc_14285DF:   End If
  loc_14285DF: End If
  loc_14285E4: Set var_88 = Nothing
  loc_14285E7: Exit Sub
End Sub

Private Sub Form_Load() 'ED0FC8
  'Data Table: 429980
  Dim var_88 As MSHFlexGrid
  loc_ED0F24: On Error Goto loc_ED0F81
  loc_ED0F3F: Proc_6_23_DFC5B8(Me, 7380)
  loc_ED0F59: Me.FGrid1.Top = CVar(CDbl(0))
  loc_ED0F73: Me.FGrid1.Left = CVar(CDbl(0))
  loc_ED0F7B: Call Proc_75_10_156F1A8(11580)
  loc_ED0F80: Exit Sub
  loc_ED0F81: ' Referenced from: ED0F24
  loc_ED0F89: Set var_88 = Err()
  loc_ED0F8F: Call 0.Method_arg_2C (var_B0)
  loc_ED0FB0: MsgBox(CVar(var_B0), &H10, "Information", var_E0, var_100)
  loc_ED0FC3: Exit Sub
  loc_ED0FC4: Exit Sub
  loc_ED0FC5: VCallFPR8
End Sub

Private Sub Form_Activate() 'E19064
  'Data Table: 429980
  loc_E19051: If (global_78 = &HFF) Then
  loc_E19054:   Call Proc_75_10_156F1A8()
  loc_E1905E:   global_78 = 0
  loc_E19061: End If
  loc_E19061: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E0A96C
  'Data Table: 429980
  loc_E0A962: If (CLng(KeyCode) = &H74) Then
  loc_E0A965:   Call Proc_75_10_156F1A8()
  loc_E0A96A: End If
  loc_E0A96A: Exit Sub
End Sub

Public Property Get FrmOpenType() 'E13A4C
  'Data Table: 429980
  loc_E13A40: var_88 = global_80
  loc_E13A43: FrmOpenType = 
End Sub

Public Property Let FrmOpenType(vNewValue) 'E13974
  'Data Table: 429980
  loc_E1396C: global_80 = vNewValue
  loc_E13970: Exit Sub
End Sub

Public Sub Proc_75_10_156F1A8
  'Data Table: 429980
  Dim var_96 As Integer
  Dim unk_42998A As Connection15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_8A As Integer
  Dim var_148 As Double
  Dim var_C0 As Variant
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_C4 As Variant
  Dim var_154 As Variant
  Dim var_168 As Variant
  Dim var_A0 As Recordset15
  Dim var_1A0 As Variant
  Dim var_128 As Variant
  Dim var_1D0 As Variant
  Dim var_92 As Integer
  loc_156E0EA: var_96 = 0
  loc_156E103: unk_42998A.Execute "Select * from roommast where Type='RO' order by COde", var_C0, -1
  loc_156E10E: Set var_88 = var_C4
  loc_156E12D: unk_42998A.Execute "Select * from RoomOcc where ChkOutDate is Null ", var_C0, -1
  loc_156E138: Set var_9C = var_C4
  loc_156E15E: Proc_6_7_F26918(var_C0, MemVar_1F950EC, "Select * from RoomBlockOut where Type='O' And ", var_128, -1)
  loc_156E17D: unk_42998A.Execute CStr(var_C4 & var_C0 & " between fromdate and ToDate"), var_C4, var_C4
  loc_156E188: Set var_A0 = var_C4
  loc_156E19E: var_8A = &H15
  loc_156E1B8: If (Me.Recordset15.RecordCount > 0) Then
  loc_156E1E8:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_156E224:     var_148 = Val(CStr(Me.Recordset15.RecordCount))
  loc_156E255:     var_C0 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(var_148) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_156E276:     var_8C = CInt(((Val(CStr(Format(var_C0, "00"))) + CDbl(1)) * CDbl(6)))
  loc_156E28E:   Else
  loc_156E2AB:     var_E4 = "00"
  loc_156E2BD:     var_C0 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_156E2C4:     var_104 = Format(var_C0, var_E4)
  loc_156E2DE:     var_8C = CInt(((Val(CStr(var_104)) + CDbl(1)) * CDbl(6)))
  loc_156E2ED:   End If
  loc_156E2F0: Else
  loc_156E309:   MsgBox("First Fill Room Master", &H40, var_E4, var_104, var_128)
  loc_156E31C: Else
  loc_156E31E:   var_90 = 1
  loc_156E323:   var_8E = 0
  loc_156E339:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_156E354:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_156E36E:   Call Proc_75_11_10F1D70((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1)
  loc_156E386:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_156E39B:   Set var_C4 = Me.FGrid1
  loc_156E3A1:   var_C4.Col = CVar(CLng(var_8E))
  loc_156E3A9:   ' Referenced from:   156F189
  loc_156E3BD:   If (Me.var_C4.EOF = 0) Then
  loc_156E3C2:     var_90 = 1
  loc_156E3C5:     ' Referenced from:   156F186
  loc_156E3CF:     If (var_90 <= (var_8A - 1)) Then
  loc_156E3E6:       For var_150 = (var_8C - 6) To (var_8C - 1):   var_94 = var_150 'Integer
  loc_156E3F6:         If (var_94 = (var_8C - 6)) Then
  loc_156E3FD:           var_D4 = CVar(CLng(var_90)) 'Long
  loc_156E40C:           var_E4 = Me.FGrid1.Col
  loc_156E445:           var_104 = CVar(Proc_6_38_E69628(CVar(Me.var_E4.Fields.Item("Code")), CVar(CLng(var_E4)), var_D4, (var_8C - 6), &HFF, var_90, var_8C)) 'String
  loc_156E44D:           Set var_17C = Me.FGrid1
  loc_156E453:           LateIdCallSt
  loc_156E486:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156E495:           Me.FGrid1.Col = "Code"
  loc_156E4A4:         End If
  loc_156E4AE:         If (var_94 = (var_8C - 5)) Then
  loc_156E4C8:           If (Me.Recordset15.RecordCount > 0) Then
  loc_156E4D1:             Me.Recordset15.MoveFirst
  loc_156E4D6:           End If
  loc_156E526:           Me.Recordset15.Find 1 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "RoomNo='", 0, 1, var_D4, var_17C, var_104) & "'", 1, var_148
  loc_156E551:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156E558:             var_B0 = CVar(CLng(var_90)) 'Long
  loc_156E570:             var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156E575:             var_168 = "Occupied"
  loc_156E57F:             Set var_154 = Me.FGrid1
  loc_156E585:             LateIdCallSt
  loc_156E59A:           Else
  loc_156E5AE:             If (var_A0.RecordCount > 0) Then
  loc_156E5B4:               var_A0.MoveFirst
  loc_156E5B9:             End If
  loc_156E5CD:             var_B0 = "Code"
  loc_156E5E4:             var_154 = Me.Recordset15.Fields.Item(var_B0)
  loc_156E606:             var_A0.Find var_168 & Proc_6_38_E69628(CVar(var_154), "RoomCode='", 0, 1, var_D4, var_154) & "'", var_F4, var_B0
  loc_156E631:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156E638:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156E650:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156E655:               var_168 = "Out Of Order"
  loc_156E65F:               Set var_154 = Me.FGrid1
  loc_156E665:               LateIdCallSt
  loc_156E67A:             Else
  loc_156E67E:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156E696:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156E69B:               var_168 = "Vacant"
  loc_156E6A5:               Set var_154 = Me.FGrid1
  loc_156E6AB:               LateIdCallSt
  loc_156E6BD:             End If
  loc_156E6BD:           End If
  loc_156E6D6:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156E6E5:           Me.FGrid1.Col = var_B0
  loc_156E6F4:         End If
  loc_156E6FE:         If (var_94 = (var_8C - 4)) Then
  loc_156E715:           If (var_A0.RecordCount > 0) Then
  loc_156E71B:             var_A0.MoveFirst
  loc_156E720:           End If
  loc_156E734:           var_B0 = "Code"
  loc_156E74B:           var_154 = Me.Recordset15.Fields.Item(var_B0)
  loc_156E76D:           var_A0.Find var_F4 & Proc_6_38_E69628(CVar(var_154), "RoomCode='", 0, 1, var_D4, var_154, var_168) & "'", var_B0, var_154
  loc_156E795:           If (var_A0.AbsolutePosition > 0) Then
  loc_156E7E1:             var_104 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("Type")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_156E7E9:             Set var_17C = Me.FGrid1
  loc_156E7EF:             LateIdCallSt
  loc_156E80C:           Else
  loc_156E83E:             var_168 = CVar(CLng(var_90)) 'Long
  loc_156E84D:             var_1A0 = Me.FGrid1.Col
  loc_156E89F:             var_F4 = (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomStat")), Me.var_1A0.Fields.Item("RoomStat"), "C") = vbNullString)
  loc_156E8AF:             var_1D0 = CVar(CStr(IIf(var_F4, "C", CVar(Proc_6_38_E69628(CVar(Me.var_1A0.Fields.Item("RoomStat")), CVar(CLng(var_1A0)), var_168))))) 'String
  loc_156E8B7:             Set var_1E4 = Me.FGrid1
  loc_156E8BD:             LateIdCallSt
  loc_156E8EA:           End If
  loc_156E8FE:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_156E91A:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_156E93B:           Call Proc_75_12_11B93D4(CByte(CLng(Me.FGrid1.Col)), var_92, var_1E4, var_1D0)
  loc_156E959:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_156E97A:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156E989:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_156E998:         End If
  loc_156E9A2:         If (var_94 = (var_8C - 3)) Then
  loc_156E9F2:           If (Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomStat")), var_168))) = "O") Then
  loc_156EA09:             If (var_A0.RecordCount > 0) Then
  loc_156EA0F:               var_A0.MoveFirst
  loc_156EA68:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & "'"), 0, 1
  loc_156EA97:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156EAE3:                 var_104 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("Reasons")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_156EAEB:                 Set var_17C = Me.FGrid1
  loc_156EAF1:                 LateIdCallSt
  loc_156EB0E:               Else
  loc_156EB12:                 var_B0 = CVar(CLng(var_90)) 'Long
  loc_156EB2A:                 var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156EB2F:                 var_168 = vbNullString
  loc_156EB39:                 Set var_154 = Me.FGrid1
  loc_156EB3F:                 LateIdCallSt
  loc_156EB51:               End If
  loc_156EB54:             Else
  loc_156EB58:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156EB70:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156EB75:               var_168 = vbNullString
  loc_156EB7F:               Set var_154 = Me.FGrid1
  loc_156EB85:               LateIdCallSt
  loc_156EB97:             End If
  loc_156EB9A:           Else
  loc_156EB9E:             var_B0 = CVar(CLng(var_90)) 'Long
  loc_156EBB6:             var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156EBBB:             var_168 = vbNullString
  loc_156EBC5:             Set var_154 = Me.FGrid1
  loc_156EBCB:             LateIdCallSt
  loc_156EBDD:           End If
  loc_156EBF6:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156EC05:           Me.FGrid1.Col = var_B0
  loc_156EC14:         End If
  loc_156EC1E:         If (var_94 = (var_8C - 2)) Then
  loc_156EC24:           var_B0 = "RoomStat"
  loc_156EC3B:           var_154 = Me.Recordset15.Fields.Item(var_B0)
  loc_156EC6E:           If (Trim(CVar(Proc_6_38_E69628(CVar(var_154), var_154, var_168, var_F4, var_B0, var_154, var_168))) = "O") Then
  loc_156EC85:             If (var_A0.RecordCount > 0) Then
  loc_156EC8B:               var_A0.MoveFirst
  loc_156ECD4:               var_F4 = "'"
  loc_156ECE4:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_F4), 0, 1
  loc_156ED13:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156ED5F:                 var_104 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("FromDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_F4)) 'String
  loc_156ED67:                 Set var_17C = Me.FGrid1
  loc_156ED6D:                 LateIdCallSt
  loc_156ED8A:               Else
  loc_156ED8E:                 var_B0 = CVar(CLng(var_90)) 'Long
  loc_156EDA6:                 var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156EDAB:                 var_168 = vbNullString
  loc_156EDB5:                 Set var_154 = Me.FGrid1
  loc_156EDBB:                 LateIdCallSt
  loc_156EDCD:               End If
  loc_156EDD0:             Else
  loc_156EDD4:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156EDEC:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156EDF1:               var_168 = vbNullString
  loc_156EDFB:               Set var_154 = Me.FGrid1
  loc_156EE01:               LateIdCallSt
  loc_156EE13:             End If
  loc_156EE16:           Else
  loc_156EE1A:             var_B0 = CVar(CLng(var_90)) 'Long
  loc_156EE32:             var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156EE37:             var_168 = vbNullString
  loc_156EE41:             Set var_154 = Me.FGrid1
  loc_156EE47:             LateIdCallSt
  loc_156EE59:           End If
  loc_156EE72:           var_B0 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_156EE81:           Me.FGrid1.Col = var_B0
  loc_156EE90:         End If
  loc_156EE9A:         If (var_94 = (var_8C - 1)) Then
  loc_156EEA0:           var_B0 = "RoomStat"
  loc_156EEB7:           var_154 = Me.Recordset15.Fields.Item(var_B0)
  loc_156EEEA:           If (Trim(CVar(Proc_6_38_E69628(CVar(var_154), var_154, var_168, var_F4, var_B0, var_154, var_168))) = "O") Then
  loc_156EF01:             If (var_A0.RecordCount > 0) Then
  loc_156EF07:               var_A0.MoveFirst
  loc_156EF50:               var_F4 = "'"
  loc_156EF60:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_F4), 0, 1
  loc_156EF8F:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_156EFDB:                 var_104 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("ToDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_F4)) 'String
  loc_156EFE3:                 Set var_17C = Me.FGrid1
  loc_156EFE9:                 LateIdCallSt
  loc_156F006:               Else
  loc_156F00A:                 var_B0 = CVar(CLng(var_90)) 'Long
  loc_156F022:                 var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156F027:                 var_168 = vbNullString
  loc_156F031:                 Set var_154 = Me.FGrid1
  loc_156F037:                 LateIdCallSt
  loc_156F049:               End If
  loc_156F04C:             Else
  loc_156F050:               var_B0 = CVar(CLng(var_90)) 'Long
  loc_156F068:               var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156F06D:               var_168 = vbNullString
  loc_156F077:               Set var_154 = Me.FGrid1
  loc_156F07D:               LateIdCallSt
  loc_156F08F:             End If
  loc_156F092:           Else
  loc_156F096:             var_B0 = CVar(CLng(var_90)) 'Long
  loc_156F0AE:             var_F4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_156F0B3:             var_168 = vbNullString
  loc_156F0BD:             Set var_154 = Me.FGrid1
  loc_156F0C3:             LateIdCallSt
  loc_156F0D5:           End If
  loc_156F0EE:           var_B0 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_156F0FD:           Me.FGrid1.Col = var_B0
  loc_156F10C:         End If
  loc_156F10F:       Next var_150 'Integer
  loc_156F11A:       var_90 = (var_90 + 1)
  loc_156F127:       If (var_90 > (var_8A - 1)) Then
  loc_156F143:         var_B0 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_156F152:         Me.FGrid1.Col = var_B0
  loc_156F161:       End If
  loc_156F167:       var_88.MoveNext
  loc_156F180:       If (var_88.EOF = &HFF) Then
  loc_156F183:         GoTo loc_156F18C
  loc_156F186:       End If
  loc_156F186:       GoTo loc_156E3C5
  loc_156F189:     End If
  loc_156F189:     GoTo loc_156E3A9
  loc_156F18C:     ' Referenced from:   156F183
  loc_156F18C:   End If
  loc_156F18C: End If
  loc_156F191: Set var_88 = Nothing
  loc_156F199: Set var_9C = Nothing
  loc_156F1A1: Set var_A0 = Nothing
  loc_156F1A4: Exit Sub
End Sub

Public Sub Proc_75_11_10F1D70(arg_C, arg_10) '10F1D70
  'Data Table: 429980
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_F8 As String
  Dim arg_10 As Integer
  Dim MeE8 As Variant
  loc_10F1A53: Me.FGrid1.Row = 0
  loc_10F1A5B: ' Referenced from: 10F1CB2
  loc_10F1A61: If (arg_10 < 5) Then
  loc_10F1A64:   GoTo loc_10F1CB5
  loc_10F1A67: End If
  loc_10F1A6B: Set var_B0 = Me.FGrid1
  loc_10F1A7C: For var_B4 = arg_10 To (arg_10 - 2) Step &HFF: var_86 = var_B4 'Integer
  loc_10F1A86:   var_98 = CVar(CLng(var_86)) 'Long
  loc_10F1A8B:   var_C4 = 0
  loc_10F1A98:   Set var_AC = Me.FGrid1
  loc_10F1A9E:   LateIdCallSt
  loc_10F1AAC: Next var_B4 'Integer
  loc_10F1AC0: For var_D8 = (arg_10 - 5) To (arg_10 - 3): var_86 = var_D8 'Integer
  loc_10F1AD0:   If (var_86 = (arg_10 - 5)) Then
  loc_10F1AD7:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F1ADC:     var_C4 = &H3E8
  loc_10F1AE9:     Set var_AC = Me.FGrid1
  loc_10F1AEF:     LateIdCallSt
  loc_10F1AFE:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F1B03:     var_C4 = 1
  loc_10F1B0D:     Set var_AC = Me.FGrid1
  loc_10F1B13:     LateIdCallSt
  loc_10F1B31:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F1B3A:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10F1B3F:     var_F8 = "Room No"
  loc_10F1B49:     Set var_10C = Me.FGrid1
  loc_10F1B4F:     LateIdCallSt
  loc_10F1B61:   End If
  loc_10F1B6B:   If (var_86 = (arg_10 - 4)) Then
  loc_10F1B72:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F1B77:     var_C4 = &H5DC
  loc_10F1B84:     Set var_AC = Me.FGrid1
  loc_10F1B8A:     LateIdCallSt
  loc_10F1B99:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F1B9E:     var_C4 = 1
  loc_10F1BA8:     Set var_AC = Me.FGrid1
  loc_10F1BAE:     LateIdCallSt
  loc_10F1BCC:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F1BD5:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10F1BDA:     var_F8 = "Status"
  loc_10F1BE4:     Set var_10C = Me.FGrid1
  loc_10F1BEA:     LateIdCallSt
  loc_10F1BFC:   End If
  loc_10F1C06:   If (var_86 = (arg_10 - 3)) Then
  loc_10F1C0D:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F1C12:     var_C4 = &H12C
  loc_10F1C1F:     Set var_AC = Me.FGrid1
  loc_10F1C25:     LateIdCallSt
  loc_10F1C34:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10F1C3F:     var_C4 = CVar(CInt(4)) 'Integer
  loc_10F1C47:     Set var_AC = Me.FGrid1
  loc_10F1C4D:     LateIdCallSt
  loc_10F1C6B:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F1C74:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10F1C79:     var_F8 = vbNullString
  loc_10F1C83:     Set var_10C = Me.FGrid1
  loc_10F1C89:     LateIdCallSt
  loc_10F1C9B:   End If
  loc_10F1C9E: Next var_D8 'Integer
  loc_10F1CA5: Set var_B0 = Nothing 
  loc_10F1CAF: arg_10 = (arg_10 - 6)
  loc_10F1CB2: GoTo loc_10F1A5B
  loc_10F1CB5: ' Referenced from: 10F1A64
  loc_10F1CDC: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_10F1CF5:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_10F1D05:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_10F1D1E:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_10F1D39:     Me.FGrid1.CellBackColor = &HE69839
  loc_10F1D54:     Me.FGrid1.CellForeColor = &HFFFF
  loc_10F1D5F:   Next var_114 'Integer
  loc_10F1D67: Next var_110 'Integer
  loc_10F1D6C: Exit Sub
  loc_10F1D6D: MeE8 = CVar() 'Long
End Sub

Public Sub Proc_75_12_11B93D4(arg_C) '11B93D4
  'Data Table: 429980
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_11B8F9B: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B8FA5: var_C8 = CVar(CLng(arg_C)) 'Long
  loc_11B8FE7: If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "D") Then
  loc_11B9003:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B900C:   Set var_DC = Me.FGrid1
  loc_11B9012:   var_DC.Col = var_A8
  loc_11B902D:   Set var_88 = Me.Label2
  loc_11B9033:   Call 0.Method_Proc_75_12_11B93D40 (2, var_DC, var_130)
  loc_11B903B:   var_C8 = var_DC.BackColor
  loc_11B9052:   Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B9079:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B9082:   Set var_DC = Me.FGrid1
  loc_11B9088:   var_DC.Col = CVar(var_130)
  loc_11B90A3:   Set var_88 = Me.Label2
  loc_11B90A9:   Call 0.Method_Proc_75_12_11B93D40 (2, var_DC)
  loc_11B90B1:   var_130 = var_DC.BackColor
  loc_11B90C8:   Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B90D9: Else
  loc_11B90EC:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B90F6:   var_C8 = CVar(CLng(arg_C)) 'Long
  loc_11B9138:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "O") Then
  loc_11B9154:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B9163:     Me.FGrid1.Col = var_A8
  loc_11B9185:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B918E:     Set var_DC = Me.FGrid1
  loc_11B919D:     var_C8 = CVar(CLng(var_DC.Col)) 'Long
  loc_11B91B2:     LateIdCallSt
  loc_11B91D6:     Set var_88 = Me.Label2
  loc_11B91DC:     Call 0.Method_Proc_75_12_11B93D40 (1, var_DC, var_130, Me.FGrid1, "Out Of Order")
  loc_11B91E4:     var_C8 = var_DC.BackColor
  loc_11B91FB:     Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B9222:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B922B:     Set var_DC = Me.FGrid1
  loc_11B9231:     var_DC.Col = CVar(var_130)
  loc_11B924C:     Set var_88 = Me.Label2
  loc_11B9252:     Call 0.Method_Proc_75_12_11B93D40 (1, var_DC, var_130, CVar(var_130))
  loc_11B925A:     var_C8 = var_DC.BackColor
  loc_11B9271:     Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B9282:   Else
  loc_11B9295:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B92E1:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "C") Then
  loc_11B92FD:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B9306:       Set var_DC = Me.FGrid1
  loc_11B930C:       var_DC.Col = var_A8
  loc_11B9327:       Set var_88 = Me.Label2
  loc_11B932D:       Call 0.Method_Proc_75_12_11B93D40 (0, var_DC, var_130, CVar(CLng(arg_C)))
  loc_11B9335:       var_A8 = var_DC.BackColor
  loc_11B934C:       Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B9373:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_11B937C:       Set var_DC = Me.FGrid1
  loc_11B9382:       var_DC.Col = CVar(var_130)
  loc_11B939D:       Set var_88 = Me.Label2
  loc_11B93A3:       Call 0.Method_Proc_75_12_11B93D40 (0, var_DC, var_130)
  loc_11B93AB:       var_A8 = var_DC.BackColor
  loc_11B93C2:       Me.FGrid1.CellBackColor = CVar(var_130)
  loc_11B93D0:     End If
  loc_11B93D0:   End If
  loc_11B93D0: End If
  loc_11B93D0: Exit Sub
End Sub
