VERSION 5.00
Begin VB.Form FrmClaimEntry
  Caption = "Claim Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8370
  ClientHeight = 5760
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame Frame1
    BackColor = &HC0FFFF&
    ForeColor = &HC00000&
    Left = 2910
    Top = 5100
    Width = 6510
    Height = 3810
    TabIndex = 19
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    Begin TextBox Txt
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1380
      Width = 4230
      Height = 285
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 25
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
      ForeColor = &HFF0000&
      Left = 2175
      Top = 135
      Width = 1485
      Height = 285
      TabIndex = 4
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
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 450
      Width = 1485
      Height = 285
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 6
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
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 750
      Width = 4230
      Height = 285
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 255
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
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1695
      Width = 4230
      Height = 285
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 25
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 2010
      Width = 4245
      Height = 285
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 100
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
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1065
      Width = 4230
      Height = 285
      TabIndex = 8
      BorderStyle = 0 'None
      MaxLength = 15
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
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 2325
      Width = 4230
      Height = 285
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 15
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
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 5130
      Top = 435
      Width = 1245
      Height = 285
      TabIndex = 6
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
    Begin BtnEnh cmdOK
      Left = 2775
      Top = 2970
      Width = 1215
      Height = 660
      TabIndex = 31
    End
    Begin BtnEnh cmdCancel
      Left = 4485
      Top = 2970
      Width = 1215
      Height = 660
      TabIndex = 32
    End
    Begin Label LblName
      Caption = "Claimed By"
      Index = 11
      ForeColor = &HFF0000&
      Left = 240
      Top = 1365
      Width = 1095
      Height = 240
      TabIndex = 28
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
      Caption = "Found Date"
      Index = 10
      ForeColor = &HFF0000&
      Left = 240
      Top = 120
      Width = 1095
      Height = 240
      TabIndex = 27
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
      Caption = "Found Time"
      Index = 9
      ForeColor = &HFF0000&
      Left = 240
      Top = 435
      Width = 1140
      Height = 240
      TabIndex = 26
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
      Caption = "Item Description"
      Index = 5
      ForeColor = &HFF0000&
      Left = 240
      Top = 750
      Width = 1545
      Height = 240
      TabIndex = 25
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
      Caption = "Contact No."
      Index = 2
      ForeColor = &HFF0000&
      Left = 240
      Top = 1695
      Width = 1095
      Height = 240
      TabIndex = 24
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
      Caption = "Other Detail"
      Index = 7
      ForeColor = &HFF0000&
      Left = 240
      Top = 2010
      Width = 1140
      Height = 240
      TabIndex = 23
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
      Caption = "Area"
      Index = 8
      ForeColor = &HFF0000&
      Left = 240
      Top = 1065
      Width = 450
      Height = 240
      TabIndex = 22
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
      Caption = "Person in charge"
      Index = 0
      ForeColor = &HFF0000&
      Left = 240
      Top = 2310
      Width = 1620
      Height = 240
      TabIndex = 21
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
      Caption = "Delivery Date"
      Index = 3
      ForeColor = &HFF0000&
      Left = 3795
      Top = 435
      Width = 1275
      Height = 240
      TabIndex = 20
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5655
    Top = 1590
    Width = 1600
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 9
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
  Begin Frame FrmList
    Left = 13080
    Top = 1050
    Width = 1875
    Height = 1770
    Visible = 0   'False
    TabIndex = 16
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
    Begin ListView ListView
      Left = 135
      Top = 135
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 17
    End
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5655
    Top = 960
    Width = 1605
    Height = 285
    TabIndex = 0
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5655
    Top = 1275
    Width = 1605
    Height = 285
    TabIndex = 1
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
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 2775
    Top = 2535
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid1
    Left = 2055
    Top = 1950
    Width = 10950
    Height = 2670
    TabIndex = 3
  End
  Begin BtnEnh Exit
    Left = 9435
    Top = 8100
    Width = 1215
    Height = 660
    TabIndex = 30
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 29
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
    Caption = "Status"
    Index = 6
    ForeColor = &HFF0000&
    Left = 3750
    Top = 1605
    Width = 585
    Height = 240
    TabIndex = 18
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
    Caption = "From Found Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 3750
    Top = 960
    Width = 1650
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
    Caption = "To Found Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 3735
    Top = 1275
    Width = 1395
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
End

Attribute VB_Name = "FrmClaimEntry"

Private global_56 As Integer
Private global_72 As Variant

Private Sub ListView_UnknownEvent_0 'EB797C
  'Data Table: 440A9C
  loc_EB78EF: Set var_88 = Me.Txt
  loc_EB78F5: Call 0.Method_ListView_UnknownEvent_00 (CInt(0))
  loc_EB791E: If (Proc_183_19_E8E68C(var_8C, "From Date") = 0) Then
  loc_EB7928:   Call Txt_GotFocus()
  loc_EB792D:   Exit Sub
  loc_EB792E: End If
  loc_EB7939: Set var_88 = Me.Txt
  loc_EB793F: Call 0.Method_ListView_UnknownEvent_00 (CInt(1), var_8C)
  loc_EB7968: If (Proc_183_19_E8E68C(var_8C, "To Date") = 0) Then
  loc_EB7972:   Call Txt_GotFocus()
  loc_EB7977:   Exit Sub
  loc_EB7978: End If
  loc_EB7978: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F09210
  'Data Table: 440A9C
  Dim var_88 As Variant
  Dim var_A8 As TextBox
  loc_F0913C: On Error Goto loc_F091A9
  loc_F0915D: var_A0 = Me.ListView.SelectedItem.Text
  loc_F09170: Set var_A4 = Me.Txt
  loc_F09176: Call 0.Method_ListView_UnknownEvent_130 (CInt(2), var_A8)
  loc_F0917E: var_A8.Text = var_A0
  loc_F091A0: Me.FrmList.Visible = False
  loc_F091A8: Exit Sub
  loc_F091A9: ' Referenced from: F0913C
  loc_F091B1: Set var_88 = Err()
  loc_F091B7: Call 0.Method_arg_1C (var_AC)
  loc_F091C8: If (var_AC <> 0) Then
  loc_F091D3:   Set var_88 = Err()
  loc_F091D9:   Call 0.Method_arg_2C (var_A0)
  loc_F091FA:   MsgBox(CVar(var_A0), &H40, "Validation", var_EC, var_10C)
  loc_F0920D: End If
  loc_F0920D: Exit Sub
End Sub

Private Sub Exit_UnknownEvent_9 'E18C38
  'Data Table: 440A9C
  loc_E18C2D: Me.Global.Unload Me
  loc_E18C35: Exit Sub
End Sub

Private Sub Form_Load() 'F060DC
  'Data Table: 440A9C
  Dim var_AC As Variant
  Dim unk_440AA7 As Connection15
  Dim var_BC As Variant
  loc_F06004: On Error Goto loc_F06095
  loc_F06015: Me.FGrid1.Visible = True
  loc_F0602B: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_F0603A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F0604C: Set var_AC = Me.FGrid1
  loc_F06052: var_AC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_F06070: unk_440AA7.Execute "SELECT  Code AS Scode,FDate,Ftime,FArea,FindBy,Description,UName1,ClaimedBy,ContactNo,OtherDetail,DeliveredBy,DDate,Status FROM LostFoundDetail Order BY Code", var_BC, -1
  loc_F06081: Set global_52 = var_AC
  loc_F0608F: Call Proc_145_20_11B2214(var_AC)
  loc_F06094: Exit Sub
  loc_F06095: ' Referenced from: F06004
  loc_F0609D: Set var_AC = Err()
  loc_F060A3: Call 0.Method_arg_2C (var_C4)
  loc_F060C4: MsgBox(CVar(var_C4), &H40, "Information", var_E4, var_104)
  loc_F060D7: Exit Sub
  loc_F060D8: Exit Sub
End Sub

Private Sub Form_Resize() 'E73230
  'Data Table: 440A9C
  loc_E731DA: Call 0.Method_arg_50 (var_88)
  loc_E731EC: Me.LblFormCaption.Caption = var_88
  loc_E73205: Me.LblFormCaption.Left = CDbl(0)
  loc_E73213: Call 0.Method_arg_100 (var_90)
  loc_E73225: Me.LblFormCaption.Width = var_90
  loc_E7322D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52D08
  'Data Table: 440A9C
  loc_E52CDB: Set global_52 = Nothing
  loc_E52CED: Set global_52 = Nothing
  loc_E52CFF: Set global_52 = Nothing
  loc_E52D06: Exit Sub
End Sub

Private Sub Form_Activate() 'DFCB68
  'Data Table: 440A9C
  Dim var_B01 As Double
  loc_DFCB64: Exit Sub
  loc_DFCB65: var_B01 = 
End Sub

Private Sub CmdOK_UnknownEvent_9 '12402D0
  'Data Table: 440A9C
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_8C As TextBox
  Dim var_FC As Variant
  Dim unk_440AA7 As Connection15
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_1A4 As Variant
  Dim var_308 As Variant
  Dim var_94 As String
  Dim var_88 As Frame
  loc_123FE1F: Set var_88 = Me.Txt
  loc_123FE25: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(7))
  loc_123FE4E: If (Proc_183_19_E8E68C(var_8C, "Claimed By") = 0) Then
  loc_123FE58:   Call Txt_GotFocus()
  loc_123FE5D:   Exit Sub
  loc_123FE5E: End If
  loc_123FE69: Set var_88 = Me.Txt
  loc_123FE6F: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(8), var_8C)
  loc_123FE98: If (Proc_183_19_E8E68C(var_8C, "Contact No.") = 0) Then
  loc_123FEA2:   Call Txt_GotFocus()
  loc_123FEA7:   Exit Sub
  loc_123FEA8: End If
  loc_123FEB3: Set var_88 = Me.Txt
  loc_123FEB9: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(9), var_8C, CInt(8))
  loc_123FEC1: var_94 = "Other Details"
  loc_123FEE2: If (Proc_183_19_E8E68C(var_8C, var_94) = 0) Then
  loc_123FEEC:   Call Txt_GotFocus()
  loc_123FEF1:   Exit Sub
  loc_123FEF2: End If
  loc_123FEFC: var_AC = Me.FGrid1.Row
  loc_123FF05: var_BC = CVar(CLng(var_AC)) 'Long
  loc_123FF20: Set var_88 = Me.Txt
  loc_123FF26: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(7), var_8C, var_94, CVar(CLng(7)))
  loc_123FF2E: var_BC = var_8C.Text
  loc_123FF36: var_FC = CVar(var_94) 'String
  loc_123FF3D: LateIdCallSt
  loc_123FF7A: Set var_88 = Me.Txt
  loc_123FF80: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(8), var_8C, var_94, CVar(CLng(8)), CVar(CLng(Txt.DispID_A)))
  loc_123FF88: var_9C = var_8C.Text
  loc_123FF90: var_FC = CVar(var_94) 'String
  loc_123FF97: LateIdCallSt
  loc_123FFD4: Set var_88 = Me.Txt
  loc_123FFDA: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(9), var_8C, var_94, CVar(CLng(9)), CVar(CLng(Txt.DispID_A)), var_9C)
  loc_123FFE2: var_FC = var_8C.Text
  loc_123FFEA: var_FC = CVar(var_94) 'String
  loc_123FFF1: LateIdCallSt
  loc_124002E: Set var_88 = Me.Txt
  loc_1240034: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(&HA), var_8C, var_94, CVar(CLng(&HD)), CVar(CLng(Txt.DispID_A)), var_9C)
  loc_124003C: var_FC = var_8C.Text
  loc_1240044: var_FC = CVar(var_94) 'String
  loc_124004B: LateIdCallSt
  loc_1240088: Set var_88 = Me.Txt
  loc_124008E: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(&HB), var_8C, var_94, CVar(CLng(&HB)), CVar(CLng(Txt.DispID_A)), var_9C)
  loc_1240096: var_FC = var_8C.Text
  loc_124009E: var_FC = CVar(var_94) 'String
  loc_12400A5: LateIdCallSt
  loc_12400C7: var_BC = CVar(CLng(Txt.DispID_A)) 'Long
  loc_12400DD: LateIdCallSt
  loc_12400F1: unk_440AA7.BeginTrans var_120
  loc_1240101: Proc_6_7_F26918(var_AC, MemVar_1F950EC, var_9C, "ü", CVar(CLng(&HA)), MemVar_1F950EC)
  loc_1240111: Set var_88 = Me.Txt
  loc_1240117: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(7), var_8C, var_9C, var_FC)
  loc_1240136: Set var_90 = Me.Txt
  loc_124013C: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(8), var_174, var_FC)
  loc_124015B: Set var_1B8 = Me.Txt
  loc_1240161: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(9), var_1BC, CInt(9))
  loc_1240180: Set var_200 = Me.Txt
  loc_1240186: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(&HA), var_204)
  loc_12401A6: var_294 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_12401AE: var_2B4 = CVar(CLng(0)) 'Long
  loc_1240208: var_1A4 = "UPDATE LostFoundDetail SET Status='Delivered', DDate=" & var_AC & ", ClaimedBy='" & Trim(CVar(var_8C)) & "',ContactNo='" & Trim(CVar(var_174)) 
  loc_1240241: var_308 = var_1A4 & "', OtherDetail='" & Trim(CVar(var_1BC)) & "', DeliveredBy='" & Trim(CVar(var_204)) & "' " & "WHERE Code='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_1240258: unk_440AA7.Execute CStr(var_308 & "'"), var_348, -1
  loc_12402AE: unk_440AA7.CommitTrans
  loc_12402B5: Set var_9C = Nothing 
  loc_12402C5: Me.Frame1.Visible = False
  loc_12402CD: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E5C518
  'Data Table: 440A9C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5C4EA: Me.FGrid1.Col = CVar(CLng(&HA))
  loc_E5C4FD: Set var_A8 = Me.TxtGrid
  loc_E5C503: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_AC)
  loc_E5C50B: var_AC.Visible = False
  loc_E5C517: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '126D8E8
  'Data Table: 440A9C
  Dim var_88 As MSHFlexGrid
  Dim var_148 As Boolean
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_128 As String
  Dim var_160 As TextBox
  Dim var_15C As Frame
  loc_126D358: Set var_88 = Me.FGrid1
  loc_126D36B: var_148 = (CLng(var_88.Col) = CLng(&HA))
  loc_126D3C3: If CBool(CVar(CLng(0)) And (Trim(CVar(CStr(var_88.TextMatrix)))) <> vbNullString)) Then
  loc_126D3D4:   Set var_15C = Me.Txt
  loc_126D3DA:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(7), var_160, vbNullString)
  loc_126D3E2:   var_160.Text = CVar(CLng(var_88.RowSel))
  loc_126D3FC:   Set var_15C = Me.Txt
  loc_126D402:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(8), var_160)
  loc_126D40A:   var_160.Text = vbNullString
  loc_126D424:   Set var_15C = Me.Txt
  loc_126D42A:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(9), var_160)
  loc_126D432:   var_160.Text = vbNullString
  loc_126D44C:   Set var_15C = Me.Txt
  loc_126D452:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HA), var_160)
  loc_126D45A:   var_160.Text = vbNullString
  loc_126D474:   Set var_15C = Me.Txt
  loc_126D47A:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HB), var_160)
  loc_126D482:   var_160.Text = vbNullString
  loc_126D49A:   var_B8 = CVar(CLng(Txt.DispID_C)) 'Long
  loc_126D4D6:   If (Trim(CVar(CStr(Txt.DispID_41))) = vbNullString) Then
  loc_126D4E5:     Me.Frame1.Visible = True
  loc_126D4ED:     var_B8 = 0
  loc_126D4FD:     Me.Frame1.ZOrder var_B8
  loc_126D512:     Set var_15C = Me.Txt
  loc_126D518:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(3), var_160, 0)
  loc_126D520:     var_160.Enabled = CVar(CLng(&HA))
  loc_126D539:     Set var_15C = Me.Txt
  loc_126D53F:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_160, 0)
  loc_126D547:     var_160.Enabled = var_B8
  loc_126D560:     Set var_15C = Me.Txt
  loc_126D566:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(5), var_160)
  loc_126D56E:     var_160.Enabled = False
  loc_126D587:     Set var_15C = Me.Txt
  loc_126D58D:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_160)
  loc_126D595:     var_160.Enabled = False
  loc_126D5AE:     Set var_15C = Me.Txt
  loc_126D5B4:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HA), var_160)
  loc_126D5BC:     var_160.Enabled = False
  loc_126D5D5:     Set var_15C = Me.Txt
  loc_126D5DB:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HB), var_160)
  loc_126D5E3:     var_160.Enabled = False
  loc_126D5FB:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126D624:     Set var_15C = Me.Txt
  loc_126D62A:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(3), var_160, CStr(Txt.DispID_41))
  loc_126D632:     var_160.Text = CVar(CLng(2))
  loc_126D67D:     Set var_15C = Me.Txt
  loc_126D683:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_160, CStr(Txt.DispID_41), CVar(CLng(3)))
  loc_126D68B:     var_160.Text = CVar(CLng(Txt.DispID_A))
  loc_126D6D6:     Set var_15C = Me.Txt
  loc_126D6DC:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(5), var_160, CStr(Txt.DispID_41), CVar(CLng(6)))
  loc_126D6E4:     var_160.Text = CVar(CLng(Txt.DispID_A))
  loc_126D706:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126D72F:     Set var_15C = Me.Txt
  loc_126D735:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_160, CStr(Txt.DispID_41), CVar(CLng(4)))
  loc_126D73D:     var_160.Text = var_B8
  loc_126D761:     Set var_15C = Me.Txt
  loc_126D767:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HA), var_160, MemVar_1F950C8)
  loc_126D76F:     var_160.Text = var_B8
  loc_126D78E:     Set var_15C = Me.Txt
  loc_126D794:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HB), var_160)
  loc_126D79C:     var_160.Text = CStr(MemVar_1F950EC)
  loc_126D7B6:     Set var_15C = Me.Txt
  loc_126D7BC:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(7), var_160)
  loc_126D7C4:     var_160.SetFocus
  loc_126D7D3:   Else
  loc_126D7DF:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126D7E7:     var_D8 = CVar(CLng(7)) 'Long
  loc_126D7EC:     var_128 = vbNullString
  loc_126D7F5:     LateIdCallSt
  loc_126D80C:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126D814:     var_D8 = CVar(CLng(8)) 'Long
  loc_126D819:     var_128 = vbNullString
  loc_126D822:     LateIdCallSt
  loc_126D839:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126D841:     var_D8 = CVar(CLng(9)) 'Long
  loc_126D846:     var_128 = vbNullString
  loc_126D84F:     LateIdCallSt
  loc_126D866:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126D86E:     var_D8 = CVar(CLng(&HA)) 'Long
  loc_126D873:     var_128 = vbNullString
  loc_126D87C:     LateIdCallSt
  loc_126D893:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126D89B:     var_D8 = CVar(CLng(&HB)) 'Long
  loc_126D8A0:     var_128 = vbNullString
  loc_126D8A9:     LateIdCallSt
  loc_126D8C0:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126D8C8:     var_D8 = CVar(CLng(&HA)) 'Long
  loc_126D8CD:     var_128 = vbNullString
  loc_126D8D6:     LateIdCallSt
  loc_126D8E1:   End If
  loc_126D8E1: End If
  loc_126D8E3: Set var_88 = Nothing 
  loc_126D8E7: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E10498
  'Data Table: 440A9C
  loc_E10489: Call Fgrid1_UnknownEvent_C()
  loc_E10493: global_56 = 0
  loc_E10496: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'DFFE54
  'Data Table: 440A9C
  loc_DFFE4C: Call Fgrid1_UnknownEvent_9()
  loc_DFFE51: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F79B10
  'Data Table: 440A9C
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_E0 As TextBox
  loc_F799E6: Set var_88 = Me.Txt
  loc_F799EC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F799FA: Proc_6_74_E23240(var_8C)
  loc_F79A09: var_92 = Index
  loc_F79A14: If (var_92 = CInt(2)) Then
  loc_F79A24:   ReDim var_98(0 To 2)
  loc_F79A3B:   var_98(0) = "Delivered"
  loc_F79A4A:   var_98(1) = "Pending"
  loc_F79A59:   var_98(2) = "ALL"
  loc_F79A7B:   Set var_E0 = Me.ListView
  loc_F79A96:   Set var_8C = Me.Txt
  loc_F79AB0:   Set global_88 = Proc_6_66_F0048C(var_E0, var_8C, Index, Array(var_98))
  loc_F79ACE:   Set var_88 = Me.Txt
  loc_F79AD4:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_E8, 3)
  loc_F79ADC:   global_72 = var_8C.Text
  loc_F79AEE:   Set var_90 = Me.Txt
  loc_F79AF4:   Call 0.Method_Txt_GotFocus0 (Index, var_E0, var_E8)
  loc_F79AFC:   var_E0.Tag = var_92
  loc_F79B0F: End If
  loc_F79B0F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FFADC4
  'Data Table: 440A9C
  Dim var_8C As Frame
  Dim var_94 As TextBox
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_B8 As TextBox
  loc_FFABF6: If (CLng(Shift) = &H1B) Then
  loc_FFAC05:   Me.FrmList.Visible = False
  loc_FFAC0D:   Exit Sub
  loc_FFAC0E: End If
  loc_FFAC1C: If (KeyCode = CInt(2)) Then
  loc_FFAC41:   Set var_8C = Me.Txt
  loc_FFAC47:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_FFAC4F:   var_98 = var_94.Left
  loc_FFAC61:   Set var_9C = Me.Txt
  loc_FFAC67:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_FFAC6F:   var_A4 = var_A0.Top
  loc_FFAC81:   Set var_A8 = Me.Txt
  loc_FFAC87:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_FFAC8F:   var_B0 = var_AC.Height
  loc_FFACA1:   Set var_B4 = Me.Txt
  loc_FFACA7:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_FFACAF:   var_BC = var_B8.Width
  loc_FFACF7:   Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_FFAD1B: End If
  loc_FFAD4C: If (((Me.FrmList.Visible = 0) And (CLng(Shift) = &H26)) Or (CLng(Shift) = &HD)) Then
  loc_FFAD55:   Proc_6_75_E5335C(Shift, arg_14, CInt(var_98), CInt((var_A4 + var_B0)))
  loc_FFAD5A: End If
  loc_FFAD75: If (Me.FrmList.Visible = 0) Then
  loc_FFAD8D:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FFAD96:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_BC))
  loc_FFAD9E:   Else
  loc_FFADB3:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FFADBC:       Proc_6_75_E5335C(Shift, arg_14)
  loc_FFADC1:     End If
  loc_FFADC1:   End If
  loc_FFADC1: End If
  loc_FFADC1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E8D974
  'Data Table: 440A9C
  Dim var_AC As TextBox
  loc_E8D91A: If (KeyAscii = CInt(2)) Then
  loc_E8D94E:   Set var_A8 = Me.Txt
  loc_E8D954:   Call 0.Method_Txt_KeyPress0 (CInt(2), var_AC)
  loc_E8D95C:   var_AC.Text = Me.ListView.SelectedItem.Text
  loc_E8D972: End If
  loc_E8D972: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) '114AF14
  'Data Table: 440A9C
  Dim var_92 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_154 As Variant
  Dim unk_440AA7 As Connection15
  Dim var_178 As TextBox
  Dim var_174 As Variant
  Dim var_A4 As String
  loc_114ABBE: Set var_88 = Me.Txt
  loc_114ABC4: Call 0.Method_Txt_LostFocus0 (Index)
  loc_114ABD2: Proc_6_73_E23294(var_8C)
  loc_114ABE1: var_92 = Index
  loc_114ABEC: If (var_92 = CInt(0)) Then
  loc_114ABFA:   Set var_88 = Me.Txt
  loc_114AC00:   Call 0.Method_Txt_LostFocus0 (CInt(0), var_8C)
  loc_114AC21:   Set var_98 = Me.Txt
  loc_114AC27:   Call 0.Method_Txt_LostFocus0 (CInt(0), var_9C)
  loc_114AC2F:   var_9C.Text = Proc_6_33_15125B8(var_8C, var_92)
  loc_114AC45: Else
  loc_114AC4D:   If (var_92 = CInt(1)) Then
  loc_114AC5B:     Set var_88 = Me.Txt
  loc_114AC61:     Call 0.Method_Txt_LostFocus0 (CInt(1), var_8C)
  loc_114AC82:     Set var_98 = Me.Txt
  loc_114AC88:     Call 0.Method_Txt_LostFocus0 (CInt(1), var_9C)
  loc_114AC90:     var_9C.Text = Proc_6_33_15125B8(var_8C)
  loc_114ACA6:   Else
  loc_114ACAE:     If (var_92 = CInt(2)) Then
  loc_114ACBF:       Set var_88 = Me.Txt
  loc_114ACC5:       Call 0.Method_Txt_LostFocus0 (CInt(0), var_8C)
  loc_114ACE8:       Set var_90 = Me.Txt
  loc_114ACEE:       Call 0.Method_Txt_LostFocus0 (CInt(1), var_98, var_A4)
  loc_114ACF6:       (var_8C.Text <> vbNullString) = var_98.Text
  loc_114AD16:       If (var_8C And (var_A4 <> vbNullString)) Then
  loc_114AD27:         Set var_88 = Me.Txt
  loc_114AD2D:         Call 0.Method_Txt_LostFocus0 (CInt(2), var_8C)
  loc_114AD4C:         If (var_8C.Text = "ALL") Then
  loc_114AD5C:           var_D4 = "SELECT  Code AS Scode,FDate,Ftime,FArea,FindBy,Description,UName1,ClaimedBy,ContactNo,OtherDetail,DeliveredBy,DDate,Status FROM LostFoundDetail WHERE FDate Between "
  loc_114AD6C:           Set var_88 = Me.Txt
  loc_114AD72:           Call 0.Method_Txt_LostFocus0 (CInt(0), var_8C, var_D4)
  loc_114AD81:           Proc_6_7_F26918(var_C4, CVar(var_8C), var_174)
  loc_114AD89:           var_E4 = -1 & var_C4 
  loc_114ADA1:           Set var_90 = Me.Txt
  loc_114ADA7:           Call 0.Method_Txt_LostFocus0 (CInt(1), var_98)
  loc_114ADB6:           Proc_6_7_F26918(var_124, CVar(var_98))
  loc_114ADCB:           var_A0 = CStr(var_E4 & " AND " & var_124 & " Order BY Code")
  loc_114ADD5:           unk_440AA7.Execute var_A0, var_9C, 
  loc_114ADE6:           Set global_52 = var_9C
  loc_114AE10:         Else
  loc_114AE1D:           var_D4 = "SELECT  Code AS Scode,FDate,Ftime,FArea,FindBy,Description,UName1,ClaimedBy,ContactNo,OtherDetail,DeliveredBy,DDate,Status FROM LostFoundDetail WHERE FDate Between "
  loc_114AE2D:           Set var_88 = Me.Txt
  loc_114AE33:           Call 0.Method_Txt_LostFocus0 (CInt(0), var_8C, var_D4)
  loc_114AE42:           Proc_6_7_F26918(var_C4, CVar(var_8C), var_1B8)
  loc_114AE4A:           var_E4 = -1 & var_C4 
  loc_114AE62:           Set var_90 = Me.Txt
  loc_114AE68:           Call 0.Method_Txt_LostFocus0 (CInt(1), var_98)
  loc_114AE77:           Proc_6_7_F26918(var_124, CVar(var_98))
  loc_114AE88:           var_154 = var_E4 & " AND " & var_124 & " AND Status='" 
  loc_114AE9A:           Set var_9C = Me.Txt
  loc_114AEA0:           Call 0.Method_Txt_LostFocus0 (CInt(2), var_178, var_A0)
  loc_114AEA8:           var_154 = var_178.Text
  loc_114AECA:           unk_440AA7.Execute CStr(var_1BC & CVar(var_A0) & "' Order BY Code"), , 
  loc_114AEDB:           Set global_52 = var_1BC
  loc_114AF0C:         End If
  loc_114AF0C:         Call Proc_145_19_10BC3BC()
  loc_114AF11:       End If
  loc_114AF11:     End If
  loc_114AF11:   End If
  loc_114AF11: End If
  loc_114AF11: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'FF4B84
  'Data Table: 440A9C
  Dim var_8C As TextBox
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  Dim var_88 As Frame
  loc_FF499A: Set var_88 = Me.Txt
  loc_FF49A0: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(7), var_8C)
  loc_FF49A8: var_8C.Text = vbNullString
  loc_FF49C2: Set var_88 = Me.Txt
  loc_FF49C8: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(8), var_8C)
  loc_FF49D0: var_8C.Text = vbNullString
  loc_FF49EA: Set var_88 = Me.Txt
  loc_FF49F0: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(9), var_8C)
  loc_FF49F8: var_8C.Text = vbNullString
  loc_FF4A12: Set var_88 = Me.Txt
  loc_FF4A18: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(&HA), var_8C)
  loc_FF4A20: var_8C.Text = vbNullString
  loc_FF4A3A: Set var_88 = Me.Txt
  loc_FF4A40: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(&HB), var_8C)
  loc_FF4A48: var_8C.Text = vbNullString
  loc_FF4A58: Set var_90 = Me.FGrid1
  loc_FF4A67: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF4A6F: var_D0 = CVar(CLng(7)) 'Long
  loc_FF4A74: var_F0 = vbNullString
  loc_FF4A7D: LateIdCallSt
  loc_FF4A94: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF4A9C: var_D0 = CVar(CLng(8)) 'Long
  loc_FF4AA1: var_F0 = vbNullString
  loc_FF4AAA: LateIdCallSt
  loc_FF4AC1: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF4AC9: var_D0 = CVar(CLng(9)) 'Long
  loc_FF4ACE: var_F0 = vbNullString
  loc_FF4AD7: LateIdCallSt
  loc_FF4AEE: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF4AF6: var_D0 = CVar(CLng(&HA)) 'Long
  loc_FF4AFB: var_F0 = vbNullString
  loc_FF4B04: LateIdCallSt
  loc_FF4B1B: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF4B23: var_D0 = CVar(CLng(&HB)) 'Long
  loc_FF4B28: var_F0 = vbNullString
  loc_FF4B31: LateIdCallSt
  loc_FF4B48: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF4B50: var_D0 = CVar(CLng(&HA)) 'Long
  loc_FF4B55: var_F0 = vbNullString
  loc_FF4B5E: LateIdCallSt
  loc_FF4B6B: Set var_90 = Nothing 
  loc_FF4B7B: Me.Frame1.Visible = False
  loc_FF4B83: Exit Sub
End Sub

Public Sub Proc_145_17_E7CD1C(arg_C) 'E7CD1C
  'Data Table: 440A9C
  Dim var_98 As TextBox
  loc_E7CCCA: Set var_8C = Me.Txt
  loc_E7CCD0: Call 0.Method_Proc_145_17_E7CD1CC (var_8E, var_86)
  loc_E7CCE0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7CCF6:   Set var_8C = Me.Txt
  loc_E7CCFC:   Call 0.Method_Proc_145_17_E7CD1C0 (CInt(var_86), var_98)
  loc_E7CD04:   var_98.Enabled = arg_C
  loc_E7CD13: Next var_92 'Byte
  loc_E7CD19: Exit Sub
End Sub

Public Sub Proc_145_18_EB3DA0
  'Data Table: 440A9C
  Dim var_98 As TextBox
  loc_EB3D0A: global_64 = vbNullString
  loc_EB3D14: global_68 = vbNullString
  loc_EB3D26: Set var_8C = Me.Txt
  loc_EB3D2C: Call 0.Method_Proc_145_18_EB3DA0C (var_8E, var_86)
  loc_EB3D3C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB3D52:   Set var_8C = Me.Txt
  loc_EB3D58:   Call 0.Method_Proc_145_18_EB3DA00 (CInt(var_86), var_98)
  loc_EB3D60:   var_98.Text = vbNullString
  loc_EB3D7C:   Set var_8C = Me.Txt
  loc_EB3D82:   Call 0.Method_Proc_145_18_EB3DA00 (CInt(var_86), var_98)
  loc_EB3D8A:   var_98.Tag = vbNullString
  loc_EB3D99: Next var_92 'Byte
  loc_EB3D9F: Exit Sub
End Sub

Public Sub Proc_145_19_10BC3BC
  'Data Table: 440A9C
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Long
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_E8 As Variant
  loc_10BC0E4: Set var_88 = Me.FGrid1
  loc_10BC0F5: Set var_8C = Me.Txt
  loc_10BC0FB: Call 0.Method_Proc_145_19_10BC3BC0 (CInt(2), var_90)
  loc_10BC11A: If (var_90.Text = "Pending") Then
  loc_10BC120:   var_A4 = CVar(CLng(5)) 'Long
  loc_10BC125:   var_C4 = 0
  loc_10BC131:   LateIdCallSt
  loc_10BC13C:   var_A4 = CVar(CLng(7)) 'Long
  loc_10BC141:   var_C4 = 0
  loc_10BC14D:   LateIdCallSt
  loc_10BC158:   var_A4 = CVar(CLng(8)) 'Long
  loc_10BC15D:   var_C4 = 0
  loc_10BC169:   LateIdCallSt
  loc_10BC174:   var_A4 = CVar(CLng(9)) 'Long
  loc_10BC179:   var_C4 = 0
  loc_10BC185:   LateIdCallSt
  loc_10BC190:   var_A4 = CVar(CLng(&HA)) 'Long
  loc_10BC195:   var_C4 = &H320
  loc_10BC1A1:   LateIdCallSt
  loc_10BC1AC: Else
  loc_10BC1AF:   var_A4 = CVar(CLng(5)) 'Long
  loc_10BC1B4:   var_C4 = &H708
  loc_10BC1C0:   LateIdCallSt
  loc_10BC1CB:   var_A4 = CVar(CLng(7)) 'Long
  loc_10BC1D0:   var_C4 = &H708
  loc_10BC1DC:   LateIdCallSt
  loc_10BC1E7:   var_A4 = CVar(CLng(8)) 'Long
  loc_10BC1EC:   var_C4 = &H3E8
  loc_10BC1F8:   LateIdCallSt
  loc_10BC203:   var_A4 = CVar(CLng(9)) 'Long
  loc_10BC208:   var_C4 = &H960
  loc_10BC214:   LateIdCallSt
  loc_10BC21F:   var_A4 = CVar(CLng(&HA)) 'Long
  loc_10BC224:   var_C4 = 0
  loc_10BC230:   LateIdCallSt
  loc_10BC238: End If
  loc_10BC23A: Set var_88 = Nothing 
  loc_10BC23E: On Error Goto loc_10BC379
  loc_10BC247: Proc_183_45_E5CCA8(global_52, var_88, var_C4, var_A4, var_88, var_C4, var_A4, var_88)
  loc_10BC263: If (Me.RecordCount <= 0) Then
  loc_10BC279:   Me.FGrid1.Rows = 1
  loc_10BC281:   var_A4 = vbNullString
  loc_10BC28B:   Set var_8C = Me.FGrid1
  loc_10BC2AF:   Me.FGrid1.FixedRows = 1
  loc_10BC2BA: Else
  loc_10BC2C0:   var_A4 = "SCode"
  loc_10BC2DF:   var_E8 = Me.Fields.Item(var_A4).Value
  loc_10BC2E8:   var_94 = CStr(var_E8)
  loc_10BC2EE:   global_60 = var_94
  loc_10BC316:   If (Me.RecordCount > 0) Then
  loc_10BC31C:     Call Proc_145_21_12B1738(var_E8, FGrid1.DispID_10000, var_A4, var_C4, var_A4, var_88)
  loc_10BC327:   Else
  loc_10BC33A:     Me.FGrid1.Rows = 1
  loc_10BC342:     var_A4 = vbNullString
  loc_10BC34C:     Set var_8C = Me.FGrid1
  loc_10BC35D:     var_A4 = 1
  loc_10BC370:     Me.FGrid1.FixedRows = var_A4
  loc_10BC378:   End If
  loc_10BC378: End If
  loc_10BC378: Exit Sub
  loc_10BC379: ' Referenced from: 10BC23E
  loc_10BC381: Set var_8C = Err()
  loc_10BC387: Call 0.Method_arg_2C (var_94, FGrid1.DispID_10000, var_A4, var_C4)
  loc_10BC3A8: MsgBox(CVar(var_94), &H40, "Information", var_108, var_118)
  loc_10BC3BB: Exit Sub
End Sub

Public Sub Proc_145_20_11B2214
  'Data Table: 440A9C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_11B1DC8: Set var_88 = Me.FGrid1
  loc_11B1DD7: var_88.Cols = &HE
  loc_11B1DE8: var_88.Rows = 2
  loc_11B1DF0: var_98 = CVar(CLng(0)) 'Long
  loc_11B1DF5: var_B8 = 0
  loc_11B1E01: LateIdCallSt
  loc_11B1E09: var_98 = 0
  loc_11B1E15: var_B8 = CVar(CLng(1)) 'Long
  loc_11B1E1A: var_D8 = "SNo."
  loc_11B1E23: LateIdCallSt
  loc_11B1E2E: var_98 = CVar(CLng(1)) 'Long
  loc_11B1E39: var_B8 = CVar(CInt(7)) 'Integer
  loc_11B1E40: LateIdCallSt
  loc_11B1E4B: var_98 = CVar(CLng(1)) 'Long
  loc_11B1E50: var_B8 = &H1C2
  loc_11B1E5C: LateIdCallSt
  loc_11B1E64: var_98 = 0
  loc_11B1E70: var_B8 = CVar(CLng(2)) 'Long
  loc_11B1E75: var_D8 = "Found Date"
  loc_11B1E7E: LateIdCallSt
  loc_11B1E89: var_98 = CVar(CLng(2)) 'Long
  loc_11B1E94: var_B8 = CVar(CInt(1)) 'Integer
  loc_11B1E9B: LateIdCallSt
  loc_11B1EA6: var_98 = CVar(CLng(2)) 'Long
  loc_11B1EAB: var_B8 = &H44C
  loc_11B1EB7: LateIdCallSt
  loc_11B1EBF: var_98 = 0
  loc_11B1ECB: var_B8 = CVar(CLng(3)) 'Long
  loc_11B1ED0: var_D8 = "Time"
  loc_11B1ED9: LateIdCallSt
  loc_11B1EE4: var_98 = CVar(CLng(3)) 'Long
  loc_11B1EEF: var_B8 = CVar(CInt(1)) 'Integer
  loc_11B1EF6: LateIdCallSt
  loc_11B1F01: var_98 = CVar(CLng(3)) 'Long
  loc_11B1F06: var_B8 = &H2BC
  loc_11B1F12: LateIdCallSt
  loc_11B1F1A: var_98 = 0
  loc_11B1F26: var_B8 = CVar(CLng(4)) 'Long
  loc_11B1F2B: var_D8 = "Area"
  loc_11B1F34: LateIdCallSt
  loc_11B1F3F: var_98 = CVar(CLng(4)) 'Long
  loc_11B1F4A: var_B8 = CVar(CInt(1)) 'Integer
  loc_11B1F51: LateIdCallSt
  loc_11B1F5C: var_98 = CVar(CLng(4)) 'Long
  loc_11B1F61: var_B8 = &H708
  loc_11B1F6D: LateIdCallSt
  loc_11B1F75: var_98 = 0
  loc_11B1F81: var_B8 = CVar(CLng(5)) 'Long
  loc_11B1F86: var_D8 = "Find By"
  loc_11B1F8F: LateIdCallSt
  loc_11B1F9A: var_98 = CVar(CLng(5)) 'Long
  loc_11B1FA5: var_B8 = CVar(CInt(1)) 'Integer
  loc_11B1FAC: LateIdCallSt
  loc_11B1FB7: var_98 = CVar(CLng(5)) 'Long
  loc_11B1FBC: var_B8 = 0
  loc_11B1FC8: LateIdCallSt
  loc_11B1FD0: var_98 = 0
  loc_11B1FDC: var_B8 = CVar(CLng(6)) 'Long
  loc_11B1FE1: var_D8 = "Item Description & Remark"
  loc_11B1FEA: LateIdCallSt
  loc_11B1FF5: var_98 = CVar(CLng(6)) 'Long
  loc_11B2000: var_B8 = CVar(CInt(1)) 'Integer
  loc_11B2007: LateIdCallSt
  loc_11B2012: var_98 = CVar(CLng(6)) 'Long
  loc_11B2017: var_B8 = &HF3C
  loc_11B2023: LateIdCallSt
  loc_11B202B: var_98 = 0
  loc_11B2037: var_B8 = CVar(CLng(&HC)) 'Long
  loc_11B203C: var_D8 = "User1"
  loc_11B2045: LateIdCallSt
  loc_11B2050: var_98 = CVar(CLng(&HC)) 'Long
  loc_11B2055: var_B8 = 0
  loc_11B2061: LateIdCallSt
  loc_11B2069: var_98 = 0
  loc_11B2075: var_B8 = CVar(CLng(7)) 'Long
  loc_11B207A: var_D8 = "Claimed By"
  loc_11B2083: LateIdCallSt
  loc_11B208E: var_98 = CVar(CLng(7)) 'Long
  loc_11B2093: var_B8 = 0
  loc_11B209F: LateIdCallSt
  loc_11B20A7: var_98 = 0
  loc_11B20B3: var_B8 = CVar(CLng(8)) 'Long
  loc_11B20B8: var_D8 = "Contact No"
  loc_11B20C1: LateIdCallSt
  loc_11B20CC: var_98 = CVar(CLng(8)) 'Long
  loc_11B20D1: var_B8 = 0
  loc_11B20DD: LateIdCallSt
  loc_11B20E5: var_98 = 0
  loc_11B20F1: var_B8 = CVar(CLng(9)) 'Long
  loc_11B20F6: var_D8 = "Other Detail"
  loc_11B20FF: LateIdCallSt
  loc_11B210A: var_98 = CVar(CLng(9)) 'Long
  loc_11B210F: var_B8 = 0
  loc_11B211B: LateIdCallSt
  loc_11B2123: var_98 = 0
  loc_11B212F: var_B8 = CVar(CLng(&HD)) 'Long
  loc_11B2134: var_D8 = "Delivered By"
  loc_11B213D: LateIdCallSt
  loc_11B2148: var_98 = CVar(CLng(&HD)) 'Long
  loc_11B214D: var_B8 = 0
  loc_11B2159: LateIdCallSt
  loc_11B2161: var_98 = 0
  loc_11B216D: var_B8 = CVar(CLng(&HB)) 'Long
  loc_11B2172: var_D8 = "Delivered Date"
  loc_11B217B: LateIdCallSt
  loc_11B2186: var_98 = CVar(CLng(&HB)) 'Long
  loc_11B218B: var_B8 = 0
  loc_11B2197: LateIdCallSt
  loc_11B219F: var_98 = 0
  loc_11B21AB: var_B8 = CVar(CLng(&HA)) 'Long
  loc_11B21B0: var_D8 = "Mark"
  loc_11B21B9: LateIdCallSt
  loc_11B21C4: var_98 = CVar(CLng(&HA)) 'Long
  loc_11B21CF: var_B8 = CVar(CInt(4)) 'Integer
  loc_11B21D6: LateIdCallSt
  loc_11B21E1: var_98 = CVar(CLng(&HA)) 'Long
  loc_11B21E6: var_B8 = &H320
  loc_11B21F2: LateIdCallSt
  loc_11B2206: var_88.FixedRows = 1
  loc_11B220D: Set var_88 = Nothing 
  loc_11B2211: Exit Sub
End Sub

Public Sub Proc_145_21_12B1738
  'Data Table: 440A9C
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_BC As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_B4 As Variant
  Dim var_100 As Variant
  Dim var_120 As String
  loc_12B1115: Me.FGrid1.Rows = 2
  loc_12B1121: Set var_BC = Me.FGrid1
  loc_12B1124: ' Referenced from: 12B1728
  loc_12B1136: If Not(Me.EOF) Then
  loc_12B114B:   var_A4 = CVar((CLng(var_BC.Rows) - 1)) 'Long
  loc_12B1153:   var_BC.Row = 2
  loc_12B1167:   var_A4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B116F:   var_F0 = CVar(CLng(1)) 'Long
  loc_12B1182:   var_110 = CVar(CStr(CLng(var_BC.Row))) 'String
  loc_12B1189:   LateIdCallSt
  loc_12B11A6:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B11AE:   var_100 = CVar(CLng(0)) 'Long
  loc_12B11E1:   var_110 = CVar(CStr(Me.Fields.Item("SCode").Value)) 'String
  loc_12B11E8:   LateIdCallSt
  loc_12B120C:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B1214:   var_100 = CVar(CLng(2)) 'Long
  loc_12B1247:   var_110 = CVar(CStr(Me.Fields.Item("Fdate").Value)) 'String
  loc_12B124E:   LateIdCallSt
  loc_12B1272:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B127A:   var_100 = CVar(CLng(3)) 'Long
  loc_12B12AD:   var_110 = CVar(CStr(Me.Fields.Item("FTime").Value)) 'String
  loc_12B12B4:   LateIdCallSt
  loc_12B12D8:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B12E0:   var_100 = CVar(CLng(4)) 'Long
  loc_12B1313:   var_110 = CVar(CStr(Me.Fields.Item("FArea").Value)) 'String
  loc_12B131A:   LateIdCallSt
  loc_12B133E:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B1346:   var_100 = CVar(CLng(5)) 'Long
  loc_12B1379:   var_110 = CVar(CStr(Me.Fields.Item("FindBy").Value)) 'String
  loc_12B1380:   LateIdCallSt
  loc_12B13A4:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B13AC:   var_100 = CVar(CLng(6)) 'Long
  loc_12B13DF:   var_110 = CVar(CStr(Me.Fields.Item("Description").Value)) 'String
  loc_12B13E6:   LateIdCallSt
  loc_12B140A:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B1412:   var_100 = CVar(CLng(&HC)) 'Long
  loc_12B1445:   var_110 = CVar(CStr(Me.Fields.Item("UName1").Value)) 'String
  loc_12B144C:   LateIdCallSt
  loc_12B14A8:   var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ClaimedBy")), CVar(CLng(7)), CVar(CLng(var_BC.Row)), var_BC, var_110, CVar(CLng(7)), CVar(CLng(var_BC.Row)))) 'String
  loc_12B14AF:   LateIdCallSt
  loc_12B1507:   var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ContactNo")), CVar(CLng(8)), CVar(CLng(var_BC.Row)), var_BC, var_110, var_BC)) 'String
  loc_12B150E:   LateIdCallSt
  loc_12B1566:   var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("OtherDetail")), CVar(CLng(9)), CVar(CLng(var_BC.Row)), var_BC, var_110)) 'String
  loc_12B156D:   LateIdCallSt
  loc_12B15C5:   var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DeliveredBy")), CVar(CLng(&HD)), CVar(CLng(var_BC.Row)), var_BC, var_110)) 'String
  loc_12B15CC:   LateIdCallSt
  loc_12B1624:   var_110 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DDate")), CVar(CLng(&HB)), CVar(CLng(var_BC.Row)), var_BC, var_110)) 'String
  loc_12B162B:   LateIdCallSt
  loc_12B164A:   var_BC.Col = CVar(CLng(&HA))
  loc_12B1658:   var_BC.CellFontName = "WINGDINGS"
  loc_12B1668:   var_BC.CellFontSize = CVar(CDbl(&HE))
  loc_12B16AC:   If (Me.Fields.Item("Status").Value = "Delivered") Then
  loc_12B16BB:     var_A4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B16C3:     var_F0 = CVar(CLng(&HA)) 'Long
  loc_12B16C8:     var_120 = "ü"
  loc_12B16D1:     LateIdCallSt
  loc_12B16DF:   Else
  loc_12B16EB:     var_A4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12B16F3:     var_F0 = CVar(CLng(&HA)) 'Long
  loc_12B16F8:     var_120 = vbNullString
  loc_12B1701:     LateIdCallSt
  loc_12B170C:   End If
  loc_12B170C:   var_A4 = vbNullString
  loc_12B1723:   Me.MoveNext
  loc_12B1728:   GoTo loc_12B1124
  loc_12B172B: End If
  loc_12B172D: Set var_BC = Nothing 
  loc_12B1731: Proc_145_21_12B1738 = FGrid1.DispID_10000
End Sub
