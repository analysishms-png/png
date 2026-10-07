VERSION 5.00
Begin VB.Form RSSaleBill1
  Caption = "Sale Bill Entry"
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
  ClientHeight = 7185
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
  Begin CommandButton Command4
    Caption = "Wizard"
    Left = 8895
    Top = 30
    Width = 1245
    Height = 285
    TabIndex = 43
  End
  Begin DataGrid DGKOTFAULT
    Left = 8370
    Top = 1440
    Width = 4290
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 42
  End
  Begin TextBox Txt
    Index = 11
    Left = 4560
    Top = 945
    Width = 1200
    Height = 240
    TabIndex = 41
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin CommandButton Command3
    Caption = "Command3"
    Left = 6885
    Top = 45
    Width = 630
    Height = 285
    TabIndex = 40
  End
  Begin CommandButton CmdSave
    Caption = "&Save"
    Left = 8565
    Top = 6285
    Width = 1530
    Height = 420
    TabIndex = 12
  End
  Begin CommandButton Command2
    Caption = "&Print"
    Left = 10110
    Top = 6285
    Width = 1530
    Height = 420
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 10
    Left = 1635
    Top = 960
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 38
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin DataGrid DGRest
    Left = 11700
    Top = 1545
    Width = 5910
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGItem
    Left = 11655
    Top = 4620
    Width = 4095
    Height = 5400
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 9
    Left = 7605
    Top = 45
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin MSHFlexGrid FGCat
    Left = 0
    Top = 4155
    Width = 8340
    Height = 2355
    Visible = 0   'False
    TabIndex = 32
  End
  Begin TextBox Txt
    Index = 8
    Left = 9990
    Top = 5955
    Width = 1440
    Height = 240
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    Left = 9990
    Top = 5655
    Width = 1440
    Height = 240
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    Left = 9990
    Top = 5355
    Width = 1440
    Height = 240
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGTable
    Left = 2655
    Top = 6735
    Width = 4290
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin CommandButton Command1
    Caption = "Set&tlement"
    Left = 8565
    Top = 6705
    Width = 3075
    Height = 420
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 5
    Left = 7110
    Top = 450
    Width = 480
    Height = 240
    TabIndex = 25
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 4
    Left = 5970
    Top = 705
    Width = 375
    Height = 240
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin TextBox TxtGt
    Index = 1
    Left = 10470
    Top = 1185
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin TextBox TxtPer
    Index = 1
    Left = 9930
    Top = 1185
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
    Index = 3
    Left = 1635
    Top = 705
    Width = 2700
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin Frame FrmList
    Left = 10515
    Top = 2070
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 90
      Width = 2415
      Height = 1800
      TabIndex = 19
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &H80000000&
    Left = 7755
    Top = 60
    Width = 2325
    Height = 210
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 40
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
    Index = 0
    Left = 1635
    Top = 450
    Width = 1200
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 8
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
    Left = 5970
    Top = 450
    Width = 1125
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 255
    Top = 1425
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 5
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
    Top = 1200
    Width = 8250
    Height = 5520
    TabIndex = 6
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11835
    Height = 375
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 7050
    Top = 6930
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 35
  End
  Begin Label lblTable
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 0
    Top = 6705
    Width = 8325
    Height = 465
    TabIndex = 39
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblSession
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HC00000&
    Left = 8955
    Top = 795
    Width = 1665
    Height = 330
    TabIndex = 37
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    Left = 8415
    Top = 1500
    Width = 180
    Height = 210
    Visible = 0   'False
    TabIndex = 31
  End
  Begin Label Label1
    Caption = "  To Refund    "
    Index = 6
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 8700
    Top = 5940
    Width = 2805
    Height = 270
    TabIndex = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "  Tip Amount  "
    Index = 5
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 8700
    Top = 5640
    Width = 2805
    Height = 270
    TabIndex = 29
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "  Cash Recd.             "
    Index = 4
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 8700
    Top = 5340
    Width = 2805
    Height = 270
    TabIndex = 28
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 9735
    Top = 450
    Width = 195
    Height = 390
    TabIndex = 26
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Line Line1
    BorderColor = &H404040&
    X1 = 8325
    Y1 = 1080
    X2 = 8325
    Y2 = 6885
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "No. Of Persons"
    Index = 0
    ForeColor = &H0&
    Left = 4575
    Top = 720
    Width = 1230
    Height = 210
    TabIndex = 24
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 10305
    Top = 1185
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 23
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &H0&
    Left = 8550
    Top = 1185
    Width = 465
    Height = 240
    TabIndex = 22
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
  Begin Label Label1
    Caption = "Table No."
    Index = 2
    ForeColor = &H0&
    Left = 270
    Top = 720
    Width = 795
    Height = 210
    TabIndex = 20
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
  Begin Label Label1
    Caption = "Vr. No."
    Index = 3
    ForeColor = &H0&
    Left = 270
    Top = 465
    Width = 585
    Height = 210
    TabIndex = 17
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &H0&
    Left = 4575
    Top = 465
    Width = 390
    Height = 210
    TabIndex = 16
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 945
    Top = 465
    Width = 645
    Height = 210
    TabIndex = 15
    Alignment = 1 'Right Justify
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
    BorderColor = &HC0C0FF&
    Left = 8565
    Top = 5265
    Width = 3075
    Height = 1035
    BorderWidth = 2
    FillColor = &HC0E0FF&
    FillStyle = 0
  End
End

Attribute VB_Name = "RSSaleBill1"

Private global_140 As Integer
Private global_142 As Integer
Private global_52 As Integer
Private global_112 As Integer
Private global_92 As Integer

Private Sub FGPoint_UnknownEvent_9 'E863B8
  'Data Table: 552758
  loc_E86364: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E86367:   Call DGTable_UnknownEvent_9()
  loc_E8636C: End If
  loc_E86388: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E8638B:   Call DGItem_UnknownEvent_9()
  loc_E86390: End If
  loc_E863AC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E863AF:   Call DGRest_UnknownEvent_9()
  loc_E863B4: End If
  loc_E863B4: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A3A10
  'Data Table: 552758
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A375F: Me.DGItem.Visible = False
  loc_10A377E: If (Me.RecordCount > 0) Then
  loc_10A37BB:   Set var_B4 = Me.TxtGrid
  loc_10A37C1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A37C9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A37F2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A37FA:   var_EC = CVar(CLng(4)) 'Long
  loc_10A382D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A3835:   Set var_B8 = Me.FGrid
  loc_10A383B:   LateIdCallSt
  loc_10A386A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A3872:   var_EC = CVar(CLng(&HB)) 'Long
  loc_10A38A5:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A38B3:   LateIdCallSt
  loc_10A391A:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(6)))) 'String
  loc_10A3922:   Set var_B8 = Me.FGrid
  loc_10A3928:   LateIdCallSt
  loc_10A3955:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A395D:   var_EC = CVar(CLng(3)) 'Long
  loc_10A397F:   var_B0 = Me.Fields.Item("DispCode")
  loc_10A3990:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A3998:   Set var_B8 = Me.FGrid
  loc_10A399E:   LateIdCallSt
  loc_10A39BA: End If
  loc_10A39C6: Set var_A8 = Me.TxtGrid
  loc_10A39CC: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A39D4: var_B8 = var_B0.Visible
  loc_10A39E6: If (var_12E = &HFF) Then
  loc_10A39F2:   Set var_A8 = Me.TxtGrid
  loc_10A39F8:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_A4)
  loc_10A3A00:   var_B0.SetFocus
  loc_10A3A0C: End If
  loc_10A3A0C: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9DBA0
  'Data Table: 552758
  Dim var_A8 As Variant
  loc_E9DB24: Set var_88 = Me.DGItem
  loc_E9DB4E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9DB56: Set var_BC = Me.DGItem
  loc_E9DB90: Proc_6_138_106E830(Me.DGItem, global_60, 0, Me.FGPoint)
  loc_E9DB9E: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5D3B8
  'Data Table: 552758
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5D298: On Error Goto loc_F5D3B2
  loc_F5D2AA: Me.DGTable.Visible = False
  loc_F5D2C9: If (Me.RecordCount > 0) Then
  loc_F5D308:   Set var_B4 = Me.Txt
  loc_F5D30E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F5D316:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5D349:   var_B0 = Me.Fields.Item("Code")
  loc_F5D368:   Set var_B4 = Me.Txt
  loc_F5D36E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F5D376:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5D38C: End If
  loc_F5D397: Set var_A8 = Me.Txt
  loc_F5D39D: Call 0.Method_DGTable_UnknownEvent_90 (CInt(3))
  loc_F5D3A5: var_B0.SetFocus
  loc_F5D3B1: Exit Sub
  loc_F5D3B2: ' Referenced from: F5D298
  loc_F5D3B2: Proc_6_60_E63754(var_B0)
  loc_F5D3B7: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA2634
  'Data Table: 552758
  Dim var_A8 As Variant
  loc_EA25B4: Set var_88 = Me.DGTable
  loc_EA25DE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA25E6: Set var_BC = Me.DGTable
  loc_EA2622: Proc_6_138_106E830(Me.DGTable, global_76, CInt(3), Me.FGPoint)
  loc_EA2630: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60F44
  'Data Table: 552758
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E60F0F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60F22: Set var_A8 = Me.TxtGrid
  loc_E60F28: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60F30: var_AC.Visible = False
  loc_E60F3C: Call Proc_135_76_EF78C8()
  loc_E60F41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68E38
  'Data Table: 552758
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68DF4: Set var_88 = Me.TxtGrid
  loc_E68DFA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68E14: If (var_8C.Visible = 0) Then
  loc_E68E2D:   Me.FGrid.BackColorSel = CVar(CLng(global_96))
  loc_E68E35: End If
  loc_E68E35: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFFC24
  'Data Table: 552758
  loc_DFFC1C: Call Proc_135_70_EF86C0()
  loc_DFFC21: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '11DE084
  'Data Table: 552758
  Dim var_98 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11DDC08: Set var_88 = Me.TopCtrl1
  loc_11DDC0E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_11DDC5E: If CBool(( = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_11DDC67:   Call Form_KeyDown(arg_C, arg_10)
  loc_11DDC6C: End If
  loc_11DDC70: Set var_88 = Me.TopCtrl1
  loc_11DDC76: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_11DDC8B: If ( = "Browse") Then
  loc_11DDC8E:   Exit Sub
  loc_11DDC8F: End If
  loc_11DDD03: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11DDD1C:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_11DDD2C:   var_DC = "+{Tab}"
  loc_11DDD32:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11DDD3C:   arg_C = 0
  loc_11DDD42: Else
  loc_11DDD4C:   var_B8 = Me.FGrid.Rows
  loc_11DDD99:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_11DDDB2:     Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_11DDDC8:     Proc_303_0_FBACC8("{Tab}", 0, var_B8)
  loc_11DDDD2:     arg_C = 0
  loc_11DDDD5:   End If
  loc_11DDDD5: End If
  loc_11DDDDB: global_140 = arg_C
  loc_11DDE01: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11DDE25: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_11DDE3B:   var_EC = CLng(Me.FGrid.Col)
  loc_11DDE4B:   If (var_EC = CLng(4)) Then
  loc_11DDE59:     If (global_180 <> "Y") Then
  loc_11DDE6F:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DDE87:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11DDE8C:       var_11C = vbNullString
  loc_11DDE96:       Set var_E4 = Me.FGrid
  loc_11DDE9C:       LateIdCallSt
  loc_11DDEC7:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DDECF:       var_FC = CVar(CLng(&HB)) 'Long
  loc_11DDED4:       var_11C = vbNullString
  loc_11DDEDE:       Set var_E0 = Me.FGrid
  loc_11DDEE4:       LateIdCallSt
  loc_11DDF09:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DDF11:       var_FC = CVar(CLng(7)) 'Long
  loc_11DDF16:       var_11C = vbNullString
  loc_11DDF20:       Set var_E0 = Me.FGrid
  loc_11DDF26:       LateIdCallSt
  loc_11DDF38:     End If
  loc_11DDF3B:   Else
  loc_11DDF42:     If Not (var_EC = CLng(3)) Then
  loc_11DDF4C:       If (var_EC = CLng(7)) Then
  loc_11DDF4F:       End If
  loc_11DDF5A:       If (global_180 <> "Y") Then
  loc_11DDF70:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DDF88:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11DDF8D:         var_11C = vbNullString
  loc_11DDF97:         Set var_E4 = Me.FGrid
  loc_11DDF9D:         LateIdCallSt
  loc_11DDFB5:       End If
  loc_11DDFB8:     Else
  loc_11DDFBF:       If (var_EC = CLng(8)) Then
  loc_11DDFD5:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DDFDD:         var_FC = CVar(CLng(&H19)) 'Long
  loc_11DE010:         If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_11DE026:           var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DE03E:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11DE043:           var_11C = vbNullString
  loc_11DE04D:           Set var_E4 = Me.FGrid
  loc_11DE053:           LateIdCallSt
  loc_11DE06B:         End If
  loc_11DE06B:       End If
  loc_11DE06B:     End If
  loc_11DE06B:   End If
  loc_11DE06B: End If
  loc_11DE071: If (arg_C = &HD) Then
  loc_11DE079:   global_142 = 0
  loc_11DE07C: End If
  loc_11DE081: Exit Sub
  loc_11DE082: Set var_1FA0 = 0
End Sub

Private Sub FGrid_UnknownEvent_B 'E139C0
  'Data Table: 552758
  loc_E139B1: Call FGrid_UnknownEvent_C()
  loc_E139BB: global_142 = 0
  loc_E139BE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '10EAC88
  'Data Table: 552758
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_DA As Integer
  Dim var_FC As Variant
  loc_10EA974: Set var_88 = Me.TopCtrl1
  loc_10EA97A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_10EA98F: If ( = "Browse") Then
  loc_10EA992:   Exit Sub
  loc_10EA993: End If
  loc_10EA9A6: var_BC = CLng(Me.FGrid.Col)
  loc_10EA9B6: If (var_BC = CLng(4)) Then
  loc_10EA9C4:   If (global_180 <> "Y") Then
  loc_10EA9F8:     var_DA = Asc(CStr(Ucase(Chr(CLng(Index)))))
  loc_10EAA2E:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_10EAA4A:   End If
  loc_10EAA4D: Else
  loc_10EAA54:   If (var_BC = CLng(2)) Then
  loc_10EAA62:     If (global_180 <> "Y") Then
  loc_10EAAA3:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_10EAAB5:     End If
  loc_10EAAB8:   Else
  loc_10EAABF:     If (var_BC = CLng(8)) Then
  loc_10EAAD5:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10EAADD:       var_FC = CVar(CLng(&H19)) 'Long
  loc_10EAB10:       If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_10EAB51:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_10EAB63:       End If
  loc_10EAB66:     Else
  loc_10EAB6D:       If (var_BC = CLng(7)) Then
  loc_10EAB7B:         If (global_180 <> "Y") Then
  loc_10EABBC:           Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_10EABCE:         End If
  loc_10EABD1:       Else
  loc_10EABD8:         If (var_BC = CLng(3)) Then
  loc_10EABE6:           If (global_180 <> "Y") Then
  loc_10EAC04:             If (((Index >= &H41) And (Index <= &H5A)) Or ((Index >= &H61) And (Index <= &H7A))) Then
  loc_10EAC19:               Me.FGrid.Col = CVar(CLng(4))
  loc_10EAC21:             End If
  loc_10EAC5F:             Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index, 0)
  loc_10EAC71:           End If
  loc_10EAC71:         End If
  loc_10EAC71:       End If
  loc_10EAC71:     End If
  loc_10EAC71:   End If
  loc_10EAC71: End If
  loc_10EAC7B: If (CLng(Index) <> &HD) Then
  loc_10EAC83:   global_142 = &HFF
  loc_10EAC86: End If
  loc_10EAC86: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FFBD9C
  'Data Table: 552758
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  loc_FFBBB0: Set var_90 = Me.TopCtrl1
  loc_FFBBB6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_FFBBCB: If ( = "Browse") Then
  loc_FFBBCE:   Exit Sub
  loc_FFBBCF: End If
  loc_FFBBDA: If (global_180 = "Y") Then
  loc_FFBBDD:   Exit Sub
  loc_FFBBDE: End If
  loc_FFBBFB: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FFBBFE:   Exit Sub
  loc_FFBBFF: End If
  loc_FFBC10: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FFBC32:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FFBC6C:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FFBC8E:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FFBCA4:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFBCAD:         Set var_114 = Me.FGrid
  loc_FFBCC8:       Else
  loc_FFBCDB:         Me.FGrid.Rows = 1
  loc_FFBD01:         var_B0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FFBD09:         Set var_114 = Me.FGrid
  loc_FFBD36:         Me.FGrid.FixedRows = 1
  loc_FFBD3E:       End If
  loc_FFBD43:       Call Proc_135_84_165F774(&H32, FGrid.DispID_10000, var_B0)
  loc_FFBD48:     End If
  loc_FFBD4B:   Else
  loc_FFBD6C:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_FFBD7C:   End If
  loc_FFBD80:   Set var_90 = Me.FGrid
  loc_FFBD91: End If
  loc_FFBD96: Set var_8C = Nothing
  loc_FFBD99: Exit Sub
  loc_FFBD9A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F39C
  'Data Table: 552758
  Dim var_8C As TextBox
  loc_E3F370: Call Proc_135_76_EF78C8()
  loc_E3F380: Set var_88 = Me.TxtGrid
  loc_E3F386: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F38E: var_8C.Visible = False
  loc_E3F39A: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '128ED70
  'Data Table: 552758
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_128E7A2: Set var_88 = Me.TxtGrid
  loc_128E7A8: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_128E7B6: Proc_6_74_E23240(var_8C)
  loc_128E7C2: Call Proc_135_76_EF78C8(var_8C)
  loc_128E7D5: Set var_88 = Me.TxtGrid
  loc_128E7DB: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_128E7E3: var_8C.MaxLength = 0
  loc_128E7FB: If (Index = 0) Then
  loc_128E811:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128E850:   Set var_108 = Me.TxtGrid
  loc_128E856:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_128E85E:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_128E88F:   var_114 = CLng(Me.FGrid.Col)
  loc_128E89F:   If (var_114 = CLng(3)) Then
  loc_128E8C9:     Set var_8C = Me.FGrid
  loc_128E8EF:     Me.Filter = CVar(CVar(CLng(1)) & CStr(var_8C.TextMatrix)) & "'")
  loc_128E919:     Set var_88 = Me.TxtGrid
  loc_128E91F:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4, CVar(CLng(Me.FGrid.Row)))
  loc_128E927:     var_8C.MaxLength = "OutletCode='"
  loc_128E936:   Else
  loc_128E93D:     If (var_114 = CLng(4)) Then
  loc_128E957:       If (Me.RecordCount > 0) Then
  loc_128E97D:         Proc_6_137_1192FDC(Me.DGItem, global_60, Index, Me.FGPoint)
  loc_128E98B:       End If
  loc_128E9A1:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128E9D8:       Me.Filter = CVar(CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_128E9FD:       var_11C = Me.RecordCount
  loc_128EA14:       var_11E = Me.EOF
  loc_128EA28:       var_120 = Me.BOF
  loc_128EA48:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128EA84:       If (CVar(CLng(&HB)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_128EA87:         Exit Sub
  loc_128EA88:       End If
  loc_128EA8E:       Me.MoveFirst
  loc_128EAA6:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128EAAE:       var_E4 = CVar(CLng(&HB)) 'Long
  loc_128EAB7:       Set var_8C = Me.FGrid
  loc_128EABD:       var_B4 = var_8C.TextMatrix)
  loc_128EAF2:       Me.Find "Code='" & CStr(var_B4) & "'", 0, 1
  loc_128EB22:       If (Me.EOF = &HFF) Then
  loc_128EB2B:         Me.MoveFirst
  loc_128EB30:       End If
  loc_128EB39:       CVarUnk
  loc_128EB3E:       VerifyVarObj
  loc_128EB44:       Set var_88 = Me.DGItem
  loc_128EB4A:       LateIdStAd
  loc_128EB5B:     Else
  loc_128EB62:       If (var_114 = CLng(8)) Then
  loc_128EB7A:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_60, var_134, var_B4)
  loc_128EB82:         var_8C.MaxLength = var_E4
  loc_128EB97:         If (global_142 = 0) Then
  loc_128EBA2:           var_110 = "{Home}+{End}"
  loc_128EBA8:           Proc_303_0_FBACC8(CStr(var_B4), 0, var_C4, var_C4)
  loc_128EBB0:         End If
  loc_128EBB3:       Else
  loc_128EBBA:         If (var_114 = CLng(2)) Then
  loc_128EBD4:           If (Me.RecordCount > 0) Then
  loc_128EBFA:             Proc_6_137_1192FDC(Me.DGRest, global_64, Index, Me.FGPoint)
  loc_128EC08:           End If
  loc_128EC11:           var_11C = Me.RecordCount
  loc_128EC28:           var_11E = Me.EOF
  loc_128EC3C:           var_120 = Me.BOF
  loc_128EC5C:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128EC98:           If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_128EC9B:             Exit Sub
  loc_128EC9C:           End If
  loc_128ECA2:           Me.MoveFirst
  loc_128ECBA:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128ECC2:           var_E4 = CVar(CLng(1)) 'Long
  loc_128ED06:           Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_128ED36:           If (Me.EOF = &HFF) Then
  loc_128ED3F:             Me.MoveFirst
  loc_128ED44:           End If
  loc_128ED4D:           CVarUnk
  loc_128ED52:           VerifyVarObj
  loc_128ED58:           Set var_88 = Me.DGRest
  loc_128ED5E:           LateIdStAd
  loc_128ED6C:         End If
  loc_128ED6C:       End If
  loc_128ED6C:     End If
  loc_128ED6C:   End If
  loc_128ED6C: End If
  loc_128ED6C: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12DDE1C
  'Data Table: 552758
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_94 As String
  loc_12DD767: var_86 = Shift
  loc_12DD776: If (KeyCode = 0) Then
  loc_12DD783:   If (CLng(Shift) = &H1B) Then
  loc_12DD793:     Set var_8C = Me.TxtGrid
  loc_12DD799:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_12DD7A1:     var_88 = var_90.Tag
  loc_12DD7B3:     Set var_98 = Me.TxtGrid
  loc_12DD7B9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12DD7C1:     var_9C.Text = var_94
  loc_12DD7DD:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12DD7E2:     Call Proc_135_76_EF78C8(arg_14)
  loc_12DD7EB:     Set var_8C = Me.FGrid
  loc_12DD808:     Set var_8C = Me.TxtGrid
  loc_12DD80E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12DD816:     var_90.Visible = FGrid.DispID_8001
  loc_12DD822:     Exit Sub
  loc_12DD823:   End If
  loc_12DD836:   var_B0 = CLng(Me.FGrid.Col)
  loc_12DD846:   If (var_B0 = CLng(2)) Then
  loc_12DD866:     Set var_9C = Me.FGPoint
  loc_12DD871:     Set var_98 = Nothing
  loc_12DD89F:     Proc_6_69_134A630(Me.DGRest, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_12DD90E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12DD915:       Set var_98 = Me.DGRest
  loc_12DD934:       Proc_6_138_106E830(var_98, global_64, KeyCode, Me.FGPoint, 1)
  loc_12DD942:     End If
  loc_12DD94C:     If (CLng(Shift) = &HD) Then
  loc_12DD955:       Call Proc_135_71_1827E48(KeyCode, var_B2, var_98, var_9C)
  loc_12DD960:       If (var_B2 = &HFF) Then
  loc_12DD9A6:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, 7)
  loc_12DD9B6:       End If
  loc_12DD9B6:     End If
  loc_12DD9B9:   Else
  loc_12DD9C0:     If (var_B0 = CLng(4)) Then
  loc_12DDA19:       Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 1, Nothing)
  loc_12DDA88:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12DDAAE:         Proc_6_138_106E830(Me.DGItem, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_12DDABC:       End If
  loc_12DDAC6:       If (CLng(Shift) = &HD) Then
  loc_12DDACF:         Call Proc_135_71_1827E48(KeyCode, var_B2, 0, 3)
  loc_12DDADA:         If (var_B2 = &HFF) Then
  loc_12DDB27:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, CByte((CInt(&HA) + 1)), 0)
  loc_12DDB37:         End If
  loc_12DDB37:       End If
  loc_12DDB3A:     Else
  loc_12DDB41:       If (var_B0 = CLng(8)) Then
  loc_12DDB4A:         Call Proc_135_71_1827E48(KeyCode, var_B2, 7, 0)
  loc_12DDB55:         If (var_B2 = &HFF) Then
  loc_12DDB9B:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, &HA, 0)
  loc_12DDBAB:         End If
  loc_12DDBAE:       Else
  loc_12DDBB5:         If (var_B0 = CLng(7)) Then
  loc_12DDBF8:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_142 = &HFF))) Then
  loc_12DDC01:             Call Proc_135_71_1827E48(KeyCode, var_B2, 0, 0)
  loc_12DDC0C:             If (var_B2 = &HFF) Then
  loc_12DDC52:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, 8, 0)
  loc_12DDC75:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DDC7D:               var_FC = CVar(CLng(1)) 'Long
  loc_12DDC90:               Set var_90 = Me.FGrid
  loc_12DDC96:               LateIdCallSt
  loc_12DDCBB:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DDCC3:               var_FC = CVar(CLng(2)) 'Long
  loc_12DDCD6:               Set var_90 = Me.FGrid
  loc_12DDCDC:               LateIdCallSt
  loc_12DDD00:               Me.FGrid.Col = CVar(CLng(3))
  loc_12DDD08:             End If
  loc_12DDD08:           End If
  loc_12DDD0B:         Else
  loc_12DDD12:           If (var_B0 = CLng(3)) Then
  loc_12DDD1F:             If (CLng(Shift) = &HD) Then
  loc_12DDD28:               Call Proc_135_71_1827E48(KeyCode, var_B2, var_90, 0)
  loc_12DDD33:               If (var_B2 = &HFF) Then
  loc_12DDD80:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, CByte((CInt(7) + 1)))
  loc_12DDDA3:                 var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DDDAB:                 var_FC = CVar(CLng(3)) 'Long
  loc_12DDDDE:                 If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12DDDF3:                   Me.FGrid.Col = CVar(CLng(3))
  loc_12DDDFE:                 Else
  loc_12DDE10:                   Me.FGrid.Col = CVar(CLng(7))
  loc_12DDE18:                 End If
  loc_12DDE18:               End If
  loc_12DDE18:             End If
  loc_12DDE18:           End If
  loc_12DDE18:         End If
  loc_12DDE18:       End If
  loc_12DDE18:     End If
  loc_12DDE18:   End If
  loc_12DDE18: End If
  loc_12DDE18: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10E72B4
  'Data Table: 552758
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_10E6F97: Proc_6_58_E06050(arg_10)
  loc_10E6FA8: If (KeyAscii = 0) Then
  loc_10E6FBE:   var_A0 = CLng(Me.FGrid.Col)
  loc_10E6FCE:   If (var_A0 = CLng(3)) Then
  loc_10E6FEC:     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10E7001:       Me.FGrid.Col = CVar(CLng(4))
  loc_10E7025:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10E7037:         var_C4 = "Name"
  loc_10E7052:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10)
  loc_10E7061:       End If
  loc_10E7061:     End If
  loc_10E7064:   Else
  loc_10E706B:     If (var_A0 = CLng(2)) Then
  loc_10E708A:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_10E70B7:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name")
  loc_10E70E9:         Proc_6_138_106E830(Me.DGItem, global_60, KeyAscii, Me.FGPoint, 0)
  loc_10E70F7:       End If
  loc_10E70FA:     Else
  loc_10E7101:       If (var_A0 = CLng(4)) Then
  loc_10E7120:         If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10E7132:           var_C4 = "Name"
  loc_10E714D:           Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10, var_C4)
  loc_10E7167:           Set var_CC = Me.FGPoint
  loc_10E717F:           Proc_6_138_106E830(Me.DGItem, global_60, KeyAscii, var_CC, 0)
  loc_10E718D:         End If
  loc_10E7190:       Else
  loc_10E7197:         If (var_A0 = CLng(7)) Then
  loc_10E71A4:           Set var_8C = Me.TxtGrid
  loc_10E71AA:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_CC, var_C4)
  loc_10E71C5:           Proc_6_42_129B55C(var_CC, arg_10, 8, 3)
  loc_10E71D4:         Else
  loc_10E71DB:           If (var_A0 = CLng(8)) Then
  loc_10E71E8:             Set var_8C = Me.TxtGrid
  loc_10E71EE:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_CC, 0)
  loc_10E7209:             Proc_6_42_129B55C(var_CC, arg_10, 8)
  loc_10E7218:           Else
  loc_10E721F:             If (var_A0 = CLng(3)) Then
  loc_10E723D:               If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10E7252:                 Me.FGrid.Col = CVar(CLng(4))
  loc_10E7276:                 If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10E72A3:                   Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name")
  loc_10E72B2:                 End If
  loc_10E72B2:               End If
  loc_10E72B2:             End If
  loc_10E72B2:           End If
  loc_10E72B2:         End If
  loc_10E72B2:       End If
  loc_10E72B2:     End If
  loc_10E72B2:   End If
  loc_10E72B2: End If
  loc_10E72B2: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F63778
  'Data Table: 552758
  Dim var_A0 As Long
  loc_F63648: On Error Goto loc_F63772
  loc_F63657: If (KeyCode = 0) Then
  loc_F6366D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F6367D:   If (var_A0 = CLng(2)) Then
  loc_F636A3:     If ((Shift <> &HD) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_F636B4:       Call TxtGrid_KeyDown(KeyCode, global_140)
  loc_F636E3:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_F636F2:     End If
  loc_F636F5:   Else
  loc_F636FC:     If (var_A0 = CLng(4)) Then
  loc_F63722:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F63733:         Call TxtGrid_KeyDown(KeyCode, global_140)
  loc_F63762:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift, "Name", &HFF)
  loc_F63771:       End If
  loc_F63771:     End If
  loc_F63771:   End If
  loc_F63771: End If
  loc_F63771: Exit Sub
  loc_F63772: ' Referenced from: F63648
  loc_F63772: Proc_6_60_E63754(0, &HFF, 0)
  loc_F63777: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22130
  'Data Table: 552758
  Dim arg_10 As Integer
  loc_E22118: If (Cancel = 0) Then
  loc_E22121:   Call Proc_135_71_1827E48(Cancel, var_88)
  loc_E2212A:   arg_10 = Not(var_88)
  loc_E2212D: End If
  loc_E2212D: Exit Sub
End Sub

Private Sub CmdSave_Click() 'E00B74
  'Data Table: 552758
  loc_E00B6C: Call TopCtrl1_UnknownEvent_19()
  loc_E00B71: Exit Sub
  loc_E00B72: Loop Until  'do at: DFEB95
End Sub

Private Sub DGRest_UnknownEvent_9 'FE5798
  'Data Table: 552758
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE55D3: Me.DGRest.Visible = False
  loc_FE55F2: If (Me.RecordCount > 0) Then
  loc_FE562F:   Set var_B4 = Me.TxtGrid
  loc_FE5635:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE563D:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE5666:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE566E:   var_EC = CVar(CLng(2)) 'Long
  loc_FE56A1:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE56A9:   Set var_B8 = Me.FGrid
  loc_FE56AF:   LateIdCallSt
  loc_FE56DE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE56E6:   var_EC = CVar(CLng(1)) 'Long
  loc_FE5708:   var_B0 = Me.Fields.Item("Code")
  loc_FE5719:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE5721:   Set var_B8 = Me.FGrid
  loc_FE5727:   LateIdCallSt
  loc_FE5743: End If
  loc_FE574F: Set var_A8 = Me.TxtGrid
  loc_FE5755: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE575D: var_A4 = var_B0.Visible
  loc_FE576F: If (var_12E = &HFF) Then
  loc_FE577B:   Set var_A8 = Me.TxtGrid
  loc_FE5781:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE5789:   var_B0.SetFocus
  loc_FE5795: End If
  loc_FE5795: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9DA20
  'Data Table: 552758
  Dim var_A8 As Variant
  loc_E9D9A4: Set var_88 = Me.DGRest
  loc_E9D9CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9D9D6: Set var_BC = Me.DGRest
  loc_E9DA10: Proc_6_138_106E830(Me.DGRest, global_64, 0, Me.FGPoint)
  loc_E9DA1E: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ED172C
  'Data Table: 552758
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED168E: Set var_88 = Me.TxtGt
  loc_ED1694: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ED16A2: Proc_6_74_E23240(var_8C)
  loc_ED16AE: Call Proc_135_76_EF78C8(var_8C)
  loc_ED16C2: Set var_88 = Me.TxtGt
  loc_ED16C8: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED16D0: var_8C.SelStart = 0
  loc_ED16E9: Set var_88 = Me.TxtGt
  loc_ED16EF: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED170A: Set var_90 = Me.TxtGt
  loc_ED1710: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ED1718: var_98.SelLength = Len(var_8C.Text)
  loc_ED172B: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5C688
  'Data Table: 552758
  loc_E5C655: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5C65E:   Proc_6_75_E5335C(Shift)
  loc_E5C663: End If
  loc_E5C678: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5C681:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5C686: End If
  loc_E5C686: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E57B30
  'Data Table: 552758
  loc_E57B02: Set var_88 = Me.TxtGt
  loc_E57B08: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E57B23: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E57B2F: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4E36C
  'Data Table: 552758
  loc_E4E34A: Set var_88 = Me.TxtGt
  loc_E4E350: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4E35E: Proc_6_73_E23294(var_8C)
  loc_E4E36A: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E02AD0
  'Data Table: 552758
  loc_E02ACA: Call Proc_135_84_165F774(Cancel)
  loc_E02ACF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1205040
  'Data Table: 552758
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1204B92: Set var_88 = Me.Txt
  loc_1204B98: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1204BA6: Proc_6_74_E23240(var_8C)
  loc_1204BB2: Call Proc_135_76_EF78C8(var_8C)
  loc_1204BBA: var_92 = Index
  loc_1204BC5: If (var_92 = CInt(3)) Then
  loc_1204BDF:   If (Me.RecordCount > 0) Then
  loc_1204BED:     Set var_8C = Me.FGPoint
  loc_1204C05:     Proc_6_137_1192FDC(Me.DGTable, global_76, Index)
  loc_1204C13:   End If
  loc_1204C61:   Set var_88 = Me.Txt
  loc_1204C67:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1204C6F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1204C87:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1204C8A:     Exit Sub
  loc_1204C8B:   End If
  loc_1204C98:   Set var_88 = Me.Txt
  loc_1204C9E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1204CA6:   var_A0 = var_8C.Text
  loc_1204CAE:   var_D4 = CVar(var_A0) 'String
  loc_1204CF3:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1204CFC:     Me.MoveFirst
  loc_1204D21:     Set var_88 = Me.Txt
  loc_1204D27:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1204D2F:     0 = var_8C.Text
  loc_1204D3D:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_1204D53:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_1204D6B:   End If
  loc_1204D6E: Else
  loc_1204D76:   If (var_92 = CInt(&HB)) Then
  loc_1204D90:     If (Me.RecordCount > 0) Then
  loc_1204D9E:       Set var_8C = Me.FGPoint
  loc_1204DB6:       Proc_6_137_1192FDC(Me.DGKOTFAULT, global_80)
  loc_1204DC4:     End If
  loc_1204E12:     Set var_88 = Me.Txt
  loc_1204E18:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1204E20:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1204E38:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1204E3B:       Exit Sub
  loc_1204E3C:     End If
  loc_1204E49:     Set var_88 = Me.Txt
  loc_1204E4F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1204E57:     var_A0 = var_8C.Text
  loc_1204E5F:     var_D4 = CVar(var_A0) 'String
  loc_1204E80:     var_B4 = Me.Fields.Item("VNo")
  loc_1204EA4:     If CBool(var_D4 <> var_B4.Value) Then
  loc_1204EAD:       Me.MoveFirst
  loc_1204ED2:       Set var_88 = Me.Txt
  loc_1204ED8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Vno =")
  loc_1204EE0:       0 = var_8C.Text
  loc_1204EEE:       Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_1204F04:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1204F1C:     End If
  loc_1204F1F:   Else
  loc_1204F27:     If Not (var_92 = CInt(4)) Then
  loc_1204F32:       If Not (var_92 = CInt(7)) Then
  loc_1204F3D:         If (var_92 = CInt(8)) Then
  loc_1204F40:         End If
  loc_1204F40:       End If
  loc_1204F4F:       Set var_88 = Me.Txt
  loc_1204F55:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1204F5D:       var_8C.SelStart = 0
  loc_1204F76:       Set var_88 = Me.Txt
  loc_1204F7C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1204F97:       Set var_90 = Me.Txt
  loc_1204F9D:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1204FA5:       var_B4.SelLength = Len(var_8C.Text)
  loc_1204FBB:     Else
  loc_1204FC3:       If (var_92 = CInt(6)) Then
  loc_1204FD5:         Set var_88 = Me.Txt
  loc_1204FDB:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1204FE3:         var_8C.SelStart = 0
  loc_1204FFC:         Set var_88 = Me.Txt
  loc_1205002:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120501D:         Set var_90 = Me.Txt
  loc_1205023:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_120502B:         var_B4.SelLength = Len(var_8C.Text)
  loc_120503E:       End If
  loc_120503E:     End If
  loc_120503E:   End If
  loc_120503E: End If
  loc_120503E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FC72C
  'Data Table: 552758
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_9C As DataGrid
  Dim var_A0 As Frame
  loc_10FC40B: var_86 = Shift
  loc_10FC418: If (CLng(Shift) = &H1B) Then
  loc_10FC41B:   Call Proc_135_76_EF78C8(var_86)
  loc_10FC420:   Exit Sub
  loc_10FC421: End If
  loc_10FC424: var_88 = KeyCode
  loc_10FC42F: If (var_88 = CInt(&HB)) Then
  loc_10FC44F:   Set var_A0 = Me.FGPoint
  loc_10FC45A:   Set var_9C = Nothing
  loc_10FC48C:   Proc_6_69_134A630(Me.DGKOTFAULT, Me.Txt, CInt(&HB), global_80, Shift, 0)
  loc_10FC4FB:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10FC521:     Proc_6_138_106E830(Me.DGKOTFAULT, global_80, KeyCode, Me.FGPoint, 1)
  loc_10FC52F:   End If
  loc_10FC532: Else
  loc_10FC53A:   If (var_88 = CInt(3)) Then
  loc_10FC565:     Set var_9C = Nothing
  loc_10FC597:     Proc_6_69_134A630(Me.DGTable, Me.Txt, CInt(3), global_76, Shift, 0, 1)
  loc_10FC606:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10FC60D:       Set var_9C = Me.DGTable
  loc_10FC62C:       Proc_6_138_106E830(var_9C, global_76, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_10FC63A:     End If
  loc_10FC63A:   End If
  loc_10FC63A: End If
  loc_10FC66B: Set var_9C = Me.DGTable
  loc_10FC685: Set var_A0 = Me.FrmList
  loc_10FC6AB: If ((((CBool(Me.DGKOTFAULT.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (var_A0.Visible = 0)) Then
  loc_10FC6CC:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_10FC6D2:     Call Proc_135_77_F0B888(KeyCode, 0, var_9C)
  loc_10FC6D7:     Exit Sub
  loc_10FC6D8:   End If
  loc_10FC6ED:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FC6F6:     Proc_6_75_E5335C(Shift, arg_14, var_A0)
  loc_10FC6FB:   End If
  loc_10FC703:   If (KeyCode <> CInt(3)) Then
  loc_10FC71B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10FC724:       Proc_6_76_E533C8(Shift, arg_14)
  loc_10FC729:     End If
  loc_10FC729:   End If
  loc_10FC729: End If
  loc_10FC729: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FE93B8
  'Data Table: 552758
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FE91D4: On Error Goto loc_FE93B1
  loc_FE91DA: Proc_6_58_E06050(arg_10)
  loc_FE91E2: var_86 = KeyAscii
  loc_FE91ED: If Not (var_86 = CInt(0)) Then
  loc_FE91F8:   If (var_86 = CInt(4)) Then
  loc_FE91FB:   End If
  loc_FE9205:   Set var_8C = Me.Txt
  loc_FE920B:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FE9226:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_FE9235: Else
  loc_FE923D:   If Not (var_86 = CInt(6)) Then
  loc_FE9248:     If (var_86 = CInt(7)) Then
  loc_FE924B:     End If
  loc_FE9255:     Set var_8C = Me.Txt
  loc_FE925B:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FE9276:     Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_FE9285:   Else
  loc_FE928D:     If (var_86 = CInt(&HB)) Then
  loc_FE92AC:       If (CBool(Me.DGKOTFAULT.Visible) = &HFF) Then
  loc_FE92D9:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Vno")
  loc_FE930B:         Proc_6_138_106E830(Me.DGKOTFAULT, global_80, KeyAscii, Me.FGPoint)
  loc_FE9319:       End If
  loc_FE931C:     Else
  loc_FE9324:       If (var_86 = CInt(3)) Then
  loc_FE9343:         If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_FE9370:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_FE93A2:           Proc_6_138_106E830(Me.DGTable, global_76, KeyAscii, Me.FGPoint, 0)
  loc_FE93B0:         End If
  loc_FE93B0:       End If
  loc_FE93B0:     End If
  loc_FE93B0:   End If
  loc_FE93B0: End If
  loc_FE93B0: Exit Sub
  loc_FE93B1: ' Referenced from: FE91D4
  loc_FE93B1: Proc_6_60_E63754(0, 2)
  loc_FE93B6: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F863A8
  'Data Table: 552758
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_118 As Double
  Dim var_A4 As TextBox
  Dim var_120 As Double
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_10C As TextBox
  loc_F8627F: var_86 = KeyCode
  loc_F8628A: If Not (var_86 = CInt(6)) Then
  loc_F86295:   If (var_86 = CInt(7)) Then
  loc_F86298:   End If
  loc_F862A6:   Set var_8C = Me.Txt
  loc_F862AC:   Call 0.Method_Txt_KeyUp0 (CInt(6), var_90)
  loc_F862C1:   var_118 = Val(var_90.Text)
  loc_F862CB:   Set var_98 = Me.TxtGt
  loc_F862D1:   Call 0.Method_Txt_KeyUp8 (var_9A, var_118)
  loc_F862E3:   Set var_A0 = Me.TxtGt
  loc_F862E9:   Call 0.Method_Txt_KeyUp0 (var_9A, var_A4)
  loc_F862FE:   var_120 = Val(var_A4.Text)
  loc_F8630F:   Set var_AC = Me.Txt
  loc_F86315:   Call 0.Method_Txt_KeyUp0 (CInt(7), var_B0, var_B4)
  loc_F8634D:   var_D4 = CVar(((var_118 - var_B0.Text) - Val(var_B4))) 'Double
  loc_F8636B:   Set var_108 = Me.Txt
  loc_F86371:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_10C, CStr(Format(var_D4, "0.00")), 1)
  loc_F86379:   var_10C.Text = 1
  loc_F863A7: End If
  loc_F863A7: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E50C
  'Data Table: 552758
  loc_E4E4EA: Set var_88 = Me.Txt
  loc_E4E4F0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E4FE: Proc_6_73_E23294(var_8C)
  loc_E4E50A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1723328
  'Data Table: 552758
  Dim var_9A As Integer
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_12C As Double
  Dim var_F8 As Variant
  Dim var_E8 As Variant
  Dim var_124 As String
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_154 As Double
  Dim var_13C As TextBox
  Dim var_15C As Double
  Dim var_D8 As Variant
  Dim var_148 As TextBox
  Dim arg_10 As Integer
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_108 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_A0 As Variant
  Dim var_140 As String
  Dim unk_55277D As Connection15
  Dim var_11C As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_118 As Variant
  Dim var_1EC As Variant
  Dim var_19C As Variant
  Dim var_1FC As Variant
  Dim var_8E As Integer
  Dim var_138 As Field20
  Dim var_94 As Recordset15
  loc_1721714: On Error Goto loc_1723322
  loc_172171A: var_9A = Cancel
  loc_1721725: If Not (var_9A = CInt(6)) Then
  loc_1721730:   If (var_9A = CInt(7)) Then
  loc_1721733:   End If
  loc_1721740:   Set var_A0 = Me.Txt
  loc_1721746:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_172174E:   var_A8 = var_A4.Text
  loc_172175F:   Proc_6_40_EA5C80(CVar(Val(var_A8)))
  loc_1721786:   var_118 = Format(CVar(var_9A), "0.00")
  loc_172179C:   Set var_11C = Me.Txt
  loc_17217A2:   Call 0.Method_Txt_Validate0 (Cancel, var_120, CStr(var_118))
  loc_17217AA:   var_120.Text = 1
  loc_17217DA:   Set var_A0 = Me.Txt
  loc_17217E0:   Call 0.Method_Txt_Validate0 (CInt(6), var_A4, var_A8)
  loc_17217E8:   1 = var_A4.Text
  loc_17217F5:   var_12C = Val(var_A8)
  loc_17217FF:   Set var_11C = Me.TxtGt
  loc_1721805:   Call 0.Method_Txt_Validate8 (var_12E, var_12C)
  loc_1721817:   Set var_120 = Me.TxtGt
  loc_172181D:   Call 0.Method_Txt_Validate0 (var_12E, var_134)
  loc_1721832:   var_154 = Val(var_134.Text)
  loc_1721843:   Set var_138 = Me.Txt
  loc_1721849:   Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_140)
  loc_172185E:   var_15C = Val(var_140)
  loc_1721870:   var_E8 = "0.00"
  loc_1721881:   var_C8 = CVar(((var_12C - var_13C.Text) - var_15C)) 'Double
  loc_1721888:   var_108 = Format(CVar(Val(var_A8)), var_E8)
  loc_172189F:   Set var_144 = Me.Txt
  loc_17218A5:   Call 0.Method_Txt_Validate0 (CInt(8), var_148, CStr(var_108), 1)
  loc_17218AD:   var_148.Text = 1
  loc_17218DE: Else
  loc_17218E6:   If (var_9A = CInt(0)) Then
  loc_17218F4:     Set var_A0 = Me.Txt
  loc_17218FA:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_1721902:     var_A8 = "Vr. No"
  loc_1721923:     If (Proc_6_27_EA61EC(var_A4, var_A8) = 0) Then
  loc_1721931:       Set var_A0 = Me.Txt
  loc_1721937:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_172193F:       var_A4.SetFocus
  loc_172194D:       arg_10 = &HFF
  loc_1721950:       Exit Sub
  loc_1721951:     End If
  loc_172195F:     Set var_A0 = Me.Txt
  loc_1721965:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4, var_A8)
  loc_172196D:     arg_10 = var_A4.Text
  loc_1721985:     If (CDbl(var_A8) = CDbl(0)) Then
  loc_17219A1:       MsgBox("Vr. No Can Not Be 0", 0, var_E8, var_108, var_118)
  loc_17219BB:       Set var_A0 = Me.Txt
  loc_17219C1:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17219C9:       var_A4.SetFocus
  loc_17219D7:       arg_10 = &HFF
  loc_17219DA:       Exit Sub
  loc_17219DB:     End If
  loc_17219DF:     Set var_A0 = Me.TopCtrl1
  loc_17219E5:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(arg_10)
  loc_17219FA:     If (var_15C = "Add") Then
  loc_1721A0D:       var_A8 = Proc_6_45_EADFB8(MemVar_1F95070, 2)
  loc_1721A2E:       var_C8 = Space((5 - Len(global_128)))
  loc_1721A36:       var_108 = (CVar(MemVar_1F9506C & var_A8 & global_128) + "Vr. No Can Not Be 0")
  loc_1721A4A:       var_118 = Space((5 - Len(global_108)))
  loc_1721A52:       var_17C = (var_108 + var_118)
  loc_1721A5F:       var_18C = (var_17C + CVar(global_108))
  loc_1721A76:       Set var_A0 = Me.Txt
  loc_1721A7C:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4, var_140)
  loc_1721A84:       8 = var_A4.Text
  loc_1721A91:       var_19C = Space((var_18C - Len(var_140)))
  loc_1721A99:       var_1AC = (var_12C + var_19C)
  loc_1721AAB:       Set var_11C = Me.Txt
  loc_1721AB1:       Call 0.Method_Txt_Validate0 (CInt(0), var_120)
  loc_1721AC4:       var_1CC = (var_1AC + CVar(var_120.Text))
  loc_1721B11:       Set var_A0 = Me.Txt
  loc_1721B17:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_1721B1F:       var_A4.Text = CStr(var_1CC)
  loc_1721B3B:       Me.LblVPrefix.Caption = global_108
  loc_1721B43:     End If
  loc_1721B47:     Set var_A0 = Me.TopCtrl1
  loc_1721B4D:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_1721B62:     If ( = "Add") Then
  loc_1721B92:       Set var_A0 = Me.Txt
  loc_1721B98:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_A8, "Select Count(*) From Sale1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_1721BA9:       var_124 = var_120 & var_A8
  loc_1721BB9:       unk_55277D.Execute var_124 & "'", 0, var_134
  loc_1721BC9:        = var_120.Item()
  loc_1721BD1:        = var_134.Value
  loc_1721BFE:       If (var_A4.Text.Fields > 0) Then
  loc_1721C07:         Call 0.Method_arg_50 (var_A8)
  loc_1721C28:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A8), var_108, var_118)
  loc_1721C3E:         Call Proc_135_78_10E7CA0(MemVar_1F95044)
  loc_1721C4E:         If (var_A8 = vbNullString) Then
  loc_1721C5B:           Set var_A0 = Me.Txt
  loc_1721C61:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1721C69:           var_A4.SetFocus
  loc_1721C77:           arg_10 = &HFF
  loc_1721C7A:           Exit Sub
  loc_1721C7B:         End If
  loc_1721C81:         Call Proc_135_78_10E7CA0(MemVar_1F95044, var_A8)
  loc_1721C94:         Set var_A0 = Me.Txt
  loc_1721C9A:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_A8)
  loc_1721CA2:         var_A4.Text = arg_10
  loc_1721CB3:         arg_10 = &HFF
  loc_1721CB6:         Exit Sub
  loc_1721CB7:       End If
  loc_1721CB7:     End If
  loc_1721CBA:   Else
  loc_1721CC2:     If (var_9A = CInt(1)) Then
  loc_1721CD3:       Set var_A0 = Me.Txt
  loc_1721CD9:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_A8)
  loc_1721CE1:       arg_10 = var_A4.Text
  loc_1721CF7:       var_108 = Len(Trim(CVar(var_A8)))
  loc_1721D11:       If (var_108 = 0) Then
  loc_1721D27:         Set var_A0 = Me.Txt
  loc_1721D2D:         Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1721D35:         var_A4.Text = CStr(MemVar_1F950EC)
  loc_1721D47:       Else
  loc_1721D51:         Set var_A0 = Me.Txt
  loc_1721D57:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1721D77:         Set var_120 = Me.Txt
  loc_1721D7D:         Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_1721D85:         var_134.Text = Proc_6_33_15125B8(var_A4)
  loc_1721D98:       End If
  loc_1721DA5:       Set var_A0 = Me.Txt
  loc_1721DAB:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1721DB3:       var_A8 = var_A4.Text
  loc_1721DCE:       Set var_11C = Me.Txt
  loc_1721DD4:       Call 0.Method_Txt_Validate0 (Cancel, var_120, var_124)
  loc_1721DDC:       (CDate(var_A8) >= MemVar_1F950F4) = var_120.Text
  loc_1721DFE:       If Not((var_A8 And (CDate(var_124) <= MemVar_1F950FC))) Then
  loc_1721E22:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_108, var_118)
  loc_1721E3C:         Set var_A0 = Me.Txt
  loc_1721E42:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1721E4A:         var_A4.SetFocus
  loc_1721E58:         arg_10 = &HFF
  loc_1721E5B:         Exit Sub
  loc_1721E5C:       End If
  loc_1721E60:       Set var_A0 = Me.TopCtrl1
  loc_1721E66:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(arg_10)
  loc_1721E85:       Set var_A4 = Me.Txt
  loc_1721E8B:       Call 0.Method_Txt_Validate0 (CInt(0), var_11C)
  loc_1721E93:       var_A8 = var_11C.Text
  loc_1721EBD:       If CBool((var_A4 = "Add") And (var_A8 = vbNullString)) Then
  loc_1721EC6:         Call Proc_135_78_10E7CA0(MemVar_1F95044)
  loc_1721ED9:         Set var_A0 = Me.Txt
  loc_1721EDF:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_1721EE7:         var_A4.Text = var_A8
  loc_1721EF6:       End If
  loc_1721EF9:     Else
  loc_1721F01:       If (var_9A = CInt(&HB)) Then
  loc_1721F1B:         If (Me.RecordCount > 0) Then
  loc_1721F5A:           Set var_11C = Me.Txt
  loc_1721F60:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_120)
  loc_1721F68:           var_120.Text = CStr(Me.Fields.Item("VNo").Value)
  loc_1721F9B:           var_A4 = Me.Fields.Item("DocID")
  loc_1721FAC:           var_A8 = CStr(var_A4.Value)
  loc_1721FBA:           Set var_11C = Me.Txt
  loc_1721FC0:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_120)
  loc_1721FC8:           var_120.Tag = var_A8
  loc_1721FDE:           Call Proc_135_92_1584F7C(var_A8)
  loc_1721FE3:         End If
  loc_1721FE6:       Else
  loc_1721FEE:         If (var_9A = CInt(3)) Then
  loc_1722032:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1722042:             Set var_A0 = Me.Txt
  loc_1722048:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1722067:             If (var_A4.Text = vbNullString) Then
  loc_1722077:               Set var_A0 = Me.Txt
  loc_172207D:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1722085:               var_A4.Text = vbNullString
  loc_172209E:               Set var_A0 = Me.Txt
  loc_17220A4:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17220AC:               var_A4.Tag = vbNullString
  loc_17220C3:               If (global_136 = "RO") Then
  loc_17220CC:                 global_132 = vbNullString
  loc_17220D0:               End If
  loc_17220D0:             End If
  loc_17220D3:           Else
  loc_172210E:             Set var_11C = Me.Txt
  loc_1722114:             Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_172211C:             var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_172216D:             Set var_11C = Me.Txt
  loc_1722173:             Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_172217B:             var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_172219C:             If (global_192 = "Room Service") Then
  loc_17221DB:               Set var_11C = Me.Txt
  loc_17221E1:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_120)
  loc_17221E9:               var_120.Text = CStr(Me.Fields.Item("Code").Value)
  loc_17221FF:             End If
  loc_172220A:             If (global_136 = "RO") Then
  loc_172222A:               var_A4 = Me.Fields.Item("RoomCat")
  loc_1722241:               global_132 = CStr(var_A4.Value)
  loc_1722252:             End If
  loc_1722252:           End If
  loc_172225D:           If (global_180 = "Y") Then
  loc_172226A:             Set global_68 = New 
  loc_172227C:             Me.Recordset15.CursorLocation = 3
  loc_1722292:             If (global_192 = "Hall") Then
  loc_17222A3:               Set var_A0 = Me.Txt
  loc_17222A9:               Call 0.Method_Txt_Validate0 (CInt(3), var_A4)
  loc_17222D7:               var_A8 = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCODE=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_56
  loc_17222EC:               var_C8 = CVar(var_A8 & "'AND K.RoomNo ='" & var_A4.Tag & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_17222F6:               Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1722313:             Else
  loc_172231E:               Proc_6_7_F26918(var_C8, MemVar_1F950EC)
  loc_1722331:               Set var_A0 = Me.Txt
  loc_1722337:               Call 0.Method_Txt_Validate0 (CInt(3), var_A4, var_A8)
  loc_172233F:               1 = var_A4.Text
  loc_172235B:               var_D8 = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCODE=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_1722395:               var_1AC = var_D8 & var_C8 & " And K.RestCode='" & CVar(global_56) & "' aND K.RoomNo ='" & CVar(var_A8) & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' And NCKOT<>'Y' Order by K.DOCID,K.SNo" 
  loc_17223A0:               Me.Open var_1AC, CVar(MemVar_1F95044), 3
  loc_17223BF:             End If
  loc_17223D6:             If (Me.RecordCount > 0) Then
  loc_17223E8:               Me.FGrid.Redraw = False
  loc_172240A:               var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1722413:               ' Referenced from:         1723141
  loc_1722425:               If Not(Me.EOF) Then
  loc_172244D:                 For var_210 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):         var_98 = var_210 'Integer
  loc_1722457:                   var_B8 = CVar(CLng(var_98)) 'Long
  loc_172245F:                   var_F8 = CVar(CLng(&HD)) 'Long
  loc_1722479:                   var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17224A2:                   var_E8 = Me.Fields.Item("DocID").Value
  loc_17224B2:                   var_1FC = CVar(CLng(var_98)) 'Long
  loc_172252D:                   If CBool(CVar(CLng(&HC)) And (CVar(CStr(Me.FGrid.TextMatrix))) = Me.Fields.Item("SNo").Value)) Then
  loc_1722534:                     var_96 = CByte(1) 'Byte
  loc_1722538:                     GoTo loc_1722F02
  loc_172253B:                   End If
  loc_172253E:                 Next var_210 'Integer
  loc_1722543:                 var_B8 = vbNullString
  loc_172254D:                 Set var_A0 = Me.FGrid
  loc_1722562:                 Set var_244 = Me.FGrid
  loc_1722569:                 var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1722571:                 var_F8 = CVar(CLng(0)) 'Long
  loc_172257B:                 var_C8 = CVar(CStr(var_8E)) 'String
  loc_1722582:                 LateIdCallSt
  loc_1722591:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1722599:                 var_16C = CVar(CLng(&HB)) 'Long
  loc_17225CC:                 var_E8 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_17225D3:                 LateIdCallSt
  loc_17225ED:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_17225F5:                 var_16C = CVar(CLng(3)) 'Long
  loc_1722628:                 var_E8 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_172262F:                 LateIdCallSt
  loc_1722649:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1722651:                 var_16C = CVar(CLng(4)) 'Long
  loc_1722684:                 var_E8 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_172268B:                 LateIdCallSt
  loc_17226A5:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_17226AD:                 var_16C = CVar(CLng(6)) 'Long
  loc_17226E0:                 var_E8 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_17226E7:                 LateIdCallSt
  loc_1722720:                 var_F8 = CVar(CLng(var_8E)) 'Long
  loc_1722728:                 var_1EC = CVar(CLng(7)) 'Long
  loc_1722755:                 var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.00"))) 'String
  loc_172275C:                 LateIdCallSt
  loc_1722795:                 var_F8 = CVar(CLng(var_8E)) 'Long
  loc_172279D:                 var_1EC = CVar(CLng(8)) 'Long
  loc_17227CA:                 var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_17227D1:                 LateIdCallSt
  loc_172280A:                 var_F8 = CVar(CLng(var_8E)) 'Long
  loc_1722812:                 var_1EC = CVar(CLng(9)) 'Long
  loc_172283F:                 var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1722846:                 LateIdCallSt
  loc_172289B:                 var_11C = Me.Fields
  loc_17228A3:                 var_120 = var_11C.Item("Rate")
  loc_17228B4:                 var_16C = CVar(CLng(var_8E)) 'Long
  loc_17228BC:                 var_1FC = CVar(CLng(&HA)) 'Long
  loc_17228F3:                 var_19C = CVar(CStr(Format((Me.Fields.Item("qty").Value * var_120.Value), "0.00"))) 'String
  loc_17228FA:                 LateIdCallSt
  loc_172293F:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1722947:                 var_16C = CVar(CLng(5)) 'Long
  loc_172296E:                 var_108 = CVar(CStr(Val(CStr(Right(CVar(Me.Fields.Item("DocID")), 8))))) 'String
  loc_1722975:                 LateIdCallSt
  loc_1722990:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1722998:                 var_16C = CVar(CLng(&HD)) 'Long
  loc_17229CB:                 var_E8 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_17229D2:                 LateIdCallSt
  loc_17229EC:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_17229F4:                 var_16C = CVar(CLng(&HC)) 'Long
  loc_1722A27:                 var_E8 = CVar(CStr(Me.Fields.Item("SNo").Value)) 'String
  loc_1722A2E:                 LateIdCallSt
  loc_1722A80:                 var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_244, var_E8, CVar(CLng(&H19)), CVar(CLng(var_8E)))) 'String
  loc_1722A87:                 LateIdCallSt
  loc_1722AD5:                 var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_244, var_E8, var_244)) 'String
  loc_1722ADC:                 LateIdCallSt
  loc_1722B2A:                 var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1722B31:                 LateIdCallSt
  loc_1722B7F:                 var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1722B86:                 LateIdCallSt
  loc_1722BD4:                 var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1722BDB:                 LateIdCallSt
  loc_1722BF9:                 var_16C = CVar(CLng(&H1A)) 'Long
  loc_1722C29:                 var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), var_16C, CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1722C30:                 LateIdCallSt
  loc_1722C7D:                 var_A8 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_E8, -1, var_11C, var_244)
  loc_1722C91:                 unk_55277D.Execute var_E8 & CStr(Right(CVar(Me.Fields.Item("DocID")), 8)) & "'", var_E8, var_16C
  loc_1722C9C:                 Set var_94 = var_11C
  loc_1722CCA:                 If (var_94.RecordCount > 0) Then
  loc_1722D04:                   Proc_6_39_E7D3A0(var_E8, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H10)), CVar(CLng(var_8E)))
  loc_1722D0D:                   var_108 = CVar(CStr(var_E8)) 'String
  loc_1722D15:                   Set var_11C = Me.FGrid
  loc_1722D1B:                   LateIdCallSt
  loc_1722D33:                 End If
  loc_1722D54:                 var_C8 = CVar(Proc_6_38_E69628(global_136, CVar(CLng(&H16)), CVar(CLng(var_8E)), var_11C)) 'String
  loc_1722D5B:                 LateIdCallSt
  loc_1722D6A:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1722DA2:                 var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), CVar(CLng(&H17)), var_D8, var_244, CVar(Me.Fields.Item("RoomNo")))) 'String
  loc_1722DA9:                 LateIdCallSt
  loc_1722DF4:                 Set var_11C = Me.Txt
  loc_1722DFA:                 Call 0.Method_Txt_Validate0 (CInt(3), var_120, Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), var_244, var_E8, var_108))
  loc_1722E02:                 var_120.Tag = var_D8
  loc_1722E52:                 var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_1722E59:                 LateIdCallSt
  loc_1722EA7:                 var_E8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_244)) 'String
  loc_1722EAE:                 LateIdCallSt
  loc_1722EE1:                 var_C8 = CVar(Proc_6_38_E69628(global_132, CVar(CLng(&H15)), CVar(CLng(var_8E)), var_244)) 'String
  loc_1722EE8:                 LateIdCallSt
  loc_1722EF5:                 Set var_244 = Nothing 
  loc_1722EFF:                 var_8E = (var_8E + 1)
  loc_1722F02:                 ' Referenced from:         1722538
  loc_1722F08:                 Me.MoveNext
  loc_1722F2B:                 If ((Me.EOF = &HFF) And (CInt(var_96) = 0)) Then
  loc_1722F39:                   If (global_192 = "Room Service") Then
  loc_1722F5C:                     If (Me.lblTable.Caption = vbNullString) Then
  loc_1722FA3:                       Me.lblTable.Caption = CStr("Room # " & Me.Fields.Item("Name").Value)
  loc_1722FBE:                     Else
  loc_1723019:                       Me.lblTable.Caption = CStr(CVar(Me.lblTable.Caption & ",") & Me.Fields.Item("Name").Value)
  loc_1723039:                     End If
  loc_172303C:                   Else
  loc_172305C:                     If (Me.lblTable.Caption = vbNullString) Then
  loc_17230A3:                       Me.lblTable.Caption = CStr("Table # " & Me.Fields.Item("Code").Value)
  loc_17230BE:                     Else
  loc_17230CB:                       var_A8 = Me.lblTable.Caption
  loc_17230D7:                       var_E8 = CVar(var_A8 & ",") 'String
  loc_1723107:                       var_108 = var_E8 & Me.Fields.Item("Code").Value 
  loc_1723119:                       Me.lblTable.Caption = CStr(var_108)
  loc_1723139:                     End If
  loc_1723139:                   End If
  loc_1723139:                 End If
  loc_172313D:                 var_96 = CByte(0) 'Byte
  loc_1723141:                 GoTo loc_1722413
  loc_1723144:               End If
  loc_1723157:               Me.FGrid.FixedRows = 1
  loc_1723162:             Else
  loc_1723170:               Me.FGrid.Redraw = True
  loc_172317E:               If (var_8E = 1) Then
  loc_1723194:                 Me.FGrid.Rows = 1
  loc_17231BA:                 var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8E, var_244, var_C8))) 'String
  loc_17231C2:                 Set var_A4 = Me.FGrid
  loc_17231EF:                 Me.FGrid.FixedRows = 1
  loc_17231F7:               End If
  loc_17231F7:             End If
  loc_17231F7:           End If
  loc_1723205:           Me.FGrid.Redraw = True
  loc_1723213:           If (var_8E = 1) Then
  loc_1723229:             Me.FGrid.Rows = 1
  loc_172324F:             var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C8))) 'String
  loc_1723257:             Set var_A4 = Me.FGrid
  loc_1723284:             Me.FGrid.FixedRows = 1
  loc_172328C:           End If
  loc_1723292:           Call Proc_135_84_165F774(Cancel, FGrid.DispID_10000, var_C8, var_E8)
  loc_17232A4:           Set var_A0 = Me.Txt
  loc_17232AA:           Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A8)
  loc_17232B2:           var_E8 = var_A4.Text
  loc_17232D5:           If ((var_A8 <> vbNullString) And (global_180 = "Y")) Then
  loc_17232E5:             Set var_A0 = Me.Txt
  loc_17232EB:             Call 0.Method_Txt_Validate0 (Cancel, var_A4, vbNullString)
  loc_17232F3:             var_A4.Text = var_244
  loc_17232FF:           End If
  loc_17232FF:         End If
  loc_17232FF:       End If
  loc_17232FF:     End If
  loc_17232FF:   End If
  loc_17232FF: End If
  loc_1723304: Set var_94 = Nothing
  loc_172330C: Set var_88 = Nothing
  loc_172331A: Set global_68 = Nothing
  loc_1723321: Exit Sub
  loc_1723322: ' Referenced from: 1721714
  loc_1723322: Proc_6_60_E63754(var_108)
  loc_1723327: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 '10E5778
  'Data Table: 552758
  Dim var_90 As String
  Dim var_9C As TextBox
  Dim var_12C As Variant
  Dim unk_55277D As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Variant
  Dim var_150 As Label
  Dim Me As Recordset15
  loc_10E5474: On Error Goto loc_10E5771
  loc_10E549A: Call Proc_135_75_100601C(Proc_5_1_100EC1C("ADD", Me))
  loc_10E54A5: Call Proc_135_74_10ADAF8(global_72)
  loc_10E54BD: Set var_94 = Me.Txt
  loc_10E54C3: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_9C)
  loc_10E54CB: var_9C.Text = CStr(MemVar_1F950EC)
  loc_10E5514: Set var_94 = Me.Txt
  loc_10E551A: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_9C, CStr(Format(Time, "hh:nn")))
  loc_10E5522: var_9C.Text = 1
  loc_10E5545: Set var_94 = Me.Txt
  loc_10E554B: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_9C)
  loc_10E5598: var_12C = "Select Name From SessionMast where '" & CDate(CDate(Format(CVar(var_9C), "HH:MM"))) & "' between cdate(fromtime) and cdate(toTime)" 
  loc_10E55A6: unk_55277D.Execute CStr(var_12C), var_14C, -1
  loc_10E55B1: Set var_88 = var_150
  loc_10E55E3: If (var_88.RecordCount > 0) Then
  loc_10E55FD:   var_9C = var_88.Fields.Item("Name")
  loc_10E560E:   var_90 = Proc_6_38_E69628(CVar(var_9C), var_150, 1)
  loc_10E561B:   Me.lblSession.Caption = var_90
  loc_10E562D: End If
  loc_10E563F: Me.FGrid.Col = CVar(CLng(3))
  loc_10E564D: Call Proc_135_78_10E7CA0(MemVar_1F95044, var_90)
  loc_10E5660: Set var_94 = Me.Txt
  loc_10E5666: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_9C, var_90)
  loc_10E568B: Set var_94 = Me.Txt
  loc_10E5691: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_9C)
  loc_10E56A7: Call Proc_135_83_17C60A8(CDate(1))
  loc_10E56C4: Set var_94 = Me.Txt
  loc_10E56CA: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(3), var_9C)
  loc_10E56E4: If (var_9C.Visible = 0) Then
  loc_10E56EB:   Set var_94 = Me.FGrid
  loc_10E56FF: Else
  loc_10E570A:   Set var_94 = Me.Txt
  loc_10E5710:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(3), var_9C)
  loc_10E5718:   var_9C.SetFocus
  loc_10E5724: End If
  loc_10E572F: If (global_132 <> "FAST") Then
  loc_10E573D:   Me.Requery -1
  loc_10E5742: End If
  loc_10E574D: If (global_132 <> "FAST") Then
  loc_10E575B:   Me.Requery -1
  loc_10E5760: End If
  loc_10E5765: Set var_8C = Nothing
  loc_10E576D: Set var_88 = Nothing
  loc_10E5770: Exit Sub
  loc_10E5771: ' Referenced from: 10E5474
  loc_10E5771: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_10E5776: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'FBB0C4
  'Data Table: 552758
  Dim var_94 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_88 As String
  Dim unk_55277D As Connection15
  loc_FBAF28: On Error Goto loc_FBB0BB
  loc_FBAF4E: Call Proc_135_75_100601C(Proc_5_1_100EC1C("EDIT", Me))
  loc_FBAF66: Set var_8C = Me.Txt
  loc_FBAF6C: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_94)
  loc_FBAF74: var_94.Enabled = False
  loc_FBAF8D: Set var_8C = Me.Txt
  loc_FBAF93: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_94)
  loc_FBAF9B: var_94.Enabled = False
  loc_FBAFB4: Set var_8C = Me.Txt
  loc_FBAFBA: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(3), var_94)
  loc_FBAFC2: var_94.Enabled = False
  loc_FBAFE0: Me.FGrid.Col = CVar(CLng(3))
  loc_FBAFEC: Set var_8C = Me.FGrid
  loc_FBB007: Set global_80 = New 
  loc_FBB019: Me.FGrid.CursorLocation = 3
  loc_FBB039: Set var_8C = Me.Txt
  loc_FBB03F: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_94, "Select Docid,cstr(Vno) as Vno from KOT where Contradocid='", var_DC)
  loc_FBB050: var_88 = Proc_6_38_E69628(CVar(var_94), -1, var_E0)
  loc_FBB064: unk_55277D.Execute FGrid.DispID_8001 & "EDIT" & "' and Docid not in (Select KOTDOCID from Stock)", global_72, 
  loc_FBB075: Set global_80 = var_E0
  loc_FBB09B: CVarUnk
  loc_FBB0A0: VerifyVarObj
  loc_FBB0A6: Set var_8C = Me.DGKOTFAULT
  loc_FBB0AC: LateIdStAd
  loc_FBB0BA: Exit Sub
  loc_FBB0BB: ' Referenced from: FBAF28
  loc_FBB0BB: Proc_6_60_E63754(var_8C)
  loc_FBB0C0: Exit Sub
  loc_FBB0C1: Result global_80 End Sub 'Currency
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '11FA5D8
  'Data Table: 552758
  Dim Me As Recordset15
  Dim unk_55277D As Connection15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_11FA15C: On Error Goto loc_11FA587
  loc_11FA196: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_11FA1AA:   var_94 = Me.Bookmark 'Variant
  loc_11FA1B7:   unk_55277D.BeginTrans var_11C
  loc_11FA1C4:   If (MemVar_1F951AC = "Room Service") Then
  loc_11FA21D:     unk_55277D.Execute CStr("DELETE FROM PAYCHARGE WHERE dOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_11FA268:     var_164 = 0
  loc_11FA27B:     var_15C = 0
  loc_11FA286:     var_158 = 0
  loc_11FA299:     var_150 = 0
  loc_11FA2A4:     var_14C = 0
  loc_11FA2B7:     var_144 = 0
  loc_11FA300:     Proc_154_5_10E3BD4(MemVar_1F95044, "PayCharge", "Docid", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11FA328:   End If
  loc_11FA37E:   unk_55277D.Execute CStr("Update Stock set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_11FA3F0:   unk_55277D.Execute CStr("Update Sale1 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_11FA462:   unk_55277D.Execute CStr("Update Sale2 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_11FA4C6:   var_F8 = "Update SunTran set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11FA4CA:   var_128 = CStr(var_F8)
  loc_11FA4D4:   unk_55277D.Execute var_128, var_118, -1
  loc_11FA4F6:   unk_55277D.CommitTrans
  loc_11FA506:   Me.Requery -1
  loc_11FA526:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11FA533:     Me.Bookmark = var_94
  loc_11FA53B:   Else
  loc_11FA54F:     If (Me.EOF = 0) Then
  loc_11FA558:       Me.MoveLast
  loc_11FA55D:     End If
  loc_11FA55D:   End If
  loc_11FA55D:   Call Proc_135_72_17E34F8(var_12C, var_12C, var_12C, var_12C)
  loc_11FA57E:   Proc_5_0_1107AD0(&HFF, Me, global_72, 0)
  loc_11FA586: End If
  loc_11FA586: Exit Sub
  loc_11FA587: ' Referenced from: 11FA15C
  loc_11FA58D: unk_55277D.RollbackTrans
  loc_11FA59A: Set var_120 = Err()
  loc_11FA5A0: Call 0.Method_arg_2C (var_128, var_144, 0)
  loc_11FA5C1: MsgBox(CVar(var_128), &H10, " Deletion Message", var_F8, var_118)
  loc_11FA5D4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E19BA8
  'Data Table: 552758
  loc_E19B9D: Me.Global.Unload Me
  loc_E19BA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E319E8
  'Data Table: 552758
  loc_E319D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E319E0: Call Proc_135_72_17E34F8(global_72)
  loc_E319E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E39AE8
  'Data Table: 552758
  loc_E39AD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39AE0: Call Proc_135_72_17E34F8(global_72)
  loc_E39AE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E39A88
  'Data Table: 552758
  loc_E39A78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39A80: Call Proc_135_72_17E34F8(global_72)
  loc_E39A85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E31DA8
  'Data Table: 552758
  loc_E31D98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31DA0: Call Proc_135_72_17E34F8(global_72)
  loc_E31DA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1B7A174
  'Data Table: 552758
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1EC As Variant
  Dim var_18C As Variant
  Dim var_158 As String
  Dim unk_55277D As Connection15
  Dim var_88 As Variant
  Dim var_150 As Variant
  Dim var_1F8 As Variant
  Dim var_204 As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_1FC As String
  Dim var_210 As String
  Dim var_214 As String
  Dim var_218 As String
  Dim var_154 As Variant
  Dim var_1F4 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Double
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Double
  Dim var_10C As Variant
  Dim MemVar_1F950EC As Double
  Dim Me As Recordset15
  Dim var_23C As Variant
  Dim var_250 As String
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_118 As Recordset15
  Dim var_8A As Variant
  Dim var_2B0 As Variant
  Dim var_38C As Variant
  Dim var_3A8 As Variant
  Dim var_3C8 As Variant
  Dim var_3DC As Variant
  Dim var_3EC As Variant
  Dim var_41C As Variant
  Dim var_3FC As Variant
  Dim var_464 As Variant
  Dim var_9D8 As Double
  Dim var_4B4 As Variant
  Dim var_9E0 As Double
  Dim var_744 As Variant
  Dim var_9E8 As Double
  Dim var_8CC As Variant
  Dim var_924 As Variant
  Dim var_298 As String
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_2AC As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_1CC As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_314 As Variant
  Dim var_260 As Variant
  Dim var_334 As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_364 As Variant
  Dim var_374 As Variant
  Dim var_384 As Variant
  Dim var_43C As Variant
  Dim var_44C As Variant
  Dim var_45C As Variant
  Dim var_478 As Variant
  Dim var_488 As Variant
  Dim var_498 As Variant
  Dim var_4A8 As Variant
  Dim var_4D8 As Variant
  Dim var_518 As Variant
  Dim var_528 As Variant
  Dim var_568 As Variant
  Dim var_578 As Variant
  Dim var_5C8 As Variant
  Dim var_5D8 As Variant
  Dim var_608 As Variant
  Dim var_618 As Variant
  Dim var_638 As Variant
  Dim var_668 As Variant
  Dim var_698 As Variant
  Dim var_6A8 As Variant
  Dim var_6F8 As Variant
  Dim var_708 As Variant
  Dim var_718 As Variant
  Dim var_758 As Variant
  Dim var_768 As Variant
  Dim var_788 As Variant
  Dim var_7A8 As Variant
  Dim var_7B8 As Variant
  Dim var_7E8 As Variant
  Dim var_7F8 As Variant
  Dim var_8FC As Variant
  Dim var_958 As Variant
  Dim var_988 As Variant
  Dim var_9A8 As Variant
  Dim var_9AC As String
  Dim var_388 As Variant
  Dim var_394 As Variant
  Dim var_460 As Variant
  Dim var_4B0 As Variant
  Dim var_740 As Variant
  Dim var_928 As String
  Dim var_29C As TextBox
  Dim var_4AC As MSHFlexGrid
  Dim var_73C As Variant
  Dim var_A04 As String
  Dim var_85C As MSHFlexGrid
  Dim var_A08 As String
  Dim var_A18 As Variant
  Dim var_A38 As Variant
  Dim var_920 As Variant
  Dim var_10F0 As Double
  Dim var_A7C As Variant
  Dim var_A9C As Variant
  Dim var_10F8 As Double
  Dim var_AE0 As Variant
  Dim var_B00 As Variant
  Dim var_9D0 As Variant
  Dim var_B14 As String
  Dim var_B64 As Variant
  Dim var_B78 As MSHFlexGrid
  Dim var_828 As Variant
  Dim var_B7C As String
  Dim var_1108 As Double
  Dim var_BAC As Variant
  Dim var_BE0 As Variant
  Dim var_87C As Variant
  Dim var_BE4 As String
  Dim var_1110 As Double
  Dim var_8BC As Variant
  Dim var_1118 As Double
  Dim var_1120 As Double
  Dim var_DE8 As Variant
  Dim var_E08 As Variant
  Dim var_E1C As MSHFlexGrid
  Dim var_E7C As Variant
  Dim var_E9C As Variant
  Dim var_F10 As Variant
  Dim var_F30 As Variant
  Dim var_FA4 As Variant
  Dim var_1128 As Double
  Dim var_1080 As Variant
  Dim var_390 As String
  Dim var_4B8 As String
  Dim var_9F4 As String
  Dim var_9F8 As String
  Dim var_9FC As String
  Dim var_8DC As Variant
  Dim var_9CC As Variant
  Dim var_DD8 As Variant
  Dim var_F74 As Variant
  Dim var_468 As String
  Dim var_3B8 As Variant
  Dim var_398 As Variant
  Dim var_9F0 As String
  Dim var_146 As Integer
  Dim var_128 As Recordset15
  Dim var_12C As Recordset15
  Dim var_D18 As Field20
  Dim var_A00 As String
  loc_1B752EC: On Error Goto loc_1B7A158
  loc_1B752FA: Set var_14C = Me.Txt
  loc_1B75300: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_1B75329: If (Proc_6_27_EA61EC(var_150, "Voucher Date") = 0) Then
  loc_1B7532C:   Exit Sub
  loc_1B7532D: End If
  loc_1B75337: Call TxtGt_Validate(7)
  loc_1B75347: Set var_14C = Me.Txt
  loc_1B7534D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_150)
  loc_1B75376: If (Proc_6_27_EA61EC(var_150, "Voucher No") = 0) Then
  loc_1B75379:   Exit Sub
  loc_1B7537A: End If
  loc_1B75385: Set var_14C = Me.Txt
  loc_1B7538B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_150)
  loc_1B753B4: If (Proc_6_27_EA61EC(var_150, "KOT Time") = 0) Then
  loc_1B753B7:   Exit Sub
  loc_1B753B8: End If
  loc_1B753C3: If (global_56 = vbNullString) Then
  loc_1B753DF:   MsgBox("Open RestaurantChange Form ", 0, var_19C, var_1BC, var_1DC)
  loc_1B753EF:   Exit Sub
  loc_1B753F0: End If
  loc_1B753F0: var_16C = 1
  loc_1B753FC: var_1AC = CVar(CLng(4)) 'Long
  loc_1B75416: var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B7541C: var_1BC = Trim(var_19C)
  loc_1B75438: If (var_1BC = vbNullString) Then
  loc_1B7544E:   var_17C = "No Item On First Row.."
  loc_1B75454:   MsgBox(var_17C, 0, var_19C, var_1BC, var_1DC)
  loc_1B75477:   Me.FGrid.Row = 1
  loc_1B75483:   Set var_14C = Me.FGrid
  loc_1B75494:   Exit Sub
  loc_1B75495: End If
  loc_1B754A0: If (global_192 = "Room Service") Then
  loc_1B754B8:   var_16C = MemVar_1F95078
  loc_1B754C0:   Proc_6_17_EAAE40(var_17C, var_16C, "Select RoomPayType From enviro WHERE LOGSITE_CODE=", var_1BC, -1, var_14C)
  loc_1B754D6:   unk_55277D.Execute CStr(FGrid.DispID_8001 & var_17C), var_1AC, var_16C
  loc_1B754E1:   Set var_88 = var_14C
  loc_1B75507:   If (var_88.RecordCount > 0) Then
  loc_1B7551C:     var_14C = var_88.Fields
  loc_1B75524:     var_150 = var_14C.Item(0)
  loc_1B7554E:     If (Proc_6_38_E69628(var_150.Value, 0) = vbNullString) Then
  loc_1B7556C:       var_17C = "Please define Room Payment Type From Enviro"
  loc_1B75572:       MsgBox(var_17C, &H40, "HMS", var_1BC, var_1DC)
  loc_1B75582:       Exit Sub
  loc_1B75583:     End If
  loc_1B75583:   End If
  loc_1B75586: Else
  loc_1B755A3:   Proc_6_17_EAAE40(var_17C, MemVar_1F95078, "Select CashPayType From enviro WHERE LOGSITE_CODE=", var_1BC)
  loc_1B755AB:   var_19C = -1 & var_17C 
  loc_1B755B9:   unk_55277D.Execute CStr("HMS"), var_14C, var_150
  loc_1B755C4:   Set var_88 = var_14C
  loc_1B755EA:   If (var_88.RecordCount > 0) Then
  loc_1B75607:     var_150 = var_88.Fields.Item(0)
  loc_1B7561C:     var_124 = Proc_6_38_E69628(var_150.Value)
  loc_1B75631:     If (var_124 = vbNullString) Then
  loc_1B75655:       MsgBox("Please define Cash Payment Type From Enviro", &H40, "HMS", var_1BC, var_1DC)
  loc_1B75665:       Exit Sub
  loc_1B75666:     End If
  loc_1B75666:   End If
  loc_1B75666: End If
  loc_1B75674: Set var_14C = Me.Txt
  loc_1B7567A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_150)
  loc_1B7569E: If (CDbl(Val(var_150.Text)) <> CDbl(0)) Then
  loc_1B756A8:   Set var_154 = Me.TxtGt
  loc_1B756AE:   Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A)
  loc_1B756C0:   Set var_1F4 = Me.TxtGt
  loc_1B756C6:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_1F8)
  loc_1B756EC:   Set var_14C = Me.Txt
  loc_1B756F2:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_150)
  loc_1B75721:   If (CDbl(Val(var_150.Text)) < CDbl(Val(var_1F8.Text))) Then
  loc_1B75745:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_1BC, var_1DC)
  loc_1B75760:     Set var_14C = Me.Txt
  loc_1B75766:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_150)
  loc_1B7576E:     var_150.SetFocus
  loc_1B7577A:     Exit Sub
  loc_1B7577B:   End If
  loc_1B7577B: End If
  loc_1B757A0: For var_208 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_208 'Integer
  loc_1B757AA:   var_16C = CVar(CLng(var_92)) 'Long
  loc_1B757B2:   var_1AC = CVar(CLng(&H11)) 'Long
  loc_1B757E2:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1B757E9:     var_16C = CVar(CLng(var_92)) 'Long
  loc_1B757F1:     var_1AC = CVar(CLng(&HA)) 'Long
  loc_1B7581D:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1B7582C:   Else
  loc_1B75830:     var_16C = CVar(CLng(var_92)) 'Long
  loc_1B75838:     var_1AC = CVar(CLng(&HA)) 'Long
  loc_1B75847:     var_17C = Me.FGrid.TextMatrix)
  loc_1B75852:     var_158 = CStr(var_17C)
  loc_1B75864:     var_AC = (var_AC + Val(var_158))
  loc_1B75870:   End If
  loc_1B75873: Next var_208 'Integer
  loc_1B75884: Set var_14C = Me.TxtGt
  loc_1B7588A: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_92)
  loc_1B75895: For var_20C =  To var_15A: 1 = var_20C 'Integer
  loc_1B758C7:   Set var_14C = Me.LblCap
  loc_1B758CD:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_17C, -1)
  loc_1B758FF:   unk_55277D.Execute var_1F4 & var_158 & "' And V_Type='" & global_128 & "'", 0, var_1F8
  loc_1B75907:   var_19C = var_150.Tag.Fields
  loc_1B7590F:    = var_1F4.Item()
  loc_1B75917:    = var_1F8.Value
  loc_1B7594B:   var_21C = Proc_6_38_E69628(var_19C)
  loc_1B75956:   If (var_21C = "Addition") Then
  loc_1B75966:     Set var_14C = Me.TxtGt
  loc_1B7596C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150)
  loc_1B75974:     var_158 = var_150.Text
  loc_1B7598B:     var_B4 = (var_B4 + Val(var_158))
  loc_1B759A5:     Set var_14C = Me.TxtPer
  loc_1B759AB:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158)
  loc_1B759B3:     var_B4 = var_150.Text
  loc_1B759CA:     var_CC = (var_CC + Val(var_158))
  loc_1B759DA:   Else
  loc_1B759E2:     If (var_21C = "Deduction") Then
  loc_1B759F2:       Set var_14C = Me.TxtGt
  loc_1B759F8:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158)
  loc_1B75A00:       var_CC = var_150.Text
  loc_1B75A17:       var_BC = (var_BC + Val(var_158))
  loc_1B75A31:       Set var_14C = Me.TxtPer
  loc_1B75A37:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_BC)
  loc_1B75A3F:       var_204 = var_150.Text
  loc_1B75A56:       var_C4 = (var_C4 + Val(var_158))
  loc_1B75A66:     Else
  loc_1B75A6E:       If (var_21C = "Discount") Then
  loc_1B75A7E:         Set var_14C = Me.TxtGt
  loc_1B75A84:         Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_C4)
  loc_1B75A8C:         var_204 = var_150.Text
  loc_1B75AA3:         var_DC = (var_DC + Val(var_158))
  loc_1B75ABD:         Set var_14C = Me.TxtPer
  loc_1B75AC3:         Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_DC)
  loc_1B75ACB:         var_204 = var_150.Text
  loc_1B75AE2:         var_E4 = (var_E4 + Val(var_158))
  loc_1B75AF2:       Else
  loc_1B75AFA:         If (var_21C = "Luxury Tax") Then
  loc_1B75B0A:           Set var_14C = Me.TxtGt
  loc_1B75B10:           Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_E4)
  loc_1B75B18:           var_204 = var_150.Text
  loc_1B75B2F:           var_FC = (var_FC + Val(var_158))
  loc_1B75B49:           Set var_14C = Me.TxtPer
  loc_1B75B4F:           Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_FC)
  loc_1B75B57:           var_204 = var_150.Text
  loc_1B75B6E:           var_D4 = (var_D4 + Val(var_158))
  loc_1B75B7E:         Else
  loc_1B75B86:           If (var_21C = "Round Off") Then
  loc_1B75B96:             Set var_14C = Me.TxtGt
  loc_1B75B9C:             Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_D4)
  loc_1B75BA4:             var_204 = var_150.Text
  loc_1B75BBB:             var_EC = (var_EC + Val(var_158))
  loc_1B75BD5:             Set var_14C = Me.TxtPer
  loc_1B75BDB:             Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_EC)
  loc_1B75BE3:             var_204 = var_150.Text
  loc_1B75BFA:             var_F4 = (var_F4 + Val(var_158))
  loc_1B75C0A:           Else
  loc_1B75C12:             If (var_21C = "Sale Tax") Then
  loc_1B75C22:               Set var_14C = Me.TxtGt
  loc_1B75C28:               Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_F4)
  loc_1B75C30:               var_204 = var_150.Text
  loc_1B75C47:               var_FC = (var_FC + Val(var_158))
  loc_1B75C61:               Set var_14C = Me.TxtPer
  loc_1B75C67:               Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_FC)
  loc_1B75C6F:               var_204 = var_150.Text
  loc_1B75C86:               var_D4 = (var_D4 + Val(var_158))
  loc_1B75C96:             Else
  loc_1B75C9E:               If (var_21C = "Service Charge") Then
  loc_1B75CAE:                 Set var_14C = Me.TxtGt
  loc_1B75CB4:                 Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_D4)
  loc_1B75CBC:                 var_204 = var_150.Text
  loc_1B75CD3:                 var_104 = (var_104 + Val(var_158))
  loc_1B75CED:                 Set var_14C = Me.TxtPer
  loc_1B75CF3:                 Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_104)
  loc_1B75CFB:                 var_204 = var_150.Text
  loc_1B75D12:                 var_10C = (var_10C + Val(var_158))
  loc_1B75D22:               Else
  loc_1B75D2A:                 If (var_21C = "Service Tax") Then
  loc_1B75D3A:                   Set var_14C = Me.TxtGt
  loc_1B75D40:                   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_10C)
  loc_1B75D48:                   var_204 = var_150.Text
  loc_1B75D5F:                   var_FC = (var_FC + Val(var_158))
  loc_1B75D79:                   Set var_14C = Me.TxtPer
  loc_1B75D7F:                   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_FC)
  loc_1B75D87:                   var_204 = var_150.Text
  loc_1B75D9E:                   var_D4 = (var_D4 + Val(var_158))
  loc_1B75DAB:                 End If
  loc_1B75DAB:               End If
  loc_1B75DAB:             End If
  loc_1B75DAB:           End If
  loc_1B75DAB:         End If
  loc_1B75DAB:       End If
  loc_1B75DAB:     End If
  loc_1B75DAB:   End If
  loc_1B75DAE: Next var_20C 'Integer
  loc_1B75DB6: var_9C = vbNullString
  loc_1B75DBC: Call Proc_135_73_110A8D4(var_15A)
  loc_1B75DC7: If (var_15A = 0) Then
  loc_1B75DCA:   Exit Sub
  loc_1B75DCB: End If
  loc_1B75DD6: Set var_14C = Me.TxtGrid
  loc_1B75DDC: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_150)
  loc_1B75DE4: var_150.Visible = False
  loc_1B75DF0: Call Proc_135_76_EF78C8()
  loc_1B75E03: Set var_14C = Me.Txt
  loc_1B75E09: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_150)
  loc_1B75E31: If (Proc_6_91_EF38D0(CDate(var_150.Text)) = 0) Then
  loc_1B75E3F:   Set var_14C = Me.Txt
  loc_1B75E45:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_1B75E4D:   var_150.SetFocus
  loc_1B75E59:   Exit Sub
  loc_1B75E5A: End If
  loc_1B75E5E: Set var_14C = Me.TopCtrl1
  loc_1B75E64: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_150)
  loc_1B75E79: If ( = "Add") Then
  loc_1B75E82:   var_18C = 0
  loc_1B75E9F:   var_158 = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F95078
  loc_1B75EAF:   unk_55277D.Execute var_158 & "'", var_17C, -1
  loc_1B75EB7:   var_14C = var_14C.Fields
  loc_1B75EBF:   var_18C = var_150.Item(var_150)
  loc_1B75EC7:   var_154 = var_154.Value
  loc_1B75ED1:   MemVar_1F950EC = CDate(var_19C)
  loc_1B75EF1:   var_18C = 0
  loc_1B75F18:   Set var_14C = Me.Txt
  loc_1B75F1E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Select Count(*) From Sale1 Where DocID='", var_17C, -1, var_154)
  loc_1B75F26:   var_1F4 = var_150.Text
  loc_1B75F3F:   unk_55277D.Execute var_18C & var_158 & "'", var_1F8, var_19C
  loc_1B75F47:   MemVar_1F950EC = var_154.Fields
  loc_1B75F4F:    = var_1F4.Item(var_19C)
  loc_1B75F57:    = var_1F8.Value
  loc_1B75F84:   If (var_19C > 0) Then
  loc_1B75F8D:     Call Proc_135_78_10E7CA0(MemVar_1F95044)
  loc_1B75FA0:     Set var_14C = Me.Txt
  loc_1B75FA6:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B75FAE:     var_150.Text = var_158
  loc_1B75FBD:     Exit Sub
  loc_1B75FBE:   End If
  loc_1B75FC1: Else
  loc_1B75FF5:   global_100 = CStr(Me.Fields.Item("DocID").Value)
  loc_1B76006: End If
  loc_1B76006: var_16C = 1
  loc_1B76012: var_1AC = CVar(CLng(&HD)) 'Long
  loc_1B7602D: var_1EC = 1
  loc_1B76039: var_23C = CVar(CLng(&HC)) 'Long
  loc_1B7605B: var_204 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B76092: unk_55277D.Execute "Select Waiter From KOT where DocID='" & CStr(Me.FGrid.TextMatrix)) & "' And SNO =" & CStr(var_204), var_1BC, -1
  loc_1B7609D: Set var_88 = var_154
  loc_1B760D5: If (var_88.RecordCount > 0) Then
  loc_1B760EA:   var_14C = var_88.Fields
  loc_1B76109:   global_184 = CStr(var_14C.Item(0).Value)
  loc_1B7611A: End If
  loc_1B76120: global_124 = vbNullString
  loc_1B7612A: Call Proc_135_81_EABEB4(var_118, var_14C, var_154, var_204, var_23C)
  loc_1B76132: Set var_118 = var_14C
  loc_1B7615A: For var_264 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_264 'Integer
  loc_1B76164:   var_16C = CVar(CLng(var_92)) 'Long
  loc_1B7616C:   var_1AC = CVar(CLng(4)) 'Long
  loc_1B7618C:   var_1BC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B76194:   var_1EC = vbNullString
  loc_1B761A2:   var_22C = CVar(CLng(var_92)) 'Long
  loc_1B761F2:   If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_1B76209:     If (var_118.RecordCount > 0) Then
  loc_1B7620F:       var_118.MoveFirst
  loc_1B76220:       var_1AC = CVar(CLng(&HD)) 'Long
  loc_1B76289:       var_118.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))), 0, 1
  loc_1B762B3:       If var_118.EOF Then
  loc_1B762C1:         var_118.AddNew CVar(CLng(var_92)), var_18C
  loc_1B762CA:         var_16C = CVar(CLng(var_92)) 'Long
  loc_1B762D2:         var_1AC = CVar(CLng(&HD)) 'Long
  loc_1B76318:         var_22C = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1B76326:         var_118.Collect = "V_NO"
  loc_1B76347:         var_118.Update var_16C, var_18C
  loc_1B7634C:       End If
  loc_1B7634F:     Else
  loc_1B7635A:       var_118.AddNew var_16C, var_18C
  loc_1B7636B:       var_1AC = CVar(CLng(&HD)) 'Long
  loc_1B763B1:       var_22C = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1B763BF:       var_118.Collect = "V_NO"
  loc_1B763E0:       var_118.Update CVar(CLng(var_92)), var_18C
  loc_1B763E5:     End If
  loc_1B763E5:   End If
  loc_1B763E8: Next var_264 'Integer
  loc_1B763F3: var_1F0 = var_118.RecordCount
  loc_1B76401: If (var_1F0 > 0) Then
  loc_1B7640A:   var_118.Sort = "V_NO"
  loc_1B76412:   var_118.MoveFirst
  loc_1B76417:   ' Referenced from: 1B76509
  loc_1B7641D:   var_15A = var_118.EOF
  loc_1B76426:   If Not(var_15A) Then
  loc_1B76434:     If (global_124 <> vbNullString) Then
  loc_1B76489:       global_124 = CStr(Trim(CVar(global_124 & "," & CStr(var_118.Fields.Item("V_NO").Value))))
  loc_1B764A9:     Else
  loc_1B764C3:       var_150 = var_118.Fields.Item("V_NO")
  loc_1B764D5:       var_19C = CVar(CStr(var_150.Value)) 'String
  loc_1B764E4:       var_158 = CStr(Trim(var_19C))
  loc_1B764EA:       global_124 = var_158
  loc_1B76501:     End If
  loc_1B76504:     var_118.MoveNext
  loc_1B76509:     GoTo loc_1B76417
  loc_1B7650C:   End If
  loc_1B76515:   global_124 = global_124
  loc_1B76519: End If
  loc_1B7651B: var_8A = &HFF
  loc_1B76527: unk_55277D.BeginTrans var_1F0
  loc_1B7654A: Set var_14C = Me.Txt
  loc_1B76550: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Delete From Stock Where DocID='")
  loc_1B76558: var_17C = var_150.Text
  loc_1B76561: var_1FC = -1 & var_158
  loc_1B76571: unk_55277D.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, var_8A
  loc_1B765A9: Set var_14C = Me.Txt
  loc_1B765AF: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Delete From Sale1 Where DocID='")
  loc_1B765B7: var_17C = var_150.Text
  loc_1B765C0: var_1FC = -1 & var_158
  loc_1B765D0: unk_55277D.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B76608: Set var_14C = Me.Txt
  loc_1B7660E: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Delete From Sale2 Where DocID='")
  loc_1B76616: var_17C = var_150.Text
  loc_1B7661F: var_1FC = -1 & var_158
  loc_1B7662F: unk_55277D.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B76667: Set var_14C = Me.Txt
  loc_1B7666D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Delete From SunTran Where DocID='")
  loc_1B76675: var_17C = var_150.Text
  loc_1B7667E: var_1FC = -1 & var_158
  loc_1B7668E: unk_55277D.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B766B3: If (global_192 = "Room Service") Then
  loc_1B766C4:   Set var_14C = Me.Txt
  loc_1B766CA:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B766D2:   var_158 = var_150.Text
  loc_1B766E5:   Set var_154 = Me.Txt
  loc_1B766EB:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B7670E:   Set var_1F8 = Me.Txt
  loc_1B76714:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B76723:   Proc_6_7_F26918(var_19C, CVar(var_29C))
  loc_1B76748:   Set var_388 = Me.Txt
  loc_1B7674E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_38C)
  loc_1B76756:   var_390 = var_38C.Text
  loc_1B76766:   Set var_394 = Me.Txt
  loc_1B7676C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_398)
  loc_1B76771:   var_3A8 = 1
  loc_1B7677D:   var_3C8 = CVar(CLng(&H17)) 'Long
  loc_1B767C3:   Set var_460 = Me.Txt
  loc_1B767C9:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_464, var_468)
  loc_1B767D1:   var_3C8 = var_464.Text
  loc_1B767DE:   var_9D8 = Val(var_468)
  loc_1B767E8:   Set var_4AC = Me.TxtGt
  loc_1B767EE:   Call 0.Method_TopCtrl1_UnknownEvent_194 (var_15A, var_9D8)
  loc_1B76800:   Set var_4B0 = Me.TxtGt
  loc_1B76806:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_4B4, var_4B8)
  loc_1B7680E:   var_3A8 = var_4B4.Text
  loc_1B7681B:   var_9E0 = Val(var_4B8)
  loc_1B76825:   Set var_73C = Me.TxtGt
  loc_1B7682B:   Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9E0)
  loc_1B7683D:   Set var_740 = Me.TxtGt
  loc_1B76843:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_744)
  loc_1B76858:   var_9E8 = Val(var_744.Text)
  loc_1B76869:   Proc_6_7_F26918(var_828, Date)
  loc_1B76872:   Set var_85C = Me.TopCtrl1
  loc_1B76878:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_9E8)
  loc_1B768C1:   Set var_920 = Me.Txt
  loc_1B768C7:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_924)
  loc_1B768E8:   var_1FC = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B76938:   var_2D4 = CVar(var_1FC & var_158 & "'," & CStr(Val(var_1F4.Text)) & ",") & var_19C & ",'" & CVar(global_128) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1B7698D:   var_364 = var_2D4 & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_56) & "','" & CVar(global_132) & "','" & CVar(global_136) 
  loc_1B769BA:   var_4A8 = var_364 & "','" & IIf((var_390 <> vbNullString), CVar(var_398), CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(var_9D8) & "," 
  loc_1B76A29:   var_618 = var_4A8 & CVar(var_9E0) & "," & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) 
  loc_1B76A96:   var_788 = var_618 & ", " & CVar(var_104) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_9E8) & ",'" 
  loc_1B76AD6:   var_8FC = var_788 & CVar(global_124) & "', '" & CVar(MemVar_1F950C8) & "'," & var_828 & ",'" & IIf((var_87C = "Add"), "A", "E") 
  loc_1B76B16:   unk_55277D.Execute CStr(var_8FC & "','" & CVar(var_924.Text) & "','" & CVar(global_184) & "','N')"), var_9CC, -1
  loc_1B76BF7: Else
  loc_1B76C05:   Set var_14C = Me.Txt
  loc_1B76C0B:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158)
  loc_1B76C13:   var_9D0 = var_150.Text
  loc_1B76C26:   Set var_154 = Me.Txt
  loc_1B76C2C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B76C41:   var_204 = Val(var_1F4.Text)
  loc_1B76C4F:   Set var_1F8 = Me.Txt
  loc_1B76C55:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B76C64:   Proc_6_7_F26918(var_19C, CVar(var_29C))
  loc_1B76C87:   var_3C8 = CVar(CLng(&H17)) 'Long
  loc_1B76C90:   Set var_388 = Me.FGrid
  loc_1B76C96:   var_3EC = var_388.TextMatrix)
  loc_1B76CB0:   Set var_38C = Me.Txt
  loc_1B76CB6:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_394, var_390, var_3EC)
  loc_1B76CBE:   var_3C8 = var_394.Text
  loc_1B76CCB:   var_9D8 = Val(var_390)
  loc_1B76CD5:   Set var_398 = Me.TxtGt
  loc_1B76CDB:   Call 0.Method_TopCtrl1_UnknownEvent_194 (var_15A, var_9D8, 1)
  loc_1B76CED:   Set var_3DC = Me.TxtGt
  loc_1B76CF3:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_460, var_468)
  loc_1B76D08:   var_9E0 = Val(var_468)
  loc_1B76D12:   Set var_464 = Me.TxtGt
  loc_1B76D18:   Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9E0)
  loc_1B76D2A:   Set var_4AC = Me.TxtGt
  loc_1B76D30:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_4B0)
  loc_1B76D45:   var_9E8 = Val(var_4B0.Text)
  loc_1B76D79:   Proc_6_7_F26918(var_828, Date)
  loc_1B76D82:   Set var_4B4 = Me.TopCtrl1
  loc_1B76D88:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_9E8)
  loc_1B76DD1:   Set var_73C = Me.Txt
  loc_1B76DD7:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_740)
  loc_1B76DF8:   var_1FC = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B76E48:   var_2D4 = CVar(var_1FC & var_158 & "'," & CStr(var_460.Text) & ",") & var_19C & ",'" & CVar(global_128) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1B76E9D:   var_364 = var_2D4 & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_56) & "','" & CVar(global_132) & "','" & CVar(global_136) 
  loc_1B76F01:   var_518 = var_364 & "','" & CVar(CStr(var_3EC)) & "'," & CVar(var_9D8) & "," & CVar(var_9E0) & "," & CVar(var_E4) & "," & CVar(var_DC) 
  loc_1B76F79:   var_698 = var_518 & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) & "," & CVar(var_B4) & "," & CVar(var_BC) 
  loc_1B76FC4:   var_7E8 = var_698 & "," & CVar(var_EC) & "," & CVar(var_9E8) & ",'" & Trim(Left(global_124, &HFF)) & "', '" & CVar(MemVar_1F950C8) 
  loc_1B7700D:   var_988 = var_7E8 & "'," & var_828 & ",'" & IIf((var_87C = "Add"), "A", "E") & "','" & CVar(var_740.Text) & "','" & CVar(global_184) 
  loc_1B77016:   var_9A8 = var_988 & "','N')" 
  loc_1B77024:   unk_55277D.Execute CStr(var_9A8), var_9CC, -1
  loc_1B770F8: End If
  loc_1B7711D: For var_9EC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_9EC 'Integer
  loc_1B77127:   var_16C = CVar(CLng(var_92)) 'Long
  loc_1B7712F:   var_1AC = CVar(CLng(4)) 'Long
  loc_1B7714F:   var_1BC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B77176:   Set var_150 = Me.FGrid
  loc_1B77187:   var_158 = CStr(var_150.TextMatrix))
  loc_1B771B5:   If CBool(CVar(CLng(7)) And (CDbl(Val(var_158)) <> CDbl(0))) Then
  loc_1B771C6:     Set var_14C = Me.Txt
  loc_1B771CC:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, CVar(CLng(var_92)), (var_1BC <> vbNullString))
  loc_1B771D4:     var_1AC = var_150.Text
  loc_1B771DD:     var_16C = CVar(CLng(var_92)) 'Long
  loc_1B77207:     var_204 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B7722A:     Set var_1F8 = Me.Txt
  loc_1B77230:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_29C, var_9F0, var_204, CVar(CLng(0)))
  loc_1B77245:     var_9D8 = Val(var_9F0)
  loc_1B77253:     Set var_2B0 = Me.Txt
  loc_1B77259:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_388, var_9D8, var_29C.Text)
  loc_1B77268:     Proc_6_7_F26918(var_1BC, CVar(var_388), 1)
  loc_1B77271:     var_24C = CVar(CLng(var_92)) 'Long
  loc_1B77282:     Set var_38C = Me.FGrid
  loc_1B77288:     var_2D4 = var_38C.TextMatrix)
  loc_1B772AF:     var_314 = Me.FGrid.TextMatrix)
  loc_1B772C9:     Set var_398 = Me.Txt
  loc_1B772CF:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_3DC, var_A00, var_314, CVar(CLng(&H16)), CVar(CLng(var_92)))
  loc_1B772E7:     Set var_460 = Me.Txt
  loc_1B772ED:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_464, CVar(CLng(&H15)))
  loc_1B772F2:     var_44C = 1
  loc_1B772FE:     var_498 = CVar(CLng(&H17)) 'Long
  loc_1B7733A:     var_528 = CVar(CLng(var_92)) 'Long
  loc_1B77342:     var_568 = CVar(CLng(&HB)) 'Long
  loc_1B7734B:     Set var_4B0 = Me.FGrid
  loc_1B77361:     var_5C8 = CVar(CLng(var_92)) 'Long
  loc_1B77369:     var_608 = CVar(CLng(&H13)) 'Long
  loc_1B77388:     var_668 = CVar(CLng(var_92)) 'Long
  loc_1B77390:     var_6A8 = CVar(CLng(&H14)) 'Long
  loc_1B77399:     Set var_73C = Me.FGrid
  loc_1B773AF:     var_708 = CVar(CLng(var_92)) 'Long
  loc_1B773B7:     var_758 = CVar(CLng(6)) 'Long
  loc_1B773D6:     var_7B8 = CVar(CLng(var_92)) 'Long
  loc_1B773DE:     var_7F8 = CVar(CLng(7)) 'Long
  loc_1B773E7:     Set var_744 = Me.FGrid
  loc_1B77407:     var_8CC = CVar(CLng(var_92)) 'Long
  loc_1B7740F:     var_958 = CVar(CLng(9)) 'Long
  loc_1B77438:     var_A18 = CVar(CLng(var_92)) 'Long
  loc_1B77440:     var_A38 = CVar(CLng(8)) 'Long
  loc_1B77449:     Set var_920 = Me.FGrid
  loc_1B77469:     var_A7C = CVar(CLng(var_92)) 'Long
  loc_1B77471:     var_A9C = CVar(CLng(&HA)) 'Long
  loc_1B7749A:     var_AE0 = CVar(CLng(var_92)) 'Long
  loc_1B774A2:     var_B00 = CVar(CLng(&H10)) 'Long
  loc_1B774B1:     var_7E8 = Me.FGrid.TextMatrix)
  loc_1B774CB:     var_B44 = CVar(CLng(var_92)) 'Long
  loc_1B774D3:     var_B64 = CVar(CLng(&H11)) 'Long
  loc_1B774DC:     Set var_B78 = Me.FGrid
  loc_1B774FC:     var_BAC = CVar(CLng(var_92)) 'Long
  loc_1B77504:     var_BCC = CVar(CLng(&HE)) 'Long
  loc_1B77526:     var_1110 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B7753E:     Set var_C48 = Me.FGrid
  loc_1B77557:     var_1118 = Val(CStr(var_C48.TextMatrix)))
  loc_1B77588:     var_1120 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B77599:     Proc_6_7_F26918(var_9A8, Date, var_1120, CVar(CLng(&H12)), CVar(CLng(var_92)), var_1118, CVar(CLng(&HF)), CVar(CLng(var_92)))
  loc_1B775A2:     Set var_D18 = Me.TopCtrl1
  loc_1B775A8:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_1110)
  loc_1B775E7:     var_DE8 = CVar(CLng(var_92)) 'Long
  loc_1B775EF:     var_E08 = CVar(CLng(&H1A)) 'Long
  loc_1B775F8:     Set var_E1C = Me.FGrid
  loc_1B7760E:     var_E7C = CVar(CLng(var_92)) 'Long
  loc_1B77616:     var_E9C = CVar(CLng(&H1A)) 'Long
  loc_1B77635:     var_F10 = CVar(CLng(var_92)) 'Long
  loc_1B7763D:     var_F30 = CVar(CLng(&HD)) 'Long
  loc_1B7765C:     var_FA4 = CVar(CLng(var_92)) 'Long
  loc_1B77664:     var_FC4 = CVar(CLng(&HC)) 'Long
  loc_1B776A4:     var_1080 = Me.FGrid.TextMatrix)
  loc_1B776C4:     var_1FC = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag,ItemRestCode) Values (" & "'"
  loc_1B7770B:     var_9AC = var_1FC & var_158 & "'," & CStr(var_204) & ",'" & global_128 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070
  loc_1B77725:     var_1DC = CVar(var_9AC & "'," & CStr(var_9D8) & ",") 'String
  loc_1B77772:     var_344 = var_1DC & var_1BC & ",'" & CVar(global_56) & "','" & CVar(CStr(var_3DC.Text)) & "','" & CVar(CStr(var_314)) & "','" 
  loc_1B7778D:     var_488 = var_344 & IIf((var_A00 <> vbNullString), CVar(var_464), CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(CStr(var_4B0.TextMatrix))) 
  loc_1B77796:     var_4A8 = var_488 & "','" 
  loc_1B777A1:     var_518 = var_4A8 & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B777C9:     var_618 = var_518 & "','" & CVar(CStr(var_73C.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B777E6:     var_698 = var_618 & "'," & CVar(Val(CStr(var_744.TextMatrix)))) & "," 
  loc_1B77819:     var_7A8 = var_698 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_920.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B77869:     var_8DC = var_7A8 & "," & CVar(Val(CStr(var_7E8))) & "," & CVar(Val(CStr(var_B78.TextMatrix)))) & "," & CVar(var_1110) & "," & CVar(var_1118) 
  loc_1B778B9:     var_DD8 = var_8DC & "," & CVar(var_1120) & ",'" & CVar(MemVar_1F950C8) & "'," & var_9A8 & ",'" & IIf((var_D38 = "Add"), "A", "E") & "','" 
  loc_1B778EC:     var_F74 = var_DD8 & CVar(CStr(var_E1C.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B7792B:     unk_55277D.Execute CStr(var_F74 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'N','" & CVar(CStr(var_1080)) & "')"), var_10E4, -1
  loc_1B77A88:     If (global_180 = "Y") Then
  loc_1B77A99:       Set var_14C = Me.Txt
  loc_1B77A9F:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, var_10E8, var_1080, CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1B77AA7:       var_1128 = var_150.Text
  loc_1B77AB0:       var_16C = CVar(CLng(var_92)) 'Long
  loc_1B77AB8:       var_1AC = CVar(CLng(0)) 'Long
  loc_1B77AE1:       var_1EC = CVar(CLng(var_92)) 'Long
  loc_1B77AE9:       var_23C = CVar(CLng(&HD)) 'Long
  loc_1B77B08:       var_260 = CVar(CLng(var_92)) 'Long
  loc_1B77B10:       var_354 = CVar(CLng(&HC)) 'Long
  loc_1B77B6E:       var_390 = "Update KOT Set ContraDocId='" & var_158 & "',ContraSno=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & " where docid='" & CStr(Me.FGrid.TextMatrix))
  loc_1B77B8A:       unk_55277D.Execute var_390 & "' And SNo=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_1DC, -1
  loc_1B77BC6:     End If
  loc_1B77BC6:   End If
  loc_1B77BC9: Next var_9EC 'Integer
  loc_1B77BF3: For var_112C = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_92 = var_112C 'Integer
  loc_1B77BFD:   var_16C = CVar(CLng(var_92)) 'Long
  loc_1B77C05:   var_1AC = CVar(CLng(2)) 'Long
  loc_1B77C4C:   Set var_150 = Me.FGCat
  loc_1B77C5D:   var_158 = CStr(var_150.TextMatrix))
  loc_1B77C8B:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_158)) <> CDbl(0))) Then
  loc_1B77C9C:     Set var_14C = Me.Txt
  loc_1B77CA2:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, CVar(CLng(var_92)))
  loc_1B77CAA:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_150.Text
  loc_1B77CDD:     var_204 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B77CF5:     Set var_1F4 = Me.FGCat
  loc_1B77CFB:     var_19C = var_1F4.TextMatrix)
  loc_1B77D0E:     var_9D8 = Val(CStr(var_19C))
  loc_1B77D1E:     var_9AC = Me.LblVPrefix.Caption
  loc_1B77D31:     Set var_29C = Me.Txt
  loc_1B77D37:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_2B0, var_A00, var_9D8, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B77D4C:     var_9E0 = Val(var_A00)
  loc_1B77D5A:     Set var_388 = Me.Txt
  loc_1B77D60:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_38C, var_9E0, CVar(CLng(1)))
  loc_1B77D6F:     Proc_6_7_F26918(var_1DC, CVar(var_38C), CVar(CLng(var_92)))
  loc_1B77D78:     var_374 = CVar(CLng(var_92)) 'Long
  loc_1B77D80:     var_3B8 = CVar(CLng(2)) 'Long
  loc_1B77D89:     Set var_394 = Me.FGCat
  loc_1B77D9F:     var_3FC = CVar(CLng(var_92)) 'Long
  loc_1B77DA7:     var_478 = CVar(CLng(4)) 'Long
  loc_1B77DC9:     var_9E8 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B77DE1:     Set var_3DC = Me.FGCat
  loc_1B77DFA:     var_10F0 = Val(CStr(var_3DC.TextMatrix)))
  loc_1B77E2B:     var_10F8 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B77E3C:     Proc_6_7_F26918(var_4A8, Date, var_10F8, CVar(CLng(6)), CVar(CLng(var_92)), var_10F0, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1B77E45:     Set var_464 = Me.TopCtrl1
  loc_1B77E4B:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_9E8)
  loc_1B77E64:     var_578 = "A"
  loc_1B77E9A:     var_1FC = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag) Values (" & "'"
  loc_1B77EF4:     var_9FC = var_1FC & var_158 & "'," & CStr(var_2B0.Text) & "," & CStr(var_9D8) & ",'" & global_128 & "','" & var_9AC & "','" & MemVar_1F95070
  loc_1B77F3E:     var_304 = CVar(var_9FC & "'," & CStr(var_9E0) & ",") & var_1DC & ",'" & CVar(global_56) & "','" & CVar(CStr(var_394.TextMatrix))) 
  loc_1B77F9D:     var_4D8 = var_304 & "'," & CVar(var_9E8) & "," & CVar(var_10F0) & "," & CVar(var_10F8) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4A8 
  loc_1B77FC4:     unk_55277D.Execute CStr(var_4D8 & ",'" & IIf((var_518 = "Add"), var_578, "E") & "','N')"), var_618, -1
  loc_1B7806A:   End If
  loc_1B7806D: Next var_112C 'Integer
  loc_1B7807E: Set var_14C = Me.TxtGt
  loc_1B78084: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_92)
  loc_1B7808F: For var_1130 =  To var_15A: 1 = var_1130 'Integer
  loc_1B780A2:   Set var_14C = Me.TxtGt
  loc_1B780A8:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150)
  loc_1B780B0:   var_15A = var_150.Visible
  loc_1B780C2:   If (var_15A = &HFF) Then
  loc_1B780D3:     Set var_14C = Me.Txt
  loc_1B780D9:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B780F4:     Set var_154 = Me.Txt
  loc_1B780FA:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B7811D:     Set var_1F8 = Me.Txt
  loc_1B78123:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B78132:     Proc_6_7_F26918(var_19C, CVar(var_29C))
  loc_1B78144:     Set var_2B0 = Me.LblCap
  loc_1B7814A:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_388)
  loc_1B78164:     Set var_38C = Me.TxtPer
  loc_1B7816A:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_394)
  loc_1B7817F:     var_9D8 = Val(var_394.Tag)
  loc_1B7818F:     Set var_398 = Me.LblCap
  loc_1B78195:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_3DC, var_9AC)
  loc_1B781AF:     Set var_460 = Me.LblAt
  loc_1B781B5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_464)
  loc_1B781CF:     Set var_4AC = Me.TxtGt
  loc_1B781D5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_4B0)
  loc_1B781EF:     Set var_4B4 = Me.TxtPer
  loc_1B781F5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_73C)
  loc_1B7820A:     var_9E0 = Val(var_73C.Text)
  loc_1B7821A:     Set var_740 = Me.TxtGt
  loc_1B78220:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_744, var_9FC)
  loc_1B78235:     var_9E8 = Val(var_9FC)
  loc_1B78245:     Set var_85C = Me.LblDummy
  loc_1B7824B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_920, var_A00)
  loc_1B78260:     var_10F0 = Val(var_A00)
  loc_1B78271:     Proc_6_7_F26918(var_518, Date)
  loc_1B7827A:     Set var_924 = Me.TopCtrl1
  loc_1B78280:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_10F0)
  loc_1B78299:     var_5D8 = "A"
  loc_1B782C6:     Set var_9D0 = Me.Txt
  loc_1B782CC:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_B78)
  loc_1B782DB:     Proc_6_7_F26918(var_698, CVar(var_B78))
  loc_1B782ED:     Set var_BE0 = Me.LblDummy
  loc_1B782F3:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_C48)
  loc_1B782FB:     var_A04 = var_C48.Tag
  loc_1B78314:     var_1FC = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode) Values ('" & var_150.Text
  loc_1B7831B:     var_210 = var_1FC & "',"
  loc_1B7836B:     var_2AC = CVar(var_210 & CStr(var_92) & ",'" & global_128 & "'," & CStr(Val(var_1F4.Text)) & ",") & var_19C & ",'" & CVar(var_388.Tag) 
  loc_1B7837F:     var_2D4 = var_2AC & "'," & CVar(var_3DC.Caption) 
  loc_1B783D5:     var_41C = var_2D4 & ",'" & CVar(var_9AC) & "','" & CVar(var_464.Tag) & "','" & CVar(var_4B0.Tag) & "'," & CVar(var_744.Text) & "," 
  loc_1B78427:     var_638 = var_41C & CVar(var_920.Caption) & "," & CVar(var_10F0) & ",'" & CVar(MemVar_1F950C8) & "'," & var_518 & ",'" & IIf((var_578 = "Add"), var_5D8, "E") 
  loc_1B78469:     var_788 = var_638 & "'," & var_698 & ",'" & CVar(var_A04) & "','" & CVar(global_56) & "','N','" 
  loc_1B78480:     var_A08 = CStr(var_788 & CVar(MemVar_1F95070) & "')")
  loc_1B7848A:     unk_55277D.Execute var_A08, var_7E8, -1
  loc_1B78550:   End If
  loc_1B78553: Next var_1130 'Integer
  loc_1B78563: If (global_180 = "Y") Then
  loc_1B7858B:   For var_1134 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_1134 'Integer
  loc_1B78595:     var_16C = CVar(CLng(var_92)) 'Long
  loc_1B7859D:     var_1AC = CVar(CLng(4)) 'Long
  loc_1B785AC:     var_17C = Me.FGrid.TextMatrix)
  loc_1B785E4:     Set var_150 = Me.FGrid
  loc_1B78623:     If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(var_150.TextMatrix)))) <> CDbl(0))) Then
  loc_1B78629:       Proc_6_104_ED68A8(var_17C, CVar(CLng(var_92)), (Trim(CVar(CStr(var_17C))) <> vbNullString))
  loc_1B78632:       var_18C = CVar(CLng(var_92)) 'Long
  loc_1B7863A:       var_1CC = CVar(CLng(&HD)) 'Long
  loc_1B7868A:       var_2AC = CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") & var_17C & ",U_AE1='E' where docid='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B786A1:       unk_55277D.Execute CStr(var_2AC & "'"), var_2D4, -1
  loc_1B786C9:     End If
  loc_1B786CC:   Next var_1134 'Integer
  loc_1B786D1: End If
  loc_1B786D5: Set var_14C = Me.TopCtrl1
  loc_1B786DB: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_1B786F0: If CBool( <> "Edit") Then
  loc_1B786FE:   If (global_192 = "Room Service") Then
  loc_1B78704:     var_18C = 0
  loc_1B78734:     unk_55277D.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_56 & "'", var_17C, -1
  loc_1B7873C:     var_14C = var_14C.Fields
  loc_1B78744:     var_18C = var_150.Item(var_150)
  loc_1B7875B:     var_1AC = " BILL NO.-"
  loc_1B78760:     var_1DC = (Trim(CVar(var_154)) + var_1AC)
  loc_1B78769:     var_274 = (CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") & var_17C & ",U_AE1='E' where docid='" + " ")
  loc_1B7877B:     Set var_1F4 = Me.Txt
  loc_1B78781:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F8, var_210)
  loc_1B78789:     var_274 = var_1F8.Text
  loc_1B78794:     var_2AC = (var_154 + CVar(var_210))
  loc_1B78799:     var_120 = CStr(var_2AC)
  loc_1B787C5:     var_146 = (var_146 + 1)
  loc_1B787DC:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B787FD:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B78812:     var_204 = Val(var_1F4.Text)
  loc_1B78819:     var_17C = CVar(Me.LblVPrefix) 'Address
  loc_1B78830:     Set var_1F8 = Me.Txt
  loc_1B78836:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B78845:     Proc_6_7_F26918(var_2AC, CVar(var_29C))
  loc_1B78855:     Set var_2B0 = Me.Txt
  loc_1B7885B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_388)
  loc_1B78876:     Set var_38C = Me.TxtGt
  loc_1B7887C:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_204)
  loc_1B7888E:     Set var_394 = Me.TxtGt
  loc_1B78894:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_398)
  loc_1B788A9:     var_9D8 = Val(var_398.Text)
  loc_1B788B3:     Set var_3DC = Me.TxtGt
  loc_1B788B9:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9D8)
  loc_1B788CB:     Set var_460 = Me.TxtGt
  loc_1B788D1:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_464)
  loc_1B788E6:     var_9E0 = Val(var_464.Text)
  loc_1B788F7:     Set var_4AC = Me.Txt
  loc_1B788FD:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_4B0, var_A04)
  loc_1B78912:     var_9E8 = Val(var_A04)
  loc_1B78923:     Set var_4B4 = Me.Txt
  loc_1B78929:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_73C, var_A08)
  loc_1B78941:     Set var_740 = Me.Txt
  loc_1B78947:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_744)
  loc_1B7895A:     Set var_85C = Me.Txt
  loc_1B78960:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_920)
  loc_1B7899C:     Proc_6_7_F26918(var_5D8, Date)
  loc_1B789A5:     Set var_924 = Me.TopCtrl1
  loc_1B789AB:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_146)
  loc_1B789FA:     var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B78A16:     var_250 = var_158 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'" & var_150.Text
  loc_1B78A62:     var_1BC = CVar(var_250 & "'," & CStr(var_146) & ",'" & global_128 & "'," & CStr(var_204) & ",'" & MemVar_1F95070 & "','") 'String
  loc_1B78A68:     var_1DC = var_1BC & Trim(var_17C) 
  loc_1B78AC0:     var_384 = var_1DC & "'," & var_2AC & ",'" & Trim(CVar(var_388)) & "'" & ",'','','" & CVar(var_120) & "','" & CVar(var_124) & "','Room'," 
  loc_1B78B0C:     var_518 = var_384 & CVar(var_9D8) & "," & CVar(var_4B0.Text) & "," & CVar(var_73C.Text) & ",'REST'," & "'RO','" & IIf((var_A08 <> vbNullString), CVar(var_744), CVar(var_920.Tag)) 
  loc_1B78B48:     var_6F8 = var_518 & "','','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," & var_5D8 & ",'" & IIf((var_638 = "Add"), "A", "E") 
  loc_1B78B51:     var_718 = var_6F8 & "','" 
  loc_1B78B75:     unk_55277D.Execute CStr(var_718 & CVar(global_56) & "')"), var_788, -1
  loc_1B78C64:     unk_55277D.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95070 & "TOUT" & "'", var_17C, -1
  loc_1B78C6F:     Set var_128 = Me.Txt
  loc_1B78C95:     If (var_128.RecordCount > 0) Then
  loc_1B78CC4:       var_150 = var_128.Fields.Item("TaxStru")
  loc_1B78CD4:       var_19C = "Select * from taxstru where Code='" & var_150.Value 
  loc_1B78CDD:       var_1BC = var_19C & "' Order by Sno" 
  loc_1B78CE1:       var_158 = CStr(var_1BC)
  loc_1B78CEB:       unk_55277D.Execute var_158, var_1DC, -1
  loc_1B78CF6:       Set var_118 = Me.Txt
  loc_1B78D13:     Else
  loc_1B78D26:       var_17C = "System Defined Revenue is not defined"
  loc_1B78D2C:       MsgBox(var_17C, 0, var_19C, var_1BC, var_1DC)
  loc_1B78D42:       unk_55277D.RollbackTrans
  loc_1B78D47:       Exit Sub
  loc_1B78D48:     End If
  loc_1B78D4E:     var_146 = (var_146 + 1)
  loc_1B78D75:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_150, var_158, "Select Docid,GuestProf from GuestFolio where FolioNo=", var_17C, -1)
  loc_1B78D7D:     var_154 = var_150.Text
  loc_1B78D8F:     unk_55277D.Execute var_146 & var_158, var_154, Me.Txt
  loc_1B78D9A:     Set var_12C = var_154
  loc_1B78DC4:     If (var_12C.RecordCount > 0) Then
  loc_1B78DE1:       var_150 = var_12C.Fields.Item("GuestProf")
  loc_1B78DF2:       var_11C = CStr(var_150.Value)
  loc_1B78DFF:     End If
  loc_1B78E0D:     Set var_14C = Me.Txt
  loc_1B78E13:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B78E1B:     var_214 = var_150.Text
  loc_1B78E2E:     Set var_154 = Me.Txt
  loc_1B78E34:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B78E49:     var_204 = Val(var_1F4.Text)
  loc_1B78E67:     Set var_1F8 = Me.Txt
  loc_1B78E6D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B78E7C:     Proc_6_7_F26918(var_2AC, CVar(var_29C))
  loc_1B78E8C:     Set var_2B0 = Me.Txt
  loc_1B78E92:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_388)
  loc_1B78EA1:     var_2F4 = Trim(CVar(var_388))
  loc_1B78ED4:     Set var_398 = Me.TxtGt
  loc_1B78EDA:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_204)
  loc_1B78EEC:     Set var_3DC = Me.TxtGt
  loc_1B78EF2:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_460)
  loc_1B78F07:     var_9D8 = Val(var_460.Text)
  loc_1B78F11:     Set var_464 = Me.TxtGt
  loc_1B78F17:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9D8)
  loc_1B78F29:     Set var_4AC = Me.TxtGt
  loc_1B78F2F:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_4B0)
  loc_1B78F44:     var_9E0 = Val(var_4B0.Text)
  loc_1B78F55:     Set var_4B4 = Me.Txt
  loc_1B78F5B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_73C, var_A04)
  loc_1B78F70:     var_9E8 = Val(var_A04)
  loc_1B78F81:     Set var_740 = Me.Txt
  loc_1B78F87:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_744, var_A08)
  loc_1B78F9F:     Set var_85C = Me.Txt
  loc_1B78FA5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_920)
  loc_1B78FB8:     Set var_924 = Me.Txt
  loc_1B78FBE:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_9D0)
  loc_1B78FE7:     var_5D8 = IIf((var_A08 <> vbNullString), CVar(var_920), CVar(var_9D0.Tag))
  loc_1B78FFA:     Set var_B78 = Me.Txt
  loc_1B79000:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_BE0)
  loc_1B7901B:     Proc_6_7_F26918(var_718, Date)
  loc_1B79024:     Set var_C48 = Me.TopCtrl1
  loc_1B7902A:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_9D0)
  loc_1B790A0:     var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1B790AE:     var_210 = var_158 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid) Values ("
  loc_1B790B5:     var_218 = var_210 & "'"
  loc_1B790E0:     var_4B8 = var_218 & var_214 & "'," & CStr(var_146) & ",'" & global_128
  loc_1B79101:     var_9F8 = var_4B8 & "'," & CStr(var_204) & ",'" & MemVar_1F95070
  loc_1B79153:     var_344 = CVar(var_9F8 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_2AC & ",'" & var_2F4 & "'" & ",'" & CVar(var_11C) & "','','" 
  loc_1B79195:     var_45C = var_344 & CVar(var_120) & "','" & var_128.Fields.Item("Code").Value & "','Room'," & CVar(var_9D8) & "," & CVar(var_73C.Text) 
  loc_1B791E7:     var_578 = var_45C & "," & CVar(var_744.Text) & ",'" & CVar(global_132) & "'," & "'" & CVar(global_136) & "','" 
  loc_1B79236:     var_768 = var_578 & var_5D8 & "'," & CVar(var_BE0.Text) & ",'','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," & var_718 & ",'" 
  loc_1B7926C:     var_8BC = var_768 & IIf((var_788 = "Add"), "A", "E") & "','" & CVar(global_56) & "','" & var_12C.Fields.Item("DocID").Value & "')" 
  loc_1B7927A:     unk_55277D.Execute CStr(var_8BC), var_8DC, -1
  loc_1B79372:     Set var_14C = Me.Txt
  loc_1B79378:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B79393:     Set var_154 = Me.Txt
  loc_1B79399:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B793A1:     var_158 = var_1F4.Text
  loc_1B793AE:     var_1108 = Val(var_158)
  loc_1B793CF:     Set var_1F8 = Me.Txt
  loc_1B793D5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C, var_4B8)
  loc_1B793ED:     Set var_2B0 = Me.Txt
  loc_1B793F3:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_388)
  loc_1B79402:     var_1DC = Trim(CVar(var_388))
  loc_1B79419:     var_38C = var_128.Fields
  loc_1B79429:     var_364 = var_38C.Item("Code").Value
  loc_1B79435:     Set var_398 = Me.TxtGt
  loc_1B7943B:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A)
  loc_1B7944D:     Set var_3DC = Me.TxtGt
  loc_1B79453:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_460)
  loc_1B79468:     var_1110 = Val(var_460.Text)
  loc_1B79472:     Set var_464 = Me.TxtGt
  loc_1B79478:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_1110)
  loc_1B7948A:     Set var_4AC = Me.TxtGt
  loc_1B79490:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_4B0)
  loc_1B794A5:     var_1118 = Val(var_4B0.Text)
  loc_1B794B6:     Set var_4B4 = Me.Txt
  loc_1B794BC:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_73C, var_214)
  loc_1B794C4:     var_1118 = var_73C.Text
  loc_1B794D1:     var_1120 = Val(var_214)
  loc_1B794E2:     Set var_740 = Me.Txt
  loc_1B794E8:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_744, var_218)
  loc_1B794F0:     var_1120 = var_744.Text
  loc_1B79500:     Set var_85C = Me.Txt
  loc_1B79506:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_920)
  loc_1B79519:     Set var_924 = Me.Txt
  loc_1B7951F:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_9D0)
  loc_1B79548:     var_2AC = IIf((var_218 <> vbNullString), CVar(var_920), CVar(var_9D0.Tag))
  loc_1B7955B:     Set var_B78 = Me.Txt
  loc_1B79561:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_BE0)
  loc_1B79569:     var_9FC = var_BE0.Text
  loc_1B79571:     var_2C4 = Date
  loc_1B79579:     var_2D4 = Date
  loc_1B79581:     var_2E4 = Date
  loc_1B7958A:     Set var_C48 = Me.TopCtrl1
  loc_1B79590:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_E1C)
  loc_1B795C6:     var_344 = IIf((var_2F4 = "Add"), "A", "E")
  loc_1B795ED:     var_384 = var_12C.Fields.Item("DocID").Value
  loc_1B795F7:     var_C4C = 0
  loc_1B79602:     var_BE4 = 0
  loc_1B79615:     var_B7C = 0
  loc_1B79620:     var_B14 = 0
  loc_1B7965D:     var_A08 = vbNullString
  loc_1B79666:     var_A04 = vbNullString
  loc_1B7966F:     var_A00 = vbNullString
  loc_1B796A8:     var_9F4 = "Room"
  loc_1B796BC:     var_9AC = vbNullString
  loc_1B796C5:     var_928 = vbNullString
  loc_1B79709:     Proc_96_8_1CC4F08(MemVar_1F95070 & "TOUT", var_150.Text, var_146, global_128, CLng(var_29C.Text), MemVar_1F95070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_4B8))
  loc_1B797A6:   Else
  loc_1B797B4:     Set var_14C = Me.Txt
  loc_1B797BA:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_150, var_158, CStr(var_1DC), var_928)
  loc_1B797C2:     var_9AC = var_150.Text
  loc_1B797DE:     If (CDbl(Val(var_158)) > CDbl(0)) Then
  loc_1B79808:       var_214 = "CASH RECD. " & Me.LblRest.Caption & " " & "BILL NO.-"
  loc_1B79820:       Set var_150 = Me.Txt
  loc_1B79826:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_154, var_218, var_214 & " ")
  loc_1B7982E:       var_120 = var_154.Text
  loc_1B79860:       Set var_14C = Me.Txt
  loc_1B79866:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_214)
  loc_1B7986E:       var_9F4 = var_150.Text
  loc_1B79881:       Set var_154 = Me.Txt
  loc_1B79887:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B7989C:       var_204 = Val(var_1F4.Text)
  loc_1B798AA:       var_19C = Trim(CVar(Me.LblVPrefix))
  loc_1B798BA:       Set var_1F8 = Me.Txt
  loc_1B798C0:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B798CF:       Proc_6_7_F26918(var_2AC, CVar(var_29C))
  loc_1B798DB:       Set var_2B0 = Me.TxtGt
  loc_1B798E1:       Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_204)
  loc_1B798F3:       Set var_388 = Me.TxtGt
  loc_1B798F9:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_38C)
  loc_1B7990E:       var_9D8 = Val(var_38C.Text)
  loc_1B79918:       Set var_394 = Me.TxtGt
  loc_1B7991E:       Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9D8)
  loc_1B79930:       Set var_398 = Me.TxtGt
  loc_1B79936:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_3DC)
  loc_1B7994B:       var_9E0 = Val(var_3DC.Text)
  loc_1B7995C:       Set var_460 = Me.Txt
  loc_1B79962:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_464, var_9F8)
  loc_1B79977:       var_9E8 = Val(var_9F8)
  loc_1B79988:       Set var_4AC = Me.Txt
  loc_1B7998E:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_4B0, var_9FC)
  loc_1B799A9:       Proc_6_7_F26918(var_578, Date)
  loc_1B799B2:       Set var_4B4 = Me.TopCtrl1
  loc_1B799B8:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_1110)
  loc_1B79A07:       var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B79A15:       var_210 = var_158 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values ("
  loc_1B79A23:       var_250 = var_210 & "'" & var_214
  loc_1B79A72:       var_2C4 = CVar(var_250 & "',1,'" & global_128 & "'," & CStr(var_204) & ",'" & MemVar_1F95070 & "','") & var_19C & "'," & var_2AC 
  loc_1B79AB5:       var_334 = var_2C4 & ",'','','" & CVar(CStr(var_364) & var_210 & "'") & "','" & CVar(var_124) & "','Cash'," & CVar(var_9D8) & "," 
  loc_1B79B09:       var_43C = var_334 & CVar(var_464.Text) & "," & CVar(var_4B0.Tag) & ",'" & CVar(global_132) & "'," & "'" & CVar(global_136) 
  loc_1B79B58:       var_698 = var_43C & "','" & CVar(var_9FC) & "',0,'','','',Null," & "Null,'" & CVar(MemVar_1F950C8) & "'," & var_578 & ",'" & IIf((var_5D8 = "Add"), "A", "E") 
  loc_1B79B85:       unk_55277D.Execute CStr(var_698 & "','" & CVar(global_56) & "')"), var_718, -1
  loc_1B79C31:     End If
  loc_1B79C31:   End If
  loc_1B79C35:   Set var_14C = Me.TopCtrl1
  loc_1B79C3B:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_73C)
  loc_1B79C50:   If ( = "Add") Then
  loc_1B79C67:     var_158 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1B79C8D:     var_1BC = CVar(var_158 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_128 & "' And VP.Date_From<=") 'String
  loc_1B79C9E:     Set var_14C = Me.Txt
  loc_1B79CA4:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_150, var_250, var_1BC)
  loc_1B79CAC:     var_294 = var_150.Text
  loc_1B79CBA:     Proc_6_7_F26918(var_19C, CVar(var_250))
  loc_1B79CC2:     var_1DC = -1 & var_19C 
  loc_1B79CCB:     var_274 = CVar(var_250 & "',1,'" & global_128 & "'," & CStr(var_204) & ",'" & MemVar_1F95070 & "','") & var_19C & " Order By VP.Date_From DESC" 
  loc_1B79CD9:     unk_55277D.Execute CStr(var_274), var_154, 
  loc_1B79CE4:     Set var_88 = var_154
  loc_1B79D22:     If (var_88.RecordCount > 0) Then
  loc_1B79D33:       Set var_14C = Me.Txt
  loc_1B79D39:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_150)
  loc_1B79D4E:       var_204 = Val(var_150.Text)
  loc_1B79D63:       var_154 = var_88.Fields
  loc_1B79D73:       var_17C = var_154.Item("V_Type").Value
  loc_1B79D9E:       Proc_6_7_F26918(var_294, CVar(var_88.Fields.Item("Date_From")))
  loc_1B79DB8:       var_1FC = CStr(var_204)
  loc_1B79DD8:       var_298 = "Update Voucher_Prefix Set Start_Srl_No=" & var_1FC & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1B79E03:       unk_55277D.Execute CStr(CVar(var_298 & "') and V_Type='") & var_17C & "' and Date_From=" & var_294), var_2C4, -1
  loc_1B79E3D:     End If
  loc_1B79E3D:   End If
  loc_1B79E41:   Set var_14C = Me.TopCtrl1
  loc_1B79E47:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_2B0)
  loc_1B79E5C:   If (var_204 = "Add") Then
  loc_1B79E82:     var_158 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F950C8
  loc_1B79E92:     Call 0.Method_arg_50 (var_1FC, var_158 & "' AND ENAME='", var_17C, -1, var_14C)
  loc_1B79EA2:     var_218 = var_150 & var_1FC & "' "
  loc_1B79EAB:     unk_55277D.Execute var_218, 0, var_154
  loc_1B79EB3:     var_19C = var_14C.Fields
  loc_1B79EBB:      = var_150.Item()
  loc_1B79EC3:      = var_154.Value
  loc_1B79EF0:     If (var_19C > 0) Then
  loc_1B79F11:       Set var_14C = Me.Txt
  loc_1B79F17:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "UPDATE LASTVOU  SET DOCID='")
  loc_1B79F1F:       var_17C = var_150.Text
  loc_1B79F28:       var_1FC = -1 & var_158
  loc_1B79F46:       Call 0.Method_arg_50 (var_218, var_1FC & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_1B79F5F:       unk_55277D.Execute var_154 & var_218 & "'  ", , 
  loc_1B79F86:     Else
  loc_1B79FAA:       Call 0.Method_arg_50 (var_1FC, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_2C4)
  loc_1B79FB3:       var_214 = -1 & var_1FC
  loc_1B79FBA:       var_250 = var_1FC & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_1B79FCB:       Set var_14C = Me.Txt
  loc_1B79FD1:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_218)
  loc_1B79FD9:       var_250 = var_150.Text
  loc_1B7A008:       Proc_6_7_F26918(var_19C, Date)
  loc_1B7A014:       var_16C = ",'A','"
  loc_1B7A03A:       unk_55277D.Execute CStr(CVar(var_154 & var_218 & "','" & MemVar_1F95070 & "',") & var_19C & var_16C & CVar(MemVar_1F95078) & "')"), , 
  loc_1B7A072:     End If
  loc_1B7A072:   End If
  loc_1B7A072: End If
  loc_1B7A078: unk_55277D.CommitTrans
  loc_1B7A07F: var_8A = 0
  loc_1B7A090: Set var_14C = Me.Txt
  loc_1B7A096: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B7A0B2: var_8A = 0
  loc_1B7A0C0: Me.Requery -1
  loc_1B7A0EA: Me.Find "SearchCode ='" & var_150.Text & "'", 0, 1
  loc_1B7A101: If (global_132 <> "FAST") Then
  loc_1B7A10F:   Me.Requery -1
  loc_1B7A114: End If
  loc_1B7A137: Call Proc_135_75_100601C(Proc_5_1_100EC1C("INI", Me, global_72), var_16C)
  loc_1B7A142: Call Proc_135_72_17E34F8(var_8A)
  loc_1B7A14C: Set var_88 = Nothing
  loc_1B7A154: Set var_12C = Nothing
  loc_1B7A157: Exit Sub
  loc_1B7A158: ' Referenced from: 1B752EC
  loc_1B7A15E: If (var_8A = &HFF) Then
  loc_1B7A167:   unk_55277D.RollbackTrans
  loc_1B7A16C: End If
  loc_1B7A16C: Proc_6_60_E63754(var_8A)
  loc_1B7A171: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA0E98
  'Data Table: 552758
  loc_EA0E20: On Error Goto loc_EA0E91
  loc_EA0E5A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0E80:   Call Proc_135_75_100601C(Proc_5_1_100EC1C("INI", Me))
  loc_EA0E8B:   Call Proc_135_72_17E34F8(global_72)
  loc_EA0E90: End If
  loc_EA0E90: Exit Sub
  loc_EA0E91: ' Referenced from: EA0E20
  loc_EA0E91: Proc_6_60_E63754()
  loc_EA0E96: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'F94848
  'Data Table: 552758
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_F8 As Integer
  Dim var_110 As String
  Dim unk_55277D As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Fields15
  Dim var_130 As Field20
  loc_F94700: On Error Goto loc_F94841
  loc_F9471A: If (Me.RecordCount <= 0) Then
  loc_F94738:   var_A8 = "No Records To Search."
  loc_F9473E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F9474E:   Exit Sub
  loc_F9474F: End If
  loc_F94756: var_10C = "Select  S.Docid as SearchCode,S.VNo as [No] ,S.VDate as [Date],s.RoomNo as TableNo " & "From (Sale1 S Left Join Voucher_Type V On S.VType= V.V_Type) "
  loc_F9476B: Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_F94777: var_B8 = " And V_Type='"
  loc_F9477C: var_108 = CVar(var_10C & "Left Join Depart H on S.RestCode = H.Code Where S.VDate=") & var_A8 & var_B8 
  loc_F94786: var_F8 = 0
  loc_F947A6: var_110 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_F947B6: unk_55277D.Execute var_110 & "'", var_124, -1
  loc_F947BE: var_128 = var_128.Fields
  loc_F947C6: var_F8 = var_12C.Item(var_12C)
  loc_F947CE: var_130 = var_130.Value
  loc_F94816: Proc_6_126_F1C850("1000,1000,1000", CStr(var_140 & var_140 & "' Order By S.docid"))
  loc_F94824: MemVar_1F95120 = Me
  loc_F9483B: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F94840: Exit Sub
  loc_F94841: ' Referenced from: F94700
  loc_F94841: Proc_6_60_E63754(var_108)
  loc_F94846: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'E0082C
  'Data Table: 552758
  loc_E00824: Call Proc_135_91_107F0F8()
  loc_E00829: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E6214C
  'Data Table: 552758
  Dim Me As Recordset15
  loc_E62107: If (global_132 <> "FAST") Then
  loc_E62115:   Me.Requery -1
  loc_E6211A: End If
  loc_E62125: If (global_132 <> "FAST") Then
  loc_E62133:   Me.Requery -1
  loc_E62138: End If
  loc_E62143: Me.Requery -1
  loc_E62148: Exit Sub
End Sub

Private Sub Command4_Click() 'E27100
  'Data Table: 552758
  Dim Me As Recordset15
  loc_E270D8: ' Referenced from: E270FC
  loc_E270EA: If Not(Me.EOF) Then
  loc_E270ED:   Call Command3_Click()
  loc_E270F2:   Call TopCtrl1_UnknownEvent_19()
  loc_E270F7:   Call TopCtrl1_UnknownEvent_17()
  loc_E270FC:   GoTo loc_E270D8
  loc_E270FF: End If
  loc_E270FF: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F11598
  'Data Table: 552758
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F114C0: Set var_A4 = Me.ListView
  loc_F1150A: Set var_BC = Me.Txt
  loc_F11510: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F11518: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F11544: Me.FrmList.Visible = False
  loc_F11574: Set var_9C = Me.Txt
  loc_F1157A: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F11582: var_A4.SetFocus
  loc_F11596: Exit Sub
End Sub

Private Sub Form_Load() '13E3B40
  'Data Table: 552758
  Dim var_9C As Variant
  Dim var_C4 As Variant
  Dim var_B4 As String
  Dim var_D4 As Variant
  Dim unk_552790 As Connection15
  Dim var_B0 As Variant
  Dim var_E8 As Variant
  Dim unk_55277D As Connection15
  Dim var_8C As Recordset15
  Dim var_AC As Variant
  Dim var_F4 As Variant
  Dim var_88 As Recordset15
  Dim var_13C As Variant
  Dim var_10C As Variant
  Dim var_E4 As Variant
  Dim Me As Recordset15
  loc_13E316C: On Error Goto loc_13E3B38
  loc_13E3179: Set var_B0 = Me.TopCtrl1
  loc_13E317F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_13E318D: Call 0.Method_arg_50 (var_B4)
  loc_13E3195: var_C4 = CVar(var_B4) 'String
  loc_13E319D: Set var_B0 = Me.TopCtrl1
  loc_13E31A3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000F(var_C4)
  loc_13E31AC: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_0()
  loc_13E31C5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B()
  loc_13E31EF: var_D4 = CVar(Replace(CStr(var_C4), "E", "*", 1, -1, 0)) 'String
  loc_13E31F7: Set var_E8 = Me.TopCtrl1
  loc_13E31FD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_D4)
  loc_13E323A: unk_552790.Execute "Select * from PrinterSetup where RestCode='" & global_56 & "'", var_C4, -1
  loc_13E324B: Set global_176 = Me.TopCtrl1
  loc_13E3268: If (MemVar_1F951AC = "Room Service") Then
  loc_13E3277:   Me.Command1.Visible = False
  loc_13E328A:   Set var_B0 = Me.Label1
  loc_13E3290:   Call 0.Method_Form_Load0 (4, var_E8)
  loc_13E3298:   var_E8.Visible = False
  loc_13E32AF:   Set var_B0 = Me.Label1
  loc_13E32B5:   Call 0.Method_Form_Load0 (5, var_E8)
  loc_13E32BD:   var_E8.Visible = False
  loc_13E32D4:   Set var_B0 = Me.Label1
  loc_13E32DA:   Call 0.Method_Form_Load0 (6, var_E8)
  loc_13E32E2:   var_E8.Visible = False
  loc_13E32F9:   Set var_B0 = Me.Txt
  loc_13E32FF:   Call 0.Method_Form_Load0 (6, var_E8)
  loc_13E3307:   var_E8.Visible = False
  loc_13E331E:   Set var_B0 = Me.Txt
  loc_13E3324:   Call 0.Method_Form_Load0 (7, var_E8)
  loc_13E332C:   var_E8.Visible = False
  loc_13E3343:   Set var_B0 = Me.Txt
  loc_13E3349:   Call 0.Method_Form_Load0 (8, var_E8)
  loc_13E3351:   var_E8.Visible = False
  loc_13E3369:   Me.Shape1.Visible = False
  loc_13E3371: End If
  loc_13E3377: If (MemVar_1F950B8 <> 1) Then
  loc_13E337E:   Set var_B0 = Me.TopCtrl1
  loc_13E3384:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_B0)
  loc_13E33AE:   var_D4 = CVar(Replace(CStr(var_C4), "D", "*", 1, -1, 0)) 'String
  loc_13E33B6:   Set var_E8 = Me.TopCtrl1
  loc_13E33BC:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_D4)
  loc_13E33D2: End If
  loc_13E33F9: unk_55277D.Execute "Select RateInclTax from depart where code='" & global_56 & "'", var_C4, -1
  loc_13E3404: Set var_8C = var_B0
  loc_13E3428: If (var_8C.RecordCount > 0) Then
  loc_13E3442:   var_E8 = var_8C.Fields.Item("RateInclTax")
  loc_13E344A:   var_C4 = CVar(var_E8) 'Address
  loc_13E345C:   global_120 = Proc_6_38_E69628(var_C4)
  loc_13E3468: End If
  loc_13E346D: Set var_8C = Nothing
  loc_13E3476: var_AC = 0
  loc_13E34A6: unk_55277D.Execute "Select KOtYn from depart where Code='" & global_56 & "'", var_C4, -1
  loc_13E34B6: var_AC = var_E8.Item(var_E8)
  loc_13E34BE: var_F4 = var_F4.Value
  loc_13E34CD: global_180 = CStr(var_D4)
  loc_13E3511: unk_55277D.Execute "Select ShortName,Code from Depart Where Code='" & global_56 & "'", var_C4, -1
  loc_13E351C: Set var_88 = var_B0.Fields
  loc_13E3540: If (var_88.RecordCount > 0) Then
  loc_13E3574:   global_196 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_13E3597:   var_B0 = var_88.Fields
  loc_13E359F:   var_E8 = var_B0.Item("Code")
  loc_13E35A7:   var_C4 = var_E8.Value
  loc_13E35B6:   global_200 = CStr(var_C4)
  loc_13E35C7: End If
  loc_13E35C7: Call Proc_135_82_114C6CC(var_B0, var_D4)
  loc_13E35D2: var_AC = 0
  loc_13E3602: unk_55277D.Execute "Select Name From Depart Where Code ='" & global_56 & "'", var_C4, -1
  loc_13E360A: var_B0 = var_B0.Fields
  loc_13E3612: var_AC = var_E8.Item(var_E8)
  loc_13E361A: var_F4 = var_F4.Value
  loc_13E3630: Me.LblRest.Caption = CStr(var_D4)
  loc_13E365A: Set global_72 = New 
  loc_13E366C: Me.Recordset15.CursorLocation = 3
  loc_13E3677: var_AC = 0
  loc_13E3697: var_B4 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_13E36A7: unk_55277D.Execute "Select Name From Depart Where Code ='" & global_56 & "'", var_C4, -1
  loc_13E36AF: var_B0 = var_B0.Fields
  loc_13E36B7: var_AC = var_E8.Item(var_E8)
  loc_13E36BF: var_F4 = var_F4.Value
  loc_13E36DB: var_10C = "Select S.DocId as SearchCode,S.DocID From Sale1 S LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE WHERE S.DELFLAG='N' AND S.VTYPE='"
  loc_13E3733: Me.Recordset15.CursorLocation = 3
  loc_13E374F: var_9C = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp From ((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode Where I.Type='Finish' And I.DispCode <>9999 Order by I.Name"
  loc_13E375B: r_10C & var_D4 & "' ORDER BY S.DOCID", CVar(MemVar_1F95044), 3 var_9C, CVar(MemVar_1F95044), 3
  loc_13E3769: CVarUnk
  loc_13E376E: VerifyVarObj
  loc_13E3774: Set var_B0 = Me.DGItem
  loc_13E377A: LateIdStAd
  loc_13E37AD: Call 0.Method_arg_50 ("Select Name From Depart Where Code ='" & global_56, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_C4, -1, var_B0, var_E8, 0, var_F4)
  loc_13E37D4: unk_55277D.Execute var_D4 & "Select Name From Depart Where Code ='" & global_56 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_B0, New
  loc_13E37DC: 1 = var_B0.Fields
  loc_13E37E4: 1 = var_E8.Item(-1)
  loc_13E37EC: -1 = var_F4.Value
  loc_13E3819: If (var_D4 > 0) Then
  loc_13E3854:   Call 0.Method_arg_50 ("Select Name From Depart Where Code ='" & global_56, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_C4, -1, var_B0, var_E8, 0)
  loc_13E387B:   unk_55277D.Execute var_F4 & "Select Name From Depart Where Code ='" & global_56 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_D4, "SearchCode='"
  loc_13E3883:   0 = var_B0.Fields
  loc_13E388B:   var_13C = var_E8.Item(1)
  loc_13E3893:    = var_F4.Value
  loc_13E38B2:   Me.Find CStr(var_D4 & "'"), , 
  loc_13E38DA: End If
  loc_13E38F1: If (Me.RecordCount > 0) Then
  loc_13E3908:   If (Me.EOF = &HFF) Then
  loc_13E3911:     Me.MoveLast
  loc_13E3916:   End If
  loc_13E3916: End If
  loc_13E391F: Call 0.Method_arg_160 (var_B0)
  loc_13E392D: Call 0.Method_arg_164 (var_B0)
  loc_13E3958: Call Proc_135_75_100601C(Proc_5_1_100EC1C("INI", Me))
  loc_13E397B: Proc_6_23_DFC5B8(Me, 7590)
  loc_13E398A: Call 0.Method_arg_64 (CLng(MemVar_1F951B0), 11940)
  loc_13E398F: Call Proc_135_66_13C1C78(global_72)
  loc_13E39B6: Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_13E3A0A: var_9C = CVar((CDbl(Me.FGrid.Left) + (CDbl(Me.FGrid.Width) - CDbl(Me.DGItem.Width)))) 'Single
  loc_13E3A19: Me.DGItem.Left = CVar(CDbl(Me.FGrid.Top))
  loc_13E3A54: Me.DGItem.Height = CVar(CDbl(Me.FGrid.Height))
  loc_13E3A85: Me.DGRest.Top = CVar(CDbl(Me.FGrid.Top))
  loc_13E3A9E: var_D4 = Me.FGrid.Width
  loc_13E3AB1: var_E4 = Me.DGRest.Width
  loc_13E3AD9: var_9C = CVar((CDbl(Me.FGrid.Left) + (CDbl(var_D4) - CDbl(var_E4)))) 'Single
  loc_13E3AE8: Me.DGRest.Left = CVar(CDbl(Me.FGrid.Top))
  loc_13E3B23: Me.DGRest.Height = CVar(CDbl(Me.FGrid.Height))
  loc_13E3B32: Call Proc_135_72_17E34F8(var_E4, var_D4)
  loc_13E3B37: Exit Sub
  loc_13E3B38: ' Referenced from: 13E316C
  loc_13E3B38: Proc_6_60_E63754(var_E4)
  loc_13E3B3D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7CE50
  'Data Table: 552758
  loc_E7CDF7: Set global_64 = Nothing
  loc_E7CE09: Set global_60 = Nothing
  loc_E7CE1B: Set global_76 = Nothing
  loc_E7CE27: global_52 = 0
  loc_E7CE35: Set global_64 = Nothing
  loc_E7CE47: Set global_176 = Nothing
  loc_E7CE4E: Exit Sub
End Sub

Private Sub Form_Activate() '1020568
  'Data Table: 552758
  Dim var_C8 As Integer
  Dim var_8C As String
  Dim unk_55277D As Connection15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_88 As Recordset15
  loc_1020374: var_C8 = 0
  loc_1020394: var_8C = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_10203A4: unk_55277D.Execute var_8C & "'", var_B0, -1
  loc_10203AC: var_B4 = var_B4.Fields
  loc_10203B4: var_C8 = var_B8.Item(var_B8)
  loc_10203BC: var_CC = var_CC.Value
  loc_10203C4: var_FC = var_DC & var_DC 
  loc_10203CD: var_11C = var_FC & "' Order by Description" 
  loc_10203DB: unk_55277D.Execute CStr(var_11C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_140
  loc_10203E6: Set var_88 = var_144
  loc_102041E: If (var_88.RecordCount > 0) Then
  loc_102043B:   var_B8 = var_88.Fields.Item(0)
  loc_1020452:   global_128 = CStr(var_B8.Value)
  loc_1020466: Else
  loc_1020479:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_102047F:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_102049C:   Me.Global.Unload Me
  loc_10204A4:   Exit Sub
  loc_10204A5: End If
  loc_10204AB: var_C8 = 0
  loc_10204DB: unk_55277D.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_128 & "'", var_B0, -1
  loc_10204E3: var_B4 = var_B4.Fields
  loc_10204EB: var_C8 = var_B8.Item(var_B8)
  loc_10204F3: var_CC = var_CC.Value
  loc_102051A: If (var_DC <= 0) Then
  loc_1020536:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_1020553:   Me.Global.Unload Me
  loc_102055B:   Exit Sub
  loc_102055C: End If
  loc_1020561: Set var_88 = Nothing
  loc_1020564: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E27154
  'Data Table: 552758
  loc_E27139: If (global_52 = &HFF) Then
  loc_E27149:   Me.Global.Unload Me
  loc_E27151: End If
  loc_E27151: Exit Sub
  loc_E27152: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E316E8
  'Data Table: 552758
  loc_E316BC: On Error Goto loc_E316E0
  loc_E316D7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E316DF: Exit Sub
  loc_E316E0: ' Referenced from: E316BC
  loc_E316E0: Proc_6_60_E63754(Shift)
  loc_E316E5: Exit Sub
End Sub

Private Sub Command1_Click() 'F9DB80
  'Data Table: 552758
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  Dim var_F0 As Double
  loc_F9DA4E: Set var_88 = Me.Txt
  loc_F9DA54: Call 0.Method_Command1_Click0 (CInt(3), var_8C)
  loc_F9DA6F: Set var_94 = Me.Txt
  loc_F9DA75: Call 0.Method_Command1_Click0 (CInt(2), var_98)
  loc_F9DA90: Set var_9C = Me.Txt
  loc_F9DA96: Call 0.Method_Command1_Click0 (CInt(3), var_A0)
  loc_F9DAAA: Set var_A4 = Me.TxtGt
  loc_F9DAB0: Call 0.Method_Command1_Click8 (var_A6)
  loc_F9DAC2: Set var_AC = Me.TxtGt
  loc_F9DAC8: Call 0.Method_Command1_Click0 (var_A6, var_B0)
  loc_F9DADD: var_F0 = Val(var_B0.Text)
  loc_F9DAE5: var_E8 = 0
  loc_F9DAF0: var_E4 = 0
  loc_F9DAFB: var_E0 = 0
  loc_F9DB50: Proc_6_131_FADE30(1, 5, global_128, var_8C.Tag, var_98.Text, 0, var_A0.Text, global_132)
  loc_F9DB7D: Exit Sub
End Sub

Private Sub Command3_Click() 'E03034
  'Data Table: 552758
  loc_E03028: Call TopCtrl1_UnknownEvent_12()
  loc_E0302D: Call Proc_135_92_1584F7C()
  loc_E03032: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ED11A4
  'Data Table: 552758
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED1106: Set var_88 = Me.TxtPer
  loc_ED110C: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ED111A: Proc_6_74_E23240(var_8C)
  loc_ED1126: Call Proc_135_76_EF78C8(var_8C)
  loc_ED113A: Set var_88 = Me.TxtPer
  loc_ED1140: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED1148: var_8C.SelStart = 0
  loc_ED1161: Set var_88 = Me.TxtPer
  loc_ED1167: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED1182: Set var_90 = Me.TxtPer
  loc_ED1188: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ED1190: var_98.SelLength = Len(var_8C.Text)
  loc_ED11A3: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5CA48
  'Data Table: 552758
  loc_E5CA15: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5CA1E:   Proc_6_75_E5335C(Shift)
  loc_E5CA23: End If
  loc_E5CA38: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5CA41:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5CA46: End If
  loc_E5CA46: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E58610
  'Data Table: 552758
  loc_E585E2: Set var_88 = Me.TxtPer
  loc_E585E8: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E58603: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E5860F: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E02A94
  'Data Table: 552758
  loc_E02A8E: Call Proc_135_84_165F774(KeyCode)
  loc_E02A93: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4E094
  'Data Table: 552758
  loc_E4E072: Set var_88 = Me.TxtPer
  loc_E4E078: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4E086: Proc_6_73_E23294(var_8C)
  loc_E4E092: Exit Sub
End Sub

Private Sub Command2_Click() 'E1DF60
  'Data Table: 552758
  loc_E1DF44: Call TopCtrl1_UnknownEvent_1C()
  loc_E1DF4D: Set var_88 = Me.FGrid
  loc_E1DF5E: Exit Sub
End Sub

Public Function global_52Get() '5544DC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '5544EB
  global_52 = Value
End Sub

Public Function global_56Get() '5544FA
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '554509
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E6E5E0
  'Data Table: 552758
  Dim Me As Recordset15
  loc_E6E58A: Me.MoveFirst
  loc_E6E5B4: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E6E5D4: If (Me.EOF = 0) Then
  loc_E6E5D7:   Call Proc_135_72_17E34F8(var_9C)
  loc_E6E5DC: End If
  loc_E6E5DC: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E97B50
  'Data Table: 552758
  Dim Me As Recordset15
  loc_E97ADE: On Error Goto loc_E97B47
  loc_E97AE7: Me.MoveFirst
  loc_E97B11: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97B39: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E97B41: Call Proc_135_72_17E34F8(0)
  loc_E97B46: Exit Sub
  loc_E97B47: ' Referenced from: E97ADE
  loc_E97B47: Proc_6_60_E63754(var_A0)
  loc_E97B4C: Exit Sub
End Sub

Public Sub Proc_135_66_13C1C78
  'Data Table: 552758
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_13C1302: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_13C131D: Me.FGrid.Top = CVar(CDbl(1200))
  loc_13C1338: Me.FGrid.Height = CVar(CDbl(5500))
  loc_13C1353: Me.FGrid.Width = CVar(CDbl(8150))
  loc_13C136E: Me.DGItem.Left = CVar(CDbl(3000))
  loc_13C1389: Me.DGItem.Top = CVar(CDbl(1000))
  loc_13C139F: Set var_A8 = Me.Txt
  loc_13C13A5: Call 0.Method_Proc_135_66_13C1C780 (CInt(3), var_AC)
  loc_13C13C4: Me.DGTable.Left = CVar(var_AC.Left)
  loc_13C13E0: Set var_B4 = Me.Txt
  loc_13C13E6: Call 0.Method_Proc_135_66_13C1C780 (CInt(3), var_B8)
  loc_13C1401: Set var_A8 = Me.Txt
  loc_13C1407: Call 0.Method_Proc_135_66_13C1C780 (CInt(3), var_AC)
  loc_13C141F: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13C142E: Me.DGTable.Top = CVar(var_AC.Left)
  loc_13C1453: Me.DGRest.Left = CVar(CDbl(3000))
  loc_13C146E: Me.DGRest.Top = CVar(CDbl(1000))
  loc_13C147A: Set var_C4 = Me.FGrid
  loc_13C1491: global_96 = CStr(CLng(var_C4.BackColor))
  loc_13C14A7: var_C4.Cols = &H1C
  loc_13C14AF: var_94 = CVar(CLng(0)) 'Long
  loc_13C14B4: var_E8 = &HFA
  loc_13C14C0: LateIdCallSt
  loc_13C14C8: var_94 = 0
  loc_13C14D4: var_E8 = CVar(CLng(&HC)) 'Long
  loc_13C14D9: var_108 = "KSNo"
  loc_13C14E2: LateIdCallSt
  loc_13C14ED: var_94 = CVar(CLng(&HC)) 'Long
  loc_13C14F2: var_E8 = 0
  loc_13C14FE: LateIdCallSt
  loc_13C1506: var_94 = 0
  loc_13C1512: var_E8 = CVar(CLng(1)) 'Long
  loc_13C1517: var_108 = "Rest"
  loc_13C1520: LateIdCallSt
  loc_13C152B: var_94 = CVar(CLng(1)) 'Long
  loc_13C1536: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C153D: LateIdCallSt
  loc_13C1548: var_94 = CVar(CLng(1)) 'Long
  loc_13C154D: var_E8 = 0
  loc_13C1559: LateIdCallSt
  loc_13C1561: var_94 = 0
  loc_13C156D: var_E8 = CVar(CLng(2)) 'Long
  loc_13C1572: var_108 = "Rest."
  loc_13C157B: LateIdCallSt
  loc_13C1586: var_94 = CVar(CLng(2)) 'Long
  loc_13C1591: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C1598: LateIdCallSt
  loc_13C15A3: var_94 = CVar(CLng(2)) 'Long
  loc_13C15A8: var_E8 = &H258
  loc_13C15B4: LateIdCallSt
  loc_13C15BC: var_94 = 0
  loc_13C15C8: var_E8 = CVar(CLng(3)) 'Long
  loc_13C15CD: var_108 = "Item Code"
  loc_13C15D6: LateIdCallSt
  loc_13C15E1: var_94 = CVar(CLng(3)) 'Long
  loc_13C15EC: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C15F3: LateIdCallSt
  loc_13C15FE: var_94 = CVar(CLng(3)) 'Long
  loc_13C1603: var_E8 = &H258
  loc_13C160F: LateIdCallSt
  loc_13C1617: var_94 = 0
  loc_13C1623: var_E8 = CVar(CLng(4)) 'Long
  loc_13C1628: var_108 = "Item Name"
  loc_13C1631: LateIdCallSt
  loc_13C163C: var_94 = CVar(CLng(4)) 'Long
  loc_13C1647: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C164E: LateIdCallSt
  loc_13C1659: var_94 = CVar(CLng(4)) 'Long
  loc_13C165E: var_E8 = &H8FC
  loc_13C166A: LateIdCallSt
  loc_13C1672: var_94 = 0
  loc_13C167E: var_E8 = CVar(CLng(5)) 'Long
  loc_13C1683: var_108 = "KOT No."
  loc_13C168C: LateIdCallSt
  loc_13C1697: var_94 = CVar(CLng(5)) 'Long
  loc_13C16A2: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C16A9: LateIdCallSt
  loc_13C16B4: var_94 = CVar(CLng(5)) 'Long
  loc_13C16BF: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C16C6: LateIdCallSt
  loc_13C16D1: var_94 = CVar(CLng(5)) 'Long
  loc_13C16D6: var_E8 = &H320
  loc_13C16E2: LateIdCallSt
  loc_13C16EA: var_94 = 0
  loc_13C16F6: var_E8 = CVar(CLng(6)) 'Long
  loc_13C16FB: var_108 = "Unit"
  loc_13C1704: LateIdCallSt
  loc_13C170F: var_94 = CVar(CLng(6)) 'Long
  loc_13C171A: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C1721: LateIdCallSt
  loc_13C172C: var_94 = CVar(CLng(6)) 'Long
  loc_13C1731: var_E8 = &H258
  loc_13C173D: LateIdCallSt
  loc_13C1745: var_94 = 0
  loc_13C1751: var_E8 = CVar(CLng(7)) 'Long
  loc_13C1756: var_108 = "Qty"
  loc_13C175F: LateIdCallSt
  loc_13C176A: var_94 = CVar(CLng(7)) 'Long
  loc_13C1775: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C177C: LateIdCallSt
  loc_13C1787: var_94 = CVar(CLng(7)) 'Long
  loc_13C1792: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C1799: LateIdCallSt
  loc_13C17A4: var_94 = CVar(CLng(7)) 'Long
  loc_13C17A9: var_E8 = &H320
  loc_13C17B5: LateIdCallSt
  loc_13C17BD: var_94 = 0
  loc_13C17C9: var_E8 = CVar(CLng(8)) 'Long
  loc_13C17CE: var_108 = "Rate"
  loc_13C17D7: LateIdCallSt
  loc_13C17E2: var_94 = CVar(CLng(8)) 'Long
  loc_13C17ED: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C17F4: LateIdCallSt
  loc_13C17FF: var_94 = CVar(CLng(8)) 'Long
  loc_13C180A: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C1811: LateIdCallSt
  loc_13C181C: var_94 = CVar(CLng(8)) 'Long
  loc_13C1821: var_E8 = &H320
  loc_13C182D: LateIdCallSt
  loc_13C1835: var_94 = 0
  loc_13C1841: var_E8 = CVar(CLng(9)) 'Long
  loc_13C1846: var_108 = "Rate1"
  loc_13C184F: LateIdCallSt
  loc_13C185A: var_94 = CVar(CLng(9)) 'Long
  loc_13C1865: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C186C: LateIdCallSt
  loc_13C1877: var_94 = CVar(CLng(9)) 'Long
  loc_13C1882: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C1889: LateIdCallSt
  loc_13C1894: var_94 = CVar(CLng(9)) 'Long
  loc_13C1899: var_E8 = 0
  loc_13C18A5: LateIdCallSt
  loc_13C18AD: var_94 = 0
  loc_13C18B9: var_E8 = CVar(CLng(&HA)) 'Long
  loc_13C18BE: var_108 = "Amount"
  loc_13C18C7: LateIdCallSt
  loc_13C18D2: var_94 = CVar(CLng(&HA)) 'Long
  loc_13C18DD: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C18E4: LateIdCallSt
  loc_13C18EF: var_94 = CVar(CLng(&HA)) 'Long
  loc_13C18FA: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C1901: LateIdCallSt
  loc_13C190C: var_94 = CVar(CLng(&HA)) 'Long
  loc_13C1911: var_E8 = &H3E8
  loc_13C191D: LateIdCallSt
  loc_13C1928: var_94 = CVar(CLng(&HD)) 'Long
  loc_13C192D: var_E8 = 0
  loc_13C1939: LateIdCallSt
  loc_13C1944: var_94 = CVar(CLng(&HB)) 'Long
  loc_13C1949: var_E8 = 0
  loc_13C1955: LateIdCallSt
  loc_13C1960: var_94 = CVar(CLng(&HE)) 'Long
  loc_13C1965: var_E8 = 0
  loc_13C1971: LateIdCallSt
  loc_13C197C: var_94 = CVar(CLng(&HF)) 'Long
  loc_13C1981: var_E8 = 0
  loc_13C198D: LateIdCallSt
  loc_13C1998: var_94 = CVar(CLng(&H10)) 'Long
  loc_13C199D: var_E8 = 0
  loc_13C19A9: LateIdCallSt
  loc_13C19B4: var_94 = CVar(CLng(&H11)) 'Long
  loc_13C19B9: var_E8 = 0
  loc_13C19C5: LateIdCallSt
  loc_13C19D0: var_94 = CVar(CLng(&H12)) 'Long
  loc_13C19D5: var_E8 = 0
  loc_13C19E1: LateIdCallSt
  loc_13C19EC: var_94 = CVar(CLng(&H14)) 'Long
  loc_13C19F1: var_E8 = 0
  loc_13C19FD: LateIdCallSt
  loc_13C1A08: var_94 = CVar(CLng(&H13)) 'Long
  loc_13C1A0D: var_E8 = 0
  loc_13C1A19: LateIdCallSt
  loc_13C1A24: var_94 = CVar(CLng(&H18)) 'Long
  loc_13C1A29: var_E8 = 0
  loc_13C1A35: LateIdCallSt
  loc_13C1A40: var_94 = CVar(CLng(&H19)) 'Long
  loc_13C1A45: var_E8 = 0
  loc_13C1A51: LateIdCallSt
  loc_13C1A5C: var_94 = CVar(CLng(&H1A)) 'Long
  loc_13C1A61: var_E8 = 0
  loc_13C1A6D: LateIdCallSt
  loc_13C1A75: var_94 = 0
  loc_13C1A81: var_E8 = CVar(CLng(&HB)) 'Long
  loc_13C1A86: var_108 = "Item Code"
  loc_13C1A8F: LateIdCallSt
  loc_13C1A97: var_94 = 0
  loc_13C1AA3: var_E8 = CVar(CLng(&HE)) 'Long
  loc_13C1AA8: var_108 = "Disc %"
  loc_13C1AB1: LateIdCallSt
  loc_13C1AB9: var_94 = 0
  loc_13C1AC5: var_E8 = CVar(CLng(&HF)) 'Long
  loc_13C1ACA: var_108 = "Disc Amt."
  loc_13C1AD3: LateIdCallSt
  loc_13C1ADB: var_94 = 0
  loc_13C1AE7: var_E8 = CVar(CLng(&H10)) 'Long
  loc_13C1AEC: var_108 = "Tax %"
  loc_13C1AF5: LateIdCallSt
  loc_13C1AFD: var_94 = 0
  loc_13C1B09: var_E8 = CVar(CLng(&H11)) 'Long
  loc_13C1B0E: var_108 = "Tax Amt"
  loc_13C1B17: LateIdCallSt
  loc_13C1B1F: var_94 = 0
  loc_13C1B2B: var_E8 = CVar(CLng(&H12)) 'Long
  loc_13C1B30: var_108 = "Total"
  loc_13C1B39: LateIdCallSt
  loc_13C1B41: var_94 = 0
  loc_13C1B4D: var_E8 = CVar(CLng(&H14)) 'Long
  loc_13C1B52: var_108 = "R Off"
  loc_13C1B5B: LateIdCallSt
  loc_13C1B63: var_94 = 0
  loc_13C1B6F: var_E8 = CVar(CLng(&H13)) 'Long
  loc_13C1B74: var_108 = "Disc Y/N"
  loc_13C1B7D: LateIdCallSt
  loc_13C1B85: var_94 = 0
  loc_13C1B91: var_E8 = CVar(CLng(&H18)) 'Long
  loc_13C1B96: var_108 = "Tax Cat Code"
  loc_13C1B9F: LateIdCallSt
  loc_13C1BAA: var_94 = CVar(CLng(&H15)) 'Long
  loc_13C1BAF: var_E8 = 0
  loc_13C1BBB: LateIdCallSt
  loc_13C1BC6: var_94 = CVar(CLng(&H16)) 'Long
  loc_13C1BCB: var_E8 = 0
  loc_13C1BD7: LateIdCallSt
  loc_13C1BE2: var_94 = CVar(CLng(&H17)) 'Long
  loc_13C1BE7: var_E8 = 0
  loc_13C1BF3: LateIdCallSt
  loc_13C1BFE: var_94 = CVar(CLng(&H1B)) 'Long
  loc_13C1C03: var_E8 = 0
  loc_13C1C0F: LateIdCallSt
  loc_13C1C19: Set var_C4 = Nothing 
  loc_13C1C21: Set var_11C = Me.FGCat
  loc_13C1C38: global_96 = CStr(CLng(var_11C.BackColor))
  loc_13C1C45: var_94 = CVar(CLng(3)) 'Long
  loc_13C1C4A: var_E8 = &H7D0
  loc_13C1C56: LateIdCallSt
  loc_13C1C6A: var_11C.Cols = 8
  loc_13C1C71: Set var_11C = Nothing 
  loc_13C1C75: Exit Sub
End Sub

Public Sub Proc_135_67_15EEC0C
  'Data Table: 552758
  Dim Me As Recordset15
  Dim var_F4 As Fields15
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim unk_55277D As Connection15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_170 As Variant
  Dim var_2D8 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_290 As Variant
  Dim var_2B0 As Variant
  Dim var_300 As Variant
  Dim var_310 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2E8 As Variant
  Dim var_1E0 As Variant
  Dim var_2A0 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_434 As Variant
  Dim var_108 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_15ED91C: On Error Goto loc_15EEC05
  loc_15ED92B: Me.Filter = "ModType='POS'"
  loc_15ED947: If (Me.RecordCount > 0) Then
  loc_15ED94D:   MemVar_1F953C4 = "N"
  loc_15ED954:   MemVar_1F953C8 = "N"
  loc_15ED95B:   MemVar_1F953CC = "K"
  loc_15ED991:   var_128 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_15ED99F:   var_8C = CStr(var_128 & "'")
  loc_15ED9B9:   var_128 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.REstCODE=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_15EDA2C:   var_1A0 = var_128 & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) " 
  loc_15EDA31:   var_90 = CStr(var_1A0)
  loc_15EDA6F:   var_F4 = Me.Fields
  loc_15EDA7F:   var_108 = var_F4.Item("SearchCode").Value
  loc_15EDA87:   var_148 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_108 
  loc_15EDA95:   var_94 = CStr(var_148 & "' order by sno ")
  loc_15EDAB2:   If (var_8C = vbNullString) Then
  loc_15EDAB5:     Exit Sub
  loc_15EDAB6:   End If
  loc_15EDABE:   If (var_90 = vbNullString) Then
  loc_15EDAC1:     Exit Sub
  loc_15EDAC2:   End If
  loc_15EDACA:   If (var_94 = vbNullString) Then
  loc_15EDACD:     Exit Sub
  loc_15EDACE:   End If
  loc_15EDAE4:   unk_55277D.Execute var_8C, var_108, -1
  loc_15EDAEF:   Set var_BC = var_F4
  loc_15EDB0E:   unk_55277D.Execute var_90, var_108, -1
  loc_15EDB19:   Set var_C0 = var_F4
  loc_15EDB38:   unk_55277D.Execute var_94, var_108, -1
  loc_15EDB43:   Set var_C4 = var_F4
  loc_15EDB4E:   var_AE = 7
  loc_15EDB53:   Close 1
  loc_15EDB5C:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_15EDB60:   ' Referenced from: 15EEA97
  loc_15EDB6F:   If Not(var_BC.EOF) Then
  loc_15EDB74:     var_9A = 0
  loc_15EDB79:     var_9C = 1
  loc_15EDB93:     If ((global_192 = "Restaurant") Or (global_192 = "Hall")) Then
  loc_15EDBA4:       var_98 = "** " & "BILL" & " **"
  loc_15EDBAD:     Else
  loc_15EDBBE:       var_98 = "** " & global_192 & " **"
  loc_15EDBC4:     End If
  loc_15EDBCA:     If (var_9A = 0) Then
  loc_15EDBFB:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_15EDC32:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_15EDC6E:       Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("VNo")), var_9C, var_9A)
  loc_15EDC91:       var_170 = (Space(8) + CVar(Proc_6_45_EADFB8(CStr(var_148), &HA, var_AE)))
  loc_15EDC97:       Print 1, Me.Fields.Item("SearchCode").Value
  loc_15EDCB6:       Print 1
  loc_15EDCD8:       var_F4 = var_BC.Fields
  loc_15EDE1F:       Proc_6_39_E7D3A0(var_2E8, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_15EDE40:       var_148 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_F4.Item("VDate")), var_F4), &H12)) 'String
  loc_15EDE43:       var_158 = (Space(6) + var_148)
  loc_15EDE4A:       var_180 = (CVar(Proc_6_45_EADFB8(CStr(var_148), &HA, var_AE)) + Space(4))
  loc_15EDE54:       var_1D0 = (CVar(var_F4.Item("VDate")) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME")), var_F4), &HA)))
  loc_15EDE5B:       var_1F0 = (var_1D0 + Space(6))
  loc_15EDE65:       var_230 = (var_1F0 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_15EDE6C:       var_250 = (var_230 + Space(4))
  loc_15EDE76:       var_290 = (var_250 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_15EDE7D:       var_2B0 = (var_290 + Space(6))
  loc_15EDE87:       var_310 = (var_2B0 + CVar(Proc_6_45_EADFB8(CStr(var_2E8), 7)))
  loc_15EDE8D:       Print 1, var_310
  loc_15EDEFB:       Print 1, vbNullString
  loc_15EDF06:       Print 1, vbNullString
  loc_15EDF0E:       var_9A = 5
  loc_15EDF11:     End If
  loc_15EDF13:     var_B6 = 1
  loc_15EDF2A:     If (var_C0.RecordCount > 0) Then
  loc_15EDF30:       var_C0.MoveFirst
  loc_15EDF35:       ' Referenced from: 15EE695
  loc_15EDF35:     End If
  loc_15EDF44:     If Not(var_C0.EOF) Then
  loc_15EDF4D:       If (var_9A = 0) Then
  loc_15EDF7E:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_15EDFB5:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_15EDFF1:         Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_15EE014:         var_170 = (Space(8) + CVar(Proc_6_45_EADFB8(CStr(var_148), &HA)))
  loc_15EE01A:         Print 1, Space(4)
  loc_15EE039:         Print 1
  loc_15EE1A2:         Proc_6_39_E7D3A0(var_2E8, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_15EE1C6:         var_158 = (Space(6) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_15EE1CD:         var_180 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12))), &HA)) + Space(4))
  loc_15EE1D7:         var_1D0 = (CVar(var_BC.Fields.Item("VDate")) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_15EE1DE:         var_1F0 = (var_1D0 + Space(6))
  loc_15EE1E8:         var_230 = (var_1F0 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_15EE1EF:         var_250 = (var_230 + Space(4))
  loc_15EE1F9:         var_290 = (var_250 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_15EE200:         var_2B0 = (var_290 + Space(6))
  loc_15EE207:         var_300 = CVar(Proc_6_45_EADFB8(CStr(var_2E8), 7)) 'String
  loc_15EE20A:         var_310 = (var_2B0 + var_300)
  loc_15EE210:         Print 1, var_310
  loc_15EE27E:         Print 1, vbNullString
  loc_15EE289:         Print 1, vbNullString
  loc_15EE291:         var_9A = 5
  loc_15EE294:       End If
  loc_15EE333:       Proc_6_39_E7D3A0(var_250, CVar(var_C0.Fields.Item("qty")))
  loc_15EE37E:       Proc_6_39_E7D3A0(var_300, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_15EE3C9:       Proc_6_39_E7D3A0(var_3E0, CVar(var_C0.Fields.Item("Amt")), 1)
  loc_15EE414:       var_148 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) + Space(4))
  loc_15EE42A:       var_170 = CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("KOTNo").Value), 5, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_15EE42D:       var_180 = (1 + var_170)
  loc_15EE441:       var_1C0 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + Space(2))
  loc_15EE456:       var_1E0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("ICODE")), var_9A), 7, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_15EE459:       var_1F0 = (1 + var_1E0)
  loc_15EE472:       var_230 = (var_1F0 + CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ItemName").Value), &H1E)))
  loc_15EE48B:       var_2A0 = (var_230 + CVar(Proc_6_52_EAE084(CStr(Format(var_250, "0")), 4)))
  loc_15EE49F:       var_2D8 = (Space(6) + Space(3))
  loc_15EE4B8:       var_388 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAE084(CStr(Format(var_300, "0.00")), 7)))
  loc_15EE4CC:       var_3A8 = (var_388 + Space(1))
  loc_15EE4E5:       var_434 = (var_3A8 + CVar(Proc_6_52_EAE084(CStr(Format(var_3E0, "0.00")), &HB)))
  loc_15EE563:       Print 1, CStr(var_434)
  loc_15EE56F:       var_9A = (var_9A + 1)
  loc_15EE57C:       If (var_9A = (&H1A - var_AE)) Then
  loc_15EE593:         If (var_C0.RecordCount = &HE) Then
  loc_15EE59B:           Print 1, vbNullString
  loc_15EE5A7:           var_9A = (var_9A + 1)
  loc_15EE5AD:         Else
  loc_15EE5B3:           var_9C = (var_9C + 1)
  loc_15EE5BB:           Print 1, vbNullString
  loc_15EE5C7:           var_9A = (var_9A + 1)
  loc_15EE5DF:           var_128 = (Space(&H3E) + "Contd. Page ")
  loc_15EE5FA:           Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) & CVar(CStr(var_9C)) & "..."
  loc_15EE613:           var_9A = (var_9A + 1)
  loc_15EE616:           ' Referenced from:   15EE633
  loc_15EE61C:           If (var_9A <> &H24) Then
  loc_15EE624:             Print 1, vbNullString
  loc_15EE630:             var_9A = (var_9A + 1)
  loc_15EE633:             GoTo loc_15EE616
  loc_15EE636:           End If
  loc_15EE638:           var_9A = 0
  loc_15EE63B:         End If
  loc_15EE668:         Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A, var_9A, var_9A)
  loc_15EE670:         var_148 = (var_9A + CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)))
  loc_15EE675:         var_CC = CSng(CVar(CStr(var_9C)))
  loc_15EE68A:         var_B6 = (var_B6 + 1)
  loc_15EE690:         var_C0.MoveNext
  loc_15EE695:         GoTo loc_15EDF35
  loc_15EE698:       End If
  loc_15EE698:     End If
  loc_15EE6A2:     If (var_9A < (&H1A - var_AE)) Then
  loc_15EE6A5:       ' Referenced from: 15EE6C9
  loc_15EE6B2:       If (var_9A <> ((&H1A - var_AE) + 1)) Then
  loc_15EE6BA:         Print 1, vbNullString
  loc_15EE6C6:         var_9A = (var_9A + 1)
  loc_15EE6C9:         GoTo loc_15EE6A5
  loc_15EE6CC:       End If
  loc_15EE6CC:     End If
  loc_15EE6CF:     var_C4.MoveFirst
  loc_15EE6D4:     ' Referenced from: 15EEA8C
  loc_15EE6E3:     If Not(var_C4.EOF) Then
  loc_15EE710:       var_444 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_15EE72E:       If (var_444 = CVar(MemVar_1F95070 & "ROFF")) Then
  loc_15EE731:         GoTo loc_15EEA84
  loc_15EE734:       End If
  loc_15EE747:       If (var_444 = CVar(MemVar_1F95070 & "NET")) Then
  loc_15EE74F:         Print 1, vbNullString
  loc_15EE77B:         Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)), CVar(var_C4.Fields.Item("Amount")), var_9A, var_B6, var_CC)
  loc_15EE795:         If (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) > 0) Then
  loc_15EE7CB:           Proc_6_39_E7D3A0(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")), var_9C)
  loc_15EE80E:           var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1, 1)))
  loc_15EE814:           Print 1, Space(2)
  loc_15EE835:         End If
  loc_15EE838:       Else
  loc_15EE84B:         If (var_444 = CVar(MemVar_1F95070 & "SCH")) Then
  loc_15EE881:           Proc_6_39_E7D3A0(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")), var_9A)
  loc_15EE8C4:           var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1)))
  loc_15EE8CA:           Print 1, Space(2)
  loc_15EE8EE:         Else
  loc_15EE901:           If (var_444 = CVar(MemVar_1F95070 & "ST")) Then
  loc_15EE930:             var_128 = CVar(var_C4.Fields.Item("Amount")) 'Address
  loc_15EE937:             Proc_6_39_E7D3A0(CVar(CStr(var_9C)), var_128, 1)
  loc_15EE97A:             var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1)))
  loc_15EE980:             Print 1, Space(2)
  loc_15EE9A4:           Else
  loc_15EE9CA:             Proc_6_39_E7D3A0(var_128, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_15EE9E4:             If (var_128 > 0) Then
  loc_15EEA1A:               Proc_6_39_E7D3A0(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")))
  loc_15EEA2E:               var_158 = "0.00"
  loc_15EEA5D:               var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(var_9C)), var_158)), &H12, 1)))
  loc_15EEA63:               Print 1, Space(2)
  loc_15EEA84:             End If
  loc_15EEA84:           End If
  loc_15EEA84:         End If
  loc_15EEA84:         ' Referenced from: 15EE731
  loc_15EEA84:       End If
  loc_15EEA87:       var_C4.MoveNext
  loc_15EEA8C:       GoTo loc_15EE6D4
  loc_15EEA8F:     End If
  loc_15EEA92:     var_BC.MoveNext
  loc_15EEA97:     GoTo loc_15EDB60
  loc_15EEA9A:   End If
  loc_15EEA9F:   Print 1, vbNullString
  loc_15EEAAA:   Print 1, vbNullString
  loc_15EEAB5:   Print 1, vbNullString
  loc_15EEAC0:   Print 1, vbNullString
  loc_15EEACB:   Print 1, vbNullString
  loc_15EEAD6:   Print 1, vbNullString
  loc_15EEAE1:   Print 1, vbNullString
  loc_15EEAEC:   Print 1, vbNullString
  loc_15EEAF7:   Print 1, vbNullString
  loc_15EEB02:   Print 1, vbNullString
  loc_15EEB0D:   Print 1, vbNullString
  loc_15EEB15:   Close 1
  loc_15EEB1E:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_15EEB54:   var_128 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_15EEB5A:   Print 1, var_128
  loc_15EEB70:   Close 1
  loc_15EEB7A:   If (MemVar_1F953BC = "Y") Then
  loc_15EEB96:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_15EEBA0:   Else
  loc_15EEBB9:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_15EEBC0:   End If
  loc_15EEBC5:   Set var_BC = Nothing
  loc_15EEBCD:   Set var_C0 = Nothing
  loc_15EEBD5:   Set var_C4 = Nothing
  loc_15EEBDB: Else
  loc_15EEBF4:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_128, CVar(CStr(var_9C)), var_158)
  loc_15EEC04: End If
  loc_15EEC04: Exit Sub
  loc_15EEC05: ' Referenced from: 15ED91C
  loc_15EEC05: Proc_6_60_E63754(1, var_9A)
  loc_15EEC0A: Exit Sub
End Sub

Public Sub Proc_135_68_169A75C
  'Data Table: 552758
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim unk_55277D As Connection15
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_164 As String
  Dim var_174 As Variant
  Dim var_18C As Variant
  Dim var_1E4 As Variant
  Dim var_26C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_19C As Variant
  Dim var_214 As Variant
  Dim var_2B8 As Variant
  Dim var_2DC As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_384 As Variant
  Dim var_3A4 As Variant
  Dim var_42C As Variant
  Dim var_108 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_1698FA4: On Error Goto loc_169A756
  loc_1698FB3: Me.Filter = "ModType='POS'"
  loc_1698FCF: If (Me.RecordCount > 0) Then
  loc_1698FD5:   MemVar_1F953C4 = "N"
  loc_1698FDC:   MemVar_1F953C8 = "N"
  loc_1698FE3:   MemVar_1F953CC = "K"
  loc_1699019:   var_128 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_1699027:   var_8C = CStr(var_128 & "'")
  loc_1699041:   var_128 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCODE=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_169907F:   var_90 = CStr(var_128 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_16990B3:   var_F4 = Me.Fields
  loc_16990C3:   var_108 = var_F4.Item("SearchCode").Value
  loc_16990D4:   var_158 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_108 & "' order by sno " 
  loc_16990D9:   var_94 = CStr(var_158)
  loc_16990F6:   If (var_8C = vbNullString) Then
  loc_16990F9:     Exit Sub
  loc_16990FA:   End If
  loc_1699102:   If (var_90 = vbNullString) Then
  loc_1699105:     Exit Sub
  loc_1699106:   End If
  loc_169910E:   If (var_94 = vbNullString) Then
  loc_1699111:     Exit Sub
  loc_1699112:   End If
  loc_1699128:   unk_55277D.Execute var_8C, var_108, -1
  loc_1699133:   Set var_BC = var_F4
  loc_1699152:   unk_55277D.Execute var_90, var_108, -1
  loc_169915D:   Set var_C0 = var_F4
  loc_169917C:   unk_55277D.Execute var_94, var_108, -1
  loc_1699187:   Set var_C4 = var_F4
  loc_1699192:   Close 1
  loc_169919B:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_169919F:   ' Referenced from: 169A661
  loc_16991AE:   If Not(var_BC.EOF) Then
  loc_16991B3:     var_9A = 0
  loc_16991B8:     var_9C = 1
  loc_16991D2:     If ((global_192 = "Restaurant") Or (global_192 = "Hall")) Then
  loc_16991E3:       var_98 = "** " & "BILL" & " **"
  loc_16991EC:     Else
  loc_16991F6:       Set var_F4 = Me.LblRest
  loc_169920C:       var_98 = "** " & var_F4.Caption & " **"
  loc_1699219:     End If
  loc_169921F:     If (var_9A = 0) Then
  loc_1699269:       var_148 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(MemVar_1F95148, var_9C, var_9A), &H1E, var_F4)))
  loc_1699270:       var_174 = (CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&HF) + Chr(&H12))
  loc_1699276:       Print 1, var_174
  loc_16992AC:       var_164 = Proc_6_38_E69628(MemVar_1F9514C, var_F4)
  loc_16992D9:       var_148 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_164, &H1E)))
  loc_16992E0:       var_174 = (CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&HF) + Chr(&H12))
  loc_16992E6:       Print 1, var_174
  loc_1699316:       Call Proc_135_86_10AB89C(var_98, "D", &H3C)
  loc_1699320:       Print 1, var_164
  loc_169932F:       Print 1
  loc_1699363:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_169939A:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_16993B1:       Call Proc_135_87_1270820(var_9C, var_9A, &H3C)
  loc_16993E3:       var_164 = Proc_6_38_E69628(MemVar_1F95140, var_17A, var_17A)
  loc_1699400:       var_148 = (Chr(&H11) + Space(&H14))
  loc_1699409:       var_158 = (CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&H11) + "PHONE NO.")
  loc_1699413:       var_18C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_164, &H1E)))
  loc_1699419:       Print 1, var_18C
  loc_169943E:       Print 1
  loc_1699446:       Print 1
  loc_169947F:       Proc_6_39_E7D3A0(Chr(&H12), CVar(var_BC.Fields.Item("VNo")), &H12)
  loc_1699539:       var_128 = (Chr(&HF) + "Bill No.   : ")
  loc_1699543:       var_18C = (Space(&H14) + CVar(Proc_6_45_EADFB8(CStr(Chr(&H12)), &HA)))
  loc_169954A:       var_1AC = (var_18C + Space(4))
  loc_1699553:       var_1BC = (var_1AC + "Dt : ")
  loc_169955D:       var_204 = (var_1BC + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_164), &HF)))
  loc_1699564:       var_224 = (var_204 + Space(4))
  loc_169956D:       var_244 = (var_224 + "Time : ")
  loc_1699577:       var_290 = (var_244 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_169957D:       Print 1, var_290
  loc_16995D1:       If (global_192 = "Outlet") Then
  loc_1699628:         var_128 = (Chr(&HF) + "Table No.  : ")
  loc_1699632:         var_174 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_1699638:         Print 1, CVar(Proc_6_45_EADFB8(CStr(Chr(&H12)), &HA))
  loc_1699657:       End If
  loc_1699662:       If (global_192 = "Room Service") Then
  loc_16996B9:         var_128 = (Chr(&HF) + "Room No.   : ")
  loc_16996C3:         var_174 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_16996C9:         Print 1, CVar(Proc_6_45_EADFB8(CStr(Chr(&H12)), &HA))
  loc_16996E8:       End If
  loc_16996F3:       If (global_192 = "Hall") Then
  loc_169974A:         var_128 = (Chr(&HF) + "Hall  No.  : ")
  loc_1699754:         var_174 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_169975A:         Print 1, CVar(Proc_6_45_EADFB8(CStr(Chr(&H12)), &HA))
  loc_1699779:       End If
  loc_16997F9:       If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_1699850:         var_128 = (Chr(&HF) + "KOT No.    : ")
  loc_169985A:         var_174 = (Space(&H14) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("KOTNo"))), &H34)))
  loc_1699860:         Print 1, (var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)
  loc_169987F:       End If
  loc_1699895:       var_128 = (Chr(&HF) + CVar(var_D0))
  loc_169989B:       Print 1, Space(&H14)
  loc_16998A8:     End If
  loc_16998CE:     var_148 = (CVar(Proc_6_45_EADFB8("SNo", 3)) + Space(1))
  loc_16998DA:     var_164 = "ITEM NAME"
  loc_16998E8:     var_174 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(var_164, &H14)))
  loc_16998FC:     var_19C = ((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_1699916:     var_1BC = (Space(4) + CVar(Proc_6_52_EAE084("Tax, 6)) 'String)
  loc_1699922:     var_1E4 = Space(1)
  loc_169992A:     var_1F4 = (var_1BC + var_1E4)
  loc_1699944:     var_214 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_164), &HF)) + CVar(Proc_6_52_EAE084("Rate", &HA)))
  loc_1699958:     var_244 = (Space(4) + Space(1))
  loc_1699972:     var_280 = (var_244 + CVar(Proc_6_52_EAE084("Qty", &HA)))
  loc_169997E:     var_290 = Space(1)
  loc_1699986:     var_2B8 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), 8)) + var_290)
  loc_16999A0:     var_2DC = (var_2B8 + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_16999A5:     var_B4 = CStr(var_2DC)
  loc_16999FA:     var_128 = (Chr(&HF) + CVar(var_B4))
  loc_1699A00:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3))
  loc_1699A23:     var_128 = (Chr(&HF) + CVar(var_D0))
  loc_1699A29:     Print 1, CVar(Proc_6_45_EADFB8("SNo", 3))
  loc_1699A3C:     var_9A = (var_9A + 4)
  loc_1699A41:     var_B6 = 1
  loc_1699A47:     var_C0.MoveFirst
  loc_1699A4C:     ' Referenced from: 1699EDC
  loc_1699A5B:     If Not(var_C0.EOF) Then
  loc_1699AAB:       Proc_6_39_E7D3A0(var_1E4, CVar(var_C0.Fields.Item("TaxPer")), var_B6)
  loc_1699AF6:       Proc_6_39_E7D3A0(var_290, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_1699B41:       Proc_6_39_E7D3A0(var_334, CVar(var_C0.Fields.Item("qty")), 1, 1)
  loc_1699B8C:       Proc_6_39_E7D3A0(var_3DC, CVar(var_C0.Fields.Item("Amt")), 1, 1)
  loc_1699BD7:       var_148 = (CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1)) + Space(1))
  loc_1699BF0:       var_18C = (1 + CVar(Proc_6_45_EADFB8(CStr(var_C0.Fields.Item("ItemName").Value), &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_1699C04:       var_1AC = (Space(1) + Space(1))
  loc_1699C1D:       var_224 = (&H12 + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0.00")), 6, CVar(Proc_6_52_EAE084("Tax, 6)) 'String)) 'String)
  loc_1699C31:       var_26C = (Space(1) + Space(1))
  loc_1699C4A:       var_2EC = (CVar(Proc_6_52_EAE084("Qty", &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(var_290, "0.00")), &HA)))
  loc_1699C5E:       var_30C = (var_2EC + Space(1))
  loc_1699C77:       var_384 = (var_30C + CVar(Proc_6_52_EAE084(CStr(Format(var_334, "0.00")), &HA)))
  loc_1699C8B:       var_3A4 = (var_384 + Space(1))
  loc_1699CA4:       var_42C = (var_3A4 + CVar(Proc_6_52_EAE084(CStr(Format(var_3DC, "0.00")), &HA)))
  loc_1699D2F:       var_128 = (Chr(&HF) + CVar(CStr(var_42C)))
  loc_1699D35:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_1699D48:       var_9A = (var_9A + 1)
  loc_1699D55:       If (&H12 = (&H45 - var_AE)) Then
  loc_1699D6E:         var_128 = (Chr(&HF) + CVar(var_D0))
  loc_1699D74:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_1699D86:         Print 1, "Contd."
  loc_1699D9E:         Print 1, Chr(&HC)
  loc_1699DAD:         var_9C = (var_9C + 1)
  loc_1699DC3:         Call Proc_135_87_1270820(var_9C, 0, &H3C, var_17A)
  loc_1699DE2:         Call Proc_135_86_10AB89C(var_98, "B", &H3C, var_164, var_17A)
  loc_1699DEC:         Print 1, var_164
  loc_1699DFB:         var_9A = &H12
  loc_1699E14:         var_128 = (Chr(&HF) + CVar(var_D0))
  loc_1699E1A:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_1699E3D:         var_128 = (Chr(&HF) + CVar(var_B4))
  loc_1699E43:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_1699E66:         var_128 = (Chr(&HF) + CVar(var_D0))
  loc_1699E6C:         Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1))
  loc_1699E7F:         var_9A = (var_9A + 4)
  loc_1699E82:       End If
  loc_1699EAF:       Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A, var_9A)
  loc_1699EB7:       var_148 = (var_9A + CVar(Proc_6_45_EADFB8(CStr(var_B6), 3, 1, 1)))
  loc_1699EBC:       var_CC = CSng(CVar(var_BC.Fields.Item("KOTNo")))
  loc_1699ED1:       var_B6 = (var_B6 + 1)
  loc_1699ED7:       var_C0.MoveNext
  loc_1699EDC:       GoTo loc_1699A4C
  loc_1699EDF:     End If
  loc_1699EFF:     var_148 = (Chr(&HF) + Space(&H35))
  loc_1699F09:     var_158 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_1699F0F:     Print 1, var_C0.Fields.Item("ItemName").Value
  loc_1699F23:     var_C4.MoveFirst
  loc_1699F28:     ' Referenced from: 169A421
  loc_1699F37:     If Not(var_C4.EOF) Then
  loc_1699F64:       var_43C = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_1699F82:       If (var_43C = CVar(MemVar_1F95070 & "ROFF")) Then
  loc_169A00E:         Proc_6_39_E7D3A0(var_1E4, CVar(var_C4.Fields.Item("Amount")), var_9C)
  loc_169A05B:         var_148 = (Chr(&HF) + Space(&H23))
  loc_169A065:         var_18C = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_B6, var_CC)))
  loc_169A06C:         var_1AC = (Space(1) + Space(4))
  loc_169A076:         var_224 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0.00")), &HA, 1)))
  loc_169A07D:         var_26C = (Space(1) + Chr(&H12))
  loc_169A083:         Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_169A0C3:       Else
  loc_169A0D6:         If (var_43C = CVar(MemVar_1F95070 & "NET")) Then
  loc_169A0EE:           var_128 = Space(&H35)
  loc_169A0F9:           var_148 = (Chr(&HF) + var_128)
  loc_169A103:           var_158 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_169A109:           Print 1, var_C4.Fields.Item("DispName").Value
  loc_169A140:           Proc_6_39_E7D3A0(var_128, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_169A15A:           If (var_128 > 0) Then
  loc_169A172:             var_128 = Space(&H23)
  loc_169A1E6:             Proc_6_39_E7D3A0(var_1E4, CVar(var_C4.Fields.Item("Amount")))
  loc_169A233:             var_148 = (Chr(&HF) + var_128)
  loc_169A23D:             var_18C = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_169A244:             var_1AC = (Space(1) + Space(4))
  loc_169A24E:             var_224 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0.00")), &HA, 1)))
  loc_169A255:             var_26C = (Space(1) + Chr(&H12))
  loc_169A25B:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_169A298:           End If
  loc_169A29B:         Else
  loc_169A2C1:           Proc_6_39_E7D3A0(var_128, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_169A2DB:           If (var_128 > 0) Then
  loc_169A367:             Proc_6_39_E7D3A0(var_1E4, CVar(var_C4.Fields.Item("Amount")))
  loc_169A3B4:             var_148 = (Chr(&HF) + Space(&H23))
  loc_169A3BE:             var_18C = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_169A3C5:             var_1AC = (Space(1) + Space(4))
  loc_169A3CF:             var_224 = (CVar(Proc_6_52_EAE084("Tax, 6)) 'String + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0.00")), &HA, 1)))
  loc_169A3D6:             var_26C = (Space(1) + Chr(&H12))
  loc_169A3DC:             Print 1, CVar(Proc_6_52_EAE084("Qty", &HA))
  loc_169A419:           End If
  loc_169A419:         End If
  loc_169A419:       End If
  loc_169A41C:       var_C4.MoveNext
  loc_169A421:       GoTo loc_1699F28
  loc_169A424:     End If
  loc_169A43A:     var_128 = (Chr(&HF) + CVar(var_D0))
  loc_169A440:     Print 1, Space(&H23)
  loc_169A489:     If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_169A4E0:       var_128 = (Chr(&HF) + "Steward Name  : ")
  loc_169A4EA:       var_174 = (Space(&H23) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName")), 1), &H14)))
  loc_169A4F0:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF))
  loc_169A50F:     End If
  loc_169A563:     var_128 = (Chr(&HF) + "User Name     : ")
  loc_169A56D:     var_174 = (Space(&H23) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("U_Name")), var_9A), &HA)))
  loc_169A573:     Print 1, CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF))
  loc_169A594:     Print 1
  loc_169A5AF:     var_128 = (Chr(&HF) + "HAVE A NICE DAY ")
  loc_169A5B5:     Print 1, Space(&H23)
  loc_169A5E2:     var_148 = (Chr(&HF) + Space(&H32))
  loc_169A5EB:     var_158 = (CVar(var_BC.Fields.Item("U_Name")) + "Guest Signature")
  loc_169A5F1:     Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("U_Name")), var_9A), &HA))
  loc_169A604:     Print 1
  loc_169A61F:     var_128 = (Chr(&HF) + "# ")
  loc_169A629:     var_148 = Space(&H32) & CVar(MemVar_1F95220) 
  loc_169A632:     var_158 = var_148 & " # " 
  loc_169A638:     Print 1, var_158
  loc_169A64C:     var_BC.MoveNext
  loc_169A653:     Print 1
  loc_169A65B:     Print 1
  loc_169A661:     GoTo loc_169919F
  loc_169A664:   End If
  loc_169A666:   Close 1
  loc_169A66F:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_169A688:   var_F4 = Me.Fields
  loc_169A6A5:   var_128 = "TYPE C:\reptmp\TEXTFILE.TXT>" & var_F4.Item("Printer").Value 
  loc_169A6AB:   Print 1, var_128
  loc_169A6C1:   Close 1
  loc_169A6CB:   If (MemVar_1F953BC = "Y") Then
  loc_169A6E7:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_169A6F1:   Else
  loc_169A70A:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_169A711:   End If
  loc_169A716:   Set var_BC = Nothing
  loc_169A71E:   Set var_C0 = Nothing
  loc_169A726:   Set var_C4 = Nothing
  loc_169A72C: Else
  loc_169A745:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_128, var_148, var_158)
  loc_169A755: End If
  loc_169A755: Exit Sub
  loc_169A756: ' Referenced from: 1698FA4
  loc_169A756: Proc_6_60_E63754(var_F4)
  loc_169A75B: Exit Sub
End Sub

Public Sub Proc_135_69_16EB12C
  'Data Table: 552758
  Dim Me As Recordset15
  Dim unk_55277D As Connection15
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_E4 As Recordset15
  Dim var_168 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_180 As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_E0 As Recordset15
  Dim var_110 As Variant
  Dim var_250 As Variant
  Dim var_2DC As Variant
  Dim var_378 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_2F0 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_350 As Variant
  Dim var_38C As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_3DC As Variant
  Dim var_3FC As Variant
  Dim var_458 As Variant
  Dim var_230 As Variant
  Dim var_284 As Variant
  Dim var_2B4 As Variant
  Dim var_310 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_16E9758: On Error Goto loc_16EB123
  loc_16E9767: Me.Filter = "ModType='POS'"
  loc_16E9783: If (Me.RecordCount > 0) Then
  loc_16E9789:   MemVar_1F953C4 = "N"
  loc_16E9790:   MemVar_1F953C8 = "N"
  loc_16E9797:   MemVar_1F953CC = "K"
  loc_16E97C2:   unk_55277D.Execute "Select * from Depart where code='" & global_56 & "'", var_110, -1
  loc_16E97CD:   Set var_E4 = var_114
  loc_16E980F:   var_138 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_16E981D:   var_8C = CStr(var_138 & "'")
  loc_16E9844:   If (var_E4.RecordCount > 0) Then
  loc_16E9883:     If (var_E4.Fields.Item("KotYN").Value = "Y") Then
  loc_16E988D:       var_138 = CVar("Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCODE=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_16E9900:       var_1B0 = var_138 & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) " 
  loc_16E9905:       var_90 = CStr(var_1B0)
  loc_16E9927:     Else
  loc_16E992E:       var_138 = CVar("Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCODE=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_16E996C:       var_90 = CStr(var_138 & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) ")
  loc_16E9981:     End If
  loc_16E9981:     GoTo loc_16E9984
  loc_16E9984:     ' Referenced from: 16E9981
  loc_16E9984:   End If
  loc_16E99A3:   var_114 = Me.Fields
  loc_16E99B3:   var_110 = var_114.Item("SearchCode").Value
  loc_16E99C4:   var_168 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_110 & "' order by sno " 
  loc_16E99C9:   var_94 = CStr(var_168)
  loc_16E99E6:   If (var_8C = vbNullString) Then
  loc_16E99E9:     Exit Sub
  loc_16E99EA:   End If
  loc_16E99F2:   If (var_90 = vbNullString) Then
  loc_16E99F5:     Exit Sub
  loc_16E99F6:   End If
  loc_16E99FE:   If (var_94 = vbNullString) Then
  loc_16E9A01:     Exit Sub
  loc_16E9A02:   End If
  loc_16E9A18:   unk_55277D.Execute var_8C, var_110, -1
  loc_16E9A23:   Set var_BC = var_114
  loc_16E9A42:   unk_55277D.Execute var_90, var_110, -1
  loc_16E9A4D:   Set var_C0 = var_114
  loc_16E9A6C:   unk_55277D.Execute var_94, var_110, -1
  loc_16E9A77:   Set var_C4 = var_114
  loc_16E9A82:   var_AE = &HA
  loc_16E9A87:   Close 1
  loc_16E9A90:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16E9AB8:   unk_55277D.Execute "Select * from enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_110, -1
  loc_16E9AC3:   Set var_E0 = var_114
  loc_16E9AD3:   ' Referenced from: 16EAFA0
  loc_16E9AE2:   If Not(var_BC.EOF) Then
  loc_16E9AE7:     var_9A = 0
  loc_16E9AF5:     If (var_9A = 0) Then
  loc_16E9B36:       var_158 = CVar(Replace(CStr(Space(&H88)), " ", "-", 1, -1, 0)) 'String
  loc_16E9B39:       var_168 = (Chr(&HF) + CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&HF))
  loc_16E9B4D:       var_190 = (var_168 + Chr(&H12))
  loc_16E9B52:       var_D0 = CStr(Space(&H88) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value)
  loc_16E9B95:       var_D4 = Replace(CStr(Space(&HC)), " ", "=", 1, -1, 0)
  loc_16E9BA5:       Set var_114 = Me.LblRest
  loc_16E9BBB:       var_1B8 = "A"
  loc_16E9BC8:       Call Proc_135_86_10AB89C(var_114.Caption, var_1B8, &H4E, var_1BC, 1, var_9A)
  loc_16E9BD2:       Print 1, var_1BC
  loc_16E9C0F:       var_190 = Trim(MemVar_1F9513C)
  loc_16E9C2D:       var_138 = (Trim(MemVar_1F95134) + ", ")
  loc_16E9C34:       var_168 = (Space(&H88) + Trim(MemVar_1F95138))
  loc_16E9C3D:       var_180 = (var_168 + " ")
  loc_16E9C44:       var_1B0 = (Chr(&H12) + var_190)
  loc_16E9C4D:       var_1EC = (var_1B0 + " ")
  loc_16E9C57:       var_20C = (var_1EC + CVar(MemVar_1F9515C))
  loc_16E9C60:       Call Proc_135_86_10AB89C(CStr(var_20C), "B", &H4E, var_1B8, var_114)
  loc_16E9C6A:       Print 1, var_1B8
  loc_16E9CB9:       Call Proc_135_86_10AB89C("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "E", 137, var_210, var_AE)
  loc_16E9CC3:       Print 1, var_210
  loc_16E9CEA:       If (var_E0.RecordCount > 0) Then
  loc_16E9CFC:         var_114 = var_E0.Fields
  loc_16E9D37:         If (Trim(CVar(Proc_6_38_E69628(CVar(var_114.Item("Bill_Header")), var_114, var_114))) = vbNullString) Then
  loc_16E9D3F:           Print 1, vbNullString
  loc_16E9D48:         Else
  loc_16E9D57:           var_114 = var_E0.Fields
  loc_16E9D8C:           Call Proc_135_86_10AB89C(Proc_6_38_E69628(CVar(var_114.Item("Bill_Header")), var_114), "E", 137)
  loc_16E9D96:           Print 1, var_1B8
  loc_16E9DAD:         End If
  loc_16E9DB0:       Else
  loc_16E9DB5:         Print 1, vbNullString
  loc_16E9DBB:       End If
  loc_16E9DCD:       Print 1, Chr(&H12)
  loc_16E9E16:       Proc_6_39_E7D3A0(var_190, CVar(var_BC.Fields.Item("VNo")))
  loc_16E9E38:       var_138 = (Chr(&HF) + "Bill No. ")
  loc_16E9E3F:       var_168 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields, var_BC.Fields)) + Chr(&H12))
  loc_16E9E49:       var_1EC = (var_168 + CVar(Proc_6_45_EADFB8(CStr(var_190), &HA)))
  loc_16E9E4F:       Print 1, var_1EC
  loc_16EA016:       Proc_6_39_E7D3A0(var_434, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_16EA039:       var_138 = (Chr(&HF) + "Date : ")
  loc_16EA040:       var_168 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields, var_BC.Fields)) + Chr(&H12))
  loc_16EA04A:       var_1B0 = (var_168 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)))
  loc_16EA051:       var_20C = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12))), &HA)) + Chr(&HF))
  loc_16EA05A:       var_220 = (var_20C + "Time : ")
  loc_16EA061:       var_240 = (var_220 + Chr(&H12))
  loc_16EA06B:       var_274 = (var_240 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_16EA072:       var_294 = (var_274 + Chr(&HF))
  loc_16EA07B:       var_2A4 = (var_294 + "Steward :")
  loc_16EA082:       var_2C4 = (var_2A4 + Chr(&H12))
  loc_16EA08C:       var_300 = (var_2C4 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_16EA093:       var_320 = (var_300 + Chr(&HF))
  loc_16EA09C:       var_330 = (var_320 + "Table : ")
  loc_16EA0A3:       var_350 = (var_330 + Chr(&H12))
  loc_16EA0AD:       var_39C = (var_350 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_16EA0B4:       var_3BC = (var_39C + Chr(&HF))
  loc_16EA0BD:       var_3DC = (var_3BC + "Covers: ")
  loc_16EA0C4:       var_3FC = (var_3DC + Chr(&H12))
  loc_16EA0CE:       var_458 = (var_3FC + CVar(Proc_6_45_EADFB8(CStr(var_434), 7)))
  loc_16EA0D4:       Print 1, var_458
  loc_16EA160:       Print 1, var_D0
  loc_16EA217:       var_3AC = Space(&HA)
  loc_16EA22F:       var_158 = (Chr(&HF) + Space(3))
  loc_16EA238:       var_168 = (Chr(&H12) + "S.No")
  loc_16EA23F:       var_190 = (var_168 + Space(3))
  loc_16EA246:       var_1EC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + Space(4))
  loc_16EA24F:       var_20C = (Chr(&HF) + "KOT#")
  loc_16EA256:       var_230 = (var_20C + Space(4))
  loc_16EA25D:       var_250 = (Chr(&H12) + Space(5))
  loc_16EA266:       var_264 = (CVar(var_BC.Fields.Item("VTIME")) + "CODE")
  loc_16EA26D:       var_284 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(5))
  loc_16EA274:       var_2A4 = (Chr(&HF) + Space(&H15))
  loc_16EA27D:       var_2B4 = (var_2A4 + "ITEM NAME")
  loc_16EA284:       var_2DC = (Chr(&H12) + Space(&H15))
  loc_16EA28B:       var_300 = (CVar(var_BC.Fields.Item("WaiterName")) + Space(8))
  loc_16EA294:       var_310 = (var_300 + "QTY")
  loc_16EA29B:       var_330 = (Chr(&HF) + Space(5))
  loc_16EA2A2:       var_350 = (var_330 + Space(5))
  loc_16EA2AB:       var_378 = (var_350 + "RATE")
  loc_16EA2B2:       var_39C = (CVar(var_BC.Fields.Item("RoomNo")) + Space(5))
  loc_16EA2B9:       var_3BC = (var_39C + var_3AC)
  loc_16EA2C2:       var_3DC = (var_3BC + "AMOUNT")
  loc_16EA2C9:       var_3FC = (var_3DC + Chr(&H12))
  loc_16EA2CF:       Print 1, var_3FC
  loc_16EA325:       Print 1, var_D0
  loc_16EA32D:       var_9A = &HA
  loc_16EA330:     End If
  loc_16EA332:     var_B6 = 1
  loc_16EA338:     var_C0.MoveFirst
  loc_16EA33D:     ' Referenced from: 16EAA59
  loc_16EA34C:     If Not(var_C0.EOF) Then
  loc_16EA355:       If (var_9A = 0) Then
  loc_16EA386:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_16EA3BD:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_16EA3F9:         Proc_6_39_E7D3A0(Chr(&H12), CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_16EA41C:         var_180 = (Space(8) + CVar(Proc_6_45_EADFB8(CStr(Chr(&H12)), &HA)))
  loc_16EA422:         Print 1, Space(3)
  loc_16EA441:         Print 1
  loc_16EA5AA:         Proc_6_39_E7D3A0(var_300, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_16EA5CE:         var_168 = (Space(6) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_16EA5D5:         var_190 = (CVar(Proc_6_45_EADFB8(CStr(Chr(&H12)), &HA)) + Space(4))
  loc_16EA5DF:         var_20C = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_16EA5E6:         var_230 = (var_20C + Space(6))
  loc_16EA5F0:         var_264 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_16EA5F7:         var_284 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_16EA601:         var_2B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_16EA608:         var_2DC = (Chr(&H12) + Space(6))
  loc_16EA60F:         var_310 = CVar(Proc_6_45_EADFB8(CStr(var_300), 7)) 'String
  loc_16EA612:         var_320 = (CVar(var_BC.Fields.Item("WaiterName")) + var_310)
  loc_16EA618:         Print 1, Space(5)
  loc_16EA686:         Print 1, vbNullString
  loc_16EA691:         Print 1, vbNullString
  loc_16EA699:         var_9A = 5
  loc_16EA69C:       End If
  loc_16EA714:       var_240 = var_C0.Fields.Item("ItemName").Value
  loc_16EA73F:       Proc_6_39_E7D3A0(Chr(&HF), CVar(var_C0.Fields.Item("qty")))
  loc_16EA78A:       Proc_6_39_E7D3A0(var_310, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_16EA7D5:       Proc_6_39_E7D3A0(var_3AC, CVar(var_C0.Fields.Item("Amt")), 1)
  loc_16EA820:       var_158 = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) + Space(4))
  loc_16EA835:       var_180 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("KOTNo")), var_9A), 5, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_16EA838:       var_190 = (1 + var_180)
  loc_16EA84C:       var_1EC = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + Space(2))
  loc_16EA861:       var_220 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_C0.Fields.Item("ICODE"))), 7, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_16EA864:       var_230 = (1 + var_220)
  loc_16EA87D:       var_264 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(CStr(var_240), &H1E)))
  loc_16EA896:       var_2C4 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&HF), "0.00")), 6)))
  loc_16EA8AA:       var_2F0 = (Space(6) + Space(1))
  loc_16EA8C3:       var_350 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAE084(CStr(Format(var_310, "0.00")), 7)))
  loc_16EA8D7:       var_38C = (var_350 + Space(1))
  loc_16EA8F0:       var_3FC = (Space(5) + CVar(Proc_6_52_EAE084(CStr(Format(var_3AC, "0.00")), &HB)))
  loc_16EA96E:       Print 1, CStr(var_3FC)
  loc_16EA97A:       var_9A = (var_9A + 1)
  loc_16EA987:       If (var_9A = (&H36 - var_AE)) Then
  loc_16EA990:         var_9C = (var_9C + 1)
  loc_16EA9A8:         var_138 = (Space(&H32) + "Contd. Page ")
  loc_16EA9C3:         Print 1, CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..."
  loc_16EA9DC:         var_9A = (var_9A + 1)
  loc_16EA9F1:         Print 1, Chr(&HC)
  loc_16EA9FC:         var_9A = 0
  loc_16EA9FF:       End If
  loc_16EAA2C:       Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A)
  loc_16EAA34:       var_158 = (var_9A + CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)))
  loc_16EAA39:       var_CC = CSng(CVar(CStr(1)))
  loc_16EAA4E:       var_B6 = (var_B6 + 1)
  loc_16EAA54:       var_C0.MoveNext
  loc_16EAA59:       GoTo loc_16EA33D
  loc_16EAA5C:     End If
  loc_16EAA66:     If (var_9A < (&H36 - var_AE)) Then
  loc_16EAA69:       ' Referenced from: 16EAA8D
  loc_16EAA76:       If (var_9A <> ((&H36 - var_AE) + 1)) Then
  loc_16EAA7E:         Print 1, vbNullString
  loc_16EAA8A:         var_9A = (var_9A + 1)
  loc_16EAA8D:         GoTo loc_16EAA69
  loc_16EAA90:       End If
  loc_16EAA90:     End If
  loc_16EAA93:     var_C4.MoveFirst
  loc_16EAA9D:     Print 1, var_D0
  loc_16EAAA3:     ' Referenced from: 16EAF95
  loc_16EAAB2:     If Not(var_C4.EOF) Then
  loc_16EAADF:       var_49C = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_16EAAFD:       If (var_49C = CVar(MemVar_1F95070 & "ROFF")) Then
  loc_16EABA1:         Proc_6_39_E7D3A0(var_240, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16EABE4:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Trade Tax No. : " & MemVar_1F95148, &H54, var_9A, var_B6)))
  loc_16EABEB:         var_180 = (CVar(CStr(1)) + Chr(&H12))
  loc_16EABF5:         var_1EC = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_CC)))
  loc_16EABFC:         var_220 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_16EAC06:         var_284 = (var_220 + CVar(Proc_6_52_EAE084(CStr(Format(var_240, "0.00")), &HA, 1)))
  loc_16EAC0C:         Print 1, Chr(&HF)
  loc_16EAC50:       Else
  loc_16EAC63:         If (var_49C = CVar(MemVar_1F95070 & "NET")) Then
  loc_16EAC7C:           var_138 = (Space(&H43) + CVar(var_D4))
  loc_16EAC82:           Print 1, CVar(Proc_6_45_EADFB8("Trade Tax No. : " & MemVar_1F95148, &H54, var_9A, var_B6))
  loc_16EACB5:           Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("Trade Tax No. : " & MemVar_1F95148, &H54, var_9A, var_B6)), CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16EACCF:           If (CVar(Proc_6_45_EADFB8("Trade Tax No. : " & MemVar_1F95148, &H54, var_9A, var_B6)) > 0) Then
  loc_16EAD81:             Proc_6_39_E7D3A0(var_240, CVar(var_C4.Fields.Item("Amount")))
  loc_16EADC1:             var_138 = CVar(Proc_6_45_EADFB8("All Disputes are subject to " & "Nanital" & " " & "Jurisdiction only.", &H54)) 'String
  loc_16EADC4:             var_158 = (Chr(&HF) + var_138)
  loc_16EADCB:             var_180 = (CVar(CStr(1)) + Chr(&H12))
  loc_16EADD5:             var_1EC = (CVar(Proc_6_52_EAE084(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_16EADDC:             var_220 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_16EADE6:             var_284 = (var_220 + CVar(Proc_6_52_EAE084(CStr(Format(var_240, "0.00")), &HA, 1)))
  loc_16EADEC:             Print 1, Chr(&HF)
  loc_16EAE31:           End If
  loc_16EAE36:           Print 1, var_D0
  loc_16EAE3F:         Else
  loc_16EAE65:           Proc_6_39_E7D3A0(var_138, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16EAE7F:           If (var_138 > 0) Then
  loc_16EAEC8:             var_1B8 = Proc_6_45_EADFB8(CStr(var_C4.Fields.Item("DispName").Value), &HF)
  loc_16EAEFE:             Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)), CVar(var_C4.Fields.Item("Amount")))
  loc_16EAF35:             var_1BC = Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("VTIME"))), &HA)), "0.00")), &HA, 1)
  loc_16EAF3E:             var_158 = CVar(var_1B8) 'String
  loc_16EAF41:             var_168 = (Space(&H31) + var_158)
  loc_16EAF48:             var_190 = (Chr(&H12) + Space(4))
  loc_16EAF52:             var_240 = (var_C4.Fields.Item("DispName").Value + CVar(var_1BC))
  loc_16EAF58:             Print 1, var_240
  loc_16EAF8D:           End If
  loc_16EAF8D:         End If
  loc_16EAF8D:       End If
  loc_16EAF90:       var_C4.MoveNext
  loc_16EAF95:       GoTo loc_16EAAA3
  loc_16EAF98:     End If
  loc_16EAF9B:     var_BC.MoveNext
  loc_16EAFA0:     GoTo loc_16E9AD3
  loc_16EAFA3:   End If
  loc_16EAFBD:   Call Proc_135_86_10AB89C("* THANKS FOR YOUR VISIT *", "A", &H4E, var_1B8)
  loc_16EAFC7:   Print 1, var_1B8
  loc_16EAFD8:   Print 1
  loc_16EAFE0:   Print 1
  loc_16EAFE8:   Print 1
  loc_16EB003:   var_138 = (Space(&H48) + "CASHIER")
  loc_16EB009:   Print 1, var_C4.Fields.Item("DispName").Value
  loc_16EB028:   Print 1, Chr(&HC)
  loc_16EB033:   Close 1
  loc_16EB03C:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16EB072:   var_138 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_16EB078:   Print 1, var_138
  loc_16EB08E:   Close 1
  loc_16EB098:   If (MemVar_1F953BC = "Y") Then
  loc_16EB0B4:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16EB0BE:   Else
  loc_16EB0D7:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16EB0DE:   End If
  loc_16EB0E3:   Set var_BC = Nothing
  loc_16EB0EB:   Set var_C0 = Nothing
  loc_16EB0F3:   Set var_C4 = Nothing
  loc_16EB0F9: Else
  loc_16EB112:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_138, var_158, Chr(&H12))
  loc_16EB122: End If
  loc_16EB122: Exit Sub
  loc_16EB123: ' Referenced from: 16E9758
  loc_16EB123: Proc_6_60_E63754(1, var_9A)
  loc_16EB128: Exit Sub
End Sub

Public Sub Proc_135_70_EF86C0
  'Data Table: 552758
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_DC As Variant
  loc_EF85F4: Set var_88 = Me.TopCtrl1
  loc_EF85FA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_EF860F: If ( = "Browse") Then
  loc_EF8612:   Exit Sub
  loc_EF8613: End If
  loc_EF8652: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(8))) Then
  loc_EF8668:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EF8670:   var_DC = CVar(CLng(&H19)) 'Long
  loc_EF86A3:   If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_EF86AF:     Call FGrid_UnknownEvent_C(CInt(&HD))
  loc_EF86B9:     global_142 = 0
  loc_EF86BC:   End If
  loc_EF86BC: End If
  loc_EF86BC: Exit Sub
End Sub

Public Sub Proc_135_71_1827E48(arg_C) '1827E48
  'Data Table: 552758
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_C4 As String
  Dim var_138 As MSHFlexGrid
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_180 As String
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1F4 As Double
  Dim var_92 As Integer
  Dim var_20C As Variant
  Dim unk_55277D As Connection15
  Dim var_98 As Recordset15
  loc_1825A0C: If (arg_C = 0) Then
  loc_1825A22:   var_B4 = CLng(Me.FGrid.Col)
  loc_1825A32:   If (var_B4 = CLng(2)) Then
  loc_1825A83:     Set var_A0 = Me.TxtGrid
  loc_1825A89:     Call 0.Method_Proc_135_71_1827E480 (arg_C, var_C0, var_C4)
  loc_1825A91:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_1825AA9:     If (var_B4 Or (var_C4 = vbNullString)) Then
  loc_1825ABF:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825AC7:       var_F4 = CVar(CLng(2)) 'Long
  loc_1825ACC:       var_114 = vbNullString
  loc_1825AD6:       Set var_C0 = Me.FGrid
  loc_1825ADC:       LateIdCallSt
  loc_1825B01:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825B09:       var_F4 = CVar(CLng(1)) 'Long
  loc_1825B0E:       var_114 = vbNullString
  loc_1825B18:       Set var_C0 = Me.FGrid
  loc_1825B1E:       LateIdCallSt
  loc_1825B33:     Else
  loc_1825B4C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825B54:       var_F4 = CVar(CLng(1)) 'Long
  loc_1825B6E:       var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1825B8C:       var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825B94:       var_158 = CVar(CLng(1)) 'Long
  loc_1825BAE:       var_180 = CStr(Me.FGrid.TextMatrix))
  loc_1825C19:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1825C2F:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825C37:         var_104 = CVar(CLng(2)) 'Long
  loc_1825C6A:         var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1825C72:         Set var_16C = Me.FGrid
  loc_1825C78:         LateIdCallSt
  loc_1825CA7:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825CAF:         var_104 = CVar(CLng(1)) 'Long
  loc_1825CE2:         var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1825CEA:         Set var_16C = Me.FGrid
  loc_1825CF0:         LateIdCallSt
  loc_1825D40:         global_196 = CStr(Me.Fields.Item("Name").Value)
  loc_1825D7F:         var_C4 = CStr(Me.Fields.Item("Code").Value)
  loc_1825D85:         global_200 = var_C4
  loc_1825DA9:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825DB1:         var_F4 = CVar(CLng(4)) 'Long
  loc_1825DB6:         var_114 = vbNullString
  loc_1825DC0:         Set var_C0 = Me.FGrid
  loc_1825DC6:         LateIdCallSt
  loc_1825DEB:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825DF3:         var_F4 = CVar(CLng(&HB)) 'Long
  loc_1825DF8:         var_114 = vbNullString
  loc_1825E02:         Set var_C0 = Me.FGrid
  loc_1825E08:         LateIdCallSt
  loc_1825E2D:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825E35:         var_F4 = CVar(CLng(3)) 'Long
  loc_1825E3A:         var_114 = vbNullString
  loc_1825E44:         Set var_C0 = Me.FGrid
  loc_1825E4A:         LateIdCallSt
  loc_1825E6F:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1825E77:         var_F4 = CVar(CLng(&H1A)) 'Long
  loc_1825E7C:         var_114 = vbNullString
  loc_1825E86:         Set var_C0 = Me.FGrid
  loc_1825E8C:         LateIdCallSt
  loc_1825E9E:       End If
  loc_1825E9E:     End If
  loc_1825EA1:   Else
  loc_1825EA8:     If (var_B4 = CLng(3)) Then
  loc_1825EB7:       Set var_A0 = Me.TxtGrid
  loc_1825EBD:       Call 0.Method_Proc_135_71_1827E480 (0, var_C0, var_C4, var_C0, var_114, var_F4, var_D4)
  loc_1825EC5:       var_C0 = var_C0.Text
  loc_1825EDC:       If (var_C4 = "9999") Then
  loc_1825EE9:         Set global_188 = New RsSpecItemEntry
  loc_1825EFF:         RsSpecItemEntry.PKOTForm = Me
  loc_1825F13:         RsSpecItemEntry.pRestCode = global_56
  loc_1825F1F:         Set var_A0 = var_114(var_C4)
  loc_1825F25:         var_F4 = RsSpecItemEntry.Label.Caption
  loc_1825F33:         RsSpecItemEntry.PRestName = var_C4
  loc_1825F51:         Call 0.Method_arg_2B0 (1, var_E4, 1)
  loc_1825F86:         var_134 = CVar(Proc_6_38_E69628(global_132, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1825F94:         LateIdCallSt
  loc_1825FDA:         var_134 = CVar(Proc_6_38_E69628(global_136, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)) 'String
  loc_1825FE2:         Set var_C0 = Me.FGrid
  loc_1825FE8:         LateIdCallSt
  loc_1826011:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_182602C:         Set var_A0 = Me.Txt
  loc_1826032:         Call 0.Method_Proc_135_71_1827E480 (CInt(3), var_C0, var_C4, CVar(CLng(&H17)), var_D4, var_C0)
  loc_182603A:         var_134 = var_C0.Tag
  loc_1826042:         var_134 = CVar(var_C4) 'String
  loc_182604A:         Set var_16C = Me.FGrid
  loc_1826050:         LateIdCallSt
  loc_182606D:       Else
  loc_1826084:         If (Me.RecordCount > 0) Then
  loc_182608D:           Me.MoveFirst
  loc_1826092:         End If
  loc_18260A9:         If (Me.RecordCount > 0) Then
  loc_18260B8:           Set var_A0 = Me.TxtGrid
  loc_18260BE:           Call 0.Method_Proc_135_71_1827E480 (0, var_C0, var_C4, var_16C, var_134)
  loc_18260C6:           var_134 = var_C0.Text
  loc_18260F9:           Me.Find "DispCode=" & CStr(Val(var_C4)), 0, 1
  loc_182610E:         End If
  loc_182615C:         Set var_A0 = Me.TxtGrid
  loc_1826162:         Call 0.Method_Proc_135_71_1827E480 (arg_C, var_C0, var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_D4)
  loc_182616A:         var_1F4 = var_C0.Text
  loc_1826182:         If (var_C0 Or (var_C4 = vbNullString)) Then
  loc_1826198:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18261A0:           var_F4 = CVar(CLng(4)) 'Long
  loc_18261A5:           var_114 = vbNullString
  loc_18261AF:           Set var_C0 = Me.FGrid
  loc_18261B5:           LateIdCallSt
  loc_18261DA:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18261E2:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_18261E7:           var_114 = vbNullString
  loc_18261F1:           Set var_C0 = Me.FGrid
  loc_18261F7:           LateIdCallSt
  loc_182621C:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826224:           var_F4 = CVar(CLng(3)) 'Long
  loc_1826229:           var_114 = vbNullString
  loc_1826233:           Set var_C0 = Me.FGrid
  loc_1826239:           LateIdCallSt
  loc_182625E:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826266:           var_F4 = CVar(CLng(6)) 'Long
  loc_182626B:           var_114 = vbNullString
  loc_1826275:           Set var_C0 = Me.FGrid
  loc_182627B:           LateIdCallSt
  loc_18262A0:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18262A8:           var_F4 = CVar(CLng(3)) 'Long
  loc_18262AD:           var_114 = vbNullString
  loc_18262B7:           Set var_C0 = Me.FGrid
  loc_18262BD:           LateIdCallSt
  loc_18262E2:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18262EA:           var_F4 = CVar(CLng(8)) 'Long
  loc_18262EF:           var_114 = vbNullString
  loc_18262F9:           Set var_C0 = Me.FGrid
  loc_18262FF:           LateIdCallSt
  loc_1826324:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_182632C:           var_F4 = CVar(CLng(9)) 'Long
  loc_1826331:           var_114 = vbNullString
  loc_182633B:           Set var_C0 = Me.FGrid
  loc_1826341:           LateIdCallSt
  loc_1826366:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_182636E:           var_F4 = CVar(CLng(&H15)) 'Long
  loc_1826373:           var_114 = vbNullString
  loc_182637D:           Set var_C0 = Me.FGrid
  loc_1826383:           LateIdCallSt
  loc_18263A8:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18263B0:           var_F4 = CVar(CLng(&H16)) 'Long
  loc_18263B5:           var_114 = vbNullString
  loc_18263BF:           Set var_C0 = Me.FGrid
  loc_18263C5:           LateIdCallSt
  loc_18263EA:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18263F2:           var_F4 = CVar(CLng(&H17)) 'Long
  loc_18263F7:           var_114 = vbNullString
  loc_1826401:           Set var_C0 = Me.FGrid
  loc_1826407:           LateIdCallSt
  loc_182642C:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826434:           var_F4 = CVar(CLng(&H13)) 'Long
  loc_1826439:           var_114 = vbNullString
  loc_1826443:           Set var_C0 = Me.FGrid
  loc_1826449:           LateIdCallSt
  loc_182646E:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826476:           var_F4 = CVar(CLng(&H14)) 'Long
  loc_182647B:           var_114 = vbNullString
  loc_1826485:           Set var_C0 = Me.FGrid
  loc_182648B:           LateIdCallSt
  loc_18264B0:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18264B8:           var_F4 = CVar(CLng(&H18)) 'Long
  loc_18264BD:           var_114 = vbNullString
  loc_18264C7:           Set var_C0 = Me.FGrid
  loc_18264CD:           LateIdCallSt
  loc_18264F2:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18264FA:           var_F4 = CVar(CLng(&H1A)) 'Long
  loc_18264FF:           var_114 = vbNullString
  loc_1826509:           Set var_C0 = Me.FGrid
  loc_182650F:           LateIdCallSt
  loc_1826524:         Else
  loc_182653D:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826545:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_182655F:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_182657D:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826585:           var_158 = CVar(CLng(&HB)) 'Long
  loc_182659F:           var_180 = CStr(Me.FGrid.TextMatrix))
  loc_182660A:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HB)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1826620:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826628:             var_104 = CVar(CLng(4)) 'Long
  loc_182665B:             var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1826663:             Set var_16C = Me.FGrid
  loc_1826669:             LateIdCallSt
  loc_1826698:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18266A0:             var_104 = CVar(CLng(&HB)) 'Long
  loc_18266D3:             var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_18266DB:             Set var_16C = Me.FGrid
  loc_18266E1:             LateIdCallSt
  loc_1826710:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826718:             var_104 = CVar(CLng(3)) 'Long
  loc_182674B:             var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1826753:             Set var_16C = Me.FGrid
  loc_1826759:             LateIdCallSt
  loc_1826788:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826790:             var_104 = CVar(CLng(6)) 'Long
  loc_18267C3:             var_148 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_18267CB:             Set var_16C = Me.FGrid
  loc_18267D1:             LateIdCallSt
  loc_1826801:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_182680E:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_1826816:             var_F4 = CVar(CLng(0)) 'Long
  loc_1826820:             var_B0 = CVar(CStr(var_92)) 'String
  loc_1826828:             Set var_A0 = Me.FGrid
  loc_182682E:             LateIdCallSt
  loc_1826840:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_1826848:             var_F4 = CVar(CLng(7)) 'Long
  loc_1826862:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1826878:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_182687F:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_1826887:               var_F4 = CVar(CLng(7)) 'Long
  loc_182688C:               var_114 = "1.0"
  loc_1826896:               Set var_A0 = Me.FGrid
  loc_182689C:               LateIdCallSt
  loc_18268A7:             End If
  loc_18268AD:             var_D4 = "Code"
  loc_18268BC:             var_A0 = Me.Fields
  loc_18268DF:             Set var_138 = Me.Txt
  loc_18268E5:             Call 0.Method_Proc_135_71_1827E480 (CInt(1), var_16C, var_180, var_A0, var_114, var_F4, var_D4)
  loc_18268ED:             var_F4 = var_16C.Text
  loc_1826936:             Call Proc_135_89_F2240C(CStr(var_A0.Item(var_D4).Value), var_180, CStr(Me.Fields.Item("OutletCode").Value), var_1F4, var_D4)
  loc_1826956:             var_158 = CVar(CLng(8)) 'Long
  loc_1826991:             LateIdCallSt
  loc_18269FE:             Set var_138 = Me.Txt
  loc_1826A04:             Call 0.Method_Proc_135_71_1827E480 (CInt(1), var_16C, var_180, Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)
  loc_1826A0C:             var_158 = var_16C.Text
  loc_1826A55:             Call Proc_135_89_F2240C(CStr(Me.Fields.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value), var_1F4, CVar(CLng(Me.FGrid.Row)))
  loc_1826A6D:             var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826A75:             var_158 = CVar(CLng(9)) 'Long
  loc_1826AA2:             var_20C = CVar(CStr(Format(CVar(var_1F4), "0.00"))) 'String
  loc_1826AAA:             Set var_210 = Me.FGrid
  loc_1826AB0:             LateIdCallSt
  loc_1826AE5:           End If
  loc_1826B15:           var_134 = CVar(Proc_6_38_E69628(global_132, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), var_210, var_20C, 1, 1)) 'String
  loc_1826B23:           LateIdCallSt
  loc_1826B69:           var_134 = CVar(Proc_6_38_E69628(global_136, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, var_158)) 'String
  loc_1826B71:           Set var_C0 = Me.FGrid
  loc_1826B77:           LateIdCallSt
  loc_1826BBB:           Set var_A0 = Me.Txt
  loc_1826BC1:           Call 0.Method_Proc_135_71_1827E480 (CInt(3), var_C0, var_C4, CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)), var_C0, var_134)
  loc_1826BC9:           var_114 = var_C0.Tag
  loc_1826BD1:           var_134 = CVar(var_C4) 'String
  loc_1826BDF:           LateIdCallSt
  loc_1826C03:           var_134 = Me.FGrid.Row
  loc_1826C44:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_134)), Me.FGrid, var_134)) 'String
  loc_1826C52:           LateIdCallSt
  loc_1826CB7:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1826CC5:           LateIdCallSt
  loc_1826D2A:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1826D38:           LateIdCallSt
  loc_1826D56:           Set var_138 = Me.FGrid
  loc_1826D5C:           var_134 = var_138.Row
  loc_1826D9D:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(var_134)), Me.FGrid, var_148)) 'String
  loc_1826DAB:           LateIdCallSt
  loc_1826DE7:           var_A0 = Me.Fields
  loc_1826DF7:           var_B0 = CVar(var_A0.Item("TaxStru")) 'Address
  loc_1826E00:           var_C4 = Proc_6_38_E69628(var_B0, "Select * from taxStru where code='", var_134, -1, var_138, Me.FGrid)
  loc_1826E14:           unk_55277D.Execute var_148 & var_C4 & "'", var_A0, var_B0
  loc_1826E1F:           Set var_98 = var_138
  loc_1826E4D:           If (var_98.RecordCount > 0) Then
  loc_1826E73:             var_D4 = "Rate"
  loc_1826E87:             var_C0 = var_98.Fields.Item(var_D4)
  loc_1826E96:             Proc_6_39_E7D3A0(var_134, CVar(var_C0), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)))
  loc_1826E9F:             var_17C = CVar(CStr(var_134)) 'String
  loc_1826EA7:             Set var_16C = Me.FGrid
  loc_1826EAD:             LateIdCallSt
  loc_1826EC9:           End If
  loc_1826ECE:           Call Proc_135_84_165F774(&H32, var_16C, var_17C)
  loc_1826ED3:         End If
  loc_1826ED3:       End If
  loc_1826ED6:     Else
  loc_1826EDD:       If (var_B4 = CLng(4)) Then
  loc_1826F2E:         Set var_A0 = Me.TxtGrid
  loc_1826F34:         Call 0.Method_Proc_135_71_1827E480 (arg_C, var_C0, var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1826F3C:         var_F4 = var_C0.Text
  loc_1826F54:         If (var_D4 Or (var_C4 = vbNullString)) Then
  loc_1826F6A:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826F72:           var_F4 = CVar(CLng(4)) 'Long
  loc_1826F77:           var_114 = vbNullString
  loc_1826F81:           Set var_C0 = Me.FGrid
  loc_1826F87:           LateIdCallSt
  loc_1826FAC:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826FB4:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1826FB9:           var_114 = vbNullString
  loc_1826FC3:           Set var_C0 = Me.FGrid
  loc_1826FC9:           LateIdCallSt
  loc_1826FEE:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826FF6:           var_F4 = CVar(CLng(3)) 'Long
  loc_1826FFB:           var_114 = vbNullString
  loc_1827005:           Set var_C0 = Me.FGrid
  loc_182700B:           LateIdCallSt
  loc_1827030:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827038:           var_F4 = CVar(CLng(6)) 'Long
  loc_182703D:           var_114 = vbNullString
  loc_1827047:           Set var_C0 = Me.FGrid
  loc_182704D:           LateIdCallSt
  loc_1827072:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_182707A:           var_F4 = CVar(CLng(3)) 'Long
  loc_182707F:           var_114 = vbNullString
  loc_1827089:           Set var_C0 = Me.FGrid
  loc_182708F:           LateIdCallSt
  loc_18270B4:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18270BC:           var_F4 = CVar(CLng(8)) 'Long
  loc_18270C1:           var_114 = vbNullString
  loc_18270CB:           Set var_C0 = Me.FGrid
  loc_18270D1:           LateIdCallSt
  loc_18270F6:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18270FE:           var_F4 = CVar(CLng(9)) 'Long
  loc_1827103:           var_114 = vbNullString
  loc_182710D:           Set var_C0 = Me.FGrid
  loc_1827113:           LateIdCallSt
  loc_1827138:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827140:           var_F4 = CVar(CLng(&H15)) 'Long
  loc_1827145:           var_114 = vbNullString
  loc_182714F:           Set var_C0 = Me.FGrid
  loc_1827155:           LateIdCallSt
  loc_182717A:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827182:           var_F4 = CVar(CLng(&H16)) 'Long
  loc_1827187:           var_114 = vbNullString
  loc_1827191:           Set var_C0 = Me.FGrid
  loc_1827197:           LateIdCallSt
  loc_18271BC:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18271C4:           var_F4 = CVar(CLng(&H17)) 'Long
  loc_18271C9:           var_114 = vbNullString
  loc_18271D3:           Set var_C0 = Me.FGrid
  loc_18271D9:           LateIdCallSt
  loc_18271FE:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827206:           var_F4 = CVar(CLng(&H1A)) 'Long
  loc_182720B:           var_114 = vbNullString
  loc_1827215:           Set var_C0 = Me.FGrid
  loc_182721B:           LateIdCallSt
  loc_1827230:         Else
  loc_1827249:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827251:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_182726B:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1827289:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827291:           var_158 = CVar(CLng(&HB)) 'Long
  loc_18272AB:           var_180 = CStr(Me.FGrid.TextMatrix))
  loc_1827316:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HB)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_182732D:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1827349:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827351:             var_104 = CVar(CLng(4)) 'Long
  loc_1827384:             var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_182738C:             Set var_16C = Me.FGrid
  loc_1827392:             LateIdCallSt
  loc_18273C1:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18273C9:             var_104 = CVar(CLng(&HB)) 'Long
  loc_18273FC:             var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1827404:             Set var_16C = Me.FGrid
  loc_182740A:             LateIdCallSt
  loc_1827439:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827441:             var_104 = CVar(CLng(3)) 'Long
  loc_1827474:             var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_182747C:             Set var_16C = Me.FGrid
  loc_1827482:             LateIdCallSt
  loc_18274B1:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18274B9:             var_104 = CVar(CLng(6)) 'Long
  loc_18274EC:             var_148 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_18274F4:             Set var_16C = Me.FGrid
  loc_18274FA:             LateIdCallSt
  loc_182752A:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1827537:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_182753F:             var_F4 = CVar(CLng(0)) 'Long
  loc_1827549:             var_B0 = CVar(CStr(var_92)) 'String
  loc_1827551:             Set var_A0 = Me.FGrid
  loc_1827557:             LateIdCallSt
  loc_1827569:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_1827571:             var_F4 = CVar(CLng(7)) 'Long
  loc_182758B:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_18275A1:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_18275A8:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_18275B0:               var_F4 = CVar(CLng(7)) 'Long
  loc_18275B5:               var_114 = "1.0"
  loc_18275BF:               Set var_A0 = Me.FGrid
  loc_18275C5:               LateIdCallSt
  loc_18275D0:             End If
  loc_18275D6:             var_D4 = "Code"
  loc_18275E5:             var_A0 = Me.Fields
  loc_1827608:             Set var_138 = Me.Txt
  loc_182760E:             Call 0.Method_Proc_135_71_1827E480 (CInt(1), var_16C, var_180, var_A0, var_114, var_F4, var_D4)
  loc_1827616:             var_F4 = var_16C.Text
  loc_182765F:             Call Proc_135_89_F2240C(CStr(var_A0.Item(var_D4).Value), var_180, CStr(Me.Fields.Item("OutletCode").Value), var_1F4, var_D4)
  loc_182767F:             var_158 = CVar(CLng(8)) 'Long
  loc_18276BA:             LateIdCallSt
  loc_1827727:             Set var_138 = Me.Txt
  loc_182772D:             Call 0.Method_Proc_135_71_1827E480 (CInt(1), var_16C, var_180, Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)
  loc_1827735:             var_158 = var_16C.Text
  loc_182777E:             Call Proc_135_89_F2240C(CStr(Me.Fields.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value), var_1F4, CVar(CLng(Me.FGrid.Row)))
  loc_1827796:             var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18277D9:             LateIdCallSt
  loc_182783E:             var_134 = CVar(Proc_6_38_E69628(global_132, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)) 'String
  loc_182784C:             LateIdCallSt
  loc_1827892:             var_134 = CVar(Proc_6_38_E69628(global_136, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(9)))) 'String
  loc_182789A:             Set var_C0 = Me.FGrid
  loc_18278A0:             LateIdCallSt
  loc_18278D1:             var_F4 = CVar(CLng(&H17)) 'Long
  loc_18278E4:             Set var_A0 = Me.Txt
  loc_18278EA:             Call 0.Method_Proc_135_71_1827E480 (CInt(3), var_C0, var_C4, var_F4, CVar(CLng(Me.FGrid.Row)), var_C0, var_134)
  loc_18278F2:             var_114 = var_C0.Tag
  loc_18278FA:             var_134 = CVar(var_C4) 'String
  loc_1827908:             LateIdCallSt
  loc_182792C:             var_134 = Me.FGrid.Row
  loc_182796D:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_134)), Me.FGrid, var_134)) 'String
  loc_182797B:             LateIdCallSt
  loc_18279E0:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_18279EE:             LateIdCallSt
  loc_1827A53:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1827A61:             LateIdCallSt
  loc_1827A7F:             Set var_138 = Me.FGrid
  loc_1827A85:             var_134 = var_138.Row
  loc_1827AC6:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(var_134)), Me.FGrid, var_148)) 'String
  loc_1827AD4:             LateIdCallSt
  loc_1827B10:             var_A0 = Me.Fields
  loc_1827B20:             var_B0 = CVar(var_A0.Item("TaxStru")) 'Address
  loc_1827B29:             var_C4 = Proc_6_38_E69628(var_B0, "Select * from taxStru where code='", var_134, -1, var_138, Me.FGrid)
  loc_1827B3D:             unk_55277D.Execute var_148 & var_C4 & "'", var_A0, var_B0
  loc_1827B48:             Set var_98 = var_138
  loc_1827B76:             If (var_98.RecordCount > 0) Then
  loc_1827B9C:               var_D4 = "Rate"
  loc_1827BB0:               var_C0 = var_98.Fields.Item(var_D4)
  loc_1827BBF:               Proc_6_39_E7D3A0(var_134, CVar(var_C0), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)))
  loc_1827BC8:               var_17C = CVar(CStr(var_134)) 'String
  loc_1827BD0:               Set var_16C = Me.FGrid
  loc_1827BD6:               LateIdCallSt
  loc_1827BF2:             End If
  loc_1827BF7:             Call Proc_135_84_165F774(&H32, var_16C, var_17C)
  loc_1827BFC:           End If
  loc_1827BFC:         End If
  loc_1827BFF:       Else
  loc_1827C06:         If (var_B4 = CLng(7)) Then
  loc_1827C13:           Set var_A0 = Me.TxtGrid
  loc_1827C19:           Call 0.Method_Proc_135_71_1827E480 (arg_C, var_C0, var_F4)
  loc_1827C31:           If Not(IsNumeric(CVar(var_C0))) Then
  loc_1827C45:             Set var_A0 = Me.TxtGrid
  loc_1827C4B:             Call 0.Method_Proc_135_71_1827E480 (arg_C, var_C0, CStr(0))
  loc_1827C53:             var_C0.Text = var_D4
  loc_1827C62:           End If
  loc_1827C6F:           Set var_A0 = Me.TxtGrid
  loc_1827C75:           Call 0.Method_Proc_135_71_1827E480 (arg_C, var_C0)
  loc_1827C95:           var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827CAD:           var_104 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1827CE7:           LateIdCallSt
  loc_1827D10:           Call Proc_135_84_165F774(&H32, Me.FGrid, CVar(CStr(Format(CVar(var_C0.Text), "0.00"))), 1)
  loc_1827D18:         Else
  loc_1827D1F:           If (var_B4 = CLng(8)) Then
  loc_1827D2C:             Set var_A0 = Me.TxtGrid
  loc_1827D32:             Call 0.Method_Proc_135_71_1827E480 (arg_C, var_C0, 1)
  loc_1827D4A:             If Not(IsNumeric(CVar(var_C0))) Then
  loc_1827D51:               var_C4 = CStr(0)
  loc_1827D5E:               Set var_A0 = Me.TxtGrid
  loc_1827D64:               Call 0.Method_Proc_135_71_1827E480 (arg_C, var_C0, var_C4)
  loc_1827D6C:               var_C0.Text = var_104
  loc_1827D7B:             End If
  loc_1827D88:             Set var_A0 = Me.TxtGrid
  loc_1827D8E:             Call 0.Method_Proc_135_71_1827E480 (arg_C, var_C0, var_C4)
  loc_1827D96:             var_E4 = var_C0.Text
  loc_1827DB9:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827DD1:             var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1827E0C:             LateIdCallSt
  loc_1827E38:             Call Proc_135_84_165F774(&H32, Me.FGrid, CVar(CStr(Format(CVar(Val(var_C4)), "0.00"))), 1, 1)
  loc_1827E3D:           End If
  loc_1827E3D:         End If
  loc_1827E3D:       End If
  loc_1827E3D:     End If
  loc_1827E3D:   End If
  loc_1827E3D: End If
  loc_1827E42: Proc_135_71_1827E48 = &HFF
End Sub

Public Sub Proc_135_72_17E34F8
  'Data Table: 552758
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_B8 As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim unk_55277D As Connection15
  Dim var_138 As Recordset15
  Dim var_13C As Variant
  Dim var_140 As String
  Dim var_134 As Variant
  Dim var_CC As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Variant
  Dim var_120 As Variant
  Dim var_160 As Variant
  Dim var_88 As Recordset15
  Dim var_18C As Variant
  Dim var_8E As Integer
  Dim var_9E As Integer
  Dim var_9A As Integer
  Dim var_170 As Variant
  loc_17E138C: On Error Goto loc_17E34A4
  loc_17E139C: Me.lblTable.Caption = vbNullString
  loc_17E13BB: If (Me.RecordCount > 0) Then
  loc_17E13FD:   var_EC = "Select S.* From Sale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_17E1414:   unk_55277D.Execute CStr(var_EC & "'"), var_130, -1
  loc_17E143C:   Set var_138 = var_134 
  loc_17E1479:   Set var_134 = Me.Txt
  loc_17E147F:   Call 0.Method_Proc_135_72_17E34F80 (CInt(2), var_13C)
  loc_17E1487:   var_13C.Text = CStr(var_138.Fields.Item("DocID").Value)
  loc_17E14B7:   var_BC = var_138.Fields.Item("vType")
  loc_17E14BF:   var_CC = var_BC.Value
  loc_17E14E5:   var_DC = 0
  loc_17E1515:   unk_55277D.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_CC) & "'", var_CC, -1
  loc_17E151D:   var_A4 = var_A4.Fields
  loc_17E1525:   var_DC = var_BC.Item(var_BC)
  loc_17E152D:   var_134 = var_134.Value
  loc_17E153C:   global_116 = CStr(var_EC)
  loc_17E1592:   Set var_134 = Me.Txt
  loc_17E1598:   Call 0.Method_Proc_135_72_17E34F80 (CInt(0), var_13C, CStr(var_138.Fields.Item("VNo").Value))
  loc_17E15A0:   var_13C.Text = var_EC
  loc_17E15CD:   var_BC = var_138.Fields.Item("VDate")
  loc_17E1608:   Set var_134 = Me.Txt
  loc_17E160E:   Call 0.Method_Proc_135_72_17E34F80 (CInt(1), var_13C, CStr(Format(CVar(var_BC), "DD/MMM/YYYY")))
  loc_17E1616:   var_13C.Text = 1
  loc_17E163B:   Set var_A4 = Me.Txt
  loc_17E1641:   Call 0.Method_Proc_135_72_17E34F80 (CInt(1), var_BC)
  loc_17E1673:   Call Proc_135_83_17C60A8(CDate(Format(CVar(var_BC), "DD/MMM/YYYY")), 1, 1)
  loc_17E16B6:   Set var_134 = Me.LblVPrefix
  loc_17E16BC:   var_134.Caption = CStr(var_138.Fields.Item("vPrefix").Value)
  loc_17E1701:   global_124 = CStr(var_138.Fields.Item("KOTNo").Value)
  loc_17E1723:   If (global_192 = "Hall") Then
  loc_17E1762:     var_EC = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_138.Fields.Item("RoomNo").Value 
  loc_17E1779:     unk_55277D.Execute CStr(var_EC & "'"), var_130, -1
  loc_17E1784:     Set var_8C = var_134
  loc_17E17B2:     If (var_8C.RecordCount > 0) Then
  loc_17E17F4:       Call 0.Method_Proc_135_72_17E34F80 (CInt(3), var_13C, CStr(var_8C.Fields.Item(0).Value))
  loc_17E17FC:       var_13C.Text = Me.Txt
  loc_17E1812:     End If
  loc_17E1815:   Else
  loc_17E184B:     Set var_134 = Me.Txt
  loc_17E1851:     Call 0.Method_Proc_135_72_17E34F80 (CInt(3), var_13C)
  loc_17E1859:     var_13C.Text = Proc_6_38_E69628(CVar(var_138.Fields.Item("RoomNo")), 1)
  loc_17E186D:   End If
  loc_17E18A3:   Set var_134 = Me.Txt
  loc_17E18A9:   Call 0.Method_Proc_135_72_17E34F80 (CInt(3), var_13C)
  loc_17E18B1:   var_13C.Tag = Proc_6_38_E69628(CVar(var_138.Fields.Item("RoomNo")))
  loc_17E18EB:   Proc_6_39_E7D3A0(var_EC, CVar(var_138.Fields.Item("GuarAtt")))
  loc_17E1902:   Set var_134 = Me.Txt
  loc_17E1908:   Call 0.Method_Proc_135_72_17E34F80 (CInt(4), var_13C)
  loc_17E1910:   var_13C.Text = CStr(var_EC)
  loc_17E193F:   var_BC = var_138.Fields.Item("VTIME")
  loc_17E197A:   Set var_134 = Me.Txt
  loc_17E1980:   Call 0.Method_Proc_135_72_17E34F80 (CInt(5), var_13C, CStr(Format(CVar(var_BC), "hh:nn")))
  loc_17E1988:   var_13C.Text = 1
  loc_17E19AD:   Set var_A4 = Me.Txt
  loc_17E19B3:   Call 0.Method_Proc_135_72_17E34F80 (CInt(5), var_BC)
  loc_17E19F7:   var_130 = "Select Name From SessionMast where '" & CDate(CDate(Format(CVar(var_BC), "HH:MM"))) 
  loc_17E1A0E:   unk_55277D.Execute CStr(var_130 & "' between cdate(fromtime) and cdate(toTime)"), var_180, -1
  loc_17E1A19:   Set var_94 = var_134
  loc_17E1A4E:   If (Me.Recordset15.RecordCount > 0) Then
  loc_17E1A83:     Set var_134 = Me.lblSession
  loc_17E1A89:     var_134.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")), var_134, 1)
  loc_17E1A9B:   End If
  loc_17E1A9D:   Set var_138 = Nothing 
  loc_17E1AF7:   unk_55277D.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_130, -1
  loc_17E1B02:   Set var_88 = var_134
  loc_17E1B30:   If (var_88.RecordCount > 0) Then
  loc_17E1B63:     Call Proc_135_83_17C60A8(CDate(var_88.Fields.Item("SunAppDate").Value), var_134, 1)
  loc_17E1B72:     ' Referenced from: 17E200B
  loc_17E1B81:     If Not(var_88.EOF) Then
  loc_17E1BE4:       Set var_188 = Me.LblCap
  loc_17E1BEA:       Call 0.Method_Proc_135_72_17E34F80 (CInt(var_88.Fields.Item("SNo").Value), var_18C, CStr(var_88.Fields.Item("SunCode").Value))
  loc_17E1BF2:       var_18C.Tag = 1
  loc_17E1C70:       Set var_188 = Me.TxtPer
  loc_17E1C76:       Call 0.Method_Proc_135_72_17E34F80 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E1C7E:       var_18C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17E1CFC:       Set var_188 = Me.LblCap
  loc_17E1D02:       Call 0.Method_Proc_135_72_17E34F80 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E1D0A:       var_18C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17E1D88:       Set var_188 = Me.LblAt
  loc_17E1D8E:       Call 0.Method_Proc_135_72_17E34F80 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E1D96:       var_18C.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_17E1E14:       Set var_188 = Me.TxtGt
  loc_17E1E1A:       Call 0.Method_Proc_135_72_17E34F80 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E1E22:       var_18C.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_17E1EA0:       Set var_188 = Me.TxtPer
  loc_17E1EA6:       Call 0.Method_Proc_135_72_17E34F80 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E1EAE:       var_18C.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_17E1F0A:       var_130 = var_88.Fields.Item("SNo").Value
  loc_17E1F1E:       var_EC = "0.00"
  loc_17E1F45:       Set var_188 = Me.TxtGt
  loc_17E1F4B:       Call 0.Method_Proc_135_72_17E34F80 (CInt(var_130), var_18C, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_EC)))
  loc_17E1F53:       var_18C.Text = 1
  loc_17E1F8A:       var_BC = var_88.Fields.Item("BaseAmount")
  loc_17E1F99:       Proc_6_39_E7D3A0(var_EC, CVar(var_BC))
  loc_17E1FA1:       var_110 = CStr(var_EC)
  loc_17E1FBA:       var_134 = var_88.Fields
  loc_17E1FC2:       var_13C = var_134.Item("SNo")
  loc_17E1FD7:       Set var_188 = Me.LblDummy
  loc_17E1FDD:       Call 0.Method_Proc_135_72_17E34F80 (CInt(var_13C.Value), var_18C, var_110)
  loc_17E1FE5:       var_18C.Caption = 1
  loc_17E2006:       var_88.MoveNext
  loc_17E200B:       GoTo loc_17E1B72
  loc_17E200E:     End If
  loc_17E200E:   End If
  loc_17E202C:   Set var_A4 = Me.Txt
  loc_17E2032:   Call 0.Method_Proc_135_72_17E34F80 (CInt(2), var_BC, var_110, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='")
  loc_17E203A:   var_CC = var_BC.Text
  loc_17E2043:   var_140 = -1 & var_110
  loc_17E2053:   unk_55277D.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_CC) & "'" & "' And PayType='Cash'", var_134, var_134
  loc_17E205E:   Set var_8C = var_134
  loc_17E2084:   Set var_A4 = Me.Txt
  loc_17E208A:   Call 0.Method_Proc_135_72_17E34F80 (CInt(6), var_BC)
  loc_17E2092:   var_BC.Text = vbNullString
  loc_17E20AC:   Set var_A4 = Me.Txt
  loc_17E20B2:   Call 0.Method_Proc_135_72_17E34F80 (CInt(7), var_BC)
  loc_17E20BA:   var_BC.Text = vbNullString
  loc_17E20D4:   Set var_A4 = Me.Txt
  loc_17E20DA:   Call 0.Method_Proc_135_72_17E34F80 (CInt(8), var_BC)
  loc_17E20E2:   var_BC.Text = vbNullString
  loc_17E2102:   If (var_8C.RecordCount > 0) Then
  loc_17E2157:     Set var_134 = Me.Txt
  loc_17E215D:     Call 0.Method_Proc_135_72_17E34F80 (CInt(6), var_13C, CStr(Format(CVar(var_8C.Fields.Item("Amount")), "0.00")))
  loc_17E2165:     var_13C.Text = 1
  loc_17E21D1:     Set var_134 = Me.Txt
  loc_17E21D7:     Call 0.Method_Proc_135_72_17E34F80 (CInt(7), var_13C, CStr(Format(CVar(var_8C.Fields.Item("TipAmt")), "0.00")))
  loc_17E21DF:     var_13C.Text = 1
  loc_17E21F9:   End If
  loc_17E2208:   Me.FGrid.Redraw = False
  loc_17E2223:   Me.FGrid.Rows = 1
  loc_17E222D:   var_8E = 1
  loc_17E223D:   var_DC = "Select S.*,I.Name as ItemName,I.SChrgApp,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,IC.Code as TaxCode,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And I.RestCODE=S.ItemRestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_17E2286:   unk_55277D.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_130, -1
  loc_17E2291:   Set var_88 = var_134
  loc_17E22BF:   If (var_88.RecordCount > 0) Then
  loc_17E22CF:     ReDim Preserve var_98(0 To 0)
  loc_17E22D9:     ' Referenced from: 17E2E03
  loc_17E22E8:     If Not(var_88.EOF) Then
  loc_17E22EB:       var_B8 = vbNullString
  loc_17E22F5:       Set var_A4 = Me.FGrid
  loc_17E2313:       For var_190 = 0 To CInt(UBound(var_98, 1)): var_9C = var_190 'Integer
  loc_17E2324:         var_B8 = "RoomNo"
  loc_17E2357:         If (var_134 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_B8)), var_98(CLng(var_9C)), 0, FGrid.DispID_10000, var_B8)) Then
  loc_17E235C:           var_9E = &HFF
  loc_17E235F:         End If
  loc_17E2362:       Next var_190 'Integer
  loc_17E236D:       If (var_9E = 0) Then
  loc_17E237C:         ReDim Preserve var_98(0 To CLng(var_9A))
  loc_17E23B8:         var_98(CLng(var_9A)) = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")))
  loc_17E23C8:         var_9A = (var_9A + 1)
  loc_17E23CB:       End If
  loc_17E23CD:       var_9E = 0
  loc_17E23D4:       Set var_194 = Me.FGrid
  loc_17E23DB:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_17E23E3:       var_120 = CVar(CLng(0)) 'Long
  loc_17E2413:       var_EC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_17E241A:       LateIdCallSt
  loc_17E2434:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_17E243C:       var_120 = CVar(CLng(&HB)) 'Long
  loc_17E246C:       var_EC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_17E2473:       LateIdCallSt
  loc_17E24C2:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_8E)), var_194, var_EC, CVar(CLng(3)), CVar(CLng(var_8E)))) 'String
  loc_17E24C9:       LateIdCallSt
  loc_17E2514:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_8E)), var_194, var_EC, var_194)) 'String
  loc_17E251B:       LateIdCallSt
  loc_17E2566:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E256D:       LateIdCallSt
  loc_17E259F:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E25A7:       var_170 = CVar(CLng(7)) 'Long
  loc_17E25D4:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_17E25DB:       LateIdCallSt
  loc_17E2611:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E2619:       var_170 = CVar(CLng(8)) 'Long
  loc_17E2646:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_17E264D:       LateIdCallSt
  loc_17E2683:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E268B:       var_170 = CVar(CLng(9)) 'Long
  loc_17E26B8:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_17E26BF:       LateIdCallSt
  loc_17E26F5:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E26FD:       var_170 = CVar(CLng(&HA)) 'Long
  loc_17E272A:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_17E2731:       LateIdCallSt
  loc_17E2767:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E276F:       var_170 = CVar(CLng(&HE)) 'Long
  loc_17E279C:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_17E27A3:       LateIdCallSt
  loc_17E27D9:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E27E1:       var_170 = CVar(CLng(&HF)) 'Long
  loc_17E280E:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_17E2815:       LateIdCallSt
  loc_17E284B:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E2853:       var_170 = CVar(CLng(&H10)) 'Long
  loc_17E2880:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_17E2887:       LateIdCallSt
  loc_17E28BD:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E28C5:       var_170 = CVar(CLng(&H11)) 'Long
  loc_17E28F2:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_17E28F9:       LateIdCallSt
  loc_17E296B:       LateIdCallSt
  loc_17E29BA:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_194, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_17E29C1:       LateIdCallSt
  loc_17E2A0C:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_194, var_EC, CVar(CLng(&H12)))) 'String
  loc_17E2A13:       LateIdCallSt
  loc_17E2A5E:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E2A65:       LateIdCallSt
  loc_17E2AB0:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E2AB7:       LateIdCallSt
  loc_17E2AF8:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_17E2B00:       var_120 = CVar(CLng(5)) 'Long
  loc_17E2B1B:       var_110 = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_194, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_194, var_EC, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_17E2B26:       var_130 = CVar(CStr(Val(var_110))) 'String
  loc_17E2B2D:       LateIdCallSt
  loc_17E2B83:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_194, var_130, CVar(CLng(&HD)))) 'String
  loc_17E2B8A:       LateIdCallSt
  loc_17E2BD3:       Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_194, var_EC)
  loc_17E2BE3:       LateIdCallSt
  loc_17E2C30:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_194, CVar(CStr(var_EC)))) 'String
  loc_17E2C37:       LateIdCallSt
  loc_17E2C82:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E2C89:       LateIdCallSt
  loc_17E2CD2:       Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_194, var_EC)
  loc_17E2CE2:       LateIdCallSt
  loc_17E2D2F:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_194, CVar(CStr(var_EC)))) 'String
  loc_17E2D36:       LateIdCallSt
  loc_17E2D81:       var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E2D88:       LateIdCallSt
  loc_17E2D9E:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_17E2DC2:       var_BC = var_88.Fields.Item("SChrgApp")
  loc_17E2DD3:       var_EC = CVar(Proc_6_38_E69628(CVar(var_BC), CVar(CLng(&H1B)), var_DC, var_194, var_EC)) 'String
  loc_17E2DDA:       LateIdCallSt
  loc_17E2DEE:       Set var_194 = Nothing 
  loc_17E2DF8:       var_8E = (var_8E + 1)
  loc_17E2DFE:       var_88.MoveNext
  loc_17E2E03:       GoTo loc_17E22D9
  loc_17E2E06:     End If
  loc_17E2E19:     Me.FGrid.FixedRows = 1
  loc_17E2E2F:     Set var_A4 = Me.Txt
  loc_17E2E35:     Call 0.Method_Proc_135_72_17E34F80 (CInt(3), var_BC, vbNullString, var_8E, var_194, var_EC)
  loc_17E2E56:     For var_1B8 = 0 To CInt(UBound(var_98, 1)): var_9A = var_1B8 'Integer
  loc_17E2E6A:       Set var_A4 = Me.Txt
  loc_17E2E70:       Call 0.Method_Proc_135_72_17E34F80 (CInt(3), var_BC, var_110, 0)
  loc_17E2E78:       var_194 = var_DC
  loc_17E2E9E:       Set var_134 = Me.Txt
  loc_17E2EA4:       Call 0.Method_Proc_135_72_17E34F80 (CInt(3), var_13C, var_110 & var_98(CLng(var_9A)) & ",")
  loc_17E2EAC:       var_13C.Text = var_130
  loc_17E2EC8:     Next var_1B8 'Integer
  loc_17E2ED8:     Set var_A4 = Me.Txt
  loc_17E2EDE:     Call 0.Method_Proc_135_72_17E34F80 (CInt(3))
  loc_17E2EEE:     Set var_134 = Me.Txt
  loc_17E2EF4:     Call 0.Method_Proc_135_72_17E34F80 (CInt(3), var_13C)
  loc_17E2F14:     var_130 = (Len(Trim(CVar(var_13C))) - 1)
  loc_17E2F27:     var_160 = CVar(var_BC) 'Address
  loc_17E2F45:     Set var_188 = Me.Txt
  loc_17E2F4B:     Call 0.Method_Proc_135_72_17E34F80 (CInt(3), var_18C)
  loc_17E2F53:     var_18C.Text = CStr(Mid(var_160, 1, var_130))
  loc_17E2F73:   End If
  loc_17E2F81:   Me.FGrid.Redraw = True
  loc_17E2F9D:   var_EC = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,Sundry " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_17E2FD6:   var_130 = var_EC & Me.Fields.Item("SearchCode").Value & "'" 
  loc_17E2FE4:   unk_55277D.Execute CStr(var_130), var_160, -1
  loc_17E2FEF:   Set var_88 = var_134
  loc_17E301E:   Me.FGCat.Rows = 1
  loc_17E302C:   var_A8 = var_88.RecordCount
  loc_17E303A:   If (var_A8 > 0) Then
  loc_17E303D:     ' Referenced from: 17E3400
  loc_17E304C:     If Not(var_88.EOF) Then
  loc_17E3056:       var_B8 = vbNullString
  loc_17E3080:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E3088:       var_120 = CVar(CLng(0)) 'Long
  loc_17E30B8:       var_10C = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_17E30BF:       LateIdCallSt
  loc_17E30F2:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E30FA:       var_120 = CVar(CLng(1)) 'Long
  loc_17E312A:       var_10C = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_17E3131:       LateIdCallSt
  loc_17E3164:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E316C:       var_120 = CVar(CLng(2)) 'Long
  loc_17E319C:       var_10C = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_17E31A3:       LateIdCallSt
  loc_17E31D6:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E31DE:       var_120 = CVar(CLng(3)) 'Long
  loc_17E320E:       var_10C = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_17E3215:       LateIdCallSt
  loc_17E3248:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E3250:       var_120 = CVar(CLng(4)) 'Long
  loc_17E3280:       var_10C = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_17E3287:       LateIdCallSt
  loc_17E32BA:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E32C2:       var_120 = CVar(CLng(5)) 'Long
  loc_17E32F2:       var_10C = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_17E32F9:       LateIdCallSt
  loc_17E332C:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E3334:       var_120 = CVar(CLng(6)) 'Long
  loc_17E3364:       var_10C = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_17E336B:       LateIdCallSt
  loc_17E338F:       var_EC = Me.FGCat.Rows
  loc_17E339E:       var_DC = CVar((CLng(var_EC) - 1)) 'Long
  loc_17E33A6:       var_120 = CVar(CLng(7)) 'Long
  loc_17E33D3:       var_10C = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Sundry")), var_120, "'", Me.FGCat, var_10C, var_120, "'")) 'String
  loc_17E33DA:       LateIdCallSt
  loc_17E33F4:       Set var_1CC = Nothing 
  loc_17E33FB:       var_88.MoveNext
  loc_17E3400:       GoTo loc_17E303D
  loc_17E3403:     End If
  loc_17E3403:   End If
  loc_17E3409:   If (var_8E = 1) Then
  loc_17E341F:     Me.FGrid.Rows = 1
  loc_17E3445:     var_CC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_1CC, var_10C, var_1CC))) 'String
  loc_17E344D:     Set var_BC = Me.FGrid
  loc_17E347A:     Me.FGrid.FixedRows = 1
  loc_17E3482:   End If
  loc_17E3485: Else
  loc_17E3485:   Call Proc_135_74_10ADAF8(FGrid.DispID_10000, var_CC, var_10C, var_120)
  loc_17E348A: End If
  loc_17E348A: Call Proc_135_76_EF78C8("'", var_1CC)
  loc_17E3494: Set var_88 = Nothing
  loc_17E349C: Set var_94 = Nothing
  loc_17E34A3: Exit Sub
  loc_17E34A4: ' Referenced from: 17E138C
  loc_17E34AC: Set var_A4 = Err()
  loc_17E34B2: Call 0.Method_arg_1C (var_A8)
  loc_17E34C3: If (var_A8 = &HBCD) Then
  loc_17E34DF:   MsgBox("Record is Deleted by somebody", &H40, var_EC, var_10C, var_130)
  loc_17E34EF:   Exit Sub
  loc_17E34F0: End If
  loc_17E34F0: Proc_6_60_E63754(var_10C)
  loc_17E34F5: Exit Sub
End Sub

Public Sub Proc_135_73_110A8D4
  'Data Table: 552758
  Dim var_AC As Variant
  Dim var_D0 As TextBox
  Dim unk_55277D As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_108 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D4 As String
  loc_110A5B9: Set var_9C = Me.TopCtrl1
  loc_110A5BF: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(&HFF)
  loc_110A5D4: If ( = "Add") Then
  loc_110A604:   Set var_9C = Me.Txt
  loc_110A60A:   Call 0.Method_Proc_135_73_110A8D40 (CInt(2), var_D0, var_D4, "Select Count(*) From Sale1 Where DocID='", var_BC, -1)
  loc_110A62B:   unk_55277D.Execute var_E4 & var_D4 & "'", 0, var_F8
  loc_110A63B:    = var_E4.Item()
  loc_110A643:    = var_F8.Value
  loc_110A670:   If (var_D0.Text.Fields > 0) Then
  loc_110A679:     Call 0.Method_arg_50 (var_D4)
  loc_110A69A:     MsgBox("Duplicate Bill No.", &H40, CVar(var_D4), var_118, var_128)
  loc_110A6B0:     Call Proc_135_78_10E7CA0(MemVar_1F95044)
  loc_110A6C3:     Set var_9C = Me.Txt
  loc_110A6C9:     Call 0.Method_Proc_135_73_110A8D40 (CInt(2), var_D0)
  loc_110A6D1:     var_D0.Text = var_D4
  loc_110A6E5:     Proc_135_73_110A8D4 = 0
  loc_110A6EB:   End If
  loc_110A6EB: End If
  loc_110A710: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_110A71A:   var_AC = CVar(CLng(var_88)) 'Long
  loc_110A722:   var_108 = CVar(CLng(4)) 'Long
  loc_110A742:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_110A75E:   If CBool(var_118 <> vbNullString) Then
  loc_110A765:     var_AC = CVar(CLng(var_88)) 'Long
  loc_110A76D:     var_108 = CVar(CLng(7)) 'Long
  loc_110A79D:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_110A7C5:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_110A7EB:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_110A7F7:       Set var_9C = Me.FGrid
  loc_110A80D:       Proc_135_73_110A8D4 = 0
  loc_110A813:     End If
  loc_110A817:     var_AC = CVar(CLng(var_88)) 'Long
  loc_110A81F:     var_108 = CVar(CLng(8)) 'Long
  loc_110A84F:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_110A877:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_110A89D:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_110A8A9:       Set var_9C = Me.FGrid
  loc_110A8BF:       Proc_135_73_110A8D4 = 0
  loc_110A8C5:     End If
  loc_110A8C5:   End If
  loc_110A8C8: Next var_12C 'Integer
  loc_110A8CD: Proc_135_73_110A8D4 = 
End Sub

Public Sub Proc_135_74_10ADAF8
  'Data Table: 552758
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_10AD82D: Me.LblVPrefix.Caption = vbNullString
  loc_10AD843: Set var_8C = Me.Txt
  loc_10AD849: Call 0.Method_Proc_135_74_10ADAF8C (var_8E, var_86)
  loc_10AD859: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10AD86F:   Set var_8C = Me.Txt
  loc_10AD875:   Call 0.Method_Proc_135_74_10ADAF80 (CInt(var_86), var_98)
  loc_10AD87D:   var_98.Text = vbNullString
  loc_10AD899:   Set var_8C = Me.Txt
  loc_10AD89F:   Call 0.Method_Proc_135_74_10ADAF80 (CInt(var_86), var_98)
  loc_10AD8A7:   var_98.Tag = vbNullString
  loc_10AD8B6: Next var_92 'Byte
  loc_10AD8CF: Me.FGrid.Rows = 1
  loc_10AD8E4: Me.lblTable.Caption = vbNullString
  loc_10AD90A: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_10AD912: Set var_98 = Me.FGrid
  loc_10AD92C: var_A8 = 1
  loc_10AD938: var_DC = CVar(CLng(1)) 'Long
  loc_10AD94B: Set var_8C = Me.FGrid
  loc_10AD951: LateIdCallSt
  loc_10AD95C: var_A8 = 1
  loc_10AD968: var_DC = CVar(CLng(2)) 'Long
  loc_10AD97B: Set var_8C = Me.FGrid
  loc_10AD981: LateIdCallSt
  loc_10AD99F: Me.FGrid.FixedRows = 1
  loc_10AD9BB: Call 0.Method_Proc_135_74_10ADAF8C (var_8E, var_86, CByte(1), Me.TxtPer)
  loc_10AD9C8: For var_100 = var_C8 To CByte(var_8E): FGrid.DispID_10000 = var_100 'Byte
  loc_10AD9DE:   Set var_8C = Me.TxtPer
  loc_10AD9E4:   Call 0.Method_Proc_135_74_10ADAF80 (CInt(var_86), var_98, vbNullString)
  loc_10AD9EC:   var_98.Text = var_C8
  loc_10AD9FB: Next var_100 'Byte
  loc_10ADA0F: Set var_8C = Me.TxtGt
  loc_10ADA15: Call 0.Method_Proc_135_74_10ADAF8C (var_8E, var_86)
  loc_10ADA22: For var_104 =  To CByte(var_8E): CByte(1) = var_104 'Byte
  loc_10ADA38:   Set var_8C = Me.TxtGt
  loc_10ADA3E:   Call 0.Method_Proc_135_74_10ADAF80 (CInt(var_86), var_98)
  loc_10ADA46:   var_98.Text = vbNullString
  loc_10ADA55: Next var_104 'Byte
  loc_10ADA69: Set var_8C = Me.Txt
  loc_10ADA6F: Call 0.Method_Proc_135_74_10ADAF80 (CInt(5), var_98)
  loc_10ADA77: var_98.Text = "00:00"
  loc_10ADA91: Set var_8C = Me.Txt
  loc_10ADA97: Call 0.Method_Proc_135_74_10ADAF80 (CInt(5), var_98)
  loc_10ADA9F: var_98.Tag = vbNullString
  loc_10ADABD: Set var_8C = Me.Txt
  loc_10ADAC3: Call 0.Method_Proc_135_74_10ADAF80 (CInt(4), var_98)
  loc_10ADACB: var_98.Text = CStr(1)
  loc_10ADAED: Me.FGCat.Rows = 0
  loc_10ADAF5: Exit Sub
End Sub

Public Sub Proc_135_75_100601C(arg_C) '100601C
  'Data Table: 552758
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_1005E12: Set var_8C = Me.Txt
  loc_1005E18: Call 0.Method_Proc_135_75_100601CC (var_8E, var_86)
  loc_1005E28: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1005E3E:   Set var_8C = Me.Txt
  loc_1005E44:   Call 0.Method_Proc_135_75_100601C0 (CInt(var_86), var_98)
  loc_1005E4C:   var_98.Enabled = arg_C
  loc_1005E5B: Next var_92 'Byte
  loc_1005E6F: Set var_8C = Me.TxtPer
  loc_1005E75: Call 0.Method_Proc_135_75_100601CC (var_8E, var_86)
  loc_1005E82: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_1005E98:   Set var_8C = Me.TxtPer
  loc_1005E9E:   Call 0.Method_Proc_135_75_100601C0 (CInt(var_86), var_98)
  loc_1005EA6:   var_98.Enabled = arg_C
  loc_1005EB5: Next var_9C 'Byte
  loc_1005EC9: Set var_8C = Me.TxtGt
  loc_1005ECF: Call 0.Method_Proc_135_75_100601CC (var_8E, var_86)
  loc_1005EDC: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_1005EF2:   Set var_8C = Me.TxtGt
  loc_1005EF8:   Call 0.Method_Proc_135_75_100601C0 (CInt(var_86), var_98)
  loc_1005F00:   var_98.Enabled = arg_C
  loc_1005F0F: Next var_A0 'Byte
  loc_1005F22: Set var_8C = Me.Txt
  loc_1005F28: Call 0.Method_Proc_135_75_100601C0 (CInt(2), var_98)
  loc_1005F30: var_98.Enabled = False
  loc_1005F49: Set var_8C = Me.Txt
  loc_1005F4F: Call 0.Method_Proc_135_75_100601C0 (CInt(5), var_98)
  loc_1005F57: var_98.Enabled = False
  loc_1005F70: Set var_8C = Me.Txt
  loc_1005F76: Call 0.Method_Proc_135_75_100601C0 (CInt(1), var_98)
  loc_1005F7E: var_98.Enabled = False
  loc_1005F97: Set var_8C = Me.Txt
  loc_1005F9D: Call 0.Method_Proc_135_75_100601C0 (CInt(0), var_98)
  loc_1005FA5: var_98.Enabled = False
  loc_1005FBE: Set var_8C = Me.Txt
  loc_1005FC4: Call 0.Method_Proc_135_75_100601C0 (CInt(8), var_98)
  loc_1005FCC: var_98.Enabled = False
  loc_1005FE6: Me.Command1.Enabled = Not(arg_C)
  loc_1005FFC: Me.Command2.Enabled = Not(arg_C)
  loc_1006011: Me.CmdSave.Enabled = arg_C
  loc_1006019: Exit Sub
  loc_100601A: Exit Sub
End Sub

Public Sub Proc_135_76_EF78C8
  'Data Table: 552758
  loc_EF7808: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF781A:   Me.DGItem.Visible = False
  loc_EF7822: End If
  loc_EF783E: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF7850:   Me.DGTable.Visible = False
  loc_EF7858: End If
  loc_EF7874: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF7886:   Me.DGRest.Visible = False
  loc_EF788E: End If
  loc_EF78AA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF78BC:   Me.FGPoint.Visible = False
  loc_EF78C4: End If
  loc_EF78C4: Exit Sub
  loc_EF78C5: var_A0 = 
End Sub

Public Sub Proc_135_77_F0B888
  'Data Table: 552758
  loc_F0B7AC: Call Proc_135_76_EF78C8()
  loc_F0B7BC: Set var_88 = Me.Txt
  loc_F0B7C2: Call 0.Method_Proc_135_77_F0B8880 (CInt(1))
  loc_F0B7EB: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0B7EE:   Exit Sub
  loc_F0B7EF: End If
  loc_F0B7FA: Set var_88 = Me.Txt
  loc_F0B800: Call 0.Method_Proc_135_77_F0B8880 (CInt(0), var_8C)
  loc_F0B829: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0B82C:   Exit Sub
  loc_F0B82D: End If
  loc_F0B864: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0B867:   Call TopCtrl1_UnknownEvent_19()
  loc_F0B86F: Else
  loc_F0B873:   Call 0.Method_arg_1E8 (var_88)
  loc_F0B87B:   Call var_88.SetFocus
  loc_F0B884: End If
  loc_F0B884: Exit Sub
  loc_F0B885: var_A0 = var_8C
End Sub

Public Sub Proc_135_78_10E7CA0
  'Data Table: 552758
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_2000 As Integer
  loc_10E79C8: var_90 = global_128
  loc_10E79DF: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10E7A10: Set var_A8 = Me.Txt
  loc_10E7A16: Call 0.Method_Proc_135_78_10E7CA00 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E7A25: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10E7A2D: var_EC = -1 & var_CC 
  loc_10E7A41: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E7A4C: Set var_8C = var_134
  loc_10E7A88: If (var_8C.RecordCount > 0) Then
  loc_10E7AC7:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E7AFB:     global_108 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E7B26:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E7B3B:     var_CC = (var_AC.Value + 1)
  loc_10E7B43:     global_112 = CInt(var_CC)
  loc_10E7B54:   End If
  loc_10E7B54: End If
  loc_10E7B7F: var_BC = Space((5 - Len(var_90)))
  loc_10E7B87: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10E7B9B: var_EC = Space((5 - Len(global_108)))
  loc_10E7BA3: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E7BB0: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_108))
  loc_10E7BC9: var_14C = Space((8 - Len(CStr(global_112))))
  loc_10E7BD1: var_15C = (var_130 + var_14C)
  loc_10E7BE0: var_17C = (var_15C + CVar(CStr(global_112)))
  loc_10E7BEB: global_100 = CStr(var_17C)
  loc_10E7C21: Me.LblVPrefix.Caption = global_108
  loc_10E7C3A: Set var_A8 = Me.Txt
  loc_10E7C40: Call 0.Method_Proc_135_78_10E7CA00 (CInt(2), var_AC)
  loc_10E7C48: var_AC.Text = global_100
  loc_10E7C6A: Set var_A8 = Me.Txt
  loc_10E7C70: Call 0.Method_Proc_135_78_10E7CA00 (CInt(0), var_AC)
  loc_10E7C78: var_AC.Text = CStr(global_112)
  loc_10E7C8D: var_88 = global_100
  loc_10E7C95: Set var_8C = Nothing
  loc_10E7C98: Proc_135_78_10E7CA0 = global_112
  loc_10E7C9E: var_2000 = 
End Sub

Public Sub Proc_135_79_10B64D0(arg_C, arg_10, arg_14) '10B64D0
  'Data Table: 552758
  Dim unk_55277D As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B623E: If (arg_C = "RSBIL") Then
  loc_10B6265:   unk_55277D.Execute "Select Distinct DocId,V_Type,V_No From Sale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B6270:   Set var_8C = var_C4
  loc_10B6283:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10B6289: Else
  loc_10B628E:   Proc_135_79_10B64D0 = &HFF
  loc_10B6294: End If
  loc_10B62A8: If (var_8C.RecordCount > 0) Then
  loc_10B62AB:   ' Referenced from: 10B6424
  loc_10B62BA:   If Not(var_8C.EOF) Then
  loc_10B62C5:     If (var_90 = vbNullString) Then
  loc_10B6308:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B630F:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B6341:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B6366:     Else
  loc_10B63A2:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B63C2:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B63EF:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B63F4:       var_90 = CStr(var_11C)
  loc_10B641C:     End If
  loc_10B641F:     var_8C.MoveNext
  loc_10B6424:     GoTo loc_10B62AB
  loc_10B6427:   End If
  loc_10B642D:   Call 0.Method_arg_50 (var_138)
  loc_10B6489:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B648C:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B64BB:   Set var_8C = Nothing
  loc_10B64BE:   Proc_135_79_10B64D0 = 0
  loc_10B64C4: End If
  loc_10B64C9: Proc_135_79_10B64D0 = &HFF
End Sub

Public Sub Proc_135_80_FC2DAC
  'Data Table: 552758
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC2C2F: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FC2C34:   var_92 = 4 'Byte
  loc_FC2C38: End If
  loc_FC2C41: Set var_98 = Me.TxtGrid
  loc_FC2C47: Call 0.Method_Proc_135_80_FC2DAC0 (0, var_B0)
  loc_FC2C6A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC2C9E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC2CC2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC2CC5:     GoTo loc_FC2D97
  loc_FC2CC8:   End If
  loc_FC2CCC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC2CF6:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC2D00:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC2D35:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC2D59:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC2D72:     Set var_98 = Me.TxtGrid
  loc_FC2D78:     Call 0.Method_Proc_135_80_FC2DAC0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC2D80:     var_B0.SetFocus
  loc_FC2D91:     Proc_135_80_FC2DAC = 0
  loc_FC2D97:     ' Referenced from: FC2CC5
  loc_FC2D97:   End If
  loc_FC2D9A: Next var_D4 'Integer
  loc_FC2DA4: Proc_135_80_FC2DAC = &HFF
End Sub

Public Sub Proc_135_81_EABEB4(arg_C) 'EABEB4
  'Data Table: 552758
  Dim var_8C As Recordset15
  loc_EABE2E: IStAdFunc
  loc_EABE35: Set var_8C = arg_C 
  loc_EABE5D: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EABE6D: var_8C.CursorType = 3
  loc_EABE7A: var_8C.LockType = 3
  loc_EABE99: var_8C.Open var_A0, var_B0, -1
  loc_EABEA0: Set var_8C = Nothing 
  loc_EABEA7: Set var_88 = arg_C 
  loc_EABEAB: Proc_135_81_EABEB4 = -1
End Sub

Public Sub Proc_135_82_114C6CC
  'Data Table: 552758
  Dim var_B4 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As String
  Dim var_D8 As String
  loc_114C342: Set global_76 = New 
  loc_114C354: Me.Recordset15.CursorLocation = 3
  loc_114C35F: var_90 = global_192
  loc_114C36A: If (var_90 = "Hall") Then
  loc_114C378:   If (global_180 = "Y") Then
  loc_114C39C:     var_94 = "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') And Code In (Select RoomNo From KOT Where RestCode='" & global_56
  loc_114C3AD:     Me.Open CVar(var_94 & "' ANd RoomCat='HALL' and RoomType='HL' And Pending='Y') Order by T.Code"), CVar(MemVar_1F95044), 3
  loc_114C3BB:   Else
  loc_114C3DE:     Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F95044), 3
  loc_114C3E3:   End If
  loc_114C3EF:   Set var_8C = Me.Label1
  loc_114C3F5:   Call 0.Method_Proc_135_82_114C6CC0 (2, var_C8, "Hall", 1)
  loc_114C3FD:   var_C8.Caption = -1
  loc_114C419:   Set var_8C = Me.DGTable
  loc_114C42A:   Set var_C8 = DGTable.DispID_69
  loc_114C438:   var_C8.Item(1).Caption = "Hall"
  loc_114C44F:   global_132 = "HALL"
  loc_114C459:   global_136 = "HL"
  loc_114C460: Else
  loc_114C468:   If Not (var_90 = "Fast Food") Then
  loc_114C473:     If (var_90 = "Outlet") Then
  loc_114C476:     End If
  loc_114C482:     Set var_8C = Me.Label1
  loc_114C488:     Call 0.Method_Proc_135_82_114C6CC0 (2, var_C8, "Table #")
  loc_114C490:     var_C8.Caption = 1
  loc_114C4AC:     Set var_8C = Me.DGTable
  loc_114C4BD:     Set var_C8 = DGTable.DispID_69
  loc_114C4CB:     var_C8.Item(1).Caption = "Table #"
  loc_114C4DF:     var_88 = " Order by Code"
  loc_114C4ED:     If (global_180 = "Y") Then
  loc_114C518:       var_D0 = "Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_56 & "' And Code In (Select RoomNo From KOT Where RestCode='"
  loc_114C529:       var_D8 = var_D0 & global_56 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND DELFLAG='N' AND NCKOT<>'Y') "
  loc_114C53A:       Me.Open CVar(var_D8 & var_88), CVar(MemVar_1F95044), 3
  loc_114C550:     Else
  loc_114C57F:       var_A4 = CVar("Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_56 & "' " & var_88) 'String
  loc_114C589:       Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_114C598:     End If
  loc_114C59E:     global_132 = "REST"
  loc_114C5A8:     global_136 = "TB"
  loc_114C5AF:   Else
  loc_114C5B7:     If (var_90 = "Room Service") Then
  loc_114C5C6:       Set var_8C = Me.Label1
  loc_114C5CC:       Call 0.Method_Proc_135_82_114C6CC0 (2, var_C8, "Room #", 1)
  loc_114C5D4:       var_C8.Caption = -1
  loc_114C5F0:       Set var_8C = Me.DGTable
  loc_114C60F:       DGTable.DispID_69.Item(1).Caption = "Room #"
  loc_114C62B:       If (global_180 = "Y") Then
  loc_114C64F:         var_94 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RestCode='" & global_56
  loc_114C660:         Me.Open CVar(var_94 & "' and RoomType='RO' And Pending='Y' AND VOIDYN='N' AND DELFLAG='N') Order by RC.roomno"), CVar(MemVar_1F95044), 3
  loc_114C66E:       Else
  loc_114C685:         var_B4 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO"
  loc_114C691:         Me.Open var_B4, CVar(MemVar_1F95044), 3
  loc_114C696:       End If
  loc_114C69C:       global_136 = "RO"
  loc_114C6A0:     End If
  loc_114C6A0:   End If
  loc_114C6A0: End If
  loc_114C6A9: CVarUnk
  loc_114C6AE: VerifyVarObj
  loc_114C6B4: Set var_8C = Me.DGTable
  loc_114C6BA: LateIdStAd
  loc_114C6C8: Exit Sub
End Sub

Public Sub Proc_135_83_17C60A8(arg_C) '17C60A8
  'Data Table: 552758
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_EC As Variant
  Dim var_D8 As String
  Dim unk_55277D As Connection15
  Dim var_90 As Variant
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_170 As Integer
  Dim var_134 As String
  Dim var_15C As Variant
  Dim var_160 As Fields15
  Dim var_174 As Variant
  Dim var_88 As Recordset15
  Dim var_158 As Boolean
  Dim var_234 As Variant
  Dim var_D4 As Variant
  Dim var_248 As TextBox
  Dim var_C4 As Variant
  loc_17C40A0: Set var_90 = Me.TxtGt
  loc_17C40A6: Call 0.Method_Proc_135_83_17C60A80 (1, var_94)
  loc_17C40AE: var_96 = var_94.TabIndex
  loc_17C40B6: var_8A = var_96
  loc_17C40CC: Set var_90 = Me.TxtPer
  loc_17C40D2: Call 0.Method_Proc_135_83_17C60A8C (var_96, var_8C)
  loc_17C40DD: For var_9A = var_8A To var_96: 1 = var_9A 'Integer
  loc_17C40EF:   Set var_90 = Me.TxtPer
  loc_17C40F5:   Call 0.Method_Proc_135_83_17C60A80 (var_8C, var_94)
  loc_17C40FD:   var_94.Visible = False
  loc_17C410C: Next var_9A 'Integer
  loc_17C411D: Set var_90 = Me.TxtGt
  loc_17C4123: Call 0.Method_Proc_135_83_17C60A8C (var_96, var_8C)
  loc_17C412E: For var_9E =  To var_96: 1 = var_9E 'Integer
  loc_17C4140:   Set var_90 = Me.TxtGt
  loc_17C4146:   Call 0.Method_Proc_135_83_17C60A80 (var_8C, var_94)
  loc_17C414E:   var_94.Visible = False
  loc_17C415D: Next var_9E 'Integer
  loc_17C416E: Set var_90 = Me.LblCap
  loc_17C4174: Call 0.Method_Proc_135_83_17C60A8C (var_96, var_8C)
  loc_17C417F: For var_A2 =  To var_96: 1 = var_A2 'Integer
  loc_17C4191:   Set var_90 = Me.LblCap
  loc_17C4197:   Call 0.Method_Proc_135_83_17C60A80 (var_8C, var_94)
  loc_17C419F:   var_94.Visible = False
  loc_17C41AE: Next var_A2 'Integer
  loc_17C41B7: Set var_90 = Me.TopCtrl1
  loc_17C41BD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_17C41D2: If CBool( <> "Browse") Then
  loc_17C41ED:   var_EC = 0
  loc_17C420D:   var_D8 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_17C421D:   unk_55277D.Execute var_D8 & "'", var_C4, -1
  loc_17C4225:   var_90 = var_90.Fields
  loc_17C422D:   var_EC = var_94.Item(var_94)
  loc_17C4235:   var_F0 = var_F0.Value
  loc_17C4250:   var_170 = 0
  loc_17C4270:   var_134 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_17C4280:   unk_55277D.Execute var_134 & "'", var_158, -1
  loc_17C4288:   var_15C = var_15C.Fields
  loc_17C4290:   var_170 = var_160.Item(var_160)
  loc_17C4298:   var_174 = var_174.Value
  loc_17C42B8:   Proc_6_7_F26918(var_1D4, arg_C, var_184 & var_184 & "' aND AppDate<=", var_D4 & var_D4 & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='")
  loc_17C42D7:   unk_55277D.Execute CStr("Select * From SundryType WHERE V_Type='" & var_1D4 & "  Order by AppDate Desc) Order by SNO"), var_228, -1
  loc_17C42E2:   Set var_88 = var_22C
  loc_17C4321: Else
  loc_17C4325:   Set var_90 = Me.TopCtrl1
  loc_17C432B:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_22C)
  loc_17C4340:   If ( = "Browse") Then
  loc_17C435B:     var_EC = 0
  loc_17C437B:     var_D8 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_17C438B:     unk_55277D.Execute var_D8 & "'", var_C4, -1
  loc_17C4393:     var_90 = var_90.Fields
  loc_17C439B:     var_EC = var_94.Item(var_94)
  loc_17C43A3:     var_F0 = var_F0.Value
  loc_17C43BE:     var_170 = 0
  loc_17C43DE:     var_134 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_17C43EE:     unk_55277D.Execute var_134 & "'", var_158, -1
  loc_17C43F6:     var_15C = var_15C.Fields
  loc_17C43FE:     var_170 = var_160.Item(var_160)
  loc_17C4406:     var_174 = var_174.Value
  loc_17C4426:     Proc_6_7_F26918(var_1D4, arg_C, var_184 & var_184 & "' aND AppDate=", var_D4 & var_D4 & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='")
  loc_17C4445:     unk_55277D.Execute CStr("Select * From SundryType WHERE V_Type='" & var_1D4 & "  Order by AppDate Desc) Order by SNO"), var_228, -1
  loc_17C4450:     Set var_88 = var_22C
  loc_17C448C:   End If
  loc_17C448C: End If
  loc_17C44A0: If (var_88.RecordCount > 0) Then
  loc_17C44DC:   Set var_F0 = Me.Txt
  loc_17C44E2:   Call 0.Method_Proc_135_83_17C60A80 (CInt(9), var_15C)
  loc_17C44EA:   var_15C.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17C4500:   ' Referenced from: 17C600A
  loc_17C4506:   var_96 = var_88.EOF
  loc_17C450F:   If Not(var_96) Then
  loc_17C454E:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17C4582:       Set var_F0 = Me.LblDummy
  loc_17C4588:       Call 0.Method_Proc_135_83_17C60A88 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17C45A2:       If (var_22C > CVar(var_96)) Then
  loc_17C45D7:         Set var_F0 = Me.LblDummy
  loc_17C45DD:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C45EE:         Me.LblDummy.Load var_15C
  loc_17C4601:       End If
  loc_17C464C:       var_15C = var_88.Fields.Item("SNo")
  loc_17C4661:       Set var_160 = Me.LblDummy
  loc_17C4667:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_15C.Value), var_174)
  loc_17C466F:       var_174.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17C46BE:       Set var_F0 = Me.TxtPer
  loc_17C46C4:       Call 0.Method_Proc_135_83_17C60A88 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17C46DE:       If (var_15C > CVar(var_96)) Then
  loc_17C4713:         Set var_F0 = Me.TxtPer
  loc_17C4719:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C472A:         Me.TxtPer.Load var_15C
  loc_17C473D:       End If
  loc_17C4775:       Set var_F0 = Me.TxtPer
  loc_17C477B:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C4783:       var_15C.TabIndex = (var_8A + 1)
  loc_17C479C:       var_8A = (var_8A + 1)
  loc_17C47E0:       var_15C = var_88.Fields.Item("SNo")
  loc_17C4820:       Set var_160 = Me.TxtPer
  loc_17C4826:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_15C.Value), var_174, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17C482E:       var_174.Visible = var_8A
  loc_17C488D:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C48EC:         var_130 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C48F5:         Set var_22C = Me.TxtPer
  loc_17C48FB:         Call 0.Method_Proc_135_83_17C60A80 (CInt(True), var_234)
  loc_17C493D:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C4946:         Set var_F0 = Me.TxtPer
  loc_17C494C:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("RevCode").Value), var_15C)
  loc_17C4970:         Set var_244 = Me.TxtPer
  loc_17C4976:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_248)
  loc_17C497E:         var_248.Top = ((var_15C.Top + var_234.Height) + CDbl(&HF))
  loc_17C49A7:       End If
  loc_17C49E3:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C4A42:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C4A4B:         Set var_F0 = Me.TxtPer
  loc_17C4A51:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("RevCode").Value), var_15C)
  loc_17C4A6C:         Set var_22C = Me.TxtPer
  loc_17C4A72:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C4A7A:         var_234.Left = var_15C.Left
  loc_17C4A99:       End If
  loc_17C4AF6:       var_174 = var_88.Fields.Item("SNo")
  loc_17C4B43:       Set var_22C = Me.TxtPer
  loc_17C4B49:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_174.Value), var_234)
  loc_17C4B51:       var_234.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17C4BC4:       var_15C = var_88.Fields.Item("SNo")
  loc_17C4BD9:       Set var_160 = Me.TxtPer
  loc_17C4BDF:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_15C.Value), var_174)
  loc_17C4BE7:       var_174.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17C4C3E:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C4C75:         Set var_F0 = Me.TxtPer
  loc_17C4C7B:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C4C83:         var_15C.FontBold = True
  loc_17C4C99:       Else
  loc_17C4CCD:         Set var_F0 = Me.TxtPer
  loc_17C4CD3:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C4CDB:         var_15C.FontBold = False
  loc_17C4CEE:       End If
  loc_17C4D27:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C4D5E:         Set var_F0 = Me.TxtPer
  loc_17C4D64:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C4D6C:         var_15C.Enabled = False
  loc_17C4D82:       Else
  loc_17C4DB6:         Set var_F0 = Me.TxtPer
  loc_17C4DBC:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C4DC4:         var_15C.Enabled = True
  loc_17C4DD7:       End If
  loc_17C4DDB:       Set var_90 = Me.TopCtrl1
  loc_17C4DE1:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_15C)
  loc_17C4DF6:       If ( = "Browse") Then
  loc_17C4E2D:         Set var_F0 = Me.TxtPer
  loc_17C4E33:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C4E3B:         var_15C.Enabled = False
  loc_17C4E4E:       End If
  loc_17C4E8A:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17C4EC1:         Set var_F0 = Me.TxtPer
  loc_17C4EC7:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C4ECF:         var_15C.Enabled = False
  loc_17C4EE2:       End If
  loc_17C4F13:       Set var_F0 = Me.LblCap
  loc_17C4F19:       Call 0.Method_Proc_135_83_17C60A88 (var_96)
  loc_17C4F33:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17C4F68:         Set var_F0 = Me.LblCap
  loc_17C4F6E:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C4F7F:         Me.LblCap.Load var_15C
  loc_17C4F92:       End If
  loc_17C4FC6:       Set var_F0 = Me.LblCap
  loc_17C4FCC:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C4FD4:       var_15C.Visible = True
  loc_17C5043:       Set var_F0 = Me.TxtPer
  loc_17C5049:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5064:       Set var_22C = Me.LblCap
  loc_17C506A:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C5072:       var_234.Top = var_15C.Top
  loc_17C50CD:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C5111:         var_174 = var_88.Fields.Item("SNo")
  loc_17C512C:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C5135:         Set var_F0 = Me.LblCap
  loc_17C513B:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5156:         Set var_22C = Me.LblCap
  loc_17C515C:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_174.Value), var_234)
  loc_17C5164:         var_234.Left = var_15C.Left
  loc_17C5183:       End If
  loc_17C51E3:       Set var_160 = Me.LblCap
  loc_17C51E9:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_174)
  loc_17C51F1:       var_174.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17C525A:       var_15C = var_88.Fields.Item("SNo")
  loc_17C526F:       Set var_160 = Me.LblCap
  loc_17C5275:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_15C.Value), var_174)
  loc_17C527D:       var_174.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17C52D4:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C530B:         Set var_F0 = Me.LblCap
  loc_17C5311:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5319:         var_15C.FontBold = True
  loc_17C532F:       Else
  loc_17C5363:         Set var_F0 = Me.LblCap
  loc_17C5369:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5371:         var_15C.FontBold = False
  loc_17C5384:       End If
  loc_17C53B5:       Set var_F0 = Me.LblAt
  loc_17C53BB:       Call 0.Method_Proc_135_83_17C60A88 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17C53D5:       If (var_15C > CVar(var_96)) Then
  loc_17C540A:         Set var_F0 = Me.LblAt
  loc_17C5410:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C5421:         Me.LblAt.Load var_15C
  loc_17C5434:       End If
  loc_17C5475:       var_15C = var_88.Fields.Item("SNo")
  loc_17C54B5:       Set var_160 = Me.LblAt
  loc_17C54BB:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_15C.Value), var_174)
  loc_17C54C3:       var_174.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17C5527:       var_174 = var_88.Fields.Item("SNo")
  loc_17C5542:       Set var_F0 = Me.TxtPer
  loc_17C5548:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5563:       Set var_22C = Me.LblAt
  loc_17C5569:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_174.Value), var_234)
  loc_17C5571:       var_234.Top = var_15C.Top
  loc_17C55C9:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C5600:         Set var_F0 = Me.LblAt
  loc_17C5606:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C560E:         var_15C.FontBold = True
  loc_17C5624:       Else
  loc_17C5658:         Set var_F0 = Me.LblAt
  loc_17C565E:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5666:         var_15C.FontBold = False
  loc_17C5679:       End If
  loc_17C56C4:       var_15C = var_88.Fields.Item("SNo")
  loc_17C56D9:       Set var_160 = Me.LblAt
  loc_17C56DF:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_15C.Value), var_174)
  loc_17C56E7:       var_174.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_17C5741:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C57A0:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C57A9:         Set var_F0 = Me.LblAt
  loc_17C57AF:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("RoundOff").Value), var_15C)
  loc_17C57CA:         Set var_22C = Me.LblAt
  loc_17C57D0:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C57D8:         var_234.Left = var_15C.Left
  loc_17C57F7:       End If
  loc_17C5828:       Set var_F0 = Me.TxtGt
  loc_17C582E:       Call 0.Method_Proc_135_83_17C60A88 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17C5848:       If (var_15C > CVar(var_96)) Then
  loc_17C587D:         Set var_F0 = Me.TxtGt
  loc_17C5883:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C5894:         Me.TxtGt.Load var_15C
  loc_17C58A7:       End If
  loc_17C58DF:       Set var_F0 = Me.TxtGt
  loc_17C58E5:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C58ED:       var_15C.TabIndex = (var_8A + 1)
  loc_17C5906:       var_8A = (var_8A + 1)
  loc_17C593D:       Set var_F0 = Me.TxtGt
  loc_17C5943:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C, &HFF)
  loc_17C594B:       var_15C.Visible = var_8A
  loc_17C59BA:       Set var_F0 = Me.TxtPer
  loc_17C59C0:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C59DB:       Set var_22C = Me.TxtGt
  loc_17C59E1:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C59E9:       var_234.Top = var_15C.Top
  loc_17C5A44:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C5AA3:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C5AAC:         Set var_F0 = Me.TxtGt
  loc_17C5AB2:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5ACD:         Set var_22C = Me.TxtGt
  loc_17C5AD3:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C5ADB:         var_234.Left = var_15C.Left
  loc_17C5AFA:       End If
  loc_17C5B57:       var_174 = var_88.Fields.Item("SNo")
  loc_17C5BA4:       Set var_22C = Me.TxtGt
  loc_17C5BAA:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_174.Value), var_234)
  loc_17C5BB2:       var_234.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17C5C22:       var_15C = var_88.Fields.Item("SNo")
  loc_17C5C37:       Set var_160 = Me.TxtGt
  loc_17C5C3D:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_15C.Value), var_174)
  loc_17C5C45:       var_174.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17C5C9A:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C5CD1:         Set var_F0 = Me.TxtGt
  loc_17C5CD7:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5CDF:         var_15C.FontBold = True
  loc_17C5CF5:       Else
  loc_17C5D29:         Set var_F0 = Me.TxtGt
  loc_17C5D2F:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5D37:         var_15C.FontBold = False
  loc_17C5D4A:       End If
  loc_17C5D83:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C5DBA:         Set var_F0 = Me.TxtGt
  loc_17C5DC0:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5DC8:         var_15C.Enabled = False
  loc_17C5DDE:       Else
  loc_17C5E12:         Set var_F0 = Me.TxtGt
  loc_17C5E18:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5E20:         var_15C.Enabled = True
  loc_17C5E33:       End If
  loc_17C5E68:       Set var_F0 = Me.LblCap
  loc_17C5E6E:       Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5E9F:       If (var_15C.Tag = MemVar_1F95070 & "ROFF") Then
  loc_17C5ED6:         Set var_F0 = Me.TxtGt
  loc_17C5EDC:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5EE4:         var_15C.Enabled = False
  loc_17C5EF7:       End If
  loc_17C5EFB:       Set var_90 = Me.TopCtrl1
  loc_17C5F01:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_15C)
  loc_17C5F16:       If ( = "Browse") Then
  loc_17C5F4D:         Set var_F0 = Me.TxtGt
  loc_17C5F53:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5F5B:         var_15C.Enabled = False
  loc_17C5F6E:       End If
  loc_17C5FAA:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17C5FCC:         var_94 = var_88.Fields.Item("SNo")
  loc_17C5FE1:         Set var_F0 = Me.TxtGt
  loc_17C5FE7:         Call 0.Method_Proc_135_83_17C60A80 (CInt(var_94.Value), var_15C)
  loc_17C5FEF:         var_15C.Enabled = False
  loc_17C6002:       End If
  loc_17C6002:     End If
  loc_17C6005:     var_88.MoveNext
  loc_17C600A:     GoTo loc_17C4500
  loc_17C600D:   End If
  loc_17C600D: End If
  loc_17C601E: Set var_90 = Me.Txt
  loc_17C6024: Call 0.Method_Proc_135_83_17C60A80 (CInt(6), var_94)
  loc_17C602C: var_94.TabIndex = (var_8A + 1)
  loc_17C6049: Set var_90 = Me.Txt
  loc_17C604F: Call 0.Method_Proc_135_83_17C60A80 (CInt(7), var_94)
  loc_17C6057: var_94.TabIndex = (var_8A + 2)
  loc_17C6074: Set var_90 = Me.Txt
  loc_17C607A: Call 0.Method_Proc_135_83_17C60A80 (CInt(8), var_94)
  loc_17C6082: var_94.TabIndex = (var_8A + 3)
  loc_17C609E: Me.Command1.TabIndex = (var_8A + 3)
  loc_17C60A6: Exit Sub
End Sub

Public Sub Proc_135_84_165F774(arg_C) '165F774
  'Data Table: 552758
  Dim var_A8 As Variant
  Dim var_C0 As Variant
  Dim var_9C As Variant
  Dim var_D0 As Variant
  Dim var_108 As Variant
  Dim var_AC As String
  Dim Me As Variant
  Dim var_E0 As Variant
  Dim var_128 As Variant
  Dim unk_55277D As Connection15
  Dim var_98 As Recordset15
  Dim var_164 As Variant
  Dim var_270 As Double
  Dim var_150 As Variant
  Dim var_174 As Variant
  Dim var_278 As Double
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_13C As Variant
  Dim var_1C8 As String
  Dim var_280 As Double
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_138 As Variant
  Dim var_258 As Variant
  Dim var_1D8 As Variant
  Dim var_284 As TextBox
  Dim var_90 As Double
  Dim var_29C As Double
  Dim var_1F8 As Variant
  loc_165E0A0: Set var_9C = Me.TxtGt
  loc_165E0A6: Call 0.Method_Proc_135_84_165F7748 (var_9E, var_86)
  loc_165E0B1: For var_A2 =  To var_9E: 1 = var_A2 'Integer
  loc_165E0C4:   Set var_9C = Me.TxtGt
  loc_165E0CA:   Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165E0D2:   var_A8.Text = vbNullString
  loc_165E0EB:   Set var_9C = Me.LblCap
  loc_165E0F1:   Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165E11B:   If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_165E123:     var_92 = CByte(var_86) 'Byte
  loc_165E127:   End If
  loc_165E134:   Set var_9C = Me.LblCap
  loc_165E13A:   Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165E164:   If (var_A8.Tag = MemVar_1F95070 & "ST") Then
  loc_165E16C:     var_94 = CByte(var_86) 'Byte
  loc_165E176:     global_92 = var_86
  loc_165E179:   End If
  loc_165E17C: Next var_A2 'Integer
  loc_165E185: Set var_9C = Me.TopCtrl1
  loc_165E18B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_165E1A0: If ( = "Add") Then
  loc_165E1B6:   Me.FGCat.Rows = 1
  loc_165E1BE:   Call Proc_135_90_DFF558()
  loc_165E1C3: End If
  loc_165E1CF: Set var_9C = Me.TxtGt
  loc_165E1D5: Call 0.Method_Proc_135_84_165F7748 (var_9E, var_86)
  loc_165E1E0: For var_F4 =  To var_9E: 2 = var_F4 'Integer
  loc_165E1F3:   Set var_9C = Me.LblCap
  loc_165E1F9:   Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165E223:   If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_165E233:     Set var_9C = Me.TxtGt
  loc_165E239:     Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165E241:     var_A8.Text = vbNullString
  loc_165E257:     If (var_94 > var_92) Then
  loc_165E27F:       For var_F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_F8 'Integer
  loc_165E292:         Set var_9C = Me.LblCap
  loc_165E298:         Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165E2C2:         If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_165E2C9:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_165E2D1:           var_108 = CVar(CLng(&H13)) 'Long
  loc_165E2FC:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_165E30A:             If (global_136 = "RO") Then
  loc_165E34C:               var_E0 = "Select * from guestfolio where foliono=" & Me.Fields.Item("Code").Value 
  loc_165E350:               var_108 = vbNullString
  loc_165E363:               unk_55277D.Execute CStr(var_E0 & var_108), var_138, -1
  loc_165E36E:               Set var_98 = var_13C
  loc_165E39C:               If (var_98.RecordCount > 0) Then
  loc_165E3C5:                 Proc_6_39_E7D3A0(var_E0, CVar(var_98.Fields.Item("RSDisc")), var_13C)
  loc_165E3DF:                 If (var_E0 > 0) Then
  loc_165E419:                   Proc_6_39_E7D3A0(var_E0, CVar(var_98.Fields.Item("RSDisc")), CVar(CLng(&HE)), CVar(CLng(var_88)))
  loc_165E430:                   LateIdCallSt
  loc_165E45F:                   var_A8 = var_98.Fields.Item("RSDisc")
  loc_165E46E:                   Proc_6_39_E7D3A0(var_E0, CVar(var_A8), Me.FGrid, CVar(CStr(var_E0)))
  loc_165E476:                   var_AC = CStr(var_E0)
  loc_165E484:                   Set var_13C = Me.TxtPer
  loc_165E48A:                   Call 0.Method_Proc_135_84_165F7740 (var_86, var_164, var_AC)
  loc_165E492:                   var_164.Text = var_108
  loc_165E4AA:                 End If
  loc_165E4AA:               End If
  loc_165E4AD:             Else
  loc_165E4B1:               var_C0 = CVar(CLng(var_88)) 'Long
  loc_165E4CB:               Set var_9C = Me.TxtPer
  loc_165E4D1:               Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC, CVar(CLng(&HE)))
  loc_165E4D9:               var_C0 = var_A8.Text
  loc_165E4E8:               var_D0 = CVar(CStr(Val(var_AC))) 'String
  loc_165E4F0:               Set var_13C = Me.FGrid
  loc_165E4F6:               LateIdCallSt
  loc_165E50D:             End If
  loc_165E50D:           End If
  loc_165E50D:         End If
  loc_165E511:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_165E519:         var_108 = CVar(CLng(7)) 'Long
  loc_165E542:         var_150 = CVar(CLng(var_88)) 'Long
  loc_165E54A:         var_174 = CVar(CLng(9)) 'Long
  loc_165E573:         var_194 = CVar(CLng(var_88)) 'Long
  loc_165E57B:         var_1B4 = CVar(CLng(&HE)) 'Long
  loc_165E5A4:         var_218 = CVar(CLng(var_88)) 'Long
  loc_165E5AC:         var_238 = CVar(CLng(&HF)) 'Long
  loc_165E5D5:         var_138 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_165E5E5:         var_258 = CVar(CStr(Format(var_138, "0.00"))) 'String
  loc_165E5ED:         Set var_164 = Me.FGrid
  loc_165E5F3:         LateIdCallSt
  loc_165E624:         var_150 = CVar(CLng(var_88)) 'Long
  loc_165E62C:         var_174 = CVar(CLng(7)) 'Long
  loc_165E655:         var_194 = CVar(CLng(var_88)) 'Long
  loc_165E65D:         var_1B4 = CVar(CLng(&HA)) 'Long
  loc_165E666:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_165E66E:         var_108 = CVar(CLng(9)) 'Long
  loc_165E69E:         Set var_13C = Me.FGrid
  loc_165E6A4:         LateIdCallSt
  loc_165E6D1:         var_108 = CVar(CLng(&HA)) 'Long
  loc_165E702:         Set var_A8 = Me.LblDummy
  loc_165E708:         Call 0.Method_Proc_135_84_165F7740 (var_86, var_13C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_108, CVar(CLng(var_88)), var_13C, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_165E710:         var_13C.Caption = var_108
  loc_165E72C:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_165E734:         var_108 = CVar(CLng(&HA)) 'Long
  loc_165E74E:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_165E75D:         var_150 = CVar(CLng(var_88)) 'Long
  loc_165E765:         var_174 = CVar(CLng(&H11)) 'Long
  loc_165E76E:         Set var_A8 = Me.FGrid
  loc_165E787:         var_278 = Val(CStr(var_A8.TextMatrix)))
  loc_165E796:         var_1D8 = CVar(CLng(&H12)) 'Long
  loc_165E7B7:         var_128 = CVar((Val(var_AC) + var_278)) 'Double
  loc_165E7D5:         LateIdCallSt
  loc_165E809:         Set var_9C = Me.LblCap
  loc_165E80F:         Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))), "0.00"))), 1, 1)
  loc_165E817:         var_1D8 = var_A8.Tag
  loc_165E839:         If (var_AC = MemVar_1F95070 & "DIS") Then
  loc_165E849:           Set var_9C = Me.TxtGt
  loc_165E84F:           Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_278)
  loc_165E857:           var_174 = var_A8.Text
  loc_165E86B:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_165E895:           var_278 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165E8B4:           var_E0 = CVar((Val(var_AC) + var_278)) 'Double
  loc_165E8D1:           Set var_164 = Me.TxtGt
  loc_165E8D7:           Call 0.Method_Proc_135_84_165F7740 (var_86, var_284, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_278)
  loc_165E8DF:           var_284.Text = CVar(CLng(&HF))
  loc_165E905:         End If
  loc_165E908:       Next var_F8 'Integer
  loc_165E910:     Else
  loc_165E935:       For var_288 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_288 'Integer
  loc_165E948:         Set var_9C = Me.LblCap
  loc_165E94E:         Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165E978:         If (var_A8.Tag = MemVar_1F95070 & "DIS") Then
  loc_165E97F:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_165E987:           var_108 = CVar(CLng(&H13)) 'Long
  loc_165E9A1:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_165E9B2:           If (var_AC = "Y") Then
  loc_165E9B9:             var_C0 = CVar(CLng(var_88)) 'Long
  loc_165E9D3:             Set var_9C = Me.TxtPer
  loc_165E9D9:             Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC, CVar(CLng(&HE)))
  loc_165E9E1:             var_C0 = var_A8.Text
  loc_165E9F0:             var_D0 = CVar(CStr(Val(var_AC))) 'String
  loc_165E9F8:             Set var_13C = Me.FGrid
  loc_165E9FE:             LateIdCallSt
  loc_165EA15:           End If
  loc_165EA15:         End If
  loc_165EA52:         Set var_A8 = Me.LblDummy
  loc_165EA58:         Call 0.Method_Proc_135_84_165F7740 (var_86, var_13C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HA)), CVar(CLng(var_88)))
  loc_165EA60:         var_13C.Caption = var_13C
  loc_165EA7C:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_165EA84:         var_108 = CVar(CLng(&HA)) 'Long
  loc_165EA9E:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_165EAAD:         var_150 = CVar(CLng(var_88)) 'Long
  loc_165EAB5:         var_174 = CVar(CLng(&HE)) 'Long
  loc_165EABE:         Set var_A8 = Me.FGrid
  loc_165EAD7:         var_278 = Val(CStr(var_A8.TextMatrix)))
  loc_165EAE6:         var_1D8 = CVar(CLng(&HF)) 'Long
  loc_165EB29:         LateIdCallSt
  loc_165EB5D:         Set var_9C = Me.LblCap
  loc_165EB63:         Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_AC) * var_278) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_165EB6B:         var_1D8 = var_A8.Tag
  loc_165EB8D:         If (var_AC = MemVar_1F95070 & "DIS") Then
  loc_165EB9D:           Set var_9C = Me.TxtGt
  loc_165EBA3:           Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_278)
  loc_165EBAB:           var_174 = var_A8.Text
  loc_165EBB8:           var_270 = Val(var_AC)
  loc_165EBBF:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_165EBE9:           var_278 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165EC08:           var_E0 = CVar((var_270 + var_278)) 'Double
  loc_165EC25:           Set var_164 = Me.TxtGt
  loc_165EC2B:           Call 0.Method_Proc_135_84_165F7740 (var_86, var_284, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_278)
  loc_165EC33:           var_284.Text = CVar(CLng(&HF))
  loc_165EC59:         End If
  loc_165EC5C:       Next var_288 'Integer
  loc_165EC61:     End If
  loc_165EC64:   Else
  loc_165EC71:     Set var_9C = Me.TxtPer
  loc_165EC77:     Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165EC7F:     var_9E = var_A8.Visible
  loc_165EC91:     If (var_9E = &HFF) Then
  loc_165EC9A:       Call Proc_135_85_1154508(var_86)
  loc_165ECA2:       var_90 = var_270
  loc_165ECB2:       Set var_9C = Me.TxtPer
  loc_165ECB8:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC)
  loc_165ECC0:       var_90 = var_A8.Text
  loc_165ECCD:       var_270 = Val(var_AC)
  loc_165ED0D:       Set var_13C = Me.TxtGt
  loc_165ED13:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_164, CStr(Format(CVar(((var_90 * var_270) / CDbl(&H64))), "0.00")), 1)
  loc_165ED1B:       var_164.Text = 1
  loc_165ED4D:       Set var_9C = Me.LblDummy
  loc_165ED53:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, CStr(var_90))
  loc_165ED5B:       var_A8.Caption = var_270
  loc_165ED6A:     End If
  loc_165ED6A:   End If
  loc_165ED6D: Next var_F4 'Integer
  loc_165ED97: For var_28C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_28C 'Integer
  loc_165EDA1:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_165EDA9:   var_108 = CVar(CLng(7)) 'Long
  loc_165EDC3:   var_AC = CStr(Me.FGrid.TextMatrix))
  loc_165EDD2:   var_150 = CVar(CLng(var_86)) 'Long
  loc_165EDDA:   var_174 = CVar(CLng(8)) 'Long
  loc_165EDE3:   Set var_A8 = Me.FGrid
  loc_165EE03:   var_1B4 = CVar(CLng(var_86)) 'Long
  loc_165EE0B:   var_1D8 = CVar(CLng(&HA)) 'Long
  loc_165EE4A:   LateIdCallSt
  loc_165EE7D:   Set var_9C = Me.TxtGt
  loc_165EE83:   Call 0.Method_Proc_135_84_165F7740 (1, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar((Val(var_AC) * Val(CStr(var_A8.TextMatrix))))), "0.00"))), 1, 1)
  loc_165EE8B:   var_1D8 = var_A8.Text
  loc_165EE98:   var_270 = Val(var_AC)
  loc_165EEC9:   var_278 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165EEE8:   var_E0 = CVar((var_270 + var_278)) 'Double
  loc_165EF04:   Set var_164 = Me.TxtGt
  loc_165EF0A:   Call 0.Method_Proc_135_84_165F7740 (1, var_284, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_278, CVar(CLng(&HA)))
  loc_165EF12:   var_284.Text = CVar(CLng(var_86))
  loc_165EF3B: Next var_28C 'Integer
  loc_165EF44: Set var_9C = Me.TopCtrl1
  loc_165EF4A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_165EF5F: If CBool( <> "Edit") Then
  loc_165EF75:   Me.FGCat.Rows = 1
  loc_165EFA2:   For var_290 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_290 'Integer
  loc_165EFB2:     If (var_94 > var_92) Then
  loc_165EFB9:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_165EFC1:       var_108 = CVar(CLng(&H18)) 'Long
  loc_165EFE0:       var_150 = CVar(CLng(var_86)) 'Long
  loc_165EFE8:       var_174 = CVar(CLng(9)) 'Long
  loc_165F011:       var_194 = CVar(CLng(var_86)) 'Long
  loc_165F019:       var_1B4 = CVar(CLng(7)) 'Long
  loc_165F053:       Set var_164 = Me.FGrid
  loc_165F06C:       var_29C = Val(CStr(var_164.TextMatrix)))
  loc_165F08F:       var_1F8 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_29C)) 'Double
  loc_165F0AE:       Call Proc_135_88_1841580(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 1, 1, var_29C, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_165F0DD:     Else
  loc_165F0E1:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_165F0E9:       var_108 = CVar(CLng(&H18)) 'Long
  loc_165F108:       var_150 = CVar(CLng(var_86)) 'Long
  loc_165F110:       var_174 = CVar(CLng(9)) 'Long
  loc_165F163:       var_280 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165F1A1:       Call Proc_135_88_1841580(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_280)), "0.00")), 1, 1, var_280, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_165F1C7:     End If
  loc_165F1CA:   Next var_290 'Integer
  loc_165F1CF: End If
  loc_165F1D3: Set var_9C = Me.TopCtrl1
  loc_165F1D9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_165F1EE: Set var_A8 = Me.TopCtrl1
  loc_165F1F4: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(( = "Add"))
  loc_165F219: If CBool( Or ( = "Edit")) Then
  loc_165F228:   Set var_9C = Me.TxtGt
  loc_165F22E:   Call 0.Method_Proc_135_84_165F7748 (var_9E, var_86)
  loc_165F239:   For var_2A0 =  To var_9E: 2 = var_2A0 'Integer
  loc_165F24C:     Set var_9C = Me.TxtPer
  loc_165F252:     Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165F25A:     var_9E = var_A8.Visible
  loc_165F272:     Set var_13C = Me.LblCap
  loc_165F278:     Call 0.Method_Proc_135_84_165F7740 (var_86, var_164)
  loc_165F280:     var_AC = var_164.Tag
  loc_165F2A7:     If ((var_9E = &HFF) And (var_AC = MemVar_1F95070 & "SCH")) Then
  loc_165F2B0:       Call Proc_135_85_1154508(var_86)
  loc_165F2B8:       var_90 = var_270
  loc_165F2C8:       Set var_9C = Me.TxtPer
  loc_165F2CE:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC)
  loc_165F2D6:       var_90 = var_A8.Text
  loc_165F2E3:       var_270 = Val(var_AC)
  loc_165F323:       Set var_13C = Me.TxtGt
  loc_165F329:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_164, CStr(Format(CVar(((var_90 * var_270) / CDbl(&H64))), "0.00")), 1)
  loc_165F331:       var_164.Text = 1
  loc_165F363:       Set var_9C = Me.LblDummy
  loc_165F369:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, CStr(var_90))
  loc_165F371:       var_A8.Caption = var_270
  loc_165F380:     End If
  loc_165F383:   Next var_2A0 'Integer
  loc_165F388: End If
  loc_165F3A7: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_165F3BD:   Me.FGCat.FixedRows = 1
  loc_165F3C5: End If
  loc_165F3F3: For var_2A4 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_2A4 'Integer
  loc_165F405:   Set var_9C = Me.TxtGt
  loc_165F40B:   Call 0.Method_Proc_135_84_165F7748 (var_9E, var_86, 1)
  loc_165F416:   For var_2A8 = CDbl(0) To var_9E: 0 = var_2A8 'Integer
  loc_165F429:     Set var_9C = Me.LblCap
  loc_165F42F:     Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165F437:     var_AC = var_A8.Tag
  loc_165F443:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_165F47D:     If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_165F48D:       Set var_9C = Me.TxtGt
  loc_165F493:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC)
  loc_165F49B:       var_C0 = var_A8.Text
  loc_165F4A8:       var_270 = Val(var_AC)
  loc_165F4AF:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_165F4D9:       var_278 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_165F4F8:       var_E0 = CVar((var_270 + var_278)) 'Double
  loc_165F507:       var_1C8 = CStr(Format("0.00", "0.00"))
  loc_165F515:       Set var_164 = Me.TxtGt
  loc_165F51B:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_284, var_1C8, 1, 1, var_278)
  loc_165F523:       var_284.Text = CVar(CLng(6))
  loc_165F549:     End If
  loc_165F54C:   Next var_2A8 'Integer
  loc_165F554: Next var_2A4 'Integer
  loc_165F565: Set var_9C = Me.TxtGt
  loc_165F56B: Call 0.Method_Proc_135_84_165F7748 (var_9E, var_86)
  loc_165F576: For var_2AC =  To var_9E: 2 = var_2AC 'Integer
  loc_165F589:   Set var_9C = Me.LblCap
  loc_165F58F:   Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8)
  loc_165F5B9:   If (var_A8.Tag = MemVar_1F95070 & "ROFF") Then
  loc_165F5C2:     Call Proc_135_85_1154508(var_86)
  loc_165F5CA:     var_90 = var_270
  loc_165F5DF:     Set var_9C = Me.LblDummy
  loc_165F5E5:     Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, CStr(var_90))
  loc_165F5ED:     var_A8.Caption = var_90
  loc_165F605:     var_AC = "U"
  loc_165F616:     Proc_6_142_14A62A0(var_90, CByte(0), var_AC)
  loc_165F653:     Set var_9C = Me.TxtGt
  loc_165F659:     Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, CStr(Format(CVar(2), "0.00")), 1)
  loc_165F661:     var_A8.Text = 1
  loc_165F680:   Else
  loc_165F687:     If (var_86 <> arg_C) Then
  loc_165F697:       Set var_9C = Me.LblCap
  loc_165F69D:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, var_AC)
  loc_165F6A5:       var_270 = var_A8.Tag
  loc_165F6C6:       Set var_13C = Me.LblCap
  loc_165F6CC:       Call 0.Method_Proc_135_84_165F7740 (var_86, var_164, var_1C8)
  loc_165F6D4:       (var_AC = MemVar_1F95070 & "TOT") = var_164.Tag
  loc_165F6FF:       If (var_270 Or (var_1C8 = MemVar_1F95070 & "NET")) Then
  loc_165F708:         Call Proc_135_85_1154508(var_86)
  loc_165F742:         Set var_9C = Me.TxtGt
  loc_165F748:         Call 0.Method_Proc_135_84_165F7740 (var_86, var_A8, CStr(Format(CVar(var_270), "0.00")))
  loc_165F750:         var_A8.Text = 1
  loc_165F768:       End If
  loc_165F768:     End If
  loc_165F768:   End If
  loc_165F76B: Next var_2AC 'Integer
  loc_165F770: Exit Sub
End Sub

Public Sub Proc_135_85_1154508(arg_C) '1154508
  'Data Table: 552758
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_8C As Double
  Dim var_138 As TextBox
  Dim var_D0 As Variant
  Dim var_148 As Variant
  loc_115417D: Set var_A8 = Me.TxtGt
  loc_1154183: Call 0.Method_Proc_135_85_11545080 (arg_C, var_AC)
  loc_11541A2: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_11541C0: Set var_A8 = Me.LblCap
  loc_11541C6: Call 0.Method_Proc_135_85_11545080 (arg_C, var_AC)
  loc_11541F0: If (var_AC.Tag = MemVar_1F95070 & "SCH") Then
  loc_1154218:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_1154222:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_115422A:     var_108 = CVar(CLng(&H1B)) 'Long
  loc_1154255:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_115425C:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_1154264:       var_108 = CVar(CLng(&HA)) 'Long
  loc_1154290:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_115429C:     End If
  loc_115429F:   Next var_D8 'Integer
  loc_11542A4: End If
  loc_11542AE: If (Len(var_90) > 0) Then
  loc_11542E0:   Set var_A8 = Me.LblCap
  loc_11542E6:   Call 0.Method_Proc_135_85_11545080 (arg_C, var_AC)
  loc_11542FD:   var_D4 = MemVar_1F95070 & "SCH"
  loc_1154321:   If CBool((Left(var_90, 1) = "1") And (var_AC.Tag = var_D4)) Then
  loc_1154327:     var_8C = var_A0
  loc_115432D:   Else
  loc_1154345:     var_B0 = CStr(Left(var_90, 1))
  loc_115435F:     Set var_A8 = Me.TxtGt
  loc_1154365:     Call 0.Method_Proc_135_85_11545080 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_115436D:     var_120 = var_AC.Text
  loc_115437A:     var_8C = Val(var_D4)
  loc_115438E:   End If
  loc_11543AF:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11543B9:   ' Referenced from: 11544FE
  loc_11543C3:   If (Len(var_90) > 0) Then
  loc_1154406:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1154450:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1154467:     Set var_A8 = Me.TxtGt
  loc_115446D:     Call 0.Method_Proc_135_85_11545080 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_1154482:     var_120 = Val(var_B0)
  loc_1154499:     Set var_134 = Me.TxtGt
  loc_115449F:     Call 0.Method_Proc_135_85_11545080 (var_AC.Text, var_138, var_D4, CVar(var_8C))
  loc_11544B5:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_11544C8:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_11544D7:     var_148 = (var_8C + IIf(var_90, CVar(var_138.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_11544DC:     var_8C = CSng(var_148)
  loc_11544FE:     GoTo loc_11543B9
  loc_1154501:   End If
  loc_1154501: End If
  loc_1154501: Proc_135_85_1154508 = var_8C
End Sub

Public Sub Proc_135_86_10AB89C(arg_C, arg_10, arg_14) '10AB89C
  'Data Table: 552758
  Dim var_AC As Variant
  Dim var_8A As Integer
  Dim arg_14 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10AB5F1: var_88 = vbNullString
  loc_10AB608: arg_C = CStr(Trim(arg_C))
  loc_10AB614: var_8A = CInt(Len(arg_C))
  loc_10AB61A: var_C0 = arg_10
  loc_10AB625: If (var_C0 = "A") Then
  loc_10AB644:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10AB648:   var_9C = arg_C 'Variant
  loc_10AB69E:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10AB6B2:   var_110 = (0 + Chr(&H1B))
  loc_10AB6BB:   var_120 = (var_110 + "G")
  loc_10AB6CF:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10AB6D9:   var_150 = (var_140 + CVar(arg_C))
  loc_10AB6ED:   var_170 = (var_150 + Chr(&H1B))
  loc_10AB6F6:   var_190 = (var_170 + "H")
  loc_10AB6FB:   var_88 = CStr(var_190)
  loc_10AB71C: Else
  loc_10AB724:   If (var_C0 = "D") Then
  loc_10AB732:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10AB743:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AB747:     var_9C = "G" 'Variant
  loc_10AB79D:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10AB7B1:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AB7BB:     var_120 = (var_110 + CVar(arg_C))
  loc_10AB7C0:     var_88 = CStr(var_120)
  loc_10AB7D5:   Else
  loc_10AB7DD:     If (var_C0 = "E") Then
  loc_10AB7EE:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AB7F2:       var_9C = CVar(arg_C) 'Variant
  loc_10AB848:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10AB85C:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AB866:       var_120 = (var_110 + CVar(arg_C))
  loc_10AB87A:       var_140 = (var_120 + Chr(&H12))
  loc_10AB87F:       var_88 = CStr(var_140)
  loc_10AB895:     End If
  loc_10AB895:   End If
  loc_10AB895: End If
  loc_10AB895: Proc_135_86_10AB89C = arg_14
End Sub

Public Sub Proc_135_87_1270820(arg_C, arg_10, arg_14) '1270820
  'Data Table: 552758
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_55277D As Connection15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_D4 As Variant
  Dim var_290 As Double
  Dim arg_10 As Integer
  loc_12702E1: var_90 = vbNullString
  loc_12702E7: var_94 = vbNullString
  loc_12702ED: var_98 = vbNullString
  loc_12702F3: var_9C = vbNullString
  loc_12702FE: If (MemVar_1F953C4 = "Y") Then
  loc_1270308:   var_E8 = vbNullString & "DATE "
  loc_1270339:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_127034C: End If
  loc_1270354: If (MemVar_1F953C8 = "Y") Then
  loc_1270366:   var_D4 = "dd/MM/yy"
  loc_12703B8:   var_16C = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_D4)))), 0))
  loc_12703DF:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_12703E7:   var_1DC = (var_16C - Len(var_1BC))
  loc_12703F8:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_1270401:   var_22C = (var_20C + " PAGE NO ")
  loc_1270423:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_1270428:   var_8C = CStr(var_26C)
  loc_1270455: End If
  loc_1270482: unk_55277D.Execute "Select R.HEADER1,R.HEADER2 From DEPART R  Where R.CODE='" & global_56 & "'", var_D4, -1
  loc_127048D: Set var_A0 = var_270
  loc_12704A4: If (MemVar_1F953CC = "K") Then
  loc_12704B1:   If (Len(MemVar_1F95130) <= &H28) Then
  loc_12704CA:     var_E4 = (CVar(var_90) + Chr(&HF))
  loc_12704DE:     var_13C = (Format(MemVar_1F950EC, Chr(&HF)) + Chr(&HE))
  loc_12704F2:     var_16C = (0 + Chr(&H1B))
  loc_1270506:     var_19C = (var_16C + Chr(&H45))
  loc_1270510:     var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F95130))
  loc_1270524:     var_1DC = (var_1BC + Chr(&H1B))
  loc_1270538:     var_20C = (var_1DC + Chr(&H46))
  loc_127054C:     var_24C = (var_20C + Chr(&HE))
  loc_1270551:     var_90 = CStr(Str(arg_C))
  loc_1270578:   Else
  loc_127058E:     var_E4 = (CVar(var_90) + Chr(&H12))
  loc_12705A2:     var_13C = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_12705B6:     var_16C = (0 + Chr(&HF))
  loc_12705C0:     var_18C = (var_16C + CVar(MemVar_1F95130))
  loc_12705D4:     var_1BC = (Chr(&H45) + Chr(&H12))
  loc_12705D9:     var_90 = CStr(var_1BC)
  loc_12705F1:   End If
  loc_1270605:   If (var_A0.RecordCount > 0) Then
  loc_1270617:     var_270 = var_A0.Fields
  loc_1270641:     If (Proc_6_38_E69628(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_1270678:       var_290 = Val(CStr(arg_14))
  loc_1270699:       Call Proc_135_86_10AB89C(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_12706A2:       var_94 = var_288 & var_288
  loc_12706BA:     End If
  loc_12706F3:     If (Proc_6_38_E69628(CVar(var_A0.Fields.Item("Header2")), var_94, var_290) <> vbNullString) Then
  loc_127074B:       Call Proc_135_86_10AB89C(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_1270754:       var_98 = var_288 & var_288
  loc_127076C:     End If
  loc_127076C:   End If
  loc_127076C: End If
  loc_1270776: If (Len(var_8C) > 0) Then
  loc_127077E:   Print 1, var_8C
  loc_127078A:   arg_10 = (arg_10 + 1)
  loc_127078D: End If
  loc_1270797: If (Len(var_90) > 0) Then
  loc_127079F:   Print 1, var_90
  loc_12707AB:   arg_10 = (arg_10 + 1)
  loc_12707AE: End If
  loc_12707B8: If (Len(var_94) > 0) Then
  loc_12707C0:   Print 1, var_94
  loc_12707CC:   arg_10 = (arg_10 + 1)
  loc_12707CF: End If
  loc_12707D9: If (Len(var_98) > 0) Then
  loc_12707E1:   Print 1, var_98
  loc_12707ED:   arg_10 = (arg_10 + 1)
  loc_12707F0: End If
  loc_12707FA: If (Len(var_9C) > 0) Then
  loc_1270802:   Print 1, var_9C
  loc_127080E:   arg_10 = (arg_10 + 1)
  loc_1270811: End If
  loc_1270817: Proc_135_87_1270820 = arg_10
  loc_127081D: CExtInstUnk
End Sub

Public Sub Proc_135_88_1841580(arg_C, arg_10, arg_14) '1841580
  'Data Table: 552758
  Dim var_E4 As String
  Dim unk_55277D As Connection15
  Dim var_D8 As Recordset15
  Dim var_124 As Variant
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_114 As Field20
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_108 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_134 As Variant
  Dim var_C0 As Recordset15
  Dim var_1B8 As Variant
  Dim var_1FC As Variant
  Dim var_D0 As Double
  Dim var_210 As Double
  Dim var_E0 As Recordset15
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_1C0 As MSHFlexGrid
  Dim var_204 As Double
  Dim var_9C As Double
  Dim var_1B4 As Variant
  loc_183F0F4: unk_55277D.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_183F0FF: Set var_D8 = var_10C
  loc_183F123: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_183F133: unk_55277D.Execute var_E4 & "'", var_108, -1
  loc_183F13E: Set var_8C = var_10C
  loc_183F162: If (var_D8.RecordCount > 0) Then
  loc_183F189:   var_114 = var_D8.Fields.Item("RestCode")
  loc_183F1A5:   If CBool(CVar(global_56) <> var_114.Value) Then
  loc_183F1AA:     var_DA = &HFF
  loc_183F1B0:   Else
  loc_183F1B2:     var_DA = 0
  loc_183F1B5:   End If
  loc_183F1B8: Else
  loc_183F1BA:   var_DA = 0
  loc_183F1BD: End If
  loc_183F1C0: var_94 = arg_14
  loc_183F1C5: var_86 = 1
  loc_183F1D3: If (global_192 = "Room Service") Then
  loc_183F1F9:   Call 0.Method_Proc_135_88_18415800 (CInt(&HA), var_114, "Select * from RoomOcc where chkoutdate is NULL and foliono=", var_1B4, -1, var_1B8, var_86)
  loc_183F208:   Proc_6_39_E7D3A0(var_134, CVar(var_114), var_94, var_DA)
  loc_183F219:   var_154 = var_DA & var_134 & " and Site_Code='" 
  loc_183F23A:   unk_55277D.Execute CStr(var_154 & CVar(MemVar_1F95070) & "'"), var_DA, Me.Txt
  loc_183F245:   Set var_C0 = var_1B8
  loc_183F263: End If
  loc_183F266: var_A8 = var_94
  loc_183F26C: var_B0 = var_94
  loc_183F272: var_B8 = CDbl(0)
  loc_183F289: If (var_8C.RecordCount > 0) Then
  loc_183F28C:   ' Referenced from: 1841553
  loc_183F29B:   If Not(var_8C.EOF) Then
  loc_183F2A2:     Set var_1C0 = Me.FGCat
  loc_183F2A5:     var_F8 = vbNullString
  loc_183F2CA:     If (var_8C.RecordCount > 0) Then
  loc_183F2D3:       var_D2 = (var_D2 + 1)
  loc_183F2D9:       var_F8 = "Nature"
  loc_183F30C:       var_1D0 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8))) 'Variant
  loc_183F325:       If (var_1D0 = "On Base Amt") Then
  loc_183F350:         var_134 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_B8, var_B0)) 'String
  loc_183F372:         If (Trim(var_134) = "Room Rate") Then
  loc_183F380:           If (global_192 = "Room Service") Then
  loc_183F3A9:             Proc_6_39_E7D3A0(var_134, CVar(var_8C.Fields.Item("Limit")))
  loc_183F3D7:             Proc_6_39_E7D3A0(var_154, CVar(var_C0.Fields.Item("RoomRate")), var_134)
  loc_183F3DF:             var_174 = (var_A8 <= var_154)
  loc_183F409:             Proc_6_39_E7D3A0(var_1B4, CVar(var_8C.Fields.Item("Rate")))
  loc_183F439:             If CBool(var_174 And (var_1B4 > 0)) Then
  loc_183F478:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183F4B6:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_183F4C9:               Else
  loc_183F4FC:                 var_210 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_183F525:                 Proc_6_142_14A62A0(((var_210 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_183F52A:                 var_D0 = var_210
  loc_183F53E:               End If
  loc_183F545:               If (var_D0 > CDbl(0)) Then
  loc_183F561:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183F569:                 var_164 = CVar(CLng(0)) 'Long
  loc_183F573:                 var_134 = CVar(CStr(var_86)) 'String
  loc_183F57A:                 LateIdCallSt
  loc_183F5A5:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183F5AD:                 var_164 = CVar(CLng(1)) 'Long
  loc_183F5B7:                 var_134 = CVar(CStr(arg_10)) 'String
  loc_183F5BE:                 LateIdCallSt
  loc_183F5D6:                 If (var_DA = 0) Then
  loc_183F5DD:                   Set var_1B8 = Me.FGCat
  loc_183F5F2:                   var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183F5FA:                   var_184 = CVar(CLng(2)) 'Long
  loc_183F62A:                   var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183F631:                   LateIdCallSt
  loc_183F64E:                 Else
  loc_183F665:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_183F699:                   var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183F6B0:                   unk_55277D.Execute CStr(var_144 & "')"), var_174, -1
  loc_183F6BB:                   Set var_E0 = var_1B8
  loc_183F6EF:                   If (var_E0.RecordCount > 0) Then
  loc_183F70B:                     var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183F713:                     var_184 = CVar(CLng(2)) 'Long
  loc_183F743:                     var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183F74A:                     LateIdCallSt
  loc_183F764:                   End If
  loc_183F764:                 End If
  loc_183F77D:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183F785:                 var_184 = CVar(CLng(3)) 'Long
  loc_183F7B5:                 var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183F7BC:                 LateIdCallSt
  loc_183F7EF:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183F7F7:                 var_164 = CVar(CLng(4)) 'Long
  loc_183F801:                 var_134 = CVar(CStr(var_A8)) 'String
  loc_183F808:                 LateIdCallSt
  loc_183F833:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183F83B:                 var_184 = CVar(CLng(5)) 'Long
  loc_183F86B:                 var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183F872:                 LateIdCallSt
  loc_183F8CC:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183F8D4:                 var_240 = CVar(CLng(6)) 'Long
  loc_183F8D9:                 var_174 = 2
  loc_183F918:                 var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_183F91F:                 LateIdCallSt
  loc_183F95C:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183F964:                 var_184 = CVar(CLng(7)) 'Long
  loc_183F994:                 var_144 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_183F99B:                 LateIdCallSt
  loc_183F9B8:               Else
  loc_183F9BE:                 var_86 = (var_86 - 1)
  loc_183F9D4:                 var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_183F9EA:               End If
  loc_183FA03:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183FA0B:               var_164 = CVar(CLng(6)) 'Long
  loc_183FA30:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_183FA59:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183FA61:               var_164 = CVar(CLng(6)) 'Long
  loc_183FA69:               var_134 = var_1C0.TextMatrix)
  loc_183FA7C:               var_204 = Val(CStr(var_134))
  loc_183FA86:               var_94 = (var_94 + var_204)
  loc_183FA9D:               var_B0 = (var_B0 + var_D0)
  loc_183FAA3:               var_B8 = var_D0
  loc_183FAAD:               var_B0 = (var_B0 + var_D0)
  loc_183FAB3:               var_B8 = var_D0
  loc_183FAB6:             End If
  loc_183FAB6:           End If
  loc_183FAB9:         Else
  loc_183FAF5:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_183FB33:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_183FB46:           Else
  loc_183FBA2:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_183FBA7:             var_D0 = var_B8
  loc_183FBBB:           End If
  loc_183FBE1:           Proc_6_39_E7D3A0(var_134, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0, var_94)
  loc_183FBF8:           var_164 = "Rate"
  loc_183FC1B:           Proc_6_39_E7D3A0(var_174, CVar(var_8C.Fields.Item(var_164)), (var_134 <= CVar(var_94)), var_204)
  loc_183FC45:           If CBool(var_164 And (var_174 > 0)) Then
  loc_183FC4F:             If (var_D0 > CDbl(0)) Then
  loc_183FC6B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183FC73:               var_164 = CVar(CLng(0)) 'Long
  loc_183FC7D:               var_134 = CVar(CStr(var_86)) 'String
  loc_183FC84:               LateIdCallSt
  loc_183FCAF:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183FCB7:               var_164 = CVar(CLng(1)) 'Long
  loc_183FCC1:               var_134 = CVar(CStr(arg_10)) 'String
  loc_183FCC8:               LateIdCallSt
  loc_183FCE0:               If (var_DA = 0) Then
  loc_183FCE7:                 Set var_1B8 = Me.FGCat
  loc_183FCFC:                 var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_183FD04:                 var_184 = CVar(CLng(2)) 'Long
  loc_183FD34:                 var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_183FD3B:                 LateIdCallSt
  loc_183FD58:               Else
  loc_183FD6F:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_183FDA3:                 var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_183FDBA:                 unk_55277D.Execute CStr(var_144 & "')"), var_174, -1
  loc_183FDC5:                 Set var_E0 = var_1B8
  loc_183FDF9:                 If (var_E0.RecordCount > 0) Then
  loc_183FE15:                   var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183FE1D:                   var_184 = CVar(CLng(2)) 'Long
  loc_183FE4D:                   var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_183FE54:                   LateIdCallSt
  loc_183FE6E:                 End If
  loc_183FE6E:               End If
  loc_183FE87:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183FE8F:               var_184 = CVar(CLng(3)) 'Long
  loc_183FEBF:               var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_183FEC6:               LateIdCallSt
  loc_183FEF9:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183FF01:               var_164 = CVar(CLng(4)) 'Long
  loc_183FF0B:               var_134 = CVar(CStr(var_A8)) 'String
  loc_183FF12:               LateIdCallSt
  loc_183FF3D:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183FF45:               var_184 = CVar(CLng(5)) 'Long
  loc_183FF75:               var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_183FF7C:               LateIdCallSt
  loc_183FFD6:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_183FFE3:               var_174 = 2
  loc_1840029:               LateIdCallSt
  loc_1840066:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184009B:               var_144 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))), CVar(CLng(6)), var_220)) 'String
  loc_18400A2:               LateIdCallSt
  loc_18400BA:             End If
  loc_18400D3:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18400DB:             var_164 = CVar(CLng(6)) 'Long
  loc_1840100:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_1840129:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840131:             var_164 = CVar(CLng(6)) 'Long
  loc_1840139:             var_134 = var_1C0.TextMatrix)
  loc_184014C:             var_204 = Val(CStr(var_134))
  loc_1840156:             var_94 = (var_94 + var_204)
  loc_184016D:             var_B0 = (var_B0 + var_D0)
  loc_1840173:             var_B8 = var_D0
  loc_1840176:           End If
  loc_1840176:         End If
  loc_1840179:       Else
  loc_1840184:         If (var_1D0 = "On Running Total") Then
  loc_18401C3:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1840201:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_1840214:           Else
  loc_1840270:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1840275:             var_D0 = var_94
  loc_1840289:           End If
  loc_18402AF:           Proc_6_39_E7D3A0(var_134, CVar(var_8C.Fields.Item("Rate")), var_D0, var_204, var_164)
  loc_18402C9:           If (var_134 > 0) Then
  loc_18402D3:             If (var_D0 > CDbl(0)) Then
  loc_18402EF:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18402F7:               var_164 = CVar(CLng(0)) 'Long
  loc_1840301:               var_134 = CVar(CStr(var_86)) 'String
  loc_1840308:               LateIdCallSt
  loc_1840333:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184033B:               var_164 = CVar(CLng(1)) 'Long
  loc_1840345:               var_134 = CVar(CStr(arg_10)) 'String
  loc_184034C:               LateIdCallSt
  loc_1840364:               If (var_DA = 0) Then
  loc_184036B:                 Set var_1B8 = Me.FGCat
  loc_1840380:                 var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1840388:                 var_184 = CVar(CLng(2)) 'Long
  loc_18403B8:                 var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18403BF:                 LateIdCallSt
  loc_18403DC:               Else
  loc_18403F3:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1840427:                 var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_184043E:                 unk_55277D.Execute CStr(var_144 & "')"), var_174, -1
  loc_1840449:                 Set var_E0 = var_1B8
  loc_184047D:                 If (var_E0.RecordCount > 0) Then
  loc_1840499:                   var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18404A1:                   var_184 = CVar(CLng(2)) 'Long
  loc_18404D1:                   var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18404D8:                   LateIdCallSt
  loc_18404F2:                 End If
  loc_18404F2:               End If
  loc_184050B:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840513:               var_184 = CVar(CLng(3)) 'Long
  loc_1840543:               var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_184054A:               LateIdCallSt
  loc_184057D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840585:               var_164 = CVar(CLng(4)) 'Long
  loc_184058F:               var_134 = CVar(CStr(var_B0)) 'String
  loc_1840596:               LateIdCallSt
  loc_18405C1:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18405C9:               var_184 = CVar(CLng(5)) 'Long
  loc_18405F9:               var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1840600:               LateIdCallSt
  loc_184065A:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840662:               var_240 = CVar(CLng(6)) 'Long
  loc_1840667:               var_174 = 2
  loc_18406A6:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_18406AD:               LateIdCallSt
  loc_18406EA:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18406F2:               var_184 = CVar(CLng(7)) 'Long
  loc_1840722:               var_144 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1840729:               LateIdCallSt
  loc_1840743:             End If
  loc_184075C:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840764:             var_164 = CVar(CLng(6)) 'Long
  loc_1840789:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_18407B2:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18407BA:             var_164 = CVar(CLng(6)) 'Long
  loc_18407DF:             var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_18407F6:             var_B0 = (var_B0 + var_D0)
  loc_18407FC:             var_B8 = var_D0
  loc_18407FF:           End If
  loc_1840802:         Else
  loc_184080D:           If (var_1D0 = "On Prev. Tax Amt") Then
  loc_184084C:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_184088A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_184089D:             Else
  loc_18408F9:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_18408FE:               var_D0 = var_94
  loc_1840912:             End If
  loc_1840919:             If (var_D0 > CDbl(0)) Then
  loc_1840935:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184093D:               var_164 = CVar(CLng(0)) 'Long
  loc_1840947:               var_134 = CVar(CStr(var_86)) 'String
  loc_184094E:               LateIdCallSt
  loc_1840979:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840981:               var_164 = CVar(CLng(1)) 'Long
  loc_184098B:               var_134 = CVar(CStr(arg_10)) 'String
  loc_1840992:               LateIdCallSt
  loc_18409AA:               If (var_DA = 0) Then
  loc_18409B1:                 Set var_1B8 = Me.FGCat
  loc_18409C6:                 var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_18409CE:                 var_184 = CVar(CLng(2)) 'Long
  loc_18409FE:                 var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1840A05:                 LateIdCallSt
  loc_1840A22:               Else
  loc_1840A39:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1840A6D:                 var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1840A84:                 unk_55277D.Execute CStr(var_144 & "')"), var_174, -1
  loc_1840A8F:                 Set var_E0 = var_1B8
  loc_1840AC3:                 If (var_E0.RecordCount > 0) Then
  loc_1840ADF:                   var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840AE7:                   var_184 = CVar(CLng(2)) 'Long
  loc_1840B17:                   var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1840B1E:                   LateIdCallSt
  loc_1840B38:                 End If
  loc_1840B38:               End If
  loc_1840B51:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840B59:               var_184 = CVar(CLng(3)) 'Long
  loc_1840B89:               var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1840B90:               LateIdCallSt
  loc_1840BC3:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840BCB:               var_164 = CVar(CLng(4)) 'Long
  loc_1840BD5:               var_134 = CVar(CStr(var_B8)) 'String
  loc_1840BDC:               LateIdCallSt
  loc_1840C07:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840C0F:               var_184 = CVar(CLng(5)) 'Long
  loc_1840C3F:               var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1840C46:               LateIdCallSt
  loc_1840CA0:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840CA8:               var_240 = CVar(CLng(6)) 'Long
  loc_1840CAD:               var_174 = 2
  loc_1840CEC:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_1840CF3:               LateIdCallSt
  loc_1840D30:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840D38:               var_184 = CVar(CLng(7)) 'Long
  loc_1840D68:               var_144 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1840D6F:               LateIdCallSt
  loc_1840D89:             End If
  loc_1840DA2:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840DAA:             var_164 = CVar(CLng(6)) 'Long
  loc_1840DCF:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_1840DF8:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840E00:             var_164 = CVar(CLng(6)) 'Long
  loc_1840E08:             var_134 = var_1C0.TextMatrix)
  loc_1840E1B:             var_204 = Val(CStr(var_134))
  loc_1840E25:             var_94 = (var_94 + var_204)
  loc_1840E3C:             var_B0 = (var_B0 + var_D0)
  loc_1840E42:             var_B8 = var_D0
  loc_1840E48:           Else
  loc_1840E84:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1840EC2:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1840ED5:             Else
  loc_1840F31:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1840F36:               var_D0 = var_94
  loc_1840F4A:             End If
  loc_1840F4D:             var_F8 = "Limit"
  loc_1840F70:             Proc_6_39_E7D3A0(var_134, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_204, var_164)
  loc_1840FAA:             Proc_6_39_E7D3A0(var_174, CVar(var_8C.Fields.Item("Rate")), (var_134 <= CVar(var_94)), var_F8)
  loc_1840FD4:             If CBool(var_9C And (var_174 > 0)) Then
  loc_1840FDE:               If (var_D0 > CDbl(0)) Then
  loc_1840FFA:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841002:                 var_164 = CVar(CLng(0)) 'Long
  loc_184100C:                 var_134 = CVar(CStr(var_86)) 'String
  loc_1841013:                 LateIdCallSt
  loc_184103E:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841046:                 var_164 = CVar(CLng(1)) 'Long
  loc_1841050:                 var_134 = CVar(CStr(arg_10)) 'String
  loc_1841057:                 LateIdCallSt
  loc_184106F:                 If (var_DA = 0) Then
  loc_1841076:                   Set var_1B8 = Me.FGCat
  loc_184108B:                   var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1841093:                   var_184 = CVar(CLng(2)) 'Long
  loc_18410C3:                   var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18410CA:                   LateIdCallSt
  loc_18410E7:                 Else
  loc_18410FE:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1841132:                   var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1841149:                   unk_55277D.Execute CStr(var_144 & "')"), var_174, -1
  loc_1841154:                   Set var_E0 = var_1B8
  loc_1841188:                   If (var_E0.RecordCount > 0) Then
  loc_18411A4:                     var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18411AC:                     var_184 = CVar(CLng(2)) 'Long
  loc_18411DC:                     var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18411E3:                     LateIdCallSt
  loc_18411FD:                   End If
  loc_18411FD:                 End If
  loc_1841216:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184121E:                 var_184 = CVar(CLng(3)) 'Long
  loc_184124E:                 var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1841255:                 LateIdCallSt
  loc_1841288:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841290:                 var_164 = CVar(CLng(4)) 'Long
  loc_184129A:                 var_134 = CVar(CStr(var_A8)) 'String
  loc_18412A1:                 LateIdCallSt
  loc_18412CC:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18412D4:                 var_184 = CVar(CLng(5)) 'Long
  loc_1841304:                 var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184130B:                 LateIdCallSt
  loc_1841365:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184136D:                 var_240 = CVar(CLng(6)) 'Long
  loc_18413B1:                 var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_18413B8:                 LateIdCallSt
  loc_18413F5:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18413FD:                 var_184 = CVar(CLng(7)) 'Long
  loc_184142D:                 var_144 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1841434:                 LateIdCallSt
  loc_184144E:               End If
  loc_1841467:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184146F:               var_164 = CVar(CLng(6)) 'Long
  loc_1841494:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_18414BD:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18414C5:               var_164 = CVar(CLng(6)) 'Long
  loc_18414EA:               var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_1841501:               var_B0 = (var_B0 + var_D0)
  loc_1841507:               var_B8 = var_D0
  loc_184150A:             End If
  loc_184150A:           End If
  loc_184150A:         End If
  loc_184150A:       End If
  loc_184150A:     End If
  loc_1841510:     var_86 = (var_86 + 1)
  loc_1841515:     Set var_1C0 = Nothing 
  loc_184151D:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_1841525:     var_164 = CVar(CLng(&H11)) 'Long
  loc_184152F:     var_108 = CVar(CStr(var_9C)) 'String
  loc_1841537:     Set var_10C = Me.FGrid
  loc_184153D:     LateIdCallSt
  loc_184154E:     var_8C.MoveNext
  loc_1841553:     GoTo loc_183F28C
  loc_1841556:   End If
  loc_184155B:   Set var_8C = Nothing
  loc_1841563:   Set var_C4 = Nothing
  loc_184156B:   Set var_C0 = Nothing
  loc_1841573:   Set var_D8 = Nothing
  loc_184157B:   Set var_E0 = Nothing
  loc_184157E: End If
  loc_184157E: Exit Sub
End Sub

Public Sub Proc_135_89_F2240C(arg_C, arg_10, arg_14) 'F2240C
  'Data Table: 552758
  Dim unk_55277D As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F22351: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F22383: unk_55277D.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F2238E: Set var_90 = var_15C
  loc_F223C0: If (var_90.RecordCount > 0) Then
  loc_F223EE:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F223FE: Else
  loc_F22401:   var_8C = CDbl(0)
  loc_F22404: End If
  loc_F22404: Proc_135_89_F2240C = var_8C
End Sub

Public Sub Proc_135_90_DFF558
  'Data Table: 552758
  loc_DFF554: Exit Sub
End Sub

Public Sub Proc_135_91_107F0F8
  'Data Table: 552758
  Dim Me As Recordset15
  loc_107EE6B: If (Me.RecordCount > 0) Then
  loc_107EE74:   Me.MoveFirst
  loc_107EE79:   ' Referenced from: 107F0F4
  loc_107EE79: End If
  loc_107EE8B: If Not(Me.EOF) Then
  loc_107EECD:   If (Me.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER RUNNING") Then
  loc_107EF0F:     If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_107EF12:       Call Proc_135_68_169A75C()
  loc_107EF1A:     Else
  loc_107EF49:       If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_107EF4C:         Call Proc_135_68_169A75C()
  loc_107EF54:       Else
  loc_107EF54:         Exit Sub
  loc_107EF55:       End If
  loc_107EF55:     End If
  loc_107EF58:   Else
  loc_107EF97:     If (Me.Fields.Item("ModDescription").Value = "BILL DOS PRE PRINTED") Then
  loc_107EFD9:       If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_107EFDC:         Call Proc_135_67_15EEC0C()
  loc_107EFE4:       Else
  loc_107F013:         If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_107F016:           Call Proc_135_67_15EEC0C()
  loc_107F01E:         Else
  loc_107F01E:           Exit Sub
  loc_107F01F:         End If
  loc_107F01F:       End If
  loc_107F022:     Else
  loc_107F061:       If (Me.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER") Then
  loc_107F0A3:         If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_107F0A6:           Call Proc_135_69_16EB12C()
  loc_107F0AE:         Else
  loc_107F0DD:           If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_107F0E0:             Call Proc_135_69_16EB12C()
  loc_107F0E8:           Else
  loc_107F0E8:             Exit Sub
  loc_107F0E9:           End If
  loc_107F0E9:         End If
  loc_107F0E9:       End If
  loc_107F0E9:     End If
  loc_107F0E9:   End If
  loc_107F0EF:   Me.MoveNext
  loc_107F0F4:   GoTo loc_107EE79
  loc_107F0F7: End If
  loc_107F0F7: Exit Sub
End Sub

Public Sub Proc_135_92_1584F7C
  'Data Table: 552758
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E0 As Variant
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1E0 As String
  Dim var_94 As Variant
  Dim var_88 As Integer
  Dim var_B0 As Variant
  Dim var_A4 As String
  Dim unk_55277D As Connection15
  Dim var_90 As Recordset15
  loc_1583E66: var_86 = 3 'Byte
  loc_1583E75: If (global_180 = "Y") Then
  loc_1583E82:   Set global_68 = New 
  loc_1583E94:   Me.Recordset15.CursorLocation = 3
  loc_1583EAA:   If (global_192 = "Hall") Then
  loc_1583EBB:     Set var_94 = Me.Txt
  loc_1583EC1:     Call 0.Method_Proc_135_92_1584F7C0 (CInt(3), var_A0)
  loc_1583EDC:     Set var_B0 = Me.Txt
  loc_1583EE2:     Call 0.Method_Proc_135_92_1584F7C0 (CInt(&HB), var_B4)
  loc_1583F10:     var_9C = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCODE=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_56
  loc_1583F33:     var_D0 = CVar(var_9C & "' AND K.RoomNo ='" & var_A0.Tag & "' and K.DOCId='" & var_B4.Tag & "' AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_1583F3D:     Me.Open var_D0, CVar(MemVar_1F95044), 3
  loc_1583F64:   Else
  loc_1583F6F:     Proc_6_7_F26918(var_D0, MemVar_1F950EC)
  loc_1583F82:     Set var_94 = Me.Txt
  loc_1583F88:     Call 0.Method_Proc_135_92_1584F7C0 (CInt(3), var_A0, var_9C)
  loc_1583F90:     1 = var_A0.Text
  loc_1583FA0:     Set var_B0 = Me.Txt
  loc_1583FA6:     Call 0.Method_Proc_135_92_1584F7C0 (CInt(2), var_B4)
  loc_1583FD1:     var_F0 = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCODE=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_158400B:     var_1A0 = var_F0 & var_D0 & " And K.RestCode='" & CVar(global_56) & "' aND K.RoomNo ='" & CVar(var_9C) & "' and K.DOCId in (Select Docid from KOT where Contradocid='" 
  loc_1584019:     var_1E0 = "' and Docid not in (Select KOTDOCID from Stock)) AND VOIDYN NOT IN('Y') And DelFlag<>'Y' And NCKOT<>'Y' Order by K.DOCID,K.SNo"
  loc_1584029:     Me.Open var_1A0 & CVar(Proc_6_38_E69628(CVar(var_B4))) & var_1E0, CVar(MemVar_1F95044), 3
  loc_1584055:   End If
  loc_158406C:   If (Me.RecordCount > 0) Then
  loc_158407E:     Me.FGrid.Redraw = False
  loc_15840A0:     var_88 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15840A9:     ' Referenced from: 1584DB1
  loc_15840BB:     If Not(Me.EOF) Then
  loc_15840E3:       For var_20A = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_20A 'Integer
  loc_15840ED:         var_E0 = CVar(CLng(var_8A)) 'Long
  loc_15840F5:         var_110 = CVar(CLng(&HD)) 'Long
  loc_158410F:         var_120 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1584138:         var_100 = Me.Fields.Item("DocID").Value
  loc_1584148:         var_190 = CVar(CLng(var_8A)) 'Long
  loc_15841C3:         If CBool(CVar(CLng(&HC)) And (CVar(CStr(Me.FGrid.TextMatrix))) = Me.Fields.Item("SNo").Value)) Then
  loc_15841CA:           var_8C = CByte(1) 'Byte
  loc_15841CE:           GoTo loc_1584BBA
  loc_15841D1:         End If
  loc_15841D4:       Next var_20A 'Integer
  loc_15841D9:       var_E0 = vbNullString
  loc_15841E3:       Set var_94 = Me.FGrid
  loc_15841F8:       Set var_238 = Me.FGrid
  loc_15841FF:       var_E0 = CVar(CLng(var_88)) 'Long
  loc_1584207:       var_110 = CVar(CLng(0)) 'Long
  loc_1584211:       var_D0 = CVar(CStr(var_88)) 'String
  loc_1584218:       LateIdCallSt
  loc_1584227:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_158422F:       var_130 = CVar(CLng(&HB)) 'Long
  loc_1584262:       var_100 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_1584269:       LateIdCallSt
  loc_1584283:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_158428B:       var_130 = CVar(CLng(3)) 'Long
  loc_15842BE:       var_100 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_15842C5:       LateIdCallSt
  loc_15842DF:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_15842E7:       var_130 = CVar(CLng(4)) 'Long
  loc_158431A:       var_100 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_1584321:       LateIdCallSt
  loc_158433B:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_1584343:       var_130 = CVar(CLng(6)) 'Long
  loc_1584376:       var_100 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_158437D:       LateIdCallSt
  loc_15843B6:       var_110 = CVar(CLng(var_88)) 'Long
  loc_15843BE:       var_150 = CVar(CLng(7)) 'Long
  loc_15843EB:       var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.00"))) 'String
  loc_15843F2:       LateIdCallSt
  loc_158442B:       var_110 = CVar(CLng(var_88)) 'Long
  loc_1584433:       var_150 = CVar(CLng(8)) 'Long
  loc_1584460:       var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1584467:       LateIdCallSt
  loc_15844A0:       var_110 = CVar(CLng(var_88)) 'Long
  loc_15844A8:       var_150 = CVar(CLng(9)) 'Long
  loc_15844D5:       var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_15844DC:       LateIdCallSt
  loc_1584531:       var_B0 = Me.Fields
  loc_1584539:       var_B4 = var_B0.Item("Rate")
  loc_158454A:       var_130 = CVar(CLng(var_88)) 'Long
  loc_1584552:       var_190 = CVar(CLng(&HA)) 'Long
  loc_1584589:       var_180 = CVar(CStr(Format((Me.Fields.Item("qty").Value * var_B4.Value), "0.00"))) 'String
  loc_1584590:       LateIdCallSt
  loc_15845D5:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_15845DD:       var_130 = CVar(CLng(5)) 'Long
  loc_1584604:       var_120 = CVar(CStr(Val(CStr(Right(CVar(Me.Fields.Item("DocID")), 8))))) 'String
  loc_158460B:       LateIdCallSt
  loc_1584626:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_158462E:       var_130 = CVar(CLng(&HD)) 'Long
  loc_1584661:       var_100 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_1584668:       LateIdCallSt
  loc_1584682:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_158468A:       var_130 = CVar(CLng(&HC)) 'Long
  loc_15846BD:       var_100 = CVar(CStr(Me.Fields.Item("SNo").Value)) 'String
  loc_15846C4:       LateIdCallSt
  loc_1584716:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_88)), var_238, var_100, CVar(CLng(&H19)), CVar(CLng(var_88)))) 'String
  loc_158471D:       LateIdCallSt
  loc_158476B:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_88)), var_238, var_100, var_238)) 'String
  loc_1584772:       LateIdCallSt
  loc_15847C0:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_88)), var_238, var_100)) 'String
  loc_15847C7:       LateIdCallSt
  loc_1584815:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_88)), var_238, var_100)) 'String
  loc_158481C:       LateIdCallSt
  loc_158486A:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_88)), var_238, var_100)) 'String
  loc_1584871:       LateIdCallSt
  loc_158488F:       var_130 = CVar(CLng(&H1A)) 'Long
  loc_15848BF:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), var_130, CVar(CLng(var_88)), var_238, var_100)) 'String
  loc_15848C6:       LateIdCallSt
  loc_1584913:       var_9C = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_100, -1, var_B0, var_238)
  loc_1584927:       unk_55277D.Execute var_100 & CStr(Right(CVar(Me.Fields.Item("DocID")), 8)) & "'", var_100, var_130
  loc_1584932:       Set var_90 = var_B0
  loc_1584960:       If (var_90.RecordCount > 0) Then
  loc_158499A:         Proc_6_39_E7D3A0(var_100, CVar(var_90.Fields.Item("Rate")), CVar(CLng(&H10)), CVar(CLng(var_88)))
  loc_15849A3:         var_120 = CVar(CStr(var_100)) 'String
  loc_15849AB:         Set var_B0 = Me.FGrid
  loc_15849B1:         LateIdCallSt
  loc_15849C9:       End If
  loc_15849EA:       var_D0 = CVar(Proc_6_38_E69628(global_136, CVar(CLng(&H16)), CVar(CLng(var_88)), var_B0)) 'String
  loc_15849F1:       LateIdCallSt
  loc_1584A00:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_1584A38:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), CVar(CLng(&H17)), var_F0, var_238, CVar(Me.Fields.Item("RoomNo")))) 'String
  loc_1584A3F:       LateIdCallSt
  loc_1584A8A:       Set var_B0 = Me.Txt
  loc_1584A90:       Call 0.Method_Proc_135_92_1584F7C0 (CInt(3), var_B4, Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), var_238, var_100, var_120))
  loc_1584A98:       var_B4.Tag = var_F0
  loc_1584AE8:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_88)))) 'String
  loc_1584AEF:       LateIdCallSt
  loc_1584B3D:       var_100 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_88)), var_238)) 'String
  loc_1584B44:       LateIdCallSt
  loc_1584B81:       var_A0 = Me.Fields.Item("RoomCat")
  loc_1584B92:       var_100 = CVar(Proc_6_38_E69628(CVar(var_A0), CVar(CLng(&H15)), CVar(CLng(var_88)), var_238)) 'String
  loc_1584B99:       LateIdCallSt
  loc_1584BAD:       Set var_238 = Nothing 
  loc_1584BB7:       var_88 = (var_88 + 1)
  loc_1584BBA:       ' Referenced from: 15841CE
  loc_1584BC0:       Me.MoveNext
  loc_1584BE3:       If ((Me.EOF = &HFF) And (CInt(var_8C) = 0)) Then
  loc_1584BF1:         If (global_192 = "Room Service") Then
  loc_1584C01:           var_9C = Me.lblTable.Caption
  loc_1584C14:           If (var_9C = vbNullString) Then
  loc_1584C28:             Set var_94 = Me.Txt
  loc_1584C2E:             Call 0.Method_Proc_135_92_1584F7C0 (CInt(3), var_A0, var_9C, "Room # ", var_88, var_238)
  loc_1584C3F:             var_A4 = var_A0.Text & var_9C
  loc_1584C46:             Set var_B0 = Me.lblTable
  loc_1584C4C:             var_B0.Caption = var_A4
  loc_1584C64:           Else
  loc_1584C8E:             Set var_A0 = Me.Txt
  loc_1584C94:             Call 0.Method_Proc_135_92_1584F7C0 (CInt(3), var_B0, var_A4, Me.lblTable.Caption & ",")
  loc_1584C9C:             var_100 = var_B0.Text
  loc_1584CB2:             Me.lblTable.Caption = var_238 & var_A4
  loc_1584CCD:           End If
  loc_1584CD0:         Else
  loc_1584CDD:           var_9C = Me.lblTable.Caption
  loc_1584CF0:           If (var_9C = vbNullString) Then
  loc_1584D04:             Set var_94 = Me.Txt
  loc_1584D0A:             Call 0.Method_Proc_135_92_1584F7C0 (CInt(3), var_A0, var_9C)
  loc_1584D12:             "Table # " = var_A0.Text
  loc_1584D22:             Set var_B0 = Me.lblTable
  loc_1584D28:             var_B0.Caption = var_120 & var_9C
  loc_1584D40:           Else
  loc_1584D4D:             var_9C = Me.lblTable.Caption
  loc_1584D6A:             Set var_A0 = Me.Txt
  loc_1584D70:             Call 0.Method_Proc_135_92_1584F7C0 (CInt(3), var_B0)
  loc_1584D8E:             Me.lblTable.Caption = var_9C & "," & var_B0.Text
  loc_1584DA9:           End If
  loc_1584DA9:         End If
  loc_1584DA9:       End If
  loc_1584DAD:       var_8C = CByte(0) 'Byte
  loc_1584DB1:       GoTo loc_15840A9
  loc_1584DB4:     End If
  loc_1584DC7:     Me.FGrid.FixedRows = 1
  loc_1584DD2:   Else
  loc_1584DE0:     Me.FGrid.Redraw = True
  loc_1584DEE:     If (var_88 = 1) Then
  loc_1584E04:       Me.FGrid.Rows = 1
  loc_1584E2A:       var_D0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_1584E32:       Set var_A0 = Me.FGrid
  loc_1584E5F:       Me.FGrid.FixedRows = 1
  loc_1584E67:     End If
  loc_1584E67:   End If
  loc_1584E67: End If
  loc_1584E75: Me.FGrid.Redraw = True
  loc_1584E83: If (var_88 = 1) Then
  loc_1584E99:   Me.FGrid.Rows = 1
  loc_1584EBF:   var_D0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000))) 'String
  loc_1584EC7:   Set var_A0 = Me.FGrid
  loc_1584EF4:   Me.FGrid.FixedRows = 1
  loc_1584EFC: End If
  loc_1584F05: Call Proc_135_84_165F774(CInt(var_86))
  loc_1584F1A: Set var_94 = Me.Txt
  loc_1584F20: Call 0.Method_Proc_135_92_1584F7C0 (CInt(var_86), var_A0, var_9C, FGrid.DispID_10000)
  loc_1584F4B: If ((var_9C <> vbNullString) And (global_180 = "Y")) Then
  loc_1584F5E:   Set var_94 = Me.Txt
  loc_1584F64:   Call 0.Method_Proc_135_92_1584F7C0 (CInt(var_86), var_A0, vbNullString)
  loc_1584F6C:   var_A0.Text = var_A0.Text
  loc_1584F78: End If
  loc_1584F78: Exit Sub
End Sub
