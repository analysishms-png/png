VERSION 5.00
Begin VB.Form memCatChngCond
  Caption = "Member Category Change (Conditional)"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11130
  ClientHeight = 5145
  Begin OptionButton Option1
    Caption = "Based On OP Bal"
    Index = 1
    ForeColor = &HFF0000&
    Left = 4740
    Top = 2040
    Width = 2265
    Height = 255
    TabIndex = 2
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
  Begin OptionButton Option1
    Caption = "All Members"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2040
    Width = 1665
    Height = 255
    TabIndex = 1
    Value = 255
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
  Begin Frame FrOPBal
    Left = 600
    Top = 2400
    Width = 6510
    Height = 570
    TabIndex = 11
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 2
      ForeColor = &H0&
      Left = 4695
      Top = 195
      Width = 1770
      Height = 285
      TabIndex = 4
      BorderStyle = 0 'None
      MaxLength = 11
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
    Begin TextBox Txt
      Index = 1
      ForeColor = &H0&
      Left = 1875
      Top = 195
      Width = 1410
      Height = 285
      TabIndex = 3
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 10
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
    Begin Label Label2
      Caption = "On Date :"
      Index = 2
      ForeColor = &HFF0000&
      Left = 3690
      Top = 210
      Width = 990
      Height = 240
      TabIndex = 13
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
    Begin Label Label2
      Caption = "if OP Bal >="
      Index = 3
      ForeColor = &HFF0000&
      Left = 120
      Top = 210
      Width = 1020
      Height = 240
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
    End
  End
  Begin DataGrid DGMemType
    Left = 9570
    Top = 2040
    Width = 4725
    Height = 2010
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin CommandButton CmdChange1
    Caption = "Change"
    Left = 8760
    Top = 7920
    Width = 1320
    Height = 435
    Visible = 0   'False
    TabIndex = 6
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HFF0000&
    Left = 2475
    Top = 3435
    Width = 4560
    Height = 285
    TabIndex = 5
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
    ForeColor = &HFF0000&
    Left = 2475
    Top = 1470
    Width = 4560
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
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 7
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    Visible = 0   'False
    TabIndex = 14
  End
  Begin BtnEnh CmdExit
    Left = 5040
    Top = 4680
    Width = 1470
    Height = 1065
    TabIndex = 15
  End
  Begin BtnEnh CmdChange
    Left = 2040
    Top = 4680
    Width = 1470
    Height = 1065
    TabIndex = 16
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
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
  Begin Label Label2
    Caption = "Change To Category :"
    Index = 1
    ForeColor = &HFF0000&
    Left = 615
    Top = 3450
    Width = 1920
    Height = 225
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
  End
  Begin Label Label2
    Caption = "Current Category :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 615
    Top = 1485
    Width = 1740
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "memCatChngCond"


Private Sub CmdChange_UnknownEvent_9 '129378C
  'Data Table: 43F38C
  Dim var_90 As Variant
  Dim var_E0 As TextBox
  Dim var_F4 As Variant
  Dim var_BC As Variant
  Dim var_88 As Long
  Dim var_E4 As String
  Dim var_160 As String
  Dim unk_43F3A0 As Connection15
  Dim var_DC As Variant
  Dim var_1A4 As TextBox
  Dim var_244 As TextBox
  Dim var_2C0 As Double
  Dim var_15C As String
  Dim var_104 As Variant
  Dim var_18C As Variant
  Dim var_22C As String
  Dim var_264 As Variant
  loc_1293243: Set var_8C = Me.Txt
  loc_1293249: Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0))
  loc_1293272: If (Proc_6_27_EA61EC(var_90, "Current Category") = 0) Then
  loc_1293275:   Exit Sub
  loc_1293276: End If
  loc_1293282: Set var_8C = Me.Option1
  loc_1293288: Call 0.Method_CmdChange_UnknownEvent_90 (1, var_90)
  loc_12932A2: If (var_90.Value = &HFF) Then
  loc_12932B0:   Set var_8C = Me.Txt
  loc_12932B6:   Call 0.Method_CmdChange_UnknownEvent_90 (CInt(2), var_90)
  loc_12932DF:   If (Proc_6_27_EA61EC(var_90, "OP Bal On Date") = 0) Then
  loc_12932E2:     Exit Sub
  loc_12932E3:   End If
  loc_12932E3: End If
  loc_12932EE: Set var_8C = Me.Txt
  loc_12932F4: Call 0.Method_CmdChange_UnknownEvent_90 (CInt(3), var_90)
  loc_129331D: If (Proc_6_27_EA61EC(var_90, "Change To Category") = 0) Then
  loc_1293320:   Exit Sub
  loc_1293321: End If
  loc_129332F: Set var_8C = Me.Txt
  loc_1293335: Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_90)
  loc_129333D: var_98 = var_90.Tag
  loc_129334B: var_BC = Trim(CVar(var_98))
  loc_129336B: Set var_94 = Me.Txt
  loc_1293371: Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_E0, var_E4)
  loc_1293379: (var_BC = vbNullString) = var_E0.Tag
  loc_1293381: var_F4 = CVar(var_E4) 'String
  loc_12933B5: If CBool(var_90 Or (Trim(var_F4) = vbNullString)) Then
  loc_12933D1:   MsgBox("Category Code not Present.", &H10, var_BC, var_DC, var_F4)
  loc_12933E1:   Exit Sub
  loc_12933E2: End If
  loc_12933E8: Call 0.Method_arg_50 (var_98)
  loc_129340E: var_88 = MsgBox("R U Sure To Change Category On Given Condition.", &H141, CVar(var_98), var_DC, var_F4)
  loc_1293425: If (var_88 = 2) Then
  loc_1293428:   Exit Sub
  loc_1293429: End If
  loc_1293435: Set var_8C = Me.Option1
  loc_129343B: Call 0.Method_CmdChange_UnknownEvent_90 (0, var_90)
  loc_1293455: If (var_90.Value = &HFF) Then
  loc_1293476:   Set var_8C = Me.Txt
  loc_129347C:   Call 0.Method_CmdChange_UnknownEvent_90 (CInt(3), var_90, var_98, "Update SubGroup Set CompanyType='")
  loc_1293484:   var_DC = var_90.Tag
  loc_1293494:   var_E4 = Proc_6_38_E69628(CVar(var_98), -1)
  loc_129349F:   var_160 = var_178 & var_E4 & "' Where CompanyType='"
  loc_12934B0:   Set var_94 = Me.Txt
  loc_12934B6:   Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_E0, var_15C)
  loc_12934BE:   var_160 = var_E0.Tag
  loc_12934F0:   unk_43F3A0.Execute var_88 & Proc_6_38_E69628(CVar(var_15C)) & "' And LogSite_Code='" & MemVar_1F95078 & "'", , 
  loc_1293521: Else
  loc_129352D:   Set var_8C = Me.Option1
  loc_1293533:   Call 0.Method_CmdChange_UnknownEvent_90 (1, var_90)
  loc_129354D:   If (var_90.Value = &HFF) Then
  loc_129355E:     Set var_8C = Me.Txt
  loc_1293564:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(3), var_90)
  loc_129356C:     var_98 = var_90.Tag
  loc_129358D:     Set var_94 = Me.Txt
  loc_1293593:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_E0)
  loc_12935B9:     Set var_178 = Me.Txt
  loc_12935BF:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(2))
  loc_12935C7:     var_DC = CVar(var_17C) 'Address
  loc_12935CE:     Proc_6_7_F26918(var_F4, var_DC)
  loc_12935E1:     Set var_1A0 = Me.Txt
  loc_12935E7:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_1A4)
  loc_129360D:     Set var_1E8 = Me.Txt
  loc_1293613:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(2), var_1EC)
  loc_1293622:     Proc_6_7_F26918(var_20C, CVar(var_1EC))
  loc_1293635:     Set var_240 = Me.Txt
  loc_129363B:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(1), var_244)
  loc_1293650:     var_2C0 = Val(var_244.Text)
  loc_1293671:     var_15C = "Update SubGroup Set CompanyType='" & Proc_6_38_E69628(CVar(var_98)) & "' Where SubCode In (Select P.SubCode From (Select L.SubCode,ISNULL(SUM(L.AmtDr), 0) AmtDr From Ledger L Inner Join SubGroup S "
  loc_1293689:     var_104 = CVar(var_15C & " On S.SubCode=L.SubCode Where CompanyType='" & Proc_6_38_E69628(CVar(var_E0.Tag)) & "' And V_date<dateadd(Month,-1,") 'String
  loc_12936A1:     var_18C = Trim(var_F4) & var_F4 & ") Group By L.SubCode) P Inner Join " & " (Select L.SubCode,ISNULL(SUM(L.AmtCr), 0) AmtCr From Ledger L Inner Join SubGroup S On S.SubCode=L.SubCode " 
  loc_12936C8:     var_22C = " Group By L.SubCode) Q On P.SubCode=Q.SubCode Where Q.AmtCr-P.AmtDr>="
  loc_12936D8:     var_264 = var_18C & " Where CompanyType='" & CVar(Proc_6_38_E69628(CVar(var_1A4.Tag))) & "' And V_date<" & var_20C & var_22C & CVar(var_2C0) 
  loc_12936EF:     unk_43F3A0.Execute CStr(var_264 & ")"), var_2A8, -1
  loc_1293751:   End If
  loc_1293751: End If
  loc_1293757: Call 0.Method_arg_50 (var_98, var_2AC)
  loc_1293778: MsgBox("Category Changed Successfully.", &H40, CVar(var_98), var_DC, var_F4)
  loc_1293788: Exit Sub
  loc_1293789: arg_1421 = var_2C0
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E803CC
  'Data Table: 43F38C
  Dim var_8C As TextBox
  loc_E80368: On Error Goto loc_E803C6
  loc_E8036B: Call Proc_291_18_E9DF68()
  loc_E80383: Set var_88 = Me.Txt
  loc_E80389: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_8C)
  loc_E80391: var_8C.Text = CStr(MemVar_1F950F4)
  loc_E803AB: Set var_88 = Me.Txt
  loc_E803B1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E803B9: var_8C.SetFocus
  loc_E803C5: Exit Sub
  loc_E803C6: ' Referenced from: E80368
  loc_E803C6: Proc_6_60_E63754(var_8C)
  loc_E803CB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B024
  'Data Table: 43F38C
  Dim arg_1400 As String
  loc_E1B019: Me.Global.Unload Me
  loc_E1B021: Exit Sub
  loc_E1B022: arg_1400 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0C264
  'Data Table: 43F38C
  Dim Me As Recordset15
  loc_E0C25B: Me.Requery -1
  loc_E0C260: Exit Sub
End Sub

Private Sub Option1_Click(Index As Integer) 'F6A90C
  'Data Table: 43F38C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_8C As Frame
  Dim var_EC As TextBox
  loc_F6A7EB: var_86 = Index
  loc_F6A7F4: If (var_86 = 0) Then
  loc_F6A805:   Set var_8C = Me.Txt
  loc_F6A80B:   Call 0.Method_Option1_Click0 (CInt(1), var_90)
  loc_F6A813:   var_90.Text = vbNullString
  loc_F6A82D:   Set var_8C = Me.Txt
  loc_F6A833:   Call 0.Method_Option1_Click0 (CInt(2), var_90)
  loc_F6A83B:   var_90.Text = vbNullString
  loc_F6A853:   Me.FrOPBal.Enabled = False
  loc_F6A85E: Else
  loc_F6A864:   If (var_86 = 1) Then
  loc_F6A875:     Set var_8C = Me.Txt
  loc_F6A87B:     Call 0.Method_Option1_Click0 (CInt(1), var_90)
  loc_F6A8C9:     Set var_E8 = Me.Txt
  loc_F6A8CF:     Call 0.Method_Option1_Click0 (CInt(1), var_EC, CStr(Format(CVar(Val(var_90.Text)), "0.00")), 1)
  loc_F6A8D7:     var_EC.Text = 1
  loc_F6A903:     Me.FrOPBal.Enabled = True
  loc_F6A90B:   End If
  loc_F6A90B: End If
  loc_F6A90B: Exit Sub
End Sub

Private Sub Option1_KeyDown(KeyCode As Integer, Shift As Integer) 'E24548
  'Data Table: 43F38C
  loc_E24539: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E24542:   Proc_6_75_E5335C(Shift)
  loc_E24547: End If
  loc_E24547: Exit Sub
End Sub

Private Sub Form_Load() '105682C
  'Data Table: 43F38C
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_C0 As Variant
  loc_10565C0: On Error Goto loc_10567E5
  loc_10565CA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10565D9: Set var_A8 = Me.TopCtrl1
  loc_10565DF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10565ED: Call 0.Method_arg_50 (var_AC)
  loc_10565FD: Set var_A8 = Me.TopCtrl1
  loc_1056603: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_105662A: Me.TopCtrl1.CursorLocation = 3
  loc_105664D: var_AC = "Select  Code, Name From MemCatMast WHERE (Corporate='N') AND (  LOGSITE_CODE='" & MemVar_1F95078
  loc_105665E: Me.Open CVar(var_AC & "' or LOGSITE_CODE='HO')  Order by Name"), CVar(MemVar_1F951E0), 2
  loc_1056672: CVarUnk
  loc_1056677: VerifyVarObj
  loc_1056683: LateIdStAd
  loc_1056691: Call Proc_291_18_E9DF68(Me.DGMemType, New)
  loc_10566A1: Set var_A8 = Me.Option1
  loc_10566A7: Call 0.Method_Form_Load0 (0, var_C0, &HFF)
  loc_10566AF: var_C0.Value = True
  loc_10566C0: Call Option1_Click(0)
  loc_10566CE: Call 0.Method_arg_160 (var_A8)
  loc_10566DC: Call 0.Method_arg_164 (var_A8)
  loc_10566EC: Set var_A8 = Me.PictSubMenu
  loc_10566F2: MDIForm1.PictSubMenu.BackColor = CLng(MemVar_1F951B4)
  loc_1056707: Set var_A8 = Me.Option1
  loc_105670D: Call 0.Method_Form_Load0 (0, var_C0)
  loc_1056715: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_105672E: Set var_A8 = Me.Option1
  loc_1056734: Call 0.Method_Form_Load0 (1, var_C0)
  loc_105673C: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_1056755: Set var_A8 = Me.Label2
  loc_105675B: Call 0.Method_Form_Load0 (2, var_C0)
  loc_1056763: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_105677C: Set var_A8 = Me.Label2
  loc_1056782: Call 0.Method_Form_Load0 (1, var_C0)
  loc_105678A: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_10567A3: Set var_A8 = Me.Label2
  loc_10567A9: Call 0.Method_Form_Load0 (0, var_C0)
  loc_10567B1: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_10567CA: Set var_A8 = Me.Label2
  loc_10567D0: Call 0.Method_Form_Load0 (3, var_C0)
  loc_10567D8: var_C0.BackColor = CLng(MemVar_1F951B4)
  loc_10567E4: Exit Sub
  loc_10567E5: ' Referenced from: 10565C0
  loc_10567ED: Set var_A8 = Err()
  loc_10567F3: Call 0.Method_arg_2C (var_AC)
  loc_1056814: MsgBox(CVar(var_AC), &H40, "Information", var_E4, var_104)
  loc_1056827: Exit Sub
  loc_1056828: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6B88
  'Data Table: 43F38C
  Dim var_8C As Label
  loc_ED6AE6: Call 0.Method_arg_50 (var_88)
  loc_ED6AF8: Me.LblFormCaption.Caption = var_88
  loc_ED6B11: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6B1D: Set var_A0 = Me.TopCtrl1
  loc_ED6B23: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6B30: Set var_8C = Me.TopCtrl1
  loc_ED6B36: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6B50: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6B6B: Call 0.Method_arg_100 (var_B8)
  loc_ED6B7D: Me.LblFormCaption.Width = var_B8
  loc_ED6B85: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E15594
  'Data Table: 43F38C
  loc_E1558B: Set global_52 = Nothing
  loc_E15592: Exit Sub
End Sub

Private Sub Form_Activate() 'E510F0
  'Data Table: 43F38C
  loc_E510C0: On Error Goto loc_E510EA
  loc_E510C7: Set var_88 = Me.TopCtrl1
  loc_E510CD: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E510E2: If (CLng(CInt()) = &H2D) Then
  loc_E510E5:   Call TopCtrl1_UnknownEvent_15()
  loc_E510EA:   ' Referenced from: E510C0
  loc_E510EA: End If
  loc_E510EA: Proc_6_60_E63754()
  loc_E510EF: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8935C
  'Data Table: 43F38C
  loc_E892F8: On Error Goto loc_E89318
  loc_E8930F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E89317: Exit Sub
  loc_E89318: ' Referenced from: E892F8
  loc_E89320: Set var_88 = Err()
  loc_E89326: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89347: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8935A: Exit Sub
  loc_E8935B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FFD1F4
  'Data Table: 43F38C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FFD00E: Set var_88 = Me.Txt
  loc_FFD014: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FFD022: Proc_6_74_E23240(var_8C)
  loc_FFD02E: Call Proc_291_20_E543FC(var_8C)
  loc_FFD036: var_92 = Index
  loc_FFD041: If Not (var_92 = CInt(0)) Then
  loc_FFD04C:   If (var_92 = CInt(3)) Then
  loc_FFD04F:   End If
  loc_FFD066:   If (Me.RecordCount > 0) Then
  loc_FFD074:     Set var_8C = Me.FGPoint
  loc_FFD08C:     Proc_6_137_1192FDC(Me.DGMemType, global_52, Index)
  loc_FFD09A:   End If
  loc_FFD0E8:   Set var_88 = Me.Txt
  loc_FFD0EE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FFD0F6:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FFD10E:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FFD111:     Exit Sub
  loc_FFD112:   End If
  loc_FFD11F:   Set var_88 = Me.Txt
  loc_FFD125:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FFD12D:   var_A0 = var_8C.Text
  loc_FFD135:   var_D4 = CVar(var_A0) 'String
  loc_FFD17A:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FFD183:     Me.MoveFirst
  loc_FFD1A8:     Set var_88 = Me.Txt
  loc_FFD1AE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FFD1B6:     0 = var_8C.Text
  loc_FFD1C4:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_FFD1DA:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FFD1F2:   End If
  loc_FFD1F2: End If
  loc_FFD1F2: Exit Sub
  loc_FFD1F3:  = 
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F26F84
  'Data Table: 43F38C
  Dim var_86 As Integer
  loc_F26E92: If (CLng(Shift) = &H1B) Then
  loc_F26E95:   Call Proc_291_20_E543FC()
  loc_F26E9A:   Exit Sub
  loc_F26E9B: End If
  loc_F26E9E: var_86 = KeyCode
  loc_F26EA9: If Not (var_86 = CInt(0)) Then
  loc_F26EB4:   If (var_86 = CInt(3)) Then
  loc_F26EB7:   End If
  loc_F26ECF:   Set var_9C = Nothing
  loc_F26EDA:   Set var_98 = Nothing
  loc_F26F08:   Proc_6_69_134A630(Me.DGMemType, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_F26F1C: End If
  loc_F26F38: If (CBool(Me.DGMemType.Visible) = 0) Then
  loc_F26F50:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F26F59:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F26F5E:   End If
  loc_F26F73:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F26F7C:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F26F81:   End If
  loc_F26F81: End If
  loc_F26F81: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E6D9E0
  'Data Table: 43F38C
  loc_E6D98F: Proc_6_58_E06050(arg_10)
  loc_E6D9A2: If (KeyAscii = CInt(1)) Then
  loc_E6D9AF:   Set var_8C = Me.Txt
  loc_E6D9B5:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_E6D9D0:   Proc_6_42_129B55C(var_90, arg_10, 7)
  loc_E6D9DC: End If
  loc_E6D9DC: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EAFD38
  'Data Table: 43F38C
  Dim var_86 As Integer
  loc_EAFCB7: var_86 = KeyCode
  loc_EAFCC2: If Not (var_86 = CInt(0)) Then
  loc_EAFCCD:   If (var_86 = CInt(3)) Then
  loc_EAFCD0:   End If
  loc_EAFCEC:   If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_EAFD00:     var_A4 = "Name"
  loc_EAFD24:     Proc_6_68_12A2818(Me.DGMemType, Me.Txt, KeyCode, global_52)
  loc_EAFD37:   End If
  loc_EAFD37: End If
  loc_EAFD37: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4ED2C
  'Data Table: 43F38C
  loc_E4ED0A: Set var_88 = Me.Txt
  loc_E4ED10: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4ED1E: Proc_6_73_E23294(var_8C)
  loc_E4ED2A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F16794
  'Data Table: 43F38C
  Dim var_8E As Integer
  Dim var_E0 As TextBox
  Dim var_E8 As TextBox
  loc_F166B3: var_8E = Cancel
  loc_F166BE: If (var_8E = CInt(1)) Then
  loc_F166CB:   Set var_94 = Me.Txt
  loc_F166D1:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_F1670B:   Set var_DC = Me.Txt
  loc_F16711:   Call 0.Method_Txt_Validate0 (Cancel, var_E0, CStr(Format(CVar(var_98), "0.00")))
  loc_F16719:   var_E0.Text = 1
  loc_F16736: Else
  loc_F1673E:   If (var_8E = CInt(2)) Then
  loc_F1674B:     Set var_94 = Me.Txt
  loc_F16751:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_F16771:     Set var_E0 = Me.Txt
  loc_F16777:     Call 0.Method_Txt_Validate0 (Cancel, var_E8)
  loc_F1677F:     var_E8.Text = Proc_6_33_15125B8(var_98, 1)
  loc_F16792:   End If
  loc_F16792: End If
  loc_F16792: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1B44C
  'Data Table: 43F38C
  loc_E1B441: Me.Global.Unload Me
  loc_E1B449: Exit Sub
End Sub

Public Sub Proc_291_18_E9DF68
  'Data Table: 43F38C
  Dim var_98 As TextBox
  loc_E9DEEE: Set var_8C = Me.Txt
  loc_E9DEF4: Call 0.Method_Proc_291_18_E9DF68C (var_8E, var_86)
  loc_E9DF04: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9DF1A:   Set var_8C = Me.Txt
  loc_E9DF20:   Call 0.Method_Proc_291_18_E9DF680 (CInt(var_86), var_98)
  loc_E9DF28:   var_98.Text = vbNullString
  loc_E9DF44:   Set var_8C = Me.Txt
  loc_E9DF4A:   Call 0.Method_Proc_291_18_E9DF680 (CInt(var_86), var_98)
  loc_E9DF52:   var_98.Tag = vbNullString
  loc_E9DF61: Next var_92 'Byte
  loc_E9DF67: Exit Sub
End Sub

Public Sub Proc_291_19_E7C5FC(arg_C) 'E7C5FC
  'Data Table: 43F38C
  Dim var_98 As TextBox
  loc_E7C5AA: Set var_8C = Me.Txt
  loc_E7C5B0: Call 0.Method_Proc_291_19_E7C5FCC (var_8E, var_86)
  loc_E7C5C0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C5D6:   Set var_8C = Me.Txt
  loc_E7C5DC:   Call 0.Method_Proc_291_19_E7C5FC0 (CInt(var_86), var_98)
  loc_E7C5E4:   var_98.Enabled = arg_C
  loc_E7C5F3: Next var_92 'Byte
  loc_E7C5F9: Exit Sub
End Sub

Public Sub Proc_291_20_E543FC
  'Data Table: 43F38C
  loc_E543E0: If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_E543F2:   Me.DGMemType.Visible = False
  loc_E543FA: End If
  loc_E543FA: Exit Sub
End Sub
