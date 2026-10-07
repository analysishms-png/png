VERSION 5.00
Begin VB.Form HHouseKeeping
  Caption = "House Keeping Screen"
  BackColor = &HFFC0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "HHouseKeeping.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11460
  ClientHeight = 7905
  BeginProperty Font
    Name = "Times New Roman"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin BtnEnh lblOccRoom
    Left = 9390
    Top = 8415
    Width = 2430
    Height = 480
    TabIndex = 27
  End
  Begin BtnEnh BtnEnh2
    Left = 15
    Top = 8415
    Width = 9375
    Height = 480
    TabIndex = 26
  End
  Begin TextBox Text1
    Left = 15075
    Top = 8445
    Width = 1590
    Height = 315
    Visible = 0   'False
    TabIndex = 3
  End
  Begin TextBox Text3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 810
    Top = 1290
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    Tag = "2,0"
    Alignment = 2 'Center
    MaxLength = 1
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
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 555
    Width = 15255
    Height = 7170
    TabIndex = 2
  End
  Begin BtnEnh BtnEnh1
    Left = 11820
    Top = 8415
    Width = 1080
    Height = 495
    TabIndex = 24
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
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
  Begin Label Label2
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 0
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 23
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 7
    BackColor = &HFF&
    ForeColor = &H80000008&
    Left = 3075
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 22
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 6
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 1575
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 21
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Vacant Dirty"
    Index = 10
    ForeColor = &H0&
    Left = 1935
    Top = 3315
    Width = 1065
    Height = 225
    TabIndex = 20
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
    Caption = "Out Of Order "
    Index = 9
    ForeColor = &H0&
    Left = 3435
    Top = 3315
    Width = 1140
    Height = 225
    TabIndex = 19
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
    Caption = "Vacant Clean"
    Index = 8
    ForeColor = &H0&
    Left = 360
    Top = 3315
    Width = 1155
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
  Begin Label Label2
    Index = 5
    BackColor = &HFF00&
    ForeColor = &H80000008&
    Left = 4575
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 17
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest In House"
    Index = 7
    ForeColor = &H0&
    Left = 4935
    Top = 3315
    Width = 1290
    Height = 225
    TabIndex = 16
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
    Index = 6
    ForeColor = &H0&
    Left = 6705
    Top = 3330
    Width = 1410
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
  Begin Label Label2
    Index = 4
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 6270
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 14
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label3
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 0
    Top = 1605
    Width = 11340
    Height = 360
    TabIndex = 13
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
  Begin Label Label2
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 75
    Top = 1650
    Width = 285
    Height = 270
    TabIndex = 12
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 1
    BackColor = &HFF&
    ForeColor = &H80000008&
    Left = 3150
    Top = 1650
    Width = 285
    Height = 270
    TabIndex = 11
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 2
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 1650
    Top = 1650
    Width = 285
    Height = 270
    TabIndex = 10
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Vacant Dirty"
    Index = 5
    ForeColor = &H0&
    Left = 2010
    Top = 1665
    Width = 1065
    Height = 225
    TabIndex = 9
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
    Caption = "Out Of Order "
    Index = 2
    ForeColor = &H0&
    Left = 3510
    Top = 1665
    Width = 1140
    Height = 225
    TabIndex = 8
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
    Caption = "Vacant Clean"
    Index = 0
    ForeColor = &H0&
    Left = 435
    Top = 1665
    Width = 1155
    Height = 225
    TabIndex = 7
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
    Left = 4650
    Top = 1650
    Width = 285
    Height = 270
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest In House"
    Index = 3
    ForeColor = &H0&
    Left = 5010
    Top = 1665
    Width = 1290
    Height = 225
    TabIndex = 5
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
    Left = 6765
    Top = 1665
    Width = 1410
    Height = 225
    TabIndex = 4
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
  Begin Label LBLRoomName
    ForeColor = &HFF0000&
    Left = 120
    Top = 7965
    Width = 11685
    Height = 360
    TabIndex = 1
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

Attribute VB_Name = "HHouseKeeping"

Private global_60 As Long
Private global_64 As Integer

Private Sub Form_Load() 'EB5244
  'Data Table: 43D138
  Dim var_A8 As Variant
  loc_EB51B8: On Error Goto loc_EB51FE
  loc_EB51C2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_EB51DA: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_EB51F0: Me.LBLRoomName.BackColor = CLng(MemVar_1F951B4)
  loc_EB51F8: Call Proc_33_14_15B75C8()
  loc_EB51FD: Exit Sub
  loc_EB51FE: ' Referenced from: EB51B8
  loc_EB5206: Set var_A8 = Err()
  loc_EB520C: Call 0.Method_arg_2C (var_AC)
  loc_EB522D: MsgBox(CVar(var_AC), &H10, "Information", var_DC, var_FC)
  loc_EB5240: Exit Sub
  loc_EB5241: Exit Sub
End Sub

Private Sub Form_Resize() 'E76888
  'Data Table: 43D138
  loc_E76832: Call 0.Method_arg_50 (var_88)
  loc_E76844: Me.LblFormCaption.Caption = var_88
  loc_E7685D: Me.LblFormCaption.Left = CDbl(0)
  loc_E7686B: Call 0.Method_arg_100 (var_90)
  loc_E7687D: Me.LblFormCaption.Width = var_90
  loc_E76885: Exit Sub
End Sub

Private Sub Form_Activate() 'DFF40C
  'Data Table: 43D138
  loc_DFF404: Call Proc_33_14_15B75C8()
  loc_DFF409: Exit Sub
  loc_DFF40A: CExtInstUnk
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E579DC
  'Data Table: 43D138
  loc_E579A6: If (CLng(KeyCode) = &H74) Then
  loc_E579A9:   Call Proc_33_14_15B75C8()
  loc_E579AE: End If
  loc_E579C3: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &H79)) Then
  loc_E579D3:   Me.Global.Unload Me
  loc_E579DB: End If
  loc_E579DB: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '10C2004
  'Data Table: 43D138
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_10C1D3F: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_10C1D42:   Exit Sub
  loc_10C1D43: End If
  loc_10C1D5E: If (Me.Text3.Visible = &HFF) Then
  loc_10C1D6D:   Me.Text3.Visible = False
  loc_10C1D75: End If
  loc_10C1D7F: var_98 = Me.FGrid1.Rows
  loc_10C1D8E: var_AC = 1
  loc_10C1DCF: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_10C1DD2:   Exit Sub
  loc_10C1DD3: End If
  loc_10C1DFE: If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_10C1E17:   global_60 = CLng(Me.FGrid1.Row)
  loc_10C1E37:   global_64 = CInt(CLng(Me.FGrid1.Col))
  loc_10C1E78:   Me.Text3.Left = (CDbl(Me.FGrid1.Left) + CDbl(CLng(Me.FGrid1.CellLeft)))
  loc_10C1EC5:   Me.Text3.Top = (CDbl(Me.FGrid1.Top) + CDbl(CLng(Me.FGrid1.CellTop)))
  loc_10C1EED:   var_AC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10C1F14:   Me.Text3.Width = CDbl(CLng(Me.FGrid1.ColWidth)))
  loc_10C1F48:   Me.Text3.Height = CDbl(CLng(Me.FGrid1.CellHeight))
  loc_10C1F63:   Me.Text3.Visible = True
  loc_10C1F7E:   var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10C1F96:   var_CC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10C1FBD:   Me.Text3.Text = CStr(Me.FGrid1.TextMatrix))
  loc_10C1FE3:   Me.Text3.SetFocus
  loc_10C1FFB:   Me.Text3.ZOrder 0
  loc_10C2003: End If
  loc_10C2003: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '132BD94
  'Data Table: 43D138
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_108 As String
  Dim var_140 As Variant
  loc_132B628: var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_132B645: var_88 = CInt(CLng(Me.FGrid1.Row))
  loc_132B679: If ((((CLng(KeyCode) = &H43) Or (CLng(KeyCode) = &H44)) Or (CLng(KeyCode) = &H4F)) Or (CLng(KeyCode) = &H52)) Then
  loc_132B68B:   Me.FGrid1.Redraw = False
  loc_132B6BE:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_132B6D4:     var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132B6EC:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_132B706:     var_108 = CStr(Me.FGrid1.TextMatrix))
  loc_132B721:     var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132B7A8:     If CBool((CVar(CLng(Me.FGrid1.Col)) Or (CStr(Me.FGrid1.TextMatrix)) = "D")) And (Chr(CLng(KeyCode)) = "R")) Then
  loc_132B7AB:       Exit Sub
  loc_132B7AC:     End If
  loc_132B7AC:     Call Text3_GotFocus()
  loc_132B7B4:     Call Text3_KeyPress(KeyCode)
  loc_132B7C1:     Call Text3_KeyDown(KeyCode, 0)
  loc_132B814:     LateIdCallSt
  loc_132B858:     Me.Text3.Text = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_132B86F:     Call Text3_Validate(0)
  loc_132B880:     Me.Text3.Visible = False
  loc_132B888:     Call Proc_33_14_15B75C8(Me.FGrid1, CVar(CStr(Chr(CLng(KeyCode)))), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_140)
  loc_132B890:   Else
  loc_132B8BB:     If (((CLng(Me.FGrid1.ColSel) - 2) + 1) = 0) Then
  loc_132B8EB:       var_AC = CVar((CLng(Me.FGrid1.Col) + (CLng(Me.FGrid1.Col) Mod 6))) 'Long
  loc_132B8FA:       Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Row))
  loc_132B922:       var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132B93A:       var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_132B954:       var_108 = CStr(Me.FGrid1.TextMatrix))
  loc_132B96F:       var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132B9F6:       If CBool((CVar(CLng(Me.FGrid1.Col)) Or (CStr(Me.FGrid1.TextMatrix)) = "D")) And (Chr(CLng(KeyCode)) = "R")) Then
  loc_132B9F9:         Exit Sub
  loc_132B9FA:       End If
  loc_132B9FA:       Call Text3_GotFocus()
  loc_132BA02:       Call Text3_KeyPress(KeyCode)
  loc_132BA0F:       Call Text3_KeyDown(KeyCode, 0)
  loc_132BA2E:       var_108 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_132BA3C:       Me.Text3.Text = var_108
  loc_132BA9C:       LateIdCallSt
  loc_132BABD:       Call Text3_Validate(0)
  loc_132BACE:       Me.Text3.Visible = False
  loc_132BAD6:       Call Proc_33_14_15B75C8(Me.FGrid1, CVar(CStr(Chr(CLng(KeyCode)))), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_140, (var_108 = "C"), CVar(CLng(Me.FGrid1.Col)))
  loc_132BADE:     Else
  loc_132BB09:       If (((CLng(Me.FGrid1.ColSel) - 2) + 2) = 0) Then
  loc_132BB3F:         var_AC = CVar((CLng(Me.FGrid1.Col) + ((CLng(Me.FGrid1.Col) + 2) Mod 6))) 'Long
  loc_132BB4E:         Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Row))
  loc_132BB76:         var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132BB8E:         var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_132BBA8:         var_108 = CStr(Me.FGrid1.TextMatrix))
  loc_132BBC3:         var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132BC4A:         If CBool((CVar(CLng(Me.FGrid1.Col)) Or (CStr(Me.FGrid1.TextMatrix)) = "D")) And (Chr(CLng(KeyCode)) = "R")) Then
  loc_132BC4D:           Exit Sub
  loc_132BC4E:         End If
  loc_132BC4E:         Call Text3_GotFocus()
  loc_132BC56:         Call Text3_KeyPress(KeyCode)
  loc_132BC63:         Call Text3_KeyDown(KeyCode, 0)
  loc_132BC82:         var_108 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_132BC90:         Me.Text3.Text = var_108
  loc_132BCF0:         LateIdCallSt
  loc_132BD11:         Call Text3_Validate(0)
  loc_132BD22:         Me.Text3.Visible = False
  loc_132BD2A:         Call Proc_33_14_15B75C8(Me.FGrid1, CVar(CStr(Chr(CLng(KeyCode)))), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_140, (var_108 = "C"), CVar(CLng(Me.FGrid1.Col)))
  loc_132BD2F:       End If
  loc_132BD2F:     End If
  loc_132BD2F:   End If
  loc_132BD33:   Set var_8C = Me.FGrid1
  loc_132BD57:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_132BD72:   Me.FGrid1.Row = CVar(CLng(var_88))
  loc_132BD88:   Me.FGrid1.Redraw = True
  loc_132BD90: End If
  loc_132BD90: Exit Sub
  loc_132BD91: var_E4 = FGrid1.DispID_8001
End Sub

Private Sub Fgrid1_UnknownEvent_B '103694C
  'Data Table: 43D138
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_124 As Variant
  loc_1036718: var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1036735: var_88 = CInt(CLng(Me.FGrid1.Row))
  loc_1036778: var_86 = CInt(((CLng(Me.FGrid1.Col) + 3) - ((CLng(Me.FGrid1.ColSel) + 1) Mod 6)))
  loc_10367A7: If (CLng(var_86) >= CLng(Me.FGrid1.Cols)) Then
  loc_10367AA:   Exit Sub
  loc_10367AB: End If
  loc_10367BE: Me.FGrid1.Col = CVar(CLng(var_86))
  loc_10367CA: var_C0 = CVar(CLng(var_88)) 'Long
  loc_10367D3: var_E0 = CVar(CLng(var_86)) 'Long
  loc_10367ED: var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_10367F9: var_104 = CVar(CLng(var_88)) 'Long
  loc_1036805: var_124 = CVar(CLng((var_86 - 1))) 'Long
  loc_103683D: If (var_124 And (CStr(Me.FGrid1.TextMatrix)) <> "Out Of Order")) Then
  loc_1036844:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_103684D:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1036852:   var_104 = "C"
  loc_103685C:   Set var_8C = Me.FGrid1
  loc_1036862:   LateIdCallSt
  loc_103686D:   Call Fgrid1_UnknownEvent_9()
  loc_1036877:   Call Text3_Validate(0)
  loc_103687F: Else
  loc_1036883:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_103688C:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_10368A6:   var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_10368B2:   var_104 = CVar(CLng(var_88)) 'Long
  loc_10368BE:   var_124 = CVar(CLng((var_86 - 1))) 'Long
  loc_10368F6:   If (var_124 And (CStr(Me.FGrid1.TextMatrix)) <> "Out Of Order")) Then
  loc_10368FD:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1036906:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_103690B:     var_104 = "D"
  loc_1036915:     Set var_8C = Me.FGrid1
  loc_103691B:     LateIdCallSt
  loc_1036926:     Call Fgrid1_UnknownEvent_9()
  loc_1036930:     Call Text3_Validate(0)
  loc_1036935:   End If
  loc_1036935: End If
  loc_1036939: Set var_8C = Me.FGrid1
  loc_103694A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '13990F0
  'Data Table: 43D138
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_174 As Variant
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_100 As Variant
  Dim var_134 As Variant
  Dim var_18C As String
  Dim var_190 As String
  Dim var_F0 As Variant
  Dim unk_43D14F As Connection15
  Dim var_88 As Recordset15
  Dim var_164 As Variant
  Dim var_1E8 As Variant
  Dim var_2C8 As Variant
  loc_1398893: var_174 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_13988AA: var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398916: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_139892C:   var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398944:   var_100 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_139895E:   var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_1398989:   var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13989A7:   var_100 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_13989CC:   var_8C = var_100 & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_13989FB:   var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398A19:   var_100 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1398A33:   var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_1398A4B: Else
  loc_1398A70:   var_174 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_1398A87:   var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398AF3:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1398B09:     var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398B27:     var_100 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1398B41:     var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_1398B6C:     var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398BA9:     var_8C = CVar(CLng(Me.FGrid1.Col)) & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_1398BD8:     var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398BF6:     var_100 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1398C10:     var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_1398C28:   Else
  loc_1398C4D:     var_174 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_1398C64:     var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398C96:     var_134 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1398CD0:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(var_134) <> vbNullString)) Then
  loc_1398CE6:       var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398D04:       var_100 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1398D1E:       var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_1398D49:       var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1398D67:       var_100 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1398D8C:       var_8C = CVar(CLng(Me.FGrid1.Col)) & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_1398DAC:       Set var_98 = Me.FGrid1
  loc_1398DB2:       var_A8 = var_98.Row
  loc_1398DBB:       var_E0 = CVar(CLng(var_A8)) 'Long
  loc_1398DD3:       var_100 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1398DED:       var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_1398E02:     End If
  loc_1398E02:   End If
  loc_1398E02: End If
  loc_1398E1D: var_18C = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type In ('O','M') And RoomCode='"
  loc_1398E31: var_E0 = MemVar_1F950EC
  loc_1398E39: Proc_6_7_F26918(var_A8, var_E0, CVar(var_18C & var_90 & "' And "), var_134, -1, var_98, var_100, var_E0)
  loc_1398E58: unk_43D14F.Execute CStr(var_E0 & var_A8 & " between fromdate and ToDate"), "(", var_100
  loc_1398E63: Set var_88 = var_98
  loc_1398E95: If (var_88.RecordCount > 0) Then
  loc_1398EA7:   var_C0 = var_88.Fields
  loc_1398ED3:   var_E0 = CVar(var_8C) 'String
  loc_1398EDE:   var_A8 = Space(3)
  loc_1398F0A:   var_AC = var_88.Fields.Item("U_Name")
  loc_1398F27:   var_164 = var_174 & CVar(Proc_6_38_E69628(CVar(var_AC), var_E0 & var_A8 & "Blocked By : ", var_E0, var_E0)) & " From : " 
  loc_1398F5B:   var_1E8 = 1 & Format(CVar(var_C0.Item("FromDate")), "dd/MMM/yyyy") & " To " 
  loc_1398FD1:   var_2C8 = 1 & Format(CVar(var_88.Fields.Item("ToDate")), "dd/MMM/yyyy") & Space(3) & "Reason: " & var_88.Fields.Item("Reasons").Value 
  loc_1398FD6:   var_8C = CStr(var_2C8)
  loc_1399013: End If
  loc_1399019: var_F0 = 0
  loc_1399044: var_190 = "Select IsNull(Max(Name),'') from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and code='" & var_90
  loc_1399054: unk_43D14F.Execute var_190 & "'", var_A8, -1
  loc_139905C: var_98 = var_98.Fields
  loc_1399064: var_F0 = var_AC.Item(var_AC)
  loc_13990A8: Me.LBLRoomName.Caption = CStr(CVar(1 & Proc_6_38_E69628(CVar(var_C0), var_C0, " ", 1, var_1E8)) & Space(3) & CVar(var_8C))
  loc_13990DE: Me.LBLRoomName.Refresh
  loc_13990EB: Set var_88 = Nothing
  loc_13990EE: Exit Sub
End Sub

Private Sub BtnEnh1_UnknownEvent_9 'E18ABC
  'Data Table: 43D138
  loc_E18AB1: Me.Global.Unload Me
  loc_E18AB9: Exit Sub
End Sub

Private Sub Text3_GotFocus() 'EF4BE4
  'Data Table: 43D138
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  loc_EF4B2F: Me.Text3.SelStart = 0
  loc_EF4B6A: Me.Text3.SelLength = CLng(Len(Trim(CVar(Me.Text3.Text))))
  loc_EF4B90: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_EF4BA8: var_F0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_EF4BC8: global_68 = CStr(Me.FGrid1.TextMatrix))
  loc_EF4BE1: Exit Sub
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer) '122C04C
  'Data Table: 43D138
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_108 As Variant
  loc_122BB3E: If (KeyCode = &H28) Then
  loc_122BB7C:   If (CLng(Me.FGrid1.Rows) > (CLng(Me.FGrid1.Row) + 1)) Then
  loc_122BB84:     Call Text3_Validate(0)
  loc_122BB9C:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122BBB4:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122BBCE:     var_108 = CVar(Me.Text3.Text) 'String
  loc_122BBD6:     Set var_11C = Me.FGrid1
  loc_122BBDC:     LateIdCallSt
  loc_122BC04:     Me.Text3.Visible = False
  loc_122BC25:     var_C0 = CVar((CLng(Me.FGrid1.Row) + 1)) 'Long
  loc_122BC34:     Me.FGrid1.Row = var_C0
  loc_122BC43:   End If
  loc_122BC46: Else
  loc_122BC4C:   If (KeyCode = &H26) Then
  loc_122BC6E:     If (CLng(Me.FGrid1.Row) > 1) Then
  loc_122BC76:       Call Text3_Validate(0)
  loc_122BC8E:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122BCA6:       var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122BCC0:       var_108 = CVar(Me.Text3.Text) 'String
  loc_122BCC8:       Set var_11C = Me.FGrid1
  loc_122BCCE:       LateIdCallSt
  loc_122BCF6:       Me.Text3.Visible = False
  loc_122BD17:       var_C0 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_122BD26:       Me.FGrid1.Row = var_C0
  loc_122BD35:     End If
  loc_122BD38:   Else
  loc_122BD42:     If (CLng(KeyCode) = &H25) Then
  loc_122BD98:       If ((0 < (CLng(Me.FGrid1.Col) - 6)) And (((CLng(Me.FGrid1.Col) - 2) Mod 6) = 0)) Then
  loc_122BDA0:         Call Text3_Validate(0)
  loc_122BDB8:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122BDD0:         var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122BDEA:         var_108 = CVar(Me.Text3.Text) 'String
  loc_122BDF2:         Set var_11C = Me.FGrid1
  loc_122BDF8:         LateIdCallSt
  loc_122BE20:         Me.Text3.Visible = False
  loc_122BE41:         var_C0 = CVar((CLng(Me.FGrid1.Col) - 6)) 'Long
  loc_122BE50:         Me.FGrid1.Col = var_C0
  loc_122BE5F:       End If
  loc_122BE62:     Else
  loc_122BE6C:       If (CLng(KeyCode) = &H27) Then
  loc_122BED4:         If ((CLng(Me.FGrid1.Cols) > (CLng(Me.FGrid1.Col) + 6)) And (((CLng(Me.FGrid1.Col) - 2) Mod 6) = 0)) Then
  loc_122BEDC:           Call Text3_Validate(0)
  loc_122BEF4:           var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122BF0C:           var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122BF26:           var_108 = CVar(Me.Text3.Text) 'String
  loc_122BF2E:           Set var_11C = Me.FGrid1
  loc_122BF34:           LateIdCallSt
  loc_122BF5C:           Me.Text3.Visible = False
  loc_122BF7D:           var_C0 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_122BF8C:           Me.FGrid1.Col = var_C0
  loc_122BF9B:         End If
  loc_122BF9B:       End If
  loc_122BF9B:     End If
  loc_122BF9B:   End If
  loc_122BF9B: End If
  loc_122BFA1: If (KeyCode = &HD) Then
  loc_122BFA4:   DoEvents()
  loc_122BFAE:   Call Text3_Validate(0)
  loc_122BFC6:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122BFDE:   var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122BFF8:   var_108 = CVar(Me.Text3.Text) 'String
  loc_122C000:   Set var_11C = Me.FGrid1
  loc_122C006:   LateIdCallSt
  loc_122C02E:   Me.Text3.Visible = False
  loc_122C03A:   Set var_88 = Me.FGrid1
  loc_122C04B: End If
  loc_122C04B: Exit Sub
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer) '12E2BB0
  'Data Table: 43D138
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Integer
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_154 As MSHFlexGrid
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Variant
  Dim var_EC As Variant
  Dim var_21C As Variant
  Dim var_20C As Variant
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_24C As Variant
  Dim KeyAscii As Integer
  loc_12E2537: Me.Text1.MaxLength = &HB
  loc_12E2542: var_88 = "CDOR"
  loc_12E254B: If (KeyAscii = &H1B) Then
  loc_12E255E:   Me.Text3.Text = global_68
  loc_12E2566: End If
  loc_12E2590: var_CC = InStr(1, CVar(var_88), Ucase(Chr(CLng(KeyAscii))), 1)
  loc_12E2594: var_DC = 0
  loc_12E25B1: var_120 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E25CF: var_140 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_12E25E9: var_174 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_12E25EF: var_184 = Trim(var_174)
  loc_12E2601: var_1B4 = var_140 And (var_184 <> vbNullString)
  loc_12E2623: If CBool(var_1B4) Then
  loc_12E264F:   If (Ucase(Chr(CLng(KeyAscii))) = "O") Then
  loc_12E2665:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E2683:     var_120 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_12E26BB:     var_21C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E26D9:     var_23C = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_12E26F2:     var_164 = "Out Of Order Reason"
  loc_12E2708:     var_25C = CVar(InputBox("Reason For Out of Order ?", var_164, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), var_174, var_184, var_1A4, var_1B4)) 'String
  loc_12E2710:     Set var_270 = Me.FGrid1
  loc_12E2716:     LateIdCallSt
  loc_12E275F:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E277D:     var_120 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_12E278C:     var_CC = Me.FGrid1.TextMatrix)
  loc_12E27C9:     var_24C = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_12E27FA:     var_EC = "From Date "
  loc_12E280E:     var_20C = CVar(Proc_6_34_14EEAAC(InputBox(var_EC, "From Date", CVar(CStr(var_CC)), var_164, var_174, var_184, var_1A4), var_24C, CVar(CLng(Me.FGrid1.Row)), var_CC, var_120)) 'String
  loc_12E2816:     Set var_270 = Me.FGrid1
  loc_12E281C:     LateIdCallSt
  loc_12E286A:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E2888:     var_120 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_12E28C0:     If (CDate(CStr(Me.FGrid1.TextMatrix))) < MemVar_1F950EC) Then
  loc_12E28D6:       var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E28E5:       var_AC = Me.FGrid1.Col
  loc_12E28F4:       var_120 = CVar((CLng(var_AC) + 2)) 'Long
  loc_12E2906:       Set var_154 = Me.FGrid1
  loc_12E290C:       LateIdCallSt
  loc_12E294A:       MsgBox(CVar("Date Can not be less then Audit date,So Audit date (" & CStr(MemVar_1F950EC) & ") will be stored here"), 0, var_AC, CVar(CStr(MemVar_1F950EC)), var_EC)
  loc_12E2961:     End If
  loc_12E2974:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E2992:     var_120 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_12E29A1:     var_CC = Me.FGrid1.TextMatrix)
  loc_12E29DE:     var_24C = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_12E2A0F:     var_EC = "To Date "
  loc_12E2A23:     var_20C = CVar(Proc_6_34_14EEAAC(InputBox(var_EC, "To Date", CVar(CStr(var_CC)), var_164, var_174, var_184, var_1A4), var_24C, CVar(CLng(Me.FGrid1.Row)), var_CC, var_120)) 'String
  loc_12E2A2B:     Set var_270 = Me.FGrid1
  loc_12E2A31:     LateIdCallSt
  loc_12E2A7F:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E2A9D:     var_120 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_12E2AD5:     If (CDate(CStr(Me.FGrid1.TextMatrix))) < MemVar_1F950EC) Then
  loc_12E2AEB:       var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E2AFA:       var_AC = Me.FGrid1.Col
  loc_12E2B09:       var_120 = CVar((CLng(var_AC) + 3)) 'Long
  loc_12E2B1B:       Set var_154 = Me.FGrid1
  loc_12E2B21:       LateIdCallSt
  loc_12E2B5F:       MsgBox(CVar("Date Can not be less then Audit date,So Audit date (" & CStr(MemVar_1F950EC) & ") will be stored here"), 0, var_AC, CVar(CStr(MemVar_1F950EC)), var_EC)
  loc_12E2B76:     End If
  loc_12E2B76:   End If
  loc_12E2B99:   KeyAscii = Asc(CStr(Ucase(Chr(CLng(KeyAscii)))))
  loc_12E2BA9: Else
  loc_12E2BAB:   KeyAscii = 0
  loc_12E2BAE: End If
  loc_12E2BAE: Exit Sub
End Sub

Private Sub Text3_KeyUp(KeyCode As Integer, Shift As Integer) 'E6BC34
  'Data Table: 43D138
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_E6BBF9: var_AC = CVar(CLng(global_64)) 'Long
  loc_E6BC13: var_CC = CVar(Me.Text3.Text) 'String
  loc_E6BC1B: Set var_E0 = Me.FGrid1
  loc_E6BC21: LateIdCallSt
  loc_E6BC33: Exit Sub
End Sub

Private Sub Text3_Validate(Cancel As Boolean) '1662568
  'Data Table: 43D138
  Dim var_8C As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_B0 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_158 As MSHFlexGrid
  Dim var_90 As String
  Dim Cancel As Integer
  Dim var_15C As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_170 As Variant
  Dim var_188 As String
  Dim var_88 As Integer
  Dim unk_43D14F As Connection15
  Dim var_1C0 As Variant
  Dim var_1F0 As Variant
  Dim var_214 As Variant
  Dim var_2CC As Variant
  Dim var_2F0 As Variant
  Dim var_3BC As Variant
  Dim var_194 As String
  Dim var_198 As String
  Dim var_244 As Variant
  Dim var_45C As Variant
  Dim var_234 As Variant
  loc_1660F44: On Error Goto loc_16624E9
  loc_1660F9D: var_104 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_1660FB9: If CBool((Len(Trim(CVar(Me.Text3.Text))) = 1) And var_104) Then
  loc_1660FD1:   var_86 = CByte(CLng(Me.FGrid1.Col)) 'Byte
  loc_1660FFB:   If (Me.Text3.Text = "D") Then
  loc_1661009:     If (global_68 = "O") Then
  loc_166101F:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661037:       var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_166103C:       var_144 = "O"
  loc_1661046:       Set var_158 = Me.FGrid1
  loc_166104C:       LateIdCallSt
  loc_1661064:       Exit Sub
  loc_1661065:     End If
  loc_1661078:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661096:     var_124 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166109B:     var_144 = vbNullString
  loc_16610A5:     Set var_158 = Me.FGrid1
  loc_16610AB:     LateIdCallSt
  loc_16610D6:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16610F4:     var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_16610F9:     var_144 = vbNullString
  loc_1661103:     Set var_158 = Me.FGrid1
  loc_1661109:     LateIdCallSt
  loc_1661134:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661152:     var_124 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1661157:     var_144 = vbNullString
  loc_1661161:     Set var_158 = Me.FGrid1
  loc_1661167:     LateIdCallSt
  loc_1661198:     var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_16611A7:     Me.FGrid1.Col = var_D0
  loc_16611C9:     Me.FGrid1.CellBackColor = &HFFFF
  loc_16611EA:     var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_16611F9:     Me.FGrid1.Col = &HFFFF
  loc_166121B:     Me.FGrid1.CellBackColor = &HFFFF
  loc_1661226:   Else
  loc_1661246:     If (Me.Text3.Text = "O") Then
  loc_166125C:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_166127A:       var_124 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1661289:       var_C0 = Me.FGrid1.TextMatrix)
  loc_16612B1:       If (CStr(var_C0) = "Occupied") Then
  loc_16612C7:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16612D6:         var_B0 = Me.FGrid1.Col
  loc_16612DF:         var_124 = CVar(CLng(var_B0)) 'Long
  loc_16612F2:         Set var_158 = Me.FGrid1
  loc_16612F8:         LateIdCallSt
  loc_1661320:         Me.Text3.Text = global_68
  loc_1661341:         MsgBox("Sorry Room Is Not vacant", &H40, var_B0, var_C0, var_E0)
  loc_1661353:         Cancel = &HFF
  loc_1661356:         Exit Sub
  loc_1661357:       End If
  loc_166136A:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661388:       var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_16613A2:       var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_16613B4:       var_E0 = Me.FGrid1.Row
  loc_16613BD:       var_144 = CVar(CLng(var_E0)) 'Long
  loc_16613DB:       var_170 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1661423:       If (var_170 And (CStr(Me.FGrid1.TextMatrix)) <> vbNullString)) Then
  loc_1661439:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661451:         var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_166146B:         var_C0 = CVar(Me.Text3.Text) 'String
  loc_1661473:         Set var_15C = Me.FGrid1
  loc_1661479:         LateIdCallSt
  loc_1661497:         var_88 = &HFF
  loc_16614A3:         unk_43D14F.BeginTrans var_18C
  loc_16614BB:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16614D3:         var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_166150A:         If (CStr(Me.FGrid1.TextMatrix)) = "O") Then
  loc_1661520:           var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_166153E:           var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1661581:           unk_43D14F.Execute "delete from RoomBlockOut where RoomCode='" & CStr(Me.FGrid1.TextMatrix)) & "' And Type='O'", var_E0, -1
  loc_16615D6:           var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_16615E5:           var_C0 = Me.FGrid1.TextMatrix)
  loc_16615F5:           Set var_15C = Me.FGrid1
  loc_1661622:           var_170 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1661631:           var_114 = Me.FGrid1.TextMatrix)
  loc_166166E:           var_1F0 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_166168E:           Proc_6_7_F26918(var_234, CVar(CStr(Me.FGrid1.TextMatrix))), var_1F0, CVar(CLng(Me.FGrid1.Row)), var_114, var_170, CVar(CLng(var_15C.Row)), var_C0)
  loc_16616C4:           var_2CC = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_16616E4:           Proc_6_7_F26918(var_310, CVar(CStr(Me.FGrid1.TextMatrix))), var_2CC, CVar(CLng(Me.FGrid1.Row)), var_124, CVar(CLng(Me.FGrid1.Row)))
  loc_1661723:           var_3BC = Me.FGrid1.TextMatrix)
  loc_166173D:           Proc_6_7_F26918(var_49C, Date, var_3BC, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_15C)
  loc_1661782:           var_188 = "Insert into RoomBlockOut (RoomCode,Reasons,FromDate,ToDate,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,VTime) Values ('" & CStr(var_C0)
  loc_166179B:           var_244 = CVar(var_188 & "','" & CStr(var_114) & "',") 'String
  loc_16617EB:           var_45C = var_244 & var_234 & "," & var_310 & ",'" & CVar(CStr(var_3BC)) & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) 
  loc_1661835:           unk_43D14F.Execute CStr(var_45C & "'," & var_49C & ",'A','" & CVar(MemVar_1F95078) & "','" & Format(Time, "hh:nn") & "')"), var_5A0, -1
  loc_16618C5:         End If
  loc_16618CB:         unk_43D14F.CommitTrans
  loc_16618D2:         var_88 = 0
  loc_16618D5:       End If
  loc_16618EE:       var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_16618FD:       Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Row))
  loc_166191F:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661937:       var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_166193C:       var_144 = "Out Of Order"
  loc_1661946:       Set var_158 = Me.FGrid1
  loc_166194C:       LateIdCallSt
  loc_1661977:       Me.FGrid1.CellBackColor = &HFF
  loc_1661998:       var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_16619A7:       Me.FGrid1.Col = &HFF
  loc_16619C9:       Me.FGrid1.CellBackColor = &HFF
  loc_16619D4:     Else
  loc_16619F4:       If (Me.Text3.Text = "C") Then
  loc_1661A02:         If (global_68 = "O") Then
  loc_1661A18:           var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661A30:           var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1661A35:           var_144 = "O"
  loc_1661A3F:           Set var_158 = Me.FGrid1
  loc_1661A45:           LateIdCallSt
  loc_1661A5D:           Exit Sub
  loc_1661A5E:         End If
  loc_1661A71:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661A8F:         var_124 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1661A94:         var_144 = vbNullString
  loc_1661A9E:         Set var_158 = Me.FGrid1
  loc_1661AA4:         LateIdCallSt
  loc_1661ACF:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661AED:         var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1661AF2:         var_144 = vbNullString
  loc_1661AFC:         Set var_158 = Me.FGrid1
  loc_1661B02:         LateIdCallSt
  loc_1661B2D:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661B4B:         var_124 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1661B50:         var_144 = vbNullString
  loc_1661B5A:         Set var_158 = Me.FGrid1
  loc_1661B60:         LateIdCallSt
  loc_1661B91:         var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1661BA0:         Me.FGrid1.Col = var_D0
  loc_1661BC2:         Me.FGrid1.CellBackColor = &HFFFFFF
  loc_1661BE3:         var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1661BF2:         Me.FGrid1.Col = &HFFFFFF
  loc_1661C14:         Me.FGrid1.CellBackColor = &HFFFFFF
  loc_1661C1F:       Else
  loc_1661C3F:         If (Me.Text3.Text = "R") Then
  loc_1661C55:           var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661C64:           var_B0 = Me.FGrid1.Col
  loc_1661C6D:           var_124 = CVar(CLng(var_B0)) 'Long
  loc_1661C7C:           var_C0 = Me.FGrid1.TextMatrix)
  loc_1661C87:           var_90 = CStr(var_C0)
  loc_1661C99:           var_E0 = Me.FGrid1.Row
  loc_1661CA2:           var_144 = CVar(CLng(var_E0)) 'Long
  loc_1661D02:           If (CVar(CLng(Me.FGrid1.Col)) Or (CStr(Me.FGrid1.TextMatrix)) = "D")) Then
  loc_1661D07:             Cancel = &HFF
  loc_1661D0A:             Exit Sub
  loc_1661D0B:           End If
  loc_1661D3A:           If (MsgBox("Change Out of Order room to Vacant?", &H24, var_B0, var_C0, var_E0) = 6) Then
  loc_1661D6C:             If (MsgBox("Clear Comments?", &H24, var_B0, var_C0, var_E0) = 6) Then
  loc_1661D7C:               Me.Text3.Text = "C"
  loc_1661D97:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661DAF:               var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1661DB4:               var_144 = "C"
  loc_1661DBE:               Set var_158 = Me.FGrid1
  loc_1661DC4:               LateIdCallSt
  loc_1661DEF:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661E0D:               var_124 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1661E12:               var_144 = vbNullString
  loc_1661E1C:               Set var_158 = Me.FGrid1
  loc_1661E22:               LateIdCallSt
  loc_1661E4D:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661E6B:               var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1661E70:               var_144 = vbNullString
  loc_1661E7A:               Set var_158 = Me.FGrid1
  loc_1661E80:               LateIdCallSt
  loc_1661EAB:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661EC9:               var_124 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1661ECE:               var_144 = vbNullString
  loc_1661ED8:               Set var_158 = Me.FGrid1
  loc_1661EDE:               LateIdCallSt
  loc_1661F09:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661F27:               var_124 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1661F2C:               var_144 = "Vacant"
  loc_1661F36:               Set var_158 = Me.FGrid1
  loc_1661F3C:               LateIdCallSt
  loc_1661F57:             Else
  loc_1661F6A:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661F88:               var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1661F8D:               var_144 = vbNullString
  loc_1661F97:               Set var_158 = Me.FGrid1
  loc_1661F9D:               LateIdCallSt
  loc_1661FC8:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661FE6:               var_124 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1661FEB:               var_144 = vbNullString
  loc_1661FF5:               Set var_158 = Me.FGrid1
  loc_1661FFB:               LateIdCallSt
  loc_1662013:             End If
  loc_1662026:             var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1662044:             var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1662085:             var_194 = "delete from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F95078 & "') and RoomCode='" & CStr(Me.FGrid1.TextMatrix))
  loc_1662095:             unk_43D14F.Execute var_194 & "' And Type='O'", var_E0, -1
  loc_16620D6:             var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_16620E5:             Me.FGrid1.Col = var_D0
  loc_1662107:             Me.FGrid1.CellBackColor = &HFFFFFF
  loc_1662128:             var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1662137:             Me.FGrid1.Col = &HFFFFFF
  loc_1662159:             Me.FGrid1.CellBackColor = &HFFFFFF
  loc_1662161:           End If
  loc_1662161:         End If
  loc_1662161:       End If
  loc_1662161:     End If
  loc_1662161:   End If
  loc_1662175:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_1662190:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16621A8:   var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16621EE:   If CBool(Ucase(CVar(CStr(Me.FGrid1.TextMatrix)))) <> "O") Then
  loc_16621F3:     var_88 = &HFF
  loc_16621FF:     unk_43D14F.BeginTrans var_18C
  loc_1662217:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_166222F:     var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_166225D:     var_144 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_166227B:     var_170 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_166229B:     var_1C0 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_16622CD:     var_214 = CVar("Update RoomMast set RoomStat='" & CStr(Me.FGrid1.TextMatrix)) & "' where (LOGSITE_CODE='" & MemVar_1F95078 & "') and code='") 'String
  loc_16622EA:     unk_43D14F.Execute CStr(var_214 & var_1C0 & "'"), var_244, -1
  loc_1662359:     var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1662368:     var_C0 = Me.FGrid1.TextMatrix)
  loc_16623AE:     var_114 = Me.FGrid1.TextMatrix)
  loc_16623C8:     Proc_6_7_F26918(var_1C0, Date, var_114, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_C0, var_124, CVar(CLng(Me.FGrid1.Row)))
  loc_166241F:     var_198 = "Insert into RoomBlockOut (RoomCode,Type,Site_Code,U_Name,FromDate,LogSite_Code,VTime) Values ('" & CStr(var_C0) & "','" & CStr(var_114)
  loc_166246B:     var_2F0 = CVar(var_198 & "','" & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',") & var_1C0 & ",'" & CVar(MemVar_1F95078) & "','" & Format(Time, "hh:nn") 
  loc_1662482:     unk_43D14F.Execute CStr(var_2F0 & "')"), var_310, -1
  loc_16624DE:     unk_43D14F.CommitTrans
  loc_16624E5:     var_88 = 0
  loc_16624E8:   End If
  loc_16624E8: End If
  loc_16624E8: Exit Sub
  loc_16624E9: ' Referenced from: 1660F44
  loc_16624EF: If (var_88 = &HFF) Then
  loc_16624F8:   unk_43D14F.RollbackTrans
  loc_16624FD: End If
  loc_166250E: var_104 = CVar(CLng(global_64)) 'Long
  loc_1662521: Set var_8C = Me.FGrid1
  loc_1662527: LateIdCallSt
  loc_166254D: If (Me.Text3.Visible = &HFF) Then
  loc_166255C:   Me.Text3.Visible = False
  loc_1662564: End If
  loc_1662564: Exit Sub
End Sub

Public Sub Proc_33_14_15B75C8
  'Data Table: 43D138
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_1F8 As String
  Dim unk_43D14F As Connection15
  Dim var_21C As Variant
  Dim var_220 As Variant
  Dim var_234 As Variant
  Dim var_96 As Integer
  Dim var_8A As Integer
  Dim var_294 As Double
  Dim var_C4 As Variant
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_A0 As Recordset15
  Dim var_92 As Integer
  loc_15B6377: var_D4 = CVar("SELECT Count(*) FROM RoomOcc WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') and Type Not IN ('O','C')  AND (CHKINDATE<") 'String
  loc_15B6385: Proc_6_7_F26918(var_C4, MemVar_1F950EC, var_D4, var_218, -1, var_21C)
  loc_15B63A5: Proc_6_7_F26918(var_124, MemVar_1F950EC, var_220 & var_C4 & " and  ChkOutDate IS NULL)  Or (ChkInDate <= ", 0)
  loc_15B63C5: Proc_6_7_F26918(var_174, MemVar_1F950EC, var_234 & var_124 & " And ChkOutDate > ")
  loc_15B63E5: Proc_6_7_F26918(var_1C4, MemVar_1F950EC)
  loc_15B6404: unk_43D14F.Execute CStr(var_244 & var_174 & ") OR (CHKINDATE=" & var_1C4 & " and  ChkOutDate is null)"), "Occupied Rooms: ", 
  loc_15B640C:  = var_21C.Fields
  loc_15B6414:  = var_220.Item()
  loc_15B641C:  = var_234.Value
  loc_15B642D: Set var_278 = Me.lblOccRoom
  loc_15B6433: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_244)
  loc_15B646F: var_96 = 0
  loc_15B647B: Set var_21C = Me.FGrid1
  loc_15B6481: var_21C.Redraw = False
  loc_15B64A4: var_1F8 = "Select * from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='RO' AND InclCount='Y' order by COde"
  loc_15B64AD: unk_43D14F.Execute var_1F8, var_C4, -1
  loc_15B64B8: Set var_88 = var_21C
  loc_15B64EC: unk_43D14F.Execute "Select * from RoomOcc where (LOGSITE_CODE='" & MemVar_1F95078 & "') and ChkOutDate is Null ", var_C4, -1
  loc_15B64F7: Set var_9C = var_21C
  loc_15B6522: var_D4 = CVar("Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='O' And ") 'String
  loc_15B6530: Proc_6_7_F26918(var_C4, MemVar_1F950EC, var_D4, var_124, -1)
  loc_15B6541: var_104 = var_21C & var_C4 & " between fromdate and ToDate" 
  loc_15B654F: unk_43D14F.Execute CStr(var_104), var_21C, var_21C
  loc_15B655A: Set var_A0 = var_21C
  loc_15B6576: var_8A = &H10
  loc_15B6586: Set var_21C = Me.FGrid1
  loc_15B658C: var_21C.RowHeightMin = &H1B8
  loc_15B65AB: If (Me.var_21C.RecordCount > 0) Then
  loc_15B65DB:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_15B6617:     var_294 = Val(CStr(Me.Recordset15.RecordCount))
  loc_15B6648:     var_C4 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(var_294) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_15B6669:     var_8C = CInt(((Val(CStr(Format(var_C4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_15B6681:   Else
  loc_15B669E:     var_D4 = "00"
  loc_15B66B0:     var_C4 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_15B66B7:     var_E4 = Format(var_C4, var_D4)
  loc_15B66D1:     var_8C = CInt(((Val(CStr(var_E4)) + CDbl(1)) * CDbl(6)))
  loc_15B66E0:   End If
  loc_15B66E3: Else
  loc_15B66FC:   MsgBox("First Fill Room Master", &H40, var_D4, var_E4, var_104)
  loc_15B670F: Else
  loc_15B6711:   var_90 = 1
  loc_15B6716:   var_8E = 0
  loc_15B672C:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_15B6747:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_15B6761:   Call Proc_33_15_10D9EF4((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1)
  loc_15B6779:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_15B6794:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_15B67A5:   Set var_21C = Me.FGrid1
  loc_15B67AB:   var_21C.Redraw = False
  loc_15B67B3:   ' Referenced from:   15B7593
  loc_15B67C7:   If (Me.var_21C.EOF = 0) Then
  loc_15B67CC:     var_90 = 1
  loc_15B67CF:     ' Referenced from:   15B7590
  loc_15B67D9:     If (var_90 <= (var_8A - 1)) Then
  loc_15B67F0:       For var_29C = (var_8C - 6) To (var_8C - 1):   var_94 = var_29C 'Integer
  loc_15B6800:         If (var_94 = (var_8C - 6)) Then
  loc_15B6807:           var_F4 = CVar(CLng(var_90)) 'Long
  loc_15B6816:           var_D4 = Me.FGrid1.Col
  loc_15B684F:           var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_D4.Fields.Item("Code")), CVar(CLng(var_D4)), var_F4, (var_8C - 6), &HFF, var_90, var_8C)) 'String
  loc_15B6857:           Set var_278 = Me.FGrid1
  loc_15B685D:           LateIdCallSt
  loc_15B6890:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B689F:           Me.FGrid1.Col = "Code"
  loc_15B68AE:         End If
  loc_15B68B8:         If (var_94 = (var_8C - 5)) Then
  loc_15B68D2:           If (Me.Recordset15.RecordCount > 0) Then
  loc_15B68DB:             Me.Recordset15.MoveFirst
  loc_15B68E0:           End If
  loc_15B6930:           Me.Recordset15.Find 1 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "RoomNo='", 0, 1, var_F4, var_278, var_E4) & "'", 1, var_294
  loc_15B695B:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B6962:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B697A:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B697F:             var_164 = "Occupied"
  loc_15B6989:             Set var_220 = Me.FGrid1
  loc_15B698F:             LateIdCallSt
  loc_15B69A4:           Else
  loc_15B69B8:             If (var_A0.RecordCount > 0) Then
  loc_15B69BE:               var_A0.MoveFirst
  loc_15B69C3:             End If
  loc_15B69D7:             var_B4 = "Code"
  loc_15B69EE:             var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15B6A10:             var_A0.Find var_164 & Proc_6_38_E69628(CVar(var_220), "RoomCode='", 0, 1, var_F4, var_220) & "'", var_114, var_B4
  loc_15B6A3B:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B6A42:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B6A5A:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B6A5F:               var_164 = "Out Of Order"
  loc_15B6A69:               Set var_220 = Me.FGrid1
  loc_15B6A6F:               LateIdCallSt
  loc_15B6A84:             Else
  loc_15B6A88:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B6AA0:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B6AA5:               var_164 = "Vacant"
  loc_15B6AAF:               Set var_220 = Me.FGrid1
  loc_15B6AB5:               LateIdCallSt
  loc_15B6AC7:             End If
  loc_15B6AC7:           End If
  loc_15B6AE0:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B6AEF:           Me.FGrid1.Col = var_B4
  loc_15B6AFE:         End If
  loc_15B6B08:         If (var_94 = (var_8C - 4)) Then
  loc_15B6B1F:           If (var_A0.RecordCount > 0) Then
  loc_15B6B25:             var_A0.MoveFirst
  loc_15B6B2A:           End If
  loc_15B6B3E:           var_B4 = "Code"
  loc_15B6B55:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15B6B77:           var_A0.Find var_114 & Proc_6_38_E69628(CVar(var_220), "RoomCode='", 0, 1, var_F4, var_220, var_164) & "'", var_B4, var_220
  loc_15B6B9F:           If (var_A0.AbsolutePosition > 0) Then
  loc_15B6BEB:             var_E4 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("Type")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_15B6BF3:             Set var_278 = Me.FGrid1
  loc_15B6BF9:             LateIdCallSt
  loc_15B6C16:           Else
  loc_15B6C48:             var_164 = CVar(CLng(var_90)) 'Long
  loc_15B6C57:             var_134 = Me.FGrid1.Col
  loc_15B6CA9:             var_114 = (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomStat")), Me.var_134.Fields.Item("RoomStat"), "C") = vbNullString)
  loc_15B6CB0:             var_124 = IIf(var_114, "C", CVar(Proc_6_38_E69628(CVar(Me.var_134.Fields.Item("RoomStat")), CVar(CLng(var_134)), var_164)))
  loc_15B6CB9:             var_154 = CVar(CStr(var_124)) 'String
  loc_15B6CC1:             Set var_2A4 = Me.FGrid1
  loc_15B6CC7:             LateIdCallSt
  loc_15B6CF4:           End If
  loc_15B6D08:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_15B6D24:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_15B6D45:           Call Proc_33_16_112D854(CByte(CLng(Me.FGrid1.Col)), var_92, var_2A4, var_154)
  loc_15B6D63:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_15B6D84:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B6D93:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_15B6DA2:         End If
  loc_15B6DAC:         If (var_94 = (var_8C - 3)) Then
  loc_15B6DFC:           If (Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomStat")), var_164))) = "O") Then
  loc_15B6E13:             If (var_A0.RecordCount > 0) Then
  loc_15B6E19:               var_A0.MoveFirst
  loc_15B6E72:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & "'"), 0, 1
  loc_15B6EA1:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B6EED:                 var_E4 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("Reasons")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_15B6EF5:                 Set var_278 = Me.FGrid1
  loc_15B6EFB:                 LateIdCallSt
  loc_15B6F18:               Else
  loc_15B6F1C:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B6F34:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B6F39:                 var_164 = vbNullString
  loc_15B6F43:                 Set var_220 = Me.FGrid1
  loc_15B6F49:                 LateIdCallSt
  loc_15B6F5B:               End If
  loc_15B6F5E:             Else
  loc_15B6F62:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B6F7A:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B6F7F:               var_164 = vbNullString
  loc_15B6F89:               Set var_220 = Me.FGrid1
  loc_15B6F8F:               LateIdCallSt
  loc_15B6FA1:             End If
  loc_15B6FA4:           Else
  loc_15B6FA8:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B6FC0:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B6FC5:             var_164 = vbNullString
  loc_15B6FCF:             Set var_220 = Me.FGrid1
  loc_15B6FD5:             LateIdCallSt
  loc_15B6FE7:           End If
  loc_15B7000:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B700F:           Me.FGrid1.Col = var_B4
  loc_15B701E:         End If
  loc_15B7028:         If (var_94 = (var_8C - 2)) Then
  loc_15B702E:           var_B4 = "RoomStat"
  loc_15B7045:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15B7078:           If (Trim(CVar(Proc_6_38_E69628(CVar(var_220), var_220, var_164, var_114, var_B4, var_220, var_164))) = "O") Then
  loc_15B708F:             If (var_A0.RecordCount > 0) Then
  loc_15B7095:               var_A0.MoveFirst
  loc_15B70DE:               var_114 = "'"
  loc_15B70EE:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_114), 0, 1
  loc_15B711D:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B7169:                 var_E4 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("FromDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_114)) 'String
  loc_15B7171:                 Set var_278 = Me.FGrid1
  loc_15B7177:                 LateIdCallSt
  loc_15B7194:               Else
  loc_15B7198:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B71B0:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B71B5:                 var_164 = vbNullString
  loc_15B71BF:                 Set var_220 = Me.FGrid1
  loc_15B71C5:                 LateIdCallSt
  loc_15B71D7:               End If
  loc_15B71DA:             Else
  loc_15B71DE:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B71F6:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B71FB:               var_164 = vbNullString
  loc_15B7205:               Set var_220 = Me.FGrid1
  loc_15B720B:               LateIdCallSt
  loc_15B721D:             End If
  loc_15B7220:           Else
  loc_15B7224:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B723C:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B7241:             var_164 = vbNullString
  loc_15B724B:             Set var_220 = Me.FGrid1
  loc_15B7251:             LateIdCallSt
  loc_15B7263:           End If
  loc_15B727C:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B728B:           Me.FGrid1.Col = var_B4
  loc_15B729A:         End If
  loc_15B72A4:         If (var_94 = (var_8C - 1)) Then
  loc_15B72AA:           var_B4 = "RoomStat"
  loc_15B72C1:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15B72F4:           If (Trim(CVar(Proc_6_38_E69628(CVar(var_220), var_220, var_164, var_114, var_B4, var_220, var_164))) = "O") Then
  loc_15B730B:             If (var_A0.RecordCount > 0) Then
  loc_15B7311:               var_A0.MoveFirst
  loc_15B735A:               var_114 = "'"
  loc_15B736A:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_114), 0, 1
  loc_15B7399:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B73E5:                 var_E4 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("ToDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_114)) 'String
  loc_15B73ED:                 Set var_278 = Me.FGrid1
  loc_15B73F3:                 LateIdCallSt
  loc_15B7410:               Else
  loc_15B7414:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B742C:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B7431:                 var_164 = vbNullString
  loc_15B743B:                 Set var_220 = Me.FGrid1
  loc_15B7441:                 LateIdCallSt
  loc_15B7453:               End If
  loc_15B7456:             Else
  loc_15B745A:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B7472:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B7477:               var_164 = vbNullString
  loc_15B7481:               Set var_220 = Me.FGrid1
  loc_15B7487:               LateIdCallSt
  loc_15B7499:             End If
  loc_15B749C:           Else
  loc_15B74A0:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B74B8:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B74BD:             var_164 = vbNullString
  loc_15B74C7:             Set var_220 = Me.FGrid1
  loc_15B74CD:             LateIdCallSt
  loc_15B74DF:           End If
  loc_15B74F8:           var_B4 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_15B7507:           Me.FGrid1.Col = var_B4
  loc_15B7516:         End If
  loc_15B7519:       Next var_29C 'Integer
  loc_15B7524:       var_90 = (var_90 + 1)
  loc_15B7531:       If (var_90 > (var_8A - 1)) Then
  loc_15B754D:         var_B4 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_15B755C:         Me.FGrid1.Col = var_B4
  loc_15B756B:       End If
  loc_15B7571:       var_88.MoveNext
  loc_15B758A:       If (var_88.EOF = &HFF) Then
  loc_15B758D:         GoTo loc_15B7596
  loc_15B7590:       End If
  loc_15B7590:       GoTo loc_15B67CF
  loc_15B7593:     End If
  loc_15B7593:     GoTo loc_15B67B3
  loc_15B7596:     ' Referenced from:   15B758D
  loc_15B7596:   End If
  loc_15B7596: End If
  loc_15B75A4: Me.FGrid1.Redraw = True
  loc_15B75B1: Set var_88 = Nothing
  loc_15B75B9: Set var_9C = Nothing
  loc_15B75C1: Set var_A0 = Nothing
  loc_15B75C4: Exit Sub
End Sub

Public Sub Proc_33_15_10D9EF4(arg_C, arg_10) '10D9EF4
  'Data Table: 43D138
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_F8 As String
  Dim arg_10 As Integer
  loc_10D9BF3: Me.FGrid1.Row = 0
  loc_10D9BFB: ' Referenced from: 10D9E52
  loc_10D9C01: If (arg_10 < 5) Then
  loc_10D9C04:   GoTo loc_10D9E55
  loc_10D9C07: End If
  loc_10D9C0B: Set var_B0 = Me.FGrid1
  loc_10D9C1C: For var_B4 = arg_10 To (arg_10 - 2) Step &HFF: var_86 = var_B4 'Integer
  loc_10D9C26:   var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9C2B:   var_C4 = 0
  loc_10D9C38:   Set var_AC = Me.FGrid1
  loc_10D9C3E:   LateIdCallSt
  loc_10D9C4C: Next var_B4 'Integer
  loc_10D9C60: For var_D8 = (arg_10 - 5) To (arg_10 - 3): var_86 = var_D8 'Integer
  loc_10D9C70:   If (var_86 = (arg_10 - 5)) Then
  loc_10D9C77:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9C7C:     var_C4 = &H3E8
  loc_10D9C89:     Set var_AC = Me.FGrid1
  loc_10D9C8F:     LateIdCallSt
  loc_10D9C9E:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9CA3:     var_C4 = 1
  loc_10D9CAD:     Set var_AC = Me.FGrid1
  loc_10D9CB3:     LateIdCallSt
  loc_10D9CD1:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D9CDA:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D9CDF:     var_F8 = "Room No"
  loc_10D9CE9:     Set var_10C = Me.FGrid1
  loc_10D9CEF:     LateIdCallSt
  loc_10D9D01:   End If
  loc_10D9D0B:   If (var_86 = (arg_10 - 4)) Then
  loc_10D9D12:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9D17:     var_C4 = &H4B0
  loc_10D9D24:     Set var_AC = Me.FGrid1
  loc_10D9D2A:     LateIdCallSt
  loc_10D9D39:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9D3E:     var_C4 = 1
  loc_10D9D48:     Set var_AC = Me.FGrid1
  loc_10D9D4E:     LateIdCallSt
  loc_10D9D6C:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D9D75:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D9D7A:     var_F8 = "Status"
  loc_10D9D84:     Set var_10C = Me.FGrid1
  loc_10D9D8A:     LateIdCallSt
  loc_10D9D9C:   End If
  loc_10D9DA6:   If (var_86 = (arg_10 - 3)) Then
  loc_10D9DAD:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9DB2:     var_C4 = &H190
  loc_10D9DBF:     Set var_AC = Me.FGrid1
  loc_10D9DC5:     LateIdCallSt
  loc_10D9DD4:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9DDF:     var_C4 = CVar(CInt(4)) 'Integer
  loc_10D9DE7:     Set var_AC = Me.FGrid1
  loc_10D9DED:     LateIdCallSt
  loc_10D9E0B:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D9E14:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D9E19:     var_F8 = vbNullString
  loc_10D9E23:     Set var_10C = Me.FGrid1
  loc_10D9E29:     LateIdCallSt
  loc_10D9E3B:   End If
  loc_10D9E3E: Next var_D8 'Integer
  loc_10D9E45: Set var_B0 = Nothing 
  loc_10D9E4F: arg_10 = (arg_10 - 6)
  loc_10D9E52: GoTo loc_10D9BFB
  loc_10D9E55: ' Referenced from: 10D9C04
  loc_10D9E7C: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_10D9E95:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_10D9EA5:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_10D9EBE:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_10D9ED9:     Me.FGrid1.CellBackColor = &HFFFF00
  loc_10D9EE4:   Next var_114 'Integer
  loc_10D9EEC: Next var_110 'Integer
  loc_10D9EF1: Exit Sub
End Sub

Public Sub Proc_33_16_112D854(arg_C) '112D854
  'Data Table: 43D138
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_11C As String
  loc_112D4F3: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112D4FD: var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112D53F: If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "D") Then
  loc_112D55B:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112D56A:   Me.FGrid1.Col = var_A8
  loc_112D58C:   Me.FGrid1.CellBackColor = &HFFFF
  loc_112D5AD:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112D5BC:   Me.FGrid1.Col = &HFFFF
  loc_112D5DE:   Me.FGrid1.CellBackColor = &HFFFF
  loc_112D5E9: Else
  loc_112D5FC:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112D606:   var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112D648:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "O") Then
  loc_112D664:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112D673:     Me.FGrid1.Col = var_A8
  loc_112D695:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112D6AD:     var_C8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_112D6B2:     var_11C = "Out Of Order"
  loc_112D6BC:     Set var_140 = Me.FGrid1
  loc_112D6C2:     LateIdCallSt
  loc_112D6ED:     Me.FGrid1.CellBackColor = &HFF
  loc_112D70E:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112D71D:     Me.FGrid1.Col = &HFF
  loc_112D73F:     Me.FGrid1.CellBackColor = &HFF
  loc_112D74A:   Else
  loc_112D75D:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112D767:     var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112D7A9:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "C") Then
  loc_112D7C5:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112D7D4:       Me.FGrid1.Col = var_A8
  loc_112D7F6:       Me.FGrid1.CellBackColor = &HFFFFFF
  loc_112D817:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112D826:       Me.FGrid1.Col = &HFFFFFF
  loc_112D848:       Me.FGrid1.CellBackColor = &HFFFFFF
  loc_112D850:     End If
  loc_112D850:   End If
  loc_112D850: End If
  loc_112D850: Exit Sub
  loc_112D851: StUdtVar
End Sub
