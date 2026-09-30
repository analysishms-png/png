VERSION 5.00
Begin VB.Form RsGravyItemEntry
  Caption = "Gravy Item Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11220
  ClientHeight = 7005
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11220
    Height = 510
    TabIndex = 42
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 1275
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 3
    Appearance = 0 'Flat
  End
  Begin DataGrid DGDispCode
    Left = 9525
    Top = 2115
    Width = 1605
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSFlexGrid FGPoint
    Left = 2430
    Top = 3075
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 38
  End
  Begin DataGrid DGUnit
    Left = 9030
    Top = 4470
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGRest
    Left = 6405
    Top = 4260
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin DataGrid DGItemGroup
    Left = 6420
    Top = 3330
    Width = 4665
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin DataGrid DGItemCat
    Left = 5925
    Top = 3825
    Width = 4410
    Height = 2460
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGHelp
    Left = 6660
    Top = 2820
    Width = 4230
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin Frame Frame1
    Left = 885
    Top = 5280
    Width = 5640
    Height = 1680
    Visible = 0   'False
    TabIndex = 33
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1500
      Top = 465
      Width = 3855
      Height = 255
      TabIndex = 34
      BorderStyle = 0 'None
      MaxLength = 35
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
    Begin CommandButton Command2
      Caption = "&Cancel"
      Index = 1
      Left = 4065
      Top = 1155
      Width = 1215
      Height = 360
      TabIndex = 37
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
    Begin CommandButton Command2
      Caption = "&Print"
      Index = 0
      Left = 2775
      Top = 1155
      Width = 1215
      Height = 360
      TabIndex = 36
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
    Begin Label LblName
      Caption = "Restaurant"
      Index = 4
      ForeColor = &HC00000&
      Left = 270
      Top = 465
      Width = 1020
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
  Begin CommandButton Command1
    Caption = "&Consumption"
    BackColor = &HE0E0E0&
    Left = 4695
    Top = 1785
    Width = 1785
    Height = 570
    TabIndex = 32
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8000000F&
  End
  Begin CheckBox Check1
    Caption = "Carry Last Information"
    ForeColor = &HC00000&
    Left = 915
    Top = 5025
    Width = 3360
    Height = 210
    Visible = 0   'False
    TabIndex = 31
    Value = 1
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
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 930
    Width = 1275
    Height = 255
    TabIndex = 3
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
    Index = 9
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 1815
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 1545
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 465
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 1785
    Width = 2610
    Height = 255
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
    Index = 5
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 735
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 1005
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 3
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 2070
    Width = 2610
    Height = 255
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 35
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 1215
    Width = 3855
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 35
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 645
    Width = 3855
    Height = 255
    TabIndex = 2
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 1500
    Width = 1275
    Height = 255
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
  Begin TopCtrl TopCtrl11
    Left = 0
    Top = 6630
    Width = 11220
    Height = 375
    Visible = 0   'False
    TabIndex = 0
  End
  Begin Label LblName
    Caption = "Service Charge"
    Index = 6
    ForeColor = &H0&
    Left = 7035
    Top = 1275
    Width = 1305
    Height = 240
    Visible = 0   'False
    TabIndex = 41
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H0&
    Left = 10050
    Top = 1290
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 40
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
  Begin Label LblLedgerAc
    Caption = "Code"
    Index = 3
    ForeColor = &HC00000&
    Left = 420
    Top = 930
    Width = 495
    Height = 240
    TabIndex = 29
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
    Caption = "Applicable Date"
    Index = 2
    ForeColor = &H0&
    Left = 7035
    Top = 1815
    Width = 1320
    Height = 240
    Visible = 0   'False
    TabIndex = 28
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblLedgerAc
    Caption = "Sale Rate"
    Index = 1
    ForeColor = &H0&
    Left = 7035
    Top = 1545
    Width = 825
    Height = 240
    Visible = 0   'False
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Restaurant"
    Index = 1
    ForeColor = &H0&
    Left = 7035
    Top = 465
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 0
    ForeColor = &H0&
    Left = 10050
    Top = 1020
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 25
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
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &H0&
    Left = 10050
    Top = 750
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 24
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
  Begin Label LblName
    Caption = "Item Category"
    Index = 12
    ForeColor = &HC00000&
    Left = 420
    Top = 1785
    Width = 1335
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
  Begin Label LblLedgerAc
    Caption = "Rate Edit"
    Index = 6
    ForeColor = &H0&
    Left = 7035
    Top = 735
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Disc Applicable"
    Index = 5
    ForeColor = &H0&
    Left = 7035
    Top = 1005
    Width = 1275
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Kitchen"
    Index = 3
    ForeColor = &HC00000&
    Left = 420
    Top = 2070
    Width = 720
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
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 420
    Top = 1215
    Width = 555
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
  Begin Label LblLedgerAc
    Caption = "Item Group"
    Index = 0
    ForeColor = &HC00000&
    Left = 420
    Top = 645
    Width = 1065
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
  Begin Label LblLedgerAc
    Caption = "Unit"
    Index = 2
    ForeColor = &HC00000&
    Left = 420
    Top = 1500
    Width = 375
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
End

Attribute VB_Name = "RsGravyItemEntry"


Private Sub FGPoint_UnknownEvent_9 'ED3448
  'Data Table: 4D3AB8
  loc_ED33AC: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_ED33AF:   Call DGUnit_UnknownEvent_9()
  loc_ED33B4: End If
  loc_ED33D0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_ED33D3:   Call DGHelp_UnknownEvent_9()
  loc_ED33D8: End If
  loc_ED33F4: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_ED33F7:   Call DGRest_UnknownEvent_9()
  loc_ED33FC: End If
  loc_ED3418: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_ED341B:   Call DGItemCat_UnknownEvent_9()
  loc_ED3420: End If
  loc_ED343C: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_ED343F:   Call DGItemGroup_UnknownEvent_9()
  loc_ED3444: End If
  loc_ED3444: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F38214
  'Data Table: 4D3AB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3810B: Me.DGItemCat.Visible = False
  loc_F3812A: If (Me.RecordCount > 0) Then
  loc_F38169:   Set var_B4 = Me.Txt
  loc_F3816F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F38177:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F381AA:   var_B0 = Me.Fields.Item("Name")
  loc_F381C9:   Set var_B4 = Me.Txt
  loc_F381CF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F381D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F381ED: End If
  loc_F381F8: Set var_A8 = Me.Txt
  loc_F381FE: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6))
  loc_F38206: var_B0.SetFocus
  loc_F38212: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E6F3BC
  'Data Table: 4D3AB8
  loc_E6F37A: Proc_6_153_E91D24(Me.DGItemCat, arg_14)
  loc_E6F391: Set var_8C = Me.FGPoint
  loc_E6F3AD: Proc_6_138_106E830(Me.DGItemCat, global_80, CInt(6))
  loc_E6F3BB: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '158F028
  'Data Table: 4D3AB8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_E8 As String
  Dim var_104 As Variant
  Dim var_C4 As Variant
  Dim var_88 As Variant
  Dim unk_4D3ABF As Connection15
  loc_158DEA8: On Error Goto loc_158EFE4
  loc_158DEB5: Set var_88 = Me.Txt
  loc_158DEBB: Call 0.Method_Txt_GotFocus0 (Index)
  loc_158DEC9: Proc_6_74_E23240(var_8C)
  loc_158DED5: Call Proc_133_43_FB5484(var_8C)
  loc_158DEDD: var_92 = Index
  loc_158DEE8: If (var_92 = CInt(0)) Then
  loc_158DF02:   If (Me.RecordCount > 0) Then
  loc_158DF10:     Set var_8C = Me.FGPoint
  loc_158DF28:     Proc_6_137_1192FDC(Me.DGHelp, global_68, Index)
  loc_158DF36:   End If
  loc_158DF39: Else
  loc_158DF41:   If (var_92 = CInt(2)) Then
  loc_158DF5B:     If (Me.RecordCount > 0) Then
  loc_158DF69:       Set var_8C = Me.FGPoint
  loc_158DF81:       Proc_6_137_1192FDC(Me.DGItemGroup, global_72, Index)
  loc_158DF8F:     End If
  loc_158DFDD:     Set var_88 = Me.Txt
  loc_158DFE3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_158DFEB:     var_8C = var_8C.Text
  loc_158E003:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_158E006:       Exit Sub
  loc_158E007:     End If
  loc_158E014:     Set var_88 = Me.Txt
  loc_158E01A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E022:     var_A0 = var_8C.Text
  loc_158E034:     var_B0 = "Name"
  loc_158E06F:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_158E078:       Me.MoveFirst
  loc_158E09B:       Set var_88 = Me.Txt
  loc_158E0A1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158E0A9:       0 = var_8C.Text
  loc_158E0C2:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_158E0D7:     End If
  loc_158E0DA:   Else
  loc_158E0E2:     If (var_92 = CInt(6)) Then
  loc_158E0FC:       If (Me.RecordCount > 0) Then
  loc_158E10A:         Set var_8C = Me.FGPoint
  loc_158E122:         Proc_6_137_1192FDC(Me.DGItemCat, global_80)
  loc_158E130:       End If
  loc_158E17E:       Set var_88 = Me.Txt
  loc_158E184:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158E18C:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158E1A4:       If (Index Or (var_A0 = vbNullString)) Then
  loc_158E1A7:         Exit Sub
  loc_158E1A8:       End If
  loc_158E1B5:       Set var_88 = Me.Txt
  loc_158E1BB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E1C3:       var_A0 = var_8C.Text
  loc_158E1D5:       var_B0 = "Name"
  loc_158E210:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_158E219:         Me.MoveFirst
  loc_158E23C:         Set var_88 = Me.Txt
  loc_158E242:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158E24A:         0 = var_8C.Text
  loc_158E263:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158E278:       End If
  loc_158E27B:     Else
  loc_158E283:       If (var_92 = CInt(1)) Then
  loc_158E29D:         If (Me.RecordCount > 0) Then
  loc_158E2AB:           Set var_8C = Me.FGPoint
  loc_158E2C3:           Proc_6_137_1192FDC(Me.DGUnit, global_84)
  loc_158E2D1:         End If
  loc_158E31F:         Set var_88 = Me.Txt
  loc_158E325:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158E32D:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158E345:         If (Index Or (var_A0 = vbNullString)) Then
  loc_158E348:           Exit Sub
  loc_158E349:         End If
  loc_158E356:         Set var_88 = Me.Txt
  loc_158E35C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E364:         var_A0 = var_8C.Text
  loc_158E376:         var_B0 = "Name"
  loc_158E38D:         var_B4 = Me.Fields.Item(var_B0)
  loc_158E3B1:         If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_158E3BA:           Me.MoveFirst
  loc_158E3DD:           Set var_88 = Me.Txt
  loc_158E3E3:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158E3EB:           0 = var_8C.Text
  loc_158E404:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158E419:         End If
  loc_158E41C:       Else
  loc_158E424:         If Not (var_92 = CInt(4)) Then
  loc_158E42F:           If Not (var_92 = CInt(5)) Then
  loc_158E43A:             If (var_92 = CInt(&HC)) Then
  loc_158E43D:             End If
  loc_158E43D:           End If
  loc_158E44C:           Set var_88 = Me.Txt
  loc_158E452:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E45A:           var_8C.SelStart = 0
  loc_158E473:           Set var_88 = Me.Txt
  loc_158E479:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E494:           Set var_90 = Me.Txt
  loc_158E49A:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158E4A2:           var_B4.SelLength = Len(var_8C.Text)
  loc_158E4C2:           Set var_88 = Me.Txt
  loc_158E4C8:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E4E2:           Set var_90 = Me.Txt
  loc_158E4E8:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158E4F0:           var_B4.Tag = var_8C.Text
  loc_158E506:         Else
  loc_158E50E:           If (var_92 = CInt(7)) Then
  loc_158E51E:             Set var_88 = Me.Txt
  loc_158E524:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E53F:             Set var_90 = Me.Txt
  loc_158E545:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158E54D:             var_B4.SelLength = Len(var_8C.Text)
  loc_158E56D:             Set var_88 = Me.Txt
  loc_158E573:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E57B:             var_A0 = var_8C.Text
  loc_158E58D:             Set var_90 = Me.Txt
  loc_158E593:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158E59B:             var_B4.Tag = var_A0
  loc_158E5B1:           Else
  loc_158E5B9:             If (var_92 = CInt(3)) Then
  loc_158E5CA:               Set var_88 = Me.Txt
  loc_158E5D0:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_158E5EF:               Me.DGRest.Left = CVar(var_8C.Left)
  loc_158E60B:               Set var_90 = Me.Txt
  loc_158E611:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_B4)
  loc_158E62C:               Set var_88 = Me.Txt
  loc_158E632:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_158E64A:               var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_158E659:               Me.DGRest.Top = CVar(var_8C.Left)
  loc_158E67A:               Me.Filter = 0
  loc_158E68B:               Me.Filter = "RestType='Kitchen'"
  loc_158E6A7:               If (Me.RecordCount > 0) Then
  loc_158E6B5:                 Set var_8C = Me.FGPoint
  loc_158E6CD:                 Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_158E6DB:               End If
  loc_158E729:               Set var_88 = Me.Txt
  loc_158E72F:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158E737:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158E74F:               If (Index Or (var_A0 = vbNullString)) Then
  loc_158E752:                 Exit Sub
  loc_158E753:               End If
  loc_158E760:               Set var_88 = Me.Txt
  loc_158E766:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E76E:               var_A0 = var_8C.Text
  loc_158E780:               var_B0 = "Name"
  loc_158E797:               var_B4 = Me.Fields.Item(var_B0)
  loc_158E7BB:               If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_158E7C4:                 Me.MoveFirst
  loc_158E7E7:                 Set var_88 = Me.Txt
  loc_158E7ED:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158E7F5:                 0 = var_8C.Text
  loc_158E80E:                 Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158E823:               End If
  loc_158E836:               Me.DGRest.Tag = CVar(CStr(Index))
  loc_158E844:             Else
  loc_158E84C:               If (var_92 = CInt(8)) Then
  loc_158E85D:                 Set var_88 = Me.Txt
  loc_158E863:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_158E882:                 Me.DGRest.Left = CVar(var_8C.Left)
  loc_158E89E:                 Set var_90 = Me.Txt
  loc_158E8A4:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_B4)
  loc_158E8BF:                 Set var_88 = Me.Txt
  loc_158E8C5:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_158E8DD:                 var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_158E8E6:                 Set var_104 = Me.DGRest
  loc_158E8EC:                 var_104.Top = CVar(var_8C.Left)
  loc_158E90D:                 Me.Filter = 0
  loc_158E91E:                 Me.Filter = "RestType<>'Kitchen'"
  loc_158E93A:                 If (Me.RecordCount > 0) Then
  loc_158E948:                   Set var_8C = Me.FGPoint
  loc_158E960:                   Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_158E96E:                 End If
  loc_158E9BC:                 Set var_88 = Me.Txt
  loc_158E9C2:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158E9CA:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158E9E2:                 If (Index Or (var_A0 = vbNullString)) Then
  loc_158E9E5:                   Exit Sub
  loc_158E9E6:                 End If
  loc_158E9F3:                 Set var_88 = Me.Txt
  loc_158E9F9:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158EA01:                 var_A0 = var_8C.Text
  loc_158EA13:                 var_B0 = "Name"
  loc_158EA22:                 var_90 = Me.Fields
  loc_158EA4E:                 If CBool(CVar(var_A0) <> var_90.Item(var_B0).Value) Then
  loc_158EA57:                   Me.MoveFirst
  loc_158EA7A:                   Set var_88 = Me.Txt
  loc_158EA80:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158EA88:                   0 = var_8C.Text
  loc_158EAA1:                   Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158EAB6:                 End If
  loc_158EAC9:                 Me.DGRest.Tag = CVar(CStr(Index))
  loc_158EAD7:               Else
  loc_158EADF:                 If (var_92 = CInt(&HB)) Then
  loc_158EAF0:                   Set var_8C = Me.Txt
  loc_158EAF6:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_158EB1C:                   var_B0 = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_158EB2B:                   Me.DGRest.Left = var_B0
  loc_158EB49:                   Set var_8C = Me.Txt
  loc_158EB4F:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_158EB6A:                   Set var_B4 = Me.Txt
  loc_158EB70:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_104)
  loc_158EB9E:                   var_B0 = CVar((((Me.Frame1.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_158EBAD:                   Me.DGRest.Top = var_B0
  loc_158EBD0:                   Me.Filter = 0
  loc_158EBE1:                   Me.Filter = "RestType='Kitchen'"
  loc_158EBFD:                   If (Me.RecordCount > 0) Then
  loc_158EC0B:                     Set var_8C = Me.FGPoint
  loc_158EC23:                     Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_158EC31:                   End If
  loc_158EC7F:                   Set var_88 = Me.Txt
  loc_158EC85:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158EC8D:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158ECA5:                   If (Index Or (var_A0 = vbNullString)) Then
  loc_158ECA8:                     Exit Sub
  loc_158ECA9:                   End If
  loc_158ECB6:                   Set var_88 = Me.Txt
  loc_158ECBC:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158ECC4:                   var_A0 = var_8C.Text
  loc_158ECD6:                   var_B0 = "Name"
  loc_158ECED:                   var_B4 = Me.Fields.Item(var_B0)
  loc_158ED11:                   If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_158ED1A:                     Me.MoveFirst
  loc_158ED3D:                     Set var_88 = Me.Txt
  loc_158ED43:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158ED4B:                     0 = var_8C.Text
  loc_158ED64:                     Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158ED79:                   End If
  loc_158ED8C:                   Me.DGRest.Tag = CVar(CStr(Index))
  loc_158ED9A:                 Else
  loc_158EDA2:                   If (var_92 = CInt(9)) Then
  loc_158EDB2:                     Set var_88 = Me.Txt
  loc_158EDB8:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158EDD3:                     Set var_90 = Me.Txt
  loc_158EDD9:                     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158EDE1:                     var_B4.SelLength = Len(var_8C.Text)
  loc_158EE01:                     Set var_88 = Me.Txt
  loc_158EE07:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158EE0F:                     var_A0 = var_8C.Text
  loc_158EE21:                     Set var_90 = Me.Txt
  loc_158EE27:                     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158EE2F:                     var_B4.Tag = var_A0
  loc_158EE45:                   Else
  loc_158EE4D:                     If (var_92 = CInt(&HA)) Then
  loc_158EE5E:                       Set var_88 = Me.Txt
  loc_158EE64:                       Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_158EE83:                       Me.DGDispCode.Left = CVar(var_8C.Left)
  loc_158EE9F:                       Set var_90 = Me.Txt
  loc_158EEA5:                       Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_B4)
  loc_158EEC0:                       Set var_88 = Me.Txt
  loc_158EEC6:                       Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_158EEDE:                       var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_158EEED:                       Me.DGDispCode.Top = CVar(var_8C.Left)
  loc_158EF1D:                       Set var_88 = Me.Txt
  loc_158EF23:                       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A0, "SELECT DispCode as COde,DispCode FROM ItemMast Where Type IN ('Finish','Semi Finish')  And DispCode<>9999 and RestCode ='")
  loc_158EF2B:                       var_C4 = var_8C.Tag
  loc_158EF34:                       var_E8 = -1 & var_A0
  loc_158EF44:                       unk_4D3ABF.Execute 1 & var_A0 & "' ORDER BY DispCode", var_90, 
  loc_158EF79:                       CVarUnk
  loc_158EF7E:                       VerifyVarObj
  loc_158EF84:                       Set var_88 = Me.DGDispCode
  loc_158EF8A:                       LateIdStAd
  loc_158EFAF:                       If (Me.RecordCount > 0) Then
  loc_158EFBD:                         Set var_8C = Me.FGPoint
  loc_158EFD5:                         Proc_6_137_1192FDC(Me.DGDispCode, Me.DGDispCode, Index)
  loc_158EFE3:                       End If
  loc_158EFE3:                     End If
  loc_158EFE3:                   End If
  loc_158EFE3:                 End If
  loc_158EFE3:               End If
  loc_158EFE3:             End If
  loc_158EFE3:           End If
  loc_158EFE3:         End If
  loc_158EFE3:       End If
  loc_158EFE3:     End If
  loc_158EFE3:   End If
  loc_158EFE3: End If
  loc_158EFE3: Exit Sub
  loc_158EFE4: ' Referenced from: 158DEA8
  loc_158EFEC: Set var_88 = Err()
  loc_158EFF2: Call 0.Method_arg_2C (var_A0, var_8C)
  loc_158F013: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_12C)
  loc_158F026: Exit Sub
  loc_158F027: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '135A2F0
  'Data Table: 4D3AB8
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_94 As DataGrid
  Dim var_9C As DataGrid
  loc_1359AD2: If (CLng(Shift) = &H1B) Then
  loc_1359AD5:   Call Proc_133_43_FB5484()
  loc_1359ADA:   Exit Sub
  loc_1359ADB: End If
  loc_1359ADE: var_88 = KeyCode
  loc_1359AE9: If (var_88 = CInt(0)) Then
  loc_1359B0E:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_1359B2E:     Set var_9C = Me.FGPoint
  loc_1359B5C:     Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift)
  loc_1359B70:   End If
  loc_1359BC9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1359BEF:     Proc_6_138_106E830(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 0)
  loc_1359BFD:   End If
  loc_1359C00: Else
  loc_1359C08:   If (var_88 = CInt(2)) Then
  loc_1359C33:     Set var_9C = Nothing
  loc_1359C65:     Proc_6_69_134A630(Me.DGItemGroup, Me.Txt, CInt(2), global_72, Shift, 0, 1)
  loc_1359CD4:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1359CDB:       Set var_9C = Me.DGItemGroup
  loc_1359CFA:       Proc_6_138_106E830(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_1359D08:     End If
  loc_1359D0B:   Else
  loc_1359D13:     If (var_88 = CInt(6)) Then
  loc_1359D6C:       Proc_6_69_134A630(Me.DGItemCat, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_1359DDB:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1359E01:         Proc_6_138_106E830(Me.DGItemCat, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1359E0F:       End If
  loc_1359E12:     Else
  loc_1359E1A:       If Not (var_88 = CInt(8)) Then
  loc_1359E25:         If Not (var_88 = CInt(3)) Then
  loc_1359E30:           If (var_88 = CInt(&HB)) Then
  loc_1359E33:           End If
  loc_1359E33:         End If
  loc_1359E89:         Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1359EF8:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1359F06:           Set var_94 = Me.FGPoint
  loc_1359F1E:           Proc_6_138_106E830(Me.DGRest, global_76, KeyCode, var_94, Me.FGPoint, 0)
  loc_1359F2C:         End If
  loc_1359F2F:       Else
  loc_1359F37:         If (var_88 = CInt(&HA)) Then
  loc_1359F44:           Set var_90 = Me.Txt
  loc_1359F4A:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, 1)
  loc_1359F65:           Proc_6_41_FA1734(var_94, Shift, 4, 0)
  loc_1359F93:           If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_1359FB3:             Set var_9C = Me.FGPoint
  loc_1359FE1:             Proc_6_79_11AD564(Me.DGDispCode, Me.Txt, KeyCode, global_88, Shift, 0)
  loc_1359FF5:           End If
  loc_135A04E:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_135A074:             Proc_6_138_106E830(Me.DGDispCode, global_88, KeyCode, Me.FGPoint, 1)
  loc_135A082:           End If
  loc_135A085:         Else
  loc_135A08D:           If (var_88 = CInt(1)) Then
  loc_135A0AD:             Set var_9C = Me.FGPoint
  loc_135A0DB:             Proc_6_79_11AD564(Me.DGUnit, Me.Txt, KeyCode, global_84, Shift, 0, 1)
  loc_135A148:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_135A14F:               Set var_9C = Me.DGUnit
  loc_135A16E:               Proc_6_138_106E830(var_9C, global_84, KeyCode, Me.FGPoint, var_9C, 0)
  loc_135A17C:             End If
  loc_135A17C:           End If
  loc_135A17C:         End If
  loc_135A17C:       End If
  loc_135A17C:     End If
  loc_135A17C:   End If
  loc_135A17C: End If
  loc_135A1AD: Set var_9C = Me.DGRest
  loc_135A223: If ((((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGDispCode.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGItemCat.Visible) = 0)) And (CBool(Me.DGUnit.Visible) = 0)) Then
  loc_135A244:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_135A251:     Call Txt_Validate(CInt(3))
  loc_135A25B:     Call Proc_133_45_E820D4(0, var_86, var_9C, 0)
  loc_135A263:   Else
  loc_135A281:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_135A28A:       Call Txt_Validate(KeyCode)
  loc_135A295:       If (var_86 = &HFF) Then
  loc_135A298:         Exit Sub
  loc_135A299:       End If
  loc_135A29F:       Proc_6_75_E5335C(Shift, arg_14, var_86)
  loc_135A2A7:     Else
  loc_135A2BC:       If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_135A2C5:         Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_135A2CD:       Else
  loc_135A2E0:         If ((CLng(Shift) = &H26) And (KeyCode <> CInt(8))) Then
  loc_135A2E9:           Proc_6_76_E533C8(Shift, arg_14)
  loc_135A2EE:         End If
  loc_135A2EE:       End If
  loc_135A2EE:     End If
  loc_135A2EE:   End If
  loc_135A2EE: End If
  loc_135A2EE: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '111A54C
  'Data Table: 4D3AB8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_111A1F7: Proc_6_58_E06050(arg_10)
  loc_111A202: Proc_6_133_E7FB08(var_94)
  loc_111A20B: arg_10 = CInt(var_94)
  loc_111A214: var_96 = KeyAscii
  loc_111A21F: If (var_96 = CInt(&HA)) Then
  loc_111A22C:   Set var_9C = Me.Txt
  loc_111A232:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_111A24D:   Proc_6_42_129B55C(var_A0, arg_10, 4)
  loc_111A25C: Else
  loc_111A264:   If (var_96 = CInt(2)) Then
  loc_111A283:     If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_111A2B0:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_111A2E2:       Proc_6_138_106E830(Me.DGItemGroup, global_72, KeyAscii, Me.FGPoint)
  loc_111A2F0:     End If
  loc_111A2F3:   Else
  loc_111A2FB:     If Not (var_96 = CInt(8)) Then
  loc_111A306:       If Not (var_96 = CInt(3)) Then
  loc_111A311:         If (var_96 = CInt(&HB)) Then
  loc_111A314:         End If
  loc_111A314:       End If
  loc_111A330:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_111A35D:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_111A38F:         Proc_6_138_106E830(Me.DGRest, global_76, KeyAscii, Me.FGPoint, 0)
  loc_111A39D:       End If
  loc_111A3A0:     Else
  loc_111A3A8:       If (var_96 = CInt(6)) Then
  loc_111A3C7:         If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_111A3F4:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_111A40E:           Set var_A0 = Me.FGPoint
  loc_111A426:           Proc_6_138_106E830(Me.DGItemCat, global_80, KeyAscii, var_A0, 0)
  loc_111A434:         End If
  loc_111A437:       Else
  loc_111A43F:         If (var_96 = CInt(7)) Then
  loc_111A44C:           Set var_9C = Me.Txt
  loc_111A452:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_111A46D:           Proc_6_42_129B55C(var_A0, arg_10, 8, 2)
  loc_111A47C:         Else
  loc_111A484:           If Not (var_96 = CInt(4)) Then
  loc_111A48F:             If Not (var_96 = CInt(5)) Then
  loc_111A49A:               If (var_96 = CInt(&HC)) Then
  loc_111A49D:               End If
  loc_111A49D:             End If
  loc_111A4C6:             If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_111A4D6:               Set var_9C = Me.Txt
  loc_111A4DC:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_111A4E4:               var_A0.Text = 0
  loc_111A4F3:             Else
  loc_111A51C:               If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_111A52C:                 Set var_9C = Me.Txt
  loc_111A532:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_111A53A:                 var_A0.Text = arg_10
  loc_111A546:               End If
  loc_111A546:             End If
  loc_111A548:             arg_10 = 0
  loc_111A54B:           End If
  loc_111A54B:         End If
  loc_111A54B:       End If
  loc_111A54B:     End If
  loc_111A54B:   End If
  loc_111A54B: End If
  loc_111A54B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1014B48
  'Data Table: 4D3AB8
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  loc_101492B: var_86 = KeyCode
  loc_1014936: If (var_86 = CInt(0)) Then
  loc_101495C:   Set var_A0 = Me.Txt
  loc_1014962:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_101496A:   (CBool(Me.DGHelp.Visible) = &HFF) = var_A4.Text
  loc_1014987:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_1014994:     var_A8 = "Name"
  loc_10149AF:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_68)
  loc_10149C2:     Set var_A4 = Me.DGHelp
  loc_10149C9:     Set var_A0 = Me.FGPoint
  loc_10149E1:     Proc_6_138_106E830(var_A4, global_68, KeyCode)
  loc_10149EF:   End If
  loc_10149F2: Else
  loc_10149FA:   If (var_86 = CInt(&HA)) Then
  loc_1014A20:     Set var_A0 = Me.Txt
  loc_1014A26:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGDispCode.Visible) = &HFF))
  loc_1014A2E:     var_A0 = var_A4.Text
  loc_1014A4B:     If (Shift And (var_A8 <> vbNullString)) Then
  loc_1014A58:       var_A8 = "DispCode"
  loc_1014A73:       Proc_6_80_FF1F20(Me.Txt, KeyCode, global_88)
  loc_1014AA5:       Proc_6_138_106E830(Me.DGDispCode, global_88, KeyCode, Me.FGPoint)
  loc_1014AB3:     End If
  loc_1014AB6:   Else
  loc_1014ABE:     If (var_86 = CInt(1)) Then
  loc_1014ADD:       If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_1014AEA:         var_A8 = "Name"
  loc_1014B05:         Proc_6_80_FF1F20(Me.Txt, KeyCode, global_84, Shift)
  loc_1014B37:         Proc_6_138_106E830(Me.DGUnit, global_84, KeyCode, Me.FGPoint)
  loc_1014B45:       End If
  loc_1014B45:     End If
  loc_1014B45:   End If
  loc_1014B45: End If
  loc_1014B45: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E481EC
  'Data Table: 4D3AB8
  loc_E481CA: Set var_88 = Me.Txt
  loc_E481D0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E481DE: Proc_6_73_E23294(var_8C)
  loc_E481EA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14DAEF4
  'Data Table: 4D3AB8
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As String
  Dim arg_10 As Integer
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim unk_4D3ABF As Connection15
  Dim var_124 As String
  loc_14DA12C: On Error Goto loc_14DAEAF
  loc_14DA132: var_86 = Cancel
  loc_14DA13D: If (var_86 = CInt(9)) Then
  loc_14DA14A:   Set var_8C = Me.Txt
  loc_14DA150:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DA170:   Set var_98 = Me.Txt
  loc_14DA176:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_14DA17E:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_14DA19F:   Set var_8C = Me.Txt
  loc_14DA1A5:   Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_14DA1AD:   var_A0 = var_90.Text
  loc_14DA1C4:   If (var_A0 = vbNullString) Then
  loc_14DA1E8:     MsgBox("First Enter Sale Rate", &H40, "Validation", var_100, var_120)
  loc_14DA1FA:     arg_10 = &HFF
  loc_14DA208:     Set var_8C = Me.Txt
  loc_14DA20E:     Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_14DA216:     var_90.SetFocus
  loc_14DA222:     Exit Sub
  loc_14DA223:   End If
  loc_14DA231:   Set var_8C = Me.Txt
  loc_14DA237:   Call 0.Method_Txt_Validate0 (CInt(7), var_90, var_A0)
  loc_14DA23F:   arg_10 = var_90.Text
  loc_14DA25A:   Set var_94 = Me.Txt
  loc_14DA260:   Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_124)
  loc_14DA268:   (var_A0 <> vbNullString) = var_98.Text
  loc_14DA288:   If (var_86 And (var_124 = vbNullString)) Then
  loc_14DA2AC:     MsgBox("First Enter App. Date", &H40, "Validation", var_100, var_120)
  loc_14DA2BE:     arg_10 = &HFF
  loc_14DA2C1:     Exit Sub
  loc_14DA2C2:   End If
  loc_14DA2C5: Else
  loc_14DA2CD:   If (var_86 = CInt(&HA)) Then
  loc_14DA2D3:     Call Proc_133_42_12C6918(var_126)
  loc_14DA2DE:     If (var_126 = &HFF) Then
  loc_14DA2E3:       arg_10 = &HFF
  loc_14DA2E6:       Exit Sub
  loc_14DA2E7:     End If
  loc_14DA2EA:   Else
  loc_14DA2F2:     If (var_86 = CInt(7)) Then
  loc_14DA2FF:       Set var_8C = Me.Txt
  loc_14DA305:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DA33F:       Set var_94 = Me.Txt
  loc_14DA345:       Call 0.Method_Txt_Validate0 (Cancel, var_98, CStr(Format(CVar(var_90), "0.00")), 1)
  loc_14DA34D:       var_98.Text = 1
  loc_14DA36A:     Else
  loc_14DA372:       If (var_86 = CInt(0)) Then
  loc_14DA378:         Call Proc_133_42_12C6918(var_126, arg_10)
  loc_14DA383:         If (var_126 = &HFF) Then
  loc_14DA388:           arg_10 = &HFF
  loc_14DA38B:           Exit Sub
  loc_14DA38C:         End If
  loc_14DA397:         Set var_8C = Me.Txt
  loc_14DA39D:         Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_14DA3A5:         var_A0 = "Item Name"
  loc_14DA3C6:         If (Proc_6_27_EA61EC(var_90, var_A0) = 0) Then
  loc_14DA3D4:           Set var_8C = Me.Txt
  loc_14DA3DA:           Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_14DA3E2:           var_90.SetFocus
  loc_14DA3F0:           arg_10 = &HFF
  loc_14DA3F3:           Exit Sub
  loc_14DA3F4:         End If
  loc_14DA3F7:       Else
  loc_14DA3FF:         If (var_86 = CInt(2)) Then
  loc_14DA450:           Set var_8C = Me.Txt
  loc_14DA456:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_14DA45E:           arg_10 = var_90.Text
  loc_14DA476:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_14DA479:             Exit Sub
  loc_14DA47A:           End If
  loc_14DA4B5:           Set var_94 = Me.Txt
  loc_14DA4BB:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA4C3:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14DA514:           Set var_94 = Me.Txt
  loc_14DA51A:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA522:           var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14DA552:           var_90 = Me.Fields.Item("Type")
  loc_14DA563:           var_A0 = Proc_6_38_E69628(CVar(var_90))
  loc_14DA569:           global_56 = var_A0
  loc_14DA579:         Else
  loc_14DA581:           If (var_86 = CInt(6)) Then
  loc_14DA5D2:             Set var_8C = Me.Txt
  loc_14DA5D8:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0)
  loc_14DA5E0:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_14DA5F8:             If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_14DA5FB:               Exit Sub
  loc_14DA5FC:             End If
  loc_14DA637:             Set var_94 = Me.Txt
  loc_14DA63D:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA645:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14DA678:             var_90 = Me.Fields.Item("Code")
  loc_14DA696:             Set var_94 = Me.Txt
  loc_14DA69C:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA6A4:             var_98.Tag = CStr(var_90.Value)
  loc_14DA6BD:           Else
  loc_14DA6C5:             If Not (var_86 = CInt(3)) Then
  loc_14DA6D0:               If (var_86 = CInt(&HB)) Then
  loc_14DA6D3:               End If
  loc_14DA721:               Set var_8C = Me.Txt
  loc_14DA727:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DA747:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_14DA757:                 Set var_8C = Me.Txt
  loc_14DA75D:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DA765:                 var_90.Text = vbNullString
  loc_14DA77E:                 Set var_8C = Me.Txt
  loc_14DA784:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DA78C:                 var_90.Tag = vbNullString
  loc_14DA798:                 Exit Sub
  loc_14DA799:               End If
  loc_14DA7D4:               Set var_94 = Me.Txt
  loc_14DA7DA:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA7E2:               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14DA815:               var_90 = Me.Fields.Item("Code")
  loc_14DA833:               Set var_94 = Me.Txt
  loc_14DA839:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA841:               var_98.Tag = CStr(var_90.Value)
  loc_14DA85A:             Else
  loc_14DA862:               If (var_86 = CInt(8)) Then
  loc_14DA8B3:                 Set var_8C = Me.Txt
  loc_14DA8B9:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DA8D9:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_14DA8DE:                   arg_10 = &HFF
  loc_14DA8E1:                   Exit Sub
  loc_14DA8E2:                 End If
  loc_14DA91D:                 Set var_94 = Me.Txt
  loc_14DA923:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA92B:                 var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14DA97C:                 Set var_94 = Me.Txt
  loc_14DA982:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA98A:                 var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14DA9DF:                 var_E0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where Type IN ('Finish','Semi Finish') AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_14DA9F6:                 unk_4D3ABF.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_14DAA2D:                 CVarUnk
  loc_14DAA32:                 VerifyVarObj
  loc_14DAA38:                 Set var_8C = Me.DGItemGroup
  loc_14DAA3E:                 LateIdStAd
  loc_14DAA8B:                 var_E0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (cattype is not NULL and cattype<>'')  AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_14DAAA2:                 unk_4D3ABF.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_14DAAD9:                 CVarUnk
  loc_14DAADE:                 VerifyVarObj
  loc_14DAAE4:                 Set var_8C = Me.DGItemCat
  loc_14DAAEA:                 LateIdStAd
  loc_14DAAFB:                 var_B0 = "DiscApp"
  loc_14DAB0A:                 var_8C = Me.Fields
  loc_14DAB12:                 var_90 = var_8C.Item(var_B0)
  loc_14DAB23:                 var_A0 = Proc_6_38_E69628(CVar(var_90), var_8C, var_94, var_94)
  loc_14DAB41:                 If (var_A0 = "Y") Then
  loc_14DAB57:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90, &HFF, Me.Txt)
  loc_14DAB5F:                   var_90.Enabled = var_94
  loc_14DAB79:                   Set var_8C = Me.Txt
  loc_14DAB7F:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90, "Yes")
  loc_14DAB87:                   var_90.Text = var_94
  loc_14DAB96:                 Else
  loc_14DABA3:                   Set var_8C = Me.Txt
  loc_14DABA9:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_14DABB1:                   var_90.Enabled = False
  loc_14DABCB:                   Set var_8C = Me.Txt
  loc_14DABD1:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_14DABD9:                   var_90.Text = "No"
  loc_14DABE5:                 End If
  loc_14DABE8:               Else
  loc_14DABF0:                 If (var_86 = CInt(1)) Then
  loc_14DAC11:                   Set var_8C = Me.Txt
  loc_14DAC17:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "Name like '")
  loc_14DAC1F:                   0 = var_90.Text
  loc_14DAC38:                   Me.Find 1 & var_A0 & "*'", var_B0, arg_10
  loc_14DAC9B:                   Set var_8C = Me.Txt
  loc_14DACA1:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DACC1:                   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_14DACD1:                     Set var_8C = Me.Txt
  loc_14DACD7:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DACDF:                     var_90.Text = vbNullString
  loc_14DACF8:                     Set var_8C = Me.Txt
  loc_14DACFE:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DAD06:                     var_90.Tag = vbNullString
  loc_14DAD12:                     Exit Sub
  loc_14DAD13:                   End If
  loc_14DAD2A:                   If (Me.AbsolutePosition > 0) Then
  loc_14DAD68:                     Set var_94 = Me.Txt
  loc_14DAD6E:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DAD76:                     var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14DADA9:                     var_90 = Me.Fields.Item("Code")
  loc_14DADBA:                     var_A0 = CStr(var_90.Value)
  loc_14DADC7:                     Set var_94 = Me.Txt
  loc_14DADCD:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DADD5:                     var_98.Tag = var_A0
  loc_14DADEB:                   End If
  loc_14DADEE:                 Else
  loc_14DADF6:                   If Not (var_86 = CInt(4)) Then
  loc_14DAE01:                     If Not (var_86 = CInt(5)) Then
  loc_14DAE0C:                       If (var_86 = CInt(&HC)) Then
  loc_14DAE0F:                       End If
  loc_14DAE0F:                     End If
  loc_14DAE19:                     Set var_8C = Me.Txt
  loc_14DAE1F:                     Call 0.Method_Txt_Validate0 (Cancel)
  loc_14DAE3E:                     var_100 = Ucase(Left(CVar(var_90), 1))
  loc_14DAE5A:                     If (var_100 = "Y") Then
  loc_14DAE6A:                       Set var_8C = Me.Txt
  loc_14DAE70:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DAE78:                       var_90.Text = "Yes"
  loc_14DAE87:                     Else
  loc_14DAE94:                       Set var_8C = Me.Txt
  loc_14DAE9A:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DAEA2:                       var_90.Text = "No"
  loc_14DAEAE:                     End If
  loc_14DAEAE:                   End If
  loc_14DAEAE:                 End If
  loc_14DAEAE:               End If
  loc_14DAEAE:             End If
  loc_14DAEAE:           End If
  loc_14DAEAE:         End If
  loc_14DAEAE:       End If
  loc_14DAEAE:     End If
  loc_14DAEAE:   End If
  loc_14DAEAE: End If
  loc_14DAEAE: Exit Sub
  loc_14DAEAF: ' Referenced from: 14DA12C
  loc_14DAEB7: Set var_8C = Err()
  loc_14DAEBD: Call 0.Method_arg_2C (var_A0)
  loc_14DAEDE: MsgBox(CVar(var_A0), &H40, "Information", var_100, var_120)
  loc_14DAEF1: Exit Sub
  loc_14DAEF2: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F384D4
  'Data Table: 4D3AB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F383CB: Me.DGItemGroup.Visible = False
  loc_F383EA: If (Me.RecordCount > 0) Then
  loc_F38429:   Set var_B4 = Me.Txt
  loc_F3842F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F38437:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3846A:   var_B0 = Me.Fields.Item("Name")
  loc_F38489:   Set var_B4 = Me.Txt
  loc_F3848F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F38497:   var_B8.Text = CStr(var_B0.Value)
  loc_F384AD: End If
  loc_F384B8: Set var_A8 = Me.Txt
  loc_F384BE: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2))
  loc_F384C6: var_B0.SetFocus
  loc_F384D2: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E6E704
  'Data Table: 4D3AB8
  loc_E6E6C2: Proc_6_153_E91D24(Me.DGItemGroup, arg_14)
  loc_E6E6D9: Set var_8C = Me.FGPoint
  loc_E6E6F5: Proc_6_138_106E830(Me.DGItemGroup, global_72, CInt(2))
  loc_E6E703: Exit Sub
End Sub

Private Sub Form_Load() '110D748
  'Data Table: 4D3AB8
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4D3ABF As Connection15
  Dim var_B4 As Variant
  loc_110D404: On Error Goto loc_110D703
  loc_110D419: Set var_88 = Me
  loc_110D41F: Proc_6_23_DFC5B8(var_88, 3255)
  loc_110D427: Call Proc_133_44_109F6E4(6960)
  loc_110D447: var_94 = "SELECT Code,Name,ItemGroup,RestCode FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type IN ('Semi Finish') and GravyItem='Yes'  And DispCode<>9999 ORDER BY Name"
  loc_110D450: unk_4D3ABF.Execute var_94, var_B4, -1
  loc_110D461: Set global_68 = var_88
  loc_110D47F: CVarUnk
  loc_110D484: VerifyVarObj
  loc_110D490: LateIdStAd
  loc_110D4B9: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestType='Kitchen' ORDER BY Name"
  loc_110D4C2: unk_4D3ABF.Execute var_94, var_B4, -1
  loc_110D4F1: CVarUnk
  loc_110D4F6: VerifyVarObj
  loc_110D502: LateIdStAd
  loc_110D534: unk_4D3ABF.Execute "SELECT Name as Code,Name FROM UnitMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_110D563: CVarUnk
  loc_110D568: VerifyVarObj
  loc_110D574: LateIdStAd
  loc_110D59D: var_94 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type IN ('Semi Finish') ORDER BY Name"
  loc_110D5A6: unk_4D3ABF.Execute var_94, var_B4, -1
  loc_110D5D5: CVarUnk
  loc_110D5DA: VerifyVarObj
  loc_110D5E6: LateIdStAd
  loc_110D60F: var_94 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (cattype is not NULL and cattype<>'') ORDER BY Name"
  loc_110D618: unk_4D3ABF.Execute var_94, var_B4, -1
  loc_110D647: CVarUnk
  loc_110D64C: VerifyVarObj
  loc_110D658: LateIdStAd
  loc_110D67A: var_90 = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrgApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName,R.DiscApp,I.Site_Code,I.LogSite_Code FROM ((((ItemMast I Inner join ItemGrp IG on IG.Code=I.ItemGroup) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code))Inner Join Depart R on R.Code=I.RestCode) Inner Join Depart K on K.Code=I.Kitchen Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_110D68A: unk_4D3ABF.Execute var_90 & "' or I.LOGSITE_CODE='HO') and I.GravyItem='Yes' and IG.Type IN ('Semi Finish')  ORDER BY R.Name,I.Name", var_B4, -1
  loc_110D6BC: Set var_88 = Me
  loc_110D6C5: var_90 = "INI"
  loc_110D6D3: Call Proc_133_39_EB7624(Proc_5_1_100EC1C(var_90, var_88, Me.DGItemCat, var_88, var_88, Me.DGItemGroup, var_88, var_88), Me.DGUnit, var_88, var_88)
  loc_110D6E7: Call 0.Method_arg_160 (var_88, Me.DGRest, var_88)
  loc_110D6F5: Call 0.Method_arg_164 (var_88, var_88)
  loc_110D6FD: Call Proc_133_41_13591E0(Me.DGHelp)
  loc_110D702: Exit Sub
  loc_110D703: ' Referenced from: 110D404
  loc_110D70B: Set var_88 = Err()
  loc_110D711: Call 0.Method_arg_2C (var_90)
  loc_110D732: MsgBox(CVar(var_90), &H40, "Information", var_E8, var_108)
  loc_110D745: Exit Sub
  loc_110D746: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6D178
  'Data Table: 4D3AB8
  loc_E6D127: Set global_64 = Nothing
  loc_E6D139: Set global_68 = Nothing
  loc_E6D14B: Set global_76 = Nothing
  loc_E6D15D: Set global_72 = Nothing
  loc_E6D16F: Set global_80 = Nothing
  loc_E6D176: Exit Sub
End Sub

Private Sub Form_Activate() 'E4E1D0
  'Data Table: 4D3AB8
  loc_E4E1A0: On Error Goto loc_E4E1CA
  loc_E4E1A7: Set var_88 = Me.TopCtrl1
  loc_E4E1AD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E4E1C2: If (CLng(CInt()) = &H2D) Then
  loc_E4E1C5:   Call TopCtrl1_UnknownEvent_15()
  loc_E4E1CA:   ' Referenced from: E4E1A0
  loc_E4E1CA: End If
  loc_E4E1CA: Proc_6_60_E63754()
  loc_E4E1CF: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AC64
  'Data Table: 4D3AB8
  loc_E2AC3C: On Error Goto loc_E2AC5B
  loc_E2AC53: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2AC5B: ' Referenced from: E2AC3C
  loc_E2AC5B: Proc_6_60_E63754(Shift)
  loc_E2AC60: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_9 'F3DB74
  'Data Table: 4D3AB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3DA6B: Me.DGUnit.Visible = False
  loc_F3DA8A: If (Me.RecordCount > 0) Then
  loc_F3DAC9:   Set var_B4 = Me.Txt
  loc_F3DACF:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3DAD7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3DB0A:   var_B0 = Me.Fields.Item("Name")
  loc_F3DB29:   Set var_B4 = Me.Txt
  loc_F3DB2F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3DB37:   var_B8.Text = CStr(var_B0.Value)
  loc_F3DB4D: End If
  loc_F3DB58: Set var_A8 = Me.Txt
  loc_F3DB5E: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1))
  loc_F3DB66: var_B0.SetFocus
  loc_F3DB72: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_1F 'E6F8F0
  'Data Table: 4D3AB8
  loc_E6F8AE: Proc_6_153_E91D24(Me.DGUnit, arg_14)
  loc_E6F8C5: Set var_8C = Me.FGPoint
  loc_E6F8E1: Proc_6_138_106E830(Me.DGUnit, global_84, CInt(1))
  loc_E6F8EF: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9F42C
  'Data Table: 4D3AB8
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9F2CF: Me.DGRest.Visible = False
  loc_F9F2EE: If (Me.RecordCount > 0) Then
  loc_F9F340:   Set var_CC = Me.Txt
  loc_F9F346:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9F34E:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9F3A6:   Set var_B4 = Me.DGRest
  loc_F9F3BD:   Set var_CC = Me.Txt
  loc_F9F3C3:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9F3CB:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9F3EB: End If
  loc_F9F409: Set var_B0 = Me.Txt
  loc_F9F40F: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9F417: var_B4.SetFocus
  loc_F9F42B: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6E82C
  'Data Table: 4D3AB8
  loc_E6E7EA: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E6E801: Set var_8C = Me.FGPoint
  loc_E6E81D: Proc_6_138_106E830(Me.DGRest, global_76, CInt(3))
  loc_E6E82B: Exit Sub
End Sub

Private Sub Command2_Click(Index As Integer) '111311C
  'Data Table: 4D3AB8
  Dim var_9C As Integer
  Dim var_A4 As TextBox
  Dim var_AC As String
  Dim unk_4D3ABF As Connection15
  Dim var_A8 As String
  Dim var_D6 As Integer
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_A0 As Frame
  loc_1112DE8: On Error Goto loc_11130D2
  loc_1112DEE: var_9C = Index
  loc_1112DF7: If (var_9C = 0) Then
  loc_1112E18:   Set var_A0 = Me.Txt
  loc_1112E1E:   Call 0.Method_Command2_Click0 (CInt(&HB), var_A4, var_A8, "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Where IG.Type IN ('Finish','Semi Finish')  And I.RestCode='")
  loc_1112E26:   var_D0 = var_A4.Tag
  loc_1112E2F:   var_AC = -1 & var_A8
  loc_1112E3F:   unk_4D3ABF.Execute var_AC & "'  And I.DispCode<>9999 order by I.Name", var_D4, var_9C
  loc_1112E78:   Set var_A0 = var_D4 
  loc_1112E84:   var_D6 = CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\ItemMastFinish.ttx")
  loc_1112E8E:   Set var_88 = var_A0
  loc_1112E94:   var_C0 = CVar(var_D6) 'Integer
  loc_1112E97:   var_98 = var_C0 'Variant
  loc_1112EB3:   var_A8 = MemVar_1F950B4 & "\ItemMastFinish.RPT"
  loc_1112EBC:   Call 0.Method_arg_1C (var_A8, var_C0, var_A0)
  loc_1112EC7:   MemVar_1F951E8 = var_A0
  loc_1112EE2:   Call 0.Method_arg_90 (var_A0, var_DC, var_9A)
  loc_1112EEA:   Call 0.Method_arg_24 (1, var_D6)
  loc_1112EF6:   For var_E0 =  To CInt(var_DC): &HFF = var_E0 'Integer
  loc_1112F0F:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1112F17:     Call 0.Method_arg_20 (var_A4)
  loc_1112F1F:     Call 0.Method_arg_30 (var_A8)
  loc_1112F35:     var_100 = Ucase(CVar(var_A8)) 'Variant
  loc_1112F65:     If (var_100 = Ucase("Title")) Then
  loc_1112F7B:       Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1112F83:       Call 0.Method_arg_20 (var_A4)
  loc_1112F8B:       Call 0.Method_arg_38 ("'Gravy Item List'")
  loc_1112F9A:     Else
  loc_1112FBC:       If (var_100 = Ucase("RestName")) Then
  loc_1112FD0:         Set var_A0 = Me.Txt
  loc_1112FD6:         Call 0.Method_Command2_Click0 (CInt(&HB), var_A4)
  loc_1112FDE:         var_A8 = var_A4.Text
  loc_1112FE7:         var_AC = "'" & var_A8
  loc_1113001:         Call 0.Method_arg_90 (var_D4, CLng(var_9A))
  loc_1113009:         Call 0.Method_arg_20 (var_104)
  loc_1113011:         Call 0.Method_arg_38 (var_AC & "'")
  loc_111302A:       End If
  loc_111302A:     End If
  loc_111302D:   Next var_E0 'Integer
  loc_111304B:   Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_1113053:   Call 0.Method_arg_2C (var_114)
  loc_1113061:   Call 0.Method_arg_150 (var_124)
  loc_111306C:   Call 0.Method_arg_50 (var_A8)
  loc_1113076:   Set var_A4 = Nothing
  loc_1113090:   Set var_A0 = MemVar_1F951E8 
  loc_111309C:   Proc_6_99_1484404(var_A0, 0, var_A8)
  loc_11130A7:   MemVar_1F951E8 = var_A0
  loc_11130B5: End If
  loc_11130BA: Set var_88 = Nothing
  loc_11130C9: Me.Frame1.Visible = False
  loc_11130D1: Exit Sub
  loc_11130D2: ' Referenced from: 1112DE8
  loc_11130DA: Set var_A0 = Err()
  loc_11130E0: Call 0.Method_arg_2C (var_A8, &HFF)
  loc_11130EB: Call 0.Method_arg_50 (var_AC)
  loc_1113107: MsgBox(CVar(var_A8), &H10, CVar(var_AC), var_138, var_148)
  loc_111311A: Exit Sub
End Sub

Private Sub Command1_Click() '1041220
  'Data Table: 4D3AB8
  Dim var_9C As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim unk_4D3ABF As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_94 As TextBox
  Dim var_FC As Boolean
  Dim var_B8 As String
  loc_1040FF0: Set var_8C = New FrmConsumMast
  loc_1041011: Set var_90 = Me.Frame1
  loc_1041017: Call 0.Method_Command1_Click0 (CInt(0), var_94, var_98, "Select FinItem+RestCode+Convert(Varchar(11),AppDate,103) As SearchCode From BOM Where FinItem='")
  loc_104101F: var_D4 = FrmConsumMast.Frame1.Tag
  loc_1041028: var_9C = -1 & var_98
  loc_104102F: var_AC = var_9C & "' And RestCode='"
  loc_1041040: Set var_A0 = Me.Txt
  loc_1041046: Call 0.Method_Command1_Click0 (CInt(8), var_A4, var_A8)
  loc_104104E: var_AC = var_A4.Tag
  loc_1041067: unk_4D3ABF.Execute var_D8 & var_A8 & "'", , 
  loc_1041072: Set var_88 = var_D8
  loc_10410A5: If (var_88.EOF = 0) Then
  loc_10410B5:   Me.Global.Load var_8C
  loc_10410D4:   var_94 = var_88.Fields.Item("SearchCode")
  loc_10410DC:   var_D4 = CVar(var_94) 'Address
  loc_10410E4:   Call var_8C.SEARCHBACK
  loc_10410F3:   Call var_8C.TopCtrl1_eEdit
  loc_10410FC: Else
  loc_10410FF:   Call var_8C.TopCtrl1_eAdd
  loc_1041105:   var_C4 = 0
  loc_1041116:   Set var_90 = Me.Txt
  loc_104111C:   Call 0.Method_Command1_Click0 (CInt(0), var_94)
  loc_1041124:   var_D4 = CVar(var_94) 'Address
  loc_104112C:   LateMemCallSt
  loc_1041146:   Set var_90 = Me.Txt
  loc_104114C:   Call 0.Method_Command1_Click0 (CInt(0), var_94, var_98, var_8C)
  loc_1041154:   var_D4 = var_94.Tag
  loc_1041160:   var_C4 = 0
  loc_1041171:   var_8C.Txt.Tag = var_C4
  loc_104118E:   Set var_90 = var_94(CInt(8))
  loc_1041194:   Call 0.Method_Command1_Click0 (CVar(var_98), var_C4)
  loc_10411BC:   Set var_90 = var_94(CInt(8))
  loc_10411C2:   Call 0.Method_Command1_Click0 (var_98)
  loc_10411CA:   var_D4 = var_8C.TextBox.Tag
  loc_10411DE:   CVar(var_94).Tag = CVar(var_98)
  loc_10411FC:   var_8C.Mode = 1
  loc_1041200:   var_C4 = 0
  loc_1041206:   var_FC = True
  loc_104120D:   Call var_8C.Txt_Validate
  loc_1041213: End If
  loc_1041216: Call var_8C.Show
  loc_104121C: Exit Sub
  loc_104121D: var_B8 = var_FC
End Sub

Private Sub TopCtrl1_UnknownEvent_A '102BF38
  'Data Table: 4D3AB8
  Dim var_88 As CheckBox
  Dim var_90 As TextBox
  loc_102BD00: On Error Goto loc_102BEF5
  loc_102BD03: Call Proc_133_40_F21DD8()
  loc_102BD23: If (Me.Check1.Value = 1) Then
  loc_102BD26:   Call Proc_133_41_13591E0()
  loc_102BD2B: End If
  loc_102BD39: Set var_88 = Me.Txt
  loc_102BD3F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_90)
  loc_102BD47: var_90.Text = vbNullString
  loc_102BD61: Set var_88 = Me.Txt
  loc_102BD67: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_102BD6F: var_90.Tag = vbNullString
  loc_102BD89: Set var_88 = Me.Txt
  loc_102BD8F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_102BD97: var_90.Text = vbNullString
  loc_102BDB1: Set var_88 = Me.Txt
  loc_102BDB7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102BDBF: var_90.Text = vbNullString
  loc_102BDD9: Set var_88 = Me.Txt
  loc_102BDDF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102BDE7: var_90.Tag = vbNullString
  loc_102BE01: Set var_88 = Me.Txt
  loc_102BE07: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_90)
  loc_102BE29: Set var_88 = Me.Txt
  loc_102BE2F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_90)
  loc_102BE37: var_90.Tag = vbNullString
  loc_102BE66: Call Proc_133_39_EB7624(Proc_5_1_100EC1C("ADD", Me))
  loc_102BE7F: Set var_88 = Me.Txt
  loc_102BE85: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102BE8D: var_94 = vbNullString
  loc_102BEA4: If (var_94 = vbNullString) Then
  loc_102BEB2:   Set var_88 = Me.Txt
  loc_102BEB8:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102BEC0:   var_90.SetFocus
  loc_102BECF: Else
  loc_102BEDA:   Set var_88 = Me.Txt
  loc_102BEE0:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102BEE8:   var_90.SetFocus
  loc_102BEF4: End If
  loc_102BEF4: Exit Sub
  loc_102BEF5: ' Referenced from: 102BD00
  loc_102BEFD: Set var_88 = Err()
  loc_102BF03: Call 0.Method_arg_2C (var_94)
  loc_102BF24: MsgBox(CVar(var_94), &H40, "Information", var_E4, var_104)
  loc_102BF37: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBB7A0
  'Data Table: 4D3AB8
  loc_EBB70C: On Error Goto loc_EBB797
  loc_EBB746: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBB755:   Set var_110 = Me
  loc_EBB76C:   Call Proc_133_39_EB7624(Proc_5_1_100EC1C("INI", var_110))
  loc_EBB777:   Call Proc_133_41_13591E0(global_64)
  loc_EBB77F: Else
  loc_EBB785:   Call 0.Method_arg_1E8 (var_110)
  loc_EBB78D:   Call var_110.SetFocus
  loc_EBB796: End If
  loc_EBB796: Exit Sub
  loc_EBB797: ' Referenced from: EBB70C
  loc_EBB797: Proc_6_60_E63754()
  loc_EBB79C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1313D90
  'Data Table: 4D3AB8
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4D3ABF As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1313664: On Error Goto loc_1313D39
  loc_1313675: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_1313678:   Exit Sub
  loc_1313679: End If
  loc_13136AB: var_D4 = "KOT"
  loc_13136F3: If (Proc_6_108_101061C(MemVar_1F95044, "KOT", "ITEM", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_13136F6:   Exit Sub
  loc_13136F7: End If
  loc_1313729: var_D4 = "STOCK"
  loc_1313771: If (Proc_6_108_101061C(MemVar_1F95044, "STOCK", "ITEM", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_1313774:   Exit Sub
  loc_1313775: End If
  loc_13137EF: If (Proc_6_108_101061C(MemVar_1F95044, "BOM", "FinItem", CStr(Me.Fields.Item("Code").Value), 0, "Consumption") = 0) Then
  loc_13137F2:   Exit Sub
  loc_13137F3: End If
  loc_131382A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_131382F:   var_96 = 0
  loc_131383B:   unk_4D3ABF.BeginTrans var_D0
  loc_1313842:   var_96 = &HFF
  loc_1313856:   var_94 = Me.Bookmark 'Variant
  loc_13138B0:   unk_4D3ABF.Execute CStr("Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_13138FB:   var_168 = 0
  loc_131390E:   var_160 = 0
  loc_1313919:   var_15C = 0
  loc_131392C:   var_154 = 0
  loc_1313937:   var_150 = 0
  loc_131394A:   var_148 = 0
  loc_1313993:   Proc_154_5_10E3BD4(MemVar_1F95044, "ItemMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1313A11:   unk_4D3ABF.Execute CStr("Delete From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_1313A5C:   var_168 = 0
  loc_1313A6F:   var_160 = 0
  loc_1313A7A:   var_15C = 0
  loc_1313A8D:   var_154 = 0
  loc_1313A98:   var_150 = 0
  loc_1313AAB:   var_148 = 0
  loc_1313AF4:   Proc_154_5_10E3BD4(MemVar_1F95044, "ItemRate", "ItemCode", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1313B64:   var_118 = "Delete From STOCK Where ITEM='" & Me.Fields.Item("Code").Value & "'" 
  loc_1313B72:   unk_4D3ABF.Execute CStr(var_118), var_138, -1
  loc_1313BBD:   var_168 = 0
  loc_1313BD0:   var_160 = 0
  loc_1313BDB:   var_15C = 0
  loc_1313BEE:   var_154 = 0
  loc_1313BF9:   var_150 = 0
  loc_1313C0C:   var_148 = 0
  loc_1313C4C:   var_B4 = "Stock"
  loc_1313C55:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "Item", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1313C83:   unk_4D3ABF.CommitTrans
  loc_1313C8A:   var_96 = 0
  loc_1313C98:   Me.Requery -1
  loc_1313CA8:   Me.Requery -1
  loc_1313CB8:   Me.Requery -1
  loc_1313CD8:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1313CE5:     Me.Bookmark = var_94
  loc_1313CED:   Else
  loc_1313D01:     If (Me.EOF = 0) Then
  loc_1313D0A:       Me.MoveLast
  loc_1313D0F:     End If
  loc_1313D0F:   End If
  loc_1313D0F:   Call Proc_133_41_13591E0(var_96, var_148, 0, var_150, var_154)
  loc_1313D30:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_1313D38: End If
  loc_1313D38: Exit Sub
  loc_1313D39: ' Referenced from: 1313664
  loc_1313D3F: If (var_96 = &HFF) Then
  loc_1313D48:   unk_4D3ABF.RollbackTrans
  loc_1313D4D: End If
  loc_1313D55: Set var_9C = Err()
  loc_1313D5B: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_1313D7C: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_1313D8F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FADC64
  'Data Table: 4D3AB8
  Dim Me As Variant
  Dim var_98 As TextBox
  loc_FADAD8: On Error Goto loc_FADC21
  loc_FADAE9: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_FADAEC:   Exit Sub
  loc_FADAED: End If
  loc_FADB04: If (Me.RecordCount > 0) Then
  loc_FADB2A:   Call Proc_133_39_EB7624(Proc_5_1_100EC1C("EDIT", Me))
  loc_FADB43:   Set var_90 = Me.Txt
  loc_FADB49:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_98)
  loc_FADB51:   var_8C = var_98.Text
  loc_FADB78:   Set var_90 = Me.Txt
  loc_FADB7E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_98, 0)
  loc_FADB86:   var_98.Enabled = CInt(var_8C)
  loc_FADB9D:   Set var_90 = Me.Txt
  loc_FADBA3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FADBAB:   var_98.SetFocus
  loc_FADBC2:   If (global_92 = "Y") Then
  loc_FADBD2:     Set var_90 = Me.Txt
  loc_FADBD8:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_FADBE0:     var_98.Enabled = False
  loc_FADBEC:   End If
  loc_FADBEF: Else
  loc_FADC10:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FADC20: End If
  loc_FADC20: Exit Sub
  loc_FADC21: ' Referenced from: FADAD8
  loc_FADC29: Set var_90 = Err()
  loc_FADC2F: Call 0.Method_arg_2C (var_8C)
  loc_FADC50: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FADC63: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BFE0
  'Data Table: 4D3AB8
  loc_E1BFD5: Me.Global.Unload Me
  loc_E1BFDD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F24540
  'Data Table: 4D3AB8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F24440: On Error Goto loc_F244D8
  loc_F2444C: var_88 = Me.RecordCount
  loc_F2445A: If (var_88 <= 0) Then
  loc_F24463:   var_B8 = "Information"
  loc_F2447E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2448E:   Exit Sub
  loc_F2448F: End If
  loc_F24496: var_10C = "SELECT I.Code as SearchCode,I.Name,I.Unit,IG.Name as ItemGrpName,IC.Name As ItemCategory,convert(varchar(8),I.Dispcode,103),Depart.Name as Resname,convert(varchar(50),I.SaleRate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM ((ItemMast I Inner join ItemGrp IG on IG.Code=I.ItemGroup) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code)  Inner join depart on I.restcode=depart.code  Where (Depart.LOGSITE_CODE='" & MemVar_1F95078
  loc_F2449D: MemVar_1F950E4 = var_10C & "' or Depart.LOGSITE_CODE='HO') and Depart.RestType='Kitchen' and IG.Type IN ('Semi Finish') Order by I.Name"
  loc_F244A7: var_10C = "3000,1500,2000,1000,1000,2000,500"
  loc_F244AD: Proc_6_126_F1C850(var_10C)
  loc_F244BB: MemVar_1F95120 = Me
  loc_F244D2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F244D7: Exit Sub
  loc_F244D8: ' Referenced from: F24440
  loc_F244E0: Set var_110 = Err()
  loc_F244E6: Call 0.Method_arg_1C (var_88)
  loc_F244F7: If (var_88 <> 0) Then
  loc_F24502:   Set var_110 = Err()
  loc_F24508:   Call 0.Method_arg_2C (var_10C)
  loc_F24529:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2453C: End If
  loc_F2453C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3BD08
  'Data Table: 4D3AB8
  loc_E3BCF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3BD00: Call Proc_133_41_13591E0(global_64)
  loc_E3BD05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3CDE8
  'Data Table: 4D3AB8
  loc_E3CDD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CDE0: Call Proc_133_41_13591E0(global_64)
  loc_E3CDE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3C608
  'Data Table: 4D3AB8
  loc_E3C5F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C600: Call Proc_133_41_13591E0(global_64)
  loc_E3C605: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E382E8
  'Data Table: 4D3AB8
  loc_E382D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E382E0: Call Proc_133_41_13591E0(global_64)
  loc_E382E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E66F68
  'Data Table: 4D3AB8
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E66F26: Me.Frame1.Top = CDbl(0)
  loc_E66F3A: Me.Frame1.Visible = True
  loc_E66F4D: Set var_88 = Me.Txt
  loc_E66F53: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB))
  loc_E66F5B: var_8C.SetFocus
  loc_E66F67: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E642B8
  'Data Table: 4D3AB8
  Dim Me As Recordset15
  loc_E6426F: Me.Requery -1
  loc_E6427F: Me.Requery -1
  loc_E6428F: Me.Requery -1
  loc_E6429F: Me.Requery -1
  loc_E642AF: Me.Requery -1
  loc_E642B4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14B35A8
  'Data Table: 4D3AB8
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim unk_4D3ABF As Connection15
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_F0 As String
  Dim var_100 As Variant
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  Dim var_120 As Variant
  Dim var_134 As TextBox
  Dim var_148 As TextBox
  Dim var_15C As TextBox
  Dim var_170 As TextBox
  Dim var_B8 As Variant
  Dim var_2F4 As TextBox
  Dim var_140 As String
  Dim var_168 As String
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  Dim var_2AC As Variant
  Dim var_338 As Variant
  Dim var_3DC As Variant
  Dim var_130 As Field20
  loc_14B29B4: On Error Goto loc_14B3555
  loc_14B29BB: var_86 = CByte(0) 'Byte
  loc_14B29CA: Set var_98 = Me.Txt
  loc_14B29D0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14B29F9: If (Proc_183_19_E8E68C(var_9C, "Name") = 0) Then
  loc_14B2A03:   Call Txt_GotFocus(CInt(0))
  loc_14B2A08:   Exit Sub
  loc_14B2A09: End If
  loc_14B2A14: Set var_98 = Me.Txt
  loc_14B2A1A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_14B2A43: If (Proc_183_19_E8E68C(var_9C, "Unit") = 0) Then
  loc_14B2A4D:   Call Txt_GotFocus(CInt(1))
  loc_14B2A52:   Exit Sub
  loc_14B2A53: End If
  loc_14B2A5E: Set var_98 = Me.Txt
  loc_14B2A64: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_14B2A8D: If (Proc_183_19_E8E68C(var_9C, "Item Group Name") = 0) Then
  loc_14B2A97:   Call Txt_GotFocus(CInt(2))
  loc_14B2A9C:   Exit Sub
  loc_14B2A9D: End If
  loc_14B2AA8: Set var_98 = Me.Txt
  loc_14B2AAE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_14B2AD7: If (Proc_183_19_E8E68C(var_9C, "Item Category") = 0) Then
  loc_14B2AE1:   Call Txt_GotFocus(CInt(6))
  loc_14B2AE6:   Exit Sub
  loc_14B2AE7: End If
  loc_14B2AF2: Set var_98 = Me.Txt
  loc_14B2AF8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C)
  loc_14B2B21: If (Proc_183_19_E8E68C(var_9C, "Kitchen") = 0) Then
  loc_14B2B2B:   Call Txt_GotFocus(CInt(3))
  loc_14B2B30:   Exit Sub
  loc_14B2B31: End If
  loc_14B2B34: Call Proc_133_42_12C6918(var_A6)
  loc_14B2B3F: If (var_A6 = &HFF) Then
  loc_14B2B42:   Exit Sub
  loc_14B2B43: End If
  loc_14B2B47: Set var_98 = Me.TopCtrl1
  loc_14B2B4D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_9C)
  loc_14B2B66: If (CStr() = "Add") Then
  loc_14B2B6F:   var_DC = 0
  loc_14B2B8C:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F95070
  loc_14B2B9C:   unk_4D3ABF.Execute CStr() & "'", var_B8, -1
  loc_14B2BA4:   var_98 = var_98.Fields
  loc_14B2BAC:   var_DC = var_9C.Item(var_9C)
  loc_14B2BB4:   var_A0 = var_A0.Value
  loc_14B2BED:   var_100 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_14B2C1B:   var_110 = (1 + Format(CStr(var_EC), "000000"))
  loc_14B2C26:   global_100 = CStr(var_110)
  loc_14B2C3B: Else
  loc_14B2C58:   var_9C = Me.Fields.Item("Code")
  loc_14B2C6F:   global_100 = CStr(var_9C.Value)
  loc_14B2C80: End If
  loc_14B2C89: unk_4D3ABF.BeginTrans var_114
  loc_14B2C92: var_86 = CByte(1) 'Byte
  loc_14B2C9A: Set var_98 = Me.TopCtrl1
  loc_14B2CA0: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_14B2CB9: If (CStr(var_100) = "Add") Then
  loc_14B2CCA:   Set var_98 = Me.Txt
  loc_14B2CD0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_14B2CEB:   Set var_A0 = Me.Txt
  loc_14B2CF1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120)
  loc_14B2D0C:   Set var_130 = Me.Txt
  loc_14B2D12:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_134)
  loc_14B2D2D:   Set var_144 = Me.Txt
  loc_14B2D33:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_148)
  loc_14B2D4E:   Set var_158 = Me.Txt
  loc_14B2D54:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C)
  loc_14B2D6F:   Set var_16C = Me.Txt
  loc_14B2D75:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_170)
  loc_14B2D8D:   Set var_180 = Me.Txt
  loc_14B2D93:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_14B2DB7:   Set var_198 = Me.Txt
  loc_14B2DBD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_19C)
  loc_14B2DE4:   Proc_6_7_F26918(var_27C, Date)
  loc_14B2DF7:   Set var_2F0 = Me.Txt
  loc_14B2DFD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2F4)
  loc_14B2E1E:   var_A4 = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,GravyItem,LogSite_Code) " & " Values ('"
  loc_14B2E6E:   var_168 = var_A4 & global_100 & "','" & var_9C.Text & "','" & var_120.Tag & "'," & var_134.Text & ",'" & var_148.Text & "','" & var_15C.Tag
  loc_14B2EAC:   var_1FC = CVar(var_168 & "','" & var_170.Tag & "','") & Left(CVar(var_184), 1) & "','" & Left(CVar(var_19C), 1) & "', '" & CVar(MemVar_1F95070) 
  loc_14B2F01:   var_338 = var_1FC & "','" & CVar(MemVar_1F950C8) & "'," & var_27C & ",'A','" & CVar(global_56) & "','" & CVar(var_2F4.Tag) & "'," 
  loc_14B2F36:   unk_4D3ABF.Execute CStr(var_338 & CVar(var_94) & ",'Yes','" & CVar(MemVar_1F95078) & "')"), var_3DC, -1
  loc_14B2FC9: Else
  loc_14B2FD7:   Set var_98 = Me.Txt
  loc_14B2FDD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_14B2FE5:   var_3E0 = var_9C.Text
  loc_14B2FF8:   Set var_A0 = Me.Txt
  loc_14B2FFE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_120)
  loc_14B3019:   Set var_130 = Me.Txt
  loc_14B301F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_134)
  loc_14B303A:   Set var_144 = Me.Txt
  loc_14B3040:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_148)
  loc_14B305B:   Set var_158 = Me.Txt
  loc_14B3061:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C)
  loc_14B307C:   Set var_16C = Me.Txt
  loc_14B3082:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_170)
  loc_14B309A:   Set var_180 = Me.Txt
  loc_14B30A0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_14B30AD:   var_B8 = CVar(var_184) 'Address
  loc_14B30B4:   var_EC = Left(var_B8, 1)
  loc_14B30C4:   Set var_198 = Me.Txt
  loc_14B30CA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_19C)
  loc_14B30F1:   Proc_6_7_F26918(var_27C, Date)
  loc_14B3104:   Set var_2F0 = Me.Txt
  loc_14B310A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2F4)
  loc_14B3122:   Set var_3E0 = Me.Txt
  loc_14B3128:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_3E4)
  loc_14B317F:   var_140 = "UPDATE ItemMast SET Name='" & var_A4 & "',RestCode='" & var_120.Tag & "',DispCode=" & var_134.Text & ",Unit='" & var_148.Text
  loc_14B31B8:   var_1CC = CVar(var_140 & "',ItemGroup='" & var_15C.Tag & "',ItemCatCode='" & var_170.Tag & "',DiscApp='") & var_EC & "',RateEdit='" & Left(CVar(var_19C), 1) 
  loc_14B31F7:   var_2AC = var_1CC & "',SITE_CODE='" & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_27C & " ,U_AE='E',TYPE='" 
  loc_14B323B:   var_3DC = var_2AC & CVar(global_56) & "',Kitchen='" & CVar(var_2F4.Tag) & "',SaleRate=" & CVar(var_94) & ",SChrgApp='" & Left(CVar(var_3E4), 1) 
  loc_14B3268:   unk_4D3ABF.Execute CStr(var_3DC & "' WHERE Code='" & CVar(global_100) & "'"), var_434, -1
  loc_14B32FC: End If
  loc_14B3329: Set var_98 = Me.Txt
  loc_14B332F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4, "Select Count(*) From UnitMast Where Name='", var_B8, -1, var_A0)
  loc_14B3350: unk_4D3ABF.Execute 0 & var_A4 & "'", var_130, var_EC
  loc_14B3358: var_438 = var_A0.Fields
  loc_14B3360:  = var_9C.Text.Item(var_EC)
  loc_14B3368:  = var_130.Value
  loc_14B3395: If (var_EC <= 0) Then
  loc_14B33BD:   Set var_98 = Me.Txt
  loc_14B33C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)" & " Values('")
  loc_14B33CB:   var_1CC = var_9C.Text
  loc_14B33D4:   var_F0 = -1 & var_A4
  loc_14B33F7:   var_100 = CVar(0 & var_A4 & "'" & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_14B3408:   Proc_6_7_F26918(var_EC, Date)
  loc_14B3410:   var_110 = var_100 & var_EC 
  loc_14B3414:   var_CC = ",'A','"
  loc_14B343A:   unk_4D3ABF.Execute CStr(var_110 & var_CC & CVar(MemVar_1F95078) & "')"), var_A0, 
  loc_14B346E: End If
  loc_14B3474: unk_4D3ABF.CommitTrans
  loc_14B347D: var_86 = CByte(0) 'Byte
  loc_14B348C: Me.Requery -1
  loc_14B349C: Me.Requery -1
  loc_14B34AC: Me.Requery -1
  loc_14B34BC: Me.Requery -1
  loc_14B34E9: Me.Find "Code='" & global_100 & "'", 0, 1
  loc_14B34F9: Set var_98 = Me.TopCtrl1
  loc_14B34FF: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_CC)
  loc_14B3518: If (CStr() = "Add") Then
  loc_14B351B:   Call TopCtrl1_UnknownEvent_A()
  loc_14B3520:   Exit Sub
  loc_14B3521: End If
  loc_14B3536: var_A4 = "INI"
  loc_14B3544: Call Proc_133_39_EB7624(Proc_5_1_100EC1C(var_A4, Me))
  loc_14B354F: Call Proc_133_41_13591E0(global_64)
  loc_14B3554: Exit Sub
  loc_14B3555: ' Referenced from: 14B29B4
  loc_14B355E: If (CInt(var_86) = 1) Then
  loc_14B3567:   unk_4D3ABF.RollbackTrans
  loc_14B356C: End If
  loc_14B3574: Set var_98 = Err()
  loc_14B357A: Call 0.Method_arg_2C (var_A4)
  loc_14B3593: MsgBox(CVar(var_A4), &H10, var_EC, var_100, var_110)
  loc_14B35A6: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F379D4
  'Data Table: 4D3AB8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F378CB: Me.DGHelp.Visible = False
  loc_F378EA: If (Me.RecordCount > 0) Then
  loc_F37929:   Set var_B4 = Me.Txt
  loc_F3792F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37937:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3796A:   var_B0 = Me.Fields.Item("Name")
  loc_F37989:   Set var_B4 = Me.Txt
  loc_F3798F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37997:   var_B8.Text = CStr(var_B0.Value)
  loc_F379AD: End If
  loc_F379B8: Set var_A8 = Me.Txt
  loc_F379BE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F379C6: var_B0.SetFocus
  loc_F379D2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6EF1C
  'Data Table: 4D3AB8
  loc_E6EEDA: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E6EEF1: Set var_8C = Me.FGPoint
  loc_E6EF0D: Proc_6_138_106E830(Me.DGHelp, global_68, CInt(0))
  loc_E6EF1B: Exit Sub
End Sub

Public Function global_52Get() '4D4C18
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4D4C27
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6BB4
  'Data Table: 4D3AB8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC6B2A: On Error Goto loc_EC6B6F
  loc_EC6B33: Me.MoveFirst
  loc_EC6B4D: var_8C = "code='" & MyValue
  loc_EC6B5D: Me.Find var_8C & "'", 0, 1
  loc_EC6B69: Call Proc_133_41_13591E0(var_A0)
  loc_EC6B6E: Exit Sub
  loc_EC6B6F: ' Referenced from: EC6B2A
  loc_EC6B77: Set var_A4 = Err()
  loc_EC6B7D: Call 0.Method_arg_2C (var_8C)
  loc_EC6B9E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6BB1: Exit Sub
  loc_EC6BB2: Exit Sub
End Sub

Public Sub Proc_133_39_EB7624(arg_C) 'EB7624
  'Data Table: 4D3AB8
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_EB7592: Set var_8C = Me.Txt
  loc_EB7598: Call 0.Method_Proc_133_39_EB7624C (var_8E, var_86)
  loc_EB75A8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB75BE:   Set var_8C = Me.Txt
  loc_EB75C4:   Call 0.Method_Proc_133_39_EB76240 (CInt(var_86), var_98)
  loc_EB75CC:   var_98.Enabled = arg_C
  loc_EB75DB: Next var_92 'Byte
  loc_EB75EF: Me.Command1.Enabled = Not(arg_C)
  loc_EB7606: Set var_8C = Me.Txt
  loc_EB760C: Call 0.Method_Proc_133_39_EB76240 (CInt(&HB), var_98)
  loc_EB7614: var_98.Enabled = Not(arg_C)
  loc_EB7620: Exit Sub
End Sub

Public Sub Proc_133_40_F21DD8
  'Data Table: 4D3AB8
  Dim var_94 As TextBox
  loc_F21CE2: Set var_90 = Me.Txt
  loc_F21CE8: Call 0.Method_Proc_133_40_F21DD80 (CInt(1), var_94)
  loc_F21CF8: var_8C = var_94.Text
  loc_F21D10: Set var_90 = Me.Txt
  loc_F21D16: Call 0.Method_Proc_133_40_F21DD8C (var_9A, var_86)
  loc_F21D26: For var_9E =  To CByte((var_9A - 1)): CByte(0) = var_9E 'Byte
  loc_F21D3C:   Set var_90 = Me.Txt
  loc_F21D42:   Call 0.Method_Proc_133_40_F21DD80 (CInt(var_86), var_94)
  loc_F21D4A:   var_94.Text = vbNullString
  loc_F21D59: Next var_9E 'Byte
  loc_F21D6D: Set var_90 = Me.Txt
  loc_F21D73: Call 0.Method_Proc_133_40_F21DD80 (CInt(4), var_94)
  loc_F21D7B: var_94.Text = "No"
  loc_F21D95: Set var_90 = Me.Txt
  loc_F21D9B: Call 0.Method_Proc_133_40_F21DD80 (CInt(5), var_94)
  loc_F21DA3: var_94.Text = "No"
  loc_F21DBD: Set var_90 = Me.Txt
  loc_F21DC3: Call 0.Method_Proc_133_40_F21DD80 (CInt(1), var_94)
  loc_F21DCB: var_94.Text = var_8C
  loc_F21DD7: Exit Sub
End Sub

Public Sub Proc_133_41_13591E0
  'Data Table: 4D3AB8
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_A4 As Variant
  Dim var_C0 As Variant
  Dim var_BC As Fields15
  Dim var_130 As Variant
  Dim unk_4D3ABF As Connection15
  Dim var_88 As Recordset15
  loc_13589C8: On Error Goto loc_13591D7
  loc_13589D1: Proc_183_45_E5CCA8(global_64)
  loc_13589ED: If (Me.RecordCount <= 0) Then
  loc_13589F0:   Call Proc_133_40_F21DD8()
  loc_13589F8: Else
  loc_1358A2C:   global_56 = CStr(Me.Fields.Item("Type").Value)
  loc_1358A71:   global_100 = CStr(Me.Fields.Item("Name").Value)
  loc_1358ABE:   Set var_BC = Me.Txt
  loc_1358AC4:   Call 0.Method_Proc_133_41_13591E00 (CInt(0), var_C0)
  loc_1358ACC:   var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1358B1E:   Set var_BC = Me.Txt
  loc_1358B24:   Call 0.Method_Proc_133_41_13591E00 (CInt(&HA), var_C0)
  loc_1358B2C:   var_C0.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_1358B7E:   Set var_BC = Me.Txt
  loc_1358B84:   Call 0.Method_Proc_133_41_13591E00 (CInt(0), var_C0)
  loc_1358B8C:   var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1358BDB:   Set var_BC = Me.Txt
  loc_1358BE1:   Call 0.Method_Proc_133_41_13591E00 (CInt(1), var_C0)
  loc_1358BE9:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_1358C36:   Set var_BC = Me.Txt
  loc_1358C3C:   Call 0.Method_Proc_133_41_13591E00 (CInt(2), var_C0)
  loc_1358C44:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGrpName")))
  loc_1358C91:   Set var_BC = Me.Txt
  loc_1358C97:   Call 0.Method_Proc_133_41_13591E00 (CInt(2), var_C0)
  loc_1358C9F:   var_C0.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGroup")))
  loc_1358CEC:   Set var_BC = Me.Txt
  loc_1358CF2:   Call 0.Method_Proc_133_41_13591E00 (CInt(6), var_C0)
  loc_1358CFA:   var_C0.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCatCode")))
  loc_1358D47:   Set var_BC = Me.Txt
  loc_1358D4D:   Call 0.Method_Proc_133_41_13591E00 (CInt(6), var_C0)
  loc_1358D55:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCategory")))
  loc_1358DA2:   Set var_BC = Me.Txt
  loc_1358DA8:   Call 0.Method_Proc_133_41_13591E00 (CInt(4), var_C0)
  loc_1358DB0:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Disc")))
  loc_1358DFD:   Set var_BC = Me.Txt
  loc_1358E03:   Call 0.Method_Proc_133_41_13591E00 (CInt(5), var_C0)
  loc_1358E0B:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("REdit")))
  loc_1358E58:   Set var_BC = Me.Txt
  loc_1358E5E:   Call 0.Method_Proc_133_41_13591E00 (CInt(8), var_C0)
  loc_1358E66:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_1358EB3:   Set var_BC = Me.Txt
  loc_1358EB9:   Call 0.Method_Proc_133_41_13591E00 (CInt(8), var_C0)
  loc_1358EC1:   var_C0.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_1358F0E:   Set var_BC = Me.Txt
  loc_1358F14:   Call 0.Method_Proc_133_41_13591E00 (CInt(3), var_C0)
  loc_1358F1C:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("KitchenName")))
  loc_1358F69:   Set var_BC = Me.Txt
  loc_1358F6F:   Call 0.Method_Proc_133_41_13591E00 (CInt(3), var_C0)
  loc_1358F77:   var_C0.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")))
  loc_1358FBC:   global_92 = Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")))
  loc_1359032:   var_C0 = Me.Fields.Item("RestCode")
  loc_1359042:   var_130 = "Select Rate,Appdate From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "' And RestCode='" & var_C0.Value 
  loc_1359059:   unk_4D3ABF.Execute CStr(var_130 & "' Order By AppDate Desc "), var_170, -1
  loc_1359064:   Set var_88 = var_174
  loc_135909C:   If (var_88.RecordCount > 0) Then
  loc_13590F1:     Set var_BC = Me.Txt
  loc_13590F7:     Call 0.Method_Proc_133_41_13591E00 (CInt(7), var_C0, CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_13590FF:     var_C0.Text = 1
  loc_1359133:     var_A4 = var_88.Fields.Item("AppDate")
  loc_1359152:     Set var_BC = Me.Txt
  loc_1359158:     Call 0.Method_Proc_133_41_13591E00 (CInt(9), var_C0, CStr(var_A4.Value))
  loc_1359160:     var_C0.Text = 1
  loc_1359179:   Else
  loc_1359187:     Set var_90 = Me.Txt
  loc_135918D:     Call 0.Method_Proc_133_41_13591E00 (CInt(7), var_A4)
  loc_1359195:     var_A4.Text = vbNullString
  loc_13591AF:     Set var_90 = Me.Txt
  loc_13591B5:     Call 0.Method_Proc_133_41_13591E00 (CInt(9), var_A4)
  loc_13591BD:     var_A4.Text = vbNullString
  loc_13591C9:   End If
  loc_13591C9: End If
  loc_13591C9: Call Proc_133_43_FB5484(var_174)
  loc_13591D3: Set var_88 = Nothing
  loc_13591D6: Exit Sub
  loc_13591D7: ' Referenced from: 13589C8
  loc_13591D7: Proc_6_60_E63754()
  loc_13591DC: Exit Sub
End Sub

Public Sub Proc_133_42_12C6918
  'Data Table: 4D3AB8
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As Variant
  Dim unk_4D3ABF As Connection15
  Dim var_E0 As Variant
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_C0 As String
  Dim var_B8 As Recordset15
  Dim var_AC As String
  Dim var_A0 As Variant
  loc_12C62E7: If (Me.RecordCount = 0) Then
  loc_12C62EA:   Proc_133_42_12C6918 = 
  loc_12C62F0: End If
  loc_12C62F4: Set var_90 = Me.TopCtrl1
  loc_12C62FA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_12C6313: If (CStr() = "Add") Then
  loc_12C631C:   var_F4 = 0
  loc_12C6351:   Set var_90 = Me.Txt
  loc_12C6357:   Call 0.Method_Proc_133_42_12C69180 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12C6380:   Set var_B8 = Me.Txt
  loc_12C6386:   Call 0.Method_Proc_133_42_12C69180 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_12C638E:   var_F4 = var_BC.Text
  loc_12C63A7:   unk_4D3ABF.Execute var_F8 & var_C0 & "' And Type IN ('Finish','Semi Finish')", var_108, 
  loc_12C63AF:    = var_A8.Tag.Fields
  loc_12C63B7:    = var_E4.Item()
  loc_12C63BF:    = var_F8.Value
  loc_12C63FA:   If (var_108 > 0) Then
  loc_12C6408:     var_108 = "Information"
  loc_12C6418:     var_A0 = "Duplicate Name"
  loc_12C641E:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12C6439:     Set var_90 = Me.Txt
  loc_12C643F:     Call 0.Method_Proc_133_42_12C69180 (CInt(0))
  loc_12C6447:     var_A8.SetFocus
  loc_12C6458:     Proc_133_42_12C6918 = &HFF
  loc_12C645E:   End If
  loc_12C646C:   Set var_90 = Me.Txt
  loc_12C6472:   Call 0.Method_Proc_133_42_12C69180 (CInt(&HA), var_A8)
  loc_12C6491:   If (var_A8.Text <> vbNullString) Then
  loc_12C649A:     var_F4 = 0
  loc_12C64CF:     Set var_90 = Me.Txt
  loc_12C64D5:     Call 0.Method_Proc_133_42_12C69180 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12C64DD:     var_E0 = var_A8.Tag
  loc_12C64FE:     Set var_B8 = Me.Txt
  loc_12C6504:     Call 0.Method_Proc_133_42_12C69180 (CInt(&HA), var_BC, var_C0, var_E4 & var_AC & "' and DispCode=")
  loc_12C650C:     var_F4 = var_BC.Text
  loc_12C6525:     unk_4D3ABF.Execute var_F8 & var_C0 & vbNullString, var_108, var_A8
  loc_12C652D:      = var_E0.Fields
  loc_12C6535:      = var_E4.Item()
  loc_12C653D:      = var_F8.Value
  loc_12C6578:     If (var_108 > 0) Then
  loc_12C6596:       var_A0 = "Duplicate Disp Code"
  loc_12C659C:       MsgBox(var_A0, &H40, "Information", var_128, var_148)
  loc_12C65B7:       Set var_90 = Me.Txt
  loc_12C65BD:       Call 0.Method_Proc_133_42_12C69180 (CInt(&HA))
  loc_12C65C5:       var_A8.SetFocus
  loc_12C65D6:       Proc_133_42_12C6918 = &HFF
  loc_12C65DC:     End If
  loc_12C65DC:   End If
  loc_12C65DF: Else
  loc_12C661A:   Set var_90 = Me.Txt
  loc_12C6620:   Call 0.Method_Proc_133_42_12C69180 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_12C6652:   unk_4D3ABF.Execute var_BC & var_AC & "' And Name<>'" & global_100 & "' And Type IN ('Finish','Semi Finish')", 0, var_E0
  loc_12C6662:    = var_BC.Item(var_A8)
  loc_12C666A:    = var_E0.Value
  loc_12C669F:   If (var_A8.Text.Fields > 0) Then
  loc_12C66BD:     var_A0 = "Duplicate Name"
  loc_12C66C3:     MsgBox(var_A0, &H40, "Information", var_128, var_148)
  loc_12C66DE:     Set var_90 = Me.Txt
  loc_12C66E4:     Call 0.Method_Proc_133_42_12C69180 (CInt(0))
  loc_12C66EC:     var_A8.SetFocus
  loc_12C66FD:     Proc_133_42_12C6918 = &HFF
  loc_12C6703:   End If
  loc_12C6711:   Set var_90 = Me.Txt
  loc_12C6717:   Call 0.Method_Proc_133_42_12C69180 (CInt(&HA), var_A8)
  loc_12C6736:   If (var_A8.Text <> vbNullString) Then
  loc_12C6774:     Set var_90 = Me.Txt
  loc_12C677A:     Call 0.Method_Proc_133_42_12C69180 (CInt(&HA), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1)
  loc_12C67B1:     unk_4D3ABF.Execute var_BC & var_AC & " And DispCode<> " & CStr(global_60) & vbNullString, 0, var_E0
  loc_12C67C1:      = var_BC.Item(var_A8)
  loc_12C67C9:      = var_E0.Value
  loc_12C6800:     If (var_A8.Text.Fields > 0) Then
  loc_12C6824:       MsgBox("Duplicate Disp Code", &H40, "Information", var_128, var_148)
  loc_12C683F:       Set var_90 = Me.Txt
  loc_12C6845:       Call 0.Method_Proc_133_42_12C69180 (CInt(&HA))
  loc_12C684D:       var_A8.SetFocus
  loc_12C685E:       Proc_133_42_12C6918 = &HFF
  loc_12C6864:     End If
  loc_12C6864:   End If
  loc_12C6864: End If
  loc_12C6872: Set var_90 = Me.Txt
  loc_12C6878: Call 0.Method_Proc_133_42_12C69180 (CInt(&HA), var_A8)
  loc_12C6897: If (var_A8.Text = "9999") Then
  loc_12C68C8:   MsgBox(CVar("This Code is reserved for special items" & vbCrLf & vbCrLf & "Please choose another code"), &H40, "HMS", var_128, var_148)
  loc_12C68EA:   Set var_90 = Me.Txt
  loc_12C68F0:   Call 0.Method_Proc_133_42_12C69180 (CInt(&HA), var_A8)
  loc_12C68F8:   var_A8.SetFocus
  loc_12C6909:   Proc_133_42_12C6918 = &HFF
  loc_12C690F: End If
  loc_12C690F: Proc_133_42_12C6918 = var_A8
End Sub

Public Sub Proc_133_43_FB5484
  'Data Table: 4D3AB8
  loc_FB52F0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FB5302:   Me.DGHelp.Visible = False
  loc_FB530A: End If
  loc_FB5326: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_FB5338:   Me.DGRest.Visible = False
  loc_FB5340: End If
  loc_FB535C: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_FB536E:   Me.DGItemGroup.Visible = False
  loc_FB5376: End If
  loc_FB5392: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_FB53A4:   Me.DGItemCat.Visible = False
  loc_FB53AC: End If
  loc_FB53C8: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_FB53DA:   Me.DGUnit.Visible = False
  loc_FB53E2: End If
  loc_FB53FD: If (Me.Frame1.Visible = &HFF) Then
  loc_FB540F:   Me.DGUnit.Visible = False
  loc_FB5417: End If
  loc_FB5433: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB5445:   Me.FGPoint.Visible = False
  loc_FB544D: End If
  loc_FB5469: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_FB547B:   Me.DGDispCode.Visible = False
  loc_FB5483: End If
  loc_FB5483: Exit Sub
End Sub

Public Sub Proc_133_44_109F6E4
  'Data Table: 4D3AB8
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_109F41C: On Error Goto loc_109F6DC
  loc_109F42D: Set var_88 = Me.Txt
  loc_109F433: Call 0.Method_Proc_133_44_109F6E40 (CInt(0), var_8C)
  loc_109F452: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_109F46E: Set var_B4 = Me.Txt
  loc_109F474: Call 0.Method_Proc_133_44_109F6E40 (CInt(0), var_B8)
  loc_109F48F: Set var_88 = Me.Txt
  loc_109F495: Call 0.Method_Proc_133_44_109F6E40 (CInt(0), var_8C)
  loc_109F4AD: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109F4BC: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_109F4DC: Set var_88 = Me.Txt
  loc_109F4E2: Call 0.Method_Proc_133_44_109F6E40 (CInt(6), var_8C)
  loc_109F501: Me.DGItemCat.Left = CVar(var_8C.Left)
  loc_109F51D: Set var_B4 = Me.Txt
  loc_109F523: Call 0.Method_Proc_133_44_109F6E40 (CInt(6), var_B8)
  loc_109F53E: Set var_88 = Me.Txt
  loc_109F544: Call 0.Method_Proc_133_44_109F6E40 (CInt(6), var_8C)
  loc_109F55C: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_109F56B: Me.DGItemCat.Top = CVar(var_8C.Left)
  loc_109F58B: Set var_88 = Me.Txt
  loc_109F591: Call 0.Method_Proc_133_44_109F6E40 (CInt(2), var_8C)
  loc_109F5B0: Me.DGItemGroup.Left = CVar(var_8C.Left)
  loc_109F5CC: Set var_B4 = Me.Txt
  loc_109F5D2: Call 0.Method_Proc_133_44_109F6E40 (CInt(2), var_B8)
  loc_109F5ED: Set var_88 = Me.Txt
  loc_109F5F3: Call 0.Method_Proc_133_44_109F6E40 (CInt(2), var_8C)
  loc_109F60B: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109F61A: Me.DGItemGroup.Top = CVar(var_8C.Left)
  loc_109F63A: Set var_88 = Me.Txt
  loc_109F640: Call 0.Method_Proc_133_44_109F6E40 (CInt(1), var_8C)
  loc_109F65F: Me.DGUnit.Left = CVar(var_8C.Left)
  loc_109F67B: Set var_B4 = Me.Txt
  loc_109F681: Call 0.Method_Proc_133_44_109F6E40 (CInt(1), var_B8)
  loc_109F69C: Set var_88 = Me.Txt
  loc_109F6A2: Call 0.Method_Proc_133_44_109F6E40 (CInt(1), var_8C)
  loc_109F6BA: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109F6C9: Me.DGUnit.Top = CVar(var_8C.Left)
  loc_109F6DB: Exit Sub
  loc_109F6DC: ' Referenced from: 109F41C
  loc_109F6DC: Proc_6_60_E63754()
  loc_109F6E1: Exit Sub
End Sub

Public Sub Proc_133_45_E820D4
  'Data Table: 4D3AB8
  loc_E82074: Call Proc_133_43_FB5484()
  loc_E820B0: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E820B3:   Call TopCtrl1_UnknownEvent_16()
  loc_E820BB: Else
  loc_E820C1:   Call 0.Method_arg_1E8 (var_108)
  loc_E820C9:   Call var_108.SetFocus
  loc_E820D2: End If
  loc_E820D2: Exit Sub
End Sub
