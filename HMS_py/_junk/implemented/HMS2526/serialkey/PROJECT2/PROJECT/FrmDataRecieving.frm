VERSION 5.00
Begin VB.Form FrmDataRecieving
  Caption = "Data Recieving Window . . ."
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "FrmDataRecieving"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8115
  ClientHeight = 5775
  Begin TextBox Text1
    Left = 705
    Top = 4680
    Width = 5355
    Height = 360
    TabIndex = 14
    MultiLine = -1  'True
    Appearance = 0 'Flat
  End
  Begin ProgressBar PBar1
    Left = 510
    Top = 5325
    Width = 5370
    Height = 360
    TabIndex = 11
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Left = 705
    Top = 705
    Width = 5370
    Height = 3990
    TabIndex = 6
    Begin TextBox Txt
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 0
      Top = 30
      Width = 5340
      Height = 315
      TabIndex = 13
      MaxLength = 250
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid TGrid
      Index = 0
      Left = 15
      Top = 345
      Width = 2655
      Height = 3240
      TabIndex = 7
    End
    Begin MSHFlexGrid TGrid
      Index = 1
      Left = 2685
      Top = 345
      Width = 2655
      Height = 3240
      TabIndex = 8
    End
    Begin Label lblSource
      Caption = " "
      Left = 135
      Top = 3645
      Width = 2535
      Height = 285
      TabIndex = 10
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
    Begin Label lblDestination
      Left = 2835
      Top = 3630
      Width = 2490
      Height = 300
      TabIndex = 9
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
  End
  Begin CommandButton cmdBackup
    Caption = "BackUp DataBase ..."
    Left = 6135
    Top = 1440
    Width = 1785
    Height = 345
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = -105
    Top = 375
    Width = 2070
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 250
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
  Begin CommandButton cmdDestination
    Caption = "Open Destin ..."
    Left = 2085
    Top = 375
    Width = 1785
    Height = 285
    TabIndex = 3
  End
  Begin CommandButton cmdSourcePath
    Caption = "Open Source ..."
    Left = 6135
    Top = 1050
    Width = 1785
    Height = 360
    TabIndex = 2
  End
  Begin CommandButton cmdVerifyDatabase
    Caption = "Transfer Database ..."
    Left = 6135
    Top = 1815
    Width = 1785
    Height = 360
    TabIndex = 1
  End
  Begin CommandButton CmdTables
    Caption = "Show Tables ..."
    Left = 585
    Top = 5370
    Width = 1785
    Height = 300
    TabIndex = 0
  End
  Begin CommonDialog CDLG
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 5400
    Width = 8115
    Height = 375
    TabIndex = 12
  End
  Begin Line LnL
    X1 = 6990
    Y1 = 2880
    X2 = 6990
    Y2 = 3645
    BorderWidth = 2
  End
  Begin Line LnR
    X1 = 7125
    Y1 = 2850
    X2 = 7125
    Y2 = 3615
    BorderWidth = 2
  End
  Begin Image Image1
    Picture = "FrmDataRecieving.frx":0
    Left = 6660
    Top = 2415
    Width = 720
    Height = 540
    Stretch = -1  'True
  End
  Begin Image Image2
    Picture = "FrmDataRecieving.frx":442
    Left = 6660
    Top = 3525
    Width = 765
    Height = 540
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Line LnM
    BorderColor = &HFF&
    X1 = 7050
    Y1 = 2910
    X2 = 7050
    Y2 = 2980
    BorderWidth = 7
  End
End

Attribute VB_Name = "FrmDataRecieving"


Private Sub cmdBackup_Click() '129704C
  'Data Table: 43BA88
  Dim var_A4 As Variant
  Dim var_CC As Variant
  Dim var_F0 As String
  Dim var_DC As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim MemVar_1F967E0 As String
  Dim var_174 As Long
  Dim var_B4 As Variant
  Dim MemVar_1F9E69C As Global
  loc_1296A80: On Error Goto loc_1297006
  loc_1296A8E: Set var_90 = Me.Txt
  loc_1296A94: Call 0.Method_cmdBackup_Click0 (CInt(0))
  loc_1296AB6: Set var_B8 = Me.Txt
  loc_1296ABC: Call 0.Method_cmdBackup_Click0 (CInt(1), var_BC)
  loc_1296AC4: var_CC = CVar(var_BC) 'Address
  loc_1296ACB: var_DC = Ucase(var_CC)
  loc_1296AE7: If (Ucase(CVar(var_94)) = var_DC) Then
  loc_1296B11:   MsgBox(CVar("Please check Source & destination path!" & vbCrLf & "Can not be same path."), &H40, "Validation...", var_CC, var_DC)
  loc_1296B24:   Exit Sub
  loc_1296B25: End If
  loc_1296B35: Set var_90 = Me.Txt
  loc_1296B3B: Call 0.Method_cmdBackup_Click0 (CInt(0), var_94)
  loc_1296B5C: var_CC = InStr(1, Ucase(CVar(var_94)), ".MDB", 0)
  loc_1296B66: var_DC = (var_CC <= 0)
  loc_1296B7A: Set var_B8 = Me.Txt
  loc_1296B80: Call 0.Method_cmdBackup_Click0 (CInt(1), var_BC, 1)
  loc_1296BCB: If CBool(var_94 And (InStr(var_DC, Ucase(CVar(var_BC)), ".MDB", 0) <= 0)) Then
  loc_1296BEF:   MsgBox("Please check database path!", &H40, "Validation...", var_CC, var_DC)
  loc_1296BFF:   Exit Sub
  loc_1296C00: End If
  loc_1296C0B: Set var_90 = Me.Txt
  loc_1296C11: Call 0.Method_cmdBackup_Click0 (CInt(0))
  loc_1296C19: var_A4 = CVar(var_94) 'Address
  loc_1296C29: MemVar_1F967E0 = CStr(Trim(var_A4))
  loc_1296C4C: var_174 = InStrRev(MemVar_1F967E0, "\", -1, 0)
  loc_1296C69: var_88 = CStr(Mid(MemVar_1F967E0, var_174, var_A4))
  loc_1296C90: var_A4 = Left(var_88, (Len(var_88) - 4))
  loc_1296C9D: var_B4 = (var_A4 + " ")
  loc_1296CC9: var_140 = (1 + CVar(CStr(Format(Date, "dd_MM_yyyy"))))
  loc_1296CD2: var_160 = (InStr("dd_MM_yyyy", Ucase(CVar(var_BC)), ".MDB", 0) + ".Mdb")
  loc_1296CD7: var_88 = CStr((InStr("dd_MM_yyyy", Ucase(CVar(var_BC)), ".MDB", 0) <= 0))
  loc_1296D04: var_174 = InStrRev(MemVar_1F967E4, "\", -1, 0)
  loc_1296D21: var_8C = CStr(Mid(MemVar_1F967E4, var_174, var_A4))
  loc_1296D2E: var_CC = Date
  loc_1296D48: var_A4 = Left(var_8C, (Len(var_8C) - 4))
  loc_1296D55: var_B4 = (var_A4 + " ")
  loc_1296D68: var_DC = "dd_MM_yyyy"
  loc_1296D81: var_140 = (1 + CVar(CStr(Format(var_CC, var_DC))))
  loc_1296D8A: var_160 = (InStr(var_DC, Ucase(CVar(var_BC)), ".MDB", 0) + ".Mdb")
  loc_1296D8F: var_8C = CStr((InStr(var_DC, Ucase(CVar(var_BC)), ".MDB", 0) <= 0))
  loc_1296DB6: var_90 = Me.Global.App
  loc_1296DD6: Call 0.Method_cmdBackup_Click8 (App.Path & "\Database BackUp", var_17A, 1, Mid(MemVar_1F967E4, var_174, var_A4), var_174)
  loc_1296DEB: If (var_17A = 0) Then
  loc_1296DFD:   var_90 = Me.Global.App
  loc_1296E1D:   Call 0.Method_arg_74 (App.Path & "\Database BackUp", var_94, 1, Mid(MemVar_1F967E4, var_174, var_A4))
  loc_1296E30: End If
  loc_1296E3F: var_90 = MemVar_1F9E69C.App
  loc_1296E5F: Call 0.Method_cmdBackup_Click8 (App.Path & "\Database BackUp\Sourec Database", var_17A, var_174)
  loc_1296E74: If (var_17A = 0) Then
  loc_1296E86:   var_90 = Me.Global.App
  loc_1296EA6:   Call 0.Method_arg_74 (App.Path & "\Database BackUp\Sourec Database", var_94)
  loc_1296EB9: End If
  loc_1296EC5: var_90 = MemVar_1F9E69C.App
  loc_1296EF1: Call 0.Method_arg_6C (MemVar_1F967E0, App.Path & "\Database BackUp\Sourec Database" & var_88, &HFF)
  loc_1296F11: var_90 = Me.Global.App
  loc_1296F31: Call 0.Method_cmdBackup_Click8 (App.Path & "\Database BackUp\Destination Database", var_17A)
  loc_1296F46: If (var_17A = 0) Then
  loc_1296F58:   var_90 = Me.Global.App
  loc_1296F78:   Call 0.Method_arg_74 (App.Path & "\Database BackUp\Destination Database", var_94)
  loc_1296F8B: End If
  loc_1296F97: var_90 = MemVar_1F9E69C.App
  loc_1296F9F: var_F0 = App.Path
  loc_1296FC3: Call 0.Method_arg_6C (MemVar_1F967E0, var_F0 & "\Database BackUp\Destination Database" & var_8C, &HFF)
  loc_1296FF5: MsgBox("BackUp process successfully completed.", &H40, "Backup...", var_CC, var_DC)
  loc_1297005: Exit Sub
  loc_1297006: ' Referenced from: 1296A80
  loc_129700E: Set var_90 = Err()
  loc_1297014: Call 0.Method_arg_2C (var_F0, MemVar_1F967E0)
  loc_1297035: MsgBox(CVar(var_F0), &H40, "Validation...", var_CC, var_DC)
  loc_1297048: Exit Sub
End Sub

Private Sub Form_Load() 'EB4C88
  'Data Table: 43BA88
  Dim var_AC As TextBox
  Dim var_A8 As CommandButton
  loc_EB4BF5: Set var_A8 = Me.TopCtrl1
  loc_EB4BFB: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_EB4C0E: Set var_A8 = Me.Txt
  loc_EB4C14: Call 0.Method_Form_Load0 (1, var_AC)
  loc_EB4C1C: var_AC.Visible = False
  loc_EB4C2D: Call Display_Lines(0)
  loc_EB4C3E: Me.cmdDestination.Visible = False
  loc_EB4C5E: Proc_6_23_DFC5B8(Me, 6100)
  loc_EB4C72: Me.CmdTables.Visible = False
  loc_EB4C7A: Call Ini_Grid()
  loc_EB4C82: MemVar_1F967E4 = MemVar_1F95108
  loc_EB4C86: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC4E8
  'Data Table: 43BA88
  Dim arg_21FF As Double
  loc_DFC4E4: Exit Sub
  loc_DFC4E5: arg_21FF = 
End Sub

Private Sub cmdDestination_Click() 'F139AC
  'Data Table: 43BA88
  Dim var_A8 As CommonDialog
  Dim var_F4 As TextBox
  Dim var_F0 As TextBox
  loc_F138DC: Me.CDLG.Filter = "*.mdb"
  loc_F13903: Me.CDLG.FileName = Me.CDLG._Action
  loc_F1392D: If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_F1393D:   Me.CDLG.FileName = " "
  loc_F13957:   Set var_F0 = Me.Txt
  loc_F1395D:   Call 0.Method_cmdDestination_Click0 (CInt(1), var_F4)
  loc_F13965:   var_F4.Text = CStr()
  loc_F13980: Else
  loc_F1398E:   Set var_A8 = Me.Txt
  loc_F13994:   Call 0.Method_cmdDestination_Click0 (CInt(1), var_F0)
  loc_F1399C:   var_F0.Text = vbNullString
  loc_F139A8: End If
  loc_F139A8: Exit Sub
  loc_F139A9: StAryRecMove
End Sub

Private Sub CmdTables_Click() '124E800
  'Data Table: 43BA88
  Dim var_9C As Variant
  Dim var_C4 As Variant
  Dim var_F8 As Variant
  Dim var_E8 As String
  Dim var_D4 As Variant
  Dim MemVar_1F967E0 As String
  Dim MemVar_1F967F8 As Integer
  Dim var_88 As Variant
  Dim var_170 As Single
  Dim var_174 As MSHFlexGrid
  Dim var_1A4 As MSHFlexGrid
  loc_124E2D0: Call Ini_Grid()
  loc_124E2E0: Set var_88 = Me.Txt
  loc_124E2E6: Call 0.Method_CmdTables_Click0 (CInt(0))
  loc_124E308: Set var_B0 = Me.Txt
  loc_124E30E: Call 0.Method_CmdTables_Click0 (CInt(1), var_B4)
  loc_124E316: var_C4 = CVar(var_B4) 'Address
  loc_124E31D: var_D4 = Ucase(var_C4)
  loc_124E339: If (Ucase(CVar(var_8C)) = var_D4) Then
  loc_124E359:   var_E8 = "Please check Source & destination path!" & vbCrLf
  loc_124E363:   MsgBox(CVar(var_E8 & "Can not be same path."), &H40, "Validation...", var_C4, var_D4)
  loc_124E376:   Exit Sub
  loc_124E377: End If
  loc_124E387: Set var_88 = Me.Txt
  loc_124E38D: Call 0.Method_CmdTables_Click0 (CInt(0), var_8C)
  loc_124E3AE: var_C4 = InStr(1, Ucase(CVar(var_8C)), ".MDB", 0)
  loc_124E3B8: var_D4 = (var_C4 <= 0)
  loc_124E3CC: Set var_B0 = Me.Txt
  loc_124E3D2: Call 0.Method_CmdTables_Click0 (CInt(1), var_B4, 1)
  loc_124E41D: If CBool(var_8C And (InStr(var_D4, Ucase(CVar(var_B4)), ".MDB", 0) <= 0)) Then
  loc_124E441:   MsgBox("Please check database path!", &H40, "Validation...", var_C4, var_D4)
  loc_124E451:   Exit Sub
  loc_124E452: End If
  loc_124E45D: Set var_88 = Me.Txt
  loc_124E463: Call 0.Method_CmdTables_Click0 (CInt(0))
  loc_124E47B: MemVar_1F967E0 = CStr(Trim(CVar(var_8C)))
  loc_124E49A: Call 0.Method_arg_24 (CVar("Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F967E0), MemVar_1F967E0)
  loc_124E4B3: Call 0.Method_arg_24 (CVar("Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F967E4))
  loc_124E4BD: MemVar_1F967F8 = &HFF
  loc_124E4CB: Set var_88 = Me.TGrid
  loc_124E4D1: Call 0.Method_CmdTables_Click0 (CInt(0), var_8C)
  loc_124E4D9: Set var_174 = var_8C
  loc_124E4F0: Call 0.Method_arg_1C (var_88, var_178, var_16A)
  loc_124E4F8: 1 = var_88.Count
  loc_124E504: For var_17C = var_8C To CInt(var_178): MemVar_1F967F8 = var_17C 'Integer
  loc_124E516:   var_F8 = CVar((var_16A - 1)) 'Integer
  loc_124E523:   Call 0.Method_arg_1C (var_88, "Please check database path!", var_8C)
  loc_124E52B:   Call 0.Method_arg_28 (var_E8)
  loc_124E533:   Call 0.Method_arg_28 (var_8C)
  loc_124E54A:   If (var_E8 = "TABLE") Then
  loc_124E554:     var_170 = (var_170 + CDbl(1))
  loc_124E55F:     var_F8 = CVar(CLng((var_170 + CDbl(1)))) 'Long
  loc_124E567:     var_174.Rows = "Please check database path!"
  loc_124E578:     var_174.Row = CVar(CLng(var_170))
  loc_124E588:     var_174.Col = CVar(CLng(0))
  loc_124E594:     var_174.CellFontBold = True
  loc_124E59D:     var_F8 = CVar(CLng(var_170)) 'Long
  loc_124E5AF:     var_E8 = CStr(var_170)
  loc_124E5BD:     LateIdCallSt
  loc_124E5E8:     var_F8 = CVar((var_16A - 1)) 'Integer
  loc_124E5F5:     Call 0.Method_arg_1C (var_88, var_F8, var_8C, var_E8, CVar(CLng(1)), CVar(CLng(var_170)))
  loc_124E5FD:     Call 0.Method_arg_28 (var_174, CVar(var_E8 & ". "), CVar(CLng(0)))
  loc_124E605:     Call 0.Method_arg_20 (var_F8)
  loc_124E60D:     var_9C = CVar(var_E8) 'String
  loc_124E614:     LateIdCallSt
  loc_124E626:   End If
  loc_124E629: Next var_17C 'Integer
  loc_124E630: Set var_174 = Nothing 
  loc_124E63C: var_E8 = CStr(var_170)
  loc_124E64D: Me.lblSource.Caption = "No. of Tables: " & var_E8
  loc_124E65F: var_170 = CDbl(0)
  loc_124E66D: Set var_88 = Me.TGrid
  loc_124E673: Call 0.Method_CmdTables_Click0 (CInt(1), var_8C)
  loc_124E67B: Set var_1A4 = var_8C
  loc_124E692: Call 0.Method_arg_1C (var_88, var_178, var_16A)
  loc_124E69A: 1 = var_88.Count
  loc_124E6A6: For var_1A8 =  To CInt(var_178): var_170 = var_1A8 'Integer
  loc_124E6B8:   var_F8 = CVar((var_16A - 1)) 'Integer
  loc_124E6C5:   Call 0.Method_arg_1C (var_88, var_F8)
  loc_124E6CD:   Call 0.Method_arg_28 (var_8C)
  loc_124E6D5:   Call 0.Method_arg_28 (var_E8)
  loc_124E6EC:   If (var_E8 = "TABLE") Then
  loc_124E6F6:     var_170 = (var_170 + CDbl(1))
  loc_124E701:     var_F8 = CVar(CLng((var_170 + CDbl(1)))) 'Long
  loc_124E709:     var_1A4.Rows = var_F8
  loc_124E71A:     var_1A4.Row = CVar(CLng(var_170))
  loc_124E72A:     var_1A4.Col = CVar(CLng(0))
  loc_124E736:     var_1A4.CellFontBold = True
  loc_124E73F:     var_F8 = CVar(CLng(var_170)) 'Long
  loc_124E751:     var_E8 = CStr(var_170)
  loc_124E75F:     LateIdCallSt
  loc_124E78A:     var_F8 = CVar((var_16A - 1)) 'Integer
  loc_124E797:     Call 0.Method_arg_1C (var_88, var_F8, var_8C, var_E8, CVar(CLng(1)), CVar(CLng(var_170)))
  loc_124E79F:     Call 0.Method_arg_28 (var_1A4, CVar(var_E8 & ". "), CVar(CLng(0)))
  loc_124E7A7:     Call 0.Method_arg_20 (var_F8)
  loc_124E7AF:     var_9C = CVar(var_E8) 'String
  loc_124E7B6:     LateIdCallSt
  loc_124E7C8:   End If
  loc_124E7CB: Next var_1A8 'Integer
  loc_124E7D2: Set var_1A4 = Nothing 
  loc_124E7EF: Me.lblDestination.Caption = "No. of Tables: " & CStr(var_170)
  loc_124E7FE: Exit Sub
End Sub

Private Sub cmdSourcePath_Click() 'F133A8
  'Data Table: 43BA88
  Dim var_A8 As CommonDialog
  Dim var_F4 As TextBox
  Dim var_F0 As TextBox
  loc_F132D8: Me.CDLG.Filter = "*.mdb"
  loc_F132FF: Me.CDLG.FileName = Me.CDLG._Action
  loc_F13329: If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_F13339:   Me.CDLG.FileName = " "
  loc_F13353:   Set var_F0 = Me.Txt
  loc_F13359:   Call 0.Method_cmdSourcePath_Click0 (CInt(0), var_F4)
  loc_F13361:   var_F4.Text = CStr()
  loc_F1337C: Else
  loc_F1338A:   Set var_A8 = Me.Txt
  loc_F13390:   Call 0.Method_cmdSourcePath_Click0 (CInt(0), var_F0)
  loc_F13398:   var_F0.Text = vbNullString
  loc_F133A4: End If
  loc_F133A4: Exit Sub
  loc_F133A5: StAryRecMove
End Sub

Public Sub Ini_Grid() '1044710
  'Data Table: 43BA88
  Dim var_88 As Variant
  Dim var_90 As Line
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As String
  Dim var_F8 As MSHFlexGrid
  loc_10444CB: Me.LnM.Y1 = Me.LnR.Y1
  loc_10444F0: Set var_90 = Me.LnM
  loc_10444F6: var_90.Y2 = Me.LnR.Y1
  loc_1044511: Me.PBar1.Visible = False
  loc_1044524: Set var_88 = Me.TGrid
  loc_104452A: Call 0.Method_Ini_Grid0 (CInt(0))
  loc_1044532: Set var_B4 = var_90
  loc_1044544: var_B4.Cols = 2
  loc_1044555: var_B4.Row = 0
  loc_1044565: var_B4.Col = CVar(CLng(0))
  loc_1044571: var_B4.CellFontBold = True
  loc_1044576: var_A0 = 0
  loc_1044582: var_C4 = CVar(CLng(0)) 'Long
  loc_1044587: var_E4 = "SNo"
  loc_1044590: LateIdCallSt
  loc_104459B: var_A0 = CVar(CLng(0)) 'Long
  loc_10445A0: var_C4 = &H1F4
  loc_10445AC: LateIdCallSt
  loc_10445BF: var_B4.Col = CVar(CLng(1))
  loc_10445CB: var_B4.CellFontBold = True
  loc_10445D0: var_A0 = 0
  loc_10445DC: var_C4 = CVar(CLng(1)) 'Long
  loc_10445EA: LateIdCallSt
  loc_1044606: LateIdCallSt
  loc_104461F: Set var_88 = Me.TGrid
  loc_1044625: Call 0.Method_Ini_Grid0 (CInt(1), var_90, Nothing, &H708, CVar(CLng(1)), Nothing, "Source Data")
  loc_104462D: Set var_F8 = var_90
  loc_104463F: var_F8.Cols = 2
  loc_1044650: var_F8.Row = 0
  loc_1044660: var_F8.Col = CVar(CLng(0))
  loc_104466C: var_F8.CellFontBold = True
  loc_1044671: var_A0 = 0
  loc_104467D: var_C4 = CVar(CLng(0)) 'Long
  loc_1044682: var_E4 = "SNo"
  loc_104468B: LateIdCallSt
  loc_1044696: var_A0 = CVar(CLng(0)) 'Long
  loc_104469B: var_C4 = &H1F4
  loc_10446A7: LateIdCallSt
  loc_10446BA: var_F8.Col = CVar(CLng(1))
  loc_10446C6: var_F8.CellFontBold = True
  loc_10446CB: var_A0 = 0
  loc_10446D7: var_C4 = CVar(CLng(1)) 'Long
  loc_10446DC: var_E4 = "Destination Data"
  loc_10446E5: LateIdCallSt
  loc_10446F0: var_A0 = CVar(CLng(1)) 'Long
  loc_10446F5: var_C4 = &H708
  loc_1044701: LateIdCallSt
  loc_104470B: Set var_F8 = Nothing 
  loc_104470F: Exit Sub
End Sub

Public Sub Display_Lines(Flag) 'E80E74
  'Data Table: 43BA88
  loc_E80E15: Me.LnR.Visible = Flag
  loc_E80E2A: Me.LnM.Visible = Flag
  loc_E80E3F: Me.LnL.Visible = Flag
  loc_E80E54: Me.Image1.Visible = Flag
  loc_E80E69: Me.Image2.Visible = Flag
  loc_E80E71: Exit Sub
End Sub
