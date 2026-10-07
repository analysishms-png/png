VERSION 5.00
Begin VB.Form FrmLocationMast
  Caption = "Location Master"
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
  ClientWidth = 9360
  ClientHeight = 8130
  Begin DataGrid DGHelp
    Left = 4425
    Top = 6000
    Width = 4410
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9360
    Height = 420
    TabIndex = 18
  End
  Begin Frame FrTerm
    Caption = "Terms && Conditions"
    ForeColor = &HC0&
    Left = 1800
    Top = 2280
    Width = 9285
    Height = 3495
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
    Begin TextBox TxtTerm
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 375
      Top = 780
      Width = 8565
      Height = 2400
      TabIndex = 7
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 750
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
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 5985
      Top = 420
      Width = 1380
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 11
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
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2940
      Top = 420
      Width = 1380
      Height = 255
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 11
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
    Begin Label LblName
      Caption = "End Date :"
      Index = 5
      ForeColor = &HFF0000&
      Left = 4980
      Top = 420
      Width = 900
      Height = 240
      TabIndex = 17
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
    Begin Label LblName
      Caption = "Start Date :"
      Index = 4
      ForeColor = &HFF0000&
      Left = 1875
      Top = 420
      Width = 1005
      Height = 240
      TabIndex = 16
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
  Begin CommandButton CmdTerm
    Caption = "Terms && Conditions"
    Left = 4410
    Top = 1770
    Width = 1845
    Height = 345
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
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7035
    Top = 825
    Width = 1290
    Height = 255
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin Frame FrmList
    Left = 330
    Top = 6120
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1890
    Top = 1395
    Width = 1290
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1890
    Top = 1125
    Width = 1290
    Height = 255
    TabIndex = 1
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1890
    Top = 855
    Width = 4170
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 360
    Top = 8055
    Width = 3375
    Height = 285
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 360
    Top = 8340
    Width = 3330
    Height = 255
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Area"
    Index = 3
    ForeColor = &HFF0000&
    Left = 705
    Top = 1395
    Width = 375
    Height = 210
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Short Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 705
    Top = 1125
    Width = 975
    Height = 210
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 705
    Top = 855
    Width = 465
    Height = 210
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "(In Sq Feet)"
    Index = 1
    ForeColor = &HC0&
    Left = 3225
    Top = 1395
    Width = 1155
    Height = 240
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmLocationMast"


Private Sub DGHelp_UnknownEvent_9 'F12EDC
  'Data Table: 465BD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F12DF8: On Error Goto loc_F12EB2
  loc_F12E0A: Me.DGHelp.Visible = False
  loc_F12E29: If (Me.RecordCount > 0) Then
  loc_F12E49:   var_B0 = Me.Fields.Item("Name")
  loc_F12E5A:   var_CC = CStr(var_B0.Value)
  loc_F12E68:   Set var_B4 = Me.Txt
  loc_F12E6E:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F12E76:   var_B8.Text = var_CC
  loc_F12E8C: End If
  loc_F12E97: Set var_A8 = Me.Txt
  loc_F12E9D: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F12EA5: var_B0.SetFocus
  loc_F12EB1: Exit Sub
  loc_F12EB2: ' Referenced from: F12DF8
  loc_F12EB8: Call 0.Method_arg_50 (var_CC)
  loc_F12ECD: Proc_183_57_104B0BC(var_CC, "DGHelp_Click")
  loc_F12ED9: Exit Sub
  loc_F12EDA: DOC
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAA034
  'Data Table: 465BD8
  Dim var_94 As TextBox
  loc_EA9FB0: On Error Goto loc_EAA00C
  loc_EA9FC8: var_88 = "ADD"
  loc_EA9FD6: Call Proc_323_26_E8C3CC(Proc_5_1_100EC1C(var_88, Me))
  loc_EA9FE1: Call Proc_323_27_ECFD68(global_52)
  loc_EA9FF1: Set var_8C = Me.Txt
  loc_EA9FF7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA9FFF: var_94.SetFocus
  loc_EAA00B: Exit Sub
  loc_EAA00C: ' Referenced from: EA9FB0
  loc_EAA012: Call 0.Method_arg_50 (var_88)
  loc_EAA027: Proc_183_57_104B0BC(var_88, "TopCtrl1_eAdd")
  loc_EAA033: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EED550
  'Data Table: 465BD8
  loc_EED498: On Error Goto loc_EED528
  loc_EED4D2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EED4E1:   Set var_110 = Me
  loc_EED4EA:   var_10C = "INI"
  loc_EED4F8:   Call Proc_323_26_E8C3CC(Proc_5_1_100EC1C(var_10C, var_110))
  loc_EED503:   Call Proc_323_28_12A3B30(global_52)
  loc_EED508:   Call Proc_323_31_E82A7C()
  loc_EED510: Else
  loc_EED516:   Call 0.Method_arg_1E8 (var_110)
  loc_EED51E:   Call var_110.SetFocus
  loc_EED527: End If
  loc_EED527: Exit Sub
  loc_EED528: ' Referenced from: EED498
  loc_EED52E: Call 0.Method_arg_50 (var_10C)
  loc_EED536: var_11C = "TopCtrl1_eCancel"
  loc_EED543: Proc_183_57_104B0BC(var_10C)
  loc_EED54F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10B06A0
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim unk_465BE7 As Connection15
  Dim var_96 As Integer
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_10B03DC: On Error Goto loc_10B0662
  loc_10B03ED: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10B03F0:   Exit Sub
  loc_10B03F1: End If
  loc_10B0416: var_C8 = Me.Fields.Item("Code").Value
  loc_10B041E: var_D4 = "Facility master"
  loc_10B0466: If (Proc_183_53_FE0460(MemVar_1F951E0, "LocationFacility", "LcCode") = 0) Then
  loc_10B0469:   Exit Sub
  loc_10B046A: End If
  loc_10B0497: var_D4 = "Party Locations"
  loc_10B04DF: If (Proc_183_53_FE0460(MemVar_1F951E0, "PartyLocation", "LcCode", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_10B04E2:   Exit Sub
  loc_10B04E3: End If
  loc_10B051A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_10B0526:   unk_465BE7.BeginTrans var_D0
  loc_10B052D:   var_96 = &HFF
  loc_10B0595:   var_B4 = CStr("Delete From LocationMast Where Code='" & Me.Fields.Item("Code").Value & "'")
  loc_10B059F:   unk_465BE7.Execute var_B4, var_134, -1
  loc_10B05C1:   unk_465BE7.CommitTrans
  loc_10B05C8:   var_96 = 0
  loc_10B05D6:   Me.Requery -1
  loc_10B05E6:   Me.Requery -1
  loc_10B0602:   If (Me.RecordCount > 0) Then
  loc_10B061C:     If (Me.AbsolutePosition > 1) Then
  loc_10B0627:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_10B0633:       Me.AbsolutePosition = CLng(Me.Fields.Item("Code").Value)
  loc_10B0638:     End If
  loc_10B0638:   End If
  loc_10B0638:   Call Proc_323_28_12A3B30(var_96, var_138, var_96, var_D4)
  loc_10B0659:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10B0661: End If
  loc_10B0661: Exit Sub
  loc_10B0662: ' Referenced from: 10B03DC
  loc_10B0668: If (var_96 = &HFF) Then
  loc_10B0671:   unk_465BE7.RollbackTrans
  loc_10B0676: End If
  loc_10B067C: Call 0.Method_arg_50 (var_B4, CStr(Me.Fields.Item("Code").Value))
  loc_10B0691: Proc_183_57_104B0BC(var_B4, "TopCtrl1_eDel")
  loc_10B069D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F1C708
  'Data Table: 465BD8
  Dim var_94 As TextBox
  loc_F1C60C: On Error Goto loc_F1C6DF
  loc_F1C61D: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F1C620:   Exit Sub
  loc_F1C621: End If
  loc_F1C644: Call Proc_323_26_E8C3CC(Proc_5_1_100EC1C("EDIT", Me))
  loc_F1C65D: Set var_8C = Me.Txt
  loc_F1C663: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F1C676: global_84 = var_94.Text
  loc_F1C692: Set var_8C = Me.Txt
  loc_F1C698: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F1C6A0: var_88 = var_94.Text
  loc_F1C6AB: global_88 = var_88
  loc_F1C6C4: Set var_8C = Me.Txt
  loc_F1C6CA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F1C6D2: var_94.SetFocus
  loc_F1C6DE: Exit Sub
  loc_F1C6DF: ' Referenced from: F1C60C
  loc_F1C6E5: Call 0.Method_arg_50 (var_88)
  loc_F1C6FA: Proc_183_57_104B0BC(var_88, "TopCtrl1_eEdit")
  loc_F1C706: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E169C8
  'Data Table: 465BD8
  loc_E169BD: Me.Global.Unload Me
  loc_E169C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF10CC
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EF100C: On Error Goto loc_EF10A4
  loc_EF1026: If (Me.RecordCount <= 0) Then
  loc_EF102F:   var_B8 = "Information"
  loc_EF104A:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EF105A:   Exit Sub
  loc_EF105B: End If
  loc_EF1069: MemVar_1F950E4 = "Select L.Code As SearchCode,L.Name FROM LocationMast L WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by L.Name"
  loc_EF1076: MemVar_1F95120 = Me
  loc_EF107D: var_10C = "4500"
  loc_EF1083: Proc_183_54_F1EA10(var_10C)
  loc_EF109E: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF10A3: Exit Sub
  loc_EF10A4: ' Referenced from: EF100C
  loc_EF10AA: Call 0.Method_arg_50 (var_10C)
  loc_EF10BF: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EF10CB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31BC8
  'Data Table: 465BD8
  loc_E31BB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31BC0: Call Proc_323_28_12A3B30(global_52)
  loc_E31BC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E322E8
  'Data Table: 465BD8
  loc_E322D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E322E0: Call Proc_323_28_12A3B30(global_52)
  loc_E322E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E321C8
  'Data Table: 465BD8
  loc_E321B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E321C0: Call Proc_323_28_12A3B30(global_52)
  loc_E321C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31C88
  'Data Table: 465BD8
  loc_E31C78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31C80: Call Proc_323_28_12A3B30(global_52)
  loc_E31C85: Exit Sub
  loc_E31C86: arg_6078 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '104DE5C
  'Data Table: 465BD8
  Dim var_A0 As String
  Dim unk_465BE7 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  loc_104DC10: On Error Goto loc_104DE34
  loc_104DC37: unk_465BE7.Execute "select * FROM LocationMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_104DC42: Set var_88 = var_C8
  loc_104DC58: var_CC = var_88.RecordCount
  loc_104DC66: If (var_CC = 0) Then
  loc_104DC82:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_104DC92:   Exit Sub
  loc_104DC93: End If
  loc_104DCA9: Set var_C8 = var_88 
  loc_104DCB5: var_12E = CreateFieldDefFile(var_C8, MemVar_1F950B4 & "\LocationMast.ttx")
  loc_104DCBF: Set var_88 = var_C8
  loc_104DCC5: var_B4 = CVar(var_12E) 'Integer
  loc_104DCC8: var_98 = var_B4 'Variant
  loc_104DCE4: var_A0 = MemVar_1F950B4 & "\LocationMast.RPT"
  loc_104DCED: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_104DCF8: MemVar_1F951E8 = var_C8
  loc_104DD13: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_104DD1B: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_104DD27: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_104DD40:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104DD48:   Call 0.Method_arg_20 (var_138)
  loc_104DD50:   Call 0.Method_arg_30 (var_A0)
  loc_104DD96:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_104DDAC:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104DDB4:     Call 0.Method_arg_20 (var_138)
  loc_104DDBC:     Call 0.Method_arg_38 ("'Location Master'")
  loc_104DDC8:   End If
  loc_104DDCB: Next var_132 'Integer
  loc_104DDE9: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_104DDF1: Call 0.Method_arg_2C (var_DC)
  loc_104DDFF: Call 0.Method_arg_150 (var_FC)
  loc_104DE0A: Call 0.Method_arg_50 (var_A0)
  loc_104DE23: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_104DE30: Set var_88 = Nothing
  loc_104DE33: Exit Sub
  loc_104DE34: ' Referenced from: 104DC10
  loc_104DE3A: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_104DE4F: Proc_183_57_104B0BC(var_A0, "TopCtrl1_ePrn")
  loc_104DE5B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A85C
  'Data Table: 465BD8
  Dim Me As Recordset15
  loc_E0A853: Me.Requery -1
  loc_E0A858: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '140C698
  'Data Table: 465BD8
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_90 As Variant
  Dim var_9C As String
  Dim var_138 As String
  Dim unk_465BE7 As Connection15
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_13C As String
  Dim var_E0 As Variant
  Dim Me As Recordset15
  Dim var_E4 As TextBox
  Dim var_158 As TextBox
  Dim var_328 As Double
  Dim var_1C8 As Variant
  Dim var_248 As Variant
  Dim var_2F8 As Variant
  Dim var_31C As Variant
  loc_140BCD4: On Error Goto loc_140C656
  loc_140BCDB: var_86 = CByte(0) 'Byte
  loc_140BCEA: Set var_90 = Me.Txt
  loc_140BCF0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_140BD19: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_140BD23:   Call Txt_GotFocus()
  loc_140BD28:   Exit Sub
  loc_140BD29: End If
  loc_140BD34: Set var_90 = Me.Txt
  loc_140BD3A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_140BD63: If (Proc_183_19_E8E68C(var_94, "Short Name") = 0) Then
  loc_140BD6D:   Call Txt_GotFocus()
  loc_140BD72:   Exit Sub
  loc_140BD73: End If
  loc_140BD76: Call Proc_323_29_1090F20(var_9E, CInt(1))
  loc_140BD81: If (var_9E = &HFF) Then
  loc_140BD84:   Exit Sub
  loc_140BD85: End If
  loc_140BD90: Set var_90 = Me.Txt
  loc_140BD96: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_140BDBF: If CBool(Trim(CVar(var_94)) <> vbNullString) Then
  loc_140BDCD:   Set var_90 = Me.Txt
  loc_140BDD3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_94)
  loc_140BDFC:   If (Proc_183_19_E8E68C(var_94, "End Date") = 0) Then
  loc_140BE06:     Call Txt_GotFocus()
  loc_140BE0B:     Exit Sub
  loc_140BE0C:   End If
  loc_140BE0C: End If
  loc_140BE17: Set var_90 = Me.Txt
  loc_140BE1D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_94, CInt(5))
  loc_140BE46: If CBool(Trim(CVar(var_94)) <> vbNullString) Then
  loc_140BE54:   Set var_90 = Me.Txt
  loc_140BE5A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_140BE83:   If (Proc_183_19_E8E68C(var_94, "Start Date") = 0) Then
  loc_140BE8D:     Call Txt_GotFocus()
  loc_140BE92:     Exit Sub
  loc_140BE93:   End If
  loc_140BE93: End If
  loc_140BE9E: Set var_90 = Me.Txt
  loc_140BEA4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, CInt(4))
  loc_140BEAC: var_B0 = CVar(var_94) 'Address
  loc_140BEB3: var_C0 = Trim(var_B0)
  loc_140BED0: Set var_98 = Me.Txt
  loc_140BED6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_E4, (var_C0 <> vbNullString))
  loc_140BEF7: var_134 = CInt(0) Or (Trim(CVar(var_E4)) <> vbNullString)
  loc_140BF0F: If CBool(var_134) Then
  loc_140BF16:   Set var_94 = Me.TxtTerm
  loc_140BF3D:   If (Proc_183_19_E8E68C(var_94, "Terms & Conditions") = 0) Then
  loc_140BF4A:     Me.TxtTerm.SetFocus
  loc_140BF52:     Exit Sub
  loc_140BF53:   End If
  loc_140BF53: End If
  loc_140BF57: Set var_90 = Me.TopCtrl1
  loc_140BF5D: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_94)
  loc_140BF76: If (CStr() = "Add") Then
  loc_140BF81:   If (MemVar_1F953B0 = "A") Then
  loc_140BF8A:     var_114 = 0
  loc_140BFA7:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From LocationMast WHERE SITE_CODE='" & MemVar_1F95070
  loc_140BFB7:     unk_465BE7.Execute CStr() & "'", var_B0, -1
  loc_140BFBF:     var_90 = var_90.Fields
  loc_140BFC7:     var_114 = var_94.Item(var_94)
  loc_140BFCF:     var_98 = var_98.Value
  loc_140BFDE:     global_80 = CStr(var_C0)
  loc_140BFFE:   Else
  loc_140C006:     If (MemVar_1F953B0 = "S") Then
  loc_140C00F:       var_114 = 0
  loc_140C02C:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From LocationMast WHERE SITE_CODE='" & MemVar_1F95070
  loc_140C033:       var_138 = CStr() & "'"
  loc_140C03C:       unk_465BE7.Execute var_138, var_B0, -1
  loc_140C044:       var_90 = var_90.Fields
  loc_140C04C:       var_114 = var_94.Item(var_94)
  loc_140C054:       var_98 = var_98.Value
  loc_140C063:       global_80 = CStr(var_C0)
  loc_140C080:     End If
  loc_140C080:   End If
  loc_140C08D:   var_E0 = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2)) 'String
  loc_140C0BB:   var_F4 = (1 + Format(global_80, "0000"))
  loc_140C0C6:   global_80 = CStr(CVar(var_E4))
  loc_140C0DB: Else
  loc_140C0F8:   var_94 = Me.Fields.Item("Code")
  loc_140C10F:   global_80 = CStr(var_94.Value)
  loc_140C120: End If
  loc_140C129: unk_465BE7.BeginTrans var_140
  loc_140C132: var_86 = CByte(1) 'Byte
  loc_140C13A: Set var_90 = Me.TopCtrl1
  loc_140C140: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_140C159: If (CStr(var_E0) = "Add") Then
  loc_140C16A:   Set var_90 = Me.Txt
  loc_140C170:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_138)
  loc_140C178:   var_C0 = var_94.Text
  loc_140C18B:   Set var_98 = Me.Txt
  loc_140C191:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E4)
  loc_140C1AC:   Set var_154 = Me.Txt
  loc_140C1B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158)
  loc_140C1C7:   var_328 = Val(var_158.Text)
  loc_140C1D5:   Set var_16C = Me.Txt
  loc_140C1DB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_140C1EA:   Proc_183_7_EB17D4(var_C0, CVar(var_170))
  loc_140C1FA:   Set var_174 = Me.Txt
  loc_140C200:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_178)
  loc_140C20F:   Proc_183_7_EB17D4(var_134, CVar(var_178))
  loc_140C21F:   Proc_6_17_EAAE40(var_1B8, CVar(Me.TxtTerm))
  loc_140C22F:   Proc_6_8_EB1974(var_288, CVar(Proc_6_14_EF402C(var_328)))
  loc_140C24B:   var_9C = "Insert Into LocationMast(Code,Name,ShortName,Area,TStartDate,TEndDate,TTerm,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_80
  loc_140C2A7:   var_1C8 = CVar(var_9C & "','" & var_138 & "','" & var_E4.Text & "'," & CStr(var_328) & ",") & var_C0 & "," & var_134 & "," & var_1B8 
  loc_140C2F9:   var_2F8 = var_1C8 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_288 & ",'A','" & CVar(MemVar_1F95078) & "')" 
  loc_140C307:   unk_465BE7.Execute CStr(var_2F8), var_31C, -1
  loc_140C372: Else
  loc_140C380:   Set var_90 = Me.Txt
  loc_140C386:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_140C38E:   var_320 = var_94.Text
  loc_140C3A1:   Set var_98 = Me.Txt
  loc_140C3A7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E4)
  loc_140C3C2:   Set var_154 = Me.Txt
  loc_140C3C8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158)
  loc_140C3DD:   var_328 = Val(var_158.Text)
  loc_140C3EB:   Set var_16C = Me.Txt
  loc_140C3F1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_140C400:   Proc_183_7_EB17D4(var_C0, CVar(var_170))
  loc_140C410:   Set var_174 = Me.Txt
  loc_140C416:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_178)
  loc_140C425:   Proc_183_7_EB17D4(var_134, CVar(var_178))
  loc_140C435:   Proc_6_17_EAAE40(var_1B8, CVar(Me.TxtTerm))
  loc_140C445:   Proc_6_8_EB1974(var_288, CVar(Proc_6_14_EF402C(var_328)))
  loc_140C486:   var_E0 = CVar("UPDATE LocationMast SET Name='" & var_9C & "',ShortName = '" & var_E4.Text & "',Area=" & CStr(var_328) & ",TStartDate=") 'String
  loc_140C490:   var_D0 = ",TEndDate="
  loc_140C4D2:   var_248 = var_E0 & var_C0 & var_D0 & var_134 & ",TTerm=" & var_1B8 & ",SITE_CODE='" & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) 
  loc_140C50B:   var_31C = var_248 & "',U_EntDt=" & var_288 & ",U_AE='E',LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' WHERE Code='" & CVar(global_80) 
  loc_140C522:   unk_465BE7.Execute CStr(var_31C & "'"), var_368, -1
  loc_140C58A: End If
  loc_140C590: unk_465BE7.CommitTrans
  loc_140C599: var_86 = CByte(0) 'Byte
  loc_140C5A8: Me.Requery -1
  loc_140C5B8: Me.Requery -1
  loc_140C5E5: Me.Find "Code='" & global_80 & "'", 0, 1
  loc_140C5F5: Set var_90 = Me.TopCtrl1
  loc_140C5FB: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_D0)
  loc_140C614: If (CStr(var_320) = "Add") Then
  loc_140C617:   Call TopCtrl1_UnknownEvent_A()
  loc_140C61C:   Exit Sub
  loc_140C61D: End If
  loc_140C632: var_9C = "INI"
  loc_140C640: Call Proc_323_26_E8C3CC(Proc_5_1_100EC1C(var_9C, Me), global_52)
  loc_140C64B: Call Proc_323_31_E82A7C(var_C0)
  loc_140C650: Call Proc_323_28_12A3B30()
  loc_140C655: Exit Sub
  loc_140C656: ' Referenced from: 140BCD4
  loc_140C65F: If (CInt(var_86) = 1) Then
  loc_140C668:   unk_465BE7.RollbackTrans
  loc_140C66D: End If
  loc_140C673: Call 0.Method_arg_50 (var_9C)
  loc_140C67B: var_13C = "TopCtrl1_eSave"
  loc_140C688: Proc_183_57_104B0BC(var_9C)
  loc_140C694: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F82BAC
  'Data Table: 465BD8
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_F82A6C: On Error Goto loc_F82B83
  loc_F82AA5: If (Me.ListView.ListItems.Count > 0) Then
  loc_F82AAC:   Set var_A8 = Me.ListView
  loc_F82AF6:   Set var_C0 = Me.Txt
  loc_F82AFC:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F82B04:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F82B24: End If
  loc_F82B30: Me.FrmList.Visible = False
  loc_F82B4A: var_A4 = CStr(Me.ListView.Tag)
  loc_F82B52: var_CC = Val(var_A4)
  loc_F82B60: Set var_9C = Me.Txt
  loc_F82B66: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_A8)
  loc_F82B6E: var_A8.SetFocus
  loc_F82B82: Exit Sub
  loc_F82B83: ' Referenced from: F82A6C
  loc_F82B89: Call 0.Method_arg_50 (var_A4, var_CC)
  loc_F82B9E: Proc_183_57_104B0BC(var_A4, "ListView_Click")
  loc_F82BAA: Exit Sub
End Sub

Private Sub Form_Load() '1083174
  'Data Table: 465BD8
  Dim var_8C As Variant
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_465BE7 As Connection15
  loc_1082ED4: On Error Goto loc_108314B
  loc_1082EDE: Call 0.Method_arg_74 (CDbl(0))
  loc_1082EEA: Call 0.Method_arg_7C (CDbl(0))
  loc_1082EF6: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1082F0A: Me.LblUser.Left = CDbl(13500)
  loc_1082F21: Me.LblUser.Top = CDbl(7800)
  loc_1082F38: Me.LblLDt.Top = CDbl(8160)
  loc_1082F4F: Me.LblLDt.Left = CDbl(13500)
  loc_1082F65: Me.FrTerm.BackColor = CLng(MemVar_1F951B4)
  loc_1082F7B: Set var_8C = Me.Txt
  loc_1082F81: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1082FA0: Me.DGHelp.Left = CVar(var_90.Left)
  loc_1082FBC: Set var_B8 = Me.Txt
  loc_1082FC2: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_1082FDD: Set var_8C = Me.Txt
  loc_1082FE3: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1082FFB: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_108300A: Me.DGHelp.Top = CVar(var_90.Left)
  loc_1083026: Set var_8C = Me.TopCtrl1
  loc_108302C: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_108303A: Call 0.Method_arg_50 (var_C8)
  loc_1083042: var_D8 = CVar(var_C8) 'String
  loc_1083050: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(var_D8)
  loc_108307F: unk_465BE7.Execute "SELECT Code,Name FROM LocationMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_10830AE: CVarUnk
  loc_10830B3: VerifyVarObj
  loc_10830BF: LateIdStAd
  loc_10830F1: unk_465BE7.Execute "SELECT * FROM LocationMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_108312C: var_C8 = "INI"
  loc_108313A: Call Proc_323_26_E8C3CC(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_1083145: Call Proc_323_28_12A3B30(Me.TopCtrl1)
  loc_108314A: Exit Sub
  loc_108314B: ' Referenced from: 1082ED4
  loc_1083151: Call 0.Method_arg_50 (var_C8)
  loc_1083166: Proc_183_57_104B0BC(var_C8, "Form_Load")
  loc_1083172: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29BDC
  'Data Table: 465BD8
  loc_E29BBF: Set global_52 = Nothing
  loc_E29BD1: Set global_56 = Nothing
  loc_E29BD8: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A260
  'Data Table: 465BD8
  loc_E6A218: On Error Goto loc_E6A236
  loc_E6A22D: Proc_183_40_F3169C(Me, KeyCode)
  loc_E6A235: Exit Sub
  loc_E6A236: ' Referenced from: E6A218
  loc_E6A23C: Call 0.Method_arg_50 (var_8C)
  loc_E6A251: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E6A25D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E8CC78
  'Data Table: 465BD8
  Dim var_92 As Integer
  loc_E8CC14: On Error Goto loc_E8CC4D
  loc_E8CC21: Set var_88 = Me.Txt
  loc_E8CC27: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E8CC35: Proc_183_28_E216B0(var_8C)
  loc_E8CC41: Call Proc_323_31_E82A7C(var_8C)
  loc_E8CC49: var_92 = Index
  loc_E8CC4C: Exit Sub
  loc_E8CC4D: ' Referenced from: E8CC14
  loc_E8CC53: Call 0.Method_arg_50 (var_98)
  loc_E8CC68: Proc_183_57_104B0BC(var_98, "Txt_GotFocus")
  loc_E8CC74: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FBB49C
  'Data Table: 465BD8
  loc_FBB308: On Error Goto loc_FBB474
  loc_FBB315: If (CLng(Shift) = &H1B) Then
  loc_FBB318:   Call Proc_323_31_E82A7C()
  loc_FBB31D:   Exit Sub
  loc_FBB31E: End If
  loc_FBB32C: If (KeyCode = CInt(0)) Then
  loc_FBB369:   Proc_183_31_100957C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_FBB379: End If
  loc_FBB3B4: If ((CBool(Me.ListView.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_FBB3CA:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FBB3D3:     Proc_183_30_E53D10(Shift, arg_14, Shift)
  loc_FBB3D8:   End If
  loc_FBB3F6:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_FBB3FF:     Call Txt_Validate(KeyCode)
  loc_FBB40A:     If (var_86 = 0) Then
  loc_FBB444:       If (MsgBox("Save Record ?", 4, "Save Data", var_100, var_120) = 6) Then
  loc_FBB447:         Call TopCtrl1_UnknownEvent_16()
  loc_FBB44C:       End If
  loc_FBB44C:       Exit Sub
  loc_FBB44D:     End If
  loc_FBB450:   Else
  loc_FBB465:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FBB46E:       Proc_183_29_E53794(Shift, arg_14, var_86)
  loc_FBB473:     End If
  loc_FBB473:   End If
  loc_FBB473: End If
  loc_FBB473: Exit Sub
  loc_FBB474: ' Referenced from: FBB308
  loc_FBB47A: Call 0.Method_arg_50 (var_124, 0)
  loc_FBB48F: Proc_183_57_104B0BC(var_124, "Txt_KeyDown")
  loc_FBB49B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E80508
  'Data Table: 465BD8
  Dim var_96 As Integer
  loc_E804AE: Proc_183_52_E80008(var_94)
  loc_E804C0: var_96 = KeyAscii
  loc_E804CB: If (var_96 = CInt(2)) Then
  loc_E804D8:   Set var_9C = Me.Txt
  loc_E804DE:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_E804F9:   Proc_6_42_129B55C(var_A0, CInt(var_94), 6)
  loc_E80505: End If
  loc_E80505: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBD168
  'Data Table: 465BD8
  loc_EBD0D4: On Error Goto loc_EBD140
  loc_EBD0E5: If (KeyCode = CInt(0)) Then
  loc_EBD104:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBD111:     var_A4 = "Name"
  loc_EBD130:     Proc_183_32_FE97F0(Me.Txt, CInt(0), global_56)
  loc_EBD13F:   End If
  loc_EBD13F: End If
  loc_EBD13F: Exit Sub
  loc_EBD140: ' Referenced from: EBD0D4
  loc_EBD146: Call 0.Method_arg_50 (var_A4, Shift)
  loc_EBD15B: Proc_183_57_104B0BC(var_A4, "Txt_KeyUp")
  loc_EBD167: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DBB4
  'Data Table: 465BD8
  loc_E4DB92: Set var_88 = Me.Txt
  loc_E4DB98: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DBA6: Proc_183_27_E23198(var_8C)
  loc_E4DBB2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FA157C
  'Data Table: 465BD8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_DC As String
  Dim var_D8 As TextBox
  Dim var_E0 As TextBox
  loc_FA1414: On Error Goto loc_FA1551
  loc_FA141A: var_86 = Cancel
  loc_FA1425: If (var_86 = CInt(0)) Then
  loc_FA142B:   Call Proc_323_29_1090F20(var_88)
  loc_FA1436:   If (var_88 = &HFF) Then
  loc_FA143B:     arg_10 = &HFF
  loc_FA143E:     Exit Sub
  loc_FA143F:   End If
  loc_FA1442: Else
  loc_FA144A:   If (var_86 = CInt(1)) Then
  loc_FA1450:     Call Proc_323_30_1070D14(var_88, arg_10)
  loc_FA145B:     If (var_88 = &HFF) Then
  loc_FA1460:       arg_10 = &HFF
  loc_FA1463:       Exit Sub
  loc_FA1464:     End If
  loc_FA1467:   Else
  loc_FA146F:     If (var_86 = CInt(2)) Then
  loc_FA147D:       Set var_8C = Me.Txt
  loc_FA1483:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_FA14BE:       Set var_D4 = Me.Txt
  loc_FA14C4:       Call 0.Method_Txt_Validate0 (CInt(2), var_D8, CStr(Format(CVar(var_90), "0.000")), 1)
  loc_FA14CC:       var_D8.Text = 1
  loc_FA14E9:     Else
  loc_FA14F1:       If Not (var_86 = CInt(4)) Then
  loc_FA14FC:         If (var_86 = CInt(5)) Then
  loc_FA14FF:         End If
  loc_FA1509:         Set var_8C = Me.Txt
  loc_FA150F:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FA1522:         var_DC = Proc_6_33_15125B8(var_90, arg_10)
  loc_FA152F:         Set var_D8 = Me.Txt
  loc_FA1535:         Call 0.Method_Txt_Validate0 (Cancel, var_E0)
  loc_FA153D:         var_E0.Text = var_DC
  loc_FA1550:       End If
  loc_FA1550:     End If
  loc_FA1550:   End If
  loc_FA1550: End If
  loc_FA1550: Exit Sub
  loc_FA1551: ' Referenced from: FA1414
  loc_FA1557: Call 0.Method_arg_50 (var_DC)
  loc_FA156C: Proc_183_57_104B0BC(var_DC, "Txt_Validate")
  loc_FA1578: Exit Sub
  loc_FA157A: DOC
End Sub

Private Sub CmdTerm_Click() 'EB97E4
  'Data Table: 465BD8
  Dim var_88 As Frame
  Dim var_90 As TextBox
  loc_EB975F: If (Me.FrTerm.Visible = &HFF) Then
  loc_EB976E:   Me.FrTerm.Visible = False
  loc_EB9779: Else
  loc_EB9785:   Me.FrTerm.Visible = True
  loc_EB979B:   Set var_88 = Me.Txt
  loc_EB97A1:   Call 0.Method_CmdTerm_Click0 (CInt(4), var_90)
  loc_EB97BB:   If (var_90.Enabled = &HFF) Then
  loc_EB97C9:     Set var_88 = Me.Txt
  loc_EB97CF:     Call 0.Method_CmdTerm_Click0 (CInt(4))
  loc_EB97D7:     var_90.SetFocus
  loc_EB97E3:   End If
  loc_EB97E3: End If
  loc_EB97E3: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E8F9F4
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E8F986: On Error Goto loc_E8F9CB
  loc_E8F98F: Me.MoveFirst
  loc_E8F9A9: var_8C = "code='" & MyValue
  loc_E8F9B9: Me.Find var_8C & "'", 0, 1
  loc_E8F9C5: Call Proc_323_28_12A3B30(var_A0)
  loc_E8F9CA: Exit Sub
  loc_E8F9CB: ' Referenced from: E8F986
  loc_E8F9D1: Call 0.Method_arg_50 (var_8C)
  loc_E8F9D9: var_A4 = "SEARCHBACK"
  loc_E8F9E6: Proc_183_57_104B0BC(var_8C)
  loc_E8F9F2: Exit Sub
End Sub

Public Sub Proc_323_26_E8C3CC(arg_C) 'E8C3CC
  'Data Table: 465BD8
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_E8C366: Set var_8C = Me.Txt
  loc_E8C36C: Call 0.Method_Proc_323_26_E8C3CCC (var_8E, var_86)
  loc_E8C37C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8C392:   Set var_8C = Me.Txt
  loc_E8C398:   Call 0.Method_Proc_323_26_E8C3CC0 (CInt(var_86), var_98)
  loc_E8C3A0:   var_98.Enabled = arg_C
  loc_E8C3AF: Next var_92 'Byte
  loc_E8C3C2: Me.TxtTerm.Enabled = arg_C
  loc_E8C3CA: Exit Sub
End Sub

Public Sub Proc_323_27_ECFD68
  'Data Table: 465BD8
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_ECFCBA: global_84 = vbNullString
  loc_ECFCC4: global_88 = vbNullString
  loc_ECFCD6: Set var_8C = Me.Txt
  loc_ECFCDC: Call 0.Method_Proc_323_27_ECFD68C (var_8E, var_86)
  loc_ECFCEC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECFD02:   Set var_8C = Me.Txt
  loc_ECFD08:   Call 0.Method_Proc_323_27_ECFD680 (CInt(var_86), var_98)
  loc_ECFD10:   var_98.Text = vbNullString
  loc_ECFD2C:   Set var_8C = Me.Txt
  loc_ECFD32:   Call 0.Method_Proc_323_27_ECFD680 (CInt(var_86), var_98)
  loc_ECFD3A:   var_98.Tag = vbNullString
  loc_ECFD49: Next var_92 'Byte
  loc_ECFD5C: Me.TxtTerm.Text = vbNullString
  loc_ECFD64: Exit Sub
End Sub

Public Sub Proc_323_28_12A3B30
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_12A3550: On Error Goto loc_12A3B06
  loc_12A3559: Proc_183_45_E5CCA8(global_52)
  loc_12A3575: If (Me.RecordCount <= 0) Then
  loc_12A3578:   Call Proc_323_27_ECFD68()
  loc_12A3580: Else
  loc_12A3629:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_12A3671:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_12A36F1:   var_CC = Me.Fields.Item("U_AE")
  loc_12A36F9:   var_DC = CVar(var_CC) 'Address
  loc_12A3752:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(var_DC) = "E"), "Last Update :   ", "entdt :   "))
  loc_12A379A:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_12A3806:   global_80 = CStr(Me.Fields.Item("Name").Value)
  loc_12A3853:   Set var_B8 = Me.Txt
  loc_12A3859:   Call 0.Method_Proc_323_28_12A3B300 (CInt(0), var_CC)
  loc_12A3861:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12A38B3:   Set var_B8 = Me.Txt
  loc_12A38B9:   Call 0.Method_Proc_323_28_12A3B300 (CInt(0), var_CC)
  loc_12A38C1:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12A3913:   Set var_B8 = Me.Txt
  loc_12A3919:   Call 0.Method_Proc_323_28_12A3B300 (CInt(1), var_CC)
  loc_12A3921:   var_CC.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_12A3959:   var_B0 = CVar(Me.Fields.Item("Area")) 'Address
  loc_12A3960:   Proc_6_39_E7D3A0(var_DC)
  loc_12A3997:   Set var_B8 = Me.Txt
  loc_12A399D:   Call 0.Method_Proc_323_28_12A3B300 (CInt(2), var_CC, CStr(Format(var_DC, "0.000")))
  loc_12A39A5:   var_CC.Text = 1
  loc_12A3A16:   Set var_B8 = Me.Txt
  loc_12A3A1C:   Call 0.Method_Proc_323_28_12A3B300 (CInt(4), var_CC, CStr(Format(CVar(Me.Fields.Item("TStartDate")), "dd/MMM/yyyy")), 1)
  loc_12A3A24:   var_CC.Text = 1
  loc_12A3A93:   Set var_B8 = Me.Txt
  loc_12A3A99:   Call 0.Method_Proc_323_28_12A3B300 (CInt(5), var_CC, CStr(Format(CVar(Me.Fields.Item("TEndDate")), "dd/MMM/yyyy")), 1)
  loc_12A3AA1:   var_CC.Text = 1
  loc_12A3AE6:   var_B4 = Proc_6_38_E69628(CVar(Me.Fields.Item("TTerm")), 1)
  loc_12A3AF3:   Me.TxtTerm.Text = var_B4
  loc_12A3B05: End If
  loc_12A3B05: Exit Sub
  loc_12A3B06: ' Referenced from: 12A3550
  loc_12A3B0C: Call 0.Method_arg_50 (var_B4)
  loc_12A3B21: Proc_183_57_104B0BC(var_B4, "MoveRec")
  loc_12A3B2D: Exit Sub
End Sub

Public Sub Proc_323_29_1090F20
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_465BE7 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_1090C90: On Error Goto loc_1090EF1
  loc_1090CAA: If (Me.RecordCount = 0) Then
  loc_1090CAD:   Proc_323_29_1090F20 = 
  loc_1090CB3: End If
  loc_1090CB7: Set var_90 = Me.TopCtrl1
  loc_1090CBD: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1090CC5: var_A4 = CStr()
  loc_1090CD6: If (var_A4 = "Add") Then
  loc_1090D06:   Set var_90 = Me.Txt
  loc_1090D0C:   Call 0.Method_Proc_323_29_1090F200 (CInt(0), var_A8, var_A4, "Select Count(*) From LocationMast Where Name='", var_A0, -1)
  loc_1090D2D:   unk_465BE7.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_1090D3D:    = var_C8.Item()
  loc_1090D45:    = var_DC.Value
  loc_1090D72:   If (var_A8.Text.Fields > 0) Then
  loc_1090D90:     var_A0 = "Duplicate Name"
  loc_1090D96:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_1090DB1:     Set var_90 = Me.Txt
  loc_1090DB7:     Call 0.Method_Proc_323_29_1090F200 (CInt(0))
  loc_1090DBF:     var_A8.SetFocus
  loc_1090DD0:     Proc_323_29_1090F20 = &HFF
  loc_1090DD6:   End If
  loc_1090DD9: Else
  loc_1090E06:   Set var_90 = Me.Txt
  loc_1090E0C:   Call 0.Method_Proc_323_29_1090F200 (CInt(0), var_A8, var_A4, "Select Count(*) From LocationMast Where Name='", var_A0, -1)
  loc_1090E3E:   unk_465BE7.Execute var_C8 & var_A4 & "' And Name<>'" & global_84 & "'", 0, var_DC
  loc_1090E4E:    = var_C8.Item(var_A8)
  loc_1090E56:    = var_DC.Value
  loc_1090E87:   If (var_A8.Text.Fields > 0) Then
  loc_1090EAB:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_1090EC6:     Set var_90 = Me.Txt
  loc_1090ECC:     Call 0.Method_Proc_323_29_1090F200 (CInt(0))
  loc_1090ED4:     var_A8.SetFocus
  loc_1090EE5:     Proc_323_29_1090F20 = &HFF
  loc_1090EEB:   End If
  loc_1090EEB: End If
  loc_1090EEB: Proc_323_29_1090F20 = var_A8
  loc_1090EF1: ' Referenced from: 1090C90
  loc_1090EF7: Call 0.Method_arg_50 (var_A4)
  loc_1090F0C: Proc_183_57_104B0BC(var_A4)
  loc_1090F18: Proc_323_29_1090F20 = "ValidateName"
End Sub

Public Sub Proc_323_30_1070D14
  'Data Table: 465BD8
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_465BE7 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_1070AA4: On Error Goto loc_1070CE5
  loc_1070AAB: Set var_8C = Me.TopCtrl1
  loc_1070AB1: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1070AB9: var_A0 = CStr()
  loc_1070ACA: If (var_A0 = "Add") Then
  loc_1070AFA:   Set var_8C = Me.Txt
  loc_1070B00:   Call 0.Method_Proc_323_30_1070D140 (CInt(1), var_A4, var_A0, "Select Count(*) From LocationMast Where ShortName='", var_9C, -1)
  loc_1070B21:   unk_465BE7.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_1070B31:    = var_C4.Item()
  loc_1070B39:    = var_D8.Value
  loc_1070B66:   If (var_A4.Text.Fields > 0) Then
  loc_1070B84:     var_9C = "Duplicate Short Name"
  loc_1070B8A:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_1070BA5:     Set var_8C = Me.Txt
  loc_1070BAB:     Call 0.Method_Proc_323_30_1070D140 (CInt(1))
  loc_1070BB3:     var_A4.SetFocus
  loc_1070BC4:     Proc_323_30_1070D14 = &HFF
  loc_1070BCA:   End If
  loc_1070BCD: Else
  loc_1070BFA:   Set var_8C = Me.Txt
  loc_1070C00:   Call 0.Method_Proc_323_30_1070D140 (CInt(1), var_A4, var_A0, "Select Count(*) From LocationMast Where ShortName='", var_9C, -1)
  loc_1070C32:   unk_465BE7.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_88 & "'", 0, var_D8
  loc_1070C42:    = var_C4.Item(var_A4)
  loc_1070C4A:    = var_D8.Value
  loc_1070C7B:   If (var_A4.Text.Fields > 0) Then
  loc_1070C9F:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_1070CBA:     Set var_8C = Me.Txt
  loc_1070CC0:     Call 0.Method_Proc_323_30_1070D140 (CInt(1))
  loc_1070CC8:     var_A4.SetFocus
  loc_1070CD9:     Proc_323_30_1070D14 = &HFF
  loc_1070CDF:   End If
  loc_1070CDF: End If
  loc_1070CDF: Proc_323_30_1070D14 = var_A4
  loc_1070CE5: ' Referenced from: 1070AA4
  loc_1070CEB: Call 0.Method_arg_50 (var_A0)
  loc_1070D00: Proc_183_57_104B0BC(var_A0)
  loc_1070D0C: Proc_323_30_1070D14 = "ValidateSName"
End Sub

Public Sub Proc_323_31_E82A7C
  'Data Table: 465BD8
  loc_E82A2C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E82A3E:   Me.DGHelp.Visible = False
  loc_E82A46: End If
  loc_E82A61: If (Me.FrmList.Visible = &HFF) Then
  loc_E82A70:   Me.FrmList.Visible = False
  loc_E82A78: End If
  loc_E82A78: Exit Sub
End Sub
