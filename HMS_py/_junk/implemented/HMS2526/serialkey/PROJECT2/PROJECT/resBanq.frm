VERSION 5.00
Begin VB.Form resBanq
  Caption = "Reservation Look Up Room Wise"
  BackColor = &HE0E0E0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11820
  ClientHeight = 7830
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &H0&
    Left = 15
    Top = 6780
    Width = 3480
    Height = 345
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin CommandButton BtnPrint
      Caption = "&WinPrint"
      Index = 2
      BackColor = &HC0C0C0&
      Left = 1155
      Top = 15
      Width = 1155
      Height = 330
      TabIndex = 12
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Caption = "P&review"
      Index = 0
      BackColor = &HC0C0C0&
      Left = 0
      Top = 15
      Width = 1155
      Height = 330
      TabIndex = 11
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Caption = "&DosPrint"
      Index = 1
      BackColor = &HC0C0C0&
      Left = 2310
      Top = 15
      Width = 1155
      Height = 330
      TabIndex = 10
      BeginProperty Font
        Name = "MS Sans Serif"
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
  Begin CommandButton Cmd
    Caption = "&Close"
    Index = 3
    BackColor = &HDEF4FA&
    Left = 9930
    Top = 60
    Width = 1800
    Height = 345
    TabIndex = 7
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "&Next Days"
    Index = 2
    BackColor = &HDEF4FA&
    Left = 8130
    Top = 60
    Width = 1800
    Height = 345
    TabIndex = 3
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "P&revious Days"
    Index = 1
    BackColor = &HDEF4FA&
    Left = 6330
    Top = 60
    Width = 1800
    Height = 345
    TabIndex = 4
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "&Show Detail"
    Index = 0
    BackColor = &HDEF4FA&
    Left = 4530
    Top = 60
    Width = 1800
    Height = 345
    TabIndex = 2
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HE0E0E0&
    Left = 1260
    Top = 105
    Width = 1350
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 420
    Top = 780
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 6
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
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 495
    Width = 11820
    Height = 6270
    TabIndex = 5
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 7455
    Width = 11820
    Height = 375
    Visible = 0   'False
    TabIndex = 0
  End
  Begin Label Label2
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 4920
    Top = 6825
    Width = 285
    Height = 270
    TabIndex = 20
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 1
    BackColor = &HFF&
    ForeColor = &H80000008&
    Left = 6510
    Top = 6825
    Width = 285
    Height = 270
    TabIndex = 19
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Out Of Order "
    Index = 2
    ForeColor = &H0&
    Left = 6930
    Top = 6840
    Width = 1140
    Height = 225
    TabIndex = 18
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Vacant "
    Index = 1
    ForeColor = &H0&
    Left = 5475
    Top = 6840
    Width = 675
    Height = 225
    TabIndex = 17
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Index = 3
    BackColor = &HFF00&
    ForeColor = &H80000008&
    Left = 8160
    Top = 6825
    Width = 285
    Height = 270
    TabIndex = 16
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest In House"
    Index = 3
    ForeColor = &H0&
    Left = 8460
    Top = 6840
    Width = 1290
    Height = 225
    TabIndex = 15
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Expected Arrival"
    Index = 4
    ForeColor = &H0&
    Left = 10245
    Top = 6840
    Width = 1410
    Height = 225
    TabIndex = 14
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Index = 4
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 9810
    Top = 6825
    Width = 285
    Height = 270
    TabIndex = 13
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Start Date"
    Index = 15
    ForeColor = &H0&
    Left = 150
    Top = 120
    Width = 975
    Height = 210
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Shape Shape1
    BorderColor = &HE0E0E0&
    Left = 15
    Top = 15
    Width = 12105
    Height = 480
    BorderWidth = 2
    FillColor = &HE0E0E0&
    FillStyle = 0
  End
  Begin Label LBLRoomName
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 450
    Top = 6780
    Width = 11340
    Height = 360
    TabIndex = 21
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "resBanq"

Private global_56 As Integer
Private global_58 As Integer
Private global_96 As Integer
Private global_80 As Double
Private global_100 As Integer
Private global_112 As Long
Private global_108 As Long

Private Sub TxtGrid_GotFocus(Index As Integer) 'F0F328
  'Data Table: 469468
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F0F256: Set var_88 = Me.TxtGrid
  loc_F0F25C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F0F26A: Proc_6_74_E23240(var_8C)
  loc_F0F276: Call Proc_112_35_DFC724(var_8C)
  loc_F0F287: If (Index = 0) Then
  loc_F0F29D:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F0F2DC:   Set var_108 = Me.TxtGrid
  loc_F0F2E2:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F0F2EA:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F0F31B:   var_114 = CLng(Me.FGrid.Col)
  loc_F0F324: End If
  loc_F0F324: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F022D8
  'Data Table: 469468
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_F0220C: If (KeyCode = 0) Then
  loc_F02219:   If (CLng(Shift) = &H1B) Then
  loc_F02229:     Set var_8C = Me.TxtGrid
  loc_F0222F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F02249:     Set var_98 = Me.TxtGrid
  loc_F0224F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F02257:     var_9C.Text = var_90.Tag
  loc_F02273:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_F02278:     Call Proc_112_35_DFC724(arg_14)
  loc_F02281:     Set var_8C = Me.FGrid
  loc_F0229E:     Set var_8C = Me.TxtGrid
  loc_F022A4:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_F022AC:     var_90.Visible = FGrid.DispID_8001
  loc_F022B8:     Exit Sub
  loc_F022B9:   End If
  loc_F022CC:   var_B0 = CLng(Me.FGrid.Col)
  loc_F022D5: End If
  loc_F022D5: Exit Sub
  loc_F022D6: BranchFVar -3841
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E51AE0
  'Data Table: 469468
  Dim var_A0 As Long
  loc_E51AAF: Proc_6_58_E06050(arg_10)
  loc_E51AC0: If (KeyAscii = 0) Then
  loc_E51AD6:   var_A0 = CLng(Me.FGrid.Col)
  loc_E51ADF: End If
  loc_E51ADF: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E54A1C
  'Data Table: 469468
  Dim var_A0 As Long
  loc_E549E4: On Error Goto loc_E54A13
  loc_E549F3: If (KeyCode = 0) Then
  loc_E54A09:   var_A0 = CLng(Me.FGrid.Col)
  loc_E54A12: End If
  loc_E54A12: Exit Sub
  loc_E54A13: ' Referenced from: E549E4
  loc_E54A13: Proc_6_60_E63754(var_A0)
  loc_E54A18: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E215B4
  'Data Table: 469468
  Dim arg_10 As Integer
  loc_E2159C: If (Cancel = 0) Then
  loc_E215A5:   Call Proc_112_31_E54E7C(Cancel, var_88)
  loc_E215AE:   arg_10 = Not(var_88)
  loc_E215B1: End If
  loc_E215B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60144
  'Data Table: 469468
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6010F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60122: Set var_A8 = Me.TxtGrid
  loc_E60128: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60130: var_AC.Visible = False
  loc_E6013C: Call Proc_112_35_DFC724()
  loc_E60141: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69F38
  'Data Table: 469468
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69EF4: Set var_88 = Me.TxtGrid
  loc_E69EFA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69F14: If (var_8C.Visible = 0) Then
  loc_E69F2D:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E69F35: End If
  loc_E69F35: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFDE18
  'Data Table: 469468
  loc_DFDE14: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '104768C
  'Data Table: 469468
  Dim var_B8 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_1047438: Set var_88 = Me.TopCtrl1
  loc_104743E: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_104748E: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1047497:   Call Form_KeyDown(Cancel, arg_10)
  loc_104749C: End If
  loc_10474A0: Set var_88 = Me.TopCtrl1
  loc_10474A6: Call {9480DDFE-6550-4DDD-B088BF5F4110C21F}.DispID_6803000E()
  loc_10474BB: If ( = "Browse") Then
  loc_10474BE:   Exit Sub
  loc_10474BF: End If
  loc_1047533: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_104754C:   Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_104755C:   var_DC = "+{Tab}"
  loc_1047562:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_104756C:   Cancel = 0
  loc_1047572: Else
  loc_104757C:   var_B8 = Me.FGrid.Rows
  loc_10475C9:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_10475E2:     Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_10475F8:     Proc_303_0_FBACC8("{Tab}", 0, var_B8)
  loc_1047602:     Cancel = 0
  loc_1047605:   End If
  loc_1047605: End If
  loc_104760B: global_56 = Cancel
  loc_1047631: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1047655: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_104766B:   var_EC = CLng(Me.FGrid.Col)
  loc_1047674: End If
  loc_104767A: If (Cancel = &HD) Then
  loc_1047682:   global_58 = 0
  loc_1047685: End If
  loc_1047687: Cancel = 0
  loc_104768A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0D240
  'Data Table: 469468
  loc_E0D231: Call FGrid_UnknownEvent_C()
  loc_E0D23B: global_58 = 0
  loc_E0D23E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4DFC8
  'Data Table: 469468
  loc_E4DFBE: If (CLng(Cancel) = &HD) Then
  loc_E4DFC1:   Call Proc_112_30_1301EDC(CLng(Me.FGrid.Col))
  loc_E4DFC6: End If
  loc_E4DFC6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFDD14
  'Data Table: 469468
  loc_DFDD10: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45D14
  'Data Table: 469468
  Dim var_8C As TextBox
  loc_E45CE8: Call Proc_112_35_DFC724()
  loc_E45CF8: Set var_88 = Me.TxtGrid
  loc_E45CFE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45D06: var_8C.Visible = False
  loc_E45D12: Exit Sub
End Sub

Private Sub Cmd_Click(Index As Integer) '102BA2C
  'Data Table: 469468
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_B8 As Long
  Dim var_D8 As Long
  Dim var_8C As Variant
  Dim var_F8 As Variant
  Dim var_94 As TextBox
  loc_102B7FF: var_86 = Index
  loc_102B808: If (var_86 = 0) Then
  loc_102B816:   Set var_8C = Me.Txt
  loc_102B81C:   Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_102B82D:   Set var_94 = var_90
  loc_102B845:   If (Proc_6_27_EA61EC(var_94, "Start Date") = 0) Then
  loc_102B848:     Exit Sub
  loc_102B849:   End If
  loc_102B857:   Set var_8C = Me.Txt
  loc_102B85D:   Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_102B865:   var_98 = var_90.Text
  loc_102B86D:   var_A8 = "RoomNo"
  loc_102B881:   Call Proc_112_36_154C5E0(CDate(var_98), 1)
  loc_102B897: Else
  loc_102B89D:   If (var_86 = 1) Then
  loc_102B8A0:     var_B8 = 1
  loc_102B8A9:     var_D8 = 1
  loc_102B8BC:     var_F8 = Me.FGrid.ColHeaderCaption)
  loc_102B8D6:     Set var_90 = Me.Txt
  loc_102B8DC:     Call 0.Method_Cmd_Click0 (CInt(0), var_94, var_98, var_F8)
  loc_102B8E4:     var_D8 = var_94.Text
  loc_102B91F:     If (CDate(Right(CVar(CStr(var_F8)), 9)) <> CDate(var_98)) Then
  loc_102B922:       var_B8 = 1
  loc_102B93E:       var_F8 = Me.FGrid.ColHeaderCaption)
  loc_102B97A:       Call Proc_112_36_154C5E0(CDate((CDate(Right(CVar(CStr(var_F8)), 9)) - CDbl(1))), &HFF, "RoomNo", var_F8, 1)
  loc_102B990:     End If
  loc_102B993:   Else
  loc_102B999:     If (var_86 = 2) Then
  loc_102B99C:       var_B8 = 1
  loc_102B9B8:       var_F8 = Me.FGrid.ColHeaderCaption)
  loc_102B9F4:       Call Proc_112_36_154C5E0(CDate((CDate(Right(CVar(CStr(var_F8)), 9)) + CDbl(1))), 1, "RoomNo", var_F8, &H1E)
  loc_102BA0D:     Else
  loc_102BA13:       If (var_86 = 3) Then
  loc_102BA23:         Me.Global.Unload Me
  loc_102BA2B:       End If
  loc_102BA2B:     End If
  loc_102BA2B:   End If
  loc_102BA2B: End If
  loc_102BA2B: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '13FBD1C
  'Data Table: 469468
  Dim unk_46946E As Connection15
  Dim var_A8 As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Fields15
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_10C As String
  Dim var_C4 As String
  Dim var_FC As Variant
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim MemVar_1F953D0 As String
  Dim var_C0 As TextBox
  Dim var_13C As Variant
  Dim var_20C As Variant
  loc_13FB338: On Error Goto loc_13FBD15
  loc_13FB340: global_96 = &HFF
  loc_13FB359: unk_46946E.Execute "Select * From FAEnviro", var_B8, -1
  loc_13FB364: Set var_94 = var_BC
  loc_13FB37C: var_BC = var_94.Fields
  loc_13FB3E0: var_13C = IIf((Proc_6_38_E69628(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_13FB3E9: MemVar_1F953C4 = CStr(var_13C)
  loc_13FB47D: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13FB486: MemVar_1F953C8 = CStr(var_13C)
  loc_13FB51A: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13FB55B: var_C0 = var_94.Fields.Item("linefiller")
  loc_13FB572: var_D8 = "linefiller"
  loc_13FB57E: var_C8 = var_94.Fields
  loc_13FB586: var_DC = var_C8.Item(var_D8)
  loc_13FB59A: var_10C = "-"
  loc_13FB5B0: var_FC = (Proc_6_38_E69628(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13FB5C0: MemVar_1F953D0 = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E69628(CVar(var_DC)))))
  loc_13FB5E7: global_88 = "23 Day Room Availability Forecast (Report)"
  loc_13FB5EE: var_88 = "Day23RoomAvail"
  loc_13FB5F7: var_A8 = global_88
  loc_13FB60E: global_92 = CStr(Ucase(var_A8))
  loc_13FB62A: If ((global_96 = 0) Or (var_88 = vbNullString)) Then
  loc_13FB62D:   Exit Sub
  loc_13FB62E: End If
  loc_13FB62E: Call Day23RoomAvail()
  loc_13FB65A: Set var_BC = global_104 
  loc_13FB661: CreateFieldDefFile(var_BC, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13FB693: var_C4 = "\" & var_88
  loc_13FB6A7: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13FB6B2: MemVar_1F951E8 = var_BC
  loc_13FB6DE: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13FB6E6: Call 0.Method_arg_2C (var_FC, MemVar_1F953D0)
  loc_13FB6F4: Call 0.Method_arg_150 (global_96)
  loc_13FB70A: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FB712: Call 0.Method_arg_24 (var_8A)
  loc_13FB71E: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13FB737:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB73F:   Call 0.Method_arg_20 (var_C0)
  loc_13FB747:   Call 0.Method_arg_30 (var_C4)
  loc_13FB75D:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13FB78D:   If (var_160 = Ucase("Title")) Then
  loc_13FB7B4:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB7BC:     Call 0.Method_arg_20 (var_C0)
  loc_13FB7C4:     Call 0.Method_arg_38 ("'" & global_88 & "'")
  loc_13FB7DA:   Else
  loc_13FB7FC:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13FB810:       Set var_BC = Me.Txt
  loc_13FB816:       Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FB841:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13FB849:       Call 0.Method_arg_20 (var_DC)
  loc_13FB851:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13FB86D:     Else
  loc_13FB88F:       If (var_160 = Ucase("Dater")) Then
  loc_13FB8B3:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB8BB:         Call 0.Method_arg_20 (var_C0)
  loc_13FB8C3:         Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_13FB8D9:       Else
  loc_13FB8FB:         If (var_160 = Ucase("Pager")) Then
  loc_13FB905:           var_C4 = "'" & MemVar_1F953C8
  loc_13FB91F:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB927:           Call 0.Method_arg_20 (var_C0)
  loc_13FB92F:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13FB942:         End If
  loc_13FB942:       End If
  loc_13FB942:     End If
  loc_13FB942:   End If
  loc_13FB945: Next var_150 'Integer
  loc_13FB95B: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FB963: Call 0.Method_arg_24 (var_8A)
  loc_13FB96F: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13FB97C:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13FB98D:     Set var_BC = Me.Txt
  loc_13FB993:     Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FB9AD:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13FB9BA:     global_80 = CDate(Ucase("Pager"))
  loc_13FB9DA:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FB9E2:     Call 0.Method_arg_20 (var_C4, global_80)
  loc_13FB9EA:     Call 0.Method_arg_30 (1)
  loc_13FBA00:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13FBA37:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13FBA96:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FBA9E:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_80, "DDD")) & "'"), 1)
  loc_13FBAA6:       Call 0.Method_arg_38 ("'")
  loc_13FBAC5:     Else
  loc_13FBAEE:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13FBB0E:         var_12C = CVar(CStr(Day(global_80))) 'String
  loc_13FBB36:         var_11C = Space((2 - Len(CStr(Day(global_80)))))
  loc_13FBB3E:         var_13C = (var_12C + Ucase(Format(global_80, "DDD")))
  loc_13FBB74:         var_1CC = Space((2 - Len(CStr(Month(global_80)))))
  loc_13FBB97:         var_20C = (var_1CC + CVar(CStr(Month(global_80))))
  loc_13FBBBC:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FBBC4:         Call 0.Method_arg_20 (var_C0)
  loc_13FBBCC:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_80, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13FBC08:       End If
  loc_13FBC08:     End If
  loc_13FBC0B:   Next var_16A 'Integer
  loc_13FBC13: Next var_166 'Integer
  loc_13FBC1E: If (Index = 1) Then
  loc_13FBC2E:   ReDim Preserve var_90(0 To 1)
  loc_13FBC49:   Set var_BC = Me.Txt
  loc_13FBC4F:   Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FBC72:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13FBC83: End If
  loc_13FBC89: If (Index = 1) Then
  loc_13FBCAD:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_80, "DDD")), var_12C)
  loc_13FBCBD:   Call Proc_112_38_16B3F2C()
  loc_13FBCC5: Else
  loc_13FBCCA:   Set var_C0 = Nothing
  loc_13FBCE1:   Set var_BC = MemVar_1F951E8 
  loc_13FBCED:   Proc_6_99_1484404(var_BC, Index, global_92)
  loc_13FBCF8:   MemVar_1F951E8 = var_BC
  loc_13FBD03: End If
  loc_13FBD08: global_100 = 0
  loc_13FBD10: MemVar_1F951E8 = Nothing
  loc_13FBD14: Exit Sub
  loc_13FBD15: ' Referenced from: 13FB338
  loc_13FBD15: Proc_6_60_E63754(global_100, &HFF)
  loc_13FBD1A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E58C68
  'Data Table: 469468
  Dim var_92 As Integer
  loc_E58C3A: Set var_88 = Me.Txt
  loc_E58C40: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E58C4E: Proc_6_74_E23240(var_8C)
  loc_E58C5A: Call Proc_112_35_DFC724(var_8C)
  loc_E58C62: var_92 = Index
  loc_E58C65: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E0B808
  'Data Table: 469468
  loc_E0B7FE: If (CLng(Shift) = &H1B) Then
  loc_E0B801:   Call Proc_112_35_DFC724()
  loc_E0B806:   Exit Sub
  loc_E0B807: End If
  loc_E0B807: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E46934
  'Data Table: 469468
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E46904: On Error Goto loc_E4692B
  loc_E4690A: Proc_6_58_E06050(arg_10)
  loc_E46915: Proc_6_133_E7FB08(var_94)
  loc_E4691E: arg_10 = CInt(var_94)
  loc_E46927: var_96 = KeyAscii
  loc_E4692A: Exit Sub
  loc_E4692B: ' Referenced from: E46904
  loc_E4692B: Proc_6_60_E63754(var_96, arg_10)
  loc_E46930: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFEB14
  'Data Table: 469468
  Dim var_86 As Integer
  loc_DFEB0F: var_86 = KeyCode
  loc_DFEB12: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DDBC
  'Data Table: 469468
  loc_E4DD9A: Set var_88 = Me.Txt
  loc_E4DDA0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DDAE: Proc_6_73_E23294(var_8C)
  loc_E4DDBA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F9A268
  'Data Table: 469468
  Dim var_90 As TextBox
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  loc_F9A108: On Error Goto loc_F9A25F
  loc_F9A119: If (Cancel = CInt(0)) Then
  loc_F9A129:   Set var_8C = Me.Txt
  loc_F9A12F:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9A167:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_F9A17C:     Set var_8C = Me.Txt
  loc_F9A182:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9A18A:     var_90.Text = CStr(MemVar_1F950EC)
  loc_F9A19C:   Else
  loc_F9A1A6:     Set var_8C = Me.Txt
  loc_F9A1AC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9A1CC:     Set var_EC = Me.Txt
  loc_F9A1D2:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_F9A1DA:     var_F0.Text = Proc_6_33_15125B8(var_90)
  loc_F9A1ED:   End If
  loc_F9A1FA:   Set var_8C = Me.Txt
  loc_F9A200:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9A231:   If (CDate(CDate(var_90.Text)) < Date) Then
  loc_F9A23E:     Set var_8C = Me.Txt
  loc_F9A244:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9A24C:     var_90.SetFocus
  loc_F9A25A:     arg_10 = &HFF
  loc_F9A25D:     Exit Sub
  loc_F9A25E:   End If
  loc_F9A25E: End If
  loc_F9A25E: Exit Sub
  loc_F9A25F: ' Referenced from: F9A108
  loc_F9A25F: Proc_6_60_E63754(arg_10)
  loc_F9A264: Exit Sub
End Sub

Private Sub Form_Load() 'EE2198
  'Data Table: 469468
  Dim var_8C As Variant
  loc_EE20D8: On Error Goto loc_EE2190
  loc_EE20E3: global_112 = &HFDC293
  loc_EE20F5: Set var_88 = Me.Label2
  loc_EE20FB: Call 0.Method_Form_Load0 (4, var_8C)
  loc_EE2103: var_8C.BackColor = global_112
  loc_EE2143: Set var_88 = Me.Txt
  loc_EE2149: Call 0.Method_Form_Load0 (CInt(0), var_8C, CStr(MemVar_1F950EC), &HFFFFFF)
  loc_EE2151: var_8C.Text = &H40C0
  loc_EE2178: Proc_6_23_DFC5B8(Me, 7590, 11940)
  loc_EE2180: Call Proc_112_29_10354D4(&HFF00)
  loc_EE218A: Call Cmd_Click(0)
  loc_EE218F: Exit Sub
  loc_EE2190: ' Referenced from: EE20D8
  loc_EE2190: Proc_6_60_E63754(global_112)
  loc_EE2195: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0E1FC
  'Data Table: 469468
  loc_E0E1F3: Set global_104 = Nothing
  loc_E0E1FA: Exit Sub
End Sub

Private Sub Form_Activate() 'E1A658
  'Data Table: 469468
  loc_E1A644: Set var_88 = Me.FGrid
  loc_E1A655: Exit Sub
End Sub

Private Sub Form_Deactivate() 'DFE0BC
  'Data Table: 469468
  loc_DFE0B8: Exit Sub
  loc_DFE0B9:  = var_C00
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E277EC
  'Data Table: 469468
  loc_E277C4: On Error Goto loc_E277E4
  loc_E277DB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E277E3: Exit Sub
  loc_E277E4: ' Referenced from: E277C4
  loc_E277E4: Proc_6_60_E63754(Shift)
  loc_E277E9: Exit Sub
End Sub

Public Sub Day23RoomAvail() '1101B4C
  'Data Table: 469468
  Dim var_A4 As Recordset15
  Dim var_C4 As String
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim Me As Variant
  loc_1101820: On Error Goto loc_1101B3D
  loc_110183D: Call Proc_112_39_F89944(New)
  loc_1101858: Set var_8C = Me.FGrid
  loc_1101874: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1101880:   Set var_A4 = var_8C 
  loc_110188F:   var_A4.AddNew var_B4, var_C4
  loc_11018B9:   var_A4.Fields.Item("mLine").Value = vbNullString
  loc_1101917:   var_A4.Fields.Item("RoomNo").Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), 0, CVar(CLng(var_86))))
  loc_110197F:   var_A4.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_86))))
  loc_110199D:   For var_120 = 5 To &H1B: var_88 = var_120 'Integer
  loc_11019E7:     If (Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86))) = "@  RFF") Then
  loc_1101A19:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = "***"
  loc_1101A2E:     Else
  loc_1101AA0:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = Left(CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)))), &HF)
  loc_1101AC2:     End If
  loc_1101AC5:   Next var_120 'Integer
  loc_1101ACA:   var_C4 = "*"
  loc_1101AD3:   var_B4 = "Mark"
  loc_1101AEF:   var_A4.Fields.Item(var_B4).Value = var_C4
  loc_1101B06:   var_A4.Update var_B4, var_C4
  loc_1101B0D:   Set var_A4 = Nothing 
  loc_1101B14: Next var_A0 'Integer
  loc_1101B30: If (Me.RecordCount <= 0) Then
  loc_1101B38:   global_96 = 0
  loc_1101B3B:   Exit Sub
  loc_1101B3C: End If
  loc_1101B3C: Exit Sub
  loc_1101B3D: ' Referenced from: 1101820
  loc_1101B45: Proc_6_60_E63754(0)
  loc_1101B4A: Exit Sub
End Sub

Public Property Get OpenMode() 'E09910
  'Data Table: 469468
  loc_E09909: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E01F18
  'Data Table: 469468
  loc_E01F12: global_108 = vNewValue
  loc_E01F15: Exit Sub
End Sub

Public Sub Proc_112_29_10354D4
  'Data Table: 469468
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_1035296: Me.FGrid.Left = CVar(CDbl(0))
  loc_10352B1: Me.FGrid.Top = CVar(CDbl(495))
  loc_10352BE: var_88 = &H249
  loc_10352C5: Set var_B4 = Me.FGrid
  loc_10352DC: global_52 = CStr(CLng(var_B4.BackColor))
  loc_10352F2: var_B4.Cols = &H23
  loc_10352F7: var_9C = 0
  loc_1035303: var_D8 = CVar(CLng(1)) 'Long
  loc_1035308: var_F8 = "SNo"
  loc_1035311: LateIdCallSt
  loc_103531C: var_9C = CVar(CLng(1)) 'Long
  loc_1035321: var_D8 = 0
  loc_103532D: LateIdCallSt
  loc_1035335: var_9C = 0
  loc_1035341: var_D8 = CVar(CLng(2)) 'Long
  loc_1035346: var_F8 = "Type"
  loc_103534F: LateIdCallSt
  loc_103535A: var_9C = CVar(CLng(2)) 'Long
  loc_1035365: var_D8 = CVar(CInt(1)) 'Integer
  loc_103536C: LateIdCallSt
  loc_1035377: var_9C = CVar(CLng(2)) 'Long
  loc_1035382: var_D8 = CVar(CInt(1)) 'Integer
  loc_1035389: LateIdCallSt
  loc_1035394: var_9C = CVar(CLng(2)) 'Long
  loc_1035399: var_D8 = &H3E8
  loc_10353A5: LateIdCallSt
  loc_10353AD: var_9C = 0
  loc_10353B9: var_D8 = CVar(CLng(3)) 'Long
  loc_10353BE: var_F8 = "Rate"
  loc_10353C7: LateIdCallSt
  loc_10353D2: var_9C = CVar(CLng(3)) 'Long
  loc_10353DD: var_D8 = CVar(CInt(7)) 'Integer
  loc_10353E4: LateIdCallSt
  loc_10353EF: var_9C = CVar(CLng(3)) 'Long
  loc_10353FA: var_D8 = CVar(CInt(7)) 'Integer
  loc_1035401: LateIdCallSt
  loc_103540C: var_9C = CVar(CLng(3)) 'Long
  loc_1035411: var_D8 = &H1F4
  loc_103541D: LateIdCallSt
  loc_103542C: For var_10C = 5 To &H22: var_8A = var_10C 'Byte
  loc_1035432:   var_9C = 0
  loc_1035440:   var_D8 = CVar(CLng(var_8A)) 'Long
  loc_1035452:   var_C4 = CVar("Day" & CStr(var_8A)) 'String
  loc_1035459:   LateIdCallSt
  loc_103546C:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1035477:   var_D8 = CVar(CInt(4)) 'Integer
  loc_103547E:   LateIdCallSt
  loc_103548B:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1035496:   var_D8 = CVar(CInt(1)) 'Integer
  loc_103549D:   LateIdCallSt
  loc_10354AA:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10354B9:   LateIdCallSt
  loc_10354C4: Next var_10C 'Byte
  loc_10354CC: Set var_B4 = Nothing 
  loc_10354D0: Exit Sub
  loc_10354D1: ThisVCallHidden
End Sub

Public Sub Proc_112_30_1301EDC
  'Data Table: 469468
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_228 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_218 As Variant
  Dim var_248 As Variant
  Dim var_340 As Variant
  loc_1301863: If (CLng(Me.FGrid.Col) = 4) Then
  loc_1301866:   Exit Sub
  loc_1301867: End If
  loc_130187A: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301892: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13018A1: var_108 = Me.FGrid.TextMatrix)
  loc_13018B6: var_118 = CVar(CStr(var_108)) 'String
  loc_13018E2: If (Left(var_118, 1) = "@") Then
  loc_1301906:   MsgBox("Selected Room is currently Out Of Order ", 0, "<<<<<<<<< Out Of Order >>>>>>>>>", var_108, var_118)
  loc_1301916:   Exit Sub
  loc_1301917: End If
  loc_1301937: If (CLng(Me.FGrid.CellBackColor) = global_116) Then
  loc_130195B:   MsgBox("Selected Room is not Vacant ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_130196B:   Exit Sub
  loc_130196C: End If
  loc_130198C: If (CLng(Me.FGrid.CellBackColor) = global_112) Then
  loc_13019B0:   MsgBox("Selected Room is Reserved ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_13019C0:   Exit Sub
  loc_13019C1: End If
  loc_13019D4: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13019EC: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301A3C: If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_1301A60:   For var_14C = CInt(CLng(Me.FGrid.Col)) To 5 Step &HFF: var_8A = var_14C 'Integer
  loc_1301A79:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301A91:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301AE1:     If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_1301AE4:       var_C4 = 1
  loc_1301AF4:       var_E4 = CVar(CLng((var_8A - 4))) 'Long
  loc_1301B27:       var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 8))
  loc_1301B39:     Else
  loc_1301B39:       Exit For
  loc_1301B3C:     End If
  loc_1301B3F:   Next var_14C 'Integer
  loc_1301B44:   ' Referenced from: 1301B39
  loc_1301B47: Else
  loc_1301B47:   var_C4 = 1
  loc_1301B69:   var_E4 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_1301B9C:   var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 9))
  loc_1301BB1: End If
  loc_1301BBD: If (global_108 = 1) Then
  loc_1301BD3:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301BDB:   var_E4 = CVar(CLng(1)) 'Long
  loc_1301BFB:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1301C17:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301C1F:   var_16C = CVar(CLng(2)) 'Long
  loc_1301C39:   var_228 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1301C57:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301C5F:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1301C7F:   var_208 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1301C8E:   Call unk_4694C7.SEARCHBACKRoomNo
  loc_1301CBF: Else
  loc_1301CD2:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301CDA:   var_E4 = CVar(CLng(1)) 'Long
  loc_1301D12:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301D1A:   var_16C = CVar(CLng(2)) 'Long
  loc_1301D48:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301D50:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1301D88:   var_218 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301DA0:   var_248 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301E09:   var_340 = Me.FGrid.TextMatrix)
  loc_1301E69:   Proc_146_0_E7E558(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Me.FGrid.TextMatrix)), var_88, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(IIf((Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "@"), vbNullString, CVar(CStr(var_340)))), CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_1301EC3: End If
  loc_1301ED0: Me.var_340.Unload Me
  loc_1301ED8: Exit Sub
End Sub

Public Sub Proc_112_31_E54E7C(arg_C) 'E54E7C
  'Data Table: 469468
  Dim var_A0 As Long
  loc_E54E50: If (arg_C = 0) Then
  loc_E54E66:   var_A0 = CLng(Me.FGrid.Col)
  loc_E54E6F: End If
  loc_E54E74: Proc_112_31_E54E7C = &HFF
End Sub

Public Sub Proc_112_32_E0B1A0
  'Data Table: 469468
  loc_E0B199: Proc_112_32_E0B1A0 = &HFF
End Sub

Public Sub Proc_112_33_F1E50C
  'Data Table: 469468
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1E41A: Set var_8C = Me.Txt
  loc_F1E420: Call 0.Method_Proc_112_33_F1E50CC (var_8E, var_86)
  loc_F1E430: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1E446:   Set var_8C = Me.Txt
  loc_F1E44C:   Call 0.Method_Proc_112_33_F1E50C0 (CInt(var_86), var_98)
  loc_F1E454:   var_98.Text = vbNullString
  loc_F1E470:   Set var_8C = Me.Txt
  loc_F1E476:   Call 0.Method_Proc_112_33_F1E50C0 (CInt(var_86), var_98)
  loc_F1E47E:   var_98.Tag = vbNullString
  loc_F1E48D: Next var_92 'Byte
  loc_F1E4A6: Me.FGrid.Rows = 1
  loc_F1E4CC: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F1E4D4: Set var_98 = Me.FGrid
  loc_F1E501: Me.FGrid.FixedRows = 1
  loc_F1E509: Exit Sub
End Sub

Public Sub Proc_112_34_E79714(arg_C) 'E79714
  'Data Table: 469468
  Dim var_98 As TextBox
  loc_E796C2: Set var_8C = Me.Txt
  loc_E796C8: Call 0.Method_Proc_112_34_E79714C (var_8E, var_86)
  loc_E796D8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E796EE:   Set var_8C = Me.Txt
  loc_E796F4:   Call 0.Method_Proc_112_34_E797140 (CInt(var_86), var_98)
  loc_E796FC:   var_98.Enabled = arg_C
  loc_E7970B: Next var_92 'Byte
  loc_E79711: Exit Sub
End Sub

Public Sub Proc_112_35_DFC724
  'Data Table: 469468
  loc_DFC720: Exit Sub
End Sub

Public Sub Proc_112_36_154C5E0(arg_C, arg_10) '154C5E0
  'Data Table: 469468
  Dim var_D8 As Variant
  Dim var_EC As Variant
  Dim var_B6 As Integer
  Dim var_B8 As Integer
  Dim var_BA As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_F8 As String
  Dim unk_46946E As Connection15
  Dim var_108 As Variant
  Dim var_F0 As String
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_15C As Variant
  Dim var_1BC As Variant
  Dim var_B4 As Double
  Dim var_1CC As Variant
  Dim var_258 As Variant
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_16C As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_19C As Variant
  Dim var_238 As Variant
  Dim var_278 As Variant
  Dim var_18C As Variant
  Dim var_1F8 As Variant
  Dim var_308 As Variant
  Dim var_348 As String
  Dim var_458 As Variant
  Dim var_C8 As Recordset15
  Dim var_1D0 As Variant
  Dim var_C2 As Integer
  loc_154B657: Me.FGrid.FixedCols = 0
  loc_154B672: Me.FGrid.FixedRows = 1
  loc_154B68D: Me.FGrid.RowHeightMin = &H1F4
  loc_154B69E: Set var_EC = Me.FGrid
  loc_154B6A4: var_EC.Redraw = False
  loc_154B6B2: If (arg_10 = 1) Then
  loc_154B6B9:   var_B6 = CInt(5)
  loc_154B6C0:   var_B8 = CInt(&H22)
  loc_154B6C5:   var_BA = 1
  loc_154B6CB:   var_8C = arg_C
  loc_154B6D6:   var_94 = CDate((arg_C + CDbl(&H1E)))
  loc_154B6DC: Else
  loc_154B6E0:   var_B6 = CInt(&H22)
  loc_154B6E7:   var_B8 = CInt(5)
  loc_154B6EC:   var_BA = &HFF
  loc_154B6F7:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_154B702:   var_94 = CDate((arg_C + CDbl(1)))
  loc_154B705: End If
  loc_154B723: Call Proc_112_37_F9E278(CStr(var_8C), var_F0, "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from (RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat)Left Join RateList RL on RC.Code=RL.RoomCat Where R.Type='RO' And R.Type='RO' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} APPEND ({SELECT Distinct r.Code as RoomNo, ", var_108, -1, var_EC, var_94, var_8C)
  loc_154B733: var_F8 = var_BA & var_F0 & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code)Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOcc RO on RO.Docid=GF.DocId Where (R.Type='RO' or r.Type is Null) Group By r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_154B73C: unk_46946E.Execute var_F8, var_B8, var_B6
  loc_154B747: Set var_9C = var_EC
  loc_154B75F: CVarUnk
  loc_154B764: VerifyVarObj
  loc_154B76A: Set var_EC = Me.FGrid
  loc_154B770: LateIdStAd
  loc_154B7A5: For var_110 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A0 = var_110 'Long
  loc_154B7B8:   For var_118 = 5 To &H22: var_A4 = var_118 'Long
  loc_154B802:     If (InStr(var_A4, CStr(Me.FGrid.TextMatrix)), "*", 0) <> 0) Then
  loc_154B816:       Me.FGrid.Row = var_A0
  loc_154B82F:       Me.FGrid.Col = var_A4
  loc_154B84B:       Me.FGrid.CellBackColor = global_116
  loc_154B866:       Me.FGrid.CellForeColor = 0
  loc_154B87E:       Me.FGrid.CellFontName = "Arial Narrow"
  loc_154B898:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_154B8FF:       var_17C = CVar((Len(CStr(Me.FGrid.TextMatrix))) - 1)) 'Long
  loc_154B91B:       var_1BC = CVar(CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, var_17C))) 'String
  loc_154B923:       Set var_1D0 = Me.FGrid
  loc_154B929:       LateIdCallSt
  loc_154B94F:     Else
  loc_154B983:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_154B997:         Me.FGrid.Row = var_A0
  loc_154B9B0:         Me.FGrid.Col = var_A4
  loc_154B9CC:         Me.FGrid.CellBackColor = global_112
  loc_154B9E8:         Me.FGrid.CellForeColor = global_124
  loc_154BA00:         Me.FGrid.CellFontName = "Arial Narrow"
  loc_154BA1A:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_154BA22:       End If
  loc_154BA22:     End If
  loc_154BA25:   Next var_118 'Long
  loc_154BA2D: Next var_110 'Long
  loc_154BA41: For var_1D8 = CLng(var_B6) To CLng(var_B8) Step CLng(var_BA): var_A0 = var_1D8 'Long
  loc_154BA4F:   If (var_A0 = CLng(var_B6)) Then
  loc_154BA55:     var_B4 = arg_C
  loc_154BA5B:   Else
  loc_154BA77:     var_B4 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B4)))
  loc_154BA81:   End If
  loc_154BA81:   var_1CC = 1
  loc_154BA93:   var_258 = CVar((var_A0 - 4)) 'Long
  loc_154BAC4:   var_17C = (Format(CDate(var_B4), "DDD") + vbCr)
  loc_154BAE8:   var_1BC = Format(var_B4, "dd/MM")
  loc_154BAF0:   var_1E8 = (1 + var_1BC)
  loc_154BB04:   var_208 = (var_1E8 + Space(5))
  loc_154BB30:   var_238 = (1 + Format(var_B4, "dd/MMM/yy"))
  loc_154BB35:   var_278 = CVar(CStr(var_238)) 'String
  loc_154BB3D:   Set var_EC = Me.FGrid
  loc_154BB43:   LateIdCallSt
  loc_154BB74:   var_D8 = CVar((var_A0 - 4)) 'Long
  loc_154BB79:   var_128 = 1
  loc_154BB82:   var_16C = &H1F4
  loc_154BB8F:   Set var_EC = Me.FGrid
  loc_154BB95:   LateIdCallSt
  loc_154BBA3: Next var_1D8 'Long
  loc_154BBD5: var_19C = MemVar_1F950EC
  loc_154BBDD: Proc_6_7_F26918(var_1BC)
  loc_154BBF2: var_208 = "'D'"
  loc_154BC07: var_228 = IIf((MemVar_1F953B0 = "A"), var_208, "D")
  loc_154BC41: Proc_6_7_F26918(var_328, MemVar_1F950EC)
  loc_154BCA5: Proc_6_7_F26918(var_498, MemVar_1F950EC)
  loc_154BCB5: Proc_6_7_F26918(var_4E8, var_8C)
  loc_154BCDF: var_1E8 = "Select RoomNO as RoomCode,ChkinDate as FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") & ",ChkInDate," & var_1BC 
  loc_154BD08: var_308 = var_1E8 & ") as Days,GuestProf.Name as Reasons,dateadd(" & var_228 & ",dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") & ",ChkInDate," 
  loc_154BD13: var_348 = "),chkindate) as TODate From RoomOcc left join GuestProf on GuestProf.Code=RoomOcc.GuestProf Where ChkOutDate is NULL And dateadd("
  loc_154BD2F: var_458 = var_308 & var_328 & var_348 & IIf((MemVar_1F953B0 = "A"), "'D'", "D") & ",dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") 
  loc_154BD5D: unk_46946E.Execute CStr(var_458 & ",ChkInDate," & var_498 & "),chkindate)>=" & var_4E8), var_518, -1
  loc_154BD68: Set var_C8 = var_EC
  loc_154BDDC: If (var_C8.RecordCount > 0) Then
  loc_154BDDF:   ' Referenced from: 154C0F8
  loc_154BDEE:   If Not(var_C8.EOF) Then
  loc_154BE18:     For var_528 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A0 = var_528 'Long
  loc_154BE25:       var_E8 = 0
  loc_154BE85:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_C8.Fields.Item(0).Value) Then
  loc_154BECC:         var_C2 = CInt(DateDiff("d", var_8C, CVar(var_C8.Fields.Item("ToDate")), 1, 1))
  loc_154BEE5:         For var_530 = 0 To CLng(var_C2): var_A4 = var_530 'Long
  loc_154BF25:           If (CDate(var_C8.Fields.Item("FromDate").Value) >= var_8C) Then
  loc_154BF77:             var_15C = (DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1) + 1)
  loc_154BF80:             var_17C = (CVar(CStr(Me.FGrid.TextMatrix))) + 4)
  loc_154BF8B:             var_18C = ("Select RoomNO as RoomCode,ChkinDate as FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") + CVar(var_A4))
  loc_154BF91:             var_19C = CVar(CLng("Select RoomNO as RoomCode,ChkinDate as FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") & ",ChkInDate,")) 'Long
  loc_154BFA0:             Me.FGrid.Col = var_19C
  loc_154BFBE:           Else
  loc_154BFCB:             var_E8 = var_8C
  loc_154BFEB:             var_14C = (DateDiff("d", var_8C, var_E8, 1, 1) + 1)
  loc_154BFF4:             var_15C = (DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1) + 4)
  loc_154BFFF:             var_17C = (CVar(CStr(Me.FGrid.TextMatrix))) + CVar(var_A4))
  loc_154C005:             var_19C = CVar(CLng("Select RoomNO as RoomCode,ChkinDate as FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D"))) 'Long
  loc_154C014:             Me.FGrid.Col = var_19C
  loc_154C027:           End If
  loc_154C038:           Me.FGrid.Row = var_A0
  loc_154C054:           Me.FGrid.CellBackColor = global_116
  loc_154C099:           Me.FGrid.Text = CVar(Proc_6_38_E69628(var_C8.Fields.Item(3).Value, 0, var_C2, var_E8))
  loc_154C0BE:           Me.FGrid.CellFontName = "Arial Narrow"
  loc_154C0D2:           Set var_EC = Me.FGrid
  loc_154C0D8:           var_EC.CellFontSize = CVar(CDbl(8))
  loc_154C0E3:         Next var_530 'Long
  loc_154C0E8:       End If
  loc_154C0EB:     Next var_528 'Long
  loc_154C0F3:     var_C8.MoveNext
  loc_154C0F8:     GoTo loc_154BDDF
  loc_154C0FB:   End If
  loc_154C0FB: End If
  loc_154C128: var_19C = var_8C
  loc_154C130: Proc_6_7_F26918(var_1BC)
  loc_154C140: Proc_6_7_F26918(var_208, var_8C)
  loc_154C173: var_1F8 = "Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") & "," & var_1BC & ",Todate) as Days,Reasons,todate From RoomBlockOut Where Type='O' and ToDate>=" 
  loc_154C188: unk_46946E.Execute CStr(var_1F8 & var_208), var_228, -1
  loc_154C193: Set var_C8 = var_EC
  loc_154C1CB: If (var_C8.RecordCount > 0) Then
  loc_154C1CE:   ' Referenced from: 154C4EA
  loc_154C1DD:   If Not(var_C8.EOF) Then
  loc_154C207:     For var_538 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A0 = var_538 'Long
  loc_154C214:       var_E8 = 0
  loc_154C274:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_C8.Fields.Item(0).Value) Then
  loc_154C2B5:         For var_540 = 0 To CLng(var_C8.Fields.Item(2).Value): var_A4 = var_540 'Long
  loc_154C2F5:           If (CDate(var_C8.Fields.Item("FromDate").Value) >= var_8C) Then
  loc_154C347:             var_15C = (DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1) + 1)
  loc_154C350:             var_17C = (CVar(CStr(Me.FGrid.TextMatrix))) + 4)
  loc_154C35B:             var_18C = ("Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") + CVar(var_A4))
  loc_154C370:             Me.FGrid.Col = CVar(CLng("Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D") & ","))
  loc_154C38E:           Else
  loc_154C3BB:             var_14C = (DateDiff("d", var_8C, var_8C, 1, 1) + 1)
  loc_154C3C4:             var_15C = (DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1) + 4)
  loc_154C3CF:             var_17C = (CVar(CStr(Me.FGrid.TextMatrix))) + CVar(var_A4))
  loc_154C3E4:             Me.FGrid.Col = CVar(CLng("Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F953B0 = "A"), "'D'", "D")))
  loc_154C3F7:           End If
  loc_154C408:           Me.FGrid.Row = var_A0
  loc_154C424:           Me.FGrid.CellBackColor = global_120
  loc_154C43F:           Me.FGrid.CellForeColor = &HFFFF
  loc_154C457:           Me.FGrid.CellFontName = "Webdings"
  loc_154C48E:           var_14C = ("@  " + var_C8.Fields.Item(3).Value)
  loc_154C4A1:           Me.FGrid.Text = CVar(CStr(DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1)))
  loc_154C4CA:           Me.FGrid.CellFontSize = CVar(CDbl(&H14))
  loc_154C4D5:         Next var_540 'Long
  loc_154C4DA:       End If
  loc_154C4DD:     Next var_538 'Long
  loc_154C4E5:     var_C8.MoveNext
  loc_154C4EA:     GoTo loc_154C1CE
  loc_154C4ED:   End If
  loc_154C4ED: End If
  loc_154C4ED: var_D8 = 0
  loc_154C4F6: var_128 = &H1F4
  loc_154C503: Set var_EC = Me.FGrid
  loc_154C509: LateIdCallSt
  loc_154C514: var_D8 = 0
  loc_154C51D: var_128 = 1
  loc_154C526: var_16C = 0
  loc_154C533: Set var_EC = Me.FGrid
  loc_154C539: LateIdCallSt
  loc_154C557: Me.FGrid.FixedCols = 4
  loc_154C572: Me.FGrid.Col = 5
  loc_154C58D: Me.FGrid.Row = 1
  loc_154C595: var_D8 = 0
  loc_154C59E: var_128 = False
  loc_154C5A7: Set var_EC = Me.FGrid
  loc_154C5AD: LateIdCallSt
  loc_154C5C6: Me.FGrid.Redraw = True
  loc_154C5D3: Set var_98 = Nothing
  loc_154C5DB: Set var_9C = Nothing
  loc_154C5DE: Exit Sub
End Sub

Public Sub Proc_112_37_F9E278(arg_C) 'F9E278
  'Data Table: 469468
  Dim var_B4 As Variant
  Dim var_F4 As String
  Dim var_124 As Date
  Dim var_164 As Variant
  Dim var_184 As Date
  Dim var_1B4 As String
  Dim var_1E4 As Date
  Dim var_20C As String
  loc_F9E149: For var_94 = 0 To &H1D: var_8A = var_94 'Integer
  loc_F9E164:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9E16B:   Proc_6_7_F26918(var_C4, var_B4)
  loc_F9E177:   var_F4 = " and B.ArrDate+B.NoDays-1>="
  loc_F9E18B:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9E192:   Proc_6_7_F26918(var_134, var_124)
  loc_F9E1A3:   var_164 = CVar(var_88 & "Max(Case When RO.ChkInDate is null Then Case When B.ArrDate<=") & var_C4 & var_F4 & var_134 & " Then B.GuestName Else '' End Else Case When Ro.ChkInDate<=" 
  loc_F9E1B2:   var_184 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9E1B9:   Proc_6_7_F26918(var_194, var_184)
  loc_F9E1C5:   var_1B4 = " and RO.DEPDATE-1>="
  loc_F9E1D9:   var_1E4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9E1E0:   Proc_6_7_F26918(var_1F4, var_1E4)
  loc_F9E1F8:   var_20C = " Then case RO.tYPE When 'O' then ''Else B.GuestName +'#*' end Else '' End End ) as Day" & CStr(var_8A)
  loc_F9E207:   var_88 = CStr(var_164 & var_194 & var_1B4 & var_1F4 & CVar(var_20C & ","))
  loc_F9E23B: Next var_94 'Integer
  loc_F9E24A: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_F9E267: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_F9E271: Proc_112_37_F9E278 = 
End Sub

Public Sub Proc_112_38_16B3F2C
  'Data Table: 469468
  Dim var_100 As String
  Dim var_88 As Variant
  Dim Me As Variant
  Dim var_86 As Variant
  Dim var_118 As TextBox
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_14C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_358 As Variant
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_3E0 As Variant
  Dim var_3F0 As Variant
  Dim var_410 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_468 As Variant
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_4F0 As Variant
  Dim var_500 As Variant
  Dim var_520 As Variant
  Dim var_534 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_588 As Variant
  Dim var_5A8 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_610 As Variant
  Dim var_630 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_698 As Variant
  Dim var_6B8 As Variant
  Dim var_6DC As Variant
  Dim var_6FC As Variant
  Dim var_720 As Variant
  Dim var_740 As Variant
  Dim var_114 As Variant
  Dim var_748 As String
  Dim var_768 As String
  Dim var_788 As String
  Dim var_964 As String
  Dim var_994 As String
  Dim var_9C4 As String
  Dim var_9F4 As String
  Dim var_A34 As String
  Dim var_A64 As String
  Dim var_A94 As String
  Dim var_AC4 As String
  Dim var_AFC As String
  loc_16B29D0: On Error Goto loc_16B3F26
  loc_16B29D5: Close 1
  loc_16B29DE: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16B2A10: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F953D0, 1, -1, 0)
  loc_16B2A1B: var_88 = 1
  loc_16B2A35: If (Me.RecordCount > 0) Then
  loc_16B2A3E:   Me.MoveFirst
  loc_16B2A43:   ' Referenced from: 16B3E6C
  loc_16B2A55:   If Not(Me.EOF) Then
  loc_16B2A5E:     If (var_86 = 0) Then
  loc_16B2A71:       var_86 = Proc_6_129_12B862C(var_88, var_86)
  loc_16B2A7C:       var_100 = "B"
  loc_16B2A98:       Print 1, Proc_6_128_1026560(global_88, var_100, &H50)
  loc_16B2AB5:       Set var_114 = Me.Txt
  loc_16B2ABB:       Call 0.Method_Proc_112_38_16B3F2C0 (CInt(0), var_118, var_100)
  loc_16B2AC3:       var_86 = var_118.Text
  loc_16B2AD4:       Print 1, "From Date " & var_100
  loc_16B2AED:       Print 1, "* = OUT OF ORDER"
  loc_16B2B09:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16B2B0F:       Print 1, var_128
  loc_16B2B23:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16B2B34:         Set var_114 = Me.Txt
  loc_16B2B3A:         Call 0.Method_Proc_112_38_16B3F2C0 (CInt(0), var_118, 1)
  loc_16B2B54:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16B2B61:         global_80 = CDate(var_128)
  loc_16B2BAF:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_80, "DDD")))
  loc_16B2BFC:         var_14C = Space((2 - Len(CStr(Day(global_80)))))
  loc_16B2C04:         var_16C = (CVar(CStr(Day(global_80))) + Ucase(Format(global_80, "DDD")))
  loc_16B2C36:         var_1BC = Space((2 - Len(CStr(Month(global_80)))))
  loc_16B2C59:         var_1FC = (var_1BC + CVar(CStr(Month(global_80))))
  loc_16B2C6C:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16B2C9C:       Next var_12C 'Integer
  loc_16B2EB0:       var_128 = (Space(&HA) + "|")
  loc_16B2EBA:       var_15C = (Day(global_80) + CVar(Proc_6_45_EADFB8(var_BC(1))))
  loc_16B2EC3:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B2ECD:       var_1AC = (var_16C + CVar(Proc_6_45_EADFB8(var_BC(2), 4)))
  loc_16B2ED6:       var_1BC = (Month(global_80) + "|")
  loc_16B2EE0:       var_1EC = (var_1BC + CVar(Proc_6_45_EADFB8(var_BC(3), 4)))
  loc_16B2EE9:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B2EF3:       var_224 = (var_1FC + CVar(Proc_6_45_EADFB8(var_BC(4), 4)))
  loc_16B2EFC:       var_234 = (var_224 + "|")
  loc_16B2F06:       var_258 = (var_234 + CVar(Proc_6_45_EADFB8(var_BC(5), 4)))
  loc_16B2F0F:       var_278 = (var_258 + "|")
  loc_16B2F19:       var_29C = (var_278 + CVar(Proc_6_45_EADFB8(var_BC(6), 4)))
  loc_16B2F22:       var_2BC = (var_29C + "|")
  loc_16B2F2C:       var_2E0 = (var_2BC + CVar(Proc_6_45_EADFB8(var_BC(7), 4)))
  loc_16B2F35:       var_300 = (var_2E0 + "|")
  loc_16B2F3F:       var_324 = (var_300 + CVar(Proc_6_45_EADFB8(var_BC(8), 4)))
  loc_16B2F48:       var_344 = (var_324 + "|")
  loc_16B2F52:       var_368 = (var_344 + CVar(Proc_6_45_EADFB8(var_BC(9), 4)))
  loc_16B2F5B:       var_388 = (var_368 + "|")
  loc_16B2F65:       var_3AC = (var_388 + CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)))
  loc_16B2F6E:       var_3CC = (var_3AC + "|")
  loc_16B2F78:       var_3F0 = (var_3CC + CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)))
  loc_16B2F81:       var_410 = (var_3F0 + "|")
  loc_16B2F8B:       var_434 = (var_410 + CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)))
  loc_16B2F94:       var_454 = (var_434 + "|")
  loc_16B2F9E:       var_478 = (var_454 + CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)))
  loc_16B2FA7:       var_498 = (var_478 + "|")
  loc_16B2FB1:       var_4BC = (var_498 + CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)))
  loc_16B2FBA:       var_4DC = (var_4BC + "|")
  loc_16B2FC4:       var_500 = (var_4DC + CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)))
  loc_16B2FCD:       var_520 = (var_500 + "|")
  loc_16B2FD7:       var_544 = (var_520 + CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)))
  loc_16B2FE0:       var_564 = (var_544 + "|")
  loc_16B2FEA:       var_588 = (var_564 + CVar(Proc_6_45_EADFB8(var_BC(&H11), 4)))
  loc_16B2FF3:       var_5A8 = (var_588 + "|")
  loc_16B2FFD:       var_5CC = (var_5A8 + CVar(Proc_6_45_EADFB8(var_BC(&H12), 4)))
  loc_16B3006:       var_5EC = (var_5CC + "|")
  loc_16B3010:       var_610 = (var_5EC + CVar(Proc_6_45_EADFB8(var_BC(&H13), 4)))
  loc_16B3019:       var_630 = (var_610 + "|")
  loc_16B3023:       var_654 = (var_630 + CVar(Proc_6_45_EADFB8(var_BC(&H14), 4)))
  loc_16B302C:       var_674 = (var_654 + "|")
  loc_16B3036:       var_698 = (var_674 + CVar(Proc_6_45_EADFB8(var_BC(&H15), 4)))
  loc_16B303F:       var_6B8 = (var_698 + "|")
  loc_16B3049:       var_6DC = (var_6B8 + CVar(Proc_6_45_EADFB8(var_BC(&H16), 4)))
  loc_16B3052:       var_6FC = (var_6DC + "|")
  loc_16B305C:       var_720 = (var_6FC + CVar(Proc_6_45_EADFB8(var_BC(&H17), 4)))
  loc_16B3065:       var_740 = (var_720 + "|")
  loc_16B306B:       Print 1, var_740
  loc_16B3148:       var_128 = ("TYPE" + Space(6))
  loc_16B3151:       var_14C = (Day(global_80) + "|")
  loc_16B3161:       var_15C = (CVar(Proc_6_45_EADFB8(var_BC(1))) + CVar(var_D8(1)))
  loc_16B316A:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B317A:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16B3183:       var_1AC = (CVar(Proc_6_45_EADFB8(var_BC(2), 4)) + "|")
  loc_16B3193:       var_1BC = (Month(global_80) + CVar(var_D8(3)))
  loc_16B319C:       var_1DC = (var_1BC + "|")
  loc_16B31AC:       var_1EC = (CVar(Proc_6_45_EADFB8(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16B31B5:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B31C5:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16B31CE:       var_224 = (CVar(Proc_6_45_EADFB8(var_BC(4), 4)) + "|")
  loc_16B31DE:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16B31E7:       var_248 = (var_234 + "|")
  loc_16B31F7:       var_258 = (CVar(Proc_6_45_EADFB8(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16B3200:       var_278 = (var_258 + "|")
  loc_16B3210:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16B3219:       var_29C = (CVar(Proc_6_45_EADFB8(var_BC(6), 4)) + "|")
  loc_16B3229:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16B3232:       var_2D0 = (var_2BC + "|")
  loc_16B3242:       var_2E0 = (CVar(Proc_6_45_EADFB8(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16B324B:       var_300 = (var_2E0 + "|")
  loc_16B325B:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16B3264:       var_324 = (CVar(Proc_6_45_EADFB8(var_BC(8), 4)) + "|")
  loc_16B3274:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16B327D:       var_358 = (var_344 + "|")
  loc_16B328D:       var_368 = (CVar(Proc_6_45_EADFB8(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16B3296:       var_388 = (var_368 + "|")
  loc_16B32A6:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16B32AF:       var_3AC = (CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)) + "|")
  loc_16B32BF:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16B32C8:       var_3E0 = (var_3CC + "|")
  loc_16B32D8:       var_3F0 = (CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16B32E1:       var_410 = (var_3F0 + "|")
  loc_16B32F1:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16B32FA:       var_434 = (CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)) + "|")
  loc_16B330A:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16B3313:       var_468 = (var_454 + "|")
  loc_16B3323:       var_478 = (CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16B332C:       var_498 = (var_478 + "|")
  loc_16B333C:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16B3345:       var_4BC = (CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)) + "|")
  loc_16B3355:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16B335E:       var_4F0 = (var_4DC + "|")
  loc_16B336E:       var_500 = (CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16B3377:       var_520 = (var_500 + "|")
  loc_16B3387:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16B3390:       var_544 = (CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)) + "|")
  loc_16B3396:       Print 1, var_544
  loc_16B3406:       Print 1, var_A0
  loc_16B340C:     End If
  loc_16B3412:     var_86 = (var_86 + 7)
  loc_16B343A:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16B3446:       If (var_A2 = 3) Then
  loc_16B3449:         GoTo loc_16B3E64
  loc_16B344C:       End If
  loc_16B3ACB:       var_748 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), 3), 5) & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")), var_86), 4)
  loc_16B3AED:       var_768 = var_748 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day5"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day6"))), 4)
  loc_16B3B0F:       var_788 = var_768 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day7"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day8"))), 4)
  loc_16B3B31:       var_964 = var_788 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day9"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day10"))), 4)
  loc_16B3B53:       var_994 = var_964 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day11"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day12"))), 4)
  loc_16B3B75:       var_9C4 = var_994 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day13"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day14"))), 4)
  loc_16B3B97:       var_9F4 = var_9C4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day15"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day16"))), 4)
  loc_16B3BC6:       var_A34 = Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16B3BE8:       var_A64 = var_A34 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16B3C0A:       var_A94 = var_A64 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16B3C2C:       var_AC4 = var_A94 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16B3C4E:       var_AFC = var_AC4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day26"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day27"))), 4)
  loc_16B3C5E:       Print 1, var_9F4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day17"))), 4) & "|" & var_AFC & "|"
  loc_16B3DFF:       var_86 = (var_86 + 1)
  loc_16B3E08:       If (var_86 > &H3C) Then
  loc_16B3E10:         Print 1, var_A0
  loc_16B3E18:         var_86 = 0
  loc_16B3E21:         var_88 = (var_88 + 1)
  loc_16B3E36:         Print 1, Chr(&HC)
  loc_16B3E3F:       End If
  loc_16B3E45:       Me.MoveNext
  loc_16B3E5E:       If (Me.EOF = &HFF) Then
  loc_16B3E61:         GoTo loc_16B3E6C
  loc_16B3E64:         ' Referenced from: 16B3449
  loc_16B3E64:       End If
  loc_16B3E67:     Next var_914 'Integer
  loc_16B3E6C:     ' Referenced from: 16B3E61
  loc_16B3E6C:     GoTo loc_16B2A43
  loc_16B3E6F:   End If
  loc_16B3E6F: End If
  loc_16B3E74: Print 1, var_A0
  loc_16B3E9A: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16B3EA0: Print 1, CVar(Me.Fields.Item("Day5"))
  loc_16B3EB1: Close 1
  loc_16B3EBA: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16B3ECA: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_16B3ED5: Close 1
  loc_16B3EDF: If (MemVar_1F953BC = "Y") Then
  loc_16B3EFB:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16B3F05: Else
  loc_16B3F1E:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16B3F25: End If
  loc_16B3F25: Exit Sub
  loc_16B3F26: ' Referenced from: 16B29D0
  loc_16B3F26: Proc_6_60_E63754()
  loc_16B3F2B: Exit Sub
End Sub

Public Sub Proc_112_39_F89944(arg_C) 'F89944
  'Data Table: 469468
  Dim var_90 As Recordset15
  loc_F897ED: Set var_90 = arg_C 
  loc_F89815: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F89841: var_90.Fields.Append "RoomNo", &HC8, 5
  loc_F8986D: var_90.Fields.Append "RoomCat", &HC8, &H19
  loc_F8987C: For var_A8 = 5 To &H1B: var_8A = var_A8 'Integer
  loc_F898B2:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F898C4: Next var_A8 'Integer
  loc_F898ED: var_90.Fields.Append "Mark", &HC8, 1
  loc_F898FD: var_90.CursorType = 3
  loc_F8990A: var_90.LockType = 3
  loc_F89929: var_90.Open var_A4, var_C0, -1
  loc_F89930: Set var_90 = Nothing 
  loc_F89937: Set var_88 = arg_C 
  loc_F8993B: Proc_112_39_F89944 = -1
End Sub
