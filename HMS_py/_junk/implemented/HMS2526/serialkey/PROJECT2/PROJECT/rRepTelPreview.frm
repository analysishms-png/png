VERSION 5.00
Begin VB.Form rRepTelPreview
  Caption = "ReprtForm"
  ForeColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form3"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 345
  ClientWidth = 11580
  ClientHeight = 7710
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Text2
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 630
    Width = 10935
    Height = 270
    TabIndex = 9
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
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
    ForeColor = &H0&
    Left = 0
    Top = 360
    Width = 10935
    Height = 270
    TabIndex = 8
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
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
    ForeColor = &H0&
    Left = 0
    Top = 900
    Width = 10935
    Height = 270
    TabIndex = 7
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
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
    ForeColor = &H0&
    Left = 0
    Top = 1170
    Width = 10935
    Height = 270
    TabIndex = 6
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &H0&
    Left = 0
    Top = -15
    Width = 5805
    Height = 375
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CommandButton BtnPrint
      Caption = "&DosPrint"
      Index = 1
      Left = 3480
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 5
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
    Begin CommandButton BTNRefresh
      Caption = "Para&meters"
      Left = 15
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 4
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
    Begin CommandButton BTNEXIT
      Caption = "E&xit"
      Index = 0
      Left = 4635
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 3
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
    Begin CommandButton BtnPrint
      Caption = "P&review"
      Index = 0
      Left = 1170
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 2
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
    Begin CommandButton BtnPrint
      Caption = "&WinPrint"
      Index = 2
      Left = 2325
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 1
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
  End
  Begin MSHFlexGrid FGrid1
    Left = 15
    Top = 1440
    Width = 14415
    Height = 7830
    TabIndex = 10
  End
End

Attribute VB_Name = "rRepTelPreview"

Private global_60 As Integer
Private global_64 As Integer

Private Sub BTNRefresh_Click() 'E7E728
  'Data Table: 433C3C
  loc_E7E6CA: MemVar_1F95124 = Me
  loc_E7E6D8: Set global_72 = New rRepTel
  loc_E7E6EB: Call rRepTel.global_52Put(global_52)
  loc_E7E6F6: Call 0.Method_arg_50 (var_90)
  loc_E7E704: Call 0.Method_arg_54 (var_90)
  loc_E7E71F: Call 0.Method_arg_2B0 (1)
  loc_E7E724: Exit Sub
End Sub

Private Sub btnExit_Click() 'E16508
  'Data Table: 433C3C
  loc_E164FD: Me.Global.Unload Me
  loc_E16505: Exit Sub
  loc_E16506: CExtInstUnk
End Sub

Private Sub Form_Load() '11474DC
  'Data Table: 433C3C
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_B0 As Variant
  loc_1147140: On Error Goto loc_11474D5
  loc_114714B: Call 0.Method_MeC (CDbl(7550))
  loc_1147158: Call 0.Method_Me4 (CDbl(11850))
  loc_114716B: Me.Text1.Left = CDbl(0)
  loc_1147181: Me.Text2.Left = CDbl(0)
  loc_1147197: Me.Text3.Left = CDbl(0)
  loc_11471AD: Me.Text4.Left = CDbl(0)
  loc_11471C7: Me.FGrid1.Left = CVar(CDbl(0))
  loc_1147205: Me.Text1.Top = (Me.Frame2.Top + Me.Frame2.Height)
  loc_1147249: Me.Text2.Top = (Me.Text1.Top + Me.Text1.Height)
  loc_114728D: Me.Text3.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_11472D1: Me.Text4.Top = (Me.Text3.Top + Me.Text3.Height)
  loc_11472E6: Set var_B0 = Me.Text4
  loc_11472FE: var_AC = Me.Text4.Top
  loc_114730A: var_98 = CVar((var_AC + var_B0.Height)) 'Single
  loc_1147319: Me.FGrid1.Top = CVar(CDbl(0))
  loc_114732D: Call 0.Method_Me0 (var_AC)
  loc_1147344: Me.Text1.Width = (var_AC - CDbl(&H32))
  loc_1147352: Call 0.Method_Me0 (var_AC)
  loc_1147369: Me.Text2.Width = (var_AC - CDbl(&H32))
  loc_1147377: Call 0.Method_Me0 (var_AC)
  loc_114738E: Me.Text3.Width = (var_AC - CDbl(&H32))
  loc_114739C: Call 0.Method_Me0 (var_AC)
  loc_11473B3: Me.Text4.Width = (var_AC - CDbl(&H32))
  loc_11473C1: MemVar_1F95124 = Me
  loc_11473CF: Set global_72 = New rRepTel
  loc_11473E2: Call rRepTel.global_52Put(global_52)
  loc_11473F8: If (global_52 = "EpabxCallRep") Then
  loc_1147401:   Call 0.Method_arg_54 ("Epabx Calls Report")
  loc_1147406: End If
  loc_114740F: Call rRepTel.global_92Put(MemVar_1F95078)
  loc_114741D: Call rRepTel.global_96Put(MemVar_1F953D8)
  loc_1147428: Call 0.Method_arg_50 (var_C0)
  loc_1147436: Call 0.Method_arg_54 (var_C0)
  loc_114744F: Set var_88 = Me.Text3
  loc_1147455: Call 0.Method_Form_Load0 (0, var_B0)
  loc_114745D: var_B0.Tag = MemVar_1F95078
  loc_114747A: Set var_88 = Me.Text3
  loc_1147480: Call 0.Method_Form_Load0 (0, var_B0)
  loc_1147488: var_B0.Text = MemVar_1F953D8
  loc_114749A: Call 0.Method_arg_50 (var_C0)
  loc_11474B1: (var_C0).Caption = 
  loc_11474CF: Call 0.Method_arg_2B0 (1)
  loc_11474D4: Exit Sub
  loc_11474D5: ' Referenced from: 1147140
  loc_11474D5: Proc_6_60_E63754(var_A8)
  loc_11474DA: Exit Sub
  loc_11474DB: () = 
End Sub

Private Sub Form_Resize() 'EB25B0
  'Data Table: 433C3C
  Dim var_98 As Variant
  loc_EB2520: On Error Resume Next
  loc_EB252B: Call 0.Method_arg_100 (var_88)
  loc_EB2538: var_98 = CVar((var_88 - CDbl(250))) 'Single
  loc_EB2547: Me.FGrid1.Width = var_98
  loc_EB257B: Call 0.Method_arg_108 (var_88)
  loc_EB2590: var_98 = CVar(((var_88 - (Me.Text4.Top + Me.Text4.Height)) - CDbl(250))) 'Single
  loc_EB259F: Me.FGrid1.Height = var_98
  loc_EB25AF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0256C
  'Data Table: 433C3C
  loc_E02565: MemVar_1F951E8 = Nothing
  loc_E02569: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E03124
  'Data Table: 433C3C
  loc_E03118: On Error Goto loc_E0311C
  loc_E0311B: Exit Sub
  loc_E0311C: ' Referenced from: E03118
  loc_E0311C: Proc_6_60_E63754()
  loc_E03121: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 'E16684
  'Data Table: 433C3C
  loc_E16670: Set var_88 = Me.FGrid1
  loc_E16681: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '145857C
  'Data Table: 433C3C
  Dim unk_433C75 As Connection15
  Dim var_A4 As Variant
  Dim var_94 As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As String
  Dim var_C4 As Fields15
  Dim var_128 As Variant
  Dim var_108 As String
  Dim var_C0 As String
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim MemVar_1F953D0 As String
  Dim var_13C As String
  Dim var_118 As Variant
  loc_1457A24: On Error Goto loc_1458575
  loc_1457A2C: global_60 = &HFF
  loc_1457A45: unk_433C75.Execute "Select * From FAEnviro", var_B4, -1
  loc_1457A50: Set var_94 = var_B8
  loc_1457A68: var_B8 = var_94.Fields
  loc_1457ACC: var_138 = IIf((Proc_6_38_E69628(CVar(var_B8.Item("daterfill")), var_B8) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_1457AD5: MemVar_1F953C4 = CStr(var_138)
  loc_1457B69: var_138 = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_1457B72: MemVar_1F953C8 = CStr(var_138)
  loc_1457C06: var_138 = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_1457C33: var_A4 = "linefiller"
  loc_1457C47: var_BC = var_94.Fields.Item(var_A4)
  loc_1457C5E: var_D4 = "linefiller"
  loc_1457C86: var_108 = "-"
  loc_1457C94: var_C0 = Proc_6_38_E69628(CVar(var_BC), CStr(var_138))
  loc_1457CAC: MemVar_1F953D0 = CStr(IIf((var_C0 = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item(var_D4))))))
  loc_1457CF0: If (CStr(Me.FGrid1.Tag) = "EpabxCallRep") Then
  loc_1457CF6:   var_88 = "EpabxCallRep"
  loc_1457CF9: End If
  loc_1457CFF: Call 0.Method_arg_50 (var_C0, MemVar_1F953D0)
  loc_1457D1C: global_56 = CStr(Ucase(CVar(var_C0)))
  loc_1457D3C: If ((global_60 = 0) Or (var_88 = vbNullString)) Then
  loc_1457D3F:   Exit Sub
  loc_1457D40: End If
  loc_1457D44: Set var_B8 = Me.FGrid1
  loc_1457D81: Set var_C4 = var_B8.DataSource
  loc_1457D87: CreateFieldDefFile(var_C4, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_1457DB5: var_C0 = "\" & var_88
  loc_1457DC9: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C0 & ".RPT", var_A4, var_B8)
  loc_1457DD4: MemVar_1F951E8 = var_B8
  loc_1457DF0: Set var_B8 = Me.FGrid1
  loc_1457DF6: var_B4 = var_B8.DataSource
  loc_1457E01: CVarUnk
  loc_1457E0F: Call 0.Method_arg_64 (var_BC, var_B4, var_A4)
  loc_1457E17: Call 0.Method_arg_2C (var_D4, var_B4)
  loc_1457E30: Call 0.Method_arg_150 (global_60)
  loc_1457E46: Call 0.Method_arg_90 (var_B8, var_14C)
  loc_1457E4E: Call 0.Method_arg_24 (var_8A)
  loc_1457E5A: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_1457E73:   Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1457E7B:   Call 0.Method_arg_20 (var_BC)
  loc_1457E83:   Call 0.Method_arg_30 (var_C0)
  loc_1457E99:   var_160 = Ucase(CVar(var_C0)) 'Variant
  loc_1457EC9:   If (var_160 = Ucase("Title")) Then
  loc_1457ED5:     Call 0.Method_arg_50 (var_C0)
  loc_1457EF8:     Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1457F00:     Call 0.Method_arg_20 (var_BC)
  loc_1457F08:     Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_1457F20:   Else
  loc_1457F42:     If (var_160 = Ucase("BetweenDate")) Then
  loc_1457F4F:       Set var_B8 = Me.Text1
  loc_1457F78:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1457F80:       Call 0.Method_arg_20 (var_C4)
  loc_1457F88:       Call 0.Method_arg_38 ("'" & var_B8.Text & "'")
  loc_1457FA2:     Else
  loc_1457FC4:       If (var_160 = Ucase("Dater")) Then
  loc_1457FE8:         Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1457FF0:         Call 0.Method_arg_20 (var_BC)
  loc_1457FF8:         Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_145800E:       Else
  loc_1458030:         If (var_160 = Ucase("Pager")) Then
  loc_145803A:           var_C0 = "'" & MemVar_1F953C8
  loc_1458054:           Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_145805C:           Call 0.Method_arg_20 (var_BC)
  loc_1458064:           Call 0.Method_arg_38 (var_C0 & "'")
  loc_1458077:         End If
  loc_1458077:       End If
  loc_1458077:     End If
  loc_1458077:   End If
  loc_145807A: Next var_150 'Integer
  loc_1458083: Set var_B8 = Me.FGrid1
  loc_14580A2: If (CStr(var_B8.Tag) = "EpabxCallRep") Then
  loc_14580B6:   Call 0.Method_arg_90 (var_B8, var_14C)
  loc_14580BE:   Call 0.Method_arg_24 (var_8A)
  loc_14580CA:   For var_16C =  To CInt(var_14C): 1 = var_16C 'Integer
  loc_14580E3:     Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_14580EB:     Call 0.Method_arg_20 (var_BC)
  loc_14580F3:     Call 0.Method_arg_30 (var_C0)
  loc_1458109:     var_17C = Ucase(CVar(var_C0)) 'Variant
  loc_1458139:     If (var_17C = Ucase("ForType")) Then
  loc_145818A:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1458192:       Call 0.Method_arg_20 (var_C4)
  loc_145819A:       Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_14581B9:     Else
  loc_14581DB:       If (var_17C = Ucase("ForExtension")) Then
  loc_145822C:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1458234:         Call 0.Method_arg_20 (var_C4)
  loc_145823C:         Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_145825B:       Else
  loc_145827D:         If (var_17C = Ucase("ForRoomNo")) Then
  loc_14582AD:           var_118 = "'" & Left(CVar(Me.Text4.Text), &H96) 
  loc_14582B6:           var_128 = var_118 & "'" 
  loc_14582CE:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_14582D6:           Call 0.Method_arg_20 (var_C4)
  loc_14582DE:           Call 0.Method_arg_38 (CStr(var_128))
  loc_14582FA:         End If
  loc_14582FA:       End If
  loc_14582FA:     End If
  loc_14582FD:   Next var_16C 'Integer
  loc_1458308:   If (Index = 1) Then
  loc_1458318:     ReDim Preserve var_90(0 To 3)
  loc_145834D:     var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1458385:     var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_14583BD:     var_90(2) = vbNullString & Me.Text3.Text & vbNullString
  loc_14583F5:     var_90(3) = vbNullString & Me.Text4.Text & vbNullString
  loc_1458402:   End If
  loc_1458402: End If
  loc_1458408: If (Index = 1) Then
  loc_145842E:   If (CStr(Me.FGrid1.Tag) = "PurchaseReg") Then
  loc_145844C:     var_B4 = "Please set 132 col. in your Printer & put it on."
  loc_1458452:     MsgBox(var_B4, &H40, "Paper Setting", var_118, var_128)
  loc_145846E:     var_13C = 0
  loc_1458477:     var_C0 = "C"
  loc_1458492:     Proc_34_0_14D9290(var_B4, Me.FGrid1, global_56)
  loc_14584AB:   Else
  loc_14584C6:     var_B4 = "Please set 80 col. in your Printer & put it on."
  loc_14584CC:     MsgBox(var_B4, &H40, "Paper Setting", var_118, var_128)
  loc_14584E8:     var_13C = 0
  loc_145850C:     Proc_34_0_14D9290(var_B4, Me.FGrid1, global_56, var_90, "N")
  loc_1458522:   End If
  loc_1458525: Else
  loc_1458541:   Set var_B8 = MemVar_1F951E8 
  loc_145854D:   Proc_6_99_1484404(var_B8, Index, global_56, &HFF, Nothing)
  loc_1458558:   MemVar_1F951E8 = var_B8
  loc_1458563: End If
  loc_1458568: global_64 = 0
  loc_1458570: MemVar_1F951E8 = Nothing
  loc_1458574: Exit Sub
  loc_1458575: ' Referenced from: 1457A24
  loc_1458575: Proc_6_60_E63754(global_64, var_13C, var_90)
  loc_145857A: Exit Sub
End Sub

Public Function global_52Get() '4344C4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4344D3
  global_52 = Value
End Sub

Public Sub RetBack(mParamForm) 'E69E24
  'Data Table: 433C3C
  loc_E69DDF: On Error Goto loc_E69E1C
  loc_E69DF3: If (global_52 = "EpabxCallRep") Then
  loc_E69E03:   Set var_90 = mParamForm 
  loc_E69E0A:   Call EpabxCallRep(var_90, 0, 0)
  loc_E69E15:   Set var_88 = var_90
  loc_E69E1B: End If
  loc_E69E1B: Exit Sub
  loc_E69E1C: ' Referenced from: E69DDF
  loc_E69E1C: Proc_6_60_E63754()
  loc_E69E21: Exit Sub
End Sub

Public Sub EpabxCallRep(formName, FRow, Fcol) '159EDA4
  'Data Table: 433C3C
  Dim var_118 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_1CC As String
  Dim var_1B8 As Variant
  Dim var_B8 As Variant
  Dim var_1E0 As Variant
  Dim var_98 As Double
  Dim var_8C As Recordset15
  Dim var_1FC As Recordset15
  Dim var_20C As Recordset15
  Dim var_88 As Recordset15
  Dim var_218 As MSHFlexGrid
  loc_159DBF0: On Error Goto loc_159ED93
  loc_159DBF3: var_118 = "WHERE E.CALL_START_DATE Between "
  loc_159DC0D: VarLateMemCallLdRfVar
  loc_159DC18: Proc_6_7_F26918(var_108, Me.FGrid, 1)
  loc_159DC29: var_148 = 0 & var_108 & " And " 
  loc_159DC42: VarLateMemCallLdRfVar
  loc_159DC4D: Proc_6_7_F26918(var_1B8, Me.FGrid, 1)
  loc_159DC5A: var_90 = CStr(1 & var_1B8)
  loc_159DC72: var_A8 = 2
  loc_159DC79: var_C8 = 1
  loc_159DC9E: If (Me.FGrid.TextMatrix = "Room") Then
  loc_159DCA8:   var_90 = var_90 & " And T.Type='Room'"
  loc_159DCAE: Else
  loc_159DCAE:   var_A8 = 2
  loc_159DCB5:   var_C8 = 1
  loc_159DCDA:   If (Me.FGrid.TextMatrix = "Department") Then
  loc_159DCE4:     var_90 = var_90 & " And T.Type='Department'"
  loc_159DCE7:   End If
  loc_159DCE7: End If
  loc_159DCE7: var_A8 = 3
  loc_159DCEE: var_C8 = 1
  loc_159DD13: If CBool(Me.FGrid.TextMatrix <> vbNullString) Then
  loc_159DD1D:   var_F8 = CVar(var_90 & " And E.PNT_NO ='") 'String
  loc_159DD20:   var_A8 = 3
  loc_159DD4B:   var_90 = CStr(1 & Me.FGrid.TextMatrix & "'")
  loc_159DD5B: End If
  loc_159DD5B: var_A8 = 1
  loc_159DD84: If (Me.Check1.Value = 0) Then
  loc_159DDA7:   var_90 = CStr(CVar(var_90 & " And E.Extension in ( ") & Me.GridString1 & ") ")
  loc_159DDB5: End If
  loc_159DDB5: var_A8 = 2
  loc_159DDDE: If (Me.Check1.Value = 0) Then
  loc_159DE01:   var_90 = CStr(CVar(var_90 & " And T.RoomNo in ( ") & Me.GridString2 & ") ")
  loc_159DE0F: End If
  loc_159DE12: var_A8 = 0
  loc_159DE4F: var_108 = Me.FGrid
  loc_159DE69: Set var_1E0 = 1(1 & CStr(var_108.TextMatrix))
  loc_159DE6F: var_108.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_159DE8F: var_A8 = 3
  loc_159DE96: var_C8 = 1
  loc_159DEBB: If CBool(Me.FGrid.TextMatrix <> vbNullString) Then
  loc_159DEBE:   var_118 = "For Type :"
  loc_159DEC3:   var_A8 = 2
  loc_159DEFD:   var_148 = Me.FGrid
  loc_159DF1F:   Set var_1E0 = 3(CStr(1 & var_148.TextMatrix & vbNullString))
  loc_159DF25:   var_148.TextBox.Text = 1 & Me.FGrid.TextMatrix & "      For PNT No. :"
  loc_159DF46: Else
  loc_159DF5B:   var_E8 = Me.FGrid
  loc_159DF7D:   Set var_1E0 = 2(CStr(1 & var_E8.TextMatrix & "      For PNT No. :All"))
  loc_159DF83:   var_E8.TextBox.Text = "For Type :"
  loc_159DF99: End If
  loc_159DF99: var_A8 = 1
  loc_159DFC2: If (Me.Check1.Value = 0) Then
  loc_159DFFC:   Set var_1E0 = Me.Text3
  loc_159E002:   Me.Text3.Text = CStr("For Extension :" & Left(Me.FormulaString1, &H64) & vbNullString)
  loc_159E01B: Else
  loc_159E028:   Me.Text3.Text = "For Extension :All"
  loc_159E030: End If
  loc_159E030: var_A8 = 2
  loc_159E037: var_C8 = 1
  loc_159E04D: var_118 = "Room"
  loc_159E05C: If (Me.FGrid.TextMatrix = var_118) Then
  loc_159E05F:   var_A8 = 2
  loc_159E076:   var_C8 = 0
  loc_159E088:   If (Me.Check1.Value = var_C8) Then
  loc_159E08E:     var_E8 = Me.FormulaString2
  loc_159E095:     var_A8 = "For Room No. :"
  loc_159E0B1:     var_B8 = vbNullString
  loc_159E0C2:     Set var_1E0 = Me.Text4
  loc_159E0C8:     Me.Text4.Text = CStr(var_A8 & Left(var_E8, &H64) & var_B8)
  loc_159E0E1:   Else
  loc_159E0EE:     Me.Text4.Text = "For Room No. :All"
  loc_159E0F6:   End If
  loc_159E0F9: Else
  loc_159E100:   Set var_1E0 = Me.Text4
  loc_159E106:   var_1E0.Text = vbNullString
  loc_159E10E: End If
  loc_159E114: Call 0.Method_arg_54 ("EPBAX Call Report", var_E8, var_A8, var_C8, var_A8, var_E8, var_A8)
  loc_159E126: Call Proc_103_12_10251CC(New, var_1E0, var_A8, var_118)
  loc_159E12E: Set var_88 = var_1E0
  loc_159E145: var_1CC = "SELECT E.Id,E.CALL_START_DATE,E.PNT_NO,E.Extension,T.Description,T.RoomNo,E.DIALED_NO,E.CALL_DURATION,E.CALL_AMT,E.CALL_START_TIME FROM EPABX_DATA E LEFT JOIN TelExt T On E.Extension=T.Extension  " & var_90
  loc_159E155: Me.Connection15.Execute var_1CC & " Order By E.CALL_START_DATE,E.PNT_NO", var_E8, -1
  loc_159E160: Set var_8C = var_1E0
  loc_159E173: var_98 = CDbl(0)
  loc_159E18A: If (var_8C.RecordCount > 0) Then
  loc_159E190:   var_8C.MoveFirst
  loc_159E195:   ' Referenced from: 159E607
  loc_159E1A4:   If Not(var_8C.EOF) Then
  loc_159E1AA:     Set var_1FC = var_88 
  loc_159E1B9:     var_1FC.AddNew var_A8, var_B8
  loc_159E1E3:     var_1FC.Fields.Item("MLine").Value = vbNullString
  loc_159E232:     var_1FC.Fields.Item("Id").Value = CVar(var_8C.Fields.Item("ID"))
  loc_159E28A:     var_C8 = "CallDate"
  loc_159E2A6:     var_1FC.Fields.Item(var_C8).Value = Format(CVar(var_8C.Fields.Item("CALL_START_DATE")), "dd/MM/yy")
  loc_159E300:     var_1FC.Fields.Item("PNTNo").Value = CVar(var_8C.Fields.Item("PNT_NO"))
  loc_159E320:     var_1E0 = var_8C.Fields
  loc_159E339:     var_F8 = CVar(Proc_6_38_E69628(CVar(var_1E0.Item("Description")), 1, 1, var_98, var_1E0)) 'String
  loc_159E35C:     var_1FC.Fields.Item("Description").Value = var_F8
  loc_159E3B4:     var_1FC.Fields.Item("Extension").Value = CVar(var_8C.Fields.Item("Extension"))
  loc_159E408:     var_1FC.Fields.Item("PhoneNo").Value = CVar(var_8C.Fields.Item("DIALED_NO"))
  loc_159E45C:     var_1FC.Fields.Item("CallDur").Value = CVar(var_8C.Fields.Item("CALL_DURATION"))
  loc_159E493:     Proc_6_39_E7D3A0(var_F8, CVar(var_8C.Fields.Item("CALL_AMT")), var_C8)
  loc_159E4DB:     var_1FC.Fields.Item("CallAmt").Value = Format(var_F8, "0.00")
  loc_159E527:     var_F8 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CALL_START_TIME")), 1, 1)) 'String
  loc_159E555:     var_1FC.Fields.Item("CALL_START_TIME").Value = Left(var_F8, 5)
  loc_159E56F:     var_B8 = "*"
  loc_159E578:     var_A8 = "Mark"
  loc_159E594:     var_1FC.Fields.Item(var_A8).Value = var_B8
  loc_159E5AB:     var_1FC.Update var_A8, var_B8
  loc_159E5B2:     Set var_1FC = Nothing 
  loc_159E5B9:     var_B8 = CVar(var_98) 'Double
  loc_159E5C0:     var_A8 = "CALL_AMT"
  loc_159E5E3:     Proc_6_39_E7D3A0(var_F8, CVar(var_8C.Fields.Item(var_A8)), var_B8)
  loc_159E5EB:     var_108 = (var_A8 + var_F8)
  loc_159E5F0:     var_98 = CSng(Left(var_F8, 5))
  loc_159E602:     var_8C.MoveNext
  loc_159E607:     GoTo loc_159E195
  loc_159E60A:   End If
  loc_159E60D:   Set var_20C = var_88 
  loc_159E63C:   r_A8, var_B8 var_A8, var_B8
  loc_159E666:   var_20C.Fields.Item("mLine").Value = "GF"
  loc_159E672:   var_B8 = "Total---->"
  loc_159E697:   var_20C.Fields.Item("CallDate").Value = "GF"
  loc_159E6EB:   var_20C.Fields.Item("CallAmt").Value = Format(var_98, "0.00")
  loc_159E6FE:   var_B8 = vbNullString
  loc_159E707:   var_A8 = "Mark"
  loc_159E723:   var_20C.Fields.Item(var_A8).Value = var_B8
  loc_159E73A:   r_A8, var_B8 var_A8, var_B8
  loc_159E741:   Set var_20C = Nothing 
  loc_159E745: End If
  loc_159E76D: Me.FGrid1.Rows = 2
  loc_159E789: If (var_88.RecordCount > 0) Then
  loc_159E792:   CVarUnk
  loc_159E797:   VerifyVarObj
  loc_159E79D:   Set var_1E0 = Me.FGrid1
  loc_159E7A3:   LateIdStAd
  loc_159E7D3:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_88, Me.FGrid1.Text)
  loc_159E7DE: End If
  loc_159E7E2: Set var_218 = Me.FGrid1
  loc_159E7EE: var_218.Tag = "EpabxCallRep"
  loc_159E7FF: var_218.Cols = &HA
  loc_159E804: var_A8 = 0
  loc_159E80D: var_C8 = 0
  loc_159E816: var_118 = "mLine"
  loc_159E81F: LateIdCallSt
  loc_159E827: var_A8 = 0
  loc_159E830: var_C8 = 0
  loc_159E83C: LateIdCallSt
  loc_159E844: var_A8 = 0
  loc_159E84D: var_C8 = 1
  loc_159E856: var_118 = "ID"
  loc_159E85F: LateIdCallSt
  loc_159E867: var_A8 = 1
  loc_159E870: var_C8 = 0
  loc_159E87C: LateIdCallSt
  loc_159E884: var_A8 = 0
  loc_159E88D: var_C8 = 2
  loc_159E896: var_118 = "Call Date"
  loc_159E89F: LateIdCallSt
  loc_159E8A7: var_A8 = 2
  loc_159E8B6: var_C8 = CVar(CInt(1)) 'Integer
  loc_159E8BD: LateIdCallSt
  loc_159E8C5: var_A8 = 2
  loc_159E8D4: var_C8 = CVar(CInt(1)) 'Integer
  loc_159E8DB: LateIdCallSt
  loc_159E8E3: var_A8 = 2
  loc_159E8EC: var_C8 = &H578
  loc_159E8F8: LateIdCallSt
  loc_159E900: var_A8 = 0
  loc_159E909: var_C8 = 3
  loc_159E912: var_118 = "PNT No."
  loc_159E91B: LateIdCallSt
  loc_159E923: var_A8 = 3
  loc_159E932: var_C8 = CVar(CInt(1)) 'Integer
  loc_159E939: LateIdCallSt
  loc_159E941: var_A8 = 3
  loc_159E950: var_C8 = CVar(CInt(1)) 'Integer
  loc_159E957: LateIdCallSt
  loc_159E95F: var_A8 = 3
  loc_159E968: var_C8 = &H3E8
  loc_159E974: LateIdCallSt
  loc_159E97C: var_A8 = 0
  loc_159E985: var_C8 = 4
  loc_159E98E: var_118 = "Extension"
  loc_159E997: LateIdCallSt
  loc_159E99F: var_A8 = 4
  loc_159E9AE: var_C8 = CVar(CInt(1)) 'Integer
  loc_159E9B5: LateIdCallSt
  loc_159E9BD: var_A8 = 4
  loc_159E9CC: var_C8 = CVar(CInt(1)) 'Integer
  loc_159E9D3: LateIdCallSt
  loc_159E9DB: var_A8 = 4
  loc_159E9E4: var_C8 = &H4B0
  loc_159E9F0: LateIdCallSt
  loc_159E9F8: var_A8 = 0
  loc_159EA01: var_C8 = 5
  loc_159EA0A: var_118 = "Department"
  loc_159EA13: LateIdCallSt
  loc_159EA1B: var_A8 = 5
  loc_159EA2A: var_C8 = CVar(CInt(1)) 'Integer
  loc_159EA31: LateIdCallSt
  loc_159EA39: var_A8 = 5
  loc_159EA48: var_C8 = CVar(CInt(1)) 'Integer
  loc_159EA4F: LateIdCallSt
  loc_159EA57: var_A8 = 5
  loc_159EA60: var_C8 = &H9C4
  loc_159EA6C: LateIdCallSt
  loc_159EA74: var_A8 = 0
  loc_159EA7D: var_C8 = 6
  loc_159EA86: var_118 = "Tel. No"
  loc_159EA8F: LateIdCallSt
  loc_159EA97: var_A8 = 6
  loc_159EAA6: var_C8 = CVar(CInt(1)) 'Integer
  loc_159EAAD: LateIdCallSt
  loc_159EAB5: var_A8 = 6
  loc_159EAC4: var_C8 = CVar(CInt(1)) 'Integer
  loc_159EACB: LateIdCallSt
  loc_159EAD3: var_A8 = 6
  loc_159EADC: var_C8 = &H6A4
  loc_159EAE8: LateIdCallSt
  loc_159EAF0: var_A8 = 0
  loc_159EAF9: var_C8 = 7
  loc_159EB02: var_118 = "Time Duration"
  loc_159EB0B: LateIdCallSt
  loc_159EB13: var_A8 = 7
  loc_159EB22: var_C8 = CVar(CInt(1)) 'Integer
  loc_159EB29: LateIdCallSt
  loc_159EB31: var_A8 = 7
  loc_159EB40: var_C8 = CVar(CInt(1)) 'Integer
  loc_159EB47: LateIdCallSt
  loc_159EB4F: var_A8 = 7
  loc_159EB58: var_C8 = &H5DC
  loc_159EB64: LateIdCallSt
  loc_159EB6C: var_A8 = 0
  loc_159EB75: var_C8 = 8
  loc_159EB7E: var_118 = "Call Amt."
  loc_159EB87: LateIdCallSt
  loc_159EB8F: var_A8 = 8
  loc_159EB9E: var_C8 = CVar(CInt(7)) 'Integer
  loc_159EBA5: LateIdCallSt
  loc_159EBAD: var_A8 = 8
  loc_159EBBC: var_C8 = CVar(CInt(7)) 'Integer
  loc_159EBC3: LateIdCallSt
  loc_159EBCB: var_A8 = 8
  loc_159EBD4: var_C8 = &H5DC
  loc_159EBE0: LateIdCallSt
  loc_159EBE8: var_A8 = 0
  loc_159EBF1: var_C8 = 9
  loc_159EBFA: var_118 = "MARK"
  loc_159EC03: LateIdCallSt
  loc_159EC0B: var_A8 = 9
  loc_159EC14: var_C8 = 0
  loc_159EC20: LateIdCallSt
  loc_159EC2A: Set var_218 = Nothing 
  loc_159EC42: If (var_8C.RecordCount <= 0) Then
  loc_159EC4A:   global_60 = 0
  loc_159EC4D:   Exit Sub
  loc_159EC4E: End If
  loc_159EC52: Set var_1E0 = Me.FGrid1
  loc_159EC82: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_159EC85:   var_A8 = vbNullString
  loc_159EC8F:   Set var_1E0 = Me.FGrid1
  loc_159ECA0: End If
  loc_159ECD7: var_A8 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_159ECF7: Me.FGrid1.Row = CVar(CLng(IIf(var_A8, FRow, 1)))
  loc_159ED18: var_E8 = Me.FGrid1.Cols
  loc_159ED45: var_A8 = ((Fcol <> 0) And ((CLng(var_E8) - 1) >= CLng(Fcol)))
  loc_159ED65: Me.FGrid1.Col = CVar(CLng(IIf(var_A8, Fcol, 1)))
  loc_159ED81: Set var_88 = Nothing
  loc_159ED89: Set var_8C = Nothing
  loc_159ED8E: IStAd
  loc_159ED92: Exit Sub
  loc_159ED93: ' Referenced from: 159DBF0
  loc_159ED9B: Proc_6_60_E63754(0, Nothing, var_E8, var_E8, FGrid1.DispID_10000, var_A8, FGrid1.DispID_FFFF)
  loc_159EDA0: Exit Sub
End Sub

Public Sub Proc_103_12_10251CC(arg_C) '10251CC
  'Data Table: 433C3C
  Dim var_8C As Recordset15
  loc_1024F95: Set var_8C = arg_C 
  loc_1024FBD: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_1024FE9: var_8C.Fields.Append "Id", &HC8, &HC
  loc_1025015: var_8C.Fields.Append "CallDate", &HC8, &HB
  loc_1025041: var_8C.Fields.Append "PNTNo", &HC8, 5
  loc_102506D: var_8C.Fields.Append "Extension", &HC8, &HC
  loc_1025099: var_8C.Fields.Append "Description", &HC8, &H23
  loc_10250C5: var_8C.Fields.Append "PhoneNo", &HC8, &HF
  loc_10250F1: var_8C.Fields.Append "CallDur", &HC8, 8
  loc_102511D: var_8C.Fields.Append "CallAmt", &HC8, &HC
  loc_1025149: var_8C.Fields.Append "CALL_START_TIME", &HC8, 5
  loc_1025175: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1025185: var_8C.CursorType = 3
  loc_1025192: var_8C.LockType = 3
  loc_10251B1: var_8C.Open var_A0, var_B0, -1
  loc_10251B8: Set var_8C = Nothing 
  loc_10251BF: Set var_88 = arg_C 
  loc_10251C3: Proc_103_12_10251CC = -1
End Sub
