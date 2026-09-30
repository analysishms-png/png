VERSION 5.00
Begin VB.Form frmMod_Print
  Caption = "Printing Setup"
  BackColor = &HFF8080&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11325
  ClientHeight = 6870
  LockControls = -1  'True
  Begin MSFlexGrid FGPoint1
    Left = 6690
    Top = 8595
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 11
  End
  Begin MSFlexGrid FGPoint
    Left = 8685
    Top = 8595
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 10
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HE0E0E0&
    Left = 825
    Top = 4335
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    Left = 810
    Top = 960
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin MSHFlexGrid FGrid
    Left = 810
    Top = 945
    Width = 13995
    Height = 2800
    TabIndex = 1
  End
  Begin DataGrid DgModDesc
    Left = 6630
    Top = 9165
    Width = 6960
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGModType
    Left = 6615
    Top = 8880
    Width = 5835
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin Frame FrmList
    Left = 3360
    Top = 9165
    Width = 3060
    Height = 1725
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 60
      Width = 2970
      Height = 1815
      TabStop = 0   'False
      TabIndex = 7
    End
  End
  Begin MSHFlexGrid FGrid1
    Left = 810
    Top = 4320
    Width = 13995
    Height = 2800
    TabIndex = 4
  End
  Begin BtnEnh CmdCancel
    Left = 8100
    Top = 7500
    Width = 1755
    Height = 930
    TabIndex = 12
  End
  Begin BtnEnh CmdSave
    Left = 6240
    Top = 7500
    Width = 1755
    Height = 930
    TabIndex = 13
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6420
    Width = 11325
    Height = 450
    Visible = 0   'False
    TabIndex = 14
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 15
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
    Caption = "KOT Printing :-"
    Index = 1
    ForeColor = &HFF0000&
    Left = 810
    Top = 4035
    Width = 3600
    Height = 240
    TabIndex = 3
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
    Caption = "Bill Printing :-"
    Index = 0
    ForeColor = &HFF0000&
    Left = 810
    Top = 660
    Width = 2760
    Height = 240
    TabIndex = 0
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

Attribute VB_Name = "frmMod_Print"

Private global_64 As Integer
Private global_56 As Integer

Private Sub CmdSave_UnknownEvent_9 '12DB35C
  'Data Table: 492F0C
  Dim unk_492F10 As Connection15
  Dim var_88 As Integer
  Dim var_90 As String
  Dim var_94 As String
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_150 As Variant
  Dim var_194 As Variant
  Dim var_200 As Variant
  Dim var_260 As Variant
  Dim var_2C0 As Variant
  Dim var_2E4 As Variant
  Dim var_2C4 As String
  loc_12DAD20: On Error Goto loc_12DB33F
  loc_12DAD2C: unk_492F10.BeginTrans var_8C
  loc_12DAD33: var_88 = &HFF
  loc_12DAD5A: unk_492F10.Execute "DELETE FROM PRINTERSETUP WHERE SITE_CODE='" & MemVar_1F95078 & "'", var_B4, -1
  loc_12DAD91: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_12DAD9B:   var_A4 = CVar(CLng(var_86)) 'Long
  loc_12DADA3:   var_DC = CVar(CLng(0)) 'Long
  loc_12DADBD:   var_90 = CStr(Me.FGrid.TextMatrix))
  loc_12DADC9:   var_FC = CVar(CLng(var_86)) 'Long
  loc_12DADD1:   var_11C = CVar(CLng(1)) 'Long
  loc_12DADEB:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_12DADF8:   var_150 = CVar(CLng(var_86)) 'Long
  loc_12DAE3E:   If (CVar(CLng(3)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_12DAE45:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12DAE4D:     var_DC = CVar(CLng(0)) 'Long
  loc_12DAE6C:     var_FC = CVar(CLng(var_86)) 'Long
  loc_12DAE74:     var_11C = CVar(CLng(1)) 'Long
  loc_12DAE93:     var_150 = CVar(CLng(var_86)) 'Long
  loc_12DAEAA:     var_194 = Me.FGrid.TextMatrix)
  loc_12DAED1:     var_200 = Me.FGrid.TextMatrix)
  loc_12DAEF8:     var_260 = Me.FGrid.TextMatrix)
  loc_12DAF1F:     var_2C0 = Me.FGrid.TextMatrix)
  loc_12DAF30:     var_2E4 = CVar(Proc_6_14_EF402C(var_2C0, CVar(CLng(5)), CVar(CLng(var_86)), var_260, CVar(CLng(4)), CVar(CLng(var_86)), var_200, CVar(CLng(3)))) 'String
  loc_12DAF36:     Proc_183_8_EB1634(var_2F4, var_2E4, CVar(CLng(var_86)), var_194, CVar(CLng(2)))
  loc_12DAF53:     var_94 = "Insert into PrinterSetup (ModType,ModDescription,ModCode,Printer,AutoPrint,RestCode,Site_Code,U_EntDt,U_AE) values('" & CStr(Me.FGrid.TextMatrix))
  loc_12DAFA2:     var_2C4 = var_94 & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(var_194) & "','" & CStr(var_200) & "','" & CStr(var_260) & "','"
  loc_12DAFDF:     unk_492F10.Execute CStr(CVar(var_2C4 & CStr(var_2C0) & "','" & MemVar_1F95078 & "',") & var_2F4 & ",'A')"), var_358, -1
  loc_12DB03B:   End If
  loc_12DB03E: Next var_BC 'Integer
  loc_12DB068: For var_360 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_360 'Integer
  loc_12DB072:   var_A4 = CVar(CLng(var_86)) 'Long
  loc_12DB07A:   var_DC = CVar(CLng(0)) 'Long
  loc_12DB094:   var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_12DB0A0:   var_FC = CVar(CLng(var_86)) 'Long
  loc_12DB0A8:   var_11C = CVar(CLng(1)) 'Long
  loc_12DB0C2:   var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_12DB0CF:   var_150 = CVar(CLng(var_86)) 'Long
  loc_12DB115:   If (CVar(CLng(3)) And (CStr(Me.FGrid1.TextMatrix)) <> vbNullString)) Then
  loc_12DB11C:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12DB124:     var_DC = CVar(CLng(0)) 'Long
  loc_12DB143:     var_FC = CVar(CLng(var_86)) 'Long
  loc_12DB14B:     var_11C = CVar(CLng(1)) 'Long
  loc_12DB16A:     var_150 = CVar(CLng(var_86)) 'Long
  loc_12DB181:     var_194 = Me.FGrid1.TextMatrix)
  loc_12DB1A8:     var_200 = Me.FGrid1.TextMatrix)
  loc_12DB1CF:     var_260 = Me.FGrid1.TextMatrix)
  loc_12DB1F6:     var_2C0 = Me.FGrid1.TextMatrix)
  loc_12DB207:     var_2E4 = CVar(Proc_6_14_EF402C(var_2C0, CVar(CLng(5)), CVar(CLng(var_86)), var_260, CVar(CLng(4)), CVar(CLng(var_86)), var_200, CVar(CLng(3)))) 'String
  loc_12DB20D:     Proc_183_8_EB1634(var_2F4, var_2E4, CVar(CLng(var_86)), var_194, CVar(CLng(2)))
  loc_12DB22A:     var_94 = "Insert into PrinterSetup (ModType,ModDescription,ModCode,Printer,AutoPrint,RestCode,Site_Code,U_EntDt,U_AE) values('" & CStr(Me.FGrid1.TextMatrix))
  loc_12DB279:     var_2C4 = var_94 & "','" & CStr(Me.FGrid1.TextMatrix)) & "','" & CStr(var_194) & "','" & CStr(var_200) & "','" & CStr(var_260) & "','"
  loc_12DB2B6:     unk_492F10.Execute CStr(CVar(var_2C4 & CStr(var_2C0) & "','" & MemVar_1F95078 & "',") & var_2F4 & ",'A')"), var_358, -1
  loc_12DB312:   End If
  loc_12DB315: Next var_360 'Integer
  loc_12DB31C: var_88 = 0
  loc_12DB325: unk_492F10.CommitTrans
  loc_12DB337: Me.Global.Unload Me
  loc_12DB33F: ' Referenced from: 12DAD20
  loc_12DB345: If (var_88 = &HFF) Then
  loc_12DB34E:   unk_492F10.RollbackTrans
  loc_12DB353: End If
  loc_12DB353: Proc_6_60_E63754(var_88)
  loc_12DB358: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '13A5FB0
  'Data Table: 492F0C
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_138 As Long
  loc_13A569F: var_86 = Index
  loc_13A56A8: If (var_86 = 0) Then
  loc_13A56C7:   Set var_A0 = Me.FGrid
  loc_13A56FD:   Set var_108 = Me.TxtGrid
  loc_13A5703:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_13A570B:   var_10C.Tag = CVar(CLng(var_A0.Col))
  loc_13A5738:   Set var_8C = Me.TxtGrid
  loc_13A573E:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_13A5746:   var_A0.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_13A5765:   var_114 = CLng(Me.FGrid.Col)
  loc_13A5775:   If (var_114 = CLng(0)) Then
  loc_13A5778:     Call Proc_318_30_10EC7A8(var_114)
  loc_13A5786:     var_118 = Me.RecordCount
  loc_13A579D:     var_11A = Me.EOF
  loc_13A57B1:     var_11C = Me.BOF
  loc_13A57D1:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A580D:     If (CVar(CLng(0)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_13A5810:       Exit Sub
  loc_13A5811:     End If
  loc_13A5824:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A582C:     var_E0 = CVar(CLng(0)) 'Long
  loc_13A585F:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13A5868:       Me.MoveFirst
  loc_13A5880:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A5888:       var_E0 = CVar(CLng(0)) 'Long
  loc_13A5897:       var_B0 = Me.FGrid.TextMatrix)
  loc_13A58CC:       Me.Find "Modtype='" & CStr(var_B0) & "'", 0, 1
  loc_13A58FC:       If (Me.EOF = &HFF) Then
  loc_13A5905:         Me.MoveFirst
  loc_13A590A:       End If
  loc_13A590A:     End If
  loc_13A590D:   Else
  loc_13A5914:     If (var_114 = CLng(1)) Then
  loc_13A5917:       Call Proc_318_31_111096C(var_134, var_B0, var_E0, var_C0, var_E0)
  loc_13A592B:       Me.Filter = 0
  loc_13A5946:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A597D:       Me.Filter = CVar(CVar(CLng(5)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_13A59A2:       var_118 = Me.RecordCount
  loc_13A59B9:       var_11A = Me.EOF
  loc_13A59CD:       var_11C = Me.BOF
  loc_13A59ED:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A5A29:       If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_13A5A2C:         Exit Sub
  loc_13A5A2D:       End If
  loc_13A5A40:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A5A48:       var_E0 = CVar(CLng(1)) 'Long
  loc_13A5A7B:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13A5A84:         Me.MoveFirst
  loc_13A5A9C:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A5AA4:         var_E0 = CVar(CLng(1)) 'Long
  loc_13A5AE8:         Me.Find "ModuleDescription='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_13A5B18:         If (Me.EOF = &HFF) Then
  loc_13A5B21:           Me.MoveFirst
  loc_13A5B26:         End If
  loc_13A5B26:       End If
  loc_13A5B26:     End If
  loc_13A5B26:   End If
  loc_13A5B29: Else
  loc_13A5B2F:   If (var_86 = 1) Then
  loc_13A5B45:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A5B4E:     Set var_A0 = Me.FGrid1
  loc_13A5B54:     var_B0 = var_A0.Col
  loc_13A5B5D:     var_E0 = CVar(CLng(var_B0)) 'Long
  loc_13A5B84:     Set var_108 = Me.TxtGrid
  loc_13A5B8A:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), var_E0, var_C0, var_134, var_B0)
  loc_13A5B92:     var_10C.Tag = var_E0
  loc_13A5BBF:     Set var_8C = Me.TxtGrid
  loc_13A5BC5:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0, var_C0, var_E0)
  loc_13A5BCD:     var_A0.MaxLength = var_C0
  loc_13A5BEC:     var_138 = CLng(Me.FGrid1.Col)
  loc_13A5BFC:     If (var_138 = CLng(0)) Then
  loc_13A5BFF:       Call Proc_318_32_12ABC14(var_138, var_C0)
  loc_13A5C0D:       var_118 = Me.RecordCount
  loc_13A5C24:       var_11A = Me.EOF
  loc_13A5C38:       var_11C = Me.BOF
  loc_13A5C58:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A5C94:       If (CVar(CLng(0)) Or (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_13A5C97:         Exit Sub
  loc_13A5C98:       End If
  loc_13A5CAB:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A5CB3:       var_E0 = CVar(CLng(0)) 'Long
  loc_13A5CE6:       If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_13A5CEF:         Me.MoveFirst
  loc_13A5D07:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A5D0F:         var_E0 = CVar(CLng(0)) 'Long
  loc_13A5D1E:         var_B0 = Me.FGrid1.TextMatrix)
  loc_13A5D53:         Me.Find "Modtype='" & CStr(var_B0) & "'", 0, 1
  loc_13A5D83:         If (Me.EOF = &HFF) Then
  loc_13A5D8C:           Me.MoveFirst
  loc_13A5D91:         End If
  loc_13A5D91:       End If
  loc_13A5D94:     Else
  loc_13A5D9B:       If (var_138 = CLng(1)) Then
  loc_13A5D9E:         Call Proc_318_33_1425A10(var_134, var_B0, var_E0, var_C0, var_E0)
  loc_13A5DB2:         Me.Filter = 0
  loc_13A5DCD:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A5E04:         Me.Filter = CVar(CVar(CLng(5)) & CStr(Me.FGrid1.TextMatrix)) & "'")
  loc_13A5E29:         var_118 = Me.RecordCount
  loc_13A5E40:         var_11A = Me.EOF
  loc_13A5E54:         var_11C = Me.BOF
  loc_13A5E74:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A5EB0:         If (CVar(CLng(1)) Or (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_13A5EB3:           Exit Sub
  loc_13A5EB4:         End If
  loc_13A5EC7:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A5ECF:         var_E0 = CVar(CLng(1)) 'Long
  loc_13A5F02:         If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_13A5F0B:           Me.MoveFirst
  loc_13A5F23:           var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A5F2B:           var_E0 = CVar(CLng(1)) 'Long
  loc_13A5F6F:           Me.Find "ModuleDescription='" & CStr(Me.FGrid1.TextMatrix)) & "'", 0, 1
  loc_13A5F9F:           If (Me.EOF = &HFF) Then
  loc_13A5FA8:             Me.MoveFirst
  loc_13A5FAD:           End If
  loc_13A5FAD:         End If
  loc_13A5FAD:       End If
  loc_13A5FAD:     End If
  loc_13A5FAD:   End If
  loc_13A5FAD: End If
  loc_13A5FAD: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13DA20C
  'Data Table: 492F0C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C8 As Variant
  Dim var_98 As DataGrid
  Dim var_F0 As Long
  loc_13D9833: var_86 = Shift
  loc_13D9842: If (KeyCode = 0) Then
  loc_13D984F:   If (CLng(Shift) = &H1B) Then
  loc_13D985F:     Set var_8C = Me.TxtGrid
  loc_13D9865:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_13D986D:     var_88 = var_90.Tag
  loc_13D987F:     Set var_98 = Me.TxtGrid
  loc_13D9885:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_13D988D:     var_9C.Text = var_94
  loc_13D98A9:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13D98B2:     Set var_8C = Me.FGrid
  loc_13D98CF:     Set var_8C = Me.TxtGrid
  loc_13D98D5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_13D98DD:     var_90.Visible = FGrid.DispID_8001
  loc_13D98E9:     Exit Sub
  loc_13D98EA:   End If
  loc_13D990D:   If (CLng(Me.FGrid.Col) = CLng(0)) Then
  loc_13D991D:     Set var_98 = Me.TxtGrid
  loc_13D9923:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_13D992B:     var_B0 = var_9C.Height
  loc_13D993D:     Set var_8C = Me.TxtGrid
  loc_13D9943:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D994B:     arg_14 = var_90.Top
  loc_13D9957:     var_C8 = CVar((var_B4 + var_B8)) 'Single
  loc_13D9966:     Me.DGModType.Top = var_C8
  loc_13D9985:     Set var_8C = Me.TxtGrid
  loc_13D998B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_13D9993:     var_B4 = var_90.Left
  loc_13D99AA:     Me.DGModType.Left = CVar(var_B4)
  loc_13D99D0:     Set var_9C = Nothing
  loc_13D9A09:     Proc_6_69_134A630(Me.DGModType, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_13D9A27:     If (CLng(Shift) = &HD) Then
  loc_13D9A30:       Call Proc_318_39_14723E8(KeyCode, var_DE, 1, Nothing)
  loc_13D9A3B:       If (var_DE = &HFF) Then
  loc_13D9A49:         Set var_9C = Me.TxtGrid
  loc_13D9A72:         Set var_90 = var_9C
  loc_13D9A81:         Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 5)
  loc_13D9A91:       End If
  loc_13D9A91:     End If
  loc_13D9A94:   Else
  loc_13D9A9B:     If (var_B0 = CLng(1)) Then
  loc_13D9AAB:       Set var_98 = Me.TxtGrid
  loc_13D9AB1:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8, 0, 0)
  loc_13D9AB9:       0 = var_9C.Height
  loc_13D9ACB:       Set var_8C = Me.TxtGrid
  loc_13D9AD1:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D9AD9:       var_9C = var_90.Top
  loc_13D9AE5:       var_C8 = CVar((var_B4 + var_B8)) 'Single
  loc_13D9AF4:       Me.DgModDesc.Top = CVar(var_B4)
  loc_13D9B13:       Set var_8C = Me.TxtGrid
  loc_13D9B19:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D9B21:       0 = var_90.Left
  loc_13D9B38:       Me.DgModDesc.Left = CVar(var_B4)
  loc_13D9B5E:       Set var_9C = Nothing
  loc_13D9B97:       Proc_6_69_134A630(Me.DgModDesc, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_13D9BB5:       If (CLng(Shift) = &HD) Then
  loc_13D9BBE:         Call Proc_318_39_14723E8(KeyCode, var_DE, 1, Nothing)
  loc_13D9BC9:         If (var_DE = &HFF) Then
  loc_13D9C0F:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 5)
  loc_13D9C1F:         End If
  loc_13D9C1F:       End If
  loc_13D9C22:     Else
  loc_13D9C29:       If (var_B0 = CLng(3)) Then
  loc_13D9C36:         If (CLng(Shift) = &HD) Then
  loc_13D9C3F:           Call Proc_318_39_14723E8(KeyCode, var_DE, 0, 0)
  loc_13D9C4A:           If (var_DE = &HFF) Then
  loc_13D9C90:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 5, 0)
  loc_13D9CA0:           End If
  loc_13D9CA0:         End If
  loc_13D9CA3:       Else
  loc_13D9CAA:         If (var_B0 = CLng(4)) Then
  loc_13D9CB7:           If (CLng(Shift) = &HD) Then
  loc_13D9CC0:             Call Proc_318_39_14723E8(KeyCode, var_DE, 0, 0)
  loc_13D9CCB:             If (var_DE = &HFF) Then
  loc_13D9CD9:               Set var_9C = Me.TxtGrid
  loc_13D9D02:               Set var_90 = var_9C
  loc_13D9D11:               Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 5, 0)
  loc_13D9D21:             End If
  loc_13D9D21:           End If
  loc_13D9D21:         End If
  loc_13D9D21:       End If
  loc_13D9D21:     End If
  loc_13D9D21:   End If
  loc_13D9D24: Else
  loc_13D9D2A:   If (var_88 = 1) Then
  loc_13D9D37:     If (CLng(Shift) = &H1B) Then
  loc_13D9D47:       Set var_8C = Me.TxtGrid
  loc_13D9D4D:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 0, 0)
  loc_13D9D55:       0 = var_90.Tag
  loc_13D9D67:       Set var_98 = Me.TxtGrid
  loc_13D9D6D:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_13D9D75:       var_9C.Text = var_9C
  loc_13D9D91:       Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13D9D9A:       Set var_8C = Me.FGrid1
  loc_13D9DB7:       Set var_8C = Me.TxtGrid
  loc_13D9DBD:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0, FGrid1.DispID_8001)
  loc_13D9DC5:       var_90.Visible = arg_14
  loc_13D9DD1:       Exit Sub
  loc_13D9DD2:     End If
  loc_13D9DF5:     If (CLng(Me.FGrid1.Col) = CLng(0)) Then
  loc_13D9E05:       Set var_98 = Me.TxtGrid
  loc_13D9E0B:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_13D9E13:       var_F0 = var_9C.Height
  loc_13D9E25:       Set var_8C = Me.TxtGrid
  loc_13D9E2B:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D9E33:       0 = var_90.Top
  loc_13D9E3F:       var_C8 = CVar((var_B4 + var_B8)) 'Single
  loc_13D9E4E:       Me.DGModType.Top = CVar(var_B4)
  loc_13D9E6D:       Set var_8C = Me.TxtGrid
  loc_13D9E73:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_13D9E7B:       var_B4 = var_90.Left
  loc_13D9E92:       Me.DGModType.Left = CVar(var_B4)
  loc_13D9EB8:       Set var_9C = Nothing
  loc_13D9EF1:       Proc_6_69_134A630(Me.DGModType, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_13D9F0F:       If (CLng(Shift) = &HD) Then
  loc_13D9F18:         Call Proc_318_39_14723E8(KeyCode, var_DE, 1, Nothing)
  loc_13D9F23:         If (var_DE = &HFF) Then
  loc_13D9F31:           Set var_9C = Me.TxtGrid
  loc_13D9F5A:           Set var_90 = var_9C
  loc_13D9F69:           Proc_6_62_1254E68(Me.FGrid1, var_90, KeyCode, Shift, global_56, 5)
  loc_13D9F79:         End If
  loc_13D9F79:       End If
  loc_13D9F7C:     Else
  loc_13D9F83:       If (var_F0 = CLng(1)) Then
  loc_13D9F93:         Set var_98 = Me.TxtGrid
  loc_13D9F99:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8, 0, 0)
  loc_13D9FA1:         0 = var_9C.Height
  loc_13D9FB3:         Set var_8C = Me.TxtGrid
  loc_13D9FB9:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D9FC1:         var_9C = var_90.Top
  loc_13D9FCD:         var_C8 = CVar((var_B4 + var_B8)) 'Single
  loc_13D9FDC:         Me.DgModDesc.Top = CVar(var_B4)
  loc_13D9FFB:         Set var_8C = Me.TxtGrid
  loc_13DA001:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13DA009:         0 = var_90.Left
  loc_13DA020:         Me.DgModDesc.Left = CVar(var_B4)
  loc_13DA046:         Set var_9C = Nothing
  loc_13DA07F:         Proc_6_69_134A630(Me.DgModDesc, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_13DA09D:         If (CLng(Shift) = &HD) Then
  loc_13DA0A6:           Call Proc_318_39_14723E8(KeyCode, var_DE, 1, Nothing)
  loc_13DA0B1:           If (var_DE = &HFF) Then
  loc_13DA0F7:             Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 5)
  loc_13DA107:           End If
  loc_13DA107:         End If
  loc_13DA10A:       Else
  loc_13DA111:         If (var_F0 = CLng(3)) Then
  loc_13DA11E:           If (CLng(Shift) = &HD) Then
  loc_13DA127:             Call Proc_318_39_14723E8(KeyCode, var_DE, 0, 0)
  loc_13DA132:             If (var_DE = &HFF) Then
  loc_13DA178:               Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 5, 0)
  loc_13DA188:             End If
  loc_13DA188:           End If
  loc_13DA18B:         Else
  loc_13DA192:           If (var_F0 = CLng(4)) Then
  loc_13DA19F:             If (CLng(Shift) = &HD) Then
  loc_13DA1A8:               Call Proc_318_39_14723E8(KeyCode, var_DE, 0, 0)
  loc_13DA1B3:               If (var_DE = &HFF) Then
  loc_13DA1F9:                 Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 5, 0)
  loc_13DA209:               End If
  loc_13DA209:             End If
  loc_13DA209:           End If
  loc_13DA209:         End If
  loc_13DA209:       End If
  loc_13DA209:     End If
  loc_13DA209:   End If
  loc_13DA209: End If
  loc_13DA209: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '11451F4
  'Data Table: 492F0C
  Dim var_AA As Integer
  Dim var_B0 As Variant
  Dim var_B4 As Long
  Dim var_C0 As TextBox
  Dim arg_10 As Integer
  Dim var_E4 As Long
  loc_1144E64: On Error Goto loc_11451EC
  loc_1144E6A: Proc_6_58_E06050(arg_10)
  loc_1144E8A: var_88 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_1144E97: var_AA = KeyAscii
  loc_1144EA0: If (var_AA = 0) Then
  loc_1144EB6:   var_B4 = CLng(Me.FGrid.Col)
  loc_1144EC6:   If (var_B4 = CLng(0)) Then
  loc_1144EE5:     If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_1144EF7:       var_B8 = "ModType"
  loc_1144F12:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_1144F21:     End If
  loc_1144F24:   Else
  loc_1144F2B:     If (var_B4 = CLng(1)) Then
  loc_1144F4A:       If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_1144F51:         Set var_C0 = Me.TxtGrid
  loc_1144F5C:         var_B8 = "ModuleDescription"
  loc_1144F77:         Proc_6_89_1470B00(var_C0, KeyAscii, global_68, arg_10, var_B8)
  loc_1144F86:       End If
  loc_1144F89:     Else
  loc_1144F90:       If (var_B4 = CLng(4)) Then
  loc_1144FBC:         If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1144FCC:           Set var_B0 = Me.TxtGrid
  loc_1144FD2:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C0, "Yes", 0)
  loc_1144FDA:           var_C0.Text = var_B8
  loc_1144FE9:         Else
  loc_1145012:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1145022:             Set var_B0 = Me.TxtGrid
  loc_1145028:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C0, "No")
  loc_1145030:             var_C0.Text = 0
  loc_114503C:           End If
  loc_114503C:         End If
  loc_114503E:         arg_10 = 0
  loc_1145041:       End If
  loc_1145041:     End If
  loc_1145041:   End If
  loc_1145044: Else
  loc_114504A:   If (var_AA = 1) Then
  loc_1145060:     var_E4 = CLng(Me.FGrid1.Col)
  loc_1145070:     If (var_E4 = CLng(0)) Then
  loc_114508F:       If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_11450BC:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_72, arg_10, "ModType")
  loc_11450CB:       End If
  loc_11450CE:     Else
  loc_11450D5:       If (var_E4 = CLng(1)) Then
  loc_11450F4:         If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_11450FB:           Set var_C0 = Me.TxtGrid
  loc_1145121:           Proc_6_89_1470B00(var_C0, KeyAscii, global_68, arg_10, "ModuleDescription", 0)
  loc_1145130:         End If
  loc_1145133:       Else
  loc_114513A:         If (var_E4 = CLng(4)) Then
  loc_1145166:           If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1145176:             Set var_B0 = Me.TxtGrid
  loc_114517C:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C0, "Yes", 0)
  loc_1145184:             var_C0.Text = var_E4
  loc_1145193:           Else
  loc_11451BC:             If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11451CC:               Set var_B0 = Me.TxtGrid
  loc_11451D2:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C0, "No")
  loc_11451DA:               var_C0.Text = arg_10
  loc_11451E6:             End If
  loc_11451E6:           End If
  loc_11451E8:           arg_10 = 0
  loc_11451EB:         End If
  loc_11451EB:       End If
  loc_11451EB:     End If
  loc_11451EB:   End If
  loc_11451EB: End If
  loc_11451EB: Exit Sub
  loc_11451EC: ' Referenced from: 1144E64
  loc_11451EC: Proc_6_60_E63754(arg_10, var_B4)
  loc_11451F1: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1037B4C
  'Data Table: 492F0C
  Dim var_86 As Integer
  Dim var_A0 As Long
  Dim var_B0 As Long
  loc_10378F8: On Error Goto loc_1037B45
  loc_10378FE: var_86 = KeyCode
  loc_1037907: If (var_86 = 0) Then
  loc_103791D:   var_A0 = CLng(Me.FGrid.Col)
  loc_103792D:   If (var_A0 = CLng(0)) Then
  loc_1037953:     If ((Shift <> &HD) And (CBool(Me.DGModType.Visible) = 0)) Then
  loc_1037964:       Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_1037993:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_72, Shift, "ModType")
  loc_10379A2:     End If
  loc_10379A5:   Else
  loc_10379AC:     If (var_A0 = CLng(1)) Then
  loc_10379D2:       If ((Shift <> &HD) And (CBool(Me.DgModDesc.Visible) = 0)) Then
  loc_10379E3:         Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_1037A12:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "ModuleDescription", &HFF)
  loc_1037A21:       End If
  loc_1037A21:     End If
  loc_1037A21:   End If
  loc_1037A24: Else
  loc_1037A2A:   If (var_86 = 1) Then
  loc_1037A40:     var_B0 = CLng(Me.FGrid1.Col)
  loc_1037A50:     If (var_B0 = CLng(0)) Then
  loc_1037A76:       If ((Shift <> &HD) And (CBool(Me.DGModType.Visible) = 0)) Then
  loc_1037A87:         Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_1037AB6:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_72, Shift, "ModType", &HFF, 0)
  loc_1037AC5:       End If
  loc_1037AC8:     Else
  loc_1037ACF:       If (var_B0 = CLng(1)) Then
  loc_1037AF5:         If ((Shift <> &HD) And (CBool(Me.DgModDesc.Visible) = 0)) Then
  loc_1037B06:           Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_1037B35:           Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "ModuleDescription", &HFF, 0)
  loc_1037B44:         End If
  loc_1037B44:       End If
  loc_1037B44:     End If
  loc_1037B44:   End If
  loc_1037B44: End If
  loc_1037B44: Exit Sub
  loc_1037B45: ' Referenced from: 10378F8
  loc_1037B45: Proc_6_60_E63754(var_B0, 0, &HFF)
  loc_1037B4A: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E17430
  'Data Table: 492F0C
  Dim arg_10 As Integer
  loc_E17414: On Error Goto loc_E1742A
  loc_E1741D: Call Proc_318_39_14723E8(Cancel)
  loc_E17426: arg_10 = Not(var_86)
  loc_E17429: Exit Sub
  loc_E1742A: ' Referenced from: E17414
  loc_E1742A: Proc_6_60_E63754(arg_10)
  loc_E1742F: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E17770
  'Data Table: 492F0C
  loc_E17765: Me.Global.Unload Me
  loc_E1776D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61D44
  'Data Table: 492F0C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E61D0F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61D22: Set var_A8 = Me.TxtGrid
  loc_E61D28: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61D30: var_AC.Visible = False
  loc_E61D3C: Call Proc_318_36_EB8044()
  loc_E61D41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6B404
  'Data Table: 492F0C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  Dim FGrid_UnknownEvent_9FF As Double
  loc_E6B3B4: Call Proc_318_37_E4197C()
  loc_E6B3D8: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6B3E6:   Set var_88 = Me.TxtGrid
  loc_E6B3EC:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6B3F4:   var_9C.Visible = False
  loc_E6B400: End If
  loc_E6B400: Exit Sub
  loc_E6B401: FGrid_UnknownEvent_9FF = 
End Sub

Private Sub FGrid_UnknownEvent_A '1062688
  'Data Table: 492F0C
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1062410: Set var_88 = Me.TopCtrl1
  loc_1062416: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_106245B: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1062464:   Call Form_KeyDown(Cancel, arg_10)
  loc_1062469: End If
  loc_106246D: Set var_88 = Me.TopCtrl1
  loc_1062473: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_106248C: If (CStr() = "Browse") Then
  loc_106248F:   Exit Sub
  loc_1062490: End If
  loc_1062504: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_106250F:   var_9C = "+{Tab}"
  loc_1062515:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_106251F:   Cancel = 0
  loc_1062522: End If
  loc_1062528: global_64 = Cancel
  loc_106254E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1062572: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1062588:   var_DC = CLng(Me.FGrid.Col)
  loc_1062598:   If Not (var_DC = CLng(1)) Then
  loc_10625A2:     If Not (var_DC = CLng(0)) Then
  loc_10625AC:       If (var_DC = CLng(3)) Then
  loc_10625AF:       End If
  loc_10625AF:     End If
  loc_10625C2:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10625DA:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10625DF:     var_11C = vbNullString
  loc_10625E9:     Set var_B4 = Me.FGrid
  loc_10625EF:     LateIdCallSt
  loc_106260A:   Else
  loc_1062611:     If (var_DC = CLng(4)) Then
  loc_1062627:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_106263F:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1062644:       var_11C = "Yes"
  loc_106264E:       Set var_B4 = Me.FGrid
  loc_1062654:       LateIdCallSt
  loc_106266C:     End If
  loc_106266C:   End If
  loc_106266C:   GoTo loc_106266F
  loc_106266F:   ' Referenced from: 106266C
  loc_106266F: End If
  loc_1062675: If (Cancel = &HD) Then
  loc_106267D:   global_56 = 0
  loc_1062680: End If
  loc_1062682: Cancel = 0
  loc_1062685: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11260
  'Data Table: 492F0C
  loc_E11251: Call FGrid_UnknownEvent_C()
  loc_E1125B: global_56 = 0
  loc_E1125E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11EDC30
  'Data Table: 492F0C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_D0 As Integer
  Dim var_B8 As TextBox
  loc_11ED7A4: Set var_88 = Me.TopCtrl1
  loc_11ED7AA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_11ED7C3: If (CStr() = "Browse") Then
  loc_11ED7C6:   Exit Sub
  loc_11ED7C7: End If
  loc_11ED7DA: var_A0 = CLng(Me.FGrid.Col)
  loc_11ED7EA: If (var_A0 = CLng(0)) Then
  loc_11ED7FB:   Set var_88 = Me.TxtGrid
  loc_11ED801:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED809:   var_A4.MaxLength = 3
  loc_11ED818: Else
  loc_11ED81F:   If Not (var_A0 = CLng(1)) Then
  loc_11ED829:     If (var_A0 = CLng(3)) Then
  loc_11ED82C:     End If
  loc_11ED83A:     Set var_88 = Me.TxtGrid
  loc_11ED840:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED848:     var_A4.MaxLength = &H4B
  loc_11ED857:   Else
  loc_11ED85E:     If (var_A0 = CLng(4)) Then
  loc_11ED86F:       Set var_88 = Me.TxtGrid
  loc_11ED875:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED87D:       var_A4.MaxLength = 3
  loc_11ED889:     End If
  loc_11ED889:   End If
  loc_11ED889: End If
  loc_11ED89C: var_A8 = CLng(Me.FGrid.Col)
  loc_11ED8AC: If Not (var_A8 = CLng(0)) Then
  loc_11ED8B6:   If (var_A8 = CLng(1)) Then
  loc_11ED8B9:   End If
  loc_11ED8F7:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_11ED90C: Else
  loc_11ED913:   If (var_A8 = CLng(3)) Then
  loc_11ED91A:     Set var_B8 = Me.FGrid
  loc_11ED93E:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11ED947:     var_D0 = Asc(var_9C)
  loc_11ED96B:     Set var_A4 = var_B8
  loc_11ED97D:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0, var_D0)
  loc_11ED9A5:     Set var_88 = Me.TxtGrid
  loc_11ED9AB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0, var_D0)
  loc_11ED9B3:     Cancel = var_A4.Text
  loc_11ED9CC:     If (Len(var_9C) <= 1) Then
  loc_11ED9DB:       Set var_88 = Me.TxtGrid
  loc_11ED9E1:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11ED9E9:       0 = var_A4.Text
  loc_11ED9FA:       Set var_AC = Me.TxtGrid
  loc_11EDA00:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_9C)
  loc_11EDA08:       var_B8.Text = var_A8
  loc_11EDA1B:     End If
  loc_11EDA27:     Set var_88 = Me.TxtGrid
  loc_11EDA2D:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11EDA47:     Set var_AC = Me.TxtGrid
  loc_11EDA4D:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11EDA55:     var_B8.SelStart = Len(var_A4.Text)
  loc_11EDA6B:   Else
  loc_11EDA72:     If (var_A8 = CLng(4)) Then
  loc_11EDA79:       Set var_B8 = Me.FGrid
  loc_11EDA9D:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11EDACA:       Set var_A4 = var_B8
  loc_11EDADC:       Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_11EDB04:       Set var_88 = Me.TxtGrid
  loc_11EDB0A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_11EDB12:       0 = var_A4.Text
  loc_11EDB2B:       If (Len(var_9C) <= 1) Then
  loc_11EDB3A:         Set var_88 = Me.TxtGrid
  loc_11EDB40:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11EDB48:         var_D0 = var_A4.Text
  loc_11EDB79:         If (Left(CVar(var_9C), 1) = "N") Then
  loc_11EDB88:           Set var_88 = Me.TxtGrid
  loc_11EDB8E:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11EDB96:           var_A4.Text = "No"
  loc_11EDBA5:         Else
  loc_11EDBB1:           Set var_88 = Me.TxtGrid
  loc_11EDBB7:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11EDBBF:           var_A4.Text = "Yes"
  loc_11EDBCB:         End If
  loc_11EDBCB:       End If
  loc_11EDBD7:       Set var_88 = Me.TxtGrid
  loc_11EDBDD:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11EDBF7:       Set var_AC = Me.TxtGrid
  loc_11EDBFD:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11EDC05:       var_B8.SelStart = Len(var_A4.Text)
  loc_11EDC18:     End If
  loc_11EDC18:   End If
  loc_11EDC18: End If
  loc_11EDC22: If (CLng(Cancel) <> &HD) Then
  loc_11EDC2A:   global_56 = &HFF
  loc_11EDC2D: End If
  loc_11EDC2D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FDA9B0
  'Data Table: 492F0C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FDA7E8: Set var_8C = Me.TopCtrl1
  loc_FDA7EE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FDA807: If (CStr() = "Browse") Then
  loc_FDA80A:   Exit Sub
  loc_FDA80B: End If
  loc_FDA828: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FDA82B:   Exit Sub
  loc_FDA82C: End If
  loc_FDA83D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FDA85F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FDA899:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FDA8BB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FDA8D1:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FDA8DA:         Set var_114 = Me.FGrid
  loc_FDA8F5:       Else
  loc_FDA908:         Me.FGrid.Rows = 1
  loc_FDA925:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FDA92D:         Set var_114 = Me.FGrid
  loc_FDA95C:         Me.FGrid.FixedRows = 1
  loc_FDA964:       End If
  loc_FDA964:     End If
  loc_FDA967:   Else
  loc_FDA988:     MsgBox("No Entries To Delete", &H10, "Delete !", var_F0, var_110)
  loc_FDA998:   End If
  loc_FDA99C:   Set var_8C = Me.FGrid
  loc_FDA9AD: End If
  loc_FDA9AD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EE60
  'Data Table: 492F0C
  loc_E1EE57: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EE5F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E418B8
  'Data Table: 492F0C
  Dim var_8C As TextBox
  loc_E4188C: Call Proc_318_36_EB8044()
  loc_E4189C: Set var_88 = Me.TxtGrid
  loc_E418A2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E418AA: var_8C.Visible = False
  loc_E418B6: Exit Sub
End Sub

Private Sub Form_Load() '13A7BF0
  'Data Table: 492F0C
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_B4 As String
  Dim unk_492F10 As Connection15
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_EC As Variant
  Dim var_110 As Variant
  Dim unk_492F34 As Connection15
  Dim var_D8 As Fields15
  Dim var_170 As Variant
  loc_13A72F4: On Error Goto loc_13A7BAA
  loc_13A72FE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13A7303: Call Proc_318_34_1240E74()
  loc_13A731B: Me.FGrid.Rows = 1
  loc_13A7330: Set var_AC = Me.FGrid1
  loc_13A7336: var_AC.Rows = 1
  loc_13A7342: var_86 = CByte(1) 'Byte
  loc_13A734A: var_88 = CByte(1) 'Byte
  loc_13A7372: unk_492F10.Execute "SELECT printersetup.* FROM PrinterSetup WHERE PrinterSetup.SITE_CODE='" & MemVar_1F95078 & "'", var_C4, -1
  loc_13A7383: Set global_52 = var_AC
  loc_13A73AF: If (Me.RecordCount > 0) Then
  loc_13A73B2:   ' Referenced from: 13A7AAA
  loc_13A73C4:   If Not(Me.EOF) Then
  loc_13A73D9:     var_AC = Me.Fields
  loc_13A7414:     var_D8 = Me.Fields.Item("ModType")
  loc_13A7450:     var_110 = CVar(Me.Fields.Item("ModType")) 'Address
  loc_13A747D:     If ((var_AC Or (Proc_6_38_E69628(CVar(var_D8), (Proc_6_38_E69628(CVar(var_AC.Item("ModType"))) = "KOT")) = "ORD")) Or (Proc_6_38_E69628(var_110) = "TKN")) Then
  loc_13A7484:       Set var_118 = Me.FGrid1
  loc_13A7487:       var_98 = vbNullString
  loc_13A74D5:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ModType")), CVar(CLng(0)), CVar(CLng(var_86)))) 'String
  loc_13A74DC:       LateIdCallSt
  loc_13A752B:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ModDescription")), CVar(CLng(1)), CVar(CLng(var_86)), var_118)) 'String
  loc_13A7532:       LateIdCallSt
  loc_13A7581:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("modCODE")), CVar(CLng(2)), CVar(CLng(var_86)), var_118)) 'String
  loc_13A7588:       LateIdCallSt
  loc_13A75D7:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Printer")), CVar(CLng(3)), CVar(CLng(var_86)), var_118, var_E8)) 'String
  loc_13A75DE:       LateIdCallSt
  loc_13A762D:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("AutoPrint")), CVar(CLng(4)), CVar(CLng(var_86)), var_118, var_E8)) 'String
  loc_13A7634:       LateIdCallSt
  loc_13A7683:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")), CVar(CLng(5)), CVar(CLng(var_86)), var_118, var_E8)) 'String
  loc_13A768A:       LateIdCallSt
  loc_13A76E2:       var_FC = 0
  loc_13A7702:       var_B4 = "Select Max(Name) From Depart Where Code='" & Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")), var_118, var_E8, var_E8)
  loc_13A7720:       unk_492F34.Execute var_B4 & "' And LogSite_Code='" & MemVar_1F95078 & "'", var_E8, -1
  loc_13A7728:       var_D4 = var_D4.Fields
  loc_13A7730:       var_FC = var_D8.Item(var_D8)
  loc_13A7738:       var_EC = var_EC.Value
  loc_13A7745:       var_170 = CVar(Proc_6_38_E69628(var_110, var_110, CVar(CLng(6)), CVar(CLng(var_86)))) 'String
  loc_13A774C:       LateIdCallSt
  loc_13A777B:       Set var_118 = Nothing 
  loc_13A778A:       var_86 = CByte((CInt(var_86) + 1)) 'Byte
  loc_13A7791:     Else
  loc_13A7795:       Set var_188 = Me.FGrid
  loc_13A7798:       var_98 = vbNullString
  loc_13A77BE:       var_98 = "ModType"
  loc_13A77E6:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_98)), CVar(CLng(0)), CVar(CLng(var_88)), FGrid.DispID_10000, var_98)) 'String
  loc_13A77ED:       LateIdCallSt
  loc_13A783C:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ModDescription")), CVar(CLng(1)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A7843:       LateIdCallSt
  loc_13A7892:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("modCODE")), CVar(CLng(2)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A7899:       LateIdCallSt
  loc_13A78E8:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Printer")), CVar(CLng(3)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A78EF:       LateIdCallSt
  loc_13A793E:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("AutoPrint")), CVar(CLng(4)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A7945:       LateIdCallSt
  loc_13A7994:       var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")), CVar(CLng(5)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A799B:       LateIdCallSt
  loc_13A79F3:       var_FC = 0
  loc_13A7A0F:       var_B0 = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")), var_188, var_E8, var_118)
  loc_13A7A31:       unk_492F34.Execute "Select Max(Name) From Depart Where Code='" & var_B0 & "' And LogSite_Code='" & MemVar_1F95078 & "'", var_E8, -1
  loc_13A7A39:       var_D4 = var_D4.Fields
  loc_13A7A41:       var_FC = var_D8.Item(var_D8)
  loc_13A7A49:       var_EC = var_EC.Value
  loc_13A7A56:       var_170 = CVar(Proc_6_38_E69628(var_110, var_110, CVar(CLng(6)), CVar(CLng(var_88)))) 'String
  loc_13A7A5D:       LateIdCallSt
  loc_13A7A8C:       Set var_188 = Nothing 
  loc_13A7A9B:       var_88 = CByte((CInt(var_88) + 1)) 'Byte
  loc_13A7A9F:     End If
  loc_13A7AA5:     Me.MoveNext
  loc_13A7AAA:     GoTo loc_13A73B2
  loc_13A7AAD:   End If
  loc_13A7AAD: End If
  loc_13A7ACC: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13A7ACF:   var_98 = vbNullString
  loc_13A7AD9:   Set var_AC = Me.FGrid
  loc_13A7AEA: End If
  loc_13A7B09: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_13A7B0C:   var_98 = vbNullString
  loc_13A7B16:   Set var_AC = Me.FGrid1
  loc_13A7B27: End If
  loc_13A7B3A: Me.FGrid.FixedRows = 1
  loc_13A7B42: var_98 = 1
  loc_13A7B55: Me.FGrid1.FixedRows = var_98
  loc_13A7B5D: Call Proc_318_30_10EC7A8(FGrid1.DispID_10000, var_98, FGrid.DispID_10000, var_98, var_188)
  loc_13A7B62: Call Proc_318_32_12ABC14(var_170, var_170, var_E8)
  loc_13A7B67: Call Proc_318_31_111096C(FGrid1.DispID_10000)
  loc_13A7B6C: Call Proc_318_33_1425A10(var_98)
  loc_13A7B7B: Set var_AC = Me.TopCtrl1
  loc_13A7B81: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005("Add")
  loc_13A7BA1: Proc_6_23_DFC5B8(Me, 4425)
  loc_13A7BA9: Exit Sub
  loc_13A7BAA: ' Referenced from: 13A72F4
  loc_13A7BB2: Set var_AC = Err()
  loc_13A7BB8: Call 0.Method_arg_2C (var_B0)
  loc_13A7BD9: MsgBox(CVar(var_B0), &H40, "Information", var_110, var_170)
  loc_13A7BEC: Exit Sub
  loc_13A7BED: Exit Sub
End Sub

Private Sub Form_Resize() 'E85938
  'Data Table: 492F0C
  loc_E858CE: Call 0.Method_arg_50 (var_88)
  loc_E858E0: Me.LblFormCaption.Caption = var_88
  loc_E858F9: Me.LblFormCaption.Left = CDbl(0)
  loc_E8590F: Me.LblFormCaption.Top = CDbl(0)
  loc_E8591D: Call 0.Method_arg_100 (var_90)
  loc_E8592F: Me.LblFormCaption.Width = var_90
  loc_E85937: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E535E4
  'Data Table: 492F0C
  loc_E535B7: Set global_52 = Nothing
  loc_E535C9: Set global_72 = Nothing
  loc_E535DB: Set global_68 = Nothing
  loc_E535E2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89F74
  'Data Table: 492F0C
  loc_E89F10: On Error Goto loc_E89F30
  loc_E89F27: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E89F2F: Exit Sub
  loc_E89F30: ' Referenced from: E89F10
  loc_E89F38: Set var_88 = Err()
  loc_E89F3E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89F5F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89F72: Exit Sub
  loc_E89F73: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E62344
  'Data Table: 492F0C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6230F: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E62322: Set var_A8 = Me.TxtGrid
  loc_E62328: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_AC)
  loc_E62330: var_AC.Visible = False
  loc_E6233C: Call Proc_318_36_EB8044()
  loc_E62341: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E6B51C
  'Data Table: 492F0C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  loc_E6B4CC: Call Proc_318_38_E41AA8()
  loc_E6B4F0: If (CLng(Me.FGrid1.Col) = 0) Then
  loc_E6B4FE:   Set var_88 = Me.TxtGrid
  loc_E6B504:   Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_9C)
  loc_E6B50C:   var_9C.Visible = False
  loc_E6B518: End If
  loc_E6B518: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '10618A0
  'Data Table: 492F0C
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1061628: Set var_88 = Me.TopCtrl1
  loc_106162E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1061673: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_106167C:   Call Form_KeyDown(KeyCode, Shift)
  loc_1061681: End If
  loc_1061685: Set var_88 = Me.TopCtrl1
  loc_106168B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_10616A4: If (CStr() = "Browse") Then
  loc_10616A7:   Exit Sub
  loc_10616A8: End If
  loc_106171C: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_1061727:   var_9C = "+{Tab}"
  loc_106172D:   Proc_303_0_FBACC8(CStr(Me.FGrid1.Tag), 0)
  loc_1061737:   KeyCode = 0
  loc_106173A: End If
  loc_1061740: global_64 = KeyCode
  loc_1061766: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_106178A: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10617A0:   var_DC = CLng(Me.FGrid1.Col)
  loc_10617B0:   If Not (var_DC = CLng(1)) Then
  loc_10617BA:     If Not (var_DC = CLng(0)) Then
  loc_10617C4:       If (var_DC = CLng(3)) Then
  loc_10617C7:       End If
  loc_10617C7:     End If
  loc_10617DA:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10617F2:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10617F7:     var_11C = vbNullString
  loc_1061801:     Set var_B4 = Me.FGrid1
  loc_1061807:     LateIdCallSt
  loc_1061822:   Else
  loc_1061829:     If (var_DC = CLng(4)) Then
  loc_106183F:       var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1061857:       var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_106185C:       var_11C = "Yes"
  loc_1061866:       Set var_B4 = Me.FGrid1
  loc_106186C:       LateIdCallSt
  loc_1061884:     End If
  loc_1061884:   End If
  loc_1061884:   GoTo loc_1061887
  loc_1061887:   ' Referenced from: 1061884
  loc_1061887: End If
  loc_106188D: If (KeyCode = &HD) Then
  loc_1061895:   global_56 = 0
  loc_1061898: End If
  loc_106189A: KeyCode = 0
  loc_106189D: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E117B8
  'Data Table: 492F0C
  loc_E117A9: Call Fgrid1_UnknownEvent_C()
  loc_E117B3: global_56 = 0
  loc_E117B6: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C '11EF988
  'Data Table: 492F0C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_D0 As Integer
  Dim var_B8 As TextBox
  loc_11EF4FC: Set var_88 = Me.TopCtrl1
  loc_11EF502: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_11EF51B: If (CStr() = "Browse") Then
  loc_11EF51E:   Exit Sub
  loc_11EF51F: End If
  loc_11EF532: var_A0 = CLng(Me.FGrid1.Col)
  loc_11EF542: If (var_A0 = CLng(0)) Then
  loc_11EF553:   Set var_88 = Me.TxtGrid
  loc_11EF559:   Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF561:   var_A4.MaxLength = 3
  loc_11EF570: Else
  loc_11EF577:   If Not (var_A0 = CLng(1)) Then
  loc_11EF581:     If (var_A0 = CLng(3)) Then
  loc_11EF584:     End If
  loc_11EF592:     Set var_88 = Me.TxtGrid
  loc_11EF598:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF5A0:     var_A4.MaxLength = &H4B
  loc_11EF5AF:   Else
  loc_11EF5B6:     If (var_A0 = CLng(4)) Then
  loc_11EF5C7:       Set var_88 = Me.TxtGrid
  loc_11EF5CD:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF5D5:       var_A4.MaxLength = 3
  loc_11EF5E1:     End If
  loc_11EF5E1:   End If
  loc_11EF5E1: End If
  loc_11EF5F4: var_A8 = CLng(Me.FGrid1.Col)
  loc_11EF604: If Not (var_A8 = CLng(0)) Then
  loc_11EF60E:   If (var_A8 = CLng(1)) Then
  loc_11EF611:   End If
  loc_11EF64F:   Proc_6_63_110B734(Me, Me.FGrid1, Me.TxtGrid, 1, 0)
  loc_11EF664: Else
  loc_11EF66B:   If (var_A8 = CLng(3)) Then
  loc_11EF672:     Set var_B8 = Me.FGrid1
  loc_11EF696:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11EF69F:     var_D0 = Asc(var_9C)
  loc_11EF6C3:     Set var_A4 = var_B8
  loc_11EF6D5:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 1, 0, var_D0)
  loc_11EF6FD:     Set var_88 = Me.TxtGrid
  loc_11EF703:     Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_A4, var_9C, 0, var_D0)
  loc_11EF70B:     KeyCode = var_A4.Text
  loc_11EF724:     If (Len(var_9C) <= 1) Then
  loc_11EF733:       Set var_88 = Me.TxtGrid
  loc_11EF739:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4, var_9C)
  loc_11EF741:       0 = var_A4.Text
  loc_11EF752:       Set var_AC = Me.TxtGrid
  loc_11EF758:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B8, var_9C)
  loc_11EF760:       var_B8.Text = var_A8
  loc_11EF773:     End If
  loc_11EF77F:     Set var_88 = Me.TxtGrid
  loc_11EF785:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF79F:     Set var_AC = Me.TxtGrid
  loc_11EF7A5:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B8)
  loc_11EF7AD:     var_B8.SelStart = Len(var_A4.Text)
  loc_11EF7C3:   Else
  loc_11EF7CA:     If (var_A8 = CLng(4)) Then
  loc_11EF7D1:       Set var_B8 = Me.FGrid1
  loc_11EF7F5:       var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11EF822:       Set var_A4 = var_B8
  loc_11EF834:       Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 1, 0)
  loc_11EF85C:       Set var_88 = Me.TxtGrid
  loc_11EF862:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4, var_9C, Asc(var_9C))
  loc_11EF86A:       0 = var_A4.Text
  loc_11EF883:       If (Len(var_9C) <= 1) Then
  loc_11EF892:         Set var_88 = Me.TxtGrid
  loc_11EF898:         Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11EF8A0:         var_D0 = var_A4.Text
  loc_11EF8D1:         If (Left(CVar(var_9C), 1) = "N") Then
  loc_11EF8E0:           Set var_88 = Me.TxtGrid
  loc_11EF8E6:           Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF8EE:           var_A4.Text = "No"
  loc_11EF8FD:         Else
  loc_11EF909:           Set var_88 = Me.TxtGrid
  loc_11EF90F:           Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF917:           var_A4.Text = "Yes"
  loc_11EF923:         End If
  loc_11EF923:       End If
  loc_11EF92F:       Set var_88 = Me.TxtGrid
  loc_11EF935:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF94F:       Set var_AC = Me.TxtGrid
  loc_11EF955:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B8)
  loc_11EF95D:       var_B8.SelStart = Len(var_A4.Text)
  loc_11EF970:     End If
  loc_11EF970:   End If
  loc_11EF970: End If
  loc_11EF97A: If (CLng(KeyCode) <> &HD) Then
  loc_11EF982:   global_56 = &HFF
  loc_11EF985: End If
  loc_11EF985: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FD7DB8
  'Data Table: 492F0C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FD7BF0: Set var_8C = Me.TopCtrl1
  loc_FD7BF6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FD7C0F: If (CStr() = "Browse") Then
  loc_FD7C12:   Exit Sub
  loc_FD7C13: End If
  loc_FD7C30: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FD7C33:   Exit Sub
  loc_FD7C34: End If
  loc_FD7C45: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FD7C67:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_FD7CA1:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FD7CC3:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FD7CD9:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FD7CE2:         Set var_114 = Me.FGrid1
  loc_FD7CFD:       Else
  loc_FD7D10:         Me.FGrid1.Rows = 1
  loc_FD7D2D:         var_D0 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_FD7D35:         Set var_114 = Me.FGrid1
  loc_FD7D64:         Me.FGrid1.FixedRows = 1
  loc_FD7D6C:       End If
  loc_FD7D6C:     End If
  loc_FD7D6F:   Else
  loc_FD7D90:     MsgBox("No Entries To Delete", &H10, "Delete !", var_F0, var_110)
  loc_FD7DA0:   End If
  loc_FD7DA4:   Set var_8C = Me.FGrid1
  loc_FD7DB5: End If
  loc_FD7DB5: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'E1F360
  'Data Table: 492F0C
  loc_E1F357: Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_E1F35F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E4191C
  'Data Table: 492F0C
  Dim var_8C As TextBox
  loc_E418F0: Call Proc_318_36_EB8044()
  loc_E41900: Set var_88 = Me.TxtGrid
  loc_E41906: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E4190E: var_8C.Visible = False
  loc_E4191A: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EDD1A0
  'Data Table: 492F0C
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As String
  loc_EDD0FE: On Error Goto loc_EDD15B
  loc_EDD107: Me.MoveFirst
  loc_EDD13B: var_E8 = "SYear='" & Year(MyValue) & "'" 
  loc_EDD13F: var_EC = CStr(var_E8)
  loc_EDD149: Me.Find var_EC, 0, 1
  loc_EDD15A: Exit Sub
  loc_EDD15B: ' Referenced from: EDD0FE
  loc_EDD163: Set var_100 = Err()
  loc_EDD169: Call 0.Method_arg_2C (var_EC)
  loc_EDD18A: MsgBox(CVar(var_EC), &H40, "Information", var_E8, var_110)
  loc_EDD19D: Exit Sub
  loc_EDD19E: Exit Sub
End Sub

Public Sub Proc_318_28_F1F928(arg_C) 'F1F928
  'Data Table: 492F0C
  Dim var_8C As Recordset15
  loc_F1F825: Set var_8C = arg_C 
  loc_F1F84D: var_8C.Fields.Append "ModType", &HC8, &H19
  loc_F1F879: var_8C.Fields.Append "Mod_Type", &HC8, &H19
  loc_F1F8A5: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F1F8D1: var_8C.Fields.Append "Departname", &HC8, &H32
  loc_F1F8E1: var_8C.CursorType = 3
  loc_F1F8EE: var_8C.LockType = 3
  loc_F1F90D: var_8C.Open var_A0, var_B0, -1
  loc_F1F914: Set var_8C = Nothing 
  loc_F1F91B: Set var_88 = arg_C 
  loc_F1F91F: Proc_318_28_F1F928 = -1
End Sub

Public Sub Proc_318_29_F21500(arg_C) 'F21500
  'Data Table: 492F0C
  Dim var_8C As Recordset15
  loc_F213FD: Set var_8C = arg_C 
  loc_F21425: var_8C.Fields.Append "ModCode", &HC8, 5
  loc_F21451: var_8C.Fields.Append "ModuleDescription", &HC8, &H4B
  loc_F2147D: var_8C.Fields.Append "ModType", &HC8, &H19
  loc_F214A9: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F214B9: var_8C.CursorType = 3
  loc_F214C6: var_8C.LockType = 3
  loc_F214E5: var_8C.Open var_A0, var_B0, -1
  loc_F214EC: Set var_8C = Nothing 
  loc_F214F3: Set var_88 = arg_C 
  loc_F214F7: Proc_318_29_F21500 = -1
End Sub

Public Sub Proc_318_30_10EC7A8
  'Data Table: 492F0C
  Dim var_94 As String
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  Dim var_C8 As String
  Dim unk_492F34 As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Field20
  Dim var_11C As Recordset15
  Dim var_EC As Variant
  Dim var_DC As Variant
  loc_10EC4CA: Call Proc_318_28_F1F928(New)
  loc_10EC4D5: Set global_72 = var_90
  loc_10EC500: Me.Connection15.Execute "Select Distinct ModType,PrintMast.RestCode from PrintMast where SITE_CODE='" & MemVar_1F95078 & "'", var_B8, -1
  loc_10EC50B: Set var_88 = var_90
  loc_10EC51B: ' Referenced from: 10EC774
  loc_10EC52A: If Not(var_88.EOF) Then
  loc_10EC54F:   var_A8 = "RestCode"
  loc_10EC574:   var_94 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8)), "Select Max(Name) From Depart Where Code='", var_EC, -1, var_F0, var_F4)
  loc_10EC586:   var_C8 = 0 & "Select Distinct ModType,PrintMast.RestCode from PrintMast where SITE_CODE='" & MemVar_1F95078 & "' And LogSite_Code='" & MemVar_1F95078
  loc_10EC596:   unk_492F34.Execute var_C8 & "'", var_108, var_118
  loc_10EC5A6:    = var_F4.Item(var_F0.Fields)
  loc_10EC5AE:    = var_108.Value
  loc_10EC5BB:   var_8C = Proc_6_38_E69628(var_118)
  loc_10EC5E7:   If (var_8C <> vbNullString) Then
  loc_10EC5F0:     Set var_11C = global_72 
  loc_10EC5FF:     var_11C.AddNew var_A8, var_DC
  loc_10EC64F:     var_11C.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_10EC6AF:     var_11C.Fields.Item("Mod_Type").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_10EC70F:     var_11C.Fields.Item("RestCode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RestCode"))))
  loc_10EC727:     var_DC = CVar(var_8C) 'String
  loc_10EC72E:     var_A8 = "Departname"
  loc_10EC74A:     var_11C.Fields.Item(var_A8).Value = var_DC
  loc_10EC761:     var_11C.Update var_A8, var_DC
  loc_10EC768:     Set var_11C = Nothing 
  loc_10EC76C:   End If
  loc_10EC76F:   var_88.MoveNext
  loc_10EC774:   GoTo loc_10EC51B
  loc_10EC777: End If
  loc_10EC780: CVarUnk
  loc_10EC785: VerifyVarObj
  loc_10EC78B: Set var_90 = Me.DGModType
  loc_10EC791: LateIdStAd
  loc_10EC7A4: Set var_88 = Nothing
  loc_10EC7A7: Exit Sub
End Sub

Public Sub Proc_318_31_111096C
  'Data Table: 492F0C
  Dim var_94 As String
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim unk_492F34 As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Field20
  Dim var_11C As Recordset15
  Dim var_EC As Variant
  Dim var_DC As String
  loc_111065E: Call Proc_318_29_F21500(New)
  loc_1110669: Set global_68 = var_90
  loc_1110694: Me.Connection15.Execute "Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F95078 & "'", var_B8, -1
  loc_111069F: Set var_88 = var_90
  loc_11106AF: ' Referenced from: 1110936
  loc_11106BE: If Not(var_88.EOF) Then
  loc_11106E3:   var_A8 = "RestCode"
  loc_1110708:   var_94 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8)), "Select Max(Name) From Depart Where Code='", var_EC, -1, var_F0, var_F4)
  loc_1110713:   var_C4 = 0 & "Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F95078 & "' And LogSite_Code='"
  loc_111072A:   unk_492F34.Execute var_C4 & MemVar_1F95078 & "'", var_108, var_118
  loc_111073A:    = var_F4.Item(var_F0.Fields)
  loc_1110742:    = var_108.Value
  loc_111077B:   If (Proc_6_38_E69628(var_118) <> vbNullString) Then
  loc_1110784:     Set var_11C = global_68 
  loc_1110793:     var_11C.AddNew var_A8, var_DC
  loc_11107E3:     var_11C.Fields.Item("ModCode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("modCODE"))))
  loc_1110843:     var_11C.Fields.Item("ModuleDescription").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModuleDescription"))))
  loc_11108A3:     var_11C.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_11108BB:     var_A8 = "RestCode"
  loc_11108E7:     var_DC = "RestCode"
  loc_1110903:     var_11C.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8))))
  loc_1110923:     var_11C.Update var_A8, var_DC
  loc_111092A:     Set var_11C = Nothing 
  loc_111092E:   End If
  loc_1110931:   var_88.MoveNext
  loc_1110936:   GoTo loc_11106AF
  loc_1110939: End If
  loc_1110942: CVarUnk
  loc_1110947: VerifyVarObj
  loc_111094D: Set var_90 = Me.DgModDesc
  loc_1110953: LateIdStAd
  loc_1110966: Set var_88 = Nothing
  loc_1110969: Exit Sub
End Sub

Public Sub Proc_318_32_12ABC14
  'Data Table: 492F0C
  Dim var_94 As String
  Dim var_98 As String
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim unk_492F34 As Connection15
  Dim var_8C As Recordset15
  Dim var_F8 As Recordset15
  Dim var_DC As String
  Dim var_EC As Variant
  Dim var_F0 As Fields15
  Dim var_100 As Recordset15
  Dim var_104 As Recordset15
  loc_12AB626: Call Proc_318_28_F1F928(New)
  loc_12AB631: Set global_72 = var_90
  loc_12AB653: var_98 = "Select Distinct Max(Code) as ModCode,RestCode from PrintMast where SITE_CODE='" & MemVar_1F95078 & "' And ModType='POS' Group By RestCode"
  loc_12AB65C: Me.Connection15.Execute var_98, var_B8, -1
  loc_12AB667: Set var_88 = var_90
  loc_12AB677: ' Referenced from: 12ABBD8
  loc_12AB686: If Not(var_88.EOF) Then
  loc_12AB6A8:   var_90 = var_88.Fields
  loc_12AB6C1:   var_94 = Proc_6_38_E69628(CVar(var_90.Item("RestCode")), "Select Code RestCode,IsNull(Name,'') Department, IsNull(KOTYN,'') KOTYN, IsNull(Order_Booking,'') ORDYN From Depart Where Code='", var_EC, -1)
  loc_12AB6CC:   var_C4 = var_F0 & "Select Distinct Max(Code) as ModCode,RestCode from PrintMast where SITE_CODE='" & MemVar_1F95078 & "' And LogSite_Code='"
  loc_12AB6E3:   unk_492F34.Execute var_C4 & MemVar_1F95078 & "'", var_90, var_90
  loc_12AB6EE:   Set var_8C = var_F0
  loc_12AB720:   If (var_8C.RecordCount > 0) Then
  loc_12AB75C:     If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("Department"))) <> vbNullString) Then
  loc_12AB762:       var_A8 = "KotYN"
  loc_12AB798:       If (Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_A8))) = "Y") Then
  loc_12AB7A1:         Set var_F8 = global_72 
  loc_12AB7B0:         var_F8.AddNew var_A8, var_DC
  loc_12AB7DA:         var_F8.Fields.Item("ModType").Value = "KOT"
  loc_12AB80B:         var_F8.Fields.Item("Mod_Type").Value = "KOT"
  loc_12AB862:         var_F8.Fields.Item("RestCode").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RestCode"))))
  loc_12AB87A:         var_A8 = "Department"
  loc_12AB8A6:         var_DC = "Departname"
  loc_12AB8C2:         var_F8.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_A8))))
  loc_12AB8E2:         var_F8.Update var_A8, var_DC
  loc_12AB8E9:         Set var_F8 = Nothing 
  loc_12AB8F0:       Else
  loc_12AB8F3:         var_A8 = "ORDYN"
  loc_12AB929:         If (Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_A8))) = "Y") Then
  loc_12AB932:           Set var_100 = global_72 
  loc_12AB941:           var_100.AddNew var_A8, var_DC
  loc_12AB96B:           var_100.Fields.Item("ModType").Value = "ORD"
  loc_12AB99C:           var_100.Fields.Item("Mod_Type").Value = "ORD"
  loc_12AB9F3:           var_100.Fields.Item("RestCode").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RestCode"))))
  loc_12ABA0B:           var_A8 = "Department"
  loc_12ABA37:           var_DC = "Departname"
  loc_12ABA53:           var_100.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_A8))))
  loc_12ABA73:           var_100.Update var_A8, var_DC
  loc_12ABA7A:           Set var_100 = Nothing 
  loc_12ABA7E:         End If
  loc_12ABA84:         Set var_104 = global_72 
  loc_12ABA93:         var_104.AddNew var_A8, var_DC
  loc_12ABABD:         var_104.Fields.Item("ModType").Value = "TKN"
  loc_12ABAEE:         var_104.Fields.Item("Mod_Type").Value = "TKN"
  loc_12ABB45:         var_104.Fields.Item("RestCode").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RestCode"))))
  loc_12ABB5D:         var_A8 = "Department"
  loc_12ABB89:         var_DC = "Departname"
  loc_12ABBA5:         var_104.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_A8))))
  loc_12ABBC5:         var_104.Update var_A8, var_DC
  loc_12ABBCC:         Set var_104 = Nothing 
  loc_12ABBD0:       End If
  loc_12ABBD0:     End If
  loc_12ABBD0:   End If
  loc_12ABBD3:   var_88.MoveNext
  loc_12ABBD8:   GoTo loc_12AB677
  loc_12ABBDB: End If
  loc_12ABBE4: CVarUnk
  loc_12ABBE9: VerifyVarObj
  loc_12ABBEF: Set var_90 = Me.DGModType
  loc_12ABBF5: LateIdStAd
  loc_12ABC08: Set var_88 = Nothing
  loc_12ABC10: Set var_8C = Nothing
  loc_12ABC13: Exit Sub
End Sub

Public Sub Proc_318_33_1425A10
  'Data Table: 492F0C
  Dim var_94 As String
  Dim var_98 As String
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim unk_492F34 As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Field20
  Dim var_11C As Recordset15
  Dim var_EC As Variant
  Dim var_DC As String
  Dim var_120 As Recordset15
  Dim var_124 As Recordset15
  Dim var_128 As Recordset15
  Dim var_12C As Recordset15
  Dim var_130 As Recordset15
  loc_1424FAE: Call Proc_318_29_F21500(New)
  loc_1424FB9: Set global_68 = var_90
  loc_1424FDB: var_98 = "Select Distinct Max(Code) as ModCode,'KOT' As ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F95078 & "' And ModType='POS' Group By RestCode"
  loc_1424FE4: Me.Connection15.Execute var_98, var_B8, -1
  loc_1424FEF: Set var_88 = var_90
  loc_1424FFF: ' Referenced from: 14259DC
  loc_142500E: If Not(var_88.EOF) Then
  loc_1425033:   var_A8 = "RestCode"
  loc_1425058:   var_94 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8)), "Select Max(Name) From Depart Where Code='", var_EC, -1, var_F0, var_F4)
  loc_1425063:   var_C4 = 0 & "Select Distinct Max(Code) as ModCode,'KOT' As ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F95078 & "' And LogSite_Code='"
  loc_142507A:   unk_492F34.Execute var_C4 & MemVar_1F95078 & "'", var_108, var_118
  loc_142508A:    = var_F4.Item(var_F0.Fields)
  loc_1425092:    = var_108.Value
  loc_14250CB:   If (Proc_6_38_E69628(var_118) <> vbNullString) Then
  loc_14250D4:     Set var_11C = global_68 
  loc_14250E3:     var_11C.AddNew var_A8, var_DC
  loc_1425133:     var_11C.Fields.Item("ModCode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("modCODE"))))
  loc_142516D:     var_11C.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER (NORMAL PRINTER)"
  loc_14251C4:     var_11C.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_14251DC:     var_A8 = "RestCode"
  loc_1425208:     var_DC = "RestCode"
  loc_1425224:     var_11C.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8))))
  loc_1425244:     var_11C.Update var_A8, var_DC
  loc_142524B:     Set var_11C = Nothing 
  loc_1425255:     Set var_120 = global_68 
  loc_1425264:     var_120.AddNew var_A8, var_DC
  loc_14252B4:     var_120.Fields.Item("ModCode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("modCODE"))))
  loc_14252EE:     var_120.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER (THERMAL PRINTER)"
  loc_1425345:     var_120.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_142535D:     var_A8 = "RestCode"
  loc_1425389:     var_DC = "RestCode"
  loc_14253A5:     var_120.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8))))
  loc_14253C5:     var_120.Update var_A8, var_DC
  loc_14253CC:     Set var_120 = Nothing 
  loc_14253D6:     Set var_124 = global_68 
  loc_14253E5:     var_124.AddNew var_A8, var_DC
  loc_1425435:     var_124.Fields.Item("ModCode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("modCODE"))))
  loc_142546F:     var_124.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)"
  loc_14254C6:     var_124.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_14254DE:     var_A8 = "RestCode"
  loc_142550A:     var_DC = "RestCode"
  loc_1425526:     var_124.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8))))
  loc_1425546:     var_124.Update var_A8, var_DC
  loc_142554D:     Set var_124 = Nothing 
  loc_1425557:     Set var_128 = global_68 
  loc_1425566:     var_128.AddNew var_A8, var_DC
  loc_14255B6:     var_128.Fields.Item("ModCode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("modCODE"))))
  loc_14255F0:     var_128.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)"
  loc_1425647:     var_128.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_142565F:     var_A8 = "RestCode"
  loc_142568B:     var_DC = "RestCode"
  loc_14256A7:     var_128.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8))))
  loc_14256C7:     var_128.Update var_A8, var_DC
  loc_14256CE:     Set var_128 = Nothing 
  loc_14256D8:     Set var_12C = global_68 
  loc_14256E7:     var_12C.AddNew var_A8, var_DC
  loc_1425737:     var_12C.Fields.Item("ModCode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("modCODE"))))
  loc_1425771:     var_12C.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER WINPRINT"
  loc_14257C8:     var_12C.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_14257E0:     var_A8 = "RestCode"
  loc_142580C:     var_DC = "RestCode"
  loc_1425828:     var_12C.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8))))
  loc_1425848:     var_12C.Update var_A8, var_DC
  loc_142584F:     Set var_12C = Nothing 
  loc_1425859:     Set var_130 = global_68 
  loc_1425868:     var_130.AddNew var_A8, var_DC
  loc_14258B8:     var_130.Fields.Item("ModCode").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("modCODE"))))
  loc_14258F2:     var_130.Fields.Item("ModuleDescription").Value = "ADJUSTABLE WINDOWS KOT PRINT"
  loc_1425949:     var_130.Fields.Item("ModType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ModType"))))
  loc_1425961:     var_A8 = "RestCode"
  loc_142598D:     var_DC = "RestCode"
  loc_14259A9:     var_130.Fields.Item(var_DC).Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8))))
  loc_14259C9:     var_130.Update var_A8, var_DC
  loc_14259D0:     Set var_130 = Nothing 
  loc_14259D4:   End If
  loc_14259D7:   var_88.MoveNext
  loc_14259DC:   GoTo loc_1424FFF
  loc_14259DF: End If
  loc_14259E8: CVarUnk
  loc_14259ED: VerifyVarObj
  loc_14259F3: Set var_90 = Me.DgModDesc
  loc_14259F9: LateIdStAd
  loc_1425A0C: Set var_88 = Nothing
  loc_1425A0F: Exit Sub
End Sub

Public Sub Proc_318_34_1240E74
  'Data Table: 492F0C
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  loc_1240928: Set var_8C = Me.FGrid
  loc_124092B: var_9C = 0
  loc_1240934: var_BC = &H1F4
  loc_1240940: LateIdCallSt
  loc_1240948: var_9C = 0
  loc_1240954: var_BC = CVar(CLng(0)) 'Long
  loc_1240959: var_DC = "Module"
  loc_1240962: LateIdCallSt
  loc_124096D: var_9C = CVar(CLng(0)) 'Long
  loc_1240972: var_BC = &H2EE
  loc_124097E: LateIdCallSt
  loc_1240989: var_9C = CVar(CLng(0)) 'Long
  loc_1240994: var_BC = CVar(CInt(1)) 'Integer
  loc_124099B: LateIdCallSt
  loc_12409A3: var_9C = 0
  loc_12409AF: var_BC = CVar(CLng(1)) 'Long
  loc_12409B4: var_DC = "Description"
  loc_12409BD: LateIdCallSt
  loc_12409C8: var_9C = CVar(CLng(1)) 'Long
  loc_12409CD: var_BC = &H13EC
  loc_12409D9: LateIdCallSt
  loc_12409E4: var_9C = CVar(CLng(1)) 'Long
  loc_12409EF: var_BC = CVar(CInt(1)) 'Integer
  loc_12409F6: LateIdCallSt
  loc_12409FE: var_9C = 0
  loc_1240A0A: var_BC = CVar(CLng(2)) 'Long
  loc_1240A0F: var_DC = "ModuleCode"
  loc_1240A18: LateIdCallSt
  loc_1240A23: var_9C = CVar(CLng(2)) 'Long
  loc_1240A28: var_BC = 0
  loc_1240A34: LateIdCallSt
  loc_1240A3F: var_9C = CVar(CLng(2)) 'Long
  loc_1240A4A: var_BC = CVar(CInt(1)) 'Integer
  loc_1240A51: LateIdCallSt
  loc_1240A59: var_9C = 0
  loc_1240A65: var_BC = CVar(CLng(3)) 'Long
  loc_1240A6A: var_DC = "Printer Path"
  loc_1240A73: LateIdCallSt
  loc_1240A7E: var_9C = CVar(CLng(3)) 'Long
  loc_1240A83: var_BC = &HFA0
  loc_1240A8F: LateIdCallSt
  loc_1240A9A: var_9C = CVar(CLng(3)) 'Long
  loc_1240AA5: var_BC = CVar(CInt(1)) 'Integer
  loc_1240AAC: LateIdCallSt
  loc_1240AB4: var_9C = 0
  loc_1240AC0: var_BC = CVar(CLng(4)) 'Long
  loc_1240AC5: var_DC = "Auto Print Y/N"
  loc_1240ACE: LateIdCallSt
  loc_1240AD9: var_9C = CVar(CLng(4)) 'Long
  loc_1240ADE: var_BC = &H352
  loc_1240AEA: LateIdCallSt
  loc_1240AF5: var_9C = CVar(CLng(4)) 'Long
  loc_1240B00: var_BC = CVar(CInt(1)) 'Integer
  loc_1240B07: LateIdCallSt
  loc_1240B0F: var_9C = 0
  loc_1240B1B: var_BC = CVar(CLng(5)) 'Long
  loc_1240B20: var_DC = "Printer Port"
  loc_1240B29: LateIdCallSt
  loc_1240B34: var_9C = CVar(CLng(5)) 'Long
  loc_1240B39: var_BC = 0
  loc_1240B45: LateIdCallSt
  loc_1240B50: var_9C = CVar(CLng(5)) 'Long
  loc_1240B5B: var_BC = CVar(CInt(1)) 'Integer
  loc_1240B62: LateIdCallSt
  loc_1240B6A: var_9C = 0
  loc_1240B76: var_BC = CVar(CLng(6)) 'Long
  loc_1240B7B: var_DC = "Restaurant Name"
  loc_1240B84: LateIdCallSt
  loc_1240B8F: var_9C = CVar(CLng(6)) 'Long
  loc_1240B94: var_BC = &HBB8
  loc_1240BA0: LateIdCallSt
  loc_1240BAB: var_9C = CVar(CLng(6)) 'Long
  loc_1240BB6: var_BC = CVar(CInt(1)) 'Integer
  loc_1240BBD: LateIdCallSt
  loc_1240BC7: Set var_8C = Nothing 
  loc_1240BCF: Set var_F0 = Me.FGrid1
  loc_1240BD2: var_9C = 0
  loc_1240BDB: var_BC = &H1F4
  loc_1240BE7: LateIdCallSt
  loc_1240BEF: var_9C = 0
  loc_1240BFB: var_BC = CVar(CLng(0)) 'Long
  loc_1240C00: var_DC = "Module"
  loc_1240C09: LateIdCallSt
  loc_1240C14: var_9C = CVar(CLng(0)) 'Long
  loc_1240C19: var_BC = &H2EE
  loc_1240C25: LateIdCallSt
  loc_1240C30: var_9C = CVar(CLng(0)) 'Long
  loc_1240C3B: var_BC = CVar(CInt(1)) 'Integer
  loc_1240C42: LateIdCallSt
  loc_1240C4A: var_9C = 0
  loc_1240C56: var_BC = CVar(CLng(1)) 'Long
  loc_1240C5B: var_DC = "Description"
  loc_1240C64: LateIdCallSt
  loc_1240C6F: var_9C = CVar(CLng(1)) 'Long
  loc_1240C74: var_BC = &H13EC
  loc_1240C80: LateIdCallSt
  loc_1240C8B: var_9C = CVar(CLng(1)) 'Long
  loc_1240C96: var_BC = CVar(CInt(1)) 'Integer
  loc_1240C9D: LateIdCallSt
  loc_1240CA5: var_9C = 0
  loc_1240CB1: var_BC = CVar(CLng(2)) 'Long
  loc_1240CB6: var_DC = "ModuleCode"
  loc_1240CBF: LateIdCallSt
  loc_1240CCA: var_9C = CVar(CLng(2)) 'Long
  loc_1240CCF: var_BC = 0
  loc_1240CDB: LateIdCallSt
  loc_1240CE6: var_9C = CVar(CLng(2)) 'Long
  loc_1240CF1: var_BC = CVar(CInt(1)) 'Integer
  loc_1240CF8: LateIdCallSt
  loc_1240D00: var_9C = 0
  loc_1240D0C: var_BC = CVar(CLng(3)) 'Long
  loc_1240D11: var_DC = "Printer Path"
  loc_1240D1A: LateIdCallSt
  loc_1240D25: var_9C = CVar(CLng(3)) 'Long
  loc_1240D2A: var_BC = &HFA0
  loc_1240D36: LateIdCallSt
  loc_1240D41: var_9C = CVar(CLng(3)) 'Long
  loc_1240D4C: var_BC = CVar(CInt(1)) 'Integer
  loc_1240D53: LateIdCallSt
  loc_1240D5B: var_9C = 0
  loc_1240D67: var_BC = CVar(CLng(4)) 'Long
  loc_1240D6C: var_DC = "Auto Split Y/N"
  loc_1240D75: LateIdCallSt
  loc_1240D80: var_9C = CVar(CLng(4)) 'Long
  loc_1240D85: var_BC = &H352
  loc_1240D91: LateIdCallSt
  loc_1240D9C: var_9C = CVar(CLng(4)) 'Long
  loc_1240DA7: var_BC = CVar(CInt(1)) 'Integer
  loc_1240DAE: LateIdCallSt
  loc_1240DB6: var_9C = 0
  loc_1240DC2: var_BC = CVar(CLng(5)) 'Long
  loc_1240DC7: var_DC = "Printer Port"
  loc_1240DD0: LateIdCallSt
  loc_1240DDB: var_9C = CVar(CLng(5)) 'Long
  loc_1240DE0: var_BC = 0
  loc_1240DEC: LateIdCallSt
  loc_1240DF7: var_9C = CVar(CLng(5)) 'Long
  loc_1240E02: var_BC = CVar(CInt(1)) 'Integer
  loc_1240E09: LateIdCallSt
  loc_1240E11: var_9C = 0
  loc_1240E1D: var_BC = CVar(CLng(6)) 'Long
  loc_1240E22: var_DC = "Restaurant Name"
  loc_1240E2B: LateIdCallSt
  loc_1240E36: var_9C = CVar(CLng(6)) 'Long
  loc_1240E3B: var_BC = &HBB8
  loc_1240E47: LateIdCallSt
  loc_1240E52: var_9C = CVar(CLng(6)) 'Long
  loc_1240E5D: var_BC = CVar(CInt(1)) 'Integer
  loc_1240E64: LateIdCallSt
  loc_1240E6E: Set var_F0 = Nothing 
  loc_1240E72: Exit Sub
End Sub

Public Sub Proc_318_35_F0A5E4
  'Data Table: 492F0C
  Dim var_98 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  Dim var_6BC4 As Variant
  loc_F0A4FF: Me.FGrid.FixedRows = 1
  loc_F0A51A: Me.FGrid.Rows = 2
  loc_F0A529: For var_B0 = 0 To 4: var_86 = var_B0 'Byte
  loc_F0A52F:   var_98 = 1
  loc_F0A53D:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_F0A542:   var_E0 = vbNullString
  loc_F0A54C:   Set var_AC = Me.FGrid
  loc_F0A552:   LateIdCallSt
  loc_F0A560: Next var_B0 'Byte
  loc_F0A579: Me.FGrid1.FixedRows = 1
  loc_F0A594: Me.FGrid1.Rows = 2
  loc_F0A5A3: For var_F4 = 0 To 4: var_86 = var_F4 'Byte
  loc_F0A5A9:   var_98 = 1
  loc_F0A5B7:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_F0A5BC:   var_E0 = vbNullString
  loc_F0A5C6:   Set var_AC = Me.FGrid1
  loc_F0A5CC:   LateIdCallSt
  loc_F0A5DA: Next var_F4 'Byte
  loc_F0A5E0: Exit Sub
  loc_F0A5E1: var_6BC4 = CVar() 'Address
End Sub

Public Sub Proc_318_36_EB8044
  'Data Table: 492F0C
  loc_EB7FC0: If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_EB7FD2:   Me.DGModType.Visible = False
  loc_EB7FDA: End If
  loc_EB7FF6: If (CBool(Me.DgModDesc.Visible) = &HFF) Then
  loc_EB8008:   Me.DgModDesc.Visible = False
  loc_EB8010: End If
  loc_EB802B: If (Me.FrmList.Visible = &HFF) Then
  loc_EB803A:   Me.FrmList.Visible = False
  loc_EB8042: End If
  loc_EB8042: Exit Sub
End Sub

Public Sub Proc_318_37_E4197C
  'Data Table: 492F0C
  loc_E41958: Set var_88 = Me.TopCtrl1
  loc_E4195E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E41977: If (CStr() = "Browse") Then
  loc_E4197A:   Exit Sub
  loc_E4197B: End If
  loc_E4197B: Exit Sub
End Sub

Public Sub Proc_318_38_E41AA8
  'Data Table: 492F0C
  loc_E41A84: Set var_88 = Me.TopCtrl1
  loc_E41A8A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E41AA3: If (CStr() = "Browse") Then
  loc_E41AA6:   Exit Sub
  loc_E41AA7: End If
  loc_E41AA7: Exit Sub
End Sub

Public Sub Proc_318_39_14723E8(arg_C) '14723E8
  'Data Table: 492F0C
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_128 As Variant
  Dim var_13C As Variant
  Dim var_B4 As String
  Dim var_140 As Long
  loc_14717D3: var_8E = arg_C
  loc_14717DC: If (var_8E = 0) Then
  loc_14717F2:   var_A8 = CLng(Me.FGrid.Col)
  loc_1471802:   If (var_A8 = CLng(1)) Then
  loc_1471829:     Set var_94 = Me.TxtGrid
  loc_147182F:     Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4)
  loc_1471837:     (Me.RecordCount = 0) = var_B0.Text
  loc_147184F:     If (var_A8 Or (var_B4 = vbNullString)) Then
  loc_1471865:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_147186D:       var_E4 = CVar(CLng(1)) 'Long
  loc_1471872:       var_104 = vbNullString
  loc_147187C:       Set var_B0 = Me.FGrid
  loc_1471882:       LateIdCallSt
  loc_14718A7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14718AF:       var_E4 = CVar(CLng(2)) 'Long
  loc_14718B4:       var_104 = vbNullString
  loc_14718BE:       Set var_B0 = Me.FGrid
  loc_14718C4:       LateIdCallSt
  loc_14718D9:     Else
  loc_1471906:       Set var_94 = Me.TxtGrid
  loc_147190C:       Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_B0, var_104)
  loc_1471914:       var_E4 = var_B0.Text
  loc_147191C:       var_128 = CVar(var_B4) 'String
  loc_147192A:       LateIdCallSt
  loc_147194E:       var_128 = Me.FGrid.Row
  loc_1471967:       var_C4 = "modCODE"
  loc_147197E:       var_B0 = Me.Fields.Item(var_C4)
  loc_147198F:       var_13C = CVar(Proc_6_38_E69628(CVar(var_B0), CVar(CLng(2)), CVar(CLng(var_128)), Me.FGrid, var_128, var_C4)) 'String
  loc_1471997:       Set var_12C = Me.FGrid
  loc_147199D:       LateIdCallSt
  loc_14719B7:     End If
  loc_14719BA:   Else
  loc_14719C1:     If (var_A8 = CLng(0)) Then
  loc_14719E8:       Set var_94 = Me.TxtGrid
  loc_14719EE:       Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, (Me.RecordCount = 0), var_12C, var_13C)
  loc_14719F6:       var_B0 = var_B0.Text
  loc_1471A0E:       If (var_104 Or (var_B4 = vbNullString)) Then
  loc_1471A24:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1471A2C:         var_E4 = CVar(CLng(0)) 'Long
  loc_1471A31:         var_104 = vbNullString
  loc_1471A3B:         Set var_B0 = Me.FGrid
  loc_1471A41:         LateIdCallSt
  loc_1471A66:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1471A6E:         var_E4 = CVar(CLng(6)) 'Long
  loc_1471A73:         var_104 = vbNullString
  loc_1471A7D:         Set var_B0 = Me.FGrid
  loc_1471A83:         LateIdCallSt
  loc_1471AA8:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1471AB0:         var_E4 = CVar(CLng(5)) 'Long
  loc_1471AB5:         var_104 = vbNullString
  loc_1471ABF:         Set var_B0 = Me.FGrid
  loc_1471AC5:         LateIdCallSt
  loc_1471ADA:       Else
  loc_1471B07:         Set var_94 = Me.TxtGrid
  loc_1471B0D:         Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, CVar(CLng(0)), CVar(CLng(Me.FGrid.Row)), var_B0, var_104)
  loc_1471B15:         var_E4 = var_B0.Text
  loc_1471B1D:         var_128 = CVar(var_B4) 'String
  loc_1471B2B:         LateIdCallSt
  loc_1471B4F:         var_128 = Me.FGrid.Row
  loc_1471B68:         var_C4 = "DEPARTNAME"
  loc_1471B90:         var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_C4)), CVar(CLng(6)), CVar(CLng(var_128)), Me.FGrid, var_128, var_C4)) 'String
  loc_1471B9E:         LateIdCallSt
  loc_1471BF2:         var_B0 = Me.Fields.Item("RestCode")
  loc_1471C03:         var_13C = CVar(Proc_6_38_E69628(CVar(var_B0), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_1471C0B:         Set var_12C = Me.FGrid
  loc_1471C11:         LateIdCallSt
  loc_1471C2B:       End If
  loc_1471C2E:     Else
  loc_1471C35:       If (var_A8 = CLng(3)) Then
  loc_1471C65:         Set var_94 = Me.TxtGrid
  loc_1471C6B:         Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_1471C73:         var_13C = var_B0.Text
  loc_1471C7B:         var_128 = CVar(var_B4) 'String
  loc_1471C83:         Set var_12C = Me.FGrid
  loc_1471C89:         LateIdCallSt
  loc_1471CA6:       Else
  loc_1471CAD:         If (var_A8 = CLng(4)) Then
  loc_1471CDD:           Set var_94 = Me.TxtGrid
  loc_1471CE3:           Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_1471CEB:           var_128 = var_B0.Text
  loc_1471CF3:           var_128 = CVar(var_B4) 'String
  loc_1471CFB:           Set var_12C = Me.FGrid
  loc_1471D01:           LateIdCallSt
  loc_1471D34:           var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1471D39:           var_E4 = 1
  loc_1471D57:           var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1471D70:           If (var_B4 <> vbNullString) Then
  loc_1471D88:             var_128 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1471D90:             Set var_B0 = Me.FGrid
  loc_1471DAC:           End If
  loc_1471DAC:         End If
  loc_1471DAC:       End If
  loc_1471DAC:     End If
  loc_1471DAC:   End If
  loc_1471DBF:   Set var_94 = Me.TxtGrid
  loc_1471DC5:   Call 0.Method_Proc_318_39_14723E80 (0, var_B0, 0, &HFF, FGrid.DispID_10000, var_128, var_E4)
  loc_1471DCD:   var_B0.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_1471DDC: Else
  loc_1471DE2:   If (var_8E = 1) Then
  loc_1471DF8:     var_140 = CLng(Me.FGrid1.Col)
  loc_1471E08:     If (var_140 = CLng(1)) Then
  loc_1471E2F:       Set var_94 = Me.TxtGrid
  loc_1471E35:       Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, (Me.RecordCount = 0), var_140, var_12C)
  loc_1471E3D:       var_128 = var_B0.Text
  loc_1471E55:       If (var_B0 Or (var_B4 = vbNullString)) Then
  loc_1471E6B:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1471E73:         var_E4 = CVar(CLng(1)) 'Long
  loc_1471E78:         var_104 = vbNullString
  loc_1471E82:         Set var_B0 = Me.FGrid1
  loc_1471E88:         LateIdCallSt
  loc_1471EAD:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1471EB5:         var_E4 = CVar(CLng(2)) 'Long
  loc_1471EBA:         var_104 = vbNullString
  loc_1471EC4:         Set var_B0 = Me.FGrid1
  loc_1471ECA:         LateIdCallSt
  loc_1471EDF:       Else
  loc_1471F0C:         Set var_94 = Me.TxtGrid
  loc_1471F12:         Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, CVar(CLng(1)), CVar(CLng(Me.FGrid1.Row)), var_B0, var_104)
  loc_1471F1A:         var_E4 = var_B0.Text
  loc_1471F22:         var_128 = CVar(var_B4) 'String
  loc_1471F30:         LateIdCallSt
  loc_1471F54:         var_128 = Me.FGrid1.Row
  loc_1471F6D:         var_C4 = "modCODE"
  loc_1471F84:         var_B0 = Me.Fields.Item(var_C4)
  loc_1471F95:         var_13C = CVar(Proc_6_38_E69628(CVar(var_B0), CVar(CLng(2)), CVar(CLng(var_128)), Me.FGrid1, var_128, var_C4)) 'String
  loc_1471F9D:         Set var_12C = Me.FGrid1
  loc_1471FA3:         LateIdCallSt
  loc_1471FBD:       End If
  loc_1471FC0:     Else
  loc_1471FC7:       If (var_140 = CLng(0)) Then
  loc_1471FEE:         Set var_94 = Me.TxtGrid
  loc_1471FF4:         Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, (Me.RecordCount = 0), var_12C, var_13C)
  loc_1471FFC:         var_B0 = var_B0.Text
  loc_1472014:         If (var_104 Or (var_B4 = vbNullString)) Then
  loc_147202A:           var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1472032:           var_E4 = CVar(CLng(0)) 'Long
  loc_1472037:           var_104 = vbNullString
  loc_1472041:           Set var_B0 = Me.FGrid1
  loc_1472047:           LateIdCallSt
  loc_147206C:           var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1472074:           var_E4 = CVar(CLng(6)) 'Long
  loc_1472079:           var_104 = vbNullString
  loc_1472083:           Set var_B0 = Me.FGrid1
  loc_1472089:           LateIdCallSt
  loc_14720AE:           var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14720B6:           var_E4 = CVar(CLng(5)) 'Long
  loc_14720BB:           var_104 = vbNullString
  loc_14720C5:           Set var_B0 = Me.FGrid1
  loc_14720CB:           LateIdCallSt
  loc_14720E0:         Else
  loc_147210D:           Set var_94 = Me.TxtGrid
  loc_1472113:           Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, CVar(CLng(0)), CVar(CLng(Me.FGrid1.Row)), var_B0, var_104)
  loc_147211B:           var_E4 = var_B0.Text
  loc_1472123:           var_128 = CVar(var_B4) 'String
  loc_1472131:           LateIdCallSt
  loc_1472155:           var_128 = Me.FGrid1.Row
  loc_147216E:           var_C4 = "DEPARTNAME"
  loc_1472196:           var_13C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_C4)), CVar(CLng(6)), CVar(CLng(var_128)), Me.FGrid1, var_128, var_C4)) 'String
  loc_14721A4:           LateIdCallSt
  loc_14721F8:           var_B0 = Me.Fields.Item("RestCode")
  loc_1472209:           var_13C = CVar(Proc_6_38_E69628(CVar(var_B0), CVar(CLng(5)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1, var_13C)) 'String
  loc_1472211:           Set var_12C = Me.FGrid1
  loc_1472217:           LateIdCallSt
  loc_1472231:         End If
  loc_1472234:       Else
  loc_147223B:         If (var_140 = CLng(3)) Then
  loc_147226B:           Set var_94 = Me.TxtGrid
  loc_1472271:           Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, CVar(CLng(3)), CVar(CLng(Me.FGrid1.Row)), var_12C)
  loc_1472279:           var_13C = var_B0.Text
  loc_1472281:           var_128 = CVar(var_B4) 'String
  loc_1472289:           Set var_12C = Me.FGrid1
  loc_147228F:           LateIdCallSt
  loc_14722AC:         Else
  loc_14722B3:           If (var_140 = CLng(4)) Then
  loc_14722E3:             Set var_94 = Me.TxtGrid
  loc_14722E9:             Call 0.Method_Proc_318_39_14723E80 (arg_C, var_B0, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)), var_12C)
  loc_14722F1:             var_128 = var_B0.Text
  loc_14722F9:             var_128 = CVar(var_B4) 'String
  loc_1472301:             Set var_12C = Me.FGrid1
  loc_1472307:             LateIdCallSt
  loc_147233A:             var_C4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_147233F:             var_E4 = 1
  loc_1472376:             If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_147238E:               var_128 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_1472396:               Set var_B0 = Me.FGrid1
  loc_14723B2:             End If
  loc_14723B2:           End If
  loc_14723B2:         End If
  loc_14723B2:       End If
  loc_14723B2:     End If
  loc_14723C5:     Set var_94 = Me.TxtGrid
  loc_14723CB:     Call 0.Method_Proc_318_39_14723E80 (1, var_B0, 0, &HFF, FGrid1.DispID_10000, var_128, var_E4)
  loc_14723D3:     var_B0.MaxLength = CVar(CLng(Me.FGrid1.Row))
  loc_14723DF:   End If
  loc_14723DF: End If
  loc_14723DF: Proc_318_39_14723E8 = var_12C
End Sub
