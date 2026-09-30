VERSION 5.00
Begin VB.Form HRoomCheckOutClearance
  Caption = "Check Out Clearance Screen"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "HRoomCheckOutClearance.frx":0
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
  Begin Frame Frame1
    ForeColor = &H80000008&
    Left = 18405
    Top = 9345
    Width = 1560
    Height = 1140
    Visible = 0   'False
    TabIndex = 26
    Appearance = 0 'Flat
    Begin Label Label2
      Index = 12
      BackColor = &HFF&
      ForeColor = &H80000008&
      Left = 15
      Top = 465
      Width = 285
      Height = 270
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 11
      BackColor = &HFFFF&
      ForeColor = &H80000008&
      Left = 15
      Top = 135
      Width = 285
      Height = 270
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Dirty"
      Index = 15
      ForeColor = &H0&
      Left = 390
      Top = 150
      Width = 405
      Height = 225
      TabIndex = 30
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
      Index = 14
      ForeColor = &H0&
      Left = 345
      Top = 480
      Width = 1140
      Height = 225
      TabIndex = 29
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
      Caption = "Clean"
      Index = 1
      ForeColor = &H0&
      Left = 375
      Top = 810
      Width = 480
      Height = 225
      TabIndex = 28
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 15
      Top = 795
      Width = 285
      Height = 270
      TabIndex = 27
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
  End
  Begin CommandButton Command1
    Caption = "&Legends"
    Left = 8130
    Top = 10440
    Width = 1575
    Height = 450
    Visible = 0   'False
    TabIndex = 25
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
  Begin TextBox Text1
    Left = 15885
    Top = 10380
    Width = 1590
    Height = 315
    Visible = 0   'False
    TabIndex = 3
  End
  Begin TextBox Text3
    BackColor = &HFFFFFF&
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
    Left = 0
    Top = 555
    Width = 13365
    Height = 7410
    TabIndex = 2
  End
  Begin BtnEnh lblOccRoom
    Left = 15
    Top = 8415
    Width = 2430
    Height = 480
    TabIndex = 33
  End
  Begin BtnEnh Exit
    Left = 2445
    Top = 8415
    Width = 1080
    Height = 495
    TabIndex = 35
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 34
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
  Begin Label Label4
    Caption = "(C)lean, (R)emove Out of Order, (D)irty, (O)ut of Order"
    Left = 10035
    Top = 10515
    Width = 5550
    Height = 360
    Visible = 0   'False
    TabIndex = 24
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
    Left = 12660
    Top = 8670
    Width = 8595
    Height = 360
    Visible = 0   'False
    TabIndex = 1
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

Attribute VB_Name = "HRoomCheckOutClearance"


Private Sub Form_Load() 'EB4FC8
  'Data Table: 43DCA8
  Dim var_A8 As Variant
  loc_EB4F3C: On Error Goto loc_EB4F82
  loc_EB4F46: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_EB4F5E: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_EB4F74: Me.LBLRoomName.BackColor = CLng(MemVar_1F951B4)
  loc_EB4F7C: Call Proc_234_10_15DD394()
  loc_EB4F81: Exit Sub
  loc_EB4F82: ' Referenced from: EB4F3C
  loc_EB4F8A: Set var_A8 = Err()
  loc_EB4F90: Call 0.Method_arg_2C (var_AC)
  loc_EB4FB1: MsgBox(CVar(var_AC), &H10, "Information", var_DC, var_FC)
  loc_EB4FC4: Exit Sub
  loc_EB4FC5: Exit Sub
End Sub

Private Sub Form_Resize() 'E6F4E8
  'Data Table: 43DCA8
  loc_E6F492: Call 0.Method_arg_50 (var_88)
  loc_E6F4A4: Me.LblFormCaption.Caption = var_88
  loc_E6F4BD: Me.LblFormCaption.Left = CDbl(0)
  loc_E6F4CB: Call 0.Method_arg_100 (var_90)
  loc_E6F4DD: Me.LblFormCaption.Width = var_90
  loc_E6F4E5: Exit Sub
End Sub

Private Sub Form_Activate() 'E00D34
  'Data Table: 43DCA8
  loc_E00D2C: Call Proc_234_10_15DD394()
  loc_E00D31: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E561D8
  'Data Table: 43DCA8
  loc_E561A2: If (CLng(KeyCode) = &H74) Then
  loc_E561A5:   Call Proc_234_10_15DD394()
  loc_E561AA: End If
  loc_E561BF: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &H79)) Then
  loc_E561CF:   Me.Global.Unload Me
  loc_E561D7: End If
  loc_E561D7: Exit Sub
End Sub

Private Sub Command1_Click() 'E5FD48
  'Data Table: 43DCA8
  loc_E5FD17: If (Me.Frame1.Visible = &HFF) Then
  loc_E5FD26:   Me.Frame1.Visible = False
  loc_E5FD31: Else
  loc_E5FD3D:   Me.Frame1.Visible = True
  loc_E5FD45: End If
  loc_E5FD45: Exit Sub
  loc_E5FD46: CExtInstUnk
End Sub

Private Sub Fgrid1_UnknownEvent_9 'F0E2C4
  'Data Table: 43DCA8
  Dim var_98 As Variant
  Dim var_AC As Long
  loc_F0E1FB: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_F0E1FE:   Exit Sub
  loc_F0E1FF: End If
  loc_F0E21A: If (Me.Text3.Visible = &HFF) Then
  loc_F0E229:   Me.Text3.Visible = False
  loc_F0E231: End If
  loc_F0E23B: var_98 = Me.FGrid1.Rows
  loc_F0E24A: var_AC = 1
  loc_F0E28B: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_F0E28E:   Exit Sub
  loc_F0E28F: End If
  loc_F0E2BA: If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_F0E2BD:   Call Fgrid1_UnknownEvent_B()
  loc_F0E2C2: End If
  loc_F0E2C2: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(Index As Integer) 'F99838
  'Data Table: 43DCA8
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_88 As Integer
  loc_F996CC: var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_F996E9: var_88 = CInt(CLng(Me.FGrid1.Row))
  loc_F9971D: If ((((CLng(Index) = &H20) Or (CLng(Index) = &H44)) Or (CLng(Index) = &H4F)) Or (CLng(Index) = &H52)) Then
  loc_F9972F:   Me.FGrid1.Redraw = False
  loc_F99762:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_F99765:     Call Fgrid1_UnknownEvent_B()
  loc_F9976D:   Else
  loc_F99798:     If (((CLng(Me.FGrid1.ColSel) - 2) + 1) = 0) Then
  loc_F9979B:       Call Fgrid1_UnknownEvent_B()
  loc_F997A3:     Else
  loc_F997CE:       If (((CLng(Me.FGrid1.ColSel) - 2) + 2) = 0) Then
  loc_F997D1:         Call Fgrid1_UnknownEvent_B()
  loc_F997D6:       End If
  loc_F997D6:     End If
  loc_F997D6:   End If
  loc_F997DA:   Set var_8C = Me.FGrid1
  loc_F997FE:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F99819:   Me.FGrid1.Row = CVar(CLng(var_88))
  loc_F9982F:   Me.FGrid1.Redraw = True
  loc_F99837: End If
  loc_F99837: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '139A37C
  'Data Table: 43DCA8
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_138 As String
  Dim var_188 As Variant
  Dim var_194 As String
  Dim unk_43DCB6 As Connection15
  Dim var_1B8 As Variant
  Dim var_214 As Variant
  Dim var_2F4 As Variant
  loc_1399B1C: var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1399B39: var_88 = CInt(CLng(Me.FGrid1.Row))
  loc_1399B7C: var_86 = CInt(((CLng(Me.FGrid1.Col) + 3) - ((CLng(Me.FGrid1.ColSel) + 1) Mod 6)))
  loc_1399BAB: If (CLng(var_86) >= CLng(Me.FGrid1.Cols)) Then
  loc_1399BAE:   Exit Sub
  loc_1399BAF: End If
  loc_1399BC2: Me.FGrid1.Col = CVar(CLng(var_86))
  loc_1399BCE: var_C0 = CVar(CLng(var_88)) 'Long
  loc_1399BD7: var_E0 = CVar(CLng(var_86)) 'Long
  loc_1399BF1: var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1399BFD: var_104 = CVar(CLng(var_88)) 'Long
  loc_1399C09: var_124 = CVar(CLng((var_86 - 1))) 'Long
  loc_1399C41: If (var_124 And (CStr(Me.FGrid1.TextMatrix)) = "Occupied")) Then
  loc_1399C48:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1399C51:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1399C56:   var_104 = "¨"
  loc_1399C60:   Set var_8C = Me.FGrid1
  loc_1399C66:   LateIdCallSt
  loc_1399C84:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399CA2:   var_E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1399CD0:   var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399CEE:   var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1399D33:   var_194 = "Delete from RoomCheckOutStatus where FolioNoDocId='" & CStr(Me.FGrid1.TextMatrix)) & "' And RoomCode='" & CStr(Me.FGrid1.TextMatrix))
  loc_1399D43:   unk_43DCB6.Execute var_194 & "'", var_1B8, -1
  loc_1399D8C:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399DAA:   var_E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1399DD8:   var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399DF6:   var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1399E05:   var_188 = Me.FGrid1.TextMatrix)
  loc_1399E1B:   var_1B8 = Me.FGrid1.Row
  loc_1399E4B:   var_214 = Me.FGrid1.TextMatrix)
  loc_1399E93:   Proc_6_7_F26918(var_354, Date, var_214, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_1B8)), var_188, var_124)
  loc_1399EB0:   var_138 = "Insert into RoomCheckOutStatus (FolionoDocId,RoomCode,ChkOutClearanceYN,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & CStr(Me.FGrid1.TextMatrix))
  loc_1399EEB:   var_2F4 = CVar(var_138 & "','" & CStr(var_188) & "','") & IIf((CStr(var_214) = "þ"), "Y", "N") & "','" & CVar(MemVar_1F95078) & "','" 
  loc_1399F2F:   unk_43DCB6.Execute CStr(var_2F4 & CVar(MemVar_1F950C8) & "'," & var_354 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_3E8, -1
  loc_1399F98: Else
  loc_1399F9C:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1399FA5:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1399FBF:   var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1399FCB:   var_104 = CVar(CLng(var_88)) 'Long
  loc_1399FD7:   var_124 = CVar(CLng((var_86 - 1))) 'Long
  loc_139A00F:   If (var_124 And (CStr(Me.FGrid1.TextMatrix)) = "Occupied")) Then
  loc_139A016:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_139A01F:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_139A024:     var_104 = "þ"
  loc_139A02E:     Set var_8C = Me.FGrid1
  loc_139A034:     LateIdCallSt
  loc_139A052:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_139A070:     var_E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_139A09E:     var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_139A0BC:     var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_139A101:     var_194 = "Delete from RoomCheckOutStatus where FolioNoDocId='" & CStr(Me.FGrid1.TextMatrix)) & "' And RoomCode='" & CStr(Me.FGrid1.TextMatrix))
  loc_139A111:     unk_43DCB6.Execute var_194 & "'", var_1B8, -1
  loc_139A15A:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_139A178:     var_E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_139A1A6:     var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_139A1C4:     var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_139A1D3:     var_188 = Me.FGrid1.TextMatrix)
  loc_139A219:     var_214 = Me.FGrid1.TextMatrix)
  loc_139A261:     Proc_6_7_F26918(var_354, Date, var_214, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_188, var_124)
  loc_139A27E:     var_138 = "Insert into RoomCheckOutStatus (FolionoDocId,RoomCode,ChkOutClearanceYN,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & CStr(Me.FGrid1.TextMatrix))
  loc_139A2B9:     var_2F4 = CVar(var_138 & "','" & CStr(var_188) & "','") & IIf((CStr(var_214) = "þ"), "Y", "N") & "','" & CVar(MemVar_1F95078) & "','" 
  loc_139A2FD:     unk_43DCB6.Execute CStr(var_2F4 & CVar(MemVar_1F950C8) & "'," & var_354 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_3E8, -1
  loc_139A363:   End If
  loc_139A363: End If
  loc_139A367: Set var_8C = Me.FGrid1
  loc_139A378: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '14F41FC
  'Data Table: 43DCA8
  Dim var_16C As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_17C As Variant
  Dim var_184 As String
  Dim var_18C As String
  Dim var_15C As Variant
  Dim var_190 As String
  Dim unk_43DCB6 As Connection15
  Dim var_88 As Recordset15
  Dim var_1A8 As Fields15
  Dim var_1A0 As Variant
  Dim var_1F8 As Variant
  Dim var_26C As Variant
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_338 As Variant
  Dim var_370 As Variant
  Dim var_390 As Variant
  loc_14F3467: var_8C = vbNullString
  loc_14F3489: var_16C = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_14F34A0: var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F34C1: Set var_10C = Me.FGrid1
  loc_14F34C7: var_11C = var_10C.TextMatrix)
  loc_14F34EA: var_17C = CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_11C))) <> vbNullString)
  loc_14F350C: If CBool(var_17C) Then
  loc_14F3522:   var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F3549:   var_C8 = Me.FGrid1.TextMatrix)
  loc_14F3560:   Proc_6_7_F26918(var_11C, MemVar_1F950EC, var_C8, CVar(CLng(Me.FGrid1.Col)))
  loc_14F3580:   var_184 = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='O' And RoomCode='"
  loc_14F35AF:   unk_43DCB6.Execute CStr(CVar(var_184 & CStr(var_C8) & "' And ") & var_11C & " between fromdate and ToDate"), var_17C, -1
  loc_14F35BA:   Set var_88 = var_10C
  loc_14F35FC:   If (var_88.RecordCount > 0) Then
  loc_14F362A:     var_8C = CStr(var_88.Fields.Item("Reasons").Value)
  loc_14F3637:   End If
  loc_14F3671:   var_C8 = Me.FGrid1.TextMatrix)
  loc_14F3683:   var_16C = 0
  loc_14F36B9:   var_190 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and code='" & CStr(var_C8) & "'"
  loc_14F36C2:   unk_43DCB6.Execute var_190, var_11C, -1
  loc_14F36CA:   var_10C = var_10C.Fields
  loc_14F36D2:   var_16C = var_1A8.Item(var_1A8)
  loc_14F36FA:   var_17C = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E69628(CVar(var_1AC), var_1AC, " ", var_C8, CVar(CLng(Me.FGrid1.Col)))) & Space(5) 
  loc_14F3711:   var_1A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F372F:   var_1F8 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14F376B:   var_26C = var_1F8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F3782:   var_2A4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F37A0:   var_2C4 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_14F37DC:   var_338 = var_2C4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F37F3:   var_370 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F3811:   var_390 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_14F3855:   Me.LBLRoomName.Caption = CStr(var_390 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & CVar(var_8C))
  loc_14F38D7:   Me.LBLRoomName.Refresh
  loc_14F38E2: Else
  loc_14F3907:   var_16C = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_14F391E:   var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F393F:   Set var_10C = Me.FGrid1
  loc_14F3945:   var_11C = var_10C.TextMatrix)
  loc_14F3968:   var_17C = CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_11C))) <> vbNullString)
  loc_14F398A:   If CBool(var_17C) Then
  loc_14F39BE:     var_F8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_14F39CD:     var_C8 = Me.FGrid1.TextMatrix)
  loc_14F39E4:     Proc_6_7_F26918(var_11C, MemVar_1F950EC, var_C8, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(Me.FGrid1.Row)), var_16C, var_370)
  loc_14F3A04:     var_184 = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='O' And RoomCode='"
  loc_14F3A33:     unk_43DCB6.Execute CStr(CVar(var_184 & CStr(var_C8) & "' And ") & var_11C & " between fromdate and ToDate"), var_17C, -1
  loc_14F3A3E:     Set var_88 = var_10C
  loc_14F3A80:     If (var_88.RecordCount > 0) Then
  loc_14F3AAE:       var_8C = CStr(var_88.Fields.Item("Reasons").Value)
  loc_14F3ABB:     End If
  loc_14F3AEC:     var_F8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_14F3AFB:     var_C8 = Me.FGrid1.TextMatrix)
  loc_14F3B0D:     var_16C = 0
  loc_14F3B43:     var_190 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and code='" & CStr(var_C8) & "'"
  loc_14F3B4C:     unk_43DCB6.Execute var_190, var_11C, -1
  loc_14F3B54:     var_10C = var_10C.Fields
  loc_14F3B5C:     var_16C = var_1A8.Item(var_1A8)
  loc_14F3B71:     var_15C = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E69628(CVar(var_1AC), var_1AC, " ", var_C8, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_14F3B84:     var_17C = var_15C & Space(5) 
  loc_14F3B9B:     var_1A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F3BB9:     var_1F8 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_14F3BF5:     var_26C = var_1F8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F3C0C:     var_2A4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F3C2A:     var_2C4 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14F3C66:     var_338 = var_2C4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F3C7D:     var_370 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F3C9B:     var_390 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_14F3CDF:     Me.LBLRoomName.Caption = CStr(var_390 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & CVar(var_8C))
  loc_14F3D61:     Me.LBLRoomName.Refresh
  loc_14F3D6C:   Else
  loc_14F3D91:     var_16C = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_14F3DA8:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F3DC9:     Set var_10C = Me.FGrid1
  loc_14F3DCF:     var_11C = var_10C.TextMatrix)
  loc_14F3DF2:     var_17C = CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_11C))) <> vbNullString)
  loc_14F3E14:     If CBool(var_17C) Then
  loc_14F3E48:       var_F8 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_14F3E57:       var_C8 = Me.FGrid1.TextMatrix)
  loc_14F3E6E:       Proc_6_7_F26918(var_11C, MemVar_1F950EC, var_C8, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(Me.FGrid1.Row)), var_16C, var_370)
  loc_14F3E8E:       var_184 = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='O' And RoomCode='"
  loc_14F3EBD:       unk_43DCB6.Execute CStr(CVar(var_184 & CStr(var_C8) & "' And ") & var_11C & " between fromdate and ToDate"), var_17C, -1
  loc_14F3EC8:       Set var_88 = var_10C
  loc_14F3F0A:       If (var_88.RecordCount > 0) Then
  loc_14F3F38:         var_8C = CStr(var_88.Fields.Item("Reasons").Value)
  loc_14F3F45:       End If
  loc_14F3F76:       var_F8 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_14F3F85:       var_C8 = Me.FGrid1.TextMatrix)
  loc_14F3F97:       var_16C = 0
  loc_14F3FC6:       var_18C = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and code='" & CStr(var_C8)
  loc_14F3FD6:       unk_43DCB6.Execute var_18C & "'", var_11C, -1
  loc_14F3FDE:       var_10C = var_10C.Fields
  loc_14F3FE6:       var_16C = var_1A8.Item(var_1A8)
  loc_14F3FFB:       var_15C = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E69628(CVar(var_1AC), var_1AC, " ", var_C8, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_14F400E:       var_17C = var_15C & Space(5) 
  loc_14F4025:       var_1A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F4043:       var_1F8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14F407F:       var_26C = var_1F8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F4096:       var_2A4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F40B4:       var_2C4 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_14F40F0:       var_338 = var_2C4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F4107:       var_370 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F4125:       var_390 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14F4169:       Me.LBLRoomName.Caption = CStr(var_390 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & CVar(var_8C))
  loc_14F41EB:       Me.LBLRoomName.Refresh
  loc_14F41F3:     End If
  loc_14F41F3:   End If
  loc_14F41F3: End If
  loc_14F41F8: Set var_88 = Nothing
  loc_14F41FB: Exit Sub
End Sub

Private Sub Exit_UnknownEvent_9 'E19604
  'Data Table: 43DCA8
  loc_E195F9: Me.Global.Unload Me
  loc_E19601: Exit Sub
End Sub

Public Sub Proc_234_10_15DD394
  'Data Table: 43DCA8
  Dim var_A4 As String
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_164 As Variant
  Dim var_1B4 As Variant
  Dim var_1F8 As String
  Dim unk_43DCB6 As Connection15
  Dim var_21C As Variant
  Dim var_220 As Variant
  Dim var_234 As Variant
  Dim var_96 As Integer
  Dim var_8A As Integer
  Dim var_28C As Double
  Dim var_294 As Double
  Dim var_C4 As Variant
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_124 As Variant
  Dim var_A0 As Recordset15
  Dim var_92 As Integer
  loc_15DC087: var_D4 = CVar("SELECT Count(*) FROM RoomOcc WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') and Type Not IN ('O','C')  AND (CHKINDATE<") 'String
  loc_15DC095: Proc_6_7_F26918(var_C4, MemVar_1F950EC, var_D4, var_218, -1, var_21C)
  loc_15DC0B5: Proc_6_7_F26918(var_124, MemVar_1F950EC, var_220 & var_C4 & " and  ChkOutDate IS NULL)  Or (ChkInDate <= ", 0)
  loc_15DC0D5: Proc_6_7_F26918(var_174, MemVar_1F950EC, var_234 & var_124 & " And ChkOutDate > ")
  loc_15DC0F5: Proc_6_7_F26918(var_1C4, MemVar_1F950EC)
  loc_15DC114: unk_43DCB6.Execute CStr(var_244 & var_174 & ") OR (CHKINDATE=" & var_1C4 & " and  ChkOutDate is null)"), "Occupied Rooms: ", 
  loc_15DC11C:  = var_21C.Fields
  loc_15DC124:  = var_220.Item()
  loc_15DC12C:  = var_234.Value
  loc_15DC13D: Set var_278 = Me.lblOccRoom
  loc_15DC143: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_244)
  loc_15DC17F: var_96 = 0
  loc_15DC18B: Set var_21C = Me.FGrid1
  loc_15DC191: var_21C.Redraw = False
  loc_15DC1B4: var_1F8 = "Select * from roommast R left join roomocc  O on o.roomno=r.code where (R.LOGSITE_CODE='" & MemVar_1F95078 & "' or R.LOGSITE_CODE='HO') and R.Type='RO' AND R.InclCount='Y' and O.Type Not IN ('O','C') order by COde"
  loc_15DC1BD: unk_43DCB6.Execute var_1F8, var_C4, -1
  loc_15DC1C8: Set var_88 = var_21C
  loc_15DC1EC: var_A4 = "Select R.DocId,Max(R.RoomNo) RoomNo,Max(IsNull(P.Bill_No,'')) Bill_No,Max(IsNull(RC.ChkOutClearanceYN,'')) CHKOUTCLYN from RoomOcc R Left Join PayCharge P On P.FolionoDocID=R.DocId Or P.RelatedFolioNoDocId=R.DocId Left Join RoomCheckOutStatus RC On R.DocId=RC.FolionoDocid And R.RoomNo=RC.RoomCode where (R.LOGSITE_CODE='" & MemVar_1F95078
  loc_15DC1FC: unk_43DCB6.Execute var_A4 & "') and ChkOutDate is Null Group By R.DocId", var_C4, -1
  loc_15DC207: Set var_9C = var_21C
  loc_15DC232: var_D4 = CVar("Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Type='O' And ") 'String
  loc_15DC240: Proc_6_7_F26918(var_C4, MemVar_1F950EC, var_D4, var_124, -1)
  loc_15DC251: var_104 = var_21C & var_C4 & " between fromdate and ToDate" 
  loc_15DC25F: unk_43DCB6.Execute CStr(var_104), var_21C, var_21C
  loc_15DC26A: Set var_A0 = var_21C
  loc_15DC286: var_8A = &H10
  loc_15DC296: Set var_21C = Me.FGrid1
  loc_15DC29C: var_21C.RowHeightMin = &H1B8
  loc_15DC2BB: If (Me.var_21C.RecordCount > 0) Then
  loc_15DC2EB:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_15DC309:     var_28C = Val(CStr(Me.Recordset15.RecordCount))
  loc_15DC327:     var_294 = Val(CStr(Me.Recordset15.RecordCount))
  loc_15DC358:     var_C4 = CVar(((var_28C - CDbl((CLng(var_294) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_15DC379:     var_8C = CInt(((Val(CStr(Format(var_C4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_15DC391:   Else
  loc_15DC3AE:     var_D4 = "00"
  loc_15DC3C0:     var_C4 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_15DC3C7:     var_E4 = Format(var_C4, var_D4)
  loc_15DC3E1:     var_8C = CInt(((Val(CStr(var_E4)) + CDbl(1)) * CDbl(6)))
  loc_15DC3F0:   End If
  loc_15DC3F3: Else
  loc_15DC40C:   MsgBox("First Fill Room Master", &H40, var_D4, var_E4, var_104)
  loc_15DC41F: Else
  loc_15DC421:   var_90 = 1
  loc_15DC426:   var_8E = 0
  loc_15DC43C:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_15DC457:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_15DC471:   Call Proc_234_11_10D984C((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1)
  loc_15DC489:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_15DC4A4:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_15DC4B5:   Set var_21C = Me.FGrid1
  loc_15DC4BB:   var_21C.Redraw = False
  loc_15DC4C3:   ' Referenced from:   15DD35F
  loc_15DC4D7:   If (Me.var_21C.EOF = 0) Then
  loc_15DC4DC:     var_90 = 1
  loc_15DC4DF:     ' Referenced from:   15DD35C
  loc_15DC4E6:     If (var_90 < var_8A) Then
  loc_15DC4FD:       For var_29C = (var_8C - 6) To (var_8C - 1):   var_94 = var_29C 'Integer
  loc_15DC50D:         If (var_94 = (var_8C - 6)) Then
  loc_15DC514:           var_F4 = CVar(CLng(var_90)) 'Long
  loc_15DC523:           var_D4 = Me.FGrid1.Col
  loc_15DC55C:           var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_D4.Fields.Item("Code")), CVar(CLng(var_D4)), var_F4, (var_8C - 6), &HFF, var_90, var_8C)) 'String
  loc_15DC564:           Set var_278 = Me.FGrid1
  loc_15DC56A:           LateIdCallSt
  loc_15DC59D:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DC5AC:           Me.FGrid1.Col = "Code"
  loc_15DC5BB:         End If
  loc_15DC5C5:         If (var_94 = (var_8C - 5)) Then
  loc_15DC5DF:           If (Me.Recordset15.RecordCount > 0) Then
  loc_15DC5E8:             Me.Recordset15.MoveFirst
  loc_15DC5ED:           End If
  loc_15DC63D:           Me.Recordset15.Find 1 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "RoomNo='", 0, 1, var_F4, var_278, var_E4) & "'", 1, var_294
  loc_15DC668:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DC69D:             var_164 = CVar(CLng(var_90)) 'Long
  loc_15DC6B5:             var_1B4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC6DB:             var_F4 = (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Bill_no")), var_28C) <> vbNullString)
  loc_15DC6EB:             var_134 = CVar(CStr(IIf(var_F4, "Billed", "Occupied"))) 'String
  loc_15DC6F3:             Set var_278 = Me.FGrid1
  loc_15DC6F9:             LateIdCallSt
  loc_15DC725:           Else
  loc_15DC739:             If (var_A0.RecordCount > 0) Then
  loc_15DC73F:               var_A0.MoveFirst
  loc_15DC744:             End If
  loc_15DC791:             var_A0.Find var_134 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "RoomCode='", 0, 1, var_F4, var_278) & "'", var_1B4, var_164
  loc_15DC7BC:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DC7C3:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DC7DB:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC7E0:               var_164 = "Out Of Order"
  loc_15DC7EA:               Set var_220 = Me.FGrid1
  loc_15DC7F0:               LateIdCallSt
  loc_15DC805:             Else
  loc_15DC809:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DC821:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC826:               var_164 = "Vacant"
  loc_15DC830:               Set var_220 = Me.FGrid1
  loc_15DC836:               LateIdCallSt
  loc_15DC848:             End If
  loc_15DC848:           End If
  loc_15DC861:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DC870:           Me.FGrid1.Col = var_B4
  loc_15DC87F:         End If
  loc_15DC889:         If (var_94 = (var_8C - 4)) Then
  loc_15DC8A0:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_15DC8BC:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_15DC8D8:           If (var_A0.RecordCount > 0) Then
  loc_15DC8DE:             var_A0.MoveFirst
  loc_15DC8E3:           End If
  loc_15DC8F7:           var_B4 = "Code"
  loc_15DC90E:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15DC930:           var_A0.Find var_164 & Proc_6_38_E69628(CVar(var_220), "RoomCode='", 0, 1, var_F4, var_92, var_220) & "'", var_114, var_B4
  loc_15DC958:           If (var_A0.AbsolutePosition > 0) Then
  loc_15DC96B:             Me.FGrid1.CellFontName = "Tahoma"
  loc_15DC985:             Me.FGrid1.CellFontSize = CVar(CDbl(8))
  loc_15DC991:             var_F4 = CVar(CLng(var_90)) 'Long
  loc_15DC9D6:             var_E4 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("Type")), CVar(CLng(Me.FGrid1.Col)), var_F4)) 'String
  loc_15DC9DE:             Set var_278 = Me.FGrid1
  loc_15DC9E4:             LateIdCallSt
  loc_15DCA01:           Else
  loc_15DCA11:             Me.FGrid1.CellFontName = "wingdings"
  loc_15DCA25:             Set var_21C = Me.FGrid1
  loc_15DCA2B:             var_21C.CellFontSize = CVar(CDbl(&HC))
  loc_15DCA4A:             If (Me.var_21C.RecordCount > 0) Then
  loc_15DCA53:               Me.Recordset15.MoveFirst
  loc_15DCA58:             End If
  loc_15DCA83:             var_220 = Me.Recordset15.Fields.Item("Code")
  loc_15DCAA8:             Me.Recordset15.Find var_278 & Proc_6_38_E69628(CVar(var_220), "RoomNo='", 0, 1, var_F4) & "'", var_E4, var_220
  loc_15DCAD3:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DCB08:               var_164 = CVar(CLng(var_90)) 'Long
  loc_15DCB20:               var_1B4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DCB56:               var_134 = CVar(CStr(IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CHKOUTCLYN")), var_164) = "Y"), "þ", "¨"))) 'String
  loc_15DCB5E:               Set var_278 = Me.FGrid1
  loc_15DCB64:               LateIdCallSt
  loc_15DCB90:             Else
  loc_15DCB94:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DCBAC:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DCBB1:               var_164 = "¨"
  loc_15DCBBB:               Set var_220 = Me.FGrid1
  loc_15DCBC1:               LateIdCallSt
  loc_15DCBD3:             End If
  loc_15DCBD3:           End If
  loc_15DCBEC:           Call Proc_234_12_112E764(CByte(CLng(Me.FGrid1.Col)), var_220, var_164, var_114, var_B4)
  loc_15DCC0A:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_15DCC2B:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DCC3A:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_15DCC49:         End If
  loc_15DCC53:         If (var_94 = (var_8C - 3)) Then
  loc_15DCCA3:           If (Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomStat")), var_278, var_134))) = "O") Then
  loc_15DCCBA:             If (var_A0.RecordCount > 0) Then
  loc_15DCCC0:               var_A0.MoveFirst
  loc_15DCD19:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & "'"), 0, 1
  loc_15DCD48:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DCD94:                 var_E4 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("Reasons")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_15DCD9C:                 Set var_278 = Me.FGrid1
  loc_15DCDA2:                 LateIdCallSt
  loc_15DCDBF:               Else
  loc_15DCDC3:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DCDDB:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DCDE0:                 var_164 = vbNullString
  loc_15DCDEA:                 Set var_220 = Me.FGrid1
  loc_15DCDF0:                 LateIdCallSt
  loc_15DCE02:               End If
  loc_15DCE05:             Else
  loc_15DCE09:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DCE21:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DCE26:               var_164 = vbNullString
  loc_15DCE30:               Set var_220 = Me.FGrid1
  loc_15DCE36:               LateIdCallSt
  loc_15DCE48:             End If
  loc_15DCE4B:           Else
  loc_15DCE4F:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DCE67:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DCE6C:             var_164 = vbNullString
  loc_15DCE76:             Set var_220 = Me.FGrid1
  loc_15DCE7C:             LateIdCallSt
  loc_15DCE8E:           End If
  loc_15DCEA7:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DCEB6:           Me.FGrid1.Col = var_B4
  loc_15DCEC5:         End If
  loc_15DCECF:         If (var_94 = (var_8C - 2)) Then
  loc_15DCED5:           var_B4 = "RoomStat"
  loc_15DCEEC:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15DCF1F:           If (Trim(CVar(Proc_6_38_E69628(CVar(var_220), var_220, var_164, var_114, var_B4, var_220, var_164))) = "O") Then
  loc_15DCF36:             If (var_A0.RecordCount > 0) Then
  loc_15DCF3C:               var_A0.MoveFirst
  loc_15DCF85:               var_114 = "'"
  loc_15DCF95:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_114), 0, 1
  loc_15DCFC4:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DCFCB:                 var_F4 = CVar(CLng(var_90)) 'Long
  loc_15DD010:                 var_E4 = CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("FromDate")), CVar(CLng(Me.FGrid1.Col)), var_F4, CVar(CLng(Me.FGrid1.Col)), var_114)) 'String
  loc_15DD018:                 Set var_278 = Me.FGrid1
  loc_15DD01E:                 LateIdCallSt
  loc_15DD03B:               Else
  loc_15DD03F:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DD057:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DD05C:                 var_164 = vbNullString
  loc_15DD066:                 Set var_220 = Me.FGrid1
  loc_15DD06C:                 LateIdCallSt
  loc_15DD07E:               End If
  loc_15DD081:             Else
  loc_15DD085:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DD09D:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DD0A2:               var_164 = vbNullString
  loc_15DD0AC:               Set var_220 = Me.FGrid1
  loc_15DD0B2:               LateIdCallSt
  loc_15DD0C4:             End If
  loc_15DD0C7:           Else
  loc_15DD0CB:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DD0E3:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DD0E8:             var_164 = vbNullString
  loc_15DD0F2:             Set var_220 = Me.FGrid1
  loc_15DD0F8:             LateIdCallSt
  loc_15DD10A:           End If
  loc_15DD123:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DD132:           Me.FGrid1.Col = var_B4
  loc_15DD141:         End If
  loc_15DD14B:         If (var_94 = (var_8C - 1)) Then
  loc_15DD165:           If (Me.Recordset15.RecordCount > 0) Then
  loc_15DD16E:             Me.Recordset15.MoveFirst
  loc_15DD173:           End If
  loc_15DD187:           var_B4 = "Code"
  loc_15DD19E:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15DD1C3:           Me.Recordset15.Find var_114 & Proc_6_38_E69628(CVar(var_220), "RoomNo='", 0, 1, var_F4, var_220, var_164) & "'", var_B4, var_220
  loc_15DD1EE:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DD204:             var_D4 = Me.FGrid1.Col
  loc_15DD23D:             var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_D4.Fields.Item("DocID")), CVar(CLng(var_D4)), CVar(CLng(var_90)))) 'String
  loc_15DD245:             Set var_278 = Me.FGrid1
  loc_15DD24B:             LateIdCallSt
  loc_15DD268:           Else
  loc_15DD26C:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DD284:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DD289:             var_164 = vbNullString
  loc_15DD293:             Set var_220 = Me.FGrid1
  loc_15DD299:             LateIdCallSt
  loc_15DD2AB:           End If
  loc_15DD2C4:           var_B4 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_15DD2D3:           Me.FGrid1.Col = var_B4
  loc_15DD2E2:         End If
  loc_15DD2E5:       Next var_29C 'Integer
  loc_15DD2F0:       var_90 = (var_90 + 1)
  loc_15DD2FD:       If (var_90 > (var_8A - 1)) Then
  loc_15DD319:         var_B4 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_15DD328:         Me.FGrid1.Col = var_B4
  loc_15DD337:       End If
  loc_15DD33D:       var_88.MoveNext
  loc_15DD356:       If (var_88.EOF = &HFF) Then
  loc_15DD359:         GoTo loc_15DD362
  loc_15DD35C:       End If
  loc_15DD35C:       GoTo loc_15DC4DF
  loc_15DD35F:     End If
  loc_15DD35F:     GoTo loc_15DC4C3
  loc_15DD362:     ' Referenced from:   15DD359
  loc_15DD362:   End If
  loc_15DD362: End If
  loc_15DD370: Me.FGrid1.Redraw = True
  loc_15DD37D: Set var_88 = Nothing
  loc_15DD385: Set var_9C = Nothing
  loc_15DD38D: Set var_A0 = Nothing
  loc_15DD390: Exit Sub
End Sub

Public Sub Proc_234_11_10D984C(arg_C, arg_10) '10D984C
  'Data Table: 43DCA8
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_F8 As String
  Dim arg_10 As Integer
  loc_10D954B: Me.FGrid1.Row = 0
  loc_10D9553: ' Referenced from: 10D97AA
  loc_10D9559: If (arg_10 < 5) Then
  loc_10D955C:   GoTo loc_10D97AD
  loc_10D955F: End If
  loc_10D9563: Set var_B0 = Me.FGrid1
  loc_10D9574: For var_B4 = arg_10 To (arg_10 - 2) Step &HFF: var_86 = var_B4 'Integer
  loc_10D957E:   var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9583:   var_C4 = 0
  loc_10D9590:   Set var_AC = Me.FGrid1
  loc_10D9596:   LateIdCallSt
  loc_10D95A4: Next var_B4 'Integer
  loc_10D95B8: For var_D8 = (arg_10 - 5) To (arg_10 - 3): var_86 = var_D8 'Integer
  loc_10D95C8:   If (var_86 = (arg_10 - 5)) Then
  loc_10D95CF:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D95D4:     var_C4 = &H3E8
  loc_10D95E1:     Set var_AC = Me.FGrid1
  loc_10D95E7:     LateIdCallSt
  loc_10D95F6:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D95FB:     var_C4 = 1
  loc_10D9605:     Set var_AC = Me.FGrid1
  loc_10D960B:     LateIdCallSt
  loc_10D9629:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D9632:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D9637:     var_F8 = "Room No"
  loc_10D9641:     Set var_10C = Me.FGrid1
  loc_10D9647:     LateIdCallSt
  loc_10D9659:   End If
  loc_10D9663:   If (var_86 = (arg_10 - 4)) Then
  loc_10D966A:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D966F:     var_C4 = &H4B0
  loc_10D967C:     Set var_AC = Me.FGrid1
  loc_10D9682:     LateIdCallSt
  loc_10D9691:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9696:     var_C4 = 1
  loc_10D96A0:     Set var_AC = Me.FGrid1
  loc_10D96A6:     LateIdCallSt
  loc_10D96C4:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D96CD:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D96D2:     var_F8 = "Status"
  loc_10D96DC:     Set var_10C = Me.FGrid1
  loc_10D96E2:     LateIdCallSt
  loc_10D96F4:   End If
  loc_10D96FE:   If (var_86 = (arg_10 - 3)) Then
  loc_10D9705:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D970A:     var_C4 = &H190
  loc_10D9717:     Set var_AC = Me.FGrid1
  loc_10D971D:     LateIdCallSt
  loc_10D972C:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9737:     var_C4 = CVar(CInt(4)) 'Integer
  loc_10D973F:     Set var_AC = Me.FGrid1
  loc_10D9745:     LateIdCallSt
  loc_10D9763:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D976C:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D9771:     var_F8 = vbNullString
  loc_10D977B:     Set var_10C = Me.FGrid1
  loc_10D9781:     LateIdCallSt
  loc_10D9793:   End If
  loc_10D9796: Next var_D8 'Integer
  loc_10D979D: Set var_B0 = Nothing 
  loc_10D97A7: arg_10 = (arg_10 - 6)
  loc_10D97AA: GoTo loc_10D9553
  loc_10D97AD: ' Referenced from: 10D955C
  loc_10D97D4: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_10D97ED:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_10D97FD:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_10D9816:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_10D9831:     Me.FGrid1.CellBackColor = &HFFFF00
  loc_10D983C:   Next var_114 'Integer
  loc_10D9844: Next var_110 'Integer
  loc_10D9849: Exit Sub
End Sub

Public Sub Proc_234_12_112E764(arg_C) '112E764
  'Data Table: 43DCA8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_11C As String
  Dim arg_30DC As Boolean
  loc_112E403: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112E40D: var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112E44F: If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "D") Then
  loc_112E46B:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112E47A:   Me.FGrid1.Col = var_A8
  loc_112E49C:   Me.FGrid1.CellBackColor = &HFFFF
  loc_112E4BD:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112E4CC:   Me.FGrid1.Col = &HFFFF
  loc_112E4EE:   Me.FGrid1.CellBackColor = &HFFFF
  loc_112E4F9: Else
  loc_112E50C:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112E516:   var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112E558:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "O") Then
  loc_112E574:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112E583:     Me.FGrid1.Col = var_A8
  loc_112E5A5:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112E5BD:     var_C8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_112E5C2:     var_11C = "Out Of Order"
  loc_112E5CC:     Set var_140 = Me.FGrid1
  loc_112E5D2:     LateIdCallSt
  loc_112E5FD:     Me.FGrid1.CellBackColor = &HFF
  loc_112E61E:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112E62D:     Me.FGrid1.Col = &HFF
  loc_112E64F:     Me.FGrid1.CellBackColor = &HFF
  loc_112E65A:   Else
  loc_112E66D:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112E677:     var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112E6B9:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "C") Then
  loc_112E6D5:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112E6E4:       Me.FGrid1.Col = var_A8
  loc_112E706:       Me.FGrid1.CellBackColor = &HFFFFFF
  loc_112E727:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112E736:       Me.FGrid1.Col = &HFFFFFF
  loc_112E758:       Me.FGrid1.CellBackColor = &HFFFFFF
  loc_112E760:     End If
  loc_112E760:   End If
  loc_112E760: End If
  loc_112E760: Exit Sub
  loc_112E761: arg_30DC = var_C8
End Sub
