VERSION 5.00
Begin VB.Form rHallRepView
  Caption = "HallRepView"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin PictureBox PictPreview
    BackColor = &HC0FFFF&
    Left = 9825
    Top = 0
    Width = 11010
    Height = 3090
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin CommandButton BtnPrintz
      Caption = "&DosPrint"
      Index = 1
      Left = 9135
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 34
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BTNRefreshz
      Caption = "Para&meters"
      Left = 7065
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 33
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Parameters"
      Style = 1
    End
    Begin CommandButton BTNEXITz
      Caption = "E&xit"
      Index = 0
      Left = 9810
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 32
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Exit"
      Style = 1
    End
    Begin CommandButton BtnPrintz
      Caption = "P&review"
      Index = 2
      Left = 7755
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 31
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnPrintz
      Caption = "&WinPrint"
      Index = 3
      Left = 8445
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 30
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin TextBox Text2
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 660
      Width = 10935
      Height = 270
      TabIndex = 28
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text1
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 390
      Width = 10935
      Height = 270
      TabIndex = 27
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text3
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 930
      Width = 10935
      Height = 270
      TabIndex = 26
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text4
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 1200
      Width = 10935
      Height = 270
      TabIndex = 25
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid FGrid1
      Left = -15
      Top = 1455
      Width = 14415
      Height = 7305
      Visible = 0   'False
      TabIndex = 2
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 2100
      Top = 0
      Width = 705
      Height = 465
      TabIndex = 35
    End
    Begin BtnEnh LblRefresh
      Left = 0
      Top = 0
      Width = 1395
      Height = 465
      TabIndex = 36
    End
    Begin BtnEnh BtnPrint
      Index = 3
      Left = 1395
      Top = 0
      Width = 700
      Height = 465
      TabIndex = 37
    End
    Begin BtnEnh BTNEXIT
      Left = 2805
      Top = 0
      Width = 705
      Height = 465
      TabIndex = 38
    End
    Begin BtnEnh LblRep
      Left = 3495
      Top = 0
      Width = 4470
      Height = 495
      TabIndex = 39
    End
  End
  Begin PictureBox PictParameter
    BackColor = &HC0C0FF&
    Left = 0
    Top = 0
    Width = 9825
    Height = 3090
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin MainCtrl TopCtrl1
      Left = 105
      Top = 10305
      Width = 1515
      Height = 210
      Visible = 0   'False
      TabIndex = 29
    End
    Begin PictureBox Pic
      BackColor = &H808080&
      Left = 0
      Top = 10575
      Width = 20370
      Height = 435
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 17
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
      BorderStyle = 0 'None
      TabStop = 0   'False
      Begin Label LblTitle
        Caption = "LblTitle"
        BackColor = &H0&
        ForeColor = &HFFFFFF&
        Left = 7230
        Top = 0
        Width = 4470
        Height = 315
        TabIndex = 19
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
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
      Begin Label LblProcess
        ForeColor = &HC0&
        Left = 0
        Top = 0
        Width = 3375
        Height = 360
        TabIndex = 18
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin Frame FrmList
      Left = 1155
      Top = 5025
      Width = 2520
      Height = 1875
      Visible = 0   'False
      TabIndex = 15
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 0
        Top = 0
        Width = 2325
        Height = 1830
        TabStop = 0   'False
        TabIndex = 16
      End
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HE0E0E0&
      ForeColor = &H80000012&
      Left = 510
      Top = 0
      Width = 690
      Height = 240
      Visible = 0   'False
      TabIndex = 14
      BorderStyle = 0 'None
      BeginProperty Font
        Name = "MS Sans Serif"
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
      BackColor = &HE0E0E0&
      Left = 0
      Top = 1440
      Width = 2055
      Height = 240
      Visible = 0   'False
      TabIndex = 13
      BorderStyle = 0 'None
      HideSelection = 0   'False
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 4
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 5175
      Top = 3870
      Width = 870
      Height = 195
      Visible = 0   'False
      TabIndex = 12
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 3
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 3855
      Width = 870
      Height = 195
      Visible = 0   'False
      TabIndex = 11
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 2
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 5145
      Top = 1800
      Width = 870
      Height = 195
      Visible = 0   'False
      TabIndex = 10
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 1
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 375
      Top = 1830
      Width = 915
      Height = 195
      Visible = 0   'False
      TabIndex = 9
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Frame Frame1
      Caption = "Site Selection"
      Left = 7065
      Top = 270
      Width = 4065
      Height = 3540
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
      Begin CommandButton Command1
        Caption = "&OK"
        Left = 1485
        Top = 3060
        Width = 1485
        Height = 390
        TabIndex = 6
      End
      Begin TextBox txtSite
        Index = 0
        Left = 1095
        Top = 285
        Width = 2820
        Height = 360
        TabIndex = 5
      End
      Begin DataGrid DGSite
        Left = 1095
        Top = 660
        Width = 2835
        Height = 2355
        Visible = 0   'False
        TabStop = 0   'False
        TabIndex = 7
      End
      Begin Label Label1
        Caption = "Site Name"
        Left = 120
        Top = 315
        Width = 900
        Height = 270
        TabIndex = 8
      End
    End
    Begin CommandButton BtnParam
      Caption = "&For Site"
      BackColor = &HC0C0C0&
      Left = 9810
      Top = 15
      Width = 1305
      Height = 375
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
      DownPicture = "rHallRepView.frx":0
      ToolTipText = "Works Only at Head Office"
    End
    Begin MSHFlexGrid GridSel
      Index = 1
      Left = 315
      Top = 1755
      Width = 4695
      Height = 1650
      Visible = 0   'False
      TabIndex = 20
    End
    Begin MSHFlexGrid GridSel
      Index = 2
      Left = 5085
      Top = 1755
      Width = 4710
      Height = 1650
      Visible = 0   'False
      TabIndex = 21
    End
    Begin MSHFlexGrid GridSel
      Index = 4
      Left = 5115
      Top = 3780
      Width = 4710
      Height = 1650
      Visible = 0   'False
      TabIndex = 22
    End
    Begin MSHFlexGrid GridSel
      Index = 3
      Left = 300
      Top = 3795
      Width = 4710
      Height = 1650
      Visible = 0   'False
      TabIndex = 23
    End
    Begin MSHFlexGrid FGrid
      Left = 275
      Top = 75
      Width = 4455
      Height = 1560
      TabIndex = 24
    End
  End
End

Attribute VB_Name = "rHallRepView"

Private global_148 As Integer
Private global_150 As Integer
Private global_152 As Integer
Private global_202 As Integer
Private global_188 As Integer
Private global_190 As Integer
Private global_144 As Long
Private global_126 As Integer
Private global_124 As Integer
Private global_128 As Variant

Private Sub LblRefresh_UnknownEvent_9 'F1BFA4
  'Data Table: 577EF0
  Dim var_A8 As Variant
  loc_F1BEB2: Me.FGrid1.Visible = True
  loc_F1BEC7: Set var_A8 = Me.BtnPrint
  loc_F1BECD: Call 0.Method_LblRefresh_UnknownEvent_90 (3, var_AC)
  loc_F1BED5: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F1BEEE: Set var_A8 = Me.BtnPrint
  loc_F1BEF4: Call 0.Method_LblRefresh_UnknownEvent_90 (2, var_AC)
  loc_F1BEFC: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F1BF0C: Set var_A8 = Me.LblRefresh
  loc_F1BF12: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_F1BF27: If (CLng(CInt()) = 1) Then
  loc_F1BF34:   Set var_A8 = Me.LblRefresh
  loc_F1BF3A:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Paramater")
  loc_F1BF4F:   Me.LblProcess.Caption = "Please Wait..."
  loc_F1BF61:   Me.LblProcess.Refresh
  loc_F1BF69:   Call Proc_249_88_1566880()
  loc_F1BF71: Else
  loc_F1BF7B:   Set var_A8 = Me.LblRefresh
  loc_F1BF81:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Refresh")
  loc_F1BF96:   Me.LblProcess.Caption = " "
  loc_F1BF9E:   Call Proc_249_98_E229B4()
  loc_F1BFA3: End If
  loc_F1BFA3: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F24690
  'Data Table: 577EF0
  loc_F24593: If (Proc_6_113_E6DB0C(KeyCode) = &HFF) Then
  loc_F245BE:   Set var_90 = Me.GridSel
  loc_F245C4:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F245EC:   Me.TxtSearch.Visible = False
  loc_F245F4: End If
  loc_F245FE: If (CLng(KeyCode) = &H2E) Then
  loc_F2460E:   Me.TxtSearch.Text = vbNullString
  loc_F24616: End If
  loc_F2462B: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F24656:   Set var_90 = Me.GridSel
  loc_F2465C:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F24684:   Me.TxtSearch.Visible = False
  loc_F2468C: End If
  loc_F2468C: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11CD0F8
  'Data Table: 577EF0
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CCCC1: var_90 = Me.TxtSearch.Tag
  loc_11CCCD6: If (var_90 = CStr(1)) Then
  loc_11CCD2C:   Set var_A0 = Me.GridSel
  loc_11CCD32:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CCDA8:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_96, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CCDD3: Else
  loc_11CCDE2:   If (var_90 = CStr(2)) Then
  loc_11CCE0D:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CCE38:     Set var_A0 = Me.GridSel
  loc_11CCE3E:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CCEB4:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_100, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CCEDF:   Else
  loc_11CCEEE:     If (var_90 = CStr(3)) Then
  loc_11CCF19:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CCF44:       Set var_A0 = Me.GridSel
  loc_11CCF4A:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CCF52:       var_B4 = var_A4.Col
  loc_11CCFC0:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_104, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CCFEB:     Else
  loc_11CCFFA:       If (var_90 = CStr(4)) Then
  loc_11CD025:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CD050:         Set var_A0 = Me.GridSel
  loc_11CD056:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11CD0CC:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_108, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CD0F4:       End If
  loc_11CD0F4:     End If
  loc_11CD0F4:   End If
  loc_11CD0F4: End If
  loc_11CD0F4: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E90480
  'Data Table: 577EF0
  loc_E90419: Me.TxtSearch.Text = vbNullString
  loc_E90449: Set var_90 = Me.GridSel
  loc_E9044F: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E90477: Me.TxtSearch.Visible = False
  loc_E9047F: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E91A4C
  'Data Table: 577EF0
  loc_E919E5: Me.TxtSearch.Text = vbNullString
  loc_E91A15: Set var_90 = Me.GridSel
  loc_E91A1B: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E91A43: Me.TxtSearch.Visible = False
  loc_E91A4B: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E188A8
  'Data Table: 577EF0
  loc_E1889D: Me.Global.Unload Me
  loc_E188A5: Exit Sub
  loc_E188A6: CExtInstUnk
End Sub

Private Sub BtnParam_Click() 'E9ECE8
  'Data Table: 577EF0
  Dim Me As Recordset15
  Dim var_88 As Frame
  loc_E9EC6A: Set global_196 = New 
  loc_E9EC7C: Me.Recordset15.CursorLocation = 3
  loc_E9ECA4: Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F95044), 0
  loc_E9ECB2: CVarUnk
  loc_E9ECB7: VerifyVarObj
  loc_E9ECBD: Set var_88 = Me.DGSite
  loc_E9ECC3: LateIdStAd
  loc_E9ECDD: Me.Frame1.Visible = True
  loc_E9ECE5: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB4928
  'Data Table: 577EF0
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB48B4: Set var_9C = Me.ListView.SelectedItem
  loc_EB48CB: Set var_A4 = Me.TxtGrid
  loc_EB48D1: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB48D9: var_A8.Text = var_9C.Text
  loc_EB48FB: Me.FrmList.Visible = False
  loc_EB490C: Set var_88 = Me.TxtGrid
  loc_EB4912: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB491A: var_9C.SetFocus
  loc_EB4926: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E23B8
  'Data Table: 577EF0
  Dim var_98 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_11E1F6B: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E1F86: var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E1FC4: Set var_108 = Me.TxtGrid
  loc_11E1FCA: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11E1FD2: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_11E2003: var_114 = CLng(Me.FGrid.Row)
  loc_11E2013: If (var_114 = CLng(2)) Then
  loc_11E201C:   var_118 = global_52
  loc_11E2027:   If (var_118 = "BookingDetail") Then
  loc_11E2037:     ReDim var_11C(0 To 2)
  loc_11E204E:     var_11C(0) = "Active"
  loc_11E205D:     var_11C(1) = "InActive"
  loc_11E206C:     var_11C(2) = "ALL"
  loc_11E20C3:     Set global_192 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_11E20D7:   Else
  loc_11E20DF:     If (var_118 = "SalesRegister") Then
  loc_11E20EF:       ReDim var_11C(0 To 1)
  loc_11E2106:       var_11C(0) = "Yes"
  loc_11E2115:       var_11C(1) = "No"
  loc_11E216C:       Set global_192 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2)
  loc_11E2180:     Else
  loc_11E2188:       If (var_118 = "DailyFuncSheet") Then
  loc_11E2198:         ReDim var_11C(0 To 2)
  loc_11E21AF:         var_11C(0) = "Function"
  loc_11E21BE:         var_11C(1) = "Pending"
  loc_11E21CD:         var_11C(2) = "Advance"
  loc_11E2224:         Set global_192 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 3, Array(var_11C))
  loc_11E2235:       End If
  loc_11E2235:     End If
  loc_11E2235:   End If
  loc_11E2238: Else
  loc_11E223F:   If (var_114 = CLng(3)) Then
  loc_11E2253:     If (global_52 = "DailyFuncSheet") Then
  loc_11E2263:       ReDim var_11C(0 To 1)
  loc_11E227A:       var_11C(0) = "Yes"
  loc_11E2289:       var_11C(1) = "No"
  loc_11E22E0:       Set global_192 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2, Array(var_11C))
  loc_11E22F1:     End If
  loc_11E22F4:   Else
  loc_11E22FB:     If (var_114 = CLng(4)) Then
  loc_11E230F:       If (global_52 = "DailyFuncSheet") Then
  loc_11E231F:         ReDim var_11C(0 To 1)
  loc_11E2336:         var_11C(0) = "Yes"
  loc_11E2345:         var_11C(1) = "No"
  loc_11E239C:         Set global_192 = Proc_6_66_F0048C(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2, Array(var_11C))
  loc_11E23AD:       End If
  loc_11E23AD:     End If
  loc_11E23AD:   End If
  loc_11E23AD: End If
  loc_11E23B2: Set var_88 = Nothing
  loc_11E23B5: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C8AF0
  'Data Table: 577EF0
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_12C84B2: If (CLng(Shift) = &H1B) Then
  loc_12C84C1:   Set var_8C = Me.TxtGrid
  loc_12C84C7:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C84E0:   Set var_98 = Me.TxtGrid
  loc_12C84E6:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C84EE:   var_9C.Text = var_90.Tag
  loc_12C850A:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C8513:   Set var_8C = Me.FGrid
  loc_12C852F:   Set var_8C = Me.TxtGrid
  loc_12C8535:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_12C853D:   var_90.Visible = FGrid.DispID_8001
  loc_12C8549:   Call Proc_249_91_E4BC0C(arg_14)
  loc_12C854E:   Exit Sub
  loc_12C854F: End If
  loc_12C8562: var_B0 = CLng(Me.FGrid.Row)
  loc_12C8572: If (var_B0 = CLng(2)) Then
  loc_12C857B:   var_B4 = global_52
  loc_12C8586:   If Not (var_B4 = "BookingDetail") Then
  loc_12C8591:     If (var_B4 = "DailyFuncSheet") Then
  loc_12C8594:     End If
  loc_12C85B5:     Set var_8C = Me.TxtGrid
  loc_12C85BB:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C85C3:     var_B8 = var_90.Left
  loc_12C85D4:     Set var_98 = Me.TxtGrid
  loc_12C85DA:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C85E2:     var_BC = var_9C.Top
  loc_12C85F3:     Set var_C0 = Me.TxtGrid
  loc_12C85F9:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C8601:     var_C8 = var_C4.Height
  loc_12C8612:     Set var_CC = Me.TxtGrid
  loc_12C8618:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C8620:     var_D4 = var_D0.Width
  loc_12C866D:     Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C8694:   Else
  loc_12C869C:     If (var_B4 = "SalesRegister") Then
  loc_12C86C0:       Set var_8C = Me.TxtGrid
  loc_12C86C6:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8, CInt(var_B8))
  loc_12C86CE:       CInt(((var_BC + var_C8) + CDbl(&H19))) = var_90.Left
  loc_12C86DF:       Set var_98 = Me.TxtGrid
  loc_12C86E5:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_BC)
  loc_12C86ED:       CInt(var_D4) = var_9C.Top
  loc_12C86FE:       Set var_C0 = Me.TxtGrid
  loc_12C8704:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4, var_C8)
  loc_12C870C:       0 = var_C4.Height
  loc_12C871D:       Set var_CC = Me.TxtGrid
  loc_12C8723:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C872B:       var_D4 = var_D0.Width
  loc_12C8778:       Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C879C:     End If
  loc_12C879C:   End If
  loc_12C87A6:   If (CLng(Shift) = &HD) Then
  loc_12C87B6:     Call Proc_249_89_1364EC0(0, 0, var_E6, CInt(var_B8))
  loc_12C87C1:     If (var_E6 = &HFF) Then
  loc_12C87C4:       Call Proc_249_93_F035FC(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12C87C9:     End If
  loc_12C87C9:   End If
  loc_12C87CC: Else
  loc_12C87D3:   If (var_B0 = CLng(3)) Then
  loc_12C87E7:     If (global_52 = "DailyFuncSheet") Then
  loc_12C880B:       Set var_8C = Me.TxtGrid
  loc_12C8811:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_12C8819:       0 = var_90.Left
  loc_12C882A:       Set var_98 = Me.TxtGrid
  loc_12C8830:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C8838:       var_BC = var_9C.Top
  loc_12C8849:       Set var_C0 = Me.TxtGrid
  loc_12C884F:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C8857:       var_C8 = var_C4.Height
  loc_12C8868:       Set var_CC = Me.TxtGrid
  loc_12C886E:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C8876:       var_D4 = var_D0.Width
  loc_12C88C3:       Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C88E7:     End If
  loc_12C88F1:     If (CLng(Shift) = &HD) Then
  loc_12C8901:       Call Proc_249_89_1364EC0(0, 0, var_E6, CInt(var_B8))
  loc_12C890C:       If (var_E6 = &HFF) Then
  loc_12C890F:         Call Proc_249_93_F035FC(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12C8914:       End If
  loc_12C8914:     End If
  loc_12C8917:   Else
  loc_12C891E:     If (var_B0 = CLng(4)) Then
  loc_12C8932:       If (global_52 = "DailyFuncSheet") Then
  loc_12C8956:         Set var_8C = Me.TxtGrid
  loc_12C895C:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_12C8964:         0 = var_90.Left
  loc_12C8975:         Set var_98 = Me.TxtGrid
  loc_12C897B:         Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C8983:         var_BC = var_9C.Top
  loc_12C8994:         Set var_C0 = Me.TxtGrid
  loc_12C899A:         Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C89A2:         var_C8 = var_C4.Height
  loc_12C89B3:         Set var_CC = Me.TxtGrid
  loc_12C89B9:         Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C89C1:         var_D4 = var_D0.Width
  loc_12C8A0E:         Proc_6_114_11A421C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C8A32:       End If
  loc_12C8A3C:       If (CLng(Shift) = &HD) Then
  loc_12C8A4C:         Call Proc_249_89_1364EC0(0, 0, var_E6, CInt(var_B8))
  loc_12C8A57:         If (var_E6 = &HFF) Then
  loc_12C8A5A:           Call Proc_249_93_F035FC(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12C8A5F:         End If
  loc_12C8A5F:       End If
  loc_12C8A62:     Else
  loc_12C8A69:       If Not (var_B0 = CLng(0)) Then
  loc_12C8A73:         If (var_B0 = CLng(1)) Then
  loc_12C8A76:         End If
  loc_12C8AB6:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_150 = &HFF))) Then
  loc_12C8AC6:           Call Proc_249_89_1364EC0(0, 0, var_E6)
  loc_12C8AD1:           If (var_E6 = &HFF) Then
  loc_12C8AD4:             Call Proc_249_93_F035FC(0)
  loc_12C8AD9:           End If
  loc_12C8AD9:         End If
  loc_12C8ADC:       Else
  loc_12C8AE3:         If (var_B0 = CLng(5)) Then
  loc_12C8AEC:           var_104 = global_52
  loc_12C8AEF:         End If
  loc_12C8AEF:       End If
  loc_12C8AEF:     End If
  loc_12C8AEF:   End If
  loc_12C8AEF: End If
  loc_12C8AEF: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EAE950
  'Data Table: 577EF0
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_EAE8CB: Proc_6_58_E06050(arg_10)
  loc_EAE8E3: var_9C = CLng(Me.FGrid.Row)
  loc_EAE8F3: If (var_9C = CLng(5)) Then
  loc_EAE8F6:   GoTo loc_EAE94E
  loc_EAE8F9: End If
  loc_EAE900: If (var_9C = CLng(2)) Then
  loc_EAE914:   If (global_52 = "WaiterWiseSale") Then
  loc_EAE921:     Set var_88 = Me.TxtGrid
  loc_EAE927:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EAE942:     Proc_6_42_129B55C(var_A4, arg_10, 2)
  loc_EAE94E:     ' Referenced from: EAE8F6
  loc_EAE94E:   End If
  loc_EAE94E: End If
  loc_EAE94E: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10CA434
  'Data Table: 577EF0
  Dim var_9C As Long
  loc_10CA14F: var_9C = CLng(Me.FGrid.Row)
  loc_10CA15F: If Not (var_9C = CLng(2)) Then
  loc_10CA169:   If Not (var_9C = CLng(3)) Then
  loc_10CA173:     If (var_9C = CLng(4)) Then
  loc_10CA176:     End If
  loc_10CA176:   End If
  loc_10CA17C:   var_A0 = global_52
  loc_10CA187:   If Not (var_A0 = "BookingDetail") Then
  loc_10CA192:     If (var_A0 = "DailyFuncSheet") Then
  loc_10CA195:     End If
  loc_10CA1C3:     Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0)
  loc_10CA1F5:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10CA206:       Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10CA20B:     End If
  loc_10CA20E:   Else
  loc_10CA216:     If (var_A0 = "SalesRegister") Then
  loc_10CA247:       Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0, Shift, global_192)
  loc_10CA279:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10CA28A:         Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10CA28F:       End If
  loc_10CA292:     Else
  loc_10CA29A:       If (var_A0 = "PartyOutStanding") Then
  loc_10CA2CB:         Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0, Shift, global_192)
  loc_10CA2FD:         If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10CA30E:           Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10CA313:         End If
  loc_10CA316:       Else
  loc_10CA31E:         If (var_A0 = "PartyWiseOutStanding") Then
  loc_10CA34F:           Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0, Shift, global_192, 0)
  loc_10CA381:           If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10CA392:             Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10CA397:           End If
  loc_10CA39A:         Else
  loc_10CA3A2:           If Not (var_A0 = "CashierCollection") Then
  loc_10CA3AD:             If Not (var_A0 = "CashierCollectionMIS") Then
  loc_10CA3B8:               If (var_A0 = "SattleRepHall") Then
  loc_10CA3BB:               End If
  loc_10CA3BB:             End If
  loc_10CA3E9:             Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, 0, Shift, global_192, 0)
  loc_10CA41B:             If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10CA42C:               Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10CA431:             End If
  loc_10CA431:           End If
  loc_10CA431:         End If
  loc_10CA431:       End If
  loc_10CA431:     End If
  loc_10CA431:   End If
  loc_10CA431: End If
  loc_10CA431: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22DA8
  'Data Table: 577EF0
  Dim arg_10 As Integer
  loc_E22D84: On Error Goto loc_E22D9F
  loc_E22D92: Call Proc_249_89_1364EC0(Cancel, &HFF)
  loc_E22D9B: arg_10 = Not(var_88)
  loc_E22D9E: Exit Sub
  loc_E22D9F: ' Referenced from: E22D84
  loc_E22D9F: Proc_6_60_E63754(arg_10)
  loc_E22DA4: Exit Sub
End Sub

Private Sub Form_Load() '12FC6D0
  'Data Table: 577EF0
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_12FBFC4: On Error Goto loc_12FC6C9
  loc_12FBFD5: Me.PictParameter.BackColor = CLng(MemVar_1F951B4)
  loc_12FBFEB: Me.PictPreview.BackColor = CLng(MemVar_1F951B4)
  loc_12FC006: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12FC021: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12FC030: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12FC047: Set var_88 = Me.GridSel
  loc_12FC04D: Call 0.Method_Form_Load0 (1, var_AC)
  loc_12FC055: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12FC073: Set var_88 = Me.GridSel
  loc_12FC079: Call 0.Method_Form_Load0 (2, var_AC)
  loc_12FC081: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12FC09F: Set var_88 = Me.GridSel
  loc_12FC0A5: Call 0.Method_Form_Load0 (3, var_AC)
  loc_12FC0AD: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12FC0CB: Set var_88 = Me.GridSel
  loc_12FC0D1: Call 0.Method_Form_Load0 (4, var_AC)
  loc_12FC0D9: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12FC0F3: Me.Text1.BackColor = CLng(MemVar_1F951B4)
  loc_12FC109: Me.Text2.BackColor = CLng(MemVar_1F951B4)
  loc_12FC11F: Me.Text3.BackColor = CLng(MemVar_1F951B4)
  loc_12FC12F: Set var_88 = Me.Text4
  loc_12FC135: var_88.BackColor = CLng(MemVar_1F951B4)
  loc_12FC146: Call 0.Method_arg_160 (var_88)
  loc_12FC154: Call 0.Method_arg_164 (var_88)
  loc_12FC15C: var_98 = "Add"
  loc_12FC166: Set var_88 = Me.Mas
  loc_12FC17C: Set var_88 = Me.ImgLogo
  loc_12FC182: MDIForm1.ImgLogo.Left = CDbl(0)
  loc_12FC198: Me.Text2.Left = CDbl(0)
  loc_12FC1AE: Me.Text3.Left = CDbl(0)
  loc_12FC1C4: Me.Text4.Left = CDbl(0)
  loc_12FC1CF: var_98 = CVar(CDbl(0)) 'Single
  loc_12FC1DE: Me.FGrid1.Left = var_98
  loc_12FC1EA: Set var_AC = Me.LblRefresh
  loc_12FC1F0: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(Mas.DispID_68030005)
  loc_12FC1FD: Set var_88 = Me.LblRefresh
  loc_12FC203: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_98)
  loc_12FC21D: Me.Text1.Top = (CDbl() + CDbl(var_CC))
  loc_12FC268: Me.Text2.Top = (Me.Text1.Top + Me.Text1.Height)
  loc_12FC2AC: Me.Text3.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_12FC2F0: Me.Text4.Top = (Me.Text3.Top + Me.Text3.Height)
  loc_12FC305: Set var_AC = Me.Text4
  loc_12FC31D: var_D4 = Me.Text4.Top
  loc_12FC329: var_98 = CVar((var_D4 + var_AC.Height)) 'Single
  loc_12FC338: Me.FGrid1.Top = var_98
  loc_12FC34C: Call 0.Method_Me0 (var_D4)
  loc_12FC363: Me.Text1.Width = (var_D4 - CDbl(&H32))
  loc_12FC371: Call 0.Method_Me0 (var_D4)
  loc_12FC388: Me.Text2.Width = (var_D4 - CDbl(&H32))
  loc_12FC396: Call 0.Method_Me0 (var_D4)
  loc_12FC3AD: Me.Text3.Width = (var_D4 - CDbl(&H32))
  loc_12FC3BB: Call 0.Method_Me0 (var_D4)
  loc_12FC3D2: Me.Text4.Width = (var_D4 - CDbl(&H32))
  loc_12FC3E0: Call 0.Method_Me0 (var_D4)
  loc_12FC3EC: var_98 = CVar((var_D4 - CDbl(&H32))) 'Single
  loc_12FC3FB: Me.FGrid1.Width = var_98
  loc_12FC409: Call 0.Method_Me8 (var_D4)
  loc_12FC420: Me.FGrid1.Height = CVar(var_D4)
  loc_12FC431: Call 0.Method_arg_1C0 (var_DC)
  loc_12FC43C: global_208 = var_DC
  loc_12FC449: var_E0 = global_52
  loc_12FC454: If (var_E0 = "SalesRegister") Then
  loc_12FC45D:   Call 0.Method_arg_54 ("Sales Register")
  loc_12FC465: Else
  loc_12FC46D:   If (var_E0 = "PartyOutStanding") Then
  loc_12FC476:     Call 0.Method_arg_54 ("Party OutStanding")
  loc_12FC47E:   Else
  loc_12FC486:     If (var_E0 = "PartyWiseOutStanding") Then
  loc_12FC48F:       Call 0.Method_arg_54 ("Party Wise OutStanding")
  loc_12FC497:     Else
  loc_12FC49F:       If (var_E0 = "CashierCollection") Then
  loc_12FC4A8:         Call 0.Method_arg_54 ("Cashier Report")
  loc_12FC4B0:       Else
  loc_12FC4B8:         If (var_E0 = "CashierCollectionMIS") Then
  loc_12FC4C1:           Call 0.Method_arg_54 ("Cashier Collection Summary (MIS)")
  loc_12FC4C9:         Else
  loc_12FC4D1:           If (var_E0 = "BookingDetail") Then
  loc_12FC4DA:             Call 0.Method_arg_54 ("Booking Inquiry Detail")
  loc_12FC4E2:           Else
  loc_12FC4EA:             If (var_E0 = "SettleRepHall") Then
  loc_12FC4F3:               Call 0.Method_arg_54 ("Settlement Report")
  loc_12FC4FB:             Else
  loc_12FC503:               If (var_E0 = "SettleRepHall") Then
  loc_12FC50C:                 Call 0.Method_arg_54 ("Settlement Report")
  loc_12FC514:               Else
  loc_12FC51C:                 If (var_E0 = "TaxReportHall") Then
  loc_12FC525:                   Call 0.Method_arg_54 ("Tax Report")
  loc_12FC52D:                 Else
  loc_12FC535:                   If (var_E0 = "TaxwiseDetailReportHall") Then
  loc_12FC53E:                     Call 0.Method_arg_54 ("Taxwise Detail")
  loc_12FC546:                   Else
  loc_12FC54E:                     If (var_E0 = "TaxSummaryHall") Then
  loc_12FC557:                       Call 0.Method_arg_54 ("Tax Summary")
  loc_12FC55F:                     Else
  loc_12FC567:                       If (var_E0 = "DailyFuncSheet") Then
  loc_12FC570:                         Call 0.Method_arg_54 ("Daily Function Sheet")
  loc_12FC578:                       Else
  loc_12FC580:                         If (var_E0 = "CoverAnalysis") Then
  loc_12FC589:                           Call 0.Method_arg_54 ("Cover Analysis Report")
  loc_12FC591:                         Else
  loc_12FC599:                           If (var_E0 = "ItemWiseSaleHall") Then
  loc_12FC5A2:                             Call 0.Method_arg_54 ("Item Wise Sale Report")
  loc_12FC5AA:                           Else
  loc_12FC5B2:                             If (var_E0 = "CompanyWiseSaleHall") Then
  loc_12FC5BB:                               Call 0.Method_arg_54 ("Company Wise Sale Report")
  loc_12FC5C3:                             Else
  loc_12FC5CB:                               If (var_E0 = "FunctionWiseItemDetail") Then
  loc_12FC5D4:                                 Call 0.Method_arg_54 ("Function Wise Item Detail")
  loc_12FC5D9:                               End If
  loc_12FC5D9:                             End If
  loc_12FC5D9:                           End If
  loc_12FC5D9:                         End If
  loc_12FC5D9:                       End If
  loc_12FC5D9:                     End If
  loc_12FC5D9:                   End If
  loc_12FC5D9:                 End If
  loc_12FC5D9:               End If
  loc_12FC5D9:             End If
  loc_12FC5D9:           End If
  loc_12FC5D9:         End If
  loc_12FC5D9:       End If
  loc_12FC5D9:     End If
  loc_12FC5D9:   End If
  loc_12FC5D9: End If
  loc_12FC5DF: Call rHallRepView.global_88Put(MemVar_1F95078)
  loc_12FC5EA: Call rHallRepView.global_92Put(MemVar_1F953D8)
  loc_12FC5F5: Call 0.Method_arg_50 (var_DC)
  loc_12FC600: Call 0.Method_arg_54 (var_DC)
  loc_12FC616: Set var_88 = Me.txtSite
  loc_12FC61C: Call 0.Method_Form_Load0 (0, var_AC)
  loc_12FC624: var_AC.Tag = MemVar_1F95078
  loc_12FC63E: Set var_88 = Me.txtSite
  loc_12FC644: Call 0.Method_Form_Load0 (0, var_AC)
  loc_12FC64C: var_AC.Text = MemVar_1F953D8
  loc_12FC65E: Call 0.Method_arg_50 (var_DC)
  loc_12FC672: Me.LblTitle.Caption = var_DC
  loc_12FC683: Call 0.Method_arg_50 (var_DC)
  loc_12FC693: Set var_88 = Me.LblRep
  loc_12FC699: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_FFFFFDFA(CVar(var_DC))
  loc_12FC6AC: If (MemVar_1F95070 = "HO") Then
  loc_12FC6BB:   Me.BtnParam.Visible = True
  loc_12FC6C3: End If
  loc_12FC6C3: Call Proc_249_90_15ACC2C()
  loc_12FC6C8: Exit Sub
  loc_12FC6C9: ' Referenced from: 12FBFC4
  loc_12FC6C9: Proc_6_60_E63754()
  loc_12FC6CE: Exit Sub
End Sub

Private Sub Form_Resize() 'F82234
  'Data Table: 577EF0
  Dim var_AC As Variant
  loc_F820E0: On Error Resume Next
  loc_F820EB: Call 0.Method_arg_98 (var_86)
  loc_F820FA: If (CLng(var_86) <> 1) Then
  loc_F82115:   Proc_6_23_DFC5B8(Me, 0)
  loc_F82127:   Call 0.Method_arg_7C (CDbl(590))
  loc_F82135:   Call 0.Method_arg_74 (CDbl(&H14))
  loc_F8213A: End If
  loc_F82144: Call 0.Method_arg_100 (var_94)
  loc_F82150: If (var_94 > CDbl(0)) Then
  loc_F8216D:   Call 0.Method_arg_100 (var_94)
  loc_F82184:   Me.PictPreview.Width = (var_94 - Me.PictParameter.ScaleWidth)
  loc_F821AB:   var_AC = CVar((Me.PictPreview.ScaleWidth - CDbl(&H4B))) 'Single
  loc_F821BA:   Me.FGrid1.Width = var_AC
  loc_F8220D:   var_AC = CVar(((Me.PictPreview.ScaleHeight - (Me.Text4.Top + Me.Text4.Height)) - CDbl(&H4B))) 'Single
  loc_F8221C:   Me.FGrid1.Height = var_AC
  loc_F8222C: End If
  loc_F82230: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7A7B8
  'Data Table: 577EF0
  loc_E7A75F: Set global_96 = Nothing
  loc_E7A771: Set global_100 = Nothing
  loc_E7A783: Set global_104 = Nothing
  loc_E7A795: Set global_108 = Nothing
  loc_E7A7A7: Set global_192 = Nothing
  loc_E7A7B3: MemVar_1F951E8 = Nothing
  loc_E7A7B7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E625C4
  'Data Table: 577EF0
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim arg_78FF As Variant
  loc_E6258F: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E62597: Call Proc_249_91_E4BC0C()
  loc_E625A7: Set var_A8 = Me.TxtGrid
  loc_E625AD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E625B5: var_AC.Visible = False
  loc_E625C1: Exit Sub
  loc_E625C2: arg_78FF = CVar() 'Integer
End Sub

Private Sub FGrid_UnknownEvent_8 'E1FD10
  'Data Table: 577EF0
  loc_E1FD07: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FD0F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10A4034
  'Data Table: 577EF0
  Dim var_9C As String
  Dim var_AC As Variant
  Dim Cancel As Integer
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_10A3DA7: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_126))) Then
  loc_10A3DBD:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A3DCD:   var_9C = "+{Tab}"
  loc_10A3DD3:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag))
  loc_10A3DDD:   Cancel = 0
  loc_10A3DE3: Else
  loc_10A3E1A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_124))) Then
  loc_10A3E30:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A3E46:     Proc_303_0_FBACC8("	", 0)
  loc_10A3E50:     Cancel = 0
  loc_10A3E53:   End If
  loc_10A3E53: End If
  loc_10A3E59: global_148 = Cancel
  loc_10A3E7F: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10A3EA3: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10A3EB9:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A3ED1:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A3ED6:   var_104 = vbNullString
  loc_10A3EE0:   Set var_118 = Me.FGrid
  loc_10A3EE6:   LateIdCallSt
  loc_10A3F11:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A3F16:   var_E4 = 2
  loc_10A3F1F:   var_104 = vbNullString
  loc_10A3F29:   Set var_D4 = Me.FGrid
  loc_10A3F2F:   LateIdCallSt
  loc_10A3F41: End If
  loc_10A3F4B: If (CLng(Cancel) = &HD) Then
  loc_10A3F61:   var_11C = CLng(Me.FGrid.Row)
  loc_10A3F71:   If Not (var_11C = CLng(0)) Then
  loc_10A3F7B:     If Not (var_11C = CLng(1)) Then
  loc_10A3F85:       If Not (var_11C = CLng(2)) Then
  loc_10A3F8F:         If Not (var_11C = CLng(3)) Then
  loc_10A3F99:           If Not (var_11C = CLng(4)) Then
  loc_10A3FA3:             If Not (var_11C = CLng(5)) Then
  loc_10A3FAD:               If Not (var_11C = CLng(6)) Then
  loc_10A3FB7:                 If Not (var_11C = CLng(7)) Then
  loc_10A3FC1:                   If Not (var_11C = CLng(8)) Then
  loc_10A3FCB:                     If (var_11C = CLng(9)) Then
  loc_10A3FCE:                     End If
  loc_10A3FCE:                   End If
  loc_10A3FCE:                 End If
  loc_10A3FCE:               End If
  loc_10A3FCE:             End If
  loc_10A3FCE:           End If
  loc_10A3FCE:         End If
  loc_10A3FCE:       End If
  loc_10A3FCE:     End If
  loc_10A400F:     Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_10A4029:     global_150 = 0
  loc_10A402C:   End If
  loc_10A402C: End If
  loc_10A4031: Exit Sub
  loc_10A4032: 0(global_150) = var_104
End Sub

Private Sub FGrid_UnknownEvent_B 'F0B508
  'Data Table: 577EF0
  Dim var_9C As Long
  loc_F0B43B: var_9C = CLng(Me.FGrid.Row)
  loc_F0B44B: If Not (var_9C = CLng(0)) Then
  loc_F0B455:   If Not (var_9C = CLng(1)) Then
  loc_F0B45F:     If Not (var_9C = CLng(2)) Then
  loc_F0B469:       If Not (var_9C = CLng(3)) Then
  loc_F0B473:         If Not (var_9C = CLng(4)) Then
  loc_F0B47D:           If Not (var_9C = CLng(5)) Then
  loc_F0B487:             If Not (var_9C = CLng(6)) Then
  loc_F0B491:               If Not (var_9C = CLng(7)) Then
  loc_F0B49B:                 If Not (var_9C = CLng(8)) Then
  loc_F0B4A5:                   If (var_9C = CLng(9)) Then
  loc_F0B4A8:                   End If
  loc_F0B4A8:                 End If
  loc_F0B4A8:               End If
  loc_F0B4A8:             End If
  loc_F0B4A8:           End If
  loc_F0B4A8:         End If
  loc_F0B4A8:       End If
  loc_F0B4A8:     End If
  loc_F0B4A8:   End If
  loc_F0B4C0:   var_AC = 0
  loc_F0B4E9:   Proc_6_61_1077158(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0B4FE: End If
  loc_F0B503: global_150 = 0
  loc_F0B506: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F73F24
  'Data Table: 577EF0
  Dim var_9C As Long
  loc_F73DFB: var_9C = CLng(Me.FGrid.Row)
  loc_F73E0B: If Not (var_9C = CLng(5)) Then
  loc_F73E15:   If Not (var_9C = CLng(6)) Then
  loc_F73E1F:     If Not (var_9C = CLng(7)) Then
  loc_F73E29:       If Not (var_9C = CLng(8)) Then
  loc_F73E33:         If (var_9C = CLng(9)) Then
  loc_F73E36:         End If
  loc_F73E36:       End If
  loc_F73E36:     End If
  loc_F73E36:   End If
  loc_F73E74:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F73E89: Else
  loc_F73E90:   If Not (var_9C = CLng(0)) Then
  loc_F73E9A:     If Not (var_9C = CLng(1)) Then
  loc_F73EA4:       If Not (var_9C = CLng(2)) Then
  loc_F73EAE:         If Not (var_9C = CLng(3)) Then
  loc_F73EB8:           If (var_9C = CLng(4)) Then
  loc_F73EBB:           End If
  loc_F73EBB:         End If
  loc_F73EBB:       End If
  loc_F73EBB:     End If
  loc_F73EF9:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_F73F0B:   End If
  loc_F73F0B: End If
  loc_F73F15: If (CLng(Cancel) <> &HD) Then
  loc_F73F1D:   global_150 = &HFF
  loc_F73F20: End If
  loc_F73F20: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1FCC0
  'Data Table: 577EF0
  loc_E1FCB7: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E1FCBF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E20490
  'Data Table: 577EF0
  loc_E20487: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2048F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E443B0
  'Data Table: 577EF0
  Dim var_8C As TextBox
  loc_E4438F: Set var_88 = Me.TxtGrid
  loc_E44395: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4439D: var_8C.Visible = False
  loc_E443A9: Call Proc_249_91_E4BC0C()
  loc_E443AE: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) 'FF9528
  'Data Table: 577EF0
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FF9339: Set var_88 = Me.Check1
  loc_FF933F: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF935D: If (CLng(var_8C.Value) = 0) Then
  loc_FF936E:   Set var_88 = Me.GridSel
  loc_FF9374:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF937C:   var_8C.Enabled = True
  loc_FF9392:   Set var_88 = Me.GridSel
  loc_FF9398:   Call 0.Method_Check1_Click0 (Index)
  loc_FF93B9:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF93CF:     Set var_88 = Me.GridSel
  loc_FF93D5:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF93DD:     var_8C.Row = 1
  loc_FF93FC:     Set var_88 = Me.GridSel
  loc_FF9402:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF940A:     var_8C.Col = 0
  loc_FF9416:   End If
  loc_FF9419: Else
  loc_FF9428:   Set var_88 = Me.GridSel
  loc_FF942E:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9436:   var_8C.Enabled = False
  loc_FF944C:   Set var_88 = Me.GridSel
  loc_FF9452:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9473:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF9489:     Set var_88 = Me.GridSel
  loc_FF948F:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF94B6:     Set var_88 = Me.GridSel
  loc_FF94BC:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF94C4:     var_8C.Col = 0
  loc_FF94DA:     Set var_88 = Me.GridSel
  loc_FF94E0:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF94F7:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FF9506:     Set var_C4 = Me.GridSel
  loc_FF950C:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FF9514:     var_C8.RowSel = 0
  loc_FF9527:   End If
  loc_FF9527: End If
  loc_FF9527: Exit Sub
End Sub

Private Sub Check1_GotFocus() 'DFCFE0
  'Data Table: 577EF0
  loc_DFCFDC: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E22FF0
  'Data Table: 577EF0
  loc_E22FD6: If (Shift = &HD) Then
  loc_E22FE7:   Proc_303_0_FBACC8("	")
  loc_E22FEF: End If
  loc_E22FEF: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'DFD48C
  'Data Table: 577EF0
  loc_DFD488: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '1A687F8
  'Data Table: 577EF0
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim unk_577EF3 As Connection15
  Dim var_BC As Variant
  Dim var_94 As Recordset15
  Dim var_D4 As String
  Dim var_C4 As Variant
  Dim var_128 As Variant
  Dim var_108 As String
  Dim var_C0 As String
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim MemVar_1F953D0 As String
  Dim var_13C As String
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_AC As MSHFlexGrid
  loc_1A64E08: On Error Goto loc_1A687F2
  loc_1A64E10: global_152 = &HFF
  loc_1A64E17: Set var_98 = Me.FGrid1
  loc_1A64E1D: var_A8 = var_98.DataSource
  loc_1A64E39: If (var_A8 Is Nothing) Then
  loc_1A64E3C:   Exit Sub
  loc_1A64E3D: End If
  loc_1A64E53: unk_577EF3.Execute "Select * From FAEnviro", var_A8, -1
  loc_1A64E5E: Set var_94 = var_98
  loc_1A64E76: var_98 = var_94.Fields
  loc_1A64EDA: var_138 = IIf((Proc_6_38_E69628(CVar(var_98.Item("daterfill")), var_98) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_1A64EE3: MemVar_1F953C4 = CStr(var_138)
  loc_1A64F77: var_138 = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_1A64F80: MemVar_1F953C8 = CStr(var_138)
  loc_1A65014: var_138 = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_1A65041: var_BC = "linefiller"
  loc_1A65055: var_AC = var_94.Fields.Item(var_BC)
  loc_1A6506C: var_D4 = "linefiller"
  loc_1A65094: var_108 = "-"
  loc_1A650B1: var_138 = IIf((Proc_6_38_E69628(CVar(var_AC), CStr(var_138)) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item(var_D4)))))
  loc_1A650BA: MemVar_1F953D0 = CStr(var_138)
  loc_1A650ED: var_140 = CStr(Me.FGrid1.Tag)
  loc_1A650FE: If (var_140 = "SalesRegister") Then
  loc_1A65104:   var_88 = "SalesRegHall"
  loc_1A6510D:   global_112 = "Sales Register Report"
  loc_1A65114: Else
  loc_1A6511C:   If (var_140 = "SalesRegisterItemWise") Then
  loc_1A65122:     var_88 = "SalesRegHallItemWise"
  loc_1A6512B:     global_112 = "Sales Register Item Wise Report"
  loc_1A65132:   Else
  loc_1A6513A:     If (var_140 = "CompanyWiseSaleHall") Then
  loc_1A65140:       var_88 = "SalesRegHallItemWise"
  loc_1A65149:       global_112 = "Company Wise Sale Report"
  loc_1A65150:     Else
  loc_1A65158:       If (var_140 = "OutStanding") Then
  loc_1A6515E:         var_88 = "OutStanding"
  loc_1A65167:         global_112 = "OutStanding Report"
  loc_1A6516E:       Else
  loc_1A65176:         If (var_140 = "PartyOutStanding") Then
  loc_1A6517C:           var_88 = "PartyOutStanding"
  loc_1A65185:           global_112 = "Party Wise OutStanding"
  loc_1A6518C:         Else
  loc_1A65194:           If (var_140 = "CashierCollection") Then
  loc_1A6519A:             var_88 = "CashierSummaryHall"
  loc_1A651A3:             global_112 = "Cashier Report"
  loc_1A651AA:           Else
  loc_1A651B2:             If (var_140 = "CashierCollectionMIS") Then
  loc_1A651B8:               var_88 = "CashierSummaryHallMIS"
  loc_1A651C1:               global_112 = "Cashier Colection Summary"
  loc_1A651C8:             Else
  loc_1A651D0:               If (var_140 = "BookingDetail") Then
  loc_1A651D6:                 var_88 = "BookingDetail"
  loc_1A651DF:                 global_112 = "Booking Inquiry Detail"
  loc_1A651E6:               Else
  loc_1A651EE:                 If (var_140 = "TaxReportHall") Then
  loc_1A651F4:                   var_88 = "TaxReportHall"
  loc_1A651FD:                   global_112 = "Tax Report"
  loc_1A65204:                 Else
  loc_1A6520C:                   If (var_140 = "TaxDetailsBanq") Then
  loc_1A65212:                     var_88 = "TaxwiseDetailReportHall"
  loc_1A6521B:                     global_112 = "Taxwise Details"
  loc_1A65222:                   Else
  loc_1A6522A:                     If (var_140 = "TaxSummaryHall") Then
  loc_1A65230:                       var_88 = "TaxSummaryHall"
  loc_1A65239:                       global_112 = "Tax Summary"
  loc_1A65240:                     Else
  loc_1A65248:                       If (var_140 = "SettleRepHall") Then
  loc_1A6524E:                         var_88 = "SettleRepHall"
  loc_1A65257:                         global_112 = "Settlement Report"
  loc_1A6525E:                       Else
  loc_1A65266:                         If (var_140 = "DailyFuncSheet") Then
  loc_1A6526C:                           var_88 = "DailyFuncSheet"
  loc_1A65275:                           global_112 = "Daily Function Sheet"
  loc_1A6527C:                         Else
  loc_1A65284:                           If (var_140 = "CoverAnalysis") Then
  loc_1A6528A:                             var_88 = "CoverAnalysisHall"
  loc_1A65293:                             global_112 = "Cover Analysis Report"
  loc_1A6529A:                           Else
  loc_1A652A2:                             If (var_140 = "ItemWiseSaleHall") Then
  loc_1A652A8:                               var_88 = "ItemWiseSaleHall"
  loc_1A652B1:                               global_112 = "Item Wise Sales Report"
  loc_1A652B8:                             Else
  loc_1A652C0:                               If (var_140 = "FunctionWiseItemDetail") Then
  loc_1A652C6:                                 var_88 = "FunctionWiseItemDetail"
  loc_1A652CF:                                 global_112 = "Function Wise Item Detail"
  loc_1A652D3:                               End If
  loc_1A652D3:                             End If
  loc_1A652D3:                           End If
  loc_1A652D3:                         End If
  loc_1A652D3:                       End If
  loc_1A652D3:                     End If
  loc_1A652D3:                   End If
  loc_1A652D3:                 End If
  loc_1A652D3:               End If
  loc_1A652D3:             End If
  loc_1A652D3:           End If
  loc_1A652D3:         End If
  loc_1A652D3:       End If
  loc_1A652D3:     End If
  loc_1A652D3:   End If
  loc_1A652D3: End If
  loc_1A652DC: If (global_152 = 0) Then
  loc_1A652DF:   Exit Sub
  loc_1A652E0: End If
  loc_1A652E4: Set var_98 = Me.FGrid1
  loc_1A65321: Set var_C4 = var_98.DataSource
  loc_1A65327: CreateFieldDefFile(var_C4, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_1A65355: var_C0 = "\" & var_88
  loc_1A65369: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C0 & ".RPT", var_BC, var_98)
  loc_1A65374: MemVar_1F951E8 = var_98
  loc_1A65390: Set var_98 = Me.FGrid1
  loc_1A65396: var_A8 = var_98.DataSource
  loc_1A653A1: CVarUnk
  loc_1A653AF: Call 0.Method_arg_64 (var_AC, var_A8, var_BC, var_D4)
  loc_1A653B7: Call 0.Method_arg_2C (var_A8, MemVar_1F953D0)
  loc_1A653D0: Call 0.Method_arg_150 (global_152)
  loc_1A653E6: Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A653EE: Call 0.Method_arg_24 (var_8A)
  loc_1A653FA: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_1A65413:   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A6541B:   Call 0.Method_arg_20 (var_AC)
  loc_1A65423:   Call 0.Method_arg_30 (var_C0)
  loc_1A65439:   var_160 = Ucase(CVar(var_C0)) 'Variant
  loc_1A65469:   If (var_160 = Ucase("comp_name")) Then
  loc_1A6548D:     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A65495:     Call 0.Method_arg_20 (var_AC)
  loc_1A6549D:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1A654B3:   Else
  loc_1A654D5:     If (var_160 = Ucase("comp_add1")) Then
  loc_1A654F9:       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A65501:       Call 0.Method_arg_20 (var_AC)
  loc_1A65509:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1A6551F:     Else
  loc_1A65541:       If (var_160 = Ucase("comp_pin")) Then
  loc_1A65565:         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A6556D:         Call 0.Method_arg_20 (var_AC)
  loc_1A65575:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1A6558B:       Else
  loc_1A655AD:         If (var_160 = Ucase("comp_GSTIN")) Then
  loc_1A655D1:           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A655D9:           Call 0.Method_arg_20 (var_AC)
  loc_1A655E1:           Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1A655F7:         Else
  loc_1A65619:           If (var_160 = Ucase("Title")) Then
  loc_1A65640:             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A65648:             Call 0.Method_arg_20 (var_AC)
  loc_1A65650:             Call 0.Method_arg_38 ("'" & global_112 & "'")
  loc_1A65666:           Else
  loc_1A65688:             If (var_160 = Ucase("BetweenDate")) Then
  loc_1A65695:               Set var_98 = Me.Text1
  loc_1A656BE:               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A656C6:               Call 0.Method_arg_20 (var_C4)
  loc_1A656CE:               Call 0.Method_arg_38 ("'" & var_98.Text & "'")
  loc_1A656E8:             Else
  loc_1A6570A:               If (var_160 = Ucase("Dater")) Then
  loc_1A6572E:                 Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A65736:                 Call 0.Method_arg_20 (var_AC)
  loc_1A6573E:                 Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_1A65754:               Else
  loc_1A65776:                 If (var_160 = Ucase("Pager")) Then
  loc_1A65780:                   var_C0 = "'" & MemVar_1F953C8
  loc_1A6579A:                   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A657A2:                   Call 0.Method_arg_20 (var_AC)
  loc_1A657AA:                   Call 0.Method_arg_38 (var_C0 & "'")
  loc_1A657BD:                 End If
  loc_1A657BD:               End If
  loc_1A657BD:             End If
  loc_1A657BD:           End If
  loc_1A657BD:         End If
  loc_1A657BD:       End If
  loc_1A657BD:     End If
  loc_1A657BD:   End If
  loc_1A657C0: Next var_150 'Integer
  loc_1A657C9: Set var_98 = Me.FGrid1
  loc_1A657D7: var_168 = CStr(var_98.Tag)
  loc_1A657E8: If (var_168 = "SalesRegister") Then
  loc_1A657FC:   Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A65804:   Call 0.Method_arg_24 (var_8A)
  loc_1A65810:   For var_16C =  To CInt(var_14C): 1 = var_16C 'Integer
  loc_1A65829:     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A65831:     Call 0.Method_arg_20 (var_AC)
  loc_1A65839:     Call 0.Method_arg_30 (var_C0)
  loc_1A6584F:     var_17C = Ucase(CVar(var_C0)) 'Variant
  loc_1A6587F:     If (var_17C = Ucase("ForOutlet")) Then
  loc_1A658D0:       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A658D8:       Call 0.Method_arg_20 (var_C4)
  loc_1A658E0:       Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A658FF:     Else
  loc_1A65921:       If (var_17C = Ucase("ItemDetail")) Then
  loc_1A65972:         Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A6597A:         Call 0.Method_arg_20 (var_C4)
  loc_1A65982:         Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_1A659A1:       Else
  loc_1A659C3:         If (var_17C = Ucase("mTax1")) Then
  loc_1A65A0E:           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A65A16:           Call 0.Method_arg_20 (&HC & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A65A1E:           Call 0.Method_arg_38 ("'")
  loc_1A65A3B:         Else
  loc_1A65A5D:           If (var_17C = Ucase("mTax2")) Then
  loc_1A65AA8:             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A65AB0:             Call 0.Method_arg_20 (&HD & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A65AB8:             Call 0.Method_arg_38 ("'")
  loc_1A65AD5:           Else
  loc_1A65AF7:             If (var_17C = Ucase("mTax3")) Then
  loc_1A65B42:               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A65B4A:               Call 0.Method_arg_20 (&HE & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A65B52:               Call 0.Method_arg_38 ("'")
  loc_1A65B6F:             Else
  loc_1A65B91:               If (var_17C = Ucase("mTax4")) Then
  loc_1A65BDC:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A65BE4:                 Call 0.Method_arg_20 (&HF & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A65BEC:                 Call 0.Method_arg_38 ("'")
  loc_1A65C09:               Else
  loc_1A65C2B:                 If (var_17C = Ucase("mTax5")) Then
  loc_1A65C76:                   Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A65C7E:                   Call 0.Method_arg_20 (&H10 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A65C86:                   Call 0.Method_arg_38 ("'")
  loc_1A65CA3:                 Else
  loc_1A65CC5:                   If (var_17C = Ucase("mTax6")) Then
  loc_1A65D10:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A65D18:                     Call 0.Method_arg_20 (&H11 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A65D20:                     Call 0.Method_arg_38 ("'")
  loc_1A65D3D:                   Else
  loc_1A65D5F:                     If (var_17C = Ucase("mTax7")) Then
  loc_1A65DAA:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A65DB2:                       Call 0.Method_arg_20 (&H12 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A65DBA:                       Call 0.Method_arg_38 ("'")
  loc_1A65DD7:                     Else
  loc_1A65DF9:                       If (var_17C = Ucase("mTax8")) Then
  loc_1A65E44:                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A65E4C:                         Call 0.Method_arg_20 (&H13 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A65E54:                         Call 0.Method_arg_38 ("'")
  loc_1A65E71:                       Else
  loc_1A65E93:                         If (var_17C = Ucase("mTax9")) Then
  loc_1A65EDE:                           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A65EE6:                           Call 0.Method_arg_20 (&H14 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A65EEE:                           Call 0.Method_arg_38 ("'")
  loc_1A65F08:                         End If
  loc_1A65F08:                       End If
  loc_1A65F08:                     End If
  loc_1A65F08:                   End If
  loc_1A65F08:                 End If
  loc_1A65F08:               End If
  loc_1A65F08:             End If
  loc_1A65F08:           End If
  loc_1A65F08:         End If
  loc_1A65F08:       End If
  loc_1A65F08:     End If
  loc_1A65F0B:   Next var_16C 'Integer
  loc_1A65F16:   If (Cancel = 1) Then
  loc_1A65F26:     ReDim Preserve var_90(0 To 2)
  loc_1A65F5B:     var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A65F93:     var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_1A65FAA:     Set var_98 = Me.Text3
  loc_1A65FB0:     var_C0 = var_98.Text
  loc_1A65FCB:     var_90(2) = vbNullString & var_C0 & vbNullString
  loc_1A65FD8:   End If
  loc_1A65FDB: Else
  loc_1A65FE3:   If Not (var_168 = "SalesRegisterItemWise") Then
  loc_1A65FEE:     If (var_168 = "CompanyWiseSaleHall") Then
  loc_1A65FF1:     End If
  loc_1A66002:     Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A6600A:     Call 0.Method_arg_24 (var_8A)
  loc_1A66016:     For var_180 =  To CInt(var_14C):   1 = var_180 'Integer
  loc_1A6602F:       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A66037:       Call 0.Method_arg_20 (var_AC)
  loc_1A6603F:       Call 0.Method_arg_30 (var_C0)
  loc_1A66055:       var_190 = Ucase(CVar(var_C0)) 'Variant
  loc_1A66085:       If (var_190 = Ucase("ForOutlet")) Then
  loc_1A660D6:         Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A660DE:         Call 0.Method_arg_20 (var_C4)
  loc_1A660E6:         Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A66105:       Else
  loc_1A66127:         If (var_190 = Ucase("ItemDetail")) Then
  loc_1A66178:           Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A66180:           Call 0.Method_arg_20 (var_C4)
  loc_1A66188:           Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_1A661A7:         Else
  loc_1A661C9:           If (var_190 = Ucase("mTax1")) Then
  loc_1A66214:             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A6621C:             Call 0.Method_arg_20 (9 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A66224:             Call 0.Method_arg_38 ("'")
  loc_1A66241:           Else
  loc_1A66263:             If (var_190 = Ucase("mTax2")) Then
  loc_1A662AE:               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A662B6:               Call 0.Method_arg_20 (&HA & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A662BE:               Call 0.Method_arg_38 ("'")
  loc_1A662DB:             Else
  loc_1A662FD:               If (var_190 = Ucase("mTax3")) Then
  loc_1A66348:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A66350:                 Call 0.Method_arg_20 (&HB & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A66358:                 Call 0.Method_arg_38 ("'")
  loc_1A66375:               Else
  loc_1A66397:                 If (var_190 = Ucase("mTax4")) Then
  loc_1A663E2:                   Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A663EA:                   Call 0.Method_arg_20 (&HC & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A663F2:                   Call 0.Method_arg_38 ("'")
  loc_1A6640F:                 Else
  loc_1A66431:                   If (var_190 = Ucase("mTax5")) Then
  loc_1A6647C:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A66484:                     Call 0.Method_arg_20 (&HD & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A6648C:                     Call 0.Method_arg_38 ("'")
  loc_1A664A9:                   Else
  loc_1A664CB:                     If (var_190 = Ucase("mTax6")) Then
  loc_1A66516:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A6651E:                       Call 0.Method_arg_20 (&HE & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A66526:                       Call 0.Method_arg_38 ("'")
  loc_1A66543:                     Else
  loc_1A66565:                       If (var_190 = Ucase("mTax7")) Then
  loc_1A665B0:                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A665B8:                         Call 0.Method_arg_20 (&HF & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A665C0:                         Call 0.Method_arg_38 ("'")
  loc_1A665DD:                       Else
  loc_1A665FF:                         If (var_190 = Ucase("mTax8")) Then
  loc_1A6664A:                           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A66652:                           Call 0.Method_arg_20 (&H10 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A6665A:                           Call 0.Method_arg_38 ("'")
  loc_1A66677:                         Else
  loc_1A66699:                           If (var_190 = Ucase("mTax9")) Then
  loc_1A666E4:                             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A666EC:                             Call 0.Method_arg_20 (&H11 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A666F4:                             Call 0.Method_arg_38 ("'")
  loc_1A6670E:                           End If
  loc_1A6670E:                         End If
  loc_1A6670E:                       End If
  loc_1A6670E:                     End If
  loc_1A6670E:                   End If
  loc_1A6670E:                 End If
  loc_1A6670E:               End If
  loc_1A6670E:             End If
  loc_1A6670E:           End If
  loc_1A6670E:         End If
  loc_1A6670E:       End If
  loc_1A66711:     Next var_180 'Integer
  loc_1A6671C:     If (Cancel = 1) Then
  loc_1A6672C:       ReDim Preserve var_90(0 To 2)
  loc_1A66761:       var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A66799:       var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_1A667B0:       Set var_98 = Me.Text3
  loc_1A667B6:       var_C0 = var_98.Text
  loc_1A667D1:       var_90(2) = vbNullString & var_C0 & vbNullString
  loc_1A667DE:     End If
  loc_1A667E1:   Else
  loc_1A667E9:     If (var_168 = "OutStanding") Then
  loc_1A667FD:       Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A66805:       Call 0.Method_arg_24 (var_8A)
  loc_1A66811:       For var_194 =  To CInt(var_14C):     1 = var_194 'Integer
  loc_1A6682A:         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A66832:         Call 0.Method_arg_20 (var_AC)
  loc_1A6683A:         Call 0.Method_arg_30 (var_C0)
  loc_1A66850:         var_1A4 = Ucase(CVar(var_C0)) 'Variant
  loc_1A66880:         If (var_1A4 = Ucase("ForOutlet")) Then
  loc_1A668D1:           Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A668D9:           Call 0.Method_arg_20 (var_C4)
  loc_1A668E1:           Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A66900:         Else
  loc_1A66922:           If (var_1A4 = Ucase("ItemDetail")) Then
  loc_1A66973:             Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A6697B:             Call 0.Method_arg_20 (var_C4)
  loc_1A66983:             Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_1A6699F:           End If
  loc_1A6699F:         End If
  loc_1A669A2:       Next var_194 'Integer
  loc_1A669AD:       If (Cancel = 1) Then
  loc_1A669BD:         ReDim Preserve var_90(0 To 2)
  loc_1A669F2:         var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A66A2A:         var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_1A66A41:         Set var_98 = Me.Text3
  loc_1A66A47:         var_C0 = var_98.Text
  loc_1A66A62:         var_90(2) = vbNullString & var_C0 & vbNullString
  loc_1A66A6F:       End If
  loc_1A66A72:     Else
  loc_1A66A7A:       If (var_168 = "PartyOutStanding") Then
  loc_1A66A8E:         Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A66A96:         Call 0.Method_arg_24 (var_8A)
  loc_1A66AA2:         For var_1A8 =  To CInt(var_14C):       1 = var_1A8 'Integer
  loc_1A66ABB:           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A66AC3:           Call 0.Method_arg_20 (var_AC)
  loc_1A66ACB:           Call 0.Method_arg_30 (var_C0)
  loc_1A66AE1:           var_1B8 = Ucase(CVar(var_C0)) 'Variant
  loc_1A66B11:           If (var_1B8 = Ucase("BetweenDate")) Then
  loc_1A66B47:             Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A66B4F:             Call 0.Method_arg_20 (var_C4)
  loc_1A66B57:             Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A66B71:           Else
  loc_1A66B93:             If (var_1B8 = Ucase("Guest_Name")) Then
  loc_1A66BC9:               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A66BD1:               Call 0.Method_arg_20 (var_C4)
  loc_1A66BD9:               Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A66BF0:             End If
  loc_1A66BF0:           End If
  loc_1A66BF3:         Next var_1A8 'Integer
  loc_1A66BFE:         If (Cancel = 1) Then
  loc_1A66C0E:           ReDim Preserve var_90(0 To 0)
  loc_1A66C22:           Set var_98 = Me.Text1
  loc_1A66C28:           var_C0 = var_98.Text
  loc_1A66C43:           var_90(0) = vbNullString & var_C0 & vbNullString
  loc_1A66C50:         End If
  loc_1A66C53:       Else
  loc_1A66C5B:         If (var_168 = "CashierCollection") Then
  loc_1A66C6F:           Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A66C77:           Call 0.Method_arg_24 (var_8A)
  loc_1A66C83:           For var_1BC =  To CInt(var_14C):         1 = var_1BC 'Integer
  loc_1A66C9C:             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A66CA4:             Call 0.Method_arg_20 (var_AC)
  loc_1A66CAC:             Call 0.Method_arg_30 (var_C0)
  loc_1A66CC2:             var_1CC = Ucase(CVar(var_C0)) 'Variant
  loc_1A66CF2:             If (var_1CC = Ucase("ForOutlet")) Then
  loc_1A66D43:               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A66D4B:               Call 0.Method_arg_20 (var_C4)
  loc_1A66D53:               Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A66D72:             Else
  loc_1A66D94:               If (var_1CC = Ucase("Guest_Name")) Then
  loc_1A66DCA:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A66DD2:                 Call 0.Method_arg_20 (var_C4)
  loc_1A66DDA:                 Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A66DF1:               End If
  loc_1A66DF1:             End If
  loc_1A66DF4:           Next var_1BC 'Integer
  loc_1A66DFF:           If (Cancel = 1) Then
  loc_1A66E0F:             ReDim Preserve var_90(0 To 1)
  loc_1A66E44:             var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A66E5B:             Set var_98 = Me.Text2
  loc_1A66E61:             var_C0 = var_98.Text
  loc_1A66E7C:             var_90(1) = vbNullString & var_C0 & vbNullString
  loc_1A66E89:           End If
  loc_1A66E8C:         Else
  loc_1A66E94:           If (var_168 = "CashierCollectionMIS") Then
  loc_1A66EA8:             Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A66EB0:             Call 0.Method_arg_24 (var_8A)
  loc_1A66EBC:             For var_1D0 =  To CInt(var_14C):           1 = var_1D0 'Integer
  loc_1A66ED5:               Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A66EDD:               Call 0.Method_arg_20 (var_AC)
  loc_1A66EE5:               Call 0.Method_arg_30 (var_C0)
  loc_1A66F2B:               If (Ucase(CVar(var_C0)) = Ucase("ForOutlet")) Then
  loc_1A66F7C:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A66F84:                 Call 0.Method_arg_20 (var_C4)
  loc_1A66F8C:                 Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A66FA8:               End If
  loc_1A66FAB:             Next var_1D0 'Integer
  loc_1A66FB6:             If (Cancel = 1) Then
  loc_1A66FC6:               ReDim Preserve var_90(0 To 1)
  loc_1A66FFB:               var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A67012:               Set var_98 = Me.Text2
  loc_1A67018:               var_C0 = var_98.Text
  loc_1A67033:               var_90(1) = vbNullString & var_C0 & vbNullString
  loc_1A67040:             End If
  loc_1A67043:           Else
  loc_1A6704B:             If (var_168 = "DailyFuncSheet") Then
  loc_1A6705F:               Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A67067:               Call 0.Method_arg_24 (var_8A)
  loc_1A67073:               For var_1E4 =  To CInt(var_14C):             1 = var_1E4 'Integer
  loc_1A6708C:                 Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67094:                 Call 0.Method_arg_20 (var_AC)
  loc_1A6709C:                 Call 0.Method_arg_30 (var_C0)
  loc_1A670B2:                 var_1F4 = Ucase(CVar(var_C0)) 'Variant
  loc_1A670E2:                 If (var_1F4 = Ucase("BetweenDate")) Then
  loc_1A67118:                   Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A67120:                   Call 0.Method_arg_20 (var_C4)
  loc_1A67128:                   Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A67142:                 Else
  loc_1A67164:                   If (var_1F4 = Ucase("Detail")) Then
  loc_1A6719A:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A671A2:                     Call 0.Method_arg_20 (var_C4)
  loc_1A671AA:                     Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A671C4:                   Else
  loc_1A671E6:                     If (var_1F4 = Ucase("Company")) Then
  loc_1A6721C:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A67224:                       Call 0.Method_arg_20 (var_C4)
  loc_1A6722C:                       Call 0.Method_arg_38 ("'" & Me.Text3.Text & "'")
  loc_1A67243:                     End If
  loc_1A67243:                   End If
  loc_1A67243:                 End If
  loc_1A67246:               Next var_1E4 'Integer
  loc_1A67251:               If (Cancel = 1) Then
  loc_1A67261:                 ReDim Preserve var_90(0 To 1)
  loc_1A67296:                 var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A672AD:                 Set var_98 = Me.Text2
  loc_1A672B3:                 var_C0 = var_98.Text
  loc_1A672CE:                 var_90(1) = vbNullString & var_C0 & vbNullString
  loc_1A672DB:               End If
  loc_1A672DE:             Else
  loc_1A672E6:               If (var_168 = "FunctionWiseItemDetail") Then
  loc_1A672FA:                 Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A67302:                 Call 0.Method_arg_24 (var_8A)
  loc_1A6730E:                 For var_1F8 =  To CInt(var_14C):               1 = var_1F8 'Integer
  loc_1A67327:                   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A6732F:                   Call 0.Method_arg_20 (var_AC)
  loc_1A67337:                   Call 0.Method_arg_30 (var_C0)
  loc_1A6734D:                   var_208 = Ucase(CVar(var_C0)) 'Variant
  loc_1A6737D:                   If (var_208 = Ucase("ForDate")) Then
  loc_1A673B3:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A673BB:                     Call 0.Method_arg_20 (var_C4)
  loc_1A673C3:                     Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A673DD:                   Else
  loc_1A673FF:                     If (var_208 = Ucase("Detail")) Then
  loc_1A67435:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A6743D:                       Call 0.Method_arg_20 (var_C4)
  loc_1A67445:                       Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A6745C:                     End If
  loc_1A6745C:                   End If
  loc_1A6745F:                 Next var_1F8 'Integer
  loc_1A6746A:                 If (Cancel = 1) Then
  loc_1A6747A:                   ReDim Preserve var_90(0 To 1)
  loc_1A674AF:                   var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A674C6:                   Set var_98 = Me.Text2
  loc_1A674CC:                   var_C0 = var_98.Text
  loc_1A674E7:                   var_90(1) = vbNullString & var_C0 & vbNullString
  loc_1A674F4:                 End If
  loc_1A674F7:               Else
  loc_1A674FF:                 If Not (var_168 = "SettleRepHall") Then
  loc_1A6750A:                   If (var_168 = "ArrDepReg") Then
  loc_1A6750D:                   End If
  loc_1A6751E:                   Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A67526:                   Call 0.Method_arg_24 (var_8A)
  loc_1A67532:                   For var_20C =  To CInt(var_14C):                 1 = var_20C 'Integer
  loc_1A6754B:                     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67553:                     Call 0.Method_arg_20 (var_AC)
  loc_1A6755B:                     Call 0.Method_arg_30 (var_C0)
  loc_1A675A1:                     If (Ucase(CVar(var_C0)) = Ucase("BetweenDate")) Then
  loc_1A675D7:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A675DF:                       Call 0.Method_arg_20 (var_C4)
  loc_1A675E7:                       Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A675FE:                     End If
  loc_1A67601:                   Next var_20C 'Integer
  loc_1A6760C:                   If (Cancel = 1) Then
  loc_1A6761C:                     ReDim Preserve var_90(0 To 0)
  loc_1A67630:                     Set var_98 = Me.Text1
  loc_1A67636:                     var_C0 = var_98.Text
  loc_1A67651:                     var_90(0) = vbNullString & var_C0 & vbNullString
  loc_1A6765E:                   End If
  loc_1A67661:                 Else
  loc_1A67669:                   If (var_168 = "TaxSummaryHall") Then
  loc_1A6767D:                     Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A67685:                     Call 0.Method_arg_24 (var_8A)
  loc_1A67691:                     For var_220 =  To CInt(var_14C):                   1 = var_220 'Integer
  loc_1A676AA:                       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A676B2:                       Call 0.Method_arg_20 (var_AC)
  loc_1A676BA:                       Call 0.Method_arg_30 (var_C0)
  loc_1A676D0:                       var_230 = Ucase(CVar(var_C0)) 'Variant
  loc_1A67700:                       If (var_230 = Ucase("Tax1")) Then
  loc_1A6774B:                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A67753:                         Call 0.Method_arg_20 (7 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A6775B:                         Call 0.Method_arg_38 ("'")
  loc_1A67778:                       Else
  loc_1A6779A:                         If (var_230 = Ucase("Tax2")) Then
  loc_1A677E5:                           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A677ED:                           Call 0.Method_arg_20 (8 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A677F5:                           Call 0.Method_arg_38 ("'")
  loc_1A67812:                         Else
  loc_1A67834:                           If (var_230 = Ucase("Tax3")) Then
  loc_1A6787F:                             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A67887:                             Call 0.Method_arg_20 (9 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A6788F:                             Call 0.Method_arg_38 ("'")
  loc_1A678AC:                           Else
  loc_1A678CE:                             If (var_230 = Ucase("Tax4")) Then
  loc_1A67919:                               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A67921:                               Call 0.Method_arg_20 (&HA & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A67929:                               Call 0.Method_arg_38 ("'")
  loc_1A67946:                             Else
  loc_1A67968:                               If (var_230 = Ucase("Tax5")) Then
  loc_1A679B3:                                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A679BB:                                 Call 0.Method_arg_20 (&HB & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A679C3:                                 Call 0.Method_arg_38 ("'")
  loc_1A679E0:                               Else
  loc_1A67A02:                                 If (var_230 = Ucase("Tax6")) Then
  loc_1A67A4D:                                   Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A67A55:                                   Call 0.Method_arg_20 (&HC & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A67A5D:                                   Call 0.Method_arg_38 ("'")
  loc_1A67A7A:                                 Else
  loc_1A67A9C:                                   If (var_230 = Ucase("Tax7")) Then
  loc_1A67AE7:                                     Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A67AEF:                                     Call 0.Method_arg_20 (&HD & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A67AF7:                                     Call 0.Method_arg_38 ("'")
  loc_1A67B14:                                   Else
  loc_1A67B36:                                     If (var_230 = Ucase("Tax8")) Then
  loc_1A67B81:                                       Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A67B89:                                       Call 0.Method_arg_20 (&HE & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A67B91:                                       Call 0.Method_arg_38 ("'")
  loc_1A67BAE:                                     Else
  loc_1A67BD0:                                       If (var_230 = Ucase("Tax9")) Then
  loc_1A67BEC:                                         Set var_98 = Me.FGrid1
  loc_1A67BFD:                                         var_C0 = CStr(var_98.TextMatrix))
  loc_1A67C1B:                                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A67C23:                                         Call 0.Method_arg_20 (&HF & var_C0 & "'", 0)
  loc_1A67C2B:                                         Call 0.Method_arg_38 ("'")
  loc_1A67C45:                                       End If
  loc_1A67C45:                                     End If
  loc_1A67C45:                                   End If
  loc_1A67C45:                                 End If
  loc_1A67C45:                               End If
  loc_1A67C45:                             End If
  loc_1A67C45:                           End If
  loc_1A67C45:                         End If
  loc_1A67C45:                       End If
  loc_1A67C48:                     Next var_220 'Integer
  loc_1A67C50:                   Else
  loc_1A67C58:                     If (var_168 = "TaxReportHall") Then
  loc_1A67C6C:                       Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A67C74:                       Call 0.Method_arg_24 (var_8A)
  loc_1A67C80:                       For var_234 =  To CInt(var_14C):                     1 = var_234 'Integer
  loc_1A67C99:                         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67CA1:                         Call 0.Method_arg_20 (var_AC)
  loc_1A67CA9:                         Call 0.Method_arg_30 (var_C0)
  loc_1A67CBF:                         var_244 = Ucase(CVar(var_C0)) 'Variant
  loc_1A67CEF:                         If (var_244 = Ucase("mTaxP1")) Then
  loc_1A67D16:                           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67D1E:                           Call 0.Method_arg_20 (var_AC)
  loc_1A67D26:                           Call 0.Method_arg_38 ("'" & global_212 & "'")
  loc_1A67D3C:                         Else
  loc_1A67D5E:                           If (var_244 = Ucase("mTaxP2")) Then
  loc_1A67D85:                             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67D8D:                             Call 0.Method_arg_20 (var_AC)
  loc_1A67D95:                             Call 0.Method_arg_38 ("'" & global_216 & "'")
  loc_1A67DAB:                           Else
  loc_1A67DCD:                             If (var_244 = Ucase("mTaxP3")) Then
  loc_1A67DF4:                               Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67DFC:                               Call 0.Method_arg_20 (var_AC)
  loc_1A67E04:                               Call 0.Method_arg_38 ("'" & global_220 & "'")
  loc_1A67E1A:                             Else
  loc_1A67E3C:                               If (var_244 = Ucase("mTaxP4")) Then
  loc_1A67E63:                                 Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67E6B:                                 Call 0.Method_arg_20 (var_AC)
  loc_1A67E73:                                 Call 0.Method_arg_38 ("'" & global_224 & "'")
  loc_1A67E89:                               Else
  loc_1A67EAB:                                 If (var_244 = Ucase("mTaxP5")) Then
  loc_1A67ED2:                                   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67EDA:                                   Call 0.Method_arg_20 (var_AC)
  loc_1A67EE2:                                   Call 0.Method_arg_38 ("'" & global_228 & "'")
  loc_1A67EF8:                                 Else
  loc_1A67F1A:                                   If (var_244 = Ucase("mTaxP6")) Then
  loc_1A67F41:                                     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67F49:                                     Call 0.Method_arg_20 (var_AC)
  loc_1A67F51:                                     Call 0.Method_arg_38 ("'" & global_232 & "'")
  loc_1A67F67:                                   Else
  loc_1A67F89:                                     If (var_244 = Ucase("mTaxP7")) Then
  loc_1A67FB0:                                       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A67FB8:                                       Call 0.Method_arg_20 (var_AC)
  loc_1A67FC0:                                       Call 0.Method_arg_38 ("'" & global_236 & "'")
  loc_1A67FD6:                                     Else
  loc_1A67FF8:                                       If (var_244 = Ucase("mTaxP8")) Then
  loc_1A6801F:                                         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A68027:                                         Call 0.Method_arg_20 (var_AC)
  loc_1A6802F:                                         Call 0.Method_arg_38 ("'" & global_240 & "'")
  loc_1A68045:                                       Else
  loc_1A68067:                                         If (var_244 = Ucase("mTaxP9")) Then
  loc_1A68074:                                           var_C0 = "'" & global_244
  loc_1A6808E:                                           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A68096:                                           Call 0.Method_arg_20 (var_AC)
  loc_1A6809E:                                           Call 0.Method_arg_38 (var_C0 & "'")
  loc_1A680B1:                                         End If
  loc_1A680B1:                                       End If
  loc_1A680B1:                                     End If
  loc_1A680B1:                                   End If
  loc_1A680B1:                                 End If
  loc_1A680B1:                               End If
  loc_1A680B1:                             End If
  loc_1A680B1:                           End If
  loc_1A680B1:                         End If
  loc_1A680B4:                       Next var_234 'Integer
  loc_1A680BC:                     Else
  loc_1A680C4:                       If (var_168 = "CoverAnalysis") Then
  loc_1A680D8:                         Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A680E0:                         Call 0.Method_arg_24 (var_8A)
  loc_1A680EC:                         For var_248 =  To CInt(var_14C):                       1 = var_248 'Integer
  loc_1A68105:                           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A6810D:                           Call 0.Method_arg_20 (var_AC)
  loc_1A68115:                           Call 0.Method_arg_30 (var_C0)
  loc_1A6815B:                           If (Ucase(CVar(var_C0)) = Ucase("BetweenDate")) Then
  loc_1A68185:                             var_118 = CVar("'" & Me.Text1.Text & " To:                        ") 'String
  loc_1A6819F:                             var_128 = var_118 & Right(CVar(Me.Text2), &HB) 
  loc_1A681C0:                             Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A681C8:                             Call 0.Method_arg_20 (var_C4)
  loc_1A681D0:                             Call 0.Method_arg_38 (CStr(var_128 & "'"))
  loc_1A681F6:                           End If
  loc_1A681F9:                         Next var_248 'Integer
  loc_1A68204:                         If (Cancel = 1) Then
  loc_1A68214:                           ReDim Preserve var_90(0 To 0)
  loc_1A68228:                           Set var_98 = Me.Text1
  loc_1A6822E:                           var_C0 = var_98.Text
  loc_1A68249:                           var_90(0) = vbNullString & var_C0 & vbNullString
  loc_1A68256:                         End If
  loc_1A68259:                       Else
  loc_1A68261:                         If (var_168 = "ItemWiseSaleHall") Then
  loc_1A68275:                           Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A6827D:                           Call 0.Method_arg_24 (var_8A)
  loc_1A68289:                           For var_25C =  To CInt(var_14C):                         1 = var_25C 'Integer
  loc_1A682A2:                             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A682AA:                             Call 0.Method_arg_20 (var_AC)
  loc_1A682B2:                             Call 0.Method_arg_30 (var_C0)
  loc_1A682C8:                             var_26C = Ucase(CVar(var_C0)) 'Variant
  loc_1A682F8:                             If (var_26C = Ucase("FromDate")) Then
  loc_1A6832E:                               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A68336:                               Call 0.Method_arg_20 (var_C4)
  loc_1A6833E:                               Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A68358:                             Else
  loc_1A6837A:                               If (var_26C = Ucase("ToDate")) Then
  loc_1A683B0:                                 Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A683B8:                                 Call 0.Method_arg_20 (var_C4)
  loc_1A683C0:                                 Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A683D7:                               End If
  loc_1A683D7:                             End If
  loc_1A683DA:                           Next var_25C 'Integer
  loc_1A683E5:                           If (Cancel = 1) Then
  loc_1A683F5:                             ReDim Preserve var_90(0 To 0)
  loc_1A6842A:                             var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A68437:                           End If
  loc_1A68437:                         End If
  loc_1A68437:                       End If
  loc_1A68437:                     End If
  loc_1A68437:                   End If
  loc_1A68437:                 End If
  loc_1A68437:               End If
  loc_1A68437:             End If
  loc_1A68437:           End If
  loc_1A68437:         End If
  loc_1A68437:       End If
  loc_1A68437:     End If
  loc_1A68437:   End If
  loc_1A68437: End If
  loc_1A6843D: If (Cancel = 1) Then
  loc_1A68452:   var_270 = CStr(Me.FGrid1.Tag)
  loc_1A68463:   If (var_270 = "SalesRegister") Then
  loc_1A68481:     var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A68487:     MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A684A3:     var_13C = 0
  loc_1A684AC:     var_C0 = "C"
  loc_1A684C7:     Proc_34_0_14D9290(var_A8, Me.FGrid1, global_112)
  loc_1A684E0:   Else
  loc_1A684E8:     If Not (var_270 = "PartyOutStanding") Then
  loc_1A684F3:       If (var_270 = "PartyWiseOutStanding") Then
  loc_1A684F6:       End If
  loc_1A68511:       var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A68517:       MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A68533:       var_13C = 0
  loc_1A68557:       Proc_34_0_14D9290(var_A8, Me.FGrid1, global_112, var_90, "C")
  loc_1A68570:     Else
  loc_1A68578:       If Not (var_270 = "CashierCollection") Then
  loc_1A68583:         If (var_270 = "CashierCollectionMIS") Then
  loc_1A68586:         End If
  loc_1A685A1:         var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A685A7:         MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A685C3:         var_13C = 0
  loc_1A685E7:         Proc_34_0_14D9290(var_A8, Me.FGrid1, global_112, var_90, "C")
  loc_1A68600:       Else
  loc_1A6863F:         var_118 = Me.FGrid1.Tag
  loc_1A6865A:         var_128 = Me.FGrid1.Tag
  loc_1A686AD:         If (((((CStr(Me.FGrid1.Tag) = "SettleRepHall") Or (CStr(Me.FGrid1.Tag) = "TaxReportHall")) Or (CStr(var_118) = "TaxSummaryHall")) Or (CStr(var_128) = "DailyFuncSheet")) Or (CStr(Me.FGrid1.Tag) = "FunctionWiseItemDetail")) Then
  loc_1A686CB:           var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A686D1:           MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A68711:           Proc_34_0_14D9290(var_A8, Me.FGrid1, global_112, var_90, "C", 0)
  loc_1A68727:           Exit Sub
  loc_1A68728:         End If
  loc_1A68743:         var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A68749:         MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A68765:         var_13C = 0
  loc_1A68789:         Proc_34_0_14D9290(var_A8, Me.FGrid1, global_112, var_90, "N", var_13C)
  loc_1A6879F:       End If
  loc_1A6879F:     End If
  loc_1A6879F:   End If
  loc_1A687A2: Else
  loc_1A687BE:   Set var_98 = MemVar_1F951E8 
  loc_1A687CA:   Proc_6_99_1484404(var_98, Cancel, global_112, &HFF, Nothing)
  loc_1A687D5:   MemVar_1F951E8 = var_98
  loc_1A687E0: End If
  loc_1A687E5: global_202 = 0
  loc_1A687ED: MemVar_1F951E8 = Nothing
  loc_1A687F1: Exit Sub
  loc_1A687F2: ' Referenced from: 1A64E08
  loc_1A687F2: Proc_6_60_E63754(global_202, var_13C, var_13C)
  loc_1A687F7: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 'F3DA14
  'Data Table: 577EF0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D90B: Me.DGSite.Visible = False
  loc_F3D92A: If (Me.RecordCount > 0) Then
  loc_F3D969:   Set var_B4 = Me.txtSite
  loc_F3D96F:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3D977:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3D9AA:   var_B0 = Me.Fields.Item("Name")
  loc_F3D9C9:   Set var_B4 = Me.txtSite
  loc_F3D9CF:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3D9D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3D9ED: End If
  loc_F3D9F8: Set var_A8 = Me.txtSite
  loc_F3D9FE: Call 0.Method_DGSite_UnknownEvent_90 (CInt(0))
  loc_F3DA06: var_B0.SetFocus
  loc_F3DA12: Exit Sub
End Sub

Private Sub Command1_Click() 'E9EE64
  'Data Table: 577EF0
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E9EDEC: Me.Frame1.Visible = False
  loc_E9EE02: Set var_88 = Me.txtSite
  loc_E9EE08: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9EE1B: global_88 = var_8C.Tag
  loc_E9EE37: Set var_88 = Me.txtSite
  loc_E9EE3D: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9EE50: global_92 = var_8C.Text
  loc_E9EE5E: Call Proc_249_95_16526E4()
  loc_E9EE63: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 'E185FC
  'Data Table: 577EF0
  loc_E185E8: Set var_88 = Me.FGrid1
  loc_E185F9: Exit Sub
  loc_E185FA: FGrid1.DispID_FFFF = 
End Sub

Private Sub Fgrid1_UnknownEvent_14 'DFD354
  'Data Table: 577EF0
  loc_DFD350: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'DFDDE4
  'Data Table: 577EF0
  loc_DFDDE0: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'DFD014
  'Data Table: 577EF0
  loc_DFD010: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(arg_C, arg_10) '1172CF8
  'Data Table: 577EF0
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_117294E: If (arg_10 = &HD) Then
  loc_117295F:   Proc_303_0_FBACC8("	")
  loc_1172967: End If
  loc_1172971: Set var_94 = Me.GridSel
  loc_1172977: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1172998: If (CLng(var_98.Rows) < 1) Then
  loc_117299B:   Exit Sub
  loc_117299C: End If
  loc_11729B0: Set var_94 = Me.GridSel
  loc_11729B6: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_11729D8: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_11729EB:   Set var_94 = Me.GridSel
  loc_11729F1:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_11729F9:   var_98.CellFontName = "WINGDINGS"
  loc_1172A17:   Set var_94 = Me.GridSel
  loc_1172A1D:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1172A25:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_1172A3B:   Set var_94 = Me.GridSel
  loc_1172A41:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1172A52:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_1172A6A:   Set var_CC = Me.GridSel
  loc_1172A70:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_D0, 0)
  loc_1172A78:   var_100 = var_D0.TextMatrix)
  loc_1172A8E:   Set var_164 = Me.GridSel
  loc_1172A94:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_168, var_100)
  loc_1172AA5:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_1172AF3:   Set var_17C = Me.GridSel
  loc_1172AF9:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1172B01:   LateIdCallSt
  loc_1172B35:   var_1E2 = arg_C
  loc_1172B3E:   If (var_1E2 = 1) Then
  loc_1172B52:     var_86 = CInt((UBound(global_172, 1) + 1))
  loc_1172B64:     ReDim Preserve global_172(0 To CLng(var_86))
  loc_1172B78:     Set var_94 = Me.GridSel
  loc_1172B7E:     Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_1E2)
  loc_1172B9A:     global_172(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1172BA8:   Else
  loc_1172BAE:     If (var_1E2 = 2) Then
  loc_1172BC2:       var_86 = CInt((UBound(global_176, 1) + 1))
  loc_1172BD4:       ReDim Preserve global_176(0 To CLng(var_86))
  loc_1172BE8:       Set var_94 = Me.GridSel
  loc_1172BEE:       Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_180)
  loc_1172C0A:       global_176(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1172C18:     Else
  loc_1172C1E:       If (var_1E2 = 3) Then
  loc_1172C32:         var_86 = CInt((UBound(global_180, 1) + 1))
  loc_1172C44:         ReDim Preserve global_180(0 To CLng(var_86))
  loc_1172C58:         Set var_94 = Me.GridSel
  loc_1172C5E:         Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86)
  loc_1172C7A:         global_180(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1172C88:       Else
  loc_1172C8E:         If (var_1E2 = 4) Then
  loc_1172CA2:           var_86 = CInt((UBound(global_184, 1) + 1))
  loc_1172CB4:           ReDim Preserve global_184(0 To CLng(var_86))
  loc_1172CC8:           Set var_94 = Me.GridSel
  loc_1172CCE:           Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86)
  loc_1172CEA:           global_184(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1172CF5:         End If
  loc_1172CF5:       End If
  loc_1172CF5:     End If
  loc_1172CF5:   End If
  loc_1172CF5: End If
  loc_1172CF5: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_C(arg_C, arg_10) '113A130
  'Data Table: 577EF0
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_1139DCA: Set var_88 = Me.GridSel
  loc_1139DD0: Call 0.Method_GridSel_UnknownEvent_C0 (arg_C)
  loc_1139DF1: Set var_A0 = Me.GridSel
  loc_1139DF7: Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_A4)
  loc_1139E21: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_1139E24:   Exit Sub
  loc_1139E25: End If
  loc_1139E28: var_B6 = arg_C
  loc_1139E31: If (var_B6 = 1) Then
  loc_1139E4C:   Set var_88 = Me.GridSel
  loc_1139E52:   Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C)
  loc_1139E5A:   var_9C = var_8C.Col
  loc_1139EC4:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_96, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1139EE5: Else
  loc_1139EEB:   If (var_B6 = 2) Then
  loc_1139F06:     Set var_88 = Me.GridSel
  loc_1139F0C:     Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_1139F14:     var_9C = var_8C.Col
  loc_1139F7E:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_100, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1139F9F:   Else
  loc_1139FA5:     If (var_B6 = 3) Then
  loc_1139FC0:       Set var_88 = Me.GridSel
  loc_1139FC6:       Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_1139FCE:       var_9C = var_8C.Col
  loc_113A038:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_104, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_113A059:     Else
  loc_113A05F:       If (var_B6 = 4) Then
  loc_113A07A:         Set var_88 = Me.GridSel
  loc_113A080:         Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_113A0F2:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_108, arg_10, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_113A110:       End If
  loc_113A110:     End If
  loc_113A110:   End If
  loc_113A110: End If
  loc_113A122: Me.TxtSearch.Tag = CStr(arg_C)
  loc_113A12D: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E83184
  'Data Table: 577EF0
  Dim var_8C As MSHFlexGrid
  loc_E83126: Set var_88 = Me.GridSel
  loc_E8312C: Call 0.Method_GridSel_UnknownEvent_E0 (Index)
  loc_E8314D: If (CLng(var_8C.Col) <> 0) Then
  loc_E83150:   Exit Sub
  loc_E83151: End If
  loc_E8315B: Set var_88 = Me.GridSel
  loc_E83161: Call 0.Method_GridSel_UnknownEvent_E0 (Index, var_8C)
  loc_E83176: global_188 = CInt(CLng(var_8C.Row))
  loc_E83183: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_10(Index As Integer) '11CAFF8
  'Data Table: 577EF0
  Dim var_90 As MSHFlexGrid
  Dim var_A8 As MSHFlexGrid
  Dim var_C0 As CheckBox
  Dim var_D8 As Variant
  Dim var_16C As Variant
  Dim var_1BE As Integer
  Dim var_86 As Integer
  loc_11CABAA: Set var_8C = Me.GridSel
  loc_11CABB0: Call 0.Method_GridSel_UnknownEvent_100 (Index)
  loc_11CABDB: If ((CLng(var_90.Col) <> 0) Or (global_188 = 0)) Then
  loc_11CABDE:   Exit Sub
  loc_11CABDF: End If
  loc_11CABE9: Set var_8C = Me.GridSel
  loc_11CABEF: Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_11CAC10: Set var_A4 = Me.GridSel
  loc_11CAC16: Call 0.Method_GridSel_UnknownEvent_100 (Index, var_A8)
  loc_11CAC3B: Set var_BC = Me.Check1
  loc_11CAC41: Call 0.Method_GridSel_UnknownEvent_100 (Index, var_C0, var_C2)
  loc_11CAC49: ((CLng(var_90.Row) = 0) And (CLng(var_A8.Col) = 0)) = var_C0.Visible
  loc_11CAC6B: If (var_90 And (var_C2 = 0)) Then
  loc_11CAC6E:   Exit Sub
  loc_11CAC6F: End If
  loc_11CAC79: Set var_8C = Me.GridSel
  loc_11CAC7F: Call 0.Method_GridSel_UnknownEvent_100 (Index)
  loc_11CAC94: global_190 = CInt(CLng(var_90.RowSel))
  loc_11CACB0: For var_C6 = global_188 To global_190: var_88 = var_C6 'Integer
  loc_11CACC9:   Set var_8C = Me.GridSel
  loc_11CACCF:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, CVar(CLng(var_88)))
  loc_11CACD7:   var_90.Row = global_188
  loc_11CACF6:   Set var_8C = Me.GridSel
  loc_11CACFC:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_11CAD04:   var_90.Col = global_190
  loc_11CAD20:   Set var_8C = Me.GridSel
  loc_11CAD26:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_11CAD2E:   var_90.CellFontName = "WINGDINGS"
  loc_11CAD4C:   Set var_8C = Me.GridSel
  loc_11CAD52:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_11CAD5A:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_11CAD6A:   var_D8 = CVar(CLng(var_88)) 'Long
  loc_11CAD82:   Set var_8C = Me.GridSel
  loc_11CAD88:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_11CADA0:   var_16C = CVar(CLng(var_88)) 'Long
  loc_11CADEE:   Set var_A4 = Me.GridSel
  loc_11CADF4:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_A8, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_11CADFC:   LateIdCallSt
  loc_11CAE24:   var_1BE = Index
  loc_11CAE2D:   If (var_1BE = 1) Then
  loc_11CAE41:     var_86 = CInt((UBound(global_172, 1) + 1))
  loc_11CAE53:     ReDim Preserve global_172(0 To CLng(var_86))
  loc_11CAE67:     Set var_8C = Me.GridSel
  loc_11CAE6D:     Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_1BE, var_A8)
  loc_11CAE89:     global_172(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11CAE97:   Else
  loc_11CAE9D:     If (var_1BE = 2) Then
  loc_11CAEB1:       var_86 = CInt((UBound(global_176, 1) + 1))
  loc_11CAEC3:       ReDim Preserve global_176(0 To CLng(var_86))
  loc_11CAED7:       Set var_8C = Me.GridSel
  loc_11CAEDD:       Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_16C)
  loc_11CAEF9:       global_176(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11CAF07:     Else
  loc_11CAF0D:       If (var_1BE = 3) Then
  loc_11CAF21:         var_86 = CInt((UBound(global_180, 1) + 1))
  loc_11CAF33:         ReDim Preserve global_180(0 To CLng(var_86))
  loc_11CAF47:         Set var_8C = Me.GridSel
  loc_11CAF4D:         Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86)
  loc_11CAF69:         global_180(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11CAF77:       Else
  loc_11CAF7D:         If (var_1BE = 4) Then
  loc_11CAF91:           var_86 = CInt((UBound(global_184, 1) + 1))
  loc_11CAFA3:           ReDim Preserve global_184(0 To CLng(var_86))
  loc_11CAFB7:           Set var_8C = Me.GridSel
  loc_11CAFBD:           Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86)
  loc_11CAFD9:           global_184(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11CAFE4:         End If
  loc_11CAFE4:       End If
  loc_11CAFE4:     End If
  loc_11CAFE4:   End If
  loc_11CAFE7: Next var_C6 'Integer
  loc_11CAFF1: global_188 = 0
  loc_11CAFF4: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'DFDA08
  'Data Table: 577EF0
  loc_DFDA04: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'DFCCD4
  'Data Table: 577EF0
  Dim GridSel_UnknownEvent_14FF As String
  loc_DFCCD0: Exit Sub
  loc_DFCCD1: GridSel_UnknownEvent_14FF = 
End Sub

Private Sub txtSite_GotFocus(Index As Integer) 'FCB970
  'Data Table: 577EF0
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_D8 As Variant
  loc_FCB7D0: On Error Goto loc_FCB945
  loc_FCB7D6: var_8A = Index
  loc_FCB7E1: If (var_8A = CInt(0)) Then
  loc_FCB832:   Set var_98 = Me.txtSite
  loc_FCB838:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0)
  loc_FCB840:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_FCB858:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_FCB85B:     Exit Sub
  loc_FCB85C:   End If
  loc_FCB869:   Set var_98 = Me.txtSite
  loc_FCB86F:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C)
  loc_FCB877:   var_A0 = var_9C.Text
  loc_FCB87F:   var_D8 = CVar(var_A0) 'String
  loc_FCB8C4:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FCB8CD:     Me.MoveFirst
  loc_FCB8F2:     Set var_98 = Me.txtSite
  loc_FCB8F8:     Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0, "Name =")
  loc_FCB900:     0 = var_9C.Text
  loc_FCB90E:     Proc_6_17_EAAE40(var_D8, CVar(var_A0))
  loc_FCB924:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_FCB93C:   End If
  loc_FCB93C: End If
  loc_FCB941: Set var_88 = Nothing
  loc_FCB944: Exit Sub
  loc_FCB945: ' Referenced from: FCB7D0
  loc_FCB94B: Call 0.Method_arg_50 (var_A0)
  loc_FCB953: var_100 = "txtSite_GotFocus"
  loc_FCB960: Proc_6_152_10790A8(var_A0)
  loc_FCB96C: Exit Sub
End Sub

Private Sub txtSite_KeyDown(KeyCode As Integer, Shift As Integer) 'EFA2BC
  'Data Table: 577EF0
  loc_EFA1F8: On Error Goto loc_EFA291
  loc_EFA201: If (Shift = &HD) Then
  loc_EFA20C:   var_88 = "	"
  loc_EFA212:   Proc_303_0_FBACC8(var_88)
  loc_EFA21A: End If
  loc_EFA228: If (KeyCode = CInt(0)) Then
  loc_EFA243:   Set var_A0 = Nothing
  loc_EFA24E:   Set var_9C = Nothing
  loc_EFA27C:   Proc_6_69_134A630(Me.DGSite, Me.txtSite, KeyCode, global_196, Shift, &HFF)
  loc_EFA290: End If
  loc_EFA290: Exit Sub
  loc_EFA291: ' Referenced from: EFA1F8
  loc_EFA297: Call 0.Method_arg_50 (var_88, 1, var_9C, var_A0)
  loc_EFA2AC: Proc_6_152_10790A8(var_88, "txtSite_KeyDown", 0)
  loc_EFA2B8: Exit Sub
  loc_EFA2B9: StAryRecMove
End Sub

Private Sub txtSite_KeyPress(KeyAscii As Integer) 'EC10BC
  'Data Table: 577EF0
  loc_EC1024: On Error Goto loc_EC1091
  loc_EC1035: If (KeyAscii = CInt(0)) Then
  loc_EC1054:   If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_EC1066:     var_A0 = "Name"
  loc_EC1081:     Proc_6_89_1470B00(Me.txtSite, KeyAscii, global_196, arg_10)
  loc_EC1090:   End If
  loc_EC1090: End If
  loc_EC1090: Exit Sub
  loc_EC1091: ' Referenced from: EC1024
  loc_EC1097: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_EC10AC: Proc_6_152_10790A8(var_A0, "txtSite_KeyPress")
  loc_EC10B8: Exit Sub
End Sub

Private Sub txtSite_KeyUp(KeyCode As Integer, Shift As Integer) 'EDEFA0
  'Data Table: 577EF0
  loc_EDEEF0: On Error Goto loc_EDEF77
  loc_EDEF01: If (KeyCode = CInt(0)) Then
  loc_EDEF27:   If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_EDEF38:     Call txtSite_KeyDown(KeyCode, global_148)
  loc_EDEF4C:     var_A4 = "Name"
  loc_EDEF67:     Proc_6_89_1470B00(Me.txtSite, KeyCode, global_196, Shift)
  loc_EDEF76:   End If
  loc_EDEF76: End If
  loc_EDEF76: Exit Sub
  loc_EDEF77: ' Referenced from: EDEEF0
  loc_EDEF7D: Call 0.Method_arg_50 (var_A4, var_A4, &HFF)
  loc_EDEF92: Proc_6_152_10790A8(var_A4, "txtSite_KeyUp")
  loc_EDEF9E: Exit Sub
End Sub

Private Sub txtSite_LostFocus(Index As Integer) 'E88548
  'Data Table: 577EF0
  loc_E884DC: On Error Goto loc_E8851F
  loc_E884E7: Call txtSite_Validate(Index)
  loc_E88507: If (Me.FrmList.Visible = &HFF) Then
  loc_E88516:   Me.FrmList.Visible = False
  loc_E8851E: End If
  loc_E8851E: Exit Sub
  loc_E8851F: ' Referenced from: E884DC
  loc_E88525: Call 0.Method_arg_50 (var_90)
  loc_E8853A: Proc_6_152_10790A8(var_90, "txtSite_LostFocus")
  loc_E88546: Exit Sub
End Sub

Private Sub txtSite_Validate(Cancel As Boolean) 'FDC4E4
  'Data Table: 577EF0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FDC31C: On Error Goto loc_FDC4BB
  loc_FDC322: var_86 = Cancel
  loc_FDC32D: If (var_86 = CInt(0)) Then
  loc_FDC37E:   Set var_94 = Me.txtSite
  loc_FDC384:   Call 0.Method_txtSite_Validate0 (Cancel, var_98, var_9C)
  loc_FDC38C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FDC3A4:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_FDC3B5:     Set var_94 = Me.txtSite
  loc_FDC3BB:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FDC3C3:     var_98.Tag = vbNullString
  loc_FDC3DD:     Set var_94 = Me.txtSite
  loc_FDC3E3:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FDC3EB:     var_98.Text = vbNullString
  loc_FDC3FA:   Else
  loc_FDC436:     Set var_B0 = Me.txtSite
  loc_FDC43C:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FDC444:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FDC488:     var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FDC496:     Set var_B0 = Me.txtSite
  loc_FDC49C:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FDC4A4:     var_B4.Tag = var_9C
  loc_FDC4BA:   End If
  loc_FDC4BA: End If
  loc_FDC4BA: Exit Sub
  loc_FDC4BB: ' Referenced from: FDC31C
  loc_FDC4C1: Call 0.Method_arg_50 (var_9C)
  loc_FDC4C9: var_CC = "txtSite_Validate"
  loc_FDC4D6: Proc_6_152_10790A8(var_9C)
  loc_FDC4E2: Exit Sub
End Sub

Public Function global_52Get() '57A1B0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '57A1BF
  global_52 = Value
End Sub

Public Function global_56Get() '57A1CE
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '57A1DD
  global_56 = Value
End Sub

Public Function global_60Get() '57A1EC
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '57A1FB
  global_60 = Value
End Sub

Public Function global_64Get() '57A20A
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '57A219
  global_64 = Value
End Sub

Public Function global_68Get() '57A228
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '57A237
  global_68 = Value
End Sub

Public Function global_72Get() '57A246
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '57A255
  global_72 = Value
End Sub

Public Function global_76Get() '57A264
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '57A273
  global_76 = Value
End Sub

Public Function global_80Get() '57A282
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '57A291
  global_80 = Value
End Sub

Public Function global_84Get() '57A2B4
  global_84Get = global_84
End Function

Public Sub global_84Put(Value) '57A2C3
  global_84 = Value
End Sub

Public Function global_88Get() '57A2D2
  global_88Get = global_88
End Function

Public Sub global_88Put(Value) '57A2E1
  global_88 = Value
End Sub

Public Function global_92Get() '57A2F0
  global_92Get = global_92
End Function

Public Sub global_92Put(Value) '57A2FF
  global_92 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11E0BB4
  'Data Table: 577EF0
  Dim var_BC As Variant
  Dim A As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_11E0771: If ().rows < 1) Then
  loc_11E0774:   Exit Sub
  loc_11E0775: End If
  loc_11E0789: If (A.RecordCount <= 0) Then
  loc_11E0795:   Me.TEXT = vbNullString
  loc_11E0799:   Exit Sub
  loc_11E079A: End If
  loc_11E07AF: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11E07B2:   Exit Sub
  loc_11E07B3: End If
  loc_11E07BD: If (CLng(KeyAscii) = 8) Then
  loc_11E07D7:   If (Len(Me.SelText) > 1) Then
  loc_11E07EB:     var_DC = (Len(Me.SelText) - 1)
  loc_11E07F3:     Me.SelLength = var_DC
  loc_11E0803:     var_88 = CStr(Me.SelText)
  loc_11E080C:   Else
  loc_11E0815:     Me.TEXT = vbNullString
  loc_11E082F:     Call ).SetFocus
  loc_11E0840:     Me.Visible = False
  loc_11E0844:     Exit Sub
  loc_11E0845:   End If
  loc_11E0848: Else
  loc_11E085F:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_11E0864:   var_88 = CStr(var_DC)
  loc_11E0870: End If
  loc_11E0873: A.Recordset15.MoveFirst
  loc_11E08B0: If (A.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11E08F3:   A.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11E0908: Else
  loc_11E0938:   A.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_11E0948: End If
  loc_11E094A: KeyAscii = 0
  loc_11E0976: If ((A.Recordset15.AbsolutePosition <> -3) And (A.Recordset15.AbsolutePosition <> -2)) Then
  loc_11E097C:   var_BC = CVar(CellBackColLeave) 'Long
  loc_11E0995:   ).CellBackColor = index
  loc_11E09AA:   var_BC = CVar(A.Recordset15.AbsolutePosition) 'Long
  loc_11E09C3:   ).Row = index
  loc_11E09CD:   var_BC = CVar(CellBackColEnter) 'Long
  loc_11E09E6:   ).CellBackColor = index
  loc_11E0A1C:   Me.TEXT = A.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11E0A36:   Me.SelLength = CVar(Len(var_88))
  loc_11E0A4E:   var_DC = ).CellLeft
  loc_11E0A6E:   var_138 = (index + ).left)
  loc_11E0A76:   Me.left = var_138
  loc_11E0A9B:   var_DC = ).CellTop
  loc_11E0ABB:   var_138 = (index + ).top)
  loc_11E0AC3:   Me.top = var_138
  loc_11E0AE6:   If (Me.Visible = False) Then
  loc_11E0AF0:     Me.Visible = True
  loc_11E0AF4:     var_9C = 0
  loc_11E0AFD:     Call Me.ZOrder
  loc_11E0B06:     Call Me.SetFocus
  loc_11E0B2A:     Me.BackColor = ).CellBackColor
  loc_11E0B53:     Me.ForeColor = ).CellForeColor
  loc_11E0B7C:     Me.width = ).CellWidth
  loc_11E0BA5:     Me.height = ).CellHeight
  loc_11E0BB0:   End If
  loc_11E0BB0: End If
  loc_11E0BB0: Exit Sub
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF87A4
  'Data Table: 577EF0
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim A As Recordset15
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim Me As TextBox
  Dim var_E4 As Integer
  loc_FF85C4: Call Me.ListItems.Clear
  loc_FF85E1: If (A.Recordset15.RecordCount <= 0) Then
  loc_FF85E4:   ListView_Items_RecordSet_Local = 
  loc_FF85EA: End If
  loc_FF85F5: If (global_52 <> "HundiPrint") Then
  loc_FF8600:   var_104 = "All"
  loc_FF8609:   var_A0 = Me.ListItems
  loc_FF861A:   Set var_8C = var_A0.add
  loc_FF862C:   var_A0.ListItem.SubItems = 1
  loc_FF8631:   ' Referenced from: FF872C
  loc_FF8631: End If
  loc_FF8637: var_116 = A.EOF
  loc_FF8640: If Not(var_116) Then
  loc_FF866D:   var_A0 = A.Recordset15.Fields.Item("Name").Value
  loc_FF86D7:   If Not(IsNull(A.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF8706:     var_134 = CStr(A.Recordset15.Fields.Item("Code").Value)
  loc_FF870E:     Me.ListItems.add.SubItems = 1
  loc_FF8724:   End If
  loc_FF8727:   A.MoveNext
  loc_FF872C:   GoTo loc_FF8631
  loc_FF872F: End If
  loc_FF8744: var_E4 = 0
  loc_FF8763: Set var_8C = Me.FindItem
  loc_FF8774: If (var_8C Is Nothing) Then
  loc_FF8777:   ListView_Items_RecordSet_Local = 1
  loc_FF8780: Else
  loc_FF8786:   var_8C.EnsureVisible var_116
  loc_FF8790:   var_8C.Selected = True
  loc_FF8795: End If
  loc_FF8798: Set var_88 = var_8C 
  loc_FF879C: ListView_Items_RecordSet_Local = var_104
End Function

Public Sub DailyFuncSheet(formName, FRow, Fcol) '1AC4D88
  'Data Table: 577EF0
  Dim var_124 As String
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_1B4 As Variant
  Dim var_1D8 As String
  Dim var_E4 As Variant
  Dim var_1DC As Variant
  Dim var_21C As Variant
  Dim var_22C As Variant
  Dim var_250 As Variant
  Dim var_9C As Long
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_98 As Long
  Dim var_88 As Recordset15
  Dim var_B8 As Long
  Dim var_2A4 As Fields15
  Dim unk_577EF3 As Connection15
  Dim var_29C As Recordset15
  Dim var_8C As Recordset15
  Dim var_2B8 As Recordset15
  Dim var_90 As Recordset15
  Dim var_2BC As Recordset15
  Dim var_2C8 As MSHFlexGrid
  loc_1AC0E38: On Error Goto loc_1AC4D77
  loc_1AC0E41: Call 0.Method_arg_54 ("Daily Function Sheet")
  loc_1AC0E46: var_124 = "Date Between : "
  loc_1AC0E4B: var_D4 = 0
  loc_1AC0E85: var_1B4 = Me.FGrid
  loc_1AC0E9E: Set var_1DC = 1(CStr(1 & var_1B4.TextMatrix))
  loc_1AC0EA4: var_1B4.TextBox.Text = 1 & Me.FGrid.TextMatrix & " And "
  loc_1AC0ED3: var_114 = Me.FGrid
  loc_1AC0EED: Set var_1DC = 2(1 & CStr(var_114.TextMatrix))
  loc_1AC0EF3: var_114.TextBox.Text = "Detail : "
  loc_1AC0F09: var_D4 = 3
  loc_1AC0F10: var_F4 = 1
  loc_1AC0F35: If (Me.FGrid.TextMatrix = "Yes") Then
  loc_1AC0F38:   var_D4 = 1
  loc_1AC0F61:   If (Me.Check1.Value = 0) Then
  loc_1AC0F7F:     var_C0 = CStr(" AND S.CompanyCode In (" & Me.GridString1 & ") ")
  loc_1AC0FC2:     Set var_1DC = Me.Text3
  loc_1AC0FC8:     Me.Text3.Text = CStr("For Company : " & Left(Me.FormulaString1, &H73) & vbNullString)
  loc_1AC0FE1:   Else
  loc_1AC0FE4:     var_C0 = " AND ISNULL(S.CompanyCode,'')<>'' "
  loc_1AC0FF4:     Me.Text3.Text = "For Company :   All"
  loc_1AC0FFC:   End If
  loc_1AC0FFF: Else
  loc_1AC100C:   Me.Text3.Text = vbNullString
  loc_1AC1014: End If
  loc_1AC1014: var_D4 = 4
  loc_1AC101B: var_F4 = 1
  loc_1AC1029: var_134 = Me.FGrid.TextMatrix
  loc_1AC1031: var_124 = "Yes"
  loc_1AC103B: var_154 = 2
  loc_1AC107C: If CBool(1 And (CStr(Me.FGrid.TextMatrix) <> "Advance")) Then
  loc_1AC107F:   var_D4 = 2
  loc_1AC1096:   var_F4 = 0
  loc_1AC10A8:   If (Me.Check1.Value = var_F4) Then
  loc_1AC10CB:     var_C0 = CStr(CVar(var_C0 & " AND VM.Code In (") & Me.GridString2 & ") ")
  loc_1AC10DC:     var_114 = Me.FormulaString2
  loc_1AC10E3:     var_D4 = "For Venue : "
  loc_1AC10F3:     var_134 = Left(var_114, &H73)
  loc_1AC10FB:     var_144 = var_D4 & var_134 
  loc_1AC1110:     Set var_1DC = Me.Text4
  loc_1AC1116:     Me.Text4.Text = CStr(var_144 & vbNullString)
  loc_1AC112F:   Else
  loc_1AC113C:     Me.Text4.Text = "For Venue :   All"
  loc_1AC1144:   End If
  loc_1AC1147: Else
  loc_1AC114E:   Set var_1DC = Me.Text4
  loc_1AC1154:   var_1DC.Text = vbNullString
  loc_1AC115C: End If
  loc_1AC1169: Call Proc_249_99_11B3428(New, var_1DC, var_114, var_D4, var_154, (var_134 = var_124), var_F4)
  loc_1AC1171: Set var_94 = var_1DC
  loc_1AC1174: var_D4 = 2
  loc_1AC117B: var_F4 = 1
  loc_1AC11A5: If (CStr(Me.FGrid.TextMatrix) = "Advance") Then
  loc_1AC11BC:   var_1D8 = "SELECT S.DocId,S.Vno,Case When LTrim(RTrim(IsNull(S.MobileNo,'')))<>'' Then LTrim(RTrim(IsNull(S.MobileNo,''))) End ContactNo,S.GuarAtt AS Pax,S.Coverrate AS Rate,S.PartyName AS PartyName,S.NetAmount,S.BookingStatus,FunctionType.Name AS FuncType,PH.AmtCr As Advance,PH.PayType As Adv_Type,PH.Vno As Adv_No,PH.Vdate As Adv_Date,S.Remark,S.CompanyCode,SG.Name Company FROM " & "((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) Left Join PaychargeH PH On S.DocId=PH.ContraDocId And PH.VType='AD') LEFT JOIN Subgroup SG On S.CompanyCode=SG.Subcode "
  loc_1AC11E5:   var_D4 = 0
  loc_1AC11EC:   var_F4 = 1
  loc_1AC11F5:   var_114 = Me.FGrid
  loc_1AC11FA:   VarLateMemCallLdRfVar
  loc_1AC1205:   Proc_6_7_F26918(var_144, var_114, var_F4, var_D4, CVar(var_1D8 & "WHERE S.RestCOde='" & global_208 & "' " & var_C0 & " And PH.VDate Between "), var_250, -1, var_1DC)
  loc_1AC122F:   VarLateMemCallLdRfVar
  loc_1AC123A:   Proc_6_7_F26918(var_20C, Me.FGrid, 1, 1, var_F4 & var_144 & " And ", var_D4)
  loc_1AC1259:   Me.Connection15.Execute CStr(var_D4 & var_20C & " Order by PH.VDate,PH.VNo,PH.Sno"), var_114, var_D4
  loc_1AC1264:   Set var_88 = var_1DC
  loc_1AC1297: Else
  loc_1AC1297:   var_D4 = 2
  loc_1AC129E:   var_F4 = 1
  loc_1AC12C8:   If (CStr(Me.FGrid.TextMatrix) = "Cancel") Then
  loc_1AC12DF:     var_1D8 = "SELECT S.DocId,S.Vno,Case When LTrim(RTrim(IsNull(S.MobileNo,'')))<>'' Then LTrim(RTrim(IsNull(S.MobileNo,''))) End ContactNo,VM.Name AS Venue,S.GuarAtt AS Pax,S.Coverrate AS Rate,S.PartyName AS PartyName,S.NetAmount,S.BookingStatus,FunctionType.Name AS FuncType,VO.Fromdate,VO.FromTime AS ForTime,VO.Todate,VO.ToTime AS ToTime,S.Remark,S.CompanyCode,SG.Name Company FROM " & "(((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) LEFT JOIN Subgroup SG On S.CompanyCode=SG.Subcode "
  loc_1AC1308:     var_D4 = 0
  loc_1AC130F:     var_F4 = 1
  loc_1AC131D:     VarLateMemCallLdRfVar
  loc_1AC1328:     Proc_6_7_F26918(var_144, Me.FGrid, var_F4, var_D4, CVar(var_1D8 & "WHERE S.RestCOde='" & global_208 & "' " & var_C0 & " And Vo.FromDate Between "), var_250, -1)
  loc_1AC1352:     VarLateMemCallLdRfVar
  loc_1AC135D:     Proc_6_7_F26918(var_20C, Me.FGrid, 1, 1, var_1DC & var_144 & " And ")
  loc_1AC137C:     Me.Connection15.Execute CStr(var_F4 & var_20C & " And S.BookingStatus='Cancel' Order by  Vo.FromDate,Vo.FromTime"), var_D4, var_F4
  loc_1AC1387:     Set var_88 = var_1DC
  loc_1AC13BA:   Else
  loc_1AC13BA:     var_D4 = 2
  loc_1AC13C1:     var_F4 = 1
  loc_1AC13EB:     If (CStr(Me.FGrid.TextMatrix) = "Pending") Then
  loc_1AC1402:       var_1D8 = "SELECT S.DocId,S.Vno,Case When LTrim(RTrim(IsNull(S.MobileNo,'')))<>'' Then LTrim(RTrim(IsNull(S.MobileNo,''))) End ContactNo,VM.Name AS Venue,S.GuarAtt AS Pax,S.Coverrate AS Rate,S.PartyName AS PartyName,S.NetAmount,S.BookingStatus,FunctionType.Name AS FuncType,VO.Fromdate,VO.FromTime AS ForTime,VO.Todate,VO.ToTime AS ToTime,S.Remark,S.CompanyCode,SG.Name Company FROM " & "(((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) LEFT JOIN Subgroup SG On S.CompanyCode=SG.Subcode "
  loc_1AC142B:       var_D4 = 0
  loc_1AC1432:       var_F4 = 1
  loc_1AC1440:       VarLateMemCallLdRfVar
  loc_1AC144B:       Proc_6_7_F26918(var_144, Me.FGrid, var_F4, var_D4, CVar(var_1D8 & "WHERE S.RestCOde='" & global_208 & "' " & var_C0 & " And Vo.FromDate Between "), var_290)
  loc_1AC1453:       var_1B4 = -1 & var_144 
  loc_1AC1475:       VarLateMemCallLdRfVar
  loc_1AC1480:       Proc_6_7_F26918(var_20C, Me.FGrid, 1, 1, var_1DC & var_144 & " And ")
  loc_1AC1491:       var_22C = var_1DC & var_20C & " And S.BookingStatus<>'Cancel' And S.DocId Not In (Select BookDocId From HallSale1 Where RestCOde='" 
  loc_1AC149E:       var_250 = var_22C & CVar(global_208) 
  loc_1AC14B5:       Me.Connection15.Execute CStr(var_250 & "') Order by  S.DocId,Vo.FromDate,Vo.FromTime"), var_F4, var_D4
  loc_1AC14C0:       Set var_88 = var_1DC
  loc_1AC14F7:     Else
  loc_1AC150B:       var_1D8 = "SELECT S.DocId,S.Vno,Case When LTrim(RTrim(IsNull(S.MobileNo,'')))<>'' Then LTrim(RTrim(IsNull(S.MobileNo,''))) End ContactNo,VM.Name AS Venue,S.GuarAtt AS Pax,S.Coverrate AS Rate,S.PartyName AS PartyName,S.NetAmount,S.BookingStatus,FunctionType.Name AS FuncType,VO.Fromdate,VO.FromTime AS ForTime,VO.Todate,VO.ToTime AS ToTime,S.Remark,S.CompanyCode,SG.Name Company FROM " & "(((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) LEFT JOIN Subgroup SG On S.CompanyCode=SG.Subcode "
  loc_1AC1534:       var_D4 = 0
  loc_1AC1549:       VarLateMemCallLdRfVar
  loc_1AC1554:       Proc_6_7_F26918(var_144, Me.FGrid, 1, var_D4, CVar(var_1D8 & "WHERE S.RestCOde='" & global_208 & "' " & var_C0 & " And Vo.FromDate Between "))
  loc_1AC157E:       VarLateMemCallLdRfVar
  loc_1AC1589:       Proc_6_7_F26918(var_20C, Me.FGrid, 1, 1, var_250 & var_144 & " And ")
  loc_1AC1591:       var_21C = -1 & var_20C 
  loc_1AC15A8:       Me.Connection15.Execute CStr(var_1DC & var_20C & " And S.BookingStatus<>'Cancel' Order by Vo.FromDate,Vo.FromTime"), var_1DC, var_D4
  loc_1AC15B3:       Set var_88 = var_1DC
  loc_1AC15E3:     End If
  loc_1AC15E3:   End If
  loc_1AC15E3: End If
  loc_1AC15E8: var_9C = 0
  loc_1AC15EE: var_A4 = CDbl(0)
  loc_1AC15F4: var_AC = CDbl(0)
  loc_1AC15FA: var_B4 = CDbl(0)
  loc_1AC1602: var_98 = 0
  loc_1AC1619: If (var_88.RecordCount > 0) Then
  loc_1AC161F:   var_88.MoveFirst
  loc_1AC1624:   ' Referenced from: 1AC4093
  loc_1AC1633:   If Not(var_88.EOF) Then
  loc_1AC1636:     var_D4 = 2
  loc_1AC1646:     var_114 = Me.FGrid
  loc_1AC164B:     var_134 = var_114.TextMatrix
  loc_1AC1667:     If (CStr(var_134) = "Advance") Then
  loc_1AC166D:       Set var_29C = var_94 
  loc_1AC167C:       var_D4 = "VNo"
  loc_1AC169F:       Proc_6_39_E7D3A0(var_134, CVar(var_114.Recordset15.Fields.Item(var_D4)), CVar(var_B8), 1, var_D4, var_98)
  loc_1AC16B3:       If CBool(var_B4 <> var_134) Then
  loc_1AC16DC:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("VNo")), var_AC)
  loc_1AC16E6:         var_B8 = CLng(var_134)
  loc_1AC172D:         var_2A4 = var_88.Fields
  loc_1AC176C:         var_1B4 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("BookingStatus")), var_B8, var_A4) = "Cancel"), CVar(Proc_6_38_E69628(CVar(var_2A4.Item("BookingStatus")), var_9C)), "Confirm")
  loc_1AC1775:         var_BC = CStr(var_1B4)
  loc_1AC17BF:         var_C4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("companyCode")))
  loc_1AC17DC:         var_134 = CVar("SELECT VM.Name AS Venue,VO.Fromdate,VO.FromTime AS ForTime,VO.Todate,VO.ToTime AS ToTime FROM VenueOCC VO INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code " & "WHERE VO.FPDocId='") 'String
  loc_1AC17E5:         var_D4 = "DocID"
  loc_1AC180D:         var_E4 = "' Order by Vo.FromDate,Vo.FromTime"
  loc_1AC1820:         unk_577EF3.Execute CStr(var_134 & var_88.Fields.Item(var_D4).Value & var_E4), var_1B4, -1
  loc_1AC182B:         Set var_8C = var_2A4
  loc_1AC1850:         var_98 = (var_98 + 1)
  loc_1AC185E:         var_29C.AddNew var_D4, var_E4
  loc_1AC1888:         var_29C.Fields.Item("mLine").Value = vbNullString
  loc_1AC18C3:         var_29C.Fields.Item("SNo").Value = CVar(CStr(var_98) & ".")
  loc_1AC18FB:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("VNo")), var_98)
  loc_1AC1913:         var_2A4 = var_29C.Fields
  loc_1AC1923:         var_2A4.Item("FPNo").Value = var_134
  loc_1AC19B1:         var_1B4 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("BookingStatus")), var_88.Fields) = "Cancel"), CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("BookingStatus")))), "Confirm")
  loc_1AC19D9:         var_29C.Fields.Item("BookStatus").Value = var_1B4
  loc_1AC1A27:         var_29C.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC1A7E:         var_29C.Fields.Item("Remark").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remark"))))
  loc_1AC1ADE:         var_29C.Fields.Item("Company").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Company"))))
  loc_1AC1B19:         var_29C.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC1B48:         If ((var_8C.BOF = 0) And (var_8C.EOF = 0)) Then
  loc_1AC1B96:           var_29C.Fields.Item("Venue").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Venue"))))
  loc_1AC1BEE:           var_29C.Fields.Item("ForDate").Value = CVar(var_8C.Fields.Item("FromDate"))
  loc_1AC1C4A:           var_29C.Fields.Item("ForTime").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ForTime"))))
  loc_1AC1CA2:           var_29C.Fields.Item("ToDate").Value = CVar(var_8C.Fields.Item("ToDate"))
  loc_1AC1CFE:           var_29C.Fields.Item("ToTime").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ToTime"))))
  loc_1AC1D16:           var_8C.MoveNext
  loc_1AC1D1B:         End If
  loc_1AC1D66:         var_29C.Fields.Item("Pax").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pax"))))
  loc_1AC1DE3:         var_29C.Fields.Item("Rate").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_1AC1E50:         var_29C.Fields.Item("FuncType").Value = CVar(1 & Proc_6_38_E69628(CVar(var_88.Fields.Item("FuncType")), " ", 1))
  loc_1AC1E90:         var_134 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PartyName")))) 'String
  loc_1AC1EB3:         var_29C.Fields.Item("PartyName").Value = var_134
  loc_1AC1EEE:         Proc_6_47_EF6560(var_134, CVar(var_88.Fields.Item("NetAmount")))
  loc_1AC1F16:         var_29C.Fields.Item("Amount").Value = var_134
  loc_1AC1F5E:         var_134 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContactNo")))) 'String
  loc_1AC1F8C:         var_29C.Fields.Item("ContactNo").Value = Left(var_134, &H4B)
  loc_1AC1FCC:         Proc_6_47_EF6560(var_134, CVar(var_88.Fields.Item("Advance")))
  loc_1AC1FF4:         var_29C.Fields.Item("Advance").Value = var_134
  loc_1AC2054:         var_29C.Fields.Item("AdvType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Adv_type"))))
  loc_1AC20B4:         var_29C.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Adv_No"))))
  loc_1AC20CC:         var_D4 = "Adv_Date"
  loc_1AC20EF:         var_E4 = "dd/MMM/yy"
  loc_1AC20F4:         var_134 = var_E4
  loc_1AC212C:         var_29C.Fields.Item("AdvDate").Value = Format(CVar(var_88.Fields.Item(var_D4)), var_134)
  loc_1AC214E:         var_29C.Update var_D4, var_E4
  loc_1AC2180:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("Pax")), CVar(var_9C))
  loc_1AC2188:         var_144 = (1 + var_134)
  loc_1AC218E:         var_9C = CLng(Format(CVar(var_88.Fields.Item("Pax")), var_134))
  loc_1AC21CA:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("Rate")), CVar(var_A4))
  loc_1AC21D2:         var_144 = (var_9C + var_134)
  loc_1AC21D7:         var_A4 = CSng(Format(CVar(var_88.Fields.Item("Rate")), var_134))
  loc_1AC21E9:         var_E4 = CVar(var_AC) 'Double
  loc_1AC21F0:         var_D4 = "NetAmount"
  loc_1AC2213:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item(var_D4)), var_E4)
  loc_1AC221B:         var_144 = (var_A4 + var_134)
  loc_1AC2220:         var_AC = CSng(Format(CVar(var_88.Fields.Item(var_D4)), var_134))
  loc_1AC2232:       Else
  loc_1AC223D:         var_29C.AddNew var_D4, var_E4
  loc_1AC2267:         var_29C.Fields.Item("mLine").Value = vbNullString
  loc_1AC229A:         var_29C.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1AC22CC:         var_29C.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC22FE:         var_29C.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC232D:         If ((var_8C.BOF = 0) And (var_8C.EOF = 0)) Then
  loc_1AC237B:           var_29C.Fields.Item("Venue").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Venue")), var_AC))
  loc_1AC23D3:           var_29C.Fields.Item("ForDate").Value = CVar(var_8C.Fields.Item("FromDate"))
  loc_1AC242F:           var_29C.Fields.Item("ForTime").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ForTime")), 1))
  loc_1AC2487:           var_29C.Fields.Item("ToDate").Value = CVar(var_8C.Fields.Item("ToDate"))
  loc_1AC24C0:           var_134 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ToTime")))) 'String
  loc_1AC24E3:           var_29C.Fields.Item("ToTime").Value = var_134
  loc_1AC24FB:           var_8C.MoveNext
  loc_1AC2500:         End If
  loc_1AC2526:         Proc_6_47_EF6560(var_134, CVar(var_88.Fields.Item("Advance")))
  loc_1AC254E:         var_29C.Fields.Item("Advance").Value = var_134
  loc_1AC25AE:         var_29C.Fields.Item("AdvType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Adv_type"))))
  loc_1AC260E:         var_29C.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Adv_No"))))
  loc_1AC2626:         var_D4 = "Adv_Date"
  loc_1AC2649:         var_E4 = "dd/MMM/yy"
  loc_1AC264E:         var_134 = var_E4
  loc_1AC2686:         var_29C.Fields.Item("AdvDate").Value = Format(CVar(var_88.Fields.Item(var_D4)), var_134)
  loc_1AC26A8:         var_29C.Update var_D4, var_E4
  loc_1AC26AD:       End If
  loc_1AC26DA:       Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("Advance")), CVar(var_B4))
  loc_1AC26E2:       var_144 = (1 + var_134)
  loc_1AC26E7:       var_B4 = CSng(Format(CVar(var_88.Fields.Item("Advance")), var_134))
  loc_1AC26F9:       var_88.MoveNext
  loc_1AC270F:       If (var_88.EOF = &HFF) Then
  loc_1AC2712:         GoTo loc_1AC4096
  loc_1AC2715:       End If
  loc_1AC2718:       var_E4 = CVar(var_B8) 'Long
  loc_1AC2720:       var_D4 = "VNo"
  loc_1AC2743:       Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item(var_D4)), var_E4)
  loc_1AC2757:       If CBool(var_B4 <> var_134) Then
  loc_1AC275A:         ' Referenced from: 1AC2A24
  loc_1AC2769:         If Not(var_8C.EOF) Then
  loc_1AC2777:           var_29C.AddNew var_D4, var_E4
  loc_1AC27A1:           var_29C.Fields.Item("mLine").Value = vbNullString
  loc_1AC27D4:           var_29C.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1AC2806:           var_29C.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC2838:           var_29C.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC288F:           var_29C.Fields.Item("Venue").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Venue")), 1))
  loc_1AC28E7:           var_29C.Fields.Item("ForDate").Value = CVar(var_8C.Fields.Item("FromDate"))
  loc_1AC2943:           var_29C.Fields.Item("ForTime").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ForTime"))))
  loc_1AC299B:           var_29C.Fields.Item("ToDate").Value = CVar(var_8C.Fields.Item("ToDate"))
  loc_1AC29AF:           var_D4 = "ToTime"
  loc_1AC29D4:           var_134 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_D4)))) 'String
  loc_1AC29DB:           var_E4 = "ToTime"
  loc_1AC29F7:           var_29C.Fields.Item(var_E4).Value = var_134
  loc_1AC2A17:           var_29C.Update var_D4, var_E4
  loc_1AC2A1F:           var_8C.MoveNext
  loc_1AC2A24:           GoTo loc_1AC275A
  loc_1AC2A27:         End If
  loc_1AC2A27:       End If
  loc_1AC2A29:       Set var_29C = Nothing 
  loc_1AC2A30:     Else
  loc_1AC2A33:       Set var_2B8 = var_94 
  loc_1AC2A65:       Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("VNo")))
  loc_1AC2A79:       If CBool(CVar(var_B8) <> var_134) Then
  loc_1AC2AA2:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("VNo")))
  loc_1AC2AAC:         var_B8 = CLng(var_134)
  loc_1AC2AF3:         var_2A4 = var_88.Fields
  loc_1AC2B32:         var_1B4 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("BookingStatus")), var_B8) = "Cancel"), CVar(Proc_6_38_E69628(CVar(var_2A4.Item("BookingStatus")))), "Confirm")
  loc_1AC2B3B:         var_BC = CStr(var_1B4)
  loc_1AC2B85:         var_C4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("companyCode")))
  loc_1AC2BA2:         var_1D8 = "SELECT PH.Vno As Adv_No,PH.Vdate As Adv_Date,Case When PH.Vtype='AD' Then PH.AmtCr Else -PH.AmtDr End As Advance,PH.PayType As Adv_Type FROM " & "PaychargeH PH WHERE PH.VType In ('AD','AR') And PH.RestCOde='"
  loc_1AC2BB3:         var_134 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("BookingStatus")), var_B8) & global_208 & "' And PH.ContraDocId='") 'String
  loc_1AC2BBC:         var_D4 = "DocID"
  loc_1AC2BE4:         var_E4 = "' Order by PH.VDate,PH.VNo,PH.Sno"
  loc_1AC2BF7:         unk_577EF3.Execute CStr(var_134 & var_88.Fields.Item(var_D4).Value & var_E4), var_1B4, -1
  loc_1AC2C02:         Set var_90 = var_2A4
  loc_1AC2C2D:         var_98 = (var_98 + 1)
  loc_1AC2C3B:         var_2B8.AddNew var_D4, var_E4
  loc_1AC2C65:         var_2B8.Fields.Item("mLine").Value = vbNullString
  loc_1AC2CA0:         var_2B8.Fields.Item("SNo").Value = CVar(CStr(var_98) & ".")
  loc_1AC2CD8:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("VNo")), var_98)
  loc_1AC2CF0:         var_2A4 = var_2B8.Fields
  loc_1AC2D00:         var_2A4.Item("FPNo").Value = var_134
  loc_1AC2D3B:         var_2B8.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC2D6D:         var_2B8.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC2DC4:         var_2B8.Fields.Item("Remark").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remark")), var_2B8.Fields))
  loc_1AC2E24:         var_2B8.Fields.Item("Company").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Company"))))
  loc_1AC2E84:         var_2B8.Fields.Item("Venue").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Venue"))))
  loc_1AC2EDC:         var_2B8.Fields.Item("ForDate").Value = CVar(var_88.Fields.Item("FromDate"))
  loc_1AC2F38:         var_2B8.Fields.Item("ForTime").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ForTime"))))
  loc_1AC2F90:         var_2B8.Fields.Item("ToDate").Value = CVar(var_88.Fields.Item("ToDate"))
  loc_1AC2FEC:         var_2B8.Fields.Item("ToTime").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToTime"))))
  loc_1AC304C:         var_2B8.Fields.Item("Pax").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pax"))))
  loc_1AC30C9:         var_2B8.Fields.Item("Rate").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_1AC3136:         var_2B8.Fields.Item("FuncType").Value = CVar(1 & Proc_6_38_E69628(CVar(var_88.Fields.Item("FuncType")), " ", 1))
  loc_1AC3176:         var_134 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PartyName")))) 'String
  loc_1AC3199:         var_2B8.Fields.Item("PartyName").Value = var_134
  loc_1AC31D4:         Proc_6_47_EF6560(var_134, CVar(var_88.Fields.Item("NetAmount")))
  loc_1AC31FC:         var_2B8.Fields.Item("Amount").Value = var_134
  loc_1AC3244:         var_134 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContactNo")))) 'String
  loc_1AC3272:         var_2B8.Fields.Item("ContactNo").Value = Left(var_134, &H4B)
  loc_1AC32AF:         If ((var_90.BOF = 0) And (var_90.EOF = 0)) Then
  loc_1AC32D8:           Proc_6_47_EF6560(var_134, CVar(var_90.Fields.Item("Advance")))
  loc_1AC3300:           var_2B8.Fields.Item("Advance").Value = var_134
  loc_1AC3360:           var_2B8.Fields.Item("AdvType").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adv_type"))))
  loc_1AC33C0:           var_2B8.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adv_No"))))
  loc_1AC3400:           var_134 = "dd/MMM/yy"
  loc_1AC3438:           var_2B8.Fields.Item("AdvDate").Value = Format(CVar(var_90.Fields.Item("Adv_Date")), var_134)
  loc_1AC3452:           var_E4 = CVar(var_B4) 'Double
  loc_1AC3459:           var_D4 = "Advance"
  loc_1AC347C:           Proc_6_39_E7D3A0(var_134, CVar(var_90.Fields.Item(var_D4)), var_E4)
  loc_1AC3484:           var_144 = (1 + var_134)
  loc_1AC3489:           var_B4 = CSng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134))
  loc_1AC349B:           var_90.MoveNext
  loc_1AC34A0:         End If
  loc_1AC34AB:         var_2B8.Update var_D4, var_E4
  loc_1AC34DD:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("Pax")), CVar(var_9C))
  loc_1AC34E5:         var_144 = (var_B4 + var_134)
  loc_1AC34EB:         var_9C = CLng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134))
  loc_1AC3527:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("Rate")), CVar(var_A4))
  loc_1AC352F:         var_144 = (var_9C + var_134)
  loc_1AC3546:         var_E4 = CVar(var_AC) 'Double
  loc_1AC354D:         var_D4 = "NetAmount"
  loc_1AC3570:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item(var_D4)), var_E4)
  loc_1AC3578:         var_144 = (CSng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134)) + var_134)
  loc_1AC357D:         var_AC = CSng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134))
  loc_1AC358F:       Else
  loc_1AC359A:         var_2B8.AddNew var_D4, var_E4
  loc_1AC35C4:         var_2B8.Fields.Item("mLine").Value = vbNullString
  loc_1AC35F7:         var_2B8.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1AC3629:         var_2B8.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC365B:         var_2B8.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC36B2:         var_2B8.Fields.Item("Venue").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Venue")), var_AC))
  loc_1AC370A:         var_2B8.Fields.Item("ForDate").Value = CVar(var_88.Fields.Item("FromDate"))
  loc_1AC3766:         var_2B8.Fields.Item("ForTime").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ForTime")), 1))
  loc_1AC37BE:         var_2B8.Fields.Item("ToDate").Value = CVar(var_88.Fields.Item("ToDate"))
  loc_1AC37F7:         var_134 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToTime")))) 'String
  loc_1AC381A:         var_2B8.Fields.Item("ToTime").Value = var_134
  loc_1AC3852:         If ((var_90.BOF = 0) And (var_90.EOF = 0)) Then
  loc_1AC387B:           Proc_6_47_EF6560(var_134, CVar(var_90.Fields.Item("Advance")))
  loc_1AC38A3:           var_2B8.Fields.Item("Advance").Value = var_134
  loc_1AC3903:           var_2B8.Fields.Item("AdvType").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adv_type"))))
  loc_1AC3963:           var_2B8.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adv_No"))))
  loc_1AC39A3:           var_134 = "dd/MMM/yy"
  loc_1AC39DB:           var_2B8.Fields.Item("AdvDate").Value = Format(CVar(var_90.Fields.Item("Adv_Date")), var_134)
  loc_1AC39F5:           var_E4 = CVar(var_B4) 'Double
  loc_1AC39FC:           var_D4 = "Advance"
  loc_1AC3A1F:           Proc_6_39_E7D3A0(var_134, CVar(var_90.Fields.Item(var_D4)), var_E4)
  loc_1AC3A27:           var_144 = (1 + var_134)
  loc_1AC3A2C:           var_B4 = CSng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134))
  loc_1AC3A3E:           var_90.MoveNext
  loc_1AC3A43:         End If
  loc_1AC3A4E:         var_2B8.Update var_D4, var_E4
  loc_1AC3A53:       End If
  loc_1AC3A56:       var_88.MoveNext
  loc_1AC3A6C:       If (var_88.EOF = &HFF) Then
  loc_1AC3A6F:         ' Referenced from:   1AC3D57
  loc_1AC3A7E:         If Not(var_90.EOF) Then
  loc_1AC3A8C:           var_2B8.AddNew var_D4, var_E4
  loc_1AC3AB6:           var_2B8.Fields.Item("mLine").Value = vbNullString
  loc_1AC3AE9:           var_2B8.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1AC3B1B:           var_2B8.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC3B4D:           var_2B8.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC3B7F:           Proc_6_47_EF6560(var_134, CVar(var_90.Fields.Item("Advance")), var_B4)
  loc_1AC3BA7:           var_2B8.Fields.Item("Advance").Value = var_134
  loc_1AC3C07:           var_2B8.Fields.Item("AdvType").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adv_type")), 1))
  loc_1AC3C67:           var_2B8.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adv_No"))))
  loc_1AC3C7F:           var_D4 = "Adv_Date"
  loc_1AC3CA2:           var_E4 = "dd/MMM/yy"
  loc_1AC3CA7:           var_134 = var_E4
  loc_1AC3CDF:           var_2B8.Fields.Item("AdvDate").Value = Format(CVar(var_90.Fields.Item(var_D4)), var_134)
  loc_1AC3D01:           var_2B8.Update var_D4, var_E4
  loc_1AC3D33:           Proc_6_39_E7D3A0(var_134, CVar(var_90.Fields.Item("Advance")), CVar(var_B4))
  loc_1AC3D3B:           var_144 = (1 + var_134)
  loc_1AC3D40:           var_B4 = CSng(Format(CVar(var_90.Fields.Item("Advance")), var_134))
  loc_1AC3D52:           var_90.MoveNext
  loc_1AC3D57:           GoTo loc_1AC3A6F
  loc_1AC3D5A:         End If
  loc_1AC3D5D:       Else
  loc_1AC3D60:         var_E4 = CVar(var_B8) 'Long
  loc_1AC3D68:         var_D4 = "VNo"
  loc_1AC3D8B:         Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item(var_D4)), var_E4)
  loc_1AC3D9F:         If CBool(var_B4 <> var_134) Then
  loc_1AC3DA2:           ' Referenced from:     1AC408A
  loc_1AC3DB1:           If Not(var_90.EOF) Then
  loc_1AC3DBF:             var_2B8.AddNew var_D4, var_E4
  loc_1AC3DE9:             var_2B8.Fields.Item("mLine").Value = vbNullString
  loc_1AC3E1C:             var_2B8.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1AC3E4E:             var_2B8.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC3E80:             var_2B8.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC3EB2:             Proc_6_47_EF6560(var_134, CVar(var_90.Fields.Item("Advance")))
  loc_1AC3EDA:             var_2B8.Fields.Item("Advance").Value = var_134
  loc_1AC3F3A:             var_2B8.Fields.Item("AdvType").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adv_type")), 1))
  loc_1AC3F9A:             var_2B8.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Adv_No"))))
  loc_1AC3FB2:             var_D4 = "Adv_Date"
  loc_1AC3FD5:             var_E4 = "dd/MMM/yy"
  loc_1AC3FDA:             var_134 = var_E4
  loc_1AC4012:             var_2B8.Fields.Item("AdvDate").Value = Format(CVar(var_90.Fields.Item(var_D4)), var_134)
  loc_1AC4034:             var_2B8.Update var_D4, var_E4
  loc_1AC403C:             var_E4 = CVar(var_B4) 'Double
  loc_1AC4043:             var_D4 = "Advance"
  loc_1AC4066:             Proc_6_39_E7D3A0(var_134, CVar(var_90.Fields.Item(var_D4)), var_E4)
  loc_1AC406E:             var_144 = (1 + var_134)
  loc_1AC4073:             var_B4 = CSng(Format(CVar(var_90.Fields.Item(var_D4)), var_134))
  loc_1AC4085:             var_90.MoveNext
  loc_1AC408A:             GoTo loc_1AC3DA2
  loc_1AC408D:           End If
  loc_1AC408D:         End If
  loc_1AC408F:         Set var_2B8 = Nothing 
  loc_1AC4093:       End If
  loc_1AC4093:       GoTo loc_1AC1624
  loc_1AC4096:     End If
  loc_1AC4096:     ' Referenced from: 1AC2712
  loc_1AC4096:   End If
  loc_1AC4099:   Set var_2BC = var_94 
  loc_1AC40A8:   var_2BC.AddNew var_D4, var_E4
  loc_1AC40D2:   var_2BC.Fields.Item("mLine").Value = "GF"
  loc_1AC40DE:   var_E4 = "Total-->"
  loc_1AC4103:   var_2BC.Fields.Item("Venue").Value = "GF"
  loc_1AC4137:   var_2BC.Fields.Item("Pax").Value = CVar(CStr(var_9C))
  loc_1AC4193:   var_2BC.Fields.Item("Amount").Value = CVar(CStr(Format(var_AC, "0.00")))
  loc_1AC41B4:   var_E4 = "0.00"
  loc_1AC41C2:   var_D4 = var_B4
  loc_1AC41F7:   var_2BC.Fields.Item("Advance").Value = CVar(CStr(Format(var_D4, var_E4)))
  loc_1AC4219:   var_2BC.Update var_D4, var_E4
  loc_1AC4220:   Set var_2BC = Nothing 
  loc_1AC4224: End If
  loc_1AC422A: CVarUnk
  loc_1AC422F: VerifyVarObj
  loc_1AC4235: Set var_1DC = Me.FGrid1
  loc_1AC423B: LateIdStAd
  loc_1AC426B: Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_94, 1)
  loc_1AC427A: Set var_2C8 = Me.FGrid1
  loc_1AC4286: var_2C8.Tag = "DailyFuncSheet"
  loc_1AC4297: var_2C8.Cols = &H17
  loc_1AC429C: var_D4 = 0
  loc_1AC42A5: var_F4 = 0
  loc_1AC42AE: var_124 = "mLine"
  loc_1AC42B7: LateIdCallSt
  loc_1AC42BF: var_D4 = 0
  loc_1AC42C8: var_F4 = 0
  loc_1AC42D4: LateIdCallSt
  loc_1AC42DC: var_D4 = 0
  loc_1AC42E5: var_F4 = 1
  loc_1AC42EE: var_124 = "SNo"
  loc_1AC42F7: LateIdCallSt
  loc_1AC42FF: var_D4 = 1
  loc_1AC430E: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4315: LateIdCallSt
  loc_1AC431D: var_D4 = 1
  loc_1AC4326: var_F4 = &H1F4
  loc_1AC4332: LateIdCallSt
  loc_1AC433A: var_D4 = 0
  loc_1AC4343: var_F4 = 2
  loc_1AC434C: var_124 = "FPNo"
  loc_1AC4355: LateIdCallSt
  loc_1AC435D: var_D4 = 2
  loc_1AC436C: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4373: LateIdCallSt
  loc_1AC437B: var_D4 = 2
  loc_1AC4384: var_F4 = &H3E8
  loc_1AC4390: LateIdCallSt
  loc_1AC4398: var_D4 = 0
  loc_1AC43A1: var_F4 = 3
  loc_1AC43AA: var_124 = "Venue"
  loc_1AC43B3: LateIdCallSt
  loc_1AC43BB: var_D4 = 3
  loc_1AC43CA: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC43D1: LateIdCallSt
  loc_1AC43D9: var_D4 = 3
  loc_1AC43E2: var_F4 = &H7D0
  loc_1AC43EE: LateIdCallSt
  loc_1AC43F6: var_D4 = 0
  loc_1AC43FF: var_F4 = 4
  loc_1AC4408: var_124 = "Start Date"
  loc_1AC4411: LateIdCallSt
  loc_1AC4419: var_D4 = 4
  loc_1AC4428: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC442F: LateIdCallSt
  loc_1AC4437: var_D4 = 4
  loc_1AC4440: var_F4 = &H5DC
  loc_1AC444C: LateIdCallSt
  loc_1AC4454: var_D4 = 0
  loc_1AC445D: var_F4 = 5
  loc_1AC4466: var_124 = "For Time"
  loc_1AC446F: LateIdCallSt
  loc_1AC4477: var_D4 = 5
  loc_1AC4486: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC448D: LateIdCallSt
  loc_1AC4495: var_D4 = 5
  loc_1AC449E: var_F4 = &H3E8
  loc_1AC44AA: LateIdCallSt
  loc_1AC44B2: var_D4 = 0
  loc_1AC44BB: var_F4 = 6
  loc_1AC44C4: var_124 = "End Date"
  loc_1AC44CD: LateIdCallSt
  loc_1AC44D5: var_D4 = 6
  loc_1AC44E4: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC44EB: LateIdCallSt
  loc_1AC44F3: var_D4 = 6
  loc_1AC44FC: var_F4 = &H5DC
  loc_1AC4508: LateIdCallSt
  loc_1AC4510: var_D4 = 0
  loc_1AC4519: var_F4 = 7
  loc_1AC4522: var_124 = "To Time"
  loc_1AC452B: LateIdCallSt
  loc_1AC4533: var_D4 = 7
  loc_1AC4542: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4549: LateIdCallSt
  loc_1AC4551: var_D4 = 7
  loc_1AC455A: var_F4 = &H3E8
  loc_1AC4566: LateIdCallSt
  loc_1AC456E: var_D4 = 0
  loc_1AC4577: var_F4 = 8
  loc_1AC4580: var_124 = "Pax"
  loc_1AC4589: LateIdCallSt
  loc_1AC4591: var_D4 = 8
  loc_1AC45A0: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC45A7: LateIdCallSt
  loc_1AC45AF: var_D4 = 8
  loc_1AC45BE: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC45C5: LateIdCallSt
  loc_1AC45CD: var_D4 = 8
  loc_1AC45D6: var_F4 = &H3E8
  loc_1AC45E2: LateIdCallSt
  loc_1AC45EA: var_D4 = 0
  loc_1AC45F3: var_F4 = 9
  loc_1AC45FC: var_124 = "Pax Rate"
  loc_1AC4605: LateIdCallSt
  loc_1AC460D: var_D4 = 9
  loc_1AC461C: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC4623: LateIdCallSt
  loc_1AC462B: var_D4 = 9
  loc_1AC463A: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC4641: LateIdCallSt
  loc_1AC4649: var_D4 = 9
  loc_1AC4652: var_F4 = &H3E8
  loc_1AC465E: LateIdCallSt
  loc_1AC4666: var_D4 = 0
  loc_1AC466F: var_F4 = &HA
  loc_1AC4678: var_124 = " Function Type"
  loc_1AC4681: LateIdCallSt
  loc_1AC4689: var_D4 = &HA
  loc_1AC4698: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC469F: LateIdCallSt
  loc_1AC46A7: var_D4 = &HA
  loc_1AC46B0: var_F4 = &H5DC
  loc_1AC46BC: LateIdCallSt
  loc_1AC46C4: var_D4 = 0
  loc_1AC46CD: var_F4 = &HB
  loc_1AC46D6: var_124 = " Party Name"
  loc_1AC46DF: LateIdCallSt
  loc_1AC46E7: var_D4 = &HB
  loc_1AC46F6: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC46FD: LateIdCallSt
  loc_1AC4705: var_D4 = &HB
  loc_1AC470E: var_F4 = &H7D0
  loc_1AC471A: LateIdCallSt
  loc_1AC4722: var_D4 = 0
  loc_1AC472B: var_F4 = &HC
  loc_1AC4734: var_124 = "Amount"
  loc_1AC473D: LateIdCallSt
  loc_1AC4745: var_D4 = &HC
  loc_1AC4754: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC475B: LateIdCallSt
  loc_1AC4763: var_D4 = &HC
  loc_1AC4772: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC4779: LateIdCallSt
  loc_1AC4781: var_D4 = &HC
  loc_1AC478A: var_F4 = &H4B0
  loc_1AC4796: LateIdCallSt
  loc_1AC479E: var_D4 = 0
  loc_1AC47A7: var_F4 = &HD
  loc_1AC47B0: var_124 = "Advance"
  loc_1AC47B9: LateIdCallSt
  loc_1AC47C1: var_D4 = &HD
  loc_1AC47D0: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC47D7: LateIdCallSt
  loc_1AC47DF: var_D4 = &HD
  loc_1AC47EE: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC47F5: LateIdCallSt
  loc_1AC47FD: var_D4 = &HD
  loc_1AC4806: var_F4 = &H4B0
  loc_1AC4812: LateIdCallSt
  loc_1AC481A: var_D4 = 0
  loc_1AC4823: var_F4 = &HE
  loc_1AC482C: var_124 = "Type"
  loc_1AC4835: LateIdCallSt
  loc_1AC483D: var_D4 = &HE
  loc_1AC484C: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4853: LateIdCallSt
  loc_1AC485B: var_D4 = &HE
  loc_1AC486A: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4871: LateIdCallSt
  loc_1AC4879: var_D4 = &HE
  loc_1AC4882: var_F4 = &H514
  loc_1AC488E: LateIdCallSt
  loc_1AC4896: var_D4 = 0
  loc_1AC489F: var_F4 = &HF
  loc_1AC48A8: var_124 = "Rect.No."
  loc_1AC48B1: LateIdCallSt
  loc_1AC48B9: var_D4 = &HF
  loc_1AC48C8: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC48CF: LateIdCallSt
  loc_1AC48D7: var_D4 = &HF
  loc_1AC48E6: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC48ED: LateIdCallSt
  loc_1AC48F5: var_D4 = &HF
  loc_1AC48FE: var_F4 = &H44C
  loc_1AC490A: LateIdCallSt
  loc_1AC4912: var_D4 = 0
  loc_1AC491B: var_F4 = &H10
  loc_1AC4924: var_124 = "Rect.Date"
  loc_1AC492D: LateIdCallSt
  loc_1AC4935: var_D4 = &H10
  loc_1AC4944: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC494B: LateIdCallSt
  loc_1AC4953: var_D4 = &H10
  loc_1AC4962: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4969: LateIdCallSt
  loc_1AC4971: var_D4 = &H10
  loc_1AC497A: var_F4 = &H4B0
  loc_1AC4986: LateIdCallSt
  loc_1AC498E: var_D4 = 0
  loc_1AC4997: var_F4 = &H11
  loc_1AC49A0: var_124 = " ContactNo."
  loc_1AC49A9: LateIdCallSt
  loc_1AC49B1: var_D4 = &H11
  loc_1AC49C0: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC49C7: LateIdCallSt
  loc_1AC49CF: var_D4 = &H11
  loc_1AC49D8: var_F4 = 0
  loc_1AC49E4: LateIdCallSt
  loc_1AC49EC: var_D4 = 0
  loc_1AC49F5: var_F4 = &H12
  loc_1AC49FE: var_124 = "Status"
  loc_1AC4A07: LateIdCallSt
  loc_1AC4A0F: var_D4 = &H12
  loc_1AC4A1E: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4A25: LateIdCallSt
  loc_1AC4A2D: var_D4 = &H12
  loc_1AC4A3C: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4A43: LateIdCallSt
  loc_1AC4A4B: var_D4 = &H12
  loc_1AC4A54: var_F4 = &H4B0
  loc_1AC4A60: LateIdCallSt
  loc_1AC4A68: var_D4 = 0
  loc_1AC4A71: var_F4 = &H13
  loc_1AC4A7A: var_124 = "Remark"
  loc_1AC4A83: LateIdCallSt
  loc_1AC4A8B: var_D4 = &H13
  loc_1AC4A9A: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4AA1: LateIdCallSt
  loc_1AC4AA9: var_D4 = &H13
  loc_1AC4AB8: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4ABF: LateIdCallSt
  loc_1AC4AC7: var_D4 = &H13
  loc_1AC4AD0: var_F4 = &HBB8
  loc_1AC4ADC: LateIdCallSt
  loc_1AC4AE4: var_D4 = 0
  loc_1AC4AED: var_F4 = &H14
  loc_1AC4AF6: var_124 = "Company"
  loc_1AC4AFF: LateIdCallSt
  loc_1AC4B07: var_D4 = &H14
  loc_1AC4B16: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4B1D: LateIdCallSt
  loc_1AC4B25: var_D4 = &H14
  loc_1AC4B34: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC4B3B: LateIdCallSt
  loc_1AC4B43: var_D4 = &H14
  loc_1AC4B4C: var_F4 = &HBB8
  loc_1AC4B58: LateIdCallSt
  loc_1AC4B60: var_D4 = 0
  loc_1AC4B69: var_F4 = &H15
  loc_1AC4B72: var_124 = "CompanyCode"
  loc_1AC4B7B: LateIdCallSt
  loc_1AC4B83: var_D4 = &H15
  loc_1AC4B92: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC4B99: LateIdCallSt
  loc_1AC4BA1: var_D4 = &H15
  loc_1AC4BAA: var_F4 = 0
  loc_1AC4BB6: LateIdCallSt
  loc_1AC4BBE: var_D4 = 0
  loc_1AC4BC7: var_F4 = &H16
  loc_1AC4BD0: var_124 = "Mark"
  loc_1AC4BD9: LateIdCallSt
  loc_1AC4BE1: var_D4 = &H16
  loc_1AC4BF0: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC4BF7: LateIdCallSt
  loc_1AC4BFF: var_D4 = &H16
  loc_1AC4C08: var_F4 = 0
  loc_1AC4C14: LateIdCallSt
  loc_1AC4C1E: Set var_2C8 = Nothing 
  loc_1AC4C26: Set var_1DC = Me.FGrid1
  loc_1AC4C56: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1AC4C59:   var_D4 = vbNullString
  loc_1AC4C63:   Set var_1DC = Me.FGrid1
  loc_1AC4C74: End If
  loc_1AC4CAB: var_D4 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1AC4CCB: Me.FGrid1.Row = CVar(CLng(IIf(var_D4, FRow, 1)))
  loc_1AC4CEC: var_114 = Me.FGrid1.Cols
  loc_1AC4D19: var_D4 = ((Fcol <> 0) And ((CLng(var_114) - 1) >= CLng(Fcol)))
  loc_1AC4D39: Me.FGrid1.Col = CVar(CLng(IIf(var_D4, Fcol, 1)))
  loc_1AC4D55: Set var_94 = Nothing
  loc_1AC4D5D: Set var_88 = Nothing
  loc_1AC4D65: Set var_90 = Nothing
  loc_1AC4D6D: Set var_8C = Nothing
  loc_1AC4D72: IStAd
  loc_1AC4D76: Exit Sub
  loc_1AC4D77: ' Referenced from: 1AC0E38
  loc_1AC4D7F: Proc_6_60_E63754(0, Nothing, var_114, var_114, FGrid1.DispID_10000, var_D4, FGrid1.DispID_FFFF)
  loc_1AC4D84: Exit Sub
End Sub

Public Sub FunctionWiseItemDetail(formName, FRow, Fcol) '150C938
  'Data Table: 577EF0
  Dim var_F0 As Variant
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim var_B0 As Variant
  Dim var_118 As Variant
  Dim var_88 As Recordset15
  Dim var_19C As Recordset15
  Dim var_8C As Recordset15
  Dim var_1B4 As MSHFlexGrid
  loc_150BA54: On Error Goto loc_150C929
  loc_150BA5D: Call 0.Method_arg_54 ("Function Wise Item Detail")
  loc_150BA77: var_E0 = Me.FGrid
  loc_150BA90: Set var_118 = 0(CStr(1 & var_E0.TextMatrix))
  loc_150BA96: var_E0.TextBox.Text = "Function Date : "
  loc_150BAAA: var_A0 = 1
  loc_150BAD3: If (Me.Check1.Value = 0) Then
  loc_150BAF1:   var_90 = CStr(" And S1.DocId In (" & Me.GridString1 & ") ")
  loc_150BB17:   var_100 = Left(Me.FormulaString1, &H73)
  loc_150BB1F:   var_110 = "Party : " & var_100 
  loc_150BB23:   var_B0 = vbNullString
  loc_150BB34:   Set var_118 = Me.Text2
  loc_150BB3A:   Me.Text2.Text = CStr(var_110 & var_B0)
  loc_150BB53: Else
  loc_150BB5A:   Set var_118 = Me.Text2
  loc_150BB60:   var_118.Text = "For Guest :   All"
  loc_150BB68: End If
  loc_150BB75: Call Proc_249_100_10BA114(New, var_118)
  loc_150BB7D: Set var_8C = var_118
  loc_150BB94: var_114 = "SELECT S.VNO,FunctionType.Name AS FuncType,VO.Fromdate,VO.FromTime AS ForTime,VO.ToTime AS ToTime,S.PartyName AS PartyName,VM.Name AS Venue,S.GuarAtt AS Pax,S.Coverrate AS Rate,I.Name AS ItemName, ItemGrp.Name ItemGroup ,K.Name Kitchen,S.Remark FROM " & "(HallBook1 S1 LEFT JOIN ItemMast AS I ON S1.Item = I.Code Left Join Depart K on K.Code=I.Kitchen) LEFT JOIN ItemGrp ON I.ItemGroup = ItemGrp.Code LEFT JOIN HallBook S On S.DocId=S1.DocId LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code Where S.RestCode='"
  loc_150BBA8: var_A0 = 0
  loc_150BBBD: VarLateMemCallLdRfVar
  loc_150BBC8: Proc_6_7_F26918(var_110, Me.FGrid, 1, var_A0, CVar(var_114 & global_208 & "' And Vo.FromDate="))
  loc_150BBF1: Me.Connection15.Execute CStr(var_190 & var_110 & CVar(var_90) & " Order By S1.DocId,S1.Sno"), -1, var_118
  loc_150BBFC: Set var_88 = var_118
  loc_150BC32: If (var_88.RecordCount > 0) Then
  loc_150BC38:   var_88.MoveFirst
  loc_150BC3D:   ' Referenced from: 150C1AC
  loc_150BC4C:   If Not(var_88.EOF) Then
  loc_150BC52:     Set var_19C = var_8C 
  loc_150BC61:     var_19C.AddNew var_A0, var_B0
  loc_150BC8B:     var_19C.Fields.Item("mLine").Value = vbNullString
  loc_150BCBD:     Proc_6_39_E7D3A0(var_100, CVar(var_88.Fields.Item("VNo")))
  loc_150BCE5:     var_19C.Fields.Item("FPNo").Value = var_100
  loc_150BD45:     var_19C.Fields.Item("Venue").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Venue")), CVar(var_88.Fields.Item("Venue"))))
  loc_150BD9D:     var_19C.Fields.Item("ForDate").Value = CVar(var_88.Fields.Item("FromDate"))
  loc_150BDF9:     var_19C.Fields.Item("ForTime").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ForTime"))))
  loc_150BE59:     var_19C.Fields.Item("ToTime").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToTime"))))
  loc_150BEB9:     var_19C.Fields.Item("Pax").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pax"))))
  loc_150BF36:     var_19C.Fields.Item("Rate").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_150BFA3:     var_19C.Fields.Item("FuncType").Value = CVar(1 & Proc_6_38_E69628(CVar(var_88.Fields.Item("FuncType")), " ", 1))
  loc_150BFE3:     var_100 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PartyName")))) 'String
  loc_150C006:     var_19C.Fields.Item("PartyName").Value = var_100
  loc_150C041:     Proc_6_47_EF6560(var_100, CVar(var_88.Fields.Item("ItemName")))
  loc_150C069:     var_19C.Fields.Item("ItemName").Value = var_100
  loc_150C0C9:     var_19C.Fields.Item("ItemGroup").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemGroup"))))
  loc_150C129:     var_19C.Fields.Item("ItemKitchen").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Kitchen"))))
  loc_150C189:     var_19C.Fields.Item("Remark").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Remark"))))
  loc_150C1A0:     Set var_19C = Nothing 
  loc_150C1A7:     var_88.MoveNext
  loc_150C1AC:     GoTo loc_150BC3D
  loc_150C1AF:   End If
  loc_150C1AF: End If
  loc_150C1C3: If (var_8C.RecordCount > 0) Then
  loc_150C1CC:   CVarUnk
  loc_150C1D1:   VerifyVarObj
  loc_150C1D7:   Set var_118 = Me.FGrid1
  loc_150C1DD:   LateIdStAd
  loc_150C20D:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0)
  loc_150C218: End If
  loc_150C21C: Set var_1B4 = Me.FGrid1
  loc_150C228: var_1B4.Tag = "FunctionWiseItemDetail"
  loc_150C239: var_1B4.Cols = &HF
  loc_150C23E: var_A0 = 0
  loc_150C247: var_C0 = 0
  loc_150C250: var_F0 = "mLine"
  loc_150C259: LateIdCallSt
  loc_150C261: var_A0 = 0
  loc_150C26A: var_C0 = 0
  loc_150C276: LateIdCallSt
  loc_150C27E: var_A0 = 0
  loc_150C287: var_C0 = 1
  loc_150C290: var_F0 = "FPNo"
  loc_150C299: LateIdCallSt
  loc_150C2A1: var_A0 = 1
  loc_150C2B0: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C2B7: LateIdCallSt
  loc_150C2BF: var_A0 = 1
  loc_150C2C8: var_C0 = &H3E8
  loc_150C2D4: LateIdCallSt
  loc_150C2DC: var_A0 = 0
  loc_150C2E5: var_C0 = 2
  loc_150C2EE: var_F0 = "Venue"
  loc_150C2F7: LateIdCallSt
  loc_150C2FF: var_A0 = 2
  loc_150C30E: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C315: LateIdCallSt
  loc_150C31D: var_A0 = 2
  loc_150C326: var_C0 = &H7D0
  loc_150C332: LateIdCallSt
  loc_150C33A: var_A0 = 0
  loc_150C343: var_C0 = 3
  loc_150C34C: var_F0 = "Func. Date"
  loc_150C355: LateIdCallSt
  loc_150C35D: var_A0 = 3
  loc_150C36C: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C373: LateIdCallSt
  loc_150C37B: var_A0 = 3
  loc_150C384: var_C0 = &H5DC
  loc_150C390: LateIdCallSt
  loc_150C398: var_A0 = 0
  loc_150C3A1: var_C0 = 4
  loc_150C3AA: var_F0 = "For Time"
  loc_150C3B3: LateIdCallSt
  loc_150C3BB: var_A0 = 4
  loc_150C3CA: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C3D1: LateIdCallSt
  loc_150C3D9: var_A0 = 4
  loc_150C3E2: var_C0 = &H3E8
  loc_150C3EE: LateIdCallSt
  loc_150C3F6: var_A0 = 0
  loc_150C3FF: var_C0 = 5
  loc_150C408: var_F0 = "To Time"
  loc_150C411: LateIdCallSt
  loc_150C419: var_A0 = 5
  loc_150C428: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C42F: LateIdCallSt
  loc_150C437: var_A0 = 5
  loc_150C440: var_C0 = &H3E8
  loc_150C44C: LateIdCallSt
  loc_150C454: var_A0 = 0
  loc_150C45D: var_C0 = 6
  loc_150C466: var_F0 = "Pax"
  loc_150C46F: LateIdCallSt
  loc_150C477: var_A0 = 6
  loc_150C486: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C48D: LateIdCallSt
  loc_150C495: var_A0 = 6
  loc_150C4A4: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C4AB: LateIdCallSt
  loc_150C4B3: var_A0 = 6
  loc_150C4BC: var_C0 = &H3E8
  loc_150C4C8: LateIdCallSt
  loc_150C4D0: var_A0 = 0
  loc_150C4D9: var_C0 = 7
  loc_150C4E2: var_F0 = "Pax Rate"
  loc_150C4EB: LateIdCallSt
  loc_150C4F3: var_A0 = 7
  loc_150C502: var_C0 = CVar(CInt(7)) 'Integer
  loc_150C509: LateIdCallSt
  loc_150C511: var_A0 = 7
  loc_150C520: var_C0 = CVar(CInt(7)) 'Integer
  loc_150C527: LateIdCallSt
  loc_150C52F: var_A0 = 7
  loc_150C538: var_C0 = &H3E8
  loc_150C544: LateIdCallSt
  loc_150C54C: var_A0 = 0
  loc_150C555: var_C0 = 8
  loc_150C55E: var_F0 = "Func. Type"
  loc_150C567: LateIdCallSt
  loc_150C56F: var_A0 = 8
  loc_150C57E: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C585: LateIdCallSt
  loc_150C58D: var_A0 = 8
  loc_150C596: var_C0 = &H5DC
  loc_150C5A2: LateIdCallSt
  loc_150C5AA: var_A0 = 0
  loc_150C5B3: var_C0 = 9
  loc_150C5BC: var_F0 = "Party Name"
  loc_150C5C5: LateIdCallSt
  loc_150C5CD: var_A0 = 9
  loc_150C5DC: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C5E3: LateIdCallSt
  loc_150C5EB: var_A0 = 9
  loc_150C5F4: var_C0 = &H7D0
  loc_150C600: LateIdCallSt
  loc_150C608: var_A0 = 0
  loc_150C611: var_C0 = &HA
  loc_150C61A: var_F0 = "Item Name"
  loc_150C623: LateIdCallSt
  loc_150C62B: var_A0 = &HA
  loc_150C63A: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C641: LateIdCallSt
  loc_150C649: var_A0 = &HA
  loc_150C652: var_C0 = &H7D0
  loc_150C65E: LateIdCallSt
  loc_150C666: var_A0 = 0
  loc_150C66F: var_C0 = &HB
  loc_150C678: var_F0 = "Item Group"
  loc_150C681: LateIdCallSt
  loc_150C689: var_A0 = &HB
  loc_150C698: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C69F: LateIdCallSt
  loc_150C6A7: var_A0 = &HB
  loc_150C6B0: var_C0 = &H7D0
  loc_150C6BC: LateIdCallSt
  loc_150C6C4: var_A0 = 0
  loc_150C6CD: var_C0 = &HC
  loc_150C6D6: var_F0 = "Kitchen"
  loc_150C6DF: LateIdCallSt
  loc_150C6E7: var_A0 = &HC
  loc_150C6F6: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C6FD: LateIdCallSt
  loc_150C705: var_A0 = &HC
  loc_150C70E: var_C0 = &H7D0
  loc_150C71A: LateIdCallSt
  loc_150C722: var_A0 = 0
  loc_150C72B: var_C0 = &HD
  loc_150C734: var_F0 = "Remark"
  loc_150C73D: LateIdCallSt
  loc_150C745: var_A0 = &HD
  loc_150C754: var_C0 = CVar(CInt(1)) 'Integer
  loc_150C75B: LateIdCallSt
  loc_150C763: var_A0 = &HD
  loc_150C76C: var_C0 = &H7D0
  loc_150C778: LateIdCallSt
  loc_150C780: var_A0 = 0
  loc_150C789: var_C0 = &HE
  loc_150C792: var_F0 = "Mark"
  loc_150C79B: LateIdCallSt
  loc_150C7A3: var_A0 = &HE
  loc_150C7B2: var_C0 = CVar(CInt(7)) 'Integer
  loc_150C7B9: LateIdCallSt
  loc_150C7C1: var_A0 = &HE
  loc_150C7CA: var_C0 = 0
  loc_150C7D6: LateIdCallSt
  loc_150C7E0: Set var_1B4 = Nothing 
  loc_150C7E8: Set var_118 = Me.FGrid1
  loc_150C818: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_150C81B:   var_A0 = vbNullString
  loc_150C825:   Set var_118 = Me.FGrid1
  loc_150C836: End If
  loc_150C86D: var_A0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_150C88D: Me.FGrid1.Row = CVar(CLng(IIf(var_A0, FRow, 1)))
  loc_150C8AE: var_E0 = Me.FGrid1.Cols
  loc_150C8DB: var_A0 = ((Fcol <> 0) And ((CLng(var_E0) - 1) >= CLng(Fcol)))
  loc_150C8FB: Me.FGrid1.Col = CVar(CLng(IIf(var_A0, Fcol, 1)))
  loc_150C917: Set var_8C = Nothing
  loc_150C91F: Set var_88 = Nothing
  loc_150C924: IStAd
  loc_150C928: Exit Sub
  loc_150C929: ' Referenced from: 150BA54
  loc_150C931: Proc_6_60_E63754(0, Nothing, var_E0, var_E0, FGrid1.DispID_10000, var_A0, FGrid1.DispID_FFFF)
  loc_150C936: Exit Sub
End Sub

Public Sub CompanyWiseSaleHall(formName, FRow, Fcol) '1AA53D8
  'Data Table: 577EF0
  Dim var_150 As String
  Dim var_1D0 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_280 As Variant
  Dim var_1B0 As Variant
  Dim var_170 As Variant
  Dim var_1C0 As Variant
  Dim var_294 As Variant
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_144 As Double
  Dim var_14C As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_90 As Recordset15
  Dim var_D4 As Double
  Dim var_E2 As Integer
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_2A4 As Recordset15
  Dim var_2A8 As Fields15
  Dim var_2B0 As Recordset15
  Dim unk_577EF3 As Connection15
  Dim var_D8 As Recordset15
  Dim var_190 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_2C0 As Recordset15
  Dim var_2BC As Fields15
  Dim var_94 As Recordset15
  Dim var_2D0 As Recordset15
  Dim var_2D4 As Recordset15
  Dim var_2D8 As Recordset15
  Dim var_2DC As Recordset15
  Dim var_8C As Recordset15
  Dim var_2E8 As MSHFlexGrid
  loc_1AA163D: var_1D0 = CVar("WHERE H.RestCode='" & global_208 & "' AND H.VDate Between ") 'String
  loc_1AA1655: VarLateMemCallLdRfVar
  loc_1AA1660: Proc_6_7_F26918(var_1C0, Me.FGrid, 1)
  loc_1AA168A: VarLateMemCallLdRfVar
  loc_1AA1695: Proc_6_7_F26918(var_270, Me.FGrid, 1)
  loc_1AA169D: var_280 = 1 & var_270 
  loc_1AA16A2: var_98 = CStr(var_280)
  loc_1AA16C5: Call 0.Method_arg_54 ("Party Wise Sale Report", 0 & var_1C0 & " And ")
  loc_1AA16CA: var_160 = 1
  loc_1AA16F3: If (Me.Check1.Value = 0) Then
  loc_1AA1711:   var_EC = CStr(" AND B.CompanyCode In (" & Me.GridString1 & ") ")
  loc_1AA171D: End If
  loc_1AA1720: var_160 = 0
  loc_1AA175D: var_1C0 = Me.FGrid
  loc_1AA1777: Set var_294 = 1(1 & CStr(var_1C0.TextMatrix))
  loc_1AA177D: var_1C0.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_1AA179D: var_160 = 1
  loc_1AA17C6: If (Me.Check1.Value = 0) Then
  loc_1AA17CC:   var_1A0 = Me.FormulaString1
  loc_1AA17D3:   var_160 = "For Guest : "
  loc_1AA17EF:   var_170 = vbNullString
  loc_1AA1800:   Set var_294 = Me.Text2
  loc_1AA1806:   Me.Text2.Text = CStr(var_160 & Left(var_1A0, &H73) & var_170)
  loc_1AA181F: Else
  loc_1AA1826:   Set var_294 = Me.Text2
  loc_1AA182C:   var_294.Text = "For Guest :   All"
  loc_1AA1834: End If
  loc_1AA1841: Call Proc_249_110_10FD1C4(New, var_294, var_1A0, var_160)
  loc_1AA1849: Set var_8C = var_294
  loc_1AA1860: var_150 = "SELECT H.DocId, H.VNo, H.Narration, H.VDate, H.Party,B.CompanyCode,S.Name, H.NoOFPax, H.RatePerPax, H.TOTAL AS TotalPerCover, H.DiscAmt, H.Taxable AS Taxable ,H.NonTaxable AS NonTaxable,H.Tax, H.RoundOff,H.ServiceCharge ,H.NetAmt as Amount,H.RestCode From HallSale1 H Inner Join HallBook B On H.BookDocID=B.DocID Left Join SubGroup S On B.CompanyCode=S.SubCode " & var_98
  loc_1AA1877: Me.Connection15.Execute var_150 & var_EC & " AND IsNull(B.CompanyCode,'')<>'' Order By S.Name,H.VNo, H.VDate", var_1A0, -1
  loc_1AA1882: Set var_90 = var_294
  loc_1AA1897: var_124 = CDbl(0)
  loc_1AA189D: var_12C = CDbl(0)
  loc_1AA18A3: var_134 = CDbl(0)
  loc_1AA18A9: var_13C = CDbl(0)
  loc_1AA18AF: var_144 = CDbl(0)
  loc_1AA18B5: var_14C = CDbl(0)
  loc_1AA18BB: var_10C = CDbl(0)
  loc_1AA18C1: var_114 = CDbl(0)
  loc_1AA18C7: var_11C = CDbl(0)
  loc_1AA18CD: var_88 = vbNullString
  loc_1AA18E4: If (var_90.RecordCount > 0) Then
  loc_1AA18EA:   var_90.MoveFirst
  loc_1AA191B:   var_D4 = CDate(var_90.Fields.Item("VDate").Value)
  loc_1AA1928:   ' Referenced from: 1AA3D98
  loc_1AA1937:   If Not(var_90.EOF) Then
  loc_1AA1940:     var_E2 = (var_E2 + 1)
  loc_1AA197C:     If (var_14C <> Proc_6_38_E69628(CVar(var_90.Fields.Item("companyCode")), var_E8, var_E2, var_D4, var_11C, var_114, var_10C)) Then
  loc_1AA1982:       var_A0 = CDbl(0)
  loc_1AA1988:       var_A8 = CDbl(0)
  loc_1AA198E:       var_B0 = CDbl(0)
  loc_1AA1994:       var_B8 = CDbl(0)
  loc_1AA199A:       var_C0 = CDbl(0)
  loc_1AA19A0:       var_C8 = CDbl(0)
  loc_1AA19A6:       var_F4 = CDbl(0)
  loc_1AA19AC:       var_FC = CDbl(0)
  loc_1AA19B2:       var_104 = CDbl(0)
  loc_1AA19B8:       var_160 = "companyCode"
  loc_1AA19DD:       var_E8 = Proc_6_38_E69628(CVar(var_90.Fields.Item(var_160)), var_104, var_FC, var_F4, var_C8, var_C0, var_B8)
  loc_1AA19E9:       Set var_2A4 = var_8C 
  loc_1AA19F8:       var_2A4.AddNew var_160, var_170
  loc_1AA1A22:       var_2A4.Fields.Item("mLine").Value = "GF"
  loc_1AA1A53:       var_2A4.Fields.Item("SrNo").Value = vbNullString
  loc_1AA1A84:       var_2A4.Fields.Item("DocID").Value = vbNullString
  loc_1AA1AB5:       var_2A4.Fields.Item("Billdate").Value = vbNullString
  loc_1AA1B0C:       var_2A4.Fields.Item("Item").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")), var_B0, var_A8, var_A0))
  loc_1AA1B46:       var_2A4.Fields.Item("qty").Value = vbNullString
  loc_1AA1B77:       var_2A4.Fields.Item("Rate").Value = vbNullString
  loc_1AA1BA8:       var_2A4.Fields.Item("nonTaxable").Value = vbNullString
  loc_1AA1BD9:       var_2A4.Fields.Item("Taxable").Value = vbNullString
  loc_1AA1C0A:       var_2A4.Fields.Item("Tax1").Value = vbNullString
  loc_1AA1C3B:       var_2A4.Fields.Item("Tax2").Value = vbNullString
  loc_1AA1C6C:       var_2A4.Fields.Item("Tax3").Value = vbNullString
  loc_1AA1C9D:       var_2A4.Fields.Item("SrvChrg").Value = vbNullString
  loc_1AA1CCE:       var_2A4.Fields.Item("DiscAmt").Value = vbNullString
  loc_1AA1CFF:       var_2A4.Fields.Item("RoundOff").Value = vbNullString
  loc_1AA1D30:       var_2A4.Fields.Item("Amount").Value = vbNullString
  loc_1AA1D3C:       var_170 = vbNullString
  loc_1AA1D45:       var_160 = "Mark"
  loc_1AA1D61:       var_2A4.Fields.Item(var_160).Value = var_170
  loc_1AA1D78:       var_2A4.Update var_160, var_170
  loc_1AA1D7F:       Set var_2A4 = Nothing 
  loc_1AA1D83:     End If
  loc_1AA1D86:     Set var_2B0 = var_8C 
  loc_1AA1D95:     var_2B0.AddNew var_160, var_170
  loc_1AA1DBF:     var_2B0.Fields.Item("mLine").Value = vbNullString
  loc_1AA1DFA:     var_2B0.Fields.Item("SrNo").Value = CVar(CStr(var_E2) & ".")
  loc_1AA1E4F:     var_2B0.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1AA1EA3:     var_2B0.Fields.Item("Billdate").Value = CVar(var_90.Fields.Item("VNo"))
  loc_1AA1ED3:     var_1A0 = CVar(var_90.Fields.Item("Party")) 'Address
  loc_1AA1EF7:     var_2B0.Fields.Item("Item").Value = var_1A0
  loc_1AA1F2D:     var_2B0.Fields.Item("qty").Value = vbNullString
  loc_1AA1F5E:     var_2B0.Fields.Item("Rate").Value = vbNullString
  loc_1AA1F8F:     var_2B0.Fields.Item("nonTaxable").Value = vbNullString
  loc_1AA1FB0:     var_294 = var_2B0.Fields
  loc_1AA1FC0:     var_294.Item("Taxable").Value = vbNullString
  loc_1AA1FE0:     var_150 = "SELECT DISTINCT  SundryMast.Name, SundryMast.code FROM (SunTranH AS H INNER JOIN RevMast ON H.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code " & var_98
  loc_1AA1FF0:     unk_577EF3.Execute var_150 & " AND H.DELFLAG<>'D' Order by SundryMast.Name", var_1A0, -1
  loc_1AA1FFB:     Set var_D8 = var_294
  loc_1AA200B:     ' Referenced from: 1AA27F8
  loc_1AA201C:     If (var_D8.EOF = 0) Then
  loc_1AA205B:       var_1B0 = "Select sum(Amount) as TaxAmt from SunTranH where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AA20C9:       var_260 = var_1B0 & "') and Docid='" & var_90.Fields.Item("DocID").Value & "' And RestCode='" & var_90.Fields.Item("RestCode").Value 
  loc_1AA20E0:       unk_577EF3.Execute CStr(var_260 & "'"), var_280, -1
  loc_1AA20EB:       Set var_DC = var_2BC
  loc_1AA2155:       var_1B0 = "Select sum(Amount) as TaxAmt from SunTran where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AA21C3:       var_260 = var_1B0 & "') and Docid='" & var_90.Fields.Item("DocID").Value & "' And RestCode='" & var_90.Fields.Item("RestCode").Value 
  loc_1AA21DA:       unk_577EF3.Execute CStr(var_260 & "'"), var_280, -1
  loc_1AA21E5:       Set var_E0 = var_2BC
  loc_1AA2227:       If (var_D8.AbsolutePosition = 1) Then
  loc_1AA2287:         var_1D0 = "0.00"
  loc_1AA2293:         var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AA22C7:         var_2B0.Fields.Item("Tax1").Value = CVar(CStr(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0)))
  loc_1AA2347:         var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AA234E:         Proc_6_39_E7D3A0(var_1D0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_F4), 1, 1, var_2BC)
  loc_1AA2356:         var_1E0 = (var_2BC + var_1D0)
  loc_1AA235B:         var_F4 = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1AA238F:         var_294 = var_DC.Fields
  loc_1AA23D1:         var_1C0 = (var_294.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AA23D8:         Proc_6_39_E7D3A0(var_1D0, var_294.Item("TaxAmt").Value & "') and Docid='", CVar(var_10C), var_F4)
  loc_1AA23E0:         var_1E0 = (var_294 + var_1D0)
  loc_1AA23E5:         var_10C = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1AA2403:       Else
  loc_1AA2417:         If (var_D8.AbsolutePosition = 2) Then
  loc_1AA2477:           var_1D0 = "0.00"
  loc_1AA2483:           var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AA24B7:           var_2B0.Fields.Item("Tax2").Value = CVar(CStr(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0)))
  loc_1AA2537:           var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AA253E:           Proc_6_39_E7D3A0(var_1D0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_FC), 1, 1)
  loc_1AA2546:           var_1E0 = (var_10C + var_1D0)
  loc_1AA254B:           var_FC = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1AA25C1:           var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AA25C8:           Proc_6_39_E7D3A0(var_1D0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_114), var_FC)
  loc_1AA25D0:           var_1E0 = (var_144 + var_1D0)
  loc_1AA25D5:           var_114 = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1AA25F3:         Else
  loc_1AA2607:           If (var_D8.AbsolutePosition = 3) Then
  loc_1AA2667:             var_1D0 = "0.00"
  loc_1AA2673:             var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AA2684:             var_200 = CVar(CStr(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))) 'String
  loc_1AA26A7:             var_2B0.Fields.Item("Tax3").Value = var_200
  loc_1AA2727:             var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AA272E:             Proc_6_39_E7D3A0(var_1D0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_104), 1)
  loc_1AA2736:             var_1E0 = (1 + var_1D0)
  loc_1AA273B:             var_104 = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1AA277F:             var_1B0 = var_DC.Fields.Item("TaxAmt").Value
  loc_1AA27B1:             var_1C0 = (var_1B0 + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AA27B8:             Proc_6_39_E7D3A0(var_1D0, var_1B0 & "') and Docid='", CVar(var_11C), var_104)
  loc_1AA27C0:             var_1E0 = (var_114 + var_1D0)
  loc_1AA27C5:             var_11C = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1AA27E0:           End If
  loc_1AA27E0:         End If
  loc_1AA27E0:       End If
  loc_1AA27E5:       Set var_DC = Nothing
  loc_1AA27ED:       Set var_E0 = Nothing
  loc_1AA27F3:       var_D8.MoveNext
  loc_1AA27F8:       GoTo loc_1AA200B
  loc_1AA27FB:     End If
  loc_1AA2821:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("Servicecharge")), var_11C)
  loc_1AA2869:     var_2B0.Fields.Item("SrvChrg").Value = Format(var_1B0, "0.00")
  loc_1AA28A8:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("DiscAmt")), 1)
  loc_1AA28F0:     var_2B0.Fields.Item("DiscAmt").Value = Format(var_1B0, "0.00")
  loc_1AA292F:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("RoundOff")), 1, 1)
  loc_1AA2977:     var_2B0.Fields.Item("RoundOff").Value = Format(var_1B0, "0.00")
  loc_1AA29B6:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("Amount")), 1, 1)
  loc_1AA29FE:     var_2B0.Fields.Item("Amount").Value = Format(var_1B0, "0.00")
  loc_1AA2A17:     var_170 = vbNullString
  loc_1AA2A20:     var_160 = "Mark"
  loc_1AA2A3C:     var_2B0.Fields.Item(var_160).Value = var_170
  loc_1AA2A53:     var_2B0.Update var_160, var_170
  loc_1AA2A5A:     Set var_2B0 = Nothing 
  loc_1AA2A61:     Set var_2C0 = var_8C 
  loc_1AA2A70:     var_2C0.AddNew var_160, var_170
  loc_1AA2A9A:     var_2C0.Fields.Item("mLine").Value = vbNullString
  loc_1AA2ACB:     var_2C0.Fields.Item("SrNo").Value = vbNullString
  loc_1AA2B1A:     var_2C0.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1AA2B8E:     var_2C0.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YYYY")
  loc_1AA2BF2:     var_1B0 = var_90.Fields.Item("NoofPax").Value
  loc_1AA2C1D:     Proc_6_48_EF4E00(var_200, CVar(var_90.Fields.Item("RatePerPax")), 1)
  loc_1AA2C5E:     var_1D0 = "PAXs " & var_1B0 & " @ " 
  loc_1AA2C7B:     var_280 = IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("Narration")), 1, 1, 1) = vbNullString), var_1D0 & var_200, CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Narration")), 1)))
  loc_1AA2CA3:     var_2C0.Fields.Item("Item").Value = var_280
  loc_1AA2D1C:     var_2C0.Fields.Item("qty").Value = CVar(var_90.Fields.Item("NoofPax"))
  loc_1AA2D53:     Proc_6_47_EF6560(var_1B0, CVar(var_90.Fields.Item("RatePerPax")))
  loc_1AA2D7B:     var_2C0.Fields.Item("Rate").Value = var_1B0
  loc_1AA2DB5:     var_2C0.Fields.Item("nonTaxable").Value = "0.00"
  loc_1AA2DE7:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("NoofPax")))
  loc_1AA2DFB:     var_2A8 = var_90.Fields
  loc_1AA2E12:     Proc_6_39_E7D3A0(var_1D0, CVar(var_2A8.Item("RatePerPax")))
  loc_1AA2E68:     var_2C0.Fields.Item("Taxable").Value = Format((var_1B0 * var_1D0), "0.00")
  loc_1AA2EAE:     var_2C0.Fields.Item("Tax1").Value = vbNullString
  loc_1AA2EDF:     var_2C0.Fields.Item("Tax2").Value = vbNullString
  loc_1AA2F10:     var_2C0.Fields.Item("Tax3").Value = vbNullString
  loc_1AA2F41:     var_2C0.Fields.Item("SrvChrg").Value = vbNullString
  loc_1AA2F72:     var_2C0.Fields.Item("DiscAmt").Value = vbNullString
  loc_1AA2FA3:     var_2C0.Fields.Item("RoundOff").Value = vbNullString
  loc_1AA2FD4:     var_2C0.Fields.Item("Amount").Value = vbNullString
  loc_1AA2FE0:     var_170 = "*"
  loc_1AA2FE9:     var_160 = "Mark"
  loc_1AA3005:     var_2C0.Fields.Item(var_160).Value = var_170
  loc_1AA301C:     var_2C0.Update var_160, var_170
  loc_1AA3023:     Set var_2C0 = Nothing 
  loc_1AA3034:     var_170 = "SELECT HStk.DocId, HStk.VNo, HStk.VDate, HStk.Item, I.Name, HStk.QtyIss, HStk.Rate, NonTaxable=Case when HStk.TaxAmt=0 then HStk.Amount else '' end, Taxable= case when HStk.TaxAmt>0 then HStk.Amount else '' end From HallStock HStk left join Itemmast I on HStk.Item=I.Code where HStk.DocId='"
  loc_1AA303F:     var_160 = "DocID"
  loc_1AA307A:     unk_577EF3.Execute CStr(var_170 & var_90.Fields.Item(var_160).Value & "' Order By I.Name"), var_1D0, -1
  loc_1AA3085:     Set var_94 = var_2A8
  loc_1AA309F:     ' Referenced from: 1AA35DB
  loc_1AA30AE:     If Not(var_94.EOF) Then
  loc_1AA30B4:       Set var_2D0 = var_8C 
  loc_1AA30C3:       var_2D0.AddNew var_160, var_170
  loc_1AA30ED:       var_2D0.Fields.Item("mLine").Value = vbNullString
  loc_1AA311E:       var_2D0.Fields.Item("SrNo").Value = vbNullString
  loc_1AA316D:       var_2D0.Fields.Item("DocID").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1AA31A9:       var_1B0 = "DD/MM/YYYY"
  loc_1AA31E1:       var_2D0.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("VDate")), var_1B0)
  loc_1AA323B:       var_2D0.Fields.Item("Item").Value = CVar(var_94.Fields.Item("Name"))
  loc_1AA327F:       var_2A8 = var_2D0.Fields
  loc_1AA328F:       var_2A8.Item("qty").Value = CVar(var_94.Fields.Item("QtyIss"))
  loc_1AA32C6:       Proc_6_39_E7D3A0(var_1B0, CVar(var_94.Fields.Item("Rate")), 1, 1, var_2A8)
  loc_1AA330E:       var_2D0.Fields.Item("Rate").Value = Format(var_1B0, "0.00")
  loc_1AA334D:       Proc_6_39_E7D3A0(var_1B0, CVar(var_94.Fields.Item("nonTaxable")), 1, 1)
  loc_1AA3395:       var_2D0.Fields.Item("nonTaxable").Value = Format(var_1B0, "0.00")
  loc_1AA33D4:       Proc_6_39_E7D3A0(var_1B0, CVar(var_94.Fields.Item("Taxable")), 1, 1)
  loc_1AA341C:       var_2D0.Fields.Item("Taxable").Value = Format(var_1B0, "0.00")
  loc_1AA345A:       var_2D0.Fields.Item("Tax1").Value = vbNullString
  loc_1AA348B:       var_2D0.Fields.Item("Tax2").Value = vbNullString
  loc_1AA34BC:       var_2D0.Fields.Item("Tax3").Value = vbNullString
  loc_1AA34ED:       var_2D0.Fields.Item("SrvChrg").Value = vbNullString
  loc_1AA351E:       var_2D0.Fields.Item("DiscAmt").Value = vbNullString
  loc_1AA354F:       var_2D0.Fields.Item("RoundOff").Value = vbNullString
  loc_1AA3580:       var_2D0.Fields.Item("Amount").Value = vbNullString
  loc_1AA358C:       var_170 = "*"
  loc_1AA3595:       var_160 = "Mark"
  loc_1AA35B1:       var_2D0.Fields.Item(var_160).Value = var_170
  loc_1AA35C8:       var_2D0.Update var_160, var_170
  loc_1AA35CF:       Set var_2D0 = Nothing 
  loc_1AA35D6:       var_94.MoveNext
  loc_1AA35DB:       GoTo loc_1AA309F
  loc_1AA35DE:     End If
  loc_1AA360B:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("nonTaxable")), CVar(var_A8), 1, 1)
  loc_1AA3613:     var_1C0 = (1 + var_1B0)
  loc_1AA3618:     var_A8 = CSng("0.00")
  loc_1AA3654:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("Taxable")), CVar(var_A0), var_A8)
  loc_1AA365C:     var_1C0 = (1 + var_1B0)
  loc_1AA3661:     var_A0 = CSng("0.00")
  loc_1AA369D:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("DiscAmt")), CVar(var_C0))
  loc_1AA36A5:     var_1C0 = (var_A0 + var_1B0)
  loc_1AA36AA:     var_C0 = CSng("0.00")
  loc_1AA36E6:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("RoundOff")), CVar(var_B8))
  loc_1AA36EE:     var_1C0 = (var_C0 + var_1B0)
  loc_1AA36F3:     var_B8 = CSng("0.00")
  loc_1AA372F:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("Servicecharge")), CVar(var_C8))
  loc_1AA3737:     var_1C0 = (var_B8 + var_1B0)
  loc_1AA373C:     var_C8 = CSng("0.00")
  loc_1AA3778:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("Amount")), CVar(var_B0))
  loc_1AA3780:     var_1C0 = (var_C8 + var_1B0)
  loc_1AA3785:     var_B0 = CSng("0.00")
  loc_1AA37C1:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("nonTaxable")), CVar(var_12C))
  loc_1AA37C9:     var_1C0 = (var_B0 + var_1B0)
  loc_1AA37CE:     var_12C = CSng("0.00")
  loc_1AA380A:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("Taxable")), CVar(var_124))
  loc_1AA3812:     var_1C0 = (var_12C + var_1B0)
  loc_1AA3817:     var_124 = CSng("0.00")
  loc_1AA3853:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("DiscAmt")), CVar(var_144))
  loc_1AA385B:     var_1C0 = (var_124 + var_1B0)
  loc_1AA3860:     var_144 = CSng("0.00")
  loc_1AA389C:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("RoundOff")), CVar(var_13C))
  loc_1AA38A4:     var_1C0 = (var_144 + var_1B0)
  loc_1AA38A9:     var_13C = CSng("0.00")
  loc_1AA38E5:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("Servicecharge")), CVar(var_14C))
  loc_1AA38ED:     var_1C0 = (var_13C + var_1B0)
  loc_1AA38F2:     var_14C = CSng("0.00")
  loc_1AA3904:     var_170 = CVar(var_134) 'Double
  loc_1AA392E:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("Amount")), var_170)
  loc_1AA3936:     var_1C0 = (var_14C + var_1B0)
  loc_1AA393B:     var_134 = CSng("0.00")
  loc_1AA394D:     var_90.MoveNext
  loc_1AA3963:     If (var_90.EOF = &HFF) Then
  loc_1AA3966:       GoTo loc_1AA3D9B
  loc_1AA3969:     End If
  loc_1AA396F:     var_160 = "companyCode"
  loc_1AA39A2:     If (var_13C <> Proc_6_38_E69628(CVar(var_90.Fields.Item(var_160)), var_E8, var_134)) Then
  loc_1AA39A8:       Set var_2D4 = var_8C 
  loc_1AA39B7:       var_2D4.AddNew var_160, var_170
  loc_1AA39E1:       var_2D4.Fields.Item("mLine").Value = "GF"
  loc_1AA39ED:       var_170 = "Total-->"
  loc_1AA3A12:       var_2D4.Fields.Item("Item").Value = "GF"
  loc_1AA3A66:       var_2D4.Fields.Item("nonTaxable").Value = Format(var_A8, "0.00")
  loc_1AA3AC1:       var_2D4.Fields.Item("Taxable").Value = Format(var_A0, "0.00")
  loc_1AA3B1C:       var_2D4.Fields.Item("Tax1").Value = Format(var_F4, "0.00")
  loc_1AA3B77:       var_2D4.Fields.Item("Tax2").Value = Format(var_FC, "0.00")
  loc_1AA3BD2:       var_2D4.Fields.Item("Tax3").Value = Format(var_104, "0.00")
  loc_1AA3C2D:       var_2D4.Fields.Item("SrvChrg").Value = Format(var_C8, "0.00")
  loc_1AA3C88:       var_2D4.Fields.Item("DiscAmt").Value = Format(var_C0, "0.00")
  loc_1AA3CE3:       var_2D4.Fields.Item("RoundOff").Value = Format(var_B8, "0.00")
  loc_1AA3D3E:       var_2D4.Fields.Item("Amount").Value = Format(var_B0, "0.00")
  loc_1AA3D51:       var_170 = vbNullString
  loc_1AA3D5A:       var_160 = "Mark"
  loc_1AA3D76:       var_2D4.Fields.Item(var_160).Value = var_170
  loc_1AA3D8D:       var_2D4.Update var_160, var_170
  loc_1AA3D94:       Set var_2D4 = Nothing 
  loc_1AA3D98:     End If
  loc_1AA3D98:     GoTo loc_1AA1928
  loc_1AA3D9B:     ' Referenced from: 1AA3966
  loc_1AA3D9B:   End If
  loc_1AA3D9B: End If
  loc_1AA3D9E: Set var_2D8 = var_8C 
  loc_1AA3DAD: var_2D8.AddNew var_160, var_170
  loc_1AA3DD7: var_2D8.Fields.Item("mLine").Value = "GF"
  loc_1AA3DE3: var_170 = "Total-->"
  loc_1AA3E08: var_2D8.Fields.Item("Item").Value = "GF"
  loc_1AA3E5C: var_2D8.Fields.Item("nonTaxable").Value = Format(var_A8, "0.00")
  loc_1AA3EB7: var_2D8.Fields.Item("Taxable").Value = Format(var_A0, "0.00")
  loc_1AA3F12: var_2D8.Fields.Item("Tax1").Value = Format(var_F4, "0.00")
  loc_1AA3F6D: var_2D8.Fields.Item("Tax2").Value = Format(var_FC, "0.00")
  loc_1AA3FC8: var_2D8.Fields.Item("Tax3").Value = Format(var_104, "0.00")
  loc_1AA4023: var_2D8.Fields.Item("SrvChrg").Value = Format(var_C8, "0.00")
  loc_1AA407E: var_2D8.Fields.Item("DiscAmt").Value = Format(var_C0, "0.00")
  loc_1AA40D9: var_2D8.Fields.Item("RoundOff").Value = Format(var_B8, "0.00")
  loc_1AA4134: var_2D8.Fields.Item("Amount").Value = Format(var_B0, "0.00")
  loc_1AA4147: var_170 = vbNullString
  loc_1AA4150: var_160 = "Mark"
  loc_1AA416C: var_2D8.Fields.Item(var_160).Value = var_170
  loc_1AA4183: var_2D8.Update var_160, var_170
  loc_1AA418A: Set var_2D8 = Nothing 
  loc_1AA4191: Set var_2DC = var_8C 
  loc_1AA41A0: var_2DC.AddNew var_160, var_170
  loc_1AA41CA: var_2DC.Fields.Item("mLine").Value = "GF"
  loc_1AA41D6: var_170 = "Grand Total-->"
  loc_1AA41FB: var_2DC.Fields.Item("Item").Value = "GF"
  loc_1AA424F: var_2DC.Fields.Item("nonTaxable").Value = Format(var_12C, "0.00")
  loc_1AA42AA: var_2DC.Fields.Item("Taxable").Value = Format(var_124, "0.00")
  loc_1AA4305: var_2DC.Fields.Item("Tax1").Value = Format(var_10C, "0.00")
  loc_1AA4360: var_2DC.Fields.Item("Tax2").Value = Format(var_114, "0.00")
  loc_1AA43BB: var_2DC.Fields.Item("Tax3").Value = Format(var_11C, "0.00")
  loc_1AA4416: var_2DC.Fields.Item("SrvChrg").Value = Format(var_14C, "0.00")
  loc_1AA4471: var_2DC.Fields.Item("DiscAmt").Value = Format(var_144, "0.00")
  loc_1AA44CC: var_2DC.Fields.Item("RoundOff").Value = Format(var_13C, "0.00")
  loc_1AA44EE: var_1A0 = "0.00"
  loc_1AA4527: var_2DC.Fields.Item("Amount").Value = Format(var_134, var_1A0)
  loc_1AA453A: var_170 = vbNullString
  loc_1AA4543: var_160 = "Mark"
  loc_1AA455F: var_2DC.Fields.Item(var_160).Value = var_170
  loc_1AA4576: var_2DC.Update var_160, var_170
  loc_1AA457D: Set var_2DC = Nothing 
  loc_1AA45A9: Me.FGrid1.Rows = 2
  loc_1AA45C5: If (var_8C.RecordCount > 0) Then
  loc_1AA45CE:   CVarUnk
  loc_1AA45D3:   VerifyVarObj
  loc_1AA45D9:   Set var_294 = Me.FGrid1
  loc_1AA45DF:   LateIdStAd
  loc_1AA4609:   Set var_294 = Me.FGrid1
  loc_1AA460F:   Proc_96_13_FAD8C4(var_294, 0, 0, var_294, var_8C, Me.FGrid1.Text, 1, 1)
  loc_1AA461A: End If
  loc_1AA461E: Set var_2E8 = Me.FGrid1
  loc_1AA462A: var_2E8.Tag = "CompanyWiseSaleHall"
  loc_1AA463B: var_2E8.Cols = &H11
  loc_1AA4640: var_160 = 0
  loc_1AA4649: var_180 = 0
  loc_1AA4652: var_1F0 = "mLine"
  loc_1AA465B: LateIdCallSt
  loc_1AA4663: var_160 = 0
  loc_1AA466C: var_180 = 0
  loc_1AA4678: LateIdCallSt
  loc_1AA4680: var_160 = 0
  loc_1AA4689: var_180 = 1
  loc_1AA4692: var_1F0 = "SNo."
  loc_1AA469B: LateIdCallSt
  loc_1AA46A3: var_160 = 1
  loc_1AA46AC: var_180 = &H1F4
  loc_1AA46B8: LateIdCallSt
  loc_1AA46C0: var_160 = 0
  loc_1AA46C9: var_180 = 2
  loc_1AA46D2: var_1F0 = "Doc Id"
  loc_1AA46DB: LateIdCallSt
  loc_1AA46E3: var_160 = 2
  loc_1AA46EC: var_180 = 0
  loc_1AA46F8: LateIdCallSt
  loc_1AA4700: var_160 = 0
  loc_1AA4709: var_180 = 3
  loc_1AA4712: var_1F0 = "Bill Date"
  loc_1AA471B: LateIdCallSt
  loc_1AA4723: var_160 = 3
  loc_1AA472C: var_180 = &H4B0
  loc_1AA4738: LateIdCallSt
  loc_1AA4740: var_160 = 0
  loc_1AA4749: var_180 = 4
  loc_1AA4752: var_1F0 = "Item Name"
  loc_1AA475B: LateIdCallSt
  loc_1AA4763: var_160 = 4
  loc_1AA476C: var_180 = &HC80
  loc_1AA4778: LateIdCallSt
  loc_1AA4780: var_160 = 0
  loc_1AA4789: var_180 = 5
  loc_1AA4792: var_1F0 = "Qty"
  loc_1AA479B: LateIdCallSt
  loc_1AA47A3: var_160 = 5
  loc_1AA47B2: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA47B9: LateIdCallSt
  loc_1AA47C1: var_160 = 5
  loc_1AA47D0: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA47D7: LateIdCallSt
  loc_1AA47DF: var_160 = 5
  loc_1AA47E8: var_180 = &H320
  loc_1AA47F4: LateIdCallSt
  loc_1AA47FC: var_160 = 0
  loc_1AA4805: var_180 = 6
  loc_1AA480E: var_1F0 = "Rate"
  loc_1AA4817: LateIdCallSt
  loc_1AA481F: var_160 = 6
  loc_1AA482E: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4835: LateIdCallSt
  loc_1AA483D: var_160 = 6
  loc_1AA484C: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4853: LateIdCallSt
  loc_1AA485B: var_160 = 6
  loc_1AA4864: var_180 = &H4B0
  loc_1AA4870: LateIdCallSt
  loc_1AA4878: var_160 = 0
  loc_1AA4881: var_180 = 7
  loc_1AA488A: var_1F0 = "Non-Taxable"
  loc_1AA4893: LateIdCallSt
  loc_1AA489B: var_160 = 7
  loc_1AA48AA: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA48B1: LateIdCallSt
  loc_1AA48B9: var_160 = 7
  loc_1AA48C8: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA48CF: LateIdCallSt
  loc_1AA48D7: var_160 = 7
  loc_1AA48E0: var_180 = &H640
  loc_1AA48EC: LateIdCallSt
  loc_1AA48F4: var_160 = 0
  loc_1AA48FD: var_180 = 8
  loc_1AA4906: var_1F0 = "Taxable"
  loc_1AA490F: LateIdCallSt
  loc_1AA4917: var_160 = 8
  loc_1AA4926: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA492D: LateIdCallSt
  loc_1AA4935: var_160 = 8
  loc_1AA4944: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA494B: LateIdCallSt
  loc_1AA4953: var_160 = 8
  loc_1AA495C: var_180 = &H640
  loc_1AA4968: LateIdCallSt
  loc_1AA4984: var_150 = "SELECT DISTINCT  SundryMast.Name, SundryMast.code FROM (SunTranH AS H INNER JOIN RevMast ON H.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code " & var_98
  loc_1AA4994: unk_577EF3.Execute var_150 & " AND H.DELFLAG<>'D' Order by SundryMast.Name", var_1A0, -1
  loc_1AA499F: Set var_D8 = var_294
  loc_1AA49AF: ' Referenced from: 1AA5021
  loc_1AA49C0: If (var_D8.EOF = 0) Then
  loc_1AA49D7:   If (var_D8.RecordCount = 1) Then
  loc_1AA49DA:     var_170 = 0
  loc_1AA49E3:     var_190 = 9
  loc_1AA4A17:     var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA4A1E:     LateIdCallSt
  loc_1AA4A34:     var_160 = 9
  loc_1AA4A3D:     var_180 = &H640
  loc_1AA4A49:     LateIdCallSt
  loc_1AA4A51:     var_160 = 9
  loc_1AA4A60:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4A67:     LateIdCallSt
  loc_1AA4A6F:     var_160 = 9
  loc_1AA4A7E:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4A85:     LateIdCallSt
  loc_1AA4A8D:     var_160 = 0
  loc_1AA4A96:     var_180 = &HA
  loc_1AA4A9F:     var_1F0 = "Tax2"
  loc_1AA4AA8:     LateIdCallSt
  loc_1AA4AB0:     var_160 = &HA
  loc_1AA4AB9:     var_180 = &H640
  loc_1AA4AC5:     LateIdCallSt
  loc_1AA4ACD:     var_160 = &HA
  loc_1AA4ADC:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4AE3:     LateIdCallSt
  loc_1AA4AEB:     var_160 = &HA
  loc_1AA4AFA:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4B01:     LateIdCallSt
  loc_1AA4B09:     var_160 = 0
  loc_1AA4B12:     var_180 = &HB
  loc_1AA4B1B:     var_1F0 = "Tax3"
  loc_1AA4B24:     LateIdCallSt
  loc_1AA4B2C:     var_160 = &HB
  loc_1AA4B35:     var_180 = &H640
  loc_1AA4B41:     LateIdCallSt
  loc_1AA4B49:     var_160 = &HB
  loc_1AA4B58:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4B5F:     LateIdCallSt
  loc_1AA4B67:     var_160 = &HB
  loc_1AA4B76:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4B7D:     LateIdCallSt
  loc_1AA4B88:   Else
  loc_1AA4B9C:     If (var_D8.RecordCount = 2) Then
  loc_1AA4BB3:       If (var_D8.AbsolutePosition = 1) Then
  loc_1AA4BB6:         var_170 = 0
  loc_1AA4BBF:         var_190 = 9
  loc_1AA4BF3:         var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA4BFA:         LateIdCallSt
  loc_1AA4C10:         var_160 = 9
  loc_1AA4C19:         var_180 = &H640
  loc_1AA4C25:         LateIdCallSt
  loc_1AA4C2D:         var_160 = 9
  loc_1AA4C3C:         var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4C43:         LateIdCallSt
  loc_1AA4C4B:         var_160 = 9
  loc_1AA4C5A:         var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4C61:         LateIdCallSt
  loc_1AA4C6C:       Else
  loc_1AA4C6C:         var_170 = 0
  loc_1AA4C75:         var_190 = &HA
  loc_1AA4CA9:         var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA4CB0:         LateIdCallSt
  loc_1AA4CC6:         var_160 = &HA
  loc_1AA4CCF:         var_180 = &H640
  loc_1AA4CDB:         LateIdCallSt
  loc_1AA4CE3:         var_160 = &HA
  loc_1AA4CF2:         var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4CF9:         LateIdCallSt
  loc_1AA4D01:         var_160 = &HA
  loc_1AA4D10:         var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4D17:         LateIdCallSt
  loc_1AA4D1F:       End If
  loc_1AA4D1F:       var_160 = 0
  loc_1AA4D28:       var_180 = &HB
  loc_1AA4D31:       var_1F0 = "Tax3"
  loc_1AA4D3A:       LateIdCallSt
  loc_1AA4D42:       var_160 = &HB
  loc_1AA4D4B:       var_180 = &H640
  loc_1AA4D57:       LateIdCallSt
  loc_1AA4D5F:       var_160 = &HB
  loc_1AA4D6E:       var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4D75:       LateIdCallSt
  loc_1AA4D7D:       var_160 = &HB
  loc_1AA4D8C:       var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4D93:       LateIdCallSt
  loc_1AA4D9E:     Else
  loc_1AA4DB2:       If (var_D8.RecordCount > 2) Then
  loc_1AA4DC9:         If (var_D8.AbsolutePosition = 1) Then
  loc_1AA4DCC:           var_170 = 0
  loc_1AA4DD5:           var_190 = 9
  loc_1AA4E09:           var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA4E10:           LateIdCallSt
  loc_1AA4E26:           var_160 = 9
  loc_1AA4E2F:           var_180 = &H640
  loc_1AA4E3B:           LateIdCallSt
  loc_1AA4E43:           var_160 = 9
  loc_1AA4E52:           var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4E59:           LateIdCallSt
  loc_1AA4E61:           var_160 = 9
  loc_1AA4E70:           var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4E77:           LateIdCallSt
  loc_1AA4E82:         Else
  loc_1AA4E96:           If (var_D8.AbsolutePosition = 2) Then
  loc_1AA4E99:             var_170 = 0
  loc_1AA4EA2:             var_190 = &HA
  loc_1AA4ED6:             var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA4EDD:             LateIdCallSt
  loc_1AA4EF3:             var_160 = &HA
  loc_1AA4EFC:             var_180 = &H640
  loc_1AA4F08:             LateIdCallSt
  loc_1AA4F10:             var_160 = &HA
  loc_1AA4F1F:             var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4F26:             LateIdCallSt
  loc_1AA4F2E:             var_160 = &HA
  loc_1AA4F3D:             var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4F44:             LateIdCallSt
  loc_1AA4F4F:           Else
  loc_1AA4F63:             If (var_D8.AbsolutePosition = 3) Then
  loc_1AA4F66:               var_170 = 0
  loc_1AA4F6F:               var_190 = &HB
  loc_1AA4FA3:               var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA4FAA:               LateIdCallSt
  loc_1AA4FC0:               var_160 = &HB
  loc_1AA4FC9:               var_180 = &H640
  loc_1AA4FD5:               LateIdCallSt
  loc_1AA4FDD:               var_160 = &HB
  loc_1AA4FEC:               var_180 = CVar(CInt(7)) 'Integer
  loc_1AA4FF3:               LateIdCallSt
  loc_1AA4FFB:               var_160 = &HB
  loc_1AA500A:               var_180 = CVar(CInt(7)) 'Integer
  loc_1AA5011:               LateIdCallSt
  loc_1AA5019:             End If
  loc_1AA5019:           End If
  loc_1AA5019:         End If
  loc_1AA5019:       End If
  loc_1AA5019:     End If
  loc_1AA5019:   End If
  loc_1AA501C:   var_D8.MoveNext
  loc_1AA5021:   GoTo loc_1AA49AF
  loc_1AA5024: End If
  loc_1AA5024: var_160 = 0
  loc_1AA502D: var_180 = &HC
  loc_1AA5036: var_1F0 = "SRV. Charge"
  loc_1AA503F: LateIdCallSt
  loc_1AA5047: var_160 = &HC
  loc_1AA5056: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA505D: LateIdCallSt
  loc_1AA5065: var_160 = &HC
  loc_1AA5074: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA507B: LateIdCallSt
  loc_1AA5083: var_160 = &HC
  loc_1AA508C: var_180 = &H640
  loc_1AA5098: LateIdCallSt
  loc_1AA50A0: var_160 = 0
  loc_1AA50A9: var_180 = &HD
  loc_1AA50B2: var_1F0 = "Discount"
  loc_1AA50BB: LateIdCallSt
  loc_1AA50C3: var_160 = &HD
  loc_1AA50D2: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA50D9: LateIdCallSt
  loc_1AA50E1: var_160 = &HD
  loc_1AA50F0: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA50F7: LateIdCallSt
  loc_1AA50FF: var_160 = &HD
  loc_1AA5108: var_180 = &H578
  loc_1AA5114: LateIdCallSt
  loc_1AA511C: var_160 = 0
  loc_1AA5125: var_180 = &HE
  loc_1AA512E: var_1F0 = "ROff."
  loc_1AA5137: LateIdCallSt
  loc_1AA513F: var_160 = &HE
  loc_1AA514E: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA5155: LateIdCallSt
  loc_1AA515D: var_160 = &HE
  loc_1AA516C: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA5173: LateIdCallSt
  loc_1AA517B: var_160 = &HE
  loc_1AA5184: var_180 = &H320
  loc_1AA5190: LateIdCallSt
  loc_1AA5198: var_160 = 0
  loc_1AA51A1: var_180 = &HF
  loc_1AA51AA: var_1F0 = "Net Amount"
  loc_1AA51B3: LateIdCallSt
  loc_1AA51BB: var_160 = &HF
  loc_1AA51CA: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA51D1: LateIdCallSt
  loc_1AA51D9: var_160 = &HF
  loc_1AA51E8: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA51EF: LateIdCallSt
  loc_1AA51F7: var_160 = &HF
  loc_1AA5200: var_180 = &H640
  loc_1AA520C: LateIdCallSt
  loc_1AA5214: var_160 = 0
  loc_1AA521D: var_180 = &H10
  loc_1AA5226: var_1F0 = "MARK"
  loc_1AA522F: LateIdCallSt
  loc_1AA5237: var_160 = &H10
  loc_1AA5240: var_180 = 0
  loc_1AA524C: LateIdCallSt
  loc_1AA5256: Set var_2E8 = Nothing 
  loc_1AA526E: If (var_90.RecordCount <= 0) Then
  loc_1AA5276:   global_152 = 0
  loc_1AA5279:   Exit Sub
  loc_1AA527A: End If
  loc_1AA527E: Set var_294 = Me.FGrid1
  loc_1AA52AE: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1AA52B1:   var_160 = vbNullString
  loc_1AA52BB:   Set var_294 = Me.FGrid1
  loc_1AA52CC: End If
  loc_1AA5303: var_160 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1AA5323: Me.FGrid1.Row = CVar(CLng(IIf(var_160, FRow, 1)))
  loc_1AA5371: var_160 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1AA5391: Me.FGrid1.Col = CVar(CLng(IIf(var_160, Fcol, 1)))
  loc_1AA53AD: Set var_8C = Nothing
  loc_1AA53B5: Set var_90 = Nothing
  loc_1AA53BD: Set var_DC = Nothing
  loc_1AA53C5: Set var_E0 = Nothing
  loc_1AA53CD: Set var_D8 = Nothing
  loc_1AA53D2: IStAd
  loc_1AA53D6: Exit Sub
End Sub

Public Sub ItemWiseSaleHall(formName, FRow, Fcol) '144D4CC
  'Data Table: 577EF0
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim var_124 As Variant
  Dim var_164 As Variant
  Dim var_1F4 As Variant
  Dim var_9A As Integer
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_220 As Recordset15
  Dim var_CC As Variant
  Dim var_184 As Variant
  Dim var_230 As Recordset15
  Dim var_8C As Recordset15
  Dim var_23C As MSHFlexGrid
  loc_144C9C4: On Error Goto loc_144D4BB
  loc_144C9CD: Call 0.Method_arg_54 ("Item Wise Sales Report")
  loc_144C9D5: var_BC = 0
  loc_144CA12: var_164 = Me.FGrid
  loc_144CA2C: Set var_184 = 1(1 & CStr(var_164.TextMatrix))
  loc_144CA32: var_164.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_144CA5F: Call Proc_249_101_FC08A8(New, var_184)
  loc_144CA67: Set var_8C = var_184
  loc_144CA7F: If (global_208 = MemVar_1F95078 & "BANQ") Then
  loc_144CA85:   var_94 = "IDC"
  loc_144CA8B: Else
  loc_144CA8E:   var_94 = "ODC"
  loc_144CA91: End If
  loc_144CAA5: var_110 = "SELECT Max(H.VDate) AS SDate,Max(I.Name) AS Item,Sum(H.QtyIss) AS Qty,Max(H.Unit) AS Unit,Max(H.Rate) AS Rate,Sum(Amount) AS Amount " & "FROM HallStock H INNER JOIN ItemMast I ON H.Item = I.Code "
  loc_144CABD: var_BC = 0
  loc_144CAD2: VarLateMemCallLdRfVar
  loc_144CADD: Proc_6_7_F26918(var_164, Me.FGrid, 1, var_BC, CVar(var_110 & "Group By H.VType,H.VDate,H.Item HAVING H.VType='" & var_94 & "' AND H.VDate Between "))
  loc_144CB07: VarLateMemCallLdRfVar
  loc_144CB12: Proc_6_7_F26918(var_1E4, Me.FGrid, 1, 1, var_214 & var_164 & " AND ")
  loc_144CB1A: var_1F4 = -1 & var_1E4 
  loc_144CB28: Me.Connection15.Execute CStr(var_1F4), var_184, var_BC
  loc_144CB33: Set var_88 = var_184
  loc_144CB5F: var_9A = 0
  loc_144CB65: var_A4 = CDbl(0)
  loc_144CB6B: var_AC = CDbl(0)
  loc_144CB70: var_8E = 0
  loc_144CB87: If (var_88.RecordCount > 0) Then
  loc_144CB8D:   var_88.MoveFirst
  loc_144CB92:   ' Referenced from: 144CEB7
  loc_144CBA1:   If Not(var_88.EOF) Then
  loc_144CBA7:     Set var_220 = var_8C 
  loc_144CBB1:     var_8E = (var_8E + 1)
  loc_144CBBF:     var_220.AddNew var_BC, var_CC
  loc_144CBE9:     var_220.Fields.Item("mLine").Value = vbNullString
  loc_144CC24:     var_220.Fields.Item("SNo").Value = CVar(CStr(var_8E) & ".")
  loc_144CC79:     var_220.Fields.Item("Item").Value = CVar(var_88.Fields.Item("Item"))
  loc_144CCD5:     var_220.Fields.Item("qty").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("qty")), var_8E, var_8E, var_AC))
  loc_144CD35:     var_220.Fields.Item("Unit").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), var_A4))
  loc_144CDB2:     var_220.Fields.Item("Rate").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_144CDD0:     var_BC = "Amount"
  loc_144CDF3:     var_CC = "0.00"
  loc_144CDF8:     var_10C = var_CC
  loc_144CE35:     var_220.Fields.Item("Amount").Value = CVar(CStr(Format(CVar(var_88.Fields.Item(var_BC)), var_10C)))
  loc_144CE5B:     var_220.Update var_BC, var_CC
  loc_144CE63:     var_CC = CVar(var_A4) 'Double
  loc_144CE6A:     var_BC = "Amount"
  loc_144CE8D:     Proc_6_39_E7D3A0(var_10C, CVar(var_88.Fields.Item(var_BC)), var_CC, 1, 1)
  loc_144CE95:     var_164 = (1 + var_10C)
  loc_144CE9A:     var_A4 = CSng(Format(CVar(var_88.Fields.Item(var_BC)), var_10C))
  loc_144CEAB:     Set var_220 = Nothing 
  loc_144CEB2:     var_88.MoveNext
  loc_144CEB7:     GoTo loc_144CB92
  loc_144CEBA:   End If
  loc_144CEBD:   Set var_230 = var_8C 
  loc_144CECC:   var_230.AddNew var_BC, var_CC
  loc_144CEF6:   var_230.Fields.Item("mLine").Value = "GF"
  loc_144CF02:   var_CC = "Total-->"
  loc_144CF27:   var_230.Fields.Item("Item").Value = "GF"
  loc_144CF3D:   var_CC = "0.00"
  loc_144CF4B:   var_BC = var_A4
  loc_144CF80:   var_230.Fields.Item("Amount").Value = CVar(CStr(Format(var_BC, var_CC)))
  loc_144CFA2:   var_230.Update var_BC, var_CC
  loc_144CFA9:   Set var_230 = Nothing 
  loc_144CFAD: End If
  loc_144CFC1: If (var_8C.RecordCount > 0) Then
  loc_144CFCA:   CVarUnk
  loc_144CFCF:   VerifyVarObj
  loc_144CFD5:   Set var_184 = Me.FGrid1
  loc_144CFDB:   LateIdStAd
  loc_144D00B:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_8C, 1)
  loc_144D016: End If
  loc_144D01A: Set var_23C = Me.FGrid1
  loc_144D026: var_23C.Tag = "ItemWiseSaleHall"
  loc_144D037: var_23C.Cols = 8
  loc_144D03C: var_BC = 0
  loc_144D045: var_DC = 0
  loc_144D04E: var_124 = "mLine"
  loc_144D057: LateIdCallSt
  loc_144D05F: var_BC = 0
  loc_144D068: var_DC = 0
  loc_144D074: LateIdCallSt
  loc_144D07C: var_BC = 0
  loc_144D085: var_DC = 1
  loc_144D08E: var_124 = "SNo"
  loc_144D097: LateIdCallSt
  loc_144D09F: var_BC = 1
  loc_144D0AE: var_DC = CVar(CInt(1)) 'Integer
  loc_144D0B5: LateIdCallSt
  loc_144D0BD: var_BC = 1
  loc_144D0C6: var_DC = &H1F4
  loc_144D0D2: LateIdCallSt
  loc_144D0DA: var_BC = 0
  loc_144D0E3: var_DC = 2
  loc_144D0EC: var_124 = "Item"
  loc_144D0F5: LateIdCallSt
  loc_144D0FD: var_BC = 2
  loc_144D10C: var_DC = CVar(CInt(1)) 'Integer
  loc_144D113: LateIdCallSt
  loc_144D11B: var_BC = 2
  loc_144D124: var_DC = &HC80
  loc_144D130: LateIdCallSt
  loc_144D138: var_BC = 0
  loc_144D141: var_DC = 3
  loc_144D14A: var_124 = "Qty Issue"
  loc_144D153: LateIdCallSt
  loc_144D15B: var_BC = 3
  loc_144D16A: var_DC = CVar(CInt(1)) 'Integer
  loc_144D171: LateIdCallSt
  loc_144D179: var_BC = 3
  loc_144D182: var_DC = &H5DC
  loc_144D18E: LateIdCallSt
  loc_144D196: var_BC = 0
  loc_144D19F: var_DC = 4
  loc_144D1A8: var_124 = "Unit"
  loc_144D1B1: LateIdCallSt
  loc_144D1B9: var_BC = 4
  loc_144D1C8: var_DC = CVar(CInt(1)) 'Integer
  loc_144D1CF: LateIdCallSt
  loc_144D1D7: var_BC = 4
  loc_144D1E6: var_DC = CVar(CInt(1)) 'Integer
  loc_144D1ED: LateIdCallSt
  loc_144D1F5: var_BC = 4
  loc_144D1FE: var_DC = &H3E8
  loc_144D20A: LateIdCallSt
  loc_144D212: var_BC = 0
  loc_144D21B: var_DC = 5
  loc_144D224: var_124 = "Rate"
  loc_144D22D: LateIdCallSt
  loc_144D235: var_BC = 5
  loc_144D244: var_DC = CVar(CInt(7)) 'Integer
  loc_144D24B: LateIdCallSt
  loc_144D253: var_BC = 5
  loc_144D262: var_DC = CVar(CInt(7)) 'Integer
  loc_144D269: LateIdCallSt
  loc_144D271: var_BC = 5
  loc_144D27A: var_DC = &H4B0
  loc_144D286: LateIdCallSt
  loc_144D28E: var_BC = 0
  loc_144D297: var_DC = 6
  loc_144D2A0: var_124 = "Amount"
  loc_144D2A9: LateIdCallSt
  loc_144D2B1: var_BC = 6
  loc_144D2C0: var_DC = CVar(CInt(7)) 'Integer
  loc_144D2C7: LateIdCallSt
  loc_144D2CF: var_BC = 6
  loc_144D2DE: var_DC = CVar(CInt(7)) 'Integer
  loc_144D2E5: LateIdCallSt
  loc_144D2ED: var_BC = 6
  loc_144D2F6: var_DC = &H6A4
  loc_144D302: LateIdCallSt
  loc_144D30A: var_BC = 0
  loc_144D313: var_DC = 7
  loc_144D31C: var_124 = "Mark"
  loc_144D325: LateIdCallSt
  loc_144D32D: var_BC = 7
  loc_144D33C: var_DC = CVar(CInt(7)) 'Integer
  loc_144D343: LateIdCallSt
  loc_144D34B: var_BC = 7
  loc_144D354: var_DC = 0
  loc_144D360: LateIdCallSt
  loc_144D36A: Set var_23C = Nothing 
  loc_144D372: Set var_184 = Me.FGrid1
  loc_144D3A2: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_144D3A5:   var_BC = vbNullString
  loc_144D3AF:   Set var_184 = Me.FGrid1
  loc_144D3C0: End If
  loc_144D3F7: var_BC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_144D417: Me.FGrid1.Row = CVar(CLng(IIf(var_BC, FRow, 1)))
  loc_144D438: var_FC = Me.FGrid1.Cols
  loc_144D465: var_BC = ((Fcol <> 0) And ((CLng(var_FC) - 1) >= CLng(Fcol)))
  loc_144D485: Me.FGrid1.Col = CVar(CLng(IIf(var_BC, Fcol, 1)))
  loc_144D4A1: Set var_8C = Nothing
  loc_144D4A9: Set var_88 = Nothing
  loc_144D4B1: Set var_98 = Nothing
  loc_144D4B6: IStAd
  loc_144D4BA: Exit Sub
  loc_144D4BB: ' Referenced from: 144C9C4
  loc_144D4C3: Proc_6_60_E63754(0, Nothing, var_FC, var_FC, FGrid1.DispID_10000, var_BC, FGrid1.DispID_FFFF)
  loc_144D4C8: Exit Sub
End Sub

Public Sub CoverAnalysis(formName, FRow, Fcol) '1466AB4
  'Data Table: 577EF0
  Dim var_10C As String
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_130 As String
  Dim var_13C As String
  Dim var_9A As Integer
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_220 As Recordset15
  Dim var_CC As Variant
  Dim var_134 As Variant
  Dim var_230 As Recordset15
  Dim var_8C As Recordset15
  Dim var_23C As MSHFlexGrid
  loc_1465F20: On Error Goto loc_1466AA6
  loc_1465F29: Call 0.Method_arg_54 ("Cover Analysis Report")
  loc_1465F43: var_FC = Me.FGrid
  loc_1465F5C: Set var_134 = 0(CStr(1 & var_FC.TextMatrix))
  loc_1465F62: var_FC.TextBox.Text = "From Date  : "
  loc_1465F8B: var_FC = Me.FGrid
  loc_1465F98: var_12C = 1 & var_FC.TextMatrix 
  loc_1465FA4: Set var_134 = 1(CStr(var_12C))
  loc_1465FAA: var_FC.TextBox.Text = "To Date  : "
  loc_1465FCB: Call Proc_249_102_FA3ADC(New)
  loc_1465FD3: Set var_8C = var_134
  loc_1465FEB: If (global_208 = MemVar_1F95078 & "BANQ") Then
  loc_1465FF1:   var_94 = "IBOOK"
  loc_1465FF7: Else
  loc_1465FFA:   var_94 = "OBOOK"
  loc_1465FFD: End If
  loc_1466011: var_130 = "SELECT max(S.VDate) AS FuncDate,sum(S.GuarAtt) AS Pax, " & "Sum(GuarAtt * CoverRate) AS Amount,sum(GuarAtt * CoverRate)/sum(GuarAtt) AS Average "
  loc_146601F: var_13C = var_130 & "FROM HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code " & "GROUP BY S.VType,S.VDate HAVING S.VType='"
  loc_1466030: var_BC = 0
  loc_1466045: VarLateMemCallLdRfVar
  loc_1466050: Proc_6_7_F26918(var_12C, Me.FGrid, 1, var_BC, CVar(var_13C & var_94 & "' AND S.VDate Between "))
  loc_146607A: VarLateMemCallLdRfVar
  loc_1466085: Proc_6_7_F26918(var_1E0, Me.FGrid, 1, 1)
  loc_146609B: Me.Connection15.Execute CStr(var_214 & var_12C & " AND " & var_1E0), -1, var_134
  loc_14660A6: Set var_88 = var_134
  loc_14660D4: var_9A = 0
  loc_14660DA: var_A4 = CDbl(0)
  loc_14660E0: var_AC = CDbl(0)
  loc_14660E5: var_8E = 0
  loc_14660FC: If (var_88.RecordCount > 0) Then
  loc_1466102:   var_88.MoveFirst
  loc_1466107:   ' Referenced from: 1466483
  loc_1466116:   If Not(var_88.EOF) Then
  loc_146611C:     Set var_220 = var_8C 
  loc_1466126:     var_8E = (var_8E + 1)
  loc_1466134:     var_220.AddNew var_BC, var_CC
  loc_146615E:     var_220.Fields.Item("mLine").Value = vbNullString
  loc_1466199:     var_220.Fields.Item("SNo").Value = CVar(CStr(var_8E) & ".")
  loc_146620E:     var_220.Fields.Item("FuncDate").Value = Format(CVar(var_88.Fields.Item("FuncDate")), "dd/MMM/yy")
  loc_1466270:     var_220.Fields.Item("Pax").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pax")), 1, 1, var_8E, var_8E))
  loc_14662ED:     var_220.Fields.Item("Amount").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00")))
  loc_146630B:     var_BC = "Average"
  loc_146632E:     var_CC = "0.00"
  loc_1466333:     var_11C = var_CC
  loc_1466370:     var_220.Fields.Item("Average").Value = CVar(CStr(Format(CVar(var_88.Fields.Item(var_BC)), var_11C)))
  loc_1466396:     var_220.Update var_BC, var_CC
  loc_14663C7:     Proc_6_39_E7D3A0(var_11C, CVar(var_88.Fields.Item("Pax")), CVar(var_9A), 1, 1, 1)
  loc_14663CF:     var_12C = (1 + var_11C)
  loc_14663D4:     var_9A = CInt(Format(CVar(var_88.Fields.Item("Pax")), var_11C))
  loc_1466410:     Proc_6_39_E7D3A0(var_11C, CVar(var_88.Fields.Item("Amount")), CVar(var_A4), var_9A)
  loc_1466418:     var_12C = (var_AC + var_11C)
  loc_146641D:     var_A4 = CSng(Format(CVar(var_88.Fields.Item("Amount")), var_11C))
  loc_146642F:     var_CC = CVar(var_AC) 'Double
  loc_1466436:     var_BC = "Average"
  loc_1466459:     Proc_6_39_E7D3A0(var_11C, CVar(var_88.Fields.Item(var_BC)), var_CC, var_A4)
  loc_1466461:     var_12C = (var_A4 + var_11C)
  loc_1466466:     var_AC = CSng(Format(CVar(var_88.Fields.Item(var_BC)), var_11C))
  loc_1466477:     Set var_220 = Nothing 
  loc_146647E:     var_88.MoveNext
  loc_1466483:     GoTo loc_1466107
  loc_1466486:   End If
  loc_1466489:   Set var_230 = var_8C 
  loc_1466498:   var_230.AddNew var_BC, var_CC
  loc_14664C2:   var_230.Fields.Item("mLine").Value = "GF"
  loc_14664CE:   var_CC = "Total-->"
  loc_14664F3:   var_230.Fields.Item("FuncDate").Value = "GF"
  loc_1466527:   var_230.Fields.Item("Pax").Value = CVar(CStr(var_9A))
  loc_1466583:   var_230.Fields.Item("Amount").Value = CVar(CStr(Format(var_A4, "0.00")))
  loc_14665A4:   var_CC = "0.00"
  loc_14665B2:   var_BC = var_AC
  loc_14665E7:   var_230.Fields.Item("Average").Value = CVar(CStr(Format(var_BC, var_CC)))
  loc_1466609:   var_230.Update var_BC, var_CC
  loc_1466610:   Set var_230 = Nothing 
  loc_1466614: End If
  loc_1466628: If (var_8C.RecordCount > 0) Then
  loc_1466631:   CVarUnk
  loc_1466636:   VerifyVarObj
  loc_146663C:   Set var_134 = Me.FGrid1
  loc_1466642:   LateIdStAd
  loc_1466672:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_8C, 1)
  loc_146667D: End If
  loc_1466681: Set var_23C = Me.FGrid1
  loc_146668D: var_23C.Tag = "CoverAnalysis"
  loc_146669E: var_23C.Cols = 7
  loc_14666A3: var_BC = 0
  loc_14666AC: var_DC = 0
  loc_14666B5: var_10C = "mLine"
  loc_14666BE: LateIdCallSt
  loc_14666C6: var_BC = 0
  loc_14666CF: var_DC = 0
  loc_14666DB: LateIdCallSt
  loc_14666E3: var_BC = 0
  loc_14666EC: var_DC = 1
  loc_14666F5: var_10C = "SNo"
  loc_14666FE: LateIdCallSt
  loc_1466706: var_BC = 1
  loc_1466715: var_DC = CVar(CInt(1)) 'Integer
  loc_146671C: LateIdCallSt
  loc_1466724: var_BC = 1
  loc_146672D: var_DC = &H1F4
  loc_1466739: LateIdCallSt
  loc_1466741: var_BC = 0
  loc_146674A: var_DC = 2
  loc_1466753: var_10C = "Function Date"
  loc_146675C: LateIdCallSt
  loc_1466764: var_BC = 2
  loc_1466773: var_DC = CVar(CInt(1)) 'Integer
  loc_146677A: LateIdCallSt
  loc_1466782: var_BC = 2
  loc_146678B: var_DC = &H6A4
  loc_1466797: LateIdCallSt
  loc_146679F: var_BC = 0
  loc_14667A8: var_DC = 3
  loc_14667B1: var_10C = "No Of Cover"
  loc_14667BA: LateIdCallSt
  loc_14667C2: var_BC = 3
  loc_14667D1: var_DC = CVar(CInt(1)) 'Integer
  loc_14667D8: LateIdCallSt
  loc_14667E0: var_BC = 3
  loc_14667E9: var_DC = &H5DC
  loc_14667F5: LateIdCallSt
  loc_14667FD: var_BC = 0
  loc_1466806: var_DC = 4
  loc_146680F: var_10C = "Sales Amount"
  loc_1466818: LateIdCallSt
  loc_1466820: var_BC = 4
  loc_146682F: var_DC = CVar(CInt(7)) 'Integer
  loc_1466836: LateIdCallSt
  loc_146683E: var_BC = 4
  loc_146684D: var_DC = CVar(CInt(7)) 'Integer
  loc_1466854: LateIdCallSt
  loc_146685C: var_BC = 4
  loc_1466865: var_DC = &H76C
  loc_1466871: LateIdCallSt
  loc_1466879: var_BC = 0
  loc_1466882: var_DC = 5
  loc_146688B: var_10C = "Average Cover"
  loc_1466894: LateIdCallSt
  loc_146689C: var_BC = 5
  loc_14668AB: var_DC = CVar(CInt(7)) 'Integer
  loc_14668B2: LateIdCallSt
  loc_14668BA: var_BC = 5
  loc_14668C9: var_DC = CVar(CInt(7)) 'Integer
  loc_14668D0: LateIdCallSt
  loc_14668D8: var_BC = 5
  loc_14668E1: var_DC = &H6A4
  loc_14668ED: LateIdCallSt
  loc_14668F5: var_BC = 0
  loc_14668FE: var_DC = 6
  loc_1466907: var_10C = "Mark"
  loc_1466910: LateIdCallSt
  loc_1466918: var_BC = 6
  loc_1466927: var_DC = CVar(CInt(7)) 'Integer
  loc_146692E: LateIdCallSt
  loc_1466936: var_BC = 6
  loc_146693F: var_DC = 0
  loc_146694B: LateIdCallSt
  loc_1466955: Set var_23C = Nothing 
  loc_146695D: Set var_134 = Me.FGrid1
  loc_146698D: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1466990:   var_BC = vbNullString
  loc_146699A:   Set var_134 = Me.FGrid1
  loc_14669AB: End If
  loc_14669E2: var_BC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1466A02: Me.FGrid1.Row = CVar(CLng(IIf(var_BC, FRow, 1)))
  loc_1466A23: var_FC = Me.FGrid1.Cols
  loc_1466A50: var_BC = ((Fcol <> 0) And ((CLng(var_FC) - 1) >= CLng(Fcol)))
  loc_1466A70: Me.FGrid1.Col = CVar(CLng(IIf(var_BC, Fcol, 1)))
  loc_1466A8C: Set var_8C = Nothing
  loc_1466A94: Set var_88 = Nothing
  loc_1466A9C: Set var_98 = Nothing
  loc_1466AA1: IStAd
  loc_1466AA5: Exit Sub
  loc_1466AA6: ' Referenced from: 1465F20
  loc_1466AAE: Proc_6_60_E63754(0, Nothing, var_FC, var_FC, FGrid1.DispID_10000, var_BC, FGrid1.DispID_FFFF)
  loc_1466AB3: Exit Sub
End Sub

Public Sub TaxReportHall(formName, FRow, Fcol) '1C30580
  'Data Table: 577EF0
  Dim var_25C As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_30C As Variant
  Dim var_310 As String
  Dim var_314 As Variant
  Dim var_344 As Variant
  Dim var_348 As String
  Dim var_350 As String
  Dim unk_577EF3 As Connection15
  Dim var_90 As Recordset15
  Dim var_1FA As Integer
  Dim var_A2 As Integer
  Dim var_21C As Variant
  Dim var_35C As String
  Dim var_370 As String
  Dim var_378 As String
  Dim var_37C As String
  Dim var_3A8 As String
  Dim var_3B0 As String
  Dim var_324 As Variant
  Dim var_3E8 As Variant
  Dim var_3F8 As Variant
  Dim var_418 As Variant
  Dim var_428 As Variant
  Dim var_42C As Fields15
  Dim var_450 As Variant
  Dim var_460 As Variant
  Dim var_4A8 As Variant
  Dim var_4C8 As Variant
  Dim var_4E8 As Variant
  Dim var_508 As Variant
  Dim var_528 As Variant
  Dim var_560 As Variant
  Dim var_580 As Variant
  Dim var_5C8 As Variant
  Dim var_5E8 As Variant
  Dim var_608 As Variant
  Dim var_628 As Variant
  Dim var_648 As Variant
  Dim var_680 As Variant
  Dim var_6A0 As Variant
  Dim var_6E8 As Variant
  Dim var_708 As Variant
  Dim var_728 As Variant
  Dim var_748 As Variant
  Dim var_88 As Recordset15
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_140 As Double
  Dim var_148 As Double
  Dim var_150 As Double
  Dim var_158 As Double
  Dim var_160 As Double
  Dim var_168 As Double
  Dim var_170 As Double
  Dim var_178 As Double
  Dim var_180 As Double
  Dim var_188 As Double
  Dim var_190 As Double
  Dim var_198 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_108 As Double
  Dim var_138 As Double
  Dim var_130 As Double
  Dim var_AC As Double
  Dim var_750 As Recordset15
  Dim var_118 As Double
  Dim var_1A0 As Double
  Dim var_1A8 As Double
  Dim var_1B0 As Double
  Dim var_1B8 As Double
  Dim var_1C0 As Double
  Dim var_1C8 As Double
  Dim var_1D0 As Double
  Dim var_1D8 As Double
  Dim var_1E0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_B0 As Recordset15
  Dim var_754 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_760 As MSHFlexGrid
  Dim var_334 As Variant
  loc_1C2A86C: On Error Goto loc_1C30572
  loc_1C2A875: Call 0.Method_arg_54 ("Tax Report")
  loc_1C2A87A: var_25C = "For Date Between : "
  loc_1C2A87F: var_20C = 0
  loc_1C2A89C: var_27C = 1 & Me.FGrid.TextMatrix 
  loc_1C2A8B9: var_2EC = Me.FGrid
  loc_1C2A8D2: Set var_314 = 1(CStr(1 & var_2EC.TextMatrix))
  loc_1C2A8D8: var_2EC.TextBox.Text = var_27C & " and "
  loc_1C2A907: Me.FGrid1.Rows = 3
  loc_1C2A91C: Set var_314 = Me.FGrid1
  loc_1C2A922: var_314.FixedRows = 2
  loc_1C2A93F: If (global_208 = MemVar_1F95078 & "BANQ") Then
  loc_1C2A96E:   VarLateMemCallLdRfVar
  loc_1C2A979:   Proc_6_7_F26918(var_27C, Me.FGrid, 1, 0)
  loc_1C2A9A3:   VarLateMemCallLdRfVar
  loc_1C2A9AE:   Proc_6_7_F26918(var_334, Me.FGrid, 1, 1)
  loc_1C2A9BB:   var_98 = CStr(CVar(" AND P.VTYPE ='" & "IDC" & "' AND P.VDate Between ") & var_27C & " And " & var_334)
  loc_1C2A9DB: Else
  loc_1C2AA07:   VarLateMemCallLdRfVar
  loc_1C2AA12:   Proc_6_7_F26918(var_27C, Me.FGrid, 1, 0)
  loc_1C2AA3C:   VarLateMemCallLdRfVar
  loc_1C2AA47:   Proc_6_7_F26918(var_334, Me.FGrid, 1, 1)
  loc_1C2AA54:   var_98 = CStr(CVar(" AND P.VTYPE ='" & "ODC" & "' AND P.VDate Between ") & var_27C & " And " & var_334)
  loc_1C2AA71: End If
  loc_1C2AA7D: var_20C = 1
  loc_1C2AAA6: If (Me.Check1.Value = 0) Then
  loc_1C2AAC9:   var_9C = CStr(CVar(var_98 & " AND P.TaxCode In (") & Me.GridString1 & ") ")
  loc_1C2AADE:   var_24C = CVar(var_98 & " AND RevMast.Code In (") 'String
  loc_1C2AAED:   var_20C = ") "
  loc_1C2AAF7:   var_A0 = CStr(var_24C & Me.GridString1 & var_20C)
  loc_1C2AB05: End If
  loc_1C2AB12: Call Proc_249_103_1306248(New, var_314, var_20C)
  loc_1C2AB1A: Set var_8C = var_314
  loc_1C2AB20: var_1E8 = "SELECT P.DOCID,P.Vdate,P.VNo,P.Party,P.NetAmt,P.Taxable,P.NonTaxable,P.RestCode,P.RoundOff,P.ServiceCharge,P.DiscAmt,P.Total"
  loc_1C2AB26: var_1EC = " FROM HallSale1 P Left Join (Select DocID"
  loc_1C2AB2C: var_1F0 = " From (Select P.DocId"
  loc_1C2AB43: var_310 = "Select Distinct Q.Name,Q.code,Q.Sundry,Q.TaxPer From (SELECT RevMast.Name,RevMast.code,RevMast.Sundry,P.TaxPer FROM (HallSale2 P INNER JOIN RevMast ON P.TaxCode = RevMast.Code) where RevMast.FieldType='T' And P.DELFLAG<>'D'" & var_A0
  loc_1C2AB4A: var_348 = var_310 & "Union All SELECT RevMast.Name,RevMast.Code,RevMast.Sundry,P.SValue TaxPer FROM (SunTranH P INNER JOIN RevMast ON P.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code where RevMast.FieldType='T' And P.DELFLAG<>'D'"
  loc_1C2AB61: unk_577EF3.Execute var_348 & var_A0 & ")Q Order by Q.TaxPer", var_24C, -1
  loc_1C2AB6C: Set var_90 = var_314
  loc_1C2AB8F: var_1FA = CInt(var_90.RecordCount)
  loc_1C2AB94: var_A2 = 1
  loc_1C2AB97: ' Referenced from: 1C2B1E0
  loc_1C2ABA6: If Not(var_90.EOF) Then
  loc_1C2ABB6:   var_350 = "+IsNull(SL." & "BASEVALUE"
  loc_1C2ABF8:   var_27C = IIf((var_1F4 = vbNullString), CVar("IsNull(SL." & "BASEVALUE" & CStr(var_A2) & ",0)"), CVar(CStr(var_A2) & var_A0 & ")Q Order by Q.TaxPer" & CStr(var_A2) & ",0)"))
  loc_1C2AC00:   var_29C = (CVar(var_1F4) + var_27C)
  loc_1C2AC05:   var_1F4 = CStr(CVar("IsNull(SL." & "BASEVALUE" & CStr(var_A2) & ",0)") & Me.GridString1 & (var_1F4 = vbNullString))
  loc_1C2AC31:   var_350 = "+IsNull(SL." & "TAXAMT"
  loc_1C2AC73:   var_27C = IIf((var_1F8 = vbNullString), CVar("IsNull(SL." & "TAXAMT" & CStr(var_A2) & ",0)"), CVar(CStr(var_A2) & var_A0 & ")Q Order by Q.TaxPer" & CStr(var_A2) & ",0)"))
  loc_1C2AC7B:   var_29C = (CVar(var_1F8) + var_27C)
  loc_1C2AC80:   var_1F8 = CStr(CVar("IsNull(SL." & "TAXAMT" & CStr(var_A2) & ",0)") & Me.GridString1 & (var_1F8 = vbNullString))
  loc_1C2ACED:   var_378 = var_1E8 & ", IsNull(SL." & "SUNCODE" & CStr(var_A2) & ",'') As " & "SUNCODE" & CStr(var_A2) & ", IsNull(SL." & "BASEVALUE" & CStr(var_A2)
  loc_1C2AD3B:   var_3A8 = var_378 & ",0) As " & "BASEVALUE" & CStr(var_A2) & ", IsNull(SL." & "TAXPER" & CStr(var_A2) & ",0) As " & "TAXPER" & CStr(var_A2)
  loc_1C2AD6F:   var_1E8 = var_3A8 & ", IsNull(SL." & "TAXAMT" & CStr(var_A2) & ",0) As " & "TAXAMT" & CStr(var_A2)
  loc_1C2AE08:   var_37C = var_1EC & ", Max(" & "SUNCODE" & CStr(var_A2) & ") As " & "SUNCODE" & CStr(var_A2) & ", Max(" & "BASEVALUE" & CStr(var_A2) & ") As "
  loc_1C2AE5D:   var_3B0 = var_37C & "BASEVALUE" & CStr(var_A2) & ", Max(" & "TAXPER" & CStr(var_A2) & ") As " & "TAXPER" & CStr(var_A2) & ", Max(" & "TAXAMT"
  loc_1C2AE83:   var_1EC = var_3B0 & CStr(var_A2) & ") As " & "TAXAMT" & CStr(var_A2)
  loc_1C2AED7:   var_20C = "Code"
  loc_1C2AEE3:   var_314 = var_90.Fields
  loc_1C2AEFB:   var_27C = (CVar(var_1F0 & ", CASE When P.TaxCode='") + var_314.Item(var_20C).Value)
  loc_1C2AEFF:   var_21C = "' And P.TaxPer="
  loc_1C2AF04:   var_29C = (var_27C + var_21C)
  loc_1C2AF37:   var_30C = (var_314.Item(var_20C).Value & Me.GridString1 & var_20C + CVar(CStr(var_90.Fields.Item("TaxPer").Value)))
  loc_1C2AF40:   var_324 = (Me.FGrid + " then '")
  loc_1C2AF66:   var_334 = var_90.Fields.Item("Sundry").Value
  loc_1C2AF6E:   var_344 = (var_324 + var_334)
  loc_1C2AF77:   var_3E8 = (CVar(" AND P.VTYPE ='" & "ODC" & "' AND P.VDate Between ") & var_27C & " And " & var_334 + "' END As ")
  loc_1C2AF80:   var_3F8 = (var_3E8 + "SUNCODE")
  loc_1C2AF8C:   var_418 = (var_3F8 + CVar(CStr(var_A2)))
  loc_1C2AF95:   var_428 = (var_418 + ", CASE When P.TaxCode='")
  loc_1C2AFAB:   var_42C = var_90.Fields
  loc_1C2AFC3:   var_450 = (var_428 + var_42C.Item("Code").Value)
  loc_1C2AFCC:   var_460 = (var_450 + "' And P.TaxPer=")
  loc_1C2AFFF:   var_4A8 = (var_460 + CVar(CStr(var_90.Fields.Item("TaxPer").Value)))
  loc_1C2B008:   var_4C8 = (var_4A8 + " then Sum(P.BASEVALUE) END As ")
  loc_1C2B011:   var_4E8 = (var_4C8 + "BASEVALUE")
  loc_1C2B01D:   var_508 = (var_4E8 + CVar(CStr(var_A2)))
  loc_1C2B026:   var_528 = (var_508 + ", CASE When P.TaxCode='")
  loc_1C2B054:   var_560 = (var_528 + var_90.Fields.Item("Code").Value)
  loc_1C2B05D:   var_580 = (var_560 + "' And P.TaxPer=")
  loc_1C2B090:   var_5C8 = (var_580 + CVar(CStr(var_90.Fields.Item("TaxPer").Value)))
  loc_1C2B099:   var_5E8 = (var_5C8 + " then Max(P.TAXPER) END As ")
  loc_1C2B0A2:   var_608 = (var_5E8 + "TAXPER")
  loc_1C2B0AE:   var_628 = (var_608 + CVar(CStr(var_A2)))
  loc_1C2B0B7:   var_648 = (var_628 + ", CASE When P.TaxCode='")
  loc_1C2B0E5:   var_680 = (var_648 + var_90.Fields.Item("Code").Value)
  loc_1C2B0EE:   var_6A0 = (var_680 + "' And P.TaxPer=")
  loc_1C2B121:   var_6E8 = (var_6A0 + CVar(CStr(var_90.Fields.Item("TaxPer").Value)))
  loc_1C2B12A:   var_708 = (var_6E8 + " then Sum(P.TaxAmt) END As ")
  loc_1C2B133:   var_728 = (var_708 + "TAXAMT")
  loc_1C2B13F:   var_748 = (var_728 + CVar(CStr(var_A2)))
  loc_1C2B144:   var_1F0 = CStr(var_748)
  loc_1C2B1D2:   var_90.MoveNext
  loc_1C2B1DD:   var_A2 = (var_A2 + 1)
  loc_1C2B1E0:   GoTo loc_1C2AB97
  loc_1C2B1E3: End If
  loc_1C2B1F7: If (var_90.RecordCount > 0) Then
  loc_1C2B21D:   var_1E8 = var_1E8 & "," & var_1F4 & " As EBASEVALUE," & var_1F8 & " As ETAXAMT"
  loc_1C2B22B: End If
  loc_1C2B22E: var_24C = Me.LoginSite
  loc_1C2B238: var_26C = Me.LoginSite
  loc_1C2B269: var_35C = Proc_6_45_EADFB8(CStr(var_24C), 2, var_1E8 & var_1EC & var_1F0 & " From HallSale2 P Where P.DelFlag<>'D' and P.LogSite_Code='", var_26C, var_24C, var_A2)
  loc_1C2B282: var_370 = var_A2 & var_35C & "' " & var_9C & " Group By P.DocId,P.TaxCode,P.Taxper) a Group By DocId) SL On P.DocId=SL.DocId Inner Join Voucher_type VT On (P.VType=VT.V_Type And P.Site_Code=VT.Site_Code) Where P.DELFLAG<>'D' AND P.LogSite_Code='"
  loc_1C2B2EF: Me.Connection15.Execute var_314 & Proc_6_45_EADFB8(CStr(var_26C), 2, var_370, var_1FA) & "' " & var_98 & " order by P.VDate,P.Vno", var_24C, -1
  loc_1C2B2FA: Set var_88 = var_314
  loc_1C2B317: If (var_88.RecordCount > 0) Then
  loc_1C2B31D:   var_120 = CDbl(0)
  loc_1C2B323:   var_128 = CDbl(0)
  loc_1C2B329:   var_140 = CDbl(0)
  loc_1C2B32F:   var_148 = CDbl(0)
  loc_1C2B335:   var_150 = CDbl(0)
  loc_1C2B33B:   var_158 = CDbl(0)
  loc_1C2B341:   var_160 = CDbl(0)
  loc_1C2B347:   var_168 = CDbl(0)
  loc_1C2B34D:   var_170 = CDbl(0)
  loc_1C2B353:   var_178 = CDbl(0)
  loc_1C2B359:   var_180 = CDbl(0)
  loc_1C2B35F:   var_188 = CDbl(0)
  loc_1C2B365:   var_190 = CDbl(0)
  loc_1C2B36B:   var_198 = CDbl(0)
  loc_1C2B371:   var_C8 = CDbl(0)
  loc_1C2B377:   var_D0 = CDbl(0)
  loc_1C2B37D:   var_D8 = CDbl(0)
  loc_1C2B383:   var_E0 = CDbl(0)
  loc_1C2B389:   var_E8 = CDbl(0)
  loc_1C2B38F:   var_F0 = CDbl(0)
  loc_1C2B395:   var_F8 = CDbl(0)
  loc_1C2B39B:   var_100 = CDbl(0)
  loc_1C2B3A1:   var_108 = CDbl(0)
  loc_1C2B3A7:   var_138 = CDbl(0)
  loc_1C2B3AD:   var_130 = CDbl(0)
  loc_1C2B3B3:   var_AC = CDbl(0)
  loc_1C2B3B9:   var_88.MoveFirst
  loc_1C2B3BE:   ' Referenced from: 1C2DB84
  loc_1C2B3CD:   If Not(var_88.EOF) Then
  loc_1C2B3D3:     Set var_750 = var_8C 
  loc_1C2B3E2:     var_750.AddNew var_20C, var_21C
  loc_1C2B3ED:     var_A2 = (var_A2 + 1)
  loc_1C2B415:     var_750.Fields.Item("mLine").Value = vbNullString
  loc_1C2B450:     var_750.Fields.Item("SNo").Value = CVar(CStr(var_A2) & ".")
  loc_1C2B4C5:     var_750.Fields.Item("Billdate").Value = Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")
  loc_1C2B527:     var_750.Fields.Item("BillNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VNo")), 1, 1, var_A2, var_AC, var_130))
  loc_1C2B564:     var_26C = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Party")), var_138, var_108, var_100)) 'String
  loc_1C2B587:     var_750.Fields.Item("Party").Value = var_26C
  loc_1C2B5C2:     Proc_6_47_EF6560(var_26C, CVar(var_88.Fields.Item("nonTaxable")), var_F8)
  loc_1C2B5EA:     var_750.Fields.Item("NonTaxable").Value = var_26C
  loc_1C2B62C:     Proc_6_39_E7D3A0(var_26C, CVar(var_88.Fields.Item("nonTaxable")), CVar(var_130))
  loc_1C2B634:     var_27C = (var_F0 + var_26C)
  loc_1C2B639:     var_130 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C2B675:     Proc_6_39_E7D3A0(var_26C, CVar(var_88.Fields.Item("nonTaxable")), CVar(var_118))
  loc_1C2B67D:     var_27C = (var_130 + var_26C)
  loc_1C2B6B7:     Proc_6_47_EF6560(var_26C, CVar(var_88.Fields.Item("Total")))
  loc_1C2B6DF:     var_750.Fields.Item("GoodsAmt").Value = var_26C
  loc_1C2B721:     Proc_6_39_E7D3A0(var_26C, CVar(var_88.Fields.Item("Total")), CVar(var_120))
  loc_1C2B729:     var_27C = (CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")) + var_26C)
  loc_1C2B72E:     var_120 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C2B763:     Proc_6_47_EF6560(var_26C, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1C2B78B:     var_750.Fields.Item("Disc").Value = var_26C
  loc_1C2B7CD:     Proc_6_39_E7D3A0(var_26C, CVar(var_88.Fields.Item("DiscAmt")), CVar(var_140))
  loc_1C2B7D5:     var_27C = (var_120 + var_26C)
  loc_1C2B7DA:     var_140 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C2B80F:     Proc_6_47_EF6560(var_26C, CVar(var_88.Fields.Item("RoundOff")))
  loc_1C2B837:     var_750.Fields.Item("Roff").Value = var_26C
  loc_1C2B879:     Proc_6_39_E7D3A0(var_26C, CVar(var_88.Fields.Item("RoundOff")), CVar(var_148))
  loc_1C2B881:     var_27C = (var_140 + var_26C)
  loc_1C2B886:     var_148 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C2B8BB:     Proc_6_47_EF6560(var_26C, CVar(var_88.Fields.Item("NetAmt")))
  loc_1C2B8E3:     var_750.Fields.Item("BillAmt").Value = var_26C
  loc_1C2B925:     Proc_6_39_E7D3A0(var_26C, CVar(var_88.Fields.Item("NetAmt")), CVar(var_128))
  loc_1C2B92D:     var_27C = (var_148 + var_26C)
  loc_1C2B932:     var_128 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C2B944:     var_1A0 = CDbl(0)
  loc_1C2B94A:     var_1A8 = CDbl(0)
  loc_1C2B950:     var_1B0 = CDbl(0)
  loc_1C2B956:     var_1B8 = CDbl(0)
  loc_1C2B95C:     var_1C0 = CDbl(0)
  loc_1C2B962:     var_1C8 = CDbl(0)
  loc_1C2B968:     var_1D0 = CDbl(0)
  loc_1C2B96E:     var_1D8 = CDbl(0)
  loc_1C2B974:     var_1E0 = CDbl(0)
  loc_1C2B98B:     If (var_88.AbsolutePosition = 1) Then
  loc_1C2B9A2:       If (var_90.RecordCount > 0) Then
  loc_1C2B9A8:         var_90.MoveFirst
  loc_1C2B9AD:         ' Referenced from: 1C2BECD
  loc_1C2B9AD:       End If
  loc_1C2B9BE:       If (var_90.EOF = 0) Then
  loc_1C2B9D5:         If (var_90.AbsolutePosition = 1) Then
  loc_1C2BA0E:           var_26C = CVar(var_1B8 & Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxPer")), "@ ", var_1E0, var_1D8, var_1D0, var_1C8, var_1C0) & ") 'String
  loc_1C2BA31:           var_750.Fields.Item("TaxP1").Value = var_26C
  loc_1C2BA50:         Else
  loc_1C2BA64:           If (var_90.AbsolutePosition = 2) Then
  loc_1C2BAC0:             var_750.Fields.Item("TaxP2").Value = CVar(var_1A0 & Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxPer")), "@ ", var_1B0, var_1A8) & ") 'String
  loc_1C2BADF:           Else
  loc_1C2BAF3:             If (var_90.AbsolutePosition = 3) Then
  loc_1C2BB4F:               var_750.Fields.Item("TaxP3").Value = CVar(var_128 & Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxPer")), "@ ") & ") 'String
  loc_1C2BB6E:             Else
  loc_1C2BB82:               If (var_90.AbsolutePosition = 4) Then
  loc_1C2BBDE:                 var_750.Fields.Item("TaxP4").Value = CVar(var_E8 & Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxPer")), "@ ") & ") 'String
  loc_1C2BBFD:               Else
  loc_1C2BC11:                 If (var_90.AbsolutePosition = 5) Then
  loc_1C2BC6D:                   var_750.Fields.Item("TaxP5").Value = CVar("@ " & Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C2BC8C:                 Else
  loc_1C2BCA0:                   If (var_90.AbsolutePosition = 6) Then
  loc_1C2BCFC:                     var_750.Fields.Item("TaxP6").Value = CVar("@ " & Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C2BD1B:                   Else
  loc_1C2BD2F:                     If (var_90.AbsolutePosition = 7) Then
  loc_1C2BD8B:                       var_750.Fields.Item("TaxP7").Value = CVar("@ " & Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C2BDAA:                     Else
  loc_1C2BDBE:                       If (var_90.AbsolutePosition = 8) Then
  loc_1C2BE1A:                         var_750.Fields.Item("TaxP8").Value = CVar("@ " & Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C2BE39:                       Else
  loc_1C2BE4D:                         If (var_90.AbsolutePosition = 9) Then
  loc_1C2BEA9:                           var_750.Fields.Item("TaxP9").Value = CVar("@ " & Proc_6_38_E69628(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C2BEC5:                         End If
  loc_1C2BEC5:                       End If
  loc_1C2BEC5:                     End If
  loc_1C2BEC5:                   End If
  loc_1C2BEC5:                 End If
  loc_1C2BEC5:               End If
  loc_1C2BEC5:             End If
  loc_1C2BEC5:           End If
  loc_1C2BEC5:         End If
  loc_1C2BEC8:         var_90.MoveNext
  loc_1C2BECD:         GoTo loc_1C2B9AD
  loc_1C2BED0:       End If
  loc_1C2BED0:     End If
  loc_1C2BEE4:     If (var_90.RecordCount > 0) Then
  loc_1C2BEEA:       var_90.MoveFirst
  loc_1C2BEEF:     End If
  loc_1C2BEF5:     If (var_1FA >= 1) Then
  loc_1C2BFDB:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2C020:       unk_577EF3.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2C02B:       Set var_B0 = var_42C
  loc_1C2C06B:       If (var_B0.RecordCount > 0) Then
  loc_1C2C09F:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue1").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2C0A4:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2C0DE:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2C0E6:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT1").Value)) + var_24C)
  loc_1C2C0EB:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2C0FC:       End If
  loc_1C2C107:       Proc_6_47_EF6560(var_24C, var_B8, var_C0, var_B8)
  loc_1C2C12F:       var_750.Fields.Item("Tax1").Value = var_24C
  loc_1C2C149:       Proc_6_47_EF6560(var_24C, var_C0, var_42C)
  loc_1C2C171:       var_750.Fields.Item("TaxAmt1").Value = var_24C
  loc_1C2C187:       var_118 = (var_118 + var_B8)
  loc_1C2C18D:       var_1A0 = var_C0
  loc_1C2C197:       var_158 = (var_158 + var_C0)
  loc_1C2C1A1:       var_C8 = (var_C8 + var_B8)
  loc_1C2C1A7:       var_90.MoveNext
  loc_1C2C1AC:     End If
  loc_1C2C1B2:     If (var_1FA >= 2) Then
  loc_1C2C298:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2C2DD:       unk_577EF3.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2C2E8:       Set var_B0 = var_42C
  loc_1C2C328:       If (var_B0.RecordCount > 0) Then
  loc_1C2C35C:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue2").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2C361:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2C39B:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2C3A3:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT2").Value)) + var_24C)
  loc_1C2C3A8:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2C3B9:       End If
  loc_1C2C3C4:       Proc_6_47_EF6560(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2C3EC:       var_750.Fields.Item("Tax2").Value = var_24C
  loc_1C2C406:       Proc_6_47_EF6560(var_24C, var_C0, var_B8, var_C8)
  loc_1C2C42E:       var_750.Fields.Item("TaxAmt2").Value = var_24C
  loc_1C2C444:       var_118 = (var_118 + var_B8)
  loc_1C2C44A:       var_1A8 = var_C0
  loc_1C2C454:       var_160 = (var_160 + var_C0)
  loc_1C2C45E:       var_D0 = (var_D0 + var_B8)
  loc_1C2C464:       var_90.MoveNext
  loc_1C2C469:     End If
  loc_1C2C46F:     If (var_1FA >= 3) Then
  loc_1C2C555:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2C59A:       unk_577EF3.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2C5A5:       Set var_B0 = var_42C
  loc_1C2C5E5:       If (var_B0.RecordCount > 0) Then
  loc_1C2C619:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue3").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2C61E:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2C658:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2C660:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT3").Value)) + var_24C)
  loc_1C2C665:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2C676:       End If
  loc_1C2C681:       Proc_6_47_EF6560(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2C6A9:       var_750.Fields.Item("Tax3").Value = var_24C
  loc_1C2C6C3:       Proc_6_47_EF6560(var_24C, var_C0, var_B8, var_D0)
  loc_1C2C6EB:       var_750.Fields.Item("TaxAmt3").Value = var_24C
  loc_1C2C701:       var_118 = (var_118 + var_B8)
  loc_1C2C707:       var_1B0 = var_C0
  loc_1C2C711:       var_168 = (var_168 + var_C0)
  loc_1C2C71B:       var_D8 = (var_D8 + var_B8)
  loc_1C2C721:       var_90.MoveNext
  loc_1C2C726:     End If
  loc_1C2C72C:     If (var_1FA >= 4) Then
  loc_1C2C812:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2C857:       unk_577EF3.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2C862:       Set var_B0 = var_42C
  loc_1C2C8A2:       If (var_B0.RecordCount > 0) Then
  loc_1C2C8D6:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue4").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2C8DB:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2C915:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2C91D:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT4").Value)) + var_24C)
  loc_1C2C922:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2C933:       End If
  loc_1C2C93E:       Proc_6_47_EF6560(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2C966:       var_750.Fields.Item("Tax4").Value = var_24C
  loc_1C2C980:       Proc_6_47_EF6560(var_24C, var_C0, var_B8, var_D8)
  loc_1C2C9A8:       var_750.Fields.Item("TaxAmt4").Value = var_24C
  loc_1C2C9BE:       var_118 = (var_118 + var_B8)
  loc_1C2C9C4:       var_1B8 = var_C0
  loc_1C2C9CE:       var_170 = (var_170 + var_C0)
  loc_1C2C9D8:       var_E0 = (var_E0 + var_B8)
  loc_1C2C9DE:       var_90.MoveNext
  loc_1C2C9E3:     End If
  loc_1C2C9E9:     If (var_1FA >= 5) Then
  loc_1C2CACF:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2CB14:       unk_577EF3.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2CB1F:       Set var_B0 = var_42C
  loc_1C2CB5F:       If (var_B0.RecordCount > 0) Then
  loc_1C2CB93:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue5").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2CB98:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2CBD2:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2CBDA:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT5").Value)) + var_24C)
  loc_1C2CBDF:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2CBF0:       End If
  loc_1C2CBFB:       Proc_6_47_EF6560(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2CC23:       var_750.Fields.Item("Tax5").Value = var_24C
  loc_1C2CC3D:       Proc_6_47_EF6560(var_24C, var_C0, var_B8, var_E0)
  loc_1C2CC65:       var_750.Fields.Item("TaxAmt5").Value = var_24C
  loc_1C2CC7B:       var_118 = (var_118 + var_B8)
  loc_1C2CC81:       var_1C0 = var_C0
  loc_1C2CC8B:       var_178 = (var_178 + var_C0)
  loc_1C2CC95:       var_E8 = (var_E8 + var_B8)
  loc_1C2CC9B:       var_90.MoveNext
  loc_1C2CCA0:     End If
  loc_1C2CCA6:     If (var_1FA >= 6) Then
  loc_1C2CD8C:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2CDD1:       unk_577EF3.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2CDDC:       Set var_B0 = var_42C
  loc_1C2CE1C:       If (var_B0.RecordCount > 0) Then
  loc_1C2CE50:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue6").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2CE55:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2CE8F:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2CE97:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT6").Value)) + var_24C)
  loc_1C2CE9C:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2CEAD:       End If
  loc_1C2CEB8:       Proc_6_47_EF6560(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2CEE0:       var_750.Fields.Item("Tax6").Value = var_24C
  loc_1C2CEFA:       Proc_6_47_EF6560(var_24C, var_C0, var_B8, var_E8)
  loc_1C2CF22:       var_750.Fields.Item("TaxAmt6").Value = var_24C
  loc_1C2CF38:       var_118 = (var_118 + var_B8)
  loc_1C2CF3E:       var_1C8 = var_C0
  loc_1C2CF48:       var_180 = (var_180 + var_C0)
  loc_1C2CF52:       var_F0 = (var_F0 + var_B8)
  loc_1C2CF58:       var_90.MoveNext
  loc_1C2CF5D:     End If
  loc_1C2CF63:     If (var_1FA >= 7) Then
  loc_1C2D049:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2D08E:       unk_577EF3.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2D099:       Set var_B0 = var_42C
  loc_1C2D0D9:       If (var_B0.RecordCount > 0) Then
  loc_1C2D10D:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue7").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2D112:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2D14C:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2D154:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT7").Value)) + var_24C)
  loc_1C2D159:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2D16A:       End If
  loc_1C2D175:       Proc_6_47_EF6560(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2D19D:       var_750.Fields.Item("Tax7").Value = var_24C
  loc_1C2D1B7:       Proc_6_47_EF6560(var_24C, var_C0, var_B8, var_F0)
  loc_1C2D1DF:       var_750.Fields.Item("TaxAmt7").Value = var_24C
  loc_1C2D1F5:       var_118 = (var_118 + var_B8)
  loc_1C2D1FB:       var_1D0 = var_C0
  loc_1C2D205:       var_188 = (var_188 + var_C0)
  loc_1C2D20F:       var_F8 = (var_F8 + var_B8)
  loc_1C2D215:       var_90.MoveNext
  loc_1C2D21A:     End If
  loc_1C2D220:     If (var_1FA >= 8) Then
  loc_1C2D306:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2D34B:       unk_577EF3.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2D356:       Set var_B0 = var_42C
  loc_1C2D396:       If (var_B0.RecordCount > 0) Then
  loc_1C2D3CA:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue8").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2D3CF:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2D409:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2D411:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT8").Value)) + var_24C)
  loc_1C2D416:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2D427:       End If
  loc_1C2D432:       Proc_6_47_EF6560(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2D45A:       var_750.Fields.Item("Tax8").Value = var_24C
  loc_1C2D474:       Proc_6_47_EF6560(var_24C, var_C0, var_B8, var_F8)
  loc_1C2D49C:       var_750.Fields.Item("TaxAmt8").Value = var_24C
  loc_1C2D4B2:       var_118 = (var_118 + var_B8)
  loc_1C2D4B8:       var_1D8 = var_C0
  loc_1C2D4C2:       var_190 = (var_190 + var_C0)
  loc_1C2D4CC:       var_100 = (var_100 + var_B8)
  loc_1C2D4D2:       var_90.MoveNext
  loc_1C2D4D7:     End If
  loc_1C2D4DD:     If (var_1FA >= 9) Then
  loc_1C2D5C3:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2D5CC:       var_2FC = var_2EC & "' And SValue=" 
  loc_1C2D608:       unk_577EF3.Execute CStr(var_2FC & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2D613:       Set var_B0 = var_42C
  loc_1C2D653:       If (var_B0.RecordCount > 0) Then
  loc_1C2D687:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue9").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2D68C:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2D6C6:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2D6CE:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT9").Value)) + var_24C)
  loc_1C2D6D3:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2D6E4:       End If
  loc_1C2D6EF:       Proc_6_47_EF6560(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2D717:       var_750.Fields.Item("Tax9").Value = var_24C
  loc_1C2D731:       Proc_6_47_EF6560(var_24C, var_C0, var_B8, var_100)
  loc_1C2D759:       var_750.Fields.Item("TaxAmt9").Value = var_24C
  loc_1C2D76F:       var_118 = (var_118 + var_B8)
  loc_1C2D775:       var_1E0 = var_C0
  loc_1C2D77F:       var_198 = (var_198 + var_C0)
  loc_1C2D789:       var_108 = (var_108 + var_B8)
  loc_1C2D78F:       var_90.MoveNext
  loc_1C2D794:     End If
  loc_1C2D79B:     If (CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")) <> CDbl(0)) Then
  loc_1C2D7A5:       var_138 = (var_138 + CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")))
  loc_1C2D7A8:     End If
  loc_1C2D7B3:     Proc_6_47_EF6560(var_24C, var_1A0, var_138, var_108, var_198, var_1E0)
  loc_1C2D7DB:     var_750.Fields.Item("TaxAmt1").Value = var_24C
  loc_1C2D7F5:     Proc_6_47_EF6560(var_24C, var_1A8, CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")), var_190)
  loc_1C2D81D:     var_750.Fields.Item("TaxAmt2").Value = var_24C
  loc_1C2D837:     Proc_6_47_EF6560(var_24C, var_1B0, var_1D8)
  loc_1C2D85F:     var_750.Fields.Item("TaxAmt3").Value = var_24C
  loc_1C2D879:     Proc_6_47_EF6560(var_24C, var_1B8)
  loc_1C2D8A1:     var_750.Fields.Item("TaxAmt4").Value = var_24C
  loc_1C2D8BB:     Proc_6_47_EF6560(var_24C, var_1C0)
  loc_1C2D8E3:     var_750.Fields.Item("TaxAmt5").Value = var_24C
  loc_1C2D8FD:     Proc_6_47_EF6560(var_24C, var_1C8)
  loc_1C2D925:     var_750.Fields.Item("TaxAmt6").Value = var_24C
  loc_1C2D93F:     Proc_6_47_EF6560(var_24C, var_1D0)
  loc_1C2D967:     var_750.Fields.Item("TaxAmt7").Value = var_24C
  loc_1C2D981:     Proc_6_47_EF6560(var_24C, var_1D8)
  loc_1C2D9A9:     var_750.Fields.Item("TaxAmt8").Value = var_24C
  loc_1C2D9C3:     Proc_6_47_EF6560(var_24C, var_1E0)
  loc_1C2D9EB:     var_750.Fields.Item("TaxAmt9").Value = var_24C
  loc_1C2DA1D:     var_24C = CVar(((((((((var_1A0 + var_1A8) + var_1B0) + var_1B8) + var_1C0) + var_1C8) + var_1D0) + var_1D8) + var_1E0)) 'Double
  loc_1C2DA24:     Proc_6_47_EF6560("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, var_24C)
  loc_1C2DA4C:     var_750.Fields.Item("TaxAmt").Value = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value
  loc_1C2DA86:     var_150 = (((((((((var_150 + var_1A0) + var_1A8) + var_1B0) + var_1B8) + var_1C0) + var_1C8) + var_1D0) + var_1D8) + var_1E0)
  loc_1C2DAAF:     Proc_6_47_EF6560("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, CVar(var_88.Fields.Item("Servicecharge")), var_150)
  loc_1C2DAD7:     var_750.Fields.Item("SCharge").Value = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value
  loc_1C2DB12:     var_24C = CVar(var_88.Fields.Item("Servicecharge")) 'Address
  loc_1C2DB19:     Proc_6_39_E7D3A0("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, var_24C, CVar(var_AC))
  loc_1C2DB21:     var_27C = (CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")) + "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2DB26:     var_AC = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='")
  loc_1C2DB35:     var_21C = vbNullString
  loc_1C2DB3E:     var_20C = "Mark"
  loc_1C2DB5A:     var_750.Fields.Item(var_20C).Value = var_21C
  loc_1C2DB71:     var_750.Update var_20C, var_21C
  loc_1C2DB78:     Set var_750 = Nothing 
  loc_1C2DB7F:     var_88.MoveNext
  loc_1C2DB84:     GoTo loc_1C2B3BE
  loc_1C2DB87:   End If
  loc_1C2DB8A:   Set var_754 = var_8C 
  loc_1C2DB99:   var_754.AddNew var_20C, var_21C
  loc_1C2DBA4:   var_A2 = (var_A2 + 1)
  loc_1C2DBCC:   var_754.Fields.Item("MLine").Value = "GF"
  loc_1C2DBD8:   var_21C = "Total-->"
  loc_1C2DBFD:   var_754.Fields.Item("Billdate").Value = "GF"
  loc_1C2DC14:   Proc_6_47_EF6560(var_24C, var_130, var_A2)
  loc_1C2DC3C:   var_754.Fields.Item("nonTaxable").Value = var_24C
  loc_1C2DC56:   Proc_6_47_EF6560(var_24C, var_C8)
  loc_1C2DC7E:   var_754.Fields.Item("Tax1").Value = var_24C
  loc_1C2DC98:   Proc_6_47_EF6560(var_24C, var_D0)
  loc_1C2DCC0:   var_754.Fields.Item("Tax2").Value = var_24C
  loc_1C2DCDA:   Proc_6_47_EF6560(var_24C, var_D8)
  loc_1C2DD02:   var_754.Fields.Item("Tax3").Value = var_24C
  loc_1C2DD1C:   Proc_6_47_EF6560(var_24C, var_E0)
  loc_1C2DD44:   var_754.Fields.Item("Tax4").Value = var_24C
  loc_1C2DD5E:   Proc_6_47_EF6560(var_24C, var_E8)
  loc_1C2DD86:   var_754.Fields.Item("Tax5").Value = var_24C
  loc_1C2DDA0:   Proc_6_47_EF6560(var_24C, var_F0)
  loc_1C2DDC8:   var_754.Fields.Item("Tax6").Value = var_24C
  loc_1C2DDE2:   Proc_6_47_EF6560(var_24C, var_F8)
  loc_1C2DE0A:   var_754.Fields.Item("Tax7").Value = var_24C
  loc_1C2DE24:   Proc_6_47_EF6560(var_24C, var_100)
  loc_1C2DE4C:   var_754.Fields.Item("Tax8").Value = var_24C
  loc_1C2DE66:   Proc_6_47_EF6560(var_24C, var_108)
  loc_1C2DE8E:   var_754.Fields.Item("Tax9").Value = var_24C
  loc_1C2DEA8:   Proc_6_47_EF6560(var_24C, var_120)
  loc_1C2DED0:   var_754.Fields.Item("GoodsAmt").Value = var_24C
  loc_1C2DEEA:   Proc_6_47_EF6560(var_24C, var_158)
  loc_1C2DF12:   var_754.Fields.Item("TaxAmt1").Value = var_24C
  loc_1C2DF2C:   Proc_6_47_EF6560(var_24C, var_160)
  loc_1C2DF54:   var_754.Fields.Item("TaxAmt2").Value = var_24C
  loc_1C2DF6E:   Proc_6_47_EF6560(var_24C, var_168)
  loc_1C2DF96:   var_754.Fields.Item("TaxAmt3").Value = var_24C
  loc_1C2DFB0:   Proc_6_47_EF6560(var_24C, var_170)
  loc_1C2DFD8:   var_754.Fields.Item("TaxAmt4").Value = var_24C
  loc_1C2DFF2:   Proc_6_47_EF6560(var_24C, var_178)
  loc_1C2E01A:   var_754.Fields.Item("TaxAmt5").Value = var_24C
  loc_1C2E034:   Proc_6_47_EF6560(var_24C, var_180)
  loc_1C2E05C:   var_754.Fields.Item("TaxAmt6").Value = var_24C
  loc_1C2E076:   Proc_6_47_EF6560(var_24C, var_188)
  loc_1C2E09E:   var_754.Fields.Item("TaxAmt7").Value = var_24C
  loc_1C2E0B8:   Proc_6_47_EF6560(var_24C, var_190)
  loc_1C2E0E0:   var_754.Fields.Item("TaxAmt8").Value = var_24C
  loc_1C2E0FA:   Proc_6_47_EF6560(var_24C, var_198)
  loc_1C2E122:   var_754.Fields.Item("TaxAmt9").Value = var_24C
  loc_1C2E13C:   Proc_6_47_EF6560(var_24C, var_150)
  loc_1C2E164:   var_754.Fields.Item("TaxAmt").Value = var_24C
  loc_1C2E17E:   Proc_6_47_EF6560(var_24C, var_AC)
  loc_1C2E1A6:   var_754.Fields.Item("SCharge").Value = var_24C
  loc_1C2E1C0:   Proc_6_47_EF6560(var_24C, var_140)
  loc_1C2E1E8:   var_754.Fields.Item("Disc").Value = var_24C
  loc_1C2E202:   Proc_6_47_EF6560(var_24C, var_148)
  loc_1C2E22A:   var_754.Fields.Item("Roff").Value = var_24C
  loc_1C2E23C:   var_20C = var_128
  loc_1C2E244:   Proc_6_47_EF6560(var_24C, var_20C)
  loc_1C2E250:   var_21C = "BillAmt"
  loc_1C2E26C:   var_754.Fields.Item(var_21C).Value = var_24C
  loc_1C2E286:   var_754.Update var_20C, var_21C
  loc_1C2E28D:   Set var_754 = Nothing 
  loc_1C2E291: End If
  loc_1C2E29B: arg_2C = Me.FGrid1.Text
  loc_1C2E2B9: Me.FGrid1.Rows = 3
  loc_1C2E2D5: If (var_8C.RecordCount > 0) Then
  loc_1C2E2DE:   CVarUnk
  loc_1C2E2E3:   VerifyVarObj
  loc_1C2E2E9:   Set var_314 = Me.FGrid1
  loc_1C2E2EF:   LateIdStAd
  loc_1C2E31F:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_1C2E32A: End If
  loc_1C2E32E: Set var_760 = Me.FGrid1
  loc_1C2E33A: var_760.Tag = "TaxReportHall"
  loc_1C2E34B: var_760.Cols = &H28
  loc_1C2E350: var_20C = 0
  loc_1C2E359: var_22C = 0
  loc_1C2E362: var_25C = "mLine"
  loc_1C2E36B: LateIdCallSt
  loc_1C2E373: var_20C = 0
  loc_1C2E37C: var_22C = 0
  loc_1C2E388: LateIdCallSt
  loc_1C2E390: var_20C = 0
  loc_1C2E399: var_22C = 1
  loc_1C2E3A2: var_25C = "SNo"
  loc_1C2E3AB: LateIdCallSt
  loc_1C2E3B3: var_20C = 1
  loc_1C2E3C2: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2E3C9: LateIdCallSt
  loc_1C2E3D1: var_20C = 1
  loc_1C2E3DA: var_22C = &H1F4
  loc_1C2E3E6: LateIdCallSt
  loc_1C2E3EE: var_20C = 0
  loc_1C2E3F7: var_22C = 2
  loc_1C2E400: var_25C = "Bill Date"
  loc_1C2E409: LateIdCallSt
  loc_1C2E411: var_20C = 2
  loc_1C2E420: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2E427: LateIdCallSt
  loc_1C2E42F: var_20C = 2
  loc_1C2E438: var_22C = &H4B0
  loc_1C2E444: LateIdCallSt
  loc_1C2E44C: var_20C = 0
  loc_1C2E455: var_22C = 3
  loc_1C2E45E: var_25C = "Bill No"
  loc_1C2E467: LateIdCallSt
  loc_1C2E46F: var_20C = 3
  loc_1C2E47E: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2E485: LateIdCallSt
  loc_1C2E48D: var_20C = 3
  loc_1C2E49C: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2E4A3: LateIdCallSt
  loc_1C2E4AB: var_20C = 3
  loc_1C2E4B4: var_22C = &H3E8
  loc_1C2E4C0: LateIdCallSt
  loc_1C2E4C8: var_20C = 0
  loc_1C2E4D1: var_22C = 4
  loc_1C2E4DA: var_25C = "Party"
  loc_1C2E4E3: LateIdCallSt
  loc_1C2E4EB: var_20C = 4
  loc_1C2E4FA: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2E501: LateIdCallSt
  loc_1C2E509: var_20C = 4
  loc_1C2E518: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2E51F: LateIdCallSt
  loc_1C2E527: var_20C = 4
  loc_1C2E530: var_22C = &H9C4
  loc_1C2E53C: LateIdCallSt
  loc_1C2E544: var_20C = 0
  loc_1C2E54D: var_22C = 5
  loc_1C2E556: var_25C = "Non-Taxable"
  loc_1C2E55F: LateIdCallSt
  loc_1C2E567: var_20C = 1
  loc_1C2E570: var_22C = 5
  loc_1C2E579: var_25C = "Amount"
  loc_1C2E582: LateIdCallSt
  loc_1C2E58A: var_20C = 5
  loc_1C2E599: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2E5A0: LateIdCallSt
  loc_1C2E5A8: var_20C = 5
  loc_1C2E5B7: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2E5BE: LateIdCallSt
  loc_1C2E5C6: var_20C = 5
  loc_1C2E5CF: var_22C = &H578
  loc_1C2E5DB: LateIdCallSt
  loc_1C2E5E3: var_20C = 6
  loc_1C2E5EC: var_22C = 0
  loc_1C2E5F8: LateIdCallSt
  loc_1C2E600: var_20C = 7
  loc_1C2E609: var_22C = 0
  loc_1C2E615: LateIdCallSt
  loc_1C2E61D: var_20C = 8
  loc_1C2E626: var_22C = 0
  loc_1C2E632: LateIdCallSt
  loc_1C2E63A: var_20C = 9
  loc_1C2E643: var_22C = 0
  loc_1C2E64F: LateIdCallSt
  loc_1C2E657: var_20C = &HA
  loc_1C2E660: var_22C = 0
  loc_1C2E66C: LateIdCallSt
  loc_1C2E674: var_20C = &HB
  loc_1C2E67D: var_22C = 0
  loc_1C2E689: LateIdCallSt
  loc_1C2E691: var_20C = &HC
  loc_1C2E69A: var_22C = 0
  loc_1C2E6A6: LateIdCallSt
  loc_1C2E6AE: var_20C = &HD
  loc_1C2E6B7: var_22C = 0
  loc_1C2E6C3: LateIdCallSt
  loc_1C2E6CB: var_20C = &HE
  loc_1C2E6D4: var_22C = 0
  loc_1C2E6E0: LateIdCallSt
  loc_1C2E6E8: var_20C = 0
  loc_1C2E6F1: var_22C = &HF
  loc_1C2E6FA: var_25C = "TTL"
  loc_1C2E703: LateIdCallSt
  loc_1C2E70B: var_20C = 1
  loc_1C2E714: var_22C = &HF
  loc_1C2E71D: var_25C = "GROSS AMT"
  loc_1C2E726: LateIdCallSt
  loc_1C2E72E: var_20C = &HF
  loc_1C2E737: var_22C = &H640
  loc_1C2E743: LateIdCallSt
  loc_1C2E74B: var_20C = &HF
  loc_1C2E75A: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2E761: LateIdCallSt
  loc_1C2E769: var_20C = &HF
  loc_1C2E778: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2E77F: LateIdCallSt
  loc_1C2E787: var_20C = &H10
  loc_1C2E790: var_22C = 0
  loc_1C2E79C: LateIdCallSt
  loc_1C2E7A4: var_20C = &H11
  loc_1C2E7AD: var_22C = 0
  loc_1C2E7B9: LateIdCallSt
  loc_1C2E7C1: var_20C = &H12
  loc_1C2E7CA: var_22C = 0
  loc_1C2E7D6: LateIdCallSt
  loc_1C2E7DE: var_20C = &H13
  loc_1C2E7E7: var_22C = 0
  loc_1C2E7F3: LateIdCallSt
  loc_1C2E7FB: var_20C = &H14
  loc_1C2E804: var_22C = 0
  loc_1C2E810: LateIdCallSt
  loc_1C2E818: var_20C = &H15
  loc_1C2E821: var_22C = 0
  loc_1C2E82D: LateIdCallSt
  loc_1C2E835: var_20C = &H16
  loc_1C2E83E: var_22C = 0
  loc_1C2E84A: LateIdCallSt
  loc_1C2E852: var_20C = &H17
  loc_1C2E85B: var_22C = 0
  loc_1C2E867: LateIdCallSt
  loc_1C2E86F: var_20C = &H18
  loc_1C2E878: var_22C = 0
  loc_1C2E884: LateIdCallSt
  loc_1C2E892: global_212 = vbNullString
  loc_1C2E89C: global_216 = vbNullString
  loc_1C2E8A6: global_220 = vbNullString
  loc_1C2E8B0: global_224 = vbNullString
  loc_1C2E8BA: global_228 = vbNullString
  loc_1C2E8C4: global_232 = vbNullString
  loc_1C2E8CE: global_236 = vbNullString
  loc_1C2E8D8: global_240 = vbNullString
  loc_1C2E8E2: global_244 = vbNullString
  loc_1C2E8FA: If (var_90.RecordCount > 0) Then
  loc_1C2E900:   var_90.MoveFirst
  loc_1C2E905:   ' Referenced from: 1C3001D
  loc_1C2E905: End If
  loc_1C2E916: If (var_90.EOF = 0) Then
  loc_1C2E92D:   If (var_90.AbsolutePosition = 1) Then
  loc_1C2E936:     var_20C = "TaxPer"
  loc_1C2E959:     Proc_6_39_E7D3A0("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2E974:     global_212 = var_22C & CStr("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value) & "
  loc_1C2E98D:     var_20C = 0
  loc_1C2E9A8:     LateIdCallSt
  loc_1C2E9E8:     Proc_6_39_E7D3A0("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, CVar(var_90.Fields.Item("TaxPer")), 6, 1, var_760, "SALE", 6)
  loc_1C2E9F9:     var_27C = CVar(CStr("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value) & ") 'String
  loc_1C2EA00:     LateIdCallSt
  loc_1C2EA19:     var_20C = 6
  loc_1C2EA22:     var_22C = &H640
  loc_1C2EA2E:     LateIdCallSt
  loc_1C2EA36:     var_20C = 6
  loc_1C2EA45:     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2EA4C:     LateIdCallSt
  loc_1C2EA54:     var_20C = 6
  loc_1C2EA6A:     LateIdCallSt
  loc_1C2EA87:     var_20C = "Name"
  loc_1C2EAAC:     var_26C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_20C)), &H10, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2EAC2:     LateIdCallSt
  loc_1C2EB10:     Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H10, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2EB21:     var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2EB28:     LateIdCallSt
  loc_1C2EB41:     var_20C = &H10
  loc_1C2EB4A:     var_22C = &H640
  loc_1C2EB56:     LateIdCallSt
  loc_1C2EB5E:     var_20C = &H10
  loc_1C2EB6D:     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2EB74:     LateIdCallSt
  loc_1C2EB7C:     var_20C = &H10
  loc_1C2EB8B:     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2EB92:     LateIdCallSt
  loc_1C2EB9D:   Else
  loc_1C2EBB1:     If (var_90.AbsolutePosition = 2) Then
  loc_1C2EBBA:       var_20C = "TaxPer"
  loc_1C2EBDD:       Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2EBF8:       global_216 = var_22C & CStr(var_26C) & "
  loc_1C2EC11:       var_20C = 0
  loc_1C2EC2C:       LateIdCallSt
  loc_1C2EC6C:       Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), 7, 1, var_760, "SALE", 7)
  loc_1C2EC7D:       var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2EC84:       LateIdCallSt
  loc_1C2EC9D:       var_20C = 7
  loc_1C2ECA6:       var_22C = &H640
  loc_1C2ECB2:       LateIdCallSt
  loc_1C2ECBA:       var_20C = 7
  loc_1C2ECC9:       var_22C = CVar(CInt(7)) 'Integer
  loc_1C2ECD0:       LateIdCallSt
  loc_1C2ECD8:       var_20C = 7
  loc_1C2ECEE:       LateIdCallSt
  loc_1C2ED0B:       var_20C = "Name"
  loc_1C2ED30:       var_26C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_20C)), &H11, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2ED46:       LateIdCallSt
  loc_1C2ED94:       Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H11, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2EDA5:       var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2EDAC:       LateIdCallSt
  loc_1C2EDC5:       var_20C = &H11
  loc_1C2EDCE:       var_22C = &H640
  loc_1C2EDDA:       LateIdCallSt
  loc_1C2EDE2:       var_20C = &H11
  loc_1C2EDF1:       var_22C = CVar(CInt(7)) 'Integer
  loc_1C2EDF8:       LateIdCallSt
  loc_1C2EE00:       var_20C = &H11
  loc_1C2EE0F:       var_22C = CVar(CInt(7)) 'Integer
  loc_1C2EE16:       LateIdCallSt
  loc_1C2EE21:     Else
  loc_1C2EE35:       If (var_90.AbsolutePosition = 3) Then
  loc_1C2EE3E:         var_20C = "TaxPer"
  loc_1C2EE61:         Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2EE7C:         global_220 = var_22C & CStr(var_26C) & "
  loc_1C2EE95:         var_20C = 0
  loc_1C2EEB0:         LateIdCallSt
  loc_1C2EEF0:         Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), 8, 1, var_760, "SALE", 8)
  loc_1C2EF01:         var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2EF08:         LateIdCallSt
  loc_1C2EF21:         var_20C = 8
  loc_1C2EF2A:         var_22C = &H640
  loc_1C2EF36:         LateIdCallSt
  loc_1C2EF3E:         var_20C = 8
  loc_1C2EF4D:         var_22C = CVar(CInt(7)) 'Integer
  loc_1C2EF54:         LateIdCallSt
  loc_1C2EF5C:         var_20C = 8
  loc_1C2EF72:         LateIdCallSt
  loc_1C2EF8F:         var_20C = "Name"
  loc_1C2EFB4:         var_26C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_20C)), &H12, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2EFCA:         LateIdCallSt
  loc_1C2F018:         Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H12, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2F029:         var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2F030:         LateIdCallSt
  loc_1C2F049:         var_20C = &H12
  loc_1C2F052:         var_22C = &H640
  loc_1C2F05E:         LateIdCallSt
  loc_1C2F066:         var_20C = &H12
  loc_1C2F075:         var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F07C:         LateIdCallSt
  loc_1C2F084:         var_20C = &H12
  loc_1C2F093:         var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F09A:         LateIdCallSt
  loc_1C2F0A5:       Else
  loc_1C2F0B9:         If (var_90.AbsolutePosition = 4) Then
  loc_1C2F0C2:           var_20C = "TaxPer"
  loc_1C2F0E5:           Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2F100:           global_224 = var_22C & CStr(var_26C) & "
  loc_1C2F119:           var_20C = 0
  loc_1C2F134:           LateIdCallSt
  loc_1C2F174:           Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), 9, 1, var_760, "SALE", 9)
  loc_1C2F185:           var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2F18C:           LateIdCallSt
  loc_1C2F1A5:           var_20C = 9
  loc_1C2F1AE:           var_22C = &H640
  loc_1C2F1BA:           LateIdCallSt
  loc_1C2F1C2:           var_20C = 9
  loc_1C2F1D1:           var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F1D8:           LateIdCallSt
  loc_1C2F1E0:           var_20C = 9
  loc_1C2F1F6:           LateIdCallSt
  loc_1C2F213:           var_20C = "Name"
  loc_1C2F238:           var_26C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_20C)), &H13, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2F24E:           LateIdCallSt
  loc_1C2F29C:           Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H13, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2F2AD:           var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2F2B4:           LateIdCallSt
  loc_1C2F2CD:           var_20C = &H13
  loc_1C2F2D6:           var_22C = &H640
  loc_1C2F2E2:           LateIdCallSt
  loc_1C2F2EA:           var_20C = &H13
  loc_1C2F2F9:           var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F300:           LateIdCallSt
  loc_1C2F308:           var_20C = &H13
  loc_1C2F317:           var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F31E:           LateIdCallSt
  loc_1C2F329:         Else
  loc_1C2F33D:           If (var_90.AbsolutePosition = 5) Then
  loc_1C2F346:             var_20C = "TaxPer"
  loc_1C2F369:             Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2F384:             global_228 = var_22C & CStr(var_26C) & "
  loc_1C2F39D:             var_20C = 0
  loc_1C2F3B8:             LateIdCallSt
  loc_1C2F3F8:             Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HA, 1, var_760, "SALE", &HA)
  loc_1C2F409:             var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2F410:             LateIdCallSt
  loc_1C2F429:             var_20C = &HA
  loc_1C2F432:             var_22C = &H640
  loc_1C2F43E:             LateIdCallSt
  loc_1C2F446:             var_20C = &HA
  loc_1C2F455:             var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F45C:             LateIdCallSt
  loc_1C2F464:             var_20C = &HA
  loc_1C2F47A:             LateIdCallSt
  loc_1C2F497:             var_20C = "Name"
  loc_1C2F4BC:             var_26C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_20C)), &H14, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2F4D2:             LateIdCallSt
  loc_1C2F520:             Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H14, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2F531:             var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2F538:             LateIdCallSt
  loc_1C2F551:             var_20C = &H14
  loc_1C2F55A:             var_22C = &H640
  loc_1C2F566:             LateIdCallSt
  loc_1C2F56E:             var_20C = &H14
  loc_1C2F57D:             var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F584:             LateIdCallSt
  loc_1C2F58C:             var_20C = &H14
  loc_1C2F59B:             var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F5A2:             LateIdCallSt
  loc_1C2F5AD:           Else
  loc_1C2F5C1:             If (var_90.AbsolutePosition = 6) Then
  loc_1C2F5CA:               var_20C = "TaxPer"
  loc_1C2F5ED:               Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2F608:               global_232 = var_22C & CStr(var_26C) & "
  loc_1C2F621:               var_20C = 0
  loc_1C2F63C:               LateIdCallSt
  loc_1C2F67C:               Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HB, 1, var_760, "SALE", &HB)
  loc_1C2F68D:               var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2F694:               LateIdCallSt
  loc_1C2F6AD:               var_20C = &HB
  loc_1C2F6B6:               var_22C = &H640
  loc_1C2F6C2:               LateIdCallSt
  loc_1C2F6CA:               var_20C = &HB
  loc_1C2F6D9:               var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F6E0:               LateIdCallSt
  loc_1C2F6E8:               var_20C = &HB
  loc_1C2F6FE:               LateIdCallSt
  loc_1C2F71B:               var_20C = "Name"
  loc_1C2F740:               var_26C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_20C)), &H15, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2F756:               LateIdCallSt
  loc_1C2F7A4:               Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H15, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2F7B5:               var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2F7BC:               LateIdCallSt
  loc_1C2F7D5:               var_20C = &H15
  loc_1C2F7DE:               var_22C = &H640
  loc_1C2F7EA:               LateIdCallSt
  loc_1C2F7F2:               var_20C = &H15
  loc_1C2F801:               var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F808:               LateIdCallSt
  loc_1C2F810:               var_20C = &H15
  loc_1C2F81F:               var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F826:               LateIdCallSt
  loc_1C2F831:             Else
  loc_1C2F845:               If (var_90.AbsolutePosition = 7) Then
  loc_1C2F84E:                 var_20C = "TaxPer"
  loc_1C2F871:                 Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2F88C:                 global_236 = var_22C & CStr(var_26C) & "
  loc_1C2F8A5:                 var_20C = 0
  loc_1C2F8C0:                 LateIdCallSt
  loc_1C2F900:                 Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HC, 1, var_760, "SALE", &HC)
  loc_1C2F911:                 var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2F918:                 LateIdCallSt
  loc_1C2F931:                 var_20C = &HC
  loc_1C2F93A:                 var_22C = &H640
  loc_1C2F946:                 LateIdCallSt
  loc_1C2F94E:                 var_20C = &HC
  loc_1C2F95D:                 var_22C = CVar(CInt(7)) 'Integer
  loc_1C2F964:                 LateIdCallSt
  loc_1C2F96C:                 var_20C = &HC
  loc_1C2F982:                 LateIdCallSt
  loc_1C2F99F:                 var_20C = "Name"
  loc_1C2F9C4:                 var_26C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_20C)), &H16, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2F9DA:                 LateIdCallSt
  loc_1C2FA28:                 Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H16, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2FA39:                 var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2FA40:                 LateIdCallSt
  loc_1C2FA59:                 var_20C = &H16
  loc_1C2FA62:                 var_22C = &H640
  loc_1C2FA6E:                 LateIdCallSt
  loc_1C2FA76:                 var_20C = &H16
  loc_1C2FA85:                 var_22C = CVar(CInt(7)) 'Integer
  loc_1C2FA8C:                 LateIdCallSt
  loc_1C2FA94:                 var_20C = &H16
  loc_1C2FAA3:                 var_22C = CVar(CInt(7)) 'Integer
  loc_1C2FAAA:                 LateIdCallSt
  loc_1C2FAB5:               Else
  loc_1C2FAC9:                 If (var_90.AbsolutePosition = 8) Then
  loc_1C2FAD2:                   var_20C = "TaxPer"
  loc_1C2FAF5:                   Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2FB10:                   global_240 = var_22C & CStr(var_26C) & "
  loc_1C2FB29:                   var_20C = 0
  loc_1C2FB44:                   LateIdCallSt
  loc_1C2FB84:                   Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HD, 1, var_760, "SALE", &HD)
  loc_1C2FB95:                   var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2FB9C:                   LateIdCallSt
  loc_1C2FBB5:                   var_20C = &HD
  loc_1C2FBBE:                   var_22C = &H640
  loc_1C2FBCA:                   LateIdCallSt
  loc_1C2FBD2:                   var_20C = &HD
  loc_1C2FBE1:                   var_22C = CVar(CInt(7)) 'Integer
  loc_1C2FBE8:                   LateIdCallSt
  loc_1C2FBF0:                   var_20C = &HD
  loc_1C2FC06:                   LateIdCallSt
  loc_1C2FC23:                   var_20C = "Name"
  loc_1C2FC48:                   var_26C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_20C)), &H17, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2FC5E:                   LateIdCallSt
  loc_1C2FCAC:                   Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H17, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2FCBD:                   var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2FCC4:                   LateIdCallSt
  loc_1C2FCDD:                   var_20C = &H17
  loc_1C2FCE6:                   var_22C = &H640
  loc_1C2FCF2:                   LateIdCallSt
  loc_1C2FCFA:                   var_20C = &H17
  loc_1C2FD09:                   var_22C = CVar(CInt(7)) 'Integer
  loc_1C2FD10:                   LateIdCallSt
  loc_1C2FD18:                   var_20C = &H17
  loc_1C2FD27:                   var_22C = CVar(CInt(7)) 'Integer
  loc_1C2FD2E:                   LateIdCallSt
  loc_1C2FD39:                 Else
  loc_1C2FD4D:                   If (var_90.AbsolutePosition = 9) Then
  loc_1C2FD56:                     var_20C = "TaxPer"
  loc_1C2FD79:                     Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2FD94:                     global_244 = var_22C & CStr(var_26C) & "
  loc_1C2FDAD:                     var_20C = 0
  loc_1C2FDC8:                     LateIdCallSt
  loc_1C2FE08:                     Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HE, 1, var_760, "SALE", &HE)
  loc_1C2FE19:                     var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2FE20:                     LateIdCallSt
  loc_1C2FE39:                     var_20C = &HE
  loc_1C2FE42:                     var_22C = &H640
  loc_1C2FE4E:                     LateIdCallSt
  loc_1C2FE56:                     var_20C = &HE
  loc_1C2FE65:                     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2FE6C:                     LateIdCallSt
  loc_1C2FE74:                     var_20C = &HE
  loc_1C2FE8A:                     LateIdCallSt
  loc_1C2FEA7:                     var_20C = "Name"
  loc_1C2FECC:                     var_26C = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item(var_20C)), &H18, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2FEDF:                     var_29C = (Trim(var_26C) + " ")
  loc_1C2FEE6:                     var_22C = "TaxPer"
  loc_1C2FF09:                     Proc_6_39_E7D3A0(var_2FC, CVar(var_90.Fields.Item(var_22C)), CVar(CStr(Trim(var_26C))), var_22C, var_20C)
  loc_1C2FF16:                     var_324 = (var_760 + CVar(CStr(var_2FC)))
  loc_1C2FF1F:                     var_334 = (var_2FC & var_90.Fields.Item("TaxPer").Value + "%")
  loc_1C2FF24:                     var_344 = CVar(CStr(var_334)) 'String
  loc_1C2FF2B:                     LateIdCallSt
  loc_1C2FF8B:                     Proc_6_39_E7D3A0(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H18, 1, var_760)
  loc_1C2FF9C:                     var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2FFA3:                     LateIdCallSt
  loc_1C2FFBC:                     var_20C = &H18
  loc_1C2FFC5:                     var_22C = &H640
  loc_1C2FFD1:                     LateIdCallSt
  loc_1C2FFD9:                     var_20C = &H18
  loc_1C2FFE8:                     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2FFEF:                     LateIdCallSt
  loc_1C2FFF7:                     var_20C = &H18
  loc_1C30006:                     var_22C = CVar(CInt(7)) 'Integer
  loc_1C3000D:                     LateIdCallSt
  loc_1C30015:                   End If
  loc_1C30015:                 End If
  loc_1C30015:               End If
  loc_1C30015:             End If
  loc_1C30015:           End If
  loc_1C30015:         End If
  loc_1C30015:       End If
  loc_1C30015:     End If
  loc_1C30015:   End If
  loc_1C30018:   var_90.MoveNext
  loc_1C3001D:   GoTo loc_1C2E905
  loc_1C30020: End If
  loc_1C30020: var_20C = 0
  loc_1C30029: var_22C = &H19
  loc_1C30032: var_25C = "TTL"
  loc_1C3003B: LateIdCallSt
  loc_1C30043: var_20C = 1
  loc_1C3004C: var_22C = &H19
  loc_1C30055: var_25C = "TAX AMT"
  loc_1C3005E: LateIdCallSt
  loc_1C30066: var_20C = &H19
  loc_1C3006F: var_22C = &H640
  loc_1C3007B: LateIdCallSt
  loc_1C30083: var_20C = &H19
  loc_1C30092: var_22C = CVar(CInt(7)) 'Integer
  loc_1C30099: LateIdCallSt
  loc_1C300A1: var_20C = &H19
  loc_1C300B0: var_22C = CVar(CInt(7)) 'Integer
  loc_1C300B7: LateIdCallSt
  loc_1C300BF: var_20C = &H1A
  loc_1C300C8: var_22C = 0
  loc_1C300D4: LateIdCallSt
  loc_1C300DC: var_20C = &H1B
  loc_1C300E5: var_22C = 0
  loc_1C300F1: LateIdCallSt
  loc_1C300F9: var_20C = &H1C
  loc_1C30102: var_22C = 0
  loc_1C3010E: LateIdCallSt
  loc_1C30116: var_20C = &H1D
  loc_1C3011F: var_22C = 0
  loc_1C3012B: LateIdCallSt
  loc_1C30133: var_20C = &H1E
  loc_1C3013C: var_22C = 0
  loc_1C30148: LateIdCallSt
  loc_1C30150: var_20C = &H1F
  loc_1C30159: var_22C = 0
  loc_1C30165: LateIdCallSt
  loc_1C3016D: var_20C = &H20
  loc_1C30176: var_22C = 0
  loc_1C30182: LateIdCallSt
  loc_1C3018A: var_20C = &H21
  loc_1C30193: var_22C = 0
  loc_1C3019F: LateIdCallSt
  loc_1C301A7: var_20C = &H22
  loc_1C301B0: var_22C = 0
  loc_1C301BC: LateIdCallSt
  loc_1C301C4: var_20C = 0
  loc_1C301CD: var_22C = &H23
  loc_1C301D6: var_25C = "Service"
  loc_1C301DF: LateIdCallSt
  loc_1C301E7: var_20C = 1
  loc_1C301F0: var_22C = &H23
  loc_1C301F9: var_25C = "Charge"
  loc_1C30202: LateIdCallSt
  loc_1C3020A: var_20C = &H23
  loc_1C30219: var_22C = CVar(CInt(7)) 'Integer
  loc_1C30220: LateIdCallSt
  loc_1C30228: var_20C = &H23
  loc_1C30237: var_22C = CVar(CInt(7)) 'Integer
  loc_1C3023E: LateIdCallSt
  loc_1C30246: var_20C = &H23
  loc_1C3024F: var_22C = &H578
  loc_1C3025B: LateIdCallSt
  loc_1C30263: var_20C = 0
  loc_1C3026C: var_22C = &H24
  loc_1C30275: var_25C = "Discount"
  loc_1C3027E: LateIdCallSt
  loc_1C30286: var_20C = &H24
  loc_1C30295: var_22C = CVar(CInt(7)) 'Integer
  loc_1C3029C: LateIdCallSt
  loc_1C302A4: var_20C = &H24
  loc_1C302B3: var_22C = CVar(CInt(7)) 'Integer
  loc_1C302BA: LateIdCallSt
  loc_1C302C2: var_20C = &H24
  loc_1C302CB: var_22C = &H578
  loc_1C302D7: LateIdCallSt
  loc_1C302DF: var_20C = 0
  loc_1C302E8: var_22C = &H25
  loc_1C302F1: var_25C = "Round Off"
  loc_1C302FA: LateIdCallSt
  loc_1C30302: var_20C = &H25
  loc_1C30311: var_22C = CVar(CInt(7)) 'Integer
  loc_1C30318: LateIdCallSt
  loc_1C30320: var_20C = &H25
  loc_1C3032F: var_22C = CVar(CInt(7)) 'Integer
  loc_1C30336: LateIdCallSt
  loc_1C3033E: var_20C = &H25
  loc_1C30347: var_22C = &H578
  loc_1C30353: LateIdCallSt
  loc_1C3035B: var_20C = 0
  loc_1C30364: var_22C = &H26
  loc_1C3036D: var_25C = "Bill Amount"
  loc_1C30376: LateIdCallSt
  loc_1C3037E: var_20C = &H26
  loc_1C3038D: var_22C = CVar(CInt(7)) 'Integer
  loc_1C30394: LateIdCallSt
  loc_1C3039C: var_20C = &H26
  loc_1C303AB: var_22C = CVar(CInt(7)) 'Integer
  loc_1C303B2: LateIdCallSt
  loc_1C303BA: var_20C = &H26
  loc_1C303C3: var_22C = &H578
  loc_1C303CF: LateIdCallSt
  loc_1C303D7: var_20C = 0
  loc_1C303E0: var_22C = &H27
  loc_1C303E9: var_25C = "Mark"
  loc_1C303F2: LateIdCallSt
  loc_1C303FA: var_20C = &H27
  loc_1C30403: var_22C = 0
  loc_1C3040F: LateIdCallSt
  loc_1C30419: Set var_760 = Nothing 
  loc_1C30421: Set var_314 = Me.FGrid1
  loc_1C30451: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1C30454:   var_20C = vbNullString
  loc_1C3045E:   Set var_314 = Me.FGrid1
  loc_1C3046F: End If
  loc_1C304A6: var_20C = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1C304C6: Me.FGrid1.Row = CVar(CLng(IIf(var_20C, FRow, 1)))
  loc_1C304E7: var_24C = Me.FGrid1.Cols
  loc_1C30514: var_20C = ((Fcol <> 0) And ((CLng(var_24C) - 1) >= CLng(Fcol)))
  loc_1C30534: Me.FGrid1.Col = CVar(CLng(IIf(var_20C, Fcol, 1)))
  loc_1C30550: Set var_88 = Nothing
  loc_1C30558: Set var_8C = Nothing
  loc_1C30560: Set var_90 = Nothing
  loc_1C30568: Set var_B0 = Nothing
  loc_1C3056D: IStAd
  loc_1C30571: Exit Sub
  loc_1C30572: ' Referenced from: 1C2A86C
  loc_1C3057A: Proc_6_60_E63754(0, Nothing, var_24C, var_24C, FGrid1.DispID_10000, var_20C, FGrid1.DispID_FFFF)
  loc_1C3057F: Exit Sub
End Sub

Public Sub TaxSummaryHall(formName, FRow, Fcol) '1731A70
  'Data Table: 577EF0
  Dim var_160 As String
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_214 As String
  Dim var_218 As Variant
  Dim var_24C As Variant
  Dim var_88 As Recordset15
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_B8 As Double
  Dim var_28C As Recordset15
  Dim var_96 As Integer
  Dim var_120 As Variant
  Dim var_294 As Fields15
  Dim unk_577EF3 As Connection15
  Dim var_90 As Recordset15
  Dim var_29C As Recordset15
  Dim var_8C As Recordset15
  Dim var_2A8 As MSHFlexGrid
  Dim var_140 As Variant
  loc_172FE08: On Error Goto loc_1731A61
  loc_172FE11: Call 0.Method_arg_54 ("Tax Summary")
  loc_172FE16: var_160 = "For Date Between : "
  loc_172FE1B: var_110 = 0
  loc_172FE38: var_180 = 1 & Me.FGrid.TextMatrix 
  loc_172FE55: var_1F0 = Me.FGrid
  loc_172FE6E: Set var_218 = 1(CStr(1 & var_1F0.TextMatrix))
  loc_172FE74: var_1F0.TextBox.Text = var_180 & " and "
  loc_172FEA3: Me.FGrid1.Rows = 3
  loc_172FEB8: Set var_218 = Me.FGrid1
  loc_172FEBE: var_218.FixedRows = 2
  loc_172FEDB: If (global_208 = MemVar_1F95078 & "BANQ") Then
  loc_172FEE1:   var_94 = "IDC"
  loc_172FEE7: Else
  loc_172FEEA:   var_94 = "ODC"
  loc_172FEED: End If
  loc_172FEFA: Call Proc_249_104_111DFD4(New, var_218)
  loc_172FF02: Set var_8C = var_218
  loc_172FF19: var_214 = "SELECT max(HS.DocId) AS DocId, max(HS.VDate) AS BillDate, max(HS.VNo) AS BillNo, sum(HS.NetAmt) AS BillAmount, sum(HS.Taxable) AS Taxable " & ",sum(HS.NonTaxable) AS NonTaxable,sum(HS.ServiceCharge) AS ServiceCharge FROM Hallsale1 HS GROUP By HS.VType,HS.VDate HAVING HS.VType='"
  loc_172FF2A: var_110 = 0
  loc_172FF3F: VarLateMemCallLdRfVar
  loc_172FF4A: Proc_6_7_F26918(var_180, Me.FGrid, 1, var_110, CVar(var_214 & var_94 & "' AND HS.VDate between "))
  loc_172FF5B: var_200 = var_280 & var_180 & " and " 
  loc_172FF74: VarLateMemCallLdRfVar
  loc_172FF7F: Proc_6_7_F26918(var_23C, Me.FGrid, 1, 1, var_200)
  loc_172FF87: var_24C = -1 & var_23C 
  loc_172FF9E: Me.Connection15.Execute CStr(var_24C & " Order By HS.Vdate "), var_218, var_110
  loc_172FFA9: Set var_88 = var_218
  loc_172FFE7: If (var_88.RecordCount > 0) Then
  loc_172FFED:   var_A0 = CDbl(0)
  loc_172FFF3:   var_A8 = CDbl(0)
  loc_172FFF9:   var_B0 = CDbl(0)
  loc_172FFFF:   var_C0 = CDbl(0)
  loc_1730005:   var_C8 = CDbl(0)
  loc_173000B:   var_D0 = CDbl(0)
  loc_1730011:   var_D8 = CDbl(0)
  loc_1730017:   var_E0 = CDbl(0)
  loc_173001D:   var_E8 = CDbl(0)
  loc_1730023:   var_F0 = CDbl(0)
  loc_1730029:   var_F8 = CDbl(0)
  loc_173002F:   var_100 = CDbl(0)
  loc_1730035:   var_B8 = CDbl(0)
  loc_173003B:   var_88.MoveFirst
  loc_1730040:   ' Referenced from: 1730C8D
  loc_173004F:   If Not(var_88.EOF) Then
  loc_1730055:     Set var_28C = var_8C 
  loc_1730064:     var_28C.AddNew var_110, var_120
  loc_173006F:     var_96 = (var_96 + 1)
  loc_1730097:     var_28C.Fields.Item("mLine").Value = vbNullString
  loc_17300D2:     var_28C.Fields.Item("SNo").Value = CVar(CStr(var_96) & ".")
  loc_1730147:     var_28C.Fields.Item("Billdate").Value = Format(CVar(var_88.Fields.Item("Billdate")), "DD/MM/YY")
  loc_17301A9:     var_28C.Fields.Item("BillNo").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("BillNo")), 1, 1, var_96, var_B8, var_100))
  loc_17301E9:     var_170 = "0.00"
  loc_1730226:     var_28C.Fields.Item("BillAmount").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("BillAmount")), var_170)))
  loc_173026E:     Proc_6_39_E7D3A0(var_170, CVar(var_88.Fields.Item("BillAmount")), CVar(var_A0), 1, 1, var_F8)
  loc_1730276:     var_180 = (var_F0 + var_170)
  loc_173027B:     var_A0 = CSng(Format(CVar(var_88.Fields.Item("BillAmount")), var_170))
  loc_17302B5:     var_170 = "0.00"
  loc_17302F2:     var_28C.Fields.Item("Taxable").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Taxable")), var_170)))
  loc_173033A:     Proc_6_39_E7D3A0(var_170, CVar(var_88.Fields.Item("Taxable")), CVar(var_A8), 1, 1)
  loc_1730342:     var_180 = (var_A0 + var_170)
  loc_1730347:     var_A8 = CSng(Format(CVar(var_88.Fields.Item("Taxable")), var_170))
  loc_1730381:     var_170 = "0.00"
  loc_17303AE:     var_294 = var_28C.Fields
  loc_17303BE:     var_294.Item("nonTaxable").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("nonTaxable")), var_170)))
  loc_1730406:     Proc_6_39_E7D3A0(var_170, CVar(var_88.Fields.Item("nonTaxable")), CVar(var_B0), 1, 1)
  loc_173040E:     var_180 = (var_A8 + var_170)
  loc_1730413:     var_B0 = CSng(Format(CVar(var_88.Fields.Item("nonTaxable")), var_170))
  loc_1730439:     var_214 = "SELECT Sum(Amt) AS Tax, Max(SunCode) AS TaxType FROM (SunTransaction  as S inner join RevMast on S.Revcode=Revmast.Code) Inner Join SundryMast on Revmast.Sundry=SundryMast.Code WHERE RestCode='" & global_208
  loc_1730469:     Proc_6_7_F26918(var_170, CVar(var_88.Fields.Item("Billdate")), CVar(var_214 & "' and VDate ="), var_200, -1, var_294)
  loc_1730488:     unk_577EF3.Execute CStr(var_B0 & var_170 & " GROUP By SunCode Order By max(SundryMast.Name) Desc"), var_E8, var_E0
  loc_1730493:     Set var_90 = var_294
  loc_17304B3:     ' Referenced from: 1730BC0
  loc_17304C2:     If Not(var_90.EOF) Then
  loc_17304D9:       If (var_90.AbsolutePosition = 1) Then
  loc_1730502:         Proc_6_47_EF6560(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_173052A:         var_28C.Fields.Item("Tax1").Value = var_170
  loc_173056C:         Proc_6_39_E7D3A0(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_C0))
  loc_1730574:         var_180 = (var_D8 + var_170)
  loc_1730579:         var_C0 = CSng(CVar(var_214 & "' and VDate ="))
  loc_173058B:       Else
  loc_173059F:         If (var_90.AbsolutePosition = 2) Then
  loc_17305C8:           Proc_6_47_EF6560(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_17305F0:           var_28C.Fields.Item("Tax2").Value = var_170
  loc_1730632:           Proc_6_39_E7D3A0(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_C8))
  loc_173063A:           var_180 = (var_C0 + var_170)
  loc_173063F:           var_C8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_1730651:         Else
  loc_1730665:           If (var_90.AbsolutePosition = 3) Then
  loc_173068E:             Proc_6_47_EF6560(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_17306B6:             var_28C.Fields.Item("Tax3").Value = var_170
  loc_17306F8:             Proc_6_39_E7D3A0(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_D0))
  loc_1730700:             var_180 = (var_C8 + var_170)
  loc_1730705:             var_D0 = CSng(CVar(var_214 & "' and VDate ="))
  loc_1730717:           Else
  loc_173072B:             If (var_90.AbsolutePosition = 4) Then
  loc_1730754:               Proc_6_47_EF6560(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_173077C:               var_28C.Fields.Item("Tax4").Value = var_170
  loc_17307BE:               Proc_6_39_E7D3A0(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_D8))
  loc_17307C6:               var_180 = (var_D0 + var_170)
  loc_17307CB:               var_D8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_17307DD:             Else
  loc_17307F1:               If (var_90.AbsolutePosition = 5) Then
  loc_173081A:                 Proc_6_47_EF6560(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_1730842:                 var_28C.Fields.Item("Tax5").Value = var_170
  loc_1730884:                 Proc_6_39_E7D3A0(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_E0))
  loc_173088C:                 var_180 = (var_D8 + var_170)
  loc_1730891:                 var_E0 = CSng(CVar(var_214 & "' and VDate ="))
  loc_17308A3:               Else
  loc_17308B7:                 If (var_90.AbsolutePosition = 6) Then
  loc_17308E0:                   Proc_6_47_EF6560(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_1730908:                   var_28C.Fields.Item("Tax6").Value = var_170
  loc_173094A:                   Proc_6_39_E7D3A0(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_E8))
  loc_1730952:                   var_180 = (var_E0 + var_170)
  loc_1730957:                   var_E8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_1730969:                 Else
  loc_173097D:                   If (var_90.AbsolutePosition = 7) Then
  loc_17309A6:                     Proc_6_47_EF6560(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_17309CE:                     var_28C.Fields.Item("Tax7").Value = var_170
  loc_1730A10:                     Proc_6_39_E7D3A0(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_F0))
  loc_1730A18:                     var_180 = (var_E8 + var_170)
  loc_1730A1D:                     var_F0 = CSng(CVar(var_214 & "' and VDate ="))
  loc_1730A2F:                   Else
  loc_1730A43:                     If (var_90.AbsolutePosition = 8) Then
  loc_1730A6C:                       Proc_6_47_EF6560(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_1730A94:                       var_28C.Fields.Item("Tax8").Value = var_170
  loc_1730AD6:                       Proc_6_39_E7D3A0(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_F8))
  loc_1730ADE:                       var_180 = (var_F0 + var_170)
  loc_1730AE3:                       var_F8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_1730AF5:                     Else
  loc_1730B09:                       If (var_90.AbsolutePosition = 9) Then
  loc_1730B32:                         Proc_6_47_EF6560(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_1730B5A:                         var_28C.Fields.Item("Tax9").Value = var_170
  loc_1730B9C:                         Proc_6_39_E7D3A0(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_100))
  loc_1730BA4:                         var_180 = (var_F8 + var_170)
  loc_1730BA9:                         var_100 = CSng(CVar(var_214 & "' and VDate ="))
  loc_1730BB8:                       End If
  loc_1730BB8:                     End If
  loc_1730BB8:                   End If
  loc_1730BB8:                 End If
  loc_1730BB8:               End If
  loc_1730BB8:             End If
  loc_1730BB8:           End If
  loc_1730BB8:         End If
  loc_1730BB8:       End If
  loc_1730BBB:       var_90.MoveNext
  loc_1730BC0:       GoTo loc_17304B3
  loc_1730BC3:     End If
  loc_1730BE9:     Proc_6_47_EF6560(var_170, CVar(var_88.Fields.Item("Servicecharge")))
  loc_1730C11:     var_28C.Fields.Item("SCharge").Value = var_170
  loc_1730C29:     var_120 = CVar(var_B8) 'Double
  loc_1730C30:     var_110 = "Servicecharge"
  loc_1730C53:     Proc_6_39_E7D3A0(var_170, CVar(var_88.Fields.Item(var_110)), var_120)
  loc_1730C5B:     var_180 = (var_100 + var_170)
  loc_1730C60:     var_B8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_1730C7A:     var_28C.Update var_110, var_120
  loc_1730C81:     Set var_28C = Nothing 
  loc_1730C88:     var_88.MoveNext
  loc_1730C8D:     GoTo loc_1730040
  loc_1730C90:   End If
  loc_1730C93:   Set var_29C = var_8C 
  loc_1730CA2:   var_29C.AddNew var_110, var_120
  loc_1730CAD:   var_96 = (var_96 + 1)
  loc_1730CD5:   var_29C.Fields.Item("MLine").Value = "GF"
  loc_1730CE1:   var_120 = "Total-->"
  loc_1730D06:   var_29C.Fields.Item("Billdate").Value = "GF"
  loc_1730D5F:   var_29C.Fields.Item("BillAmount").Value = CVar(CStr(Format(var_A0, "0.00")))
  loc_1730DC3:   var_29C.Fields.Item("Taxable").Value = CVar(CStr(Format(var_A8, "0.00")))
  loc_1730E27:   var_29C.Fields.Item("nonTaxable").Value = CVar(CStr(Format(var_B0, "0.00")))
  loc_1730E8B:   var_29C.Fields.Item("Tax1").Value = CVar(CStr(Format(var_C0, "0.00")))
  loc_1730EEF:   var_29C.Fields.Item("Tax2").Value = CVar(CStr(Format(var_C8, "0.00")))
  loc_1730F53:   var_29C.Fields.Item("Tax3").Value = CVar(CStr(Format(var_D0, "0.00")))
  loc_1730FB7:   var_29C.Fields.Item("Tax4").Value = CVar(CStr(Format(var_D8, "0.00")))
  loc_173101B:   var_29C.Fields.Item("Tax5").Value = CVar(CStr(Format(var_E0, "0.00")))
  loc_173107F:   var_29C.Fields.Item("Tax6").Value = CVar(CStr(Format(var_E8, "0.00")))
  loc_17310E3:   var_29C.Fields.Item("Tax7").Value = CVar(CStr(Format(var_F0, "0.00")))
  loc_1731147:   var_29C.Fields.Item("Tax8").Value = CVar(CStr(Format(var_F8, "0.00")))
  loc_17311AB:   var_29C.Fields.Item("Tax9").Value = CVar(CStr(Format(var_100, "0.00")))
  loc_17311CC:   var_120 = "0.00"
  loc_17311DA:   var_110 = var_B8
  loc_17311EC:   var_180 = CVar(CStr(Format(var_110, var_120))) 'String
  loc_173120F:   var_29C.Fields.Item("SCharge").Value = var_180
  loc_1731231:   var_29C.Update var_110, var_120
  loc_1731238:   Set var_29C = Nothing 
  loc_173123C: End If
  loc_1731264: Me.FGrid1.Rows = 3
  loc_1731280: If (var_8C.RecordCount > 0) Then
  loc_1731289:   CVarUnk
  loc_173128E:   VerifyVarObj
  loc_1731294:   Set var_218 = Me.FGrid1
  loc_173129A:   LateIdStAd
  loc_17312C4:   Set var_218 = Me.FGrid1
  loc_17312CA:   Proc_96_13_FAD8C4(var_218, 0, 0, var_218, var_8C, Me.FGrid1.Text, 1, 1)
  loc_17312D5: End If
  loc_17312D9: Set var_2A8 = Me.FGrid1
  loc_17312E5: var_2A8.Tag = "TaxSummaryHall"
  loc_17312F6: var_2A8.Cols = &H12
  loc_17312FB: var_110 = 0
  loc_1731304: var_130 = 0
  loc_173130D: var_160 = "mLine"
  loc_1731316: LateIdCallSt
  loc_173131E: var_110 = 0
  loc_1731327: var_130 = 0
  loc_1731333: LateIdCallSt
  loc_173133B: var_110 = 0
  loc_1731344: var_130 = 1
  loc_173134D: var_160 = "SNo"
  loc_1731356: LateIdCallSt
  loc_173135E: var_110 = 1
  loc_173136D: var_130 = CVar(CInt(1)) 'Integer
  loc_1731374: LateIdCallSt
  loc_173137C: var_110 = 1
  loc_1731385: var_130 = &H1F4
  loc_1731391: LateIdCallSt
  loc_1731399: var_110 = 0
  loc_17313A2: var_130 = 2
  loc_17313AB: var_160 = "Bill Date"
  loc_17313B4: LateIdCallSt
  loc_17313BC: var_110 = 2
  loc_17313CB: var_130 = CVar(CInt(1)) 'Integer
  loc_17313D2: LateIdCallSt
  loc_17313DA: var_110 = 2
  loc_17313E3: var_130 = &H4B0
  loc_17313EF: LateIdCallSt
  loc_17313F7: var_110 = 0
  loc_1731400: var_130 = 3
  loc_1731409: var_160 = "Bill No"
  loc_1731412: LateIdCallSt
  loc_173141A: var_110 = 3
  loc_1731429: var_130 = CVar(CInt(1)) 'Integer
  loc_1731430: LateIdCallSt
  loc_1731438: var_110 = 3
  loc_1731447: var_130 = CVar(CInt(1)) 'Integer
  loc_173144E: LateIdCallSt
  loc_1731456: var_110 = 3
  loc_173145F: var_130 = 0
  loc_173146B: LateIdCallSt
  loc_1731473: var_110 = 0
  loc_173147C: var_130 = 4
  loc_1731485: var_160 = "Bill Amount"
  loc_173148E: LateIdCallSt
  loc_1731496: var_110 = 4
  loc_17314A5: var_130 = CVar(CInt(7)) 'Integer
  loc_17314AC: LateIdCallSt
  loc_17314B4: var_110 = 4
  loc_17314C3: var_130 = CVar(CInt(7)) 'Integer
  loc_17314CA: LateIdCallSt
  loc_17314D2: var_110 = 4
  loc_17314DB: var_130 = &H708
  loc_17314E7: LateIdCallSt
  loc_17314EF: var_110 = 0
  loc_17314F8: var_130 = 5
  loc_1731501: var_160 = "Taxable"
  loc_173150A: LateIdCallSt
  loc_1731512: var_110 = 1
  loc_173151B: var_130 = 5
  loc_1731524: var_160 = "Amount"
  loc_173152D: LateIdCallSt
  loc_1731535: var_110 = 5
  loc_1731544: var_130 = CVar(CInt(7)) 'Integer
  loc_173154B: LateIdCallSt
  loc_1731553: var_110 = 5
  loc_1731562: var_130 = CVar(CInt(7)) 'Integer
  loc_1731569: LateIdCallSt
  loc_1731571: var_110 = 5
  loc_173157A: var_130 = &H5DC
  loc_1731586: LateIdCallSt
  loc_173158E: var_110 = 0
  loc_1731597: var_130 = 6
  loc_17315A0: var_160 = "Non-Taxable"
  loc_17315A9: LateIdCallSt
  loc_17315B1: var_110 = 1
  loc_17315BA: var_130 = 6
  loc_17315C3: var_160 = "Amount"
  loc_17315CC: LateIdCallSt
  loc_17315D4: var_110 = 6
  loc_17315E3: var_130 = CVar(CInt(7)) 'Integer
  loc_17315EA: LateIdCallSt
  loc_17315F2: var_110 = 6
  loc_1731601: var_130 = CVar(CInt(7)) 'Integer
  loc_1731608: LateIdCallSt
  loc_1731610: var_110 = 6
  loc_1731619: var_130 = &H5DC
  loc_1731625: LateIdCallSt
  loc_1731644: var_214 = "SELECT DISTINCT SundryMast.Name FROM (SunTransaction AS S INNER JOIN RevMast ON S.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code where s.restcode in ('" & global_208
  loc_173164E: var_110 = 0
  loc_1731655: var_130 = 1
  loc_1731663: VarLateMemCallLdRfVar
  loc_173166E: Proc_6_7_F26918(var_180, Me.FGrid, var_130, var_110, CVar(var_214 & "') and VDate between "), var_280, -1, var_218)
  loc_1731698: VarLateMemCallLdRfVar
  loc_17316A3: Proc_6_7_F26918(var_23C, Me.FGrid, 1, 1, var_2A8 & var_180 & " and ", var_130)
  loc_17316C2: Me.Connection15.Execute CStr(var_110 & var_23C & "  order by SundryMast.Name Desc"), var_2A8, var_130
  loc_17316CD: Set var_88 = var_218
  loc_17316FC: For var_2AC = 7 To &HF: var_96 = var_2AC 'Integer
  loc_1731713:   If (var_88.EOF = 0) Then
  loc_1731716:     var_120 = 0
  loc_1731723:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1731753:     var_170 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_173175A:     LateIdCallSt
  loc_1731774:     var_110 = CVar(CLng(var_96)) 'Long
  loc_1731779:     var_130 = &H708
  loc_1731785:     LateIdCallSt
  loc_1731790:     var_88.MoveNext
  loc_1731798:   Else
  loc_1731798:     var_110 = 0
  loc_17317A5:     var_130 = CVar(CLng(var_96)) 'Long
  loc_17317B5:     var_214 = CStr((var_96 - 6))
  loc_17317B9:     var_150 = CVar("Tax" & var_214) 'String
  loc_17317C0:     LateIdCallSt
  loc_17317D2:     var_110 = CVar(CLng(var_96)) 'Long
  loc_17317D7:     var_130 = 0
  loc_17317E3:     LateIdCallSt
  loc_17317EB:   End If
  loc_17317EF:   var_110 = CVar(CLng(var_96)) 'Long
  loc_17317FA:   var_130 = CVar(CInt(7)) 'Integer
  loc_1731801:   LateIdCallSt
  loc_173180D:   var_110 = CVar(CLng(var_96)) 'Long
  loc_1731818:   var_130 = CVar(CInt(7)) 'Integer
  loc_173181F:   LateIdCallSt
  loc_173182A: Next var_2AC 'Integer
  loc_173182F: var_110 = 0
  loc_1731838: var_130 = &H10
  loc_1731841: var_160 = "Service"
  loc_173184A: LateIdCallSt
  loc_1731852: var_110 = 1
  loc_173185B: var_130 = &H10
  loc_1731864: var_160 = "Charge"
  loc_173186D: LateIdCallSt
  loc_1731875: var_110 = &H10
  loc_1731884: var_130 = CVar(CInt(7)) 'Integer
  loc_173188B: LateIdCallSt
  loc_1731893: var_110 = &H10
  loc_17318A2: var_130 = CVar(CInt(7)) 'Integer
  loc_17318A9: LateIdCallSt
  loc_17318B1: var_110 = &H10
  loc_17318BA: var_130 = &H640
  loc_17318C6: LateIdCallSt
  loc_17318CE: var_110 = 0
  loc_17318D7: var_130 = &H11
  loc_17318E0: var_160 = "Mark"
  loc_17318E9: LateIdCallSt
  loc_17318F1: var_110 = &H11
  loc_17318FA: var_130 = 0
  loc_1731906: LateIdCallSt
  loc_1731910: Set var_2A8 = Nothing 
  loc_1731918: Set var_218 = Me.FGrid1
  loc_1731948: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_173194B:   var_110 = vbNullString
  loc_1731955:   Set var_218 = Me.FGrid1
  loc_1731966: End If
  loc_173199D: var_110 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_17319BD: Me.FGrid1.Row = CVar(CLng(IIf(var_110, FRow, 1)))
  loc_17319DE: var_150 = Me.FGrid1.Cols
  loc_1731A0B: var_110 = ((Fcol <> 0) And ((CLng(var_150) - 1) >= CLng(Fcol)))
  loc_1731A2B: Me.FGrid1.Col = CVar(CLng(IIf(var_110, Fcol, 1)))
  loc_1731A47: Set var_8C = Nothing
  loc_1731A4F: Set var_88 = Nothing
  loc_1731A57: Set var_90 = Nothing
  loc_1731A5C: IStAd
  loc_1731A60: Exit Sub
  loc_1731A61: ' Referenced from: 172FE08
  loc_1731A69: Proc_6_60_E63754(0, Nothing, var_150, var_150, FGrid1.DispID_10000, var_110, FGrid1.DispID_FFFF)
  loc_1731A6E: Exit Sub
End Sub

Public Sub SettleReport(formName, FRow, Fcol) '1740408
  'Data Table: 577EF0
  Dim var_1D0 As String
  Dim var_250 As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_270 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_304 As String
  Dim var_2A0 As Integer
  Dim var_1CC As Integer
  Dim var_1F0 As Variant
  Dim var_314 As Variant
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_144 As Double
  Dim var_14C As Double
  Dim var_94 As Recordset15
  Dim var_31C As Recordset15
  Dim var_1CA As Integer
  Dim var_334 As Double
  Dim var_348 As Recordset15
  Dim unk_577EF3 As Connection15
  Dim var_9C As Recordset15
  Dim var_90 As Recordset15
  Dim var_35C As MSHFlexGrid
  loc_173E75D: var_250 = CVar("WHERE P.VType<>'AD' AND P.RestCode='" & global_208 & "' AND P.VDate Between ") 'String
  loc_173E775: VarLateMemCallLdRfVar
  loc_173E780: Proc_6_7_F26918(var_240, Me.FGrid, 1)
  loc_173E7AA: VarLateMemCallLdRfVar
  loc_173E7B5: Proc_6_7_F26918(var_2F0, Me.FGrid, 1)
  loc_173E7E5: Call 0.Method_arg_54 ("Sattlement Report", 0 & var_240 & " And ")
  loc_173E7EA: var_1E0 = 1
  loc_173E813: If (Me.Check1.Value = 0) Then
  loc_173E836:   var_98 = CStr(CVar(CStr(1 & var_2F0) & " AND P.U_Name In (") & Me.GridString1 & ") ")
  loc_173E844: End If
  loc_173E847: var_1E0 = 0
  loc_173E884: var_240 = Me.FGrid
  loc_173E89E: Set var_314 = 1(1 & CStr(var_240.TextMatrix))
  loc_173E8A4: var_240.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_173E8C4: var_1E0 = 0
  loc_173E8CB: var_200 = 1
  loc_173E8E3: var_270 = 1
  loc_173E8EA: var_2A0 = 1
  loc_173E92B: var_1CC = CInt(DateDiff("d", CVar(CStr(Me.FGrid.TextMatrix)), CVar(CStr(Me.FGrid.TextMatrix)), 1, 1))
  loc_173E93F: var_1E0 = 1
  loc_173E968: If (Me.Check1.Value = 0) Then
  loc_173E96E:   var_220 = Me.FormulaString1
  loc_173E975:   var_1E0 = "For User : "
  loc_173E991:   var_1F0 = vbNullString
  loc_173E996:   var_250 = var_1E0 & Left(var_220, &H73) & var_1F0 
  loc_173E9A2:   Set var_314 = Me.Text2
  loc_173E9A8:   Me.Text2.Text = CStr(var_250)
  loc_173E9C1: Else
  loc_173E9C8:   Set var_314 = Me.Text2
  loc_173E9CE:   var_314.Text = "For User :   All"
  loc_173E9D6: End If
  loc_173E9E3: Call Proc_249_106_104221C(New, var_314, var_220, var_1E0, var_1CC, var_250, var_2A0)
  loc_173E9EB: Set var_90 = var_314
  loc_173EA02: var_1D0 = "SELECT P.DocID, P.SettleDate AS SettleDate , P.VDate AS BillDate, P.VNo AS BillNo,H.PartyName AS PartyName, P.VDate, P.PayType, P.BillAmount, P.AmtCr AS Amount, P.Comments AS Narration, P.U_Name AS Employee,SubGroup.Name FROM PayChargeH P " & "LEFT JOIN HallBook H ON P.ContraDocID=H.DocId LEFT JOIN SUBGROUP ON P.COMPCODE=SUBGROUP.SUBCODE "
  loc_173EA19: Me.Connection15.Execute var_1D0 & var_98 & " ORDER BY P.VDate, P.VNo", var_220, -1
  loc_173EA24: Set var_94 = var_314
  loc_173EA39: var_A4 = CDbl(0)
  loc_173EA3F: var_AC = CDbl(0)
  loc_173EA45: var_B4 = CDbl(0)
  loc_173EA4B: var_BC = CDbl(0)
  loc_173EA51: var_C4 = CDbl(0)
  loc_173EA57: var_CC = CDbl(0)
  loc_173EA5D: var_D4 = CDbl(0)
  loc_173EA63: var_DC = CDbl(0)
  loc_173EA69: var_E4 = CDbl(0)
  loc_173EA6F: var_EC = CDbl(0)
  loc_173EA75: var_F4 = CDbl(0)
  loc_173EA7B: var_FC = CDbl(0)
  loc_173EA81: var_104 = CDbl(0)
  loc_173EA87: var_10C = CDbl(0)
  loc_173EA8D: var_114 = CDbl(0)
  loc_173EA93: var_11C = CDbl(0)
  loc_173EA99: var_124 = CDbl(0)
  loc_173EA9F: var_12C = CDbl(0)
  loc_173EAA5: var_134 = CDbl(0)
  loc_173EAAB: var_13C = CDbl(0)
  loc_173EAB1: var_144 = CDbl(0)
  loc_173EAB7: var_14C = CDbl(0)
  loc_173EABD: var_88 = vbNullString
  loc_173EAD4: If (var_94.RecordCount > 0) Then
  loc_173EADA:   var_94.MoveFirst
  loc_173EAE2:   Set var_31C = var_90 
  loc_173EAF1:   var_31C.AddNew var_1E0, var_1F0
  loc_173EB1B:   var_31C.Fields.Item("mLine").Value = "BL"
  loc_173EB4C:   var_31C.Fields.Item("PartyName").Value = "** SETTLEMENT'S DETAILS **"
  loc_173EB58:   var_1F0 = "*"
  loc_173EB61:   var_1E0 = "Mark"
  loc_173EB7D:   var_31C.Fields.Item(var_1E0).Value = var_1F0
  loc_173EB94:   var_31C.Update var_1E0, var_1F0
  loc_173EB99:   ' Referenced from: 173F477
  loc_173EBA8:   If Not(var_94.EOF) Then
  loc_173EBB1:     var_1CA = (var_1CA + 1)
  loc_173EBBF:     var_31C.AddNew var_1E0, var_1F0
  loc_173EBE9:     var_31C.Fields.Item("mLine").Value = vbNullString
  loc_173EC24:     var_31C.Fields.Item("SNo").Value = CVar(CStr(var_1CA) & ".")
  loc_173EC99:     var_31C.Fields.Item("SettleDate").Value = Format(CVar(var_94.Fields.Item("SettleDate")), "dd/MMM/yy")
  loc_173ED13:     var_31C.Fields.Item("Billdate").Value = Format(CVar(var_94.Fields.Item("Billdate")), "dd/MMM/yy")
  loc_173ED79:     var_31C.Fields.Item("BillNo").Value = CVar(CStr(var_94.Fields.Item("BillNo").Value))
  loc_173EDB6:     var_230 = Trim(CVar(var_94.Fields.Item("PartyName")))
  loc_173EDEE:     var_31C.Fields.Item("PartyName").Value = Left(var_230, &H19)
  loc_173EE2B:     Proc_6_47_EF6560(var_230, CVar(var_94.Fields.Item("Amount")), 1, 1, 1, 1, var_1CA)
  loc_173EE53:     var_31C.Fields.Item("Amount").Value = var_230
  loc_173EE9B:     var_334 = Val(CStr(var_94.Fields.Item("Amount").Value))
  loc_173EEA5:     var_A4 = (var_A4 + var_334)
  loc_173EEF8:     var_230 = CVar(Proc_6_45_EADFB8(" " & Proc_6_38_E69628(CVar(var_94.Fields.Item("Narration")), var_A4, var_334, var_14C, var_144), &H64, var_13C)) 'String
  loc_173EF1B:     var_31C.Fields.Item("Narration").Value = var_230
  loc_173EF87:     var_31C.Fields.Item("Mode").Value = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_173EFDF:     var_31C.Fields.Item("EmpLoyee").Value = CVar(var_94.Fields.Item("EmpLoyee"))
  loc_173F016:     var_230 = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_173F029:     var_344 = Ucase(var_230) 'Variant
  loc_173F042:     If (var_344 = "CREDIT CARD") Then
  loc_173F072:       Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_CC))
  loc_173F07A:       var_240 = (var_134 + var_230)
  loc_173F07F:       var_CC = CSng(Ucase(var_230))
  loc_173F091:     Else
  loc_173F09C:       If (var_344 = "CASH") Then
  loc_173F0CC:         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_AC))
  loc_173F0D4:         var_240 = (var_CC + var_230)
  loc_173F0D9:         var_AC = CSng(Ucase(var_230))
  loc_173F0EB:       Else
  loc_173F0F6:         If (var_344 = "CHEQUE") Then
  loc_173F126:           Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B4))
  loc_173F12E:           var_240 = (var_AC + var_230)
  loc_173F133:           var_B4 = CSng(Ucase(var_230))
  loc_173F145:         Else
  loc_173F150:           If (var_344 = "COMPLEMENTARY") Then
  loc_173F180:             Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_BC))
  loc_173F188:             var_240 = (var_B4 + var_230)
  loc_173F18D:             var_BC = CSng(Ucase(var_230))
  loc_173F19F:           Else
  loc_173F1AA:             If (var_344 = "COMPANY") Then
  loc_173F1F0:               var_230 = CVar(Proc_6_45_EADFB8(" " & Proc_6_38_E69628(CVar(var_94.Fields.Item("Name")), var_BC), &H64)) 'String
  loc_173F213:               var_31C.Fields.Item("Narration").Value = var_230
  loc_173F25E:               Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C4))
  loc_173F266:               var_240 = (var_12C + var_230)
  loc_173F26B:               var_C4 = CSng(Ucase(var_230))
  loc_173F27D:             Else
  loc_173F288:               If (var_344 = "HOLD") Then
  loc_173F2B8:                 Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D4))
  loc_173F2C0:                 var_240 = (var_C4 + var_230)
  loc_173F2C5:                 var_D4 = CSng(Ucase(var_230))
  loc_173F2D7:               Else
  loc_173F2E2:                 If (var_344 = "ROOM") Then
  loc_173F312:                   Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_DC))
  loc_173F31A:                   var_240 = (var_D4 + var_230)
  loc_173F31F:                   var_DC = CSng(Ucase(var_230))
  loc_173F331:                 Else
  loc_173F33C:                   If (var_344 = "STAFF") Then
  loc_173F36C:                     Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E4))
  loc_173F374:                     var_240 = (var_DC + var_230)
  loc_173F379:                     var_E4 = CSng(Ucase(var_230))
  loc_173F38B:                   Else
  loc_173F396:                     If (var_344 = "VOID") Then
  loc_173F3C6:                       Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_EC))
  loc_173F3CE:                       var_240 = (var_E4 + var_230)
  loc_173F3D3:                       var_EC = CSng(Ucase(var_230))
  loc_173F3E5:                     Else
  loc_173F40B:                       var_220 = CVar(var_94.Fields.Item("Amount")) 'Address
  loc_173F412:                       Proc_6_39_E7D3A0(var_230, var_220, CVar(var_F4))
  loc_173F41A:                       var_240 = (var_EC + var_230)
  loc_173F41F:                       var_F4 = CSng(Ucase(var_230))
  loc_173F42E:                     End If
  loc_173F42E:                   End If
  loc_173F42E:                 End If
  loc_173F42E:               End If
  loc_173F42E:             End If
  loc_173F42E:           End If
  loc_173F42E:         End If
  loc_173F42E:       End If
  loc_173F42E:     End If
  loc_173F42E:     var_1F0 = "*"
  loc_173F437:     var_1E0 = "Mark"
  loc_173F453:     var_31C.Fields.Item(var_1E0).Value = var_1F0
  loc_173F46A:     var_31C.Update var_1E0, var_1F0
  loc_173F472:     var_94.MoveNext
  loc_173F477:     GoTo loc_173EB99
  loc_173F47A:   End If
  loc_173F47C:   Set var_31C = Nothing 
  loc_173F483:   Set var_348 = var_90 
  loc_173F492:   var_348.AddNew var_1E0, var_1F0
  loc_173F4BC:   var_348.Fields.Item("mLine").Value = "BL"
  loc_173F4ED:   var_348.Fields.Item("PartyName").Value = "** SETTLEMENT'S SUMMARY **"
  loc_173F4F9:   var_1F0 = "*"
  loc_173F502:   var_1E0 = "Mark"
  loc_173F50E:   var_314 = var_348.Fields
  loc_173F51E:   var_314.Item(var_1E0).Value = var_1F0
  loc_173F535:   var_348.Update var_1E0, var_1F0
  loc_173F555:   var_304 = "SELECT  Distinct P.PayType FROM PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId " & var_98 & " ORDER BY P.PayType"
  loc_173F55E:   unk_577EF3.Execute var_304, var_220, -1
  loc_173F569:   Set var_9C = var_314
  loc_173F58D:   If (var_9C.RecordCount > 0) Then
  loc_173F590:     ' Referenced from: 173FC53
  loc_173F59F:     If Not(var_9C.EOF) Then
  loc_173F5AD:       var_348.AddNew var_1E0, var_1F0
  loc_173F5D7:       var_348.Fields.Item("mLine").Value = vbNullString
  loc_173F61C:       var_358 = Ucase(Trim(CVar(var_9C.Fields.Item("PayType")))) 'Variant
  loc_173F635:       If (var_358 = "CREDIT CARD") Then
  loc_173F65D:         var_348.Fields.Item("Narration").Value = "** Credit Total **"
  loc_173F6B1:         var_348.Fields.Item("Amount").Value = Format(var_CC, "0.00")
  loc_173F6C7:       Else
  loc_173F6D2:         If (var_358 = "CASH") Then
  loc_173F6FA:           var_348.Fields.Item("Narration").Value = "** Cash Total **"
  loc_173F74E:           var_348.Fields.Item("Amount").Value = Format(var_AC, "0.00")
  loc_173F764:         Else
  loc_173F76F:           If (var_358 = "CHEQUE") Then
  loc_173F797:             var_348.Fields.Item("Narration").Value = "** Cheque Total **"
  loc_173F7EB:             var_348.Fields.Item("Amount").Value = Format(var_B4, "0.00")
  loc_173F801:           Else
  loc_173F80C:             If (var_358 = "COMPLEMENTARY") Then
  loc_173F834:               var_348.Fields.Item("Narration").Value = "** Complementry Total **"
  loc_173F888:               var_348.Fields.Item("Amount").Value = Format(var_BC, "0.00")
  loc_173F89E:             Else
  loc_173F8A9:               If (var_358 = "COMPANY") Then
  loc_173F8D1:                 var_348.Fields.Item("Narration").Value = "** Company Total **"
  loc_173F925:                 var_348.Fields.Item("Amount").Value = Format(var_C4, "0.00")
  loc_173F93B:               Else
  loc_173F946:                 If (var_358 = "HOLD") Then
  loc_173F96E:                   var_348.Fields.Item("Narration").Value = "** Hold Total **"
  loc_173F9C2:                   var_348.Fields.Item("Amount").Value = Format(var_D4, "0.00")
  loc_173F9D8:                 Else
  loc_173F9E3:                   If (var_358 = "ROOM") Then
  loc_173FA0B:                     var_348.Fields.Item("Narration").Value = "** Room Total **"
  loc_173FA5F:                     var_348.Fields.Item("Amount").Value = Format(var_DC, "0.00")
  loc_173FA75:                   Else
  loc_173FA80:                     If (var_358 = "STAFF") Then
  loc_173FAA8:                       var_348.Fields.Item("Narration").Value = "** Staff Total **"
  loc_173FAFC:                       var_348.Fields.Item("Amount").Value = Format(var_E4, "0.00")
  loc_173FB12:                     Else
  loc_173FB1D:                       If (var_358 = "VOID") Then
  loc_173FB45:                         var_348.Fields.Item("Narration").Value = "** Void Total **"
  loc_173FB99:                         var_348.Fields.Item("Amount").Value = Format(var_EC, "0.00")
  loc_173FBAF:                       Else
  loc_173FBD4:                         var_348.Fields.Item("Narration").Value = "** Others Total **"
  loc_173FBEA:                         var_1F0 = "0.00"
  loc_173FBF8:                         var_1E0 = var_F4
  loc_173FC28:                         var_348.Fields.Item("Amount").Value = Format(var_1E0, var_1F0)
  loc_173FC3B:                       End If
  loc_173FC3B:                     End If
  loc_173FC3B:                   End If
  loc_173FC3B:                 End If
  loc_173FC3B:               End If
  loc_173FC3B:             End If
  loc_173FC3B:           End If
  loc_173FC3B:         End If
  loc_173FC3B:       End If
  loc_173FC46:       var_348.Update var_1E0, var_1F0
  loc_173FC4E:       var_9C.MoveNext
  loc_173FC53:       GoTo loc_173F590
  loc_173FC56:     End If
  loc_173FC56:   End If
  loc_173FC61:   var_348.AddNew var_1E0, var_1F0
  loc_173FC8B:   var_348.Fields.Item("mLine").Value = "GL"
  loc_173FC97:   var_1F0 = "Total-->"
  loc_173FCBC:   var_348.Fields.Item("Narration").Value = "GL"
  loc_173FD10:   var_348.Fields.Item("Amount").Value = Format(var_A4, "0.00")
  loc_173FD23:   var_1F0 = vbNullString
  loc_173FD2C:   var_1E0 = "Mark"
  loc_173FD48:   var_348.Fields.Item(var_1E0).Value = var_1F0
  loc_173FD5F:   var_348.Update var_1E0, var_1F0
  loc_173FD66:   Set var_348 = Nothing 
  loc_173FD6A: End If
  loc_173FD92: Me.FGrid1.Rows = 2
  loc_173FDAE: If (var_90.RecordCount > 0) Then
  loc_173FDB7:   CVarUnk
  loc_173FDBC:   VerifyVarObj
  loc_173FDC2:   Set var_314 = Me.FGrid1
  loc_173FDC8:   LateIdStAd
  loc_173FDF8:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_90, Me.FGrid1.Text, 1, 1)
  loc_173FE03: End If
  loc_173FE07: Set var_35C = Me.FGrid1
  loc_173FE13: var_35C.Tag = "SettleRepHall"
  loc_173FE24: var_35C.Cols = &HC
  loc_173FE29: var_1E0 = 0
  loc_173FE32: var_200 = 0
  loc_173FE3B: var_270 = "mLine"
  loc_173FE44: LateIdCallSt
  loc_173FE4C: var_1E0 = 0
  loc_173FE55: var_200 = 0
  loc_173FE61: LateIdCallSt
  loc_173FE69: var_1E0 = 0
  loc_173FE72: var_200 = 1
  loc_173FE7B: var_270 = "SNo"
  loc_173FE84: LateIdCallSt
  loc_173FE8C: var_1E0 = 1
  loc_173FE9B: var_200 = CVar(CInt(1)) 'Integer
  loc_173FEA2: LateIdCallSt
  loc_173FEAA: var_1E0 = 1
  loc_173FEB3: var_200 = &H1F4
  loc_173FEBF: LateIdCallSt
  loc_173FEC7: var_1E0 = 0
  loc_173FED0: var_200 = 2
  loc_173FED9: var_270 = "Sattle Date"
  loc_173FEE2: LateIdCallSt
  loc_173FEEA: var_1E0 = 2
  loc_173FEF9: var_200 = CVar(CInt(1)) 'Integer
  loc_173FF00: LateIdCallSt
  loc_173FF08: var_1E0 = 2
  loc_173FF11: var_200 = &H578
  loc_173FF1D: LateIdCallSt
  loc_173FF25: var_1E0 = 0
  loc_173FF2E: var_200 = 3
  loc_173FF37: var_270 = "Bill No"
  loc_173FF40: LateIdCallSt
  loc_173FF48: var_1E0 = 3
  loc_173FF57: var_200 = CVar(CInt(1)) 'Integer
  loc_173FF5E: LateIdCallSt
  loc_173FF66: var_1E0 = 3
  loc_173FF6F: var_200 = &H3B6
  loc_173FF7B: LateIdCallSt
  loc_173FF83: var_1E0 = 0
  loc_173FF8C: var_200 = 4
  loc_173FF95: var_270 = "Bill Date"
  loc_173FF9E: LateIdCallSt
  loc_173FFA6: var_1E0 = 4
  loc_173FFB5: var_200 = CVar(CInt(1)) 'Integer
  loc_173FFBC: LateIdCallSt
  loc_173FFC4: var_1E0 = 4
  loc_173FFD3: var_200 = CVar(CInt(1)) 'Integer
  loc_173FFDA: LateIdCallSt
  loc_173FFE2: var_1E0 = 4
  loc_173FFEB: var_200 = &H514
  loc_173FFF7: LateIdCallSt
  loc_173FFFF: var_1E0 = 0
  loc_1740008: var_200 = 5
  loc_1740011: var_270 = "Party Name"
  loc_174001A: LateIdCallSt
  loc_1740022: var_1E0 = 5
  loc_1740031: var_200 = CVar(CInt(1)) 'Integer
  loc_1740038: LateIdCallSt
  loc_1740040: var_1E0 = 5
  loc_174004F: var_200 = CVar(CInt(1)) 'Integer
  loc_1740056: LateIdCallSt
  loc_174005E: var_1E0 = 5
  loc_1740067: var_200 = &HC80
  loc_1740073: LateIdCallSt
  loc_174007B: var_1E0 = 0
  loc_1740084: var_200 = 6
  loc_174008D: var_270 = "Narration"
  loc_1740096: LateIdCallSt
  loc_174009E: var_1E0 = 6
  loc_17400AD: var_200 = CVar(CInt(1)) 'Integer
  loc_17400B4: LateIdCallSt
  loc_17400BC: var_1E0 = 6
  loc_17400C5: var_200 = &HC80
  loc_17400D1: LateIdCallSt
  loc_17400D9: var_1E0 = 0
  loc_17400E2: var_200 = 7
  loc_17400EB: var_270 = "Amount "
  loc_17400F4: LateIdCallSt
  loc_17400FC: var_1E0 = 7
  loc_174010B: var_200 = CVar(CInt(7)) 'Integer
  loc_1740112: LateIdCallSt
  loc_174011A: var_1E0 = 7
  loc_1740129: var_200 = CVar(CInt(7)) 'Integer
  loc_1740130: LateIdCallSt
  loc_1740138: var_1E0 = 7
  loc_1740141: var_200 = &H5DC
  loc_174014D: LateIdCallSt
  loc_1740155: var_1E0 = 0
  loc_174015E: var_200 = 8
  loc_1740167: var_270 = " Modes"
  loc_1740170: LateIdCallSt
  loc_1740178: var_1E0 = 8
  loc_1740187: var_200 = CVar(CInt(1)) 'Integer
  loc_174018E: LateIdCallSt
  loc_1740196: var_1E0 = 8
  loc_174019F: var_200 = &H640
  loc_17401AB: LateIdCallSt
  loc_17401B3: var_1E0 = 0
  loc_17401BC: var_200 = 9
  loc_17401C5: var_270 = "Employee"
  loc_17401CE: LateIdCallSt
  loc_17401D6: var_1E0 = 9
  loc_17401E5: var_200 = CVar(CInt(1)) 'Integer
  loc_17401EC: LateIdCallSt
  loc_17401F4: var_1E0 = 9
  loc_1740203: var_200 = CVar(CInt(1)) 'Integer
  loc_174020A: LateIdCallSt
  loc_1740212: var_1E0 = 9
  loc_174021B: var_200 = &H44C
  loc_1740227: LateIdCallSt
  loc_174022F: var_1E0 = 0
  loc_1740238: var_200 = &HA
  loc_1740241: var_270 = "MARK"
  loc_174024A: LateIdCallSt
  loc_1740252: var_1E0 = &HA
  loc_174025B: var_200 = 0
  loc_1740267: LateIdCallSt
  loc_174026F: var_1E0 = 0
  loc_1740278: var_200 = &HB
  loc_1740281: var_270 = "MARK1"
  loc_174028A: LateIdCallSt
  loc_1740292: var_1E0 = &HB
  loc_174029B: var_200 = 0
  loc_17402A7: LateIdCallSt
  loc_17402B1: Set var_35C = Nothing 
  loc_17402B9: Set var_314 = Me.FGrid1
  loc_17402E9: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_17402EC:   var_1E0 = vbNullString
  loc_17402F6:   Set var_314 = Me.FGrid1
  loc_1740307: End If
  loc_174033E: var_1E0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_174035E: Me.FGrid1.Row = CVar(CLng(IIf(var_1E0, FRow, 1)))
  loc_174037F: var_220 = Me.FGrid1.Cols
  loc_17403AC: var_1E0 = ((Fcol <> 0) And ((CLng(var_220) - 1) >= CLng(Fcol)))
  loc_17403CC: Me.FGrid1.Col = CVar(CLng(IIf(var_1E0, Fcol, 1)))
  loc_17403E8: Set var_90 = Nothing
  loc_17403F0: Set var_94 = Nothing
  loc_17403F5: IStAd
  loc_17403F9: Exit Sub
  loc_1740402: Proc_6_60_E63754(0, Nothing, var_220, var_220, FGrid1.DispID_10000, var_1E0, FGrid1.DispID_FFFF)
  loc_1740407: Exit Sub
End Sub

Public Sub PartyOutStanding(formName, FRow, Fcol) '15F3E9C
  'Data Table: 577EF0
  Dim var_15C As String
  Dim var_1DC As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_290 As String
  Dim var_294 As String
  Dim var_298 As String
  Dim var_17C As Variant
  Dim var_2A0 As Variant
  Dim var_9C As Double
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_CC As Double
  Dim var_C4 As Double
  Dim var_BC As Double
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_90 As Recordset15
  Dim var_2AC As Recordset15
  Dim var_152 As Integer
  Dim var_27C As Variant
  Dim var_2C4 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_2D0 As MSHFlexGrid
  loc_15F2AD5: var_1DC = CVar(" H.RestCode='" & global_208 & "' AND H.VDate Between ") 'String
  loc_15F2AED: VarLateMemCallLdRfVar
  loc_15F2AF8: Proc_6_7_F26918(var_1CC, Me.FGrid, 1)
  loc_15F2B22: VarLateMemCallLdRfVar
  loc_15F2B2D: Proc_6_7_F26918(var_27C, Me.FGrid, 1)
  loc_15F2B5D: Call 0.Method_arg_54 ("OutStanding Report", 0 & var_1CC & " And ")
  loc_15F2B62: var_16C = 1
  loc_15F2B8B: If (Me.Check1.Value = 0) Then
  loc_15F2BAE:   var_94 = CStr(CVar(CStr(1 & var_27C) & " AND H.Party In (") & Me.GridString1 & ") ")
  loc_15F2BBC: End If
  loc_15F2BBF: var_16C = 0
  loc_15F2BFC: var_1CC = Me.FGrid
  loc_15F2C16: Set var_2A0 = 1(1 & CStr(var_1CC.TextMatrix))
  loc_15F2C1C: var_1CC.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_15F2C3C: var_16C = 1
  loc_15F2C65: If (Me.Check1.Value = 0) Then
  loc_15F2C6B:   var_1AC = Me.FormulaString1
  loc_15F2C72:   var_16C = "For Guest : "
  loc_15F2C9F:   Set var_2A0 = Me.Text2
  loc_15F2CA5:   Me.Text2.Text = CStr(var_16C & Left(var_1AC, &H73) & vbNullString)
  loc_15F2CBE: Else
  loc_15F2CC5:   Set var_2A0 = Me.Text2
  loc_15F2CCB:   var_2A0.Text = "For Guest :   All"
  loc_15F2CD3: End If
  loc_15F2CE0: Call Proc_249_113_1043C84(New, var_2A0, var_1AC, var_16C)
  loc_15F2CE8: Set var_8C = var_2A0
  loc_15F2CFF: var_15C = "SELECT DISTINCT H.DocID, HB.VDate AS BookDate, V.FromDate AS FuncStartDate, V.ToDate AS FuncEndDate, V.FromTime AS FuncStartTime, V.ToTime AS FuncEndTime, F.Name AS FuncName, H.Party AS PartyName, H.Vno as BillNo, H.VDate as BillDate,(H.NetAmt) AS Amount, isnull((select sum(amtcr) from PaychargeH where contradocid=H.BookDocID),0) as Advance, (H.NetAmt)-isnull((select sum(amtcr) from PaychargeH where contradocid=H.BookDocID),0) as Balance, H.BookDocID " & "FROM (((((HallSale1 AS H LEFT JOIN PayChargeH AS P ON H.DocId = P.DocId) LEFT JOIN HallBook AS HB ON H.BookDocID=HB.DocID) LEFT JOIN FunctionType AS F ON HB.Func_Name=F.Code) LEFT JOIN VenueOCC V ON HB.DocId=V.FPDocId)) "
  loc_15F2D14: var_298 = CStr(var_16C & Left(var_1AC, &H73) & vbNullString) & "WHERE " & var_94 & " AND (H.NetAmt)-isnull((select sum(amtcr) from PaychargeH where contradocid=H.BookDocID),0)>0 Order By H.Party,H.Vno"
  loc_15F2D1D: Me.Connection15.Execute CStr(var_16C & Left(var_1AC, &H73).TextMatrix), var_1AC, -1
  loc_15F2D28: Set var_90 = var_2A0
  loc_15F2D3F: var_9C = CDbl(0)
  loc_15F2D45: var_A4 = CDbl(0)
  loc_15F2D4B: var_AC = CDbl(0)
  loc_15F2D51: var_B4 = CDbl(0)
  loc_15F2D57: var_CC = CDbl(0)
  loc_15F2D5D: var_C4 = CDbl(0)
  loc_15F2D63: var_BC = CDbl(0)
  loc_15F2D69: var_D4 = CDbl(0)
  loc_15F2D6F: var_DC = CDbl(0)
  loc_15F2D75: var_E4 = CDbl(0)
  loc_15F2D7B: var_EC = CDbl(0)
  loc_15F2D81: var_88 = vbNullString
  loc_15F2D87: var_9C = CDbl(0)
  loc_15F2D8D: var_A4 = CDbl(0)
  loc_15F2D93: var_AC = CDbl(0)
  loc_15F2D99: var_B4 = CDbl(0)
  loc_15F2D9F: var_CC = CDbl(0)
  loc_15F2DA5: var_C4 = CDbl(0)
  loc_15F2DAB: var_BC = CDbl(0)
  loc_15F2DB1: var_D4 = CDbl(0)
  loc_15F2DB7: var_DC = CDbl(0)
  loc_15F2DBD: var_E4 = CDbl(0)
  loc_15F2DC3: var_EC = CDbl(0)
  loc_15F2DC9: var_88 = vbNullString
  loc_15F2DCF: var_9C = CDbl(0)
  loc_15F2DD5: var_A4 = CDbl(0)
  loc_15F2DDB: var_AC = CDbl(0)
  loc_15F2DE1: var_B4 = CDbl(0)
  loc_15F2DE7: var_C4 = CDbl(0)
  loc_15F2DED: var_CC = CDbl(0)
  loc_15F2DF3: var_D4 = CDbl(0)
  loc_15F2DF9: var_DC = CDbl(0)
  loc_15F2DFF: var_E4 = CDbl(0)
  loc_15F2E05: var_EC = CDbl(0)
  loc_15F2E0B: var_88 = vbNullString
  loc_15F2E22: If (var_90.RecordCount > 0) Then
  loc_15F2E28:   var_90.MoveFirst
  loc_15F2E2D:   ' Referenced from: 15F36EB
  loc_15F2E3C:   If Not(var_90.EOF) Then
  loc_15F2E42:     Set var_2AC = var_8C 
  loc_15F2E46:     var_16C = 1
  loc_15F2E4F:     var_1AC = Me.Check1
  loc_15F2E6F:     If (var_1AC.Value = 1) Then
  loc_15F2E75:       var_17C = CVar(var_158) 'String
  loc_15F2E7F:       var_16C = "PartyName"
  loc_15F2EAF:       If CBool(var_17C <> var_1AC.Recordset15.Fields.Item(var_16C).Value) Then
  loc_15F2EC6:         If (var_90.AbsolutePosition > 1) Then
  loc_15F2ED4:           var_2AC.AddNew var_16C, var_17C
  loc_15F2ED9:           var_17C = vbNullString
  loc_15F2EE2:           var_16C = "mLine"
  loc_15F2EFE:           var_2AC.Fields.Item(var_16C).Value = var_17C
  loc_15F2F15:           var_2AC.Update var_16C, var_17C
  loc_15F2F1A:         End If
  loc_15F2F1C:         var_152 = 0
  loc_15F2F2A:         var_2AC.AddNew var_16C, var_17C
  loc_15F2F54:         var_2AC.Fields.Item("mLine").Value = vbNullString
  loc_15F2F85:         var_2AC.Fields.Item("SrNo").Value = vbNullString
  loc_15F2F94:         var_16C = "PartyName"
  loc_15F2FBC:         var_17C = "*"
  loc_15F3001:         var_2AC.Fields.Item("FuncDate").Value = var_17C & Left(Trim(CVar(var_90.Fields.Item(var_16C))), &H13) & "*"
  loc_15F3027:         var_2AC.Update var_16C, var_17C
  loc_15F302C:       End If
  loc_15F302C:     End If
  loc_15F3032:     var_152 = (var_152 + 1)
  loc_15F3040:     var_2AC.AddNew var_16C, var_17C
  loc_15F306A:     var_2AC.Fields.Item("mLine").Value = vbNullString
  loc_15F30A5:     var_2AC.Fields.Item("SrNo").Value = CVar(CStr(var_152) & ".")
  loc_15F30FA:     var_2AC.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_15F316F:     var_1DC = Format(CVar(var_90.Fields.Item("FuncStartDate")), "DD/MM/YY") & " To " 
  loc_15F31BE:     var_2AC.Fields.Item("FuncDate").Value = 1 & Format(CVar(var_90.Fields.Item("FuncEndDate")), "DD/MM/YY")
  loc_15F31E4:     var_16C = "FuncStartTime"
  loc_15F3210:     var_294 = Proc_6_38_E69628(CVar(var_90.Fields.Item(var_16C)), 1, var_1DC, 1, 1, var_152) & " - "
  loc_15F323B:     var_290 = Proc_6_38_E69628(CVar(var_90.Fields.Item("FuncEndTime")), CStr(var_16C & Left(CVar(var_90.Fields.Item(var_16C)), &H73) & vbNullString) & "WHERE " & var_94, var_152, var_16C)
  loc_15F3262:     var_2AC.Fields.Item("FuncTime").Value = CVar(var_EC & var_290)
  loc_15F32C7:     var_2AC.Fields.Item("FuncName").Value = CVar(var_90.Fields.Item("FuncName"))
  loc_15F3327:     var_2AC.Fields.Item("BillNo").Value = CVar(CStr(var_90.Fields.Item("BillNo").Value))
  loc_15F3369:     var_1BC = "DD/MM/YY"
  loc_15F33A1:     var_2AC.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("Billdate")), var_1BC)
  loc_15F33DE:     Proc_6_47_EF6560(var_1BC, CVar(var_90.Fields.Item("Amount")), 1, 1)
  loc_15F3406:     var_2AC.Fields.Item("Amount").Value = var_1BC
  loc_15F3441:     Proc_6_47_EF6560(var_1BC, CVar(var_90.Fields.Item("Advance")), var_E4)
  loc_15F3469:     var_2AC.Fields.Item("Advance").Value = var_1BC
  loc_15F34A4:     Proc_6_39_E7D3A0(var_1BC, CVar(var_90.Fields.Item("Amount")))
  loc_15F34CF:     Proc_6_39_E7D3A0(var_1DC, CVar(var_90.Fields.Item("Advance")))
  loc_15F34EF:     var_1EC = (var_1BC - var_1DC)
  loc_15F352A:     var_2AC.Fields.Item("Balance").Value = CVar(CStr(Format(CVar(var_90.Fields.Item("FuncEndDate")), "0.00")))
  loc_15F354F:     var_17C = "*"
  loc_15F3558:     var_16C = "Mark"
  loc_15F3574:     var_2AC.Fields.Item(var_16C).Value = var_17C
  loc_15F358B:     var_2AC.Update var_16C, var_17C
  loc_15F3592:     Set var_2AC = Nothing 
  loc_15F35C3:     Proc_6_47_EF6560(var_1BC, CVar(var_90.Fields.Item("Amount")), CVar(var_CC), 1)
  loc_15F35CB:     var_1CC = (1 + var_1BC)
  loc_15F35F5:     Proc_6_39_E7D3A0(CVar(var_90.Fields.Item("FuncEndDate")), CVar(var_90.Fields.Item("Advance")), CVar(var_90.Fields.Item("Advance")))
  loc_15F35FD:     var_20C = (var_DC - CVar(var_90.Fields.Item("FuncEndDate")))
  loc_15F3602:     var_BC = CSng(CVar(var_90.Fields.Item("FuncEndDate")))
  loc_15F3646:     Proc_6_39_E7D3A0(var_1BC, CVar(var_90.Fields.Item("Advance")), CVar(var_E4))
  loc_15F364E:     var_1CC = (var_BC + var_1BC)
  loc_15F3653:     var_E4 = CSng(CVar(var_90.Fields.Item("Advance")))
  loc_15F3665:     var_17C = CVar(var_C4) 'Double
  loc_15F368F:     Proc_6_39_E7D3A0(var_1BC, CVar(var_90.Fields.Item("Amount")), var_17C)
  loc_15F3697:     var_1CC = (var_E4 + var_1BC)
  loc_15F369C:     var_C4 = CSng(CVar(var_90.Fields.Item("Advance")))
  loc_15F36B1:     var_16C = "PartyName"
  loc_15F36CD:     var_1AC = var_90.Fields.Item(var_16C).Value
  loc_15F36D6:     var_158 = CStr(var_1AC)
  loc_15F36E6:     var_90.MoveNext
  loc_15F36EB:     GoTo loc_15F2E2D
  loc_15F36EE:   End If
  loc_15F36F1:   Set var_2C4 = var_8C 
  loc_15F3700:   var_2C4.AddNew var_16C, var_17C
  loc_15F372A:   var_2C4.Fields.Item("mLine").Value = "GF"
  loc_15F3736:   var_17C = "Total--> "
  loc_15F375B:   var_2C4.Fields.Item("FuncDate").Value = "GF"
  loc_15F3772:   Proc_6_47_EF6560(var_1AC, var_C4)
  loc_15F379A:   var_2C4.Fields.Item("Amount").Value = var_1AC
  loc_15F37B4:   Proc_6_47_EF6560(var_1AC, var_E4)
  loc_15F37DC:   var_2C4.Fields.Item("Advance").Value = var_1AC
  loc_15F37EE:   var_16C = var_BC
  loc_15F37F6:   Proc_6_47_EF6560(var_1AC, var_16C)
  loc_15F3802:   var_17C = "Balance"
  loc_15F381E:   var_2C4.Fields.Item(var_17C).Value = var_1AC
  loc_15F3838:   var_2C4.Update var_16C, var_17C
  loc_15F383F:   Set var_2C4 = Nothing 
  loc_15F3843: End If
  loc_15F384D: arg_2C = Me.FGrid1.Text
  loc_15F386B: Me.FGrid1.Rows = 2
  loc_15F3887: If (var_8C.RecordCount > 0) Then
  loc_15F3890:   CVarUnk
  loc_15F3895:   VerifyVarObj
  loc_15F389B:   Set var_2A0 = Me.FGrid1
  loc_15F38A1:   LateIdStAd
  loc_15F38D1:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_15F38DC: End If
  loc_15F38E0: Set var_2D0 = Me.FGrid1
  loc_15F38EC: var_2D0.Tag = "PartyOutStanding"
  loc_15F38FD: var_2D0.Cols = &HC
  loc_15F3902: var_16C = 0
  loc_15F390B: var_18C = 0
  loc_15F3914: var_1FC = "mLine"
  loc_15F391D: LateIdCallSt
  loc_15F3925: var_16C = 0
  loc_15F392E: var_18C = 0
  loc_15F393A: LateIdCallSt
  loc_15F3942: var_16C = 0
  loc_15F394B: var_18C = 1
  loc_15F3954: var_1FC = "SNo."
  loc_15F395D: LateIdCallSt
  loc_15F3965: var_16C = 1
  loc_15F3974: var_18C = CVar(CInt(7)) 'Integer
  loc_15F397B: LateIdCallSt
  loc_15F3983: var_16C = 1
  loc_15F3992: var_18C = CVar(CInt(7)) 'Integer
  loc_15F3999: LateIdCallSt
  loc_15F39A1: var_16C = 1
  loc_15F39AA: var_18C = &H226
  loc_15F39B6: LateIdCallSt
  loc_15F39BE: var_16C = 0
  loc_15F39C7: var_18C = 2
  loc_15F39D0: var_1FC = "Doc Id"
  loc_15F39D9: LateIdCallSt
  loc_15F39E1: var_16C = 2
  loc_15F39EA: var_18C = 0
  loc_15F39F6: LateIdCallSt
  loc_15F39FE: var_16C = 0
  loc_15F3A07: var_18C = 3
  loc_15F3A10: var_1FC = "Function Date"
  loc_15F3A19: LateIdCallSt
  loc_15F3A21: var_16C = 3
  loc_15F3A2A: var_18C = &H8FC
  loc_15F3A36: LateIdCallSt
  loc_15F3A3E: var_16C = 0
  loc_15F3A47: var_18C = 4
  loc_15F3A50: var_1FC = "Function Time"
  loc_15F3A59: LateIdCallSt
  loc_15F3A61: var_16C = 4
  loc_15F3A6A: var_18C = &H6A4
  loc_15F3A76: LateIdCallSt
  loc_15F3A7E: var_16C = 0
  loc_15F3A87: var_18C = 5
  loc_15F3A90: var_1FC = "Function Type"
  loc_15F3A99: LateIdCallSt
  loc_15F3AA1: var_16C = 5
  loc_15F3AAA: var_18C = &HBB8
  loc_15F3AB6: LateIdCallSt
  loc_15F3ABE: var_16C = 0
  loc_15F3AC7: var_18C = 6
  loc_15F3AD0: var_1FC = "Order No."
  loc_15F3AD9: LateIdCallSt
  loc_15F3AE1: var_16C = 6
  loc_15F3AF0: var_18C = CVar(CInt(7)) 'Integer
  loc_15F3AF7: LateIdCallSt
  loc_15F3AFF: var_16C = 6
  loc_15F3B0E: var_18C = CVar(CInt(7)) 'Integer
  loc_15F3B15: LateIdCallSt
  loc_15F3B1D: var_16C = 6
  loc_15F3B26: var_18C = &H4B0
  loc_15F3B32: LateIdCallSt
  loc_15F3B3A: var_16C = 0
  loc_15F3B43: var_18C = 7
  loc_15F3B4C: var_1FC = "Order Date"
  loc_15F3B55: LateIdCallSt
  loc_15F3B5D: var_16C = 7
  loc_15F3B66: var_18C = &H578
  loc_15F3B72: LateIdCallSt
  loc_15F3B7A: var_16C = 0
  loc_15F3B83: var_18C = 8
  loc_15F3B8C: var_1FC = "Bill Amount"
  loc_15F3B95: LateIdCallSt
  loc_15F3B9D: var_16C = 8
  loc_15F3BAC: var_18C = CVar(CInt(7)) 'Integer
  loc_15F3BB3: LateIdCallSt
  loc_15F3BBB: var_16C = 8
  loc_15F3BCA: var_18C = CVar(CInt(7)) 'Integer
  loc_15F3BD1: LateIdCallSt
  loc_15F3BD9: var_16C = 8
  loc_15F3BE2: var_18C = &H578
  loc_15F3BEE: LateIdCallSt
  loc_15F3BF6: var_16C = 0
  loc_15F3BFF: var_18C = 9
  loc_15F3C08: var_1FC = "Advance"
  loc_15F3C11: LateIdCallSt
  loc_15F3C19: var_16C = 9
  loc_15F3C28: var_18C = CVar(CInt(7)) 'Integer
  loc_15F3C2F: LateIdCallSt
  loc_15F3C37: var_16C = 9
  loc_15F3C46: var_18C = CVar(CInt(7)) 'Integer
  loc_15F3C4D: LateIdCallSt
  loc_15F3C55: var_16C = 9
  loc_15F3C5E: var_18C = &H578
  loc_15F3C6A: LateIdCallSt
  loc_15F3C72: var_16C = 0
  loc_15F3C7B: var_18C = &HA
  loc_15F3C84: var_1FC = "Balance"
  loc_15F3C8D: LateIdCallSt
  loc_15F3C95: var_16C = &HA
  loc_15F3CA4: var_18C = CVar(CInt(7)) 'Integer
  loc_15F3CAB: LateIdCallSt
  loc_15F3CB3: var_16C = &HA
  loc_15F3CC2: var_18C = CVar(CInt(7)) 'Integer
  loc_15F3CC9: LateIdCallSt
  loc_15F3CD1: var_16C = &HA
  loc_15F3CDA: var_18C = &H578
  loc_15F3CE6: LateIdCallSt
  loc_15F3CEE: var_16C = 0
  loc_15F3CF7: var_18C = &HB
  loc_15F3D00: var_1FC = "MARK"
  loc_15F3D09: LateIdCallSt
  loc_15F3D11: var_16C = &HB
  loc_15F3D1A: var_18C = 0
  loc_15F3D26: LateIdCallSt
  loc_15F3D30: Set var_2D0 = Nothing 
  loc_15F3D48: If (var_90.RecordCount <= 0) Then
  loc_15F3D50:   global_152 = 0
  loc_15F3D53:   Exit Sub
  loc_15F3D54: End If
  loc_15F3D58: Set var_2A0 = Me.FGrid1
  loc_15F3D88: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_15F3D8B:   var_16C = vbNullString
  loc_15F3D95:   Set var_2A0 = Me.FGrid1
  loc_15F3DA6: End If
  loc_15F3DDD: var_16C = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_15F3DFD: Me.FGrid1.Row = CVar(CLng(IIf(var_16C, FRow, 1)))
  loc_15F3E4B: var_16C = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_15F3E6B: Me.FGrid1.Col = CVar(CLng(IIf(var_16C, Fcol, 1)))
  loc_15F3E87: Set var_8C = Nothing
  loc_15F3E8F: Set var_90 = Nothing
  loc_15F3E94: IStAd
  loc_15F3E98: Exit Sub
End Sub

Public Sub CashierCollection(formName, FRow, Fcol) '19B5214
  'Data Table: 577EF0
  Dim var_1CC As String
  Dim var_24C As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_26C As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_29C As Integer
  Dim var_1C8 As Integer
  Dim var_1EC As Variant
  Dim var_310 As Variant
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_118 As Double
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_130 As Double
  Dim var_138 As Double
  Dim var_140 As Double
  Dim var_148 As Double
  Dim var_94 As Recordset15
  Dim var_1C4 As Double
  Dim var_31C As Recordset15
  Dim var_1C6 As Integer
  Dim var_338 As Double
  Dim var_35C As Recordset15
  Dim var_360 As Recordset15
  Dim arg_2C As Variant
  Dim var_90 As Recordset15
  Dim var_364 As MSHFlexGrid
  loc_19B223D: var_24C = CVar("WHERE P.RestCode='" & global_208 & "' AND P.VDate Between ") 'String
  loc_19B2255: VarLateMemCallLdRfVar
  loc_19B2260: Proc_6_7_F26918(var_23C, Me.FGrid, 1)
  loc_19B228A: VarLateMemCallLdRfVar
  loc_19B2295: Proc_6_7_F26918(var_2EC, Me.FGrid, 1)
  loc_19B22C5: Call 0.Method_arg_54 ("Cashier Report", 0 & var_23C & " And ")
  loc_19B22CA: var_1DC = 1
  loc_19B22F3: If (Me.Check1.Value = 0) Then
  loc_19B2316:   var_98 = CStr(CVar(CStr(1 & var_2EC) & " AND P.U_Name In (") & Me.GridString1 & ") ")
  loc_19B2324: End If
  loc_19B2327: var_1DC = 0
  loc_19B2364: var_23C = Me.FGrid
  loc_19B237E: Set var_310 = 1(1 & CStr(var_23C.TextMatrix))
  loc_19B2384: var_23C.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_19B23A4: var_1DC = 0
  loc_19B23AB: var_1FC = 1
  loc_19B23C3: var_26C = 1
  loc_19B23CA: var_29C = 1
  loc_19B240B: var_1C8 = CInt(DateDiff("d", CVar(CStr(Me.FGrid.TextMatrix)), CVar(CStr(Me.FGrid.TextMatrix)), 1, 1))
  loc_19B241F: var_1DC = 1
  loc_19B2448: If (Me.Check1.Value = 0) Then
  loc_19B244E:   var_21C = Me.FormulaString1
  loc_19B2455:   var_1DC = "For User : "
  loc_19B2476:   var_24C = var_1DC & Left(var_21C, &H73) & vbNullString 
  loc_19B2482:   Set var_310 = Me.Text2
  loc_19B2488:   Me.Text2.Text = CStr(var_24C)
  loc_19B24A1: Else
  loc_19B24A8:   Set var_310 = Me.Text2
  loc_19B24AE:   var_310.Text = "For User :   All"
  loc_19B24B6: End If
  loc_19B24C3: Call Proc_249_114_1160CBC(New, var_310, var_21C, var_1DC, var_1C8, var_24C, var_29C)
  loc_19B24CB: Set var_90 = var_310
  loc_19B24E2: var_1CC = "SELECT P.DocID, P.VDate AS BillDate,P.VTYPE,P.VNO, H.PartyName AS PartyName, P.VDate, P.PayType, P.BillAmount, P.AmtCr AS Amount, P.Comments AS Narration, P.U_Name AS Name,P.VType FROM PayChargeH P " & "INNER JOIN HallBook H ON P.ContraDocID=H.DocId "
  loc_19B24F9: Me.Connection15.Execute var_1CC & var_98 & " ORDER BY P.VDate, P.VNo", var_21C, -1
  loc_19B2504: Set var_94 = var_310
  loc_19B2519: var_A0 = CDbl(0)
  loc_19B251F: var_A8 = CDbl(0)
  loc_19B2525: var_B0 = CDbl(0)
  loc_19B252B: var_B8 = CDbl(0)
  loc_19B2531: var_C0 = CDbl(0)
  loc_19B2537: var_C8 = CDbl(0)
  loc_19B253D: var_D0 = CDbl(0)
  loc_19B2543: var_D8 = CDbl(0)
  loc_19B2549: var_E0 = CDbl(0)
  loc_19B254F: var_E8 = CDbl(0)
  loc_19B2555: var_F0 = CDbl(0)
  loc_19B255B: var_F8 = CDbl(0)
  loc_19B2561: var_100 = CDbl(0)
  loc_19B2567: var_108 = CDbl(0)
  loc_19B256D: var_110 = CDbl(0)
  loc_19B2573: var_118 = CDbl(0)
  loc_19B2579: var_120 = CDbl(0)
  loc_19B257F: var_128 = CDbl(0)
  loc_19B2585: var_130 = CDbl(0)
  loc_19B258B: var_138 = CDbl(0)
  loc_19B2591: var_140 = CDbl(0)
  loc_19B2597: var_148 = CDbl(0)
  loc_19B259D: var_88 = vbNullString
  loc_19B25B4: If (var_94.RecordCount > 0) Then
  loc_19B25BA:   var_94.MoveFirst
  loc_19B25EB:   var_1C4 = CDate(var_94.Fields.Item("VDate").Value)
  loc_19B25FB:   Set var_31C = var_90 
  loc_19B25FF:   ' Referenced from: 19B3F56
  loc_19B260E:   If Not(var_94.EOF) Then
  loc_19B261E:     var_1EC = CDate(var_1C4)
  loc_19B2629:     var_1DC = "VDate"
  loc_19B2645:     var_21C = var_94.Fields.Item(var_1DC).Value
  loc_19B2665:     If CBool((var_1C8 > 0) And (var_1EC <> var_21C)) Then
  loc_19B2673:       var_31C.AddNew var_1DC, var_1EC
  loc_19B269D:       var_31C.Fields.Item("mLine").Value = "BL"
  loc_19B26A9:       var_1EC = "Total-->"
  loc_19B26CE:       var_31C.Fields.Item("Billdate").Value = "BL"
  loc_19B26E5:       Proc_6_47_EF6560(var_21C, var_A0, var_1C4, var_148, var_140, var_138)
  loc_19B270D:       var_31C.Fields.Item("BillAmount").Value = var_21C
  loc_19B2727:       Proc_6_47_EF6560(var_21C, var_A8, var_130, var_128)
  loc_19B274F:       var_31C.Fields.Item("Cash").Value = var_21C
  loc_19B2769:       Proc_6_47_EF6560(var_21C, var_B0, var_120)
  loc_19B2791:       var_31C.Fields.Item("Cheque").Value = var_21C
  loc_19B27AB:       Proc_6_47_EF6560(var_21C, var_B8)
  loc_19B27D3:       var_31C.Fields.Item("Complementary").Value = var_21C
  loc_19B27ED:       Proc_6_47_EF6560(var_21C, var_C0)
  loc_19B2815:       var_31C.Fields.Item("Company").Value = var_21C
  loc_19B282F:       Proc_6_47_EF6560(var_21C, var_C8)
  loc_19B2857:       var_31C.Fields.Item("CreditCard").Value = var_21C
  loc_19B2871:       Proc_6_47_EF6560(var_21C, var_D0)
  loc_19B2899:       var_31C.Fields.Item("Hold").Value = var_21C
  loc_19B28B3:       Proc_6_47_EF6560(var_21C, var_D8)
  loc_19B28DB:       var_31C.Fields.Item("Room").Value = var_21C
  loc_19B28F5:       Proc_6_47_EF6560(var_21C, var_E0)
  loc_19B291D:       var_31C.Fields.Item("Staff").Value = var_21C
  loc_19B2937:       Proc_6_47_EF6560(var_21C, var_E8)
  loc_19B295F:       var_31C.Fields.Item("Void").Value = var_21C
  loc_19B2979:       Proc_6_47_EF6560(var_21C, var_F0)
  loc_19B29A1:       var_31C.Fields.Item("Other").Value = var_21C
  loc_19B29B0:       var_1EC = vbNullString
  loc_19B29B9:       var_1DC = "Mark"
  loc_19B29D5:       var_31C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B29EC:       var_31C.Update var_1DC, var_1EC
  loc_19B29FC:       var_31C.AddNew var_1DC, var_1EC
  loc_19B2A01:       var_1EC = vbNullString
  loc_19B2A0A:       var_1DC = "mLine"
  loc_19B2A26:       var_31C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B2A3D:       var_31C.Update var_1DC, var_1EC
  loc_19B2A44:       var_1C6 = 0
  loc_19B2A4E:       var_F8 = (var_F8 + var_A0)
  loc_19B2A58:       var_100 = (var_100 + var_A8)
  loc_19B2A62:       var_108 = (var_108 + var_B0)
  loc_19B2A6C:       var_110 = (var_110 + var_B8)
  loc_19B2A76:       var_118 = (var_118 + var_C0)
  loc_19B2A80:       var_120 = (var_120 + var_C8)
  loc_19B2A8A:       var_128 = (var_128 + var_D0)
  loc_19B2A90:       var_D8 = CDbl(0)
  loc_19B2A9A:       var_138 = (var_138 + var_E0)
  loc_19B2AA4:       var_140 = (var_140 + var_E8)
  loc_19B2AAE:       var_148 = (var_148 + var_F0)
  loc_19B2AB4:       var_A0 = CDbl(0)
  loc_19B2ABA:       var_A8 = CDbl(0)
  loc_19B2AC0:       var_B0 = CDbl(0)
  loc_19B2AC6:       var_B8 = CDbl(0)
  loc_19B2ACC:       var_C0 = CDbl(0)
  loc_19B2AD2:       var_C8 = CDbl(0)
  loc_19B2AD8:       var_D0 = CDbl(0)
  loc_19B2ADE:       var_D8 = CDbl(0)
  loc_19B2AE4:       var_E0 = CDbl(0)
  loc_19B2AEA:       var_E8 = CDbl(0)
  loc_19B2AF0:       var_F0 = CDbl(0)
  loc_19B2AF3:     End If
  loc_19B2AF9:     var_1DC = "DocID"
  loc_19B2B20:     var_1EC = CVar(var_88) 'String
  loc_19B2B30:     If CBool(var_94.Fields.Item(var_1DC).Value <> var_1EC) Then
  loc_19B2B39:       var_1C6 = (var_1C6 + 1)
  loc_19B2B47:       var_31C.AddNew var_1DC, var_1EC
  loc_19B2B71:       var_31C.Fields.Item("mLine").Value = vbNullString
  loc_19B2BAC:       var_31C.Fields.Item("SrNo").Value = CVar(CStr(var_1C6) & ".")
  loc_19B2C01:       var_31C.Fields.Item("DocID").Value = CVar(var_94.Fields.Item("DocID"))
  loc_19B2C9B:       var_31C.Fields.Item("BillNo").Value = CVar(CStr(var_94.Fields.Item("vType").Value) & "/" & CStr(var_94.Fields.Item("VNo").Value))
  loc_19B2D04:       var_31C.Fields.Item("Billdate").Value = CVar(var_94.Fields.Item("Billdate"))
  loc_19B2D73:       var_31C.Fields.Item("PartyName").Value = Left(Trim(CVar(var_94.Fields.Item("PartyName"))), &H19)
  loc_19B2DB0:       var_22C = Trim(CVar(var_94.Fields.Item("vType")))
  loc_19B2DCA:       If (var_22C = "AD") Then
  loc_19B2DF2:         var_31C.Fields.Item("BillAmount").Value = "Adv."
  loc_19B2E01:       Else
  loc_19B2E27:         Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("BillAmount")), var_1C6, var_F0, var_E8, var_E0)
  loc_19B2E4F:         var_31C.Fields.Item("BillAmount").Value = var_22C
  loc_19B2E64:       End If
  loc_19B2E97:       var_338 = Val(CStr(var_94.Fields.Item("BillAmount").Value))
  loc_19B2EA1:       var_A0 = (var_A0 + var_338)
  loc_19B2EF4:       var_31C.Fields.Item("Narration").Value = CVar(var_94.Fields.Item("Narration"))
  loc_19B2F48:       var_31C.Fields.Item("Name").Value = CVar(var_94.Fields.Item("Name"))
  loc_19B2F7F:       var_22C = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_19B2F92:       var_348 = Ucase(var_22C) 'Variant
  loc_19B2FAB:       If (var_348 = "CREDIT CARD") Then
  loc_19B2FD4:         Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")), var_A0, var_338, var_D8)
  loc_19B2FFC:         var_31C.Fields.Item("CreditCard").Value = var_22C
  loc_19B303E:         Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_C8), var_D0)
  loc_19B3046:         var_23C = (var_C8 + var_22C)
  loc_19B304B:         var_C8 = CSng(Ucase(var_22C))
  loc_19B305D:       Else
  loc_19B3068:         If (var_348 = "CASH") Then
  loc_19B3091:           Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")), var_C8)
  loc_19B30B9:           var_31C.Fields.Item("Cash").Value = var_22C
  loc_19B30FB:           Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_A8))
  loc_19B3103:           var_23C = (var_C0 + var_22C)
  loc_19B3108:           var_A8 = CSng(Ucase(var_22C))
  loc_19B311A:         Else
  loc_19B3125:           If (var_348 = "CHEQUE") Then
  loc_19B314E:             Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")), var_A8)
  loc_19B3176:             var_31C.Fields.Item("Cheque").Value = var_22C
  loc_19B31B8:             Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_B0))
  loc_19B31C0:             var_23C = (var_B8 + var_22C)
  loc_19B31C5:             var_B0 = CSng(Ucase(var_22C))
  loc_19B31D7:           Else
  loc_19B31E2:             If (var_348 = "COMPLEMENTARY") Then
  loc_19B320B:               Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3233:               var_31C.Fields.Item("Complementary").Value = var_22C
  loc_19B3275:               Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_B8))
  loc_19B327D:               var_23C = (var_B0 + var_22C)
  loc_19B3282:               var_B8 = CSng(Ucase(var_22C))
  loc_19B3294:             Else
  loc_19B329F:               If (var_348 = "COMPANY") Then
  loc_19B32C8:                 Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B32F0:                 var_31C.Fields.Item("Company").Value = var_22C
  loc_19B3332:                 Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_19B333A:                 var_23C = (var_B8 + var_22C)
  loc_19B333F:                 var_C0 = CSng(Ucase(var_22C))
  loc_19B3351:               Else
  loc_19B335C:                 If (var_348 = "HOLD") Then
  loc_19B3385:                   Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B33AD:                   var_31C.Fields.Item("Hold").Value = var_22C
  loc_19B33EF:                   Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_D0))
  loc_19B33F7:                   var_23C = (var_C0 + var_22C)
  loc_19B33FC:                   var_D0 = CSng(Ucase(var_22C))
  loc_19B340E:                 Else
  loc_19B3419:                   If (var_348 = "ROOM") Then
  loc_19B3442:                     Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B346A:                     var_31C.Fields.Item("Room").Value = var_22C
  loc_19B34AC:                     Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_D8))
  loc_19B34B4:                     var_23C = (var_D0 + var_22C)
  loc_19B34B9:                     var_D8 = CSng(Ucase(var_22C))
  loc_19B34CB:                   Else
  loc_19B34D6:                     If (var_348 = "STAFF") Then
  loc_19B34FF:                       Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3527:                       var_31C.Fields.Item("Staff").Value = var_22C
  loc_19B3569:                       Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_E0))
  loc_19B3571:                       var_23C = (var_D8 + var_22C)
  loc_19B3576:                       var_E0 = CSng(Ucase(var_22C))
  loc_19B3588:                     Else
  loc_19B3593:                       If (var_348 = "VOID") Then
  loc_19B35BC:                         Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B35E4:                         var_31C.Fields.Item("Void").Value = var_22C
  loc_19B3626:                         Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_E8))
  loc_19B362E:                         var_23C = (var_E0 + var_22C)
  loc_19B3633:                         var_E8 = CSng(Ucase(var_22C))
  loc_19B3645:                       Else
  loc_19B366B:                         Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3693:                         var_31C.Fields.Item("Other").Value = var_22C
  loc_19B36D5:                         Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_F0))
  loc_19B36DD:                         var_23C = (var_E8 + var_22C)
  loc_19B36E2:                         var_F0 = CSng(Ucase(var_22C))
  loc_19B36F1:                       End If
  loc_19B36F1:                     End If
  loc_19B36F1:                   End If
  loc_19B36F1:                 End If
  loc_19B36F1:               End If
  loc_19B36F1:             End If
  loc_19B36F1:           End If
  loc_19B36F1:         End If
  loc_19B36F1:       End If
  loc_19B36F1:       var_1EC = "*"
  loc_19B36FA:       var_1DC = "Mark"
  loc_19B3716:       var_31C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B372D:       var_31C.Update var_1DC, var_1EC
  loc_19B3735:     Else
  loc_19B375B:       var_22C = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_19B376E:       var_358 = Ucase(var_22C) 'Variant
  loc_19B3787:       If (var_358 = "CREDIT CARD") Then
  loc_19B37B0:         Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B37D8:         var_31C.Fields.Item("CreditCard").Value = var_22C
  loc_19B381A:         Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_C8))
  loc_19B3822:         var_23C = (var_F0 + var_22C)
  loc_19B3827:         var_C8 = CSng(Ucase(var_22C))
  loc_19B3839:       Else
  loc_19B3844:         If (var_358 = "CASH") Then
  loc_19B386D:           Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3895:           var_31C.Fields.Item("Cash").Value = var_22C
  loc_19B38D7:           Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_A8))
  loc_19B38DF:           var_23C = (var_C8 + var_22C)
  loc_19B38E4:           var_A8 = CSng(Ucase(var_22C))
  loc_19B38F6:         Else
  loc_19B3901:           If (var_358 = "CHEQUE") Then
  loc_19B392A:             Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3952:             var_31C.Fields.Item("Cheque").Value = var_22C
  loc_19B3994:             Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_B0))
  loc_19B399C:             var_23C = (var_A8 + var_22C)
  loc_19B39A1:             var_B0 = CSng(Ucase(var_22C))
  loc_19B39B3:           Else
  loc_19B39BE:             If (var_358 = "COMPLEMENTARY") Then
  loc_19B39E7:               Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3A0F:               var_31C.Fields.Item("Complementary").Value = var_22C
  loc_19B3A51:               Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_B8))
  loc_19B3A59:               var_23C = (var_B0 + var_22C)
  loc_19B3A5E:               var_B8 = CSng(Ucase(var_22C))
  loc_19B3A70:             Else
  loc_19B3A7B:               If (var_358 = "COMPANY") Then
  loc_19B3AA4:                 Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3ACC:                 var_31C.Fields.Item("Company").Value = var_22C
  loc_19B3B0E:                 Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_19B3B16:                 var_23C = (var_B8 + var_22C)
  loc_19B3B1B:                 var_C0 = CSng(Ucase(var_22C))
  loc_19B3B2D:               Else
  loc_19B3B38:                 If (var_358 = "HOLD") Then
  loc_19B3B61:                   Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3B89:                   var_31C.Fields.Item("Hold").Value = var_22C
  loc_19B3BCB:                   Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_D0))
  loc_19B3BD3:                   var_23C = (var_C0 + var_22C)
  loc_19B3BD8:                   var_D0 = CSng(Ucase(var_22C))
  loc_19B3BEA:                 Else
  loc_19B3BF5:                   If (var_358 = "ROOM") Then
  loc_19B3C1E:                     Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3C46:                     var_31C.Fields.Item("Room").Value = var_22C
  loc_19B3C88:                     Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_D8))
  loc_19B3C90:                     var_23C = (var_D0 + var_22C)
  loc_19B3C95:                     var_D8 = CSng(Ucase(var_22C))
  loc_19B3CA7:                   Else
  loc_19B3CB2:                     If (var_358 = "STAFF") Then
  loc_19B3CDB:                       Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3D03:                       var_31C.Fields.Item("Staff").Value = var_22C
  loc_19B3D45:                       Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_E0))
  loc_19B3D4D:                       var_23C = (var_D8 + var_22C)
  loc_19B3D52:                       var_E0 = CSng(Ucase(var_22C))
  loc_19B3D64:                     Else
  loc_19B3D6F:                       If (var_358 = "VOID") Then
  loc_19B3D98:                         Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3DC0:                         var_31C.Fields.Item("Void").Value = var_22C
  loc_19B3E02:                         Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_E8))
  loc_19B3E0A:                         var_23C = (var_E0 + var_22C)
  loc_19B3E0F:                         var_E8 = CSng(Ucase(var_22C))
  loc_19B3E21:                       Else
  loc_19B3E47:                         Proc_6_47_EF6560(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B3E6F:                         var_31C.Fields.Item("Other").Value = var_22C
  loc_19B3E87:                         var_1EC = CVar(var_F0) 'Double
  loc_19B3E8E:                         var_1DC = "Amount"
  loc_19B3EB1:                         Proc_6_39_E7D3A0(var_22C, CVar(var_94.Fields.Item(var_1DC)), var_1EC)
  loc_19B3EB9:                         var_23C = (var_E8 + var_22C)
  loc_19B3EBE:                         var_F0 = CSng(Ucase(var_22C))
  loc_19B3ECD:                       End If
  loc_19B3ECD:                     End If
  loc_19B3ECD:                   End If
  loc_19B3ECD:                 End If
  loc_19B3ECD:               End If
  loc_19B3ECD:             End If
  loc_19B3ECD:           End If
  loc_19B3ECD:         End If
  loc_19B3ECD:       End If
  loc_19B3ED8:       var_31C.Update var_1DC, var_1EC
  loc_19B3EDD:     End If
  loc_19B3F08:     var_88 = CStr(var_94.Fields.Item("DocID").Value)
  loc_19B3F1B:     var_1DC = "VDate"
  loc_19B3F37:     var_21C = var_94.Fields.Item(var_1DC).Value
  loc_19B3F41:     var_1C4 = CDate(var_21C)
  loc_19B3F51:     var_94.MoveNext
  loc_19B3F56:     GoTo loc_19B25FF
  loc_19B3F59:   End If
  loc_19B3F5B:   Set var_31C = Nothing 
  loc_19B3F62:   Set var_35C = var_90 
  loc_19B3F9B:   var_35C.Fields.Item("mLine").Value = "BL"
  loc_19B3FA7:   var_1EC = "Total-->"
  loc_19B3FCC:   var_35C.Fields.Item("Billdate").Value = "BL"
  loc_19B3FE3:   Proc_6_47_EF6560(var_21C, var_A0, var_1C4)
  loc_19B400B:   var_35C.Fields.Item("BillAmount").Value = var_21C
  loc_19B4025:   Proc_6_47_EF6560(var_21C, var_A8)
  loc_19B404D:   var_35C.Fields.Item("Cash").Value = var_21C
  loc_19B4067:   Proc_6_47_EF6560(var_21C, var_B0)
  loc_19B408F:   var_35C.Fields.Item("Cheque").Value = var_21C
  loc_19B40A9:   Proc_6_47_EF6560(var_21C, var_B8)
  loc_19B40D1:   var_35C.Fields.Item("Complementary").Value = var_21C
  loc_19B40EB:   Proc_6_47_EF6560(var_21C, var_C0)
  loc_19B4113:   var_35C.Fields.Item("Company").Value = var_21C
  loc_19B412D:   Proc_6_47_EF6560(var_21C, var_C8)
  loc_19B4155:   var_35C.Fields.Item("CreditCard").Value = var_21C
  loc_19B416F:   Proc_6_47_EF6560(var_21C, var_D0)
  loc_19B4197:   var_35C.Fields.Item("Hold").Value = var_21C
  loc_19B41B1:   Proc_6_47_EF6560(var_21C, var_D8)
  loc_19B41D9:   var_35C.Fields.Item("Room").Value = var_21C
  loc_19B41F3:   Proc_6_47_EF6560(var_21C, var_E0)
  loc_19B421B:   var_35C.Fields.Item("Staff").Value = var_21C
  loc_19B4235:   Proc_6_47_EF6560(var_21C, var_E8)
  loc_19B425D:   var_35C.Fields.Item("Void").Value = var_21C
  loc_19B4277:   Proc_6_47_EF6560(var_21C, var_F0)
  loc_19B429F:   var_35C.Fields.Item("Other").Value = var_21C
  loc_19B42AE:   var_1EC = vbNullString
  loc_19B42B7:   var_1DC = "Mark"
  loc_19B42D3:   var_35C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B42FA:   r_1DC, var_1EC var_1DC, var_1EC
  loc_19B42FF:   var_1EC = vbNullString
  loc_19B4308:   var_1DC = "mLine"
  loc_19B4324:   var_35C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B433B:   r_1DC, var_1EC var_1DC, var_1EC
  loc_19B4347:   var_F8 = (var_F8 + var_A0)
  loc_19B4351:   var_100 = (var_100 + var_A8)
  loc_19B435B:   var_108 = (var_108 + var_B0)
  loc_19B4365:   var_110 = (var_110 + var_B8)
  loc_19B436F:   var_118 = (var_118 + var_C0)
  loc_19B4379:   var_120 = (var_120 + var_C8)
  loc_19B4383:   var_128 = (var_128 + var_D0)
  loc_19B4393:   var_138 = (var_138 + var_E0)
  loc_19B439D:   var_140 = (var_140 + var_E8)
  loc_19B43A7:   var_148 = (var_148 + var_F0)
  loc_19B43AC:   Set var_35C = Nothing 
  loc_19B43B6:   If (var_1C8 > 0) Then
  loc_19B43BC:     Set var_360 = var_90 
  loc_19B43F5:     var_360.Fields.Item("mLine").Value = "BL"
  loc_19B4401:     var_1EC = "G.Total-->"
  loc_19B4426:     var_360.Fields.Item("Billdate").Value = "BL"
  loc_19B443D:     Proc_6_47_EF6560(var_21C, var_F8, var_148, var_140, var_138, CDbl(0), var_128)
  loc_19B4465:     var_360.Fields.Item("BillAmount").Value = var_21C
  loc_19B447F:     Proc_6_47_EF6560(var_21C, var_100, var_120, var_118)
  loc_19B44A7:     var_360.Fields.Item("Cash").Value = var_21C
  loc_19B44C1:     Proc_6_47_EF6560(var_21C, var_108, var_110)
  loc_19B44E9:     var_360.Fields.Item("Cheque").Value = var_21C
  loc_19B4503:     Proc_6_47_EF6560(var_21C, var_110, var_108)
  loc_19B452B:     var_360.Fields.Item("Complementary").Value = var_21C
  loc_19B4545:     Proc_6_47_EF6560(var_21C, var_118)
  loc_19B456D:     var_360.Fields.Item("Company").Value = var_21C
  loc_19B4587:     Proc_6_47_EF6560(var_21C, var_120)
  loc_19B45AF:     var_360.Fields.Item("CreditCard").Value = var_21C
  loc_19B45C9:     Proc_6_47_EF6560(var_21C, var_128)
  loc_19B45F1:     var_360.Fields.Item("Hold").Value = var_21C
  loc_19B460B:     Proc_6_47_EF6560(var_21C, var_130)
  loc_19B4633:     var_360.Fields.Item("Room").Value = var_21C
  loc_19B464D:     Proc_6_47_EF6560(var_21C, var_138)
  loc_19B4675:     var_360.Fields.Item("Staff").Value = var_21C
  loc_19B468F:     Proc_6_47_EF6560(var_21C, var_140)
  loc_19B46B7:     var_360.Fields.Item("Void").Value = var_21C
  loc_19B46D1:     Proc_6_47_EF6560(var_21C, var_148)
  loc_19B46F9:     var_360.Fields.Item("Other").Value = var_21C
  loc_19B4708:     var_1EC = vbNullString
  loc_19B4711:     var_1DC = "Mark"
  loc_19B472D:     var_360.Fields.Item(var_1DC).Value = var_1EC
  loc_19B4754:     r_1DC, var_1EC var_1DC, var_1EC
  loc_19B4759:     var_1EC = vbNullString
  loc_19B4762:     var_1DC = "mLine"
  loc_19B477E:     var_360.Fields.Item(var_1DC).Value = var_1EC
  loc_19B4795:     r_1DC, var_1EC var_1DC, var_1EC
  loc_19B479C:     Set var_360 = Nothing 
  loc_19B47A0:   End If
  loc_19B47A0: End If
  loc_19B47AA: arg_2C = Me.FGrid1.Text
  loc_19B47C8: Me.FGrid1.Rows = 2
  loc_19B47E4: If (var_90.RecordCount > 0) Then
  loc_19B47ED:   CVarUnk
  loc_19B47F2:   VerifyVarObj
  loc_19B47F8:   Set var_310 = Me.FGrid1
  loc_19B47FE:   LateIdStAd
  loc_19B482E:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_19B4839: End If
  loc_19B483D: Set var_364 = Me.FGrid1
  loc_19B4849: var_364.Tag = "CashierCollection"
  loc_19B485A: var_364.Cols = &H15
  loc_19B485F: var_1DC = 0
  loc_19B4868: var_1FC = 0
  loc_19B4871: var_26C = "mLine"
  loc_19B487A: LateIdCallSt
  loc_19B4882: var_1DC = 0
  loc_19B488B: var_1FC = 0
  loc_19B4897: LateIdCallSt
  loc_19B489F: var_1DC = 0
  loc_19B48A8: var_1FC = 1
  loc_19B48B1: var_26C = "SNo."
  loc_19B48BA: LateIdCallSt
  loc_19B48C2: var_1DC = 1
  loc_19B48CB: var_1FC = &H1F4
  loc_19B48D7: LateIdCallSt
  loc_19B48DF: var_1DC = 0
  loc_19B48E8: var_1FC = 2
  loc_19B48F1: var_26C = "Doc Id"
  loc_19B48FA: LateIdCallSt
  loc_19B4902: var_1DC = 2
  loc_19B490B: var_1FC = 0
  loc_19B4917: LateIdCallSt
  loc_19B491F: var_1DC = 0
  loc_19B4928: var_1FC = 3
  loc_19B4931: var_26C = "Date"
  loc_19B493A: LateIdCallSt
  loc_19B4942: var_1DC = 3
  loc_19B4951: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B4958: LateIdCallSt
  loc_19B4960: var_1DC = 3
  loc_19B496F: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B4976: LateIdCallSt
  loc_19B497E: var_1DC = 3
  loc_19B4987: var_1FC = &H578
  loc_19B4993: LateIdCallSt
  loc_19B499B: var_1DC = 0
  loc_19B49A4: var_1FC = 4
  loc_19B49AD: var_26C = "Bill No"
  loc_19B49B6: LateIdCallSt
  loc_19B49BE: var_1DC = 4
  loc_19B49CD: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B49D4: LateIdCallSt
  loc_19B49DC: var_1DC = 4
  loc_19B49EB: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B49F2: LateIdCallSt
  loc_19B49FA: var_1DC = 4
  loc_19B4A03: var_1FC = &H3E8
  loc_19B4A0F: LateIdCallSt
  loc_19B4A17: var_1DC = 0
  loc_19B4A20: var_1FC = 5
  loc_19B4A29: var_26C = "Party Name"
  loc_19B4A32: LateIdCallSt
  loc_19B4A3A: var_1DC = 5
  loc_19B4A49: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B4A50: LateIdCallSt
  loc_19B4A58: var_1DC = 5
  loc_19B4A67: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B4A6E: LateIdCallSt
  loc_19B4A76: var_1DC = 5
  loc_19B4A7F: var_1FC = &HC80
  loc_19B4A8B: LateIdCallSt
  loc_19B4A93: var_1DC = 0
  loc_19B4A9C: var_1FC = 6
  loc_19B4AA5: var_26C = "Bill Amount"
  loc_19B4AAE: LateIdCallSt
  loc_19B4AB6: var_1DC = 6
  loc_19B4AC5: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4ACC: LateIdCallSt
  loc_19B4AD4: var_1DC = 6
  loc_19B4AE3: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4AEA: LateIdCallSt
  loc_19B4AF2: var_1DC = 6
  loc_19B4AFB: var_1FC = &H640
  loc_19B4B07: LateIdCallSt
  loc_19B4B0F: var_1DC = 0
  loc_19B4B18: var_1FC = 7
  loc_19B4B21: var_26C = "Narration"
  loc_19B4B2A: LateIdCallSt
  loc_19B4B32: var_1DC = 7
  loc_19B4B3B: var_1FC = 0
  loc_19B4B47: LateIdCallSt
  loc_19B4B4F: var_1DC = 0
  loc_19B4B58: var_1FC = 8
  loc_19B4B61: var_26C = "Cash"
  loc_19B4B6A: LateIdCallSt
  loc_19B4B72: var_1DC = 8
  loc_19B4B81: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4B88: LateIdCallSt
  loc_19B4B90: var_1DC = 8
  loc_19B4B9F: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4BA6: LateIdCallSt
  loc_19B4BAE: var_1DC = 8
  loc_19B4BB7: var_1FC = &H578
  loc_19B4BC3: LateIdCallSt
  loc_19B4BCB: var_1DC = 0
  loc_19B4BD4: var_1FC = 9
  loc_19B4BDD: var_26C = "Cheque"
  loc_19B4BE6: LateIdCallSt
  loc_19B4BEE: var_1DC = 9
  loc_19B4BFD: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4C04: LateIdCallSt
  loc_19B4C0C: var_1DC = 9
  loc_19B4C1B: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4C22: LateIdCallSt
  loc_19B4C2A: var_1DC = 9
  loc_19B4C33: var_1FC = &H578
  loc_19B4C3F: LateIdCallSt
  loc_19B4C47: var_1DC = 0
  loc_19B4C50: var_1FC = &HC
  loc_19B4C59: var_26C = "Credit Card"
  loc_19B4C62: LateIdCallSt
  loc_19B4C6A: var_1DC = &HC
  loc_19B4C79: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4C80: LateIdCallSt
  loc_19B4C88: var_1DC = &HC
  loc_19B4C97: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4C9E: LateIdCallSt
  loc_19B4CA6: var_1DC = &HC
  loc_19B4CAF: var_1FC = &H578
  loc_19B4CBB: LateIdCallSt
  loc_19B4CC3: var_1DC = 0
  loc_19B4CCC: var_1FC = &HA
  loc_19B4CD5: var_26C = "Compl."
  loc_19B4CDE: LateIdCallSt
  loc_19B4CE6: var_1DC = &HA
  loc_19B4CF5: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4CFC: LateIdCallSt
  loc_19B4D04: var_1DC = &HA
  loc_19B4D13: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4D1A: LateIdCallSt
  loc_19B4D22: var_1DC = &HA
  loc_19B4D2B: var_1FC = &H578
  loc_19B4D37: LateIdCallSt
  loc_19B4D3F: var_1DC = 0
  loc_19B4D48: var_1FC = &HB
  loc_19B4D51: var_26C = "Company"
  loc_19B4D5A: LateIdCallSt
  loc_19B4D62: var_1DC = &HB
  loc_19B4D71: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4D78: LateIdCallSt
  loc_19B4D80: var_1DC = &HB
  loc_19B4D8F: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4D96: LateIdCallSt
  loc_19B4D9E: var_1DC = &HB
  loc_19B4DA7: var_1FC = &H578
  loc_19B4DB3: LateIdCallSt
  loc_19B4DBB: var_1DC = 0
  loc_19B4DC4: var_1FC = &HD
  loc_19B4DCD: var_26C = "Hold"
  loc_19B4DD6: LateIdCallSt
  loc_19B4DDE: var_1DC = &HD
  loc_19B4DED: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4DF4: LateIdCallSt
  loc_19B4DFC: var_1DC = &HD
  loc_19B4E0B: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4E12: LateIdCallSt
  loc_19B4E1A: var_1DC = &HD
  loc_19B4E23: var_1FC = &H578
  loc_19B4E2F: LateIdCallSt
  loc_19B4E37: var_1DC = 0
  loc_19B4E40: var_1FC = &HE
  loc_19B4E49: var_26C = "Room"
  loc_19B4E52: LateIdCallSt
  loc_19B4E5A: var_1DC = &HE
  loc_19B4E69: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4E70: LateIdCallSt
  loc_19B4E78: var_1DC = &HE
  loc_19B4E87: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4E8E: LateIdCallSt
  loc_19B4E96: var_1DC = &HE
  loc_19B4E9F: var_1FC = &H578
  loc_19B4EAB: LateIdCallSt
  loc_19B4EB3: var_1DC = 0
  loc_19B4EBC: var_1FC = &HF
  loc_19B4EC5: var_26C = "Staff"
  loc_19B4ECE: LateIdCallSt
  loc_19B4ED6: var_1DC = &HF
  loc_19B4EE5: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4EEC: LateIdCallSt
  loc_19B4EF4: var_1DC = &HF
  loc_19B4F03: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4F0A: LateIdCallSt
  loc_19B4F12: var_1DC = &HF
  loc_19B4F1B: var_1FC = &H578
  loc_19B4F27: LateIdCallSt
  loc_19B4F2F: var_1DC = 0
  loc_19B4F38: var_1FC = &H10
  loc_19B4F41: var_26C = "Void"
  loc_19B4F4A: LateIdCallSt
  loc_19B4F52: var_1DC = &H10
  loc_19B4F61: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4F68: LateIdCallSt
  loc_19B4F70: var_1DC = &H10
  loc_19B4F7F: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4F86: LateIdCallSt
  loc_19B4F8E: var_1DC = &H10
  loc_19B4F97: var_1FC = &H578
  loc_19B4FA3: LateIdCallSt
  loc_19B4FAB: var_1DC = 0
  loc_19B4FB4: var_1FC = &H11
  loc_19B4FBD: var_26C = "Other"
  loc_19B4FC6: LateIdCallSt
  loc_19B4FCE: var_1DC = &H11
  loc_19B4FDD: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B4FE4: LateIdCallSt
  loc_19B4FEC: var_1DC = &H11
  loc_19B4FFB: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5002: LateIdCallSt
  loc_19B500A: var_1DC = &H11
  loc_19B5013: var_1FC = &H578
  loc_19B501F: LateIdCallSt
  loc_19B5027: var_1DC = 0
  loc_19B5030: var_1FC = &H11
  loc_19B5039: var_26C = "Name"
  loc_19B5042: LateIdCallSt
  loc_19B504A: var_1DC = &H11
  loc_19B5053: var_1FC = &H960
  loc_19B505F: LateIdCallSt
  loc_19B5067: var_1DC = 0
  loc_19B5070: var_1FC = &H13
  loc_19B5079: var_26C = "MARK"
  loc_19B5082: LateIdCallSt
  loc_19B508A: var_1DC = &H13
  loc_19B5093: var_1FC = 0
  loc_19B509F: LateIdCallSt
  loc_19B50A9: Set var_364 = Nothing 
  loc_19B50C1: If (var_94.RecordCount <= 0) Then
  loc_19B50C9:   global_152 = 0
  loc_19B50CC:   Exit Sub
  loc_19B50CD: End If
  loc_19B50D1: Set var_310 = Me.FGrid1
  loc_19B5101: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_19B5104:   var_1DC = vbNullString
  loc_19B510E:   Set var_310 = Me.FGrid1
  loc_19B511F: End If
  loc_19B5156: var_1DC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_19B5176: Me.FGrid1.Row = CVar(CLng(IIf(var_1DC, FRow, 1)))
  loc_19B51C4: var_1DC = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_19B51E4: Me.FGrid1.Col = CVar(CLng(IIf(var_1DC, Fcol, 1)))
  loc_19B5200: Set var_90 = Nothing
  loc_19B5208: Set var_94 = Nothing
  loc_19B520D: IStAd
  loc_19B5211: Exit Sub
End Sub

Public Sub CashierCollectionMIS(formName, FRow, Fcol) '18937F0
  'Data Table: 577EF0
  Dim var_1D0 As String
  Dim var_250 As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_270 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_1CA As Integer
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_94 As Recordset15
  Dim var_314 As Variant
  Dim var_1F0 As Variant
  Dim var_31C As Recordset15
  Dim var_334 As Double
  Dim var_120 As Double
  Dim var_100 As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_118 As Double
  Dim var_128 As Double
  Dim var_130 As Double
  Dim var_138 As Double
  Dim var_140 As Double
  Dim var_148 As Double
  Dim var_90 As Recordset15
  Dim var_358 As MSHFlexGrid
  loc_18910AD: var_250 = CVar("WHERE P.RestCode='" & global_208 & "' AND P.VDate Between ") 'String
  loc_18910C5: VarLateMemCallLdRfVar
  loc_18910D0: Proc_6_7_F26918(var_240, Me.FGrid, 1)
  loc_18910FA: VarLateMemCallLdRfVar
  loc_1891105: Proc_6_7_F26918(var_2F0, Me.FGrid, 1)
  loc_1891135: Call 0.Method_arg_54 ("Cashier Collection Summary", 0 & var_240 & " And ")
  loc_189114D: var_220 = Me.FGrid
  loc_189117A: var_240 = Me.FGrid
  loc_1891194: Set var_314 = 1(1 & CStr(var_240.TextMatrix))
  loc_189119A: var_240.TextBox.Text = 1 & CStr(var_220.TextMatrix) & " To : "
  loc_18911C7: Call Proc_249_115_10DA5A0(New, var_314, 0)
  loc_18911CF: Set var_90 = var_314
  loc_18911E6: var_1D0 = "SELECT P.DocID, P.U_Name AS Name, P.VDate, P.PayType, P.BillAmount, P.AmtCr AS Amount FROM PayChargeH P " & CStr(1 & var_2F0)
  loc_18911F6: Me.Connection15.Execute var_1D0 & " ORDER BY P.U_Name", var_220, -1
  loc_1891201: Set var_94 = var_314
  loc_1891213: var_1CA = 0
  loc_1891219: var_A0 = CDbl(0)
  loc_189121F: var_A8 = CDbl(0)
  loc_1891225: var_B0 = CDbl(0)
  loc_189122B: var_B8 = CDbl(0)
  loc_1891231: var_C0 = CDbl(0)
  loc_1891237: var_C8 = CDbl(0)
  loc_189123D: var_D0 = CDbl(0)
  loc_1891243: var_D8 = CDbl(0)
  loc_1891249: var_E0 = CDbl(0)
  loc_189124F: var_E8 = CDbl(0)
  loc_1891255: var_F0 = CDbl(0)
  loc_189125B: var_88 = vbNullString
  loc_1891272: If (var_94.RecordCount > 0) Then
  loc_1891278:   var_94.MoveFirst
  loc_1891280:   Set var_31C = var_90 
  loc_1891284:   ' Referenced from: 1892A7F
  loc_1891293:   If Not(var_94.EOF) Then
  loc_189129C:     var_1E0 = "Name"
  loc_18912C3:     var_1F0 = CVar(var_1C8) 'String
  loc_18912D3:     If CBool(var_94.Fields.Item(var_1E0).Value <> var_1F0) Then
  loc_18912DF:       var_A8 = CDbl(0)
  loc_18912E5:       var_B0 = CDbl(0)
  loc_18912EB:       var_B8 = CDbl(0)
  loc_18912F1:       var_C0 = CDbl(0)
  loc_18912F7:       var_C8 = CDbl(0)
  loc_18912FD:       var_D0 = CDbl(0)
  loc_1891303:       var_D8 = CDbl(0)
  loc_1891309:       var_E0 = CDbl(0)
  loc_189130F:       var_E8 = CDbl(0)
  loc_1891315:       var_F0 = CDbl(0)
  loc_189131E:       var_1CA = (var_1CA + 1)
  loc_189132C:       var_31C.AddNew var_1E0, var_1F0
  loc_1891356:       var_31C.Fields.Item("mLine").Value = vbNullString
  loc_1891391:       var_31C.Fields.Item("SrNo").Value = CVar(CStr(var_1CA) & ".")
  loc_18913C2:       var_220 = CVar(var_94.Fields.Item("Name")) 'Address
  loc_18913E6:       var_31C.Fields.Item("Name").Value = var_220
  loc_1891402:       Proc_6_47_EF6560(var_220, CDbl(0), var_1CA, var_F0, var_E8, var_E0, var_D8)
  loc_189142A:       var_31C.Fields.Item("BillAmount").Value = var_220
  loc_189145B:       var_220 = var_94.Fields.Item("BillAmount").Value
  loc_189146C:       var_334 = Val(CStr(var_220))
  loc_1891476:       var_A0 = (var_A0 + var_334)
  loc_1891491:       Proc_6_47_EF6560(var_220, CDbl(0), CDbl(0), var_334, var_D0)
  loc_18914B9:       var_31C.Fields.Item("BillAmount").Value = var_220
  loc_18914EE:       var_230 = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_1891501:       var_344 = Ucase(var_230) 'Variant
  loc_189151A:       If (var_344 = "CREDIT CARD") Then
  loc_189154A:         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C8), var_C8)
  loc_1891552:         var_240 = (var_C0 + var_230)
  loc_1891557:         var_C8 = CSng(Ucase(var_230))
  loc_1891593:         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_120), var_C8)
  loc_189159B:         var_240 = (var_B8 + var_230)
  loc_18915A0:         var_120 = CSng(Ucase(var_230))
  loc_18915D6:         var_31C.Fields.Item("CreditCard").Value = CVar(var_C8)
  loc_18915E5:       Else
  loc_18915F0:         If (var_344 = "CASH") Then
  loc_1891620:           Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_A8))
  loc_1891628:           var_240 = (var_120 + var_230)
  loc_189162D:           var_A8 = CSng(Ucase(var_230))
  loc_1891669:           Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_100))
  loc_1891671:           var_240 = (var_A8 + var_230)
  loc_1891676:           var_100 = CSng(Ucase(var_230))
  loc_18916A5:           var_230 = Format(var_A8, "0.00")
  loc_18916CD:           var_31C.Fields.Item("Cash").Value = var_230
  loc_18916E3:         Else
  loc_18916EE:           If (var_344 = "CHEQUE") Then
  loc_189171E:             Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B0), 1)
  loc_1891726:             var_240 = (1 + var_230)
  loc_189172B:             var_B0 = CSng(Ucase(var_230))
  loc_1891767:             Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_108), var_B0)
  loc_189176F:             var_240 = (var_100 + var_230)
  loc_1891774:             var_108 = CSng(Ucase(var_230))
  loc_18917A3:             var_230 = Format(var_B0, "0.00")
  loc_18917CB:             var_31C.Fields.Item("Cheque").Value = var_230
  loc_18917E1:           Else
  loc_18917EC:             If (var_344 = "COMPLEMENTARY") Then
  loc_189181C:               Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B8), 1)
  loc_1891824:               var_240 = (1 + var_230)
  loc_1891829:               var_B8 = CSng(Ucase(var_230))
  loc_1891865:               Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_110), var_B8)
  loc_189186D:               var_240 = (var_108 + var_230)
  loc_1891872:               var_110 = CSng(Ucase(var_230))
  loc_18918A1:               var_230 = Format(var_B8, "0.00")
  loc_18918C9:               var_31C.Fields.Item("Complementary").Value = var_230
  loc_18918DF:             Else
  loc_18918EA:               If (var_344 = "COMPANY") Then
  loc_189191A:                 Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C0), 1)
  loc_1891922:                 var_240 = (1 + var_230)
  loc_1891927:                 var_C0 = CSng(Ucase(var_230))
  loc_1891963:                 Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_118), var_C0)
  loc_189196B:                 var_240 = (var_110 + var_230)
  loc_1891970:                 var_118 = CSng(Ucase(var_230))
  loc_189199F:                 var_230 = Format(var_C0, "0.00")
  loc_18919C7:                 var_31C.Fields.Item("Company").Value = var_230
  loc_18919DD:               Else
  loc_18919E8:                 If (var_344 = "HOLD") Then
  loc_1891A18:                   Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D0), 1)
  loc_1891A20:                   var_240 = (1 + var_230)
  loc_1891A25:                   var_D0 = CSng(Ucase(var_230))
  loc_1891A61:                   Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_128), var_D0)
  loc_1891A69:                   var_240 = (var_118 + var_230)
  loc_1891A6E:                   var_128 = CSng(Ucase(var_230))
  loc_1891A9D:                   var_230 = Format(var_D0, "0.00")
  loc_1891AC5:                   var_31C.Fields.Item("Hold").Value = var_230
  loc_1891ADB:                 Else
  loc_1891AE6:                   If (var_344 = "ROOM") Then
  loc_1891B16:                     Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D8), 1)
  loc_1891B1E:                     var_240 = (1 + var_230)
  loc_1891B23:                     var_D8 = CSng(Ucase(var_230))
  loc_1891B5F:                     Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_130), var_D8)
  loc_1891B67:                     var_240 = (var_128 + var_230)
  loc_1891B6C:                     var_130 = CSng(Ucase(var_230))
  loc_1891B9B:                     var_230 = Format(var_D8, "0.00")
  loc_1891BC3:                     var_31C.Fields.Item("Room").Value = var_230
  loc_1891BD9:                   Else
  loc_1891BE4:                     If (var_344 = "STAFF") Then
  loc_1891C14:                       Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E0), 1)
  loc_1891C1C:                       var_240 = (1 + var_230)
  loc_1891C21:                       var_E0 = CSng(Ucase(var_230))
  loc_1891C5D:                       Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_138), var_E0)
  loc_1891C65:                       var_240 = (var_130 + var_230)
  loc_1891C6A:                       var_138 = CSng(Ucase(var_230))
  loc_1891C99:                       var_230 = Format(var_E0, "0.00")
  loc_1891CC1:                       var_31C.Fields.Item("Staff").Value = var_230
  loc_1891CD7:                     Else
  loc_1891CE2:                       If (var_344 = "VOID") Then
  loc_1891D12:                         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E8), 1)
  loc_1891D1A:                         var_240 = (1 + var_230)
  loc_1891D1F:                         var_E8 = CSng(Ucase(var_230))
  loc_1891D5B:                         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_140), var_E8)
  loc_1891D63:                         var_240 = (var_138 + var_230)
  loc_1891D68:                         var_140 = CSng(Ucase(var_230))
  loc_1891D97:                         var_230 = Format(var_E8, "0.00")
  loc_1891DBF:                         var_31C.Fields.Item("Void").Value = var_230
  loc_1891DD5:                       Else
  loc_1891E02:                         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_F0), 1)
  loc_1891E0A:                         var_240 = (1 + var_230)
  loc_1891E0F:                         var_F0 = CSng(Ucase(var_230))
  loc_1891E4B:                         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_148), var_F0)
  loc_1891E53:                         var_240 = (var_140 + var_230)
  loc_1891E58:                         var_148 = CSng(Ucase(var_230))
  loc_1891EAF:                         var_31C.Fields.Item("Other").Value = Format(var_F0, "0.00")
  loc_1891EC2:                       End If
  loc_1891EC2:                     End If
  loc_1891EC2:                   End If
  loc_1891EC2:                 End If
  loc_1891EC2:               End If
  loc_1891EC2:             End If
  loc_1891EC2:           End If
  loc_1891EC2:         End If
  loc_1891EC2:       End If
  loc_1891EC2:       var_1F0 = "*"
  loc_1891ECB:       var_1E0 = "Mark"
  loc_1891EE7:       var_31C.Fields.Item(var_1E0).Value = var_1F0
  loc_1891EFE:       var_31C.Update var_1E0, var_1F0
  loc_1891F06:     Else
  loc_1891F43:       If CBool(var_94.Fields.Item("DocID").Value <> CVar(var_88)) Then
  loc_1891F68:         var_220 = var_94.Fields.Item("BillAmount").Value
  loc_1891F79:         var_334 = Val(CStr(var_220))
  loc_1891F83:         var_A0 = (var_A0 + var_334)
  loc_1891F9E:         Proc_6_47_EF6560(var_220, CDbl(0), CDbl(0), var_334, 1)
  loc_1891FC6:         var_31C.Fields.Item("BillAmount").Value = var_220
  loc_1891FD5:       End If
  loc_1891FFB:       var_230 = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_189200E:       var_354 = Ucase(var_230) 'Variant
  loc_1892027:       If (var_354 = "CREDIT CARD") Then
  loc_1892057:         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C8), 1)
  loc_189205F:         var_240 = (var_148 + var_230)
  loc_1892064:         var_C8 = CSng(Ucase(var_230))
  loc_18920A0:         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_120))
  loc_18920A8:         var_240 = (var_C8 + var_230)
  loc_18920AD:         var_120 = CSng(Ucase(var_230))
  loc_18920DC:         var_230 = Format(var_C8, "0.00")
  loc_1892104:         var_31C.Fields.Item("CreditCard").Value = var_230
  loc_189211A:       Else
  loc_1892125:         If (var_354 = "CASH") Then
  loc_1892155:           Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_100), 1)
  loc_189215D:           var_240 = (1 + var_230)
  loc_1892162:           var_100 = CSng(Ucase(var_230))
  loc_189219E:           Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_A8), var_100)
  loc_18921A6:           var_240 = (var_120 + var_230)
  loc_18921AB:           var_A8 = CSng(Ucase(var_230))
  loc_18921DA:           var_230 = Format(var_A8, "0.00")
  loc_1892202:           var_31C.Fields.Item("Cash").Value = var_230
  loc_1892218:         Else
  loc_1892223:           If (var_354 = "CHEQUE") Then
  loc_1892253:             Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B0), 1)
  loc_189225B:             var_240 = (1 + var_230)
  loc_1892260:             var_B0 = CSng(Ucase(var_230))
  loc_189229C:             Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_108), var_B0)
  loc_18922A4:             var_240 = (var_A8 + var_230)
  loc_18922A9:             var_108 = CSng(Ucase(var_230))
  loc_18922D8:             var_230 = Format(var_B0, "0.00")
  loc_1892300:             var_31C.Fields.Item("Cheque").Value = var_230
  loc_1892316:           Else
  loc_1892321:             If (var_354 = "COMPLEMENTARY") Then
  loc_1892351:               Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B8), 1)
  loc_1892359:               var_240 = (1 + var_230)
  loc_189235E:               var_B8 = CSng(Ucase(var_230))
  loc_189239A:               Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_110), var_B8)
  loc_18923A2:               var_240 = (var_108 + var_230)
  loc_18923A7:               var_110 = CSng(Ucase(var_230))
  loc_18923D6:               var_230 = Format(var_B8, "0.00")
  loc_18923FE:               var_31C.Fields.Item("Complementary").Value = var_230
  loc_1892414:             Else
  loc_189241F:               If (var_354 = "COMPANY") Then
  loc_189244F:                 Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C0), 1)
  loc_1892457:                 var_240 = (1 + var_230)
  loc_189245C:                 var_C0 = CSng(Ucase(var_230))
  loc_1892498:                 Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_118), var_C0)
  loc_18924A0:                 var_240 = (var_110 + var_230)
  loc_18924A5:                 var_118 = CSng(Ucase(var_230))
  loc_18924D4:                 var_230 = Format(var_C0, "0.00")
  loc_18924FC:                 var_31C.Fields.Item("Company").Value = var_230
  loc_1892512:               Else
  loc_189251D:                 If (var_354 = "HOLD") Then
  loc_189254D:                   Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D0), 1)
  loc_1892555:                   var_240 = (1 + var_230)
  loc_189255A:                   var_D0 = CSng(Ucase(var_230))
  loc_1892596:                   Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_128), var_D0)
  loc_189259E:                   var_240 = (var_118 + var_230)
  loc_18925A3:                   var_128 = CSng(Ucase(var_230))
  loc_18925D2:                   var_230 = Format(var_D0, "0.00")
  loc_18925FA:                   var_31C.Fields.Item("Hold").Value = var_230
  loc_1892610:                 Else
  loc_189261B:                   If (var_354 = "ROOM") Then
  loc_189264B:                     Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D8), 1)
  loc_1892653:                     var_240 = (1 + var_230)
  loc_1892658:                     var_D8 = CSng(Ucase(var_230))
  loc_1892694:                     Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_130), var_D8)
  loc_189269C:                     var_240 = (var_128 + var_230)
  loc_18926A1:                     var_130 = CSng(Ucase(var_230))
  loc_18926D0:                     var_230 = Format(var_D8, "0.00")
  loc_18926F8:                     var_31C.Fields.Item("Room").Value = var_230
  loc_189270E:                   Else
  loc_1892719:                     If (var_354 = "STAFF") Then
  loc_1892749:                       Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E0), 1)
  loc_1892751:                       var_240 = (1 + var_230)
  loc_1892756:                       var_E0 = CSng(Ucase(var_230))
  loc_1892792:                       Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_138), var_E0)
  loc_189279A:                       var_240 = (var_130 + var_230)
  loc_189279F:                       var_138 = CSng(Ucase(var_230))
  loc_18927CE:                       var_230 = Format(var_E0, "0.00")
  loc_18927F6:                       var_31C.Fields.Item("Staff").Value = var_230
  loc_189280C:                     Else
  loc_1892817:                       If (var_354 = "VOID") Then
  loc_1892847:                         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E8), 1)
  loc_189284F:                         var_240 = (1 + var_230)
  loc_1892854:                         var_E8 = CSng(Ucase(var_230))
  loc_1892890:                         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_140), var_E8)
  loc_1892898:                         var_240 = (var_138 + var_230)
  loc_189289D:                         var_140 = CSng(Ucase(var_230))
  loc_18928CC:                         var_230 = Format(var_E8, "0.00")
  loc_18928F4:                         var_31C.Fields.Item("Void").Value = var_230
  loc_189290A:                       Else
  loc_1892937:                         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_F0), 1)
  loc_189293F:                         var_240 = (1 + var_230)
  loc_1892944:                         var_F0 = CSng(Ucase(var_230))
  loc_1892980:                         Proc_6_39_E7D3A0(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_148), var_F0)
  loc_1892988:                         var_240 = (var_140 + var_230)
  loc_189298D:                         var_148 = CSng(Ucase(var_230))
  loc_18929A6:                         var_1F0 = "0.00"
  loc_18929B4:                         var_1E0 = var_F0
  loc_18929E4:                         var_31C.Fields.Item("Other").Value = Format(var_1E0, var_1F0)
  loc_18929F7:                       End If
  loc_18929F7:                     End If
  loc_18929F7:                   End If
  loc_18929F7:                 End If
  loc_18929F7:               End If
  loc_18929F7:             End If
  loc_18929F7:           End If
  loc_18929F7:         End If
  loc_18929F7:       End If
  loc_1892A02:       var_31C.Update var_1E0, var_1F0
  loc_1892A07:     End If
  loc_1892A32:     var_88 = CStr(var_94.Fields.Item("DocID").Value)
  loc_1892A45:     var_1E0 = "Name"
  loc_1892A61:     var_220 = var_94.Fields.Item(var_1E0).Value
  loc_1892A6A:     var_1C8 = CStr(var_220)
  loc_1892A7A:     var_94.MoveNext
  loc_1892A7F:     GoTo loc_1891284
  loc_1892A82:   End If
  loc_1892A8D:   var_31C.AddNew var_1E0, var_1F0
  loc_1892AB7:   var_31C.Fields.Item("mLine").Value = "BL"
  loc_1892AC3:   var_1F0 = "Total-->"
  loc_1892AE8:   var_31C.Fields.Item("Name").Value = "BL"
  loc_1892AFF:   Proc_6_47_EF6560(var_220, var_F8, 1, 1)
  loc_1892B47:   var_31C.Fields.Item("BillAmount").Value = Format(var_220, "0.00")
  loc_1892BA4:   var_31C.Fields.Item("Cash").Value = Format(var_100, "0.00")
  loc_1892BFF:   var_31C.Fields.Item("Cheque").Value = Format(var_108, "0.00")
  loc_1892C5A:   var_31C.Fields.Item("Complementary").Value = Format(var_110, "0.00")
  loc_1892CB5:   var_31C.Fields.Item("Company").Value = Format(var_118, "0.00")
  loc_1892D10:   var_31C.Fields.Item("CreditCard").Value = Format(var_120, "0.00")
  loc_1892D6B:   var_31C.Fields.Item("Hold").Value = Format(var_128, "0.00")
  loc_1892DC6:   var_31C.Fields.Item("Room").Value = Format(var_130, "0.00")
  loc_1892E21:   var_31C.Fields.Item("Staff").Value = Format(var_138, "0.00")
  loc_1892E7C:   var_31C.Fields.Item("Void").Value = Format(var_140, "0.00")
  loc_1892ED7:   var_31C.Fields.Item("Other").Value = Format(var_148, "0.00")
  loc_1892EEA:   var_1F0 = vbNullString
  loc_1892EF3:   var_1E0 = "Mark"
  loc_1892F0F:   var_31C.Fields.Item(var_1E0).Value = var_1F0
  loc_1892F26:   var_31C.Update var_1E0, var_1F0
  loc_1892F2D:   Set var_31C = Nothing 
  loc_1892F31: End If
  loc_1892F59: Me.FGrid1.Rows = 2
  loc_1892F75: If (var_90.RecordCount > 0) Then
  loc_1892F7E:   CVarUnk
  loc_1892F83:   VerifyVarObj
  loc_1892F89:   Set var_314 = Me.FGrid1
  loc_1892F8F:   LateIdStAd
  loc_1892FBF:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_90, Me.FGrid1.Text, 1, 1)
  loc_1892FCA: End If
  loc_1892FCE: Set var_358 = Me.FGrid1
  loc_1892FDA: var_358.Tag = "CashierCollectionMIS"
  loc_1892FEB: var_358.Cols = &H10
  loc_1892FF0: var_1E0 = 0
  loc_1892FF9: var_200 = 0
  loc_1893002: var_270 = "mLine"
  loc_189300B: LateIdCallSt
  loc_1893013: var_1E0 = 0
  loc_189301C: var_200 = 0
  loc_1893028: LateIdCallSt
  loc_1893030: var_1E0 = 0
  loc_1893039: var_200 = 1
  loc_1893042: var_270 = "SNo."
  loc_189304B: LateIdCallSt
  loc_1893053: var_1E0 = 1
  loc_189305C: var_200 = &H1F4
  loc_1893068: LateIdCallSt
  loc_1893070: var_1E0 = 0
  loc_1893079: var_200 = 2
  loc_1893082: var_270 = "Doc Id"
  loc_189308B: LateIdCallSt
  loc_1893093: var_1E0 = 2
  loc_189309C: var_200 = 0
  loc_18930A8: LateIdCallSt
  loc_18930B0: var_1E0 = 0
  loc_18930B9: var_200 = 3
  loc_18930C2: var_270 = "Cashier"
  loc_18930CB: LateIdCallSt
  loc_18930D3: var_1E0 = 3
  loc_18930DC: var_200 = &H960
  loc_18930E8: LateIdCallSt
  loc_18930F0: var_1E0 = 0
  loc_18930F9: var_200 = 4
  loc_1893102: var_270 = "Bill Amount"
  loc_189310B: LateIdCallSt
  loc_1893113: var_1E0 = 4
  loc_1893122: var_200 = CVar(CInt(7)) 'Integer
  loc_1893129: LateIdCallSt
  loc_1893131: var_1E0 = 4
  loc_1893140: var_200 = CVar(CInt(7)) 'Integer
  loc_1893147: LateIdCallSt
  loc_189314F: var_1E0 = 4
  loc_1893158: var_200 = &H708
  loc_1893164: LateIdCallSt
  loc_189316C: var_1E0 = 0
  loc_1893175: var_200 = 5
  loc_189317E: var_270 = "Cash"
  loc_1893187: LateIdCallSt
  loc_189318F: var_1E0 = 5
  loc_189319E: var_200 = CVar(CInt(7)) 'Integer
  loc_18931A5: LateIdCallSt
  loc_18931AD: var_1E0 = 5
  loc_18931BC: var_200 = CVar(CInt(7)) 'Integer
  loc_18931C3: LateIdCallSt
  loc_18931CB: var_1E0 = 5
  loc_18931D4: var_200 = &H578
  loc_18931E0: LateIdCallSt
  loc_18931E8: var_1E0 = 0
  loc_18931F1: var_200 = 6
  loc_18931FA: var_270 = "Cheque"
  loc_1893203: LateIdCallSt
  loc_189320B: var_1E0 = 6
  loc_189321A: var_200 = CVar(CInt(7)) 'Integer
  loc_1893221: LateIdCallSt
  loc_1893229: var_1E0 = 6
  loc_1893238: var_200 = CVar(CInt(7)) 'Integer
  loc_189323F: LateIdCallSt
  loc_1893247: var_1E0 = 6
  loc_1893250: var_200 = &H578
  loc_189325C: LateIdCallSt
  loc_1893264: var_1E0 = 0
  loc_189326D: var_200 = 9
  loc_1893276: var_270 = "Credit Card"
  loc_189327F: LateIdCallSt
  loc_1893287: var_1E0 = 9
  loc_1893296: var_200 = CVar(CInt(7)) 'Integer
  loc_189329D: LateIdCallSt
  loc_18932A5: var_1E0 = 9
  loc_18932B4: var_200 = CVar(CInt(7)) 'Integer
  loc_18932BB: LateIdCallSt
  loc_18932C3: var_1E0 = 9
  loc_18932CC: var_200 = &H578
  loc_18932D8: LateIdCallSt
  loc_18932E0: var_1E0 = 0
  loc_18932E9: var_200 = 7
  loc_18932F2: var_270 = "Compl."
  loc_18932FB: LateIdCallSt
  loc_1893303: var_1E0 = 7
  loc_1893312: var_200 = CVar(CInt(7)) 'Integer
  loc_1893319: LateIdCallSt
  loc_1893321: var_1E0 = 7
  loc_1893330: var_200 = CVar(CInt(7)) 'Integer
  loc_1893337: LateIdCallSt
  loc_189333F: var_1E0 = 7
  loc_1893348: var_200 = &H578
  loc_1893354: LateIdCallSt
  loc_189335C: var_1E0 = 0
  loc_1893365: var_200 = 8
  loc_189336E: var_270 = "Company"
  loc_1893377: LateIdCallSt
  loc_189337F: var_1E0 = 8
  loc_189338E: var_200 = CVar(CInt(7)) 'Integer
  loc_1893395: LateIdCallSt
  loc_189339D: var_1E0 = 8
  loc_18933AC: var_200 = CVar(CInt(7)) 'Integer
  loc_18933B3: LateIdCallSt
  loc_18933BB: var_1E0 = 8
  loc_18933C4: var_200 = &H578
  loc_18933D0: LateIdCallSt
  loc_18933D8: var_1E0 = 0
  loc_18933E1: var_200 = &HA
  loc_18933EA: var_270 = "Hold"
  loc_18933F3: LateIdCallSt
  loc_18933FB: var_1E0 = &HA
  loc_189340A: var_200 = CVar(CInt(7)) 'Integer
  loc_1893411: LateIdCallSt
  loc_1893419: var_1E0 = &HA
  loc_1893428: var_200 = CVar(CInt(7)) 'Integer
  loc_189342F: LateIdCallSt
  loc_1893437: var_1E0 = &HA
  loc_1893440: var_200 = &H578
  loc_189344C: LateIdCallSt
  loc_1893454: var_1E0 = 0
  loc_189345D: var_200 = &HB
  loc_1893466: var_270 = "Room"
  loc_189346F: LateIdCallSt
  loc_1893477: var_1E0 = &HB
  loc_1893486: var_200 = CVar(CInt(7)) 'Integer
  loc_189348D: LateIdCallSt
  loc_1893495: var_1E0 = &HB
  loc_18934A4: var_200 = CVar(CInt(7)) 'Integer
  loc_18934AB: LateIdCallSt
  loc_18934B3: var_1E0 = &HB
  loc_18934BC: var_200 = &H578
  loc_18934C8: LateIdCallSt
  loc_18934D0: var_1E0 = 0
  loc_18934D9: var_200 = &HC
  loc_18934E2: var_270 = "Staff"
  loc_18934EB: LateIdCallSt
  loc_18934F3: var_1E0 = &HC
  loc_1893502: var_200 = CVar(CInt(7)) 'Integer
  loc_1893509: LateIdCallSt
  loc_1893511: var_1E0 = &HC
  loc_1893520: var_200 = CVar(CInt(7)) 'Integer
  loc_1893527: LateIdCallSt
  loc_189352F: var_1E0 = &HC
  loc_1893538: var_200 = &H578
  loc_1893544: LateIdCallSt
  loc_189354C: var_1E0 = 0
  loc_1893555: var_200 = &HD
  loc_189355E: var_270 = "Void"
  loc_1893567: LateIdCallSt
  loc_189356F: var_1E0 = &HD
  loc_189357E: var_200 = CVar(CInt(7)) 'Integer
  loc_1893585: LateIdCallSt
  loc_189358D: var_1E0 = &HD
  loc_189359C: var_200 = CVar(CInt(7)) 'Integer
  loc_18935A3: LateIdCallSt
  loc_18935AB: var_1E0 = &HD
  loc_18935B4: var_200 = &H578
  loc_18935C0: LateIdCallSt
  loc_18935C8: var_1E0 = 0
  loc_18935D1: var_200 = &HE
  loc_18935DA: var_270 = "Other"
  loc_18935E3: LateIdCallSt
  loc_18935EB: var_1E0 = &HE
  loc_18935FA: var_200 = CVar(CInt(7)) 'Integer
  loc_1893601: LateIdCallSt
  loc_1893609: var_1E0 = &HE
  loc_1893618: var_200 = CVar(CInt(7)) 'Integer
  loc_189361F: LateIdCallSt
  loc_1893627: var_1E0 = &HE
  loc_1893630: var_200 = &H578
  loc_189363C: LateIdCallSt
  loc_1893644: var_1E0 = 0
  loc_189364D: var_200 = &HF
  loc_1893656: var_270 = "MARK"
  loc_189365F: LateIdCallSt
  loc_1893667: var_1E0 = &HF
  loc_1893670: var_200 = 0
  loc_189367C: LateIdCallSt
  loc_1893686: Set var_358 = Nothing 
  loc_189369E: If (var_94.RecordCount <= 0) Then
  loc_18936A6:   global_152 = 0
  loc_18936A9:   Exit Sub
  loc_18936AA: End If
  loc_18936AE: Set var_314 = Me.FGrid1
  loc_18936DE: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_18936E1:   var_1E0 = vbNullString
  loc_18936EB:   Set var_314 = Me.FGrid1
  loc_18936FC: End If
  loc_1893733: var_1E0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1893753: Me.FGrid1.Row = CVar(CLng(IIf(var_1E0, FRow, 1)))
  loc_18937A1: var_1E0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_18937C1: Me.FGrid1.Col = CVar(CLng(IIf(var_1E0, Fcol, 1)))
  loc_18937DD: Set var_90 = Nothing
  loc_18937E5: Set var_94 = Nothing
  loc_18937EA: IStAd
  loc_18937EE: Exit Sub
End Sub

Public Sub RetBack(mParamForm) '10D6680
  'Data Table: 577EF0
  loc_10D6373: On Error Goto loc_10D667A
  loc_10D637C: var_8C = global_52
  loc_10D6387: If (var_8C = "SalesRegister") Then
  loc_10D6397:   Set var_90 = mParamForm 
  loc_10D639E:   Call SalesRegHall(var_90, 0, 0)
  loc_10D63A9:   Set var_88 = var_90
  loc_10D63B2: Else
  loc_10D63BA:   If (var_8C = "PartyOutStanding") Then
  loc_10D63CA:     Set var_90 = var_88 
  loc_10D63D1:     Call OutStanding(var_90, 0, 0)
  loc_10D63DC:     Set var_88 = var_90
  loc_10D63E5:   Else
  loc_10D63ED:     If (var_8C = "PartyWiseOutStanding") Then
  loc_10D63FD:       Set var_90 = var_88 
  loc_10D6404:       Call PartyOutStanding(var_90, 0, 0)
  loc_10D640F:       Set var_88 = var_90
  loc_10D6418:     Else
  loc_10D6420:       If (var_8C = "CashierCollection") Then
  loc_10D6430:         Set var_90 = var_88 
  loc_10D6437:         Call CashierCollection(var_90, 0, 0)
  loc_10D6442:         Set var_88 = var_90
  loc_10D644B:       Else
  loc_10D6453:         If (var_8C = "CashierCollectionMIS") Then
  loc_10D6463:           Set var_90 = var_88 
  loc_10D646A:           Call CashierCollectionMIS(var_90, 0, 0)
  loc_10D6475:           Set var_88 = var_90
  loc_10D647E:         Else
  loc_10D6486:           If (var_8C = "BookingDetail") Then
  loc_10D6496:             Set var_90 = var_88 
  loc_10D649D:             Call BookingDetail(var_90, 0, 0)
  loc_10D64A8:             Set var_88 = var_90
  loc_10D64B1:           Else
  loc_10D64B9:             If (var_8C = "SettleRepHall") Then
  loc_10D64C9:               Set var_90 = var_88 
  loc_10D64D0:               Call SettleReport(var_90, 0, 0)
  loc_10D64DB:               Set var_88 = var_90
  loc_10D64E4:             Else
  loc_10D64EC:               If (var_8C = "TaxReportHall") Then
  loc_10D64FC:                 Set var_90 = var_88 
  loc_10D6503:                 Call TaxReportHall(var_90, 0, 0)
  loc_10D650E:                 Set var_88 = var_90
  loc_10D6517:               Else
  loc_10D651F:                 If (var_8C = "TaxwiseDetailReportHall") Then
  loc_10D652F:                   Set var_90 = var_88 
  loc_10D6536:                   Call TaxDetailsBanq(var_90, 0, 0)
  loc_10D6541:                   Set var_88 = var_90
  loc_10D654A:                 Else
  loc_10D6552:                   If (var_8C = "TaxSummaryHall") Then
  loc_10D6562:                     Set var_90 = var_88 
  loc_10D6569:                     Call TaxSummaryHall(var_90, 0, 0)
  loc_10D6574:                     Set var_88 = var_90
  loc_10D657D:                   Else
  loc_10D6585:                     If (var_8C = "DailyFuncSheet") Then
  loc_10D6595:                       Set var_90 = var_88 
  loc_10D659C:                       Call DailyFuncSheet(var_90, 0, 0)
  loc_10D65A7:                       Set var_88 = var_90
  loc_10D65B0:                     Else
  loc_10D65B8:                       If (var_8C = "CoverAnalysis") Then
  loc_10D65C8:                         Set var_90 = var_88 
  loc_10D65CF:                         Call CoverAnalysis(var_90, 0, 0)
  loc_10D65DA:                         Set var_88 = var_90
  loc_10D65E3:                       Else
  loc_10D65EB:                         If (var_8C = "ItemWiseSaleHall") Then
  loc_10D65FB:                           Set var_90 = var_88 
  loc_10D6602:                           Call ItemWiseSaleHall(var_90, 0, 0)
  loc_10D660D:                           Set var_88 = var_90
  loc_10D6616:                         Else
  loc_10D661E:                           If (var_8C = "CompanyWiseSaleHall") Then
  loc_10D662E:                             Set var_90 = var_88 
  loc_10D6635:                             Call CompanyWiseSaleHall(var_90, 0, 0)
  loc_10D6640:                             Set var_88 = var_90
  loc_10D6649:                           Else
  loc_10D6651:                             If (var_8C = "FunctionWiseItemDetail") Then
  loc_10D6661:                               Set var_90 = var_88 
  loc_10D6668:                               Call FunctionWiseItemDetail(var_90, 0, 0)
  loc_10D6673:                               Set var_88 = var_90
  loc_10D6679:                             End If
  loc_10D6679:                           End If
  loc_10D6679:                         End If
  loc_10D6679:                       End If
  loc_10D6679:                     End If
  loc_10D6679:                   End If
  loc_10D6679:                 End If
  loc_10D6679:               End If
  loc_10D6679:             End If
  loc_10D6679:           End If
  loc_10D6679:         End If
  loc_10D6679:       End If
  loc_10D6679:     End If
  loc_10D6679:   End If
  loc_10D6679: End If
  loc_10D6679: Exit Sub
  loc_10D667A: ' Referenced from: 10D6373
  loc_10D667A: Proc_6_60_E63754()
  loc_10D667F: Exit Sub
End Sub

Public Sub TaxDetailsBanq(formName, FRow, Fcol) '1594A0C
  'Data Table: 577EF0
  Dim var_1C4 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_244 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_278 As String
  Dim var_164 As Variant
  Dim var_28C As Variant
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_CC As Double
  Dim var_2A4 As Recordset15
  Dim var_2B0 As Recordset15
  Dim var_2B4 As Recordset15
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_88 As Recordset15
  Dim var_2C4 As MSHFlexGrid
  loc_159389C: var_1C4 = " Hallsale2.DELFLAG='N' AND Hallsale2.VDate Between "
  loc_15938B6: VarLateMemCallLdRfVar
  loc_15938C1: Proc_6_7_F26918(var_1B4, Me.FGrid, 1)
  loc_15938D2: var_1F4 = 0 & var_1B4 & " And " 
  loc_15938EB: VarLateMemCallLdRfVar
  loc_15938F6: Proc_6_7_F26918(var_264, Me.FGrid, 1)
  loc_159391B: var_154 = 1
  loc_1593944: If (Me.Check1.Value = 0) Then
  loc_159395D:   var_154 = ") "
  loc_1593967:   var_90 = CStr(CVar(CStr(1 & var_264) & " And Hallsale2.TaxCode In (") & Me.GridString1 & var_154)
  loc_1593975: End If
  loc_159397B: Call 0.Method_arg_54 ("Taxwise Details ", var_154)
  loc_1593983: var_154 = 0
  loc_15939C0: var_1B4 = Me.FGrid
  loc_15939DA: Set var_28C = 1(1 & CStr(var_1B4.TextMatrix))
  loc_15939E0: var_1B4.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_1593A00: var_154 = 1
  loc_1593A29: If (Me.Check1.Value = 0) Then
  loc_1593A2F:   var_194 = Me.FormulaString1
  loc_1593A36:   var_154 = "For Tax : "
  loc_1593A63:   Set var_28C = Me.Text2
  loc_1593A69:   Me.Text2.Text = CStr(var_154 & Left(var_194, &H73) & vbNullString)
  loc_1593A82: Else
  loc_1593A89:   Set var_28C = Me.Text2
  loc_1593A8F:   var_28C.Text = "For Tax :   All"
  loc_1593A97: End If
  loc_1593AA4: Call Proc_249_107_FE1BF0(New, var_28C, var_194, var_154)
  loc_1593AAC: Set var_88 = var_28C
  loc_1593AC3: var_278 = "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt,Hallsale2.restcode,max(Depart.Name) as RestName,max(Vtype) as Vtype  from (Hallsale2 left join revmast on revmast.code=Hallsale2.Taxcode) left join depart on depart.code=Hallsale2.RestCode where " & var_90
  loc_1593AD3: Me.Connection15.Execute var_278 & " group by Hallsale2.restcode,revmast.code,TaxPer order by Hallsale2.restcode,max(revmast.Name),TaxPer", var_194, -1
  loc_1593ADE: Set var_8C = var_28C
  loc_1593AF1: var_104 = CDbl(0)
  loc_1593AF7: var_10C = CDbl(0)
  loc_1593AFD: var_114 = CDbl(0)
  loc_1593B03: var_11C = CDbl(0)
  loc_1593B09: var_124 = CDbl(0)
  loc_1593B0F: var_12C = CDbl(0)
  loc_1593B15: var_D4 = CDbl(0)
  loc_1593B1B: var_DC = CDbl(0)
  loc_1593B21: var_E4 = CDbl(0)
  loc_1593B38: If (var_8C.RecordCount > 0) Then
  loc_1593B3E:   var_8C.MoveFirst
  loc_1593B43:   ' Referenced from: 15943DB
  loc_1593B52:   If Not(var_8C.EOF) Then
  loc_1593B58:     var_A4 = CDbl(0)
  loc_1593B5E:     var_AC = CDbl(0)
  loc_1593B64:     var_B4 = CDbl(0)
  loc_1593B6A:     var_BC = CDbl(0)
  loc_1593B70:     var_C4 = CDbl(0)
  loc_1593B76:     var_CC = CDbl(0)
  loc_1593BB5:     If (var_8C.Fields.Item("vType").Value = "IDC") Then
  loc_1593BBB:       var_9C = "Indoor Catering"
  loc_1593BC1:     Else
  loc_1593BE9:       var_9C = Proc_6_38_E69628(CVar(var_8C.Fields.Item("RestName")), var_CC, var_C4, var_BC, var_B4, var_AC)
  loc_1593BF2:     End If
  loc_1593BF8:     var_154 = "vType"
  loc_1593C52:     var_164 = "IDC"
  loc_1593C66:     var_254 = IIf((var_8C.Fields.Item(var_154).Value = var_164), "Indoor Catering", CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RestName")), var_A4, var_E4, var_DC)))
  loc_1593C6F:     var_9C = CStr(var_254)
  loc_1593C8D:     Set var_2A4 = var_88 
  loc_1593C9C:     var_2A4.AddNew var_154, var_164
  loc_1593CC6:     var_2A4.Fields.Item("MLine").Value = vbNullString
  loc_1593D21:     var_244 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RestName")), var_D4)) 'String
  loc_1593D3C:     var_1D4 = (var_8C.Fields.Item("vType").Value = "IDC") 'Variant
  loc_1593D6E:     var_2A4.Fields.Item("DepartName").Value = IIf(var_1D4, "Indoor Catering", var_244)
  loc_1593DB4:     var_2A4.Fields.Item("BillAmt").Value = vbNullString
  loc_1593DE5:     var_2A4.Fields.Item("Mark").Value = "*"
  loc_1593DF4:     var_154 = "RestCode"
  loc_1593E18:     var_164 = "Departcode"
  loc_1593E34:     var_2A4.Fields.Item(var_164).Value = CVar(var_8C.Fields.Item(var_154))
  loc_1593E50:     var_2A4.Update var_154, var_164
  loc_1593E57:     Set var_2A4 = Nothing 
  loc_1593E5B:     ' Referenced from: 159424B
  loc_1593E5E:     var_164 = CVar(var_9C) 'String
  loc_1593E68:     var_154 = "RestName"
  loc_1593E99:     If Not(CBool(var_164 <> var_8C.Fields.Item(var_154).Value)) Then
  loc_1593E9F:       Set var_2B0 = var_88 
  loc_1593EAE:       var_2B0.AddNew var_154, var_164
  loc_1593ED8:       var_2B0.Fields.Item("MLine").Value = vbNullString
  loc_1593F09:       var_2B0.Fields.Item("DepartName").Value = vbNullString
  loc_1593F3D:       var_1A4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("TaxName")), var_12C)) 'String
  loc_1593F60:       var_2B0.Fields.Item("TaxName").Value = var_1A4
  loc_1593F9B:       Proc_6_47_EF6560(var_1A4, CVar(var_8C.Fields.Item("TaxPer")))
  loc_1593FC3:       var_2B0.Fields.Item("TaxPer").Value = var_1A4
  loc_1593FFE:       Proc_6_47_EF6560(var_1A4, CVar(var_8C.Fields.Item("TaxableAmt")))
  loc_1594026:       var_2B0.Fields.Item("GoodsAmt").Value = var_1A4
  loc_1594061:       Proc_6_47_EF6560(var_1A4, CVar(var_8C.Fields.Item("TaxAmt")))
  loc_1594089:       var_2B0.Fields.Item("TaxAmt").Value = var_1A4
  loc_15940C4:       Proc_6_39_E7D3A0(var_1A4, CVar(var_8C.Fields.Item("TaxableAmt")))
  loc_15940F2:       Proc_6_39_E7D3A0(var_1D4, CVar(var_8C.Fields.Item("TaxAmt")))
  loc_15940FA:       var_1F4 = (var_1A4 + var_1D4)
  loc_1594101:       Proc_6_47_EF6560(var_244, "Indoor Catering")
  loc_1594129:       var_2B0.Fields.Item("BillAmt").Value = var_244
  loc_159416D:       var_2B0.Fields.Item("Mark").Value = vbNullString
  loc_159417C:       var_154 = "RestCode"
  loc_15941A0:       var_164 = "Departcode"
  loc_15941BC:       var_2B0.Fields.Item(var_164).Value = CVar(var_8C.Fields.Item(var_154))
  loc_15941D8:       var_2B0.Update var_154, var_164
  loc_15941E0:       var_164 = CVar(var_BC) 'Double
  loc_15941E7:       var_154 = "TaxAmt"
  loc_159420A:       Proc_6_39_E7D3A0(var_1A4, CVar(var_8C.Fields.Item(var_154)))
  loc_1594212:       var_1B4 = (var_164 + var_1A4)
  loc_1594217:       var_BC = CSng(CVar(var_8C.Fields.Item("TaxAmt")))
  loc_1594228:       Set var_2B0 = Nothing 
  loc_159422F:       var_8C.MoveNext
  loc_1594245:       If (var_8C.EOF = &HFF) Then
  loc_1594248:         GoTo loc_159424E
  loc_159424B:       End If
  loc_159424B:       GoTo loc_1593E5B
  loc_159424E:       ' Referenced from: 1594248
  loc_159424E:     End If
  loc_1594251:     Set var_2B4 = var_88 
  loc_1594260:     var_2B4.AddNew var_154, var_164
  loc_159428A:     var_2B4.Fields.Item("mLine").Value = "GF"
  loc_1594296:     var_164 = "OUTLET TOTAL-> "
  loc_15942BB:     var_2B4.Fields.Item("DepartName").Value = "GF"
  loc_1594323:     var_2B4.Fields.Item("TaxAmt").Value = CVar(CStr(Format(CVar(Val(CStr(var_BC))), "0.00")))
  loc_1594364:     var_2B4.Fields.Item("Mark").Value = "*"
  loc_1594370:     var_164 = vbNullString
  loc_1594379:     var_154 = "Departcode"
  loc_1594395:     var_2B4.Fields.Item(var_154).Value = var_164
  loc_15943AC:     var_2B4.Update var_154, var_164
  loc_15943B3:     Set var_2B4 = Nothing 
  loc_15943BA:     var_EC = CDbl(0)
  loc_15943C0:     var_F4 = CDbl(0)
  loc_15943C6:     var_FC = CDbl(0)
  loc_15943CC:     var_BC = CDbl(0)
  loc_15943D2:     var_C4 = CDbl(0)
  loc_15943D8:     var_CC = CDbl(0)
  loc_15943DB:     GoTo loc_1593B43
  loc_15943DE:   End If
  loc_15943E1:   Set var_2C0 = var_88 
  loc_15943E7:   Set var_2C0 = Nothing 
  loc_15943EB: End If
  loc_1594413: Me.FGrid1.Rows = 2
  loc_159442F: If (var_88.RecordCount > 0) Then
  loc_1594438:   CVarUnk
  loc_159443D:   VerifyVarObj
  loc_1594443:   Set var_28C = Me.FGrid1
  loc_1594449:   LateIdStAd
  loc_1594479:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_88, Me.FGrid1.Text, var_CC, var_C4)
  loc_1594484: End If
  loc_1594488: Set var_2C4 = Me.FGrid1
  loc_1594497: var_2C4.Cols = 9
  loc_15944A5: var_2C4.Tag = "TaxDetailsBanq"
  loc_15944AA: var_154 = 0
  loc_15944B3: var_174 = 0
  loc_15944BC: var_1C4 = "mLine"
  loc_15944C5: LateIdCallSt
  loc_15944CD: var_154 = 0
  loc_15944D6: var_174 = 0
  loc_15944E2: LateIdCallSt
  loc_15944EA: var_154 = 0
  loc_15944F3: var_174 = 1
  loc_15944FC: var_1C4 = "Rest Name"
  loc_1594505: LateIdCallSt
  loc_159450D: var_154 = 1
  loc_1594516: var_174 = &H5DC
  loc_1594522: LateIdCallSt
  loc_159452A: var_154 = 1
  loc_1594539: var_174 = CVar(CInt(1)) 'Integer
  loc_1594540: LateIdCallSt
  loc_1594548: var_154 = 1
  loc_1594557: var_174 = CVar(CInt(1)) 'Integer
  loc_159455E: LateIdCallSt
  loc_1594566: var_154 = 0
  loc_159456F: var_174 = 2
  loc_1594578: var_1C4 = "Tax Name"
  loc_1594581: LateIdCallSt
  loc_1594589: var_154 = 2
  loc_1594592: var_174 = &H9C4
  loc_159459E: LateIdCallSt
  loc_15945A6: var_154 = 2
  loc_15945B5: var_174 = CVar(CInt(1)) 'Integer
  loc_15945BC: LateIdCallSt
  loc_15945C4: var_154 = 2
  loc_15945D3: var_174 = CVar(CInt(1)) 'Integer
  loc_15945DA: LateIdCallSt
  loc_15945E2: var_154 = 0
  loc_15945EB: var_174 = 3
  loc_15945F4: var_1C4 = " % "
  loc_15945FD: LateIdCallSt
  loc_1594605: var_154 = 3
  loc_159460E: var_174 = &H258
  loc_159461A: LateIdCallSt
  loc_1594622: var_154 = 3
  loc_1594631: var_174 = CVar(CInt(1)) 'Integer
  loc_1594638: LateIdCallSt
  loc_1594640: var_154 = 3
  loc_159464F: var_174 = CVar(CInt(1)) 'Integer
  loc_1594656: LateIdCallSt
  loc_159465E: var_154 = 0
  loc_1594667: var_174 = 4
  loc_1594670: var_1C4 = "Goods Amount"
  loc_1594679: LateIdCallSt
  loc_1594681: var_154 = 4
  loc_159468A: var_174 = &H7D0
  loc_1594696: LateIdCallSt
  loc_159469E: var_154 = 4
  loc_15946AD: var_174 = CVar(CInt(7)) 'Integer
  loc_15946B4: LateIdCallSt
  loc_15946BC: var_154 = 4
  loc_15946CB: var_174 = CVar(CInt(7)) 'Integer
  loc_15946D2: LateIdCallSt
  loc_15946DA: var_154 = 0
  loc_15946E3: var_174 = 5
  loc_15946EC: var_1C4 = "Tax Amount"
  loc_15946F5: LateIdCallSt
  loc_15946FD: var_154 = 5
  loc_1594706: var_174 = &H514
  loc_1594712: LateIdCallSt
  loc_159471A: var_154 = 5
  loc_1594729: var_174 = CVar(CInt(7)) 'Integer
  loc_1594730: LateIdCallSt
  loc_1594738: var_154 = 5
  loc_1594747: var_174 = CVar(CInt(7)) 'Integer
  loc_159474E: LateIdCallSt
  loc_1594756: var_154 = 0
  loc_159475F: var_174 = 6
  loc_1594768: var_1C4 = "Total"
  loc_1594771: LateIdCallSt
  loc_1594779: var_154 = 6
  loc_1594782: var_174 = &H708
  loc_159478E: LateIdCallSt
  loc_1594796: var_154 = 6
  loc_15947A5: var_174 = CVar(CInt(7)) 'Integer
  loc_15947AC: LateIdCallSt
  loc_15947B4: var_154 = 6
  loc_15947C3: var_174 = CVar(CInt(7)) 'Integer
  loc_15947CA: LateIdCallSt
  loc_15947D2: var_154 = 0
  loc_15947DB: var_174 = 7
  loc_15947E4: var_1C4 = "DepartCode"
  loc_15947ED: LateIdCallSt
  loc_15947F5: var_154 = 7
  loc_15947FE: var_174 = 0
  loc_159480A: LateIdCallSt
  loc_1594812: var_154 = 7
  loc_1594821: var_174 = CVar(CInt(7)) 'Integer
  loc_1594828: LateIdCallSt
  loc_1594830: var_154 = 7
  loc_159483F: var_174 = CVar(CInt(7)) 'Integer
  loc_1594846: LateIdCallSt
  loc_159484E: var_154 = 0
  loc_1594857: var_174 = 8
  loc_1594860: var_1C4 = "MARK"
  loc_1594869: LateIdCallSt
  loc_1594871: var_154 = 8
  loc_159487A: var_174 = 0
  loc_1594886: LateIdCallSt
  loc_1594890: Set var_2C4 = Nothing 
  loc_15948A8: If (var_8C.RecordCount <= 0) Then
  loc_15948B0:   global_152 = 0
  loc_15948B3:   Exit Sub
  loc_15948B4: End If
  loc_15948B8: Set var_28C = Me.FGrid1
  loc_15948E8: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_15948EB:   var_154 = vbNullString
  loc_15948F5:   Set var_28C = Me.FGrid1
  loc_1594906: End If
  loc_159493D: var_154 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_159495D: Me.FGrid1.Row = CVar(CLng(IIf(var_154, FRow, 1)))
  loc_15949AB: var_154 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_15949CB: Me.FGrid1.Col = CVar(CLng(IIf(var_154, Fcol, 1)))
  loc_15949E7: Set var_88 = Nothing
  loc_15949EF: Set var_8C = Nothing
  loc_15949F4: IStAd
  loc_15949FD: Set var_94 = Nothing
  loc_1594A05: Set var_98 = Nothing
  loc_1594A08: Exit Sub
End Sub

Public Sub BookingDetail(formName, FRow, Fcol) '1583DA8
  'Data Table: 577EF0
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_1FC As Variant
  Dim var_20C As Byte
  Dim var_11C As Variant
  Dim var_90 As Recordset15
  Dim var_2B0 As Variant
  Dim var_A0 As Double
  Dim var_A2 As Integer
  Dim var_2C0 As Recordset15
  Dim var_C8 As Variant
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_2DC As MSHFlexGrid
  loc_1582CC3: If (global_208 = "ODC") Then
  loc_1582CC9:   var_A8 = "Outdoor"
  loc_1582CCF: Else
  loc_1582CD2:   var_A8 = "Indoor"
  loc_1582CD5: End If
  loc_1582CD5: var_B8 = 2
  loc_1582CDC: var_D8 = 1
  loc_1582D06: If (CStr(Me.FGrid.TextMatrix) = "ALL") Then
  loc_1582D2F:   VarLateMemCallLdRfVar
  loc_1582D3A:   Proc_6_7_F26918(var_11C, Me.FGrid, 1, 0)
  loc_1582D64:   VarLateMemCallLdRfVar
  loc_1582D6F:   Proc_6_7_F26918(var_1CC, Me.FGrid, 1, 1)
  loc_1582D80:   var_1FC = CVar(" WHERE B.CatType='" & var_A8 & "' AND BD.FuncDate Between ") & var_11C & " And " & var_1CC & " AND B.Code NOT IN(SELECT Distinct InquiryCode FROM HallBook)" 
  loc_1582D85:   var_94 = CStr(var_1FC)
  loc_1582DA7: Else
  loc_1582DCD:   VarLateMemCallLdRfVar
  loc_1582DD8:   Proc_6_7_F26918(var_11C, Me.FGrid, 1, 0)
  loc_1582E02:   VarLateMemCallLdRfVar
  loc_1582E0D:   Proc_6_7_F26918(var_1CC, Me.FGrid, 1, 1)
  loc_1582E1E:   var_1FC = CVar(" WHERE B.CatType='" & var_A8 & "' AND BD.FuncDate Between ") & var_11C & " And " & var_1CC & " AND B.Status='" 
  loc_1582E22:   var_20C = 2
  loc_1582E52:   var_94 = CStr(1 & CVar(CStr(Me.FGrid.TextMatrix)) & "' AND B.Code NOT IN(SELECT Distinct InquiryCode FROM HallBook)")
  loc_1582E7B: End If
  loc_1582E81: Call 0.Method_arg_54 ("Booking Inquiry Detail", var_20C, var_1FC)
  loc_1582E89: var_B8 = 0
  loc_1582EC6: var_11C = Me.FGrid
  loc_1582EE0: Set var_2B0 = 1(1 & CStr(var_11C.TextMatrix))
  loc_1582EE6: var_11C.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_1582F09: var_B8 = 2
  loc_1582F19: var_F8 = Me.FGrid
  loc_1582F33: Set var_2B0 = var_B8(1 & CStr(var_F8.TextMatrix))
  loc_1582F39: var_F8.TextBox.Text = "Status : "
  loc_1582F5C: Call Proc_249_108_10FE344(New, var_2B0, var_B8)
  loc_1582F64: Set var_8C = var_2B0
  loc_1582F7B: var_10C = "SELECT B.Code, BD.FuncDate, BD.ToDate, BD.FuncTime, BD.ToTime, F.Name,BD.VenueCode,V.Name VenueName, B.PartyName, B.PhoneR, B.MobileNo, B.ConPerson, B.BookedBy, B.HandledBy, B.Status, B.U_Name,B.Remark FROM (BookingInquiry B INNER JOIN BookingDetail BD ON B.Code=BD.Code) LEFT JOIN FunctionType F ON B.FuncType=F.Code Left Join VenueMast V On BD.VenueCode=V.Code " & var_94
  loc_1582F8B: Me.Connection15.Execute var_10C & " Order By BD.FuncDate, BD.FuncTime", var_F8, -1
  loc_1582F96: Set var_90 = var_2B0
  loc_1582FA9: var_88 = vbNullString
  loc_1582FC0: If (var_90.RecordCount > 0) Then
  loc_1582FC6:   var_90.MoveFirst
  loc_1582FD1:   var_B8 = "FuncDate"
  loc_1582FF7:   var_A0 = CDate(var_90.Fields.Item(var_B8).Value)
  loc_1583004:   ' Referenced from: 15836FF
  loc_1583013:   If Not(var_90.EOF) Then
  loc_158301C:     var_A2 = (var_A2 + 1)
  loc_1583022:     Set var_2C0 = var_8C 
  loc_1583031:     var_2C0.AddNew var_B8, var_C8
  loc_158305B:     var_2C0.Fields.Item("mLine").Value = vbNullString
  loc_1583096:     var_2C0.Fields.Item("SrNo").Value = CVar(CStr(var_A2) & ".")
  loc_15830EB:     var_2C0.Fields.Item("Code").Value = CVar(var_90.Fields.Item("Code"))
  loc_1583160:     var_12C = Format(CVar(var_90.Fields.Item("FuncDate")), "DD/MM/YY") & " To " 
  loc_15831AF:     var_2C0.Fields.Item("FuncDate").Value = 1 & Format(CVar(var_90.Fields.Item("ToDate")), "DD/MM/YY")
  loc_1583231:     var_D8 = " - "
  loc_1583236:     var_12C = Format(CVar(var_90.Fields.Item("FuncTime")), "HH:MM") & " To " 
  loc_1583285:     var_2C0.Fields.Item("FuncTime").Value = 1 & Format(CVar(var_90.Fields.Item("ToTime")), "HH:MM")
  loc_15832F3:     var_2C0.Fields.Item("VenueName").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("VenueName")), 1, var_12C, 1, 1, 1))
  loc_158334B:     var_2C0.Fields.Item("FuncType").Value = CVar(var_90.Fields.Item("Name"))
  loc_158339F:     var_2C0.Fields.Item("PartyName").Value = CVar(var_90.Fields.Item("PartyName"))
  loc_15833FF:     var_2C0.Fields.Item("PhoneR").Value = CVar(CStr(var_90.Fields.Item("PhoneR").Value))
  loc_1583465:     var_2C0.Fields.Item("MobileNo").Value = CVar(CStr(var_90.Fields.Item("MobileNo").Value))
  loc_15834C7:     var_2C0.Fields.Item("ConPerson").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ConPerson")), var_12C, 1, 1))
  loc_1583527:     var_2C0.Fields.Item("BookedBY").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("BookedBY")), var_A2))
  loc_1583587:     var_2C0.Fields.Item("HandledBy").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("HandledBy")), var_A0))
  loc_15835E7:     var_2C0.Fields.Item("Status").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Status"))))
  loc_158363F:     var_2C0.Fields.Item("U_Name").Value = CVar(var_90.Fields.Item("U_Name"))
  loc_158369B:     var_2C0.Fields.Item("Remark").Value = CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("Remark"))))
  loc_15836B0:     var_C8 = "*"
  loc_15836B9:     var_B8 = "Mark"
  loc_15836D5:     var_2C0.Fields.Item(var_B8).Value = var_C8
  loc_15836EC:     var_2C0.Update var_B8, var_C8
  loc_15836F3:     Set var_2C0 = Nothing 
  loc_15836FA:     var_90.MoveNext
  loc_15836FF:     GoTo loc_1583004
  loc_1583702:   End If
  loc_1583702: End If
  loc_158370C: arg_2C = Me.FGrid1.Text
  loc_158372A: Me.FGrid1.Rows = 2
  loc_1583746: If (var_8C.RecordCount > 0) Then
  loc_158374F:   CVarUnk
  loc_1583754:   VerifyVarObj
  loc_158375A:   Set var_2B0 = Me.FGrid1
  loc_1583760:   LateIdStAd
  loc_1583790:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_158379B: End If
  loc_158379F: Set var_2DC = Me.FGrid1
  loc_15837AB: var_2DC.Tag = "BookingDetail"
  loc_15837BC: var_2DC.Cols = &H11
  loc_15837C1: var_B8 = 0
  loc_15837CA: var_D8 = 0
  loc_15837D3: var_14C = "mLine"
  loc_15837DC: LateIdCallSt
  loc_15837E4: var_B8 = 0
  loc_15837ED: var_D8 = 0
  loc_15837F9: LateIdCallSt
  loc_1583801: var_B8 = 0
  loc_158380A: var_D8 = 1
  loc_1583813: var_14C = "SNo."
  loc_158381C: LateIdCallSt
  loc_1583824: var_B8 = 1
  loc_1583833: var_D8 = CVar(CInt(7)) 'Integer
  loc_158383A: LateIdCallSt
  loc_1583842: var_B8 = 1
  loc_1583851: var_D8 = CVar(CInt(7)) 'Integer
  loc_1583858: LateIdCallSt
  loc_1583860: var_B8 = 1
  loc_1583869: var_D8 = &H226
  loc_1583875: LateIdCallSt
  loc_158387D: var_B8 = 0
  loc_1583886: var_D8 = 2
  loc_158388F: var_14C = "Code"
  loc_1583898: LateIdCallSt
  loc_15838A0: var_B8 = 2
  loc_15838A9: var_D8 = 0
  loc_15838B5: LateIdCallSt
  loc_15838BD: var_B8 = 0
  loc_15838C6: var_D8 = 3
  loc_15838CF: var_14C = "Date"
  loc_15838D8: LateIdCallSt
  loc_15838E0: var_B8 = 3
  loc_15838E9: var_D8 = &H898
  loc_15838F5: LateIdCallSt
  loc_15838FD: var_B8 = 0
  loc_1583906: var_D8 = 4
  loc_158390F: var_14C = "Time"
  loc_1583918: LateIdCallSt
  loc_1583920: var_B8 = 4
  loc_1583929: var_D8 = &H5DC
  loc_1583935: LateIdCallSt
  loc_158393D: var_B8 = 0
  loc_1583946: var_D8 = 5
  loc_158394F: var_14C = "Venue"
  loc_1583958: LateIdCallSt
  loc_1583960: var_B8 = 5
  loc_1583969: var_D8 = &H7D0
  loc_1583975: LateIdCallSt
  loc_158397D: var_B8 = 0
  loc_1583986: var_D8 = 6
  loc_158398F: var_14C = "Function Type"
  loc_1583998: LateIdCallSt
  loc_15839A0: var_B8 = 6
  loc_15839A9: var_D8 = &H7D0
  loc_15839B5: LateIdCallSt
  loc_15839BD: var_B8 = 0
  loc_15839C6: var_D8 = 7
  loc_15839CF: var_14C = "Party Name"
  loc_15839D8: LateIdCallSt
  loc_15839E0: var_B8 = 7
  loc_15839E9: var_D8 = &HBB8
  loc_15839F5: LateIdCallSt
  loc_15839FD: var_B8 = 0
  loc_1583A06: var_D8 = 8
  loc_1583A0F: var_14C = "Phone No."
  loc_1583A18: LateIdCallSt
  loc_1583A20: var_B8 = 8
  loc_1583A29: var_D8 = &H5DC
  loc_1583A35: LateIdCallSt
  loc_1583A3D: var_B8 = 0
  loc_1583A46: var_D8 = 9
  loc_1583A4F: var_14C = "Mobile No."
  loc_1583A58: LateIdCallSt
  loc_1583A60: var_B8 = 9
  loc_1583A69: var_D8 = &H5DC
  loc_1583A75: LateIdCallSt
  loc_1583A7D: var_B8 = 0
  loc_1583A86: var_D8 = &HA
  loc_1583A8F: var_14C = "Contect Person"
  loc_1583A98: LateIdCallSt
  loc_1583AA0: var_B8 = &HA
  loc_1583AA9: var_D8 = &H9C4
  loc_1583AB5: LateIdCallSt
  loc_1583ABD: var_B8 = 0
  loc_1583AC6: var_D8 = &HB
  loc_1583ACF: var_14C = "Booked By"
  loc_1583AD8: LateIdCallSt
  loc_1583AE0: var_B8 = &HB
  loc_1583AE9: var_D8 = &H7D0
  loc_1583AF5: LateIdCallSt
  loc_1583AFD: var_B8 = 0
  loc_1583B06: var_D8 = &HC
  loc_1583B0F: var_14C = "Handled By"
  loc_1583B18: LateIdCallSt
  loc_1583B20: var_B8 = &HC
  loc_1583B29: var_D8 = &H7D0
  loc_1583B35: LateIdCallSt
  loc_1583B3D: var_B8 = 0
  loc_1583B46: var_D8 = &HD
  loc_1583B4F: var_14C = "Status"
  loc_1583B58: LateIdCallSt
  loc_1583B60: var_B8 = &HD
  loc_1583B69: var_D8 = &H4B0
  loc_1583B75: LateIdCallSt
  loc_1583B7D: var_B8 = 0
  loc_1583B86: var_D8 = &HE
  loc_1583B8F: var_14C = "User"
  loc_1583B98: LateIdCallSt
  loc_1583BA0: var_B8 = &HE
  loc_1583BA9: var_D8 = &H708
  loc_1583BB5: LateIdCallSt
  loc_1583BBD: var_B8 = 0
  loc_1583BC6: var_D8 = &HF
  loc_1583BCF: var_14C = "Remark"
  loc_1583BD8: LateIdCallSt
  loc_1583BE0: var_B8 = &HF
  loc_1583BE9: var_D8 = &H157C
  loc_1583BF5: LateIdCallSt
  loc_1583BFD: var_B8 = 0
  loc_1583C06: var_D8 = &H10
  loc_1583C0F: var_14C = "MARK"
  loc_1583C18: LateIdCallSt
  loc_1583C20: var_B8 = &H10
  loc_1583C29: var_D8 = 0
  loc_1583C35: LateIdCallSt
  loc_1583C3F: Set var_2DC = Nothing 
  loc_1583C57: If (var_90.RecordCount <= 0) Then
  loc_1583C5F:   global_152 = 0
  loc_1583C62:   Exit Sub
  loc_1583C63: End If
  loc_1583C67: Set var_2B0 = Me.FGrid1
  loc_1583C97: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1583C9A:   var_B8 = vbNullString
  loc_1583CA4:   Set var_2B0 = Me.FGrid1
  loc_1583CB5: End If
  loc_1583CEC: var_B8 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1583D0C: Me.FGrid1.Row = CVar(CLng(IIf(var_B8, FRow, 1)))
  loc_1583D5A: var_B8 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1583D7A: Me.FGrid1.Col = CVar(CLng(IIf(var_B8, Fcol, 1)))
  loc_1583D96: Set var_8C = Nothing
  loc_1583D9E: Set var_90 = Nothing
  loc_1583DA3: IStAd
  loc_1583DA7: Exit Sub
End Sub

Public Sub SalesRegHall(formName, FRow, Fcol) '1A0DC68
  'Data Table: 577EF0
  Dim var_94 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_E4 As Variant
  Dim var_228 As String
  Dim var_238 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_2A8 As Variant
  Dim var_2D8 As Variant
  Dim var_104 As Variant
  Dim var_2EC As Variant
  Dim unk_577EF3 As Connection15
  Dim var_11C As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_144 As Double
  Dim var_14C As Double
  Dim var_154 As Double
  Dim var_15C As Double
  Dim var_164 As Double
  Dim var_1D4 As Double
  Dim var_1DC As Double
  Dim var_1E4 As Double
  Dim var_1EC As Double
  Dim var_1F4 As Double
  Dim var_1FC As Double
  Dim var_204 As Double
  Dim var_20C As Double
  Dim var_214 As Double
  Dim var_110 As Recordset15
  Dim var_1C0 As Double
  Dim var_A4 As Variant
  Dim var_1CA As Integer
  Dim var_300 As Recordset15
  Dim var_2FC As Fields15
  Dim var_21C As Recordset15
  Dim var_2B8 As Variant
  Dim var_2C8 As Variant
  Dim var_220 As Recordset15
  Dim var_224 As Recordset15
  Dim var_218 As Recordset15
  Dim var_1C8 As Double
  Dim var_318 As Recordset15
  Dim arg_2C As Variant
  Dim var_10C As Recordset15
  Dim var_324 As MSHFlexGrid
  loc_1A0A864: var_94 = 2
  loc_1A0A86B: var_B4 = 1
  loc_1A0A890: If (Me.FGrid.TextMatrix = "Yes") Then
  loc_1A0A89C:   Call SalesRegHallItemWise(formName, FRow, Fcol)
  loc_1A0A8A1:   Exit Sub
  loc_1A0A8A2: End If
  loc_1A0A8BD: var_B4 = 1
  loc_1A0A8CB: VarLateMemCallLdRfVar
  loc_1A0A8D6: Proc_6_7_F26918(var_104, Me.FGrid, var_B4, 0)
  loc_1A0A8DE: var_248 = CVar("WHERE H.RestCode='" & global_208 & "' AND H.VDate Between ") & var_104 
  loc_1A0A900: VarLateMemCallLdRfVar
  loc_1A0A90B: Proc_6_7_F26918(var_2C8, Me.FGrid, 1, 1)
  loc_1A0A913: var_2D8 = var_248 & " And " & var_2C8 
  loc_1A0A918: var_114 = CStr(var_2D8)
  loc_1A0A93B: Call 0.Method_arg_54 ("Sales Register Report", var_B4)
  loc_1A0A943: var_94 = 0
  loc_1A0A953: var_D4 = Me.FGrid
  loc_1A0A980: var_104 = Me.FGrid
  loc_1A0A99A: Set var_2EC = 1(1 & CStr(var_104.TextMatrix))
  loc_1A0A9A0: var_104.TextBox.Text = 1 & CStr(var_D4.TextMatrix) & " To : "
  loc_1A0A9C8: If (MemVar_1F951A8 = "ODC") Then
  loc_1A0A9D8:   Me.Text2.Text = "OutDoor Catering"
  loc_1A0A9E3: Else
  loc_1A0A9EA:   Set var_2EC = Me.Text2
  loc_1A0A9F0:   var_2EC.Text = "Indoor Catering"
  loc_1A0A9F8: End If
  loc_1A0AA05: Call Proc_249_109_12445F8(New, var_2EC, var_94)
  loc_1A0AA0D: Set var_10C = var_2EC
  loc_1A0AA24: var_228 = "SELECT H.DocId, H.VNo, H.VDate, H.Party, H.NoOFPax, H.RatePerPax, H.TOTAL AS TotalPerCover, H.DiscAmt, H.Taxable AS Taxable ,H.NonTaxable AS NonTaxable,H.Tax, H.RoundOff,H.ServiceCharge ,H.NetAmt as Amount,H.BookDocId,H.RestCode From HallSale1 H " & var_114
  loc_1A0AA34: Me.Connection15.Execute var_228 & " Order By H.VNo, H.VDate", var_D4, -1
  loc_1A0AA3F: Set var_110 = var_2EC
  loc_1A0AA63: var_228 = "SELECT DISTINCT  SundryMast.Name, SundryMast.code FROM (SunTranH AS H INNER JOIN RevMast ON H.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code " & var_114
  loc_1A0AA73: unk_577EF3.Execute var_228 & " AND H.DELFLAG<>'D' Order by SundryMast.Name", var_D4, -1
  loc_1A0AA7E: Set var_21C = var_2EC
  loc_1A0AA91: var_11C = CDbl(0)
  loc_1A0AA97: var_12C = CDbl(0)
  loc_1A0AA9D: var_134 = CDbl(0)
  loc_1A0AAA3: var_13C = CDbl(0)
  loc_1A0AAA9: var_144 = CDbl(0)
  loc_1A0AAAF: var_14C = CDbl(0)
  loc_1A0AAB5: var_154 = CDbl(0)
  loc_1A0AABB: var_15C = CDbl(0)
  loc_1A0AAC1: var_164 = CDbl(0)
  loc_1A0AAC7: var_1D4 = CDbl(0)
  loc_1A0AACD: var_1DC = CDbl(0)
  loc_1A0AAD3: var_1E4 = CDbl(0)
  loc_1A0AAD9: var_1EC = CDbl(0)
  loc_1A0AADF: var_1F4 = CDbl(0)
  loc_1A0AAE5: var_1FC = CDbl(0)
  loc_1A0AAEB: var_204 = CDbl(0)
  loc_1A0AAF1: var_20C = CDbl(0)
  loc_1A0AAF7: var_214 = CDbl(0)
  loc_1A0AAFD: var_108 = vbNullString
  loc_1A0AB14: If (var_110.RecordCount > 0) Then
  loc_1A0AB1A:   var_110.MoveFirst
  loc_1A0AB4B:   var_1C0 = CDate(var_110.Fields.Item("VDate").Value)
  loc_1A0AB58:   ' Referenced from: 1A0C6BB
  loc_1A0AB67:   If Not(var_110.EOF) Then
  loc_1A0AB7E:     var_228 = "SELECT PH.Vno As Adv_No,PH.Vdate As Adv_Date,Case When PH.Vtype='AD' Then PH.AmtCr Else -PH.AmtDr End As Advance,PH.PayType As Adv_Type FROM " & "PaychargeH PH WHERE PH.VType In ('AD','AR') And PH.RestCOde='"
  loc_1A0AB98:     var_94 = "BOOKDOCID"
  loc_1A0ABC0:     var_A4 = "' Order by PH.VDate,PH.VNo,PH.Sno"
  loc_1A0ABD3:     unk_577EF3.Execute CStr(CVar(var_228 & global_208 & "' And PH.ContraDocId='") & var_110.Fields.Item(var_94).Value & var_A4), var_248, -1
  loc_1A0ABDE:     Set var_218 = var_2FC
  loc_1A0AC06:     var_1CA = (var_1CA + 1)
  loc_1A0AC0C:     Set var_300 = var_10C 
  loc_1A0AC1B:     var_300.AddNew var_94, var_A4
  loc_1A0AC45:     var_300.Fields.Item("mLine").Value = vbNullString
  loc_1A0AC80:     var_300.Fields.Item("SrNo").Value = CVar(CStr(var_1CA) & ".")
  loc_1A0ACD5:     var_300.Fields.Item("DocID").Value = CVar(var_110.Fields.Item("DocID"))
  loc_1A0AD29:     var_300.Fields.Item("BillNo").Value = CVar(var_110.Fields.Item("VNo"))
  loc_1A0AD65:     var_F4 = "DD/MM/YY"
  loc_1A0AD9D:     var_300.Fields.Item("Billdate").Value = Format(CVar(var_110.Fields.Item("VDate")), var_F4)
  loc_1A0ADF7:     var_300.Fields.Item("PartyName").Value = CVar(var_110.Fields.Item("Party"))
  loc_1A0AE3B:     var_2FC = var_300.Fields
  loc_1A0AE4B:     var_2FC.Item("NoofPax").Value = CVar(var_110.Fields.Item("NoofPax"))
  loc_1A0AE82:     Proc_6_47_EF6560(var_F4, CVar(var_110.Fields.Item("RatePerPax")), 1, 1, var_1CA, var_2FC, var_1C0)
  loc_1A0AEAA:     var_300.Fields.Item("RatePerPax").Value = var_F4
  loc_1A0AEE5:     Proc_6_47_EF6560(var_F4, CVar(var_110.Fields.Item("TotalPerCover")), var_214, var_20C)
  loc_1A0AF0D:     var_300.Fields.Item("TotalPerCover").Value = var_F4
  loc_1A0AF48:     Proc_6_47_EF6560(var_F4, CVar(var_110.Fields.Item("DiscAmt")), var_204)
  loc_1A0AF70:     var_300.Fields.Item("DiscAmt").Value = var_F4
  loc_1A0AF99:     If (var_21C.RecordCount > 0) Then
  loc_1A0AF9F:       var_21C.MoveFirst
  loc_1A0AFA4:       ' Referenced from: 1A0BD37
  loc_1A0AFA4:     End If
  loc_1A0AFB5:     If (var_21C.EOF = 0) Then
  loc_1A0AFF4:       var_F4 = "Select sum(Amount) as TaxAmt from SunTranH where RevCode IN (SELECT Code from Revmast where Sundry='" & var_21C.Fields.Item("Code").Value 
  loc_1A0B062:       var_2B8 = var_F4 & "') and Docid='" & var_110.Fields.Item("DocID").Value & "' And RestCode='" & var_110.Fields.Item("RestCode").Value 
  loc_1A0B079:       unk_577EF3.Execute CStr(var_2B8 & "'"), var_2D8, -1
  loc_1A0B084:       Set var_220 = var_310
  loc_1A0B0EE:       var_F4 = "Select sum(Amount) as TaxAmt from SunTran where RevCode IN (SELECT Code from Revmast where Sundry='" & var_21C.Fields.Item("Code").Value 
  loc_1A0B11D:       var_238 = var_110.Fields.Item("DocID").Value
  loc_1A0B154:       var_2A8 = var_110.Fields.Item("RestCode").Value
  loc_1A0B173:       unk_577EF3.Execute CStr(var_F4 & "') and Docid='" & var_238 & "' And RestCode='" & var_2A8 & "'"), var_2D8, -1
  loc_1A0B17E:       Set var_224 = var_310
  loc_1A0B1C0:       If (var_21C.AbsolutePosition = 1) Then
  loc_1A0B217:         var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B21E:         Proc_6_47_EF6560(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", var_310, var_310)
  loc_1A0B246:         var_300.Fields.Item("Tax1").Value = var_238
  loc_1A0B2C0:         var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B2C7:         Proc_6_39_E7D3A0(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_1D4))
  loc_1A0B2CF:         var_248 = (var_1FC + var_238)
  loc_1A0B2D4:         var_1D4 = CSng(var_220.Fields.Item("TaxAmt").Value & "') and Docid='" & var_238)
  loc_1A0B2F2:       Else
  loc_1A0B306:         If (var_21C.AbsolutePosition = 2) Then
  loc_1A0B35D:           var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B364:           Proc_6_47_EF6560(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D4)
  loc_1A0B38C:           var_300.Fields.Item("Tax2").Value = var_238
  loc_1A0B406:           var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B40D:           Proc_6_39_E7D3A0(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_1DC))
  loc_1A0B415:           var_248 = (var_1F4 + var_238)
  loc_1A0B41A:           var_1DC = CSng(var_220.Fields.Item("TaxAmt").Value & "') and Docid='" & var_238)
  loc_1A0B438:         Else
  loc_1A0B44C:           If (var_21C.AbsolutePosition = 3) Then
  loc_1A0B4A3:             var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B4AA:             Proc_6_47_EF6560(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1A0B4D2:             var_300.Fields.Item("Tax3").Value = var_238
  loc_1A0B54C:             var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B553:             Proc_6_39_E7D3A0(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_1E4))
  loc_1A0B55B:             var_248 = (var_1DC + var_238)
  loc_1A0B560:             var_1E4 = CSng(var_220.Fields.Item("TaxAmt").Value & "') and Docid='" & var_238)
  loc_1A0B57E:           Else
  loc_1A0B592:             If (var_21C.AbsolutePosition = 4) Then
  loc_1A0B5E9:               var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B5F0:               Proc_6_47_EF6560(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1A0B618:               var_300.Fields.Item("Tax4").Value = var_238
  loc_1A0B692:               var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B699:               Proc_6_39_E7D3A0(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_1EC))
  loc_1A0B6A1:               var_248 = (var_1E4 + var_238)
  loc_1A0B6A6:               var_1EC = CSng(var_220.Fields.Item("TaxAmt").Value & "') and Docid='" & var_238)
  loc_1A0B6C4:             Else
  loc_1A0B6D8:               If (var_21C.AbsolutePosition = 5) Then
  loc_1A0B72F:                 var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B736:                 Proc_6_47_EF6560(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1A0B75E:                 var_300.Fields.Item("Tax5").Value = var_238
  loc_1A0B7D8:                 var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B7DF:                 Proc_6_39_E7D3A0(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_1F4))
  loc_1A0B7E7:                 var_248 = (var_1EC + var_238)
  loc_1A0B7EC:                 var_1F4 = CSng(var_220.Fields.Item("TaxAmt").Value & "') and Docid='" & var_238)
  loc_1A0B80A:               Else
  loc_1A0B81E:                 If (var_21C.AbsolutePosition = 6) Then
  loc_1A0B875:                   var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B87C:                   Proc_6_47_EF6560(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1A0B8A4:                   var_300.Fields.Item("Tax6").Value = var_238
  loc_1A0B91E:                   var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B925:                   Proc_6_39_E7D3A0(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_1FC))
  loc_1A0B92D:                   var_248 = (var_1F4 + var_238)
  loc_1A0B932:                   var_1FC = CSng(var_220.Fields.Item("TaxAmt").Value & "') and Docid='" & var_238)
  loc_1A0B950:                 Else
  loc_1A0B964:                   If (var_21C.AbsolutePosition = 7) Then
  loc_1A0B9BB:                     var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0B9C2:                     Proc_6_47_EF6560(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1A0B9EA:                     var_300.Fields.Item("Tax7").Value = var_238
  loc_1A0BA64:                     var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0BA6B:                     Proc_6_39_E7D3A0(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_204))
  loc_1A0BA73:                     var_248 = (var_1FC + var_238)
  loc_1A0BA78:                     var_204 = CSng(var_220.Fields.Item("TaxAmt").Value & "') and Docid='" & var_238)
  loc_1A0BA96:                   Else
  loc_1A0BAAA:                     If (var_21C.AbsolutePosition = 8) Then
  loc_1A0BB01:                       var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0BB08:                       Proc_6_47_EF6560(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1A0BB30:                       var_300.Fields.Item("Tax8").Value = var_238
  loc_1A0BBAA:                       var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0BBB1:                       Proc_6_39_E7D3A0(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_20C))
  loc_1A0BBB9:                       var_248 = (var_204 + var_238)
  loc_1A0BBBE:                       var_20C = CSng(var_220.Fields.Item("TaxAmt").Value & "') and Docid='" & var_238)
  loc_1A0BBDC:                     Else
  loc_1A0BBF0:                       If (var_21C.AbsolutePosition = 9) Then
  loc_1A0BC47:                         var_104 = (var_220.Fields.Item("TaxAmt").Value + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0BC4E:                         Proc_6_47_EF6560(var_238, var_220.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1A0BC76:                         var_300.Fields.Item("Tax9").Value = var_238
  loc_1A0BCBE:                         var_F4 = var_220.Fields.Item("TaxAmt").Value
  loc_1A0BCF0:                         var_104 = (var_F4 + var_224.Fields.Item("TaxAmt").Value)
  loc_1A0BCF7:                         Proc_6_39_E7D3A0(var_238, var_F4 & "') and Docid='", CVar(var_214))
  loc_1A0BCFF:                         var_248 = (var_20C + var_238)
  loc_1A0BD04:                         var_214 = CSng(var_F4 & "') and Docid='" & var_238)
  loc_1A0BD1F:                       End If
  loc_1A0BD1F:                     End If
  loc_1A0BD1F:                   End If
  loc_1A0BD1F:                 End If
  loc_1A0BD1F:               End If
  loc_1A0BD1F:             End If
  loc_1A0BD1F:           End If
  loc_1A0BD1F:         End If
  loc_1A0BD1F:       End If
  loc_1A0BD24:       Set var_220 = Nothing
  loc_1A0BD2C:       Set var_224 = Nothing
  loc_1A0BD32:       var_21C.MoveNext
  loc_1A0BD37:       GoTo loc_1A0AFA4
  loc_1A0BD3A:     End If
  loc_1A0BD60:     Proc_6_39_E7D3A0(var_F4, CVar(var_110.Fields.Item("Taxable")))
  loc_1A0BD8E:     Proc_6_39_E7D3A0(var_238, CVar(var_110.Fields.Item("DiscAmt")), var_F4)
  loc_1A0BD96:     var_248 = (var_214 - var_238)
  loc_1A0BDA4:     Proc_6_47_EF6560(var_2A8, var_F4 & "') and Docid='" & var_238)
  loc_1A0BDCC:     var_300.Fields.Item("Taxable").Value = var_2A8
  loc_1A0BE11:     Proc_6_47_EF6560(var_F4, CVar(var_110.Fields.Item("nonTaxable")))
  loc_1A0BE39:     var_300.Fields.Item("nonTaxable").Value = var_F4
  loc_1A0BE74:     Proc_6_47_EF6560(var_F4, CVar(var_110.Fields.Item("Servicecharge")))
  loc_1A0BE9C:     var_300.Fields.Item("SrvChrg").Value = var_F4
  loc_1A0BED7:     Proc_6_47_EF6560(var_F4, CVar(var_110.Fields.Item("RoundOff")))
  loc_1A0BEFF:     var_300.Fields.Item("RoundOff").Value = var_F4
  loc_1A0BF3A:     Proc_6_47_EF6560(var_F4, CVar(var_110.Fields.Item("Amount")))
  loc_1A0BF62:     var_300.Fields.Item("Amount").Value = var_F4
  loc_1A0BF9A:     If ((var_218.BOF = 0) And (var_218.EOF = 0)) Then
  loc_1A0BFC3:       Proc_6_47_EF6560(var_F4, CVar(var_218.Fields.Item("Advance")))
  loc_1A0BFEB:       var_300.Fields.Item("Advance").Value = var_F4
  loc_1A0C04B:       var_300.Fields.Item("AdvType").Value = CVar(Proc_6_38_E69628(CVar(var_218.Fields.Item("Adv_type"))))
  loc_1A0C0AB:       var_300.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E69628(CVar(var_218.Fields.Item("Adv_No"))))
  loc_1A0C0EB:       var_F4 = "dd/MMM/yy"
  loc_1A0C123:       var_300.Fields.Item("AdvDate").Value = Format(CVar(var_218.Fields.Item("Adv_Date")), var_F4)
  loc_1A0C167:       Proc_6_39_E7D3A0(var_F4, CVar(var_218.Fields.Item("Advance")), CVar(var_1C8))
  loc_1A0C16F:       var_104 = (1 + var_F4)
  loc_1A0C174:       var_1C8 = CSng(Format(CVar(var_218.Fields.Item("Adv_Date")), var_F4))
  loc_1A0C186:       var_218.MoveNext
  loc_1A0C18B:     End If
  loc_1A0C18B:     var_A4 = "*"
  loc_1A0C194:     var_94 = "Mark"
  loc_1A0C1B0:     var_300.Fields.Item(var_94).Value = var_A4
  loc_1A0C1C7:     var_300.Update var_94, var_A4
  loc_1A0C1CC:     ' Referenced from: 1A0C471
  loc_1A0C1DB:     If Not(var_218.EOF) Then
  loc_1A0C1E9:       var_300.AddNew var_94, var_A4
  loc_1A0C213:       var_300.Fields.Item("mLine").Value = vbNullString
  loc_1A0C262:       var_300.Fields.Item("BillNo").Value = CVar(var_110.Fields.Item("VNo"))
  loc_1A0C299:       Proc_6_47_EF6560(var_F4, CVar(var_218.Fields.Item("Advance")), var_1C8)
  loc_1A0C2C1:       var_300.Fields.Item("Advance").Value = var_F4
  loc_1A0C321:       var_300.Fields.Item("AdvType").Value = CVar(Proc_6_38_E69628(CVar(var_218.Fields.Item("Adv_type")), 1))
  loc_1A0C381:       var_300.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E69628(CVar(var_218.Fields.Item("Adv_No"))))
  loc_1A0C399:       var_94 = "Adv_Date"
  loc_1A0C3BC:       var_A4 = "dd/MMM/yy"
  loc_1A0C3C1:       var_F4 = var_A4
  loc_1A0C3F9:       var_300.Fields.Item("AdvDate").Value = Format(CVar(var_218.Fields.Item(var_94)), var_F4)
  loc_1A0C41B:       var_300.Update var_94, var_A4
  loc_1A0C44D:       Proc_6_39_E7D3A0(var_F4, CVar(var_218.Fields.Item("Advance")), CVar(var_1C8))
  loc_1A0C455:       var_104 = (1 + var_F4)
  loc_1A0C45A:       var_1C8 = CSng(Format(CVar(var_218.Fields.Item("Advance")), var_F4))
  loc_1A0C46C:       var_218.MoveNext
  loc_1A0C471:       GoTo loc_1A0C1CC
  loc_1A0C474:     End If
  loc_1A0C476:     Set var_300 = Nothing 
  loc_1A0C4A7:     Proc_6_39_E7D3A0(var_F4, CVar(var_110.Fields.Item("TotalPerCover")), CVar(var_11C))
  loc_1A0C4AF:     var_104 = (var_1C8 + var_F4)
  loc_1A0C4B4:     var_11C = CSng(Format(CVar(var_218.Fields.Item("TotalPerCover")), var_F4))
  loc_1A0C4F0:     Proc_6_39_E7D3A0(var_F4, CVar(var_110.Fields.Item("DiscAmt")), CVar(var_14C))
  loc_1A0C4F8:     var_104 = (var_11C + var_F4)
  loc_1A0C4FD:     var_14C = CSng(Format(CVar(var_218.Fields.Item("DiscAmt")), var_F4))
  loc_1A0C539:     Proc_6_39_E7D3A0(var_F4, CVar(var_110.Fields.Item("nonTaxable")), CVar(var_134))
  loc_1A0C541:     var_104 = (var_14C + var_F4)
  loc_1A0C546:     var_134 = CSng(Format(CVar(var_218.Fields.Item("nonTaxable")), var_F4))
  loc_1A0C582:     Proc_6_39_E7D3A0(var_F4, CVar(var_110.Fields.Item("Taxable")), CVar(var_12C))
  loc_1A0C58A:     var_104 = (var_134 + var_F4)
  loc_1A0C5B4:     Proc_6_39_E7D3A0(var_F4 & "') and Docid='" & CVar(var_110.Fields.Item("DiscAmt")), CVar(var_110.Fields.Item("DiscAmt")), Format(CVar(var_218.Fields.Item("Taxable")), var_F4))
  loc_1A0C5BC:     var_258 = (1 - var_F4 & "') and Docid='" & CVar(var_110.Fields.Item("DiscAmt")))
  loc_1A0C5C1:     var_12C = CSng(var_F4 & "') and Docid='" & CVar(var_110.Fields.Item("DiscAmt")))
  loc_1A0C605:     Proc_6_39_E7D3A0(var_F4, CVar(var_110.Fields.Item("RoundOff")), CVar(var_144))
  loc_1A0C60D:     var_104 = (var_12C + var_F4)
  loc_1A0C612:     var_144 = CSng(Format(CVar(var_218.Fields.Item("RoundOff")), var_F4))
  loc_1A0C64E:     Proc_6_39_E7D3A0(var_F4, CVar(var_110.Fields.Item("Servicecharge")), CVar(var_154))
  loc_1A0C656:     var_104 = (var_144 + var_F4)
  loc_1A0C65B:     var_154 = CSng(Format(CVar(var_218.Fields.Item("Servicecharge")), var_F4))
  loc_1A0C66D:     var_A4 = CVar(var_13C) 'Double
  loc_1A0C674:     var_94 = "Amount"
  loc_1A0C690:     var_D4 = CVar(var_110.Fields.Item(var_94)) 'Address
  loc_1A0C697:     Proc_6_39_E7D3A0(var_F4, var_D4, var_A4)
  loc_1A0C69F:     var_104 = (var_154 + var_F4)
  loc_1A0C6A4:     var_13C = CSng(Format(CVar(var_218.Fields.Item(var_94)), var_F4))
  loc_1A0C6B6:     var_110.MoveNext
  loc_1A0C6BB:     GoTo loc_1A0AB58
  loc_1A0C6BE:   End If
  loc_1A0C6BE: End If
  loc_1A0C6C1: Set var_318 = var_10C 
  loc_1A0C6D0: var_318.AddNew var_94, var_A4
  loc_1A0C6FA: var_318.Fields.Item("mLine").Value = "GF"
  loc_1A0C706: var_A4 = "Total-->"
  loc_1A0C72B: var_318.Fields.Item("PartyName").Value = "GF"
  loc_1A0C742: Proc_6_47_EF6560(var_D4, var_11C)
  loc_1A0C76A: var_318.Fields.Item("TotalPerCover").Value = var_D4
  loc_1A0C784: Proc_6_47_EF6560(var_D4, var_14C)
  loc_1A0C7AC: var_318.Fields.Item("DiscAmt").Value = var_D4
  loc_1A0C7C6: Proc_6_47_EF6560(var_D4, var_134)
  loc_1A0C7EE: var_318.Fields.Item("nonTaxable").Value = var_D4
  loc_1A0C808: Proc_6_47_EF6560(var_D4, var_12C)
  loc_1A0C830: var_318.Fields.Item("Taxable").Value = var_D4
  loc_1A0C84A: Proc_6_47_EF6560(var_D4, var_1D4)
  loc_1A0C872: var_318.Fields.Item("Tax1").Value = var_D4
  loc_1A0C88C: Proc_6_47_EF6560(var_D4, var_1DC)
  loc_1A0C8B4: var_318.Fields.Item("Tax2").Value = var_D4
  loc_1A0C8CE: Proc_6_47_EF6560(var_D4, var_1E4)
  loc_1A0C8F6: var_318.Fields.Item("Tax3").Value = var_D4
  loc_1A0C910: Proc_6_47_EF6560(var_D4, var_1EC)
  loc_1A0C938: var_318.Fields.Item("Tax4").Value = var_D4
  loc_1A0C952: Proc_6_47_EF6560(var_D4, var_1F4)
  loc_1A0C97A: var_318.Fields.Item("Tax5").Value = var_D4
  loc_1A0C994: Proc_6_47_EF6560(var_D4, var_1FC)
  loc_1A0C9BC: var_318.Fields.Item("Tax6").Value = var_D4
  loc_1A0C9D6: Proc_6_47_EF6560(var_D4, var_204)
  loc_1A0C9FE: var_318.Fields.Item("Tax7").Value = var_D4
  loc_1A0CA18: Proc_6_47_EF6560(var_D4, var_20C)
  loc_1A0CA40: var_318.Fields.Item("Tax8").Value = var_D4
  loc_1A0CA5A: Proc_6_47_EF6560(var_D4, var_214)
  loc_1A0CA82: var_318.Fields.Item("Tax9").Value = var_D4
  loc_1A0CA9C: Proc_6_47_EF6560(var_D4, var_154)
  loc_1A0CAC4: var_318.Fields.Item("SrvChrg").Value = var_D4
  loc_1A0CADE: Proc_6_47_EF6560(var_D4, var_144)
  loc_1A0CB06: var_318.Fields.Item("RoundOff").Value = var_D4
  loc_1A0CB20: Proc_6_47_EF6560(var_D4, var_13C)
  loc_1A0CB48: var_318.Fields.Item("Amount").Value = var_D4
  loc_1A0CB62: Proc_6_47_EF6560(var_D4, var_1C8)
  loc_1A0CB8A: var_318.Fields.Item("Advance").Value = var_D4
  loc_1A0CB99: var_A4 = vbNullString
  loc_1A0CBA2: var_94 = "Mark"
  loc_1A0CBBE: var_318.Fields.Item(var_94).Value = var_A4
  loc_1A0CBD5: var_318.Update var_94, var_A4
  loc_1A0CBDC: Set var_318 = Nothing 
  loc_1A0CBEA: arg_2C = Me.FGrid1.Text
  loc_1A0CC08: Me.FGrid1.Rows = 2
  loc_1A0CC24: If (var_10C.RecordCount > 0) Then
  loc_1A0CC2D:   CVarUnk
  loc_1A0CC32:   VerifyVarObj
  loc_1A0CC38:   Set var_2EC = Me.FGrid1
  loc_1A0CC3E:   LateIdStAd
  loc_1A0CC6E:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_1A0CC79: End If
  loc_1A0CC7D: Set var_324 = Me.FGrid1
  loc_1A0CC89: var_324.Tag = "SalesRegister"
  loc_1A0CC9A: var_324.Cols = &H1D
  loc_1A0CC9F: var_94 = 0
  loc_1A0CCA8: var_B4 = 0
  loc_1A0CCB1: var_E4 = "mLine"
  loc_1A0CCBA: LateIdCallSt
  loc_1A0CCC2: var_94 = 0
  loc_1A0CCCB: var_B4 = 0
  loc_1A0CCD7: LateIdCallSt
  loc_1A0CCDF: var_94 = 0
  loc_1A0CCE8: var_B4 = 1
  loc_1A0CCF1: var_E4 = "SNo."
  loc_1A0CCFA: LateIdCallSt
  loc_1A0CD02: var_94 = 1
  loc_1A0CD0B: var_B4 = &H1F4
  loc_1A0CD17: LateIdCallSt
  loc_1A0CD1F: var_94 = 0
  loc_1A0CD28: var_B4 = 2
  loc_1A0CD31: var_E4 = "Doc Id"
  loc_1A0CD3A: LateIdCallSt
  loc_1A0CD42: var_94 = 2
  loc_1A0CD4B: var_B4 = 0
  loc_1A0CD57: LateIdCallSt
  loc_1A0CD5F: var_94 = 0
  loc_1A0CD68: var_B4 = 3
  loc_1A0CD71: var_E4 = "Bill No"
  loc_1A0CD7A: LateIdCallSt
  loc_1A0CD82: var_94 = 3
  loc_1A0CD8B: var_B4 = &H578
  loc_1A0CD97: LateIdCallSt
  loc_1A0CD9F: var_94 = 0
  loc_1A0CDA8: var_B4 = 4
  loc_1A0CDB1: var_E4 = "Bill Date"
  loc_1A0CDBA: LateIdCallSt
  loc_1A0CDC2: var_94 = 4
  loc_1A0CDCB: var_B4 = &H708
  loc_1A0CDD7: LateIdCallSt
  loc_1A0CDDF: var_94 = 0
  loc_1A0CDE8: var_B4 = 5
  loc_1A0CDF1: var_E4 = "Party Name"
  loc_1A0CDFA: LateIdCallSt
  loc_1A0CE02: var_94 = 5
  loc_1A0CE0B: var_B4 = &HBB8
  loc_1A0CE17: LateIdCallSt
  loc_1A0CE1F: var_94 = 0
  loc_1A0CE28: var_B4 = 6
  loc_1A0CE31: var_E4 = "No. Of Pax"
  loc_1A0CE3A: LateIdCallSt
  loc_1A0CE42: var_94 = 6
  loc_1A0CE51: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0CE58: LateIdCallSt
  loc_1A0CE60: var_94 = 6
  loc_1A0CE6F: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0CE76: LateIdCallSt
  loc_1A0CE7E: var_94 = 6
  loc_1A0CE87: var_B4 = &H640
  loc_1A0CE93: LateIdCallSt
  loc_1A0CE9B: var_94 = 0
  loc_1A0CEA4: var_B4 = 7
  loc_1A0CEAD: var_E4 = "Rate Per Pax"
  loc_1A0CEB6: LateIdCallSt
  loc_1A0CEBE: var_94 = 7
  loc_1A0CECD: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0CED4: LateIdCallSt
  loc_1A0CEDC: var_94 = 7
  loc_1A0CEEB: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0CEF2: LateIdCallSt
  loc_1A0CEFA: var_94 = 7
  loc_1A0CF03: var_B4 = 0
  loc_1A0CF0F: LateIdCallSt
  loc_1A0CF17: var_94 = 0
  loc_1A0CF20: var_B4 = 8
  loc_1A0CF29: var_E4 = "Amount"
  loc_1A0CF32: LateIdCallSt
  loc_1A0CF3A: var_94 = 8
  loc_1A0CF49: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0CF50: LateIdCallSt
  loc_1A0CF58: var_94 = 8
  loc_1A0CF67: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0CF6E: LateIdCallSt
  loc_1A0CF76: var_94 = 8
  loc_1A0CF7F: var_B4 = &H4B0
  loc_1A0CF8B: LateIdCallSt
  loc_1A0CF93: var_94 = 0
  loc_1A0CF9C: var_B4 = 9
  loc_1A0CFA5: var_E4 = "Discount"
  loc_1A0CFAE: LateIdCallSt
  loc_1A0CFB6: var_94 = 9
  loc_1A0CFC5: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0CFCC: LateIdCallSt
  loc_1A0CFD4: var_94 = 9
  loc_1A0CFE3: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0CFEA: LateIdCallSt
  loc_1A0CFF2: var_94 = 9
  loc_1A0CFFB: var_B4 = &H44C
  loc_1A0D007: LateIdCallSt
  loc_1A0D00F: var_94 = 0
  loc_1A0D018: var_B4 = &HA
  loc_1A0D021: var_E4 = "Non-Taxable"
  loc_1A0D02A: LateIdCallSt
  loc_1A0D032: var_94 = &HA
  loc_1A0D041: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D048: LateIdCallSt
  loc_1A0D050: var_94 = &HA
  loc_1A0D05F: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D066: LateIdCallSt
  loc_1A0D06E: var_94 = &HA
  loc_1A0D077: var_B4 = &H578
  loc_1A0D083: LateIdCallSt
  loc_1A0D08B: var_94 = 0
  loc_1A0D094: var_B4 = &HB
  loc_1A0D09D: var_E4 = "Taxable"
  loc_1A0D0A6: LateIdCallSt
  loc_1A0D0AE: var_94 = &HB
  loc_1A0D0BD: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D0C4: LateIdCallSt
  loc_1A0D0CC: var_94 = &HB
  loc_1A0D0DB: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D0E2: LateIdCallSt
  loc_1A0D0EA: var_94 = &HB
  loc_1A0D0F3: var_B4 = &H578
  loc_1A0D0FF: LateIdCallSt
  loc_1A0D10E: For var_32A = &HC To &H14: var_326 = var_32A 'Integer
  loc_1A0D114:   var_94 = 0
  loc_1A0D121:   var_B4 = CVar(CLng(var_326)) 'Long
  loc_1A0D126:   var_E4 = vbNullString
  loc_1A0D12F:   LateIdCallSt
  loc_1A0D13B:   var_94 = CVar(CLng(var_326)) 'Long
  loc_1A0D140:   var_B4 = 0
  loc_1A0D14C:   LateIdCallSt
  loc_1A0D158:   var_94 = CVar(CLng(var_326)) 'Long
  loc_1A0D163:   var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D16A:   LateIdCallSt
  loc_1A0D176:   var_94 = CVar(CLng(var_326)) 'Long
  loc_1A0D181:   var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D188:   LateIdCallSt
  loc_1A0D193: Next var_32A 'Integer
  loc_1A0D1AC: If (var_21C.RecordCount > 0) Then
  loc_1A0D1B2:   var_21C.MoveFirst
  loc_1A0D1B7:   ' Referenced from: 1A0D755
  loc_1A0D1B7: End If
  loc_1A0D1C8: If (var_21C.EOF = 0) Then
  loc_1A0D1DF:   If (var_21C.AbsolutePosition = 1) Then
  loc_1A0D1E2:     var_A4 = 0
  loc_1A0D22B:     var_238 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_21C.Fields.Item("Name")), &HC))))) 'String
  loc_1A0D232:     LateIdCallSt
  loc_1A0D248:     var_94 = &HC
  loc_1A0D251:     var_B4 = &H6A4
  loc_1A0D25D:     LateIdCallSt
  loc_1A0D268:   Else
  loc_1A0D27C:     If (var_21C.AbsolutePosition = 2) Then
  loc_1A0D2C8:       var_238 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_21C.Fields.Item("Name")), &HD, 0, var_324, var_B4))))) 'String
  loc_1A0D2CF:       LateIdCallSt
  loc_1A0D2E5:       var_94 = &HD
  loc_1A0D2EE:       var_B4 = &H6A4
  loc_1A0D2FA:       LateIdCallSt
  loc_1A0D305:     Else
  loc_1A0D319:       If (var_21C.AbsolutePosition = 3) Then
  loc_1A0D331:         var_94 = "Name"
  loc_1A0D365:         var_238 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_21C.Fields.Item(var_94)), &HE, 0, var_324, var_B4, var_94))))) 'String
  loc_1A0D36C:         LateIdCallSt
  loc_1A0D382:         var_94 = &HE
  loc_1A0D38B:         var_B4 = &H6A4
  loc_1A0D397:         LateIdCallSt
  loc_1A0D3A2:       Else
  loc_1A0D3B6:         If (var_21C.AbsolutePosition = 4) Then
  loc_1A0D3CE:           var_94 = "Name"
  loc_1A0D402:           var_238 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_21C.Fields.Item(var_94)), &HF, 0, var_324, var_B4, var_94, var_324))))) 'String
  loc_1A0D409:           LateIdCallSt
  loc_1A0D41F:           var_94 = &HF
  loc_1A0D428:           var_B4 = &H6A4
  loc_1A0D434:           LateIdCallSt
  loc_1A0D43F:         Else
  loc_1A0D453:           If (var_21C.AbsolutePosition = 5) Then
  loc_1A0D46B:             var_94 = "Name"
  loc_1A0D49F:             var_238 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_21C.Fields.Item(var_94)), &H10, 0, var_324, var_B4, var_94, var_324))))) 'String
  loc_1A0D4A6:             LateIdCallSt
  loc_1A0D4BC:             var_94 = &H10
  loc_1A0D4C5:             var_B4 = &H6A4
  loc_1A0D4D1:             LateIdCallSt
  loc_1A0D4DC:           Else
  loc_1A0D4F0:             If (var_21C.AbsolutePosition = 6) Then
  loc_1A0D508:               var_94 = "Name"
  loc_1A0D53C:               var_238 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_21C.Fields.Item(var_94)), &H11, 0, var_324, var_B4, var_94, var_324))))) 'String
  loc_1A0D543:               LateIdCallSt
  loc_1A0D559:               var_94 = &H11
  loc_1A0D562:               var_B4 = &H6A4
  loc_1A0D56E:               LateIdCallSt
  loc_1A0D579:             Else
  loc_1A0D58D:               If (var_21C.AbsolutePosition = 7) Then
  loc_1A0D5A5:                 var_94 = "Name"
  loc_1A0D5D9:                 var_238 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_21C.Fields.Item(var_94)), &H12, 0, var_324, var_B4, var_94, var_324))))) 'String
  loc_1A0D5E0:                 LateIdCallSt
  loc_1A0D5F6:                 var_94 = &H12
  loc_1A0D5FF:                 var_B4 = &H6A4
  loc_1A0D60B:                 LateIdCallSt
  loc_1A0D616:               Else
  loc_1A0D62A:                 If (var_21C.AbsolutePosition = 8) Then
  loc_1A0D642:                   var_94 = "Name"
  loc_1A0D667:                   var_F4 = CVar(Proc_6_38_E69628(CVar(var_21C.Fields.Item(var_94)), &H13, 0, var_324, var_B4, var_94, var_324)) 'String
  loc_1A0D676:                   var_238 = CVar(CStr(Trim(var_F4))) 'String
  loc_1A0D67D:                   LateIdCallSt
  loc_1A0D693:                   var_94 = &H13
  loc_1A0D69C:                   var_B4 = &H6A4
  loc_1A0D6A8:                   LateIdCallSt
  loc_1A0D6B3:                 Else
  loc_1A0D6C7:                   If (var_21C.AbsolutePosition = 9) Then
  loc_1A0D6DF:                     var_94 = "Name"
  loc_1A0D704:                     var_F4 = CVar(Proc_6_38_E69628(CVar(var_21C.Fields.Item(var_94)), &H14, 0, var_324, var_B4, var_94, var_324)) 'String
  loc_1A0D713:                     var_238 = CVar(CStr(Trim(var_F4))) 'String
  loc_1A0D71A:                     LateIdCallSt
  loc_1A0D730:                     var_94 = &H14
  loc_1A0D739:                     var_B4 = &H6A4
  loc_1A0D745:                     LateIdCallSt
  loc_1A0D74D:                   End If
  loc_1A0D74D:                 End If
  loc_1A0D74D:               End If
  loc_1A0D74D:             End If
  loc_1A0D74D:           End If
  loc_1A0D74D:         End If
  loc_1A0D74D:       End If
  loc_1A0D74D:     End If
  loc_1A0D74D:   End If
  loc_1A0D750:   var_21C.MoveNext
  loc_1A0D755:   GoTo loc_1A0D1B7
  loc_1A0D758: End If
  loc_1A0D758: var_94 = 0
  loc_1A0D761: var_B4 = &H15
  loc_1A0D76A: var_E4 = "SRV. Charge"
  loc_1A0D773: LateIdCallSt
  loc_1A0D77B: var_94 = &H15
  loc_1A0D78A: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D791: LateIdCallSt
  loc_1A0D799: var_94 = &H15
  loc_1A0D7A8: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D7AF: LateIdCallSt
  loc_1A0D7B7: var_94 = &H15
  loc_1A0D7C0: var_B4 = &H578
  loc_1A0D7CC: LateIdCallSt
  loc_1A0D7D4: var_94 = 0
  loc_1A0D7DD: var_B4 = &H16
  loc_1A0D7E6: var_E4 = "Round Off"
  loc_1A0D7EF: LateIdCallSt
  loc_1A0D7F7: var_94 = &H16
  loc_1A0D806: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D80D: LateIdCallSt
  loc_1A0D815: var_94 = &H16
  loc_1A0D824: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D82B: LateIdCallSt
  loc_1A0D833: var_94 = &H16
  loc_1A0D83C: var_B4 = &H578
  loc_1A0D848: LateIdCallSt
  loc_1A0D850: var_94 = 0
  loc_1A0D859: var_B4 = &H17
  loc_1A0D862: var_E4 = "Net Amount"
  loc_1A0D86B: LateIdCallSt
  loc_1A0D873: var_94 = &H17
  loc_1A0D882: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D889: LateIdCallSt
  loc_1A0D891: var_94 = &H17
  loc_1A0D8A0: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D8A7: LateIdCallSt
  loc_1A0D8AF: var_94 = &H17
  loc_1A0D8B8: var_B4 = &H960
  loc_1A0D8C4: LateIdCallSt
  loc_1A0D8CC: var_94 = 0
  loc_1A0D8D5: var_B4 = &H18
  loc_1A0D8DE: var_E4 = "Advance"
  loc_1A0D8E7: LateIdCallSt
  loc_1A0D8EF: var_94 = &H18
  loc_1A0D8FE: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D905: LateIdCallSt
  loc_1A0D90D: var_94 = &H18
  loc_1A0D91C: var_B4 = CVar(CInt(7)) 'Integer
  loc_1A0D923: LateIdCallSt
  loc_1A0D92B: var_94 = &H18
  loc_1A0D934: var_B4 = &H4B0
  loc_1A0D940: LateIdCallSt
  loc_1A0D948: var_94 = 0
  loc_1A0D951: var_B4 = &H19
  loc_1A0D95A: var_E4 = "Type"
  loc_1A0D963: LateIdCallSt
  loc_1A0D96B: var_94 = &H19
  loc_1A0D97A: var_B4 = CVar(CInt(1)) 'Integer
  loc_1A0D981: LateIdCallSt
  loc_1A0D989: var_94 = &H19
  loc_1A0D998: var_B4 = CVar(CInt(1)) 'Integer
  loc_1A0D99F: LateIdCallSt
  loc_1A0D9A7: var_94 = &H19
  loc_1A0D9B0: var_B4 = &H514
  loc_1A0D9BC: LateIdCallSt
  loc_1A0D9C4: var_94 = 0
  loc_1A0D9CD: var_B4 = &H1A
  loc_1A0D9D6: var_E4 = "Rect.No."
  loc_1A0D9DF: LateIdCallSt
  loc_1A0D9E7: var_94 = &H1A
  loc_1A0D9F6: var_B4 = CVar(CInt(1)) 'Integer
  loc_1A0D9FD: LateIdCallSt
  loc_1A0DA05: var_94 = &H1A
  loc_1A0DA14: var_B4 = CVar(CInt(1)) 'Integer
  loc_1A0DA1B: LateIdCallSt
  loc_1A0DA23: var_94 = &H1A
  loc_1A0DA2C: var_B4 = &H44C
  loc_1A0DA38: LateIdCallSt
  loc_1A0DA40: var_94 = 0
  loc_1A0DA49: var_B4 = &H1B
  loc_1A0DA52: var_E4 = "Rect.Date"
  loc_1A0DA5B: LateIdCallSt
  loc_1A0DA63: var_94 = &H1B
  loc_1A0DA72: var_B4 = CVar(CInt(1)) 'Integer
  loc_1A0DA79: LateIdCallSt
  loc_1A0DA81: var_94 = &H1B
  loc_1A0DA90: var_B4 = CVar(CInt(1)) 'Integer
  loc_1A0DA97: LateIdCallSt
  loc_1A0DA9F: var_94 = &H1B
  loc_1A0DAA8: var_B4 = &H4B0
  loc_1A0DAB4: LateIdCallSt
  loc_1A0DABC: var_94 = 0
  loc_1A0DAC5: var_B4 = &H1C
  loc_1A0DACE: var_E4 = "MARK"
  loc_1A0DAD7: LateIdCallSt
  loc_1A0DADF: var_94 = &H1C
  loc_1A0DAE8: var_B4 = 0
  loc_1A0DAF4: LateIdCallSt
  loc_1A0DAFE: Set var_324 = Nothing 
  loc_1A0DB16: If (var_110.RecordCount <= 0) Then
  loc_1A0DB1E:   global_152 = 0
  loc_1A0DB21:   Exit Sub
  loc_1A0DB22: End If
  loc_1A0DB26: Set var_2EC = Me.FGrid1
  loc_1A0DB56: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1A0DB59:   var_94 = vbNullString
  loc_1A0DB63:   Set var_2EC = Me.FGrid1
  loc_1A0DB74: End If
  loc_1A0DBAB: var_94 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1A0DBCB: Me.FGrid1.Row = CVar(CLng(IIf(var_94, FRow, 1)))
  loc_1A0DC19: var_94 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1A0DC39: Me.FGrid1.Col = CVar(CLng(IIf(var_94, Fcol, 1)))
  loc_1A0DC55: Set var_10C = Nothing
  loc_1A0DC5D: Set var_110 = Nothing
  loc_1A0DC62: IStAd
  loc_1A0DC66: Exit Sub
End Sub

Public Sub SalesRegHallItemWise(formName, FRow, Fcol) '1AB8DD4
  'Data Table: 577EF0
  Dim var_130 As String
  Dim var_1B0 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_230 As Variant
  Dim var_260 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_274 As Variant
  Dim unk_577EF3 As Connection15
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_90 As Recordset15
  Dim var_D4 As Double
  Dim var_E2 As Integer
  Dim var_284 As Recordset15
  Dim var_150 As Variant
  Dim var_288 As Fields15
  Dim var_D8 As Recordset15
  Dim var_240 As Variant
  Dim var_250 As Variant
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_29C As Recordset15
  Dim var_298 As Fields15
  Dim var_2A4 As Fields15
  Dim var_94 As Recordset15
  Dim var_2AC As Recordset15
  Dim var_2F0 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_2FC As MSHFlexGrid
  loc_1AB4FA5: var_1B0 = CVar("WHERE H.RestCode='" & global_208 & "' AND H.VDate Between ") 'String
  loc_1AB4FBD: VarLateMemCallLdRfVar
  loc_1AB4FC8: Proc_6_7_F26918(var_1A0, Me.FGrid, 1)
  loc_1AB4FF2: VarLateMemCallLdRfVar
  loc_1AB4FFD: Proc_6_7_F26918(var_250, Me.FGrid, 1)
  loc_1AB5005: var_260 = 1 & var_250 
  loc_1AB500A: var_98 = CStr(var_260)
  loc_1AB502D: Call 0.Method_arg_54 ("Sales Register Report", 0 & var_1A0 & " And ")
  loc_1AB5035: var_140 = 0
  loc_1AB5045: var_180 = Me.FGrid
  loc_1AB5072: var_1A0 = Me.FGrid
  loc_1AB508C: Set var_274 = 1(1 & CStr(var_1A0.TextMatrix))
  loc_1AB5092: var_1A0.TextBox.Text = 1 & CStr(var_180.TextMatrix) & " To : "
  loc_1AB50BA: If (MemVar_1F951A8 = "ODC") Then
  loc_1AB50CA:   Me.Text2.Text = "OutDoor Catering"
  loc_1AB50D5: Else
  loc_1AB50DC:   Set var_274 = Me.Text2
  loc_1AB50E2:   var_274.Text = "Indoor Catering"
  loc_1AB50EA: End If
  loc_1AB50F7: Call Proc_249_111_11B38B0(New, var_274, var_140)
  loc_1AB50FF: Set var_8C = var_274
  loc_1AB5116: var_130 = "SELECT H.DocId, H.VNo, H.Narration, H.VDate, H.Party, H.NoOFPax, H.RatePerPax, H.TOTAL AS TotalPerCover, H.DiscAmt, H.Taxable AS Taxable ,H.NonTaxable AS NonTaxable,H.Tax, H.RoundOff,H.ServiceCharge ,H.NetAmt as Amount,H.RestCode From HallSale1 H " & var_98
  loc_1AB5126: Me.Connection15.Execute var_130 & " Order By H.VNo, H.VDate", var_180, -1
  loc_1AB5131: Set var_90 = var_274
  loc_1AB5155: var_130 = "SELECT DISTINCT  SundryMast.Name, SundryMast.code FROM (SunTranH AS H INNER JOIN RevMast ON H.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code " & var_98
  loc_1AB5165: unk_577EF3.Execute var_130 & " AND H.DELFLAG<>'D' Order by SundryMast.Name", var_180, -1
  loc_1AB5170: Set var_D8 = var_274
  loc_1AB5183: var_A0 = CDbl(0)
  loc_1AB5189: var_A8 = CDbl(0)
  loc_1AB518F: var_B0 = CDbl(0)
  loc_1AB5195: var_B8 = CDbl(0)
  loc_1AB519B: var_C0 = CDbl(0)
  loc_1AB51A1: var_C8 = CDbl(0)
  loc_1AB51A7: var_EC = CDbl(0)
  loc_1AB51AD: var_F4 = CDbl(0)
  loc_1AB51B3: var_FC = CDbl(0)
  loc_1AB51B9: var_104 = CDbl(0)
  loc_1AB51BF: var_10C = CDbl(0)
  loc_1AB51C5: var_114 = CDbl(0)
  loc_1AB51CB: var_11C = CDbl(0)
  loc_1AB51D1: var_124 = CDbl(0)
  loc_1AB51D7: var_12C = CDbl(0)
  loc_1AB51DD: var_88 = vbNullString
  loc_1AB51F4: If (var_90.RecordCount > 0) Then
  loc_1AB51FA:   var_90.MoveFirst
  loc_1AB5205:   var_140 = "VDate"
  loc_1AB522B:   var_D4 = CDate(var_90.Fields.Item(var_140).Value)
  loc_1AB5238:   ' Referenced from: 1AB7B3E
  loc_1AB5247:   If Not(var_90.EOF) Then
  loc_1AB5250:     var_E2 = (var_E2 + 1)
  loc_1AB5256:     Set var_284 = var_8C 
  loc_1AB5265:     var_284.AddNew var_140, var_150
  loc_1AB528F:     var_284.Fields.Item("mLine").Value = "GF"
  loc_1AB52CA:     var_284.Fields.Item("SrNo").Value = CVar(CStr(var_E2) & ".")
  loc_1AB531F:     var_284.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1AB5373:     var_284.Fields.Item("Billdate").Value = CVar(var_90.Fields.Item("VNo"))
  loc_1AB53C7:     var_284.Fields.Item("Item").Value = CVar(var_90.Fields.Item("Party"))
  loc_1AB53FD:     var_284.Fields.Item("qty").Value = vbNullString
  loc_1AB542E:     var_284.Fields.Item("Rate").Value = vbNullString
  loc_1AB545F:     var_284.Fields.Item("nonTaxable").Value = vbNullString
  loc_1AB5490:     var_284.Fields.Item("Taxable").Value = vbNullString
  loc_1AB54B0:     If (var_D8.RecordCount > 0) Then
  loc_1AB54B6:       var_D8.MoveFirst
  loc_1AB54BB:       ' Referenced from: 1AB624E
  loc_1AB54BB:     End If
  loc_1AB54CC:     If (var_D8.EOF = 0) Then
  loc_1AB550B:       var_190 = "Select sum(Amount) as TaxAmt from SunTranH where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AB5579:       var_240 = var_190 & "') and Docid='" & var_90.Fields.Item("DocID").Value & "' And RestCode='" & var_90.Fields.Item("RestCode").Value 
  loc_1AB5590:       unk_577EF3.Execute CStr(var_240 & "'"), var_260, -1
  loc_1AB559B:       Set var_DC = var_298
  loc_1AB5605:       var_190 = "Select sum(Amount) as TaxAmt from SunTran where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AB5634:       var_1B0 = var_90.Fields.Item("DocID").Value
  loc_1AB5645:       var_1E0 = var_190 & "') and Docid='" & var_1B0 & "' And RestCode='" 
  loc_1AB568A:       unk_577EF3.Execute CStr(var_1E0 & var_90.Fields.Item("RestCode").Value & "'"), var_260, -1
  loc_1AB5695:       Set var_E0 = var_298
  loc_1AB56D7:       If (var_D8.AbsolutePosition = 1) Then
  loc_1AB572E:         var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5735:         Proc_6_47_EF6560(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_298, var_298, var_E2)
  loc_1AB575D:         var_284.Fields.Item("Tax1").Value = var_1B0
  loc_1AB57D7:         var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB57DE:         Proc_6_39_E7D3A0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_EC), var_D4)
  loc_1AB57E6:         var_1C0 = (var_12C + var_1B0)
  loc_1AB57EB:         var_EC = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB5809:       Else
  loc_1AB581D:         If (var_D8.AbsolutePosition = 2) Then
  loc_1AB5874:           var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB587B:           Proc_6_47_EF6560(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_EC)
  loc_1AB58A3:           var_284.Fields.Item("Tax2").Value = var_1B0
  loc_1AB591D:           var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5924:           Proc_6_39_E7D3A0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_F4))
  loc_1AB592C:           var_1C0 = (var_124 + var_1B0)
  loc_1AB5931:           var_F4 = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB594F:         Else
  loc_1AB5963:           If (var_D8.AbsolutePosition = 3) Then
  loc_1AB59BA:             var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB59C1:             Proc_6_47_EF6560(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_F4)
  loc_1AB59E9:             var_284.Fields.Item("Tax3").Value = var_1B0
  loc_1AB5A63:             var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5A6A:             Proc_6_39_E7D3A0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_FC))
  loc_1AB5A72:             var_1C0 = (var_11C + var_1B0)
  loc_1AB5A77:             var_FC = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB5A95:           Else
  loc_1AB5AA9:             If (var_D8.AbsolutePosition = 4) Then
  loc_1AB5B00:               var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5B07:               Proc_6_47_EF6560(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB5B2F:               var_284.Fields.Item("Tax4").Value = var_1B0
  loc_1AB5BA9:               var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5BB0:               Proc_6_39_E7D3A0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_104))
  loc_1AB5BB8:               var_1C0 = (var_FC + var_1B0)
  loc_1AB5BBD:               var_104 = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB5BDB:             Else
  loc_1AB5BEF:               If (var_D8.AbsolutePosition = 5) Then
  loc_1AB5C46:                 var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5C4D:                 Proc_6_47_EF6560(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB5C75:                 var_284.Fields.Item("Tax5").Value = var_1B0
  loc_1AB5CEF:                 var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5CF6:                 Proc_6_39_E7D3A0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_10C))
  loc_1AB5CFE:                 var_1C0 = (var_104 + var_1B0)
  loc_1AB5D03:                 var_10C = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB5D21:               Else
  loc_1AB5D35:                 If (var_D8.AbsolutePosition = 6) Then
  loc_1AB5D8C:                   var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5D93:                   Proc_6_47_EF6560(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB5DBB:                   var_284.Fields.Item("Tax6").Value = var_1B0
  loc_1AB5E35:                   var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5E3C:                   Proc_6_39_E7D3A0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_114))
  loc_1AB5E44:                   var_1C0 = (var_10C + var_1B0)
  loc_1AB5E49:                   var_114 = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB5E67:                 Else
  loc_1AB5E7B:                   If (var_D8.AbsolutePosition = 7) Then
  loc_1AB5ED2:                     var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5ED9:                     Proc_6_47_EF6560(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB5F01:                     var_284.Fields.Item("Tax7").Value = var_1B0
  loc_1AB5F7B:                     var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB5F82:                     Proc_6_39_E7D3A0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_11C))
  loc_1AB5F8A:                     var_1C0 = (var_114 + var_1B0)
  loc_1AB5F8F:                     var_11C = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB5FAD:                   Else
  loc_1AB5FC1:                     If (var_D8.AbsolutePosition = 8) Then
  loc_1AB6018:                       var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB601F:                       Proc_6_47_EF6560(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB6047:                       var_284.Fields.Item("Tax8").Value = var_1B0
  loc_1AB60C1:                       var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB60C8:                       Proc_6_39_E7D3A0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_124))
  loc_1AB60D0:                       var_1C0 = (var_11C + var_1B0)
  loc_1AB60D5:                       var_124 = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB60F3:                     Else
  loc_1AB6107:                       If (var_D8.AbsolutePosition = 9) Then
  loc_1AB615E:                         var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB6165:                         Proc_6_47_EF6560(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB618D:                         var_284.Fields.Item("Tax9").Value = var_1B0
  loc_1AB61D5:                         var_190 = var_DC.Fields.Item("TaxAmt").Value
  loc_1AB6207:                         var_1A0 = (var_190 + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB620E:                         Proc_6_39_E7D3A0(var_1B0, var_190 & "') and Docid='", CVar(var_12C))
  loc_1AB6216:                         var_1C0 = (var_124 + var_1B0)
  loc_1AB621B:                         var_12C = CSng(var_190 & "') and Docid='" & var_1B0)
  loc_1AB6236:                       End If
  loc_1AB6236:                     End If
  loc_1AB6236:                   End If
  loc_1AB6236:                 End If
  loc_1AB6236:               End If
  loc_1AB6236:             End If
  loc_1AB6236:           End If
  loc_1AB6236:         End If
  loc_1AB6236:       End If
  loc_1AB623B:       Set var_DC = Nothing
  loc_1AB6243:       Set var_E0 = Nothing
  loc_1AB6249:       var_D8.MoveNext
  loc_1AB624E:       GoTo loc_1AB54BB
  loc_1AB6251:     End If
  loc_1AB6277:     Proc_6_47_EF6560(var_190, CVar(var_90.Fields.Item("Servicecharge")))
  loc_1AB629F:     var_284.Fields.Item("SrvChrg").Value = var_190
  loc_1AB62DA:     Proc_6_47_EF6560(var_190, CVar(var_90.Fields.Item("DiscAmt")))
  loc_1AB6302:     var_284.Fields.Item("DiscAmt").Value = var_190
  loc_1AB633D:     Proc_6_47_EF6560(var_190, CVar(var_90.Fields.Item("RoundOff")))
  loc_1AB6365:     var_284.Fields.Item("RoundOff").Value = var_190
  loc_1AB63A0:     Proc_6_47_EF6560(var_190, CVar(var_90.Fields.Item("Amount")))
  loc_1AB63C8:     var_284.Fields.Item("Amount").Value = var_190
  loc_1AB63DD:     var_150 = vbNullString
  loc_1AB63E6:     var_140 = "Mark"
  loc_1AB6402:     var_284.Fields.Item(var_140).Value = var_150
  loc_1AB6419:     var_284.Update var_140, var_150
  loc_1AB6420:     Set var_284 = Nothing 
  loc_1AB6427:     Set var_29C = var_8C 
  loc_1AB6436:     var_29C.AddNew var_140, var_150
  loc_1AB6460:     var_29C.Fields.Item("mLine").Value = vbNullString
  loc_1AB6491:     var_29C.Fields.Item("SrNo").Value = vbNullString
  loc_1AB64E0:     var_29C.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1AB6554:     var_29C.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YYYY")
  loc_1AB65B8:     var_190 = var_90.Fields.Item("NoofPax").Value
  loc_1AB65E3:     Proc_6_48_EF4E00(var_1E0, CVar(var_90.Fields.Item("RatePerPax")))
  loc_1AB65F7:     var_298 = var_90.Fields
  loc_1AB6624:     var_1B0 = "PAXs " & var_190 & " @ " 
  loc_1AB662B:     var_230 = var_1B0 & var_1E0 
  loc_1AB6641:     var_260 = IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("Narration")), 1, 1) = vbNullString), var_230, CVar(Proc_6_38_E69628(CVar(var_298.Item("Narration")), var_12C)))
  loc_1AB6659:     var_2A4 = var_29C.Fields
  loc_1AB6669:     var_2A4.Item("Item").Value = var_260
  loc_1AB66E2:     var_29C.Fields.Item("qty").Value = CVar(var_90.Fields.Item("NoofPax"))
  loc_1AB6719:     Proc_6_47_EF6560(var_190, CVar(var_90.Fields.Item("RatePerPax")))
  loc_1AB6741:     var_29C.Fields.Item("Rate").Value = var_190
  loc_1AB677B:     var_29C.Fields.Item("nonTaxable").Value = vbNullString
  loc_1AB67AD:     Proc_6_39_E7D3A0(var_190, CVar(var_90.Fields.Item("NoofPax")))
  loc_1AB67DB:     Proc_6_39_E7D3A0(var_1B0, CVar(var_90.Fields.Item("RatePerPax")))
  loc_1AB67F1:     Proc_6_47_EF6560(var_230, (var_190 * var_1B0))
  loc_1AB6819:     var_29C.Fields.Item("Taxable").Value = var_230
  loc_1AB684C:     If (var_D8.RecordCount > 0) Then
  loc_1AB6852:       var_D8.MoveFirst
  loc_1AB6857:       ' Referenced from: 1AB6DD7
  loc_1AB6857:     End If
  loc_1AB6868:     If (var_D8.EOF = 0) Then
  loc_1AB68A7:       var_190 = "Select sum(Amount) as TaxAmt from SunTranH where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AB68D6:       var_1B0 = var_90.Fields.Item("DocID").Value
  loc_1AB692C:       unk_577EF3.Execute CStr(var_190 & "') and Docid='" & var_1B0 & "' And RestCode='" & var_90.Fields.Item("RestCode").Value & "'"), var_260, -1
  loc_1AB6937:       Set var_DC = var_298
  loc_1AB6979:       If (var_D8.AbsolutePosition = 1) Then
  loc_1AB69A2:         Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB69CA:         var_29C.Fields.Item("Tax1").Value = var_190
  loc_1AB69E2:       Else
  loc_1AB69F6:         If (var_D8.AbsolutePosition = 2) Then
  loc_1AB6A1F:           Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB6A47:           var_29C.Fields.Item("Tax2").Value = var_190
  loc_1AB6A5F:         Else
  loc_1AB6A73:           If (var_D8.AbsolutePosition = 3) Then
  loc_1AB6A9C:             Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB6AC4:             var_29C.Fields.Item("Tax3").Value = var_190
  loc_1AB6ADC:           Else
  loc_1AB6AF0:             If (var_D8.AbsolutePosition = 4) Then
  loc_1AB6B19:               Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB6B41:               var_29C.Fields.Item("Tax4").Value = var_190
  loc_1AB6B59:             Else
  loc_1AB6B6D:               If (var_D8.AbsolutePosition = 5) Then
  loc_1AB6B96:                 Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB6BBE:                 var_29C.Fields.Item("Tax5").Value = var_190
  loc_1AB6BD6:               Else
  loc_1AB6BEA:                 If (var_D8.AbsolutePosition = 6) Then
  loc_1AB6C13:                   Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB6C3B:                   var_29C.Fields.Item("Tax6").Value = var_190
  loc_1AB6C53:                 Else
  loc_1AB6C67:                   If (var_D8.AbsolutePosition = 7) Then
  loc_1AB6C90:                     Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB6CB8:                     var_29C.Fields.Item("Tax7").Value = var_190
  loc_1AB6CD0:                   Else
  loc_1AB6CE4:                     If (var_D8.AbsolutePosition = 8) Then
  loc_1AB6D0D:                       Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB6D35:                       var_29C.Fields.Item("Tax8").Value = var_190
  loc_1AB6D4D:                     Else
  loc_1AB6D61:                       If (var_D8.AbsolutePosition = 9) Then
  loc_1AB6D8A:                         Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB6DA2:                         var_288 = var_29C.Fields
  loc_1AB6DB2:                         var_288.Item("Tax9").Value = var_190
  loc_1AB6DC7:                       End If
  loc_1AB6DC7:                     End If
  loc_1AB6DC7:                   End If
  loc_1AB6DC7:                 End If
  loc_1AB6DC7:               End If
  loc_1AB6DC7:             End If
  loc_1AB6DC7:           End If
  loc_1AB6DC7:         End If
  loc_1AB6DC7:       End If
  loc_1AB6DCC:       Set var_DC = Nothing
  loc_1AB6DD2:       var_D8.MoveNext
  loc_1AB6DD7:       GoTo loc_1AB6857
  loc_1AB6DDA:     End If
  loc_1AB6DFF:     var_29C.Fields.Item("SrvChrg").Value = vbNullString
  loc_1AB6E30:     var_29C.Fields.Item("DiscAmt").Value = vbNullString
  loc_1AB6E61:     var_29C.Fields.Item("RoundOff").Value = vbNullString
  loc_1AB6E92:     var_29C.Fields.Item("Amount").Value = vbNullString
  loc_1AB6E9E:     var_150 = "*"
  loc_1AB6EA7:     var_140 = "Mark"
  loc_1AB6EC3:     var_29C.Fields.Item(var_140).Value = var_150
  loc_1AB6EDA:     var_29C.Update var_140, var_150
  loc_1AB6EE1:     Set var_29C = Nothing 
  loc_1AB6EF2:     var_150 = "SELECT HStk.DocId,HStk.Sno, HStk.VNo, HStk.VDate, HStk.Item, I.Name, HStk.QtyIss, HStk.Rate, NonTaxable=Case when HStk.TaxAmt=0 then HStk.Amount else '' end, Taxable= case when HStk.TaxAmt>0 then HStk.Amount else '' end, HStk.RestCode From HallStock HStk left join Itemmast I on HStk.Item=I.Code where HStk.DocId='"
  loc_1AB6EFD:     var_140 = "DocID"
  loc_1AB6F38:     unk_577EF3.Execute CStr(var_150 & var_90.Fields.Item(var_140).Value & "' Order By I.Name"), var_1B0, -1
  loc_1AB6F43:     Set var_94 = var_288
  loc_1AB6F5D:     ' Referenced from: 1AB797D
  loc_1AB6F6C:     If Not(var_94.EOF) Then
  loc_1AB6F72:       Set var_2AC = var_8C 
  loc_1AB6F81:       var_2AC.AddNew var_140, var_150
  loc_1AB6FAB:       var_2AC.Fields.Item("mLine").Value = vbNullString
  loc_1AB6FDC:       var_2AC.Fields.Item("SrNo").Value = vbNullString
  loc_1AB702B:       var_2AC.Fields.Item("DocID").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1AB7067:       var_190 = "DD/MM/YYYY"
  loc_1AB709F:       var_2AC.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("VDate")), var_190)
  loc_1AB70F9:       var_2AC.Fields.Item("Item").Value = CVar(var_94.Fields.Item("Name"))
  loc_1AB714D:       var_2AC.Fields.Item("qty").Value = CVar(var_94.Fields.Item("QtyIss"))
  loc_1AB7184:       Proc_6_47_EF6560(var_190, CVar(var_94.Fields.Item("Rate")), 1, 1)
  loc_1AB719C:       var_288 = var_2AC.Fields
  loc_1AB71AC:       var_288.Item("Rate").Value = var_190
  loc_1AB71E7:       Proc_6_47_EF6560(var_190, CVar(var_94.Fields.Item("nonTaxable")), var_288)
  loc_1AB720F:       var_2AC.Fields.Item("nonTaxable").Value = var_190
  loc_1AB724A:       Proc_6_47_EF6560(var_190, CVar(var_94.Fields.Item("Taxable")))
  loc_1AB7272:       var_2AC.Fields.Item("Taxable").Value = var_190
  loc_1AB729B:       If (var_D8.RecordCount > 0) Then
  loc_1AB72A1:         var_D8.MoveFirst
  loc_1AB72A6:         ' Referenced from: 1AB7867
  loc_1AB72A6:       End If
  loc_1AB72B7:       If (var_D8.EOF = 0) Then
  loc_1AB72F6:         var_190 = "Select sum(TaxAmt) as TaxAmt from HallSale2 where TaxCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AB736D:         var_250 = var_190 & "') and Docid='" & var_94.Fields.Item("DocID").Value & "' And Sno=" & var_94.Fields.Item("SNo").Value & " And RestCode='" 
  loc_1AB7383:         var_298 = var_94.Fields
  loc_1AB73B2:         unk_577EF3.Execute CStr(var_250 & var_298.Item("RestCode").Value & "'"), var_2EC, -1
  loc_1AB73BD:         Set var_DC = var_2A4
  loc_1AB7409:         If (var_D8.AbsolutePosition = 1) Then
  loc_1AB7432:           Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")), var_2A4)
  loc_1AB745A:           var_2AC.Fields.Item("Tax1").Value = var_190
  loc_1AB7472:         Else
  loc_1AB7486:           If (var_D8.AbsolutePosition = 2) Then
  loc_1AB74AF:             Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB74D7:             var_2AC.Fields.Item("Tax2").Value = var_190
  loc_1AB74EF:           Else
  loc_1AB7503:             If (var_D8.AbsolutePosition = 3) Then
  loc_1AB752C:               Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB7554:               var_2AC.Fields.Item("Tax3").Value = var_190
  loc_1AB756C:             Else
  loc_1AB7580:               If (var_D8.AbsolutePosition = 4) Then
  loc_1AB75A9:                 Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB75D1:                 var_2AC.Fields.Item("Tax4").Value = var_190
  loc_1AB75E9:               Else
  loc_1AB75FD:                 If (var_D8.AbsolutePosition = 5) Then
  loc_1AB7626:                   Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB764E:                   var_2AC.Fields.Item("Tax5").Value = var_190
  loc_1AB7666:                 Else
  loc_1AB767A:                   If (var_D8.AbsolutePosition = 6) Then
  loc_1AB76A3:                     Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB76CB:                     var_2AC.Fields.Item("Tax6").Value = var_190
  loc_1AB76E3:                   Else
  loc_1AB76F7:                     If (var_D8.AbsolutePosition = 7) Then
  loc_1AB7720:                       Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB7748:                       var_2AC.Fields.Item("Tax7").Value = var_190
  loc_1AB7760:                     Else
  loc_1AB7774:                       If (var_D8.AbsolutePosition = 8) Then
  loc_1AB779D:                         Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB77C5:                         var_2AC.Fields.Item("Tax8").Value = var_190
  loc_1AB77DD:                       Else
  loc_1AB77F1:                         If (var_D8.AbsolutePosition = 9) Then
  loc_1AB781A:                           Proc_6_47_EF6560(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB7842:                           var_2AC.Fields.Item("Tax9").Value = var_190
  loc_1AB7857:                         End If
  loc_1AB7857:                       End If
  loc_1AB7857:                     End If
  loc_1AB7857:                   End If
  loc_1AB7857:                 End If
  loc_1AB7857:               End If
  loc_1AB7857:             End If
  loc_1AB7857:           End If
  loc_1AB7857:         End If
  loc_1AB785C:         Set var_DC = Nothing
  loc_1AB7862:         var_D8.MoveNext
  loc_1AB7867:         GoTo loc_1AB72A6
  loc_1AB786A:       End If
  loc_1AB788F:       var_2AC.Fields.Item("SrvChrg").Value = vbNullString
  loc_1AB78C0:       var_2AC.Fields.Item("DiscAmt").Value = vbNullString
  loc_1AB78F1:       var_2AC.Fields.Item("RoundOff").Value = vbNullString
  loc_1AB7922:       var_2AC.Fields.Item("Amount").Value = vbNullString
  loc_1AB792E:       var_150 = "*"
  loc_1AB7937:       var_140 = "Mark"
  loc_1AB7953:       var_2AC.Fields.Item(var_140).Value = var_150
  loc_1AB796A:       var_2AC.Update var_140, var_150
  loc_1AB7971:       Set var_2AC = Nothing 
  loc_1AB7978:       var_94.MoveNext
  loc_1AB797D:       GoTo loc_1AB6F5D
  loc_1AB7980:     End If
  loc_1AB79AD:     Proc_6_39_E7D3A0(var_190, CVar(var_90.Fields.Item("nonTaxable")), CVar(var_A8))
  loc_1AB79B5:     var_1A0 = (var_298 + var_190)
  loc_1AB79BA:     var_A8 = CSng(var_190 & "') and Docid='")
  loc_1AB79F6:     Proc_6_39_E7D3A0(var_190, CVar(var_90.Fields.Item("Taxable")), CVar(var_A0))
  loc_1AB79FE:     var_1A0 = (var_A8 + var_190)
  loc_1AB7A03:     var_A0 = CSng(var_190 & "') and Docid='")
  loc_1AB7A3F:     Proc_6_39_E7D3A0(var_190, CVar(var_90.Fields.Item("DiscAmt")), CVar(var_C0))
  loc_1AB7A47:     var_1A0 = (var_A0 + var_190)
  loc_1AB7A4C:     var_C0 = CSng(var_190 & "') and Docid='")
  loc_1AB7A88:     Proc_6_39_E7D3A0(var_190, CVar(var_90.Fields.Item("RoundOff")), CVar(var_B8))
  loc_1AB7A90:     var_1A0 = (var_C0 + var_190)
  loc_1AB7A95:     var_B8 = CSng(var_190 & "') and Docid='")
  loc_1AB7AD1:     Proc_6_39_E7D3A0(var_190, CVar(var_90.Fields.Item("Servicecharge")), CVar(var_C8))
  loc_1AB7AD9:     var_1A0 = (var_B8 + var_190)
  loc_1AB7ADE:     var_C8 = CSng(var_190 & "') and Docid='")
  loc_1AB7AF0:     var_150 = CVar(var_B0) 'Double
  loc_1AB7AF7:     var_140 = "Amount"
  loc_1AB7B13:     var_180 = CVar(var_90.Fields.Item(var_140)) 'Address
  loc_1AB7B1A:     Proc_6_39_E7D3A0(var_190, var_180, var_150)
  loc_1AB7B22:     var_1A0 = (var_C8 + var_190)
  loc_1AB7B27:     var_B0 = CSng(var_190 & "') and Docid='")
  loc_1AB7B39:     var_90.MoveNext
  loc_1AB7B3E:     GoTo loc_1AB5238
  loc_1AB7B41:   End If
  loc_1AB7B41: End If
  loc_1AB7B44: Set var_2F0 = var_8C 
  loc_1AB7B53: var_2F0.AddNew var_140, var_150
  loc_1AB7B7D: var_2F0.Fields.Item("mLine").Value = "GF"
  loc_1AB7B89: var_150 = "Total-->"
  loc_1AB7BAE: var_2F0.Fields.Item("Item").Value = "GF"
  loc_1AB7BC5: Proc_6_47_EF6560(var_180, var_A8)
  loc_1AB7BED: var_2F0.Fields.Item("nonTaxable").Value = var_180
  loc_1AB7C07: Proc_6_47_EF6560(var_180, var_A0)
  loc_1AB7C2F: var_2F0.Fields.Item("Taxable").Value = var_180
  loc_1AB7C49: Proc_6_47_EF6560(var_180, var_EC)
  loc_1AB7C71: var_2F0.Fields.Item("Tax1").Value = var_180
  loc_1AB7C8B: Proc_6_47_EF6560(var_180, var_F4)
  loc_1AB7CB3: var_2F0.Fields.Item("Tax2").Value = var_180
  loc_1AB7CCD: Proc_6_47_EF6560(var_180, var_FC)
  loc_1AB7CF5: var_2F0.Fields.Item("Tax3").Value = var_180
  loc_1AB7D0F: Proc_6_47_EF6560(var_180, var_104)
  loc_1AB7D37: var_2F0.Fields.Item("Tax4").Value = var_180
  loc_1AB7D51: Proc_6_47_EF6560(var_180, var_10C)
  loc_1AB7D79: var_2F0.Fields.Item("Tax5").Value = var_180
  loc_1AB7D93: Proc_6_47_EF6560(var_180, var_114)
  loc_1AB7DBB: var_2F0.Fields.Item("Tax6").Value = var_180
  loc_1AB7DD5: Proc_6_47_EF6560(var_180, var_11C)
  loc_1AB7DFD: var_2F0.Fields.Item("Tax7").Value = var_180
  loc_1AB7E17: Proc_6_47_EF6560(var_180, var_124)
  loc_1AB7E3F: var_2F0.Fields.Item("Tax8").Value = var_180
  loc_1AB7E59: Proc_6_47_EF6560(var_180, var_12C)
  loc_1AB7E81: var_2F0.Fields.Item("Tax9").Value = var_180
  loc_1AB7E9B: Proc_6_47_EF6560(var_180, var_C8)
  loc_1AB7EC3: var_2F0.Fields.Item("SrvChrg").Value = var_180
  loc_1AB7EDD: Proc_6_47_EF6560(var_180, var_C0)
  loc_1AB7F05: var_2F0.Fields.Item("DiscAmt").Value = var_180
  loc_1AB7F1F: Proc_6_47_EF6560(var_180, var_B8)
  loc_1AB7F47: var_2F0.Fields.Item("RoundOff").Value = var_180
  loc_1AB7F61: Proc_6_47_EF6560(var_180, var_B0)
  loc_1AB7F89: var_2F0.Fields.Item("Amount").Value = var_180
  loc_1AB7F98: var_150 = vbNullString
  loc_1AB7FA1: var_140 = "Mark"
  loc_1AB7FBD: var_2F0.Fields.Item(var_140).Value = var_150
  loc_1AB7FD4: var_2F0.Update var_140, var_150
  loc_1AB7FDB: Set var_2F0 = Nothing 
  loc_1AB7FE9: arg_2C = Me.FGrid1.Text
  loc_1AB8007: Me.FGrid1.Rows = 2
  loc_1AB8023: If (var_8C.RecordCount > 0) Then
  loc_1AB802C:   CVarUnk
  loc_1AB8031:   VerifyVarObj
  loc_1AB8037:   Set var_274 = Me.FGrid1
  loc_1AB803D:   LateIdStAd
  loc_1AB806D:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_1AB8078: End If
  loc_1AB807C: Set var_2FC = Me.FGrid1
  loc_1AB8088: var_2FC.Tag = "SalesRegisterItemWise"
  loc_1AB8099: var_2FC.Cols = &H17
  loc_1AB809E: var_140 = 0
  loc_1AB80A7: var_160 = 0
  loc_1AB80B0: var_1D0 = "mLine"
  loc_1AB80B9: LateIdCallSt
  loc_1AB80C1: var_140 = 0
  loc_1AB80CA: var_160 = 0
  loc_1AB80D6: LateIdCallSt
  loc_1AB80DE: var_140 = 0
  loc_1AB80E7: var_160 = 1
  loc_1AB80F0: var_1D0 = "SNo."
  loc_1AB80F9: LateIdCallSt
  loc_1AB8101: var_140 = 1
  loc_1AB810A: var_160 = &H1F4
  loc_1AB8116: LateIdCallSt
  loc_1AB811E: var_140 = 0
  loc_1AB8127: var_160 = 2
  loc_1AB8130: var_1D0 = "Doc Id"
  loc_1AB8139: LateIdCallSt
  loc_1AB8141: var_140 = 2
  loc_1AB814A: var_160 = 0
  loc_1AB8156: LateIdCallSt
  loc_1AB815E: var_140 = 0
  loc_1AB8167: var_160 = 3
  loc_1AB8170: var_1D0 = "Bill Date"
  loc_1AB8179: LateIdCallSt
  loc_1AB8181: var_140 = 3
  loc_1AB818A: var_160 = &H4B0
  loc_1AB8196: LateIdCallSt
  loc_1AB819E: var_140 = 0
  loc_1AB81A7: var_160 = 4
  loc_1AB81B0: var_1D0 = "Item Name"
  loc_1AB81B9: LateIdCallSt
  loc_1AB81C1: var_140 = 4
  loc_1AB81CA: var_160 = &HC80
  loc_1AB81D6: LateIdCallSt
  loc_1AB81DE: var_140 = 0
  loc_1AB81E7: var_160 = 5
  loc_1AB81F0: var_1D0 = "Qty"
  loc_1AB81F9: LateIdCallSt
  loc_1AB8201: var_140 = 5
  loc_1AB8210: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8217: LateIdCallSt
  loc_1AB821F: var_140 = 5
  loc_1AB822E: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8235: LateIdCallSt
  loc_1AB823D: var_140 = 5
  loc_1AB8246: var_160 = &H320
  loc_1AB8252: LateIdCallSt
  loc_1AB825A: var_140 = 0
  loc_1AB8263: var_160 = 6
  loc_1AB826C: var_1D0 = "Rate"
  loc_1AB8275: LateIdCallSt
  loc_1AB827D: var_140 = 6
  loc_1AB828C: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8293: LateIdCallSt
  loc_1AB829B: var_140 = 6
  loc_1AB82AA: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB82B1: LateIdCallSt
  loc_1AB82B9: var_140 = 6
  loc_1AB82C2: var_160 = &H4B0
  loc_1AB82CE: LateIdCallSt
  loc_1AB82D6: var_140 = 0
  loc_1AB82DF: var_160 = 7
  loc_1AB82E8: var_1D0 = "Non-Taxable"
  loc_1AB82F1: LateIdCallSt
  loc_1AB82F9: var_140 = 7
  loc_1AB8308: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB830F: LateIdCallSt
  loc_1AB8317: var_140 = 7
  loc_1AB8326: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB832D: LateIdCallSt
  loc_1AB8335: var_140 = 7
  loc_1AB833E: var_160 = &H640
  loc_1AB834A: LateIdCallSt
  loc_1AB8352: var_140 = 0
  loc_1AB835B: var_160 = 8
  loc_1AB8364: var_1D0 = "Taxable"
  loc_1AB836D: LateIdCallSt
  loc_1AB8375: var_140 = 8
  loc_1AB8384: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB838B: LateIdCallSt
  loc_1AB8393: var_140 = 8
  loc_1AB83A2: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB83A9: LateIdCallSt
  loc_1AB83B1: var_140 = 8
  loc_1AB83BA: var_160 = &H640
  loc_1AB83C6: LateIdCallSt
  loc_1AB83D5: For var_302 = 9 To &H11: var_2FE = var_302 'Integer
  loc_1AB83DB:   var_140 = 0
  loc_1AB83E8:   var_160 = CVar(CLng(var_2FE)) 'Long
  loc_1AB83ED:   var_1D0 = vbNullString
  loc_1AB83F6:   LateIdCallSt
  loc_1AB8402:   var_140 = CVar(CLng(var_2FE)) 'Long
  loc_1AB8407:   var_160 = 0
  loc_1AB8413:   LateIdCallSt
  loc_1AB841F:   var_140 = CVar(CLng(var_2FE)) 'Long
  loc_1AB842A:   var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8431:   LateIdCallSt
  loc_1AB843D:   var_140 = CVar(CLng(var_2FE)) 'Long
  loc_1AB8448:   var_160 = CVar(CInt(7)) 'Integer
  loc_1AB844F:   LateIdCallSt
  loc_1AB845A: Next var_302 'Integer
  loc_1AB8473: If (var_D8.RecordCount > 0) Then
  loc_1AB8479:   var_D8.MoveFirst
  loc_1AB847E:   ' Referenced from: 1AB8A1C
  loc_1AB847E: End If
  loc_1AB848F: If (var_D8.EOF = 0) Then
  loc_1AB84A6:   If (var_D8.AbsolutePosition = 1) Then
  loc_1AB84A9:     var_150 = 0
  loc_1AB84F2:     var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item("Name")), 9))))) 'String
  loc_1AB84F9:     LateIdCallSt
  loc_1AB850F:     var_140 = 9
  loc_1AB8518:     var_160 = &H6A4
  loc_1AB8524:     LateIdCallSt
  loc_1AB852F:   Else
  loc_1AB8543:     If (var_D8.AbsolutePosition = 2) Then
  loc_1AB858F:       var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item("Name")), &HA, 0, var_2FC, var_160))))) 'String
  loc_1AB8596:       LateIdCallSt
  loc_1AB85AC:       var_140 = &HA
  loc_1AB85B5:       var_160 = &H6A4
  loc_1AB85C1:       LateIdCallSt
  loc_1AB85CC:     Else
  loc_1AB85E0:       If (var_D8.AbsolutePosition = 3) Then
  loc_1AB85F8:         var_140 = "Name"
  loc_1AB862C:         var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item(var_140)), &HB, 0, var_2FC, var_160, var_140))))) 'String
  loc_1AB8633:         LateIdCallSt
  loc_1AB8649:         var_140 = &HB
  loc_1AB8652:         var_160 = &H6A4
  loc_1AB865E:         LateIdCallSt
  loc_1AB8669:       Else
  loc_1AB867D:         If (var_D8.AbsolutePosition = 4) Then
  loc_1AB8695:           var_140 = "Name"
  loc_1AB86C9:           var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item(var_140)), &HC, 0, var_2FC, var_160, var_140, var_2FC))))) 'String
  loc_1AB86D0:           LateIdCallSt
  loc_1AB86E6:           var_140 = &HC
  loc_1AB86EF:           var_160 = &H6A4
  loc_1AB86FB:           LateIdCallSt
  loc_1AB8706:         Else
  loc_1AB871A:           If (var_D8.AbsolutePosition = 5) Then
  loc_1AB8732:             var_140 = "Name"
  loc_1AB8766:             var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item(var_140)), &HD, 0, var_2FC, var_160, var_140, var_2FC))))) 'String
  loc_1AB876D:             LateIdCallSt
  loc_1AB8783:             var_140 = &HD
  loc_1AB878C:             var_160 = &H6A4
  loc_1AB8798:             LateIdCallSt
  loc_1AB87A3:           Else
  loc_1AB87B7:             If (var_D8.AbsolutePosition = 6) Then
  loc_1AB87CF:               var_140 = "Name"
  loc_1AB8803:               var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item(var_140)), &HE, 0, var_2FC, var_160, var_140, var_2FC))))) 'String
  loc_1AB880A:               LateIdCallSt
  loc_1AB8820:               var_140 = &HE
  loc_1AB8829:               var_160 = &H6A4
  loc_1AB8835:               LateIdCallSt
  loc_1AB8840:             Else
  loc_1AB8854:               If (var_D8.AbsolutePosition = 7) Then
  loc_1AB886C:                 var_140 = "Name"
  loc_1AB8891:                 var_190 = CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item(var_140)), &HF, 0, var_2FC, var_160, var_140, var_2FC)) 'String
  loc_1AB88A0:                 var_1B0 = CVar(CStr(Trim(var_190))) 'String
  loc_1AB88A7:                 LateIdCallSt
  loc_1AB88BD:                 var_140 = &HF
  loc_1AB88C6:                 var_160 = &H6A4
  loc_1AB88D2:                 LateIdCallSt
  loc_1AB88DD:               Else
  loc_1AB88F1:                 If (var_D8.AbsolutePosition = 8) Then
  loc_1AB8909:                   var_140 = "Name"
  loc_1AB892E:                   var_190 = CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item(var_140)), &H10, 0, var_2FC, var_160, var_140, var_2FC)) 'String
  loc_1AB893D:                   var_1B0 = CVar(CStr(Trim(var_190))) 'String
  loc_1AB8944:                   LateIdCallSt
  loc_1AB895A:                   var_140 = &H10
  loc_1AB8963:                   var_160 = &H6A4
  loc_1AB896F:                   LateIdCallSt
  loc_1AB897A:                 Else
  loc_1AB898E:                   If (var_D8.AbsolutePosition = 9) Then
  loc_1AB89A6:                     var_140 = "Name"
  loc_1AB89CB:                     var_190 = CVar(Proc_6_38_E69628(CVar(var_D8.Fields.Item(var_140)), &H11, 0, var_2FC, var_160, var_140, var_2FC)) 'String
  loc_1AB89DA:                     var_1B0 = CVar(CStr(Trim(var_190))) 'String
  loc_1AB89E1:                     LateIdCallSt
  loc_1AB89F7:                     var_140 = &H11
  loc_1AB8A00:                     var_160 = &H6A4
  loc_1AB8A0C:                     LateIdCallSt
  loc_1AB8A14:                   End If
  loc_1AB8A14:                 End If
  loc_1AB8A14:               End If
  loc_1AB8A14:             End If
  loc_1AB8A14:           End If
  loc_1AB8A14:         End If
  loc_1AB8A14:       End If
  loc_1AB8A14:     End If
  loc_1AB8A14:   End If
  loc_1AB8A17:   var_D8.MoveNext
  loc_1AB8A1C:   GoTo loc_1AB847E
  loc_1AB8A1F: End If
  loc_1AB8A1F: var_140 = 0
  loc_1AB8A28: var_160 = &H12
  loc_1AB8A31: var_1D0 = "SRV. Charge"
  loc_1AB8A3A: LateIdCallSt
  loc_1AB8A42: var_140 = &H12
  loc_1AB8A51: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8A58: LateIdCallSt
  loc_1AB8A60: var_140 = &H12
  loc_1AB8A6F: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8A76: LateIdCallSt
  loc_1AB8A7E: var_140 = &H12
  loc_1AB8A87: var_160 = &H6A4
  loc_1AB8A93: LateIdCallSt
  loc_1AB8A9B: var_140 = 0
  loc_1AB8AA4: var_160 = &H13
  loc_1AB8AAD: var_1D0 = "Discount"
  loc_1AB8AB6: LateIdCallSt
  loc_1AB8ABE: var_140 = &H13
  loc_1AB8ACD: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8AD4: LateIdCallSt
  loc_1AB8ADC: var_140 = &H13
  loc_1AB8AEB: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8AF2: LateIdCallSt
  loc_1AB8AFA: var_140 = &H13
  loc_1AB8B03: var_160 = &H578
  loc_1AB8B0F: LateIdCallSt
  loc_1AB8B17: var_140 = 0
  loc_1AB8B20: var_160 = &H14
  loc_1AB8B29: var_1D0 = "ROff."
  loc_1AB8B32: LateIdCallSt
  loc_1AB8B3A: var_140 = &H14
  loc_1AB8B49: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8B50: LateIdCallSt
  loc_1AB8B58: var_140 = &H14
  loc_1AB8B67: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8B6E: LateIdCallSt
  loc_1AB8B76: var_140 = &H14
  loc_1AB8B7F: var_160 = &H320
  loc_1AB8B8B: LateIdCallSt
  loc_1AB8B93: var_140 = 0
  loc_1AB8B9C: var_160 = &H15
  loc_1AB8BA5: var_1D0 = "Net Amount"
  loc_1AB8BAE: LateIdCallSt
  loc_1AB8BB6: var_140 = &H15
  loc_1AB8BC5: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8BCC: LateIdCallSt
  loc_1AB8BD4: var_140 = &H15
  loc_1AB8BE3: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB8BEA: LateIdCallSt
  loc_1AB8BF2: var_140 = &H15
  loc_1AB8BFB: var_160 = &H640
  loc_1AB8C07: LateIdCallSt
  loc_1AB8C0F: var_140 = 0
  loc_1AB8C18: var_160 = &H16
  loc_1AB8C21: var_1D0 = "MARK"
  loc_1AB8C2A: LateIdCallSt
  loc_1AB8C32: var_140 = &H16
  loc_1AB8C3B: var_160 = 0
  loc_1AB8C47: LateIdCallSt
  loc_1AB8C51: Set var_2FC = Nothing 
  loc_1AB8C69: If (var_90.RecordCount <= 0) Then
  loc_1AB8C71:   global_152 = 0
  loc_1AB8C74:   Exit Sub
  loc_1AB8C75: End If
  loc_1AB8C79: Set var_274 = Me.FGrid1
  loc_1AB8CA9: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1AB8CAC:   var_140 = vbNullString
  loc_1AB8CB6:   Set var_274 = Me.FGrid1
  loc_1AB8CC7: End If
  loc_1AB8CFE: var_140 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1AB8D1E: Me.FGrid1.Row = CVar(CLng(IIf(var_140, FRow, 1)))
  loc_1AB8D6C: var_140 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1AB8D8C: Me.FGrid1.Col = CVar(CLng(IIf(var_140, Fcol, 1)))
  loc_1AB8DA8: Set var_8C = Nothing
  loc_1AB8DB0: Set var_90 = Nothing
  loc_1AB8DB8: Set var_DC = Nothing
  loc_1AB8DC0: Set var_E0 = Nothing
  loc_1AB8DC8: Set var_D8 = Nothing
  loc_1AB8DCD: IStAd
  loc_1AB8DD1: Exit Sub
End Sub

Public Sub OutStanding(formName, FRow, Fcol) '163D42C
  'Data Table: 577EF0
  Dim var_120 As String
  Dim var_1A0 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_220 As Variant
  Dim var_180 As Variant
  Dim var_254 As String
  Dim var_258 As String
  Dim var_190 As Variant
  Dim var_268 As String
  Dim var_270 As String
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_94 As Recordset15
  Dim var_11A As Integer
  Dim var_27C As Recordset15
  Dim var_140 As Variant
  Dim var_264 As Variant
  Dim var_284 As Fields15
  Dim unk_577EF3 As Connection15
  Dim var_118 As Recordset15
  Dim var_90 As Recordset15
  Dim var_29C As Recordset15
  Dim var_2A8 As MSHFlexGrid
  loc_163BEC1: var_1A0 = CVar(" H.RestCode='" & global_208 & "' AND H.VDate Between ") 'String
  loc_163BED9: VarLateMemCallLdRfVar
  loc_163BEE4: Proc_6_7_F26918(var_190, Me.FGrid, 1)
  loc_163BF0E: VarLateMemCallLdRfVar
  loc_163BF19: Proc_6_7_F26918(var_240, Me.FGrid, 1)
  loc_163BF49: Call 0.Method_arg_54 ("OutStanding Report", 0 & var_190 & " And ")
  loc_163BF51: var_130 = 0
  loc_163BF61: var_170 = Me.FGrid
  loc_163BF8E: var_190 = Me.FGrid
  loc_163BFA8: Set var_264 = 1(1 & CStr(var_190.TextMatrix))
  loc_163BFAE: var_190.TextBox.Text = 1 & CStr(var_170.TextMatrix) & " To : "
  loc_163BFDB: Call Proc_249_112_1094500(New, var_264, var_130)
  loc_163BFE3: Set var_90 = var_264
  loc_163BFFA: var_120 = "SELECT DISTINCT H.DocID, H.VDate AS BookDate, V.FromDate AS FuncStartDate, V.ToDate AS FuncEndDate, V.FromTime AS FuncStartTime, V.ToTime AS FuncEndTime, H.VTime AS FuncTime, F.Name AS FuncName, H.Party AS PartyName, S.VNo AS BillNo, SH.VDate AS BillDate,(SH.Amount+S.Amount) AS Amount,  H.BookDocID " & "FROM (((((HallSale1 AS H LEFT JOIN PayChargeH AS P ON H.DocId = P.DocId) LEFT JOIN SunTran AS S ON H.DocId = S.DocId) LEFT JOIN SunTranH AS SH ON H.DocId = SH.DocId) LEFT JOIN HallBook AS HB ON H.BookDocID=HB.DocID) LEFT JOIN FunctionType AS F ON HB.Func_Name=F.Code) LEFT JOIN VenueOCC V ON HB.DocId=V.FPDocId "
  loc_163C01D: var_268 = CStr(var_170.TextMatrix) & "WHERE S.SunCode='" & MemVar_1F95078 & "NET' AND (SH.SunCode='" & MemVar_1F95078 & "NET' OR S.SunCode Is Null OR SH.SunCode Is Null) AND "
  loc_163C02B: var_270 = var_268 & CStr(1 & var_240) & " AND (SH.Amount+S.Amount)-(IsNull(P.AmtCr,0)+IsNull(H.Advance,0))>0"
  loc_163C034: Me.Connection15.Execute var_270, var_170, -1
  loc_163C03F: Set var_94 = var_264
  loc_163C05E: var_A0 = CDbl(0)
  loc_163C064: var_A8 = CDbl(0)
  loc_163C06A: var_B0 = CDbl(0)
  loc_163C070: var_B8 = CDbl(0)
  loc_163C076: var_88 = vbNullString
  loc_163C08D: If (var_94.RecordCount > 0) Then
  loc_163C093:   var_94.MoveFirst
  loc_163C098:   ' Referenced from: 163CAA6
  loc_163C0A7:   If Not(var_94.EOF) Then
  loc_163C0B0:     var_11A = (var_11A + 1)
  loc_163C0B6:     Set var_27C = var_90 
  loc_163C0C5:     var_27C.AddNew var_130, var_140
  loc_163C0EF:     var_27C.Fields.Item("mLine").Value = vbNullString
  loc_163C12A:     var_27C.Fields.Item("SrNo").Value = CVar(CStr(var_11A) & ".")
  loc_163C17F:     var_27C.Fields.Item("DocID").Value = CVar(var_94.Fields.Item("DocID"))
  loc_163C1F4:     var_1A0 = Format(CVar(var_94.Fields.Item("FuncStartDate")), "DD/MM/YY") & " To " 
  loc_163C207:     var_1D0 = "DD/MM/YY"
  loc_163C243:     var_27C.Fields.Item("FuncDate").Value = 1 & Format(CVar(var_94.Fields.Item("FuncEndDate")), var_1D0)
  loc_163C295:     var_258 = Proc_6_38_E69628(CVar(var_94.Fields.Item("FuncStartTime")), 1, var_1A0, 1, 1, var_11A) & " - "
  loc_163C2C0:     var_254 = Proc_6_38_E69628(CVar(var_94.Fields.Item("FuncEndTime")), CStr(CVar(var_94.Fields.Item("FuncStartTime")).TextMatrix) & "WHERE S.SunCode='" & MemVar_1F95078, var_B8, var_B0)
  loc_163C2E7:     var_27C.Fields.Item("FuncTime").Value = CVar(var_A8 & var_254)
  loc_163C34C:     var_27C.Fields.Item("FuncName").Value = CVar(var_94.Fields.Item("FuncName"))
  loc_163C3A0:     var_27C.Fields.Item("PartyName").Value = CVar(var_94.Fields.Item("PartyName"))
  loc_163C3F4:     var_27C.Fields.Item("BillNo").Value = CVar(var_94.Fields.Item("BillNo"))
  loc_163C430:     var_180 = "DD/MM/YY"
  loc_163C468:     var_27C.Fields.Item("Billdate").Value = Format(CVar(var_94.Fields.Item("Billdate")), var_180)
  loc_163C4A5:     Proc_6_47_EF6560(var_180, CVar(var_94.Fields.Item("Amount")), 1, 1)
  loc_163C4BD:     var_284 = var_27C.Fields
  loc_163C4CD:     var_284.Item("Amount").Value = var_180
  loc_163C50F:     Proc_6_39_E7D3A0(var_180, CVar(var_94.Fields.Item("Amount")), CVar(var_B8))
  loc_163C517:     var_190 = (var_A0 + var_180)
  loc_163C51C:     var_B8 = CSng(Format(CVar(var_94.Fields.Item("Billdate")), var_180))
  loc_163C567:     var_180 = "Select sum(Amtcr) as Advance from PayChargeH where vtype='AD' and ContraDocid='" & var_94.Fields.Item("BOOKDOCID").Value 
  loc_163C57E:     unk_577EF3.Execute CStr(var_180 & "'"), var_1A0, -1
  loc_163C589:     Set var_118 = var_284
  loc_163C5B7:     If (var_118.RecordCount > 0) Then
  loc_163C5E0:       Proc_6_47_EF6560(var_180, CVar(var_118.Fields.Item("Advance")), var_284)
  loc_163C5F8:       var_284 = var_27C.Fields
  loc_163C608:       var_284.Item("Advance").Value = var_180
  loc_163C64A:       Proc_6_39_E7D3A0(var_180, CVar(var_118.Fields.Item("Advance")), CVar(var_A0))
  loc_163C652:       var_190 = (var_B8 + var_180)
  loc_163C657:       var_A0 = CSng(var_180 & "'")
  loc_163C666:     End If
  loc_163C6A2:     var_180 = "Select Sum(AmtCr) as TotRect from PayChargeH where Docid='" & var_94.Fields.Item("DocID").Value 
  loc_163C6B9:     unk_577EF3.Execute CStr(var_180 & "'"), var_1A0, -1
  loc_163C6C4:     Set var_118 = var_284
  loc_163C6F2:     If (var_118.RecordCount > 0) Then
  loc_163C71B:       Proc_6_47_EF6560(var_180, CVar(var_118.Fields.Item("TotRect")), var_284)
  loc_163C743:       var_27C.Fields.Item("TotalRect").Value = var_180
  loc_163C785:       Proc_6_39_E7D3A0(var_180, CVar(var_27C.Fields.Item("TotalRect")), CVar(var_B0))
  loc_163C78D:       var_190 = (var_A0 + var_180)
  loc_163C792:       var_B0 = CSng(var_180 & "'")
  loc_163C7EE:       Proc_6_39_E7D3A0(var_180, CVar(var_27C.Fields.Item("Advance")), var_B0)
  loc_163C819:       Proc_6_39_E7D3A0(var_1D0, CVar(var_27C.Fields.Item("TotalRect")))
  loc_163C839:       var_1A0 = (var_94.Fields.Item("Amount").Value - var_180)
  loc_163C840:       var_220 = (var_1A0 - var_1D0)
  loc_163C876:       var_27C.Fields.Item("Balance").Value = Format(Format(CVar(var_94.Fields.Item("FuncEndDate")), var_1D0), "0.00")
  loc_163C8CA:       Proc_6_39_E7D3A0(var_180, CVar(var_27C.Fields.Item("Balance")), CVar(var_A8), 1)
  loc_163C8D2:       var_190 = (1 + var_180)
  loc_163C8D7:       var_A8 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163C8E6:     End If
  loc_163C8E6:     var_140 = "*"
  loc_163C8EF:     var_130 = "Mark"
  loc_163C90B:     var_27C.Fields.Item(var_130).Value = var_140
  loc_163C922:     var_27C.Update var_130, var_140
  loc_163C96C:     If (CDbl(Val(CStr(var_90.Fields.Item("Balance").Value))) = CDbl(0)) Then
  loc_163C99C:       Proc_6_39_E7D3A0(var_180, CVar(var_27C.Fields.Item("Amount")), CVar(var_B8))
  loc_163C9A4:       var_190 = (var_A8 - var_180)
  loc_163C9A9:       var_B8 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163C9E3:       Proc_6_39_E7D3A0(var_180, CVar(var_27C.Fields.Item("Advance")), CVar(var_A0))
  loc_163C9EB:       var_190 = (var_B8 - var_180)
  loc_163C9F0:       var_A0 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163CA2A:       Proc_6_39_E7D3A0(var_180, CVar(var_27C.Fields.Item("TotalRect")), CVar(var_B0))
  loc_163CA32:       var_190 = (var_A0 - var_180)
  loc_163CA37:       var_B0 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163CA47:       var_140 = CVar(var_A8) 'Double
  loc_163CA4E:       var_130 = "Balance"
  loc_163CA71:       Proc_6_39_E7D3A0(var_180, CVar(var_27C.Fields.Item(var_130)), var_140)
  loc_163CA79:       var_190 = (var_B0 - var_180)
  loc_163CA7E:       var_A8 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163CA93:       var_90.Delete
  loc_163CA98:     End If
  loc_163CA9A:     Set var_27C = Nothing 
  loc_163CAA1:     var_94.MoveNext
  loc_163CAA6:     GoTo loc_163C098
  loc_163CAA9:   End If
  loc_163CAA9: End If
  loc_163CAAC: Set var_29C = var_90 
  loc_163CABB: var_29C.AddNew var_130, var_140
  loc_163CAE5: var_29C.Fields.Item("mLine").Value = "GF"
  loc_163CB16: var_29C.Fields.Item("SrNo").Value = vbNullString
  loc_163CB22: var_140 = " Total--> "
  loc_163CB47: var_29C.Fields.Item("FuncDate").Value = vbNullString
  loc_163CBA0: var_29C.Fields.Item("Amount").Value = CVar(CStr(Format(var_B8, "0.00")))
  loc_163CBC6: var_170 = "0.00"
  loc_163CC04: var_29C.Fields.Item("Advance").Value = CVar(CStr(Format(var_A0, var_170)))
  loc_163CC26: Proc_6_47_EF6560(var_170, var_B0, 1, 1, 1)
  loc_163CC4E: var_29C.Fields.Item("TotalRect").Value = var_170
  loc_163CCAA: var_29C.Fields.Item("Balance").Value = CVar(CStr(Format(var_A8, "0.00")))
  loc_163CCC1: var_140 = "*"
  loc_163CCCA: var_130 = "Mark"
  loc_163CCE6: var_29C.Fields.Item(var_130).Value = var_140
  loc_163CCFD: var_29C.Update var_130, var_140
  loc_163CD04: Set var_29C = Nothing 
  loc_163CD30: Me.FGrid1.Rows = 2
  loc_163CD4C: If (var_90.RecordCount > 0) Then
  loc_163CD55:   CVarUnk
  loc_163CD5A:   VerifyVarObj
  loc_163CD60:   Set var_264 = Me.FGrid1
  loc_163CD66:   LateIdStAd
  loc_163CD96:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_90, Me.FGrid1.Text, 1)
  loc_163CDA1: End If
  loc_163CDA5: Set var_2A8 = Me.FGrid1
  loc_163CDB1: var_2A8.Tag = "OutStanding"
  loc_163CDC2: var_2A8.Cols = &HE
  loc_163CDC7: var_130 = 0
  loc_163CDD0: var_150 = 0
  loc_163CDD9: var_1C0 = "mLine"
  loc_163CDE2: LateIdCallSt
  loc_163CDEA: var_130 = 0
  loc_163CDF3: var_150 = 0
  loc_163CDFF: LateIdCallSt
  loc_163CE07: var_130 = 0
  loc_163CE10: var_150 = 1
  loc_163CE19: var_1C0 = "SNo."
  loc_163CE22: LateIdCallSt
  loc_163CE2A: var_130 = 1
  loc_163CE39: var_150 = CVar(CInt(7)) 'Integer
  loc_163CE40: LateIdCallSt
  loc_163CE48: var_130 = 1
  loc_163CE57: var_150 = CVar(CInt(7)) 'Integer
  loc_163CE5E: LateIdCallSt
  loc_163CE66: var_130 = 1
  loc_163CE6F: var_150 = &H226
  loc_163CE7B: LateIdCallSt
  loc_163CE83: var_130 = 0
  loc_163CE8C: var_150 = 2
  loc_163CE95: var_1C0 = "Doc Id"
  loc_163CE9E: LateIdCallSt
  loc_163CEA6: var_130 = 2
  loc_163CEAF: var_150 = 0
  loc_163CEBB: LateIdCallSt
  loc_163CEC3: var_130 = 0
  loc_163CECC: var_150 = 3
  loc_163CED5: var_1C0 = "Function Date"
  loc_163CEDE: LateIdCallSt
  loc_163CEE6: var_130 = 3
  loc_163CEEF: var_150 = &H898
  loc_163CEFB: LateIdCallSt
  loc_163CF03: var_130 = 0
  loc_163CF0C: var_150 = 4
  loc_163CF15: var_1C0 = "Function Time"
  loc_163CF1E: LateIdCallSt
  loc_163CF26: var_130 = 4
  loc_163CF2F: var_150 = &H6A4
  loc_163CF3B: LateIdCallSt
  loc_163CF43: var_130 = 0
  loc_163CF4C: var_150 = 5
  loc_163CF55: var_1C0 = "Function Type"
  loc_163CF5E: LateIdCallSt
  loc_163CF66: var_130 = 5
  loc_163CF6F: var_150 = &HBB8
  loc_163CF7B: LateIdCallSt
  loc_163CF83: var_130 = 0
  loc_163CF8C: var_150 = 6
  loc_163CF95: var_1C0 = "Party Name"
  loc_163CF9E: LateIdCallSt
  loc_163CFA6: var_130 = 6
  loc_163CFAF: var_150 = &HBB8
  loc_163CFBB: LateIdCallSt
  loc_163CFC3: var_130 = 0
  loc_163CFCC: var_150 = 7
  loc_163CFD5: var_1C0 = "Bill No."
  loc_163CFDE: LateIdCallSt
  loc_163CFE6: var_130 = 7
  loc_163CFF5: var_150 = CVar(CInt(7)) 'Integer
  loc_163CFFC: LateIdCallSt
  loc_163D004: var_130 = 7
  loc_163D013: var_150 = CVar(CInt(7)) 'Integer
  loc_163D01A: LateIdCallSt
  loc_163D022: var_130 = 7
  loc_163D02B: var_150 = &H4B0
  loc_163D037: LateIdCallSt
  loc_163D03F: var_130 = 0
  loc_163D048: var_150 = 8
  loc_163D051: var_1C0 = "Bill Date"
  loc_163D05A: LateIdCallSt
  loc_163D062: var_130 = 8
  loc_163D06B: var_150 = &H578
  loc_163D077: LateIdCallSt
  loc_163D07F: var_130 = 0
  loc_163D088: var_150 = 9
  loc_163D091: var_1C0 = "Bill Amount"
  loc_163D09A: LateIdCallSt
  loc_163D0A2: var_130 = 9
  loc_163D0B1: var_150 = CVar(CInt(7)) 'Integer
  loc_163D0B8: LateIdCallSt
  loc_163D0C0: var_130 = 9
  loc_163D0CF: var_150 = CVar(CInt(7)) 'Integer
  loc_163D0D6: LateIdCallSt
  loc_163D0DE: var_130 = 9
  loc_163D0E7: var_150 = &H578
  loc_163D0F3: LateIdCallSt
  loc_163D0FB: var_130 = 0
  loc_163D104: var_150 = &HA
  loc_163D10D: var_1C0 = "Advance"
  loc_163D116: LateIdCallSt
  loc_163D11E: var_130 = &HA
  loc_163D12D: var_150 = CVar(CInt(7)) 'Integer
  loc_163D134: LateIdCallSt
  loc_163D13C: var_130 = &HA
  loc_163D14B: var_150 = CVar(CInt(7)) 'Integer
  loc_163D152: LateIdCallSt
  loc_163D15A: var_130 = &HA
  loc_163D163: var_150 = &H578
  loc_163D16F: LateIdCallSt
  loc_163D177: var_130 = 0
  loc_163D180: var_150 = &HB
  loc_163D189: var_1C0 = "Total Rect"
  loc_163D192: LateIdCallSt
  loc_163D19A: var_130 = &HB
  loc_163D1A9: var_150 = CVar(CInt(7)) 'Integer
  loc_163D1B0: LateIdCallSt
  loc_163D1B8: var_130 = &HB
  loc_163D1C7: var_150 = CVar(CInt(7)) 'Integer
  loc_163D1CE: LateIdCallSt
  loc_163D1D6: var_130 = &HB
  loc_163D1DF: var_150 = &H578
  loc_163D1EB: LateIdCallSt
  loc_163D1F3: var_130 = 0
  loc_163D1FC: var_150 = &HC
  loc_163D205: var_1C0 = "Balance"
  loc_163D20E: LateIdCallSt
  loc_163D216: var_130 = &HC
  loc_163D225: var_150 = CVar(CInt(7)) 'Integer
  loc_163D22C: LateIdCallSt
  loc_163D234: var_130 = &HC
  loc_163D243: var_150 = CVar(CInt(7)) 'Integer
  loc_163D24A: LateIdCallSt
  loc_163D252: var_130 = &HC
  loc_163D25B: var_150 = &H578
  loc_163D267: LateIdCallSt
  loc_163D26F: var_130 = 0
  loc_163D278: var_150 = &HD
  loc_163D281: var_1C0 = "MARK"
  loc_163D28A: LateIdCallSt
  loc_163D292: var_130 = &HD
  loc_163D29B: var_150 = 0
  loc_163D2A7: LateIdCallSt
  loc_163D2B1: Set var_2A8 = Nothing 
  loc_163D2C9: If (var_94.RecordCount <= 0) Then
  loc_163D2D1:   global_152 = 0
  loc_163D2D4:   Exit Sub
  loc_163D2D5: End If
  loc_163D2D9: Set var_264 = Me.FGrid1
  loc_163D309: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_163D30C:   var_130 = vbNullString
  loc_163D316:   Set var_264 = Me.FGrid1
  loc_163D327: End If
  loc_163D35E: var_130 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_163D37E: Me.FGrid1.Row = CVar(CLng(IIf(var_130, FRow, 1)))
  loc_163D3CC: var_130 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_163D3EC: Me.FGrid1.Col = CVar(CLng(IIf(var_130, Fcol, 1)))
  loc_163D408: Set var_90 = Nothing
  loc_163D410: Set var_8C = Nothing
  loc_163D418: Set var_94 = Nothing
  loc_163D420: Set var_118 = Nothing
  loc_163D425: IStAd
  loc_163D429: Exit Sub
End Sub

Public Sub Proc_249_88_1566880
  'Data Table: 577EF0
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_EC As CheckBox
  loc_15657C8: On Error Goto loc_1566877
  loc_15657D0: global_152 = &HFF
  loc_15657E0: Me.LblProcess.Caption = "Please Wait..."
  loc_15657F2: Me.LblProcess.Refresh
  loc_1565800: var_8C = global_52
  loc_156580B: If (var_8C = "SalesRegister") Then
  loc_1565811:   var_9C = CVar(CLng(0)) 'Long
  loc_1565816:   var_BC = 0
  loc_1565847:   Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix))
  loc_156585B:   If (var_E6 = 0) Then
  loc_1565863:     global_152 = 0
  loc_1565866:     Exit Sub
  loc_1565867:   End If
  loc_156586A:   var_9C = CVar(CLng(1)) 'Long
  loc_15658A0:   Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_15658B4:   If (var_E6 = 0) Then
  loc_15658BC:     global_152 = 0
  loc_15658BF:     Exit Sub
  loc_15658C0:   End If
  loc_15658C3: Else
  loc_15658CB:   If (var_8C = "PartyOutStanding") Then
  loc_1565907:     Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)))
  loc_156591B:     If (var_E6 = 0) Then
  loc_1565923:       global_152 = 0
  loc_1565926:       Exit Sub
  loc_1565927:     End If
  loc_1565960:     Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_1565974:     If (var_E6 = 0) Then
  loc_156597C:       global_152 = 0
  loc_156597F:       Exit Sub
  loc_1565980:     End If
  loc_1565983:   Else
  loc_156598B:     If (var_8C = "PartyWiseOutStanding") Then
  loc_15659C7:       Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_152)
  loc_15659DB:       If (var_E6 = 0) Then
  loc_15659E3:         global_152 = 0
  loc_15659E6:         Exit Sub
  loc_15659E7:       End If
  loc_1565A20:       Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_1565A34:       If (var_E6 = 0) Then
  loc_1565A3C:         global_152 = 0
  loc_1565A3F:         Exit Sub
  loc_1565A40:       End If
  loc_1565A4C:       Set var_88 = Me.Check1
  loc_1565A52:       Call 0.Method_Proc_249_88_15668800 (1, var_EC, var_DE, global_152, global_152)
  loc_1565A5A:       var_9C = var_EC.Value
  loc_1565A70:       If (CLng(var_DE) = 0) Then
  loc_1565A8E:         Call Proc_249_92_12A2E60(global_172, 1, CByte(1), var_E4)
  loc_1565A99:         global_56 = var_E4
  loc_1565AA9:         If (global_152 = 0) Then
  loc_1565AAC:           Exit Sub
  loc_1565AAD:         End If
  loc_1565AAD:       End If
  loc_1565AB0:     Else
  loc_1565AB8:       If (var_8C = "CashierCollection") Then
  loc_1565ABE:         var_9C = CVar(CLng(0)) 'Long
  loc_1565AF4:         Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1565B08:         If (var_E6 = 0) Then
  loc_1565B10:           global_152 = 0
  loc_1565B13:           Exit Sub
  loc_1565B14:         End If
  loc_1565B4D:         Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1565B61:         If (var_E6 = 0) Then
  loc_1565B69:           global_152 = 0
  loc_1565B6C:           Exit Sub
  loc_1565B6D:         End If
  loc_1565B79:         Set var_88 = Me.Check1
  loc_1565B7F:         Call 0.Method_Proc_249_88_15668800 (1, var_EC, var_DE, global_152, global_152)
  loc_1565B87:         var_9C = var_EC.Value
  loc_1565B9D:         If (CLng(var_DE) = 0) Then
  loc_1565BBB:           Call Proc_249_92_12A2E60(global_172, 1, CByte(1), var_E4)
  loc_1565BC6:           global_56 = var_E4
  loc_1565BD6:           If (global_152 = 0) Then
  loc_1565BD9:             Exit Sub
  loc_1565BDA:           End If
  loc_1565BDA:         End If
  loc_1565BDD:       Else
  loc_1565BE5:         If (var_8C = "CashierCollectionMIS") Then
  loc_1565BEB:           var_9C = CVar(CLng(0)) 'Long
  loc_1565C21:           Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1565C35:           If (var_E6 = 0) Then
  loc_1565C3D:             global_152 = 0
  loc_1565C40:             Exit Sub
  loc_1565C41:           End If
  loc_1565C7A:           Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1565C8E:           If (var_E6 = 0) Then
  loc_1565C96:             global_152 = 0
  loc_1565C99:             Exit Sub
  loc_1565C9A:           End If
  loc_1565C9D:         Else
  loc_1565CA5:           If (var_8C = "BookingDetail") Then
  loc_1565CE1:             Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_152)
  loc_1565CF5:             If (var_E6 = 0) Then
  loc_1565CFD:               global_152 = 0
  loc_1565D00:               Exit Sub
  loc_1565D01:             End If
  loc_1565D3A:             Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_1565D4E:             If (var_E6 = 0) Then
  loc_1565D56:               global_152 = 0
  loc_1565D59:               Exit Sub
  loc_1565D5A:             End If
  loc_1565D93:             Call Proc_249_96_1060AB8(CInt(2), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(2)), global_152)
  loc_1565DA7:             If (var_E6 = 0) Then
  loc_1565DAF:               global_152 = 0
  loc_1565DB2:               Exit Sub
  loc_1565DB3:             End If
  loc_1565DB6:           Else
  loc_1565DBE:             If (var_8C = "SettleRepHall") Then
  loc_1565DFA:               Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_152)
  loc_1565E0E:               If (var_E6 = 0) Then
  loc_1565E16:                 global_152 = 0
  loc_1565E19:                 Exit Sub
  loc_1565E1A:               End If
  loc_1565E53:               Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_1565E67:               If (var_E6 = 0) Then
  loc_1565E6F:                 global_152 = 0
  loc_1565E72:                 Exit Sub
  loc_1565E73:               End If
  loc_1565E7F:               Set var_88 = Me.Check1
  loc_1565E85:               Call 0.Method_Proc_249_88_15668800 (1, var_EC, var_DE, global_152, global_152)
  loc_1565E8D:               var_9C = var_EC.Value
  loc_1565EA3:               If (CLng(var_DE) = 0) Then
  loc_1565EC1:                 Call Proc_249_92_12A2E60(global_172, 1, CByte(1), var_E4)
  loc_1565ECC:                 global_56 = var_E4
  loc_1565EDC:                 If (global_152 = 0) Then
  loc_1565EDF:                   Exit Sub
  loc_1565EE0:                 End If
  loc_1565EE0:               End If
  loc_1565EE3:             Else
  loc_1565EEB:               If (var_8C = "TaxReportHall") Then
  loc_1565EF1:                 var_9C = CVar(CLng(0)) 'Long
  loc_1565F27:                 Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1565F3B:                 If (var_E6 = 0) Then
  loc_1565F43:                   global_152 = 0
  loc_1565F46:                   Exit Sub
  loc_1565F47:                 End If
  loc_1565F80:                 Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1565F94:                 If (var_E6 = 0) Then
  loc_1565F9C:                   global_152 = 0
  loc_1565F9F:                   Exit Sub
  loc_1565FA0:                 End If
  loc_1565FAC:                 Set var_88 = Me.Check1
  loc_1565FB2:                 Call 0.Method_Proc_249_88_15668800 (1, var_EC, var_DE, global_152, global_152)
  loc_1565FBA:                 var_9C = var_EC.Value
  loc_1565FD0:                 If (CLng(var_DE) = 0) Then
  loc_1565FEE:                   Call Proc_249_92_12A2E60(global_172, 1, CByte(1), var_E4)
  loc_1565FF9:                   global_56 = var_E4
  loc_1566009:                   If (global_152 = 0) Then
  loc_156600C:                     Exit Sub
  loc_156600D:                   End If
  loc_156600D:                 End If
  loc_1566010:               Else
  loc_1566018:                 If (var_8C = "TaxwiseDetailReportHall") Then
  loc_156601E:                   var_9C = CVar(CLng(0)) 'Long
  loc_1566054:                   Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1566068:                   If (var_E6 = 0) Then
  loc_1566070:                     global_152 = 0
  loc_1566073:                     Exit Sub
  loc_1566074:                   End If
  loc_15660AD:                   Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_15660C1:                   If (var_E6 = 0) Then
  loc_15660C9:                     global_152 = 0
  loc_15660CC:                     Exit Sub
  loc_15660CD:                   End If
  loc_15660D9:                   Set var_88 = Me.Check1
  loc_15660DF:                   Call 0.Method_Proc_249_88_15668800 (1, var_EC, var_DE, global_152, global_152)
  loc_15660E7:                   var_9C = var_EC.Value
  loc_15660FD:                   If (CLng(var_DE) = 0) Then
  loc_156611B:                     Call Proc_249_92_12A2E60(global_172, 1, CByte(1), var_E4)
  loc_1566126:                     global_56 = var_E4
  loc_1566136:                     If (global_152 = 0) Then
  loc_1566139:                       Exit Sub
  loc_156613A:                     End If
  loc_156613A:                   End If
  loc_156613D:                 Else
  loc_1566145:                   If (var_8C = "TaxSummaryHall") Then
  loc_156614B:                     var_9C = CVar(CLng(0)) 'Long
  loc_1566181:                     Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1566195:                     If (var_E6 = 0) Then
  loc_156619D:                       global_152 = 0
  loc_15661A0:                       Exit Sub
  loc_15661A1:                     End If
  loc_15661DA:                     Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_15661EE:                     If (var_E6 = 0) Then
  loc_15661F6:                       global_152 = 0
  loc_15661F9:                       Exit Sub
  loc_15661FA:                     End If
  loc_15661FD:                   Else
  loc_1566205:                     If (var_8C = "DailyFuncSheet") Then
  loc_156620B:                       var_9C = CVar(CLng(0)) 'Long
  loc_1566210:                       var_BC = 1
  loc_1566243:                       If (IsDate(CVar(CStr(Me.FGrid.TextMatrix)))) = 0) Then
  loc_156624B:                         global_152 = 0
  loc_156624E:                         Exit Sub
  loc_156624F:                       End If
  loc_1566252:                       var_9C = CVar(CLng(1)) 'Long
  loc_1566257:                       var_BC = 1
  loc_156628A:                       If (IsDate(CVar(CStr(Me.FGrid.TextMatrix)))) = 0) Then
  loc_1566292:                         global_152 = 0
  loc_1566295:                         Exit Sub
  loc_1566296:                       End If
  loc_15662CF:                       Call Proc_249_96_1060AB8(CInt(2), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(2)), global_152, 0)
  loc_15662E3:                       If (var_E6 = 0) Then
  loc_15662EB:                         global_152 = 0
  loc_15662EE:                         Exit Sub
  loc_15662EF:                       End If
  loc_1566328:                       Call Proc_249_96_1060AB8(CInt(3), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(3)), global_152, CVar(CLng(3)))
  loc_156633C:                       If (var_E6 = 0) Then
  loc_1566344:                         global_152 = 0
  loc_1566347:                         Exit Sub
  loc_1566348:                       End If
  loc_1566350:                       var_BC = 0
  loc_1566381:                       Call Proc_249_96_1060AB8(CInt(4), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), var_BC, CVar(CLng(4)), global_152)
  loc_1566395:                       If (var_E6 = 0) Then
  loc_156639D:                         global_152 = 0
  loc_15663A0:                         Exit Sub
  loc_15663A1:                       End If
  loc_15663AD:                       Set var_88 = Me.Check1
  loc_15663B3:                       Call 0.Method_Proc_249_88_15668800 (1, var_EC, var_DE, global_152, global_152, var_BC)
  loc_15663BB:                       var_9C = var_EC.Value
  loc_15663D1:                       If (CLng(var_DE) = 0) Then
  loc_15663EF:                         Call Proc_249_92_12A2E60(global_172, 1, CByte(1), var_E4)
  loc_15663FA:                         global_56 = var_E4
  loc_156640A:                         If (global_152 = 0) Then
  loc_156640D:                           Exit Sub
  loc_156640E:                         End If
  loc_156640E:                       End If
  loc_156641A:                       Set var_88 = Me.Check1
  loc_1566420:                       Call 0.Method_Proc_249_88_15668800 (2, var_EC, var_DE, global_152)
  loc_156643E:                       If (CLng(var_DE) = 0) Then
  loc_156645C:                         Call Proc_249_92_12A2E60(global_176, 2, CByte(1))
  loc_1566467:                         global_60 = var_E4
  loc_1566477:                         If (var_EC.Value = 0) Then
  loc_156647A:                           Exit Sub
  loc_156647B:                         End If
  loc_156647B:                       End If
  loc_156647E:                     Else
  loc_1566486:                       If (var_8C = "CoverAnalysis") Then
  loc_156648C:                         var_9C = CVar(CLng(0)) 'Long
  loc_15664C2:                         Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_15664D6:                         If (var_E6 = 0) Then
  loc_15664DE:                           global_152 = 0
  loc_15664E1:                           Exit Sub
  loc_15664E2:                         End If
  loc_156651B:                         Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_156652F:                         If (var_E6 = 0) Then
  loc_1566537:                           global_152 = 0
  loc_156653A:                           Exit Sub
  loc_156653B:                         End If
  loc_156653E:                       Else
  loc_1566546:                         If (var_8C = "ItemWiseSaleHall") Then
  loc_1566582:                           Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)))
  loc_1566596:                           If (var_E6 = 0) Then
  loc_156659E:                             global_152 = 0
  loc_15665A1:                             Exit Sub
  loc_15665A2:                           End If
  loc_15665DB:                           Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_15665EF:                           If (var_E6 = 0) Then
  loc_15665F7:                             global_152 = 0
  loc_15665FA:                             Exit Sub
  loc_15665FB:                           End If
  loc_15665FE:                         Else
  loc_1566606:                           If (var_8C = "CompanyWiseSaleHall") Then
  loc_1566642:                             Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_152)
  loc_1566656:                             If (var_E6 = 0) Then
  loc_156665E:                               global_152 = 0
  loc_1566661:                               Exit Sub
  loc_1566662:                             End If
  loc_156669B:                             Call Proc_249_96_1060AB8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_15666AF:                             If (var_E6 = 0) Then
  loc_15666B7:                               global_152 = 0
  loc_15666BA:                               Exit Sub
  loc_15666BB:                             End If
  loc_15666C7:                             Set var_88 = Me.Check1
  loc_15666CD:                             Call 0.Method_Proc_249_88_15668800 (1, var_EC, var_DE, global_152, global_152)
  loc_15666EB:                             If (CLng(var_DE) = 0) Then
  loc_1566709:                               Call Proc_249_92_12A2E60(global_172, 1, CByte(1), var_E4)
  loc_1566714:                               global_56 = var_E4
  loc_1566724:                               If (var_EC.Value = 0) Then
  loc_1566727:                                 Exit Sub
  loc_1566728:                               End If
  loc_1566728:                             End If
  loc_156672B:                           Else
  loc_1566733:                             If (var_8C = "FunctionWiseItemDetail") Then
  loc_1566739:                               var_9C = CVar(CLng(0)) 'Long
  loc_156676F:                               Call Proc_249_96_1060AB8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1566783:                               If (var_E6 = 0) Then
  loc_156678B:                                 global_152 = 0
  loc_156678E:                                 Exit Sub
  loc_156678F:                               End If
  loc_156679B:                               Set var_88 = Me.Check1
  loc_15667A1:                               Call 0.Method_Proc_249_88_15668800 (1, var_EC, var_DE, global_152, var_9C)
  loc_15667A9:                               var_9C = var_EC.Value
  loc_15667BF:                               If (CLng(var_DE) = 0) Then
  loc_15667D8:                                 var_9C = global_172
  loc_15667DD:                                 Call Proc_249_92_12A2E60(var_9C, 1, CByte(1), var_E4)
  loc_15667E8:                                 global_56 = var_E4
  loc_15667F8:                                 If (global_152 = 0) Then
  loc_15667FB:                                   Exit Sub
  loc_15667FC:                                 End If
  loc_15667FC:                               End If
  loc_15667FC:                             End If
  loc_15667FC:                           End If
  loc_15667FC:                         End If
  loc_15667FC:                       End If
  loc_15667FC:                     End If
  loc_15667FC:                   End If
  loc_15667FC:                 End If
  loc_15667FC:               End If
  loc_15667FC:             End If
  loc_15667FC:           End If
  loc_15667FC:         End If
  loc_15667FC:       End If
  loc_15667FC:     End If
  loc_15667FC:   End If
  loc_15667FC: End If
  loc_1566809: Me.LblProcess.Caption = "Please Wait..............."
  loc_156681B: Me.LblProcess.Refresh
  loc_156682C: Call RetBack(Me)
  loc_1566842: Me.PictParameter.Width = CDbl(0)
  loc_1566857: Me.LblProcess.Caption = "Please Wait....................."
  loc_1566869: Me.LblProcess.Refresh
  loc_1566871: Call Form_Resize()
  loc_1566876: Exit Sub
  loc_1566877: ' Referenced from: 15657C8
  loc_1566877: Proc_6_60_E63754(var_E4, var_9C)
  loc_156687C: Exit Sub
End Sub

Public Sub Proc_249_89_1364EC0
  'Data Table: 577EF0
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_B8 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_BC As String
  Dim var_148 As MSHFlexGrid
  Dim var_86 As Integer
  loc_13646BB: var_B0 = CLng(Me.FGrid.Row)
  loc_13646CB: If (var_B0 = CLng(2)) Then
  loc_13646D4:   var_B4 = global_52
  loc_13646DF:   If Not (var_B4 = "BookingDetail") Then
  loc_13646EA:     If (var_B4 = "DailyFuncSheet") Then
  loc_13646ED:     End If
  loc_13646F9:     Set var_9C = Me.TxtGrid
  loc_13646FF:     Call 0.Method_Proc_249_89_1364EC00 (0, var_B8)
  loc_136471E:     If (var_B8.Text <> vbNullString) Then
  loc_1364734:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136474C:       var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1364769:       Set var_B8 = Me.ListView.SelectedItem
  loc_136476F:       var_BC = var_B8.Text
  loc_1364777:       var_134 = CVar(var_BC) 'String
  loc_136477F:       Set var_148 = Me.FGrid
  loc_1364785:       LateIdCallSt
  loc_13647A5:     End If
  loc_13647A8:   Else
  loc_13647B0:     If (var_B4 = "SalesRegister") Then
  loc_13647BF:       Set var_9C = Me.TxtGrid
  loc_13647C5:       Call 0.Method_Proc_249_89_1364EC00 (0, var_B8, var_BC, var_148)
  loc_13647CD:       var_134 = var_B8.Text
  loc_13647E4:       If (var_BC <> vbNullString) Then
  loc_13647FA:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1364812:         var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_136482F:         Set var_B8 = Me.ListView.SelectedItem
  loc_1364835:         var_BC = var_B8.Text
  loc_136483D:         var_134 = CVar(var_BC) 'String
  loc_1364845:         Set var_148 = Me.FGrid
  loc_136484B:         LateIdCallSt
  loc_136486B:       End If
  loc_136486B:     End If
  loc_136486B:   End If
  loc_136486E: Else
  loc_1364875:   If Not (var_B0 = CLng(5)) Then
  loc_136487F:     If Not (var_B0 = CLng(6)) Then
  loc_1364889:       If Not (var_B0 = CLng(7)) Then
  loc_1364893:         If Not (var_B0 = CLng(8)) Then
  loc_136489D:           If (var_B0 = CLng(9)) Then
  loc_13648A0:           End If
  loc_13648A0:         End If
  loc_13648A0:       End If
  loc_13648A0:     End If
  loc_13648A3:   Else
  loc_13648AA:     If (var_B0 = CLng(3)) Then
  loc_13648BE:       If (global_52 = "DailyFuncSheet") Then
  loc_13648CD:         Set var_9C = Me.TxtGrid
  loc_13648D3:         Call 0.Method_Proc_249_89_1364EC00 (0, var_B8, var_BC, var_148, var_134)
  loc_13648DB:         var_114 = var_B8.Text
  loc_13648F2:         If (var_BC <> vbNullString) Then
  loc_1364908:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1364920:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_136494B:           var_134 = CVar(Me.ListView.SelectedItem.Text) 'String
  loc_1364953:           Set var_148 = Me.FGrid
  loc_1364959:           LateIdCallSt
  loc_1364979:         End If
  loc_136498C:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1364995:         Set var_B8 = Me.FGrid
  loc_13649A4:         var_114 = CVar(CLng(var_B8.Col)) 'Long
  loc_13649DB:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_13649DE:           var_F4 = True
  loc_13649EB:           Set var_9C = Me.GridSel
  loc_13649F1:           Call 0.Method_Proc_249_89_1364EC00 (1, var_B8, var_F4, var_114, var_F4, var_148, var_134)
  loc_13649F9:           var_B8.Visible = var_114
  loc_1364A10:           Set var_9C = Me.Check1
  loc_1364A16:           Call 0.Method_Proc_249_89_1364EC00 (1, var_B8, &HFF, var_F4)
  loc_1364A1E:           var_B8.Visible = var_F4
  loc_1364A2D:         Else
  loc_1364A2D:           var_F4 = False
  loc_1364A3B:           Set var_9C = Me.GridSel
  loc_1364A41:           Call 0.Method_Proc_249_89_1364EC00 (1, var_B8, var_F4)
  loc_1364A49:           var_B8.Visible = var_114
  loc_1364A60:           Set var_9C = Me.Check1
  loc_1364A66:           Call 0.Method_Proc_249_89_1364EC00 (1, var_B8, 0)
  loc_1364A6E:           var_B8.Visible = var_F4
  loc_1364A7A:         End If
  loc_1364A7A:       End If
  loc_1364A7D:     Else
  loc_1364A84:       If (var_B0 = CLng(4)) Then
  loc_1364A98:         If (global_52 = "DailyFuncSheet") Then
  loc_1364AA7:           Set var_9C = Me.TxtGrid
  loc_1364AAD:           Call 0.Method_Proc_249_89_1364EC00 (0, var_B8)
  loc_1364ACC:           If (var_B8.Text <> vbNullString) Then
  loc_1364AE2:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1364AFA:             var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1364B25:             var_134 = CVar(Me.ListView.SelectedItem.Text) 'String
  loc_1364B2D:             Set var_148 = Me.FGrid
  loc_1364B33:             LateIdCallSt
  loc_1364B53:           End If
  loc_1364B66:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1364B6F:           Set var_B8 = Me.FGrid
  loc_1364B7E:           var_114 = CVar(CLng(var_B8.Col)) 'Long
  loc_1364B98:           var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1364BB5:           If (var_BC = "Yes") Then
  loc_1364BC5:             Set var_9C = Me.GridSel
  loc_1364BCB:             Call 0.Method_Proc_249_89_1364EC00 (2, var_B8, True, var_114, True)
  loc_1364BD3:             var_B8.Visible = var_148
  loc_1364BEA:             Set var_9C = Me.Check1
  loc_1364BF0:             Call 0.Method_Proc_249_89_1364EC00 (2, var_B8, &HFF, var_134)
  loc_1364BF8:             var_B8.Visible = var_114
  loc_1364C07:           Else
  loc_1364C07:             var_F4 = False
  loc_1364C15:             Set var_9C = Me.GridSel
  loc_1364C1B:             Call 0.Method_Proc_249_89_1364EC00 (2, var_B8, var_F4)
  loc_1364C23:             var_B8.Visible = var_F4
  loc_1364C3A:             Set var_9C = Me.Check1
  loc_1364C40:             Call 0.Method_Proc_249_89_1364EC00 (2, var_B8)
  loc_1364C48:             var_B8.Visible = False
  loc_1364C54:           End If
  loc_1364C54:         End If
  loc_1364C57:       Else
  loc_1364C5E:         If Not (var_B0 = CLng(0)) Then
  loc_1364C68:           If (var_B0 = CLng(1)) Then
  loc_1364C6B:           End If
  loc_1364C6F:           Set var_D4 = Me.FGrid
  loc_1364CA4:           Set var_9C = Me.TxtGrid
  loc_1364CAA:           Call 0.Method_Proc_249_89_1364EC00 (0, var_B8, CVar(CLng(Me.FGrid.Col)))
  loc_1364CCB:           LateIdCallSt
  loc_1364CFA:           If (global_52 = "FunctionWiseItemDetail") Then
  loc_1364D09:             Call 0.Method_arg_1C0 (var_BC, "SELECT '' As _,S.PartyName+' ('+Cast(S.Vno As Varchar)+')' AS PartyName,S.DocId as Code FROM (((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) WHERE S.RestCOde='", Me.FGrid)
  loc_1364D20:             Set var_9C = Me.MemMas
  loc_1364D38:             Set var_B8 = Me.MemMas
  loc_1364D50:             Set var_C0 = Me.MemMas
  loc_1364D67:             Proc_6_7_F26918(var_16C, CVar(CStr(MemMas.DispID_41)), CVar(CLng(MemMas.DispID_B)))
  loc_1364DAB:             Call Proc_249_94_1214024(1, CStr(CVar(CLng(MemMas.DispID_A)) & var_16C & " Order by S.PartyName"))
  loc_1364DBA:             var_AC = Me.MemMas.Height
  loc_1364DCA:             Set var_B8 = Me.Picture3
  loc_1364DDB:             Call 0.Method_Me8 (var_1A4, var_AC)
  loc_1364DF2:             var_F4 = CVar((((var_1A4 - CDbl(var_AC)) - MDIForm1.Picture3.Height) - CDbl(1200))) 'Single
  loc_1364E00:             Set var_C0 = Me.GridSel
  loc_1364E06:             Call 0.Method_Proc_249_89_1364EC00 (1, var_D4, CVar(CLng(MemMas.DispID_A)))
  loc_1364E0E:             var_D4.Height = CVar(CVar(Proc_6_33_15125B8(var_B8, CVar(CLng(var_D4.Row)))) & var_BC & "' And Vo.FromDate=")
  loc_1364E2C:             Set var_9C = Me.Check1
  loc_1364E32:             Call 0.Method_Proc_249_89_1364EC00 (1, var_B8)
  loc_1364E3A:             var_B8.Visible = False
  loc_1364E55:             Set var_9C = Me.Check1
  loc_1364E5B:             Call 0.Method_Proc_249_89_1364EC00 (1, var_B8)
  loc_1364E63:             var_B8.Value = CInt(0)
  loc_1364E6F:           End If
  loc_1364E6F:         End If
  loc_1364E6F:       End If
  loc_1364E6F:     End If
  loc_1364E6F:   End If
  loc_1364E6F: End If
  loc_1364E71: var_86 = &HFF
  loc_1364E7A: If (arg_10 = 0) Then
  loc_1364E81:   Set var_9C = Me.FGrid
  loc_1364E9D:   Set var_9C = Me.TxtGrid
  loc_1364EA3:   Call 0.Method_Proc_249_89_1364EC00 (0, var_B8, 0)
  loc_1364EAB:   var_B8.Visible = FGrid.DispID_8001
  loc_1364EB7: End If
  loc_1364EB7: Proc_249_89_1364EC0 = var_86
End Sub

Public Sub Proc_249_90_15ACC2C
  'Data Table: 577EF0
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_E8 As Variant
  Dim var_88 As Integer
  Dim var_108 As Variant
  Dim var_110 As Variant
  Dim var_114 As PictureBox
  Dim var_118 As MSHFlexGrid
  loc_15AB9E7: Me.Pic.Top = CDbl(8300)
  loc_15ABA01: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_15ABA1B: Me.FGrid.Top = CVar(CDbl(&H64))
  loc_15ABA36: Me.FGrid.Rows = 6
  loc_15ABA51: Me.FGrid.Cols = 3
  loc_15ABA6C: Me.FGrid.FixedCols = 1
  loc_15ABA74: var_9C = 0
  loc_15ABA7D: var_BC = &H898
  loc_15ABA8A: Set var_8C = Me.FGrid
  loc_15ABA90: LateIdCallSt
  loc_15ABA9B: var_9C = 1
  loc_15ABAA4: var_BC = &H7B7
  loc_15ABAB1: Set var_8C = Me.FGrid
  loc_15ABAB7: LateIdCallSt
  loc_15ABAC2: var_9C = 2
  loc_15ABACB: var_BC = 0
  loc_15ABAD8: Set var_8C = Me.FGrid
  loc_15ABADE: LateIdCallSt
  loc_15ABAE9: var_9C = 1
  loc_15ABAF8: var_BC = CVar(CInt(1)) 'Integer
  loc_15ABB00: Set var_8C = Me.FGrid
  loc_15ABB06: LateIdCallSt
  loc_15ABB36: For var_E0 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_E0 'Integer
  loc_15ABB40:   var_9C = CVar(CLng(var_86)) 'Long
  loc_15ABB45:   var_BC = 0
  loc_15ABB52:   Set var_8C = Me.FGrid
  loc_15ABB58:   LateIdCallSt
  loc_15ABB66: Next var_E0 'Integer
  loc_15ABB6B: Call Proc_249_95_16526E4()
  loc_15ABB77: For var_E4 = 1 To 4: var_86 = var_E4 'Integer
  loc_15ABB87:   Set var_8C = Me.GridSel
  loc_15ABB8D:   Call 0.Method_Proc_249_90_15ACC2C0 (var_86, var_E8)
  loc_15ABBAB:   If (CBool(var_E8.Visible) = &HFF) Then
  loc_15ABBB4:     var_88 = (var_88 + 1)
  loc_15ABBB7:   End If
  loc_15ABBBA: Next var_E4 'Integer
  loc_15ABBDA: var_9C = CVar(CDbl(((((global_124 - global_126) + 1) * CInt(220)) + 500))) 'Single
  loc_15ABBE9: Me.FGrid.Height = var_9C
  loc_15ABBF7: var_F8 = global_128 'Variant
  loc_15ABC06: If (var_F8 = 0) Then
  loc_15ABC1C:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_15ABC40:   Set var_E8 = Me.PictParameter
  loc_15ABC46:   var_E8.Width = (CDbl(Me.FGrid.Width) + CDbl(&H7D))
  loc_15ABC58: Else
  loc_15ABC63:   If (var_F8 = 1) Then
  loc_15ABC77:     Set var_8C = Me.GridSel
  loc_15ABC7D:     Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15ABC85:     var_E8.Left = CVar(CDbl(&H4B))
  loc_15ABC95:     Set var_E8 = Me.FGrid
  loc_15ABCC2:     var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_E8.Height)) + CDbl(600))) 'Single
  loc_15ABCD0:     Set var_10C = Me.GridSel
  loc_15ABCD6:     Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15ABCDE:     var_110.Top = CVar(CDbl(&H4B))
  loc_15ABCFE:     Set var_8C = Me.GridSel
  loc_15ABD04:     Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15ABD23:     Set var_10C = Me.Check1
  loc_15ABD29:     Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15ABD31:     var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15ABD4D:     Set var_8C = Me.GridSel
  loc_15ABD53:     Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15ABD72:     Set var_10C = Me.Check1
  loc_15ABD78:     Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15ABD80:     var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15ABD9C:     Set var_10C = Me.GridSel
  loc_15ABDA2:     Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15ABDAA:     var_108 = var_110.Width
  loc_15ABDBC:     Set var_8C = Me.GridSel
  loc_15ABDC2:     Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15ABDE8:     Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H4B))
  loc_15ABE04:   Else
  loc_15ABE0F:     If (var_F8 = 2) Then
  loc_15ABE23:       Set var_8C = Me.GridSel
  loc_15ABE29:       Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15ABE31:       var_E8.Left = var_108
  loc_15ABE41:       Set var_E8 = Me.FGrid
  loc_15ABE47:       var_108 = var_E8.Height
  loc_15ABE6E:       var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15ABE7C:       Set var_10C = Me.GridSel
  loc_15ABE82:       Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110, CVar(CDbl(&H4B)))
  loc_15ABE8A:       var_110.Top = var_108
  loc_15ABEAA:       Set var_8C = Me.GridSel
  loc_15ABEB0:       Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15ABECF:       Set var_10C = Me.Check1
  loc_15ABED5:       Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15ABEDD:       var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15ABEF9:       Set var_8C = Me.GridSel
  loc_15ABEFF:       Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15ABF1E:       Set var_10C = Me.Check1
  loc_15ABF24:       Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15ABF2C:       var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15ABF48:       Set var_10C = Me.GridSel
  loc_15ABF4E:       Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15ABF56:       var_108 = var_110.Width
  loc_15ABF68:       Set var_8C = Me.GridSel
  loc_15ABF6E:       Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15ABF89:       var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15ABF97:       Set var_114 = Me.GridSel
  loc_15ABF9D:       Call 0.Method_Proc_249_90_15ACC2C0 (2, var_118, CVar(CDbl(&H4B)))
  loc_15ABFA5:       var_118.Left = var_108
  loc_15ABFC4:       Set var_E8 = Me.FGrid
  loc_15ABFCA:       var_108 = var_E8.Height
  loc_15ABFF1:       var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15ABFFF:       Set var_10C = Me.GridSel
  loc_15AC005:       Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110, CVar(CDbl(&H4B)))
  loc_15AC00D:       var_110.Top = var_108
  loc_15AC02D:       Set var_8C = Me.GridSel
  loc_15AC033:       Call 0.Method_Proc_249_90_15ACC2C0 (2, var_E8)
  loc_15AC052:       Set var_10C = Me.Check1
  loc_15AC058:       Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110)
  loc_15AC060:       var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AC07C:       Set var_8C = Me.GridSel
  loc_15AC082:       Call 0.Method_Proc_249_90_15ACC2C0 (2, var_E8)
  loc_15AC0A1:       Set var_10C = Me.Check1
  loc_15AC0A7:       Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110)
  loc_15AC0AF:       var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AC0CB:       Set var_10C = Me.GridSel
  loc_15AC0D1:       Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110)
  loc_15AC0D9:       var_108 = var_110.Width
  loc_15AC0EB:       Set var_8C = Me.GridSel
  loc_15AC0F1:       Call 0.Method_Proc_249_90_15ACC2C0 (2, var_E8)
  loc_15AC117:       Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H32))
  loc_15AC133:     Else
  loc_15AC13E:       If (var_F8 = 3) Then
  loc_15AC152:         Set var_8C = Me.GridSel
  loc_15AC158:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15AC160:         var_E8.Left = var_108
  loc_15AC170:         Set var_E8 = Me.FGrid
  loc_15AC176:         var_108 = var_E8.Height
  loc_15AC19D:         var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15AC1AB:         Set var_10C = Me.GridSel
  loc_15AC1B1:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110, CVar(CDbl(&H4B)))
  loc_15AC1B9:         var_110.Top = var_108
  loc_15AC1D9:         Set var_8C = Me.GridSel
  loc_15AC1DF:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC1FE:         Set var_10C = Me.Check1
  loc_15AC204:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15AC20C:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AC228:         Set var_8C = Me.GridSel
  loc_15AC22E:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC24D:         Set var_10C = Me.Check1
  loc_15AC253:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15AC25B:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AC277:         Set var_8C = Me.GridSel
  loc_15AC27D:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC29C:         Set var_10C = Me.GridSel
  loc_15AC2A2:         Call 0.Method_Proc_249_90_15ACC2C0 (3, var_110)
  loc_15AC2AA:         var_110.Left = CVar(CDbl(var_E8.Left))
  loc_15AC2C6:         Set var_10C = Me.GridSel
  loc_15AC2CC:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15AC2D4:         var_108 = var_110.Height
  loc_15AC2E6:         Set var_8C = Me.GridSel
  loc_15AC2EC:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC307:         var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15AC315:         Set var_114 = Me.GridSel
  loc_15AC31B:         Call 0.Method_Proc_249_90_15ACC2C0 (3, var_118, CVar(CDbl(var_E8.Left)))
  loc_15AC323:         var_118.Top = var_108
  loc_15AC347:         Set var_8C = Me.GridSel
  loc_15AC34D:         Call 0.Method_Proc_249_90_15ACC2C0 (3, var_E8)
  loc_15AC36C:         Set var_10C = Me.Check1
  loc_15AC372:         Call 0.Method_Proc_249_90_15ACC2C0 (3, var_110)
  loc_15AC37A:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AC396:         Set var_8C = Me.GridSel
  loc_15AC39C:         Call 0.Method_Proc_249_90_15ACC2C0 (3, var_E8)
  loc_15AC3BB:         Set var_10C = Me.Check1
  loc_15AC3C1:         Call 0.Method_Proc_249_90_15ACC2C0 (3, var_110)
  loc_15AC3C9:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AC3E5:         Set var_10C = Me.GridSel
  loc_15AC3EB:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15AC3F3:         var_108 = var_110.Width
  loc_15AC405:         Set var_8C = Me.GridSel
  loc_15AC40B:         Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC426:         var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15AC434:         Set var_114 = Me.GridSel
  loc_15AC43A:         Call 0.Method_Proc_249_90_15ACC2C0 (2, var_118, CVar(CDbl(var_E8.Left)))
  loc_15AC442:         var_118.Left = var_108
  loc_15AC461:         Set var_E8 = Me.FGrid
  loc_15AC467:         var_108 = var_E8.Height
  loc_15AC48E:         var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15AC49C:         Set var_10C = Me.GridSel
  loc_15AC4A2:         Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110, CVar(CDbl(var_E8.Left)))
  loc_15AC4AA:         var_110.Top = var_108
  loc_15AC4CA:         Set var_8C = Me.GridSel
  loc_15AC4D0:         Call 0.Method_Proc_249_90_15ACC2C0 (2, var_E8)
  loc_15AC4EF:         Set var_10C = Me.Check1
  loc_15AC4F5:         Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110)
  loc_15AC4FD:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AC519:         Set var_8C = Me.GridSel
  loc_15AC51F:         Call 0.Method_Proc_249_90_15ACC2C0 (2, var_E8)
  loc_15AC53E:         Set var_10C = Me.Check1
  loc_15AC544:         Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110)
  loc_15AC54C:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AC568:         Set var_10C = Me.GridSel
  loc_15AC56E:         Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110)
  loc_15AC576:         var_108 = var_110.Width
  loc_15AC588:         Set var_8C = Me.GridSel
  loc_15AC58E:         Call 0.Method_Proc_249_90_15ACC2C0 (2, var_E8)
  loc_15AC5B4:         Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H32))
  loc_15AC5D0:       Else
  loc_15AC5DB:         If (var_F8 = 4) Then
  loc_15AC5EF:           Set var_8C = Me.GridSel
  loc_15AC5F5:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15AC5FD:           var_E8.Left = var_108
  loc_15AC60D:           Set var_E8 = Me.FGrid
  loc_15AC613:           var_108 = var_E8.Height
  loc_15AC63A:           var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15AC648:           Set var_10C = Me.GridSel
  loc_15AC64E:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110, CVar(CDbl(&H4B)))
  loc_15AC656:           var_110.Top = var_108
  loc_15AC676:           Set var_8C = Me.GridSel
  loc_15AC67C:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC69B:           Set var_10C = Me.Check1
  loc_15AC6A1:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15AC6A9:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AC6C5:           Set var_8C = Me.GridSel
  loc_15AC6CB:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC6EA:           Set var_10C = Me.Check1
  loc_15AC6F0:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15AC6F8:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AC714:           Set var_10C = Me.GridSel
  loc_15AC71A:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15AC722:           var_108 = var_110.Width
  loc_15AC734:           Set var_8C = Me.GridSel
  loc_15AC73A:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC755:           var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H19))) 'Single
  loc_15AC763:           Set var_114 = Me.GridSel
  loc_15AC769:           Call 0.Method_Proc_249_90_15ACC2C0 (2, var_118, CVar(CDbl(&H4B)))
  loc_15AC771:           var_118.Left = var_108
  loc_15AC790:           Set var_E8 = Me.FGrid
  loc_15AC796:           var_108 = var_E8.Height
  loc_15AC7BD:           var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15AC7CB:           Set var_10C = Me.GridSel
  loc_15AC7D1:           Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110, CVar(CDbl(&H4B)))
  loc_15AC7D9:           var_110.Top = var_108
  loc_15AC7F9:           Set var_8C = Me.GridSel
  loc_15AC7FF:           Call 0.Method_Proc_249_90_15ACC2C0 (2, var_E8)
  loc_15AC81E:           Set var_10C = Me.Check1
  loc_15AC824:           Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110)
  loc_15AC82C:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AC848:           Set var_8C = Me.GridSel
  loc_15AC84E:           Call 0.Method_Proc_249_90_15ACC2C0 (2, var_E8)
  loc_15AC86D:           Set var_10C = Me.Check1
  loc_15AC873:           Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110)
  loc_15AC87B:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AC897:           Set var_8C = Me.GridSel
  loc_15AC89D:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC8BC:           Set var_10C = Me.GridSel
  loc_15AC8C2:           Call 0.Method_Proc_249_90_15ACC2C0 (3, var_110)
  loc_15AC8CA:           var_110.Left = CVar(CDbl(var_E8.Left))
  loc_15AC8E6:           Set var_10C = Me.GridSel
  loc_15AC8EC:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15AC8F4:           var_108 = var_110.Height
  loc_15AC906:           Set var_8C = Me.GridSel
  loc_15AC90C:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15AC927:           var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15AC935:           Set var_114 = Me.GridSel
  loc_15AC93B:           Call 0.Method_Proc_249_90_15ACC2C0 (3, var_118, CVar(CDbl(var_E8.Left)))
  loc_15AC943:           var_118.Top = var_108
  loc_15AC967:           Set var_8C = Me.GridSel
  loc_15AC96D:           Call 0.Method_Proc_249_90_15ACC2C0 (3, var_E8)
  loc_15AC98C:           Set var_10C = Me.Check1
  loc_15AC992:           Call 0.Method_Proc_249_90_15ACC2C0 (3, var_110)
  loc_15AC99A:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AC9B6:           Set var_8C = Me.GridSel
  loc_15AC9BC:           Call 0.Method_Proc_249_90_15ACC2C0 (3, var_E8)
  loc_15AC9DB:           Set var_10C = Me.Check1
  loc_15AC9E1:           Call 0.Method_Proc_249_90_15ACC2C0 (3, var_110)
  loc_15AC9E9:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15ACA05:           Set var_10C = Me.GridSel
  loc_15ACA0B:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15ACA13:           var_108 = var_110.Width
  loc_15ACA25:           Set var_8C = Me.GridSel
  loc_15ACA2B:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15ACA46:           var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15ACA54:           Set var_114 = Me.GridSel
  loc_15ACA5A:           Call 0.Method_Proc_249_90_15ACC2C0 (4, var_118, CVar(CDbl(var_E8.Left)))
  loc_15ACA62:           var_118.Left = var_108
  loc_15ACA86:           Set var_10C = Me.GridSel
  loc_15ACA8C:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_110)
  loc_15ACA94:           var_108 = var_110.Height
  loc_15ACAA6:           Set var_8C = Me.GridSel
  loc_15ACAAC:           Call 0.Method_Proc_249_90_15ACC2C0 (1, var_E8)
  loc_15ACAC7:           var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15ACAD5:           Set var_114 = Me.GridSel
  loc_15ACADB:           Call 0.Method_Proc_249_90_15ACC2C0 (4, var_118, CVar(CDbl(var_E8.Left)))
  loc_15ACAE3:           var_118.Top = var_108
  loc_15ACB07:           Set var_8C = Me.GridSel
  loc_15ACB0D:           Call 0.Method_Proc_249_90_15ACC2C0 (4, var_E8)
  loc_15ACB2C:           Set var_10C = Me.Check1
  loc_15ACB32:           Call 0.Method_Proc_249_90_15ACC2C0 (4, var_110)
  loc_15ACB3A:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15ACB56:           Set var_8C = Me.GridSel
  loc_15ACB5C:           Call 0.Method_Proc_249_90_15ACC2C0 (4, var_E8)
  loc_15ACB7B:           Set var_10C = Me.Check1
  loc_15ACB81:           Call 0.Method_Proc_249_90_15ACC2C0 (4, var_110)
  loc_15ACB89:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15ACBA5:           Set var_10C = Me.GridSel
  loc_15ACBAB:           Call 0.Method_Proc_249_90_15ACC2C0 (2, var_110)
  loc_15ACBC5:           Set var_8C = Me.GridSel
  loc_15ACBCB:           Call 0.Method_Proc_249_90_15ACC2C0 (2, var_E8)
  loc_15ACBF1:           Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_110.Width)) + CDbl(&H32))
  loc_15ACC0A:         End If
  loc_15ACC0A:       End If
  loc_15ACC0A:     End If
  loc_15ACC0A:   End If
  loc_15ACC0A: End If
  loc_15ACC23: global_144 = CLng(Me.PictParameter.Width)
  loc_15ACC29: Exit Sub
End Sub

Public Sub Proc_249_91_E4BC0C
  'Data Table: 577EF0
  loc_E4BBF3: If (Me.FrmList.Visible = &HFF) Then
  loc_E4BC02:   Me.FrmList.Visible = False
  loc_E4BC0A: End If
  loc_E4BC0A: Exit Sub
End Sub

Public Sub Proc_249_92_12A2E60(arg_C, arg_10, arg_14) '12A2E60
  'Data Table: 577EF0
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_F0 As Long
  Dim var_E0 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_11C As MSHFlexGrid
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_24C As Variant
  Dim var_256 As Integer
  loc_12A2882: On Error Goto loc_12A2E4A
  loc_12A2888: var_8C = vbNullString
  loc_12A2893: CRefVarAry
  loc_12A289B: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_12A28BC:   If (arg_C(var_8E) = 0) Then
  loc_12A28BF:     GoTo loc_12A2C9B
  loc_12A28C2:   End If
  loc_12A28D3:   var_90 = CInt(arg_C(var_8E))
  loc_12A28DD:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A28F5:   Set var_DC = Me.GridSel
  loc_12A28FB:   Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_E0, 0)
  loc_12A2923:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_12A292F:     If (CInt(arg_14) = 0) Then
  loc_12A2936:       var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A294E:       Set var_DC = Me.GridSel
  loc_12A2954:       Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_E0, 2, var_A8)
  loc_12A2999:       Set var_118 = Me.GridSel
  loc_12A299F:       Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_11C, 2, CVar(CLng(var_90)), ",")
  loc_12A29C0:       var_1AC = (CVar(var_8C) + Trim(CVar(CStr(var_11C.TextMatrix)))))
  loc_12A29DE:       var_1EC = (var_A8 + IIf((var_8C = vbNullString), Trim(CVar(CStr(var_E0.TextMatrix)))), var_1AC))
  loc_12A29E3:       var_8C = CStr(var_1EC)
  loc_12A2A0B:     Else
  loc_12A2A14:       If (CInt(arg_14) = 1) Then
  loc_12A2A33:         Set var_DC = Me.GridSel
  loc_12A2A39:         Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_E0, 2)
  loc_12A2A83:         Set var_118 = Me.GridSel
  loc_12A2A89:         Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_11C, 2, CVar(CLng(var_90)), CVar("," & "'"))
  loc_12A2AAA:         var_1FC = (CVar(var_8C) + Trim(CVar(CStr(var_11C.TextMatrix)))))
  loc_12A2AB3:         var_20C = (var_1FC + "'")
  loc_12A2ABF:         var_16C = ("'" + Trim(CVar(CStr(var_E0.TextMatrix)))))
  loc_12A2AC8:         var_17C = (var_11C.TextMatrix) + "'")
  loc_12A2AE3:         var_24C = (CVar(CLng(var_90)) + IIf((var_8C = vbNullString), CVar(CStr(var_11C.TextMatrix))), var_20C))
  loc_12A2AE8:         var_8C = CStr(var_24C)
  loc_12A2B15:       End If
  loc_12A2B15:     End If
  loc_12A2B34:     Set var_DC = Me.GridSel
  loc_12A2B3A:     Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_12A2B6C:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_12A2B8B:       Set var_DC = Me.GridSel
  loc_12A2B91:       Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_E0, 1)
  loc_12A2BAA:       var_114 = Trim(CVar(CStr(var_E0.TextMatrix))))
  loc_12A2BD6:       Set var_118 = Me.GridSel
  loc_12A2BDC:       Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_11C, 1, CVar(CLng(var_90)), ",")
  loc_12A2BE4:       var_16C = var_11C.TextMatrix)
  loc_12A2BEF:       var_17C = CVar(CStr(var_16C)) 'String
  loc_12A2BFD:       var_1AC = (CVar(var_94) + Trim(var_17C))
  loc_12A2C1B:       var_1EC = (CVar(CLng(var_90)) + IIf((var_94 = vbNullString), var_114, CVar(CStr(var_11C.TextMatrix)))))
  loc_12A2C20:       var_94 = CStr(CVar("," & "'"))
  loc_12A2C45:     End If
  loc_12A2C49:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A2C67:     Set var_DC = Me.GridSel
  loc_12A2C6D:     Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_E0, vbNullString, 0)
  loc_12A2C75:     LateIdCallSt
  loc_12A2C87:   Else
  loc_12A2C8E:     var_B8 = 0
  loc_12A2C97:     VarIndexSt
  loc_12A2C9B:   End If
  loc_12A2C9B:   ' Referenced from: 12A28BF
  loc_12A2C9E: Next var_98 'Integer
  loc_12A2CAB: CRefVarAry
  loc_12A2CB3: For var_254 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_254 'Integer
  loc_12A2CEB:   If CBool(arg_C(var_8E) <> 0) Then
  loc_12A2CF2:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_12A2D10:     Set var_DC = Me.GridSel
  loc_12A2D16:     Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_E0, "ü", 0)
  loc_12A2D1E:     LateIdCallSt
  loc_12A2D2D:   End If
  loc_12A2D30: Next var_254 'Integer
  loc_12A2D3D: If (var_8C = vbNullString) Then
  loc_12A2D40:   var_A8 = 0
  loc_12A2D49:   var_F0 = 1
  loc_12A2D5C:   Set var_DC = Me.GridSel
  loc_12A2D62:   Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_E0)
  loc_12A2D6A:   var_C8 = var_E0.TextMatrix)
  loc_12A2D92:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_114, var_16C, var_17C)
  loc_12A2DB8:   Set var_DC = Me.GridSel
  loc_12A2DBE:   Call 0.Method_Proc_249_92_12A2E600 (arg_10, var_E0, var_C8)
  loc_12A2DDD:   Proc_249_92_12A2E60 = 0
  loc_12A2DE3: End If
  loc_12A2DE6: var_88 = var_8C
  loc_12A2DEC: var_256 = arg_10
  loc_12A2DF5: If (var_256 = 1) Then
  loc_12A2DFE:   global_72 = var_94
  loc_12A2E05: Else
  loc_12A2E0B:   If (var_256 = 2) Then
  loc_12A2E14:     global_76 = var_94
  loc_12A2E1B:   Else
  loc_12A2E21:     If (var_256 = 3) Then
  loc_12A2E2A:       global_80 = var_94
  loc_12A2E31:     Else
  loc_12A2E37:       If (var_256 = 4) Then
  loc_12A2E40:         global_84 = var_94
  loc_12A2E44:       End If
  loc_12A2E44:     End If
  loc_12A2E44:   End If
  loc_12A2E44: End If
  loc_12A2E44: Proc_249_92_12A2E60 = var_256
  loc_12A2E4A: ' Referenced from: 12A2882
  loc_12A2E52: Proc_6_60_E63754(0, GridSel.DispID_8001)
  loc_12A2E57: Proc_249_92_12A2E60 = var_F0
End Sub

Public Sub Proc_249_93_F035FC
  'Data Table: 577EF0
  Dim var_CC As Variant
  loc_F03541: If (CLng(Me.FGrid.Row) = CLng(global_124)) Then
  loc_F03552:   Proc_303_0_FBACC8("	")
  loc_F0355A:   Exit Sub
  loc_F0355B: End If
  loc_F0359A: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F035A7:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F035CE:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F035D8:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F035E7:     Me.FGrid.Row = var_CC
  loc_F035EF:     Exit For
  loc_F035F2:   End If
  loc_F035F5: Next var_BC 'Integer
  loc_F035FA: ' Referenced from: F035EF
  loc_F035FA: Exit Sub
End Sub

Public Sub Proc_249_94_1214024(arg_C, arg_10) '1214024
  'Data Table: 577EF0
  Dim var_86 As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_1213B47: var_86 = arg_C
  loc_1213B50: If (var_86 = 1) Then
  loc_1213B6F:   Me.Recordset15.CursorLocation = 3
  loc_1213B98:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1213BA6:   CVarUnk
  loc_1213BAB:   VerifyVarObj
  loc_1213BB7:   Set var_8C = Me.GridSel
  loc_1213BBD:   Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, New)
  loc_1213BC5:   LateIdStAd
  loc_1213BE7:   ReDim Preserve global_172(0 To 0)
  loc_1213BFE:   global_172(0) = 0
  loc_1213BFF: End If
  loc_1213C05: If (var_86 = 2) Then
  loc_1213C24:   Me.Recordset15.CursorLocation = 3
  loc_1213C4D:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1213C5B:   CVarUnk
  loc_1213C60:   VerifyVarObj
  loc_1213C6C:   Set var_8C = Me.GridSel
  loc_1213C72:   Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, New, 1, -1)
  loc_1213C7A:   LateIdStAd
  loc_1213C9C:   ReDim Preserve global_176(0 To 0)
  loc_1213CB3:   global_176(0) = 0
  loc_1213CB4: End If
  loc_1213CBA: If (var_86 = 3) Then
  loc_1213CD9:   Me.Recordset15.CursorLocation = 3
  loc_1213D02:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1213D10:   CVarUnk
  loc_1213D15:   VerifyVarObj
  loc_1213D21:   Set var_8C = Me.GridSel
  loc_1213D27:   Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, New, 1, -1)
  loc_1213D2F:   LateIdStAd
  loc_1213D51:   ReDim Preserve global_180(0 To 0)
  loc_1213D68:   global_180(0) = 0
  loc_1213D69: End If
  loc_1213D6F: If (var_86 = 4) Then
  loc_1213D8E:   Me.Recordset15.CursorLocation = 3
  loc_1213DB7:   Me.Open CVar(arg_10), CVar(MemVar_1F95044), 3
  loc_1213DC5:   CVarUnk
  loc_1213DCA:   VerifyVarObj
  loc_1213DD6:   Set var_8C = Me.GridSel
  loc_1213DDC:   Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, New, 1, -1, var_B0)
  loc_1213DE4:   LateIdStAd
  loc_1213E06:   ReDim Preserve global_184(0 To 0)
  loc_1213E1D:   global_184(0) = 0
  loc_1213E1E: End If
  loc_1213E2C: Set var_8C = Me.GridSel
  loc_1213E32: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, True, var_B0, var_B0)
  loc_1213E3A: var_B0.Visible = var_B0
  loc_1213E55: Set var_8C = Me.GridSel
  loc_1213E5B: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, False)
  loc_1213E63: var_B0.Enabled = 1
  loc_1213E7B: Set var_8C = Me.Check1
  loc_1213E81: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, &HFF)
  loc_1213E89: var_B0.Visible = True
  loc_1213EA8: Set var_8C = Me.GridSel
  loc_1213EAE: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0)
  loc_1213EB6: var_B0.Width = CVar(CDbl(4500))
  loc_1213EC2: var_9C = 0
  loc_1213EDE: Set var_8C = Me.GridSel
  loc_1213EE4: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, &H258)
  loc_1213EEC: LateIdCallSt
  loc_1213F17: Set var_8C = Me.GridSel
  loc_1213F1D: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, 0, 2)
  loc_1213F25: LateIdCallSt
  loc_1213F50: Set var_8C = Me.GridSel
  loc_1213F56: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, &HE10, 1)
  loc_1213F5E: LateIdCallSt
  loc_1213F7C: Set var_8C = Me.Check1
  loc_1213F82: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, CDbl(550), var_B0)
  loc_1213F8A: var_B0.Width = var_B0
  loc_1213F96: var_9C = 0
  loc_1213FA9: Set var_8C = Me.GridSel
  loc_1213FAF: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, var_9C)
  loc_1213FD5: Set var_E4 = Me.Check1
  loc_1213FDB: Call 0.Method_Proc_249_94_12140240 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_1213FE3: var_E8.Height = var_B0
  loc_1214006: Set var_8C = Me.Check1
  loc_121400C: Call 0.Method_Proc_249_94_12140240 (var_86, var_B0, CInt(1))
  loc_1214014: var_B0.Value = var_9C
  loc_1214020: Exit Sub
  loc_1214021: var_86.global_17923 = 
End Sub

Public Sub Proc_249_95_16526E4
  'Data Table: 577EF0
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_EC As String
  Dim var_10C As Variant
  Dim var_110 As MSHFlexGrid
  Dim var_11C As String
  Dim var_124 As String
  Dim var_120 As String
  Dim var_150 As Variant
  loc_16510BE: var_98 = global_52
  loc_16510C9: If (var_98 = "SalesRegister") Then
  loc_16510D0:   Set var_9C = Me.FGrid
  loc_16510D6:   var_AC = CVar(CLng(0)) 'Long
  loc_16510DB:   var_CC = 0
  loc_16510E4:   var_EC = "From Date"
  loc_16510ED:   LateIdCallSt
  loc_16510F8:   var_AC = CVar(CLng(0)) 'Long
  loc_16510FD:   var_CC = &H10E
  loc_1651109:   LateIdCallSt
  loc_1651114:   var_AC = CVar(CLng(1)) 'Long
  loc_1651119:   var_CC = 0
  loc_1651122:   var_EC = "To Date"
  loc_165112B:   LateIdCallSt
  loc_1651136:   var_AC = CVar(CLng(1)) 'Long
  loc_165113B:   var_CC = &H10E
  loc_1651147:   LateIdCallSt
  loc_1651152:   var_AC = CVar(CLng(2)) 'Long
  loc_1651157:   var_CC = 0
  loc_1651160:   var_EC = "Item Wise"
  loc_1651169:   LateIdCallSt
  loc_1651174:   var_AC = CVar(CLng(2)) 'Long
  loc_1651179:   var_CC = &H10E
  loc_1651185:   LateIdCallSt
  loc_1651190:   var_AC = CVar(CLng(0)) 'Long
  loc_1651195:   var_CC = 1
  loc_16511A3:   var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_16511AA:   LateIdCallSt
  loc_16511B8:   var_AC = CVar(CLng(1)) 'Long
  loc_16511BD:   var_CC = 1
  loc_16511CB:   var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_16511D2:   LateIdCallSt
  loc_16511E0:   var_AC = CVar(CLng(2)) 'Long
  loc_16511E5:   var_CC = 1
  loc_16511EE:   var_EC = "Yes"
  loc_16511F7:   LateIdCallSt
  loc_1651201:   Set var_9C = Nothing 
  loc_1651225:   Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1651234:   global_124 = CInt(2)
  loc_165123F:   global_128 = 0
  loc_1651246: Else
  loc_165124E:   If (var_98 = "PartyOutStanding") Then
  loc_1651255:     Set var_114 = Me.FGrid
  loc_165125B:     var_AC = CVar(CLng(0)) 'Long
  loc_1651260:     var_CC = 0
  loc_1651269:     var_EC = "From Date"
  loc_1651272:     LateIdCallSt
  loc_165127D:     var_AC = CVar(CLng(0)) 'Long
  loc_1651282:     var_CC = &H10E
  loc_165128E:     LateIdCallSt
  loc_1651299:     var_AC = CVar(CLng(1)) 'Long
  loc_165129E:     var_CC = 0
  loc_16512A7:     var_EC = "To Date"
  loc_16512B0:     LateIdCallSt
  loc_16512BB:     var_AC = CVar(CLng(1)) 'Long
  loc_16512C0:     var_CC = &H10E
  loc_16512CC:     LateIdCallSt
  loc_16512D7:     var_AC = CVar(CLng(0)) 'Long
  loc_16512DC:     var_CC = 1
  loc_16512EA:     var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_16512F1:     LateIdCallSt
  loc_16512FF:     var_AC = CVar(CLng(1)) 'Long
  loc_1651304:     var_CC = 1
  loc_1651312:     var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651319:     LateIdCallSt
  loc_1651326:     Set var_114 = Nothing 
  loc_165134A:     Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1651359:     global_124 = CInt(1)
  loc_1651364:     global_128 = 0
  loc_165136B:   Else
  loc_1651373:     If (var_98 = "PartyWiseOutStanding") Then
  loc_165137A:       Set var_118 = Me.FGrid
  loc_1651380:       var_AC = CVar(CLng(0)) 'Long
  loc_1651385:       var_CC = 0
  loc_165138E:       var_EC = "For Date"
  loc_1651397:       LateIdCallSt
  loc_16513A2:       var_AC = CVar(CLng(0)) 'Long
  loc_16513A7:       var_CC = &H10E
  loc_16513B3:       LateIdCallSt
  loc_16513BE:       var_AC = CVar(CLng(0)) 'Long
  loc_16513C3:       var_CC = 1
  loc_16513D1:       var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_16513D8:       LateIdCallSt
  loc_16513E6:       var_AC = CVar(CLng(1)) 'Long
  loc_16513EB:       var_CC = 0
  loc_16513F4:       var_EC = "To Date"
  loc_16513FD:       LateIdCallSt
  loc_1651408:       var_AC = CVar(CLng(1)) 'Long
  loc_165140D:       var_CC = &H10E
  loc_1651419:       LateIdCallSt
  loc_1651424:       var_AC = CVar(CLng(1)) 'Long
  loc_165143E:       LateIdCallSt
  loc_1651456:       global_126 = CInt(0)
  loc_165146F:       Me.FGrid.Row = CVar(CLng(global_126))
  loc_1651481:       var_AC = 1
  loc_165149E:       var_124 = "Select Distinct '' As O, Party as PartyName, Party as Code From Hallsale1 WHERE Logsite_Code='" & global_88 & "' and RestCode='"
  loc_16514AA:       Call 0.Method_arg_1C0 (var_120, var_124, var_AC, CInt(1), global_126, Nothing, CVar(CStr(MemVar_1F950EC)), 1)
  loc_16514D0:       Call Proc_249_94_1214024(1, var_AC & var_120 & "' Order By Party")
  loc_16514D8:     Else
  loc_16514E0:       If (var_98 = "CashierCollection") Then
  loc_16514E7:         Set var_130 = Me.FGrid
  loc_16514ED:         var_AC = CVar(CLng(0)) 'Long
  loc_16514F2:         var_CC = 0
  loc_16514FB:         var_EC = "For Date"
  loc_1651504:         LateIdCallSt
  loc_165150F:         var_AC = CVar(CLng(0)) 'Long
  loc_1651514:         var_CC = &H10E
  loc_1651520:         LateIdCallSt
  loc_165152B:         var_AC = CVar(CLng(0)) 'Long
  loc_1651530:         var_CC = 1
  loc_165153E:         var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651545:         LateIdCallSt
  loc_1651553:         var_AC = CVar(CLng(1)) 'Long
  loc_1651558:         var_CC = 0
  loc_1651561:         var_EC = "To Date"
  loc_165156A:         LateIdCallSt
  loc_1651575:         var_AC = CVar(CLng(1)) 'Long
  loc_165157A:         var_CC = &H10E
  loc_1651586:         LateIdCallSt
  loc_1651591:         var_AC = CVar(CLng(1)) 'Long
  loc_1651596:         var_CC = 1
  loc_16515A4:         var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_16515AB:         LateIdCallSt
  loc_16515B8:         Set var_130 = Nothing 
  loc_16515DC:         Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_16515EB:         global_124 = CInt(1)
  loc_16515F6:         global_128 = 1
  loc_165160B:         var_120 = "Select Distinct '' As O,U_Name As Name,U_Name As Code From PayChargeH Where Logsite_Code='" & global_88 & "' and RIGHT(Site_Code,1)='"
  loc_165162D:         Call Proc_249_94_1214024(1, var_120 & MemVar_1F95078 & "' Order By U_Name")
  loc_1651635:       Else
  loc_165163D:         If (var_98 = "CashierCollectionMIS") Then
  loc_1651644:           Set var_134 = Me.FGrid
  loc_165164A:           var_AC = CVar(CLng(0)) 'Long
  loc_165164F:           var_CC = 0
  loc_1651658:           var_EC = "For Date"
  loc_1651661:           LateIdCallSt
  loc_165166C:           var_AC = CVar(CLng(0)) 'Long
  loc_1651671:           var_CC = &H10E
  loc_165167D:           LateIdCallSt
  loc_1651688:           var_AC = CVar(CLng(0)) 'Long
  loc_165168D:           var_CC = 1
  loc_165169B:           var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_16516A2:           LateIdCallSt
  loc_16516B0:           var_AC = CVar(CLng(1)) 'Long
  loc_16516B5:           var_CC = 0
  loc_16516BE:           var_EC = "To Date"
  loc_16516C7:           LateIdCallSt
  loc_16516D2:           var_AC = CVar(CLng(1)) 'Long
  loc_16516D7:           var_CC = &H10E
  loc_16516E3:           LateIdCallSt
  loc_16516EE:           var_AC = CVar(CLng(1)) 'Long
  loc_16516F3:           var_CC = 1
  loc_1651701:           var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651708:           LateIdCallSt
  loc_1651715:           Set var_134 = Nothing 
  loc_1651739:           Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1651748:           global_124 = CInt(1)
  loc_1651753:           global_128 = 0
  loc_165175A:         Else
  loc_1651762:           If (var_98 = "BookingDetail") Then
  loc_1651769:             Set var_138 = Me.FGrid
  loc_165176F:             var_AC = CVar(CLng(0)) 'Long
  loc_1651774:             var_CC = 0
  loc_165177D:             var_EC = "From Date"
  loc_1651786:             LateIdCallSt
  loc_1651791:             var_AC = CVar(CLng(0)) 'Long
  loc_1651796:             var_CC = &H10E
  loc_16517A2:             LateIdCallSt
  loc_16517AD:             var_AC = CVar(CLng(1)) 'Long
  loc_16517B2:             var_CC = 0
  loc_16517BB:             var_EC = "To Date"
  loc_16517C4:             LateIdCallSt
  loc_16517CF:             var_AC = CVar(CLng(1)) 'Long
  loc_16517D4:             var_CC = &H10E
  loc_16517E0:             LateIdCallSt
  loc_16517EB:             var_AC = CVar(CLng(2)) 'Long
  loc_16517F0:             var_CC = 0
  loc_16517F9:             var_EC = "Status"
  loc_1651802:             LateIdCallSt
  loc_165180D:             var_AC = CVar(CLng(2)) 'Long
  loc_1651812:             var_CC = &H10E
  loc_165181E:             LateIdCallSt
  loc_1651829:             var_AC = CVar(CLng(0)) 'Long
  loc_165182E:             var_CC = 1
  loc_165183C:             var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651843:             LateIdCallSt
  loc_1651851:             var_AC = CVar(CLng(1)) 'Long
  loc_1651856:             var_CC = 1
  loc_1651864:             var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_165186B:             LateIdCallSt
  loc_1651879:             var_AC = CVar(CLng(2)) 'Long
  loc_165187E:             var_CC = 1
  loc_1651887:             var_EC = "Active"
  loc_1651890:             LateIdCallSt
  loc_165189A:             Set var_138 = Nothing 
  loc_16518BE:             Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_16518CD:             global_124 = CInt(2)
  loc_16518D8:             global_128 = 0
  loc_16518DF:           Else
  loc_16518E7:             If (var_98 = "SettleRepHall") Then
  loc_16518EE:               Set var_13C = Me.FGrid
  loc_16518F4:               var_AC = CVar(CLng(0)) 'Long
  loc_16518F9:               var_CC = 0
  loc_1651902:               var_EC = "For Date"
  loc_165190B:               LateIdCallSt
  loc_1651916:               var_AC = CVar(CLng(0)) 'Long
  loc_165191B:               var_CC = &H10E
  loc_1651927:               LateIdCallSt
  loc_1651932:               var_AC = CVar(CLng(0)) 'Long
  loc_1651937:               var_CC = 1
  loc_1651945:               var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_165194C:               LateIdCallSt
  loc_165195A:               var_AC = CVar(CLng(1)) 'Long
  loc_165195F:               var_CC = 0
  loc_1651968:               var_EC = "To Date"
  loc_1651971:               LateIdCallSt
  loc_165197C:               var_AC = CVar(CLng(1)) 'Long
  loc_1651981:               var_CC = &H10E
  loc_165198D:               LateIdCallSt
  loc_1651998:               var_AC = CVar(CLng(1)) 'Long
  loc_165199D:               var_CC = 1
  loc_16519AB:               var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_16519B2:               LateIdCallSt
  loc_16519BF:               Set var_13C = Nothing 
  loc_16519E3:               Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_16519F2:               global_124 = CInt(1)
  loc_16519FD:               global_128 = 1
  loc_1651A12:               var_120 = "Select Distinct '' As O,U_Name As Name,U_Name As Code From Sale1 Where Logsite_Code='" & global_88 & "' and RIGHT(Site_Code,1)='"
  loc_1651A34:               Call Proc_249_94_1214024(1, var_120 & MemVar_1F95070 & "' Order By U_Name")
  loc_1651A3C:             Else
  loc_1651A44:               If (var_98 = "TaxReportHall") Then
  loc_1651A4B:                 Set var_140 = Me.FGrid
  loc_1651A51:                 var_AC = CVar(CLng(0)) 'Long
  loc_1651A56:                 var_CC = 0
  loc_1651A5F:                 var_EC = "From Date"
  loc_1651A68:                 LateIdCallSt
  loc_1651A73:                 var_AC = CVar(CLng(0)) 'Long
  loc_1651A78:                 var_CC = &H10E
  loc_1651A84:                 LateIdCallSt
  loc_1651A8F:                 var_AC = CVar(CLng(0)) 'Long
  loc_1651A94:                 var_CC = 1
  loc_1651AA2:                 var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651AA9:                 LateIdCallSt
  loc_1651AB7:                 var_AC = CVar(CLng(1)) 'Long
  loc_1651ABC:                 var_CC = 0
  loc_1651AC5:                 var_EC = "To Date"
  loc_1651ACE:                 LateIdCallSt
  loc_1651AD9:                 var_AC = CVar(CLng(1)) 'Long
  loc_1651ADE:                 var_CC = &H10E
  loc_1651AEA:                 LateIdCallSt
  loc_1651AF5:                 var_AC = CVar(CLng(1)) 'Long
  loc_1651AFA:                 var_CC = 1
  loc_1651B08:                 var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651B0F:                 LateIdCallSt
  loc_1651B1C:                 Set var_140 = Nothing 
  loc_1651B40:                 Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1651B4F:                 global_124 = CInt(1)
  loc_1651B5A:                 global_128 = 1
  loc_1651B65:                 var_88 = "Select Distinct '' As O,Q.Name As TaxName,Q.code From (SELECT RevMast.Name,RevMast.code,RevMast.Sundry,P.TaxPer FROM (HallSale2 P INNER JOIN RevMast ON P.TaxCode = RevMast.Code) where RevMast.FieldType='T' And P.DELFLAG<>'D'" & "Union All SELECT RevMast.Name,RevMast.Code,RevMast.Sundry,P.SValue TaxPer FROM (SunTranH P INNER JOIN RevMast ON P.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code where RevMast.FieldType='T' And P.DELFLAG<>'D')Q Order by Q.Name"
  loc_1651B70:                 Call Proc_249_94_1214024(1, var_88)
  loc_1651B78:               Else
  loc_1651B80:                 If (var_98 = "TaxwiseDetailReportHall") Then
  loc_1651B87:                   Set var_144 = Me.FGrid
  loc_1651B8D:                   var_AC = CVar(CLng(0)) 'Long
  loc_1651B92:                   var_CC = 0
  loc_1651B9B:                   var_EC = "From Date"
  loc_1651BA4:                   LateIdCallSt
  loc_1651BAF:                   var_AC = CVar(CLng(0)) 'Long
  loc_1651BB4:                   var_CC = &H10E
  loc_1651BC0:                   LateIdCallSt
  loc_1651BCB:                   var_AC = CVar(CLng(0)) 'Long
  loc_1651BD0:                   var_CC = 1
  loc_1651BDE:                   var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651BE5:                   LateIdCallSt
  loc_1651BF3:                   var_AC = CVar(CLng(1)) 'Long
  loc_1651BF8:                   var_CC = 0
  loc_1651C01:                   var_EC = "To Date"
  loc_1651C0A:                   LateIdCallSt
  loc_1651C15:                   var_AC = CVar(CLng(1)) 'Long
  loc_1651C1A:                   var_CC = &H10E
  loc_1651C26:                   LateIdCallSt
  loc_1651C31:                   var_AC = CVar(CLng(1)) 'Long
  loc_1651C36:                   var_CC = 1
  loc_1651C44:                   var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651C4B:                   LateIdCallSt
  loc_1651C58:                   Set var_144 = Nothing 
  loc_1651C7C:                   Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1651C8B:                   global_124 = CInt(1)
  loc_1651C96:                   global_128 = 1
  loc_1651C9D:                   var_88 = "Select Distinct '' As O,RevMast.Name As TaxName,RevMast.Code As Code FROM (SunTransaction Inner join revmast on SunTransaction.revCode=Revmast.Code) Inner join SundryMast on Revmast.Sundry=SundryMast.Code Order By RevMast.Name Desc"
  loc_1651CA8:                   Call Proc_249_94_1214024(1, var_88)
  loc_1651CB0:                 Else
  loc_1651CB8:                   If (var_98 = "TaxSummaryHall") Then
  loc_1651CBF:                     Set var_148 = Me.FGrid
  loc_1651CC5:                     var_AC = CVar(CLng(0)) 'Long
  loc_1651CCA:                     var_CC = 0
  loc_1651CD3:                     var_EC = "From Date"
  loc_1651CDC:                     LateIdCallSt
  loc_1651CE7:                     var_AC = CVar(CLng(0)) 'Long
  loc_1651CEC:                     var_CC = &H10E
  loc_1651CF8:                     LateIdCallSt
  loc_1651D03:                     var_AC = CVar(CLng(0)) 'Long
  loc_1651D08:                     var_CC = 1
  loc_1651D16:                     var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651D1D:                     LateIdCallSt
  loc_1651D2B:                     var_AC = CVar(CLng(1)) 'Long
  loc_1651D30:                     var_CC = 0
  loc_1651D39:                     var_EC = "To Date"
  loc_1651D42:                     LateIdCallSt
  loc_1651D4D:                     var_AC = CVar(CLng(1)) 'Long
  loc_1651D52:                     var_CC = &H10E
  loc_1651D5E:                     LateIdCallSt
  loc_1651D69:                     var_AC = CVar(CLng(1)) 'Long
  loc_1651D6E:                     var_CC = 1
  loc_1651D7C:                     var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651D83:                     LateIdCallSt
  loc_1651D90:                     Set var_148 = Nothing 
  loc_1651DB4:                     Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1651DC3:                     global_124 = CInt(1)
  loc_1651DCE:                     global_128 = 0
  loc_1651DD5:                   Else
  loc_1651DDD:                     If (var_98 = "DailyFuncSheet") Then
  loc_1651DE4:                       Set var_14C = Me.FGrid
  loc_1651DEA:                       var_AC = CVar(CLng(0)) 'Long
  loc_1651DEF:                       var_CC = 0
  loc_1651DF8:                       var_EC = "From Date"
  loc_1651E01:                       LateIdCallSt
  loc_1651E0C:                       var_AC = CVar(CLng(0)) 'Long
  loc_1651E11:                       var_CC = &H10E
  loc_1651E1D:                       LateIdCallSt
  loc_1651E28:                       var_AC = CVar(CLng(0)) 'Long
  loc_1651E2D:                       var_CC = 1
  loc_1651E3B:                       var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651E42:                       LateIdCallSt
  loc_1651E50:                       var_AC = CVar(CLng(1)) 'Long
  loc_1651E55:                       var_CC = 0
  loc_1651E5E:                       var_EC = "To Date"
  loc_1651E67:                       LateIdCallSt
  loc_1651E72:                       var_AC = CVar(CLng(1)) 'Long
  loc_1651E77:                       var_CC = &H10E
  loc_1651E83:                       LateIdCallSt
  loc_1651E8E:                       var_AC = CVar(CLng(1)) 'Long
  loc_1651E93:                       var_CC = 1
  loc_1651EA1:                       var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1651EA8:                       LateIdCallSt
  loc_1651EB6:                       var_AC = CVar(CLng(2)) 'Long
  loc_1651EBB:                       var_CC = 0
  loc_1651EC4:                       var_EC = "Detail"
  loc_1651ECD:                       LateIdCallSt
  loc_1651ED8:                       var_AC = CVar(CLng(2)) 'Long
  loc_1651EDD:                       var_CC = &H10E
  loc_1651EE9:                       LateIdCallSt
  loc_1651EF4:                       var_AC = CVar(CLng(2)) 'Long
  loc_1651EF9:                       var_CC = 1
  loc_1651F02:                       var_EC = "Function"
  loc_1651F0B:                       LateIdCallSt
  loc_1651F16:                       var_AC = CVar(CLng(3)) 'Long
  loc_1651F1B:                       var_CC = 0
  loc_1651F24:                       var_EC = "Company (Only)"
  loc_1651F2D:                       LateIdCallSt
  loc_1651F38:                       var_AC = CVar(CLng(3)) 'Long
  loc_1651F3D:                       var_CC = &H10E
  loc_1651F49:                       LateIdCallSt
  loc_1651F54:                       var_AC = CVar(CLng(3)) 'Long
  loc_1651F59:                       var_CC = 1
  loc_1651F62:                       var_EC = "No"
  loc_1651F6B:                       LateIdCallSt
  loc_1651F76:                       var_AC = CVar(CLng(4)) 'Long
  loc_1651F7B:                       var_CC = 0
  loc_1651F84:                       var_EC = "Venue Selection"
  loc_1651F8D:                       LateIdCallSt
  loc_1651F98:                       var_AC = CVar(CLng(4)) 'Long
  loc_1651F9D:                       var_CC = &H10E
  loc_1651FA9:                       LateIdCallSt
  loc_1651FB4:                       var_AC = CVar(CLng(4)) 'Long
  loc_1651FC2:                       var_EC = "No"
  loc_1651FCB:                       LateIdCallSt
  loc_1651FD5:                       Set var_14C = Nothing 
  loc_1651FE0:                       global_126 = CInt(0)
  loc_1651FF9:                       Me.FGrid.Row = CVar(CLng(global_126))
  loc_165200B:                       var_AC = 2
  loc_1652021:                       var_11C = "Select Distinct '' As O, S.Name as Company, CompanyCode as Code From HallBook left Join SubGroup S On S.SubCode=HallBook.CompanyCode WHERE ISNULL(HallBook.CompanyCode,'')<>'' And HallBook.Logsite_Code='" & global_88
  loc_1652034:                       Call 0.Method_arg_1C0 (var_120, var_11C & "' and HallBook.RestCode='", var_AC, CInt(4), global_126, var_14C, var_EC, 1)
  loc_165205A:                       Call Proc_249_94_1214024(1, var_AC & var_120 & "' Order By S.Name")
  loc_1652062:                       var_AC = CVar(CLng(3)) 'Long
  loc_1652067:                       var_CC = 1
  loc_1652074:                       Set var_110 = Me.MemMas
  loc_1652096:                       If (CStr(MemMas.DispID_41) = "No") Then
  loc_1652099:                         var_AC = False
  loc_16520A7:                         Set var_110 = Me.Mem
  loc_16520AD:                         Call 0.Method_Proc_249_95_16526E40 (1, var_150, var_AC, var_CC, var_AC, var_14C)
  loc_16520B5:                         var_150.Visible = var_CC
  loc_16520CC:                         Set var_110 = Me.FA
  loc_16520D2:                         Call 0.Method_Proc_249_95_16526E40 (1, var_150, 0, var_AC)
  loc_16520DA:                         MDIForm1.FA.Visible = var_14C
  loc_16520E6:                       End If
  loc_16520F7:                       var_124 = "Select Distinct '' As O, Name as Venue, Code From VenueMast WHERE Logsite_Code='" & global_88 & "' and DepartCode='"
  loc_1652103:                       Call 0.Method_arg_1C0 (var_120, var_124)
  loc_1652129:                       Call Proc_249_94_1214024(2, var_EC & var_120 & "' Order By Name")
  loc_1652131:                       var_AC = CVar(CLng(4)) 'Long
  loc_1652143:                       Set var_110 = Me.MemMas
  loc_1652165:                       If (CStr(MemMas.DispID_41) = "No") Then
  loc_1652168:                         var_AC = False
  loc_1652176:                         Set var_110 = Me.Mem
  loc_165217C:                         Call 0.Method_Proc_249_95_16526E40 (2, var_150, var_AC)
  loc_1652184:                         var_150.Visible = 1
  loc_165219B:                         Set var_110 = Me.FA
  loc_16521A1:                         Call 0.Method_Proc_249_95_16526E40 (2, var_150, 0)
  loc_16521A9:                         MDIForm1.FA.Visible = var_AC
  loc_16521B5:                       End If
  loc_16521B8:                     Else
  loc_16521C0:                       If (var_98 = "CoverAnalysis") Then
  loc_16521C7:                         Set var_154 = Me.FGrid
  loc_16521CD:                         var_AC = CVar(CLng(0)) 'Long
  loc_16521D2:                         var_CC = 0
  loc_16521DB:                         var_EC = "From Date"
  loc_16521E4:                         LateIdCallSt
  loc_16521EF:                         var_AC = CVar(CLng(0)) 'Long
  loc_16521F4:                         var_CC = &H10E
  loc_1652200:                         LateIdCallSt
  loc_165220B:                         var_AC = CVar(CLng(0)) 'Long
  loc_1652210:                         var_CC = 1
  loc_165221E:                         var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_1652225:                         LateIdCallSt
  loc_1652233:                         var_AC = CVar(CLng(1)) 'Long
  loc_1652238:                         var_CC = 0
  loc_1652241:                         var_EC = "To Date"
  loc_165224A:                         LateIdCallSt
  loc_1652255:                         var_AC = CVar(CLng(1)) 'Long
  loc_165225A:                         var_CC = &H10E
  loc_1652266:                         LateIdCallSt
  loc_1652271:                         var_AC = CVar(CLng(1)) 'Long
  loc_1652276:                         var_CC = 1
  loc_1652284:                         var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_165228B:                         LateIdCallSt
  loc_1652298:                         Set var_154 = Nothing 
  loc_16522BC:                         Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_16522CB:                         global_124 = CInt(1)
  loc_16522D6:                         global_128 = 0
  loc_16522DD:                       Else
  loc_16522E5:                         If (var_98 = "ItemWiseSaleHall") Then
  loc_16522EC:                           Set var_158 = Me.FGrid
  loc_16522F2:                           var_AC = CVar(CLng(0)) 'Long
  loc_16522F7:                           var_CC = 0
  loc_1652300:                           var_EC = "From Date"
  loc_1652309:                           LateIdCallSt
  loc_1652314:                           var_AC = CVar(CLng(0)) 'Long
  loc_1652319:                           var_CC = &H10E
  loc_1652325:                           LateIdCallSt
  loc_1652330:                           var_AC = CVar(CLng(0)) 'Long
  loc_1652335:                           var_CC = 1
  loc_1652343:                           var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_165234A:                           LateIdCallSt
  loc_1652358:                           var_AC = CVar(CLng(1)) 'Long
  loc_165235D:                           var_CC = 0
  loc_1652366:                           var_EC = "To Date"
  loc_165236F:                           LateIdCallSt
  loc_165237A:                           var_AC = CVar(CLng(1)) 'Long
  loc_165237F:                           var_CC = &H10E
  loc_165238B:                           LateIdCallSt
  loc_1652396:                           var_AC = CVar(CLng(1)) 'Long
  loc_165239B:                           var_CC = 1
  loc_16523A9:                           var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_16523B0:                           LateIdCallSt
  loc_16523BD:                           Set var_158 = Nothing 
  loc_16523E1:                           Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_16523F0:                           global_124 = CInt(1)
  loc_16523FB:                           global_128 = 0
  loc_1652402:                         Else
  loc_165240A:                           If (var_98 = "CompanyWiseSaleHall") Then
  loc_1652411:                             Set var_15C = Me.FGrid
  loc_1652417:                             var_AC = CVar(CLng(0)) 'Long
  loc_165241C:                             var_CC = 0
  loc_1652425:                             var_EC = "For Date"
  loc_165242E:                             LateIdCallSt
  loc_1652439:                             var_AC = CVar(CLng(0)) 'Long
  loc_165243E:                             var_CC = &H10E
  loc_165244A:                             LateIdCallSt
  loc_1652455:                             var_AC = CVar(CLng(0)) 'Long
  loc_165245A:                             var_CC = 1
  loc_1652468:                             var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_165246F:                             LateIdCallSt
  loc_165247D:                             var_AC = CVar(CLng(1)) 'Long
  loc_1652482:                             var_CC = 0
  loc_165248B:                             var_EC = "To Date"
  loc_1652494:                             LateIdCallSt
  loc_165249F:                             var_AC = CVar(CLng(1)) 'Long
  loc_16524A4:                             var_CC = &H10E
  loc_16524B0:                             LateIdCallSt
  loc_16524BB:                             var_AC = CVar(CLng(1)) 'Long
  loc_16524D5:                             LateIdCallSt
  loc_16524ED:                             global_126 = CInt(0)
  loc_1652506:                             Me.FGrid.Row = CVar(CLng(global_126))
  loc_1652518:                             var_AC = 1
  loc_165252E:                             var_11C = "Select Distinct '' As O, S.Name as Company, CompanyCode as Code From HallBook left Join SubGroup S On S.SubCode=HallBook.CompanyCode WHERE ISNULL(HallBook.CompanyCode,'')<>'' And HallBook.Logsite_Code='" & global_88
  loc_1652541:                             Call 0.Method_arg_1C0 (var_120, var_11C & "' and HallBook.RestCode='", var_AC, CInt(1), global_126, Nothing, CVar(CStr(MemVar_1F950EC)), 1)
  loc_1652567:                             Call Proc_249_94_1214024(1, var_AC & var_120 & "' Order By S.Name")
  loc_165256F:                           Else
  loc_1652577:                             If (var_98 = "FunctionWiseItemDetail") Then
  loc_165257E:                               Set var_160 = Me.FGrid
  loc_1652584:                               var_AC = CVar(CLng(0)) 'Long
  loc_1652589:                               var_CC = 0
  loc_165259B:                               LateIdCallSt
  loc_16525A6:                               var_AC = CVar(CLng(0)) 'Long
  loc_16525AB:                               var_CC = &H10E
  loc_16525B7:                               LateIdCallSt
  loc_16525C2:                               var_AC = CVar(CLng(0)) 'Long
  loc_16525C7:                               var_CC = 1
  loc_16525D5:                               var_10C = CVar(CStr(MemVar_1F950EC)) 'String
  loc_16525DC:                               LateIdCallSt
  loc_16525E9:                               Set var_160 = Nothing 
  loc_16525F4:                               global_126 = CInt(0)
  loc_165260D:                               Me.FGrid.Row = CVar(CLng(global_126))
  loc_165261F:                               var_AC = 1
  loc_1652637:                               Call 0.Method_arg_1C0 (var_11C, "SELECT '' As _,S.PartyName+' ('+Cast(S.Vno As Varchar)+')' AS PartyName,S.DocId as Code FROM (((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) WHERE S.RestCOde='", var_AC, CInt(0), global_126, var_160, var_10C, var_CC)
  loc_165264D:                               var_AC = MemVar_1F950EC
  loc_1652655:                               Proc_6_7_F26918(var_10C, var_AC, CVar(var_AC & var_11C & "' And Vo.FromDate="), var_160, var_CC)
  loc_1652688:                               Call Proc_249_94_1214024(1, CStr(var_AC & var_10C & " Order by S.PartyName"))
  loc_1652698:                               Set var_110 = Me.FA
  loc_165269E:                               Call 0.Method_Proc_249_95_16526E40 (1, var_150, 0)
  loc_16526A6:                               MDIForm1.FA.Visible = var_160
  loc_16526C1:                               Set var_110 = Me.Check1
  loc_16526C7:                               Call 0.Method_Proc_249_95_16526E40 (1, var_150, CInt(0))
  loc_16526CF:                               var_150.Value = "For Date"
  loc_16526DB:                             End If
  loc_16526DB:                           End If
  loc_16526DB:                         End If
  loc_16526DB:                       End If
  loc_16526DB:                     End If
  loc_16526DB:                   End If
  loc_16526DB:                 End If
  loc_16526DB:               End If
  loc_16526DB:             End If
  loc_16526DB:           End If
  loc_16526DB:         End If
  loc_16526DB:       End If
  loc_16526DB:     End If
  loc_16526DB:   End If
  loc_16526DB: End If
  loc_16526DB: Call Proc_249_116_FFA070(var_CC)
  loc_16526E0: Exit Sub
End Sub

Public Sub Proc_249_96_1060AB8(arg_C, arg_10) '1060AB8
  'Data Table: 577EF0
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_1060840: var_98 = CVar(CLng(arg_C)) 'Long
  loc_1060845: var_B8 = 1
  loc_1060874: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1060897:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_10608AB:   Set var_CC = Me.FGrid
  loc_10608CF:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_10608EA:   Me.FGrid.Col = 1
  loc_10608F4:   var_86 = 0
  loc_10608FA: Else
  loc_1060907:   If ((arg_C = 0) Or (arg_C = 1)) Then
  loc_106090E:     var_98 = CVar(CLng(arg_C)) 'Long
  loc_1060913:     var_B8 = 1
  loc_1060943:     If (CDate(CStr(Me.FGrid.TextMatrix))) < MemVar_1F950F4) Then
  loc_1060971:       MsgBox(CVar(arg_10 & " Should not be less than ") & CDate(MemVar_1F950F4), &H40, "Validation Check", var_110, var_120)
  loc_1060987:       Set var_CC = Me.FGrid
  loc_10609AB:       Me.FGrid.Row = CVar(CLng(arg_C))
  loc_10609C6:       Me.FGrid.Col = 1
  loc_10609D0:       var_86 = 0
  loc_10609D6:     Else
  loc_10609DA:       var_98 = CVar(CLng(arg_C)) 'Long
  loc_10609DF:       var_B8 = 1
  loc_1060A0F:       If (CDate(CStr(Me.FGrid.TextMatrix))) > MemVar_1F950FC) Then
  loc_1060A3D:         MsgBox(CVar(arg_10 & " Should not be greater than ") & CDate(MemVar_1F950FC), &H40, "Validation Check", var_110, var_120)
  loc_1060A53:         Set var_CC = Me.FGrid
  loc_1060A77:         Me.FGrid.Row = CVar(CLng(arg_C))
  loc_1060A92:         Me.FGrid.Col = 1
  loc_1060A9C:         var_86 = 0
  loc_1060AA2:       Else
  loc_1060AA4:         var_86 = &HFF
  loc_1060AA7:       End If
  loc_1060AA7:     End If
  loc_1060AAA:   Else
  loc_1060AAC:     var_86 = &HFF
  loc_1060AAF:   End If
  loc_1060AAF: End If
  loc_1060AAF: Proc_249_96_1060AB8 = var_86
End Sub

Public Sub Proc_249_97_E18008
  'Data Table: 577EF0
  loc_E17FF4: On Error Goto loc_E17FF8
  loc_E17FF7: Exit Sub
  loc_E17FF8: ' Referenced from: E17FF4
  loc_E18000: Proc_6_60_E63754(0)
  loc_E18005: Exit Sub
End Sub

Public Sub Proc_249_98_E229B4
  'Data Table: 577EF0
  loc_E229A6: Me.PictParameter.Width = CDbl(global_144)
  loc_E229AE: Call Form_Resize()
  loc_E229B3: Exit Sub
End Sub

Public Sub Proc_249_99_11B3428(arg_C) '11B3428
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_11B2FE1: Set var_8C = arg_C 
  loc_11B3009: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_11B3035: var_8C.Fields.Append "SNo", &HC8, 5
  loc_11B3061: var_8C.Fields.Append "FPNo", &HC8, &HB
  loc_11B308D: var_8C.Fields.Append "Venue", &HC8, &H32
  loc_11B30B9: var_8C.Fields.Append "ForDate", &HC8, &HB
  loc_11B30E5: var_8C.Fields.Append "ForTime", &HC8, 5
  loc_11B3111: var_8C.Fields.Append "ToDate", &HC8, &HB
  loc_11B313D: var_8C.Fields.Append "ToTime", &HC8, 5
  loc_11B3169: var_8C.Fields.Append "Pax", &HC8, 9
  loc_11B3195: var_8C.Fields.Append "Rate", &HC8, &HA
  loc_11B31C1: var_8C.Fields.Append "FuncType", &HC8, &H1E
  loc_11B31ED: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_11B3219: var_8C.Fields.Append "Amount", &HC8, &HC
  loc_11B3245: var_8C.Fields.Append "Advance", &HC8, &HC
  loc_11B3271: var_8C.Fields.Append "AdvType", &HC8, &H14
  loc_11B329D: var_8C.Fields.Append "AdvNo", &HC8, &HC
  loc_11B32C9: var_8C.Fields.Append "AdvDate", &HC8, &HC
  loc_11B32F5: var_8C.Fields.Append "ContactNo", &HC8, &H4B
  loc_11B3321: var_8C.Fields.Append "BookStatus", &HC8, &HF
  loc_11B334D: var_8C.Fields.Append "Remark", &HC8, &H64
  loc_11B3379: var_8C.Fields.Append "Company", &HC8, &H4B
  loc_11B33A5: var_8C.Fields.Append "CompanyCode", &HC8, 8
  loc_11B33D1: var_8C.Fields.Append "Mark", &HC8, 1
  loc_11B33E1: var_8C.CursorType = 3
  loc_11B33EE: var_8C.LockType = 3
  loc_11B340D: var_8C.Open var_A0, var_B0, -1
  loc_11B3414: Set var_8C = Nothing 
  loc_11B341B: Set var_88 = arg_C 
  loc_11B341F: Proc_249_99_11B3428 = -1
  loc_11B3425: If -1 Then Exit Sub
  loc_11B3425: End If
End Sub

Public Sub Proc_249_100_10BA114(arg_C) '10BA114
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_10B9E2D: Set var_8C = arg_C 
  loc_10B9E55: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10B9E81: var_8C.Fields.Append "FPNo", &HC8, &HB
  loc_10B9EAD: var_8C.Fields.Append "Venue", &HC8, &H32
  loc_10B9ED9: var_8C.Fields.Append "ForDate", &HC8, &HB
  loc_10B9F05: var_8C.Fields.Append "ForTime", &HC8, 5
  loc_10B9F31: var_8C.Fields.Append "ToTime", &HC8, 5
  loc_10B9F5D: var_8C.Fields.Append "Pax", &HC8, 5
  loc_10B9F89: var_8C.Fields.Append "Rate", &HC8, &HA
  loc_10B9FB5: var_8C.Fields.Append "FuncType", &HC8, &H1E
  loc_10B9FE1: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_10BA00D: var_8C.Fields.Append "ItemName", &HC8, &H32
  loc_10BA039: var_8C.Fields.Append "ItemGroup", &HC8, &H32
  loc_10BA065: var_8C.Fields.Append "ItemKitchen", &HC8, &H32
  loc_10BA091: var_8C.Fields.Append "Remark", &HC8, &H4B
  loc_10BA0BD: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10BA0CD: var_8C.CursorType = 3
  loc_10BA0DA: var_8C.LockType = 3
  loc_10BA0F9: var_8C.Open var_A0, var_B0, -1
  loc_10BA100: Set var_8C = Nothing 
  loc_10BA107: Set var_88 = arg_C 
  loc_10BA10B: Proc_249_100_10BA114 = -1
End Sub

Public Sub Proc_249_101_FC08A8(arg_C) 'FC08A8
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_FC06F5: Set var_8C = arg_C 
  loc_FC071D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FC0749: var_8C.Fields.Append "SNo", &HC8, 5
  loc_FC0775: var_8C.Fields.Append "Item", &HC8, &H32
  loc_FC07A1: var_8C.Fields.Append "Qty", &HC8, &HE
  loc_FC07CD: var_8C.Fields.Append "Unit", &HC8, &HA
  loc_FC07F9: var_8C.Fields.Append "Rate", &HC8, &HE
  loc_FC0825: var_8C.Fields.Append "Amount", &HC8, &HF
  loc_FC0851: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FC0861: var_8C.CursorType = 3
  loc_FC086E: var_8C.LockType = 3
  loc_FC088D: var_8C.Open var_A0, var_B0, -1
  loc_FC0894: Set var_8C = Nothing 
  loc_FC089B: Set var_88 = arg_C 
  loc_FC089F: Proc_249_101_FC08A8 = -1
End Sub

Public Sub Proc_249_102_FA3ADC(arg_C) 'FA3ADC
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_FA3955: Set var_8C = arg_C 
  loc_FA397D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FA39A9: var_8C.Fields.Append "SNo", &HC8, 5
  loc_FA39D5: var_8C.Fields.Append "FuncDate", &HC8, &HB
  loc_FA3A01: var_8C.Fields.Append "Pax", &HC8, 5
  loc_FA3A2D: var_8C.Fields.Append "Amount", &HC8, &HF
  loc_FA3A59: var_8C.Fields.Append "Average", &HC8, &HA
  loc_FA3A85: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FA3A95: var_8C.CursorType = 3
  loc_FA3AA2: var_8C.LockType = 3
  loc_FA3AC1: var_8C.Open var_A0, var_B0, -1
  loc_FA3AC8: Set var_8C = Nothing 
  loc_FA3ACF: Set var_88 = arg_C 
  loc_FA3AD3: Proc_249_102_FA3ADC = -1
End Sub

Public Sub Proc_249_103_1306248(arg_C) '1306248
  'Data Table: 577EF0
  Dim var_90 As Recordset15
  loc_1305B15: Set var_90 = arg_C 
  loc_1305B3D: var_90.Fields.Append "mLine", &HC8, &HA
  loc_1305B69: var_90.Fields.Append "SNo", &HC8, &HA
  loc_1305B95: var_90.Fields.Append "BillDate", &HC8, &HA
  loc_1305BC1: var_90.Fields.Append "BillNo", &HC8, &H14
  loc_1305BED: var_90.Fields.Append "Party", &HC8, &H32
  loc_1305C19: var_90.Fields.Append "NonTaxable", &HC8, &HC
  loc_1305C45: var_90.Fields.Append "Tax1", &HC8, &HC
  loc_1305C71: var_90.Fields.Append "Tax2", &HC8, &HC
  loc_1305C9D: var_90.Fields.Append "Tax3", &HC8, &HC
  loc_1305CC9: var_90.Fields.Append "Tax4", &HC8, &HC
  loc_1305CF5: var_90.Fields.Append "Tax5", &HC8, &HC
  loc_1305D21: var_90.Fields.Append "Tax6", &HC8, &HC
  loc_1305D4D: var_90.Fields.Append "Tax7", &HC8, &HC
  loc_1305D79: var_90.Fields.Append "Tax8", &HC8, &HC
  loc_1305DA5: var_90.Fields.Append "Tax9", &HC8, &HC
  loc_1305DD1: var_90.Fields.Append "GoodsAmt", &HC8, &HC
  loc_1305DFD: var_90.Fields.Append "TaxAmt1", &HC8, &HC
  loc_1305E29: var_90.Fields.Append "TaxAmt2", &HC8, &HC
  loc_1305E55: var_90.Fields.Append "TaxAmt3", &HC8, &HC
  loc_1305E81: var_90.Fields.Append "TaxAmt4", &HC8, &HC
  loc_1305EAD: var_90.Fields.Append "TaxAmt5", &HC8, &HC
  loc_1305ED9: var_90.Fields.Append "TaxAmt6", &HC8, &HC
  loc_1305F05: var_90.Fields.Append "TaxAmt7", &HC8, &HC
  loc_1305F31: var_90.Fields.Append "TaxAmt8", &HC8, &HC
  loc_1305F5D: var_90.Fields.Append "TaxAmt9", &HC8, &HC
  loc_1305F89: var_90.Fields.Append "TaxAmt", &HC8, &HC
  loc_1305FB5: var_90.Fields.Append "TaxP1", &HC8, &HA
  loc_1305FE1: var_90.Fields.Append "TaxP2", &HC8, &HA
  loc_130600D: var_90.Fields.Append "TaxP3", &HC8, &HA
  loc_1306039: var_90.Fields.Append "TaxP4", &HC8, &HA
  loc_1306065: var_90.Fields.Append "TaxP5", &HC8, &HA
  loc_1306091: var_90.Fields.Append "TaxP6", &HC8, &HA
  loc_13060BD: var_90.Fields.Append "TaxP7", &HC8, &HA
  loc_13060E9: var_90.Fields.Append "TaxP8", &HC8, &HA
  loc_1306115: var_90.Fields.Append "TaxP9", &HC8, &HA
  loc_1306141: var_90.Fields.Append "SCharge", &HC8, &HC
  loc_130616D: var_90.Fields.Append "Disc", &HC8, &HC
  loc_1306199: var_90.Fields.Append "Roff", &HC8, &HC
  loc_13061C5: var_90.Fields.Append "BillAmt", &HC8, &HC
  loc_13061F1: var_90.Fields.Append "Mark", &HC8, 1
  loc_1306201: var_90.CursorType = 3
  loc_130620E: var_90.LockType = 3
  loc_130622D: var_90.Open var_A4, var_B4, -1
  loc_1306234: Set var_90 = Nothing 
  loc_130623B: Set var_88 = arg_C 
  loc_130623F: Proc_249_103_1306248 = -1
  loc_1306245: var_130 = -1
End Sub

Public Sub Proc_249_104_111DFD4(arg_C) '111DFD4
  'Data Table: 577EF0
  Dim var_90 As Recordset15
  loc_111DC69: Set var_90 = arg_C 
  loc_111DC91: var_90.Fields.Append "mLine", &HC8, &HA
  loc_111DCBD: var_90.Fields.Append "SNo", &HC8, &HA
  loc_111DCE9: var_90.Fields.Append "BillDate", &HC8, &HA
  loc_111DD15: var_90.Fields.Append "BillNo", &HC8, &H14
  loc_111DD41: var_90.Fields.Append "BillAmount", &HC8, &H14
  loc_111DD6D: var_90.Fields.Append "Taxable", &HC8, &H14
  loc_111DD99: var_90.Fields.Append "NonTaxable", &HC8, &H14
  loc_111DDC5: var_90.Fields.Append "Tax1", &HC8, &H14
  loc_111DDF1: var_90.Fields.Append "Tax2", &HC8, &H14
  loc_111DE1D: var_90.Fields.Append "Tax3", &HC8, &H14
  loc_111DE49: var_90.Fields.Append "Tax4", &HC8, &H14
  loc_111DE75: var_90.Fields.Append "Tax5", &HC8, &H14
  loc_111DEA1: var_90.Fields.Append "Tax6", &HC8, &H14
  loc_111DECD: var_90.Fields.Append "Tax7", &HC8, &H14
  loc_111DEF9: var_90.Fields.Append "Tax8", &HC8, &H14
  loc_111DF25: var_90.Fields.Append "Tax9", &HC8, &H14
  loc_111DF51: var_90.Fields.Append "SCharge", &HC8, &HF
  loc_111DF7D: var_90.Fields.Append "Mark", &HC8, 1
  loc_111DF8D: var_90.CursorType = 3
  loc_111DF9A: var_90.LockType = 3
  loc_111DFB9: var_90.Open var_A4, var_B4, -1
  loc_111DFC0: Set var_90 = Nothing 
  loc_111DFC7: Set var_88 = arg_C 
  loc_111DFCB: Proc_249_104_111DFD4 = -1
End Sub

Public Sub Proc_249_105_1022A4C(arg_C) '1022A4C
  'Data Table: 577EF0
  Dim var_90 As Recordset15
  loc_1022815: Set var_90 = arg_C 
  loc_102283D: var_90.Fields.Append "mLine", &HC8, &HA
  loc_1022869: var_90.Fields.Append "SNo", &HC8, &HA
  loc_1022895: var_90.Fields.Append "BillDate", &HC8, &HA
  loc_10228C1: var_90.Fields.Append "BillNo", &HC8, &H14
  loc_10228ED: var_90.Fields.Append "BillAmount", &HC8, &H14
  loc_1022919: var_90.Fields.Append "Taxable", &HC8, &H14
  loc_1022945: var_90.Fields.Append "NonTaxable", &HC8, &H14
  loc_1022971: var_90.Fields.Append "TTax", &HC8, &HF
  loc_102299D: var_90.Fields.Append "DTax", &HC8, &HF
  loc_10229C9: var_90.Fields.Append "SCharge", &HC8, &H14
  loc_10229F5: var_90.Fields.Append "Mark", &HC8, 1
  loc_1022A05: var_90.CursorType = 3
  loc_1022A12: var_90.LockType = 3
  loc_1022A31: var_90.Open var_A4, var_B4, -1
  loc_1022A38: Set var_90 = Nothing 
  loc_1022A3F: Set var_88 = arg_C 
  loc_1022A43: Proc_249_105_1022A4C = -1
End Sub

Public Sub Proc_249_106_104221C(arg_C) '104221C
  'Data Table: 577EF0
  Dim var_90 As Recordset15
  loc_1041FB9: Set var_90 = arg_C 
  loc_1041FE1: var_90.Fields.Append "mLine", &HC8, &HA
  loc_104200D: var_90.Fields.Append "SNo", &HC8, 5
  loc_1042039: var_90.Fields.Append "SettleDate", &HC8, &HB
  loc_1042065: var_90.Fields.Append "BillNo", &HC8, &H14
  loc_1042091: var_90.Fields.Append "BillDate", &HC8, &HB
  loc_10420BD: var_90.Fields.Append "PartyName", &HC8, &H32
  loc_10420E9: var_90.Fields.Append "Narration", &HC8, &H64
  loc_1042115: var_90.Fields.Append "Amount", &HC8, &HC
  loc_1042141: var_90.Fields.Append "Mode", &HC8, &H19
  loc_104216D: var_90.Fields.Append "Employee", &HC8, &HA
  loc_1042199: var_90.Fields.Append "Mark", &HC8, 1
  loc_10421C5: var_90.Fields.Append "Mark1", &HC8, 1
  loc_10421D5: var_90.CursorType = 3
  loc_10421E2: var_90.LockType = 3
  loc_1042201: var_90.Open var_A4, var_B4, -1
  loc_1042208: Set var_90 = Nothing 
  loc_104220F: Set var_88 = arg_C 
  loc_1042213: Proc_249_106_104221C = -1
End Sub

Public Sub Proc_249_107_FE1BF0(arg_C) 'FE1BF0
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_FE1A11: Set var_8C = arg_C 
  loc_FE1A39: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FE1A65: var_8C.Fields.Append "DEPARTNAME", &HC8, &H23
  loc_FE1A91: var_8C.Fields.Append "TaxName", &HC8, &H23
  loc_FE1ABD: var_8C.Fields.Append "TaxPer", &HC8, &H23
  loc_FE1AE9: var_8C.Fields.Append "GoodsAmt", &HC8, &HF
  loc_FE1B15: var_8C.Fields.Append "TaxAmt", &HC8, &HF
  loc_FE1B41: var_8C.Fields.Append "BillAmt", &HC8, &HC
  loc_FE1B6D: var_8C.Fields.Append "DepartCode", &HC8, 6
  loc_FE1B99: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FE1BA9: var_8C.CursorType = 3
  loc_FE1BB6: var_8C.LockType = 3
  loc_FE1BD5: var_8C.Open var_A0, var_B0, -1
  loc_FE1BDC: Set var_8C = Nothing 
  loc_FE1BE3: Set var_88 = arg_C 
  loc_FE1BE7: Proc_249_107_FE1BF0 = -1
End Sub

Public Sub Proc_249_108_10FE344(arg_C) '10FE344
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_10FE005: Set var_8C = arg_C 
  loc_10FE02D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10FE059: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_10FE085: var_8C.Fields.Append "Code", &HC8, 6
  loc_10FE0B1: var_8C.Fields.Append "FuncDate", &HC8, &H14
  loc_10FE0DD: var_8C.Fields.Append "FuncTime", &HC8, &HF
  loc_10FE109: var_8C.Fields.Append "VenueName", &HC8, &H32
  loc_10FE135: var_8C.Fields.Append "FuncType", &HC8, &H32
  loc_10FE161: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_10FE18D: var_8C.Fields.Append "PhoneR", &HC8, &HE
  loc_10FE1B9: var_8C.Fields.Append "MobileNo", &HC8, &HE
  loc_10FE1E5: var_8C.Fields.Append "ConPerson", &HC8, &H19
  loc_10FE211: var_8C.Fields.Append "BookedBy", &HC8, &H19
  loc_10FE23D: var_8C.Fields.Append "HandledBy", &HC8, &H19
  loc_10FE269: var_8C.Fields.Append "Status", &HC8, &HA
  loc_10FE295: var_8C.Fields.Append "U_Name", &HC8, &H14
  loc_10FE2C1: var_8C.Fields.Append "Remark", &HC8, &H96
  loc_10FE2ED: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10FE2FD: var_8C.CursorType = 3
  loc_10FE30A: var_8C.LockType = 3
  loc_10FE329: var_8C.Open var_A0, var_B0, -1
  loc_10FE330: Set var_8C = Nothing 
  loc_10FE337: Set var_88 = arg_C 
  loc_10FE33B: Proc_249_108_10FE344 = -1
End Sub

Public Sub Proc_249_109_12445F8(arg_C) '12445F8
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_12440A9: Set var_8C = arg_C 
  loc_12440D1: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_12440FD: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_1244129: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_1244155: var_8C.Fields.Append "BillNo", &HC8, 9
  loc_1244181: var_8C.Fields.Append "BillDate", &HC8, &H14
  loc_12441AD: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_12441D9: var_8C.Fields.Append "NoOfPax", &HC8, &HE
  loc_1244205: var_8C.Fields.Append "RatePerPax", &HC8, &HE
  loc_1244231: var_8C.Fields.Append "TotalPerCover", &HC8, &HE
  loc_124425D: var_8C.Fields.Append "DiscAmt", &HC8, &HA
  loc_1244289: var_8C.Fields.Append "NonTaxable", &HC8, &HE
  loc_12442B5: var_8C.Fields.Append "Taxable", &HC8, &HE
  loc_12442E1: var_8C.Fields.Append "Tax1", &HC8, &HE
  loc_124430D: var_8C.Fields.Append "Tax2", &HC8, &HE
  loc_1244339: var_8C.Fields.Append "Tax3", &HC8, &HE
  loc_1244365: var_8C.Fields.Append "Tax4", &HC8, &HE
  loc_1244391: var_8C.Fields.Append "Tax5", &HC8, &HE
  loc_12443BD: var_8C.Fields.Append "Tax6", &HC8, &HE
  loc_12443E9: var_8C.Fields.Append "Tax7", &HC8, &HE
  loc_1244415: var_8C.Fields.Append "Tax8", &HC8, &HE
  loc_1244441: var_8C.Fields.Append "Tax9", &HC8, &HE
  loc_124446D: var_8C.Fields.Append "SrvChrg", &HC8, &HE
  loc_1244499: var_8C.Fields.Append "Roundoff", &HC8, &HE
  loc_12444C5: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_12444F1: var_8C.Fields.Append "Advance", &HC8, &HC
  loc_124451D: var_8C.Fields.Append "AdvType", &HC8, &H14
  loc_1244549: var_8C.Fields.Append "AdvNo", &HC8, &HC
  loc_1244575: var_8C.Fields.Append "AdvDate", &HC8, &HC
  loc_12445A1: var_8C.Fields.Append "Mark", &HC8, 1
  loc_12445B1: var_8C.CursorType = 3
  loc_12445BE: var_8C.LockType = 3
  loc_12445DD: var_8C.Open var_A0, var_B0, -1
  loc_12445E4: Set var_8C = Nothing 
  loc_12445EB: Set var_88 = arg_C 
  loc_12445EF: Proc_249_109_12445F8 = -1
End Sub

Public Sub Proc_249_110_10FD1C4(arg_C) '10FD1C4
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_10FCE85: Set var_8C = arg_C 
  loc_10FCEAD: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10FCED9: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_10FCF05: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_10FCF31: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_10FCF5D: var_8C.Fields.Append "Item", &HC8, &H32
  loc_10FCF89: var_8C.Fields.Append "Qty", &HC8, &HE
  loc_10FCFB5: var_8C.Fields.Append "Rate", &HC8, &HE
  loc_10FCFE1: var_8C.Fields.Append "NonTaxable", &HC8, &HE
  loc_10FD00D: var_8C.Fields.Append "Taxable", &HC8, &HE
  loc_10FD039: var_8C.Fields.Append "Tax1", &HC8, &HE
  loc_10FD065: var_8C.Fields.Append "Tax2", &HC8, &HE
  loc_10FD091: var_8C.Fields.Append "Tax3", &HC8, &HE
  loc_10FD0BD: var_8C.Fields.Append "SrvChrg", &HC8, &HE
  loc_10FD0E9: var_8C.Fields.Append "DiscAmt", &HC8, &HA
  loc_10FD115: var_8C.Fields.Append "Roundoff", &HC8, &HE
  loc_10FD141: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_10FD16D: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10FD17D: var_8C.CursorType = 3
  loc_10FD18A: var_8C.LockType = 3
  loc_10FD1A9: var_8C.Open var_A0, var_B0, -1
  loc_10FD1B0: Set var_8C = Nothing 
  loc_10FD1B7: Set var_88 = arg_C 
  loc_10FD1BB: Proc_249_110_10FD1C4 = -1
End Sub

Public Sub Proc_249_111_11B38B0(arg_C) '11B38B0
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_11B3469: Set var_8C = arg_C 
  loc_11B3491: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_11B34BD: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_11B34E9: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_11B3515: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_11B3541: var_8C.Fields.Append "Item", &HC8, &H32
  loc_11B356D: var_8C.Fields.Append "Qty", &HC8, &HE
  loc_11B3599: var_8C.Fields.Append "Rate", &HC8, &HE
  loc_11B35C5: var_8C.Fields.Append "NonTaxable", &HC8, &HE
  loc_11B35F1: var_8C.Fields.Append "Taxable", &HC8, &HE
  loc_11B361D: var_8C.Fields.Append "Tax1", &HC8, &HE
  loc_11B3649: var_8C.Fields.Append "Tax2", &HC8, &HE
  loc_11B3675: var_8C.Fields.Append "Tax3", &HC8, &HE
  loc_11B36A1: var_8C.Fields.Append "Tax4", &HC8, &HE
  loc_11B36CD: var_8C.Fields.Append "Tax5", &HC8, &HE
  loc_11B36F9: var_8C.Fields.Append "Tax6", &HC8, &HE
  loc_11B3725: var_8C.Fields.Append "Tax7", &HC8, &HE
  loc_11B3751: var_8C.Fields.Append "Tax8", &HC8, &HE
  loc_11B377D: var_8C.Fields.Append "Tax9", &HC8, &HE
  loc_11B37A9: var_8C.Fields.Append "SrvChrg", &HC8, &HE
  loc_11B37D5: var_8C.Fields.Append "DiscAmt", &HC8, &HA
  loc_11B3801: var_8C.Fields.Append "Roundoff", &HC8, &HE
  loc_11B382D: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_11B3859: var_8C.Fields.Append "Mark", &HC8, 1
  loc_11B3869: var_8C.CursorType = 3
  loc_11B3876: var_8C.LockType = 3
  loc_11B3895: var_8C.Open var_A0, var_B0, -1
  loc_11B389C: Set var_8C = Nothing 
  loc_11B38A3: Set var_88 = arg_C 
  loc_11B38A7: Proc_249_111_11B38B0 = -1
End Sub

Public Sub Proc_249_112_1094500(arg_C) '1094500
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  Dim arg_DFD As Integer
  loc_1094245: Set var_8C = arg_C 
  loc_109426D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_1094299: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_10942C5: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_10942F1: var_8C.Fields.Append "FuncDate", &HC8, &H14
  loc_109431D: var_8C.Fields.Append "FuncTime", &HC8, &HE
  loc_1094349: var_8C.Fields.Append "FuncName", &HC8, &H32
  loc_1094375: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_10943A1: var_8C.Fields.Append "BillNo", &HC8, &HE
  loc_10943CD: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_10943F9: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_1094425: var_8C.Fields.Append "Advance", &HC8, &HE
  loc_1094451: var_8C.Fields.Append "TotalRect", &HC8, &HE
  loc_109447D: var_8C.Fields.Append "Balance", &HC8, &HE
  loc_10944A9: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10944B9: var_8C.CursorType = 3
  loc_10944C6: var_8C.LockType = 3
  loc_10944E5: var_8C.Open var_A0, var_B0, -1
  loc_10944EC: Set var_8C = Nothing 
  loc_10944F3: Set var_88 = arg_C 
  loc_10944F7: Proc_249_112_1094500 = -1
  loc_10944FD: arg_DFD = -1
End Sub

Public Sub Proc_249_113_1043C84(arg_C) '1043C84
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_1043A21: Set var_8C = arg_C 
  loc_1043A49: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_1043A75: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_1043AA1: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_1043ACD: var_8C.Fields.Append "FuncDate", &HC8, &H15
  loc_1043AF9: var_8C.Fields.Append "FuncTime", &HC8, &HE
  loc_1043B25: var_8C.Fields.Append "FuncName", &HC8, &H32
  loc_1043B51: var_8C.Fields.Append "BillNo", &HC8, &HE
  loc_1043B7D: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_1043BA9: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_1043BD5: var_8C.Fields.Append "Advance", &HC8, &HE
  loc_1043C01: var_8C.Fields.Append "Balance", &HC8, &HE
  loc_1043C2D: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1043C3D: var_8C.CursorType = 3
  loc_1043C4A: var_8C.LockType = 3
  loc_1043C69: var_8C.Open var_A0, var_B0, -1
  loc_1043C70: Set var_8C = Nothing 
  loc_1043C77: Set var_88 = arg_C 
  loc_1043C7B: Proc_249_113_1043C84 = -1
End Sub

Public Sub Proc_249_114_1160CBC(arg_C) '1160CBC
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_11608F9: Set var_8C = arg_C 
  loc_1160921: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_116094D: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_1160979: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_11609A5: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_11609D1: var_8C.Fields.Append "BillNo", &HC8, &HE
  loc_11609FD: var_8C.Fields.Append "PartyName", &HC8, &H19
  loc_1160A29: var_8C.Fields.Append "BillAmount", &HC8, &HE
  loc_1160A55: var_8C.Fields.Append "Narration", &HC8, &H64
  loc_1160A81: var_8C.Fields.Append "Cash", &HC8, &HE
  loc_1160AAD: var_8C.Fields.Append "Cheque", &HC8, &HE
  loc_1160AD9: var_8C.Fields.Append "Complementary", &HC8, &HE
  loc_1160B05: var_8C.Fields.Append "Company", &HC8, &HE
  loc_1160B31: var_8C.Fields.Append "CreditCard", &HC8, &HE
  loc_1160B5D: var_8C.Fields.Append "Hold", &HC8, &HE
  loc_1160B89: var_8C.Fields.Append "Room", &HC8, &HE
  loc_1160BB5: var_8C.Fields.Append "Staff", &HC8, &HE
  loc_1160BE1: var_8C.Fields.Append "Void", &HC8, &HE
  loc_1160C0D: var_8C.Fields.Append "Other", &HC8, &HE
  loc_1160C39: var_8C.Fields.Append "Name", &HC8, &H32
  loc_1160C65: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1160C75: var_8C.CursorType = 3
  loc_1160C82: var_8C.LockType = 3
  loc_1160CA1: var_8C.Open var_A0, var_B0, -1
  loc_1160CA8: Set var_8C = Nothing 
  loc_1160CAF: Set var_88 = arg_C 
  loc_1160CB3: Proc_249_114_1160CBC = -1
End Sub

Public Sub Proc_249_115_10DA5A0(arg_C) '10DA5A0
  'Data Table: 577EF0
  Dim var_8C As Recordset15
  loc_10DA28D: Set var_8C = arg_C 
  loc_10DA2B5: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10DA2E1: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_10DA30D: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_10DA339: var_8C.Fields.Append "Name", &HC8, &H32
  loc_10DA365: var_8C.Fields.Append "BillAmount", &HC8, &HE
  loc_10DA391: var_8C.Fields.Append "Cash", &HC8, &HE
  loc_10DA3BD: var_8C.Fields.Append "Cheque", &HC8, &HE
  loc_10DA3E9: var_8C.Fields.Append "Complementary", &HC8, &HE
  loc_10DA415: var_8C.Fields.Append "Company", &HC8, &HE
  loc_10DA441: var_8C.Fields.Append "CreditCard", &HC8, &HE
  loc_10DA46D: var_8C.Fields.Append "Hold", &HC8, &HE
  loc_10DA499: var_8C.Fields.Append "Room", &HC8, &HE
  loc_10DA4C5: var_8C.Fields.Append "Staff", &HC8, &HE
  loc_10DA4F1: var_8C.Fields.Append "Void", &HC8, &HE
  loc_10DA51D: var_8C.Fields.Append "Other", &HC8, &HE
  loc_10DA549: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10DA559: var_8C.CursorType = 3
  loc_10DA566: var_8C.LockType = 3
  loc_10DA585: var_8C.Open var_A0, var_B0, -1
  loc_10DA58C: Set var_8C = Nothing 
  loc_10DA593: Set var_88 = arg_C 
  loc_10DA597: Proc_249_115_10DA5A0 = -1
End Sub

Public Sub Proc_249_116_FFA070
  'Data Table: 577EF0
  Dim var_AC As MSHFlexGrid
  loc_FF9E72: var_94 = global_128 'Variant
  loc_FF9E81: If (var_94 = 1) Then
  loc_FF9E96:   Set var_A8 = Me.GridSel
  loc_FF9E9C:   Call 0.Method_Proc_249_116_FFA0700 (1, var_AC)
  loc_FF9EA4:   var_AC.Height = CVar(CDbl(5100))
  loc_FF9EB3: Else
  loc_FF9EBE:   If (var_94 = 2) Then
  loc_FF9ED3:     Set var_A8 = Me.GridSel
  loc_FF9ED9:     Call 0.Method_Proc_249_116_FFA0700 (1, var_AC)
  loc_FF9EE1:     var_AC.Height = CVar(CDbl(5100))
  loc_FF9EFF:     Set var_A8 = Me.GridSel
  loc_FF9F05:     Call 0.Method_Proc_249_116_FFA0700 (2, var_AC)
  loc_FF9F0D:     var_AC.Height = CVar(CDbl(5100))
  loc_FF9F1C:   Else
  loc_FF9F27:     If (var_94 = 3) Then
  loc_FF9F3C:       Set var_A8 = Me.GridSel
  loc_FF9F42:       Call 0.Method_Proc_249_116_FFA0700 (1, var_AC)
  loc_FF9F4A:       var_AC.Height = CVar(CDbl(2500))
  loc_FF9F68:       Set var_A8 = Me.GridSel
  loc_FF9F6E:       Call 0.Method_Proc_249_116_FFA0700 (2, var_AC)
  loc_FF9F76:       var_AC.Height = CVar(CDbl(5100))
  loc_FF9F94:       Set var_A8 = Me.GridSel
  loc_FF9F9A:       Call 0.Method_Proc_249_116_FFA0700 (3, var_AC)
  loc_FF9FA2:       var_AC.Height = CVar(CDbl(2500))
  loc_FF9FB1:     Else
  loc_FF9FBC:       If (var_94 = 4) Then
  loc_FF9FD1:         Set var_A8 = Me.GridSel
  loc_FF9FD7:         Call 0.Method_Proc_249_116_FFA0700 (1, var_AC)
  loc_FF9FDF:         var_AC.Height = CVar(CDbl(2500))
  loc_FF9FFD:         Set var_A8 = Me.GridSel
  loc_FFA003:         Call 0.Method_Proc_249_116_FFA0700 (2, var_AC)
  loc_FFA00B:         var_AC.Height = CVar(CDbl(2500))
  loc_FFA029:         Set var_A8 = Me.GridSel
  loc_FFA02F:         Call 0.Method_Proc_249_116_FFA0700 (3, var_AC)
  loc_FFA037:         var_AC.Height = CVar(CDbl(2500))
  loc_FFA055:         Set var_A8 = Me.GridSel
  loc_FFA05B:         Call 0.Method_Proc_249_116_FFA0700 (4, var_AC)
  loc_FFA063:         var_AC.Height = CVar(CDbl(2500))
  loc_FFA06F:       End If
  loc_FFA06F:     End If
  loc_FFA06F:   End If
  loc_FFA06F: End If
  loc_FFA06F: Exit Sub
End Sub
