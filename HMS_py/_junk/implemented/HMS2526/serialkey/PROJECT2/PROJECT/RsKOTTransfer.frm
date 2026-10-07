VERSION 5.00
Begin VB.Form RsKOTTransfer
  Caption = "KOT Transfer"
  BackColor = &H80000005&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsKOTTransfer.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4905
  ClientHeight = 3195
  Appearance = 0 'Flat
  Begin Frame FrameOffline
    Left = 0
    Top = 0
    Width = 8820
    Height = 6645
    TabIndex = 0
    BorderStyle = 0 'None
    Begin DataCombo TXT_PKOT
      Left = 1905
      Top = 1485
      Width = 1905
      Height = 360
      TabIndex = 1
    End
    Begin DataCombo TXT_TOTABLE
      Left = 5850
      Top = 1485
      Width = 1905
      Height = 360
      TabIndex = 2
    End
    Begin BtnEnh CmdExit
      Left = 4215
      Top = 3525
      Width = 1575
      Height = 750
      TabIndex = 13
    End
    Begin BtnEnh CmdChange
      Left = 2640
      Top = 3525
      Width = 1575
      Height = 750
      TabIndex = 14
    End
    Begin Label LblFormCaption
      BackColor = &HC0FFFF&
      Left = 0
      Top = 0
      Width = 8835
      Height = 540
      TabIndex = 15
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
      X1 = 4260
      Y1 = 1140
      X2 = 4260
      Y2 = 2835
      BorderWidth = 2
    End
    Begin Label Label1
      Caption = "On Table:"
      ForeColor = &H800000&
      Left = 1860
      Top = 1920
      Width = 930
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
    Begin Label LblKOTTable
      Caption = "KOTTB"
      ForeColor = &HFF&
      Left = 2835
      Top = 1920
      Width = 825
      Height = 255
      TabIndex = 11
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
      Caption = "KOT NO. #"
      ForeColor = &HC00000&
      Left = 675
      Top = 1530
      Width = 975
      Height = 240
      TabIndex = 4
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
    Begin Label LblToTable
      Caption = "TABLE NO. #"
      ForeColor = &HC00000&
      Left = 4620
      Top = 1530
      Width = 1200
      Height = 240
      TabIndex = 3
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
    Begin Shape Shape2
      BorderColor = &HC00000&
      Left = 480
      Top = 1125
      Width = 7635
      Height = 1725
      Shape = 4
      BorderWidth = 2
      FillColor = &HC000C0&
    End
  End
  Begin Frame FrameOnline
    Left = 9090
    Top = 420
    Width = 4605
    Height = 4845
    TabIndex = 5
    BorderStyle = 0 'None
    Begin Frame FrameOption
      Caption = "Frame1"
      Left = 195
      Top = 3570
      Width = 2730
      Height = 1200
      TabIndex = 8
      BorderStyle = 0 'None
      Begin CommandButton CmdTChange
        Caption = "CHANGE && EXIT"
        BackColor = &HE0E0E0&
        Left = 15
        Top = 0
        Width = 2715
        Height = 600
        TabIndex = 10
        BeginProperty Font
          Name = "Tahoma"
          Size = 9
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        MaskColor = &HFFFFFF&
        Style = 1
      End
      Begin CommandButton CmdTExit
        Caption = "EXIT"
        BackColor = &HE0E0E0&
        Left = 15
        Top = 600
        Width = 2715
        Height = 600
        TabIndex = 9
        BeginProperty Font
          Name = "Tahoma"
          Size = 9
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        MaskColor = &HFFFFFF&
        Style = 1
      End
    End
    Begin MSHFlexGrid FGrid1
      Left = 90
      Top = 1185
      Width = 2025
      Height = 630
      TabIndex = 7
    End
    Begin Label LBLRoomName
      BackColor = &HC0FFFF&
      ForeColor = &HC0&
      Left = 60
      Top = 795
      Width = 11965
      Height = 360
      TabIndex = 6
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Tahoma"
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
End

Attribute VB_Name = "RsKOTTransfer"

Private MasterFormExit As Integer
Private mREFRESH As Integer
Private global_80 As Long

Private Sub TXT_PKOT_UnknownEvent_11 '1066C40
  'Data Table: 47ECC8
  Dim var_E4 As Integer
  Dim var_88 As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_AC As String
  Dim unk_47ECCB As Connection15
  Dim var_D0 As Variant
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_10C As Double
  loc_10669EB: If (LocalRestType = "Room Service") Then
  loc_10669F4:   var_E4 = 0
  loc_1066A1B:   var_A0 = "SELECT Max(RoomNo) FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode & "' and ROOMTYPE='RO' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y' And DOCID='"
  loc_1066A44:   unk_47ECCB.Execute var_A0 & CStr(Me.TXT_PKOT.BoundText) & "'", var_CC, -1
  loc_1066A4C:   var_D0 = var_D0.Fields
  loc_1066A54:   var_E4 = var_D4.Item(var_D4)
  loc_1066A5C:   var_E8 = var_E8.Value
  loc_1066A76:   Me.LblKOTTable.Caption = Proc_6_38_E69628(var_F8)
  loc_1066AA7:   var_88 = "SELECT RC.DOCID AS CODE, LTrim(RTrim(RC.RoomNo)) AS Name FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_1066ABF:   var_AC = var_88 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And D.Code='" & LocalRestCode & "' And LTrim(RTrim(RC.RoomNo))<>'"
  loc_1066AED:   Me.TXT_TOTABLE.Tag = CVar(var_AC & Me.LblKOTTable.Caption & "' Order by RC.ROOMNO")
  loc_1066B0E: Else
  loc_1066B28:   var_10C = Val(CStr(Me.TXT_PKOT.defText))
  loc_1066B31:   var_E4 = 0
  loc_1066B58:   var_A4 = "SELECT Max(RoomNo) FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode & "' and ROOMTYPE='TB' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y' And VNO="
  loc_1066B74:   unk_47ECCB.Execute var_A4 & CStr(var_10C) & vbNullString, var_CC, -1
  loc_1066B7C:   var_D0 = var_D0.Fields
  loc_1066B84:   var_E4 = var_D4.Item(var_D4)
  loc_1066B8C:   var_E8 = var_E8.Value
  loc_1066BA6:   Me.LblKOTTable.Caption = Proc_6_38_E69628(var_F8, var_F8)
  loc_1066BFC:   var_A8 = "SELECT DISTINCT CODE,code as Name From RoomMast Where type='TB' AND RESTCODE='" & LocalRestCode & "' And Code<>'" & Me.LblKOTTable.Caption
  loc_1066C11:   Me.TXT_TOTABLE.Tag = CVar(var_A8 & "' ORDER BY code")
  loc_1066C2B: End If
  loc_1066C35: Proc_6_93_EACCB4(Me.TXT_TOTABLE, var_10C)
  loc_1066C3D: Exit Sub
End Sub

Private Sub Form_Load() '121C6A4
  'Data Table: 47ECC8
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_A8 As Variant
  loc_121C1C4: On Error Goto loc_121C69C
  loc_121C1D0: Call 0.Method_arg_160 (var_8C)
  loc_121C1DE: Call 0.Method_arg_164 (var_8C)
  loc_121C1ED: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_121C1FA: Set var_8C = Me.PictShortCuts
  loc_121C200: MDIForm1.PictShortCuts.BackColor = CLng(MemVar_1F951B4)
  loc_121C216: Me.FrameOnline.BackColor = CLng(MemVar_1F951B4)
  loc_121C22C: Me.FrameOption.BackColor = CLng(MemVar_1F951B4)
  loc_121C239: var_94 = 0
  loc_121C279: Me.LblFormCaption.Caption = RestName & " Kot Transfer"
  loc_121C295: If (OpenMode = 1) Then
  loc_121C2A4:   Me.FrameOffline.Visible = False
  loc_121C2BA:   Me.FrameOnline.Top = CDbl(0)
  loc_121C2D0:   Me.FrameOnline.Left = CDbl(0)
  loc_121C2D8:   Call Proc_226_33_14E2058(Proc_96_17_FDCB2C(LocalRestCode, LocalRestType, RestName), global_72)
  loc_121C2EF:   Me.FGrid1.Top = CVar(CDbl(0))
  loc_121C309:   Me.FGrid1.Left = CVar(CDbl(0))
  loc_121C337:   var_A8 = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_121C346:   Me.FGrid1.Height = CVar(CDbl(0))
  loc_121C368:   Me.FGrid1.Width = CVar(CDbl(12010))
  loc_121C39E:   If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(200))) < CDbl(12010)) Then
  loc_121C3C2:     var_A8 = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(&HA))) 'Single
  loc_121C3D1:     Me.FGrid1.Width = CVar(CDbl(12010))
  loc_121C3E0:   End If
  loc_121C419:   Me.LBLRoomName.Caption = "CHANGE TABLE :   " & PTableNo & "     TO     "
  loc_121C444:   Me.LBLRoomName.Top = (CDbl(Me.FGrid1.Height) + CDbl(150))
  loc_121C461:   Me.LBLRoomName.Left = CDbl(&H2D)
  loc_121C48C:   Me.FrameOption.Left = (CDbl(Me.FGrid1.Width) + CDbl(250))
  loc_121C4D8:   Me.FrameOption.Top = (((CDbl(Me.FGrid1.Height) - Me.FrameOption.Height) - CDbl(200)) / CDbl(2))
  loc_121C4F5:   Me.FrameOption.Visible = False
  loc_121C500: Else
  loc_121C50B:   If (LocalRestType = "Room Service") Then
  loc_121C518:     var_D8 = "CODE"
  loc_121C53A:     var_94 = "SELECT DISTINCT DOCID AS CODE,VNO as Name FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode
  loc_121C545:     Proc_6_92_EF7BF4(var_94 & "' and ROOMTYPE='RO' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y' ORDER BY VNO", Me.TXT_PKOT, "Name")
  loc_121C566:     var_E0 = "CODE"
  loc_121C585:     var_94 = "SELECT RC.DOCID AS CODE, LTrim(RTrim(RC.RoomNo)) AS Name FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_121C5A1:     Proc_6_92_EF7BF4(var_94 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And D.Code='" & LocalRestCode & "' Order by LTrim(RTrim(RC.RoomNo))", Me.TXT_TOTABLE, "Name")
  loc_121C5BF:   Else
  loc_121C5EB:     var_94 = "SELECT DISTINCT VNO AS CODE,VNO as Name FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode
  loc_121C5F6:     Proc_6_92_EF7BF4(var_94 & "' and ROOMTYPE='TB' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y'", Me.TXT_PKOT, "Name", "CODE")
  loc_121C617:     var_D8 = "CODE"
  loc_121C644:     Proc_6_92_EF7BF4("SELECT DISTINCT CODE,code as Name From RoomMast Where type='TB' AND RESTCODE='" & LocalRestCode & "' ORDER BY code", Me.TXT_TOTABLE, "Name", var_D8)
  loc_121C65B:   End If
  loc_121C667:   Me.FrameOnline.Visible = False
  loc_121C67D:   Me.FrameOffline.Left = CDbl(0)
  loc_121C693:   Me.FrameOffline.Top = CDbl(0)
  loc_121C69B: End If
  loc_121C69B: Exit Sub
  loc_121C69C: ' Referenced from: 121C1C4
  loc_121C69C: Proc_6_60_E63754(var_E0, var_D8)
  loc_121C6A1: Exit Sub
End Sub

Private Sub Form_Resize() 'E5D0FC
  'Data Table: 47ECC8
  loc_E5D0C6: Me.LblFormCaption.Left = CDbl(0)
  loc_E5D0ED: Me.LblFormCaption.Width = Me.FrameOffline.Width
  loc_E5D0F9: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E02FBC
  'Data Table: 47ECC8
  loc_E02FB5: MasterFormExit = 0
  loc_E02FB8: Exit Sub
End Sub

Private Sub Form_Activate() 'E90C48
  'Data Table: 47ECC8
  loc_E90BD1: If (mREFRESH = &HFF) Then
  loc_E90BDE:   Proc_6_93_EACCB4(Me.TXT_PKOT)
  loc_E90BF0:   Proc_6_93_EACCB4(Me.TXT_TOTABLE)
  loc_E90BFD:   mREFRESH = 0
  loc_E90C00: End If
  loc_E90C00: Call Proc_226_33_14E2058(mREFRESH)
  loc_E90C0B: Call 0.Method_arg_108 (var_8C)
  loc_E90C1D: Me.FrameOnline.Height = var_8C
  loc_E90C2B: Call 0.Method_arg_100 (var_8C)
  loc_E90C3D: Me.FrameOnline.Width = var_8C
  loc_E90C45: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E3A748
  'Data Table: 47ECC8
  loc_E3A725: If (MasterFormExit = &HFF) Then
  loc_E3A735:   Me.Global.Unload Me
  loc_E3A73D: End If
  loc_E3A742: mREFRESH = &HFF
  loc_E3A745: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3A6E8
  'Data Table: 47ECC8
  loc_E3A6BC: On Error Goto loc_E3A6E0
  loc_E3A6D7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3A6DF: Exit Sub
  loc_E3A6E0: ' Referenced from: E3A6BC
  loc_E3A6E0: Proc_6_60_E63754(Shift)
  loc_E3A6E5: Exit Sub
End Sub

Private Sub CmdChange_UnknownEvent_9 '12091D4
  'Data Table: 47ECC8
  Dim var_8C As DataCombo
  Dim var_A0 As String
  Dim var_114 As Variant
  Dim var_D0 As Variant
  Dim unk_47ECCB As Connection15
  Dim var_128 As String
  Dim var_F0 As Variant
  Dim var_88 As Recordset15
  Dim var_12C As Field20
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_1EC As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  loc_1208D64: On Error Goto loc_1209184
  loc_1208D8A: If (CStr(Me.TXT_PKOT.defText) = vbNullString) Then
  loc_1208DAE:   MsgBox("Fill KOT NO. #", &H40, "Validation", var_F0, var_110)
  loc_1208DC2:   Set var_8C = Me.TXT_PKOT
  loc_1208DD3:   Exit Sub
  loc_1208DD4: End If
  loc_1208DF7: If (CStr(Me.TXT_TOTABLE.defText) = vbNullString) Then
  loc_1208E1B:   MsgBox("Fill TABLE NO. #", &H40, "Validation", var_F0, var_110)
  loc_1208E2F:   Set var_8C = Me.TXT_TOTABLE
  loc_1208E40:   Exit Sub
  loc_1208E41: End If
  loc_1208E5F: Set var_114 = Me.TXT_TOTABLE
  loc_1208E65: var_D0 = var_114.defText
  loc_1208E8B: If ((CStr(Me.TXT_PKOT.defText) <> vbNullString) And (CStr(var_D0) <> vbNullString)) Then
  loc_1208E97:   unk_47ECCB.BeginTrans var_11C
  loc_1208EA7:   If (LocalRestType = "Room Service") Then
  loc_1208EE5:     var_128 = "SELECT * FROM ROOMOCC RC WHERE DocId='" & CStr(Me.TXT_TOTABLE.BoundText) & "' And (RC.LOGSITE_CODE='" & MemVar_1F95078 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL"
  loc_1208EEE:     unk_47ECCB.Execute var_128, var_D0, -1
  loc_1208F44:     var_F0 = CVar("Update Kot Set ROOMNO='" & CStr(Me.TXT_TOTABLE.defText) & "',ROOMCAT='") 'String
  loc_1208F59:     var_114 = var_114.Fields
  loc_1208F61:     var_12C = var_114.Item("RoomCat")
  loc_1208F9F:     Proc_6_7_F26918(var_17C, Date, var_F0 & var_12C.Value & "',U_Name1='" & CVar(MemVar_1F950C8) & "',U_EntDt1=", var_260, -1)
  loc_1208FC6:     var_1EC = var_264 & var_17C & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) & "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and DOCID='" 
  loc_1208FF6:     unk_47ECCB.Execute CStr(var_1EC & CVar(CStr(Me.TXT_PKOT.BoundText)) & "'"), var_114, TXT_TOTABLE.DispID_8001
  loc_120903B:   Else
  loc_120905D:     var_A0 = CStr(Me.TXT_TOTABLE.defText)
  loc_1209076:     var_110 = CVar("Update Kot Set ROOMNO='" & var_A0 & "',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") 'String
  loc_1209087:     Proc_6_7_F26918(var_F0, Date, var_110, var_1EC)
  loc_120908F:     var_13C = -1 & var_F0 
  loc_12090AE:     var_16C = var_F0 & var_12C.Value & "',U_Name1='" & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) & "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and VNO=" 
  loc_12090DE:     unk_47ECCB.Execute CStr(var_16C & CVar(CStr(Me.TXT_PKOT.defText)) & vbNullString), var_12C, TXT_PKOT.DispID_8001
  loc_1209116:   End If
  loc_120911C:   unk_47ECCB.CommitTrans
  loc_1209142:   MsgBox("KOT is changed", &H40, "KOT Change", var_F0, var_110)
  loc_1209152: End If
  loc_1209152: Call Proc_226_36_E5D3E8()
  loc_1209161: Proc_6_93_EACCB4(Me.TXT_PKOT)
  loc_1209173: Proc_6_93_EACCB4(Me.TXT_TOTABLE)
  loc_1209180: Set var_88 = Nothing
  loc_1209183: Exit Sub
  loc_1209184: ' Referenced from: 1208D64
  loc_120918A: unk_47ECCB.RollbackTrans
  loc_1209197: Set var_8C = Err()
  loc_120919D: Call 0.Method_arg_2C (var_A0)
  loc_12091BE: MsgBox(CVar(var_A0), &H10, " Table Change Message", var_F0, var_110)
  loc_12091D1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'EB9DDC
  'Data Table: 47ECC8
  Dim var_98 As Variant
  Dim var_A8 As Long
  loc_EB9D63: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_EB9D66:   Exit Sub
  loc_EB9D67: End If
  loc_EB9D71: var_98 = Me.FGrid1.Rows
  loc_EB9D80: var_A8 = 1
  loc_EB9DC1: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_EB9DC4:   Exit Sub
  loc_EB9DC5: End If
  loc_EB9DD1: Me.FrameOption.Visible = True
  loc_EB9DD9: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E90CF4
  'Data Table: 47ECC8
  loc_E90C82: If (KeyCode = &HD) Then
  loc_E90CB0:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E90CB3:     Call Fgrid1_UnknownEvent_9()
  loc_E90CB8:   End If
  loc_E90CEB:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E90CEE:     Call Fgrid1_UnknownEvent_B()
  loc_E90CF3:   End If
  loc_E90CF3: End If
  loc_E90CF3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '11634A0
  'Data Table: 47ECC8
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
  Dim unk_47ECCB As Connection15
  Dim var_13C As Variant
  loc_116311C: On Error Goto loc_116344F
  loc_1163152: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_1163169:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1163175: Else
  loc_11631B4:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11631C8: End If
  loc_11631DB: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11631E4: var_EC = CVar(CLng(var_86)) 'Long
  loc_116321F: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_1163227: var_14C = "VACANT"
  loc_1163250: var_1A0 = CVar(CLng((var_86 + 3))) 'Long
  loc_1163276: var_1E4 = var_1A0 And (CStr(Me.FGrid1.TextMatrix)) = "Y")
  loc_116329F: If CBool(var_1E4) Then
  loc_11632AD:   var_8C = PTableNo
  loc_11632BA:   var_BC = Me.FGrid1.Col
  loc_11632C7:   Set var_94 = Me.FGrid1
  loc_11632F2:   var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_116331B:   var_90 = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1163345:   If ((var_8C <> vbNullString) And (var_90 <> vbNullString)) Then
  loc_1163351:     unk_47ECCB.BeginTrans var_1E8
  loc_116336A:     var_A8 = "Update Kot Set ROOMNO='" & var_90
  loc_116337F:     var_10C = CVar(var_A8 & "',U_Name1='" & MemVar_1F950C8 & "',U_EntDt1=") 'String
  loc_1163390:     Proc_6_7_F26918(var_BC, Date, var_10C, var_1E4, -1, var_94, var_EC, CVar(CLng(var_94.Row)))
  loc_1163398:     var_11C = var_BC & var_BC 
  loc_11633AE:     var_13C = var_11C & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) 
  loc_11633B2:     var_EC = "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and ROOMNO='"
  loc_11633C5:     var_14C = "'"
  loc_11633D8:     unk_47ECCB.Execute CStr(var_13C & var_EC & CVar(var_8C) & var_14C), CVar(CLng(Me.FGrid1.Row)), (var_13C = var_14C)
  loc_1163408:     unk_47ECCB.CommitTrans
  loc_116340D:   End If
  loc_116341A:   Me.Global.Unload Me
  loc_1163425: Else
  loc_1163433:   var_CC = "Select A Vacant Table"
  loc_116343E:   MsgBox(var_CC, &H40, var_BC, var_10C, var_11C)
  loc_116344E: End If
  loc_116344E: Exit Sub
  loc_116344F: ' Referenced from: 116311C
  loc_1163455: unk_47ECCB.RollbackTrans
  loc_1163462: Set var_94 = Err()
  loc_1163468: Call 0.Method_arg_2C (var_A8, var_EC, var_CC)
  loc_1163489: MsgBox(CVar(var_A8), &H10, " Table Change Message", var_10C, var_11C)
  loc_116349C: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'E5B168
  'Data Table: 47ECC8
  loc_E5B12E: If (KeyCode = &HD) Then
  loc_E5B15C:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5B15F:     Call Fgrid1_UnknownEvent_9()
  loc_E5B164:   End If
  loc_E5B164: End If
  loc_E5B164: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB6580
  'Data Table: 47ECC8
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  loc_FB6400: Set var_88 = Me.FGrid1
  loc_FB6414: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB6425: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB6438: var_FC = CStr(var_88.TextMatrix))
  loc_FB64AA: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB64B9:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB64CA:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB64EA:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB64FB:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB6538:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB6548:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB656A: Else
  loc_FB6573:   var_88.ToolTipText = vbNullString
  loc_FB6578: End If
  loc_FB657A: Set var_88 = Nothing 
  loc_FB657E: Exit Sub
  loc_FB657F: var_16C = var_14C
End Sub

Private Sub Fgrid1_UnknownEvent_12 '1402690
  'Data Table: 47ECC8
  Dim var_164 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_174 As Variant
  Dim var_188 As String
  Dim unk_47ECCB As Connection15
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
  loc_1401D17: var_164 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_1401D2E: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401D55: var_114 = Me.FGrid1.TextMatrix)
  loc_1401D9A: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_1401DB0:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401DCE:   var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1401DDD:   var_C0 = Me.FGrid1.TextMatrix)
  loc_1401DF2:   var_164 = 0
  loc_1401E31:   unk_47ECCB.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_1401E39:   var_104 = var_104.Fields
  loc_1401E41:   var_164 = var_18C.Item(var_18C)
  loc_1401E69:   var_174 = CVar(CVar(CLng(Me.FGrid1.Col)) & Proc_6_38_E69628(CVar(var_190), var_190, global_68, var_C0)) & Space(5) 
  loc_1401E80:   var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401E9E:   var_1EC = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1401EDA:   var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1401EF1:   var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401F0F:   var_2B8 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_1401F4B:   var_32C = var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1401F62:   var_364 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1401F80:   var_384 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_1401FBA:   Me.LBLRoomName.Caption = CStr(var_384 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_140203A:   Me.LBLRoomName.Refresh
  loc_1402045: Else
  loc_140206A:   var_164 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_1402081:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14020A8:   var_114 = Me.FGrid1.TextMatrix)
  loc_14020ED:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_1402121:     var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1402130:     var_C0 = Me.FGrid1.TextMatrix)
  loc_1402145:     var_164 = 0
  loc_1402184:     unk_47ECCB.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_140218C:     var_104 = var_104.Fields
  loc_1402194:     var_164 = var_18C.Item(var_18C)
  loc_14021A9:     var_154 = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E69628(CVar(var_190), var_190, global_68, var_C0, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_14021BC:     var_174 = var_154 & Space(5) 
  loc_14021D3:     var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14021F1:     var_1EC = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_140222D:     var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1402244:     var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1402262:     var_2B8 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_140229C:     Me.LBLRoomName.Caption = CStr(var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1402306:     Me.LBLRoomName.Refresh
  loc_1402311:   Else
  loc_1402336:     var_164 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_140234D:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1402374:     var_114 = Me.FGrid1.TextMatrix)
  loc_14023B9:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_14023ED:       var_F0 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_14023FC:       var_C0 = Me.FGrid1.TextMatrix)
  loc_1402411:       var_164 = 0
  loc_1402447:       var_188 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F95078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'"
  loc_1402450:       unk_47ECCB.Execute var_188, var_114, -1
  loc_1402458:       var_104 = var_104.Fields
  loc_1402460:       var_164 = var_18C.Item(var_18C)
  loc_1402475:       var_154 = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E69628(CVar(var_190), var_190, global_68, var_C0, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_1402488:       var_174 = var_154 & Space(5) 
  loc_140249F:       var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14024BD:       var_1EC = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14024F9:       var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1402510:       var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_140252E:       var_2B8 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_140256A:       var_32C = var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1402581:       var_364 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_140259F:       var_384 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14025D9:       Me.LBLRoomName.Caption = CStr(var_384 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1402659:       Me.LBLRoomName.Refresh
  loc_1402664:     Else
  loc_1402674:       Me.LBLRoomName.Caption = global_68
  loc_1402686:       Me.LBLRoomName.Refresh
  loc_140268E:     End If
  loc_140268E:   End If
  loc_140268E: End If
  loc_140268E: Exit Sub
End Sub

Private Sub CmdTExit_Click() 'E1BCE8
  'Data Table: 47ECC8
  loc_E1BCDD: Me.Global.Unload Me
  loc_E1BCE5: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E19864
  'Data Table: 47ECC8
  loc_E19859: Me.Global.Unload Me
  loc_E19861: Exit Sub
  loc_E19862: CExtInstUnk
End Sub

Private Sub CmdTChange_Click() 'E1DF10
  'Data Table: 47ECC8
  loc_E1DF00: Me.FrameOption.Visible = False
  loc_E1DF08: Call Fgrid1_UnknownEvent_B()
  loc_E1DF0D: Exit Sub
End Sub

Public Function MasterFormExitGet() '47F918
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '47F927
  MasterFormExit = Value
End Sub

Public Function mREFRESHGet() '47F936
  mREFRESHGet = mREFRESH
End Function

Public Sub mREFRESHPut(Value) '47F945
  mREFRESH = Value
End Sub

Public Function LocalRestCodeGet() '47F954
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '47F963
  LocalRestCode = Value
End Sub

Public Function RestNameGet() '47F972
  RestNameGet = RestName
End Function

Public Sub RestNamePut(Value) '47F981
  RestName = Value
End Sub

Public Function LocalRestTypeGet() '47F990
  LocalRestTypeGet = LocalRestType
End Function

Public Sub LocalRestTypePut(Value) '47F99F
  LocalRestType = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E10EFC
  'Data Table: 47ECC8
  loc_E10EF4: global_76 = vNewValue
  loc_E10EF8: Exit Sub
End Sub

Public Property Get PTableNo() 'E10FD4
  'Data Table: 47ECC8
  loc_E10FC8: var_88 = global_76
  loc_E10FCB: PTableNo = 
End Sub

Public Property Get OpenMode() 'E05AD0
  'Data Table: 47ECC8
  loc_E05AC9: OpenMode = global_80
End Sub

Public Property Let OpenMode(vNewValue) 'E030AC
  'Data Table: 47ECC8
  loc_E030A6: global_80 = vNewValue
  loc_E030A9: Exit Sub
End Sub

Public Property Get TVacantColor() 'E1188C
  'Data Table: 47ECC8
  loc_E11880: var_94 = global_84 'Variant
  loc_E11884: TVacantColor = 
End Sub

Public Property Let TVacantColor(vNewValue) 'E11BEC
  'Data Table: 47ECC8
  loc_E11BE4: global_84 = vNewValue
  loc_E11BE8: Exit Sub
  loc_E11BE9: ArrayRebase1Var
End Sub

Public Sub Proc_226_33_14E2058
  'Data Table: 47ECC8
  Dim var_96 As Integer
  Dim var_A4 As String
  Dim var_A8 As String
  Dim unk_47ECCB As Connection15
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
  loc_14E12BA: var_96 = 0
  loc_14E12E4: unk_47ECCB.Execute "Select Kotyn from Depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_14E12EF: Set var_9C = var_CC
  loc_14E1311: var_CC = var_9C.Fields
  loc_14E1321: var_C8 = var_CC.Item("KotYN").Value
  loc_14E133B: If (var_C8 = "Y") Then
  loc_14E1352:   var_A4 = "SELECT RoomMast.Code as code,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_14E136A:   var_F8 = var_A4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & LocalRestCode & "' ORDER BY  RoomMast.code"
  loc_14E1373:   unk_47ECCB.Execute var_F8, var_C8, -1
  loc_14E137E:   Set var_88 = var_CC
  loc_14E13A9:   var_A4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & LocalRestCode
  loc_14E13B0:   var_A8 = var_A4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_14E13CA:   unk_47ECCB.Execute var_A8 & LocalRestCode & "' order by T.Code", var_C8, -1
  loc_14E13D5:   Set var_A0 = var_CC
  loc_14E13EC: Else
  loc_14E1400:   var_A4 = "SELECT RoomMast.Code as code,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_14E1418:   var_F8 = var_A4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & LocalRestCode & "' ORDER BY  RoomMast.code"
  loc_14E1421:   unk_47ECCB.Execute var_F8, var_C8, -1
  loc_14E142C:   Set var_88 = var_CC
  loc_14E1457:   var_A4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & LocalRestCode
  loc_14E145E:   var_A8 = var_A4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_14E1478:   unk_47ECCB.Execute var_A8 & LocalRestCode & "' order by T.Code", var_C8, -1
  loc_14E1483:   Set var_A0 = var_CC
  loc_14E1497: End If
  loc_14E1499: var_8A = 9
  loc_14E14B3: If (Me.Recordset15.RecordCount > 0) Then
  loc_14E14E3:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_14E1550:     var_C8 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_14E1571:     var_8C = CInt(((Val(CStr(Format(var_C8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_14E1589:   Else
  loc_14E15B8:     var_C8 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_14E15D9:     var_8C = CInt(((Val(CStr(Format(var_C8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_14E15E8:   End If
  loc_14E15EB: Else
  loc_14E15EE: Else
  loc_14E15F0:   var_90 = 1
  loc_14E15F5:   var_8E = 0
  loc_14E160B:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_14E1626:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_14E1640:   Call Proc_226_34_1120834((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1, var_8C)
  loc_14E1658:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_14E1673:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_14E168A:   Me.FGrid1.Redraw = False
  loc_14E16B7:   For var_128 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_128 'Integer
  loc_14E16C1:     var_B8 = CVar(CLng(var_94)) 'Long
  loc_14E16C6:     var_138 = &H320
  loc_14E16D3:     Set var_CC = Me.FGrid1
  loc_14E16D9:     LateIdCallSt
  loc_14E16E7:   Next var_128 'Integer
  loc_14E16EC:   ' Referenced from:   14E2023
  loc_14E16FE:   If Not(Me.FGrid1.EOF) Then
  loc_14E1703:     var_90 = 1
  loc_14E1706:     ' Referenced from:   14E2020
  loc_14E1710:     If (var_90 <= (var_8A - 1)) Then
  loc_14E1715:       var_96 = &HFF
  loc_14E1727:       For var_14C = (var_8C - 6) To (var_8C - 1):   var_94 = var_14C 'Integer
  loc_14E1737:         If (var_94 = (var_8C - 6)) Then
  loc_14E174D:           var_F0 = Me.FGrid1.Col
  loc_14E1786:           var_110 = CVar(Proc_6_38_E69628(CVar(Me.var_F0.Fields.Item("Code")), CVar(CLng(var_F0)), CVar(CLng(var_90)))) 'String
  loc_14E178E:           Set var_174 = Me.FGrid1
  loc_14E1794:           LateIdCallSt
  loc_14E17C7:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E17D6:           Me.FGrid1.Col = "Code"
  loc_14E17E5:         End If
  loc_14E17EF:         If (var_94 = (var_8C - 5)) Then
  loc_14E1809:           If (Me.Recordset15.RecordCount > 0) Then
  loc_14E1812:             Me.Recordset15.MoveFirst
  loc_14E1817:           End If
  loc_14E1849:           var_A8 = (var_8C - 6) & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_174, var_110)
  loc_14E185A:           Me.Recordset15.Filter = CVar(CStr(Me.Recordset15.RecordCount) & "'")
  loc_14E1887:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_14E18BE:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_14E18D4:               var_260 = Me.FGrid1.Col
  loc_14E1919:               var_F0 = (Me.var_260.Fields.Item("ShortName").Value + "(")
  loc_14E194F:               var_194 = (CVar(CStr(Me.Recordset15.RecordCount) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_14E1958:               var_1A4 = (var_194 + ")")
  loc_14E1961:               var_1B4 = (var_1A4 + vbCrLf)
  loc_14E1990:               var_1DC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1B4, "*", CVar(CLng(var_260)))) 'String
  loc_14E1993:               var_1EC = (CVar(CLng(var_90)) + var_1DC)
  loc_14E199C:               var_20C = (var_1EC + vbCrLf)
  loc_14E19A5:               var_22C = (var_20C + "Vacant")
  loc_14E19AE:               var_2B0 = CVar(CStr(var_96 & var_22C)) 'String
  loc_14E19B6:               Set var_2C4 = Me.FGrid1
  loc_14E19BC:               LateIdCallSt
  loc_14E1A05:               Me.FGrid1.Filter = 0
  loc_14E1A0A:             End If
  loc_14E1A0A:           End If
  loc_14E1A23:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E1A32:           Me.FGrid1.Col = 0
  loc_14E1A41:         End If
  loc_14E1A4B:         If (var_94 = (var_8C - 4)) Then
  loc_14E1A62:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_14E1A7E:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_14E1A9F:           Call Proc_226_35_FF0064(CByte(CLng(Me.FGrid1.Col)), var_92, var_2C4)
  loc_14E1ABD:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_14E1ADE:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E1AED:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_14E1AFC:         End If
  loc_14E1B06:         If (var_94 = (var_8C - 3)) Then
  loc_14E1B20:           If (Me.Recordset15.RecordCount > 0) Then
  loc_14E1B29:             Me.Recordset15.MoveFirst
  loc_14E1B2E:           End If
  loc_14E1B71:           Me.Recordset15.Filter = CVar(var_2B0 & Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='") & "'")
  loc_14E1B9E:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_14E1BD5:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_14E1BD8:               ' Referenced from:   14E1E73
  loc_14E1C30:               var_110 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_14E1C48:               If (var_90 = var_110) Then
  loc_14E1C62:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_14E1C69:                   var_E0 = CVar(CLng(var_90)) 'Long
  loc_14E1C78:                   var_F0 = Me.FGrid1.Col
  loc_14E1CB1:                   var_110 = CVar(Proc_6_38_E69628(CVar(Me.var_F0.Fields.Item("WaiterName")), CVar(CLng(var_F0)))) 'String
  loc_14E1CB9:                   Set var_174 = Me.FGrid1
  loc_14E1CBF:                   LateIdCallSt
  loc_14E1CDC:                 Else
  loc_14E1D0C:                   var_F0 = Me.FGrid1.TextMatrix)
  loc_14E1D34:                   var_174 = Me.var_F0.Fields.Item("WaiterName")
  loc_14E1D6E:                   If (InStr(var_174, 1, Proc_6_38_E69628(CVar(var_174), CStr(var_F0), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90))), 0) = 0) Then
  loc_14E1D75:                     var_170 = CVar(CLng(var_90)) 'Long
  loc_14E1DBD:                     var_F0 = Me.FGrid1.TextMatrix)
  loc_14E1DFD:                     var_F4 = Proc_6_38_E69628(CVar(Me.var_F0.Fields.Item("WaiterName")), CStr(var_F0) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_14E1E01:                     var_194 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_F4) 'String
  loc_14E1E09:                     Set var_1BC = Me.FGrid1
  loc_14E1E0F:                     LateIdCallSt
  loc_14E1E3A:                   End If
  loc_14E1E3A:                 End If
  loc_14E1E40:                 var_A0.MoveNext
  loc_14E1E5C:                 If (var_A0.AbsolutePosition < 0) Then
  loc_14E1E6E:                   Me.Recordset15.Filter = 0
  loc_14E1E73:                 End If
  loc_14E1E73:                 GoTo loc_14E1BD8
  loc_14E1E76:               End If
  loc_14E1E76:             End If
  loc_14E1E76:           End If
  loc_14E1E8F:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E1E9E:           Me.FGrid1.Col = 0
  loc_14E1EAD:         End If
  loc_14E1EB7:         If (var_94 = (var_8C - 2)) Then
  loc_14E1F03:           var_110 = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_1BC)) 'String
  loc_14E1F0B:           Set var_174 = Me.FGrid1
  loc_14E1F11:           LateIdCallSt
  loc_14E1F44:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E1F53:           Me.FGrid1.Col = "KotYN"
  loc_14E1F62:         End If
  loc_14E1F6C:         If (var_94 = (var_8C - 1)) Then
  loc_14E1F88:           var_B8 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_14E1F97:           Me.FGrid1.Col = "KotYN"
  loc_14E1FA6:         End If
  loc_14E1FA9:       Next var_14C 'Integer
  loc_14E1FB4:       var_90 = (var_90 + 1)
  loc_14E1FC1:       If (var_90 > (var_8A - 1)) Then
  loc_14E1FDD:         var_B8 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_14E1FEC:         Me.FGrid1.Col = "KotYN"
  loc_14E1FFB:       End If
  loc_14E2001:       var_88.MoveNext
  loc_14E201A:       If (var_88.EOF = &HFF) Then
  loc_14E201D:         GoTo loc_14E2026
  loc_14E2020:       End If
  loc_14E2020:       GoTo loc_14E1706
  loc_14E2023:     End If
  loc_14E2023:     GoTo loc_14E16EC
  loc_14E2026:     ' Referenced from:   14E201D
  loc_14E2026:   End If
  loc_14E2026: End If
  loc_14E2034: Me.FGrid1.Redraw = True
  loc_14E2041: Set var_88 = Nothing
  loc_14E2049: Set var_A0 = Nothing
  loc_14E2051: Set var_9C = Nothing
  loc_14E2054: Exit Sub
End Sub

Public Sub Proc_226_34_1120834(arg_C, arg_10) '1120834
  'Data Table: 47ECC8
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_11204DB: Me.FGrid1.Row = 0
  loc_11204F6: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11204FB: var_CC = 0
  loc_1120508: Set var_E0 = Me.FGrid1
  loc_112050E: LateIdCallSt
  loc_1120520: ' Referenced from: 1120777
  loc_1120526: If (arg_10 < 5) Then
  loc_1120529:   GoTo loc_112077A
  loc_112052C: End If
  loc_1120530: Set var_E4 = Me.FGrid1
  loc_1120541: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_112054B:   var_98 = CVar(CLng(var_86)) 'Long
  loc_1120550:   var_CC = 0
  loc_112055D:   Set var_AC = Me.FGrid1
  loc_1120563:   LateIdCallSt
  loc_1120571: Next var_E8 'Integer
  loc_1120585: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_1120595:   If (var_86 = (arg_10 - 5)) Then
  loc_112059C:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11205A1:     var_CC = 0
  loc_11205AE:     Set var_AC = Me.FGrid1
  loc_11205B4:     LateIdCallSt
  loc_11205C3:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11205C8:     var_CC = 1
  loc_11205D2:     Set var_AC = Me.FGrid1
  loc_11205D8:     LateIdCallSt
  loc_11205F6:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11205FF:     var_CC = CVar(CLng(var_86)) 'Long
  loc_1120604:     var_FC = "Table No"
  loc_112060E:     Set var_E0 = Me.FGrid1
  loc_1120614:     LateIdCallSt
  loc_1120626:   End If
  loc_1120630:   If (var_86 = (arg_10 - 4)) Then
  loc_1120637:     var_98 = CVar(CLng(var_86)) 'Long
  loc_112063C:     var_CC = &H4B0
  loc_1120649:     Set var_AC = Me.FGrid1
  loc_112064F:     LateIdCallSt
  loc_112065E:     var_98 = CVar(CLng(var_86)) 'Long
  loc_1120663:     var_CC = 1
  loc_112066D:     Set var_AC = Me.FGrid1
  loc_1120673:     LateIdCallSt
  loc_1120691:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112069A:     var_CC = CVar(CLng(var_86)) 'Long
  loc_112069F:     var_FC = "Status"
  loc_11206A9:     Set var_E0 = Me.FGrid1
  loc_11206AF:     LateIdCallSt
  loc_11206C1:   End If
  loc_11206CB:   If (var_86 = (arg_10 - 3)) Then
  loc_11206D2:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11206D7:     var_CC = &H12C
  loc_11206E4:     Set var_AC = Me.FGrid1
  loc_11206EA:     LateIdCallSt
  loc_11206F9:     var_98 = CVar(CLng(var_86)) 'Long
  loc_1120704:     var_CC = CVar(CInt(4)) 'Integer
  loc_112070C:     Set var_AC = Me.FGrid1
  loc_1120712:     LateIdCallSt
  loc_1120730:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1120739:     var_CC = CVar(CLng(var_86)) 'Long
  loc_112073E:     var_FC = vbNullString
  loc_1120748:     Set var_E0 = Me.FGrid1
  loc_112074E:     LateIdCallSt
  loc_1120760:   End If
  loc_1120763: Next var_EC 'Integer
  loc_112076A: Set var_E4 = Nothing 
  loc_1120774: arg_10 = (arg_10 - 6)
  loc_1120777: GoTo loc_1120520
  loc_112077A: ' Referenced from: 1120529
  loc_11207A1: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_11207BA:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11207CA:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_11207E3:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_11207FE:     Me.FGrid1.CellBackColor = &HE69839
  loc_1120819:     Me.FGrid1.CellForeColor = &HFFFF
  loc_1120824:   Next var_114 'Integer
  loc_112082C: Next var_110 'Integer
  loc_1120831: Exit Sub
End Sub

Public Sub Proc_226_35_FF0064(arg_C) 'FF0064
  'Data Table: 47ECC8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_FEFE97: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FEFEA6: var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_FEFEFA: If (Left(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 1) = "*") Then
  loc_FEFF16:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEFF25:   Me.FGrid1.Col = var_A8
  loc_FEFF50:   Me.FGrid1.CellBackColor = CVar(CLng(TVacantColor))
  loc_FEFF74:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEFF83:   Me.FGrid1.Col = CVar(CLng(TVacantColor))
  loc_FEFFAE:   Me.FGrid1.CellBackColor = CVar(CLng(TVacantColor))
  loc_FEFFBC: Else
  loc_FEFFD5:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEFFE4:   Me.FGrid1.Col = CVar(CLng(TVacantColor))
  loc_FF0006:   Me.FGrid1.CellBackColor = &H404040
  loc_FF0027:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FF0036:   Me.FGrid1.Col = &H404040
  loc_FF0058:   Me.FGrid1.CellBackColor = &H404040
  loc_FF0060: End If
  loc_FF0060: Exit Sub
End Sub

Public Sub Proc_226_36_E5D3E8
  'Data Table: 47ECC8
  loc_E5D3AD: Me.LblKOTTable.Caption = vbNullString
  loc_E5D3C5: Me.TXT_PKOT.BoundText = vbNullString
  loc_E5D3DD: Me.TXT_TOTABLE.BoundText = vbNullString
  loc_E5D3E5: Exit Sub
End Sub
