VERSION 5.00
Begin VB.Form HKRoomBlock
  Caption = "Room Block"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 4560
  ClientHeight = 3030
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame Frame1
    Caption = "Room Block"
    BackColor = &HFFC0FF&
    Left = 2160
    Top = 6960
    Width = 7815
    Height = 1935
    Visible = 0   'False
    TabIndex = 30
    Begin TextBox Txt
      Index = 5
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1680
      Top = 1680
      Width = 2310
      Height = 285
      TabIndex = 40
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 4
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1680
      Top = 1320
      Width = 2310
      Height = 285
      TabIndex = 39
      BorderStyle = 0 'None
      MaxLength = 25
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 3
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1680
      Top = 960
      Width = 2310
      Height = 285
      TabIndex = 38
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1680
      Top = 555
      Width = 2310
      Height = 285
      TabIndex = 37
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 1
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1665
      Top = 255
      Width = 2310
      Height = 285
      TabIndex = 36
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin Label Label11
      Caption = "Reason"
      ForeColor = &HFF0000&
      Left = 720
      Top = 1680
      Width = 855
      Height = 255
      TabIndex = 35
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
    Begin Label Label10
      Caption = "Status"
      ForeColor = &HFF0000&
      Left = 720
      Top = 1320
      Width = 855
      Height = 255
      TabIndex = 34
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
    Begin Label Label9
      Caption = "To"
      ForeColor = &HFF0000&
      Left = 720
      Top = 960
      Width = 855
      Height = 255
      TabIndex = 33
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
    Begin Label Label8
      Caption = "From"
      ForeColor = &HFF0000&
      Left = 720
      Top = 600
      Width = 855
      Height = 255
      TabIndex = 32
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
    Begin Label Label7
      Caption = "Room #"
      ForeColor = &HFF0000&
      Left = 720
      Top = 240
      Width = 855
      Height = 255
      TabIndex = 31
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1080
    Top = 1575
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 23
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
  Begin Frame FrLabel
    Caption = "Frame1"
    BackColor = &HE0E0E0&
    Left = 360
    Top = 8775
    Width = 3780
    Height = 390
    Visible = 0   'False
    TabIndex = 21
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
    Begin Label LBLRoomName
      BackColor = &HE0E0E0&
      ForeColor = &HC00000&
      Left = 60
      Top = 15
      Width = 5970
      Height = 315
      Visible = 0   'False
      TabIndex = 22
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
  Begin Frame FrParameter
    Caption = "Parameter"
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 16065
    Height = 735
    TabIndex = 1
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
    Begin DataCombo dRoomCat
      Left = 3720
      Top = 0
      Width = 2295
      Height = 360
      TabIndex = 28
    End
    Begin TextBox Txt
      Index = 0
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1425
      Top = 0
      Width = 1230
      Height = 285
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin BtnEnh Cmd
      Index = 1
      Left = 10080
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 2
    End
    Begin BtnEnh CmdExit
      Left = 14385
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 4
    End
    Begin BtnEnh Cmd
      Index = 0
      Left = 9000
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 5
    End
    Begin BtnEnh Cmd
      Index = 2
      Left = 11145
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 6
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 13305
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 7
    End
    Begin BtnEnh BtnPrint
      Index = 0
      Left = 12225
      Top = 45
      Width = 1080
      Height = 660
      TabIndex = 8
    End
    Begin BtnEnh CmdRoomBlock
      Left = 7950
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 43
    End
    Begin Label Label6
      Caption = "Category"
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 2760
      Top = 0
      Width = 975
      Height = 255
      TabIndex = 29
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Expected Arrival"
      Index = 4
      ForeColor = &HFF0000&
      Left = 3285
      Top = 495
      Width = 1410
      Height = 225
      TabIndex = 12
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
      Caption = "Guest In House"
      Index = 3
      ForeColor = &HC0&
      Left = 1920
      Top = 495
      Width = 1290
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
    Begin Label Label1
      Caption = "Out Of Order "
      Index = 2
      ForeColor = &HFFFFFF&
      Left = 780
      Top = 495
      Width = 1125
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
      Caption = "Vacant "
      Index = 1
      ForeColor = &HC00000&
      Left = 75
      Top = 495
      Width = 675
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
    Begin Label Label2
      Index = 3
      BackColor = &HFF00&
      ForeColor = &H80000008&
      Left = 1890
      Top = 480
      Width = 1335
      Height = 270
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
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
    Begin Label Label2
      Index = 1
      BackColor = &HFF&
      ForeColor = &H80000008&
      Left = 750
      Top = 480
      Width = 1110
      Height = 270
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
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
    Begin Label Label2
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 30
      Top = 480
      Width = 705
      Height = 270
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
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
    Begin Label Label1
      Caption = "Display From"
      Index = 15
      ForeColor = &HC00000&
      Left = 75
      Top = 15
      Width = 1245
      Height = 240
      TabIndex = 17
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
    Begin Label Label2
      Index = 4
      BackColor = &HFFFF00&
      ForeColor = &H80000008&
      Left = 3255
      Top = 480
      Width = 1455
      Height = 270
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
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
    Begin Label Label3
      Caption = "*"
      BackColor = &HE0E0E0&
      ForeColor = &HFF&
      Left = 4740
      Top = 480
      Width = 285
      Height = 270
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Courier New"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label4
      Caption = "With advance"
      ForeColor = &H404040&
      Left = 5055
      Top = 495
      Width = 1155
      Height = 225
      TabIndex = 10
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
    Begin Label Label5
      Caption = "d"
      ForeColor = &HFF&
      Left = 6195
      Top = 495
      Width = 105
      Height = 225
      TabIndex = 9
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
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2580
    Width = 4560
    Height = 450
    Visible = 0   'False
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 750
    Width = 11820
    Height = 6270
    TabIndex = 24
  End
  Begin BtnEnh CmdUP
    Left = 16230
    Top = 3465
    Width = 1110
    Height = 885
    TabIndex = 25
  End
  Begin BtnEnh CmdDown
    Left = 16245
    Top = 4350
    Width = 1110
    Height = 885
    TabIndex = 26
  End
  Begin DataGrid DGCategory
    Left = 12720
    Top = 3240
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
  Begin MSFlexGrid FGPoint
    Left = 13680
    Top = 960
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 42
  End
  Begin Label Label2
    Index = 2
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 1650
    Top = 9885
    Width = 285
    Height = 270
    TabIndex = 27
    BorderStyle = 1 'Fixed Single
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
End

Attribute VB_Name = "HKRoomBlock"

Private global_112 As Long
Private global_136 As Double
Private global_56 As Integer
Private global_58 As Integer
Private global_96 As Integer
Private global_80 As Double
Private global_100 As Integer
Private global_108 As Long

Private Sub CmdRoomBlock_UnknownEvent_9 'EEFDF4
  'Data Table: 4FFC8C
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_DC As Variant
  Dim var_F4 As TextBox
  loc_EEFD40: Me.Frame1.Visible = True
  loc_EEFD5B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EEFD6D: Set var_DC = Me.FGrid
  loc_EEFD8A: Set var_F0 = Me.Txt
  loc_EEFD90: Call 0.Method_CmdRoomBlock_UnknownEvent_90 (1, var_F4, CStr(var_DC.TextMatrix)))
  loc_EEFD98: var_F4.Text = 0
  loc_EEFDC6: Set var_88 = Me.Txt
  loc_EEFDCC: Call 0.Method_CmdRoomBlock_UnknownEvent_90 (2, var_DC)
  loc_EEFDD4: var_DC.Text = CStr(global_136)
  loc_EEFDED: Call Txt_Validate(2)
  loc_EEFDF2: Exit Sub
End Sub

Private Sub Form_Load() '109ADFC
  'Data Table: 4FFC8C
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_D8 As TextBox
  Dim var_D4 As DataGrid
  loc_109AB4C: On Error Goto loc_109ADF3
  loc_109AB56: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_109AB69: Me.FrParameter.BackColor = CLng(MemVar_1F951B4)
  loc_109AB84: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_109AB94: global_112 = &HFDC293
  loc_109ABA6: Set var_88 = Me.Label2
  loc_109ABAC: Call 0.Method_Form_Load0 (4, var_AC)
  loc_109ABB4: var_AC.BackColor = global_112
  loc_109ABF4: Set var_88 = Me.Txt
  loc_109ABFA: Call 0.Method_Form_Load0 (CInt(0), var_AC, CStr(MemVar_1F950EC), &HFFFFFF)
  loc_109AC02: var_AC.Text = &H40C0
  loc_109AC18: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), &HFF00)
  loc_109AC30: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_109AC38: Call Proc_261_36_1036E74(global_112)
  loc_109AC42: Call Cmd_UnknownEvent_9()
  loc_109AC4B: Set var_AC = Me.dRoomCat
  loc_109AC51: var_BC = "Code"
  loc_109AC72: Proc_6_139_EFA09C("Select Name as Name ,Code as Code From RoomCat WHERE InclCount='Y' Order By Name", var_AC, "Name")
  loc_109AC91: Set var_88 = Me.dRoomCat
  loc_109AC97: var_88.defText = vbNullString
  loc_109ACBB: Me.var_88.CursorLocation = 3
  loc_109ACE5: var_CC = CVar("Select distinct Code As Code,Name,ShortName From BlockMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_109ACEF: Me.Open var_CC, CVar(MemVar_1F95044), 2
  loc_109AD03: CVarUnk
  loc_109AD08: VerifyVarObj
  loc_109AD14: LateIdStAd
  loc_109AD2C: Set global_132 = New 
  loc_109AD3E: Me.DGCategory.CursorLocation = 3
  loc_109AD51: Set var_D4 = Me.Txt
  loc_109AD57: Call 0.Method_Form_Load0 (CInt(4), var_D8, var_DC, Me.DGCategory, New)
  loc_109AD5F: 3 = var_D8.Height
  loc_109AD72: Set var_88 = Me.Txt
  loc_109AD78: Call 0.Method_Form_Load0 (CInt(4), var_AC, var_D0)
  loc_109AD80: -1 = var_AC.Top
  loc_109AD90: var_98 = CVar(((var_D0 + var_DC) + CDbl(&HA))) 'Single
  loc_109AD9F: Me.DGCategory.Top = CVar(MemVar_1F95044)
  loc_109ADBF: Set var_88 = Me.Txt
  loc_109ADC5: Call 0.Method_Form_Load0 (CInt(4), var_AC, var_D0)
  loc_109ADCD: var_BC = var_AC.Left
  loc_109ADE4: Me.DGCategory.Left = CVar(var_D0)
  loc_109ADF2: Exit Sub
  loc_109ADF3: ' Referenced from: 109AB4C
  loc_109ADF3: Proc_6_60_E63754(0)
  loc_109ADF8: Exit Sub
End Sub

Private Sub Form_Resize() 'F9CA4C
  'Data Table: 4FFC8C
  Dim var_94 As Variant
  loc_F9C8D8: On Error Resume Next
  loc_F9C8F0: Me.FGrid.Width = CVar(CDbl(16150))
  loc_F9C924: Call 0.Method_arg_108 (var_AC)
  loc_F9C934: var_94 = CVar(((var_AC - Me.FrLabel.Height) - Me.FrParameter.Height)) 'Single
  loc_F9C943: Me.FGrid.Height = CVar(CDbl(16150))
  loc_F9C977: Me.FGrid.Left = CVar(Me.FrParameter.Left)
  loc_F9C9B0: var_94 = CVar((Me.FrParameter.Top + Me.FrParameter.Height)) 'Single
  loc_F9C9BF: Me.FGrid.Top = CVar(Me.FrParameter.Left)
  loc_F9C9EE: Me.FrLabel.Left = Me.FrParameter.Left
  loc_F9CA33: Me.FrLabel.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_F9CA4A: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E11454
  'Data Table: 4FFC8C
  loc_E1144B: Set global_104 = Nothing
  loc_E11452: Exit Sub
End Sub

Private Sub Form_Activate() 'E19F38
  'Data Table: 4FFC8C
  loc_E19F24: Set var_88 = Me.FGrid
  loc_E19F35: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E292E0
  'Data Table: 4FFC8C
  loc_E292B8: On Error Goto loc_E292D8
  loc_E292CF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E292D7: Exit Sub
  loc_E292D8: ' Referenced from: E292B8
  loc_E292D8: Proc_6_60_E63754(Shift)
  loc_E292DD: Exit Sub
End Sub

Private Sub CmdDown_UnknownEvent_9 'F020A0
  'Data Table: 4FFC8C
  Dim var_BC As Variant
  loc_F01FFB: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F02017:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F02026:   Me.FGrid.Row = var_BC
  loc_F0204E:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F0205D:   Me.FGrid.ColSel = var_BC
  loc_F0208E:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F0209D: End If
  loc_F0209D: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E19F84
  'Data Table: 4FFC8C
  loc_E19F79: Me.Global.Unload Me
  loc_E19F81: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E34864
  'Data Table: 4FFC8C
  loc_E34858: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E3485B:   Call DGCategory_UnknownEvent_9()
  loc_E34860: End If
  loc_E34860: Exit Sub
End Sub

Private Sub CmdUp_UnknownEvent_9 'EE3C58
  'Data Table: 4FFC8C
  Dim var_A8 As Variant
  loc_EE3BB3: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE3BCF:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE3BDE:   Me.FGrid.Row = var_A8
  loc_EE3C06:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE3C15:   Me.FGrid.ColSel = var_A8
  loc_EE3C46:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE3C55: End If
  loc_EE3C55: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F0F7E8
  'Data Table: 4FFC8C
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F0F716: Set var_88 = Me.TxtGrid
  loc_F0F71C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F0F72A: Proc_6_74_E23240(var_8C)
  loc_F0F736: Call Proc_261_42_DFD55C(var_8C)
  loc_F0F747: If (Index = 0) Then
  loc_F0F75D:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F0F79C:   Set var_108 = Me.TxtGrid
  loc_F0F7A2:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F0F7AA:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F0F7DB:   var_114 = CLng(Me.FGrid.Col)
  loc_F0F7E4: End If
  loc_F0F7E4: Exit Sub
  loc_F0F7E5: StAryRecMove
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F01F78
  'Data Table: 4FFC8C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_F01EAC: If (KeyCode = 0) Then
  loc_F01EB9:   If (CLng(Shift) = &H1B) Then
  loc_F01EC9:     Set var_8C = Me.TxtGrid
  loc_F01ECF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F01EE9:     Set var_98 = Me.TxtGrid
  loc_F01EEF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F01EF7:     var_9C.Text = var_90.Tag
  loc_F01F13:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_F01F18:     Call Proc_261_42_DFD55C(arg_14)
  loc_F01F21:     Set var_8C = Me.FGrid
  loc_F01F3E:     Set var_8C = Me.TxtGrid
  loc_F01F44:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_F01F4C:     var_90.Visible = FGrid.DispID_8001
  loc_F01F58:     Exit Sub
  loc_F01F59:   End If
  loc_F01F6C:   var_B0 = CLng(Me.FGrid.Col)
  loc_F01F75: End If
  loc_F01F75: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E53B5C
  'Data Table: 4FFC8C
  Dim var_A0 As Long
  loc_E53B2B: Proc_6_58_E06050(arg_10)
  loc_E53B3C: If (KeyAscii = 0) Then
  loc_E53B52:   var_A0 = CLng(Me.FGrid.Col)
  loc_E53B5B: End If
  loc_E53B5B: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E55B9C
  'Data Table: 4FFC8C
  Dim var_A0 As Long
  loc_E55B64: On Error Goto loc_E55B93
  loc_E55B73: If (KeyCode = 0) Then
  loc_E55B89:   var_A0 = CLng(Me.FGrid.Col)
  loc_E55B92: End If
  loc_E55B92: Exit Sub
  loc_E55B93: ' Referenced from: E55B64
  loc_E55B93: Proc_6_60_E63754(var_A0)
  loc_E55B98: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22088
  'Data Table: 4FFC8C
  Dim arg_10 As Integer
  loc_E22070: If (Cancel = 0) Then
  loc_E22079:   Call Proc_261_38_E559DC(Cancel, var_88)
  loc_E22082:   arg_10 = Not(var_88)
  loc_E22085: End If
  loc_E22085: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F42DF4
  'Data Table: 4FFC8C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F42CEB: Me.DGCategory.Visible = False
  loc_F42D0A: If (Me.RecordCount > 0) Then
  loc_F42D49:   Set var_B4 = Me.Txt
  loc_F42D4F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(4), var_B8)
  loc_F42D57:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F42D8A:   var_B0 = Me.Fields.Item("Name")
  loc_F42DA9:   Set var_B4 = Me.Txt
  loc_F42DAF:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(4), var_B8)
  loc_F42DB7:   var_B8.Text = CStr(var_B0.Value)
  loc_F42DCD: End If
  loc_F42DD8: Set var_A8 = Me.Txt
  loc_F42DDE: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(4))
  loc_F42DE6: var_B0.SetFocus
  loc_F42DF2: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'ECB990
  'Data Table: 4FFC8C
  Dim var_9C As DataGrid
  Dim var_BC As Variant
  loc_ECB8EC: Set var_88 = Me.DGCategory
  loc_ECB905: Me.DGCategory.InsertColumnLabels DGCategory.DispID_1D, 
  loc_ECB93E: If (CDbl(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF)))) < CDbl(CLng(var_AC))) Then
  loc_ECB945:   Set var_88 = Me.DGCategory
  loc_ECB96F:   var_BC = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_ECB977:   Set var_9C = Me.DGCategory
  loc_ECB98C: End If
  loc_ECB98C: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '105D8D0
  'Data Table: 4FFC8C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_CC As Long
  Dim var_EC As Long
  Dim var_8C As MSHFlexGrid
  loc_105D667: var_86 = Cancel
  loc_105D670: If (var_86 = 0) Then
  loc_105D67E:   Set var_8C = Me.Txt
  loc_105D684:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_105D6AD:   If (Proc_6_27_EA61EC(var_90, "Start Date") = 0) Then
  loc_105D6B0:     Exit Sub
  loc_105D6B1:   End If
  loc_105D6BF:   Set var_8C = Me.Txt
  loc_105D6C5:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_105D6CD:   var_98 = var_90.Text
  loc_105D6D6:   Set var_94 = Me.dRoomCat
  loc_105D6DC:   var_A8 = var_94.BoundText
  loc_105D6FF:   Call Proc_261_43_15F7C24(CDate(var_98), 1, "RoomNo")
  loc_105D71C: Else
  loc_105D722:   If (var_86 = 1) Then
  loc_105D725:     var_CC = 1
  loc_105D72E:     var_EC = 1
  loc_105D741:     var_A8 = Me.FGrid.ColHeaderCaption)
  loc_105D75B:     Set var_90 = Me.Txt
  loc_105D761:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_94, var_98, var_A8)
  loc_105D769:     var_EC = var_94.Text
  loc_105D7A4:     If (CDate(Right(CVar(CStr(var_A8)), 9)) <> CDate(var_98)) Then
  loc_105D7A7:       var_CC = 1
  loc_105D7B0:       var_EC = 1
  loc_105D7C3:       var_A8 = Me.FGrid.ColHeaderCaption)
  loc_105D815:       Call Proc_261_43_15F7C24(CDate((CDate(Right(CVar(CStr(var_A8)), 9)) - CDbl(1))), &HFF, "RoomNo", CStr(Me.dRoomCat.BoundText), var_A8)
  loc_105D835:     End If
  loc_105D838:   Else
  loc_105D83E:     If (var_86 = 2) Then
  loc_105D841:       var_CC = 1
  loc_105D85D:       var_A8 = Me.FGrid.ColHeaderCaption)
  loc_105D8AF:       Call Proc_261_43_15F7C24(CDate((CDate(Right(CVar(CStr(var_A8)), 9)) + CDbl(1))), 1, "RoomNo", CStr(Me.dRoomCat.BoundText), var_A8, &H1E)
  loc_105D8CF:     End If
  loc_105D8CF:   End If
  loc_105D8CF: End If
  loc_105D8CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60DC4
  'Data Table: 4FFC8C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E60D8F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60DA2: Set var_A8 = Me.TxtGrid
  loc_E60DA8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60DB0: var_AC.Visible = False
  loc_E60DBC: Call Proc_261_42_DFD55C()
  loc_E60DC1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68CA0
  'Data Table: 4FFC8C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68C5C: Set var_88 = Me.TxtGrid
  loc_E68C62: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68C7C: If (var_8C.Visible = 0) Then
  loc_E68C95:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E68C9D: End If
  loc_E68C9D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'EC40D0
  'Data Table: 4FFC8C
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_EC As Variant
  loc_EC4044: var_A8 = 1
  loc_EC4066: var_C8 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_EC4075: var_EC = Me.FGrid.ColHeaderCaption)
  loc_EC40AF: global_136 = CDate(Proc_6_34_14EEAAC(CStr(Mid(CVar(CStr(var_EC)), &HF, 10)), var_EC))
  loc_EC40CD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '103D0D8
  'Data Table: 4FFC8C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_103CE8C: Set var_88 = Me.TopCtrl1
  loc_103CE92: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103CED7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_103CEE0:   Call Form_KeyDown(Cancel, arg_10)
  loc_103CEE5: End If
  loc_103CEE9: Set var_88 = Me.TopCtrl1
  loc_103CEEF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103CF08: If (CStr() = "Browse") Then
  loc_103CF0B:   Exit Sub
  loc_103CF0C: End If
  loc_103CF80: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_103CF99:   Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103CFA9:   var_9C = "+{Tab}"
  loc_103CFAF:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_103CFB9:   Cancel = 0
  loc_103CFBF: Else
  loc_103CFC9:   var_B0 = Me.FGrid.Rows
  loc_103D016:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_103D02F:     Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103D045:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_103D04F:     Cancel = 0
  loc_103D052:   End If
  loc_103D052: End If
  loc_103D058: global_56 = Cancel
  loc_103D07E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_103D0A2: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_103D0B8:   var_EC = CLng(Me.FGrid.Col)
  loc_103D0C1: End If
  loc_103D0C7: If (Cancel = &HD) Then
  loc_103D0CF:   global_58 = 0
  loc_103D0D2: End If
  loc_103D0D4: Cancel = 0
  loc_103D0D7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0FF40
  'Data Table: 4FFC8C
  loc_E0FF31: Call FGrid_UnknownEvent_C()
  loc_E0FF3B: global_58 = 0
  loc_E0FF3E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4E3D8
  'Data Table: 4FFC8C
  loc_E4E3CE: If (CLng(Cancel) = &HD) Then
  loc_E4E3D1:   Call Proc_261_37_1302644(CLng(Me.FGrid.Col))
  loc_E4E3D6: End If
  loc_E4E3D6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E450F8
  'Data Table: 4FFC8C
  Dim var_8C As TextBox
  loc_E450CC: Call Proc_261_42_DFD55C()
  loc_E450DC: Set var_88 = Me.TxtGrid
  loc_E450E2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E450EA: var_8C.Visible = False
  loc_E450F6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'FAF428
  'Data Table: 4FFC8C
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_F4 As Variant
  Dim var_104 As String
  Dim var_220 As String
  Dim unk_4FFC92 As Connection15
  loc_FAF2F7: var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FAF2FC: var_D0 = 0
  loc_FAF30F: var_F4 = Me.FGrid.TextMatrix)
  loc_FAF329: Proc_6_7_F26918(var_12C, Date, var_F4)
  loc_FAF37C: var_104 = "Insert into RoomBlockOut (RoomCode,Type,Site_Code,U_Name,FromDate,LogSite_Code,VTime) Values ('" & CStr(var_F4) & "','M','" & MemVar_1F95078
  loc_FAF3C7: var_220 = CStr(CVar(var_104 & "','" & MemVar_1F950C8 & "',") & var_12C & ",'" & CVar(MemVar_1F95078) & "','" & Format(Time, "hh:nn") & "')")
  loc_FAF3D1: unk_4FFC92.Execute var_220, var_240, -1
  loc_FAF41D: Me.Frame1.Visible = False
  loc_FAF425: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '13FC7A4
  'Data Table: 4FFC8C
  Dim unk_4FFC92 As Connection15
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
  loc_13FBDC0: On Error Goto loc_13FC79D
  loc_13FBDC8: global_96 = &HFF
  loc_13FBDE1: unk_4FFC92.Execute "Select * From FAEnviro", var_B8, -1
  loc_13FBDEC: Set var_94 = var_BC
  loc_13FBE04: var_BC = var_94.Fields
  loc_13FBE68: var_13C = IIf((Proc_6_38_E69628(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_13FBE71: MemVar_1F953C4 = CStr(var_13C)
  loc_13FBF05: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13FBF0E: MemVar_1F953C8 = CStr(var_13C)
  loc_13FBFA2: var_13C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13FBFE3: var_C0 = var_94.Fields.Item("linefiller")
  loc_13FBFFA: var_D8 = "linefiller"
  loc_13FC006: var_C8 = var_94.Fields
  loc_13FC00E: var_DC = var_C8.Item(var_D8)
  loc_13FC022: var_10C = "-"
  loc_13FC038: var_FC = (Proc_6_38_E69628(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13FC048: MemVar_1F953D0 = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E69628(CVar(var_DC)))))
  loc_13FC06F: global_88 = "23 Day Room Availability Forecast (Report)"
  loc_13FC076: var_88 = "Day23RoomAvail"
  loc_13FC07F: var_A8 = global_88
  loc_13FC096: global_92 = CStr(Ucase(var_A8))
  loc_13FC0B2: If ((global_96 = 0) Or (var_88 = vbNullString)) Then
  loc_13FC0B5:   Exit Sub
  loc_13FC0B6: End If
  loc_13FC0B6: Call Day23RoomAvail()
  loc_13FC0E2: Set var_BC = global_104 
  loc_13FC0E9: CreateFieldDefFile(var_BC, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13FC11B: var_C4 = "\" & var_88
  loc_13FC12F: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13FC13A: MemVar_1F951E8 = var_BC
  loc_13FC166: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13FC16E: Call 0.Method_arg_2C (var_FC, MemVar_1F953D0)
  loc_13FC17C: Call 0.Method_arg_150 (global_96)
  loc_13FC192: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FC19A: Call 0.Method_arg_24 (var_8A)
  loc_13FC1A6: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13FC1BF:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FC1C7:   Call 0.Method_arg_20 (var_C0)
  loc_13FC1CF:   Call 0.Method_arg_30 (var_C4)
  loc_13FC1E5:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13FC215:   If (var_160 = Ucase("Title")) Then
  loc_13FC23C:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FC244:     Call 0.Method_arg_20 (var_C0)
  loc_13FC24C:     Call 0.Method_arg_38 ("'" & global_88 & "'")
  loc_13FC262:   Else
  loc_13FC284:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13FC298:       Set var_BC = Me.Txt
  loc_13FC29E:       Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13FC2C9:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13FC2D1:       Call 0.Method_arg_20 (var_DC)
  loc_13FC2D9:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13FC2F5:     Else
  loc_13FC317:       If (var_160 = Ucase("Dater")) Then
  loc_13FC33B:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FC343:         Call 0.Method_arg_20 (var_C0)
  loc_13FC34B:         Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_13FC361:       Else
  loc_13FC383:         If (var_160 = Ucase("Pager")) Then
  loc_13FC38D:           var_C4 = "'" & MemVar_1F953C8
  loc_13FC3A7:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FC3AF:           Call 0.Method_arg_20 (var_C0)
  loc_13FC3B7:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13FC3CA:         End If
  loc_13FC3CA:       End If
  loc_13FC3CA:     End If
  loc_13FC3CA:   End If
  loc_13FC3CD: Next var_150 'Integer
  loc_13FC3E3: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FC3EB: Call 0.Method_arg_24 (var_8A)
  loc_13FC3F7: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13FC404:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13FC415:     Set var_BC = Me.Txt
  loc_13FC41B:     Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13FC435:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13FC442:     global_80 = CDate(Ucase("Pager"))
  loc_13FC462:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FC46A:     Call 0.Method_arg_20 (var_C4, global_80)
  loc_13FC472:     Call 0.Method_arg_30 (1)
  loc_13FC488:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13FC4BF:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13FC51E:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FC526:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_80, "DDD")) & "'"), 1)
  loc_13FC52E:       Call 0.Method_arg_38 ("'")
  loc_13FC54D:     Else
  loc_13FC576:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13FC596:         var_12C = CVar(CStr(Day(global_80))) 'String
  loc_13FC5BE:         var_11C = Space((2 - Len(CStr(Day(global_80)))))
  loc_13FC5C6:         var_13C = (var_12C + Ucase(Format(global_80, "DDD")))
  loc_13FC5FC:         var_1CC = Space((2 - Len(CStr(Month(global_80)))))
  loc_13FC61F:         var_20C = (var_1CC + CVar(CStr(Month(global_80))))
  loc_13FC644:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FC64C:         Call 0.Method_arg_20 (var_C0)
  loc_13FC654:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_80, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13FC690:       End If
  loc_13FC690:     End If
  loc_13FC693:   Next var_16A 'Integer
  loc_13FC69B: Next var_166 'Integer
  loc_13FC6A6: If (Cancel = 1) Then
  loc_13FC6B6:   ReDim Preserve var_90(0 To 1)
  loc_13FC6D1:   Set var_BC = Me.Txt
  loc_13FC6D7:   Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13FC6FA:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13FC70B: End If
  loc_13FC711: If (Cancel = 1) Then
  loc_13FC735:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_80, "DDD")), var_12C)
  loc_13FC745:   Call Proc_261_45_16B736C()
  loc_13FC74D: Else
  loc_13FC752:   Set var_C0 = Nothing
  loc_13FC769:   Set var_BC = MemVar_1F951E8 
  loc_13FC775:   Proc_6_99_1484404(var_BC, Cancel, global_92)
  loc_13FC780:   MemVar_1F951E8 = var_BC
  loc_13FC78B: End If
  loc_13FC790: global_100 = 0
  loc_13FC798: MemVar_1F951E8 = Nothing
  loc_13FC79C: Exit Sub
  loc_13FC79D: ' Referenced from: 13FBDC0
  loc_13FC79D: Proc_6_60_E63754(global_100, &HFF)
  loc_13FC7A2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F983B4
  'Data Table: 4FFC8C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_F98252: Set var_88 = Me.Txt
  loc_F98258: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F98266: Proc_6_74_E23240(var_8C)
  loc_F98272: Call Proc_261_42_DFD55C(var_8C)
  loc_F9827A: var_92 = Index
  loc_F98285: If (var_92 = CInt(4)) Then
  loc_F9829F:   If (Me.RecordCount > 0) Then
  loc_F982AD:     Set var_8C = Me.FGPoint
  loc_F982C5:     Proc_6_137_1192FDC(Me.DGCategory, global_128, Index)
  loc_F982D3:   End If
  loc_F98321:   Set var_88 = Me.Txt
  loc_F98327:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_F9832F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_F98347:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_F9834A:     Exit Sub
  loc_F9834B:   End If
  loc_F98351:   Me.MoveFirst
  loc_F98374:   Set var_88 = Me.Txt
  loc_F9837A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_F98382:   0 = var_8C.Text
  loc_F9839B:   Me.Find 1 & var_A0 & "'", var_B8, var_92
  loc_F983B0: End If
  loc_F983B0: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10816F0
  'Data Table: 4FFC8C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  loc_108146A: If (CLng(Shift) = &H1B) Then
  loc_108146D:   Call Proc_261_42_DFD55C()
  loc_1081472:   Exit Sub
  loc_1081473: End If
  loc_1081476: var_86 = KeyCode
  loc_1081481: If (var_86 = CInt(4)) Then
  loc_1081488:   Set var_A8 = Me.DGCategory
  loc_10814A1:   Set var_A0 = Me.FGPoint
  loc_10814AC:   Set var_9C = Nothing
  loc_10814DE:   Proc_6_69_134A630(var_A8, Me.Txt, CInt(4), global_128, Shift, 0)
  loc_108154D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1081554:     Set var_9C = Me.DGCategory
  loc_108155B:     Set var_90 = Me.FGPoint
  loc_1081573:     Proc_6_138_106E830(var_9C, global_128, KeyCode, var_90, 1)
  loc_1081581:   End If
  loc_1081584: Else
  loc_108158C:   If (var_86 = CInt(5)) Then
  loc_10815AD:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(5))) Then
  loc_10815E7:       If (MsgBox("Save Record ?", 4, "Save Data", var_114, var_134) = 6) Then
  loc_10815EA:         Call TopCtrl1_UnknownEvent_16()
  loc_10815EF:       End If
  loc_10815EF:     End If
  loc_10815EF:   End If
  loc_10815EF: End If
  loc_108160B: If (CBool(Me.DGCategory.Visible) = 0) Then
  loc_108162C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_1081639:     Set var_8C = Me.Txt
  loc_108163F:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_9C)
  loc_108165F:     Set var_A0 = Me.Txt
  loc_1081665:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, Proc_6_33_15125B8(var_90, var_A0))
  loc_108166D:     var_A8.Text = 0
  loc_1081685:     Call Cmd_UnknownEvent_9()
  loc_1081693:     Set var_8C = Me.Cmd
  loc_1081699:     Call 0.Method_Txt_KeyDown0 (0, var_90)
  loc_10816A1:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001(0)
  loc_10816B0:     Exit Sub
  loc_10816B1:   End If
  loc_10816C6:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10816CF:     Proc_6_75_E5335C(Shift, arg_14)
  loc_10816D4:   End If
  loc_10816DE:   If (CLng(Shift) = &H26) Then
  loc_10816E7:     Proc_6_76_E533C8(Shift, arg_14)
  loc_10816EC:   End If
  loc_10816EC: End If
  loc_10816EC: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EF0FC8
  'Data Table: 4FFC8C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_EF0F00: On Error Goto loc_EF0FBF
  loc_EF0F06: Proc_6_58_E06050(arg_10)
  loc_EF0F11: Proc_6_133_E7FB08(var_94)
  loc_EF0F23: var_96 = KeyAscii
  loc_EF0F2E: If (var_96 = CInt(4)) Then
  loc_EF0F4D:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_EF0F7E:     Proc_6_89_1470B00(Me.Txt, CInt(4), global_128, CInt(Me.DGCategory.Visible), "Name")
  loc_EF0FB0:     Proc_6_138_106E830(Me.DGCategory, global_128, KeyAscii, Me.FGPoint)
  loc_EF0FBE:   End If
  loc_EF0FBE: End If
  loc_EF0FBE: Exit Sub
  loc_EF0FBF: ' Referenced from: EF0F00
  loc_EF0FBF: Proc_6_60_E63754(0, var_96)
  loc_EF0FC4: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EAC808
  'Data Table: 4FFC8C
  loc_EAC796: If (KeyCode = CInt(4)) Then
  loc_EAC7B5:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_EAC7C9:     var_A8 = "Name"
  loc_EAC7F1:     Proc_6_68_12A2818(Me.DGCategory, Me.Txt, CInt(4), global_128)
  loc_EAC804:   End If
  loc_EAC804: End If
  loc_EAC804: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E77C
  'Data Table: 4FFC8C
  loc_E4E75A: Set var_88 = Me.Txt
  loc_E4E760: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E76E: Proc_6_73_E23294(var_8C)
  loc_E4E77A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10D6314
  'Data Table: 4FFC8C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_EC As TextBox
  loc_10D601C: On Error Goto loc_10D630E
  loc_10D6022: var_86 = Cancel
  loc_10D602D: If (var_86 = CInt(0)) Then
  loc_10D603D:   Set var_8C = Me.Txt
  loc_10D6043:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D607B:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_10D6090:     Set var_8C = Me.Txt
  loc_10D6096:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D609E:     var_90.Text = CStr(MemVar_1F950EC)
  loc_10D60B0:   Else
  loc_10D60BA:     Set var_8C = Me.Txt
  loc_10D60C0:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D60E0:     Set var_EC = Me.Txt
  loc_10D60E6:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_10D60EE:     var_F0.Text = Proc_6_33_15125B8(var_90)
  loc_10D6101:   End If
  loc_10D610E:   Set var_8C = Me.Txt
  loc_10D6114:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6145:   If (CDate(CDate(var_90.Text)) < Date) Then
  loc_10D6152:     Set var_8C = Me.Txt
  loc_10D6158:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6160:     var_90.SetFocus
  loc_10D616E:     arg_10 = &HFF
  loc_10D6171:     Exit Sub
  loc_10D6172:   End If
  loc_10D6175: Else
  loc_10D617D:   If (var_86 = CInt(4)) Then
  loc_10D618B:     Set var_8C = Me.Txt
  loc_10D6191:     Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_10D61BA:     If (Proc_6_27_EA61EC(var_90, "Room Category") = 0) Then
  loc_10D61C7:       Set var_8C = Me.Txt
  loc_10D61CD:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D61D5:       var_90.SetFocus
  loc_10D61E3:       arg_10 = &HFF
  loc_10D61E6:       Exit Sub
  loc_10D61E7:     End If
  loc_10D61FB:     If (Me.EOF = 0) Then
  loc_10D6239:       Set var_E8 = Me.Txt
  loc_10D623F:       Call 0.Method_Txt_Validate0 (Cancel, var_EC, CStr(Me.Fields.Item("Name").Value))
  loc_10D6247:       var_EC.Text = arg_10
  loc_10D627A:       var_90 = Me.Fields.Item("Code")
  loc_10D6298:       Set var_E8 = Me.Txt
  loc_10D629E:       Call 0.Method_Txt_Validate0 (Cancel, var_EC, CStr(var_90.Value))
  loc_10D62A6:       var_EC.Tag = arg_10
  loc_10D62BF:     Else
  loc_10D62CC:       Set var_8C = Me.Txt
  loc_10D62D2:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D62DA:       var_90.Text = vbNullString
  loc_10D62F3:       Set var_8C = Me.Txt
  loc_10D62F9:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6301:       var_90.Tag = vbNullString
  loc_10D630D:     End If
  loc_10D630D:   End If
  loc_10D630D: End If
  loc_10D630D: Exit Sub
  loc_10D630E: ' Referenced from: 10D601C
  loc_10D630E: Proc_6_60_E63754(var_86)
  loc_10D6313: Exit Sub
End Sub

Public Sub Day23RoomAvail() '110307C
  'Data Table: 4FFC8C
  Dim var_A4 As Recordset15
  Dim var_C4 As String
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim Me As Variant
  loc_1102D50: On Error Goto loc_110306D
  loc_1102D6D: Call Proc_261_46_F87A64(New)
  loc_1102D88: Set var_8C = Me.FGrid
  loc_1102DA4: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1102DB0:   Set var_A4 = var_8C 
  loc_1102DBF:   var_A4.AddNew var_B4, var_C4
  loc_1102DE9:   var_A4.Fields.Item("mLine").Value = vbNullString
  loc_1102E47:   var_A4.Fields.Item("RoomNo").Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), 0, CVar(CLng(var_86))))
  loc_1102EAF:   var_A4.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_86))))
  loc_1102ECD:   For var_120 = 5 To &H1B: var_88 = var_120 'Integer
  loc_1102F17:     If (Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86))) = "@  RFF") Then
  loc_1102F49:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = "***"
  loc_1102F5E:     Else
  loc_1102FD0:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = Left(CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)))), &HF)
  loc_1102FF2:     End If
  loc_1102FF5:   Next var_120 'Integer
  loc_1102FFA:   var_C4 = "*"
  loc_1103003:   var_B4 = "Mark"
  loc_110301F:   var_A4.Fields.Item(var_B4).Value = var_C4
  loc_1103036:   var_A4.Update var_B4, var_C4
  loc_110303D:   Set var_A4 = Nothing 
  loc_1103044: Next var_A0 'Integer
  loc_1103060: If (Me.RecordCount <= 0) Then
  loc_1103068:   global_96 = 0
  loc_110306B:   Exit Sub
  loc_110306C: End If
  loc_110306C: Exit Sub
  loc_110306D: ' Referenced from: 1102D50
  loc_1103075: Proc_6_60_E63754(0)
  loc_110307A: Exit Sub
End Sub

Public Property Get OpenMode() 'E09B10
  'Data Table: 4FFC8C
  loc_E09B09: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E02B84
  'Data Table: 4FFC8C
  loc_E02B7E: global_108 = vNewValue
  loc_E02B81: Exit Sub
  loc_E02B82: BranchFVar 5375
End Sub

Public Sub Proc_261_36_1036E74
  'Data Table: 4FFC8C
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_1036C36: Me.FGrid.Left = CVar(CDbl(0))
  loc_1036C51: Me.FGrid.Top = CVar(CDbl(495))
  loc_1036C5E: var_88 = &H249
  loc_1036C65: Set var_B4 = Me.FGrid
  loc_1036C7C: global_52 = CStr(CLng(var_B4.BackColor))
  loc_1036C92: var_B4.Cols = &H23
  loc_1036C97: var_9C = 0
  loc_1036CA3: var_D8 = CVar(CLng(1)) 'Long
  loc_1036CA8: var_F8 = "SNo"
  loc_1036CB1: LateIdCallSt
  loc_1036CBC: var_9C = CVar(CLng(1)) 'Long
  loc_1036CC1: var_D8 = 0
  loc_1036CCD: LateIdCallSt
  loc_1036CD5: var_9C = 0
  loc_1036CE1: var_D8 = CVar(CLng(2)) 'Long
  loc_1036CE6: var_F8 = "Type"
  loc_1036CEF: LateIdCallSt
  loc_1036CFA: var_9C = CVar(CLng(2)) 'Long
  loc_1036D05: var_D8 = CVar(CInt(1)) 'Integer
  loc_1036D0C: LateIdCallSt
  loc_1036D17: var_9C = CVar(CLng(2)) 'Long
  loc_1036D22: var_D8 = CVar(CInt(1)) 'Integer
  loc_1036D29: LateIdCallSt
  loc_1036D34: var_9C = CVar(CLng(2)) 'Long
  loc_1036D39: var_D8 = 0
  loc_1036D45: LateIdCallSt
  loc_1036D4D: var_9C = 0
  loc_1036D59: var_D8 = CVar(CLng(3)) 'Long
  loc_1036D5E: var_F8 = "Rate"
  loc_1036D67: LateIdCallSt
  loc_1036D72: var_9C = CVar(CLng(3)) 'Long
  loc_1036D7D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1036D84: LateIdCallSt
  loc_1036D8F: var_9C = CVar(CLng(3)) 'Long
  loc_1036D9A: var_D8 = CVar(CInt(7)) 'Integer
  loc_1036DA1: LateIdCallSt
  loc_1036DAC: var_9C = CVar(CLng(3)) 'Long
  loc_1036DB1: var_D8 = 0
  loc_1036DBD: LateIdCallSt
  loc_1036DCC: For var_10C = 5 To &H22: var_8A = var_10C 'Byte
  loc_1036DD2:   var_9C = 0
  loc_1036DE0:   var_D8 = CVar(CLng(var_8A)) 'Long
  loc_1036DF2:   var_C4 = CVar("Day" & CStr(var_8A)) 'String
  loc_1036DF9:   LateIdCallSt
  loc_1036E0C:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1036E17:   var_D8 = CVar(CInt(4)) 'Integer
  loc_1036E1E:   LateIdCallSt
  loc_1036E2B:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1036E36:   var_D8 = CVar(CInt(1)) 'Integer
  loc_1036E3D:   LateIdCallSt
  loc_1036E4A:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1036E59:   LateIdCallSt
  loc_1036E64: Next var_10C 'Byte
  loc_1036E6C: Set var_B4 = Nothing 
  loc_1036E70: Exit Sub
End Sub

Public Sub Proc_261_37_1302644
  'Data Table: 4FFC8C
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
  loc_1301FCB: If (CLng(Me.FGrid.Col) = 4) Then
  loc_1301FCE:   Exit Sub
  loc_1301FCF: End If
  loc_1301FE2: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301FFA: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1302009: var_108 = Me.FGrid.TextMatrix)
  loc_130201E: var_118 = CVar(CStr(var_108)) 'String
  loc_130204A: If (Left(var_118, 1) = "@") Then
  loc_130206E:   MsgBox("Selected Room is currently Out Of Order ", 0, "<<<<<<<<< Out Of Order >>>>>>>>>", var_108, var_118)
  loc_130207E:   Exit Sub
  loc_130207F: End If
  loc_130209F: If (CLng(Me.FGrid.CellBackColor) = global_116) Then
  loc_13020C3:   MsgBox("Selected Room is not Vacant ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_13020D3:   Exit Sub
  loc_13020D4: End If
  loc_13020F4: If (CLng(Me.FGrid.CellBackColor) = global_112) Then
  loc_1302118:   MsgBox("Selected Room is Reserved ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_1302128:   Exit Sub
  loc_1302129: End If
  loc_130213C: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302154: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13021A4: If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_13021C8:   For var_14C = CInt(CLng(Me.FGrid.Col)) To 5 Step &HFF: var_8A = var_14C 'Integer
  loc_13021E1:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13021F9:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1302249:     If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_130224C:       var_C4 = 1
  loc_130225C:       var_E4 = CVar(CLng((var_8A - 4))) 'Long
  loc_130228F:       var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 8))
  loc_13022A1:     Else
  loc_13022A1:       Exit For
  loc_13022A4:     End If
  loc_13022A7:   Next var_14C 'Integer
  loc_13022AC:   ' Referenced from: 13022A1
  loc_13022AF: Else
  loc_13022AF:   var_C4 = 1
  loc_13022D1:   var_E4 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_1302304:   var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 9))
  loc_1302319: End If
  loc_1302325: If (global_108 = 1) Then
  loc_130233B:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302343:   var_E4 = CVar(CLng(1)) 'Long
  loc_1302363:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_130237F:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302387:   var_16C = CVar(CLng(2)) 'Long
  loc_13023A1:   var_228 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13023BF:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13023C7:   var_1C4 = CVar(CLng(0)) 'Long
  loc_13023E7:   var_208 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13023F6:   Call unk_4FFD0F.SEARCHBACKRoomNo
  loc_1302427: Else
  loc_130243A:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302442:   var_E4 = CVar(CLng(1)) 'Long
  loc_130247A:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302482:   var_16C = CVar(CLng(2)) 'Long
  loc_13024B0:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13024B8:   var_1C4 = CVar(CLng(0)) 'Long
  loc_13024F0:   var_218 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1302508:   var_248 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1302571:   var_340 = Me.FGrid.TextMatrix)
  loc_13025D1:   Proc_146_0_E7E558(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Me.FGrid.TextMatrix)), var_88, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(IIf((Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "@"), vbNullString, CVar(CStr(var_340)))), CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_130262B: End If
  loc_1302638: Me.var_340.Unload Me
  loc_1302640: Exit Sub
End Sub

Public Sub Proc_261_38_E559DC(arg_C) 'E559DC
  'Data Table: 4FFC8C
  Dim var_A0 As Long
  loc_E559B0: If (arg_C = 0) Then
  loc_E559C6:   var_A0 = CLng(Me.FGrid.Col)
  loc_E559CF: End If
  loc_E559D4: Proc_261_38_E559DC = &HFF
End Sub

Public Sub Proc_261_39_E0BAA8
  'Data Table: 4FFC8C
  loc_E0BAA1: Proc_261_39_E0BAA8 = &HFF
End Sub

Public Sub Proc_261_40_F1DB0C
  'Data Table: 4FFC8C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1DA1A: Set var_8C = Me.Txt
  loc_F1DA20: Call 0.Method_Proc_261_40_F1DB0CC (var_8E, var_86)
  loc_F1DA30: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1DA46:   Set var_8C = Me.Txt
  loc_F1DA4C:   Call 0.Method_Proc_261_40_F1DB0C0 (CInt(var_86), var_98)
  loc_F1DA54:   var_98.Text = vbNullString
  loc_F1DA70:   Set var_8C = Me.Txt
  loc_F1DA76:   Call 0.Method_Proc_261_40_F1DB0C0 (CInt(var_86), var_98)
  loc_F1DA7E:   var_98.Tag = vbNullString
  loc_F1DA8D: Next var_92 'Byte
  loc_F1DAA6: Me.FGrid.Rows = 1
  loc_F1DACC: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F1DAD4: Set var_98 = Me.FGrid
  loc_F1DB01: Me.FGrid.FixedRows = 1
  loc_F1DB09: Exit Sub
End Sub

Public Sub Proc_261_41_E7AC74(arg_C) 'E7AC74
  'Data Table: 4FFC8C
  Dim var_98 As TextBox
  loc_E7AC22: Set var_8C = Me.Txt
  loc_E7AC28: Call 0.Method_Proc_261_41_E7AC74C (var_8E, var_86)
  loc_E7AC38: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7AC4E:   Set var_8C = Me.Txt
  loc_E7AC54:   Call 0.Method_Proc_261_41_E7AC740 (CInt(var_86), var_98)
  loc_E7AC5C:   var_98.Enabled = arg_C
  loc_E7AC6B: Next var_92 'Byte
  loc_E7AC71: Exit Sub
End Sub

Public Sub Proc_261_42_DFD55C
  'Data Table: 4FFC8C
  loc_DFD558: Exit Sub
End Sub

Public Sub Proc_261_43_15F7C24(arg_C, arg_10) '15F7C24
  'Data Table: 4FFC8C
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_BA As Integer
  Dim var_BC As Integer
  Dim var_BE As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_F4 As String
  Dim var_100 As String
  Dim var_10C As String
  Dim var_114 As String
  Dim unk_4FFC92 As Connection15
  Dim var_104 As String
  Dim var_12C As String
  Dim var_124 As Variant
  Dim var_170 As Variant
  Dim var_1A0 As Variant
  Dim var_180 As Variant
  Dim var_1E0 As Variant
  Dim var_B8 As Double
  Dim var_1F0 As Long
  Dim var_27C As Variant
  Dim var_EC As Variant
  Dim var_14C As Variant
  Dim var_190 As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_25C As Variant
  Dim var_29C As Variant
  Dim var_CC As Recordset15
  Dim var_1F4 As Variant
  Dim var_C8 As Integer
  Dim var_1B0 As Variant
  Dim var_C6 As Integer
  loc_15F685F: Me.FGrid.FixedCols = 0
  loc_15F687A: Me.FGrid.FixedRows = 1
  loc_15F6895: Me.FGrid.RowHeightMin = &H1F4
  loc_15F68A6: Set var_F0 = Me.FGrid
  loc_15F68AC: var_F0.Redraw = False
  loc_15F68BA: If (arg_10 = 1) Then
  loc_15F68C1:   var_BA = CInt(5)
  loc_15F68C8:   var_BC = CInt(&H22)
  loc_15F68CD:   var_BE = 1
  loc_15F68D3:   var_8C = arg_C
  loc_15F68DE:   var_94 = CDate((arg_C + CDbl(&H1E)))
  loc_15F68E4: Else
  loc_15F68E8:   var_BA = CInt(&H22)
  loc_15F68EF:   var_BC = CInt(5)
  loc_15F68F4:   var_BE = &HFF
  loc_15F68FF:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_15F690A:   var_94 = CDate((arg_C + CDbl(1)))
  loc_15F690D: End If
  loc_15F6912: var_C4 = CStr(var_8C)
  loc_15F691D: If (arg_18 = vbNullString) Then
  loc_15F6934:   var_F4 = "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from " & "(RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat) "
  loc_15F6949:   var_100 = var_F4 & "Left Join RateList RL on RC.Code=RL.RoomCat Where R.logsite_Code='" & MemVar_1F95078 & "' and R.Type='RO' And R.InclCount='Y' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} "
  loc_15F6959:   Call Proc_261_44_FA0038(var_C4, var_104, var_100 & "APPEND ({SELECT Distinct r.Code as RoomNo, ", var_124, -1, var_F0, var_94, var_8C)
  loc_15F6962:   var_10C = var_BE & var_104
  loc_15F6970:   var_114 = var_10C & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code) " & "Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOccDet RO on RO.Docid=GF.DocId Where (R.Type='RO' or r.Type is Null) And R.InclCount='Y' Group By r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_15F6979:   unk_4FFC92.Execute var_114, var_BC, var_BA
  loc_15F6984:   Set var_A0 = var_F0
  loc_15F69A5: Else
  loc_15F69B9:   var_F4 = "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from " & "(RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat) "
  loc_15F69CE:   var_100 = var_F4 & "Left Join RateList RL on RC.Code=RL.RoomCat Where R.logsite_Code='" & MemVar_1F95078 & "' and R.Type='RO' And R.InclCount='Y' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****'  and R.Roomcat='"
  loc_15F69EC:   Call Proc_261_44_FA0038(var_C4, var_10C, var_100 & arg_18 & "'  Order By R.Code} " & "APPEND ({SELECT Distinct r.Code as RoomNo, ", var_124, -1, var_F0)
  loc_15F6A03:   var_12C = var_94 & var_10C & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code) " & "Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOccDet RO on RO.Docid=GF.DocId Where (R.Type='RO' or R.Type is Null)  And R.InclCount='Y' Group By r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_15F6A0C:   unk_4FFC92.Execute var_12C, var_8C, var_BE
  loc_15F6A17:   Set var_A0 = var_F0
  loc_15F6A39: End If
  loc_15F6A3F: CVarUnk
  loc_15F6A44: VerifyVarObj
  loc_15F6A4A: Set var_F0 = Me.FGrid
  loc_15F6A50: LateIdStAd
  loc_15F6A85: For var_134 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_134 'Long
  loc_15F6A98:   For var_13C = 5 To &H22: var_A8 = var_13C 'Long
  loc_15F6AE2:     If (InStr(var_A8, CStr(Me.FGrid.TextMatrix)), "*", 0) <> 0) Then
  loc_15F6AF6:       Me.FGrid.Row = var_A4
  loc_15F6B0F:       Me.FGrid.Col = var_A8
  loc_15F6B2B:       Me.FGrid.CellBackColor = global_116
  loc_15F6B46:       Me.FGrid.CellForeColor = 0
  loc_15F6B5E:       Me.FGrid.CellFontName = "Arial"
  loc_15F6B78:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_15F6BDF:       var_1A0 = CVar((Len(CStr(Me.FGrid.TextMatrix))) - 1)) 'Long
  loc_15F6BFB:       var_1E0 = CVar(CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, var_1A0))) 'String
  loc_15F6C03:       Set var_1F4 = Me.FGrid
  loc_15F6C09:       LateIdCallSt
  loc_15F6C2F:     Else
  loc_15F6C63:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15F6C77:         Me.FGrid.Row = var_A4
  loc_15F6C90:         Me.FGrid.Col = var_A8
  loc_15F6CAC:         Me.FGrid.CellBackColor = global_112
  loc_15F6CC8:         Me.FGrid.CellForeColor = global_124
  loc_15F6CE0:         Me.FGrid.CellFontName = "Arial"
  loc_15F6CFA:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_15F6D02:       End If
  loc_15F6D02:     End If
  loc_15F6D05:   Next var_13C 'Long
  loc_15F6D0D: Next var_134 'Long
  loc_15F6D21: For var_1FC = CLng(var_BA) To CLng(var_BC) Step CLng(var_BE): var_A4 = var_1FC 'Long
  loc_15F6D2F:   If (var_A4 = CLng(var_BA)) Then
  loc_15F6D35:     var_B8 = arg_C
  loc_15F6D3B:   Else
  loc_15F6D57:     var_B8 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B8)))
  loc_15F6D61:   End If
  loc_15F6D61:   var_1F0 = 1
  loc_15F6D73:   var_27C = CVar((var_A4 - 4)) 'Long
  loc_15F6D90:   var_124 = CDate(var_B8)
  loc_15F6DA4:   var_1A0 = (Format(var_124, "DDD") + vbCr)
  loc_15F6DC8:   var_1E0 = Format(var_B8, "dd/MM")
  loc_15F6DD0:   var_20C = (1 + var_1E0)
  loc_15F6DE4:   var_22C = (var_20C + Space(5))
  loc_15F6E10:   var_25C = (1 + Format(var_B8, "dd/MMM/yy"))
  loc_15F6E15:   var_29C = CVar(CStr(var_25C)) 'String
  loc_15F6E1D:   Set var_F0 = Me.FGrid
  loc_15F6E23:   LateIdCallSt
  loc_15F6E54:   var_DC = CVar((var_A4 - 4)) 'Long
  loc_15F6E59:   var_14C = 1
  loc_15F6E62:   var_190 = &H1F4
  loc_15F6E6F:   Set var_F0 = Me.FGrid
  loc_15F6E75:   LateIdCallSt
  loc_15F6E83: Next var_1FC 'Long
  loc_15F6E9C: var_F4 = "Select RoomNO as RoomCode,ChkinDt as FromDate ,dATEdiff(D,ChkInDt,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt) as TODate From RoomOccDet left join GuestProf on GuestProf.Code=RoomOccDet.GuestProf Where RoomOccDet.Logsite_Code='" & MemVar_1F95078
  loc_15F6EB1: Proc_6_7_F26918(var_124, var_8C, CVar(var_F4 & "' and ChkOutDate is NULL And dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt)>="))
  loc_15F6EC7: unk_4FFC92.Execute CStr(var_1A0 & var_124), -1, var_F0
  loc_15F6ED2: Set var_CC = var_F0
  loc_15F6EFE: If (var_CC.RecordCount > 0) Then
  loc_15F6F01:   ' Referenced from: 15F7281
  loc_15F6F10:   If Not(var_CC.EOF) Then
  loc_15F6F3A:     For var_2BC = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2BC 'Long
  loc_15F6F47:       var_EC = 0
  loc_15F6FA7:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15F6FE4:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F704A:           var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15F704F:           var_C8 = CInt(var_1A0)
  loc_15F7065:         Else
  loc_15F70AD:           var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15F70B2:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15F70BF:         End If
  loc_15F70CB:         For var_2C8 = 0 To CLng(var_C8): var_A8 = var_2C8 'Long
  loc_15F710B:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F7156:             var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15F715F:             var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15F716A:             var_1B0 = (var_1A0 + CVar(var_A8))
  loc_15F716F:             var_C6 = CInt("dd/MM")
  loc_15F7185:           Else
  loc_15F718F:             var_C6 = CInt((5 + var_A8))
  loc_15F7192:           End If
  loc_15F7198:           If (var_C6 > &H22) Then
  loc_15F719B:             GoTo loc_15F7271
  loc_15F719E:           End If
  loc_15F71B1:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15F71CA:           Me.FGrid.Row = var_A4
  loc_15F71E6:           Me.FGrid.CellBackColor = global_116
  loc_15F720D:           var_124 = CVar(var_CC.Fields.Item("Reasons")) 'Address
  loc_15F7224:           Me.FGrid.Text = CVar(Proc_6_38_E69628(var_124, var_C6, var_C6, 0, var_C8))
  loc_15F7247:           Me.FGrid.CellFontName = "Arial"
  loc_15F725B:           Set var_F0 = Me.FGrid
  loc_15F7261:           var_F0.CellFontSize = CVar(CDbl(8))
  loc_15F726C:         Next var_2C8 'Long
  loc_15F7271:         ' Referenced from: 15F719B
  loc_15F7271:       End If
  loc_15F7274:     Next var_2BC 'Long
  loc_15F727C:     var_CC.MoveNext
  loc_15F7281:     GoTo loc_15F6F01
  loc_15F7284:   End If
  loc_15F7284: End If
  loc_15F72A1: Proc_6_7_F26918(var_124, var_8C, "Select RoomCode,FromDate ,dATEdiff(D,")
  loc_15F72C1: Proc_6_7_F26918(var_1A0, var_8C, var_1E0 & var_124 & ",Todate) as Days,Reasons,todate From RoomBlockOut Where Type='O' and ToDate>=")
  loc_15F72C9: var_1B0 = -1 & var_1A0 
  loc_15F72D7: unk_4FFC92.Execute CStr("dd/MM"), var_F0, 
  loc_15F72E2: Set var_CC = var_F0
  loc_15F730E: If (var_CC.RecordCount > 0) Then
  loc_15F7311:   ' Referenced from: 15F76A4
  loc_15F7320:   If Not(var_CC.EOF) Then
  loc_15F734A:     For var_2D0 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2D0 'Long
  loc_15F7357:       var_EC = 0
  loc_15F73B7:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15F73F4:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F7456:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15F746C:         Else
  loc_15F74B0:           var_C8 = CInt(DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15F74BD:         End If
  loc_15F74C9:         For var_2D8 = 0 To CLng(var_C8): var_A8 = var_2D8 'Long
  loc_15F7509:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F7554:             var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15F755D:             var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15F7568:             var_1B0 = (var_1A0 + CVar(var_A8))
  loc_15F756D:             var_C6 = CInt("dd/MM")
  loc_15F7583:           Else
  loc_15F758D:             var_C6 = CInt((5 + var_A8))
  loc_15F7590:           End If
  loc_15F7596:           If (var_C6 > &H22) Then
  loc_15F7599:             GoTo loc_15F7694
  loc_15F759C:           End If
  loc_15F75AF:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15F75C8:           Me.FGrid.Row = var_A4
  loc_15F75E4:           Me.FGrid.CellBackColor = global_120
  loc_15F75FF:           Me.FGrid.CellForeColor = &HFFFF
  loc_15F7617:           Me.FGrid.CellFontName = "Webdings"
  loc_15F7641:           var_124 = CVar(var_CC.Fields.Item("Reasons")) 'Address
  loc_15F765C:           Me.FGrid.Text = CVar(var_C8 & Proc_6_38_E69628(var_124, "@  ", var_C6, var_C6, 0))
  loc_15F767E:           Set var_F0 = Me.FGrid
  loc_15F7684:           var_F0.CellFontSize = CVar(CDbl(&H14))
  loc_15F768F:         Next var_2D8 'Long
  loc_15F7694:         ' Referenced from: 15F7599
  loc_15F7694:       End If
  loc_15F7697:     Next var_2D0 'Long
  loc_15F769F:     var_CC.MoveNext
  loc_15F76A4:     GoTo loc_15F7311
  loc_15F76A7:   End If
  loc_15F76A7: End If
  loc_15F76BB: var_F4 = "Select RoomNO as RoomCode,ArrDate as FromDate ,dATEdiff(D,ArrDate,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ArrDate,DepDate),ArrDate) as TODate,IsNull(P.Advance,0) Advance From ViewBooking B left join GuestProf on GuestProf.Code=B.GuestProf LEFT JOIN (Select RefDocId,IsNull(Sum(AmtCr),0) Advance From PayCharge Where VType In ('ADRES','ARRES') And Logsite_Code='" & MemVar_1F95078
  loc_15F76D0: var_170 = CVar(var_F4 & "' Group By RefDocId) P ON B.DocId = P.RefDocId Where B.Cancel='N' And B.Logsite_Code='" & MemVar_1F95078 & "' And dateadd(D,dATEdiff(D,ArrDate,DepDate),ArrDate)>=") 'String
  loc_15F76DE: Proc_6_7_F26918(var_124, var_8C, var_170)
  loc_15F76F4: unk_4FFC92.Execute CStr(var_1A0 & var_124), -1, var_F0
  loc_15F76FF: Set var_CC = var_F0
  loc_15F772F: If (var_CC.RecordCount > 0) Then
  loc_15F7732:   ' Referenced from: 15F7B26
  loc_15F7741:   If Not(var_CC.EOF) Then
  loc_15F776B:     For var_2E0 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2E0 'Long
  loc_15F7778:       var_EC = 0
  loc_15F77D8:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15F7815:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F787B:           var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15F7880:           var_C8 = CInt(var_1A0)
  loc_15F7896:         Else
  loc_15F78DE:           var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15F78E3:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15F78F0:         End If
  loc_15F78FC:         For var_2E8 = 0 To CLng(var_C8): var_A8 = var_2E8 'Long
  loc_15F793C:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F7987:             var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15F7990:             var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15F799B:             var_1B0 = (var_1A0 + CVar(var_A8))
  loc_15F79A0:             var_C6 = CInt("dd/MM")
  loc_15F79B6:           Else
  loc_15F79C0:             var_C6 = CInt((5 + var_A8))
  loc_15F79C3:           End If
  loc_15F79C9:           If (var_C6 > &H22) Then
  loc_15F79CC:             GoTo loc_15F7B16
  loc_15F79CF:           End If
  loc_15F79E2:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15F79FB:           Me.FGrid.Row = var_A4
  loc_15F7A17:           Me.FGrid.CellBackColor = global_112
  loc_15F7A47:           var_170 = CVar(Proc_6_38_E69628(CVar(var_CC.Fields.Item("Reasons")), var_C6, var_C6, 0, var_C8)) 'String
  loc_15F7A55:           Me.FGrid.Text = var_170
  loc_15F7A78:           Me.FGrid.CellFontName = "Arial"
  loc_15F7A92:           Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_15F7AC0:           Proc_6_39_E7D3A0(var_170, CVar(var_CC.Fields.Item("Advance")), var_C8)
  loc_15F7ADA:           If (var_170 > 0) Then
  loc_15F7AF0:             Me.FGrid.CellForeColor = &HFF
  loc_15F7B06:             Me.FGrid.CellFontBold = True
  loc_15F7B0E:           End If
  loc_15F7B11:         Next var_2E8 'Long
  loc_15F7B16:         ' Referenced from: 15F79CC
  loc_15F7B16:       End If
  loc_15F7B19:     Next var_2E0 'Long
  loc_15F7B21:     var_CC.MoveNext
  loc_15F7B26:     GoTo loc_15F7732
  loc_15F7B29:   End If
  loc_15F7B29: End If
  loc_15F7B29: var_DC = 0
  loc_15F7B32: var_14C = &H1F4
  loc_15F7B3F: Set var_F0 = Me.FGrid
  loc_15F7B45: LateIdCallSt
  loc_15F7B50: var_DC = 0
  loc_15F7B59: var_14C = 1
  loc_15F7B62: var_190 = 0
  loc_15F7B6F: Set var_F0 = Me.FGrid
  loc_15F7B75: LateIdCallSt
  loc_15F7B93: Me.FGrid.FixedCols = 4
  loc_15F7BAE: Me.FGrid.Col = 5
  loc_15F7BC9: Me.FGrid.Row = 1
  loc_15F7BD1: var_DC = 0
  loc_15F7BDA: var_14C = False
  loc_15F7BE3: Set var_F0 = Me.FGrid
  loc_15F7BE9: LateIdCallSt
  loc_15F7C02: Me.FGrid.Redraw = True
  loc_15F7C0F: Set var_98 = Nothing
  loc_15F7C17: Set var_A0 = Nothing
  loc_15F7C1F: Set var_9C = Nothing
  loc_15F7C22: Exit Sub
End Sub

Public Sub Proc_261_44_FA0038(arg_C) 'FA0038
  'Data Table: 4FFC8C
  Dim var_B4 As Variant
  Dim var_F4 As String
  Dim var_124 As Date
  Dim var_164 As Variant
  Dim var_184 As Date
  Dim var_1B4 As String
  Dim var_1E4 As Date
  Dim var_20C As String
  loc_F9FF09: For var_94 = 0 To &H1D: var_8A = var_94 'Integer
  loc_F9FF24:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9FF2B:   Proc_6_7_F26918(var_C4, var_B4)
  loc_F9FF37:   var_F4 = " and B.ArrDate+B.NoDays-1>="
  loc_F9FF4B:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9FF52:   Proc_6_7_F26918(var_134, var_124)
  loc_F9FF63:   var_164 = CVar(var_88 & "Max(Case When RO.ChkInDt is null Then Case When B.ArrDate<=") & var_C4 & var_F4 & var_134 & " Then B.GuestName Else '' End Else Case When Ro.ChkInDt<=" 
  loc_F9FF72:   var_184 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9FF79:   Proc_6_7_F26918(var_194, var_184)
  loc_F9FF85:   var_1B4 = " and RO.DEPDATE-1>="
  loc_F9FF99:   var_1E4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9FFA0:   Proc_6_7_F26918(var_1F4, var_1E4)
  loc_F9FFB8:   var_20C = " Then case RO.tYPE When 'O' then ''Else B.GuestName +'#*' end Else '' End End ) as Day" & CStr(var_8A)
  loc_F9FFC7:   var_88 = CStr(var_164 & var_194 & var_1B4 & var_1F4 & CVar(var_20C & ","))
  loc_F9FFFB: Next var_94 'Integer
  loc_FA000A: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_FA0027: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_FA0031: Proc_261_44_FA0038 = 
End Sub

Public Sub Proc_261_45_16B736C
  'Data Table: 4FFC8C
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
  loc_16B5E10: On Error Goto loc_16B7366
  loc_16B5E15: Close 1
  loc_16B5E1E: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16B5E50: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F953D0, 1, -1, 0)
  loc_16B5E5B: var_88 = 1
  loc_16B5E75: If (Me.RecordCount > 0) Then
  loc_16B5E7E:   Me.MoveFirst
  loc_16B5E83:   ' Referenced from: 16B72AC
  loc_16B5E95:   If Not(Me.EOF) Then
  loc_16B5E9E:     If (var_86 = 0) Then
  loc_16B5EB1:       var_86 = Proc_6_129_12B862C(var_88, var_86)
  loc_16B5EBC:       var_100 = "B"
  loc_16B5ED8:       Print 1, Proc_6_128_1026560(global_88, var_100, &H50)
  loc_16B5EF5:       Set var_114 = Me.Txt
  loc_16B5EFB:       Call 0.Method_Proc_261_45_16B736C0 (CInt(0), var_118, var_100)
  loc_16B5F03:       var_86 = var_118.Text
  loc_16B5F14:       Print 1, "From Date " & var_100
  loc_16B5F2D:       Print 1, "* = OUT OF ORDER"
  loc_16B5F49:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16B5F4F:       Print 1, var_128
  loc_16B5F63:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16B5F74:         Set var_114 = Me.Txt
  loc_16B5F7A:         Call 0.Method_Proc_261_45_16B736C0 (CInt(0), var_118, 1)
  loc_16B5F94:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16B5FA1:         global_80 = CDate(var_128)
  loc_16B5FEF:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_80, "DDD")))
  loc_16B603C:         var_14C = Space((2 - Len(CStr(Day(global_80)))))
  loc_16B6044:         var_16C = (CVar(CStr(Day(global_80))) + Ucase(Format(global_80, "DDD")))
  loc_16B6076:         var_1BC = Space((2 - Len(CStr(Month(global_80)))))
  loc_16B6099:         var_1FC = (var_1BC + CVar(CStr(Month(global_80))))
  loc_16B60AC:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16B60DC:       Next var_12C 'Integer
  loc_16B62F0:       var_128 = (Space(&HA) + "|")
  loc_16B62FA:       var_15C = (Day(global_80) + CVar(Proc_6_45_EADFB8(var_BC(1))))
  loc_16B6303:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B630D:       var_1AC = (var_16C + CVar(Proc_6_45_EADFB8(var_BC(2), 4)))
  loc_16B6316:       var_1BC = (Month(global_80) + "|")
  loc_16B6320:       var_1EC = (var_1BC + CVar(Proc_6_45_EADFB8(var_BC(3), 4)))
  loc_16B6329:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B6333:       var_224 = (var_1FC + CVar(Proc_6_45_EADFB8(var_BC(4), 4)))
  loc_16B633C:       var_234 = (var_224 + "|")
  loc_16B6346:       var_258 = (var_234 + CVar(Proc_6_45_EADFB8(var_BC(5), 4)))
  loc_16B634F:       var_278 = (var_258 + "|")
  loc_16B6359:       var_29C = (var_278 + CVar(Proc_6_45_EADFB8(var_BC(6), 4)))
  loc_16B6362:       var_2BC = (var_29C + "|")
  loc_16B636C:       var_2E0 = (var_2BC + CVar(Proc_6_45_EADFB8(var_BC(7), 4)))
  loc_16B6375:       var_300 = (var_2E0 + "|")
  loc_16B637F:       var_324 = (var_300 + CVar(Proc_6_45_EADFB8(var_BC(8), 4)))
  loc_16B6388:       var_344 = (var_324 + "|")
  loc_16B6392:       var_368 = (var_344 + CVar(Proc_6_45_EADFB8(var_BC(9), 4)))
  loc_16B639B:       var_388 = (var_368 + "|")
  loc_16B63A5:       var_3AC = (var_388 + CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)))
  loc_16B63AE:       var_3CC = (var_3AC + "|")
  loc_16B63B8:       var_3F0 = (var_3CC + CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)))
  loc_16B63C1:       var_410 = (var_3F0 + "|")
  loc_16B63CB:       var_434 = (var_410 + CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)))
  loc_16B63D4:       var_454 = (var_434 + "|")
  loc_16B63DE:       var_478 = (var_454 + CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)))
  loc_16B63E7:       var_498 = (var_478 + "|")
  loc_16B63F1:       var_4BC = (var_498 + CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)))
  loc_16B63FA:       var_4DC = (var_4BC + "|")
  loc_16B6404:       var_500 = (var_4DC + CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)))
  loc_16B640D:       var_520 = (var_500 + "|")
  loc_16B6417:       var_544 = (var_520 + CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)))
  loc_16B6420:       var_564 = (var_544 + "|")
  loc_16B642A:       var_588 = (var_564 + CVar(Proc_6_45_EADFB8(var_BC(&H11), 4)))
  loc_16B6433:       var_5A8 = (var_588 + "|")
  loc_16B643D:       var_5CC = (var_5A8 + CVar(Proc_6_45_EADFB8(var_BC(&H12), 4)))
  loc_16B6446:       var_5EC = (var_5CC + "|")
  loc_16B6450:       var_610 = (var_5EC + CVar(Proc_6_45_EADFB8(var_BC(&H13), 4)))
  loc_16B6459:       var_630 = (var_610 + "|")
  loc_16B6463:       var_654 = (var_630 + CVar(Proc_6_45_EADFB8(var_BC(&H14), 4)))
  loc_16B646C:       var_674 = (var_654 + "|")
  loc_16B6476:       var_698 = (var_674 + CVar(Proc_6_45_EADFB8(var_BC(&H15), 4)))
  loc_16B647F:       var_6B8 = (var_698 + "|")
  loc_16B6489:       var_6DC = (var_6B8 + CVar(Proc_6_45_EADFB8(var_BC(&H16), 4)))
  loc_16B6492:       var_6FC = (var_6DC + "|")
  loc_16B649C:       var_720 = (var_6FC + CVar(Proc_6_45_EADFB8(var_BC(&H17), 4)))
  loc_16B64A5:       var_740 = (var_720 + "|")
  loc_16B64AB:       Print 1, var_740
  loc_16B6588:       var_128 = ("TYPE" + Space(6))
  loc_16B6591:       var_14C = (Day(global_80) + "|")
  loc_16B65A1:       var_15C = (CVar(Proc_6_45_EADFB8(var_BC(1))) + CVar(var_D8(1)))
  loc_16B65AA:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B65BA:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16B65C3:       var_1AC = (CVar(Proc_6_45_EADFB8(var_BC(2), 4)) + "|")
  loc_16B65D3:       var_1BC = (Month(global_80) + CVar(var_D8(3)))
  loc_16B65DC:       var_1DC = (var_1BC + "|")
  loc_16B65EC:       var_1EC = (CVar(Proc_6_45_EADFB8(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16B65F5:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B6605:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16B660E:       var_224 = (CVar(Proc_6_45_EADFB8(var_BC(4), 4)) + "|")
  loc_16B661E:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16B6627:       var_248 = (var_234 + "|")
  loc_16B6637:       var_258 = (CVar(Proc_6_45_EADFB8(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16B6640:       var_278 = (var_258 + "|")
  loc_16B6650:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16B6659:       var_29C = (CVar(Proc_6_45_EADFB8(var_BC(6), 4)) + "|")
  loc_16B6669:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16B6672:       var_2D0 = (var_2BC + "|")
  loc_16B6682:       var_2E0 = (CVar(Proc_6_45_EADFB8(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16B668B:       var_300 = (var_2E0 + "|")
  loc_16B669B:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16B66A4:       var_324 = (CVar(Proc_6_45_EADFB8(var_BC(8), 4)) + "|")
  loc_16B66B4:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16B66BD:       var_358 = (var_344 + "|")
  loc_16B66CD:       var_368 = (CVar(Proc_6_45_EADFB8(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16B66D6:       var_388 = (var_368 + "|")
  loc_16B66E6:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16B66EF:       var_3AC = (CVar(Proc_6_45_EADFB8(var_BC(&HA), 4)) + "|")
  loc_16B66FF:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16B6708:       var_3E0 = (var_3CC + "|")
  loc_16B6718:       var_3F0 = (CVar(Proc_6_45_EADFB8(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16B6721:       var_410 = (var_3F0 + "|")
  loc_16B6731:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16B673A:       var_434 = (CVar(Proc_6_45_EADFB8(var_BC(&HC), 4)) + "|")
  loc_16B674A:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16B6753:       var_468 = (var_454 + "|")
  loc_16B6763:       var_478 = (CVar(Proc_6_45_EADFB8(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16B676C:       var_498 = (var_478 + "|")
  loc_16B677C:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16B6785:       var_4BC = (CVar(Proc_6_45_EADFB8(var_BC(&HE), 4)) + "|")
  loc_16B6795:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16B679E:       var_4F0 = (var_4DC + "|")
  loc_16B67AE:       var_500 = (CVar(Proc_6_45_EADFB8(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16B67B7:       var_520 = (var_500 + "|")
  loc_16B67C7:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16B67D0:       var_544 = (CVar(Proc_6_45_EADFB8(var_BC(&H10), 4)) + "|")
  loc_16B67D6:       Print 1, var_544
  loc_16B6846:       Print 1, var_A0
  loc_16B684C:     End If
  loc_16B6852:     var_86 = (var_86 + 7)
  loc_16B687A:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16B6886:       If (var_A2 = 3) Then
  loc_16B6889:         GoTo loc_16B72A4
  loc_16B688C:       End If
  loc_16B6F0B:       var_748 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomNo")), 3), 5) & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")), var_86), 4)
  loc_16B6F2D:       var_768 = var_748 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day5"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day6"))), 4)
  loc_16B6F4F:       var_788 = var_768 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day7"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day8"))), 4)
  loc_16B6F71:       var_964 = var_788 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day9"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day10"))), 4)
  loc_16B6F93:       var_994 = var_964 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day11"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day12"))), 4)
  loc_16B6FB5:       var_9C4 = var_994 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day13"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day14"))), 4)
  loc_16B6FD7:       var_9F4 = var_9C4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day15"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day16"))), 4)
  loc_16B7006:       var_A34 = Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16B7028:       var_A64 = var_A34 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16B704A:       var_A94 = var_A64 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16B706C:       var_AC4 = var_A94 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16B708E:       var_AFC = var_AC4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day26"))), 4) & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day27"))), 4)
  loc_16B709E:       Print 1, var_9F4 & "|" & Proc_6_52_EAE084(Proc_6_38_E69628(CVar(Me.Fields.Item("Day17"))), 4) & "|" & var_AFC & "|"
  loc_16B723F:       var_86 = (var_86 + 1)
  loc_16B7248:       If (var_86 > &H3C) Then
  loc_16B7250:         Print 1, var_A0
  loc_16B7258:         var_86 = 0
  loc_16B7261:         var_88 = (var_88 + 1)
  loc_16B7276:         Print 1, Chr(&HC)
  loc_16B727F:       End If
  loc_16B7285:       Me.MoveNext
  loc_16B729E:       If (Me.EOF = &HFF) Then
  loc_16B72A1:         GoTo loc_16B72AC
  loc_16B72A4:         ' Referenced from: 16B6889
  loc_16B72A4:       End If
  loc_16B72A7:     Next var_914 'Integer
  loc_16B72AC:     ' Referenced from: 16B72A1
  loc_16B72AC:     GoTo loc_16B5E83
  loc_16B72AF:   End If
  loc_16B72AF: End If
  loc_16B72B4: Print 1, var_A0
  loc_16B72DA: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16B72E0: Print 1, CVar(Me.Fields.Item("Day5"))
  loc_16B72F1: Close 1
  loc_16B72FA: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16B730A: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_16B7315: Close 1
  loc_16B731F: If (MemVar_1F953BC = "Y") Then
  loc_16B733B:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16B7345: Else
  loc_16B735E:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16B7365: End If
  loc_16B7365: Exit Sub
  loc_16B7366: ' Referenced from: 16B5E10
  loc_16B7366: Proc_6_60_E63754()
  loc_16B736B: Exit Sub
End Sub

Public Sub Proc_261_46_F87A64(arg_C) 'F87A64
  'Data Table: 4FFC8C
  Dim var_90 As Recordset15
  loc_F8790D: Set var_90 = arg_C 
  loc_F87935: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F87961: var_90.Fields.Append "RoomNo", &HC8, 5
  loc_F8798D: var_90.Fields.Append "RoomCat", &HC8, &H19
  loc_F8799C: For var_A8 = 5 To &H1B: var_8A = var_A8 'Integer
  loc_F879D2:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F879E4: Next var_A8 'Integer
  loc_F87A0D: var_90.Fields.Append "Mark", &HC8, 1
  loc_F87A1D: var_90.CursorType = 3
  loc_F87A2A: var_90.LockType = 3
  loc_F87A49: var_90.Open var_A4, var_C0, -1
  loc_F87A50: Set var_90 = Nothing 
  loc_F87A57: Set var_88 = arg_C 
  loc_F87A5B: Proc_261_46_F87A64 = -1
End Sub
