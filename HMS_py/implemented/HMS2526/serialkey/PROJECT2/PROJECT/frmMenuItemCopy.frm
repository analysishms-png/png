VERSION 5.00
Begin VB.Form frmMenuItemCopy
  Caption = "Menu Item Copy"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 12960
  ClientHeight = 9765
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12960
    Height = 450
    Visible = 0   'False
    TabIndex = 21
  End
  Begin CommandButton CmdExitz
    Caption = "E&xit"
    BackColor = &HC0FFFF&
    Left = 13710
    Top = 6645
    Width = 1830
    Height = 495
    Visible = 0   'False
    TabIndex = 18
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4815
    Top = 1845
    Width = 1740
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4815
    Top = 1215
    Width = 4050
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4815
    Top = 2475
    Width = 4050
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin CommandButton cmdCopyz
    Caption = "&Copy"
    BackColor = &HC0FFFF&
    Left = 13260
    Top = 4845
    Width = 1830
    Height = 495
    Visible = 0   'False
    TabIndex = 5
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
  Begin CheckBox Check1
    Caption = "ALL"
    BackColor = &HC00000&
    ForeColor = &H8000000E&
    Left = 2100
    Top = 2925
    Width = 615
    Height = 195
    TabIndex = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGOutlet
    Left = 9165
    Top = 6165
    Width = 4230
    Height = 3060
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGItemGroup
    Left = 9090
    Top = 5805
    Width = 4230
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4815
    Top = 2160
    Width = 4050
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4815
    Top = 1530
    Width = 4050
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin MSHFlexGrid FGrid1
    Left = 1785
    Top = 2865
    Width = 9945
    Height = 5625
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 11550
    Top = 690
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGItemCat
    Left = 9060
    Top = 5415
    Width = 4230
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin BtnEnh CmdExit
    Left = 10245
    Top = 1695
    Width = 1275
    Height = 1050
    TabIndex = 19
  End
  Begin BtnEnh cmdCopy
    Left = 8970
    Top = 1710
    Width = 1275
    Height = 1050
    TabIndex = 20
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
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
  Begin Label LblName
    Caption = "Applicable From"
    Index = 3
    ForeColor = &HC00000&
    Left = 2310
    Top = 1830
    Width = 1575
    Height = 240
    TabIndex = 16
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
    Caption = "Restaurant Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2310
    Top = 1200
    Width = 1635
    Height = 240
    TabIndex = 15
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
    Caption = "Source Restaurant Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2310
    Top = 1515
    Width = 2370
    Height = 240
    TabIndex = 14
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
    Caption = "Item Group"
    Index = 1
    ForeColor = &HC00000&
    Left = 2310
    Top = 2145
    Width = 1065
    Height = 240
    TabIndex = 13
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
    Caption = "Item Category"
    Index = 4
    ForeColor = &HC00000&
    Left = 2310
    Top = 2460
    Width = 1335
    Height = 240
    TabIndex = 12
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

Attribute VB_Name = "frmMenuItemCopy"

Private global_88 As Integer

Private Sub DGItemCat_UnknownEvent_9 'F380B4
  'Data Table: 496164
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F37FAB: Me.DGItemCat.Visible = False
  loc_F37FCA: If (Me.RecordCount > 0) Then
  loc_F38009:   Set var_B4 = Me.Txt
  loc_F3800F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F38017:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3804A:   var_B0 = Me.Fields.Item("Code")
  loc_F38069:   Set var_B4 = Me.Txt
  loc_F3806F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F38077:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3808D: End If
  loc_F38098: Set var_A8 = Me.Txt
  loc_F3809E: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2))
  loc_F380A6: var_B0.SetFocus
  loc_F380B2: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E71E84
  'Data Table: 496164
  loc_E71E42: Proc_6_153_E91D24(Me.DGItemCat, arg_14)
  loc_E71E59: Set var_8C = Me.FGPoint
  loc_E71E75: Proc_6_138_106E830(Me.DGItemCat, global_64, CInt(2))
  loc_E71E83: Exit Sub
End Sub

Private Sub DGOutlet_UnknownEvent_9 'FB0EA0
  'Data Table: 496164
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FB0D23: Me.DGOutlet.Visible = False
  loc_FB0D42: If (Me.RecordCount > 0) Then
  loc_FB0D9E:   Set var_CC = Me.Txt
  loc_FB0DA4:   Call 0.Method_DGOutlet_UnknownEvent_90 (CInt(Val(CStr(Me.DGOutlet.Tag))), var_D0)
  loc_FB0DAC:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FB0DD0:   Set var_B4 = Me.DGOutlet
  loc_FB0DE6:   var_EC = Val(CStr(var_B4.Tag))
  loc_FB0E25:   Set var_CC = Me.Txt
  loc_FB0E2B:   Call 0.Method_DGOutlet_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Code").Value))
  loc_FB0E33:   var_D0.Tag = var_EC
  loc_FB0E53: End If
  loc_FB0E7B: Set var_B0 = Me.Txt
  loc_FB0E81: Call 0.Method_DGOutlet_UnknownEvent_90 (CInt(Val(CStr(Me.DGOutlet.Tag))), var_B4)
  loc_FB0E89: var_B4.SetFocus
  loc_FB0E9D: Exit Sub
End Sub

Private Sub DGOutlet_UnknownEvent_1F 'EA9608
  'Data Table: 496164
  loc_EA959E: Proc_6_153_E91D24(Me.DGOutlet, arg_14)
  loc_EA95D2: Set var_A8 = Me.FGPoint
  loc_EA95EE: Proc_6_138_106E830(Me.DGOutlet, global_56, CInt(Val(CStr(Me.DGOutlet.Tag))))
  loc_EA9604: Exit Sub
  loc_EA9605: var_A8 = arg_1903
End Sub

Private Sub cmdCopy_UnknownEvent_9 '17D25A4
  'Data Table: 496164
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_AC As Variant
  Dim var_C8 As Variant
  Dim unk_496185 As Connection15
  Dim var_12C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_E8 As Variant
  Dim var_B8 As String
  Dim var_1A4 As Variant
  Dim var_1F4 As Variant
  Dim var_128 As Variant
  Dim var_1D4 As Variant
  Dim var_A8 As Variant
  Dim var_1F8 As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_F8 As Variant
  Dim var_A0 As Variant
  Dim var_24C As String
  Dim var_108 As Variant
  Dim var_1E4 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2DC As Variant
  Dim var_34C As Variant
  Dim var_35C As Variant
  Dim var_36C As Variant
  Dim var_460 As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_38C As Variant
  Dim var_3CC As Variant
  Dim var_3DC As Variant
  Dim var_3FC As Variant
  Dim var_40C As Variant
  Dim var_484 As Variant
  Dim var_494 As Variant
  Dim var_4E4 As Variant
  Dim var_4F4 As Variant
  Dim var_524 As Variant
  Dim var_534 As Variant
  Dim var_574 As Variant
  Dim var_394 As TextBox
  Dim var_42C As Variant
  Dim var_390 As String
  Dim var_5A0 As String
  Dim var_5AC As String
  Dim var_5B4 As String
  Dim var_618 As Variant
  Dim var_638 As Variant
  Dim var_668 As Variant
  Dim var_688 As Variant
  Dim var_6B8 As Variant
  Dim var_6D8 As Variant
  Dim var_708 As Variant
  Dim var_728 As Variant
  Dim var_76C As Variant
  Dim var_78C As Variant
  Dim var_7D0 As Variant
  Dim var_7F0 As Variant
  Dim var_854 As Variant
  Dim var_874 As Variant
  Dim var_8A4 As Variant
  Dim var_8C4 As Variant
  Dim var_934 As Variant
  Dim var_5C8 As String
  Dim var_5F8 As String
  Dim var_598 As Variant
  Dim var_904 As Variant
  Dim var_994 As Variant
  Dim var_90 As Recordset15
  Dim var_59C As Fields15
  Dim var_8E4 As Variant
  Dim var_B2C As TextBox
  Dim var_974 As Variant
  loc_17D0648: On Error Goto loc_17D2562
  loc_17D064F: var_88 = CByte(0) 'Byte
  loc_17D065E: Set var_A0 = Me.Txt
  loc_17D0664: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(0))
  loc_17D068D: If (Proc_6_27_EA61EC(var_A4, "Source Outlet Name") = 0) Then
  loc_17D0697:   Call Txt_GotFocus()
  loc_17D069C:   Exit Sub
  loc_17D069D: End If
  loc_17D06A8: Set var_A0 = Me.Txt
  loc_17D06AE: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4)
  loc_17D06D7: If (Proc_6_27_EA61EC(var_A4, "Outlet Name") = 0) Then
  loc_17D06E1:   Call Txt_GotFocus()
  loc_17D06E6:   Exit Sub
  loc_17D06E7: End If
  loc_17D06F2: Set var_A0 = Me.Txt
  loc_17D06F8: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_A4, CInt(3))
  loc_17D0700: var_AC = "Item Applicable Date"
  loc_17D0721: If (Proc_6_27_EA61EC(var_A4, var_AC) = 0) Then
  loc_17D072B:   Call Txt_GotFocus()
  loc_17D0730:   Exit Sub
  loc_17D0731: End If
  loc_17D073F: Set var_A0 = Me.Txt
  loc_17D0745: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_A4, var_AC)
  loc_17D074D: CInt(4) = var_A4.Text
  loc_17D0769: Set var_A8 = Me.Txt
  loc_17D076F: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_B4, var_B8)
  loc_17D0777: (CDate(var_AC) < MemVar_1F950F4) = var_B4.Text
  loc_17D0798: If (CInt(0) Or (CDate(var_B8) > MemVar_1F950EC)) Then
  loc_17D07B7:   var_C8 = CVar("Item Applicable Date Should be greater or equal to" & vbCrLf & "Start Date of Financial Year And Less Or Equal To Current Date") 'String
  loc_17D07BA:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_17D07D4:   Call Txt_GotFocus()
  loc_17D07D9:   Exit Sub
  loc_17D07DA: End If
  loc_17D07DE: Set var_12C = Me.FGrid1
  loc_17D07EA: unk_496185.BeginTrans var_130
  loc_17D07F3: var_88 = CByte(1) 'Byte
  loc_17D0812: For var_134 = 1 To CInt((CLng(var_12C.Rows) - 1)): var_86 = var_134 'Integer
  loc_17D081C:   var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D0824:   var_118 = CVar(CLng(1)) 'Long
  loc_17D0837:   var_AC = CStr(var_12C.TextMatrix))
  loc_17D0875:   If (CVar(CLng(0)) And (CStr(var_12C.TextMatrix)) <> vbNullString)) Then
  loc_17D088C:     var_C8 = var_12C.TextMatrix)
  loc_17D08B0:     Set var_A0 = Me.Txt
  loc_17D08B6:     Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_AC, CVar(CLng(3)), CVar(CLng(var_86)), CVar(CLng(var_86)))
  loc_17D08BE:     (var_AC = "ü") = var_A4.Tag
  loc_17D08D7:     var_1F4 = 0
  loc_17D090E:     var_1D4 = "select Count(*) from ItemMast where Name='" & Trim(CVar(CStr(var_C8))) & "' And RestCode= '" & Trim(CVar(var_AC)) & "' And ItemType Not In ('Combo','Store') And DispCode<>9999 And GravyItem<>'Yes'" 
  loc_17D091C:     unk_496185.Execute CStr(var_1D4), var_1E4, -1
  loc_17D0924:     var_A8 = var_A8.Fields
  loc_17D092C:     var_1F4 = var_B4.Item(var_B4)
  loc_17D0934:     var_1F8 = var_1F8.Value
  loc_17D096D:     If (var_208 = 0) Then
  loc_17D0974:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D097C:       var_118 = CVar(CLng(2)) 'Long
  loc_17D09A4:       global_100 = CStr(Trim(CVar(CStr(Txt.DispID_41))))
  loc_17D09B8:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D09C0:       var_118 = CVar(CLng(&H18)) 'Long
  loc_17D09DF:       global_88 = CInt(Val(CStr(Txt.DispID_41)))
  loc_17D09EC:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D09F4:       var_118 = CVar(CLng(&HD)) 'Long
  loc_17D0A07:       var_AC = CStr(Txt.DispID_41)
  loc_17D0A0F:       var_9C = Val(var_AC)
  loc_17D0A1F:       If (var_9C <= CDbl(0)) Then
  loc_17D0A26:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D0A2E:         var_118 = CVar(CLng(3)) 'Long
  loc_17D0A7C:         var_1E4 = "Process Rollback"
  loc_17D0AAC:         MsgBox("Item " & Trim(CVar(CStr(Txt.DispID_41))) & " Can't be added With " & Format(var_9C, "0.00") & " Sale Rate.", &H10, var_1E4, var_208, var_228)
  loc_17D0ACC:         GoTo loc_17D2562
  loc_17D0ACF:       End If
  loc_17D0AD3:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D0AEE:       var_E8 = CVar(CStr(Txt.DispID_41)) 'String
  loc_17D0B07:       Set var_A0 = Me.Txt
  loc_17D0B0D:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_AC, CVar(CLng(6)), var_D8, 1, 1)
  loc_17D0B15:       var_118 = var_A4.Tag
  loc_17D0B64:       unk_496185.Execute CStr("select Code,Name from ItemGrp where Name='" & Trim(var_E8) & "' And RestCode= '" & Trim(CVar(var_AC)) & "'"), var_1E4, -1
  loc_17D0B75:       Set global_72 = var_A8
  loc_17D0BAF:       If Me.EOF Then
  loc_17D0BB8:         var_F8 = 0
  loc_17D0BD5:         var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp Where Site_Code='" & MemVar_1F95070
  loc_17D0BDC:         var_B8 = var_AC & "' and isnumeric(SUBSTRING(Code,3,4))=1 and Code <>'MISC'"
  loc_17D0BE5:         unk_496185.Execute var_B8, var_C8, -1
  loc_17D0BED:         var_A0 = var_A0.Fields
  loc_17D0BF5:         var_F8 = var_A4.Item(var_A4)
  loc_17D0BFD:         var_A8 = var_A8.Value
  loc_17D0C36:         var_108 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, var_E8, var_A8, var_D8)) 'String
  loc_17D0C64:         var_128 = (1 + Format(CStr(var_E8), "0000"))
  loc_17D0C8D:         var_118 = CVar(CLng(6)) 'Long
  loc_17D0CA6:         var_108 = Trim(CVar(CStr(Txt.DispID_41)))
  loc_17D0CE3:         Set var_A0 = Me.Txt
  loc_17D0CE9:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_B8, CVar(CLng(&HB)), CVar(CLng(var_86)), var_118, CVar(CLng(var_86)))
  loc_17D0CF1:         1 = var_A4.Tag
  loc_17D0D04:         Proc_6_7_F26918(var_2FC, Date, var_108, var_9C)
  loc_17D0D20:         var_AC = "Insert Into ItemGrp(Code,Name,Type,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & CStr("select Code,Name from ItemGrp where Name='" & Trim(Format(CStr(var_E8), "0000")))
  loc_17D0D3D:         var_1E4 = CVar(var_AC & "','") & var_108 & "','" & Trim(CVar(CStr(Txt.DispID_41))) 
  loc_17D0D63:         var_27C = var_1E4 & "','" & CVar(var_B8) & "','" & CVar(MemVar_1F95070) 
  loc_17D0DB0:         unk_496185.Execute CStr(var_27C & "','" & CVar(MemVar_1F950C8) & "'," & var_2FC & ",'A','" & CVar(MemVar_1F95078) & "')"), var_38C, -1
  loc_17D0DFD:       Else
  loc_17D0E17:         var_A4 = Me.Fields.Item("Code")
  loc_17D0E1F:         var_C8 = CVar(var_A4) 'Address
  loc_17D0E28:         var_AC = Proc_6_38_E69628(var_C8, var_A8, var_118)
  loc_17D0E2E:         global_92 = var_AC
  loc_17D0E3B:       End If
  loc_17D0E3F:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D0E5A:       var_E8 = CVar(CStr(Txt.DispID_41)) 'String
  loc_17D0E73:       Set var_A0 = Me.Txt
  loc_17D0E79:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_AC, CVar(CLng(8)))
  loc_17D0E81:       var_D8 = var_A4.Tag
  loc_17D0ED0:       unk_496185.Execute CStr("select Code,Name  from ItemCatMast where Name='" & Trim(var_E8) & "' And RestCode= '" & Trim(CVar(var_AC)) & "'"), var_1E4, -1
  loc_17D0EE1:       Set global_68 = var_A8
  loc_17D0F1B:       If Me.EOF Then
  loc_17D0F24:         var_F8 = 0
  loc_17D0F41:         var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE isnumeric(SUBSTRING(Code,3,4) )=1 and SITE_CODE='" & MemVar_1F95070
  loc_17D0F51:         unk_496185.Execute var_AC & "'", var_C8, -1
  loc_17D0F59:         var_A0 = var_A0.Fields
  loc_17D0F61:         var_F8 = var_A4.Item(var_A4)
  loc_17D0F69:         var_A8 = var_A8.Value
  loc_17D0FA2:         var_108 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, var_E8, var_A8)) 'String
  loc_17D0FD0:         var_128 = (1 + Format(CStr(var_E8), "0000"))
  loc_17D0FD5:         var_AC = CStr("select Code,Name  from ItemCatMast where Name='" & Trim(Format(CStr(var_E8), "0000")))
  loc_17D0FDB:         global_96 = var_AC
  loc_17D0FF1:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D1012:         var_108 = Trim(CVar(CStr(Txt.DispID_41)))
  loc_17D104F:         Set var_A0 = Me.Txt
  loc_17D1055:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(0), var_A4, var_AC, CVar(CLng(7)), CVar(CLng(var_86)), CVar(CLng(8)))
  loc_17D105D:         var_D8 = var_A4.Tag
  loc_17D109E:         var_1E4 = "Select * from ItemCatMast where  Name='" & var_108 & "' And Code='" & Trim(CVar(CStr(Txt.DispID_41))) & "'  And RestCode= '" 
  loc_17D10BC:         unk_496185.Execute CStr(var_1E4 & Trim(CVar(var_AC)) & "'"), var_27C, -1
  loc_17D10CD:         Set global_76 = var_A8
  loc_17D1111:         Set var_A0 = Me.Txt
  loc_17D1117:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_AC, "Code='", var_A8)
  loc_17D111F:         1 = var_A4.Tag
  loc_17D1128:         var_B8 = var_108 & var_AC
  loc_17D1139:         Me.Filter = CVar(var_B8 & "'")
  loc_17D114F:         ' Referenced from: 17D1788
  loc_17D1161:         If Not(Me.EOF) Then
  loc_17D1199:           Call Proc_176_26_F71DB0(CStr(Trim(CVar(CStr(Txt.DispID_41)))), var_B8, CVar(CLng(8)), CVar(CLng(var_86)))
  loc_17D11A1:           var_94 = var_B8
  loc_17D11B4:           var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D11E8:           Set var_A0 = Me.Txt
  loc_17D11EE:           Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_390, CVar(CLng(8)))
  loc_17D1243:           var_394 = Me.Fields.Item("AcName")
  loc_17D1279:           var_2DC = CVar(Me.Fields.Item("TaxStru")) 'Address
  loc_17D12EF:           Proc_6_7_F26918(var_42C, Date)
  loc_17D1336:           var_AC = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,Flag,CatType,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,RevCode,SITE_CODE,LOGSITE_CODE)"
  loc_17D133D:           var_B8 = var_AC & " Values('"
  loc_17D137A:           var_228 = CVar(var_B8 & global_96 & "','") & Trim(CVar(CStr(Txt.DispID_41))) & "','" & CVar(var_390) & "','" & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), var_A4.Tag)) 
  loc_17D13A0:           var_2FC = var_228 & "','" & CVar(Proc_6_38_E69628(CVar(var_394), global_88)) & "','" & CVar(Proc_6_38_E69628(var_2DC)) 
  loc_17D13C6:           var_3DC = var_2FC & "','" & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Flag")))) & "','" & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CatType")))) 
  loc_17D13FC:           var_494 = var_3DC & "','Y','" & CVar(MemVar_1F950C8) & "'," & var_42C & ",'A','" & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DrCr")))) 
  loc_17D142B:           var_534 = var_494 & "','" & CVar(var_94) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_17D144C:           unk_496185.Execute CStr(var_534 & CVar(MemVar_1F95078) & "')"), var_598, -1
  loc_17D150A:           var_118 = CVar(CLng(var_86)) 'Long
  loc_17D154D:           var_B4 = Me.Fields.Item("ShortName")
  loc_17D1555:           var_1E4 = var_B4.Value
  loc_17D1568:           Proc_6_7_F26918(var_2DC, Date, CVar(CLng(8)))
  loc_17D157B:           Set var_1F8 = Me.Txt
  loc_17D1581:           Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_394, var_B8)
  loc_17D1589:           var_118 = var_394.Tag
  loc_17D15B0:           var_36C = CVar(Me.Fields.Item("TaxStru")) 'Address
  loc_17D15DE:           var_3DC = CVar(Me.Fields.Item("DrCr")) 'Address
  loc_17D162C:           var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_94
  loc_17D1633:           var_108 = CVar(var_AC & "','") 'String
  loc_17D1639:           var_F8 = " - "
  loc_17D163E:           var_E8 = (Me.Fields.Item("ShortName").Value + "0000")
  loc_17D1652:           var_1D4 = var_108 & CVar(CStr(Txt.DispID_41)) & Trim(CVar(CStr(Txt.DispID_41))) & "','" 
  loc_17D1675:           var_26C = var_1D4 & var_1E4 & "','Y','Amount','Detail','POS','" & CVar(MemVar_1F95078) & "','" 
  loc_17D1698:           var_2FC = var_26C & CVar(MemVar_1F950C8) & "'," & var_2DC & ",'A','C','" 
  loc_17D16C8:           var_3FC = var_2FC & CVar(var_B8) & "','" & CVar(Proc_6_38_E69628(var_36C, var_59C)) & "','" & CVar(Proc_6_38_E69628(var_3DC)) 
  loc_17D16FB:           var_24C = CStr(var_3FC & "','" & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("AcName")))) & "','" & CVar(MemVar_1F95078) & "')")
  loc_17D1705:           unk_496185.Execute var_24C, var_494, -1
  loc_17D1783:           Me.MoveNext
  loc_17D1788:           GoTo loc_17D114F
  loc_17D178B:         End If
  loc_17D178E:       Else
  loc_17D17AB:         var_A4 = Me.Fields.Item("Code")
  loc_17D17B3:         var_C8 = var_A4.Value
  loc_17D17C2:         global_96 = CStr(var_C8)
  loc_17D17D3:       End If
  loc_17D17D9:       var_F8 = 0
  loc_17D1809:       unk_496185.Execute "select Count(*) from Item where Code='" & global_100 & "'", var_C8, -1
  loc_17D1811:       var_A0 = var_A0.Fields
  loc_17D1819:       var_F8 = var_A4.Item(var_A4)
  loc_17D1821:       var_A8 = var_A8.Value
  loc_17D1848:       If (CVar(CStr(Txt.DispID_41)) = 0) Then
  loc_17D184F:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D186E:         var_E8 = Date
  loc_17D1879:         Proc_6_7_F26918(var_108, var_E8, Txt.DispID_41, CVar(CLng(3)))
  loc_17D18A7:         var_390 = "Insert Into Item(Code,Name,BarCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_100 & "','" & CStr(var_C8)
  loc_17D18B8:         var_5A0 = var_390 & "','" & global_100
  loc_17D18DB:         var_128 = CVar(var_5A0 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_17D18EA:         var_1A4 = var_128 & var_108 & ",'A','" 
  loc_17D190B:         unk_496185.Execute CStr(var_1A4 & CVar(MemVar_1F95078) & "')"), var_1D4, -1
  loc_17D1941:       End If
  loc_17D196F:       Set var_A0 = Me.Txt
  loc_17D1975:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_5A0, Txt.DispID_41, CVar(CLng(3)), CVar(CLng(var_86)))
  loc_17D1986:       var_154 = CVar(CLng(var_86)) 'Long
  loc_17D198E:       var_174 = CVar(CLng(4)) 'Long
  loc_17D19F0:       Proc_6_7_F26918(var_1A4, Date, Txt.DispID_41, CVar(CLng(&HA)), CVar(CLng(var_86)), Txt.DispID_41, CVar(CLng(9)), CVar(CLng(var_86)))
  loc_17D19F9:       var_35C = CVar(CLng(var_86)) 'Long
  loc_17D1A01:       var_460 = CVar(CLng(&HB)) 'Long
  loc_17D1A19:       var_4E4 = CVar(CLng(var_86)) 'Long
  loc_17D1A21:       var_524 = CVar(CLng(&HC)) 'Long
  loc_17D1A39:       var_618 = CVar(CLng(var_86)) 'Long
  loc_17D1A41:       var_638 = CVar(CLng(&HE)) 'Long
  loc_17D1A59:       var_668 = CVar(CLng(var_86)) 'Long
  loc_17D1A61:       var_688 = CVar(CLng(&HF)) 'Long
  loc_17D1A79:       var_6B8 = CVar(CLng(var_86)) 'Long
  loc_17D1A81:       var_6D8 = CVar(CLng(&H10)) 'Long
  loc_17D1A99:       var_708 = CVar(CLng(var_86)) 'Long
  loc_17D1AA1:       var_728 = CVar(CLng(&H11)) 'Long
  loc_17D1AC3:       var_76C = CVar(CLng(var_86)) 'Long
  loc_17D1ACB:       var_78C = CVar(CLng(&H12)) 'Long
  loc_17D1AED:       var_7D0 = CVar(CLng(var_86)) 'Long
  loc_17D1AF5:       var_7F0 = CVar(CLng(&H13)) 'Long
  loc_17D1B17:       var_854 = CVar(CLng(var_86)) 'Long
  loc_17D1B1F:       var_874 = CVar(CLng(&H14)) 'Long
  loc_17D1B37:       var_8A4 = CVar(CLng(var_86)) 'Long
  loc_17D1B3F:       var_8C4 = CVar(CLng(&H15)) 'Long
  loc_17D1B57:       var_934 = CVar(CLng(var_86)) 'Long
  loc_17D1BC7:       var_AC = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,SChrgApp,RateIncTax,IssueUnit,ConvRatio,PurchRate,LPurRate,LOGSITE_CODE,ActiveYN,NType,FinItem,ItemType,BarCode,CommodityCode) " & " Values ('"
  loc_17D1BD8:       var_24C = var_AC & global_100 & "','"
  loc_17D1C2A:       var_5C8 = var_24C & CStr(var_C8) & "','" & var_5A0 & "'," & CStr(global_88) & ",'" & CStr(var_E8) & "','" & global_92
  loc_17D1C7B:       var_5F8 = var_5C8 & "','" & global_96 & "','" & CStr(var_108) & "','" & CStr(var_128) & "', '" & MemVar_1F95070 & "','" & MemVar_1F950C8
  loc_17D1C99:       var_208 = CVar(CStr(var_1E4)) 'String
  loc_17D1CB0:       var_29C = CVar(var_5F8 & "',") & var_1A4 & ",'A','" & var_208 & "','" & CVar(CStr(var_26C)) 
  loc_17D1CCD:       var_2EC = var_29C & "'," & CVar(var_9C) & ",'" 
  loc_17D1CE1:       var_34C = var_2EC & CVar(CStr(var_2FC)) & "','" 
  loc_17D1CF5:       var_3CC = var_34C & CVar(CStr(var_36C)) & "','" 
  loc_17D1D14:       var_42C = var_3CC & CVar(CStr(var_3DC)) & "'," & CVar(Val(CStr(Txt.DispID_41))) 
  loc_17D1D31:       var_484 = var_42C & "," & CVar(Val(CStr(Txt.DispID_41))) & "," 
  loc_17D1D4F:       var_4F4 = var_484 & CVar(Val(CStr(Txt.DispID_41))) & ",'" & CVar(MemVar_1F95078) 
  loc_17D1D63:       var_574 = var_4F4 & "','Yes','" & CVar(CStr(var_534)) 
  loc_17D1D8B:       var_994 = var_574 & "','" & CVar(CStr(var_8E4)) & "','" & CVar(CStr(var_974)) 
  loc_17D1DCA:       unk_496185.Execute CStr(var_994 & "','" & CVar(CStr(var_A04)) & "','" & CVar(CStr(var_A94)) & "')"), var_AF8, -1
  loc_17D1EAA:       Set var_A0 = Me.Txt
  loc_17D1EB0:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_24C, var_A8, Txt.DispID_41, CVar(CLng(&H19)), CVar(CLng(var_86)))
  loc_17D1EB8:       Txt.DispID_41 = var_A4.Tag
  loc_17D1EC8:       Set var_A8 = Me.Txt
  loc_17D1ECE:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_B4, CVar(CLng(&H17)), CVar(CLng(var_86)))
  loc_17D1ED6:       var_C8 = CVar(var_B4) 'Address
  loc_17D1EDD:       Proc_6_7_F26918(var_E8, var_C8, Txt.DispID_41)
  loc_17D1EF0:       Proc_6_7_F26918(var_208, Date, CVar(CLng(&H16)))
  loc_17D1F13:       var_B8 = "Insert Into Itemrate(ItemCode,RestCode,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('" & global_100
  loc_17D1F3B:       var_108 = CVar(var_B8 & "','" & var_24C & "'," & CStr(var_9C) & ",") 'String
  loc_17D1F8A:       var_26C = var_108 & var_E8 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_208 & ",'A','" & CVar(MemVar_1F95078) 
  loc_17D1F93:       var_27C = var_26C & "')" 
  loc_17D1F97:       var_5AC = CStr(var_27C)
  loc_17D1FA1:       unk_496185.Execute var_5AC, var_29C, -1
  loc_17D1FED:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D2017:       Set var_A0 = Me.Txt
  loc_17D201D:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(0), var_A4, var_24C, Txt.DispID_41, CVar(CLng(2)))
  loc_17D2025:       var_D8 = var_A4.Tag
  loc_17D202E:       var_154 = CVar(CLng(var_86)) 'Long
  loc_17D2058:       Set var_A8 = Me.Txt
  loc_17D205E:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(0), var_B4, var_5AC, Txt.DispID_41, CVar(CLng(2)))
  loc_17D2066:       var_154 = var_B4.Tag
  loc_17D208A:       var_390 = "Select * From BOM Where FinItem='" & CStr(var_C8) & "' And RestCode='"
  loc_17D20B1:       var_5B4 = var_390 & var_24C & "' And AppDate=(Select Max(AppDate) From BOM Where FinItem='" & CStr(var_E8) & "' And RestCode='" & var_5AC
  loc_17D20C1:       unk_496185.Execute var_5B4 & "') Order By RawSno", var_108, -1
  loc_17D20CC:       Set var_90 = var_1F8
  loc_17D2100:       ' Referenced from: 17D24AF
  loc_17D210F:       If Not(var_90.EOF) Then
  loc_17D2126:         var_AC = "Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('" & MemVar_1F95070
  loc_17D2167:         Proc_6_39_E7D3A0(var_E8, CVar(var_90.Fields.Item("FinQty")), CVar(var_AC & "','" & global_100 & "',"), var_994, -1)
  loc_17D21DA:         Proc_6_39_E7D3A0(var_208, CVar(var_90.Fields.Item("RawQty")), var_90.Fields & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("RawItem")), var_B30 & var_E8 & ",'", var_90.Fields)) & "',")
  loc_17D2215:         Proc_6_39_E7D3A0(var_27C, CVar(var_90.Fields.Item("RawSno")))
  loc_17D2250:         Proc_6_39_E7D3A0(var_2EC, CVar(var_90.Fields.Item("Cost")))
  loc_17D228B:         Proc_6_39_E7D3A0(var_34C, CVar(var_90.Fields.Item("Waste")))
  loc_17D22C6:         Proc_6_39_E7D3A0(var_3CC, CVar(var_90.Fields.Item("Total")))
  loc_17D22EA:         var_40C = var_934 & var_208 & "," & var_27C & "," & var_2EC & "," & var_34C & "," & var_3CC & ",'" & CVar(MemVar_1F950C8) & "'," 
  loc_17D22FC:         Proc_6_7_F26918(var_42C, Date)
  loc_17D2337:         Proc_6_39_E7D3A0(var_484, CVar(var_90.Fields.Item("SavedForQty")))
  loc_17D2357:         Set var_B18 = Me.Txt
  loc_17D235D:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_B1C)
  loc_17D236C:         Proc_6_7_F26918(var_4F4, CVar(var_B1C))
  loc_17D23A7:         Proc_6_39_E7D3A0(var_574, CVar(var_90.Fields.Item("WtUnit")))
  loc_17D23CB:         var_904 = var_40C & var_42C & ",'A'," & var_484 & "," & var_4F4 & ",'" & var_574 & "','" & CVar(MemVar_1F95078) & "','" 
  loc_17D23DD:         Set var_B28 = Me.Txt
  loc_17D23E3:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_B2C, var_390)
  loc_17D23EB:         var_904 = var_B2C.Tag
  loc_17D240D:         unk_496185.Execute CStr(Txt.DispID_41 & CVar(var_390) & "')"), , 
  loc_17D24AA:         var_90.MoveNext
  loc_17D24AF:         GoTo loc_17D2100
  loc_17D24B2:       End If
  loc_17D24B2:     End If
  loc_17D24B2:   End If
  loc_17D24B5: Next var_134 'Integer
  loc_17D24BC: Set var_12C = Nothing 
  loc_17D24C6: unk_496185.CommitTrans
  loc_17D24CF: var_88 = CByte(0) 'Byte
  loc_17D24DE: Me.Requery -1
  loc_17D24EE: Me.Requery -1
  loc_17D24FE: Me.Requery -1
  loc_17D2503: Call Proc_176_27_EF8C30()
  loc_17D2508: Call Proc_176_25_EDD490()
  loc_17D2520: Me.FGrid1.Rows = 2
  loc_17D2528: Call Proc_176_29_133E018()
  loc_17D2538: Set global_68 = Nothing
  loc_17D2544: Set var_8C = Nothing
  loc_17D254C: Set var_90 = Nothing
  loc_17D255A: Set global_72 = Nothing
  loc_17D2561: Exit Sub
  loc_17D2562: ' Referenced from: 17D0ACC
  loc_17D2562: ' Referenced from: 17D0648
  loc_17D256B: If (CInt(var_88) = 1) Then
  loc_17D2574:   unk_496185.RollbackTrans
  loc_17D2579: End If
  loc_17D257F: Call 0.Method_arg_50 (var_AC)
  loc_17D2587: var_24C = "cmdCopy_Click"
  loc_17D2594: Proc_183_57_104B0BC(var_AC)
  loc_17D25A0: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F37034
  'Data Table: 496164
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F36F2B: Me.DGItemGroup.Visible = False
  loc_F36F4A: If (Me.RecordCount > 0) Then
  loc_F36F89:   Set var_B4 = Me.Txt
  loc_F36F8F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(1), var_B8)
  loc_F36F97:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F36FCA:   var_B0 = Me.Fields.Item("Code")
  loc_F36FE9:   Set var_B4 = Me.Txt
  loc_F36FEF:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(1), var_B8)
  loc_F36FF7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3700D: End If
  loc_F37018: Set var_A8 = Me.Txt
  loc_F3701E: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(1))
  loc_F37026: var_B0.SetFocus
  loc_F37032: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E71A78
  'Data Table: 496164
  loc_E71A36: Proc_6_153_E91D24(Me.DGItemGroup, arg_14)
  loc_E71A4D: Set var_8C = Me.FGPoint
  loc_E71A69: Proc_6_138_106E830(Me.DGItemGroup, global_60, CInt(1))
  loc_E71A77: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1379CF0
  'Data Table: 496164
  Dim var_92 As Integer
  Dim var_C4 As String
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  Dim var_8C As TextBox
  Dim var_10C As String
  loc_137946C: On Error Goto loc_1379CC6
  loc_1379479: Set var_88 = Me.Txt
  loc_137947F: Call 0.Method_Txt_GotFocus0 (Index)
  loc_137948D: Proc_183_28_E216B0(var_8C)
  loc_1379499: Call Proc_176_27_EF8C30(var_8C)
  loc_13794A1: var_92 = Index
  loc_13794AC: If (var_92 = CInt(0)) Then
  loc_13794BF:   Set var_88 = Me.Txt
  loc_13794C5:   Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_13794F0:   Me.Filter = "Name <>'" & Trim(CVar(var_8C)) & "'"
  loc_1379516:   Me.DGOutlet.Tag = CVar(CStr(Index))
  loc_1379538:   If (Me.RecordCount > 0) Then
  loc_1379546:     Set var_8C = Me.FGPoint
  loc_137955E:     Proc_6_137_1192FDC(Me.DGOutlet, global_56, Index)
  loc_137956C:   End If
  loc_13795BA:   Set var_88 = Me.Txt
  loc_13795C0:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_13795C8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13795E0:   If (var_8C Or (var_100 = vbNullString)) Then
  loc_13795E3:     Exit Sub
  loc_13795E4:   End If
  loc_13795F1:   Set var_88 = Me.Txt
  loc_13795F7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13795FF:   var_100 = var_8C.Text
  loc_1379611:   var_C4 = "Name"
  loc_137964C:   If CBool(CVar(var_100) <> Me.Fields.Item(var_C4).Value) Then
  loc_1379655:     Me.MoveFirst
  loc_1379678:     Set var_88 = Me.Txt
  loc_137967E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_1379686:     0 = var_8C.Text
  loc_137969F:     Me.Find 1 & var_100 & "'", var_C4, var_92
  loc_13796B4:   End If
  loc_13796B7: Else
  loc_13796BF:   If (var_92 = CInt(1)) Then
  loc_13796D3:     Set var_88 = Me.Txt
  loc_13796D9:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_13796E1:     var_100 = var_8C.Tag
  loc_1379706:     Me.Filter = CVar("Depart='" & Proc_6_38_E69628(CVar(var_100)) & "'")
  loc_1379737:     If (Me.RecordCount > 0) Then
  loc_1379745:       Set var_8C = Me.FGPoint
  loc_137975D:       Proc_6_137_1192FDC(Me.DGItemGroup, global_60)
  loc_137976B:     End If
  loc_13797B9:     Set var_88 = Me.Txt
  loc_13797BF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_13797C7:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13797DF:     If (Index Or (var_100 = vbNullString)) Then
  loc_13797E2:       Exit Sub
  loc_13797E3:     End If
  loc_13797F0:     Set var_88 = Me.Txt
  loc_13797F6:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13797FE:     var_100 = var_8C.Text
  loc_1379810:     var_C4 = "Name"
  loc_137984B:     If CBool(CVar(var_100) <> Me.Fields.Item(var_C4).Value) Then
  loc_1379854:       Me.MoveFirst
  loc_1379877:       Set var_88 = Me.Txt
  loc_137987D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_1379885:       0 = var_8C.Text
  loc_137989E:       Me.Find 1 & var_100 & "'", var_C4, var_8C
  loc_13798B3:     End If
  loc_13798B6:   Else
  loc_13798BE:     If (var_92 = CInt(3)) Then
  loc_13798D1:       Set var_88 = Me.Txt
  loc_13798D7:       Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1379902:       Me.Filter = "Name <>'" & Trim(CVar(var_8C)) & "' And RestType<>'Banquet'"
  loc_1379928:       Me.DGOutlet.Tag = CVar(CStr(Index))
  loc_137994A:       If (Me.RecordCount > 0) Then
  loc_1379958:         Set var_8C = Me.FGPoint
  loc_1379970:         Proc_6_137_1192FDC(Me.DGOutlet, global_56)
  loc_137997E:       End If
  loc_13799CC:       Set var_88 = Me.Txt
  loc_13799D2:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_13799DA:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13799F2:       If (Index Or (var_100 = vbNullString)) Then
  loc_13799F5:         Exit Sub
  loc_13799F6:       End If
  loc_1379A03:       Set var_88 = Me.Txt
  loc_1379A09:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1379A11:       var_100 = var_8C.Text
  loc_1379A23:       var_C4 = "Name"
  loc_1379A5E:       If CBool(CVar(var_100) <> Me.Fields.Item(var_C4).Value) Then
  loc_1379A67:         Me.MoveFirst
  loc_1379A8A:         Set var_88 = Me.Txt
  loc_1379A90:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_1379A98:         0 = var_8C.Text
  loc_1379AB1:         Me.Find 1 & var_100 & "'", var_C4, var_8C
  loc_1379AC6:       End If
  loc_1379AC9:     Else
  loc_1379AD1:       If (var_92 = CInt(2)) Then
  loc_1379AE5:         Set var_88 = Me.Txt
  loc_1379AEB:         Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1379AF3:         var_100 = var_8C.Tag
  loc_1379B18:         Me.Filter = CVar("Depart='" & Proc_6_38_E69628(CVar(var_100)) & "'")
  loc_1379B49:         If (Me.RecordCount > 0) Then
  loc_1379B57:           Set var_8C = Me.FGPoint
  loc_1379B6F:           Proc_6_137_1192FDC(Me.DGItemCat, global_64)
  loc_1379B7D:         End If
  loc_1379BCB:         Set var_88 = Me.Txt
  loc_1379BD1:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_1379BD9:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1379BF1:         If (Index Or (var_100 = vbNullString)) Then
  loc_1379BF4:           Exit Sub
  loc_1379BF5:         End If
  loc_1379C02:         Set var_88 = Me.Txt
  loc_1379C08:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1379C10:         var_100 = var_8C.Text
  loc_1379C22:         var_C4 = "Name"
  loc_1379C5D:         If CBool(CVar(var_100) <> Me.Fields.Item(var_C4).Value) Then
  loc_1379C66:           Me.MoveFirst
  loc_1379C89:           Set var_88 = Me.Txt
  loc_1379C8F:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_1379C97:           0 = var_8C.Text
  loc_1379CB0:           Me.Find 1 & var_100 & "'", var_C4, var_8C
  loc_1379CC5:         End If
  loc_1379CC5:       End If
  loc_1379CC5:     End If
  loc_1379CC5:   End If
  loc_1379CC5: End If
  loc_1379CC5: Exit Sub
  loc_1379CC6: ' Referenced from: 137946C
  loc_1379CCC: Call 0.Method_arg_50 (var_100)
  loc_1379CD4: var_10C = "Txt_GotFocus"
  loc_1379CE1: Proc_183_57_104B0BC(var_100)
  loc_1379CED: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11DF3A0
  'Data Table: 496164
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_9C As MSFlexGrid
  loc_11DEF38: On Error Goto loc_11DF375
  loc_11DEF45: If (CLng(Shift) = &H1B) Then
  loc_11DEF48:   Call Proc_176_27_EF8C30()
  loc_11DEF4D:   Exit Sub
  loc_11DEF4E: End If
  loc_11DEF51: var_88 = KeyCode
  loc_11DEF5C: If Not (var_88 = CInt(0)) Then
  loc_11DEF67:   If (var_88 = CInt(3)) Then
  loc_11DEF6A:   End If
  loc_11DEF87:   Set var_9C = Me.FGPoint
  loc_11DEF92:   Set var_98 = Nothing
  loc_11DEFC0:   Proc_6_69_134A630(Me.DGOutlet, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_11DF02F:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11DF055:     Proc_6_138_106E830(Me.DGOutlet, global_56, KeyCode, Me.FGPoint, 1)
  loc_11DF063:   End If
  loc_11DF066: Else
  loc_11DF06E:   If (var_88 = CInt(1)) Then
  loc_11DF099:     Set var_98 = Nothing
  loc_11DF0C7:     Proc_6_69_134A630(Me.DGItemGroup, Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_11DF136:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11DF13D:       Set var_98 = Me.DGItemGroup
  loc_11DF15C:       Proc_6_138_106E830(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_11DF16A:     End If
  loc_11DF16D:   Else
  loc_11DF175:     If (var_88 = CInt(2)) Then
  loc_11DF1CE:       Proc_6_69_134A630(Me.DGItemCat, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_11DF23D:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11DF263:         Proc_6_138_106E830(Me.DGItemCat, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_11DF271:       End If
  loc_11DF271:     End If
  loc_11DF271:   End If
  loc_11DF271: End If
  loc_11DF2A2: Set var_98 = Me.DGItemCat
  loc_11DF2B9: Set var_9C = Me.FGPoint
  loc_11DF2E2: If ((((CBool(Me.DGOutlet.Visible) = 0) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_11DF315:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (((KeyCode = CInt(4)) Or (KeyCode = CInt(2))) Or (KeyCode = CInt(1)))) Then
  loc_11DF320:     Call Txt_Validate(KeyCode)
  loc_11DF32B:     Call Proc_176_28_161C908(KeyCode, 0, 0, var_98)
  loc_11DF330:   End If
  loc_11DF345:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11DF34E:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_11DF353:   End If
  loc_11DF366:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(3))) Then
  loc_11DF36F:     Proc_6_76_E533C8(Shift, arg_14)
  loc_11DF374:   End If
  loc_11DF374: End If
  loc_11DF374: Exit Sub
  loc_11DF375: ' Referenced from: 11DEF38
  loc_11DF37B: Call 0.Method_arg_50 (var_F4, 0)
  loc_11DF390: Proc_183_57_104B0BC(var_F4, "Txt_KeyDown")
  loc_11DF39C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1002430
  'Data Table: 496164
  Dim var_86 As Integer
  loc_1002230: On Error Goto loc_1002407
  loc_1002236: var_86 = KeyAscii
  loc_1002241: If Not (var_86 = CInt(0)) Then
  loc_100224C:   If (var_86 = CInt(3)) Then
  loc_100224F:   End If
  loc_100226B:   If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_100227D:     var_A0 = "Name"
  loc_1002298:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10)
  loc_10022CA:     Proc_6_138_106E830(Me.DGOutlet, global_56, KeyAscii, Me.FGPoint)
  loc_10022D8:   End If
  loc_10022DB: Else
  loc_10022E3:   If (var_86 = CInt(1)) Then
  loc_1002302:     If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_100232F:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_1002361:       Proc_6_138_106E830(Me.DGItemGroup, global_60, KeyAscii, Me.FGPoint)
  loc_100236F:     End If
  loc_1002372:   Else
  loc_100237A:     If (var_86 = CInt(2)) Then
  loc_1002399:       If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_10023AB:         var_A0 = "Name"
  loc_10023C6:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, var_A0)
  loc_10023F8:         Proc_6_138_106E830(Me.DGItemCat, global_64, KeyAscii, Me.FGPoint, 0)
  loc_1002406:       End If
  loc_1002406:     End If
  loc_1002406:   End If
  loc_1002406: End If
  loc_1002406: Exit Sub
  loc_1002407: ' Referenced from: 1002230
  loc_100240D: Call 0.Method_arg_50 (var_A0, 0, var_A0)
  loc_1002422: Proc_183_57_104B0BC(var_A0, "TXT_KeyPress")
  loc_100242E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10A5EFC
  'Data Table: 496164
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  loc_10A5C38: On Error Goto loc_10A5ED2
  loc_10A5C3E: var_86 = KeyCode
  loc_10A5C49: If Not (var_86 = CInt(0)) Then
  loc_10A5C54:   If (var_86 = CInt(3)) Then
  loc_10A5C57:   End If
  loc_10A5C7A:   Set var_A0 = Me.Txt
  loc_10A5C80:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_10A5C88:   (CBool(Me.DGOutlet.Visible) = &HFF) = var_A4.Text
  loc_10A5CA5:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_10A5CB9:     var_A8 = "Name"
  loc_10A5CDD:     Proc_6_68_12A2818(Me.DGOutlet, Me.Txt, KeyCode)
  loc_10A5CF4:     Set var_A4 = Me.DGOutlet
  loc_10A5D13:     Proc_6_138_106E830(var_A4, global_56, KeyCode, Me.FGPoint)
  loc_10A5D21:   End If
  loc_10A5D24: Else
  loc_10A5D2C:   If (var_86 = CInt(1)) Then
  loc_10A5D52:     Set var_A0 = Me.Txt
  loc_10A5D58:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGItemGroup.Visible) = &HFF))
  loc_10A5D60:     global_56 = var_A4.Text
  loc_10A5D7D:     If (Shift And (var_A8 <> vbNullString)) Then
  loc_10A5D91:       var_A8 = "Name"
  loc_10A5DB5:       Proc_6_68_12A2818(Me.DGItemGroup, Me.Txt, KeyCode, global_60)
  loc_10A5DCC:       Set var_A4 = Me.DGItemGroup
  loc_10A5DEB:       Proc_6_138_106E830(var_A4, global_60, KeyCode, Me.FGPoint)
  loc_10A5DF9:     End If
  loc_10A5DFC:   Else
  loc_10A5E04:     If (var_86 = CInt(2)) Then
  loc_10A5E2A:       Set var_A0 = Me.Txt
  loc_10A5E30:       Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGItemCat.Visible) = &HFF))
  loc_10A5E38:       Shift = var_A4.Text
  loc_10A5E55:       If (var_A8 And (var_A8 <> vbNullString)) Then
  loc_10A5E69:         var_A8 = "Name"
  loc_10A5E8D:         Proc_6_68_12A2818(Me.DGItemCat, Me.Txt, KeyCode, global_64)
  loc_10A5EC3:         Proc_6_138_106E830(Me.DGItemCat, global_64, KeyCode, Me.FGPoint)
  loc_10A5ED1:       End If
  loc_10A5ED1:     End If
  loc_10A5ED1:   End If
  loc_10A5ED1: End If
  loc_10A5ED1: Exit Sub
  loc_10A5ED2: ' Referenced from: 10A5C38
  loc_10A5ED8: Call 0.Method_arg_50 (var_A8, Shift)
  loc_10A5EED: Proc_183_57_104B0BC(var_A8, "Txt_KeyUp")
  loc_10A5EF9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5058C
  'Data Table: 496164
  loc_E5056A: Set var_88 = Me.Txt
  loc_E50570: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5057E: Proc_6_73_E23294(var_8C)
  loc_E5058A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12D4AF4
  'Data Table: 496164
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_D0 As String
  Dim var_94 As Fields15
  Dim var_D4 As Variant
  Dim var_8C As Fields15
  Dim var_98 As String
  Dim var_100 As TextBox
  loc_12D4464: On Error Goto loc_12D4ACB
  loc_12D446A: var_86 = Cancel
  loc_12D4475: If Not (var_86 = CInt(0)) Then
  loc_12D4480:   If (var_86 = CInt(3)) Then
  loc_12D4483:   End If
  loc_12D448D:   Set var_8C = Me.Txt
  loc_12D4493:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D449B:   var_98 = "Outlet Name"
  loc_12D44BC:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_12D44C1:     arg_10 = &HFF
  loc_12D44C4:     Exit Sub
  loc_12D44C5:   End If
  loc_12D44D2:   Set var_8C = Me.Txt
  loc_12D44D8:   Call 0.Method_Txt_Validate0 (Cancel, var_90, vbNullString)
  loc_12D44E0:   var_90.Tag = arg_10
  loc_12D453A:   Set var_8C = Me.Txt
  loc_12D4540:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_12D4548:   ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_90.Text
  loc_12D4560:   If (var_86 Or (var_98 <> vbNullString)) Then
  loc_12D4570:     Set var_8C = Me.Txt
  loc_12D4576:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D457E:     var_98 = var_90.Text
  loc_12D459A:     var_D0 = "Name"
  loc_12D45B1:     var_D4 = Me.Fields.Item(var_D0)
  loc_12D45D7:     If (Trim(CVar(var_98)) = var_D4.Value) Then
  loc_12D45E0:       Me.MoveFirst
  loc_12D4603:       Set var_8C = Me.Txt
  loc_12D4609:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "Name ='")
  loc_12D4611:       0 = var_90.Text
  loc_12D462A:       Me.Find 1 & var_98 & "'", var_D0, 
  loc_12D465C:       var_90 = Me.Fields.Item("Code")
  loc_12D467A:       Set var_94 = Me.Txt
  loc_12D4680:       Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_12D4688:       var_D4.Tag = CStr(var_90.Value)
  loc_12D469E:     End If
  loc_12D469E:   End If
  loc_12D46A1: Else
  loc_12D46A9:   If (var_86 = CInt(1)) Then
  loc_12D46FA:     Set var_8C = Me.Txt
  loc_12D4700:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D4720:     If (((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Or (var_90.Text <> vbNullString)) Then
  loc_12D4730:       Set var_8C = Me.Txt
  loc_12D4736:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D473E:       var_90.Tag = vbNullString
  loc_12D4757:       Set var_8C = Me.Txt
  loc_12D475D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D4765:       var_98 = var_90.Text
  loc_12D4781:       var_D0 = "Name"
  loc_12D4798:       var_D4 = Me.Fields.Item(var_D0)
  loc_12D47BE:       If (Trim(CVar(var_98)) = var_D4.Value) Then
  loc_12D47C7:         Me.MoveFirst
  loc_12D47EA:         Set var_8C = Me.Txt
  loc_12D47F0:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "Name ='")
  loc_12D47F8:         0 = var_90.Text
  loc_12D4811:         Me.Find 1 & var_98 & "'", var_D0, 
  loc_12D4843:         var_90 = Me.Fields.Item("Code")
  loc_12D4861:         Set var_94 = Me.Txt
  loc_12D4867:         Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_12D486F:         var_D4.Tag = CStr(var_90.Value)
  loc_12D4885:       End If
  loc_12D4885:     End If
  loc_12D4888:   Else
  loc_12D4890:     If (var_86 = CInt(2)) Then
  loc_12D48E1:       Set var_8C = Me.Txt
  loc_12D48E7:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D4907:       If (((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Or (var_90.Text <> vbNullString)) Then
  loc_12D4917:         Set var_8C = Me.Txt
  loc_12D491D:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D4925:         var_90.Tag = vbNullString
  loc_12D493E:         Set var_8C = Me.Txt
  loc_12D4944:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D494C:         var_98 = var_90.Text
  loc_12D4968:         var_D0 = "Name"
  loc_12D497F:         var_D4 = Me.Fields.Item(var_D0)
  loc_12D49A5:         If (Trim(CVar(var_98)) = var_D4.Value) Then
  loc_12D49AE:           Me.MoveFirst
  loc_12D49D1:           Set var_8C = Me.Txt
  loc_12D49D7:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "Name ='")
  loc_12D49DF:           0 = var_90.Text
  loc_12D49F8:           Me.Find 1 & var_98 & "'", var_D0, 
  loc_12D4A2A:           var_90 = Me.Fields.Item("Code")
  loc_12D4A48:           Set var_94 = Me.Txt
  loc_12D4A4E:           Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_12D4A56:           var_D4.Tag = CStr(var_90.Value)
  loc_12D4A6C:         End If
  loc_12D4A6C:       End If
  loc_12D4A6F:     Else
  loc_12D4A77:       If (var_86 = CInt(4)) Then
  loc_12D4A84:         Set var_8C = Me.Txt
  loc_12D4A8A:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_12D4A9D:         var_98 = Proc_6_33_15125B8(var_90)
  loc_12D4AAA:         Set var_D4 = Me.Txt
  loc_12D4AB0:         Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_12D4AB8:         var_100.Text = var_98
  loc_12D4ACB:       End If
  loc_12D4ACB:     End If
  loc_12D4ACB:   End If
  loc_12D4ACB:   ' Referenced from: 12D4464
  loc_12D4ACB: End If
  loc_12D4AD1: Call 0.Method_arg_50 (var_98)
  loc_12D4AE6: Proc_183_57_104B0BC(var_98, "Txt_Validate")
  loc_12D4AF2: Exit Sub
  loc_12D4AF3: var_90() = 
End Sub

Private Sub CmdExit_UnknownEvent_9 'E15F64
  'Data Table: 496164
  loc_E15F59: Me.Global.Unload Me
  loc_E15F61: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15FFC
  'Data Table: 496164
  loc_E15FF1: Me.Global.Unload Me
  loc_E15FF9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E40CA4
  'Data Table: 496164
  Dim Me As Recordset15
  loc_E40C7B: Me.Requery -1
  loc_E40C8B: Me.Requery -1
  loc_E40C9B: Me.Requery -1
  loc_E40CA0: Exit Sub
End Sub

Private Sub Form_Load() '11DB06C
  'Data Table: 496164
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_BC As Variant
  Dim var_D4 As Variant
  Dim var_DC As TextBox
  Dim var_E8 As String
  Dim var_EC As String
  Dim var_FC As String
  Dim unk_496185 As Connection15
  loc_11DAC10: On Error Goto loc_11DB042
  loc_11DAC1A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11DAC32: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_11DAC3A: Call Proc_176_29_133E018()
  loc_11DAC3F: Call Proc_176_25_EDD490()
  loc_11DAC48: Set var_C0 = Me.FGrid1
  loc_11DAC57: var_98 = 0
  loc_11DAC6A: var_BC = Me.FGrid1.ColWidth)
  loc_11DAC88: Me.Check1.Left = (CDbl(CLng(var_BC)) + CDbl(var_C0.Left))
  loc_11DACAB: Set var_AC = Me.Txt
  loc_11DACB1: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_D8)
  loc_11DACB9: var_98 = var_C0.Left
  loc_11DACD0: Me.DGOutlet.Left = CVar(var_D8)
  loc_11DACEC: Set var_D4 = Me.Txt
  loc_11DACF2: Call 0.Method_Form_Load0 (CInt(0), var_DC)
  loc_11DAD0D: Set var_AC = Me.Txt
  loc_11DAD13: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_11DAD2B: var_98 = CVar(((var_C0.Top + var_DC.Height) + CDbl(&H1E))) 'Single
  loc_11DAD3A: Me.DGOutlet.Top = CVar(var_C0.Top)
  loc_11DAD5A: Set var_AC = Me.Txt
  loc_11DAD60: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_11DAD7F: Me.DGItemGroup.Left = CVar(var_C0.Left)
  loc_11DAD9B: Set var_D4 = Me.Txt
  loc_11DADA1: Call 0.Method_Form_Load0 (CInt(1), var_DC)
  loc_11DADBC: Set var_AC = Me.Txt
  loc_11DADC2: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_11DADDA: var_98 = CVar(((var_C0.Top + var_DC.Height) + CDbl(&H1E))) 'Single
  loc_11DADE9: Me.DGItemGroup.Top = CVar(var_C0.Left)
  loc_11DAE09: Set var_AC = Me.Txt
  loc_11DAE0F: Call 0.Method_Form_Load0 (CInt(2), var_C0)
  loc_11DAE2E: Me.DGItemCat.Left = CVar(var_C0.Left)
  loc_11DAE4A: Set var_D4 = Me.Txt
  loc_11DAE50: Call 0.Method_Form_Load0 (CInt(2), var_DC)
  loc_11DAE71: Call 0.Method_Form_Load0 (CInt(2), var_C0)
  loc_11DAE89: var_98 = CVar(((var_C0.Top + var_DC.Height) + CDbl(&H1E))) 'Single
  loc_11DAE98: Me.DGItemCat.Top = CVar(var_C0.Left)
  loc_11DAEB0: Call 0.Method_arg_1C4 ("AEDP")
  loc_11DAED0: var_EC = "SELECT Code,Name,RestType,ShortName FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND (OutletYN='Y' and RestType<>'Banquet') "
  loc_11DAEEC: var_FC = var_EC & "Union All Select '" & MemVar_1F95078 & "BANQ' Code,'BANQUET' Name,'Banquet' RestType,'BANQ' ShortName " & "Union All Select '"
  loc_11DAF03: unk_496185.Execute var_FC & MemVar_1F95078 & "ODC' Code,'BANQUET OUTDOOR' Name,'Banquet' RestType,'ODC' ShortName ORDER BY NAME", var_BC, -1
  loc_11DAF14: Set global_56 = Me.Txt
  loc_11DAF3E: CVarUnk
  loc_11DAF43: VerifyVarObj
  loc_11DAF4F: LateIdStAd
  loc_11DAF78: var_EC = "select IG.code ,IG.name,IG.restcode as Depart from itemgrp IG WHERE (IG.LOGSITE_CODE='" & MemVar_1F95078 & "' OR IG.LOGSITE_CODE='HO') order by IG.Name"
  loc_11DAF81: unk_496185.Execute var_EC, var_BC, -1
  loc_11DAF92: Set global_60 = Me.DGOutlet
  loc_11DAFB0: CVarUnk
  loc_11DAFB5: VerifyVarObj
  loc_11DAFC1: LateIdStAd
  loc_11DAFE3: var_E8 = "Select IC.Code,IC.Name,IC.RestCode as Depart From ItemCatMast IC WHERE (IC.LOGSITE_CODE='" & MemVar_1F95078
  loc_11DAFF3: unk_496185.Execute var_E8 & "' OR IC.LOGSITE_CODE='HO') order by IC.Name", var_BC, -1
  loc_11DB004: Set global_64 = Me.DGItemGroup
  loc_11DB022: CVarUnk
  loc_11DB027: VerifyVarObj
  loc_11DB02D: Set var_AC = Me.DGItemCat
  loc_11DB033: LateIdStAd
  loc_11DB041: Exit Sub
  loc_11DB042: ' Referenced from: 11DAC10
  loc_11DB048: Call 0.Method_arg_50 (var_E8, var_AC, global_64, var_AC, var_AC, global_60)
  loc_11DB05D: Proc_183_57_104B0BC(var_E8, "Form_Load", var_AC, var_AC)
  loc_11DB069: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7218
  'Data Table: 496164
  Dim var_8C As Label
  loc_ED7176: Call 0.Method_arg_50 (var_88)
  loc_ED7188: Me.LblFormCaption.Caption = var_88
  loc_ED71A1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED71AD: Set var_A0 = Me.TopCtrl1
  loc_ED71B3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED71C0: Set var_8C = Me.TopCtrl1
  loc_ED71C6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED71E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED71FB: Call 0.Method_arg_100 (var_B8)
  loc_ED720D: Me.LblFormCaption.Width = var_B8
  loc_ED7215: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E60648
  'Data Table: 496164
  loc_E60607: Set global_52 = Nothing
  loc_E60619: Set global_56 = Nothing
  loc_E6062B: Set global_60 = Nothing
  loc_E6063D: Set global_64 = Nothing
  loc_E60644: Exit Sub
  loc_E60645: StAryRecMove
End Sub

Private Sub Form_Activate() 'E2D6C4
  'Data Table: 496164
  Dim var_8C As TextBox
  loc_E2D6A7: Set var_88 = Me.Txt
  loc_E2D6AD: Call 0.Method_Form_Activate0 (CInt(3))
  loc_E2D6B5: var_8C.SetFocus
  loc_E2D6C1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A0C8
  'Data Table: 496164
  loc_E6A080: On Error Goto loc_E6A0A0
  loc_E6A097: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E6A09F: Exit Sub
  loc_E6A0A0: ' Referenced from: E6A080
  loc_E6A0A6: Call 0.Method_arg_50 (var_8C, Shift)
  loc_E6A0BB: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E6A0C7: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'FBB2BC
  'Data Table: 496164
  Dim var_BC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_114 As String
  loc_FBB137: If (CLng(Me.FGrid1.Col) = 1) Then
  loc_FBB14D:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FBB165:   var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FBB19C:   If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_FBB1C1:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_FBB1E0:     Me.FGrid1.CellFontName = "wingdings"
  loc_FBB1FA:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_FBB215:     Me.FGrid1.CellForeColor = &HFF0000
  loc_FBB230:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FBB248:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FBB24D:     var_114 = "ü"
  loc_FBB257:     Set var_F0 = Me.FGrid1
  loc_FBB25D:     LateIdCallSt
  loc_FBB278:   Else
  loc_FBB28B:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FBB293:     var_DC = CVar(CLng(1)) 'Long
  loc_FBB298:     var_114 = vbNullString
  loc_FBB2A2:     Set var_9C = Me.FGrid1
  loc_FBB2A8:     LateIdCallSt
  loc_FBB2BA:   End If
  loc_FBB2BA: End If
  loc_FBB2BA: Exit Sub
End Sub

Private Sub Check1_Click() '10129E4
  'Data Table: 496164
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  Dim var_108 As MSHFlexGrid
  loc_10127E3: If (Me.Check1.Value = 1) Then
  loc_10127F9:   Me.FGrid1.Col = 1
  loc_1012826:   For var_C4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 2)): var_86 = var_C4 'Integer
  loc_1012830:     var_A0 = CVar(CLng(var_86)) 'Long
  loc_1012838:     var_D4 = CVar(CLng(1)) 'Long
  loc_101283D:     var_F4 = vbNullString
  loc_1012847:     Set var_8C = Me.FGrid1
  loc_101284D:     LateIdCallSt
  loc_1012877:     If (CLng(Me.FGrid1.Col) = 1) Then
  loc_101287E:       var_A0 = CVar(CLng(var_86)) 'Long
  loc_1012896:       var_D4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10128C9:       If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_10128DF:         Me.FGrid1.Row = CVar(CLng(var_86))
  loc_10128F7:         Me.FGrid1.CellFontName = "wingdings"
  loc_1012911:         Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_101292C:         Me.FGrid1.CellForeColor = &HFF0000
  loc_1012938:         var_A0 = CVar(CLng(var_86)) 'Long
  loc_1012950:         var_D4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1012955:         var_F4 = "ü"
  loc_101295F:         Set var_108 = Me.FGrid1
  loc_1012965:         LateIdCallSt
  loc_1012977:       End If
  loc_1012977:     End If
  loc_101297A:   Next var_C4 'Integer
  loc_1012982: Else
  loc_10129A7:   For var_120 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_86 = var_120 'Integer
  loc_10129B1:     var_A0 = CVar(CLng(var_86)) 'Long
  loc_10129B9:     var_D4 = CVar(CLng(1)) 'Long
  loc_10129BE:     var_F4 = vbNullString
  loc_10129C8:     Set var_8C = Me.FGrid1
  loc_10129CE:     LateIdCallSt
  loc_10129DC:   Next var_120 'Integer
  loc_10129E1: End If
  loc_10129E1: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E87CA8
  'Data Table: 496164
  loc_E87C54: If (CBool(Me.DGOutlet.Visible) = &HFF) Then
  loc_E87C57:   Call DGOutlet_UnknownEvent_9()
  loc_E87C5C: End If
  loc_E87C78: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_E87C7B:   Call DGItemGroup_UnknownEvent_9()
  loc_E87C80: End If
  loc_E87C9C: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_E87C9F:   Call DGItemCat_UnknownEvent_9()
  loc_E87CA4: End If
  loc_E87CA4: Exit Sub
End Sub

Public Sub Proc_176_24_E88E0C(arg_C) 'E88E0C
  'Data Table: 496164
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_E88DA6: Set var_8C = Me.Txt
  loc_E88DAC: Call 0.Method_Proc_176_24_E88E0CC (var_8E, var_86)
  loc_E88DBC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E88DD2:   Set var_8C = Me.Txt
  loc_E88DD8:   Call 0.Method_Proc_176_24_E88E0C0 (CInt(var_86), var_98)
  loc_E88DE0:   var_98.Enabled = arg_C
  loc_E88DEF: Next var_92 'Byte
  loc_E88E02: Me.Check1.Enabled = arg_C
  loc_E88E0A: Exit Sub
End Sub

Public Sub Proc_176_25_EDD490
  'Data Table: 496164
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_EDD3E2: Set var_8C = Me.Txt
  loc_EDD3E8: Call 0.Method_Proc_176_25_EDD490C (var_8E, var_86)
  loc_EDD3F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDD40E:   Set var_8C = Me.Txt
  loc_EDD414:   Call 0.Method_Proc_176_25_EDD4900 (CInt(var_86), var_98)
  loc_EDD41C:   var_98.Text = vbNullString
  loc_EDD438:   Set var_8C = Me.Txt
  loc_EDD43E:   Call 0.Method_Proc_176_25_EDD4900 (CInt(var_86), var_98)
  loc_EDD446:   var_98.Tag = vbNullString
  loc_EDD455: Next var_92 'Byte
  loc_EDD46B: Me.Check1.Value = CInt(0)
  loc_EDD488: Call Proc_176_29_133E018(Me.FGrid1.Text)
  loc_EDD48D: Exit Sub
  loc_EDD48E: Result  End Sub 'Currency
End Sub

Public Sub Proc_176_26_F71DB0(arg_C) 'F71DB0
  'Data Table: 496164
  Dim var_148 As Integer
  Dim var_8C As String
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim unk_496185 As Connection15
  Dim var_134 As Recordset15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  Dim var_130 As Variant
  loc_F71CAD: var_148 = 0
  loc_F71CCA: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE Site_Code='" & MemVar_1F95070
  loc_F71CDD: var_CC = (CVar(MemVar_1F95070) + Left(arg_C, 1))
  loc_F71CF8: unk_496185.Execute CStr(CVar(var_8C & "' and isnumeric(SUBSTRING(Code,4,3))=1 and SUBSTRING(Code,1,3) ='") & var_CC & "'"), var_130, -1
  loc_F71D00: var_134 = var_134.Fields
  loc_F71D08: var_148 = var_138.Item(var_138)
  loc_F71D10: var_14C = var_14C.Value
  loc_F71D65: var_DC = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) + Left(arg_C, 1))
  loc_F71D91: var_130 = (1 + Format(CStr(var_15C), "000"))
  loc_F71D96: var_88 = CStr(var_130)
  loc_F71DA8: Proc_176_26_F71DB0 = 1
End Sub

Public Sub Proc_176_27_EF8C30
  'Data Table: 496164
  loc_EF8B70: If (CBool(Me.DGOutlet.Visible) = &HFF) Then
  loc_EF8B82:   Me.DGOutlet.Visible = False
  loc_EF8B8A: End If
  loc_EF8BA6: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF8BB8:   Me.DGItemGroup.Visible = False
  loc_EF8BC0: End If
  loc_EF8BDC: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF8BEE:   Me.DGItemCat.Visible = False
  loc_EF8BF6: End If
  loc_EF8C12: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF8C24:   Me.FGPoint.Visible = False
  loc_EF8C2C: End If
  loc_EF8C2C: Exit Sub
  loc_EF8C2D:  = 
End Sub

Public Sub Proc_176_28_161C908
  'Data Table: 496164
  Dim var_A0 As Variant
  Dim var_B0 As TextBox
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_9C As Variant
  Dim var_B4 As String
  Dim var_128 As String
  Dim var_138 As String
  Dim var_134 As String
  Dim var_E4 As Variant
  Dim unk_496185 As Connection15
  Dim var_148 As TextBox
  Dim var_14C As String
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_90 As Double
  Dim var_A4 As Fields15
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_144 As Fields15
  loc_161B457: Set var_9C = Me.Txt
  loc_161B45D: Call 0.Method_Proc_176_28_161C9080 (CInt(0))
  loc_161B486: If (Proc_6_27_EA61EC(var_A0, "Source Outlet Name") = 0) Then
  loc_161B490:   Call Txt_GotFocus(CInt(0))
  loc_161B495:   Exit Sub
  loc_161B496: End If
  loc_161B4A1: Set var_9C = Me.Txt
  loc_161B4A7: Call 0.Method_Proc_176_28_161C9080 (CInt(3), var_A0)
  loc_161B4D0: If (Proc_6_27_EA61EC(var_A0, "Outlet Name") = 0) Then
  loc_161B4DA:   Call Txt_GotFocus(CInt(3))
  loc_161B4DF:   Exit Sub
  loc_161B4E0: End If
  loc_161B4EB: Set var_9C = Me.Txt
  loc_161B4F1: Call 0.Method_Proc_176_28_161C9080 (CInt(4), var_A0)
  loc_161B51A: If (Proc_6_27_EA61EC(var_A0, "Item Applicable Date") = 0) Then
  loc_161B524:   Call Txt_GotFocus(CInt(4))
  loc_161B529:   Exit Sub
  loc_161B52A: End If
  loc_161B538: Set var_9C = Me.Txt
  loc_161B53E: Call 0.Method_Proc_176_28_161C9080 (CInt(4), var_A0)
  loc_161B562: Set var_A4 = Me.Txt
  loc_161B568: Call 0.Method_Proc_176_28_161C9080 (CInt(4), var_B0, var_B4)
  loc_161B570: (CDate(var_A0.Text) < MemVar_1F950F4) = var_B0.Text
  loc_161B591: If (var_A0 Or (CDate(var_B4) > MemVar_1F950EC)) Then
  loc_161B5A9:   var_A8 = "Item Applicable Date Should be greater or equal to" & vbCrLf
  loc_161B5B3:   MsgBox(CVar(var_A8 & "Start Date of Financial Year And Less Or Equal To Current Date"), &H10, var_E4, var_104, var_124)
  loc_161B5CD:   Call Txt_GotFocus(CInt(4))
  loc_161B5D2:   Exit Sub
  loc_161B5D3: End If
  loc_161B5D3: var_D4 = vbNullString
  loc_161B5DD: Set var_9C = Me.FGrid1
  loc_161B5EE: var_D4 = 2
  loc_161B601: Me.FGrid1.Rows = var_D4
  loc_161B610: var_B4 = "SELECT ItemMast.RestCode,ItemMast.Code as ItemCode,ItemMast.Name as ItemName,Unit, ItemGrp.Code AS GroupCode,ItemGrp.Name AS GroupName,ItemCatMast.Code AS ItemCatCode,ItemCatMast.Name AS ItemCatName,ItemMast.DiscApp,ItemMast.RateEdit,ItemMast.Type,ItemMast.Kitchen,ItemMast.SaleRate,ItemMast.SChrgApp,ItemMast.RateIncTax,ItemMast.IssueUnit,ItemMast.ConvRatio,ItemMast.PurchRate,ItemMast.LPurRate,ItemMast.NType,ItemMast.FinItem,ItemMast.ItemType,ItemMast.BarCode,ItemMast.CommodityCode,ItemMast.DispCode FROM ItemMast " & "LEFT JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code LEFT JOIN ItemGrp ON ItemMast.ItemGroup = ItemGrp.Code LEFT JOIN Depart ON ItemMast.RestCode = Depart.Code  WHERE ItemMast.RestCode='"
  loc_161B621: Set var_9C = Me.Txt
  loc_161B627: Call 0.Method_Proc_176_28_161C9080 (CInt(0), var_A0, var_A8)
  loc_161B62F: var_B4 = var_A0.Tag
  loc_161B64D: var_138 = FGrid1.DispID_10000 & var_A8 & "' And (ItemMast.LOGSITE_CODE='" & MemVar_1F95078 & "' OR ItemMast.LOGSITE_CODE='HO') And ItemMast.Code Not In (Select Code From ItemMast Where RestCode='"
  loc_161B65E: Set var_A4 = Me.Txt
  loc_161B664: Call 0.Method_Proc_176_28_161C9080 (CInt(3), var_B0, var_134)
  loc_161B66C: var_138 = var_B0.Tag
  loc_161B67C: var_98 = var_D4 & var_134 & "') And ItemMast.ActiveYN<>'N' And Itemmast.ItemType Not In ('Combo','Store') And ItemMast.DispCode<>9999 And GravyItem<>'Yes'"
  loc_161B6AB: Set var_9C = Me.Txt
  loc_161B6B1: Call 0.Method_Proc_176_28_161C9080 (CInt(1), var_A0)
  loc_161B6B9: var_A8 = var_A0.Text
  loc_161B6D4: Set var_A4 = Me.Txt
  loc_161B6DA: Call 0.Method_Proc_176_28_161C9080 (CInt(2), var_B0)
  loc_161B702: If ((var_A8 <> vbNullString) And (var_B0.Text <> vbNullString)) Then
  loc_161B72A:   Set var_9C = Me.Txt
  loc_161B730:   Call 0.Method_Proc_176_28_161C9080 (CInt(2), var_A0, var_A8, var_98 & " And (ItemMast.ItemCatCode='")
  loc_161B738:   var_104 = var_A0.Tag
  loc_161B748:   var_128 = Proc_6_38_E69628(CVar(var_A8), -1)
  loc_161B764:   Set var_A4 = Me.Txt
  loc_161B76A:   Call 0.Method_Proc_176_28_161C9080 (CInt(1), var_B0)
  loc_161B796:   unk_496185.Execute var_144 & FGrid1.DispID_10000 & var_A8 & "' And ItemMast.ItemGroup='" & Proc_6_38_E69628(CVar(var_B0.Tag)) & "')", , 
  loc_161B7A7:   Set global_80 = var_144
  loc_161B7E5:   Set var_9C = Me.Txt
  loc_161B7EB:   Call 0.Method_Proc_176_28_161C9080 (CInt(0), var_A0)
  loc_161B814:   Set var_A4 = Me.Txt
  loc_161B81A:   Call 0.Method_Proc_176_28_161C9080 (CInt(2), var_B0)
  loc_161B82A:   var_C4 = CVar(var_B0.Tag) 'String
  loc_161B84E:   Set var_144 = Me.Txt
  loc_161B854:   Call 0.Method_Proc_176_28_161C9080 (CInt(1), var_148)
  loc_161B870:   var_14C = "RestCode='" & var_A0.Tag & "' And ItemCatCode='" & Proc_6_38_E69628(var_C4) & "' And GroupCode='" & Proc_6_38_E69628(CVar(var_148.Tag))
  loc_161B881:   Me.Filter = CVar(var_14C & "' ")
  loc_161B8B1: End If
  loc_161B8C5: Call 0.Method_Proc_176_28_161C9080 (CInt(1), var_A0)
  loc_161B8CD: var_A8 = var_A0.Text
  loc_161B8E8: Set var_A4 = Me.Txt
  loc_161B8EE: Call 0.Method_Proc_176_28_161C9080 (CInt(2), var_B0)
  loc_161B916: If ((var_A8 = vbNullString) And (var_B0.Text = vbNullString)) Then
  loc_161B92F:   unk_496185.Execute var_98, var_C4, -1
  loc_161B940:   Set global_80 = Me.Txt
  loc_161B965:   Call 0.Method_Proc_176_28_161C9080 (CInt(0), var_A0, var_A8)
  loc_161B96D:   "RestCode='" = var_A0.Tag
  loc_161B992:   Me.Filter = CVar(Me.Txt & Proc_6_38_E69628(CVar(var_A8)) & "'")
  loc_161B9AC: End If
  loc_161B9BA: Set var_9C = Me.Txt
  loc_161B9C0: Call 0.Method_Proc_176_28_161C9080 (CInt(1), var_A0)
  loc_161B9C8: var_A8 = var_A0.Text
  loc_161B9E3: Set var_A4 = Me.Txt
  loc_161B9E9: Call 0.Method_Proc_176_28_161C9080 (CInt(2), var_B0)
  loc_161BA11: If ((var_A8 = vbNullString) And (var_B0.Text <> vbNullString)) Then
  loc_161BA39:   Set var_9C = Me.Txt
  loc_161BA3F:   Call 0.Method_Proc_176_28_161C9080 (CInt(2), var_A0, var_A8, var_98 & " Or ItemMast.ItemCatCode='")
  loc_161BA47:   var_E4 = var_A0.Tag
  loc_161BA57:   var_128 = Proc_6_38_E69628(CVar(var_A8), -1)
  loc_161BA6B:   unk_496185.Execute var_A4 & Me.Txt & Proc_6_38_E69628(CVar(var_A8)) & "'", , 
  loc_161BA7C:   Set global_80 = var_A4
  loc_161BAAE:   Set var_9C = Me.Txt
  loc_161BAB4:   Call 0.Method_Proc_176_28_161C9080 (CInt(0), var_A0)
  loc_161BAE8:   Set var_A4 = Me.Txt
  loc_161BAEE:   Call 0.Method_Proc_176_28_161C9080 (CInt(2), var_B0)
  loc_161BB11:   var_104 = CVar("RestCode='" & Proc_6_38_E69628(CVar(var_A0.Tag)) & "' And ItemCatCode='" & Proc_6_38_E69628(CVar(var_B0.Tag)) & "'") 'String
  loc_161BB1B:   Me.Filter = var_104
  loc_161BB41: End If
  loc_161BB4F: Set var_9C = Me.Txt
  loc_161BB55: Call 0.Method_Proc_176_28_161C9080 (CInt(1), var_A0)
  loc_161BB5D: var_A8 = var_A0.Text
  loc_161BB78: Set var_A4 = Me.Txt
  loc_161BB7E: Call 0.Method_Proc_176_28_161C9080 (CInt(2), var_B0)
  loc_161BBA6: If ((var_A8 <> vbNullString) And (var_B0.Text = vbNullString)) Then
  loc_161BBCE:   Set var_9C = Me.Txt
  loc_161BBD4:   Call 0.Method_Proc_176_28_161C9080 (CInt(1), var_A0, var_A8, var_98 & " Or ItemMast.ItemGroup='")
  loc_161BBDC:   var_E4 = var_A0.Tag
  loc_161BBEC:   var_128 = Proc_6_38_E69628(CVar(var_A8), -1)
  loc_161BC00:   unk_496185.Execute var_A4 & "RestCode='" & Proc_6_38_E69628(CVar(var_A0.Tag)) & "'", , 
  loc_161BC11:   Set global_80 = var_A4
  loc_161BC43:   Set var_9C = Me.Txt
  loc_161BC49:   Call 0.Method_Proc_176_28_161C9080 (CInt(0), var_A0)
  loc_161BC7D:   Set var_A4 = Me.Txt
  loc_161BC83:   Call 0.Method_Proc_176_28_161C9080 (CInt(1), var_B0)
  loc_161BCA6:   var_104 = CVar("RestCode='" & Proc_6_38_E69628(CVar(var_A0.Tag)) & "' And GroupCode='" & Proc_6_38_E69628(CVar(var_B0.Tag)) & "' ") 'String
  loc_161BCB0:   Me.Filter = var_104
  loc_161BCD6: End If
  loc_161BCE1: Me.Requery -1
  loc_161BCFA: If (Me.EOF = 0) Then
  loc_161BD14:   For var_154 = 1 To CInt(Me.RecordCount): var_86 = var_154 'Integer
  loc_161BD1E:     Set var_158 = Me.FGrid1
  loc_161BD25:     var_D4 = CVar(CLng(var_86)) 'Long
  loc_161BD2D:     var_114 = CVar(CLng(0)) 'Long
  loc_161BD37:     var_C4 = CVar(CStr(var_86)) 'String
  loc_161BD3E:     LateIdCallSt
  loc_161BD4D:     var_D4 = CVar(CLng(var_86)) 'Long
  loc_161BD55:     var_114 = CVar(CLng(1)) 'Long
  loc_161BD63:     LateIdCallSt
  loc_161BDA7:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCode")), CVar(CLng(2)), CVar(CLng(var_86)), var_158, vbNullString, var_114)) 'String
  loc_161BDAE:     LateIdCallSt
  loc_161BDD4:     var_D4 = "ItemName"
  loc_161BDFC:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_D4)), CVar(CLng(3)), CVar(CLng(var_86)), var_158, var_E4, var_D4)) 'String
  loc_161BE03:     LateIdCallSt
  loc_161BE51:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161BE58:     LateIdCallSt
  loc_161BEA6:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("GroupCode")), CVar(CLng(5)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161BEAD:     LateIdCallSt
  loc_161BEFB:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("GroupName")), CVar(CLng(6)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161BF02:     LateIdCallSt
  loc_161BF50:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCatCode")), CVar(CLng(7)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161BF57:     LateIdCallSt
  loc_161BFA5:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCatName")), CVar(CLng(8)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161BFAC:     LateIdCallSt
  loc_161BFFA:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(9)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161C001:     LateIdCallSt
  loc_161C04F:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&HA)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161C056:     LateIdCallSt
  loc_161C0A4:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Type")), CVar(CLng(&HB)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161C0AB:     LateIdCallSt
  loc_161C100:     LateIdCallSt
  loc_161C12B:     var_D4 = "ItemCode"
  loc_161C14A:     var_C4 = CVar(Me.Fields.Item(var_D4)) 'Address
  loc_161C153:     var_A8 = Proc_6_38_E69628(var_C4, "Select Rate From ItemRate Where ItemCode='", var_1C8, -1, var_1CC, CDbl(0), var_158)
  loc_161C157:     var_B4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&HC)), CVar(CLng(var_86)), var_158, var_E4)) & Me.Fields.Item(var_D4).Tag
  loc_161C183:     var_E4 = CVar(Me.Fields.Item("RestCode")) 'Address
  loc_161C1A5:     Set var_144 = Me.Txt
  loc_161C1AB:     Call 0.Method_Proc_176_28_161C9080 (CInt(4), var_148, CVar(var_114 & Proc_6_38_E69628(var_E4, var_B4 & "' And RestCode='", var_158, var_C4) & "' And AppDate<="))
  loc_161C1BA:     Proc_6_7_F26918(var_124, CVar(var_148))
  loc_161C1D9:     unk_496185.Execute CStr(var_D4 & var_124 & " Order By AppDate Desc "), 1, 
  loc_161C1E4:     Set var_94 = var_1CC
  loc_161C228:     If (var_94.RecordCount > 0) Then
  loc_161C24A:       var_C4 = CVar(var_94.Fields.Item("Rate")) 'Address
  loc_161C251:       Proc_6_39_E7D3A0(var_E4)
  loc_161C25A:       var_90 = CSng(var_E4)
  loc_161C267:     End If
  loc_161C26B:     var_114 = CVar(CLng(var_86)) 'Long
  loc_161C273:     var_178 = CVar(CLng(&HD)) 'Long
  loc_161C2A8:     LateIdCallSt
  loc_161C2F5:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&HE)), CVar(CLng(var_86)), var_158, CVar(CStr(Format(var_90, "0.00"))), 1)) 'String
  loc_161C2FC:     LateIdCallSt
  loc_161C378:     var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&HF)), CVar(CLng(var_86)), CVar(CLng(var_86)))) 'String
  loc_161C391:     var_114 = (Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")), var_158, CVar(Me.Fields.Item("RateIncTax")), 1) = vbNullString)
  loc_161C3A8:     LateIdCallSt
  loc_161C40B:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IssueUnit")), CVar(CLng(&H10)), CVar(CLng(var_86)), var_158)) 'String
  loc_161C412:     LateIdCallSt
  loc_161C45E:     Proc_6_39_E7D3A0(var_E4, CVar(Me.Fields.Item("ConvRatio")), CVar(CLng(&H11)), CVar(CLng(var_86)), var_158)
  loc_161C46E:     LateIdCallSt
  loc_161C4BC:     Proc_6_39_E7D3A0(var_E4, CVar(Me.Fields.Item("PurchRate")), CVar(CLng(&H12)), CVar(CLng(var_86)), var_158, CVar(CStr(var_E4)))
  loc_161C4CC:     LateIdCallSt
  loc_161C51A:     Proc_6_39_E7D3A0(var_E4, CVar(Me.Fields.Item("LPurRate")), CVar(CLng(&H13)), CVar(CLng(var_86)), var_158, CVar(CStr(var_E4)))
  loc_161C52A:     LateIdCallSt
  loc_161C5A8:     var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("NType")), CVar(CLng(&H14)), CVar(CLng(var_86)), CVar(CStr(IIf(var_114, "N", var_124))))) 'String
  loc_161C5B9:     var_A8 = Proc_6_38_E69628(CVar(Me.Fields.Item("NType")), var_158, CVar(CStr(CVar(Me.Fields.Item("NType")))), CVar(Me.Fields.Item("NType")))
  loc_161C5C1:     var_114 = (var_A8 = vbNullString)
  loc_161C5D8:     LateIdCallSt
  loc_161C63B:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("FinItem")), CVar(CLng(&H15)), CVar(CLng(var_86)), var_158)) 'String
  loc_161C642:     LateIdCallSt
  loc_161C690:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ItemType")), CVar(CLng(&H16)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161C697:     LateIdCallSt
  loc_161C747:     var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCode")), "BarCode")) 'String
  loc_161C74D:     var_A8 = Proc_6_38_E69628(CVar(Me.Fields.Item("BarCode")), var_158, CVar(Me.Fields.Item("ItemCode")), CVar(CStr(IIf("BarCode", "Other", var_124))))
  loc_161C75C:     var_1A8 = IIf((var_A8 = vbNullString), var_124, CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("BarCode")), CVar(CLng(&H17)), CVar(CLng(var_86)))))
  loc_161C765:     var_1B8 = CVar(CStr(var_1A8)) 'String
  loc_161C76C:     LateIdCallSt
  loc_161C7D5:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CommodityCode")), CVar(CLng(&H19)), CVar(CLng(var_86)), var_158)) 'String
  loc_161C7DC:     LateIdCallSt
  loc_161C828:     Proc_6_39_E7D3A0(var_E4, CVar(Me.Fields.Item("DispCode")), CVar(CLng(&H18)), CVar(CLng(var_86)), var_158)
  loc_161C831:     var_104 = CVar(CStr(var_E4)) 'String
  loc_161C838:     LateIdCallSt
  loc_161C84E:     Set var_158 = Nothing 
  loc_161C858:     Me.MoveNext
  loc_161C876:     var_D4 = CVar((CLng(Me.FGrid1.Rows) + 1)) 'Long
  loc_161C885:     Me.FGrid1.Rows = "DispCode"
  loc_161C897:   Next var_154 'Integer
  loc_161C89F: Else
  loc_161C8B4:   Call Proc_176_29_133E018(Me.FGrid1.Text)
  loc_161C8DA:   MsgBox("There is No Data", &H40, "Menu Item Copy", var_104, var_124)
  loc_161C8EA: End If
  loc_161C8F5: Set global_80 = Nothing
  loc_161C901: Set var_94 = Nothing
  loc_161C904: Exit Sub
End Sub

Public Sub Proc_176_29_133E018
  'Data Table: 496164
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As String
  loc_133D83B: Me.FGrid1.Row = 0
  loc_133D856: Me.FGrid1.Col = 0
  loc_133D85E: var_98 = 0
  loc_133D86D: var_BC = CVar(CInt(3)) 'Integer
  loc_133D875: Set var_AC = Me.FGrid1
  loc_133D87B: LateIdCallSt
  loc_133D899: Me.FGrid1.Row = 1
  loc_133D8B4: Me.FGrid1.Cols = &H1A
  loc_133D8B9: var_98 = 0
  loc_133D8C5: var_BC = CVar(CLng(0)) 'Long
  loc_133D8CA: var_E0 = "SNo"
  loc_133D8D3: LateIdCallSt
  loc_133D8DB: var_98 = 0
  loc_133D8EA: var_BC = CVar(CInt(3)) 'Integer
  loc_133D8F1: LateIdCallSt
  loc_133D8F9: var_98 = 0
  loc_133D902: var_BC = &H1C2
  loc_133D90E: LateIdCallSt
  loc_133D916: var_98 = 0
  loc_133D922: var_BC = CVar(CLng(1)) 'Long
  loc_133D927: var_E0 = vbNullString
  loc_133D930: LateIdCallSt
  loc_133D93B: var_98 = CVar(CLng(1)) 'Long
  loc_133D940: var_BC = &H1F4
  loc_133D94C: LateIdCallSt
  loc_133D954: var_98 = 0
  loc_133D960: var_BC = CVar(CLng(2)) 'Long
  loc_133D965: var_E0 = "ItemCode"
  loc_133D96E: LateIdCallSt
  loc_133D979: var_98 = CVar(CLng(2)) 'Long
  loc_133D97E: var_BC = 0
  loc_133D98A: LateIdCallSt
  loc_133D992: var_98 = 0
  loc_133D99E: var_BC = CVar(CLng(3)) 'Long
  loc_133D9A3: var_E0 = "Name"
  loc_133D9AC: LateIdCallSt
  loc_133D9B7: var_98 = CVar(CLng(3)) 'Long
  loc_133D9C2: var_BC = CVar(CInt(1)) 'Integer
  loc_133D9C9: LateIdCallSt
  loc_133D9D4: var_98 = CVar(CLng(3)) 'Long
  loc_133D9DF: var_BC = CVar(CInt(4)) 'Integer
  loc_133D9E6: LateIdCallSt
  loc_133D9F1: var_98 = CVar(CLng(3)) 'Long
  loc_133D9F6: var_BC = &HDAC
  loc_133DA02: LateIdCallSt
  loc_133DA0A: var_98 = 0
  loc_133DA16: var_BC = CVar(CLng(4)) 'Long
  loc_133DA1B: var_E0 = "Unit"
  loc_133DA24: LateIdCallSt
  loc_133DA2F: var_98 = CVar(CLng(4)) 'Long
  loc_133DA34: var_BC = 0
  loc_133DA40: LateIdCallSt
  loc_133DA48: var_98 = 0
  loc_133DA54: var_BC = CVar(CLng(5)) 'Long
  loc_133DA59: var_E0 = "GroupCode"
  loc_133DA62: LateIdCallSt
  loc_133DA6D: var_98 = CVar(CLng(5)) 'Long
  loc_133DA72: var_BC = 0
  loc_133DA7E: LateIdCallSt
  loc_133DA86: var_98 = 0
  loc_133DA92: var_BC = CVar(CLng(6)) 'Long
  loc_133DA97: var_E0 = "Item Group"
  loc_133DAA0: LateIdCallSt
  loc_133DAAB: var_98 = CVar(CLng(6)) 'Long
  loc_133DAB6: var_BC = CVar(CInt(1)) 'Integer
  loc_133DABD: LateIdCallSt
  loc_133DAC8: var_98 = CVar(CLng(6)) 'Long
  loc_133DAD3: var_BC = CVar(CInt(4)) 'Integer
  loc_133DADA: LateIdCallSt
  loc_133DAE5: var_98 = CVar(CLng(6)) 'Long
  loc_133DAEA: var_BC = &HBB8
  loc_133DAF6: LateIdCallSt
  loc_133DAFE: var_98 = 0
  loc_133DB0A: var_BC = CVar(CLng(7)) 'Long
  loc_133DB0F: var_E0 = "ItemCatCode"
  loc_133DB18: LateIdCallSt
  loc_133DB23: var_98 = CVar(CLng(7)) 'Long
  loc_133DB28: var_BC = 0
  loc_133DB34: LateIdCallSt
  loc_133DB3C: var_98 = 0
  loc_133DB48: var_BC = CVar(CLng(8)) 'Long
  loc_133DB4D: var_E0 = "Category"
  loc_133DB56: LateIdCallSt
  loc_133DB61: var_98 = CVar(CLng(8)) 'Long
  loc_133DB6C: var_BC = CVar(CInt(1)) 'Integer
  loc_133DB73: LateIdCallSt
  loc_133DB7E: var_98 = CVar(CLng(8)) 'Long
  loc_133DB89: var_BC = CVar(CInt(4)) 'Integer
  loc_133DB90: LateIdCallSt
  loc_133DB9B: var_98 = CVar(CLng(8)) 'Long
  loc_133DBA0: var_BC = &H834
  loc_133DBAC: LateIdCallSt
  loc_133DBB4: var_98 = 0
  loc_133DBC0: var_BC = CVar(CLng(9)) 'Long
  loc_133DBC5: var_E0 = "DiscApp"
  loc_133DBCE: LateIdCallSt
  loc_133DBD9: var_98 = CVar(CLng(9)) 'Long
  loc_133DBDE: var_BC = 0
  loc_133DBEA: LateIdCallSt
  loc_133DBF2: var_98 = 0
  loc_133DBFE: var_BC = CVar(CLng(&HA)) 'Long
  loc_133DC03: var_E0 = "RateEdit"
  loc_133DC0C: LateIdCallSt
  loc_133DC17: var_98 = CVar(CLng(&HA)) 'Long
  loc_133DC1C: var_BC = 0
  loc_133DC28: LateIdCallSt
  loc_133DC30: var_98 = 0
  loc_133DC3C: var_BC = CVar(CLng(&HB)) 'Long
  loc_133DC41: var_E0 = "Type"
  loc_133DC4A: LateIdCallSt
  loc_133DC55: var_98 = CVar(CLng(&HB)) 'Long
  loc_133DC5A: var_BC = 0
  loc_133DC66: LateIdCallSt
  loc_133DC6E: var_98 = 0
  loc_133DC7A: var_BC = CVar(CLng(&HC)) 'Long
  loc_133DC7F: var_E0 = "Kitchen"
  loc_133DC88: LateIdCallSt
  loc_133DC93: var_98 = CVar(CLng(&HC)) 'Long
  loc_133DC98: var_BC = 0
  loc_133DCA4: LateIdCallSt
  loc_133DCAC: var_98 = 0
  loc_133DCB8: var_BC = CVar(CLng(&HD)) 'Long
  loc_133DCBD: var_E0 = "SaleRate"
  loc_133DCC6: LateIdCallSt
  loc_133DCD1: var_98 = CVar(CLng(&HD)) 'Long
  loc_133DCD6: var_BC = 0
  loc_133DCE2: LateIdCallSt
  loc_133DCEA: var_98 = 0
  loc_133DCF6: var_BC = CVar(CLng(&HE)) 'Long
  loc_133DCFB: var_E0 = "SChrgApp"
  loc_133DD04: LateIdCallSt
  loc_133DD0F: var_98 = CVar(CLng(&HE)) 'Long
  loc_133DD14: var_BC = 0
  loc_133DD20: LateIdCallSt
  loc_133DD28: var_98 = 0
  loc_133DD34: var_BC = CVar(CLng(&HF)) 'Long
  loc_133DD39: var_E0 = "RateIncTax"
  loc_133DD42: LateIdCallSt
  loc_133DD4D: var_98 = CVar(CLng(&HF)) 'Long
  loc_133DD52: var_BC = 0
  loc_133DD5E: LateIdCallSt
  loc_133DD66: var_98 = 0
  loc_133DD72: var_BC = CVar(CLng(&H10)) 'Long
  loc_133DD77: var_E0 = "IssueUnit"
  loc_133DD80: LateIdCallSt
  loc_133DD8B: var_98 = CVar(CLng(&H10)) 'Long
  loc_133DD90: var_BC = 0
  loc_133DD9C: LateIdCallSt
  loc_133DDA4: var_98 = 0
  loc_133DDB0: var_BC = CVar(CLng(&H11)) 'Long
  loc_133DDB5: var_E0 = "ConvRatio"
  loc_133DDBE: LateIdCallSt
  loc_133DDC9: var_98 = CVar(CLng(&H11)) 'Long
  loc_133DDCE: var_BC = 0
  loc_133DDDA: LateIdCallSt
  loc_133DDE2: var_98 = 0
  loc_133DDEE: var_BC = CVar(CLng(&H12)) 'Long
  loc_133DDF3: var_E0 = "PurchRate"
  loc_133DDFC: LateIdCallSt
  loc_133DE07: var_98 = CVar(CLng(&H12)) 'Long
  loc_133DE0C: var_BC = 0
  loc_133DE18: LateIdCallSt
  loc_133DE20: var_98 = 0
  loc_133DE2C: var_BC = CVar(CLng(&H13)) 'Long
  loc_133DE31: var_E0 = "LPurRate"
  loc_133DE3A: LateIdCallSt
  loc_133DE45: var_98 = CVar(CLng(&H13)) 'Long
  loc_133DE4A: var_BC = 0
  loc_133DE56: LateIdCallSt
  loc_133DE5E: var_98 = 0
  loc_133DE6A: var_BC = CVar(CLng(&H14)) 'Long
  loc_133DE6F: var_E0 = "NType"
  loc_133DE78: LateIdCallSt
  loc_133DE83: var_98 = CVar(CLng(&H14)) 'Long
  loc_133DE88: var_BC = 0
  loc_133DE94: LateIdCallSt
  loc_133DE9C: var_98 = 0
  loc_133DEA8: var_BC = CVar(CLng(&H15)) 'Long
  loc_133DEAD: var_E0 = "FinItem"
  loc_133DEB6: LateIdCallSt
  loc_133DEC1: var_98 = CVar(CLng(&H15)) 'Long
  loc_133DEC6: var_BC = 0
  loc_133DED2: LateIdCallSt
  loc_133DEDA: var_98 = 0
  loc_133DEE6: var_BC = CVar(CLng(&H16)) 'Long
  loc_133DEEB: var_E0 = "ItemType"
  loc_133DEF4: LateIdCallSt
  loc_133DEFF: var_98 = CVar(CLng(&H16)) 'Long
  loc_133DF04: var_BC = 0
  loc_133DF10: LateIdCallSt
  loc_133DF18: var_98 = 0
  loc_133DF24: var_BC = CVar(CLng(&H17)) 'Long
  loc_133DF29: var_E0 = "BarCode"
  loc_133DF32: LateIdCallSt
  loc_133DF3D: var_98 = CVar(CLng(&H17)) 'Long
  loc_133DF42: var_BC = 0
  loc_133DF4E: LateIdCallSt
  loc_133DF56: var_98 = 0
  loc_133DF62: var_BC = CVar(CLng(&H19)) 'Long
  loc_133DF67: var_E0 = "BarCode"
  loc_133DF70: LateIdCallSt
  loc_133DF7B: var_98 = CVar(CLng(&H19)) 'Long
  loc_133DF80: var_BC = 0
  loc_133DF8C: LateIdCallSt
  loc_133DF94: var_98 = 0
  loc_133DFA0: var_BC = CVar(CLng(&H18)) 'Long
  loc_133DFA5: var_E0 = "DispCode"
  loc_133DFAE: LateIdCallSt
  loc_133DFB9: var_98 = CVar(CLng(&H18)) 'Long
  loc_133DFBE: var_BC = 0
  loc_133DFCA: LateIdCallSt
  loc_133DFD4: Set var_D0 = Nothing 
  loc_133DFF7: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_133DFFA:   var_98 = vbNullString
  loc_133E004:   Set var_AC = Me.FGrid1
  loc_133E015: End If
  loc_133E015: Exit Sub
End Sub
