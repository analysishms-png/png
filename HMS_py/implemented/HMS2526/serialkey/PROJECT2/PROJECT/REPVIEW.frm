VERSION 5.00
Begin VB.Form REPVIEW
  Caption = "Form1"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "REPVIEW.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 405
  ClientWidth = 11880
  ClientHeight = 7365
  LockControls = -1  'True
  Begin BtnEnh CmdExit
    Left = 7995
    Top = 30
    Width = 375
    Height = 345
    TabIndex = 2
  End
  Begin CommandButton cmdExport
    Caption = "&Export"
    Left = 12570
    Top = 420
    Width = 1200
    Height = 450
    Visible = 0   'False
    TabIndex = 1
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CRViewer CRViewer1
    Left = -30
    Top = 30
    Width = 11745
    Height = 7290
    TabIndex = 0
  End
  Begin CommonDialog cdialogrepview
  End
End

Attribute VB_Name = "REPVIEW"


Private Sub Form_Load() 'E7883C
  'Data Table: 420D18
  loc_E787E3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_E787EF: Call 0.Method_arg_7C (CDbl(0))
  loc_E787FB: Call 0.Method_arg_74 (CDbl(0))
  loc_E78808: Call 0.Method_MeC (CDbl(7590))
  loc_E78815: Call 0.Method_Me4 (CDbl(11940))
  loc_E78823: Call 0.Method_arg_160 (var_88)
  loc_E78831: Call 0.Method_arg_164 (var_88)
  loc_E78839: Exit Sub
End Sub

Private Sub Form_Resize() 'E8F0E8
  'Data Table: 420D18
  loc_E8F078: Set var_A8 = Me.CRViewer1
  loc_E8F07E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(0)))
  loc_E8F092: Set var_A8 = Me.CRViewer1
  loc_E8F098: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(0)))
  loc_E8F0A4: Call 0.Method_arg_108 (var_AC)
  loc_E8F0B5: Set var_A8 = Me.CRViewer1
  loc_E8F0BB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(CVar(var_AC))
  loc_E8F0C7: Call 0.Method_arg_100 (var_AC)
  loc_E8F0D8: Set var_A8 = Me.CRViewer1
  loc_E8F0DE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(CVar(var_AC))
  loc_E8F0E6: Exit Sub
End Sub

Private Sub Form_Terminate() 'E7D884
  'Data Table: 420D18
  loc_E7D828: On Error Resume Next
  loc_E7D833: var_88 = ParentFormRef
  loc_E7D853: If (Form.Name = "FrmBdayLookup") Then
  loc_E7D86F:   var_88 = ParentFormRef
  loc_E7D877:   Form.Show 1, CVar(MemVar_1F95248)
  loc_E7D87F: End If
  loc_E7D883: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_10 'E15040
  'Data Table: 420D18
  Dim var_94 As Integer
  loc_E15028: var_94 = 0
  loc_E15036: Call global_52.PrinterSetup
  loc_E1503C: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_21 'FC87E8
  'Data Table: 420D18
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim var_B8 As String
  Dim var_C8 As Variant
  loc_FC8647: Me.cdialogrepview.CancelError = True
  loc_FC864F: On Error Goto loc_FC87E6
  loc_FC8667: var_C8 = CVar("CSV (Comma delimited)(*.csv)|*.csv|" & "Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Word Document(*.doc)|*.doc") 'String
  loc_FC8675: Me.cdialogrepview.Filter = var_C8
  loc_FC86AC: var_B8 = Replace(RepTitle, "/", "_", 1, -1, 0)
  loc_FC86AF: RepTitle = "CSV (Comma delimited)(*.csv)|*.csv|" & "Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|"
  loc_FC86CB: Me.cdialogrepview.DialogTitle = "Select File Name"
  loc_FC86DE: var_C8 = CVar(RepTitle) 'String
  loc_FC86E6: Set var_A8 = Me.cdialogrepview
  loc_FC8707: Me.cdialogrepview.FilterIndex = 2
  loc_FC872E: Me.cdialogrepview.FileName = Me.cdialogrepview._Action
  loc_FC8747: If (CStr(cdialogrepview.DispID_1) <> vbNullString) Then
  loc_FC8750:   var_C8 = global_52.ExportOptions
  loc_FC8763:   Set var_CC = var_C8 
  loc_FC876F:   Call 0.Method_arg_2C (1, var_C8)
  loc_FC877B:   Set var_A8 = 0(var_D0)
  loc_FC878F:   Call Proc_2_12_E7E07C(CByte(CInt(global_52.cdialogrepview.FilterIndex)))
  loc_FC879C:   Call 0.Method_arg_24 (CLng(var_D0))
  loc_FC87B1:   Me.cdialogrepview.FileName = 
  loc_FC87BF:   Call 0.Method_arg_3C (CStr())
  loc_FC87CF:   Set var_CC = Nothing 
  loc_FC87D3:   var_94 = False
  loc_FC87E0:   Call global_52.Export
  loc_FC87E6:   ' Referenced from: FC864F
  loc_FC87E6: End If
  loc_FC87E6: Exit Sub
  loc_FC87E7: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1A528
  'Data Table: 420D18
  loc_E1A51D: Me.Global.Unload Me
  loc_E1A525: Exit Sub
End Sub

Private Sub cmdExport_Click() 'F3DCD8
  'Data Table: 420D18
  Dim var_B4 As CommonDialog
  Dim var_B0 As Variant
  loc_F3DBD8: Me.cdialogrepview.Filter = CVar("Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Microsoft Mail(*.MAPI)|*.MAPI|")
  loc_F3DBF6: Me.cdialogrepview.DialogTitle = "Select File Name"
  loc_F3DC1D: Me.cdialogrepview.FileName = Me.cdialogrepview._Action
  loc_F3DC36: If (CStr() <> vbNullString) Then
  loc_F3DC52:   Set var_C8 = global_52.ExportOptions 
  loc_F3DC5E:   Call 0.Method_arg_2C (1)
  loc_F3DC6A:   Set var_B4 = (var_CC)
  loc_F3DC7E:   Call Proc_2_12_E7E07C(CByte(CInt(global_52.cdialogrepview.FilterIndex)))
  loc_F3DC8B:   Call 0.Method_arg_24 (CLng(var_CC))
  loc_F3DCA0:   Me.cdialogrepview.FileName = 
  loc_F3DCAE:   Call 0.Method_arg_3C (CStr())
  loc_F3DCBE:   Set var_C8 = Nothing 
  loc_F3DCC2:   var_B0 = False
  loc_F3DCCF:   Call global_52.Export
  loc_F3DCD5: End If
  loc_F3DCD5: Exit Sub
End Sub

Public Property Let ParentFormRef(vNewValue) 'E153E4
  'Data Table: 420D18
  loc_E153DD: Set global_68 = vNewValue
  loc_E153E1: Exit Sub
End Sub

Public Property Get ParentFormRef() 'E1527C
  'Data Table: 420D18
  loc_E15270: Set var_88 = global_68 
  loc_E15274: ParentFormRef = 
End Sub

Public Property Let RepTitle(vNewValue) 'E15234
  'Data Table: 420D18
  loc_E1522C: global_72 = vNewValue
  loc_E15230: Exit Sub
End Sub

Public Property Get RepTitle() 'E151EC
  'Data Table: 420D18
  loc_E151E0: var_88 = global_72
  loc_E151E3: RepTitle = 
  loc_E151E9: ArrayRebase1Var
End Sub

Public Property Let Rep_Set(mREPORT) 'E5C24C
  'Data Table: 420D18
  loc_E5C214: SetVarVar
  loc_E5C21C: CUnkVar
  loc_E5C21E: CVarUnk
  loc_E5C227: Set var_B8 = Me.CRViewer1
  loc_E5C22D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FA(mREPORT)
  loc_E5C239: Set var_B8 = Me.CRViewer1
  loc_E5C23F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(global_52)
  loc_E5C24A: Exit Sub
End Sub

Public Sub Proc_2_12_E7E07C(arg_C) 'E7E07C
  'Data Table: 420D18
  loc_E7E019: If (CInt(arg_C) = 1) Then
  loc_E7E023:   var_86 = CByte(5) 'Byte
  loc_E7E02A: Else
  loc_E7E033:   If (CInt(arg_C) = 2) Then
  loc_E7E03D:     var_86 = CByte(&H1D) 'Byte
  loc_E7E044:   Else
  loc_E7E04D:     If (CInt(arg_C) = 3) Then
  loc_E7E057:       var_86 = CByte(8) 'Byte
  loc_E7E05E:     Else
  loc_E7E067:       If (CInt(arg_C) = 4) Then
  loc_E7E071:         var_86 = CByte(&HE) 'Byte
  loc_E7E075:       End If
  loc_E7E075:     End If
  loc_E7E075:   End If
  loc_E7E075: End If
  loc_E7E075: Proc_2_12_E7E07C = 
End Sub
