VERSION 5.00
Begin VB.Form HallMenuCatalog
  Caption = "Menu Catalog"
  ForeColor = &H40&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  BorderStyle = 1 'Fixed Single
  Icon = "HallMenuCatalog.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = -2265
  ClientTop = 435
  ClientWidth = 11940
  ClientHeight = 7275
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MSFlexGrid FGPoint
    Left = 14325
    Top = 3210
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGHelp
    Left = 12345
    Top = 1035
    Width = 4410
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11940
    Height = 450
    TabIndex = 14
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 1500
    Top = 2205
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame Frame1
    Caption = "Category"
    BackColor = &H80000000&
    ForeColor = &H80000008&
    Left = 8805
    Top = 660
    Width = 1080
    Height = 735
    Visible = 0   'False
    TabIndex = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    Begin SSOption OptCat
      Index = 0
      Left = 210
      Top = 225
      Width = 705
      Height = 210
      TabIndex = 12
    End
    Begin SSOption OptCat
      Index = 1
      Left = 210
      Top = 450
      Width = 735
      Height = 240
      TabIndex = 11
    End
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2235
    Top = 1500
    Width = 2955
    Height = 285
    TabIndex = 2
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
  Begin DataGrid DGItemGrp
    Left = 12480
    Top = 465
    Width = 4170
    Height = 3045
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2235
    Top = 1185
    Width = 2955
    Height = 285
    TabIndex = 0
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 6180
    Top = 2175
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 5250
    Top = 1830
    Width = 7635
    Height = 7260
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid1
    Left = 735
    Top = 1875
    Width = 4395
    Height = 2805
    Visible = 0   'False
    TabIndex = 3
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 17
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
    Left = 135
    Top = 8820
    Width = 2430
    Height = 285
    TabIndex = 16
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
    Left = 150
    Top = 8490
    Width = 2520
    Height = 255
    TabIndex = 15
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
    Caption = "Item Group"
    Index = 2
    ForeColor = &HFF0000&
    Left = 765
    Top = 1485
    Width = 1065
    Height = 240
    TabIndex = 1
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
    Caption = "Catalog Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 750
    Top = 1185
    Width = 1350
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
End

Attribute VB_Name = "HallMenuCatalog"

Private global_96 As Integer
Private global_82 As Integer
Private MasterFormExit As Integer
Private global_80 As Integer

Private Sub DGItemGrp_UnknownEvent_9 'FE736C
  'Data Table: 4CE5F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE71A7: Me.DGItemGrp.Visible = False
  loc_FE71C6: If (Me.RecordCount > 0) Then
  loc_FE7203:   Set var_B4 = Me.TxtGrid
  loc_FE7209:   Call 0.Method_DGItemGrp_UnknownEvent_90 (0, var_B8)
  loc_FE7211:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE723A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE7242:   var_EC = CVar(CLng(2)) 'Long
  loc_FE7275:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE727D:   Set var_B8 = Me.FGrid
  loc_FE7283:   LateIdCallSt
  loc_FE72B2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE72BA:   var_EC = CVar(CLng(3)) 'Long
  loc_FE72DC:   var_B0 = Me.Fields.Item("Code")
  loc_FE72ED:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE72F5:   Set var_B8 = Me.FGrid
  loc_FE72FB:   LateIdCallSt
  loc_FE7317: End If
  loc_FE7323: Set var_A8 = Me.TxtGrid
  loc_FE7329: Call 0.Method_DGItemGrp_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE7331: var_A4 = var_B0.Visible
  loc_FE7343: If (var_12E = &HFF) Then
  loc_FE734F:   Set var_A8 = Me.TxtGrid
  loc_FE7355:   Call 0.Method_DGItemGrp_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE735D:   var_B0.SetFocus
  loc_FE7369: End If
  loc_FE7369: Exit Sub
  loc_FE736A: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_1F 'EA7388
  'Data Table: 4CE5F0
  Dim var_A8 As Variant
  loc_EA7308: Set var_88 = Me.DGItemGrp
  loc_EA7332: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA733A: Set var_BC = Me.DGItemGrp
  loc_EA7376: Proc_6_138_106E830(Me.DGItemGrp, global_60, CInt(1), Me.FGPoint)
  loc_EA7384: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '117984C
  'Data Table: 4CE5F0
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim Me As Recordset15
  Dim var_13C As Long
  loc_1179492: Set var_88 = Me.TxtGrid
  loc_1179498: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_11794A6: Proc_6_74_E23240(var_8C)
  loc_11794B2: Call Proc_121_63_EBC8E0(var_8C)
  loc_11794BA: var_92 = Index
  loc_11794C3: If (var_92 = 0) Then
  loc_11794DC:   Me.FGrid.CellBackColor = CVar(CLng(global_92))
  loc_1179500:   Set var_8C = Me.FGrid
  loc_1179536:   Set var_108 = Me.TxtGrid
  loc_117953C:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1179544:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_1179575:   var_114 = CLng(Me.FGrid.Col)
  loc_1179585:   If (var_114 = CLng(2)) Then
  loc_1179591:     Set var_88 = Me.OptCat
  loc_1179597:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_114)
  loc_117959F:     var_8C.Value
  loc_11795B5:     If (CBool(CVar(CLng(Me.FGrid.Row))) = &HFF) Then
  loc_11795B8:       Exit Sub
  loc_11795B9:     End If
  loc_11795C6:     Set var_90 = Me.TxtGrid
  loc_11795CC:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_11795E6:     Set var_88 = Me.TxtGrid
  loc_11795EC:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_1179600:     var_A4 = CVar((var_8C.Top + var_108.Height)) 'Single
  loc_1179609:     Set var_10C = Me.DGItemGrp
  loc_117960F:     var_10C.Top = CVar(CLng(Me.FGrid.Row))
  loc_117962E:     Set var_88 = Me.TxtGrid
  loc_1179634:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_1179653:     Me.DGItemGrp.Left = CVar(var_8C.Left)
  loc_11796A2:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11796A5:       Exit Sub
  loc_11796A6:     End If
  loc_11796AC:     Me.MoveFirst
  loc_11796C4:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11796CC:     var_E4 = CVar(CLng(3)) 'Long
  loc_1179710:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_1179740:     If (Me.EOF = &HFF) Then
  loc_1179749:       Me.MoveFirst
  loc_117974E:     End If
  loc_117974E:   End If
  loc_1179751: Else
  loc_1179757:   If (var_92 = 1) Then
  loc_1179776:     Set var_8C = Me.FGrid1
  loc_117977C:     var_D4 = var_8C.Col
  loc_1179785:     var_E4 = CVar(CLng(var_D4)) 'Long
  loc_11797AC:     Set var_108 = Me.TxtGrid
  loc_11797B2:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), var_E4, CVar(CLng(Me.FGrid1.Row)))
  loc_11797BA:     var_10C.Tag = var_138
  loc_11797EB:     var_13C = CLng(Me.FGrid1.Col)
  loc_11797FB:     If (var_13C = CLng(3)) Then
  loc_117980D:       Set var_88 = Me.TxtGrid
  loc_1179813:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_13C)
  loc_117981B:       var_8C.MaxLength = var_D4
  loc_1179830:       If (global_82 = 0) Then
  loc_117983B:         var_110 = "{Home}+{End}"
  loc_1179841:         Proc_303_0_FBACC8(CStr(Me.FGrid1.TextMatrix)), 0, var_E4)
  loc_1179849:       End If
  loc_1179849:     End If
  loc_1179849:   End If
  loc_1179849: End If
  loc_1179849: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12013E4
  'Data Table: 4CE5F0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_D4 As Variant
  loc_1200F3F: var_86 = KeyCode
  loc_1200F48: If (var_86 = 0) Then
  loc_1200F55:   If (CLng(Shift) = &H1B) Then
  loc_1200F65:     Set var_8C = Me.TxtGrid
  loc_1200F6B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1200F73:     var_94 = var_90.Tag
  loc_1200F85:     Set var_98 = Me.TxtGrid
  loc_1200F8B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1200F93:     var_9C.Text = var_94
  loc_1200FAF:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1200FB4:     Call Proc_121_63_EBC8E0(arg_14)
  loc_1200FBD:     Set var_8C = Me.FGrid
  loc_1200FDA:     Set var_8C = Me.TxtGrid
  loc_1200FE0:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1200FE8:     var_90.Visible = FGrid.DispID_8001
  loc_1200FF4:     Exit Sub
  loc_1200FF5:   End If
  loc_1201008:   var_B0 = CLng(Me.FGrid.Col)
  loc_1201018:   If (var_B0 = CLng(2)) Then
  loc_1201024:     Set var_8C = Me.OptCat
  loc_120102A:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1201032:     var_90.Value
  loc_1201048:     If (CBool(var_B0) = &HFF) Then
  loc_120104B:       Exit Sub
  loc_120104C:     End If
  loc_1201064:     Set var_9C = Nothing
  loc_120109D:     Proc_6_69_134A630(Me.DGItemGrp, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_12010BB:     If (CLng(Shift) = &HD) Then
  loc_12010C4:       Call Proc_121_59_126A99C(KeyCode, var_B2, 1, Nothing)
  loc_12010CF:       If (var_B2 = &HFF) Then
  loc_12010DD:         Set var_9C = Me.TxtGrid
  loc_120111C:         Proc_6_62_1254E68(Me.FGrid, var_9C, KeyCode, Shift, global_82, CByte((CInt(4) + 1)))
  loc_120114A:         var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), 0, 2))) 'String
  loc_1201152:         Set var_90 = Me.FGrid
  loc_1201176:         var_AC = Me.FGrid.Row
  loc_1201185:         var_D4 = CVar((CLng(var_AC) + 1)) 'Long
  loc_120118E:         Set var_90 = Me.FGrid
  loc_1201194:         var_90.Row = var_D4
  loc_12011B5:         Me.FGrid.Col = CVar(CLng(2))
  loc_12011BD:       End If
  loc_12011BD:     End If
  loc_12011BD:   End If
  loc_12011C0: Else
  loc_12011C6:   If (var_86 = 1) Then
  loc_12011D3:     If (CLng(Shift) = &H1B) Then
  loc_12011E3:       Set var_8C = Me.TxtGrid
  loc_12011E9:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, FGrid.DispID_10000, var_AC)
  loc_12011F1:       0 = var_90.Tag
  loc_1201203:       Set var_98 = Me.TxtGrid
  loc_1201209:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_1201211:       var_9C.Text = var_9C
  loc_1201224:       Call Proc_121_63_EBC8E0(0)
  loc_120122D:       Set var_8C = Me.FGrid1
  loc_120124A:       Set var_8C = Me.TxtGrid
  loc_1201250:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1201258:       var_90.Visible = FGrid1.DispID_8001
  loc_1201264:       Exit Sub
  loc_1201265:     End If
  loc_1201288:     If (CLng(Me.FGrid1.Col) = CLng(3)) Then
  loc_12012CB:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_1201309:         If (CLng(Me.FGrid1.Row) < (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_1201312:           Call Proc_121_59_126A99C(KeyCode, var_B2)
  loc_120131D:           If (var_B2 = &HFF) Then
  loc_120136A:             Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_82, CByte((CInt(3) + 1)))
  loc_120138C:             Me.FGrid1.Col = CVar(CLng(3))
  loc_1201394:           End If
  loc_1201397:         Else
  loc_120139F:           Call TxtGrid_Validate(KeyCode)
  loc_12013DB:           If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_12013DE:             Call TopCtrl1_UnknownEvent_16()
  loc_12013E3:           End If
  loc_12013E3:         End If
  loc_12013E3:       End If
  loc_12013E3:     End If
  loc_12013E3:   End If
  loc_12013E3: End If
  loc_12013E3: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EEDA88
  'Data Table: 4CE5F0
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_A4 As SSOption
  loc_EED9C3: Proc_6_58_E06050(arg_10)
  loc_EED9D4: If (KeyAscii = 0) Then
  loc_EED9EA:   var_A0 = CLng(Me.FGrid.Col)
  loc_EED9FA:   If (var_A0 = CLng(2)) Then
  loc_EEDA06:     Set var_8C = Me.OptCat
  loc_EEDA0C:     Call 0.Method_TxtGrid_KeyPress0 (0, var_A4)
  loc_EEDA14:     var_A4.Value
  loc_EEDA2A:     If (CBool(var_A0) = &HFF) Then
  loc_EEDA2D:       Exit Sub
  loc_EEDA2E:     End If
  loc_EEDA4A:     If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_EEDA5C:       var_A8 = "Name"
  loc_EEDA77:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10)
  loc_EEDA86:     End If
  loc_EEDA86:   End If
  loc_EEDA86: End If
  loc_EEDA86: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F056A4
  'Data Table: 4CE5F0
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_A4 As SSOption
  loc_F055C0: On Error Goto loc_F0569C
  loc_F055CF: If (KeyCode = 0) Then
  loc_F055E5:   var_A0 = CLng(Me.FGrid.Col)
  loc_F055F5:   If (var_A0 = CLng(2)) Then
  loc_F05601:     Set var_8C = Me.OptCat
  loc_F05607:     Call 0.Method_TxtGrid_KeyUp0 (0, var_A4)
  loc_F0560F:     var_A4.Value
  loc_F05625:     If (CBool(var_A0) = &HFF) Then
  loc_F05628:       Exit Sub
  loc_F05629:     End If
  loc_F0564C:     If ((Shift <> &HD) And (CBool(Me.DGItemGrp.Visible) = 0)) Then
  loc_F0565D:       Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F05671:       var_AC = "Name"
  loc_F0568C:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift)
  loc_F0569B:     End If
  loc_F0569B:   End If
  loc_F0569B: End If
  loc_F0569B: Exit Sub
  loc_F0569C: ' Referenced from: F055C0
  loc_F0569C: Proc_6_60_E63754(var_AC, &HFF)
  loc_F056A1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E53FA4
  'Data Table: 4CE5F0
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E53F67: var_86 = Cancel
  loc_E53F70: If (var_86 = 0) Then
  loc_E53F79:   Call Proc_121_59_126A99C(Cancel, var_88)
  loc_E53F82:   arg_10 = Not(var_88)
  loc_E53F88: Else
  loc_E53F8E:   If (var_86 = 1) Then
  loc_E53F97:     Call Proc_121_59_126A99C(Cancel, var_88)
  loc_E53FA0:     arg_10 = Not(var_88)
  loc_E53FA3:   End If
  loc_E53FA3: End If
  loc_E53FA3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FFFF70
  'Data Table: 4CE5F0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FFFD86: Set var_88 = Me.Txt
  loc_FFFD8C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FFFD9A: Proc_6_74_E23240(var_8C)
  loc_FFFDA6: Call Proc_121_63_EBC8E0(var_8C)
  loc_FFFDAE: var_92 = Index
  loc_FFFDB9: If (var_92 = CInt(1)) Then
  loc_FFFDD3:   If (Me.RecordCount > 0) Then
  loc_FFFDE1:     Set var_8C = Me.FGPoint
  loc_FFFDF9:     Proc_6_137_1192FDC(Me.DGItemGrp, global_60, Index)
  loc_FFFE07:   End If
  loc_FFFE55:   Set var_88 = Me.Txt
  loc_FFFE5B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FFFE63:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FFFE7B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FFFE7E:     Exit Sub
  loc_FFFE7F:   End If
  loc_FFFE8C:   Set var_88 = Me.Txt
  loc_FFFE92:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FFFE9A:   var_A0 = var_8C.Text
  loc_FFFEA2:   var_D4 = CVar(var_A0) 'String
  loc_FFFEE7:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FFFEF0:     Me.MoveFirst
  loc_FFFF15:     Set var_88 = Me.Txt
  loc_FFFF1B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FFFF23:     0 = var_8C.Text
  loc_FFFF31:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_FFFF47:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FFFF5F:   End If
  loc_FFFF62: Else
  loc_FFFF6A:   If (var_92 = CInt(0)) Then
  loc_FFFF6D:   End If
  loc_FFFF6D: End If
  loc_FFFF6D: Exit Sub
  loc_FFFF6E: DOC
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10EB350
  'Data Table: 4CE5F0
  Dim var_A8 As Variant
  Dim var_AA As Integer
  Dim Me As Recordset15
  loc_10EB04A: If (CLng(Shift) = &H1B) Then
  loc_10EB04D:   Call Proc_121_63_EBC8E0()
  loc_10EB052:   Exit Sub
  loc_10EB053: End If
  loc_10EB058: global_96 = 0
  loc_10EB065: If (CLng(Shift) = &HD) Then
  loc_10EB070:   If (KeyCode = CInt(1)) Then
  loc_10EB078:     global_96 = &HFF
  loc_10EB07B:   End If
  loc_10EB08D:   Me.FGrid.Col = CVar(CLng(2))
  loc_10EB095: End If
  loc_10EB098: var_AA = KeyCode
  loc_10EB0A3: If (var_AA = CInt(1)) Then
  loc_10EB0C3:   Set var_BC = Me.FGPoint
  loc_10EB0CE:   Set var_B8 = Nothing
  loc_10EB0FC:   Proc_6_69_134A630(Me.DGItemGrp, Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_10EB16B:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10EB172:     Set var_B8 = Me.DGItemGrp
  loc_10EB191:     Proc_6_138_106E830(var_B8, global_60, KeyCode, Me.FGPoint, var_B8)
  loc_10EB19F:   End If
  loc_10EB1A2: Else
  loc_10EB1AA:   If (var_AA = CInt(0)) Then
  loc_10EB1CF:     If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_10EB1D6:       Set var_BC = Me.DGHelp
  loc_10EB1EA:       Set var_B8 = Nothing
  loc_10EB21C:       Proc_6_79_11AD564(var_BC, Me.Txt, CInt(0), global_64, Shift, 0, 1)
  loc_10EB22E:     End If
  loc_10EB22E:   End If
  loc_10EB22E: End If
  loc_10EB269: If ((CBool(Me.DGItemGrp.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_10EB281:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10EB28A:     Proc_6_75_E5335C(Shift, arg_14, var_B8, 0, var_BC)
  loc_10EB28F:   End If
  loc_10EB293:   Set var_A8 = Me.TopCtrl1
  loc_10EB299:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_10EB2BB:   If ((CStr(var_AA) = "Add") And (KeyCode <> CInt(0))) Then
  loc_10EB2D3:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10EB2DC:       Proc_6_76_E533C8(Shift, arg_14)
  loc_10EB2E1:     End If
  loc_10EB2E4:   Else
  loc_10EB2E8:     Set var_A8 = Me.TopCtrl1
  loc_10EB2EE:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(global_96)
  loc_10EB310:     If ((CStr(global_96) = "Edit") And (KeyCode <> CInt(0))) Then
  loc_10EB328:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10EB331:         Proc_6_76_E533C8(Shift)
  loc_10EB336:       End If
  loc_10EB336:     End If
  loc_10EB336:   End If
  loc_10EB34B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10EB34E:   End If
  loc_10EB34E: End If
  loc_10EB34E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEE2C4
  'Data Table: 4CE5F0
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EEE200: On Error Goto loc_EEE2BB
  loc_EEE209: Proc_6_133_E7FB08(var_94)
  loc_EEE212: arg_10 = CInt(var_94)
  loc_EEE21B: Proc_6_58_E06050(arg_10, arg_10)
  loc_EEE22E: If (KeyAscii = CInt(1)) Then
  loc_EEE24D:   If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_EEE25F:     var_A0 = "Name"
  loc_EEE27A:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_EEE289:   End If
  loc_EEE2AC:   Proc_6_138_106E830(Me.DGItemGrp, global_60, KeyAscii, Me.FGPoint)
  loc_EEE2BA: End If
  loc_EEE2BA: Exit Sub
  loc_EEE2BB: ' Referenced from: EEE200
  loc_EEE2BB: Proc_6_60_E63754(var_A0, 0)
  loc_EEE2C0: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E97088
  'Data Table: 4CE5F0
  Dim var_86 As Integer
  loc_E97013: var_86 = KeyCode
  loc_E9701E: If (var_86 = CInt(0)) Then
  loc_E9703D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E9704A:     var_A4 = "Name"
  loc_E97069:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_64)
  loc_E97078:   End If
  loc_E9707B: Else
  loc_E97083:   If (var_86 = CInt(1)) Then
  loc_E97086:   End If
  loc_E97086: End If
  loc_E97086: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48E84
  'Data Table: 4CE5F0
  loc_E48E62: Set var_88 = Me.Txt
  loc_E48E68: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48E76: Proc_6_73_E23294(var_8C)
  loc_E48E82: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12C625C
  'Data Table: 4CE5F0
  Dim var_8C As Integer
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_98 As Fields15
  Dim var_A0 As String
  Dim var_B8 As Variant
  Dim var_88 As Integer
  Dim var_CC As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_120 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim arg_10 As Integer
  Dim unk_4CE61A As Connection15
  Dim var_B4 As Recordset15
  Dim var_17C As Field20
  loc_12C5C10: On Error Goto loc_12C6254
  loc_12C5C16: var_8C = Cancel
  loc_12C5C21: If (var_8C = CInt(1)) Then
  loc_12C5C44:   var_92 = Me.EOF
  loc_12C5C72:   Set var_98 = Me.Txt
  loc_12C5C78:   Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_12C5C80:   ((Me.RecordCount = 0) Or ((var_92 = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_12C5C98:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12C5CA8:     Set var_98 = Me.Txt
  loc_12C5CAE:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_12C5CB6:     var_9C.Text = vbNullString
  loc_12C5CCF:     Set var_98 = Me.Txt
  loc_12C5CD5:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_12C5CDD:     var_9C.Tag = vbNullString
  loc_12C5CEC:   Else
  loc_12C5D27:     Set var_B4 = Me.Txt
  loc_12C5D2D:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12C5D35:     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12C5D86:     Set var_B4 = Me.Txt
  loc_12C5D8C:     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_12C5D94:     var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12C5DAD:     Call Proc_121_57_1143AA8(var_92)
  loc_12C5DBE:     If (var_92 > 0) Then
  loc_12C5DC5:       Set var_CC = Me.FGrid1
  loc_12C5DCA:       var_88 = 0
  loc_12C5DE8:       For var_D0 = 1 To CInt((CLng(var_CC.Rows) - 1)):   var_86 = var_D0 'Integer
  loc_12C5DF2:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_12C5DF7:         var_F0 = 1
  loc_12C5E3E:         var_140 = CVar(Me.Fields.Item("Code")) 'Address
  loc_12C5E5F:         If (Trim(CVar(CStr(var_CC.TextMatrix)))) = Trim(var_140)) Then
  loc_12C5E64:           var_88 = &HFF
  loc_12C5E67:         End If
  loc_12C5E6A:       Next var_D0 'Integer
  loc_12C5E75:       If (var_88 = 0) Then
  loc_12C5E8A:         var_B0 = CVar((CLng(var_CC.Rows) - 1)) 'Long
  loc_12C5E8F:         var_F0 = 0
  loc_12C5EAC:         var_120 = CVar(CStr((CLng(var_CC.Rows) - 1))) 'String
  loc_12C5EB3:         LateIdCallSt
  loc_12C5ED6:         var_E0 = CVar((CLng(var_CC.Rows) - 1)) 'Long
  loc_12C5EDE:         var_100 = CVar(CLng(2)) 'Long
  loc_12C5F11:         var_120 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12C5F18:         LateIdCallSt
  loc_12C5F42:         var_E0 = CVar((CLng(var_CC.Rows) - 1)) 'Long
  loc_12C5F4A:         var_100 = CVar(CLng(1)) 'Long
  loc_12C5F6C:         var_9C = Me.Fields.Item("Code")
  loc_12C5F74:         var_110 = var_9C.Value
  loc_12C5F7D:         var_120 = CVar(CStr(var_110)) 'String
  loc_12C5F84:         LateIdCallSt
  loc_12C5F9F:         var_C8 = var_CC.Rows
  loc_12C5FAE:         var_B0 = CVar((CLng(var_C8) + 1)) 'Long
  loc_12C5FB6:         var_CC.Rows = "Code"
  loc_12C5FBE:       End If
  loc_12C5FC0:       Set var_CC = Nothing 
  loc_12C5FC4:     End If
  loc_12C5FCD:     If (global_96 = &HFF) Then
  loc_12C5FD2:       arg_10 = &HFF
  loc_12C5FD5:     End If
  loc_12C5FE2:     Set var_98 = Me.Txt
  loc_12C5FE8:     Call 0.Method_Txt_Validate0 (Cancel, var_9C, vbNullString, arg_10, var_CC, var_120, var_100)
  loc_12C5FF0:     var_9C.Text = var_E0
  loc_12C5FFC:   End If
  loc_12C5FFF: Else
  loc_12C6007:   If (var_8C = CInt(0)) Then
  loc_12C6021:     If (Me.RecordCount = 0) Then
  loc_12C6024:       Exit Sub
  loc_12C6025:     End If
  loc_12C6029:     Set var_98 = Me.TopCtrl1
  loc_12C602F:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_CC)
  loc_12C6037:     var_A0 = CStr(var_120)
  loc_12C6048:     If (var_A0 = "Add") Then
  loc_12C6051:       var_E0 = 0
  loc_12C6078:       Set var_98 = Me.Txt
  loc_12C607E:       Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "SELECT count(*) FROM CatalogMast Where Name='", var_C8, -1, var_B4)
  loc_12C609F:       unk_4CE61A.Execute var_E0 & var_A0 & "'", var_17C, var_110
  loc_12C60A7:       var_100 = var_B4.Fields
  loc_12C60AF:       var_CC = var_9C.Text.Item(var_E0)
  loc_12C60B7:        = var_17C.Value
  loc_12C60E4:       If (var_110 > 0) Then
  loc_12C60F2:         var_110 = "Information"
  loc_12C6102:         var_C8 = "Duplicate Name"
  loc_12C6108:         MsgBox(var_C8, &H40, var_110, var_120, var_140)
  loc_12C6123:         Set var_98 = Me.Txt
  loc_12C6129:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12C6131:         var_9C.SetFocus
  loc_12C613F:         arg_10 = &HFF
  loc_12C6142:         Exit Sub
  loc_12C6143:       End If
  loc_12C6146:     Else
  loc_12C6173:       Set var_98 = Me.Txt
  loc_12C6179:       Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "SELECT Count(*) FROM CatalogMast Where Name='", var_C8, -1, var_B4)
  loc_12C61AB:       unk_4CE61A.Execute 0 & var_A0 & "' And Name<>'" & global_88 & "'", var_17C, var_110
  loc_12C61B3:       arg_10 = var_B4.Fields
  loc_12C61BB:        = var_9C.Text.Item(var_9C)
  loc_12C61C3:        = var_17C.Value
  loc_12C61F4:       If (var_110 > 0) Then
  loc_12C6218:         MsgBox("Duplicate Name", &H40, "Information", var_120, var_140)
  loc_12C6233:         Set var_98 = Me.Txt
  loc_12C6239:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_12C6241:         var_9C.SetFocus
  loc_12C624F:         arg_10 = &HFF
  loc_12C6252:         Exit Sub
  loc_12C6253:       End If
  loc_12C6253:     End If
  loc_12C6253:   End If
  loc_12C6253: End If
  loc_12C6253: Exit Sub
  loc_12C6254: ' Referenced from: 12C5C10
  loc_12C6254: Proc_6_60_E63754(arg_10)
  loc_12C6259: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE5B4C
  'Data Table: 4CE5F0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE5AA3: Me.DGHelp.Visible = False
  loc_EE5AC2: If (Me.RecordCount > 0) Then
  loc_EE5AE2:   var_B0 = Me.Fields.Item("Name")
  loc_EE5B01:   Set var_B4 = Me.Txt
  loc_EE5B07:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE5B0F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5B25: End If
  loc_EE5B30: Set var_A8 = Me.Txt
  loc_EE5B36: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE5B3E: var_B0.SetFocus
  loc_EE5B4A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA30F0
  'Data Table: 4CE5F0
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA308B: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_92)) Then
  loc_EA30A1:   Me.FGrid.Col = 2
  loc_EA30A9: End If
  loc_EA30BC: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA30CF: Set var_88 = Me.TxtGrid
  loc_EA30D5: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA30DD: var_BC.Visible = False
  loc_EA30E9: Call Proc_121_63_EBC8E0()
  loc_EA30EE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68068
  'Data Table: 4CE5F0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68024: Set var_88 = Me.TxtGrid
  loc_E6802A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68044: If (var_8C.Visible = 0) Then
  loc_E6805D:   Me.FGrid.BackColorSel = CVar(CLng(global_92))
  loc_E68065: End If
  loc_E68065: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00EBC
  'Data Table: 4CE5F0
  loc_E00EB4: Call Proc_121_58_E42CA0()
  loc_E00EB9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10B10
  'Data Table: 4CE5F0
  loc_E10B01: Call FGrid_UnknownEvent_C()
  loc_E10B0B: global_82 = 0
  loc_E10B0E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E438BC
  'Data Table: 4CE5F0
  loc_E43898: Set var_88 = Me.TopCtrl1
  loc_E4389E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E438B7: If (CStr() = "Browse") Then
  loc_E438BA:   Exit Sub
  loc_E438BB: End If
  loc_E438BB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FF04C0
  'Data Table: 4CE5F0
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF02E8: Set var_90 = Me.TopCtrl1
  loc_FF02EE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FF0307: If (CStr() = "Browse") Then
  loc_FF030A:   Exit Sub
  loc_FF030B: End If
  loc_FF0328: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF032B:   Exit Sub
  loc_FF032C: End If
  loc_FF033D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FF035F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF0399:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF03BB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF03D1:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF03DA:         Set var_118 = Me.FGrid
  loc_FF03F5:       Else
  loc_FF0408:         Me.FGrid.Rows = 1
  loc_FF042E:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FF0436:         Set var_118 = Me.FGrid
  loc_FF0463:         Me.FGrid.FixedRows = 1
  loc_FF046B:       End If
  loc_FF046B:     End If
  loc_FF046E:   Else
  loc_FF048F:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF049F:   End If
  loc_FF04A3:   Set var_90 = Me.FGrid
  loc_FF04B4: End If
  loc_FF04B9: Set var_8C = Nothing
  loc_FF04BC: Exit Sub
  loc_FF04BD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43CA8
  'Data Table: 4CE5F0
  Dim var_8C As TextBox
  loc_E43C7C: Call Proc_121_63_EBC8E0()
  loc_E43C8C: Set var_88 = Me.TxtGrid
  loc_E43C92: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43C9A: var_8C.Visible = False
  loc_E43CA6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FA5B00
  'Data Table: 4CE5F0
  Dim unk_4CE61A As Connection15
  Dim var_A8 As Variant
  Dim var_90 As Variant
  Dim var_C0 As Variant
  loc_FA5980: On Error Goto loc_FA5AFA
  loc_FA598F: Set var_90 = Me
  loc_FA59A6: Call Proc_121_62_E7A684(Proc_5_1_100EC1C("ADD", var_90))
  loc_FA59B1: Call Proc_121_61_FABEFC(global_76)
  loc_FA59DA: unk_4CE61A.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_FA59E5: Set var_88 = var_90
  loc_FA5A0C: If (Me.Recordset15.RecordCount > 0) Then
  loc_FA5A2C:   var_C0 = Me.Recordset15.Fields.Item("CatalogLimit")
  loc_FA5A4E:   If (var_C0.Value = "Yes") Then
  loc_FA5A51:     var_A8 = True
  loc_FA5A5E:     Set var_90 = Me.OptCat
  loc_FA5A64:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_C0)
  loc_FA5A7B:   Else
  loc_FA5A7B:     var_A8 = True
  loc_FA5A88:     Set var_90 = Me.OptCat
  loc_FA5A8E:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (1, var_C0, var_A8)
  loc_FA5AA2:   End If
  loc_FA5AA2: End If
  loc_FA5AAF: Me.LblUser.Caption = vbNullString
  loc_FA5AC4: Me.LblLDt.Caption = vbNullString
  loc_FA5AD1: Set var_88 = Nothing
  loc_FA5ADF: Set var_90 = Me.Txt
  loc_FA5AE5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C0, OptCat.DispID_B)
  loc_FA5AED: var_C0.SetFocus
  loc_FA5AF9: Exit Sub
  loc_FA5AFA: ' Referenced from: FA5980
  loc_FA5AFA: Proc_6_60_E63754(OptCat.DispID_B, var_A8)
  loc_FA5AFF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9B318
  'Data Table: 4CE5F0
  loc_E9B2A0: On Error Goto loc_E9B311
  loc_E9B2DA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9B300:   Call Proc_121_62_E7A684(Proc_5_1_100EC1C("INI", Me))
  loc_E9B30B:   Call Proc_121_60_13E30D4(global_76)
  loc_E9B310: End If
  loc_E9B310: Exit Sub
  loc_E9B311: ' Referenced from: E9B2A0
  loc_E9B311: Proc_6_60_E63754()
  loc_E9B316: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11400D0
  'Data Table: 4CE5F0
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim unk_4CE61A As Connection15
  Dim var_96 As Integer
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_113FD74: On Error Goto loc_1140076
  loc_113FD85: If (Proc_183_56_FE8B08(global_76) = &HFF) Then
  loc_113FD88:   Exit Sub
  loc_113FD89: End If
  loc_113FDBB: var_D4 = "Hall Booking"
  loc_113FE03: If (Proc_6_108_101061C(MemVar_1F95044, "hallBook", "MenuCatalog", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_113FE06:   Exit Sub
  loc_113FE07: End If
  loc_113FE3E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_113FE4A:   unk_4CE61A.BeginTrans var_D0
  loc_113FE51:   var_96 = &HFF
  loc_113FE65:   var_94 = Me.Bookmark 'Variant
  loc_113FEB1:   var_118 = "Delete From CatalogMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_113FEBF:   unk_4CE61A.Execute CStr(var_118), var_138, -1
  loc_113FF0A:   var_168 = 0
  loc_113FF1D:   var_160 = 0
  loc_113FF28:   var_15C = 0
  loc_113FF3B:   var_154 = 0
  loc_113FF46:   var_150 = 0
  loc_113FF59:   var_148 = 0
  loc_113FF99:   var_B4 = "CatalogMast"
  loc_113FFA2:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_113FFD0:   unk_4CE61A.CommitTrans
  loc_113FFD7:   var_96 = 0
  loc_113FFE5:   Me.Requery -1
  loc_113FFF5:   Me.Requery -1
  loc_1140015:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1140022:     Me.Bookmark = var_94
  loc_114002A:   Else
  loc_114003E:     If (Me.EOF = 0) Then
  loc_1140047:       Me.MoveLast
  loc_114004C:     End If
  loc_114004C:   End If
  loc_114004C:   Call Proc_121_60_13E30D4(var_96, var_148, 0, var_150, var_154)
  loc_114006D:   Proc_5_0_1107AD0(&HFF, Me, global_76, 0)
  loc_1140075: End If
  loc_1140075: Exit Sub
  loc_1140076: ' Referenced from: 113FD74
  loc_114007C: If (var_96 = &HFF) Then
  loc_1140085:   unk_4CE61A.RollbackTrans
  loc_114008A: End If
  loc_1140092: Set var_9C = Err()
  loc_1140098: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_11400B9: MsgBox(CVar(var_B4), &H10, " Deletion Message", var_118, var_138)
  loc_11400CC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA8DA0
  'Data Table: 4CE5F0
  Dim var_94 As Variant
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_FA8C0C: On Error Goto loc_FA8D98
  loc_FA8C1D: If (Proc_183_55_FE8490(global_76) = &HFF) Then
  loc_FA8C20:   Exit Sub
  loc_FA8C21: End If
  loc_FA8C44: Call Proc_121_62_E7A684(Proc_5_1_100EC1C("EDIT", Me))
  loc_FA8C5D: Set var_8C = Me.Txt
  loc_FA8C63: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FA8C76: global_88 = var_94.Text
  loc_FA8C9D: var_B4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_FA8CA6: Set var_94 = Me.FGrid
  loc_FA8CAC: var_94.Row = var_B4
  loc_FA8CC5: Set var_8C = Me.FGrid
  loc_FA8CDF: Set var_8C = Me.OptCat
  loc_FA8CE5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_94, FGrid.DispID_10000)
  loc_FA8CED: var_94.Value
  loc_FA8D03: If (CBool(vbNullString) = &HFF) Then
  loc_FA8D0A:   Set var_8C = Me.FGrid1
  loc_FA8D34:   var_B4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_FA8D43:   Me.FGrid1.Row = vbNullString
  loc_FA8D52:   var_B4 = vbNullString
  loc_FA8D5C:   Set var_8C = Me.FGrid1
  loc_FA8D6D: End If
  loc_FA8D7A: Me.LblUser.Caption = vbNullString
  loc_FA8D8F: Me.LblLDt.Caption = vbNullString
  loc_FA8D97: Exit Sub
  loc_FA8D98: ' Referenced from: FA8C0C
  loc_FA8D98: Proc_6_60_E63754(FGrid1.DispID_10000, var_B4)
  loc_FA8D9D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B614
  'Data Table: 4CE5F0
  loc_E1B609: Me.Global.Unload Me
  loc_E1B611: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F96A1C
  'Data Table: 4CE5F0
  Dim Me As Recordset15
  Dim var_BC As String
  Dim unk_4CE61A As Connection15
  Dim var_118 As Fields15
  Dim MemVar_1F950E4 As String
  loc_F968C0: On Error Goto loc_F96A13
  loc_F968DA: If (Me.RecordCount <= 0) Then
  loc_F968F8:   var_AC = "Records Not Present For Searching."
  loc_F968FE:   MsgBox(var_AC, &H40, "Information", var_EC, var_10C)
  loc_F9690E:   Exit Sub
  loc_F9690F: End If
  loc_F96933: unk_4CE61A.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_AC, -1
  loc_F9693E: Set var_88 = var_118
  loc_F96965: If (Me.Recordset15.RecordCount > 0) Then
  loc_F96995:   var_BC = "Yes"
  loc_F969A7:   If (Me.Recordset15.Fields.Item("CatalogLimit").Value = var_BC) Then
  loc_F969B8:     MemVar_1F950E4 = "Select Distinct CA.Code As SearchCode,CA.Name As CatalogName FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CA.Category ='Y' Order by CA.Name"
  loc_F969C2:   Else
  loc_F969D0:     MemVar_1F950E4 = "Select Distinct CA.Code As SearchCode,CA.Name As CatalogName FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CA.Category <>'Y' OR IsNull(CA.Category) Order by CA.Name"
  loc_F969D7:   End If
  loc_F969D7: End If
  loc_F969DC: Set var_88 = Nothing
  loc_F969E5: MemVar_1F95120 = Me
  loc_F969F2: Proc_6_126_F1C850("4500", MemVar_1F950E4)
  loc_F96A0D: Call 0.Method_arg_2B0 (1, var_BC)
  loc_F96A12: Exit Sub
  loc_F96A13: ' Referenced from: F968C0
  loc_F96A13: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F96A18: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3ED68
  'Data Table: 4CE5F0
  loc_E3ED58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3ED60: Call Proc_121_60_13E30D4(global_76)
  loc_E3ED65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3E6A8
  'Data Table: 4CE5F0
  loc_E3E698: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E6A0: Call Proc_121_60_13E30D4(global_76)
  loc_E3E6A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3E4C8
  'Data Table: 4CE5F0
  Dim arg_78FF As Double
  loc_E3E4B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E4C0: Call Proc_121_60_13E30D4(global_76)
  loc_E3E4C5: Exit Sub
  loc_E3E4C6: arg_78FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3E828
  'Data Table: 4CE5F0
  loc_E3E818: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E820: Call Proc_121_60_13E30D4(global_76)
  loc_E3E825: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '14B6BF8
  'Data Table: 4CE5F0
  Dim var_B0 As Variant
  Dim var_B8 As String
  Dim unk_4CE61A As Connection15
  Dim var_CC As Variant
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_F0 As Variant
  Dim var_104 As Recordset15
  Dim var_DC As Variant
  Dim var_E0 As Fields15
  Dim var_10C As Field20
  Dim var_B4 As String
  Dim var_134 As Double
  Dim var_12C As String
  Dim var_100 As Variant
  Dim var_9E As Integer
  Dim var_8C As Recordset15
  Dim var_106 As Integer
  Dim var_11C As Variant
  Dim var_15C As Variant
  loc_14B5F14: On Error Goto loc_14B6BAC
  loc_14B5F1F: If (MemVar_1F953B0 = "A") Then
  loc_14B5F40:   Set var_AC = Me.Txt
  loc_14B5F46:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0, var_B4, "SELECT CatalogMast.Name as CatlogName, ItemGrp.Name as ItemGroup, ItemMast.Name as ItemName,CatalogMast.Category AS Category FROM (CatalogMast INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) iNNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code where catalogmast.Code='")
  loc_14B5F4E:   var_DC = var_B0.Tag
  loc_14B5F57:   var_B8 = -1 & var_B4
  loc_14B5F67:   unk_4CE61A.Execute var_B8 & "'", var_E0, 
  loc_14B5F72:   Set var_88 = var_E0
  loc_14B5F8D: Else
  loc_14B5F95:   If (MemVar_1F953B0 = "S") Then
  loc_14B5FB6:     Set var_AC = Me.Txt
  loc_14B5FBC:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0, var_B4, "SELECT CatalogMast.Name as CatlogName, ItemGrp.Name as ItemGroup, ItemMast.Name as ItemName,CatalogMast.Category AS Category FROM (CatalogMast INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) iNNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code where catalogmast.Code='")
  loc_14B5FC4:     var_DC = var_B0.Tag
  loc_14B5FCD:     var_B8 = -1 & var_B4
  loc_14B5FDD:     unk_4CE61A.Execute var_B8 & "' Order By ItemGrp.Name,ItemMast.Name", var_E0, 
  loc_14B5FE8:     Set var_88 = var_E0
  loc_14B6000:   End If
  loc_14B6000: End If
  loc_14B601A: var_B0 = var_88.Fields.Item("Category")
  loc_14B603C: If (var_B0.Value = "Y") Then
  loc_14B6063:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0, var_B4, "SELECT CatalogMast.Name as CatlogName, ItemGrp.Name as ItemGroup, ItemMast.Name as ItemName,CatalogMast.Category AS Category, GroupCatalog.Limit AS MaxLimit,ItemMast.Specification AS Specification FROM ((CatalogMast INNER JOIN ItemGrp ON CatalogMast.ItemCatCode = ItemGrp.Code) INNER JOIN GroupCatalog ON CatalogMast.Code=GroupCatalog.CatCode AND CatalogMast.ItemCatCode=GroupCatalog.ItemCatCode) INNER JOIN ItemMast ON CatalogMast.ItemCode = ItemMast.Code where catalogmast.Code='")
  loc_14B606B:   var_DC = var_B0.Tag
  loc_14B6074:   var_B8 = -1 & var_B4
  loc_14B6084:   unk_4CE61A.Execute var_B8 & "' ORDER BY ItemGrp.Name", var_E0, 
  loc_14B608F:   Set var_88 = var_E0
  loc_14B60B4:   Call Proc_121_56_FDF9F0(New)
  loc_14B60BC:   Set var_8C = Me.Txt
  loc_14B60C2:   Set var_104 = var_8C 
  loc_14B60C6:   ' Referenced from: 14B67C8
  loc_14B60D5:   If Not(Me.Recordset15.EOF) Then
  loc_14B60E8:     If (((var_9E Mod &H1B) <> 0) Or (var_9E = 0)) Then
  loc_14B60EE:       var_F0 = CVar(var_A4) 'String
  loc_14B60F8:       var_CC = "ItemGroup"
  loc_14B6128:       If CBool(var_F0 <> var_88.Fields.Item(var_CC).Value) Then
  loc_14B6136:         var_104.AddNew var_CC, var_F0
  loc_14B617E:         var_104.Fields.Item("ItemName").Value = CVar(var_88.Fields.Item("ItemGroup"))
  loc_14B61B5:         Proc_6_48_EF4E00(var_100, CVar(var_88.Fields.Item("MaxLimit")))
  loc_14B61CF:         If (var_100 > 0) Then
  loc_14B622E:           var_12C = "(Choose any " & Proc_6_43_1003B24(Abs(Val(CStr(var_88.Fields.Item("MaxLimit").Value))), vbNullString, vbNullString)
  loc_14B6235:           var_100 = CVar(var_12C & ")") 'String
  loc_14B6258:           var_104.Fields.Item("Remark").Value = var_100
  loc_14B627C:           var_F0 = "Y"
  loc_14B6285:           var_CC = "HFontBold"
  loc_14B62A1:           var_104.Fields.Item(var_CC).Value = var_F0
  loc_14B62AD:         End If
  loc_14B62B8:         var_104.Update var_CC, var_F0
  loc_14B62C6:         If (CInt(var_A6) = 1) Then
  loc_14B62CD:           var_A6 = CByte(0) 'Byte
  loc_14B62D4:         Else
  loc_14B62DA:           var_9E = (var_9E + 1)
  loc_14B62DD:         End If
  loc_14B62E3:         var_CC = "ItemGroup"
  loc_14B6308:         var_A4 = CStr(var_88.Fields.Item(var_CC).Value)
  loc_14B6315:       End If
  loc_14B6320:       var_104.AddNew var_CC, var_F0
  loc_14B6368:       var_104.Fields.Item("ItemName").Value = CVar(var_88.Fields.Item("ItemName"))
  loc_14B63BC:       var_104.Fields.Item("Remark").Value = CVar(var_88.Fields.Item("Specification"))
  loc_14B63CD:       var_F0 = "N"
  loc_14B63D6:       var_CC = "HFontBold"
  loc_14B63F2:       var_104.Fields.Item(var_CC).Value = var_F0
  loc_14B6409:       var_104.Update var_CC, var_F0
  loc_14B6417:       If (CInt(var_A6) = 1) Then
  loc_14B641E:         var_A6 = CByte(0) 'Byte
  loc_14B6425:       Else
  loc_14B642B:         var_9E = (var_9E + 1)
  loc_14B642E:       End If
  loc_14B6431:       var_88.MoveNext
  loc_14B6439:     Else
  loc_14B643F:       If (var_9E = &H1B) Then
  loc_14B644A:         var_8C.AbsolutePosition = 1
  loc_14B6452:       Else
  loc_14B645F:         var_8C.AbsolutePosition = CLng(((var_9E - &H1B) + 1))
  loc_14B6464:         ' Referenced from:     14B67B4
  loc_14B6464:       End If
  loc_14B6473:       If Not(var_8C.EOF) Then
  loc_14B6488:         If Not((var_88.EOF = &HFF)) Then
  loc_14B64C8:           If CBool(CVar(var_A4) <> var_88.Fields.Item("ItemGroup").Value) Then
  loc_14B650E:             var_104.Fields.Item("ItemName1").Value = CVar(var_88.Fields.Item("ItemGroup"))
  loc_14B6545:             Proc_6_48_EF4E00(var_100, CVar(var_88.Fields.Item("MaxLimit")), var_9E)
  loc_14B655F:             If (var_100 > 0) Then
  loc_14B6595:               var_134 = Val(CStr(var_88.Fields.Item("MaxLimit").Value))
  loc_14B65E8:               var_104.Fields.Item("Remark1").Value = CVar(var_134 & Proc_6_43_1003B24(Abs(var_134), vbNullString, vbNullString, "(Choose any ") & ")")
  loc_14B660C:               var_F0 = "Y"
  loc_14B6615:               var_CC = "HFontBold1"
  loc_14B6631:               var_104.Fields.Item(var_CC).Value = var_F0
  loc_14B663D:             End If
  loc_14B6648:             var_104.Update var_CC, var_F0
  loc_14B6650:             var_104.MoveNext
  loc_14B6680:             var_A4 = CStr(var_88.Fields.Item("ItemGroup").Value)
  loc_14B668D:           End If
  loc_14B669E:           If (var_8C.EOF = &HFF) Then
  loc_14B66A1:             GoTo loc_14B67B7
  loc_14B66A4:           End If
  loc_14B66E7:           var_104.Fields.Item("ItemName1").Value = CVar(var_88.Fields.Item("ItemName"))
  loc_14B672B:           var_E0 = var_104.Fields
  loc_14B6733:           var_10C = var_E0.Item("Remark1")
  loc_14B673B:           var_10C.Value = CVar(var_88.Fields.Item("Specification"))
  loc_14B674C:           var_F0 = "N"
  loc_14B6755:           var_CC = "HFontBold1"
  loc_14B6769:           var_B0 = var_104.Fields.Item(var_CC)
  loc_14B6771:           var_B0.Value = var_F0
  loc_14B6788:           var_104.Update var_CC, var_F0
  loc_14B6790:           var_104.MoveNext
  loc_14B6798:           var_88.MoveNext
  loc_14B67AE:           If (var_88.EOF = &HFF) Then
  loc_14B67B1:             GoTo loc_14B67B7
  loc_14B67B4:           End If
  loc_14B67B4:         End If
  loc_14B67B4:         GoTo loc_14B6464
  loc_14B67B7:         ' Referenced from:   14B67B1
  loc_14B67B7:         ' Referenced from:   14B66A1
  loc_14B67B7:       End If
  loc_14B67BD:       var_9E = (var_9E + 1)
  loc_14B67C4:       var_A6 = CByte(1) 'Byte
  loc_14B67C8:     End If
  loc_14B67C8:     GoTo loc_14B60C6
  loc_14B67CB:   End If
  loc_14B67CD:   Set var_104 = Nothing 
  loc_14B67E7:   Set var_AC = var_8C 
  loc_14B67F3:   var_106 = CreateFieldDefFile(var_AC, MemVar_1F950B4 & "\catlog1.ttx", &HFF, var_9E)
  loc_14B67FD:   Set var_8C = var_AC
  loc_14B6803:   var_CC = CVar(var_106) 'Integer
  loc_14B6806:   var_9C = var_CC 'Variant
  loc_14B6822:   var_B4 = MemVar_1F950B4 & "\catlog1.RPT"
  loc_14B682B:   Call 0.Method_arg_1C (var_B4, var_CC, var_AC, var_106)
  loc_14B6836:   MemVar_1F951E8 = var_AC
  loc_14B6851:   Call 0.Method_arg_90 (var_AC, var_138, var_9E, 1)
  loc_14B6859:   Call 0.Method_arg_24 (var_9E, var_134)
  loc_14B6865:   For var_13C =  To CInt(var_138): var_AC = var_13C 'Integer
  loc_14B687E:     Call 0.Method_arg_90 (var_AC, CLng(var_9E))
  loc_14B6886:     Call 0.Method_arg_20 (var_B0)
  loc_14B688E:     Call 0.Method_arg_30 (var_B4)
  loc_14B68D4:     If (Ucase(CVar(var_B4)) = Ucase("Title")) Then
  loc_14B68E7:       Set var_AC = Me.Txt
  loc_14B68ED:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0)
  loc_14B6908:       var_F0 = "'"
  loc_14B6925:       Call 0.Method_arg_90 (var_E0, CLng(var_9E))
  loc_14B692D:       Call 0.Method_arg_20 (var_10C)
  loc_14B6935:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_B0)) & var_F0))
  loc_14B6951:     End If
  loc_14B6954:   Next var_13C 'Integer
  loc_14B6972:   Call 0.Method_arg_64 (var_AC, CVar(var_8C))
  loc_14B697A:   Call 0.Method_arg_2C (var_F0)
  loc_14B6988:   Call 0.Method_arg_150 (var_16C)
  loc_14B6992:   Set var_8C = Nothing
  loc_14B6998: Else
  loc_14B69A7:   var_B8 = MemVar_1F950B4 & "\catlog.ttx"
  loc_14B69AE:   Set var_AC = var_88 
  loc_14B69BA:   var_106 = CreateFieldDefFile(var_AC, var_B8)
  loc_14B69C4:   Set var_88 = var_AC
  loc_14B69CA:   var_CC = CVar(var_106) 'Integer
  loc_14B69CD:   var_9C = var_CC 'Variant
  loc_14B69E9:   var_B4 = MemVar_1F950B4 & "\catlog.RPT"
  loc_14B69F2:   Call 0.Method_arg_1C (var_B4, var_CC, var_AC)
  loc_14B69FD:   MemVar_1F951E8 = var_AC
  loc_14B6A18:   Call 0.Method_arg_90 (var_AC, var_138, var_9E)
  loc_14B6A20:   Call 0.Method_arg_24 (1, var_106)
  loc_14B6A2C:   For var_170 =  To CInt(var_138):   &HFF = var_170 'Integer
  loc_14B6A45:     Call 0.Method_arg_90 (var_AC, CLng(var_9E))
  loc_14B6A4D:     Call 0.Method_arg_20 (var_B0)
  loc_14B6A55:     Call 0.Method_arg_30 (var_B4)
  loc_14B6A9B:     If (Ucase(CVar(var_B4)) = Ucase("Title")) Then
  loc_14B6AAE:       Set var_AC = Me.Txt
  loc_14B6AB4:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B0)
  loc_14B6ACB:       var_11C = "'" & Trim(CVar(var_B0)) 
  loc_14B6ACF:       var_F0 = "'"
  loc_14B6AD4:       var_15C = var_11C & var_F0 
  loc_14B6AD8:       var_B4 = CStr(var_15C)
  loc_14B6AEC:       Call 0.Method_arg_90 (var_E0, CLng(var_9E))
  loc_14B6AF4:       Call 0.Method_arg_20 (var_10C)
  loc_14B6AFC:       Call 0.Method_arg_38 (var_B4)
  loc_14B6B18:     End If
  loc_14B6B1B:   Next var_170 'Integer
  loc_14B6B39:   Call 0.Method_arg_64 (var_AC, CVar(var_88))
  loc_14B6B41:   Call 0.Method_arg_2C (var_F0)
  loc_14B6B4F:   Call 0.Method_arg_150 (var_16C)
  loc_14B6B54: End If
  loc_14B6B5A: Call 0.Method_arg_50 (var_B4)
  loc_14B6B64: Set var_B0 = Nothing
  loc_14B6B7E: Set var_AC = MemVar_1F951E8 
  loc_14B6B8A: Proc_6_99_1484404(var_AC, 0, var_B4)
  loc_14B6B95: MemVar_1F951E8 = var_AC
  loc_14B6BA8: Set var_88 = Nothing
  loc_14B6BAB: Exit Sub
  loc_14B6BAC: ' Referenced from: 14B5F14
  loc_14B6BB4: Set var_AC = Err()
  loc_14B6BBA: Call 0.Method_arg_2C (var_B4, &HFF)
  loc_14B6BC5: Call 0.Method_arg_50 (var_B8)
  loc_14B6BE1: MsgBox(CVar(var_B4), &H10, CVar(var_B8), var_11C, var_15C)
  loc_14B6BF4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E20F24
  'Data Table: 4CE5F0
  Dim Me As Recordset15
  loc_E20F0B: Me.Requery -1
  loc_E20F1B: Me.Requery -1
  loc_E20F20: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1530E1C
  'Data Table: 4CE5F0
  Dim var_94 As Variant
  Dim var_AC As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4CE61A As Connection15
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_86 As Integer
  Dim var_A4 As Variant
  Dim var_120 As Variant
  Dim var_E4 As Variant
  Dim var_140 As String
  Dim var_130 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_234 As Variant
  Dim var_150 As Variant
  Dim var_1D0 As Variant
  Dim var_254 As Variant
  Dim var_2A4 As Variant
  Dim var_2F4 As Variant
  Dim var_3C8 As Variant
  Dim var_45C As Double
  loc_152FEF0: On Error Goto loc_1530E00
  loc_152FEFC: Set var_90 = Me.OptCat
  loc_152FF02: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_152FF0A: var_94.Value
  loc_152FF20: If (CBool(var_94) = &HFF) Then
  loc_152FF2E:   Set var_90 = Me.Txt
  loc_152FF34:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_152FF5D:   If (Proc_183_19_E8E68C(var_94, "Catalog Name") = 0) Then
  loc_152FF67:     Call Txt_GotFocus(CInt(0))
  loc_152FF6C:     Exit Sub
  loc_152FF6D:   End If
  loc_152FF70:   Call Proc_121_66_1060D64(var_AE)
  loc_152FF7B:   If (var_AE = &HFF) Then
  loc_152FF7E:     Exit Sub
  loc_152FF7F:   End If
  loc_152FF83:   Set var_90 = Me.TopCtrl1
  loc_152FF89:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_94)
  loc_152FFA2:   If (CStr() = "Add") Then
  loc_152FFAB:     var_D4 = 0
  loc_152FFC8:     var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From CatalogMast wHERE SITE_CODE='" & MemVar_1F95070
  loc_152FFD8:     unk_4CE61A.Execute CStr() & "'", var_A4, -1
  loc_152FFE0:     var_90 = var_90.Fields
  loc_152FFE8:     var_D4 = var_94.Item(var_94)
  loc_152FFF0:     var_A8 = var_A8.Value
  loc_1530029:     var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_153004F:     var_E4 = Format(CStr(var_E4), "000")
  loc_1530057:     var_108 = (1 + var_E4)
  loc_1530062:     global_84 = CStr(var_108)
  loc_1530077:   Else
  loc_1530094:     var_94 = Me.Fields.Item("SearchCode")
  loc_153009C:     var_A4 = var_94.Value
  loc_15300AB:     global_84 = CStr(var_A4)
  loc_15300BC:   End If
  loc_15300C7:   Set var_90 = Me.TxtGrid
  loc_15300CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94, 0)
  loc_15300D5:   var_94.Visible = True
  loc_15300EC:   Set var_90 = Me.TxtGrid
  loc_15300F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_94, 0)
  loc_15300FA:   var_94.Visible = var_F8
  loc_1530106:   Call Proc_121_63_EBC8E0(var_E4)
  loc_153010D:   var_86 = &HFF
  loc_1530119:   unk_4CE61A.BeginTrans var_10C
  loc_1530145:   unk_4CE61A.Execute "Delete From CatalogMast Where Code='" & global_84 & "'", var_A4, -1
  loc_1530175:   var_B4 = "Delete From GroupCatalog Where CatCode='" & global_84 & "'"
  loc_153017E:   unk_4CE61A.Execute var_B4, var_A4, -1
  loc_15301B5:   For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_110 'Integer
  loc_1530203:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1530214:       Set var_90 = Me.Txt
  loc_153021A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, CVar(CLng(3)), CVar(CLng(var_88)))
  loc_1530222:       1 = var_94.Text
  loc_1530239:       var_130 = CVar(CLng(var_88)) 'Long
  loc_1530250:       var_1A0 = Me.FGrid.TextMatrix)
  loc_1530277:       var_234 = Me.FGrid.TextMatrix)
  loc_153028E:       Proc_183_7_EB17D4(var_314, MemVar_1F950EC, var_234, CVar(CLng(3)), CVar(CLng(var_88)), var_1A0)
  loc_1530297:       Set var_348 = Me.TopCtrl1
  loc_153029D:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(4)))
  loc_15302EB:       var_AC = "Insert Into CatalogMast(Code,Name,RestCode,ItemCatCode,ItemCode,Site_Code,U_Name,U_EntDt,U_AE,Category,Logsite_Code) Values('" & global_84
  loc_15302F8:       var_108 = CVar(var_AC & "','") & Trim(CVar(var_B4)) 
  loc_1530336:       var_254 = var_108 & "','" & CVar(global_56) & "','" & CVar(CStr(var_1A0)) & "','" & CVar(CStr(var_234)) 
  loc_1530365:       var_2F4 = var_254 & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_15303A6:       unk_4CE61A.Execute CStr(var_2F4 & var_314 & ",'" & IIf((CStr(var_358) = "Add"), "A", "E") & "','Y','" & CVar(MemVar_1F95078) & "')"), var_44C, -1
  loc_1530406:     End If
  loc_1530409:   Next var_110 'Integer
  loc_1530433:   For var_454 = 1 To CInt((CLng(Me.FGrid1.Rows) - 2)): var_88 = var_454 'Integer
  loc_153043D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1530445:     var_120 = CVar(CLng(3)) 'Long
  loc_1530465:     var_F8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_153046D:     var_140 = vbNullString
  loc_153047B:     var_180 = CVar(CLng(var_88)) 'Long
  loc_1530483:     var_1D0 = CVar(CLng(3)) 'Long
  loc_1530492:     var_150 = Me.FGrid1.TextMatrix)
  loc_15304AA:     var_2A4 = (CDbl(Val(CStr(var_150))) = CDbl(0))
  loc_1530515:     If CBool(CVar(CLng(var_88)) Or CVar(CLng(2)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_153051C:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_1530524:       var_120 = CVar(CLng(2)) 'Long
  loc_153056A:       MsgBox(CVar("Please enter the choose limit of " & CStr(Me.FGrid1.TextMatrix)) & "."), &H40, "Catalog Master...", var_108, var_150)
  loc_153058A:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_1530592:       var_120 = CVar(CLng(3)) 'Long
  loc_153059B:       var_A4 = CVar(CStr(0)) 'String
  loc_15305A3:       Set var_90 = Me.FGrid1
  loc_15305A9:       LateIdCallSt
  loc_15305BD:       unk_4CE61A.RollbackTrans
  loc_15305C2:       Exit Sub
  loc_15305C3:     End If
  loc_15305C7:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_15305CF:     var_120 = CVar(CLng(2)) 'Long
  loc_153060B:     If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1530654:       Set var_94 = Me.FGrid1
  loc_153066D:       var_45C = Val(CStr(var_94.TextMatrix)))
  loc_153067B:       Proc_6_7_F26918(var_254, MemVar_1F950EC, var_45C, CVar(CLng(3)), CVar(CLng(var_88)), CVar(CLng(1)), CVar(CLng(var_88)), CVar(CLng(1)))
  loc_1530697:       var_AC = "Insert Into GroupCatalog(CatCode,ItemcatCode,Limit,U_Name,Site_Code,U_EntDt,U_AE,LogSite_Code) Values('" & global_84
  loc_153069E:       var_108 = CVar(var_AC & "','") 'String
  loc_15306DE:       var_234 = var_108 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "'," & CVar(var_45C) & ",'" & CVar(MemVar_1F950C8) & "','" & CVar(MemVar_1F95078) 
  loc_1530718:       unk_4CE61A.Execute CStr(var_234 & "'," & var_254 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_2F4, -1
  loc_1530758:     End If
  loc_153075B:   Next var_454 'Integer
  loc_1530766:   unk_4CE61A.CommitTrans
  loc_1530771:   var_8C = global_84
  loc_1530777: Else
  loc_1530782:   Set var_90 = Me.Txt
  loc_1530788:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15307B1:   If (Proc_183_19_E8E68C(var_94, "Catalog Name") = 0) Then
  loc_15307BB:     Call Txt_GotFocus(CInt(0))
  loc_15307C0:     Exit Sub
  loc_15307C1:   End If
  loc_15307C1:   var_C4 = 1
  loc_15307CA:   var_120 = 2
  loc_15307E8:   var_E4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15307EE:   var_F8 = Trim(var_E4)
  loc_153080A:   If (var_F8 = vbNullString) Then
  loc_1530820:     var_A4 = "Fill Item Name "
  loc_1530826:     MsgBox(var_A4, 0, var_E4, var_F8, var_108)
  loc_1530849:     Me.FGrid.Row = 1
  loc_1530855:     Set var_90 = Me.FGrid
  loc_153086A:     var_C4 = CVar(CLng("14737632")) 'Long
  loc_1530879:     Me.FGrid.CellBackColor = var_C4
  loc_1530881:     Exit Sub
  loc_1530882:   End If
  loc_1530885:   Call Proc_121_66_1060D64(var_AE, FGrid.DispID_8001, var_120)
  loc_1530890:   If (var_AE = &HFF) Then
  loc_1530893:     Exit Sub
  loc_1530894:   End If
  loc_1530898:   Set var_90 = Me.TopCtrl1
  loc_153089E:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C4)
  loc_15308B7:   If (CStr(var_94) = "Add") Then
  loc_15308C0:     var_D4 = 0
  loc_15308DD:     var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From CatalogMast WHERE SITE_CODE='" & MemVar_1F95070
  loc_15308ED:     unk_4CE61A.Execute CStr(var_94) & "'", var_A4, -1
  loc_15308F5:     var_90 = var_90.Fields
  loc_15308FD:     var_D4 = var_94.Item(var_94)
  loc_1530905:     var_A8 = var_A8.Value
  loc_153093E:     var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_1530964:     var_E4 = Format(CStr(var_E4), "000")
  loc_153096C:     var_108 = (1 + var_E4)
  loc_1530977:     global_84 = CStr(var_108)
  loc_153098C:   Else
  loc_15309A9:     var_94 = Me.Fields.Item("SearchCode")
  loc_15309B1:     var_A4 = var_94.Value
  loc_15309C0:     global_84 = CStr(var_A4)
  loc_15309D1:   End If
  loc_15309DC:   Set var_90 = Me.TxtGrid
  loc_15309E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94, 0)
  loc_15309EA:   var_94.Visible = True
  loc_1530A01:   Set var_90 = Me.TxtGrid
  loc_1530A07:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_94, 0)
  loc_1530A0F:   var_94.Visible = var_F8
  loc_1530A1B:   Call Proc_121_63_EBC8E0(var_E4)
  loc_1530A22:   var_86 = &HFF
  loc_1530A2E:   unk_4CE61A.BeginTrans var_10C
  loc_1530A51:   var_B4 = "Delete From CatalogMast Where Code='" & global_84 & "'"
  loc_1530A5A:   unk_4CE61A.Execute var_B4, var_A4, -1
  loc_1530A91:   For var_460 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_460 'Integer
  loc_1530A9B:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1530ADF:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1530AF0:       Set var_90 = Me.Txt
  loc_1530AF6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, CVar(CLng(3)))
  loc_1530AFE:       var_C4 = var_94.Text
  loc_1530B15:       var_130 = CVar(CLng(var_88)) 'Long
  loc_1530B2C:       var_1A0 = Me.FGrid.TextMatrix)
  loc_1530B53:       var_234 = Me.FGrid.TextMatrix)
  loc_1530B6A:       Proc_183_7_EB17D4(var_314, MemVar_1F950EC, var_234, CVar(CLng(3)), CVar(CLng(var_88)), var_1A0)
  loc_1530B73:       Set var_348 = Me.TopCtrl1
  loc_1530B79:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(4)))
  loc_1530BC7:       var_AC = "Insert Into CatalogMast(Code,Name,RestCode,ItemCatCode,ItemCode,Site_Code,U_Name,U_EntDt,U_AE,lOGsITE_cODE) Values('" & global_84
  loc_1530C12:       var_254 = CVar(var_AC & "','") & Trim(CVar(var_B4)) & "','" & CVar(global_56) & "','" & CVar(CStr(var_1A0)) & "','" & CVar(CStr(var_234)) 
  loc_1530C58:       var_3C8 = var_254 & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," & var_314 & ",'" & IIf((CStr(var_358) = "Add"), "A", "E") 
  loc_1530C82:       unk_4CE61A.Execute CStr(var_3C8 & "','" & CVar(MemVar_1F95078) & "')"), var_44C, -1
  loc_1530CE2:     End If
  loc_1530CE5:   Next var_460 'Integer
  loc_1530CF0:   unk_4CE61A.CommitTrans
  loc_1530D0E:   var_C4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_1530D1D:   Me.FGrid1.Rows = "','"
  loc_1530D32:   var_8C = global_84
  loc_1530D35: End If
  loc_1530D37: var_86 = 0
  loc_1530D45: Me.Requery -1
  loc_1530D55: Me.Requery -1
  loc_1530D65: Me.Requery -1
  loc_1530D8F: Me.Find "SearchCode ='" & var_8C & "'", 0, 1
  loc_1530D9B: Call Proc_121_60_13E30D4("','")
  loc_1530DA4: Set var_90 = Me.TopCtrl1
  loc_1530DAA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_1530DC3: If (CStr() = "Add") Then
  loc_1530DC6:   Call TopCtrl1_UnknownEvent_A()
  loc_1530DCB:   Exit Sub
  loc_1530DCC: End If
  loc_1530DEF: Call Proc_121_62_E7A684(Proc_5_1_100EC1C("INI", Me))
  loc_1530DFA: Call Proc_121_63_EBC8E0(global_76)
  loc_1530DFF: Exit Sub
  loc_1530E00: ' Referenced from: 152FEF0
  loc_1530E06: If (var_86 = &HFF) Then
  loc_1530E0F:   unk_4CE61A.RollbackTrans
  loc_1530E14: End If
  loc_1530E14: Proc_6_60_E63754()
  loc_1530E19: Exit Sub
End Sub

Private Sub Form_Load() '128F9D4
  'Data Table: 4CE5F0
  Dim var_98 As Variant
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_DC As String
  Dim unk_4CE61A As Connection15
  Dim var_88 As Recordset15
  Dim var_F0 As String
  Dim Me As Recordset15
  loc_128F400: On Error Goto loc_128F9CE
  loc_128F40D: Set var_AC = Me.TopCtrl1
  loc_128F413: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_128F421: Call 0.Method_arg_50 (var_B0)
  loc_128F429: var_C0 = CVar(var_B0) 'String
  loc_128F431: Set var_AC = Me.TopCtrl1
  loc_128F437: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_C0)
  loc_128F450: Set var_AC = Me.Txt
  loc_128F456: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_128F475: Me.DGHelp.Left = CVar(var_C4.Left)
  loc_128F491: Set var_CC = Me.Txt
  loc_128F497: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_128F49F: var_D4 = var_D0.Height
  loc_128F4B2: Set var_AC = Me.Txt
  loc_128F4B8: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_128F4D0: var_98 = CVar(((var_C4.Top + var_D4) + CDbl(&H1E))) 'Single
  loc_128F4DF: Me.DGHelp.Top = CVar(var_C4.Left)
  loc_128F4F8: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_128F510: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_128F52B: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_128F542: Me.LblUser.Left = CDbl(13500)
  loc_128F559: Me.LblUser.Top = CDbl(7800)
  loc_128F570: Me.LblLDt.Top = CDbl(8160)
  loc_128F581: Set var_AC = Me.LblLDt
  loc_128F587: var_AC.Left = CDbl(13500)
  loc_128F5B3: unk_4CE61A.Execute "Select * from Enviro where LOGSite_Code='" & MemVar_1F95078 & "'", var_C0, -1
  loc_128F5BE: Set var_88 = var_AC
  loc_128F5D4: var_C8 = var_88.RecordCount
  loc_128F5E2: If (var_C8 > 0) Then
  loc_128F5FF:   var_C4 = var_88.Fields.Item("CatalogLimit")
  loc_128F607:   var_C0 = var_C4.Value
  loc_128F621:   If (var_C0 = "Yes") Then
  loc_128F624:     var_98 = True
  loc_128F631:     Set var_AC = Me.OptCat
  loc_128F637:     Call 0.Method_Form_Load0 (0, var_C4)
  loc_128F666:     var_DC = "SELECT DISTINCT CA.Code As SearchCode,lOGSITE_CODE,SITE_CODE FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CA.Category ='Y' ORDER BY Code"
  loc_128F66F:     unk_4CE61A.Execute var_DC, var_C0, -1
  loc_128F680:     Set global_76 = var_AC
  loc_128F6BA:     var_F0 = "SELECT distinct Code,Name FROM CatalogMast WHERE Logsite_Code in ('" & MemVar_1F95078 & "','HO') AND RestCode='" & global_56
  loc_128F6CA:     unk_4CE61A.Execute var_F0 & "' And Category ='Y' ORDER BY Name", var_C0, -1
  loc_128F6DB:     Set global_64 = var_AC
  loc_128F6F7:   Else
  loc_128F704:     Set var_AC = Me.OptCat
  loc_128F70A:     Call 0.Method_Form_Load0 (1, var_C4, True, var_AC)
  loc_128F739:     var_DC = "SELECT DISTINCT CA.Code As SearchCode,LOGSITE_CODE,SITE_CODE FROM CatalogMast CA WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RestCode='"
  loc_128F753:     unk_4CE61A.Execute var_DC & global_56 & "' AND CA.Category <>'Y' OR CA.Category Is Null ORDER BY Code", var_C0, -1
  loc_128F764:     Set global_76 = var_AC
  loc_128F7A2:     var_F0 = "SELECT distinct Code,Name FROM CatalogMast WHERE Logsite_Code in ('" & MemVar_1F95078 & "','HO') AND RestCode='" & global_56
  loc_128F7B2:     unk_4CE61A.Execute var_F0 & "' And Category <>'Y' OR Category Is Null ORDER BY Name", var_C0, -1
  loc_128F7C3:     Set global_64 = var_AC
  loc_128F7DC:   End If
  loc_128F7DC: End If
  loc_128F7EA: Set var_AC = Me.Txt
  loc_128F7F0: Call 0.Method_Form_Load0 (CInt(1), var_C4, var_C8, var_AC, var_AC)
  loc_128F7F8: OptCat.DispID_B = var_C4.Left
  loc_128F80F: Me.DGItemGrp.Left = CVar(var_C8)
  loc_128F82B: Set var_CC = Me.Txt
  loc_128F831: Call 0.Method_Form_Load0 (CInt(1), var_D0, var_D4, var_AC)
  loc_128F839: OptCat.DispID_B = var_D0.Height
  loc_128F852: Call 0.Method_Form_Load0 (CInt(1), var_C4, var_C8)
  loc_128F85A: var_98 = var_C4.Top
  loc_128F86A: var_98 = CVar(((var_C8 + var_D4) + CDbl(&H1E))) 'Single
  loc_128F879: Me.DGItemGrp.Top = var_98
  loc_128F8A6: var_DC = "SELECT Distinct Code,Name From ItemGrp where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Type= 'Finish' and RestCode='"
  loc_128F8C0: unk_4CE61A.Execute var_DC & global_56 & "' Order by Name", var_C0, -1
  loc_128F8D1: Set global_60 = Me.Txt
  loc_128F8F3: CVarUnk
  loc_128F8F8: VerifyVarObj
  loc_128F8FE: Set var_AC = Me.DGItemGrp
  loc_128F904: LateIdStAd
  loc_128F91B: CVarUnk
  loc_128F920: VerifyVarObj
  loc_128F926: Set var_AC = Me.DGHelp
  loc_128F92C: LateIdStAd
  loc_128F951: If (Me.RecordCount > 0) Then
  loc_128F968:   If (Me.EOF = &HFF) Then
  loc_128F971:     Me.MoveLast
  loc_128F976:   End If
  loc_128F976: End If
  loc_128F982: Set var_AC = Me
  loc_128F999: Call Proc_121_62_E7A684(Proc_5_1_100EC1C("INI", var_AC, global_76, var_AC, global_64), var_AC, global_60)
  loc_128F9AD: Call 0.Method_arg_160 (var_AC, var_AC)
  loc_128F9BB: Call 0.Method_arg_164 (var_AC)
  loc_128F9C3: Call Proc_121_55_11D5118(var_AC)
  loc_128F9C8: Call Proc_121_60_13E30D4()
  loc_128F9CD: Exit Sub
  loc_128F9CE: ' Referenced from: 128F400
  loc_128F9CE: Proc_6_60_E63754()
  loc_128F9D3: Exit Sub
End Sub

Private Sub Form_Resize() 'ED9C48
  'Data Table: 4CE5F0
  Dim var_8C As Label
  loc_ED9BA6: Call 0.Method_arg_50 (var_88)
  loc_ED9BB8: Me.LblFormCaption.Caption = var_88
  loc_ED9BD1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED9BDD: Set var_A0 = Me.TopCtrl1
  loc_ED9BE3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED9BF0: Set var_8C = Me.TopCtrl1
  loc_ED9BF6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED9C10: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED9C2B: Call 0.Method_arg_100 (var_B8)
  loc_ED9C3D: Me.LblFormCaption.Width = var_B8
  loc_ED9C45: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E56EFC
  'Data Table: 4CE5F0
  loc_E56EC7: Set global_60 = Nothing
  loc_E56ED9: Set global_76 = Nothing
  loc_E56EEB: Set global_64 = Nothing
  loc_E56EF7: MasterFormExit = 0
  loc_E56EFA: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25B54
  'Data Table: 4CE5F0
  loc_E25B39: If (MasterFormExit = &HFF) Then
  loc_E25B49:   Me.Global.Unload Me
  loc_E25B51: End If
  loc_E25B51: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3E588
  'Data Table: 4CE5F0
  loc_E3E55C: On Error Goto loc_E3E580
  loc_E3E577: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3E57F: Exit Sub
  loc_E3E580: ' Referenced from: E3E55C
  loc_E3E580: Proc_6_60_E63754(Shift)
  loc_E3E585: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E765A4
  'Data Table: 4CE5F0
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E7655B: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E76575: Me.FGrid1.Col = CVar(CLng(3))
  loc_E76588: Set var_A8 = Me.TxtGrid
  loc_E7658E: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_AC)
  loc_E76596: var_AC.Visible = False
  loc_E765A2: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E68A80
  'Data Table: 4CE5F0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68A3C: Set var_88 = Me.TxtGrid
  loc_E68A42: Call 0.Method_Fgrid1_UnknownEvent_10 (1, var_8C)
  loc_E68A5C: If (var_8C.Visible = 0) Then
  loc_E68A75:   Me.FGrid1.BackColorSel = CVar(CLng(global_92))
  loc_E68A7D: End If
  loc_E68A7D: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E0027C
  'Data Table: 4CE5F0
  loc_E00274: Call Proc_121_58_E42CA0()
  loc_E00279: Exit Sub
  loc_E0027A: CExtInstUnk
End Sub

Private Sub Fgrid1_UnknownEvent_A '1122588
  'Data Table: 4CE5F0
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_112222C: Set var_88 = Me.TopCtrl1
  loc_1122232: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1122277: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_1122280:   Call Form_KeyDown(KeyCode, Shift)
  loc_1122285: End If
  loc_1122289: Set var_88 = Me.TopCtrl1
  loc_112228F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11222A8: If (CStr() = "Browse") Then
  loc_11222AB:   Exit Sub
  loc_11222AC: End If
  loc_1122320: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_1122339:   Me.FGrid1.CellBackColor = CVar(CLng(global_92))
  loc_1122349:   var_9C = "+{Tab}"
  loc_112234F:   Proc_303_0_FBACC8(CStr(Me.FGrid1.Tag), 0)
  loc_1122359:   KeyCode = 0
  loc_112235F: Else
  loc_11223B6:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_11223CF:     Me.FGrid1.CellBackColor = CVar(CLng(global_92))
  loc_11223D7:   End If
  loc_11223D7: End If
  loc_11223DD: global_80 = KeyCode
  loc_1122403: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_1122427: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_112244D:   If (CLng(Me.FGrid1.Col) = CLng(2)) Then
  loc_1122463:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112247B:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1122480:     var_11C = vbNullString
  loc_112248A:     Set var_B4 = Me.FGrid1
  loc_1122490:     LateIdCallSt
  loc_11224BB:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11224C3:     var_FC = CVar(CLng(3)) 'Long
  loc_11224C8:     var_11C = vbNullString
  loc_11224D2:     Set var_A0 = Me.FGrid1
  loc_11224D8:     LateIdCallSt
  loc_11224FD:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1122505:     var_FC = CVar(CLng(1)) 'Long
  loc_112250A:     var_11C = vbNullString
  loc_1122514:     Set var_A0 = Me.FGrid1
  loc_112251A:     LateIdCallSt
  loc_112253F:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1122547:     var_FC = CVar(CLng(4)) 'Long
  loc_112254C:     var_11C = vbNullString
  loc_1122556:     Set var_A0 = Me.FGrid1
  loc_112255C:     LateIdCallSt
  loc_112256E:   End If
  loc_112256E: End If
  loc_1122574: If (KeyCode = &HD) Then
  loc_112257C:   global_82 = 0
  loc_112257F: End If
  loc_1122581: KeyCode = 0
  loc_1122584: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E0E4D0
  'Data Table: 4CE5F0
  loc_E0E4C1: Call Fgrid1_UnknownEvent_C()
  loc_E0E4CB: global_82 = 0
  loc_E0E4CE: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'EE5E48
  'Data Table: 4CE5F0
  Dim var_88 As MSHFlexGrid
  loc_EE5D98: Set var_88 = Me.TopCtrl1
  loc_EE5D9E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_EE5DB7: If (CStr() = "Browse") Then
  loc_EE5DBA:   Exit Sub
  loc_EE5DBB: End If
  loc_EE5DDE: If (CLng(Me.FGrid1.Col) = CLng(3)) Then
  loc_EE5E1F:   Proc_6_63_110B734(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_EE5E31: End If
  loc_EE5E3B: If (CLng(KeyCode) <> &HD) Then
  loc_EE5E43:   global_82 = &HFF
  loc_EE5E46: End If
  loc_EE5E46: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FED90C
  'Data Table: 4CE5F0
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FED738: Set var_90 = Me.TopCtrl1
  loc_FED73E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FED757: If (CStr() = "Browse") Then
  loc_FED75A:   Exit Sub
  loc_FED75B: End If
  loc_FED778: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FED77B:   Exit Sub
  loc_FED77C: End If
  loc_FED78D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FED7AF:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_FED7E9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FED80B:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FED821:         var_B4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FED82A:         Set var_118 = Me.FGrid1
  loc_FED842:         Call Proc_121_67_11A60F4(FGrid1.DispID_10000)
  loc_FED84A:       Else
  loc_FED85D:         Me.FGrid1.Rows = 1
  loc_FED883:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, CInt(0)))) 'String
  loc_FED88B:         Set var_118 = Me.FGrid1
  loc_FED8B8:         Me.FGrid1.FixedRows = 1
  loc_FED8C0:       End If
  loc_FED8C0:     End If
  loc_FED8C3:   Else
  loc_FED8E4:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FED8F4:   End If
  loc_FED8F8:   Set var_90 = Me.FGrid1
  loc_FED909: End If
  loc_FED909: Exit Sub
  loc_FED90A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E45DDC
  'Data Table: 4CE5F0
  Dim var_8C As TextBox
  loc_E45DB0: Call Proc_121_63_EBC8E0()
  loc_E45DC0: Set var_88 = Me.TxtGrid
  loc_E45DC6: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E45DCE: var_8C.Visible = False
  loc_E45DDA: Exit Sub
End Sub

Private Sub OptCat_UnknownEvent_9 '100BAC4
  'Data Table: 4CE5F0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As DataGrid
  Dim var_CC As Label
  loc_100B8B7: var_86 = KeyCode
  loc_100B8C0: If (var_86 = 0) Then
  loc_100B8CD:   Set var_8C = Me.OptCat
  loc_100B8D3:   Call 0.Method_OptCat_UnknownEvent_90 (KeyCode, var_90)
  loc_100B8DB:   var_90.Value
  loc_100B8F1:   If (CBool(var_86) = &HFF) Then
  loc_100B902:     Me.FGrid1.Visible = True
  loc_100B916:     Set var_8C = Me.Txt
  loc_100B91C:     Call 0.Method_OptCat_UnknownEvent_90 (1, var_90)
  loc_100B93B:     Me.DGItemGrp.Left = CVar(var_90.Left)
  loc_100B955:     Set var_C8 = Me.LblName
  loc_100B95B:     Call 0.Method_OptCat_UnknownEvent_90 (2, var_CC)
  loc_100B974:     Set var_8C = Me.LblName
  loc_100B97A:     Call 0.Method_OptCat_UnknownEvent_90 (2, var_90)
  loc_100B98E:     var_B0 = CVar((var_90.Top + var_CC.Height)) 'Single
  loc_100B99D:     Me.DGItemGrp.Top = CVar(var_90.Left)
  loc_100B9AF:   End If
  loc_100B9B2: Else
  loc_100B9B8:   If (var_86 = 1) Then
  loc_100B9C5:     Set var_8C = Me.OptCat
  loc_100B9CB:     Call 0.Method_OptCat_UnknownEvent_90 (KeyCode)
  loc_100B9D3:     var_90.Value
  loc_100B9E9:     If (CBool(var_90) = &HFF) Then
  loc_100B9FB:       Me.FGrid1.Visible = False
  loc_100BA0F:       Set var_8C = Me.Txt
  loc_100BA15:       Call 0.Method_OptCat_UnknownEvent_90 (1, var_90)
  loc_100BA34:       Me.DGItemGrp.Left = CVar(var_90.Left)
  loc_100BA4E:       Set var_C8 = Me.LblName
  loc_100BA54:       Call 0.Method_OptCat_UnknownEvent_90 (2, var_CC)
  loc_100BA6D:       Set var_8C = Me.LblName
  loc_100BA73:       Call 0.Method_OptCat_UnknownEvent_90 (2, var_90)
  loc_100BA87:       var_B0 = CVar((var_90.Top + var_CC.Height)) 'Single
  loc_100BA96:       Me.DGItemGrp.Top = CVar(var_90.Left)
  loc_100BABB:       Me.FGrid1.Rows = 1
  loc_100BAC3:     End If
  loc_100BAC3:   End If
  loc_100BAC3: End If
  loc_100BAC3: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3E404
  'Data Table: 4CE5F0
  loc_E3E3F8: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_E3E3FB:   Call DGItemGrp_UnknownEvent_9()
  loc_E3E400: End If
  loc_E3E400: Exit Sub
End Sub

Public Function MasterFormExitGet() '4CF540
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4CF54F
  MasterFormExit = Value
End Sub

Public Function global_56Get() '4CF55E
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4CF56D
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E75290
  'Data Table: 4CE5F0
  Dim Me As Recordset15
  loc_E7523A: Me.MoveFirst
  loc_E75264: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E75284: If (Me.EOF = 0) Then
  loc_E75287:   Call Proc_121_60_13E30D4(var_9C)
  loc_E7528C: End If
  loc_E7528C: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E97EE8
  'Data Table: 4CE5F0
  Dim Me As Recordset15
  loc_E97E76: On Error Goto loc_E97EDF
  loc_E97E7F: Me.MoveFirst
  loc_E97EA9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97ED1: Proc_5_0_1107AD0(&HFF, Me, global_76)
  loc_E97ED9: Call Proc_121_60_13E30D4(0)
  loc_E97EDE: Exit Sub
  loc_E97EDF: ' Referenced from: E97E76
  loc_E97EDF: Proc_6_60_E63754(var_A0)
  loc_E97EE4: Exit Sub
End Sub

Public Sub Proc_121_55_11D5118
  'Data Table: 4CE5F0
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_12C As MSHFlexGrid
  loc_11D4CC3: Me.FGrid1.Left = CVar(CDbl(900))
  loc_11D4CDE: Me.FGrid.Top = CVar(CDbl(1200))
  loc_11D4CF9: Me.FGrid.Height = CVar(CDbl(7725))
  loc_11D4D14: Me.FGrid.Width = CVar(CDbl(6300))
  loc_11D4D2A: Set var_A8 = Me.Txt
  loc_11D4D30: Call 0.Method_Proc_121_55_11D51180 (CInt(1), var_AC)
  loc_11D4D4F: Me.DGItemGrp.Left = CVar(var_AC.Left)
  loc_11D4D6B: Set var_B4 = Me.Txt
  loc_11D4D71: Call 0.Method_Proc_121_55_11D51180 (CInt(1), var_B8)
  loc_11D4D8C: Set var_A8 = Me.Txt
  loc_11D4D92: Call 0.Method_Proc_121_55_11D51180 (CInt(1), var_AC)
  loc_11D4DAA: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11D4DB9: Me.DGItemGrp.Top = CVar(var_AC.Left)
  loc_11D4DDE: Me.FGrid1.Top = CVar(CDbl(1950))
  loc_11D4DF9: Me.FGrid1.Height = CVar(CDbl(6000))
  loc_11D4E32: var_94 = CVar(((CDbl(Me.FGrid1.Left) + CDbl(Me.FGrid1.Width)) + CDbl(150))) 'Single
  loc_11D4E41: Me.FGrid.Left = CVar(CDbl(6000))
  loc_11D4E5A: Set var_E4 = Me.FGrid
  loc_11D4E71: global_92 = CStr(CLng(var_E4.BackColor))
  loc_11D4E87: var_E4.Cols = 5
  loc_11D4E8F: var_94 = CVar(CLng(0)) 'Long
  loc_11D4E94: var_F8 = &H1C2
  loc_11D4EA0: LateIdCallSt
  loc_11D4EA8: var_94 = 0
  loc_11D4EB4: var_F8 = CVar(CLng(1)) 'Long
  loc_11D4EB9: var_118 = "Item Group"
  loc_11D4EC2: LateIdCallSt
  loc_11D4ECD: var_94 = CVar(CLng(1)) 'Long
  loc_11D4ED8: var_F8 = CVar(CInt(1)) 'Integer
  loc_11D4EDF: LateIdCallSt
  loc_11D4EEA: var_94 = CVar(CLng(1)) 'Long
  loc_11D4EEF: var_F8 = &H9C4
  loc_11D4EFB: LateIdCallSt
  loc_11D4F03: var_94 = 0
  loc_11D4F0F: var_F8 = CVar(CLng(2)) 'Long
  loc_11D4F14: var_118 = "Item Name"
  loc_11D4F1D: LateIdCallSt
  loc_11D4F28: var_94 = CVar(CLng(2)) 'Long
  loc_11D4F33: var_F8 = CVar(CInt(1)) 'Integer
  loc_11D4F3A: LateIdCallSt
  loc_11D4F45: var_94 = CVar(CLng(2)) 'Long
  loc_11D4F4A: var_F8 = &HBB8
  loc_11D4F56: LateIdCallSt
  loc_11D4F61: var_94 = CVar(CLng(3)) 'Long
  loc_11D4F66: var_F8 = 0
  loc_11D4F72: LateIdCallSt
  loc_11D4F7D: var_94 = CVar(CLng(4)) 'Long
  loc_11D4F82: var_F8 = 0
  loc_11D4F8E: LateIdCallSt
  loc_11D4F98: Set var_E4 = Nothing 
  loc_11D4FA0: Set var_12C = Me.FGrid1
  loc_11D4FB7: global_92 = CStr(CLng(var_12C.BackColor))
  loc_11D4FCD: var_12C.Cols = 4
  loc_11D4FD2: var_94 = 0
  loc_11D4FDB: var_F8 = &H113
  loc_11D4FE7: LateIdCallSt
  loc_11D4FEF: var_94 = 0
  loc_11D4FFB: var_F8 = CVar(CLng(2)) 'Long
  loc_11D5000: var_118 = "Group Name"
  loc_11D5009: LateIdCallSt
  loc_11D5014: var_94 = CVar(CLng(2)) 'Long
  loc_11D501F: var_F8 = CVar(CInt(1)) 'Integer
  loc_11D5026: LateIdCallSt
  loc_11D5031: var_94 = CVar(CLng(2)) 'Long
  loc_11D5036: var_F8 = &HC80
  loc_11D5042: LateIdCallSt
  loc_11D504A: var_94 = 0
  loc_11D5056: var_F8 = CVar(CLng(1)) 'Long
  loc_11D505B: var_118 = "Group Code"
  loc_11D5064: LateIdCallSt
  loc_11D506F: var_94 = CVar(CLng(1)) 'Long
  loc_11D507A: var_F8 = CVar(CInt(1)) 'Integer
  loc_11D5081: LateIdCallSt
  loc_11D508C: var_94 = CVar(CLng(1)) 'Long
  loc_11D5091: var_F8 = 0
  loc_11D509D: LateIdCallSt
  loc_11D50A5: var_94 = 0
  loc_11D50B1: var_F8 = CVar(CLng(3)) 'Long
  loc_11D50B6: var_118 = "M.Limit"
  loc_11D50BF: LateIdCallSt
  loc_11D50CA: var_94 = CVar(CLng(3)) 'Long
  loc_11D50D5: var_F8 = CVar(CInt(4)) 'Integer
  loc_11D50DC: LateIdCallSt
  loc_11D50E7: var_94 = CVar(CLng(3)) 'Long
  loc_11D50EC: var_F8 = &H384
  loc_11D50F8: LateIdCallSt
  loc_11D510C: var_12C.Rows = 1
  loc_11D5113: Set var_12C = Nothing 
  loc_11D5117: Exit Sub
End Sub

Public Sub Proc_121_56_FDF9F0(arg_C) 'FDF9F0
  'Data Table: 4CE5F0
  Dim var_8C As Recordset15
  loc_FDF811: Set var_8C = arg_C 
  loc_FDF839: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FDF865: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_FDF891: var_8C.Fields.Append "ItemName", &HC8, &H23
  loc_FDF8BD: var_8C.Fields.Append "Remark", &HC8, &H32
  loc_FDF8E9: var_8C.Fields.Append "HFontBold", &HC8, 1
  loc_FDF915: var_8C.Fields.Append "ItemName1", &HC8, &H23
  loc_FDF941: var_8C.Fields.Append "Remark1", &HC8, &H64
  loc_FDF96D: var_8C.Fields.Append "HFontBold1", &HC8, 1
  loc_FDF999: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FDF9A9: var_8C.CursorType = 3
  loc_FDF9B6: var_8C.LockType = 3
  loc_FDF9D5: var_8C.Open var_A0, var_B0, -1
  loc_FDF9DC: Set var_8C = Nothing 
  loc_FDF9E3: Set var_88 = arg_C 
  loc_FDF9E7: Proc_121_56_FDF9F0 = -1
  loc_FDF9ED: -1 = &H20
End Sub

Public Sub Proc_121_57_1143AA8
  'Data Table: 4CE5F0
  Dim var_90 As String
  Dim var_98 As Variant
  Dim var_A4 As String
  Dim unk_4CE61A As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_94 As Variant
  Dim var_CC As Variant
  Dim var_C8 As Variant
  Dim var_11C As Variant
  loc_1143753: var_90 = "SELECT ItemMast.Code as ItemCode, ItemMast.Name as ItemName, ItemGrp.Name as ItemGrpName,ItemGrp.Code as ItemGrpCode FROM ItemMast LEFT JOIN ItemGrp ON ItemGrp.Code = ItemMast.ItemGroup WHERE ItemMast.RestCode='" & global_56
  loc_114376B: Set var_94 = Me.Txt
  loc_1143771: Call 0.Method_Proc_121_57_1143AA80 (CInt(1), var_98, var_9C, var_90 & "' and ItemMast.ItemGroup='")
  loc_1143779: var_C8 = var_98.Tag
  loc_1143782: var_A4 = -1 & var_9C
  loc_1143792: unk_4CE61A.Execute var_A4 & "'", var_CC, 
  loc_114379D: Set var_8C = var_CC
  loc_11437B9: ' Referenced from: 1143A83
  loc_11437BF: var_CE = var_8C.EOF
  loc_11437C8: If Not(var_CE) Then
  loc_114383B:   var_11C = var_8C.Fields.Item("ItemName").Value
  loc_114385B:   Call Proc_121_65_F81D58(CStr(var_8C.Fields.Item("ItemGrpName").Value), CStr(var_8C.Fields.Item("ItemCode").Value))
  loc_1143887:   If (var_CE = &HFF) Then
  loc_11438A3:     var_B8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11438B2:     Me.FGrid.Row = "ItemGrpName"
  loc_11438C5:     Set var_120 = Me.FGrid
  loc_11438C8:     var_B8 = vbNullString
  loc_1143921:     var_11C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ItemGrpName")), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000)) 'String
  loc_1143928:     LateIdCallSt
  loc_1143988:     var_11C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ItemGrpCode")), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), var_120)) 'String
  loc_114398F:     LateIdCallSt
  loc_11439EF:     var_11C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ItemCode")), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_120, var_11C)) 'String
  loc_11439F6:     LateIdCallSt
  loc_1143A56:     var_11C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)), var_120, var_11C)) 'String
  loc_1143A5D:     LateIdCallSt
  loc_1143A77:     Set var_120 = Nothing 
  loc_1143A7B:   End If
  loc_1143A7E:   var_8C.MoveNext
  loc_1143A83:   GoTo loc_11437B9
  loc_1143A86: End If
  loc_1143A9D: Set var_8C = Nothing
  loc_1143AA0: Proc_121_57_1143AA8 = CInt(var_8C.RecordCount)
End Sub

Public Sub Proc_121_58_E42CA0
  'Data Table: 4CE5F0
  loc_E42C7C: Set var_88 = Me.TopCtrl1
  loc_E42C82: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E42C9B: If (CStr() = "Browse") Then
  loc_E42C9E:   Exit Sub
  loc_E42C9F: End If
  loc_E42C9F: Exit Sub
End Sub

Public Sub Proc_121_59_126A99C(arg_C) '126A99C
  'Data Table: 4CE5F0
  Dim var_94 As Integer
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_118 As String
  Dim var_92 As Integer
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_144 As Variant
  Dim var_148 As Long
  loc_126A413: var_94 = arg_C
  loc_126A41C: If (var_94 = 0) Then
  loc_126A432:   var_AC = CLng(Me.FGrid.Col)
  loc_126A442:   If (var_AC = CLng(2)) Then
  loc_126A44E:     Set var_98 = Me.OptCat
  loc_126A454:     Call 0.Method_Proc_121_59_126A99C0 (0, var_B0)
  loc_126A45C:     var_B0.Value
  loc_126A472:     If (CBool(var_AC) = &HFF) Then
  loc_126A488:       var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_126A490:       var_E4 = CVar(CLng(3)) 'Long
  loc_126A4A1:       Set var_98 = Me.TxtGrid
  loc_126A4A7:       Call 0.Method_Proc_121_59_126A99C0 (0, var_B0, var_F8)
  loc_126A4AF:       var_E4 = var_B0.Text
  loc_126A4B7:       var_108 = CVar(var_F8) 'String
  loc_126A4BF:       Set var_11C = Me.FGrid1
  loc_126A4C5:       LateIdCallSt
  loc_126A4E4:       Proc_121_59_126A99C = &HFF
  loc_126A4EA:     End If
  loc_126A50A:     var_122 = Me.EOF
  loc_126A538:     Set var_98 = Me.TxtGrid
  loc_126A53E:     Call 0.Method_Proc_121_59_126A99C0 (arg_C, var_B0, var_F8, ((Me.RecordCount = 0) Or ((var_122 = &HFF) Or (Me.BOF = &HFF))))
  loc_126A546:     var_11C = var_B0.Text
  loc_126A55E:     If (var_108 Or (var_F8 = vbNullString)) Then
  loc_126A574:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_126A57C:       var_E4 = CVar(CLng(2)) 'Long
  loc_126A581:       var_118 = vbNullString
  loc_126A58B:       Set var_B0 = Me.FGrid
  loc_126A591:       LateIdCallSt
  loc_126A5B6:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_126A5BE:       var_E4 = CVar(CLng(3)) 'Long
  loc_126A5C3:       var_118 = vbNullString
  loc_126A5CD:       Set var_B0 = Me.FGrid
  loc_126A5D3:       LateIdCallSt
  loc_126A5F8:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_126A600:       var_E4 = CVar(CLng(1)) 'Long
  loc_126A605:       var_118 = vbNullString
  loc_126A60F:       Set var_B0 = Me.FGrid
  loc_126A615:       LateIdCallSt
  loc_126A63A:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_126A642:       var_E4 = CVar(CLng(4)) 'Long
  loc_126A647:       var_118 = vbNullString
  loc_126A651:       Set var_B0 = Me.FGrid
  loc_126A657:       LateIdCallSt
  loc_126A66C:     Else
  loc_126A66F:       Call Proc_121_64_FC1254(var_122, var_B0, var_118, var_E4, var_C4, var_B0, var_118, var_E4)
  loc_126A67A:       If (var_122 = 0) Then
  loc_126A682:         Proc_121_59_126A99C = 0
  loc_126A688:       End If
  loc_126A69C:       var_92 = CInt(CLng(Me.FGrid.Row))
  loc_126A6B8:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_126A6C0:       var_F4 = CVar(CLng(2)) 'Long
  loc_126A6F3:       var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_126A6FB:       Set var_11C = Me.FGrid
  loc_126A701:       LateIdCallSt
  loc_126A730:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_126A738:       var_F4 = CVar(CLng(3)) 'Long
  loc_126A76B:       var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_126A773:       Set var_11C = Me.FGrid
  loc_126A779:       LateIdCallSt
  loc_126A7A8:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_126A7B0:       var_F4 = CVar(CLng(1)) 'Long
  loc_126A7E3:       var_144 = CVar(CStr(Me.Fields.Item("ItemCatName").Value)) 'String
  loc_126A7EB:       Set var_11C = Me.FGrid
  loc_126A7F1:       LateIdCallSt
  loc_126A820:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_126A828:       var_F4 = CVar(CLng(4)) 'Long
  loc_126A84A:       var_B0 = Me.Fields.Item("ItemCatCode")
  loc_126A85B:       var_144 = CVar(CStr(var_B0.Value)) 'String
  loc_126A863:       Set var_11C = Me.FGrid
  loc_126A869:       LateIdCallSt
  loc_126A889:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_126A891:       var_E4 = CVar(CLng(0)) 'Long
  loc_126A89B:       var_A8 = CVar(CStr(var_92)) 'String
  loc_126A8A3:       Set var_98 = Me.FGrid
  loc_126A8A9:       LateIdCallSt
  loc_126A8B7:     End If
  loc_126A8B7:   End If
  loc_126A8BA: Else
  loc_126A8C0:   If (var_94 = 1) Then
  loc_126A8CD:     var_A8 = Me.FGrid1.Col
  loc_126A8D6:     var_148 = CLng(var_A8)
  loc_126A8E6:     If (var_148 = CLng(3)) Then
  loc_126A8F8:       Call 0.Method_Proc_121_59_126A99C0 (0, var_B0, var_148, Me.OptCat, var_A8, var_E4, var_C4)
  loc_126A900:       var_B0.Value
  loc_126A916:       If (CBool(var_11C) = &HFF) Then
  loc_126A946:         Set var_98 = Me.TxtGrid
  loc_126A94C:         Call 0.Method_Proc_121_59_126A99C0 (arg_C, var_B0, var_F8, CVar(CLng(3)), CVar(CLng(Me.FGrid1.Row)), var_144)
  loc_126A954:         var_F4 = var_B0.Text
  loc_126A95C:         var_108 = CVar(var_F8) 'String
  loc_126A964:         Set var_11C = Me.FGrid1
  loc_126A96A:         LateIdCallSt
  loc_126A989:         Proc_121_59_126A99C = &HFF
  loc_126A98F:       End If
  loc_126A98F:     End If
  loc_126A98F:   End If
  loc_126A98F: End If
  loc_126A994: Proc_121_59_126A99C = &HFF
End Sub

Public Sub Proc_121_60_13E30D4
  'Data Table: 4CE5F0
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_AC As Field20
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim unk_4CE61A As Connection15
  Dim var_8C As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Fields15
  Dim var_110 As Variant
  Dim var_90 As Recordset15
  Dim var_1EC As MSHFlexGrid
  Dim var_120 As Variant
  Dim var_128 As TextBox
  Dim var_92 As Integer
  loc_13E272C: On Error Goto loc_13E30CD
  loc_13E273B: Me.Frame1.Enabled = False
  loc_13E2749: Proc_183_45_E5CCA8(global_76)
  loc_13E2765: If (Me.RecordCount <= 0) Then
  loc_13E2768:   Call Proc_121_61_FABEFC()
  loc_13E2770: Else
  loc_13E277D:   var_CC = "SELECT CA.*, CA.U_AE,CA.U_Name,CA.U_EntDt,I.Name AS ItemName, IC.Name AS ItemCatName, Depart.Name as RestName,CA.RestCode as RestCode, CA.Category AS Category FROM ((CatalogMast AS CA LEFT JOIN ItemMast AS I ON CA.ItemCode = I.Code) LEFT JOIN ItemGrp AS IC ON I.ItemGroup = IC.Code) LEFT JOIN Depart ON CA.RestCode = Depart.Code Where CA.Code='"
  loc_13E27C6:   unk_4CE61A.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "' Order By IC.Name,I.Name"), var_120, -1
  loc_13E27D1:   Set var_8C = var_124
  loc_13E27FF:   If (var_8C.RecordCount > 0) Then
  loc_13E283C:     var_124 = var_8C.Fields
  loc_13E28A5:     var_18C = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_13E28EA:     Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_Name")), var_18C)))
  loc_13E295C:     var_124 = var_8C.Fields
  loc_13E2964:     var_128 = var_124.Item("U_AE")
  loc_13E297D:     var_120 = "entdt :   "
  loc_13E29C5:     var_18C = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_128)) = "E"), "Last Update :   ", var_120))
  loc_13E2A0A:     Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_EntDt")))))
  loc_13E2A7E:     If (var_8C.Fields.Item("Category").Value = "Y") Then
  loc_13E2A8E:       var_CC = "SELECT IG.Code AS Code, IG.Name AS GroupName, GC.Limit AS Limit FROM ItemGrp IG INNER JOIN GroupCatalog  GC ON IG.Code = GC.ItemCatCode WHERE GC.CatCode='"
  loc_13E2AB0:       var_AC = Me.Fields.Item("SearchCode")
  loc_13E2AD7:       unk_4CE61A.Execute CStr(var_CC & var_AC.Value & "' Order By IG.Name"), var_120, -1
  loc_13E2AE2:       Set var_90 = var_124
  loc_13E2AFC:       var_A8 = True
  loc_13E2B09:       Set var_88 = Me.OptCat
  loc_13E2B0F:       Call 0.Method_Proc_121_60_13E30D40 (0, var_AC)
  loc_13E2B2D:       Call OptCat_UnknownEvent_9()
  loc_13E2B32:       Call Proc_121_55_11D5118(0, 1, OptCat.DispID_B)
  loc_13E2B37:       ' Referenced from:   13E2CFA
  loc_13E2B46:       If Not(var_90.EOF) Then
  loc_13E2B4D:         Set var_1EC = Me.FGrid1
  loc_13E2B62:         var_A8 = CVar((CLng(var_1EC.Rows) + 1)) 'Long
  loc_13E2B6A:         var_1EC.Rows = var_A8
  loc_13E2B84:         var_A8 = CVar((CLng(var_1EC.Rows) - 1)) 'Long
  loc_13E2B8C:         var_EC = CVar(CLng(0)) 'Long
  loc_13E2BA5:         var_FC = CVar(CStr((CLng(var_1EC.Rows) - 1))) 'String
  loc_13E2BAC:         LateIdCallSt
  loc_13E2BCF:         var_CC = CVar((CLng(var_1EC.Rows) - 1)) 'Long
  loc_13E2C04:         var_FC = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("GroupName")), CVar(CLng(2)), var_CC, var_1EC, var_FC)) 'String
  loc_13E2C0B:         LateIdCallSt
  loc_13E2C22:         var_DC = var_1EC.Rows
  loc_13E2C31:         var_CC = CVar((CLng(var_DC) - 1)) 'Long
  loc_13E2C66:         var_FC = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Code")), CVar(CLng(1)), var_CC, var_1EC, var_FC)) 'String
  loc_13E2C6D:         LateIdCallSt
  loc_13E2C84:         var_FC = var_1EC.Rows
  loc_13E2C93:         var_CC = CVar((CLng(var_FC) - 1)) 'Long
  loc_13E2CB7:         var_AC = var_90.Fields.Item("Limit")
  loc_13E2CC6:         Proc_6_48_EF4E00(var_DC, CVar(var_AC), CVar(CLng(3)), var_CC, var_1EC)
  loc_13E2CCF:         var_120 = CVar(CStr(var_DC)) 'String
  loc_13E2CD6:         LateIdCallSt
  loc_13E2CEE:         Set var_1EC = Nothing 
  loc_13E2CF5:         var_90.MoveNext
  loc_13E2CFA:         GoTo loc_13E2B37
  loc_13E2CFD:       End If
  loc_13E2D10:       Me.FGrid1.FixedRows = 1
  loc_13E2D1B:     Else
  loc_13E2D28:       Set var_88 = Me.OptCat
  loc_13E2D2E:       Call 0.Method_Proc_121_60_13E30D40 (1, var_AC, True, var_1EC, var_120)
  loc_13E2D4C:       Call OptCat_UnknownEvent_9()
  loc_13E2D51:     End If
  loc_13E2D8A:     Set var_124 = Me.Txt
  loc_13E2D90:     Call 0.Method_Proc_121_60_13E30D40 (CInt(0), var_128, CStr(var_8C.Fields.Item("Code").Value), 1, 1, OptCat.DispID_B)
  loc_13E2D98:     var_128.Tag = var_FC
  loc_13E2DB4:     var_A8 = "Name"
  loc_13E2DE7:     Set var_124 = Me.Txt
  loc_13E2DED:     Call 0.Method_Proc_121_60_13E30D40 (CInt(0), var_128, CStr(var_8C.Fields.Item(var_A8).Value), var_EC)
  loc_13E2DF5:     var_128.Text = var_A8
  loc_13E2E1A:     Me.FGrid.Redraw = False
  loc_13E2E35:     Me.FGrid.Rows = 1
  loc_13E2E3F:     var_92 = 1
  loc_13E2E42:     ' Referenced from:   13E3004
  loc_13E2E51:     If Not(var_8C.EOF) Then
  loc_13E2E54:       var_A8 = vbNullString
  loc_13E2E5E:       Set var_88 = Me.FGrid
  loc_13E2E73:       Set var_1F0 = Me.FGrid
  loc_13E2E7A:       var_A8 = CVar(CLng(var_92)) 'Long
  loc_13E2E8C:       var_BC = CVar(CStr(var_92)) 'String
  loc_13E2E93:       LateIdCallSt
  loc_13E2ED7:       var_DC = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(var_92)), var_1F0, CVar(var_8C.Fields.Item("ItemName")), CVar(CLng(0)))) 'String
  loc_13E2EDE:       LateIdCallSt
  loc_13E2F04:       var_A8 = "ItemCatName"
  loc_13E2F29:       var_DC = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_A8)), CVar(CLng(1)), CVar(CLng(var_92)), var_1F0, var_DC, var_A8)) 'String
  loc_13E2F30:       LateIdCallSt
  loc_13E2F46:       var_CC = CVar(CLng(var_92)) 'Long
  loc_13E2F4E:       var_110 = CVar(CLng(3)) 'Long
  loc_13E2F7E:       var_DC = CVar(CStr(var_8C.Fields.Item("ItemCode").Value)) 'String
  loc_13E2F85:       LateIdCallSt
  loc_13E2FD4:       var_DC = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ItemCatCode")), CVar(CLng(4)), CVar(CLng(var_92)), var_1F0, var_DC, CVar(CLng(4)), CVar(CLng(var_92)))) 'String
  loc_13E2FDB:       LateIdCallSt
  loc_13E2FEF:       Set var_1F0 = Nothing 
  loc_13E2FF9:       var_92 = (var_92 + 1)
  loc_13E2FFF:       var_8C.MoveNext
  loc_13E3004:       GoTo loc_13E2E42
  loc_13E3007:     End If
  loc_13E301A:     Me.FGrid.FixedRows = 1
  loc_13E3022:   End If
  loc_13E3030:   Me.FGrid.Redraw = True
  loc_13E303E:   If (var_92 = 1) Then
  loc_13E3054:     Me.FGrid.Rows = 1
  loc_13E307A:     var_BC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_92, var_1F0, var_DC, var_1F0))) 'String
  loc_13E3082:     Set var_AC = Me.FGrid
  loc_13E309C:     var_A8 = 1
  loc_13E30AF:     Me.FGrid.FixedRows = var_A8
  loc_13E30B7:   End If
  loc_13E30B7: End If
  loc_13E30B7: Call Proc_121_63_EBC8E0(FGrid.DispID_10000, var_BC, var_DC, FGrid.DispID_10000)
  loc_13E30C1: Set var_8C = Nothing
  loc_13E30C9: Set var_90 = Nothing
  loc_13E30CC: Exit Sub
  loc_13E30CD: ' Referenced from: 13E272C
  loc_13E30CD: Proc_6_60_E63754(var_A8, var_92)
  loc_13E30D2: Exit Sub
End Sub

Public Sub Proc_121_61_FABEFC
  'Data Table: 4CE5F0
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_FABD74: Me.Frame1.Enabled = True
  loc_FABD82: global_88 = vbNullString
  loc_FABD94: Set var_8C = Me.Txt
  loc_FABD9A: Call 0.Method_Proc_121_61_FABEFCC (var_8E, var_86)
  loc_FABDAA: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FABDC0:   Set var_8C = Me.Txt
  loc_FABDC6:   Call 0.Method_Proc_121_61_FABEFC0 (CInt(var_86), var_98)
  loc_FABDCE:   var_98.Text = vbNullString
  loc_FABDEA:   Set var_8C = Me.Txt
  loc_FABDF0:   Call 0.Method_Proc_121_61_FABEFC0 (CInt(var_86), var_98)
  loc_FABDF8:   var_98.Tag = vbNullString
  loc_FABE07: Next var_92 'Byte
  loc_FABE20: Me.FGrid.Rows = 1
  loc_FABE46: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_FABE4E: Set var_98 = Me.FGrid
  loc_FABE7B: Me.FGrid.FixedRows = 1
  loc_FABE96: Me.FGrid1.Rows = 1
  loc_FABEBC: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, CInt(0), FGrid.DispID_10000))) 'String
  loc_FABEC4: Set var_98 = Me.FGrid1
  loc_FABEF1: Me.FGrid1.FixedRows = 1
  loc_FABEF9: Exit Sub
End Sub

Public Sub Proc_121_62_E7A684(arg_C) 'E7A684
  'Data Table: 4CE5F0
  Dim var_98 As TextBox
  loc_E7A632: Set var_8C = Me.Txt
  loc_E7A638: Call 0.Method_Proc_121_62_E7A684C (var_8E, var_86)
  loc_E7A648: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A65E:   Set var_8C = Me.Txt
  loc_E7A664:   Call 0.Method_Proc_121_62_E7A6840 (CInt(var_86), var_98)
  loc_E7A66C:   var_98.Enabled = arg_C
  loc_E7A67B: Next var_92 'Byte
  loc_E7A681: Exit Sub
End Sub

Public Sub Proc_121_63_EBC8E0
  'Data Table: 4CE5F0
  loc_EBC858: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBC86A:   Me.DGHelp.Visible = False
  loc_EBC872: End If
  loc_EBC88E: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_EBC8A0:   Me.DGItemGrp.Visible = False
  loc_EBC8A8: End If
  loc_EBC8C4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBC8D6:   Me.FGPoint.Visible = False
  loc_EBC8DE: End If
  loc_EBC8DE: Exit Sub
End Sub

Public Sub Proc_121_64_FC1254
  'Data Table: 4CE5F0
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC10D7: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC10DC:   var_92 = 2 'Byte
  loc_FC10E0: End If
  loc_FC10E9: Set var_98 = Me.TxtGrid
  loc_FC10EF: Call 0.Method_Proc_121_64_FC12540 (0, var_B0)
  loc_FC1112: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC1146: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC116A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC116D:     GoTo loc_FC123F
  loc_FC1170:   End If
  loc_FC1174:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC119E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC11A8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC11DD:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC1201:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC121A:     Set var_98 = Me.TxtGrid
  loc_FC1220:     Call 0.Method_Proc_121_64_FC12540 (0, var_B0, CVar(CLng(var_92)))
  loc_FC1228:     var_B0.SetFocus
  loc_FC1239:     Proc_121_64_FC1254 = 0
  loc_FC123F:     ' Referenced from: FC116D
  loc_FC123F:   End If
  loc_FC1242: Next var_D4 'Integer
  loc_FC124C: Proc_121_64_FC1254 = &HFF
  loc_FC1252: CopyBytes 30975
End Sub

Public Sub Proc_121_65_F81D58
  'Data Table: 4CE5F0
  Dim var_A4 As Variant
  Dim var_F0 As Variant
  loc_F81C16: var_92 = 2 'Byte
  loc_F81C39: var_8C = CStr(Ucase(Trim(arg_14)))
  loc_F81C5C: var_A4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_F81C6B: Me.FGrid.Row = arg_14
  loc_F81C9F: For var_E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_E0 'Integer
  loc_F81CC3:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_F81CC6:     GoTo loc_F81D44
  loc_F81CC9:   End If
  loc_F81CCD:   var_A4 = CVar(CLng(var_88)) 'Long
  loc_F81CD7:   var_F0 = CVar(CLng(var_92)) 'Long
  loc_F81D36:   If ((var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))))) And (CStr(Ucase(CVar(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))))) <> vbNullString)) Then
  loc_F81D3E:     Proc_121_65_F81D58 = 0
  loc_F81D44:     ' Referenced from: F81CC6
  loc_F81D44:   End If
  loc_F81D47: Next var_E0 'Integer
  loc_F81D51: Proc_121_65_F81D58 = &HFF
End Sub

Public Sub Proc_121_66_1060D64
  'Data Table: 4CE5F0
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_4CE61A As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_1060B1B: If (Me.RecordCount = 0) Then
  loc_1060B1E:   Proc_121_66_1060D64 = 
  loc_1060B24: End If
  loc_1060B28: Set var_90 = Me.TopCtrl1
  loc_1060B2E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1060B36: var_A4 = CStr()
  loc_1060B47: If (var_A4 = "Add") Then
  loc_1060B77:   Set var_90 = Me.Txt
  loc_1060B7D:   Call 0.Method_Proc_121_66_1060D640 (CInt(0), var_A8, var_A4, "Select Count(*) From CatalogMast Where Name='", var_A0, -1)
  loc_1060B9E:   unk_4CE61A.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_1060BAE:    = var_C8.Item()
  loc_1060BB6:    = var_DC.Value
  loc_1060BE3:   If (var_A8.Text.Fields > 0) Then
  loc_1060C01:     var_A0 = "Duplicate Name"
  loc_1060C07:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_1060C22:     Set var_90 = Me.Txt
  loc_1060C28:     Call 0.Method_Proc_121_66_1060D640 (CInt(0))
  loc_1060C30:     var_A8.SetFocus
  loc_1060C41:     Proc_121_66_1060D64 = &HFF
  loc_1060C47:   End If
  loc_1060C4A: Else
  loc_1060C77:   Set var_90 = Me.Txt
  loc_1060C7D:   Call 0.Method_Proc_121_66_1060D640 (CInt(0), var_A8, var_A4, "Select Count(*) From CatalogMast Where Name='", var_A0, -1)
  loc_1060CAF:   unk_4CE61A.Execute var_C8 & var_A4 & "' And Name<>'" & global_88 & "'", 0, var_DC
  loc_1060CBF:    = var_C8.Item(var_A8)
  loc_1060CC7:    = var_DC.Value
  loc_1060CF8:   If (var_A8.Text.Fields > 0) Then
  loc_1060D1C:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_1060D37:     Set var_90 = Me.Txt
  loc_1060D3D:     Call 0.Method_Proc_121_66_1060D640 (CInt(0))
  loc_1060D45:     var_A8.SetFocus
  loc_1060D56:     Proc_121_66_1060D64 = &HFF
  loc_1060D5C:   End If
  loc_1060D5C: End If
  loc_1060D5C: Proc_121_66_1060D64 = var_A8
End Sub

Public Sub Proc_121_67_11A60F4
  'Data Table: 4CE5F0
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_4CE61A As Connection15
  Dim var_88 As Recordset15
  Dim var_170 As Variant
  Dim var_108 As Variant
  loc_11A5D0F: Me.FGrid.Rows = 1
  loc_11A5D17: var_9C = vbNullString
  loc_11A5D21: Set var_B0 = Me.FGrid
  loc_11A5D45: Me.FGrid.FixedRows = 1
  loc_11A5D73: For var_C4 = var_8A To CInt((CLng(Me.FGrid1.Rows) - 1)): var_8A = var_C4 'Integer
  loc_11A5D7D:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_11A5D82:   var_D8 = 1
  loc_11A5DC2:   var_C8 = "SELECT ItemMast.Code as ItemCode, ItemMast.Name as ItemName, ItemGrp.Name as ItemGrpName,ItemGrp.Code as ItemGrpCode FROM ItemMast LEFT JOIN ItemGrp ON ItemGrp.Code = ItemMast.ItemGroup WHERE ItemMast.RestCode='" & global_56
  loc_11A5DE6:   unk_4CE61A.Execute CStr(CVar(var_C8 & "' and ItemMast.ItemGroup='") & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "'"), var_16C, -1
  loc_11A5DF1:   Set var_88 = var_170
  loc_11A5E13:   ' Referenced from: 11A60DD
  loc_11A5E19:   var_172 = var_88.EOF
  loc_11A5E22:   If Not(var_172) Then
  loc_11A5E3F:     var_170 = var_88.Fields.Item("ItemGrpName")
  loc_11A5EB5:     Call Proc_121_65_F81D58(CStr(var_170.Value), CStr(var_88.Fields.Item("ItemCode").Value), CStr(var_88.Fields.Item("ItemName").Value), var_172, var_170)
  loc_11A5EE1:     If (var_172 = &HFF) Then
  loc_11A5EFD:       var_9C = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11A5F0C:       Me.FGrid.Row = "ItemGrpName"
  loc_11A5F1F:       Set var_18C = Me.FGrid
  loc_11A5F22:       var_9C = vbNullString
  loc_11A5F56:       var_9C = "ItemGrpName"
  loc_11A5F7B:       var_108 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_9C)), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, var_9C)) 'String
  loc_11A5F82:       LateIdCallSt
  loc_11A5FE2:       var_108 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemGrpCode")), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), var_18C, var_108)) 'String
  loc_11A5FE9:       LateIdCallSt
  loc_11A6049:       var_108 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemCode")), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_18C, var_108)) 'String
  loc_11A6050:       LateIdCallSt
  loc_11A60B0:       var_108 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)), var_18C, var_108)) 'String
  loc_11A60B7:       LateIdCallSt
  loc_11A60D1:       Set var_18C = Nothing 
  loc_11A60D5:     End If
  loc_11A60D8:     var_88.MoveNext
  loc_11A60DD:     GoTo loc_11A5E13
  loc_11A60E0:   End If
  loc_11A60E5:   Set var_88 = Nothing
  loc_11A60EB: Next var_C4 'Integer
  loc_11A60F0: Exit Sub
  loc_11A60F1: ThisVCallI2
End Sub
