VERSION 5.00
Begin VB.Form pGIss
  Caption = "Goods Issue Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "pGIss.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 10440
  ClientHeight = 8475
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin Frame FrBanq
    Caption = "Frame1"
    Left = 480
    Top = 1950
    Width = 5430
    Height = 300
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 10
      ForeColor = &HC00000&
      Left = 1290
      Top = 0
      Width = 735
      Height = 285
      TabIndex = 6
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
      Index = 11
      ForeColor = &HC00000&
      Left = 2055
      Top = 0
      Width = 3375
      Height = 285
      TabIndex = 7
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
    Begin Label Label1
      Caption = "Banq. Party"
      Index = 8
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 1110
      Height = 240
      TabIndex = 35
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
  Begin DataGrid DGBookNo
    Left = 6150
    Top = 2295
    Width = 6300
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGGodown
    Left = 10875
    Top = 2505
    Width = 4260
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin TextBox Txt
    Index = 9
    ForeColor = &HC00000&
    Left = 7020
    Top = 1320
    Width = 4140
    Height = 285
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
  Begin Timer Timer1
    Interval = 1
    Left = 13725
    Top = 510
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10440
    Height = 450
    TabIndex = 28
  End
  Begin DataGrid DGDepart
    Left = 12570
    Top = 1755
    Width = 4260
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 7020
    Top = 1635
    Width = 1260
    Height = 285
    TabIndex = 23
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin DataGrid DGCompany
    Left = 12000
    Top = 1035
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC00000&
    Left = 7020
    Top = 1950
    Width = 4125
    Height = 285
    TabIndex = 8
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
    Index = 4
    ForeColor = &HC00000&
    Left = 5220
    Top = 1005
    Width = 690
    Height = 285
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 8
    Locked = -1  'True
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
    ForeColor = &HC00000&
    Left = 1770
    Top = 1635
    Width = 4140
    Height = 285
    TabIndex = 5
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
    Index = 0
    Left = 12915
    Top = 8880
    Width = 1995
    Height = 240
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 13395
    Top = 8310
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 1770
    Top = 1320
    Width = 4140
    Height = 285
    TabIndex = 3
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
    Left = 1770
    Top = 1005
    Width = 1425
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 8
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
    ForeColor = &HC00000&
    Left = 3780
    Top = 1005
    Width = 1425
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 20
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
    Left = 9915
    Top = 8880
    Width = 2310
    Height = 240
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 510
    Top = 2265
    Width = 10230
    Height = 5820
    TabIndex = 9
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HC0&
    Left = 60
    Top = 8250
    Width = 2130
    Height = 285
    TabIndex = 32
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Godown"
    Index = 7
    ForeColor = &HC00000&
    Left = 5985
    Top = 1320
    Width = 795
    Height = 240
    TabIndex = 30
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
  Begin Label LblAlaram
    Caption = "Some Requisition  are Pending......"
    ForeColor = &H80&
    Left = -15
    Top = 8745
    Width = 4770
    Height = 330
    TabIndex = 29
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 12030
    Top = 6525
    Width = 2790
    Height = 285
    TabIndex = 27
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
    Left = 12390
    Top = 5910
    Width = 2880
    Height = 255
    TabIndex = 26
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 25
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
    Caption = "Total"
    Index = 6
    ForeColor = &HC00000&
    Left = 5970
    Top = 1635
    Width = 480
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
  Begin Label Label1
    Caption = "Company"
    Index = 3
    ForeColor = &HC00000&
    Left = 5985
    Top = 1950
    Width = 900
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
  Begin Label Label1
    Caption = "Remark"
    Index = 24
    ForeColor = &HC00000&
    Left = 495
    Top = 1635
    Width = 735
    Height = 240
    TabIndex = 19
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 14295
    Top = 7560
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 18
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
  Begin Label Label1
    Caption = "DOC ID"
    Index = 5
    ForeColor = &HFF&
    Left = 3915
    Top = 4920
    Width = 540
    Height = 210
    Visible = 0   'False
    TabIndex = 17
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Department"
    Index = 4
    ForeColor = &HC00000&
    Left = 480
    Top = 1320
    Width = 1110
    Height = 240
    TabIndex = 16
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
  Begin Label Label1
    Caption = "Issue No."
    Index = 1
    ForeColor = &HC00000&
    Left = 495
    Top = 1020
    Width = 855
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
  Begin Label Label1
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 3285
    Top = 1020
    Width = 435
    Height = 240
    TabIndex = 13
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
  Begin Label Label1
    Caption = "Vr. Type"
    Index = 0
    ForeColor = &H0&
    Left = 13845
    Top = 7860
    Width = 720
    Height = 210
    Visible = 0   'False
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
End

Attribute VB_Name = "pGIss"

Private global_88 As Integer
Private global_90 As Integer

Private Sub DGCompany_UnknownEvent_9 'FAE5A0
  'Data Table: 4DEA28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FAE41F: Me.DGCompany.Visible = False
  loc_FAE43E: If (Me.RecordCount > 0) Then
  loc_FAE44F:   Set var_A8 = Me.Txt
  loc_FAE455:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B0)
  loc_FAE45D:   var_B0.Text = vbNullString
  loc_FAE477:   Set var_A8 = Me.Txt
  loc_FAE47D:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B0)
  loc_FAE485:   var_B0.Tag = vbNullString
  loc_FAE49F:   Set var_A8 = Me.Txt
  loc_FAE4A5:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HB), var_B0)
  loc_FAE4AD:   var_B0.Text = vbNullString
  loc_FAE4F5:   Set var_B4 = Me.Txt
  loc_FAE4FB:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7), var_B8)
  loc_FAE503:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FAE536:   var_B0 = Me.Fields.Item("Code")
  loc_FAE555:   Set var_B4 = Me.Txt
  loc_FAE55B:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7), var_B8)
  loc_FAE563:   var_B8.Tag = CStr(var_B0.Value)
  loc_FAE579: End If
  loc_FAE584: Set var_A8 = Me.Txt
  loc_FAE58A: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7))
  loc_FAE592: var_B0.SetFocus
  loc_FAE59E: Exit Sub
  loc_FAE59F: var_B0() = 
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F75F10
  'Data Table: 4DEA28
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F75DE0: On Error Goto loc_F75F0A
  loc_F75DE3: Call Proc_41_51_EF96F8()
  loc_F75DFB: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F75E04: Set var_A0 = Me.FGrid
  loc_F75E39: Set var_108 = Me.TxtGrid
  loc_F75E3F: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F75E47: var_10C.Tag = CVar(CLng(var_A0.Col))
  loc_F75E74: Set var_8C = Me.TxtGrid
  loc_F75E7A: Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0)
  loc_F75E82: var_A0.MaxLength = 0
  loc_F75EA1: var_114 = CLng(Me.FGrid.Col)
  loc_F75EB1: If Not (var_114 = CLng(8)) Then
  loc_F75EBB:   If (var_114 = CLng(4)) Then
  loc_F75EBE:   End If
  loc_F75ECD:   Set var_8C = Me.TxtGrid
  loc_F75ED3:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_F75EDB:   var_A0.MaxLength = var_114
  loc_F75EF0:   If (global_90 = 0) Then
  loc_F75EFB:     var_110 = "{Home}+{End}"
  loc_F75F01:     Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F75F09:   End If
  loc_F75F09: End If
  loc_F75F09: Exit Sub
  loc_F75F0A: ' Referenced from: F75DE0
  loc_F75F0A: Proc_6_60_E63754(var_C0)
  loc_F75F0F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11728F8
  'Data Table: 4DEA28
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As String
  loc_117252C: On Error Goto loc_11728F1
  loc_1172539: If (CLng(Shift) = &H1B) Then
  loc_1172548:   Set var_88 = Me.TxtGrid
  loc_117254E:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_1172567:   Set var_94 = Me.TxtGrid
  loc_117256D:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1172575:   var_98.Text = var_8C.Tag
  loc_1172591:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_117259A:   Set var_88 = Me.FGrid
  loc_11725B6:   Set var_88 = Me.TxtGrid
  loc_11725BC:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0)
  loc_11725C4:   var_8C.Visible = FGrid.DispID_8001
  loc_11725D0:   Exit Sub
  loc_11725D1: End If
  loc_11725E4: var_AC = CLng(Me.FGrid.Col)
  loc_11725F4: If (var_AC = CLng(8)) Then
  loc_1172637:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_90 = &HFF))) Then
  loc_1172647:     Call Proc_41_46_128B59C(0, 0, var_B2)
  loc_1172652:     If (var_B2 = &HFF) Then
  loc_1172670:       var_C8 = CStr((CLng(Me.FGrid.Rows) - 1))
  loc_11726B3:       If (CDbl(Val(CStr(CLng(Me.FGrid.Row)))) < CDbl(Val(var_C8))) Then
  loc_11726F9:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_90, &HC)
  loc_1172709:       End If
  loc_1172709:     End If
  loc_1172709:   End If
  loc_117270C: Else
  loc_1172713:   If (var_AC = CLng(4)) Then
  loc_1172756:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_90 = &HFF))) Then
  loc_1172766:       Call Proc_41_46_128B59C(0, 0, var_B2, 0, 0)
  loc_1172771:       If (var_B2 = &HFF) Then
  loc_11727B7:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_90, &HC, 0)
  loc_11727C7:       End If
  loc_11727C7:     End If
  loc_11727CA:   Else
  loc_11727D1:     If (var_AC = CLng(5)) Then
  loc_1172814:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_90 = &HFF))) Then
  loc_1172824:         Call Proc_41_46_128B59C(0, 0, var_B2, 0, 0)
  loc_117282F:         If (var_B2 = &HFF) Then
  loc_117283D:           If (global_152 <> "No") Then
  loc_117288A:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_90, CByte((CInt(8) + 1)), 0)
  loc_117289D:           Else
  loc_11728E0:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_90, &HC, 0, 0)
  loc_11728F0:           End If
  loc_11728F0:         End If
  loc_11728F0:       End If
  loc_11728F0:     End If
  loc_11728F0:   End If
  loc_11728F0: End If
  loc_11728F0: Exit Sub
  loc_11728F1: ' Referenced from: 117252C
  loc_11728F1: Proc_6_60_E63754(0, 8, 0, 0)
  loc_11728F6: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EE5354
  'Data Table: 4DEA28
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_EE5294: On Error Goto loc_EE534B
  loc_EE529A: Proc_6_58_E06050(arg_10)
  loc_EE52B2: var_9C = CLng(Me.FGrid.Col)
  loc_EE52C2: If (var_9C = CLng(8)) Then
  loc_EE52CF:   Set var_88 = Me.TxtGrid
  loc_EE52D5:   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_EE52F0:   Proc_6_42_129B55C(var_A0, arg_10, 8)
  loc_EE52FF: Else
  loc_EE5306:   If Not (var_9C = CLng(3)) Then
  loc_EE5310:     If (var_9C = CLng(4)) Then
  loc_EE5313:     End If
  loc_EE531D:     Set var_88 = Me.TxtGrid
  loc_EE5323:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_EE533E:     Proc_6_42_129B55C(var_A0, arg_10, 8)
  loc_EE534A:   End If
  loc_EE534A: End If
  loc_EE534A: Exit Sub
  loc_EE534B: ' Referenced from: EE5294
  loc_EE534B: Proc_6_60_E63754(3, 2)
  loc_EE5350: Exit Sub
  loc_EE5351: StUdtVar
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1033B20
  'Data Table: 4DEA28
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_170 As Variant
  Dim var_23C As Double
  Dim var_174 As MSHFlexGrid
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  loc_1033908: On Error Goto loc_1033B1A
  loc_1033917: If (KeyCode = 0) Then
  loc_103392D:   var_A0 = CLng(Me.FGrid.Col)
  loc_103393D:   If Not (var_A0 = CLng(8)) Then
  loc_1033947:     If Not (var_A0 = CLng(4)) Then
  loc_1033951:       If (var_A0 = CLng(5)) Then
  loc_1033954:       End If
  loc_1033954:     End If
  loc_1033961:     Set var_8C = Me.TxtGrid
  loc_1033967:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_103396F:     var_A0 = var_A4.Text
  loc_1033992:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10339AA:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10339D7:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_10339DF:     Set var_174 = Me.FGrid
  loc_10339E5:     LateIdCallSt
  loc_1033A1F:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1033A27:     var_120 = CVar(CLng(4)) 'Long
  loc_1033A5F:     var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1033A67:     var_170 = CVar(CLng(5)) 'Long
  loc_1033A89:     var_23C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1033A9F:     var_1E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1033AA7:     var_200 = CVar(CLng(6)) 'Long
  loc_1033AD8:     var_220 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_23C)), "0.00"))) 'String
  loc_1033AE0:     Set var_234 = Me.FGrid
  loc_1033AE6:     LateIdCallSt
  loc_1033B19:   End If
  loc_1033B19: End If
  loc_1033B19: Exit Sub
  loc_1033B1A: ' Referenced from: 1033908
  loc_1033B1A: Proc_6_60_E63754(var_234, var_220, 1, 1, var_200, var_1E0, var_23C, var_170)
  loc_1033B1F: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E243A4
  'Data Table: 4DEA28
  Dim arg_10 As Integer
  loc_E24380: On Error Goto loc_E2439B
  loc_E2438E: Call Proc_41_46_128B59C(Cancel, &HFF)
  loc_E24397: arg_10 = Not(var_88)
  loc_E2439A: Exit Sub
  loc_E2439B: ' Referenced from: E24380
  loc_E2439B: Proc_6_60_E63754(arg_10)
  loc_E243A0: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '123F294
  'Data Table: 4DEA28
  Dim var_A2 As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_E4 As Variant
  Dim var_C0 As Variant
  Dim var_F8 As String
  loc_123ED86: Set var_98 = Me.Txt
  loc_123ED8C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_123ED9A: Proc_6_74_E23240(var_9C)
  loc_123EDA6: Call Proc_41_51_EF96F8(var_9C)
  loc_123EDAE: var_A2 = Index
  loc_123EDB9: If (var_A2 = CInt(6)) Then
  loc_123EE0A:   Set var_98 = Me.Txt
  loc_123EE10:   Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0)
  loc_123EE18:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_123EE30:   If (var_A2 Or (var_B0 = vbNullString)) Then
  loc_123EE33:     Exit Sub
  loc_123EE34:   End If
  loc_123EE41:   Set var_98 = Me.Txt
  loc_123EE47:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_123EE4F:   var_B0 = var_9C.Text
  loc_123EE61:   var_C0 = "Name"
  loc_123EE9C:   If CBool(CVar(var_B0) <> Me.Fields.Item(var_C0).Value) Then
  loc_123EEA5:     Me.MoveFirst
  loc_123EEC8:     Set var_98 = Me.Txt
  loc_123EECE:     Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, "Name ='")
  loc_123EED6:     0 = var_9C.Text
  loc_123EEEF:     Me.Find 1 & var_B0 & "'", var_C0, 
  loc_123EF04:   End If
  loc_123EF07: Else
  loc_123EF0F:   If (var_A2 = CInt(9)) Then
  loc_123EF60:     Set var_98 = Me.Txt
  loc_123EF66:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_123EF86:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_9C.Text = vbNullString)) Then
  loc_123EF89:       Exit Sub
  loc_123EF8A:     End If
  loc_123EF97:     Set var_98 = Me.Txt
  loc_123EF9D:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_123EFA5:     var_B0 = var_9C.Text
  loc_123EFB7:     var_C0 = "Name"
  loc_123EFF2:     If CBool(CVar(var_B0) <> Me.Fields.Item(var_C0).Value) Then
  loc_123EFFB:       Me.MoveFirst
  loc_123F01E:       Set var_98 = Me.Txt
  loc_123F024:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, "Name ='")
  loc_123F02C:       0 = var_9C.Text
  loc_123F045:       Me.Find 1 & var_B0 & "'", var_C0, 
  loc_123F05A:     End If
  loc_123F05D:   Else
  loc_123F065:     If (var_A2 = CInt(&HA)) Then
  loc_123F084:       Me.Recordset15.CursorLocation = 3
  loc_123F097:       Set var_98 = Me.Txt
  loc_123F09D:       Call 0.Method_Txt_GotFocus0 (CInt(6), var_9C)
  loc_123F0A5:       var_B0 = var_9C.Tag
  loc_123F0C8:       var_F8 = "Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook Where Docid in (Select RefDocId from Indent Where Department='" & var_B0
  loc_123F0D9:       Me.Open CVar(var_F8 & "' And ClearYN<>'Y') Order by VNo"), CVar(MemVar_1F95044), 3
  loc_123F0F8:       CVarUnk
  loc_123F0FD:       VerifyVarObj
  loc_123F103:       Set var_98 = Me.DGBookNo
  loc_123F109:       LateIdStAd
  loc_123F165:       Set var_98 = Me.Txt
  loc_123F16B:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_123F173:       var_98 = var_9C.Text
  loc_123F18B:       If (New Or (var_B0 = vbNullString)) Then
  loc_123F18E:         Exit Sub
  loc_123F18F:       End If
  loc_123F19C:       Set var_98 = Me.Txt
  loc_123F1A2:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0)
  loc_123F1AA:       1 = var_9C.Text
  loc_123F1B2:       var_E4 = CVar(var_B0) 'String
  loc_123F1F7:       If CBool(var_E4 <> Me.Fields.Item("Name").Value) Then
  loc_123F200:         Me.MoveFirst
  loc_123F225:         Set var_98 = Me.Txt
  loc_123F22B:         Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, "Name =")
  loc_123F233:         0 = var_9C.Text
  loc_123F241:         Proc_6_17_EAAE40(var_E4, CVar(var_B0), 1)
  loc_123F257:         Me.Find CStr(var_10C & var_E4), -1, 
  loc_123F26F:       End If
  loc_123F272:     Else
  loc_123F27A:       If (var_A2 = CInt(3)) Then
  loc_123F285:         var_B0 = "{Home}+{End}"
  loc_123F28B:         Proc_303_0_FBACC8(var_B0)
  loc_123F293:       End If
  loc_123F293:     End If
  loc_123F293:   End If
  loc_123F293: End If
  loc_123F293: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1105ADC
  'Data Table: 4DEA28
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_11057BA: If (CLng(Shift) = &H1B) Then
  loc_11057BD:   Call Proc_41_51_EF96F8()
  loc_11057C2:   Exit Sub
  loc_11057C3: End If
  loc_11057C6: var_86 = KeyCode
  loc_11057D1: If (var_86 = CInt(6)) Then
  loc_11057EC:   Set var_9C = Nothing
  loc_11057F7:   Set var_98 = Nothing
  loc_1105825:   Proc_6_69_134A630(Me.DGDepart, Me.Txt, KeyCode, global_52, Shift, &HFF)
  loc_110583C: Else
  loc_1105844:   If (var_86 = CInt(9)) Then
  loc_110585F:     Set var_9C = Nothing
  loc_1105898:     Proc_6_69_134A630(Me.DGGodown, Me.Txt, KeyCode, global_56, Shift, &HFF, 1, Nothing)
  loc_11058AF:   Else
  loc_11058B7:     If (var_86 = CInt(&HA)) Then
  loc_11058D2:       Set var_9C = Nothing
  loc_110590B:       Proc_6_69_134A630(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1105922:     Else
  loc_110592A:       If (var_86 = CInt(7)) Then
  loc_1105938:         If (global_144 = "Yes") Then
  loc_1105953:           Set var_9C = Nothing
  loc_110598C:           Proc_6_69_134A630(Me.DGCompany, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_11059A0:         End If
  loc_11059A0:       End If
  loc_11059A0:     End If
  loc_11059A0:   End If
  loc_11059A0: End If
  loc_11059D1: Set var_98 = Me.DGCompany
  loc_11059E8: Set var_9C = Me.DGBookNo
  loc_1105A11: If ((((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGGodown.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_1105A29:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1105A32:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, var_9C)
  loc_1105A37:   End If
  loc_1105A3B:   Set var_8C = Me.TopCtrl1
  loc_1105A41:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(0)
  loc_1105A63:   If ((CStr(var_9C) = "Add") And (KeyCode <> CInt(1))) Then
  loc_1105A7B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1105A84:       Proc_6_76_E533C8(Shift, arg_14, 0)
  loc_1105A89:     End If
  loc_1105A89:   End If
  loc_1105A8D:   Set var_8C = Me.TopCtrl1
  loc_1105A93:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(1)
  loc_1105AB5:   If ((CStr(var_98) = "Edit") And (KeyCode <> CInt(3))) Then
  loc_1105ACD:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1105AD6:       Proc_6_76_E533C8(Shift)
  loc_1105ADB:     End If
  loc_1105ADB:   End If
  loc_1105ADB: End If
  loc_1105ADB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FF7158
  'Data Table: 4DEA28
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FF6F63: Proc_6_58_E06050(arg_10)
  loc_FF6F6B: var_86 = KeyAscii
  loc_FF6F76: If (var_86 = CInt(6)) Then
  loc_FF6F95:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_FF6FA7:     var_A0 = "Name"
  loc_FF6FC2:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10)
  loc_FF6FD1:   End If
  loc_FF6FD4: Else
  loc_FF6FDC:   If (var_86 = CInt(9)) Then
  loc_FF6FFB:     If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_FF7028:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_FF7037:     End If
  loc_FF703A:   Else
  loc_FF7042:     If (var_86 = CInt(&HA)) Then
  loc_FF7061:       If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_FF7068:         Set var_A8 = Me.Txt
  loc_FF708E:         Proc_6_89_1470B00(var_A8, KeyAscii, global_76, arg_10, "Name")
  loc_FF709D:       End If
  loc_FF70A0:     Else
  loc_FF70A8:       If (var_86 = CInt(2)) Then
  loc_FF70B5:         Set var_8C = Me.Txt
  loc_FF70BB:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_FF70D6:         Proc_6_42_129B55C(var_A8, arg_10, 8, 0)
  loc_FF70E5:       Else
  loc_FF70ED:         If (var_86 = CInt(7)) Then
  loc_FF70FB:           If (global_144 = "Yes") Then
  loc_FF711A:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FF7147:               Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_FF7156:             End If
  loc_FF7156:           End If
  loc_FF7156:         End If
  loc_FF7156:       End If
  loc_FF7156:     End If
  loc_FF7156:   End If
  loc_FF7156: End If
  loc_FF7156: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00244
  'Data Table: 4DEA28
  Dim var_86 As Integer
  loc_E0023F: var_86 = KeyCode
  loc_E00242: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4775C
  'Data Table: 4DEA28
  loc_E4773A: Set var_88 = Me.Txt
  loc_E47740: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4774E: Proc_6_73_E23294(var_8C)
  loc_E4775A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '147B9A0
  'Data Table: 4DEA28
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim var_C0 As TextBox
  Dim var_9C As String
  Dim var_D8 As Long
  Dim var_FC As TextBox
  Dim Me As Recordset15
  Dim var_90 As Variant
  loc_147AD77: var_8A = Cancel
  loc_147AD82: If (var_8A = CInt(1)) Then
  loc_147AD90:   Set var_90 = Me.Txt
  loc_147AD96:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_147ADBF:   If (Proc_6_27_EA61EC(var_94, "Voucher Type") = 0) Then
  loc_147ADCC:     Set var_90 = Me.Txt
  loc_147ADD2:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147ADDA:     var_94.SetFocus
  loc_147ADE8:     arg_10 = &HFF
  loc_147ADEB:     Exit Sub
  loc_147ADEC:   End If
  loc_147ADEF: Else
  loc_147ADF7:   If (var_8A = CInt(2)) Then
  loc_147AE05:     Set var_90 = Me.Txt
  loc_147AE0B:     Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_147AE34:     If (Proc_6_27_EA61EC(var_94, "Voucher Number") = 0) Then
  loc_147AE41:       Set var_90 = Me.Txt
  loc_147AE47:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147AE4F:       var_94.SetFocus
  loc_147AE5D:       arg_10 = &HFF
  loc_147AE60:       Exit Sub
  loc_147AE61:     End If
  loc_147AE6C:     Set var_90 = Me.Txt
  loc_147AE72:     Call 0.Method_Txt_Validate0 (CInt(0), var_94, arg_10)
  loc_147AE84:     Set var_98 = Me.Txt
  loc_147AE8A:     Call 0.Method_Txt_Validate0 (Cancel, var_C0, var_C4)
  loc_147AE92:     arg_10 = var_C0.Text
  loc_147AEAE:     var_9C = CStr(Right(CVar(var_94), 8))
  loc_147AED5:     If (CDbl(Val(var_9C)) <> CDbl(var_C4)) Then
  loc_147AEE0:       Call Proc_41_52_126C104(0, var_9C)
  loc_147AEF3:       Set var_90 = Me.Txt
  loc_147AEF9:       Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_147AF01:       var_94.Text = var_9C
  loc_147AF10:     End If
  loc_147AF13:   Else
  loc_147AF1B:     If (var_8A = CInt(3)) Then
  loc_147AF2B:       Set var_90 = Me.Txt
  loc_147AF31:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147AF47:       var_BC = Trim(CVar(var_94.Text))
  loc_147AF4F:       var_D8 = Len(var_BC)
  loc_147AF69:       If (var_D8 = 0) Then
  loc_147AF7E:         Set var_90 = Me.Txt
  loc_147AF84:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147AF8C:         var_94.Text = CStr(MemVar_1F950EC)
  loc_147AF9E:       Else
  loc_147AFA8:         Set var_90 = Me.Txt
  loc_147AFAE:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147AFCE:         Set var_C0 = Me.Txt
  loc_147AFD4:         Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_147AFDC:         var_FC.Text = Proc_6_33_15125B8(var_94)
  loc_147AFEF:       End If
  loc_147AFF3:       Set var_90 = Me.TopCtrl1
  loc_147AFF9:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_8A)
  loc_147B001:       var_9C = CStr()
  loc_147B012:       If (var_9C = "Add") Then
  loc_147B01D:         Call Proc_41_52_126C104(&HFF)
  loc_147B030:         Set var_90 = Me.Txt
  loc_147B036:         Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_147B03E:         var_94.Text = var_9C
  loc_147B04D:         Call Proc_41_47_14066B4(var_9C)
  loc_147B052:       End If
  loc_147B055:     Else
  loc_147B05D:       If (var_8A = CInt(6)) Then
  loc_147B0AE:         Set var_90 = Me.Txt
  loc_147B0B4:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B0D4:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_147B0E4:           Set var_90 = Me.Txt
  loc_147B0EA:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B0F2:           var_94.Text = vbNullString
  loc_147B10B:           Set var_90 = Me.Txt
  loc_147B111:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B119:           var_94.Tag = vbNullString
  loc_147B128:         Else
  loc_147B163:           Set var_98 = Me.Txt
  loc_147B169:           Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B171:           var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_147B1A4:           var_94 = Me.Fields.Item("Code")
  loc_147B1C2:           Set var_98 = Me.Txt
  loc_147B1C8:           Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B1D0:           var_C0.Tag = CStr(var_94.Value)
  loc_147B1EA:           Set var_90 = Me.TopCtrl1
  loc_147B1F0:           Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_147B209:           If (CStr() = "Add") Then
  loc_147B20C:             Call Proc_41_47_14066B4()
  loc_147B211:           End If
  loc_147B211:         End If
  loc_147B21F:         Set var_90 = Me.Txt
  loc_147B225:         Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_147B247:         If (var_94.Tag = global_148) Then
  loc_147B256:           Me.FrBanq.Visible = True
  loc_147B261:         Else
  loc_147B26D:           Me.FrBanq.Visible = False
  loc_147B275:         End If
  loc_147B278:       Else
  loc_147B280:         If (var_8A = CInt(9)) Then
  loc_147B2D1:           Set var_90 = Me.Txt
  loc_147B2D7:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B2F7:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_147B307:             Set var_90 = Me.Txt
  loc_147B30D:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B315:             var_94.Text = vbNullString
  loc_147B32E:             Set var_90 = Me.Txt
  loc_147B334:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B33C:             var_94.Tag = vbNullString
  loc_147B34B:           Else
  loc_147B386:             Set var_98 = Me.Txt
  loc_147B38C:             Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B394:             var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_147B3C7:             var_94 = Me.Fields.Item("Code")
  loc_147B3E5:             Set var_98 = Me.Txt
  loc_147B3EB:             Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B3F3:             var_C0.Tag = CStr(var_94.Value)
  loc_147B40D:             Set var_90 = Me.TopCtrl1
  loc_147B413:             Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_147B42C:             If (CStr() = "Add") Then
  loc_147B42F:               Call Proc_41_47_14066B4()
  loc_147B434:             End If
  loc_147B434:           End If
  loc_147B437:         Else
  loc_147B43F:           If (var_8A = CInt(7)) Then
  loc_147B490:             Set var_90 = Me.Txt
  loc_147B496:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B4B6:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_147B4C6:               Set var_90 = Me.Txt
  loc_147B4CC:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B4D4:               var_94.Text = vbNullString
  loc_147B4ED:               Set var_90 = Me.Txt
  loc_147B4F3:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B4FB:               var_94.Tag = vbNullString
  loc_147B50A:             Else
  loc_147B518:               Set var_90 = Me.Txt
  loc_147B51E:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_94)
  loc_147B526:               var_94.Text = vbNullString
  loc_147B540:               Set var_90 = Me.Txt
  loc_147B546:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_94)
  loc_147B54E:               var_94.Tag = vbNullString
  loc_147B568:               Set var_90 = Me.Txt
  loc_147B56E:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_147B576:               var_94.Text = vbNullString
  loc_147B5BD:               Set var_98 = Me.Txt
  loc_147B5C3:               Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B5CB:               var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_147B5FE:               var_94 = Me.Fields.Item("Code")
  loc_147B61C:               Set var_98 = Me.Txt
  loc_147B622:               Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B62A:               var_C0.Tag = CStr(var_94.Value)
  loc_147B640:             End If
  loc_147B644:             Set var_90 = Me.TopCtrl1
  loc_147B64A:             Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_147B663:             If (CStr() = "Add") Then
  loc_147B666:               Call Proc_41_47_14066B4()
  loc_147B66B:             End If
  loc_147B66E:           Else
  loc_147B676:             If (var_8A = CInt(&HA)) Then
  loc_147B6C7:               Set var_90 = Me.Txt
  loc_147B6CD:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B6ED:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_147B6FD:                 Set var_90 = Me.Txt
  loc_147B703:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B70B:                 var_94.Text = vbNullString
  loc_147B724:                 Set var_90 = Me.Txt
  loc_147B72A:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B732:                 var_94.Tag = vbNullString
  loc_147B74C:                 Set var_90 = Me.Txt
  loc_147B752:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_147B75A:                 var_94.Text = vbNullString
  loc_147B769:               Else
  loc_147B777:                 Set var_90 = Me.Txt
  loc_147B77D:                 Call 0.Method_Txt_Validate0 (CInt(7), var_94)
  loc_147B785:                 var_94.Text = vbNullString
  loc_147B79F:                 Set var_90 = Me.Txt
  loc_147B7A5:                 Call 0.Method_Txt_Validate0 (CInt(7), var_94)
  loc_147B7AD:                 var_94.Tag = vbNullString
  loc_147B7F4:                 Set var_98 = Me.Txt
  loc_147B7FA:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B802:                 var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_147B853:                 Set var_98 = Me.Txt
  loc_147B859:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B861:                 var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_147B8B3:                 Set var_98 = Me.Txt
  loc_147B8B9:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_C0)
  loc_147B912:                 Set var_98 = Me.Txt
  loc_147B918:                 Call 0.Method_Txt_Validate0 (CInt(3), var_C0)
  loc_147B942:                 If (Me.Fields.Item("VDate").Value > CDate(CDate(CStr(Me.Fields.Item("Party").Value)))) Then
  loc_147B95E:                   MsgBox("Bill Date can't be before Booking Date", 0, var_BC, var_D8, var_F8)
  loc_147B970:                   arg_10 = &HFF
  loc_147B973:                   Exit Sub
  loc_147B974:                 End If
  loc_147B974:               End If
  loc_147B978:               Set var_90 = Me.TopCtrl1
  loc_147B97E:               Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_147B997:               If (CStr() = "Add") Then
  loc_147B99A:                 Call Proc_41_47_14066B4()
  loc_147B99F:               End If
  loc_147B99F:             End If
  loc_147B99F:           End If
  loc_147B99F:         End If
  loc_147B99F:       End If
  loc_147B99F:     End If
  loc_147B99F:   End If
  loc_147B99F: End If
  loc_147B99F: Exit Sub
End Sub

Private Sub Timer1_Timer() 'FAD6D0
  'Data Table: 4DEA28
  Dim var_90 As String
  Dim var_98 As String
  Dim var_A0 As String
  Dim unk_4DEA3E As Connection15
  Dim var_C8 As Label
  loc_FAD564: var_90 = "SELECT Indent1.Sno, Max(ItemMast.Name) as ItemName, Max(Indent1.Item) as ItemCode,  Max(Indent1.Unit) as Unit,  Max(Indent1.WTUnit) as WtUnit, Max(Indent1.DocId) as DocId, MAx(GodownMast.Name) as Department, Indent.Department as DepartCode, Sum(Indent1.Qty) as ReqQty, '' as QtyIss , CASE WHEN MAX(ItemMast.LPurRate)<=0 THEN MAX(ItemMast.PurchRate) ELSE MAX(ItemMast.LPurRate) END as Rate, max(INDENT1.ConvFACTOR) as ConvRatio" & " FROM ((Indent1 "
  loc_FAD572: var_98 = var_90 & " LEFT JOIN Indent ON Indent1.DocId = Indent.DocId)" & " LEFT JOIN ItemMast ON Indent1.Item = ItemMast.Code And ItemMast.ItemType='Store')"
  loc_FAD580: var_A0 = var_98 & " LEFT JOIN GodownMast ON Indent.Department = GodownMast.Code" & " where indent.ClearYn<>'Y' and Indent.Vtype in (Select V_Type From Voucher_Type where NCAT='RQS')"
  loc_FAD590: unk_4DEA3E.Execute var_A0 & " group by Indent.Department,Indent.Vno,Indent1.Sno", var_C4, -1
  loc_FAD5C7: If (var_C8.RecordCount > 0) Then
  loc_FAD5D6:   Me.LblAlaram.Visible = True
  loc_FAD602:   Me.LblAlaram.Left = (Me.LblAlaram.Left + CDbl(&H28))
  loc_FAD614:   Call 0.Method_Me0 (var_D4)
  loc_FAD635:   If (Me.LblAlaram.Left > var_D4) Then
  loc_FAD646:     Me.LblAlaram.Left = CDbl(0)
  loc_FAD651:   Else
  loc_FAD688:     If (Me.LblAlaram.Left = CSng((CDbl(0) - Me.LblAlaram.Width))) Then
  loc_FAD6AA:       Me.LblAlaram.Left = Me.LblAlaram.Width
  loc_FAD6B6:     End If
  loc_FAD6B6:   End If
  loc_FAD6B9: Else
  loc_FAD6C5:   Me.LblAlaram.Visible = False
  loc_FAD6CD: End If
  loc_FAD6CD: Exit Sub
End Sub

Private Sub Form_Load() '1347C84
  'Data Table: 4DEA28
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_4DEA3E As Connection15
  Dim Me As Variant
  Dim var_E4 As Variant
  loc_1347494: On Error Goto loc_1347C7C
  loc_13474A5: Set var_8C = Me.Txt
  loc_13474AB: Call 0.Method_Form_Load0 (CInt(6), var_90)
  loc_13474CA: Me.DGDepart.Left = CVar(var_90.Left)
  loc_13474E6: Set var_B8 = Me.Txt
  loc_13474EC: Call 0.Method_Form_Load0 (CInt(6), var_BC)
  loc_1347507: Set var_8C = Me.Txt
  loc_134750D: Call 0.Method_Form_Load0 (CInt(6), var_90)
  loc_1347525: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_134752E: Set var_C4 = Me.DGDepart
  loc_1347534: var_C4.Top = CVar(var_90.Left)
  loc_1347554: Set var_90 = Me.Txt
  loc_134755A: Call 0.Method_Form_Load0 (CInt(&HA), var_B8)
  loc_1347580: var_A4 = CVar((Me.FrBanq.Left + var_B8.Left)) 'Single
  loc_134758F: Me.DGBookNo.Left = CVar(var_90.Left)
  loc_13475AD: Set var_90 = Me.Txt
  loc_13475B3: Call 0.Method_Form_Load0 (CInt(&HA), var_B8)
  loc_13475CE: Set var_BC = Me.Txt
  loc_13475D4: Call 0.Method_Form_Load0 (CInt(&HA), var_C4)
  loc_1347602: var_A4 = CVar((((Me.FrBanq.Top + var_B8.Top) + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_1347611: Me.DGBookNo.Top = CVar(var_90.Left)
  loc_1347633: Set var_8C = Me.Txt
  loc_1347639: Call 0.Method_Form_Load0 (CInt(9), var_90)
  loc_1347658: Me.DGGodown.Left = CVar(var_90.Left)
  loc_1347674: Set var_B8 = Me.Txt
  loc_134767A: Call 0.Method_Form_Load0 (CInt(9), var_BC)
  loc_1347695: Set var_8C = Me.Txt
  loc_134769B: Call 0.Method_Form_Load0 (CInt(9), var_90)
  loc_13476B3: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_13476C2: Me.DGGodown.Top = CVar(var_90.Left)
  loc_13476E2: Set var_8C = Me.Txt
  loc_13476E8: Call 0.Method_Form_Load0 (CInt(7), var_90)
  loc_1347707: Me.DGCompany.Left = CVar(var_90.Left)
  loc_1347723: Set var_B8 = Me.Txt
  loc_1347729: Call 0.Method_Form_Load0 (CInt(7), var_BC)
  loc_1347744: Set var_8C = Me.Txt
  loc_134774A: Call 0.Method_Form_Load0 (CInt(7), var_90)
  loc_1347762: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1347771: Me.DGCompany.Top = CVar(var_90.Left)
  loc_1347792: Me.LblUser.Left = CDbl(13500)
  loc_13477A9: Me.LblUser.Top = CDbl(7800)
  loc_13477C0: Me.LblLDt.Top = CDbl(8160)
  loc_13477D7: Me.LblLDt.Left = CDbl(13500)
  loc_13477E6: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13477F9: Me.FrBanq.BackColor = CLng(MemVar_1F951B4)
  loc_1347814: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_134782A: Me.LblAlaram.BackColor = CLng(MemVar_1F951B4)
  loc_134783A: Set var_8C = Me.LblCurStockStr
  loc_1347840: var_8C.BackColor = CLng(MemVar_1F951B4)
  loc_1347848: Call Proc_41_53_121D134()
  loc_1347861: var_D0 = "Select ReqCompWise,BanquetKitchen,RateEditableInStockIssue,NegativeStockAllowYN,DateEditableOnRequisitionYN from Enviro Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1347871: unk_4DEA3E.Execute var_D0 & "' or LOGSITE_CODE='HO')", var_E4, -1
  loc_1347882: Set global_140 = var_8C
  loc_13478C8: global_144 = Proc_6_38_E69628(CVar(Me.Fields.Item("ReqCompWise")))
  loc_1347906: global_148 = Proc_6_38_E69628(CVar(Me.Fields.Item("BanquetKitchen")))
  loc_1347944: global_152 = Proc_6_38_E69628(CVar(Me.Fields.Item("RateEditableInStockIssue")))
  loc_1347982: global_120 = Proc_6_38_E69628(CVar(Me.Fields.Item("DateEditableOnRequisitionYN")))
  loc_13479A9: var_90 = Me.Fields.Item("NegativeStockAllowYN")
  loc_13479CB: If (Proc_6_38_E69628(CVar(var_90)) <> "No") Then
  loc_13479D3:   global_132 = &HFF
  loc_13479D6: End If
  loc_13479E1: If (global_144 <> "Yes") Then
  loc_13479F1:   Set var_8C = Me.Txt
  loc_13479F7:   Call 0.Method_Form_Load0 (CInt(7), var_90, 0)
  loc_13479FF:   var_90.Visible = global_132
  loc_1347A16:   Set var_8C = Me.Label1
  loc_1347A1C:   Call 0.Method_Form_Load0 (3, var_90)
  loc_1347A24:   var_90.Visible = False
  loc_1347A30: End If
  loc_1347A3A: Set global_52 = New 
  loc_1347A4C: Me.CursorLocation = 3
  loc_1347A76: var_E4 = CVar("Select Code,Name From GodownMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')Order by Name") 'String
  loc_1347A80: Me.Open var_E4, CVar(MemVar_1F95044), 2
  loc_1347A94: CVarUnk
  loc_1347A99: VerifyVarObj
  loc_1347A9F: Set var_8C = Me.DGDepart
  loc_1347AA5: LateIdStAd
  loc_1347ABD: Set global_56 = New 
  loc_1347ACF: Me.DGDepart.CursorLocation = 3
  loc_1347AF9: var_E4 = CVar("Select Code,Name From GodownMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')Order by Name") 'String
  loc_1347B03: Me.Open var_E4, CVar(MemVar_1F95044), 2
  loc_1347B17: CVarUnk
  loc_1347B1C: VerifyVarObj
  loc_1347B22: Set var_8C = Me.DGGodown
  loc_1347B28: LateIdStAd
  loc_1347B41: If (global_144 = "Yes") Then
  loc_1347B4E:   Set global_64 = New 
  loc_1347B60:   Me.DGGodown.CursorLocation = 3
  loc_1347B83:   var_D0 = "Select Sub.Subcode as Code, Sub.Name from Subgroup Sub Inner Join Acgroup AcG On Sub.Groupcode=AcG.Groupcode where AcG.GroupName='SUNDRY DEBTORS' and Sub.CompanyType='Corporate' and (Sub.LOGSITE_CODE='" & MemVar_1F95078
  loc_1347B94:   Me.Open CVar(var_D0 & "' or Sub.LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F95044), 3
  loc_1347BA8:   CVarUnk
  loc_1347BAD:   VerifyVarObj
  loc_1347BB3:   Set var_8C = Me.DGCompany
  loc_1347BB9:   LateIdStAd
  loc_1347BC7: End If
  loc_1347BE3: Me.CursorLocation = 3
  loc_1347C0D: var_D4 = "Select Distinct DocID as SearchCode,LogSite_Code,Site_Code From Stock Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and vtype in (SELECT V_TYPE FROM voucher_type WHERE CATEGORY='REQISS' and Site_Code='"
  loc_1347C33: Me.Open CVar(var_D4 & MemVar_1F95070 & "' and LogSite_Code='" & MemVar_1F95078 & "') order by  DocID"), CVar(MemVar_1F95044), 2
  loc_1347C54: Set var_8C = Me
  loc_1347C6B: Call Proc_41_50_FB325C(Proc_5_1_100EC1C("INI", var_8C, New, 3, -1, var_8C, global_64, 1), -1, var_8C, global_56)
  loc_1347C76: Call Proc_41_49_15BD5DC(3, -1)
  loc_1347C7B: Exit Sub
  loc_1347C7C: ' Referenced from: 1347494
  loc_1347C7C: Proc_6_60_E63754(var_8C)
  loc_1347C81: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5AA8
  'Data Table: 4DEA28
  Dim var_8C As Label
  loc_ED5A06: Call 0.Method_arg_50 (var_88)
  loc_ED5A18: Me.LblFormCaption.Caption = var_88
  loc_ED5A31: Me.LblFormCaption.Left = CDbl(0)
  loc_ED5A3D: Set var_A0 = Me.TopCtrl1
  loc_ED5A43: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_ED5A50: Set var_8C = Me.TopCtrl1
  loc_ED5A56: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_ED5A70: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED5A8B: Call 0.Method_arg_100 (var_B8)
  loc_ED5A9D: Me.LblFormCaption.Width = var_B8
  loc_ED5AA5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C878
  'Data Table: 4DEA28
  loc_E6C827: Set global_60 = Nothing
  loc_E6C839: Set global_76 = Nothing
  loc_E6C84B: Set global_64 = Nothing
  loc_E6C85D: Set global_52 = Nothing
  loc_E6C86F: Set global_56 = Nothing
  loc_E6C876: Exit Sub
End Sub

Private Sub Form_Activate() 'E2C3A4
  'Data Table: 4DEA28
  loc_E2C380: Set var_88 = Me.TopCtrl1
  loc_E2C386: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030000()
  loc_E2C39B: If (CLng(CInt()) = &H2D) Then
  loc_E2C39E:   Call TopCtrl1_UnknownEvent_15()
  loc_E2C3A3: End If
  loc_E2C3A3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2BC34
  'Data Table: 4DEA28
  loc_E2BC0C: On Error Goto loc_E2BC2C
  loc_E2BC23: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2BC2B: Exit Sub
  loc_E2BC2C: ' Referenced from: E2BC0C
  loc_E2BC2C: Proc_6_60_E63754(Shift)
  loc_E2BC31: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA4D44
  'Data Table: 4DEA28
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA4CDF: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_136)) Then
  loc_EA4CF5:   Me.FGrid.Col = 4
  loc_EA4CFD: End If
  loc_EA4D10: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA4D23: Set var_88 = Me.TxtGrid
  loc_EA4D29: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA4D31: var_BC.Visible = False
  loc_EA4D3D: Call Proc_41_51_EF96F8()
  loc_EA4D42: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E698D8
  'Data Table: 4DEA28
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69894: Set var_88 = Me.TxtGrid
  loc_E6989A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E698B4: If (var_8C.Visible = 0) Then
  loc_E698CD:   Me.FGrid.BackColorSel = CVar(CLng(global_136))
  loc_E698D5: End If
  loc_E698D5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D1A0
  'Data Table: 4DEA28
  loc_E1D197: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D19F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2E984
  'Data Table: 4DEA28
  Dim var_8C As TextBox
  loc_E2E967: Set var_88 = Me.TxtGrid
  loc_E2E96D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E2E975: var_8C.Visible = False
  loc_E2E981: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '118F438
  'Data Table: 4DEA28
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_160 As Long
  loc_118F04C: On Error Goto loc_118F42F
  loc_118F053: Set var_88 = Me.TopCtrl1
  loc_118F059: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_118F072: If (CStr() = "Browse") Then
  loc_118F075:   Exit Sub
  loc_118F076: End If
  loc_118F0EA: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_118F103:   Me.FGrid.CellBackColor = CVar(CLng(global_136))
  loc_118F113:   var_9C = "+{Tab}"
  loc_118F119:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_118F123:   KeyCode = 0
  loc_118F129: Else
  loc_118F133:   var_B0 = Me.FGrid.Rows
  loc_118F180:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_118F199:     Me.FGrid.CellBackColor = CVar(CLng(global_136))
  loc_118F1A6:     Call Proc_41_55_ED6130(0, var_B0, KeyCode)
  loc_118F1AB:   End If
  loc_118F1AB: End If
  loc_118F1B1: global_88 = KeyCode
  loc_118F1D7: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_118F1FB: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_118F211:   var_EC = CLng(Me.FGrid.Col)
  loc_118F221:   If (var_EC = CLng(4)) Then
  loc_118F237:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118F24F:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118F254:     var_11C = vbNullString
  loc_118F25E:     Set var_B4 = Me.FGrid
  loc_118F264:     LateIdCallSt
  loc_118F28F:     var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118F297:     var_11C = CVar(CLng(9)) 'Long
  loc_118F2C2:     var_14C = CVar(CStr(Format(0, "0.00"))) 'String
  loc_118F2CA:     Set var_A0 = Me.FGrid
  loc_118F2D0:     LateIdCallSt
  loc_118F2EF:   Else
  loc_118F2F6:     If (var_EC = CLng(8)) Then
  loc_118F304:       If (global_152 <> "No") Then
  loc_118F31A:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118F332:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118F337:         var_11C = vbNullString
  loc_118F341:         Set var_B4 = Me.FGrid
  loc_118F347:         LateIdCallSt
  loc_118F372:         var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118F37A:         var_11C = CVar(CLng(9)) 'Long
  loc_118F3A5:         var_14C = CVar(CStr(Format(0, "0.00"))) 'String
  loc_118F3AD:         Set var_A0 = Me.FGrid
  loc_118F3B3:         LateIdCallSt
  loc_118F3CF:       End If
  loc_118F3CF:     End If
  loc_118F3CF:   End If
  loc_118F3CF: End If
  loc_118F3D5: If (KeyCode = &HD) Then
  loc_118F3EB:   var_160 = CLng(Me.FGrid.Col)
  loc_118F3FB:   If (var_160 = CLng(1)) Then
  loc_118F410:     Me.FGrid.Col = CVar(CLng(4))
  loc_118F418:   End If
  loc_118F418: End If
  loc_118F41E: If (KeyCode = &HD) Then
  loc_118F426:   global_90 = 0
  loc_118F429: End If
  loc_118F42B: KeyCode = 0
  loc_118F42E: Exit Sub
  loc_118F42F: ' Referenced from: 118F04C
  loc_118F42F: Proc_6_60_E63754(KeyCode, global_90, var_160, var_A0, var_14C, 1, 1, var_11C)
  loc_118F434: Exit Sub
  loc_118F435: Set var_98 = var_FC
End Sub

Private Sub FGrid_UnknownEvent_B 'E155E0
  'Data Table: 4DEA28
  loc_E155D1: Call FGrid_UnknownEvent_C()
  loc_E155DB: global_90 = 0
  loc_E155DE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FEB420
  'Data Table: 4DEA28
  Dim var_B0 As Long
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  loc_FEB263: var_88 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_FEB26D: On Error Goto loc_FEB418
  loc_FEB283: var_B0 = CLng(Me.FGrid.Col)
  loc_FEB293: If (var_B0 = CLng(4)) Then
  loc_FEB2D4:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_FEB2E9: Else
  loc_FEB2F0:   If (var_B0 = CLng(8)) Then
  loc_FEB2FE:     If (global_152 <> "No") Then
  loc_FEB33F:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode)
  loc_FEB351:     End If
  loc_FEB354:   Else
  loc_FEB35B:     If (var_B0 = CLng(5)) Then
  loc_FEB371:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEB379:       var_F8 = CVar(CLng(5)) 'Long
  loc_FEB3F0:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0, Val(CStr(Me.FGrid.TextMatrix))))
  loc_FEB402:     End If
  loc_FEB402:   End If
  loc_FEB402: End If
  loc_FEB40C: If (CLng(KeyCode) <> &HD) Then
  loc_FEB414:   global_90 = &HFF
  loc_FEB417: End If
  loc_FEB417: Exit Sub
  loc_FEB418: ' Referenced from: FEB26D
  loc_FEB418: Proc_6_60_E63754(global_90, var_F8, var_D8, 0)
  loc_FEB41D: Exit Sub
  loc_FEB41E: &HFF(KeyCode) = 0
End Sub

Private Sub FGrid_UnknownEvent_D '1132B34
  'Data Table: 4DEA28
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As TextBox
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_150 As Integer
  Dim var_110 As String
  Dim unk_4DEA3E As Connection15
  Dim var_13C As Recordset15
  Dim var_140 As Fields15
  Dim var_154 As Field20
  loc_11327EC: On Error Goto loc_1132B2E
  loc_11327F3: Set var_8C = Me.TopCtrl1
  loc_11327F9: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1132812: If (CStr() = "Browse") Then
  loc_1132815:   Exit Sub
  loc_1132816: End If
  loc_1132833: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1132836:   Exit Sub
  loc_1132837: End If
  loc_1132848: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_113286A:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1132871:     Set var_8C = Me.TopCtrl1
  loc_1132877:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1132890:     If (CStr() = "Edit") Then
  loc_11328A1:       Set var_8C = Me.Txt
  loc_11328A7:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(0), var_A4)
  loc_11328C7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11328CF:       var_E4 = CVar(CLng(0)) 'Long
  loc_11328FA:       var_150 = 0
  loc_113292C:       var_110 = "select count(*) from STOCK where stock.DOCID='" & var_A4.Text & "' AND STOCK.U_NAME='" & MemVar_1F950C8 & "' AND stock.sno="
  loc_1132941:       unk_4DEA3E.Execute var_110 & CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_138, -1
  loc_1132949:       var_13C = var_13C.Fields
  loc_1132951:       var_150 = var_140.Item(var_140)
  loc_1132959:       var_154 = var_154.Value
  loc_1132998:       If (var_164 <= 0) Then
  loc_11329BC:         MsgBox("Material Already Issued ", &H10, "Delete Validation", var_138, var_164)
  loc_11329D0:         Set var_8C = Me.FGrid
  loc_11329E1:         Exit Sub
  loc_11329E2:       End If
  loc_11329E2:     End If
  loc_1132A19:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_138, var_164) = 6) Then
  loc_1132A3B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1132A51:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1132A5A:         Set var_A4 = Me.FGrid
  loc_1132A75:       Else
  loc_1132A88:         Me.FGrid.Rows = 1
  loc_1132AA5:         var_108 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1132AAD:         Set var_A4 = Me.FGrid
  loc_1132ADC:         Me.FGrid.FixedRows = 1
  loc_1132AE4:       End If
  loc_1132AE4:     End If
  loc_1132AE7:   Else
  loc_1132AF2:     var_108 = "Delete Module"
  loc_1132AFD:     var_C4 = "No Entries To Delete"
  loc_1132B08:     MsgBox(var_C4, &H10, var_108, var_138, var_164)
  loc_1132B18:   End If
  loc_1132B1C:   Set var_8C = Me.FGrid
  loc_1132B2D: End If
  loc_1132B2D: Exit Sub
  loc_1132B2E: ' Referenced from: 11327EC
  loc_1132B2E: Proc_6_60_E63754(FGrid.DispID_8001, FGrid.DispID_10000, var_108, FGrid.DispID_10000, var_C4)
  loc_1132B33: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9EA90
  'Data Table: 4DEA28
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9EA33: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9EA4B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9EA73: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9EA8E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43730
  'Data Table: 4DEA28
  Dim var_8C As TextBox
  loc_E4370F: Set var_88 = Me.TxtGrid
  loc_E43715: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4371D: var_8C.Visible = False
  loc_E43729: Call Proc_41_51_EF96F8()
  loc_E4372E: Exit Sub
End Sub

Private Sub DGGodown_UnknownEvent_9 'F4A2D4
  'Data Table: 4DEA28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A1CB: Me.DGGodown.Visible = False
  loc_F4A1EA: If (Me.RecordCount > 0) Then
  loc_F4A229:   Set var_B4 = Me.Txt
  loc_F4A22F:   Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9), var_B8)
  loc_F4A237:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4A26A:   var_B0 = Me.Fields.Item("Name")
  loc_F4A289:   Set var_B4 = Me.Txt
  loc_F4A28F:   Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9), var_B8)
  loc_F4A297:   var_B8.Text = CStr(var_B0.Value)
  loc_F4A2AD: End If
  loc_F4A2B8: Set var_A8 = Me.Txt
  loc_F4A2BE: Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9))
  loc_F4A2C6: var_B0.SetFocus
  loc_F4A2D2: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F4A6F4
  'Data Table: 4DEA28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A5EB: Me.DGDepart.Visible = False
  loc_F4A60A: If (Me.RecordCount > 0) Then
  loc_F4A649:   Set var_B4 = Me.Txt
  loc_F4A64F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4A657:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4A68A:   var_B0 = Me.Fields.Item("Name")
  loc_F4A6A9:   Set var_B4 = Me.Txt
  loc_F4A6AF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4A6B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4A6CD: End If
  loc_F4A6D8: Set var_A8 = Me.Txt
  loc_F4A6DE: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6))
  loc_F4A6E6: var_B0.SetFocus
  loc_F4A6F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1126808
  'Data Table: 4DEA28
  Dim var_8C As String
  Dim var_98 As Variant
  Dim var_90 As Variant
  Dim unk_4DEA3E As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As TextBox
  loc_11264A8: On Error Goto loc_1126800
  loc_11264CE: Call Proc_41_50_FB325C(Proc_5_1_100EC1C("ADD", Me))
  loc_11264D9: Call Proc_41_48_F57150(global_60)
  loc_11264F1: Set var_90 = Me.Txt
  loc_11264F7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_98)
  loc_11264FF: var_98.Text = CStr(MemVar_1F950EC)
  loc_1126515: Set var_90 = Me.LblVPrefix
  loc_112651B: var_90.Caption = vbNullString
  loc_1126539: unk_4DEA3E.Execute "Select Description,V_Type From Voucher_Type Where NCat='RQI'", var_B8, -1
  loc_1126544: Set var_88 = var_90
  loc_1126561: If (var_88.RecordCount > 0) Then
  loc_112659D:   Set var_C0 = Me.Txt
  loc_11265A3:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C4)
  loc_11265AB:   var_C4.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_11265D3:   var_90 = var_88.Fields
  loc_11265E3:   var_B8 = var_90.Item("V_Type").Value
  loc_11265FA:   Set var_C0 = Me.Txt
  loc_1126600:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C4)
  loc_1126608:   var_C4.Tag = CStr(var_B8)
  loc_112661E: End If
  loc_1126632: var_8C = "Select E.PurchaseGodown,G.Name as GodownName From Enviro E Left Join GodownMast G on E.PurchaseGodown=G.Code Where E.Logsite_code='" & MemVar_1F95078
  loc_1126642: unk_4DEA3E.Execute var_8C & "'", var_B8, -1
  loc_112664D: Set var_88 = var_90
  loc_1126671: If (var_88.RecordCount > 0) Then
  loc_1126686:   var_90 = var_88.Fields
  loc_11266AD:   Set var_C0 = Me.Txt
  loc_11266B3:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_C4, CStr(var_90.Item("GodownName").Value))
  loc_11266BB:   var_C4.Text = var_90
  loc_11266EB:   var_98 = var_88.Fields.Item("PurchaseGodown")
  loc_11266FC:   var_8C = CStr(var_98.Value)
  loc_112670A:   Set var_C0 = Me.Txt
  loc_1126710:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_C4)
  loc_1126718:   var_C4.Tag = var_8C
  loc_112672E: End If
  loc_1126736: Call Proc_41_52_126C104(&HFF, var_8C)
  loc_1126741: global_92 = var_8C
  loc_1126782: Set var_90 = Me.Txt
  loc_1126788: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_98, CStr(Format(Time, "HH:nn")))
  loc_1126790: var_98.Text = 1
  loc_11267B3: Set var_90 = Me.Txt
  loc_11267B9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_98)
  loc_11267C1: var_98.SetFocus
  loc_11267D2: Set var_88 = Nothing
  loc_11267E2: Me.LblUser.Caption = vbNullString
  loc_11267F7: Me.LblLDt.Caption = vbNullString
  loc_11267FF: Exit Sub
  loc_1126800: ' Referenced from: 11264A8
  loc_1126800: Proc_6_60_E63754(1)
  loc_1126805: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC7AB8
  'Data Table: 4DEA28
  loc_EC7A1C: On Error Goto loc_EC7AB1
  loc_EC7A56: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC7A65:   Set var_10C = Me
  loc_EC7A7C:   Call Proc_41_50_FB325C(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC7A87:   Call Proc_41_49_15BD5DC(global_60)
  loc_EC7A92:   global_116 = vbNullString
  loc_EC7A99: Else
  loc_EC7A9F:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC7AA7:   Call var_10C.SetFocus
  loc_EC7AB0: End If
  loc_EC7AB0: Exit Sub
  loc_EC7AB1: ' Referenced from: EC7A1C
  loc_EC7AB1: Proc_6_60_E63754()
  loc_EC7AB6: Exit Sub
  loc_EC7AB7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11323C0
  'Data Table: 4DEA28
  Dim unk_4DEA3E As Connection15
  Dim Me As Recordset15
  Dim var_12C As Variant
  Dim var_134 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_130 As String
  Dim var_C0 As Variant
  loc_113205C: On Error Goto loc_1132372
  loc_113206D: If (Proc_183_56_FE8B08(global_60) = &HFF) Then
  loc_1132070:   Exit Sub
  loc_1132071: End If
  loc_11320A8: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_100, var_120) = 6) Then
  loc_11320B4:   unk_4DEA3E.BeginTrans var_124
  loc_11320CA:   var_94 = Me.Bookmark 'Variant
  loc_11320EC:   Set var_128 = Me.Txt
  loc_11320F2:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_12C, var_130, "Select V_Type From Voucher_Type Where ContraType='")
  loc_11320FA:   var_C0 = var_12C.Tag
  loc_1132103:   var_134 = -1 & var_130
  loc_1132113:   unk_4DEA3E.Execute var_134 & "'", var_13C, 
  loc_113211E:   Set var_9C = var_13C
  loc_113214A:   If (var_9C.RecordCount > 0) Then
  loc_1132178:     var_A0 = CStr(var_9C.Fields.Item(0).Value)
  loc_1132185:   End If
  loc_11321C4:   var_E0 = "Update Indent Set ClearYN='' Where DocId In (Select distinct Contradocid From Stock Where DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_11321DB:   unk_4DEA3E.Execute CStr(var_E0 & "')"), var_120, -1
  loc_113224D:   unk_4DEA3E.Execute CStr("Delete from Stock where ContraDocId ='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_11322B1:   var_100 = "Delete From Stock Where DocID='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11322B5:   var_130 = CStr(var_100)
  loc_11322BF:   unk_4DEA3E.Execute var_130, var_120, -1
  loc_11322E1:   unk_4DEA3E.CommitTrans
  loc_11322F1:   Me.Requery -1
  loc_1132311:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_113231E:     Me.Bookmark = var_94
  loc_1132326:   Else
  loc_113233A:     If (Me.EOF = 0) Then
  loc_1132343:       Me.MoveLast
  loc_1132348:     End If
  loc_1132348:   End If
  loc_1132348:   Call Proc_41_49_15BD5DC(var_13C, var_13C)
  loc_1132369:   Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_1132371: End If
  loc_1132371: Exit Sub
  loc_1132372: ' Referenced from: 113205C
  loc_1132378: unk_4DEA3E.RollbackTrans
  loc_1132385: Set var_128 = Err()
  loc_113238B: Call 0.Method_arg_2C (var_130, 0)
  loc_11323AC: MsgBox(CVar(var_130), &H10, " Deletion Message", var_100, var_120)
  loc_11323BF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2BBA0
  'Data Table: 4DEA28
  Dim var_8C As Label
  Dim var_A4 As TextBox
  loc_F2BA94: On Error Goto loc_F2BB98
  loc_F2BAA5: If (Proc_183_55_FE8490(global_60) = &HFF) Then
  loc_F2BAA8:   Exit Sub
  loc_F2BAA9: End If
  loc_F2BACC: Call Proc_41_50_FB325C(Proc_5_1_100EC1C("EDIT", Me))
  loc_F2BAE4: Me.LblUser.Caption = vbNullString
  loc_F2BAF9: Me.LblLDt.Caption = vbNullString
  loc_F2BB05: Set var_8C = Me.TopCtrl1
  loc_F2BB0B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(global_60)
  loc_F2BB24: If (CStr() = "Add") Then
  loc_F2BB32:   Set var_8C = Me.Txt
  loc_F2BB38:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6))
  loc_F2BB40:   var_A4.SetFocus
  loc_F2BB4C: End If
  loc_F2BB50: Set var_8C = Me.TopCtrl1
  loc_F2BB56: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_A4)
  loc_F2BB6F: If (CStr() = "Edit") Then
  loc_F2BB7D:   Set var_8C = Me.Txt
  loc_F2BB83:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5))
  loc_F2BB8B:   var_A4.SetFocus
  loc_F2BB97: End If
  loc_F2BB97: Exit Sub
  loc_F2BB98: ' Referenced from: F2BA94
  loc_F2BB98: Proc_6_60_E63754(var_A4)
  loc_F2BB9D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15CB8
  'Data Table: 4DEA28
  loc_E15CAD: Me.Global.Unload Me
  loc_E15CB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F152E8
  'Data Table: 4DEA28
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_124 As String
  Dim MemVar_1F950E4 As String
  loc_F15210: On Error Goto loc_F152E0
  loc_F1522A: If (Me.RecordCount <= 0) Then
  loc_F15233:   var_B8 = "Information"
  loc_F1524E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F1525E:   Exit Sub
  loc_F1525F: End If
  loc_F15266: var_10C = "Select Distinct SH.Docid,SH.Vtype,SH.Vno,SH.Vdate,SH.Vtime,SH.Remarks,D.NAME AS Location,VT.Description From (Stock SH INNER Join GodownMast D on D.Code=SH.GodownCode) INNER join Voucher_Type VT on Vt.V_type=SH.VType where SH.LOGSITE_CODE='" & MemVar_1F95078
  loc_F15290: var_124 = var_10C & "' AND SH.SITE_CODE='" & MemVar_1F95070 & "' AND VT.LOGSITE_CODE='" & MemVar_1F95078 & "' AND VT.SITE_CODE='" & MemVar_1F95070
  loc_F15297: MemVar_1F950E4 = var_124 & "' AND VT.Ncat in ('RQI')"
  loc_F152B5: Proc_6_126_F1C850("650,500,1100,650,2000,2000,2000")
  loc_F152C3: MemVar_1F95120 = Me
  loc_F152DA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F152DF: Exit Sub
  loc_F152E0: ' Referenced from: F15210
  loc_F152E0: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F152E5: Exit Sub
  loc_F152E6: DOC
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2BE68
  'Data Table: 4DEA28
  Dim var_4F01 As Double
  loc_E2BE58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2BE60: Call Proc_41_49_15BD5DC(global_60)
  loc_E2BE65: Exit Sub
  loc_E2BE66: var_4F01 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C588
  'Data Table: 4DEA28
  Dim var_4F01 As Double
  loc_E2C578: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C580: Call Proc_41_49_15BD5DC(global_60)
  loc_E2C585: Exit Sub
  loc_E2C586: var_4F01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C048
  'Data Table: 4DEA28
  Dim var_4F01 As Double
  loc_E2C038: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C040: Call Proc_41_49_15BD5DC(global_60)
  loc_E2C045: Exit Sub
  loc_E2C046: var_4F01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2C9A8
  'Data Table: 4DEA28
  Dim var_4F01 As Double
  loc_E2C998: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C9A0: Call Proc_41_49_15BD5DC(global_60)
  loc_E2C9A5: Exit Sub
  loc_E2C9A6: var_4F01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '116EB48
  'Data Table: 4DEA28
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_C4 As Variant
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  Dim var_108 As String
  Dim unk_4DEA3E As Connection15
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_D8 As Variant
  Dim var_A4 As Recordset15
  loc_116E7A0: On Error Goto loc_116EB42
  loc_116E7AC: var_AC = Me.RecordCount
  loc_116E7BA: If (var_AC <= 0) Then
  loc_116E7BD:   Exit Sub
  loc_116E7BE: End If
  loc_116E7C5: var_B0 = "SELECT S.VNo, S.Vdate, S.VTime, D.Name DepartName, S.Remarks, I.Name ItemName, S.RecdUnit As Unit, Indent1.Qty, S.RecdQty As QtyIss, S.Rate, S.Amount " & " FROM ((Stock AS S INNER JOIN ItemMast AS I ON S.Item = I.Code And I.ItemType='Store') iNNER JOIN GodownMast AS D ON S.GodownCode = D.Code) INNER JOIN Indent1 ON (S.ContraSno = Indent1.Sno) AND (S.ContraDocId = Indent1.DocId) "
  loc_116E7E4: var_B4 = Me.Fields
  loc_116E7F4: var_D8 = var_B4.Item("SearchCode").Value
  loc_116E80A: var_88 = CStr(CVar(var_B0 & " Where S.DocID='") & var_D8 & "' Order By S.Sno")
  loc_116E82A: If (var_88 = vbNullString) Then
  loc_116E82D:   Exit Sub
  loc_116E82E: End If
  loc_116E844: unk_4DEA3E.Execute var_88, var_D8, -1
  loc_116E858: var_108 = "Select S.GodownCode,G.Name as GodName From Stock as S Left Join GodownMast as G on S.GodownCode=G.Code Where S.ContraDocID='"
  loc_116E872: var_B4 = Me.Fields
  loc_116E87A: var_C8 = var_B4.Item("SearchCode")
  loc_116E882: var_D8 = var_C8.Value
  loc_116E8C1: unk_4DEA3E.Execute CStr(var_108 & var_D8 & "'"), var_D8, -1
  loc_116E8CC: Set var_A4 = var_B4
  loc_116E8EB: Set var_B4 = var_B4 
  loc_116E8F7: var_12E = CreateFieldDefFile(var_B4, MemVar_1F950B4 & "\StoreIss.ttx", &HFF)
  loc_116E901: Set var_A0 = var_B4
  loc_116E907: var_C4 = CVar(var_12E) 'Integer
  loc_116E90A: var_9C = var_C4 'Variant
  loc_116E926: var_B0 = MemVar_1F950B4 & "\StoreIss.RPT"
  loc_116E92F: Call 0.Method_arg_1C (var_B0, var_C4, var_B4)
  loc_116E93A: MemVar_1F951E8 = var_B4
  loc_116E955: Call 0.Method_arg_90 (var_B4, var_AC, var_A6, 1)
  loc_116E95D: Call 0.Method_arg_24 (var_12E, var_B4)
  loc_116E969: For var_132 =  To CInt(var_AC): var_B4 = var_132 'Integer
  loc_116E982:   Call 0.Method_arg_90 (var_B4, CLng(var_A6))
  loc_116E98A:   Call 0.Method_arg_20 (var_C8)
  loc_116E992:   Call 0.Method_arg_30 (var_B0)
  loc_116E9A8:   var_144 = Ucase(CVar(var_B0)) 'Variant
  loc_116E9D8:   If (var_144 = Ucase("Title")) Then
  loc_116E9EE:     Call 0.Method_arg_90 (var_B4, CLng(var_A6))
  loc_116E9F6:     Call 0.Method_arg_20 (var_C8)
  loc_116E9FE:     Call 0.Method_arg_38 ("'Store Issue Slip'")
  loc_116EA0D:   Else
  loc_116EA2F:     If (var_144 = Ucase("Godown")) Then
  loc_116EA32:       var_108 = "'"
  loc_116EA49:       var_B4 = var_A4.Fields
  loc_116EA65:       var_128 = "'"
  loc_116EA6E:       var_B0 = CStr(var_108 & var_B4.Item("GodName").Value & var_128)
  loc_116EA82:       Call 0.Method_arg_90 (var_148, CLng(var_A6))
  loc_116EA8A:       Call 0.Method_arg_20 (var_14C)
  loc_116EA92:       Call 0.Method_arg_38 (var_B0)
  loc_116EAAE:     End If
  loc_116EAAE:   End If
  loc_116EAB1: Next var_132 'Integer
  loc_116EACF: Call 0.Method_arg_64 (var_B4, CVar(var_A0))
  loc_116EAD7: Call 0.Method_arg_2C (var_108)
  loc_116EAE5: Call 0.Method_arg_150 (var_128)
  loc_116EAF0: Call 0.Method_arg_50 (var_B0)
  loc_116EAFA: Set var_C8 = Nothing
  loc_116EB14: Set var_B4 = MemVar_1F951E8 
  loc_116EB20: Proc_6_99_1484404(var_B4, 0, var_B0)
  loc_116EB2B: MemVar_1F951E8 = var_B4
  loc_116EB3E: Set var_A0 = Nothing
  loc_116EB41: Exit Sub
  loc_116EB42: ' Referenced from: 116E7A0
  loc_116EB42: Proc_6_60_E63754(&HFF)
  loc_116EB47: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E406C8
  'Data Table: 4DEA28
  Dim Me As Recordset15
  loc_E4069F: Me.Requery -1
  loc_E406AF: Me.Requery -1
  loc_E406BF: Me.Requery -1
  loc_E406C4: Exit Sub
  loc_E406C5: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16F8B74
  'Data Table: 4DEA28
  Dim var_9E As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_A8 As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_AC As Variant
  Dim var_144 As String
  Dim unk_4DEA3E As Connection15
  Dim var_88 As Variant
  Dim var_118 As Variant
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_8A As Variant
  Dim var_138 As String
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_140 As TextBox
  Dim var_210 As TextBox
  Dim var_228 As Variant
  Dim var_238 As MSHFlexGrid
  Dim var_274 As Variant
  Dim var_288 As Variant
  Dim var_B14 As Double
  Dim var_2DC As MSHFlexGrid
  Dim var_2F0 As TextBox
  Dim var_304 As TextBox
  Dim var_330 As Variant
  Dim var_37C As TextBox
  Dim var_3C8 As Variant
  Dim var_41C As Variant
  Dim var_43C As Variant
  Dim var_460 As Variant
  Dim var_4B4 As Variant
  Dim var_4D4 As Variant
  Dim var_B24 As Double
  Dim var_590 As Variant
  Dim var_624 As Variant
  Dim var_B2C As Double
  Dim var_7B0 As Variant
  Dim var_7D0 As Variant
  Dim var_848 As Variant
  Dim var_868 As Variant
  Dim var_8E0 As Variant
  Dim var_900 As Variant
  Dim var_978 As Variant
  Dim var_A10 As Variant
  Dim var_A30 As Variant
  Dim var_A54 As Variant
  Dim var_1E4 As String
  Dim var_1F0 As String
  Dim var_1F4 As String
  Dim var_298 As String
  Dim var_1DC As Variant
  Dim var_354 As Variant
  Dim var_51C As Variant
  Dim var_5C0 As Variant
  Dim var_658 As Variant
  Dim var_668 As Variant
  Dim var_698 As Variant
  Dim var_780 As Variant
  Dim var_938 As Variant
  Dim var_948 As Variant
  Dim var_968 As Variant
  Dim var_9D0 As Variant
  Dim var_AB4 As Variant
  Dim var_AD4 As Variant
  Dim var_42C As Variant
  Dim var_224 As MSHFlexGrid
  Dim var_2EC As TextBox
  Dim var_314 As TextBox
  Dim var_5F0 As Variant
  Dim var_318 As MSHFlexGrid
  Dim var_32C As MSHFlexGrid
  Dim var_378 As MSHFlexGrid
  Dim var_200 As String
  Dim var_3C4 As MSHFlexGrid
  Dim var_214 As String
  Dim var_C7C As Variant
  Dim var_C9C As Variant
  Dim var_6C8 As Variant
  Dim var_70C As Variant
  Dim var_AF8 As Variant
  Dim var_BEC As Variant
  Dim var_CDC As Variant
  Dim var_1EC As String
  loc_16F72B4: On Error Goto loc_16F8B5A
  loc_16F72B9: var_9E = 0
  loc_16F72C7: Set var_A8 = Me.Txt
  loc_16F72CD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_16F72F6: If (Proc_6_27_EA61EC(var_AC, "Voucher Number") = 0) Then
  loc_16F72F9:   Exit Sub
  loc_16F72FA: End If
  loc_16F7305: Set var_A8 = Me.Txt
  loc_16F730B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_16F7334: If (Proc_6_27_EA61EC(var_AC, "Voucher Date") = 0) Then
  loc_16F7337:   Exit Sub
  loc_16F7338: End If
  loc_16F7343: Set var_A8 = Me.Txt
  loc_16F7349: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_AC)
  loc_16F7372: If (Proc_6_27_EA61EC(var_AC, "Department") = 0) Then
  loc_16F7375:   Exit Sub
  loc_16F7376: End If
  loc_16F7381: Set var_A8 = Me.Txt
  loc_16F7387: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC)
  loc_16F73B0: If (Proc_6_27_EA61EC(var_AC, "Godown") = 0) Then
  loc_16F73B3:   Exit Sub
  loc_16F73B4: End If
  loc_16F73B8: Set var_A8 = Me.TopCtrl1
  loc_16F73BE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_9E)
  loc_16F73D7: If (CStr() = "Add") Then
  loc_16F73E1:   var_B4 = "Added By:- " & MemVar_1F950C8
  loc_16F73E8:   var_E4 = CVar(CStr() & "  On ") 'String
  loc_16F7401:   var_F4 = (var_E4 + Str(Date))
  loc_16F740C:   global_80 = CStr(var_F4)
  loc_16F7422:   GoTo loc_16F7425
  loc_16F7425:   ' Referenced from: 16F7422
  loc_16F7425: End If
  loc_16F7425: var_108 = 1
  loc_16F744B: var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_16F745C: If (var_B4 = vbNullString) Then
  loc_16F7465:   Call 0.Method_arg_50 (var_B4, CVar(CLng(1)))
  loc_16F7486:   MsgBox("Please Fill Item Detail", &H40, CVar(var_B4), var_E4, var_F4)
  loc_16F74A9:   Me.FGrid.Row = 1
  loc_16F74B5:   Set var_A8 = Me.FGrid
  loc_16F74C6:   Exit Sub
  loc_16F74C7: End If
  loc_16F74D0: If (global_132 = 0) Then
  loc_16F74D7:   Set var_140 = Me.FGrid
  loc_16F74E8:   Set var_A8 = Me.Txt
  loc_16F74EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC, var_B4)
  loc_16F74F6:   FGrid.DispID_8001 = var_AC.Tag
  loc_16F7514:   Set var_B0 = var_140
  loc_16F7530:   If (Proc_96_28_F221A0(var_B0, &HA, 4) = &HFF) Then
  loc_16F7539:     Call 0.Method_arg_50 (var_B4, MemVar_1F95070)
  loc_16F7547:     var_D4 = CVar(var_B4) 'String
  loc_16F7554:     var_C4 = "Can't Proceed With Negative Stock"
  loc_16F755A:     MsgBox(var_C4, &H10, var_D4, var_E4, var_F4)
  loc_16F757D:     Me.FGrid.Row = 1
  loc_16F7598:     Me.FGrid.Col = 1
  loc_16F75A4:     Set var_A8 = Me.FGrid
  loc_16F75B5:     Exit Sub
  loc_16F75B6:   End If
  loc_16F75B6: End If
  loc_16F75D4: Set var_A8 = Me.Txt
  loc_16F75DA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_B4, "Select V_Type From Voucher_Type Where ContraType='", var_C4)
  loc_16F75E2: -1 = var_AC.Tag
  loc_16F75FB: unk_4DEA3E.Execute var_B0 & var_B4 & "'", FGrid.DispID_8001, var_B4
  loc_16F7606: Set var_88 = var_B0
  loc_16F7624: var_148 = var_88.RecordCount
  loc_16F7632: If (var_148 > 0) Then
  loc_16F763B:   var_108 = 0
  loc_16F764F:   var_AC = var_88.Fields.Item(var_108)
  loc_16F7657:   var_C4 = var_AC.Value
  loc_16F7660:   var_A4 = CStr(var_C4)
  loc_16F766D: End If
  loc_16F7671: Set var_A8 = Me.TopCtrl1
  loc_16F7677: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_108)
  loc_16F7690: If (CStr() = "Add") Then
  loc_16F7699:   var_118 = 0
  loc_16F76B9:   var_B4 = "Select count(*) from Stock where DocID='" & global_92
  loc_16F76C9:   unk_4DEA3E.Execute var_B4 & "'", var_C4, -1
  loc_16F76D1:   var_A8 = var_A8.Fields
  loc_16F76D9:   var_118 = var_AC.Item(var_AC)
  loc_16F76E1:   var_B0 = var_B0.Value
  loc_16F7708:   If (var_D4 > 0) Then
  loc_16F772C:     MsgBox("Duplicate Vouche No.", &H10, "Validation Ertror", var_E4, var_F4)
  loc_16F7744:     Call Proc_41_52_126C104(&HFF, var_B4)
  loc_16F7757:     Set var_A8 = Me.Txt
  loc_16F775D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_16F7765:     var_AC.Text = var_B4
  loc_16F7774:     Exit Sub
  loc_16F7775:   End If
  loc_16F7778: Else
  loc_16F77AC:   global_92 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_16F77BD: End If
  loc_16F77E2: For var_14C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A0 = var_14C 'Integer
  loc_16F77EC:   var_108 = CVar(CLng(var_A0)) 'Long
  loc_16F77F4:   var_128 = CVar(CLng(4)) 'Long
  loc_16F780E:   var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_16F781F:   var_15C = CVar(CLng(var_A0)) 'Long
  loc_16F7836:   var_D4 = Me.FGrid.TextMatrix)
  loc_16F785F:   If (CVar(CLng(&HA)) And (CStr(var_D4) <> vbNullString)) Then
  loc_16F7864:     var_9E = &HFF
  loc_16F7867:   End If
  loc_16F786A: Next var_14C 'Integer
  loc_16F7875: If (var_9E = 0) Then
  loc_16F788B:   var_C4 = "Nil Details Can't Be Saved"
  loc_16F7891:   MsgBox(var_C4, &H40, var_D4, var_E4, var_F4)
  loc_16F78A1:   Exit Sub
  loc_16F78A2: End If
  loc_16F78AB: unk_4DEA3E.BeginTrans var_148
  loc_16F78B2: var_8A = &HFF
  loc_16F78DC: unk_4DEA3E.Execute "Delete From STOCK Where DocID='" & global_92 & "'", var_C4, -1
  loc_16F794C: var_E4 = (Left(global_92, 3) + CVar(Proc_6_52_EAE084(var_A4, 5)))
  loc_16F7953: var_1AC = (var_E4 + Mid(global_92, 9, var_F4))
  loc_16F796E: unk_4DEA3E.Execute CStr("Delete From STOCK Where DocID='" & var_1AC & "'"), var_1DC, -1
  loc_16F79B7: For var_1E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A0 = var_1E0 'Integer
  loc_16F79C1:   var_108 = CVar(CLng(var_A0)) 'Long
  loc_16F79C9:   var_128 = CVar(CLng(4)) 'Long
  loc_16F79E3:   var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_16F7A34:   If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_16F7A3B:     var_108 = CVar(CLng(var_A0)) 'Long
  loc_16F7A43:     var_128 = CVar(CLng(0)) 'Long
  loc_16F7A65:     var_B04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F7A6F:     Set var_AC = Me.LblVPrefix
  loc_16F7A75:     var_1EC = var_AC.Caption
  loc_16F7A88:     Set var_B0 = Me.Txt
  loc_16F7A8E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140, var_200, var_B04, var_128, var_108, CVar(CLng(var_A0)))
  loc_16F7A96:     (CDbl(Val(var_B4)) <> CDbl(0)) = var_140.Tag
  loc_16F7AA9:     Set var_20C = Me.Txt
  loc_16F7AAF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_214, var_128, var_108)
  loc_16F7AB7:     1 = var_210.Text
  loc_16F7AC4:     var_B0C = Val(var_214)
  loc_16F7AD5:     Set var_224 = Me.Txt
  loc_16F7ADB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_228, var_22C, var_B0C)
  loc_16F7AE3:     var_A8 = var_228.Text
  loc_16F7AF4:     var_17C = CVar(CLng(&HB)) 'Long
  loc_16F7B03:     var_D4 = Me.FGrid.TextMatrix)
  loc_16F7B1B:     var_274 = CVar(CLng(&HC)) 'Long
  loc_16F7B24:     Set var_288 = Me.FGrid
  loc_16F7B3D:     var_B14 = Val(CStr(var_288.TextMatrix)))
  loc_16F7B5B:     var_F4 = Me.FGrid.TextMatrix)
  loc_16F7B75:     Set var_2EC = Me.Txt
  loc_16F7B7B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2F0, var_2F4, var_F4, CVar(CLng(&HA)), CVar(CLng(var_A0)), var_B14)
  loc_16F7B83:     var_274 = var_2F0.Tag
  loc_16F7B96:     Set var_300 = Me.Txt
  loc_16F7B9C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_304, var_308, CVar(CLng(var_A0)), var_D4)
  loc_16F7BA4:     var_17C = var_304.Tag
  loc_16F7BB4:     Set var_314 = Me.Txt
  loc_16F7BBA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_318, CVar(CLng(var_A0)))
  loc_16F7BDC:     Set var_32C = Me.Txt
  loc_16F7BE2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_330, var_334)
  loc_16F7BEA:     var_A8 = var_330.Tag
  loc_16F7BFD:     Set var_378 = Me.Txt
  loc_16F7C03:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_37C)
  loc_16F7C1E:     Set var_3C4 = Me.Txt
  loc_16F7C24:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_3C8)
  loc_16F7C35:     var_41C = CVar(CLng(var_A0)) 'Long
  loc_16F7C3D:     var_43C = CVar(CLng(8)) 'Long
  loc_16F7C66:     var_4B4 = CVar(CLng(var_A0)) 'Long
  loc_16F7C6E:     var_4D4 = CVar(CLng(6)) 'Long
  loc_16F7C90:     var_B24 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F7CAE:     var_590 = Me.FGrid.TextMatrix)
  loc_16F7CE8:     var_B2C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F7CF9:     Proc_6_7_F26918(var_6C8, Date, var_B2C, CVar(CLng(9)), CVar(CLng(var_A0)), var_590, CVar(CLng(7)), CVar(CLng(var_A0)))
  loc_16F7D02:     Set var_6FC = Me.TopCtrl1
  loc_16F7D08:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_B24)
  loc_16F7D43:     var_7B0 = CVar(CLng(var_A0)) 'Long
  loc_16F7D4B:     var_7D0 = CVar(CLng(9)) 'Long
  loc_16F7D74:     var_848 = CVar(CLng(var_A0)) 'Long
  loc_16F7D7C:     var_868 = CVar(CLng(5)) 'Long
  loc_16F7DA5:     var_8E0 = CVar(CLng(var_A0)) 'Long
  loc_16F7DAD:     var_900 = CVar(CLng(4)) 'Long
  loc_16F7DD6:     var_978 = CVar(CLng(var_A0)) 'Long
  loc_16F7E0F:     var_A30 = CVar(CLng(2)) 'Long
  loc_16F7E1E:     var_A54 = Me.FGrid.TextMatrix)
  loc_16F7E41:     var_B4 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,ContraDocid,ContraSNo,Item,GodownCode,DepartCode,Remarks,Company,RefDocId,Vtime,Rate,QtyRec,Unit,Amount,U_Name,U_EntDt,U_AE,TOTAL,CONVRATIO,RECDQTY,ACCQTY,RECDUNIT,LogSite_Code) VALUES ('" & global_92
  loc_16F7E50:     var_1E4 = CStr(var_B04)
  loc_16F7E5B:     var_1F0 = var_B4 & "'," & var_1E4 & ",'"
  loc_16F7E62:     var_1F4 = var_1F0 & var_1EC
  loc_16F7EC4:     var_298 = var_1F4 & "','" & MemVar_1F95070 & "','" & var_200 & "'," & CStr(var_B0C) & ",'" & var_22C & "','" & CStr(var_D4) & "'," & CStr(var_B14)
  loc_16F7F12:     var_354 = CVar(var_298 & ",'" & CStr(var_F4) & "','" & var_2F4 & "','" & var_308 & "','") & Trim(CVar(var_318)) & "','" & CVar(var_334) 
  loc_16F7F60:     var_51C = var_354 & "','" & CVar(var_37C.Tag) & "','" & CVar(var_3C8.Text) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_B24) 
  loc_16F7FBB:     var_780 = var_51C & ",'" & CVar(CStr(var_590)) & "'," & CVar(var_B2C) & ",'" & CVar(MemVar_1F950C8) & "'," & var_6C8 & ",'" & IIf((CStr(var_70C) = "Add"), "A", "E") 
  loc_16F7FF7:     var_948 = var_780 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_16F803B:     var_AD4 = var_948 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_A54)) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_16F8049:     unk_4DEA3E.Execute CStr(var_AD4), var_AF8, -1
  loc_16F8175:     var_108 = CVar(CLng(var_A0)) 'Long
  loc_16F81B7:     var_144 = "Update Indent set ClearYN='Y' where Docid='" & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_16F81C0:     unk_4DEA3E.Execute var_144, var_D4, -1
  loc_16F81E4:     If (var_A4 <> vbNullString) Then
  loc_16F81F2:       var_108 = global_92
  loc_16F81FA:       var_C4 = Left(var_108, 3)
  loc_16F823F:       Set var_A8 = Me.FGrid
  loc_16F8250:       var_B4 = CStr(var_A8.TextMatrix))
  loc_16F8258:       var_B04 = Val(var_B4)
  loc_16F8262:       Set var_AC = Me.LblVPrefix
  loc_16F827B:       Set var_B0 = Me.Txt
  loc_16F8281:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_140, var_144, var_B04, CVar(CLng(0)), CVar(CLng(var_A0)), var_A54)
  loc_16F8289:       var_A30 = var_140.Text
  loc_16F8296:       var_B0C = Val(var_144)
  loc_16F82A7:       Set var_20C = Me.Txt
  loc_16F82AD:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210, var_1E4, var_B0C, CVar(CLng(var_A0)))
  loc_16F82B5:       var_B4C = var_210.Text
  loc_16F82BE:       var_42C = CVar(CLng(var_A0)) 'Long
  loc_16F82E8:       var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F8306:       var_624 = Me.FGrid.TextMatrix)
  loc_16F8320:       Set var_238 = Me.Txt
  loc_16F8326:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_288, var_1EC, var_624, CVar(CLng(&HA)), CVar(CLng(var_A0)))
  loc_16F8341:       Set var_2DC = Me.Txt
  loc_16F8347:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2EC, var_1F0, CVar(CLng(0)))
  loc_16F834F:       var_42C = var_2EC.Tag
  loc_16F835F:       Set var_2F0 = Me.Txt
  loc_16F8365:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_300, CVar(CLng(4)))
  loc_16F8387:       Set var_304 = Me.Txt
  loc_16F838D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_314, var_1F4)
  loc_16F8395:       var_978 = var_314.Text
  loc_16F839E:       var_5C0 = CVar(CLng(var_A0)) 'Long
  loc_16F83A6:       var_5F0 = CVar(CLng(8)) 'Long
  loc_16F83CF:       var_658 = CVar(CLng(var_A0)) 'Long
  loc_16F83D7:       var_698 = CVar(CLng(6)) 'Long
  loc_16F83F9:       var_B24 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F8417:       var_968 = Me.FGrid.TextMatrix)
  loc_16F8451:       var_B2C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F8457:       Proc_6_104_ED68A8(var_AD4, var_B2C, CVar(CLng(9)), CVar(CLng(var_A0)), var_968, CVar(CLng(7)), CVar(CLng(var_A0)))
  loc_16F8460:       Set var_37C = Me.TopCtrl1
  loc_16F8466:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_B24)
  loc_16F84A1:       var_938 = CVar(CLng(var_A0)) 'Long
  loc_16F84A9:       var_978 = CVar(CLng(9)) 'Long
  loc_16F84D2:       var_9D0 = CVar(CLng(var_A0)) 'Long
  loc_16F84DA:       var_A10 = CVar(CLng(5)) 'Long
  loc_16F8503:       var_A84 = CVar(CLng(var_A0)) 'Long
  loc_16F850B:       var_AC4 = CVar(CLng(4)) 'Long
  loc_16F8534:       var_C7C = CVar(CLng(var_A0)) 'Long
  loc_16F853C:       var_C9C = CVar(CLng(2)) 'Long
  loc_16F8564:       var_138 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,ContraDocid,ContraSNo,Item,GodownCode,DepartCode,Remarks,Vtime,Rate,QtyIss,Unit,Amount,U_Name,U_EntDt,U_AE,TOTAL,CONVRATIO,ISSQTY,ISSUEUNIT,LogSite_Code) VALUES ('"
  loc_16F856F:       var_D4 = CVar(Proc_6_52_EAE084(var_A4, 5, var_AC, var_C4, CVar(CLng(&HB)), var_108, var_AFC)) 'String
  loc_16F8572:       var_E4 = (var_C4 + var_D4)
  loc_16F8579:       var_1AC = (var_288.TextMatrix) + Mid(global_92, 9, var_F4))
  loc_16F8586:       var_1CC = var_138 & Trim(CVar(Me.FGrid)) & "'," 
  loc_16F85DE:       var_460 = var_1CC & CVar(var_B04) & ",'" & CVar(var_AC.Caption) & "','" & CVar(MemVar_1F95070) & "','" & CVar(var_A4) & "'," & CVar(var_B0C) 
  loc_16F862F:       var_668 = var_460 & ",'" & CVar(var_1E4) & "','" & CVar(global_92) & "'," & CVar(var_288.Tag) & ",'" & CVar(CStr(var_624)) 
  loc_16F868C:       var_88C = var_668 & "','" & CVar(var_1EC) & "','" & CVar(var_1F0) & "','" & Trim(CVar(var_300)) & "','" & CVar(var_1F4) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_16F86E4:       var_AB4 = var_88C & "," & CVar(var_B24) & ",'" & CVar(CStr(var_968)) & "'," & CVar(var_B2C) & ",'" & CVar(MemVar_1F950C8) & "'," 
  loc_16F8718:       var_BEC = var_AB4 & var_AD4 & ",'" & IIf((CStr(var_B6C) = "Add"), "A", "E") & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_16F874B:       var_CDC = var_BEC & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_16F8775:       unk_4DEA3E.Execute CStr(var_CDC & "','" & CVar(MemVar_1F95078) & "')"), var_D5C, -1
  loc_16F8879:     End If
  loc_16F8879:   End If
  loc_16F887C: Next var_1E0 'Integer
  loc_16F8885: Set var_A8 = Me.TopCtrl1
  loc_16F888B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_16F88A4: If (CStr() = "Add") Then
  loc_16F88AB:   Set var_88 = New 
  loc_16F88B6:   Me.TopCtrl1.CursorLocation = 3
  loc_16F88C9:   Set var_A8 = Me.Txt
  loc_16F88CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_16F88EA:   Set var_B0 = Me.Txt
  loc_16F88F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_16F8900:   var_C4 = CVar(var_140.Text) 'String
  loc_16F8906:   Proc_6_7_F26918(var_D4)
  loc_16F8929:   var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_16F894C:   var_E4 = CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & var_AC.Tag & "' And VP.Date_From<=") 'String
  loc_16F8963:   var_88.Open var_E4 & var_D4 & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_16F89A3:   If (var_88.RecordCount > 0) Then
  loc_16F89BA:     var_B4 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (SITE_CODE='" & MemVar_1F95070
  loc_16F89D8:     var_108 = "V_Type"
  loc_16F89EC:     var_AC = var_88.Fields.Item(var_108)
  loc_16F89F4:     var_C4 = var_AC.Value
  loc_16F8A2F:     Proc_6_7_F26918(Trim(CVar(Me.FGrid)), CVar(var_88.Fields.Item("Date_From")), CVar(var_B4 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_C4 & "' and Date_From=", var_1CC, -1)
  loc_16F8A45:     unk_4DEA3E.Execute CStr(var_20C & Trim(CVar(Me.FGrid))), 3, -1
  loc_16F8A73:   End If
  loc_16F8A73: End If
  loc_16F8A79: unk_4DEA3E.CommitTrans
  loc_16F8A80: var_8A = 0
  loc_16F8A91: Set var_A8 = Me.Txt
  loc_16F8A97: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4)
  loc_16F8A9F: var_8A = var_AC.Text
  loc_16F8ABC: Me.Requery -1
  loc_16F8AE6: Me.Find "SearchCode ='" & "SearchCode ='" & var_B4 & "'", 0, 1
  loc_16F8AF2: Call Proc_41_49_15BD5DC(var_108)
  loc_16F8AFB: Set var_A8 = Me.TopCtrl1
  loc_16F8B01: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_C4)
  loc_16F8B1A: If (CStr() = "Add") Then
  loc_16F8B1D:   Call TopCtrl1_UnknownEvent_A()
  loc_16F8B22:   Exit Sub
  loc_16F8B23: End If
  loc_16F8B46: Call Proc_41_50_FB325C(Proc_5_1_100EC1C("INI", Me))
  loc_16F8B56: Set var_88 = Nothing
  loc_16F8B59: Exit Sub
  loc_16F8B5A: ' Referenced from: 16F72B4
  loc_16F8B60: If (var_8A = &HFF) Then
  loc_16F8B69:   unk_4DEA3E.RollbackTrans
  loc_16F8B6E: End If
  loc_16F8B6E: Proc_6_60_E63754(global_60)
  loc_16F8B73: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'FD92AC
  'Data Table: 4DEA28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FD90DC: On Error Goto loc_FD92A6
  loc_FD90EE: Me.DGBookNo.Visible = False
  loc_FD910D: If (Me.RecordCount > 0) Then
  loc_FD911E:   Set var_A8 = Me.Txt
  loc_FD9124:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B0)
  loc_FD912C:   var_B0.Text = vbNullString
  loc_FD9146:   Set var_A8 = Me.Txt
  loc_FD914C:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B0)
  loc_FD9154:   var_B0.Tag = vbNullString
  loc_FD919C:   Set var_B4 = Me.Txt
  loc_FD91A2:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_FD91AA:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD91FC:   Set var_B4 = Me.Txt
  loc_FD9202:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_FD920A:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD923D:   var_B0 = Me.Fields.Item("Party")
  loc_FD925C:   Set var_B4 = Me.Txt
  loc_FD9262:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_FD926A:   var_B8.Text = CStr(var_B0.Value)
  loc_FD9280: End If
  loc_FD928B: Set var_A8 = Me.Txt
  loc_FD9291: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA))
  loc_FD9299: var_B0.SetFocus
  loc_FD92A5: Exit Sub
  loc_FD92A6: ' Referenced from: FD90DC
  loc_FD92A6: Proc_6_60_E63754(var_B0)
  loc_FD92AB: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E93CC8
  'Data Table: 4DEA28
  Dim Me As Recordset15
  loc_E93C56: On Error Goto loc_E93CBF
  loc_E93C5F: Me.MoveFirst
  loc_E93C89: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93CB1: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E93CB9: Call Proc_41_49_15BD5DC(0)
  loc_E93CBE: Exit Sub
  loc_E93CBF: ' Referenced from: E93C56
  loc_E93CBF: Proc_6_60_E63754(var_A0)
  loc_E93CC4: Exit Sub
End Sub

Public Sub Proc_41_45_F01AFC
  'Data Table: 4DEA28
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_108 As TextBox
  loc_F01A20: On Error Goto loc_F01AF6
  loc_F01A48: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F01A52:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F01A5A:   var_D8 = CVar(CLng(9)) 'Long
  loc_F01A86:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F01A95: Next var_A8 'Integer
  loc_F01AD1: Set var_94 = Me.Txt
  loc_F01AD7: Call 0.Method_Proc_41_45_F01AFC0 (CInt(8), var_108, CStr(Format(var_90, "0.00")))
  loc_F01ADF: var_108.Text = 1
  loc_F01AF5: Exit Sub
  loc_F01AF6: ' Referenced from: F01A20
  loc_F01AF6: Proc_6_60_E63754(1)
  loc_F01AFB: Exit Sub
End Sub

Public Sub Proc_41_46_128B59C
  'Data Table: 4DEA28
  Dim var_90 As Variant
  Dim var_A4 As Long
  Dim var_A8 As Variant
  Dim var_180 As Double
  Dim var_100 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_AC As String
  Dim var_1AC As Double
  Dim var_198 As TextBox
  Dim var_8A As Integer
  Dim var_19C As String
  loc_128AFF3: var_A4 = CLng(Me.FGrid.Col)
  loc_128B003: If (var_A4 = CLng(8)) Then
  loc_128B012:   Set var_90 = Me.TxtGrid
  loc_128B018:   Call 0.Method_Proc_41_46_128B59C0 (0, var_A8)
  loc_128B043:   var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128B05B:   var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_128B096:   LateIdCallSt
  loc_128B0BD:   Call Proc_41_54_F7574C(Me.FGrid, CVar(CStr(Format(CVar(Val(var_A8.Text)), "0.00"))), 1, 1)
  loc_128B0C5: Else
  loc_128B0CC:   If Not (var_A4 = CLng(4)) Then
  loc_128B0D6:     If (var_A4 = CLng(5)) Then
  loc_128B0D9:     End If
  loc_128B0F6:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_128B114:       var_124 = CVar(CLng(&HA)) 'Long
  loc_128B11D:       Set var_A8 = Me.FGrid
  loc_128B123:       var_DC = var_A8.TextMatrix)
  loc_128B139:       var_EC = Me.FGrid.Row
  loc_128B142:       var_144 = CVar(CLng(var_EC)) 'Long
  loc_128B151:       var_100 = Me.FGrid.Col
  loc_128B174:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_128B17C:       var_1AC = Val(var_AC)
  loc_128B18D:       Set var_194 = Me.Txt
  loc_128B193:       Call 0.Method_Proc_41_46_128B59C0 (CInt(9), var_198, var_19C, var_1AC, CVar(CLng(var_100)), var_144, var_DC)
  loc_128B19B:       var_124 = var_198.Tag
  loc_128B1C4:       var_8A = Proc_96_27_11F256C(CStr(var_DC), var_1AC, MemVar_1F95070, var_19C, global_96)
  loc_128B1FE:       Me.LblCurStockStr.Caption = global_96
  loc_128B20C:       If (var_8A = 0) Then
  loc_128B21D:         If (Proc_96_29_E9957C(global_132, var_8A, CVar(CLng(Me.FGrid.Row)), var_144) = 0) Then
  loc_128B225:           Proc_41_46_128B59C = 0
  loc_128B22B:         End If
  loc_128B22B:       End If
  loc_128B22B:     End If
  loc_128B248:     If (CLng(Me.FGrid.Col) = CLng(5)) Then
  loc_128B257:       Set var_90 = Me.TxtGrid
  loc_128B25D:       Call 0.Method_Proc_41_46_128B59C0 (0, var_A8, var_AC)
  loc_128B265:       var_124 = var_A8.Text
  loc_128B272:       var_180 = Val(var_AC)
  loc_128B28A:       If (global_124 <> CDbl(var_180)) Then
  loc_128B2BC:         If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_DC, var_EC, var_100) = 7) Then
  loc_128B2C7:           var_AC = CStr(global_124)
  loc_128B2D3:           Set var_90 = Me.TxtGrid
  loc_128B2D9:           Call 0.Method_Proc_41_46_128B59C0 (0, var_A8, var_AC)
  loc_128B2E1:           var_A8.Text = var_180
  loc_128B2F0:         End If
  loc_128B2F0:       End If
  loc_128B2F0:     End If
  loc_128B2FC:     Set var_90 = Me.TxtGrid
  loc_128B302:     Call 0.Method_Proc_41_46_128B59C0 (0, var_A8, var_AC)
  loc_128B30A:     var_180 = var_A8.Text
  loc_128B32D:     var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128B345:     var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_128B372:     var_164 = CVar(CStr(Format(CVar(Val(var_AC)), "0.000"))) 'String
  loc_128B37A:     Set var_178 = Me.FGrid
  loc_128B380:     LateIdCallSt
  loc_128B3BA:     var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128B3E4:     var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_128B3EB:     Set var_178 = Me.FGrid
  loc_128B42B:     Set var_A8 = Me.FGrid
  loc_128B43C:     var_AC = CStr(var_A8.TextMatrix))
  loc_128B458:     LateIdCallSt
  loc_128B485:     Call Proc_41_54_F7574C(Me.FGrid, CVar(CStr((Val(var_AC) * var_180))), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(6)), CVar(CLng(var_178.Row)), var_180, CVar(CLng(5)))
  loc_128B48D:   Else
  loc_128B494:     If (var_A4 = CLng(3)) Then
  loc_128B4A3:       Set var_90 = Me.TxtGrid
  loc_128B4A9:       Call 0.Method_Proc_41_46_128B59C0 (0, var_A8, var_AC, var_144, var_178)
  loc_128B4B1:       var_164 = var_A8.Text
  loc_128B4D4:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128B4EC:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_128B519:       var_164 = CVar(CStr(Format(CVar(Val(var_AC)), "0.000"))) 'String
  loc_128B521:       Set var_178 = Me.FGrid
  loc_128B527:       LateIdCallSt
  loc_128B54E:     End If
  loc_128B54E:   End If
  loc_128B54E: End If
  loc_128B559: If (arg_10 = 0) Then
  loc_128B560:   Set var_90 = Me.FGrid
  loc_128B57C:   Set var_90 = Me.TxtGrid
  loc_128B582:   Call 0.Method_Proc_41_46_128B59C0 (0, var_A8, 0, FGrid.DispID_8001, &HFF, var_178, var_164)
  loc_128B58A:   var_A8.Visible = True
  loc_128B596: End If
  loc_128B596: Proc_41_46_128B59C = 1
End Sub

Public Sub Proc_41_47_14066B4
  'Data Table: 4DEA28
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_E0 As Variant
  Dim var_9C As Integer
  Dim var_8C As Variant
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_F4 As String
  Dim var_EC As TextBox
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_D0 As Variant
  Dim var_158 As Variant
  Dim unk_4DEA3E As Connection15
  Dim var_98 As Recordset15
  Dim var_16C As Variant
  Dim var_19C As Variant
  Dim var_118 As Variant
  Dim var_94 As String
  Dim var_1BC As Variant
  Dim var_18C As MSHFlexGrid
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  loc_1405CB4: On Error Goto loc_14066AB
  loc_1405CC2: Set var_88 = Me.Txt
  loc_1405CC8: Call 0.Method_Proc_41_47_14066B40 (CInt(3))
  loc_1405CD0: var_94 = "Date"
  loc_1405CF1: If (Proc_6_27_EA61EC(var_8C, var_94) = 0) Then
  loc_1405CF4:   Exit Sub
  loc_1405CF5: End If
  loc_1405D08: Me.FGrid.Rows = 2
  loc_1405D24: var_9C = CInt(CLng(Me.FGrid.Row))
  loc_1405D3B: Set var_88 = Me.Txt
  loc_1405D41: Call 0.Method_Proc_41_47_14066B40 (CInt(&HA), var_8C, var_94)
  loc_1405D49: var_9C = var_8C.Tag
  loc_1405D60: If (var_94 <> vbNullString) Then
  loc_1405D74:   Set var_88 = Me.Txt
  loc_1405D7A:   Call 0.Method_Proc_41_47_14066B40 (CInt(&HA), var_8C, var_94)
  loc_1405D82:   " And Indent.RefDocId='" = var_8C.Tag
  loc_1405D92:   var_B0 = var_8C & var_94 & "' "
  loc_1405DA3: End If
  loc_1405DB1: Set var_88 = Me.Txt
  loc_1405DB7: Call 0.Method_Proc_41_47_14066B40 (CInt(7), var_8C)
  loc_1405DD6: If (var_8C.Tag <> vbNullString) Then
  loc_1405DEA:   Set var_88 = Me.Txt
  loc_1405DF0:   Call 0.Method_Proc_41_47_14066B40 (CInt(7), var_8C)
  loc_1405DF8:   var_94 = var_8C.Tag
  loc_1405E08:   var_B0 = " And Indent.Company='" & var_94 & "' "
  loc_1405E19: End If
  loc_1405E2D: var_E4 = "SELECT Indent1.Sno, Max(ItemMast.Name) as ItemName, Max(Indent1.Item) as ItemCode,  Max(Indent1.Unit) as Unit,  Max(Indent1.WTUnit) as WtUnit, Max(Indent1.DocId) as DocId, MAx(GodownMast.Name) as Department, Indent.Department as DepartCode, Sum(Indent1.Qty) as ReqQty, '' as QtyIss , CASE WHEN MAX(ItemMast.LPurRate)<=0 THEN MAX(ItemMast.PurchRate) ELSE MAX(ItemMast.LPurRate) END as Rate, max(INDENT1.ConvFACTOR) as ConvRatio" & " FROM ((Indent1 LEFT JOIN Indent ON Indent1.DocId = Indent.DocId) LEFT JOIN ItemMast ON Indent1.Item = ItemMast.Code And ItemMast.ItemType='Store') LEFT JOIN GodownMast ON Indent.Department = GodownMast.Code where Indent.Department='"
  loc_1405E3E: Set var_88 = Me.Txt
  loc_1405E44: Call 0.Method_Proc_41_47_14066B40 (CInt(6), var_8C, var_94, var_E4)
  loc_1405E4C: var_17C = var_8C.Tag
  loc_1405E55: var_E8 = -1 & var_94
  loc_1405E5C: var_F4 = var_E8 & "' and Indent.Godown='"
  loc_1405E6D: Set var_90 = Me.Txt
  loc_1405E73: Call 0.Method_Proc_41_47_14066B40 (CInt(9), var_EC, var_F0)
  loc_1405E7B: var_F4 = var_EC.Tag
  loc_1405EA7: Set var_104 = Me.Txt
  loc_1405EAD: Call 0.Method_Proc_41_47_14066B40 (CInt(3), var_108)
  loc_1405EBC: Proc_6_7_F26918(var_118, CVar(var_108))
  loc_1405ECD: var_148 = CVar(var_180 & var_F0 & "'" & var_B0 & " And indent.ClearYn<>'Y' And indent.vdate<=") & var_118 & " and Indent.Vtype in (Select V_Type From Voucher_Type where NCAT='RQS')" 
  loc_1405ED6: var_158 = var_148 & " group by Indent.Department,Indent.Vno,Indent1.Sno" 
  loc_1405EE4: unk_4DEA3E.Execute CStr(var_158), , 
  loc_1405EEF: Set var_98 = var_180
  loc_1405F3B: If (var_98.RecordCount > 0) Then
  loc_1405F3E:   ' Referenced from: 1406607
  loc_1405F4D:   If Not(var_98.EOF) Then
  loc_1405F50:     var_C0 = vbNullString
  loc_1405F5A:     Set var_88 = Me.FGrid
  loc_1405F6F:     Set var_18C = Me.FGrid
  loc_1405F76:     var_C0 = CVar(CLng(var_9C)) 'Long
  loc_1405F7E:     var_16C = CVar(CLng(0)) 'Long
  loc_1405F88:     var_E0 = CVar(CStr(var_9C)) 'String
  loc_1405F8F:     LateIdCallSt
  loc_1405F9E:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1405FA6:     var_19C = CVar(CLng(&HA)) 'Long
  loc_1405FD6:     var_118 = CVar(CStr(var_98.Fields.Item("ItemCode").Value)) 'String
  loc_1405FDD:     LateIdCallSt
  loc_1405FF7:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1405FFF:     var_19C = CVar(CLng(1)) 'Long
  loc_140602F:     var_118 = CVar(CStr(var_98.Fields.Item("ItemName").Value)) 'String
  loc_1406036:     LateIdCallSt
  loc_1406085:     var_118 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_9C)), var_18C, var_118, CVar(CLng(2)), CVar(CLng(var_9C)))) 'String
  loc_140608C:     LateIdCallSt
  loc_14060E3:     If (CDbl(Val(CStr(var_98.Fields.Item("ConvRatio").Value))) <> CDbl(0)) Then
  loc_1406120:       var_19C = CVar(CLng(var_9C)) 'Long
  loc_1406128:       var_1BC = CVar(CLng(8)) 'Long
  loc_140614C:       var_138 = Format(CVar(Val(CStr(var_98.Fields.Item("Rate").Value))), "0.00")
  loc_1406155:       var_148 = CVar(CStr(var_138)) 'String
  loc_140615C:       LateIdCallSt
  loc_140617F:       var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1406187:       var_19C = CVar(CLng(5)) 'Long
  loc_14061C1:       var_118 = CVar(CStr(Val(CStr(var_98.Fields.Item("ConvRatio").Value)))) 'String
  loc_14061C8:       LateIdCallSt
  loc_14061E4:     Else
  loc_140622E:       MsgBox("Conversion Ration of " & var_98.Fields.Item("ItemName").Value & " is not Feeded In Item Master", &H10, var_138, var_148, var_158)
  loc_1406249:       Call TopCtrl1_UnknownEvent_B()
  loc_140624E:       Exit Sub
  loc_140624F:     End If
  loc_1406289:     var_19C = CVar(CLng(var_9C)) 'Long
  loc_1406291:     var_1BC = CVar(CLng(3)) 'Long
  loc_14062BE:     var_148 = CVar(CStr(Format(CVar(Val(CStr(var_98.Fields.Item("ReqQty").Value))), "0.000"))) 'String
  loc_14062C5:     LateIdCallSt
  loc_140631E:     var_19C = CVar(CLng(var_9C)) 'Long
  loc_1406326:     var_1BC = CVar(CLng(4)) 'Long
  loc_1406353:     var_148 = CVar(CStr(Format(CVar(Val(CStr(var_98.Fields.Item("ReqQty").Value))), "0.000"))) 'String
  loc_140635A:     LateIdCallSt
  loc_140637D:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1406385:     var_19C = CVar(CLng(7)) 'Long
  loc_14063B5:     var_118 = CVar(CStr(var_98.Fields.Item("WtUnit").Value)) 'String
  loc_14063BC:     LateIdCallSt
  loc_14063D6:     var_C0 = CVar(CLng(var_9C)) 'Long
  loc_14063DE:     var_16C = CVar(CLng(4)) 'Long
  loc_1406400:     var_1AC = CVar(CLng(var_9C)) 'Long
  loc_1406408:     var_1CC = CVar(CLng(5)) 'Long
  loc_140642A:     var_214 = CVar(CLng(var_9C)) 'Long
  loc_1406432:     var_234 = CVar(CLng(6)) 'Long
  loc_1406463:     var_158 = CVar(CStr(Format(CVar((Val(CStr(var_18C.TextMatrix))) * Val(CStr(var_18C.TextMatrix))))), "0.000"))) 'String
  loc_140646A:     LateIdCallSt
  loc_140648C:     var_C0 = CVar(CLng(var_9C)) 'Long
  loc_1406494:     var_16C = CVar(CLng(8)) 'Long
  loc_14064B6:     var_1AC = CVar(CLng(var_9C)) 'Long
  loc_14064BE:     var_1CC = CVar(CLng(4)) 'Long
  loc_14064E0:     var_214 = CVar(CLng(var_9C)) 'Long
  loc_14064E8:     var_234 = CVar(CLng(9)) 'Long
  loc_1406519:     var_158 = CVar(CStr(Format(CVar((Val(CStr(var_18C.TextMatrix))) * Val(CStr(var_18C.TextMatrix))))), "0.00"))) 'String
  loc_1406520:     LateIdCallSt
  loc_1406542:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_140654A:     var_19C = CVar(CLng(&HB)) 'Long
  loc_140657A:     var_118 = CVar(CStr(var_98.Fields.Item("DocID").Value)) 'String
  loc_1406581:     LateIdCallSt
  loc_140659B:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_14065A3:     var_19C = CVar(CLng(&HC)) 'Long
  loc_14065D3:     var_118 = CVar(CStr(var_98.Fields.Item("SNo").Value)) 'String
  loc_14065DA:     LateIdCallSt
  loc_14065F2:     Set var_18C = Nothing 
  loc_14065FC:     var_9C = (var_9C + 1)
  loc_1406602:     var_98.MoveNext
  loc_1406607:     GoTo loc_1405F3E
  loc_140660A:   End If
  loc_140661D:   Me.FGrid.FixedRows = 1
  loc_1406625: End If
  loc_140662B: If (var_9C = 1) Then
  loc_1406641:   Me.FGrid.Rows = 1
  loc_140665E:   var_118 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1406666:   Set var_8C = Me.FGrid
  loc_1406695:   Me.FGrid.FixedRows = 1
  loc_140669D: End If
  loc_140669D: Call Proc_41_51_EF96F8(FGrid.DispID_10000, var_118, var_9C, var_18C, var_118, var_19C, var_D0)
  loc_14066A7: Set var_98 = Nothing
  loc_14066AA: Exit Sub
  loc_14066AB: ' Referenced from: 1405CB4
  loc_14066AB: Proc_6_60_E63754(var_18C, var_118, var_19C)
  loc_14066B0: Exit Sub
End Sub

Public Sub Proc_41_48_F57150
  'Data Table: 4DEA28
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_C8 As Variant
  loc_F57036: Set var_8C = Me.Txt
  loc_F5703C: Call 0.Method_Proc_41_48_F57150C (var_8E, var_86)
  loc_F5704C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F57062:   Set var_8C = Me.Txt
  loc_F57068:   Call 0.Method_Proc_41_48_F571500 (CInt(var_86), var_98)
  loc_F57070:   var_98.Text = vbNullString
  loc_F5708C:   Set var_8C = Me.Txt
  loc_F57092:   Call 0.Method_Proc_41_48_F571500 (CInt(var_86), var_98)
  loc_F5709A:   var_98.Tag = vbNullString
  loc_F570A9: Next var_92 'Byte
  loc_F570BC: Me.LblVPrefix.Caption = vbNullString
  loc_F570D1: Me.LblCurStockStr.Caption = vbNullString
  loc_F570EC: Me.FGrid.Rows = 1
  loc_F57112: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F5711A: Set var_98 = Me.FGrid
  loc_F57147: Me.FGrid.FixedRows = 1
  loc_F5714F: Exit Sub
End Sub

Public Sub Proc_41_49_15BD5DC
  'Data Table: 4DEA28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_114 As String
  Dim unk_4DEA3E As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_13C As TextBox
  Dim var_138 As Variant
  Dim var_14A As Integer
  Dim var_148 As TextBox
  Dim var_90 As Recordset15
  Dim var_140 As String
  Dim var_8C As Recordset15
  Dim var_9A As Integer
  Dim var_134 As Variant
  Dim var_174 As Variant
  Dim var_144 As Fields15
  Dim var_164 As Variant
  Dim var_200 As MSHFlexGrid
  Dim var_208 As Double
  Dim var_A4 As Double
  loc_15BC32C: On Error Goto loc_15BD5D6
  loc_15BC33C: Me.LblCurStockStr.Caption = vbNullString
  loc_15BC35B: If (Me.RecordCount > 0) Then
  loc_15BC36B:   var_E0 = "Select Distinct SH.Docid,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Vtime,SH.Remarks,SH.GodownCode,D.NAME AS DEPARTNAME ,VT.Description,VT.NCAT,SH.Company,Sub.Name as Compname,SH.RefDocId From (Stock SH left Join GodownMast D on D.Code=SH.GodownCode) left join Voucher_Type VT on Vt.V_type=SH.VType left join Subgroup Sub on SH.Company=Sub.Subcode where DocID='"
  loc_15BC3B4:   unk_4DEA3E.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_15BC3BF:   Set var_88 = var_138
  loc_15BC40A:   global_84 = CStr(var_88.Fields.Item("NCat").Value)
  loc_15BC451:   Set var_138 = Me.Txt
  loc_15BC457:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(0), var_13C)
  loc_15BC45F:   var_13C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")))
  loc_15BC4A8:   Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")))
  loc_15BC4F0:   Set var_138 = Me.Txt
  loc_15BC4F6:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(1), var_13C)
  loc_15BC4FE:   var_13C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("vType")))
  loc_15BC548:   Set var_138 = Me.Txt
  loc_15BC54E:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(1), var_13C)
  loc_15BC556:   var_13C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")))
  loc_15BC5A0:   Set var_138 = Me.Txt
  loc_15BC5A6:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(2), var_13C)
  loc_15BC5AE:   var_13C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("VNo")))
  loc_15BC5F8:   Set var_138 = Me.Txt
  loc_15BC5FE:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(3), var_13C)
  loc_15BC606:   var_13C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")))
  loc_15BC67A:   Set var_138 = Me.Txt
  loc_15BC680:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(4), var_13C, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VTIME")))), "hh:nn")))
  loc_15BC688:   var_13C.Text = 1
  loc_15BC6DE:   Set var_138 = Me.Txt
  loc_15BC6E4:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(5), var_13C)
  loc_15BC6EC:   var_13C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), 1)
  loc_15BC728:   var_14A = IsNull(CVar(var_88.Fields.Item("DEPARTNAME")))
  loc_15BC742:   var_13C = var_88.Fields.Item("DEPARTNAME")
  loc_15BC763:   var_134 = IIf(var_14A, vbNullString, CVar(var_13C))
  loc_15BC77A:   Set var_144 = Me.Txt
  loc_15BC780:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(6), var_148, CStr(var_134))
  loc_15BC788:   var_148.Text = var_14A
  loc_15BC7DE:   Set var_138 = Me.Txt
  loc_15BC7E4:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(6), var_13C)
  loc_15BC7EC:   var_13C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("Godowncode")))
  loc_15BC836:   Set var_138 = Me.Txt
  loc_15BC83C:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(7), var_13C)
  loc_15BC844:   var_13C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CompName")))
  loc_15BC88E:   Set var_138 = Me.Txt
  loc_15BC894:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(7), var_13C)
  loc_15BC89C:   var_13C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("Company")))
  loc_15BC906:   unk_4DEA3E.Execute CStr("Select GodownCode From Stock Where ContraDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_15BC911:   Set var_90 = var_138
  loc_15BC93F:   If (var_90.RecordCount > 0) Then
  loc_15BC959:     var_C0 = var_90.Fields.Item("Godowncode")
  loc_15BC96A:     var_114 = Proc_6_38_E69628(CVar(var_C0), var_138)
  loc_15BC978:     Set var_138 = Me.Txt
  loc_15BC97E:     Call 0.Method_Proc_41_49_15BD5DC0 (CInt(9), var_13C)
  loc_15BC986:     var_13C.Tag = var_114
  loc_15BC9B8:     Set var_A8 = Me.Txt
  loc_15BC9BE:     Call 0.Method_Proc_41_49_15BD5DC0 (CInt(9), var_C0, var_114, "Select Name From GodownMast Where Code='")
  loc_15BC9C6:     var_D0 = var_C0.Tag
  loc_15BC9CF:     var_140 = -1 & var_114
  loc_15BC9DF:     unk_4DEA3E.Execute Proc_6_38_E69628(CVar(var_88.Fields.Item("VTIME"))) & "'", var_138, var_138
  loc_15BC9EA:     Set var_8C = var_138
  loc_15BCA16:     If (var_8C.RecordCount > 0) Then
  loc_15BCA4F:       Set var_138 = Me.Txt
  loc_15BCA55:       Call 0.Method_Proc_41_49_15BD5DC0 (CInt(9), var_13C)
  loc_15BCA5D:       var_13C.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")))
  loc_15BCA71:     End If
  loc_15BCA71:   End If
  loc_15BCAAD:   var_F0 = "Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook Where Docid='" & var_88.Fields.Item("RefDocId").Value 
  loc_15BCAC4:   unk_4DEA3E.Execute CStr(var_F0 & "'"), var_134, -1
  loc_15BCACF:   Set var_90 = var_138
  loc_15BCAFD:   If (var_90.RecordCount > 0) Then
  loc_15BCB36:     Set var_138 = Me.Txt
  loc_15BCB3C:     Call 0.Method_Proc_41_49_15BD5DC0 (CInt(&HA), var_13C)
  loc_15BCB44:     var_13C.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")))
  loc_15BCB8E:     Set var_138 = Me.Txt
  loc_15BCB94:     Call 0.Method_Proc_41_49_15BD5DC0 (CInt(&HA), var_13C)
  loc_15BCB9C:     var_13C.Tag = Proc_6_38_E69628(CVar(var_90.Fields.Item("Code")))
  loc_15BCBC7:     var_C0 = var_90.Fields.Item("Party")
  loc_15BCBE6:     Set var_138 = Me.Txt
  loc_15BCBEC:     Call 0.Method_Proc_41_49_15BD5DC0 (CInt(&HB), var_13C)
  loc_15BCBF4:     var_13C.Text = Proc_6_38_E69628(CVar(var_C0))
  loc_15BCC08:   End If
  loc_15BCC16:   Set var_A8 = Me.Txt
  loc_15BCC1C:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(6), var_C0)
  loc_15BCC3E:   If (var_C0.Tag = global_148) Then
  loc_15BCC4D:     Me.FrBanq.Visible = True
  loc_15BCC58:   Else
  loc_15BCC64:     Me.FrBanq.Visible = False
  loc_15BCC6C:   End If
  loc_15BCC7F:   Me.FGrid.Rows = 1
  loc_15BCC89:   var_9A = 1
  loc_15BCCA0:   var_114 = "Select SH.*,D.NAME AS DEPARTNAME ,VT.Description,VT.NCAT,ItemMast.Name As ItemName,I1.Qty as QtyReq From (((Stock SH left Join GodownMast D on D.Code=SH.GodownCode) Left Join ItemMast on ItemMast.COde=Sh.Item And ItemMast.ItemType='Store') Left Join Indent1 I1 on (I1.DocId=SH.ContraDocId And I1.Sno=Sh.ContraSno)) left join Voucher_Type VT on Vt.V_type=SH.VType where VT.site_Code='" & MemVar_1F95070
  loc_15BCCEE:   var_134 = CVar(var_114 & "' and VT.LogSite_Code='" & MemVar_1F95078 & "' and Sh.DocID='") & Me.Fields.Item("SearchCode").Value & "' Order by SH.Sno" 
  loc_15BCCFC:   unk_4DEA3E.Execute CStr(var_134), var_164, -1
  loc_15BCD07:   Set var_88 = var_138
  loc_15BCD65:   var_138 = var_88.Fields
  loc_15BCDCE:   var_1B4 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_138) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_138.Item("U_AE")), var_9A) = "E"), "Modified By : ", "User : "))
  loc_15BCE13:   Me.LblUser.Caption = CStr(var_138 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_1B4)))
  loc_15BCEEE:   var_1B4 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_15BCF33:   Me.LblLDt.Caption = CStr(var_1B4 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_15BCF7F:   If (var_88.RecordCount > 0) Then
  loc_15BCF82:     ' Referenced from: 15BD53F
  loc_15BCF91:     If Not(var_88.EOF) Then
  loc_15BCF94:       var_BC = vbNullString
  loc_15BCF9E:       Set var_A8 = Me.FGrid
  loc_15BCFB3:       Set var_200 = Me.FGrid
  loc_15BCFEF:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_9A)))) 'String
  loc_15BCFF6:       LateIdCallSt
  loc_15BD041:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_9A)), var_200)) 'String
  loc_15BD048:       LateIdCallSt
  loc_15BD093:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(7)), CVar(CLng(var_9A)), var_200)) 'String
  loc_15BD09A:       LateIdCallSt
  loc_15BD0E5:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_9A)), var_200, var_F0)) 'String
  loc_15BD0EC:       LateIdCallSt
  loc_15BD124:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("QtyReq")), var_200, var_F0)
  loc_15BD12D:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BD135:       var_174 = CVar(CLng(3)) 'Long
  loc_15BD165:       LateIdCallSt
  loc_15BD1A3:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("QtyRec")), var_200, CVar(CStr(Format(var_F0, "0.000"))), 1, 1)
  loc_15BD1AC:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BD1E4:       LateIdCallSt
  loc_15BD222:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RecdQty")), var_200, CVar(CStr(Format(var_F0, "0.000"))), 1, 1, CVar(CLng(6)))
  loc_15BD22B:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BD263:       LateIdCallSt
  loc_15BD2A1:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("ConvRatio")), var_200, CVar(CStr(Format(var_F0, "0.000"))), 1, 1, CVar(CLng(4)))
  loc_15BD2AA:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BD2E2:       LateIdCallSt
  loc_15BD320:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("Rate")), var_200, CVar(CStr(Format(var_F0, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_15BD329:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BD361:       LateIdCallSt
  loc_15BD39F:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("Amount")), var_200, CVar(CStr(Format(var_F0, "0.00"))), 1, 1, CVar(CLng(8)))
  loc_15BD3A8:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BD3B0:       var_174 = CVar(CLng(9)) 'Long
  loc_15BD3D9:       var_164 = CVar(CStr(Format(var_F0, "0.00"))) 'String
  loc_15BD3E0:       LateIdCallSt
  loc_15BD3FC:       var_BC = CVar(CLng(var_9A)) 'Long
  loc_15BD404:       var_100 = CVar(CLng(9)) 'Long
  loc_15BD41F:       var_208 = Val(CStr(var_200.TextMatrix)))
  loc_15BD429:       var_A4 = (var_A4 + var_208)
  loc_15BD446:       var_BC = "Item"
  loc_15BD46B:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_BC)), CVar(CLng(&HA)), CVar(CLng(var_9A)), var_A4, var_208, var_100, var_BC)) 'String
  loc_15BD472:       LateIdCallSt
  loc_15BD4BD:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(&HB)), CVar(CLng(var_9A)), var_200, var_F0, var_200)) 'String
  loc_15BD4C4:       LateIdCallSt
  loc_15BD4FE:       var_C0 = var_88.Fields.Item("ContraSNo")
  loc_15BD50F:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_C0), CVar(CLng(&HC)), CVar(CLng(var_9A)), var_200, var_F0)) 'String
  loc_15BD516:       LateIdCallSt
  loc_15BD52A:       Set var_200 = Nothing 
  loc_15BD534:       var_9A = (var_9A + 1)
  loc_15BD53A:       var_88.MoveNext
  loc_15BD53F:       GoTo loc_15BCF82
  loc_15BD542:     End If
  loc_15BD555:     Me.FGrid.FixedRows = 1
  loc_15BD55D:   End If
  loc_15BD57D:   var_F0 = Format(var_A4, "0.00")
  loc_15BD594:   Set var_A8 = Me.Txt
  loc_15BD59A:   Call 0.Method_Proc_41_49_15BD5DC0 (CInt(8), var_C0, CStr(var_F0), 1, 1, var_9A, var_200)
  loc_15BD5A2:   var_C0.Text = var_F0
  loc_15BD5BB: Else
  loc_15BD5BB:   Call Proc_41_48_F57150(var_164, 1, 1)
  loc_15BD5C0: End If
  loc_15BD5C0: Call Proc_41_51_EF96F8(var_174)
  loc_15BD5CA: Set var_8C = Nothing
  loc_15BD5D2: Set var_90 = Nothing
  loc_15BD5D5: Exit Sub
  loc_15BD5D6: ' Referenced from: 15BC32C
  loc_15BD5D6: Proc_6_60_E63754(var_100)
  loc_15BD5DB: Exit Sub
End Sub

Public Sub Proc_41_50_FB325C(arg_C) 'FB325C
  'Data Table: 4DEA28
  Dim var_98 As TextBox
  loc_FB30C6: Set var_8C = Me.Txt
  loc_FB30CC: Call 0.Method_Proc_41_50_FB325CC (var_8E, var_86)
  loc_FB30DC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FB30F2:   Set var_8C = Me.Txt
  loc_FB30F8:   Call 0.Method_Proc_41_50_FB325C0 (CInt(var_86), var_98)
  loc_FB3100:   var_98.Enabled = arg_C
  loc_FB310F: Next var_92 'Byte
  loc_FB3122: Set var_8C = Me.Txt
  loc_FB3128: Call 0.Method_Proc_41_50_FB325C0 (CInt(2), var_98)
  loc_FB3130: var_98.Enabled = False
  loc_FB3147: If (global_120 = "No") Then
  loc_FB3157:   Set var_8C = Me.Txt
  loc_FB315D:   Call 0.Method_Proc_41_50_FB325C0 (CInt(3), var_98)
  loc_FB3165:   var_98.Enabled = False
  loc_FB3171: End If
  loc_FB317E: Set var_8C = Me.Txt
  loc_FB3184: Call 0.Method_Proc_41_50_FB325C0 (CInt(4), var_98)
  loc_FB318C: var_98.Enabled = False
  loc_FB31A5: Set var_8C = Me.Txt
  loc_FB31AB: Call 0.Method_Proc_41_50_FB325C0 (CInt(8), var_98)
  loc_FB31B3: var_98.Enabled = False
  loc_FB31CC: Set var_8C = Me.Txt
  loc_FB31D2: Call 0.Method_Proc_41_50_FB325C0 (CInt(&HB), var_98)
  loc_FB31DA: var_98.Enabled = False
  loc_FB31EA: Set var_8C = Me.TopCtrl1
  loc_FB31F0: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FB3209: If (CStr() = "Edit") Then
  loc_FB3219:   Set var_8C = Me.Txt
  loc_FB321F:   Call 0.Method_Proc_41_50_FB325C0 (CInt(6), var_98)
  loc_FB3227:   var_98.Enabled = False
  loc_FB3240:   Set var_8C = Me.Txt
  loc_FB3246:   Call 0.Method_Proc_41_50_FB325C0 (CInt(9), var_98)
  loc_FB324E:   var_98.Enabled = False
  loc_FB325A: End If
  loc_FB325A: Exit Sub
End Sub

Public Sub Proc_41_51_EF96F8
  'Data Table: 4DEA28
  loc_EF9638: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EF964A:   Me.DGDepart.Visible = False
  loc_EF9652: End If
  loc_EF966E: If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_EF9680:   Me.DGGodown.Visible = False
  loc_EF9688: End If
  loc_EF96A4: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EF96B6:   Me.DGCompany.Visible = False
  loc_EF96BE: End If
  loc_EF96DA: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_EF96EC:   Me.DGBookNo.Visible = False
  loc_EF96F4: End If
  loc_EF96F4: Exit Sub
End Sub

Public Sub Proc_41_52_126C104(arg_C) '126C104
  'Data Table: 4DEA28
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_98 As Variant
  Dim var_D0 As Variant
  Dim var_94 As Long
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_190 As TextBox
  loc_126BBB4: Set var_98 = Me.Txt
  loc_126BBBA: Call 0.Method_Proc_41_52_126C1040 (CInt(1), var_9C)
  loc_126BBE1: var_90 = var_9C.Tag
  loc_126BBE8: Set var_8C = New 
  loc_126BBF3: Me.Recordset15.CursorLocation = 3
  loc_126BBFE: If (arg_C = &HFF) Then
  loc_126BC0C:   Set var_98 = Me.Txt
  loc_126BC12:   Call 0.Method_Proc_41_52_126C1040 (CInt(3))
  loc_126BC21:   Proc_6_7_F26918(var_D0, CVar(var_9C))
  loc_126BC44:   var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_126BC6D:   var_F0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") & var_D0 
  loc_126BC7E:   var_8C.Open var_F0 & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_126BCA3: Else
  loc_126BCAE:   Set var_98 = Me.Txt
  loc_126BCB4:   Call 0.Method_Proc_41_52_126C1040 (CInt(3), var_9C, 3)
  loc_126BCC3:   Proc_6_7_F26918(var_D0, CVar(var_9C))
  loc_126BCE6:   var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_126BD0F:   var_F0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") & var_D0 
  loc_126BD20:   var_8C.Open var_F0 & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_126BD42: End If
  loc_126BD56: If (var_8C.RecordCount > 0) Then
  loc_126BD95:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_126BD98:     GoTo loc_126BE66
  loc_126BD9B:   End If
  loc_126BDC6:   var_A0 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_126BDCC:   global_100 = var_A0
  loc_126BDE3:   If (arg_C = &HFF) Then
  loc_126BE00:     var_9C = var_8C.Fields.Item("start_srl_no")
  loc_126BE15:     var_D0 = (var_9C.Value + 1)
  loc_126BE1B:     var_94 = CLng(var_D0)
  loc_126BE2F:   Else
  loc_126BE3D:     Set var_98 = Me.Txt
  loc_126BE43:     Call 0.Method_Proc_41_52_126C1040 (CInt(2), var_9C, var_A0, var_94)
  loc_126BE4B:     3 = var_9C.Text
  loc_126BE59:     var_94 = CLng(Val(var_A0))
  loc_126BE66:   End If
  loc_126BE66:   ' Referenced from: 126BD98
  loc_126BE66: End If
  loc_126BE6C: If (arg_C = &HFF) Then
  loc_126BE83:   var_D0 = CVar(-1 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C, var_94)) 'String
  loc_126BE93:   var_C0 = Space((5 - Len(var_90)))
  loc_126BE9B:   var_E0 = (var_D0 + var_9C.Value)
  loc_126BEA5:   var_F0 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C, var_94) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(var_90))
  loc_126BEB9:   var_110 = Space((5 - Len(global_100)))
  loc_126BEC1:   var_138 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_126BECE:   var_148 = (var_138 + CVar(global_100))
  loc_126BEDC:   var_A4 = CStr(var_94)
  loc_126BEE4:   var_158 = Space((8 - Len(var_A4)))
  loc_126BEEC:   var_168 = (var_148 + var_158)
  loc_126BEF8:   var_188 = (var_168 + CVar(CStr(var_94)))
  loc_126BF03:   global_92 = CStr(var_188)
  loc_126BF39:   Me.LblVPrefix.Caption = global_100
  loc_126BF52:   Set var_98 = Me.Txt
  loc_126BF58:   Call 0.Method_Proc_41_52_126C1040 (CInt(0), var_9C, global_92)
  loc_126BF60:   var_9C.Text = -1
  loc_126BF7F:   Set var_98 = Me.Txt
  loc_126BF85:   Call 0.Method_Proc_41_52_126C1040 (CInt(2), var_9C)
  loc_126BF8D:   var_9C.Text = CStr(var_94)
  loc_126BFA2:   var_88 = global_92
  loc_126BFA8: Else
  loc_126BFCC:   var_C0 = Space((5 - Len(var_90)))
  loc_126BFD4:   var_E0 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2)) + var_9C.Value)
  loc_126BFDE:   var_F0 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(var_90))
  loc_126BFF2:   var_110 = Space((5 - Len(global_100)))
  loc_126BFFA:   var_138 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_126C007:   var_148 = (var_138 + CVar(global_100))
  loc_126C01E:   Set var_98 = Me.Txt
  loc_126C024:   Call 0.Method_Proc_41_52_126C1040 (CInt(2), var_9C, var_A4)
  loc_126C02C:   8 = var_9C.Text
  loc_126C039:   var_158 = Space((var_148 - Len(var_A4)))
  loc_126C041:   var_168 = (var_9C + var_158)
  loc_126C053:   Set var_18C = Me.Txt
  loc_126C059:   Call 0.Method_Proc_41_52_126C1040 (CInt(2), var_190)
  loc_126C06C:   var_188 = (var_168 + CVar(var_190.Text))
  loc_126C077:   global_92 = CStr(var_188)
  loc_126C0B8:   Me.LblVPrefix.Caption = global_100
  loc_126C0D1:   Set var_98 = Me.Txt
  loc_126C0D7:   Call 0.Method_Proc_41_52_126C1040 (CInt(0), var_9C)
  loc_126C0DF:   var_9C.Text = global_92
  loc_126C0F1:   var_88 = global_92
  loc_126C0F4: End If
  loc_126C0F9: Set var_8C = Nothing
  loc_126C0FC: Proc_41_52_126C104 = 
End Sub

Public Sub Proc_41_53_121D134
  'Data Table: 4DEA28
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_121CC4B: Me.FGrid.Width = CVar(CDbl(10230))
  loc_121CC66: Me.FGrid.Left = CVar(CDbl(550))
  loc_121CC81: Me.FGrid.Top = CVar(CDbl(2265))
  loc_121CC8D: Set var_AC = Me.FGrid
  loc_121CCA4: global_136 = CStr(CLng(var_AC.BackColor))
  loc_121CCBA: var_AC.Cols = &HD
  loc_121CCC2: var_94 = CVar(CLng(0)) 'Long
  loc_121CCC7: var_D0 = &H190
  loc_121CCD3: LateIdCallSt
  loc_121CCDB: var_94 = 0
  loc_121CCE7: var_D0 = CVar(CLng(1)) 'Long
  loc_121CCEC: var_F0 = "Item Name"
  loc_121CCF5: LateIdCallSt
  loc_121CD00: var_94 = CVar(CLng(1)) 'Long
  loc_121CD0B: var_D0 = CVar(CInt(1)) 'Integer
  loc_121CD12: LateIdCallSt
  loc_121CD1D: var_94 = CVar(CLng(1)) 'Long
  loc_121CD22: var_D0 = &HC80
  loc_121CD2E: LateIdCallSt
  loc_121CD36: var_94 = 0
  loc_121CD42: var_D0 = CVar(CLng(2)) 'Long
  loc_121CD47: var_F0 = "Unit"
  loc_121CD50: LateIdCallSt
  loc_121CD5B: var_94 = CVar(CLng(2)) 'Long
  loc_121CD66: var_D0 = CVar(CInt(1)) 'Integer
  loc_121CD6D: LateIdCallSt
  loc_121CD78: var_94 = CVar(CLng(2)) 'Long
  loc_121CD7D: var_D0 = &H384
  loc_121CD89: LateIdCallSt
  loc_121CD91: var_94 = 0
  loc_121CD9D: var_D0 = CVar(CLng(3)) 'Long
  loc_121CDA2: var_F0 = "Req. Qty"
  loc_121CDAB: LateIdCallSt
  loc_121CDB6: var_94 = CVar(CLng(3)) 'Long
  loc_121CDC1: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CDC8: LateIdCallSt
  loc_121CDD3: var_94 = CVar(CLng(3)) 'Long
  loc_121CDDE: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CDE5: LateIdCallSt
  loc_121CDF0: var_94 = CVar(CLng(3)) 'Long
  loc_121CDF5: var_D0 = &H384
  loc_121CE01: LateIdCallSt
  loc_121CE09: var_94 = 0
  loc_121CE15: var_D0 = CVar(CLng(4)) 'Long
  loc_121CE1A: var_F0 = "Iss. Qty"
  loc_121CE23: LateIdCallSt
  loc_121CE2E: var_94 = CVar(CLng(4)) 'Long
  loc_121CE39: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CE40: LateIdCallSt
  loc_121CE4B: var_94 = CVar(CLng(4)) 'Long
  loc_121CE56: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CE5D: LateIdCallSt
  loc_121CE68: var_94 = CVar(CLng(4)) 'Long
  loc_121CE6D: var_D0 = &H384
  loc_121CE79: LateIdCallSt
  loc_121CE81: var_94 = 0
  loc_121CE8D: var_D0 = CVar(CLng(5)) 'Long
  loc_121CE92: var_F0 = "Conv Ratio"
  loc_121CE9B: LateIdCallSt
  loc_121CEA6: var_94 = CVar(CLng(5)) 'Long
  loc_121CEB1: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CEB8: LateIdCallSt
  loc_121CEC3: var_94 = CVar(CLng(5)) 'Long
  loc_121CECE: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CED5: LateIdCallSt
  loc_121CEE0: var_94 = CVar(CLng(5)) 'Long
  loc_121CEE5: var_D0 = 0
  loc_121CEF1: LateIdCallSt
  loc_121CEF9: var_94 = 0
  loc_121CF05: var_D0 = CVar(CLng(6)) 'Long
  loc_121CF0A: var_F0 = "Wt. Qty"
  loc_121CF13: LateIdCallSt
  loc_121CF1E: var_94 = CVar(CLng(6)) 'Long
  loc_121CF29: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CF30: LateIdCallSt
  loc_121CF3B: var_94 = CVar(CLng(6)) 'Long
  loc_121CF46: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CF4D: LateIdCallSt
  loc_121CF58: var_94 = CVar(CLng(6)) 'Long
  loc_121CF5D: var_D0 = &H384
  loc_121CF69: LateIdCallSt
  loc_121CF71: var_94 = 0
  loc_121CF7D: var_D0 = CVar(CLng(7)) 'Long
  loc_121CF82: var_F0 = "Wt. Unit"
  loc_121CF8B: LateIdCallSt
  loc_121CF96: var_94 = CVar(CLng(7)) 'Long
  loc_121CFA1: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CFA8: LateIdCallSt
  loc_121CFB3: var_94 = CVar(CLng(7)) 'Long
  loc_121CFBE: var_D0 = CVar(CInt(7)) 'Integer
  loc_121CFC5: LateIdCallSt
  loc_121CFD0: var_94 = CVar(CLng(7)) 'Long
  loc_121CFD5: var_D0 = &H384
  loc_121CFE1: LateIdCallSt
  loc_121CFE9: var_94 = 0
  loc_121CFF5: var_D0 = CVar(CLng(8)) 'Long
  loc_121CFFA: var_F0 = "Rate"
  loc_121D003: LateIdCallSt
  loc_121D00E: var_94 = CVar(CLng(8)) 'Long
  loc_121D019: var_D0 = CVar(CInt(7)) 'Integer
  loc_121D020: LateIdCallSt
  loc_121D02B: var_94 = CVar(CLng(8)) 'Long
  loc_121D036: var_D0 = CVar(CInt(7)) 'Integer
  loc_121D03D: LateIdCallSt
  loc_121D048: var_94 = CVar(CLng(8)) 'Long
  loc_121D04D: var_D0 = &H3E8
  loc_121D059: LateIdCallSt
  loc_121D061: var_94 = 0
  loc_121D06D: var_D0 = CVar(CLng(9)) 'Long
  loc_121D072: var_F0 = "Amount"
  loc_121D07B: LateIdCallSt
  loc_121D086: var_94 = CVar(CLng(9)) 'Long
  loc_121D091: var_D0 = CVar(CInt(7)) 'Integer
  loc_121D098: LateIdCallSt
  loc_121D0A3: var_94 = CVar(CLng(9)) 'Long
  loc_121D0AE: var_D0 = CVar(CInt(7)) 'Integer
  loc_121D0B5: LateIdCallSt
  loc_121D0C0: var_94 = CVar(CLng(9)) 'Long
  loc_121D0C5: var_D0 = &H44C
  loc_121D0D1: LateIdCallSt
  loc_121D0DC: var_94 = CVar(CLng(&HA)) 'Long
  loc_121D0E1: var_D0 = 0
  loc_121D0ED: LateIdCallSt
  loc_121D0F8: var_94 = CVar(CLng(&HB)) 'Long
  loc_121D0FD: var_D0 = 0
  loc_121D109: LateIdCallSt
  loc_121D114: var_94 = CVar(CLng(&HC)) 'Long
  loc_121D119: var_D0 = 0
  loc_121D125: LateIdCallSt
  loc_121D12F: Set var_AC = Nothing 
  loc_121D133: Exit Sub
End Sub

Public Sub Proc_41_54_F7574C
  'Data Table: 4DEA28
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  loc_F7564B: var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F75653: var_D4 = CVar(CLng(8)) 'Long
  loc_F7568B: var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F75693: var_140 = CVar(CLng(4)) 'Long
  loc_F75712: LateIdCallSt
  loc_F75745: Call Proc_41_45_F01AFC(Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))), 1, 1, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)))
  loc_F7574A: Exit Sub
End Sub

Public Sub Proc_41_55_ED6130
  'Data Table: 4DEA28
  loc_ED6090: Call Proc_41_51_EF96F8()
  loc_ED60A0: Set var_88 = Me.Txt
  loc_ED60A6: Call 0.Method_Proc_41_55_ED61300 (CInt(3))
  loc_ED60CF: If (Proc_6_27_EA61EC(var_8C, "Date") = 0) Then
  loc_ED60D2:   Exit Sub
  loc_ED60D3: End If
  loc_ED610A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED610D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED6115: Else
  loc_ED611B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED6123:   Call var_88.SetFocus
  loc_ED612C: End If
  loc_ED612C: Exit Sub
End Sub
