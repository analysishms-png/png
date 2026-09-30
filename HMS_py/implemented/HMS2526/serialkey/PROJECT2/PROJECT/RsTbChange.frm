VERSION 5.00
Begin VB.Form RsTbChange
  Caption = "Table Transfer"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsTbChange.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4905
  ClientHeight = 3195
  Begin Frame FrameOnline
    Left = 9705
    Top = 1020
    Width = 4935
    Height = 4845
    TabIndex = 0
    BorderStyle = 0 'None
    Begin Frame FrameOption
      Left = 30
      Top = 3375
      Width = 2400
      Height = 990
      TabIndex = 3
      BorderStyle = 0 'None
      Begin BtnEnh CmdTExit
        Left = 0
        Top = 495
        Width = 2400
        Height = 495
        TabIndex = 11
      End
      Begin BtnEnh CmdTChange
        Left = 0
        Top = 0
        Width = 2400
        Height = 495
        TabIndex = 12
      End
    End
    Begin MSHFlexGrid FGrid1
      Left = 90
      Top = 1185
      Width = 2910
      Height = 930
      TabIndex = 2
    End
    Begin Label LBLRoomName
      BackColor = &HC0FFFF&
      ForeColor = &HC0&
      Left = 60
      Top = 795
      Width = 9540
      Height = 360
      TabIndex = 1
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin BtnEnh CmdExit
    Left = 6615
    Top = 4665
    Width = 1275
    Height = 1050
    TabIndex = 4
  End
  Begin BtnEnh CmdChange
    Left = 4170
    Top = 4665
    Width = 1275
    Height = 1050
    TabIndex = 6
  End
  Begin DataCombo TXT_FRTABLE
    Left = 3300
    Top = 2835
    Width = 3165
    Height = 360
    TabIndex = 7
  End
  Begin DataCombo TXT_TOTABLE
    Left = 7815
    Top = 2835
    Width = 3165
    Height = 360
    TabIndex = 8
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 10
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
  Begin Line Line1
    BorderColor = &HC00000&
    X1 = 6675
    Y1 = 1935
    X2 = 6675
    Y2 = 4335
    BorderWidth = 3
  End
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 1860
    Top = 1920
    Width = 9285
    Height = 2445
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblToTable
    Caption = "To Table #"
    ForeColor = &HC00000&
    Left = 6765
    Top = 2895
    Width = 1005
    Height = 240
    TabIndex = 5
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
  Begin Label LblFrTable
    Caption = "From Table #"
    ForeColor = &HC00000&
    Left = 1935
    Top = 2880
    Width = 1260
    Height = 240
    TabIndex = 9
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

Attribute VB_Name = "RsTbChange"

Private mREFRESH As Integer
Private global_76 As Long

Private Sub CmdTChange_UnknownEvent_9 'E1ECD0
  'Data Table: 45D1C4
  loc_E1ECC0: Me.FrameOption.Visible = False
  loc_E1ECC8: Call Fgrid1_UnknownEvent_B()
  loc_E1ECCD: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E18058
  'Data Table: 45D1C4
  loc_E1804D: Me.Global.Unload Me
  loc_E18055: Exit Sub
End Sub

Private Sub CmdTExit_UnknownEvent_9 'E17E44
  'Data Table: 45D1C4
  loc_E17E39: Me.Global.Unload Me
  loc_E17E41: Exit Sub
  loc_E17E42: Set CmdTExit_UnknownEvent_9C74 = 
End Sub

Private Sub Fgrid1_UnknownEvent_9 'ED3F7C
  'Data Table: 45D1C4
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Long
  loc_ED3EEF: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_ED3EF2:   Exit Sub
  loc_ED3EF3: End If
  loc_ED3EFD: var_98 = Me.FGrid1.Rows
  loc_ED3F0C: var_A8 = 1
  loc_ED3F4D: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_ED3F50:   Exit Sub
  loc_ED3F51: End If
  loc_ED3F5D: Me.FrameOption.Visible = True
  loc_ED3F69: Set var_88 = Me.CmdTChange
  loc_ED3F6F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001(var_A8)
  loc_ED3F7A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E92428
  'Data Table: 45D1C4
  loc_E923B6: If (Cancel = &HD) Then
  loc_E923E4:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E923E7:     Call Fgrid1_UnknownEvent_9()
  loc_E923EC:   End If
  loc_E9241F:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E92422:     Call Fgrid1_UnknownEvent_B()
  loc_E92427:   End If
  loc_E92427: End If
  loc_E92427: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '1162894
  'Data Table: 45D1C4
  Dim var_94 As Variant
  Dim var_A8 As String
  Dim var_86 As Integer
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_14C As String
  Dim var_1A0 As Variant
  Dim var_1E4 As Variant
  Dim var_11C As Variant
  Dim unk_45D1C7 As Connection15
  Dim var_13C As Variant
  loc_1162510: On Error Goto loc_1162843
  loc_1162546: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_116255D:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1162569: Else
  loc_11625A8:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11625BC: End If
  loc_11625CF: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11625D8: var_EC = CVar(CLng(var_86)) 'Long
  loc_1162613: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_116261B: var_14C = "VACANT"
  loc_1162644: var_1A0 = CVar(CLng((var_86 + 3))) 'Long
  loc_116266A: var_1E4 = var_1A0 And (CStr(Me.FGrid1.TextMatrix)) = "Y")
  loc_1162693: If CBool(var_1E4) Then
  loc_11626A1:   var_8C = PTableNo
  loc_11626AE:   var_BC = Me.FGrid1.Col
  loc_11626BB:   Set var_94 = Me.FGrid1
  loc_11626E6:   var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_116270F:   var_90 = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1162739:   If ((var_8C <> vbNullString) And (var_90 <> vbNullString)) Then
  loc_1162745:     unk_45D1C7.BeginTrans var_1E8
  loc_116275E:     var_A8 = "Update Kot Set ROOMNO='" & var_90
  loc_1162773:     var_10C = CVar(var_A8 & "',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") 'String
  loc_1162784:     Proc_6_7_F26918(var_BC, Date, var_10C, var_1E4, -1, var_94, var_EC, CVar(CLng(var_94.Row)))
  loc_116278C:     var_11C = var_BC & var_BC 
  loc_11627A2:     var_13C = var_11C & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) 
  loc_11627A6:     var_EC = "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and ROOMNO='"
  loc_11627B9:     var_14C = "'"
  loc_11627CC:     unk_45D1C7.Execute CStr(var_13C & var_EC & CVar(var_8C) & var_14C), CVar(CLng(Me.FGrid1.Row)), (var_13C = var_14C)
  loc_11627FC:     unk_45D1C7.CommitTrans
  loc_1162801:   End If
  loc_116280E:   Me.Global.Unload Me
  loc_1162819: Else
  loc_1162827:   var_CC = "Select A Vacant Table"
  loc_1162832:   MsgBox(var_CC, &H40, var_BC, var_10C, var_11C)
  loc_1162842: End If
  loc_1162842: Exit Sub
  loc_1162843: ' Referenced from: 1162510
  loc_1162849: unk_45D1C7.RollbackTrans
  loc_1162856: Set var_94 = Err()
  loc_116285C: Call 0.Method_arg_2C (var_A8, var_EC, var_CC)
  loc_116287D: MsgBox(CVar(var_A8), &H10, " Table Change Message", var_10C, var_11C)
  loc_1162890: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'E59BD8
  'Data Table: 45D1C4
  loc_E59B9E: If (Cancel = &HD) Then
  loc_E59BCC:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E59BCF:     Call Fgrid1_UnknownEvent_9()
  loc_E59BD4:   End If
  loc_E59BD4: End If
  loc_E59BD4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB4AD0
  'Data Table: 45D1C4
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  loc_FB4950: Set var_88 = Me.FGrid1
  loc_FB4964: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB4975: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB4988: var_FC = CStr(var_88.TextMatrix))
  loc_FB49FA: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB4A09:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB4A1A:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB4A3A:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB4A4B:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB4A88:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB4A98:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB4ABA: Else
  loc_FB4AC3:   var_88.ToolTipText = vbNullString
  loc_FB4AC8: End If
  loc_FB4ACA: Set var_88 = Nothing 
  loc_FB4ACE: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '1401BF4
  'Data Table: 45D1C4
  Dim var_164 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_174 As Variant
  Dim var_188 As String
  Dim unk_45D1C7 As Connection15
  Dim var_18C As Fields15
  Dim var_154 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_260 As Variant
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_32C As Variant
  Dim var_364 As Variant
  Dim var_384 As Variant
  loc_140127B: var_164 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_1401292: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14012B9: var_114 = Me.FGrid1.TextMatrix)
  loc_14012FE: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_1401314:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401332:   var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1401341:   var_C0 = Me.FGrid1.TextMatrix)
  loc_1401356:   var_164 = 0
  loc_1401395:   unk_45D1C7.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_140139D:   var_104 = var_104.Fields
  loc_14013A5:   var_164 = var_18C.Item(var_18C)
  loc_14013CD:   var_174 = CVar(CVar(CLng(Me.FGrid1.Col)) & Proc_6_38_E69628(CVar(var_190), var_190, global_68, var_C0)) & Space(5) 
  loc_14013E4:   var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401402:   var_1EC = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_140143E:   var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1401455:   var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401473:   var_2B8 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_14014AF:   var_32C = var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14014C6:   var_364 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14014E4:   var_384 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_140151E:   Me.LBLRoomName.Caption = CStr(var_384 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_140159E:   Me.LBLRoomName.Refresh
  loc_14015A9: Else
  loc_14015CE:   var_164 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_14015E5:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_140160C:   var_114 = Me.FGrid1.TextMatrix)
  loc_1401651:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_1401685:     var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1401694:     var_C0 = Me.FGrid1.TextMatrix)
  loc_14016A9:     var_164 = 0
  loc_14016E8:     unk_45D1C7.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_14016F0:     var_104 = var_104.Fields
  loc_14016F8:     var_164 = var_18C.Item(var_18C)
  loc_140170D:     var_154 = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E69628(CVar(var_190), var_190, global_68, var_C0, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_1401720:     var_174 = var_154 & Space(5) 
  loc_1401737:     var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401755:     var_1EC = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1401791:     var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14017A8:     var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14017C6:     var_2B8 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_1401800:     Me.LBLRoomName.Caption = CStr(var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_140186A:     Me.LBLRoomName.Refresh
  loc_1401875:   Else
  loc_140189A:     var_164 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_14018B1:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14018D8:     var_114 = Me.FGrid1.TextMatrix)
  loc_140191D:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_1401951:       var_F0 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1401960:       var_C0 = Me.FGrid1.TextMatrix)
  loc_1401975:       var_164 = 0
  loc_14019AB:       var_188 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'"
  loc_14019B4:       unk_45D1C7.Execute var_188, var_114, -1
  loc_14019BC:       var_104 = var_104.Fields
  loc_14019C4:       var_164 = var_18C.Item(var_18C)
  loc_14019D9:       var_154 = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E69628(CVar(var_190), var_190, global_68, var_C0, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_14019EC:       var_174 = var_154 & Space(5) 
  loc_1401A03:       var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401A21:       var_1EC = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1401A5D:       var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1401A74:       var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401A92:       var_2B8 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1401ACE:       var_32C = var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1401AE5:       var_364 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401B03:       var_384 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1401B3D:       Me.LBLRoomName.Caption = CStr(var_384 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1401BBD:       Me.LBLRoomName.Refresh
  loc_1401BC8:     Else
  loc_1401BD8:       Me.LBLRoomName.Caption = global_68
  loc_1401BEA:       Me.LBLRoomName.Refresh
  loc_1401BF2:     End If
  loc_1401BF2:   End If
  loc_1401BF2: End If
  loc_1401BF2: Exit Sub
End Sub

Private Sub Form_Load() '119703C
  'Data Table: 45D1C4
  Dim var_98 As String
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_D0 As String
  loc_1196C48: On Error Goto loc_1197035
  loc_1196C54: Call 0.Method_arg_160 (var_90)
  loc_1196C62: Call 0.Method_arg_164 (var_90)
  loc_1196C6F: var_98 = 0
  loc_1196CA3: Set var_90 = Me.PictTitleBar
  loc_1196CA9: MDIForm1.PictTitleBar.Caption = var_8C & " Table Transfer"
  loc_1196CBB: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), Proc_96_17_FDCB2C(LocalRestCode, global_60, var_8C))
  loc_1196CCE: Me.FrameOnline.BackColor = CLng(MemVar_1F951B4)
  loc_1196CE4: Me.FrameOption.BackColor = CLng(MemVar_1F951B4)
  loc_1196CFF: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1196D18: If (OpenMode = 1) Then
  loc_1196D29:   Me.FrameOnline.Top = CDbl(0)
  loc_1196D3F:   Me.FrameOnline.Left = CDbl(0)
  loc_1196D47:   Call Proc_225_28_14E2EA0(global_64)
  loc_1196D5E:   Me.FGrid1.Top = CVar(CDbl(0))
  loc_1196D78:   Me.FGrid1.Left = CVar(CDbl(0))
  loc_1196DA6:   var_A8 = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_1196DB5:   Me.FGrid1.Height = CVar(CDbl(0))
  loc_1196DD7:   Me.FGrid1.Width = CVar(CDbl(12010))
  loc_1196E0D:   If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(200))) < CDbl(12010)) Then
  loc_1196E31:     var_A8 = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(&HA))) 'Single
  loc_1196E40:     Me.FGrid1.Width = CVar(CDbl(12010))
  loc_1196E4F:   End If
  loc_1196E88:   Me.LBLRoomName.Caption = "CHANGE TABLE :   " & PTableNo & "     TO     "
  loc_1196EB3:   Me.LBLRoomName.Top = (CDbl(Me.FGrid1.Height) + CDbl(150))
  loc_1196ED0:   Me.LBLRoomName.Left = CDbl(&H2D)
  loc_1196EFB:   Me.FrameOption.Left = (CDbl(Me.FGrid1.Width) + CDbl(250))
  loc_1196F47:   Me.FrameOption.Top = (((CDbl(Me.FGrid1.Height) - Me.FrameOption.Height) - CDbl(200)) / CDbl(2))
  loc_1196F64:   Me.FrameOption.Visible = False
  loc_1196F6F: Else
  loc_1196F79:   var_DC = "CODE"
  loc_1196F9B:   var_98 = "SELECT DISTINCT RoomNo AS CODE,RoomNo as Name  FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode
  loc_1196FA6:   Proc_6_92_EF7BF4(var_98 & "' and ROOMTYPE='TB' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y'", Me.TXT_FRTABLE, "Name")
  loc_1196FC7:   var_E4 = "CODE"
  loc_1196FF0:   var_D0 = "SELECT DISTINCT CODE,code as Name From RoomMast Where type='TB' AND RESTCODE='" & LocalRestCode & "' And Code Not in(SELECT DISTINCT RoomNo AS CODE FROM KOT WHERE restCode='"
  loc_1197005:   Proc_6_92_EF7BF4(var_D0 & LocalRestCode & "'and ROOMTYPE='TB' AND (PENDING ='Y' OR DELFLAG IS NULL) AND (DELFLAG<>'Y' OR DELFLAG IS NULL) and (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y') ORDER BY code", Me.TXT_TOTABLE, "Name")
  loc_119702C:   Me.FrameOnline.Visible = False
  loc_1197034: End If
  loc_1197034: Exit Sub
  loc_1197035: ' Referenced from: 1196C48
  loc_1197035: Proc_6_60_E63754(var_E4, var_DC)
  loc_119703A: Exit Sub
End Sub

Private Sub Form_Resize() 'E53A88
  'Data Table: 45D1C4
  loc_E53A5E: Me.LblFormCaption.Left = CDbl(0)
  loc_E53A6C: Call 0.Method_arg_100 (var_8C)
  loc_E53A7E: Me.LblFormCaption.Width = var_8C
  loc_E53A86: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E01E28
  'Data Table: 45D1C4
  loc_E01E24: Exit Sub
  loc_E01E25: If 0 Then Exit Sub
  loc_E01E25: End If
End Sub

Private Sub Form_Activate() 'E93894
  'Data Table: 45D1C4
  loc_E9381D: If (mREFRESH = &HFF) Then
  loc_E9382A:   Proc_6_93_EACCB4(Me.TXT_FRTABLE)
  loc_E9383C:   Proc_6_93_EACCB4(Me.TXT_TOTABLE)
  loc_E93849:   mREFRESH = 0
  loc_E9384C: End If
  loc_E9384C: Call Proc_225_28_14E2EA0(mREFRESH)
  loc_E93857: Call 0.Method_arg_108 (var_8C)
  loc_E93869: Me.FrameOnline.Height = var_8C
  loc_E93877: Call 0.Method_arg_100 (var_8C)
  loc_E93889: Me.FrameOnline.Width = var_8C
  loc_E93891: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E33D88
  'Data Table: 45D1C4
  loc_E33D65: If (MasterFormExit = &HFF) Then
  loc_E33D75:   Me.Global.Unload Me
  loc_E33D7D: End If
  loc_E33D82: mREFRESH = &HFF
  loc_E33D85: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E33DE8
  'Data Table: 45D1C4
  loc_E33DBC: On Error Goto loc_E33DE0
  loc_E33DD7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E33DDF: Exit Sub
  loc_E33DE0: ' Referenced from: E33DBC
  loc_E33DE0: Proc_6_60_E63754(Shift)
  loc_E33DE5: Exit Sub
End Sub

Private Sub CmdChange_UnknownEvent_9 '10CF5F0
  'Data Table: 45D1C4
  Dim var_88 As DataCombo
  Dim var_9C As String
  Dim unk_45D1C7 As Connection15
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  loc_10CF328: On Error Goto loc_10CF5A1
  loc_10CF34E: If (CStr(Me.TXT_FRTABLE.defText) = vbNullString) Then
  loc_10CF372:   MsgBox("Fill From Table #", &H40, "Validation", var_EC, var_10C)
  loc_10CF386:   Set var_88 = Me.TXT_FRTABLE
  loc_10CF397:   Exit Sub
  loc_10CF398: End If
  loc_10CF3BB: If (CStr(Me.TXT_TOTABLE.defText) = vbNullString) Then
  loc_10CF3DF:   MsgBox("Fill To Table #", &H40, "Validation", var_EC, var_10C)
  loc_10CF3F3:   Set var_88 = Me.TXT_TOTABLE
  loc_10CF404:   Exit Sub
  loc_10CF405: End If
  loc_10CF44F: If ((CStr(Me.TXT_FRTABLE.defText) <> vbNullString) And (CStr(Me.TXT_TOTABLE.defText) <> vbNullString)) Then
  loc_10CF45B:   unk_45D1C7.BeginTrans var_118
  loc_10CF482:   var_9C = CStr(Me.TXT_TOTABLE.defText)
  loc_10CF49B:   var_10C = CVar("Update Kot Set ROOMNO='" & var_9C & "',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") 'String
  loc_10CF4AC:   Proc_6_7_F26918(var_EC, Date, var_10C, var_1C4)
  loc_10CF4B4:   var_130 = -1 & var_EC 
  loc_10CF4D3:   var_160 = var_130 & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) & "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and ROOMNO='" 
  loc_10CF503:   unk_45D1C7.Execute CStr(var_160 & CVar(CStr(Me.TXT_FRTABLE.defText)) & "'"), var_1C8, TXT_TOTABLE.DispID_8001
  loc_10CF541:   unk_45D1C7.CommitTrans
  loc_10CF567:   MsgBox("Table is changed", &H40, "Table Change", var_EC, var_10C)
  loc_10CF577: End If
  loc_10CF577: Call Proc_225_31_E4DE94(TXT_FRTABLE.DispID_8001)
  loc_10CF586: Proc_6_93_EACCB4(Me.TXT_FRTABLE)
  loc_10CF598: Proc_6_93_EACCB4(Me.TXT_TOTABLE)
  loc_10CF5A0: Exit Sub
  loc_10CF5A1: ' Referenced from: 10CF328
  loc_10CF5A7: unk_45D1C7.RollbackTrans
  loc_10CF5B4: Set var_88 = Err()
  loc_10CF5BA: Call 0.Method_arg_2C (var_9C)
  loc_10CF5DB: MsgBox(CVar(var_9C), &H10, " Table Change Message", var_EC, var_10C)
  loc_10CF5EE: Exit Sub
End Sub

Public Function MasterFormExitGet() '45DC74
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '45DC83
  MasterFormExit = Value
End Sub

Public Function mREFRESHGet() '45DC92
  mREFRESHGet = mREFRESH
End Function

Public Sub mREFRESHPut(Value) '45DCA1
  mREFRESH = Value
End Sub

Public Function LocalRestCodeGet() '45DCB0
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '45DCBF
  LocalRestCode = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E0D434
  'Data Table: 45D1C4
  loc_E0D42C: global_72 = vNewValue
  loc_E0D430: Exit Sub
End Sub

Public Property Get PTableNo() 'E0D3A4
  'Data Table: 45D1C4
  loc_E0D398: var_88 = global_72
  loc_E0D39B: PTableNo = 
End Sub

Public Property Get OpenMode() 'E038D0
  'Data Table: 45D1C4
  loc_E038C9: OpenMode = global_76
End Sub

Public Property Let OpenMode(vNewValue) 'E02BC0
  'Data Table: 45D1C4
  loc_E02BBA: global_76 = vNewValue
  loc_E02BBD: Exit Sub
End Sub

Public Property Get TVacantColor() 'E0D11C
  'Data Table: 45D1C4
  loc_E0D110: var_94 = global_80 'Variant
  loc_E0D114: TVacantColor = 
End Sub

Public Property Let TVacantColor(vNewValue) 'E0EAB4
  'Data Table: 45D1C4
  loc_E0EAAC: global_80 = vNewValue
  loc_E0EAB0: Exit Sub
End Sub

Public Sub Proc_225_28_14E2EA0
  'Data Table: 45D1C4
  Dim var_96 As Integer
  Dim var_A4 As String
  Dim var_A8 As String
  Dim unk_45D1C7 As Connection15
  Dim var_B8 As Variant
  Dim var_9C As Recordset15
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_F8 As String
  Dim var_8A As Integer
  Dim var_C8 As Variant
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_138 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_260 As Variant
  Dim var_174 As Field20
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_170 As Variant
  Dim var_1DC As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_2B0 As Variant
  Dim var_92 As Integer
  Dim var_A0 As Recordset15
  loc_14E2102: var_96 = 0
  loc_14E212C: unk_45D1C7.Execute "Select Kotyn from Depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_14E2137: Set var_9C = var_CC
  loc_14E2159: var_CC = var_9C.Fields
  loc_14E2169: var_C8 = var_CC.Item("KotYN").Value
  loc_14E2183: If (var_C8 = "Y") Then
  loc_14E219A:   var_A4 = "SELECT RoomMast.Code as code,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_14E21B2:   var_F8 = var_A4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & LocalRestCode & "' ORDER BY  RoomMast.code"
  loc_14E21BB:   unk_45D1C7.Execute var_F8, var_C8, -1
  loc_14E21C6:   Set var_88 = var_CC
  loc_14E21F1:   var_A4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & LocalRestCode
  loc_14E21F8:   var_A8 = var_A4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE)WHERE RESTCODE='"
  loc_14E2212:   unk_45D1C7.Execute var_A8 & LocalRestCode & "' order by T.Code", var_C8, -1
  loc_14E221D:   Set var_A0 = var_CC
  loc_14E2234: Else
  loc_14E2248:   var_A4 = "SELECT RoomMast.Code as code,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_14E2260:   var_F8 = var_A4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & LocalRestCode & "' ORDER BY  RoomMast.code"
  loc_14E2269:   unk_45D1C7.Execute var_F8, var_C8, -1
  loc_14E2274:   Set var_88 = var_CC
  loc_14E229F:   var_A4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & LocalRestCode
  loc_14E22A6:   var_A8 = var_A4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE)WHERE RESTCODE='"
  loc_14E22C0:   unk_45D1C7.Execute var_A8 & LocalRestCode & "' order by T.Code", var_C8, -1
  loc_14E22CB:   Set var_A0 = var_CC
  loc_14E22DF: End If
  loc_14E22E1: var_8A = 9
  loc_14E22FB: If (Me.Recordset15.RecordCount > 0) Then
  loc_14E232B:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_14E2398:     var_C8 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_14E23B9:     var_8C = CInt(((Val(CStr(Format(var_C8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_14E23D1:   Else
  loc_14E2400:     var_C8 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_14E2421:     var_8C = CInt(((Val(CStr(Format(var_C8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_14E2430:   End If
  loc_14E2433: Else
  loc_14E2436: Else
  loc_14E2438:   var_90 = 1
  loc_14E243D:   var_8E = 0
  loc_14E2453:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_14E246E:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_14E2488:   Call Proc_225_29_111F22C((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1, var_8C)
  loc_14E24A0:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_14E24BB:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_14E24D2:   Me.FGrid1.Redraw = False
  loc_14E24FF:   For var_128 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_128 'Integer
  loc_14E2509:     var_B8 = CVar(CLng(var_94)) 'Long
  loc_14E250E:     var_138 = &H320
  loc_14E251B:     Set var_CC = Me.FGrid1
  loc_14E2521:     LateIdCallSt
  loc_14E252F:   Next var_128 'Integer
  loc_14E2534:   ' Referenced from:   14E2E6B
  loc_14E2546:   If Not(Me.FGrid1.EOF) Then
  loc_14E254B:     var_90 = 1
  loc_14E254E:     ' Referenced from:   14E2E68
  loc_14E2558:     If (var_90 <= (var_8A - 1)) Then
  loc_14E255D:       var_96 = &HFF
  loc_14E256F:       For var_14C = (var_8C - 6) To (var_8C - 1):   var_94 = var_14C 'Integer
  loc_14E257F:         If (var_94 = (var_8C - 6)) Then
  loc_14E2595:           var_F0 = Me.FGrid1.Col
  loc_14E25CE:           var_110 = CVar(Proc_6_38_E69628(CVar(Me.var_F0.Fields.Item("Code")), CVar(CLng(var_F0)), CVar(CLng(var_90)))) 'String
  loc_14E25D6:           Set var_174 = Me.FGrid1
  loc_14E25DC:           LateIdCallSt
  loc_14E260F:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E261E:           Me.FGrid1.Col = "Code"
  loc_14E262D:         End If
  loc_14E2637:         If (var_94 = (var_8C - 5)) Then
  loc_14E2651:           If (Me.Recordset15.RecordCount > 0) Then
  loc_14E265A:             Me.Recordset15.MoveFirst
  loc_14E265F:           End If
  loc_14E2691:           var_A8 = (var_8C - 6) & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_174, var_110)
  loc_14E26A2:           Me.Recordset15.Filter = CVar(CStr(Me.Recordset15.RecordCount) & "'")
  loc_14E26CF:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_14E2706:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_14E271C:               var_260 = Me.FGrid1.Col
  loc_14E2761:               var_F0 = (Me.var_260.Fields.Item("ShortName").Value + "(")
  loc_14E2797:               var_194 = (CVar(CStr(Me.Recordset15.RecordCount) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_14E27A0:               var_1A4 = (var_194 + ")")
  loc_14E27A9:               var_1B4 = (var_1A4 + vbCrLf)
  loc_14E27D8:               var_1DC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1B4, "*", CVar(CLng(var_260)))) 'String
  loc_14E27DB:               var_1EC = (CVar(CLng(var_90)) + var_1DC)
  loc_14E27E4:               var_20C = (var_1EC + vbCrLf)
  loc_14E27ED:               var_22C = (var_20C + "Vacant")
  loc_14E27F6:               var_2B0 = CVar(CStr(var_96 & var_22C)) 'String
  loc_14E27FE:               Set var_2C4 = Me.FGrid1
  loc_14E2804:               LateIdCallSt
  loc_14E284D:               Me.FGrid1.Filter = 0
  loc_14E2852:             End If
  loc_14E2852:           End If
  loc_14E286B:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E287A:           Me.FGrid1.Col = 0
  loc_14E2889:         End If
  loc_14E2893:         If (var_94 = (var_8C - 4)) Then
  loc_14E28AA:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_14E28C6:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_14E28E7:           Call Proc_225_30_FEE854(CByte(CLng(Me.FGrid1.Col)), var_92, var_2C4)
  loc_14E2905:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_14E2926:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E2935:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_14E2944:         End If
  loc_14E294E:         If (var_94 = (var_8C - 3)) Then
  loc_14E2968:           If (Me.Recordset15.RecordCount > 0) Then
  loc_14E2971:             Me.Recordset15.MoveFirst
  loc_14E2976:           End If
  loc_14E29B9:           Me.Recordset15.Filter = CVar(var_2B0 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='") & "'")
  loc_14E29E6:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_14E2A1D:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_14E2A20:               ' Referenced from:   14E2CBB
  loc_14E2A78:               var_110 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_14E2A90:               If (var_90 = var_110) Then
  loc_14E2AAA:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_14E2AB1:                   var_E0 = CVar(CLng(var_90)) 'Long
  loc_14E2AC0:                   var_F0 = Me.FGrid1.Col
  loc_14E2AF9:                   var_110 = CVar(Proc_6_38_E69628(CVar(Me.var_F0.Fields.Item("WaiterName")), CVar(CLng(var_F0)))) 'String
  loc_14E2B01:                   Set var_174 = Me.FGrid1
  loc_14E2B07:                   LateIdCallSt
  loc_14E2B24:                 Else
  loc_14E2B54:                   var_F0 = Me.FGrid1.TextMatrix)
  loc_14E2B7C:                   var_174 = Me.var_F0.Fields.Item("WaiterName")
  loc_14E2BB6:                   If (InStr(var_174, 1, Proc_6_38_E69628(CVar(var_174), CStr(var_F0), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90))), 0) = 0) Then
  loc_14E2BBD:                     var_170 = CVar(CLng(var_90)) 'Long
  loc_14E2C05:                     var_F0 = Me.FGrid1.TextMatrix)
  loc_14E2C45:                     var_F4 = Proc_6_38_E69628(CVar(Me.var_F0.Fields.Item("WaiterName")), CStr(var_F0) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_14E2C49:                     var_194 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_F4) 'String
  loc_14E2C51:                     Set var_1BC = Me.FGrid1
  loc_14E2C57:                     LateIdCallSt
  loc_14E2C82:                   End If
  loc_14E2C82:                 End If
  loc_14E2C88:                 var_A0.MoveNext
  loc_14E2CA4:                 If (var_A0.AbsolutePosition < 0) Then
  loc_14E2CB6:                   Me.Recordset15.Filter = 0
  loc_14E2CBB:                 End If
  loc_14E2CBB:                 GoTo loc_14E2A20
  loc_14E2CBE:               End If
  loc_14E2CBE:             End If
  loc_14E2CBE:           End If
  loc_14E2CD7:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E2CE6:           Me.FGrid1.Col = 0
  loc_14E2CF5:         End If
  loc_14E2CFF:         If (var_94 = (var_8C - 2)) Then
  loc_14E2D4B:           var_110 = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_1BC)) 'String
  loc_14E2D53:           Set var_174 = Me.FGrid1
  loc_14E2D59:           LateIdCallSt
  loc_14E2D8C:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E2D9B:           Me.FGrid1.Col = "KotYN"
  loc_14E2DAA:         End If
  loc_14E2DB4:         If (var_94 = (var_8C - 1)) Then
  loc_14E2DD0:           var_B8 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_14E2DDF:           Me.FGrid1.Col = "KotYN"
  loc_14E2DEE:         End If
  loc_14E2DF1:       Next var_14C 'Integer
  loc_14E2DFC:       var_90 = (var_90 + 1)
  loc_14E2E09:       If (var_90 > (var_8A - 1)) Then
  loc_14E2E25:         var_B8 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_14E2E34:         Me.FGrid1.Col = "KotYN"
  loc_14E2E43:       End If
  loc_14E2E49:       var_88.MoveNext
  loc_14E2E62:       If (var_88.EOF = &HFF) Then
  loc_14E2E65:         GoTo loc_14E2E6E
  loc_14E2E68:       End If
  loc_14E2E68:       GoTo loc_14E254E
  loc_14E2E6B:     End If
  loc_14E2E6B:     GoTo loc_14E2534
  loc_14E2E6E:     ' Referenced from:   14E2E65
  loc_14E2E6E:   End If
  loc_14E2E6E: End If
  loc_14E2E7C: Me.FGrid1.Redraw = True
  loc_14E2E89: Set var_88 = Nothing
  loc_14E2E91: Set var_A0 = Nothing
  loc_14E2E99: Set var_9C = Nothing
  loc_14E2E9C: Exit Sub
End Sub

Public Sub Proc_225_29_111F22C(arg_C, arg_10) '111F22C
  'Data Table: 45D1C4
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_111EED3: Me.FGrid1.Row = 0
  loc_111EEEE: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111EEF3: var_CC = 0
  loc_111EF00: Set var_E0 = Me.FGrid1
  loc_111EF06: LateIdCallSt
  loc_111EF18: ' Referenced from: 111F16F
  loc_111EF1E: If (arg_10 < 5) Then
  loc_111EF21:   GoTo loc_111F172
  loc_111EF24: End If
  loc_111EF28: Set var_E4 = Me.FGrid1
  loc_111EF39: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_111EF43:   var_98 = CVar(CLng(var_86)) 'Long
  loc_111EF48:   var_CC = 0
  loc_111EF55:   Set var_AC = Me.FGrid1
  loc_111EF5B:   LateIdCallSt
  loc_111EF69: Next var_E8 'Integer
  loc_111EF7D: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_111EF8D:   If (var_86 = (arg_10 - 5)) Then
  loc_111EF94:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111EF99:     var_CC = 0
  loc_111EFA6:     Set var_AC = Me.FGrid1
  loc_111EFAC:     LateIdCallSt
  loc_111EFBB:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111EFC0:     var_CC = 1
  loc_111EFCA:     Set var_AC = Me.FGrid1
  loc_111EFD0:     LateIdCallSt
  loc_111EFEE:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111EFF7:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111EFFC:     var_FC = "Table No"
  loc_111F006:     Set var_E0 = Me.FGrid1
  loc_111F00C:     LateIdCallSt
  loc_111F01E:   End If
  loc_111F028:   If (var_86 = (arg_10 - 4)) Then
  loc_111F02F:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F034:     var_CC = &H4B0
  loc_111F041:     Set var_AC = Me.FGrid1
  loc_111F047:     LateIdCallSt
  loc_111F056:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F05B:     var_CC = 1
  loc_111F065:     Set var_AC = Me.FGrid1
  loc_111F06B:     LateIdCallSt
  loc_111F089:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111F092:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111F097:     var_FC = "Status"
  loc_111F0A1:     Set var_E0 = Me.FGrid1
  loc_111F0A7:     LateIdCallSt
  loc_111F0B9:   End If
  loc_111F0C3:   If (var_86 = (arg_10 - 3)) Then
  loc_111F0CA:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F0CF:     var_CC = &H12C
  loc_111F0DC:     Set var_AC = Me.FGrid1
  loc_111F0E2:     LateIdCallSt
  loc_111F0F1:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111F0FC:     var_CC = CVar(CInt(4)) 'Integer
  loc_111F104:     Set var_AC = Me.FGrid1
  loc_111F10A:     LateIdCallSt
  loc_111F128:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111F131:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111F136:     var_FC = vbNullString
  loc_111F140:     Set var_E0 = Me.FGrid1
  loc_111F146:     LateIdCallSt
  loc_111F158:   End If
  loc_111F15B: Next var_EC 'Integer
  loc_111F162: Set var_E4 = Nothing 
  loc_111F16C: arg_10 = (arg_10 - 6)
  loc_111F16F: GoTo loc_111EF18
  loc_111F172: ' Referenced from: 111EF21
  loc_111F199: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_111F1B2:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_111F1C2:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_111F1DB:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_111F1F6:     Me.FGrid1.CellBackColor = &HE69839
  loc_111F211:     Me.FGrid1.CellForeColor = &HFFFF
  loc_111F21C:   Next var_114 'Integer
  loc_111F224: Next var_110 'Integer
  loc_111F229: Exit Sub
End Sub

Public Sub Proc_225_30_FEE854(arg_C) 'FEE854
  'Data Table: 45D1C4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_FEE687: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FEE696: var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_FEE6EA: If (Left(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 1) = "*") Then
  loc_FEE706:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEE715:   Me.FGrid1.Col = var_A8
  loc_FEE740:   Me.FGrid1.CellBackColor = CVar(CLng(TVacantColor))
  loc_FEE764:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEE773:   Me.FGrid1.Col = CVar(CLng(TVacantColor))
  loc_FEE79E:   Me.FGrid1.CellBackColor = CVar(CLng(TVacantColor))
  loc_FEE7AC: Else
  loc_FEE7C5:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEE7D4:   Me.FGrid1.Col = CVar(CLng(TVacantColor))
  loc_FEE7F6:   Me.FGrid1.CellBackColor = &H404040
  loc_FEE817:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEE826:   Me.FGrid1.Col = &H404040
  loc_FEE848:   Me.FGrid1.CellBackColor = &H404040
  loc_FEE850: End If
  loc_FEE850: Exit Sub
  loc_FEE851: Exit Sub
End Sub

Public Sub Proc_225_31_E4DE94
  'Data Table: 45D1C4
  loc_E4DE70: Me.TXT_FRTABLE.BoundText = vbNullString
  loc_E4DE88: Me.TXT_TOTABLE.BoundText = vbNullString
  loc_E4DE90: Exit Sub
End Sub
