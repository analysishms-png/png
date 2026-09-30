VERSION 5.00
Begin VB.Form AccountMerg
  Caption = "Account Merging"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "AccountMerg.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11085
  ClientHeight = 8175
  Begin DataGrid DGChange
    Left = 930
    Top = 3960
    Width = 9480
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 7050
    Top = 1410
    Width = 1845
    Height = 300
    TabIndex = 5
    BorderStyle = 0 'None
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
    ForeColor = &HC00000&
    Left = 7050
    Top = 1080
    Width = 1845
    Height = 300
    TabIndex = 4
    BorderStyle = 0 'None
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
    Index = 1
    ForeColor = &HC00000&
    Left = 2625
    Top = 1410
    Width = 4395
    Height = 300
    TabIndex = 1
    BorderStyle = 0 'None
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
    ForeColor = &HC00000&
    Left = 2625
    Top = 1080
    Width = 4395
    Height = 300
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin BtnEnh CmdExit
    Left = 5415
    Top = 2385
    Width = 1500
    Height = 765
    TabIndex = 8
  End
  Begin BtnEnh CmdPrint
    Index = 0
    Left = 3855
    Top = 2385
    Width = 1500
    Height = 765
    TabIndex = 9
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 10
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
    BackColor = &HCFE0E0&
    ForeColor = &HFF0000&
    Left = 960
    Top = 3510
    Width = 9450
    Height = 390
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNewVar
    Caption = "New Account"
    ForeColor = &HC00000&
    Left = 1215
    Top = 1455
    Width = 1245
    Height = 240
    TabIndex = 3
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
  Begin Label LblOldVar
    Caption = "Old Account"
    ForeColor = &HC00000&
    Left = 1215
    Top = 1125
    Width = 1155
    Height = 240
    TabIndex = 2
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

Attribute VB_Name = "AccountMerg"


Private Sub CmdPrint_UnknownEvent_9 'FF8560
  'Data Table: 431E8C
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As String
  loc_FF837C: On Error Goto loc_FF8559
  loc_FF8382: var_88 = KeyCode
  loc_FF838B: If (var_88 = 0) Then
  loc_FF839C:   Set var_8C = Me.Txt
  loc_FF83A2:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(0), var_90)
  loc_FF83AA:   var_94 = var_90.Tag
  loc_FF83C0:   Set var_98 = Me.Txt
  loc_FF83C6:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(1), var_9C, var_A0)
  loc_FF83CE:   var_94 = var_9C.Tag
  loc_FF83EA:   If (var_88 = var_A0) Then
  loc_FF8406:     MsgBox("Both Account Can,t br Same", &H40, var_E0, var_100, var_120)
  loc_FF8416:     Exit Sub
  loc_FF8417:   End If
  loc_FF8425:   Set var_8C = Me.Txt
  loc_FF842B:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(0), var_90)
  loc_FF8441:   var_E0 = Trim(CVar(var_90.Tag))
  loc_FF845F:   If (var_E0 = vbNullString) Then
  loc_FF8470:     var_B0 = "Re-Select Old Account"
  loc_FF847B:     MsgBox(vbNullString, &H40, var_E0, var_100, var_120)
  loc_FF848B:     Exit Sub
  loc_FF848C:   End If
  loc_FF849A:   Set var_8C = Me.Txt
  loc_FF84A0:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(1), var_90)
  loc_FF84B6:   var_E0 = Trim(CVar(var_90.Tag))
  loc_FF84D4:   If (var_E0 = vbNullString) Then
  loc_FF84E5:     var_B0 = "Re-Select New Account"
  loc_FF84F0:     MsgBox(vbNullString, &H40, var_E0, var_100, var_120)
  loc_FF8500:     Exit Sub
  loc_FF8501:   End If
  loc_FF8538:   If (MsgBox("Are You Sure To Merge Given Accounts", &H144, "Confirm Merging", var_100, var_120) = 6) Then
  loc_FF8544:     Call Proc_173_12_1858DD4(MemVar_1F95108)
  loc_FF854C:   End If
  loc_FF854F: Else
  loc_FF8555:   If (var_88 = 1) Then
  loc_FF8558:   End If
  loc_FF8558: End If
  loc_FF8558: Exit Sub
  loc_FF8559: ' Referenced from: FF837C
  loc_FF8559: Proc_6_60_E63754()
  loc_FF855E: Exit Sub
End Sub

Private Sub DGChange_UnknownEvent_9 'FBF8E8
  'Data Table: 431E8C
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_A4 As Field20
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_C4 As TextBox
  loc_FBF758: Set var_88 = Err()
  loc_FBF75E: Call 0.Method_arg_1C (var_8C)
  loc_FBF76A: OnGoto
  loc_FBF772: StAryRecCopy
  loc_FBF78D: CInt(var_8C) = Me.Fields.Item("Name")
  loc_FBF795:  = var_A4.Value
  loc_FBF7BF: Set var_C0 = Me.Txt
  loc_FBF7C5: Call 0.Method_DGChange_UnknownEvent_90 (CInt(CStr(Me.DGChange.Tag)), var_C4)
  loc_FBF7CD: var_C4.Text = CStr(var_D4)
  loc_FBF812: var_D4 = Me.Fields.Item("Code").Value
  loc_FBF825: Set var_A8 = Me.DGChange
  loc_FBF83C: Set var_C0 = Me.Txt
  loc_FBF842: Call 0.Method_DGChange_UnknownEvent_90 (CInt(CStr(var_A8.Tag)), var_C4)
  loc_FBF84A: var_C4.Tag = CStr(var_D4)
  loc_FBF87F: var_BC = CStr(Me.DGChange.Tag)
  loc_FBF888: Set var_A4 = Me.Txt
  loc_FBF88E: Call 0.Method_DGChange_UnknownEvent_90 (CInt(var_BC))
  loc_FBF896: var_A8.SetFocus
  loc_FBF8AA: Exit Sub
  loc_FBF8B3: Set var_88 = Err()
  loc_FBF8B9: Call 0.Method_arg_2C (var_BC)
  loc_FBF8D2: MsgBox(CVar(var_BC), &H10, var_D4, var_F8, var_118)
  loc_FBF8E5: Exit Sub
  loc_FBF8E6: CExtInstUnk
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FCFFD8
  'Data Table: 431E8C
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B4 As String
  loc_FCFE24: Call Proc_173_11_E55DCC()
  loc_FCFE33: Set var_88 = Me.Txt
  loc_FCFE39: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FCFE47: Proc_6_74_E23240(var_8C)
  loc_FCFE56: var_92 = Index
  loc_FCFE61: If Not (var_92 = CInt(0)) Then
  loc_FCFE6C:   If (var_92 = CInt(1)) Then
  loc_FCFE6F:   End If
  loc_FCFE82:   Me.DGChange.Tag = CVar(CStr(Index))
  loc_FCFEDB:   Set var_88 = Me.Txt
  loc_FCFEE1:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_FCFEE9:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FCFF01:   If (var_92 Or (var_C0 = vbNullString)) Then
  loc_FCFF04:     Exit Sub
  loc_FCFF05:   End If
  loc_FCFF12:   Set var_88 = Me.Txt
  loc_FCFF18:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FCFF20:   var_C0 = var_8C.Text
  loc_FCFF32:   var_B4 = "Name"
  loc_FCFF6D:   If CBool(CVar(var_C0) <> Me.Fields.Item(var_B4).Value) Then
  loc_FCFF76:     Me.MoveFirst
  loc_FCFF99:     Set var_88 = Me.Txt
  loc_FCFF9F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "name ='")
  loc_FCFFA7:     0 = var_8C.Text
  loc_FCFFC0:     Me.Find 1 & var_C0 & "'", var_B4, var_8C
  loc_FCFFD5:   End If
  loc_FCFFD5: End If
  loc_FCFFD5: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F53658
  'Data Table: 431E8C
  Dim var_8C As TextBox
  Dim var_8E As Integer
  Dim var_88 As DataGrid
  loc_F5354A: If (CLng(Shift) = &H1B) Then
  loc_F5354D:   Call Proc_173_11_E55DCC()
  loc_F5355F:   Set var_88 = Me.Txt
  loc_F53565:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_8C)
  loc_F5356D:   var_8C.Text = vbNullString
  loc_F53579:   Exit Sub
  loc_F5357A: End If
  loc_F5357D: var_8E = KeyCode
  loc_F53588: If Not (var_8E = CInt(0)) Then
  loc_F53593:   If (var_8E = CInt(1)) Then
  loc_F53596:   End If
  loc_F535AE:   Set var_9C = Nothing
  loc_F535B9:   Set var_98 = Nothing
  loc_F535E7:   Proc_6_69_134A630(Me.DGChange, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_F535FB: End If
  loc_F53617: If (CBool(Me.DGChange.Visible) = 0) Then
  loc_F5362F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F53638:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F5363D:   End If
  loc_F53647:   If (CLng(Shift) = &H26) Then
  loc_F53650:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F53655:   End If
  loc_F53655: End If
  loc_F53655: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EB046C
  'Data Table: 431E8C
  Dim arg_10 As Integer
  Dim var_86 As Integer
  loc_EB03E6: If (arg_10 = &HD) Then
  loc_EB03EB:   arg_10 = 0
  loc_EB03EE: End If
  loc_EB03F1: Proc_6_58_E06050(arg_10)
  loc_EB03F9: var_86 = KeyAscii
  loc_EB0404: If Not (var_86 = CInt(0)) Then
  loc_EB040F:   If (var_86 = CInt(1)) Then
  loc_EB0412:   End If
  loc_EB042E:   If (CBool(Me.DGChange.Visible) = &HFF) Then
  loc_EB0440:     var_A0 = "Name"
  loc_EB045B:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10)
  loc_EB046A:   End If
  loc_EB046A: End If
  loc_EB046A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CEB4
  'Data Table: 431E8C
  loc_E4CE92: Set var_88 = Me.Txt
  loc_E4CE98: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CEA6: Proc_6_73_E23294(var_8C)
  loc_E4CEB2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103A9D0
  'Data Table: 431E8C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_90 As Fields15
  Dim var_98 As String
  Dim var_B0 As TextBox
  loc_103A783: var_86 = Cancel
  loc_103A78E: If Not (var_86 = CInt(0)) Then
  loc_103A799:   If (var_86 = CInt(1)) Then
  loc_103A79C:   End If
  loc_103A7D2:   Set var_90 = Me.Txt
  loc_103A7D8:   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_103A7E0:   ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) = var_94.Text
  loc_103A7F8:   If (var_86 Or (var_98 = vbNullString)) Then
  loc_103A808:     Set var_90 = Me.Txt
  loc_103A80E:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_103A816:     var_94.Tag = vbNullString
  loc_103A82F:     Set var_90 = Me.Txt
  loc_103A835:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_103A83D:     var_94.Text = vbNullString
  loc_103A84C:   Else
  loc_103A887:     Set var_AC = Me.Txt
  loc_103A88D:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_103A895:     var_B0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_103A8E6:     Set var_AC = Me.Txt
  loc_103A8EC:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_103A8F4:     var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_103A912:     If (Cancel = CInt(0)) Then
  loc_103A94E:       Set var_AC = Me.Txt
  loc_103A954:       Call 0.Method_Txt_Validate0 (CInt(2), var_B0)
  loc_103A95C:       var_B0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_103A973:     Else
  loc_103A9AC:       Set var_AC = Me.Txt
  loc_103A9B2:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_103A9BA:       var_B0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_103A9CE:     End If
  loc_103A9CE:   End If
  loc_103A9CE: End If
  loc_103A9CE: Exit Sub
End Sub

Private Sub Form_Load() 'F080DC
  'Data Table: 431E8C
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  loc_F07FFD: Call 0.Method_arg_160 (var_88)
  loc_F0800B: Call 0.Method_arg_164 (var_88)
  loc_F0801A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F08027: Set var_88 = Me.LblCompany
  loc_F0802D: MDIForm1.LblCompany.BackColor = CLng(MemVar_1F951B4)
  loc_F08047: Me.DGChange.Left = CVar(CDbl(&H1E))
  loc_F0805C: Set var_88 = Me.DGChange
  loc_F08062: var_88.Top = CVar(CDbl(1380))
  loc_F08074: Set global_52 = New 
  loc_F08086: Me.var_88.CursorLocation = 3
  loc_F080AE: Me.Open "Select SubCode As Code,Name,SubCode,C.CityName From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode order by Name", CVar(MemVar_1F95044), 3
  loc_F080BC: CVarUnk
  loc_F080C1: VerifyVarObj
  loc_F080C7: Set var_88 = Me.DGChange
  loc_F080CD: LateIdStAd
  loc_F080DB: Exit Sub
End Sub

Private Sub Form_Resize() 'E77384
  'Data Table: 431E8C
  loc_E7732E: Call 0.Method_arg_50 (var_88)
  loc_E77340: Me.LblFormCaption.Caption = var_88
  loc_E77359: Me.LblFormCaption.Left = CDbl(0)
  loc_E77367: Call 0.Method_arg_100 (var_90)
  loc_E77379: Me.LblFormCaption.Width = var_90
  loc_E77381: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E272B4
  'Data Table: 431E8C
  loc_E2729A: If (CLng(KeyCode) = &H79) Then
  loc_E272AA:   Me.Global.Unload Me
  loc_E272B2: End If
  loc_E272B2: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1A490
  'Data Table: 431E8C
  loc_E1A485: Me.Global.Unload Me
  loc_E1A48D: Exit Sub
End Sub

Public Sub Proc_173_11_E55DCC
  'Data Table: 431E8C
  loc_E55DB0: If (CBool(Me.DGChange.Visible) = &HFF) Then
  loc_E55DC2:   Me.DGChange.Visible = False
  loc_E55DCA: End If
  loc_E55DCA: Exit Sub
End Sub

Public Sub Proc_173_12_1858DD4(arg_C) '1858DD4
  'Data Table: 431E8C
  Dim var_88 As Label
  Dim var_90 As TextBox
  Dim var_9C As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim unk_431EAB As Connection15
  loc_185686D: Me.Label1.Caption = "Updating Ledger Table Please Wait........."
  loc_185687F: Me.Label1.Refresh
  loc_18568B3: Set var_88 = Me.Txt
  loc_18568B9: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.Ledger Set SubCode='")
  loc_18568C1: var_D4 = var_90.Tag
  loc_18568CA: var_9C = -1 & var_94
  loc_18568D1: var_AC = var_9C & "' Where SubCode='"
  loc_18568E2: Set var_A0 = Me.Txt
  loc_18568E8: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18568F0: var_AC = var_A4.Tag
  loc_1856909: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185695D: Set var_88 = Me.Txt
  loc_1856963: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.Ledger Set ContraSub='")
  loc_185696B: var_D4 = var_90.Tag
  loc_1856974: var_9C = -1 & var_94
  loc_185697B: var_AC = var_9C & "' Where ContraSub='"
  loc_185698C: Set var_A0 = Me.Txt
  loc_1856992: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185699A: var_AC = var_A4.Tag
  loc_18569B3: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18569E8: Me.Label1.Caption = "Updating Ledger Adjustment Table Please Wait........."
  loc_18569FA: Me.Label1.Refresh
  loc_1856A2E: Set var_88 = Me.Txt
  loc_1856A34: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.LedgerAdj Set SubCode='")
  loc_1856A3C: var_D4 = var_90.Tag
  loc_1856A45: var_9C = -1 & var_94
  loc_1856A4C: var_AC = var_9C & "' Where SubCode='"
  loc_1856A5D: Set var_A0 = Me.Txt
  loc_1856A63: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1856A6B: var_AC = var_A4.Tag
  loc_1856A84: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1856AD8: Set var_88 = Me.Txt
  loc_1856ADE: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.LedgerRef Set SubCode='")
  loc_1856AE6: var_D4 = var_90.Tag
  loc_1856AEF: var_9C = -1 & var_94
  loc_1856AF6: var_AC = var_9C & "' Where SubCode='"
  loc_1856B07: Set var_A0 = Me.Txt
  loc_1856B0D: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1856B15: var_AC = var_A4.Tag
  loc_1856B2E: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1856B63: Me.Label1.Caption = "Updating Ledger TDS Table Please Wait........."
  loc_1856B75: Me.Label1.Refresh
  loc_1856BA9: Set var_88 = Me.Txt
  loc_1856BAF: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.LedgerTDS Set TDSCode='")
  loc_1856BB7: var_D4 = var_90.Tag
  loc_1856BC0: var_9C = -1 & var_94
  loc_1856BC7: var_AC = var_9C & "' Where TDSCode='"
  loc_1856BD8: Set var_A0 = Me.Txt
  loc_1856BDE: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1856BE6: var_AC = var_A4.Tag
  loc_1856BFF: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1856C53: Set var_88 = Me.Txt
  loc_1856C59: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.LedgerTDS Set TDSDrCode='")
  loc_1856C61: var_D4 = var_90.Tag
  loc_1856C6A: var_9C = -1 & var_94
  loc_1856C71: var_AC = var_9C & "' Where TDSDrCode='"
  loc_1856C82: Set var_A0 = Me.Txt
  loc_1856C88: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1856C90: var_AC = var_A4.Tag
  loc_1856CA9: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1856CFD: Set var_88 = Me.Txt
  loc_1856D03: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.BOOKING set [COMPANY] ='")
  loc_1856D0B: var_D4 = var_90.Tag
  loc_1856D14: var_9C = -1 & var_94
  loc_1856D1B: var_AC = var_9C & "' where [COMPANY] ='"
  loc_1856D2C: Set var_A0 = Me.Txt
  loc_1856D32: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1856D3A: var_AC = var_A4.Tag
  loc_1856D53: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1856DA7: Set var_88 = Me.Txt
  loc_1856DAD: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.BOOKING set TravelAgency ='")
  loc_1856DB5: var_D4 = var_90.Tag
  loc_1856DBE: var_9C = -1 & var_94
  loc_1856DC5: var_AC = var_9C & "' where TravelAgency ='"
  loc_1856DD6: Set var_A0 = Me.Txt
  loc_1856DDC: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1856DE4: var_AC = var_A4.Tag
  loc_1856DFD: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1856E51: Set var_88 = Me.Txt
  loc_1856E57: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.BUDGET set ACCODE='")
  loc_1856E5F: var_D4 = var_90.Tag
  loc_1856E68: var_9C = -1 & var_94
  loc_1856E6F: var_AC = var_9C & "' where ACCODE ='"
  loc_1856E80: Set var_A0 = Me.Txt
  loc_1856E86: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1856E8E: var_AC = var_A4.Tag
  loc_1856EA7: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1856EFB: Set var_88 = Me.Txt
  loc_1856F01: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.CREDITCARDHISTORY set COMMAC ='")
  loc_1856F09: var_D4 = var_90.Tag
  loc_1856F12: var_9C = -1 & var_94
  loc_1856F19: var_AC = var_9C & "' where COMMAC ='"
  loc_1856F2A: Set var_A0 = Me.Txt
  loc_1856F30: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1856F38: var_AC = var_A4.Tag
  loc_1856F51: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1856FA5: Set var_88 = Me.Txt
  loc_1856FAB: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, " update " & arg_C & ".dbo.EMPLOYEE set AC_code ='")
  loc_1856FB3: var_D4 = var_90.Tag
  loc_1856FBC: var_9C = -1 & var_94
  loc_1856FC3: var_AC = var_9C & "' where AC_code ='"
  loc_1856FD4: Set var_A0 = Me.Txt
  loc_1856FDA: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1856FE2: var_AC = var_A4.Tag
  loc_1856FFB: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185704F: Set var_88 = Me.Txt
  loc_1857055: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.EMPLOYEE set LOANAC ='")
  loc_185705D: var_D4 = var_90.Tag
  loc_1857066: var_9C = -1 & var_94
  loc_185706D: var_AC = var_9C & "' where LOANAC ='"
  loc_185707E: Set var_A0 = Me.Txt
  loc_1857084: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185708C: var_AC = var_A4.Tag
  loc_18570A5: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18570F9: Set var_88 = Me.Txt
  loc_18570FF: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set CASH_AC ='")
  loc_1857107: var_D4 = var_90.Tag
  loc_1857110: var_9C = -1 & var_94
  loc_1857117: var_AC = var_9C & "' where CASH_AC ='"
  loc_1857128: Set var_A0 = Me.Txt
  loc_185712E: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857136: var_AC = var_A4.Tag
  loc_185714F: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18571A3: Set var_88 = Me.Txt
  loc_18571A9: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  DISCOUNTAC='")
  loc_18571B1: var_D4 = var_90.Tag
  loc_18571BA: var_9C = -1 & var_94
  loc_18571C1: var_AC = var_9C & "' where DISCOUNTAC ='"
  loc_18571D2: Set var_A0 = Me.Txt
  loc_18571D8: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18571E0: var_AC = var_A4.Tag
  loc_18571F9: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185724D: Set var_88 = Me.Txt
  loc_1857253: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  ROUNDOFFAC='")
  loc_185725B: var_D4 = var_90.Tag
  loc_1857264: var_9C = -1 & var_94
  loc_185726B: var_AC = var_9C & "' where  ROUNDOFFAC ='"
  loc_185727C: Set var_A0 = Me.Txt
  loc_1857282: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185728A: var_AC = var_A4.Tag
  loc_18572A3: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18572F7: Set var_88 = Me.Txt
  loc_18572FD: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  COMMAC='")
  loc_1857305: var_D4 = var_90.Tag
  loc_185730E: var_9C = -1 & var_94
  loc_1857315: var_AC = var_9C & "' where COMMAC ='"
  loc_1857326: Set var_A0 = Me.Txt
  loc_185732C: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857334: var_AC = var_A4.Tag
  loc_185734D: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18573A1: Set var_88 = Me.Txt
  loc_18573A7: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  SALARY_AC='")
  loc_18573AF: var_D4 = var_90.Tag
  loc_18573B8: var_9C = -1 & var_94
  loc_18573BF: var_AC = var_9C & "' where SALARY_AC ='"
  loc_18573D0: Set var_A0 = Me.Txt
  loc_18573D6: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18573DE: var_AC = var_A4.Tag
  loc_18573F7: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185744B: Set var_88 = Me.Txt
  loc_1857451: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  LOAN_AC='")
  loc_1857459: var_D4 = var_90.Tag
  loc_1857462: var_9C = -1 & var_94
  loc_1857469: var_AC = var_9C & "' where LOAN_AC ='"
  loc_185747A: Set var_A0 = Me.Txt
  loc_1857480: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857488: var_AC = var_A4.Tag
  loc_18574A1: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18574F5: Set var_88 = Me.Txt
  loc_18574FB: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  ADVANCEAC='")
  loc_1857503: var_D4 = var_90.Tag
  loc_185750C: var_9C = -1 & var_94
  loc_1857513: var_AC = var_9C & "' where ADVANCEAC ='"
  loc_1857524: Set var_A0 = Me.Txt
  loc_185752A: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857532: var_AC = var_A4.Tag
  loc_185754B: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185759F: Set var_88 = Me.Txt
  loc_18575A5: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  ROOMCHRGDUEAC='")
  loc_18575AD: var_D4 = var_90.Tag
  loc_18575B6: var_9C = -1 & var_94
  loc_18575BD: var_AC = var_9C & "' where ROOMCHRGDUEAC ='"
  loc_18575CE: Set var_A0 = Me.Txt
  loc_18575D4: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18575DC: var_AC = var_A4.Tag
  loc_18575F5: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857649: Set var_88 = Me.Txt
  loc_185764F: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  ADVANCEAC='")
  loc_1857657: var_D4 = var_90.Tag
  loc_1857660: var_9C = -1 & var_94
  loc_1857667: var_AC = var_9C & "' where ROOMTAXDUEAC ='"
  loc_1857678: Set var_A0 = Me.Txt
  loc_185767E: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857686: var_AC = var_A4.Tag
  loc_185769F: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18576F3: Set var_88 = Me.Txt
  loc_18576F9: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  OUTLETDISCAC='")
  loc_1857701: var_D4 = var_90.Tag
  loc_185770A: var_9C = -1 & var_94
  loc_1857711: var_AC = var_9C & "' where OUTLETDISCAC ='"
  loc_1857722: Set var_A0 = Me.Txt
  loc_1857728: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857730: var_AC = var_A4.Tag
  loc_1857749: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185779D: Set var_88 = Me.Txt
  loc_18577A3: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  OUTLETROUNDAC='")
  loc_18577AB: var_D4 = var_90.Tag
  loc_18577B4: var_9C = -1 & var_94
  loc_18577BB: var_AC = var_9C & "' where OUTLETROUNDAC ='"
  loc_18577CC: Set var_A0 = Me.Txt
  loc_18577D2: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18577DA: var_AC = var_A4.Tag
  loc_18577F3: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857847: Set var_88 = Me.Txt
  loc_185784D: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  CommissionAc='")
  loc_1857855: var_D4 = var_90.Tag
  loc_185785E: var_9C = -1 & var_94
  loc_1857865: var_AC = var_9C & "' where CommissionAc ='"
  loc_1857876: Set var_A0 = Me.Txt
  loc_185787C: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857884: var_AC = var_A4.Tag
  loc_185789D: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18578F1: Set var_88 = Me.Txt
  loc_18578F7: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  CANCELLATIONAC='")
  loc_18578FF: var_D4 = var_90.Tag
  loc_1857908: var_9C = -1 & var_94
  loc_185790F: var_AC = var_9C & "' where CANCELLATIONAC ='"
  loc_1857920: Set var_A0 = Me.Txt
  loc_1857926: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185792E: var_AC = var_A4.Tag
  loc_1857947: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185799B: Set var_88 = Me.Txt
  loc_18579A1: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  HALLROUNDOFF='")
  loc_18579A9: var_D4 = var_90.Tag
  loc_18579B2: var_9C = -1 & var_94
  loc_18579B9: var_AC = var_9C & "' where HALLROUNDOFF ='"
  loc_18579CA: Set var_A0 = Me.Txt
  loc_18579D0: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18579D8: var_AC = var_A4.Tag
  loc_18579F1: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857A45: Set var_88 = Me.Txt
  loc_1857A4B: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  HALLDISCAC='")
  loc_1857A53: var_D4 = var_90.Tag
  loc_1857A5C: var_9C = -1 & var_94
  loc_1857A63: var_AC = var_9C & "' where HALLDISCAC ='"
  loc_1857A74: Set var_A0 = Me.Txt
  loc_1857A7A: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857A82: var_AC = var_A4.Tag
  loc_1857A9B: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857AEF: Set var_88 = Me.Txt
  loc_1857AF5: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  CashPurchAc='")
  loc_1857AFD: var_D4 = var_90.Tag
  loc_1857B06: var_9C = -1 & var_94
  loc_1857B0D: var_AC = var_9C & "' where CashPurchAc ='"
  loc_1857B1E: Set var_A0 = Me.Txt
  loc_1857B24: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857B2C: var_AC = var_A4.Tag
  loc_1857B45: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857B99: Set var_88 = Me.Txt
  loc_1857B9F: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  OUTDOORSALEAC='")
  loc_1857BA7: var_D4 = var_90.Tag
  loc_1857BB0: var_9C = -1 & var_94
  loc_1857BB7: var_AC = var_9C & "' where OUTDOORSALEAC ='"
  loc_1857BC8: Set var_A0 = Me.Txt
  loc_1857BCE: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857BD6: var_AC = var_A4.Tag
  loc_1857BEF: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857C43: Set var_88 = Me.Txt
  loc_1857C49: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  INDOORSALEAC='")
  loc_1857C51: var_D4 = var_90.Tag
  loc_1857C5A: var_9C = -1 & var_94
  loc_1857C61: var_AC = var_9C & "' where INDOORSALEAC ='"
  loc_1857C72: Set var_A0 = Me.Txt
  loc_1857C78: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857C80: var_AC = var_A4.Tag
  loc_1857C99: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857CED: Set var_88 = Me.Txt
  loc_1857CF3: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  OUTDOORPARTYAC='")
  loc_1857CFB: var_D4 = var_90.Tag
  loc_1857D04: var_9C = -1 & var_94
  loc_1857D0B: var_AC = var_9C & "' where OUTDOORPARTYAC ='"
  loc_1857D1C: Set var_A0 = Me.Txt
  loc_1857D22: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857D2A: var_AC = var_A4.Tag
  loc_1857D43: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857D97: Set var_88 = Me.Txt
  loc_1857D9D: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  INDOORPARTYAC='")
  loc_1857DA5: var_D4 = var_90.Tag
  loc_1857DAE: var_9C = -1 & var_94
  loc_1857DB5: var_AC = var_9C & "' where INDOORPARTYAC ='"
  loc_1857DC6: Set var_A0 = Me.Txt
  loc_1857DCC: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857DD4: var_AC = var_A4.Tag
  loc_1857DED: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857E41: Set var_88 = Me.Txt
  loc_1857E47: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  DUMMYTRAVELAC='")
  loc_1857E4F: var_D4 = var_90.Tag
  loc_1857E58: var_9C = -1 & var_94
  loc_1857E5F: var_AC = var_9C & "' where DUMMYTRAVELAC ='"
  loc_1857E70: Set var_A0 = Me.Txt
  loc_1857E76: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857E7E: var_AC = var_A4.Tag
  loc_1857E97: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857EEB: Set var_88 = Me.Txt
  loc_1857EF1: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  BOOKINGPARTYAC='")
  loc_1857EF9: var_D4 = var_90.Tag
  loc_1857F02: var_9C = -1 & var_94
  loc_1857F09: var_AC = var_9C & "' where BOOKINGPARTYAC ='"
  loc_1857F1A: Set var_A0 = Me.Txt
  loc_1857F20: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857F28: var_AC = var_A4.Tag
  loc_1857F41: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857F95: Set var_88 = Me.Txt
  loc_1857F9B: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.EXPSHEET set  AGAC='")
  loc_1857FA3: var_D4 = var_90.Tag
  loc_1857FAC: var_9C = -1 & var_94
  loc_1857FB3: var_AC = var_9C & "' where AGAC ='"
  loc_1857FC4: Set var_A0 = Me.Txt
  loc_1857FCA: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1857FD2: var_AC = var_A4.Tag
  loc_1857FEB: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185803F: Set var_88 = Me.Txt
  loc_1858045: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.GIN set  PARTYCODE='")
  loc_185804D: var_D4 = var_90.Tag
  loc_1858056: var_9C = -1 & var_94
  loc_185805D: var_AC = var_9C & "' where PARTYCODE ='"
  loc_185806E: Set var_A0 = Me.Txt
  loc_1858074: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185807C: var_AC = var_A4.Tag
  loc_1858095: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18580CA: Me.Label1.Caption = "Updating PayCharge Table Please Wait........."
  loc_18580DC: Me.Label1.Refresh
  loc_1858110: Set var_88 = Me.Txt
  loc_1858116: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.PayCharge Set CompCode='")
  loc_185811E: var_D4 = var_90.Tag
  loc_1858127: var_9C = -1 & var_94
  loc_185812E: var_AC = var_9C & "' Where CompCode='"
  loc_185813F: Set var_A0 = Me.Txt
  loc_1858145: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185814D: var_AC = var_A4.Tag
  loc_1858166: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18581BA: Set var_88 = Me.Txt
  loc_18581C0: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.PayChargeH Set CompCode='")
  loc_18581C8: var_D4 = var_90.Tag
  loc_18581D1: var_9C = -1 & var_94
  loc_18581D8: var_AC = var_9C & "' Where CompCode='"
  loc_18581E9: Set var_A0 = Me.Txt
  loc_18581EF: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18581F7: var_AC = var_A4.Tag
  loc_1858210: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858245: Me.Label1.Caption = "Updating GuestProf Table Please Wait........."
  loc_1858257: Me.Label1.Refresh
  loc_185828B: Set var_88 = Me.Txt
  loc_1858291: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.GUestFolio Set [Company]='")
  loc_1858299: var_D4 = var_90.Tag
  loc_18582A2: var_9C = -1 & var_94
  loc_18582A9: var_AC = var_9C & "' Where [Company]='"
  loc_18582BA: Set var_A0 = Me.Txt
  loc_18582C0: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18582C8: var_AC = var_A4.Tag
  loc_18582E1: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858335: Set var_88 = Me.Txt
  loc_185833B: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.GUestFolio Set TravelAgent='")
  loc_1858343: var_D4 = var_90.Tag
  loc_185834C: var_9C = -1 & var_94
  loc_1858353: var_AC = var_9C & "' Where TravelAgent='"
  loc_1858364: Set var_A0 = Me.Txt
  loc_185836A: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1858372: var_AC = var_A4.Tag
  loc_185838B: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18583DF: Set var_88 = Me.Txt
  loc_18583E5: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.EXPSHEET set  AGAC='")
  loc_18583ED: var_D4 = var_90.Tag
  loc_18583F6: var_9C = -1 & var_94
  loc_18583FD: var_AC = var_9C & "' where AGAC ='"
  loc_185840E: Set var_A0 = Me.Txt
  loc_1858414: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185841C: var_AC = var_A4.Tag
  loc_1858435: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858489: Set var_88 = Me.Txt
  loc_185848F: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.GIN set  PARTYCODE='")
  loc_1858497: var_D4 = var_90.Tag
  loc_18584A0: var_9C = -1 & var_94
  loc_18584A7: var_AC = var_9C & "' where PARTYCODE ='"
  loc_18584B8: Set var_A0 = Me.Txt
  loc_18584BE: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18584C6: var_AC = var_A4.Tag
  loc_18584DF: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858533: Set var_88 = Me.Txt
  loc_1858539: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ITEMCATMAST set  ACNAME='")
  loc_1858541: var_D4 = var_90.Tag
  loc_185854A: var_9C = -1 & var_94
  loc_1858551: var_AC = var_9C & "' where ACNAME ='"
  loc_1858562: Set var_A0 = Me.Txt
  loc_1858568: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1858570: var_AC = var_A4.Tag
  loc_1858589: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18585DD: Set var_88 = Me.Txt
  loc_18585E3: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PAYCHARGE set COMPCODE ='")
  loc_18585EB: var_D4 = var_90.Tag
  loc_18585F4: var_9C = -1 & var_94
  loc_18585FB: var_AC = var_9C & "' where COMPCODE ='"
  loc_185860C: Set var_A0 = Me.Txt
  loc_1858612: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185861A: var_AC = var_A4.Tag
  loc_1858633: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858687: Set var_88 = Me.Txt
  loc_185868D: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PAYCHARGEH set COMPCODE ='")
  loc_1858695: var_D4 = var_90.Tag
  loc_185869E: var_9C = -1 & var_94
  loc_18586A5: var_AC = var_9C & "' where COMPCODE ='"
  loc_18586B6: Set var_A0 = Me.Txt
  loc_18586BC: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18586C4: var_AC = var_A4.Tag
  loc_18586DD: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858731: Set var_88 = Me.Txt
  loc_1858737: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PORDER set PARTYCODE ='")
  loc_185873F: var_D4 = var_90.Tag
  loc_1858748: var_9C = -1 & var_94
  loc_185874F: var_AC = var_9C & "' where PARTYCODE ='"
  loc_1858760: Set var_A0 = Me.Txt
  loc_1858766: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185876E: var_AC = var_A4.Tag
  loc_1858787: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18587DB: Set var_88 = Me.Txt
  loc_18587E1: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PORDER1 set PARTYCODE ='")
  loc_18587E9: var_D4 = var_90.Tag
  loc_18587F2: var_9C = -1 & var_94
  loc_18587F9: var_AC = var_9C & "' where PARTYCODE ='"
  loc_185880A: Set var_A0 = Me.Txt
  loc_1858810: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1858818: var_AC = var_A4.Tag
  loc_1858831: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858885: Set var_88 = Me.Txt
  loc_185888B: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PURCH1 set PARTY ='")
  loc_1858893: var_D4 = var_90.Tag
  loc_185889C: var_9C = -1 & var_94
  loc_18588A3: var_AC = var_9C & "' where PARTY ='"
  loc_18588B4: Set var_A0 = Me.Txt
  loc_18588BA: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_18588C2: var_AC = var_A4.Tag
  loc_18588DB: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185892F: Set var_88 = Me.Txt
  loc_1858935: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PURCH2 set PARTYCODE ='")
  loc_185893D: var_D4 = var_90.Tag
  loc_1858946: var_9C = -1 & var_94
  loc_185894D: var_AC = var_9C & "' where PARTYCODE ='"
  loc_185895E: Set var_A0 = Me.Txt
  loc_1858964: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_185896C: var_AC = var_A4.Tag
  loc_1858985: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18589D9: Set var_88 = Me.Txt
  loc_18589DF: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.REVMAST set ACCODE ='")
  loc_18589E7: var_D4 = var_90.Tag
  loc_18589F0: var_9C = -1 & var_94
  loc_18589F7: var_AC = var_9C & "' where ACCODE ='"
  loc_1858A08: Set var_A0 = Me.Txt
  loc_1858A0E: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1858A16: var_AC = var_A4.Tag
  loc_1858A2F: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858A83: Set var_88 = Me.Txt
  loc_1858A89: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.REVMAST set BANKCOMMAC ='")
  loc_1858A91: var_D4 = var_90.Tag
  loc_1858A9A: var_9C = -1 & var_94
  loc_1858AA1: var_AC = var_9C & "' where BANKCOMMAC ='"
  loc_1858AB2: Set var_A0 = Me.Txt
  loc_1858AB8: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1858AC0: var_AC = var_A4.Tag
  loc_1858AD9: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858B2D: Set var_88 = Me.Txt
  loc_1858B33: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.SALE1 set PARTY ='")
  loc_1858B3B: var_D4 = var_90.Tag
  loc_1858B44: var_9C = -1 & var_94
  loc_1858B4B: var_AC = var_9C & "' where PARTY ='"
  loc_1858B5C: Set var_A0 = Me.Txt
  loc_1858B62: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1858B6A: var_AC = var_A4.Tag
  loc_1858B83: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858BD7: Set var_88 = Me.Txt
  loc_1858BDD: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.STOCK set PARTYCODE ='")
  loc_1858BE5: var_D4 = var_90.Tag
  loc_1858BEE: var_9C = -1 & var_94
  loc_1858BF5: var_AC = var_9C & "' where PARTYCODE ='"
  loc_1858C06: Set var_A0 = Me.Txt
  loc_1858C0C: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1858C14: var_AC = var_A4.Tag
  loc_1858C2D: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858C81: Set var_88 = Me.Txt
  loc_1858C87: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.SUNDRYTYPEFIX set POSTAC ='")
  loc_1858C8F: var_D4 = var_90.Tag
  loc_1858C98: var_9C = -1 & var_94
  loc_1858C9F: var_AC = var_9C & "' where POSTAC ='"
  loc_1858CB0: Set var_A0 = Me.Txt
  loc_1858CB6: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1858CBE: var_AC = var_A4.Tag
  loc_1858CD7: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858D2B: Set var_88 = Me.Txt
  loc_1858D31: Call 0.Method_Proc_173_12_1858DD40 (CInt(1), var_90, var_94, "UPDATE " & arg_C & ".dbo.TELCALLTYPE SET ACCODE='")
  loc_1858D39: var_D4 = var_90.Tag
  loc_1858D42: var_9C = -1 & var_94
  loc_1858D49: var_AC = var_9C & "' WHERE ACCODE ='"
  loc_1858D5A: Set var_A0 = Me.Txt
  loc_1858D60: Call 0.Method_Proc_173_12_1858DD40 (CInt(0), var_A4, var_A8)
  loc_1858D68: var_AC = var_A4.Tag
  loc_1858D81: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858DB6: Me.Label1.Caption = "Completed."
  loc_1858DC8: Me.Label1.Refresh
  loc_1858DD0: Exit Sub
End Sub
