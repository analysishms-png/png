VERSION 5.00
Begin VB.Form FaRepView
  Caption = "Form1"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaRepView.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 60
  ClientWidth = 9135
  ClientHeight = 6105
  Begin BtnEnh Command1
    Left = 8220
    Top = 0
    Width = 375
    Height = 360
    TabIndex = 5
  End
  Begin CommandButton Command2
    Caption = "4"
    Index = 2
    BackColor = &H8000000A&
    Left = 14370
    Top = 900
    Width = 390
    Height = 390
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "Webdings"
      Size = 12
      Charset = 2
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Command2
    Caption = ":"
    Index = 3
    BackColor = &H8000000A&
    Left = 14730
    Top = 870
    Width = 390
    Height = 390
    Visible = 0   'False
    TabIndex = 2
    BeginProperty Font
      Name = "Webdings"
      Size = 12
      Charset = 2
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Command2
    Caption = "9"
    Index = 0
    BackColor = &H8000000A&
    Left = 13215
    Top = 1020
    Width = 390
    Height = 390
    Visible = 0   'False
    TabIndex = 1
    BeginProperty Font
      Name = "Webdings"
      Size = 12
      Charset = 2
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Command2
    Caption = "3"
    Index = 1
    BackColor = &H8000000A&
    Left = 13545
    Top = 960
    Width = 390
    Height = 390
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "Webdings"
      Size = 12
      Charset = 2
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CRViewer CRViewer1
    Left = 0
    Top = -15
    Width = 11955
    Height = 6870
    TabIndex = 4
  End
  Begin CommonDialog cdialogrepview
  End
End

Attribute VB_Name = "FaRepView"


Private Sub Command1_UnknownEvent_9 'E17218
  'Data Table: 420810
  loc_E1720D: Me.Global.Unload Me
  loc_E17215: Exit Sub
End Sub

Private Sub Command2_Click(Index As Integer) 'EBA760
  'Data Table: 420810
  Dim var_86 As Integer
  loc_EBA6BC: On Error Resume Next
  loc_EBA6C4: var_86 = Index
  loc_EBA6CF: If (var_86 = 0) Then
  loc_EBA6D8:   Set var_8C = Me.CRViewer1
  loc_EBA6DE:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_0(var_86)
  loc_EBA6EC: Else
  loc_EBA6F4:   If (var_86 = 1) Then
  loc_EBA6FD:     Set var_8C = Me.CRViewer1
  loc_EBA703:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_EBA711:   Else
  loc_EBA719:     If (var_86 = 2) Then
  loc_EBA722:       Set var_8C = Me.CRViewer1
  loc_EBA728:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_EBA736:     Else
  loc_EBA73E:       If (var_86 = 3) Then
  loc_EBA747:         Set var_8C = Me.CRViewer1
  loc_EBA74D:         Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_EBA758:       End If
  loc_EBA758:     End If
  loc_EBA758:   End If
  loc_EBA758: End If
  loc_EBA75C: Exit Sub
  loc_EBA75D: DOC
End Sub

Private Sub Form_Load() 'E83564
  'Data Table: 420810
  loc_E834FB: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_E83507: Call 0.Method_arg_74 (CDbl(0))
  loc_E83513: Call 0.Method_arg_7C (CDbl(0))
  loc_E83520: Call 0.Method_Me4 (CDbl(11900))
  loc_E8352D: Call 0.Method_MeC (CDbl(7935))
  loc_E83540: Call 0.Method_arg_DC (var_88)
  loc_E83548: Call 0.Method_arg_24 (&HA)
  loc_E8355B: Call 0.Method_arg_2B0 (var_98)
  loc_E83560: Exit Sub
End Sub

Private Sub Form_Resize() 'E8E3D8
  'Data Table: 420810
  loc_E8E368: Set var_A8 = Me.CRViewer1
  loc_E8E36E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_E8E382: Set var_A8 = Me.CRViewer1
  loc_E8E388: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(0)))
  loc_E8E394: Call 0.Method_arg_108 (var_AC)
  loc_E8E3A5: Set var_A8 = Me.CRViewer1
  loc_E8E3AB: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006(CVar(var_AC))
  loc_E8E3B7: Call 0.Method_arg_100 (var_AC)
  loc_E8E3C8: Set var_A8 = Me.CRViewer1
  loc_E8E3CE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010005(CVar(var_AC))
  loc_E8E3D6: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EFFCD8
  'Data Table: 420810
  Dim var_86 As Integer
  Dim var_8C As Variant
  loc_EFFBF3: var_86 = KeyCode
  loc_EFFC00: If (var_86 = CInt(&H24)) Then
  loc_EFFC07:   Set var_8C = Me.Command1
  loc_EFFC0D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001(var_86)
  loc_EFFC1D:   Call Command2_Click(0)
  loc_EFFC25: Else
  loc_EFFC2F:   If (var_86 = CInt(&H21)) Then
  loc_EFFC36:     Set var_8C = Me.Command1
  loc_EFFC3C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_EFFC4C:     Call Command2_Click(1)
  loc_EFFC54:   Else
  loc_EFFC5E:     If (var_86 = CInt(&H22)) Then
  loc_EFFC65:       Set var_8C = Me.Command1
  loc_EFFC6B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_EFFC7B:       Call Command2_Click(2)
  loc_EFFC83:     Else
  loc_EFFC8D:       If (var_86 = CInt(&H23)) Then
  loc_EFFC94:         Set var_8C = Me.Command1
  loc_EFFC9A:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_EFFCAA:         Call Command2_Click(3)
  loc_EFFCB2:       Else
  loc_EFFCBC:         If (var_86 = CInt(&H1B)) Then
  loc_EFFCCC:           Me.Global.Unload Me
  loc_EFFCD4:         End If
  loc_EFFCD4:       End If
  loc_EFFCD4:     End If
  loc_EFFCD4:   End If
  loc_EFFCD4: End If
  loc_EFFCD4: Exit Sub
  loc_EFFCD5: StAryRecCopy
End Sub

Private Sub CRViewer1_UnknownEvent_10 'E148F0
  'Data Table: 420810
  Dim var_94 As Integer
  loc_E148D8: var_94 = 0
  loc_E148E6: Call global_52.PrinterSetup
  loc_E148EC: Exit Sub
  loc_E148ED: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_1D 'E1B108
  'Data Table: 420810
  loc_E1B0F4: Set var_88 = Me.Command1
  loc_E1B0FA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001()
  loc_E1B105: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_21 'FDBE9C
  'Data Table: 420810
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim var_BC As String
  Dim var_D0 As Variant
  loc_FDBCE7: Me.cdialogrepview.CancelError = True
  loc_FDBCEF: On Error Goto loc_FDBE97
  loc_FDBD07: var_BC = "CSV (Comma delimited)(*.csv)|*.csv|" & "Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Word Document(*.doc)|*.doc|"
  loc_FDBD23: Me.cdialogrepview.Filter = CVar(var_BC & "Adobe Acrobat(*.pdf)|*.pdf|" & "Other Formats(*.*)|*.*")
  loc_FDBD49: Me.cdialogrepview.DialogTitle = "Select File Name"
  loc_FDBD5C: var_D0 = CVar(RepTitle) 'String
  loc_FDBD64: Set var_A8 = Me.cdialogrepview
  loc_FDBD85: Me.cdialogrepview.FilterIndex = 2
  loc_FDBDAC: Me.cdialogrepview.FileName = Me.cdialogrepview._Action
  loc_FDBDC5: If (CStr(cdialogrepview.DispID_1) <> vbNullString) Then
  loc_FDBDCE:   var_D0 = global_52.ExportOptions
  loc_FDBDE1:   Set var_D4 = var_D0 
  loc_FDBDED:   Call 0.Method_arg_2C (1, var_D0)
  loc_FDBDF9:   Set var_A8 = 0(var_D8)
  loc_FDBE0D:   Call Proc_204_11_EB2A9C(CByte(CInt(global_52.cdialogrepview.FilterIndex)))
  loc_FDBE1A:   Call 0.Method_arg_24 (CLng(var_D8))
  loc_FDBE2F:   Me.cdialogrepview.FileName = 
  loc_FDBE3D:   Call 0.Method_arg_3C (CStr())
  loc_FDBE4D:   Set var_D4 = Nothing 
  loc_FDBE6C:   If (CInt(Me.cdialogrepview.FilterIndex) = 6) Then
  loc_FDBE6F:     var_94 = True
  loc_FDBE7B:     Call global_52.Export
  loc_FDBE84:   Else
  loc_FDBE84:     var_94 = False
  loc_FDBE91:     Call global_52.Export
  loc_FDBE97:   End If
  loc_FDBE97:   ' Referenced from: FDBCEF
  loc_FDBE97: End If
  loc_FDBE97: Exit Sub
  loc_FDBE98: Exit Sub
  loc_FDBE99: var_67DB = var_94 'Address Function
End Sub

Public Property Let RepTitle(vNewValue) 'E0E0DC
  'Data Table: 420810
  loc_E0E0D4: global_68 = vNewValue
  loc_E0E0D8: Exit Sub
End Sub

Public Property Get RepTitle() 'E0CFB4
  'Data Table: 420810
  loc_E0CFA8: var_88 = global_68
  loc_E0CFAB: RepTitle = 
End Sub

Public Property Let Rep_Set(mREPORT) 'E5C33C
  'Data Table: 420810
  loc_E5C304: SetVarVar
  loc_E5C30C: CUnkVar
  loc_E5C30E: CVarUnk
  loc_E5C317: Set var_B8 = Me.CRViewer1
  loc_E5C31D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_FA(mREPORT)
  loc_E5C329: Set var_B8 = Me.CRViewer1
  loc_E5C32F: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_0(global_52)
  loc_E5C33A: Exit Sub
End Sub

Public Sub Proc_204_11_EB2A9C(arg_C) 'EB2A9C
  'Data Table: 420810
  loc_EB2A05: If (CInt(arg_C) = 1) Then
  loc_EB2A0F:   var_86 = CByte(5) 'Byte
  loc_EB2A16: Else
  loc_EB2A1F:   If (CInt(arg_C) = 2) Then
  loc_EB2A29:     var_86 = CByte(&H1D) 'Byte
  loc_EB2A30:   Else
  loc_EB2A39:     If (CInt(arg_C) = 3) Then
  loc_EB2A43:       var_86 = CByte(8) 'Byte
  loc_EB2A4A:     Else
  loc_EB2A53:       If (CInt(arg_C) = 4) Then
  loc_EB2A5D:         var_86 = CByte(&HE) 'Byte
  loc_EB2A64:       Else
  loc_EB2A6D:         If (CInt(arg_C) = 5) Then
  loc_EB2A77:           var_86 = CByte(&H1F) 'Byte
  loc_EB2A7E:         Else
  loc_EB2A87:           If (CInt(arg_C) = 6) Then
  loc_EB2A91:             var_86 = CByte(0) 'Byte
  loc_EB2A95:           End If
  loc_EB2A95:         End If
  loc_EB2A95:       End If
  loc_EB2A95:     End If
  loc_EB2A95:   End If
  loc_EB2A95: End If
  loc_EB2A95: Proc_204_11_EB2A9C = 
End Sub

Public Sub Proc_204_12_F4B1F8
  'Data Table: 420810
  Dim var_B4 As CommonDialog
  Dim var_B0 As Variant
  Dim var_67B0 As Double
  loc_F4B0F8: Me.cdialogrepview.Filter = CVar("Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Microsoft Mail(*.MAPI)|*.MAPI|")
  loc_F4B116: Me.cdialogrepview.DialogTitle = "Select File Name"
  loc_F4B13D: Me.cdialogrepview.FileName = Me.cdialogrepview._Action
  loc_F4B156: If (CStr() <> vbNullString) Then
  loc_F4B172:   Set var_C8 = global_52.ExportOptions 
  loc_F4B17E:   Call 0.Method_arg_2C (1)
  loc_F4B18A:   Set var_B4 = (var_CC)
  loc_F4B19E:   Call Proc_204_11_EB2A9C(CByte(CInt(global_52.cdialogrepview.FilterIndex)))
  loc_F4B1AB:   Call 0.Method_arg_24 (CLng(var_CC))
  loc_F4B1C0:   Me.cdialogrepview.FileName = 
  loc_F4B1CE:   Call 0.Method_arg_3C (CStr())
  loc_F4B1DE:   Set var_C8 = Nothing 
  loc_F4B1E2:   var_B0 = False
  loc_F4B1EF:   Call global_52.Export
  loc_F4B1F5: End If
  loc_F4B1F5: Exit Sub
  loc_F4B1F6: var_67B0 = var_B0
End Sub
