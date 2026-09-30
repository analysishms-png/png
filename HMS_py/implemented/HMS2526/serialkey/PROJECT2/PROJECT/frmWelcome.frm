VERSION 5.00
Begin VB.Form frmWelcome
  BackColor = &HC8E3E0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4485
  ClientHeight = 3180
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin TextBox Txt
    Index = 7
    Left = 1215
    Top = 2100
    Width = 1440
    Height = 270
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    Left = 1215
    Top = 2385
    Width = 1440
    Height = 270
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdPev
    Caption = "<"
    Left = 1620
    Top = 2745
    Width = 570
    Height = 225
    TabIndex = 14
  End
  Begin CommandButton CmdNext
    Caption = ">"
    Left = 2190
    Top = 2745
    Width = 570
    Height = 225
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 5
    Left = 1215
    Top = 1815
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    Left = 1215
    Top = 1530
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    Left = 1215
    Top = 1245
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    Left = 1215
    Top = 960
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    Left = 1215
    Top = 675
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 1215
    Top = 390
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin CommandButton Command1
    Caption = "X"
    Left = 4260
    Top = 15
    Width = 195
    Height = 225
    TabIndex = 0
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 375
    Visible = 0   'False
    TabIndex = 20
  End
  Begin Label Label9
    Caption = "Birth Date"
    Left = 150
    Top = 2130
    Width = 855
    Height = 195
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label8
    Caption = "Anniversary"
    Left = 150
    Top = 2400
    Width = 1035
    Height = 195
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label7
    Caption = "Special Occasions"
    Left = 1470
    Top = 15
    Width = 1515
    Height = 195
    TabIndex = 15
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Shape Shape1
    Left = 105
    Top = 270
    Width = 4290
    Height = 2805
    Shape = 4
    BorderWidth = 2
  End
  Begin Label Label6
    Caption = "E-mail Id"
    Left = 165
    Top = 1845
    Width = 750
    Height = 195
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label5
    Caption = "Country"
    Left = 165
    Top = 1575
    Width = 675
    Height = 195
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label4
    Caption = "City"
    Left = 165
    Top = 1305
    Width = 330
    Height = 195
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label3
    Caption = "Address 2"
    Left = 165
    Top = 1020
    Width = 840
    Height = 195
    TabIndex = 3
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label2
    Caption = "Address 1"
    Left = 165
    Top = 720
    Width = 840
    Height = 195
    TabIndex = 2
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "Guest Name"
    Left = 180
    Top = 450
    Width = 1020
    Height = 195
    TabIndex = 1
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "frmWelcome"

Private global_52 As Integer

Private Sub CmdPev_Click() 'EC2CD0
  'Data Table: 43796C
  Dim Me As Recordset15
  loc_EC2C2A: Me.MovePrevious
  loc_EC2C3B: Me.CmdNext.Enabled = True
  loc_EC2C57: If (Me.BOF = 0) Then
  loc_EC2C5A:   Call Proc_84_9_11630C0()
  loc_EC2C6B:   Me.CmdNext.Enabled = True
  loc_EC2C73: End If
  loc_EC2C87: If (Me.BOF = &HFF) Then
  loc_EC2C96:   Me.CmdPev.Enabled = False
  loc_EC2C9E: End If
  loc_EC2CB5: If (Me.AbsolutePosition = -2) Then
  loc_EC2CC4:   Me.CmdPev.Enabled = False
  loc_EC2CCC: End If
  loc_EC2CCC: Exit Sub
End Sub

Private Sub CmdNext_Click() 'EC2DB0
  'Data Table: 43796C
  Dim Me As Recordset15
  loc_EC2D0A: Me.MoveNext
  loc_EC2D1B: Me.CmdPev.Enabled = True
  loc_EC2D37: If (Me.EOF = 0) Then
  loc_EC2D3A:   Call Proc_84_9_11630C0()
  loc_EC2D4B:   Me.CmdPev.Enabled = True
  loc_EC2D53: End If
  loc_EC2D67: If (Me.EOF = &HFF) Then
  loc_EC2D76:   Me.CmdNext.Enabled = False
  loc_EC2D7E: End If
  loc_EC2D95: If (Me.AbsolutePosition = -3) Then
  loc_EC2DA4:   Me.CmdNext.Enabled = False
  loc_EC2DAC: End If
  loc_EC2DAC: Exit Sub
End Sub

Private Sub Command1_Click() 'E15D9C
  'Data Table: 43796C
  loc_E15D91: Me.Global.Unload Me
  loc_E15D99: Exit Sub
End Sub

Private Sub Form_Load() 'FA41EC
  'Data Table: 43796C
  Dim var_8C As String
  Dim unk_43797C As Connection15
  loc_FA4074: On Error Resume Next
  loc_FA4084: If (global_60 = vbNullString) Then
  loc_FA40AD:   unk_43797C.Execute "Select * from GuestProf WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_AC, -1
  loc_FA40BE:   Set global_56 = var_B0
  loc_FA40D6: Else
  loc_FA40F5:   var_8C = "Select * from GuestProf where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND BirthDate is not NULL  and Code='"
  loc_FA410F:   unk_43797C.Execute var_8C & global_60 & "'", var_AC, -1
  loc_FA4120:   Set global_56 = var_B0
  loc_FA4139: End If
  loc_FA4143: Call 0.Method_Me0 (var_C4, var_B0)
  loc_FA4154: var_B0 = Me.Global.Screen
  loc_FA4170: Call 0.Method_arg_74 ((Screen.Width - (var_C4 + CDbl(&H32))))
  loc_FA418E: var_C0 = Screen.Height
  loc_FA419F: Call 0.Method_arg_7C ((var_C0 - CDbl(800)))
  loc_FA41AF: Call 0.Method_arg_58 (var_C0)
  loc_FA41D5: SetWindowPos(var_C0, -1, 0, 0, 0, 0, &H53)
  loc_FA41DD: DoEvents()
  loc_FA41E4: Call Proc_84_9_11630C0(Me.Global.Screen)
  loc_FA41EB: Exit Sub
End Sub

Private Sub Form_Activate() 'E6CAB8
  'Data Table: 43796C
  loc_E6CA60: On Error Resume Next
  loc_E6CA6B: Call 0.Method_arg_78 (var_90)
  loc_E6CA7C: var_88 = Me.Global.Screen
  loc_E6CA99: If (CSng((Screen.Height - CDbl(800))) <> var_90) Then
  loc_E6CA9C: End If
  loc_E6CAA0: Call Proc_84_7_EF4AEC()
  loc_E6CAAC: Sleep(&H3E8)
  loc_E6CAB4: Exit Sub
  loc_E6CAB7:  = 
End Sub

Public Property Get GuestCode() 'E1DB9C
  'Data Table: 43796C
  loc_E1DB8F: var_98 = CVar(global_60) 'Variant
  loc_E1DB93: GuestCode = 
End Sub

Public Property Let GuestCode(vNewValue) 'E0F8C4
  'Data Table: 43796C
  loc_E0F8BC: global_60 = vNewValue
  loc_E0F8C0: Exit Sub
End Sub

Public Sub Proc_84_7_EF4AEC
  'Data Table: 43796C
  loc_EF4A14: On Error Resume Next
  loc_EF4A20: var_94.Visible = True
  loc_EF4A2C: Call 0.Method_Me8 (var_B8)
  loc_EF4A38: global_52 = CInt(var_B8)
  loc_EF4A44: Call 0.Method_MeC (CDbl(0))
  loc_EF4A49: ' Referenced from: EF4A8A
  loc_EF4A51: Call 0.Method_Me8 (var_B8)
  loc_EF4A61: If (var_B8 < CDbl(global_52)) Then
  loc_EF4A6C:   Call 0.Method_Me8 (var_B8)
  loc_EF4A7C:   Call 0.Method_MeC ((var_B8 + CDbl(1)))
  loc_EF4A83:   DoEvents()
  loc_EF4A8A:   GoTo loc_EF4A49
  loc_EF4A8D: End If
  loc_EF4A95: Call 0.Method_Me0 (var_B8)
  loc_EF4AA1: global_52 = CInt(var_B8)
  loc_EF4AA4: ' Referenced from: EF4AE5
  loc_EF4AAC: Call 0.Method_Me0 (var_B8, global_52)
  loc_EF4ABC: If (var_B8 < CDbl(global_52)) Then
  loc_EF4AC7:   Call 0.Method_Me0 (var_B8)
  loc_EF4AD7:   Call 0.Method_Me4 ((var_B8 + CDbl(1)))
  loc_EF4ADE:   DoEvents()
  loc_EF4AE5:   GoTo loc_EF4AA4
  loc_EF4AE8: End If
  loc_EF4AEA: Exit Sub
End Sub

Public Sub Proc_84_8_E8E5EC
  'Data Table: 43796C
  loc_E8E570: On Error Resume Next
  loc_E8E57B: Call 0.Method_Me8 (var_88)
  loc_E8E587: global_52 = CInt(var_88)
  loc_E8E58A: ' Referenced from: E8E5E4
  loc_E8E592: Call 0.Method_Me8 (var_88)
  loc_E8E59E: If (var_88 > CDbl(0)) Then
  loc_E8E5A9:   Call 0.Method_Me8 (var_88)
  loc_E8E5B9:   Call 0.Method_MeC ((var_88 - CDbl(1)))
  loc_E8E5C6:   Call 0.Method_arg_78 (var_88)
  loc_E8E5D6:   Call 0.Method_arg_7C ((var_88 + CDbl(1)))
  loc_E8E5DD:   DoEvents()
  loc_E8E5E4:   GoTo loc_E8E58A
  loc_E8E5E7: End If
  loc_E8E5E9: Exit Sub
End Sub

Public Sub Proc_84_9_11630C0
  'Data Table: 43796C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim var_126 As Integer
  Dim var_A4 As Fields15
  Dim var_124 As TextBox
  loc_1162D18: On Error Goto loc_11630B9
  loc_1162D32: If (Me.RecordCount > 0) Then
  loc_1162D71:   Set var_A4 = Me.Txt
  loc_1162D77:   Call 0.Method_Proc_84_9_11630C00 (CInt(0), var_A8)
  loc_1162D7F:   var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1162DCE:   Set var_A4 = Me.Txt
  loc_1162DD4:   Call 0.Method_Proc_84_9_11630C00 (CInt(1), var_A8)
  loc_1162DDC:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add1")))
  loc_1162E29:   Set var_A4 = Me.Txt
  loc_1162E2F:   Call 0.Method_Proc_84_9_11630C00 (CInt(2), var_A8)
  loc_1162E37:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Add2")))
  loc_1162E84:   Set var_A4 = Me.Txt
  loc_1162E8A:   Call 0.Method_Proc_84_9_11630C00 (CInt(3), var_A8)
  loc_1162E92:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CityName")))
  loc_1162EDF:   Set var_A4 = Me.Txt
  loc_1162EE5:   Call 0.Method_Proc_84_9_11630C00 (CInt(4), var_A8)
  loc_1162EED:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CountryName")))
  loc_1162F3A:   Set var_A4 = Me.Txt
  loc_1162F40:   Call 0.Method_Proc_84_9_11630C00 (CInt(5), var_A8)
  loc_1162F48:   var_A8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("EmailId")))
  loc_1162FDC:   Set var_120 = Me.Txt
  loc_1162FE2:   Call 0.Method_Proc_84_9_11630C00 (CInt(7), var_124)
  loc_1162FEA:   var_124.Text = CStr(IIf(IsNull(CVar(Me.Fields.Item("BirthDate"))), vbNullString, CVar(Me.Fields.Item("BirthDate"))))
  loc_1163035:   var_126 = IsNull(CVar(Me.Fields.Item("Anniversary")))
  loc_116308A:   Set var_120 = Me.Txt
  loc_1163090:   Call 0.Method_Proc_84_9_11630C00 (CInt(6), var_124, CStr(IIf(var_126, vbNullString, CVar(Me.Fields.Item("Anniversary")))))
  loc_1163098:   var_124.Text = var_126
  loc_11630B8: End If
  loc_11630B8: Exit Sub
  loc_11630B9: ' Referenced from: 1162D18
  loc_11630B9: Proc_6_60_E63754(var_126)
  loc_11630BE: Exit Sub
End Sub
