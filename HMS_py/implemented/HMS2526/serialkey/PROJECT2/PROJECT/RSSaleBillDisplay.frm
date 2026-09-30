VERSION 5.00
Begin VB.Form RSSaleBillDisplay
  Caption = "Bill Look Up"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "RSSaleBillDisplay.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8325
  ClientHeight = 7545
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
    Top = 7320
    Width = 8325
    Height = 225
    Visible = 0   'False
    TabIndex = 36
  End
  Begin TextBox TxtPer
    Index = 1
    Left = 4290
    Top = 7290
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 31
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
  Begin TextBox TxtGt
    Index = 1
    Left = 4830
    Top = 7290
    Width = 1185
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 30
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
  Begin TextBox Txt
    Index = 12
    Left = 4815
    Top = 10140
    Width = 3630
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    MaxLength = 25
    Locked = -1  'True
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
    Index = 11
    Left = 1890
    Top = 10125
    Width = 1695
    Height = 240
    Visible = 0   'False
    TabIndex = 4
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
  Begin TextBox Txt
    Index = 10
    Left = 2550
    Top = 8880
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Index = 9
    Left = 7605
    Top = 45
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
    Left = 10680
    Top = 6735
    Width = 8310
    Height = 2355
    Visible = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGTable
    Left = 8790
    Top = 7725
    Width = 4290
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 5
    Left = 4920
    Top = 8955
    Width = 480
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    ForeColor = &HC00000&
    Left = 5130
    Top = 915
    Width = 495
    Height = 285
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 5
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
    Left = 1425
    Top = 915
    Width = 2700
    Height = 285
    TabIndex = 3
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
  Begin Frame FrmList
    Left = 10515
    Top = 2070
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 10
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 90
      Width = 2415
      Height = 1800
      TabIndex = 11
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &H80000000&
    Left = 7755
    Top = 60
    Width = 2325
    Height = 210
    Visible = 0   'False
    TabIndex = 2
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
    Left = 1890
    Top = 9615
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 1
    Left = 6225
    Top = 9615
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 0
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
    Left = 1275
    Top = 1530
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
    Left = 405
    Top = 1245
    Width = 7470
    Height = 5520
    TabIndex = 6
  End
  Begin MSFlexGrid FGPoint
    Left = 7050
    Top = 6930
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin BtnEnh Command3
    Left = 7890
    Top = 885
    Width = 1890
    Height = 570
    TabIndex = 28
  End
  Begin BtnEnh CmdExit
    Left = 7890
    Top = 1455
    Width = 1890
    Height = 570
    TabIndex = 29
  End
  Begin Label lblTotal
    Caption = "Total : "
    Left = 6840
    Top = 6840
    Width = 1035
    Height = 360
    TabIndex = 37
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
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
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 35
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &H0&
    Left = 2910
    Top = 7290
    Width = 465
    Height = 240
    Visible = 0   'False
    TabIndex = 34
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 4665
    Top = 7290
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 33
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    Left = 2775
    Top = 7605
    Width = 900
    Height = 210
    Visible = 0   'False
    TabIndex = 32
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lbltable
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 5085
    Top = 495
    Width = 4605
    Height = 390
    TabIndex = 23
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
  Begin Label lblSession
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HC00000&
    Left = 3135
    Top = 510
    Width = 1665
    Height = 330
    TabIndex = 21
    Alignment = 2 'Center
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 75
    Top = 495
    Width = 2565
    Height = 270
    TabIndex = 16
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    BackColor = &HFFFFFF&
    Left = 0
    Top = 480
    Width = 9780
    Height = 405
    TabIndex = 27
  End
  Begin Label Label1
    Caption = "Party Name"
    Index = 8
    ForeColor = &H0&
    Left = 3705
    Top = 10125
    Width = 945
    Height = 210
    Visible = 0   'False
    TabIndex = 26
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
    Caption = "Order No"
    Index = 7
    ForeColor = &H0&
    Left = 525
    Top = 10125
    Width = 750
    Height = 210
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "Covers"
    Index = 0
    ForeColor = &HC00000&
    Left = 4365
    Top = 930
    Width = 645
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
    Caption = "Table No."
    Index = 2
    ForeColor = &HC00000&
    Left = 420
    Top = 930
    Width = 915
    Height = 240
    TabIndex = 12
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
    Caption = "Vr. No."
    Index = 3
    ForeColor = &H0&
    Left = 525
    Top = 9630
    Width = 585
    Height = 210
    Visible = 0   'False
    TabIndex = 9
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
    Left = 5745
    Top = 8925
    Width = 390
    Height = 210
    Visible = 0   'False
    TabIndex = 8
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
    Left = 1200
    Top = 9630
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 7
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
End

Attribute VB_Name = "RSSaleBillDisplay"

Private global_56 As Integer
Private global_160 As Integer
Private global_162 As Integer
Private global_240 As Long

Private Sub TopCtrl1_UnknownEvent_B 'E94840
  'Data Table: 523D30
  Dim var_10C As TextBox
  loc_E947D0: On Error Goto loc_E94838
  loc_E9480A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9480D:   Call Proc_177_70_10B1028()
  loc_E9481D:   Set var_108 = Me.Txt
  loc_E94823:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(3))
  loc_E9482B:   var_10C.SetFocus
  loc_E94837: End If
  loc_E94837: Exit Sub
  loc_E94838: ' Referenced from: E947D0
  loc_E94838: Proc_6_60_E63754(var_10C)
  loc_E9483D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1CA44
  'Data Table: 523D30
  loc_E1CA39: Me.Global.Unload Me
  loc_E1CA41: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3A088
  'Data Table: 523D30
  loc_E3A078: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A080: Call Proc_177_69_1831198(global_92)
  loc_E3A085: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A1A8
  'Data Table: 523D30
  loc_E3A198: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A1A0: Call Proc_177_69_1831198(global_92)
  loc_E3A1A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3A208
  'Data Table: 523D30
  loc_E3A1F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A200: Call Proc_177_69_1831198(global_92)
  loc_E3A205: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B108
  'Data Table: 523D30
  loc_E3B0F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B100: Call Proc_177_69_1831198(global_92)
  loc_E3B105: Exit Sub
  loc_E3B106: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E00A94
  'Data Table: 523D30
  loc_E00A8C: Call Proc_177_85_108C790()
  loc_E00A91: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E5F74C
  'Data Table: 523D30
  Dim Me As Recordset15
  loc_E5F707: If (global_148 <> "FAST") Then
  loc_E5F715:   Me.Requery -1
  loc_E5F71A: End If
  loc_E5F725: If (global_148 <> "FAST") Then
  loc_E5F733:   Me.Requery -1
  loc_E5F738: End If
  loc_E5F743: Me.Requery -1
  loc_E5F748: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F10168
  'Data Table: 523D30
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F10090: Set var_A4 = Me.ListView
  loc_F100DA: Set var_BC = Me.Txt
  loc_F100E0: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F100E8: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F10114: Me.FrmList.Visible = False
  loc_F10144: Set var_9C = Me.Txt
  loc_F1014A: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F10152: var_A4.SetFocus
  loc_F10166: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E39904
  'Data Table: 523D30
  loc_E398F8: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E398FB:   Call DGTable_UnknownEvent_9()
  loc_E39900: End If
  loc_E39900: Exit Sub
End Sub

Private Sub Command3_UnknownEvent_9 'DFFE8C
  'Data Table: 523D30
  Dim var_4786 As Integer
  loc_DFFE84: Call Proc_177_85_108C790()
  loc_DFFE89: Exit Sub
  loc_DFFE8A: var_4786 = 
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECDE04
  'Data Table: 523D30
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECDD66: Set var_88 = Me.TxtPer
  loc_ECDD6C: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECDD7A: Proc_6_74_E23240(var_8C)
  loc_ECDD86: Call Proc_177_72_E84B70(var_8C)
  loc_ECDD9A: Set var_88 = Me.TxtPer
  loc_ECDDA0: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECDDA8: var_8C.SelStart = 0
  loc_ECDDC1: Set var_88 = Me.TxtPer
  loc_ECDDC7: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECDDE2: Set var_90 = Me.TxtPer
  loc_ECDDE8: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECDDF0: var_98.SelLength = Len(var_8C.Text)
  loc_ECDE03: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A108
  'Data Table: 523D30
  loc_E5A0D5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A0DE:   Proc_6_75_E5335C(Shift)
  loc_E5A0E3: End If
  loc_E5A0F8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A101:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5A106: End If
  loc_E5A106: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E56D98
  'Data Table: 523D30
  loc_E56D6A: Set var_88 = Me.TxtPer
  loc_E56D70: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E56D8B: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E56D97: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E01D74
  'Data Table: 523D30
  loc_E01D6E: Call Proc_177_76_1778B9C(KeyCode)
  loc_E01D73: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E47554
  'Data Table: 523D30
  loc_E47532: Set var_88 = Me.TxtPer
  loc_E47538: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E47546: Proc_6_73_E23294(var_8C)
  loc_E47552: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1CCA4
  'Data Table: 523D30
  loc_E1CC99: Me.Global.Unload Me
  loc_E1CCA1: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1222FF4
  'Data Table: 523D30
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_1222B0E: Set var_88 = Me.TxtGrid
  loc_1222B14: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_1222B22: Proc_6_74_E23240(var_8C)
  loc_1222B2E: Call Proc_177_72_E84B70(var_8C)
  loc_1222B41: Set var_88 = Me.TxtGrid
  loc_1222B47: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_1222B4F: var_8C.MaxLength = 0
  loc_1222B67: If (Index = 0) Then
  loc_1222B7D:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222BBC:   Set var_108 = Me.TxtGrid
  loc_1222BC2:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1222BCA:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1222BFB:   var_114 = CLng(Me.FGrid.Col)
  loc_1222C0B:   If (var_114 = CLng(3)) Then
  loc_1222C35:     Set var_8C = Me.FGrid
  loc_1222C5B:     Me.Filter = CVar(CVar(CLng(1)) & CStr(var_8C.TextMatrix)) & "'")
  loc_1222C85:     Set var_88 = Me.TxtGrid
  loc_1222C8B:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4, CVar(CLng(Me.FGrid.Row)))
  loc_1222C93:     var_8C.MaxLength = "OutletCode='"
  loc_1222CA2:   Else
  loc_1222CA9:     If (var_114 = CLng(4)) Then
  loc_1222CC2:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222CF9:       Me.Filter = CVar(CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_1222D1E:       var_11C = Me.RecordCount
  loc_1222D35:       var_11E = Me.EOF
  loc_1222D49:       var_120 = Me.BOF
  loc_1222D69:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222DA5:       If (CVar(CLng(&HB)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1222DA8:         Exit Sub
  loc_1222DA9:       End If
  loc_1222DAF:       Me.MoveFirst
  loc_1222DC7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222DCF:       var_E4 = CVar(CLng(&HB)) 'Long
  loc_1222DD8:       Set var_8C = Me.FGrid
  loc_1222DDE:       var_B4 = var_8C.TextMatrix)
  loc_1222E13:       Me.Find "Code='" & CStr(var_B4) & "'", 0, 1
  loc_1222E38:       var_11E = Me.EOF
  loc_1222E43:       If (var_11E = &HFF) Then
  loc_1222E4C:         Me.MoveFirst
  loc_1222E51:       End If
  loc_1222E54:     Else
  loc_1222E5B:       If (var_114 = CLng(8)) Then
  loc_1222E6D:         Set var_88 = Me.TxtGrid
  loc_1222E73:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_134, var_B4, var_E4, var_C4)
  loc_1222E7B:         var_8C.MaxLength = var_C4
  loc_1222E90:         If (global_162 = 0) Then
  loc_1222E9B:           var_110 = "{Home}+{End}"
  loc_1222EA1:           Proc_303_0_FBACC8(CStr(var_B4), 0, ((var_11C = 0) Or ((var_11E = &HFF) Or (var_120 = &HFF))), var_C4)
  loc_1222EA9:         End If
  loc_1222EAC:       Else
  loc_1222EB3:         If (var_114 = CLng(2)) Then
  loc_1222EBF:           var_11C = Me.RecordCount
  loc_1222ED6:           var_11E = Me.EOF
  loc_1222EEA:           var_120 = Me.BOF
  loc_1222F0A:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222F46:           If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1222F49:             Exit Sub
  loc_1222F4A:           End If
  loc_1222F50:           Me.MoveFirst
  loc_1222F68:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222F70:           var_E4 = CVar(CLng(1)) 'Long
  loc_1222FB4:           Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_1222FE4:           If (Me.EOF = &HFF) Then
  loc_1222FED:             Me.MoveFirst
  loc_1222FF2:           End If
  loc_1222FF2:         End If
  loc_1222FF2:       End If
  loc_1222FF2:     End If
  loc_1222FF2:   End If
  loc_1222FF2: End If
  loc_1222FF2: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C1F2C
  'Data Table: 523D30
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_94 As String
  loc_12C18CB: var_86 = Shift
  loc_12C18DA: If (KeyCode = 0) Then
  loc_12C18E7:   If (CLng(Shift) = &H1B) Then
  loc_12C18F7:     Set var_8C = Me.TxtGrid
  loc_12C18FD:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_12C1905:     var_88 = var_90.Tag
  loc_12C1917:     Set var_98 = Me.TxtGrid
  loc_12C191D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12C1925:     var_9C.Text = var_94
  loc_12C1941:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C1946:     Call Proc_177_72_E84B70(arg_14)
  loc_12C194F:     Set var_8C = Me.FGrid
  loc_12C196C:     Set var_8C = Me.TxtGrid
  loc_12C1972:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12C197A:     var_90.Visible = FGrid.DispID_8001
  loc_12C1986:     Exit Sub
  loc_12C1987:   End If
  loc_12C199A:   var_B0 = CLng(Me.FGrid.Col)
  loc_12C19AA:   If (var_B0 = CLng(2)) Then
  loc_12C1A06:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12C1A09:     End If
  loc_12C1A13:     If (CLng(Shift) = &HD) Then
  loc_12C1A1C:       Call Proc_177_68_1887128(KeyCode, var_B6)
  loc_12C1A27:       If (var_B6 = &HFF) Then
  loc_12C1A6D:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, 7)
  loc_12C1A7D:       End If
  loc_12C1A7D:     End If
  loc_12C1A80:   Else
  loc_12C1A87:     If (var_B0 = CLng(4)) Then
  loc_12C1AE3:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12C1AE6:       End If
  loc_12C1AF0:       If (CLng(Shift) = &HD) Then
  loc_12C1AF9:         Call Proc_177_68_1887128(KeyCode, var_B6, 0, 3)
  loc_12C1B04:         If (var_B6 = &HFF) Then
  loc_12C1B51:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, CByte((CInt(&HA) + 1)))
  loc_12C1B61:         End If
  loc_12C1B61:       End If
  loc_12C1B64:     Else
  loc_12C1B6B:       If (var_B0 = CLng(8)) Then
  loc_12C1BAE:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_12C1BB7:           Call Proc_177_68_1887128(KeyCode, var_B6, 0, 7)
  loc_12C1BC2:           If (var_B6 = &HFF) Then
  loc_12C1C08:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, 8, 0)
  loc_12C1C2B:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C1C33:             var_EC = CVar(CLng(1)) 'Long
  loc_12C1C46:             Set var_90 = Me.FGrid
  loc_12C1C4C:             LateIdCallSt
  loc_12C1C71:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C1C79:             var_EC = CVar(CLng(2)) 'Long
  loc_12C1C8C:             Set var_90 = Me.FGrid
  loc_12C1C92:             LateIdCallSt
  loc_12C1CA7:             var_CC = CVar(CLng(3)) 'Long
  loc_12C1CB6:             Me.FGrid.Col = var_CC
  loc_12C1CBE:           End If
  loc_12C1CBE:         End If
  loc_12C1CC1:       Else
  loc_12C1CC8:         If (var_B0 = CLng(7)) Then
  loc_12C1D0B:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_12C1D14:             Call Proc_177_68_1887128(KeyCode, var_B6, var_90, global_220, var_EC, var_CC, var_90)
  loc_12C1D1F:             If (var_B6 = &HFF) Then
  loc_12C1D65:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, 8, 0, 0)
  loc_12C1D88:               var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C1D90:               var_EC = CVar(CLng(1)) 'Long
  loc_12C1DA3:               Set var_90 = Me.FGrid
  loc_12C1DA9:               LateIdCallSt
  loc_12C1DCE:               var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C1DD6:               var_EC = CVar(CLng(2)) 'Long
  loc_12C1DE9:               Set var_90 = Me.FGrid
  loc_12C1DEF:               LateIdCallSt
  loc_12C1E04:               var_CC = CVar(CLng(3)) 'Long
  loc_12C1E13:               Me.FGrid.Col = var_CC
  loc_12C1E1B:             End If
  loc_12C1E1B:           End If
  loc_12C1E1E:         Else
  loc_12C1E25:           If (var_B0 = CLng(3)) Then
  loc_12C1E32:             If (CLng(Shift) = &HD) Then
  loc_12C1E3B:               Call Proc_177_68_1887128(KeyCode, var_B6, var_90, global_220, var_EC, var_CC, var_90, global_228)
  loc_12C1E46:               If (var_B6 = &HFF) Then
  loc_12C1E93:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, CByte((CInt(7) + 1)), 0, 0)
  loc_12C1EB6:                 var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C1EBE:                 var_EC = CVar(CLng(3)) 'Long
  loc_12C1EF1:                 If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12C1F06:                   Me.FGrid.Col = CVar(CLng(3))
  loc_12C1F11:                 Else
  loc_12C1F23:                   Me.FGrid.Col = CVar(CLng(7))
  loc_12C1F2B:                 End If
  loc_12C1F2B:               End If
  loc_12C1F2B:             End If
  loc_12C1F2B:           End If
  loc_12C1F2B:         End If
  loc_12C1F2B:       End If
  loc_12C1F2B:     End If
  loc_12C1F2B:   End If
  loc_12C1F2B: End If
  loc_12C1F2B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F8A168
  'Data Table: 523D30
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_F8A00B: Proc_6_58_E06050(arg_10)
  loc_F8A01C: If (KeyAscii = 0) Then
  loc_F8A032:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8A042:   If (var_A0 = CLng(3)) Then
  loc_F8A060:     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_F8A075:       Me.FGrid.Col = CVar(CLng(4))
  loc_F8A07D:     End If
  loc_F8A080:   Else
  loc_F8A087:     If (var_A0 = CLng(2)) Then
  loc_F8A08A:       GoTo loc_F8A164
  loc_F8A08D:     End If
  loc_F8A094:     If (var_A0 = CLng(4)) Then
  loc_F8A097:       GoTo loc_F8A164
  loc_F8A09A:     End If
  loc_F8A0A1:     If (var_A0 = CLng(7)) Then
  loc_F8A0AE:       Set var_8C = Me.TxtGrid
  loc_F8A0B4:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C4)
  loc_F8A0CF:       Proc_6_42_129B55C(var_C4, arg_10, 8)
  loc_F8A0DE:     Else
  loc_F8A0E5:       If (var_A0 = CLng(8)) Then
  loc_F8A0F2:         Set var_8C = Me.TxtGrid
  loc_F8A0F8:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C4, 3)
  loc_F8A113:         Proc_6_42_129B55C(var_C4, arg_10, 8)
  loc_F8A122:       Else
  loc_F8A129:         If (var_A0 = CLng(3)) Then
  loc_F8A147:           If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_F8A15C:             Me.FGrid.Col = CVar(CLng(4))
  loc_F8A164:           End If
  loc_F8A164:         End If
  loc_F8A164:         ' Referenced from:   F8A097
  loc_F8A164:         ' Referenced from:   F8A08A
  loc_F8A164:       End If
  loc_F8A164:     End If
  loc_F8A164:   End If
  loc_F8A164: End If
  loc_F8A164: Exit Sub
  loc_F8A165: 3 = var_A0
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E01810
  'Data Table: 523D30
  loc_E01804: On Error Goto loc_E01808
  loc_E01807: Exit Sub
  loc_E01808: ' Referenced from: E01804
  loc_E01808: Proc_6_60_E63754()
  loc_E0180D: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E244A0
  'Data Table: 523D30
  Dim arg_10 As Integer
  loc_E24488: If (Cancel = 0) Then
  loc_E24491:   Call Proc_177_68_1887128(Cancel, var_88)
  loc_E2449A:   arg_10 = Not(var_88)
  loc_E2449D: End If
  loc_E2449D: Exit Sub
  loc_E2449E: Set var_4800 = arg_10
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECD2F4
  'Data Table: 523D30
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECD256: Set var_88 = Me.TxtGt
  loc_ECD25C: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECD26A: Proc_6_74_E23240(var_8C)
  loc_ECD276: Call Proc_177_72_E84B70(var_8C)
  loc_ECD28A: Set var_88 = Me.TxtGt
  loc_ECD290: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECD298: var_8C.SelStart = 0
  loc_ECD2B1: Set var_88 = Me.TxtGt
  loc_ECD2B7: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECD2D2: Set var_90 = Me.TxtGt
  loc_ECD2D8: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECD2E0: var_98.SelLength = Len(var_8C.Text)
  loc_ECD2F3: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E59E38
  'Data Table: 523D30
  loc_E59E05: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E59E0E:   Proc_6_75_E5335C(Shift)
  loc_E59E13: End If
  loc_E59E28: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E59E31:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E59E36: End If
  loc_E59E36: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E5615C
  'Data Table: 523D30
  loc_E5612E: Set var_88 = Me.TxtGt
  loc_E56134: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E5614F: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E5615B: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E46D34
  'Data Table: 523D30
  loc_E46D12: Set var_88 = Me.TxtGt
  loc_E46D18: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E46D26: Proc_6_73_E23294(var_8C)
  loc_E46D32: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E01AA4
  'Data Table: 523D30
  loc_E01A9E: Call Proc_177_76_1778B9C(Cancel)
  loc_E01AA3: Exit Sub
End Sub

Private Sub Form_Load() '1301060
  'Data Table: 523D30
  Dim var_B4 As Variant
  Dim var_B8 As String
  Dim var_BC As String
  Dim unk_523DA5 As Connection15
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim unk_523D50 As Connection15
  Dim var_8C As Recordset15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Field20
  Dim Me As Recordset15
  Dim var_140 As Variant
  Dim var_170 As String
  loc_130097B: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1300993: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13009CA: global_228 = global_60
  loc_13009DE: Me.LblRest.Caption = global_224
  loc_13009F7: Set var_B4 = Me.LblFormCaption
  loc_13009FD: var_B4.Caption = global_224 & " Bill View"
  loc_1300A3D: unk_523DA5.Execute "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F95078 & "' AND RestCode='" & global_60 & "'", var_D4, -1
  loc_1300A4E: Set global_200 = var_B4
  loc_1300A72: If (global_216 = "Room Service") Then
  loc_1300A86:   Call 0.Method_Form_Load0 (4, var_D8, 0, Me.Label1)
  loc_1300A8E:   var_D8.Visible = Proc_96_17_FDCB2C(global_60, global_216, global_224)
  loc_1300AA5:   Set var_B4 = Me.Label1
  loc_1300AAB:   Call 0.Method_Form_Load0 (5, var_D8, 0)
  loc_1300AB3:   var_D8.Visible = global_220
  loc_1300ACA:   Set var_B4 = Me.Label1
  loc_1300AD0:   Call 0.Method_Form_Load0 (6, var_D8)
  loc_1300AD8:   var_D8.Visible = False
  loc_1300AEF:   Set var_B4 = Me.Txt
  loc_1300AF5:   Call 0.Method_Form_Load0 (6, var_D8)
  loc_1300AFD:   var_D8.Visible = False
  loc_1300B14:   Set var_B4 = Me.Txt
  loc_1300B1A:   Call 0.Method_Form_Load0 (7, var_D8)
  loc_1300B22:   var_D8.Visible = False
  loc_1300B39:   Set var_B4 = Me.Txt
  loc_1300B3F:   Call 0.Method_Form_Load0 (8, var_D8)
  loc_1300B47:   var_D8.Visible = False
  loc_1300B53: End If
  loc_1300B59: If (MemVar_1F950B8 <> 1) Then
  loc_1300B60:   Set var_B4 = Me.TopCtrl1
  loc_1300B66:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(global_232)
  loc_1300B90:   var_E8 = CVar(Replace(CStr(var_D4), "D", "*", 1, -1, 0)) 'String
  loc_1300B98:   Set var_D8 = Me.TopCtrl1
  loc_1300B9E:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_E8)
  loc_1300BB4: End If
  loc_1300BDB: unk_523D50.Execute "Select RateInclTax from depart where code='" & global_60 & "'", var_D4, -1
  loc_1300BE6: Set var_8C = var_B4
  loc_1300C0A: If (var_8C.RecordCount > 0) Then
  loc_1300C24:   var_D8 = var_8C.Fields.Item("RateInclTax")
  loc_1300C2C:   var_D4 = CVar(var_D8) 'Address
  loc_1300C3E:   global_136 = Proc_6_38_E69628(var_D4)
  loc_1300C4A: End If
  loc_1300C4F: Set var_8C = Nothing
  loc_1300C58: var_B0 = 0
  loc_1300C88: unk_523D50.Execute "Select KOtYn from depart where Code='" & global_60 & "'", var_D4, -1
  loc_1300C90: var_B4 = var_B4.Fields
  loc_1300C98: var_B0 = var_D8.Item(var_D8)
  loc_1300CA0: var_F0 = var_F0.Value
  loc_1300CAF: global_204 = CStr(var_E8)
  loc_1300CD6: Set global_84 = New 
  loc_1300CE8: Me.Recordset15.CursorLocation = 3
  loc_1300D12: var_D4 = CVar("SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' ORDER BY NAME") 'String
  loc_1300D27: Call Proc_177_74_114DA68(1, -1)
  loc_1300D36: Set global_92 = New 
  loc_1300D48: Me.Recordset15.CursorLocation = 3
  loc_1300D58: Proc_6_7_F26918(var_D4, MemVar_1F950EC)
  loc_1300D63: var_140 = 0
  loc_1300D83: var_BC = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_1300D93: unk_523D50.Execute "Select KOtYn from depart where Code='" & global_60 & "'" & "'", var_130, -1
  loc_1300D9B: var_B4 = var_B4.Fields
  loc_1300DA3: var_140 = var_D8.Item(var_D8)
  loc_1300DAB: var_F0 = var_F0.Value
  loc_1300DCE: var_B8 = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From Sale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE) WHERE S.LOGSITE_CODE='" & MemVar_1F95078
  loc_1300DD5: var_E8 = CVar(var_B8 & "' AND S.VDate=") 'String
  loc_1300DFF: r_D4, CVar(MemVar_1F95044), 3 var_E8 & var_D4 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='" & var_150 & "' ORDER BY S.DOCID", CVar(MemVar_1F95044), 3
  loc_1300E4E: Call 0.Method_arg_50 (var_B8, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_D4, -1, var_B4, var_D8, 0)
  loc_1300E75: unk_523D50.Execute var_F0 & var_B8 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_E8, 1
  loc_1300E7D: -1 = var_B4.Fields
  loc_1300E85: var_E8 = var_D8.Item(var_150)
  loc_1300E8D: var_B4 = var_F0.Value
  loc_1300EBA: If (var_E8 > 0) Then
  loc_1300EF5:   Call 0.Method_arg_50 (var_B8, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_D4, -1, var_B4, var_D8, 0)
  loc_1300F1C:   unk_523D50.Execute var_F0 & var_B8 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_E8, "SearchCode='"
  loc_1300F24:   0 = var_B4.Fields
  loc_1300F2C:   var_170 = var_D8.Item(1)
  loc_1300F34:    = var_F0.Value
  loc_1300F53:   Me.Find CStr(var_E8 & "'"), , 
  loc_1300F7B: End If
  loc_1300F92: If (Me.RecordCount > 0) Then
  loc_1300FA9:   If (Me.EOF = &HFF) Then
  loc_1300FB2:     Me.MoveLast
  loc_1300FB7:   End If
  loc_1300FB7: End If
  loc_1300FC0: Call 0.Method_arg_160 (var_B4)
  loc_1300FCE: Call 0.Method_arg_164 (var_B4)
  loc_1300FD6: Call Proc_177_63_13B764C()
  loc_1300FEF: If (RSSaleBillDisplay.OpenMode = 1) Then
  loc_1301003:   Set var_B4 = Me.Txt
  loc_1301009:   Call 0.Method_Form_Load0 (CInt(3), var_D8)
  loc_1301011:   var_D8.Text = global_244
  loc_130102E:   Set var_B4 = Me.Txt
  loc_1301034:   Call 0.Method_Form_Load0 (CInt(3), var_D8)
  loc_130103C:   var_D8.Tag = global_244
  loc_1301054:   Call Txt_Validate(CInt(3))
  loc_1301059: End If
  loc_1301059: Exit Sub
  loc_130105A: Proc_6_60_E63754(0)
  loc_130105F: Exit Sub
End Sub

Private Sub Form_Resize() 'E53944
  'Data Table: 523D30
  loc_E5391A: Me.LblFormCaption.Left = CDbl(0)
  loc_E53928: Call 0.Method_arg_100 (var_8C)
  loc_E5393A: Me.LblFormCaption.Width = var_8C
  loc_E53942: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8AE50
  'Data Table: 523D30
  loc_E8ADE3: Set global_84 = Nothing
  loc_E8ADF5: Set global_80 = Nothing
  loc_E8AE07: Set global_96 = Nothing
  loc_E8AE13: global_56 = 0
  loc_E8AE21: Set global_84 = Nothing
  loc_E8AE33: Set global_200 = Nothing
  loc_E8AE45: Set global_52 = Nothing
  loc_E8AE4C: Exit Sub
End Sub

Private Sub Form_Activate() '101FBA8
  'Data Table: 523D30
  Dim var_C8 As Integer
  Dim var_8C As String
  Dim unk_523D50 As Connection15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_88 As Recordset15
  loc_101F9B4: var_C8 = 0
  loc_101F9D4: var_8C = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_101F9E4: unk_523D50.Execute var_8C & "'", var_B0, -1
  loc_101F9EC: var_B4 = var_B4.Fields
  loc_101F9F4: var_C8 = var_B8.Item(var_B8)
  loc_101F9FC: var_CC = var_CC.Value
  loc_101FA04: var_FC = var_DC & var_DC 
  loc_101FA0D: var_11C = var_FC & "' Order by Description" 
  loc_101FA1B: unk_523D50.Execute CStr(var_11C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_140
  loc_101FA26: Set var_88 = var_144
  loc_101FA5E: If (var_88.RecordCount > 0) Then
  loc_101FA7B:   var_B8 = var_88.Fields.Item(0)
  loc_101FA92:   global_144 = CStr(var_B8.Value)
  loc_101FAA6: Else
  loc_101FAB9:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_101FABF:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_101FADC:   Me.Global.Unload Me
  loc_101FAE4:   Exit Sub
  loc_101FAE5: End If
  loc_101FAEB: var_C8 = 0
  loc_101FB1B: unk_523D50.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_144 & "'", var_B0, -1
  loc_101FB23: var_B4 = var_B4.Fields
  loc_101FB2B: var_C8 = var_B8.Item(var_B8)
  loc_101FB33: var_CC = var_CC.Value
  loc_101FB5A: If (var_DC <= 0) Then
  loc_101FB76:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_101FB93:   Me.Global.Unload Me
  loc_101FB9B:   Exit Sub
  loc_101FB9C: End If
  loc_101FBA1: Set var_88 = Nothing
  loc_101FBA4: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25BAC
  'Data Table: 523D30
  loc_E25B91: If (global_56 = &HFF) Then
  loc_E25BA1:   Me.Global.Unload Me
  loc_E25BA9: End If
  loc_E25BA9: Exit Sub
  loc_E25BAA: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3CF08
  'Data Table: 523D30
  loc_E3CEDC: On Error Goto loc_E3CF00
  loc_E3CEF7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3CEFF: Exit Sub
  loc_E3CF00: ' Referenced from: E3CEDC
  loc_E3CF00: Proc_6_60_E63754(Shift)
  loc_E3CF05: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FE86BC
  'Data Table: 523D30
  Dim var_86 As Integer
  Dim Me As Recordset15
  loc_FE84E7: var_86 = Shift
  loc_FE84F4: If (CLng(Shift) = &H1B) Then
  loc_FE84F7:   Call Proc_177_72_E84B70(var_86)
  loc_FE84FC:   Exit Sub
  loc_FE84FD: End If
  loc_FE850B: If (KeyCode = CInt(3)) Then
  loc_FE852B:   Set var_A0 = Me.FGPoint
  loc_FE8536:   Set var_9C = Nothing
  loc_FE8568:   Proc_6_69_134A630(Me.DGTable, Me.Txt, CInt(3), global_96, Shift, 0)
  loc_FE85D7:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_FE85DE:     Set var_9C = Me.DGTable
  loc_FE85FD:     Proc_6_138_106E830(var_9C, global_96, KeyCode, Me.FGPoint, 1)
  loc_FE860B:   End If
  loc_FE860B: End If
  loc_FE8644: If ((CBool(Me.DGTable.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_FE8665:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_FE8668:     Exit Sub
  loc_FE8669:   End If
  loc_FE867E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FE8687:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_FE868C:   End If
  loc_FE8694:   If (KeyCode <> CInt(3)) Then
  loc_FE86AC:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FE86B5:       Proc_6_76_E533C8(Shift, arg_14, var_A0)
  loc_FE86BA:     End If
  loc_FE86BA:   End If
  loc_FE86BA: End If
  loc_FE86BA: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F7A924
  'Data Table: 523D30
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F7A7D8: On Error Goto loc_F7A91E
  loc_F7A7DE: Proc_6_58_E06050(arg_10)
  loc_F7A7E6: var_86 = KeyAscii
  loc_F7A7F1: If Not (var_86 = CInt(0)) Then
  loc_F7A7FC:   If (var_86 = CInt(4)) Then
  loc_F7A7FF:   End If
  loc_F7A809:   Set var_8C = Me.Txt
  loc_F7A80F:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F7A82A:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_F7A839: Else
  loc_F7A841:   If Not (var_86 = CInt(6)) Then
  loc_F7A84C:     If (var_86 = CInt(7)) Then
  loc_F7A84F:     End If
  loc_F7A859:     Set var_8C = Me.Txt
  loc_F7A85F:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F7A87A:     Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_F7A889:   Else
  loc_F7A891:     If (var_86 = CInt(3)) Then
  loc_F7A8B0:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F7A8DD:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_F7A90F:         Proc_6_138_106E830(Me.DGTable, global_96, KeyAscii, Me.FGPoint)
  loc_F7A91D:       End If
  loc_F7A91D:     End If
  loc_F7A91D:   End If
  loc_F7A91D: End If
  loc_F7A91D: Exit Sub
  loc_F7A91E: ' Referenced from: F7A7D8
  loc_F7A91E: Proc_6_60_E63754(0, 2)
  loc_F7A923: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F86BB4
  'Data Table: 523D30
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_118 As Double
  Dim var_A4 As TextBox
  Dim var_120 As Double
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_10C As TextBox
  loc_F86A8B: var_86 = KeyCode
  loc_F86A96: If Not (var_86 = CInt(6)) Then
  loc_F86AA1:   If (var_86 = CInt(7)) Then
  loc_F86AA4:   End If
  loc_F86AB2:   Set var_8C = Me.Txt
  loc_F86AB8:   Call 0.Method_Txt_KeyUp0 (CInt(6), var_90)
  loc_F86ACD:   var_118 = Val(var_90.Text)
  loc_F86AD7:   Set var_98 = Me.TxtGt
  loc_F86ADD:   Call 0.Method_Txt_KeyUp8 (var_9A, var_118)
  loc_F86AEF:   Set var_A0 = Me.TxtGt
  loc_F86AF5:   Call 0.Method_Txt_KeyUp0 (var_9A, var_A4)
  loc_F86B0A:   var_120 = Val(var_A4.Text)
  loc_F86B1B:   Set var_AC = Me.Txt
  loc_F86B21:   Call 0.Method_Txt_KeyUp0 (CInt(7), var_B0, var_B4)
  loc_F86B59:   var_D4 = CVar(((var_118 - var_B0.Text) - Val(var_B4))) 'Double
  loc_F86B77:   Set var_108 = Me.Txt
  loc_F86B7D:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_10C, CStr(Format(var_D4, "0.00")), 1)
  loc_F86B85:   var_10C.Text = 1
  loc_F86BB3: End If
  loc_F86BB3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48734
  'Data Table: 523D30
  loc_E48712: Set var_88 = Me.Txt
  loc_E48718: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48726: Proc_6_73_E23294(var_8C)
  loc_E48732: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15D21AC
  'Data Table: 523D30
  Dim var_A2 As Integer
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_110 As Variant
  Dim var_B0 As Variant
  Dim var_120 As Variant
  Dim var_F8 As Variant
  Dim var_B8 As String
  Dim var_148 As Variant
  Dim var_D8 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  Dim var_1B0 As Variant
  Dim var_8E As Integer
  Dim var_144 As Variant
  Dim unk_523D50 As Connection15
  Dim var_94 As Recordset15
  Dim var_1C4 As MSHFlexGrid
  Dim var_1CC As Double
  Dim var_A0 As Double
  loc_15D0E78: On Error Goto loc_15D21A4
  loc_15D0E7E: var_A2 = Cancel
  loc_15D0E89: If (var_A2 = CInt(3)) Then
  loc_15D0ECD:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15D0EDD:     Set var_B0 = Me.Txt
  loc_15D0EE3:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0F02:     If (var_B4.Text = vbNullString) Then
  loc_15D0F12:       Set var_B0 = Me.Txt
  loc_15D0F18:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0F20:       var_B4.Text = vbNullString
  loc_15D0F39:       Set var_B0 = Me.Txt
  loc_15D0F3F:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0F47:       var_B4.Tag = vbNullString
  loc_15D0F5E:       If (global_152 = "RO") Then
  loc_15D0F67:         global_148 = vbNullString
  loc_15D0F6B:       End If
  loc_15D0F6B:     End If
  loc_15D0F6E:   Else
  loc_15D0F7B:     Set var_B0 = Me.Txt
  loc_15D0F81:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0FA0:     If (var_B4.Text = vbNullString) Then
  loc_15D0FB0:       Set var_B0 = Me.Txt
  loc_15D0FB6:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0FD5:       If (var_B4.Text = vbNullString) Then
  loc_15D0FE5:         Set var_B0 = Me.Txt
  loc_15D0FEB:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0FF3:         var_B4.Text = vbNullString
  loc_15D100C:         Set var_B0 = Me.Txt
  loc_15D1012:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D101A:         var_B4.Tag = vbNullString
  loc_15D1031:         If (global_152 = "RO") Then
  loc_15D103A:           global_148 = vbNullString
  loc_15D103E:         End If
  loc_15D103E:       End If
  loc_15D1041:     Else
  loc_15D104E:       Set var_B0 = Me.Txt
  loc_15D1054:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D105C:       var_B8 = var_B4.Tag
  loc_15D106A:       var_D8 = Trim(CVar(var_B8))
  loc_15D1072:       var_E8 = vbNullString
  loc_15D1088:       If CBool(var_D8 <> var_E8) Then
  loc_15D1091:         Me.MoveFirst
  loc_15D10B4:         Set var_B0 = Me.Txt
  loc_15D10BA:         Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_B8, "Code='")
  loc_15D10C2:         0 = var_B4.Tag
  loc_15D10DB:         Me.Find 1 & var_B8 & "'", var_E8, var_A2
  loc_15D10F0:       End If
  loc_15D113A:       var_F8 = (CVar(global_236) <> Me.Fields.Item("Code").Value) And (global_236 <> vbNullString)
  loc_15D114E:       If CBool(var_F8) Then
  loc_15D1180:         If (MsgBox("Do You Want to Select Another Table", &H24, var_D8, var_F8, var_140) = 7) Then
  loc_15D1183:           Exit Sub
  loc_15D1184:         End If
  loc_15D1184:       End If
  loc_15D11BF:       Set var_144 = Me.Txt
  loc_15D11C5:       Call 0.Method_Txt_Validate0 (Cancel, var_148)
  loc_15D11CD:       var_148.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15D121E:       Set var_144 = Me.Txt
  loc_15D1224:       Call 0.Method_Txt_Validate0 (Cancel, var_148)
  loc_15D122C:       var_148.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15D127A:       global_236 = CStr(Trim(CVar(Me.Fields.Item("Code"))))
  loc_15D12EE:       If (InStr(, 1, global_252 & Proc_6_38_E69628(CVar(Me.Fields.Item("Name")), "'") & "'", 0) = 0) Then
  loc_15D12FC:         If (global_252 = vbNullString) Then
  loc_15D1345:           global_252 = CStr("'" & Me.Fields.Item("Name").Value & "'")
  loc_15D135F:         Else
  loc_15D13AD:           global_252 = CStr(CVar(global_252 & ",'") & Me.Fields.Item("Name").Value & "'")
  loc_15D13C6:         End If
  loc_15D13C6:       End If
  loc_15D13D1:       If (global_216 = "Room Service") Then
  loc_15D1410:         Set var_144 = Me.Txt
  loc_15D1416:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_148)
  loc_15D141E:         var_148.Text = CStr(Me.Fields.Item("Code").Value)
  loc_15D1470:         Set var_144 = Me.Txt
  loc_15D1476:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_148)
  loc_15D147E:         var_148.Tag = CStr(Me.Fields.Item("FolioNoDocid").Value)
  loc_15D1494:       End If
  loc_15D149F:       If (global_152 = "RO") Then
  loc_15D14BF:         var_B4 = Me.Fields.Item("RoomCat")
  loc_15D14D6:         global_148 = CStr(var_B4.Value)
  loc_15D14E7:       End If
  loc_15D14E7:     End If
  loc_15D14E7:   End If
  loc_15D14F2:   If (global_204 = "Y") Then
  loc_15D14FF:     Set global_88 = New 
  loc_15D1511:     Me.Recordset15.CursorLocation = 3
  loc_15D1537:     If (Trim(global_252) = vbNullString) Then
  loc_15D1540:       global_252 = "''"
  loc_15D1544:     End If
  loc_15D1555:     If (global_216 = "Hall") Then
  loc_15D1566:       Set var_B0 = Me.Txt
  loc_15D156C:       Call 0.Method_Txt_Validate0 (CInt(3), var_B4)
  loc_15D159A:       var_B8 = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_60
  loc_15D15AF:       var_C8 = CVar(var_B8 & "'AND K.RoomNo ='" & var_B4.Tag & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_15D15B9:       Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_15D15D6:     Else
  loc_15D15D6:       Call Proc_177_63_13B764C(1)
  loc_15D15E6:       Proc_6_7_F26918(var_C8, MemVar_1F950EC)
  loc_15D1602:       var_110 = "Select K.Item,max(I.NAME) AS ITEMNAME,max(I.Unit) AS Unit,max(K.Rate) AS Rate,max(DispCode) as DispCode,max(I.UNIT),max(IC.RoundOff),max(IC.Code) as TaxCode,max(I.DiscApp) as IDiscApp,max(IC.taxStru) as TaxStru,Max(I.Kitchen) as Kitchen,max(D.Code) as DepartCode,max(D.ShortName) as DepartName ,Sum(K.Qty) as Qty From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode) Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_15D160A:       var_D8 = var_110 & var_C8 
  loc_15D1613:       var_F8 = var_D8 & " And K.RestCode='" 
  loc_15D1620:       var_140 = var_F8 & CVar(global_60) 
  loc_15D163F:       var_1B0 = var_140 & "' aND K.RoomNo IN (" & CVar(global_252) & ") and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y' Group by K.Item" 
  loc_15D164A:       Me.Open var_1B0, CVar(MemVar_1F95044), 3
  loc_15D1660:     End If
  loc_15D1677:     If (Me.RecordCount > 0) Then
  loc_15D1689:       Me.FGrid.Redraw = False
  loc_15D16A4:       Me.FGrid.Rows = 1
  loc_15D16BF:       Me.FGrid.Cols = 1
  loc_15D16C7:       Call Proc_177_63_13B764C(1, -1)
  loc_15D16DE:       If ((global_216 = "Room Service") And (var_8E <> 1)) Then
  loc_15D16EF:         Me.FGrid.Redraw = True
  loc_15D172F:         If (MsgBox(CVar("This is not valid Room No." & vbCrLf & "Are you sure to continue..."), &H14, var_D8, var_F8, var_140) = 7) Then
  loc_15D1732:           ' Referenced from: 15D1F7B
  loc_15D1732:         End If
  loc_15D1732:       End If
  loc_15D1744:       If Not(Me.EOF) Then
  loc_15D1747:         var_E8 = vbNullString
  loc_15D1751:         Set var_B0 = Me.FGrid
  loc_15D177C:         var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15D1789:         Set var_1C4 = Me.FGrid
  loc_15D1790:         var_E8 = CVar(CLng(var_8E)) 'Long
  loc_15D1798:         var_120 = CVar(CLng(0)) 'Long
  loc_15D17A2:         var_C8 = CVar(CStr(var_8E)) 'String
  loc_15D17A9:         LateIdCallSt
  loc_15D17B8:         var_110 = CVar(CLng(var_8E)) 'Long
  loc_15D17C0:         var_130 = CVar(CLng(&HB)) 'Long
  loc_15D17F3:         var_D8 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_15D17FA:         LateIdCallSt
  loc_15D1814:         var_110 = CVar(CLng(var_8E)) 'Long
  loc_15D181C:         var_130 = CVar(CLng(3)) 'Long
  loc_15D184F:         var_D8 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_15D1856:         LateIdCallSt
  loc_15D1870:         var_110 = CVar(CLng(var_8E)) 'Long
  loc_15D1878:         var_130 = CVar(CLng(4)) 'Long
  loc_15D18AB:         var_D8 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_15D18B2:         LateIdCallSt
  loc_15D18CC:         var_110 = CVar(CLng(var_8E)) 'Long
  loc_15D18D4:         var_130 = CVar(CLng(6)) 'Long
  loc_15D1907:         var_D8 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_15D190E:         LateIdCallSt
  loc_15D1947:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_15D194F:         var_160 = CVar(CLng(7)) 'Long
  loc_15D197C:         var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.00"))) 'String
  loc_15D1983:         LateIdCallSt
  loc_15D19BC:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_15D19C4:         var_160 = CVar(CLng(8)) 'Long
  loc_15D19F1:         var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_15D19F8:         LateIdCallSt
  loc_15D1A4D:         var_144 = Me.Fields
  loc_15D1A66:         var_130 = CVar(CLng(var_8E)) 'Long
  loc_15D1A92:         var_140 = (Me.Fields.Item("qty").Value * var_144.Item("Rate").Value) 'Variant
  loc_15D1AAC:         LateIdCallSt
  loc_15D1B0A:         var_D8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_1C4, CVar(CStr(Format(var_140, "0.00"))), 1, 1)) 'String
  loc_15D1B11:         LateIdCallSt
  loc_15D1B5F:         var_D8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_1C4, var_D8, CVar(CLng(&HA)))) 'String
  loc_15D1B66:         LateIdCallSt
  loc_15D1B84:         var_130 = CVar(CLng(&H1A)) 'Long
  loc_15D1BB4:         var_D8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), var_130, CVar(CLng(var_8E)), var_1C4, var_D8)) 'String
  loc_15D1BBB:         LateIdCallSt
  loc_15D1C08:         var_B8 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_D8, -1, var_144, var_1C4)
  loc_15D1C1C:         unk_523D50.Execute var_D8 & "This is not valid Room No." & vbCrLf & "'", var_130, var_1C4
  loc_15D1C27:         Set var_94 = var_144
  loc_15D1C55:         If (var_94.RecordCount > 0) Then
  loc_15D1C8F:           Proc_6_39_E7D3A0(var_D8, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H10)), CVar(CLng(var_8E)))
  loc_15D1C98:           var_F8 = CVar(CStr(var_D8)) 'String
  loc_15D1CA0:           Set var_144 = Me.FGrid
  loc_15D1CA6:           LateIdCallSt
  loc_15D1CBE:         End If
  loc_15D1CDF:         var_C8 = CVar(Proc_6_38_E69628(global_152, CVar(CLng(&H16)), CVar(CLng(var_8E)), var_144)) 'String
  loc_15D1CE6:         LateIdCallSt
  loc_15D1D2D:         var_D8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_1C4, CVar(Me.Fields.Item("DepartCode")))) 'String
  loc_15D1D34:         LateIdCallSt
  loc_15D1D82:         var_D8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_1C4, var_D8)) 'String
  loc_15D1D89:         LateIdCallSt
  loc_15D1DBC:         var_C8 = CVar(Proc_6_38_E69628(global_148, CVar(CLng(&H15)), CVar(CLng(var_8E)), var_1C4, var_D8)) 'String
  loc_15D1DC3:         LateIdCallSt
  loc_15D1DD2:         var_E8 = CVar(CLng(var_8E)) 'Long
  loc_15D1DDA:         var_120 = CVar(CLng(&HA)) 'Long
  loc_15D1DF5:         var_1CC = Val(CStr(var_1C4.TextMatrix)))
  loc_15D1DFF:         var_A0 = (var_A0 + var_1CC)
  loc_15D1E0A:         Set var_1C4 = Nothing 
  loc_15D1E14:         var_8E = (var_8E + 1)
  loc_15D1E1D:         Me.MoveNext
  loc_15D1E40:         If ((Me.EOF = &HFF) And (CInt(var_96) = 0)) Then
  loc_15D1E4E:           If (global_216 = "Room Service") Then
  loc_15D1E71:             If (Me.lbltable.Caption = vbNullString) Then
  loc_15D1EB8:               Me.lbltable.Caption = CStr("Room # " & Me.Fields.Item("Name").Value)
  loc_15D1ED3:             Else
  loc_15D1F2E:               Me.lbltable.Caption = CStr(CVar(Me.lbltable.Caption & ",") & Me.Fields.Item("Name").Value)
  loc_15D1F4E:             End If
  loc_15D1F51:           Else
  loc_15D1F68:             Me.lbltable.Caption = "Table # " & global_252
  loc_15D1F73:           End If
  loc_15D1F73:         End If
  loc_15D1F77:         var_96 = CByte(0) 'Byte
  loc_15D1F7B:         GoTo loc_15D1732
  loc_15D1F7E:       End If
  loc_15D1F91:       Me.FGrid.FixedRows = 1
  loc_15D1F9C:     Else
  loc_15D1FAA:       Me.FGrid.Redraw = True
  loc_15D1FB8:       If (var_8E = 1) Then
  loc_15D1FCE:         Me.FGrid.Rows = 1
  loc_15D1FF4:         var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_8E, var_A0, var_1CC, var_120))) 'String
  loc_15D1FFC:         Set var_B4 = Me.FGrid
  loc_15D2029:         Me.FGrid.FixedRows = 1
  loc_15D2031:       End If
  loc_15D2031:     End If
  loc_15D2031:   End If
  loc_15D203F:   Me.FGrid.Redraw = True
  loc_15D204D:   If (var_8E = 1) Then
  loc_15D2050:     var_E8 = 1
  loc_15D2063:     Me.FGrid.Rows = var_E8
  loc_15D2089:     var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C8, var_E8))) 'String
  loc_15D2091:     Set var_B4 = Me.FGrid
  loc_15D20BE:     Me.FGrid.FixedRows = 1
  loc_15D20C6:   End If
  loc_15D20F3:   var_F8 = 1 & Format(var_A0, "0.00") 
  loc_15D20F7:   var_B8 = CStr(var_F8)
  loc_15D2105:   Me.lblTotal.Caption = var_B8
  loc_15D2126:   Set var_B0 = Me.Txt
  loc_15D212C:   Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_B8, 1, "Total : ", FGrid.DispID_10000)
  loc_15D2157:   If ((var_B8 <> vbNullString) And (global_204 = "Y")) Then
  loc_15D2167:     Set var_B0 = Me.Txt
  loc_15D216D:     Call 0.Method_Txt_Validate0 (Cancel, var_B4, vbNullString, var_1C4)
  loc_15D2175:     var_B4.Text = var_B4.Text
  loc_15D2181:   End If
  loc_15D2181: End If
  loc_15D2186: Set var_94 = Nothing
  loc_15D218E: Set var_88 = Nothing
  loc_15D219C: Set global_88 = Nothing
  loc_15D21A3: Exit Sub
  loc_15D21A4: ' Referenced from: 15D0E78
  loc_15D21A4: Proc_6_60_E63754(var_F8, var_140)
  loc_15D21A9: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F579B8
  'Data Table: 523D30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F57898: On Error Goto loc_F579B2
  loc_F578AA: Me.DGTable.Visible = False
  loc_F578C9: If (Me.RecordCount > 0) Then
  loc_F57908:   Set var_B4 = Me.Txt
  loc_F5790E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F57916:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F57949:   var_B0 = Me.Fields.Item("Code")
  loc_F57968:   Set var_B4 = Me.Txt
  loc_F5796E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F57976:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5798C: End If
  loc_F57997: Set var_A8 = Me.Txt
  loc_F5799D: Call 0.Method_DGTable_UnknownEvent_90 (CInt(3))
  loc_F579A5: var_B0.SetFocus
  loc_F579B1: Exit Sub
  loc_F579B2: ' Referenced from: F57898
  loc_F579B2: Proc_6_60_E63754(var_B0)
  loc_F579B7: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'E6E548
  'Data Table: 523D30
  loc_E6E506: Proc_6_153_E91D24(Me.DGTable, arg_14)
  loc_E6E51D: Set var_8C = Me.FGPoint
  loc_E6E539: Proc_6_138_106E830(Me.DGTable, global_96, CInt(3))
  loc_E6E547: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60C44
  'Data Table: 523D30
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E60C0F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60C22: Set var_A8 = Me.TxtGrid
  loc_E60C28: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60C30: var_AC.Visible = False
  loc_E60C3C: Call Proc_177_72_E84B70()
  loc_E60C41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6B038
  'Data Table: 523D30
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_4701 As Integer
  loc_E6AFF4: Set var_88 = Me.TxtGrid
  loc_E6AFFA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6B014: If (var_8C.Visible = 0) Then
  loc_E6B02D:   Me.FGrid.BackColorSel = CVar(CLng(global_112))
  loc_E6B035: End If
  loc_E6B035: Exit Sub
  loc_E6B036: var_4701 = 
End Sub

Private Sub FGrid_UnknownEvent_9 'E00C8C
  'Data Table: 523D30
  loc_E00C84: Call Proc_177_67_EFA3E4()
  loc_E00C89: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11D6430
  'Data Table: 523D30
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11D5FBC: Set var_88 = Me.TopCtrl1
  loc_11D5FC2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11D6007: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11D6010:   Call Form_KeyDown(Cancel, arg_10)
  loc_11D6015: End If
  loc_11D6019: Set var_88 = Me.TopCtrl1
  loc_11D601F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11D6038: If (CStr() = "Browse") Then
  loc_11D603B:   Exit Sub
  loc_11D603C: End If
  loc_11D60B0: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11D60C9:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_11D60D9:   var_9C = "+{Tab}"
  loc_11D60DF:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11D60E9:   Cancel = 0
  loc_11D60EF: Else
  loc_11D60F9:   var_B0 = Me.FGrid.Rows
  loc_11D6146:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11D615F:     Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_11D6175:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_11D617F:     Cancel = 0
  loc_11D6182:   End If
  loc_11D6182: End If
  loc_11D6188: global_160 = Cancel
  loc_11D61AE: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11D61D2: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11D61E8:   var_EC = CLng(Me.FGrid.Col)
  loc_11D61F8:   If (var_EC = CLng(4)) Then
  loc_11D6206:     If (global_204 <> "Y") Then
  loc_11D621C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D6234:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11D6239:       var_11C = vbNullString
  loc_11D6243:       Set var_B4 = Me.FGrid
  loc_11D6249:       LateIdCallSt
  loc_11D6274:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D627C:       var_FC = CVar(CLng(&HB)) 'Long
  loc_11D6281:       var_11C = vbNullString
  loc_11D628B:       Set var_A0 = Me.FGrid
  loc_11D6291:       LateIdCallSt
  loc_11D62B6:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D62BE:       var_FC = CVar(CLng(7)) 'Long
  loc_11D62C3:       var_11C = vbNullString
  loc_11D62CD:       Set var_A0 = Me.FGrid
  loc_11D62D3:       LateIdCallSt
  loc_11D62E5:     End If
  loc_11D62E8:   Else
  loc_11D62EF:     If Not (var_EC = CLng(3)) Then
  loc_11D62F9:       If (var_EC = CLng(7)) Then
  loc_11D62FC:       End If
  loc_11D6307:       If (global_204 <> "Y") Then
  loc_11D631D:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D6335:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11D633A:         var_11C = vbNullString
  loc_11D6344:         Set var_B4 = Me.FGrid
  loc_11D634A:         LateIdCallSt
  loc_11D6362:       End If
  loc_11D6365:     Else
  loc_11D636C:       If (var_EC = CLng(8)) Then
  loc_11D6382:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D638A:         var_FC = CVar(CLng(&H19)) 'Long
  loc_11D63BD:         If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_11D63D3:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D63EB:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11D63F0:           var_11C = vbNullString
  loc_11D63FA:           Set var_B4 = Me.FGrid
  loc_11D6400:           LateIdCallSt
  loc_11D6418:         End If
  loc_11D6418:       End If
  loc_11D6418:     End If
  loc_11D6418:   End If
  loc_11D6418: End If
  loc_11D641E: If (Cancel = &HD) Then
  loc_11D6426:   global_162 = 0
  loc_11D6429: End If
  loc_11D642B: Cancel = 0
  loc_11D642E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0FA30
  'Data Table: 523D30
  loc_E0FA21: Call FGrid_UnknownEvent_C()
  loc_E0FA2B: global_162 = 0
  loc_E0FA2E: Exit Sub
  loc_E0FA2F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10EE320
  'Data Table: 523D30
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_10EE008: Set var_88 = Me.TopCtrl1
  loc_10EE00E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10EE027: If (CStr() = "Browse") Then
  loc_10EE02A:   Exit Sub
  loc_10EE02B: End If
  loc_10EE03E: var_A0 = CLng(Me.FGrid.Col)
  loc_10EE04E: If (var_A0 = CLng(4)) Then
  loc_10EE05C:   If (global_204 <> "Y") Then
  loc_10EE090:     var_CA = Asc(CStr(Ucase(Chr(CLng(Cancel)))))
  loc_10EE0C6:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_10EE0E2:   End If
  loc_10EE0E5: Else
  loc_10EE0EC:   If (var_A0 = CLng(2)) Then
  loc_10EE0FA:     If (global_204 <> "Y") Then
  loc_10EE13B:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_10EE14D:     End If
  loc_10EE150:   Else
  loc_10EE157:     If (var_A0 = CLng(8)) Then
  loc_10EE16D:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10EE175:       var_FC = CVar(CLng(&H19)) 'Long
  loc_10EE1A8:       If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_10EE1E9:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_10EE1FB:       End If
  loc_10EE1FE:     Else
  loc_10EE205:       If (var_A0 = CLng(7)) Then
  loc_10EE213:         If (global_204 <> "Y") Then
  loc_10EE254:           Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_10EE266:         End If
  loc_10EE269:       Else
  loc_10EE270:         If (var_A0 = CLng(3)) Then
  loc_10EE27E:           If (global_204 <> "Y") Then
  loc_10EE29C:             If (((Cancel >= &H41) And (Cancel <= &H5A)) Or ((Cancel >= &H61) And (Cancel <= &H7A))) Then
  loc_10EE2B1:               Me.FGrid.Col = CVar(CLng(4))
  loc_10EE2B9:             End If
  loc_10EE2F7:             Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel, 0)
  loc_10EE309:           End If
  loc_10EE309:         End If
  loc_10EE309:       End If
  loc_10EE309:     End If
  loc_10EE309:   End If
  loc_10EE309: End If
  loc_10EE313: If (CLng(Cancel) <> &HD) Then
  loc_10EE31B:   global_162 = &HFF
  loc_10EE31E: End If
  loc_10EE31E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '104ABA4
  'Data Table: 523D30
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  loc_104A950: Set var_90 = Me.TopCtrl1
  loc_104A956: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104A96F: If (CStr() = "Browse") Then
  loc_104A972:   Exit Sub
  loc_104A973: End If
  loc_104A97E: If (global_204 = "Y") Then
  loc_104A981:   Exit Sub
  loc_104A982: End If
  loc_104A99F: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104A9A2:   Exit Sub
  loc_104A9A3: End If
  loc_104A9B4: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_104A9D6:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104AA10:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_104AA32:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_104AA48:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104AA51:         Set var_118 = Me.FGrid
  loc_104AA8E:         For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_104AA98:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_104AAA0:           var_E4 = CVar(CLng(0)) 'Long
  loc_104AAAA:           var_A0 = CVar(CStr(var_86)) 'String
  loc_104AAB2:           Set var_90 = Me.FGrid
  loc_104AAB8:           LateIdCallSt
  loc_104AAC9:         Next var_11C 'Integer
  loc_104AAD1:       Else
  loc_104AAE4:         Me.FGrid.Rows = 1
  loc_104AB0A:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_104AB12:         Set var_118 = Me.FGrid
  loc_104AB3F:         Me.FGrid.FixedRows = 1
  loc_104AB47:       End If
  loc_104AB4C:       Call Proc_177_76_1778B9C(&H32, FGrid.DispID_10000)
  loc_104AB51:     End If
  loc_104AB54:   Else
  loc_104AB75:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_104AB85:   End If
  loc_104AB89:   Set var_90 = Me.FGrid
  loc_104AB9A: End If
  loc_104AB9F: Set var_8C = Nothing
  loc_104ABA2: Exit Sub
  loc_104ABA3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44EA0
  'Data Table: 523D30
  Dim var_8C As TextBox
  loc_E44E74: Call Proc_177_72_E84B70()
  loc_E44E84: Set var_88 = Me.TxtGrid
  loc_E44E8A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44E92: var_8C.Visible = False
  loc_E44E9E: Exit Sub
End Sub

Public Function global_5389616Get() '52552C
  BVM60.DLL.GetMemNewObj
End Function

Public Function global_5389616Get() '525546
  BVM60.DLL.PutMemNewObj
End Function

Public Function global_5389616Get() '525560
  BVM60.DLL.SetMemNewObj
End Function

Public Function global_56Get() '52557A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '525589
  global_56 = Value
End Sub

Public Function global_60Get() '525598
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '5255A7
  global_60 = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E0E31C
  'Data Table: 523D30
  loc_E0E314: global_244 = vNewValue
  loc_E0E318: Exit Sub
End Sub

Public Property Get PTableNo() 'E0E3AC
  'Data Table: 523D30
  loc_E0E3A0: var_88 = global_244
  loc_E0E3A3: PTableNo = 
End Sub

Public Property Let pRestCode(vNewValue) 'E0D824
  'Data Table: 523D30
  loc_E0D81C: global_248 = vNewValue
  loc_E0D820: Exit Sub
End Sub

Public Property Get pRestCode() 'E0FC24
  'Data Table: 523D30
  loc_E0FC18: var_88 = global_248
  loc_E0FC1B: pRestCode = 
End Sub

Public Property Get OpenMode() 'E05BD0
  'Data Table: 523D30
  loc_E05BC9: OpenMode = global_240
End Sub

Public Property Let OpenMode(vNewValue) 'E01888
  'Data Table: 523D30
  loc_E01882: global_240 = vNewValue
  loc_E01885: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'E715DC
  'Data Table: 523D30
  Dim Me As Recordset15
  loc_E71586: Me.MoveFirst
  loc_E715B0: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E715D0: If (Me.EOF = 0) Then
  loc_E715D3:   Call Proc_177_69_1831198(var_9C)
  loc_E715D8: End If
  loc_E715D8: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94620
  'Data Table: 523D30
  Dim Me As Recordset15
  loc_E945AE: On Error Goto loc_E94617
  loc_E945B7: Me.MoveFirst
  loc_E945E1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94609: Proc_5_0_1107AD0(&HFF, Me, global_92)
  loc_E94611: Call Proc_177_69_1831198(0)
  loc_E94616: Exit Sub
  loc_E94617: ' Referenced from: E945AE
  loc_E94617: Proc_6_60_E63754(var_A0)
  loc_E9461C: Exit Sub
End Sub

Public Sub Proc_177_63_13B764C
  'Data Table: 523D30
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_13B6CFA: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_13B6D15: Me.FGrid.Top = CVar(CDbl(1250))
  loc_13B6D30: Me.FGrid.Height = CVar(CDbl(5500))
  loc_13B6D4B: Me.FGrid.Width = CVar(CDbl(7650))
  loc_13B6D61: Set var_A8 = Me.Txt
  loc_13B6D67: Call 0.Method_Proc_177_63_13B764C0 (CInt(3), var_AC)
  loc_13B6D86: Me.DGTable.Left = CVar(var_AC.Left)
  loc_13B6DA2: Set var_B4 = Me.Txt
  loc_13B6DA8: Call 0.Method_Proc_177_63_13B764C0 (CInt(3), var_B8)
  loc_13B6DC3: Set var_A8 = Me.Txt
  loc_13B6DC9: Call 0.Method_Proc_177_63_13B764C0 (CInt(3), var_AC)
  loc_13B6DE1: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13B6DF0: Me.DGTable.Top = CVar(var_AC.Left)
  loc_13B6E06: Set var_C4 = Me.FGrid
  loc_13B6E1D: global_112 = CStr(CLng(var_C4.BackColor))
  loc_13B6E33: var_C4.Cols = &H1D
  loc_13B6E3B: var_94 = CVar(CLng(0)) 'Long
  loc_13B6E40: var_E8 = &HFA
  loc_13B6E4C: LateIdCallSt
  loc_13B6E54: var_94 = 0
  loc_13B6E60: var_E8 = CVar(CLng(&HC)) 'Long
  loc_13B6E65: var_108 = "KSNo"
  loc_13B6E6E: LateIdCallSt
  loc_13B6E79: var_94 = CVar(CLng(&HC)) 'Long
  loc_13B6E7E: var_E8 = 0
  loc_13B6E8A: LateIdCallSt
  loc_13B6E92: var_94 = 0
  loc_13B6E9E: var_E8 = CVar(CLng(1)) 'Long
  loc_13B6EA3: var_108 = "Rest"
  loc_13B6EAC: LateIdCallSt
  loc_13B6EB7: var_94 = CVar(CLng(1)) 'Long
  loc_13B6EC2: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B6EC9: LateIdCallSt
  loc_13B6ED4: var_94 = CVar(CLng(1)) 'Long
  loc_13B6ED9: var_E8 = 0
  loc_13B6EE5: LateIdCallSt
  loc_13B6EED: var_94 = 0
  loc_13B6EF9: var_E8 = CVar(CLng(2)) 'Long
  loc_13B6EFE: var_108 = "Rest."
  loc_13B6F07: LateIdCallSt
  loc_13B6F12: var_94 = CVar(CLng(2)) 'Long
  loc_13B6F1D: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B6F24: LateIdCallSt
  loc_13B6F2F: var_94 = CVar(CLng(2)) 'Long
  loc_13B6F34: var_E8 = &H258
  loc_13B6F40: LateIdCallSt
  loc_13B6F48: var_94 = 0
  loc_13B6F54: var_E8 = CVar(CLng(3)) 'Long
  loc_13B6F59: var_108 = "Item Code"
  loc_13B6F62: LateIdCallSt
  loc_13B6F6D: var_94 = CVar(CLng(3)) 'Long
  loc_13B6F78: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B6F7F: LateIdCallSt
  loc_13B6F8A: var_94 = CVar(CLng(3)) 'Long
  loc_13B6F8F: var_E8 = &H258
  loc_13B6F9B: LateIdCallSt
  loc_13B6FA3: var_94 = 0
  loc_13B6FAF: var_E8 = CVar(CLng(4)) 'Long
  loc_13B6FB4: var_108 = "Item Name"
  loc_13B6FBD: LateIdCallSt
  loc_13B6FC8: var_94 = CVar(CLng(4)) 'Long
  loc_13B6FD3: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B6FDA: LateIdCallSt
  loc_13B6FE5: var_94 = CVar(CLng(4)) 'Long
  loc_13B6FEA: var_E8 = &H9C4
  loc_13B6FF6: LateIdCallSt
  loc_13B6FFE: var_94 = 0
  loc_13B700A: var_E8 = CVar(CLng(5)) 'Long
  loc_13B700F: var_108 = "KOT No."
  loc_13B7018: LateIdCallSt
  loc_13B7023: var_94 = CVar(CLng(5)) 'Long
  loc_13B702E: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B7035: LateIdCallSt
  loc_13B7040: var_94 = CVar(CLng(5)) 'Long
  loc_13B704B: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B7052: LateIdCallSt
  loc_13B7065: If (global_204 = "Y") Then
  loc_13B706B:   var_94 = CVar(CLng(5)) 'Long
  loc_13B7070:   var_E8 = 0
  loc_13B707C:   LateIdCallSt
  loc_13B7087: Else
  loc_13B708A:   var_94 = CVar(CLng(5)) 'Long
  loc_13B708F:   var_E8 = 0
  loc_13B709B:   LateIdCallSt
  loc_13B70A3: End If
  loc_13B70A3: var_94 = 0
  loc_13B70AF: var_E8 = CVar(CLng(6)) 'Long
  loc_13B70B4: var_108 = "Unit"
  loc_13B70BD: LateIdCallSt
  loc_13B70C8: var_94 = CVar(CLng(6)) 'Long
  loc_13B70D3: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B70DA: LateIdCallSt
  loc_13B70E5: var_94 = CVar(CLng(6)) 'Long
  loc_13B70EA: var_E8 = &H320
  loc_13B70F6: LateIdCallSt
  loc_13B70FE: var_94 = 0
  loc_13B710A: var_E8 = CVar(CLng(7)) 'Long
  loc_13B710F: var_108 = "Qty"
  loc_13B7118: LateIdCallSt
  loc_13B7123: var_94 = CVar(CLng(7)) 'Long
  loc_13B712E: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B7135: LateIdCallSt
  loc_13B7140: var_94 = CVar(CLng(7)) 'Long
  loc_13B714B: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B7152: LateIdCallSt
  loc_13B715D: var_94 = CVar(CLng(7)) 'Long
  loc_13B7162: var_E8 = &H320
  loc_13B716E: LateIdCallSt
  loc_13B7176: var_94 = 0
  loc_13B7182: var_E8 = CVar(CLng(8)) 'Long
  loc_13B7187: var_108 = "Rate"
  loc_13B7190: LateIdCallSt
  loc_13B719B: var_94 = CVar(CLng(8)) 'Long
  loc_13B71A6: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B71AD: LateIdCallSt
  loc_13B71B8: var_94 = CVar(CLng(8)) 'Long
  loc_13B71C3: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B71CA: LateIdCallSt
  loc_13B71D5: var_94 = CVar(CLng(8)) 'Long
  loc_13B71DA: var_E8 = &H320
  loc_13B71E6: LateIdCallSt
  loc_13B71EE: var_94 = 0
  loc_13B71FA: var_E8 = CVar(CLng(9)) 'Long
  loc_13B71FF: var_108 = "Rate1"
  loc_13B7208: LateIdCallSt
  loc_13B7213: var_94 = CVar(CLng(9)) 'Long
  loc_13B721E: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B7225: LateIdCallSt
  loc_13B7230: var_94 = CVar(CLng(9)) 'Long
  loc_13B723B: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B7242: LateIdCallSt
  loc_13B724D: var_94 = CVar(CLng(9)) 'Long
  loc_13B7252: var_E8 = 0
  loc_13B725E: LateIdCallSt
  loc_13B7266: var_94 = 0
  loc_13B7272: var_E8 = CVar(CLng(&HA)) 'Long
  loc_13B7277: var_108 = "Amount"
  loc_13B7280: LateIdCallSt
  loc_13B728B: var_94 = CVar(CLng(&HA)) 'Long
  loc_13B7296: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B729D: LateIdCallSt
  loc_13B72A8: var_94 = CVar(CLng(&HA)) 'Long
  loc_13B72B3: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B72BA: LateIdCallSt
  loc_13B72C5: var_94 = CVar(CLng(&HA)) 'Long
  loc_13B72CA: var_E8 = &H3E8
  loc_13B72D6: LateIdCallSt
  loc_13B72E1: var_94 = CVar(CLng(&HD)) 'Long
  loc_13B72E6: var_E8 = 0
  loc_13B72F2: LateIdCallSt
  loc_13B72FD: var_94 = CVar(CLng(&HB)) 'Long
  loc_13B7302: var_E8 = 0
  loc_13B730E: LateIdCallSt
  loc_13B7319: var_94 = CVar(CLng(&HE)) 'Long
  loc_13B731E: var_E8 = 0
  loc_13B732A: LateIdCallSt
  loc_13B7335: var_94 = CVar(CLng(&HF)) 'Long
  loc_13B733A: var_E8 = 0
  loc_13B7346: LateIdCallSt
  loc_13B7351: var_94 = CVar(CLng(&H10)) 'Long
  loc_13B7356: var_E8 = 0
  loc_13B7362: LateIdCallSt
  loc_13B736D: var_94 = CVar(CLng(&H11)) 'Long
  loc_13B7372: var_E8 = 0
  loc_13B737E: LateIdCallSt
  loc_13B7389: var_94 = CVar(CLng(&H12)) 'Long
  loc_13B738E: var_E8 = 0
  loc_13B739A: LateIdCallSt
  loc_13B73A5: var_94 = CVar(CLng(&H14)) 'Long
  loc_13B73AA: var_E8 = 0
  loc_13B73B6: LateIdCallSt
  loc_13B73C1: var_94 = CVar(CLng(&H13)) 'Long
  loc_13B73C6: var_E8 = 0
  loc_13B73D2: LateIdCallSt
  loc_13B73DD: var_94 = CVar(CLng(&H18)) 'Long
  loc_13B73E2: var_E8 = 0
  loc_13B73EE: LateIdCallSt
  loc_13B73F9: var_94 = CVar(CLng(&H19)) 'Long
  loc_13B73FE: var_E8 = 0
  loc_13B740A: LateIdCallSt
  loc_13B7415: var_94 = CVar(CLng(&H1A)) 'Long
  loc_13B741A: var_E8 = 0
  loc_13B7426: LateIdCallSt
  loc_13B742E: var_94 = 0
  loc_13B743A: var_E8 = CVar(CLng(&HB)) 'Long
  loc_13B743F: var_108 = "Item Code"
  loc_13B7448: LateIdCallSt
  loc_13B7450: var_94 = 0
  loc_13B745C: var_E8 = CVar(CLng(&HE)) 'Long
  loc_13B7461: var_108 = "Disc %"
  loc_13B746A: LateIdCallSt
  loc_13B7472: var_94 = 0
  loc_13B747E: var_E8 = CVar(CLng(&HF)) 'Long
  loc_13B7483: var_108 = "Disc Amt."
  loc_13B748C: LateIdCallSt
  loc_13B7494: var_94 = 0
  loc_13B74A0: var_E8 = CVar(CLng(&H10)) 'Long
  loc_13B74A5: var_108 = "Tax %"
  loc_13B74AE: LateIdCallSt
  loc_13B74B6: var_94 = 0
  loc_13B74C2: var_E8 = CVar(CLng(&H11)) 'Long
  loc_13B74C7: var_108 = "Tax Amt"
  loc_13B74D0: LateIdCallSt
  loc_13B74D8: var_94 = 0
  loc_13B74E4: var_E8 = CVar(CLng(&H12)) 'Long
  loc_13B74E9: var_108 = "Total"
  loc_13B74F2: LateIdCallSt
  loc_13B74FA: var_94 = 0
  loc_13B7506: var_E8 = CVar(CLng(&H14)) 'Long
  loc_13B750B: var_108 = "R Off"
  loc_13B7514: LateIdCallSt
  loc_13B751C: var_94 = 0
  loc_13B7528: var_E8 = CVar(CLng(&H13)) 'Long
  loc_13B752D: var_108 = "Disc Y/N"
  loc_13B7536: LateIdCallSt
  loc_13B753E: var_94 = 0
  loc_13B754A: var_E8 = CVar(CLng(&H18)) 'Long
  loc_13B754F: var_108 = "Tax Cat Code"
  loc_13B7558: LateIdCallSt
  loc_13B7563: var_94 = CVar(CLng(&H15)) 'Long
  loc_13B7568: var_E8 = 0
  loc_13B7574: LateIdCallSt
  loc_13B757F: var_94 = CVar(CLng(&H16)) 'Long
  loc_13B7584: var_E8 = 0
  loc_13B7590: LateIdCallSt
  loc_13B759B: var_94 = CVar(CLng(&H17)) 'Long
  loc_13B75A0: var_E8 = 0
  loc_13B75AC: LateIdCallSt
  loc_13B75B7: var_94 = CVar(CLng(&H1B)) 'Long
  loc_13B75BC: var_E8 = 0
  loc_13B75C8: LateIdCallSt
  loc_13B75D3: var_94 = CVar(CLng(&H1C)) 'Long
  loc_13B75D8: var_E8 = 0
  loc_13B75E4: LateIdCallSt
  loc_13B75EE: Set var_C4 = Nothing 
  loc_13B75F6: Set var_11C = Me.FGCat
  loc_13B760D: global_112 = CStr(CLng(var_11C.BackColor))
  loc_13B761A: var_94 = CVar(CLng(3)) 'Long
  loc_13B761F: var_E8 = &H7D0
  loc_13B762B: LateIdCallSt
  loc_13B763F: var_11C.Cols = 8
  loc_13B7646: Set var_11C = Nothing 
  loc_13B764A: Exit Sub
End Sub

Public Sub Proc_177_64_1380788
  'Data Table: 523D30
  Dim unk_523D50 As Connection15
  Dim var_C8 As Variant
  Dim var_F4 As Variant
  Dim var_A8 As Recordset15
  Dim var_DC As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_180 As Variant
  Dim var_1C0 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1E8 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_218 As Variant
  Dim var_23C As Variant
  Dim var_D8 As Variant
  Dim var_350 As Variant
  Dim var_370 As Variant
  Dim var_434 As Variant
  Dim var_B0 As Double
  Dim Me As Recordset15
  loc_137FF78: On Error Goto loc_1380781
  loc_137FFA2: unk_523D50.Execute "Select * from Depart Where Code='" & global_60 & "'", var_D8, -1
  loc_137FFEB: var_A0 = Replace(CStr(Space(&H3C)), " ", "-", 1, -1, 0)
  loc_137FFF6: Close 1
  loc_137FFFF: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_138001D: Call Proc_177_78_103A1DC("Estimate", "D", &H3C)
  loc_1380027: Print 1, var_E4
  loc_138004B: var_F4 = (Chr(&HF) + vbNullString)
  loc_1380051: Print 1, var_F4
  loc_1380073: var_F4 = (Chr(&HF) + vbNullString)
  loc_1380079: Print 1, var_F4
  loc_1380133: var_1C0 = ("Date:" + Format(Now, "dd/MMM/yyyy"))
  loc_138014D: var_138 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr("Rest :" & var_DC.Fields.Item("Name").Value), &H14)))
  loc_1380157: var_160 = (var_138 + CVar(Proc_6_45_EADFB8(Me.lbltable.Caption, &H14)))
  loc_1380161: var_1E8 = (var_160 + CVar(Proc_6_45_EADFB8(CStr(var_1C0), &H14, 1)))
  loc_1380167: Print 1, var_1E8
  loc_13801B8: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_13801BE: Print 1, var_DC.Fields.Item("Name").Value
  loc_13801F1: var_118 = (CVar(Proc_6_45_EADFB8("SNo", 3, 1)) + Space(1))
  loc_138020B: var_138 = (var_E4 + CVar(Proc_6_45_EADFB8("ITEM NAME", &H14, "Rest :" & var_DC.Fields.Item("Name").Value)))
  loc_138021F: var_160 = (var_138 + Space(1))
  loc_1380239: var_190 = (var_160 + CVar(Proc_6_52_EAE084("RATE", &HA)))
  loc_138024D: var_1C0 = ("dd/MMM/yyyy" + Space(1))
  loc_1380267: var_1E8 = (var_1C0 + CVar(Proc_6_52_EAE084("QTY", &HA)))
  loc_138027B: var_218 = (var_1E8 + Space(1))
  loc_1380295: var_23C = (var_218 + CVar(Proc_6_52_EAE084("AMOUNT", &HA)))
  loc_13802E5: var_F4 = (Chr(&HF) + CVar(CStr(var_23C)))
  loc_13802EB: Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, 1))
  loc_138030E: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_1380314: Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, 1))
  loc_1380346: For var_240 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_240 'Integer
  loc_1380367:   var_128 = Me.FGrid.TextMatrix)
  loc_138039F:   Proc_6_39_E7D3A0(var_1C0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(var_9A)), var_128)
  loc_13803F0:   Proc_6_39_E7D3A0(var_300, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_9A)), 1)
  loc_1380441:   Proc_6_39_E7D3A0(var_3E4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_9A)), 1, 1)
  loc_138048C:   var_118 = (CVar(Proc_6_45_EADFB8(CStr(var_9A), 3, 1, 1, 1)) + Space(1))
  loc_13804A2:   var_138 = CVar(Proc_6_45_EADFB8(CStr(var_128), &H14, "Rest :" & var_DC.Fields.Item("Name").Value, CVar(CLng(4)))) 'String
  loc_13804A5:   var_150 = (CVar(CLng(var_9A)) + var_138)
  loc_13804B9:   var_170 = (Space(1) + Space(1))
  loc_13804D2:   var_218 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1C0, "0.00")), &HA, CVar(Proc_6_52_EAE084("RATE", &HA)))))
  loc_13804E6:   var_23C = (var_218 + Space(1))
  loc_13804FF:   var_350 = (var_23C + CVar(Proc_6_52_EAE084(CStr(Format(var_300, "0.00")), &HA)))
  loc_1380513:   var_370 = (var_350 + Space(1))
  loc_138052C:   var_434 = (var_370 + CVar(Proc_6_52_EAE084(CStr(Format(var_3E4, "0.00")), &HA)))
  loc_13805A7:   var_F4 = (Chr(&HF) + CVar(CStr(var_434)))
  loc_13805AD:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_9A), 3, 1, 1, 1))
  loc_13805BE:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_13805C6:   var_180 = CVar(CLng(&HA)) 'Long
  loc_13805EE:   var_B0 = (var_B0 + CDbl(CStr(Me.FGrid.TextMatrix))))
  loc_13805FD: Next var_240 'Integer
  loc_1380618: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_138061E: Print 1, CVar(Proc_6_45_EADFB8(CStr(var_9A), 3, 1, 1, 1))
  loc_1380648: var_108 = var_B0
  loc_1380650: Proc_6_39_E7D3A0(var_138)
  loc_1380690: var_118 = (Chr(&HF) + Space(&H28))
  loc_1380699: var_128 = ("Rest :" & var_DC.Fields.Item("Name").Value + "Total :")
  loc_13806A3: var_190 = (var_128 + CVar(Proc_6_52_EAE084(CStr(Format(var_138, "0.00")), &HA, 1)))
  loc_13806A9: Print 1, Me.FGrid.TextMatrix)
  loc_13806CD: Close 1
  loc_13806D6: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1380712: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_1380728: Close 1
  loc_1380732: If (MemVar_1F953BC = "Y") Then
  loc_138074E:   var_94 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1380758: Else
  loc_1380771:   var_94 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1380778: End If
  loc_138077D: Set var_A8 = Nothing
  loc_1380780: Exit Sub
  loc_1380781: ' Referenced from: 137FF78
  loc_1380781: Proc_6_60_E63754(1)
  loc_1380786: Exit Sub
End Sub

Public Sub Proc_177_65_1393DD0
  'Data Table: 523D30
  Dim unk_523D50 As Connection15
  Dim var_C8 As Variant
  Dim var_F4 As Variant
  Dim var_A8 As Recordset15
  Dim var_DC As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_E4 As String
  Dim var_18C As String
  Dim var_D8 As Variant
  Dim var_1A4 As Variant
  Dim var_148 As Variant
  Dim var_B0 As Double
  Dim Me As Recordset15
  loc_1393544: On Error Goto loc_1393DCA
  loc_139356E: unk_523D50.Execute "Select * from Depart Where Code='" & global_60 & "'", var_D8, -1
  loc_13935B7: var_A0 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_13935C2: Close 1
  loc_13935CB: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_13935E9: Call Proc_177_78_103A1DC("Estimate", "D", &H26)
  loc_13935F3: Print 1, var_E4
  loc_1393617: var_F4 = (Chr(&HF) + vbNullString)
  loc_139361D: Print 1, var_F4
  loc_139363F: var_F4 = (Chr(&HF) + vbNullString)
  loc_1393645: Print 1, var_F4
  loc_13936AD: var_138 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr("Rest :" & var_DC.Fields.Fields.Item("Name").Value), &H26)))
  loc_13936B3: Print 1, var_138
  loc_139373C: var_158 = ("Date:" + Format(Now, "dd/MMM/yyyy"))
  loc_1393756: var_118 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(Me.lbltable.Caption, &H16)))
  loc_139375D: var_16C = CVar(Proc_6_45_EADFB8(CStr(var_158), &H10, 1)) 'String
  loc_1393760: var_17C = ("Rest :" & var_DC.Fields.Item("Name").Value + var_16C)
  loc_1393766: Print 1, var_17C
  loc_13937A5: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_13937AB: Print 1, CVar(Proc_6_45_EADFB8(Me.lbltable.Caption, &H16))
  loc_13937DE: var_118 = (CVar(Proc_6_45_EADFB8("SNo", 3, 1)) + Space(1))
  loc_13937F8: var_138 = (var_E4 + CVar(Proc_6_45_EADFB8("ITEM NAME", &H22, "Rest :" & var_DC.Fields.Item("Name").Value)))
  loc_139382A: var_F4 = (Chr(&HF) + CVar(CStr("dd/MMM/yyyy")))
  loc_1393830: Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, 1))
  loc_13938AE: var_F4 = (Chr(&HF) + CVar(Proc_6_52_EAE084("RATE", &HC) & Proc_6_52_EAE084("QTY", &HC) & Proc_6_52_EAE084("AMOUNT", &HE)))
  loc_13938B4: Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, 1))
  loc_13938D7: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_13938DD: Print 1, CVar(Proc_6_45_EADFB8("SNo", 3, 1))
  loc_139390F: For var_194 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_194 'Integer
  loc_1393930:   var_128 = Me.FGrid.TextMatrix)
  loc_1393962:   var_118 = (CVar(Proc_6_45_EADFB8(CStr(var_9A), 3, var_128, CVar(CLng(4)))) + Space(1))
  loc_139397B:   var_148 = (CVar(CLng(var_9A)) + CVar(Proc_6_45_EADFB8(CStr(var_128), &H22, "Rest :" & var_DC.Fields.Item("Name").Value)))
  loc_13939B2:   var_F4 = (Chr(&HF) + CVar(CStr(Format(Now, "dd/MMM/yyyy"))))
  loc_13939B8:   Print 1, CVar(Proc_6_45_EADFB8(CStr(var_9A), 3, var_128, CVar(CLng(4))))
  loc_13939F1:   Proc_6_39_E7D3A0("Rest :" & var_DC.Fields.Item("Name").Value, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_1393A11:   var_138 = Format("Rest :" & var_DC.Fields.Item("Name").Value, "0.00")
  loc_1393A42:   Proc_6_39_E7D3A0(var_16C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_9A)), 1)
  loc_1393A93:   Proc_6_39_E7D3A0(var_298, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_9A)), 1)
  loc_1393AE3:   var_18C = CVar(CLng(var_9A)) & Proc_6_52_EAE084(CStr(Format(var_16C, "0.000")), &HC, Proc_6_52_EAE084(CStr(var_138), &HC, 1, 1, 1), 1)
  loc_1393B50:   var_F4 = (Chr(&HF) + CVar(1 & Proc_6_52_EAE084(CStr(Format(var_298, "0.00")), &HE, var_18C)))
  loc_1393B56:   Print 1, CVar(CStr(Me.FGrid.TextMatrix)))
  loc_1393B67:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1393B6F:   var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1393B97:   var_B0 = (var_B0 + CDbl(CStr(Me.FGrid.TextMatrix))))
  loc_1393BA6: Next var_194 'Integer
  loc_1393BC1: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_1393BC7: Print 1, CVar(CStr(Me.FGrid.TextMatrix)))
  loc_1393BF1: var_108 = var_B0
  loc_1393BF9: Proc_6_39_E7D3A0(var_138)
  loc_1393C39: var_118 = (Chr(&HF) + Space(&H10))
  loc_1393C42: var_128 = ("Rest :" & var_DC.Fields.Item("Name").Value + "Total : ")
  loc_1393C4C: var_17C = ("0.00" + CVar(Proc_6_52_EAE084(CStr(Format(var_138, "0.00")), &HE, 1)))
  loc_1393C52: Print 1, "0.000"
  loc_1393C89: var_F4 = (Chr(&HF) + vbNullString)
  loc_1393C8F: Print 1, Space(&H10)
  loc_1393CB1: var_F4 = (Chr(&HF) + vbNullString)
  loc_1393CB7: Print 1, Space(&H10)
  loc_1393CD9: var_F4 = (Chr(&HF) + vbNullString)
  loc_1393CDF: Print 1, Space(&H10)
  loc_1393D01: var_F4 = (Chr(&HF) + vbNullString)
  loc_1393D07: Print 1, Space(&H10)
  loc_1393D16: Close 1
  loc_1393D1F: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1393D5B: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_1393D71: Close 1
  loc_1393D7B: If (MemVar_1F953BC = "Y") Then
  loc_1393D97:   var_94 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1393DA1: Else
  loc_1393DBA:   var_94 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1393DC1: End If
  loc_1393DC6: Set var_A8 = Nothing
  loc_1393DC9: Exit Sub
  loc_1393DCA: ' Referenced from: 1393544
  loc_1393DCA: Proc_6_60_E63754(1)
  loc_1393DCF: Exit Sub
End Sub

Public Sub Proc_177_66_115F85C
  'Data Table: 523D30
  Dim var_AC As String
  Dim unk_523D50 As Connection15
  Dim var_E4 As String
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As String
  Dim var_194 As Variant
  Dim var_D0 As Variant
  Dim var_A0 As Recordset15
  Dim var_D4 As Fields15
  loc_115F4E0: On Error Goto loc_115F854
  loc_115F50A: unk_523D50.Execute "Select Name from Depart Where Code='" & global_60 & "'", var_D0, -1
  loc_115F532: var_E4 = "Select K.Item,max(I.NAME) AS ITEMNAME,max(I.Unit) AS Unit,max(K.Rate) AS Rate,Sum(K.Qty) as Qty,max(DispCode) as DispCode,max(I.UNIT),max(IC.RoundOff),max(IC.Code) as TaxCode,max(I.DiscApp) as IDiscApp,max(IC.taxStru) as TaxStru,Max(I.Kitchen) as Kitchen,max(D.Code) as DepartCode,max(D.ShortName) as DepartSName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode) Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_115F53A: var_C0 = MemVar_1F950EC
  loc_115F542: Proc_6_7_F26918(var_D0, var_C0, var_E4, var_1B4)
  loc_115F54A: var_F4 = -1 & var_D0 
  loc_115F54E: var_104 = " And K.RestCode='"
  loc_115F57F: var_194 = var_F4 & var_104 & CVar(global_60) & "' aND K.RoomNo IN (" & CVar(global_252) & ") and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y' Group by K.Item" 
  loc_115F58D: unk_523D50.Execute CStr(var_194), var_D4, var_D4
  loc_115F5B7: var_A4 = "POSBillLookup"
  loc_115F5DE: Set var_D4 = var_D4 
  loc_115F5E5: CreateFieldDefFile(var_D4, MemVar_1F950B4 & "\" & var_A4 & ".ttx")
  loc_115F610: var_AC = MemVar_1F950B4 & "\"
  loc_115F627: Call 0.Method_arg_1C (var_AC & var_A4 & ".RPT", var_C0)
  loc_115F632: MemVar_1F951E8 = var_D4
  loc_115F65B: Call 0.Method_arg_64 (var_D4, CVar(var_D4), var_E4)
  loc_115F663: Call 0.Method_arg_2C (var_104, var_D4)
  loc_115F671: Call 0.Method_arg_150 (&HFF)
  loc_115F687: Call 0.Method_arg_90 (var_D4, var_1C0)
  loc_115F68F: Call 0.Method_arg_24 (var_A6)
  loc_115F69B: For var_1C4 =  To CInt(var_1C0): 1 = var_1C4 'Integer
  loc_115F6B4:   Call 0.Method_arg_90 (var_D4, CLng(var_A6))
  loc_115F6BC:   Call 0.Method_arg_20 (var_1C8)
  loc_115F6C4:   Call 0.Method_arg_30 (var_AC)
  loc_115F6DA:   var_1D8 = Ucase(CVar(var_AC)) 'Variant
  loc_115F6F9:   var_F4 = Ucase("RestName")
  loc_115F70A:   If (var_1D8 = var_F4) Then
  loc_115F71C:     var_D4 = var_D4.Fields
  loc_115F724:     var_1C8 = var_D4.Item("Name")
  loc_115F733:     Proc_6_17_EAAE40(var_F4)
  loc_115F74F:     Call 0.Method_arg_90 (var_1E0, CLng(var_A6), var_1E4)
  loc_115F757:     Call 0.Method_arg_20 (CStr(var_F4))
  loc_115F75F:     Call 0.Method_arg_38 (CVar(var_1C8))
  loc_115F77A:   Else
  loc_115F782:     var_D0 = "Table"
  loc_115F79C:     If (var_1D8 = Ucase(var_D0)) Then
  loc_115F7AD:       Proc_6_17_EAAE40(var_D0)
  loc_115F7C9:       Call 0.Method_arg_90 (var_D4, CLng(var_A6), var_1C8)
  loc_115F7D1:       Call 0.Method_arg_20 (CStr(var_D0))
  loc_115F7D9:       Call 0.Method_arg_38 (global_252)
  loc_115F7EB:     End If
  loc_115F7EB:   End If
  loc_115F7EE: Next var_1C4 'Integer
  loc_115F7F8: Set var_1C8 = Nothing
  loc_115F814: Set var_D4 = MemVar_1F951E8 
  loc_115F820: Proc_6_99_1484404(var_D4, 0, vbNullString)
  loc_115F82B: MemVar_1F951E8 = var_D4
  loc_115F83E: Set var_A0 = Nothing
  loc_115F84C: Set global_88 = Nothing
  loc_115F853: Exit Sub
  loc_115F854: ' Referenced from: 115F4E0
  loc_115F854: Proc_6_60_E63754(&HFF)
  loc_115F859: Exit Sub
End Sub

Public Sub Proc_177_67_EFA3E4
  'Data Table: 523D30
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_EFA314: Set var_88 = Me.TopCtrl1
  loc_EFA31A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EFA333: If (CStr() = "Browse") Then
  loc_EFA336:   Exit Sub
  loc_EFA337: End If
  loc_EFA376: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(8))) Then
  loc_EFA38C:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EFA394:   var_E0 = CVar(CLng(&H19)) 'Long
  loc_EFA3C7:   If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_EFA3D3:     Call FGrid_UnknownEvent_C()
  loc_EFA3DD:     global_162 = 0
  loc_EFA3E0:   End If
  loc_EFA3E0: End If
  loc_EFA3E0: Exit Sub
End Sub

Public Sub Proc_177_68_1887128(arg_C) '1887128
  'Data Table: 523D30
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
  Dim var_1D8 As MSHFlexGrid
  Dim var_1E8 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1F4 As Double
  Dim var_92 As Integer
  Dim var_124 As Variant
  Dim unk_523D50 As Connection15
  Dim var_98 As Recordset15
  loc_1884A2C: If (arg_C = 0) Then
  loc_1884A42:   var_B4 = CLng(Me.FGrid.Col)
  loc_1884A52:   If (var_B4 = CLng(2)) Then
  loc_1884AA3:     Set var_A0 = Me.TxtGrid
  loc_1884AA9:     Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0, var_C4)
  loc_1884AB1:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_1884AC9:     If (var_B4 Or (var_C4 = vbNullString)) Then
  loc_1884ADF:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884AE7:       var_F4 = CVar(CLng(2)) 'Long
  loc_1884AEC:       var_114 = vbNullString
  loc_1884AF6:       Set var_C0 = Me.FGrid
  loc_1884AFC:       LateIdCallSt
  loc_1884B21:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884B29:       var_F4 = CVar(CLng(1)) 'Long
  loc_1884B2E:       var_114 = vbNullString
  loc_1884B38:       Set var_C0 = Me.FGrid
  loc_1884B3E:       LateIdCallSt
  loc_1884B53:     Else
  loc_1884B6C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884B74:       var_F4 = CVar(CLng(1)) 'Long
  loc_1884B8E:       var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1884BAC:       var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884BB4:       var_158 = CVar(CLng(1)) 'Long
  loc_1884BCE:       var_180 = CStr(Me.FGrid.TextMatrix))
  loc_1884C39:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1884C4F:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884C57:         var_104 = CVar(CLng(2)) 'Long
  loc_1884C8A:         var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1884C92:         Set var_16C = Me.FGrid
  loc_1884C98:         LateIdCallSt
  loc_1884CC7:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884CCF:         var_104 = CVar(CLng(1)) 'Long
  loc_1884D02:         var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1884D0A:         Set var_16C = Me.FGrid
  loc_1884D10:         LateIdCallSt
  loc_1884D60:         global_220 = CStr(Me.Fields.Item("Name").Value)
  loc_1884D9F:         var_C4 = CStr(Me.Fields.Item("Code").Value)
  loc_1884DA5:         global_228 = var_C4
  loc_1884DC9:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884DD1:         var_F4 = CVar(CLng(4)) 'Long
  loc_1884DD6:         var_114 = vbNullString
  loc_1884DE0:         Set var_C0 = Me.FGrid
  loc_1884DE6:         LateIdCallSt
  loc_1884E0B:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884E13:         var_F4 = CVar(CLng(&HB)) 'Long
  loc_1884E18:         var_114 = vbNullString
  loc_1884E22:         Set var_C0 = Me.FGrid
  loc_1884E28:         LateIdCallSt
  loc_1884E4D:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884E55:         var_F4 = CVar(CLng(3)) 'Long
  loc_1884E5A:         var_114 = vbNullString
  loc_1884E64:         Set var_C0 = Me.FGrid
  loc_1884E6A:         LateIdCallSt
  loc_1884E8F:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1884E97:         var_F4 = CVar(CLng(&H1A)) 'Long
  loc_1884E9C:         var_114 = vbNullString
  loc_1884EA6:         Set var_C0 = Me.FGrid
  loc_1884EAC:         LateIdCallSt
  loc_1884EBE:       End If
  loc_1884EBE:     End If
  loc_1884EC1:   Else
  loc_1884EC8:     If (var_B4 = CLng(3)) Then
  loc_1884ED7:       Set var_A0 = Me.TxtGrid
  loc_1884EDD:       Call 0.Method_Proc_177_68_18871280 (0, var_C0, var_C4, var_C0, var_114, var_F4, var_D4)
  loc_1884EE5:       var_C0 = var_C0.Text
  loc_1884EFC:       If (var_C4 = "9999") Then
  loc_1884F09:         Set global_212 = New RsSpecItemEntry
  loc_1884F1F:         RsSpecItemEntry.PKOTForm = Me
  loc_1884F33:         RsSpecItemEntry.pRestCode = global_60
  loc_1884F3F:         Set var_A0 = var_114(var_C4)
  loc_1884F45:         var_F4 = RsSpecItemEntry.Label.Caption
  loc_1884F53:         RsSpecItemEntry.PRestName = var_C4
  loc_1884F71:         Call 0.Method_arg_2B0 (1, var_E4, 1)
  loc_1884FA6:         var_134 = CVar(Proc_6_38_E69628(global_148, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1884FB4:         LateIdCallSt
  loc_1884FFA:         var_134 = CVar(Proc_6_38_E69628(global_152, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)) 'String
  loc_1885002:         Set var_C0 = Me.FGrid
  loc_1885008:         LateIdCallSt
  loc_1885031:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188504C:         Set var_A0 = Me.Txt
  loc_1885052:         Call 0.Method_Proc_177_68_18871280 (CInt(3), var_C0, var_C4, CVar(CLng(&H17)), var_D4, var_C0)
  loc_188505A:         var_134 = var_C0.Tag
  loc_1885062:         var_134 = CVar(var_C4) 'String
  loc_188506A:         Set var_16C = Me.FGrid
  loc_1885070:         LateIdCallSt
  loc_188508D:       Else
  loc_18850A4:         If (Me.RecordCount > 0) Then
  loc_18850AD:           Me.MoveFirst
  loc_18850B2:         End If
  loc_18850C9:         If (Me.RecordCount > 0) Then
  loc_18850D9:           Set var_A0 = Me.TxtGrid
  loc_18850DF:           Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0, var_C4, var_16C, var_134)
  loc_18850E7:           var_134 = var_C0.Text
  loc_188511A:           Me.Find "DispCode=" & CStr(Val(var_C4)), 0, 1
  loc_188512F:         End If
  loc_188517D:         Set var_A0 = Me.TxtGrid
  loc_1885183:         Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0, var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_D4)
  loc_188518B:         var_1F4 = var_C0.Text
  loc_18851A3:         If (var_C0 Or (var_C4 = vbNullString)) Then
  loc_18851B9:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18851C1:           var_F4 = CVar(CLng(4)) 'Long
  loc_18851C6:           var_114 = vbNullString
  loc_18851D0:           Set var_C0 = Me.FGrid
  loc_18851D6:           LateIdCallSt
  loc_18851FB:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885203:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1885208:           var_114 = vbNullString
  loc_1885212:           Set var_C0 = Me.FGrid
  loc_1885218:           LateIdCallSt
  loc_188523D:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885245:           var_F4 = CVar(CLng(3)) 'Long
  loc_188524A:           var_114 = vbNullString
  loc_1885254:           Set var_C0 = Me.FGrid
  loc_188525A:           LateIdCallSt
  loc_188527F:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885287:           var_F4 = CVar(CLng(6)) 'Long
  loc_188528C:           var_114 = vbNullString
  loc_1885296:           Set var_C0 = Me.FGrid
  loc_188529C:           LateIdCallSt
  loc_18852C1:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18852C9:           var_F4 = CVar(CLng(3)) 'Long
  loc_18852CE:           var_114 = vbNullString
  loc_18852D8:           Set var_C0 = Me.FGrid
  loc_18852DE:           LateIdCallSt
  loc_1885303:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188530B:           var_F4 = CVar(CLng(8)) 'Long
  loc_1885310:           var_114 = vbNullString
  loc_188531A:           Set var_C0 = Me.FGrid
  loc_1885320:           LateIdCallSt
  loc_1885345:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188534D:           var_F4 = CVar(CLng(9)) 'Long
  loc_1885352:           var_114 = vbNullString
  loc_188535C:           Set var_C0 = Me.FGrid
  loc_1885362:           LateIdCallSt
  loc_1885387:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188538F:           var_F4 = CVar(CLng(&H15)) 'Long
  loc_1885394:           var_114 = vbNullString
  loc_188539E:           Set var_C0 = Me.FGrid
  loc_18853A4:           LateIdCallSt
  loc_18853C9:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18853D1:           var_F4 = CVar(CLng(&H16)) 'Long
  loc_18853D6:           var_114 = vbNullString
  loc_18853E0:           Set var_C0 = Me.FGrid
  loc_18853E6:           LateIdCallSt
  loc_188540B:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885413:           var_F4 = CVar(CLng(&H17)) 'Long
  loc_1885418:           var_114 = vbNullString
  loc_1885422:           Set var_C0 = Me.FGrid
  loc_1885428:           LateIdCallSt
  loc_188544D:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885455:           var_F4 = CVar(CLng(&H13)) 'Long
  loc_188545A:           var_114 = vbNullString
  loc_1885464:           Set var_C0 = Me.FGrid
  loc_188546A:           LateIdCallSt
  loc_188548F:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885497:           var_F4 = CVar(CLng(&H14)) 'Long
  loc_188549C:           var_114 = vbNullString
  loc_18854A6:           Set var_C0 = Me.FGrid
  loc_18854AC:           LateIdCallSt
  loc_18854D1:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18854D9:           var_F4 = CVar(CLng(&H18)) 'Long
  loc_18854DE:           var_114 = vbNullString
  loc_18854E8:           Set var_C0 = Me.FGrid
  loc_18854EE:           LateIdCallSt
  loc_1885513:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188551B:           var_F4 = CVar(CLng(&H1A)) 'Long
  loc_1885520:           var_114 = vbNullString
  loc_188552A:           Set var_C0 = Me.FGrid
  loc_1885530:           LateIdCallSt
  loc_1885555:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188555D:           var_F4 = CVar(CLng(&H1B)) 'Long
  loc_1885562:           var_114 = vbNullString
  loc_188556C:           Set var_C0 = Me.FGrid
  loc_1885572:           LateIdCallSt
  loc_1885597:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188559F:           var_F4 = CVar(CLng(&H1C)) 'Long
  loc_18855A4:           var_114 = vbNullString
  loc_18855AE:           Set var_C0 = Me.FGrid
  loc_18855B4:           LateIdCallSt
  loc_18855C9:         Else
  loc_18855E2:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18855EA:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1885604:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1885622:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188562A:           var_158 = CVar(CLng(&HB)) 'Long
  loc_1885644:           var_180 = CStr(Me.FGrid.TextMatrix))
  loc_18856AF:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HB)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_18856C5:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18856CD:             var_104 = CVar(CLng(4)) 'Long
  loc_1885700:             var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1885708:             Set var_16C = Me.FGrid
  loc_188570E:             LateIdCallSt
  loc_188573D:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885745:             var_104 = CVar(CLng(&HB)) 'Long
  loc_1885778:             var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1885780:             Set var_16C = Me.FGrid
  loc_1885786:             LateIdCallSt
  loc_18857B5:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18857BD:             var_104 = CVar(CLng(3)) 'Long
  loc_18857F0:             var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_18857F8:             Set var_16C = Me.FGrid
  loc_18857FE:             LateIdCallSt
  loc_188582D:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885835:             var_104 = CVar(CLng(6)) 'Long
  loc_1885868:             var_148 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1885870:             Set var_16C = Me.FGrid
  loc_1885876:             LateIdCallSt
  loc_18858A6:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_18858B3:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18858BB:             var_F4 = CVar(CLng(0)) 'Long
  loc_18858C5:             var_B0 = CVar(CStr(var_92)) 'String
  loc_18858CD:             Set var_A0 = Me.FGrid
  loc_18858D3:             LateIdCallSt
  loc_18858E5:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18858ED:             var_F4 = CVar(CLng(7)) 'Long
  loc_1885907:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_188591D:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_1885924:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_188592C:               var_F4 = CVar(CLng(7)) 'Long
  loc_1885931:               var_114 = "1.0"
  loc_188593B:               Set var_A0 = Me.FGrid
  loc_1885941:               LateIdCallSt
  loc_188594C:             End If
  loc_1885952:             var_D4 = "Code"
  loc_1885961:             var_A0 = Me.Fields
  loc_1885984:             Set var_138 = Me.Txt
  loc_188598A:             Call 0.Method_Proc_177_68_18871280 (CInt(1), var_16C, var_180, var_A0, var_114, var_F4, var_D4)
  loc_1885992:             var_F4 = var_16C.Text
  loc_18859A9:             Call Proc_177_81_F27ED0(CStr(var_A0.Item(var_D4).Value), var_180, var_1F4, var_D4, var_A0)
  loc_18859C9:             var_124 = CVar(CLng(8)) 'Long
  loc_1885A04:             LateIdCallSt
  loc_1885A69:             Set var_138 = Me.Txt
  loc_1885A6F:             Call 0.Method_Proc_177_68_18871280 (CInt(1), var_16C, var_180, Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)
  loc_1885A77:             var_124 = var_16C.Text
  loc_1885A8E:             Call Proc_177_81_F27ED0(CStr(Me.Fields.Item("Code").Value), var_180, var_1F4, CVar(CLng(Me.FGrid.Row)))
  loc_1885AA6:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885AAE:             var_124 = CVar(CLng(9)) 'Long
  loc_1885ADB:             var_1E8 = CVar(CStr(Format(CVar(var_1F4), "0.00"))) 'String
  loc_1885AE3:             Set var_1D8 = Me.FGrid
  loc_1885AE9:             LateIdCallSt
  loc_1885B16:           End If
  loc_1885B46:           var_134 = CVar(Proc_6_38_E69628(global_148, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), var_1D8, var_1E8, 1, 1)) 'String
  loc_1885B54:           LateIdCallSt
  loc_1885B9A:           var_134 = CVar(Proc_6_38_E69628(global_152, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, var_124)) 'String
  loc_1885BA2:           Set var_C0 = Me.FGrid
  loc_1885BA8:           LateIdCallSt
  loc_1885BEC:           Set var_A0 = Me.Txt
  loc_1885BF2:           Call 0.Method_Proc_177_68_18871280 (CInt(3), var_C0, var_C4, CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)), var_C0)
  loc_1885BFA:           var_134 = var_C0.Tag
  loc_1885C02:           var_134 = CVar(var_C4) 'String
  loc_1885C10:           LateIdCallSt
  loc_1885C34:           var_134 = Me.FGrid.Row
  loc_1885C75:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_134)), Me.FGrid, var_134)) 'String
  loc_1885C83:           LateIdCallSt
  loc_1885CE8:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1885CF6:           LateIdCallSt
  loc_1885D5B:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1885D69:           LateIdCallSt
  loc_1885DCE:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1885DDC:           LateIdCallSt
  loc_1885E41:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1885E4F:           LateIdCallSt
  loc_1885EB4:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1885EC2:           LateIdCallSt
  loc_1885EE0:           Set var_138 = Me.FGrid
  loc_1885EE6:           var_134 = var_138.Row
  loc_1885EF7:           var_104 = CVar(CLng(&H19)) 'Long
  loc_1885F27:           var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), var_104, CVar(CLng(var_134)), Me.FGrid, var_148)) 'String
  loc_1885F35:           LateIdCallSt
  loc_1885F81:           var_B0 = CVar(Me.Fields.Item("TaxStru")) 'Address
  loc_1885F8A:           var_C4 = Proc_6_38_E69628(var_B0, "Select * from taxStru where code='", var_134, -1, var_138, Me.FGrid)
  loc_1885F9E:           unk_523D50.Execute var_148 & var_C4 & "'", var_104, var_B0
  loc_1885FA9:           Set var_98 = var_138
  loc_1885FD7:           If (var_98.RecordCount > 0) Then
  loc_1885FFD:             var_D4 = "Rate"
  loc_1886011:             var_C0 = var_98.Fields.Item(var_D4)
  loc_1886020:             Proc_6_39_E7D3A0(var_134, CVar(var_C0), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)))
  loc_1886029:             var_17C = CVar(CStr(var_134)) 'String
  loc_1886031:             Set var_16C = Me.FGrid
  loc_1886037:             LateIdCallSt
  loc_1886053:           End If
  loc_1886058:           Call Proc_177_76_1778B9C(&H32, var_16C, var_17C)
  loc_188605D:         End If
  loc_188605D:       End If
  loc_1886060:     Else
  loc_1886067:       If (var_B4 = CLng(4)) Then
  loc_18860B8:         Set var_A0 = Me.TxtGrid
  loc_18860BE:         Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0, var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_18860C6:         var_F4 = var_C0.Text
  loc_18860DE:         If (var_D4 Or (var_C4 = vbNullString)) Then
  loc_18860F4:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18860FC:           var_F4 = CVar(CLng(4)) 'Long
  loc_1886101:           var_114 = vbNullString
  loc_188610B:           Set var_C0 = Me.FGrid
  loc_1886111:           LateIdCallSt
  loc_1886136:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188613E:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1886143:           var_114 = vbNullString
  loc_188614D:           Set var_C0 = Me.FGrid
  loc_1886153:           LateIdCallSt
  loc_1886178:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886180:           var_F4 = CVar(CLng(3)) 'Long
  loc_1886185:           var_114 = vbNullString
  loc_188618F:           Set var_C0 = Me.FGrid
  loc_1886195:           LateIdCallSt
  loc_18861BA:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18861C2:           var_F4 = CVar(CLng(6)) 'Long
  loc_18861C7:           var_114 = vbNullString
  loc_18861D1:           Set var_C0 = Me.FGrid
  loc_18861D7:           LateIdCallSt
  loc_18861FC:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886204:           var_F4 = CVar(CLng(3)) 'Long
  loc_1886209:           var_114 = vbNullString
  loc_1886213:           Set var_C0 = Me.FGrid
  loc_1886219:           LateIdCallSt
  loc_188623E:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886246:           var_F4 = CVar(CLng(8)) 'Long
  loc_188624B:           var_114 = vbNullString
  loc_1886255:           Set var_C0 = Me.FGrid
  loc_188625B:           LateIdCallSt
  loc_1886280:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886288:           var_F4 = CVar(CLng(9)) 'Long
  loc_188628D:           var_114 = vbNullString
  loc_1886297:           Set var_C0 = Me.FGrid
  loc_188629D:           LateIdCallSt
  loc_18862C2:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18862CA:           var_F4 = CVar(CLng(&H15)) 'Long
  loc_18862CF:           var_114 = vbNullString
  loc_18862D9:           Set var_C0 = Me.FGrid
  loc_18862DF:           LateIdCallSt
  loc_1886304:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188630C:           var_F4 = CVar(CLng(&H16)) 'Long
  loc_1886311:           var_114 = vbNullString
  loc_188631B:           Set var_C0 = Me.FGrid
  loc_1886321:           LateIdCallSt
  loc_1886346:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188634E:           var_F4 = CVar(CLng(&H17)) 'Long
  loc_1886353:           var_114 = vbNullString
  loc_188635D:           Set var_C0 = Me.FGrid
  loc_1886363:           LateIdCallSt
  loc_1886388:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886390:           var_F4 = CVar(CLng(&H1A)) 'Long
  loc_1886395:           var_114 = vbNullString
  loc_188639F:           Set var_C0 = Me.FGrid
  loc_18863A5:           LateIdCallSt
  loc_18863CA:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18863D2:           var_F4 = CVar(CLng(&H1B)) 'Long
  loc_18863D7:           var_114 = vbNullString
  loc_18863E1:           Set var_C0 = Me.FGrid
  loc_18863E7:           LateIdCallSt
  loc_188640C:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886414:           var_F4 = CVar(CLng(&H1C)) 'Long
  loc_1886419:           var_114 = vbNullString
  loc_1886423:           Set var_C0 = Me.FGrid
  loc_1886429:           LateIdCallSt
  loc_188643E:         Else
  loc_1886457:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188645F:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1886479:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1886497:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188649F:           var_158 = CVar(CLng(&HB)) 'Long
  loc_18864B9:           var_180 = CStr(Me.FGrid.TextMatrix))
  loc_1886524:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HB)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_188653B:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1886557:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188655F:             var_104 = CVar(CLng(4)) 'Long
  loc_1886592:             var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_188659A:             Set var_16C = Me.FGrid
  loc_18865A0:             LateIdCallSt
  loc_18865CF:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18865D7:             var_104 = CVar(CLng(&HB)) 'Long
  loc_188660A:             var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1886612:             Set var_16C = Me.FGrid
  loc_1886618:             LateIdCallSt
  loc_1886647:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188664F:             var_104 = CVar(CLng(3)) 'Long
  loc_1886682:             var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_188668A:             Set var_16C = Me.FGrid
  loc_1886690:             LateIdCallSt
  loc_18866BF:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18866C7:             var_104 = CVar(CLng(6)) 'Long
  loc_18866FA:             var_148 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1886702:             Set var_16C = Me.FGrid
  loc_1886708:             LateIdCallSt
  loc_1886738:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1886745:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_188674D:             var_F4 = CVar(CLng(0)) 'Long
  loc_1886757:             var_B0 = CVar(CStr(var_92)) 'String
  loc_188675F:             Set var_A0 = Me.FGrid
  loc_1886765:             LateIdCallSt
  loc_1886777:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_188677F:             var_F4 = CVar(CLng(7)) 'Long
  loc_1886799:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_18867AF:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_18867B6:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_18867BE:               var_F4 = CVar(CLng(7)) 'Long
  loc_18867C3:               var_114 = "1.0"
  loc_18867CD:               Set var_A0 = Me.FGrid
  loc_18867D3:               LateIdCallSt
  loc_18867DE:             End If
  loc_18867E4:             var_D4 = "Code"
  loc_18867F3:             var_A0 = Me.Fields
  loc_1886816:             Set var_138 = Me.Txt
  loc_188681C:             Call 0.Method_Proc_177_68_18871280 (CInt(1), var_16C, var_180, var_A0, var_114, var_F4, var_D4)
  loc_1886824:             var_F4 = var_16C.Text
  loc_188683B:             Call Proc_177_81_F27ED0(CStr(var_A0.Item(var_D4).Value), var_180, var_1F4, var_D4, var_A0)
  loc_188685B:             var_124 = CVar(CLng(8)) 'Long
  loc_1886896:             LateIdCallSt
  loc_18868FB:             Set var_138 = Me.Txt
  loc_1886901:             Call 0.Method_Proc_177_68_18871280 (CInt(1), var_16C, var_180, Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)
  loc_1886909:             var_124 = var_16C.Text
  loc_1886920:             Call Proc_177_81_F27ED0(CStr(Me.Fields.Item("Code").Value), var_180, var_1F4, CVar(CLng(Me.FGrid.Row)))
  loc_1886938:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188697B:             LateIdCallSt
  loc_18869D8:             var_134 = CVar(Proc_6_38_E69628(global_148, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)) 'String
  loc_18869E6:             LateIdCallSt
  loc_1886A2C:             var_134 = CVar(Proc_6_38_E69628(global_152, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(9)))) 'String
  loc_1886A34:             Set var_C0 = Me.FGrid
  loc_1886A3A:             LateIdCallSt
  loc_1886A6B:             var_F4 = CVar(CLng(&H17)) 'Long
  loc_1886A7E:             Set var_A0 = Me.Txt
  loc_1886A84:             Call 0.Method_Proc_177_68_18871280 (CInt(3), var_C0, var_C4, var_F4, CVar(CLng(Me.FGrid.Row)), var_C0)
  loc_1886A8C:             var_134 = var_C0.Tag
  loc_1886A94:             var_134 = CVar(var_C4) 'String
  loc_1886AA2:             LateIdCallSt
  loc_1886AC6:             var_134 = Me.FGrid.Row
  loc_1886B07:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_134)), Me.FGrid, var_134)) 'String
  loc_1886B15:             LateIdCallSt
  loc_1886B7A:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886B88:             LateIdCallSt
  loc_1886BED:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886BFB:             LateIdCallSt
  loc_1886C60:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886C6E:             LateIdCallSt
  loc_1886CD3:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886CE1:             LateIdCallSt
  loc_1886D46:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886D54:             LateIdCallSt
  loc_1886D72:             Set var_138 = Me.FGrid
  loc_1886D78:             var_134 = var_138.Row
  loc_1886D89:             var_104 = CVar(CLng(&H19)) 'Long
  loc_1886DB9:             var_148 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), var_104, CVar(CLng(var_134)), Me.FGrid, var_148)) 'String
  loc_1886DC7:             LateIdCallSt
  loc_1886E13:             var_B0 = CVar(Me.Fields.Item("TaxStru")) 'Address
  loc_1886E1C:             var_C4 = Proc_6_38_E69628(var_B0, "Select * from taxStru where code='", var_134, -1, var_138, Me.FGrid)
  loc_1886E30:             unk_523D50.Execute var_148 & var_C4 & "'", var_104, var_B0
  loc_1886E3B:             Set var_98 = var_138
  loc_1886E69:             If (var_98.RecordCount > 0) Then
  loc_1886E8F:               var_D4 = "Rate"
  loc_1886EA3:               var_C0 = var_98.Fields.Item(var_D4)
  loc_1886EB2:               Proc_6_39_E7D3A0(var_134, CVar(var_C0), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)))
  loc_1886EBB:               var_17C = CVar(CStr(var_134)) 'String
  loc_1886EC3:               Set var_16C = Me.FGrid
  loc_1886EC9:               LateIdCallSt
  loc_1886EE5:             End If
  loc_1886EEA:             Call Proc_177_76_1778B9C(&H32, var_16C, var_17C)
  loc_1886EEF:           End If
  loc_1886EEF:         End If
  loc_1886EF2:       Else
  loc_1886EF9:         If (var_B4 = CLng(7)) Then
  loc_1886F06:           Set var_A0 = Me.TxtGrid
  loc_1886F0C:           Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0, var_F4)
  loc_1886F24:           If Not(IsNumeric(CVar(var_C0))) Then
  loc_1886F38:             Set var_A0 = Me.TxtGrid
  loc_1886F3E:             Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0, CStr(0))
  loc_1886F46:             var_C0.Text = var_D4
  loc_1886F55:           End If
  loc_1886F62:           Set var_A0 = Me.TxtGrid
  loc_1886F68:           Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0)
  loc_1886F88:           var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886F90:           var_104 = CVar(CLng(7)) 'Long
  loc_1886FCA:           LateIdCallSt
  loc_1886FEF:           Call Proc_177_76_1778B9C(&H32, Me.FGrid, CVar(CStr(Format(CVar(var_C0.Text), "0.00"))), 1)
  loc_1886FF7:         Else
  loc_1886FFE:           If (var_B4 = CLng(8)) Then
  loc_188700B:             Set var_A0 = Me.TxtGrid
  loc_1887011:             Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0, 1)
  loc_1887029:             If Not(IsNumeric(CVar(var_C0))) Then
  loc_1887030:               var_C4 = CStr(0)
  loc_188703D:               Set var_A0 = Me.TxtGrid
  loc_1887043:               Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0, var_C4)
  loc_188704B:               var_C0.Text = var_104
  loc_188705A:             End If
  loc_1887067:             Set var_A0 = Me.TxtGrid
  loc_188706D:             Call 0.Method_Proc_177_68_18871280 (arg_C, var_C0, var_C4)
  loc_1887075:             var_E4 = var_C0.Text
  loc_1887098:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18870B0:             var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_18870EB:             LateIdCallSt
  loc_1887117:             Call Proc_177_76_1778B9C(&H32, Me.FGrid, CVar(CStr(Format(CVar(Val(var_C4)), "0.00"))), 1, 1)
  loc_188711C:           End If
  loc_188711C:         End If
  loc_188711C:       End If
  loc_188711C:     End If
  loc_188711C:   End If
  loc_188711C: End If
  loc_1887121: Proc_177_68_1887128 = &HFF
End Sub

Public Sub Proc_177_69_1831198
  'Data Table: 523D30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim unk_523D50 As Connection15
  Dim var_13C As Recordset15
  Dim var_D0 As Variant
  Dim var_140 As Variant
  Dim var_144 As String
  Dim var_138 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Double
  Dim var_88 As Recordset15
  Dim var_168 As Variant
  Dim var_8E As Integer
  Dim var_A2 As Integer
  Dim var_9E As Integer
  Dim var_124 As Variant
  Dim var_180 As Variant
  Dim var_134 As Variant
  Dim var_1B4 As Variant
  loc_182ED54: On Error Goto loc_1831145
  loc_182ED64: Me.lbltable.Caption = vbNullString
  loc_182ED83: If (Me.RecordCount > 0) Then
  loc_182EDC5:   var_F0 = "Select S.* From Sale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_182EDDC:   unk_523D50.Execute CStr(var_F0 & "'"), var_134, -1
  loc_182EE04:   Set var_13C = var_138 
  loc_182EE39:   global_196 = Proc_6_38_E69628(CVar(var_13C.Fields.Item("Printed")))
  loc_182EE7E:   Set var_138 = Me.Txt
  loc_182EE84:   Call 0.Method_Proc_177_69_18311980 (CInt(2), var_140)
  loc_182EE8C:   var_140.Text = CStr(var_13C.Fields.Item("DocID").Value)
  loc_182EEBC:   var_C0 = var_13C.Fields.Item("vType")
  loc_182EEC4:   var_D0 = var_C0.Value
  loc_182EEEA:   var_E0 = 0
  loc_182EF1A:   unk_523D50.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_D0) & "'", var_D0, -1
  loc_182EF22:   var_A8 = var_A8.Fields
  loc_182EF2A:   var_E0 = var_C0.Item(var_C0)
  loc_182EF32:   var_138 = var_138.Value
  loc_182EF41:   global_132 = CStr(var_F0)
  loc_182EF97:   Set var_138 = Me.Txt
  loc_182EF9D:   Call 0.Method_Proc_177_69_18311980 (CInt(0), var_140, CStr(var_13C.Fields.Item("VNo").Value))
  loc_182EFA5:   var_140.Text = var_F0
  loc_182EFD2:   var_C0 = var_13C.Fields.Item("VDate")
  loc_182F00D:   Set var_138 = Me.Txt
  loc_182F013:   Call 0.Method_Proc_177_69_18311980 (CInt(1), var_140, CStr(Format(CVar(var_C0), "DD/MMM/YYYY")))
  loc_182F01B:   var_140.Text = 1
  loc_182F040:   Set var_A8 = Me.Txt
  loc_182F046:   Call 0.Method_Proc_177_69_18311980 (CInt(1), var_C0)
  loc_182F078:   Call Proc_177_75_17DAD08(CDate(Format(CVar(var_C0), "DD/MMM/YYYY")), 1, 1)
  loc_182F0BB:   Set var_138 = Me.LblVPrefix
  loc_182F0C1:   var_138.Caption = CStr(var_13C.Fields.Item("vPrefix").Value)
  loc_182F106:   global_140 = CStr(var_13C.Fields.Item("KOTNo").Value)
  loc_182F128:   If (global_216 = "Hall") Then
  loc_182F167:     var_F0 = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_13C.Fields.Item("RoomNo").Value 
  loc_182F17E:     unk_523D50.Execute CStr(var_F0 & "'"), var_134, -1
  loc_182F189:     Set var_8C = var_138
  loc_182F1B7:     If (var_8C.RecordCount > 0) Then
  loc_182F1F9:       Call 0.Method_Proc_177_69_18311980 (CInt(3), var_140, CStr(var_8C.Fields.Item(0).Value))
  loc_182F201:       var_140.Text = Me.Txt
  loc_182F217:     End If
  loc_182F21A:   Else
  loc_182F250:     Set var_138 = Me.Txt
  loc_182F256:     Call 0.Method_Proc_177_69_18311980 (CInt(3), var_140)
  loc_182F25E:     var_140.Text = Proc_6_38_E69628(CVar(var_13C.Fields.Item("RoomNo")), 1)
  loc_182F272:   End If
  loc_182F2A8:   Set var_138 = Me.Txt
  loc_182F2AE:   Call 0.Method_Proc_177_69_18311980 (CInt(3), var_140)
  loc_182F2B6:   var_140.Tag = Proc_6_38_E69628(CVar(var_13C.Fields.Item("RoomNo")))
  loc_182F2F0:   Proc_6_39_E7D3A0(var_F0, CVar(var_13C.Fields.Item("GuarAtt")))
  loc_182F307:   Set var_138 = Me.Txt
  loc_182F30D:   Call 0.Method_Proc_177_69_18311980 (CInt(4), var_140)
  loc_182F315:   var_140.Text = CStr(var_F0)
  loc_182F358:   var_F0 = "hh:nn"
  loc_182F37F:   Set var_138 = Me.Txt
  loc_182F385:   Call 0.Method_Proc_177_69_18311980 (CInt(5), var_140, CStr(Format(CVar(var_13C.Fields.Item("VTIME")), var_F0)))
  loc_182F38D:   var_140.Text = 1
  loc_182F3EF:   var_144 = Replace(CStr(var_13C.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_182F3F7:   var_150 = Val("Select NCAT From Voucher_Type Where V_Type='" & CStr(var_13C.Fields.Item("VTIME").Value) & "'")
  loc_182F423:   unk_523D50.Execute "Select Name From SessionMast WHERE " & CStr(var_150) & " BETWEEN FromTime AND ToTime", var_F0, -1
  loc_182F42E:   Set var_94 = var_138
  loc_182F465:   If (Me.Recordset15.RecordCount > 0) Then
  loc_182F49A:     Set var_138 = Me.lblSession
  loc_182F4A0:     var_138.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")), var_138, var_150)
  loc_182F4B2:   End If
  loc_182F4B4:   Set var_13C = Nothing 
  loc_182F50E:   unk_523D50.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_134, -1
  loc_182F519:   Set var_88 = var_138
  loc_182F547:   If (var_88.RecordCount > 0) Then
  loc_182F57A:     Call Proc_177_75_17DAD08(CDate(var_88.Fields.Item("SunAppDate").Value), var_138)
  loc_182F589:     ' Referenced from: 182FA1D
  loc_182F598:     If Not(var_88.EOF) Then
  loc_182F5FB:       Set var_164 = Me.LblCap
  loc_182F601:       Call 0.Method_Proc_177_69_18311980 (CInt(var_88.Fields.Item("SNo").Value), var_168, CStr(var_88.Fields.Item("SunCode").Value))
  loc_182F609:       var_168.Tag = 1
  loc_182F687:       Set var_164 = Me.TxtPer
  loc_182F68D:       Call 0.Method_Proc_177_69_18311980 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_182F695:       var_168.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_182F713:       Set var_164 = Me.LblCap
  loc_182F719:       Call 0.Method_Proc_177_69_18311980 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_182F721:       var_168.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_182F79F:       Set var_164 = Me.LblAt
  loc_182F7A5:       Call 0.Method_Proc_177_69_18311980 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_182F7AD:       var_168.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_182F828:       Set var_164 = Me.TxtGt
  loc_182F82E:       Call 0.Method_Proc_177_69_18311980 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_182F836:       var_168.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_182F8B2:       Set var_164 = Me.TxtPer
  loc_182F8B8:       Call 0.Method_Proc_177_69_18311980 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_182F8C0:       var_168.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_182F91C:       var_134 = var_88.Fields.Item("SNo").Value
  loc_182F930:       var_F0 = "0.00"
  loc_182F957:       Set var_164 = Me.TxtGt
  loc_182F95D:       Call 0.Method_Proc_177_69_18311980 (CInt(var_134), var_168, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F0)))
  loc_182F965:       var_168.Text = 1
  loc_182F99C:       var_C0 = var_88.Fields.Item("BaseAmount")
  loc_182F9AB:       Proc_6_39_E7D3A0(var_F0, CVar(var_C0))
  loc_182F9B3:       var_114 = CStr(var_F0)
  loc_182F9CC:       var_138 = var_88.Fields
  loc_182F9D4:       var_140 = var_138.Item("SNo")
  loc_182F9E9:       Set var_164 = Me.LblDummy
  loc_182F9EF:       Call 0.Method_Proc_177_69_18311980 (CInt(var_140.Value), var_168, var_114)
  loc_182F9F7:       var_168.Caption = 1
  loc_182FA18:       var_88.MoveNext
  loc_182FA1D:       GoTo loc_182F589
  loc_182FA20:     End If
  loc_182FA20:   End If
  loc_182FA3E:   Set var_A8 = Me.Txt
  loc_182FA44:   Call 0.Method_Proc_177_69_18311980 (CInt(2), var_C0, var_114, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='")
  loc_182FA4C:   var_D0 = var_C0.Text
  loc_182FA55:   var_144 = -1 & var_114
  loc_182FA65:   unk_523D50.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_D0) & "'" & "' And PayType='Cash'", var_138, var_138
  loc_182FA70:   Set var_8C = var_138
  loc_182FA96:   Set var_A8 = Me.Txt
  loc_182FA9C:   Call 0.Method_Proc_177_69_18311980 (CInt(6), var_C0)
  loc_182FAA4:   var_C0.Text = vbNullString
  loc_182FABE:   Set var_A8 = Me.Txt
  loc_182FAC4:   Call 0.Method_Proc_177_69_18311980 (CInt(7), var_C0)
  loc_182FACC:   var_C0.Text = vbNullString
  loc_182FAE6:   Set var_A8 = Me.Txt
  loc_182FAEC:   Call 0.Method_Proc_177_69_18311980 (CInt(8), var_C0)
  loc_182FAF4:   var_C0.Text = vbNullString
  loc_182FB14:   If (var_8C.RecordCount > 0) Then
  loc_182FB69:     Set var_138 = Me.Txt
  loc_182FB6F:     Call 0.Method_Proc_177_69_18311980 (CInt(6), var_140, CStr(Format(CVar(var_8C.Fields.Item("Amount")), "0.00")))
  loc_182FB77:     var_140.Text = 1
  loc_182FBE3:     Set var_138 = Me.Txt
  loc_182FBE9:     Call 0.Method_Proc_177_69_18311980 (CInt(7), var_140, CStr(Format(CVar(var_8C.Fields.Item("TipAmt")), "0.00")))
  loc_182FBF1:     var_140.Text = 1
  loc_182FC0B:   End If
  loc_182FC1A:   Me.FGrid.Redraw = False
  loc_182FC35:   Me.FGrid.Rows = 1
  loc_182FC3F:   var_8E = 1
  loc_182FC4F:   var_E0 = "Select S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And I.RestCode=S.ItemRestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_182FC98:   unk_523D50.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_134, -1
  loc_182FCA3:   Set var_88 = var_138
  loc_182FCD1:   If (var_88.RecordCount > 0) Then
  loc_182FCE1:     ReDim Preserve var_9C(0 To 0)
  loc_182FCEB:     ' Referenced from: 1830815
  loc_182FCFA:     If Not(var_88.EOF) Then
  loc_182FCFD:       var_BC = vbNullString
  loc_182FD07:       Set var_A8 = Me.FGrid
  loc_182FD25:       For var_16C = 0 To CInt(UBound(var_9C, 1)): var_A0 = var_16C 'Integer
  loc_182FD36:         var_BC = "RoomNo"
  loc_182FD69:         If (var_138 = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_BC)), var_9C(CLng(var_A0)), 0, FGrid.DispID_10000, var_BC)) Then
  loc_182FD6E:           var_A2 = &HFF
  loc_182FD71:         End If
  loc_182FD74:       Next var_16C 'Integer
  loc_182FD7F:       If (var_A2 = 0) Then
  loc_182FD8E:         ReDim Preserve var_9C(0 To CLng(var_9E))
  loc_182FDCA:         var_9C(CLng(var_9E)) = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")))
  loc_182FDDA:         var_9E = (var_9E + 1)
  loc_182FDDD:       End If
  loc_182FDDF:       var_A2 = 0
  loc_182FDE6:       Set var_170 = Me.FGrid
  loc_182FDED:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_182FDF5:       var_124 = CVar(CLng(0)) 'Long
  loc_182FE25:       var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_182FE2C:       LateIdCallSt
  loc_182FE7B:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_182FE82:       LateIdCallSt
  loc_182FECD:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_182FED4:       LateIdCallSt
  loc_182FF1F:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_182FF26:       LateIdCallSt
  loc_182FF71:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_182FF78:       LateIdCallSt
  loc_182FFC3:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_182FFCA:       LateIdCallSt
  loc_182FFFC:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1830004:       var_180 = CVar(CLng(7)) 'Long
  loc_1830031:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_1830038:       LateIdCallSt
  loc_183006E:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1830076:       var_180 = CVar(CLng(8)) 'Long
  loc_18300A3:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_18300AA:       LateIdCallSt
  loc_18300E0:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_18300E8:       var_180 = CVar(CLng(9)) 'Long
  loc_1830115:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_183011C:       LateIdCallSt
  loc_1830152:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_183015A:       var_180 = CVar(CLng(&HA)) 'Long
  loc_1830187:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_183018E:       LateIdCallSt
  loc_18301A8:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_18301B0:       var_124 = CVar(CLng(&HB)) 'Long
  loc_18301E0:       var_F0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_18301E7:       LateIdCallSt
  loc_183021D:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1830225:       var_180 = CVar(CLng(&HE)) 'Long
  loc_1830252:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1830259:       LateIdCallSt
  loc_183028F:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1830297:       var_180 = CVar(CLng(&HF)) 'Long
  loc_18302C4:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_18302CB:       LateIdCallSt
  loc_1830301:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1830309:       var_180 = CVar(CLng(&H10)) 'Long
  loc_1830336:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_183033D:       LateIdCallSt
  loc_1830373:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_183037B:       var_180 = CVar(CLng(&H11)) 'Long
  loc_18303A8:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_18303AF:       LateIdCallSt
  loc_1830421:       LateIdCallSt
  loc_1830470:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_170, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1830477:       LateIdCallSt
  loc_18304C2:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_170, var_F0, CVar(CLng(&H12)))) 'String
  loc_18304C9:       LateIdCallSt
  loc_1830514:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_183051B:       LateIdCallSt
  loc_1830566:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_183056D:       LateIdCallSt
  loc_18305AE:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_18305B6:       var_124 = CVar(CLng(5)) 'Long
  loc_18305D1:       var_114 = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_170, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), var_170, var_F0, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_18305DC:       var_134 = CVar(CStr(Val(var_114))) 'String
  loc_18305E3:       LateIdCallSt
  loc_1830639:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_170, var_134, CVar(CLng(&HD)))) 'String
  loc_1830640:       LateIdCallSt
  loc_1830689:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_170, var_F0)
  loc_1830699:       LateIdCallSt
  loc_18306E6:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_170, CVar(CStr(var_F0)))) 'String
  loc_18306ED:       LateIdCallSt
  loc_1830738:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_183073F:       LateIdCallSt
  loc_1830788:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_170, var_F0)
  loc_1830798:       LateIdCallSt
  loc_18307B0:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_18307D4:       var_C0 = var_88.Fields.Item("Godowncode")
  loc_18307E5:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_C0), CVar(CLng(&H1A)), var_E0, var_170, CVar(CStr(var_F0)))) 'String
  loc_18307EC:       LateIdCallSt
  loc_1830800:       Set var_170 = Nothing 
  loc_183080A:       var_8E = (var_8E + 1)
  loc_1830810:       var_88.MoveNext
  loc_1830815:       GoTo loc_182FCEB
  loc_1830818:     End If
  loc_183082B:     Me.FGrid.FixedRows = 1
  loc_1830841:     Set var_A8 = Me.Txt
  loc_1830847:     Call 0.Method_Proc_177_69_18311980 (CInt(3), var_C0, vbNullString, var_8E, var_170, var_F0)
  loc_1830868:     For var_1A4 = 0 To CInt(UBound(var_9C, 1)): var_9E = var_1A4 'Integer
  loc_183087C:       Set var_A8 = Me.Txt
  loc_1830882:       Call 0.Method_Proc_177_69_18311980 (CInt(3), var_C0, var_114, 0)
  loc_183088A:       var_170 = var_E0
  loc_18308B0:       Set var_138 = Me.Txt
  loc_18308B6:       Call 0.Method_Proc_177_69_18311980 (CInt(3), var_140, var_114 & var_9C(CLng(var_9E)) & ",")
  loc_18308BE:       var_140.Text = var_134
  loc_18308DA:     Next var_1A4 'Integer
  loc_18308EA:     Set var_A8 = Me.Txt
  loc_18308F0:     Call 0.Method_Proc_177_69_18311980 (CInt(3))
  loc_1830900:     Set var_138 = Me.Txt
  loc_1830906:     Call 0.Method_Proc_177_69_18311980 (CInt(3), var_140)
  loc_1830926:     var_134 = (Len(Trim(CVar(var_140))) - 1)
  loc_1830939:     var_1B4 = CVar(var_C0) 'Address
  loc_1830957:     Set var_164 = Me.Txt
  loc_183095D:     Call 0.Method_Proc_177_69_18311980 (CInt(3), var_168)
  loc_1830965:     var_168.Text = CStr(Mid(var_1B4, 1, var_134))
  loc_1830985:   End If
  loc_1830993:   Me.FGrid.Redraw = True
  loc_18309AF:   var_F0 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_18309F6:   unk_523D50.Execute CStr(var_F0 & Me.Fields.Item("SearchCode").Value & "'"), var_1B4, -1
  loc_1830A01:   Set var_88 = var_138
  loc_1830A30:   Me.FGCat.Rows = 1
  loc_1830A4C:   If (var_88.RecordCount > 0) Then
  loc_1830A4F:     ' Referenced from: 1830E17
  loc_1830A5E:     If Not(var_88.EOF) Then
  loc_1830A65:       Set var_1D8 = Me.FGCat
  loc_1830A68:       var_BC = vbNullString
  loc_1830A92:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1830A9A:       var_124 = CVar(CLng(0)) 'Long
  loc_1830ACA:       var_110 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_1830AD1:       LateIdCallSt
  loc_1830B04:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1830B0C:       var_124 = CVar(CLng(1)) 'Long
  loc_1830B3C:       var_110 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1830B43:       LateIdCallSt
  loc_1830B76:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1830B7E:       var_124 = CVar(CLng(2)) 'Long
  loc_1830BAE:       var_110 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1830BB5:       LateIdCallSt
  loc_1830BE8:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1830BF0:       var_124 = CVar(CLng(3)) 'Long
  loc_1830C20:       var_110 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1830C27:       LateIdCallSt
  loc_1830C5A:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1830C62:       var_124 = CVar(CLng(4)) 'Long
  loc_1830C92:       var_110 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_1830C99:       LateIdCallSt
  loc_1830CCC:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1830CD4:       var_124 = CVar(CLng(5)) 'Long
  loc_1830D04:       var_110 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_1830D0B:       LateIdCallSt
  loc_1830D3E:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1830D46:       var_124 = CVar(CLng(6)) 'Long
  loc_1830D76:       var_110 = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_1830D7D:       LateIdCallSt
  loc_1830DB0:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1830DB8:       var_124 = CVar(CLng(7)) 'Long
  loc_1830DE8:       var_110 = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_1830DEF:       LateIdCallSt
  loc_1830E0B:       Set var_1D8 = Nothing 
  loc_1830E12:       var_88.MoveNext
  loc_1830E17:       GoTo loc_1830A4F
  loc_1830E1A:     End If
  loc_1830E1A:   End If
  loc_1830E20:   If (var_8E = 1) Then
  loc_1830E36:     Me.FGrid.Rows = 1
  loc_1830E42:     Set var_138 = Me.FGrid
  loc_1830E5C:     var_D0 = CVar(CStr(Proc_6_127_F25B10(var_138, CInt(0), var_1D8, var_110, var_124, "'", var_1D8, var_110))) 'String
  loc_1830E64:     Set var_C0 = Me.FGrid
  loc_1830E91:     Me.FGrid.FixedRows = 1
  loc_1830E99:   End If
  loc_1830EA4:   If (global_156 = "Y") Then
  loc_1830EBB:     var_114 = "SELECT  Distinct  CAST(P.VNo AS varchar(10)) AS SearchCode, CAST(P.VNo AS varchar(10)) AS VNo, P.CustName,P.Docid FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE     (P.LogSite_Code = '" & MemVar_1F95078
  loc_1830ED3:     var_F0 = CVar(var_114 & "') AND (P.RestCode = '" & global_60 & "') and PD.ContraDocID='") 'String
  loc_1830F03:     var_110 = var_F0 & Me.Fields.Item("SearchCode").Value 
  loc_1830F07:     var_E0 = "'"
  loc_1830F0C:     var_134 = var_110 & var_E0 
  loc_1830F1A:     unk_523D50.Execute CStr(var_134), var_1B4, -1
  loc_1830F25:     Set var_98 = var_138
  loc_1830F52:     var_AC = Me.Recordset15.RecordCount
  loc_1830F60:     If (var_AC > 0) Then
  loc_1830F63:       ' Referenced from: 18310A5
  loc_1830F77:       If (Me.Recordset15.EOF = 0) Then
  loc_1830F9F:         var_D0 = Me.Recordset15.Fields.Item("DocID").Value
  loc_1830FBC:         Call 0.Method_Proc_177_69_18311980 (CInt(&HB), var_140, CStr(var_D0), Me.Txt, FGrid.DispID_10000, var_D0)
  loc_1830FC4:         var_140.Tag = var_124
  loc_1831016:         Set var_138 = Me.Txt
  loc_183101C:         Call 0.Method_Proc_177_69_18311980 (CInt(&HB), var_140, CStr(Me.Recordset15.Fields.Item("VNo").Value), var_E0)
  loc_1831024:         var_140.Text = var_1D8
  loc_1831057:         var_C0 = Me.Recordset15.Fields.Item("CustName")
  loc_1831076:         Set var_138 = Me.Txt
  loc_183107C:         Call 0.Method_Proc_177_69_18311980 (CInt(&HC), var_140, CStr(var_C0.Value))
  loc_1831084:         var_140.Text = var_110
  loc_18310A0:         Me.Recordset15.MoveNext
  loc_18310A5:         GoTo loc_1830F63
  loc_18310A8:       End If
  loc_18310AB:     Else
  loc_18310B9:       Set var_A8 = Me.Txt
  loc_18310BF:       Call 0.Method_Proc_177_69_18311980 (CInt(&HB), var_C0)
  loc_18310C7:       var_C0.Tag = vbNullString
  loc_18310E1:       Set var_A8 = Me.Txt
  loc_18310E7:       Call 0.Method_Proc_177_69_18311980 (CInt(&HB), var_C0)
  loc_18310EF:       var_C0.Text = vbNullString
  loc_1831109:       Set var_A8 = Me.Txt
  loc_183110F:       Call 0.Method_Proc_177_69_18311980 (CInt(&HC), var_C0)
  loc_1831117:       var_C0.Text = vbNullString
  loc_1831123:     End If
  loc_1831123:   End If
  loc_1831126: Else
  loc_1831126:   Call Proc_177_70_10B1028(var_124)
  loc_183112B: End If
  loc_183112B: Call Proc_177_72_E84B70()
  loc_1831135: Set var_88 = Nothing
  loc_183113D: Set var_94 = Nothing
  loc_1831144: Exit Sub
  loc_1831145: ' Referenced from: 182ED54
  loc_183114D: Set var_A8 = Err()
  loc_1831153: Call 0.Method_arg_1C (var_AC)
  loc_1831164: If (var_AC = &HBCD) Then
  loc_1831180:   MsgBox("Record is Deleted by somebody", &H40, var_F0, var_110, var_134)
  loc_1831190:   Exit Sub
  loc_1831191: End If
  loc_1831191: Proc_6_60_E63754()
  loc_1831196: Exit Sub
End Sub

Public Sub Proc_177_70_10B1028
  'Data Table: 523D30
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_10B0D55: Me.LblVPrefix.Caption = vbNullString
  loc_10B0D6B: Set var_8C = Me.Txt
  loc_10B0D71: Call 0.Method_Proc_177_70_10B1028C (var_8E, var_86)
  loc_10B0D81: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10B0D97:   Set var_8C = Me.Txt
  loc_10B0D9D:   Call 0.Method_Proc_177_70_10B10280 (CInt(var_86), var_98)
  loc_10B0DA5:   var_98.Text = vbNullString
  loc_10B0DC1:   Set var_8C = Me.Txt
  loc_10B0DC7:   Call 0.Method_Proc_177_70_10B10280 (CInt(var_86), var_98)
  loc_10B0DCF:   var_98.Tag = vbNullString
  loc_10B0DDE: Next var_92 'Byte
  loc_10B0DF7: Me.FGrid.Rows = 1
  loc_10B0E0C: Me.lbltable.Caption = vbNullString
  loc_10B0E32: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_10B0E3A: Set var_98 = Me.FGrid
  loc_10B0E54: var_A8 = 1
  loc_10B0E60: var_DC = CVar(CLng(1)) 'Long
  loc_10B0E73: Set var_8C = Me.FGrid
  loc_10B0E79: LateIdCallSt
  loc_10B0E84: var_A8 = 1
  loc_10B0E90: var_DC = CVar(CLng(2)) 'Long
  loc_10B0EA3: Set var_8C = Me.FGrid
  loc_10B0EA9: LateIdCallSt
  loc_10B0EB4: var_A8 = 1
  loc_10B0EC7: Me.FGrid.FixedRows = var_A8
  loc_10B0EE3: Call 0.Method_Proc_177_70_10B1028C (var_8E, var_86, CByte(1), Me.TxtPer, global_220, var_DC, var_A8)
  loc_10B0EF0: For var_100 = global_228 To CByte(var_8E): var_8C = var_100 'Byte
  loc_10B0F06:   Set var_8C = Me.TxtPer
  loc_10B0F0C:   Call 0.Method_Proc_177_70_10B10280 (CInt(var_86), var_98, vbNullString, global_228, var_DC)
  loc_10B0F14:   var_98.Text = var_A8
  loc_10B0F23: Next var_100 'Byte
  loc_10B0F37: Set var_8C = Me.TxtGt
  loc_10B0F3D: Call 0.Method_Proc_177_70_10B1028C (var_8E, var_86)
  loc_10B0F4A: For var_104 =  To CByte(var_8E): CByte(1) = var_104 'Byte
  loc_10B0F60:   Set var_8C = Me.TxtGt
  loc_10B0F66:   Call 0.Method_Proc_177_70_10B10280 (CInt(var_86), var_98)
  loc_10B0F6E:   var_98.Text = vbNullString
  loc_10B0F7D: Next var_104 'Byte
  loc_10B0F91: Set var_8C = Me.Txt
  loc_10B0F97: Call 0.Method_Proc_177_70_10B10280 (CInt(5), var_98)
  loc_10B0F9F: var_98.Text = "00:00"
  loc_10B0FB9: Set var_8C = Me.Txt
  loc_10B0FBF: Call 0.Method_Proc_177_70_10B10280 (CInt(5), var_98)
  loc_10B0FC7: var_98.Tag = vbNullString
  loc_10B0FE5: Set var_8C = Me.Txt
  loc_10B0FEB: Call 0.Method_Proc_177_70_10B10280 (CInt(4), var_98)
  loc_10B0FF3: var_98.Text = CStr(1)
  loc_10B1008: global_236 = vbNullString
  loc_10B101F: Me.FGCat.Rows = 0
  loc_10B1027: Exit Sub
End Sub

Public Sub Proc_177_71_FD2D24(arg_C) 'FD2D24
  'Data Table: 523D30
  Dim var_98 As TextBox
  loc_FD2B5A: Set var_8C = Me.Txt
  loc_FD2B60: Call 0.Method_Proc_177_71_FD2D24C (var_8E, var_86)
  loc_FD2B70: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FD2B86:   Set var_8C = Me.Txt
  loc_FD2B8C:   Call 0.Method_Proc_177_71_FD2D240 (CInt(var_86), var_98)
  loc_FD2B94:   var_98.Enabled = arg_C
  loc_FD2BA3: Next var_92 'Byte
  loc_FD2BB7: Set var_8C = Me.TxtPer
  loc_FD2BBD: Call 0.Method_Proc_177_71_FD2D24C (var_8E, var_86)
  loc_FD2BCA: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_FD2BE0:   Set var_8C = Me.TxtPer
  loc_FD2BE6:   Call 0.Method_Proc_177_71_FD2D240 (CInt(var_86), var_98)
  loc_FD2BEE:   var_98.Enabled = arg_C
  loc_FD2BFD: Next var_9C 'Byte
  loc_FD2C11: Set var_8C = Me.TxtGt
  loc_FD2C17: Call 0.Method_Proc_177_71_FD2D24C (var_8E, var_86)
  loc_FD2C24: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_FD2C3A:   Set var_8C = Me.TxtGt
  loc_FD2C40:   Call 0.Method_Proc_177_71_FD2D240 (CInt(var_86), var_98)
  loc_FD2C48:   var_98.Enabled = arg_C
  loc_FD2C57: Next var_A0 'Byte
  loc_FD2C6A: Set var_8C = Me.Txt
  loc_FD2C70: Call 0.Method_Proc_177_71_FD2D240 (CInt(2), var_98)
  loc_FD2C78: var_98.Enabled = False
  loc_FD2C91: Set var_8C = Me.Txt
  loc_FD2C97: Call 0.Method_Proc_177_71_FD2D240 (CInt(5), var_98)
  loc_FD2C9F: var_98.Enabled = False
  loc_FD2CB8: Set var_8C = Me.Txt
  loc_FD2CBE: Call 0.Method_Proc_177_71_FD2D240 (CInt(1), var_98)
  loc_FD2CC6: var_98.Enabled = False
  loc_FD2CDF: Set var_8C = Me.Txt
  loc_FD2CE5: Call 0.Method_Proc_177_71_FD2D240 (CInt(0), var_98)
  loc_FD2CED: var_98.Enabled = False
  loc_FD2D06: Set var_8C = Me.Txt
  loc_FD2D0C: Call 0.Method_Proc_177_71_FD2D240 (CInt(8), var_98)
  loc_FD2D14: var_98.Enabled = False
  loc_FD2D20: Exit Sub
End Sub

Public Sub Proc_177_72_E84B70
  'Data Table: 523D30
  loc_E84B1C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E84B2E:   Me.DGTable.Visible = False
  loc_E84B36: End If
  loc_E84B52: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E84B64:   Me.FGPoint.Visible = False
  loc_E84B6C: End If
  loc_E84B6C: Exit Sub
  loc_E84B6D: CExtInstUnk
End Sub

Public Sub Proc_177_73_EA9B8C(arg_C) 'EA9B8C
  'Data Table: 523D30
  Dim var_8C As Recordset15
  loc_EA9B06: IStAdFunc
  loc_EA9B0D: Set var_8C = arg_C 
  loc_EA9B35: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EA9B45: var_8C.CursorType = 3
  loc_EA9B52: var_8C.LockType = 3
  loc_EA9B71: var_8C.Open var_A0, var_B0, -1
  loc_EA9B78: Set var_8C = Nothing 
  loc_EA9B7F: Set var_88 = arg_C 
  loc_EA9B83: Proc_177_73_EA9B8C = -1
End Sub

Public Sub Proc_177_74_114DA68
  'Data Table: 523D30
  Dim var_B4 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As String
  Dim var_D8 As String
  loc_114D6DE: Set global_96 = New 
  loc_114D6F0: Me.Recordset15.CursorLocation = 3
  loc_114D6FB: var_90 = global_216
  loc_114D706: If (var_90 = "Hall") Then
  loc_114D714:   If (global_204 = "Y") Then
  loc_114D738:     var_94 = "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') And Code In (Select RoomNo From KOT Where RestCode='" & global_60
  loc_114D749:     Me.Open CVar(var_94 & "' ANd RoomCat='HALL' and RoomType='HL' And Pending='Y') Order by T.Code"), CVar(MemVar_1F95044), 3
  loc_114D757:   Else
  loc_114D77A:     Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F95044), 3
  loc_114D77F:   End If
  loc_114D78B:   Set var_8C = Me.Label1
  loc_114D791:   Call 0.Method_Proc_177_74_114DA680 (2, var_C8, "Hall", 1)
  loc_114D799:   var_C8.Caption = -1
  loc_114D7B5:   Set var_8C = Me.DGTable
  loc_114D7C6:   Set var_C8 = DGTable.DispID_69
  loc_114D7D4:   var_C8.Item(1).Caption = "Hall"
  loc_114D7EB:   global_148 = "HALL"
  loc_114D7F5:   global_152 = "HL"
  loc_114D7FC: Else
  loc_114D804:   If Not (var_90 = "Fast Food") Then
  loc_114D80F:     If (var_90 = "Outlet") Then
  loc_114D812:     End If
  loc_114D81E:     Set var_8C = Me.Label1
  loc_114D824:     Call 0.Method_Proc_177_74_114DA680 (2, var_C8, "Table #")
  loc_114D82C:     var_C8.Caption = 1
  loc_114D848:     Set var_8C = Me.DGTable
  loc_114D859:     Set var_C8 = DGTable.DispID_69
  loc_114D867:     var_C8.Item(1).Caption = "Table #"
  loc_114D87B:     var_88 = " Order by Code"
  loc_114D889:     If (global_204 = "Y") Then
  loc_114D8B4:       var_D0 = "Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB') And RestCode='" & global_60 & "' And Code In (Select RoomNo From KOT Where RestCode='"
  loc_114D8C5:       var_D8 = var_D0 & global_60 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y') "
  loc_114D8D6:       Me.Open CVar(var_D8 & var_88), CVar(MemVar_1F95044), 3
  loc_114D8EC:     Else
  loc_114D91B:       var_A4 = CVar("Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_60 & "' " & var_88) 'String
  loc_114D925:       Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_114D934:     End If
  loc_114D93A:     global_148 = "REST"
  loc_114D944:     global_152 = "TB"
  loc_114D94B:   Else
  loc_114D953:     If (var_90 = "Room Service") Then
  loc_114D962:       Set var_8C = Me.Label1
  loc_114D968:       Call 0.Method_Proc_177_74_114DA680 (2, var_C8, "Room #", 1)
  loc_114D970:       var_C8.Caption = -1
  loc_114D98C:       Set var_8C = Me.DGTable
  loc_114D9AB:       DGTable.DispID_69.Item(1).Caption = "Room #"
  loc_114D9C7:       If (global_204 = "Y") Then
  loc_114D9EB:         var_94 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RestCode='" & global_60
  loc_114D9F2:         var_A4 = CVar(var_94 & "' and RoomType='RO' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG is Null or DELFLAG='') AND NCKOT<>'Y') Order by RC.roomno") 'String
  loc_114D9FC:         Me.Open var_A4, CVar(MemVar_1F95044), 3
  loc_114DA0A:       Else
  loc_114DA21:         var_B4 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid  From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO"
  loc_114DA2D:         Me.Open var_B4, CVar(MemVar_1F95044), 3
  loc_114DA32:       End If
  loc_114DA38:       global_152 = "RO"
  loc_114DA3C:     End If
  loc_114DA3C:   End If
  loc_114DA3C: End If
  loc_114DA45: CVarUnk
  loc_114DA4A: VerifyVarObj
  loc_114DA50: Set var_8C = Me.DGTable
  loc_114DA56: LateIdStAd
  loc_114DA64: Exit Sub
End Sub

Public Sub Proc_177_75_17DAD08(arg_C) '17DAD08
  'Data Table: 523D30
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_E8 As Variant
  Dim var_BC As String
  Dim unk_523D50 As Connection15
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_15C As Variant
  Dim var_1BC As Integer
  Dim var_180 As String
  Dim var_1A8 As Variant
  Dim var_1AC As Fields15
  Dim var_1C0 As Variant
  Dim var_250 As Variant
  Dim var_88 As Recordset15
  Dim var_280 As Variant
  Dim var_FC As Variant
  Dim var_294 As TextBox
  Dim var_A8 As Variant
  loc_17D8C44: Set var_90 = Me.TxtGt
  loc_17D8C4A: Call 0.Method_Proc_177_75_17DAD080 (1, var_94)
  loc_17D8C52: var_96 = var_94.TabIndex
  loc_17D8C5A: var_8A = var_96
  loc_17D8C68: Set var_90 = Me.TopCtrl1
  loc_17D8C6E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_17D8C87: If (CStr() = "Add") Then
  loc_17D8C96:   Set var_90 = Me.TxtPer
  loc_17D8C9C:   Call 0.Method_Proc_177_75_17DAD08C (var_96, var_8C)
  loc_17D8CA7:   For var_B0 =  To var_96: 1 = var_B0 'Integer
  loc_17D8CB9:     Set var_90 = Me.TxtPer
  loc_17D8CBF:     Call 0.Method_Proc_177_75_17DAD080 (var_8C, var_94)
  loc_17D8CC7:     var_94.Visible = False
  loc_17D8CD6:   Next var_B0 'Integer
  loc_17D8CE7:   Set var_90 = Me.TxtGt
  loc_17D8CED:   Call 0.Method_Proc_177_75_17DAD08C (var_96, var_8C)
  loc_17D8CF8:   For var_B4 =  To var_96: 1 = var_B4 'Integer
  loc_17D8D0A:     Set var_90 = Me.TxtGt
  loc_17D8D10:     Call 0.Method_Proc_177_75_17DAD080 (var_8C, var_94)
  loc_17D8D18:     var_94.Visible = False
  loc_17D8D27:   Next var_B4 'Integer
  loc_17D8D38:   Set var_90 = Me.LblCap
  loc_17D8D3E:   Call 0.Method_Proc_177_75_17DAD08C (var_96, var_8C)
  loc_17D8D49:   For var_B8 =  To var_96: 1 = var_B8 'Integer
  loc_17D8D5B:     Set var_90 = Me.LblCap
  loc_17D8D61:     Call 0.Method_Proc_177_75_17DAD080 (var_8C, var_94)
  loc_17D8D69:     var_94.Visible = False
  loc_17D8D78:   Next var_B8 'Integer
  loc_17D8D7D: End If
  loc_17D8D81: Set var_90 = Me.TopCtrl1
  loc_17D8D87: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17D8DA0: If (CStr() = "Add") Then
  loc_17D8DC7:   var_E8 = 0
  loc_17D8DE4:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_17D8E05:   unk_523D50.Execute var_BC & "' and Code='" & global_60 & "'", var_A8, -1
  loc_17D8E0D:   var_90 = var_90.Fields
  loc_17D8E15:   var_E8 = var_94.Item(var_94)
  loc_17D8E1D:   var_EC = var_EC.Value
  loc_17D8E38:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_17D8E4B:   var_1BC = 0
  loc_17D8E6B:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17D8E7B:   unk_523D50.Execute var_180 & "'", var_1A4, -1
  loc_17D8E83:   var_1A8 = var_1A8.Fields
  loc_17D8E8B:   var_1BC = var_1AC.Item(var_1AC)
  loc_17D8E93:   var_1C0 = var_1C0.Value
  loc_17D8EB3:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_17D8EC4:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F95078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_17D8ED2:   unk_523D50.Execute CStr(var_250), var_274, -1
  loc_17D8EDD:   Set var_88 = var_278
  loc_17D8F28: Else
  loc_17D8F4C:   var_E8 = 0
  loc_17D8F69:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F95078
  loc_17D8F8A:   unk_523D50.Execute var_BC & "' and Code='" & global_60 & "'", var_A8, -1
  loc_17D8F92:   var_90 = var_90.Fields
  loc_17D8F9A:   var_E8 = var_94.Item(var_94)
  loc_17D8FA2:   var_EC = var_EC.Value
  loc_17D8FBD:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_17D8FD0:   var_1BC = 0
  loc_17D8FF0:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17D9000:   unk_523D50.Execute var_180 & "'", var_1A4, -1
  loc_17D9008:   var_1A8 = var_1A8.Fields
  loc_17D9010:   var_1BC = var_1AC.Item(var_1AC)
  loc_17D9018:   var_1C0 = var_1C0.Value
  loc_17D9038:   Proc_6_7_F26918(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F95078 & "' and V_Type='"))
  loc_17D9057:   unk_523D50.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_17D9062:   Set var_88 = var_278
  loc_17D90AA: End If
  loc_17D90BE: If (var_88.RecordCount > 0) Then
  loc_17D90FA:   Set var_EC = Me.Txt
  loc_17D9100:   Call 0.Method_Proc_177_75_17DAD080 (CInt(9), var_1A8)
  loc_17D9108:   var_1A8.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17D911E:   ' Referenced from: 17DAC80
  loc_17D9124:   var_96 = var_88.EOF
  loc_17D912D:   If Not(var_96) Then
  loc_17D916C:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17D91A0:       Set var_EC = Me.LblDummy
  loc_17D91A6:       Call 0.Method_Proc_177_75_17DAD088 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D91C0:       If (var_278 > CVar(var_96)) Then
  loc_17D91F5:         Set var_EC = Me.LblDummy
  loc_17D91FB:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D920C:         Me.LblDummy.Load var_1A8
  loc_17D921F:       End If
  loc_17D926A:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17D927F:       Set var_1AC = Me.LblDummy
  loc_17D9285:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1A8.Value), var_1C0)
  loc_17D928D:       var_1C0.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17D92DC:       Set var_EC = Me.TxtPer
  loc_17D92E2:       Call 0.Method_Proc_177_75_17DAD088 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D92FC:       If (var_1A8 > CVar(var_96)) Then
  loc_17D9331:         Set var_EC = Me.TxtPer
  loc_17D9337:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D9348:         Me.TxtPer.Load var_1A8
  loc_17D935B:       End If
  loc_17D9393:       Set var_EC = Me.TxtPer
  loc_17D9399:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D93A1:       var_1A8.TabIndex = (var_8A + 1)
  loc_17D93BA:       var_8A = (var_8A + 1)
  loc_17D93FE:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17D943E:       Set var_1AC = Me.TxtPer
  loc_17D9444:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1A8.Value), var_1C0, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17D944C:       var_1C0.Visible = var_8A
  loc_17D94AB:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D950A:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D9513:         Set var_278 = Me.TxtPer
  loc_17D9519:         Call 0.Method_Proc_177_75_17DAD080 (CInt(True), var_280)
  loc_17D955B:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D9564:         Set var_EC = Me.TxtPer
  loc_17D956A:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_17D958E:         Set var_290 = Me.TxtPer
  loc_17D9594:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_294)
  loc_17D959C:         var_294.Top = ((var_1A8.Top + var_280.Height) + CDbl(&HF))
  loc_17D95C5:       End If
  loc_17D9601:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D9660:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D9669:         Set var_EC = Me.TxtPer
  loc_17D966F:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_17D968A:         Set var_278 = Me.TxtPer
  loc_17D9690:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17D9698:         var_280.Left = var_1A8.Left
  loc_17D96B7:       End If
  loc_17D96BB:       Set var_90 = Me.TopCtrl1
  loc_17D96C1:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A8)
  loc_17D96DA:       If (CStr() = "Add") Then
  loc_17D973A:         var_1C0 = var_88.Fields.Item("SNo")
  loc_17D9787:         Set var_278 = Me.TxtPer
  loc_17D978D:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1C0.Value), var_280)
  loc_17D9795:         var_280.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17D97BD:       End If
  loc_17D9808:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17D981D:       Set var_1AC = Me.TxtPer
  loc_17D9823:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1A8.Value), var_1C0)
  loc_17D982B:       var_1C0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17D9882:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D98B9:         Set var_EC = Me.TxtPer
  loc_17D98BF:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D98C7:         var_1A8.FontBold = True
  loc_17D98DD:       Else
  loc_17D9911:         Set var_EC = Me.TxtPer
  loc_17D9917:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D991F:         var_1A8.FontBold = False
  loc_17D9932:       End If
  loc_17D996B:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D99A2:         Set var_EC = Me.TxtPer
  loc_17D99A8:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D99B0:         var_1A8.Enabled = False
  loc_17D99C6:       Else
  loc_17D99FA:         Set var_EC = Me.TxtPer
  loc_17D9A00:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D9A08:         var_1A8.Enabled = True
  loc_17D9A1B:       End If
  loc_17D9A1F:       Set var_90 = Me.TopCtrl1
  loc_17D9A25:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17D9A3E:       If (CStr() = "Browse") Then
  loc_17D9A75:         Set var_EC = Me.TxtPer
  loc_17D9A7B:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D9A83:         var_1A8.Enabled = False
  loc_17D9A96:       End If
  loc_17D9AD2:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17D9B09:         Set var_EC = Me.TxtPer
  loc_17D9B0F:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D9B17:         var_1A8.Enabled = False
  loc_17D9B2A:       End If
  loc_17D9B5B:       Set var_EC = Me.LblCap
  loc_17D9B61:       Call 0.Method_Proc_177_75_17DAD088 (var_96)
  loc_17D9B7B:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17D9BB0:         Set var_EC = Me.LblCap
  loc_17D9BB6:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D9BC7:         Me.LblCap.Load var_1A8
  loc_17D9BDA:       End If
  loc_17D9C0E:       Set var_EC = Me.LblCap
  loc_17D9C14:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D9C1C:       var_1A8.Visible = True
  loc_17D9C8B:       Set var_EC = Me.TxtPer
  loc_17D9C91:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D9CAC:       Set var_278 = Me.LblCap
  loc_17D9CB2:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17D9CBA:       var_280.Top = var_1A8.Top
  loc_17D9D15:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D9D59:         var_1C0 = var_88.Fields.Item("SNo")
  loc_17D9D74:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D9D7D:         Set var_EC = Me.LblCap
  loc_17D9D83:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D9D9E:         Set var_278 = Me.LblCap
  loc_17D9DA4:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1C0.Value), var_280)
  loc_17D9DAC:         var_280.Left = var_1A8.Left
  loc_17D9DCB:       End If
  loc_17D9E2B:       Set var_1AC = Me.LblCap
  loc_17D9E31:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1C0)
  loc_17D9E39:       var_1C0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17D9EA2:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17D9EB7:       Set var_1AC = Me.LblCap
  loc_17D9EBD:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1A8.Value), var_1C0)
  loc_17D9EC5:       var_1C0.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17D9F1C:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D9F53:         Set var_EC = Me.LblCap
  loc_17D9F59:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D9F61:         var_1A8.FontBold = True
  loc_17D9F77:       Else
  loc_17D9FAB:         Set var_EC = Me.LblCap
  loc_17D9FB1:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17D9FB9:         var_1A8.FontBold = False
  loc_17D9FCC:       End If
  loc_17D9FFD:       Set var_EC = Me.LblAt
  loc_17DA003:       Call 0.Method_Proc_177_75_17DAD088 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17DA01D:       If (var_1A8 > CVar(var_96)) Then
  loc_17DA052:         Set var_EC = Me.LblAt
  loc_17DA058:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17DA069:         Me.LblAt.Load var_1A8
  loc_17DA07C:       End If
  loc_17DA0BD:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DA0FD:       Set var_1AC = Me.LblAt
  loc_17DA103:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1A8.Value), var_1C0)
  loc_17DA10B:       var_1C0.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17DA16F:       var_1C0 = var_88.Fields.Item("SNo")
  loc_17DA18A:       Set var_EC = Me.TxtPer
  loc_17DA190:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA1AB:       Set var_278 = Me.LblAt
  loc_17DA1B1:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1C0.Value), var_280)
  loc_17DA1B9:       var_280.Top = var_1A8.Top
  loc_17DA211:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17DA248:         Set var_EC = Me.LblAt
  loc_17DA24E:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA256:         var_1A8.FontBold = True
  loc_17DA26C:       Else
  loc_17DA2A0:         Set var_EC = Me.LblAt
  loc_17DA2A6:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA2AE:         var_1A8.FontBold = False
  loc_17DA2C1:       End If
  loc_17DA310:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DA325:       Set var_1AC = Me.LblAt
  loc_17DA32B:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1A8.Value), var_1C0)
  loc_17DA333:       var_1C0.Tag = CStr(Trim(CVar(var_88.Fields.Item("RoundOff"))))
  loc_17DA38D:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17DA3EC:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17DA3F5:         Set var_EC = Me.LblAt
  loc_17DA3FB:         Call 0.Method_Proc_177_75_17DAD080 (CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))), var_1A8)
  loc_17DA416:         Set var_278 = Me.LblAt
  loc_17DA41C:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17DA424:         var_280.Left = var_1A8.Left
  loc_17DA443:       End If
  loc_17DA474:       Set var_EC = Me.TxtGt
  loc_17DA47A:       Call 0.Method_Proc_177_75_17DAD088 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17DA494:       If (var_1A8 > CVar(var_96)) Then
  loc_17DA4C9:         Set var_EC = Me.TxtGt
  loc_17DA4CF:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17DA4E0:         Me.TxtGt.Load var_1A8
  loc_17DA4F3:       End If
  loc_17DA52B:       Set var_EC = Me.TxtGt
  loc_17DA531:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA539:       var_1A8.TabIndex = (var_8A + 1)
  loc_17DA552:       var_8A = (var_8A + 1)
  loc_17DA589:       Set var_EC = Me.TxtGt
  loc_17DA58F:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8, &HFF)
  loc_17DA597:       var_1A8.Visible = var_8A
  loc_17DA606:       Set var_EC = Me.TxtPer
  loc_17DA60C:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA627:       Set var_278 = Me.TxtGt
  loc_17DA62D:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17DA635:       var_280.Top = var_1A8.Top
  loc_17DA690:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17DA6EF:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17DA6F8:         Set var_EC = Me.TxtGt
  loc_17DA6FE:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA719:         Set var_278 = Me.TxtGt
  loc_17DA71F:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17DA727:         var_280.Left = var_1A8.Left
  loc_17DA746:       End If
  loc_17DA74A:       Set var_90 = Me.TopCtrl1
  loc_17DA750:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A8)
  loc_17DA769:       If (CStr() = "Add") Then
  loc_17DA7C9:         var_1C0 = var_88.Fields.Item("SNo")
  loc_17DA816:         Set var_278 = Me.TxtGt
  loc_17DA81C:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1C0.Value), var_280)
  loc_17DA824:         var_280.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17DA84C:       End If
  loc_17DA894:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DA8A9:       Set var_1AC = Me.TxtGt
  loc_17DA8AF:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_1A8.Value), var_1C0)
  loc_17DA8B7:       var_1C0.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17DA90C:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17DA943:         Set var_EC = Me.TxtGt
  loc_17DA949:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA951:         var_1A8.FontBold = True
  loc_17DA967:       Else
  loc_17DA99B:         Set var_EC = Me.TxtGt
  loc_17DA9A1:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA9A9:         var_1A8.FontBold = False
  loc_17DA9BC:       End If
  loc_17DA9F5:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17DAA2C:         Set var_EC = Me.TxtGt
  loc_17DAA32:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAA3A:         var_1A8.Enabled = False
  loc_17DAA50:       Else
  loc_17DAA84:         Set var_EC = Me.TxtGt
  loc_17DAA8A:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAA92:         var_1A8.Enabled = True
  loc_17DAAA5:       End If
  loc_17DAADA:       Set var_EC = Me.LblCap
  loc_17DAAE0:       Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAB11:       If (var_1A8.Tag = MemVar_1F95078 & "ROFF") Then
  loc_17DAB48:         Set var_EC = Me.TxtGt
  loc_17DAB4E:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAB56:         var_1A8.Enabled = False
  loc_17DAB69:       End If
  loc_17DAB6D:       Set var_90 = Me.TopCtrl1
  loc_17DAB73:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17DAB8C:       If (CStr() = "Browse") Then
  loc_17DABC3:         Set var_EC = Me.TxtGt
  loc_17DABC9:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DABD1:         var_1A8.Enabled = False
  loc_17DABE4:       End If
  loc_17DAC20:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17DAC42:         var_94 = var_88.Fields.Item("SNo")
  loc_17DAC57:         Set var_EC = Me.TxtGt
  loc_17DAC5D:         Call 0.Method_Proc_177_75_17DAD080 (CInt(var_94.Value), var_1A8)
  loc_17DAC65:         var_1A8.Enabled = False
  loc_17DAC78:       End If
  loc_17DAC78:     End If
  loc_17DAC7B:     var_88.MoveNext
  loc_17DAC80:     GoTo loc_17D911E
  loc_17DAC83:   End If
  loc_17DAC83: End If
  loc_17DAC94: Set var_90 = Me.Txt
  loc_17DAC9A: Call 0.Method_Proc_177_75_17DAD080 (CInt(6), var_94)
  loc_17DACA2: var_94.TabIndex = (var_8A + 1)
  loc_17DACBF: Set var_90 = Me.Txt
  loc_17DACC5: Call 0.Method_Proc_177_75_17DAD080 (CInt(7), var_94)
  loc_17DACCD: var_94.TabIndex = (var_8A + 2)
  loc_17DACEA: Set var_90 = Me.Txt
  loc_17DACF0: Call 0.Method_Proc_177_75_17DAD080 (CInt(8), var_94)
  loc_17DACF8: var_94.TabIndex = (var_8A + 3)
  loc_17DAD04: Exit Sub
End Sub

Public Sub Proc_177_76_1778B9C(arg_C) '1778B9C
  'Data Table: 523D30
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_110 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_13C As TextBox
  Dim var_160 As Variant
  Dim var_90 As Double
  Dim var_114 As String
  Dim unk_523D50 As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Variant
  Dim var_C8 As String
  Dim var_98 As Double
  Dim var_17C As Variant
  Dim Me As Variant
  Dim var_E8 As Variant
  Dim var_294 As Double
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_29C As Double
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_10C As Variant
  Dim var_2A4 As Double
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_108 As Variant
  Dim var_27C As Variant
  Dim var_138 As TextBox
  Dim var_21C As Variant
  Dim var_A4 As Double
  Dim var_2BC As Double
  Dim var_88 As Recordset15
  loc_1776D68: Set var_B8 = Me.TxtGt
  loc_1776D6E: Call 0.Method_Proc_177_76_1778B9C8 (var_BA, var_9A)
  loc_1776D79: For var_BE =  To var_BA: 1 = var_BE 'Integer
  loc_1776D8C:   Set var_B8 = Me.LblCap
  loc_1776D92:   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1776DCC:   Set var_10C = Me.TxtGt
  loc_1776DD2:   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_110)
  loc_1776E01:   Set var_138 = Me.TxtPer
  loc_1776E07:   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_13C)
  loc_1776E25:   var_160 = (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "ADD")) And (CDbl(Val(var_110.Text)) > CDbl(0)) And (CDbl(Val(var_13C.Text)) <= CDbl(0))
  loc_1776E4E:   If CBool(var_160) Then
  loc_1776E5E:     Set var_B8 = Me.TxtGt
  loc_1776E64:     Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1776E79:     var_90 = Val(var_C4.Text)
  loc_1776E86:   End If
  loc_1776E93:   Set var_B8 = Me.LblCap
  loc_1776E99:   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1776EA1:   var_C8 = var_C4.Tag
  loc_1776EAF:   var_E8 = Trim(CVar(var_C8))
  loc_1776ED4:   If (var_E8 = CVar(MemVar_1F95078 & "DED")) Then
  loc_1776EE5:     Set var_B8 = Me.Txt
  loc_1776EEB:     Call 0.Method_Proc_177_76_1778B9C0 (CInt(&HB), var_C4)
  loc_1776EF3:     var_BA = var_C4.Visible
  loc_1776F05:     If (var_BA = &HFF) Then
  loc_1776F26:       Set var_B8 = Me.Txt
  loc_1776F2C:       Call 0.Method_Proc_177_76_1778B9C0 (CInt(&HB), var_C4, var_C8, "SELECT ADVAMT FROM PackingOrder where Docid='")
  loc_1776F34:       var_D8 = var_C4.Tag
  loc_1776F3D:       var_114 = -1 & var_C8
  loc_1776F4D:       unk_523D50.Execute var_110.Text & "'", var_10C, var_90
  loc_1776F58:       Set var_B4 = var_10C
  loc_1776F84:       If (var_B4.RecordCount > 0) Then
  loc_1776FA6:         var_D8 = CVar(var_B4.Fields.Item("AdvAmt")) 'Address
  loc_1776FAD:         Proc_6_39_E7D3A0(var_E8)
  loc_1776FC7:         If CBool(var_E8 <> 0) Then
  loc_1776FE4:           var_C4 = var_B4.Fields.Item("AdvAmt")
  loc_1776FF5:           var_C8 = CStr(var_C4.Value)
  loc_1776FFD:           var_98 = Val(var_C8)
  loc_1777010:         Else
  loc_177701D:           Set var_B8 = Me.TxtGt
  loc_1777023:           Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_177702B:           var_98 = var_C4.Text
  loc_1777038:           var_98 = Val(var_C8)
  loc_1777045:         End If
  loc_1777045:       End If
  loc_1777048:     Else
  loc_1777055:       Set var_B8 = Me.TxtGt
  loc_177705B:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_1777063:       var_98 = var_C4.Text
  loc_1777070:       var_98 = Val(var_C8)
  loc_177707D:     End If
  loc_177707D:   End If
  loc_177708A:   Set var_B8 = Me.TxtGt
  loc_1777090:   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, vbNullString)
  loc_1777098:   var_C4.Text = var_98
  loc_17770B1:   Set var_B8 = Me.LblCap
  loc_17770B7:   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_17770F2:   If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_17770FA:     var_A6 = CByte(var_9A) 'Byte
  loc_17770FE:   End If
  loc_1777101: Next var_BE 'Integer
  loc_1777119: Me.FGCat.Rows = 1
  loc_1777125: Set var_B8 = Me.TopCtrl1
  loc_177712B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_177713F: Set var_C4 = Me.TopCtrl1
  loc_1777145: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_177716B: If ( Or (CStr() = "Edit")) Then
  loc_177716E:   Call Proc_177_84_131737C()
  loc_1777173: End If
  loc_177717F: Set var_B8 = Me.TxtGt
  loc_1777185: Call 0.Method_Proc_177_76_1778B9C8 (var_BA, var_9A)
  loc_1777190: For var_168 =  To var_BA: 2 = var_168 'Integer
  loc_17771A3:   Set var_B8 = Me.LblCap
  loc_17771A9:   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_17771E4:   If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_17771F4:     Set var_B8 = Me.TxtGt
  loc_17771FA:     Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1777202:     var_C4.Text = vbNullString
  loc_1777218:     If (var_A8 > var_A6) Then
  loc_1777240:       For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_16C 'Integer
  loc_1777253:         Set var_B8 = Me.LblCap
  loc_1777259:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1777294:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_177729B:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_17772A3:           var_17C = CVar(CLng(&H13)) 'Long
  loc_17772CE:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_17772DC:             If (global_152 = "RO") Then
  loc_177731E:               var_E8 = "Select * from guestfolio where foliono=" & Me.Fields.Item("Code").Value 
  loc_1777322:               var_17C = vbNullString
  loc_1777335:               unk_523D50.Execute CStr(var_E8 & var_17C), var_108, -1
  loc_1777340:               Set var_B4 = var_10C
  loc_177736E:               If (var_B4.RecordCount > 0) Then
  loc_1777397:                 Proc_6_39_E7D3A0(var_E8, CVar(var_B4.Fields.Item("RSDisc")), var_10C)
  loc_17773B1:                 If (var_E8 > 0) Then
  loc_17773EB:                   Proc_6_39_E7D3A0(var_E8, CVar(var_B4.Fields.Item("RSDisc")), CVar(CLng(&HE)), CVar(CLng(var_9C)))
  loc_1777402:                   LateIdCallSt
  loc_1777431:                   var_C4 = var_B4.Fields.Item("RSDisc")
  loc_1777440:                   Proc_6_39_E7D3A0(var_E8, CVar(var_C4), Me.FGrid, CVar(CStr(var_E8)))
  loc_1777448:                   var_C8 = CStr(var_E8)
  loc_1777456:                   Set var_10C = Me.TxtPer
  loc_177745C:                   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_110, var_C8)
  loc_1777464:                   var_110.Text = var_17C
  loc_177747F:                 Else
  loc_1777483:                   var_124 = CVar(CLng(var_9C)) 'Long
  loc_177749D:                   Set var_B8 = Me.TxtPer
  loc_17774A3:                   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8, CVar(CLng(&HE)))
  loc_17774AB:                   var_124 = var_C4.Text
  loc_17774BA:                   var_D8 = CVar(CStr(Val(var_C8))) 'String
  loc_17774C2:                   Set var_10C = Me.FGrid
  loc_17774C8:                   LateIdCallSt
  loc_17774DF:                 End If
  loc_17774DF:               End If
  loc_17774E2:             Else
  loc_1777500:               Set var_B8 = Me.TxtPer
  loc_1777506:               Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8, CVar(CLng(&HE)), CVar(CLng(var_9C)))
  loc_177750E:               var_10C = var_C4.Text
  loc_177751D:               var_D8 = CVar(CStr(Val(var_C8))) 'String
  loc_1777525:               Set var_10C = Me.FGrid
  loc_177752B:               LateIdCallSt
  loc_1777542:             End If
  loc_1777542:           End If
  loc_1777542:         End If
  loc_1777546:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_177754E:         var_17C = CVar(CLng(7)) 'Long
  loc_1777577:         var_19C = CVar(CLng(var_9C)) 'Long
  loc_177757F:         var_1BC = CVar(CLng(9)) 'Long
  loc_17775A8:         var_1DC = CVar(CLng(var_9C)) 'Long
  loc_17775B0:         var_1FC = CVar(CLng(&HE)) 'Long
  loc_17775D9:         var_23C = CVar(CLng(var_9C)) 'Long
  loc_17775E1:         var_25C = CVar(CLng(&HF)) 'Long
  loc_177760A:         var_108 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_177761A:         var_27C = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_1777622:         Set var_110 = Me.FGrid
  loc_1777628:         LateIdCallSt
  loc_1777659:         var_19C = CVar(CLng(var_9C)) 'Long
  loc_1777661:         var_1BC = CVar(CLng(7)) 'Long
  loc_177768A:         var_1DC = CVar(CLng(var_9C)) 'Long
  loc_177769B:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_17776A3:         var_17C = CVar(CLng(9)) 'Long
  loc_17776D3:         Set var_10C = Me.FGrid
  loc_17776D9:         LateIdCallSt
  loc_17776FE:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_1777706:         var_17C = CVar(CLng(&HA)) 'Long
  loc_1777720:         var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_1777737:         Set var_C4 = Me.LblDummy
  loc_177773D:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_10C, CStr(Val(var_C8)), var_17C, var_124, var_10C, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_1777745:         var_10C.Caption = var_17C
  loc_177776A:         Set var_B8 = Me.LblCap
  loc_1777770:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8, var_124, CVar(CLng(&HA)))
  loc_1777778:         var_1DC = var_C4.Tag
  loc_17777AB:         If (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_17777BB:           Set var_B8 = Me.TxtGt
  loc_17777C1:           Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_17777C9:           var_294 = var_C4.Text
  loc_17777DD:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_1777807:           var_29C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1777826:           var_E8 = CVar((Val(var_C8) + var_29C)) 'Double
  loc_1777843:           Set var_110 = Me.TxtGt
  loc_1777849:           Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_138, CStr(Format(Trim(CVar(var_C8)), "0.00")), 1, 1, var_29C)
  loc_1777851:           var_138.Text = CVar(CLng(&HF))
  loc_1777877:         End If
  loc_177787A:       Next var_16C 'Integer
  loc_1777882:     Else
  loc_17778A7:       For var_2A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_9C = var_2A8 'Integer
  loc_17778BA:         Set var_B8 = Me.LblCap
  loc_17778C0:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_17778FB:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1777902:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_177790A:           var_17C = CVar(CLng(&H13)) 'Long
  loc_1777924:           var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_1777935:           If (var_C8 = "Y") Then
  loc_177793C:             var_124 = CVar(CLng(var_9C)) 'Long
  loc_1777956:             Set var_B8 = Me.TxtPer
  loc_177795C:             Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8, CVar(CLng(&HE)))
  loc_1777964:             var_124 = var_C4.Text
  loc_1777973:             var_D8 = CVar(CStr(Val(var_C8))) 'String
  loc_177797B:             Set var_10C = Me.FGrid
  loc_1777981:             LateIdCallSt
  loc_1777998:           End If
  loc_1777998:         End If
  loc_17779D5:         Set var_C4 = Me.LblDummy
  loc_17779DB:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_10C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_17779E3:         var_10C.Caption = var_10C
  loc_17779FF:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_1777A07:         var_17C = CVar(CLng(&HA)) 'Long
  loc_1777A21:         var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_1777A30:         var_19C = CVar(CLng(var_9C)) 'Long
  loc_1777A38:         var_1BC = CVar(CLng(&HE)) 'Long
  loc_1777A41:         Set var_C4 = Me.FGrid
  loc_1777A5A:         var_29C = Val(CStr(var_C4.TextMatrix)))
  loc_1777A69:         var_21C = CVar(CLng(&HF)) 'Long
  loc_1777AAC:         LateIdCallSt
  loc_1777AE0:         Set var_B8 = Me.LblCap
  loc_1777AE6:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_C8) * var_29C) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_1777AEE:         var_21C = var_C4.Tag
  loc_1777B21:         If (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1777B31:           Set var_B8 = Me.TxtGt
  loc_1777B37:           Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8, CVar(CLng(var_9C)), var_29C)
  loc_1777B3F:           var_1BC = var_C4.Text
  loc_1777B4C:           var_294 = Val(var_C8)
  loc_1777B53:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_1777B7D:           var_29C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1777B9C:           var_E8 = CVar((var_294 + var_29C)) 'Double
  loc_1777BB9:           Set var_110 = Me.TxtGt
  loc_1777BBF:           Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_138, CStr(Format(Trim(CVar(var_C8)), "0.00")), 1, 1, var_29C)
  loc_1777BC7:           var_138.Text = CVar(CLng(&HF))
  loc_1777BED:         End If
  loc_1777BF0:       Next var_2A8 'Integer
  loc_1777BF5:     End If
  loc_1777BF8:   Else
  loc_1777C05:     Set var_B8 = Me.TxtPer
  loc_1777C0B:     Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1777C25:     If (var_C4.Visible = &HFF) Then
  loc_1777C2E:       Call Proc_177_77_11FC3BC(var_9A)
  loc_1777C36:       var_A4 = var_294
  loc_1777C46:       Set var_B8 = Me.TxtPer
  loc_1777C4C:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_1777C54:       var_A4 = var_C4.Text
  loc_1777CA1:       Set var_10C = Me.TxtGt
  loc_1777CA7:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_110, CStr(Format(CVar(((var_A4 * Val(var_C8)) / CDbl(&H64))), "0.00")), 1)
  loc_1777CAF:       var_110.Text = 1
  loc_1777CDC:       Set var_B8 = Me.LblCap
  loc_1777CE2:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_1777CEA:       var_294 = var_C4.Tag
  loc_1777D32:       If CBool((Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_1777D5D:         var_C8 = CStr(Format(var_90, "0.00"))
  loc_1777D6B:         Set var_B8 = Me.TxtGt
  loc_1777D71:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_1777D79:         var_C4.Text = 1
  loc_1777D8F:       End If
  loc_1777D9C:       Set var_B8 = Me.LblCap
  loc_1777DA2:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_1777DAA:       1 = var_C4.Tag
  loc_1777DF2:       If CBool((Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DED")) And (var_90 > CDbl(0))) Then
  loc_1777E2B:         Set var_B8 = Me.TxtGt
  loc_1777E31:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, CStr(Format(var_98, "0.00")))
  loc_1777E39:         var_C4.Text = 1
  loc_1777E4F:       End If
  loc_1777E54:       var_C8 = CStr(var_A4)
  loc_1777E61:       Set var_B8 = Me.LblDummy
  loc_1777E67:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_1777E6F:       var_C4.Caption = 1
  loc_1777E81:     Else
  loc_1777E8E:       Set var_B8 = Me.TxtPer
  loc_1777E94:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1777EA7:       var_124 = (var_C4.Visible = 0)
  loc_1777EB8:       Set var_10C = Me.LblCap
  loc_1777EBE:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_110, var_C8)
  loc_1777EC6:       var_124 = var_110.Tag
  loc_1777F07:       If CBool(var_294 And (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "ADD"))) Then
  loc_1777F32:         var_C8 = CStr(Format(var_90, "0.00"))
  loc_1777F40:         Set var_B8 = Me.TxtGt
  loc_1777F46:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_1777F4E:         var_C4.Text = 1
  loc_1777F67:       Else
  loc_1777F74:         Set var_B8 = Me.TxtPer
  loc_1777F7A:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1777F82:         var_BA = var_C4.Visible
  loc_1777F8D:         var_124 = (var_BA = 0)
  loc_1777F9E:         Set var_10C = Me.LblCap
  loc_1777FA4:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_110, var_C8)
  loc_1777FAC:         var_124 = var_110.Tag
  loc_1777FED:         If CBool(1 And (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "DED"))) Then
  loc_1778026:           Set var_B8 = Me.TxtGt
  loc_177802C:           Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, CStr(Format(var_98, "0.00")))
  loc_1778034:           var_C4.Text = 1
  loc_177804A:         End If
  loc_177804A:       End If
  loc_177804A:     End If
  loc_177804A:   End If
  loc_177804D: Next var_168 'Integer
  loc_1778077: For var_2AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_2AC 'Integer
  loc_1778081:   var_124 = CVar(CLng(var_9A)) 'Long
  loc_1778089:   var_17C = CVar(CLng(7)) 'Long
  loc_17780A3:   var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_17780B2:   var_19C = CVar(CLng(var_9A)) 'Long
  loc_17780BA:   var_1BC = CVar(CLng(9)) 'Long
  loc_17780C3:   Set var_C4 = Me.FGrid
  loc_17780E3:   var_1FC = CVar(CLng(var_9A)) 'Long
  loc_17780EB:   var_21C = CVar(CLng(&HA)) 'Long
  loc_177812A:   LateIdCallSt
  loc_177815D:   Set var_B8 = Me.TxtGt
  loc_1778163:   Call 0.Method_Proc_177_76_1778B9C0 (1, var_C4, var_C8, Me.FGrid, CVar(CStr(Format(CVar((Val(var_C8) * Val(CStr(var_C4.TextMatrix))))), "0.00"))), 1, 1)
  loc_177816B:   var_21C = var_C4.Text
  loc_1778178:   var_294 = Val(var_C8)
  loc_17781A9:   var_29C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17781C8:   var_E8 = CVar((var_294 + var_29C)) 'Double
  loc_17781E4:   Set var_110 = Me.TxtGt
  loc_17781EA:   Call 0.Method_Proc_177_76_1778B9C0 (1, var_138, CStr(Format(var_C4.TextMatrix), "0.00")), 1, 1, var_29C, CVar(CLng(&HA)))
  loc_17781F2:   var_138.Text = CVar(CLng(var_9A))
  loc_177821B: Next var_2AC 'Integer
  loc_1778233: Me.FGCat.Rows = 1
  loc_1778260: For var_2B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_2B0 'Integer
  loc_1778270:   If (var_A8 > var_A6) Then
  loc_1778277:     var_124 = CVar(CLng(var_9A)) 'Long
  loc_177827F:     var_17C = CVar(CLng(&H18)) 'Long
  loc_177829E:     var_19C = CVar(CLng(var_9A)) 'Long
  loc_17782A6:     var_1BC = CVar(CLng(9)) 'Long
  loc_17782CF:     var_1DC = CVar(CLng(var_9A)) 'Long
  loc_17782D7:     var_1FC = CVar(CLng(7)) 'Long
  loc_1778311:     Set var_110 = Me.FGrid
  loc_177832A:     var_2BC = Val(CStr(var_110.TextMatrix)))
  loc_177834D:     var_134 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_2BC)) 'Double
  loc_177836C:     Call Proc_177_80_184AB28(CStr(Me.FGrid.TextMatrix)), var_9A, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 1, 1, var_2BC, CVar(CLng(&HF)), CVar(CLng(var_9A)))
  loc_177839B:   Else
  loc_177839F:     var_124 = CVar(CLng(var_9A)) 'Long
  loc_17783A7:     var_17C = CVar(CLng(&H18)) 'Long
  loc_17783C6:     var_19C = CVar(CLng(var_9A)) 'Long
  loc_17783CE:     var_1BC = CVar(CLng(9)) 'Long
  loc_1778421:     var_2A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_177845F:     Call Proc_177_80_184AB28(CStr(Me.FGrid.TextMatrix)), var_9A, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_2A4)), "0.00")), 1, 1, var_2A4, CVar(CLng(7)), CVar(CLng(var_9A)))
  loc_1778485:   End If
  loc_1778488: Next var_2B0 'Integer
  loc_1778491: Set var_B8 = Me.TopCtrl1
  loc_1778497: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17784AB: Set var_C4 = Me.TopCtrl1
  loc_17784B1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_17784D7: If ( Or (CStr() = "Edit")) Then
  loc_17784E6:   Set var_B8 = Me.TxtGt
  loc_17784EC:   Call 0.Method_Proc_177_76_1778B9C8 (var_BA, var_9A)
  loc_17784F7:   For var_2C0 =  To var_BA: 2 = var_2C0 'Integer
  loc_177850A:     Set var_B8 = Me.TxtPer
  loc_1778510:     Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1778518:     var_BA = var_C4.Visible
  loc_1778534:     Set var_10C = Me.LblCap
  loc_177853A:     Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_110)
  loc_1778542:     var_C8 = var_110.Tag
  loc_1778583:     If CBool((var_BA = &HFF) And (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "SCH"))) Then
  loc_177858C:       Call Proc_177_77_11FC3BC(var_9A)
  loc_1778594:       var_A4 = var_294
  loc_17785A4:       Set var_B8 = Me.TxtPer
  loc_17785AA:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_17785B2:       var_A4 = var_C4.Text
  loc_17785BF:       var_294 = Val(var_C8)
  loc_17785FF:       Set var_10C = Me.TxtGt
  loc_1778605:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_110, CStr(Format(CVar(((var_A4 * var_294) / CDbl(&H64))), "0.00")), 1)
  loc_177860D:       var_110.Text = 1
  loc_177863F:       Set var_B8 = Me.LblDummy
  loc_1778645:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, CStr(var_A4))
  loc_177864D:       var_C4.Caption = var_294
  loc_177865C:     End If
  loc_177865F:   Next var_2C0 'Integer
  loc_1778664: End If
  loc_1778683: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1778699:   Me.FGCat.FixedRows = 1
  loc_17786A1: End If
  loc_17786CF: For var_2C4 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_9C = var_2C4 'Integer
  loc_17786E1:   Set var_B8 = Me.TxtGt
  loc_17786E7:   Call 0.Method_Proc_177_76_1778B9C8 (var_BA, var_9A, 1)
  loc_17786F2:   For var_2C8 = CDbl(0) To var_BA: 0 = var_2C8 'Integer
  loc_1778705:     Set var_B8 = Me.LblCap
  loc_177870B:     Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1778713:     var_C8 = var_C4.Tag
  loc_1778721:     var_E8 = Trim(CVar(var_C8))
  loc_177872D:     var_124 = CVar(CLng(var_9C)) 'Long
  loc_1778775:     If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_1778785:       Set var_B8 = Me.TxtGt
  loc_177878B:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_1778793:       var_124 = var_C4.Text
  loc_17787A0:       var_294 = Val(var_C8)
  loc_17787A7:       var_124 = CVar(CLng(var_9C)) 'Long
  loc_17787D1:       var_29C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17787F0:       var_E8 = CVar((var_294 + var_29C)) 'Double
  loc_177880D:       Set var_110 = Me.TxtGt
  loc_1778813:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_138, CStr(Format(var_E8, "0.00")), 1, 1, var_29C)
  loc_177881B:       var_138.Text = CVar(CLng(6))
  loc_1778841:     End If
  loc_1778844:   Next var_2C8 'Integer
  loc_177884C: Next var_2C4 'Integer
  loc_177885D: Set var_B8 = Me.TxtGt
  loc_1778863: Call 0.Method_Proc_177_76_1778B9C8 (var_BA, var_9A)
  loc_177886E: For var_2CC =  To var_BA: 2 = var_2CC 'Integer
  loc_1778881:   Set var_B8 = Me.LblCap
  loc_1778887:   Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4)
  loc_1778897:   var_D8 = CVar(var_C4.Tag) 'String
  loc_17788C2:   If (Trim(var_D8) = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_17788CB:     Call Proc_177_77_11FC3BC(var_9A)
  loc_17788D3:     var_A4 = var_294
  loc_17788EE:     Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, CStr(var_A4))
  loc_17788F6:     var_C4.Caption = var_A4
  loc_177891B:     unk_523D50.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_D8, -1
  loc_1778926:     Set var_88 = Me.LblDummy
  loc_1778943:     If (var_88.RecordCount > 0) Then
  loc_1778955:       var_B8 = var_88.Fields
  loc_177895D:       var_C4 = var_B8.Item("RoundOffType")
  loc_1778989:       Proc_6_85_12628F0(var_A4, CByte(2), CStr(Left(CVar(var_C4), 1)))
  loc_17789C6:       Set var_10C = Me.TxtGt
  loc_17789CC:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_110, CStr(Format(CVar(var_B8), "0.00")), 1)
  loc_17789D4:       var_110.Text = 1
  loc_17789F9:     Else
  loc_17789FC:       var_C8 = "S"
  loc_1778A0D:       Proc_6_85_12628F0(var_A4, CByte(2), var_C8)
  loc_1778A3C:       var_114 = CStr(Format(CVar(var_294), "0.00"))
  loc_1778A4A:       Set var_B8 = Me.TxtGt
  loc_1778A50:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_114, 1)
  loc_1778A58:       var_C4.Text = 1
  loc_1778A74:     End If
  loc_1778A77:   Else
  loc_1778A7E:     If (var_9A <> arg_C) Then
  loc_1778A8E:       Set var_B8 = Me.LblCap
  loc_1778A94:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, var_C8)
  loc_1778A9C:       var_294 = var_C4.Tag
  loc_1778ACE:       Set var_10C = Me.LblCap
  loc_1778AD4:       Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_110, var_114)
  loc_1778ADC:       (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "TOT")) = var_110.Tag
  loc_1778B21:       If CBool(var_294 Or (Trim(CVar(var_114)) = CVar(MemVar_1F95078 & "NET"))) Then
  loc_1778B2A:         Call Proc_177_77_11FC3BC(var_9A)
  loc_1778B64:         Set var_B8 = Me.TxtGt
  loc_1778B6A:         Call 0.Method_Proc_177_76_1778B9C0 (var_9A, var_C4, CStr(Format(CVar(var_294), "0.00")))
  loc_1778B72:         var_C4.Text = 1
  loc_1778B8A:       End If
  loc_1778B8A:     End If
  loc_1778B8A:   End If
  loc_1778B8D: Next var_2CC 'Integer
  loc_1778B97: Set var_88 = Nothing
  loc_1778B9A: Exit Sub
End Sub

Public Sub Proc_177_77_11FC3BC(arg_C) '11FC3BC
  'Data Table: 523D30
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_12C As Variant
  Dim var_13C As Label
  Dim var_8C As Double
  Dim var_D0 As Variant
  Dim var_164 As Variant
  loc_11FBF45: Set var_A8 = Me.TxtGt
  loc_11FBF4B: Call 0.Method_Proc_177_77_11FC3BC0 (arg_C, var_AC)
  loc_11FBF6A: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_11FBF88: Set var_A8 = Me.LblCap
  loc_11FBF8E: Call 0.Method_Proc_177_77_11FC3BC0 (arg_C, var_AC)
  loc_11FBFB8: If (var_AC.Tag = MemVar_1F95078 & "SCH") Then
  loc_11FBFE0:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_11FBFEA:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FBFF2:     var_108 = CVar(CLng(&H1B)) 'Long
  loc_11FC01D:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_11FC024:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FC02C:       var_108 = CVar(CLng(&HA)) 'Long
  loc_11FC058:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11FC064:     End If
  loc_11FC067:   Next var_D8 'Integer
  loc_11FC06F: Else
  loc_11FC094:   For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_124 'Integer
  loc_11FC09E:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FC0A6:     var_108 = CVar(CLng(&HA)) 'Long
  loc_11FC0D2:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11FC0E1:   Next var_124 'Integer
  loc_11FC0E6: End If
  loc_11FC0F0: If (Len(var_90) > 0) Then
  loc_11FC122:   Set var_A8 = Me.LblCap
  loc_11FC128:   Call 0.Method_Proc_177_77_11FC3BC0 (arg_C, var_AC)
  loc_11FC13F:   var_D4 = MemVar_1F95078 & "SCH"
  loc_11FC151:   Set var_128 = Me.LblCap
  loc_11FC157:   Call 0.Method_Proc_177_77_11FC3BC0 (arg_C, var_12C, var_130)
  loc_11FC15F:   (var_AC.Tag = var_D4) = var_12C.Tag
  loc_11FC181:   Set var_138 = Me.LblCap
  loc_11FC187:   Call 0.Method_Proc_177_77_11FC3BC0 (arg_C, var_13C)
  loc_11FC1D3:   If CBool( And (((Left(var_90, 1) = "1") Or (var_130 = MemVar_1F95078 & "ADD")) Or (var_13C.Tag = MemVar_1F95070 & "DED"))) Then
  loc_11FC1D9:     var_8C = var_A0
  loc_11FC1DF:   Else
  loc_11FC1F7:     var_B0 = CStr(Left(var_90, 1))
  loc_11FC211:     Set var_A8 = Me.TxtGt
  loc_11FC217:     Call 0.Method_Proc_177_77_11FC3BC0 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_11FC21F:     var_120 = var_AC.Text
  loc_11FC22C:     var_8C = Val(var_D4)
  loc_11FC240:   End If
  loc_11FC261:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FC26B:   ' Referenced from: 11FC3B0
  loc_11FC275:   If (Len(var_90) > 0) Then
  loc_11FC2B8:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FC302:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FC319:     Set var_A8 = Me.TxtGt
  loc_11FC31F:     Call 0.Method_Proc_177_77_11FC3BC0 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_11FC334:     var_120 = Val(var_B0)
  loc_11FC34B:     Set var_128 = Me.TxtGt
  loc_11FC351:     Call 0.Method_Proc_177_77_11FC3BC0 (var_AC.Text, var_12C, var_D4, CVar(var_8C))
  loc_11FC367:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_11FC37A:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_11FC389:     var_164 = (var_8C + IIf(var_90, CVar(var_12C.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_11FC38E:     var_8C = CSng(var_164)
  loc_11FC3B0:     GoTo loc_11FC26B
  loc_11FC3B3:   End If
  loc_11FC3B3: End If
  loc_11FC3B3: Proc_177_77_11FC3BC = var_8C
End Sub

Public Sub Proc_177_78_103A1DC(arg_C, arg_10, arg_14) '103A1DC
  'Data Table: 523D30
  Dim var_8A As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_F0 As Variant
  loc_1039FBD: var_88 = vbNullString
  loc_1039FD4: arg_C = CStr(Trim(arg_C))
  loc_1039FE0: var_8A = CInt(Len(arg_C))
  loc_1039FE6: var_C0 = arg_10
  loc_1039FF1: If (var_C0 = "A") Then
  loc_103A026:   var_E0 = (Chr(&H12) + Chr(&HE))
  loc_103A03A:   var_100 = (var_E0 + Chr(&H1B))
  loc_103A043:   var_110 = (var_100 + "G")
  loc_103A050:   var_130 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103A06A:   var_170 = (var_110 + Space(CLng((var_130 / 2))))
  loc_103A074:   var_190 = (var_170 + CVar(arg_C))
  loc_103A088:   var_1B0 = (var_190 + Chr(&H1B))
  loc_103A091:   var_1D0 = (var_1B0 + "H")
  loc_103A096:   var_88 = CStr(var_1D0)
  loc_103A0B7: Else
  loc_103A0BF:   If (var_C0 = "D") Then
  loc_103A0F4:     var_E0 = (Chr(&HE) + Chr(&HF))
  loc_103A101:     var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103A11B:     var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103A125:     var_150 = (var_130 + CVar(arg_C))
  loc_103A12A:     var_88 = CStr((var_130 / 2))
  loc_103A13F:   Else
  loc_103A147:     If (var_C0 = "E") Then
  loc_103A174:       var_E0 = (Chr(&H12) + Chr(&HF))
  loc_103A181:       var_F0 = (CVar(arg_14) - CVar(var_8A))
  loc_103A19B:       var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103A1A5:       var_150 = (var_130 + CVar(arg_C))
  loc_103A1B9:       var_170 = ((var_130 / 2) + Chr(&H12))
  loc_103A1BE:       var_88 = CStr(var_170)
  loc_103A1D4:     End If
  loc_103A1D4:   End If
  loc_103A1D4: End If
  loc_103A1D4: Proc_177_78_103A1DC = var_8A
End Sub

Public Sub Proc_177_79_1253190(arg_C, arg_10, arg_14) '1253190
  'Data Table: 523D30
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_523D50 As Connection15
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_288 As Double
  Dim var_E4 As Variant
  Dim var_18C As Variant
  Dim var_D4 As Variant
  Dim arg_10 As Integer
  loc_1252C95: var_90 = vbNullString
  loc_1252C9B: var_94 = vbNullString
  loc_1252CA1: var_98 = vbNullString
  loc_1252CA7: var_9C = vbNullString
  loc_1252CB2: If (MemVar_1F953C4 = "Y") Then
  loc_1252CBC:   var_E8 = vbNullString & "DATE "
  loc_1252CED:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_1252D00: End If
  loc_1252D08: If (MemVar_1F953C8 = "Y") Then
  loc_1252D1A:   var_D4 = "dd/MM/yy"
  loc_1252D6C:   var_16C = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_D4)))), 0))
  loc_1252D93:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_1252D9B:   var_1DC = (var_16C - Len(var_1BC))
  loc_1252DAC:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_1252DB5:   var_22C = (var_20C + " PAGE NO ")
  loc_1252DD7:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_1252DDC:   var_8C = CStr(var_26C)
  loc_1252E09: End If
  loc_1252E36: unk_523D50.Execute "Select R.HEADER1,R.HEADER2,R.COMPANYTITLE From DEPART R  Where R.CODE='" & global_60 & "'", var_D4, -1
  loc_1252E41: Set var_A0 = var_270
  loc_1252E58: If (MemVar_1F953CC = "K") Then
  loc_1252E97:   If (var_A0.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_1252EA4:     If (Len(MemVar_1F95130) <= &H1E) Then
  loc_1252EB4:       var_288 = Val(CStr(arg_14))
  loc_1252ED0:       Call Proc_177_78_103A1DC(MemVar_1F95130, "D", CInt(var_288))
  loc_1252ED9:       var_90 = var_280 & var_280
  loc_1252EE8:     Else
  loc_1252EFE:       var_E4 = (CVar(var_90) + Chr(&H12))
  loc_1252F12:       var_13C = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_1252F26:       var_16C = (0 + Chr(&HF))
  loc_1252F30:       var_18C = (var_16C + CVar(MemVar_1F95130))
  loc_1252F44:       var_1BC = (Str(arg_C) + Chr(&H12))
  loc_1252F49:       var_90 = CStr(var_1BC)
  loc_1252F61:     End If
  loc_1252F61:   End If
  loc_1252F75:   If (var_A0.RecordCount > 0) Then
  loc_1252F87:     var_270 = var_A0.Fields
  loc_1252FB1:     If (Proc_6_38_E69628(CVar(var_270.Item("Header1")), var_90, var_288, var_270) <> vbNullString) Then
  loc_1252FE8:       var_288 = Val(CStr(arg_14))
  loc_1253009:       Call Proc_177_78_103A1DC(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_288))
  loc_1253012:       var_94 = var_290 & var_290
  loc_125302A:     End If
  loc_1253063:     If (Proc_6_38_E69628(CVar(var_A0.Fields.Item("Header2")), var_94, var_288, 1) <> vbNullString) Then
  loc_12530BB:       Call Proc_177_78_103A1DC(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_12530C4:       var_98 = var_290 & var_290
  loc_12530DC:     End If
  loc_12530DC:   End If
  loc_12530DC: End If
  loc_12530E6: If (Len(var_8C) > 0) Then
  loc_12530EE:   Print 1, var_8C
  loc_12530FA:   arg_10 = (arg_10 + 1)
  loc_12530FD: End If
  loc_1253107: If (Len(var_90) > 0) Then
  loc_125310F:   Print 1, var_90
  loc_125311B:   arg_10 = (arg_10 + 1)
  loc_125311E: End If
  loc_1253128: If (Len(var_94) > 0) Then
  loc_1253130:   Print 1, var_94
  loc_125313C:   arg_10 = (arg_10 + 1)
  loc_125313F: End If
  loc_1253149: If (Len(var_98) > 0) Then
  loc_1253151:   Print 1, var_98
  loc_125315D:   arg_10 = (arg_10 + 1)
  loc_1253160: End If
  loc_125316A: If (Len(var_9C) > 0) Then
  loc_1253172:   Print 1, var_9C
  loc_125317E:   arg_10 = (arg_10 + 1)
  loc_1253181: End If
  loc_1253187: Proc_177_79_1253190 = arg_10
End Sub

Public Sub Proc_177_80_184AB28(arg_C, arg_10, arg_14) '184AB28
  'Data Table: 523D30
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_523D50 As Connection15
  Dim var_D8 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_134 As Variant
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
  Dim var_124 As Variant
  Dim var_C0 As Recordset15
  Dim var_1B8 As Variant
  Dim var_1FC As Variant
  Dim var_114 As Field20
  Dim var_D0 As Double
  Dim var_210 As Double
  Dim var_E0 As Recordset15
  Dim var_220 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_1C0 As MSHFlexGrid
  Dim var_204 As Double
  Dim var_9C As Double
  Dim var_1B4 As Variant
  loc_1848670: unk_523D50.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_184867B: Set var_D8 = var_10C
  loc_184869F: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_18486AF: unk_523D50.Execute var_E4 & "'", var_108, -1
  loc_18486BA: Set var_8C = var_10C
  loc_18486DE: If (var_D8.RecordCount > 0) Then
  loc_18486F6:   var_10C = var_D8.Fields
  loc_18486FE:   var_114 = var_10C.Item("RestCode")
  loc_184871D:   If (var_10C <> Proc_6_38_E69628(CVar(var_114), global_60)) Then
  loc_1848722:     var_DA = &HFF
  loc_1848728:   Else
  loc_184872A:     var_DA = 0
  loc_184872D:   End If
  loc_1848730: Else
  loc_1848732:   var_DA = 0
  loc_1848735: End If
  loc_1848738: var_94 = arg_14
  loc_184873D: var_86 = 1
  loc_184874B: If (global_216 = "Room Service") Then
  loc_184876B:   Set var_10C = Me.Txt
  loc_1848771:   Call 0.Method_Proc_177_80_184AB280 (CInt(&HA), var_114, "Select * from RoomOcc where chkoutdate is NULL and foliono=", var_1B4, -1, var_1B8)
  loc_1848780:   Proc_6_39_E7D3A0(var_124, CVar(var_114), var_86, var_94)
  loc_1848791:   var_154 = var_DA & var_124 & " and LogSite_Code='" 
  loc_18487B2:   unk_523D50.Execute CStr(var_154 & CVar(MemVar_1F95078) & "'"), var_DA, var_DA
  loc_18487BD:   Set var_C0 = var_1B8
  loc_18487DB: End If
  loc_18487DE: var_A8 = var_94
  loc_18487E4: var_B0 = var_94
  loc_18487EA: var_B8 = CDbl(0)
  loc_1848801: If (var_8C.RecordCount > 0) Then
  loc_1848804:   ' Referenced from: 184AAFC
  loc_1848813:   If Not(var_8C.EOF) Then
  loc_184881A:     Set var_1C0 = Me.FGCat
  loc_184881D:     var_F8 = vbNullString
  loc_1848842:     If (var_8C.RecordCount > 0) Then
  loc_184884B:       var_D2 = (var_D2 + 1)
  loc_1848851:       var_F8 = "Nature"
  loc_1848884:       var_1D0 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8))) 'Variant
  loc_184889D:       If (var_1D0 = "On Base Amt") Then
  loc_18488C8:         var_124 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_B8, var_B0)) 'String
  loc_18488EA:         If (Trim(var_124) = "Room Rate") Then
  loc_18488F8:           If (global_216 = "Room Service") Then
  loc_1848921:             Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Limit")))
  loc_184894F:             Proc_6_39_E7D3A0(var_154, CVar(var_C0.Fields.Item("RoomRate")), var_124)
  loc_1848957:             var_174 = (var_A8 <= var_154)
  loc_1848981:             Proc_6_39_E7D3A0(var_1B4, CVar(var_8C.Fields.Item("Rate")))
  loc_18489B1:             If CBool(var_174 And (var_1B4 > 0)) Then
  loc_18489F4:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1848A32:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1848A45:               Else
  loc_1848A78:                 var_210 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1848AA1:                 Proc_6_142_14A62A0(((var_210 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_1848AA6:                 var_D0 = var_210
  loc_1848ABA:               End If
  loc_1848AC1:               If (var_D0 > CDbl(0)) Then
  loc_1848ADD:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848AE5:                 var_164 = CVar(CLng(0)) 'Long
  loc_1848AEF:                 var_124 = CVar(CStr(var_86)) 'String
  loc_1848AF6:                 LateIdCallSt
  loc_1848B21:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848B29:                 var_164 = CVar(CLng(1)) 'Long
  loc_1848B33:                 var_124 = CVar(CStr(arg_10)) 'String
  loc_1848B3A:                 LateIdCallSt
  loc_1848B52:                 If (var_DA = 0) Then
  loc_1848B59:                   Set var_1B8 = Me.FGCat
  loc_1848B6E:                   var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1848B76:                   var_184 = CVar(CLng(2)) 'Long
  loc_1848BA6:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1848BAD:                   LateIdCallSt
  loc_1848BCA:                 Else
  loc_1848BE5:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F95078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_1848C23:                   var_134 = CVar(var_E8 & global_60 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1848C3A:                   unk_523D50.Execute CStr(var_134 & "')"), var_174, -1
  loc_1848C45:                   Set var_E0 = var_1B8
  loc_1848C7D:                   If (var_E0.RecordCount > 0) Then
  loc_1848C99:                     var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848CA1:                     var_184 = CVar(CLng(2)) 'Long
  loc_1848CD1:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1848CD8:                     LateIdCallSt
  loc_1848CF2:                   End If
  loc_1848CF2:                 End If
  loc_1848D0B:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848D13:                 var_184 = CVar(CLng(3)) 'Long
  loc_1848D43:                 var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1848D4A:                 LateIdCallSt
  loc_1848D7D:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848D85:                 var_164 = CVar(CLng(4)) 'Long
  loc_1848D8F:                 var_124 = CVar(CStr(var_A8)) 'String
  loc_1848D96:                 LateIdCallSt
  loc_1848DC1:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848DC9:                 var_184 = CVar(CLng(5)) 'Long
  loc_1848DF9:                 var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1848E00:                 LateIdCallSt
  loc_1848E5E:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848E66:                 var_248 = CVar(CLng(6)) 'Long
  loc_1848E70:                 var_174 = 0
  loc_1848EAA:                 var_268 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_174, 2))))) 'String
  loc_1848EB1:                 LateIdCallSt
  loc_1848EEE:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848EF6:                 var_184 = CVar(CLng(7)) 'Long
  loc_1848F26:                 var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1848F2D:                 LateIdCallSt
  loc_1848F4A:               Else
  loc_1848F50:                 var_86 = (var_86 - 1)
  loc_1848F66:                 var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848F7C:               End If
  loc_1848F95:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848F9D:               var_164 = CVar(CLng(6)) 'Long
  loc_1848FC2:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_1848FEB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1848FF3:               var_164 = CVar(CLng(6)) 'Long
  loc_184900E:               var_204 = Val(CStr(var_1C0.TextMatrix)))
  loc_1849018:               var_94 = (var_94 + var_204)
  loc_184902F:               var_B0 = (var_B0 + var_D0)
  loc_1849035:               var_B8 = var_D0
  loc_184903F:               var_B0 = (var_B0 + var_D0)
  loc_1849045:               var_B8 = var_D0
  loc_1849048:             End If
  loc_1849048:           End If
  loc_184904B:         Else
  loc_1849071:           var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_184908B:           If (var_124 = "No") Then
  loc_18490C9:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_18490DC:           Else
  loc_1849138:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_184913D:             var_D0 = var_B8
  loc_1849151:           End If
  loc_1849177:           Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0, var_94)
  loc_184918E:           var_164 = "Rate"
  loc_18491B1:           Proc_6_39_E7D3A0(var_174, CVar(var_8C.Fields.Item(var_164)), (var_124 <= CVar(var_94)), var_204)
  loc_18491DB:           If CBool(var_164 And (var_174 > 0)) Then
  loc_18491E5:             If (var_D0 > CDbl(0)) Then
  loc_1849201:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849209:               var_164 = CVar(CLng(0)) 'Long
  loc_1849213:               var_124 = CVar(CStr(var_86)) 'String
  loc_184921A:               LateIdCallSt
  loc_1849245:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184924D:               var_164 = CVar(CLng(1)) 'Long
  loc_1849257:               var_124 = CVar(CStr(arg_10)) 'String
  loc_184925E:               LateIdCallSt
  loc_1849276:               If (var_DA = 0) Then
  loc_184927D:                 Set var_1B8 = Me.FGCat
  loc_1849292:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_184929A:                 var_184 = CVar(CLng(2)) 'Long
  loc_18492CA:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18492D1:                 LateIdCallSt
  loc_18492EE:               Else
  loc_1849305:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_1849339:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1849350:                 unk_523D50.Execute CStr(var_134 & "')"), var_174, -1
  loc_184935B:                 Set var_E0 = var_1B8
  loc_184938F:                 If (var_E0.RecordCount > 0) Then
  loc_18493AB:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18493B3:                   var_184 = CVar(CLng(2)) 'Long
  loc_18493E3:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18493EA:                   LateIdCallSt
  loc_1849404:                 End If
  loc_1849404:               End If
  loc_184941D:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849425:               var_184 = CVar(CLng(3)) 'Long
  loc_1849455:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_184945C:               LateIdCallSt
  loc_184948F:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849497:               var_164 = CVar(CLng(4)) 'Long
  loc_18494A1:               var_124 = CVar(CStr(var_A8)) 'String
  loc_18494A8:               LateIdCallSt
  loc_18494D3:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18494DB:               var_184 = CVar(CLng(5)) 'Long
  loc_184950B:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1849512:               LateIdCallSt
  loc_1849570:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849582:               var_174 = 0
  loc_18495C3:               LateIdCallSt
  loc_1849600:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849635:               var_134 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_174, 2))))), CVar(CLng(6)), var_220)) 'String
  loc_184963C:               LateIdCallSt
  loc_1849654:             End If
  loc_184966D:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849675:             var_164 = CVar(CLng(6)) 'Long
  loc_184969A:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_18496C3:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18496CB:             var_164 = CVar(CLng(6)) 'Long
  loc_18496E6:             var_204 = Val(CStr(var_1C0.TextMatrix)))
  loc_18496F0:             var_94 = (var_94 + var_204)
  loc_1849707:             var_B0 = (var_B0 + var_D0)
  loc_184970D:             var_B8 = var_D0
  loc_1849710:           End If
  loc_1849710:         End If
  loc_1849713:       Else
  loc_184971E:         If (var_1D0 = "On Running Total") Then
  loc_1849747:           var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_1849761:           If (var_124 = "No") Then
  loc_184979F:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_18497B2:           Else
  loc_184980E:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1849813:             var_D0 = var_94
  loc_1849827:           End If
  loc_184984D:           Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item("Rate")), var_D0, var_204, var_164)
  loc_1849867:           If (var_124 > 0) Then
  loc_1849871:             If (var_D0 > CDbl(0)) Then
  loc_184988D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849895:               var_164 = CVar(CLng(0)) 'Long
  loc_184989F:               var_124 = CVar(CStr(var_86)) 'String
  loc_18498A6:               LateIdCallSt
  loc_18498D1:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18498D9:               var_164 = CVar(CLng(1)) 'Long
  loc_18498E3:               var_124 = CVar(CStr(arg_10)) 'String
  loc_18498EA:               LateIdCallSt
  loc_1849902:               If (var_DA = 0) Then
  loc_1849909:                 Set var_1B8 = Me.FGCat
  loc_184991E:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1849926:                 var_184 = CVar(CLng(2)) 'Long
  loc_1849956:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_184995D:                 LateIdCallSt
  loc_184997A:               Else
  loc_1849991:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_18499C5:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_18499DC:                 unk_523D50.Execute CStr(var_134 & "')"), var_174, -1
  loc_18499E7:                 Set var_E0 = var_1B8
  loc_1849A1B:                 If (var_E0.RecordCount > 0) Then
  loc_1849A37:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849A3F:                   var_184 = CVar(CLng(2)) 'Long
  loc_1849A6F:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1849A76:                   LateIdCallSt
  loc_1849A90:                 End If
  loc_1849A90:               End If
  loc_1849AA9:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849AB1:               var_184 = CVar(CLng(3)) 'Long
  loc_1849AE1:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1849AE8:               LateIdCallSt
  loc_1849B1B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849B23:               var_164 = CVar(CLng(4)) 'Long
  loc_1849B2D:               var_124 = CVar(CStr(var_B0)) 'String
  loc_1849B34:               LateIdCallSt
  loc_1849B5F:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849B67:               var_184 = CVar(CLng(5)) 'Long
  loc_1849B97:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1849B9E:               LateIdCallSt
  loc_1849BFC:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849C04:               var_248 = CVar(CLng(6)) 'Long
  loc_1849C0E:               var_174 = 0
  loc_1849C48:               var_268 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_174, 2))))) 'String
  loc_1849C4F:               LateIdCallSt
  loc_1849C8C:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849C94:               var_184 = CVar(CLng(7)) 'Long
  loc_1849CC4:               var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1849CCB:               LateIdCallSt
  loc_1849CE5:             End If
  loc_1849CFE:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849D06:             var_164 = CVar(CLng(6)) 'Long
  loc_1849D2B:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_1849D54:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849D5C:             var_164 = CVar(CLng(6)) 'Long
  loc_1849D81:             var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_1849D98:             var_B0 = (var_B0 + var_D0)
  loc_1849D9E:             var_B8 = var_D0
  loc_1849DA1:           End If
  loc_1849DA4:         Else
  loc_1849DAF:           If (var_1D0 = "On Prev. Tax Amt") Then
  loc_1849DF2:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1849E30:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_1849E43:             Else
  loc_1849E9F:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1849EA4:               var_D0 = var_94
  loc_1849EB8:             End If
  loc_1849EBF:             If (var_D0 > CDbl(0)) Then
  loc_1849EDB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849EE3:               var_164 = CVar(CLng(0)) 'Long
  loc_1849EED:               var_124 = CVar(CStr(var_86)) 'String
  loc_1849EF4:               LateIdCallSt
  loc_1849F1F:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849F27:               var_164 = CVar(CLng(1)) 'Long
  loc_1849F31:               var_124 = CVar(CStr(arg_10)) 'String
  loc_1849F38:               LateIdCallSt
  loc_1849F50:               If (var_DA = 0) Then
  loc_1849F57:                 Set var_1B8 = Me.FGCat
  loc_1849F6C:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1849F74:                 var_184 = CVar(CLng(2)) 'Long
  loc_1849FA4:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1849FAB:                 LateIdCallSt
  loc_1849FC8:               Else
  loc_1849FDF:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_184A013:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_184A02A:                 unk_523D50.Execute CStr(var_134 & "')"), var_174, -1
  loc_184A035:                 Set var_E0 = var_1B8
  loc_184A069:                 If (var_E0.RecordCount > 0) Then
  loc_184A085:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A08D:                   var_184 = CVar(CLng(2)) 'Long
  loc_184A0BD:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_184A0C4:                   LateIdCallSt
  loc_184A0DE:                 End If
  loc_184A0DE:               End If
  loc_184A0F7:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A0FF:               var_184 = CVar(CLng(3)) 'Long
  loc_184A12F:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_184A136:               LateIdCallSt
  loc_184A169:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A171:               var_164 = CVar(CLng(4)) 'Long
  loc_184A17B:               var_124 = CVar(CStr(var_B8)) 'String
  loc_184A182:               LateIdCallSt
  loc_184A1AD:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A1B5:               var_184 = CVar(CLng(5)) 'Long
  loc_184A1E5:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184A1EC:               LateIdCallSt
  loc_184A246:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A24E:               var_248 = CVar(CLng(6)) 'Long
  loc_184A253:               var_174 = 2
  loc_184A292:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_184A299:               LateIdCallSt
  loc_184A2D6:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A2DE:               var_184 = CVar(CLng(7)) 'Long
  loc_184A30E:               var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_184A315:               LateIdCallSt
  loc_184A32F:             End If
  loc_184A348:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A350:             var_164 = CVar(CLng(6)) 'Long
  loc_184A375:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_184A39E:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A3A6:             var_164 = CVar(CLng(6)) 'Long
  loc_184A3C1:             var_204 = Val(CStr(var_1C0.TextMatrix)))
  loc_184A3CB:             var_94 = (var_94 + var_204)
  loc_184A3E2:             var_B0 = (var_B0 + var_D0)
  loc_184A3E8:             var_B8 = var_D0
  loc_184A3EE:           Else
  loc_184A414:             var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_184A42E:             If (var_124 = "No") Then
  loc_184A46C:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_184A47F:             Else
  loc_184A4DB:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_184A4E0:               var_D0 = var_94
  loc_184A4F4:             End If
  loc_184A4F7:             var_F8 = "Limit"
  loc_184A51A:             Proc_6_39_E7D3A0(var_124, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_204, var_164)
  loc_184A554:             Proc_6_39_E7D3A0(var_174, CVar(var_8C.Fields.Item("Rate")), (var_124 <= CVar(var_94)), var_F8)
  loc_184A57E:             If CBool(var_9C And (var_174 > 0)) Then
  loc_184A588:               If (var_D0 > CDbl(0)) Then
  loc_184A5A4:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A5AC:                 var_164 = CVar(CLng(0)) 'Long
  loc_184A5B6:                 var_124 = CVar(CStr(var_86)) 'String
  loc_184A5BD:                 LateIdCallSt
  loc_184A5E8:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A5F0:                 var_164 = CVar(CLng(1)) 'Long
  loc_184A5FA:                 var_124 = CVar(CStr(arg_10)) 'String
  loc_184A601:                 LateIdCallSt
  loc_184A619:                 If (var_DA = 0) Then
  loc_184A620:                   Set var_1B8 = Me.FGCat
  loc_184A635:                   var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_184A63D:                   var_184 = CVar(CLng(2)) 'Long
  loc_184A66D:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_184A674:                   LateIdCallSt
  loc_184A691:                 Else
  loc_184A6A8:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_184A6DC:                   var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_184A6F3:                   unk_523D50.Execute CStr(var_134 & "')"), var_174, -1
  loc_184A6FE:                   Set var_E0 = var_1B8
  loc_184A732:                   If (var_E0.RecordCount > 0) Then
  loc_184A74E:                     var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A756:                     var_184 = CVar(CLng(2)) 'Long
  loc_184A786:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_184A78D:                     LateIdCallSt
  loc_184A7A7:                   End If
  loc_184A7A7:                 End If
  loc_184A7C0:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A7C8:                 var_184 = CVar(CLng(3)) 'Long
  loc_184A7F8:                 var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_184A7FF:                 LateIdCallSt
  loc_184A832:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A83A:                 var_164 = CVar(CLng(4)) 'Long
  loc_184A844:                 var_124 = CVar(CStr(var_A8)) 'String
  loc_184A84B:                 LateIdCallSt
  loc_184A876:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A87E:                 var_184 = CVar(CLng(5)) 'Long
  loc_184A8AE:                 var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184A8B5:                 LateIdCallSt
  loc_184A913:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A966:                 LateIdCallSt
  loc_184A9A3:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A9D8:                 var_134 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_220)) 'String
  loc_184A9DF:                 LateIdCallSt
  loc_184A9F7:               End If
  loc_184AA10:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184AA18:               var_164 = CVar(CLng(6)) 'Long
  loc_184AA3D:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_184AA66:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184AA6E:               var_164 = CVar(CLng(6)) 'Long
  loc_184AA93:               var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_184AAAA:               var_B0 = (var_B0 + var_D0)
  loc_184AAB0:               var_B8 = var_D0
  loc_184AAB3:             End If
  loc_184AAB3:           End If
  loc_184AAB3:         End If
  loc_184AAB3:       End If
  loc_184AAB3:     End If
  loc_184AAB9:     var_86 = (var_86 + 1)
  loc_184AABE:     Set var_1C0 = Nothing 
  loc_184AAC6:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_184AACE:     var_164 = CVar(CLng(&H11)) 'Long
  loc_184AAD8:     var_108 = CVar(CStr(var_9C)) 'String
  loc_184AAE0:     Set var_10C = Me.FGrid
  loc_184AAE6:     LateIdCallSt
  loc_184AAF7:     var_8C.MoveNext
  loc_184AAFC:     GoTo loc_1848804
  loc_184AAFF:   End If
  loc_184AB04:   Set var_8C = Nothing
  loc_184AB0C:   Set var_C4 = Nothing
  loc_184AB14:   Set var_C0 = Nothing
  loc_184AB1C:   Set var_D8 = Nothing
  loc_184AB24:   Set var_E0 = Nothing
  loc_184AB27: End If
  loc_184AB27: Exit Sub
End Sub

Public Sub Proc_177_81_F27ED0(arg_C, arg_10) 'F27ED0
  'Data Table: 523D30
  Dim unk_523D50 As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  Dim MemVar_5118F8 As Integer
  loc_F27E11: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F27E46: unk_523D50.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(global_228) & "' Order by Appdate Desc"), -1, var_15C
  loc_F27E51: Set var_90 = var_15C
  loc_F27E83: If (var_90.RecordCount > 0) Then
  loc_F27EB1:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F27EC1: Else
  loc_F27EC4:   var_8C = CDbl(0)
  loc_F27EC7: End If
  loc_F27EC7: Proc_177_81_F27ED0 = var_8C
  loc_F27ECE: MemVar_5118F8 = ( >= var_8C)
End Sub

Public Sub Proc_177_82_DFC174
  'Data Table: 523D30
  Dim arg_7FFF As Double
  loc_DFC170: Exit Sub
  loc_DFC171: arg_7FFF = 
End Sub

Public Sub Proc_177_83_DFBE9C
  'Data Table: 523D30
  loc_DFBE98: Exit Sub
End Sub

Public Sub Proc_177_84_131737C
  'Data Table: 523D30
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_9C As Double
  Dim var_118 As String
  Dim unk_523D50 As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_140 As Variant
  Dim var_12C As Variant
  Dim var_154 As Field20
  Dim var_1C8 As Variant
  Dim var_184 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_22C As Variant
  Dim var_94 As Double
  loc_1316C71: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_1316C7B:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1316C83:   var_100 = CVar(CLng(8)) 'Long
  loc_1316CA5:   var_9C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1316CB5:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1316CBD:   var_100 = CVar(CLng(&H18)) 'Long
  loc_1316CF0:   var_118 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_1316D00:   unk_523D50.Execute var_118 & "' ORDER BY SNO DESC", var_13C, -1
  loc_1316D0B:   Set var_8C = var_140
  loc_1316D39:   If (var_8C.RecordCount > 0) Then
  loc_1316D3F:     var_A4 = CDbl(0)
  loc_1316D42:     ' Referenced from: 1316EDE
  loc_1316D51:     If Not(var_8C.EOF) Then
  loc_1316DA3:       var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + Val(CStr(var_8C.Fields.Item("Rate").Value)))) * CDbl(&H64))
  loc_1316DBB:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1316DC3:       var_100 = CVar(CLng(7)) 'Long
  loc_1316E91:       var_28C = Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2)))
  loc_1316E9A:       var_AC = CSng(var_28C)
  loc_1316EC9:       var_A4 = (var_AC + var_A4)
  loc_1316ED3:       var_B4 = (var_B4 + var_AC)
  loc_1316ED9:       var_8C.MoveNext
  loc_1316EDE:       GoTo loc_1316D42
  loc_1316EE1:     End If
  loc_1316EE5:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1316EED:     var_100 = CVar(CLng(&H1C)) 'Long
  loc_1316F18:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_1316F1F:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_1316F27:       var_110 = CVar(CLng(9)) 'Long
  loc_1316F45:       var_13C = CVar(CStr(Round(var_9C, 2))) 'String
  loc_1316F4D:       Set var_BC = Me.FGrid
  loc_1316F53:       LateIdCallSt
  loc_1316F69:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1316F71:       var_100 = CVar(CLng(9)) 'Long
  loc_1316F90:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1316F98:       var_1A4 = CVar(CLng(9)) 'Long
  loc_1316FC5:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_1316FCD:       Set var_140 = Me.FGrid
  loc_1316FD3:       LateIdCallSt
  loc_1316FF3:       var_12C = CVar(CLng(var_86)) 'Long
  loc_1316FFB:       var_184 = CVar(CLng(7)) 'Long
  loc_1317024:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_131702C:       var_22C = CVar(CLng(&HA)) 'Long
  loc_1317035:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131703D:       var_100 = CVar(CLng(9)) 'Long
  loc_1317065:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_131706D:       Set var_154 = Me.FGrid
  loc_1317073:       LateIdCallSt
  loc_1317098:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_13170A0:       var_100 = CVar(CLng(&HA)) 'Long
  loc_13170CC:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13170DB:     Else
  loc_13170DF:       var_12C = CVar(CLng(var_86)) 'Long
  loc_13170E7:       var_184 = CVar(CLng(9)) 'Long
  loc_13170F0:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_13170F8:       var_100 = CVar(CLng(8)) 'Long
  loc_131711C:       var_13C = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_1317124:       Set var_140 = Me.FGrid
  loc_131712A:       LateIdCallSt
  loc_1317147:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131714F:       var_100 = CVar(CLng(9)) 'Long
  loc_131716E:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1317176:       var_1A4 = CVar(CLng(9)) 'Long
  loc_13171A3:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_13171AB:       Set var_140 = Me.FGrid
  loc_13171B1:       LateIdCallSt
  loc_13171D1:       var_12C = CVar(CLng(var_86)) 'Long
  loc_13171D9:       var_184 = CVar(CLng(7)) 'Long
  loc_1317202:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_131720A:       var_22C = CVar(CLng(&HA)) 'Long
  loc_1317213:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131721B:       var_100 = CVar(CLng(9)) 'Long
  loc_1317243:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_131724B:       Set var_154 = Me.FGrid
  loc_1317251:       LateIdCallSt
  loc_1317276:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131727E:       var_100 = CVar(CLng(&HA)) 'Long
  loc_131729D:       var_164 = CVar(CLng(var_86)) 'Long
  loc_13172A5:       var_1A4 = CVar(CLng(&HA)) 'Long
  loc_13172D2:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_13172DA:       Set var_140 = Me.FGrid
  loc_13172E0:       LateIdCallSt
  loc_1317300:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1317308:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1317334:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1317340:     End If
  loc_1317344:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_131734C:     var_100 = CVar(CLng(&H11)) 'Long
  loc_1317356:     var_CC = CVar(CStr(var_A4)) 'String
  loc_131735E:     Set var_BC = Me.FGrid
  loc_1317364:     LateIdCallSt
  loc_1317372:   End If
  loc_1317375: Next var_D0 'Integer
  loc_131737A: Exit Sub
End Sub

Public Sub Proc_177_85_108C790
  'Data Table: 523D30
  Dim Me As Recordset15
  Dim var_148 As Variant
  Dim var_218 As Variant
  Dim var_2E8 As Variant
  loc_108C587: If (Me.RecordCount > 0) Then
  loc_108C590:   Me.MoveFirst
  loc_108C60B:   var_148 = (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) PAPER RUNNING (THERMAL PRINT)") Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) INCH INCLUSIVE TAX (TVSRP3200)")
  loc_108C689:   var_218 = var_148 Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) PAPER RUNNING (TVSRP3200)") Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) PAPER RUNNING DELAY (TVSRP3200)")
  loc_108C707:   var_2E8 = var_218 Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) INCH NO TAX (TVSRP3200)") Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) PAPER RUNNING (WeP TX 40)")
  loc_108C77C:   If CBool(var_2E8 Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL WINDOWS PLAIN PAPER RUNNING")) Then
  loc_108C77F:     Call Proc_177_65_1393DD0()
  loc_108C787:   Else
  loc_108C787:     Call Proc_177_64_1380788()
  loc_108C78C:   End If
  loc_108C78C: End If
  loc_108C78C: Exit Sub
End Sub
