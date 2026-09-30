VERSION 5.00
Begin VB.Form Godown
  Caption = "Location Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 10755
  ClientHeight = 4770
  LockControls = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin DataGrid DGMaster
    Left = 45
    Top = 1215
    Width = 7230
    Height = 3375
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 1
    Left = 1950
    Top = 750
    Width = 1560
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 6
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
  Begin TextBox Txt
    Index = 0
    Left = 1950
    Top = 500
    Width = 3690
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin DataGrid DGHelp
    Left = 6510
    Top = 915
    Width = 3120
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10755
    Height = 375
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 8445
    Top = 420
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 7
  End
  Begin Label Label1
    Caption = "Short Name"
    Index = 1
    ForeColor = &H0&
    Left = 495
    Top = 750
    Width = 1020
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Location Name"
    Index = 0
    ForeColor = &H0&
    Left = 495
    Top = 495
    Width = 1260
    Height = 240
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "Godown"


Private Sub TopCtrl1_UnknownEvent_11 'E7F42C
  'Data Table: 43AF60
  Dim var_94 As TextBox
  loc_E7F3C8: On Error Goto loc_E7F424
  loc_E7F3EE: Call Proc_87_30_E906A4(Proc_5_1_100EC1C("ADD", Me))
  loc_E7F3F9: Call Proc_87_28_EB4D5C(global_60)
  loc_E7F409: Set var_8C = Me.Txt
  loc_E7F40F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E7F417: var_94.SetFocus
  loc_E7F423: Exit Sub
  loc_E7F424: ' Referenced from: E7F3C8
  loc_E7F424: Proc_6_60_E63754(var_94)
  loc_E7F429: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'EFAA7C
  'Data Table: 43AF60
  Dim var_94 As TextBox
  loc_EFA9A0: On Error Goto loc_EFAA73
  loc_EFA9B1: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_EFA9B4:   Exit Sub
  loc_EFA9B5: End If
  loc_EFA9D8: Call Proc_87_30_E906A4(Proc_5_1_100EC1C("EDIT", Me))
  loc_EFA9F1: Set var_8C = Me.Txt
  loc_EFA9F7: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_94)
  loc_EFAA0A: global_64 = var_94.Text
  loc_EFAA26: Set var_8C = Me.Txt
  loc_EFAA2C: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_94)
  loc_EFAA3F: global_52 = var_94.Text
  loc_EFAA58: Set var_8C = Me.Txt
  loc_EFAA5E: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_94)
  loc_EFAA66: var_94.SetFocus
  loc_EFAA72: Exit Sub
  loc_EFAA73: ' Referenced from: EFA9A0
  loc_EFAA73: Proc_6_60_E63754(global_60)
  loc_EFAA78: Exit Sub
  loc_EFAA79:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '11D3934
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim unk_43AF71 As Connection15
  Dim var_118 As Variant
  Dim var_C8 As Variant
  loc_11D34F0: On Error Goto loc_11D38E6
  loc_11D3501: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_11D3504:   Exit Sub
  loc_11D3505: End If
  loc_11D3537: var_D4 = "Stock"
  loc_11D357F: If (Proc_6_108_101061C(MemVar_1F95044, "Stock", "GodownCode", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_11D3582:   Exit Sub
  loc_11D3583: End If
  loc_11D35B5: var_D4 = "Stock"
  loc_11D35FD: If (Proc_6_108_101061C(MemVar_1F95044, "Stock", "DepartCode", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_11D3600:   Exit Sub
  loc_11D3601: End If
  loc_11D367B: If (Proc_6_108_101061C(MemVar_1F95044, "Indent", "Department", CStr(Me.Fields.Item("SearchCode").Value), 0, "Requisition") = 0) Then
  loc_11D367E:   Exit Sub
  loc_11D367F: End If
  loc_11D36B6: If (MsgBox("Are You Sure To Delete This ? ", &H14, "Delete Entry !", var_118, var_138) = 6) Then
  loc_11D36C2:   unk_43AF71.BeginTrans var_D0
  loc_11D36D8:   var_94 = Me.Bookmark 'Variant
  loc_11D3717:   var_118 = "Delete From GodownMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11D3744:   var_9C = Me.Fields
  loc_11D3754:   var_C8 = var_9C.Item("SearchCode").Value
  loc_11D375E:   var_164 = 0
  loc_11D3771:   var_15C = 0
  loc_11D377C:   var_158 = 0
  loc_11D378F:   var_150 = 0
  loc_11D379A:   var_14C = 0
  loc_11D37AD:   var_144 = 0
  loc_11D37ED:   var_B4 = "GodownMast"
  loc_11D37F6:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Code", &HC8, CStr(var_C8), 0, 0, 0)
  loc_11D3834:   unk_43AF71.Execute CStr(var_118), var_C8, -1
  loc_11D3845:   unk_43AF71.CommitTrans
  loc_11D3855:   Me.Requery -1
  loc_11D3865:   Me.Requery -1
  loc_11D3885:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11D3892:     Me.Bookmark = var_94
  loc_11D389A:   Else
  loc_11D38AE:     If (Me.EOF = 0) Then
  loc_11D38B7:       Me.MoveLast
  loc_11D38BC:     End If
  loc_11D38BC:   End If
  loc_11D38BC:   Call Proc_87_29_F7DE40(var_9C, var_144, 0, var_14C, var_150)
  loc_11D38DD:   Proc_5_0_1107AD0(&HFF, Me, global_60, 0)
  loc_11D38E5: End If
  loc_11D38E5: Exit Sub
  loc_11D38E6: ' Referenced from: 11D34F0
  loc_11D38EC: unk_43AF71.RollbackTrans
  loc_11D38F9: Set var_9C = Err()
  loc_11D38FF: Call 0.Method_arg_2C (var_B4, 0, var_158)
  loc_11D3920: MsgBox(CVar(var_B4), &H10, " Deletion Message", var_118, var_138)
  loc_11D3933: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E18434
  'Data Table: 43AF60
  loc_E18429: Me.Global.Unload Me
  loc_E18431: Exit Sub
  loc_E18432: Set var_17A0 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3D4A8
  'Data Table: 43AF60
  loc_E3D498: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D4A0: Call Proc_87_29_F7DE40(global_60)
  loc_E3D4A5: Exit Sub
  loc_E3D4A6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3E528
  'Data Table: 43AF60
  loc_E3E518: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E520: Call Proc_87_29_F7DE40(global_60)
  loc_E3E525: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3D1A8
  'Data Table: 43AF60
  loc_E3D198: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D1A0: Call Proc_87_29_F7DE40(global_60)
  loc_E3D1A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3D2C8
  'Data Table: 43AF60
  loc_E3D2B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D2C0: Call Proc_87_29_F7DE40(global_60)
  loc_E3D2C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '13BE13C
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_F8 As Variant
  Dim var_A0 As Variant
  Dim var_E0 As String
  Dim var_E4 As String
  Dim unk_43AF71 As Connection15
  Dim var_A4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Field20
  Dim var_140 As String
  Dim var_144 As String
  Dim var_A8 As String
  Dim var_9C As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_8A As Integer
  Dim var_14C As String
  Dim var_DC As Variant
  Dim var_178 As Variant
  loc_13BD810: On Error Goto loc_13BE120
  loc_13BD81E: Set var_9C = Me.Txt
  loc_13BD824: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_13BD84D: If (Proc_6_27_EA61EC(var_A0, "Godown Name") = 0) Then
  loc_13BD850:   Exit Sub
  loc_13BD851: End If
  loc_13BD85C: Set var_9C = Me.Txt
  loc_13BD862: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0)
  loc_13BD86A: var_A8 = "Short Name"
  loc_13BD88B: If (Proc_6_27_EA61EC(var_A0, var_A8) = 0) Then
  loc_13BD88E:   Exit Sub
  loc_13BD88F: End If
  loc_13BD898: var_AC = Me.RecordCount
  loc_13BD8A6: If (var_AC <> 0) Then
  loc_13BD8AD:   Set var_9C = Me.TopCtrl1
  loc_13BD8B3:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_A0)
  loc_13BD8C8:   If ( = "Add") Then
  loc_13BD8F8:     Set var_9C = Me.Txt
  loc_13BD8FE:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_A8, "Select Count(*) From GodownMast Where Name='", var_CC, -1)
  loc_13BD91F:     unk_43AF71.Execute var_E8 & var_A8 & "'", 0, var_FC
  loc_13BD92F:      = var_E8.Item()
  loc_13BD937:      = var_FC.Value
  loc_13BD964:     If (var_A0.Text.Fields > 0) Then
  loc_13BD982:       var_CC = "Duplicate Godown Name"
  loc_13BD988:       MsgBox(var_CC, &H40, "Information", var_11C, var_13C)
  loc_13BD9A3:       Set var_9C = Me.Txt
  loc_13BD9A9:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_13BD9B1:       var_A0.SetFocus
  loc_13BD9BD:       Exit Sub
  loc_13BD9BE:     End If
  loc_13BD9EB:     Set var_9C = Me.Txt
  loc_13BD9F1:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0, var_A8, "Select Count(*) From GodownMast Where shortName='", var_CC, -1)
  loc_13BDA12:     unk_43AF71.Execute var_E8 & var_A8 & "'", 0, var_FC
  loc_13BDA22:      = var_E8.Item(var_A0)
  loc_13BDA2A:      = var_FC.Value
  loc_13BDA57:     If (var_A0.Text.Fields > 0) Then
  loc_13BDA75:       var_CC = "Duplicate Short Name"
  loc_13BDA7B:       MsgBox(var_CC, &H40, "Information", var_11C, var_13C)
  loc_13BDA96:       Set var_9C = Me.Txt
  loc_13BDA9C:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_13BDAA4:       var_A0.SetFocus
  loc_13BDAB0:       Exit Sub
  loc_13BDAB1:     End If
  loc_13BDAB4:   Else
  loc_13BDAE1:     Set var_9C = Me.Txt
  loc_13BDAE7:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_A8, "Select Count(*) From GodownMast Where Name='", var_CC, -1)
  loc_13BDB19:     unk_43AF71.Execute var_E8 & var_A8 & "' And Name<>'" & global_64 & "'", 0, var_FC
  loc_13BDB29:      = var_E8.Item(var_A0)
  loc_13BDB31:      = var_FC.Value
  loc_13BDB62:     If (var_A0.Text.Fields > 0) Then
  loc_13BDB80:       var_CC = "Duplicate Godown Name"
  loc_13BDB86:       MsgBox(var_CC, &H40, "Information", var_11C, var_13C)
  loc_13BDBA1:       Set var_9C = Me.Txt
  loc_13BDBA7:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_13BDBAF:       var_A0.SetFocus
  loc_13BDBBB:       Exit Sub
  loc_13BDBBC:     End If
  loc_13BDBE9:     Set var_9C = Me.Txt
  loc_13BDBEF:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0, var_A8, "Select Count(*) From GodownMast Where shortName='", var_CC, -1)
  loc_13BDC18:     var_144 = var_E8 & var_A8 & "' And shortName<>'" & global_52 & "'"
  loc_13BDC21:     unk_43AF71.Execute var_144, 0, var_FC
  loc_13BDC31:      = var_E8.Item(var_A0)
  loc_13BDC39:      = var_FC.Value
  loc_13BDC6A:     If (var_A0.Text.Fields > 0) Then
  loc_13BDC78:       var_DC = "Information"
  loc_13BDC88:       var_CC = "Duplicate Short Name"
  loc_13BDC8E:       MsgBox(var_CC, &H40, var_DC, var_11C, var_13C)
  loc_13BDCA9:       Set var_9C = Me.Txt
  loc_13BDCAF:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_13BDCB7:       var_A0.SetFocus
  loc_13BDCC3:       Exit Sub
  loc_13BDCC4:     End If
  loc_13BDCC4:   End If
  loc_13BDCC4: End If
  loc_13BDCC8: Set var_9C = Me.TopCtrl1
  loc_13BDCCE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_A0)
  loc_13BDCE3: If ( = "Add") Then
  loc_13BDCEC:   var_F8 = 0
  loc_13BDD09:   var_A8 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From GodownMast where SysYn<>'Y' and Site_Code='" & MemVar_1F95070
  loc_13BDD10:   var_E0 = var_A8 & "'"
  loc_13BDD19:   unk_43AF71.Execute var_E0, var_CC, -1
  loc_13BDD21:   var_9C = var_9C.Fields
  loc_13BDD29:   var_F8 = var_A0.Item(var_A0)
  loc_13BDD31:   var_A4 = var_A4.Value
  loc_13BDD6A:   var_11C = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_13BDD98:   var_13C = (1 + Format(CStr(var_DC), "0000"))
  loc_13BDDA3:   global_68 = CStr(var_13C)
  loc_13BDDB8: Else
  loc_13BDDD5:   var_A0 = Me.Fields.Item("Code")
  loc_13BDDDD:   var_CC = var_A0.Value
  loc_13BDDEC:   global_68 = CStr(var_CC)
  loc_13BDDFD: End If
  loc_13BDE0B: unk_43AF71.BeginTrans var_AC
  loc_13BDE14: Set var_9C = Me.TopCtrl1
  loc_13BDE1A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(&HFF)
  loc_13BDE2F: If (1 = "Add") Then
  loc_13BDE49:   var_A8 = "Insert Into Godownmast(Code,Name,ShortName,U_Name,U_EntDt,U_AE,site_code,logsite_code,SysYN) Values ('" & global_68
  loc_13BDE50:   var_E4 = var_A8 & "','"
  loc_13BDE61:   Set var_9C = Me.Txt
  loc_13BDE67:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_E0, var_E4, var_1CC)
  loc_13BDE6F:   -1 = var_A0.Text
  loc_13BDE7F:   var_14C = var_FC & var_E0 & "','"
  loc_13BDE90:   Set var_A4 = Me.Txt
  loc_13BDE96:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_E8, var_144)
  loc_13BDE9E:   var_14C = var_E8.Text
  loc_13BDEBC:   var_DC = CVar(var_11C & var_144 & "','" & MemVar_1F950C8 & "',") 'String
  loc_13BDEC2:   Proc_6_104_ED68A8(var_CC, var_DC)
  loc_13BDF07:   unk_43AF71.Execute CStr(var_DC & var_CC & ",'A','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "','N')"), , 
  loc_13BDF48: Else
  loc_13BDF66:   Set var_9C = Me.Txt
  loc_13BDF6C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_A8, "Update GodownMast Set Name='")
  loc_13BDF74:   var_1CC = var_A0.Text
  loc_13BDF7D:   var_E0 = -1 & var_A8
  loc_13BDF84:   var_140 = var_E0 & "',shortname='"
  loc_13BDF95:   Set var_A4 = Me.Txt
  loc_13BDF9B:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_E8, var_E4)
  loc_13BDFA3:   var_140 = var_E8.Text
  loc_13BDFCE:   Proc_6_104_ED68A8(var_CC)
  loc_13BDFDA:   var_BC = ",U_AE='E',Site_Code='"
  loc_13BDFF2:   var_178 = CVar(var_FC & var_E4 & "'," & "U_Name='" & MemVar_1F950C8 & "',U_EntDt=") & var_CC & var_BC & CVar(MemVar_1F95070) & "' Where Code='" 
  loc_13BE016:   unk_43AF71.Execute CStr(var_178 & CVar(global_68) & "'"), , 
  loc_13BE052: End If
  loc_13BE058: unk_43AF71.CommitTrans
  loc_13BE068: var_8A = 0
  loc_13BE076: Me.Requery -1
  loc_13BE086: Me.Requery -1
  loc_13BE0B0: Me.Find "SearchCode ='" & global_68 & "'", 0, 1
  loc_13BE0C0: Set var_9C = Me.TopCtrl1
  loc_13BE0C6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_BC)
  loc_13BE0DB: If (var_8A = "Add") Then
  loc_13BE0DE:   Call TopCtrl1_UnknownEvent_11()
  loc_13BE0E3:   Exit Sub
  loc_13BE0E4: End If
  loc_13BE107: Call Proc_87_30_E906A4(Proc_5_1_100EC1C("INI", Me))
  loc_13BE112: Call Proc_87_31_E85A88(global_60)
  loc_13BE11C: Set var_88 = Nothing
  loc_13BE11F: Exit Sub
  loc_13BE120: ' Referenced from: 13BD810
  loc_13BE126: If (var_8A = &HFF) Then
  loc_13BE12F:   unk_43AF71.RollbackTrans
  loc_13BE134: End If
  loc_13BE134: Proc_6_60_E63754()
  loc_13BE139: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EBC3A8
  'Data Table: 43AF60
  loc_EBC314: On Error Goto loc_EBC39F
  loc_EBC34E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBC374:   Call Proc_87_30_E906A4(Proc_5_1_100EC1C("INI", Me))
  loc_EBC37F:   Call Proc_87_31_E85A88(global_60)
  loc_EBC384:   Call Proc_87_29_F7DE40()
  loc_EBC38D:   Set var_110 = Me.DGMaster
  loc_EBC39E: End If
  loc_EBC39E: Exit Sub
  loc_EBC39F: ' Referenced from: EBC314
  loc_EBC39F: Proc_6_60_E63754(DGMaster.DispID_8001)
  loc_EBC3A4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC82C0
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_EC8220: On Error Goto loc_EC82B8
  loc_EC823A: If (Me.RecordCount <= 0) Then
  loc_EC8243:   var_B8 = "Information"
  loc_EC825E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC826E:   Exit Sub
  loc_EC826F: End If
  loc_EC827D: MemVar_1F950E4 = "Select G.Code as SearchCode,G.Name,G.shortname FROM GODOWNMAST g Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SysYN<>'Y' or SysYN is Null Order by G.Name"
  loc_EC828A: MemVar_1F95120 = Me
  loc_EC8297: Proc_6_126_F1C850("2000,1000")
  loc_EC82B2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC82B7: Exit Sub
  loc_EC82B8: ' Referenced from: EC8220
  loc_EC82B8: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC82BD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C '1012054
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_43AF71 As Connection15
  Dim var_D2 As Integer
  Dim var_B8 As Variant
  loc_1011E48: On Error Goto loc_101204D
  loc_1011E54: var_A4 = Me.RecordCount
  loc_1011E62: If (var_A4 <= 0) Then
  loc_1011E65:   Exit Sub
  loc_1011E66: End If
  loc_1011E74: var_88 = "Select * FROM GodownMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SysYN<>'Y' or SysYN is Null Order by Name"
  loc_1011E82: If (var_88 = vbNullString) Then
  loc_1011E85:   Exit Sub
  loc_1011E86: End If
  loc_1011E9C: unk_43AF71.Execute var_88, var_C8, -1
  loc_1011EC6: Set var_CC = var_CC 
  loc_1011ED2: var_D2 = CreateFieldDefFile(var_CC, MemVar_1F950B4 & "\Godown.ttx")
  loc_1011EDC: Set var_9C = var_CC
  loc_1011EE2: var_B8 = CVar(var_D2) 'Integer
  loc_1011EE5: var_98 = var_B8 'Variant
  loc_1011F01: var_A8 = MemVar_1F950B4 & "\GODOWN.RPT"
  loc_1011F0A: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_1011F15: MemVar_1F951E8 = var_CC
  loc_1011F30: Call 0.Method_arg_90 (var_CC, var_A4, var_9E, 1)
  loc_1011F38: Call 0.Method_arg_24 (var_D2, &HFF)
  loc_1011F44: For var_D6 =  To CInt(var_A4): var_CC = var_D6 'Integer
  loc_1011F5D:   Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1011F65:   Call 0.Method_arg_20 (var_DC)
  loc_1011F6D:   Call 0.Method_arg_30 (var_A8)
  loc_1011F87:   If (var_A8 = "Title") Then
  loc_1011F9D:     Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1011FA5:     Call 0.Method_arg_20 (var_DC)
  loc_1011FAD:     Call 0.Method_arg_38 ("'Godown List'")
  loc_1011FB9:   End If
  loc_1011FBC: Next var_D6 'Integer
  loc_1011FDA: Call 0.Method_arg_64 (var_CC, CVar(var_9C))
  loc_1011FE2: Call 0.Method_arg_2C (var_F0)
  loc_1011FF0: Call 0.Method_arg_150 (var_100)
  loc_1011FFB: Call 0.Method_arg_50 (var_A8)
  loc_1012005: Set var_DC = Nothing
  loc_101201F: Set var_CC = MemVar_1F951E8 
  loc_101202B: Proc_6_99_1484404(var_CC, 0, var_A8)
  loc_1012036: MemVar_1F951E8 = var_CC
  loc_1012049: Set var_9C = Nothing
  loc_101204C: Exit Sub
  loc_101204D: ' Referenced from: 1011E48
  loc_101204D: Proc_6_60_E63754(&HFF)
  loc_1012052: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E0BEAC
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_E0BEA3: Me.Requery -1
  loc_E0BEA8: Exit Sub
End Sub

Private Sub Form_Load() '10C0010
  'Data Table: 43AF60
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  Dim var_F0 As DataGrid
  Dim var_F4 As TextBox
  Dim var_FC As DataGrid
  Dim var_B4 As String
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_10BFD34: On Error Goto loc_10C0009
  loc_10BFD4D: Proc_6_23_DFC5B8(Me, 0)
  loc_10BFD5F: Set var_8C = Me.TopCtrl1
  loc_10BFD65: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_10BFD73: Call 0.Method_arg_50 (var_B4)
  loc_10BFD83: Set var_8C = Me.TopCtrl1
  loc_10BFD89: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000F(CVar(var_B4))
  loc_10BFD92: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_0()
  loc_10BFDAF: Set var_8C = Me.Txt
  loc_10BFDB5: Call 0.Method_Form_Load0 (CInt(0), var_E8)
  loc_10BFDD4: Me.DGHelp.Left = CVar(var_E8.Left)
  loc_10BFDF0: Set var_F0 = Me.Txt
  loc_10BFDF6: Call 0.Method_Form_Load0 (CInt(0), var_F4)
  loc_10BFE11: Set var_8C = Me.Txt
  loc_10BFE17: Call 0.Method_Form_Load0 (CInt(0), var_E8)
  loc_10BFE1F: var_EC = var_E8.Top
  loc_10BFE2F: var_A0 = CVar(((var_EC + var_F4.Height) + CDbl(&H1E))) 'Single
  loc_10BFE38: Set var_FC = Me.DGHelp
  loc_10BFE3E: var_FC.Top = CVar(var_E8.Left)
  loc_10BFE6C: Me.var_FC.CursorLocation = 3
  loc_10BFE96: var_C4 = CVar("Select Code,Name From GodownMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SysYN<>'Y' or SysYN is Null Order by Name") 'String
  loc_10BFEB4: CVarUnk
  loc_10BFEB9: VerifyVarObj
  loc_10BFEBF: Set var_8C = Me.DGHelp
  loc_10BFEC5: LateIdStAd
  loc_10BFEEF: Me.DGHelp.CursorLocation = 3
  loc_10BFF19: var_C4 = CVar("Select G.*, G.Code as SearchCode From GodownMast G Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SysYN<>'Y' or SysYN is Null Order by G.Name") 'String
  loc_10BFF23: r_C4, CVar(MemVar_1F95044), 2 var_C4, CVar(MemVar_1F95044), 2
  loc_10BFF37: CVarUnk
  loc_10BFF3C: VerifyVarObj
  loc_10BFF42: Set var_8C = Me.DGMaster
  loc_10BFF48: LateIdStAd
  loc_10BFF79: Call Proc_87_30_E906A4(Proc_5_1_100EC1C("INI", Me, New, Me, New, 3), -1, Me)
  loc_10BFF84: Call Proc_87_29_F7DE40(New, 3)
  loc_10BFF9B: Me.DGMaster.Left = CVar(CDbl(0))
  loc_10BFFB6: Me.DGMaster.Top = CVar(CDbl(1230))
  loc_10BFFC8: var_C4 = Me.DGMaster.Top
  loc_10BFFD7: Call 0.Method_Me8 (var_EC, var_C4)
  loc_10BFFEA: var_A0 = CVar(((var_EC - CDbl(400)) - CDbl(var_C4))) 'Single
  loc_10BFFF9: Me.DGMaster.Height = CVar(CDbl(1230))
  loc_10C0008: Exit Sub
  loc_10C0009: ' Referenced from: 10BFD34
  loc_10C0009: Proc_6_60_E63754(-1)
  loc_10C000E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2BA68
  'Data Table: 43AF60
  Dim MeFF As Integer
  loc_E2BA4B: Set global_60 = Nothing
  loc_E2BA5D: Set global_56 = Nothing
  loc_E2BA64: Exit Sub
  loc_E2BA65: MeFF = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B9B0
  'Data Table: 43AF60
  loc_E2B988: On Error Goto loc_E2B9A8
  loc_E2B99F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B9A7: Exit Sub
  loc_E2B9A8: ' Referenced from: E2B988
  loc_E2B9A8: Proc_6_60_E63754(Shift)
  loc_E2B9AD: Exit Sub
End Sub

Private Sub DGMaster_UnknownEvent_1A 'EEBEA8
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_EEBDF2: Set global_60 = New 
  loc_EEBE04: Me.Recordset15.CursorLocation = 3
  loc_EEBE1A: Set var_88 = Me.DGMaster
  loc_EEBE66: Me.Open CVar("Select G.*, G.Code as SearchCode From GodownMast G Order by " & DGMaster.DispID_69.Item(CVar(KeyCode)).DataField), CVar(MemVar_1F95044), 2
  loc_EEBE87: CVarUnk
  loc_EEBE8C: VerifyVarObj
  loc_EEBE92: Set var_88 = Me.DGMaster
  loc_EEBE98: LateIdStAd
  loc_EEBEA6: Exit Sub
End Sub

Private Sub DGMaster_UnknownEvent_22 'E46FA4
  'Data Table: 43AF60
  loc_E46F7C: Set var_88 = Me.TopCtrl1
  loc_E46F82: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_E46F97: If CBool( <> "Browse") Then
  loc_E46F9A:   Exit Sub
  loc_E46F9B: End If
  loc_E46F9B: Call Proc_87_29_F7DE40()
  loc_E46FA0: Exit Sub
  loc_E46FA1: BranchFVar 8703
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3E224
  'Data Table: 43AF60
  loc_E3E218: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3E21B:   Call DGHelp_UnknownEvent_9()
  loc_E3E220: End If
  loc_E3E220: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F4DDF4
  'Data Table: 43AF60
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4DCEB: Me.DGHelp.Visible = False
  loc_F4DD0A: If (Me.RecordCount > 0) Then
  loc_F4DD49:   Set var_B4 = Me.Txt
  loc_F4DD4F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4DD57:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4DD8A:   var_B0 = Me.Fields.Item("Name")
  loc_F4DDA9:   Set var_B4 = Me.Txt
  loc_F4DDAF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4DDB7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4DDCD: End If
  loc_F4DDD8: Set var_A8 = Me.Txt
  loc_F4DDDE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4DDE6: var_B0.SetFocus
  loc_F4DDF2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E7425C
  'Data Table: 43AF60
  loc_E7421A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E74231: Set var_8C = Me.FGPoint
  loc_E7424D: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E7425B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EACE54
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_EACDD2: Set var_88 = Me.Txt
  loc_EACDD8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EACDE6: Proc_6_74_E23240(var_8C)
  loc_EACDF2: Call Proc_87_31_E85A88(var_8C)
  loc_EACE05: If (Index = CInt(0)) Then
  loc_EACE1F:   If (Me.RecordCount > 0) Then
  loc_EACE2D:     Set var_8C = Me.FGPoint
  loc_EACE45:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_EACE53:   End If
  loc_EACE53: End If
  loc_EACE53: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC9DB8
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_FC9C12: If (CLng(Shift) = &H1B) Then
  loc_FC9C15:   Call Proc_87_31_E85A88()
  loc_FC9C1A:   Exit Sub
  loc_FC9C1B: End If
  loc_FC9C29: If (KeyCode = CInt(0)) Then
  loc_FC9C49:   Set var_9C = Me.FGPoint
  loc_FC9C7B:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_FC9CE8:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FC9CEF:     Set var_9C = Me.DGHelp
  loc_FC9D0E:     Proc_6_138_106E830(var_9C, global_56, KeyCode, Me.FGPoint, 0)
  loc_FC9D1C:   End If
  loc_FC9D1C: End If
  loc_FC9D38: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FC9D59:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_FC9D62:     Call Txt_Validate(KeyCode)
  loc_FC9D6D:     If (var_86 = &HFF) Then
  loc_FC9D70:       Exit Sub
  loc_FC9D71:     End If
  loc_FC9D74:     Call Proc_87_32_E91F30(KeyCode, var_86, 1)
  loc_FC9D79:     Exit Sub
  loc_FC9D7A:   End If
  loc_FC9D8F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC9D98:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_FC9D9D:   End If
  loc_FC9DA7:   If (CLng(Shift) = &H26) Then
  loc_FC9DB0:     Proc_6_76_E533C8(Shift, arg_14)
  loc_FC9DB5:   End If
  loc_FC9DB5: End If
  loc_FC9DB5: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E3E3A8
  'Data Table: 43AF60
  Dim arg_10 As Integer
  loc_E3E382: Proc_6_133_E7FB08(var_94)
  loc_E3E397: If (CInt(var_94) = &HD) Then
  loc_E3E39C:   arg_10 = 0
  loc_E3E39F: End If
  loc_E3E3A2: Proc_6_58_E06050(arg_10, arg_10)
  loc_E3E3A7: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC0FE0
  'Data Table: 43AF60
  loc_EC0F52: If (KeyCode = CInt(0)) Then
  loc_EC0F71:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC0F7E:     var_A4 = "Name"
  loc_EC0F9D:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_56)
  loc_EC0FCF:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC0FDD:   End If
  loc_EC0FDD: End If
  loc_EC0FDD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47624
  'Data Table: 43AF60
  loc_E47602: Set var_88 = Me.Txt
  loc_E47608: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47616: Proc_6_73_E23294(var_8C)
  loc_E47622: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1208CFC
  'Data Table: 43AF60
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim unk_43AF71 As Connection15
  Dim var_D4 As Recordset15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  Dim arg_10 As Integer
  loc_1208853: var_86 = Cancel
  loc_120885E: If (var_86 = CInt(0)) Then
  loc_1208878:   If (Me.RecordCount = 0) Then
  loc_120887B:     Exit Sub
  loc_120887C:   End If
  loc_1208880:   Set var_90 = Me.TopCtrl1
  loc_1208886:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_86)
  loc_120889B:   If ( = "Add") Then
  loc_12088CB:     Set var_90 = Me.Txt
  loc_12088D1:     Call 0.Method_Txt_Validate0 (CInt(0), var_C4, var_C8, "Select Count(*) From GodownMast Where Name='", var_B0, -1)
  loc_12088D9:     var_D4 = var_C4.Text
  loc_12088F2:     unk_43AF71.Execute var_D8 & var_C8 & "'", 0, var_EC
  loc_1208902:      = var_D8.Item()
  loc_120890A:      = var_EC.Value
  loc_1208937:     If (var_D4.Fields > 0) Then
  loc_1208945:       var_C0 = "Information"
  loc_1208955:       var_B0 = "Duplicate Godown Name"
  loc_120895B:       MsgBox(var_B0, &H40, var_C0, var_10C, var_12C)
  loc_1208976:       Set var_90 = Me.Txt
  loc_120897C:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1208984:       var_C4.SetFocus
  loc_1208992:       arg_10 = &HFF
  loc_1208995:       Exit Sub
  loc_1208996:     End If
  loc_1208999:   Else
  loc_12089C6:     Set var_90 = Me.Txt
  loc_12089CC:     Call 0.Method_Txt_Validate0 (CInt(0), var_C4, var_C8, "Select Count(*) From GodownMast Where Name='", var_B0, -1, var_D4)
  loc_12089D4:     var_D8 = var_C4.Text
  loc_12089FE:     unk_43AF71.Execute 0 & var_C8 & "' And Name<>'" & global_64 & "'", var_EC, var_C0
  loc_1208A06:     arg_10 = var_D4.Fields
  loc_1208A0E:      = var_D8.Item(var_C4)
  loc_1208A16:      = var_EC.Value
  loc_1208A47:     If (var_C0 > 0) Then
  loc_1208A65:       var_B0 = "Duplicate Godown Name"
  loc_1208A6B:       MsgBox(var_B0, &H40, "Information", var_10C, var_12C)
  loc_1208A86:       Set var_90 = Me.Txt
  loc_1208A8C:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1208A94:       var_C4.SetFocus
  loc_1208AA2:       arg_10 = &HFF
  loc_1208AA5:       Exit Sub
  loc_1208AA6:     End If
  loc_1208AA6:   End If
  loc_1208AA9: Else
  loc_1208AB1:   If (var_86 = CInt(1)) Then
  loc_1208ACB:     If (Me.RecordCount = 0) Then
  loc_1208ACE:       Exit Sub
  loc_1208ACF:     End If
  loc_1208AD3:     Set var_90 = Me.TopCtrl1
  loc_1208AD9:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(arg_10)
  loc_1208AEE:     If (var_C4 = "Add") Then
  loc_1208B1E:       Set var_90 = Me.Txt
  loc_1208B24:       Call 0.Method_Txt_Validate0 (CInt(1), var_C4, var_C8, "Select Count(*) From GodownMast Where shortName='", var_B0, -1)
  loc_1208B2C:       var_D4 = var_C4.Text
  loc_1208B45:       unk_43AF71.Execute var_D8 & var_C8 & "'", 0, var_EC
  loc_1208B55:        = var_D8.Item()
  loc_1208B5D:        = var_EC.Value
  loc_1208B8A:       If (var_D4.Fields > 0) Then
  loc_1208B98:         var_C0 = "Information"
  loc_1208BA8:         var_B0 = "Duplicate Short Name"
  loc_1208BAE:         MsgBox(var_B0, &H40, var_C0, var_10C, var_12C)
  loc_1208BC9:         Set var_90 = Me.Txt
  loc_1208BCF:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1208BD7:         var_C4.SetFocus
  loc_1208BE5:         arg_10 = &HFF
  loc_1208BE8:         Exit Sub
  loc_1208BE9:       End If
  loc_1208BEC:     Else
  loc_1208C19:       Set var_90 = Me.Txt
  loc_1208C1F:       Call 0.Method_Txt_Validate0 (CInt(1), var_C4, var_C8, "Select Count(*) From GodownMast Where shortName='", var_B0, -1, var_D4)
  loc_1208C51:       unk_43AF71.Execute 0 & var_C8 & "' And shortName<>'" & global_52 & "'", var_EC, var_C0
  loc_1208C59:       arg_10 = var_D4.Fields
  loc_1208C61:        = var_C4.Text.Item(var_C4)
  loc_1208C69:        = var_EC.Value
  loc_1208C9A:       If (var_C0 > 0) Then
  loc_1208CBE:         MsgBox("Duplicate Short Name", &H40, "Information", var_10C, var_12C)
  loc_1208CD9:         Set var_90 = Me.Txt
  loc_1208CDF:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1208CE7:         var_C4.SetFocus
  loc_1208CF5:         arg_10 = &HFF
  loc_1208CF8:         Exit Sub
  loc_1208CF9:       End If
  loc_1208CF9:     End If
  loc_1208CF9:   End If
  loc_1208CF9: End If
  loc_1208CF9: Exit Sub
  loc_1208CFA: CopyBytes -5889
End Sub

Public Sub SEARCHBACK(MyValue) 'E93E38
  'Data Table: 43AF60
  Dim Me As Recordset15
  loc_E93DC6: On Error Goto loc_E93E2F
  loc_E93DCF: Me.MoveFirst
  loc_E93DF9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93E21: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E93E29: Call Proc_87_29_F7DE40(0)
  loc_E93E2E: Exit Sub
  loc_E93E2F: ' Referenced from: E93DC6
  loc_E93E2F: Proc_6_60_E63754(var_A0)
  loc_E93E34: Exit Sub
End Sub

Public Sub Proc_87_28_EB4D5C
  'Data Table: 43AF60
  Dim var_98 As TextBox
  loc_EB4CC6: global_64 = vbNullString
  loc_EB4CD0: global_52 = vbNullString
  loc_EB4CE2: Set var_8C = Me.Txt
  loc_EB4CE8: Call 0.Method_Proc_87_28_EB4D5CC (var_8E, var_86)
  loc_EB4CF8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB4D0E:   Set var_8C = Me.Txt
  loc_EB4D14:   Call 0.Method_Proc_87_28_EB4D5C0 (CInt(var_86), var_98)
  loc_EB4D1C:   var_98.Text = vbNullString
  loc_EB4D38:   Set var_8C = Me.Txt
  loc_EB4D3E:   Call 0.Method_Proc_87_28_EB4D5C0 (CInt(var_86), var_98)
  loc_EB4D46:   var_98.Tag = vbNullString
  loc_EB4D55: Next var_92 'Byte
  loc_EB4D5B: Exit Sub
End Sub

Public Sub Proc_87_29_F7DE40
  'Data Table: 43AF60
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  loc_F7DCF8: On Error Goto loc_F7DE39
  loc_F7DD12: If (Me.RecordCount > 0) Then
  loc_F7DD51:   Set var_A4 = Me.Txt
  loc_F7DD57:   Call 0.Method_Proc_87_29_F7DE400 (CInt(0), var_A8)
  loc_F7DD5F:   var_A8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7DDAE:   Set var_A4 = Me.Txt
  loc_F7DDB4:   Call 0.Method_Proc_87_29_F7DE400 (CInt(0), var_A8)
  loc_F7DDBC:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_F7DE09:   Set var_A4 = Me.Txt
  loc_F7DE0F:   Call 0.Method_Proc_87_29_F7DE400 (CInt(1), var_A8)
  loc_F7DE17:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ShortName")))
  loc_F7DE2E: Else
  loc_F7DE2E:   Call Proc_87_28_EB4D5C()
  loc_F7DE33: End If
  loc_F7DE33: Call Proc_87_31_E85A88()
  loc_F7DE38: Exit Sub
  loc_F7DE39: ' Referenced from: F7DCF8
  loc_F7DE39: Proc_6_60_E63754()
  loc_F7DE3E: Exit Sub
End Sub

Public Sub Proc_87_30_E906A4(arg_C) 'E906A4
  'Data Table: 43AF60
  Dim var_98 As TextBox
  Dim var_8C As DataGrid
  loc_E90636: Set var_8C = Me.Txt
  loc_E9063C: Call 0.Method_Proc_87_30_E906A4C (var_8E, var_86)
  loc_E9064C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E90662:   Set var_8C = Me.Txt
  loc_E90668:   Call 0.Method_Proc_87_30_E906A40 (CInt(var_86), var_98)
  loc_E90670:   var_98.Enabled = arg_C
  loc_E9067F: Next var_92 'Byte
  loc_E90698: Me.DGMaster.Enabled = Not(arg_C)
  loc_E906A3: Exit Sub
End Sub

Public Sub Proc_87_31_E85A88
  'Data Table: 43AF60
  loc_E85A34: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E85A46:   Me.DGHelp.Visible = False
  loc_E85A4E: End If
  loc_E85A6A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E85A7C:   Me.FGPoint.Visible = False
  loc_E85A84: End If
  loc_E85A84: Exit Sub
End Sub

Public Sub Proc_87_32_E91F30(arg_C) 'E91F30
  'Data Table: 43AF60
  Dim var_10C As TextBox
  loc_E91EC4: Call Proc_87_31_E85A88()
  loc_E91F00: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E91F03:   Call TopCtrl1_UnknownEvent_19()
  loc_E91F0B: Else
  loc_E91F15:   Set var_108 = Me.Txt
  loc_E91F1B:   Call 0.Method_Proc_87_32_E91F300 (arg_C)
  loc_E91F23:   var_10C.SetFocus
  loc_E91F2F: End If
  loc_E91F2F: Exit Sub
End Sub
