VERSION 5.00
Begin VB.Form FrmPOSRecycleData
  Caption = "Recycle Outlet Data"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 13755
  ClientHeight = 9645
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13755
    Height = 450
    Visible = 0   'False
    TabIndex = 10
  End
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 12060
    Top = 5340
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 6
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdExitz
    Caption = "E&xit"
    BackColor = &HC0FFFF&
    Left = 9780
    Top = 1050
    Width = 1545
    Height = 495
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdDeletez
    Caption = "&Delete"
    BackColor = &HC0FFFF&
    Left = 8235
    Top = 1050
    Width = 1545
    Height = 495
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdFill
    Caption = "&Fill"
    Left = 12660
    Top = 3285
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 2490
    Top = 2625
    Width = 915
    Height = 195
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 2400
    Top = 2580
    Width = 6495
    Height = 5775
    TabIndex = 1
  End
  Begin BtnEnh CmdExit
    Left = 4575
    Top = 1545
    Width = 1140
    Height = 870
    TabIndex = 8
  End
  Begin BtnEnh CmdDelete
    Left = 3435
    Top = 1530
    Width = 1140
    Height = 870
    TabIndex = 9
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
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
  Begin Label Label1
    BackColor = &HFFC0C0&
    ForeColor = &H80&
    Left = 2505
    Top = 8445
    Width = 6360
    Height = 270
    TabIndex = 5
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

Attribute VB_Name = "FrmPOSRecycleData"

Private global_52 As Integer

Private Sub Form_Load() 'E9A37C
  'Data Table: 436EE4
  Dim var_A8 As MSHFlexGrid
  loc_E9A2F4: On Error Goto loc_E9A376
  loc_E9A2FE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_E9A316: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_E9A327: Set var_A8 = Me.CmdDelete
  loc_E9A32D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_E9A335: Call Proc_230_12_118C594()
  loc_E9A33A: Call Proc_230_13_110E924()
  loc_E9A352: Me.GridSel.Row = 1
  loc_E9A36D: Me.GridSel.Col = 0
  loc_E9A375: Exit Sub
  loc_E9A376: ' Referenced from: E9A2F4
  loc_E9A376: Proc_6_60_E63754()
  loc_E9A37B: Exit Sub
End Sub

Private Sub Form_Resize() 'ED78A8
  'Data Table: 436EE4
  Dim var_8C As Label
  loc_ED7806: Call 0.Method_arg_50 (var_88)
  loc_ED7818: Me.LblFormCaption.Caption = var_88
  loc_ED7831: Me.LblFormCaption.Left = CDbl(0)
  loc_ED783D: Set var_A0 = Me.TopCtrl1
  loc_ED7843: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED7850: Set var_8C = Me.TopCtrl1
  loc_ED7856: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED7870: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED788B: Call 0.Method_arg_100 (var_B8)
  loc_ED789D: Me.LblFormCaption.Width = var_B8
  loc_ED78A5: Exit Sub
  loc_ED78A6: Set arg_6C78 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0E16C
  'Data Table: 436EE4
  loc_E0E163: Set global_64 = Nothing
  loc_E0E16A: Exit Sub
End Sub

Private Sub Form_Activate() 'E16C28
  'Data Table: 436EE4
  loc_E16C14: Set var_88 = Me.GridSel
  loc_E16C25: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A4D8
  'Data Table: 436EE4
  loc_E2A4B0: On Error Goto loc_E2A4CF
  loc_E2A4C7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A4CF: ' Referenced from: E2A4B0
  loc_E2A4CF: Proc_6_60_E63754(Shift)
  loc_E2A4D4: Exit Sub
End Sub

Private Sub Check1_Click() 'F6817C
  'Data Table: 436EE4
  Dim var_9C As Variant
  loc_F6805F: If (CLng(Me.Check1.Value) = 0) Then
  loc_F68070:   Me.GridSel.Enabled = True
  loc_F68097:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F680AD:     Me.GridSel.Row = 1
  loc_F680C8:     Me.GridSel.Col = 0
  loc_F680D0:   End If
  loc_F680D3: Else
  loc_F680E2:   Me.GridSel.Enabled = False
  loc_F68109:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6811F:     Me.GridSel.Row = 0
  loc_F6813A:     Me.GridSel.Col = 0
  loc_F6815B:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F6816A:     Me.GridSel.RowSel = 0
  loc_F68179:   End If
  loc_F68179: End If
  loc_F68179: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E23530
  'Data Table: 436EE4
  loc_E23516: If (KeyCode = &HD) Then
  loc_E23527:   Proc_303_0_FBACC8("	")
  loc_E2352F: End If
  loc_E2352F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FDA13C
  'Data Table: 436EE4
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD9F8A: If (KeyCode = &HD) Then
  loc_FD9F9B:   Proc_303_0_FBACC8("	")
  loc_FD9FA3: End If
  loc_FD9FC2: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD9FC5:   Exit Sub
  loc_FD9FC6: End If
  loc_FD9FF0: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDA003:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDA01D:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDA038:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA03D:   var_D4 = 0
  loc_FDA06F:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA074:   var_19C = 0
  loc_FDA0AF:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDA0B7:   Set var_1D0 = Me.GridSel
  loc_FDA0BD:   LateIdCallSt
  loc_FDA0F7:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_FDA109:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_FDA131:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDA138: End If
  loc_FDA138: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5E554
  'Data Table: 436EE4
  loc_E5E52F: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5E532:   Exit Sub
  loc_E5E533: End If
  loc_E5E54A: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5E553: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1029238
  'Data Table: 436EE4
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1029039: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_102903C:   Exit Sub
  loc_102903D: End If
  loc_1029099: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_102909C:   Exit Sub
  loc_102909D: End If
  loc_10290CC: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_10290E5:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1029100:   Me.GridSel.Col = 0
  loc_1029118:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1029132:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_102913E:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1029143:   var_EC = 0
  loc_1029166:   var_160 = CVar(CLng(var_88)) 'Long
  loc_102916B:   var_180 = 0
  loc_10291A6:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10291AE:   Set var_A0 = Me.GridSel
  loc_10291B4:   LateIdCallSt
  loc_10291E6:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_10291F8:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1029220:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_102922A: Next var_BA 'Integer
  loc_1029234: global_52 = 0
  loc_1029237: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E16BDC
  'Data Table: 436EE4
  loc_E16BD1: Me.Global.Unload Me
  loc_E16BD9: Exit Sub
  loc_E16BDA: DOC
End Sub

Private Sub CmdDelete_UnknownEvent_9 'F35770
  'Data Table: 436EE4
  Dim var_A0 As Variant
  Dim var_86 As Integer
  Dim unk_436EEF As Connection15
  Dim CmdDelete_UnknownEvent_9FF As Variant
  loc_F35660: On Error Goto loc_F35753
  loc_F35669: Call 0.Method_arg_50 (var_90)
  loc_F3568D: var_A0 = CVar("R U Sure To Delete Data?" & vbCrLf & "It Will Not Recover Again.") 'String
  loc_F356A9: If (MsgBox(var_A0, &H24, CVar(var_90), var_D0, var_F0) = 7) Then
  loc_F356AC:   Exit Sub
  loc_F356AD: End If
  loc_F356BA: Me.Label1.Caption = "Deleting..."
  loc_F356CC: Me.Label1.Refresh
  loc_F356D6: var_86 = &HFF
  loc_F356E2: unk_436EEF.BeginTrans var_F8
  loc_F35710: Call Proc_230_15_11F2A80(global_60, CByte(Me.Check1.Value))
  loc_F35721: unk_436EEF.CommitTrans
  loc_F35728: var_86 = 0
  loc_F35738: Me.Label1.Caption = "Deletion Completed."
  loc_F3574A: Me.Label1.Refresh
  loc_F35752: Exit Sub
  loc_F35753: ' Referenced from: F35660
  loc_F35759: If (var_86 = &HFF) Then
  loc_F35762:   unk_436EEF.RollbackTrans
  loc_F35767: End If
  loc_F35767: Proc_6_60_E63754(var_86, var_A0)
  loc_F3576C: Exit Sub
  loc_F3576D: CmdDelete_UnknownEvent_9FF = CVar(var_86) 'Integer
End Sub

Public Sub Proc_230_12_118C594
  'Data Table: 436EE4
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_118C1B2: Me.GridSel.Rows = 1
  loc_118C1C6: Me.GridSel.Cols = 5
  loc_118C1CB: var_98 = 0
  loc_118C1D7: var_BC = CVar(CLng(0)) 'Long
  loc_118C1DC: var_DC = vbNullString
  loc_118C1E5: LateIdCallSt
  loc_118C1F0: var_98 = CVar(CLng(0)) 'Long
  loc_118C1F5: var_BC = &H258
  loc_118C201: LateIdCallSt
  loc_118C209: var_98 = 0
  loc_118C215: var_BC = CVar(CLng(1)) 'Long
  loc_118C21A: var_DC = "RestCode"
  loc_118C223: LateIdCallSt
  loc_118C22E: var_98 = CVar(CLng(1)) 'Long
  loc_118C239: var_BC = CVar(CInt(1)) 'Integer
  loc_118C240: LateIdCallSt
  loc_118C24B: var_98 = CVar(CLng(1)) 'Long
  loc_118C256: var_BC = CVar(CInt(1)) 'Integer
  loc_118C25D: LateIdCallSt
  loc_118C268: var_98 = CVar(CLng(1)) 'Long
  loc_118C26D: var_BC = 0
  loc_118C279: LateIdCallSt
  loc_118C281: var_98 = 0
  loc_118C28D: var_BC = CVar(CLng(2)) 'Long
  loc_118C292: var_DC = "Outlet"
  loc_118C29B: LateIdCallSt
  loc_118C2A6: var_98 = CVar(CLng(2)) 'Long
  loc_118C2B1: var_BC = CVar(CInt(1)) 'Integer
  loc_118C2B8: LateIdCallSt
  loc_118C2C3: var_98 = CVar(CLng(2)) 'Long
  loc_118C2CE: var_BC = CVar(CInt(1)) 'Integer
  loc_118C2D5: LateIdCallSt
  loc_118C2E0: var_98 = CVar(CLng(2)) 'Long
  loc_118C2E5: var_BC = &H1194
  loc_118C2F1: LateIdCallSt
  loc_118C2F9: var_98 = 0
  loc_118C305: var_BC = CVar(CLng(3)) 'Long
  loc_118C30A: var_DC = "RestType"
  loc_118C313: LateIdCallSt
  loc_118C31E: var_98 = CVar(CLng(3)) 'Long
  loc_118C329: var_BC = CVar(CInt(1)) 'Integer
  loc_118C330: LateIdCallSt
  loc_118C33B: var_98 = CVar(CLng(3)) 'Long
  loc_118C346: var_BC = CVar(CInt(1)) 'Integer
  loc_118C34D: LateIdCallSt
  loc_118C358: var_98 = CVar(CLng(3)) 'Long
  loc_118C35D: var_BC = 0
  loc_118C369: LateIdCallSt
  loc_118C371: var_98 = 0
  loc_118C37D: var_BC = CVar(CLng(4)) 'Long
  loc_118C382: var_DC = "LogSite_Code"
  loc_118C38B: LateIdCallSt
  loc_118C396: var_98 = CVar(CLng(4)) 'Long
  loc_118C3A1: var_BC = CVar(CInt(1)) 'Integer
  loc_118C3A8: LateIdCallSt
  loc_118C3B3: var_98 = CVar(CLng(4)) 'Long
  loc_118C3BE: var_BC = CVar(CInt(1)) 'Integer
  loc_118C3C5: LateIdCallSt
  loc_118C3D0: var_98 = CVar(CLng(4)) 'Long
  loc_118C3D5: var_BC = 0
  loc_118C3E1: LateIdCallSt
  loc_118C3E9: var_98 = vbNullString
  loc_118C3F3: Set var_AC = Me.GridSel
  loc_118C417: Me.GridSel.FixedRows = 1
  loc_118C421: Set var_88 = Nothing 
  loc_118C435: ReDim Preserve global_60(0 To 0)
  loc_118C44C: global_60(0) = 0
  loc_118C460: Me.GridSel.Height = CVar(CDbl(6000))
  loc_118C47B: Me.GridSel.Width = CVar(CDbl(6500))
  loc_118C483: var_98 = 0
  loc_118C4B4: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_118C4C3: var_98 = 0
  loc_118C4F4: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_118C525: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_118C556: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_118C575: Me.Check1.Value = CInt(0)
  loc_118C589: Me.Check1.Visible = False
  loc_118C591: Exit Sub
End Sub

Public Sub Proc_230_13_110E924
  'Data Table: 436EE4
  Dim var_94 As String
  Dim unk_436EEF As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_140 As Variant
  loc_110E60E: var_94 = "SELECT Code,Name,RestType,LOGSITE_CODE FROM Depart Where Code<>'" & MemVar_1F95078 & "RS' And (LOGSITE_CODE='" & MemVar_1F95078
  loc_110E61E: unk_436EEF.Execute var_94 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' and RestType='Outlet' ORDER BY Name", var_B8, -1
  loc_110E629: Set var_88 = var_BC
  loc_110E651: If (var_88.RecordCount = 0) Then
  loc_110E667:   Me.GridSel.Rows = 2
  loc_110E66F:   Exit Sub
  loc_110E670: End If
  loc_110E683: Me.GridSel.Row = 1
  loc_110E693: Set var_BC = Me.CmdDelete
  loc_110E699: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_110E6A1: ' Referenced from: 110E8FA
  loc_110E6B0: If Not(var_88.EOF) Then
  loc_110E6B7:   Set var_D8 = Me.GridSel
  loc_110E6BA:   var_A8 = vbNullString
  loc_110E6DE:   var_A8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_110E6E6:   var_E8 = CVar(CLng(0)) 'Long
  loc_110E6F4:   LateIdCallSt
  loc_110E74A:   var_140 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Code")), CVar(CLng(1)), CVar(CLng(Me.GridSel.Row)), var_D8, vbNullString)) 'String
  loc_110E751:   LateIdCallSt
  loc_110E7B1:   var_140 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_D8, var_140)) 'String
  loc_110E7B8:   LateIdCallSt
  loc_110E818:   var_140 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RestType")), CVar(CLng(3)), CVar(CLng(Me.GridSel.Row)), var_D8, var_140)) 'String
  loc_110E81F:   LateIdCallSt
  loc_110E87F:   var_140 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("LogSite_Code")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_D8, var_140)) 'String
  loc_110E886:   LateIdCallSt
  loc_110E8A0:   Set var_D8 = Nothing 
  loc_110E8A7:   var_88.MoveNext
  loc_110E8BD:   If (var_88.EOF = &HFF) Then
  loc_110E8C0:     GoTo loc_110E8FD
  loc_110E8C3:   End If
  loc_110E8DC:   var_A8 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_110E8EB:   Me.GridSel.Row = "LogSite_Code"
  loc_110E8FA:   GoTo loc_110E6A1
  loc_110E8FD:   ' Referenced from: 110E8C0
  loc_110E8FD: End If
  loc_110E910: Me.GridSel.FixedRows = 1
  loc_110E91D: Set var_88 = Nothing
  loc_110E920: Exit Sub
End Sub

Public Sub Proc_230_14_13C6B28(arg_C, arg_10) '13C6B28
  'Data Table: 436EE4
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim unk_436EEF As Connection15
  Dim var_BC As Recordset15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_E4 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_130 As Variant
  Dim var_184 As Variant
  loc_13C61DE: var_D0 = 0
  loc_13C6219: unk_436EEF.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & arg_C & "'And Logsite_Code='" & arg_10 & "'", var_B8, -1
  loc_13C6221: var_BC = var_BC.Fields
  loc_13C6229: var_D0 = var_C0.Item(var_C0)
  loc_13C6231: var_D4 = var_D4.Value
  loc_13C623E: var_88 = Proc_6_38_E69628(var_E4)
  loc_13C62A1: var_E4 = CVar("Delete From KOT Where VType In('" & "K" & var_88 & "','" & "N" & var_88 & "') And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C62AF: Proc_6_7_F26918(var_B8, MemVar_1F950F4, var_E4, var_164)
  loc_13C62B7: var_100 = -1 & var_B8 
  loc_13C62CF: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_100 & " AND ")
  loc_13C62E5: unk_436EEF.Execute CStr(var_BC & var_130), var_E4, 
  loc_13C634F: Proc_6_7_F26918(var_B8, MemVar_1F950F4, CVar("Delete From Sale1 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C636F: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_164 & var_B8 & " AND ")
  loc_13C6377: var_140 = -1 & var_130 
  loc_13C6385: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C63E9: Proc_6_7_F26918(var_B8, MemVar_1F950F4, CVar("Delete From Sale2 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C6409: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_164 & var_B8 & " AND ")
  loc_13C6411: var_140 = -1 & var_130 
  loc_13C641F: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6483: Proc_6_7_F26918(var_B8, MemVar_1F950F4, CVar("Delete From Stock Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C64A3: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_164 & var_B8 & " AND ")
  loc_13C64AB: var_140 = -1 & var_130 
  loc_13C64B9: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C651D: Proc_6_7_F26918(var_B8, MemVar_1F950F4, CVar("Delete From SunTran Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C653D: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_164 & var_B8 & " AND ")
  loc_13C6545: var_140 = -1 & var_130 
  loc_13C6553: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C65B7: Proc_6_7_F26918(var_B8, MemVar_1F950F4, CVar("Delete From Paycharge Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C65D7: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_164 & var_B8 & " AND ")
  loc_13C65DF: var_140 = -1 & var_130 
  loc_13C65ED: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C663C: var_98 = "Delete From POS_SBill Where DocID In (Select DocId From SplitSale1 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10
  loc_13C6651: Proc_6_7_F26918(var_B8, MemVar_1F950F4, CVar(var_98 & "' And VDate Between "))
  loc_13C6671: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_184 & var_B8 & " AND ")
  loc_13C6679: var_140 = -1 & var_130 
  loc_13C6682: var_164 = var_BC & var_130 & ")" 
  loc_13C6690: unk_436EEF.Execute CStr(var_164), var_BC, 
  loc_13C66E8: var_E4 = CVar("Delete From SplitSale1 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C66F6: Proc_6_7_F26918(var_B8, MemVar_1F950F4, var_E4)
  loc_13C6716: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_164 & var_B8 & " AND ")
  loc_13C671E: var_140 = -1 & var_130 
  loc_13C672C: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6782: var_E4 = CVar("Delete From SplitSale2 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C6790: Proc_6_7_F26918(var_B8, MemVar_1F950F4, var_E4)
  loc_13C67B0: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_164 & var_B8 & " AND ")
  loc_13C67B8: var_140 = -1 & var_130 
  loc_13C67C6: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C681C: var_E4 = CVar("Delete From SplitStock Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C682A: Proc_6_7_F26918(var_B8, MemVar_1F950F4, var_E4)
  loc_13C684A: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_164 & var_B8 & " AND ")
  loc_13C6852: var_140 = -1 & var_130 
  loc_13C6860: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C68B6: var_E4 = CVar("Delete From SplitedSunTran Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C68C4: Proc_6_7_F26918(var_B8, MemVar_1F950F4, var_E4)
  loc_13C68D5: var_110 = var_164 & var_B8 & " AND " 
  loc_13C68E4: Proc_6_7_F26918(var_130, MemVar_1F950FC, var_110)
  loc_13C68EC: var_140 = -1 & var_130 
  loc_13C68FA: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C693D: Proc_6_7_F26918(var_B8, MemVar_1F950F4, "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=")
  loc_13C695D: Proc_6_7_F26918(var_110, MemVar_1F950FC, var_204 & var_B8 & " AND DATE_TO=")
  loc_13C6965: var_130 = -1 & var_110 
  loc_13C69A6: unk_436EEF.Execute CStr(var_130 & " AND V_TYPE='" & CVar("K" & var_88) & "' And Logsite_Code='" & CVar(arg_10) & "'"), var_BC, 
  loc_13C69E9: Proc_6_7_F26918(var_B8, MemVar_1F950F4, "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=")
  loc_13C6A09: Proc_6_7_F26918(var_110, MemVar_1F950FC, var_204 & var_B8 & " AND DATE_TO=")
  loc_13C6A11: var_130 = -1 & var_110 
  loc_13C6A52: unk_436EEF.Execute CStr(var_130 & " AND V_TYPE='" & CVar("N" & var_88) & "' And Logsite_Code='" & CVar(arg_10) & "'"), var_BC, 
  loc_13C6A95: Proc_6_7_F26918(var_B8, MemVar_1F950F4, "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=")
  loc_13C6AB5: Proc_6_7_F26918(var_110, MemVar_1F950FC, var_204 & var_B8 & " AND DATE_TO=")
  loc_13C6ABD: var_130 = -1 & var_110 
  loc_13C6AFE: unk_436EEF.Execute CStr(var_130 & " AND V_TYPE='" & CVar("B" & var_88) & "' And Logsite_Code='" & CVar(arg_10) & "'"), var_BC, 
  loc_13C6B24: Exit Sub
End Sub

Public Sub Proc_230_15_11F2A80(arg_C, arg_10) '11F2A80
  'Data Table: 436EE4
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_128 As Variant
  loc_11F25F2: On Error Goto loc_11F2A74
  loc_11F25F7: var_96 = 0
  loc_11F2603: If (CInt(arg_10) = 1) Then
  loc_11F262B:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11F2634:     var_9A = var_98
  loc_11F263B:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F2643:     var_E4 = CVar(CLng(1)) 'Long
  loc_11F265D:     var_F8 = CStr(Me.GridSel.TextMatrix))
  loc_11F2669:     var_108 = CVar(CLng(var_9A)) 'Long
  loc_11F26A9:     If (CVar(CLng(4)) And (CStr(Me.GridSel.TextMatrix)) <> vbNullString)) Then
  loc_11F26B0:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F26B8:       var_E4 = CVar(CLng(1)) 'Long
  loc_11F26D7:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11F26DF:       var_128 = CVar(CLng(4)) 'Long
  loc_11F2705:       Call Proc_230_14_13C6B28(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11F2721:       var_96 = &HFF
  loc_11F2749:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11F2762:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11F277D:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11F2798:         Me.GridSel.CellBackColor = &H80FF
  loc_11F27A3:       Next var_154 'Integer
  loc_11F27A8:     End If
  loc_11F27AB:   Next var_B4 'Integer
  loc_11F27B0:   Exit For
  loc_11F27B3: End If
  loc_11F27BB: CRefVarAry
  loc_11F27C3: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11F27E4:   If (arg_C(var_98) = 0) Then
  loc_11F27E7:     GoTo loc_11F29AD
  loc_11F27EA:   End If
  loc_11F27FB:   var_9A = CInt(arg_C(var_98))
  loc_11F2805:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F280A:   var_E4 = 0
  loc_11F2839:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11F2840:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F2848:     var_E4 = CVar(CLng(1)) 'Long
  loc_11F2862:     var_F8 = CStr(Me.GridSel.TextMatrix))
  loc_11F286E:     var_108 = CVar(CLng(var_9A)) 'Long
  loc_11F28AE:     If (CVar(CLng(4)) And (CStr(Me.GridSel.TextMatrix)) <> vbNullString)) Then
  loc_11F28B5:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F28BD:       var_E4 = CVar(CLng(1)) 'Long
  loc_11F28DC:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11F28E4:       var_128 = CVar(CLng(4)) 'Long
  loc_11F290A:       Call Proc_230_14_13C6B28(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11F2926:       var_96 = &HFF
  loc_11F294E:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11F2967:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11F2982:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11F299D:         Me.GridSel.CellBackColor = &H80FF
  loc_11F29A8:       Next var_15C 'Integer
  loc_11F29AD:       ' Referenced from: 11F27E7
  loc_11F29AD:     End If
  loc_11F29AD:   End If
  loc_11F29B0: Next var_158 'Integer
  loc_11F29B5: ' Referenced from: 11F27B0
  loc_11F29C5: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11F29C8:   var_C4 = 0
  loc_11F29D4:   var_E4 = CVar(CLng(2)) 'Long
  loc_11F29E3:   var_B0 = Me.GridSel.TextMatrix)
  loc_11F2A0B:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11F2A36:   Me.GridSel.Row = 1
  loc_11F2A3E:   var_C4 = 0
  loc_11F2A51:   Me.GridSel.Col = var_C4
  loc_11F2A5D:   Set var_A0 = Me.GridSel
  loc_11F2A6E: End If
  loc_11F2A6E: Proc_230_15_11F2A80 = GridSel.DispID_8001
  loc_11F2A74: ' Referenced from: 11F25F2
  loc_11F2A74: Proc_6_60_E63754(var_B0, var_E4)
  loc_11F2A79: Proc_230_15_11F2A80 = var_C4
End Sub
